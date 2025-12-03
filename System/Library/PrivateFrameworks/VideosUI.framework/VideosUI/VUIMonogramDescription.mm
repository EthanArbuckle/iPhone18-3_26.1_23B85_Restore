@interface VUIMonogramDescription
- (BOOL)isEqual:(id)equal;
- (CGPoint)specialOffsetForString:(id)string;
- (CGSize)defaultImageSize;
- (CGSize)size;
- (UIEdgeInsets)padding;
- (VUIMonogramDescription)initWithText:(id)text imageURL:(id)l font:(id)font;
- (id)copyWithType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)preferedMonogramType;
@end

@implementation VUIMonogramDescription

- (VUIMonogramDescription)initWithText:(id)text imageURL:(id)l font:(id)font
{
  textCopy = text;
  lCopy = l;
  fontCopy = font;
  v20.receiver = self;
  v20.super_class = VUIMonogramDescription;
  v11 = [(VUIMonogramDescription *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_shouldFallBackToSilhouette = 1;
    v13 = [textCopy copy];
    text = v12->_text;
    v12->_text = v13;

    v15 = [lCopy copy];
    imageURL = v12->_imageURL;
    v12->_imageURL = v15;

    objc_storeStrong(&v12->_font, font);
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

- (id)copyWithType:(unint64_t)type
{
  if ([(VUIMonogramDescription *)self preferedMonogramType]<= type)
  {
    return 0;
  }

  v5 = [(VUIMonogramDescription *)self copy];
  v6 = v5;
  if (type <= 2)
  {
    v7 = *(v5 + 24);
    *(v5 + 24) = 0;

    if (type != 2)
    {
      v8 = v6[2];
      v6[2] = 0;

      if (!type)
      {
        [v6 setShouldFallBackToSilhouette:0];
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VUIMonogramDescription allocWithZone:zone];
  text = [(VUIMonogramDescription *)self text];
  imageURL = [(VUIMonogramDescription *)self imageURL];
  font = [(VUIMonogramDescription *)self font];
  v8 = [(VUIMonogramDescription *)v4 initWithText:text imageURL:imageURL font:font];

  [(VUIMonogramDescription *)self size];
  [(VUIMonogramDescription *)v8 setSize:?];
  [(VUIMonogramDescription *)self defaultImageSize];
  [(VUIMonogramDescription *)v8 setDefaultImageSize:?];
  specialOffsetByFirstLetter = [(VUIMonogramDescription *)self specialOffsetByFirstLetter];
  [(VUIMonogramDescription *)v8 setSpecialOffsetByFirstLetter:specialOffsetByFirstLetter];

  [(VUIMonogramDescription *)self padding];
  [(VUIMonogramDescription *)v8 setPadding:?];
  [(VUIMonogramDescription *)v8 setScaleMode:[(VUIMonogramDescription *)self scaleMode]];
  backgroundColor = [(VUIMonogramDescription *)self backgroundColor];
  [(VUIMonogramDescription *)v8 setBackgroundColor:backgroundColor];

  textColor = [(VUIMonogramDescription *)self textColor];
  [(VUIMonogramDescription *)v8 setTextColor:textColor];

  [(VUIMonogramDescription *)self upscaleAdjustment];
  [(VUIMonogramDescription *)v8 setUpscaleAdjustment:?];
  [(VUIMonogramDescription *)self cornerRadius];
  [(VUIMonogramDescription *)v8 setCornerRadius:?];
  fillColor = [(VUIMonogramDescription *)self fillColor];
  [(VUIMonogramDescription *)v8 setFillColor:fillColor];

  gradientStartColor = [(VUIMonogramDescription *)self gradientStartColor];
  [(VUIMonogramDescription *)v8 setGradientStartColor:gradientStartColor];

  gradientEndColor = [(VUIMonogramDescription *)self gradientEndColor];
  [(VUIMonogramDescription *)v8 setGradientEndColor:gradientEndColor];

  [(VUIMonogramDescription *)v8 setShouldFallBackToSilhouette:[(VUIMonogramDescription *)self shouldFallBackToSilhouette]];
  [(VUIMonogramDescription *)self borderWidth];
  [(VUIMonogramDescription *)v8 setBorderWidth:?];
  borderColor = [(VUIMonogramDescription *)self borderColor];
  [(VUIMonogramDescription *)v8 setBorderColor:borderColor];

  [(VUIMonogramDescription *)v8 setOptimizedImageRendering:[(VUIMonogramDescription *)self optimizedImageRendering]];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    text = [(VUIMonogramDescription *)self text];
    text2 = [v7 text];
    if (text != text2)
    {
      text3 = [(VUIMonogramDescription *)self text];
      text4 = [v7 text];
      if (![text3 isEqual:text4])
      {
        v10 = 0;
        goto LABEL_20;
      }
    }

    imageURL = [(VUIMonogramDescription *)self imageURL];
    imageURL2 = [v7 imageURL];
    if (imageURL != imageURL2)
    {
      imageURL3 = [(VUIMonogramDescription *)self imageURL];
      imageURL4 = [v7 imageURL];
      v87 = imageURL3;
      if (![imageURL3 isEqual:?])
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

    specialOffsetByFirstLetter = [(VUIMonogramDescription *)self specialOffsetByFirstLetter];
    specialOffsetByFirstLetter2 = [v7 specialOffsetByFirstLetter];
    if (specialOffsetByFirstLetter != specialOffsetByFirstLetter2 || (v85 = specialOffsetByFirstLetter2, -[VUIMonogramDescription padding](self, "padding"), v31 = v30, v33 = v32, v35 = v34, v37 = v36, [v7 padding], specialOffsetByFirstLetter2 = v85, v33 != v41) || v31 != v38 || v37 != v40 || v35 != v39 || (v83 = -[VUIMonogramDescription scaleMode](self, "scaleMode"), v42 = v83 == objc_msgSend(v7, "scaleMode"), specialOffsetByFirstLetter2 = v85, !v42))
    {

LABEL_15:
      v10 = 0;
      v28 = 0;
      goto LABEL_16;
    }

    backgroundColor = [(VUIMonogramDescription *)self backgroundColor];
    backgroundColor2 = [v7 backgroundColor];
    v80 = specialOffsetByFirstLetter;
    if (backgroundColor != backgroundColor2)
    {
      backgroundColor3 = [(VUIMonogramDescription *)self backgroundColor];
      backgroundColor4 = [v7 backgroundColor];
      if (![backgroundColor3 isEqual:?])
      {
        v10 = 0;
        v43 = backgroundColor;
        goto LABEL_62;
      }
    }

    textColor = [(VUIMonogramDescription *)self textColor];
    textColor2 = [v7 textColor];
    if (textColor != textColor2)
    {
      textColor3 = [(VUIMonogramDescription *)self textColor];
      textColor4 = [v7 textColor];
      if (![textColor3 isEqual:?])
      {
        v10 = 0;
        v44 = textColor2;
LABEL_60:

LABEL_61:
        v43 = backgroundColor;
        if (backgroundColor == backgroundColor2)
        {
LABEL_63:

          v28 = v10;
LABEL_16:
          if (imageURL == imageURL2)
          {

            v10 = v28;
LABEL_19:
            if (text == text2)
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

    fillColor = [(VUIMonogramDescription *)self fillColor];
    fillColor2 = [v7 fillColor];
    if (fillColor != fillColor2)
    {
      fillColor3 = [(VUIMonogramDescription *)self fillColor];
      fillColor4 = [v7 fillColor];
      if (![fillColor3 isEqual:?])
      {
        v10 = 0;
        v51 = fillColor2;
        goto LABEL_57;
      }
    }

    gradientStartColor = [(VUIMonogramDescription *)self gradientStartColor];
    gradientStartColor2 = [v7 gradientStartColor];
    if (gradientStartColor != gradientStartColor2)
    {
      gradientStartColor3 = [(VUIMonogramDescription *)self gradientStartColor];
      gradientStartColor4 = [v7 gradientStartColor];
      if (![gradientStartColor3 isEqual:?])
      {
        v10 = 0;
        v52 = gradientStartColor2;
LABEL_55:

LABEL_56:
        v51 = fillColor2;
        if (fillColor == fillColor2)
        {
LABEL_58:

LABEL_59:
          v44 = textColor2;
          if (textColor == textColor2)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

LABEL_57:

        goto LABEL_58;
      }
    }

    gradientEndColor = [(VUIMonogramDescription *)self gradientEndColor];
    gradientEndColor2 = [v7 gradientEndColor];
    if (gradientEndColor == gradientEndColor2 || (-[VUIMonogramDescription gradientEndColor](self, "gradientEndColor"), v65 = objc_claimAutoreleasedReturnValue(), [v7 gradientEndColor], v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "isEqual:")))
    {
      shouldFallBackToSilhouette = [(VUIMonogramDescription *)self shouldFallBackToSilhouette];
      if (shouldFallBackToSilhouette == [v7 shouldFallBackToSilhouette] && (-[VUIMonogramDescription borderWidth](self, "borderWidth"), v56 = v55, objc_msgSend(v7, "borderWidth"), v56 == v57))
      {
        borderColor = [(VUIMonogramDescription *)self borderColor];
        borderColor2 = [v7 borderColor];
        v62 = borderColor;
        if (borderColor == borderColor2)
        {

          v10 = 1;
        }

        else
        {
          borderColor3 = [(VUIMonogramDescription *)self borderColor];
          borderColor4 = [v7 borderColor];
          v10 = [borderColor3 isEqual:borderColor4];
        }
      }

      else
      {
        v10 = 0;
      }

      v53 = gradientEndColor2;
      if (gradientEndColor == gradientEndColor2)
      {
LABEL_54:

        v52 = gradientStartColor2;
        if (gradientStartColor == gradientStartColor2)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v10 = 0;
      v53 = gradientEndColor2;
    }

    goto LABEL_54;
  }

  v10 = 0;
LABEL_22:

  return v10;
}

- (CGPoint)specialOffsetForString:(id)string
{
  stringCopy = string;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  specialOffsetByFirstLetter = [(VUIMonogramDescription *)self specialOffsetByFirstLetter];
  if (specialOffsetByFirstLetter && [stringCopy length])
  {
    v8 = [stringCopy substringToIndex:1];
    v9 = [specialOffsetByFirstLetter objectForKeyedSubscript:v8];
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
  text = [(VUIMonogramDescription *)self text];
  if (text)
  {
    text2 = [(VUIMonogramDescription *)self text];
    v5 = [text2 hash];
  }

  else
  {
    text2 = [(VUIMonogramDescription *)self imageURL];
    if (text2)
    {
      imageURL = [(VUIMonogramDescription *)self imageURL];
      v6 = [imageURL hash];

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
  imageURL = [(VUIMonogramDescription *)self imageURL];
  if (imageURL)
  {

    goto LABEL_4;
  }

  if ([(VUIMonogramDescription *)self isUsingLibraryImageLoader])
  {
LABEL_4:
    imageURL2 = [(VUIMonogramDescription *)self imageURL];
    vuicore_isResourceOrSymbolURL = [imageURL2 vuicore_isResourceOrSymbolURL];

    if (vuicore_isResourceOrSymbolURL)
    {
      return 3;
    }

    imageURL3 = [(VUIMonogramDescription *)self imageURL];
    v8 = [_VUIMonogramAppleAccountImageGenerator isAppleAccountsURL:imageURL3];

    if (v8)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  text = [(VUIMonogramDescription *)self text];
  v10 = [text length];

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