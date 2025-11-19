@interface SBSAContainerResizeBehaviorProvider
- (BOOL)_didContainerViewForActiveGestureCollapseWithFrame:(CGRect)a3 initialContainerViewFrame:(CGRect)a4 isPrimaryContainer:(BOOL)a5 activeInterfaceOrientation:(int64_t)a6;
- (CGRect)_frameForAdjunctContainerViewDescription:(id)a3 resizedWithGestureDescription:(id)a4 initialContainerViewFrame:(CGRect)a5 context:(id)a6;
- (CGRect)_frameForContainerViewDescription:(id)a3 resizedWithGestureDescription:(id)a4 initialContainerViewFrame:(CGRect)a5 context:(id)a6;
- (id)_contentResizeBehaviorSettings;
- (id)_preferencesUpdatedWithCollapseOfElement:(void *)a3 activeFrame:(void *)a4 initialFrame:(void *)a5 minimumFrame:(double)a6 preferences:(double)a7 context:(double)a8;
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSAContainerResizeBehaviorProvider

- (id)preferencesFromContext:(id)a3
{
  v181 = *MEMORY[0x277D85DE8];
  v129 = a3;
  if (!v129)
  {
    goto LABEL_9;
  }

  v3 = objc_opt_self();
  v4 = v129;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    [(SBSAContainerResizeBehaviorProvider *)v4 preferencesFromContext:a2, self];
LABEL_9:
    v6 = 0;
  }

  v132 = v6;
  v7 = [v6 preferences];
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v140 = v10;

  v11 = [v6 gestureDescriptions];
  obj = [v11 bs_firstObjectPassingTest:&__block_literal_global_255];

  if (obj)
  {
    objc_storeStrong(&self->_activeGestureDescription, obj);
  }

  activeGestureDescription = self->_activeGestureDescription;
  if (activeGestureDescription)
  {
    v13 = [(SBSAGestureDescription *)activeGestureDescription gestureRecognizerState];
    if (self->_resizeGestureResult)
    {
      v14 = [v6 copyByAddingFlags:2 debugRequestingProvider:self];

      v132 = v14;
    }

    v15 = [(SBSAGestureDescription *)self->_activeGestureDescription associatedInterfaceElementIdentifier];
    v16 = [v132 preferences];
    v127 = [v16 containerViewDescriptions];

    v176[0] = MEMORY[0x277D85DD0];
    v176[1] = 3221225472;
    v176[2] = __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_2;
    v176[3] = &unk_2783B0210;
    v126 = v15;
    v177 = v126;
    v17 = [v127 bs_firstObjectPassingTest:v176];
    if (!v17)
    {
      goto LABEL_93;
    }

    v175 = 0;
    v142 = [v132 elementContexts];
    v18 = SBSAElementContextAssociatedWithContainerViewDescription(v17, v142, &v175);
    v141 = v18;
    v19 = v18;
    if (v18)
    {
      v20 = [v18 interfaceOrientation];
      v19 = v141;
    }

    else
    {
      v20 = 1;
    }

    v21 = self;
    v138 = (v175 == 0x7FFFFFFFFFFFFFFFLL || !v175) && (v20 - 5) < 0xFFFFFFFFFFFFFFFELL;
    if (v13 <= 3)
    {
      switch(v13)
      {
        case 1:
          v31 = v19 != 0;
          if (v142)
          {
            v32 = v142;
          }

          else
          {
            v32 = MEMORY[0x277CBEBF8];
          }

          objc_storeStrong(&self->_elementContexts, v32);
          p_initialFrameOfContainerViewForActiveGesture = &self->_initialFrameOfContainerViewForActiveGesture;
          if (v31)
          {
            v34 = SBSAFrameForElementInCollection(v175, v142, v132);
            p_initialFrameOfContainerViewForActiveGesture->origin.x = v34;
            self->_initialFrameOfContainerViewForActiveGesture.origin.y = v35;
            self->_initialFrameOfContainerViewForActiveGesture.size.width = v36;
            self->_initialFrameOfContainerViewForActiveGesture.size.height = v37;
            v38 = _SBSAMinimumFrameForElementAtIndex(v175, v132, v34, v35, v36, v37);
            v21 = self;
            self->_minimumFrameOfContainerViewForActiveGesture.origin.x = v38;
            self->_minimumFrameOfContainerViewForActiveGesture.origin.y = v39;
            self->_minimumFrameOfContainerViewForActiveGesture.size.width = v40;
            self->_minimumFrameOfContainerViewForActiveGesture.size.height = v41;
          }

          else
          {
            [v132 inertContainerFrame];
            p_initialFrameOfContainerViewForActiveGesture->origin.x = v42;
            self->_initialFrameOfContainerViewForActiveGesture.origin.y = v43;
            self->_initialFrameOfContainerViewForActiveGesture.size.width = v44;
            self->_initialFrameOfContainerViewForActiveGesture.size.height = v45;
            v21 = self;
            size = self->_initialFrameOfContainerViewForActiveGesture.size;
            self->_minimumFrameOfContainerViewForActiveGesture.origin = p_initialFrameOfContainerViewForActiveGesture->origin;
            self->_minimumFrameOfContainerViewForActiveGesture.size = size;
          }

          break;
        case 2:
          break;
        case 3:
          v22 = [SBSAContainerResizeAction alloc];
          resizeGestureResult = self->_resizeGestureResult;
          v24 = [(SBSAGestureDescription *)self->_activeGestureDescription associatedInterfaceElementIdentifier];
          v178 = @"containerResizeBehaviorProvider.resize";
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v178 count:1];
          v26 = [(SBSAContainerResizeAction *)v22 initWithResult:resizeGestureResult associatedInterfaceElementIdentifier:v24 reasons:v25];
          v179 = v26;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v179 count:1];
          v28 = [v140 copyByAddingActions:v27];

          v140 = v28;
          v21 = self;
LABEL_34:
          v21->_resizeGestureResult = 0;
          v29 = v21->_activeGestureDescription;
          v21->_activeGestureDescription = 0;

          elementContexts = self->_elementContexts;
          self->_elementContexts = 0;
LABEL_86:

          v21 = self;
LABEL_87:
          v112 = v21->_elementContexts;
          if (v112 && (SBSAAreElementLayoutsEqualToLayouts(v112, v142) & 1) == 0)
          {
            v113 = SBLogSystemAperturePreferencesStackGestures();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
            {
              [(SBSAContainerResizeBehaviorProvider *)v132 preferencesFromContext:v113];
            }

            v114 = [v140 copyWithCancellationOfGestureOfClass:objc_opt_class() context:v132];
            v115 = self->_elementContexts;
            self->_elementContexts = 0;

            v140 = v114;
          }

LABEL_93:
          goto LABEL_94;
        default:
          goto LABEL_87;
      }

      v47 = v21->_activeGestureDescription;
      x = v21->_initialFrameOfContainerViewForActiveGesture.origin.x;
      y = v21->_initialFrameOfContainerViewForActiveGesture.origin.y;
      width = v21->_initialFrameOfContainerViewForActiveGesture.size.width;
      height = v21->_initialFrameOfContainerViewForActiveGesture.size.height;
      p_x = &v21->_initialFrameOfContainerViewForActiveGesture.origin.x;
      if (v138)
      {
        [(SBSAContainerResizeBehaviorProvider *)v21 _frameForContainerViewDescription:v17 resizedWithGestureDescription:v47 initialContainerViewFrame:v132 context:x, y, width, height];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
      }

      else
      {
        [(SBSAContainerResizeBehaviorProvider *)v21 _frameForAdjunctContainerViewDescription:v17 resizedWithGestureDescription:v47 initialContainerViewFrame:v132 context:x, y, width, height];
        v53 = v60;
        v55 = v61;
        v57 = v62;
        v59 = v63;
        v174[0] = MEMORY[0x277D85DD0];
        v174[1] = 3221225472;
        v174[2] = __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_3;
        v174[3] = &unk_2783A93E8;
        v174[5] = a2;
        v174[4] = self;
        v64 = [v140 copyWithBlock:v174];

        v140 = v64;
      }

      p_y = &self->_minimumFrameOfContainerViewForActiveGesture.origin.y;
      p_size = &self->_minimumFrameOfContainerViewForActiveGesture.size;
      p_minimumFrameOfContainerViewForActiveGesture = &self->_minimumFrameOfContainerViewForActiveGesture;
      p_height = &self->_minimumFrameOfContainerViewForActiveGesture.size.height;
      MaxX = CGRectGetMaxX(self->_minimumFrameOfContainerViewForActiveGesture);
      v183.origin.x = v53;
      v183.origin.y = v55;
      v183.size.width = v57;
      v183.size.height = v59;
      v69 = CGRectGetMaxX(v183);
      if (MaxX >= v69)
      {
        v70 = MaxX;
      }

      else
      {
        v70 = v69;
      }

      v184.origin.x = v53;
      v184.origin.y = v55;
      v184.size.width = v57;
      v184.size.height = v59;
      MinX = CGRectGetMinX(v184);
      v185.origin.x = p_minimumFrameOfContainerViewForActiveGesture->origin.x;
      v185.origin.y = *p_y;
      v185.size.width = p_size->width;
      v185.size.height = *p_height;
      v72 = CGRectGetHeight(v185);
      v73 = v70 - MinX;
      v186.origin.x = v53;
      v186.origin.y = v55;
      v186.size.width = v73;
      v186.size.height = v59;
      v74 = CGRectGetHeight(v186);
      if (v72 >= v74)
      {
        v75 = v72;
      }

      else
      {
        v75 = v74;
      }

      v189.origin.x = p_minimumFrameOfContainerViewForActiveGesture->origin.x;
      v189.origin.y = *p_y;
      v189.size.width = p_size->width;
      v189.size.height = *p_height;
      v76 = v53;
      v77 = v55;
      v78 = v73;
      v187 = CGRectUnion(*(&v75 - 3), v189);
      v79 = v187.origin.x;
      v80 = v187.origin.y;
      v81 = v187.size.width;
      v82 = v187.size.height;
      [(SBSAContainerPanGestureDescription *)self->_activeGestureDescription translation];
      v85 = -v83;
      if (v83 >= 0.0)
      {
        v85 = v83;
      }

      if (v85 > 10.0)
      {
        goto LABEL_56;
      }

      if (v84 < 0.0)
      {
        v84 = -v84;
      }

      if (v84 > 10.0)
      {
LABEL_56:
        v86 = [(SBSAContainerResizeBehaviorProvider *)self _didContainerViewForActiveGestureCollapseWithFrame:v138 initialContainerViewFrame:v20 isPrimaryContainer:v79 activeInterfaceOrientation:v80, v81, v82, *p_x, p_x[1], p_x[2], p_x[3]];
        v87 = -1;
        if (!v86)
        {
          v87 = 1;
        }

        if (v87 != self->_resizeGestureResult)
        {
          self->_resizeGestureResult = v87;
          v88 = [v140 copyWithCancellationOfGestureOfClass:objc_opt_class() context:v132];

          v140 = v88;
        }
      }

      v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v90 = v127;
      v91 = [v90 countByEnumeratingWithState:&v170 objects:v180 count:16];
      if (v91)
      {
        v92 = *v171;
        v135 = *(MEMORY[0x277CBF3A0] + 8);
        v136 = *MEMORY[0x277CBF3A0];
        v133 = *(MEMORY[0x277CBF3A0] + 24);
        v134 = *(MEMORY[0x277CBF3A0] + 16);
        do
        {
          for (i = 0; i != v91; ++i)
          {
            if (*v171 != v92)
            {
              objc_enumerationMutation(v90);
            }

            v94 = *(*(&v170 + 1) + 8 * i);
            v95 = BSEqualObjects();
            v96 = v79;
            v97 = v80;
            v98 = v81;
            v99 = v82;
            if ((v95 & 1) == 0)
            {
              v160 = 0x7FFFFFFFFFFFFFFFLL;
              v100 = SBSAElementContextAssociatedWithContainerViewDescription(v94, v142, &v160);
              v99 = v133;
              v98 = v134;
              v97 = v135;
              v96 = v136;
              if (v100)
              {
                if (v138)
                {
                  v101 = SBSAAdjunctFrameForElementInCollection(v160, v142, v132, v79, v80, v81, v82);
                }

                else
                {
                  v101 = SBSAFrameForElementInCollection(v160, v142, v132);
                }

                v96 = v101;
                v97 = v102;
                v98 = v103;
                v99 = v104;
              }
            }

            v188.origin.x = v96;
            v188.origin.y = v97;
            v188.size.width = v98;
            v188.size.height = v99;
            if (CGRectIsEmpty(v188) || ([v141 preventsInteractiveGestures] & 1) != 0)
            {
              [v89 addObject:v94];
            }

            else
            {
              v168[0] = MEMORY[0x277D85DD0];
              v168[1] = 3221225472;
              v168[2] = __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_4;
              v168[3] = &unk_2783BC600;
              v168[5] = a2;
              v168[4] = self;
              *&v168[6] = v96;
              *&v168[7] = v97;
              *&v168[8] = v98;
              *&v168[9] = v99;
              v169 = v95;
              v105 = [v94 copyWithBlock:v168];
              [v89 addObject:v105];

              v166[0] = MEMORY[0x277D85DD0];
              v166[1] = 3221225472;
              v166[2] = __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_5;
              v166[3] = &unk_2783BC628;
              v166[5] = v94;
              v166[6] = a2;
              v166[4] = self;
              v167 = v95;
              v106 = [v140 copyWithBlock:v166];

              if (((v141 != 0) & v95 & v138) == 1 && self->_resizeGestureResult == -1)
              {
                v107 = [(SBSAContainerResizeBehaviorProvider *)self _preferencesUpdatedWithCollapseOfElement:v141 activeFrame:v106 initialFrame:v132 minimumFrame:v96 preferences:v97 context:v98, v99, *p_x, p_x[1], p_x[2], p_x[3], *&self->_minimumFrameOfContainerViewForActiveGesture.origin.x, *&self->_minimumFrameOfContainerViewForActiveGesture.origin.y, *&self->_minimumFrameOfContainerViewForActiveGesture.size.width, *&self->_minimumFrameOfContainerViewForActiveGesture.size.height];

                v106 = v107;
              }

              v140 = v106;
            }
          }

          v91 = [v90 countByEnumeratingWithState:&v170 objects:v180 count:16];
        }

        while (v91);
      }

      v108 = [v89 lastObject];
      v160 = 0;
      v161 = &v160;
      v162 = 0x3032000000;
      v163 = __Block_byref_object_copy__92;
      v164 = __Block_byref_object_dispose__92;
      v165 = [v140 indicatorContainerViewDescription];
      v154 = 0;
      v155 = &v154;
      v156 = 0x3032000000;
      v157 = __Block_byref_object_copy__92;
      v158 = __Block_byref_object_dispose__92;
      v159 = [v140 indicatorElementDescription];
      v109 = self;
      if (v108 && v161[5] && v155[5])
      {
        v147[0] = MEMORY[0x277D85DD0];
        v147[1] = 3221225472;
        v147[2] = __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_42;
        v147[3] = &unk_2783BC650;
        v153 = a2;
        v147[4] = self;
        v110 = v140;
        v148 = v110;
        v151 = &v160;
        v149 = v108;
        v150 = v132;
        v152 = &v154;
        v140 = [v110 copyWithBlock:v147];

        v109 = self;
      }

      v144[0] = MEMORY[0x277D85DD0];
      v144[1] = 3221225472;
      v144[2] = __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_4_52;
      v144[3] = &unk_2783AD750;
      v146 = a2;
      v144[4] = v109;
      elementContexts = v89;
      v145 = elementContexts;
      v111 = [v140 copyWithBlock:v144];

      _Block_object_dispose(&v154, 8);
      _Block_object_dispose(&v160, 8);

      v140 = v111;
      goto LABEL_86;
    }

    if ((v13 - 4) >= 2)
    {
      goto LABEL_87;
    }

    goto LABEL_34;
  }

