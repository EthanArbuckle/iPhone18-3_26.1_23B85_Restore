@interface CACLabeledElementsOverlayManager
+ (void)assignNumbersToLabeledElements:(id)elements numberingStrategy:(int)strategy startingNumber:(int64_t)number;
- (CACLabeledElementsOverlayManagerDelegate)delegate;
- (NSArray)labeledElementsCopy;
- (id)_findLabeledElementsThatIntersectsLabelRect:(CGRect)rect fromLabeledElement:(id)element justLabelRect:(BOOL)labelRect additionalElements:(id)elements;
- (id)_optimizeLabeledElements:(id)elements startingNumberedLabelsAtIndex:(unint64_t)index;
- (void)_layoutNumberedElements:(id)elements;
- (void)addLabeledElements:(id)elements forceNoArrow:(BOOL)arrow startingNumberedLabelsAtIndex:(unint64_t)index;
- (void)clearLabeledElements;
- (void)hide;
- (void)hideAnimated:(BOOL)animated completion:(id)completion;
- (void)hideWithoutAnimation;
- (void)setDelegate:(id)delegate;
- (void)showLabeledElementsOverlayWithLabeledElements:(id)elements forceNoArrow:(BOOL)arrow startingNumberedLabelsAtIndex:(unint64_t)index;
- (void)startDelayedDimmingOfNumbers;
- (void)stopDelayedDimmingOfNumbers;
@end

@implementation CACLabeledElementsOverlayManager

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(CACSimpleContentViewManager *)self setContentViewManagerDelegate:obj];
  }
}

- (void)showLabeledElementsOverlayWithLabeledElements:(id)elements forceNoArrow:(BOOL)arrow startingNumberedLabelsAtIndex:(unint64_t)index
{
  arrowCopy = arrow;
  elementsCopy = elements;
  [(CACLabeledElementsOverlayManager *)self clearLabeledElements];
  [(CACLabeledElementsOverlayManager *)self addLabeledElements:elementsCopy forceNoArrow:arrowCopy startingNumberedLabelsAtIndex:index];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __125__CACLabeledElementsOverlayManager_showLabeledElementsOverlayWithLabeledElements_forceNoArrow_startingNumberedLabelsAtIndex___block_invoke_2;
  v9[3] = &unk_279CEC9C8;
  v9[4] = self;
  [(CACSimpleContentViewManager *)self showViewControllerWithCreationHandler:&__block_literal_global_40 updateHandler:v9];
}

CACLabeledElementsOverlayViewController *__125__CACLabeledElementsOverlayManager_showLabeledElementsOverlayWithLabeledElements_forceNoArrow_startingNumberedLabelsAtIndex___block_invoke()
{
  v0 = objc_alloc_init(CACLabeledElementsOverlayViewController);

  return v0;
}

- (NSArray)labeledElementsCopy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_labeledElements copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)clearLabeledElements
{
  obj = self;
  objc_sync_enter(obj);
  labeledElements = obj->_labeledElements;
  if (labeledElements)
  {
    [(NSMutableArray *)labeledElements removeAllObjects];
  }

  else
  {
    v3 = objc_opt_new();
    v4 = obj->_labeledElements;
    obj->_labeledElements = v3;
  }

  objc_sync_exit(obj);
}

- (void)addLabeledElements:(id)elements forceNoArrow:(BOOL)arrow startingNumberedLabelsAtIndex:(unint64_t)index
{
  elementsCopy = elements;
  self->_forceNoArrow = arrow;
  v10 = elementsCopy;
  v8 = [CACLabeledElementsOverlayManager _optimizeLabeledElements:"_optimizeLabeledElements:startingNumberedLabelsAtIndex:" startingNumberedLabelsAtIndex:?];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_labeledElements addObjectsFromArray:v8];
  objc_sync_exit(selfCopy);
}

