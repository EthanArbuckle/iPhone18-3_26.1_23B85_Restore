@interface SFShareSheetRendering
+ (BOOL)isAXFromConfig:(id)a3;
+ (CGImage)createCGImageForRenderingCommand:(id)a3;
+ (CGSize)nameLabelSizeFromConfig:(id)a3;
+ (double)_nearbyBadgeNumberStringTopInsetForIdiom:(int64_t)a3;
+ (double)_normalCellWidthForIdiom:(int64_t)a3;
+ (double)morePlatterMaxWidthFromConfig:(id)a3 activityCategory:(int64_t)a4;
+ (double)platterMaxWidthFromConfig:(id)a3;
+ (id)_nearbyBadgeFontForIdiom:(int64_t)a3;
+ (id)badgeNumberFormatterFromConfig:(id)a3;
+ (id)cappedOrthoLabelFontFromConfig:(id)a3;
+ (id)drawingCommandsForActionPlatterWithTitle:(id)a3 tintColor:(id)a4 hostConfig:(id)a5;
+ (id)drawingCommandsForMoreListEntryTitle:(id)a3 labelColor:(id)a4 hostConfig:(id)a5 activityCategory:(int64_t)a6;
+ (id)drawingCommandsForNameLabelWithString:(id)a3 textColor:(id)a4 maxNumberOfLines:(unint64_t)a5 isAirDrop:(BOOL)a6 ignoreNameWrapping:(BOOL)a7 hostConfig:(id)a8;
+ (id)drawingCommandsForNearbyBadgeWithCount:(int64_t)a3 hostConfig:(id)a4;
+ (id)drawingCommandsForUIActivityTitle:(id)a3 foregroundColor:(id)a4 hostConfig:(id)a5;
+ (int64_t)_hostIdiomFromConfig:(id)a3;
+ (int64_t)hostNaturalTextAlignmentFromConfig:(id)a3;
@end

@implementation SFShareSheetRendering

+ (CGImage)createCGImageForRenderingCommand:(id)a3
{
  v3 = a3;
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__SFShareSheetRendering_createCGImageForRenderingCommand___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v4;
  v5 = _Block_copy(aBlock);
  [v3 contextSize];
  v7 = v6;
  [v3 contextSize];
  v9 = CGBitmapContextCreate(0, v7, v8, 8uLL, 0, v4, 1u);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__SFShareSheetRendering_createCGImageForRenderingCommand___block_invoke_2;
  v15[3] = &__block_descriptor_40_e5_v8__0l;
  v15[4] = v9;
  v10 = _Block_copy(v15);
  CGContextScaleCTM(v9, 1.0, -1.0);
  [v3 contextSize];
  CGContextTranslateCTM(v9, 0.0, -v11);
  UIGraphicsPushContext(v9);
  v12 = [v3 commandBlock];
  v12[2]();

  UIGraphicsPopContext();
  Image = CGBitmapContextCreateImage(v9);
  v10[2](v10);

  v5[2](v5);
  return Image;
}

+ (id)badgeNumberFormatterFromConfig:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v5 = [v3 hostLocale];
    [v4 setLocale:v5];

    [v4 setNumberStyle:1];
  }

  else
  {
    v6 = sharingXPCHelperLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[SFShareSheetRendering badgeNumberFormatterFromConfig:];
    }

    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  }

  return v4;
}

+ (id)cappedOrthoLabelFontFromConfig:(id)a3
{
  v3 = a3;
  v4 = [SFUIShareSheetActivityCellSpec titleLabelFontTextStyleForIdiom:[SFShareSheetRendering _hostIdiomFromConfig:v3]];
  v5 = [v3 hostTraitCollection];

  if (v5)
  {
    v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:v5];
    v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];
  }

  else
  {
    v8 = sharingXPCHelperLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      +[SFShareSheetRendering cappedOrthoLabelFontFromConfig:];
    }

    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v4];
  }

  return v7;
}

+ (int64_t)hostNaturalTextAlignmentFromConfig:(id)a3
{
  if (a3)
  {
    v3 = [a3 hostTraitCollection];
    v4 = [v3 layoutDirection];

    v5 = 4;
    if (v4 == 1)
    {
      v5 = 2;
    }

    if (v4)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sharingXPCHelperLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[SFShareSheetRendering hostNaturalTextAlignmentFromConfig:];
    }

    return 4;
  }
}

