@interface SearchUISymbolImage
+ (id)chevronImage;
+ (id)uiImageWithSymbolName:(id)name font:(id)font scale:(int64_t)scale weight:(int64_t)weight isTemplate:(BOOL)template;
+ (id)uiImageWithSymbolName:(id)name font:(id)font scale:(int64_t)scale weight:(int64_t)weight isTemplate:(BOOL)template platformPrimaryColor:(id)color platformSecondaryColor:(id)secondaryColor appearance:(id)self0 preferredFill:(int64_t)self1;
+ (id)uiImageWithSymbolName:(id)name font:(id)font scale:(int64_t)scale weight:(int64_t)weight isTemplate:(BOOL)template primaryColor:(int)color secondaryColor:(int)secondaryColor appearance:(id)self0 preferredFill:(int64_t)self1;
- (BOOL)drawsOnBackground;
- (BOOL)isEqual:(id)equal;
- (SearchUISymbolImage)initWithSFImage:(id)image;
- (SearchUISymbolImage)initWithSymbolName:(id)name font:(id)font scale:(int64_t)scale weight:(int64_t)weight;
- (double)aspectRatio;
- (id)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style;
- (int)defaultCornerRoundingStyle;
- (unint64_t)hash;
- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
@end

@implementation SearchUISymbolImage

- (BOOL)drawsOnBackground
{
  if ([(SearchUISymbolImage *)self punchThroughBackground]|| [(SearchUISymbolImage *)self backgroundColor])
  {
    return 1;
  }

  customBackgroundColor = [(SearchUISymbolImage *)self customBackgroundColor];
  v3 = customBackgroundColor != 0;

  return v3;
}

- (int)defaultCornerRoundingStyle
{
  if (![(SearchUISymbolImage *)self drawsOnBackground])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SearchUISymbolImage;
  return [(SearchUIImage *)&v4 defaultCornerRoundingStyle];
}

- (SearchUISymbolImage)initWithSFImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = SearchUISymbolImage;
  v5 = [(SearchUIImage *)&v9 initWithSFImage:imageCopy];
  if (v5)
  {
    symbolName = [imageCopy symbolName];
    [(SearchUISymbolImage *)v5 setSymbolName:symbolName];

    -[SearchUISymbolImage setPunchThroughBackground:](v5, "setPunchThroughBackground:", [imageCopy punchThroughBackground]);
    -[SearchUISymbolImage setBackgroundColor:](v5, "setBackgroundColor:", [imageCopy backgroundColor]);
    -[SearchUISymbolImage setPrimaryColor:](v5, "setPrimaryColor:", [imageCopy primaryColor]);
    -[SearchUISymbolImage setSecondaryColor:](v5, "setSecondaryColor:", [imageCopy secondaryColor]);
    -[SearchUISymbolImage setSpecifiedFillStyle:](v5, "setSpecifiedFillStyle:", [imageCopy fillStyle]);
    if ([(SearchUISymbolImage *)v5 punchThroughBackground]&& ![(SearchUISymbolImage *)v5 backgroundColor])
    {
      v7 = 1;
    }

    else
    {
      if (![(SearchUISymbolImage *)v5 primaryColor]&& ![(SearchUISymbolImage *)v5 secondaryColor])
      {
        goto LABEL_9;
      }

      v7 = 0;
    }

    [(SearchUISymbolImage *)v5 setIsTemplate:v7];
LABEL_9:
    [(SearchUISymbolImage *)v5 setSymbolScale:0];
    [(SearchUISymbolImage *)v5 setSymbolWeight:4];
    [(SearchUISymbolImage *)v5 setPreferredFill:-1];
  }

  return v5;
}

