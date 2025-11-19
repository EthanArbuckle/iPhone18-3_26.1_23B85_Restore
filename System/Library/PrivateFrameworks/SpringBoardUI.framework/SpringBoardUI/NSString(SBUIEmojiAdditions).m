@interface NSString(SBUIEmojiAdditions)
- (id)sbui_rangesOfEmojiTokens:()SBUIEmojiAdditions;
@end

@implementation NSString(SBUIEmojiAdditions)

- (id)sbui_rangesOfEmojiTokens:()SBUIEmojiAdditions
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  if (a3)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v5 = 0;
  }

  v26 = v5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v19 = 0;
  v20 = 0;
  v18 = "";
  [a1 length];
  CEMEnumerateEmojiTokensInStringWithBlock();
  if (a3 && v22[5])
  {
    v6 = v16[4];
    v7 = v16[5];
    if (v7 + v6 < [a1 length])
    {
      v8 = v16[4];
      v9 = v16[5];
      v10 = [a1 length];
      v34.length = v10 - (v16[4] + v16[5]);
      v11 = v22[5];
      v34.location = v9 + v8;
      v12 = NSStringFromRange(v34);
      [v11 addObject:v12];
    }

    *a3 = v22[5];
  }

  v13 = v28[5];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v13;
}

@end