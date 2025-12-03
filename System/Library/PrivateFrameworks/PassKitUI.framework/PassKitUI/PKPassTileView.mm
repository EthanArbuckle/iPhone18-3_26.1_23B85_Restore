@interface PKPassTileView
- (BOOL)_isDynamicHeight;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPassTileCustomViewProviding)customViewProvider;
- (PKPassTileView)init;
- (PKPassTileViewDelegate)delegate;
- (double)_layoutWithBounds:(double)bounds applyLayout:(double)layout;
- (double)_prepareViewForReuse:(void *)reuse type:(__int128 *)type state:;
- (uint64_t)_updateContentStateAnimated:(uint64_t)animated;
- (void)_updateBackgroundAnimated:(uint64_t)animated;
- (void)_updateStyleAnimated:(uint64_t)animated;
- (void)_updateSubviewsAnimated:(uint64_t)animated;
- (void)beginActionStateTimeout:(int64_t)timeout;
- (void)dealloc;
- (void)layoutIfNeededAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)updates animated:(BOOL)animated;
- (void)prepareForReuse;
- (void)setCompact:(BOOL)compact animated:(BOOL)animated;
- (void)setContent:(id)content animated:(BOOL)animated;
- (void)setEnabled:(BOOL)enabled;
- (void)setGroupStyle:(unint64_t)style;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setInActionState:(BOOL)state animated:(BOOL)animated;
- (void)setPass:(id)pass passState:(id)state;
- (void)setSelected:(BOOL)selected;
@end

@implementation PKPassTileView

- (PKPassTileView)init
{
  v17.receiver = self;
  v17.super_class = PKPassTileView;
  v2 = [(PKPassTileView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(UIView *)v2 pkui_setMaskType:3];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    snapshots = v3->_snapshots;
    v3->_snapshots = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    icon = v3->_icon;
    v3->_icon = v6;

    Label = CreateLabel();
    title = v3->_title;
    v3->_title = Label;

    v10 = CreateLabel();
    body = v3->_body;
    v3->_body = v10;

    v12 = CreateLabel();
    footer = v3->_footer;
    v3->_footer = v12;

    [(UIImageView *)v3->_icon setAlpha:0.0];
    [(UILabel *)v3->_title setAlpha:0.0];
    [(UILabel *)v3->_body setAlpha:0.0];
    [(UIImageView *)v3->_bodyImage setAlpha:0.0];
    [(UILabel *)v3->_footer setAlpha:0.0];
    v14 = objc_alloc_init(PKPassthroughView);
    contentView = v3->_contentView;
    v3->_contentView = v14;

    [(PKPassthroughView *)v3->_contentView setHitTestEnabled:0];
    [(PKPassthroughView *)v3->_contentView addSubview:v3->_icon];
    [(PKPassthroughView *)v3->_contentView addSubview:v3->_title];
    [(PKPassthroughView *)v3->_contentView addSubview:v3->_body];
    [(PKPassthroughView *)v3->_contentView addSubview:v3->_footer];
    [(PKPassTileView *)v3 addSubview:v3->_contentView];
    v3->_enabled = [(PKPassTileView *)v3 isEnabled];
    v3->_selected = [(PKPassTileView *)v3 isSelected];
    v3->_highlighted = [(PKPassTileView *)v3 isHighlighted];
    [(PKPassTileView *)v3 _updateSubviewsAnimated:?];
  }

  return v3;
}

- (void)_updateSubviewsAnimated:(uint64_t)animated
{
  if (!animated)
  {
    return;
  }

  if (*(animated + 1073) == 1)
  {
    *(animated + 1074) = 1;
    return;
  }

  if (a2)
  {
    [animated layoutIfNeededAnimated:1];
  }

  metadata = [*(animated + 1096) metadata];
  *(animated + 979) = [metadata isSelectable];
  actions = [*(animated + 928) actions];
  v6 = actions;
  if (*(animated + 1112))
  {
    v7 = 1;
  }

  else if (actions)
  {
    v7 = [actions count] != 0;
  }

  else
  {
    v7 = 0;
  }

  *(animated + 980) = v7;
  v8 = MEMORY[0x1E69DDC38];
  if (!*(animated + 1056))
  {
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], 32770, 0);
    v10 = *(animated + 1056);
    *(animated + 1056) = v9;
  }

  isDynamic = [(PKPassTileView *)animated _isDynamicHeight];
  v12 = *(animated + 1104);
  v13 = *(animated + 784);
  if (isDynamic)
  {
    [v13 setNumberOfLines:3];
    v14 = *MEMORY[0x1E69DDD80];
    v15 = *v8;
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v15, 32770, 0, *MEMORY[0x1E69DB980]);
    v17 = *(animated + 1008);
    *(animated + 1008) = v16;

    if (v12 == 1)
    {
      v18 = *MEMORY[0x1E69DDD10];
    }

    else
    {
      v18 = v14;
    }

    if (v12 == 1)
    {
      v19 = 16.0;
    }

    else
    {
      v19 = 34.0;
    }

    v20 = PKFontForDefaultDesign(v18, v15, 0x8000, 0);
    v21 = *(animated + 1016);
    *(animated + 1016) = v20;

    v22 = [*(animated + 1008) fontWithSize:{PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC20], v19)}];
    v23 = *(animated + 1024);
    *(animated + 1024) = v22;
  }

  else
  {
    [v13 setNumberOfLines:1];
    v24 = *MEMORY[0x1E69DB8D8];
    v25 = *v8;
    if (*(animated + 979) == 1)
    {
      v26 = PKFontForDesign(v24, *MEMORY[0x1E69DDDC8], *v8, 4098, 0);
      v27 = MEMORY[0x1E69DDD80];
    }

    else
    {
      v26 = PKFontForDesign(v24, *MEMORY[0x1E69DDDB8], *v8, 32770, 0, *MEMORY[0x1E69DB980]);
      v27 = MEMORY[0x1E69DDCF8];
    }

    v28 = *(animated + 1008);
    *(animated + 1008) = v26;

    v29 = PKFontForDefaultDesign(*v27, v25, 0x8000, 0);
    v30 = *(animated + 1016);
    *(animated + 1016) = v29;

    v31 = *(animated + 1008);
    v23 = *(animated + 1024);
    *(animated + 1024) = v31;
  }

  if ((isDynamic | *(animated + 979)))
  {
    v32 = 37;
  }

  else
  {
    v32 = 38;
  }

  if ((isDynamic | *(animated + 979)))
  {
    v33 = 38;
  }

  else
  {
    v33 = 37;
  }

  objc_storeStrong((animated + 1032), *(animated + OBJC_IVAR___PKPassTileView__snapshots[v32]));
  objc_storeStrong((animated + 1040), *(animated + OBJC_IVAR___PKPassTileView__snapshots[v33]));
  objc_storeStrong((animated + 1048), *(animated + 1016));
  *(animated + 984) = *MEMORY[0x1E695F060];
  [*(animated + 1016) _bodyLeading];
  v310 = a2;
  v307 = v6;
  v308 = metadata;
  if (v12 == 1)
  {
    v34 = 9.0;
    v35 = 10.0;
  }

  else
  {
    PKFloatRoundToPixel();
    v35 = v36 + 10.0;
    if (*(animated + 979) == 1)
    {
      PKFloatRoundToPixel();
    }

    v34 = v36 + 10.0;
  }

  v37 = *(animated + 979);
  v38 = 0.0;
  v39 = 18.0;
  if (isDynamic)
  {
    v38 = 2.0;
  }

  else
  {
    v39 = 0.0;
  }

  if (v12 == 1)
  {
    v40 = 4.0;
  }

  else
  {
    v40 = v39;
  }

  if (*(animated + 979))
  {
    v41 = 16.0;
  }

  else
  {
    v41 = 13.0;
  }

  v42 = *(animated + 880);
  v333 = *(animated + 864);
  v334 = v42;
  v43 = *(animated + 912);
  v335 = *(animated + 896);
  v336 = v43;
  if (v37)
  {
    v44 = -2.0;
  }

  else
  {
    v44 = v38;
  }

  image = [*(animated + 840) image];
  image2 = [*(animated + 848) image];
  v47 = *(animated + 816) != 0;
  *(animated + 864) = v35;
  *(animated + 872) = v41;
  *(animated + 880) = v34;
  *(animated + 888) = v41;
  *(animated + 896) = v40;
  *(animated + 904) = v41;
  *(animated + 912) = v44;
  *(animated + 920) = v37;
  *(animated + 921) = 0;
  *(animated + 922) = image != 0;
  *(animated + 923) = image2 != 0;
  *(animated + 924) = v47;

  v309 = *(animated + 936);
  v48 = [PKPassTileView_State alloc];
  v49 = *(animated + 1096);
  v50 = *(animated + 928);
  v51 = *(animated + 952);
  v52 = *(animated + 1032);
  v53 = *(animated + 1040);
  v54 = *(animated + 1048);
  v55 = *(animated + 1024);
  v298 = *(animated + 1089);
  v56 = *(animated + 1112);
  v318 = v49;
  v57 = v50;
  v58 = v51;
  v322 = v52;
  v59 = v53;
  v60 = v54;
  v320 = v55;
  if (!v48)
  {
    v62 = 0;
    goto LABEL_100;
  }

  *v327 = v48;
  *&v327[8] = PKPassTileView_State;
  v61 = objc_msgSendSuper2(v327, sel_init);
  v62 = v61;
  if (!v61)
  {
LABEL_100:
    v63 = v318;
    goto LABEL_101;
  }

  objc_storeStrong(v61 + 1, v49);
  v63 = v318;
  metadata2 = [v318 metadata];
  [metadata2 preferredStyle];

  v303 = v57;
  type = [v57 type];
  icon = 0;
  v67 = NAN;
  v302 = v58;
  v304 = v60;
  v299 = v56;
  v68 = v59;
  if (type > 1)
  {
    if (type != 2)
    {
      body2 = 0;
      title2 = 0;
      bodyImage = 0;
      accessory = 0;
      obj = 0;
      v71 = 0;
      v72 = 0;
      if (type != 5)
      {
        goto LABEL_82;
      }

      stateTypeForeignView = [v303 stateTypeForeignView];
      adaptorProvider = [stateTypeForeignView adaptorProvider];
      v71 = adaptorProvider[2]();

      preferredStyle = [stateTypeForeignView preferredStyle];
      icon = 0;
      body2 = 0;
      title2 = 0;
      bodyImage = 0;
      accessory = 0;
      obj = 0;
LABEL_59:
      if ((preferredStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v72 = &stru_1F3BD7330;
      }

      else
      {
        v72 = 0;
      }

LABEL_62:
      v67 = NAN;
      v58 = v302;
      goto LABEL_82;
    }

    stateTypeCheckIn = [v303 stateTypeCheckIn];
    obj = [stateTypeCheckIn secondaryAccessory];
    date = [MEMORY[0x1E695DF00] date];
    availableFrom = [stateTypeCheckIn availableFrom];
    date2 = [availableFrom date];

    [date2 timeIntervalSinceDate:date];
    if (!date2 || v86 <= 0.0)
    {
      title2 = PKLocalizedPaymentString(&cfstr_PassTileChecki.isa);
      body2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_0.isa);
      v107 = MEMORY[0x1E69B8A98];
      v108 = PKLocalizedPaymentString(&cfstr_PassTileChecki_1.isa);
      v109 = v107;
      v110 = v108;
      accessory = [v109 createWithTitle:v108 spinnerEnabled:0];
      v67 = NAN;
LABEL_80:

      icon = 0;
      goto LABEL_81;
    }

    v294 = date;
    availableFrom2 = [stateTypeCheckIn availableFrom];
    timeZone = [availableFrom2 timeZone];

    secondsFromGMT = [timeZone secondsFromGMT];
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    secondsFromGMT2 = [localTimeZone secondsFromGMT];

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v300 = timeZone;
    [currentCalendar setTimeZone:timeZone];
    v91 = [currentCalendar components:30 fromDate:date2];
    v92 = [currentCalendar dateFromComponents:v91];

    v93 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v93 setDay:-1];
    v297 = v92;
    v295 = [currentCalendar dateByAddingComponents:v93 toDate:v92 options:0];
    weekdaySymbols = [currentCalendar weekdaySymbols];
    v95 = [weekdaySymbols count];

    v296 = 0;
    if (v95 >= 2)
    {
      [v93 setDay:-v95];
      v296 = [currentCalendar dateByAddingComponents:v93 toDate:v297 options:0];
    }

    v293 = currentCalendar;
    v313 = PKLocalizedHourOfDate();
    v96 = objc_alloc_init(MEMORY[0x1E696AB78]);
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v96 setLocale:autoupdatingCurrentLocale];

    [v96 setLocalizedDateFormatFromTemplate:@"j:mm a"];
    [v96 setTimeZone:v300];
    v98 = [v96 stringFromDate:date2];

    date = v294;
    v99 = v296;
    if (secondsFromGMT != secondsFromGMT2)
    {
      goto LABEL_71;
    }

    [v294 timeIntervalSinceDate:v297];
    if (v100 >= 0.0)
    {
      title2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_2.isa);
      body2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_3.isa, &cfstr_Lu_0.isa, v313, v98);
      v111 = date2;
    }

    else
    {
      [v294 timeIntervalSinceDate:v295];
      if (v101 < 0.0)
      {
LABEL_71:
        v102 = v295;
        if (v296 && ([v294 timeIntervalSinceDate:v296], v102 = v296, v103 >= 0.0))
        {
          v112 = objc_alloc_init(MEMORY[0x1E696AB78]);
          autoupdatingCurrentLocale2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
          [v112 setLocale:autoupdatingCurrentLocale2];

          [v112 setLocalizedDateFormatFromTemplate:@"cccc"];
          [v112 setTimeZone:v300];
          v114 = [v112 stringFromDate:date2];
          title2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_6.isa);
          body2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_7.isa, &cfstr_Lu_1.isa, v313, v114, v98);
          v67 = MEMORY[0x1BFB41080](v295);

          v99 = v296;
        }

        else
        {
          v104 = objc_alloc_init(MEMORY[0x1E696AB78]);
          autoupdatingCurrentLocale3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
          [v104 setLocale:autoupdatingCurrentLocale3];

          [v104 setLocalizedDateFormatFromTemplate:@"MMM d"];
          [v104 setTimeZone:v300];
          v106 = [v104 stringFromDate:date2];
          title2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_8.isa);
          body2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_9.isa, &cfstr_Lu_1.isa, v313, v106, v98);
          v67 = MEMORY[0x1BFB41080](v102);

          v99 = v296;
          date = v294;
        }

        goto LABEL_79;
      }

      title2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_4.isa);
      body2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_5.isa, &cfstr_Lu_0.isa, v313, v98);
      v111 = v297;
    }

    v67 = MEMORY[0x1BFB41080](v111);
