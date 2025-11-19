@interface _TVMonogramDescription
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (IKNetworkRequestLoader)requestLoader;
- (UIEdgeInsets)padding;
- (_TVMonogramDescription)initWithFirstName:(id)a3 lastName:(id)a4 imageURL:(id)a5 font:(id)a6;
- (id)copyWithType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unint64_t)preferedMonogramType;
@end

@implementation _TVMonogramDescription

- (_TVMonogramDescription)initWithFirstName:(id)a3 lastName:(id)a4 imageURL:(id)a5 font:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = _TVMonogramDescription;
  v14 = [(_TVMonogramDescription *)&v25 init];
  v15 = v14;
  if (v14)
  {
    v14->_shouldFallBackToSilhouette = 1;
    v16 = [v10 copy];
    firstName = v15->_firstName;
    v15->_firstName = v16;

    v18 = [v11 copy];
    lastName = v15->_lastName;
    v15->_lastName = v18;

    v20 = [v12 copy];
    imageURL = v15->_imageURL;
    v15->_imageURL = v20;

    objc_storeStrong(&v15->_font, a6);
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

- (id)copyWithType:(unint64_t)a3
{
  if ([(_TVMonogramDescription *)self preferedMonogramType]<= a3)
  {
    return 0;
  }

  v5 = [(_TVMonogramDescription *)self copy];
  v6 = v5;
  if (a3 <= 2)
  {
    v7 = *(v5 + 40);
    *(v5 + 40) = 0;

    if (a3 != 2)
    {
      v8 = v6[2];
      v6[2] = 0;

      v9 = v6[3];
      v6[3] = 0;

      [v6 setText:0];
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
  v4 = [_TVMonogramDescription allocWithZone:a3];
  v5 = [(_TVMonogramDescription *)self firstName];
  v6 = [(_TVMonogramDescription *)self lastName];
  v7 = [(_TVMonogramDescription *)self imageURL];
  v8 = [(_TVMonogramDescription *)self font];
  v9 = [(_TVMonogramDescription *)v4 initWithFirstName:v5 lastName:v6 imageURL:v7 font:v8];

  v10 = [(_TVMonogramDescription *)self text];
  [(_TVMonogramDescription *)v9 setText:v10];

  [(_TVMonogramDescription *)self size];
  [(_TVMonogramDescription *)v9 setSize:?];
  [(_TVMonogramDescription *)self padding];
  [(_TVMonogramDescription *)v9 setPadding:?];
  [(_TVMonogramDescription *)v9 setScaleMode:[(_TVMonogramDescription *)self scaleMode]];
  v11 = [(_TVMonogramDescription *)self backgroundColor];
  [(_TVMonogramDescription *)v9 setBackgroundColor:v11];

  v12 = [(_TVMonogramDescription *)self textColor];
  [(_TVMonogramDescription *)v9 setTextColor:v12];

  [(_TVMonogramDescription *)self upscaleAdjustment];
  [(_TVMonogramDescription *)v9 setUpscaleAdjustment:?];
  [(_TVMonogramDescription *)self cornerRadius];
  [(_TVMonogramDescription *)v9 setCornerRadius:?];
  v13 = [(_TVMonogramDescription *)self fillColor];
  [(_TVMonogramDescription *)v9 setFillColor:v13];

  [(_TVMonogramDescription *)v9 setShouldFallBackToSilhouette:[(_TVMonogramDescription *)self shouldFallBackToSilhouette]];
  [(_TVMonogramDescription *)self borderWidth];
  [(_TVMonogramDescription *)v9 setBorderWidth:?];
  v14 = [(_TVMonogramDescription *)self borderColor];
  [(_TVMonogramDescription *)v9 setBorderColor:v14];

  v15 = [(_TVMonogramDescription *)self requestLoader];
  [(_TVMonogramDescription *)v9 setRequestLoader:v15];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_TVMonogramDescription *)self firstName];
    v7 = [v5 firstName];
    if (v6 != v7)
    {
      v8 = [(_TVMonogramDescription *)self firstName];
      v9 = [v5 firstName];
      if (![v8 isEqual:v9])
      {
        v10 = 0;
        goto LABEL_37;
      }

      v88 = v9;
      v89 = v8;
    }

    v11 = [(_TVMonogramDescription *)self lastName];
    v12 = [v5 lastName];
    if (v11 != v12)
    {
      v13 = [(_TVMonogramDescription *)self lastName];
      v14 = [v5 lastName];
      if (![v13 isEqual:v14])
      {
        v10 = 0;
LABEL_35:

LABEL_36:
        v9 = v88;
        v8 = v89;
        if (v6 == v7)
        {
LABEL_38:

          goto LABEL_39;
        }

LABEL_37:

        goto LABEL_38;
      }

      v86 = v14;
      v87 = v13;
    }

    v15 = [(_TVMonogramDescription *)self text];
    v16 = [v5 text];
    if (v15 != v16)
    {
      v17 = [(_TVMonogramDescription *)self text];
      v81 = [v5 text];
      v82 = v17;
      if (![v17 isEqual:?])
      {
        v10 = 0;
LABEL_33:

LABEL_34:
        v14 = v86;
        v13 = v87;
        if (v11 == v12)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    v18 = [(_TVMonogramDescription *)self imageURL];
    v84 = [v5 imageURL];
    v85 = v16;
    v83 = v12;
    if (v18 != v84)
    {
      v76 = v7;
      v19 = v6;
      v20 = v18;
      v21 = [(_TVMonogramDescription *)self imageURL];
      v79 = [v5 imageURL];
      v80 = v21;
      if (![v21 isEqual:?])
      {
        v40 = v15;
        v10 = 0;
        v18 = v20;
        v44 = v84;
        v6 = v19;
        v7 = v76;
        goto LABEL_31;
      }

      v18 = v20;
      v6 = v19;
      v7 = v76;
    }

    [(_TVMonogramDescription *)self size];
    v23 = v22;
    v25 = v24;
    [v5 size];
    if (v23 != v27 || v25 != v26 || (-[_TVMonogramDescription padding](self, "padding"), v29 = v28, v31 = v30, v33 = v32, v35 = v34, [v5 padding], v31 != v39) || v29 != v36 || v35 != v38 || v33 != v37 || (v77 = -[_TVMonogramDescription scaleMode](self, "scaleMode"), v77 != objc_msgSend(v5, "scaleMode")))
    {
      v40 = v15;
      v10 = 0;
      v43 = 0;
      goto LABEL_28;
    }

    v78 = [(_TVMonogramDescription *)self backgroundColor];
    v73 = [v5 backgroundColor];
    v74 = v18;
    if (v78 != v73)
    {
      v72 = [(_TVMonogramDescription *)self backgroundColor];
      v69 = [v5 backgroundColor];
      if (![v72 isEqual:?])
      {
        v40 = v15;
        v10 = 0;
        v41 = v78;
        v42 = v73;
        goto LABEL_62;
      }
    }

    v75 = [(_TVMonogramDescription *)self textColor];
    v71 = [v5 textColor];
    if (v75 != v71)
    {
      v70 = [(_TVMonogramDescription *)self textColor];
      v68 = [v5 textColor];
      if (![v70 isEqual:?])
      {
        v10 = 0;
        v46 = v71;
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

    v67 = [(_TVMonogramDescription *)self fillColor];
    v66 = [v5 fillColor];
    if (v67 == v66 || (-[_TVMonogramDescription fillColor](self, "fillColor"), v65 = objc_claimAutoreleasedReturnValue(), [v5 fillColor], v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "isEqual:")))
    {
      v63 = [(_TVMonogramDescription *)self shouldFallBackToSilhouette];
      if (v63 == [v5 shouldFallBackToSilhouette] && (-[_TVMonogramDescription borderWidth](self, "borderWidth"), v55 = v54, objc_msgSend(v5, "borderWidth"), v55 == v56))
      {
        v64 = [(_TVMonogramDescription *)self borderColor];
        v57 = [v5 borderColor];
        if (v64 == v57)
        {

          v10 = 1;
        }

        else
        {
          v61 = v57;
          v60 = [(_TVMonogramDescription *)self borderColor];
          v59 = [v5 borderColor];
          v10 = [v60 isEqual:v59];
        }
      }

      else
      {
        v10 = 0;
      }

      v53 = v66;
      if (v67 == v66)
      {

        goto LABEL_57;
      }
    }

    else
    {
      v10 = 0;
      v53 = v66;
    }

    v58 = v53;

LABEL_57:
LABEL_58:
    v46 = v71;
    if (v75 == v71)
    {
      v40 = v15;
LABEL_61:

      v41 = v78;
      v42 = v73;
      if (v78 == v73)
      {
LABEL_63:

        v43 = v10;
        v18 = v74;
LABEL_28:
        v44 = v84;
        if (v18 == v84)
        {

          v10 = v43;
          goto LABEL_32;
        }

LABEL_31:

LABEL_32:
        v15 = v40;
        v16 = v85;
        v12 = v83;
        if (v15 == v85)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_62:

      goto LABEL_63;
    }

LABEL_59:
    v40 = v15;

    goto LABEL_61;
  }

  v10 = 0;
LABEL_39:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(_TVMonogramDescription *)self lastName];
  if (!v3)
  {
    v4 = [(_TVMonogramDescription *)self firstName];
    if (v4)
    {
      v6 = [(_TVMonogramDescription *)self firstName];
      v5 = [v6 hash];
LABEL_11:

      goto LABEL_12;
    }

    v6 = [(_TVMonogramDescription *)self text];
    if (v6)
    {
      v7 = [(_TVMonogramDescription *)self text];
      v8 = [v7 hash];
    }

    else
    {
      v7 = [(_TVMonogramDescription *)self imageURL];
      if (v7)
      {
        v9 = [(_TVMonogramDescription *)self imageURL];
        v5 = [v9 hash];

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

  v4 = [(_TVMonogramDescription *)self lastName];
  v5 = [v4 hash];
LABEL_12:

  return v5;
}

- (unint64_t)preferedMonogramType
{
  v3 = [(_TVMonogramDescription *)self imageURL];

  if (!v3)
  {
    v7 = [(_TVMonogramDescription *)self firstName];
    if (![v7 length])
    {
      v8 = [(_TVMonogramDescription *)self lastName];
      if (![v8 length])
      {
        v11 = [(_TVMonogramDescription *)self text];
        v12 = [v11 length];

        if (!v12)
        {
          return [(_TVMonogramDescription *)self shouldFallBackToSilhouette];
        }

        return 2;
      }
    }

    return 2;
  }

  v4 = [(_TVMonogramDescription *)self imageURL];
  v5 = [_TVMonogramResourceImageGenerator isResourceURL:v4];

  if (v5)
  {
    return 3;
  }

  v9 = [(_TVMonogramDescription *)self imageURL];
  v10 = [_TVMonogramAppleAccountImageGenerator isAppleAccountsURL:v9];

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