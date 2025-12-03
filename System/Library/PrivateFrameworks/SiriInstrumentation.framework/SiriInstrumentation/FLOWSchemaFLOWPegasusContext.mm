@interface FLOWSchemaFLOWPegasusContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWPegasusContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWPegasusContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)otherProvidersAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addOtherProviders:(int)providers;
- (void)setHasIsHandOffExecution:(BOOL)execution;
- (void)setHasPrimaryProvider:(BOOL)provider;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWPegasusContext

- (FLOWSchemaFLOWPegasusContext)initWithDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v40.receiver = self;
  v40.super_class = FLOWSchemaFLOWPegasusContext;
  v5 = [(FLOWSchemaFLOWPegasusContext *)&v40 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWPegasusContext *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"productArea"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPegasusContext setProductArea:](v5, "setProductArea:", [v8 intValue]);
    }

    v35 = v6;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"primaryProvider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPegasusContext setPrimaryProvider:](v5, "setPrimaryProvider:", [v9 intValue]);
    }

    v33 = v9;
    v34 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"otherProviders"];
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

    v17 = [dictionaryCopy objectForKeyedSubscript:@"intent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[PEGASUSSchemaPEGASUSIntent alloc] initWithDictionary:v17];
      [(FLOWSchemaFLOWPegasusContext *)v5 setIntent:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"isHandOffExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPegasusContext setIsHandOffExecution:](v5, "setIsHandOffExecution:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:{@"kgQAExecution", v10}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[FLOWSchemaFLOWKGQAExecution alloc] initWithDictionary:v20];
      [(FLOWSchemaFLOWPegasusContext *)v5 setKgQAExecution:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"webAnswerExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[FLOWSchemaFLOWWebAnswerExecution alloc] initWithDictionary:v22];
      [(FLOWSchemaFLOWPegasusContext *)v5 setWebAnswerExecution:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"sportsExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[FLOWSchemaFLOWSPORTSExecution alloc] initWithDictionary:v24];
      [(FLOWSchemaFLOWPegasusContext *)v5 setSportsExecution:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"crossIntentRankerResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[FLOWSchemaFLOWCrossIntentRankerResponse alloc] initWithDictionary:v26];
      [(FLOWSchemaFLOWPegasusContext *)v5 setCrossIntentRankerResponse:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"mapsExecution"];
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

- (FLOWSchemaFLOWPegasusContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWPegasusContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWPegasusContext *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_crossIntentRankerResponse)
  {
    crossIntentRankerResponse = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
    dictionaryRepresentation = [crossIntentRankerResponse dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"crossIntentRankerResponse"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"crossIntentRankerResponse"];
    }
  }

  if (self->_intent)
  {
    intent = [(FLOWSchemaFLOWPegasusContext *)self intent];
    dictionaryRepresentation2 = [intent dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intent"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"intent"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWPegasusContext isHandOffExecution](self, "isHandOffExecution")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isHandOffExecution"];
  }

  if (self->_kgQAExecution)
  {
    kgQAExecution = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
    dictionaryRepresentation3 = [kgQAExecution dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"kgQAExecution"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"kgQAExecution"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(FLOWSchemaFLOWPegasusContext *)self linkId];
    dictionaryRepresentation4 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_mapsExecution)
  {
    mapsExecution = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
    dictionaryRepresentation5 = [mapsExecution dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"mapsExecution"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"mapsExecution"];
    }
  }

  if ([(NSArray *)self->_otherProviders count])
  {
    otherProviders = [(FLOWSchemaFLOWPegasusContext *)self otherProviders];
    v21 = [otherProviders copy];
    [dictionary setObject:v21 forKeyedSubscript:@"otherProviders"];
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

    [dictionary setObject:v24 forKeyedSubscript:@"primaryProvider"];
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

    [dictionary setObject:v26 forKeyedSubscript:@"productArea"];
  }

  if (self->_sportsExecution)
  {
    sportsExecution = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
    dictionaryRepresentation6 = [sportsExecution dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"sportsExecution"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"sportsExecution"];
    }
  }

  if (self->_webAnswerExecution)
  {
    webAnswerExecution = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
    dictionaryRepresentation7 = [webAnswerExecution dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"webAnswerExecution"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"webAnswerExecution"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  linkId = [(FLOWSchemaFLOWPegasusContext *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  linkId3 = [(FLOWSchemaFLOWPegasusContext *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(FLOWSchemaFLOWPegasusContext *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[88];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_52;
  }

  if (*&has)
  {
    productArea = self->_productArea;
    if (productArea != [equalCopy productArea])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v13 = equalCopy[88];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_52;
  }

  if (v15)
  {
    primaryProvider = self->_primaryProvider;
    if (primaryProvider != [equalCopy primaryProvider])
    {
      goto LABEL_52;
    }
  }

  linkId = [(FLOWSchemaFLOWPegasusContext *)self otherProviders];
  linkId2 = [equalCopy otherProviders];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  otherProviders = [(FLOWSchemaFLOWPegasusContext *)self otherProviders];
  if (otherProviders)
  {
    v18 = otherProviders;
    otherProviders2 = [(FLOWSchemaFLOWPegasusContext *)self otherProviders];
    otherProviders3 = [equalCopy otherProviders];
    v21 = [otherProviders2 isEqual:otherProviders3];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWPegasusContext *)self intent];
  linkId2 = [equalCopy intent];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  intent = [(FLOWSchemaFLOWPegasusContext *)self intent];
  if (intent)
  {
    v23 = intent;
    intent2 = [(FLOWSchemaFLOWPegasusContext *)self intent];
    intent3 = [equalCopy intent];
    v26 = [intent2 isEqual:intent3];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v27 = (*&self->_has >> 2) & 1;
  if (v27 != ((equalCopy[88] >> 2) & 1))
  {
    goto LABEL_52;
  }

  if (v27)
  {
    isHandOffExecution = self->_isHandOffExecution;
    if (isHandOffExecution != [equalCopy isHandOffExecution])
    {
      goto LABEL_52;
    }
  }

  linkId = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
  linkId2 = [equalCopy kgQAExecution];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  kgQAExecution = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
  if (kgQAExecution)
  {
    v30 = kgQAExecution;
    kgQAExecution2 = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
    kgQAExecution3 = [equalCopy kgQAExecution];
    v33 = [kgQAExecution2 isEqual:kgQAExecution3];

    if (!v33)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
  linkId2 = [equalCopy webAnswerExecution];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  webAnswerExecution = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
  if (webAnswerExecution)
  {
    v35 = webAnswerExecution;
    webAnswerExecution2 = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
    webAnswerExecution3 = [equalCopy webAnswerExecution];
    v38 = [webAnswerExecution2 isEqual:webAnswerExecution3];

    if (!v38)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
  linkId2 = [equalCopy sportsExecution];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  sportsExecution = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
  if (sportsExecution)
  {
    v40 = sportsExecution;
    sportsExecution2 = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
    sportsExecution3 = [equalCopy sportsExecution];
    v43 = [sportsExecution2 isEqual:sportsExecution3];

    if (!v43)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
  linkId2 = [equalCopy crossIntentRankerResponse];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  crossIntentRankerResponse = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
  if (crossIntentRankerResponse)
  {
    v45 = crossIntentRankerResponse;
    crossIntentRankerResponse2 = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
    crossIntentRankerResponse3 = [equalCopy crossIntentRankerResponse];
    v48 = [crossIntentRankerResponse2 isEqual:crossIntentRankerResponse3];

    if (!v48)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
  linkId2 = [equalCopy mapsExecution];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  mapsExecution = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
  if (!mapsExecution)
  {

LABEL_55:
    v54 = 1;
    goto LABEL_53;
  }

  v50 = mapsExecution;
  mapsExecution2 = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
  mapsExecution3 = [equalCopy mapsExecution];
  v53 = [mapsExecution2 isEqual:mapsExecution3];

  if (v53)
  {
    goto LABEL_55;
  }

LABEL_52:
  v54 = 0;
LABEL_53:

  return v54;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkId = [(FLOWSchemaFLOWPegasusContext *)self linkId];

  if (linkId)
  {
    linkId2 = [(FLOWSchemaFLOWPegasusContext *)self linkId];
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

  intent = [(FLOWSchemaFLOWPegasusContext *)self intent];

  if (intent)
  {
    intent2 = [(FLOWSchemaFLOWPegasusContext *)self intent];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  kgQAExecution = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];

  if (kgQAExecution)
  {
    kgQAExecution2 = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
    PBDataWriterWriteSubmessage();
  }

  webAnswerExecution = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];

  if (webAnswerExecution)
  {
    webAnswerExecution2 = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
    PBDataWriterWriteSubmessage();
  }

  sportsExecution = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];

  if (sportsExecution)
  {
    sportsExecution2 = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
    PBDataWriterWriteSubmessage();
  }

  crossIntentRankerResponse = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];

  if (crossIntentRankerResponse)
  {
    crossIntentRankerResponse2 = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
    PBDataWriterWriteSubmessage();
  }

  mapsExecution = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];

  if (mapsExecution)
  {
    mapsExecution2 = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasIsHandOffExecution:(BOOL)execution
{
  if (execution)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)otherProvidersAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_otherProviders objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addOtherProviders:(int)providers
{
  v3 = *&providers;
  otherProviders = self->_otherProviders;
  if (!otherProviders)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_otherProviders;
    self->_otherProviders = array;

    otherProviders = self->_otherProviders;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)otherProviders addObject:v8];
}

- (void)setHasPrimaryProvider:(BOOL)provider
{
  if (provider)
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
  v28.receiver = self;
  v28.super_class = FLOWSchemaFLOWPegasusContext;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(FLOWSchemaFLOWPegasusContext *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteLinkId];
  }

  intent = [(FLOWSchemaFLOWPegasusContext *)self intent];
  v10 = [intent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteIntent];
  }

  kgQAExecution = [(FLOWSchemaFLOWPegasusContext *)self kgQAExecution];
  v13 = [kgQAExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteKgQAExecution];
  }

  webAnswerExecution = [(FLOWSchemaFLOWPegasusContext *)self webAnswerExecution];
  v16 = [webAnswerExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteWebAnswerExecution];
  }

  sportsExecution = [(FLOWSchemaFLOWPegasusContext *)self sportsExecution];
  v19 = [sportsExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteSportsExecution];
  }

  crossIntentRankerResponse = [(FLOWSchemaFLOWPegasusContext *)self crossIntentRankerResponse];
  v22 = [crossIntentRankerResponse applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(FLOWSchemaFLOWPegasusContext *)self deleteCrossIntentRankerResponse];
  }

  mapsExecution = [(FLOWSchemaFLOWPegasusContext *)self mapsExecution];
  v25 = [mapsExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
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