LABEL_79:

    accessory = 0;
    v110 = v300;
    v58 = v302;
    goto LABEL_80;
  }

  if (type)
  {
    body2 = 0;
    title2 = 0;
    bodyImage = 0;
    accessory = 0;
    obj = 0;
    v71 = 0;
    v72 = 0;
    if (type != 1)
    {
      goto LABEL_82;
    }

    stateTypeDefaultV2 = [v303 stateTypeDefaultV2];
    icon = [v303 icon];
    accessory = [stateTypeDefaultV2 accessory];
    obj = [stateTypeDefaultV2 secondaryAccessory];
    title = [stateTypeDefaultV2 title];
    title2 = [title displayableStringWithPassState:v58 inContext:0];

    body = [stateTypeDefaultV2 body];
    body2 = [body displayableStringWithPassState:v58 inContext:1];

    bodyImage = [stateTypeDefaultV2 bodyImage];
    footer = [stateTypeDefaultV2 footer];
    v77 = v58;
    v78 = footer;
    v72 = [footer displayableStringWithPassState:v77 inContext:2];

    preferredStyle = [stateTypeDefaultV2 preferredStyle];
    v71 = 0;
    if (v72)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  stateTypeCheckIn = [v303 stateTypeDefault];
  icon = [v303 icon];
  title2 = [stateTypeCheckIn title];
  body2 = [stateTypeCheckIn body];
  accessory = [stateTypeCheckIn accessory];
  obj = [stateTypeCheckIn secondaryAccessory];
  v67 = NAN;
LABEL_81:

  bodyImage = 0;
  v71 = 0;
  v72 = 0;
LABEL_82:
  objc_storeStrong(v62 + 4, icon);
  v115 = PKPassTileImageToUIImage(icon, v320);
  v116 = v62[5];
  v62[5] = v115;

  AttributedString = CreateAttributedString(title2, v322);
  v118 = v62[10];
  v62[10] = AttributedString;

  v119 = CreateAttributedString(body2, v68);
  v120 = v62[11];
  v62[11] = v119;

  objc_storeStrong(v62 + 12, bodyImage);
  v301 = v68;
  v121 = PKPassTileImageToUIImage(bodyImage, v68);
  v122 = v62[13];
  v62[13] = v121;

  v123 = CreateAttributedString(v72, v304);
  v124 = v62[14];
  v62[14] = v123;

  *(v62 + 17) = v67;
  *(v62 + 16) = v62[5] != 0;
  v125 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(v62 + 5)), vceqzq_s64(*(v62 + 13))))), 0x1000100010001);
  *(v62 + 17) = vuzp1_s8(v125, v125).u32[0];
  if (v299 == 2)
  {
    createDefaultDisclosureAccessoryImage = [MEMORY[0x1E69B8AA0] createDefaultDisclosureAccessoryImage];

    accessory = createDefaultDisclosureAccessoryImage;
    v58 = v302;
  }

  if (accessory)
  {
    type2 = [accessory type];
    if (!type2)
    {
      if ((v298 & 1) == 0)
      {
        objc_storeStrong(v62 + 6, accessory);
        *(v62 + 22) = 1;
      }

      goto LABEL_96;
    }

    if (type2 != 2)
    {
      if (type2 == 1)
      {
        objc_storeStrong(v62 + 6, accessory);
        *(v62 + 21) = 1;
      }

      goto LABEL_96;
    }

    objc_storeStrong(v62 + 6, accessory);
    v128 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC38], 2, 0);
    accessoryTypeImage = [accessory accessoryTypeImage];
    image3 = [accessoryTypeImage image];
    v135 = PKPassTileImageToUIImage(image3, v128);
    v136 = v62[7];
    v62[7] = v135;

    v63 = v318;
    *(v62 + 23) = 1;
  }

  else
  {
    if (!obj || [obj type] != 2)
    {
      goto LABEL_96;
    }

    objc_storeStrong(v62 + 8, obj);
    v128 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC38], 0, 0);
    accessoryTypeImage2 = [obj accessoryTypeImage];
    image4 = [accessoryTypeImage2 image];
    v131 = PKPassTileImageToUIImage(image4, v128);
    v132 = v62[9];
    v62[9] = v131;

    v63 = v318;
    *(v62 + 24) = 1;
  }

  v58 = v302;
LABEL_96:
  if (v71)
  {
    objc_storeStrong(v62 + 15, v71);
    view = [v71 view];
    v138 = v62[16];
    v62[16] = view;

    *(v62 + 25) = 1;
  }

  v57 = v303;
  v60 = v304;
  v59 = v301;
LABEL_101:

  v139 = *(animated + 936);
  *(animated + 936) = v62;

  v140 = *(animated + 968);
  if (v140)
  {
    dispatch_source_cancel(v140);
    v141 = *(animated + 968);
    *(animated + 968) = 0;
  }

  v142 = *(animated + 936);
  v143 = v310;
  if (v142)
  {
    v144 = *(v142 + 136);
  }

  else
  {
    v144 = 0.0;
  }

  v145 = fmax(v144 - CFAbsoluteTimeGetCurrent(), 1.0);
  v146 = MEMORY[0x1E69E96A0];
  v147 = MEMORY[0x1E69E96A0];
  v148 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v146);
  v149 = *(animated + 968);
  *(animated + 968) = v148;

  v150 = *(animated + 968);
  v151 = dispatch_walltime(0, (v145 * 1000000000.0));
  dispatch_source_set_timer(v150, v151, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(v327, animated);
  v152 = *(animated + 968);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __42__PKPassTileView__updateSubviewsAnimated___block_invoke;
  handler[3] = &unk_1E8010998;
  objc_copyWeak(&v332, v327);
  dispatch_source_set_event_handler(v152, handler);
  dispatch_resume(*(animated + 968));
  objc_destroyWeak(&v332);
  objc_destroyWeak(v327);
  v153 = *(animated + 936);
  v154 = v309;
  v155 = v153;
  v156 = objc_opt_self();
  if (v154 == v155)
  {
    v157 = 2;
  }

  else if ((v154 == 0) != (v155 == 0))
  {
    v157 = 0;
  }

  else
  {
    v157 = [(PKPassTileView_State *)v156 visuallyCompareTile:v155[1] toTile:?];
  }

  v158 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
  v159 = *(animated + 936);
  if (v159)
  {
    v159 = v159[4];
  }

  v160 = v159;
  v161 = *(animated + 936);
  if (v161)
  {
    v161 = v161[10];
  }

  v162 = v161;
  v163 = *(animated + 936);
  if (v163)
  {
    v163 = v163[11];
  }

  v164 = v163;
  v165 = *(animated + 936);
  if (v165)
  {
    v165 = v165[12];
  }

  v319 = v165;
  v166 = *(animated + 936);
  if (v166)
  {
    v166 = v166[14];
  }

  v314 = v166;
  v167 = *(animated + 936);
  if (v167)
  {
    v167 = v167[6];
  }

  v323 = v167;
  v168 = *(animated + 936);
  if (v168)
  {
    v168 = v168[8];
  }

  v317 = v168;
  v169 = *(animated + 936);
  if (v169)
  {
    v169 = v169[15];
  }

  v321 = v169;
  v329 = *(animated + 752);
  v330 = *(animated + 768);
  if (v310)
  {
    if (!v154)
    {
      v174 = 0.0;
      if (!v157)
      {
        v143 = v310;
        goto LABEL_176;
      }

      v197 = 0;
      v143 = v310;
LABEL_166:
      v198 = v197;
      LOBYTE(v157) = PKEqualObjects();

      if (v154)
      {
LABEL_167:
        if (*(v154 + 21) == 1 && (v157 & 1) == 0)
        {
          *v327 = v333;
          *&v327[16] = v334;
          v199 = v336;
          *&v327[32] = v335;
          *(animated + 765) = 1;
          v200 = *(animated + 824);
          v328 = v199;
          v174 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v200 type:2 state:v327], v174);
        }

        if (!(v157 & 1 | ((*(v154 + 22) & 1) == 0)))
        {
          *v327 = v333;
          *&v327[16] = v334;
          v201 = v336;
          *&v327[32] = v335;
          *(animated + 766) = 1;
          v202 = *(animated + 832);
          v328 = v201;
          v174 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v202 type:3 state:v327], v174);
        }

        if (!(v157 & 1 | ((*(v154 + 23) & 1) == 0)))
        {
          *v327 = v333;
          *&v327[16] = v334;
          v203 = v336;
          *&v327[32] = v335;
          *(animated + 767) = 1;
          v204 = *(animated + 840);
          v328 = v203;
          v174 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v204 type:4 state:v327], v174);
        }

        if (!(v157 & 1 | ((v154[3] & 1) == 0)))
        {
          *v327 = v333;
          *&v327[16] = v334;
          v205 = v336;
          *&v327[32] = v335;
          *(animated + 768) = 1;
          v206 = *(animated + 848);
          v328 = v205;
          v174 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v206 type:4 state:v327], v174);
        }
      }

