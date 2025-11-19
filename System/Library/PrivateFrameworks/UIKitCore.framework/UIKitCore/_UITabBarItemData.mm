@interface _UITabBarItemData
+ (id)decodeFromCoder:(id)a3 prefix:(id)a4;
+ (id)standardItemDataForStyle:(int64_t)a3;
- (BOOL)checkEqualTo:(id)a3;
- (BOOL)titleTextAttributesSpecifyColorForState:(int64_t)a3;
- (UIImageSymbolConfiguration)preferredSymbolConfiguration;
- (UIOffset)badgePositionAdjustmentForState:(int64_t)a3;
- (UIOffset)badgeTitlePositionAdjustmentForState:(int64_t)a3;
- (UIOffset)titlePositionAdjustmentForState:(int64_t)a3;
- (id)_fallbackBadgeTitleColorForState:(int64_t)a3;
- (id)_fallbackBadgeTitleFontForState:(int64_t)a3 compatibleWithTraitCollection:(id)a4;
- (id)_fallbackTitleColorForState:(int64_t)a3;
- (id)_fallbackTitleFontForState:(int64_t)a3 compatibleWithTraitCollection:(id)a4;
- (id)badgeBackgroundColorForState:(int64_t)a3;
- (id)badgeTextAttributesForState:(int64_t)a3 compatibleWithTraitCollection:(id)a4;
- (id)iconColorForState:(int64_t)a3;
- (id)replicate;
- (id)titleTextAttributesForState:(int64_t)a3 compatibleWithTraitCollection:(id)a4;
- (int64_t)hashInto:(int64_t)a3;
- (void)_decodeBadgeBackgroundColorFromCoder:(id)a3 prefix:(id)a4;
- (void)_decodeBadgePositionAdjustmentsFromCoder:(id)a3 prefix:(id)a4;
- (void)_decodeBadgeTextAttributesFromCoder:(id)a3 prefix:(id)a4;
- (void)_decodeBadgeTitlePositionAdjustmentsFromCoder:(id)a3 prefix:(id)a4;
- (void)_decodeIconColorFromCoder:(id)a3 prefix:(id)a4;
- (void)_decodeTitlePositionAdjustmentsFromCoder:(id)a3 prefix:(id)a4;
- (void)_decodeTitleTextAttributesFromCoder:(id)a3 prefix:(id)a4;
- (void)describeInto:(id)a3;
- (void)encodeToCoder:(id)a3 prefix:(id)a4;
- (void)setBadgeBackgroundColor:(id)a3 forState:(int64_t)a4;
- (void)setBadgePositionAdjustment:(UIOffset)a3 forState:(int64_t)a4;
- (void)setBadgeTextAttributes:(id)a3 forState:(int64_t)a4;
- (void)setBadgeTitlePositionAdjustment:(UIOffset)a3 forState:(int64_t)a4;
- (void)setIconColor:(id)a3 forState:(int64_t)a4;
- (void)setTitlePositionAdjustment:(UIOffset)a3 forState:(int64_t)a4;
- (void)setTitleTextAttributes:(id)a3 forState:(int64_t)a4;
@end

@implementation _UITabBarItemData

- (UIImageSymbolConfiguration)preferredSymbolConfiguration
{
  style = self->_style;
  if (style < 2)
  {
    v5 = _MergedGlobals_3_22;
    if (!_MergedGlobals_3_22)
    {
      if (dyld_program_sdk_at_least())
      {
        [UIImageSymbolConfiguration configurationWithPointSize:5 weight:3 scale:18.0];
      }

      else
      {
        [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
      }
      v6 = ;
      v8 = _MergedGlobals_3_22;
      _MergedGlobals_3_22 = v6;

      v5 = _MergedGlobals_3_22;
    }

    goto LABEL_16;
  }

  if (style == 2)
  {
    v5 = qword_1ED49A400;
    if (!qword_1ED49A400)
    {
      if (dyld_program_sdk_at_least())
      {
        [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:17.0];
      }

      else
      {
        [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleFootnote" scale:3];
      }
      v7 = ;
      v9 = qword_1ED49A400;
      qword_1ED49A400 = v7;

      v5 = qword_1ED49A400;
    }

LABEL_16:
    v4 = v5;
    goto LABEL_17;
  }

  if (style == 3)
  {
    v3 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:2];
  }

  v4 = 0;
LABEL_17:

  return v4;
}

+ (id)standardItemDataForStyle:(int64_t)a3
{
  if (a3 >= 5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"_UITabBarItemData.m" lineNumber:45 description:{@"Unsupported style %li", a3}];
  }

  v5 = _UITabBarItemStyleData[a3];
  if (!v5)
  {
    v6 = objc_opt_new();
    v7 = _UITabBarItemStyleData[a3];
    _UITabBarItemStyleData[a3] = v6;

    v8 = _UITabBarItemStyleData[a3];
    v8[2] = a3;
    v9 = [v8 markReadOnly];
    v5 = _UITabBarItemStyleData[a3];
  }

  return v5;
}

- (void)_decodeTitleTextAttributesFromCoder:(id)a3 prefix:(id)a4
{
  v39 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Normal.TitleTextAttributes"];
    v8 = [v39 _ui_decodeTextAttributesForKey:v7];
  }

  else
  {
    v8 = [v39 _ui_decodeTextAttributesForKey:@"Normal.TitleTextAttributes"];
  }

  titleTextAttributes = self->_titleTextAttributes;
  objc_storeStrong(self->_titleTextAttributes, v8);
  v10 = *off_1E70EC918;
  v11 = [v8 objectForKeyedSubscript:*off_1E70EC918];
  stateFlags = self->_stateFlags;
  v13 = *self->_stateFlags & 0xFFFE;
  if (v11)
  {
    ++v13;
  }

  *stateFlags = v13;

  v14 = *off_1E70EC920;
  v38 = v8;
  v15 = [v8 objectForKeyedSubscript:*off_1E70EC920];
  *stateFlags = *stateFlags & 0xFFFD | (2 * (v15 != 0));

  if (v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Highlighted.TitleTextAttributes"];
    v17 = [v39 _ui_decodeTextAttributesForKey:v16];
  }

  else
  {
    v17 = [v39 _ui_decodeTextAttributesForKey:@"Highlighted.TitleTextAttributes"];
  }

  objc_storeStrong(titleTextAttributes + 1, v17);
  v18 = [v17 objectForKeyedSubscript:v10];
  v19 = *&stateFlags[2] & 0xFFFE;
  if (v18)
  {
    ++v19;
  }

  *&stateFlags[2] = v19;

  v20 = [v17 objectForKeyedSubscript:v14];
  *&stateFlags[2] = *&stateFlags[2] & 0xFFFD | (2 * (v20 != 0));

  if (v6)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Selected.TitleTextAttributes"];
    v22 = [v39 _ui_decodeTextAttributesForKey:v21];
  }

  else
  {
    v22 = [v39 _ui_decodeTextAttributesForKey:@"Selected.TitleTextAttributes"];
  }

  objc_storeStrong(titleTextAttributes + 2, v22);
  v23 = [v22 objectForKeyedSubscript:v10];
  v24 = *&stateFlags[4] & 0xFFFE;
  if (v23)
  {
    ++v24;
  }

  *&stateFlags[4] = v24;

  v25 = [v22 objectForKeyedSubscript:v14];
  *&stateFlags[4] = *&stateFlags[4] & 0xFFFD | (2 * (v25 != 0));

  if (v6)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Disabled.TitleTextAttributes"];
    v27 = [v39 _ui_decodeTextAttributesForKey:v26];
  }

  else
  {
    v27 = [v39 _ui_decodeTextAttributesForKey:@"Disabled.TitleTextAttributes"];
  }

  objc_storeStrong(titleTextAttributes + 3, v27);
  v28 = [v27 objectForKeyedSubscript:v10];
  v29 = *&stateFlags[6] & 0xFFFE;
  if (v28)
  {
    ++v29;
  }

  *&stateFlags[6] = v29;

  v30 = [v27 objectForKeyedSubscript:v14];
  *&stateFlags[6] = *&stateFlags[6] & 0xFFFD | (2 * (v30 != 0));

  if (v6)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Focused.TitleTextAttributes"];
    v32 = [v39 _ui_decodeTextAttributesForKey:v31];
  }

  else
  {
    v32 = [v39 _ui_decodeTextAttributesForKey:@"Focused.TitleTextAttributes"];
  }

  v33 = titleTextAttributes[4];
  titleTextAttributes[4] = v32;
  v34 = v32;

  v35 = [(NSDictionary *)v34 objectForKeyedSubscript:v10];
  v36 = *&stateFlags[8] & 0xFFFE;
  if (v35)
  {
    ++v36;
  }

  *&stateFlags[8] = v36;

  v37 = [(NSDictionary *)v34 objectForKeyedSubscript:v14];

  *&stateFlags[8] = *&stateFlags[8] & 0xFFFD | (2 * (v37 != 0));
}

