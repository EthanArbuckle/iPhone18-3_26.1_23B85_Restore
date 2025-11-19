@interface ATXPBResponseForRequestForSuggestions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsResponseCode:(id)a3;
- (int)responseCode;
- (unint64_t)hash;
- (void)addSuggestions:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)addSuggestions:(id)a3
{
  v4 = a3;
  suggestions = self->_suggestions;
  v8 = v4;
  if (!suggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_suggestions;
    self->_suggestions = v6;

    v4 = v8;
    suggestions = self->_suggestions;
  }

  [(NSMutableArray *)suggestions addObject:v4];
}

- (int)StringAsResponseCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FallbackToCache"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Success"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Error"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SuccessAndReplaceCache"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Max"])
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
  v5 = [(ATXPBResponseForRequestForSuggestions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [v3 setObject:uuidString forKey:@"uuidString"];
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

          v12 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
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
    v18 = [(ATXPBRequestForInteractionSuggestions *)interactionSuggestionRequest dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"interactionSuggestionRequest"];
  }

  contextualActionSuggestionRequest = self->_contextualActionSuggestionRequest;
  if (contextualActionSuggestionRequest)
  {
    v20 = [(ATXPBRequestForContextualActionSuggestions *)contextualActionSuggestionRequest dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"contextualActionSuggestionRequest"];
  }

  intentSuggestionRequest = self->_intentSuggestionRequest;
  if (intentSuggestionRequest)
  {
    v22 = [(ATXPBRequestForIntentSuggestions *)intentSuggestionRequest dictionaryRepresentation];
    [v4 setObject:v22 forKey:@"intentSuggestionRequest"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_uuidString)
  {
    [v9 setUuidString:?];
  }

  if ([(ATXPBResponseForRequestForSuggestions *)self suggestionsCount])
  {
    [v9 clearSuggestions];
    v4 = [(ATXPBResponseForRequestForSuggestions *)self suggestionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBResponseForRequestForSuggestions *)self suggestionsAtIndex:i];
        [v9 addSuggestions:v7];
      }
    }
  }

  if (self->_feedbackMetadata)
  {
    [v9 setFeedbackMetadata:?];
  }

  v8 = v9;
  if (*&self->_has)
  {
    *(v9 + 12) = self->_responseCode;
    *(v9 + 72) |= 1u;
  }

  if (self->_errorData)
  {
    [v9 setErrorData:?];
    v8 = v9;
  }

  if (self->_interactionSuggestionRequest)
  {
    [v9 setInteractionSuggestionRequest:?];
    v8 = v9;
  }

  if (self->_contextualActionSuggestionRequest)
  {
    [v9 setContextualActionSuggestionRequest:?];
    v8 = v9;
  }

  if (self->_intentSuggestionRequest)
  {
    [v9 setIntentSuggestionRequest:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:a3];
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

        v13 = [*(*(&v26 + 1) + 8 * v12) copyWithZone:{a3, v26}];
        [v5 addSuggestions:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v14 = [(NSData *)self->_feedbackMetadata copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_responseCode;
    *(v5 + 72) |= 1u;
  }

  v16 = [(NSData *)self->_errorData copyWithZone:a3, v26];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  v18 = [(ATXPBRequestForInteractionSuggestions *)self->_interactionSuggestionRequest copyWithZone:a3];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  v20 = [(ATXPBRequestForContextualActionSuggestions *)self->_contextualActionSuggestionRequest copyWithZone:a3];
  v21 = *(v5 + 8);
  *(v5 + 8) = v20;

  v22 = [(ATXPBRequestForIntentSuggestions *)self->_intentSuggestionRequest copyWithZone:a3];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(v4 + 8))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_21;
    }
  }

  suggestions = self->_suggestions;
  if (suggestions | *(v4 + 7))
  {
    if (![(NSMutableArray *)suggestions isEqual:?])
    {
      goto LABEL_21;
    }
  }

  feedbackMetadata = self->_feedbackMetadata;
  if (feedbackMetadata | *(v4 + 3))
  {
    if (![(NSData *)feedbackMetadata isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v8 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_responseCode != *(v4 + 12))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  errorData = self->_errorData;
  if (errorData | *(v4 + 2) && ![(NSData *)errorData isEqual:?])
  {
    goto LABEL_21;
  }

  interactionSuggestionRequest = self->_interactionSuggestionRequest;
  if (interactionSuggestionRequest | *(v4 + 5))
  {
    if (![(ATXPBRequestForInteractionSuggestions *)interactionSuggestionRequest isEqual:?])
    {
      goto LABEL_21;
    }
  }

  contextualActionSuggestionRequest = self->_contextualActionSuggestionRequest;
  if (contextualActionSuggestionRequest | *(v4 + 1))
  {
    if (![(ATXPBRequestForContextualActionSuggestions *)contextualActionSuggestionRequest isEqual:?])
    {
      goto LABEL_21;
    }
  }

  intentSuggestionRequest = self->_intentSuggestionRequest;
  if (intentSuggestionRequest | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 8))
  {
    [(ATXPBResponseForRequestForSuggestions *)self setUuidString:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(v4 + 7);
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

  if (*(v4 + 3))
  {
    [(ATXPBResponseForRequestForSuggestions *)self setFeedbackMetadata:?];
  }

  if (*(v4 + 72))
  {
    self->_responseCode = *(v4 + 12);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(ATXPBResponseForRequestForSuggestions *)self setErrorData:?];
  }

  interactionSuggestionRequest = self->_interactionSuggestionRequest;
  v11 = *(v4 + 5);
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
  v13 = *(v4 + 1);
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
  v15 = *(v4 + 4);
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