@interface CACLabeledGridOverlayView
- (CACLabeledGridOverlayView)initWithFrame:(CGRect)frame;
- (id)_newLineViewWithFrame:(CGRect)frame;
- (void)addLabeledElements:(id)elements;
- (void)clearLabeledElements;
- (void)zoomOverRect:(CGRect)rect;
@end

@implementation CACLabeledGridOverlayView

- (CACLabeledGridOverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v29.receiver = self;
  v29.super_class = CACLabeledGridOverlayView;
  v7 = [(CACLabeledGridOverlayView *)&v29 initWithFrame:?];
  if (v7)
  {
    v8 = objc_opt_new();
    labeledElements = v7->_labeledElements;
    v7->_labeledElements = v8;

    v10 = [[CACZoomController alloc] initWithContainingView:v7];
    zoomController = v7->_zoomController;
    v7->_zoomController = v10;

    layer = [(CACLabeledGridOverlayView *)v7 layer];
    [layer setCreatesCompositingGroup:1];

    v13 = [CACAdaptiveBackdropView alloc];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v15 = [(CACAdaptiveBackdropView *)v13 initWithFrame:?];
    backdrop = v7->_backdrop;
    v7->_backdrop = v15;

    layer2 = [(CACAdaptiveBackdropView *)v7->_backdrop layer];
    [layer2 setCaptureOnly:1];

    [(CACLabeledGridOverlayView *)v7 insertSubview:v7->_backdrop atIndex:0];
    height = [CACOverlayContainerView badgeViewContainerWithFrame:0 usingContrast:x, y, width, height];
    badgesContainer = v7->_badgesContainer;
    v7->_badgesContainer = height;

    height2 = [CACOverlayContainerView badgeViewContainerWithFrame:1 usingContrast:x, y, width, height];
    contrastBadgesContainer = v7->_contrastBadgesContainer;
    v7->_contrastBadgesContainer = height2;

    v22 = objc_opt_new();
    allBadgeViews = v7->_allBadgeViews;
    v7->_allBadgeViews = v22;

    v24 = objc_opt_new();
    separatorViews = v7->_separatorViews;
    v7->_separatorViews = v24;

    v26 = objc_opt_new();
    dimmingViews = v7->_dimmingViews;
    v7->_dimmingViews = v26;
  }

  return v7;
}

- (void)clearLabeledElements
{
  v37 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_labeledElements removeAllObjects];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  subviews = [(CACLabeledGridOverlayView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      v7 = 0;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        backdrop = [(CACLabeledGridOverlayView *)self backdrop];

        if (v8 != backdrop)
        {
          [v8 removeFromSuperview];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v5);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  badgesContainer = [(CACLabeledGridOverlayView *)self badgesContainer];
  subviews2 = [badgesContainer subviews];

  v12 = [subviews2 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(subviews2);
        }

        [*(*(&v26 + 1) + 8 * v15++) removeFromSuperview];
      }

      while (v13 != v15);
      v13 = [subviews2 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  contrastBadgesContainer = [(CACLabeledGridOverlayView *)self contrastBadgesContainer];
  subviews3 = [contrastBadgesContainer subviews];

  v18 = [subviews3 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(subviews3);
        }

        [*(*(&v22 + 1) + 8 * v21++) removeFromSuperview];
      }

      while (v19 != v21);
      v19 = [subviews3 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v19);
  }
}

