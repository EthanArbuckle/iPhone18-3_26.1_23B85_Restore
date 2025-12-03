@interface IFPlatformRequestSchemaIFPlatformRequestFailed
- (BOOL)isEqual:(id)equal;
- (IFPlatformRequestSchemaIFPlatformRequestFailed)initWithDictionary:(id)dictionary;
- (IFPlatformRequestSchemaIFPlatformRequestFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFPlatformRequestSchemaIFPlatformRequestFailed

- (IFPlatformRequestSchemaIFPlatformRequestFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFPlatformRequestSchemaIFPlatformRequestFailed;
  v5 = [(IFPlatformRequestSchemaIFPlatformRequestFailed *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"criticalError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(IFPlatformRequestSchemaIFPlatformRequestFailed *)v5 setCriticalError:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFPlatformRequestSchemaIFPlatformRequestFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFPlatformRequestSchemaIFPlatformRequestFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFPlatformRequestSchemaIFPlatformRequestFailed *)self dictionaryRepresentation];
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
  if (self->_criticalError)
  {
    criticalError = [(IFPlatformRequestSchemaIFPlatformRequestFailed *)self criticalError];
    dictionaryRepresentation = [criticalError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"criticalError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"criticalError"];
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
    criticalError = [(IFPlatformRequestSchemaIFPlatformRequestFailed *)self criticalError];
    criticalError2 = [equalCopy criticalError];
    v7 = criticalError2;
    if ((criticalError != 0) != (criticalError2 == 0))
    {
      criticalError3 = [(IFPlatformRequestSchemaIFPlatformRequestFailed *)self criticalError];
      if (!criticalError3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = criticalError3;
      criticalError4 = [(IFPlatformRequestSchemaIFPlatformRequestFailed *)self criticalError];
      criticalError5 = [equalCopy criticalError];
      v12 = [criticalError4 isEqual:criticalError5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  criticalError = [(IFPlatformRequestSchemaIFPlatformRequestFailed *)self criticalError];

  if (criticalError)
  {
    criticalError2 = [(IFPlatformRequestSchemaIFPlatformRequestFailed *)self criticalError];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFPlatformRequestSchemaIFPlatformRequestFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFPlatformRequestSchemaIFPlatformRequestFailed *)self criticalError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFPlatformRequestSchemaIFPlatformRequestFailed *)self deleteCriticalError];
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