- (SearchUISymbolImage)initWithSymbolName:(id)name font:(id)font scale:(int64_t)scale weight:(int64_t)weight
{
  nameCopy = name;
  fontCopy = font;
  v15.receiver = self;
  v15.super_class = SearchUISymbolImage;
  v12 = [(SearchUISymbolImage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(SearchUISymbolImage *)v12 setSymbolName:nameCopy];
    [(SearchUISymbolImage *)v13 setSymbolFont:fontCopy];
    [(SearchUISymbolImage *)v13 setSymbolScale:scale];
    [(SearchUISymbolImage *)v13 setSymbolWeight:weight];
    [(SearchUISymbolImage *)v13 setPreferredFill:-1];
    [(SearchUISymbolImage *)v13 setIsTemplate:1];
  }

  return v13;
}

- (double)aspectRatio
{
  v12.receiver = self;
  v12.super_class = SearchUISymbolImage;
  [(SearchUIImage *)&v12 aspectRatio];
  v4 = v3;
  if (v3 == 0.0)
  {
    v5 = objc_opt_class();
    symbolName = [(SearchUISymbolImage *)self symbolName];
    v7 = [v5 uiImageWithSymbolName:symbolName];

    [v7 size];
    v9 = v8;
    [v7 size];
    v4 = v9 / v10;
  }

  return v4;
}

