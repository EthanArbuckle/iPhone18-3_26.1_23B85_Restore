@interface SFClearProactiveCategoryCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFClearProactiveCategoryCommand)initWithCoder:(id)coder;
- (SFClearProactiveCategoryCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFClearProactiveCategoryCommand

- (SFClearProactiveCategoryCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFClearProactiveCategoryCommand;
  v5 = [(SFClearProactiveCategoryCommand *)&v10 init];
  if (v5)
  {
    if ([protobufCopy category])
    {
      -[SFClearProactiveCategoryCommand setCategory:](v5, "setCategory:", [protobufCopy category]);
    }

    if ([protobufCopy shouldClearWholeSection])
    {
      -[SFClearProactiveCategoryCommand setShouldClearWholeSection:](v5, "setShouldClearWholeSection:", [protobufCopy shouldClearWholeSection]);
    }

    proactiveIdentifier = [protobufCopy proactiveIdentifier];

    if (proactiveIdentifier)
    {
      proactiveIdentifier2 = [protobufCopy proactiveIdentifier];
      [(SFClearProactiveCategoryCommand *)v5 setProactiveIdentifier:proactiveIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFClearProactiveCategoryCommand;
  v3 = [(SFCommand *)&v9 hash];
  category = [(SFClearProactiveCategoryCommand *)self category];
  v5 = category ^ [(SFClearProactiveCategoryCommand *)self shouldClearWholeSection];
  proactiveIdentifier = [(SFClearProactiveCategoryCommand *)self proactiveIdentifier];
  v7 = v5 ^ [proactiveIdentifier hash];

  return v3 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(SFClearProactiveCategoryCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v15.receiver = self, v15.super_class = SFClearProactiveCategoryCommand, [(SFCommand *)&v15 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    category = [(SFClearProactiveCategoryCommand *)self category];
    if (category == [(SFClearProactiveCategoryCommand *)v5 category]&& (v7 = [(SFClearProactiveCategoryCommand *)self shouldClearWholeSection], v7 == [(SFClearProactiveCategoryCommand *)v5 shouldClearWholeSection]))
    {
      proactiveIdentifier = [(SFClearProactiveCategoryCommand *)self proactiveIdentifier];
      proactiveIdentifier2 = [(SFClearProactiveCategoryCommand *)v5 proactiveIdentifier];
      if ((proactiveIdentifier != 0) == (proactiveIdentifier2 == 0))
      {
        v8 = 0;
      }

      else
      {
        proactiveIdentifier3 = [(SFClearProactiveCategoryCommand *)self proactiveIdentifier];
        if (proactiveIdentifier3)
        {
          proactiveIdentifier4 = [(SFClearProactiveCategoryCommand *)self proactiveIdentifier];
          proactiveIdentifier5 = [(SFClearProactiveCategoryCommand *)v5 proactiveIdentifier];
          v8 = [proactiveIdentifier4 isEqual:proactiveIdentifier5];
        }

        else
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFClearProactiveCategoryCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  [v4 setCategory:{-[SFClearProactiveCategoryCommand category](self, "category")}];
  [v4 setShouldClearWholeSection:{-[SFClearProactiveCategoryCommand shouldClearWholeSection](self, "shouldClearWholeSection")}];
  proactiveIdentifier = [(SFClearProactiveCategoryCommand *)self proactiveIdentifier];
  v6 = [proactiveIdentifier copy];
  [v4 setProactiveIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBClearProactiveCategoryCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBClearProactiveCategoryCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBClearProactiveCategoryCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBClearProactiveCategoryCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFClearProactiveCategoryCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFClearProactiveCategoryCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFClearProactiveCategoryCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFClearProactiveCategoryCommand *)v5 setCategory:[(SFCommand *)v8 category]];
    [(SFClearProactiveCategoryCommand *)v5 setShouldClearWholeSection:[(SFCommand *)v8 shouldClearWholeSection]];
    proactiveIdentifier = [(SFCommand *)v8 proactiveIdentifier];
    [(SFClearProactiveCategoryCommand *)v5 setProactiveIdentifier:proactiveIdentifier];

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

@end