- (void)addLabeledElements:(id)elements
{
  v361 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_labeledElements addObjectsFromArray:elements];
  zoomController = [(CACLabeledGridOverlayView *)self zoomController];
  view = [zoomController view];
  [view removeFromSuperview];

  badgesContainer = [(CACLabeledGridOverlayView *)self badgesContainer];
  [badgesContainer removeFromSuperview];

  contrastBadgesContainer = [(CACLabeledGridOverlayView *)self contrastBadgesContainer];
  [contrastBadgesContainer removeFromSuperview];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  firstObject = [(NSMutableArray *)self->_labeledElements firstObject];
  [firstObject rectangle];
  v15 = CACViewRectFromPortraitUpRect(self, v11, v12, v13, v14);
  v17 = v16;

  lastObject = [(NSMutableArray *)self->_labeledElements lastObject];
  [lastObject rectangle];
  v23 = CACViewRectFromPortraitUpRect(self, v19, v20, v21, v22);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v362.origin.x = v23;
  v362.origin.y = v25;
  v362.size.width = v27;
  v362.size.height = v29;
  v30 = CGRectGetMaxX(v362) - v15;
  v363.origin.x = v23;
  v363.origin.y = v25;
  v363.size.width = v27;
  v363.size.height = v29;
  v313 = v17;
  v314 = v15;
  v317 = CGRectGetMaxY(v363) - v17;
  v320 = v30;
  [(CACLabeledGridOverlayView *)self zoomOverRect:v15, v17, v30];
  v352 = 0u;
  v353 = 0u;
  v350 = 0u;
  v351 = 0u;
  selfCopy = self;
  v31 = self->_labeledElements;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v350 objects:v360 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v351;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v351 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v350 + 1) + 8 * i) rectangle];
        v364.origin.x = CACViewRectFromPortraitUpRect(selfCopy, v36, v37, v38, v39);
        x = v364.origin.x;
        y = v364.origin.y;
        width = v364.size.width;
        height = v364.size.height;
        MaxX = CGRectGetMaxX(v364);
        lastObject2 = [array lastObject];
        [lastObject2 floatValue];
        v47 = v46 + 1.0;

        if (MaxX > v47)
        {
          v365.origin.x = x;
          v365.origin.y = y;
          v365.size.width = width;
          v365.size.height = height;
          v48 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMaxX(v365)];
          [array addObject:v48];
        }

        v366.origin.x = x;
        v366.origin.y = y;
        v366.size.width = width;
        v366.size.height = height;
        MaxY = CGRectGetMaxY(v366);
        lastObject3 = [array2 lastObject];
        [lastObject3 floatValue];
        v52 = v51 + 1.0;

        if (MaxY > v52)
        {
          v367.origin.x = x;
          v367.origin.y = y;
          v367.size.width = width;
          v367.size.height = height;
          v53 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMaxY(v367)];
          [array2 addObject:v53];
        }
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v350 objects:v360 count:16];
    }

    while (v33);
  }

  [(CACLabeledGridOverlayView *)selfCopy bounds];
  v55 = v54;
  v57 = v56;
  v58 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v314, v56}];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v58 setBackgroundColor:blackColor];

  [v58 setAlpha:0.5];
  v281 = v58;
  [(CACLabeledGridOverlayView *)selfCopy addSubview:v58];
  v60 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v368.origin.x = v314;
  v368.origin.y = v17;
  v368.size.width = v320;
  v368.size.height = v317;
  v61 = CGRectGetMaxX(v368);
  v369.origin.x = v314;
  v369.origin.y = v17;
  v369.size.width = v320;
  v369.size.height = v317;
  v62 = [v60 initWithFrame:{v61, 0.0, v55 - CGRectGetMaxX(v369), v57}];
  blackColor2 = [MEMORY[0x277D75348] blackColor];
  [v62 setBackgroundColor:blackColor2];

  [v62 setAlpha:0.5];
  v280 = v62;
  [(CACLabeledGridOverlayView *)selfCopy addSubview:v62];
  v64 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame:{v314, 0.0, v320, v17}];
  blackColor3 = [MEMORY[0x277D75348] blackColor];
  [v64 setBackgroundColor:blackColor3];

  [v64 setAlpha:0.5];
  v279 = v64;
  [(CACLabeledGridOverlayView *)selfCopy addSubview:v64];
  v66 = selfCopy;
  v67 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v370.origin.x = v314;
  v370.origin.y = v17;
  v370.size.width = v320;
  v370.size.height = v317;
  v68 = CGRectGetMaxY(v370);
  v371.origin.x = v314;
  v371.origin.y = v17;
  v371.size.width = v320;
  v371.size.height = v317;
  v69 = [v67 initWithFrame:{v314, v68, v320, v57 - CGRectGetMaxY(v371)}];
  blackColor4 = [MEMORY[0x277D75348] blackColor];
  [v69 setBackgroundColor:blackColor4];

  [v69 setAlpha:0.5];
  v278 = v69;
  [(CACLabeledGridOverlayView *)selfCopy addSubview:v69];
  v71 = [array count];
  v284 = array2;
  v282 = array;
  v296 = v71 == [array2 count] && objc_msgSend(array, "count") == 3;
  v72 = objc_opt_new();
  [(CACLabeledGridOverlayView *)selfCopy setOutOfBoxBadgeViews:v72];

  v73 = objc_opt_new();
  [(CACLabeledGridOverlayView *)selfCopy setZoomedGridBadgeViews:v73];

  showsElementsAsClickable = [(CACLabeledGridOverlayView *)selfCopy showsElementsAsClickable];
  v346 = 0u;
  v347 = 0u;
  v348 = 0u;
  v349 = 0u;
  v75 = selfCopy->_labeledElements;
  v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v346 objects:v359 count:16];
  if (!v76)
  {

    goto LABEL_110;
  }

  v77 = v76;
  v78 = 0;
  v79 = !showsElementsAsClickable;
  v295 = *v347;
  v80 = *MEMORY[0x277CBF3A0];
  v81 = *(MEMORY[0x277CBF3A0] + 8);
  v303 = *(MEMORY[0x277CBF3A0] + 24);
  v304 = *(MEMORY[0x277CBF3A0] + 16);
  v292 = *(MEMORY[0x277D76C78] + 8);
  v293 = *MEMORY[0x277D76C78];
  v82 = 1;
  obj = v75;
  v294 = *MEMORY[0x277CBF3A0];
  do
  {
    v83 = 0;
    v283 = v82;
    do
    {
      if (*v347 != v295)
      {
        objc_enumerationMutation(obj);
      }

      v84 = *(*(&v346 + 1) + 8 * v83);
      [v84 rectangle];
      v89 = CACViewRectFromPortraitUpRect(v66, v85, v86, v87, v88);
      v91 = v90;
      v93 = v92;
      v323 = v94;
      [CACLabeledBadgeView sizeOfBadgeGivenNumberOfDisplayedDigits:1 arrowOrientation:0 badgePresentation:v79 badgeIndicator:0];
      v97 = v93;
      if (v93 < v95 && v296)
      {
        v99 = v95;
        v100 = v96;
        v101 = v91;
        v102 = v95 - v320;
        v103 = truncf(v102);
        if (v320 >= v99)
        {
          v104 = 0.0;
        }

        else
        {
          v104 = v103;
        }

        v105 = v96 - v317;
        v106 = truncf(v105);
        if (v317 >= v96)
        {
          v106 = 0.0;
        }

        rect = v101;
        if (v82 <= 5)
        {
          if (v82 <= 2)
          {
            v308 = v106;
            if (v82 != 1)
            {
              v298 = v81;
              v299 = v303;
              v297 = *&v304;
              v300 = v80;
              if (v82 == 2)
              {
                v372.origin.x = v89;
                v372.origin.y = v101;
                v372.size.width = v97;
                *&v372.size.height = v323;
                v300 = CGRectGetMidX(v372) + v99 * -0.5;
                v107 = v89;
                v108 = v101;
                v109 = v97;
                v110 = v323;
                goto LABEL_63;
              }

LABEL_67:
              zoomController2 = [(CACLabeledGridOverlayView *)v66 zoomController];
              [zoomController2 zoomFactor];
              v291 = v154;

              v155 = [CACLabeledBadgeView alloc];
              label = [v84 label];
              v303 = [(CACLabeledBadgeView *)v155 initWithFrame:label label:0 arrowOrientation:v79 badgePresentation:0 badgeIndicator:v80, v81, *&v304, v303];
              v158 = v66;
              v115 = v303;

              [v115 systemLayoutSizeFittingSize:{v293, v292}];
              v290 = v159;
              v311 = v160;
              v394.origin.x = v89;
              v394.origin.y = rect;
              v394.size.width = v97;
              *&v394.size.height = v323;
              MinX = CGRectGetMinX(v394);
              v395.origin.y = v313;
              v395.origin.x = v314;
              v395.size.height = v317;
              v395.size.width = v320;
              v162 = MinX - CGRectGetMinX(v395);
              v396.origin.x = v89;
              v396.origin.y = rect;
              v396.size.width = v97;
              *&v396.size.height = v323;
              v163 = CGRectGetWidth(v396);
              v397.origin.x = v80;
              v397.origin.y = v81;
              v397.size.width = v290;
              v397.size.height = v311;
              v289 = v291 * (v163 - CGRectGetWidth(v397) * 0.5) + v162 * v291;
              v398.origin.x = v89;
              v398.origin.y = rect;
              v398.size.width = v97;
              *&v398.size.height = v323;
              MinY = CGRectGetMinY(v398);
              v399.origin.y = v313;
              v399.origin.x = v314;
              v399.size.height = v317;
              v399.size.width = v320;
              v288 = MinY - CGRectGetMinY(v399);
              v400.origin.x = v89;
              v400.origin.y = rect;
              v400.size.width = v97;
              *&v400.size.height = v323;
              v165 = CGRectGetHeight(v400);
              v401.origin.x = v289;
              v401.origin.y = v81;
              v401.size.width = v290;
              v401.size.height = v311;
              [v115 setFrame:{v289, v291 * (v165 - CGRectGetHeight(v401) * 0.5) + v288 * v291, v290, v311}];
              zoomedGridBadgeViews = [(CACLabeledGridOverlayView *)v158 zoomedGridBadgeViews];
              [zoomedGridBadgeViews addObject:v115];

              v402.origin.x = v300;
              v402.origin.y = v298;
              v402.size.width = v297;
              v402.size.height = v299;
              if (!CGRectIsEmpty(v402))
              {
                v167 = [CACLabeledBadgeView alloc];
                label2 = [v84 label];
                v299 = [(CACLabeledBadgeView *)v167 initWithFrame:label2 label:0 arrowOrientation:v79 badgePresentation:0 badgeIndicator:v300, v298, v297, v299];

                outOfBoxBadgeViews = [(CACLabeledGridOverlayView *)selfCopy outOfBoxBadgeViews];
                [outOfBoxBadgeViews addObject:v299];
              }

              if ((v78 & 1) == 0)
              {
                v78 = 1;
              }

              v80 = v294;
              goto LABEL_72;
            }

            v390.origin.x = v89;
            v390.origin.y = v101;
            v390.size.width = v97;
            v287 = v97;
            *&v390.size.height = v323;
            v151 = CGRectGetMinX(v390) - v99 - v104;
LABEL_62:
            v300 = v151;
            v107 = v89;
            v108 = v101;
            v109 = v287;
            v110 = v323;
LABEL_63:
            v152 = CGRectGetMinY(*&v107) - v100 - v308;
LABEL_66:
            v298 = v152;
            v299 = v100;
            v297 = v99;
            goto LABEL_67;
          }

          if (v82 == 3)
          {
            v308 = v106;
            v392.origin.x = v89;
            v392.origin.y = v101;
            v392.size.width = v97;
            v287 = v97;
            *&v392.size.height = v323;
            v151 = v104 + CGRectGetMaxX(v392);
            goto LABEL_62;
          }

          v298 = v81;
          v299 = v303;
          v297 = *&v304;
          v300 = v80;
          if (v82 != 4)
          {
            goto LABEL_67;
          }

          v388.origin.x = v89;
          v388.origin.y = v101;
          v388.size.width = v97;
          *&v388.size.height = v323;
          v300 = CGRectGetMinX(v388) - v99 - v104;
          v143 = v89;
          v144 = v101;
          v145 = v97;
          v146 = v323;
LABEL_60:
          v152 = CGRectGetMidY(*&v143) + v100 * -0.5;
          goto LABEL_66;
        }

        if (v82 > 7)
        {
          v310 = v106;
          if (v82 != 8)
          {
            v298 = v81;
            v299 = v303;
            v297 = *&v304;
            v300 = v80;
            if (v82 != 9)
            {
              goto LABEL_67;
            }

            v389.origin.x = v89;
            v389.origin.y = v101;
            v389.size.width = v97;
            v286 = v97;
            v132 = v323;
            *&v389.size.height = v323;
            v133 = v104 + CGRectGetMaxX(v389);
            goto LABEL_57;
          }

          v393.origin.x = v89;
          v393.origin.y = v101;
          v393.size.width = v97;
          *&v393.size.height = v323;
          v300 = CGRectGetMidX(v393) + v99 * -0.5;
          v147 = v89;
          v148 = v101;
          v149 = v97;
          v150 = v323;
        }

        else
        {
          if (v82 == 6)
          {
            v391.origin.x = v89;
            v391.origin.y = v101;
            v391.size.width = v97;
            *&v391.size.height = v323;
            v300 = v104 + CGRectGetMaxX(v391);
            v143 = v89;
            v144 = v101;
            v145 = v97;
            v146 = v323;
            goto LABEL_60;
          }

          v310 = v106;
          v381.origin.x = v89;
          v381.origin.y = v101;
          v381.size.width = v97;
          v286 = v97;
          v132 = v323;
          *&v381.size.height = v323;
          v133 = CGRectGetMinX(v381) - v99 - v104;
LABEL_57:
          v300 = v133;
          v147 = v89;
          v148 = rect;
          v149 = v286;
          v150 = v132;
        }

        v152 = v310 + CGRectGetMaxY(*&v147);
        goto LABEL_66;
      }

      v111 = [CACLabeledBadgeView alloc];
      label3 = [v84 label];
      v3032 = [(CACLabeledBadgeView *)v111 initWithFrame:label3 label:0 arrowOrientation:v79 badgePresentation:0 badgeIndicator:v80, v81, *&v304, v303];
      v114 = v66;
      v115 = v3032;

      [v115 systemLayoutSizeFittingSize:{v293, v292}];
      v117 = v116;
      v309 = v118;
      if ([(CACLabeledGridOverlayView *)v114 showsNumbersInTopLeft])
      {
        v119 = v89;
        v373.origin.x = v89;
        v373.origin.y = v91;
        v373.size.width = v93;
        *&v373.size.height = v323;
        v120 = CGRectGetWidth(v373);
        v374.origin.x = v80;
        v374.origin.y = v81;
        v374.size.width = v117;
        v374.size.height = v309;
        if (v120 - CGRectGetWidth(v374) > 10.0)
        {
          v375.origin.x = v89;
          v375.origin.y = v91;
          v375.size.width = v97;
          *&v375.size.height = v323;
          v121 = CGRectGetHeight(v375);
          v376.origin.x = v80;
          v376.origin.y = v81;
          v376.size.width = v117;
          v376.size.height = v309;
          if (v121 - CGRectGetHeight(v376) > 10.0)
          {
            v377.size.width = v97;
            *&v377.size.height = v323;
            v122 = v81;
            v377.origin.x = v89;
            v377.origin.y = v91;
            v123 = v377.size.width;
            v124 = v91;
            v125 = CGRectGetMinX(v377) + 5.0;
            v378.origin.x = v119;
            v378.origin.y = v124;
            v378.size.width = v123;
            *&v378.size.height = v323;
            v126 = CGRectGetMinY(v378) + 5.0;
            [(CACLabeledGridOverlayView *)selfCopy safeAreaInsets];
            if (v127 >= v126)
            {
              v126 = v127;
            }

            v379.origin.x = v119;
            v379.origin.y = v124;
            v379.size.width = v123;
            *&v379.size.height = v323;
            v128 = CGRectGetMaxY(v379);
            v380.origin.x = v125;
            v380.origin.y = v126;
            v380.size.width = v117;
            v380.size.height = v309;
            v129 = v128 - CGRectGetHeight(v380);
            if (v129 >= v126)
            {
              v130 = v126;
            }

            else
            {
              v130 = v129;
            }

            v131 = v309;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v119 = v89;
      }

      v382.origin.x = v119;
      v382.origin.y = v91;
      v382.size.width = v97;
      *&v382.size.height = v323;
      v301 = CGRectGetMinX(v382);
      v383.origin.x = v119;
      v383.origin.y = v91;
      v383.size.width = v97;
      *&v383.size.height = v323;
      v134 = CGRectGetWidth(v383);
      v135 = v80;
      v136 = v81;
      v137 = v134;
      v384.origin.x = v135;
      v384.origin.y = v136;
      v384.size.width = v117;
      v384.size.height = v309;
      v138 = v301 + (v137 - CGRectGetWidth(v384)) * 0.5;
      v385.origin.x = v119;
      v385.origin.y = v91;
      v385.size.width = v97;
      *&v385.size.height = v323;
      v302 = CGRectGetMinY(v385);
      v386.origin.x = v119;
      v386.origin.y = v91;
      v125 = v138;
      v386.size.width = v97;
      *&v386.size.height = v323;
      v139 = CGRectGetHeight(v386);
      v387.origin.x = v138;
      v122 = v136;
      v387.origin.y = v136;
      v387.size.width = v117;
      v387.size.height = v309;
      v130 = v302 + (v139 - CGRectGetHeight(v387)) * 0.5;
      v131 = v309;
LABEL_48:
      [v115 setFrame:{v125, v130, v117, v131}];
      badgesContainer2 = [(CACLabeledGridOverlayView *)selfCopy badgesContainer];
      [badgesContainer2 addSubview:v115];

      if (UIAccessibilityDarkerSystemColorsEnabled())
      {
        contrastBadgesContainer2 = [(CACLabeledGridOverlayView *)selfCopy contrastBadgesContainer];
        contrastedCopy = [v115 contrastedCopy];
        [contrastBadgesContainer2 addSubview:contrastedCopy];
      }

      v80 = v294;
      v81 = v122;
LABEL_72:

      ++v82;
      ++v83;
      v66 = selfCopy;
    }

    while (v77 != v83);
    v82 = v283 + v77;
    v77 = [(NSMutableArray *)obj countByEnumeratingWithState:&v346 objects:v359 count:16];
  }

  while (v77);

  if (v78)
  {
    v171 = CACZWLensInnerBorderWidth() + 1.0;
    zoomController3 = [(CACLabeledGridOverlayView *)selfCopy zoomController];
    view2 = [zoomController3 view];
    [(CACLabeledGridOverlayView *)selfCopy addSubview:view2];

    backdrop = [(CACLabeledGridOverlayView *)selfCopy backdrop];
    [(CACLabeledGridOverlayView *)selfCopy bringSubviewToFront:backdrop];

    zoomController4 = [(CACLabeledGridOverlayView *)selfCopy zoomController];
    lensChromeView = [zoomController4 lensChromeView];
    [lensChromeView frame];
    v178 = v177;
    v180 = v179;
    v318 = v182;
    v321 = v181;

    if ([v282 count] >= 2)
    {
      v183 = 2;
      v184 = 1;
      do
      {
        v185 = [(CACLabeledGridOverlayView *)selfCopy _newLineViewWithFrame:v171 + v178 + (v321 + v171 * -2.0) * ((v183 - 6 * (v184 / 3)) / 6.0), v171 + v180, 1.0, *&v318 + v171 * -2.0];
        [(CACLabeledGridOverlayView *)selfCopy addSubview:v185];

        ++v184;
        v183 += 2;
      }

      while ([v282 count] > v184);
    }

    if ([v284 count] >= 2)
    {
      v186 = v171 + v178;
      v187 = 2;
      v188 = 1;
      do
      {
        v189 = [(CACLabeledGridOverlayView *)selfCopy _newLineViewWithFrame:v186, v171 + v180 + (*&v318 + v171 * -2.0) * ((v187 - 6 * (v188 / 3)) / 6.0), v321 + v171 * -2.0, 1.0];
        [(CACLabeledGridOverlayView *)selfCopy addSubview:v189];

        ++v188;
        v187 += 2;
      }

      while ([v284 count] > v188);
    }

    v336 = 0u;
    v337 = 0u;
    v334 = 0u;
    v335 = 0u;
    zoomedGridBadgeViews2 = [(CACLabeledGridOverlayView *)selfCopy zoomedGridBadgeViews];
    v190 = [zoomedGridBadgeViews2 countByEnumeratingWithState:&v334 objects:v356 count:16];
    if (v190)
    {
      v191 = v190;
      v192 = 0;
      v193 = *v335;
      do
      {
        v194 = 0;
        v195 = (2 * v192) | 1;
        do
        {
          if (*v335 != v193)
          {
            objc_enumerationMutation(zoomedGridBadgeViews2);
          }

          v196 = *(*(&v334 + 1) + 8 * v194);
          zoomController5 = [(CACLabeledGridOverlayView *)selfCopy zoomController];
          lensChromeView2 = [zoomController5 lensChromeView];
          [lensChromeView2 frame];
          v200 = (v321 - v171 * 2.0) * ((v195 - 6 * (v192 / 3)) / 6.0) + v171 + v199;

          zoomController6 = [(CACLabeledGridOverlayView *)selfCopy zoomController];
          lensChromeView3 = [zoomController6 lensChromeView];
          [lensChromeView3 frame];
          v204 = (*&v318 - v171 * 2.0) * ((((v192 / 3) * 2.0) + 1.0) / 6.0) + v171 + v203;

          [v196 setCenter:{v200, v204}];
          badgesContainer3 = [(CACLabeledGridOverlayView *)selfCopy badgesContainer];
          [badgesContainer3 addSubview:v196];

          if (UIAccessibilityDarkerSystemColorsEnabled())
          {
            contrastBadgesContainer3 = [(CACLabeledGridOverlayView *)selfCopy contrastBadgesContainer];
            contrastedCopy2 = [v196 contrastedCopy];
            [contrastBadgesContainer3 addSubview:contrastedCopy2];
          }

          ++v192;
          ++v194;
          v195 += 2;
        }

        while (v191 != v194);
        v191 = [zoomedGridBadgeViews2 countByEnumeratingWithState:&v334 objects:v356 count:16];
      }

      while (v191);
    }

    v332 = 0u;
    v333 = 0u;
    v330 = 0u;
    v331 = 0u;
    v305 = v282;
    v208 = selfCopy;
    v312 = [v305 countByEnumeratingWithState:&v330 objects:v355 count:16];
    if (v312)
    {
      v209 = v314;
      recta = *v331;
      do
      {
        v211 = 0;
        do
        {
          if (*v331 != recta)
          {
            objc_enumerationMutation(v305);
          }

          v315 = v211;
          v212 = *(*(&v330 + 1) + 8 * v211);
          v326 = 0u;
          v327 = 0u;
          v328 = 0u;
          v329 = 0u;
          v319 = v284;
          v213 = [v319 countByEnumeratingWithState:&v326 objects:v354 count:16];
          if (v213)
          {
            v214 = v213;
            v325 = *v327;
            v210 = v313;
            v215 = v210;
            do
            {
              for (j = 0; j != v214; ++j)
              {
                if (*v327 != v325)
                {
                  objc_enumerationMutation(v319);
                }

                v217 = *(*(&v326 + 1) + 8 * j);
                [v212 floatValue];
                v219 = truncf((v209 + v218) * 0.5);
                [v217 floatValue];
                v221 = [(CACLabeledGridOverlayView *)v208 _newLineViewWithFrame:v219, (truncf((v215 + v220) * 0.5) + -2.0), 1.0, 5.0];
                [v212 floatValue];
                v223 = (truncf((v209 + v222) * 0.5) + -2.0);
                [v217 floatValue];
                v225 = [(CACLabeledGridOverlayView *)v208 _newLineViewWithFrame:v223, truncf((v215 + v224) * 0.5), 5.0, 1.0];
                [v221 frame];
                v227 = v226;
                v229 = v228;
                v231 = v230;
                v233 = v232;
                zoomController7 = [(CACLabeledGridOverlayView *)v208 zoomController];
                lensChromeView4 = [zoomController7 lensChromeView];
                [lensChromeView4 frame];
                v407.origin.x = v236;
                v407.origin.y = v237;
                v407.size.width = v238;
                v407.size.height = v239;
                v403.origin.x = v227;
                v403.origin.y = v229;
                v403.size.width = v231;
                v403.size.height = v233;
                v404 = CGRectIntersection(v403, v407);
                if (CGRectIsNull(v404))
                {
                  [v225 frame];
                  v241 = v240;
                  v243 = v242;
                  v245 = v244;
                  v247 = v246;
                  zoomController8 = [(CACLabeledGridOverlayView *)v208 zoomController];
                  [zoomController8 lensChromeView];
                  v322 = v221;
                  v250 = v249 = v214;
                  [v250 frame];
                  v408.origin.x = v251;
                  v408.origin.y = v252;
                  v408.size.width = v253;
                  v408.size.height = v254;
                  v405.origin.x = v241;
                  v405.origin.y = v243;
                  v405.size.width = v245;
                  v405.size.height = v247;
                  v406 = CGRectIntersection(v405, v408);
                  IsNull = CGRectIsNull(v406);

                  v214 = v249;
                  v221 = v322;

                  v208 = selfCopy;
                  if (IsNull)
                  {
                    [(CACLabeledGridOverlayView *)selfCopy addSubview:v322];
                    [(CACLabeledGridOverlayView *)selfCopy addSubview:v225];
                  }
                }

                else
                {
                }

                [v217 floatValue];
                v215 = v256;
              }

              v214 = [v319 countByEnumeratingWithState:&v326 objects:v354 count:16];
            }

            while (v214);
          }

          [v212 floatValue];
          v209 = v257;
          v211 = v315 + 1;
        }

        while (v315 + 1 != v312);
        v312 = [v305 countByEnumeratingWithState:&v330 objects:v355 count:16];
      }

      while (v312);
    }

    [(CACLabeledGridOverlayView *)v208 setIsSmallEnoughForZooming:1];
    v258 = v282;
    v259 = v284;
    goto LABEL_125;
  }

LABEL_110:
  v258 = v282;
  [v282 removeLastObject];
  v344 = 0u;
  v345 = 0u;
  v342 = 0u;
  v343 = 0u;
  v260 = v282;
  v261 = [v260 countByEnumeratingWithState:&v342 objects:v358 count:16];
  v259 = v284;
  if (v261)
  {
    v262 = v261;
    v263 = *v343;
    do
    {
      for (k = 0; k != v262; ++k)
      {
        if (*v343 != v263)
        {
          objc_enumerationMutation(v260);
        }

        [*(*(&v342 + 1) + 8 * k) floatValue];
        v317 = [(CACLabeledGridOverlayView *)selfCopy _newLineViewWithFrame:v265, v313, 1.0, v317];
        [(CACLabeledGridOverlayView *)selfCopy addSubview:v317];
      }

      v262 = [v260 countByEnumeratingWithState:&v342 objects:v358 count:16];
    }

    while (v262);
  }

  [v284 removeLastObject];
  v340 = 0u;
  v341 = 0u;
  v338 = 0u;
  v339 = 0u;
  v267 = v284;
  v268 = [v267 countByEnumeratingWithState:&v338 objects:v357 count:16];
  if (v268)
  {
    v269 = v268;
    v270 = *v339;
    do
    {
      for (m = 0; m != v269; ++m)
      {
        if (*v339 != v270)
        {
          objc_enumerationMutation(v267);
        }

        [*(*(&v338 + 1) + 8 * m) floatValue];
        v273 = [(CACLabeledGridOverlayView *)selfCopy _newLineViewWithFrame:v314, v272, v320, 1.0];
        [(CACLabeledGridOverlayView *)selfCopy addSubview:v273];
      }

      v269 = [v267 countByEnumeratingWithState:&v338 objects:v357 count:16];
    }

    while (v269);
  }

  v208 = selfCopy;
  [(CACLabeledGridOverlayView *)selfCopy setIsSmallEnoughForZooming:0];
  zoomController9 = [(CACLabeledGridOverlayView *)selfCopy zoomController];
  view3 = [zoomController9 view];
  [view3 removeFromSuperview];

LABEL_125:
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    contrastBadgesContainer4 = [(CACLabeledGridOverlayView *)v208 contrastBadgesContainer];
    [(CACLabeledGridOverlayView *)v208 addSubview:contrastBadgesContainer4];
  }

  badgesContainer4 = [(CACLabeledGridOverlayView *)v208 badgesContainer];
  [(CACLabeledGridOverlayView *)v208 addSubview:badgesContainer4];
}

- (id)_newLineViewWithFrame:(CGRect)frame
{
  v3 = [[CACAdaptiveBackdropView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  layer = [(CACAdaptiveBackdropView *)v3 layer];
  [layer setCaptureOnly:0];

  return v3;
}

- (void)zoomOverRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [[CACZoomController alloc] initWithContainingView:self];
  [(CACLabeledGridOverlayView *)self setZoomController:v8];

  zoomController = [(CACLabeledGridOverlayView *)self zoomController];
  [zoomController hide];

  zoomController2 = [(CACLabeledGridOverlayView *)self zoomController];
  [zoomController2 moveZoomRegion:{x, y, width, height}];

  zoomController3 = [(CACLabeledGridOverlayView *)self zoomController];
  [zoomController3 show];
}

@end