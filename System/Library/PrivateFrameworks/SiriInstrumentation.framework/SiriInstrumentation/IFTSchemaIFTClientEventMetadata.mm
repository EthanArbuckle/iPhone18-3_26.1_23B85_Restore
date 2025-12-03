@interface IFTSchemaIFTClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTClientEventMetadata)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addInitiatedSpans:(id)spans;
- (void)setHasClientApplicationId:(BOOL)id;
- (void)setHasPostingSpanId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTClientEventMetadata

- (IFTSchemaIFTClientEventMetadata)initWithDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = IFTSchemaIFTClientEventMetadata;
  v5 = [(IFTSchemaIFTClientEventMetadata *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IFTSchemaIFTClientEventMetadata *)v5 setIfRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ifEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(IFTSchemaIFTClientEventMetadata *)v5 setIfEventId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ifSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(IFTSchemaIFTClientEventMetadata *)v5 setIfSessionId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"clientTraceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(IFTSchemaIFTClientEventMetadata *)v5 setClientTraceId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"sender"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTClientEventMetadata setSender:](v5, "setSender:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"postingSpanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTClientEventMetadata setPostingSpanId:](v5, "setPostingSpanId:", [v15 unsignedLongLongValue]);
    }

    v32 = v15;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"initiatedSpans"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v14;
      v28 = v12;
      v29 = v10;
      v30 = v8;
      v31 = v6;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v34;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v34 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v33 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[IFTSchemaIFTInitiatedSpans alloc] initWithDictionary:v22];
              [(IFTSchemaIFTClientEventMetadata *)v5 addInitiatedSpans:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v19);
      }

      v8 = v30;
      v6 = v31;
      v12 = v28;
      v14 = v27;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:{@"clientApplicationId", v27, v28, v29, v30, v31}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTClientEventMetadata setClientApplicationId:](v5, "setClientApplicationId:", [v24 intValue]);
    }

    v25 = v5;
  }

  return v5;
}

