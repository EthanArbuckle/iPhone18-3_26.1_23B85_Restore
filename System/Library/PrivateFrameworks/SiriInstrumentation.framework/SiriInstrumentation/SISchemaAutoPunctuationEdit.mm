@interface SISchemaAutoPunctuationEdit
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaAutoPunctuationEdit)initWithDictionary:(id)dictionary;
- (SISchemaAutoPunctuationEdit)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaAutoPunctuationEdit

- (SISchemaAutoPunctuationEdit)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaAutoPunctuationEdit;
  v5 = [(SISchemaAutoPunctuationEdit *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"recognizedPunctuation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaAutoPunctuationEdit *)v5 setRecognizedPunctuation:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"correctedPunctuation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaAutoPunctuationEdit *)v5 setCorrectedPunctuation:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaAutoPunctuationEdit)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaAutoPunctuationEdit *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaAutoPunctuationEdit *)self dictionaryRepresentation];
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
  if (self->_correctedPunctuation)
  {
    correctedPunctuation = [(SISchemaAutoPunctuationEdit *)self correctedPunctuation];
    v5 = [correctedPunctuation copy];
    [dictionary setObject:v5 forKeyedSubscript:@"correctedPunctuation"];
  }

  if (self->_recognizedPunctuation)
  {
    recognizedPunctuation = [(SISchemaAutoPunctuationEdit *)self recognizedPunctuation];
    v7 = [recognizedPunctuation copy];
    [dictionary setObject:v7 forKeyedSubscript:@"recognizedPunctuation"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  recognizedPunctuation = [(SISchemaAutoPunctuationEdit *)self recognizedPunctuation];
  recognizedPunctuation2 = [equalCopy recognizedPunctuation];
  if ((recognizedPunctuation != 0) == (recognizedPunctuation2 == 0))
  {
    goto LABEL_11;
  }

  recognizedPunctuation3 = [(SISchemaAutoPunctuationEdit *)self recognizedPunctuation];
  if (recognizedPunctuation3)
  {
    v8 = recognizedPunctuation3;
    recognizedPunctuation4 = [(SISchemaAutoPunctuationEdit *)self recognizedPunctuation];
    recognizedPunctuation5 = [equalCopy recognizedPunctuation];
    v11 = [recognizedPunctuation4 isEqual:recognizedPunctuation5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  recognizedPunctuation = [(SISchemaAutoPunctuationEdit *)self correctedPunctuation];
  recognizedPunctuation2 = [equalCopy correctedPunctuation];
  if ((recognizedPunctuation != 0) != (recognizedPunctuation2 == 0))
  {
    correctedPunctuation = [(SISchemaAutoPunctuationEdit *)self correctedPunctuation];
    if (!correctedPunctuation)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = correctedPunctuation;
    correctedPunctuation2 = [(SISchemaAutoPunctuationEdit *)self correctedPunctuation];
    correctedPunctuation3 = [equalCopy correctedPunctuation];
    v16 = [correctedPunctuation2 isEqual:correctedPunctuation3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  recognizedPunctuation = [(SISchemaAutoPunctuationEdit *)self recognizedPunctuation];

  if (recognizedPunctuation)
  {
    PBDataWriterWriteStringField();
  }

  correctedPunctuation = [(SISchemaAutoPunctuationEdit *)self correctedPunctuation];

  if (correctedPunctuation)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end