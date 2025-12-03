@interface SBApplicationBlurContentView
- (SBApplicationBlurContentView)initWithCoder:(id)coder;
- (SBApplicationBlurContentView)initWithFrame:(CGRect)frame;
- (SBApplicationBlurContentView)initWithFrame:(CGRect)frame bundleIdentifier:(id)identifier icon:(id)icon targetViewToBlur:(id)blur initialIconScale:(double)scale;
- (SBApplicationBlurContentView)initWithFrame:(CGRect)frame bundleIdentifier:(id)identifier targetViewToBlur:(id)blur initialIconScale:(double)scale;
- (void)_addCompletionBlock:(id)block forState:(unint64_t)state;
- (void)_doAnimationToBlurredSnapshotWithFactory:(id)factory completion:(id)completion;
- (void)_doBlurGenerationWithCompletion:(id)completion;
- (void)_fireCompletionBlocksForState:(unint64_t)state;
- (void)_setState:(unint64_t)state;
- (void)animateToBlurredSnapshotWithFactory:(id)factory completion:(id)completion;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)generateAndAnimateToBlurredSnapshotWithAnimationFactory:(id)factory completion:(id)completion;
- (void)generateBlurredSnapshotWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setIconViewScale:(double)scale;
@end

@implementation SBApplicationBlurContentView

- (SBApplicationBlurContentView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBApplicationBlurContentView.m" lineNumber:92 description:@"initWithCoder: is unavailable for this class."];

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(SBApplicationBlurContentView *)self initWithFrame:0 bundleIdentifier:0 targetViewToBlur:v6, v7, v8, v9];
}

- (SBApplicationBlurContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBApplicationBlurContentView.m" lineNumber:97 description:@"initWithFrame: is unavailable for this class."];

  return [(SBApplicationBlurContentView *)self initWithFrame:0 bundleIdentifier:0 targetViewToBlur:x, y, width, height];
}

- (SBApplicationBlurContentView)initWithFrame:(CGRect)frame bundleIdentifier:(id)identifier targetViewToBlur:(id)blur initialIconScale:(double)scale
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  blurCopy = blur;
  identifierCopy = identifier;
  v15 = +[SBIconController sharedIconRepository];
  v16 = [v15 applicationIconForBundleIdentifier:identifierCopy];
  scale = [(SBApplicationBlurContentView *)self initWithFrame:identifierCopy bundleIdentifier:v16 icon:blurCopy targetViewToBlur:x initialIconScale:y, width, height, scale];

  return scale;
}

- (SBApplicationBlurContentView)initWithFrame:(CGRect)frame bundleIdentifier:(id)identifier icon:(id)icon targetViewToBlur:(id)blur initialIconScale:(double)scale
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  identifierCopy = identifier;
  iconCopy = icon;
  blurCopy = blur;
  v18 = blurCopy;
  if (identifierCopy)
  {
    if (blurCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBApplicationBlurContentView initWithFrame:bundleIdentifier:icon:targetViewToBlur:initialIconScale:];
    if (v18)
    {
      goto LABEL_3;
    }
  }

  [SBApplicationBlurContentView initWithFrame:bundleIdentifier:icon:targetViewToBlur:initialIconScale:];
