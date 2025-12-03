@interface PSTableCell
+ (BOOL)isFromPreferencesFramework;
+ (Class)alternativeCellClass;
+ (Class)cellClassForSpecifier:(id)specifier;
+ (id)reuseIdentifierForBasicCellTypes:(int64_t)types;
+ (id)reuseIdentifierForClassAndType:(int64_t)type;
+ (id)reuseIdentifierForSpecifier:(id)specifier;
+ (id)stringFromCellType:(int64_t)type;
+ (id)traitsThatImpactImageRendering;
+ (int64_t)cellTypeFromString:(id)string;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canReload;
- (BOOL)modernLayoutEnabled;
- (BOOL)shouldUseModernLayout;
- (CGSize)iconSizeForShape:(unint64_t)shape scale:(double)scale;
- (PSSpecifier)specifier;
- (PSTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SEL)action;
- (SEL)cellAction;
- (double)textFieldOffset;
- (id)_automationID;
- (id)_checkmarkImage:(BOOL)image;
- (id)_contentString;
- (id)_copyableText;
- (id)_disclosureChevronImage:(BOOL)image;
- (id)_urlSession;
- (id)blankIcon;
- (id)cellTarget;
- (id)getIconFromIconServices;
- (id)getLazyIcon;
- (id)getLazyIconID;
- (id)imageDescriptor;
- (id)lazyIconQueue:(id)queue;
- (id)scriptingInfoWithChildren;
- (id)target;
- (id)title;
- (id)titleTextLabel;
- (unint64_t)iconShape;
- (void)_invalidateHighlightContext;
- (void)_updateAccessoryTypeForSpecifier:(id)specifier;
- (void)cellRemovedFromView;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)handleTraitCollectionChange:(id)change;
- (void)highlightCellForDuration:(double)duration animateUnighlight:(BOOL)unighlight;
- (void)layoutSubviews;
- (void)loadISIconFromSpecifier:(id)specifier;
- (void)longPressed:(id)pressed;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated;
- (void)setAction:(SEL)action;
- (void)setAlignment:(int)alignment;
- (void)setCellAction:(SEL)action;
- (void)setCellEnabled:(BOOL)enabled;
- (void)setChecked:(BOOL)checked;
- (void)setForceHideDisclosureIndicator:(BOOL)indicator;
- (void)setIcon:(id)icon;
- (void)setSpecifier:(id)specifier;
- (void)setTarget:(id)target;
- (void)setTitle:(id)title;
- (void)setValue:(id)value;
- (void)setValueChangedTarget:(id)target action:(SEL)action specifier:(id)specifier;
- (void)setupModernLayoutConstraints;
@end

@implementation PSTableCell

+ (BOOL)isFromPreferencesFramework
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = PSPreferencesFrameworkBundle();
  v4 = [v2 isEqual:v3];

  return v4;
}

+ (id)traitsThatImpactImageRendering
{
  if (traitsThatImpactImageRendering_onceToken != -1)
  {
    +[PSTableCell traitsThatImpactImageRendering];
  }

  v3 = traitsThatImpactImageRendering_traitsThatImpactImageRendering;

  return v3;
}

void __45__PSTableCell_traitsThatImpactImageRendering__block_invoke()
{
  v5 = [MEMORY[0x1E695DFA8] set];
  v0 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingImageLookup];
  [v5 addObjectsFromArray:v0];

  v1 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  [v5 addObjectsFromArray:v1];

  gotLoadHelper_x8__OBJC_CLASS___SBSUITraitHomeScreenIconStyle(v2);
  [v5 addObject:objc_opt_class()];
  v3 = [v5 copy];
  v4 = traitsThatImpactImageRendering_traitsThatImpactImageRendering;
  traitsThatImpactImageRendering_traitsThatImpactImageRendering = v3;
}

- (id)imageDescriptor
{
  cachedTraitCollection = [(PSTableCell *)self cachedTraitCollection];
  [cachedTraitCollection displayScale];
  v5 = v4;

  iconShape = [(PSTableCell *)self iconShape];
  [(PSTableCell *)self iconSizeForShape:iconShape scale:v5];
  if (iconShape == 4)
  {
    v9 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A88]];
    [v9 setScale:v5];
    [v9 setSize:{60.0, 45.0}];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v7 scale:{v8, v5}];
  }

  cachedTraitCollection2 = [(PSTableCell *)self cachedTraitCollection];
  [v9 setDrawBorder:1];
  objc_opt_class();
  gotLoadHelper_x8__OBJC_CLASS___SBSUITraitHomeScreenIconStyle(v11);
  v12 = [cachedTraitCollection2 objectForTrait:objc_opt_class()];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  tintColor = [v14 tintColor];
  uIColor = [tintColor UIColor];

  v17 = [cachedTraitCollection2 userInterfaceStyle] == 2;
  [v9 setAppearance:{objc_msgSend(v14, "iconServicesAppearanceUsingDarkInterfaceStyle:", v17)}];
  v18 = [v14 iconServicesAppearanceVariantUsingDarkInterfaceStyle:v17];

  [v9 setAppearanceVariant:v18];
  if (uIColor)
  {
    v19 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:{objc_msgSend(uIColor, "CGColor")}];
    [v9 setTintColor:v19];
  }

  cachedTraitCollection3 = [(PSTableCell *)self cachedTraitCollection];
  if ([cachedTraitCollection3 layoutDirection])
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  [v9 setLanguageDirection:v21];

  cachedTraitCollection4 = [(PSTableCell *)self cachedTraitCollection];
  [v9 setContrast:{objc_msgSend(cachedTraitCollection4, "accessibilityContrast") == 1}];

  [v9 setShape:iconShape];

  return v9;
}

- (unint64_t)iconShape
{
  objc_opt_class();
  lazyIconShapeOverride = [(PSTableCell *)self lazyIconShapeOverride];
  if (objc_opt_isKindOfClass())
  {
    v4 = lazyIconShapeOverride;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    return 0;
  }

  lazyIconShapeOverride2 = [(PSTableCell *)self lazyIconShapeOverride];
  unsignedIntegerValue = [lazyIconShapeOverride2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)blankIcon
{
  if ([(PSTableCell *)self iconShape]== 4)
  {
    PSBlankMessageAppIconImage();
  }

  else
  {
    PSBlankIconImage();
  }
  v2 = ;

  return v2;
}

- (PSSpecifier)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_specifier);

  return WeakRetained;
}

