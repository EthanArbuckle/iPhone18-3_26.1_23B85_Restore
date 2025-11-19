@interface NLXSchemaCDMRequestStarted
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMRequestStarted)initWithDictionary:(id)a3;
- (NLXSchemaCDMRequestStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMRequestStarted

- (NLXSchemaCDMRequestStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMRequestStarted;
  v5 = [(NLXSchemaCDMRequestStarted *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"currentTurnInput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaCDMTurnInput alloc] initWithDictionary:v6];
      [(NLXSchemaCDMRequestStarted *)v5 setCurrentTurnInput:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"serviceGraphName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMRequestStarted setServiceGraphName:](v5, "setServiceGraphName:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(NLXSchemaCDMRequestStarted *)v5 setLoggableSharedUserId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (NLXSchemaCDMRequestStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMRequestStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMRequestStarted *)self dictionaryRepresentation];
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
  if (self->_currentTurnInput)
  {
    v4 = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"currentTurnInput"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"currentTurnInput"];
    }
  }

  if (self->_loggableSharedUserId)
  {
    v7 = [(NLXSchemaCDMRequestStarted *)self loggableSharedUserId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (*&self->_has)
  {
    v9 = [(NLXSchemaCDMRequestStarted *)self serviceGraphName]- 1;
    if (v9 > 6)
    {
      v10 = @"CDMSERVICEGRAPHNAME_UNKNOWN";
    }

    else
    {
      v10 = off_1E78DBA30[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"serviceGraphName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NLXSchemaCDMTurnInput *)self->_currentTurnInput hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_serviceGraphName;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_loggableSharedUserId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
  v6 = [v4 currentTurnInput];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
    v10 = [v4 currentTurnInput];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    serviceGraphName = self->_serviceGraphName;
    if (serviceGraphName != [v4 serviceGraphName])
    {
      goto LABEL_15;
    }
  }

  v5 = [(NLXSchemaCDMRequestStarted *)self loggableSharedUserId];
  v6 = [v4 loggableSharedUserId];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(NLXSchemaCDMRequestStarted *)self loggableSharedUserId];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(NLXSchemaCDMRequestStarted *)self loggableSharedUserId];
    v16 = [v4 loggableSharedUserId];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];

  if (v4)
  {
    v5 = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(NLXSchemaCDMRequestStarted *)self loggableSharedUserId];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMRequestStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(NLXSchemaCDMRequestStarted *)self deleteLoggableSharedUserId];
  }

  v6 = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMRequestStarted *)self deleteCurrentTurnInput];
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