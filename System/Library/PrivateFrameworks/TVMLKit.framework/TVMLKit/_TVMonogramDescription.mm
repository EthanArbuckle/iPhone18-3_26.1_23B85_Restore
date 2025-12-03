@interface _TVMonogramDescription
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (IKNetworkRequestLoader)requestLoader;
- (UIEdgeInsets)padding;
- (_TVMonogramDescription)initWithFirstName:(id)name lastName:(id)lastName imageURL:(id)l font:(id)font;
- (id)copyWithType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)preferedMonogramType;
@end

@implementation _TVMonogramDescription

- (_TVMonogramDescription)initWithFirstName:(id)name lastName:(id)lastName imageURL:(id)l font:(id)font
{
  nameCopy = name;
  lastNameCopy = lastName;
  lCopy = l;
  fontCopy = font;
  v25.receiver = self;
  v25.super_class = _TVMonogramDescription;
  v14 = [(_TVMonogramDescription *)&v25 init];
  v15 = v14;
  if (v14)
  {
    v14->_shouldFallBackToSilhouette = 1;
    v16 = [nameCopy copy];
    firstName = v15->_firstName;
    v15->_firstName = v16;

    v18 = [lastNameCopy copy];
    lastName = v15->_lastName;
    v15->_lastName = v18;

    v20 = [lCopy copy];
    imageURL = v15->_imageURL;
    v15->_imageURL = v20;

    objc_storeStrong(&v15->_font, font);
    if (!v15->_font)
    {
      v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
      font = v15->_font;
      v15->_font = v22;
    }

    v15->_scaleMode = 3;
  }

  return v15;
}