- (id)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style
{
  styleCopy = style;
  drawsOnBackground = [(SearchUISymbolImage *)self drawsOnBackground];
  symbolFont = [(SearchUISymbolImage *)self symbolFont];
  symbolScale = [(SearchUISymbolImage *)self symbolScale];
  if (!symbolFont && drawsOnBackground)
  {
    [(SearchUISymbolImage *)self preferredSymbolFontSize];
    if (v10 <= 0.0)
    {
      [(SearchUIImage *)self size];
      v13 = v12;
      [(SearchUIImage *)self size];
      if (v13 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      v11 = v15 * 0.32;
      symbolScale = 3;
    }

    else
    {
      [(SearchUISymbolImage *)self preferredSymbolFontSize];
      symbolScale = 0;
    }

    symbolFont = [MEMORY[0x1E69DB878] systemFontOfSize:round(v11)];
  }

  [(SearchUISymbolImage *)self preferredFill];
  [(SearchUISymbolImage *)self specifiedFillStyle];
  if (styleCopy)
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  v17 = [MEMORY[0x1E69D9108] appearanceWithStyle:v16];
  customForegroundColor = [(SearchUISymbolImage *)self customForegroundColor];
  if (customForegroundColor || ![(SearchUISymbolImage *)self primaryColor])
  {
    v19 = customForegroundColor;
  }

  else
  {
    v19 = [v17 textColorForColor:{+[SearchUITLKConverters colorForSFColor:](SearchUITLKConverters, "colorForSFColor:", -[SearchUISymbolImage primaryColor](self, "primaryColor"))}];
  }

  v70 = v19;

  if ([(SearchUISymbolImage *)self secondaryColor])
  {
    v20 = [v17 textColorForColor:{+[SearchUITLKConverters colorForSFColor:](SearchUITLKConverters, "colorForSFColor:", -[SearchUISymbolImage secondaryColor](self, "secondaryColor"))}];
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_opt_class();
  symbolName = [(SearchUISymbolImage *)self symbolName];
  symbolWeight = [(SearchUISymbolImage *)self symbolWeight];
  isTemplate = [(SearchUIImage *)self isTemplate];
  preferredFill = [(SearchUISymbolImage *)self preferredFill];
  v26 = isTemplate;
  v27 = v70;
  v28 = [v21 uiImageWithSymbolName:symbolName font:symbolFont scale:symbolScale weight:symbolWeight isTemplate:v26 platformPrimaryColor:v70 platformSecondaryColor:v20 appearance:v17 preferredFill:preferredFill];

  [(SearchUIImage *)self size];
  if (drawsOnBackground)
  {
    v31 = v29;
    v32 = v30;
    if (v29 != *MEMORY[0x1E695F060] || v30 != *(MEMORY[0x1E695F060] + 8))
    {
      customBackgroundColor = [(SearchUISymbolImage *)self customBackgroundColor];
      v34 = customBackgroundColor;
      scaleCopy = scale;
      if (customBackgroundColor)
      {
        v35 = customBackgroundColor;
      }

      else
      {
        v35 = [v17 textColorForColor:{+[SearchUITLKConverters colorForSFColor:](SearchUITLKConverters, "colorForSFColor:", -[SearchUISymbolImage backgroundColor](self, "backgroundColor"))}];
      }

      v36 = v35;

      v37 = MEMORY[0x1E69D91A8];
      [v28 size];
      [v37 idealImageSizeWithSize:? fittingSize:?];
      [v28 size];
      [v28 size];
      v39 = v38;
      v41 = v40;
      [v28 alignmentRectInsets];
      v43 = v42;
      v45 = v44;
      v47 = v39 - v44 - v46;
      v49 = v41 - v42 - v48;
      v73.origin.x = v44;
      v73.origin.y = v43;
      v73.size.width = v47;
      v73.size.height = v49;
      CGRectGetMinX(v73);
      v74.origin.x = v45;
      v74.origin.y = v43;
      v74.size.width = v47;
      v74.size.height = v49;
      CGRectGetWidth(v74);
      v75.origin.x = v45;
      v75.origin.y = v43;
      v75.size.width = v47;
      v75.size.height = v49;
      CGRectGetMinY(v75);
      v76.origin.x = v45;
      v76.origin.y = v43;
      v76.size.width = v47;
      v76.size.height = v49;
      CGRectGetHeight(v76);
      v77.origin.x = 0.0;
      v77.origin.y = 0.0;
      v77.size.width = v31;
      v77.size.height = v32;
      CGRectGetMidX(v77);
      UIRoundToScale();
      v51 = v50;
      v78.origin.x = 0.0;
      v78.origin.y = 0.0;
      v78.size.width = v31;
      v78.size.height = v32;
      CGRectGetMidY(v78);
      UIRoundToScale();
      v53 = v52;
      UIRoundToScale();
      v55 = v54;
      UIRoundToScale();
      v57 = v56;
      customForegroundColor2 = [(SearchUISymbolImage *)self customForegroundColor];

      if (customForegroundColor2)
      {
        v59 = 0;
        v60 = scaleCopy;
      }

      else
      {
        v60 = scaleCopy;
        if ([(SearchUISymbolImage *)self punchThroughBackground]&& ![(SearchUISymbolImage *)self primaryColor])
        {
          v59 = 23;
        }

        else
        {
          v59 = 20;
        }
      }

      v72.width = v31;
      v72.height = v32;
      UIGraphicsBeginImageContextWithOptions(v72, 0, v60);
      [v36 setFill];
      v79.origin.x = 0.0;
      v79.origin.y = 0.0;
      v79.size.width = v31;
      v79.size.height = v32;
      UIRectFill(v79);
      if ([(SearchUISymbolImage *)self primaryColor])
      {
        primaryColor = [(SearchUISymbolImage *)self primaryColor];
      }

      else
      {
        primaryColor = 7;
      }

      customForegroundColor3 = [(SearchUISymbolImage *)self customForegroundColor];
      v63 = customForegroundColor3;
      if (customForegroundColor3)
      {
        v64 = customForegroundColor3;
      }

      else
      {
        v64 = [v17 textColorForColor:{+[SearchUITLKConverters colorForSFColor:](SearchUITLKConverters, "colorForSFColor:", primaryColor)}];
      }

      v65 = v64;

      v66 = [v28 imageWithTintColor:v65];
      [v66 drawInRect:v59 blendMode:v51 alpha:{v53, v55, v57, 1.0}];
      v67 = UIGraphicsGetImageFromCurrentImageContext();

      UIGraphicsEndImageContext();
      v28 = v67;
      v27 = v70;
    }
  }

  return v28;
}

- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  styleCopy = style;
  handlerCopy = handler;
  if ([(SearchUISymbolImage *)self drawsOnBackground])
  {
    v10.receiver = self;
    v10.super_class = SearchUISymbolImage;
    [(SearchUIImage *)&v10 loadImageWithScale:styleCopy isDarkStyle:handlerCopy completionHandler:scale];
  }

  else
  {
    v9 = [(SearchUISymbolImage *)self loadImageWithScale:styleCopy isDarkStyle:scale];
    handlerCopy[2](handlerCopy, v9, 1);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      sfImage = [(SearchUIImage *)self sfImage];
      if (sfImage || ([(SearchUIImage *)v8 sfImage], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v36.receiver = self;
        v36.super_class = SearchUISymbolImage;
        v10 = [(SearchUIImage *)&v36 isEqual:v8];
        if (sfImage)
        {

          if (v10)
          {
            goto LABEL_7;
          }

LABEL_14:
          v14 = 0;
LABEL_28:

          goto LABEL_29;
        }

        if ((v10 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_7:
      symbolName = [(SearchUISymbolImage *)self symbolName];
      symbolName2 = [(SearchUISymbolImage *)v8 symbolName];
      if (![symbolName isEqualToString:symbolName2])
      {
        v14 = 0;
LABEL_27:

        goto LABEL_28;
      }

      symbolFont = [(SearchUISymbolImage *)self symbolFont];
      if (!symbolFont || (-[SearchUISymbolImage symbolFont](self, "symbolFont"), v4 = objc_claimAutoreleasedReturnValue(), -[SearchUISymbolImage symbolFont](v8, "symbolFont"), v5 = objc_claimAutoreleasedReturnValue(), ([v4 isEqual:v5] & 1) == 0))
      {
        symbolFont2 = [(SearchUISymbolImage *)self symbolFont];
        if (symbolFont2 || ([(SearchUISymbolImage *)v8 symbolFont], (symbolFont2 = objc_claimAutoreleasedReturnValue()) != 0))
        {

LABEL_24:
          v14 = 0;
          goto LABEL_25;
        }
      }

      symbolScale = [(SearchUISymbolImage *)self symbolScale];
      if (symbolScale != [(SearchUISymbolImage *)v8 symbolScale])
      {
        goto LABEL_24;
      }

      [(SearchUISymbolImage *)self preferredSymbolFontSize];
      v18 = v17;
      [(SearchUISymbolImage *)v8 preferredSymbolFontSize];
      if (v18 - v19 >= 2.22044605e-16)
      {
        goto LABEL_24;
      }

      customBackgroundColor = [(SearchUISymbolImage *)self customBackgroundColor];
      if (customBackgroundColor && (-[SearchUISymbolImage customBackgroundColor](self, "customBackgroundColor"), v20 = objc_claimAutoreleasedReturnValue(), -[SearchUISymbolImage customBackgroundColor](v8, "customBackgroundColor"), v33 = v20, v34 = objc_claimAutoreleasedReturnValue(), ([v20 isEqual:?] & 1) != 0))
      {
        v31 = 0;
      }

      else
      {
        customBackgroundColor2 = [(SearchUISymbolImage *)self customBackgroundColor];
        if (customBackgroundColor2)
        {
          v14 = 0;
LABEL_44:

          if (!customBackgroundColor)
          {
LABEL_49:

LABEL_25:
            if (symbolFont)
            {
            }

            goto LABEL_27;
          }

          v28 = v34;
LABEL_48:

          goto LABEL_49;
        }

        customBackgroundColor3 = [(SearchUISymbolImage *)v8 customBackgroundColor];
        if (customBackgroundColor3)
        {

          v14 = 0;
          goto LABEL_47;
        }

        v31 = 1;
      }

      customForegroundColor = [(SearchUISymbolImage *)self customForegroundColor];
      if (customForegroundColor && (-[SearchUISymbolImage customForegroundColor](self, "customForegroundColor"), v24 = objc_claimAutoreleasedReturnValue(), -[SearchUISymbolImage customForegroundColor](v8, "customForegroundColor"), v29 = objc_claimAutoreleasedReturnValue(), v30 = v24, ([v24 isEqual:?] & 1) != 0))
      {
        v14 = 1;
        v25 = customForegroundColor;
      }

      else
      {
        customForegroundColor2 = [(SearchUISymbolImage *)self customForegroundColor];
        if (customForegroundColor2)
        {

          v14 = 0;
        }

        else
        {
          customForegroundColor3 = [(SearchUISymbolImage *)v8 customForegroundColor];
          v14 = customForegroundColor3 == 0;
        }

        v25 = customForegroundColor;
        if (!customForegroundColor)
        {
          if (v31)
          {
            goto LABEL_43;
          }

          goto LABEL_47;
        }
      }

      if (v31)
      {
LABEL_43:
        customBackgroundColor2 = 0;
        goto LABEL_44;
      }

LABEL_47:
      v28 = v34;
      if (!customBackgroundColor)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    v14 = 0;
  }

LABEL_29:

  return v14;
}

- (unint64_t)hash
{
  symbolName = [(SearchUISymbolImage *)self symbolName];
  v4 = [symbolName hash];
  symbolFont = [(SearchUISymbolImage *)self symbolFont];
  v6 = [symbolFont hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SearchUISymbolImage symbolScale](self, "symbolScale")}];
  v8 = v6 ^ [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SearchUISymbolImage symbolWeight](self, "symbolWeight")}];
  v10 = [v9 hash];
  v11 = MEMORY[0x1E696AD98];
  [(SearchUISymbolImage *)self preferredSymbolFontSize];
  v12 = [v11 numberWithDouble:?];
  v13 = v8 ^ v10 ^ [v12 hash];
  customBackgroundColor = [(SearchUISymbolImage *)self customBackgroundColor];
  v15 = [customBackgroundColor hash];
  customForegroundColor = [(SearchUISymbolImage *)self customForegroundColor];
  v17 = v15 ^ [customForegroundColor hash];

  return v13 ^ v17;
}

+ (id)chevronImage
{
  v2 = objc_alloc(objc_opt_class());
  v3 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [v2 initWithSymbolName:@"chevron.forward" font:v3 scale:1 weight:*MEMORY[0x1E69DB980]];

  return v4;
}

+ (id)uiImageWithSymbolName:(id)name font:(id)font scale:(int64_t)scale weight:(int64_t)weight isTemplate:(BOOL)template
{
  templateCopy = template;
  v12 = MEMORY[0x1E69D9108];
  fontCopy = font;
  nameCopy = name;
  v15 = [v12 appearanceWithStyle:0];
  LODWORD(v18) = 0;
  v16 = [self uiImageWithSymbolName:nameCopy font:fontCopy scale:scale weight:weight isTemplate:templateCopy primaryColor:0 secondaryColor:v18 appearance:v15];

  return v16;
}

+ (id)uiImageWithSymbolName:(id)name font:(id)font scale:(int64_t)scale weight:(int64_t)weight isTemplate:(BOOL)template primaryColor:(int)color secondaryColor:(int)secondaryColor appearance:(id)self0 preferredFill:(int64_t)self1
{
  v11 = *&color;
  templateCopy = template;
  nameCopy = name;
  fontCopy = font;
  appearanceCopy = appearance;
  if (!appearanceCopy)
  {
    appearanceCopy = [MEMORY[0x1E69D9108] appearanceWithStyle:0];
  }

  if (v11)
  {
    v19 = [appearanceCopy textColorForColor:{+[SearchUITLKConverters colorForSFColor:](SearchUITLKConverters, "colorForSFColor:", v11)}];
    if (secondaryColor)
    {
LABEL_5:
      v20 = [appearanceCopy textColorForColor:{+[SearchUITLKConverters colorForSFColor:](SearchUITLKConverters, "colorForSFColor:", secondaryColor)}];
      goto LABEL_8;
    }
  }

  else
  {
    v19 = 0;
    if (secondaryColor)
    {
      goto LABEL_5;
    }
  }

  v20 = 0;
LABEL_8:
  v21 = [self uiImageWithSymbolName:nameCopy font:fontCopy scale:scale weight:weight isTemplate:templateCopy platformPrimaryColor:v19 platformSecondaryColor:v20 appearance:appearanceCopy preferredFill:fill];

  return v21;
}

+ (id)uiImageWithSymbolName:(id)name font:(id)font scale:(int64_t)scale weight:(int64_t)weight isTemplate:(BOOL)template platformPrimaryColor:(id)color platformSecondaryColor:(id)secondaryColor appearance:(id)self0 preferredFill:(int64_t)self1
{
  templateCopy = template;
  nameCopy = name;
  fontCopy = font;
  colorCopy = color;
  secondaryColorCopy = secondaryColor;
  v19 = objc_opt_new();
  v20 = v19;
  if (colorCopy)
  {
    [v19 addObject:colorCopy];
  }

  if (secondaryColorCopy)
  {
    [v20 addObject:secondaryColorCopy];
    [v20 addObject:secondaryColorCopy];
  }

  if (fill == -1 || ([MEMORY[0x1E69DCAB8] _systemImageNamed:nameCopy shape:-1 fill:fill], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v21 = [MEMORY[0x1E69DCAB8] _systemImageNamed:nameCopy];
  }

  _isHierarchicalColorSymbolImage = [v21 _isHierarchicalColorSymbolImage];
  v23 = _isHierarchicalColorSymbolImage;
  if (templateCopy)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  if (!templateCopy && _isHierarchicalColorSymbolImage)
  {
    if ([v20 count] <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  v25 = [v21 imageWithRenderingMode:{v24, colorCopy}];

  if (fontCopy)
  {
    v26 = MEMORY[0x1E69DCAD8];
    v27 = fontCopy;
    [fontCopy pointSize];
    v28 = [v26 configurationWithPointSize:weight weight:scale scale:?];
  }

  else
  {
    v27 = 0;
    if (!scale)
    {
      goto LABEL_21;
    }

    v28 = [MEMORY[0x1E69DCAD8] configurationWithScale:scale];
  }

  scale = v28;
LABEL_21:
  if (templateCopy)
  {
    configurationPreferringMonochrome = [MEMORY[0x1E69DCAD8] configurationPreferringMonochrome];
    v30 = configurationPreferringMonochrome;
    if (scale)
    {
      v31 = [scale configurationByApplyingConfiguration:configurationPreferringMonochrome];

      scale = v31;
    }

    else
    {
      scale = configurationPreferringMonochrome;
    }
  }

  if (scale)
  {
    v32 = [v25 imageWithSymbolConfiguration:scale];

    v25 = v32;
  }

  if (!templateCopy && [v20 count])
  {
    if (v23 && [v20 count] >= 2)
    {
      firstObject = [MEMORY[0x1E69DCAD8] _configurationWithHierarchicalColors:v20];
      v34 = [v25 imageWithSymbolConfiguration:firstObject];
    }

    else
    {
      v35 = MEMORY[0x1E69D9168];
      firstObject = [v20 firstObject];
      v34 = [v35 applyTintColor:firstObject toImage:v25];
    }

    v36 = v34;

    v25 = v36;
  }

  if (!v25)
  {
    v37 = SearchUIGeneralLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SearchUISymbolImage uiImageWithSymbolName:nameCopy font:v37 scale:? weight:? isTemplate:? platformPrimaryColor:? platformSecondaryColor:? appearance:? preferredFill:?];
    }
  }

  return v25;
}

+ (void)uiImageWithSymbolName:(uint64_t)a1 font:(NSObject *)a2 scale:weight:isTemplate:platformPrimaryColor:platformSecondaryColor:appearance:preferredFill:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Symbol named %@ not found", &v2, 0xCu);
}

@end