@interface PUILocationServicesAuthLevelCell
- (PUILocationServicesAuthLevelCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)getLazyIcon;
- (id)getLazyIconID;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PUILocationServicesAuthLevelCell

- (PUILocationServicesAuthLevelCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v14.receiver = self;
  v14.super_class = PUILocationServicesAuthLevelCell;
  v5 = [(PSTableCell *)&v14 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = objc_alloc_init(PUILocationUsageMixin);
    location = v5->_location;
    v5->_location = v6;

    v8 = [(PUILocationServicesAuthLevelCell *)v5 detailTextLabel];
    v9 = [MEMORY[0x277D75348] lightGrayColor];
    [v8 setTextColor:v9];

    v10 = [(PUILocationUsageMixin *)v5->_location authLevelString];
    [v8 setText:v10];

    v11 = [(PUILocationServicesAuthLevelCell *)v5 contentView];
    v12 = [(PUILocationUsageMixin *)v5->_location usageIndicator];
    [v11 addSubview:v12];
  }

  return v5;
}

- (void)layoutSubviews
{
  v70.receiver = self;
  v70.super_class = PUILocationServicesAuthLevelCell;
  [(PSTableCell *)&v70 layoutSubviews];
  v3 = [(PUILocationServicesAuthLevelCell *)self detailTextLabel];
  v4 = [(PUILocationUsageMixin *)self->_location authLevelString];
  if (v4)
  {
    [v3 setText:v4];
  }

  v5 = [(PUILocationUsageMixin *)self->_location usageIndicator];
  if (([v5 isHidden] & 1) == 0)
  {
    [v3 frame];
    v7 = v6;
    v9 = v8;
    v10 = [(PUILocationServicesAuthLevelCell *)self traitCollection];
    v11 = [v10 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v11);

    if (IsAccessibilityCategory)
    {
      [v3 frame];
      v14 = v13;
      v68 = v15;
      v17 = v16;
      v19 = v18;
      v20 = [(PUILocationServicesAuthLevelCell *)self _shouldReverseLayoutDirection];
      [v5 frame];
      v22 = v21;
      v24 = v23;
      [v3 frame];
      Height = CGRectGetHeight(v71);
      [v5 frame];
      v26 = v9 + (Height - CGRectGetHeight(v72)) * 0.5;
      if (v20)
      {
        [v3 frame];
        Width = CGRectGetWidth(v73);
        [v5 frame];
        [v5 setFrame:{v7 + Width - CGRectGetWidth(v74), v26, v22, v24}];
        [v5 frame];
        v28 = v14 - (CGRectGetWidth(v75) + 6.0);
      }

      else
      {
        [v5 setFrame:{v7, v26, v22, v24}];
        [v5 frame];
        v28 = v14 + CGRectGetWidth(v81) + 6.0;
      }

      [v3 setFrame:{v28, v68, v17, v19}];
      v49 = [v3 text];
      v50 = [v49 length];

      if (!v50)
      {
        v51 = 6.0;
        if (([(PUILocationServicesAuthLevelCell *)self _shouldReverseLayoutDirection]& 1) == 0)
        {
          v52 = [(PUILocationServicesAuthLevelCell *)self contentView];
          [v52 bounds];
          v53 = CGRectGetWidth(v82) + -6.0;
          [v5 frame];
          v51 = v53 - CGRectGetWidth(v83);
        }

        [v5 setFrame:{v51, v26, v22, v24}];
      }

      goto LABEL_19;
    }

    v29 = [(PUILocationServicesAuthLevelCell *)self textLabel];
    [v29 frame];
    v69 = v30;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [(PUILocationServicesAuthLevelCell *)self _shouldReverseLayoutDirection];
    [v5 frame];
    v39 = v38;
    v41 = v40;
    [v3 frame];
    v42 = CGRectGetHeight(v76);
    [v5 frame];
    v43 = v9 + (v42 - CGRectGetHeight(v77)) * 0.5;
    if (v37)
    {
      [v3 frame];
      v44 = v7 + CGRectGetWidth(v78) + 6.0;
      [v5 setFrame:{v44, v43, v39, v41}];
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
        [v29 setFrame:{v48, v32, v34 - v47, v36}];
      }
    }

    else
    {
      [v5 frame];
      v54 = v7 - (CGRectGetWidth(v84) + 6.0);
      [v5 setFrame:{v54, v43, v39, v41}];
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
    v57 = [v3 text];
    v58 = [v57 length];

    if (!v58)
    {
      [v5 frame];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v65 = [(PUILocationServicesAuthLevelCell *)self contentView];
      [v65 bounds];
      v66 = CGRectGetHeight(v87);
      [v5 bounds];
      v67 = (v66 - CGRectGetHeight(v88)) * 0.5;

      [v5 setFrame:{v60, v67, v62, v64}];
    }
  }
}

- (id)getLazyIconID
{
  v3 = *MEMORY[0x277D3FCD8];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    v4 = [(PSTableCell *)self specifier];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3FFD8]];
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
    v7 = ;
    goto LABEL_12;
  }

  if (self->_isWebApp)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9.receiver = self;
  v9.super_class = PUILocationServicesAuthLevelCell;
  v7 = [(PSTableCell *)&v9 getLazyIconID];
LABEL_12:

  return v7;
}

- (id)getLazyIcon
{
  v3 = *MEMORY[0x277D3FCD8];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    v4 = [(PSTableCell *)self specifier];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3FFD8]];
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
    v7 = [(PSTableCell *)&v18 getLazyIcon];
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
    v7 = [v9 generateIconImageForFormat:0 scale:*&getLazyIcon_screenScale];

    if (!v7)
    {
      v17.receiver = self;
      v17.super_class = PUILocationServicesAuthLevelCell;
      v7 = [(PSTableCell *)&v17 getLazyIcon];
    }
  }

  else
  {
    v10 = CFBundleCreate(*MEMORY[0x277CBECE8], self->_bundleURL);
    if (!v10)
    {
      v7 = 0;
      goto LABEL_24;
    }

    v11 = v10;
    v8 = CFBundleGetIdentifier(v10);
    if ([v8 isEqualToString:@"com.apple.weather-framework"])
    {
      v12 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/Weather.framework"];
      v7 = [MEMORY[0x277D755B8] imageNamed:@"IconMasked-table" inBundle:v12];
    }

    else if ([v8 isEqualToString:@"com.apple.PassKitCore"])
    {
      v7 = PSPassbookImage();
    }

    else
    {
      v16 = *&getLazyIcon_screenScale;
      [MEMORY[0x277D755B8] _iconVariantForUIApplicationIconFormat:0 scale:&v16];
      v13 = LICreateIconForBundle();
      if (v13)
      {
        v14 = v13;
        v7 = [MEMORY[0x277D755B8] imageWithCGImage:v13 scale:0 orientation:v16];
        CFRelease(v14);
      }

      else
      {
        v7 = 0;
      }
    }

    CFRelease(v11);
  }

LABEL_24:

  return v7;
}

void __47__PUILocationServicesAuthLevelCell_getLazyIcon__block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  getLazyIcon_screenScale = v0;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"_BundleUrl_"];
  bundleURL = self->_bundleURL;
  self->_bundleURL = v5;

  v7.receiver = self;
  v7.super_class = PUILocationServicesAuthLevelCell;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
}

@end