@interface ORCHSchemaORCHPowerContextPolicyReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHPowerContextPolicyReported)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHPowerContextPolicyReported)initWithJSON:(id)n;
- (ORCHSchemaORCHVisionPowerState)visionPowerState;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteVisionPowerState;
- (void)setVisionPowerState:(id)state;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHPowerContextPolicyReported

- (ORCHSchemaORCHPowerContextPolicyReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ORCHSchemaORCHPowerContextPolicyReported;
  v5 = [(ORCHSchemaORCHPowerContextPolicyReported *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"powerContextPolicies"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHPowerContextPolicies alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHPowerContextPolicyReported *)v5 setPowerContextPolicies:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"visionPowerState"];
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

- (ORCHSchemaORCHPowerContextPolicyReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHPowerContextPolicyReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHPowerContextPolicyReported *)self dictionaryRepresentation];
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
  if (self->_powerContextPolicies)
  {
    powerContextPolicies = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
    dictionaryRepresentation = [powerContextPolicies dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"powerContextPolicies"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"powerContextPolicies"];
    }
  }

  if (self->_visionPowerState)
  {
    visionPowerState = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
    dictionaryRepresentation2 = [visionPowerState dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"visionPowerState"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"visionPowerState"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichPlatformspecificpowerstates = self->_whichPlatformspecificpowerstates;
  if (whichPlatformspecificpowerstates != [equalCopy whichPlatformspecificpowerstates])
  {
    goto LABEL_13;
  }

  powerContextPolicies = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
  powerContextPolicies2 = [equalCopy powerContextPolicies];
  if ((powerContextPolicies != 0) == (powerContextPolicies2 == 0))
  {
    goto LABEL_12;
  }

  powerContextPolicies3 = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
  if (powerContextPolicies3)
  {
    v9 = powerContextPolicies3;
    powerContextPolicies4 = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
    powerContextPolicies5 = [equalCopy powerContextPolicies];
    v12 = [powerContextPolicies4 isEqual:powerContextPolicies5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  powerContextPolicies = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
  powerContextPolicies2 = [equalCopy visionPowerState];
  if ((powerContextPolicies != 0) != (powerContextPolicies2 == 0))
  {
    visionPowerState = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
    if (!visionPowerState)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = visionPowerState;
    visionPowerState2 = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
    visionPowerState3 = [equalCopy visionPowerState];
    v17 = [visionPowerState2 isEqual:visionPowerState3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  powerContextPolicies = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];

  if (powerContextPolicies)
  {
    powerContextPolicies2 = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
    PBDataWriterWriteSubmessage();
  }

  visionPowerState = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];

  if (visionPowerState)
  {
    visionPowerState2 = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
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

- (void)setVisionPowerState:(id)state
{
  v3 = 101;
  if (!state)
  {
    v3 = 0;
  }

  self->_whichPlatformspecificpowerstates = v3;
  objc_storeStrong(&self->_visionPowerState, state);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ORCHSchemaORCHPowerContextPolicyReported;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  powerContextPolicies = [(ORCHSchemaORCHPowerContextPolicyReported *)self powerContextPolicies];
  v7 = [powerContextPolicies applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHPowerContextPolicyReported *)self deletePowerContextPolicies];
  }

  visionPowerState = [(ORCHSchemaORCHPowerContextPolicyReported *)self visionPowerState];
  v10 = [visionPowerState applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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