- (void)_decodeBadgeTextAttributesFromCoder:(id)a3 prefix:(id)a4
{
  v33 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Normal.BadgeTextAttributes"];
    v8 = [v33 _ui_decodeTextAttributesForKey:v7];
  }

  else
  {
    v8 = [v33 _ui_decodeTextAttributesForKey:@"Normal.BadgeTextAttributes"];
  }

  badgeTextAttributes = self->_badgeTextAttributes;
  objc_storeStrong(self->_badgeTextAttributes, v8);
  v10 = *off_1E70EC918;
  v11 = [v8 objectForKeyedSubscript:*off_1E70EC918];
  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xFFBF | ((v11 != 0) << 6);

  v13 = *off_1E70EC920;
  v32 = v8;
  v14 = [v8 objectForKeyedSubscript:*off_1E70EC920];
  *stateFlags = *stateFlags & 0xFF7F | ((v14 != 0) << 7);

  if (v6)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Highlighted.BadgeTextAttributes"];
    v16 = [v33 _ui_decodeTextAttributesForKey:v15];
  }

  else
  {
    v16 = [v33 _ui_decodeTextAttributesForKey:@"Highlighted.BadgeTextAttributes"];
  }

  objc_storeStrong(badgeTextAttributes + 1, v16);
  v17 = [v16 objectForKeyedSubscript:v10];
  *&stateFlags[2] = *&stateFlags[2] & 0xFFBF | ((v17 != 0) << 6);

  v18 = [v16 objectForKeyedSubscript:v13];
  *&stateFlags[2] = *&stateFlags[2] & 0xFF7F | ((v18 != 0) << 7);

  if (v6)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Selected.BadgeTextAttributes"];
    v20 = [v33 _ui_decodeTextAttributesForKey:v19];
  }

  else
  {
    v20 = [v33 _ui_decodeTextAttributesForKey:@"Selected.BadgeTextAttributes"];
  }

  objc_storeStrong(badgeTextAttributes + 2, v20);
  v21 = [v20 objectForKeyedSubscript:v10];
  *&stateFlags[4] = *&stateFlags[4] & 0xFFBF | ((v21 != 0) << 6);

  v22 = [v20 objectForKeyedSubscript:v13];
  *&stateFlags[4] = *&stateFlags[4] & 0xFF7F | ((v22 != 0) << 7);

  if (v6)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Disabled.BadgeTextAttributes"];
    v24 = [v33 _ui_decodeTextAttributesForKey:v23];
  }

  else
  {
    v24 = [v33 _ui_decodeTextAttributesForKey:@"Disabled.BadgeTextAttributes"];
  }

  objc_storeStrong(badgeTextAttributes + 3, v24);
  v25 = [v24 objectForKeyedSubscript:v10];
  *&stateFlags[6] = *&stateFlags[6] & 0xFFBF | ((v25 != 0) << 6);

  v26 = [v24 objectForKeyedSubscript:v13];
  *&stateFlags[6] = *&stateFlags[6] & 0xFF7F | ((v26 != 0) << 7);

  if (v6)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Focused.BadgeTextAttributes"];
    v28 = [v33 _ui_decodeTextAttributesForKey:v27];
  }

  else
  {
    v28 = [v33 _ui_decodeTextAttributesForKey:@"Focused.BadgeTextAttributes"];
  }

  v29 = badgeTextAttributes[4];
  badgeTextAttributes[4] = v28;

  v30 = [v24 objectForKeyedSubscript:v10];
  *&stateFlags[6] = *&stateFlags[6] & 0xFFBF | ((v30 != 0) << 6);

  v31 = [v24 objectForKeyedSubscript:v13];
  *&stateFlags[6] = *&stateFlags[6] & 0xFF7F | ((v31 != 0) << 7);
}

- (void)_decodeIconColorFromCoder:(id)a3 prefix:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  if (v6)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Normal.IconColor"];
    v9 = [v28 decodeObjectOfClass:v7 forKey:v8];
  }

  else
  {
    v9 = [v28 decodeObjectOfClass:v7 forKey:@"Normal.IconColor"];
  }

  iconColor = self->_iconColor;
  objc_storeStrong(self->_iconColor, v9);
  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xFFF7 | (8 * (v9 != 0));
  v12 = objc_opt_class();
  if (v6)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Highlighted.IconColor"];
    v14 = [v28 decodeObjectOfClass:v12 forKey:v13];
  }

  else
  {
    v14 = [v28 decodeObjectOfClass:v12 forKey:@"Highlighted.IconColor"];
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  objc_storeStrong(iconColor + 1, v15);
  *&stateFlags[2] = *&stateFlags[2] & 0xFFF7 | (8 * (v14 != 0));
  v16 = objc_opt_class();
  if (v6)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Selected.IconColor"];
    v18 = [v28 decodeObjectOfClass:v16 forKey:v17];
  }

  else
  {
    v18 = [v28 decodeObjectOfClass:v16 forKey:@"Selected.IconColor"];
  }

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v9;
  }

  objc_storeStrong(iconColor + 2, v19);
  *&stateFlags[4] = *&stateFlags[4] & 0xFFF7 | (8 * (v18 != 0));
  v20 = objc_opt_class();
  if (v6)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Disabled.IconColor"];
    v22 = [v28 decodeObjectOfClass:v20 forKey:v21];
  }

  else
  {
    v22 = [v28 decodeObjectOfClass:v20 forKey:@"Disabled.IconColor"];
  }

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v9;
  }

  objc_storeStrong(iconColor + 3, v23);
  *&stateFlags[6] = *&stateFlags[6] & 0xFFF7 | (8 * (v22 != 0));
  v24 = objc_opt_class();
  if (v6)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Focused.IconColor"];
    v26 = [v28 decodeObjectOfClass:v24 forKey:v25];
  }

  else
  {
    v26 = [v28 decodeObjectOfClass:v24 forKey:@"Focused.IconColor"];
  }

  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v15;
  }

  objc_storeStrong(iconColor + 4, v27);
  *&stateFlags[8] = *&stateFlags[8] & 0xFFF7 | (8 * (v26 != 0));
}

