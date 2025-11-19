@interface PSTableCell
+ (BOOL)isFromPreferencesFramework;
+ (Class)alternativeCellClass;
+ (Class)cellClassForSpecifier:(id)a3;
+ (id)reuseIdentifierForBasicCellTypes:(int64_t)a3;
+ (id)reuseIdentifierForClassAndType:(int64_t)a3;
+ (id)reuseIdentifierForSpecifier:(id)a3;
+ (id)stringFromCellType:(int64_t)a3;
+ (id)traitsThatImpactImageRendering;
+ (int64_t)cellTypeFromString:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canReload;
- (BOOL)modernLayoutEnabled;
- (BOOL)shouldUseModernLayout;
- (CGSize)iconSizeForShape:(unint64_t)a3 scale:(double)a4;
- (PSSpecifier)specifier;
- (PSTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (SEL)action;
- (SEL)cellAction;
- (double)textFieldOffset;
- (id)_automationID;
- (id)_checkmarkImage:(BOOL)a3;
- (id)_contentString;
- (id)_copyableText;
- (id)_disclosureChevronImage:(BOOL)a3;
- (id)_urlSession;
- (id)blankIcon;
- (id)cellTarget;
- (id)getIconFromIconServices;
- (id)getLazyIcon;
- (id)getLazyIconID;
- (id)imageDescriptor;
- (id)lazyIconQueue:(id)a3;
- (id)scriptingInfoWithChildren;
- (id)target;
- (id)title;
- (id)titleTextLabel;
- (unint64_t)iconShape;
- (void)_invalidateHighlightContext;
- (void)_updateAccessoryTypeForSpecifier:(id)a3;
- (void)cellRemovedFromView;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)handleTraitCollectionChange:(id)a3;
- (void)highlightCellForDuration:(double)a3 animateUnighlight:(BOOL)a4;
- (void)layoutSubviews;
- (void)loadISIconFromSpecifier:(id)a3;
- (void)longPressed:(id)a3;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4;
- (void)setAction:(SEL)a3;
- (void)setAlignment:(int)a3;
- (void)setCellAction:(SEL)a3;
- (void)setCellEnabled:(BOOL)a3;
- (void)setChecked:(BOOL)a3;
- (void)setForceHideDisclosureIndicator:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)setTarget:(id)a3;
- (void)setTitle:(id)a3;
- (void)setValue:(id)a3;
- (void)setValueChangedTarget:(id)a3 action:(SEL)a4 specifier:(id)a5;
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
  v3 = [(PSTableCell *)self cachedTraitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = [(PSTableCell *)self iconShape];
  [(PSTableCell *)self iconSizeForShape:v6 scale:v5];
  if (v6 == 4)
  {
    v9 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A88]];
    [v9 setScale:v5];
    [v9 setSize:{60.0, 45.0}];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v7 scale:{v8, v5}];
  }

  v10 = [(PSTableCell *)self cachedTraitCollection];
  [v9 setDrawBorder:1];
  objc_opt_class();
  gotLoadHelper_x8__OBJC_CLASS___SBSUITraitHomeScreenIconStyle(v11);
  v12 = [v10 objectForTrait:objc_opt_class()];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 tintColor];
  v16 = [v15 UIColor];

  v17 = [v10 userInterfaceStyle] == 2;
  [v9 setAppearance:{objc_msgSend(v14, "iconServicesAppearanceUsingDarkInterfaceStyle:", v17)}];
  v18 = [v14 iconServicesAppearanceVariantUsingDarkInterfaceStyle:v17];

  [v9 setAppearanceVariant:v18];
  if (v16)
  {
    v19 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:{objc_msgSend(v16, "CGColor")}];
    [v9 setTintColor:v19];
  }

  v20 = [(PSTableCell *)self cachedTraitCollection];
  if ([v20 layoutDirection])
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  [v9 setLanguageDirection:v21];

  v22 = [(PSTableCell *)self cachedTraitCollection];
  [v9 setContrast:{objc_msgSend(v22, "accessibilityContrast") == 1}];

  [v9 setShape:v6];

  return v9;
}

