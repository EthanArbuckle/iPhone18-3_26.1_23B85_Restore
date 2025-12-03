@interface STSegmentItem
- (BOOL)isEqual:(id)equal;
- (STSegmentItem)initWithTitleText:(id)text detailText:(id)detailText titleColor:(id)color detailImage:(id)image detailImageTintColor:(id)tintColor;
- (unint64_t)hash;
@end

@implementation STSegmentItem

- (STSegmentItem)initWithTitleText:(id)text detailText:(id)detailText titleColor:(id)color detailImage:(id)image detailImageTintColor:(id)tintColor
{
  textCopy = text;
  detailTextCopy = detailText;
  colorCopy = color;
  imageCopy = image;
  tintColorCopy = tintColor;
  v25.receiver = self;
  v25.super_class = STSegmentItem;
  v17 = [(STSegmentItem *)&v25 init];
  if (v17)
  {
    v18 = [textCopy copy];
    titleText = v17->_titleText;
    v17->_titleText = v18;

    v20 = [detailTextCopy copy];
    detailText = v17->_detailText;
    v17->_detailText = v20;

    objc_storeStrong(&v17->_titleColor, color);
    objc_storeStrong(&v17->_detailImage, image);
    v22 = [tintColorCopy copy];
    detailImageTintColor = v17->_detailImageTintColor;
    v17->_detailImageTintColor = v22;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    titleText = [(STSegmentItem *)self titleText];
    titleText2 = [v5 titleText];
    if (![titleText isEqualToString:titleText2])
    {
      v14 = 0;
LABEL_22:

      goto LABEL_23;
    }

    detailText = [(STSegmentItem *)self detailText];
    detailText2 = [v5 detailText];
    if (![detailText isEqualToString:detailText2])
    {
      v14 = 0;
LABEL_21:

      goto LABEL_22;
    }

    titleColor = [(STSegmentItem *)self titleColor];
    titleColor2 = [v5 titleColor];
    if (![titleColor isEqual:titleColor2])
    {
      v14 = 0;
LABEL_20:

      goto LABEL_21;
    }

    detailImage = [(STSegmentItem *)self detailImage];
    detailImage2 = [v5 detailImage];
    if (detailImage == detailImage2)
    {
      v25 = detailImage;
    }

    else
    {
      v23 = titleColor2;
      detailImage3 = [(STSegmentItem *)self detailImage];
      detailImage4 = [v5 detailImage];
      v21 = detailImage3;
      if (![detailImage3 isEqual:?])
      {
        v14 = 0;
        titleColor2 = v23;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v25 = detailImage;
      titleColor2 = v23;
    }

    detailImageTintColor = [(STSegmentItem *)self detailImageTintColor];
    detailImageTintColor2 = [v5 detailImageTintColor];
    v24 = detailImageTintColor;
    if (detailImageTintColor == detailImageTintColor2)
    {

      v14 = 1;
    }

    else
    {
      detailImageTintColor3 = [(STSegmentItem *)self detailImageTintColor];
      [v5 detailImageTintColor];
      v17 = v19 = titleColor;
      v14 = [detailImageTintColor3 isEqual:v17];

      titleColor = v19;
    }

    detailImage = v25;
    if (v25 == detailImage2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v14 = 0;
LABEL_23:

  return v14;
}

- (unint64_t)hash
{
  titleText = [(STSegmentItem *)self titleText];
  v4 = [titleText hash];
  detailText = [(STSegmentItem *)self detailText];
  v6 = [detailText hash] ^ v4;
  titleColor = [(STSegmentItem *)self titleColor];
  v8 = [titleColor hash];
  detailImage = [(STSegmentItem *)self detailImage];
  v10 = v6 ^ v8 ^ [detailImage hash];
  detailImageTintColor = [(STSegmentItem *)self detailImageTintColor];
  v12 = [detailImageTintColor hash];

  return v10 ^ v12;
}

@end