LABEL_176:
      *(animated + 752) = fmax(*(animated + 752), v174 * 0.65);
      goto LABEL_177;
    }

    v170 = *(v154 + 16);
    if (v170 == 1 && v157)
    {
      v171 = v154[4];
      v172 = v160;
      v173 = PKEqualObjects();

      v174 = 0.0;
      if ((v173 & 1) == 0)
      {
        goto LABEL_133;
      }
    }

    else
    {
      v172 = v160;
      v174 = 0.0;
      if (v170)
      {
LABEL_133:
        *(animated + 760) = 1;
        v175 = *(animated + 776);
        *v327 = v333;
        *&v327[16] = v334;
        *&v327[32] = v335;
        v328 = v336;
        v174 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v175 type:0 state:v327], 0.0);
      }
    }

    v176 = *(v154 + 17);
    if (v176 == 1 && v157)
    {
      v177 = v154[10];
      v178 = PKEqualObjects();

      if (v178)
      {
        goto LABEL_140;
      }
    }

    else if ((v176 & 1) == 0)
    {
LABEL_140:
      v180 = *(v154 + 18);
      if (v180 == 1 && v157 > 1)
      {
        v181 = v154[11];
        v182 = PKEqualObjects();

        if (v182)
        {
          goto LABEL_146;
        }
      }

      else if ((v180 & 1) == 0)
      {
LABEL_146:
        v184 = *(v154 + 19);
        if (v184 == 1 && v157)
        {
          v185 = v154[12];
          v186 = PKEqualObjects();

          if (v186)
          {
            goto LABEL_152;
          }
        }

        else if ((v184 & 1) == 0)
        {
LABEL_152:
          v189 = *(v154 + 20);
          if (v189 == 1 && v157)
          {
            v190 = v154[14];
            v191 = PKEqualObjects();

            if (v191)
            {
              goto LABEL_158;
            }
          }

          else if ((v189 & 1) == 0)
          {
LABEL_158:
            v193 = *(v154 + 25);
            if (v193 == 1 && v157)
            {
              v194 = *(animated + 816);
              v195 = v154[15];
              LOBYTE(v194) = [v321 isViewEqualToOther:v194 withAdaptor:v195];

              v160 = v172;
              if (v194)
              {
                v158 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
LABEL_165:
                v197 = v154[6];
                goto LABEL_166;
              }
            }

            else
            {
              v160 = v172;
              if ((v193 & 1) == 0)
              {
                goto LABEL_164;
              }
            }

            *(animated + 769) = 1;
            v196 = *(animated + 816);
            *v327 = v333;
            *&v327[16] = v334;
            *&v327[32] = v335;
            v328 = v336;
            v174 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v196 type:5 state:v327], v174);
LABEL_164:
            v158 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
            if (!v157)
            {
              goto LABEL_167;
            }

            goto LABEL_165;
          }

          *(animated + 764) = 1;
          v192 = *(animated + 808);
          *v327 = v333;
          *&v327[16] = v334;
          *&v327[32] = v335;
          v328 = v336;
          v174 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v192 type:1 state:v327], v174);
          goto LABEL_158;
        }

        *v327 = v333;
        *&v327[16] = v334;
        v187 = v336;
        *&v327[32] = v335;
        *(animated + 760) = 1;
        v188 = *(animated + 800);
        v328 = v187;
        v174 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v188 type:5 state:v327], v174);
        goto LABEL_152;
      }

      *(animated + 762) = 1;
      v183 = *(animated + 792);
      *v327 = v333;
      *&v327[16] = v334;
      *&v327[32] = v335;
      v328 = v336;
      v174 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v183 type:1 state:v327], v174);
      goto LABEL_146;
    }

    *(animated + 761) = 1;
    v179 = *(animated + 784);
    *v327 = v333;
    *&v327[16] = v334;
    *&v327[32] = v335;
    v328 = v336;
    v174 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v179 type:1 state:v327], v174);
    goto LABEL_140;
  }

LABEL_177:
  v207 = *(animated + 928);
  if (v207)
  {
    isEnabled = [v207 isEnabled];
  }

  else
  {
    isEnabled = 1;
  }

  *(animated + 976) = isEnabled;
  v209 = *(animated + 928);
  if (v209)
  {
    LOBYTE(v209) = [v209 isSelected];
  }

  *(animated + 977) = v209;
  [animated setEnabled:*(animated + 976)];
  [animated setSelected:*(animated + 977)];
  v210 = *(animated + 776);
  v211 = *(animated + 936);
  if (v211)
  {
    v211 = v211[5];
  }

  v212 = v211;
  [v210 setImage:v212];

  v213 = *(animated + 784);
  if (v213)
  {
    [v213 setAttributedText:v162];
  }

  v214 = *(animated + 792);
  if (v214)
  {
    [v214 setAttributedText:v164];
  }

  v215 = *(animated + 808);
  if (v215)
  {
    [v215 setAttributedText:v314];
  }

  if (v319 && (v216 = *(animated + v158[304])) != 0 && *(v216 + 19) == 1)
  {
    v217 = *(animated + 800);
    if (v217 || (v218 = objc_alloc_init(MEMORY[0x1E69DCAE0]), v219 = *(animated + 800), *(animated + 800) = v218, v219, *(animated + 763) = 1, [*(animated + 800) setAlpha:0.0], objc_msgSend(*(animated + 744), "addSubview:", *(animated + 800)), v217 = *(animated + 800), (v216 = *(animated + 936)) != 0))
    {
      v216 = *(v216 + 104);
    }

    v220 = v216;
    [v217 setImage:v220];
  }

  else
  {
    v221 = *(animated + 800);
    if (v221)
    {
      [v221 setImage:0];
    }
  }

  if (!v321 || (v222 = *(animated + v158[304])) == 0 || *(v222 + 25) != 1)
  {
    v232 = *(animated + 816);
    if (!v232)
    {
      goto LABEL_209;
    }

    [v232 removeFromSuperview];
    v233 = *(animated + 816);
    *(animated + 816) = 0;

    v231 = *(animated + 744);
    isUserInteractionEnabled = 0;
    goto LABEL_208;
  }

  v223 = *(animated + 816);
  if (v154)
  {
    v224 = v154[15];
  }

  else
  {
    v224 = 0;
  }

  v225 = v224;
  v226 = [v321 isViewEqualToOther:v223 withAdaptor:v225];

  if ((v226 & 1) == 0)
  {
    [*(animated + 816) removeFromSuperview];
    view2 = [v321 view];
    v228 = *(animated + 816);
    *(animated + 816) = view2;

    *(animated + 1064) = [v321 viewPreferredSizing];
    *(animated + 769) = 1;
    [*(animated + 816) setAlpha:0.0];
    [*(animated + 744) addSubview:*(animated + 816)];
    v229 = *(animated + 744);
    isUserInteractionEnabled = [*(animated + 816) isUserInteractionEnabled];
    v231 = v229;
LABEL_208:
    [v231 setHitTestEnabled:isUserInteractionEnabled];
  }

LABEL_209:
  type3 = [*(animated + 928) type];
  v235 = *(animated + 856);
  v236 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
  if (type3 == 6)
  {
    if (!v235)
    {
      WeakRetained = objc_loadWeakRetained((animated + 1128));
      v238 = objc_opt_respondsToSelector();

      if (v238)
      {
        v239 = objc_loadWeakRetained((animated + 1128));
        paymentOfferSelectorCustomViewProvider = [v239 paymentOfferSelectorCustomViewProvider];

        v241 = [paymentOfferSelectorCustomViewProvider rewardsRedemptionTransactionSourceCollectionForPassTileView:animated];
        [paymentOfferSelectorCustomViewProvider paymentOffersControllerForPassTileView:animated];
        v242 = obja = v160;
        paymentPass = [*(animated + 944) paymentPass];
        v326[0] = MEMORY[0x1E69E9820];
        v326[1] = 3221225472;
        v326[2] = __42__PKPassTileView__updateSubviewsAnimated___block_invoke_3;
        v326[3] = &unk_1E8012720;
        v326[4] = animated;
        v143 = v310;
        v244 = [PKPaymentOfferSelectionView createWithPaymentPass:paymentPass transactionSourceCollection:v241 paymentOffersController:v242 beginSuppressCardEmulation:v326];
        v245 = *(animated + 856);
        *(animated + 856) = v244;

        v236 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
        [*(animated + 744) addSubview:*(animated + 856)];
        [*(animated + 744) setHitTestEnabled:1];

        v160 = obja;
      }
    }
  }

  else if (v235)
  {
    [v235 removeFromSuperview];
    v246 = *(animated + 856);
    *(animated + 856) = 0;

    v236 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
    [*(animated + 744) setHitTestEnabled:0];
  }

  if (v323 && (v247 = *(animated + v236[304])) != 0 && *(v247 + 21) == 1)
  {
    if (!*(animated + 824))
    {
      v248 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v249 = *(animated + 824);
      *(animated + 824) = v248;

      *(animated + 765) = 1;
      [*(animated + 824) setAlpha:0.0];
      [*(animated + 744) addSubview:*(animated + 824)];
    }

    accessoryTypeSpinner = [v323 accessoryTypeSpinner];
    isSpinnerEnabled = [accessoryTypeSpinner isSpinnerEnabled];

    v236 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
    if (isSpinnerEnabled != [*(animated + 824) isAnimating])
    {
      v252 = *(animated + 824);
      if (isSpinnerEnabled)
      {
        [v252 startAnimating];
      }

      else
      {
        [v252 stopAnimating];
      }
    }
  }

  else
  {
    v253 = *(animated + 824);
    if (v253)
    {
      [v253 stopAnimating];
    }

    if (!v323)
    {
      goto LABEL_231;
    }
  }

  v254 = *(animated + v236[304]);
  if (v254 && *(v254 + 22) == 1)
  {
    v311 = v164;
    v255 = v162;
    v256 = v143;
    v257 = v160;
    v258 = *(animated + 832);
    if (!v258)
    {
      v259 = [PKContinuousButton alloc];
      *v327 = 0;
      *&v327[8] = vdupq_n_s64(2uLL);
      *&v327[24] = *&v327[8];
      v260 = [(PKContinuousButton *)v259 initWithConfiguration:v327];
      v261 = *(animated + 832);
      *(animated + 832) = v260;

      [*(animated + 832) setContentEdgeInsets:{12.0, 16.0, 12.0, 16.0}];
      v262 = *(animated + 832);
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [v262 setTintColor:labelColor];

      v264 = *(animated + 832);
      secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [v264 updateTitleColorWithColor:secondarySystemGroupedBackgroundColor];

      *(animated + 766) = 1;
      [*(animated + 832) setAlpha:0.0];
      [*(animated + 744) addSubview:*(animated + 832)];
      v258 = *(animated + 832);
    }

    titleLabel = [v258 titleLabel];
    [titleLabel setFont:*(animated + 1056)];
    accessoryTypeButton = [v323 accessoryTypeButton];
    v268 = *(animated + 832);
    title3 = [accessoryTypeButton title];
    [v268 setTitle:title3 forState:0];

    [*(animated + 832) setShowSpinner:{objc_msgSend(accessoryTypeButton, "isSpinnerEnabled")}];
    v160 = v257;
    v143 = v256;
    v162 = v255;
    v164 = v311;
    v270 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
    goto LABEL_234;
  }

