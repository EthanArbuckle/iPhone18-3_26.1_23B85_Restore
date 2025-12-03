@interface SUGSchemaSUGUserStatistics
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGUserStatistics)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGUserStatistics)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGUserStatistics

- (SUGSchemaSUGUserStatistics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = SUGSchemaSUGUserStatistics;
  v5 = [(SUGSchemaSUGUserStatistics *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"totalSiriRequests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SUGSchemaSUGAggregateCounts alloc] initWithDictionary:v6];
      [(SUGSchemaSUGUserStatistics *)v5 setTotalSiriRequests:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"totalPreviousSuggestionsShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SUGSchemaSUGAggregateCounts alloc] initWithDictionary:v8];
      [(SUGSchemaSUGUserStatistics *)v5 setTotalPreviousSuggestionsShown:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"totalSiriHelpRequests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SUGSchemaSUGAggregateCounts alloc] initWithDictionary:v10];
      [(SUGSchemaSUGUserStatistics *)v5 setTotalSiriHelpRequests:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"totalUniqueSiriEventTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SUGSchemaSUGAggregateCounts alloc] initWithDictionary:v12];
      [(SUGSchemaSUGUserStatistics *)v5 setTotalUniqueSiriEventTypes:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isTwoByThreeUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGUserStatistics setIsTwoByThreeUser:](v5, "setIsTwoByThreeUser:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (SUGSchemaSUGUserStatistics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGUserStatistics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGUserStatistics *)self dictionaryRepresentation];
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
  if (*(&self->_isTwoByThreeUser + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SUGSchemaSUGUserStatistics isTwoByThreeUser](self, "isTwoByThreeUser")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isTwoByThreeUser"];
  }

  if (self->_totalPreviousSuggestionsShown)
  {
    totalPreviousSuggestionsShown = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
    dictionaryRepresentation = [totalPreviousSuggestionsShown dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"totalPreviousSuggestionsShown"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"totalPreviousSuggestionsShown"];
    }
  }

  if (self->_totalSiriHelpRequests)
  {
    totalSiriHelpRequests = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
    dictionaryRepresentation2 = [totalSiriHelpRequests dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"totalSiriHelpRequests"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"totalSiriHelpRequests"];
    }
  }

  if (self->_totalSiriRequests)
  {
    totalSiriRequests = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
    dictionaryRepresentation3 = [totalSiriRequests dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"totalSiriRequests"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"totalSiriRequests"];
    }
  }

  if (self->_totalUniqueSiriEventTypes)
  {
    totalUniqueSiriEventTypes = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
    dictionaryRepresentation4 = [totalUniqueSiriEventTypes dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"totalUniqueSiriEventTypes"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"totalUniqueSiriEventTypes"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SUGSchemaSUGAggregateCounts *)self->_totalSiriRequests hash];
  v4 = [(SUGSchemaSUGAggregateCounts *)self->_totalPreviousSuggestionsShown hash];
  v5 = [(SUGSchemaSUGAggregateCounts *)self->_totalSiriHelpRequests hash];
  v6 = [(SUGSchemaSUGAggregateCounts *)self->_totalUniqueSiriEventTypes hash];
  if (*(&self->_isTwoByThreeUser + 1))
  {
    v7 = 2654435761 * self->_isTwoByThreeUser;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  totalSiriRequests = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
  totalSiriRequests2 = [equalCopy totalSiriRequests];
  if ((totalSiriRequests != 0) == (totalSiriRequests2 == 0))
  {
    goto LABEL_21;
  }

  totalSiriRequests3 = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
  if (totalSiriRequests3)
  {
    v8 = totalSiriRequests3;
    totalSiriRequests4 = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
    totalSiriRequests5 = [equalCopy totalSiriRequests];
    v11 = [totalSiriRequests4 isEqual:totalSiriRequests5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  totalSiriRequests = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
  totalSiriRequests2 = [equalCopy totalPreviousSuggestionsShown];
  if ((totalSiriRequests != 0) == (totalSiriRequests2 == 0))
  {
    goto LABEL_21;
  }

  totalPreviousSuggestionsShown = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
  if (totalPreviousSuggestionsShown)
  {
    v13 = totalPreviousSuggestionsShown;
    totalPreviousSuggestionsShown2 = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
    totalPreviousSuggestionsShown3 = [equalCopy totalPreviousSuggestionsShown];
    v16 = [totalPreviousSuggestionsShown2 isEqual:totalPreviousSuggestionsShown3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  totalSiriRequests = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
  totalSiriRequests2 = [equalCopy totalSiriHelpRequests];
  if ((totalSiriRequests != 0) == (totalSiriRequests2 == 0))
  {
    goto LABEL_21;
  }

  totalSiriHelpRequests = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
  if (totalSiriHelpRequests)
  {
    v18 = totalSiriHelpRequests;
    totalSiriHelpRequests2 = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
    totalSiriHelpRequests3 = [equalCopy totalSiriHelpRequests];
    v21 = [totalSiriHelpRequests2 isEqual:totalSiriHelpRequests3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  totalSiriRequests = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
  totalSiriRequests2 = [equalCopy totalUniqueSiriEventTypes];
  if ((totalSiriRequests != 0) == (totalSiriRequests2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  totalUniqueSiriEventTypes = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
  if (totalUniqueSiriEventTypes)
  {
    v23 = totalUniqueSiriEventTypes;
    totalUniqueSiriEventTypes2 = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
    totalUniqueSiriEventTypes3 = [equalCopy totalUniqueSiriEventTypes];
    v26 = [totalUniqueSiriEventTypes2 isEqual:totalUniqueSiriEventTypes3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if (*(&self->_isTwoByThreeUser + 1) == (equalCopy[41] & 1))
  {
    if (!*(&self->_isTwoByThreeUser + 1) || (isTwoByThreeUser = self->_isTwoByThreeUser, isTwoByThreeUser == [equalCopy isTwoByThreeUser]))
    {
      v27 = 1;
      goto LABEL_23;
    }
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  totalSiriRequests = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];

  if (totalSiriRequests)
  {
    totalSiriRequests2 = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
    PBDataWriterWriteSubmessage();
  }

  totalPreviousSuggestionsShown = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];

  if (totalPreviousSuggestionsShown)
  {
    totalPreviousSuggestionsShown2 = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
    PBDataWriterWriteSubmessage();
  }

  totalSiriHelpRequests = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];

  if (totalSiriHelpRequests)
  {
    totalSiriHelpRequests2 = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
    PBDataWriterWriteSubmessage();
  }

  totalUniqueSiriEventTypes = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];

  if (totalUniqueSiriEventTypes)
  {
    totalUniqueSiriEventTypes2 = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isTwoByThreeUser + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = SUGSchemaSUGUserStatistics;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  totalSiriRequests = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
  v7 = [totalSiriRequests applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SUGSchemaSUGUserStatistics *)self deleteTotalSiriRequests];
  }

  totalPreviousSuggestionsShown = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
  v10 = [totalPreviousSuggestionsShown applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SUGSchemaSUGUserStatistics *)self deleteTotalPreviousSuggestionsShown];
  }

  totalSiriHelpRequests = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
  v13 = [totalSiriHelpRequests applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SUGSchemaSUGUserStatistics *)self deleteTotalSiriHelpRequests];
  }

  totalUniqueSiriEventTypes = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
  v16 = [totalUniqueSiriEventTypes applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SUGSchemaSUGUserStatistics *)self deleteTotalUniqueSiriEventTypes];
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