- (BOOL)modernLayoutEnabled
{
  traitCollection = [(PSTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    return 0;
  }

  specifier = [(PSTableCell *)self specifier];
  v8 = [specifier objectForKeyedSubscript:@"useModernLayout"];
  if (([v8 BOOLValue] & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      shouldUseModernLayout = [(PSTableCell *)self shouldUseModernLayout];

      if (shouldUseModernLayout)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return 1;
}

- (void)layoutSubviews
{
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    v188.receiver = self;
    v188.super_class = PSTableCell;
    [(PSTableCell *)&v188 layoutSubviews];
    return;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (([currentDevice sf_isInternalInstall] & 1) == 0)
  {
    goto LABEL_22;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"ClassNameForListControllersAndCellsOverlayEnabled"];

  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = PSPreferencesFrameworkBundle();
  if ([v6 isEqual:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v8 = [v10 isEqualToString:@"PESettingsFeatureDescriptionCell"];
  }

  v11 = [(PSTableCell *)self isMemberOfClass:objc_opt_class()];
  classNameLayer = [(PSTableCell *)self classNameLayer];

  if (!classNameLayer)
  {
    v13 = objc_alloc_init(_PSViewMarkerLayer);
    [(PSTableCell *)self setClassNameLayer:v13];

    layer = [(PSTableCell *)self layer];
    v15 = layer;
    if (layer)
    {
      [layer cornerRadii];
    }

    else
    {
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
    }

    classNameLayer2 = [(PSTableCell *)self classNameLayer];
    v183[0] = v184;
    v183[1] = v185;
    v183[2] = v186;
    v183[3] = v187;
    [classNameLayer2 setCustomCornerRadii:v183];
  }

  classNameLayer3 = [(PSTableCell *)self classNameLayer];
  superlayer = [classNameLayer3 superlayer];

  if (!superlayer)
  {
    layer2 = [(PSTableCell *)self layer];
    classNameLayer4 = [(PSTableCell *)self classNameLayer];
    [layer2 addSublayer:classNameLayer4];
  }

  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  classNameLayer5 = [(PSTableCell *)self classNameLayer];
  [classNameLayer5 setLabel:v22];

  if (!v8)
  {
    systemDarkRedColor = [MEMORY[0x1E69DC888] systemDarkRedColor];
LABEL_20:
    currentDevice = systemDarkRedColor;
    goto LABEL_21;
  }

  if ((v11 & 1) == 0)
  {
    systemDarkRedColor = [MEMORY[0x1E69DC888] systemMintColor];
    goto LABEL_20;
  }

  currentDevice = 0;
LABEL_21:
  classNameLayer6 = [(PSTableCell *)self classNameLayer];
  [classNameLayer6 setAlternateColor:currentDevice];

LABEL_22:
LABEL_23:
  if ([(PSTableCell *)self modernLayoutEnabled])
  {
    [(PSTableCell *)self setupModernLayoutConstraints];
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v27 = [standardUserDefaults2 BOOLForKey:@"PSTableCellVisualLabelDebugging"];

    if (!v27)
    {
      return;
    }

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    v29 = [greenColor colorWithAlphaComponent:0.3];
    textLabel = [(PSTableCell *)self textLabel];
    [textLabel setBackgroundColor:v29];

    greenColor2 = [MEMORY[0x1E69DC888] greenColor];
    v32 = [greenColor2 colorWithAlphaComponent:0.2];
    detailTextLabel = [(PSTableCell *)self detailTextLabel];
    [detailTextLabel setBackgroundColor:v32];

    goto LABEL_80;
  }

  v182.receiver = self;
  v182.super_class = PSTableCell;
  [(PSTableCell *)&v182 layoutSubviews];
  standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v35 = [standardUserDefaults3 BOOLForKey:@"PSTableCellVisualLabelDebugging"];

  if (v35)
  {
    redColor = [MEMORY[0x1E69DC888] redColor];
    v37 = [redColor colorWithAlphaComponent:0.3];
    textLabel2 = [(PSTableCell *)self textLabel];
    [textLabel2 setBackgroundColor:v37];

    redColor2 = [MEMORY[0x1E69DC888] redColor];
    v40 = [redColor2 colorWithAlphaComponent:0.2];
    detailTextLabel2 = [(PSTableCell *)self detailTextLabel];
    [detailTextLabel2 setBackgroundColor:v40];
  }

  _shouldReverseLayoutDirection = [(PSTableCell *)self _shouldReverseLayoutDirection];
  contentView = [(PSTableCell *)self contentView];
  [contentView bounds];
  v179 = v45;
  v180 = v44;
  v181 = v46;
  v48 = v47;

  contentView2 = [(PSTableCell *)self contentView];
  [contentView2 bounds];
  v51 = v50;
  v53 = v52;

  traitCollection = [(PSTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    textLabel3 = [(PSTableCell *)self textLabel];
    LODWORD(v58) = 1045220557;
    [textLabel3 _setHyphenationFactor:v58];

    detailTextLabel3 = [(PSTableCell *)self detailTextLabel];
    LODWORD(v60) = 1055286886;
    [detailTextLabel3 _setHyphenationFactor:v60];
  }

  if ((self->_alignment & 0xFFFFFFFE) == 2)
  {
    textLabel4 = [(PSTableCell *)self textLabel];
    [textLabel4 frame];
    if (self->_alignment == 2)
    {
      v63 = v51 * 0.5 - v62 * 0.5;
      v64 = roundf(v63);
    }

    else
    {
      v64 = v51 - v62 + -10.0;
    }

    [textLabel4 setFrame:v64];
    detailTextLabel4 = [(PSTableCell *)self detailTextLabel];

    text = [detailTextLabel4 text];
    v88 = [text length];

    if (!v88)
    {
      goto LABEL_49;
    }

    [detailTextLabel4 frame];
    v71 = v89;
    v75 = v90;
    v85 = v51 - v86 + -10.0;
    *&v89 = v51 * 0.5 - v86 * 0.5;
    v91 = roundf(*&v89);
    if (self->_alignment == 2)
    {
      v85 = v91;
    }

    goto LABEL_48;
  }

  detailTextLabel4 = [(PSTableCell *)self specifier];
  v66 = [detailTextLabel4 propertyForKey:@"LeftAlignLinkListDetailText"];
  if (v66)
  {
    v67 = v66;
    type = [(PSTableCell *)self type];

    if (type != 2)
    {
      goto LABEL_50;
    }

    detailTextLabel4 = [(PSTableCell *)self detailTextLabel];
    [detailTextLabel4 setTextAlignment:0];
    [detailTextLabel4 frame];
    v177 = v69;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    [(PSTableCell *)self textFieldOffset];
    v77 = v76;
    textLabel5 = [(PSTableCell *)self textLabel];
    [textLabel5 frame];
    v79 = v48;
    v81 = v80;
    _tableView = [(PSTableCell *)self _tableView];
    [_tableView layoutMargins];
    v84 = v81 + v83 + 6.0;

    if (v84 <= v77)
    {
      v85 = v77;
    }

    else
    {
      v85 = v84;
    }

    v48 = v79;
    if (_shouldReverseLayoutDirection)
    {
      v86 = v73;
    }

    else
    {
      v86 = v73 - (v85 - v177);
    }

    if (_shouldReverseLayoutDirection)
    {
      v85 = v181 - v85 - v73;
    }

LABEL_48:
    [detailTextLabel4 setFrame:{v85, v71, v86, v75}];
  }

LABEL_49:

LABEL_50:
  checkedImageView = self->_checkedImageView;
  if (!checkedImageView)
  {
    goto LABEL_69;
  }

  v175 = v48;
  [(UIImageView *)checkedImageView frame];
  v94 = v93;
  v96 = v95;
  v176 = v53;
  v178 = v51;
  v97 = (v53 - v95) * 0.5;
  v98 = floorf(v97);
  v99 = v51 + -8.0 - v93;
  if (_shouldReverseLayoutDirection)
  {
    v100 = 8.0;
  }

  else
  {
    v100 = v99;
  }

  [(UIImageView *)self->_checkedImageView setFrame:v100, v98];
  valueLabel = [(PSTableCell *)self valueLabel];
  v102 = valueLabel;
  if (valueLabel)
  {
    [valueLabel frame];
    v107 = v103;
    v108 = v104;
    v109 = v106;
    if (_shouldReverseLayoutDirection)
    {
      v174 = v105;
      detailTextLabel5 = [(PSTableCell *)self detailTextLabel];
      [detailTextLabel5 frame];
      v112 = v111;
      v189.origin.x = v100;
      v189.origin.y = v98;
      v189.size.width = v94;
      v189.size.height = v96;
      v113 = CGRectGetMaxX(v189) + v112 + 9.0;

      v107 = v107 + v113;
      [v102 setFrame:{v107, v108, v174, v109}];
      v190.origin.x = v107;
      v190.origin.y = v108;
      v190.size.width = v174;
      v190.size.height = v109;
      MaxX = CGRectGetMaxX(v190);
      textLabel6 = [(PSTableCell *)self textLabel];
      [textLabel6 frame];
      v116 = MaxX - (CGRectGetMinX(v191) + -6.0);

      if (v116 > 0.0)
      {
        v117 = v108;
        v118 = v174;
        goto LABEL_66;
      }
    }

    else
    {
      v119 = v105;
      v116 = CGRectGetMaxX(*&v103) - (v99 + -9.0);
      if (v116 > 0.0)
      {
        v117 = v108;
        v118 = v119;
        textLabel7 = [(PSTableCell *)self textLabel];
        [textLabel7 frame];
        v121 = v107 - (CGRectGetMaxX(v192) + 6.0);

        if (v121 > 0.0)
        {
          if (v116 <= v121)
          {
            v122 = v118;
          }

          else
          {
            v122 = v118 - (v116 - v121);
          }

          if (v116 <= v121)
          {
            v107 = v107 - v116;
          }

          else
          {
            v107 = v107 - v121;
          }

          goto LABEL_67;
        }

LABEL_66:
        v122 = v118 - v116;
LABEL_67:
        [v102 setFrame:{v107, v117, v122, v109}];
      }
    }
  }

  v53 = v176;
  v51 = v178;
  v48 = v175;
LABEL_69:
  type2 = [(PSTableCell *)self type];
  if (type2 == 10)
  {
    iconImageView = [(PSTableCell *)self iconImageView];
    v125 = iconImageView;
    if (iconImageView)
    {
      [iconImageView frame];
      v139 = v138;
      v141 = v140;
      contentView3 = [(PSTableCell *)self contentView];
      [contentView3 bounds];
      v144 = v143;
      v146 = v145;
      v148 = v147;
      v150 = v149;

      [v125 setFrame:{floor(v144 + v148 * 0.5 - v139 * 0.5), floor(v146 + v150 * 0.5 - v141 * 0.5), v139, v141}];
    }

    goto LABEL_76;
  }

  if (type2 == 14)
  {
    specifier = [(PSTableCell *)self specifier];
    v125 = [specifier propertyForKey:@"height"];

    if (v125)
    {
      [v125 floatValue];
      v48 = v126;
    }

    v127 = PSTextViewInsets();
    v129 = v180 + v128;
    v130 = v179 + v127;
    v132 = v181 - (v128 + v131);
    v134 = v48 - (v127 + v133);
    textView = [(PSTableCell *)self textView];
    [textView setFrame:{v129, v130, v132, v134}];

    textLabel8 = [(PSTableCell *)self textLabel];
    [textLabel8 setHidden:1];

LABEL_76:
  }

  WeakRetained = objc_loadWeakRetained(&self->_specifier);
  v152 = [WeakRetained propertyForKey:@"prioritizeValueTextDisplay"];
  bOOLValue = [v152 BOOLValue];

  if (!bOOLValue)
  {
    return;
  }

  greenColor2 = [(PSTableCell *)self valueLabel];
  [greenColor2 sizeThatFits:{v51, v53}];
  [greenColor2 frame];
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v161 = v160;
  UICeilToViewScale();
  v163 = v162 - v159;
  if (v162 - v159 > 0.0)
  {
    [greenColor2 setFrame:{v155 - v163, v157, v159 + v163, v161}];
    titleLabel = [(PSTableCell *)self titleLabel];
    [titleLabel frame];
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;

    titleLabel2 = [(PSTableCell *)self titleLabel];
    [titleLabel2 setFrame:{v166, v168, v170 - v163, v172}];
  }

LABEL_80:
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

- (void)prepareForReuse
{
  if ([(PSTableCell *)self skipsPreferencesTableCellPrepareForReuse])
  {
    selfCopy = self;
    v3 = &selfCopy;
  }

  else
  {
    [(PSTableCell *)self _invalidateHighlightContext];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice sf_isInternalInstall])
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v6 = [standardUserDefaults BOOLForKey:@"ClassNameForListControllersAndCellsOverlayEnabled"];

      if (v6)
      {
        classNameLayer = [(PSTableCell *)self classNameLayer];
        [classNameLayer removeFromSuperlayer];

        [(PSTableCell *)self setClassNameLayer:0];
      }
    }

    else
    {
    }

    detailTextLabel = [(PSTableCell *)self detailTextLabel];
    text = [detailTextLabel text];

    if (text)
    {
      detailTextLabel2 = [(PSTableCell *)self detailTextLabel];
      [detailTextLabel2 setText:0];
    }

    textLabel = [(PSTableCell *)self textLabel];
    text2 = [textLabel text];

    if (text2)
    {
      textLabel2 = [(PSTableCell *)self textLabel];
      [textLabel2 setText:0];
    }

    [(PSTableCell *)self setValueChangedTarget:0 action:0 specifier:0];
    [(PSTableCell *)self setCellEnabled:1];
    imageView = [(PSTableCell *)self imageView];
    image = [imageView image];

    if (image)
    {
      [(PSTableCell *)self setIcon:0];
      imageView2 = [(PSTableCell *)self imageView];
      [imageView2 setHighlightedImage:0];
    }

    value = self->_value;
    self->_value = 0;

    self->_checked = 0;
    self->_alignment = 1;
    self->_forceHideDisclosureIndicator = 0;
    specifier = [(PSTableCell *)self specifier];
    [specifier removePropertyForKey:@"cellObject"];

    specifier2 = [(PSTableCell *)self specifier];
    [specifier2 removePropertyForKey:@"control"];

    [(PSTableCell *)self cellRemovedFromView];
    [(PSTableCell *)self setSelectedBackgroundView:0];
    textLabel3 = [(PSTableCell *)self textLabel];
    [textLabel3 setHighlightedTextColor:0];

    detailTextLabel3 = [(PSTableCell *)self detailTextLabel];
    [detailTextLabel3 setHighlightedTextColor:0];

    [(PSTableCell *)self setAccessoryType:0];
    [(PSTableCell *)self setAccessoryView:0];
    selfCopy2 = self;
    v3 = &selfCopy2;
  }

  v3[1] = PSTableCell;
  objc_msgSendSuper2(v3, sel_prepareForReuse, selfCopy2);
}

- (void)_invalidateHighlightContext
{
  [(PSTableCellHighlightContext *)self->_customHighlightContext invalidate];
  customHighlightContext = self->_customHighlightContext;
  self->_customHighlightContext = 0;
}

- (void)cellRemovedFromView
{
  [(PSTableCell *)self setSpecifier:0];
  if (self->_lazyIcon && !self->_lazyIconDontUnload)
  {

    [(PSTableCell *)self setIcon:0];
  }
}

+ (int64_t)cellTypeFromString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy length] < 3)
  {
    goto LABEL_2;
  }

  v6 = [stringCopy characterAtIndex:2];
  if (v6 <= 75)
  {
    if (v6 == 69)
    {
      if ([stringCopy isEqualToString:@"PSEditTextCell"])
      {
        v4 = 8;
        goto LABEL_3;
      }

      if ([stringCopy isEqualToString:@"PSEditTextViewCell"])
      {
        v4 = 14;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    if (v6 == 71)
    {
      if ([stringCopy isEqualToString:@"PSGroupCell"])
      {
        v4 = 0;
        goto LABEL_3;
      }

      if ([stringCopy isEqualToString:@"PSGiantIconCell"])
      {
        v4 = 10;
        goto LABEL_3;
      }

      if ([stringCopy isEqualToString:@"PSGiantCell"])
      {
        v4 = 11;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    goto LABEL_21;
  }

  if (v6 == 76)
  {
    if ([stringCopy isEqualToString:@"PSLinkCell"])
    {
      v4 = 1;
      goto LABEL_3;
    }

    if ([stringCopy isEqualToString:@"PSLinkListCell"])
    {
      v4 = 2;
      goto LABEL_3;
    }

    if ([stringCopy isEqualToString:@"PSListItemCell"])
    {
      v4 = 3;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (v6 == 83)
  {
    if ([stringCopy isEqualToString:@"PSSwitchCell"])
    {
      v4 = 6;
      goto LABEL_3;
    }

    if ([stringCopy isEqualToString:@"PSSliderCell"])
    {
      v4 = 5;
      goto LABEL_3;
    }

    if ([stringCopy isEqualToString:@"PSSegmentCell"])
    {
      v4 = 9;
      goto LABEL_3;
    }

    if ([stringCopy isEqualToString:@"PSSecureEditTextCell"])
    {
      v4 = 12;
      goto LABEL_3;
    }

    if ([stringCopy isEqualToString:@"PSSpinnerCell"])
    {
      v4 = 15;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (v6 != 84)
  {
LABEL_21:
    if ([stringCopy isEqualToString:@"PSButtonCell"])
    {
      v4 = 13;
      goto LABEL_3;
    }

    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = stringCopy;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "CellType String (%@) Fell Back to PSDefaultCell", &v8, 0xCu);
    }

    goto LABEL_2;
  }

  if ([stringCopy isEqualToString:@"PSTableCell"] & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"PSTitleValueCell"))
  {
    v4 = 4;
    goto LABEL_3;
  }

LABEL_2:
  v4 = -1;
LABEL_3:

  return v4;
}

+ (id)stringFromCellType:(int64_t)type
{
  if ((type + 1) > 0x11)
  {
    return &stru_1EFE45030;
  }

  else
  {
    return off_1E71DCBD8[type + 1];
  }
}

+ (id)reuseIdentifierForBasicCellTypes:(int64_t)types
{
  if ((types - 1) > 0xE)
  {
    return @"PSTableCell";
  }

  else
  {
    return off_1E71DCC68[types - 1];
  }
}

+ (id)reuseIdentifierForClassAndType:(int64_t)type
{
  v4 = NSStringFromClass(self);
  v5 = [PSTableCell stringFromCellType:type];
  v6 = [v4 stringByAppendingString:v5];

  return v6;
}

+ (id)reuseIdentifierForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:@"cellClass"];
  if (!v4)
  {
    v5 = [PSTableCell reuseIdentifierForBasicCellTypes:specifierCopy[7]];
    goto LABEL_5;
  }

  if ([v4 isSubclassOfClass:objc_opt_class()])
  {
    v5 = [v4 reuseIdentifierForClassAndType:specifierCopy[7]];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v7 = NSStringFromClass([PSTableCell cellClassForSpecifier:specifierCopy]);
  v8 = [PSTableCell stringFromCellType:specifierCopy[7]];
  v6 = [v7 stringByAppendingString:v8];

LABEL_7:

  return v6;
}

+ (Class)cellClassForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"cellClass"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (void)setSpecifier:(id)specifier
{
  obj = specifier;
  WeakRetained = objc_loadWeakRetained(&self->_specifier);
  v5 = [WeakRetained isEqualToSpecifier:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_specifier, obj);
    objc_opt_class();
    v6 = [obj objectForKeyedSubscript:@"iconUTTypeIdentifier"];
    v7 = (objc_opt_isKindOfClass() & 1) != 0 ? v6 : 0;
    v8 = v7;
    [(PSTableCell *)self setLazyIconUTTypeIdentifier:v8];

    objc_opt_class();
    v9 = [obj objectForKeyedSubscript:@"iconShapeOverride"];
    v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;
    v11 = v10;
    [(PSTableCell *)self setLazyIconShapeOverride:v11];

    v12 = +[PSTableCell stringFromCellType:](PSTableCell, "stringFromCellType:", [obj cellType]);
    classNameLayer = [(PSTableCell *)self classNameLayer];
    [classNameLayer setSubLabel:v12];

    if (obj)
    {
      [(PSTableCell *)self refreshCellContentsWithSpecifier:obj];
    }
  }
}

- (PSTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cellStyle = [objc_opt_class() cellStyle];
  v18.receiver = self;
  v18.super_class = PSTableCell;
  v7 = [(PSTableCell *)&v18 initWithStyle:cellStyle reuseIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    v7->_alignment = 1;
    v7->_cellEnabled = 1;
    traitCollection = [(PSTableCell *)v7 traitCollection];
    cachedTraitCollection = v8->_cachedTraitCollection;
    v8->_cachedTraitCollection = traitCollection;

    objc_initWeak(&location, v8);
    v11 = +[PSTableCell traitsThatImpactImageRendering];
    bs_array = [v11 bs_array];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__PSTableCell_initWithStyle_reuseIdentifier___block_invoke;
    v15[3] = &unk_1E71DCB68;
    objc_copyWeak(&v16, &location);
    v13 = [(PSTableCell *)v8 registerForTraitChanges:bs_array withHandler:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __45__PSTableCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleTraitCollectionChange:v4];
}

- (void)dealloc
{
  [(PSTableCell *)self _invalidateHighlightContext];
  v3.receiver = self;
  v3.super_class = PSTableCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)longPressed:(id)pressed
{
  if ([pressed state] == 1)
  {
    [(PSTableCell *)self becomeFirstResponder];
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    [(PSTableCell *)self frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    superview = [(PSTableCell *)self superview];
    [mEMORY[0x1E69DCC68] setTargetRect:superview inView:{v5, v7, v9, v11}];

    [mEMORY[0x1E69DCC68] setMenuVisible:1 animated:1];
  }
}

- (id)_copyableText
{
  detailTextLabel = [(PSTableCell *)self detailTextLabel];
  text = [detailTextLabel text];

  if (!text)
  {
    titleLabel = [(PSTableCell *)self titleLabel];
    text = [titleLabel text];

    if (!text)
    {
      WeakRetained = objc_loadWeakRetained(&self->_specifier);

      if (!WeakRetained)
      {
        text = 0;
        goto LABEL_25;
      }

      v7 = objc_loadWeakRetained(&self->_specifier);
      hasValidGetter = [v7 hasValidGetter];

      if (hasValidGetter)
      {
        v9 = objc_loadWeakRetained(&self->_specifier);
        performGetter = [v9 performGetter];

        type = self->_type;
        if (type == 2 || type == 4)
        {
          objc_opt_class();
          v12 = objc_loadWeakRetained(&self->_specifier);
          shortTitleDictionary = [v12 shortTitleDictionary];
          text = [shortTitleDictionary objectForKeyedSubscript:performGetter];
          if (objc_opt_isKindOfClass())
          {
            v14 = text;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if (v15 || ((objc_opt_class(), v16 = objc_loadWeakRetained(&self->_specifier), [v16 titleDictionary], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "objectForKeyedSubscript:", performGetter), text = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass() & 1) == 0) ? (v18 = 0) : (v18 = text), v19 = v18, text, v17, v16, v19))
          {
LABEL_24:

            goto LABEL_25;
          }

          objc_opt_class();
          text = performGetter;
          if (objc_opt_isKindOfClass())
          {
            v20 = text;
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;

          if (v21)
          {
            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      v22 = objc_loadWeakRetained(&self->_specifier);
      text = [v22 name];

      if (!text)
      {
        goto LABEL_25;
      }

      performGetter = objc_loadWeakRetained(&self->_specifier);
      text = [performGetter name];
      goto LABEL_24;
    }
  }

LABEL_25:

  return text;
}

- (void)copy:(id)copy
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  _copyableText = [(PSTableCell *)self _copyableText];
  [generalPasteboard setString:_copyableText];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_copy_ != action)
  {
    return 0;
  }

  _copyableText = [(PSTableCell *)self _copyableText];
  v4 = _copyableText != 0;

  return v4;
}

- (void)setForceHideDisclosureIndicator:(BOOL)indicator
{
  if (self->_forceHideDisclosureIndicator != indicator)
  {
    self->_forceHideDisclosureIndicator = indicator;
    WeakRetained = objc_loadWeakRetained(&self->_specifier);
    [(PSTableCell *)self _updateAccessoryTypeForSpecifier:WeakRetained];
  }
}

- (void)_updateAccessoryTypeForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v5 = specifierCopy[7];
    v13 = specifierCopy;
    v6 = [specifierCopy propertyForKey:@"accessory"];
    v7 = v6;
    if (v6)
    {
      intValue = [v6 intValue];
    }

    else
    {
      if ((v5 - 1) <= 1)
      {
        if (self->_forceHideDisclosureIndicator)
        {
          v10 = 0;
        }

        else
        {
          v11 = [v13 propertyForKey:@"hidesDisclosureIndicator"];
          if ([v11 BOOLValue])
          {
            v10 = 0;
          }

          else
          {
            v12 = [v13 propertyForKey:@"useEtched"];
            v10 = [v12 BOOLValue] ^ 1;
          }
        }

        selfCopy2 = self;
        intValue = v10;
        goto LABEL_17;
      }

      if (![(PSTableCell *)self canBeChecked])
      {
LABEL_18:

        specifierCopy = v13;
        goto LABEL_19;
      }

      if ([(PSTableCell *)self isChecked])
      {
        intValue = 3;
      }

      else
      {
        intValue = 0;
      }
    }

    selfCopy2 = self;
LABEL_17:
    [(PSTableCell *)selfCopy2 setAccessoryType:intValue];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)loadISIconFromSpecifier:(id)specifier
{
  v47 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  objc_opt_class();
  lazyIconUTTypeIdentifier = [(PSTableCell *)self lazyIconUTTypeIdentifier];
  if (objc_opt_isKindOfClass())
  {
    v6 = lazyIconUTTypeIdentifier;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69A8A00]);
    lazyIconUTTypeIdentifier2 = [(PSTableCell *)self lazyIconUTTypeIdentifier];
    v7 = [v8 initWithType:lazyIconUTTypeIdentifier2];
  }

  imageDescriptor = [(PSTableCell *)self imageDescriptor];
  v11 = [v7 imageForDescriptor:imageDescriptor];

  if (v7 && ([v11 placeholder] & 1) == 0)
  {
    v22 = _PSLoggingFacility();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      specifier = [(PSTableCell *)self specifier];
      identifier = [specifier identifier];
      *buf = 136315394;
      v44 = "[PSTableCell loadISIconFromSpecifier:]";
      v45 = 2112;
      v46 = identifier;
      _os_log_impl(&dword_18B008000, v22, OS_LOG_TYPE_DEFAULT, "%s: found fast icon for %@", buf, 0x16u);
    }

    getLazyIconID = [(PSTableCell *)self getLazyIconID];
    getLazyIconID2 = [(PSTableCell *)self getLazyIconID];
    if (getLazyIconID2 == getLazyIconID)
    {
      specifier2 = [(PSTableCell *)self specifier];

      if (!specifier2)
      {
        goto LABEL_14;
      }

      v27 = MEMORY[0x1E69DCAB8];
      cGImage = [v11 CGImage];
      [v11 scale];
      getLazyIconID2 = [v27 imageWithCGImage:cGImage scale:0 orientation:?];
      getLazyIconID3 = [(PSTableCell *)self getLazyIconID];
      v30 = getLazyIconID3;
      if (getLazyIconID3 == getLazyIconID)
      {
        specifier3 = [(PSTableCell *)self specifier];

        if (specifier3)
        {
          if (self->_lazyIconDontUnload)
          {
            specifier4 = [(PSTableCell *)self specifier];
            [specifier4 setProperty:getLazyIconID2 forKey:@"iconImage"];
          }

          [(PSTableCell *)self setIcon:getLazyIconID2];
        }
      }

      else
      {
      }
    }
  }

  else
  {
    blankIcon = [(PSTableCell *)self blankIcon];
    [(PSTableCell *)self setIcon:blankIcon];

    getLazyIconID = [(PSTableCell *)self getLazyIconID];
    if (getLazyIconID)
    {
      v14 = [(PSTableCell *)self lazyIconQueue:specifierCopy];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __39__PSTableCell_loadISIconFromSpecifier___block_invoke;
      aBlock[3] = &unk_1E71DC570;
      aBlock[4] = self;
      v15 = getLazyIconID;
      v42 = v15;
      v16 = _Block_copy(aBlock);
      v17 = MEMORY[0x1E696AAE0];
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __39__PSTableCell_loadISIconFromSpecifier___block_invoke_3;
      v36 = &unk_1E71DCB90;
      selfCopy = self;
      getLazyIconID = v15;
      v38 = getLazyIconID;
      v40 = v16;
      v18 = specifierCopy;
      v39 = v18;
      v19 = v16;
      v20 = [v17 blockOperationWithBlock:&v33];
      [v20 setQualityOfService:{25, v33, v34, v35, v36, selfCopy}];
      v21 = [(PSTableCell *)self lazyIconQueue:v18];
      [v21 addOperation:v20];
    }
  }

LABEL_14:
}

void __39__PSTableCell_loadISIconFromSpecifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getLazyIcon];
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PSTableCell_loadISIconFromSpecifier___block_invoke_2;
    block[3] = &unk_1E71DBCE8;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v5 = v3;
    v6 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __39__PSTableCell_loadISIconFromSpecifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) getLazyIconID];
  if (v2 == *(a1 + 40))
  {
    v7 = v2;
    v3 = [*(a1 + 32) specifier];

    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4[1105] == 1)
      {
        v5 = [v4 specifier];
        [v5 setProperty:*(a1 + 48) forKey:@"iconImage"];

        v4 = *(a1 + 32);
      }

      v6 = *(a1 + 48);

      [v4 setIcon:v6];
    }
  }

  else
  {
  }
}

