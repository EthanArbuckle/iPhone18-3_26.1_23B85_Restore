@interface PRXCrossDissolveTransition
- (CGSize)maxSize;
- (void)animateTransition:(id)a3;
@end

@implementation PRXCrossDissolveTransition

- (void)animateTransition:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 containerView];
  v6 = PRXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PRXCrossDissolveTransition animateTransition:v6];
  }

  v7 = [v4 viewControllerForKey:*MEMORY[0x277D77240]];
  v8 = (objc_opt_respondsToSelector() & 1);
  v9 = [v4 viewForKey:*MEMORY[0x277D77248]];
  v50 = [v4 viewForKey:*MEMORY[0x277D77238]];
  v10 = [v50 snapshotViewAfterScreenUpdates:0];
  [v5 addSubview:v10];
  [v9 setAlpha:0.0];
  [v5 addSubview:v9];
  v11 = MEMORY[0x277D75D18];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __48__PRXCrossDissolveTransition_animateTransition___block_invoke;
  v67[3] = &unk_279ACC188;
  v12 = v9;
  v68 = v12;
  [v11 performWithoutAnimation:v67];
  v13 = [(PRXCrossDissolveTransition *)self cardStyle];
  v14 = [v7 traitCollection];
  v15 = PRXCardPreferredSize(v13, [v14 prx_cardSizeClass]);
  v17 = v16;

  [v7 preferredContentSize];
  if (v17 >= v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *MEMORY[0x277CBF3A0];
  v21 = *(MEMORY[0x277CBF3A0] + 8);
  [(PRXCrossDissolveTransition *)self maxSize];
  if (v22 >= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = v22;
  }

  [(PRXCrossDissolveTransition *)self maxSize];
  if (v24 < v19)
  {
    v19 = v24;
  }

  v25 = PRXDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v73.origin.x = v20;
    v73.origin.y = v21;
    v73.size.width = v23;
    v73.size.height = v19;
    v46 = NSStringFromCGRect(v73);
    *buf = 138412290;
    v71 = v46;
    _os_log_debug_impl(&dword_260F65000, v25, OS_LOG_TYPE_DEBUG, "Animating to %@", buf, 0xCu);
  }

  [v12 setFrame:{v20, v21, v23, v19}];
  [v12 intrinsicContentSize];
  if (v26 == *MEMORY[0x277D77260])
  {
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = MEMORY[0x277CCAAD0];
    v28 = [v12 widthAnchor];
    [v28 constraintEqualToConstant:v15];
    v48 = v7;
    v49 = v4;
    v47 = self;
    v8 = v29 = v8;
    v69[0] = v8;
    [v12 heightAnchor];
    v31 = v30 = v5;
    [v31 constraintGreaterThanOrEqualToConstant:v17];
    v33 = v32 = v10;
    v69[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
    [v27 activateConstraints:v34];

    v10 = v32;
    v5 = v30;

    LODWORD(v8) = v29;
    self = v47;
    v7 = v48;
    v4 = v49;
  }

  v35 = MEMORY[0x277D75D18];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __48__PRXCrossDissolveTransition_animateTransition___block_invoke_3;
  v65[3] = &unk_279ACC188;
  v36 = v12;
  v66 = v36;
  [v35 performWithoutAnimation:v65];
  [(PRXCrossDissolveTransition *)self transitionDuration:v4];
  v38 = v37;
  if (v8)
  {
    [v7 setTransitioningSize:1];
  }

  v39 = MEMORY[0x277D75D18];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __48__PRXCrossDissolveTransition_animateTransition___block_invoke_2;
  v58[3] = &unk_279ACC1D8;
  v59 = v36;
  v40 = v5;
  v60 = v40;
  v61 = v20;
  v62 = v21;
  v63 = v23;
  v64 = v19;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __48__PRXCrossDissolveTransition_animateTransition___block_invoke_3;
  v51[3] = &unk_279ACC200;
  v41 = v10;
  v52 = v41;
  v42 = v50;
  v53 = v42;
  v43 = v59;
  v54 = v43;
  v57 = v8;
  v44 = v7;
  v55 = v44;
  v45 = v4;
  v56 = v45;
  [v39 transitionWithView:v40 duration:0 options:v58 animations:v51 completion:v38];
  if (self->_additionalAnimations)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v38 animations:?];
  }
}

uint64_t __48__PRXCrossDissolveTransition_animateTransition___block_invoke_3(uint64_t a1)
{
  return [*(a1 + 32) layoutIfNeeded];
}

{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) setNeedsLayout];
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 56) setTransitioningSize:0];
  }

  v2 = PRXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __48__PRXCrossDissolveTransition_animateTransition___block_invoke_3_cold_1(v2);
  }

  return [*(a1 + 64) completeTransition:1];
}

uint64_t __48__PRXCrossDissolveTransition_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end