LABEL_3:
  v63.receiver = self;
  v63.super_class = SBApplicationBlurContentView;
  height = [(SBApplicationBlurContentView *)&v63 initWithFrame:x, y, width, height];
  v20 = height;
  if (height)
  {
    [(SBApplicationBlurContentView *)height bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    objc_storeStrong(&v20->_targetViewToBlur, blur);
    p_width = &v20->_targetViewOriginalSize.width;
    [v18 bounds];
    v20->_targetViewOriginalSize.width = v30;
    v20->_targetViewOriginalSize.height = v31;
    v20->_iconViewScale = scale;
    superview = [(UIView *)v20->_targetViewToBlur superview];

    if (!superview)
    {
      [(SBApplicationBlurContentView *)v20 addSubview:v20->_targetViewToBlur];
    }

    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mapStateToCompletionBlocks = v20->_mapStateToCompletionBlocks;
    v20->_mapStateToCompletionBlocks = v33;

    v35 = [identifierCopy copy];
    bundleIdentifier = v20->_bundleIdentifier;
    v20->_bundleIdentifier = v35;

    v37 = objc_alloc(MEMORY[0x277D75D18]);
    v38 = *(MEMORY[0x277CBF3A0] + 8);
    v62 = *MEMORY[0x277CBF3A0];
    v39 = *(MEMORY[0x277CBF3A0] + 16);
    v40 = *(MEMORY[0x277CBF3A0] + 24);
    v41 = [v37 initWithFrame:?];
    unblurredRealSnapshotView = v20->_unblurredRealSnapshotView;
    v20->_unblurredRealSnapshotView = v41;

    [(UIView *)v20->_unblurredRealSnapshotView setContentMode:0];
    initWithDefaultValues = [(_UIBackdropViewSettings *)[SBApplicationBlurContentViewBackdropSettings alloc] initWithDefaultValues];
    v44 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:initWithDefaultValues settings:{v22, v24, v26, v28}];
    v45 = v44;
    v46 = *p_width;
    if (*p_width < v20->_targetViewOriginalSize.height)
    {
      v46 = v20->_targetViewOriginalSize.height;
    }

    v47 = v28;
    v48 = fmin(fmax(v46 * 85.0 * 0.0009765625, 20.0), 85.0);
    outputSettings = [(UIView *)v44 outputSettings];
    [outputSettings setBlurRadius:v48];

    liveBlurView = v20->_liveBlurView;
    v20->_liveBlurView = v45;
    v51 = v45;

    v52 = [[SBApplicationBlurSnapshotGenerationContainerView alloc] initWithFrame:v22, v24, v26, v47];
    snapshotGenerationContainerView = v20->_snapshotGenerationContainerView;
    v20->_snapshotGenerationContainerView = v52;

    [(SBApplicationBlurSnapshotGenerationContainerView *)v20->_snapshotGenerationContainerView addSubview:v20->_liveBlurView];
    [(SBApplicationBlurSnapshotGenerationContainerView *)v20->_snapshotGenerationContainerView setLiveBlurView:v20->_liveBlurView];
    [(SBApplicationBlurSnapshotGenerationContainerView *)v20->_snapshotGenerationContainerView setRealSnapshotView:v20->_unblurredRealSnapshotView];
    [(SBApplicationBlurSnapshotGenerationContainerView *)v20->_snapshotGenerationContainerView addSubview:v20->_unblurredRealSnapshotView];
    [(SBApplicationBlurSnapshotGenerationContainerView *)v20->_snapshotGenerationContainerView addSubview:v20->_liveBlurView];
    v54 = v20->_snapshotGenerationContainerView;
    [(SBApplicationBlurContentView *)v20 bounds];
    [(SBApplicationBlurSnapshotGenerationContainerView *)v54 setFrame:?];
    [(SBApplicationBlurSnapshotGenerationContainerView *)v20->_snapshotGenerationContainerView setNeedsLayout];
    [(SBApplicationBlurSnapshotGenerationContainerView *)v20->_snapshotGenerationContainerView layoutIfNeeded];
    [(SBApplicationBlurContentView *)v20 addSubview:v20->_snapshotGenerationContainerView];
    [(UIView *)v20->_liveBlurView setHidden:1];
    v55 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v62, v38, v39, v40}];
    unblurredCopySnapshotView = v20->_unblurredCopySnapshotView;
    v20->_unblurredCopySnapshotView = v55;

    [(SBApplicationBlurContentView *)v20 addSubview:v20->_unblurredCopySnapshotView];
    v57 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v22, v24, v26, v47}];
    blurredSnapshotView = v20->_blurredSnapshotView;
    v20->_blurredSnapshotView = v57;

    [(UIView *)v20->_blurredSnapshotView setAlpha:0.0];
    [(UIView *)v20->_blurredSnapshotView setContentMode:0];
    [(SBApplicationBlurContentView *)v20 addSubview:v20->_blurredSnapshotView];
    v59 = [[SBSceneViewAppIconView alloc] initWithIcon:iconCopy];
    iconView = v20->_iconView;
    v20->_iconView = v59;

    [(SBSceneViewAppIconView *)v20->_iconView setAlpha:0.0];
    [(SBApplicationBlurContentView *)v20 addSubview:v20->_iconView];

    [(SBApplicationBlurContentView *)v20 _setState:0];
    [(SBApplicationBlurContentView *)v20 setNeedsLayout];
    [(SBApplicationBlurContentView *)v20 layoutIfNeeded];
    [(SBApplicationBlurContentView *)v20 setOpaque:1];
  }

  return v20;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(NSMutableDictionary *)self->_mapStateToCompletionBlocks allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        -[SBApplicationBlurContentView _fireCompletionBlocksForState:](self, "_fireCompletionBlocksForState:", [*(*(&v9 + 1) + 8 * v7++) unsignedIntegerValue]);
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SBApplicationBlurContentView;
  [(SBApplicationBlurContentView *)&v8 dealloc];
}