- (unint64_t)iconShape
{
  objc_opt_class();
  v3 = [(PSTableCell *)self lazyIconShapeOverride];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

  v6 = [(PSTableCell *)self lazyIconShapeOverride];
  v7 = [v6 unsignedIntegerValue];

  return v7;
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
  v3 = [(PSTableCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (IsAccessibilityCategory)
  {
    return 0;
  }

  v7 = [(PSTableCell *)self specifier];
  v8 = [v7 objectForKeyedSubscript:@"useModernLayout"];
  if (([v8 BOOLValue] & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      v9 = [(PSTableCell *)self shouldUseModernLayout];

      if (v9)
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

  v3 = [MEMORY[0x1E69DC938] currentDevice];
  if (([v3 sf_isInternalInstall] & 1) == 0)
  {
    goto LABEL_22;
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"ClassNameForListControllersAndCellsOverlayEnabled"];

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
  v12 = [(PSTableCell *)self classNameLayer];

  if (!v12)
  {
    v13 = objc_alloc_init(_PSViewMarkerLayer);
    [(PSTableCell *)self setClassNameLayer:v13];

    v14 = [(PSTableCell *)self layer];
    v15 = v14;
    if (v14)
    {
      [v14 cornerRadii];
    }

    else
    {
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
    }

    v16 = [(PSTableCell *)self classNameLayer];
    v183[0] = v184;
    v183[1] = v185;
    v183[2] = v186;
    v183[3] = v187;
    [v16 setCustomCornerRadii:v183];
  }

  v17 = [(PSTableCell *)self classNameLayer];
  v18 = [v17 superlayer];

  if (!v18)
  {
    v19 = [(PSTableCell *)self layer];
    v20 = [(PSTableCell *)self classNameLayer];
    [v19 addSublayer:v20];
  }

  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [(PSTableCell *)self classNameLayer];
  [v23 setLabel:v22];

  if (!v8)
  {
    v24 = [MEMORY[0x1E69DC888] systemDarkRedColor];
LABEL_20:
    v3 = v24;
    goto LABEL_21;
  }

  if ((v11 & 1) == 0)
  {
    v24 = [MEMORY[0x1E69DC888] systemMintColor];
    goto LABEL_20;
  }

  v3 = 0;
LABEL_21:
  v25 = [(PSTableCell *)self classNameLayer];
  [v25 setAlternateColor:v3];

LABEL_22:
LABEL_23:
  if ([(PSTableCell *)self modernLayoutEnabled])
  {
    [(PSTableCell *)self setupModernLayoutConstraints];
    v26 = [MEMORY[0x1E695E000] standardUserDefaults];
    v27 = [v26 BOOLForKey:@"PSTableCellVisualLabelDebugging"];

    if (!v27)
    {
      return;
    }

    v28 = [MEMORY[0x1E69DC888] greenColor];
    v29 = [v28 colorWithAlphaComponent:0.3];
    v30 = [(PSTableCell *)self textLabel];
    [v30 setBackgroundColor:v29];

    v31 = [MEMORY[0x1E69DC888] greenColor];
    v32 = [v31 colorWithAlphaComponent:0.2];
    v33 = [(PSTableCell *)self detailTextLabel];
    [v33 setBackgroundColor:v32];

    goto LABEL_80;
  }

  v182.receiver = self;
  v182.super_class = PSTableCell;
  [(PSTableCell *)&v182 layoutSubviews];
  v34 = [MEMORY[0x1E695E000] standardUserDefaults];
  v35 = [v34 BOOLForKey:@"PSTableCellVisualLabelDebugging"];

  if (v35)
  {
    v36 = [MEMORY[0x1E69DC888] redColor];
    v37 = [v36 colorWithAlphaComponent:0.3];
    v38 = [(PSTableCell *)self textLabel];
    [v38 setBackgroundColor:v37];

    v39 = [MEMORY[0x1E69DC888] redColor];
    v40 = [v39 colorWithAlphaComponent:0.2];
    v41 = [(PSTableCell *)self detailTextLabel];
    [v41 setBackgroundColor:v40];
  }

  v42 = [(PSTableCell *)self _shouldReverseLayoutDirection];
  v43 = [(PSTableCell *)self contentView];
  [v43 bounds];
  v179 = v45;
  v180 = v44;
  v181 = v46;
  v48 = v47;

  v49 = [(PSTableCell *)self contentView];
  [v49 bounds];
  v51 = v50;
  v53 = v52;

  v54 = [(PSTableCell *)self traitCollection];
  v55 = [v54 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v55);

  if (IsAccessibilityCategory)
  {
    v57 = [(PSTableCell *)self textLabel];
    LODWORD(v58) = 1045220557;
    [v57 _setHyphenationFactor:v58];

    v59 = [(PSTableCell *)self detailTextLabel];
    LODWORD(v60) = 1055286886;
    [v59 _setHyphenationFactor:v60];
  }

  if ((self->_alignment & 0xFFFFFFFE) == 2)
  {
    v61 = [(PSTableCell *)self textLabel];
    [v61 frame];
    if (self->_alignment == 2)
    {
      v63 = v51 * 0.5 - v62 * 0.5;
      v64 = roundf(v63);
    }

    else
    {
      v64 = v51 - v62 + -10.0;
    }

    [v61 setFrame:v64];
    v65 = [(PSTableCell *)self detailTextLabel];

    v87 = [v65 text];
    v88 = [v87 length];

    if (!v88)
    {
      goto LABEL_49;
    }

    [v65 frame];
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

  v65 = [(PSTableCell *)self specifier];
  v66 = [v65 propertyForKey:@"LeftAlignLinkListDetailText"];
  if (v66)
  {
    v67 = v66;
    v68 = [(PSTableCell *)self type];

    if (v68 != 2)
    {
      goto LABEL_50;
    }

    v65 = [(PSTableCell *)self detailTextLabel];
    [v65 setTextAlignment:0];
    [v65 frame];
    v177 = v69;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    [(PSTableCell *)self textFieldOffset];
    v77 = v76;
    v78 = [(PSTableCell *)self textLabel];
    [v78 frame];
    v79 = v48;
    v81 = v80;
    v82 = [(PSTableCell *)self _tableView];
    [v82 layoutMargins];
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
    if (v42)
    {
      v86 = v73;
    }

    else
    {
      v86 = v73 - (v85 - v177);
    }

    if (v42)
    {
      v85 = v181 - v85 - v73;
    }

LABEL_48:
    [v65 setFrame:{v85, v71, v86, v75}];
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
  if (v42)
  {
    v100 = 8.0;
  }

  else
  {
    v100 = v99;
  }

  [(UIImageView *)self->_checkedImageView setFrame:v100, v98];
  v101 = [(PSTableCell *)self valueLabel];
  v102 = v101;
  if (v101)
  {
    [v101 frame];
    v107 = v103;
    v108 = v104;
    v109 = v106;
    if (v42)
    {
      v174 = v105;
      v110 = [(PSTableCell *)self detailTextLabel];
      [v110 frame];
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
      v115 = [(PSTableCell *)self textLabel];
      [v115 frame];
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
        v120 = [(PSTableCell *)self textLabel];
        [v120 frame];
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
  v123 = [(PSTableCell *)self type];
  if (v123 == 10)
  {
    v137 = [(PSTableCell *)self iconImageView];
    v125 = v137;
    if (v137)
    {
      [v137 frame];
      v139 = v138;
      v141 = v140;
      v142 = [(PSTableCell *)self contentView];
      [v142 bounds];
      v144 = v143;
      v146 = v145;
      v148 = v147;
      v150 = v149;

      [v125 setFrame:{floor(v144 + v148 * 0.5 - v139 * 0.5), floor(v146 + v150 * 0.5 - v141 * 0.5), v139, v141}];
    }

    goto LABEL_76;
  }

  if (v123 == 14)
  {
    v124 = [(PSTableCell *)self specifier];
    v125 = [v124 propertyForKey:@"height"];

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
    v135 = [(PSTableCell *)self textView];
    [v135 setFrame:{v129, v130, v132, v134}];

    v136 = [(PSTableCell *)self textLabel];
    [v136 setHidden:1];

LABEL_76:
  }

  WeakRetained = objc_loadWeakRetained(&self->_specifier);
  v152 = [WeakRetained propertyForKey:@"prioritizeValueTextDisplay"];
  v153 = [v152 BOOLValue];

  if (!v153)
  {
    return;
  }

  v31 = [(PSTableCell *)self valueLabel];
  [v31 sizeThatFits:{v51, v53}];
  [v31 frame];
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v161 = v160;
  UICeilToViewScale();
  v163 = v162 - v159;
  if (v162 - v159 > 0.0)
  {
    [v31 setFrame:{v155 - v163, v157, v159 + v163, v161}];
    v164 = [(PSTableCell *)self titleLabel];
    [v164 frame];
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;

    v173 = [(PSTableCell *)self titleLabel];
    [v173 setFrame:{v166, v168, v170 - v163, v172}];
  }

LABEL_80:
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

- (void)prepareForReuse
{
  if ([(PSTableCell *)self skipsPreferencesTableCellPrepareForReuse])
  {
    v23 = self;
    v3 = &v23;
  }

  else
  {
    [(PSTableCell *)self _invalidateHighlightContext];
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 sf_isInternalInstall])
    {
      v5 = [MEMORY[0x1E695E000] standardUserDefaults];
      v6 = [v5 BOOLForKey:@"ClassNameForListControllersAndCellsOverlayEnabled"];

      if (v6)
      {
        v7 = [(PSTableCell *)self classNameLayer];
        [v7 removeFromSuperlayer];

        [(PSTableCell *)self setClassNameLayer:0];
      }
    }

    else
    {
    }

    v8 = [(PSTableCell *)self detailTextLabel];
    v9 = [v8 text];

    if (v9)
    {
      v10 = [(PSTableCell *)self detailTextLabel];
      [v10 setText:0];
    }

    v11 = [(PSTableCell *)self textLabel];
    v12 = [v11 text];

    if (v12)
    {
      v13 = [(PSTableCell *)self textLabel];
      [v13 setText:0];
    }

    [(PSTableCell *)self setValueChangedTarget:0 action:0 specifier:0];
    [(PSTableCell *)self setCellEnabled:1];
    v14 = [(PSTableCell *)self imageView];
    v15 = [v14 image];

    if (v15)
    {
      [(PSTableCell *)self setIcon:0];
      v16 = [(PSTableCell *)self imageView];
      [v16 setHighlightedImage:0];
    }

    value = self->_value;
    self->_value = 0;

    self->_checked = 0;
    self->_alignment = 1;
    self->_forceHideDisclosureIndicator = 0;
    v18 = [(PSTableCell *)self specifier];
    [v18 removePropertyForKey:@"cellObject"];

    v19 = [(PSTableCell *)self specifier];
    [v19 removePropertyForKey:@"control"];

    [(PSTableCell *)self cellRemovedFromView];
    [(PSTableCell *)self setSelectedBackgroundView:0];
    v20 = [(PSTableCell *)self textLabel];
    [v20 setHighlightedTextColor:0];

    v21 = [(PSTableCell *)self detailTextLabel];
    [v21 setHighlightedTextColor:0];

    [(PSTableCell *)self setAccessoryType:0];
    [(PSTableCell *)self setAccessoryView:0];
    v22 = self;
    v3 = &v22;
  }

  v3[1] = PSTableCell;
  objc_msgSendSuper2(v3, sel_prepareForReuse, v22);
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

+ (int64_t)cellTypeFromString:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length] < 3)
  {
    goto LABEL_2;
  }

  v6 = [v3 characterAtIndex:2];
  if (v6 <= 75)
  {
    if (v6 == 69)
    {
      if ([v3 isEqualToString:@"PSEditTextCell"])
      {
        v4 = 8;
        goto LABEL_3;
      }

      if ([v3 isEqualToString:@"PSEditTextViewCell"])
      {
        v4 = 14;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    if (v6 == 71)
    {
      if ([v3 isEqualToString:@"PSGroupCell"])
      {
        v4 = 0;
        goto LABEL_3;
      }

      if ([v3 isEqualToString:@"PSGiantIconCell"])
      {
        v4 = 10;
        goto LABEL_3;
      }

      if ([v3 isEqualToString:@"PSGiantCell"])
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
    if ([v3 isEqualToString:@"PSLinkCell"])
    {
      v4 = 1;
      goto LABEL_3;
    }

    if ([v3 isEqualToString:@"PSLinkListCell"])
    {
      v4 = 2;
      goto LABEL_3;
    }

    if ([v3 isEqualToString:@"PSListItemCell"])
    {
      v4 = 3;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (v6 == 83)
  {
    if ([v3 isEqualToString:@"PSSwitchCell"])
    {
      v4 = 6;
      goto LABEL_3;
    }

    if ([v3 isEqualToString:@"PSSliderCell"])
    {
      v4 = 5;
      goto LABEL_3;
    }

    if ([v3 isEqualToString:@"PSSegmentCell"])
    {
      v4 = 9;
      goto LABEL_3;
    }

    if ([v3 isEqualToString:@"PSSecureEditTextCell"])
    {
      v4 = 12;
      goto LABEL_3;
    }

    if ([v3 isEqualToString:@"PSSpinnerCell"])
    {
      v4 = 15;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (v6 != 84)
  {
LABEL_21:
    if ([v3 isEqualToString:@"PSButtonCell"])
    {
      v4 = 13;
      goto LABEL_3;
    }

    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "CellType String (%@) Fell Back to PSDefaultCell", &v8, 0xCu);
    }

    goto LABEL_2;
  }

  if ([v3 isEqualToString:@"PSTableCell"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"PSTitleValueCell"))
  {
    v4 = 4;
    goto LABEL_3;
  }

LABEL_2:
  v4 = -1;
LABEL_3:

  return v4;
}

+ (id)stringFromCellType:(int64_t)a3
{
  if ((a3 + 1) > 0x11)
  {
    return &stru_1EFE45030;
  }

  else
  {
    return off_1E71DCBD8[a3 + 1];
  }
}

+ (id)reuseIdentifierForBasicCellTypes:(int64_t)a3
{
  if ((a3 - 1) > 0xE)
  {
    return @"PSTableCell";
  }

  else
  {
    return off_1E71DCC68[a3 - 1];
  }
}

+ (id)reuseIdentifierForClassAndType:(int64_t)a3
{
  v4 = NSStringFromClass(a1);
  v5 = [PSTableCell stringFromCellType:a3];
  v6 = [v4 stringByAppendingString:v5];

  return v6;
}

+ (id)reuseIdentifierForSpecifier:(id)a3
{
  v3 = a3;
  v4 = [v3 propertyForKey:@"cellClass"];
  if (!v4)
  {
    v5 = [PSTableCell reuseIdentifierForBasicCellTypes:v3[7]];
    goto LABEL_5;
  }

  if ([v4 isSubclassOfClass:objc_opt_class()])
  {
    v5 = [v4 reuseIdentifierForClassAndType:v3[7]];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v7 = NSStringFromClass([PSTableCell cellClassForSpecifier:v3]);
  v8 = [PSTableCell stringFromCellType:v3[7]];
  v6 = [v7 stringByAppendingString:v8];

LABEL_7:

  return v6;
}

+ (Class)cellClassForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:@"cellClass"];
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

- (void)setSpecifier:(id)a3
{
  obj = a3;
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
    v13 = [(PSTableCell *)self classNameLayer];
    [v13 setSubLabel:v12];

    if (obj)
    {
      [(PSTableCell *)self refreshCellContentsWithSpecifier:obj];
    }
  }
}

- (PSTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() cellStyle];
  v18.receiver = self;
  v18.super_class = PSTableCell;
  v7 = [(PSTableCell *)&v18 initWithStyle:v6 reuseIdentifier:v5];
  v8 = v7;
  if (v7)
  {
    v7->_alignment = 1;
    v7->_cellEnabled = 1;
    v9 = [(PSTableCell *)v7 traitCollection];
    cachedTraitCollection = v8->_cachedTraitCollection;
    v8->_cachedTraitCollection = v9;

    objc_initWeak(&location, v8);
    v11 = +[PSTableCell traitsThatImpactImageRendering];
    v12 = [v11 bs_array];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__PSTableCell_initWithStyle_reuseIdentifier___block_invoke;
    v15[3] = &unk_1E71DCB68;
    objc_copyWeak(&v16, &location);
    v13 = [(PSTableCell *)v8 registerForTraitChanges:v12 withHandler:v15];

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

- (void)longPressed:(id)a3
{
  if ([a3 state] == 1)
  {
    [(PSTableCell *)self becomeFirstResponder];
    v13 = [MEMORY[0x1E69DCC68] sharedMenuController];
    [(PSTableCell *)self frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(PSTableCell *)self superview];
    [v13 setTargetRect:v12 inView:{v5, v7, v9, v11}];

    [v13 setMenuVisible:1 animated:1];
  }
}

- (id)_copyableText
{
  v3 = [(PSTableCell *)self detailTextLabel];
  v4 = [v3 text];

  if (!v4)
  {
    v5 = [(PSTableCell *)self titleLabel];
    v4 = [v5 text];

    if (!v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_specifier);

      if (!WeakRetained)
      {
        v4 = 0;
        goto LABEL_25;
      }

      v7 = objc_loadWeakRetained(&self->_specifier);
      v8 = [v7 hasValidGetter];

      if (v8)
      {
        v9 = objc_loadWeakRetained(&self->_specifier);
        v10 = [v9 performGetter];

        type = self->_type;
        if (type == 2 || type == 4)
        {
          objc_opt_class();
          v12 = objc_loadWeakRetained(&self->_specifier);
          v13 = [v12 shortTitleDictionary];
          v4 = [v13 objectForKeyedSubscript:v10];
          if (objc_opt_isKindOfClass())
          {
            v14 = v4;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if (v15 || ((objc_opt_class(), v16 = objc_loadWeakRetained(&self->_specifier), [v16 titleDictionary], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "objectForKeyedSubscript:", v10), v4 = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass() & 1) == 0) ? (v18 = 0) : (v18 = v4), v19 = v18, v4, v17, v16, v19))
          {
LABEL_24:

            goto LABEL_25;
          }

          objc_opt_class();
          v4 = v10;
          if (objc_opt_isKindOfClass())
          {
            v20 = v4;
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
      v4 = [v22 name];

      if (!v4)
      {
        goto LABEL_25;
      }

      v10 = objc_loadWeakRetained(&self->_specifier);
      v4 = [v10 name];
      goto LABEL_24;
    }
  }

LABEL_25:

  return v4;
}

- (void)copy:(id)a3
{
  v5 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v4 = [(PSTableCell *)self _copyableText];
  [v5 setString:v4];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_copy_ != a3)
  {
    return 0;
  }

  v5 = [(PSTableCell *)self _copyableText];
  v4 = v5 != 0;

  return v4;
}

- (void)setForceHideDisclosureIndicator:(BOOL)a3
{
  if (self->_forceHideDisclosureIndicator != a3)
  {
    self->_forceHideDisclosureIndicator = a3;
    WeakRetained = objc_loadWeakRetained(&self->_specifier);
    [(PSTableCell *)self _updateAccessoryTypeForSpecifier:WeakRetained];
  }
}

- (void)_updateAccessoryTypeForSpecifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4[7];
    v13 = v4;
    v6 = [v4 propertyForKey:@"accessory"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 intValue];
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

        v9 = self;
        v8 = v10;
        goto LABEL_17;
      }

      if (![(PSTableCell *)self canBeChecked])
      {
LABEL_18:

        v4 = v13;
        goto LABEL_19;
      }

      if ([(PSTableCell *)self isChecked])
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }
    }

    v9 = self;
LABEL_17:
    [(PSTableCell *)v9 setAccessoryType:v8];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)loadISIconFromSpecifier:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v5 = [(PSTableCell *)self lazyIconUTTypeIdentifier];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69A8A00]);
    v9 = [(PSTableCell *)self lazyIconUTTypeIdentifier];
    v7 = [v8 initWithType:v9];
  }

  v10 = [(PSTableCell *)self imageDescriptor];
  v11 = [v7 imageForDescriptor:v10];

  if (v7 && ([v11 placeholder] & 1) == 0)
  {
    v22 = _PSLoggingFacility();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(PSTableCell *)self specifier];
      v24 = [v23 identifier];
      *buf = 136315394;
      v44 = "[PSTableCell loadISIconFromSpecifier:]";
      v45 = 2112;
      v46 = v24;
      _os_log_impl(&dword_18B008000, v22, OS_LOG_TYPE_DEFAULT, "%s: found fast icon for %@", buf, 0x16u);
    }

    v13 = [(PSTableCell *)self getLazyIconID];
    v25 = [(PSTableCell *)self getLazyIconID];
    if (v25 == v13)
    {
      v26 = [(PSTableCell *)self specifier];

      if (!v26)
      {
        goto LABEL_14;
      }

      v27 = MEMORY[0x1E69DCAB8];
      v28 = [v11 CGImage];
      [v11 scale];
      v25 = [v27 imageWithCGImage:v28 scale:0 orientation:?];
      v29 = [(PSTableCell *)self getLazyIconID];
      v30 = v29;
      if (v29 == v13)
      {
        v31 = [(PSTableCell *)self specifier];

        if (v31)
        {
          if (self->_lazyIconDontUnload)
          {
            v32 = [(PSTableCell *)self specifier];
            [v32 setProperty:v25 forKey:@"iconImage"];
          }

          [(PSTableCell *)self setIcon:v25];
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v12 = [(PSTableCell *)self blankIcon];
    [(PSTableCell *)self setIcon:v12];

    v13 = [(PSTableCell *)self getLazyIconID];
    if (v13)
    {
      v14 = [(PSTableCell *)self lazyIconQueue:v4];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __39__PSTableCell_loadISIconFromSpecifier___block_invoke;
      aBlock[3] = &unk_1E71DC570;
      aBlock[4] = self;
      v15 = v13;
      v42 = v15;
      v16 = _Block_copy(aBlock);
      v17 = MEMORY[0x1E696AAE0];
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __39__PSTableCell_loadISIconFromSpecifier___block_invoke_3;
      v36 = &unk_1E71DCB90;
      v37 = self;
      v13 = v15;
      v38 = v13;
      v40 = v16;
      v18 = v4;
      v39 = v18;
      v19 = v16;
      v20 = [v17 blockOperationWithBlock:&v33];
      [v20 setQualityOfService:{25, v33, v34, v35, v36, v37}];
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v137 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 identifier];
  [(PSTableCell *)self setAccessibilityIdentifier:v6];

  v7 = [v5 identifier];
  v8 = [(PSTableCell *)self textLabel];
  [v8 setAccessibilityIdentifier:v7];

  v9 = [v5 propertyForKey:@"useLazyIcons"];
  self->_lazyIcon = [v9 BOOLValue];

  v10 = [v5 propertyForKey:@"appIDForLazyIcon"];
  lazyIconAppID = self->_lazyIconAppID;
  self->_lazyIconAppID = v10;

  v12 = [v5 propertyForKey:@"dontUnloadLazyIcon"];
  self->_lazyIconDontUnload = [v12 BOOLValue];

  v13 = [v5 propertyForKey:@"urlForLazyIcon"];
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

  v17 = *(v5 + 7);
  v18 = [v5 name];
  v19 = [v5 propertyForKey:@"isCopyable"];
  -[PSTableCell(CustomizationExtensions) setIsCopyable:](self, "setIsCopyable:", [v19 BOOLValue]);

  v20 = [v5 propertyForKey:@"gestureRecognizers"];
  v128 = v20;
  if (v20 && (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v125 = v18;
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
          v3 = [(PSTableCell *)self gestureRecognizers];
          v28 = [v3 containsObject:v27];

          if ((v28 & 1) == 0)
          {
            [(PSTableCell *)self addGestureRecognizer:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v130 objects:v136 count:16];
      }

      while (v24);
    }

    v18 = v125;
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

    v32 = [(PSTableCell *)self gestureRecognizers];
    v33 = [v32 containsObject:self->_longTapRecognizer];

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

      v38 = [(PSTableCell *)self titleLabel];
      [v38 setFont:v37];

      v39 = [(PSTableCell *)self titleLabel];
      v40 = [MEMORY[0x1E69DC888] systemBlueColor];
      [v39 setTextColor:v40];
    }

    v127 = 0;
    v41 = 0;
LABEL_31:
    v42 = [v5 propertyForKey:@"adjustFontSizeToFitWidth"];
    v43 = [v42 BOOLValue];

    v44 = [(PSTableCell *)self titleLabel];
    [v44 setAdjustsFontSizeToFitWidth:v43];

    objc_opt_class();
    v45 = [v5 objectForKeyedSubscript:@"overrideCellSelectionStyleKey"];
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
      v48 = [v47 integerValue];
    }

    else
    {
      v48 = 3;
    }

    [(PSTableCell *)self setSelectionStyle:v48];

    [(PSTableCell *)self _updateAccessoryTypeForSpecifier:v5];
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
  [(PSTableCell *)self _updateAccessoryTypeForSpecifier:v5];
  if (v17 != 13)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (![(PSTableCell *)self accessoryType])
  {
    v49 = v18;
    v50 = [(PSTableCell *)self titleLabel];
    v51 = +[PSListController appearance];
    v3 = [v51 buttonTextColor];
    v52 = v3;
    if (!v3)
    {
      v52 = [MEMORY[0x1E69DC888] tableCellBlueTextColor];
    }

    v53 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:v52];
    [v50 setTextColor:v53];

    if (!v3)
    {
    }

    v18 = v49;
  }

LABEL_45:
  v54 = +[PSListController appearance];
  v55 = [v54 foregroundColor];

  if (v55)
  {
    v56 = +[PSListController appearance];
    v57 = [v56 foregroundColor];
    [(PSTableCell *)self setBackgroundColor:v57];
  }

  if ([(PSTableCell *)self type]== 13)
  {
    v58 = +[PSListController appearance];
    v59 = [v58 buttonTextColor];

    if (v59)
    {
      v60 = [(PSTableCell *)self textLabel];
      v61 = +[PSListController appearance];
      v62 = [v61 buttonTextColor];
      v63 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:v62];
      [v60 setTextColor:v63];

      v64 = [(PSTableCell *)self textLabel];
      v65 = +[PSListController appearance];
      v3 = [v65 buttonTextColor];
      v66 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:v3];
      [v64 setHighlightedTextColor:v66];
LABEL_53:

      goto LABEL_54;
    }
  }

  v67 = +[PSListController appearance];
  v68 = [v67 textColor];

  if (v68 && v17 != 11)
  {
    v64 = [(PSTableCell *)self textLabel];
    v65 = +[PSListController appearance];
    v3 = [v65 textColor];
    v66 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:v3];
    [v64 setTextColor:v66];
    goto LABEL_53;
  }