LABEL_94:
  v116 = [v132 copyByUpdatingPreferences:?];

  v143.receiver = self;
  v143.super_class = SBSAContainerResizeBehaviorProvider;
  v117 = [(SBSABasePreferencesProvider *)&v143 preferencesFromContext:v116];
  v118 = objc_opt_class();
  v119 = v117;
  if (v118)
  {
    if (objc_opt_isKindOfClass())
    {
      v120 = v119;
    }

    else
    {
      v120 = 0;
    }
  }

  else
  {
    v120 = 0;
  }

  v121 = v120;

  v122 = [v121 actions];
  v123 = [v122 bs_containsObjectPassingTest:&__block_literal_global_58_1];

  if (v123)
  {
    self->_resizeGestureResult = 0;
    v124 = self->_activeGestureDescription;
    self->_activeGestureDescription = 0;
  }

  return v121;
}

uint64_t __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 interfaceElementIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v2 = objc_opt_self();
    v3 = v6;
    if (v2)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if (!v5)
    {
      __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 setBlobEnabled:1];
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v11;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v3 = v11;
    if (!v7)
    {
      __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_4_cold_1();
      v3 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  BSRectWithSize();
  [v7 setBounds:?];
  UIRectGetCenter();
  [v7 setCenter:?];
  if (*(a1 + 80) == 1)
  {
    Width = CGRectGetWidth(*(a1 + 48));
    v9 = Width / CGRectGetWidth(*(*(a1 + 32) + 48));
    Height = CGRectGetHeight(*(a1 + 48));
    [v7 setContentScale:{v9, Height / CGRectGetHeight(*(*(a1 + 32) + 48))}];
    BSRectWithSize();
    [v7 setContentBounds:?];
    BSRectWithSize();
    UIRectGetCenter();
    [v7 setContentCenter:?];
  }
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v25;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v3 = v25;
    if (!v7)
    {
      __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_5_cold_1();
      v3 = v25;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [SBSAInterfaceElementPropertyIdentity alloc];
  v9 = [*(a1 + 40) interfaceElementIdentifier];
  v10 = [(SBSAInterfaceElementPropertyIdentity *)v8 initWithAssociatedInterfaceElementIdentifier:v9 andProperty:@"bounds"];

  v11 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"bounds"];
  [v7 setAnimatedTransitionDescription:v11 forProperty:v10 withMilestones:0];

  v12 = [SBSAInterfaceElementPropertyIdentity alloc];
  v13 = [*(a1 + 40) interfaceElementIdentifier];
  v14 = [(SBSAInterfaceElementPropertyIdentity *)v12 initWithAssociatedInterfaceElementIdentifier:v13 andProperty:@"center"];

  v15 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"center"];
  [v7 setAnimatedTransitionDescription:v15 forProperty:v14 withMilestones:0];

  if (*(a1 + 56) == 1)
  {
    v16 = [SBSAInterfaceElementPropertyIdentity alloc];
    v17 = [*(a1 + 40) interfaceElementIdentifier];
    v18 = [(SBSAInterfaceElementPropertyIdentity *)v16 initWithAssociatedInterfaceElementIdentifier:v17 andProperty:@"contentScale"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v10 withProperty:v18 withMilestones:0];

    v19 = [SBSAInterfaceElementPropertyIdentity alloc];
    v20 = [*(a1 + 40) interfaceElementIdentifier];
    v21 = [(SBSAInterfaceElementPropertyIdentity *)v19 initWithAssociatedInterfaceElementIdentifier:v20 andProperty:@"contentBounds"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v10 withProperty:v21 withMilestones:0];

    v22 = [SBSAInterfaceElementPropertyIdentity alloc];
    v23 = [*(a1 + 40) interfaceElementIdentifier];
    v24 = [(SBSAInterfaceElementPropertyIdentity *)v22 initWithAssociatedInterfaceElementIdentifier:v23 andProperty:@"contentCenter"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v14 withProperty:v24 withMilestones:0];
  }
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_42_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 40) maintainedPreferences];
  v9 = [v8 indicatorAppearanceStateContext];

  v10 = [v9 microIndicatorEjectionPhase];
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x5010000000;
  v51[3] = &unk_21F9DA6A3;
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  v54 = *(MEMORY[0x277CBF2C0] + 32);
  v12 = *MEMORY[0x277CBF2C0];
  v53 = v11;
  v52 = v12;
  v13 = *(*(*(a1 + 64) + 8) + 40);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_2_43;
  v44[3] = &unk_2783B01C0;
  v14 = *(a1 + 32);
  v49 = *(a1 + 80);
  v44[4] = v14;
  v45 = *(a1 + 48);
  v15 = *(a1 + 56);
  v50 = v10 > 1;
  v46 = v15;
  v48 = v51;
  v16 = v9;
  v47 = v16;
  v17 = [v13 copyWithBlock:v44];
  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  [v7 setIndicatorContainerViewDescription:*(*(*(a1 + 64) + 8) + 40)];
  v20 = [SBSAInterfaceElementPropertyIdentity alloc];
  v21 = [*(a1 + 48) interfaceElementIdentifier];
  v22 = [(SBSAInterfaceElementPropertyIdentity *)v20 initWithAssociatedInterfaceElementIdentifier:v21 andProperty:@"bounds"];
  v23 = [SBSAInterfaceElementPropertyIdentity alloc];
  v24 = [*(*(*(a1 + 64) + 8) + 40) interfaceElementIdentifier];
  v25 = [(SBSAInterfaceElementPropertyIdentity *)v23 initWithAssociatedInterfaceElementIdentifier:v24 andProperty:@"bounds"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v22 withProperty:v25 withMilestones:0];

  v26 = [SBSAInterfaceElementPropertyIdentity alloc];
  v27 = [*(a1 + 48) interfaceElementIdentifier];
  v28 = [(SBSAInterfaceElementPropertyIdentity *)v26 initWithAssociatedInterfaceElementIdentifier:v27 andProperty:@"center"];
  v29 = [SBSAInterfaceElementPropertyIdentity alloc];
  v30 = [*(*(*(a1 + 64) + 8) + 40) interfaceElementIdentifier];
  v31 = [(SBSAInterfaceElementPropertyIdentity *)v29 initWithAssociatedInterfaceElementIdentifier:v30 andProperty:@"center"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v28 withProperty:v31 withMilestones:0];

  if (v10 >= 2)
  {
    v32 = *(*(*(a1 + 72) + 8) + 40);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_3_44;
    v43[3] = &unk_2783B01E8;
    v33 = *(a1 + 80);
    v43[4] = *(a1 + 32);
    v43[5] = v51;
    v43[6] = v33;
    v34 = [v32 copyWithBlock:v43];
    v35 = *(*(a1 + 72) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    [v7 setIndicatorElementDescription:*(*(*(a1 + 72) + 8) + 40)];
    v37 = [SBSAInterfaceElementPropertyIdentity alloc];
    v38 = [*(a1 + 48) interfaceElementIdentifier];
    v39 = [(SBSAInterfaceElementPropertyIdentity *)v37 initWithAssociatedInterfaceElementIdentifier:v38 andProperty:@"bounds"];
    v40 = [SBSAInterfaceElementPropertyIdentity alloc];
    v41 = [*(*(*(a1 + 72) + 8) + 40) interfaceElementIdentifier];
    v42 = [(SBSAInterfaceElementPropertyIdentity *)v40 initWithAssociatedInterfaceElementIdentifier:v41 andProperty:@"indicatorViewTransform"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v39 withProperty:v42 withMilestones:0];
  }

  _Block_object_dispose(v51, 8);
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_2_43(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v24;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v3 = v24;
    if (!v7)
    {
      __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_2_43_cold_1();
      v3 = v24;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) elementContexts];
  v10 = SBSAElementContextAssociatedWithContainerViewDescription(v8, v9, 0);

  v11 = 0;
  if ([v10 layoutMode] == 3)
  {
    v11 = [v10 systemApertureCustomLayout];
  }

  [*(a1 + 40) bounds];
  [*(a1 + 40) center];
  SBUnintegralizedRectCenteredAboutPoint();
  SBSAMicroIndicatorFrameNearContainer(v11, *(a1 + 80), (*(*(a1 + 64) + 8) + 32), *(a1 + 56), *(a1 + 48), v12, v13, v14, v15);
  BSRectWithSize();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v7 setBounds:?];
  UIRectGetCenter();
  [v7 setCenter:?];
  [v7 setContentBounds:{v17, v19, v21, v23}];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_3_44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_3_44_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = v8[3];
  v10[0] = v8[2];
  v10[1] = v9;
  v10[2] = v8[4];
  [v7 setIndicatorViewTransform:v10];
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_4_52(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_4_52_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setContainerViewDescriptions:*(a1 + 40)];
}

