@interface PLUSSchemaPLUSMediaConfiguredState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaConfiguredState)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSMediaConfiguredState)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSMediaConfiguredState

- (PLUSSchemaPLUSMediaConfiguredState)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSMediaConfiguredState;
  v5 = [(PLUSSchemaPLUSMediaConfiguredState *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"shadowLogging"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaConfiguredState setShadowLogging:](v5, "setShadowLogging:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSMediaConfiguredState)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaConfiguredState *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSMediaConfiguredState *)self dictionaryRepresentation];
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
  if (*(&self->_shadowLogging + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSMediaConfiguredState shadowLogging](self, "shadowLogging")}];
    [v3 setObject:v4 forKeyedSubscript:@"shadowLogging"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_shadowLogging + 1))
  {
    return 2654435761 * self->_shadowLogging;
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
    if (*(&self->_shadowLogging + 1) == (v4[9] & 1))
    {
      if (!*(&self->_shadowLogging + 1) || (shadowLogging = self->_shadowLogging, shadowLogging == [v4 shadowLogging]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (*(&self->_shadowLogging + 1))
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