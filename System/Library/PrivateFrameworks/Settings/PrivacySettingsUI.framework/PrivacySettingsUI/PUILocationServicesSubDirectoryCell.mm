@interface PUILocationServicesSubDirectoryCell
- (PUILocationServicesSubDirectoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation PUILocationServicesSubDirectoryCell

- (PUILocationServicesSubDirectoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = PUILocationServicesSubDirectoryCell;
  v5 = [(PSTableCell *)&v11 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = objc_alloc_init(PUILocationUsageMixin);
    location = v5->_location;
    v5->_location = v6;

    contentView = [(PUILocationServicesSubDirectoryCell *)v5 contentView];
    usageIndicator = [(PUILocationUsageMixin *)v5->_location usageIndicator];
    [contentView addSubview:usageIndicator];
  }

  return v5;
}

- (void)layoutSubviews
{
  v59.receiver = self;
  v59.super_class = PUILocationServicesSubDirectoryCell;
  [(PSTableCell *)&v59 layoutSubviews];
  usageIndicator = [(PUILocationUsageMixin *)self->_location usageIndicator];
  if (([usageIndicator isHidden] & 1) == 0)
  {
    detailTextLabel = [(PUILocationServicesSubDirectoryCell *)self detailTextLabel];
    [detailTextLabel frame];
    v6 = v5;
    v8 = v7;
    traitCollection = [(PUILocationServicesSubDirectoryCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      [detailTextLabel frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v57 = v18;
      _shouldReverseLayoutDirection = [(PUILocationServicesSubDirectoryCell *)self _shouldReverseLayoutDirection];
      [usageIndicator frame];
      v21 = v20;
      v23 = v22;
      [detailTextLabel frame];
      Height = CGRectGetHeight(v60);
      [usageIndicator frame];
      v25 = v8 + (Height - CGRectGetHeight(v61)) * 0.5;
      if (_shouldReverseLayoutDirection)
      {
        [detailTextLabel frame];
        Width = CGRectGetWidth(v62);
        [usageIndicator frame];
        [usageIndicator setFrame:{v6 + Width - CGRectGetWidth(v63), v25, v21, v23}];
        [usageIndicator frame];
        v27 = v13 - (CGRectGetWidth(v64) + 6.0);
      }

      else
      {
        [usageIndicator setFrame:{v6, v25, v21, v23}];
        [usageIndicator frame];
        v27 = v13 + CGRectGetWidth(v70) + 6.0;
      }

      [detailTextLabel setFrame:{v27, v15, v17, v57}];
      goto LABEL_19;
    }

    textLabel = [(PUILocationServicesSubDirectoryCell *)self textLabel];
    [textLabel frame];
    v58 = v29;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    _shouldReverseLayoutDirection2 = [(PUILocationServicesSubDirectoryCell *)self _shouldReverseLayoutDirection];
    [usageIndicator frame];
    v38 = v37;
    v40 = v39;
    [detailTextLabel frame];
    v41 = CGRectGetHeight(v65);
    [usageIndicator frame];
    v42 = v8 + (v41 - CGRectGetHeight(v66)) * 0.5;
    [detailTextLabel frame];
    v43 = CGRectGetWidth(v67);
    if (_shouldReverseLayoutDirection2)
    {
      v44 = v6 + v43 + 6.0;
      [usageIndicator setFrame:{v44, v42, v38, v40}];
      v68.origin.x = v44;
      v68.origin.y = v42;
      v68.size.width = v38;
      v68.size.height = v40;
      MaxX = CGRectGetMaxX(v68);
      v69.origin.x = v58;
      v69.origin.y = v31;
      v69.size.width = v33;
      v69.size.height = v35;
      MinX = CGRectGetMinX(v69);
      if (MinX + -6.0 >= MaxX)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v47 = MaxX - MinX + 6.0;
      v48 = v58 + v47;
    }

    else
    {
      if (v43 >= 51.0)
      {
        v49 = v43;
      }

      else
      {
        v49 = 51.0;
      }

      [(PUILocationServicesSubDirectoryCell *)self frame];
      v50 = CGRectGetMaxX(v71) + -15.0 + -6.0;
      v72.origin.x = v6;
      v72.origin.y = v42;
      v72.size.width = v38;
      v72.size.height = v40;
      v51 = v50 - CGRectGetWidth(v72) - v49;
      v73.origin.x = v51;
      v73.origin.y = v42;
      v73.size.width = v38;
      v73.size.height = v40;
      v52 = CGRectGetMaxX(v73);
      [detailTextLabel frame];
      v53 = CGRectGetMinX(v74);
      if (v53 - v52 < 6.0)
      {
        v75.origin.x = v51;
        v75.origin.y = v42;
        v75.size.width = v38;
        v75.size.height = v40;
        v51 = v53 - CGRectGetWidth(v75) + -6.0;
      }

      [usageIndicator setFrame:{v51, v42, v38, v40}];
      v76.origin.x = v51;
      v76.origin.y = v42;
      v76.size.width = v38;
      v76.size.height = v40;
      v54 = CGRectGetMinX(v76);
      v48 = v58;
      v77.origin.x = v58;
      v77.origin.y = v56;
      v77.size.width = v33;
      v77.size.height = v35;
      v55 = CGRectGetMaxX(v77);
      if (v55 + 6.0 <= v54)
      {
        goto LABEL_18;
      }

      v31 = v56;
      v47 = v55 - v54 + 6.0;
    }

    [textLabel setFrame:{v48, v31, v33 - v47, v35}];
    goto LABEL_18;
  }

LABEL_20:
}

@end