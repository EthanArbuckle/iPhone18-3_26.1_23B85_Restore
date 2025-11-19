@interface MusicUsageTableViewCell
+ (double)maximumRowHeightIncludingArtwork:(BOOL)a3 includingSubtitle:(BOOL)a4 traitCollection:(id)a5 sizingCache:(id *)a6;
- (MusicUsageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)_fileSizeText;
- (void)_handleArtworkImageUpdate:(id)a3 idealArtworkSize:(CGSize)a4;
- (void)_layoutArtworkViewWithAvailableContentBounds:(CGRect)a3 idealArtworkSize:(CGSize)a4 usingBlock:(id)a5;
- (void)_reloadWithUsageItemFromSpecifier:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4;
@end

@implementation MusicUsageTableViewCell

+ (double)maximumRowHeightIncludingArtwork:(BOOL)a3 includingSubtitle:(BOOL)a4 traitCollection:(id)a5 sizingCache:(id *)a6
{
  v7 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!a6)
  {
    goto LABEL_9;
  }

  if (!v8 || (p_var3 = a6, !v7))
  {
    p_var3 = &a6->var3;
    if (v7)
    {
      p_var3 = &a6->var2;
    }

    if (v8)
    {
      p_var3 = &a6->var1;
    }
  }

  var0 = p_var3->var0;
  if (p_var3->var0 <= 0.00000011920929)
  {
LABEL_9:
    if (v8)
    {
      v13 = 48.0;
    }

    else
    {
      v13 = 0.0;
    }

    [v9 displayScale];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v14 _bodyLeading];
    MPUFloatCeilForScale();
    v16 = v15 + 0.0;
    if (v7)
    {
      v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
      [v17 _bodyLeading];
      [v14 _bodyLeading];
      [v14 ascender];
      [v17 _scaledValueForValue:16.0];
      [v17 ascender];
      MPUFloatCeilForScale();
      v16 = v16 + v18;
    }

    v19 = v16 + 8.0;
    if (v13 >= v16 + 8.0)
    {
      v19 = v13;
    }

    if (v19 >= 52.0)
    {
      var0 = v19;
    }

    else
    {
      var0 = 52.0;
    }

    if (a6)
    {
      if (!v8 || !v7)
      {
        if (v8)
        {
          a6 = (a6 + 8);
        }

        else if (v7)
        {
          a6 = (a6 + 16);
        }

        else
        {
          a6 = (a6 + 24);
        }
      }

      a6->var0 = var0;
    }
  }

  return var0;
}

- (MusicUsageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = MusicUsageTableViewCell;
  v9 = [(MusicUsageTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(MusicUsageTableViewCell *)v9 setSpecifier:v8];
    [(MusicUsageTableViewCell *)v10 _reloadWithUsageItemFromSpecifier:v8];
  }

  return v10;
}