LABEL_231:
  v271 = *(animated + 832);
  if (v271)
  {
    [v271 setTitle:0 forState:0];
    [*(animated + 832) setShowSpinner:0];
  }

  v270 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
  if (!v323)
  {
    goto LABEL_240;
  }

LABEL_234:
  v272 = *(animated + v270[304]);
  if (!v272 || *(v272 + 23) != 1)
  {
LABEL_240:
    v277 = *(animated + 840);
    if (v277)
    {
      [v277 setImage:0];
    }

    goto LABEL_242;
  }

  v273 = *(animated + 840);
  if (v273 || (v274 = objc_alloc_init(MEMORY[0x1E69DCAE0]), v275 = *(animated + 840), *(animated + 840) = v274, v275, *(animated + 767) = 1, [*(animated + 840) setAlpha:0.0], objc_msgSend(*(animated + 744), "addSubview:", *(animated + 840)), v273 = *(animated + 840), (v272 = *(animated + 936)) != 0))
  {
    v272 = *(v272 + 56);
  }

  v276 = v272;
  [v273 setImage:v276];

  v270 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
LABEL_242:
  if (v317 && (v278 = *(animated + v270[304])) != 0 && *(v278 + 24) == 1)
  {
    v279 = *(animated + 848);
    if (v279 || (v280 = objc_alloc_init(MEMORY[0x1E69DCAE0]), v281 = *(animated + 848), *(animated + 848) = v280, v281, *(animated + 768) = 1, [*(animated + 848) setAlpha:0.0], objc_msgSend(*(animated + 744), "addSubview:", *(animated + 848)), v279 = *(animated + 848), (v278 = *(animated + 936)) != 0))
    {
      v278 = *(v278 + 72);
    }

    v283 = v307;
    v282 = v308;
    v284 = v278;
    [v279 setImage:v284];
  }

  else
  {
    v285 = *(animated + 848);
    v283 = v307;
    v282 = v308;
    if (v285)
    {
      [v285 setImage:0];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PKPassTileView__updateSubviewsAnimated___block_invoke_4;
  aBlock[3] = &unk_1E8012748;
  v325 = v143;
  aBlock[4] = animated;
  v286 = _Block_copy(aBlock);
  v287 = v286;
  v288 = *(animated + 936);
  if (v288)
  {
    LOBYTE(v288) = *(v288 + 17);
  }

  (*(v286 + 2))(v286, *(animated + 784), v288 & 1, *(animated + 761));
  v289 = *(animated + 936);
  if (v289)
  {
    LOBYTE(v289) = *(v289 + 18);
  }

  v287[2](v287, *(animated + 792), v289 & 1, *(animated + 762));
  v290 = *(animated + 936);
  if (v290)
  {
    LOBYTE(v290) = *(v290 + 20);
  }

  v287[2](v287, *(animated + 808), v290 & 1, *(animated + 764));
  v291 = *(animated + 936);
  if (v291)
  {
    LOBYTE(v291) = *(v291 + 25);
  }

  v287[2](v287, *(animated + 816), v291 & 1, *(animated + 769));
  [(PKPassTileView *)animated _updateStyleAnimated:v143];
  [(PKPassTileView *)animated _updateBackgroundAnimated:v143];
  [animated setNeedsLayout];
  [animated layoutIfNeeded];
  *(animated + 752) = v329;
  *(animated + 768) = v330;
}

- (void)dealloc
{
  effectiveContentTimeout = self->_effectiveContentTimeout;
  if (effectiveContentTimeout)
  {
    dispatch_source_cancel(effectiveContentTimeout);
  }

  actionStateTimeout = self->_actionStateTimeout;
  if (actionStateTimeout)
  {
    dispatch_source_cancel(actionStateTimeout);
  }

  v5.receiver = self;
  v5.super_class = PKPassTileView;
  [(PKPassTileView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKPassTileView;
  [(PKPassTileView *)&v7 layoutSubviews];
  [(PKPassTileView *)self bounds];
  [(PKPassTileView *)self _layoutWithBounds:v3 applyLayout:v4, v5, v6];
}

- (double)_layoutWithBounds:(double)bounds applyLayout:(double)layout
{
  v298 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0.0;
  }

  _shouldReverseLayoutDirection = [self _shouldReverseLayoutDirection];
  isFullBleed = [*(self + 928) isFullBleed];
  isDynamic = [(PKPassTileView *)self _isDynamicHeight];
  v13 = *(self + 1104);
  if (_shouldReverseLayoutDirection)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0x200000000;
  }

  [*(self + 776) alpha];
  v16 = v15;
  v18 = *(self + 864);
  v17 = *(self + 872);
  v19 = v17 + *(self + 888);
  v259 = a5;
  v20 = a6 - (v18 + *(self + 880));
  v21 = *MEMORY[0x1E695EFF8];
  v22 = *(MEMORY[0x1E695EFF8] + 8);
  v285 = 0;
  v286 = &v285;
  v287 = 0x4010000000;
  v288 = &unk_1BE347799;
  v279 = 0;
  v280 = &v279;
  v281 = 0x4010000000;
  v282 = &unk_1BE347799;
  v283 = 0u;
  v284 = 0u;
  v263 = v22;
  v264 = v21;
  v289 = v21;
  v290 = v22;
  v265 = v20;
  v266 = a5 - v19;
  v291 = a5 - v19;
  v292 = v20;
  if (v13 == 1)
  {
    v23 = 24.0;
  }

  else
  {
    v23 = 28.0;
  }

  if (v13 != 1 && isDynamic)
  {
    v23 = PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC20], 34.0);
  }

  v253 = a6;
  v270 = v17;
  if (v16 <= 0.0)
  {
    v28 = v280;
    v29 = *MEMORY[0x1E695F058];
    v30 = *(MEMORY[0x1E695F058] + 16);
    v280[1].origin = *MEMORY[0x1E695F058];
    v28[3] = v30;
    slice.origin = v29;
    slice.size = v30;
    v31 = 0.0;
    height = v265;
    width = v266;
    x = v264;
    y = v263;
  }

  else
  {
    if (isDynamic)
    {
      v24 = CGRectMinYEdge;
    }

    else
    {
      v24 = v14;
    }

    CGRectDivide(v286[1], v280 + 1, v286 + 1, v23, v24);
    v25 = v280;
    size = v280[1].size;
    slice.origin = v280[1].origin;
    slice.size = size;
    if (isDynamic)
    {
      v27 = *(self + 896);
      if (v13 != 1)
      {
        CGRectDivide(v280[1], &slice, v280 + 1, v23, v14);
        v25 = v280;
      }

      CGRectDivide(v286[1], v25 + 1, v286 + 1, *(self + 896), CGRectMinYEdge);
      v31 = v23 + v27;
    }

    else
    {
      v31 = 0.0;
      CGRectDivide(v286[1], v280 + 1, v286 + 1, *(self + 904), v14);
    }

    x = v286[1].origin.x;
    y = v286[1].origin.y;
    width = v286[1].size.width;
    height = v286[1].size.height;
  }

  r1 = v16;
  v34 = *(self + 984) == width && *(self + 992) == height;
  selfCopy = self;
  if (v34)
  {
    [*(self + 784) frame];
    v252 = v37;
    v261 = v38;
    [*(self + 792) frame];
    v239 = v39;
    v241 = v40;
    [*(self + 800) frame];
    v238 = v41;
    v240 = v42;
    [*(self + 808) frame];
    v251 = v43;
    v45 = v44;
    [*(self + 816) frame];
    v249 = v46;
    v260 = v47;
    [*(self + 824) frame];
    [*(self + 832) frame];
    [*(self + 840) frame];
    [*(self + 848) frame];
    [*(self + 856) frame];
    v250 = v48;
  }

  else
  {
    *(self + 984) = width;
    *(self + 992) = height;
    text = [*(self + 784) text];
    if (text)
    {
      if (isDynamic)
      {
        [*(self + 784) pkui_sizeThatFits:1 forceWordWrap:{*(self + 984), *(self + 992)}];
        v261 = v36;
      }

      else
      {
        [*(self + 1032) _bodyLeading];
        v261 = v49;
      }

      v252 = width;
    }

    else
    {
      v252 = *MEMORY[0x1E695F060];
      v261 = *(MEMORY[0x1E695F060] + 8);
    }

    [*(self + 1040) _bodyLeading];
    v241 = v50;
    image = [*(self + 800) image];
    v52 = image;
    if (isFullBleed)
    {
      boundsCopy = bounds;
    }

    else
    {
      boundsCopy = x;
    }

    if (isFullBleed)
    {
      layoutCopy = layout;
    }

    else
    {
      layoutCopy = y;
    }

    if (isFullBleed)
    {
      v55 = v259;
    }

    else
    {
      v55 = width;
    }

    if (isFullBleed)
    {
      v56 = v253;
    }

    else
    {
      v56 = height;
    }

    if (image)
    {
      v296 = 0;
      v294 = 0u;
      v295 = 0u;
      v293 = 0u;
      [image pkui_alignmentSizeThatFits:v55 maximumScale:{v56, 1.0}];
      v57.n128_f64[0] = boundsCopy + (v55 - *&v293) * 0.5 + *(&v294 + 1);
      v58.n128_f64[0] = *&v294 + layoutCopy + (v56 - *(&v293 + 1)) * 0.5;
      v59.n128_f64[0] = *&v293 - (*(&v294 + 1) + *(&v295 + 1));
      v60.n128_f64[0] = *&v294 + *&v295;
      v61.n128_f64[0] = *(&v293 + 1) - (*&v294 + *&v295);
      PKRectRoundToPixel(v57, v58, v59, v61, v60);
      v238 = v62;
      v240 = v63;
    }

    else
    {
      v238 = *(MEMORY[0x1E695F058] + 16);
      v240 = *(MEMORY[0x1E695F058] + 24);
    }

    text2 = [*(self + 808) text];
    if (text2)
    {
      [*(self + 1048) _bodyLeading];
      v45 = v65;
      v251 = width;
    }

    else
    {
      v45 = *(MEMORY[0x1E695F060] + 8);
      v251 = *MEMORY[0x1E695F060];
    }

    v68 = *(self + 1064);
    if (v68)
    {
      v260 = 0.0;
      v249 = 0.0;
      if (v68 == 1)
      {
        [*(self + 816) sizeThatFits:{width, 1.79769313e308}];
        v249 = v69;
        v260 = v70;
      }
    }

    else
    {
      LODWORD(v66) = 1148846080;
      LODWORD(v67) = 1112014848;
      [*(self + 816) systemLayoutSizeFittingSize:width withHorizontalFittingPriority:*(MEMORY[0x1E69DE098] + 8) verticalFittingPriority:{v66, v67}];
      v249 = v71;
      v260 = v72;
    }

    [*(self + 824) intrinsicContentSize];
    [*(self + 832) sizeThatFits:{width, height}];
    image2 = [*(self + 840) image];
    v74 = image2;
    if (image2)
    {
      v296 = 0;
      v294 = 0u;
      v295 = 0u;
      v293 = 0u;
      [image2 pkui_alignmentSizeThatFits:width maximumScale:{height, 1.0}];
      v75.n128_f64[0] = x + (width - *&v293) * 0.5 + *(&v294 + 1);
      v76.n128_f64[0] = *&v294 + y + (height - *(&v293 + 1)) * 0.5;
      v77.n128_f64[0] = *&v293 - (*(&v294 + 1) + *(&v295 + 1));
      v78.n128_f64[0] = *&v294 + *&v295;
      v79.n128_f64[0] = *(&v293 + 1) - (*&v294 + *&v295);
      PKRectRoundToPixel(v75, v76, v77, v79, v78);
    }

    image3 = [*(self + 848) image];
    v81 = image3;
    if (image3)
    {
      v296 = 0;
      v294 = 0u;
      v295 = 0u;
      v293 = 0u;
      [image3 pkui_alignmentSizeThatFits:width maximumScale:{height, 1.0}];
      v82.n128_f64[0] = x + (width - *&v293) * 0.5 + *(&v294 + 1);
      v83.n128_f64[0] = *&v294 + y + (height - *(&v293 + 1)) * 0.5;
      v84.n128_f64[0] = *&v293 - (*(&v294 + 1) + *(&v295 + 1));
      v85.n128_f64[0] = *&v294 + *&v295;
      v86.n128_f64[0] = *(&v293 + 1) - (*&v294 + *&v295);
      PKRectRoundToPixel(v82, v83, v84, v86, v85);
    }

    [*(self + 856) sizeThatFits:{width, 1.79769313e308}];
    v250 = v87;
    v239 = width;
  }

  image4 = [*(self + 800) image];

  text3 = [*(self + 792) text];

  v91 = v260;
  if (!*(self + 816))
  {
    v91 = v250;
    if (!*(self + 856))
    {
      v91 = 0.0;
      if (image4 | text3)
      {
        v92 = 0.0;
        if (text3)
        {
          v92 = v241;
        }

        if (image4)
        {
          v91 = v240;
        }

        else
        {
          v91 = v92;
        }

        v90 = v261;
        if (v261 > 0.0)
        {
          v90 = *(self + 912);
          v91 = v91 + v90;
        }
      }
    }
  }

  text4 = [*(self + 808) text];
  if (text4)
  {
    v94 = v45 + *(self + 912);
  }

  else
  {
    v94 = 0.0;
  }

  v96.n128_f64[0] = v31 + v261 + v91 + v94;
  if ((isFullBleed & 1) == 0)
  {
    v95.n128_u64[0] = *(self + 880);
    v96.n128_f64[0] = v96.n128_f64[0] + *(self + 864) + v95.n128_f64[0];
  }

  PKFloatCeilToPixel(v96, v95);
  if (a2)
  {
    [*(self + 744) setFrame:{bounds + v270, layout + v18, v266, v265}];
    image5 = [*(self + 776) image];
    v98 = slice.origin.x;
    v99 = slice.origin.y;
    v100 = slice.size.width;
    v101 = slice.size.height;
    v102 = image5;
    if (image5)
    {
      v296 = 0;
      v294 = 0u;
      v295 = 0u;
      v293 = 0u;
      [image5 pkui_alignmentSizeThatFits:slice.size.width maximumScale:{slice.size.height, 1.0}];
      v103.n128_f64[0] = v98 + (v100 - *&v293) * 0.5 + *(&v294 + 1);
      v104.n128_f64[0] = *&v294 + v99 + (v101 - *(&v293 + 1)) * 0.5;
      v105.n128_f64[0] = *&v293 - (*(&v294 + 1) + *(&v295 + 1));
      v106.n128_f64[0] = *&v294 + *&v295;
      v107.n128_f64[0] = *(&v293 + 1) - (*&v294 + *&v295);
      PKRectRoundToPixel(v103, v104, v105, v107, v106);
      PKSizeAlignedInRect();
      v98 = v108;
      v99 = v109;
      v100 = v110;
      v101 = v111;
    }

    v237 = v45;
    if (r1 > 0.0)
    {
      v112 = *(selfCopy + 1072);
    }

    else
    {
      v112 = 0;
    }

    [*(selfCopy + 776) pkui_setFrame:v112 animated:{v98, v99, v100, v101}];
    [*(selfCopy + 824) sizeToFit];
    PKFloatRoundToPixel();
    v114 = *MEMORY[0x1E695F050];
    v113 = *(MEMORY[0x1E695F050] + 8);
    v115 = *(MEMORY[0x1E695F050] + 24);
    r1a = *(MEMORY[0x1E695F050] + 16);
    v116 = v102;
    if (*(selfCopy + 848))
    {
      v117 = *(MEMORY[0x1E695F050] + 8);
      PKSizeAlignedInRect();
      v242 = v118;
      r2 = v119;
      v121 = v120;
      v123 = v122;
      [*(selfCopy + 848) alpha];
      v125 = v124;
      if (v124 > 0.0)
      {
        v126 = *(selfCopy + 1072);
      }

      else
      {
        v126 = 0;
      }

      [*(selfCopy + 848) pkui_setFrame:v126 animated:{v242, v121, v123, r2}];
      if (v125 <= 0.0)
      {
        v113 = v117;
      }

      else
      {
        v299.origin.x = v114;
        v299.origin.y = v117;
        v299.size.width = r1a;
        v299.size.height = v115;
        v310.origin.x = v242;
        v310.origin.y = v121;
        v310.size.width = v123;
        v310.size.height = r2;
        v300 = CGRectUnion(v299, v310);
        r1a = v300.size.width;
        v114 = v300.origin.x;
        v113 = v300.origin.y;
        v115 = v300.size.height;
      }
    }

    if (*(selfCopy + 840))
    {
      v127 = v113;
      PKSizeAlignedInRect();
      v243 = v129;
      v244 = v128;
      v131 = v130;
      v133 = v132;
      [*(selfCopy + 840) alpha];
      v135 = v134;
      if (v134 > 0.0)
      {
        v136 = *(selfCopy + 1072);
      }

      else
      {
        v136 = 0;
      }

      [*(selfCopy + 840) pkui_setFrame:v136 animated:{v244, v131, v133, v243}];
      if (v135 <= 0.0)
      {
        v113 = v127;
      }

      else
      {
        v301.origin.x = v114;
        v301.origin.y = v127;
        v301.size.width = r1a;
        v301.size.height = v115;
        v311.size.height = v243;
        v311.origin.x = v244;
        v311.origin.y = v131;
        v311.size.width = v133;
        v302 = CGRectUnion(v301, v311);
        r1a = v302.size.width;
        v114 = v302.origin.x;
        v113 = v302.origin.y;
        v115 = v302.size.height;
      }
    }

    if (*(selfCopy + 824))
    {
      if (*(selfCopy + 920))
      {
        v303.origin.x = x;
        v303.origin.y = y;
        v303.size.width = width;
        v303.size.height = height;
        CGRectInset(v303, -4.0, -2.0);
      }

      PKSizeAlignedInRect();
      v245 = v138;
      v247 = v137;
      v140 = v139;
      v142 = v141;
      v143 = v113;
      [*(selfCopy + 824) alpha];
      v145 = v144;
      if (v144 > 0.0)
      {
        v146 = *(selfCopy + 1072);
      }

      else
      {
        v146 = 0;
      }

      [*(selfCopy + 824) pkui_setFrame:v146 animated:{v247, v140, v142, v245}];
      if (v145 <= 0.0)
      {
        v113 = v143;
      }

      else
      {
        v304.origin.x = v114;
        v304.origin.y = v143;
        v304.size.width = r1a;
        v304.size.height = v115;
        v312.size.height = v245;
        v312.origin.x = v247;
        v312.origin.y = v140;
        v312.size.width = v142;
        v305 = CGRectUnion(v304, v312);
        r1a = v305.size.width;
        v114 = v305.origin.x;
        v113 = v305.origin.y;
        v115 = v305.size.height;
      }
    }

    if (*(selfCopy + 832))
    {
      v147 = v113;
      PKSizeAlignedInRect();
      v246 = v149;
      v248 = v148;
      v151 = v150;
      v153 = v152;
      [*(selfCopy + 832) alpha];
      v155 = v154;
      if (v154 > 0.0)
      {
        v156 = *(selfCopy + 1072);
      }

      else
      {
        v156 = 0;
      }

      [*(selfCopy + 832) pkui_setFrame:v156 animated:{v248, v151, v153, v246}];
      if (v155 <= 0.0)
      {
        v113 = v147;
      }

      else
      {
        v306.origin.x = v114;
        v306.origin.y = v147;
        v306.size.width = r1a;
        v306.size.height = v115;
        v313.size.height = v246;
        v313.origin.x = v248;
        v313.origin.y = v151;
        v313.size.width = v153;
        v307 = CGRectUnion(v306, v313);
        r1a = v307.size.width;
        v114 = v307.origin.x;
        v113 = v307.origin.y;
        v115 = v307.size.height;
      }
    }

    v308.origin.x = v114;
    v308.origin.y = v113;
    v308.size.width = r1a;
    v308.size.height = v115;
    IsNull = CGRectIsNull(v308);
    v158 = v114 + -2.0;
    p_x = &v286->origin.x;
    v286[1].origin.x = x;
    p_x[5] = y;
    v160 = r1a + 2.0;
    if (IsNull)
    {
      v160 = r1a;
    }

    p_x[6] = width;
    p_x[7] = height;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__PKPassTileView__layoutWithBounds_applyLayout___block_invoke;
    aBlock[3] = &unk_1E80126F8;
    aBlock[6] = &v279;
    if ((IsNull | _shouldReverseLayoutDirection))
    {
      v158 = v114;
    }

    v277 = !IsNull;
    *&aBlock[7] = v158;
    *&aBlock[8] = v113;
    *&aBlock[9] = v160;
    *&aBlock[10] = v115;
    aBlock[11] = v14;
    aBlock[4] = selfCopy;
    aBlock[5] = &v285;
    r1b = _Block_copy(aBlock);
    if (v13 == 1)
    {
      v161 = 0x100000001;
    }

    else
    {
      v161 = v14 & 2 | 0x100000000;
    }

    v162 = v261;
    v262 = v161;
    r1b[2](v252, v162);
    if (*(selfCopy + 816))
    {
      if (isFullBleed)
      {
        [*(selfCopy + 816) alpha];
        v166 = v165;
        v167 = *(selfCopy + 744);
        superview = [v167 superview];
        [v167 convertRect:superview fromView:{bounds, layout, v259, v260}];
        v170 = v169;
        v172 = v171;
        v174 = v173;
        v176 = v175;

        [*(selfCopy + 816) pkui_setFrame:*(selfCopy + 1072) & (v166 > 0.0) animated:{v170, v172, v174, v176}];
      }

      else
      {
        r1b[2](v249, v260);
      }

      goto LABEL_130;
    }

    if (*(selfCopy + 856))
    {
      v177 = *(selfCopy + 744);
      superview2 = [v177 superview];
      [v177 convertRect:superview2 fromView:{bounds, layout, v259, v250}];
      v180 = v179;
      v182 = v181;
      v184 = v183;
      v186 = v185;

      [*(selfCopy + 856) pkui_setFrame:*(selfCopy + 1072) animated:{v180, v182, v184, v186}];
LABEL_130:
      (r1b[2])(r1b, *(selfCopy + 808), v262, v251, v237);
      v274 = 0u;
      v275 = 0u;
      v272 = 0u;
      v273 = 0u;
      v201 = *(selfCopy + 1000);
      v202 = [v201 countByEnumeratingWithState:&v272 objects:v297 count:16];
      if (!v202)
      {
        goto LABEL_158;
      }

      v203 = *v273;
      v204 = MEMORY[0x1E69DDCE0];
      rect = width;
      while (1)
      {
        v205 = 0;
        do
        {
          if (*v273 != v203)
          {
            objc_enumerationMutation(v201);
          }

          v206 = height;
          v207 = *(*(&v272 + 1) + 8 * v205);
          if (v207)
          {
            v208 = *(v207 + 112);
            v209 = v204 + 1;
            v210 = v204 + 2;
            v211 = v204 + 3;
            v212 = (v207 + 24);
            v213 = (v207 + 32);
            v214 = (v207 + 40);
            v215 = (v207 + 48);
            v217 = v207 + 8;
            v207 = *(v207 + 8);
            v216 = *(v217 + 8);
            if (v216)
            {
              v212 = v204;
            }

            else
            {
              v211 = v215;
              v210 = v214;
              v209 = v213;
            }

            v218 = *v212;
            v219 = *v209;
            v220 = *v210;
            v221 = *v211;
          }

          else
          {
            v216 = 0;
            v208 = 0;
            v221 = 0.0;
            v220 = 0.0;
            v219 = 0.0;
            v218 = 0.0;
          }

          v222 = v207;
          [v222 frame];
          v224 = v219 + v223;
          v226 = v218 + v225;
          v228 = v227 - (v221 + v219);
          v230 = v229 - (v220 + v218);
          if (v216 <= 2)
          {
            if (v216)
            {
              if (v216 == 1)
              {
                PKSizeAlignedInRect();
                goto LABEL_154;
              }

              if (v216 != 2)
              {
                goto LABEL_154;
              }

              if (v208)
              {
                v309.origin.x = x;
                v309.origin.y = y;
                v309.size.width = rect;
                v309.size.height = v206;
                CGRectInset(v309, -4.0, -2.0);
              }
            }

LABEL_153:
            PKSizeAlignedInRect();
            v226 = v231;
            v228 = v232;
            v230 = v233;
            goto LABEL_154;
          }

          if (v216 == 3 || v216 == 4 || v216 == 5)
          {
            goto LABEL_153;
          }

LABEL_154:
          [v222 pkui_setFrame:*(selfCopy + 1072) animated:{v224 - v219, v226 - v218, v228 - (-v221 - v219), v230 - (-v220 - v218)}];

          height = v206;
          ++v205;
        }

        while (v202 != v205);
        v116 = v102;
        v234 = [v201 countByEnumeratingWithState:&v272 objects:v297 count:16];
        v202 = v234;
        if (!v234)
        {
LABEL_158:

          goto LABEL_159;
        }
      }
    }

    if (image4)
    {
      v187 = *(selfCopy + 800);
      if (isFullBleed)
      {
        [*(selfCopy + 800) alpha];
        v189 = v188;
        v190 = *(selfCopy + 744);
        superview3 = [v190 superview];
        [v190 convertRect:superview3 fromView:{bounds, layout, v259, v253}];
        v193 = v192;
        v195 = v194;
        v197 = v196;
        v199 = v198;

        [*(selfCopy + 800) pkui_setFrame:*(selfCopy + 1072) & (v189 > 0.0) animated:{v193, v195, v197, v199}];
        goto LABEL_130;
      }

      v200 = 0x100000001;
      v164.n128_f64[0] = v240;
      v163.n128_u64[0] = v238;
    }

    else
    {
      v187 = *(selfCopy + 792);
      v163.n128_f64[0] = v239;
      v200 = v262;
      v164.n128_f64[0] = v241;
    }

    (r1b[2])(r1b, v187, v200, v163, v164);
    goto LABEL_130;
  }

