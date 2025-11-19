@interface VUIMonogramDescription
- (BOOL)isEqual:(id)a3;
- (CGPoint)specialOffsetForString:(id)a3;
- (CGSize)defaultImageSize;
- (CGSize)size;
- (UIEdgeInsets)padding;
- (VUIMonogramDescription)initWithText:(id)a3 imageURL:(id)a4 font:(id)a5;
- (id)copyWithType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unint64_t)preferedMonogramType;
@end

@implementation VUIMonogramDescription

- (VUIMonogramDescription)initWithText:(id)a3 imageURL:(id)a4 font:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = VUIMonogramDescription;
  v11 = [(VUIMonogramDescription *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_shouldFallBackToSilhouette = 1;
    v13 = [v8 copy];
    text = v12->_text;
    v12->_text = v13;

    v15 = [v9 copy];
    imageURL = v12->_imageURL;
    v12->_imageURL = v15;

    objc_storeStrong(&v12->_font, a5);
    if (!v12->_font)
    {
      v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
      font = v12->_font;
      v12->_font = v17;
    }

    v12->_scaleMode = 3;
    v12->_optimizedImageRendering = 1;
  }

  return v12;
}

- (id)copyWithType:(unint64_t)a3
{
  if ([(VUIMonogramDescription *)self preferedMonogramType]<= a3)
  {
    return 0;
  }

  v5 = [(VUIMonogramDescription *)self copy];
  v6 = v5;
  if (a3 <= 2)
  {
    v7 = *(v5 + 24);
    *(v5 + 24) = 0;

    if (a3 != 2)
    {
      v8 = v6[2];
      v6[2] = 0;

      if (!a3)
      {
        [v6 setShouldFallBackToSilhouette:0];
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VUIMonogramDescription allocWithZone:a3];
  v5 = [(VUIMonogramDescription *)self text];
  v6 = [(VUIMonogramDescription *)self imageURL];
  v7 = [(VUIMonogramDescription *)self font];
  v8 = [(VUIMonogramDescription *)v4 initWithText:v5 imageURL:v6 font:v7];

  [(VUIMonogramDescription *)self size];
  [(VUIMonogramDescription *)v8 setSize:?];
  [(VUIMonogramDescription *)self defaultImageSize];
  [(VUIMonogramDescription *)v8 setDefaultImageSize:?];
  v9 = [(VUIMonogramDescription *)self specialOffsetByFirstLetter];
  [(VUIMonogramDescription *)v8 setSpecialOffsetByFirstLetter:v9];

  [(VUIMonogramDescription *)self padding];
  [(VUIMonogramDescription *)v8 setPadding:?];
  [(VUIMonogramDescription *)v8 setScaleMode:[(VUIMonogramDescription *)self scaleMode]];
  v10 = [(VUIMonogramDescription *)self backgroundColor];
  [(VUIMonogramDescription *)v8 setBackgroundColor:v10];

  v11 = [(VUIMonogramDescription *)self textColor];
  [(VUIMonogramDescription *)v8 setTextColor:v11];

  [(VUIMonogramDescription *)self upscaleAdjustment];
  [(VUIMonogramDescription *)v8 setUpscaleAdjustment:?];
  [(VUIMonogramDescription *)self cornerRadius];
  [(VUIMonogramDescription *)v8 setCornerRadius:?];
  v12 = [(VUIMonogramDescription *)self fillColor];
  [(VUIMonogramDescription *)v8 setFillColor:v12];

  v13 = [(VUIMonogramDescription *)self gradientStartColor];
  [(VUIMonogramDescription *)v8 setGradientStartColor:v13];

  v14 = [(VUIMonogramDescription *)self gradientEndColor];
  [(VUIMonogramDescription *)v8 setGradientEndColor:v14];

  [(VUIMonogramDescription *)v8 setShouldFallBackToSilhouette:[(VUIMonogramDescription *)self shouldFallBackToSilhouette]];
  [(VUIMonogramDescription *)self borderWidth];
  [(VUIMonogramDescription *)v8 setBorderWidth:?];
  v15 = [(VUIMonogramDescription *)self borderColor];
  [(VUIMonogramDescription *)v8 setBorderColor:v15];

  [(VUIMonogramDescription *)v8 setOptimizedImageRendering:[(VUIMonogramDescription *)self optimizedImageRendering]];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(VUIMonogramDescription *)self text];
    v9 = [v7 text];
    if (v8 != v9)
    {
      v3 = [(VUIMonogramDescription *)self text];
      v4 = [v7 text];
      if (![v3 isEqual:v4])
      {
        v10 = 0;
        goto LABEL_20;
      }
    }

    v11 = [(VUIMonogramDescription *)self imageURL];
    v12 = [v7 imageURL];
    if (v11 != v12)
    {
      v13 = [(VUIMonogramDescription *)self imageURL];
      v86 = [v7 imageURL];
      v87 = v13;
      if (![v13 isEqual:?])
      {
        v10 = 0;
        goto LABEL_17;
      }
    }

    [(VUIMonogramDescription *)self size];
    v15 = v14;
    v17 = v16;
    [v7 size];
    if (v15 != v19)
    {
      goto LABEL_15;
    }

    if (v17 != v18)
    {
      goto LABEL_15;
    }

    [(VUIMonogramDescription *)self defaultImageSize];
    v21 = v20;
    v23 = v22;
    [v7 defaultImageSize];
    if (v21 != v25 || v23 != v24)
    {
      goto LABEL_15;
    }

    v26 = [(VUIMonogramDescription *)self specialOffsetByFirstLetter];
    v27 = [v7 specialOffsetByFirstLetter];
    if (v26 != v27 || (v85 = v27, -[VUIMonogramDescription padding](self, "padding"), v31 = v30, v33 = v32, v35 = v34, v37 = v36, [v7 padding], v27 = v85, v33 != v41) || v31 != v38 || v37 != v40 || v35 != v39 || (v83 = -[VUIMonogramDescription scaleMode](self, "scaleMode"), v42 = v83 == objc_msgSend(v7, "scaleMode"), v27 = v85, !v42))
    {

LABEL_15:
      v10 = 0;
      v28 = 0;
      goto LABEL_16;
    }

    v84 = [(VUIMonogramDescription *)self backgroundColor];
    v82 = [v7 backgroundColor];
    v80 = v26;
    if (v84 != v82)
    {
      v79 = [(VUIMonogramDescription *)self backgroundColor];
      v76 = [v7 backgroundColor];
      if (![v79 isEqual:?])
      {
        v10 = 0;
        v43 = v84;
        goto LABEL_62;
      }
    }

    v81 = [(VUIMonogramDescription *)self textColor];
    v78 = [v7 textColor];
    if (v81 != v78)
    {
      v77 = [(VUIMonogramDescription *)self textColor];
      v75 = [v7 textColor];
      if (![v77 isEqual:?])
      {
        v10 = 0;
        v44 = v78;
LABEL_60:

LABEL_61:
        v43 = v84;
        if (v84 == v82)
        {
LABEL_63:

          v28 = v10;
LABEL_16:
          if (v11 == v12)
          {

            v10 = v28;
LABEL_19:
            if (v8 == v9)
            {
LABEL_21:

              goto LABEL_22;
            }

LABEL_20:

            goto LABEL_21;
          }

LABEL_17:

          goto LABEL_19;
        }

LABEL_62:

        goto LABEL_63;
      }
    }

    [(VUIMonogramDescription *)self upscaleAdjustment];
    v46 = v45;
    [v7 upscaleAdjustment];
    if (v46 != v47 || (-[VUIMonogramDescription cornerRadius](self, "cornerRadius"), v49 = v48, [v7 cornerRadius], v49 != v50))
    {
      v10 = 0;
      goto LABEL_59;
    }

    v74 = [(VUIMonogramDescription *)self fillColor];
    v72 = [v7 fillColor];
    if (v74 != v72)
    {
      v71 = [(VUIMonogramDescription *)self fillColor];
      v67 = [v7 fillColor];
      if (![v71 isEqual:?])
      {
        v10 = 0;
        v51 = v72;
        goto LABEL_57;
      }
    }

    v73 = [(VUIMonogramDescription *)self gradientStartColor];
    v69 = [v7 gradientStartColor];
    if (v73 != v69)
    {
      v68 = [(VUIMonogramDescription *)self gradientStartColor];
      v64 = [v7 gradientStartColor];
      if (![v68 isEqual:?])
      {
        v10 = 0;
        v52 = v69;
LABEL_55:

LABEL_56:
        v51 = v72;
        if (v74 == v72)
        {
LABEL_58:

LABEL_59:
          v44 = v78;
          if (v81 == v78)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

LABEL_57:

        goto LABEL_58;
      }
    }

    v70 = [(VUIMonogramDescription *)self gradientEndColor];
    v66 = [v7 gradientEndColor];
    if (v70 == v66 || (-[VUIMonogramDescription gradientEndColor](self, "gradientEndColor"), v65 = objc_claimAutoreleasedReturnValue(), [v7 gradientEndColor], v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "isEqual:")))
    {
      v54 = [(VUIMonogramDescription *)self shouldFallBackToSilhouette];
      if (v54 == [v7 shouldFallBackToSilhouette] && (-[VUIMonogramDescription borderWidth](self, "borderWidth"), v56 = v55, objc_msgSend(v7, "borderWidth"), v56 == v57))
      {
        v58 = [(VUIMonogramDescription *)self borderColor];
        v61 = [v7 borderColor];
        v62 = v58;
        if (v58 == v61)
        {

          v10 = 1;
        }

        else
        {
          v59 = [(VUIMonogramDescription *)self borderColor];
          v60 = [v7 borderColor];
          v10 = [v59 isEqual:v60];
        }
      }

      else
      {
        v10 = 0;
      }

      v53 = v66;
      if (v70 == v66)
      {
LABEL_54:

        v52 = v69;
        if (v73 == v69)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v10 = 0;
      v53 = v66;
    }

    goto LABEL_54;
  }

  v10 = 0;
LABEL_22:

  return v10;
}

- (CGPoint)specialOffsetForString:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v7 = [(VUIMonogramDescription *)self specialOffsetByFirstLetter];
  if (v7 && [v4 length])
  {
    v8 = [v4 substringToIndex:1];
    v9 = [v7 objectForKeyedSubscript:v8];
    [v9 CGPointValue];
    v5 = v10;
    v6 = v11;
  }

  v12 = v5;
  v13 = v6;
  result.y = v13;
  result.x = v12;
  return result;
}