- (void)layoutSubviews
{
  v118.receiver = self;
  v118.super_class = MusicUsageTableViewCell;
  [(MusicUsageTableViewCell *)&v118 layoutSubviews];
  v102 = [(MusicUsageTableViewCell *)self traitCollection];
  [v102 displayScale];
  v4 = v3;
  v5 = [(MusicUsageTableViewCell *)self contentView];
  [v5 bounds];
  v105 = v7;
  v106 = v6;
  v103 = v9;
  v104 = v8;
  [(MusicUsageTableViewCell *)self layoutMargins];
  v11 = v10;
  v13 = v12;
  v14 = [(MusicUsageTableViewCell *)self accessoryType];
  v110 = 0;
  v111 = &v110;
  v112 = 0x4010000000;
  v113 = "";
  v114 = v106 + v11;
  v115 = v105 + 0.0;
  v116 = v104 - (v11 + v13);
  v117 = v103;
  if (v14)
  {
    v15 = +[UIApplication sharedApplication];
    v16 = [v15 userInterfaceLayoutDirection] == &dword_0 + 1;

    p_x = &v111->origin.x;
    if (v16)
    {
      v111[1].origin.x = 0.0;
    }
  }

  else
  {
    p_x = &v110;
  }

  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = sub_1E78;
  v109[3] = &unk_103F0;
  v109[4] = self;
  v109[5] = &v110;
  *&v109[6] = v4;
  *&v109[7] = v106;
  *&v109[8] = v105;
  *&v109[9] = v104;
  *&v109[10] = v103;
  [(MusicUsageTableViewCell *)self _layoutArtworkViewWithAvailableContentBounds:v109 idealArtworkSize:p_x[4] usingBlock:p_x[5], p_x[6], p_x[7], 40.0, 40.0];
  v18 = [(MusicUsageTableViewCell *)self _fileSizeText];
  v19 = [v18 length];
  fileSizeLabel = self->_fileSizeLabel;
  if (v19)
  {
    if (!fileSizeLabel)
    {
      v21 = objc_alloc_init(UILabel);
      v22 = self->_fileSizeLabel;
      self->_fileSizeLabel = v21;

      v23 = self->_fileSizeLabel;
      v24 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [(UILabel *)v23 setFont:v24];

      v25 = self->_fileSizeLabel;
      v26 = +[UIColor tableCellGrayTextColor];
      [(UILabel *)v25 setTextColor:v26];

      [(UILabel *)self->_fileSizeLabel setTextAlignment:4];
      [v5 addSubview:self->_fileSizeLabel];
      fileSizeLabel = self->_fileSizeLabel;
    }

    if ([(UILabel *)fileSizeLabel isHidden])
    {
      [(UILabel *)self->_fileSizeLabel setHidden:0];
    }

    width = v111[1].size.width;
    height = v111[1].size.height;
    [(UILabel *)self->_fileSizeLabel setText:v18];
    [(UILabel *)self->_fileSizeLabel sizeThatFits:width, height];
    if (v29 < width)
    {
      width = v29;
    }

    if (v30 < height)
    {
      height = v30;
    }

    CGRectGetMaxX(v111[1]);
    v121.origin.x = CGRectZero.origin.x;
    v121.origin.y = CGRectZero.origin.y;
    v121.size.width = width;
    v121.size.height = height;
    CGRectGetWidth(v121);
    x = v111[1].origin.x;
    y = v111[1].origin.y;
    v33 = v111[1].size.width;
    v34 = v111[1].size.height;
    UIRectCenteredYInRectScale();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [(UILabel *)self->_fileSizeLabel setFrame:MusicRectByApplyingUserInterfaceLayoutDirectionInRect([(MusicUsageTableViewCell *)self effectiveUserInterfaceLayoutDirection], v35, v37, v39, v41, v106, v105, v104, v103)];
    MaxX = CGRectGetMaxX(v111[1]);
    v122.origin.x = v36;
    v122.origin.y = v38;
    v122.size.width = v40;
    v122.size.height = v42;
    MinX = CGRectGetMinX(v122);
    v45 = v111;
    v111[1].size.width = v111[1].size.width - (MaxX - MinX + 8.0);
  }

  else
  {
    [(UILabel *)fileSizeLabel setHidden:1];
    v45 = v111;
  }

  origin = v45[1].origin;
  size = v45[1].size;
  v46 = self->_usageItemTitle;
  v47 = [(NSString *)v46 length];
  titleLabel = self->_titleLabel;
  if (v47)
  {
    if (!titleLabel)
    {
      v49 = objc_alloc_init(UILabel);
      v50 = self->_titleLabel;
      self->_titleLabel = v49;

      v51 = self->_titleLabel;
      v52 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [(UILabel *)v51 setFont:v52];

      v53 = self->_titleLabel;
      v54 = +[UIColor _labelColor];
      [(UILabel *)v53 setTextColor:v54];

      [(UILabel *)self->_titleLabel setTextAlignment:4];
      [v5 addSubview:self->_titleLabel];
      titleLabel = self->_titleLabel;
    }

    if ([(UILabel *)titleLabel isHidden])
    {
      [(UILabel *)self->_titleLabel setHidden:0];
    }

    v55 = v111[1].size.width;
    v56 = v111[1].size.height;
    [(UILabel *)self->_titleLabel setText:v46];
    [(UILabel *)self->_titleLabel sizeThatFits:v55, v56];
    if (v57 < v55)
    {
      v55 = v57;
    }

    if (v58 < v56)
    {
      v56 = v58;
    }

    v59 = CGRectGetMinX(v111[1]);
    MinY = CGRectGetMinY(v111[1]);
    v123.origin.x = v59;
    v123.origin.y = MinY;
    v123.size.width = v55;
    v123.size.height = v56;
    CGRectGetMinY(v123);
    v124.origin.x = v59;
    v124.origin.y = MinY;
    v124.size.width = v55;
    v124.size.height = v56;
    CGRectGetMaxY(v124);
    [(UILabel *)self->_titleLabel setFrame:MusicRectByApplyingUserInterfaceLayoutDirectionInRect([(MusicUsageTableViewCell *)self effectiveUserInterfaceLayoutDirection], v59, MinY, v55, v56, v106, v105, v104, v103)];
    v125.origin.x = v59;
    v125.origin.y = MinY;
    v125.size.width = v55;
    v125.size.height = v56;
    v61 = CGRectGetHeight(v125) + 0.0;
    v62 = v111;
    v111[1].origin.y = v61 + v111[1].origin.y;
    v62[1].size.height = v62[1].size.height - v61;
    v63 = self->_titleLabel;
  }

  else
  {
    [(UILabel *)titleLabel setHidden:1];
    v63 = 0;
  }

  v64 = self->_usageItemSubtitles;
  v65 = [(NSArray *)v64 count];
  subtitleLabel = self->_subtitleLabel;
  if (v65)
  {
    if (!subtitleLabel)
    {
      v67 = objc_alloc_init(MPUAbbreviatingLabel);
      v68 = self->_subtitleLabel;
      self->_subtitleLabel = v67;

      v69 = self->_subtitleLabel;
      v70 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
      [(MPUAbbreviatingLabel *)v69 setFont:v70];

      v71 = self->_subtitleLabel;
      v72 = PreferencesTableViewHeaderColor();
      [(MPUAbbreviatingLabel *)v71 setTextColor:v72];

      [(MPUAbbreviatingLabel *)self->_subtitleLabel setTextAlignment:4];
      [v5 addSubview:self->_subtitleLabel];
      subtitleLabel = self->_subtitleLabel;
    }

    if ([(MPUAbbreviatingLabel *)subtitleLabel isHidden])
    {
      [(MPUAbbreviatingLabel *)self->_subtitleLabel setHidden:0];
    }

    v74 = v111[1].size.width;
    v73 = v111[1].size.height;
    if (v63)
    {
      v75 = [(MPUAbbreviatingLabel *)self->_subtitleLabel font];
      [v75 _scaledValueForValue:16.0];
      v77 = v76;
      [v75 ascender];
      v79 = v78;
      [(UILabel *)v63 _baselineOffsetFromBottom];
      v81 = v80;

      v82 = round(v4 * (v77 - v79)) / v4;
      v73 = v73 + v81 - v82;
    }

    else
    {
      v82 = 0.0;
    }

    [(MPUAbbreviatingLabel *)self->_subtitleLabel setTextRepresentations:v64];
    [(MPUAbbreviatingLabel *)self->_subtitleLabel sizeThatFits:v74, v73];
    if (v83 < v73)
    {
      v73 = v83;
    }

    v84 = CGRectGetMinX(v111[1]);
    [(UILabel *)v63 frame];
    MaxY = CGRectGetMaxY(v126);
    if (v63)
    {
      v86 = MaxY;
      [(UILabel *)v63 _baselineOffsetFromBottom];
      v88 = v82 + v86 - v87;
    }

    else
    {
      v88 = CGRectGetMinY(v111[1]);
    }

    v127.origin.x = v84;
    v127.origin.y = v88;
    v127.size.width = v74;
    v127.size.height = v73;
    CGRectGetMinY(v127);
    v128.origin.x = v84;
    v128.origin.y = v88;
    v128.size.width = v74;
    v128.size.height = v73;
    CGRectGetMaxY(v128);
    [(MPUAbbreviatingLabel *)self->_subtitleLabel setFrame:MusicRectByApplyingUserInterfaceLayoutDirectionInRect([(MusicUsageTableViewCell *)self effectiveUserInterfaceLayoutDirection], v84, v88, v74, v73, v106, v105, v104, v103)];
  }

  else
  {
    [(MPUAbbreviatingLabel *)subtitleLabel setHidden:1];
  }

  v89 = v111;
  v111[1].origin = origin;
  v89[1].size = size;
  CGRectGetHeight(v89[1]);
  v119 = self->_titleLabel;
  v120 = self->_subtitleLabel;
  v90 = &v119;
  v91 = 1;
  do
  {
    v92 = v91;
    v93 = *v90;
    v94 = v93;
    if (v93 && ([v93 isHidden] & 1) == 0)
    {
      [v94 frame];
      [v94 setFrame:?];
    }

    v91 = 0;
    v90 = &v120;
  }

  while ((v92 & 1) != 0);
  [(MusicUsageTableViewCell *)self separatorInset];
  v96 = v95;
  v98 = v97;
  v100 = v99;
  [(UILabel *)self->_titleLabel frame];
  [(MusicUsageTableViewCell *)self setSeparatorInset:v96, CGRectGetMinX(v129), v98, v100];
  for (i = 1; i != -1; --i)
  {
  }

  _Block_object_dispose(&v110, 8);
}

- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  [(MusicUsageTableViewCell *)self setSpecifier:v5];
  [(MusicUsageTableViewCell *)self _reloadWithUsageItemFromSpecifier:v5];
}

- (id)_fileSizeText
{
  v2 = [(MusicUsageTableViewCell *)self specifier];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR___PSSpecifier_getter);
    WeakRetained = objc_loadWeakRetained((v2 + OBJC_IVAR___PSSpecifier_target));
    v6 = [WeakRetained methodForSelector:v4];

    v7 = objc_loadWeakRetained(&v3[OBJC_IVAR___PSSpecifier_target]);
    v8 = v6(v7, *&v3[OBJC_IVAR___PSSpecifier_getter], v3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handleArtworkImageUpdate:(id)a3 idealArtworkSize:(CGSize)a4
{
  v11 = a3;
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = [UIColor colorWithWhite:0.85 alpha:1.0];
  }

  [(UIImageView *)self->_artworkView setImage:v11];
  [(UIImageView *)self->_artworkView setBackgroundColor:v5];
  [v11 size];
  v8 = v7;
  v9 = 0.0;
  if (v6 > 0.00000011920929 && v8 > 0.00000011920929)
  {
    v9 = 1.0;
    if (!self->_usageItemArtworkWantsCircleTreatment)
    {
      v9 = v6 / v8;
    }
  }

  if (!MusicFloatEqualToFloat(self->_lastUsedArtworkViewAspectRatio, v9))
  {
    [(MusicUsageTableViewCell *)self setNeedsLayout];
  }
}