LABEL_54:
  v69 = +[PSListController appearance];
  v70 = [v69 altTextColor];

  if (v70)
  {
    v71 = [(PSTableCell *)self detailTextLabel];
    v72 = +[PSListController appearance];
    v73 = [v72 altTextColor];
    v3 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:v73];
    [v71 setTextColor:v3];
  }

  if (v17 == 10)
  {
    [(PSTableCell *)self setShouldHideTitle:1];
  }

  if (v18)
  {
    [(PSTableCell *)self setTitle:v18];
  }

  v74 = +[PSListController appearance];
  v75 = [v74 cellHighlightColor];
  if (v75)
  {
    v76 = v75;
    v77 = [(PSTableCell *)self selectedBackgroundView];
    v3 = [v77 backgroundColor];

    if (v3)
    {
      goto LABEL_64;
    }

    v74 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v78 = +[PSListController appearance];
    v79 = [v78 cellHighlightColor];
    [v74 setBackgroundColor:v79];

    [(PSTableCell *)self setSelectedBackgroundView:v74];
  }

LABEL_64:
  v80 = [v5 propertyForKey:@"iconImage"];
  if (v80)
  {
    v81 = self;
    v82 = v80;
LABEL_66:
    [(PSTableCell *)v81 setIcon:v82];
    goto LABEL_67;
  }

  v90 = [(PSTableCell *)self imageView];
  v91 = [v90 image];
  if (v91)
  {
    lazyIcon = self->_lazyIcon;

    if (!lazyIcon)
    {
      v81 = self;
      v82 = 0;
      goto LABEL_66;
    }
  }

  else
  {
  }

  if (self->_lazyIcon)
  {
    v3 = [(PSTableCell *)self imageView];
    v93 = [v3 image];
    if (v93)
    {
      v94 = v93;
      [(PSTableCell *)self imageView];
      v95 = v126 = v18;
      v96 = [v95 image];
      v97 = [(PSTableCell *)self blankIcon];

      v18 = v126;
      if (v96 != v97)
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
      v119 = [(PSTableCell *)self getLazyIcon];
      if (v119)
      {
        [(PSTableCell *)self setIcon:v119];
        if (self->_lazyIconDontUnload)
        {
          v120 = [(PSTableCell *)self specifier];
          [v120 setProperty:v119 forKey:@"iconImage"];
        }
      }
    }

    else
    {
      [(PSTableCell *)self loadISIconFromSpecifier:v5];
    }
  }

