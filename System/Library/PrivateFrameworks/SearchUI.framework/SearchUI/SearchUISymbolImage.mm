@interface SearchUISymbolImage
+ (id)chevronImage;
+ (id)uiImageWithSymbolName:(id)a3 font:(id)a4 scale:(int64_t)a5 weight:(int64_t)a6 isTemplate:(BOOL)a7;
+ (id)uiImageWithSymbolName:(id)a3 font:(id)a4 scale:(int64_t)a5 weight:(int64_t)a6 isTemplate:(BOOL)a7 platformPrimaryColor:(id)a8 platformSecondaryColor:(id)a9 appearance:(id)a10 preferredFill:(int64_t)a11;
+ (id)uiImageWithSymbolName:(id)a3 font:(id)a4 scale:(int64_t)a5 weight:(int64_t)a6 isTemplate:(BOOL)a7 primaryColor:(int)a8 secondaryColor:(int)a9 appearance:(id)a10 preferredFill:(int64_t)a11;
- (BOOL)drawsOnBackground;
- (BOOL)isEqual:(id)a3;
- (SearchUISymbolImage)initWithSFImage:(id)a3;
- (SearchUISymbolImage)initWithSymbolName:(id)a3 font:(id)a4 scale:(int64_t)a5 weight:(int64_t)a6;
- (double)aspectRatio;
- (id)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4;
- (int)defaultCornerRoundingStyle;
- (unint64_t)hash;
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation SearchUISymbolImage

