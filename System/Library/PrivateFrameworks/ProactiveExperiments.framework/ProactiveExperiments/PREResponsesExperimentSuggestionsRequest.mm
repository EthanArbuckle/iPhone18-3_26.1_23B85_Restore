@interface PREResponsesExperimentSuggestionsRequest
- (BOOL)isEqual:(id)equal;
- (PREResponsesExperimentSuggestionsRequest)initWithCoder:(id)coder;
- (PREResponsesExperimentSuggestionsRequest)initWithReceivedMessages:(id)messages;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PREResponsesExperimentSuggestionsRequest

- (unint64_t)hash
{
  context = [(PREResponsesExperimentSuggestionsRequest *)self context];
  v4 = [context hash];
  languageCode = [(PREResponsesExperimentSuggestionsRequest *)self languageCode];
  v6 = v4 + [languageCode hash];
  requestDate = [(PREResponsesExperimentSuggestionsRequest *)self requestDate];
  v8 = [requestDate hash];
  languageLastChangedDate = [(PREResponsesExperimentSuggestionsRequest *)self languageLastChangedDate];
  v10 = v6 + v8 + [languageLastChangedDate hash];

  return v10 + 31;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      v8 = [(PREResponsesExperimentSuggestionsRequest *)self hash];
      if (v8 == [(PREResponsesExperimentSuggestionsRequest *)v7 hash])
      {
        receivedMessages = self->_receivedMessages;
        receivedMessages = [(PREResponsesExperimentSuggestionsRequest *)v7 receivedMessages];
        if ([(NSArray *)receivedMessages isEqualToArray:receivedMessages])
        {
          senderMessages = self->_senderMessages;
          senderMessages = [(PREResponsesExperimentSuggestionsRequest *)v7 senderMessages];
          if ([(NSArray *)senderMessages isEqualToArray:senderMessages])
          {
            recipients = self->_recipients;
            recipients = [(PREResponsesExperimentSuggestionsRequest *)v7 recipients];
            if ([(NSArray *)recipients isEqual:recipients])
            {
              context = self->_context;
              context = [(PREResponsesExperimentSuggestionsRequest *)v7 context];
              if ([(NSString *)context isEqualToString:context])
              {
                languageCode = self->_languageCode;
                languageCode = [(PREResponsesExperimentSuggestionsRequest *)v7 languageCode];
                if ([(NSString *)languageCode isEqualToString:languageCode]&& (includesDynamicSuggestions = self->_includesDynamicSuggestions, includesDynamicSuggestions == [(PREResponsesExperimentSuggestionsRequest *)v7 includesDynamicSuggestions]))
                {
                  requestDate = self->_requestDate;
                  requestDate = [(PREResponsesExperimentSuggestionsRequest *)v7 requestDate];
                  if ([(NSDate *)requestDate isEqualToDate:requestDate])
                  {
                    languageLastChangedDate = self->_languageLastChangedDate;
                    languageLastChangedDate = [(PREResponsesExperimentSuggestionsRequest *)v7 languageLastChangedDate];
                    v6 = [(NSDate *)languageLastChangedDate isEqualToDate:languageLastChangedDate];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (PREResponsesExperimentSuggestionsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PREResponsesExperimentSuggestionsRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"receivedMessages"];
    receivedMessages = v5->_receivedMessages;
    v5->_receivedMessages = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"senderMessages"];
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
    v12 = [coderCopy decodeArrayOfObjectsOfClass:v10 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    v15 = [v14 copy];
    context = v5->_context;
    v5->_context = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"languageCode"];
    v18 = [v17 copy];
    languageCode = v5->_languageCode;
    v5->_languageCode = v18;

    v5->_includesDynamicSuggestions = [coderCopy decodeBoolForKey:@"includeDynamicSuggestions"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestDate"];
    requestDate = v5->_requestDate;
    v5->_requestDate = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"languageLastChangedDate"];
    languageLastChangedDate = v5->_languageLastChangedDate;
    v5->_languageLastChangedDate = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  receivedMessages = self->_receivedMessages;
  coderCopy = coder;
  [coderCopy encodeObject:receivedMessages forKey:@"receivedMessages"];
  [coderCopy encodeObject:self->_senderMessages forKey:@"senderMessages"];
  [coderCopy encodeObject:self->_recipients forKey:@"recipients"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_languageCode forKey:@"languageCode"];
  [coderCopy encodeBool:self->_includesDynamicSuggestions forKey:@"includeDynamicSuggestions"];
  [coderCopy encodeObject:self->_requestDate forKey:@"requestDate"];
  [coderCopy encodeObject:self->_languageLastChangedDate forKey:@"languageLastChangedDate"];
}

- (PREResponsesExperimentSuggestionsRequest)initWithReceivedMessages:(id)messages
{
  messagesCopy = messages;
  v9.receiver = self;
  v9.super_class = PREResponsesExperimentSuggestionsRequest;
  v5 = [(PREResponsesExperimentSuggestionsRequest *)&v9 init];
  if (v5)
  {
    v6 = [messagesCopy copy];
    receivedMessages = v5->_receivedMessages;
    v5->_receivedMessages = v6;
  }

  return v5;
}

@end