void __39__PSTableCell_loadISIconFromSpecifier___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) getLazyIconID];
  v3 = v2;
  if (v2 != *(a1 + 40))
  {

LABEL_3:
    v7 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:*(a1 + 56)];
    [v7 setQueuePriority:-4];
    [v7 setQualityOfService:25];
    v4 = [*(a1 + 32) lazyIconQueue:*(a1 + 48)];
    [v4 addOperation:v7];

    return;
  }

  v5 = [*(a1 + 32) specifier];

  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = *(*(a1 + 56) + 16);

  v6();
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v137 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  [(PSTableCell *)self setAccessibilityIdentifier:identifier];

  identifier2 = [specifierCopy identifier];
  textLabel = [(PSTableCell *)self textLabel];
  [textLabel setAccessibilityIdentifier:identifier2];

  v9 = [specifierCopy propertyForKey:@"useLazyIcons"];
  self->_lazyIcon = [v9 BOOLValue];

  v10 = [specifierCopy propertyForKey:@"appIDForLazyIcon"];
  lazyIconAppID = self->_lazyIconAppID;
  self->_lazyIconAppID = v10;

  v12 = [specifierCopy propertyForKey:@"dontUnloadLazyIcon"];
  self->_lazyIconDontUnload = [v12 BOOLValue];

  v13 = [specifierCopy propertyForKey:@"urlForLazyIcon"];
  objc_opt_class();
  v129 = v13;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
    lazyIconURL = self->_lazyIconURL;
    self->_lazyIconURL = v14;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [MEMORY[0x1E695DFF8] URLWithString:v13];
      lazyIconURL = self->_lazyIconURL;
      self->_lazyIconURL = v16;
    }

    else
    {
      lazyIconURL = self->_lazyIconURL;
      self->_lazyIconURL = 0;
    }
  }

  v17 = *(specifierCopy + 7);
  name = [specifierCopy name];
  v19 = [specifierCopy propertyForKey:@"isCopyable"];
  -[PSTableCell(CustomizationExtensions) setIsCopyable:](self, "setIsCopyable:", [v19 BOOLValue]);

  v20 = [specifierCopy propertyForKey:@"gestureRecognizers"];
  v128 = v20;
  if (v20 && (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v125 = name;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v130 objects:v136 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v131;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v131 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v130 + 1) + 8 * i);
          gestureRecognizers = [(PSTableCell *)self gestureRecognizers];
          v28 = [gestureRecognizers containsObject:v27];

          if ((v28 & 1) == 0)
          {
            [(PSTableCell *)self addGestureRecognizer:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v130 objects:v136 count:16];
      }

      while (v24);
    }

    name = v125;
  }

  else
  {
    [(PSTableCell *)self removeAllGestureRecognizers];
  }

  longTapRecognizer = self->_longTapRecognizer;
  if (self->_isCopyable)
  {
    if (!longTapRecognizer)
    {
      v30 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_longPressed_];
      v31 = self->_longTapRecognizer;
      self->_longTapRecognizer = v30;
    }

    gestureRecognizers2 = [(PSTableCell *)self gestureRecognizers];
    v33 = [gestureRecognizers2 containsObject:self->_longTapRecognizer];

    if ((v33 & 1) == 0)
    {
      [(PSTableCell *)self addGestureRecognizer:self->_longTapRecognizer];
    }
  }

  else
  {
    [(PSTableCell *)self removeGestureRecognizer:longTapRecognizer];
    v34 = self->_longTapRecognizer;
    self->_longTapRecognizer = 0;
  }

  [(PSTableCell *)self setTag:v17, v125];
  [(PSTableCell *)self setType:v17];
  if ((v17 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    [(PSTableCell *)self setAlignment:2];
    if (v17 == 11)
    {
      v35 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
      v36 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
      v37 = [v35 scaledFontForFont:v36];

      titleLabel = [(PSTableCell *)self titleLabel];
      [titleLabel setFont:v37];

      titleLabel2 = [(PSTableCell *)self titleLabel];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [titleLabel2 setTextColor:systemBlueColor];
    }

    v127 = 0;
    v41 = 0;
LABEL_31:
    v42 = [specifierCopy propertyForKey:@"adjustFontSizeToFitWidth"];
    bOOLValue = [v42 BOOLValue];

    titleLabel3 = [(PSTableCell *)self titleLabel];
    [titleLabel3 setAdjustsFontSizeToFitWidth:bOOLValue];

    objc_opt_class();
    v45 = [specifierCopy objectForKeyedSubscript:@"overrideCellSelectionStyleKey"];
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;

    if (v47)
    {
      integerValue = [v47 integerValue];
    }

    else
    {
      integerValue = 3;
    }

    [(PSTableCell *)self setSelectionStyle:integerValue];

    [(PSTableCell *)self _updateAccessoryTypeForSpecifier:specifierCopy];
    if (!v41)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v127 = v17 == 3;
  v41 = v17 == 13;
  if (v17 <= 0xD && ((1 << v17) & 0x200E) != 0)
  {
    goto LABEL_31;
  }

  [(PSTableCell *)self setSelectionStyle:0];
  [(PSTableCell *)self _updateAccessoryTypeForSpecifier:specifierCopy];
  if (v17 != 13)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (![(PSTableCell *)self accessoryType])
  {
    v49 = name;
    titleLabel4 = [(PSTableCell *)self titleLabel];
    v51 = +[PSListController appearance];
    gestureRecognizers = [v51 buttonTextColor];
    tableCellBlueTextColor = gestureRecognizers;
    if (!gestureRecognizers)
    {
      tableCellBlueTextColor = [MEMORY[0x1E69DC888] tableCellBlueTextColor];
    }

    v53 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:tableCellBlueTextColor];
    [titleLabel4 setTextColor:v53];

    if (!gestureRecognizers)
    {
    }

    name = v49;
  }

LABEL_45:
  v54 = +[PSListController appearance];
  foregroundColor = [v54 foregroundColor];

  if (foregroundColor)
  {
    v56 = +[PSListController appearance];
    foregroundColor2 = [v56 foregroundColor];
    [(PSTableCell *)self setBackgroundColor:foregroundColor2];
  }

  if ([(PSTableCell *)self type]== 13)
  {
    v58 = +[PSListController appearance];
    buttonTextColor = [v58 buttonTextColor];

    if (buttonTextColor)
    {
      textLabel2 = [(PSTableCell *)self textLabel];
      v61 = +[PSListController appearance];
      buttonTextColor2 = [v61 buttonTextColor];
      v63 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:buttonTextColor2];
      [textLabel2 setTextColor:v63];

      textLabel3 = [(PSTableCell *)self textLabel];
      v65 = +[PSListController appearance];
      gestureRecognizers = [v65 buttonTextColor];
      v66 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:gestureRecognizers];
      [textLabel3 setHighlightedTextColor:v66];
LABEL_53:

      goto LABEL_54;
    }
  }

  v67 = +[PSListController appearance];
  textColor = [v67 textColor];

  if (textColor && v17 != 11)
  {
    textLabel3 = [(PSTableCell *)self textLabel];
    v65 = +[PSListController appearance];
    gestureRecognizers = [v65 textColor];
    v66 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:gestureRecognizers];
    [textLabel3 setTextColor:v66];
    goto LABEL_53;
  }

