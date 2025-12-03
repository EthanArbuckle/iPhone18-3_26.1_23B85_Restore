@interface SISchemaGridCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaGridCardSection)initWithDictionary:(id)dictionary;
- (SISchemaGridCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addResultIdentifiers:(id)identifiers;
- (void)writeTo:(id)to;
@end

@implementation SISchemaGridCardSection

- (SISchemaGridCardSection)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = SISchemaGridCardSection;
  v5 = [(SISchemaGridCardSection *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"resultIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(SISchemaGridCardSection *)v5 addResultIdentifiers:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:{@"cardSource", v17}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaGridCardSection setCardSource:](v5, "setCardSource:", [v14 intValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (SISchemaGridCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaGridCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaGridCardSection *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    cardSource = [(SISchemaGridCardSection *)self cardSource];
    v5 = @"CARDSOURCE_UNKNOWN_CARD_SOURCE";
    if (cardSource == 1)
    {
      v5 = @"CARDSOURCE_BING";
    }

    if (cardSource == 2)
    {
      v6 = @"CARDSOURCE_WEB_IMAGE";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"cardSource"];
  }

  if (self->_resultIdentifiers)
  {
    resultIdentifiers = [(SISchemaGridCardSection *)self resultIdentifiers];
    v8 = [resultIdentifiers copy];
    [dictionary setObject:v8 forKeyedSubscript:@"resultIdentifiers"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_resultIdentifiers hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_cardSource;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  resultIdentifiers = [(SISchemaGridCardSection *)self resultIdentifiers];
  resultIdentifiers2 = [equalCopy resultIdentifiers];
  v7 = resultIdentifiers2;
  if ((resultIdentifiers != 0) == (resultIdentifiers2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  resultIdentifiers3 = [(SISchemaGridCardSection *)self resultIdentifiers];
  if (resultIdentifiers3)
  {
    v9 = resultIdentifiers3;
    resultIdentifiers4 = [(SISchemaGridCardSection *)self resultIdentifiers];
    resultIdentifiers5 = [equalCopy resultIdentifiers];
    v12 = [resultIdentifiers4 isEqual:resultIdentifiers5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    cardSource = self->_cardSource;
    if (cardSource != [equalCopy cardSource])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_resultIdentifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addResultIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  resultIdentifiers = self->_resultIdentifiers;
  v8 = identifiersCopy;
  if (!resultIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_resultIdentifiers;
    self->_resultIdentifiers = array;

    identifiersCopy = v8;
    resultIdentifiers = self->_resultIdentifiers;
  }

  [(NSArray *)resultIdentifiers addObject:identifiersCopy];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end