- (id)_optimizeLabeledElements:(id)elements startingNumberedLabelsAtIndex:(unint64_t)index
{
  v117 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v95 = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;

  delegate = [(CACLabeledElementsOverlayManager *)self delegate];
  selfCopy = self;
  v8 = [delegate screenForLabeledElementsOverlayManager:self];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = objc_opt_new();
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v18 = elementsCopy;
  v19 = [v18 countByEnumeratingWithState:&v110 objects:v116 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v111;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v111 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v110 + 1) + 8 * i);
        [v23 interfaceOrientedRectangle];
        v120.origin.x = v10;
        v120.origin.y = v12;
        v120.size.width = v14;
        v120.size.height = v16;
        if (CGRectIntersectsRect(v119, v120))
        {
          [v17 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v110 objects:v116 count:16];
    }

    while (v20);
  }

  v88 = v18;

  v24 = objc_opt_new();
  [v17 sortUsingComparator:&__block_literal_global_286_0];
  v25 = [v17 count];
  v94 = v24;
  if (v25 >= 1)
  {
    v26 = v25;
    v27 = 0;
    do
    {
      v28 = objc_opt_new();
      [v24 addObject:v28];
      v29 = [v17 objectAtIndex:v27];
      [v28 addObject:v29];
      [v29 interfaceOrientedRectangle];
      v31 = v30;
      [v29 interfaceOrientedRectangle];
      if (++v27 < v26)
      {
        v33 = (v31 + v32 * 0.5);
        while (1)
        {
          v34 = v29;
          v29 = [v17 objectAtIndex:{v27, v88}];

          v35 = (v33 / [v28 count]);
          [v29 interfaceOrientedRectangle];
          v37 = v36;
          [v29 interfaceOrientedRectangle];
          v39 = v38 + v37;
          if (v35 < v37 || v35 > v39)
          {
            break;
          }

          [v28 addObject:v29];
          v33 = (((v37 + v39) * 0.5) + v33);
          if (v26 == ++v27)
          {

            v24 = v94;
            goto LABEL_22;
          }
        }

        v24 = v94;
      }
    }

    while (v27 < v26);
  }