LABEL_159:
  _Block_object_dispose(&v279, 8);
  _Block_object_dispose(&v285, 8);
  return v259;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(PKPassTileView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8] applyLayout:*(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)_isDynamicHeight
{
  stateTypeDefaultV2 = [*(self + 928) stateTypeDefaultV2];
  v2 = stateTypeDefaultV2;
  if (stateTypeDefaultV2)
  {
    v3 = ([stateTypeDefaultV2 preferredStyle] & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __48__PKPassTileView__layoutWithBounds_applyLayout___block_invoke(uint64_t a1, void *a2, double a3, CGFloat a4)
{
  v7 = a2;
  v8 = *(*(a1 + 40) + 8);
  v33 = *(v8 + 32);
  v34 = *(v8 + 48);
  v32 = v7;
  [v7 alpha];
  v10 = v9;
  v11 = *(*(a1 + 40) + 8);
  v36.origin.x = v11[1].origin.x;
  v36.origin.y = v11[1].origin.y;
  ++v11;
  v36.size.width = v11->size.width;
  v36.size.height = v11->size.height;
  CGRectDivide(v36, (*(*(a1 + 48) + 8) + 32), v11, a4, CGRectMinYEdge);
  if (*(a1 + 96))
  {
    v30 = a3;
    v31 = v10;
    v12 = *(a1 + 92);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = *(a1 + 80);
    v37 = CGRectStandardize(*(*(*(a1 + 48) + 8) + 32));
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    v39.origin.x = v13;
    v39.origin.y = v14;
    v39.size.width = v15;
    v39.size.height = v16;
    v38 = CGRectIntersection(v37, v39);
    v21 = v38.origin.x;
    v22 = v38.origin.y;
    v23 = v38.size.width;
    v24 = v38.size.height;
    if (CGRectIsNull(v38))
    {
LABEL_3:
      v10 = v31;
      v25 = *(*(a1 + 48) + 8);
      v25[4] = x;
      v25[5] = y;
      v25[6] = width;
      v25[7] = height;
      goto LABEL_4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        width = fmax(v21 - x, 0.0);
        goto LABEL_3;
      }

      if (v12 == 3)
      {
        height = fmax(v22 - y, 0.0);
        goto LABEL_3;
      }
    }

    else
    {
      if (!v12)
      {
        v29 = x + width;
        x = fmin(v21 + v23, x + width);
        width = v29 - x;
        goto LABEL_3;
      }

      if (v12 == 1)
      {
        v28 = y + height;
        y = fmin(v22 + v24, y + height);
        height = v28 - y;
        goto LABEL_3;
      }
    }

    __break(1u);
    return;
  }

LABEL_4:
  PKSizeAlignedInRect();
  if (v10 > 0.0)
  {
    v26 = *(*(a1 + 32) + 1072);
  }

  else
  {
    v26 = 0;
  }

  [v32 pkui_setFrame:v26 animated:*&v30];
  v27 = *(*(a1 + 40) + 8);
  if (v10 <= 0.0)
  {
    *(v27 + 32) = v33;
    *(v27 + 48) = v34;
  }

  else
  {
    CGRectDivide(*(v27 + 32), (*(*(a1 + 48) + 8) + 32), (v27 + 32), *(*(a1 + 32) + 912), CGRectMinYEdge);
  }
}

- (void)layoutIfNeededAnimated:(BOOL)animated
{
  self->_animated = animated;
  [(PKPassTileView *)self layoutIfNeeded];
  self->_animated = 0;
}

- (void)prepareForReuse
{
  v25 = *MEMORY[0x1E69E9840];
  actionStateTimeout = self->_actionStateTimeout;
  if (actionStateTimeout)
  {
    dispatch_source_cancel(actionStateTimeout);
    v4 = self->_actionStateTimeout;
    self->_actionStateTimeout = 0;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __33__PKPassTileView_prepareForReuse__block_invoke;
  v23[3] = &unk_1E8010970;
  v23[4] = self;
  [(PKPassTileView *)self performBatchUpdates:v23 animated:0];
  layer = [(PKPassTileView *)self layer];
  [layer removeAllAnimations];

  layer2 = [(UIImageView *)self->_icon layer];
  [layer2 removeAllAnimations];

  layer3 = [(UILabel *)self->_title layer];
  [layer3 removeAllAnimations];

  layer4 = [(UILabel *)self->_body layer];
  [layer4 removeAllAnimations];

  layer5 = [(UIImageView *)self->_bodyImage layer];
  [layer5 removeAllAnimations];

  layer6 = [(UILabel *)self->_footer layer];
  [layer6 removeAllAnimations];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_snapshots;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        if (v16)
        {
          v17 = *(v16 + 8);
        }

        else
        {
          v17 = 0;
        }

        [v17 removeFromSuperview];
        ++v15;
      }

      while (v13 != v15);
      v18 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      v13 = v18;
    }

    while (v18);
  }

  [(NSMutableArray *)self->_snapshots removeAllObjects];
}

