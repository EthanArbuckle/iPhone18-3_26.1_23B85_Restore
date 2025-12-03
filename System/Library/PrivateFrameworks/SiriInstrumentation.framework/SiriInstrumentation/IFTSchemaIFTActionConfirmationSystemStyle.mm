@interface IFTSchemaIFTActionConfirmationSystemStyle
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTActionConfirmationSystemStyle)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTActionConfirmationSystemStyle)initWithJSON:(id)n;
- (IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement)generativeAIEnablement;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteGenerativeAIEnablement;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTActionConfirmationSystemStyle

- (IFTSchemaIFTActionConfirmationSystemStyle)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTActionConfirmationSystemStyle;
  v5 = [(IFTSchemaIFTActionConfirmationSystemStyle *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"generativeAIEnablement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement alloc] initWithDictionary:v6];
      [(IFTSchemaIFTActionConfirmationSystemStyle *)v5 setGenerativeAIEnablement:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionConfirmationSystemStyle)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionConfirmationSystemStyle *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTActionConfirmationSystemStyle *)self dictionaryRepresentation];
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
  if (self->_generativeAIEnablement)
  {
    generativeAIEnablement = [(IFTSchemaIFTActionConfirmationSystemStyle *)self generativeAIEnablement];
    dictionaryRepresentation = [generativeAIEnablement dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"generativeAIEnablement"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"generativeAIEnablement"];
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
    whichOneof_Actionconfirmationsystemstyle = self->_whichOneof_Actionconfirmationsystemstyle;
    if (whichOneof_Actionconfirmationsystemstyle == [equalCopy whichOneof_Actionconfirmationsystemstyle])
    {
      generativeAIEnablement = [(IFTSchemaIFTActionConfirmationSystemStyle *)self generativeAIEnablement];
      generativeAIEnablement2 = [equalCopy generativeAIEnablement];
      v8 = generativeAIEnablement2;
      if ((generativeAIEnablement != 0) != (generativeAIEnablement2 == 0))
      {
        generativeAIEnablement3 = [(IFTSchemaIFTActionConfirmationSystemStyle *)self generativeAIEnablement];
        if (!generativeAIEnablement3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = generativeAIEnablement3;
        generativeAIEnablement4 = [(IFTSchemaIFTActionConfirmationSystemStyle *)self generativeAIEnablement];
        generativeAIEnablement5 = [equalCopy generativeAIEnablement];
        v13 = [generativeAIEnablement4 isEqual:generativeAIEnablement5];

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
  generativeAIEnablement = [(IFTSchemaIFTActionConfirmationSystemStyle *)self generativeAIEnablement];

  if (generativeAIEnablement)
  {
    generativeAIEnablement2 = [(IFTSchemaIFTActionConfirmationSystemStyle *)self generativeAIEnablement];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteGenerativeAIEnablement
{
  if (self->_whichOneof_Actionconfirmationsystemstyle == 1)
  {
    self->_whichOneof_Actionconfirmationsystemstyle = 0;
    self->_generativeAIEnablement = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement)generativeAIEnablement
{
  if (self->_whichOneof_Actionconfirmationsystemstyle == 1)
  {
    v3 = self->_generativeAIEnablement;
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
  v9.super_class = IFTSchemaIFTActionConfirmationSystemStyle;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTActionConfirmationSystemStyle *)self generativeAIEnablement:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTActionConfirmationSystemStyle *)self deleteGenerativeAIEnablement];
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