LABEL_54:
  v69 = +[PSListController appearance];
  altTextColor = [v69 altTextColor];

  if (altTextColor)
  {
    detailTextLabel = [(PSTableCell *)self detailTextLabel];
    v72 = +[PSListController appearance];
    altTextColor2 = [v72 altTextColor];
    gestureRecognizers = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:altTextColor2];
    [detailTextLabel setTextColor:gestureRecognizers];
  }

  if (v17 == 10)
  {
    [(PSTableCell *)self setShouldHideTitle:1];
  }

  if (name)
  {
    [(PSTableCell *)self setTitle:name];
  }

  v74 = +[PSListController appearance];
  cellHighlightColor = [v74 cellHighlightColor];
  if (cellHighlightColor)
  {
    v76 = cellHighlightColor;
    selectedBackgroundView = [(PSTableCell *)self selectedBackgroundView];
    gestureRecognizers = [selectedBackgroundView backgroundColor];

    if (gestureRecognizers)
    {
      goto LABEL_64;
    }

    v74 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v78 = +[PSListController appearance];
    cellHighlightColor2 = [v78 cellHighlightColor];
    [v74 setBackgroundColor:cellHighlightColor2];

    [(PSTableCell *)self setSelectedBackgroundView:v74];
  }

LABEL_64:
  v80 = [specifierCopy propertyForKey:@"iconImage"];
  if (v80)
  {
    selfCopy2 = self;
    v82 = v80;
LABEL_66:
    [(PSTableCell *)selfCopy2 setIcon:v82];
    goto LABEL_67;
  }

  imageView = [(PSTableCell *)self imageView];
  image = [imageView image];
  if (image)
  {
    lazyIcon = self->_lazyIcon;

    if (!lazyIcon)
    {
      selfCopy2 = self;
      v82 = 0;
      goto LABEL_66;
    }
  }

  else
  {
  }

  if (self->_lazyIcon)
  {
    gestureRecognizers = [(PSTableCell *)self imageView];
    image2 = [gestureRecognizers image];
    if (image2)
    {
      v94 = image2;
      [(PSTableCell *)self imageView];
      v95 = v126 = name;
      image3 = [v95 image];
      blankIcon = [(PSTableCell *)self blankIcon];

      name = v126;
      if (image3 != blankIcon)
      {
        goto LABEL_67;
      }
    }

    else
    {
    }

    if (self->_lazyIconForceSynchronous)
    {
      self->_lazyIconForceSynchronous = 0;
      getLazyIcon = [(PSTableCell *)self getLazyIcon];
      if (getLazyIcon)
      {
        [(PSTableCell *)self setIcon:getLazyIcon];
        if (self->_lazyIconDontUnload)
        {
          specifier = [(PSTableCell *)self specifier];
          [specifier setProperty:getLazyIcon forKey:@"iconImage"];
        }
      }
    }

    else
    {
      [(PSTableCell *)self loadISIconFromSpecifier:specifierCopy];
    }
  }