- (void)_layoutArtworkViewWithAvailableContentBounds:(CGRect)a3 idealArtworkSize:(CGSize)a4 usingBlock:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a5;
  artworkView = self->_artworkView;
  if (!self->_usageItemHasArtworkCatalogBlock)
  {
    [(UIImageView *)artworkView setHidden:1];
    goto LABEL_23;
  }

  if (!artworkView)
  {
    v10 = objc_alloc_init(UIImageView);
    v11 = self->_artworkView;
    self->_artworkView = v10;

    v12 = [(UIImageView *)self->_artworkView layer];
    v13 = [UIColor colorWithWhite:0.0 alpha:0.1];
    [v12 setBorderColor:{objc_msgSend(v13, "CGColor")}];

    [(UIImageView *)self->_artworkView setClipsToBounds:1];
    v14 = self->_artworkView;
    if (self->_usageItemArtworkWantsCircleTreatment)
    {
      [(UIImageView *)v14 setContentMode:2];
      [(UIImageView *)self->_artworkView _setCornerRadius:width * 0.5];
    }

    else
    {
      [(UIImageView *)v14 setContentMode:1];
      [(UIImageView *)self->_artworkView _setContinuousCornerRadius:4.0];
    }

    v15 = [(MusicUsageTableViewCell *)self contentView];
    [v15 addSubview:self->_artworkView];

    artworkView = self->_artworkView;
  }

  [(UIImageView *)artworkView setHidden:0];
  v16 = [(MusicUsageTableViewCell *)self traitCollection];
  [v16 displayScale];
  *&v45 = MusicSafeDisplayScale(v17);
  v18 = [(UIImageView *)self->_artworkView layer];
  [v18 setBorderWidth:1.0 / *&v45];

  if (width > 0.00000011920929 && height > 0.00000011920929)
  {
    v20 = [(UIImageView *)self->_artworkView image];
    v21 = v20;
    if (v20)
    {
      [v20 size];
      if (v22 > 0.00000011920929 && v23 > 0.00000011920929)
      {
        v42 = v23;
        v43 = v22;
        v34 = width / v22;
        v35 = height / v23;
        v36 = MusicFloatEqualToFloat(width / v22, height / v23);
        usageItemArtworkWantsCircleTreatment = self->_usageItemArtworkWantsCircleTreatment;
        if (v36)
        {
          if (!self->_usageItemArtworkWantsCircleTreatment)
          {
            v37.n128_f64[0] = width;
            v44 = v37;
            v25 = height;
            v26 = width / height;
LABEL_33:

            v19 = v44;
            goto LABEL_18;
          }
        }

        else if (!self->_usageItemArtworkWantsCircleTreatment)
        {
          if (v34 >= v35)
          {
            v39 = v35;
          }

          else
          {
            v39 = v34;
          }

          v40.f64[0] = v43;
          v40.f64[1] = v42;
          v41 = vdivq_f64(vrndmq_f64(vmulq_n_f64(vmulq_n_f64(v40, v39), *&v45)), vdupq_lane_s64(v45, 0));
          v25 = v41.f64[1];
          v44 = v41;
          v26 = v41.f64[0] / v41.f64[1];
          goto LABEL_33;
        }

        v26 = 1.0;
        v37.n128_f64[0] = width;
        v44 = v37;
        v25 = height;
        goto LABEL_33;
      }
    }
  }

  v25 = height;
  v19.n128_f64[0] = width;
  v26 = width / height;
