@interface NLXSchemaContextualSpanData
- (BOOL)isEqual:(id)equal;
- (NLXSchemaContextualSpanData)initWithDictionary:(id)dictionary;
- (NLXSchemaContextualSpanData)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaContextualSpanData

- (NLXSchemaContextualSpanData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = NLXSchemaContextualSpanData;
  v5 = [(NLXSchemaContextualSpanData *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isSurroundingTextMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaContextualSpanData setIsSurroundingTextMatched:](v5, "setIsSurroundingTextMatched:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (NLXSchemaContextualSpanData)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaContextualSpanData *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaContextualSpanData *)self dictionaryRepresentation];
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
  if (*(&self->_isSurroundingTextMatched + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaContextualSpanData isSurroundingTextMatched](self, "isSurroundingTextMatched")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isSurroundingTextMatched"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isSurroundingTextMatched + 1))
  {
    return 2654435761 * self->_isSurroundingTextMatched;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if (*(&self->_isSurroundingTextMatched + 1) == (equalCopy[9] & 1))
    {
      if (!*(&self->_isSurroundingTextMatched + 1) || (isSurroundingTextMatched = self->_isSurroundingTextMatched, isSurroundingTextMatched == [equalCopy isSurroundingTextMatched]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*(&self->_isSurroundingTextMatched + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end