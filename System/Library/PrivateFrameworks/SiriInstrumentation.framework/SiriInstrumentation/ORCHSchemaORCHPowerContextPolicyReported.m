@interface ORCHSchemaORCHPowerContextPolicyReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHPowerContextPolicyReported)initWithDictionary:(id)a3;
- (ORCHSchemaORCHPowerContextPolicyReported)initWithJSON:(id)a3;
- (ORCHSchemaORCHVisionPowerState)visionPowerState;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteVisionPowerState;
- (void)setVisionPowerState:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHPowerContextPolicyReported

- (ORCHSchemaORCHPowerContextPolicyReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ORCHSchemaORCHPowerContextPolicyReported;
  v5 = [(ORCHSchemaORCHPowerContextPolicyReported *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"powerContextPolicies"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHPowerContextPolicies alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHPowerContextPolicyReported *)v5 setPowerContextPolicies:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"visionPowerState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHVisionPowerState alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHPowerContextPolicyReported *)v5 setVisionPowerState:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHPowerContextPolicyReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHPowerContextPolicyReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHPowerContextPolicyReported *)self dictionaryRepresentation];
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
  if (self->_powerContextPolicies)
  {
    v4 = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"powerContextPolicies"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"powerContextPolicies"];
    }
  }

  if (self->_visionPowerState)
  {
    v7 = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"visionPowerState"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"visionPowerState"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichPlatformspecificpowerstates = self->_whichPlatformspecificpowerstates;
  if (whichPlatformspecificpowerstates != [v4 whichPlatformspecificpowerstates])
  {
    goto LABEL_13;
  }

  v6 = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
  v7 = [v4 powerContextPolicies];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
  if (v8)
  {
    v9 = v8;
    v10 = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
    v11 = [v4 powerContextPolicies];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
  v7 = [v4 visionPowerState];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
    v16 = [v4 visionPowerState];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];

  if (v6)
  {
    v7 = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteVisionPowerState
{
  if (self->_whichPlatformspecificpowerstates == 101)
  {
    self->_whichPlatformspecificpowerstates = 0;
    self->_visionPowerState = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHVisionPowerState)visionPowerState
{
  if (self->_whichPlatformspecificpowerstates == 101)
  {
    v3 = self->_visionPowerState;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVisionPowerState:(id)a3
{
  v3 = 101;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichPlatformspecificpowerstates = v3;
  objc_storeStrong(&self->_visionPowerState, a3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ORCHSchemaORCHPowerContextPolicyReported;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHPowerContextPolicyReported *)self deletePowerContextPolicies];
  }

  v9 = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ORCHSchemaORCHPowerContextPolicyReported *)self deleteVisionPowerState];
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