+ (BOOL)isAXFromConfig:(id)a3
{
  if (a3)
  {
    v3 = [a3 hostTraitCollection];
    v4 = [v3 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

    return IsAccessibilityCategory;
  }

  else
  {
    v7 = sharingXPCHelperLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[SFShareSheetRendering isAXFromConfig:];
    }

    return 0;
  }
}

+ (double)morePlatterMaxWidthFromConfig:(id)a3 activityCategory:(int64_t)a4
{
  v5 = a3;
  if ([SFShareSheetRendering _hostIdiomFromConfig:v5]== 6)
  {
    [v5 hostLayoutMargins];
    v7 = v6;
    [v5 hostLayoutMargins];
    v9 = v7 + v8 + v7 + v8;
    if (a4 == 1)
    {
      v10 = 45.0;
    }

    else
    {
      v10 = 0.0;
    }

    [v5 preferredWidth];
    v12 = v11 - v9 + -26.0 - v10 + -42.0;
    v13 = -30.0;
  }

  else
  {
    [SFShareSheetRendering platterMaxWidthFromConfig:v5];
    v13 = -100.0;
  }

  v14 = v12 + v13;

  return v14;
}

+ (double)_normalCellWidthForIdiom:(int64_t)a3
{
  result = 78.0;
  if (a3 == 6)
  {
    return 80.0;
  }

  return result;
}

+ (int64_t)_hostIdiomFromConfig:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 hostIdiom];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (CGSize)nameLabelSizeFromConfig:(id)a3
{
  v3 = a3;
  [SFShareSheetRendering _normalCellWidthForIdiom:[SFShareSheetRendering _hostIdiomFromConfig:v3]];
  v5 = v4;
  v6 = v3;
  if (v6)
  {
    if ([SFShareSheetRendering isAXFromConfig:v6])
    {
      v7 = [MEMORY[0x1E69DC938] currentDevice];
      v8 = [v7 userInterfaceIdiom];

      if ((v8 & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        [v6 preferredWidth];
        v10 = v9;
      }

      else
      {
        v12 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v12 _referenceBounds];
        v10 = v13;
      }

      if (v10 >= 414.0)
      {
        v15 = [MEMORY[0x1E69DC938] currentDevice];
        v16 = [v15 userInterfaceIdiom];

        v14 = 62.0;
        if ((v16 & 0xFFFFFFFFFFFFFFFBLL) == 0)
        {
          v14 = 66.0;
        }
      }

      else
      {
        v14 = 62.0;
      }

      v5 = v10 * 0.666666667 + -20.0 - v14 + -13.0;
    }
  }

  else
  {
    v11 = sharingXPCHelperLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      +[SFShareSheetRendering nameLabelSizeFromConfig:];
    }
  }

  v17 = 1.79769313e308;
  v18 = v5;
  result.height = v17;
  result.width = v18;
  return result;
}

+ (double)platterMaxWidthFromConfig:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 hostLayoutMargins];
    v6 = v5;
    [v4 hostLayoutMargins];
    v8 = v7;
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if ((v10 & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      [v4 preferredWidth];
      v12 = v11;
    }

    else
    {
      v15 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v15 _referenceBounds];
      v12 = v16;
    }

    v17 = v6 + v8;
    v18 = MEMORY[0x1E69DB878];
    v19 = *MEMORY[0x1E69DDCF8];
    v20 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
    v21 = [v18 fontWithDescriptor:v20 size:0.0];

    v22 = [v4 hostTraitCollection];
    v23 = [v22 preferredContentSizeCategory];

    [MEMORY[0x1E69CD9E8] imageWidthForContentSizeCategory:v23];
    v25 = v24;
    if (UIContentSizeCategoryIsAccessibilityCategory(v23))
    {
      v26 = MEMORY[0x1E69DB880];
      v27 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC40]];
      v28 = [v26 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:v27];

      v29 = [v28 fontDescriptorWithSymbolicTraits:0x8000];

      v30 = [MEMORY[0x1E69DB878] fontWithDescriptor:v29 size:0.0];

      v21 = v30;
    }

    [v21 lineHeight];
    v14 = v12 + v17 * -2.0 - v31 - v25;
  }

  else
  {
    v13 = sharingXPCHelperLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[SFShareSheetRendering hostNaturalTextAlignmentFromConfig:];
    }

    v14 = 4.0;
  }

  return v14;
}

