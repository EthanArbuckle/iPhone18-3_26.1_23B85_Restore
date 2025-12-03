@interface SISchemaUUFRCasinoCardSelected
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUUFRCasinoCardSelected)initWithDictionary:(id)dictionary;
- (SISchemaUUFRCasinoCardSelected)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUUFRCasinoCardSelected

- (SISchemaUUFRCasinoCardSelected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaUUFRCasinoCardSelected;
  v5 = [(SISchemaUUFRCasinoCardSelected *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cardSectionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaUUFRCasinoCardSelected *)v5 setCardSectionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ordinalCardSectionPosition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRCasinoCardSelected setOrdinalCardSectionPosition:](v5, "setOrdinalCardSectionPosition:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"snippetAceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SISchemaUUFRCasinoCardSelected *)v5 setSnippetAceId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaUUFRCasinoCardSelected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUUFRCasinoCardSelected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUUFRCasinoCardSelected *)self dictionaryRepresentation];
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
  if (self->_cardSectionId)
  {
    cardSectionId = [(SISchemaUUFRCasinoCardSelected *)self cardSectionId];
    v5 = [cardSectionId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"cardSectionId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaUUFRCasinoCardSelected ordinalCardSectionPosition](self, "ordinalCardSectionPosition")}];
    [dictionary setObject:v6 forKeyedSubscript:@"ordinalCardSectionPosition"];
  }

  if (self->_snippetAceId)
  {
    snippetAceId = [(SISchemaUUFRCasinoCardSelected *)self snippetAceId];
    v8 = [snippetAceId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"snippetAceId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_cardSectionId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_ordinalCardSectionPosition;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_snippetAceId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  cardSectionId = [(SISchemaUUFRCasinoCardSelected *)self cardSectionId];
  cardSectionId2 = [equalCopy cardSectionId];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_14;
  }

  cardSectionId3 = [(SISchemaUUFRCasinoCardSelected *)self cardSectionId];
  if (cardSectionId3)
  {
    v8 = cardSectionId3;
    cardSectionId4 = [(SISchemaUUFRCasinoCardSelected *)self cardSectionId];
    cardSectionId5 = [equalCopy cardSectionId];
    v11 = [cardSectionId4 isEqual:cardSectionId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    ordinalCardSectionPosition = self->_ordinalCardSectionPosition;
    if (ordinalCardSectionPosition != [equalCopy ordinalCardSectionPosition])
    {
      goto LABEL_15;
    }
  }

  cardSectionId = [(SISchemaUUFRCasinoCardSelected *)self snippetAceId];
  cardSectionId2 = [equalCopy snippetAceId];
  if ((cardSectionId != 0) != (cardSectionId2 == 0))
  {
    snippetAceId = [(SISchemaUUFRCasinoCardSelected *)self snippetAceId];
    if (!snippetAceId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = snippetAceId;
    snippetAceId2 = [(SISchemaUUFRCasinoCardSelected *)self snippetAceId];
    snippetAceId3 = [equalCopy snippetAceId];
    v17 = [snippetAceId2 isEqual:snippetAceId3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  cardSectionId = [(SISchemaUUFRCasinoCardSelected *)self cardSectionId];

  if (cardSectionId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  snippetAceId = [(SISchemaUUFRCasinoCardSelected *)self snippetAceId];

  v6 = toCopy;
  if (snippetAceId)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end