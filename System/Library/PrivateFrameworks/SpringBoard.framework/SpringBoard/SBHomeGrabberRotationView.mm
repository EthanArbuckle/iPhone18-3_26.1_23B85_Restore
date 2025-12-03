@interface SBHomeGrabberRotationView
- (SBHomeGrabberRotationView)initWithFrame:(CGRect)frame settings:(id)settings useRotationWrapperViews:(BOOL)views;
- (id)_addWrapperViewWithOrientation:(int64_t)orientation;
- (void)layoutSubviews;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated rotationSettings:(id)settings;
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
  superview = [(SBHomeGrabberView *)grabberView superview];
  [superview bounds];
  [(SBHomeGrabberView *)grabberView setFrame:?];
}

- (SBHomeGrabberRotationView)initWithFrame:(CGRect)frame settings:(id)settings useRotationWrapperViews:(BOOL)views
{
  viewsCopy = views;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  v22.receiver = self;
  v22.super_class = SBHomeGrabberRotationView;
  height = [(SBHomeGrabberRotationView *)&v22 initWithFrame:x, y, width, height];
  if (height)
  {
    array = [MEMORY[0x277CBEB18] array];
    rotationWrapperViews = height->_rotationWrapperViews;
    height->_rotationWrapperViews = array;

    height->_orientation = 1;
    v15 = [SBHomeGrabberView alloc];
    [(SBHomeGrabberRotationView *)height bounds];
    v16 = [(SBHomeGrabberView *)v15 initWithFrame:settingsCopy settings:1 shouldEnableGestures:?];
    grabberView = height->_grabberView;
    height->_grabberView = v16;

    rootSettings = [MEMORY[0x277D65E80] rootSettings];
    grabberSettings = height->_grabberSettings;
    height->_grabberSettings = rootSettings;

    height->_useRotationWrapperViews = viewsCopy;
    if (viewsCopy)
    {
      v20 = [(SBHomeGrabberRotationView *)height _addWrapperViewWithOrientation:height->_orientation];
      [v20 addSubview:height->_grabberView];
    }

    else
    {
      [(SBHomeGrabberRotationView *)height addSubview:height->_grabberView];
    }
  }

  return height;
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated rotationSettings:(id)settings
{
  animatedCopy = animated;
  settingsCopy = settings;
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    firstObject = [(NSMutableArray *)self->_rotationWrapperViews firstObject];
    if (animatedCopy)
    {
      v10 = [(SBHomeGrabberRotationView *)self _addWrapperViewWithOrientation:orientation];
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
      selfCopy = self;
      v16 = v11;
      v48 = v16;
      v17 = MEMORY[0x223D6F7F0](v44);
      v28 = MEMORY[0x277CF0D38];
      rotationFadeOutAnimationSettings = [(SBFHomeGrabberSettings *)self->_grabberSettings rotationFadeOutAnimationSettings];
      bSAnimationSettings = [rotationFadeOutAnimationSettings BSAnimationSettings];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __70__SBHomeGrabberRotationView_setOrientation_animated_rotationSettings___block_invoke_2;
      v42[3] = &unk_2783A8C18;
      v43 = firstObject;
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
      firstObject = v16;
      [v28 animateWithSettings:bSAnimationSettings actions:v42 completion:v36];

      [settingsCopy delay];
      v23 = v22;
      [settingsCopy duration];
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
      [firstObject setTransform:v31];
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

- (id)_addWrapperViewWithOrientation:(int64_t)orientation
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