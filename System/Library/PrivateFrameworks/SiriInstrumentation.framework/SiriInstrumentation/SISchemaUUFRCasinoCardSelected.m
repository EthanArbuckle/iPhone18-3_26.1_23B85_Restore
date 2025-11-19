@interface SISchemaUUFRCasinoCardSelected
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUUFRCasinoCardSelected)initWithDictionary:(id)a3;
- (SISchemaUUFRCasinoCardSelected)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUUFRCasinoCardSelected

- (SISchemaUUFRCasinoCardSelected)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaUUFRCasinoCardSelected;
  v5 = [(SISchemaUUFRCasinoCardSelected *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"cardSectionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaUUFRCasinoCardSelected *)v5 setCardSectionId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ordinalCardSectionPosition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRCasinoCardSelected setOrdinalCardSectionPosition:](v5, "setOrdinalCardSectionPosition:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"snippetAceId"];
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

- (SISchemaUUFRCasinoCardSelected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUUFRCasinoCardSelected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUUFRCasinoCardSelected *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_cardSectionId)
  {
    v4 = [(SISchemaUUFRCasinoCardSelected *)self cardSectionId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"cardSectionId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaUUFRCasinoCardSelected ordinalCardSectionPosition](self, "ordinalCardSectionPosition")}];
    [v3 setObject:v6 forKeyedSubscript:@"ordinalCardSectionPosition"];
  }

  if (self->_snippetAceId)
  {
    v7 = [(SISchemaUUFRCasinoCardSelected *)self snippetAceId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"snippetAceId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(SISchemaUUFRCasinoCardSelected *)self cardSectionId];
  v6 = [v4 cardSectionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(SISchemaUUFRCasinoCardSelected *)self cardSectionId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaUUFRCasinoCardSelected *)self cardSectionId];
    v10 = [v4 cardSectionId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    ordinalCardSectionPosition = self->_ordinalCardSectionPosition;
    if (ordinalCardSectionPosition != [v4 ordinalCardSectionPosition])
    {
      goto LABEL_15;
    }
  }

  v5 = [(SISchemaUUFRCasinoCardSelected *)self snippetAceId];
  v6 = [v4 snippetAceId];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(SISchemaUUFRCasinoCardSelected *)self snippetAceId];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SISchemaUUFRCasinoCardSelected *)self snippetAceId];
    v16 = [v4 snippetAceId];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(SISchemaUUFRCasinoCardSelected *)self cardSectionId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(SISchemaUUFRCasinoCardSelected *)self snippetAceId];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end