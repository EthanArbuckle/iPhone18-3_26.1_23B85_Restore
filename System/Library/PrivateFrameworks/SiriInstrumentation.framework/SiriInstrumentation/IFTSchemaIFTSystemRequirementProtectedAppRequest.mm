@interface IFTSchemaIFTSystemRequirementProtectedAppRequest
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTSystemRequirementProtectedAppRequest)initWithDictionary:(id)a3;
- (IFTSchemaIFTSystemRequirementProtectedAppRequest)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTSystemRequirementProtectedAppRequest

- (IFTSchemaIFTSystemRequirementProtectedAppRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTSystemRequirementProtectedAppRequest;
  v5 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)v5 setBundleId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemRequirementProtectedAppRequest)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    v4 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self bundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self bundleId];
    v6 = [v4 bundleId];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self bundleId];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self bundleId];
      v11 = [v4 bundleId];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self bundleId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v8.receiver = self;
  v8.super_class = IFTSchemaIFTSystemRequirementProtectedAppRequest;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:v4];
  v6 = [v4 isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self deleteBundleId];
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