- (void)_decodeBadgeBackgroundColorFromCoder:(id)a3 prefix:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  if (v6)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Normal.BadgeBackgroundColor"];
    v9 = [v28 decodeObjectOfClass:v7 forKey:v8];
  }

  else
  {
    v9 = [v28 decodeObjectOfClass:v7 forKey:@"Normal.BadgeBackgroundColor"];
  }

  badgeBackgroundColor = self->_badgeBackgroundColor;
  objc_storeStrong(self->_badgeBackgroundColor, v9);
  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xFFDF | (32 * (v9 != 0));
  v12 = objc_opt_class();
  if (v6)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Highlighted.BadgeBackgroundColor"];
    v14 = [v28 decodeObjectOfClass:v12 forKey:v13];
  }

  else
  {
    v14 = [v28 decodeObjectOfClass:v12 forKey:@"Highlighted.BadgeBackgroundColor"];
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  objc_storeStrong(badgeBackgroundColor + 1, v15);
  *&stateFlags[2] = *&stateFlags[2] & 0xFFDF | (32 * (v14 != 0));
  v16 = objc_opt_class();
  if (v6)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Selected.BadgeBackgroundColor"];
    v18 = [v28 decodeObjectOfClass:v16 forKey:v17];
  }

  else
  {
    v18 = [v28 decodeObjectOfClass:v16 forKey:@"Selected.BadgeBackgroundColor"];
  }

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v9;
  }

  objc_storeStrong(badgeBackgroundColor + 2, v19);
  *&stateFlags[4] = *&stateFlags[4] & 0xFFDF | (32 * (v18 != 0));
  v20 = objc_opt_class();
  if (v6)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Disabled.BadgeBackgroundColor"];
    v22 = [v28 decodeObjectOfClass:v20 forKey:v21];
  }

  else
  {
    v22 = [v28 decodeObjectOfClass:v20 forKey:@"Disabled.BadgeBackgroundColor"];
  }

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v9;
  }

  objc_storeStrong(badgeBackgroundColor + 3, v23);
  *&stateFlags[6] = *&stateFlags[6] & 0xFFDF | (32 * (v22 != 0));
  v24 = objc_opt_class();
  if (v6)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Focused.BadgeBackgroundColor"];
    v26 = [v28 decodeObjectOfClass:v24 forKey:v25];
  }

  else
  {
    v26 = [v28 decodeObjectOfClass:v24 forKey:@"Focused.BadgeBackgroundColor"];
  }

  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v15;
  }

  objc_storeStrong(badgeBackgroundColor + 4, v27);
  *&stateFlags[8] = *&stateFlags[8] & 0xFFDF | (32 * (v26 != 0));
}

- (void)_decodeTitlePositionAdjustmentsFromCoder:(id)a3 prefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = @"Normal.TitlePosition";
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Normal.TitlePosition"];
  }

  v9 = v6;
  v10 = v8;
  if ([v9 containsValueForKey:v10])
  {
    [v9 decodeUIOffsetForKey:v10];
    v12 = v11;
    v14 = v13;
    v15 = 4;
  }

  else
  {
    v15 = 0;
    v12 = 0.0;
    v14 = 0.0;
  }

  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xFFFB | v15;
  if (v7)
  {

    titlePositionAdjustment = self->_titlePositionAdjustment;
    self->_titlePositionAdjustment[0].horizontal = v12;
    self->_titlePositionAdjustment[0].vertical = v14;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Highlighted.TitlePosition"];
  }

  else
  {
    titlePositionAdjustment = self->_titlePositionAdjustment;
    self->_titlePositionAdjustment[0].horizontal = v12;
    self->_titlePositionAdjustment[0].vertical = v14;
    v18 = @"Highlighted.TitlePosition";
  }

  v19 = v9;
  v20 = v18;
  if ([v19 containsValueForKey:v20])
  {
    [v19 decodeUIOffsetForKey:v20];
    v22 = v21;
    v24 = v23;
    v25 = 4;
  }

  else
  {
    v25 = 0;
    v22 = v12;
    v24 = v14;
  }

  *&stateFlags[2] = *&stateFlags[2] & 0xFFFB | v25;
  if (v7)
  {

    titlePositionAdjustment[1].horizontal = v22;
    titlePositionAdjustment[1].vertical = v24;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Selected.TitlePosition"];
  }

  else
  {
    titlePositionAdjustment[1].horizontal = v22;
    titlePositionAdjustment[1].vertical = v24;
    v26 = @"Selected.TitlePosition";
  }

  v27 = v19;
  v28 = v26;
  if ([v27 containsValueForKey:v28])
  {
    [v27 decodeUIOffsetForKey:v28];
    v30 = v29;
    v32 = v31;
    v33 = 4;
  }

  else
  {
    v33 = 0;
    v30 = v12;
    v32 = v14;
  }

  *&stateFlags[4] = *&stateFlags[4] & 0xFFFB | v33;
  if (v7)
  {

    titlePositionAdjustment[2].horizontal = v30;
    titlePositionAdjustment[2].vertical = v32;
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Disabled.TitlePosition"];
  }

  else
  {
    titlePositionAdjustment[2].horizontal = v30;
    titlePositionAdjustment[2].vertical = v32;
    v34 = @"Disabled.TitlePosition";
  }

  v35 = v27;
  v36 = v34;
  if ([v35 containsValueForKey:v36])
  {
    [v35 decodeUIOffsetForKey:v36];
    v12 = v37;
    v14 = v38;
    v39 = 4;
  }

  else
  {
    v39 = 0;
  }

  *&stateFlags[6] = *&stateFlags[6] & 0xFFFB | v39;
  if (v7)
  {

    titlePositionAdjustment[3].horizontal = v12;
    titlePositionAdjustment[3].vertical = v14;
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Focused.TitlePosition"];
  }

  else
  {
    titlePositionAdjustment[3].horizontal = v12;
    titlePositionAdjustment[3].vertical = v14;
    v40 = @"Focused.TitlePosition";
  }

  v45 = v35;
  v41 = v40;
  if ([v45 containsValueForKey:v41])
  {
    [v45 decodeUIOffsetForKey:v41];
    v22 = v42;
    v24 = v43;
    v44 = 4;
  }

  else
  {
    v44 = 0;
  }

  *&stateFlags[8] = *&stateFlags[8] & 0xFFFB | v44;
  if (v7)
  {
  }

  titlePositionAdjustment[4].horizontal = v22;
  titlePositionAdjustment[4].vertical = v24;
}

