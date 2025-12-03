@interface IFTSchemaIFTRecoverableError
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTPlanGenerationError)planGenerationError;
- (IFTSchemaIFTRecoverableError)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTRecoverableError)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deletePlanGenerationError;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTRecoverableError

- (IFTSchemaIFTRecoverableError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTRecoverableError;
  v5 = [(IFTSchemaIFTRecoverableError *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"planGenerationError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTPlanGenerationError alloc] initWithDictionary:v6];
      [(IFTSchemaIFTRecoverableError *)v5 setPlanGenerationError:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTRecoverableError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRecoverableError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTRecoverableError *)self dictionaryRepresentation];
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
  if (self->_planGenerationError)
  {
    planGenerationError = [(IFTSchemaIFTRecoverableError *)self planGenerationError];
    dictionaryRepresentation = [planGenerationError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"planGenerationError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"planGenerationError"];
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
    whichOneof_Recoverableerror = self->_whichOneof_Recoverableerror;
    if (whichOneof_Recoverableerror == [equalCopy whichOneof_Recoverableerror])
    {
      planGenerationError = [(IFTSchemaIFTRecoverableError *)self planGenerationError];
      planGenerationError2 = [equalCopy planGenerationError];
      v8 = planGenerationError2;
      if ((planGenerationError != 0) != (planGenerationError2 == 0))
      {
        planGenerationError3 = [(IFTSchemaIFTRecoverableError *)self planGenerationError];
        if (!planGenerationError3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = planGenerationError3;
        planGenerationError4 = [(IFTSchemaIFTRecoverableError *)self planGenerationError];
        planGenerationError5 = [equalCopy planGenerationError];
        v13 = [planGenerationError4 isEqual:planGenerationError5];

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
  planGenerationError = [(IFTSchemaIFTRecoverableError *)self planGenerationError];

  if (planGenerationError)
  {
    planGenerationError2 = [(IFTSchemaIFTRecoverableError *)self planGenerationError];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deletePlanGenerationError
{
  if (self->_whichOneof_Recoverableerror == 1)
  {
    self->_whichOneof_Recoverableerror = 0;
    self->_planGenerationError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPlanGenerationError)planGenerationError
{
  if (self->_whichOneof_Recoverableerror == 1)
  {
    v3 = self->_planGenerationError;
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
  v9.super_class = IFTSchemaIFTRecoverableError;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTRecoverableError *)self planGenerationError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTRecoverableError *)self deletePlanGenerationError];
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