LABEL_67:
  v83 = [v5 propertyForKey:@"alignment"];
  v84 = v83;
  if (v83)
  {
    -[PSTableCell setAlignment:](self, "setAlignment:", [v83 intValue]);
  }

  v85 = [v5 propertyForKey:@"useHighLegibilityAlternate"];
  v86 = [v85 BOOLValue];

  if (v86)
  {
    v87 = [v5 cellType];
    if (v87 == 4 && ([v5 name], v3 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v3, "length")))
    {
      v88 = v18;
      v89 = [(PSTableCell *)self titleLabel];
    }

    else
    {
      v88 = v18;
      v89 = [(PSTableCell *)self valueLabel];

      if (v87 != 4)
      {
        goto LABEL_84;
      }
    }

LABEL_84:
    v98 = [v89 font];
    v99 = PSHighLegibilityAlternateFont(v98);

    if (v99)
    {
      [v89 setFont:v99];
    }

    v18 = v88;
  }

  if (![v5 controllerLoadAction] && (CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0) || !objc_msgSend(v5, "legacyAction")) && !*(v5 + 3) && !*(v5 + 8) && !v80 && !*(v5 + 6) && (v17 & 0xFFFFFFFFFFFFFFFDLL) != 0xD && v17 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
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

  v102 = [v5 values];

  if (!v102)
  {
    [v5 loadValuesAndTitlesFromDataSource];
  }

  if (v17 <= 0xD && ((1 << v17) & 0x200A) != 0 || !*(v5 + 2))
  {
    v103 = 0;
  }

  else
  {
    v115 = objc_loadWeakRetained(v5 + 1);
    v116 = objc_opt_respondsToSelector();

    if (v116)
    {
      v117 = objc_loadWeakRetained(v5 + 1);
      v103 = SFPerformSelector();

      if (v103 && v17 != 9)
      {
        if (v17 == 4 || v17 == 2)
        {
          v118 = [v5 shortTitleDictionary];
        }

        else
        {
          v118 = [v5 titleDictionary];
        }

        v121 = v118;
        if (v118)
        {
          v122 = [v118 objectForKey:v103];

          v103 = v122;
        }
      }

      if (v103)
      {
        if (v17 == 4 && ([v5 name], v123 = objc_claimAutoreleasedReturnValue(), v124 = objc_msgSend(v123, "length"), v123, !v124))
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

  v104 = [v5 propertyForKey:@"enabled"];
  v105 = v104;
  if (v104)
  {
    -[PSTableCell setCellEnabled:](self, "setCellEnabled:", [v104 BOOLValue]);
  }

  if (*(v5 + 3) && (*(v5 + 2) != 0 || v127) || ([v5 propertyForKey:@"cellClass"], v106 = objc_claimAutoreleasedReturnValue(), v106, v106))
  {
    v107 = objc_loadWeakRetained(v5 + 1);
    [(PSTableCell *)self setValueChangedTarget:v107 action:*(v5 + 3) specifier:v5];
  }

  v108 = [v5 objectForKeyedSubscript:@"allowMultilineTitleKey"];
  v109 = [v108 BOOLValue];

  if (v109)
  {
    v110 = [(PSTableCell *)self textLabel];
    [v110 setNumberOfLines:0];
  }

  if ([(PSTableCell *)self modernLayoutEnabled])
  {
    v111 = [(PSTableCell *)self textLabel];
    [v111 setNumberOfLines:0];

    v112 = [(PSTableCell *)self detailTextLabel];
    [v112 setNumberOfLines:0];

    [(PSTableCell *)self setupModernLayoutConstraints];
  }

  v113 = +[PSTableCell stringFromCellType:](PSTableCell, "stringFromCellType:", [v5 cellType]);
  v114 = [(PSTableCell *)self classNameLayer];
  [v114 setSubLabel:v113];
}

- (id)lazyIconQueue:(id)a3
{
  v3 = [a3 propertyForKey:@"customIconQueue"];
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
  v3 = [(PSTableCell *)self contentView];
  v114 = [v3 layoutMarginsGuide];

  v4 = [(PSTableCell *)self contentView];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(PSTableCell *)self _separatorView:1];
  v7 = v6;
  if (v6)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v7 bottomAnchor];
    v9 = [v4 bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v5 addObject:v10];

    v11 = [v7 leadingAnchor];
    v12 = [(PSTableCell *)self textLabel];
    v13 = [v12 leadingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    [v5 addObject:v14];

    v15 = [v7 trailingAnchor];
    v16 = [(PSTableCell *)self trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v5 addObject:v17];

    v18 = [v7 heightAnchor];
    v19 = [v18 constraintEqualToConstant:0.5];
    [v5 addObject:v19];
  }

  v20 = [(PSTableCell *)self selectedBackgroundView];
  v21 = [(PSTableCell *)self subviews];
  v22 = [v21 containsObject:v20];

  if (v22)
  {
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v20 topAnchor];
    v24 = [(PSTableCell *)self topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v5 addObject:v25];

    v26 = [v20 leadingAnchor];
    v27 = [(PSTableCell *)self leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v5 addObject:v28];

    v29 = [v20 trailingAnchor];
    v30 = [(PSTableCell *)self trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v5 addObject:v31];

    v32 = [v20 bottomAnchor];
    v33 = [(PSTableCell *)self bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v5 addObject:v34];
  }

  v35 = [(PSTableCell *)self imageView];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = [(PSTableCell *)self imageView];
  v37 = [v36 topAnchor];
  v38 = [v4 topAnchor];
  v39 = [v37 constraintGreaterThanOrEqualToAnchor:v38 constant:8.0];
  [v5 addObject:v39];

  v40 = [(PSTableCell *)self imageView];
  v41 = [v40 leadingAnchor];
  v42 = [v114 leadingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v5 addObject:v43];

  v44 = [(PSTableCell *)self imageView];
  v45 = [v44 bottomAnchor];
  v46 = [v4 bottomAnchor];
  v47 = [v45 constraintLessThanOrEqualToAnchor:v46 constant:-8.0];
  [v5 addObject:v47];

  v48 = [(PSTableCell *)self imageView];
  v49 = [v48 centerYAnchor];
  v50 = [v4 centerYAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [v5 addObject:v51];

  v52 = [(PSTableCell *)self imageView];
  LODWORD(v53) = 1148846080;
  [v52 setContentCompressionResistancePriority:0 forAxis:v53];

  v54 = [(PSTableCell *)self imageView];
  LODWORD(v55) = 1148846080;
  [v54 setContentCompressionResistancePriority:1 forAxis:v55];

  v56 = [(PSTableCell *)self textLabel];
  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];

  v57 = [(PSTableCell *)self textLabel];
  v58 = [v57 topAnchor];
  v59 = [v4 topAnchor];
  v60 = [v58 constraintGreaterThanOrEqualToAnchor:v59 constant:13.0];
  [v5 addObject:v60];

  v61 = [(PSTableCell *)self imageView];
  v62 = [v61 image];
  if (v62)
  {
    v63 = v62;
    v64 = [(PSTableCell *)self imageView];
    v65 = [v64 isHidden];

    if ((v65 & 1) == 0)
    {
      v66 = [(PSTableCell *)self textLabel];
      v67 = [v66 leadingAnchor];
      v68 = [(PSTableCell *)self imageView];
      v69 = [v68 trailingAnchor];
      v70 = [v67 constraintEqualToAnchor:v69 constant:15.0];
      [v5 addObject:v70];

      goto LABEL_10;
    }
  }

  else
  {
  }

  v66 = [(PSTableCell *)self textLabel];
  v67 = [v66 leadingAnchor];
  v68 = [v114 leadingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];
  [v5 addObject:v69];