+ (id)drawingCommandsForActionPlatterWithTitle:(id)a3 tintColor:(id)a4 hostConfig:(id)a5
{
  v44[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  [SFShareSheetRendering platterMaxWidthFromConfig:v8];
  v11 = v10;
  v12 = MEMORY[0x1E69DB878];
  v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v14 = [v12 fontWithDescriptor:v13 size:0.0];

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = [MEMORY[0x1E69DC888] labelColor];
  }

  v16 = v15;
  v17 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v17 setLineBreakStrategy:0xFFFFLL];
  v18 = [SFShareSheetRendering hostNaturalTextAlignmentFromConfig:v8];

  [v17 setAlignment:v18];
  v19 = *MEMORY[0x1E69DB648];
  v43[0] = *MEMORY[0x1E69DB650];
  v43[1] = v19;
  v44[0] = v16;
  v44[1] = v14;
  v43[2] = *MEMORY[0x1E69DB688];
  v20 = [v17 copy];
  v44[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];

  v22 = &stru_1F37E96A8;
  if (v9)
  {
    v22 = v9;
  }

  v23 = MEMORY[0x1E696AAB0];
  v24 = v22;
  v25 = [[v23 alloc] initWithString:v24 attributes:v21];

  v26 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v26 setWantsBaselineOffset:1];
  [v25 boundingRectWithSize:35 options:v26 context:{v11, 1.79769313e308}];
  v28 = fmax(v27, 250.0);
  v30 = fmax(v29, 22.0);
  v31 = objc_opt_new();
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __87__SFShareSheetRendering_drawingCommandsForActionPlatterWithTitle_tintColor_hostConfig___block_invoke;
  v35[3] = &unk_1E7EE3C68;
  v38 = 0;
  v39 = 0;
  v40 = v28;
  v41 = v30;
  v42 = 35;
  v36 = v25;
  v37 = v26;
  v32 = v26;
  v33 = v25;
  [v31 setCommandBlock:v35];
  [v31 setContextSize:{v28, v30}];

  return v31;
}

+ (id)drawingCommandsForMoreListEntryTitle:(id)a3 labelColor:(id)a4 hostConfig:(id)a5 activityCategory:(int64_t)a6
{
  v42[3] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [SFShareSheetRendering _hostIdiomFromConfig:v10];
  [SFShareSheetRendering morePlatterMaxWidthFromConfig:v10 activityCategory:a6];
  v14 = v13;
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v16 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v16 setLineBreakStrategy:0xFFFFLL];
  v17 = [SFShareSheetRendering hostNaturalTextAlignmentFromConfig:v10];

  [v16 setAlignment:v17];
  if (v12 == 6)
  {
    [v16 setLineBreakMode:4];
    v18 = 70.0;
  }

  else
  {
    v18 = 100.0;
  }

  v19 = *MEMORY[0x1E69DB648];
  v41[0] = *MEMORY[0x1E69DB650];
  v41[1] = v19;
  v42[0] = v9;
  v42[1] = v15;
  v41[2] = *MEMORY[0x1E69DB688];
  v20 = [v16 copy];
  v42[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];

  v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v21];
  v23 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v23 setWantsBaselineOffset:1];
  [v22 boundingRectWithSize:35 options:v23 context:{v14, 1.79769313e308}];
  v45 = CGRectIntegral(v44);
  if (v18 >= v45.size.width)
  {
    width = v18;
  }

  else
  {
    width = v45.size.width;
  }

  v25 = fmax(v45.size.height, 22.0);
  v26 = objc_opt_new();
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __101__SFShareSheetRendering_drawingCommandsForMoreListEntryTitle_labelColor_hostConfig_activityCategory___block_invoke;
  v33 = &unk_1E7EE3C68;
  v36 = 0;
  v37 = 0;
  v38 = width;
  v39 = v25;
  v40 = 35;
  v34 = v22;
  v35 = v23;
  v27 = v23;
  v28 = v22;
  [v26 setCommandBlock:&v30];
  [v26 setContextSize:{width, v25, v30, v31, v32, v33}];

  return v26;
}

