@interface TypistKeyboardEmoji
+ (BOOL)scrollEmojiKeyboard;
+ (id)findEmojiScrollView;
+ (void)resetSelectedCategory;
- (id)init:(id)init options:(id)options;
@end

@implementation TypistKeyboardEmoji

- (id)init:(id)init options:(id)options
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardEmoji;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:init options:options];
  [(TypistKeyboard *)self setUsePopupKeys:0];
  return self;
}

+ (void)resetSelectedCategory
{
  mEMORY[0x277D75670] = [MEMORY[0x277D75670] sharedInstance];
  [mEMORY[0x277D75670] setSelectedCategoryType:0];
  v2 = [MEMORY[0x277D75668] categoryForType:0];
  [mEMORY[0x277D75670] setEmojiCategoryDefaultsIndex:0 forCategory:v2];
}

+ (id)findEmojiScrollView
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__TypistKeyboardEmoji_findEmojiScrollView__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__TypistKeyboardEmoji_findEmojiScrollView__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75678] activeInstance];
  v3 = [v2 _layout];
  v4 = [v3 currentKeyplaneView];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = v4;
  obj = [v4 subviews];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      v18 = v6;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        NSClassFromString(&cfstr_Uikeyboardemoj.isa);
        if (objc_opt_isKindOfClass())
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = [v9 subviews];
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v21;
            do
            {
              v14 = 0;
              do
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v20 + 1) + 8 * v14);
                NSClassFromString(&cfstr_Uikeyboardemoj_0.isa);
                if (objc_opt_isKindOfClass())
                {
                  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v15);
                }

                ++v14;
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v12);
          }

          v6 = v18;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)scrollEmojiKeyboard
{
  v2 = +[TypistKeyboardEmoji findEmojiScrollView];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if (!v2)
  {
    goto LABEL_7;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3010000000;
  v29[3] = &unk_2701AD026;
  v30 = *MEMORY[0x277CBF348];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3010000000;
  v27[3] = &unk_2701AD026;
  v28 = v30;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__TypistKeyboardEmoji_scrollEmojiKeyboard__block_invoke;
  v13[3] = &unk_279DF4CA8;
  v16 = &v21;
  v4 = defaultCenter;
  v14 = v4;
  v15 = v2;
  v17 = &v35;
  v18 = &v31;
  v19 = v29;
  v20 = v27;
  [TypistKeyboardUtilities runOnMainThread:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__TypistKeyboardEmoji_scrollEmojiKeyboard__block_invoke_3;
  v12[3] = &unk_279DF4CD0;
  v12[4] = v29;
  v12[5] = v27;
  v5 = [MEMORY[0x277D44358] eventStreamWithEventActions:v12];
  date = [MEMORY[0x277CBEAA8] date];
  do
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSinceDate:date];
    v9 = v8;

    if (v9 > 30.0)
    {
      break;
    }

    [TypistKeyboardUtilities launchRecapWithSyntheticEventStream:v5];
    [TypistKeyboardUtilities waitFor:0.1];
  }

  while (*(v36 + 24) != 1);
  [v4 removeObserver:v22[5]];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);

  if (v36[3])
  {
    v10 = *(v32 + 24);
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v10 & 1;
}

void __42__TypistKeyboardEmoji_scrollEmojiKeyboard__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __42__TypistKeyboardEmoji_scrollEmojiKeyboard__block_invoke_2;
  v24[3] = &unk_279DF4C80;
  v26 = *(a1 + 56);
  v25 = *(a1 + 40);
  v5 = [v2 addObserverForName:@"DidEndSmoothScrolling" object:v3 queue:v4 usingBlock:v24];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 40) bounds];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v12 = CGRectGetMaxX(v27) + -10.0;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MidY = CGRectGetMidY(v28);
  v14 = *(*(a1 + 72) + 8);
  *(v14 + 32) = v12;
  *(v14 + 40) = MidY;
  [*(a1 + 40) convertPoint:0 toView:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40)}];
  v15 = *(*(a1 + 72) + 8);
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v18 = CGRectGetMinX(v29) + 10.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v19 = CGRectGetMidY(v30);
  v20 = *(*(a1 + 80) + 8);
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  [*(a1 + 40) convertPoint:0 toView:{*(*(*(a1 + 80) + 8) + 32), *(*(*(a1 + 80) + 8) + 40)}];
  v21 = *(*(a1 + 80) + 8);
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
}

uint64_t __42__TypistKeyboardEmoji_scrollEmojiKeyboard__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  [*(a1 + 32) frame];
  v3 = v2;
  [*(a1 + 32) contentOffset];
  v5 = v3 + v4;
  result = [*(a1 + 32) contentSize];
  *(*(*(a1 + 48) + 8) + 24) = v5 >= v7;
  return result;
}

void __42__TypistKeyboardEmoji_scrollEmojiKeyboard__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D44340];
  v14 = a2;
  v4 = [v3 touchScreenDigitizerSender];
  [v14 setSenderProperties:v4];

  v5 = NSStringFromCGPoint(*(*(*(a1 + 32) + 8) + 32));
  v13 = NSStringFromCGPoint(*(*(*(a1 + 40) + 8) + 32));
  TYLog(@"Scrolling emoji keyboard from %@ to %@", v6, v7, v8, v9, v10, v11, v12, v5);

  [v14 dragWithStartPoint:*(*(*(a1 + 32) + 8) + 32) endPoint:*(*(*(a1 + 32) + 8) + 40) duration:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), 0.1}];
}

@end