LABEL_10:
  v112 = v7;

  v71 = [(PSTableCell *)self textLabel];
  v72 = [v71 bottomAnchor];
  v73 = [v4 bottomAnchor];
  v74 = [v72 constraintLessThanOrEqualToAnchor:v73 constant:-13.0];
  [v5 addObject:v74];

  v75 = [(PSTableCell *)self textLabel];
  v76 = [v75 centerYAnchor];
  v77 = [v4 centerYAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];
  [v5 addObject:v78];

  v79 = [(PSTableCell *)self detailTextLabel];
  [v79 setTranslatesAutoresizingMaskIntoConstraints:0];

  v80 = [(PSTableCell *)self detailTextLabel];
  v81 = [v80 topAnchor];
  v82 = [v4 topAnchor];
  v83 = [v81 constraintGreaterThanOrEqualToAnchor:v82 constant:13.0];
  [v5 addObject:v83];

  v84 = [(PSTableCell *)self detailTextLabel];
  v85 = [v84 leadingAnchor];
  v86 = [(PSTableCell *)self textLabel];
  v87 = [v86 trailingAnchor];
  v88 = [v85 constraintGreaterThanOrEqualToAnchor:v87 constant:6.0];
  [v5 addObject:v88];

  v89 = v4;
  if (![(PSTableCell *)self accessoryType])
  {
    v90 = [(PSTableCell *)self accessoryView];

    if (v90)
    {
      v89 = v4;
    }

    else
    {
      v89 = v114;
    }
  }

  v91 = [(PSTableCell *)self detailTextLabel];
  v92 = [v91 trailingAnchor];
  v93 = [v89 trailingAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];

  v95 = [(PSTableCell *)self detailTextLabel];
  v96 = [v95 trailingAnchor];
  v97 = [v4 trailingAnchor];
  v98 = [v96 constraintLessThanOrEqualToAnchor:v97];

  LODWORD(v99) = 1132068864;
  [v94 setPriority:v99];
  [v5 addObject:v94];
  [v5 addObject:v98];
  v100 = [(PSTableCell *)self detailTextLabel];
  v101 = [v100 bottomAnchor];
  v102 = [v4 bottomAnchor];
  v103 = [v101 constraintLessThanOrEqualToAnchor:v102 constant:-13.0];
  [v5 addObject:v103];

  v104 = [(PSTableCell *)self detailTextLabel];
  v105 = [v104 centerYAnchor];
  v106 = [v4 centerYAnchor];
  v107 = [v105 constraintEqualToAnchor:v106];
  [v5 addObject:v107];

  v108 = MEMORY[0x1E696ACD8];
  v109 = [(PSTableCell *)self constraints];
  [v108 deactivateConstraints:v109];

  [(PSTableCell *)self setConstraints:v5];
  v110 = MEMORY[0x1E696ACD8];
  v111 = [(PSTableCell *)self constraints];
  [v110 activateConstraints:v111];
}

