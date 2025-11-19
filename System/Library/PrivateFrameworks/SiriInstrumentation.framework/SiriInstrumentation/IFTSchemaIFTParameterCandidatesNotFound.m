@interface IFTSchemaIFTParameterCandidatesNotFound
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTParameterCandidatesNotFound)initWithDictionary:(id)a3;
- (IFTSchemaIFTParameterCandidatesNotFound)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTParameterCandidatesNotFound

- (IFTSchemaIFTParameterCandidatesNotFound)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTParameterCandidatesNotFound;
  v5 = [(IFTSchemaIFTParameterCandidatesNotFound *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterCandidatesNotFound setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTParameterCandidatesNotFound *)v5 setParameterId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTTypedValue alloc] initWithDictionary:v9];
      [(IFTSchemaIFTParameterCandidatesNotFound *)v5 setValue:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameterCandidatesNotFound)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameterCandidatesNotFound *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTParameterCandidatesNotFound *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTParameterCandidatesNotFound exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_parameterId)
  {
    v5 = [(IFTSchemaIFTParameterCandidatesNotFound *)self parameterId];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"parameterId"];
  }

  if (self->_value)
  {
    v7 = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"value"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_parameterId hash]^ v3;
  return v4 ^ [(IFTSchemaIFTTypedValue *)self->_value hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_15;
    }
  }

  v6 = [(IFTSchemaIFTParameterCandidatesNotFound *)self parameterId];
  v7 = [v4 parameterId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(IFTSchemaIFTParameterCandidatesNotFound *)self parameterId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTParameterCandidatesNotFound *)self parameterId];
    v11 = [v4 parameterId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];
  v7 = [v4 value];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];
    v16 = [v4 value];
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
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTParameterCandidatesNotFound *)self parameterId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];

  v6 = v8;
  if (v5)
  {
    v7 = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTParameterCandidatesNotFound;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTParameterCandidatesNotFound *)self value:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(IFTSchemaIFTParameterCandidatesNotFound *)self deleteValue];
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