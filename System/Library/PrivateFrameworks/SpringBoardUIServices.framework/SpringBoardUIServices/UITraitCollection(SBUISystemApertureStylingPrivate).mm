@interface UITraitCollection(SBUISystemApertureStylingPrivate)
+ (id)sbui_bestTraitCollection;
+ (id)sbui_traitCollectionForElement:()SBUISystemApertureStylingPrivate;
- (id)sbui_preferredContentSizeCategoryAllowingTraitsForCustomLayoutMode:()SBUISystemApertureStylingPrivate;
- (id)sbui_traitCollectionAllowingTraitsForCustomLayoutMode:()SBUISystemApertureStylingPrivate;
@end

@implementation UITraitCollection(SBUISystemApertureStylingPrivate)

+ (id)sbui_bestTraitCollection
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = +[SBUISystemApertureElementSource openSources];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) systemApertureElement];
        if (v7)
        {
          v8 = v7;
          v9 = [a1 sbui_traitCollectionForElement:v7];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_11:

  return v9;
}

+ (id)sbui_traitCollectionForElement:()SBUISystemApertureStylingPrivate
{
  v3 = a3;
  v4 = [v3 traitCollection];
  v5 = [v3 activeLayoutMode];

  v6 = [v4 sbui_traitCollectionAllowingTraitsForCustomLayoutMode:v5 == 4];

  return v6;
}

- (id)sbui_preferredContentSizeCategoryAllowingTraitsForCustomLayoutMode:()SBUISystemApertureStylingPrivate
{
  v5 = *MEMORY[0x1E69DDC70];
  if (a3)
  {
    v6 = [a1 preferredContentSizeCategory];
    v7 = UIContentSizeCategoryClip(v6, v5, *MEMORY[0x1E69DDC50]);

    v5 = v7;
  }

  return v5;
}

- (id)sbui_traitCollectionAllowingTraitsForCustomLayoutMode:()SBUISystemApertureStylingPrivate
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = [a1 sbui_preferredContentSizeCategoryAllowingTraitsForCustomLayoutMode:?];
  v3 = a1;
  v4 = [v3 preferredContentSizeCategory];
  v5 = [v4 isEqualToString:v2];

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E69DD1B8];
    v11[0] = v3;
    v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v2];
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v9 = [v6 traitCollectionWithTraitsFromCollections:v8];

    v3 = v9;
  }

  return v3;
}

@end