+ (id)drawingCommandsForNameLabelWithString:(id)a3 textColor:(id)a4 maxNumberOfLines:(unint64_t)a5 isAirDrop:(BOOL)a6 ignoreNameWrapping:(BOOL)a7 hostConfig:(id)a8
{
  v9 = a7;
  v10 = a6;
  v86[3] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v64 = a4;
  v14 = a8;
  [SFShareSheetRendering nameLabelSizeFromConfig:v14];
  v16 = v15;
  v18 = v17;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v19 = [v13 length];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __130__SFShareSheetRendering_drawingCommandsForNameLabelWithString_textColor_maxNumberOfLines_isAirDrop_ignoreNameWrapping_hostConfig___block_invoke;
  v77[3] = &unk_1E7EE4300;
  v77[5] = 0;
  v77[6] = v19;
  v77[4] = &v78;
  [v13 enumerateSubstringsInRange:0 options:v19 usingBlock:{3, v77}];
  v20 = *(v79 + 24);
  v67 = [SFShareSheetRendering cappedOrthoLabelFontFromConfig:v14];
  v21 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  v22 = v21;
  v23 = (a5 == 1) & ~v10 & v9;
  v24 = v23 | v20;
  if (v24)
  {
    v25 = 4;
  }

  else
  {
    v25 = 0;
  }

  [v21 setLineBreakMode:v25];
  [v22 setHyphenationFactor:0.0];
  [v22 setLineBreakStrategy:0xFFFFLL];
  if ([SFShareSheetRendering isAXFromConfig:v14])
  {
    v26 = [SFShareSheetRendering hostNaturalTextAlignmentFromConfig:v14];
  }

  else
  {
    v26 = 1;
  }

  [v22 setAlignment:v26];
  v27 = *MEMORY[0x1E69DB648];
  v85[0] = *MEMORY[0x1E69DB650];
  v85[1] = v27;
  v63 = v27;
  v86[0] = v64;
  v86[1] = v67;
  v85[2] = *MEMORY[0x1E69DB688];
  v86[2] = v22;
  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:3];
  v28 = sharingXPCHelperLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a5;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    _os_log_impl(&dword_1B9E4B000, v28, OS_LOG_TYPE_DEFAULT, "maxLines %lu ignoreNameWrapping %lu", buf, 0x16u);
  }

  v29 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  if (v24)
  {
    v30 = 1;
  }

  else if ([SFShareSheetRendering isAXFromConfig:v14])
  {
    v30 = 3;
  }

  else
  {
    v30 = 2;
  }

  [v29 setMaximumNumberOfLines:v30];
  v31 = 35;
  if (v10)
  {
    v31 = 3;
  }

  v66 = v31;
  if (v23)
  {
    [v29 setMinimumScaleFactor:0.8];
  }

  v32 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v65 = [v13 componentsSeparatedByCharactersInSet:v32];

  if ([v65 count] == 2 && !+[SFShareSheetRendering isAXFromConfig:](SFShareSheetRendering, "isAXFromConfig:", v14) && !v9)
  {
    v33 = [v65 firstObject];
    v34 = [v65 lastObject];
    if ([v33 length])
    {
      if ([v34 length])
      {
        v35 = [v33 length];
        if (([v34 length] + v35) >= 8)
        {
          v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v33 attributes:v68];
          [v36 boundingRectWithSize:v66 options:v29 context:{v16, v18}];
          v89 = CGRectIntegral(v88);
          height = v89.size.height;
          [v67 lineHeight];
          *&v38 = v38;
          v39 = llroundf(*&v38);
          *&v38 = height;
          if (llroundf(*&v38) / v39 == 1)
          {
            v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v33, v34];

            v13 = v40;
          }
        }
      }
    }

    goto LABEL_29;
  }

  if (![SFShareSheetRendering isAXFromConfig:v14])
  {
    SFNonBreakingStringFromDeviceName();
    v13 = v33 = v13;
LABEL_29:
  }

  v41 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13 attributes:v68];
  [v41 boundingRectWithSize:v66 options:v29 context:{v16, v18}];
  v91 = CGRectIntegral(v90);
  width = v91.size.width;
  v43 = v91.size.height;
  if (v23)
  {
    [v29 actualScaleFactor];
    if (v44 < 1.0)
    {
      v82 = v63;
      v45 = MEMORY[0x1E69DB878];
      v46 = [v67 fontDescriptor];
      [v67 pointSize];
      v48 = v47;
      [v29 actualScaleFactor];
      v50 = [v45 fontWithDescriptor:v46 size:v48 * v49];
      v83 = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      [v41 addAttributes:v51 range:{0, objc_msgSend(v41, "length")}];

      [v41 boundingRectWithSize:v66 options:v29 context:{v16, v18}];
      v93 = CGRectIntegral(v92);
      width = v93.size.width;
      v43 = v93.size.height;
    }
  }

  if (v10)
  {
    v52 = [objc_alloc(MEMORY[0x1E69DB850]) initWithString:v13 attributes:v68];
    v53 = objc_alloc_init(MEMORY[0x1E69DB7C0]);
    [v53 setUsesFontLeading:1];
    v54 = objc_alloc_init(MEMORY[0x1E69DB800]);
    [v54 setMaximumNumberOfLines:2];
    [v54 setSize:{v16, v43}];
    [v53 addTextContainer:v54];
    [v52 addLayoutManager:v53];
    *buf = 0;
    *&buf[8] = 0;
    [v53 lineFragmentUsedRectForGlyphAtIndex:0 effectiveRange:buf];
    v55 = [v13 length];
    if (v55 >= *&buf[8])
    {
      v56 = *&buf[8];
    }

    else
    {
      v56 = v55;
    }

    v57 = [v13 substringWithRange:{0, v56}];

    [v22 setLineBreakMode:4];
    [v29 setMaximumNumberOfLines:1];
    v58 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v57 attributes:v68];

    [v58 boundingRectWithSize:3 options:v29 context:{v16, v18}];
    v95 = CGRectIntegral(v94);
    width = v95.size.width;
    v43 = v95.size.height;
  }

  else
  {
    v58 = v41;
    v57 = v13;
  }

  v59 = objc_opt_new();
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __130__SFShareSheetRendering_drawingCommandsForNameLabelWithString_textColor_maxNumberOfLines_isAirDrop_ignoreNameWrapping_hostConfig___block_invoke_174;
  v69[3] = &unk_1E7EE3C68;
  v60 = v58;
  v72 = 0;
  v73 = 0;
  v70 = v60;
  v74 = width;
  v75 = v43;
  v76 = v66;
  v61 = v29;
  v71 = v61;
  [v59 setCommandBlock:v69];
  [v59 setContextSize:{width, v43}];

  _Block_object_dispose(&v78, 8);

  return v59;
}

