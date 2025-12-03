@interface SKUISlideshowDismissalAnimator
- (CGRect)imageRect;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation SKUISlideshowDismissalAnimator

- (double)transitionDuration:(id)duration
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUISlideshowDismissalAnimator *)v3 transitionDuration:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0.25;
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
        [(SKUISlideshowDismissalAnimator *)v5 animateTransition:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v14 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  view = [v14 view];
  view2 = [v13 view];
  containerView = [transitionCopy containerView];
  [transitionCopy finalFrameForViewController:v14];
  [view setFrame:?];
  [view2 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(UIImageView *)self->_imageView frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  superview = [(UIImageView *)self->_imageView superview];
  [containerView convertRect:superview fromView:{v27, v29, v31, v33}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  [view2 setAlpha:0.0];
  v43 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:2020 privateStyle:{v19, v21, v23, v25}];
  [v43 setAlpha:1.0];
  [v43 setAutoresizingMask:18];
  [containerView addSubview:v43];
  [(UIImageView *)self->_imageView setFrame:self->_imageRect.origin.x, self->_imageRect.origin.y, self->_imageRect.size.width, self->_imageRect.size.height];
  [containerView addSubview:self->_imageView];
  v44 = MEMORY[0x277D75D18];
  [(SKUISlideshowDismissalAnimator *)self transitionDuration:transitionCopy];
  v46 = v45;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __52__SKUISlideshowDismissalAnimator_animateTransition___block_invoke;
  v54[3] = &unk_2781FDE88;
  v55 = v43;
  selfCopy = self;
  v57 = v36;
  v58 = v38;
  v59 = v40;
  v60 = v42;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __52__SKUISlideshowDismissalAnimator_animateTransition___block_invoke_2;
  v50[3] = &unk_2781FBFC0;
  v50[4] = self;
  v51 = v55;
  v52 = view2;
  v53 = transitionCopy;
  v47 = transitionCopy;
  v48 = view2;
  v49 = v55;
  [v44 animateWithDuration:v54 animations:v50 completion:v46];
}

uint64_t __52__SKUISlideshowDismissalAnimator_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

uint64_t __52__SKUISlideshowDismissalAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  v4 = *(a1 + 56);

  return [v4 completeTransition:1];
}

- (CGRect)imageRect
{
  x = self->_imageRect.origin.x;
  y = self->_imageRect.origin.y;
  width = self->_imageRect.size.width;
  height = self->_imageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end