- (id)copyWithType:(unint64_t)type
{
  if ([(_TVMonogramDescription *)self preferedMonogramType]<= type)
  {
    return 0;
  }

  v5 = [(_TVMonogramDescription *)self copy];
  v6 = v5;
  if (type <= 2)
  {
    v7 = *(v5 + 40);
    *(v5 + 40) = 0;

    if (type != 2)
    {
      v8 = v6[2];
      v6[2] = 0;

      v9 = v6[3];
      v6[3] = 0;

      [v6 setText:0];
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
  v4 = [_TVMonogramDescription allocWithZone:zone];
  firstName = [(_TVMonogramDescription *)self firstName];
  lastName = [(_TVMonogramDescription *)self lastName];
  imageURL = [(_TVMonogramDescription *)self imageURL];
  font = [(_TVMonogramDescription *)self font];
  v9 = [(_TVMonogramDescription *)v4 initWithFirstName:firstName lastName:lastName imageURL:imageURL font:font];

  text = [(_TVMonogramDescription *)self text];
  [(_TVMonogramDescription *)v9 setText:text];

  [(_TVMonogramDescription *)self size];
  [(_TVMonogramDescription *)v9 setSize:?];
  [(_TVMonogramDescription *)self padding];
  [(_TVMonogramDescription *)v9 setPadding:?];
  [(_TVMonogramDescription *)v9 setScaleMode:[(_TVMonogramDescription *)self scaleMode]];
  backgroundColor = [(_TVMonogramDescription *)self backgroundColor];
  [(_TVMonogramDescription *)v9 setBackgroundColor:backgroundColor];

  textColor = [(_TVMonogramDescription *)self textColor];
  [(_TVMonogramDescription *)v9 setTextColor:textColor];

  [(_TVMonogramDescription *)self upscaleAdjustment];
  [(_TVMonogramDescription *)v9 setUpscaleAdjustment:?];
  [(_TVMonogramDescription *)self cornerRadius];
  [(_TVMonogramDescription *)v9 setCornerRadius:?];
  fillColor = [(_TVMonogramDescription *)self fillColor];
  [(_TVMonogramDescription *)v9 setFillColor:fillColor];

  [(_TVMonogramDescription *)v9 setShouldFallBackToSilhouette:[(_TVMonogramDescription *)self shouldFallBackToSilhouette]];
  [(_TVMonogramDescription *)self borderWidth];
  [(_TVMonogramDescription *)v9 setBorderWidth:?];
  borderColor = [(_TVMonogramDescription *)self borderColor];
  [(_TVMonogramDescription *)v9 setBorderColor:borderColor];

  requestLoader = [(_TVMonogramDescription *)self requestLoader];
  [(_TVMonogramDescription *)v9 setRequestLoader:requestLoader];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    firstName = [(_TVMonogramDescription *)self firstName];
    firstName2 = [v5 firstName];
    if (firstName != firstName2)
    {
      firstName3 = [(_TVMonogramDescription *)self firstName];
      firstName4 = [v5 firstName];
      if (![firstName3 isEqual:firstName4])
      {
        v10 = 0;
        goto LABEL_37;
      }

      v88 = firstName4;
      v89 = firstName3;
    }

    lastName = [(_TVMonogramDescription *)self lastName];
    lastName2 = [v5 lastName];
    if (lastName != lastName2)
    {
      lastName3 = [(_TVMonogramDescription *)self lastName];
      lastName4 = [v5 lastName];
      if (![lastName3 isEqual:lastName4])
      {
        v10 = 0;
LABEL_35:

LABEL_36:
        firstName4 = v88;
        firstName3 = v89;
        if (firstName == firstName2)
        {
LABEL_38:

          goto LABEL_39;
        }

LABEL_37:

        goto LABEL_38;
      }

      v86 = lastName4;
      v87 = lastName3;
    }

    text = [(_TVMonogramDescription *)self text];
    text2 = [v5 text];
    if (text != text2)
    {
      text3 = [(_TVMonogramDescription *)self text];
      text4 = [v5 text];
      v82 = text3;
      if (![text3 isEqual:?])
      {
        v10 = 0;
LABEL_33:

LABEL_34:
        lastName4 = v86;
        lastName3 = v87;
        if (lastName == lastName2)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    imageURL = [(_TVMonogramDescription *)self imageURL];
    imageURL2 = [v5 imageURL];
    v85 = text2;
    v83 = lastName2;
    if (imageURL != imageURL2)
    {
      v76 = firstName2;
      v19 = firstName;
      v20 = imageURL;
      imageURL3 = [(_TVMonogramDescription *)self imageURL];
      imageURL4 = [v5 imageURL];
      v80 = imageURL3;
      if (![imageURL3 isEqual:?])
      {
        v40 = text;
        v10 = 0;
        imageURL = v20;
        v44 = imageURL2;
        firstName = v19;
        firstName2 = v76;
        goto LABEL_31;
      }

      imageURL = v20;
      firstName = v19;
      firstName2 = v76;
    }

    [(_TVMonogramDescription *)self size];
    v23 = v22;
    v25 = v24;
    [v5 size];
    if (v23 != v27 || v25 != v26 || (-[_TVMonogramDescription padding](self, "padding"), v29 = v28, v31 = v30, v33 = v32, v35 = v34, [v5 padding], v31 != v39) || v29 != v36 || v35 != v38 || v33 != v37 || (v77 = -[_TVMonogramDescription scaleMode](self, "scaleMode"), v77 != objc_msgSend(v5, "scaleMode")))
    {
      v40 = text;
      v10 = 0;
      v43 = 0;
      goto LABEL_28;
    }

    backgroundColor = [(_TVMonogramDescription *)self backgroundColor];
    backgroundColor2 = [v5 backgroundColor];
    v74 = imageURL;
    if (backgroundColor != backgroundColor2)
    {
      backgroundColor3 = [(_TVMonogramDescription *)self backgroundColor];
      backgroundColor4 = [v5 backgroundColor];
      if (![backgroundColor3 isEqual:?])
      {
        v40 = text;
        v10 = 0;
        v41 = backgroundColor;
        v42 = backgroundColor2;
        goto LABEL_62;
      }
    }

    textColor = [(_TVMonogramDescription *)self textColor];
    textColor2 = [v5 textColor];
    if (textColor != textColor2)
    {
      textColor3 = [(_TVMonogramDescription *)self textColor];
      textColor4 = [v5 textColor];
      if (![textColor3 isEqual:?])
      {
        v10 = 0;
        v46 = textColor2;
        goto LABEL_59;
      }
    }

    [(_TVMonogramDescription *)self upscaleAdjustment];
    v48 = v47;
    [v5 upscaleAdjustment];
    if (v48 != v49 || (-[_TVMonogramDescription cornerRadius](self, "cornerRadius"), v51 = v50, [v5 cornerRadius], v51 != v52))
    {
      v10 = 0;
      goto LABEL_58;
    }

    fillColor = [(_TVMonogramDescription *)self fillColor];
    fillColor2 = [v5 fillColor];
    if (fillColor == fillColor2 || (-[_TVMonogramDescription fillColor](self, "fillColor"), v65 = objc_claimAutoreleasedReturnValue(), [v5 fillColor], v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "isEqual:")))
    {
      shouldFallBackToSilhouette = [(_TVMonogramDescription *)self shouldFallBackToSilhouette];
      if (shouldFallBackToSilhouette == [v5 shouldFallBackToSilhouette] && (-[_TVMonogramDescription borderWidth](self, "borderWidth"), v55 = v54, objc_msgSend(v5, "borderWidth"), v55 == v56))
      {
        borderColor = [(_TVMonogramDescription *)self borderColor];
        borderColor2 = [v5 borderColor];
        if (borderColor == borderColor2)
        {

          v10 = 1;
        }

        else
        {
          v61 = borderColor2;
          borderColor3 = [(_TVMonogramDescription *)self borderColor];
          borderColor4 = [v5 borderColor];
          v10 = [borderColor3 isEqual:borderColor4];
        }
      }

      else
      {
        v10 = 0;
      }

      v53 = fillColor2;
      if (fillColor == fillColor2)
      {

        goto LABEL_57;
      }
    }

    else
    {
      v10 = 0;
      v53 = fillColor2;
    }

    v58 = v53;

LABEL_57:
LABEL_58:
    v46 = textColor2;
    if (textColor == textColor2)
    {
      v40 = text;
LABEL_61:

      v41 = backgroundColor;
      v42 = backgroundColor2;
      if (backgroundColor == backgroundColor2)
      {
LABEL_63:

        v43 = v10;
        imageURL = v74;
LABEL_28:
        v44 = imageURL2;
        if (imageURL == imageURL2)
        {

          v10 = v43;
          goto LABEL_32;
        }

LABEL_31:

LABEL_32:
        text = v40;
        text2 = v85;
        lastName2 = v83;
        if (text == v85)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_62:

      goto LABEL_63;
    }

LABEL_59:
    v40 = text;

    goto LABEL_61;
  }

  v10 = 0;
LABEL_39:

  return v10;
}

- (unint64_t)hash
{
  lastName = [(_TVMonogramDescription *)self lastName];
  if (!lastName)
  {
    firstName = [(_TVMonogramDescription *)self firstName];
    if (firstName)
    {
      firstName2 = [(_TVMonogramDescription *)self firstName];
      v5 = [firstName2 hash];
LABEL_11:

      goto LABEL_12;
    }

    firstName2 = [(_TVMonogramDescription *)self text];
    if (firstName2)
    {
      text = [(_TVMonogramDescription *)self text];
      v8 = [text hash];
    }

    else
    {
      text = [(_TVMonogramDescription *)self imageURL];
      if (text)
      {
        imageURL = [(_TVMonogramDescription *)self imageURL];
        v5 = [imageURL hash];

        goto LABEL_10;
      }

      v11.receiver = self;
      v11.super_class = _TVMonogramDescription;
      v8 = [(_TVMonogramDescription *)&v11 hash];
    }

    v5 = v8;
LABEL_10:

    goto LABEL_11;
  }

  firstName = [(_TVMonogramDescription *)self lastName];
  v5 = [firstName hash];
LABEL_12:

  return v5;
}

- (unint64_t)preferedMonogramType
{
  imageURL = [(_TVMonogramDescription *)self imageURL];

  if (!imageURL)
  {
    firstName = [(_TVMonogramDescription *)self firstName];
    if (![firstName length])
    {
      lastName = [(_TVMonogramDescription *)self lastName];
      if (![lastName length])
      {
        text = [(_TVMonogramDescription *)self text];
        v12 = [text length];

        if (!v12)
        {
          return [(_TVMonogramDescription *)self shouldFallBackToSilhouette];
        }

        return 2;
      }
    }

    return 2;
  }

  imageURL2 = [(_TVMonogramDescription *)self imageURL];
  v5 = [_TVMonogramResourceImageGenerator isResourceURL:imageURL2];

  if (v5)
  {
    return 3;
  }

  imageURL3 = [(_TVMonogramDescription *)self imageURL];
  v10 = [_TVMonogramAppleAccountImageGenerator isAppleAccountsURL:imageURL3];

  if (v10)
  {
    return 4;
  }

  else
  {
    return 5;
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

- (IKNetworkRequestLoader)requestLoader
{
  WeakRetained = objc_loadWeakRetained(&self->_requestLoader);

  return WeakRetained;
}

@end