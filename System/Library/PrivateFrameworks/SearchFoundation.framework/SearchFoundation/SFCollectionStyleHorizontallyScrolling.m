@interface SFCollectionStyleHorizontallyScrolling
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCollectionStyleHorizontallyScrolling)initWithCoder:(id)a3;
- (SFCollectionStyleHorizontallyScrolling)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCollectionStyleHorizontallyScrolling

- (SFCollectionStyleHorizontallyScrolling)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFCollectionStyleHorizontallyScrolling;
  v5 = [(SFCollectionStyleHorizontallyScrolling *)&v8 init];
  if (v5)
  {
    if ([v4 numberOfRows])
    {
      -[SFCollectionStyleHorizontallyScrolling setNumberOfRows:](v5, "setNumberOfRows:", [v4 numberOfRows]);
    }

    v6 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SFCollectionStyleHorizontallyScrolling;
  v3 = [(SFCollectionStyle *)&v5 hash];
  return [(SFCollectionStyleHorizontallyScrolling *)self numberOfRows]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(SFCollectionStyleHorizontallyScrolling *)v4 isMemberOfClass:objc_opt_class()]&& (v10.receiver = self, v10.super_class = SFCollectionStyleHorizontallyScrolling, [(SFCollectionStyle *)&v10 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFCollectionStyleHorizontallyScrolling *)self numberOfRows];
    v7 = [(SFCollectionStyleHorizontallyScrolling *)v5 numberOfRows];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SFCollectionStyleHorizontallyScrolling;
  v4 = [(SFCollectionStyle *)&v6 copyWithZone:a3];
  [v4 setNumberOfRows:{-[SFCollectionStyleHorizontallyScrolling numberOfRows](self, "numberOfRows")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithFacade:self];
  v3 = [(_SFPBCollectionStyleHorizontallyScrolling *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithFacade:self];
  v3 = [(_SFPBCollectionStyleHorizontallyScrolling *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithFacade:self];
  v5 = [(_SFPBCollectionStyleHorizontallyScrolling *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCollectionStyleHorizontallyScrolling)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithData:v5];
  v7 = [(SFCollectionStyleHorizontallyScrolling *)self initWithProtobuf:v6];

  return v7;
}

@end