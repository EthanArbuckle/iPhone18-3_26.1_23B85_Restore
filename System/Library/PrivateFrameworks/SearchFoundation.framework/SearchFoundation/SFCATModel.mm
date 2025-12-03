@interface SFCATModel
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCATModel)initWithCoder:(id)coder;
- (SFCATModel)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCATModel

- (SFCATModel)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFCATModel;
  v5 = [(SFCATModel *)&v14 init];
  if (v5)
  {
    catIdentifier = [protobufCopy catIdentifier];

    if (catIdentifier)
    {
      catIdentifier2 = [protobufCopy catIdentifier];
      [(SFCATModel *)v5 setCatIdentifier:catIdentifier2];
    }

    bundleIdentifier = [protobufCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [protobufCopy bundleIdentifier];
      [(SFCATModel *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    params = [protobufCopy params];

    if (params)
    {
      params2 = [protobufCopy params];
      [(SFCATModel *)v5 setParams:params2];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  catIdentifier = [(SFCATModel *)self catIdentifier];
  v4 = [catIdentifier hash];
  bundleIdentifier = [(SFCATModel *)self bundleIdentifier];
  v6 = [bundleIdentifier hash] ^ v4;
  params = [(SFCATModel *)self params];
  v8 = [params hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFCATModel *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      catIdentifier = [(SFCATModel *)self catIdentifier];
      catIdentifier2 = [(SFCATModel *)v6 catIdentifier];
      if ((catIdentifier != 0) == (catIdentifier2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      catIdentifier3 = [(SFCATModel *)self catIdentifier];
      if (catIdentifier3)
      {
        catIdentifier4 = [(SFCATModel *)self catIdentifier];
        catIdentifier5 = [(SFCATModel *)v6 catIdentifier];
        if (![catIdentifier4 isEqual:catIdentifier5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = catIdentifier5;
      }

      bundleIdentifier = [(SFCATModel *)self bundleIdentifier];
      bundleIdentifier2 = [(SFCATModel *)v6 bundleIdentifier];
      v14 = bundleIdentifier2;
      if ((bundleIdentifier != 0) == (bundleIdentifier2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      bundleIdentifier3 = [(SFCATModel *)self bundleIdentifier];
      if (bundleIdentifier3)
      {
        v25 = bundleIdentifier;
        bundleIdentifier4 = [(SFCATModel *)self bundleIdentifier];
        bundleIdentifier5 = [(SFCATModel *)v6 bundleIdentifier];
        v28 = bundleIdentifier4;
        if (![bundleIdentifier4 isEqual:?])
        {
          v11 = 0;
          bundleIdentifier = v25;
          goto LABEL_25;
        }

        v29 = bundleIdentifier3;
        v30 = catIdentifier4;
        bundleIdentifier = v25;
      }

      else
      {
        v29 = 0;
        v30 = catIdentifier4;
      }

      params = [(SFCATModel *)self params];
      params2 = [(SFCATModel *)v6 params];
      if ((params != 0) == (params2 == 0))
      {

        v11 = 0;
        bundleIdentifier3 = v29;
        catIdentifier4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = params;
        v26 = params2;
        params3 = [(SFCATModel *)self params];
        bundleIdentifier3 = v29;
        if (params3)
        {
          v23 = params3;
          params4 = [(SFCATModel *)self params];
          params5 = [(SFCATModel *)v6 params];
          v11 = [params4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        catIdentifier4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      catIdentifier5 = v31;
      if (!catIdentifier3)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  catIdentifier = [(SFCATModel *)self catIdentifier];
  v6 = [catIdentifier copy];
  [v4 setCatIdentifier:v6];

  bundleIdentifier = [(SFCATModel *)self bundleIdentifier];
  v8 = [bundleIdentifier copy];
  [v4 setBundleIdentifier:v8];

  params = [(SFCATModel *)self params];
  v10 = [params copy];
  [v4 setParams:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCATModel alloc] initWithFacade:self];
  jsonData = [(_SFPBCATModel *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCATModel alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCATModel *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCATModel alloc] initWithFacade:self];
  data = [(_SFPBCATModel *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCATModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCATModel alloc] initWithData:v5];
  v7 = [(SFCATModel *)self initWithProtobuf:v6];

  return v7;
}

@end