@interface IFTSchemaIFTSessionStart
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTSessionStart)initWithDictionary:(id)a3;
- (IFTSchemaIFTSessionStart)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTSessionStart

- (IFTSchemaIFTSessionStart)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTSessionStart;
  v5 = [(IFTSchemaIFTSessionStart *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originatingDeviceWasLocal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSessionStart setOriginatingDeviceWasLocal:](v5, "setOriginatingDeviceWasLocal:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSessionStart)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSessionStart *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTSessionStart *)self dictionaryRepresentation];
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
  if (*(&self->_originatingDeviceWasLocal + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSessionStart originatingDeviceWasLocal](self, "originatingDeviceWasLocal")}];
    [v3 setObject:v4 forKeyedSubscript:@"originatingDeviceWasLocal"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_originatingDeviceWasLocal + 1))
  {
    return 2654435761 * self->_originatingDeviceWasLocal;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if (*(&self->_originatingDeviceWasLocal + 1) == (v4[9] & 1))
    {
      if (!*(&self->_originatingDeviceWasLocal + 1) || (originatingDeviceWasLocal = self->_originatingDeviceWasLocal, originatingDeviceWasLocal == [v4 originatingDeviceWasLocal]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (*(&self->_originatingDeviceWasLocal + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end