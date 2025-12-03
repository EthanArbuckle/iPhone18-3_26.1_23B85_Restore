@interface SKUISlideshowAnimator
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation SKUISlideshowAnimator

- (double)transitionDuration:(id)duration
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUISlideshowAnimator *)v3 transitionDuration:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0.400000006;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISlideshowAnimator *)v5 animateTransition:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v14 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  view = [v14 view];
  view2 = [v13 view];
  containerView = [transitionCopy containerView];
  [transitionCopy finalFrameForViewController:v14];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [view setAlpha:0.0];
  [view setFrame:{v19, v21, v23, v25}];
  [containerView insertSubview:view aboveSubview:view2];
  v26 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:2020 privateStyle:{v19, v21, v23, v25}];
  [v26 setAlpha:0.0];
  [v26 setAutoresizingMask:18];
  [containerView addSubview:v26];
  imageView = self->_imageView;
  [(UIImageView *)imageView frame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  superview = [(UIImageView *)self->_imageView superview];
  [containerView convertRect:superview fromView:{v29, v31, v33, v35}];
  [(UIImageView *)imageView setFrame:?];

  [containerView addSubview:self->_imageView];
  v37 = MEMORY[0x277D75D18];
  [(SKUISlideshowAnimator *)self transitionDuration:transitionCopy];
  v39 = v38;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __43__SKUISlideshowAnimator_animateTransition___block_invoke;
  v52[3] = &unk_2781FDE88;
  v53 = v26;
  selfCopy = self;
  v55 = v19;
  v56 = v21;
  v57 = v23;
  v58 = v25;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __43__SKUISlideshowAnimator_animateTransition___block_invoke_2;
  v43[3] = &unk_2781FFB88;
  v48 = v19;
  v49 = v21;
  v50 = v23;
  v51 = v25;
  v44 = view;
  selfCopy2 = self;
  v46 = v53;
  v47 = transitionCopy;
  v40 = transitionCopy;
  v41 = v53;
  v42 = view;
  [v37 animateWithDuration:v52 animations:v43 completion:v39];
}

uint64_t __43__SKUISlideshowAnimator_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

uint64_t __43__SKUISlideshowAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 32) setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [*(*(a1 + 40) + 8) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(a1 + 48) removeFromSuperview];
  v4 = *(a1 + 56);

  return [v4 completeTransition:1];
}

@end