- (void)generateBlurredSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  state = self->_state;
  if (state > 2)
  {
    if ((state - 3) < 3 && completionCopy != 0)
    {
      completionCopy[2](completionCopy);
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      [(SBApplicationBlurContentView *)self _doBlurGenerationWithCompletion:completionCopy];
    }

    else if (state == 2)
    {
      [(SBApplicationBlurContentView *)self _addCompletionBlock:completionCopy forState:2];
    }
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__SBApplicationBlurContentView_generateBlurredSnapshotWithCompletion___block_invoke;
    v7[3] = &unk_2783AC308;
    objc_copyWeak(&v9, &location);
    v8 = completionCopy;
    [(SBApplicationBlurContentView *)self _addCompletionBlock:v7 forState:0];

    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

void __70__SBApplicationBlurContentView_generateBlurredSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained generateBlurredSnapshotWithCompletion:*(a1 + 32)];
}

- (void)animateToBlurredSnapshotWithFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  objc_initWeak(&location, self);
  state = self->_state;
  if (state > 2)
  {
    if (state == 3)
    {
      [(SBApplicationBlurContentView *)self _doAnimationToBlurredSnapshotWithFactory:factoryCopy completion:completionCopy];
    }

    else if (state == 4)
    {
      [(SBApplicationBlurContentView *)self _addCompletionBlock:completionCopy forState:4];
    }

    else if (state == 5 && completionCopy != 0)
    {
      completionCopy[2](completionCopy);
    }
  }

  else if ((state - 1) >= 2)
  {
    if (!state)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __79__SBApplicationBlurContentView_animateToBlurredSnapshotWithFactory_completion___block_invoke;
      v10[3] = &unk_2783AACB8;
      objc_copyWeak(&v13, &location);
      v11 = factoryCopy;
      v12 = completionCopy;
      [(SBApplicationBlurContentView *)self _addCompletionBlock:v10 forState:0];

      objc_destroyWeak(&v13);
    }
  }

  else
  {
    [(SBApplicationBlurContentView *)self generateAndAnimateToBlurredSnapshotWithAnimationFactory:factoryCopy completion:completionCopy];
  }

  objc_destroyWeak(&location);
}

void __79__SBApplicationBlurContentView_animateToBlurredSnapshotWithFactory_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained animateToBlurredSnapshotWithFactory:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)generateAndAnimateToBlurredSnapshotWithAnimationFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__SBApplicationBlurContentView_generateAndAnimateToBlurredSnapshotWithAnimationFactory_completion___block_invoke;
  v10[3] = &unk_2783AA1E8;
  v10[4] = self;
  v11 = factoryCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = factoryCopy;
  [(SBApplicationBlurContentView *)self generateBlurredSnapshotWithCompletion:v10];
}

- (void)setIconViewScale:(double)scale
{
  if (self->_iconViewScale != scale)
  {
    self->_iconViewScale = scale;
    [(SBApplicationBlurContentView *)self setNeedsLayout];

    [(SBApplicationBlurContentView *)self layoutIfNeeded];
  }
}

- (void)didMoveToWindow
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SBApplicationBlurContentView_didMoveToWindow__block_invoke;
  v9[3] = &unk_2783A8C18;
  v9[4] = self;
  v3 = MEMORY[0x223D6F7F0](v9, a2);
  layer = [(UIView *)self->_targetViewToBlur layer];
  hasBeenCommitted = [layer hasBeenCommitted];

  if (hasBeenCommitted)
  {
    v3[2](v3);
  }

  else
  {
    v6 = *MEMORY[0x277D76620];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__SBApplicationBlurContentView_didMoveToWindow__block_invoke_2;
    v7[3] = &unk_2783A9348;
    v8 = v3;
    [v6 sb_performBlockAfterCATransactionSynchronizedCommit:v7];
  }
}

