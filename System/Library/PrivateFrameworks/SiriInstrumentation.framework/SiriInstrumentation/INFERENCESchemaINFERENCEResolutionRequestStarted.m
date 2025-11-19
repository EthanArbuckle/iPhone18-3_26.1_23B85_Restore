@interface INFERENCESchemaINFERENCEResolutionRequestStarted
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEResolutionRequestStarted)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEResolutionRequestStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEResolutionRequestStarted

- (INFERENCESchemaINFERENCEResolutionRequestStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = INFERENCESchemaINFERENCEResolutionRequestStarted;
  v5 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"slotType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEResolutionRequestStarted setSlotType:](v5, "setSlotType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"resolverConfig"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[INFERENCESchemaINFERENCEResolverConfig alloc] initWithDictionary:v7];
      [(INFERENCESchemaINFERENCEResolutionRequestStarted *)v5 setResolverConfig:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEResolutionRequestStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self dictionaryRepresentation];
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
  if (self->_resolverConfig)
  {
    v4 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"resolverConfig"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"resolverConfig"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self slotType]- 1;
    if (v7 > 3)
    {
      v8 = @"INFERENCESLOTTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D8B30[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"slotType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_slotType;
  }

  else
  {
    v2 = 0;
  }

  return [(INFERENCESchemaINFERENCEResolverConfig *)self->_resolverConfig hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (slotType = self->_slotType, slotType == [v4 slotType]))
      {
        v6 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];
        v7 = [v4 resolverConfig];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];
          v12 = [v4 resolverConfig];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];

  v5 = v7;
  if (v4)
  {
    v6 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];
    PBDataWriterWriteSubmessage();

    v5 = v7;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEResolutionRequestStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self deleteResolverConfig];
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