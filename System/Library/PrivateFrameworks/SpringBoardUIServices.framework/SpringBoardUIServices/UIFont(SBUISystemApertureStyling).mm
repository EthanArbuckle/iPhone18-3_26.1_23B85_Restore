@interface UIFont(SBUISystemApertureStyling)
+ (id)sbui_systemAperturePreferredFontForTextStyle:()SBUISystemApertureStyling;
+ (id)sbui_systemAperturePreferredFontForTextStyle:()SBUISystemApertureStyling compatibleWithTraitCollection:;
+ (id)sbui_systemAperturePreferredTextButtonFont;
+ (id)sbui_systemAperturePreferredTextButtonFontCompatibleWithTraitCollection:()SBUISystemApertureStyling;
@end

@implementation UIFont(SBUISystemApertureStyling)

+ (id)sbui_systemAperturePreferredFontForTextStyle:()SBUISystemApertureStyling
{
  v5 = [MEMORY[0x1E69DD1B8] sbui_bestTraitCollection];
  v6 = [a1 sbui_systemAperturePreferredFontForTextStyle:a3 compatibleWithTraitCollection:v5];

  return v6;
}

+ (id)sbui_systemAperturePreferredFontForTextStyle:()SBUISystemApertureStyling compatibleWithTraitCollection:
{
  v5 = a4;
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = *MEMORY[0x1E69DB8C8];
  v8 = *MEMORY[0x1E69DB978];
  v9 = 0.0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v10 = MEMORY[0x1E69DDD80];
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_18;
        }

        v10 = MEMORY[0x1E69DDDC8];
      }
    }

    else
    {
      v10 = MEMORY[0x1E69DDD40];
    }

    v12 = *v10;

    v8 = *MEMORY[0x1E69DB970];
    goto LABEL_17;
  }

  if (a3 <= 4)
  {
    if (a3 != 3)
    {
      v8 = *MEMORY[0x1E69DB970];
      v9 = 14.5;
      goto LABEL_18;
    }

    v12 = *MEMORY[0x1E69DDD78];

LABEL_17:
    v6 = v12;
    goto LABEL_18;
  }

  if (a3 == 5)
  {
    v8 = *MEMORY[0x1E69DB980];
    v9 = 15.0;
  }

  else if (a3 == 6)
  {
    v11 = *MEMORY[0x1E69DB8D8];

    v8 = *MEMORY[0x1E69DB960];
    v9 = 13.0;
    v7 = v11;
  }

LABEL_18:
  if (v5)
  {
    [MEMORY[0x1E69DB880] _preferredFontDescriptorWithTextStyle:v6 addingSymbolicTraits:0 design:v7 weight:v5 compatibleWithTraitCollection:v8];
  }

  else
  {
    [MEMORY[0x1E69DB880] _preferredFontDescriptorWithTextStyle:v6 design:v7 weight:v8];
  }
  v13 = ;
  v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:v9];

  return v14;
}

+ (id)sbui_systemAperturePreferredTextButtonFont
{
  v2 = [MEMORY[0x1E69DD1B8] sbui_bestTraitCollection];
  v3 = [a1 sbui_systemAperturePreferredTextButtonFontCompatibleWithTraitCollection:v2];

  return v3;
}

+ (id)sbui_systemAperturePreferredTextButtonFontCompatibleWithTraitCollection:()SBUISystemApertureStyling
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 preferredContentSizeCategory];
    v7 = UIContentSizeCategoryClip(v6, *MEMORY[0x1E69DDC70], *MEMORY[0x1E69DDC50]);

    v8 = [v5 preferredContentSizeCategory];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v10 = MEMORY[0x1E69DD1B8];
      v16[0] = v5;
      v11 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v7];
      v16[1] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
      v13 = [v10 traitCollectionWithTraitsFromCollections:v12];

      v5 = v13;
    }
  }

  v14 = [a1 sbui_systemAperturePreferredFontForTextStyle:2 compatibleWithTraitCollection:v5];

  return v14;
}

@end