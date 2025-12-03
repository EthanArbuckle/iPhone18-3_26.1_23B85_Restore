@interface _UITabBarItemData
+ (id)decodeFromCoder:(id)coder prefix:(id)prefix;
+ (id)standardItemDataForStyle:(int64_t)style;
- (BOOL)checkEqualTo:(id)to;
- (BOOL)titleTextAttributesSpecifyColorForState:(int64_t)state;
- (UIImageSymbolConfiguration)preferredSymbolConfiguration;
- (UIOffset)badgePositionAdjustmentForState:(int64_t)state;
- (UIOffset)badgeTitlePositionAdjustmentForState:(int64_t)state;
- (UIOffset)titlePositionAdjustmentForState:(int64_t)state;
- (id)_fallbackBadgeTitleColorForState:(int64_t)state;
- (id)_fallbackBadgeTitleFontForState:(int64_t)state compatibleWithTraitCollection:(id)collection;
- (id)_fallbackTitleColorForState:(int64_t)state;
- (id)_fallbackTitleFontForState:(int64_t)state compatibleWithTraitCollection:(id)collection;
- (id)badgeBackgroundColorForState:(int64_t)state;
- (id)badgeTextAttributesForState:(int64_t)state compatibleWithTraitCollection:(id)collection;
- (id)iconColorForState:(int64_t)state;
- (id)replicate;
- (id)titleTextAttributesForState:(int64_t)state compatibleWithTraitCollection:(id)collection;
- (int64_t)hashInto:(int64_t)into;
- (void)_decodeBadgeBackgroundColorFromCoder:(id)coder prefix:(id)prefix;
- (void)_decodeBadgePositionAdjustmentsFromCoder:(id)coder prefix:(id)prefix;
- (void)_decodeBadgeTextAttributesFromCoder:(id)coder prefix:(id)prefix;
- (void)_decodeBadgeTitlePositionAdjustmentsFromCoder:(id)coder prefix:(id)prefix;
- (void)_decodeIconColorFromCoder:(id)coder prefix:(id)prefix;
- (void)_decodeTitlePositionAdjustmentsFromCoder:(id)coder prefix:(id)prefix;
- (void)_decodeTitleTextAttributesFromCoder:(id)coder prefix:(id)prefix;
- (void)describeInto:(id)into;
- (void)encodeToCoder:(id)coder prefix:(id)prefix;
- (void)setBadgeBackgroundColor:(id)color forState:(int64_t)state;
- (void)setBadgePositionAdjustment:(UIOffset)adjustment forState:(int64_t)state;
- (void)setBadgeTextAttributes:(id)attributes forState:(int64_t)state;
- (void)setBadgeTitlePositionAdjustment:(UIOffset)adjustment forState:(int64_t)state;
- (void)setIconColor:(id)color forState:(int64_t)state;
- (void)setTitlePositionAdjustment:(UIOffset)adjustment forState:(int64_t)state;
- (void)setTitleTextAttributes:(id)attributes forState:(int64_t)state;
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

+ (id)standardItemDataForStyle:(int64_t)style
{
  if (style >= 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabBarItemData.m" lineNumber:45 description:{@"Unsupported style %li", style}];
  }

  v5 = _UITabBarItemStyleData[style];
  if (!v5)
  {
    v6 = objc_opt_new();
    v7 = _UITabBarItemStyleData[style];
    _UITabBarItemStyleData[style] = v6;

    v8 = _UITabBarItemStyleData[style];
    v8[2] = style;
    markReadOnly = [v8 markReadOnly];
    v5 = _UITabBarItemStyleData[style];
  }

  return v5;
}

- (void)_decodeTitleTextAttributesFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  if (prefixCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.TitleTextAttributes"];
    v8 = [coderCopy _ui_decodeTextAttributesForKey:v7];
  }

  else
  {
    v8 = [coderCopy _ui_decodeTextAttributesForKey:@"Normal.TitleTextAttributes"];
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

  if (prefixCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.TitleTextAttributes"];
    v17 = [coderCopy _ui_decodeTextAttributesForKey:v16];
  }

  else
  {
    v17 = [coderCopy _ui_decodeTextAttributesForKey:@"Highlighted.TitleTextAttributes"];
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

  if (prefixCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Selected.TitleTextAttributes"];
    v22 = [coderCopy _ui_decodeTextAttributesForKey:v21];
  }

  else
  {
    v22 = [coderCopy _ui_decodeTextAttributesForKey:@"Selected.TitleTextAttributes"];
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

  if (prefixCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.TitleTextAttributes"];
    v27 = [coderCopy _ui_decodeTextAttributesForKey:v26];
  }

  else
  {
    v27 = [coderCopy _ui_decodeTextAttributesForKey:@"Disabled.TitleTextAttributes"];
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

  if (prefixCopy)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.TitleTextAttributes"];
    v32 = [coderCopy _ui_decodeTextAttributesForKey:v31];
  }

  else
  {
    v32 = [coderCopy _ui_decodeTextAttributesForKey:@"Focused.TitleTextAttributes"];
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

- (void)_decodeBadgeTextAttributesFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  if (prefixCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.BadgeTextAttributes"];
    v8 = [coderCopy _ui_decodeTextAttributesForKey:v7];
  }

  else
  {
    v8 = [coderCopy _ui_decodeTextAttributesForKey:@"Normal.BadgeTextAttributes"];
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

  if (prefixCopy)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.BadgeTextAttributes"];
    v16 = [coderCopy _ui_decodeTextAttributesForKey:v15];
  }

  else
  {
    v16 = [coderCopy _ui_decodeTextAttributesForKey:@"Highlighted.BadgeTextAttributes"];
  }

  objc_storeStrong(badgeTextAttributes + 1, v16);
  v17 = [v16 objectForKeyedSubscript:v10];
  *&stateFlags[2] = *&stateFlags[2] & 0xFFBF | ((v17 != 0) << 6);

  v18 = [v16 objectForKeyedSubscript:v13];
  *&stateFlags[2] = *&stateFlags[2] & 0xFF7F | ((v18 != 0) << 7);

  if (prefixCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Selected.BadgeTextAttributes"];
    v20 = [coderCopy _ui_decodeTextAttributesForKey:v19];
  }

  else
  {
    v20 = [coderCopy _ui_decodeTextAttributesForKey:@"Selected.BadgeTextAttributes"];
  }

  objc_storeStrong(badgeTextAttributes + 2, v20);
  v21 = [v20 objectForKeyedSubscript:v10];
  *&stateFlags[4] = *&stateFlags[4] & 0xFFBF | ((v21 != 0) << 6);

  v22 = [v20 objectForKeyedSubscript:v13];
  *&stateFlags[4] = *&stateFlags[4] & 0xFF7F | ((v22 != 0) << 7);

  if (prefixCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.BadgeTextAttributes"];
    v24 = [coderCopy _ui_decodeTextAttributesForKey:v23];
  }

  else
  {
    v24 = [coderCopy _ui_decodeTextAttributesForKey:@"Disabled.BadgeTextAttributes"];
  }

  objc_storeStrong(badgeTextAttributes + 3, v24);
  v25 = [v24 objectForKeyedSubscript:v10];
  *&stateFlags[6] = *&stateFlags[6] & 0xFFBF | ((v25 != 0) << 6);

  v26 = [v24 objectForKeyedSubscript:v13];
  *&stateFlags[6] = *&stateFlags[6] & 0xFF7F | ((v26 != 0) << 7);

  if (prefixCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.BadgeTextAttributes"];
    v28 = [coderCopy _ui_decodeTextAttributesForKey:v27];
  }

  else
  {
    v28 = [coderCopy _ui_decodeTextAttributesForKey:@"Focused.BadgeTextAttributes"];
  }

  v29 = badgeTextAttributes[4];
  badgeTextAttributes[4] = v28;

  v30 = [v24 objectForKeyedSubscript:v10];
  *&stateFlags[6] = *&stateFlags[6] & 0xFFBF | ((v30 != 0) << 6);

  v31 = [v24 objectForKeyedSubscript:v13];
  *&stateFlags[6] = *&stateFlags[6] & 0xFF7F | ((v31 != 0) << 7);
}

- (void)_decodeIconColorFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v7 = objc_opt_class();
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.IconColor"];
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:@"Normal.IconColor"];
  }

  iconColor = self->_iconColor;
  objc_storeStrong(self->_iconColor, v9);
  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xFFF7 | (8 * (v9 != 0));
  v12 = objc_opt_class();
  if (prefixCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.IconColor"];
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
  }

  else
  {
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:@"Highlighted.IconColor"];
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
  if (prefixCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Selected.IconColor"];
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
  }

  else
  {
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:@"Selected.IconColor"];
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
  if (prefixCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.IconColor"];
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
  }

  else
  {
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:@"Disabled.IconColor"];
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
  if (prefixCopy)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.IconColor"];
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
  }

  else
  {
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:@"Focused.IconColor"];
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

- (void)_decodeBadgeBackgroundColorFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v7 = objc_opt_class();
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.BadgeBackgroundColor"];
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:@"Normal.BadgeBackgroundColor"];
  }

  badgeBackgroundColor = self->_badgeBackgroundColor;
  objc_storeStrong(self->_badgeBackgroundColor, v9);
  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xFFDF | (32 * (v9 != 0));
  v12 = objc_opt_class();
  if (prefixCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.BadgeBackgroundColor"];
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
  }

  else
  {
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:@"Highlighted.BadgeBackgroundColor"];
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
  if (prefixCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Selected.BadgeBackgroundColor"];
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
  }

  else
  {
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:@"Selected.BadgeBackgroundColor"];
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
  if (prefixCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.BadgeBackgroundColor"];
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
  }

  else
  {
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:@"Disabled.BadgeBackgroundColor"];
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
  if (prefixCopy)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.BadgeBackgroundColor"];
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
  }

  else
  {
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:@"Focused.BadgeBackgroundColor"];
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

- (void)_decodeTitlePositionAdjustmentsFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v8 = @"Normal.TitlePosition";
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.TitlePosition"];
  }

  v9 = coderCopy;
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
  if (prefixCopy)
  {

    titlePositionAdjustment = self->_titlePositionAdjustment;
    self->_titlePositionAdjustment[0].horizontal = v12;
    self->_titlePositionAdjustment[0].vertical = v14;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.TitlePosition"];
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
  if (prefixCopy)
  {

    titlePositionAdjustment[1].horizontal = v22;
    titlePositionAdjustment[1].vertical = v24;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Selected.TitlePosition"];
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
  if (prefixCopy)
  {

    titlePositionAdjustment[2].horizontal = v30;
    titlePositionAdjustment[2].vertical = v32;
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.TitlePosition"];
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
  if (prefixCopy)
  {

    titlePositionAdjustment[3].horizontal = v12;
    titlePositionAdjustment[3].vertical = v14;
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.TitlePosition"];
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
  if (prefixCopy)
  {
  }

  titlePositionAdjustment[4].horizontal = v22;
  titlePositionAdjustment[4].vertical = v24;
}

- (void)_decodeBadgePositionAdjustmentsFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v8 = @"Normal.BadgePosition";
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.BadgePosition"];
  }

  v9 = coderCopy;
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
  if (prefixCopy)
  {

    badgePositionAdjustment = self->_badgePositionAdjustment;
    self->_badgePositionAdjustment[0].horizontal = v12;
    self->_badgePositionAdjustment[0].vertical = v14;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.BadgePosition"];
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
  if (prefixCopy)
  {

    badgePositionAdjustment[1].horizontal = v22;
    badgePositionAdjustment[1].vertical = v24;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Selected.BadgePosition"];
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
  if (prefixCopy)
  {

    badgePositionAdjustment[2].horizontal = v30;
    badgePositionAdjustment[2].vertical = v32;
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.BadgePosition"];
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
  if (prefixCopy)
  {

    badgePositionAdjustment[3].horizontal = v12;
    badgePositionAdjustment[3].vertical = v14;
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.BadgePosition"];
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
  if (prefixCopy)
  {
  }

  badgePositionAdjustment[4].horizontal = v22;
  badgePositionAdjustment[4].vertical = v24;
}

- (void)_decodeBadgeTitlePositionAdjustmentsFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v8 = @"Normal.BadgeTitlePosition";
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.BadgeTitlePosition"];
  }

  v9 = coderCopy;
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
  if (prefixCopy)
  {

    badgeTitlePositionAdjustment = self->_badgeTitlePositionAdjustment;
    self->_badgeTitlePositionAdjustment[0].horizontal = v12;
    self->_badgeTitlePositionAdjustment[0].vertical = v14;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.BadgeTitlePosition"];
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
  if (prefixCopy)
  {

    badgeTitlePositionAdjustment[1].horizontal = v22;
    badgeTitlePositionAdjustment[1].vertical = v24;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Selected.BadgeTitlePosition"];
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
  if (prefixCopy)
  {

    badgeTitlePositionAdjustment[2].horizontal = v30;
    badgeTitlePositionAdjustment[2].vertical = v32;
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.BadgeTitlePosition"];
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
  if (prefixCopy)
  {

    badgeTitlePositionAdjustment[3].horizontal = v12;
    badgeTitlePositionAdjustment[3].vertical = v14;
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.BadgeTitlePosition"];
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
  if (prefixCopy)
  {
  }

  badgeTitlePositionAdjustment[4].horizontal = v22;
  badgeTitlePositionAdjustment[4].vertical = v24;
}

+ (id)decodeFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v8 = @"DefaultStyle";
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"DefaultStyle"];
  }

  if ([coderCopy containsValueForKey:v8])
  {
    v9 = [self standardItemDataForStyle:{objc_msgSend(coderCopy, "decodeIntegerForKey:", v8)}];
  }

  else
  {
    v9 = objc_opt_new();
    if (prefixCopy)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"CustomizedStyle"];
      v9[2] = [coderCopy decodeIntegerForKey:v10];
    }

    else
    {
      v9[2] = [coderCopy decodeIntegerForKey:@"CustomizedStyle"];
    }

    [v9 _decodeTitleTextAttributesFromCoder:coderCopy prefix:prefixCopy];
    [v9 _decodeBadgeTextAttributesFromCoder:coderCopy prefix:prefixCopy];
    [v9 _decodeIconColorFromCoder:coderCopy prefix:prefixCopy];
    [v9 _decodeBadgeBackgroundColorFromCoder:coderCopy prefix:prefixCopy];
    [v9 _decodeTitlePositionAdjustmentsFromCoder:coderCopy prefix:prefixCopy];
    [v9 _decodeBadgePositionAdjustmentsFromCoder:coderCopy prefix:prefixCopy];
    [v9 _decodeBadgeTitlePositionAdjustmentsFromCoder:coderCopy prefix:prefixCopy];
  }

  return v9;
}

- (void)encodeToCoder:(id)coder prefix:(id)prefix
{
  v44 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  prefixCopy = prefix;
  v8 = prefixCopy;
  style = self->_style;
  if (_UITabBarItemStyleData[style] != self)
  {
    v10 = 0x1E696A000uLL;
    if (prefixCopy)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"CustomizedStyle"];
      [coderCopy encodeInteger:style forKey:v11];
    }

    else
    {
      [coderCopy encodeInteger:self->_style forKey:@"CustomizedStyle"];
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

      [coderCopy _ui_encodeTextAttributes:self->_titleTextAttributes[v13 / 8] forKey:@"TitleTextAttributes"];
      v21 = self->_badgeTextAttributes[v13 / 8];
      if (!v21)
      {
        goto LABEL_21;
      }

      v22 = coderCopy;
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
        [coderCopy encodeObject:v26 forKey:v27];

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
          [coderCopy encodeObject:v28 forKey:v29];

          goto LABEL_31;
        }

        v31 = coderCopy;
        v30 = self->_badgeBackgroundColor[v13 / 8];
        goto LABEL_30;
      }

      [coderCopy encodeObject:self->_iconColor[v13 / 8] forKey:@"IconColor"];
      if ((*&stateFlags[v13 / 4] & 0x20) == 0)
      {
        goto LABEL_31;
      }

      v30 = self->_badgeBackgroundColor[v13 / 8];
      v31 = coderCopy;
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

      [coderCopy encodeUIOffset:v33 forKey:{*&self->_badgeBackgroundColor[v14 / 8 + 4], *(&self->_titlePositionAdjustment[0].horizontal + v14)}];
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

          [coderCopy encodeUIOffset:v35 forKey:{*(&self->_titlePositionAdjustment[4].vertical + v14), *(&self->_badgePositionAdjustment[0].horizontal + v14)}];
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
          [coderCopy encodeUIOffset:v37 forKey:{*(&self->_badgePositionAdjustment[4].vertical + v14), *(&self->_badgeTitlePositionAdjustment[0].horizontal + v14)}];
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
    [coderCopy _ui_encodeTextAttributes:v17 forKey:v18];

LABEL_14:
    v19 = self->_badgeTextAttributes[v13 / 8];
    if (!v19)
    {
      goto LABEL_21;
    }

    if (v16)
    {
      v20 = [*(v10 + 3776) stringWithFormat:@"%@.%@", v16, @"BadgeTextAttributes"];
      [coderCopy _ui_encodeTextAttributes:v19 forKey:v20];

      goto LABEL_21;
    }

    v22 = coderCopy;
    v21 = self->_badgeTextAttributes[v13 / 8];
    goto LABEL_20;
  }

  if (prefixCopy)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"DefaultStyle"];
    [coderCopy encodeInteger:style forKey:v12];
  }

  else
  {
    [coderCopy encodeInteger:self->_style forKey:@"DefaultStyle"];
  }

