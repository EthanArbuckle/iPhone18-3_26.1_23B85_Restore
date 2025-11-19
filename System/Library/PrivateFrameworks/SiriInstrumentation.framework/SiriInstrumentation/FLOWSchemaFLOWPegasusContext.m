@interface FLOWSchemaFLOWPegasusContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWPegasusContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWPegasusContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)otherProvidersAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addOtherProviders:(int)a3;
- (void)setHasIsHandOffExecution:(BOOL)a3;
- (void)setHasPrimaryProvider:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWPegasusContext

- (FLOWSchemaFLOWPegasusContext)initWithDictionary:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = FLOWSchemaFLOWPegasusContext;
  v5 = [(FLOWSchemaFLOWPegasusContext *)&v40 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWPegasusContext *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"productArea"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPegasusContext setProductArea:](v5, "setProductArea:", [v8 intValue]);
    }

    v35 = v6;
    v9 = [v4 objectForKeyedSubscript:@"primaryProvider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPegasusContext setPrimaryProvider:](v5, "setPrimaryProvider:", [v9 intValue]);
    }

    v33 = v9;
    v34 = v8;
    v10 = [v4 objectForKeyedSubscript:@"otherProviders"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v37;
        do
        {
          v15 = 0;
          do
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v36 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWPegasusContext addOtherProviders:](v5, "addOtherProviders:", [v16 intValue]);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v13);
      }
    }

    v17 = [v4 objectForKeyedSubscript:@"intent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[PEGASUSSchemaPEGASUSIntent alloc] initWithDictionary:v17];
      [(FLOWSchemaFLOWPegasusContext *)v5 setIntent:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"isHandOffExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPegasusContext setIsHandOffExecution:](v5, "setIsHandOffExecution:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:{@"kgQAExecution", v10}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[FLOWSchemaFLOWKGQAExecution alloc] initWithDictionary:v20];
      [(FLOWSchemaFLOWPegasusContext *)v5 setKgQAExecution:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"webAnswerExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[FLOWSchemaFLOWWebAnswerExecution alloc] initWithDictionary:v22];
      [(FLOWSchemaFLOWPegasusContext *)v5 setWebAnswerExecution:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"sportsExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[FLOWSchemaFLOWSPORTSExecution alloc] initWithDictionary:v24];
      [(FLOWSchemaFLOWPegasusContext *)v5 setSportsExecution:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"crossIntentRankerResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[FLOWSchemaFLOWCrossIntentRankerResponse alloc] initWithDictionary:v26];
      [(FLOWSchemaFLOWPegasusContext *)v5 setCrossIntentRankerResponse:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"mapsExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[FLOWSchemaFLOWMapsExecution alloc] initWithDictionary:v28];
      [(FLOWSchemaFLOWPegasusContext *)v5 setMapsExecution:v29];
    }

    v30 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWPegasusContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWPegasusContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWPegasusContext *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_crossIntentRankerResponse)
  {
    v4 = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"crossIntentRankerResponse"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"crossIntentRankerResponse"];
    }
  }

  if (self->_intent)
  {
    v7 = [(FLOWSchemaFLOWPegasusContext *)self intent];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"intent"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"intent"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWPegasusContext isHandOffExecution](self, "isHandOffExecution")}];
    [v3 setObject:v10 forKeyedSubscript:@"isHandOffExecution"];
  }

  if (self->_kgQAExecution)
  {
    v11 = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"kgQAExecution"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"kgQAExecution"];
    }
  }

  if (self->_linkId)
  {
    v14 = [(FLOWSchemaFLOWPegasusContext *)self linkId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_mapsExecution)
  {
    v17 = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"mapsExecution"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"mapsExecution"];
    }
  }

  if ([(NSArray *)self->_otherProviders count])
  {
    v20 = [(FLOWSchemaFLOWPegasusContext *)self otherProviders];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"otherProviders"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v23 = [(FLOWSchemaFLOWPegasusContext *)self primaryProvider]- 1;
    if (v23 > 0xF)
    {
      v24 = @"FLOWPEGASUSPROVIDER_UNKNOWN";
    }

    else
    {
      v24 = off_1E78D5F40[v23];
    }

    [v3 setObject:v24 forKeyedSubscript:@"primaryProvider"];
    has = self->_has;
  }

  if (has)
  {
    v25 = [(FLOWSchemaFLOWPegasusContext *)self productArea]- 1;
    if (v25 > 0xE)
    {
      v26 = @"FLOWPEGASUSPRODUCTAREA_UNKNOWN";
    }

    else
    {
      v26 = off_1E78D5FC0[v25];
    }

    [v3 setObject:v26 forKeyedSubscript:@"productArea"];
  }

  if (self->_sportsExecution)
  {
    v27 = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"sportsExecution"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"sportsExecution"];
    }
  }

  if (self->_webAnswerExecution)
  {
    v30 = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"webAnswerExecution"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"webAnswerExecution"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_productArea;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_primaryProvider;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSArray *)self->_otherProviders hash];
  v7 = [(PEGASUSSchemaPEGASUSIntent *)self->_intent hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_isHandOffExecution;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(FLOWSchemaFLOWKGQAExecution *)self->_kgQAExecution hash];
  v10 = [(FLOWSchemaFLOWWebAnswerExecution *)self->_webAnswerExecution hash];
  v11 = v10 ^ [(FLOWSchemaFLOWSPORTSExecution *)self->_sportsExecution hash];
  v12 = v11 ^ [(FLOWSchemaFLOWCrossIntentRankerResponse *)self->_crossIntentRankerResponse hash];
  return v9 ^ v12 ^ [(FLOWSchemaFLOWMapsExecution *)self->_mapsExecution hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = [(FLOWSchemaFLOWPegasusContext *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v7 = [(FLOWSchemaFLOWPegasusContext *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWPegasusContext *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[88];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_52;
  }

  if (*&has)
  {
    productArea = self->_productArea;
    if (productArea != [v4 productArea])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v13 = v4[88];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_52;
  }

  if (v15)
  {
    primaryProvider = self->_primaryProvider;
    if (primaryProvider != [v4 primaryProvider])
    {
      goto LABEL_52;
    }
  }

  v5 = [(FLOWSchemaFLOWPegasusContext *)self otherProviders];
  v6 = [v4 otherProviders];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v17 = [(FLOWSchemaFLOWPegasusContext *)self otherProviders];
  if (v17)
  {
    v18 = v17;
    v19 = [(FLOWSchemaFLOWPegasusContext *)self otherProviders];
    v20 = [v4 otherProviders];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWPegasusContext *)self intent];
  v6 = [v4 intent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v22 = [(FLOWSchemaFLOWPegasusContext *)self intent];
  if (v22)
  {
    v23 = v22;
    v24 = [(FLOWSchemaFLOWPegasusContext *)self intent];
    v25 = [v4 intent];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v27 = (*&self->_has >> 2) & 1;
  if (v27 != ((v4[88] >> 2) & 1))
  {
    goto LABEL_52;
  }

  if (v27)
  {
    isHandOffExecution = self->_isHandOffExecution;
    if (isHandOffExecution != [v4 isHandOffExecution])
    {
      goto LABEL_52;
    }
  }

  v5 = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
  v6 = [v4 kgQAExecution];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v29 = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
  if (v29)
  {
    v30 = v29;
    v31 = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
    v32 = [v4 kgQAExecution];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
  v6 = [v4 webAnswerExecution];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v34 = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
  if (v34)
  {
    v35 = v34;
    v36 = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
    v37 = [v4 webAnswerExecution];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
  v6 = [v4 sportsExecution];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v39 = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
  if (v39)
  {
    v40 = v39;
    v41 = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
    v42 = [v4 sportsExecution];
    v43 = [v41 isEqual:v42];

    if (!v43)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
  v6 = [v4 crossIntentRankerResponse];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v44 = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
  if (v44)
  {
    v45 = v44;
    v46 = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
    v47 = [v4 crossIntentRankerResponse];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
  v6 = [v4 mapsExecution];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  v49 = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
  if (!v49)
  {

LABEL_55:
    v54 = 1;
    goto LABEL_53;
  }

  v50 = v49;
  v51 = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
  v52 = [v4 mapsExecution];
  v53 = [v51 isEqual:v52];

  if (v53)
  {
    goto LABEL_55;
  }

LABEL_52:
  v54 = 0;
LABEL_53:

  return v54;
}

- (void)writeTo:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FLOWSchemaFLOWPegasusContext *)self linkId];

  if (v5)
  {
    v6 = [(FLOWSchemaFLOWPegasusContext *)self linkId];
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
    PBDataWriterWriteInt32Field();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_otherProviders;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v25 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v13 = [(FLOWSchemaFLOWPegasusContext *)self intent];

  if (v13)
  {
    v14 = [(FLOWSchemaFLOWPegasusContext *)self intent];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v15 = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];

  if (v15)
  {
    v16 = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];

  if (v17)
  {
    v18 = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];

  if (v19)
  {
    v20 = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];

  if (v21)
  {
    v22 = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
    PBDataWriterWriteSubmessage();
  }

  v23 = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];

  if (v23)
  {
    v24 = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasIsHandOffExecution:(BOOL)a3
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

- (int)otherProvidersAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_otherProviders objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addOtherProviders:(int)a3
{
  v3 = *&a3;
  otherProviders = self->_otherProviders;
  if (!otherProviders)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_otherProviders;
    self->_otherProviders = v6;

    otherProviders = self->_otherProviders;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)otherProviders addObject:v8];
}

- (void)setHasPrimaryProvider:(BOOL)a3
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
  v28.receiver = self;
  v28.super_class = FLOWSchemaFLOWPegasusContext;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWPegasusContext *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteLinkId];
  }

  v9 = [(FLOWSchemaFLOWPegasusContext *)self intent];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteIntent];
  }

  v12 = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteKgQAExecution];
  }

  v15 = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteWebAnswerExecution];
  }

  v18 = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteSportsExecution];
  }

  v21 = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteCrossIntentRankerResponse];
  }

  v24 = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteMapsExecution];
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