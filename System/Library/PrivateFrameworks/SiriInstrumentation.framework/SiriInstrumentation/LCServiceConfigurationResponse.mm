@interface LCServiceConfigurationResponse
- (BOOL)isEqual:(id)equal;
- (LCServiceConfigurationResponse)initWithDictionary:(id)dictionary;
- (LCServiceConfigurationResponse)initWithJSON:(id)n;
- (LCServiceLoggingConfiguration)configuration;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteConfiguration;
- (void)writeTo:(id)to;
@end

@implementation LCServiceConfigurationResponse

- (LCServiceConfigurationResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = LCServiceConfigurationResponse;
  v5 = [(LCServiceConfigurationResponse *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"configuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LCServiceLoggingConfiguration alloc] initWithDictionary:v6];
      [(LCServiceConfigurationResponse *)v5 setConfiguration:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (LCServiceConfigurationResponse)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LCServiceConfigurationResponse *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LCServiceConfigurationResponse *)self dictionaryRepresentation];
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
  if (self->_configuration)
  {
    configuration = [(LCServiceConfigurationResponse *)self configuration];
    dictionaryRepresentation = [configuration dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"configuration"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"configuration"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    whichResponse = self->_whichResponse;
    if (whichResponse == [equalCopy whichResponse])
    {
      configuration = [(LCServiceConfigurationResponse *)self configuration];
      configuration2 = [equalCopy configuration];
      v8 = configuration2;
      if ((configuration != 0) != (configuration2 == 0))
      {
        configuration3 = [(LCServiceConfigurationResponse *)self configuration];
        if (!configuration3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = configuration3;
        configuration4 = [(LCServiceConfigurationResponse *)self configuration];
        configuration5 = [equalCopy configuration];
        v13 = [configuration4 isEqual:configuration5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  configuration = [(LCServiceConfigurationResponse *)self configuration];

  if (configuration)
  {
    configuration2 = [(LCServiceConfigurationResponse *)self configuration];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteConfiguration
{
  if (self->_whichResponse == 1)
  {
    self->_whichResponse = 0;
    self->_configuration = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LCServiceLoggingConfiguration)configuration
{
  if (self->_whichResponse == 1)
  {
    v3 = self->_configuration;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = LCServiceConfigurationResponse;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(LCServiceConfigurationResponse *)self configuration:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(LCServiceConfigurationResponse *)self deleteConfiguration];
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