@interface SFUserActivityInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFUserActivityInfo)initWithCoder:(id)coder;
- (SFUserActivityInfo)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFUserActivityInfo

- (SFUserActivityInfo)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v15.receiver = self;
  v15.super_class = SFUserActivityInfo;
  v5 = [(SFUserActivityInfo *)&v15 init];
  if (v5)
  {
    if ([protobufCopy valueType])
    {
      -[SFUserActivityInfo setValueType:](v5, "setValueType:", [protobufCopy valueType]);
    }

    v6 = [protobufCopy key];

    if (v6)
    {
      v7 = [protobufCopy key];
      [(SFUserActivityInfo *)v5 setKey:v7];
    }

    stringValue = [protobufCopy stringValue];

    if (stringValue)
    {
      stringValue2 = [protobufCopy stringValue];
      [(SFUserActivityInfo *)v5 setStringValue:stringValue2];
    }

    urlValue = [protobufCopy urlValue];

    if (urlValue)
    {
      urlValue2 = [protobufCopy urlValue];
      v12 = _SFPBURLHandwrittenTranslator(urlValue2);
      [(SFUserActivityInfo *)v5 setUrlValue:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  valueType = [(SFUserActivityInfo *)self valueType];
  v4 = [(SFUserActivityInfo *)self key];
  v5 = [v4 hash] ^ valueType;
  stringValue = [(SFUserActivityInfo *)self stringValue];
  v7 = [stringValue hash];
  urlValue = [(SFUserActivityInfo *)self urlValue];
  v9 = v7 ^ [urlValue hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFUserActivityInfo *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      valueType = [(SFUserActivityInfo *)self valueType];
      if (valueType != [(SFUserActivityInfo *)v6 valueType])
      {
        v12 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v8 = [(SFUserActivityInfo *)self key];
      v9 = [(SFUserActivityInfo *)v6 key];
      if ((v8 != 0) == (v9 == 0))
      {
        v12 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v10 = [(SFUserActivityInfo *)self key];
      if (v10)
      {
        v3 = [(SFUserActivityInfo *)self key];
        v11 = [(SFUserActivityInfo *)v6 key];
        if (![v3 isEqual:v11])
        {
          v12 = 0;
          goto LABEL_30;
        }

        v32 = v11;
      }

      stringValue = [(SFUserActivityInfo *)self stringValue];
      stringValue2 = [(SFUserActivityInfo *)v6 stringValue];
      v15 = stringValue2;
      if ((stringValue != 0) == (stringValue2 == 0))
      {

        v12 = 0;
        goto LABEL_29;
      }

      stringValue3 = [(SFUserActivityInfo *)self stringValue];
      if (stringValue3)
      {
        v26 = stringValue;
        stringValue4 = [(SFUserActivityInfo *)self stringValue];
        stringValue5 = [(SFUserActivityInfo *)v6 stringValue];
        v29 = stringValue4;
        if (![stringValue4 isEqual:?])
        {
          v12 = 0;
          stringValue = v26;
          goto LABEL_27;
        }

        v30 = stringValue3;
        v31 = v3;
        stringValue = v26;
      }

      else
      {
        v30 = 0;
        v31 = v3;
      }

      urlValue = [(SFUserActivityInfo *)self urlValue];
      urlValue2 = [(SFUserActivityInfo *)v6 urlValue];
      if ((urlValue != 0) == (urlValue2 == 0))
      {

        v12 = 0;
        stringValue3 = v30;
        v3 = v31;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v25 = urlValue;
        v27 = urlValue2;
        urlValue3 = [(SFUserActivityInfo *)self urlValue];
        stringValue3 = v30;
        if (urlValue3)
        {
          v24 = urlValue3;
          urlValue4 = [(SFUserActivityInfo *)self urlValue];
          urlValue5 = [(SFUserActivityInfo *)v6 urlValue];
          v12 = [urlValue4 isEqual:?];
        }

        else
        {

          v12 = 1;
        }

        v3 = v31;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

LABEL_27:

LABEL_28:
LABEL_29:
      v11 = v32;
      if (!v10)
      {
LABEL_31:

        goto LABEL_32;
      }

LABEL_30:

      goto LABEL_31;
    }

    v12 = 0;
  }

LABEL_34:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setValueType:{-[SFUserActivityInfo valueType](self, "valueType")}];
  v5 = [(SFUserActivityInfo *)self key];
  v6 = [v5 copy];
  [v4 setKey:v6];

  stringValue = [(SFUserActivityInfo *)self stringValue];
  v8 = [stringValue copy];
  [v4 setStringValue:v8];

  urlValue = [(SFUserActivityInfo *)self urlValue];
  v10 = [urlValue copy];
  [v4 setUrlValue:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBUserActivityInfo alloc] initWithFacade:self];
  jsonData = [(_SFPBUserActivityInfo *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBUserActivityInfo alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBUserActivityInfo *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBUserActivityInfo alloc] initWithFacade:self];
  data = [(_SFPBUserActivityInfo *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFUserActivityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBUserActivityInfo alloc] initWithData:v5];
  v7 = [(SFUserActivityInfo *)self initWithProtobuf:v6];

  return v7;
}

@end