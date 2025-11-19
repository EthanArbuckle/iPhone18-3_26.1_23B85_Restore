@interface PKPGSVTransitionInterstitialItem
- (id)initWithView:(id *)a1;
- (void)beginTrackingWithConfiguration:(void *)a3 handler:;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKPGSVTransitionInterstitialItem

- (id)initWithView:(id *)a1
{
  result = a2;
  v5 = result;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (result)
  {
    v30.receiver = a1;
    v30.super_class = PKPGSVTransitionInterstitialItem;
    v6 = objc_msgSendSuper2(&v30, sel_init);
    a1 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 1, a2);
      *(a1 + 16) = [a1[1] isHidden];
      v7 = objc_alloc(MEMORY[0x1E69DCA78]);
      [v5 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [MEMORY[0x1E69DCA80] preferredFormat];
      v17 = [v7 initWithBounds:v16 format:{v9, v11, v13, v15}];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __49__PKPGSVTransitionInterstitialItem_initWithView___block_invoke;
      v28[3] = &unk_1E8023A48;
      v29 = v5;
      v18 = [v17 imageWithActions:v28];
      v19 = a1[3];
      a1[3] = v18;

      v20 = a1[3];
      [a1[1] alignmentRectInsets];
      v21 = [v20 imageWithAlignmentRectInsets:?];
      v22 = a1[3];
      a1[3] = v21;

      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = a1[4];
      a1[4] = v23;

      v25 = MEMORY[0x1E69DD250];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __49__PKPGSVTransitionInterstitialItem_initWithView___block_invoke_3;
      v26[3] = &unk_1E8010970;
      a1 = a1;
      v27 = a1;
      [v25 performWithoutAnimation:v26];
    }

LABEL_5:

    return a1;
  }

  __break(1u);
  return result;
}

void __49__PKPGSVTransitionInterstitialItem_initWithView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) traitCollection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PKPGSVTransitionInterstitialItem_initWithView___block_invoke_2;
  v6[3] = &unk_1E8010A10;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  PKUIPerformWithEffectiveTraitCollection(v4, v6);
}

void __49__PKPGSVTransitionInterstitialItem_initWithView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 renderInContext:{objc_msgSend(*(a1 + 40), "CGContext")}];
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v3 = self->_view;
    viewWasHidden = self->_viewWasHidden;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PKPGSVTransitionInterstitialItem_dealloc__block_invoke;
    block[3] = &unk_1E8013F80;
    v8 = v3;
    v9 = viewWasHidden;
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v6.receiver = self;
  v6.super_class = PKPGSVTransitionInterstitialItem;
  [(PKPGSVTransitionInterstitialItem *)&v6 dealloc];
}

void __43__PKPGSVTransitionInterstitialItem_dealloc__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__PKPGSVTransitionInterstitialItem_dealloc__block_invoke_2;
  v3[3] = &unk_1E8013F80;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 performWithoutAnimation:v3];
}

- (void)beginTrackingWithConfiguration:(void *)a3 handler:
{
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    __break(1u);
LABEL_13:
    v21 = *MEMORY[0x1E695EFF8];
    v22 = *(MEMORY[0x1E695EFF8] + 8);
    [*(a1 + 24) size];
    [v4 setFrame:{v21, v22, v23, v24}];
    goto LABEL_6;
  }

  v3 = v7;
  v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
  if (*(a1 + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 + 24);
  }

  v4 = [v8 initWithImage:v9];
  if (*(a1 + 40) == 1)
  {
    goto LABEL_13;
  }

LABEL_6:
  [*(a1 + 8) anchorPoint];
  [v4 setAnchorPoint:?];
  [v4 setHidden:1];
  if (a2)
  {
    v10 = [v4 layer];
    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v11 setName:@"gaussianBlur"];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:8.33333333];
    [v11 setValue:v12 forKey:@"inputRadius"];

    v34[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    [v10 setFilters:v13];
  }

  [v4 pkui_setAlpha:0 animated:0.0];
  if (*(a1 + 40) == 1)
  {
    (v3)[2](v3, v4, &__block_literal_global_241);
  }

  else
  {
    [*(a1 + 32) addObject:v4];
    objc_initWeak(&location, a1);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__PKPGSVTransitionInterstitialItem_beginTrackingWithConfiguration_handler___block_invoke_2;
    aBlock[3] = &unk_1E80110E0;
    objc_copyWeak(&v32, &location);
    v14 = v4;
    v31 = v14;
    v15 = _Block_copy(aBlock);
    v16 = objc_alloc(MEMORY[0x1E69B8798]);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __75__PKPGSVTransitionInterstitialItem_beginTrackingWithConfiguration_handler___block_invoke_3;
    v28[3] = &unk_1E8010B50;
    v17 = v15;
    v29 = v17;
    v18 = [v16 initWithBlock:v28];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __75__PKPGSVTransitionInterstitialItem_beginTrackingWithConfiguration_handler___block_invoke_4;
    v25[3] = &unk_1E8010DD0;
    v19 = v18;
    v26 = v19;
    v20 = v17;
    v27 = v20;
    (v3)[2](v3, v14, v25);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

void __75__PKPGSVTransitionInterstitialItem_beginTrackingWithConfiguration_handler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) setImage:0];
    [v3[4] removeObjectIdenticalTo:*(a1 + 32)];
    WeakRetained = v3;
  }
}

uint64_t __75__PKPGSVTransitionInterstitialItem_beginTrackingWithConfiguration_handler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 40) & 1) == 0)
  {
    *(a1 + 40) = 1;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__PKPGSVTransitionInterstitialItem_invalidate__block_invoke;
    v11[3] = &unk_1E8010970;
    v11[4] = a1;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v11];
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * i) setImage:{0, v7}];
        }

        v4 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

@end