uint64_t __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_55(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_contentResizeBehaviorSettings
{
  v2 = [objc_opt_class() settings];
  v3 = [v2 contentInteractionBeginBehaviorSettings];

  return v3;
}

- (CGRect)_frameForContainerViewDescription:(id)a3 resizedWithGestureDescription:(id)a4 initialContainerViewFrame:(CGRect)a5 context:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a6;
  v12 = a4;
  v13 = [objc_opt_class() settings];
  [v12 initialLocation];
  [v12 translation];

  [v11 systemContainerBounds];
  v34 = CGRectGetWidth(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  CGRectGetHeight(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  CGRectGetWidth(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  CGRectGetMidX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetMidY(v39);
  [v11 inertContainerFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  CGRectGetWidth(v40);
  [v13 resizeGestureXRubberbanding];
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    [v13 resizeGestureMinEdgePadding];
  }

  else
  {
    [v13 resizeGestureSensorXSafetyMargin];
  }

  BSUIConstrainValueToIntervalWithRubberBand();
  [v13 resizeGestureYRubberbandingStretch];
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    [v13 resizeGestureYRubberbandingStretch];
  }

  else
  {
    [v13 resizeGestureYRubberbandingCompress];
  }

  [v13 resizeGestureYRangeBeginTracking];
  [v13 resizeGestureYRangeEndTracking];
  BSUIConstrainValueToIntervalWithRubberBand();
  if (BSFloatLessThanOrEqualToFloat())
  {
    [v13 resizeGestureUpOffsetFactor];
  }

  SBRectWithSize();
  SBUnintegralizedRectCenteredAboutPoint();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)_frameForAdjunctContainerViewDescription:(id)a3 resizedWithGestureDescription:(id)a4 initialContainerViewFrame:(CGRect)a5 context:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = [objc_opt_class() settings];
  [v10 translation];
  v13 = v12;

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGRectGetHeight(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectGetMidX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  CGRectGetMidY(v31);
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    [v11 recombineGestureXScaleFactorStretch];
  }

  else
  {
    [v11 recombineGestureXScaleFactorCompress];
  }

  if (BSFloatGreaterThanOrEqualToFloat())
  {
    [v11 recombineGestureXRubberbandingStretch];
  }

  else
  {
    [v11 recombineGestureXRubberbandingCompress];
  }

  v26 = 0u;
  v27 = 0u;
  BYTE8(v26) = 1;
  BYTE8(v27) = 1;
  BSUIConstrainValueToIntervalWithRubberBand();
  if (v13 <= 0.0)
  {
    [v11 recombineGestureTranslateFactorCompress];
  }

  else
  {
    [v11 recombineGestureTranslateFactorStretch];
  }

  SBRectWithSize();
  SBUnintegralizedRectCenteredAboutPoint();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (BOOL)_didContainerViewForActiveGestureCollapseWithFrame:(CGRect)a3 initialContainerViewFrame:(CGRect)a4 isPrimaryContainer:(BOOL)a5 activeInterfaceOrientation:(int64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  if (a5)
  {
    v32 = a4.size.width;
    rect = a3.size.height;
    v13 = CGRectGetWidth(a3);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v14 = v13 - CGRectGetWidth(v35);
    v36.origin.x = v12;
    v36.origin.y = v11;
    v36.size.width = v10;
    v36.size.height = rect;
    v15 = CGRectGetHeight(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = v32;
    v37.size.height = height;
    v16 = v15 - CGRectGetHeight(v37);
    v17 = -v14;
    if (v14 >= 0.0)
    {
      v17 = v14;
    }

    v18 = v16 < 0.0;
    if (v16 < 0.0)
    {
      v16 = -v16;
    }

    if (v17 <= v16)
    {
      return v18;
    }

    else
    {
      return v14 < 0.0;
    }
  }

  else
  {
    v21 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v22 = v12;
    v23 = v11;
    v24 = v10;
    v25 = v9;
    if (v21 == 1)
    {
      if (a6 == 4)
      {
        MinX = CGRectGetMinX(*&v22);
        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        MaxX = CGRectGetMinX(v38);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v22);
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        MaxX = CGRectGetMaxX(v40);
      }

      return MinX > MaxX;
    }

    else
    {
      v28 = CGRectGetMinX(*&v22);
      v29 = x;
      v30 = v28;
      v39.origin.x = v29;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      v31 = CGRectGetMinX(v39);
      if (a6 == 4)
      {
        return v30 > v31;
      }

      else
      {
        return v30 < v31;
      }
    }
  }
}

- (id)_preferencesUpdatedWithCollapseOfElement:(void *)a3 activeFrame:(void *)a4 initialFrame:(void *)a5 minimumFrame:(double)a6 preferences:(double)a7 context:(double)a8
{
  *&v41[16] = a8;
  *&v41[24] = a9;
  *v41 = a6;
  *&v41[8] = a7;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  if (([v28 interfaceOrientation] - 3) <= 1)
  {
    [SBSAContainerResizeBehaviorProvider _preferencesUpdatedWithCollapseOfElement:activeFrame:initialFrame:minimumFrame:preferences:context:];
    if (!v28)
    {
      goto LABEL_7;
    }
  }

  else if (!v28)
  {
    goto LABEL_7;
  }

  if (v29)
  {
    v52.origin.x = a10;
    v52.origin.y = a11;
    v52.size.width = a12;
    v52.size.height = a13;
    CGRectGetMinX(v52);
    v53.origin.x = a10;
    v53.origin.y = a11;
    v53.size.width = a12;
    v53.size.height = a13;
    CGRectGetMidY(v53);
    v54.origin.x = a14;
    v54.origin.y = a15;
    v54.size.width = a16;
    v54.size.height = a17;
    CGRectGetMinX(v54);
    v55.origin.x = a14;
    v55.origin.y = a15;
    v55.size.width = a16;
    v55.size.height = a17;
    CGRectGetMidY(v55);
    CGRectGetMinX(*v41);
    CGRectGetMidY(*v41);
    UIDistanceBetweenPoints();
    v32 = v31;
    UIDistanceBetweenPoints();
    v34 = v33;
    v35 = [v29 elementDescriptions];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke;
    v49[3] = &unk_2783AD818;
    v36 = v28;
    v50 = v36;
    v37 = [v35 bs_firstObjectPassingTest:v49];
    v38 = v37;
    if (v37)
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke_2;
      v42[3] = &unk_2783BC6E8;
      v47 = a2;
      v42[4] = a1;
      v43 = v37;
      v44 = v36;
      v45 = v30;
      v48 = 1.0 - v32 / v34;
      v46 = v35;
      v39 = [v29 copyWithBlock:v42];

      v29 = v39;
    }
  }

LABEL_7:

  return v29;
}

uint64_t __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

void __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke_3;
  v15[3] = &unk_2783BC698;
  v19 = *(a1 + 72);
  v8 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v7;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v20 = *(a1 + 80);
  v9 = v7;
  v10 = [v8 copyWithBlock:v15];
  v11 = *(a1 + 64);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke_4;
  v13[3] = &unk_2783BC6C0;
  v14 = *(a1 + 48);
  v12 = [v11 sbsa_arrayByAddingOrReplacingObject:v10 passingTest:v13];
  [v9 setElementDescriptions:v12];
}

