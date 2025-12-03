@interface SFTextColumnSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTextColumnSection)initWithCoder:(id)coder;
- (SFTextColumnSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTextColumnSection

- (SFTextColumnSection)initWithProtobuf:(id)protobuf
{
  v22 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = SFTextColumnSection;
  v5 = [(SFTextColumnSection *)&v20 init];
  if (v5)
  {
    textLines = [protobufCopy textLines];
    if (textLines)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    textLines2 = [protobufCopy textLines];
    v9 = [textLines2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(textLines2);
          }

          if (*(*(&v16 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [textLines2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    [(SFTextColumnSection *)v5 setTextLines:v7];
    if ([protobufCopy textNoWrap])
    {
      -[SFTextColumnSection setTextNoWrap:](v5, "setTextNoWrap:", [protobufCopy textNoWrap]);
    }

    if ([protobufCopy textWeight])
    {
      -[SFTextColumnSection setTextWeight:](v5, "setTextWeight:", [protobufCopy textWeight]);
    }

    v13 = v5;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  textLines = [(SFTextColumnSection *)self textLines];
  v4 = [textLines hash];
  textNoWrap = [(SFTextColumnSection *)self textNoWrap];
  v6 = v4 ^ [(SFTextColumnSection *)self textWeight];

  return v6 ^ textNoWrap;
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
    if ([(SFTextColumnSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      textLines = [(SFTextColumnSection *)self textLines];
      textLines2 = [(SFTextColumnSection *)v7 textLines];
      if ((textLines != 0) == (textLines2 == 0))
      {
        v11 = 0;
LABEL_16:

        goto LABEL_17;
      }

      textLines3 = [(SFTextColumnSection *)self textLines];
      if (!textLines3 || (-[SFTextColumnSection textLines](self, "textLines"), v3 = objc_claimAutoreleasedReturnValue(), -[SFTextColumnSection textLines](v7, "textLines"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        textNoWrap = [(SFTextColumnSection *)self textNoWrap];
        if (textNoWrap == [(SFTextColumnSection *)v7 textNoWrap])
        {
          textWeight = [(SFTextColumnSection *)self textWeight];
          v11 = textWeight == [(SFTextColumnSection *)v7 textWeight];
          if (!textLines3)
          {
LABEL_15:

            goto LABEL_16;
          }
        }

        else
        {
          v11 = 0;
          if (!textLines3)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_15;
    }

    v11 = 0;
  }

LABEL_17:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  textLines = [(SFTextColumnSection *)self textLines];
  v6 = [textLines copy];
  [v4 setTextLines:v6];

  [v4 setTextNoWrap:{-[SFTextColumnSection textNoWrap](self, "textNoWrap")}];
  [v4 setTextWeight:{-[SFTextColumnSection textWeight](self, "textWeight")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTextColumnSection alloc] initWithFacade:self];
  jsonData = [(_SFPBTextColumnSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTextColumnSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBTextColumnSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBTextColumnSection alloc] initWithFacade:self];
  data = [(_SFPBTextColumnSection *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFTextColumnSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTextColumnSection alloc] initWithData:v5];
  v7 = [(SFTextColumnSection *)self initWithProtobuf:v6];

  return v7;
}

@end