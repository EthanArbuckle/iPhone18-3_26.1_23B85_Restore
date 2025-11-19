@interface SUGSchemaSUGUserStatistics
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SUGSchemaSUGUserStatistics)initWithDictionary:(id)a3;
- (SUGSchemaSUGUserStatistics)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SUGSchemaSUGUserStatistics

- (SUGSchemaSUGUserStatistics)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SUGSchemaSUGUserStatistics;
  v5 = [(SUGSchemaSUGUserStatistics *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"totalSiriRequests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SUGSchemaSUGAggregateCounts alloc] initWithDictionary:v6];
      [(SUGSchemaSUGUserStatistics *)v5 setTotalSiriRequests:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"totalPreviousSuggestionsShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SUGSchemaSUGAggregateCounts alloc] initWithDictionary:v8];
      [(SUGSchemaSUGUserStatistics *)v5 setTotalPreviousSuggestionsShown:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"totalSiriHelpRequests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SUGSchemaSUGAggregateCounts alloc] initWithDictionary:v10];
      [(SUGSchemaSUGUserStatistics *)v5 setTotalSiriHelpRequests:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"totalUniqueSiriEventTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SUGSchemaSUGAggregateCounts alloc] initWithDictionary:v12];
      [(SUGSchemaSUGUserStatistics *)v5 setTotalUniqueSiriEventTypes:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"isTwoByThreeUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGUserStatistics setIsTwoByThreeUser:](v5, "setIsTwoByThreeUser:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (SUGSchemaSUGUserStatistics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUGSchemaSUGUserStatistics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUGSchemaSUGUserStatistics *)self dictionaryRepresentation];
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
  if (*(&self->_isTwoByThreeUser + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SUGSchemaSUGUserStatistics isTwoByThreeUser](self, "isTwoByThreeUser")}];
    [v3 setObject:v4 forKeyedSubscript:@"isTwoByThreeUser"];
  }

  if (self->_totalPreviousSuggestionsShown)
  {
    v5 = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"totalPreviousSuggestionsShown"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"totalPreviousSuggestionsShown"];
    }
  }

  if (self->_totalSiriHelpRequests)
  {
    v8 = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"totalSiriHelpRequests"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"totalSiriHelpRequests"];
    }
  }

  if (self->_totalSiriRequests)
  {
    v11 = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"totalSiriRequests"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"totalSiriRequests"];
    }
  }

  if (self->_totalUniqueSiriEventTypes)
  {
    v14 = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"totalUniqueSiriEventTypes"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"totalUniqueSiriEventTypes"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
  v6 = [v4 totalSiriRequests];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
  if (v7)
  {
    v8 = v7;
    v9 = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
    v10 = [v4 totalSiriRequests];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
  v6 = [v4 totalPreviousSuggestionsShown];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
  if (v12)
  {
    v13 = v12;
    v14 = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
    v15 = [v4 totalPreviousSuggestionsShown];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
  v6 = [v4 totalSiriHelpRequests];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
  if (v17)
  {
    v18 = v17;
    v19 = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
    v20 = [v4 totalSiriHelpRequests];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
  v6 = [v4 totalUniqueSiriEventTypes];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
  if (v22)
  {
    v23 = v22;
    v24 = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
    v25 = [v4 totalUniqueSiriEventTypes];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if (*(&self->_isTwoByThreeUser + 1) == (v4[41] & 1))
  {
    if (!*(&self->_isTwoByThreeUser + 1) || (isTwoByThreeUser = self->_isTwoByThreeUser, isTwoByThreeUser == [v4 isTwoByThreeUser]))
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

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];

  if (v4)
  {
    v5 = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];

  if (v6)
  {
    v7 = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];

  if (v8)
  {
    v9 = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];

  if (v10)
  {
    v11 = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isTwoByThreeUser + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUGSchemaSUGUserStatistics;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(SUGSchemaSUGUserStatistics *)self totalSiriRequests];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SUGSchemaSUGUserStatistics *)self deleteTotalSiriRequests];
  }

  v9 = [(SUGSchemaSUGUserStatistics *)self totalPreviousSuggestionsShown];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SUGSchemaSUGUserStatistics *)self deleteTotalPreviousSuggestionsShown];
  }

  v12 = [(SUGSchemaSUGUserStatistics *)self totalSiriHelpRequests];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SUGSchemaSUGUserStatistics *)self deleteTotalSiriHelpRequests];
  }

  v15 = [(SUGSchemaSUGUserStatistics *)self totalUniqueSiriEventTypes];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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