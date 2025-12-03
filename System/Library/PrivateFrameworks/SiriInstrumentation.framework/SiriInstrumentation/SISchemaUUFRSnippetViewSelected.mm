@interface SISchemaUUFRSnippetViewSelected
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUUFRSnippetViewSelected)initWithDictionary:(id)dictionary;
- (SISchemaUUFRSnippetViewSelected)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUUFRSnippetViewSelected

- (SISchemaUUFRSnippetViewSelected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaUUFRSnippetViewSelected;
  v5 = [(SISchemaUUFRSnippetViewSelected *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"snippetAceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaUUFRSnippetViewSelected *)v5 setSnippetAceId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaUUFRSnippetViewSelected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUUFRSnippetViewSelected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUUFRSnippetViewSelected *)self dictionaryRepresentation];
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
  if (self->_snippetAceId)
  {
    snippetAceId = [(SISchemaUUFRSnippetViewSelected *)self snippetAceId];
    v5 = [snippetAceId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"snippetAceId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    snippetAceId = [(SISchemaUUFRSnippetViewSelected *)self snippetAceId];
    snippetAceId2 = [equalCopy snippetAceId];
    v7 = snippetAceId2;
    if ((snippetAceId != 0) != (snippetAceId2 == 0))
    {
      snippetAceId3 = [(SISchemaUUFRSnippetViewSelected *)self snippetAceId];
      if (!snippetAceId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = snippetAceId3;
      snippetAceId4 = [(SISchemaUUFRSnippetViewSelected *)self snippetAceId];
      snippetAceId5 = [equalCopy snippetAceId];
      v12 = [snippetAceId4 isEqual:snippetAceId5];

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
  snippetAceId = [(SISchemaUUFRSnippetViewSelected *)self snippetAceId];

  if (snippetAceId)
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