- (void)_decodeBadgePositionAdjustmentsFromCoder:(id)a3 prefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = @"Normal.BadgePosition";
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Normal.BadgePosition"];
  }

  v9 = v6;
  v10 = v8;
  if ([v9 containsValueForKey:v10])
  {
    [v9 decodeUIOffsetForKey:v10];
    v12 = v11;
    v14 = v13;
    v15 = 16;
  }

  else
  {
    v15 = 0;
    v12 = 0.0;
    v14 = 0.0;
  }

  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xFFEF | v15;
  if (v7)
  {

    badgePositionAdjustment = self->_badgePositionAdjustment;
    self->_badgePositionAdjustment[0].horizontal = v12;
    self->_badgePositionAdjustment[0].vertical = v14;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Highlighted.BadgePosition"];
  }

  else
  {
    badgePositionAdjustment = self->_badgePositionAdjustment;
    self->_badgePositionAdjustment[0].horizontal = v12;
    self->_badgePositionAdjustment[0].vertical = v14;
    v18 = @"Highlighted.BadgePosition";
  }

  v19 = v9;
  v20 = v18;
  if ([v19 containsValueForKey:v20])
  {
    [v19 decodeUIOffsetForKey:v20];
    v22 = v21;
    v24 = v23;
    v25 = 16;
  }

  else
  {
    v25 = 0;
    v22 = v12;
    v24 = v14;
  }

  *&stateFlags[2] = *&stateFlags[2] & 0xFFEF | v25;
  if (v7)
  {

    badgePositionAdjustment[1].horizontal = v22;
    badgePositionAdjustment[1].vertical = v24;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Selected.BadgePosition"];
  }

  else
  {
    badgePositionAdjustment[1].horizontal = v22;
    badgePositionAdjustment[1].vertical = v24;
    v26 = @"Selected.BadgePosition";
  }

  v27 = v19;
  v28 = v26;
  if ([v27 containsValueForKey:v28])
  {
    [v27 decodeUIOffsetForKey:v28];
    v30 = v29;
    v32 = v31;
    v33 = 16;
  }

  else
  {
    v33 = 0;
    v30 = v12;
    v32 = v14;
  }

  *&stateFlags[4] = *&stateFlags[4] & 0xFFEF | v33;
  if (v7)
  {

    badgePositionAdjustment[2].horizontal = v30;
    badgePositionAdjustment[2].vertical = v32;
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Disabled.BadgePosition"];
  }

  else
  {
    badgePositionAdjustment[2].horizontal = v30;
    badgePositionAdjustment[2].vertical = v32;
    v34 = @"Disabled.BadgePosition";
  }

  v35 = v27;
  v36 = v34;
  if ([v35 containsValueForKey:v36])
  {
    [v35 decodeUIOffsetForKey:v36];
    v12 = v37;
    v14 = v38;
    v39 = 16;
  }

  else
  {
    v39 = 0;
  }

  *&stateFlags[6] = *&stateFlags[6] & 0xFFEF | v39;
  if (v7)
  {

    badgePositionAdjustment[3].horizontal = v12;
    badgePositionAdjustment[3].vertical = v14;
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Focused.BadgePosition"];
  }

  else
  {
    badgePositionAdjustment[3].horizontal = v12;
    badgePositionAdjustment[3].vertical = v14;
    v40 = @"Focused.BadgePosition";
  }

  v45 = v35;
  v41 = v40;
  if ([v45 containsValueForKey:v41])
  {
    [v45 decodeUIOffsetForKey:v41];
    v22 = v42;
    v24 = v43;
    v44 = 16;
  }

  else
  {
    v44 = 0;
  }

  *&stateFlags[8] = *&stateFlags[8] & 0xFFEF | v44;
  if (v7)
  {
  }

  badgePositionAdjustment[4].horizontal = v22;
  badgePositionAdjustment[4].vertical = v24;
}

- (void)_decodeBadgeTitlePositionAdjustmentsFromCoder:(id)a3 prefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = @"Normal.BadgeTitlePosition";
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Normal.BadgeTitlePosition"];
  }

  v9 = v6;
  v10 = v8;
  if ([v9 containsValueForKey:v10])
  {
    [v9 decodeUIOffsetForKey:v10];
    v12 = v11;
    v14 = v13;
    v15 = 256;
  }

  else
  {
    v15 = 0;
    v12 = 0.0;
    v14 = 0.0;
  }

  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xFEFF | v15;
  if (v7)
  {

    badgeTitlePositionAdjustment = self->_badgeTitlePositionAdjustment;
    self->_badgeTitlePositionAdjustment[0].horizontal = v12;
    self->_badgeTitlePositionAdjustment[0].vertical = v14;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Highlighted.BadgeTitlePosition"];
  }

  else
  {
    badgeTitlePositionAdjustment = self->_badgeTitlePositionAdjustment;
    self->_badgeTitlePositionAdjustment[0].horizontal = v12;
    self->_badgeTitlePositionAdjustment[0].vertical = v14;
    v18 = @"Highlighted.BadgeTitlePosition";
  }

  v19 = v9;
  v20 = v18;
  if ([v19 containsValueForKey:v20])
  {
    [v19 decodeUIOffsetForKey:v20];
    v22 = v21;
    v24 = v23;
    v25 = 256;
  }

  else
  {
    v25 = 0;
    v22 = v12;
    v24 = v14;
  }

  *&stateFlags[2] = *&stateFlags[2] & 0xFEFF | v25;
  if (v7)
  {

    badgeTitlePositionAdjustment[1].horizontal = v22;
    badgeTitlePositionAdjustment[1].vertical = v24;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Selected.BadgeTitlePosition"];
  }

  else
  {
    badgeTitlePositionAdjustment[1].horizontal = v22;
    badgeTitlePositionAdjustment[1].vertical = v24;
    v26 = @"Selected.BadgeTitlePosition";
  }

  v27 = v19;
  v28 = v26;
  if ([v27 containsValueForKey:v28])
  {
    [v27 decodeUIOffsetForKey:v28];
    v30 = v29;
    v32 = v31;
    v33 = 256;
  }

  else
  {
    v33 = 0;
    v30 = v12;
    v32 = v14;
  }

  *&stateFlags[4] = *&stateFlags[4] & 0xFEFF | v33;
  if (v7)
  {

    badgeTitlePositionAdjustment[2].horizontal = v30;
    badgeTitlePositionAdjustment[2].vertical = v32;
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Disabled.BadgeTitlePosition"];
  }

  else
  {
    badgeTitlePositionAdjustment[2].horizontal = v30;
    badgeTitlePositionAdjustment[2].vertical = v32;
    v34 = @"Disabled.BadgeTitlePosition";
  }

  v35 = v27;
  v36 = v34;
  if ([v35 containsValueForKey:v36])
  {
    [v35 decodeUIOffsetForKey:v36];
    v12 = v37;
    v14 = v38;
    v39 = 256;
  }

  else
  {
    v39 = 0;
  }

  *&stateFlags[6] = *&stateFlags[6] & 0xFEFF | v39;
  if (v7)
  {

    badgeTitlePositionAdjustment[3].horizontal = v12;
    badgeTitlePositionAdjustment[3].vertical = v14;
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Focused.BadgeTitlePosition"];
  }

  else
  {
    badgeTitlePositionAdjustment[3].horizontal = v12;
    badgeTitlePositionAdjustment[3].vertical = v14;
    v40 = @"Focused.BadgeTitlePosition";
  }

  v45 = v35;
  v41 = v40;
  if ([v45 containsValueForKey:v41])
  {
    [v45 decodeUIOffsetForKey:v41];
    v22 = v42;
    v24 = v43;
    v44 = 256;
  }

  else
  {
    v44 = 0;
  }

  *&stateFlags[8] = *&stateFlags[8] & 0xFEFF | v44;
  if (v7)
  {
  }

  badgeTitlePositionAdjustment[4].horizontal = v22;
  badgeTitlePositionAdjustment[4].vertical = v24;
}

