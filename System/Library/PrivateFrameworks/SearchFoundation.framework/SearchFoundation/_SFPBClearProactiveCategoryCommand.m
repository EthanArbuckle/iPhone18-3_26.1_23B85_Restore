@interface _SFPBClearProactiveCategoryCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBClearProactiveCategoryCommand)initWithDictionary:(id)a3;
- (_SFPBClearProactiveCategoryCommand)initWithFacade:(id)a3;
- (_SFPBClearProactiveCategoryCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setProactiveIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBClearProactiveCategoryCommand

- (_SFPBClearProactiveCategoryCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBClearProactiveCategoryCommand *)self init];
  if (v5)
  {
    if ([v4 hasCategory])
    {
      -[_SFPBClearProactiveCategoryCommand setCategory:](v5, "setCategory:", [v4 category]);
    }

    if ([v4 hasShouldClearWholeSection])
    {
      -[_SFPBClearProactiveCategoryCommand setShouldClearWholeSection:](v5, "setShouldClearWholeSection:", [v4 shouldClearWholeSection]);
    }

    v6 = [v4 proactiveIdentifier];

    if (v6)
    {
      v7 = [v4 proactiveIdentifier];
      [(_SFPBClearProactiveCategoryCommand *)v5 setProactiveIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBClearProactiveCategoryCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBClearProactiveCategoryCommand;
  v5 = [(_SFPBClearProactiveCategoryCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"category"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBClearProactiveCategoryCommand setCategory:](v5, "setCategory:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"shouldClearWholeSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBClearProactiveCategoryCommand setShouldClearWholeSection:](v5, "setShouldClearWholeSection:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"proactiveIdentifier"];
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

- (_SFPBClearProactiveCategoryCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBClearProactiveCategoryCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBClearProactiveCategoryCommand *)self dictionaryRepresentation];
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
  if (self->_category)
  {
    v4 = [(_SFPBClearProactiveCategoryCommand *)self category];
    if (v4 >= 7)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE4C8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"category"];
  }

  if (self->_proactiveIdentifier)
  {
    v6 = [(_SFPBClearProactiveCategoryCommand *)self proactiveIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"proactiveIdentifier"];
  }

  if (self->_shouldClearWholeSection)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBClearProactiveCategoryCommand shouldClearWholeSection](self, "shouldClearWholeSection")}];
    [v3 setObject:v8 forKeyedSubscript:@"shouldClearWholeSection"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    category = self->_category;
    if (category == [v4 category])
    {
      shouldClearWholeSection = self->_shouldClearWholeSection;
      if (shouldClearWholeSection == [v4 shouldClearWholeSection])
      {
        v7 = [(_SFPBClearProactiveCategoryCommand *)self proactiveIdentifier];
        v8 = [v4 proactiveIdentifier];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_SFPBClearProactiveCategoryCommand *)self proactiveIdentifier];
          if (!v10)
          {

LABEL_12:
            v15 = 1;
            goto LABEL_10;
          }

          v11 = v10;
          v12 = [(_SFPBClearProactiveCategoryCommand *)self proactiveIdentifier];
          v13 = [v4 proactiveIdentifier];
          v14 = [v12 isEqual:v13];

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

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_SFPBClearProactiveCategoryCommand *)self category])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBClearProactiveCategoryCommand *)self shouldClearWholeSection])
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(_SFPBClearProactiveCategoryCommand *)self proactiveIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setProactiveIdentifier:(id)a3
{
  v4 = [a3 copy];
  proactiveIdentifier = self->_proactiveIdentifier;
  self->_proactiveIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end