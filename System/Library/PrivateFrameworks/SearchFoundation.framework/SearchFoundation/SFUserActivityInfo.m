@interface SFUserActivityInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFUserActivityInfo)initWithCoder:(id)a3;
- (SFUserActivityInfo)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFUserActivityInfo

- (SFUserActivityInfo)initWithProtobuf:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFUserActivityInfo;
  v5 = [(SFUserActivityInfo *)&v15 init];
  if (v5)
  {
    if ([v4 valueType])
    {
      -[SFUserActivityInfo setValueType:](v5, "setValueType:", [v4 valueType]);
    }

    v6 = [v4 key];

    if (v6)
    {
      v7 = [v4 key];
      [(SFUserActivityInfo *)v5 setKey:v7];
    }

    v8 = [v4 stringValue];

    if (v8)
    {
      v9 = [v4 stringValue];
      [(SFUserActivityInfo *)v5 setStringValue:v9];
    }

    v10 = [v4 urlValue];

    if (v10)
    {
      v11 = [v4 urlValue];
      v12 = _SFPBURLHandwrittenTranslator(v11);
      [(SFUserActivityInfo *)v5 setUrlValue:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFUserActivityInfo *)self valueType];
  v4 = [(SFUserActivityInfo *)self key];
  v5 = [v4 hash] ^ v3;
  v6 = [(SFUserActivityInfo *)self stringValue];
  v7 = [v6 hash];
  v8 = [(SFUserActivityInfo *)self urlValue];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFUserActivityInfo *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFUserActivityInfo *)self valueType];
      if (v7 != [(SFUserActivityInfo *)v6 valueType])
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

      v13 = [(SFUserActivityInfo *)self stringValue];
      v14 = [(SFUserActivityInfo *)v6 stringValue];
      v15 = v14;
      if ((v13 != 0) == (v14 == 0))
      {

        v12 = 0;
        goto LABEL_29;
      }

      v16 = [(SFUserActivityInfo *)self stringValue];
      if (v16)
      {
        v26 = v13;
        v17 = [(SFUserActivityInfo *)self stringValue];
        v28 = [(SFUserActivityInfo *)v6 stringValue];
        v29 = v17;
        if (![v17 isEqual:?])
        {
          v12 = 0;
          v13 = v26;
          goto LABEL_27;
        }

        v30 = v16;
        v31 = v3;
        v13 = v26;
      }

      else
      {
        v30 = 0;
        v31 = v3;
      }

      v18 = [(SFUserActivityInfo *)self urlValue];
      v19 = [(SFUserActivityInfo *)v6 urlValue];
      if ((v18 != 0) == (v19 == 0))
      {

        v12 = 0;
        v16 = v30;
        v3 = v31;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v25 = v18;
        v27 = v19;
        v20 = [(SFUserActivityInfo *)self urlValue];
        v16 = v30;
        if (v20)
        {
          v24 = v20;
          v23 = [(SFUserActivityInfo *)self urlValue];
          v21 = [(SFUserActivityInfo *)v6 urlValue];
          v12 = [v23 isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setValueType:{-[SFUserActivityInfo valueType](self, "valueType")}];
  v5 = [(SFUserActivityInfo *)self key];
  v6 = [v5 copy];
  [v4 setKey:v6];

  v7 = [(SFUserActivityInfo *)self stringValue];
  v8 = [v7 copy];
  [v4 setStringValue:v8];

  v9 = [(SFUserActivityInfo *)self urlValue];
  v10 = [v9 copy];
  [v4 setUrlValue:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBUserActivityInfo alloc] initWithFacade:self];
  v3 = [(_SFPBUserActivityInfo *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBUserActivityInfo alloc] initWithFacade:self];
  v3 = [(_SFPBUserActivityInfo *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBUserActivityInfo alloc] initWithFacade:self];
  v5 = [(_SFPBUserActivityInfo *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFUserActivityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBUserActivityInfo alloc] initWithData:v5];
  v7 = [(SFUserActivityInfo *)self initWithProtobuf:v6];

  return v7;
}

@end