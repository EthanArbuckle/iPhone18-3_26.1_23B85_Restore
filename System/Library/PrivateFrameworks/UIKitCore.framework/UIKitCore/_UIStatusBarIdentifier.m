@interface _UIStatusBarIdentifier
+ (id)displayIdentifierFromStringRepresentation:(id)a3;
+ (id)identifierForObject:(id)a3 string:(id)a4;
+ (id)uninternedIdentifierForObject:(id)a3 string:(id)a4;
- (NSString)stringRepresentation;
- (id)description;
@end

@implementation _UIStatusBarIdentifier

+ (id)identifierForObject:(id)a3 string:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = &stru_1EFB14550;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = objc_getAssociatedObject(v5, 0);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 objectForKeyedSubscript:v9];
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    objc_setAssociatedObject(v5, 0, v11, 1);
  }

  v12 = objc_alloc_init(_UIStatusBarIdentifier);
  [(_UIStatusBarIdentifier *)v12 setObject:v5];
  [(_UIStatusBarIdentifier *)v12 setString:v7];
  [v11 setObject:v12 forKeyedSubscript:v9];
LABEL_8:

  return v12;
}

+ (id)uninternedIdentifierForObject:(id)a3 string:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_UIStatusBarIdentifier);
  [(_UIStatusBarIdentifier *)v7 setObject:v6];

  [(_UIStatusBarIdentifier *)v7 setString:v5];

  return v7;
}

- (id)description
{
  v8[2] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(_UIStatusBarIdentifier *)self stringRepresentation];
  }

  else
  {
    v4 = NSStringFromSelector(sel_object);
    v8[0] = v4;
    v5 = NSStringFromSelector(sel_string);
    v8[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
    v3 = [UIDescriptionBuilder descriptionForObject:self keys:v6];
  }

  return v3;
}

+ (id)displayIdentifierFromStringRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"."];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v3;
    v7 = 0;
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v6 = [v3 substringToIndex:v4];
    v7 = [v3 substringFromIndex:v8 + v9];
  }

  v10 = v6;
  v11 = [v10 rangeOfString:@"/"];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = v11;
    v16 = v12;
    v14 = [v10 substringToIndex:v11];

    v13 = [v10 substringFromIndex:v15 + v16];
  }

  v17 = NSClassFromString(v14);
  if (v17)
  {
    v18 = [_UIStatusBarIdentifier identifierForObject:v17 string:v13];
    v19 = [_UIStatusBarIdentifier identifierForObject:v18 string:v7];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (NSString)stringRepresentation
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  object = self->_object;
  if (isKindOfClass)
  {
    v5 = object;
    v6 = [v5 string];
    v7 = [v6 length];

    if (v7)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = NSStringFromClass([v5 object]);
      v10 = [v5 string];
      v11 = [v8 stringWithFormat:@"%@/%@", v9, v10];
    }

    else
    {
      v11 = NSStringFromClass([v5 object]);
    }

    if ([(NSString *)self->_string length])
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v11, self->_string];
    }

    else
    {
      v13 = v11;
    }

    v12 = v13;
  }

  else
  {
    v12 = NSStringFromClass(object);
  }

  return v12;
}

@end