LABEL_56:
}

- (void)describeInto:(id)into
{
  intoCopy = into;
  v15.receiver = self;
  v15.super_class = _UITabBarItemData;
  [(_UIBarAppearanceData *)&v15 describeInto:intoCopy];
  style = self->_style;
  if (style >= 5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%li)", self->_style];
  }

  else
  {
    v6 = off_1E7127CD8[style];
  }

  [intoCopy appendFormat:@" baseStyle=%@", v6];

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
    objc_msgSend(intoCopy, "appendFormat:", @" %@=(titleTextAttributes="), v10;

    _UIBADPrettyPrintTextAttributes(intoCopy, self->_titleTextAttributes[v8]);
    stateFlags = self->_stateFlags;
    if ((*&self->_stateFlags[v7] & 4) != 0)
    {
      v12 = NSStringFromUIOffset(*&self->_badgeBackgroundColor[v9 + 4]);
      [intoCopy appendFormat:@", titlePositionAdjustment=%@", v12];
    }

    [intoCopy appendFormat:@", iconColor=%@", self->_iconColor[v8]];
    if ((*&stateFlags[v7] & 0x10) != 0)
    {
      v13 = NSStringFromUIOffset(*(&self->_titlePositionAdjustment[4].vertical + v9 * 8));
      [intoCopy appendFormat:@", badgePositionAdjustment=%@", v13];
    }

    [intoCopy appendFormat:@", badgeBackgroundColor=%@, badgeTextAttributes=", self->_badgeBackgroundColor[v8]];
    _UIBADPrettyPrintTextAttributes(intoCopy, self->_badgeTextAttributes[v8]);
    if ((*&stateFlags[v7] & 0x100) != 0)
    {
      v14 = NSStringFromUIOffset(*(&self->_badgePositionAdjustment[4].vertical + v9 * 8));
      [intoCopy appendFormat:@", badgeTitlePositionAdjustment=%@", v14];
    }

    [intoCopy appendString:@""]);
