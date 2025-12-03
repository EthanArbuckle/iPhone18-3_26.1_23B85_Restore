@interface SFInfoTuple
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFInfoTuple)initWithCoder:(id)coder;
- (SFInfoTuple)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFInfoTuple

- (SFInfoTuple)initWithProtobuf:(id)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v25.receiver = self;
  v25.super_class = SFInfoTuple;
  v5 = [(SFInfoTuple *)&v25 init];
  if (v5)
  {
    v6 = [protobufCopy key];

    if (v6)
    {
      v7 = [protobufCopy key];
      [(SFInfoTuple *)v5 setKey:v7];
    }

    values = [protobufCopy values];
    if (values)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    values2 = [protobufCopy values];
    v11 = [values2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(values2);
          }

          v15 = [[SFCommandButtonItem alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [values2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    [(SFInfoTuple *)v5 setValues:v9];
    if ([protobufCopy initiallyVisibleValues])
    {
      -[SFInfoTuple setInitiallyVisibleValues:](v5, "setInitiallyVisibleValues:", [protobufCopy initiallyVisibleValues]);
    }

    showMoreString = [protobufCopy showMoreString];

    if (showMoreString)
    {
      showMoreString2 = [protobufCopy showMoreString];
      [(SFInfoTuple *)v5 setShowMoreString:showMoreString2];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFInfoTuple *)self key];
  v4 = [v3 hash];
  values = [(SFInfoTuple *)self values];
  v6 = [values hash] ^ v4;
  initiallyVisibleValues = [(SFInfoTuple *)self initiallyVisibleValues];
  showMoreString = [(SFInfoTuple *)self showMoreString];
  v9 = initiallyVisibleValues ^ [showMoreString hash];

  return v6 ^ v9;
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
    if ([(SFInfoTuple *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      v7 = [(SFInfoTuple *)self key];
      v8 = [(SFInfoTuple *)v6 key];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(SFInfoTuple *)self key];
      if (v9)
      {
        v10 = [(SFInfoTuple *)self key];
        v3 = [(SFInfoTuple *)v6 key];
        if (![v10 isEqual:v3])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      values = [(SFInfoTuple *)self values];
      values2 = [(SFInfoTuple *)v6 values];
      v14 = values2;
      if ((values != 0) == (values2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      values3 = [(SFInfoTuple *)self values];
      if (values3)
      {
        v26 = v3;
        values4 = [(SFInfoTuple *)self values];
        values5 = [(SFInfoTuple *)v6 values];
        v29 = values4;
        if (![values4 isEqual:?])
        {
          v11 = 0;
          v3 = v26;
          goto LABEL_25;
        }

        v30 = values3;
        v3 = v26;
      }

      else
      {
        v30 = 0;
      }

      initiallyVisibleValues = [(SFInfoTuple *)self initiallyVisibleValues];
      if (initiallyVisibleValues == [(SFInfoTuple *)v6 initiallyVisibleValues])
      {
        showMoreString = [(SFInfoTuple *)self showMoreString];
        showMoreString2 = [(SFInfoTuple *)v6 showMoreString];
        if ((showMoreString != 0) != (showMoreString2 == 0))
        {
          v25 = showMoreString2;
          v27 = showMoreString;
          showMoreString3 = [(SFInfoTuple *)self showMoreString];
          if (showMoreString3)
          {
            v24 = showMoreString3;
            showMoreString4 = [(SFInfoTuple *)self showMoreString];
            showMoreString5 = [(SFInfoTuple *)v6 showMoreString];
            v11 = [showMoreString4 isEqual:showMoreString5];
          }

          else
          {

            v11 = 1;
          }

LABEL_24:
          values3 = v30;
          if (!v30)
          {
LABEL_26:

LABEL_27:
            v10 = v31;
            if (!v9)
            {
LABEL_29:

              goto LABEL_30;
            }

LABEL_28:

            goto LABEL_29;
          }

LABEL_25:

          goto LABEL_26;
        }
      }

      v11 = 0;
      goto LABEL_24;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(SFInfoTuple *)self key];
  v6 = [v5 copy];
  [v4 setKey:v6];

  values = [(SFInfoTuple *)self values];
  v8 = [values copy];
  [v4 setValues:v8];

  [v4 setInitiallyVisibleValues:{-[SFInfoTuple initiallyVisibleValues](self, "initiallyVisibleValues")}];
  showMoreString = [(SFInfoTuple *)self showMoreString];
  v10 = [showMoreString copy];
  [v4 setShowMoreString:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBInfoTuple alloc] initWithFacade:self];
  jsonData = [(_SFPBInfoTuple *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBInfoTuple alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBInfoTuple *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBInfoTuple alloc] initWithFacade:self];
  data = [(_SFPBInfoTuple *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFInfoTuple)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBInfoTuple alloc] initWithData:v5];
  v7 = [(SFInfoTuple *)self initWithProtobuf:v6];

  return v7;
}

@end