uint64_t __33__PKPassTileView_prepareForReuse__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContent:0];
  [*(a1 + 32) setInActionState:0];
  v2 = *(a1 + 32);

  return [v2 setCompact:0];
}

- (void)beginActionStateTimeout:(int64_t)timeout
{
  [(PKPassTileView *)self setInActionState:1 animated:1];
  actionStateTimeout = self->_actionStateTimeout;
  if (actionStateTimeout)
  {
    dispatch_source_cancel(actionStateTimeout);
    v6 = self->_actionStateTimeout;
    self->_actionStateTimeout = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v8 = self->_actionStateTimeout;
  self->_actionStateTimeout = v7;

  v9 = self->_actionStateTimeout;
  if (timeout == 1)
  {
    v10 = 10000000000;
  }

  else
  {
    v10 = 1250000000;
  }

  v11 = dispatch_time(0, v10);
  dispatch_source_set_timer(v9, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  objc_initWeak(&location, self);
  v12 = self->_actionStateTimeout;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__PKPassTileView_beginActionStateTimeout___block_invoke;
  v13[3] = &unk_1E8010998;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(v12, v13);
  dispatch_resume(self->_actionStateTimeout);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __42__PKPassTileView_beginActionStateTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_source_cancel(WeakRetained[135]);
    v2 = v3[135];
    v3[135] = 0;

    [(dispatch_source_t *)v3 setInActionState:[v3[137] isInProgress] animated:1];
    WeakRetained = v3;
  }
}

- (void)performBatchUpdates:(id)updates animated:(BOOL)animated
{
  animatedCopy = animated;
  updatesCopy = updates;
  v7 = updatesCopy;
  if (updatesCopy)
  {
    v10 = updatesCopy;
    if (self->_deferringUpdate)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileView recursive batch updates are not supported."];
    }

    if (animatedCopy)
    {
      [(PKPassTileView *)self layoutIfNeeded];
    }

    self->_deferringUpdate = 1;
    v10[2]();
    self->_deferringUpdate = 0;
    deferredSubviewUpdate = self->_deferredSubviewUpdate;
    self->_deferredSubviewUpdate = 0;
    v9 = [(PKPassTileView *)self _updateContentStateAnimated:animatedCopy];
    v7 = v10;
    if ((v9 & 1) == 0)
    {
      if (deferredSubviewUpdate)
      {
        [(PKPassTileView *)self _updateSubviewsAnimated:animatedCopy];
      }

      else
      {
        [(PKPassTileView *)self layoutIfNeededAnimated:animatedCopy];
      }

      v7 = v10;
    }
  }
}

