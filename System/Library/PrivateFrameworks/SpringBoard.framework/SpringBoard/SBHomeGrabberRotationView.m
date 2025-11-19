@interface SBHomeGrabberRotationView
- (SBHomeGrabberRotationView)initWithFrame:(CGRect)a3 settings:(id)a4 useRotationWrapperViews:(BOOL)a5;
- (id)_addWrapperViewWithOrientation:(int64_t)a3;
- (void)layoutSubviews;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4 rotationSettings:(id)a5;
@end

@implementation SBHomeGrabberRotationView

- (void)layoutSubviews
{
  v23 = *MEMORY[0x277D85DE8];
  [(SBHomeGrabberRotationView *)self bounds];
  if (self->_useRotationWrapperViews)
  {
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = self->_rotationWrapperViews;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v18 + 1) + 8 * v15++) setFrame:{v7, v8, v9, v10, v18}];
        }

        while (v13 != v15);
        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  grabberView = self->_grabberView;
  v17 = [(SBHomeGrabberView *)grabberView superview];
  [v17 bounds];
  [(SBHomeGrabberView *)grabberView setFrame:?];
}

- (SBHomeGrabberRotationView)initWithFrame:(CGRect)a3 settings:(id)a4 useRotationWrapperViews:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v22.receiver = self;
  v22.super_class = SBHomeGrabberRotationView;
  v12 = [(SBHomeGrabberRotationView *)&v22 initWithFrame:x, y, width, height];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] array];
    rotationWrapperViews = v12->_rotationWrapperViews;
    v12->_rotationWrapperViews = v13;

    v12->_orientation = 1;
    v15 = [SBHomeGrabberView alloc];
    [(SBHomeGrabberRotationView *)v12 bounds];
    v16 = [(SBHomeGrabberView *)v15 initWithFrame:v11 settings:1 shouldEnableGestures:?];
    grabberView = v12->_grabberView;
    v12->_grabberView = v16;

    v18 = [MEMORY[0x277D65E80] rootSettings];
    grabberSettings = v12->_grabberSettings;
    v12->_grabberSettings = v18;

    v12->_useRotationWrapperViews = v5;
    if (v5)
    {
      v20 = [(SBHomeGrabberRotationView *)v12 _addWrapperViewWithOrientation:v12->_orientation];
      [v20 addSubview:v12->_grabberView];
    }

    else
    {
      [(SBHomeGrabberRotationView *)v12 addSubview:v12->_grabberView];
    }
  }

  return v12;
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4 rotationSettings:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    v9 = [(NSMutableArray *)self->_rotationWrapperViews firstObject];
    if (v5)
    {
      v10 = [(SBHomeGrabberRotationView *)self _addWrapperViewWithOrientation:a3];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"grabberViewRotationFadeIn-%llu", ++setOrientation_animated_rotationSettings____animationCount];
      v12 = objc_opt_new();
      v13 = objc_opt_new();
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke;
      v44[3] = &unk_2783A9BD8;
      v14 = v12;
      v45 = v14;
      v15 = v13;
      v46 = v15;
      v47 = self;
      v16 = v11;
      v48 = v16;
      v17 = MEMORY[0x223D6F7F0](v44);
      v28 = MEMORY[0x277CF0D38];
      v18 = [(SBFHomeGrabberSettings *)self->_grabberSettings rotationFadeOutAnimationSettings];
      v19 = [v18 BSAnimationSettings];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke_2;
      v42[3] = &unk_2783A8C18;
      v43 = v9;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke_3;
      v36[3] = &unk_2783AA018;
      v36[4] = self;
      v37 = v16;
      v38 = v10;
      v39 = v43;
      v40 = v14;
      v20 = v17;
      v41 = v20;
      v30 = v14;
      v29 = v43;
      v21 = v10;
      v9 = v16;
      [v28 animateWithSettings:v19 actions:v42 completion:v36];

      [v8 delay];
      v23 = v22;
      [v8 duration];
      v24 = *MEMORY[0x277D76620];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke_5;
      v32[3] = &unk_2783AB990;
      v35 = v23 + v25;
      v33 = v15;
      v34 = v20;
      v26 = v20;
      v27 = v15;
      [v24 _performBlockAfterCATransactionCommits:v32];
    }

    else
    {
      SBFTransformFromOrientationToOrientation();
      [v9 setTransform:v31];
    }

    [(SBHomeGrabberRotationView *)self setNeedsLayout];
  }
}

void __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasBeenSignalled] && objc_msgSend(*(a1 + 40), "hasBeenSignalled"))
  {
    [*(*(a1 + 48) + 432) forgetBackgroundLuminance];
    if ([*(*(a1 + 48) + 416) resetAutoHideTimeOnRotation])
    {
      [*(*(a1 + 48) + 432) resetAutoHide];
    }

    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
    v4 = *(v2 + 432);
    v6 = [*(v2 + 416) rotationFadeInAnimationSettings];
    v5 = [v6 BSAnimationSettings];
    [v4 setHidden:0 forReason:v3 withAnimationSettings:v5];
  }
}

void __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setHidden:1 forReason:*(a1 + 40) withAnimationSettings:0];
  [*(*(a1 + 32) + 432) _removeAllAnimations:1];
  v2 = [*(*(a1 + 32) + 408) firstObject];
  v3 = *(a1 + 48);

  if (v2 == v3)
  {
    [*(a1 + 48) addSubview:*(*(a1 + 32) + 432)];
    [*(a1 + 32) setNeedsLayout];
  }

  [*(*(a1 + 32) + 408) removeObject:*(a1 + 56)];
  [*(a1 + 56) removeFromSuperview];
  v4 = *MEMORY[0x277D76620];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke_4;
  v5[3] = &unk_2783A98A0;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v4 _performBlockAfterCATransactionCommits:v5];
}

uint64_t __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) signal];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke_5(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke_6;
  v3[3] = &unk_2783A98A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
}

uint64_t __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) signal];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)_addWrapperViewWithOrientation:(int64_t)a3
{
  if (self->_useRotationWrapperViews)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(NSMutableArray *)self->_rotationWrapperViews insertObject:v4 atIndex:0];
    SBFTransformFromOrientationToOrientation();
    [v4 setTransform:&v6];
    [(SBHomeGrabberRotationView *)self addSubview:v4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end