LABEL_22:
  if ([v24 count])
  {
    v41 = 0;
    v92 = v17;
    do
    {
      v42 = [v24 objectAtIndex:v41];
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __91__CACLabeledElementsOverlayManager__optimizeLabeledElements_startingNumberedLabelsAtIndex___block_invoke_2;
      v108[3] = &__block_descriptor_33_e55_q24__0___CACNumberedElement__8___CACNumberedElement__16l;
      v109 = v95;
      [v42 sortUsingComparator:v108];
      v43 = [v42 count];
      if (v43 <= 1)
      {
        ++v41;
      }

      else
      {
        v44 = v43;
        v45 = [v42 objectAtIndex:0];
        [v45 interfaceOrientedRectangle];
        v47 = v46;
        [v45 interfaceOrientedRectangle];
        v49 = v48;
        v93 = v45;
        [v45 interfaceOrientedRectangle];
        v51 = v49 + v50 * 0.5;
        ++v41;
        v52 = 1;
        do
        {
          if (v44 <= v52)
          {
            break;
          }

          v53 = [v42 objectAtIndex:v52];
          v54 = v51 / v52;
          [v53 interfaceOrientedRectangle];
          v56 = v55;
          [v53 interfaceOrientedRectangle];
          v58 = v57 + v56;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __91__CACLabeledElementsOverlayManager__optimizeLabeledElements_startingNumberedLabelsAtIndex___block_invoke_3;
          aBlock[3] = &unk_279CECA30;
          v107 = v95;
          v59 = v53;
          v105 = v59;
          v106 = v47;
          v60 = _Block_copy(aBlock);
          v61 = v60;
          v62 = v54 >= v56 && v54 <= v58;
          if (v62 && !(*(v60 + 2))(v60))
          {
            v51 = v51 + ((v56 + v58) * 0.5);
            [v59 interfaceOrientedRectangle];
            v47 = v67;
            ++v52;
            v66 = 1;
          }

          else
          {
            v63 = objc_alloc(MEMORY[0x277CBEB18]);
            v64 = [v42 subarrayWithRange:{v52, v44 - v52}];
            v65 = [v63 initWithArray:v64];

            v24 = v94;
            [v94 insertObject:v65 atIndex:v41];
            [v42 removeObjectsInRange:{v52, v44 - v52}];

            v66 = 0;
          }
        }

        while ((v66 & 1) != 0);

        v17 = v92;
      }
    }

    while (v41 < [v24 count]);
  }

  v68 = objc_opt_new();
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v69 = v24;
  v70 = [v69 countByEnumeratingWithState:&v100 objects:v115 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v101;
    do
    {
      for (j = 0; j != v71; ++j)
      {
        if (*v101 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v74 = *(*(&v100 + 1) + 8 * j);
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v75 = v74;
        v76 = [v75 countByEnumeratingWithState:&v96 objects:v114 count:16];
        if (v76)
        {
          v77 = v76;
          v78 = *v97;
          do
          {
            for (k = 0; k != v77; ++k)
            {
              if (*v97 != v78)
              {
                objc_enumerationMutation(v75);
              }

              [v68 addObject:*(*(&v96 + 1) + 8 * k)];
            }

            v77 = [v75 countByEnumeratingWithState:&v96 objects:v114 count:16];
          }

          while (v77);
        }
      }

      v71 = [v69 countByEnumeratingWithState:&v100 objects:v115 count:16];
    }

    while (v71);
  }

  v80 = [v68 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_289_0];
  v81 = [v80 mutableCopy];

  v82 = objc_opt_class();
  delegate2 = [(CACLabeledElementsOverlayManager *)selfCopy delegate];
  [v82 assignNumbersToLabeledElements:v81 numberingStrategy:objc_msgSend(delegate2 startingNumber:{"shouldAssignNumbersRandomlyInLabeledElementsOverlayManager:", selfCopy), index}];

  v84 = [[_TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup alloc] initWithElements:v81 volatile:0];
  v85 = +[_TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer shared];
  [v85 willPresentElementGroup:v84];

  delegate3 = [(CACLabeledElementsOverlayManager *)selfCopy delegate];
  [delegate3 didAssignNumbersInLabeledElementsOverlayManager:selfCopy];

  [(CACLabeledElementsOverlayManager *)selfCopy _layoutNumberedElements:v81];

  return v89;
}

uint64_t __91__CACLabeledElementsOverlayManager__optimizeLabeledElements_startingNumberedLabelsAtIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 interfaceOrientedRectangle];
  v7 = v6;
  [v5 interfaceOrientedRectangle];
  v9 = v8;

  v10 = v7 + v9 * 0.5;
  [v4 interfaceOrientedRectangle];
  v12 = v11;
  [v4 interfaceOrientedRectangle];
  v14 = v13;

  v15 = v12 + v14 * 0.5;
  v16 = -1;
  if (v10 >= v15)
  {
    v16 = 1;
  }

  if (v10 == v15)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

uint64_t __91__CACLabeledElementsOverlayManager__optimizeLabeledElements_startingNumberedLabelsAtIndex___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 interfaceOrientedRectangle];
  v8 = v7;
  [v6 interfaceOrientedRectangle];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(a1 + 32);
    [v5 interfaceOrientedRectangle];
    v13 = v12;
    [v6 interfaceOrientedRectangle];
    v15 = -1;
    if (v13 >= v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = -1;
    }

    if (v13 <= v14)
    {
      v15 = 1;
    }

    if (v11 == 1)
    {
      v10 = v15;
    }

    else
    {
      v10 = v16;
    }
  }

  return v10;
}

BOOL __91__CACLabeledElementsOverlayManager__optimizeLabeledElements_startingNumberedLabelsAtIndex___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 44);
  [*(a1 + 32) interfaceOrientedRectangle];
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return v3 < (v4 + -200.0);
  }

  else
  {
    return v3 > (v4 + 200.0);
  }
}