void __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke_3_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 setSensorObscuringShadowProgress:1.0];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"sensorObscuringShadowProgress"];
  v10 = [SBSAInterfaceElementPropertyIdentity alloc];
  v11 = [v7 interfaceElementIdentifier];
  v12 = [(SBSAInterfaceElementPropertyIdentity *)v10 initWithAssociatedInterfaceElementIdentifier:v11 andProperty:@"sensorObscuringShadowProgress"];
  [v8 setAnimatedTransitionDescription:v9 forProperty:v12 withMilestones:0];

  v13 = [*(a1 + 48) layoutMode];
  v14 = [*(a1 + 56) layoutDirection];
  if (v13 == 3)
  {
    if (*(a1 + 72) * 4.0 <= 1.0)
    {
      v36 = *(a1 + 72) * 4.0;
    }

    else
    {
      v36 = 1.0;
    }

    [v7 setCustomContentAlpha:1.0 - v36];
    v37 = *(a1 + 40);
    v38 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"customContentAlpha"];
    v39 = [SBSAInterfaceElementPropertyIdentity alloc];
    v40 = [v7 interfaceElementIdentifier];
    v41 = [(SBSAInterfaceElementPropertyIdentity *)v39 initWithAssociatedInterfaceElementIdentifier:v40 andProperty:@"customContentAlpha"];
    [v37 setAnimatedTransitionDescription:v38 forProperty:v41 withMilestones:0];

    [v7 setCustomContentBlurProgress:v36];
    v42 = *(a1 + 32);
    v43 = *(a1 + 40);
    v44 = @"customContentBlurProgress";
    goto LABEL_28;
  }

  v15 = v14;
  if (v13 == 2)
  {
    [v7 setLeadingViewAlpha:1.0 - *(a1 + 72)];
    v26 = *(a1 + 40);
    v27 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"leadingViewAlpha"];
    v28 = [SBSAInterfaceElementPropertyIdentity alloc];
    v29 = [v7 interfaceElementIdentifier];
    v30 = [(SBSAInterfaceElementPropertyIdentity *)v28 initWithAssociatedInterfaceElementIdentifier:v29 andProperty:@"leadingViewAlpha"];
    [v26 setAnimatedTransitionDescription:v27 forProperty:v30 withMilestones:0];

    [v7 setLeadingViewBlurProgress:*(a1 + 72)];
    v31 = *(a1 + 40);
    v32 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"leadingViewBlurProgress"];
    v33 = [SBSAInterfaceElementPropertyIdentity alloc];
    v34 = [v7 interfaceElementIdentifier];
    v35 = [(SBSAInterfaceElementPropertyIdentity *)v33 initWithAssociatedInterfaceElementIdentifier:v34 andProperty:@"leadingViewBlurProgress"];
    [v31 setAnimatedTransitionDescription:v32 forProperty:v35 withMilestones:0];

    if (v7)
    {
      [v7 leadingViewTransform];
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
    }

    v45 = *(a1 + 72);
    [*(a1 + 48) preferredLeadingBounds];
    Width = CGRectGetWidth(v74);
    SBSASquishedTransform(&v70, 1, v15 == 1, &v73, v45, Width);
    [v7 setLeadingViewTransform:&v73];
    v47 = *(a1 + 40);
    v48 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"leadingViewTransform"];
    v49 = [SBSAInterfaceElementPropertyIdentity alloc];
    v50 = [v7 interfaceElementIdentifier];
    v51 = [(SBSAInterfaceElementPropertyIdentity *)v49 initWithAssociatedInterfaceElementIdentifier:v50 andProperty:@"leadingViewTransform"];
    [v47 setAnimatedTransitionDescription:v48 forProperty:v51 withMilestones:0];

    [v7 setTrailingViewAlpha:1.0 - *(a1 + 72)];
    v52 = *(a1 + 40);
    v53 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"trailingViewAlpha"];
    v54 = [SBSAInterfaceElementPropertyIdentity alloc];
    v55 = [v7 interfaceElementIdentifier];
    v56 = [(SBSAInterfaceElementPropertyIdentity *)v54 initWithAssociatedInterfaceElementIdentifier:v55 andProperty:@"trailingViewAlpha"];
    [v52 setAnimatedTransitionDescription:v53 forProperty:v56 withMilestones:0];

    [v7 setTrailingViewBlurProgress:*(a1 + 72)];
    v57 = *(a1 + 40);
    v58 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"trailingViewBlurProgress"];
    v59 = [SBSAInterfaceElementPropertyIdentity alloc];
    v60 = [v7 interfaceElementIdentifier];
    v61 = [(SBSAInterfaceElementPropertyIdentity *)v59 initWithAssociatedInterfaceElementIdentifier:v60 andProperty:@"trailingViewBlurProgress"];
    [v57 setAnimatedTransitionDescription:v58 forProperty:v61 withMilestones:0];

    if (v7)
    {
      [v7 trailingViewTransform];
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
    }

    v62 = *(a1 + 72);
    [*(a1 + 48) preferredTrailingBounds];
    v63 = CGRectGetWidth(v75);
    SBSASquishedTransform(&v70, 0, v15 == 1, &v73, v62, v63);
    [v7 setTrailingViewTransform:&v73];
    v42 = *(a1 + 32);
    v43 = *(a1 + 40);
    v44 = @"trailingViewTransform";
    goto LABEL_28;
  }

  if (v13 == 1)
  {
    [v7 setMinimalViewAlpha:1.0 - *(a1 + 72)];
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"minimalViewAlpha"];
    v18 = [SBSAInterfaceElementPropertyIdentity alloc];
    v19 = [v7 interfaceElementIdentifier];
    v20 = [(SBSAInterfaceElementPropertyIdentity *)v18 initWithAssociatedInterfaceElementIdentifier:v19 andProperty:@"minimalViewAlpha"];
    [v16 setAnimatedTransitionDescription:v17 forProperty:v20 withMilestones:0];

    [v7 setMinimalViewBlurProgress:*(a1 + 72)];
    v21 = *(a1 + 40);
    v22 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"minimalViewBlurProgress"];
    v23 = [SBSAInterfaceElementPropertyIdentity alloc];
    v24 = [v7 interfaceElementIdentifier];
    v25 = [(SBSAInterfaceElementPropertyIdentity *)v23 initWithAssociatedInterfaceElementIdentifier:v24 andProperty:@"minimalViewBlurProgress"];
    [v21 setAnimatedTransitionDescription:v22 forProperty:v25 withMilestones:0];

    if (v7)
    {
      [v7 minimalViewTransform];
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
    }

    v64 = *(a1 + 72);
    [*(a1 + 48) preferredMinimalBounds];
    v65 = CGRectGetWidth(v76);
    SBSASquishedTransform(&v70, 1, v15 == 1, &v73, v64, v65);
    [v7 setMinimalViewTransform:&v73];
    v42 = *(a1 + 32);
    v43 = *(a1 + 40);
    v44 = @"minimalViewTransform";