LABEL_18:
  self->_lastUsedArtworkViewAspectRatio = v26;
  v8[2](v8, self->_artworkView, v19, v25, width, height);
  if (!self->_artworkConfigurationBlockEnabled)
  {
    v27 = self->_usageItem;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    [(UIImageView *)self->_artworkView frame];
    v29 = v28;
    v31 = v30;
    v32 = self->_usageItemArtworkCatalog;
    [(MPArtworkCatalog *)v32 setDestinationScale:*&v45];
    [(MPArtworkCatalog *)v32 setFittingSize:v29, v31];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_25FC;
    v46[3] = &unk_10418;
    v33 = v27;
    v49 = width;
    v50 = height;
    v47 = v33;
    v48 = &v51;
    [(MPArtworkCatalog *)v32 setDestination:self configurationBlock:v46];
    self->_artworkConfigurationBlockEnabled = 1;
    if ((v52[3] & 1) == 0)
    {
      [(MusicUsageTableViewCell *)self _handleArtworkImageUpdate:0 idealArtworkSize:width, height];
    }

    _Block_object_dispose(&v51, 8);
  }

LABEL_23:
}

- (void)_reloadWithUsageItemFromSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"MusicUsageItemPropertyKey"];
  v5 = v4;
  if (self->_usageItem != v4)
  {
    obj = v4;
    if (self->_artworkConfigurationBlockEnabled)
    {
      [(MusicUsageTableViewCell *)self clearArtworkCatalogs];
      self->_artworkConfigurationBlockEnabled = 0;
    }

    objc_storeStrong(&self->_usageItem, obj);
    v6 = [(MusicUsageItem *)self->_usageItem artworkCatalog];
    usageItemArtworkCatalog = self->_usageItemArtworkCatalog;
    self->_usageItemArtworkCatalog = v6;

    v8 = [(MusicUsageItem *)self->_usageItem artworkCatalogBlock];
    self->_usageItemHasArtworkCatalogBlock = v8 != 0;

    self->_usageItemArtworkWantsCircleTreatment = [(MusicUsageItem *)self->_usageItem artworkWantsCircleTreatment];
    v9 = [(MusicUsageItem *)self->_usageItem subtitles];
    v10 = [v9 copy];
    usageItemSubtitles = self->_usageItemSubtitles;
    self->_usageItemSubtitles = v10;

    v12 = [(MusicUsageItem *)self->_usageItem title];
    v13 = [v12 copy];
    usageItemTitle = self->_usageItemTitle;
    self->_usageItemTitle = v13;

    v15 = [(MusicUsageItem *)self->_usageItem childUsageGroup];

    v16 = v15 != 0;
    if (v15)
    {
      v17 = 3;
    }

    else
    {
      v17 = 0;
    }

    [(MusicUsageTableViewCell *)self setAccessoryType:v16];
    [(MusicUsageTableViewCell *)self setSelectionStyle:v17];
    v4 = [(MusicUsageTableViewCell *)self setNeedsLayout];
    v5 = obj;
  }

  _objc_release_x1(v4, v5);
}

@end