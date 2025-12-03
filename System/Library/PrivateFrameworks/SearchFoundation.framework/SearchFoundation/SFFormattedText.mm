@interface SFFormattedText
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFormattedText)initWithCoder:(id)coder;
- (SFFormattedText)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFormattedText

- (SFFormattedText)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  text = [protobufCopy text];
  v13.receiver = self;
  v13.super_class = SFFormattedText;
  v6 = [(SFText *)&v13 initWithProtobuf:text];

  if (v6)
  {
    glyph = [protobufCopy glyph];

    if (glyph)
    {
      v8 = [SFImage alloc];
      glyph2 = [protobufCopy glyph];
      v10 = [(SFImage *)v8 initWithProtobuf:glyph2];
      [(SFFormattedText *)v6 setGlyph:v10];
    }

    if ([protobufCopy isEmphasized])
    {
      -[SFFormattedText setIsEmphasized:](v6, "setIsEmphasized:", [protobufCopy isEmphasized]);
    }

    if ([protobufCopy isBold])
    {
      -[SFFormattedText setIsBold:](v6, "setIsBold:", [protobufCopy isBold]);
    }

    if ([protobufCopy textColor])
    {
      -[SFFormattedText setTextColor:](v6, "setTextColor:", [protobufCopy textColor]);
    }

    if ([protobufCopy encapsulationStyle])
    {
      -[SFFormattedText setEncapsulationStyle:](v6, "setEncapsulationStyle:", [protobufCopy encapsulationStyle]);
    }

    v11 = v6;
  }

  return v6;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFFormattedText;
  v3 = [(SFText *)&v11 hash];
  glyph = [(SFFormattedText *)self glyph];
  v5 = [glyph hash];
  v6 = v5 ^ [(SFFormattedText *)self isEmphasized];
  v7 = v6 ^ [(SFFormattedText *)self isBold];
  v8 = v7 ^ [(SFFormattedText *)self textColor]^ v3;
  encapsulationStyle = [(SFFormattedText *)self encapsulationStyle];

  return v8 ^ encapsulationStyle;
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
    if ([(SFFormattedText *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v18.receiver = self;
      v18.super_class = SFFormattedText;
      if ([(SFText *)&v18 isEqual:equalCopy])
      {
        v7 = equalCopy;
        glyph = [(SFFormattedText *)self glyph];
        glyph2 = [(SFFormattedText *)v7 glyph];
        if ((glyph != 0) == (glyph2 == 0))
        {
          v12 = 0;
LABEL_19:

          goto LABEL_20;
        }

        glyph3 = [(SFFormattedText *)self glyph];
        if (!glyph3 || (-[SFFormattedText glyph](self, "glyph"), v3 = objc_claimAutoreleasedReturnValue(), -[SFFormattedText glyph](v7, "glyph"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          isEmphasized = [(SFFormattedText *)self isEmphasized];
          if (isEmphasized == [(SFFormattedText *)v7 isEmphasized]&& (v14 = [(SFFormattedText *)self isBold], v14 == [(SFFormattedText *)v7 isBold]) && (v15 = [(SFFormattedText *)self textColor], v15 == [(SFFormattedText *)v7 textColor]))
          {
            encapsulationStyle = [(SFFormattedText *)self encapsulationStyle];
            v11 = encapsulationStyle == [(SFFormattedText *)v7 encapsulationStyle];
            v12 = v11;
            if (!glyph3)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v11 = 0;
            v12 = 0;
            if (!glyph3)
            {
LABEL_18:

              goto LABEL_19;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFFormattedText;
  v4 = [(SFText *)&v8 copyWithZone:zone];
  glyph = [(SFFormattedText *)self glyph];
  v6 = [glyph copy];
  [v4 setGlyph:v6];

  [v4 setIsEmphasized:{-[SFFormattedText isEmphasized](self, "isEmphasized")}];
  [v4 setIsBold:{-[SFFormattedText isBold](self, "isBold")}];
  [v4 setTextColor:{-[SFFormattedText textColor](self, "textColor")}];
  [v4 setEncapsulationStyle:{-[SFFormattedText encapsulationStyle](self, "encapsulationStyle")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFormattedText alloc] initWithFacade:self];
  jsonData = [(_SFPBFormattedText *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFormattedText alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBFormattedText *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBFormattedText alloc] initWithFacade:self];
  data = [(_SFPBFormattedText *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFFormattedText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBFormattedText alloc] initWithData:v5];
  v7 = [(SFFormattedText *)self initWithProtobuf:v6];

  return v7;
}

@end