void *__130__SFShareSheetRendering_drawingCommandsForNameLabelWithString_textColor_maxNumberOfLines_isAirDrop_ignoreNameWrapping_hostConfig___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (result[5] == a3 && result[6] == a4)
  {
    *(*(result[4] + 8) + 24) = 1;
  }

  *a7 = 1;
  return result;
}

+ (id)_nearbyBadgeFontForIdiom:(int64_t)a3
{
  if (a3 == 6)
  {
    v3 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB980]];
  }

  else
  {
    v4 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD00] addingSymbolicTraits:0 options:1];
    v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];
  }

  return v3;
}

+ (double)_nearbyBadgeNumberStringTopInsetForIdiom:(int64_t)a3
{
  result = 17.0;
  if (a3 == 6)
  {
    return 13.0;
  }

  return result;
}

+ (id)drawingCommandsForNearbyBadgeWithCount:(int64_t)a3 hostConfig:(id)a4
{
  v36[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [SFShareSheetRendering _hostIdiomFromConfig:v6];
  [SFUIShareSheetActivityCellSpec nearbyAirDropBadgeSizeForIdiom:v7];
  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v10 setAlignment:1];
  [v10 setLineBreakStrategy:0xFFFFLL];
  v35[0] = *MEMORY[0x1E69DB650];
  v11 = [MEMORY[0x1E69DC888] whiteColor];
  v36[0] = v11;
  v35[1] = *MEMORY[0x1E69DB648];
  v12 = [a1 _nearbyBadgeFontForIdiom:v7];
  v36[1] = v12;
  v35[2] = *MEMORY[0x1E69DB688];
  v13 = [v10 copy];
  v36[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = [SFShareSheetRendering badgeNumberFormatterFromConfig:v6];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v18 = [v16 stringFromNumber:v17];
  v19 = [v15 initWithString:v18 attributes:v14];

  v20 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v20 setMaximumNumberOfLines:1];
  v21 = objc_opt_new();
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __75__SFShareSheetRendering_drawingCommandsForNearbyBadgeWithCount_hostConfig___block_invoke;
  v28 = &unk_1E7EE4328;
  v31 = a1;
  v32 = v7;
  v33 = v9;
  v34 = 35;
  v29 = v19;
  v30 = v20;
  v22 = v20;
  v23 = v19;
  [v21 setCommandBlock:&v25];
  [v21 setContextSize:{v9, v9, v25, v26, v27, v28}];

  return v21;
}