+ (id)decodeFromCoder:(id)a3 prefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = @"DefaultStyle";
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"DefaultStyle"];
  }

  if ([v6 containsValueForKey:v8])
  {
    v9 = [a1 standardItemDataForStyle:{objc_msgSend(v6, "decodeIntegerForKey:", v8)}];
  }

  else
  {
    v9 = objc_opt_new();
    if (v7)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"CustomizedStyle"];
      v9[2] = [v6 decodeIntegerForKey:v10];
    }

    else
    {
      v9[2] = [v6 decodeIntegerForKey:@"CustomizedStyle"];
    }

    [v9 _decodeTitleTextAttributesFromCoder:v6 prefix:v7];
    [v9 _decodeBadgeTextAttributesFromCoder:v6 prefix:v7];
    [v9 _decodeIconColorFromCoder:v6 prefix:v7];
    [v9 _decodeBadgeBackgroundColorFromCoder:v6 prefix:v7];
    [v9 _decodeTitlePositionAdjustmentsFromCoder:v6 prefix:v7];
    [v9 _decodeBadgePositionAdjustmentsFromCoder:v6 prefix:v7];
    [v9 _decodeBadgeTitlePositionAdjustmentsFromCoder:v6 prefix:v7];
  }

  return v9;
}

- (void)encodeToCoder:(id)a3 prefix:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  style = self->_style;
  if (_UITabBarItemStyleData[style] != self)
  {
    v10 = 0x1E696A000uLL;
    if (v7)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"CustomizedStyle"];
      [v6 encodeInteger:style forKey:v11];
    }

    else
    {
      [v6 encodeInteger:self->_style forKey:@"CustomizedStyle"];
    }

    v13 = 0;
    v14 = 8;
    v42[0] = xmmword_1E7127CB0;
    v42[1] = *off_1E7127CC0;
    v43 = @"Focused";
    while (1)
    {
      if (v8)
      {
        v15 = [*(v10 + 3776) stringWithFormat:@"%@.%@", v8, *(v42 + v13)];
      }

      else
      {
        v15 = *(v42 + v13);
      }

      v16 = v15;
      v17 = self->_titleTextAttributes[v13 / 8];
      if (!v17)
      {
        goto LABEL_14;
      }

      if (v15)
      {
        break;
      }

      [v6 _ui_encodeTextAttributes:self->_titleTextAttributes[v13 / 8] forKey:@"TitleTextAttributes"];
      v21 = self->_badgeTextAttributes[v13 / 8];
      if (!v21)
      {
        goto LABEL_21;
      }

      v22 = v6;
LABEL_20:
      [v22 _ui_encodeTextAttributes:v21 forKey:@"BadgeTextAttributes"];
LABEL_21:
      v23 = v10;
      stateFlags = self->_stateFlags;
      v25 = self->_stateFlags[v13 / 4];
      if ((v25 & 8) == 0)
      {
        goto LABEL_24;
      }

      v26 = self->_iconColor[v13 / 8];
      if (v16)
      {
        v27 = [*(v23 + 3776) stringWithFormat:@"%@.%@", v16, @"IconColor"];
        [v6 encodeObject:v26 forKey:v27];

        v25 = stateFlags[v13 / 4];
LABEL_24:
        if ((v25 & 0x20) == 0)
        {
          goto LABEL_31;
        }

        v28 = self->_badgeBackgroundColor[v13 / 8];
        if (v16)
        {
          v29 = [*(v23 + 3776) stringWithFormat:@"%@.%@", v16, @"BadgeBackgroundColor"];
          [v6 encodeObject:v28 forKey:v29];

          goto LABEL_31;
        }

        v31 = v6;
        v30 = self->_badgeBackgroundColor[v13 / 8];
        goto LABEL_30;
      }

      [v6 encodeObject:self->_iconColor[v13 / 8] forKey:@"IconColor"];
      if ((*&stateFlags[v13 / 4] & 0x20) == 0)
      {
        goto LABEL_31;
      }

      v30 = self->_badgeBackgroundColor[v13 / 8];
      v31 = v6;
LABEL_30:
      [v31 encodeObject:v30 forKey:@"BadgeBackgroundColor"];
LABEL_31:
      v32 = stateFlags[v13 / 4];
      if ((v32 & 4) == 0)
      {
        goto LABEL_37;
      }

      if (v16)
      {
        v41 = [*(v23 + 3776) stringWithFormat:@"%@.%@", v16, @"TitlePosition"];
        v33 = v41;
      }

      else
      {
        v33 = @"TitlePosition";
      }

      [v6 encodeUIOffset:v33 forKey:{*&self->_badgeBackgroundColor[v14 / 8 + 4], *(&self->_titlePositionAdjustment[0].horizontal + v14)}];
      if (v16)
      {

        v32 = stateFlags[v13 / 4];
LABEL_37:
        if ((v32 & 0x10) != 0)
        {
          if (v16)
          {
            [*(v23 + 3776) stringWithFormat:@"%@.%@", v16, @"BadgePosition"];
            v39 = v34 = 0;
            v35 = v39;
          }

          else
          {
LABEL_43:
            v34 = 1;
            v35 = @"BadgePosition";
          }

          [v6 encodeUIOffset:v35 forKey:{*(&self->_titlePositionAdjustment[4].vertical + v14), *(&self->_badgePositionAdjustment[0].horizontal + v14)}];
          if ((v34 & 1) == 0)
          {
          }
        }

        if ((*&stateFlags[v13 / 4] & 0x100) != 0)
        {
          v10 = v23;
          if (v16)
          {
            [*(v23 + 3776) stringWithFormat:@"%@.%@", v16, @"BadgeTitlePosition"];
            v40 = v36 = 0;
            v37 = v40;
          }

          else
          {
            v36 = 1;
            v37 = @"BadgeTitlePosition";
          }

LABEL_51:
          [v6 encodeUIOffset:v37 forKey:{*(&self->_badgePositionAdjustment[4].vertical + v14), *(&self->_badgeTitlePositionAdjustment[0].horizontal + v14)}];
          if ((v36 & 1) == 0)
          {
          }

          goto LABEL_53;
        }

        goto LABEL_47;
      }

      if ((*&stateFlags[v13 / 4] & 0x10) != 0)
      {
        goto LABEL_43;
      }

      if ((*&stateFlags[v13 / 4] & 0x100) != 0)
      {
        v36 = 1;
        v37 = @"BadgeTitlePosition";
        v10 = v23;
        goto LABEL_51;
      }

LABEL_47:
      v10 = v23;
LABEL_53:

      v14 += 16;
      v13 += 8;
      if (v14 == 88)
      {
        for (i = 32; i != -8; i -= 8)
        {
        }

        goto LABEL_56;
      }
    }

    v18 = [*(v10 + 3776) stringWithFormat:@"%@.%@", v15, @"TitleTextAttributes"];
    [v6 _ui_encodeTextAttributes:v17 forKey:v18];

LABEL_14:
    v19 = self->_badgeTextAttributes[v13 / 8];
    if (!v19)
    {
      goto LABEL_21;
    }

    if (v16)
    {
      v20 = [*(v10 + 3776) stringWithFormat:@"%@.%@", v16, @"BadgeTextAttributes"];
      [v6 _ui_encodeTextAttributes:v19 forKey:v20];

      goto LABEL_21;
    }

    v22 = v6;
    v21 = self->_badgeTextAttributes[v13 / 8];
    goto LABEL_20;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"DefaultStyle"];
    [v6 encodeInteger:style forKey:v12];
  }

  else
  {
    [v6 encodeInteger:self->_style forKey:@"DefaultStyle"];
  }

LABEL_56:
}

