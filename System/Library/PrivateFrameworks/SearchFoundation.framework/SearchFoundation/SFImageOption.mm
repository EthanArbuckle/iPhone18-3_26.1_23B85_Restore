@interface SFImageOption
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFImageOption)initWithCoder:(id)coder;
- (SFImageOption)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFImageOption

- (SFImageOption)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v15.receiver = self;
  v15.super_class = SFImageOption;
  v5 = [(SFImageOption *)&v15 init];
  if (v5)
  {
    name = [protobufCopy name];

    if (name)
    {
      name2 = [protobufCopy name];
      [(SFImageOption *)v5 setName:name2];
    }

    defaultValue = [protobufCopy defaultValue];

    if (defaultValue)
    {
      defaultValue2 = [protobufCopy defaultValue];
      [(SFImageOption *)v5 setDefaultValue:defaultValue2];
    }

    options = [protobufCopy options];

    if (options)
    {
      options2 = [protobufCopy options];
      v12 = _SFPBStringDictionaryHandwrittenTranslator(options2);
      [(SFImageOption *)v5 setOptions:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  name = [(SFImageOption *)self name];
  v4 = [name hash];
  defaultValue = [(SFImageOption *)self defaultValue];
  v6 = [defaultValue hash] ^ v4;
  options = [(SFImageOption *)self options];
  v8 = [options hash];

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
    if ([(SFImageOption *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      name = [(SFImageOption *)self name];
      name2 = [(SFImageOption *)v6 name];
      if ((name != 0) == (name2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      name3 = [(SFImageOption *)self name];
      if (name3)
      {
        name4 = [(SFImageOption *)self name];
        name5 = [(SFImageOption *)v6 name];
        if (![name4 isEqual:name5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = name5;
      }

      defaultValue = [(SFImageOption *)self defaultValue];
      defaultValue2 = [(SFImageOption *)v6 defaultValue];
      v14 = defaultValue2;
      if ((defaultValue != 0) == (defaultValue2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      defaultValue3 = [(SFImageOption *)self defaultValue];
      if (defaultValue3)
      {
        v25 = defaultValue;
        defaultValue4 = [(SFImageOption *)self defaultValue];
        defaultValue5 = [(SFImageOption *)v6 defaultValue];
        v28 = defaultValue4;
        if (![defaultValue4 isEqual:?])
        {
          v11 = 0;
          defaultValue = v25;
          goto LABEL_25;
        }

        v29 = defaultValue3;
        v30 = name4;
        defaultValue = v25;
      }

      else
      {
        v29 = 0;
        v30 = name4;
      }

      options = [(SFImageOption *)self options];
      options2 = [(SFImageOption *)v6 options];
      if ((options != 0) == (options2 == 0))
      {

        v11 = 0;
        defaultValue3 = v29;
        name4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = options;
        v26 = options2;
        options3 = [(SFImageOption *)self options];
        defaultValue3 = v29;
        if (options3)
        {
          v23 = options3;
          options4 = [(SFImageOption *)self options];
          options5 = [(SFImageOption *)v6 options];
          v11 = [options4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        name4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      name5 = v31;
      if (!name3)
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
  name = [(SFImageOption *)self name];
  v6 = [name copy];
  [v4 setName:v6];

  defaultValue = [(SFImageOption *)self defaultValue];
  v8 = [defaultValue copy];
  [v4 setDefaultValue:v8];

  options = [(SFImageOption *)self options];
  v10 = [options copy];
  [v4 setOptions:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBImageOption alloc] initWithFacade:self];
  jsonData = [(_SFPBImageOption *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBImageOption alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBImageOption *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImageOption alloc] initWithFacade:self];
  data = [(_SFPBImageOption *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFImageOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImageOption alloc] initWithData:v5];
  v7 = [(SFImageOption *)self initWithProtobuf:v6];

  return v7;
}

@end