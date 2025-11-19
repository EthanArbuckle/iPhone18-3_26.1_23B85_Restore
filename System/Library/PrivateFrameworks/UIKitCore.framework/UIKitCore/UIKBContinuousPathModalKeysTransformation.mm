@interface UIKBContinuousPathModalKeysTransformation
+ (id)_donorControlKeysForLastDisplayRowForKeyplane:(id)a3 transformationContext:(id)a4;
+ (id)_donorKeyplaneForKeyplane:(id)a3 transformationContext:(id)a4;
+ (id)rollbackKeyplane:(id)a3 withTransformationContext:(id)a4;
+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4;
@end

@implementation UIKBContinuousPathModalKeysTransformation

+ (id)_donorKeyplaneForKeyplane:(id)a3 transformationContext:(id)a4
{
  v5 = a4;
  v6 = [a3 alternateKeyplaneName];
  v7 = [v5 activeKeyboard];

  v8 = [v7 subtreeWithName:v6];

  return v8;
}

+ (id)_donorControlKeysForLastDisplayRowForKeyplane:(id)a3 transformationContext:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a1 _donorKeyplaneForKeyplane:a3 transformationContext:a4];
  v5 = [MEMORY[0x1E695DFA0] orderedSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [&unk_1EFE2CD60 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(&unk_1EFE2CD60);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 firstCachedKeyWithName:v10];
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v13 = [v4 keysByKeyName:v10];
          v12 = [v13 firstObject];

          if (!v12)
          {
            continue;
          }
        }

        [v5 addObject:v12];
      }

      v7 = [&unk_1EFE2CD60 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v4 = a3;
  v5 = [v4 keys];
  [v5 enumerateObjectsUsingBlock:&__block_literal_global_399];

  return v4;
}

void __89__UIKBContinuousPathModalKeysTransformation_transformKeyplane_withTransformationContext___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 supportsSupplementalDisplayString])
  {
    if ([v2 displayType])
    {
      if ([v2 displayType] == 7)
      {
        v3 = [v2 secondaryRepresentedStrings];
        v4 = [v3 count];

        v5 = [v2 secondaryRepresentedStrings];
        v6 = v5;
        v7 = v4 - 2;
        if (v4 < 2)
        {
          v8 = [v5 lastObject];
          v10[0] = v8;
          v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
          [v2 setSecondaryDisplayStrings:v9];
        }

        else
        {
          v8 = [v5 subarrayWithRange:{v7, 2}];
          [v2 setSecondaryDisplayStrings:v8];
        }
      }
    }

    else
    {
      [v2 setDisplayType:7];
    }
  }
}

+ (id)rollbackKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v4 = a3;
  v5 = [v4 keys];
  [v5 enumerateObjectsUsingBlock:&__block_literal_global_25_6];

  return v4;
}

void __88__UIKBContinuousPathModalKeysTransformation_rollbackKeyplane_withTransformationContext___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 supportsSupplementalDisplayString])
  {
    v3 = [v2 secondaryRepresentedStrings];
    v4 = [v3 count];

    if (v4 < 2)
    {
      if ([v2 displayType] == 7)
      {
        [v2 setDisplayType:0];
      }
    }

    else
    {
      v5 = [v2 secondaryRepresentedStrings];
      v6 = [v5 firstObject];
      v8[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [v2 setSecondaryDisplayStrings:v7];
    }
  }
}

@end