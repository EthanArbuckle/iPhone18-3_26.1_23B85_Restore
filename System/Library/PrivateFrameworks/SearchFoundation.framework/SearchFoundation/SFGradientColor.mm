@interface SFGradientColor
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFGradientColor)initWithCoder:(id)a3;
- (SFGradientColor)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFGradientColor

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFGradientColor;
  v3 = [(SFColor *)&v8 hash];
  v4 = [(SFGradientColor *)self colors];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFGradientColor *)self gradientType];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFGradientColor *)v6 isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFGradientColor;
      if ([(SFColor *)&v14 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFGradientColor *)self colors];
        v9 = [(SFGradientColor *)v7 colors];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        v10 = [(SFGradientColor *)self colors];
        if (!v10 || (-[SFGradientColor colors](self, "colors"), v3 = objc_claimAutoreleasedReturnValue(), -[SFGradientColor colors](v7, "colors"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFGradientColor *)self gradientType];
          v11 = v12 == [(SFGradientColor *)v7 gradientType];
          if (!v10)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_13;
      }
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFGradientColor;
  v4 = [(SFColor *)&v8 copyWithZone:a3];
  v5 = [(SFGradientColor *)self colors];
  v6 = [v5 copy];
  [v4 setColors:v6];

  [v4 setGradientType:{-[SFGradientColor gradientType](self, "gradientType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBGradientColor alloc] initWithFacade:self];
  v3 = [(_SFPBGradientColor *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBGradientColor alloc] initWithFacade:self];
  v3 = [(_SFPBGradientColor *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFGradientColor;
  [(SFColor *)&v3 encodeWithCoder:a3];
}

- (SFGradientColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFGradientColor *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBColor alloc] initWithData:v6];
  v8 = [[SFColor alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFColor *)v8 colors];
    [(SFGradientColor *)v5 setColors:v9];

    [(SFGradientColor *)v5 setGradientType:[(SFColor *)v8 gradientType]];
    [(SFColor *)v8 redComponent];
    [(SFColor *)v5 setRedComponent:?];
    [(SFColor *)v8 greenComponent];
    [(SFColor *)v5 setGreenComponent:?];
    [(SFColor *)v8 blueComponent];
    [(SFColor *)v5 setBlueComponent:?];
    [(SFColor *)v8 alphaComponent];
    [(SFColor *)v5 setAlphaComponent:?];
    [(SFColor *)v5 setColorTintStyle:[(SFColor *)v8 colorTintStyle]];
    v10 = [(SFColor *)v8 darkModeColor];
    [(SFColor *)v5 setDarkModeColor:v10];
  }

  return v5;
}

- (SFGradientColor)initWithProtobuf:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SFGradientColor;
  v5 = [(SFGradientColor *)&v21 init];
  if (v5)
  {
    v6 = [v4 colors];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v4 colors];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFColor alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(SFGradientColor *)v5 setColors:v7];
    if ([v4 gradientType])
    {
      -[SFGradientColor setGradientType:](v5, "setGradientType:", [v4 gradientType]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end