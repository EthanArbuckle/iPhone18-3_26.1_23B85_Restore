@interface SIRINLUEXTERNALLegacyNLContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLegacyContextSource:(id)source;
- (int)legacyContextSource;
- (unint64_t)hash;
- (void)addRenderedTexts:(id)texts;
- (void)addResponseSemanticValues:(id)values;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDictationPrompt:(BOOL)prompt;
- (void)setHasListenAfterSpeaking:(BOOL)speaking;
- (void)setHasStrictPrompt:(BOOL)prompt;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALLegacyNLContext

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  v6 = fromCopy[44];
  if ((v6 & 2) != 0)
  {
    self->_dictationPrompt = fromCopy[40];
    *&self->_has |= 2u;
    v6 = fromCopy[44];
  }

  if ((v6 & 8) != 0)
  {
    self->_strictPrompt = fromCopy[42];
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 2))
  {
    [(SIRINLUEXTERNALLegacyNLContext *)self setPreviousDomainName:?];
  }

  if ((*(v5 + 44) & 4) != 0)
  {
    self->_listenAfterSpeaking = *(v5 + 41);
    *&self->_has |= 4u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(v5 + 3);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALLegacyNLContext *)self addRenderedTexts:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  if (*(v5 + 44))
  {
    self->_legacyContextSource = *(v5 + 2);
    *&self->_has |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v5 + 4);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUEXTERNALLegacyNLContext *)self addResponseSemanticValues:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_dictationPrompt;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_strictPrompt;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_previousDomainName hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_listenAfterSpeaking;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSMutableArray *)self->_renderedTexts hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_legacyContextSource;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5 ^ v7 ^ v8 ^ [(NSMutableArray *)self->_responseSemanticValues hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_38;
    }

    v9 = *(equalCopy + 40);
    if (self->_dictationPrompt)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 44) & 8) == 0)
    {
      goto LABEL_38;
    }

    v10 = *(equalCopy + 42);
    if (self->_strictPrompt)
    {
      if ((*(equalCopy + 42) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(equalCopy + 42))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 44) & 8) != 0)
  {
    goto LABEL_38;
  }

  previousDomainName = self->_previousDomainName;
  if (previousDomainName | *(equalCopy + 2))
  {
    if (![(NSString *)previousDomainName isEqual:?])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = *(equalCopy + 44);
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_38;
    }

    v11 = *(equalCopy + 41);
    if (self->_listenAfterSpeaking)
    {
      if ((*(equalCopy + 41) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(equalCopy + 41))
    {
      goto LABEL_38;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_38;
  }

  renderedTexts = self->_renderedTexts;
  if (!(renderedTexts | *(equalCopy + 3)))
  {
    goto LABEL_14;
  }

  if (![(NSMutableArray *)renderedTexts isEqual:?])
  {
LABEL_38:
    v13 = 0;
    goto LABEL_39;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
LABEL_14:
  if (has)
  {
    if ((v6 & 1) == 0 || self->_legacyContextSource != *(equalCopy + 2))
    {
      goto LABEL_38;
    }
  }

  else if (v6)
  {
    goto LABEL_38;
  }

  responseSemanticValues = self->_responseSemanticValues;
  if (responseSemanticValues | *(equalCopy + 4))
  {
    v13 = [(NSMutableArray *)responseSemanticValues isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_39:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[40] = self->_dictationPrompt;
    v5[44] |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v5[42] = self->_strictPrompt;
    v5[44] |= 8u;
  }

  v8 = [(NSString *)self->_previousDomainName copyWithZone:zone];
  v9 = *(v6 + 2);
  *(v6 + 2) = v8;

  if ((*&self->_has & 4) != 0)
  {
    v6[41] = self->_listenAfterSpeaking;
    v6[44] |= 4u;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_renderedTexts;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v28 + 1) + 8 * i) copyWithZone:zone];
        [v6 addRenderedTexts:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    *(v6 + 2) = self->_legacyContextSource;
    v6[44] |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_responseSemanticValues;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * j) copyWithZone:{zone, v24}];
        [v6 addResponseSemanticValues:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[40] = self->_dictationPrompt;
    toCopy[44] |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    toCopy[42] = self->_strictPrompt;
    toCopy[44] |= 8u;
  }

  v14 = toCopy;
  if (self->_previousDomainName)
  {
    [toCopy setPreviousDomainName:?];
    toCopy = v14;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[41] = self->_listenAfterSpeaking;
    toCopy[44] |= 4u;
  }

  if ([(SIRINLUEXTERNALLegacyNLContext *)self renderedTextsCount])
  {
    [v14 clearRenderedTexts];
    renderedTextsCount = [(SIRINLUEXTERNALLegacyNLContext *)self renderedTextsCount];
    if (renderedTextsCount)
    {
      v7 = renderedTextsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SIRINLUEXTERNALLegacyNLContext *)self renderedTextsAtIndex:i];
        [v14 addRenderedTexts:v9];
      }
    }
  }

  if (*&self->_has)
  {
    *(v14 + 2) = self->_legacyContextSource;
    v14[44] |= 1u;
  }

  if ([(SIRINLUEXTERNALLegacyNLContext *)self responseSemanticValuesCount])
  {
    [v14 clearResponseSemanticValues];
    responseSemanticValuesCount = [(SIRINLUEXTERNALLegacyNLContext *)self responseSemanticValuesCount];
    if (responseSemanticValuesCount)
    {
      v11 = responseSemanticValuesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(SIRINLUEXTERNALLegacyNLContext *)self responseSemanticValuesAtIndex:j];
        [v14 addResponseSemanticValues:v13];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v33 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    dictationPrompt = self->_dictationPrompt;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    strictPrompt = self->_strictPrompt;
    PBDataWriterWriteBOOLField();
  }

  if (self->_previousDomainName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    listenAfterSpeaking = self->_listenAfterSpeaking;
    PBDataWriterWriteBOOLField();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_renderedTexts;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  if (*&self->_has)
  {
    legacyContextSource = self->_legacyContextSource;
    PBDataWriterWriteInt32Field();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_responseSemanticValues;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_dictationPrompt];
    [dictionary setObject:v5 forKey:@"dictation_prompt"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_strictPrompt];
    [dictionary setObject:v6 forKey:@"strict_prompt"];
  }

  previousDomainName = self->_previousDomainName;
  if (previousDomainName)
  {
    [dictionary setObject:previousDomainName forKey:@"previous_domain_name"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_listenAfterSpeaking];
    [dictionary setObject:v8 forKey:@"listen_after_speaking"];
  }

  if ([(NSMutableArray *)self->_renderedTexts count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_renderedTexts, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = self->_renderedTexts;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"rendered_texts"];
  }

  if (*&self->_has)
  {
    legacyContextSource = self->_legacyContextSource;
    if (legacyContextSource >= 4)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_legacyContextSource];
    }

    else
    {
      v17 = off_1E8328268[legacyContextSource];
    }

    [dictionary setObject:v17 forKey:@"legacy_context_source"];
  }

  responseSemanticValues = self->_responseSemanticValues;
  if (responseSemanticValues)
  {
    [dictionary setObject:responseSemanticValues forKey:@"response_semantic_values"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALLegacyNLContext;
  v4 = [(SIRINLUEXTERNALLegacyNLContext *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALLegacyNLContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addResponseSemanticValues:(id)values
{
  valuesCopy = values;
  responseSemanticValues = self->_responseSemanticValues;
  v8 = valuesCopy;
  if (!responseSemanticValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_responseSemanticValues;
    self->_responseSemanticValues = v6;

    valuesCopy = v8;
    responseSemanticValues = self->_responseSemanticValues;
  }

  [(NSMutableArray *)responseSemanticValues addObject:valuesCopy];
}

- (int)StringAsLegacyContextSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"LEGACYCONTEXTSOURCE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"LEGACYCONTEXTSOURCE_MODALITY"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"LEGACYCONTEXTSOURCE_POMMES"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"LEGACYCONTEXTSOURCE_PROTO_PROMPT_CONTEXT"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)legacyContextSource
{
  if (*&self->_has)
  {
    return self->_legacyContextSource;
  }

  else
  {
    return 0;
  }
}

- (void)addRenderedTexts:(id)texts
{
  textsCopy = texts;
  renderedTexts = self->_renderedTexts;
  v8 = textsCopy;
  if (!renderedTexts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_renderedTexts;
    self->_renderedTexts = v6;

    textsCopy = v8;
    renderedTexts = self->_renderedTexts;
  }

  [(NSMutableArray *)renderedTexts addObject:textsCopy];
}

- (void)setHasListenAfterSpeaking:(BOOL)speaking
{
  if (speaking)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStrictPrompt:(BOOL)prompt
{
  if (prompt)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDictationPrompt:(BOOL)prompt
{
  if (prompt)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end