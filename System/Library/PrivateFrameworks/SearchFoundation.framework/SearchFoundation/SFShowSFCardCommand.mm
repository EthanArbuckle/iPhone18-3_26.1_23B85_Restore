@interface SFShowSFCardCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShowSFCardCommand)initWithCoder:(id)coder;
- (SFShowSFCardCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)embeddedCards;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShowSFCardCommand

- (SFShowSFCardCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFShowSFCardCommand;
  v5 = [(SFShowSFCardCommand *)&v12 init];
  if (v5)
  {
    card = [protobufCopy card];

    if (card)
    {
      v7 = [SFCard alloc];
      card2 = [protobufCopy card];
      v9 = [(SFCard *)v7 initWithProtobuf:card2];
      [(SFShowSFCardCommand *)v5 setCard:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFShowSFCardCommand;
  v3 = [(SFCommand *)&v7 hash];
  card = [(SFShowSFCardCommand *)self card];
  v5 = [card hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFShowSFCardCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFShowSFCardCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    card = [(SFShowSFCardCommand *)self card];
    card2 = [(SFShowSFCardCommand *)v5 card];
    if ((card != 0) == (card2 == 0))
    {
      v11 = 0;
    }

    else
    {
      card3 = [(SFShowSFCardCommand *)self card];
      if (card3)
      {
        card4 = [(SFShowSFCardCommand *)self card];
        card5 = [(SFShowSFCardCommand *)v5 card];
        v11 = [card4 isEqual:card5];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFShowSFCardCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  card = [(SFShowSFCardCommand *)self card];
  v6 = [card copy];
  [v4 setCard:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShowSFCardCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBShowSFCardCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShowSFCardCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBShowSFCardCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFShowSFCardCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFShowSFCardCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFShowSFCardCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    card = [(SFCommand *)v8 card];
    [(SFShowSFCardCommand *)v5 setCard:card];

    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

- (id)embeddedCards
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  card = [(SFShowSFCardCommand *)self card];

  if (card)
  {
    card2 = [(SFShowSFCardCommand *)self card];
    [array addObject:card2];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    card3 = [(SFShowSFCardCommand *)self card];
    cardSections = [card3 cardSections];

    v8 = [cardSections countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(cardSections);
          }

          embeddedCards = [*(*(&v15 + 1) + 8 * i) embeddedCards];
          [array addObjectsFromArray:embeddedCards];
        }

        v9 = [cardSections countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

@end