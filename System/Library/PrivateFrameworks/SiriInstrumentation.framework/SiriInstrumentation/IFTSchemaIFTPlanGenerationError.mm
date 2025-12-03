@interface IFTSchemaIFTPlanGenerationError
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTPlanGenerationError)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTPlanGenerationError)initWithJSON:(id)n;
- (IFTSchemaIFTPlanGenerationModelOutputError)planGenerationModelOutputError;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deletePlanGenerationModelOutputError;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTPlanGenerationError

- (IFTSchemaIFTPlanGenerationError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTPlanGenerationError;
  v5 = [(IFTSchemaIFTPlanGenerationError *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"planGenerationModelOutputError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTPlanGenerationModelOutputError alloc] initWithDictionary:v6];
      [(IFTSchemaIFTPlanGenerationError *)v5 setPlanGenerationModelOutputError:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTPlanGenerationError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTPlanGenerationError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTPlanGenerationError *)self dictionaryRepresentation];
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
  if (self->_planGenerationModelOutputError)
  {
    planGenerationModelOutputError = [(IFTSchemaIFTPlanGenerationError *)self planGenerationModelOutputError];
    dictionaryRepresentation = [planGenerationModelOutputError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"planGenerationModelOutputError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"planGenerationModelOutputError"];
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
    whichOneof_Plangenerationerror = self->_whichOneof_Plangenerationerror;
    if (whichOneof_Plangenerationerror == [equalCopy whichOneof_Plangenerationerror])
    {
      planGenerationModelOutputError = [(IFTSchemaIFTPlanGenerationError *)self planGenerationModelOutputError];
      planGenerationModelOutputError2 = [equalCopy planGenerationModelOutputError];
      v8 = planGenerationModelOutputError2;
      if ((planGenerationModelOutputError != 0) != (planGenerationModelOutputError2 == 0))
      {
        planGenerationModelOutputError3 = [(IFTSchemaIFTPlanGenerationError *)self planGenerationModelOutputError];
        if (!planGenerationModelOutputError3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = planGenerationModelOutputError3;
        planGenerationModelOutputError4 = [(IFTSchemaIFTPlanGenerationError *)self planGenerationModelOutputError];
        planGenerationModelOutputError5 = [equalCopy planGenerationModelOutputError];
        v13 = [planGenerationModelOutputError4 isEqual:planGenerationModelOutputError5];

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
  planGenerationModelOutputError = [(IFTSchemaIFTPlanGenerationError *)self planGenerationModelOutputError];

  if (planGenerationModelOutputError)
  {
    planGenerationModelOutputError2 = [(IFTSchemaIFTPlanGenerationError *)self planGenerationModelOutputError];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deletePlanGenerationModelOutputError
{
  if (self->_whichOneof_Plangenerationerror == 1)
  {
    self->_whichOneof_Plangenerationerror = 0;
    self->_planGenerationModelOutputError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPlanGenerationModelOutputError)planGenerationModelOutputError
{
  if (self->_whichOneof_Plangenerationerror == 1)
  {
    v3 = self->_planGenerationModelOutputError;
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
  v9.super_class = IFTSchemaIFTPlanGenerationError;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTPlanGenerationError *)self planGenerationModelOutputError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTPlanGenerationError *)self deletePlanGenerationModelOutputError];
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