LABEL_22:
    ++v8;
    v7 += 2;
    v9 += 2;
  }

  while (v8 != 5);
}

- (int64_t)hashInto:(int64_t)into
{
  v9.receiver = self;
  v9.super_class = _UITabBarItemData;
  v4 = [(_UIBarAppearanceData *)&v9 hashInto:into];
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

- (BOOL)checkEqualTo:(id)to
{
  toCopy = to;
  v26.receiver = self;
  v26.super_class = _UITabBarItemData;
  if ([(_UIBarAppearanceData *)&v26 checkEqualTo:toCopy]&& self->_style == toCopy[2])
  {
    v5 = 0;
    while (1)
    {
      v6 = vmovn_s64(vceqq_f64(self->_titlePositionAdjustment[v5], *&toCopy[2 * v5 + 23]));
      if ((v6.i32[0] & v6.i32[1] & 1) == 0)
      {
        break;
      }

      v7 = vmovn_s64(vceqq_f64(self->_badgePositionAdjustment[v5], *&toCopy[2 * v5 + 33]));
      if ((v7.i32[0] & v7.i32[1] & 1) == 0)
      {
        break;
      }

      v8 = vmovn_s64(vceqq_f64(self->_badgeTitlePositionAdjustment[v5], *&toCopy[2 * v5 + 43]));
      if ((v8.i32[0] & v8.i32[1] & 1) == 0)
      {
        break;
      }

      v9 = toCopy[v5 + 13];
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

      v15 = toCopy[v5 + 18];
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

      v18 = toCopy[v5 + 3];
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

      v21 = toCopy[v5 + 8];
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
  replicate = [(_UIBarAppearanceData *)&v12 replicate];
  v4 = 0;
  v5 = 0;
  replicate[2] = self->_style;
  v6 = replicate + 3;
  do
  {
    v7 = [(NSDictionary *)self->_titleTextAttributes[v5 / 2] copy];
    v8 = v6[v5 / 2];
    v6[v5 / 2] = v7;

    v9 = [(NSDictionary *)self->_badgeTextAttributes[v5 / 2] copy];
    v10 = replicate[v5 / 2 + 8];
    replicate[v5 / 2 + 8] = v9;

    objc_storeStrong(&replicate[v5 / 2 + 13], self->_iconColor[v5 / 2]);
    objc_storeStrong(&replicate[v5 / 2 + 18], self->_badgeBackgroundColor[v5 / 2]);
    *&replicate[v4 / 8 + 23] = self->_titlePositionAdjustment[v4 / 0x10];
    *&replicate[v4 / 8 + 33] = self->_badgePositionAdjustment[v4 / 0x10];
    *&replicate[v4 / 8 + 43] = self->_badgeTitlePositionAdjustment[v4 / 0x10];
    replicate[v5 / 2 + 53] = *&self->_stateFlags[v5];
    v5 += 2;
    v4 += 16;
  }

  while (v5 != 10);

  return replicate;
}

- (id)_fallbackTitleFontForState:(int64_t)state compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (state == 4 && (*&self->_stateFlags[2] & 1) != 0)
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
      if (!collectionCopy)
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
  if (state == 2)
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
        [v14 preferredFontForTextStyle:v19 compatibleWithTraitCollection:collectionCopy];
      }
      v20 = ;
      goto LABEL_34;
    }

LABEL_22:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UITabBarItemData _fallbackTitleFontForState:compatibleWithTraitCollection:]"];
    [currentHandler handleFailureInFunction:v17 file:@"_UITabBarItemData.m" lineNumber:439 description:{@"Unknown title style %li", self->_style}];

