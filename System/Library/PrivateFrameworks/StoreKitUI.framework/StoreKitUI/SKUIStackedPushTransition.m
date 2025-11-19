@interface SKUIStackedPushTransition
- (void)animateTransition:(id)a3;
@end

@implementation SKUIStackedPushTransition

- (void)animateTransition:(id)a3
{
  v133[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStackedPushTransition animateTransition:];
  }

  [v4 viewControllerForKey:*MEMORY[0x277D77230]];
  v108 = v101 = v4;
  v107 = [v4 viewControllerForKey:*MEMORY[0x277D77240]];
  v5 = [v107 view];
  v109 = [v108 view];
  v6 = [v4 containerView];
  [v4 finalFrameForViewController:v107];
  v8 = v7;
  v10 = v9;
  v102 = v12;
  v104 = v11;
  [(SKUIStackedBar *)self->_toBar setHidden:1];
  [(SKUIStackedBar *)self->_toBar frame];
  MaxY = CGRectGetMaxY(v134);
  v132 = 0;
  SKUIGetImagesFromView(v5, 0, &v132, MaxY);
  v106 = v132;
  v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v106];
  v15 = objc_alloc(MEMORY[0x277D75D18]);
  [v106 size];
  v17 = v16;
  [v106 size];
  v19 = [v15 initWithFrame:{0.0, 0.0, v17, v18}];
  v20 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  [v19 setBackgroundColor:v20];

  v97 = v14;
  [v6 addSubview:v14];
  v96 = v19;
  [v6 addSubview:v19];
  [v14 frame];
  v22 = v21;
  v24 = v23;
  v25 = v10 + self->_split;
  [v14 setFrame:{v8, v25}];
  v91 = v25;
  [v19 setFrame:{v8, v25, v22, v24}];
  [(SKUIStackedBar *)self->_toBar frame];
  v27 = v10 + v26;
  [(SKUIStackedBar *)self->_toBar frame];
  v29 = v27 + v28;
  v30 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(SKUIStackedBar *)self->_toBar frame];
  v32 = v31;
  [(SKUIStackedBar *)self->_toBar frame];
  v34 = v25 - (v32 + v33);
  v98 = v5;
  [v5 frame];
  [v30 setFrame:{v8, v34, v22}];
  [v6 addSubview:v30];
  [v6 sendSubviewToBack:v30];
  [(SKUIStackedBar *)self->_toBar frame];
  v36 = v35;
  [(SKUIStackedBar *)self->_toBar frame];
  v93 = v29 - (v36 + v37);
  v89 = v29;
  [v5 frame];
  [v30 bounds];
  [v5 setFrame:?];
  [v30 addSubview:v5];
  [(SKUIStackedBar *)self->_fromBar setHidden:1];
  split = self->_split;
  v130 = 0;
  v131 = 0;
  SKUIGetImagesFromView(v109, &v131, &v130, split);
  v100 = v131;
  v99 = v130;
  [(SKUIStackedBar *)self->_fromBar setHidden:0];
  v39 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v100];
  [v39 frame];
  v94 = v10;
  v41 = v40;
  v43 = v42;
  [v39 setFrame:{v8, v10}];
  [v6 addSubview:v39];
  v92 = v29 - self->_split;
  v44 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v99];
  [v44 frame];
  v46 = v45;
  v48 = v47;
  v135.origin.x = v8;
  v135.origin.y = v10;
  v135.size.width = v41;
  v135.size.height = v43;
  v49 = CGRectGetMaxY(v135);
  [v44 setFrame:{v8, v49, v46, v48}];
  [v6 addSubview:v44];
  v90 = v49 + v48;
  v50 = objc_alloc_init(SKUIStackedBar);
  [(SKUIStackedBar *)v50 setSplitViewStyle:[(SKUIStackedBar *)self->_toBar splitViewStyle]];
  [(SKUIStackedBar *)v50 setHidesStatusBar:1];
  v51 = [(SKUIStackedBar *)self->_toBar items];
  -[SKUIStackedBar setAlwaysShowsBackButton:](v50, "setAlwaysShowsBackButton:", [v51 count] > 1);

  v52 = [(SKUIStackedBar *)self->_toBar items];
  v53 = [v52 lastObject];
  v133[0] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:1];
  v55 = SKUINavigationItemsShallowCopy(v54);
  [(SKUIStackedBar *)v50 setItems:v55];

  [(SKUIStackedBar *)v50 sizeToFit];
  [v6 addSubview:v50];
  [(SKUIStackedBar *)v50 frame];
  v57 = v56;
  [(SKUIStackedBar *)v50 setFrame:v8, v91 - v56, v22];
  [(SKUIStackedBar *)v50 setAlpha:0.0];
  v58 = objc_alloc_init(SKUIStackedBar);
  [(SKUIStackedBar *)v58 setSplitViewStyle:[(SKUIStackedBar *)self->_fromBar splitViewStyle]];
  v59 = [(SKUIStackedBar *)self->_fromBar items];
  v60 = SKUINavigationItemsShallowCopy(v59);
  [(SKUIStackedBar *)v58 setItems:v60];

  [(SKUIStackedBar *)self->_fromBar frame];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = [(SKUIStackedBar *)self->_fromBar superview];
  [v6 convertRect:v69 fromView:{v62, v64, v66, v68}];
  [(SKUIStackedBar *)v58 setFrame:?];

  [v6 addSubview:v58];
  [v109 removeFromSuperview];
  [(SKUIStackedBar *)v58 setLastItemExpanded:0 animated:1];
  v70 = SKUIStackedBarSpringAnimationForExpandCollapse(v50, v8, v89 - v57);
  v71 = SKUIStackedBarSpringAnimationForExpandCollapse(v30, v8, v93);
  v72 = SKUIStackedBarSpringAnimationForExpandCollapse(v97, v8, v89);
  v73 = SKUIStackedBarSpringAnimationForExpandCollapse(v96, v8, v89);
  v74 = SKUIStackedBarSpringAnimationForExpandCollapse(v39, v8, v92);
  v75 = SKUIStackedBarSpringAnimationForExpandCollapse(v44, v8, v90);
  v76 = MEMORY[0x277D75D18];
  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = __47__SKUIStackedPushTransition_animateTransition___block_invoke;
  v127[3] = &unk_2781F80C8;
  v77 = v39;
  v128 = v77;
  v78 = v50;
  v129 = v78;
  [v76 animateWithDuration:v127 animations:0.4];
  v95 = MEMORY[0x277D75D18];
  [(SKUIStackedPushTransition *)self transitionDuration:v101];
  v80 = v79;
  v125[0] = MEMORY[0x277D85DD0];
  v125[1] = 3221225472;
  v125[2] = __47__SKUIStackedPushTransition_animateTransition___block_invoke_2;
  v125[3] = &unk_2781F80F0;
  v126 = v96;
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __47__SKUIStackedPushTransition_animateTransition___block_invoke_3;
  v110[3] = &unk_2781FA138;
  v110[4] = self;
  v111 = v30;
  v121 = v8;
  v122 = v94;
  v123 = v104;
  v124 = v102;
  v112 = v98;
  v113 = v6;
  v114 = v58;
  v115 = v78;
  v116 = v97;
  v117 = v77;
  v118 = v126;
  v119 = v44;
  v120 = v101;
  v105 = v101;
  v81 = v44;
  v103 = v126;
  v82 = v77;
  v83 = v97;
  v84 = v78;
  v85 = v58;
  v86 = v6;
  v87 = v98;
  v88 = v111;
  [v95 animateWithDuration:v125 animations:v110 completion:v80];
}

uint64_t __47__SKUIStackedPushTransition_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __47__SKUIStackedPushTransition_animateTransition___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setHidden:0];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 48) setFrame:{*(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144)}];
  [*(a1 + 56) addSubview:*(a1 + 48)];
  [*(a1 + 64) removeFromSuperview];
  [*(a1 + 72) removeFromSuperview];
  [*(a1 + 80) removeFromSuperview];
  [*(a1 + 88) removeFromSuperview];
  [*(a1 + 96) removeFromSuperview];
  [*(a1 + 104) removeFromSuperview];
  v2 = *(a1 + 112);

  return [v2 completeTransition:1];
}

- (void)animateTransition:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStackedPushTransition animateTransition:]";
}

@end