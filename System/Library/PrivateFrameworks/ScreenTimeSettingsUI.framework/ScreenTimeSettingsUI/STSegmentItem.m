@interface STSegmentItem
- (BOOL)isEqual:(id)a3;
- (STSegmentItem)initWithTitleText:(id)a3 detailText:(id)a4 titleColor:(id)a5 detailImage:(id)a6 detailImageTintColor:(id)a7;
- (unint64_t)hash;
@end

@implementation STSegmentItem

- (STSegmentItem)initWithTitleText:(id)a3 detailText:(id)a4 titleColor:(id)a5 detailImage:(id)a6 detailImageTintColor:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = STSegmentItem;
  v17 = [(STSegmentItem *)&v25 init];
  if (v17)
  {
    v18 = [v12 copy];
    titleText = v17->_titleText;
    v17->_titleText = v18;

    v20 = [v13 copy];
    detailText = v17->_detailText;
    v17->_detailText = v20;

    objc_storeStrong(&v17->_titleColor, a5);
    objc_storeStrong(&v17->_detailImage, a6);
    v22 = [v16 copy];
    detailImageTintColor = v17->_detailImageTintColor;
    v17->_detailImageTintColor = v22;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(STSegmentItem *)self titleText];
    v7 = [v5 titleText];
    if (![v6 isEqualToString:v7])
    {
      v14 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v8 = [(STSegmentItem *)self detailText];
    v9 = [v5 detailText];
    if (![v8 isEqualToString:v9])
    {
      v14 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v10 = [(STSegmentItem *)self titleColor];
    v11 = [v5 titleColor];
    if (![v10 isEqual:v11])
    {
      v14 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v12 = [(STSegmentItem *)self detailImage];
    v26 = [v5 detailImage];
    if (v12 == v26)
    {
      v25 = v12;
    }

    else
    {
      v23 = v11;
      v13 = [(STSegmentItem *)self detailImage];
      v20 = [v5 detailImage];
      v21 = v13;
      if (![v13 isEqual:?])
      {
        v14 = 0;
        v11 = v23;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v25 = v12;
      v11 = v23;
    }

    v15 = [(STSegmentItem *)self detailImageTintColor];
    v22 = [v5 detailImageTintColor];
    v24 = v15;
    if (v15 == v22)
    {

      v14 = 1;
    }

    else
    {
      v16 = [(STSegmentItem *)self detailImageTintColor];
      [v5 detailImageTintColor];
      v17 = v19 = v10;
      v14 = [v16 isEqual:v17];

      v10 = v19;
    }

    v12 = v25;
    if (v25 == v26)
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
  v3 = [(STSegmentItem *)self titleText];
  v4 = [v3 hash];
  v5 = [(STSegmentItem *)self detailText];
  v6 = [v5 hash] ^ v4;
  v7 = [(STSegmentItem *)self titleColor];
  v8 = [v7 hash];
  v9 = [(STSegmentItem *)self detailImage];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(STSegmentItem *)self detailImageTintColor];
  v12 = [v11 hash];

  return v10 ^ v12;
}

@end