- (unint64_t)hash
{
  v3 = [(VUIMonogramDescription *)self text];
  if (v3)
  {
    v4 = [(VUIMonogramDescription *)self text];
    v5 = [v4 hash];
  }

  else
  {
    v4 = [(VUIMonogramDescription *)self imageURL];
    if (v4)
    {
      v7 = [(VUIMonogramDescription *)self imageURL];
      v6 = [v7 hash];

      goto LABEL_6;
    }

    v9.receiver = self;
    v9.super_class = VUIMonogramDescription;
    v5 = [(VUIMonogramDescription *)&v9 hash];
  }

  v6 = v5;
LABEL_6:

  return v6;
}

- (unint64_t)preferedMonogramType
{
  v3 = [(VUIMonogramDescription *)self imageURL];
  if (v3)
  {

    goto LABEL_4;
  }

  if ([(VUIMonogramDescription *)self isUsingLibraryImageLoader])
  {
LABEL_4:
    v4 = [(VUIMonogramDescription *)self imageURL];
    v5 = [v4 vuicore_isResourceOrSymbolURL];

    if (v5)
    {
      return 3;
    }

    v7 = [(VUIMonogramDescription *)self imageURL];
    v8 = [_VUIMonogramAppleAccountImageGenerator isAppleAccountsURL:v7];

    if (v8)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  v9 = [(VUIMonogramDescription *)self text];
  v10 = [v9 length];

  if (v10)
  {
    return 2;
  }

  else
  {
    return [(VUIMonogramDescription *)self shouldFallBackToSilhouette];
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)defaultImageSize
{
  width = self->_defaultImageSize.width;
  height = self->_defaultImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end