void __47__SBApplicationBlurContentView_didMoveToWindow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  if (v2)
  {
    v3 = *(a1 + 32);
    if (!v3[52])
    {
      v31 = v2;
      v4 = [MEMORY[0x277D75348] blackColor];
      [v3 setBackgroundColor:v4];

      v5 = [*(*(a1 + 32) + 448) sb_generateSnapshotContentsSynchronously];
      v6 = [*(*(a1 + 32) + 448) superview];
      v7 = *(a1 + 32);

      if (v6 == v7)
      {
        [*(*(a1 + 32) + 448) removeFromSuperview];
      }

      v8 = [*(*(a1 + 32) + 448) layer];
      v9 = [v8 presentationLayer];

      v10 = *(*(a1 + 32) + 448);
      if (v9)
      {
        v11 = [v10 layer];
        v12 = [v11 presentationLayer];
        [v12 bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
      }

      else
      {
        [v10 bounds];
        v14 = v21;
        v16 = v22;
        v18 = v23;
        v20 = v24;
      }

      [*(*(a1 + 32) + 456) setFrame:{v14, v16, v18, v20}];
      v25 = [*(*(a1 + 32) + 456) layer];
      [v25 setContents:v5];

      v26 = [*(*(a1 + 32) + 456) layer];
      v27 = [v31 screen];
      [v27 scale];
      [v26 setContentsScale:?];

      [*(*(a1 + 32) + 464) setFrame:{v14, v16, v18, v20}];
      v28 = [*(*(a1 + 32) + 464) layer];
      [v28 setContents:v5];

      v29 = [*(*(a1 + 32) + 464) layer];
      v30 = [v31 screen];
      [v30 scale];
      [v29 setContentsScale:?];

      [*(*(a1 + 32) + 472) setHidden:0];
      [*(a1 + 32) _setState:1];

      v2 = v31;
    }
  }
}

- (void)layoutSubviews
{
  [(SBApplicationBlurContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_blurredSnapshotView setFrame:?];
  [(UIView *)self->_unblurredCopySnapshotView setFrame:v4, v6, v8, v10];
  if (self->_state >= 3)
  {
    [(SBApplicationBlurSnapshotGenerationContainerView *)self->_snapshotGenerationContainerView setFrame:v4, v6, v8, v10];
  }

  if (SBReduceMotion())
  {
    v11 = v8 / self->_targetViewOriginalSize.width;
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v12 = 1.0 - v11;
    }

    else
    {
      v12 = 0.0;
    }

    layer = [(UIView *)self->_unblurredCopySnapshotView layer];
    [layer setContentsRect:{v12, 0.0, v11, 1.0}];

    layer2 = [(UIView *)self->_unblurredRealSnapshotView layer];
    [layer2 setContentsRect:{v12, 0.0, v11, 1.0}];
  }

  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeScale(&v18, self->_iconViewScale, self->_iconViewScale);
  iconView = self->_iconView;
  v17 = v18;
  [(SBSceneViewAppIconView *)iconView setTransform:&v17];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  [(SBSceneViewAppIconView *)self->_iconView sizeThatFits:CGRectGetWidth(v19), 0.0];
  SBRectWithSize();
  [(SBSceneViewAppIconView *)self->_iconView setBounds:?];
  v16 = self->_iconView;
  UIRectGetCenter();
  [(SBSceneViewAppIconView *)v16 setCenter:?];
}

- (void)_setState:(unint64_t)state
{
  state = self->_state;
  if (state != state)
  {
    self->_state = state;
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SBApplicationBlurContentView *)self _setState:v5];
    }

    [(SBApplicationBlurContentView *)self _fireCompletionBlocksForState:state];
  }
}

- (void)_addCompletionBlock:(id)block forState:(unint64_t)state
{
  blockCopy = block;
  if (blockCopy)
  {
    v13 = blockCopy;
    mapStateToCompletionBlocks = self->_mapStateToCompletionBlocks;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    v9 = [(NSMutableDictionary *)mapStateToCompletionBlocks objectForKey:v8];

    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = self->_mapStateToCompletionBlocks;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
      [(NSMutableDictionary *)v10 setObject:v9 forKey:v11];
    }

    v12 = MEMORY[0x223D6F7F0](v13);
    [v9 addObject:v12];

    blockCopy = v13;
  }
}

- (void)_fireCompletionBlocksForState:(unint64_t)state
{
  v20 = *MEMORY[0x277D85DE8];
  mapStateToCompletionBlocks = self->_mapStateToCompletionBlocks;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)mapStateToCompletionBlocks objectForKey:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 copy];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v15 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = self->_mapStateToCompletionBlocks;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)v13 removeObjectForKey:v14];
}

- (void)_doBlurGenerationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_state != 1)
  {
    [SBApplicationBlurContentView _doBlurGenerationWithCompletion:];
  }

  [(SBApplicationBlurContentView *)self _setState:2];
  [(SBApplicationBlurContentView *)self _addCompletionBlock:completionCopy forState:2];
  v5 = *MEMORY[0x277D76620];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBApplicationBlurContentView__doBlurGenerationWithCompletion___block_invoke;
  v6[3] = &unk_2783A8C18;
  v6[4] = self;
  [v5 sb_performBlockAfterCATransactionSynchronizedCommit:v6];
}

