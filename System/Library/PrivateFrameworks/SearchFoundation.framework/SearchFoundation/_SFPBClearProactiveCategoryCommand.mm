@interface _SFPBClearProactiveCategoryCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBClearProactiveCategoryCommand)initWithDictionary:(id)dictionary;
- (_SFPBClearProactiveCategoryCommand)initWithFacade:(id)facade;
- (_SFPBClearProactiveCategoryCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setProactiveIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBClearProactiveCategoryCommand

- (_SFPBClearProactiveCategoryCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBClearProactiveCategoryCommand *)self init];
  if (v5)
  {
    if ([facadeCopy hasCategory])
    {
      -[_SFPBClearProactiveCategoryCommand setCategory:](v5, "setCategory:", [facadeCopy category]);
    }

    if ([facadeCopy hasShouldClearWholeSection])
    {
      -[_SFPBClearProactiveCategoryCommand setShouldClearWholeSection:](v5, "setShouldClearWholeSection:", [facadeCopy shouldClearWholeSection]);
    }

    proactiveIdentifier = [facadeCopy proactiveIdentifier];

    if (proactiveIdentifier)
    {
      proactiveIdentifier2 = [facadeCopy proactiveIdentifier];
      [(_SFPBClearProactiveCategoryCommand *)v5 setProactiveIdentifier:proactiveIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBClearProactiveCategoryCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBClearProactiveCategoryCommand;
  v5 = [(_SFPBClearProactiveCategoryCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"category"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBClearProactiveCategoryCommand setCategory:](v5, "setCategory:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"shouldClearWholeSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBClearProactiveCategoryCommand setShouldClearWholeSection:](v5, "setShouldClearWholeSection:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"proactiveIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBClearProactiveCategoryCommand *)v5 setProactiveIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBClearProactiveCategoryCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBClearProactiveCategoryCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBClearProactiveCategoryCommand *)self dictionaryRepresentation];
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
  if (self->_category)
  {
    category = [(_SFPBClearProactiveCategoryCommand *)self category];
    if (category >= 7)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", category];
    }

    else
    {
      v5 = off_1E7ACE4C8[category];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"category"];
  }

  if (self->_proactiveIdentifier)
  {
    proactiveIdentifier = [(_SFPBClearProactiveCategoryCommand *)self proactiveIdentifier];
    v7 = [proactiveIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"proactiveIdentifier"];
  }

  if (self->_shouldClearWholeSection)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBClearProactiveCategoryCommand shouldClearWholeSection](self, "shouldClearWholeSection")}];
    [dictionary setObject:v8 forKeyedSubscript:@"shouldClearWholeSection"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if (self->_shouldClearWholeSection)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  v2 = 2654435761 * self->_category;
  return v3 ^ [(NSString *)self->_proactiveIdentifier hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    category = self->_category;
    if (category == [equalCopy category])
    {
      shouldClearWholeSection = self->_shouldClearWholeSection;
      if (shouldClearWholeSection == [equalCopy shouldClearWholeSection])
      {
        proactiveIdentifier = [(_SFPBClearProactiveCategoryCommand *)self proactiveIdentifier];
        proactiveIdentifier2 = [equalCopy proactiveIdentifier];
        v9 = proactiveIdentifier2;
        if ((proactiveIdentifier != 0) != (proactiveIdentifier2 == 0))
        {
          proactiveIdentifier3 = [(_SFPBClearProactiveCategoryCommand *)self proactiveIdentifier];
          if (!proactiveIdentifier3)
          {

LABEL_12:
            v15 = 1;
            goto LABEL_10;
          }

          v11 = proactiveIdentifier3;
          proactiveIdentifier4 = [(_SFPBClearProactiveCategoryCommand *)self proactiveIdentifier];
          proactiveIdentifier5 = [equalCopy proactiveIdentifier];
          v14 = [proactiveIdentifier4 isEqual:proactiveIdentifier5];

          if (v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBClearProactiveCategoryCommand *)self category])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBClearProactiveCategoryCommand *)self shouldClearWholeSection])
  {
    PBDataWriterWriteBOOLField();
  }

  proactiveIdentifier = [(_SFPBClearProactiveCategoryCommand *)self proactiveIdentifier];
  if (proactiveIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setProactiveIdentifier:(id)identifier
{
  v4 = [identifier copy];
  proactiveIdentifier = self->_proactiveIdentifier;
  self->_proactiveIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end