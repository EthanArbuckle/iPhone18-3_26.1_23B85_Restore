@interface WBSOpenSearchURLTemplate
- (BOOL)includesParameter:(id)a3;
- (BOOL)isEqual:(id)a3;
- (WBSOpenSearchURLTemplate)initWithCoder:(id)a3;
- (WBSOpenSearchURLTemplate)initWithString:(id)a3;
- (id)URLWithSearchTerms:(id)a3;
- (id)description;
- (id)templateByAddingParameter:(id)a3 asURLQueryParameter:(id)a4;
- (id)templateBySubstitutingValue:(id)a3 forParameter:(id)a4;
- (id)templateBySubstitutingValues:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSOpenSearchURLTemplate

- (WBSOpenSearchURLTemplate)initWithString:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = WBSOpenSearchURLTemplate;
  v5 = [(WBSOpenSearchURLTemplate *)&v29 init];
  if (v5 && [v4 length])
  {
    v6 = [v4 copy];
    templateString = v5->_templateString;
    v5->_templateString = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    parametersByName = v5->_parametersByName;
    v5->_parametersByName = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    parameters = v5->_parameters;
    v5->_parameters = v10;

    v12 = [(NSString *)v5->_templateString length];
    v13 = [(NSString *)v5->_templateString rangeOfString:@"{" options:2 range:0, v12];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
      if (v12)
      {
LABEL_22:
        v26 = objc_alloc_init(WBSOpenSearchURLTemplateParameter);
        v27 = [(NSString *)v5->_templateString substringWithRange:v14, v12];
        [(WBSOpenSearchURLTemplateParameter *)v26 setPrefix:v27];

        [(NSMutableArray *)v5->_parameters addObject:v26];
      }
    }

    else
    {
      v16 = v13;
      v14 = 0;
      while (1)
      {
        v17 = objc_alloc_init(WBSOpenSearchURLTemplateParameter);
        v18 = [(NSString *)v5->_templateString substringWithRange:v14, v16 - v14];
        [(WBSOpenSearchURLTemplateParameter *)v17 setPrefix:v18];

        v12 += v14 - (v16 + 1);
        v19 = [(NSString *)v5->_templateString rangeOfString:@"}" options:2 range:v16 + 1, v12];
        if (v19 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v20 = v19;
        if (v19 <= v16 + 1)
        {
          [(WBSOpenSearchURLTemplateParameter *)v17 setOptional:0];
          v22 = -1;
        }

        else
        {
          v21 = [(NSString *)v5->_templateString characterAtIndex:v19 - 1];
          if (v21 == 63)
          {
            v22 = -2;
          }

          else
          {
            v22 = -1;
          }

          [(WBSOpenSearchURLTemplateParameter *)v17 setOptional:v21 == 63];
        }

        v14 = v20 + 1;
        v23 = [(NSString *)v5->_templateString substringWithRange:v16 + 1, v20 - v16 + v22];
        [(WBSOpenSearchURLTemplateParameter *)v17 setName:v23];
        [(WBSOpenSearchURLTemplateParameter *)v17 setRange:v16, v20 + 1 - v16];
        [(NSMutableArray *)v5->_parameters addObject:v17];
        v24 = [(NSMutableDictionary *)v5->_parametersByName objectForKeyedSubscript:v23];
        if (v24)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [MEMORY[0x1E695DF70] arrayWithObjects:{v24, v17, 0}];
            [(NSMutableDictionary *)v5->_parametersByName setObject:v25 forKeyedSubscript:v23];
          }

          else
          {
            [v24 addObject:v17];
          }
        }

        else
        {
          [(NSMutableDictionary *)v5->_parametersByName setObject:v17 forKeyedSubscript:v23];
        }

        v12 = v12 + v16 - v20;

        v16 = [(NSString *)v5->_templateString rangeOfString:@"{" options:2 range:v20 + 1, v12];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!v12)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }

      v14 = v16 + 1;
      if (v12)
      {
        goto LABEL_22;
      }
    }

