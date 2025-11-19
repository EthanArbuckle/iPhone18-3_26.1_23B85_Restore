@interface UITraitCollection(Utilities)
+ (id)appearanceClassForType:()Utilities;
- (void)vk_performAsCurrent:()Utilities;
@end

@implementation UITraitCollection(Utilities)

+ (id)appearanceClassForType:()Utilities
{
  if (a3 == 1)
  {
    goto LABEL_4;
  }

  if (!a3)
  {
    a3 = 2;
LABEL_4:
    v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:a3];
    goto LABEL_6;
  }

  v3 = 0;
LABEL_6:
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = 2.0;
  if (v6 >= 2.0)
  {
    v7 = v6;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__UITraitCollection_Utilities__appearanceClassForType___block_invoke;
  v10[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
  *&v10[4] = v7;
  v8 = [v3 traitCollectionByModifyingTraits:v10];

  return v8;
}

- (void)vk_performAsCurrent:()Utilities
{
  if (a3)
  {
    return [a1 performAsCurrentTraitCollection:?];
  }

  return a1;
}

@end