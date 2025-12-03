@interface TIKeyboardCandidate(UIKitSupplementalItemExtras)
- (BOOL)ui_hasSupplementalItems;
- (id)ui_supplementalItems;
@end

@implementation TIKeyboardCandidate(UIKitSupplementalItemExtras)

- (BOOL)ui_hasSupplementalItems
{
  supplementalItemIdentifiers = [self supplementalItemIdentifiers];
  v2 = [supplementalItemIdentifiers count] != 0;

  return v2;
}

- (id)ui_supplementalItems
{
  v16 = *MEMORY[0x1E69E9840];
  if ([self ui_hasSupplementalItems])
  {
    supplementalItemIdentifiers = [self supplementalItemIdentifiers];
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(supplementalItemIdentifiers, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = supplementalItemIdentifiers;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = supplementalItem([*(*(&v11 + 1) + 8 * i) unsignedLongLongValue]);
          if (v9)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

@end