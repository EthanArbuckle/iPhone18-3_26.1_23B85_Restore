@interface SFGradientColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFGradientColor)initWithCoder:(id)coder;
- (SFGradientColor)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFGradientColor

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFGradientColor;
  v3 = [(SFColor *)&v8 hash];
  colors = [(SFGradientColor *)self colors];
  v5 = [colors hash];
  v6 = v5 ^ [(SFGradientColor *)self gradientType];

  return v6 ^ v3;
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
    if ([(SFGradientColor *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFGradientColor;
      if ([(SFColor *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        colors = [(SFGradientColor *)self colors];
        colors2 = [(SFGradientColor *)v7 colors];
        if ((colors != 0) == (colors2 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        colors3 = [(SFGradientColor *)self colors];
        if (!colors3 || (-[SFGradientColor colors](self, "colors"), v3 = objc_claimAutoreleasedReturnValue(), -[SFGradientColor colors](v7, "colors"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          gradientType = [(SFGradientColor *)self gradientType];
          v11 = gradientType == [(SFGradientColor *)v7 gradientType];
          if (!colors3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFGradientColor;
  v4 = [(SFColor *)&v8 copyWithZone:zone];
  colors = [(SFGradientColor *)self colors];
  v6 = [colors copy];
  [v4 setColors:v6];

  [v4 setGradientType:{-[SFGradientColor gradientType](self, "gradientType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBGradientColor alloc] initWithFacade:self];
  jsonData = [(_SFPBGradientColor *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBGradientColor alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBGradientColor *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFGradientColor;
  [(SFColor *)&v3 encodeWithCoder:coder];
}

- (SFGradientColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFGradientColor *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBColor alloc] initWithData:v6];
  v8 = [[SFColor alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colors = [(SFColor *)v8 colors];
    [(SFGradientColor *)v5 setColors:colors];

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
    darkModeColor = [(SFColor *)v8 darkModeColor];
    [(SFColor *)v5 setDarkModeColor:darkModeColor];
  }

  return v5;
}

- (SFGradientColor)initWithProtobuf:(id)protobuf
{
  v23 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v21.receiver = self;
  v21.super_class = SFGradientColor;
  v5 = [(SFGradientColor *)&v21 init];
  if (v5)
  {
    colors = [protobufCopy colors];
    if (colors)
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
    colors2 = [protobufCopy colors];
    v9 = [colors2 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(colors2);
          }

          v13 = [[SFColor alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [colors2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(SFGradientColor *)v5 setColors:v7];
    if ([protobufCopy gradientType])
    {
      -[SFGradientColor setGradientType:](v5, "setGradientType:", [protobufCopy gradientType]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end