- (void)describeInto:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UITabBarItemData;
  [(_UIBarAppearanceData *)&v15 describeInto:v4];
  style = self->_style;
  if (style >= 5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%li)", self->_style];
  }

  else
  {
    v6 = off_1E7127CD8[style];
  }

  [v4 appendFormat:@" baseStyle=%@", v6];

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if (v8 <= 1)
    {
      v10 = @"normal";
      if (v8)
      {
        if (v8 == 1)
        {
          goto LABEL_22;
        }

LABEL_12:
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%li)", v8];
      }
    }

    else
    {
      if (v8 == 4)
      {
        v10 = @"focused";
        goto LABEL_15;
      }

      if (v8 == 3)
      {
        v10 = @"disabled";
        goto LABEL_15;
      }

      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v10 = @"selected";
    }

LABEL_15:
    objc_msgSend(v4, "appendFormat:", @" %@=(titleTextAttributes="), v10;

    _UIBADPrettyPrintTextAttributes(v4, self->_titleTextAttributes[v8]);
    stateFlags = self->_stateFlags;
    if ((*&self->_stateFlags[v7] & 4) != 0)
    {
      v12 = NSStringFromUIOffset(*&self->_badgeBackgroundColor[v9 + 4]);
      [v4 appendFormat:@", titlePositionAdjustment=%@", v12];
    }

    [v4 appendFormat:@", iconColor=%@", self->_iconColor[v8]];
    if ((*&stateFlags[v7] & 0x10) != 0)
    {
      v13 = NSStringFromUIOffset(*(&self->_titlePositionAdjustment[4].vertical + v9 * 8));
      [v4 appendFormat:@", badgePositionAdjustment=%@", v13];
    }

    [v4 appendFormat:@", badgeBackgroundColor=%@, badgeTextAttributes=", self->_badgeBackgroundColor[v8]];
    _UIBADPrettyPrintTextAttributes(v4, self->_badgeTextAttributes[v8]);
    if ((*&stateFlags[v7] & 0x100) != 0)
    {
      v14 = NSStringFromUIOffset(*(&self->_badgePositionAdjustment[4].vertical + v9 * 8));
      [v4 appendFormat:@", badgeTitlePositionAdjustment=%@", v14];
    }

    [v4 appendString:@""]);
LABEL_22:
    ++v8;
    v7 += 2;
    v9 += 2;
  }

  while (v8 != 5);
}

- (int64_t)hashInto:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = _UITabBarItemData;
  v4 = [(_UIBarAppearanceData *)&v9 hashInto:a3];
  v5 = self->_titleTextAttributes[0];
  if (v5)
  {
    v4 += [(NSDictionary *)v5 hash];
  }

  v6 = v4 << 8;
  v7 = self->_badgeTextAttributes[0];
  if (v7)
  {
    v6 = [(NSDictionary *)v7 hash]| v6;
  }

  return v6 << 8;
}

- (BOOL)checkEqualTo:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _UITabBarItemData;
  if ([(_UIBarAppearanceData *)&v26 checkEqualTo:v4]&& self->_style == v4[2])
  {
    v5 = 0;
    while (1)
    {
      v6 = vmovn_s64(vceqq_f64(self->_titlePositionAdjustment[v5], *&v4[2 * v5 + 23]));
      if ((v6.i32[0] & v6.i32[1] & 1) == 0)
      {
        break;
      }

      v7 = vmovn_s64(vceqq_f64(self->_badgePositionAdjustment[v5], *&v4[2 * v5 + 33]));
      if ((v7.i32[0] & v7.i32[1] & 1) == 0)
      {
        break;
      }

      v8 = vmovn_s64(vceqq_f64(self->_badgeTitlePositionAdjustment[v5], *&v4[2 * v5 + 43]));
      if ((v8.i32[0] & v8.i32[1] & 1) == 0)
      {
        break;
      }

      v9 = v4[v5 + 13];
      v10 = self->_iconColor[v5];
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_35:

          break;
        }

        v14 = [(UIColor *)v10 isEqual:v11];

        if (!v14)
        {
          break;
        }
      }

      v15 = v4[v5 + 18];
      v10 = self->_badgeBackgroundColor[v5];
      v16 = v15;
      v12 = v16;
      if (v10 == v16)
      {
      }

      else
      {
        if (!v10 || !v16)
        {
          goto LABEL_35;
        }

        v17 = [(UIColor *)v10 isEqual:v16];

        if (!v17)
        {
          break;
        }
      }

      v18 = v4[v5 + 3];
      v10 = self->_titleTextAttributes[v5];
      v19 = v18;
      v12 = v19;
      if (v10 == v19)
      {
      }

      else
      {
        if (!v10 || !v19)
        {
          goto LABEL_35;
        }

        v20 = [(UIColor *)v10 isEqual:v19];

        if (!v20)
        {
          break;
        }
      }

      v21 = v4[v5 + 8];
      v10 = self->_badgeTextAttributes[v5];
      v22 = v21;
      v12 = v22;
      if (v10 == v22)
      {
      }

      else
      {
        if (!v10 || !v22)
        {
          goto LABEL_35;
        }

        v23 = [(UIColor *)v10 isEqual:v22];

        if (!v23)
        {
          break;
        }
      }

      if (++v5 == 5)
      {
        v24 = 1;
        goto LABEL_37;
      }
    }
  }

  v24 = 0;
LABEL_37:

  return v24;
}

- (id)replicate
{
  v12.receiver = self;
  v12.super_class = _UITabBarItemData;
  v3 = [(_UIBarAppearanceData *)&v12 replicate];
  v4 = 0;
  v5 = 0;
  v3[2] = self->_style;
  v6 = v3 + 3;
  do
  {
    v7 = [(NSDictionary *)self->_titleTextAttributes[v5 / 2] copy];
    v8 = v6[v5 / 2];
    v6[v5 / 2] = v7;

    v9 = [(NSDictionary *)self->_badgeTextAttributes[v5 / 2] copy];
    v10 = v3[v5 / 2 + 8];
    v3[v5 / 2 + 8] = v9;

    objc_storeStrong(&v3[v5 / 2 + 13], self->_iconColor[v5 / 2]);
    objc_storeStrong(&v3[v5 / 2 + 18], self->_badgeBackgroundColor[v5 / 2]);
    *&v3[v4 / 8 + 23] = self->_titlePositionAdjustment[v4 / 0x10];
    *&v3[v4 / 8 + 33] = self->_badgePositionAdjustment[v4 / 0x10];
    *&v3[v4 / 8 + 43] = self->_badgeTitlePositionAdjustment[v4 / 0x10];
    v3[v5 / 2 + 53] = *&self->_stateFlags[v5];
    v5 += 2;
    v4 += 16;
  }

  while (v5 != 10);

  return v3;
}

