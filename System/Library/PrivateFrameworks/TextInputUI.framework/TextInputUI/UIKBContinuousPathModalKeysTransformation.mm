@interface UIKBContinuousPathModalKeysTransformation
+ (id)_donorControlKeysForLastDisplayRowForKeyplane:(id)keyplane transformationContext:(id)context;
+ (id)_donorKeyplaneForKeyplane:(id)keyplane transformationContext:(id)context;
+ (id)rollbackKeyplane:(id)keyplane withTransformationContext:(id)context;
+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context;
@end

@implementation UIKBContinuousPathModalKeysTransformation

+ (id)rollbackKeyplane:(id)keyplane withTransformationContext:(id)context
{
  keyplaneCopy = keyplane;
  keys = [keyplaneCopy keys];
  [keys enumerateObjectsUsingBlock:&__block_literal_global_25];

  return keyplaneCopy;
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

+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context
{
  keyplaneCopy = keyplane;
  keys = [keyplaneCopy keys];
  [keys enumerateObjectsUsingBlock:&__block_literal_global_3175];

  return keyplaneCopy;
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

+ (id)_donorControlKeysForLastDisplayRowForKeyplane:(id)keyplane transformationContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [self _donorKeyplaneForKeyplane:keyplane transformationContext:context];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [&unk_1F03D8F60 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(&unk_1F03D8F60);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 firstCachedKeyWithName:v10];
        if (v11)
        {
          firstObject = v11;
        }

        else
        {
          v13 = [v4 keysByKeyName:v10];
          firstObject = [v13 firstObject];

          if (!firstObject)
          {
            continue;
          }
        }

        [orderedSet addObject:firstObject];
      }

      v7 = [&unk_1F03D8F60 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return orderedSet;
}

+ (id)_donorKeyplaneForKeyplane:(id)keyplane transformationContext:(id)context
{
  contextCopy = context;
  alternateKeyplaneName = [keyplane alternateKeyplaneName];
  activeKeyboard = [contextCopy activeKeyboard];

  v8 = [activeKeyboard subtreeWithName:alternateKeyplaneName];

  return v8;
}

@end