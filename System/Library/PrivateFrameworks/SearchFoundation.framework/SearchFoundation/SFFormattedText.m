@interface SFFormattedText
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFormattedText)initWithCoder:(id)a3;
- (SFFormattedText)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFFormattedText

- (SFFormattedText)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v13.receiver = self;
  v13.super_class = SFFormattedText;
  v6 = [(SFText *)&v13 initWithProtobuf:v5];

  if (v6)
  {
    v7 = [v4 glyph];

    if (v7)
    {
      v8 = [SFImage alloc];
      v9 = [v4 glyph];
      v10 = [(SFImage *)v8 initWithProtobuf:v9];
      [(SFFormattedText *)v6 setGlyph:v10];
    }

    if ([v4 isEmphasized])
    {
      -[SFFormattedText setIsEmphasized:](v6, "setIsEmphasized:", [v4 isEmphasized]);
    }

    if ([v4 isBold])
    {
      -[SFFormattedText setIsBold:](v6, "setIsBold:", [v4 isBold]);
    }

    if ([v4 textColor])
    {
      -[SFFormattedText setTextColor:](v6, "setTextColor:", [v4 textColor]);
    }

    if ([v4 encapsulationStyle])
    {
      -[SFFormattedText setEncapsulationStyle:](v6, "setEncapsulationStyle:", [v4 encapsulationStyle]);
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
  v4 = [(SFFormattedText *)self glyph];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFFormattedText *)self isEmphasized];
  v7 = v6 ^ [(SFFormattedText *)self isBold];
  v8 = v7 ^ [(SFFormattedText *)self textColor]^ v3;
  v9 = [(SFFormattedText *)self encapsulationStyle];

  return v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFFormattedText *)v6 isMemberOfClass:objc_opt_class()])
    {
      v18.receiver = self;
      v18.super_class = SFFormattedText;
      if ([(SFText *)&v18 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFFormattedText *)self glyph];
        v9 = [(SFFormattedText *)v7 glyph];
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
LABEL_19:

          goto LABEL_20;
        }

        v10 = [(SFFormattedText *)self glyph];
        if (!v10 || (-[SFFormattedText glyph](self, "glyph"), v3 = objc_claimAutoreleasedReturnValue(), -[SFFormattedText glyph](v7, "glyph"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v13 = [(SFFormattedText *)self isEmphasized];
          if (v13 == [(SFFormattedText *)v7 isEmphasized]&& (v14 = [(SFFormattedText *)self isBold], v14 == [(SFFormattedText *)v7 isBold]) && (v15 = [(SFFormattedText *)self textColor], v15 == [(SFFormattedText *)v7 textColor]))
          {
            v16 = [(SFFormattedText *)self encapsulationStyle];
            v11 = v16 == [(SFFormattedText *)v7 encapsulationStyle];
            v12 = v11;
            if (!v10)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v11 = 0;
            v12 = 0;
            if (!v10)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFFormattedText;
  v4 = [(SFText *)&v8 copyWithZone:a3];
  v5 = [(SFFormattedText *)self glyph];
  v6 = [v5 copy];
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
  v3 = [(_SFPBFormattedText *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFormattedText alloc] initWithFacade:self];
  v3 = [(_SFPBFormattedText *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBFormattedText alloc] initWithFacade:self];
  v5 = [(_SFPBFormattedText *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFFormattedText)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBFormattedText alloc] initWithData:v5];
  v7 = [(SFFormattedText *)self initWithProtobuf:v6];

  return v7;
}

@end