LABEL_23:
    v15 = v5;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)includesParameter:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_parametersByName objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)URLWithSearchTerms:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_parameters;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v22 + 1) + 8 * v10);
      v12 = [v11 prefix];
      [v4 appendString:v12];

      v13 = [v11 name];

      if (!v13)
      {
LABEL_18:

        if (v8)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v14 = [v11 name];
      v15 = [v14 isEqualToString:@"searchTerms"];

      if (v15)
      {
        break;
      }

      if (([v11 isOptional] & 1) == 0)
      {
        v17 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(WBSOpenSearchURLTemplate *)v26 URLWithSearchTerms:v17, v11, &v27];
        }

        v16 = [v11 name];
        [v4 appendFormat:@"{%@}", v16];
        goto LABEL_15;
      }

LABEL_16:
      if (v7 == ++v10)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v16 = [v21 safari_stringEncodedAsURLQueryParameter];
    if (v16)
    {
      [v4 appendString:v16];
    }

    v8 = 1;
LABEL_15:

    goto LABEL_16;
  }

LABEL_21:
  v18 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [WBSOpenSearchURLTemplate URLWithSearchTerms:v18];
  }

LABEL_23:
  v19 = [MEMORY[0x1E695DFF8] safari_URLWithUserTypedString:v4];

  return v19;
}

- (id)templateBySubstitutingValue:(id)a3 forParameter:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_parametersByName objectForKeyedSubscript:v7];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_alloc(objc_opt_class());
      templateString = self->_templateString;
      v11 = [v8 range];
      v13 = [(NSString *)templateString stringByReplacingCharactersInRange:v11 withString:v12, v6];
      v14 = [v9 initWithString:v13];
    }

    else
    {
      v17 = v7;
      v18[0] = v6;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [(WBSOpenSearchURLTemplate *)self templateBySubstitutingValues:v15];
    }
  }

  else
  {
    v14 = self;
  }

  return v14;
}

- (id)templateBySubstitutingValues:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_parameters;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v21 + 1) + 8 * v10);
      v12 = [v11 prefix];
      [v5 appendString:v12];

      v13 = [v11 name];

      if (!v13)
      {
        break;
      }

      v14 = [v11 name];
      v15 = [v4 objectForKeyedSubscript:v14];

      if (v15)
      {
        [v5 appendString:v15];
      }

      else
      {
        v16 = [v11 isOptional];
        v17 = [v11 name];
        v18 = v17;
        if (v16)
        {
          [v5 appendFormat:@"{%@?}", v17];
        }

        else
        {
          [v5 appendFormat:@"{%@}", v17];
        }
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v19 = [objc_alloc(objc_opt_class()) initWithString:v5];

  return v19;
}

- (id)templateByAddingParameter:(id)a3 asURLQueryParameter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSString *)self->_templateString rangeOfString:@"?"];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(NSString *)self->_templateString rangeOfString:@"#"];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(NSString *)self->_templateString stringByAppendingFormat:@"?%@={%@}", v7, v6];
      goto LABEL_7;
    }

    v15 = v9;
    v16 = MEMORY[0x1E696AEC0];
    v13 = [(NSString *)self->_templateString substringToIndex:v9];
    v14 = [(NSString *)self->_templateString substringFromIndex:v15];
    [v16 stringWithFormat:@"%@?%@={%@}%@", v13, v7, v6, v14];
  }

  else
  {
    v11 = v8;
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(NSString *)self->_templateString substringToIndex:v8 + 1];
    v14 = [(NSString *)self->_templateString substringFromIndex:v11 + 1];
    [v12 stringWithFormat:@"%@%@={%@}&%@", v13, v7, v6, v14];
  }
  v10 = ;

LABEL_7:
  v17 = [objc_alloc(objc_opt_class()) initWithString:v10];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_templateString isEqualToString:v4->_templateString];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p templateString = %@>", v5, self, self->_templateString];;

  return v6;
}

- (WBSOpenSearchURLTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"templateString"];
    self = [(WBSOpenSearchURLTemplate *)self initWithString:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if ([v5 allowsKeyedCoding])
  {
    templateString = self->_templateString;
    if (templateString)
    {
      [v5 encodeObject:templateString forKey:@"templateString"];
    }
  }
}

- (void)URLWithSearchTerms:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 name];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_error_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_ERROR, "Template contains non-optional parameter %@", a1, 0xCu);
}

@end