LABEL_67:
  v83 = [specifierCopy propertyForKey:@"alignment"];
  v84 = v83;
  if (v83)
  {
    -[PSTableCell setAlignment:](self, "setAlignment:", [v83 intValue]);
  }

  v85 = [specifierCopy propertyForKey:@"useHighLegibilityAlternate"];
  bOOLValue2 = [v85 BOOLValue];

  if (bOOLValue2)
  {
    cellType = [specifierCopy cellType];
    if (cellType == 4 && ([specifierCopy name], gestureRecognizers = objc_claimAutoreleasedReturnValue(), !objc_msgSend(gestureRecognizers, "length")))
    {
      v88 = name;
      titleLabel5 = [(PSTableCell *)self titleLabel];
    }

    else
    {
      v88 = name;
      titleLabel5 = [(PSTableCell *)self valueLabel];

      if (cellType != 4)
      {
        goto LABEL_84;
      }
    }

LABEL_84:
    font = [titleLabel5 font];
    v99 = PSHighLegibilityAlternateFont(font);

    if (v99)
    {
      [titleLabel5 setFont:v99];
    }

    name = v88;
  }

  if (![specifierCopy controllerLoadAction] && (CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0) || !objc_msgSend(specifierCopy, "legacyAction")) && !*(specifierCopy + 3) && !*(specifierCopy + 8) && !v80 && !*(specifierCopy + 6) && (v17 & 0xFFFFFFFFFFFFFFFDLL) != 0xD && v17 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [(PSTableCell *)self setCellEnabled:0];
    v100 = _PSLoggingFacility();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_specifier);
      *buf = 138412290;
      v135 = WeakRetained;
      _os_log_impl(&dword_18B008000, v100, OS_LOG_TYPE_DEFAULT, "########### Reminder: By default an 'action' Specifier without a setter will be disabled by Settings.\n%@", buf, 0xCu);
    }
  }

  values = [specifierCopy values];

  if (!values)
  {
    [specifierCopy loadValuesAndTitlesFromDataSource];
  }

  if (v17 <= 0xD && ((1 << v17) & 0x200A) != 0 || !*(specifierCopy + 2))
  {
    v103 = 0;
  }

  else
  {
    v115 = objc_loadWeakRetained(specifierCopy + 1);
    v116 = objc_opt_respondsToSelector();

    if (v116)
    {
      v117 = objc_loadWeakRetained(specifierCopy + 1);
      v103 = SFPerformSelector();

      if (v103 && v17 != 9)
      {
        if (v17 == 4 || v17 == 2)
        {
          shortTitleDictionary = [specifierCopy shortTitleDictionary];
        }

        else
        {
          shortTitleDictionary = [specifierCopy titleDictionary];
        }

        v121 = shortTitleDictionary;
        if (shortTitleDictionary)
        {
          v122 = [shortTitleDictionary objectForKey:v103];

          v103 = v122;
        }
      }

      if (v103)
      {
        if (v17 == 4 && ([specifierCopy name], v123 = objc_claimAutoreleasedReturnValue(), v124 = objc_msgSend(v123, "length"), v123, !v124))
        {
          [(PSTableCell *)self setTitle:v103];
        }

        else
        {
          [(PSTableCell *)self setValue:v103];
        }
      }
    }

    else
    {
      v103 = 0;
    }
  }

  v104 = [specifierCopy propertyForKey:@"enabled"];
  v105 = v104;
  if (v104)
  {
    -[PSTableCell setCellEnabled:](self, "setCellEnabled:", [v104 BOOLValue]);
  }

  if (*(specifierCopy + 3) && (*(specifierCopy + 2) != 0 || v127) || ([specifierCopy propertyForKey:@"cellClass"], v106 = objc_claimAutoreleasedReturnValue(), v106, v106))
  {
    v107 = objc_loadWeakRetained(specifierCopy + 1);
    [(PSTableCell *)self setValueChangedTarget:v107 action:*(specifierCopy + 3) specifier:specifierCopy];
  }

  v108 = [specifierCopy objectForKeyedSubscript:@"allowMultilineTitleKey"];
  bOOLValue3 = [v108 BOOLValue];

  if (bOOLValue3)
  {
    textLabel4 = [(PSTableCell *)self textLabel];
    [textLabel4 setNumberOfLines:0];
  }

  if ([(PSTableCell *)self modernLayoutEnabled])
  {
    textLabel5 = [(PSTableCell *)self textLabel];
    [textLabel5 setNumberOfLines:0];

    detailTextLabel2 = [(PSTableCell *)self detailTextLabel];
    [detailTextLabel2 setNumberOfLines:0];

    [(PSTableCell *)self setupModernLayoutConstraints];
  }

  v113 = +[PSTableCell stringFromCellType:](PSTableCell, "stringFromCellType:", [specifierCopy cellType]);
  classNameLayer = [(PSTableCell *)self classNameLayer];
  [classNameLayer setSubLabel:v113];
}

