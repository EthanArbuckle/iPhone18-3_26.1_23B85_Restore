@interface TSDCanvasView(SXAccessibility)
- (id)_speakThisElements;
- (id)sxaxNextSpeakThisElementFromElement:()SXAccessibility;
- (uint64_t)_isInPreviewPlatter;
- (uint64_t)accessibilityElementsHidden;
@end

@implementation TSDCanvasView(SXAccessibility)

- (id)sxaxNextSpeakThisElementFromElement:()SXAccessibility
{
  v4 = a3;
  _speakThisElements = [self _speakThisElements];
  v6 = [_speakThisElements indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v6 >= [_speakThisElements count] - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [_speakThisElements objectAtIndexedSubscript:v6 + 1];
  }

  return v7;
}

- (uint64_t)accessibilityElementsHidden
{
  v3.receiver = self;
  v3.super_class = TSDCanvasView_0;
  if (objc_msgSendSuper2(&v3, sel_accessibilityElementsHidden))
  {
    return 1;
  }

  else
  {
    return [self _isInPreviewPlatter];
  }
}

- (id)_speakThisElements
{
  v32 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  controller = [self controller];
  canvas = [controller canvas];
  topLevelReps = [canvas topLevelReps];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = topLevelReps;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if ([v11 _accessibilityIsSpeakThisElement])
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  defaultSpeakScreenOptions = [MEMORY[0x1E69DB5C8] defaultSpeakScreenOptions];
  v13 = [self _accessibilityLeafDescendantsWithOptions:defaultSpeakScreenOptions];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * j);
        if ([v19 _accessibilityIsSpeakThisElement] && (objc_msgSend(array, "containsObject:", v19) & 1) == 0)
        {
          [array addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  [array sortUsingComparator:&__block_literal_global_49];
  v20 = [array copy];

  return v20;
}

- (uint64_t)_isInPreviewPlatter
{
  v2 = NSClassFromString(&cfstr_Uiplattertrans.isa);
  if (!v2)
  {
    v2 = NSClassFromString(&cfstr_Uiplatterview.isa);
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2;
  window = [self window];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__TSDCanvasView_SXAccessibility___isInPreviewPlatter__block_invoke;
  v9[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v9[4] = v3;
  v5 = [window _accessibilityFindSubviewDescendant:v9];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 valueForKey:@"sourceView"];
    if (v6)
    {
      v7 = [self isDescendantOfView:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end