- (uint64_t)_updateContentStateAnimated:(uint64_t)animated
{
  if (animated && (*(animated + 1073) & 1) == 0)
  {
    v5 = *(animated + 1088) ^ 1;
    state = [*(animated + 1096) state];
    v7 = state;
    if (*(animated + 1088) == 1)
    {
      actionState = [state actionState];
      v9 = actionState;
      if (actionState)
      {
        v10 = actionState;

        v7 = v10;
      }
    }

    [animated setUserInteractionEnabled:v5 & 1];
    v11 = *(animated + 952);
    v12 = *(animated + 960);
    v13 = *(animated + 928);
    v14 = v7;
    v15 = v11;
    v16 = v15;
    if (v13 == v14)
    {
      if ([v15 hash] == v12)
      {

LABEL_11:
        v3 = 0;
LABEL_18:

        return v3;
      }

      stateTypeDefaultV2 = [v13 stateTypeDefaultV2];
      title = [stateTypeDefaultV2 title];
      valueTypeForeignReference = [title valueTypeForeignReference];
      foreignReferenceType = [valueTypeForeignReference foreignReferenceType];

      if (!foreignReferenceType)
      {
        v27 = title;
        body = [stateTypeDefaultV2 body];
        valueTypeForeignReference2 = [body valueTypeForeignReference];
        foreignReferenceType2 = [valueTypeForeignReference2 foreignReferenceType];

        if (!foreignReferenceType2)
        {
          footer = [stateTypeDefaultV2 footer];
          valueTypeForeignReference3 = [footer valueTypeForeignReference];
          foreignReferenceType3 = [valueTypeForeignReference3 foreignReferenceType];

          if (!foreignReferenceType3)
          {
            goto LABEL_11;
          }

LABEL_17:
          *(animated + 960) = [*(animated + 952) hash];
          objc_storeStrong((animated + 928), v7);
          [(PKPassTileView *)animated _updateSubviewsAnimated:a2];
          v3 = 1;
          goto LABEL_18;
        }

        title = v27;
      }
    }

    goto LABEL_17;
  }

  return 0;
}

void __42__PKPassTileView__updateSubviewsAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_source_cancel(WeakRetained[121]);
    v2 = v3[121];
    v3[121] = 0;

    [(PKPassTileView *)v3 _updateSubviewsAnimated:?];
    WeakRetained = v3;
  }
}

- (double)_prepareViewForReuse:(void *)reuse type:(__int128 *)type state:
{
  v7 = a2;
  superview = [v7 superview];
  if (superview)
  {
    v9 = [v7 snapshotViewAfterScreenUpdates:0];
    if (v9)
    {
      [v7 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      layer = [v7 layer];
      presentationLayer = [layer presentationLayer];
      v20 = presentationLayer;
      if (presentationLayer)
      {
        [presentationLayer anchorPoint];
        v22 = v21;
        v24 = v23;
        [v20 position];
        v26 = v25;
        v28 = v27;
        [v20 bounds];
        v15 = v29;
        v17 = v30;
        v11 = v26 - v22 * v29;
        v13 = v28 - v24 * v30;
      }

      [v9 setFrame:{v11, v13, v15, v17}];
      [superview addSubview:v9];
      layer2 = [v9 layer];
      [layer2 setAllowsGroupOpacity:{objc_msgSend(layer, "allowsGroupOpacity")}];
      compositingFilter = [layer compositingFilter];
      [layer2 setCompositingFilter:compositingFilter];

      v33 = [PKPassTileView_SubviewSnapshot alloc];
      [v7 alignmentRectInsets];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = type[1];
      v63 = *type;
      v64 = v42;
      v43 = type[3];
      v65 = type[2];
      v66 = v43;
      v44 = v9;
      if (v33)
      {
        v67.receiver = v33;
        v67.super_class = PKPassTileView_SubviewSnapshot;
        v45 = objc_msgSendSuper2(&v67, sel_init);
        v46 = v45;
        if (v45)
        {
          objc_storeStrong(v45 + 1, v9);
          v46[3] = v35;
          v46[4] = v37;
          v46[5] = v39;
          v46[6] = v41;
          v46[2] = reuse;
          v47 = v64;
          *(v46 + 7) = v63;
          *(v46 + 9) = v47;
          v48 = v66;
          *(v46 + 11) = v65;
          *(v46 + 13) = v48;
        }

        v49 = v46;
      }

      else
      {
        v49 = 0;
      }

      v50 = *(self + 1000);
      [v50 addObject:v49];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __50__PKPassTileView__prepareViewForReuse_type_state___block_invoke;
      v59[3] = &unk_1E8012798;
      v60 = v44;
      v61 = v50;
      v62 = v49;
      v51 = v49;
      v52 = v50;
      *&v63 = 0;
      _PKViewSetAlphaAnimated(v60, v59, &v63, 0.0, 0.0);
      v53 = *&v63;
    }

    else
    {
      v53 = 0.0;
    }
  }

  else
  {
    v53 = 0.0;
  }

  v54 = MEMORY[0x1E69DD250];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __50__PKPassTileView__prepareViewForReuse_type_state___block_invoke_2;
  v57[3] = &unk_1E8010970;
  v55 = v7;
  v58 = v55;
  [v54 performWithoutAnimation:v57];

  return v53;
}

id __42__PKPassTileView__updateSubviewsAnimated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1120));
  v3 = [WeakRetained passTileViewRequestsBeginSuppressingCardEmulation:*(a1 + 32)];

  return v3;
}

void __42__PKPassTileView__updateSubviewsAnimated___block_invoke_4(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v6 = a3;
  if (*(a1 + 40) == 1)
  {
    v7 = 0.0;
    if (a3)
    {
      if (a4)
      {
        v7 = *(*(a1 + 32) + 752);
      }
    }

    v8[1] = v4;
    v8[2] = v5;
    _PKViewSetAlphaAnimated(a2, 0, v8, v6, v7);
  }

  else
  {

    [a2 pkui_setAlpha:0 animated:v6];
  }
}

- (void)_updateStyleAnimated:(uint64_t)animated
{
  if (animated && (*(animated + 1073) & 1) == 0)
  {
    if (*(animated + 976) == 1)
    {
      v4 = *(animated + 979);
      if (*(animated + 977) == 1 || (v4 = 0, !*(animated + 979)))
      {
        v5 = 0;
        v6 = 1.0;
      }

      else
      {
        v5 = 1;
        v6 = 0.6;
      }
    }

    else
    {
      v4 = 0;
      v5 = 2;
      v6 = 0.3;
    }

    if ([animated overrideUserInterfaceStyle] != v4)
    {
      [animated setOverrideUserInterfaceStyle:v4];
    }

    if (*(animated + 978) == 1)
    {
      v7 = *(animated + 980);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(animated + 1104);
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    if (v5 == 2)
    {
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];

      quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    }

    else
    {
      if (v5 != 1)
      {
        if (v8 == 1)
        {
          if (v7)
          {
            [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] linkColor];
          }
          v13 = ;

          labelColor = v13;
        }

        secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
LABEL_25:

        v14 = *(animated + 936);
        if (v14)
        {
          v14 = v14[4];
        }

        v15 = v14;
        v16 = v15;
        v91[0] = 0;
        if (v15 && v8 != 1)
        {
          v17 = PKPassTileViewTileImageTintColor(v15, v91);
          v18 = v6;
          if (v17)
          {
LABEL_32:
            v19 = *(animated + 936);
            v72 = v16;
            if (v19 && (v20 = *(v19 + 96), v91[0] = 0, v20))
            {
              v71 = v20;
              v21 = PKPassTileViewTileImageTintColor(v20, v91);
              if (v21)
              {
                v22 = v21;
LABEL_40:
                v23 = v6;
LABEL_41:
                v24 = *(animated + 936);
                if (v24)
                {
                  v24 = v24[8];
                }

                v25 = v24;
                accessoryTypeImage = [v25 accessoryTypeImage];
                image = [accessoryTypeImage image];

                v91[0] = 0;
                if (image)
                {
                  v28 = PKPassTileViewTileImageTintColor(image, v91);
                  v29 = v6;
                  if (v28)
                  {
LABEL_47:
                    v30 = *(animated + 936);
                    v63 = v28;
                    if (v30)
                    {
                      v30 = v30[6];
                    }

                    v31 = v30;
                    accessoryTypeImage2 = [v31 accessoryTypeImage];
                    image2 = [accessoryTypeImage2 image];

                    v91[0] = 0;
                    if (!image2)
                    {
                      goto LABEL_52;
                    }

                    v34 = PKPassTileViewTileImageTintColor(image2, v91);
                    v35 = v6;
                    if (v34)
                    {
                      goto LABEL_53;
                    }

                    if ((v91[0] & 1) == 0)
                    {
                      v34 = 0;
                      v35 = v6;
                    }

                    else
                    {
LABEL_52:
                      v34 = labelColor;
                      v35 = 1.0;
                    }

LABEL_53:
                    v59 = v34;
                    v68 = image2;
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 3221225472;
                    aBlock[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke;
                    aBlock[3] = &unk_1E8012770;
                    v90 = a2;
                    aBlock[4] = animated;
                    v36 = _Block_copy(aBlock);
                    v37 = v36;
                    v38 = *(animated + 936);
                    if (v38)
                    {
                      LOBYTE(v38) = *(v38 + 16);
                    }

                    (*(v36 + 2))(v36, *(animated + 776), v38 & 1, *(animated + 760), v18);
                    v39 = *(animated + 936);
                    if (v39)
                    {
                      LOBYTE(v39) = *(v39 + 19);
                    }

                    v37[2](v37, *(animated + 800), v39 & 1, *(animated + 763), v23);
                    v40 = *(animated + 936);
                    if (v40)
                    {
                      LOBYTE(v40) = *(v40 + 21);
                    }

                    v37[2](v37, *(animated + 824), v40 & 1, *(animated + 765), v6);
                    v41 = *(animated + 936);
                    if (v41)
                    {
                      LOBYTE(v41) = *(v41 + 22);
                    }

                    v37[2](v37, *(animated + 832), v41 & 1, *(animated + 766), v6);
                    v42 = *(animated + 936);
                    if (v42)
                    {
                      LOBYTE(v42) = *(v42 + 25);
                    }

                    v37[2](v37, *(animated + 816), v42 & 1, *(animated + 769), v6);
                    v43 = *(animated + 936);
                    if (v43)
                    {
                      LOBYTE(v43) = *(v43 + 23);
                    }

                    v37[2](v37, *(animated + 840), v43 & 1, *(animated + 767), v35);
                    v44 = *(animated + 936);
                    v70 = a2;
                    v69 = image;
                    if (v44)
                    {
                      LOBYTE(v44) = *(v44 + 24);
                    }

                    v37[2](v37, *(animated + 848), v44 & 1, *(animated + 768), v29);
                    v87[0] = MEMORY[0x1E69E9820];
                    v87[1] = 3221225472;
                    v87[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_2;
                    v87[3] = &unk_1E8010A10;
                    v87[4] = animated;
                    v65 = v17;
                    v88 = v65;
                    v58 = _Block_copy(v87);
                    v85[0] = MEMORY[0x1E69E9820];
                    v85[1] = 3221225472;
                    v85[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_3;
                    v85[3] = &unk_1E8010A10;
                    v85[4] = animated;
                    v45 = labelColor;
                    v86 = v45;
                    v46 = _Block_copy(v85);
                    v83[0] = MEMORY[0x1E69E9820];
                    v83[1] = 3221225472;
                    v83[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_4;
                    v83[3] = &unk_1E8010A10;
                    v83[4] = animated;
                    v47 = v45;
                    v84 = v47;
                    v48 = _Block_copy(v83);
                    v81[0] = MEMORY[0x1E69E9820];
                    v81[1] = 3221225472;
                    v81[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_5;
                    v81[3] = &unk_1E8010A10;
                    v81[4] = animated;
                    v62 = v22;
                    v82 = v62;
                    v49 = _Block_copy(v81);
                    v79[0] = MEMORY[0x1E69E9820];
                    v79[1] = 3221225472;
                    v79[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_6;
                    v79[3] = &unk_1E8010A10;
                    v79[4] = animated;
                    v67 = secondaryLabelColor2;
                    v80 = v67;
                    v50 = _Block_copy(v79);
                    v77[0] = MEMORY[0x1E69E9820];
                    v77[1] = 3221225472;
                    v77[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_7;
                    v77[3] = &unk_1E8010A10;
                    v77[4] = animated;
                    v61 = v47;
                    v78 = v61;
                    v51 = _Block_copy(v77);
                    v75[0] = MEMORY[0x1E69E9820];
                    v75[1] = 3221225472;
                    v75[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_8;
                    v75[3] = &unk_1E8010A10;
                    v75[4] = animated;
                    v60 = v59;
                    v76 = v60;
                    v52 = _Block_copy(v75);
                    v73[0] = MEMORY[0x1E69E9820];
                    v73[1] = 3221225472;
                    v73[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_9;
                    v73[3] = &unk_1E8010A10;
                    v73[4] = animated;
                    v64 = v63;
                    v74 = v64;
                    v53 = _Block_copy(v73);
                    if (v70)
                    {
                      if (*(animated + 760) == 1)
                      {
                        v58[2](v58);
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v58 completion:0];
                      }

                      if (*(animated + 761) == 1)
                      {
                        v46[2](v46);
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v46 completion:0];
                      }

                      if (*(animated + 762) == 1)
                      {
                        v48[2]();
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v48 completion:0];
                      }

                      if (*(animated + 763) == 1)
                      {
                        v49[2]();
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v49 completion:0];
                      }

                      if (*(animated + 764) == 1)
                      {
                        v50[2]();
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v50 completion:0];
                      }

                      if (*(animated + 769) == 1)
                      {
                        v51[2](v51);
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v51 completion:0];
                      }

                      v54 = v51;
                      if (*(animated + 767) == 1)
                      {
                        v52[2]();
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v52 completion:0];
                      }

                      v57 = *(animated + 768);
                      v55 = v58;
                      v56 = v52;
                      if ((v57 & 1) == 0)
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v53 completion:0];
                        goto LABEL_93;
                      }
                    }

                    else
                    {
                      v58[2](v58);
                      v46[2](v46);
                      (v48[2])(v48);
                      (v49[2])(v49);
                      (v50[2])(v50);
                      v54 = v51;
                      v51[2](v51);
                      (v52[2])(v52);
                      v55 = v58;
                      v56 = v52;
                    }

                    v53[2](v53);
LABEL_93:

                    return;
                  }

                  if ((v91[0] & 1) == 0)
                  {
                    v28 = 0;
                    v29 = v6;
                    goto LABEL_47;
                  }
                }

                v28 = labelColor;
                v29 = 1.0;
                goto LABEL_47;
              }

              if ((v91[0] & 1) == 0)
              {
                v22 = 0;
                goto LABEL_40;
              }
            }

            else
            {
              v71 = 0;
            }

            v22 = labelColor;
            v23 = 1.0;
            goto LABEL_41;
          }

          if ((v91[0] & 1) == 0)
          {
            v17 = 0;
            v18 = v6;
            goto LABEL_32;
          }
        }

        v17 = labelColor;
        v18 = 1.0;
        goto LABEL_32;
      }

      tertiaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];

      quaternaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }

    secondaryLabelColor2 = quaternaryLabelColor;
    labelColor = tertiaryLabelColor;
    goto LABEL_25;
  }
}

