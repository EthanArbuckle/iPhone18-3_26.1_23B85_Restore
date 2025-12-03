@interface PUILocationServicesAuthLevelCell
- (PUILocationServicesAuthLevelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)getLazyIcon;
- (id)getLazyIconID;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PUILocationServicesAuthLevelCell

- (PUILocationServicesAuthLevelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v14.receiver = self;
  v14.super_class = PUILocationServicesAuthLevelCell;
  v5 = [(PSTableCell *)&v14 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = objc_alloc_init(PUILocationUsageMixin);
    location = v5->_location;
    v5->_location = v6;

    detailTextLabel = [(PUILocationServicesAuthLevelCell *)v5 detailTextLabel];
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [detailTextLabel setTextColor:lightGrayColor];

    authLevelString = [(PUILocationUsageMixin *)v5->_location authLevelString];
    [detailTextLabel setText:authLevelString];

    contentView = [(PUILocationServicesAuthLevelCell *)v5 contentView];
    usageIndicator = [(PUILocationUsageMixin *)v5->_location usageIndicator];
    [contentView addSubview:usageIndicator];
  }

  return v5;
}

- (void)layoutSubviews
{
  v70.receiver = self;
  v70.super_class = PUILocationServicesAuthLevelCell;
  [(PSTableCell *)&v70 layoutSubviews];
  detailTextLabel = [(PUILocationServicesAuthLevelCell *)self detailTextLabel];
  authLevelString = [(PUILocationUsageMixin *)self->_location authLevelString];
  if (authLevelString)
  {
    [detailTextLabel setText:authLevelString];
  }

  usageIndicator = [(PUILocationUsageMixin *)self->_location usageIndicator];
  if (([usageIndicator isHidden] & 1) == 0)
  {
    [detailTextLabel frame];
    v7 = v6;
    v9 = v8;
    traitCollection = [(PUILocationServicesAuthLevelCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      [detailTextLabel frame];
      v14 = v13;
      v68 = v15;
      v17 = v16;
      v19 = v18;
      _shouldReverseLayoutDirection = [(PUILocationServicesAuthLevelCell *)self _shouldReverseLayoutDirection];
      [usageIndicator frame];
      v22 = v21;
      v24 = v23;
      [detailTextLabel frame];
      Height = CGRectGetHeight(v71);
      [usageIndicator frame];
      v26 = v9 + (Height - CGRectGetHeight(v72)) * 0.5;
      if (_shouldReverseLayoutDirection)
      {
        [detailTextLabel frame];
        Width = CGRectGetWidth(v73);
        [usageIndicator frame];
        [usageIndicator setFrame:{v7 + Width - CGRectGetWidth(v74), v26, v22, v24}];
        [usageIndicator frame];
        v28 = v14 - (CGRectGetWidth(v75) + 6.0);
      }

      else
      {
        [usageIndicator setFrame:{v7, v26, v22, v24}];
        [usageIndicator frame];
        v28 = v14 + CGRectGetWidth(v81) + 6.0;
      }

      [detailTextLabel setFrame:{v28, v68, v17, v19}];
      text = [detailTextLabel text];
      v50 = [text length];

      if (!v50)
      {
        v51 = 6.0;
        if (([(PUILocationServicesAuthLevelCell *)self _shouldReverseLayoutDirection]& 1) == 0)
        {
          contentView = [(PUILocationServicesAuthLevelCell *)self contentView];
          [contentView bounds];
          v53 = CGRectGetWidth(v82) + -6.0;
          [usageIndicator frame];
          v51 = v53 - CGRectGetWidth(v83);
        }

        [usageIndicator setFrame:{v51, v26, v22, v24}];
      }

      goto LABEL_19;
    }

    textLabel = [(PUILocationServicesAuthLevelCell *)self textLabel];
    [textLabel frame];
    v69 = v30;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    _shouldReverseLayoutDirection2 = [(PUILocationServicesAuthLevelCell *)self _shouldReverseLayoutDirection];
    [usageIndicator frame];
    v39 = v38;
    v41 = v40;
    [detailTextLabel frame];
    v42 = CGRectGetHeight(v76);
    [usageIndicator frame];
    v43 = v9 + (v42 - CGRectGetHeight(v77)) * 0.5;
    if (_shouldReverseLayoutDirection2)
    {
      [detailTextLabel frame];
      v44 = v7 + CGRectGetWidth(v78) + 6.0;
      [usageIndicator setFrame:{v44, v43, v39, v41}];
      v79.origin.x = v44;
      v79.origin.y = v43;
      v79.size.width = v39;
      v79.size.height = v41;
      MaxX = CGRectGetMaxX(v79);
      v80.origin.x = v69;
      v80.origin.y = v32;
      v80.size.width = v34;
      v80.size.height = v36;
      MinX = CGRectGetMinX(v80);
      if (MinX + -6.0 < MaxX)
      {
        v47 = MaxX - MinX + 6.0;
        v48 = v69 + v47;
LABEL_17:
        [textLabel setFrame:{v48, v32, v34 - v47, v36}];
      }
    }

    else
    {
      [usageIndicator frame];
      v54 = v7 - (CGRectGetWidth(v84) + 6.0);
      [usageIndicator setFrame:{v54, v43, v39, v41}];
      v85.origin.x = v54;
      v85.origin.y = v43;
      v85.size.width = v39;
      v85.size.height = v41;
      v55 = CGRectGetMinX(v85);
      v48 = v69;
      v86.origin.x = v69;
      v86.origin.y = v32;
      v86.size.width = v34;
      v86.size.height = v36;
      v56 = CGRectGetMaxX(v86);
      if (v56 + 6.0 > v55)
      {
        v47 = v56 - v55 + 6.0;
        goto LABEL_17;
      }
    }

LABEL_19:
    text2 = [detailTextLabel text];
    v58 = [text2 length];

    if (!v58)
    {
      [usageIndicator frame];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      contentView2 = [(PUILocationServicesAuthLevelCell *)self contentView];
      [contentView2 bounds];
      v66 = CGRectGetHeight(v87);
      [usageIndicator bounds];
      v67 = (v66 - CGRectGetHeight(v88)) * 0.5;

      [usageIndicator setFrame:{v60, v67, v62, v64}];
    }
  }
}

- (id)getLazyIconID
{
  v3 = *MEMORY[0x277D3FCD8];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    specifier = [(PSTableCell *)self specifier];
    v5 = [specifier objectForKeyedSubscript:*MEMORY[0x277D3FFD8]];
    if (v5)
    {
      isWebApp = self->_isWebApp;

      if (!isWebApp)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

LABEL_8:
    if (self->_isWebApp)
    {
      [MEMORY[0x277D75D70] webClipIdentifierFromBundleIdentifier:*(&self->super.super.super.super.super.isa + v3)];
    }

    else
    {
      [(NSURL *)self->_bundleURL absoluteString];
    }
    getLazyIconID = ;
    goto LABEL_12;
  }

  if (self->_isWebApp)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9.receiver = self;
  v9.super_class = PUILocationServicesAuthLevelCell;
  getLazyIconID = [(PSTableCell *)&v9 getLazyIconID];
LABEL_12:

  return getLazyIconID;
}

- (id)getLazyIcon
{
  v3 = *MEMORY[0x277D3FCD8];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    specifier = [(PSTableCell *)self specifier];
    v5 = [specifier objectForKeyedSubscript:*MEMORY[0x277D3FFD8]];
    if (!v5)
    {

      goto LABEL_8;
    }

    isWebApp = self->_isWebApp;

    if (isWebApp)
    {
      goto LABEL_8;
    }

LABEL_6:
    v18.receiver = self;
    v18.super_class = PUILocationServicesAuthLevelCell;
    getLazyIcon = [(PSTableCell *)&v18 getLazyIcon];
    goto LABEL_24;
  }

  if (!self->_isWebApp)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (getLazyIcon_onceToken != -1)
  {
    [PUILocationServicesAuthLevelCell getLazyIcon];
  }

  if (self->_isWebApp)
  {
    v8 = [MEMORY[0x277D75D70] webClipIdentifierFromBundleIdentifier:*(&self->super.super.super.super.super.isa + v3)];
    v9 = [MEMORY[0x277D75D70] webClipWithIdentifier:v8];
    getLazyIcon = [v9 generateIconImageForFormat:0 scale:*&getLazyIcon_screenScale];

    if (!getLazyIcon)
    {
      v17.receiver = self;
      v17.super_class = PUILocationServicesAuthLevelCell;
      getLazyIcon = [(PSTableCell *)&v17 getLazyIcon];
    }
  }

  else
  {
    v10 = CFBundleCreate(*MEMORY[0x277CBECE8], self->_bundleURL);
    if (!v10)
    {
      getLazyIcon = 0;
      goto LABEL_24;
    }

    v11 = v10;
    v8 = CFBundleGetIdentifier(v10);
    if ([v8 isEqualToString:@"com.apple.weather-framework"])
    {
      v12 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/Weather.framework"];
      getLazyIcon = [MEMORY[0x277D755B8] imageNamed:@"IconMasked-table" inBundle:v12];
    }

    else if ([v8 isEqualToString:@"com.apple.PassKitCore"])
    {
      getLazyIcon = PSPassbookImage();
    }

    else
    {
      v16 = *&getLazyIcon_screenScale;
      [MEMORY[0x277D755B8] _iconVariantForUIApplicationIconFormat:0 scale:&v16];
      v13 = LICreateIconForBundle();
      if (v13)
      {
        v14 = v13;
        getLazyIcon = [MEMORY[0x277D755B8] imageWithCGImage:v13 scale:0 orientation:v16];
        CFRelease(v14);
      }

      else
      {
        getLazyIcon = 0;
      }
    }

    CFRelease(v11);
  }

LABEL_24:

  return getLazyIcon;
}

void __47__PUILocationServicesAuthLevelCell_getLazyIcon__block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  getLazyIcon_screenScale = v0;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"_BundleUrl_"];
  bundleURL = self->_bundleURL;
  self->_bundleURL = v5;

  v7.receiver = self;
  v7.super_class = PUILocationServicesAuthLevelCell;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
}

@end