- (IFTSchemaIFTClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTClientEventMetadata *)self dictionaryRepresentation];
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
  v36 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [(IFTSchemaIFTClientEventMetadata *)self clientApplicationId]- 1;
    if (v4 > 2)
    {
      v5 = @"IFTCLIENTAPPLICATIONID_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D8408[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"clientApplicationId"];
  }

  if (self->_clientTraceId)
  {
    clientTraceId = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
    dictionaryRepresentation = [clientTraceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clientTraceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clientTraceId"];
    }
  }

  if (self->_ifEventId)
  {
    ifEventId = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
    dictionaryRepresentation2 = [ifEventId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ifEventId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ifEventId"];
    }
  }

  if (self->_ifRequestId)
  {
    ifRequestId = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
    dictionaryRepresentation3 = [ifRequestId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"ifRequestId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"ifRequestId"];
    }
  }

  if (self->_ifSessionId)
  {
    ifSessionId = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
    dictionaryRepresentation4 = [ifSessionId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"ifSessionId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"ifSessionId"];
    }
  }

  if ([(NSArray *)self->_initiatedSpans count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = self->_initiatedSpans;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation5 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null5];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array forKeyedSubscript:@"initiatedSpans"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IFTSchemaIFTClientEventMetadata postingSpanId](self, "postingSpanId")}];
    [dictionary setObject:v27 forKeyedSubscript:@"postingSpanId"];

    has = self->_has;
  }

  if (has)
  {
    v28 = [(IFTSchemaIFTClientEventMetadata *)self sender]- 1;
    if (v28 > 5)
    {
      v29 = @"IFPARTICIPANT_UNKNOWN";
    }

    else
    {
      v29 = off_1E78D8420[v28];
    }

    [dictionary setObject:v29 forKeyedSubscript:@"sender"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ifRequestId hash];
  v4 = [(SISchemaUUID *)self->_ifEventId hash];
  v5 = [(SISchemaUUID *)self->_ifSessionId hash];
  v6 = [(SISchemaUUID *)self->_clientTraceId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_sender;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v8 = 2654435761u * self->_postingSpanId;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = [(NSArray *)self->_initiatedSpans hash];
  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_clientApplicationId;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  ifRequestId = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
  ifRequestId2 = [equalCopy ifRequestId];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
    goto LABEL_33;
  }

  ifRequestId3 = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
  if (ifRequestId3)
  {
    v8 = ifRequestId3;
    ifRequestId4 = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
    ifRequestId5 = [equalCopy ifRequestId];
    v11 = [ifRequestId4 isEqual:ifRequestId5];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  ifRequestId = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
  ifRequestId2 = [equalCopy ifEventId];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
    goto LABEL_33;
  }

  ifEventId = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
  if (ifEventId)
  {
    v13 = ifEventId;
    ifEventId2 = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
    ifEventId3 = [equalCopy ifEventId];
    v16 = [ifEventId2 isEqual:ifEventId3];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  ifRequestId = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
  ifRequestId2 = [equalCopy ifSessionId];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
    goto LABEL_33;
  }

  ifSessionId = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
  if (ifSessionId)
  {
    v18 = ifSessionId;
    ifSessionId2 = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
    ifSessionId3 = [equalCopy ifSessionId];
    v21 = [ifSessionId2 isEqual:ifSessionId3];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  ifRequestId = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
  ifRequestId2 = [equalCopy clientTraceId];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
    goto LABEL_33;
  }

  clientTraceId = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
  if (clientTraceId)
  {
    v23 = clientTraceId;
    clientTraceId2 = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
    clientTraceId3 = [equalCopy clientTraceId];
    v26 = [clientTraceId2 isEqual:clientTraceId3];

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  has = self->_has;
  v28 = equalCopy[68];
  if ((*&has & 1) != (v28 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    sender = self->_sender;
    if (sender != [equalCopy sender])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v28 = equalCopy[68];
  }

  v30 = (*&has >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v30)
  {
    postingSpanId = self->_postingSpanId;
    if (postingSpanId != [equalCopy postingSpanId])
    {
      goto LABEL_34;
    }
  }

  ifRequestId = [(IFTSchemaIFTClientEventMetadata *)self initiatedSpans];
  ifRequestId2 = [equalCopy initiatedSpans];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  initiatedSpans = [(IFTSchemaIFTClientEventMetadata *)self initiatedSpans];
  if (initiatedSpans)
  {
    v33 = initiatedSpans;
    initiatedSpans2 = [(IFTSchemaIFTClientEventMetadata *)self initiatedSpans];
    initiatedSpans3 = [equalCopy initiatedSpans];
    v36 = [initiatedSpans2 isEqual:initiatedSpans3];

    if (!v36)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v39 = (*&self->_has >> 2) & 1;
  if (v39 == ((equalCopy[68] >> 2) & 1))
  {
    if (!v39 || (clientApplicationId = self->_clientApplicationId, clientApplicationId == [equalCopy clientApplicationId]))
    {
      v37 = 1;
      goto LABEL_35;
    }
  }

LABEL_34:
  v37 = 0;
LABEL_35:

  return v37;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  toCopy = to;
  ifRequestId = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];

  if (ifRequestId)
  {
    ifRequestId2 = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
    PBDataWriterWriteSubmessage();
  }

  ifEventId = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];

  if (ifEventId)
  {
    ifEventId2 = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
    PBDataWriterWriteSubmessage();
  }

  ifSessionId = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];

  if (ifSessionId)
  {
    ifSessionId2 = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
    PBDataWriterWriteSubmessage();
  }

  clientTraceId = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];

  if (clientTraceId)
  {
    clientTraceId2 = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = self->_initiatedSpans;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasClientApplicationId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addInitiatedSpans:(id)spans
{
  spansCopy = spans;
  initiatedSpans = self->_initiatedSpans;
  v8 = spansCopy;
  if (!initiatedSpans)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_initiatedSpans;
    self->_initiatedSpans = array;

    spansCopy = v8;
    initiatedSpans = self->_initiatedSpans;
  }

  [(NSArray *)initiatedSpans addObject:spansCopy];
}

- (void)setHasPostingSpanId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v21.receiver = self;
  v21.super_class = IFTSchemaIFTClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v21 applySensitiveConditionsPolicy:policyCopy];
  ifRequestId = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
  v7 = [ifRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTClientEventMetadata *)self deleteIfRequestId];
  }

  ifEventId = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
  v10 = [ifEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTClientEventMetadata *)self deleteIfEventId];
  }

  ifSessionId = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
  v13 = [ifSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTClientEventMetadata *)self deleteIfSessionId];
  }

  clientTraceId = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
  v16 = [clientTraceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTClientEventMetadata *)self deleteClientTraceId];
  }

  initiatedSpans = [(IFTSchemaIFTClientEventMetadata *)self initiatedSpans];
  v19 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:initiatedSpans underConditions:policyCopy];
  [(IFTSchemaIFTClientEventMetadata *)self setInitiatedSpans:v19];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end