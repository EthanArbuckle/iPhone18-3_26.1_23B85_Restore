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
  v3 = [(PSUsageBundleCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(PSUsageBundleCell *)self detailTextLabel];
  [v8 frame];
  v10 = v9;
  v43 = v12;
  v44 = v11;
  v14 = v13;

  v15 = [(PSUsageBundleCell *)self textLabel];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(PSUsageBundleCell *)self _shouldReverseLayoutDirection];
  v25 = [(PSUsageBundleCell *)self detailTextLabel];
  [v25 sizeThatFits:{v5, v7}];
  v27 = v26;

  if (v14 < v27)
  {
    v28 = ceil(v27 - v14);
    v14 = v14 + v28;
    v29 = v10 - v28;
    if (v24)
    {
      v30 = v10;
    }

    else
    {
      v30 = v10 - v28;
    }

    v42 = v30;
    if (v24)
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
    if ((v24 & 1) == 0)
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
  v40 = [(PSUsageBundleCell *)self detailTextLabel];
  [v40 setFrame:{v29, v44, v14, v43}];

  v41 = [(PSUsageBundleCell *)self textLabel];
  [v41 setFrame:{v17, v19, v21, v23}];
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == a1)
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