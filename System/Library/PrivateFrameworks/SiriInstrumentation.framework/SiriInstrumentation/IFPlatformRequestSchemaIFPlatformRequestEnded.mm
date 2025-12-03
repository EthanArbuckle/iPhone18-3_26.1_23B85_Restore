@interface IFPlatformRequestSchemaIFPlatformRequestEnded
- (BOOL)isEqual:(id)equal;
- (IFPlatformRequestSchemaIFPlatformRequestEnded)initWithDictionary:(id)dictionary;
- (IFPlatformRequestSchemaIFPlatformRequestEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFPlatformRequestSchemaIFPlatformRequestEnded

- (IFPlatformRequestSchemaIFPlatformRequestEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFPlatformRequestSchemaIFPlatformRequestEnded;
  v5 = [(IFPlatformRequestSchemaIFPlatformRequestEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"handledError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(IFPlatformRequestSchemaIFPlatformRequestEnded *)v5 setHandledError:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFPlatformRequestSchemaIFPlatformRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFPlatformRequestSchemaIFPlatformRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFPlatformRequestSchemaIFPlatformRequestEnded *)self dictionaryRepresentation];
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
  if (self->_handledError)
  {
    handledError = [(IFPlatformRequestSchemaIFPlatformRequestEnded *)self handledError];
    dictionaryRepresentation = [handledError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"handledError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"handledError"];
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
    handledError = [(IFPlatformRequestSchemaIFPlatformRequestEnded *)self handledError];
    handledError2 = [equalCopy handledError];
    v7 = handledError2;
    if ((handledError != 0) != (handledError2 == 0))
    {
      handledError3 = [(IFPlatformRequestSchemaIFPlatformRequestEnded *)self handledError];
      if (!handledError3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = handledError3;
      handledError4 = [(IFPlatformRequestSchemaIFPlatformRequestEnded *)self handledError];
      handledError5 = [equalCopy handledError];
      v12 = [handledError4 isEqual:handledError5];

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
  handledError = [(IFPlatformRequestSchemaIFPlatformRequestEnded *)self handledError];

  if (handledError)
  {
    handledError2 = [(IFPlatformRequestSchemaIFPlatformRequestEnded *)self handledError];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFPlatformRequestSchemaIFPlatformRequestEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFPlatformRequestSchemaIFPlatformRequestEnded *)self handledError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFPlatformRequestSchemaIFPlatformRequestEnded *)self deleteHandledError];
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