- (id)lazyIconQueue:(id)queue
{
  v3 = [queue propertyForKey:@"customIconQueue"];
  if (!v3)
  {
    v4 = lazyIconQueue____lazyIconQueue;
    if (!lazyIconQueue____lazyIconQueue)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      v6 = lazyIconQueue____lazyIconQueue;
      lazyIconQueue____lazyIconQueue = v5;

      [lazyIconQueue____lazyIconQueue setMaxConcurrentOperationCount:8];
      v4 = lazyIconQueue____lazyIconQueue;
    }

    v3 = v4;
  }

  return v3;
}

- (BOOL)shouldUseModernLayout
{
  v3 = objc_opt_class();

  return [(PSTableCell *)self isMemberOfClass:v3];
}

- (void)setupModernLayoutConstraints
{
  contentView = [(PSTableCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];

  contentView2 = [(PSTableCell *)self contentView];
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(PSTableCell *)self _separatorView:1];
  v7 = v6;
  if (v6)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    bottomAnchor = [v7 bottomAnchor];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v10];

    leadingAnchor = [v7 leadingAnchor];
    textLabel = [(PSTableCell *)self textLabel];
    leadingAnchor2 = [textLabel leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v14];

    trailingAnchor = [v7 trailingAnchor];
    trailingAnchor2 = [(PSTableCell *)self trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v17];

    heightAnchor = [v7 heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:0.5];
    [array addObject:v19];
  }

  selectedBackgroundView = [(PSTableCell *)self selectedBackgroundView];
  subviews = [(PSTableCell *)self subviews];
  v22 = [subviews containsObject:selectedBackgroundView];

  if (v22)
  {
    [selectedBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [selectedBackgroundView topAnchor];
    topAnchor2 = [(PSTableCell *)self topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v25];

    leadingAnchor3 = [selectedBackgroundView leadingAnchor];
    leadingAnchor4 = [(PSTableCell *)self leadingAnchor];
    v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array addObject:v28];

    trailingAnchor3 = [selectedBackgroundView trailingAnchor];
    trailingAnchor4 = [(PSTableCell *)self trailingAnchor];
    v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array addObject:v31];

    bottomAnchor3 = [selectedBackgroundView bottomAnchor];
    bottomAnchor4 = [(PSTableCell *)self bottomAnchor];
    v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array addObject:v34];
  }

  imageView = [(PSTableCell *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView2 = [(PSTableCell *)self imageView];
  topAnchor3 = [imageView2 topAnchor];
  topAnchor4 = [contentView2 topAnchor];
  v39 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:8.0];
  [array addObject:v39];

  imageView3 = [(PSTableCell *)self imageView];
  leadingAnchor5 = [imageView3 leadingAnchor];
  leadingAnchor6 = [layoutMarginsGuide leadingAnchor];
  v43 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v43];

  imageView4 = [(PSTableCell *)self imageView];
  bottomAnchor5 = [imageView4 bottomAnchor];
  bottomAnchor6 = [contentView2 bottomAnchor];
  v47 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6 constant:-8.0];
  [array addObject:v47];

  imageView5 = [(PSTableCell *)self imageView];
  centerYAnchor = [imageView5 centerYAnchor];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v51];

  imageView6 = [(PSTableCell *)self imageView];
  LODWORD(v53) = 1148846080;
  [imageView6 setContentCompressionResistancePriority:0 forAxis:v53];

  imageView7 = [(PSTableCell *)self imageView];
  LODWORD(v55) = 1148846080;
  [imageView7 setContentCompressionResistancePriority:1 forAxis:v55];

  textLabel2 = [(PSTableCell *)self textLabel];
  [textLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  textLabel3 = [(PSTableCell *)self textLabel];
  topAnchor5 = [textLabel3 topAnchor];
  topAnchor6 = [contentView2 topAnchor];
  v60 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6 constant:13.0];
  [array addObject:v60];

  imageView8 = [(PSTableCell *)self imageView];
  image = [imageView8 image];
  if (image)
  {
    v63 = image;
    imageView9 = [(PSTableCell *)self imageView];
    isHidden = [imageView9 isHidden];

    if ((isHidden & 1) == 0)
    {
      textLabel4 = [(PSTableCell *)self textLabel];
      leadingAnchor7 = [textLabel4 leadingAnchor];
      imageView10 = [(PSTableCell *)self imageView];
      trailingAnchor5 = [imageView10 trailingAnchor];
      v70 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:15.0];
      [array addObject:v70];

      goto LABEL_10;
    }
  }

  else
  {
  }

  textLabel4 = [(PSTableCell *)self textLabel];
  leadingAnchor7 = [textLabel4 leadingAnchor];
  imageView10 = [layoutMarginsGuide leadingAnchor];
  trailingAnchor5 = [leadingAnchor7 constraintEqualToAnchor:imageView10];
  [array addObject:trailingAnchor5];
