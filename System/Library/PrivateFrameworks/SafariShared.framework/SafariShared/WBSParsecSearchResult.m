@interface WBSParsecSearchResult
+ (int64_t)typeForSFSearchResult:(id)a3;
- (BOOL)isPredictionFromServerMatchingUserTypedQuery:(id)a3;
- (NSString)debugDescription;
- (NSString)descriptionText;
- (NSString)stringForType;
- (NSString)title;
- (NSString)urlString;
- (NSURL)appPunchoutURL;
- (WBSParsecSearchResult)initWithSFSearchResult:(id)a3;
- (int64_t)subtype;
- (int64_t)type;
- (void)type;
@end

@implementation WBSParsecSearchResult

- (WBSParsecSearchResult)initWithSFSearchResult:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = WBSParsecSearchResult;
  v6 = [(WBSParsecSearchResult *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sfSearchResult, a3);
    v8 = [(WBSParsecSearchResult *)v7 sfSearchResultValue];
    v9 = [v8 safari_firstInlineCardSectionOfClass:objc_opt_class()];
    v10 = [v9 thumbnail];

    if (v10 || (-[WBSParsecSearchResult sfSearchResultValue](v7, "sfSearchResultValue"), v11 = objc_claimAutoreleasedReturnValue(), [v11 safari_firstInlineCardSectionOfClass:objc_opt_class()], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "image"), v10 = objc_claimAutoreleasedReturnValue(), v12, v11, v10))
    {
      v13 = [v10 dictionaryRepresentation];
      v14 = [v13 objectForKeyedSubscript:@"urlValue"];
      v15 = [v14 objectForKeyedSubscript:@"address"];
      imageURL = v7->_imageURL;
      v7->_imageURL = v15;
    }

    v17 = v7;
  }

  return v7;
}

- (int64_t)type
{
  v2 = self->_sfSearchResult;
  v3 = [WBSParsecSearchResult typeForSFSearchResult:v2];
  if (!v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXParsec();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSParsecSearchResult *)v4 type];
    }
  }

  return v3;
}

- (NSString)stringForType
{
  v2 = [(WBSParsecSearchResult *)self type];
  if ((v2 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return &off_1E7FC85A8[v2 - 1]->isa;
  }
}

+ (int64_t)typeForSFSearchResult:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 resultType];
  v5 = [v4 isEqualToString:@"flights"];

  if (v5)
  {
    v6 = 5;
  }

  else
  {
    v7 = [v3 resultType];
    v8 = [v7 isEqualToString:@"sports"];

    if (v8)
    {
      v6 = 4;
    }

    else
    {
      v9 = [v3 resultType];
      v10 = [v9 isEqualToString:@"maps"];

      if (v10)
      {
        v6 = 2;
      }

      else
      {
        v11 = [v3 inlineCard];
        v12 = [v11 cardSections];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          v6 = 4;
          while (2)
          {
            v17 = 0;
            do
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = v13;
                goto LABEL_17;
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v26[0] = @"simple";
        v26[1] = @"maps";
        v27[0] = &unk_1F3A9AEE0;
        v27[1] = &unk_1F3A9AEF8;
        v26[2] = @"generic";
        v27[2] = &unk_1F3A9AF10;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:{3, v22}];
        v19 = [v3 resultTemplate];
        v20 = [v18 objectForKeyedSubscript:v19];
        v6 = [v20 integerValue];

LABEL_17:
      }
    }
  }

  return v6;
}

- (int64_t)subtype
{
  v2 = [(SFSearchResult *)self->_sfSearchResult resultType];
  v3 = [&unk_1F3A9B3E8 objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)title
{
  sfSearchResult = [(SFSearchResult *)self->_sfSearchResult safari_firstInlineCardSectionOfClass:objc_opt_class()];
  v4 = sfSearchResult;
  if (!sfSearchResult)
  {
    if ([WBSParsecSearchResult typeForSFSearchResult:self->_sfSearchResult]== 3)
    {
      v5 = [(SFSearchResult *)self->_sfSearchResult safari_firstInlineCardSectionOfClass:objc_opt_class()];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 title];
        v8 = [v7 text];

        goto LABEL_7;
      }
    }

    sfSearchResult = self->_sfSearchResult;
  }

  v6 = [sfSearchResult title];
  v8 = [v6 text];
LABEL_7:

  return v8;
}

- (NSString)descriptionText
{
  v3 = [(SFSearchResult *)self->_sfSearchResult safari_firstInlineCardSectionOfClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 subtitle];
    v6 = [v5 text];
  }

  else
  {
    if ([WBSParsecSearchResult typeForSFSearchResult:self->_sfSearchResult]== 3 && ([(SFSearchResult *)self->_sfSearchResult safari_firstInlineCardSectionOfClass:objc_opt_class()], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v7;
      v8 = [v7 secondaryTitle];
    }

    else
    {
      v5 = [(SFSearchResult *)self->_sfSearchResult descriptions];
      v8 = [v5 firstObject];
    }

    v9 = v8;
    v6 = [v8 text];
  }

  return v6;
}

- (NSString)urlString
{
  v2 = [(SFSearchResult *)self->_sfSearchResult url];
  v3 = [v2 absoluteString];

  return v3;
}

- (NSURL)appPunchoutURL
{
  v2 = [(SFSearchResult *)self->_sfSearchResult punchout];
  v3 = [v2 preferredOpenableURL];

  return v3;
}

- (BOOL)isPredictionFromServerMatchingUserTypedQuery:(id)a3
{
  v4 = a3;
  if ([(SFSearchResult *)self->_sfSearchResult topHit])
  {
    v5 = [v4 queryString];
    if (v5)
    {
      v6 = [(SFSearchResult *)self->_sfSearchResult completedQuery];
      v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v8 = [v6 stringByTrimmingCharactersInSet:v7];

      if ([v8 hasPrefix:v5])
      {
        v9 = [v8 length] != 0;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBSParsecSearchResult *)self title];
  v7 = [(WBSParsecSearchResult *)self urlString];
  v8 = [v3 stringWithFormat:@"<%@: %p title = %@ url = %@>", v5, self, v6, v7];;

  return v8;
}

- (void)type
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 resultTemplate];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Received result of unknown type %{public}@", &v5, 0xCu);
}

@end