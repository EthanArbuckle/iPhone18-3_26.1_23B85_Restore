@interface IFTSchemaIFTClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTClientEventMetadata)initWithDictionary:(id)a3;
- (IFTSchemaIFTClientEventMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addInitiatedSpans:(id)a3;
- (void)setHasClientApplicationId:(BOOL)a3;
- (void)setHasPostingSpanId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTClientEventMetadata

- (IFTSchemaIFTClientEventMetadata)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = IFTSchemaIFTClientEventMetadata;
  v5 = [(IFTSchemaIFTClientEventMetadata *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ifRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IFTSchemaIFTClientEventMetadata *)v5 setIfRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ifEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(IFTSchemaIFTClientEventMetadata *)v5 setIfEventId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"ifSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(IFTSchemaIFTClientEventMetadata *)v5 setIfSessionId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"clientTraceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(IFTSchemaIFTClientEventMetadata *)v5 setClientTraceId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"sender"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTClientEventMetadata setSender:](v5, "setSender:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"postingSpanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTClientEventMetadata setPostingSpanId:](v5, "setPostingSpanId:", [v15 unsignedLongLongValue]);
    }

    v32 = v15;
    v16 = [v4 objectForKeyedSubscript:@"initiatedSpans"];
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

    v24 = [v4 objectForKeyedSubscript:{@"clientApplicationId", v27, v28, v29, v30, v31}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTClientEventMetadata setClientApplicationId:](v5, "setClientApplicationId:", [v24 intValue]);
    }

    v25 = v5;
  }

  return v5;
}

- (IFTSchemaIFTClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTClientEventMetadata *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKeyedSubscript:@"clientApplicationId"];
  }

  if (self->_clientTraceId)
  {
    v6 = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"clientTraceId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"clientTraceId"];
    }
  }

  if (self->_ifEventId)
  {
    v9 = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"ifEventId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"ifEventId"];
    }
  }

  if (self->_ifRequestId)
  {
    v12 = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"ifRequestId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"ifRequestId"];
    }
  }

  if (self->_ifSessionId)
  {
    v15 = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"ifSessionId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"ifSessionId"];
    }
  }

  if ([(NSArray *)self->_initiatedSpans count])
  {
    v18 = [MEMORY[0x1E695DF70] array];
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

          v24 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          if (v24)
          {
            [v18 addObject:v24];
          }

          else
          {
            v25 = [MEMORY[0x1E695DFB0] null];
            [v18 addObject:v25];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"initiatedSpans"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IFTSchemaIFTClientEventMetadata postingSpanId](self, "postingSpanId")}];
    [v3 setObject:v27 forKeyedSubscript:@"postingSpanId"];

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

    [v3 setObject:v29 forKeyedSubscript:@"sender"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
  v6 = [v4 ifRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v7 = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
    v10 = [v4 ifRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
  v6 = [v4 ifEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v12 = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
  if (v12)
  {
    v13 = v12;
    v14 = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
    v15 = [v4 ifEventId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
  v6 = [v4 ifSessionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v17 = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
  if (v17)
  {
    v18 = v17;
    v19 = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
    v20 = [v4 ifSessionId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
  v6 = [v4 clientTraceId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v22 = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
  if (v22)
  {
    v23 = v22;
    v24 = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
    v25 = [v4 clientTraceId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  has = self->_has;
  v28 = v4[68];
  if ((*&has & 1) != (v28 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    sender = self->_sender;
    if (sender != [v4 sender])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v28 = v4[68];
  }

  v30 = (*&has >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v30)
  {
    postingSpanId = self->_postingSpanId;
    if (postingSpanId != [v4 postingSpanId])
    {
      goto LABEL_34;
    }
  }

  v5 = [(IFTSchemaIFTClientEventMetadata *)self initiatedSpans];
  v6 = [v4 initiatedSpans];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  v32 = [(IFTSchemaIFTClientEventMetadata *)self initiatedSpans];
  if (v32)
  {
    v33 = v32;
    v34 = [(IFTSchemaIFTClientEventMetadata *)self initiatedSpans];
    v35 = [v4 initiatedSpans];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v39 = (*&self->_has >> 2) & 1;
  if (v39 == ((v4[68] >> 2) & 1))
  {
    if (!v39 || (clientApplicationId = self->_clientApplicationId, clientApplicationId == [v4 clientApplicationId]))
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

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];

  if (v5)
  {
    v6 = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];

  if (v7)
  {
    v8 = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];

  if (v9)
  {
    v10 = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];

  if (v11)
  {
    v12 = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
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

- (void)setHasClientApplicationId:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addInitiatedSpans:(id)a3
{
  v4 = a3;
  initiatedSpans = self->_initiatedSpans;
  v8 = v4;
  if (!initiatedSpans)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_initiatedSpans;
    self->_initiatedSpans = v6;

    v4 = v8;
    initiatedSpans = self->_initiatedSpans;
  }

  [(NSArray *)initiatedSpans addObject:v4];
}

- (void)setHasPostingSpanId:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = IFTSchemaIFTClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v21 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTClientEventMetadata *)self ifRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTClientEventMetadata *)self deleteIfRequestId];
  }

  v9 = [(IFTSchemaIFTClientEventMetadata *)self ifEventId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTClientEventMetadata *)self deleteIfEventId];
  }

  v12 = [(IFTSchemaIFTClientEventMetadata *)self ifSessionId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTClientEventMetadata *)self deleteIfSessionId];
  }

  v15 = [(IFTSchemaIFTClientEventMetadata *)self clientTraceId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IFTSchemaIFTClientEventMetadata *)self deleteClientTraceId];
  }

  v18 = [(IFTSchemaIFTClientEventMetadata *)self initiatedSpans];
  v19 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v18 underConditions:v4];
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