- (BOOL)drawsOnBackground
{
  if ([(SearchUISymbolImage *)self punchThroughBackground]|| [(SearchUISymbolImage *)self backgroundColor])
  {
    return 1;
  }

  v5 = [(SearchUISymbolImage *)self customBackgroundColor];
  v3 = v5 != 0;

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

- (SearchUISymbolImage)initWithSFImage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUISymbolImage;
  v5 = [(SearchUIImage *)&v9 initWithSFImage:v4];
  if (v5)
  {
    v6 = [v4 symbolName];
    [(SearchUISymbolImage *)v5 setSymbolName:v6];

    -[SearchUISymbolImage setPunchThroughBackground:](v5, "setPunchThroughBackground:", [v4 punchThroughBackground]);
    -[SearchUISymbolImage setBackgroundColor:](v5, "setBackgroundColor:", [v4 backgroundColor]);
    -[SearchUISymbolImage setPrimaryColor:](v5, "setPrimaryColor:", [v4 primaryColor]);
    -[SearchUISymbolImage setSecondaryColor:](v5, "setSecondaryColor:", [v4 secondaryColor]);
    -[SearchUISymbolImage setSpecifiedFillStyle:](v5, "setSpecifiedFillStyle:", [v4 fillStyle]);
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

- (SearchUISymbolImage)initWithSymbolName:(id)a3 font:(id)a4 scale:(int64_t)a5 weight:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = SearchUISymbolImage;
  v12 = [(SearchUISymbolImage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(SearchUISymbolImage *)v12 setSymbolName:v10];
    [(SearchUISymbolImage *)v13 setSymbolFont:v11];
    [(SearchUISymbolImage *)v13 setSymbolScale:a5];
    [(SearchUISymbolImage *)v13 setSymbolWeight:a6];
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
    v6 = [(SearchUISymbolImage *)self symbolName];
    v7 = [v5 uiImageWithSymbolName:v6];

    [v7 size];
    v9 = v8;
    [v7 size];
    v4 = v9 / v10;
  }

  return v4;
}

- (id)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4
{
  v4 = a4;
  v7 = [(SearchUISymbolImage *)self drawsOnBackground];
  v8 = [(SearchUISymbolImage *)self symbolFont];
  v9 = [(SearchUISymbolImage *)self symbolScale];
  if (!v8 && v7)
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
      v9 = 3;
    }

    else
    {
      [(SearchUISymbolImage *)self preferredSymbolFontSize];
      v9 = 0;
    }

    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:round(v11)];
  }

  [(SearchUISymbolImage *)self preferredFill];
  [(SearchUISymbolImage *)self specifiedFillStyle];
  if (v4)
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  v17 = [MEMORY[0x1E69D9108] appearanceWithStyle:v16];
  v18 = [(SearchUISymbolImage *)self customForegroundColor];
  if (v18 || ![(SearchUISymbolImage *)self primaryColor])
  {
    v19 = v18;
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
  v22 = [(SearchUISymbolImage *)self symbolName];
  v23 = [(SearchUISymbolImage *)self symbolWeight];
  v24 = [(SearchUIImage *)self isTemplate];
  v25 = [(SearchUISymbolImage *)self preferredFill];
  v26 = v24;
  v27 = v70;
  v28 = [v21 uiImageWithSymbolName:v22 font:v8 scale:v9 weight:v23 isTemplate:v26 platformPrimaryColor:v70 platformSecondaryColor:v20 appearance:v17 preferredFill:v25];

  [(SearchUIImage *)self size];
  if (v7)
  {
    v31 = v29;
    v32 = v30;
    if (v29 != *MEMORY[0x1E695F060] || v30 != *(MEMORY[0x1E695F060] + 8))
    {
      v33 = [(SearchUISymbolImage *)self customBackgroundColor];
      v34 = v33;
      v69 = a3;
      if (v33)
      {
        v35 = v33;
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
      v58 = [(SearchUISymbolImage *)self customForegroundColor];

      if (v58)
      {
        v59 = 0;
        v60 = v69;
      }

      else
      {
        v60 = v69;
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
        v61 = [(SearchUISymbolImage *)self primaryColor];
      }

      else
      {
        v61 = 7;
      }

      v62 = [(SearchUISymbolImage *)self customForegroundColor];
      v63 = v62;
      if (v62)
      {
        v64 = v62;
      }

      else
      {
        v64 = [v17 textColorForColor:{+[SearchUITLKConverters colorForSFColor:](SearchUITLKConverters, "colorForSFColor:", v61)}];
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

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  if ([(SearchUISymbolImage *)self drawsOnBackground])
  {
    v10.receiver = self;
    v10.super_class = SearchUISymbolImage;
    [(SearchUIImage *)&v10 loadImageWithScale:v5 isDarkStyle:v8 completionHandler:a3];
  }

  else
  {
    v9 = [(SearchUISymbolImage *)self loadImageWithScale:v5 isDarkStyle:a3];
    v8[2](v8, v9, 1);
  }
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (v7 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(SearchUIImage *)self sfImage];
      if (v9 || ([(SearchUIImage *)v8 sfImage], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v36.receiver = self;
        v36.super_class = SearchUISymbolImage;
        v10 = [(SearchUIImage *)&v36 isEqual:v8];
        if (v9)
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
      v11 = [(SearchUISymbolImage *)self symbolName];
      v12 = [(SearchUISymbolImage *)v8 symbolName];
      if (![v11 isEqualToString:v12])
      {
        v14 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v13 = [(SearchUISymbolImage *)self symbolFont];
      if (!v13 || (-[SearchUISymbolImage symbolFont](self, "symbolFont"), v4 = objc_claimAutoreleasedReturnValue(), -[SearchUISymbolImage symbolFont](v8, "symbolFont"), v5 = objc_claimAutoreleasedReturnValue(), ([v4 isEqual:v5] & 1) == 0))
      {
        v15 = [(SearchUISymbolImage *)self symbolFont];
        if (v15 || ([(SearchUISymbolImage *)v8 symbolFont], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
        {

LABEL_24:
          v14 = 0;
          goto LABEL_25;
        }
      }

      v16 = [(SearchUISymbolImage *)self symbolScale];
      if (v16 != [(SearchUISymbolImage *)v8 symbolScale])
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

      v35 = [(SearchUISymbolImage *)self customBackgroundColor];
      if (v35 && (-[SearchUISymbolImage customBackgroundColor](self, "customBackgroundColor"), v20 = objc_claimAutoreleasedReturnValue(), -[SearchUISymbolImage customBackgroundColor](v8, "customBackgroundColor"), v33 = v20, v34 = objc_claimAutoreleasedReturnValue(), ([v20 isEqual:?] & 1) != 0))
      {
        v31 = 0;
      }

      else
      {
        v22 = [(SearchUISymbolImage *)self customBackgroundColor];
        if (v22)
        {
          v14 = 0;
LABEL_44:

          if (!v35)
          {
LABEL_49:

LABEL_25:
            if (v13)
            {
            }

            goto LABEL_27;
          }

          v28 = v34;
LABEL_48:

          goto LABEL_49;
        }

        v23 = [(SearchUISymbolImage *)v8 customBackgroundColor];
        if (v23)
        {

          v14 = 0;
          goto LABEL_47;
        }

        v31 = 1;
      }

      v32 = [(SearchUISymbolImage *)self customForegroundColor];
      if (v32 && (-[SearchUISymbolImage customForegroundColor](self, "customForegroundColor"), v24 = objc_claimAutoreleasedReturnValue(), -[SearchUISymbolImage customForegroundColor](v8, "customForegroundColor"), v29 = objc_claimAutoreleasedReturnValue(), v30 = v24, ([v24 isEqual:?] & 1) != 0))
      {
        v14 = 1;
        v25 = v32;
      }

      else
      {
        v26 = [(SearchUISymbolImage *)self customForegroundColor];
        if (v26)
        {

          v14 = 0;
        }

        else
        {
          v27 = [(SearchUISymbolImage *)v8 customForegroundColor];
          v14 = v27 == 0;
        }

        v25 = v32;
        if (!v32)
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
        v22 = 0;
        goto LABEL_44;
      }

LABEL_47:
      v28 = v34;
      if (!v35)
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
  v3 = [(SearchUISymbolImage *)self symbolName];
  v4 = [v3 hash];
  v5 = [(SearchUISymbolImage *)self symbolFont];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SearchUISymbolImage symbolScale](self, "symbolScale")}];
  v8 = v6 ^ [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SearchUISymbolImage symbolWeight](self, "symbolWeight")}];
  v10 = [v9 hash];
  v11 = MEMORY[0x1E696AD98];
  [(SearchUISymbolImage *)self preferredSymbolFontSize];
  v12 = [v11 numberWithDouble:?];
  v13 = v8 ^ v10 ^ [v12 hash];
  v14 = [(SearchUISymbolImage *)self customBackgroundColor];
  v15 = [v14 hash];
  v16 = [(SearchUISymbolImage *)self customForegroundColor];
  v17 = v15 ^ [v16 hash];

  return v13 ^ v17;
}

+ (id)chevronImage
{
  v2 = objc_alloc(objc_opt_class());
  v3 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [v2 initWithSymbolName:@"chevron.forward" font:v3 scale:1 weight:*MEMORY[0x1E69DB980]];

  return v4;
}

+ (id)uiImageWithSymbolName:(id)a3 font:(id)a4 scale:(int64_t)a5 weight:(int64_t)a6 isTemplate:(BOOL)a7
{
  v7 = a7;
  v12 = MEMORY[0x1E69D9108];
  v13 = a4;
  v14 = a3;
  v15 = [v12 appearanceWithStyle:0];
  LODWORD(v18) = 0;
  v16 = [a1 uiImageWithSymbolName:v14 font:v13 scale:a5 weight:a6 isTemplate:v7 primaryColor:0 secondaryColor:v18 appearance:v15];

  return v16;
}

+ (id)uiImageWithSymbolName:(id)a3 font:(id)a4 scale:(int64_t)a5 weight:(int64_t)a6 isTemplate:(BOOL)a7 primaryColor:(int)a8 secondaryColor:(int)a9 appearance:(id)a10 preferredFill:(int64_t)a11
{
  v11 = *&a8;
  v23 = a7;
  v16 = a3;
  v17 = a4;
  v18 = a10;
  if (!v18)
  {
    v18 = [MEMORY[0x1E69D9108] appearanceWithStyle:0];
  }

  if (v11)
  {
    v19 = [v18 textColorForColor:{+[SearchUITLKConverters colorForSFColor:](SearchUITLKConverters, "colorForSFColor:", v11)}];
    if (a9)
    {
LABEL_5:
      v20 = [v18 textColorForColor:{+[SearchUITLKConverters colorForSFColor:](SearchUITLKConverters, "colorForSFColor:", a9)}];
      goto LABEL_8;
    }
  }

  else
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_5;
    }
  }

  v20 = 0;
LABEL_8:
  v21 = [a1 uiImageWithSymbolName:v16 font:v17 scale:a5 weight:a6 isTemplate:v23 platformPrimaryColor:v19 platformSecondaryColor:v20 appearance:v18 preferredFill:a11];

  return v21;
}

+ (id)uiImageWithSymbolName:(id)a3 font:(id)a4 scale:(int64_t)a5 weight:(int64_t)a6 isTemplate:(BOOL)a7 platformPrimaryColor:(id)a8 platformSecondaryColor:(id)a9 appearance:(id)a10 preferredFill:(int64_t)a11
{
  v12 = a7;
  v40 = a3;
  v16 = a4;
  v17 = a8;
  v18 = a9;
  v19 = objc_opt_new();
  v20 = v19;
  if (v17)
  {
    [v19 addObject:v17];
  }

  if (v18)
  {
    [v20 addObject:v18];
    [v20 addObject:v18];
  }

  if (a11 == -1 || ([MEMORY[0x1E69DCAB8] _systemImageNamed:v40 shape:-1 fill:a11], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v21 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v40];
  }

  v22 = [v21 _isHierarchicalColorSymbolImage];
  v23 = v22;
  if (v12)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  if (!v12 && v22)
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

  v25 = [v21 imageWithRenderingMode:{v24, v17}];

  if (v16)
  {
    v26 = MEMORY[0x1E69DCAD8];
    v27 = v16;
    [v16 pointSize];
    v28 = [v26 configurationWithPointSize:a6 weight:a5 scale:?];
  }

  else
  {
    v27 = 0;
    if (!a5)
    {
      goto LABEL_21;
    }

    v28 = [MEMORY[0x1E69DCAD8] configurationWithScale:a5];
  }

  a5 = v28;
LABEL_21:
  if (v12)
  {
    v29 = [MEMORY[0x1E69DCAD8] configurationPreferringMonochrome];
    v30 = v29;
    if (a5)
    {
      v31 = [a5 configurationByApplyingConfiguration:v29];

      a5 = v31;
    }

    else
    {
      a5 = v29;
    }
  }

  if (a5)
  {
    v32 = [v25 imageWithSymbolConfiguration:a5];

    v25 = v32;
  }

  if (!v12 && [v20 count])
  {
    if (v23 && [v20 count] >= 2)
    {
      v33 = [MEMORY[0x1E69DCAD8] _configurationWithHierarchicalColors:v20];
      v34 = [v25 imageWithSymbolConfiguration:v33];
    }

    else
    {
      v35 = MEMORY[0x1E69D9168];
      v33 = [v20 firstObject];
      v34 = [v35 applyTintColor:v33 toImage:v25];
    }

    v36 = v34;

    v25 = v36;
  }

  if (!v25)
  {
    v37 = SearchUIGeneralLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SearchUISymbolImage uiImageWithSymbolName:v40 font:v37 scale:? weight:? isTemplate:? platformPrimaryColor:? platformSecondaryColor:? appearance:? preferredFill:?];
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