uint64_t __75__SFShareSheetRendering_drawingCommandsForNearbyBadgeWithCount_hostConfig___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 48) _nearbyBadgeNumberStringTopInsetForIdiom:*(a1 + 56)];
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 40);

  return [v2 drawWithRect:v5 options:v6 context:{0.0, v3, v4, v4}];
}

+ (id)drawingCommandsForUIActivityTitle:(id)a3 foregroundColor:(id)a4 hostConfig:(id)a5
{
  v50[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [SFShareSheetRendering nameLabelSizeFromConfig:v9];
  v11 = v10;
  v13 = v12;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v14 = v7;
  v15 = [v14 length];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __86__SFShareSheetRendering_drawingCommandsForUIActivityTitle_foregroundColor_hostConfig___block_invoke;
  v44[3] = &unk_1E7EE4300;
  v44[5] = 0;
  v44[6] = v15;
  v44[4] = &v45;
  [v14 enumerateSubstringsInRange:0 options:v15 usingBlock:{3, v44}];
  v16 = [SFShareSheetRendering cappedOrthoLabelFontFromConfig:v9];
  v17 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  v18 = v17;
  if (*(v46 + 24))
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  [v17 setLineBreakMode:v19];
  [v18 setHyphenationFactor:0.0];
  [v18 setLineBreakStrategy:0xFFFFLL];
  if ([SFShareSheetRendering isAXFromConfig:v9])
  {
    v20 = [SFShareSheetRendering hostNaturalTextAlignmentFromConfig:v9];
  }

  else
  {
    v20 = 1;
  }

  [v18 setAlignment:v20];
  v21 = *MEMORY[0x1E69DB648];
  v49[0] = *MEMORY[0x1E69DB650];
  v49[1] = v21;
  v50[0] = v8;
  v50[1] = v16;
  v49[2] = *MEMORY[0x1E69DB688];
  v22 = [v18 copy];
  v50[2] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];

  v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v14 attributes:v23];
  v25 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  if (v46[3])
  {
    v26 = 1;
  }

  else if ([SFShareSheetRendering isAXFromConfig:v9])
  {
    v26 = 3;
  }

  else
  {
    v26 = 2;
  }

  [v25 setMaximumNumberOfLines:v26];
  [v24 boundingRectWithSize:35 options:v25 context:{v11, v13}];
  v53 = CGRectIntegral(v52);
  width = v53.size.width;
  height = v53.size.height;
  v29 = objc_opt_new();
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __86__SFShareSheetRendering_drawingCommandsForUIActivityTitle_foregroundColor_hostConfig___block_invoke_2;
  v36 = &unk_1E7EE3C68;
  v30 = v24;
  v39 = 0;
  v40 = 0;
  v37 = v30;
  v41 = width;
  v42 = height;
  v43 = 35;
  v31 = v25;
  v38 = v31;
  [v29 setCommandBlock:&v33];
  [v29 setContextSize:{width, height, v33, v34, v35, v36}];

  _Block_object_dispose(&v45, 8);

  return v29;
}

void *__86__SFShareSheetRendering_drawingCommandsForUIActivityTitle_foregroundColor_hostConfig___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (result[5] == a3 && result[6] == a4)
  {
    *(*(result[4] + 8) + 24) = 1;
  }

  *a7 = 1;
  return result;
}

@end