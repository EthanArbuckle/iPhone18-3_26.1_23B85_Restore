@interface SISchemaTextToSpeechEnd
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaTextToSpeechEnd)initWithDictionary:(id)dictionary;
- (SISchemaTextToSpeechEnd)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaTextToSpeechEnd

- (SISchemaTextToSpeechEnd)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaTextToSpeechEnd;
  v5 = [(SISchemaTextToSpeechEnd *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"aceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaTextToSpeechEnd *)v5 setAceID:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaTextToSpeechEnd)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaTextToSpeechEnd *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaTextToSpeechEnd *)self dictionaryRepresentation];
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
  if (self->_aceID)
  {
    aceID = [(SISchemaTextToSpeechEnd *)self aceID];
    v5 = [aceID copy];
    [dictionary setObject:v5 forKeyedSubscript:@"aceID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    aceID = [(SISchemaTextToSpeechEnd *)self aceID];
    aceID2 = [equalCopy aceID];
    v7 = aceID2;
    if ((aceID != 0) != (aceID2 == 0))
    {
      aceID3 = [(SISchemaTextToSpeechEnd *)self aceID];
      if (!aceID3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = aceID3;
      aceID4 = [(SISchemaTextToSpeechEnd *)self aceID];
      aceID5 = [equalCopy aceID];
      v12 = [aceID4 isEqual:aceID5];

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
  aceID = [(SISchemaTextToSpeechEnd *)self aceID];

  if (aceID)
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