void __64__SBApplicationBlurContentView__doBlurGenerationWithCompletion___block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 496) sb_generateSnapshotContentsSynchronously];
  v2 = [*(*(a1 + 32) + 488) layer];
  [v2 setContents:v6];

  v3 = [*(*(a1 + 32) + 488) layer];
  [v3 setContentsScale:SBScreenScale()];

  [*(*(a1 + 32) + 496) setLiveBlurView:0];
  [*(*(a1 + 32) + 472) removeFromSuperview];
  v4 = *(a1 + 32);
  v5 = *(v4 + 472);
  *(v4 + 472) = 0;

  [*(a1 + 32) _setState:3];
}

- (void)_doAnimationToBlurredSnapshotWithFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  if (self->_state != 3)
  {
    [SBApplicationBlurContentView _doAnimationToBlurredSnapshotWithFactory:completion:];
  }

  [(SBApplicationBlurContentView *)self _setState:4];
  [(SBApplicationBlurContentView *)self _addCompletionBlock:completionCopy forState:4];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__SBApplicationBlurContentView__doAnimationToBlurredSnapshotWithFactory_completion___block_invoke;
  v20[3] = &unk_2783A8C18;
  v20[4] = self;
  v8 = MEMORY[0x223D6F7F0](v20);
  window = [(SBApplicationBlurContentView *)self window];
  v10 = window;
  if (factoryCopy && window && ([window isHidden] & 1) == 0 && (-[SBApplicationBlurContentView isHiddenOrHasHiddenAncestor](self, "isHiddenOrHasHiddenAncestor") & 1) == 0)
  {
    v11 = MEMORY[0x277CF0D38];
    [(SBApplicationBlurContentView *)self blurDelay];
    v13 = v12;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__SBApplicationBlurContentView__doAnimationToBlurredSnapshotWithFactory_completion___block_invoke_2;
    v19[3] = &unk_2783A8C18;
    v19[4] = self;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __84__SBApplicationBlurContentView__doAnimationToBlurredSnapshotWithFactory_completion___block_invoke_3;
    v17[3] = &unk_2783A9C70;
    v18 = v8;
    [v11 animateWithFactory:factoryCopy additionalDelay:v19 actions:v17 completion:v13];
    [factoryCopy duration];
    v15 = [MEMORY[0x277CF0D38] factoryWithDuration:v14 delay:v14 * 0.5];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__SBApplicationBlurContentView__doAnimationToBlurredSnapshotWithFactory_completion___block_invoke_4;
    v16[3] = &unk_2783A8C18;
    v16[4] = self;
    [MEMORY[0x277CF0D38] animateWithFactory:v15 actions:v16 completion:0];
  }

  else
  {
    [(UIView *)self->_blurredSnapshotView setAlpha:1.0];
    [(SBSceneViewAppIconView *)self->_iconView setAlpha:1.0];
    v8[2](v8);
  }
}

uint64_t __84__SBApplicationBlurContentView__doAnimationToBlurredSnapshotWithFactory_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 464) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 464);
  *(v2 + 464) = 0;

  [*(*(a1 + 32) + 496) removeFromSuperview];
  v4 = *(a1 + 32);
  v5 = *(v4 + 496);
  *(v4 + 496) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 456);
  *(v6 + 456) = 0;

  v8 = *(a1 + 32);

  return [v8 _setState:5];
}

- (void)initWithFrame:bundleIdentifier:icon:targetViewToBlur:initialIconScale:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"bundleIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithFrame:bundleIdentifier:icon:targetViewToBlur:initialIconScale:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"targetViewToBlur" object:? file:? lineNumber:? description:?];
}

- (void)_setState:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = v7;
  v9 = *(a1 + 408);
  v10 = *a2 - 1;
  if (v10 > 4)
  {
    v11 = @"0 - Waiting for snapshot";
  }

  else
  {
    v11 = off_2783BB1C8[v10];
  }

  v12 = 138413058;
  v13 = v7;
  v14 = 2048;
  v15 = a1;
  v16 = 2112;
  v17 = v9;
  v18 = 2112;
  v19 = v11;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "<%@:%p - %@>: blur view state changed to: %@", &v12, 0x2Au);
}

- (void)_doBlurGenerationWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_doAnimationToBlurredSnapshotWithFactory:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end