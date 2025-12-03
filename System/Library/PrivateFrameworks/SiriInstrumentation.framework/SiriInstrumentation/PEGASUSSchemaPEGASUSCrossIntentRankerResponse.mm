@interface PEGASUSSchemaPEGASUSCrossIntentRankerResponse
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSCrossIntentRankerResponse)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSCrossIntentRankerResponse)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCrossDomainRankerScoreKeeper:(id)keeper;
- (void)addCrossIntentRankerScoreKeeper:(id)keeper;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSCrossIntentRankerResponse

- (PEGASUSSchemaPEGASUSCrossIntentRankerResponse)initWithDictionary:(id)dictionary
{
  v44 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v41.receiver = self;
  v41.super_class = PEGASUSSchemaPEGASUSCrossIntentRankerResponse;
  v5 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)&v41 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"crossDomainRankerScoreKeeper"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v38;
        do
        {
          v11 = 0;
          do
          {
            if (*v38 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v37 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 addCrossDomainRankerScoreKeeper:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"crossIntentRankerScoreKeeper"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          v19 = 0;
          do
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 copy];
              [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 addCrossIntentRankerScoreKeeper:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v17);
      }
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:{@"domainCards", v33}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PEGASUSSchemaPEGASUSDomainCards alloc] initWithDictionary:v22];
      [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 setDomainCards:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"cirPireneConfidenceDebug"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 setCirPireneConfidenceDebug:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"sortedScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[PEGASUSSchemaPEGASUSSortedScore alloc] initWithDictionary:v26];
      [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 setSortedScore:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"cirAlerts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[PEGASUSSchemaPEGASUSCirAlerts alloc] initWithDictionary:v28];
      [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 setCirAlerts:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"cirFallbackTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSCrossIntentRankerResponse setCirFallbackTriggered:](v5, "setCirFallbackTriggered:", [v30 BOOLValue]);
    }

    v31 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSCrossIntentRankerResponse)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self dictionaryRepresentation];
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
  if (self->_cirAlerts)
  {
    cirAlerts = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
    dictionaryRepresentation = [cirAlerts dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cirAlerts"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cirAlerts"];
    }
  }

  if (*(&self->_cirFallbackTriggered + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSCrossIntentRankerResponse cirFallbackTriggered](self, "cirFallbackTriggered")}];
    [dictionary setObject:v7 forKeyedSubscript:@"cirFallbackTriggered"];
  }

  if (self->_cirPireneConfidenceDebug)
  {
    cirPireneConfidenceDebug = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirPireneConfidenceDebug];
    v9 = [cirPireneConfidenceDebug copy];
    [dictionary setObject:v9 forKeyedSubscript:@"cirPireneConfidenceDebug"];
  }

  if (self->_crossDomainRankerScoreKeepers)
  {
    crossDomainRankerScoreKeepers = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
    v11 = [crossDomainRankerScoreKeepers copy];
    [dictionary setObject:v11 forKeyedSubscript:@"crossDomainRankerScoreKeeper"];
  }

  if (self->_crossIntentRankerScoreKeepers)
  {
    crossIntentRankerScoreKeepers = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
    v13 = [crossIntentRankerScoreKeepers copy];
    [dictionary setObject:v13 forKeyedSubscript:@"crossIntentRankerScoreKeeper"];
  }

  if (self->_domainCards)
  {
    domainCards = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
    dictionaryRepresentation2 = [domainCards dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"domainCards"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"domainCards"];
    }
  }

  if (self->_sortedScore)
  {
    sortedScore = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
    dictionaryRepresentation3 = [sortedScore dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"sortedScore"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"sortedScore"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_crossDomainRankerScoreKeepers hash];
  v4 = [(NSArray *)self->_crossIntentRankerScoreKeepers hash];
  v5 = [(PEGASUSSchemaPEGASUSDomainCards *)self->_domainCards hash];
  v6 = [(NSString *)self->_cirPireneConfidenceDebug hash];
  v7 = [(PEGASUSSchemaPEGASUSSortedScore *)self->_sortedScore hash];
  v8 = [(PEGASUSSchemaPEGASUSCirAlerts *)self->_cirAlerts hash];
  if (*(&self->_cirFallbackTriggered + 1))
  {
    v9 = 2654435761 * self->_cirFallbackTriggered;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  crossDomainRankerScoreKeepers = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
  crossDomainRankerScoreKeepers2 = [equalCopy crossDomainRankerScoreKeepers];
  if ((crossDomainRankerScoreKeepers != 0) == (crossDomainRankerScoreKeepers2 == 0))
  {
    goto LABEL_31;
  }

  crossDomainRankerScoreKeepers3 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
  if (crossDomainRankerScoreKeepers3)
  {
    v8 = crossDomainRankerScoreKeepers3;
    crossDomainRankerScoreKeepers4 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
    crossDomainRankerScoreKeepers5 = [equalCopy crossDomainRankerScoreKeepers];
    v11 = [crossDomainRankerScoreKeepers4 isEqual:crossDomainRankerScoreKeepers5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  crossDomainRankerScoreKeepers = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
  crossDomainRankerScoreKeepers2 = [equalCopy crossIntentRankerScoreKeepers];
  if ((crossDomainRankerScoreKeepers != 0) == (crossDomainRankerScoreKeepers2 == 0))
  {
    goto LABEL_31;
  }

  crossIntentRankerScoreKeepers = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
  if (crossIntentRankerScoreKeepers)
  {
    v13 = crossIntentRankerScoreKeepers;
    crossIntentRankerScoreKeepers2 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
    crossIntentRankerScoreKeepers3 = [equalCopy crossIntentRankerScoreKeepers];
    v16 = [crossIntentRankerScoreKeepers2 isEqual:crossIntentRankerScoreKeepers3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  crossDomainRankerScoreKeepers = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
  crossDomainRankerScoreKeepers2 = [equalCopy domainCards];
  if ((crossDomainRankerScoreKeepers != 0) == (crossDomainRankerScoreKeepers2 == 0))
  {
    goto LABEL_31;
  }

  domainCards = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
  if (domainCards)
  {
    v18 = domainCards;
    domainCards2 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
    domainCards3 = [equalCopy domainCards];
    v21 = [domainCards2 isEqual:domainCards3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  crossDomainRankerScoreKeepers = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirPireneConfidenceDebug];
  crossDomainRankerScoreKeepers2 = [equalCopy cirPireneConfidenceDebug];
  if ((crossDomainRankerScoreKeepers != 0) == (crossDomainRankerScoreKeepers2 == 0))
  {
    goto LABEL_31;
  }

  cirPireneConfidenceDebug = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirPireneConfidenceDebug];
  if (cirPireneConfidenceDebug)
  {
    v23 = cirPireneConfidenceDebug;
    cirPireneConfidenceDebug2 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirPireneConfidenceDebug];
    cirPireneConfidenceDebug3 = [equalCopy cirPireneConfidenceDebug];
    v26 = [cirPireneConfidenceDebug2 isEqual:cirPireneConfidenceDebug3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  crossDomainRankerScoreKeepers = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
  crossDomainRankerScoreKeepers2 = [equalCopy sortedScore];
  if ((crossDomainRankerScoreKeepers != 0) == (crossDomainRankerScoreKeepers2 == 0))
  {
    goto LABEL_31;
  }

  sortedScore = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
  if (sortedScore)
  {
    v28 = sortedScore;
    sortedScore2 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
    sortedScore3 = [equalCopy sortedScore];
    v31 = [sortedScore2 isEqual:sortedScore3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  crossDomainRankerScoreKeepers = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
  crossDomainRankerScoreKeepers2 = [equalCopy cirAlerts];
  if ((crossDomainRankerScoreKeepers != 0) == (crossDomainRankerScoreKeepers2 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  cirAlerts = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
  if (cirAlerts)
  {
    v33 = cirAlerts;
    cirAlerts2 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
    cirAlerts3 = [equalCopy cirAlerts];
    v36 = [cirAlerts2 isEqual:cirAlerts3];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  if (*(&self->_cirFallbackTriggered + 1) == (equalCopy[57] & 1))
  {
    if (!*(&self->_cirFallbackTriggered + 1) || (cirFallbackTriggered = self->_cirFallbackTriggered, cirFallbackTriggered == [equalCopy cirFallbackTriggered]))
    {
      v37 = 1;
      goto LABEL_33;
    }
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_crossDomainRankerScoreKeepers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = self->_crossIntentRankerScoreKeepers;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v12);
  }

  domainCards = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];

  if (domainCards)
  {
    domainCards2 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
    PBDataWriterWriteSubmessage();
  }

  cirPireneConfidenceDebug = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirPireneConfidenceDebug];

  if (cirPireneConfidenceDebug)
  {
    PBDataWriterWriteStringField();
  }

  sortedScore = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];

  if (sortedScore)
  {
    sortedScore2 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
    PBDataWriterWriteSubmessage();
  }

  cirAlerts = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];

  if (cirAlerts)
  {
    cirAlerts2 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_cirFallbackTriggered + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)addCrossIntentRankerScoreKeeper:(id)keeper
{
  keeperCopy = keeper;
  crossIntentRankerScoreKeepers = self->_crossIntentRankerScoreKeepers;
  v8 = keeperCopy;
  if (!crossIntentRankerScoreKeepers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_crossIntentRankerScoreKeepers;
    self->_crossIntentRankerScoreKeepers = array;

    keeperCopy = v8;
    crossIntentRankerScoreKeepers = self->_crossIntentRankerScoreKeepers;
  }

  [(NSArray *)crossIntentRankerScoreKeepers addObject:keeperCopy];
}

- (void)addCrossDomainRankerScoreKeeper:(id)keeper
{
  keeperCopy = keeper;
  crossDomainRankerScoreKeepers = self->_crossDomainRankerScoreKeepers;
  v8 = keeperCopy;
  if (!crossDomainRankerScoreKeepers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_crossDomainRankerScoreKeepers;
    self->_crossDomainRankerScoreKeepers = array;

    keeperCopy = v8;
    crossDomainRankerScoreKeepers = self->_crossDomainRankerScoreKeepers;
  }

  [(NSArray *)crossDomainRankerScoreKeepers addObject:keeperCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PEGASUSSchemaPEGASUSCrossIntentRankerResponse;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  domainCards = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
  v7 = [domainCards applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self deleteDomainCards];
  }

  sortedScore = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
  v10 = [sortedScore applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self deleteSortedScore];
  }

  cirAlerts = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
  v13 = [cirAlerts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self deleteCirAlerts];
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