- (id)_fallbackTitleFontForState:(int64_t)a3 compatibleWithTraitCollection:(id)a4
{
  v6 = a4;
  if (a3 == 4 && (*&self->_stateFlags[2] & 1) != 0)
  {
    v7 = [(NSDictionary *)self->_titleTextAttributes[1] objectForKeyedSubscript:*off_1E70EC918];
  }

  else
  {
    v7 = 0;
  }

  if (*self->_stateFlags)
  {
    v10 = [(NSDictionary *)self->_titleTextAttributes[0] objectForKeyedSubscript:*off_1E70EC918];

    v7 = v10;
    if (v10)
    {
LABEL_7:
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  v11 = _UISolariumEnabled();
  if (a3 == 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  style = self->_style;
  if (style > 2)
  {
    if ((style - 3) < 2)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (style)
  {
    if (style == 1)
    {
      v14 = off_1E70ECC18;
      v15 = &UIFontTextStyleFootnote;
      goto LABEL_28;
    }

    if (style == 2)
    {
      v14 = off_1E70ECC18;
      v15 = &UIFontTextStyleCaption1;
LABEL_28:
      v19 = *v15;
      if (v12)
      {
        [v14 _preferredFontForTextStyle:v19 weight:*off_1E70ECD30];
      }

      else
      {
        [v14 preferredFontForTextStyle:v19 compatibleWithTraitCollection:v6];
      }
      v20 = ;
      goto LABEL_34;
    }

LABEL_22:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UITabBarItemData _fallbackTitleFontForState:compatibleWithTraitCollection:]"];
    [v16 handleFailureInFunction:v17 file:@"_UITabBarItemData.m" lineNumber:439 description:{@"Unknown title style %li", self->_style}];

LABEL_23:
    v7 = 0;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_8:
    v8 = [v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

    v7 = v8;
    goto LABEL_9;
  }

  if (v12)
  {
    v18 = off_1E70ECD30;
  }

  else
  {
    v18 = off_1E70ECD20;
  }

  v20 = [off_1E70ECC18 systemFontOfSize:10.0 weight:*v18];
LABEL_34:
  v7 = v20;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (id)_fallbackTitleColorForState:(int64_t)a3
{
  if (a3 == 4 && (*&self->_stateFlags[2] & 2) != 0)
  {
    titleTextAttributes = &self->_titleTextAttributes[1];
  }

  else
  {
    if ((*self->_stateFlags & 2) == 0)
    {
      v5 = 0;

      return v5;
    }

    titleTextAttributes = self->_titleTextAttributes;
  }

  v5 = [(NSDictionary *)*titleTextAttributes objectForKeyedSubscript:*off_1E70EC920, v3];

  return v5;
}

- (id)_fallbackBadgeTitleFontForState:(int64_t)a3 compatibleWithTraitCollection:(id)a4
{
  v6 = a4;
  if (a3 == 4 && (*&self->_stateFlags[2] & 0x40) != 0)
  {
    v7 = [(NSDictionary *)self->_badgeTextAttributes[1] objectForKeyedSubscript:*off_1E70EC918];
  }

  else
  {
    v7 = 0;
  }

  if ((*self->_stateFlags & 0x40) != 0)
  {
    v8 = [(NSDictionary *)self->_badgeTextAttributes[0] objectForKeyedSubscript:*off_1E70EC918];

    v7 = v8;
  }

  if (!v7)
  {
    style = self->_style;
    if (style <= 1)
    {
      if (style <= 1)
      {
        v11 = off_1E70ECC18;
        v12 = 13.0;
        goto LABEL_19;
      }
    }

    else
    {
      switch(style)
      {
        case 2:
          v13 = [off_1E70ECC18 systemFontOfSize:10.0 weight:*off_1E70ECD20];
LABEL_20:
          v7 = v13;
          goto LABEL_21;
        case 3:
          v11 = off_1E70ECC18;
          v12 = 10.0;
          goto LABEL_19;
        case 4:
          v11 = off_1E70ECC18;
          v12 = 28.0;
LABEL_19:
          v13 = [v11 systemFontOfSize:v12];
          goto LABEL_20;
      }
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UITabBarItemData _fallbackBadgeTitleFontForState:compatibleWithTraitCollection:]"];
    [v15 handleFailureInFunction:v16 file:@"_UITabBarItemData.m" lineNumber:490 description:{@"Unknown title style %li", self->_style}];

    v7 = 0;
    goto LABEL_21;
  }

  if (v6)
  {
    v9 = [v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

    v7 = v9;
  }

LABEL_21:

  return v7;
}

- (id)_fallbackBadgeTitleColorForState:(int64_t)a3
{
  if (a3 == 4 && (*&self->_stateFlags[2] & 0x80) != 0)
  {
    v4 = self->_badgeTextAttributes[1];
  }

  else
  {
    if ((*self->_stateFlags & 0x80) == 0)
    {
      v3 = +[UIColor whiteColor];
      goto LABEL_8;
    }

    v4 = self->_badgeTextAttributes[0];
  }

  v3 = [(NSDictionary *)v4 objectForKeyedSubscript:*off_1E70EC920];
LABEL_8:

  return v3;
}

- (id)titleTextAttributesForState:(int64_t)a3 compatibleWithTraitCollection:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = &self->_stateFlags[2 * a3];
  if (*v8)
  {
    if (v6)
    {
      v10 = [(NSDictionary *)self->_titleTextAttributes[a3] objectForKeyedSubscript:*off_1E70EC918];
      v11 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v7];
      v12 = v11;
      if (v10 == v11)
      {
        v9 = 0;
      }

      else
      {
        v9 = v11;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [(_UITabBarItemData *)self _fallbackTitleFontForState:a3 compatibleWithTraitCollection:v6];
  }

  v13 = 0;
  if (a3 != 2 && (*v8 & 2) == 0)
  {
    v13 = [(_UITabBarItemData *)self _fallbackTitleColorForState:a3];
  }

  v14 = self->_titleTextAttributes[a3];
  if (v9 | v13)
  {
    v15 = [(NSDictionary *)v14 mutableCopy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [MEMORY[0x1E695DF90] dictionary];
    }

    v18 = v17;

    if (v9)
    {
      [(NSDictionary *)v18 setObject:v9 forKeyedSubscript:*off_1E70EC918];
    }

    if (v13)
    {
      [(NSDictionary *)v18 setObject:v13 forKeyedSubscript:*off_1E70EC920];
    }
  }

  else
  {
    v18 = v14;
  }

  return v18;
}

- (void)setTitleTextAttributes:(id)a3 forState:(int64_t)a4
{
  v7 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = [v7 objectForKeyedSubscript:*off_1E70EC918];
  stateFlags = self->_stateFlags;
  v10 = *&self->_stateFlags[2 * a4] & 0xFFFE;
  if (v8)
  {
    ++v10;
  }

  *&stateFlags[2 * a4] = v10;

  v11 = [v7 objectForKeyedSubscript:*off_1E70EC920];
  *&stateFlags[2 * a4] = *&stateFlags[2 * a4] & 0xFFFD | (2 * (v11 != 0));

  v12 = [v7 copy];
  v13 = self->_titleTextAttributes[a4];
  self->_titleTextAttributes[a4] = v12;
}

- (BOOL)titleTextAttributesSpecifyColorForState:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    if (!a3)
    {
      stateFlags = self->_stateFlags;
      return (*stateFlags >> 1) & 1;
    }

    if (a3 != 4)
    {
      LOBYTE(v4) = 0;
      return v4;
    }

    stateFlags = self->_stateFlags;
    if ((*&self[1].super._immutable & 2) == 0 && (*&self->_stateFlags[2] & 2) == 0)
    {
      return (*stateFlags >> 1) & 1;
    }
  }

  else
  {
    stateFlags = self->_stateFlags;
    if ((*&self->_stateFlags[2 * a3] & 2) == 0)
    {
      return (*stateFlags >> 1) & 1;
    }
  }

  LOBYTE(v4) = 1;
  return v4;
}

- (UIOffset)titlePositionAdjustmentForState:(int64_t)a3
{
  if ((*&self->_stateFlags[2 * a3] & 4) != 0)
  {
    titlePositionAdjustment = &self->_titlePositionAdjustment[a3];
  }

  else
  {
    if (a3 == 4 && (*&self->_stateFlags[2] & 4) != 0)
    {
      titlePositionAdjustment = &self->_titlePositionAdjustment[1];
      p_vertical = &self->_titlePositionAdjustment[1].vertical;
      goto LABEL_9;
    }

    if ((*self->_stateFlags & 4) != 0)
    {
      titlePositionAdjustment = self->_titlePositionAdjustment;
    }

    else
    {
      titlePositionAdjustment = &UIOffsetZero;
    }
  }

  p_vertical = &titlePositionAdjustment->vertical;
LABEL_9:
  v5 = *p_vertical;
  horizontal = titlePositionAdjustment->horizontal;
  result.vertical = v5;
  result.horizontal = horizontal;
  return result;
}

- (void)setTitlePositionAdjustment:(UIOffset)a3 forState:(int64_t)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = &self->_titlePositionAdjustment[a4];
  v8->horizontal = horizontal;
  v8->vertical = vertical;
  *&self->_stateFlags[2 * a4] |= 4u;
}

- (id)iconColorForState:(int64_t)a3
{
  if (a3 == 2 || (*&self->_stateFlags[2 * a3] & 8) != 0)
  {
    iconColor = &self->_iconColor[a3];
  }

  else if (a3 == 4 && (*&self->_stateFlags[2] & 8) != 0)
  {
    iconColor = &self->_iconColor[1];
  }

  else
  {
    if ((*self->_stateFlags & 8) == 0)
    {
      v4 = 0;

      return v4;
    }

    iconColor = self->_iconColor;
  }

  v4 = *iconColor;

  return v4;
}

- (void)setIconColor:(id)a3 forState:(int64_t)a4
{
  v7 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = self->_iconColor[a4];
  self->_iconColor[a4] = v7;

  *&self->_stateFlags[2 * a4] = *&self->_stateFlags[2 * a4] & 0xFFF7 | (8 * (v7 != 0));
}

- (UIOffset)badgePositionAdjustmentForState:(int64_t)a3
{
  if ((*&self->_stateFlags[2 * a3] & 0x10) != 0)
  {
    badgePositionAdjustment = &self->_badgePositionAdjustment[a3];
  }

  else
  {
    if (a3 == 4 && (*&self->_stateFlags[2] & 0x10) != 0)
    {
      badgePositionAdjustment = &self->_badgePositionAdjustment[1];
      p_vertical = &self->_badgePositionAdjustment[1].vertical;
      goto LABEL_9;
    }

    if ((*self->_stateFlags & 0x10) != 0)
    {
      badgePositionAdjustment = self->_badgePositionAdjustment;
    }

    else
    {
      badgePositionAdjustment = &UIOffsetZero;
    }
  }

  p_vertical = &badgePositionAdjustment->vertical;
LABEL_9:
  v5 = *p_vertical;
  horizontal = badgePositionAdjustment->horizontal;
  result.vertical = v5;
  result.horizontal = horizontal;
  return result;
}

- (void)setBadgePositionAdjustment:(UIOffset)a3 forState:(int64_t)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = &self->_badgePositionAdjustment[a4];
  v8->horizontal = horizontal;
  v8->vertical = vertical;
  *&self->_stateFlags[2 * a4] |= 0x10u;
}

- (id)badgeBackgroundColorForState:(int64_t)a3
{
  if ((*&self->_stateFlags[2 * a3] & 0x20) != 0)
  {
    v4 = self->_badgeBackgroundColor[a3];
  }

  else if (a3 == 4 && (*&self->_stateFlags[2] & 0x20) != 0)
  {
    v4 = self->_badgeBackgroundColor[1];
  }

  else
  {
    if ((*self->_stateFlags & 0x20) == 0)
    {
      if ((self->_style - 3) >= 2)
      {
        +[UIColor systemRedColor];
      }

      else
      {
        +[UIColor externalSystemRedColor];
      }
      v3 = ;
      goto LABEL_12;
    }

    v4 = self->_badgeBackgroundColor[0];
  }

  v3 = v4;
LABEL_12:

  return v3;
}

- (void)setBadgeBackgroundColor:(id)a3 forState:(int64_t)a4
{
  v7 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = self->_badgeBackgroundColor[a4];
  self->_badgeBackgroundColor[a4] = v7;

  *&self->_stateFlags[2 * a4] = *&self->_stateFlags[2 * a4] & 0xFFDF | (32 * (v7 != 0));
}

- (id)badgeTextAttributesForState:(int64_t)a3 compatibleWithTraitCollection:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = &self->_stateFlags[2 * a3];
  if ((*v8 & 0x40) != 0)
  {
    if (v6)
    {
      v10 = [(NSDictionary *)self->_badgeTextAttributes[a3] objectForKeyedSubscript:*off_1E70EC918];
      v11 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v7];
      v12 = v11;
      if (v10 == v11)
      {
        v9 = 0;
      }

      else
      {
        v9 = v11;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [(_UITabBarItemData *)self _fallbackBadgeTitleFontForState:a3 compatibleWithTraitCollection:v6];
  }

  if ((*v8 & 0x80) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [(_UITabBarItemData *)self _fallbackBadgeTitleColorForState:a3];
  }

  v14 = self->_badgeTextAttributes[a3];
  if (v9 | v13)
  {
    v15 = [(NSDictionary *)v14 mutableCopy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [MEMORY[0x1E695DF90] dictionary];
    }

    v18 = v17;

    if (v9)
    {
      [(NSDictionary *)v18 setObject:v9 forKeyedSubscript:*off_1E70EC918];
    }

    if (v13)
    {
      [(NSDictionary *)v18 setObject:v13 forKeyedSubscript:*off_1E70EC920];
    }
  }

  else
  {
    v18 = v14;
  }

  return v18;
}

- (void)setBadgeTextAttributes:(id)a3 forState:(int64_t)a4
{
  v7 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = [v7 objectForKeyedSubscript:*off_1E70EC918];
  *&self->_stateFlags[2 * a4] = *&self->_stateFlags[2 * a4] & 0xFFBF | ((v8 != 0) << 6);

  v9 = [v7 objectForKeyedSubscript:*off_1E70EC920];
  *&self->_stateFlags[2 * a4] = *&self->_stateFlags[2 * a4] & 0xFF7F | ((v9 != 0) << 7);

  v10 = [v7 copy];
  v11 = self->_badgeTextAttributes[a4];
  self->_badgeTextAttributes[a4] = v10;
}

- (UIOffset)badgeTitlePositionAdjustmentForState:(int64_t)a3
{
  if ((*&self->_stateFlags[2 * a3] & 0x100) != 0)
  {
    badgeTitlePositionAdjustment = &self->_badgeTitlePositionAdjustment[a3];
  }

  else
  {
    if (a3 == 4 && (*&self->_stateFlags[2] & 0x100) != 0)
    {
      badgeTitlePositionAdjustment = &self->_badgeTitlePositionAdjustment[1];
      p_vertical = &self->_badgeTitlePositionAdjustment[1].vertical;
      goto LABEL_9;
    }

    if ((*self->_stateFlags & 0x100) != 0)
    {
      badgeTitlePositionAdjustment = self->_badgeTitlePositionAdjustment;
    }

    else
    {
      badgeTitlePositionAdjustment = &UIOffsetZero;
    }
  }

  p_vertical = &badgeTitlePositionAdjustment->vertical;
LABEL_9:
  v5 = *p_vertical;
  horizontal = badgeTitlePositionAdjustment->horizontal;
  result.vertical = v5;
  result.horizontal = horizontal;
  return result;
}

- (void)setBadgeTitlePositionAdjustment:(UIOffset)a3 forState:(int64_t)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = &self->_badgeTitlePositionAdjustment[a4];
  v8->horizontal = horizontal;
  v8->vertical = vertical;
  *&self->_stateFlags[2 * a4] |= 0x100u;
}

@end