@interface UIAnimatedAttachmentView
@end

@implementation UIAnimatedAttachmentView

void __63___UIAnimatedAttachmentView_cachedObjectWithKey_creationBlock___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:5 valueOptions:5];
  v1 = qword_1ED4A2350;
  qword_1ED4A2350 = v0;
}

id __48___UIAnimatedAttachmentView_initWithAttachment___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E6979390] animationWithKeyPath:@"contents"];
  v32 = v1;
  v3 = CGImageSourceCreateWithData(v1, 0);
  Count = CGImageSourceGetCount(v3);
  v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count + 1];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count + 1];
  v31 = v2;
  if (Count)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E696E0E8];
    key = *MEMORY[0x1E696DB70];
    v35 = *MEMORY[0x1E696DB80];
    v33 = *MEMORY[0x1E696DB68];
    v34 = *MEMORY[0x1E696DEB0];
    v9 = 0.0;
    do
    {
      valuePtr = 0.0;
      *&v40 = v8;
      v39[0] = MEMORY[0x1E695E118];
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v40 count:{1, v31, v32}];
      v11 = CGImageSourceCopyPropertiesAtIndex(v3, v7, v10);

      if (v11)
      {
        Value = CFDictionaryGetValue(v11, key);
        if (Value || (Value = CFDictionaryGetValue(v11, v34)) != 0)
        {
          v13 = Value;
          v14 = CFDictionaryGetValue(Value, v35);
          if (v14 || (v14 = CFDictionaryGetValue(v13, v33)) != 0)
          {
            CFNumberGetValue(v14, kCFNumberFloatType, &valuePtr);
          }
        }

        CFRelease(v11);
        v15 = valuePtr;
      }

      else
      {
        v15 = 0.0;
      }

      if (v15 >= 0.011)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0.100000001;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, v7, 0);
      [v37 addObject:ImageAtIndex];

      v18 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      [v5 addObject:v18];

      v9 = v9 + v16;
      ++v7;
    }

    while (Count != v7);
  }

  else
  {
    v9 = 0.0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v19 = v5;
  v20 = [v19 countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v41;
    v23 = 0.0;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = [MEMORY[0x1E696AD98] numberWithDouble:{v23, v31}];
        [v6 addObject:v26];

        [v25 doubleValue];
        v23 = v23 + v27 / v9;
      }

      v21 = [v19 countByEnumeratingWithState:&v40 objects:v39 count:16];
    }

    while (v21);
  }

  [v6 addObject:&unk_1EFE2EFB8];
  v28 = [v37 firstObject];
  [v37 addObject:v28];

  [v31 setValues:v37];
  [v31 setKeyTimes:v6];
  [v31 setDuration:v9];
  LODWORD(v29) = 2139095039;
  [v31 setRepeatCount:v29];
  [v31 setFillMode:*MEMORY[0x1E69797E0]];
  [v31 setCalculationMode:*MEMORY[0x1E69795A0]];
  [v31 setRemovedOnCompletion:0];
  [v31 setBeginTimeMode:*MEMORY[0x1E6979588]];
  CFRelease(v3);

  return v31;
}

@end