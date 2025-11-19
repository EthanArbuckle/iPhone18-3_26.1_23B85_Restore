@interface PKExpressBannerLeadingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (uint64_t)_metricsForSizeClass:(unsigned int)a3;
- (void)_finishTransition;
- (void)_setState:(void *)a3 withCompletion:;
- (void)_updateLayerState;
- (void)_updateSizeWithAnimationFactory:(uint64_t)a1;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation PKExpressBannerLeadingView

- (void)_updateSizeWithAnimationFactory:(uint64_t)a1
{
  v3 = a2;
  v20 = 0.0;
  v18 = 0u;
  v19 = 0u;
  [(PKExpressBannerLeadingView *)&v18 _metricsForSizeClass:a1, *(a1 + 460)];
  v4 = v18;
  v5 = *(a1 + 512) == *&v18 && *(a1 + 520) == *(&v18 + 1);
  if (!v5 || (*(a1 + 528) == *&v19 ? (v6 = *(a1 + 536) == *(&v19 + 1)) : (v6 = 0), !v6))
  {
    memset(&v17, 0, sizeof(v17));
    CATransform3DMakeScale(&v17, v20, v20, 1.0);
    memset(&v16, 0, sizeof(v16));
    v7 = *(a1 + 432);
    if (v7)
    {
      [v7 transform];
    }

    a = v17;
    v14 = v16;
    if (!CATransform3DEqualToTransform(&a, &v14))
    {
      if (v3)
      {
        v8 = [v3 springAnimationWithKeyPath:@"transform"];
        a = v16;
        v14 = v17;
        [v8 pkui_updateForAdditiveAnimationFromTransform:&a toTransform:&v14];
        v9 = [*(a1 + 432) pkui_addAdditiveAnimation:v8];
      }

      v10 = *(a1 + 432);
      a = v17;
      [v10 setTransform:&a];
    }

    v11 = v19;
    *(a1 + 512) = v18;
    *(a1 + 528) = v11;
    PKFloatRoundToPixel();
    *(a1 + 552) = v12;
    *(a1 + 568) = *&v4 - (v12 + *&v19);
    PKFloatRoundToPixel();
    *(a1 + 544) = v13;
    *(a1 + 560) = *(&v4 + 1) - (v13 + *(&v19 + 1));
    [a1 setNeedsLayout];
  }
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  transitionTimer = self->_transitionTimer;
  if (transitionTimer)
  {
    dispatch_source_cancel(transitionTimer);
    v4 = self->_transitionTimer;
    self->_transitionTimer = 0;
  }

  completions = self->_completions;
  if (completions)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = completions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11.receiver = self;
  v11.super_class = PKExpressBannerLeadingView;
  [(PKExpressBannerLeadingView *)&v11 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = self->_targetAlignmentSize.width;
  height = self->_targetAlignmentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PKExpressBannerLeadingView;
  [(PKExpressBannerLeadingView *)&v11 layoutSubviews];
  [(PKExpressBannerLeadingView *)self bounds];
  PKSizeAlignedInRect();
  v4 = v3 - self->_targetAlignmentInsets.left;
  v6 = v5 - self->_targetAlignmentInsets.top;
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  [(CALayer *)self->_contentLayer anchorPoint];
  [(CALayer *)self->_contentLayer setPosition:v4 + v9 * width, v6 + v10 * height];
}

- (uint64_t)_metricsForSizeClass:(unsigned int)a3
{
  v3 = result;
  v4 = MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (a3 < 3)
  {
    v5 = 1.79769313e308;
    v4 = (&unk_1BE117010 + 8 * a3);
  }

  if (*v4 <= 0.0 || v5 <= 0.0)
  {
    v8 = *(a2 + 60);
    v10 = *(a2 + 61);
    v11 = *(a2 + 62);
    v12 = *(a2 + 63);
    v6 = 1.0;
  }

  else
  {
    v6 = fmin(*v4 / a2[62], v5 / a2[63]);
    PKSizeRoundToPixel();
    v8 = v7;
    v10 = v9;
    result = PKSizeRoundToPixel();
  }

  *v3 = v8;
  *(v3 + 8) = v10;
  *(v3 + 16) = v11;
  *(v3 + 24) = v12;
  *(v3 + 32) = v6;
  return result;
}

- (void)_updateLayerState
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 456) - 1;
  if (v3 <= 3)
  {
    v4 = off_1E8025D48[v3];
    v5 = [*(a1 + 432) stateWithName:v4];
    if (v5)
    {
      LODWORD(v6) = 1.0;
      v9 = v5;
      [*(a1 + 448) setState:v5 ofLayer:*(a1 + 432) transitionSpeed:v6];
      v7 = v9;
      goto LABEL_8;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKExpressBannerLeadingView: could not find state with name %@.", buf, 0xCu);
    }
  }

  LODWORD(a2) = 1.0;
  [*(a1 + 448) setInitialStatesOfLayer:*(a1 + 432) transitionSpeed:a2];
  v7 = 0;
LABEL_8:
}

- (void)_setState:(void *)a3 withCompletion:
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (*(a1 + 456) == a2)
    {
      if (v5)
      {
        v7 = *(a1 + 472);
        if (v7)
        {
          v8 = _Block_copy(v5);
          [v7 addObject:v8];
        }

        else
        {
          (*(v5 + 2))(v5, 0);
        }
      }
    }

    else
    {
      *(a1 + 456) = a2;
      v9 = *(a1 + 464);
      if (v9)
      {
        dispatch_source_cancel(v9);
        v10 = *(a1 + 464);
        *(a1 + 464) = 0;
      }

      v11 = *(a1 + 472);
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      if (v6)
      {
        v13 = _Block_copy(v6);
        [v12 addObject:v13];
      }

      objc_storeStrong((a1 + 472), v12);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          v18 = 0;
          do
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            (*(*(*(&v31 + 1) + 8 * v18++) + 16))();
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v16);
      }

      v19 = *(a1 + 472);
      if (v12 == v19)
      {
        v21 = *(a1 + 456) - 1;
        if (v21 > 3)
        {
          [(PKExpressBannerLeadingView *)a1 _updateLayerState];
          [(PKExpressBannerLeadingView *)a1 _finishTransition];
        }

        else
        {
          v22 = qword_1BE117028[v21];
          [(PKExpressBannerLeadingView *)a1 _updateLayerState];
          v23 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
          v24 = *(a1 + 464);
          *(a1 + 464) = v23;

          v25 = *(a1 + 464);
          v26 = dispatch_time(0, v22);
          dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
          objc_initWeak(&location, a1);
          v27 = *(a1 + 464);
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __55__PKExpressBannerLeadingView__setState_withCompletion___block_invoke;
          v28[3] = &unk_1E8010998;
          objc_copyWeak(&v29, &location);
          dispatch_source_set_event_handler(v27, v28);
          dispatch_activate(*(a1 + 464));
          objc_destroyWeak(&v29);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __55__PKExpressBannerLeadingView__setState_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PKExpressBannerLeadingView *)WeakRetained _finishTransition];
    WeakRetained = v2;
  }
}

- (void)_finishTransition
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 464);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 464);
    *(a1 + 464) = 0;
  }

  v4 = *(a1 + 472);
  v5 = *(a1 + 472);
  *(a1 + 472) = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end