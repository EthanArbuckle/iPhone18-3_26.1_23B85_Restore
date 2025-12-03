@interface ATXPBResponseForRequestForSuggestions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsResponseCode:(id)code;
- (int)responseCode;
- (unint64_t)hash;
- (void)addSuggestions:(id)suggestions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBResponseForRequestForSuggestions

- (int)responseCode
{
  if (*&self->_has)
  {
    return self->_responseCode;
  }

  else
  {
    return 0;
  }
}

- (void)addSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  suggestions = self->_suggestions;
  v8 = suggestionsCopy;
  if (!suggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_suggestions;
    self->_suggestions = v6;

    suggestionsCopy = v8;
    suggestions = self->_suggestions;
  }

  [(NSMutableArray *)suggestions addObject:suggestionsCopy];
}

- (int)StringAsResponseCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([codeCopy isEqualToString:@"FallbackToCache"])
  {
    v4 = 1;
  }

  else if ([codeCopy isEqualToString:@"Success"])
  {
    v4 = 2;
  }

  else if ([codeCopy isEqualToString:@"Error"])
  {
    v4 = 3;
  }

  else if ([codeCopy isEqualToString:@"SuccessAndReplaceCache"])
  {
    v4 = 4;
  }

  else if ([codeCopy isEqualToString:@"Max"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBResponseForRequestForSuggestions;
  v4 = [(ATXPBResponseForRequestForSuggestions *)&v8 description];
  dictionaryRepresentation = [(ATXPBResponseForRequestForSuggestions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [dictionary setObject:uuidString forKey:@"uuidString"];
  }

  if ([(NSMutableArray *)self->_suggestions count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_suggestions, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_suggestions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"suggestions"];
  }

  feedbackMetadata = self->_feedbackMetadata;
  if (feedbackMetadata)
  {
    [v4 setObject:feedbackMetadata forKey:@"feedbackMetadata"];
  }

  if (*&self->_has)
  {
    responseCode = self->_responseCode;
    if (responseCode >= 6)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_responseCode];
    }

    else
    {
      v15 = off_1E86A4EB0[responseCode];
    }

    [v4 setObject:v15 forKey:@"responseCode"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  interactionSuggestionRequest = self->_interactionSuggestionRequest;
  if (interactionSuggestionRequest)
  {
    dictionaryRepresentation2 = [(ATXPBRequestForInteractionSuggestions *)interactionSuggestionRequest dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"interactionSuggestionRequest"];
  }

  contextualActionSuggestionRequest = self->_contextualActionSuggestionRequest;
  if (contextualActionSuggestionRequest)
  {
    dictionaryRepresentation3 = [(ATXPBRequestForContextualActionSuggestions *)contextualActionSuggestionRequest dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"contextualActionSuggestionRequest"];
  }

  intentSuggestionRequest = self->_intentSuggestionRequest;
  if (intentSuggestionRequest)
  {
    dictionaryRepresentation4 = [(ATXPBRequestForIntentSuggestions *)intentSuggestionRequest dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"intentSuggestionRequest"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_suggestions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_feedbackMetadata)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    responseCode = self->_responseCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_interactionSuggestionRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_contextualActionSuggestionRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_intentSuggestionRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_uuidString)
  {
    [toCopy setUuidString:?];
  }

  if ([(ATXPBResponseForRequestForSuggestions *)self suggestionsCount])
  {
    [toCopy clearSuggestions];
    suggestionsCount = [(ATXPBResponseForRequestForSuggestions *)self suggestionsCount];
    if (suggestionsCount)
    {
      v5 = suggestionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBResponseForRequestForSuggestions *)self suggestionsAtIndex:i];
        [toCopy addSuggestions:v7];
      }
    }
  }

  if (self->_feedbackMetadata)
  {
    [toCopy setFeedbackMetadata:?];
  }

  v8 = toCopy;
  if (*&self->_has)
  {
    *(toCopy + 12) = self->_responseCode;
    *(toCopy + 72) |= 1u;
  }

  if (self->_errorData)
  {
    [toCopy setErrorData:?];
    v8 = toCopy;
  }

  if (self->_interactionSuggestionRequest)
  {
    [toCopy setInteractionSuggestionRequest:?];
    v8 = toCopy;
  }

  if (self->_contextualActionSuggestionRequest)
  {
    [toCopy setContextualActionSuggestionRequest:?];
    v8 = toCopy;
  }

  if (self->_intentSuggestionRequest)
  {
    [toCopy setIntentSuggestionRequest:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_suggestions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v26 + 1) + 8 * v12) copyWithZone:{zone, v26}];
        [v5 addSuggestions:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v14 = [(NSData *)self->_feedbackMetadata copyWithZone:zone];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_responseCode;
    *(v5 + 72) |= 1u;
  }

  v16 = [(NSData *)self->_errorData copyWithZone:zone, v26];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  v18 = [(ATXPBRequestForInteractionSuggestions *)self->_interactionSuggestionRequest copyWithZone:zone];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  v20 = [(ATXPBRequestForContextualActionSuggestions *)self->_contextualActionSuggestionRequest copyWithZone:zone];
  v21 = *(v5 + 8);
  *(v5 + 8) = v20;

  v22 = [(ATXPBRequestForIntentSuggestions *)self->_intentSuggestionRequest copyWithZone:zone];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(equalCopy + 8))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_21;
    }
  }

  suggestions = self->_suggestions;
  if (suggestions | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)suggestions isEqual:?])
    {
      goto LABEL_21;
    }
  }

  feedbackMetadata = self->_feedbackMetadata;
  if (feedbackMetadata | *(equalCopy + 3))
  {
    if (![(NSData *)feedbackMetadata isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v8 = *(equalCopy + 72);
  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_responseCode != *(equalCopy + 12))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  errorData = self->_errorData;
  if (errorData | *(equalCopy + 2) && ![(NSData *)errorData isEqual:?])
  {
    goto LABEL_21;
  }

  interactionSuggestionRequest = self->_interactionSuggestionRequest;
  if (interactionSuggestionRequest | *(equalCopy + 5))
  {
    if (![(ATXPBRequestForInteractionSuggestions *)interactionSuggestionRequest isEqual:?])
    {
      goto LABEL_21;
    }
  }

  contextualActionSuggestionRequest = self->_contextualActionSuggestionRequest;
  if (contextualActionSuggestionRequest | *(equalCopy + 1))
  {
    if (![(ATXPBRequestForContextualActionSuggestions *)contextualActionSuggestionRequest isEqual:?])
    {
      goto LABEL_21;
    }
  }

  intentSuggestionRequest = self->_intentSuggestionRequest;
  if (intentSuggestionRequest | *(equalCopy + 4))
  {
    v13 = [(ATXPBRequestForIntentSuggestions *)intentSuggestionRequest isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_22:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidString hash];
  v4 = [(NSMutableArray *)self->_suggestions hash];
  v5 = [(NSData *)self->_feedbackMetadata hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_responseCode;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(NSData *)self->_errorData hash];
  v9 = v8 ^ [(ATXPBRequestForInteractionSuggestions *)self->_interactionSuggestionRequest hash];
  v10 = v7 ^ v9 ^ [(ATXPBRequestForContextualActionSuggestions *)self->_contextualActionSuggestionRequest hash];
  return v10 ^ [(ATXPBRequestForIntentSuggestions *)self->_intentSuggestionRequest hash];
}

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 8))
  {
    [(ATXPBResponseForRequestForSuggestions *)self setUuidString:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(fromCopy + 7);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ATXPBResponseForRequestForSuggestions *)self addSuggestions:*(*(&v17 + 1) + 8 * i), v17];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 3))
  {
    [(ATXPBResponseForRequestForSuggestions *)self setFeedbackMetadata:?];
  }

  if (*(fromCopy + 72))
  {
    self->_responseCode = *(fromCopy + 12);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(ATXPBResponseForRequestForSuggestions *)self setErrorData:?];
  }

  interactionSuggestionRequest = self->_interactionSuggestionRequest;
  v11 = *(fromCopy + 5);
  if (interactionSuggestionRequest)
  {
    if (v11)
    {
      [(ATXPBRequestForInteractionSuggestions *)interactionSuggestionRequest mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(ATXPBResponseForRequestForSuggestions *)self setInteractionSuggestionRequest:?];
  }

  contextualActionSuggestionRequest = self->_contextualActionSuggestionRequest;
  v13 = *(fromCopy + 1);
  if (contextualActionSuggestionRequest)
  {
    if (v13)
    {
      [(ATXPBRequestForContextualActionSuggestions *)contextualActionSuggestionRequest mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(ATXPBResponseForRequestForSuggestions *)self setContextualActionSuggestionRequest:?];
  }

  intentSuggestionRequest = self->_intentSuggestionRequest;
  v15 = *(fromCopy + 4);
  if (intentSuggestionRequest)
  {
    if (v15)
    {
      [(ATXPBRequestForIntentSuggestions *)intentSuggestionRequest mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(ATXPBResponseForRequestForSuggestions *)self setIntentSuggestionRequest:?];
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end