uint64_t __91__CACLabeledElementsOverlayManager__optimizeLabeledElements_startingNumberedLabelsAtIndex___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "orderingPriority")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 orderingPriority];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)_layoutNumberedElements:(id)elements
{
  v193 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  firstObject = [elementsCopy firstObject];
  v150 = firstObject;
  if (objc_opt_respondsToSelector())
  {
    element = [firstObject element];
    application = [element application];
    bundleId = [application bundleId];
    v159 = [bundleId isEqualToString:@"com.apple.mobilesafari"] ^ 1;
  }

  else
  {
    LOBYTE(v159) = 0;
  }

  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  obj = elementsCopy;
  v11 = &OBJC_IVAR___CACDisplayManager__statusIndicatorType;
  selfCopy = self;
  v161 = [obj countByEnumeratingWithState:&v183 objects:v192 count:16];
  if (v161)
  {
    v156 = *v184;
    do
    {
      for (i = 0; i != v161; ++i)
      {
        if (*v184 != v156)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v183 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        [v13 interfaceOrientedRectangle];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [v13 setArrowOrientation:!self->_forceNoArrow];
        if (v159)
        {
          v23 = 0;
        }

        else
        {
          +[CACLabeledBadgeView badgeFontSize];
          v23 = 2 * (v22 < v24 * 0.75);
        }

        [v13 setBadgePresentation:v23];
        numberedLabel = [v13 numberedLabel];
        +[CACLabeledBadgeView sizeOfBadgeGivenNumberOfDisplayedDigits:arrowOrientation:badgePresentation:badgeIndicator:](CACLabeledBadgeView, "sizeOfBadgeGivenNumberOfDisplayedDigits:arrowOrientation:badgePresentation:badgeIndicator:", [numberedLabel length], objc_msgSend(v13, "arrowOrientation"), objc_msgSend(v13, "badgePresentation"), objc_msgSend(v13, "badgeIndicatorMask"));
        v27 = v26;
        v29 = v28;

        [v13 labelRectangle];
        if (userInterfaceLayoutDirection == 1)
        {
          v194.origin.x = v16;
          v194.origin.y = v18;
          v194.size.width = v20;
          v194.size.height = v22;
          v16 = CGRectGetMaxX(v194) - v27;
        }

        [v13 setLabelRectangle:{v16, v18 + v22 - v29 + -2.0, v27, v29}];
        objc_autoreleasePoolPop(v14);
        self = selfCopy;
        v11 = &OBJC_IVAR___CACDisplayManager__statusIndicatorType;
      }

      v161 = [obj countByEnumeratingWithState:&v183 objects:v192 count:16];
    }

    while (v161);
  }

  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v30 = obj;
  v31 = [v30 countByEnumeratingWithState:&v179 objects:v191 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v180;
    v34 = 1.0;
    v35 = 2.0;
    v151 = *v180;
    v152 = v30;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v180 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v37 = *(*(&v179 + 1) + 8 * j);
        v38 = objc_autoreleasePoolPush();
        [v37 interfaceOrientedRectangle];
        if (*(&self->super.super.isa + v11[111]) == 1)
        {
          [v37 labelRectangle];
          v46 = v45 + v34;
          if (userInterfaceLayoutDirection != 1)
          {
            v46 = -(v45 + v34);
          }

          [v37 setLabelRectangle:{v43 + v46, v44 + v35}];
          goto LABEL_54;
        }

        v47 = v39;
        if (v42 >= 200.0)
        {
          goto LABEL_54;
        }

        v48 = v40;
        v160 = v41;
        v162 = v42;
        [v37 labelRectangle];
        v52 = v51;
        v54 = v53;
        v55 = v53 + -4.0;
        v56 = -(v53 + -4.0);
        if (userInterfaceLayoutDirection != 1)
        {
          v55 = v56;
        }

        v57 = v49 + v55;
        v157 = v50;
        v58 = [(CACLabeledElementsOverlayManager *)self _findLabeledElementsThatIntersectsLabelRect:v37 fromLabeledElement:0 justLabelRect:v30 additionalElements:v49 + v55, v52, v54];
        if (![v58 count])
        {
          goto LABEL_52;
        }

        v153 = v54;
        obja = v52;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v59 = v58;
        v60 = [v59 countByEnumeratingWithState:&v175 objects:v190 count:16];
        if (!v60)
        {
          v57 = 0.0;
          goto LABEL_46;
        }

        v61 = v60;
        v62 = *v176;
        v57 = 0.0;
        do
        {
          for (k = 0; k != v61; ++k)
          {
            if (*v176 != v62)
            {
              objc_enumerationMutation(v59);
            }

            [*(*(&v175 + 1) + 8 * k) interfaceOrientedRectangle];
            v68 = v64;
            v69 = v65;
            v70 = v66;
            v71 = v67;
            if (userInterfaceLayoutDirection == 1)
            {
              if (CGRectGetMinX(*&v64) < v57)
              {
                v195.origin.x = v68;
                v195.origin.y = v69;
                v195.size.width = v70;
                v195.size.height = v71;
                MinX = CGRectGetMinX(v195);
                v196.origin.x = v47;
                v196.origin.y = v48;
                v196.size.width = v160;
                v196.size.height = v162;
                if (MinX < CGRectGetMinX(v196))
                {
                  v197.origin.x = v68;
                  v197.origin.y = v69;
                  v197.size.width = v70;
                  v197.size.height = v71;
                  v73 = CGRectGetMinX(v197);
LABEL_41:
                  v57 = v73;
                  continue;
                }
              }
            }

            else if (CGRectGetMaxX(*&v64) > v57)
            {
              v198.origin.x = v68;
              v198.origin.y = v69;
              v198.size.width = v70;
              v198.size.height = v71;
              MaxX = CGRectGetMaxX(v198);
              v199.origin.x = v47;
              v199.origin.y = v48;
              v199.size.width = v160;
              v199.size.height = v162;
              if (MaxX < CGRectGetMaxX(v199))
              {
                v200.origin.x = v68;
                v200.origin.y = v69;
                v200.size.width = v70;
                v200.size.height = v71;
                v73 = CGRectGetMaxX(v200);
                goto LABEL_41;
              }
            }
          }

          v61 = [v59 countByEnumeratingWithState:&v175 objects:v190 count:16];
        }

        while (v61);
LABEL_46:

        v33 = v151;
        v75 = v47;
        v76 = v48;
        if (userInterfaceLayoutDirection == 1)
        {
          v77 = v160;
          v78 = v162;
          self = selfCopy;
          v11 = &OBJC_IVAR___CACDisplayManager__statusIndicatorType;
          v30 = v152;
          v35 = 2.0;
          v54 = v153;
          v52 = obja;
          if (v57 >= CGRectGetMaxX(*&v75))
          {
            v201.origin.x = v47;
            v201.origin.y = v48;
            v201.size.width = v160;
            v201.size.height = v162;
            v79 = CGRectGetMaxX(v201);
            goto LABEL_51;
          }

          goto LABEL_53;
        }

        v80 = v160;
        v81 = v162;
        self = selfCopy;
        v11 = &OBJC_IVAR___CACDisplayManager__statusIndicatorType;
        v30 = v152;
        v35 = 2.0;
        v54 = v153;
        v52 = obja;
        if (v57 <= CGRectGetMinX(*&v75))
        {
          v202.origin.x = v47;
          v202.origin.y = v48;
          v202.size.width = v160;
          v202.size.height = v162;
          v79 = CGRectGetMinX(v202);
LABEL_51:
          if (v79 - v57 < v54)
          {
LABEL_52:
            [v37 setLabelRectangle:{v57, v52, v54, v157}];
          }
        }

LABEL_53:

        v34 = 1.0;
LABEL_54:
        objc_autoreleasePoolPop(v38);
      }

      v32 = [v30 countByEnumeratingWithState:&v179 objects:v191 count:16];
    }

    while (v32);
  }

  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v82 = v30;
  v83 = [v82 countByEnumeratingWithState:&v171 objects:v189 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v172;
    do
    {
      for (m = 0; m != v84; ++m)
      {
        if (*v172 != v85)
        {
          objc_enumerationMutation(v82);
        }

        v87 = *(*(&v171 + 1) + 8 * m);
        v88 = objc_autoreleasePoolPush();
        v89 = v11[111];
        if ((*(&self->super.super.isa + v89) & 1) != 0 || ([v87 interfaceOrientedRectangle], v90 < 30.0))
        {
          [v87 labelRectangle];
          v92 = v91;
          v94 = v93;
          v96 = v95;
          v98 = v97;
          [v87 interfaceOrientedRectangle];
          v100 = v99;
          [v87 labelRectangle];
          v102 = (v100 - v101) * 0.5;
          v103 = v94 - truncf(v102);
          v104 = v92 + 8.0;
          if (userInterfaceLayoutDirection == 1)
          {
            v104 = v92 + -8.0;
          }

          if (*(&self->super.super.isa + v89) == 1)
          {
            v92 = v104;
          }
        }

        else
        {
          [v87 labelRectangle];
          v92 = v105;
          v107 = v106;
          v96 = v108;
          v98 = v109;
          [v87 interfaceOrientedRectangle];
          v103 = v107 - (v110 + -15.0);
        }

        [v87 setLabelRectangle:{v92, v103, v96, v98}];
        objc_autoreleasePoolPop(v88);
      }

      v84 = [v82 countByEnumeratingWithState:&v171 objects:v189 count:16];
    }

    while (v84);
  }

  delegate = [(CACLabeledElementsOverlayManager *)self delegate];
  v112 = [delegate screenForLabeledElementsOverlayManager:self];
  [v112 bounds];
  v114 = v113;
  v116 = v115;
  v118 = v117;
  v120 = v119;

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v121 = v82;
  v122 = [v121 countByEnumeratingWithState:&v167 objects:v188 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = *v168;
    do
    {
      for (n = 0; n != v123; ++n)
      {
        if (*v168 != v124)
        {
          objc_enumerationMutation(v121);
        }

        v126 = *(*(&v167 + 1) + 8 * n);
        v127 = objc_autoreleasePoolPush();
        [v126 labelRectangle];
        if (v128 < v114 && v128 < v129)
        {
          [v126 setLabelRectangle:1.0];
        }

        [v126 labelRectangle];
        if (v131 < v116 && v131 < v132)
        {
          [v126 setLabelRectangle:?];
        }

        [v126 labelRectangle];
        x = v203.origin.x;
        width = v203.size.width;
        height = v203.size.height;
        MaxY = CGRectGetMaxY(v203);
        v204.origin.x = v114;
        v204.origin.y = v116;
        v204.size.width = v118;
        v204.size.height = v120;
        if (MaxY > CGRectGetMaxY(v204))
        {
          v205.origin.x = v114;
          v205.origin.y = v116;
          v205.size.width = v118;
          v205.size.height = v120;
          [v126 setLabelRectangle:{x, CGRectGetMaxY(v205) - height + -1.0, width, height}];
        }

        [v126 labelRectangle];
        y = v206.origin.y;
        v139 = v206.size.width;
        v140 = v206.size.height;
        v141 = CGRectGetMaxX(v206);
        v207.origin.x = v114;
        v207.origin.y = v116;
        v207.size.width = v118;
        v207.size.height = v120;
        if (v141 > CGRectGetMaxX(v207))
        {
          v208.origin.x = v114;
          v208.origin.y = v116;
          v208.size.width = v118;
          v208.size.height = v120;
          [v126 setLabelRectangle:{CGRectGetMaxX(v208) - v139 + -1.0, y, v139, v140}];
        }

        objc_autoreleasePoolPop(v127);
      }

      v123 = [v121 countByEnumeratingWithState:&v167 objects:v188 count:16];
    }

    while (v123);
  }

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v142 = v121;
  v143 = [v142 countByEnumeratingWithState:&v163 objects:v187 count:16];
  if (v143)
  {
    v144 = v143;
    v145 = *v164;
    do
    {
      for (ii = 0; ii != v144; ++ii)
      {
        if (*v164 != v145)
        {
          objc_enumerationMutation(v142);
        }

        v147 = *(*(&v163 + 1) + 8 * ii);
        v148 = objc_autoreleasePoolPush();
        if ([v147 arrowOrientation])
        {
          if ([v147 badgePresentation])
          {
            [v147 labelRectangle];
            v149 = CGRectGetMaxX(v209);
            [v147 interfaceOrientedRectangle];
            if (v149 > CGRectGetMaxX(v210))
            {
              [v147 setArrowOrientation:0];
            }
          }
        }

        objc_autoreleasePoolPop(v148);
      }

      v144 = [v142 countByEnumeratingWithState:&v163 objects:v187 count:16];
    }

    while (v144);
  }
}

