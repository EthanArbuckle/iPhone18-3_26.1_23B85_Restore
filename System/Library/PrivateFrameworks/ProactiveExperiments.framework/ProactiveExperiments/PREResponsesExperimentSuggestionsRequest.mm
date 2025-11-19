@interface PREResponsesExperimentSuggestionsRequest
- (BOOL)isEqual:(id)a3;
- (PREResponsesExperimentSuggestionsRequest)initWithCoder:(id)a3;
- (PREResponsesExperimentSuggestionsRequest)initWithReceivedMessages:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PREResponsesExperimentSuggestionsRequest

- (unint64_t)hash
{
  v3 = [(PREResponsesExperimentSuggestionsRequest *)self context];
  v4 = [v3 hash];
  v5 = [(PREResponsesExperimentSuggestionsRequest *)self languageCode];
  v6 = v4 + [v5 hash];
  v7 = [(PREResponsesExperimentSuggestionsRequest *)self requestDate];
  v8 = [v7 hash];
  v9 = [(PREResponsesExperimentSuggestionsRequest *)self languageLastChangedDate];
  v10 = v6 + v8 + [v9 hash];

  return v10 + 31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v8 = [(PREResponsesExperimentSuggestionsRequest *)self hash];
      if (v8 == [(PREResponsesExperimentSuggestionsRequest *)v7 hash])
      {
        receivedMessages = self->_receivedMessages;
        v10 = [(PREResponsesExperimentSuggestionsRequest *)v7 receivedMessages];
        if ([(NSArray *)receivedMessages isEqualToArray:v10])
        {
          senderMessages = self->_senderMessages;
          v12 = [(PREResponsesExperimentSuggestionsRequest *)v7 senderMessages];
          if ([(NSArray *)senderMessages isEqualToArray:v12])
          {
            recipients = self->_recipients;
            v14 = [(PREResponsesExperimentSuggestionsRequest *)v7 recipients];
            if ([(NSArray *)recipients isEqual:v14])
            {
              context = self->_context;
              v16 = [(PREResponsesExperimentSuggestionsRequest *)v7 context];
              if ([(NSString *)context isEqualToString:v16])
              {
                languageCode = self->_languageCode;
                v18 = [(PREResponsesExperimentSuggestionsRequest *)v7 languageCode];
                if ([(NSString *)languageCode isEqualToString:v18]&& (includesDynamicSuggestions = self->_includesDynamicSuggestions, includesDynamicSuggestions == [(PREResponsesExperimentSuggestionsRequest *)v7 includesDynamicSuggestions]))
                {
                  requestDate = self->_requestDate;
                  v21 = [(PREResponsesExperimentSuggestionsRequest *)v7 requestDate];
                  if ([(NSDate *)requestDate isEqualToDate:v21])
                  {
                    languageLastChangedDate = self->_languageLastChangedDate;
                    v23 = [(PREResponsesExperimentSuggestionsRequest *)v7 languageLastChangedDate];
                    v6 = [(NSDate *)languageLastChangedDate isEqualToDate:v23];
                  }

                  else
                  {
                    v6 = 0;
                  }
                }

                else
                {
                  v6 = 0;
                }
              }

              else
              {
                v6 = 0;
              }
            }

            else
            {
              v6 = 0;
            }
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PREResponsesExperimentSuggestionsRequest alloc] initWithReceivedMessages:self->_receivedMessages];
  v5 = [(NSArray *)self->_senderMessages copy];
  [(PREResponsesExperimentSuggestionsRequest *)v4 setSenderMessages:v5];

  v6 = [(NSArray *)self->_recipients copy];
  [(PREResponsesExperimentSuggestionsRequest *)v4 setRecipients:v6];

  v7 = [(NSString *)self->_context copy];
  [(PREResponsesExperimentSuggestionsRequest *)v4 setContext:v7];

  v8 = [(NSString *)self->_languageCode copy];
  [(PREResponsesExperimentSuggestionsRequest *)v4 setLanguageCode:v8];

  [(PREResponsesExperimentSuggestionsRequest *)v4 setIncludesDynamicSuggestions:self->_includesDynamicSuggestions];
  v9 = [(NSDate *)self->_requestDate copy];
  [(PREResponsesExperimentSuggestionsRequest *)v4 setRequestDate:v9];

  v10 = [(NSDate *)self->_languageLastChangedDate copy];
  [(PREResponsesExperimentSuggestionsRequest *)v4 setLanguageLastChangedDate:v10];

  return v4;
}

- (PREResponsesExperimentSuggestionsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PREResponsesExperimentSuggestionsRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"receivedMessages"];
    receivedMessages = v5->_receivedMessages;
    v5->_receivedMessages = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"senderMessages"];
    senderMessages = v5->_senderMessages;
    v5->_senderMessages = v8;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v10 = getCKEntityClass_softClass;
    v29 = getCKEntityClass_softClass;
    if (!getCKEntityClass_softClass)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __getCKEntityClass_block_invoke;
      v25[3] = &unk_279ABB3B0;
      v25[4] = &v26;
      __getCKEntityClass_block_invoke(v25);
      v10 = v27[3];
    }

    v11 = v10;
    _Block_object_dispose(&v26, 8);
    v12 = [v4 decodeArrayOfObjectsOfClass:v10 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    v15 = [v14 copy];
    context = v5->_context;
    v5->_context = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"languageCode"];
    v18 = [v17 copy];
    languageCode = v5->_languageCode;
    v5->_languageCode = v18;

    v5->_includesDynamicSuggestions = [v4 decodeBoolForKey:@"includeDynamicSuggestions"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestDate"];
    requestDate = v5->_requestDate;
    v5->_requestDate = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"languageLastChangedDate"];
    languageLastChangedDate = v5->_languageLastChangedDate;
    v5->_languageLastChangedDate = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  receivedMessages = self->_receivedMessages;
  v5 = a3;
  [v5 encodeObject:receivedMessages forKey:@"receivedMessages"];
  [v5 encodeObject:self->_senderMessages forKey:@"senderMessages"];
  [v5 encodeObject:self->_recipients forKey:@"recipients"];
  [v5 encodeObject:self->_context forKey:@"context"];
  [v5 encodeObject:self->_languageCode forKey:@"languageCode"];
  [v5 encodeBool:self->_includesDynamicSuggestions forKey:@"includeDynamicSuggestions"];
  [v5 encodeObject:self->_requestDate forKey:@"requestDate"];
  [v5 encodeObject:self->_languageLastChangedDate forKey:@"languageLastChangedDate"];
}

- (PREResponsesExperimentSuggestionsRequest)initWithReceivedMessages:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PREResponsesExperimentSuggestionsRequest;
  v5 = [(PREResponsesExperimentSuggestionsRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    receivedMessages = v5->_receivedMessages;
    v5->_receivedMessages = v6;
  }

  return v5;
}

@end