LABEL_10:
  v112 = v7;

  textLabel5 = [(PSTableCell *)self textLabel];
  bottomAnchor7 = [textLabel5 bottomAnchor];
  bottomAnchor8 = [contentView2 bottomAnchor];
  v74 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8 constant:-13.0];
  [array addObject:v74];

  textLabel6 = [(PSTableCell *)self textLabel];
  centerYAnchor3 = [textLabel6 centerYAnchor];
  centerYAnchor4 = [contentView2 centerYAnchor];
  v78 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [array addObject:v78];

  detailTextLabel = [(PSTableCell *)self detailTextLabel];
  [detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  detailTextLabel2 = [(PSTableCell *)self detailTextLabel];
  topAnchor7 = [detailTextLabel2 topAnchor];
  topAnchor8 = [contentView2 topAnchor];
  v83 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:topAnchor8 constant:13.0];
  [array addObject:v83];

  detailTextLabel3 = [(PSTableCell *)self detailTextLabel];
  leadingAnchor8 = [detailTextLabel3 leadingAnchor];
  textLabel7 = [(PSTableCell *)self textLabel];
  trailingAnchor6 = [textLabel7 trailingAnchor];
  v88 = [leadingAnchor8 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:6.0];
  [array addObject:v88];

  v89 = contentView2;
  if (![(PSTableCell *)self accessoryType])
  {
    accessoryView = [(PSTableCell *)self accessoryView];

    if (accessoryView)
    {
      v89 = contentView2;
    }

    else
    {
      v89 = layoutMarginsGuide;
    }
  }

  detailTextLabel4 = [(PSTableCell *)self detailTextLabel];
  trailingAnchor7 = [detailTextLabel4 trailingAnchor];
  trailingAnchor8 = [v89 trailingAnchor];
  v94 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];

  detailTextLabel5 = [(PSTableCell *)self detailTextLabel];
  trailingAnchor9 = [detailTextLabel5 trailingAnchor];
  trailingAnchor10 = [contentView2 trailingAnchor];
  v98 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:trailingAnchor10];

  LODWORD(v99) = 1132068864;
  [v94 setPriority:v99];
  [array addObject:v94];
  [array addObject:v98];
  detailTextLabel6 = [(PSTableCell *)self detailTextLabel];
  bottomAnchor9 = [detailTextLabel6 bottomAnchor];
  bottomAnchor10 = [contentView2 bottomAnchor];
  v103 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:bottomAnchor10 constant:-13.0];
  [array addObject:v103];

  detailTextLabel7 = [(PSTableCell *)self detailTextLabel];
  centerYAnchor5 = [detailTextLabel7 centerYAnchor];
  centerYAnchor6 = [contentView2 centerYAnchor];
  v107 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [array addObject:v107];

  v108 = MEMORY[0x1E696ACD8];
  constraints = [(PSTableCell *)self constraints];
  [v108 deactivateConstraints:constraints];

  [(PSTableCell *)self setConstraints:array];
  v110 = MEMORY[0x1E696ACD8];
  constraints2 = [(PSTableCell *)self constraints];
  [v110 activateConstraints:constraints2];
}

- (void)handleTraitCollectionChange:(id)change
{
  changeCopy = change;
  traitCollection = [(PSTableCell *)self traitCollection];
  [(PSTableCell *)self setCachedTraitCollection:traitCollection];

  objc_opt_class();
  lazyIconUTTypeIdentifier = [(PSTableCell *)self lazyIconUTTypeIdentifier];
  if (objc_opt_isKindOfClass())
  {
    v7 = lazyIconUTTypeIdentifier;
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;

  specifier = [(PSTableCell *)self specifier];
  cachedTraitCollection = [(PSTableCell *)self cachedTraitCollection];
  v10 = [cachedTraitCollection changedTraitsFromTraitCollection:changeCopy];

  v11 = +[PSTableCell traitsThatImpactImageRendering];
  LODWORD(cachedTraitCollection) = [v10 intersectsSet:v11];

  if (cachedTraitCollection && (v12 || self->_lazyIconAppID) && specifier)
  {
    [(PSTableCell *)self loadISIconFromSpecifier:specifier];
  }
}

- (void)setValueChangedTarget:(id)target action:(SEL)action specifier:(id)specifier
{
  [(PSTableCell *)self setCellTarget:target, action, specifier];

  [(PSTableCell *)self setCellAction:action];
}

- (id)titleTextLabel
{
  if ([(PSTableCell *)self tag]== 10)
  {
    titleLabel = 0;
  }

  else
  {
    titleLabel = [(PSTableCell *)self titleLabel];
  }

  return titleLabel;
}

- (BOOL)canReload
{
  v3 = objc_opt_class();

  return [(PSTableCell *)self isMemberOfClass:v3];
}

- (id)_contentString
{
  textLabel = [(PSTableCell *)self textLabel];
  text = [textLabel text];

  return text;
}

- (id)_urlSession
{
  urlSession = self->_urlSession;
  if (!urlSession)
  {
    mEMORY[0x1E696AF78] = [MEMORY[0x1E696AF78] sharedSession];
    v5 = self->_urlSession;
    self->_urlSession = mEMORY[0x1E696AF78];

    urlSession = self->_urlSession;
  }

  return urlSession;
}

- (id)getLazyIcon
{
  getIconFromIconServices = [(PSTableCell *)self getIconFromIconServices];
  v4 = getIconFromIconServices;
  if (getIconFromIconServices)
  {
    v5 = getIconFromIconServices;
    goto LABEL_8;
  }

  lazyIconURL = self->_lazyIconURL;
  if (lazyIconURL)
  {
    v7 = [MEMORY[0x1E696AF68] requestWithURL:lazyIconURL cachePolicy:2 timeoutInterval:20.0];
    v8 = dispatch_semaphore_create(0);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__3;
    v24 = __Block_byref_object_dispose__3;
    v25 = 0;
    _urlSession = [(PSTableCell *)self _urlSession];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __26__PSTableCell_getLazyIcon__block_invoke;
    v17 = &unk_1E71DCBB8;
    v19 = &v20;
    v10 = v8;
    v18 = v10;
    v11 = [_urlSession dataTaskWithRequest:v7 completionHandler:&v14];

    [v11 resume];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v21[5];
    if (v12)
    {
      v5 = v12;

      _Block_object_dispose(&v20, 8);
      goto LABEL_8;
    }

    _Block_object_dispose(&v20, 8);
  }

  v5 = 0;
LABEL_8:

  return v5;
}

intptr_t __26__PSTableCell_getLazyIcon__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && !a4)
  {
    v5 = [MEMORY[0x1E69DCAB8] imageWithData:a2];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

- (CGSize)iconSizeForShape:(unint64_t)shape scale:(double)scale
{
  if (shape == 4)
  {

    v5 = PSSizeForMessagesIcon();
  }

  else
  {
    v7 = PSBlankIconImage();
    [v7 size];
    v9 = v8;
    v11 = v10;

    v5 = v9;
    v6 = v11;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)getIconFromIconServices
{
  if (self->_lazyIconAppID || ([(PSTableCell *)self lazyIconUTTypeIdentifier], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    imageDescriptor = [(PSTableCell *)self imageDescriptor];
    shape = [imageDescriptor shape];
    cachedTraitCollection = [(PSTableCell *)self cachedTraitCollection];
    [cachedTraitCollection displayScale];
    v8 = v7;

    if (self->_lazyIconAppID)
    {
      v9 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:self->_lazyIconAppID];
      if (!v9)
      {
LABEL_14:
        v21 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      objc_opt_class();
      lazyIconUTTypeIdentifier = [(PSTableCell *)self lazyIconUTTypeIdentifier];
      if (objc_opt_isKindOfClass())
      {
        v11 = lazyIconUTTypeIdentifier;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      if (!v12)
      {
        goto LABEL_14;
      }

      lazyIconUTTypeIdentifier2 = [(PSTableCell *)self lazyIconUTTypeIdentifier];
      v9 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithType:lazyIconUTTypeIdentifier2];

      if (!v9)
      {
        goto LABEL_14;
      }
    }

    v14 = [v9 prepareImageForDescriptor:imageDescriptor];
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0x1E69DCAB8];
      cGImage = [v14 CGImage];
      [v15 scale];
      v18 = [v16 imageWithCGImage:cGImage scale:0 orientation:?];
      v19 = v18;
      if (shape == 4)
      {
        [(PSTableCell *)self iconSizeForShape:4 scale:v8];
        v20 = [v19 imageByPreparingThumbnailOfSize:?];
      }

      else
      {
        v20 = v18;
      }

      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_19;
  }

  v21 = 0;
LABEL_20:

  return v21;
}

- (id)getLazyIconID
{
  lazyIconAppID = self->_lazyIconAppID;
  if (lazyIconAppID || (lazyIconAppID = self->_lazyIconURL) != 0)
  {
    lazyIconUTTypeIdentifier2 = lazyIconAppID;
  }

  else
  {
    objc_opt_class();
    lazyIconUTTypeIdentifier = [(PSTableCell *)self lazyIconUTTypeIdentifier];
    if (objc_opt_isKindOfClass())
    {
      v7 = lazyIconUTTypeIdentifier;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      lazyIconUTTypeIdentifier2 = [(PSTableCell *)self lazyIconUTTypeIdentifier];
    }

    else
    {
      lazyIconUTTypeIdentifier2 = 0;
    }
  }

  return lazyIconUTTypeIdentifier2;
}

- (id)title
{
  if (self->_shouldHideTitle)
  {
    text = self->_hiddenTitle;
  }

  else
  {
    textLabel = [(PSTableCell *)self textLabel];
    text = [textLabel text];
  }

  return text;
}

- (void)setTitle:(id)title
{
  shouldHideTitle = self->_shouldHideTitle;
  titleCopy = title;
  v6 = titleCopy;
  if (shouldHideTitle)
  {
    v7 = [titleCopy copy];

    hiddenTitle = self->_hiddenTitle;
    self->_hiddenTitle = v7;
  }

  else
  {
    textLabel = [(PSTableCell *)self textLabel];
    [textLabel setText:v6];

    hiddenTitle = textLabel;
  }
}

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
  if (![(PSTableCell *)self canBeChecked]|| self->_checked == checkedCopy)
  {
    return;
  }

  self->_checked = checkedCopy;
  if ([(PSTableCell *)self accessoryType]== 1 || [(PSTableCell *)self accessoryType]== 2)
  {
    if (checkedCopy)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v6 = [(PSTableCell *)self _checkmarkImage:0];
      v7 = [(PSTableCell *)self _checkmarkImage:1];
      v8 = [v5 initWithImage:v6 highlightedImage:v7];
      checkedImageView = self->_checkedImageView;
      self->_checkedImageView = v8;

      contentView = [(PSTableCell *)self contentView];
      [contentView addSubview:self->_checkedImageView];

      [(PSTableCell *)self setNeedsLayout];
      return;
    }

    [(UIImageView *)self->_checkedImageView removeFromSuperview];
    v11 = self->_checkedImageView;
    self->_checkedImageView = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_specifier);
    [(PSTableCell *)self _updateAccessoryTypeForSpecifier:WeakRetained];
    v11 = WeakRetained;
  }
}