- (id)_findLabeledElementsThatIntersectsLabelRect:(CGRect)rect fromLabeledElement:(id)element justLabelRect:(BOOL)labelRect additionalElements:(id)elements
{
  labelRectCopy = labelRect;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v34 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  elementsCopy = elements;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  [array2 addObjectsFromArray:self->_labeledElements];
  [array2 addObjectsFromArray:elementsCopy];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = array2;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        if (v22 != elementCopy)
        {
          v23 = *(*(&v29 + 1) + 8 * i);
          if (labelRectCopy)
          {
            [v23 labelRectangle];
          }

          else
          {
            [v23 interfaceOrientedRectangle];
          }

          v37.origin.x = v24;
          v37.origin.y = v25;
          v37.size.width = v26;
          v37.size.height = v27;
          v36.origin.x = x;
          v36.origin.y = y;
          v36.size.width = width;
          v36.size.height = height;
          if (CGRectIntersectsRect(v36, v37))
          {
            [array addObject:v22];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  return array;
}

+ (void)assignNumbersToLabeledElements:(id)elements numberingStrategy:(int)strategy startingNumber:(int64_t)number
{
  v57 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v8 = [elementsCopy count];
  v9 = malloc_type_calloc(v8 + number, 8uLL, 0x100004000313F17uLL);
  v10 = malloc_type_calloc(v8 + number, 8uLL, 0x100004000313F17uLL);
  v11 = malloc_type_calloc(v8 + number, 1uLL, 0x100004077774924uLL);
  v12 = v11;
  strategyCopy = strategy;
  if (strategy == 1)
  {
    if (v8 < 1)
    {
      v33 = +[CACDisplayManager sharedManager];
      randomElementNumberingSeed = [v33 randomElementNumberingSeed];

      srand(randomElementNumberingSeed);
    }

    else
    {
      for (i = 0; i != v8; ++i)
      {
        v9[i] = i + 1;
        v11[i] = 1;
      }

      v14 = +[CACDisplayManager sharedManager];
      randomElementNumberingSeed2 = [v14 randomElementNumberingSeed];

      srand(randomElementNumberingSeed2);
      for (j = 0; j != v8; ++j)
      {
        v17 = rand() % v8;
        if (j != v17)
        {
          v18 = v9[j];
          v9[j] = v9[v17];
          v9[v17] = v18;
        }
      }
    }
  }

  else
  {
    numberCopy = number;
    v43 = elementsCopy;
    v44 = v10;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v19 = elementsCopy;
    v20 = [v19 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v52;
      v46 = v44 - 8;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v52 != v23)
          {
            objc_enumerationMutation(v19);
          }

          label = [*(*(&v51 + 1) + 8 * k) label];
          integerValue = [label integerValue];

          v27 = integerValue >= 1 && integerValue <= v8;
          if (v27 && !v9[v22] && !*&v46[8 * integerValue] && strategyCopy == 0)
          {
            v9[v22] = integerValue;
            *&v46[8 * integerValue] = v22 + 1;
            v12[v22] = 1;
          }

          ++v22;
        }

        v21 = [v19 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v21);
    }

    elementsCopy = v43;
    v10 = v44;
    if (v8 >= 1)
    {
      v29 = 0;
      do
      {
        v30 = &v44[8 * numberCopy - 8];
        v31 = numberCopy - 1;
        if (v9[v29])
        {
          ++v29;
        }

        else
        {
          do
          {
            v32 = *v30;
            v30 += 8;
            ++v31;
          }

          while (v32);
          v9[v29++] = v31;
          *(v30 - 1) = v29;
        }
      }

      while (v29 != v8);
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v35 = elementsCopy;
  v36 = [v35 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = 0;
    v39 = *v48;
    do
    {
      for (m = 0; m != v37; ++m)
      {
        if (*v48 != v39)
        {
          objc_enumerationMutation(v35);
        }

        v41 = *(*(&v47 + 1) + 8 * m);
        [v41 setNumber:v9[v38]];
        [v41 setNumberIsFixed:v12[v38++]];
      }

      v37 = [v35 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v37);
  }

  free(v9);
  free(v10);
  free(v12);
}

- (void)startDelayedDimmingOfNumbers
{
  [(CACSimpleContentViewManager *)self setPendingDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]+ 1];
  [(CACSimpleContentViewManager *)self setActiveDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]];
  viewController = [(CACSimpleContentViewManager *)self viewController];
  view = [viewController view];
  [view setAlpha:1.0];

  delegate = [(CACLabeledElementsOverlayManager *)self delegate];
  if ([delegate isOverlayFadingEnabledForLabeledElementsOverlayManager:self])
  {
    delegate2 = [(CACLabeledElementsOverlayManager *)self delegate];
    if ([delegate2 isAlwaysShowingLabeledElementsOverlayManager:self])
    {
      delegate3 = [(CACLabeledElementsOverlayManager *)self delegate];
      v7 = [delegate3 isHandlingDisambiguationForLabeledElementsOverlayManager:self];

      if ((v7 & 1) == 0)
      {
        delegate4 = [(CACLabeledElementsOverlayManager *)self delegate];
        [delegate4 overlayFadeDelayForLabeledElementsOverlayManager:self];
        v10 = dispatch_time(0, (v9 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__CACLabeledElementsOverlayManager_startDelayedDimmingOfNumbers__block_invoke;
        block[3] = &unk_279CEB2D0;
        block[4] = self;
        dispatch_after(v10, MEMORY[0x277D85CD0], block);
      }

      return;
    }
  }
}

uint64_t __64__CACLabeledElementsOverlayManager_startDelayedDimmingOfNumbers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeDimmingTransactionID];
  result = [*(a1 + 32) pendingDimmingTransactionID];
  if (v2 == result)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __64__CACLabeledElementsOverlayManager_startDelayedDimmingOfNumbers__block_invoke_2;
    v4[3] = &unk_279CEB2D0;
    v4[4] = *(a1 + 32);
    return [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0 completion:1.0];
  }

  return result;
}