- (void)handleTraitCollectionChange:(id)a3
{
  v4 = a3;
  v5 = [(PSTableCell *)self traitCollection];
  [(PSTableCell *)self setCachedTraitCollection:v5];

  objc_opt_class();
  v6 = [(PSTableCell *)self lazyIconUTTypeIdentifier];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;

  v8 = [(PSTableCell *)self specifier];
  v9 = [(PSTableCell *)self cachedTraitCollection];
  v10 = [v9 changedTraitsFromTraitCollection:v4];

  v11 = +[PSTableCell traitsThatImpactImageRendering];
  LODWORD(v9) = [v10 intersectsSet:v11];

  if (v9 && (v12 || self->_lazyIconAppID) && v8)
  {
    [(PSTableCell *)self loadISIconFromSpecifier:v8];
  }
}

- (void)setValueChangedTarget:(id)a3 action:(SEL)a4 specifier:(id)a5
{
  [(PSTableCell *)self setCellTarget:a3, a4, a5];

  [(PSTableCell *)self setCellAction:a4];
}

- (id)titleTextLabel
{
  if ([(PSTableCell *)self tag]== 10)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PSTableCell *)self titleLabel];
  }

  return v3;
}

- (BOOL)canReload
{
  v3 = objc_opt_class();

  return [(PSTableCell *)self isMemberOfClass:v3];
}

