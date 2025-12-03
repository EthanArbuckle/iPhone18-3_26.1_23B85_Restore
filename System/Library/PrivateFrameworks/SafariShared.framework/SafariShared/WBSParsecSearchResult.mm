@interface WBSParsecSearchResult
+ (int64_t)typeForSFSearchResult:(id)result;
- (BOOL)isPredictionFromServerMatchingUserTypedQuery:(id)query;
- (NSString)debugDescription;
- (NSString)descriptionText;
- (NSString)stringForType;
- (NSString)title;
- (NSString)urlString;
- (NSURL)appPunchoutURL;
- (WBSParsecSearchResult)initWithSFSearchResult:(id)result;
- (int64_t)subtype;
- (int64_t)type;
- (void)type;
@end

@implementation WBSParsecSearchResult

- (WBSParsecSearchResult)initWithSFSearchResult:(id)result
{
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = WBSParsecSearchResult;
  v6 = [(WBSParsecSearchResult *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sfSearchResult, result);
    sfSearchResultValue = [(WBSParsecSearchResult *)v7 sfSearchResultValue];
    v9 = [sfSearchResultValue safari_firstInlineCardSectionOfClass:objc_opt_class()];
    thumbnail = [v9 thumbnail];

    if (thumbnail || (-[WBSParsecSearchResult sfSearchResultValue](v7, "sfSearchResultValue"), v11 = objc_claimAutoreleasedReturnValue(), [v11 safari_firstInlineCardSectionOfClass:objc_opt_class()], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "image"), thumbnail = objc_claimAutoreleasedReturnValue(), v12, v11, thumbnail))
    {
      dictionaryRepresentation = [thumbnail dictionaryRepresentation];
      v14 = [dictionaryRepresentation objectForKeyedSubscript:@"urlValue"];
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
  type = [(WBSParsecSearchResult *)self type];
  if ((type - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return &off_1E7FC85A8[type - 1]->isa;
  }
}

+ (int64_t)typeForSFSearchResult:(id)result
{
  v29 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  resultType = [resultCopy resultType];
  v5 = [resultType isEqualToString:@"flights"];

  if (v5)
  {
    integerValue = 5;
  }

  else
  {
    resultType2 = [resultCopy resultType];
    v8 = [resultType2 isEqualToString:@"sports"];

    if (v8)
    {
      integerValue = 4;
    }

    else
    {
      resultType3 = [resultCopy resultType];
      v10 = [resultType3 isEqualToString:@"maps"];

      if (v10)
      {
        integerValue = 2;
      }

      else
      {
        inlineCard = [resultCopy inlineCard];
        cardSections = [inlineCard cardSections];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = cardSections;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          integerValue = 4;
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
        resultTemplate = [resultCopy resultTemplate];
        v20 = [v18 objectForKeyedSubscript:resultTemplate];
        integerValue = [v20 integerValue];

LABEL_17:
      }
    }
  }

  return integerValue;
}

- (int64_t)subtype
{
  resultType = [(SFSearchResult *)self->_sfSearchResult resultType];
  v3 = [&unk_1F3A9B3E8 objectForKeyedSubscript:resultType];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
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
        title2 = v5;
        title = [v5 title];
        text = [title text];

        goto LABEL_7;
      }
    }

    sfSearchResult = self->_sfSearchResult;
  }

  title2 = [sfSearchResult title];
  text = [title2 text];
LABEL_7:

  return text;
}

- (NSString)descriptionText
{
  v3 = [(SFSearchResult *)self->_sfSearchResult safari_firstInlineCardSectionOfClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    subtitle = [v3 subtitle];
    text = [subtitle text];
  }

  else
  {
    if ([WBSParsecSearchResult typeForSFSearchResult:self->_sfSearchResult]== 3 && ([(SFSearchResult *)self->_sfSearchResult safari_firstInlineCardSectionOfClass:objc_opt_class()], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      subtitle = v7;
      secondaryTitle = [v7 secondaryTitle];
    }

    else
    {
      subtitle = [(SFSearchResult *)self->_sfSearchResult descriptions];
      secondaryTitle = [subtitle firstObject];
    }

    v9 = secondaryTitle;
    text = [secondaryTitle text];
  }

  return text;
}

- (NSString)urlString
{
  v2 = [(SFSearchResult *)self->_sfSearchResult url];
  absoluteString = [v2 absoluteString];

  return absoluteString;
}

- (NSURL)appPunchoutURL
{
  punchout = [(SFSearchResult *)self->_sfSearchResult punchout];
  preferredOpenableURL = [punchout preferredOpenableURL];

  return preferredOpenableURL;
}

- (BOOL)isPredictionFromServerMatchingUserTypedQuery:(id)query
{
  queryCopy = query;
  if ([(SFSearchResult *)self->_sfSearchResult topHit])
  {
    queryString = [queryCopy queryString];
    if (queryString)
    {
      completedQuery = [(SFSearchResult *)self->_sfSearchResult completedQuery];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v8 = [completedQuery stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if ([v8 hasPrefix:queryString])
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
  title = [(WBSParsecSearchResult *)self title];
  urlString = [(WBSParsecSearchResult *)self urlString];
  v8 = [v3 stringWithFormat:@"<%@: %p title = %@ url = %@>", v5, self, title, urlString];;

  return v8;
}

- (void)type
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  resultTemplate = [a2 resultTemplate];
  v5 = 138543362;
  v6 = resultTemplate;
  _os_log_error_impl(&dword_1BB6F3000, selfCopy, OS_LOG_TYPE_ERROR, "Received result of unknown type %{public}@", &v5, 0xCu);
}

@end