- (void)_updateBackgroundAnimated:(uint64_t)animated
{
  if (animated)
  {
    if ([*(animated + 928) hidesBackground])
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [animated setBackgroundColor:clearColor];
    }

    else
    {
      if (*(animated + 978) == 1 && (*(animated + 980) & 1) != 0)
      {
        tableCellDefaultSelectionTintColor = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
      }

      else
      {
        tableCellDefaultSelectionTintColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      }

      v5 = tableCellDefaultSelectionTintColor;
      if (a2)
      {
        v6 = MEMORY[0x1E69DD250];
        if (*(animated + 978) == 1)
        {
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __44__PKPassTileView__updateBackgroundAnimated___block_invoke;
          v11[3] = &unk_1E8010A10;
          v11[4] = animated;
          v12 = tableCellDefaultSelectionTintColor;
          [v6 _animateUsingDefaultTimingWithOptions:1030 animations:v11 completion:0];
          v7 = v12;
        }

        else
        {
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __44__PKPassTileView__updateBackgroundAnimated___block_invoke_2;
          v9[3] = &unk_1E8010A10;
          v9[4] = animated;
          v10 = tableCellDefaultSelectionTintColor;
          [v6 _animateUsingDefaultTimingWithOptions:2 animations:v9 completion:0];
          v7 = v10;
        }
      }

      else
      {
        [animated setBackgroundColor:tableCellDefaultSelectionTintColor];
      }
    }
  }
}

void __39__PKPassTileView__updateStyleAnimated___block_invoke(uint64_t a1, void *a2, int a3, int a4, double a5)
{
  v7 = 0.0;
  if (!a3)
  {
    a5 = 0.0;
  }

  if (*(a1 + 40) == 1)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = *(*(a1 + 32) + 752);
      }
    }

    v8[1] = v5;
    v8[2] = v6;
    _PKViewSetAlphaAnimated(a2, 0, v8, a5, v7);
  }

  else
  {

    [a2 pkui_setAlpha:0 animated:a5];
  }
}

uint64_t __50__PKPassTileView__prepareViewForReuse_type_state___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 removeObjectIdenticalTo:v3];
}

void __50__PKPassTileView__prepareViewForReuse_type_state___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 removeAllAnimations];
  [*(a1 + 32) setAlpha:0.0];
  [v2 clearHasBeenCommitted];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = PKPassTileView;
  [(PKPassTileView *)&v5 setEnabled:?];
  if (self->_enabled != enabledCopy)
  {
    self->_enabled = enabledCopy;
    [(PKPassTileView *)self _updateStyleAnimated:?];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = PKPassTileView;
  [(PKPassTileView *)&v5 setSelected:?];
  if (self->_selected != selectedCopy)
  {
    self->_selected = selectedCopy;
    [(PKPassTileView *)self _updateStyleAnimated:?];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = PKPassTileView;
  [(PKPassTileView *)&v5 setHighlighted:?];
  if (self->_highlighted != highlightedCopy)
  {
    self->_highlighted = highlightedCopy;
    [(PKPassTileView *)self _updateBackgroundAnimated:?];
  }
}

- (void)setPass:(id)pass passState:(id)state
{
  passCopy = pass;
  stateCopy = state;
  uniqueID = [(PKPass *)self->_pass uniqueID];
  uniqueID2 = [passCopy uniqueID];
  v10 = [uniqueID isEqualToString:uniqueID2];

  if ((v10 & 1) == 0)
  {
    objc_storeStrong(&self->_pass, pass);
    p_passState = &self->_passState;
    if (self->_passState == stateCopy)
    {
LABEL_6:
      [(PKPassTileView *)self _updateSubviewsAnimated:?];
      goto LABEL_7;
    }

LABEL_5:
    objc_storeStrong(p_passState, state);
    goto LABEL_6;
  }

  p_passState = &self->_passState;
  if (self->_passState != stateCopy)
  {
    goto LABEL_5;
  }

LABEL_7:
}

- (void)setContent:(id)content animated:(BOOL)animated
{
  animatedCopy = animated;
  contentCopy = content;
  passState = self->_passState;
  lastPassStateHash = self->_lastPassStateHash;
  v10 = self->_content;
  v33 = contentCopy;
  v11 = passState;
  if (PKEqualObjects())
  {
    state = [(PKPassTile *)v10 state];
    state2 = [v33 state];
    v14 = state;
    if (v14 == state2)
    {
      if ([(PKPassDynamicState *)v11 hash]== lastPassStateHash)
      {

        goto LABEL_22;
      }

      stateTypeDefaultV2 = [v14 stateTypeDefaultV2];
      title = [stateTypeDefaultV2 title];
      valueTypeForeignReference = [title valueTypeForeignReference];
      foreignReferenceType = [valueTypeForeignReference foreignReferenceType];

      if (!foreignReferenceType)
      {
        v31 = title;
        body = [stateTypeDefaultV2 body];
        valueTypeForeignReference2 = [body valueTypeForeignReference];
        foreignReferenceType2 = [valueTypeForeignReference2 foreignReferenceType];

        if (!foreignReferenceType2)
        {
          footer = [stateTypeDefaultV2 footer];
          valueTypeForeignReference3 = [footer valueTypeForeignReference];
          foreignReferenceType3 = [valueTypeForeignReference3 foreignReferenceType];

          if (!foreignReferenceType3)
          {
            goto LABEL_22;
          }

          goto LABEL_11;
        }

        title = v31;
      }
    }
  }

LABEL_11:
  v19 = v33;
  if (animatedCopy && !self->_deferringUpdate)
  {
    [(PKPassTileView *)self layoutIfNeeded];
    v19 = v33;
  }

  v20 = [PKPassTileView_State visuallyCompareTile:v19 toTile:?];
  objc_storeStrong(&self->_content, content);
  axID = [(PKPassTile *)self->_content axID];
  [(PKPassTileView *)self setAccessibilityIdentifier:axID];

  state3 = [(PKPassTile *)self->_content state];
  type = [state3 type];

  if (type == 6)
  {
    [(PKPassTileView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9A60]];
  }

  if (v20 != 2)
  {
    actionStateTimeout = self->_actionStateTimeout;
    if (actionStateTimeout)
    {
      dispatch_source_cancel(actionStateTimeout);
      v25 = self->_actionStateTimeout;
      self->_actionStateTimeout = 0;
    }
  }

  if (!self->_actionStateTimeout)
  {
    self->_inActionState = [(PKPassTile *)self->_content isInProgress];
  }

  [(PKPassTileView *)self _updateContentStateAnimated:animatedCopy];
LABEL_22:
}

- (void)setInActionState:(BOOL)state animated:(BOOL)animated
{
  if (self->_inActionState != state)
  {
    animatedCopy = animated;
    if (animated && !self->_deferringUpdate)
    {
      [(PKPassTileView *)self layoutIfNeeded];
    }

    self->_inActionState = state;

    [(PKPassTileView *)self _updateContentStateAnimated:animatedCopy];
  }
}

- (void)setCompact:(BOOL)compact animated:(BOOL)animated
{
  if (self->_compact != compact)
  {
    animatedCopy = animated;
    if (animated && !self->_deferringUpdate)
    {
      [(PKPassTileView *)self layoutIfNeeded];
    }

    self->_compact = compact;

    [(PKPassTileView *)self _updateSubviewsAnimated:animatedCopy];
  }
}

- (void)setGroupStyle:(unint64_t)style
{
  if (self)
  {
    if (self->_groupStyle != style)
    {
      self->_groupStyle = style;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __41__PKPassTileView_setGroupStyle_animated___block_invoke;
      aBlock[3] = &__block_descriptor_33_e17_v16__0__UILabel_8l;
      v6 = style == 1;
      v4 = _Block_copy(aBlock);
      v4[2](v4, self->_title);
      v4[2](v4, self->_body);
      v4[2](v4, self->_footer);
      [(PKPassTileView *)self _updateSubviewsAnimated:?];
    }
  }
}

uint64_t __41__PKPassTileView_setGroupStyle_animated___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = 4;
  }

  return [a2 setTextAlignment:v2];
}

- (PKPassTileViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKPassTileCustomViewProviding)customViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_customViewProvider);

  return WeakRetained;
}

@end