- (id)_contentString
{
  v2 = [(PSTableCell *)self textLabel];
  v3 = [v2 text];

  return v3;
}

- (id)_urlSession
{
  urlSession = self->_urlSession;
  if (!urlSession)
  {
    v4 = [MEMORY[0x1E696AF78] sharedSession];
    v5 = self->_urlSession;
    self->_urlSession = v4;

    urlSession = self->_urlSession;
  }

  return urlSession;
}

- (id)getLazyIcon
{
  v3 = [(PSTableCell *)self getIconFromIconServices];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
    v9 = [(PSTableCell *)self _urlSession];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __26__PSTableCell_getLazyIcon__block_invoke;
    v17 = &unk_1E71DCBB8;
    v19 = &v20;
    v10 = v8;
    v18 = v10;
    v11 = [v9 dataTaskWithRequest:v7 completionHandler:&v14];

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

- (CGSize)iconSizeForShape:(unint64_t)a3 scale:(double)a4
{
  if (a3 == 4)
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
    v4 = [(PSTableCell *)self imageDescriptor];
    v5 = [v4 shape];
    v6 = [(PSTableCell *)self cachedTraitCollection];
    [v6 displayScale];
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
      v10 = [(PSTableCell *)self lazyIconUTTypeIdentifier];
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
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

      v13 = [(PSTableCell *)self lazyIconUTTypeIdentifier];
      v9 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithType:v13];

      if (!v9)
      {
        goto LABEL_14;
      }
    }

    v14 = [v9 prepareImageForDescriptor:v4];
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0x1E69DCAB8];
      v17 = [v14 CGImage];
      [v15 scale];
      v18 = [v16 imageWithCGImage:v17 scale:0 orientation:?];
      v19 = v18;
      if (v5 == 4)
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
    v4 = lazyIconAppID;
  }

  else
  {
    objc_opt_class();
    v6 = [(PSTableCell *)self lazyIconUTTypeIdentifier];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v4 = [(PSTableCell *)self lazyIconUTTypeIdentifier];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)title
{
  if (self->_shouldHideTitle)
  {
    v2 = self->_hiddenTitle;
  }

  else
  {
    v3 = [(PSTableCell *)self textLabel];
    v2 = [v3 text];
  }

  return v2;
}

- (void)setTitle:(id)a3
{
  shouldHideTitle = self->_shouldHideTitle;
  v5 = a3;
  v6 = v5;
  if (shouldHideTitle)
  {
    v7 = [v5 copy];

    hiddenTitle = self->_hiddenTitle;
    self->_hiddenTitle = v7;
  }

  else
  {
    v9 = [(PSTableCell *)self textLabel];
    [v9 setText:v6];

    hiddenTitle = v9;
  }
}

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  if (![(PSTableCell *)self canBeChecked]|| self->_checked == v3)
  {
    return;
  }

  self->_checked = v3;
  if ([(PSTableCell *)self accessoryType]== 1 || [(PSTableCell *)self accessoryType]== 2)
  {
    if (v3)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v6 = [(PSTableCell *)self _checkmarkImage:0];
      v7 = [(PSTableCell *)self _checkmarkImage:1];
      v8 = [v5 initWithImage:v6 highlightedImage:v7];
      checkedImageView = self->_checkedImageView;
      self->_checkedImageView = v8;

      v10 = [(PSTableCell *)self contentView];
      [v10 addSubview:self->_checkedImageView];

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

- (void)setIcon:(id)a3
{
  v4 = a3 == 0;
  v5 = a3;
  v6 = [(PSTableCell *)self imageView];
  v7 = [v6 image];
  v8 = v7 == 0;

  v9 = [(PSTableCell *)self imageView];
  [v9 setImage:v5];

  if (v4 != v8)
  {

    [(PSTableCell *)self setNeedsLayout];
  }
}

- (void)setValue:(id)a3
{
  v5 = a3;
  if (self->_value != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_value, a3);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = v12;
    v7 = v12;
    if (isKindOfClass)
    {
LABEL_3:
      v8 = [(PSTableCell *)self detailTextLabel];
      [v8 setText:v7];

      v5 = v12;
      goto LABEL_5;
    }

    if (!self->_value)
    {
      v9 = [(PSTableCell *)self detailTextLabel];
      v10 = [v9 text];
      v11 = [v10 length];

      v5 = v12;
      if (v11)
      {
        v7 = 0;
        goto LABEL_3;
      }
    }
  }

LABEL_5:
}

