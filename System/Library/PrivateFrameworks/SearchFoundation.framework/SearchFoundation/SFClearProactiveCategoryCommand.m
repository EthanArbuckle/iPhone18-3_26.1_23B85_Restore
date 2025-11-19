@interface SFClearProactiveCategoryCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFClearProactiveCategoryCommand)initWithCoder:(id)a3;
- (SFClearProactiveCategoryCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFClearProactiveCategoryCommand

- (SFClearProactiveCategoryCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFClearProactiveCategoryCommand;
  v5 = [(SFClearProactiveCategoryCommand *)&v10 init];
  if (v5)
  {
    if ([v4 category])
    {
      -[SFClearProactiveCategoryCommand setCategory:](v5, "setCategory:", [v4 category]);
    }

    if ([v4 shouldClearWholeSection])
    {
      -[SFClearProactiveCategoryCommand setShouldClearWholeSection:](v5, "setShouldClearWholeSection:", [v4 shouldClearWholeSection]);
    }

    v6 = [v4 proactiveIdentifier];

    if (v6)
    {
      v7 = [v4 proactiveIdentifier];
      [(SFClearProactiveCategoryCommand *)v5 setProactiveIdentifier:v7];
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
  v4 = [(SFClearProactiveCategoryCommand *)self category];
  v5 = v4 ^ [(SFClearProactiveCategoryCommand *)self shouldClearWholeSection];
  v6 = [(SFClearProactiveCategoryCommand *)self proactiveIdentifier];
  v7 = v5 ^ [v6 hash];

  return v3 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(SFClearProactiveCategoryCommand *)v4 isMemberOfClass:objc_opt_class()]&& (v15.receiver = self, v15.super_class = SFClearProactiveCategoryCommand, [(SFCommand *)&v15 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFClearProactiveCategoryCommand *)self category];
    if (v6 == [(SFClearProactiveCategoryCommand *)v5 category]&& (v7 = [(SFClearProactiveCategoryCommand *)self shouldClearWholeSection], v7 == [(SFClearProactiveCategoryCommand *)v5 shouldClearWholeSection]))
    {
      v9 = [(SFClearProactiveCategoryCommand *)self proactiveIdentifier];
      v10 = [(SFClearProactiveCategoryCommand *)v5 proactiveIdentifier];
      if ((v9 != 0) == (v10 == 0))
      {
        v8 = 0;
      }

      else
      {
        v11 = [(SFClearProactiveCategoryCommand *)self proactiveIdentifier];
        if (v11)
        {
          v12 = [(SFClearProactiveCategoryCommand *)self proactiveIdentifier];
          v13 = [(SFClearProactiveCategoryCommand *)v5 proactiveIdentifier];
          v8 = [v12 isEqual:v13];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFClearProactiveCategoryCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  [v4 setCategory:{-[SFClearProactiveCategoryCommand category](self, "category")}];
  [v4 setShouldClearWholeSection:{-[SFClearProactiveCategoryCommand shouldClearWholeSection](self, "shouldClearWholeSection")}];
  v5 = [(SFClearProactiveCategoryCommand *)self proactiveIdentifier];
  v6 = [v5 copy];
  [v4 setProactiveIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBClearProactiveCategoryCommand alloc] initWithFacade:self];
  v3 = [(_SFPBClearProactiveCategoryCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBClearProactiveCategoryCommand alloc] initWithFacade:self];
  v3 = [(_SFPBClearProactiveCategoryCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFClearProactiveCategoryCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFClearProactiveCategoryCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFClearProactiveCategoryCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFClearProactiveCategoryCommand *)v5 setCategory:[(SFCommand *)v8 category]];
    [(SFClearProactiveCategoryCommand *)v5 setShouldClearWholeSection:[(SFCommand *)v8 shouldClearWholeSection]];
    v9 = [(SFCommand *)v8 proactiveIdentifier];
    [(SFClearProactiveCategoryCommand *)v5 setProactiveIdentifier:v9];

    v10 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v10];

    v11 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v11];

    v12 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v12];

    v13 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v13];
  }

  return v5;
}

@end