- (void)setIcon:(id)icon
{
  v4 = icon == 0;
  iconCopy = icon;
  imageView = [(PSTableCell *)self imageView];
  image = [imageView image];
  v8 = image == 0;

  imageView2 = [(PSTableCell *)self imageView];
  [imageView2 setImage:iconCopy];

  if (v4 != v8)
  {

    [(PSTableCell *)self setNeedsLayout];
  }
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (self->_value != valueCopy)
  {
    v12 = valueCopy;
    objc_storeStrong(&self->_value, value);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    valueCopy = v12;
    v7 = v12;
    if (isKindOfClass)
    {
LABEL_3:
      detailTextLabel = [(PSTableCell *)self detailTextLabel];
      [detailTextLabel setText:v7];

      valueCopy = v12;
      goto LABEL_5;
    }

    if (!self->_value)
    {
      detailTextLabel2 = [(PSTableCell *)self detailTextLabel];
      text = [detailTextLabel2 text];
      v11 = [text length];

      valueCopy = v12;
      if (v11)
      {
        v7 = 0;
        goto LABEL_3;
      }
    }
  }

LABEL_5:
}

- (void)setAlignment:(int)alignment
{
  if (self->_alignment != alignment)
  {
    self->_alignment = alignment;
    [(PSTableCell *)self setNeedsLayout];
  }
}

- (void)setTarget:(id)target
{
  v4 = MEMORY[0x1E696AF00];
  targetCopy = target;
  callStackSymbols = [v4 callStackSymbols];
  NSLog(&cfstr_ImportantSetta.isa, callStackSymbols);

  [(PSTableCell *)self setCellTarget:targetCopy];
}

- (id)target
{
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&cfstr_ImportantTarge.isa, callStackSymbols);

  return [(PSTableCell *)self cellTarget];
}

- (void)setAction:(SEL)action
{
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&cfstr_ImportantSetac.isa, callStackSymbols);

  [(PSTableCell *)self setCellAction:action];
}

- (SEL)action
{
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&cfstr_ImportantActio.isa, callStackSymbols);

  return [(PSTableCell *)self cellAction];
}

- (id)cellTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_pTarget);

  return WeakRetained;
}

- (void)setCellAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_pAction = actionCopy;
}

- (SEL)cellAction
{
  if (self->_pAction)
  {
    return self->_pAction;
  }

  else
  {
    return 0;
  }
}

- (void)setCellEnabled:(BOOL)enabled
{
  if (self->_cellEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_cellEnabled = enabled;
    [(PSTableCell *)self setUserInteractionEnabled:?];
    titleLabel = [(PSTableCell *)self titleLabel];
    [titleLabel setEnabled:enabledCopy];

    detailTextLabel = [(PSTableCell *)self detailTextLabel];
    [detailTextLabel setEnabled:enabledCopy];

    imageView = [(PSTableCell *)self imageView];
    v10 = imageView;
    v9 = 0.5;
    if (enabledCopy)
    {
      v9 = 1.0;
    }

    [imageView setAlpha:v9];
  }
}

- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated
{
  [(PSTableCell *)self refreshCellContentsWithSpecifier:specifier, animated];

  [(PSTableCell *)self setNeedsLayout];
}

- (double)textFieldOffset
{
  textLabel = [(PSTableCell *)self textLabel];
  text = [textLabel text];
  if ([text length])
  {
    v5 = 115.0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PSTableCell;
    [(PSTableCell *)&v8 textFieldOffset];
    v5 = v6;
  }

  return v5;
}

- (void)highlightCellForDuration:(double)duration animateUnighlight:(BOOL)unighlight
{
  unighlightCopy = unighlight;
  [(PSTableCell *)self _invalidateHighlightContext];
  v7 = [PSTableCellHighlightContext contextWithCell:self];
  customHighlightContext = self->_customHighlightContext;
  self->_customHighlightContext = v7;

  v9 = self->_customHighlightContext;

  [(PSTableCellHighlightContext *)v9 performHighlightForDuration:unighlightCopy animateUnhighlight:duration];
}

- (id)_checkmarkImage:(BOOL)image
{
  imageCopy = image;
  v5 = +[PSListController appearance];
  buttonTextColor = [v5 buttonTextColor];

  if (buttonTextColor)
  {
    v12.receiver = self;
    v12.super_class = PSTableCell;
    v7 = [(PSTableCell *)&v12 _checkmarkImage:imageCopy];
    v8 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:buttonTextColor];
    v9 = [v7 imageWithTintColor:v8 renderingMode:0];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PSTableCell;
    v9 = [(PSTableCell *)&v11 _checkmarkImage:imageCopy];
  }

  return v9;
}

- (id)_disclosureChevronImage:(BOOL)image
{
  imageCopy = image;
  v5 = +[PSListController appearance];
  cellAccessoryColor = [v5 cellAccessoryColor];

  if (cellAccessoryColor)
  {
    v13.receiver = self;
    v13.super_class = PSTableCell;
    v7 = [(PSTableCell *)&v13 _disclosureChevronImage:imageCopy];
    v8 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:cellAccessoryColor];
    v9 = [v7 _flatImageWithColor:v8];
    imageFlippedForRightToLeftLayoutDirection = [v9 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PSTableCell;
    v7 = [(PSTableCell *)&v12 _disclosureChevronImage:imageCopy];
    imageFlippedForRightToLeftLayoutDirection = [v7 imageFlippedForRightToLeftLayoutDirection];
  }

  return imageFlippedForRightToLeftLayoutDirection;
}

- (id)_automationID
{
  title = [(PSTableCell *)self title];
  if (!title)
  {
    title = [(PSTableCell *)self description];
  }

  v4 = [(PSTableCell *)self tag];
  if (v4 <= 0xD && ((1 << v4) & 0x2C06) != 0)
  {
    v5 = [@"BTN " stringByAppendingString:title];
  }

  else
  {
    v5 = title;
  }

  v6 = v5;

  return v6;
}

- (id)scriptingInfoWithChildren
{
  title = [(PSTableCell *)self title];
  if (!title)
  {
    title = [(PSTableCell *)self description];
  }

  v34 = 0u;
  v35 = 0u;
  v4 = [(PSTableCell *)self tag];
  if (v4 <= 4)
  {
    if (v4 != 2 && v4 != 4)
    {
      goto LABEL_20;
    }

LABEL_10:
    superview = [(PSTableCell *)self superview];
    [(PSTableCell *)self frame];
    [superview convertRect:0 toView:?];
    *&v34 = v15;
    *(&v34 + 1) = v16;
    *&v35 = v17;
    *(&v35 + 1) = v18;

    v10 = [@"DAT " stringByAppendingString:title];

    valueLabel = [(PSTableCell *)self valueLabel];
    text = [valueLabel text];
    goto LABEL_14;
  }

  if (v4 == 8)
  {
    goto LABEL_10;
  }

  if (v4 == 6)
  {
    valueLabel = [(PSTableCell *)self control];
    [valueLabel frame];
    [(PSTableCell *)self convertRect:0 toView:?];
    *&v34 = v19;
    *(&v34 + 1) = v20;
    *&v35 = v21;
    *(&v35 + 1) = v22;
    v10 = [@"BTN " stringByAppendingString:title];

    isOn = [valueLabel isOn];
    v24 = @"OFF";
    if (isOn)
    {
      v24 = @"ON";
    }

    text = v24;
    goto LABEL_14;
  }

  if (v4 != 5)
  {
LABEL_20:
    v33.receiver = self;
    v33.super_class = PSTableCell;
    scriptingInfoWithChildren = [(PSTableCell *)&v33 scriptingInfoWithChildren];
    goto LABEL_17;
  }

  valueLabel = [(PSTableCell *)self control];
  [valueLabel frame];
  [(PSTableCell *)self convertRect:0 toView:?];
  *&v34 = v6;
  *(&v34 + 1) = v7;
  *&v35 = v8;
  *(&v35 + 1) = v9;
  v10 = [@"SLD " stringByAppendingString:title];

  v11 = MEMORY[0x1E696AEC0];
  [valueLabel value];
  text = [v11 stringWithFormat:@"%f", v12];
LABEL_14:
  v25 = text;
  title = v10;

  v26 = MEMORY[0x1E695DF70];
  v32.receiver = self;
  v32.super_class = PSTableCell;
  scriptingInfoWithChildren2 = [(PSTableCell *)&v32 scriptingInfoWithChildren];
  scriptingInfoWithChildren = [v26 arrayWithArray:scriptingInfoWithChildren2];

  v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v30 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:32];
  [v29 setObject:v30 forKey:@"CGRect"];

  [v29 setObject:title forKey:@"ID"];
  if (v25)
  {
    [v29 setObject:v25 forKey:@"Value"];
  }

  [scriptingInfoWithChildren addObject:v29];

LABEL_17:

  return scriptingInfoWithChildren;
}

@end