void __64__CACLabeledElementsOverlayManager_startDelayedDimmingOfNumbers__block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  [v6 overlayFadeOpacityForLabeledElementsOverlayManager:*(a1 + 32)];
  v3 = v2;
  v4 = [*(a1 + 32) viewController];
  v5 = [v4 view];
  [v5 setAlpha:v3];
}

- (void)stopDelayedDimmingOfNumbers
{
  [(CACSimpleContentViewManager *)self setPendingDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]+ 1];
  viewController = [(CACSimpleContentViewManager *)self viewController];
  view = [viewController view];
  [view setAlpha:1.0];
}

- (void)hide
{
  v2.receiver = self;
  v2.super_class = CACLabeledElementsOverlayManager;
  [(CACSimpleContentViewManager *)&v2 hide];
}

- (void)hideWithoutAnimation
{
  v2.receiver = self;
  v2.super_class = CACLabeledElementsOverlayManager;
  [(CACSimpleContentViewManager *)&v2 hideWithoutAnimation];
}

- (void)hideAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CACLabeledElementsOverlayManager_hideAnimated_completion___block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  completionCopy = completion;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v7.receiver = self;
  v7.super_class = CACLabeledElementsOverlayManager;
  [(CACSimpleContentViewManager *)&v7 hideAnimated:animatedCopy completion:completionCopy];
}

- (CACLabeledElementsOverlayManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end