LABEL_28:
    v66 = [v42 newAnimatedTransitionDescriptionForProperty:v44];
    v67 = [SBSAInterfaceElementPropertyIdentity alloc];
    v68 = [v7 interfaceElementIdentifier];
    v69 = [(SBSAInterfaceElementPropertyIdentity *)v67 initWithAssociatedInterfaceElementIdentifier:v68 andProperty:v44];
    [v43 setAnimatedTransitionDescription:v66 forProperty:v69 withMilestones:0];
  }
}

uint64_t __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSAContainerResizeBehaviorProvider.m" lineNumber:91 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

- (void)preferencesFromContext:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134349056;
  v4 = [a1 queryIteration];
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[%{public}lu] Canceling resize gesture due to active element change", &v3, 0xCu);
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_42_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_2_43_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_3_44_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatore.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __62__SBSAContainerResizeBehaviorProvider_preferencesFromContext___block_invoke_4_52_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

- (void)_preferencesUpdatedWithCollapseOfElement:activeFrame:initialFrame:minimumFrame:preferences:context:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAContainerResizeBehaviorProvider.m" lineNumber:382 description:{@"Invalid parameter not satisfying: %@", @"!UIInterfaceOrientationIsLandscape([associatedElementContext interfaceOrientation])"}];
}

void __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __138__SBSAContainerResizeBehaviorProvider__preferencesUpdatedWithCollapseOfElement_activeFrame_initialFrame_minimumFrame_preferences_context___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaelementdes.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end