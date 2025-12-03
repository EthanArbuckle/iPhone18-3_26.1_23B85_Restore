@interface LRSchemaLRRedactionSummaryReported
- (BOOL)isEqual:(id)equal;
- (LRSchemaLRRedactionSummaryReported)initWithDictionary:(id)dictionary;
- (LRSchemaLRRedactionSummaryReported)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addRedactionSignals:(id)signals;
- (void)addRedactionWindows:(id)windows;
- (void)setHasMessageCreationTimeSince1970:(BOOL)since1970;
- (void)setHasSummaryCreationTimeSince1970:(BOOL)since1970;
- (void)writeTo:(id)to;
@end

@implementation LRSchemaLRRedactionSummaryReported

- (LRSchemaLRRedactionSummaryReported)initWithDictionary:(id)dictionary
{
  v43 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v40.receiver = self;
  v40.super_class = LRSchemaLRRedactionSummaryReported;
  v5 = [(LRSchemaLRRedactionSummaryReported *)&v40 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hasRedactedEvents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRRedactionSummaryReported setHasRedactedEvents:](v5, "setHasRedactedEvents:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"redactionWindows"];
    objc_opt_class();
    v29 = v7;
    if (objc_opt_isKindOfClass())
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v37;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v36 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[LRSchemaLRWindow alloc] initWithDictionary:v13];
              [(LRSchemaLRRedactionSummaryReported *)v5 addRedactionWindows:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v10);
      }

      v7 = v29;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"redactionSignals", v29, v6}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v33;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v32 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [[LRSchemaLRRedactionSignal alloc] initWithDictionary:v21];
              [(LRSchemaLRRedactionSummaryReported *)v5 addRedactionSignals:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v18);
      }

      v7 = v30;
      v6 = v31;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"summaryCreationTimeSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRRedactionSummaryReported setSummaryCreationTimeSince1970:](v5, "setSummaryCreationTimeSince1970:", [v23 unsignedLongLongValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"preProcessorInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[LRSchemaLRPreprocessorInfo alloc] initWithDictionary:v24];
      [(LRSchemaLRRedactionSummaryReported *)v5 setPreProcessorInfo:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"messageCreationTimeSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v26 doubleValue];
      [(LRSchemaLRRedactionSummaryReported *)v5 setMessageCreationTimeSince1970:?];
    }

    v27 = v5;
  }

  return v5;
}

- (LRSchemaLRRedactionSummaryReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LRSchemaLRRedactionSummaryReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LRSchemaLRRedactionSummaryReported *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v39 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[LRSchemaLRRedactionSummaryReported hasRedactedEvents](self, "hasRedactedEvents")}];
    [dictionary setObject:v5 forKeyedSubscript:@"hasRedactedEvents"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(LRSchemaLRRedactionSummaryReported *)self messageCreationTimeSince1970];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"messageCreationTimeSince1970"];
  }

  if (self->_preProcessorInfo)
  {
    preProcessorInfo = [(LRSchemaLRRedactionSummaryReported *)self preProcessorInfo];
    dictionaryRepresentation = [preProcessorInfo dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"preProcessorInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"preProcessorInfo"];
    }
  }

  if ([(NSArray *)self->_redactionSignals count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = self->_redactionSignals;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v33 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"redactionSignals"];
  }

  if ([(NSArray *)self->_redactionWindows count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = self->_redactionWindows;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v29 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"redactionWindows"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[LRSchemaLRRedactionSummaryReported summaryCreationTimeSince1970](self, "summaryCreationTimeSince1970")}];
    [dictionary setObject:v27 forKeyedSubscript:@"summaryCreationTimeSince1970"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_hasRedactedEvents;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_redactionWindows hash];
  v5 = [(NSArray *)self->_redactionSignals hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761u * self->_summaryCreationTimeSince1970;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(LRSchemaLRPreprocessorInfo *)self->_preProcessorInfo hash];
  if ((*&self->_has & 4) != 0)
  {
    messageCreationTimeSince1970 = self->_messageCreationTimeSince1970;
    if (messageCreationTimeSince1970 < 0.0)
    {
      messageCreationTimeSince1970 = -messageCreationTimeSince1970;
    }

    *v8.i64 = floor(messageCreationTimeSince1970 + 0.5);
    v12 = (messageCreationTimeSince1970 - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    hasRedactedEvents = self->_hasRedactedEvents;
    if (hasRedactedEvents != [equalCopy hasRedactedEvents])
    {
      goto LABEL_23;
    }
  }

  redactionWindows = [(LRSchemaLRRedactionSummaryReported *)self redactionWindows];
  redactionWindows2 = [equalCopy redactionWindows];
  if ((redactionWindows != 0) == (redactionWindows2 == 0))
  {
    goto LABEL_22;
  }

  redactionWindows3 = [(LRSchemaLRRedactionSummaryReported *)self redactionWindows];
  if (redactionWindows3)
  {
    v9 = redactionWindows3;
    redactionWindows4 = [(LRSchemaLRRedactionSummaryReported *)self redactionWindows];
    redactionWindows5 = [equalCopy redactionWindows];
    v12 = [redactionWindows4 isEqual:redactionWindows5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  redactionWindows = [(LRSchemaLRRedactionSummaryReported *)self redactionSignals];
  redactionWindows2 = [equalCopy redactionSignals];
  if ((redactionWindows != 0) == (redactionWindows2 == 0))
  {
    goto LABEL_22;
  }

  redactionSignals = [(LRSchemaLRRedactionSummaryReported *)self redactionSignals];
  if (redactionSignals)
  {
    v14 = redactionSignals;
    redactionSignals2 = [(LRSchemaLRRedactionSummaryReported *)self redactionSignals];
    redactionSignals3 = [equalCopy redactionSignals];
    v17 = [redactionSignals2 isEqual:redactionSignals3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = (*&self->_has >> 1) & 1;
  if (v18 != ((equalCopy[56] >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v18)
  {
    summaryCreationTimeSince1970 = self->_summaryCreationTimeSince1970;
    if (summaryCreationTimeSince1970 != [equalCopy summaryCreationTimeSince1970])
    {
      goto LABEL_23;
    }
  }

  redactionWindows = [(LRSchemaLRRedactionSummaryReported *)self preProcessorInfo];
  redactionWindows2 = [equalCopy preProcessorInfo];
  if ((redactionWindows != 0) == (redactionWindows2 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  preProcessorInfo = [(LRSchemaLRRedactionSummaryReported *)self preProcessorInfo];
  if (preProcessorInfo)
  {
    v21 = preProcessorInfo;
    preProcessorInfo2 = [(LRSchemaLRRedactionSummaryReported *)self preProcessorInfo];
    preProcessorInfo3 = [equalCopy preProcessorInfo];
    v24 = [preProcessorInfo2 isEqual:preProcessorInfo3];

    if (!v24)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v27 = (*&self->_has >> 2) & 1;
  if (v27 == ((equalCopy[56] >> 2) & 1))
  {
    if (!v27 || (messageCreationTimeSince1970 = self->_messageCreationTimeSince1970, [equalCopy messageCreationTimeSince1970], messageCreationTimeSince1970 == v29))
    {
      v25 = 1;
      goto LABEL_24;
    }
  }

LABEL_23:
  v25 = 0;
LABEL_24:

  return v25;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_redactionWindows;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_redactionSignals;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  preProcessorInfo = [(LRSchemaLRRedactionSummaryReported *)self preProcessorInfo];

  if (preProcessorInfo)
  {
    preProcessorInfo2 = [(LRSchemaLRRedactionSummaryReported *)self preProcessorInfo];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (void)setHasMessageCreationTimeSince1970:(BOOL)since1970
{
  if (since1970)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSummaryCreationTimeSince1970:(BOOL)since1970
{
  if (since1970)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addRedactionSignals:(id)signals
{
  signalsCopy = signals;
  redactionSignals = self->_redactionSignals;
  v8 = signalsCopy;
  if (!redactionSignals)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_redactionSignals;
    self->_redactionSignals = array;

    signalsCopy = v8;
    redactionSignals = self->_redactionSignals;
  }

  [(NSArray *)redactionSignals addObject:signalsCopy];
}

- (void)addRedactionWindows:(id)windows
{
  windowsCopy = windows;
  redactionWindows = self->_redactionWindows;
  v8 = windowsCopy;
  if (!redactionWindows)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_redactionWindows;
    self->_redactionWindows = array;

    windowsCopy = v8;
    redactionWindows = self->_redactionWindows;
  }

  [(NSArray *)redactionWindows addObject:windowsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v13.receiver = self;
  v13.super_class = LRSchemaLRRedactionSummaryReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(LRSchemaLRRedactionSummaryReported *)self redactionWindows:v13.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(LRSchemaLRRedactionSummaryReported *)self setRedactionWindows:v7];

  redactionSignals = [(LRSchemaLRRedactionSummaryReported *)self redactionSignals];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:redactionSignals underConditions:policyCopy];
  [(LRSchemaLRRedactionSummaryReported *)self setRedactionSignals:v9];

  preProcessorInfo = [(LRSchemaLRRedactionSummaryReported *)self preProcessorInfo];
  v11 = [preProcessorInfo applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v11 suppressMessage];
  if (policyCopy)
  {
    [(LRSchemaLRRedactionSummaryReported *)self deletePreProcessorInfo];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end