- (void)setAlignment:(int)a3
{
  if (self->_alignment != a3)
  {
    self->_alignment = a3;
    [(PSTableCell *)self setNeedsLayout];
  }
}

- (void)setTarget:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v6 = a3;
  v5 = [v4 callStackSymbols];
  NSLog(&cfstr_ImportantSetta.isa, v5);

  [(PSTableCell *)self setCellTarget:v6];
}

- (id)target
{
  v3 = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&cfstr_ImportantTarge.isa, v3);

  return [(PSTableCell *)self cellTarget];
}

- (void)setAction:(SEL)a3
{
  v5 = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&cfstr_ImportantSetac.isa, v5);

  [(PSTableCell *)self setCellAction:a3];
}

- (SEL)action
{
  v3 = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&cfstr_ImportantActio.isa, v3);

  return [(PSTableCell *)self cellAction];
}

- (id)cellTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_pTarget);

  return WeakRetained;
}

- (void)setCellAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_pAction = v3;
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

- (void)setCellEnabled:(BOOL)a3
{
  if (self->_cellEnabled != a3)
  {
    v4 = a3;
    self->_cellEnabled = a3;
    [(PSTableCell *)self setUserInteractionEnabled:?];
    v6 = [(PSTableCell *)self titleLabel];
    [v6 setEnabled:v4];

    v7 = [(PSTableCell *)self detailTextLabel];
    [v7 setEnabled:v4];

    v8 = [(PSTableCell *)self imageView];
    v10 = v8;
    v9 = 0.5;
    if (v4)
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }
}

- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4
{
  [(PSTableCell *)self refreshCellContentsWithSpecifier:a3, a4];

  [(PSTableCell *)self setNeedsLayout];
}

- (double)textFieldOffset
{
  v3 = [(PSTableCell *)self textLabel];
  v4 = [v3 text];
  if ([v4 length])
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

- (void)highlightCellForDuration:(double)a3 animateUnighlight:(BOOL)a4
{
  v4 = a4;
  [(PSTableCell *)self _invalidateHighlightContext];
  v7 = [PSTableCellHighlightContext contextWithCell:self];
  customHighlightContext = self->_customHighlightContext;
  self->_customHighlightContext = v7;

  v9 = self->_customHighlightContext;

  [(PSTableCellHighlightContext *)v9 performHighlightForDuration:v4 animateUnhighlight:a3];
}

- (id)_checkmarkImage:(BOOL)a3
{
  v3 = a3;
  v5 = +[PSListController appearance];
  v6 = [v5 buttonTextColor];

  if (v6)
  {
    v12.receiver = self;
    v12.super_class = PSTableCell;
    v7 = [(PSTableCell *)&v12 _checkmarkImage:v3];
    v8 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:v6];
    v9 = [v7 imageWithTintColor:v8 renderingMode:0];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PSTableCell;
    v9 = [(PSTableCell *)&v11 _checkmarkImage:v3];
  }

  return v9;
}

- (id)_disclosureChevronImage:(BOOL)a3
{
  v3 = a3;
  v5 = +[PSListController appearance];
  v6 = [v5 cellAccessoryColor];

  if (v6)
  {
    v13.receiver = self;
    v13.super_class = PSTableCell;
    v7 = [(PSTableCell *)&v13 _disclosureChevronImage:v3];
    v8 = [(PSTableCell *)self _accessibilityHigherContrastTintColorForColor:v6];
    v9 = [v7 _flatImageWithColor:v8];
    v10 = [v9 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PSTableCell;
    v7 = [(PSTableCell *)&v12 _disclosureChevronImage:v3];
    v10 = [v7 imageFlippedForRightToLeftLayoutDirection];
  }

  return v10;
}

- (id)_automationID
{
  v3 = [(PSTableCell *)self title];
  if (!v3)
  {
    v3 = [(PSTableCell *)self description];
  }

  v4 = [(PSTableCell *)self tag];
  if (v4 <= 0xD && ((1 << v4) & 0x2C06) != 0)
  {
    v5 = [@"BTN " stringByAppendingString:v3];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (id)scriptingInfoWithChildren
{
  v3 = [(PSTableCell *)self title];
  if (!v3)
  {
    v3 = [(PSTableCell *)self description];
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
    v14 = [(PSTableCell *)self superview];
    [(PSTableCell *)self frame];
    [v14 convertRect:0 toView:?];
    *&v34 = v15;
    *(&v34 + 1) = v16;
    *&v35 = v17;
    *(&v35 + 1) = v18;

    v10 = [@"DAT " stringByAppendingString:v3];

    v5 = [(PSTableCell *)self valueLabel];
    v13 = [v5 text];
    goto LABEL_14;
  }

  if (v4 == 8)
  {
    goto LABEL_10;
  }

  if (v4 == 6)
  {
    v5 = [(PSTableCell *)self control];
    [v5 frame];
    [(PSTableCell *)self convertRect:0 toView:?];
    *&v34 = v19;
    *(&v34 + 1) = v20;
    *&v35 = v21;
    *(&v35 + 1) = v22;
    v10 = [@"BTN " stringByAppendingString:v3];

    v23 = [v5 isOn];
    v24 = @"OFF";
    if (v23)
    {
      v24 = @"ON";
    }

    v13 = v24;
    goto LABEL_14;
  }

  if (v4 != 5)
  {
LABEL_20:
    v33.receiver = self;
    v33.super_class = PSTableCell;
    v28 = [(PSTableCell *)&v33 scriptingInfoWithChildren];
    goto LABEL_17;
  }

  v5 = [(PSTableCell *)self control];
  [v5 frame];
  [(PSTableCell *)self convertRect:0 toView:?];
  *&v34 = v6;
  *(&v34 + 1) = v7;
  *&v35 = v8;
  *(&v35 + 1) = v9;
  v10 = [@"SLD " stringByAppendingString:v3];

  v11 = MEMORY[0x1E696AEC0];
  [v5 value];
  v13 = [v11 stringWithFormat:@"%f", v12];
LABEL_14:
  v25 = v13;
  v3 = v10;

  v26 = MEMORY[0x1E695DF70];
  v32.receiver = self;
  v32.super_class = PSTableCell;
  v27 = [(PSTableCell *)&v32 scriptingInfoWithChildren];
  v28 = [v26 arrayWithArray:v27];

  v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v30 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:32];
  [v29 setObject:v30 forKey:@"CGRect"];

  [v29 setObject:v3 forKey:@"ID"];
  if (v25)
  {
    [v29 setObject:v25 forKey:@"Value"];
  }

  [v28 addObject:v29];

LABEL_17:

  return v28;
}

@end