LABEL_23:
    v7 = 0;
    if (!collectionCopy)
    {
      goto LABEL_9;
    }

LABEL_8:
    v8 = [v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:collectionCopy];

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
  if (collectionCopy)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (id)_fallbackTitleColorForState:(int64_t)state
{
  if (state == 4 && (*&self->_stateFlags[2] & 2) != 0)
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

- (id)_fallbackBadgeTitleFontForState:(int64_t)state compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (state == 4 && (*&self->_stateFlags[2] & 0x40) != 0)
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UITabBarItemData _fallbackBadgeTitleFontForState:compatibleWithTraitCollection:]"];
    [currentHandler handleFailureInFunction:v16 file:@"_UITabBarItemData.m" lineNumber:490 description:{@"Unknown title style %li", self->_style}];

    v7 = 0;
    goto LABEL_21;
  }

  if (collectionCopy)
  {
    v9 = [v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:collectionCopy];

    v7 = v9;
  }

LABEL_21:

  return v7;
}

- (id)_fallbackBadgeTitleColorForState:(int64_t)state
{
  if (state == 4 && (*&self->_stateFlags[2] & 0x80) != 0)
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

- (id)titleTextAttributesForState:(int64_t)state compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = collectionCopy;
  v8 = &self->_stateFlags[2 * state];
  if (*v8)
  {
    if (collectionCopy)
    {
      v10 = [(NSDictionary *)self->_titleTextAttributes[state] objectForKeyedSubscript:*off_1E70EC918];
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
    v9 = [(_UITabBarItemData *)self _fallbackTitleFontForState:state compatibleWithTraitCollection:collectionCopy];
  }

  v13 = 0;
  if (state != 2 && (*v8 & 2) == 0)
  {
    v13 = [(_UITabBarItemData *)self _fallbackTitleColorForState:state];
  }

  v14 = self->_titleTextAttributes[state];
  if (v9 | v13)
  {
    v15 = [(NSDictionary *)v14 mutableCopy];
    v16 = v15;
    if (v15)
    {
      dictionary = v15;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v18 = dictionary;

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

- (void)setTitleTextAttributes:(id)attributes forState:(int64_t)state
{
  attributesCopy = attributes;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = [attributesCopy objectForKeyedSubscript:*off_1E70EC918];
  stateFlags = self->_stateFlags;
  v10 = *&self->_stateFlags[2 * state] & 0xFFFE;
  if (v8)
  {
    ++v10;
  }

  *&stateFlags[2 * state] = v10;

  v11 = [attributesCopy objectForKeyedSubscript:*off_1E70EC920];
  *&stateFlags[2 * state] = *&stateFlags[2 * state] & 0xFFFD | (2 * (v11 != 0));

  v12 = [attributesCopy copy];
  v13 = self->_titleTextAttributes[state];
  self->_titleTextAttributes[state] = v12;
}

- (BOOL)titleTextAttributesSpecifyColorForState:(int64_t)state
{
  if ((state - 1) >= 3)
  {
    if (!state)
    {
      stateFlags = self->_stateFlags;
      return (*stateFlags >> 1) & 1;
    }

    if (state != 4)
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
    if ((*&self->_stateFlags[2 * state] & 2) == 0)
    {
      return (*stateFlags >> 1) & 1;
    }
  }

  LOBYTE(v4) = 1;
  return v4;
}

- (UIOffset)titlePositionAdjustmentForState:(int64_t)state
{
  if ((*&self->_stateFlags[2 * state] & 4) != 0)
  {
    titlePositionAdjustment = &self->_titlePositionAdjustment[state];
  }

  else
  {
    if (state == 4 && (*&self->_stateFlags[2] & 4) != 0)
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

- (void)setTitlePositionAdjustment:(UIOffset)adjustment forState:(int64_t)state
{
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = &self->_titlePositionAdjustment[state];
  v8->horizontal = horizontal;
  v8->vertical = vertical;
  *&self->_stateFlags[2 * state] |= 4u;
}

- (id)iconColorForState:(int64_t)state
{
  if (state == 2 || (*&self->_stateFlags[2 * state] & 8) != 0)
  {
    iconColor = &self->_iconColor[state];
  }

  else if (state == 4 && (*&self->_stateFlags[2] & 8) != 0)
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

- (void)setIconColor:(id)color forState:(int64_t)state
{
  colorCopy = color;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = self->_iconColor[state];
  self->_iconColor[state] = colorCopy;

  *&self->_stateFlags[2 * state] = *&self->_stateFlags[2 * state] & 0xFFF7 | (8 * (colorCopy != 0));
}

- (UIOffset)badgePositionAdjustmentForState:(int64_t)state
{
  if ((*&self->_stateFlags[2 * state] & 0x10) != 0)
  {
    badgePositionAdjustment = &self->_badgePositionAdjustment[state];
  }

  else
  {
    if (state == 4 && (*&self->_stateFlags[2] & 0x10) != 0)
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

- (void)setBadgePositionAdjustment:(UIOffset)adjustment forState:(int64_t)state
{
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = &self->_badgePositionAdjustment[state];
  v8->horizontal = horizontal;
  v8->vertical = vertical;
  *&self->_stateFlags[2 * state] |= 0x10u;
}

- (id)badgeBackgroundColorForState:(int64_t)state
{
  if ((*&self->_stateFlags[2 * state] & 0x20) != 0)
  {
    v4 = self->_badgeBackgroundColor[state];
  }

  else if (state == 4 && (*&self->_stateFlags[2] & 0x20) != 0)
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

- (void)setBadgeBackgroundColor:(id)color forState:(int64_t)state
{
  colorCopy = color;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = self->_badgeBackgroundColor[state];
  self->_badgeBackgroundColor[state] = colorCopy;

  *&self->_stateFlags[2 * state] = *&self->_stateFlags[2 * state] & 0xFFDF | (32 * (colorCopy != 0));
}

- (id)badgeTextAttributesForState:(int64_t)state compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = collectionCopy;
  v8 = &self->_stateFlags[2 * state];
  if ((*v8 & 0x40) != 0)
  {
    if (collectionCopy)
    {
      v10 = [(NSDictionary *)self->_badgeTextAttributes[state] objectForKeyedSubscript:*off_1E70EC918];
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
    v9 = [(_UITabBarItemData *)self _fallbackBadgeTitleFontForState:state compatibleWithTraitCollection:collectionCopy];
  }

  if ((*v8 & 0x80) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [(_UITabBarItemData *)self _fallbackBadgeTitleColorForState:state];
  }

  v14 = self->_badgeTextAttributes[state];
  if (v9 | v13)
  {
    v15 = [(NSDictionary *)v14 mutableCopy];
    v16 = v15;
    if (v15)
    {
      dictionary = v15;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v18 = dictionary;

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

- (void)setBadgeTextAttributes:(id)attributes forState:(int64_t)state
{
  attributesCopy = attributes;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = [attributesCopy objectForKeyedSubscript:*off_1E70EC918];
  *&self->_stateFlags[2 * state] = *&self->_stateFlags[2 * state] & 0xFFBF | ((v8 != 0) << 6);

  v9 = [attributesCopy objectForKeyedSubscript:*off_1E70EC920];
  *&self->_stateFlags[2 * state] = *&self->_stateFlags[2 * state] & 0xFF7F | ((v9 != 0) << 7);

  v10 = [attributesCopy copy];
  v11 = self->_badgeTextAttributes[state];
  self->_badgeTextAttributes[state] = v10;
}

- (UIOffset)badgeTitlePositionAdjustmentForState:(int64_t)state
{
  if ((*&self->_stateFlags[2 * state] & 0x100) != 0)
  {
    badgeTitlePositionAdjustment = &self->_badgeTitlePositionAdjustment[state];
  }

  else
  {
    if (state == 4 && (*&self->_stateFlags[2] & 0x100) != 0)
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

- (void)setBadgeTitlePositionAdjustment:(UIOffset)adjustment forState:(int64_t)state
{
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = &self->_badgeTitlePositionAdjustment[state];
  v8->horizontal = horizontal;
  v8->vertical = vertical;
  *&self->_stateFlags[2 * state] |= 0x100u;
}

@end