@interface SFCollectionStyleHorizontallyScrolling
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCollectionStyleHorizontallyScrolling)initWithCoder:(id)coder;
- (SFCollectionStyleHorizontallyScrolling)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCollectionStyleHorizontallyScrolling

- (SFCollectionStyleHorizontallyScrolling)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFCollectionStyleHorizontallyScrolling;
  v5 = [(SFCollectionStyleHorizontallyScrolling *)&v8 init];
  if (v5)
  {
    if ([protobufCopy numberOfRows])
    {
      -[SFCollectionStyleHorizontallyScrolling setNumberOfRows:](v5, "setNumberOfRows:", [protobufCopy numberOfRows]);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(SFCollectionStyleHorizontallyScrolling *)equalCopy isMemberOfClass:objc_opt_class()]&& (v10.receiver = self, v10.super_class = SFCollectionStyleHorizontallyScrolling, [(SFCollectionStyle *)&v10 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    numberOfRows = [(SFCollectionStyleHorizontallyScrolling *)self numberOfRows];
    numberOfRows2 = [(SFCollectionStyleHorizontallyScrolling *)v5 numberOfRows];

    v8 = numberOfRows == numberOfRows2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SFCollectionStyleHorizontallyScrolling;
  v4 = [(SFCollectionStyle *)&v6 copyWithZone:zone];
  [v4 setNumberOfRows:{-[SFCollectionStyleHorizontallyScrolling numberOfRows](self, "numberOfRows")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithFacade:self];
  jsonData = [(_SFPBCollectionStyleHorizontallyScrolling *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCollectionStyleHorizontallyScrolling *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithFacade:self];
  data = [(_SFPBCollectionStyleHorizontallyScrolling *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCollectionStyleHorizontallyScrolling)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithData:v5];
  v7 = [(SFCollectionStyleHorizontallyScrolling *)self initWithProtobuf:v6];

  return v7;
}

@end