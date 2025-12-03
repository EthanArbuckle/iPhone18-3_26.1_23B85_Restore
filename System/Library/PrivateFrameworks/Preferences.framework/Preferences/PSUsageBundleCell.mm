@interface PSUsageBundleCell
+ (Class)alternativeCellClass;
- (void)layoutSubviews;
@end

@implementation PSUsageBundleCell

- (void)layoutSubviews
{
  v45.receiver = self;
  v45.super_class = PSUsageBundleCell;
  [(PSTableCell *)&v45 layoutSubviews];
  contentView = [(PSUsageBundleCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  detailTextLabel = [(PSUsageBundleCell *)self detailTextLabel];
  [detailTextLabel frame];
  v10 = v9;
  v43 = v12;
  v44 = v11;
  v14 = v13;

  textLabel = [(PSUsageBundleCell *)self textLabel];
  [textLabel frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  _shouldReverseLayoutDirection = [(PSUsageBundleCell *)self _shouldReverseLayoutDirection];
  detailTextLabel2 = [(PSUsageBundleCell *)self detailTextLabel];
  [detailTextLabel2 sizeThatFits:{v5, v7}];
  v27 = v26;

  if (v14 < v27)
  {
    v28 = ceil(v27 - v14);
    v14 = v14 + v28;
    v29 = v10 - v28;
    if (_shouldReverseLayoutDirection)
    {
      v30 = v10;
    }

    else
    {
      v30 = v10 - v28;
    }

    v42 = v30;
    if (_shouldReverseLayoutDirection)
    {
      v31 = v17;
      v32 = v19;
      v33 = v21;
      v34 = v23;
    }

    else
    {
      v31 = v29;
      v34 = v43;
      v32 = v44;
      v33 = v14;
    }

    MinX = CGRectGetMinX(*&v31);
    v46.origin.x = v17;
    v46.origin.y = v19;
    v46.size.width = v21;
    v46.size.height = v23;
    if (MinX - CGRectGetMaxX(v46) >= 6.0)
    {
      v29 = v42;
      goto LABEL_14;
    }

    v47.origin.x = v17;
    v47.origin.y = v19;
    v47.size.width = v21;
    v47.size.height = v23;
    Width = CGRectGetWidth(v47);
    if ((_shouldReverseLayoutDirection & 1) == 0)
    {
      v51.origin.x = v29;
      v51.size.height = v43;
      v51.origin.y = v44;
      v51.size.width = v14;
      v39 = CGRectGetMinX(v51) + -6.0;
      v52.origin.x = v17;
      v52.origin.y = v19;
      v52.size.width = v21;
      v52.size.height = v23;
      v21 = v39 - CGRectGetMinX(v52);
      goto LABEL_14;
    }

    v37 = Width;
    v48.origin.x = v17;
    v48.origin.y = v19;
    v48.size.width = v21;
    v48.size.height = v23;
    MaxX = CGRectGetMaxX(v48);
    v49.origin.x = v10;
    v49.size.height = v43;
    v49.origin.y = v44;
    v49.size.width = v14;
    v21 = MaxX - CGRectGetMaxX(v49) + -6.0;
    v50.origin.x = v17;
    v50.origin.y = v19;
    v50.size.width = v21;
    v50.size.height = v23;
    v17 = v17 + v37 - CGRectGetWidth(v50);
  }

  v29 = v10;
LABEL_14:
  detailTextLabel3 = [(PSUsageBundleCell *)self detailTextLabel];
  [detailTextLabel3 setFrame:{v29, v44, v14, v43}];

  textLabel2 = [(PSUsageBundleCell *)self textLabel];
  [textLabel2 setFrame:{v17, v19, v21, v23}];
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == self)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end