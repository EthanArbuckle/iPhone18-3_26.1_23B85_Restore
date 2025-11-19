@interface IFTSchemaIFTParameterNeedsValue
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTParameterNeedsValue)initWithDictionary:(id)a3;
- (IFTSchemaIFTParameterNeedsValue)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTParameterNeedsValue

- (IFTSchemaIFTParameterNeedsValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTParameterNeedsValue;
  v5 = [(IFTSchemaIFTParameterNeedsValue *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterNeedsValue setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTParameterNeedsValue *)v5 setParameterId:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameterNeedsValue)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameterNeedsValue *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTParameterNeedsValue *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTParameterNeedsValue exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_parameterId)
  {
    v5 = [(IFTSchemaIFTParameterNeedsValue *)self parameterId];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"parameterId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_exists;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_parameterId hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (exists = self->_exists, exists == [v4 exists]))
      {
        v6 = [(IFTSchemaIFTParameterNeedsValue *)self parameterId];
        v7 = [v4 parameterId];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(IFTSchemaIFTParameterNeedsValue *)self parameterId];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(IFTSchemaIFTParameterNeedsValue *)self parameterId];
          v12 = [v4 parameterId];
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
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTParameterNeedsValue *)self parameterId];

  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end