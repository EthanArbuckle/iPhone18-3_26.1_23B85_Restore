@interface CACEditingModeOverlayManager
- (CACEditingModeOverlayManagerDelegate)delegate;
- (CGRect)_interfaceOrientedFrameForElement:(id)a3 axFrame:(CGRect)a4;
- (_NSRange)rangeForLineNumber:(int64_t)a3 forElement:(id)a4;
- (id)_visibleLineRangesForElement:(id)a3 lineFetchingGeneration:(unint64_t)a4;
- (id)_webVisibleLineRangesForElement:(id)a3 lineFetchingGeneration:(unint64_t)a4;
- (void)_showOverlayElementsForElement:(id)a3 textUnit:(unint64_t)a4 startIndex:(unint64_t)a5;
- (void)_showPopoverForElement:(id)a3 targetRange:(_NSRange)a4 startIndex:(unint64_t)a5 type:(int64_t)a6;
- (void)hide;
- (void)hideWithoutAnimation;
- (void)numberingDidUpdate;
- (void)setDelegate:(id)a3;
- (void)startDelayedDimmingOfNumbers;
- (void)stopDelayedDimmingOfNumbers;
@end

@implementation CACEditingModeOverlayManager

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(CACSimpleContentViewManager *)self setContentViewManagerDelegate:obj];
  }
}

- (_NSRange)rangeForLineNumber:(int64_t)a3 forElement:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v14 = xmmword_26B404FF0;
  v15[0] = @"lineNumber";
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = [v5 numberWithInteger:a3];
  v15[1] = @"lineColumn";
  v16[0] = v7;
  v16[1] = &unk_287BEFE68;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = [v6 uiElement];

  v10 = [v9 objectWithAXAttribute:92504 parameter:v8];
  if (v10)
  {
    v11 = CFGetTypeID(v10);
    if (v11 == AXValueGetTypeID() && AXValueGetType(v10) == kAXValueTypeCFRange)
    {
      AXValueGetValue(v10, kAXValueTypeCFRange, &v14);
    }
  }

  v13 = *(&v14 + 1);
  v12 = v14;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)_webVisibleLineRangesForElement:(id)a3 lineFetchingGeneration:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 textMarkerRangeForSelection];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__CACEditingModeOverlayManager__webVisibleLineRangesForElement_lineFetchingGeneration___block_invoke;
  aBlock[3] = &unk_279CEBF90;
  v21 = v6;
  v22 = a4;
  aBlock[4] = self;
  v8 = v6;
  v9 = _Block_copy(aBlock);
  v10 = [v7 firstObject];
  v11 = [v8 rangeForTextMarkers:v7];
  v13 = [v8 isVisibleTextRange:{v11, v12}];
  v14 = (*(v9 + 2))(v9, 0, v10, v13 ^ 1u);
  v15 = (*(v9 + 2))(v9, 1, v10, v13 ^ 1u);
  v16 = [v14 reverseObjectEnumerator];
  v17 = [v16 allObjects];

  v18 = [v17 arrayByAddingObjectsFromArray:v15];

  return v18;
}

id __87__CACEditingModeOverlayManager__webVisibleLineRangesForElement_lineFetchingGeneration___block_invoke(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = v7;
  v26 = v9;
  if (v9)
  {
    v10 = 0;
    v11 = v9;
    v28 = a2;
    v27 = 0;
    do
    {
      v12 = v11;
      if (*(*(a1 + 32) + 48) != *(a1 + 48))
      {
        break;
      }

      context = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      if (a2)
      {
        v14 = [v13 textLineEndMarker:v11];
        v15 = [*(a1 + 40) textLineStartMarker:v14];
        v16 = v14;
      }

      else
      {
        v14 = [v13 textLineStartMarker:{v11, v26}];
        v16 = [*(a1 + 40) textLineEndMarker:v14];
        v15 = v14;
      }

      v11 = v14;

      if (a4 && ![v8 count])
      {
        if (++v27 > 0x64)
        {
LABEL_21:

          objc_autoreleasePoolPop(context);
          break;
        }
      }

      else if (++v10 > 6)
      {
        goto LABEL_21;
      }

      if (v15 && v16)
      {
        v17 = a4;
        v18 = v8;
        v19 = *(a1 + 40);
        v30[0] = v15;
        v30[1] = v16;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
        v21 = [v19 rangeForTextMarkers:v20];
        v23 = v22;

        if ([*(a1 + 40) isVisibleTextRange:{v21, v23}])
        {
          v24 = [MEMORY[0x277CCAE60] valueWithRange:{v21, v23}];
          v8 = v18;
          if (([v18 containsObject:v24] & 1) == 0)
          {
            [v18 addObject:v24];
            v10 = 0;
          }
        }

        else
        {
          v8 = v18;
        }

        a4 = v17;
        a2 = v28;
      }

      objc_autoreleasePoolPop(context);
    }

    while (v11);
  }

  else
  {
    v11 = 0;
  }

  return v8;
}

- (id)_visibleLineRangesForElement:(id)a3 lineFetchingGeneration:(unint64_t)a4
{
  v6 = a3;
  if ([v6 hasAnyTraits:*MEMORY[0x277CE6E90]])
  {
    v7 = [(CACEditingModeOverlayManager *)self _webVisibleLineRangesForElement:v6 lineFetchingGeneration:a4];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [v6 uiElement];
    v9 = [v6 selectedTextRange];
    v29 = v8;
    if (v8 && self->_lineFetchingGeneration == a4)
    {
      v10 = 0;
      v11 = 10000;
      if (v9 > 10000)
      {
        v11 = v9;
      }

      v12 = v9 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x7FFFFFFF;
      v13 = v11 - 10000;
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      v28 = v6;
      while (1)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = [(CACEditingModeOverlayManager *)self rangeForLineNumber:v14 forElement:v6];
        if (v16 + v17 <= (v14 + 1))
        {
          ++v14;
        }

        else
        {
          v14 = v16 + v17;
        }

        if (v10 >> 5 > 0x270)
        {
          break;
        }

        v18 = v16;
        v19 = v17;
        v20 = [v7 count];
        v21 = v10 <= 4 || v20 == 0;
        if (!v21 || v18 == 0x7FFFFFFF || !(v19 | v18))
        {
          break;
        }

        if ([v6 isVisibleTextRange:{v18, v19}])
        {
          [MEMORY[0x277CCAE60] valueWithRange:{v18, v19}];
          v22 = self;
          v24 = v23 = a4;
          v25 = [v7 containsObject:v24];

          a4 = v23;
          self = v22;
          v6 = v28;
          if ((v25 & 1) == 0)
          {
            v26 = [MEMORY[0x277CCAE60] valueWithRange:{v18, v19}];
            [v7 addObject:v26];

            v10 = 0;
          }
        }

        ++v10;
        objc_autoreleasePoolPop(v15);
        if (self->_lineFetchingGeneration != a4)
        {
          goto LABEL_31;
        }
      }

      objc_autoreleasePoolPop(v15);
    }

LABEL_31:
  }

  return v7;
}

- (CGRect)_interfaceOrientedFrameForElement:(id)a3 axFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [a3 windowDisplayId];
  v9 = +[CACDisplayManager sharedManager];
  v10 = [v9 overlayViewForDisplayID:v8];

  if (v10)
  {
    v11 = +[CACDisplayManager sharedManager];
    v12 = [v11 carPlayConnected];

    v13 = [MEMORY[0x277CE6BA0] systemWideElement];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 elementsForAttribute:1009];
      v16 = [v15 firstObject];

      v14 = v16;
    }

    v17 = [v10 window];
    [v14 convertRect:objc_msgSend(v17 toContextId:"_contextId") displayId:{v8, x, y, width, height}];
    x = v18;
    y = v19;
    width = v20;
    height = v21;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)_showOverlayElementsForElement:(id)a3 textUnit:(unint64_t)a4 startIndex:(unint64_t)a5
{
  v109 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] array];
  ++self->_lineFetchingGeneration;
  v9 = [v7 application];
  v10 = [v9 elementForAttribute:2076];
  [v10 frame];
  v97 = v12;
  v98 = v11;
  v95 = v14;
  v96 = v13;

  lineFetchingGeneration = self->_lineFetchingGeneration;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = [(CACEditingModeOverlayManager *)self _visibleLineRangesForElement:v7 lineFetchingGeneration:lineFetchingGeneration];
  v83 = [obj countByEnumeratingWithState:&v104 objects:v108 count:16];
  if (v83)
  {
    v82 = *v105;
    v75 = *(MEMORY[0x277CBF398] + 8);
    v76 = *MEMORY[0x277CBF398];
    v73 = *(MEMORY[0x277CBF398] + 24);
    v74 = *(MEMORY[0x277CBF398] + 16);
    v78 = a4;
    v77 = lineFetchingGeneration;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v105 != v82)
      {
        objc_enumerationMutation(obj);
      }

      if (lineFetchingGeneration != self->_lineFetchingGeneration)
      {
        break;
      }

      v17 = *(*(&v104 + 1) + 8 * v16);
      v18 = [v17 rangeValue];
      [v7 rectForRange:{v18, v19}];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      [(CACEditingModeOverlayManager *)self _interfaceOrientedFrameForElement:v7 axFrame:?];
      v86 = v29;
      v88 = v28;
      v90 = v31;
      v91 = v30;
      [v7 frame];
      [(CACEditingModeOverlayManager *)self _interfaceOrientedFrameForElement:v7 axFrame:?];
      v84 = v32;
      location = [v17 rangeValue];
      length = v34;
      v114.origin.x = v98;
      v114.origin.y = v97;
      v114.size.width = v96;
      v114.size.height = v95;
      v93 = v23;
      v94 = v21;
      v123.origin.x = v21;
      v123.origin.y = v23;
      v92 = v25;
      v123.size.width = v25;
      v99 = v27;
      v123.size.height = v27;
      v115 = CGRectIntersection(v114, v123);
      x = v115.origin.x;
      y = v115.origin.y;
      width = v115.size.width;
      height = v115.size.height;
      v115.origin.x = v98;
      v115.origin.y = v97;
      v115.size.width = v96;
      v115.size.height = v95;
      if (CGRectIsEmpty(v115) || (v116.origin.y = v97, v116.origin.x = v98, v116.size.height = v95, v116.size.width = v96, CGRectIsNull(v116)))
      {
        if (a4 == 2)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v117.origin.x = x;
        v117.origin.y = y;
        v117.size.width = width;
        v117.size.height = height;
        IsNull = CGRectIsNull(v117);
        v41 = height < v99 * 0.5 || IsNull;
        if (a4 == 2 && (v41 & 1) != 0)
        {
LABEL_16:
          if (v88 - v84 <= 0.0)
          {
            v42 = v86;
          }

          else
          {
            v42 = v86 + v88 - v84;
          }

          if (v88 - v84 <= 0.0)
          {
            v43 = v88;
          }

          else
          {
            v43 = v88 - (v88 - v84);
          }

          v45 = v75;
          v44 = v76;
          v47 = v73;
          v46 = v74;
          if ([v8 count])
          {
            v48 = [v8 lastObject];
            [v48 axFrame];
            v44 = v49;
            v45 = v50;
            v46 = v51;
            v47 = v52;
          }

          v54 = v90;
          v53 = v91;
          if ([v8 count])
          {
            v55 = [v8 lastObject];
            v56 = [v55 range];
            v58 = v57;

            v59 = v56 == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v58 = 0;
            v56 = 0x7FFFFFFFFFFFFFFFLL;
            v59 = 1;
          }

          v118.origin.x = v43;
          v118.origin.y = v91;
          v118.size.width = v42;
          v118.size.height = v90;
          v124.origin.x = v44;
          v124.origin.y = v45;
          v124.size.width = v46;
          v124.size.height = v47;
          v119 = CGRectUnion(v118, v124);
          v85 = v119.origin.x;
          v87 = v119.size.height;
          v89 = v119.origin.y;
          v80 = v119.size.width;
          v112.location = [v17 rangeValue];
          v112.length = v60;
          v110.location = v56;
          v110.length = v58;
          v61 = NSUnionRange(v110, v112);
          v120.origin.x = v44;
          v120.origin.y = v45;
          v120.size.width = v46;
          v120.size.height = v47;
          if (!CGRectIsNull(v120) && !v59)
          {
            v121.size.width = v42;
            v121.origin.x = v43;
            v62 = vabdd_f64(v89, v91);
            v71 = v121.origin.x;
            v72 = v42;
            v121.origin.y = v91;
            v121.size.height = v90;
            v125.origin.x = v44;
            v125.origin.y = v45;
            v125.size.width = v46;
            v125.size.height = v47;
            v122 = CGRectIntersection(v121, v125);
            if (vabdd_f64(v87, v90) < 10.0 && v62 < 10.0)
            {
              v65 = v122.size.height <= 0.0 || v61.location == 0x7FFFFFFFFFFFFFFFLL || v61.length == 0;
              v43 = v71;
              if (!v65)
              {
                [v8 removeLastObject];
                v43 = v85;
                v54 = v87;
                v53 = v89;
                v42 = v80;
                location = v61.location;
                length = v61.length;
              }
            }

            else
            {
              v43 = v71;
            }
          }

          v66 = objc_opt_new();
          [v66 setAxFrame:{v94, v93, v92, v99}];
          [v66 setInterfaceOrientedFrame:{v43, v53, v42, v54}];
          [v66 setRange:{location, length}];
          [v66 setTextUnit:2];
          [v66 setNumber:{objc_msgSend(v8, "count") + a5}];
          [v66 setNumberIsFixed:0];
          v67 = [v7 value];
          v113.length = [v67 length];
          v111.location = location;
          v111.length = length;
          v113.location = 0;
          v68 = NSIntersectionRange(v111, v113);
          if (v68.length)
          {
            v69 = [v67 substringWithRange:{v68.location, v68.length}];
            [v66 setRepresentedText:v69];
          }

          else
          {
            [v66 setRepresentedText:&stru_287BD8610];
          }

          a4 = v78;
          [v8 addObject:{v66, *&v71, *&v72}];

          lineFetchingGeneration = v77;
        }
      }

      if (v83 == ++v16)
      {
        v83 = [obj countByEnumeratingWithState:&v104 objects:v108 count:16];
        if (v83)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ([v8 count] > 1)
  {
    objc_storeStrong(&self->_displayedOverlayElements, v8);
    objc_storeStrong(&self->_overlayElementsForCommandHandling, self->_displayedOverlayElements);
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __83__CACEditingModeOverlayManager__showOverlayElementsForElement_textUnit_startIndex___block_invoke_2;
    v100[3] = &unk_279CEBFB8;
    v102 = self;
    v103 = a4;
    v101 = v8;
    [(CACSimpleContentViewManager *)self showViewControllerWithCreationHandler:&__block_literal_global_20 updateHandler:v100];
  }

  else
  {
    displayedOverlayElements = self->_displayedOverlayElements;
    self->_displayedOverlayElements = MEMORY[0x277CBEBF8];

    objc_storeStrong(&self->_overlayElementsForCommandHandling, self->_displayedOverlayElements);
    [(CACSimpleContentViewManager *)self hideAnimated:1 completion:0];
  }
}

CACEditingModeOverlayViewController *__83__CACEditingModeOverlayManager__showOverlayElementsForElement_textUnit_startIndex___block_invoke()
{
  v0 = objc_alloc_init(CACEditingModeOverlayViewController);

  return v0;
}

void __83__CACEditingModeOverlayManager__showOverlayElementsForElement_textUnit_startIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setElements:*(a1 + 32)];
  v3 = *(a1 + 48);
  if (v3 <= 4)
  {
    [v4 setOverlayType:qword_26B405008[v3]];
  }

  [*(a1 + 40) setEditingModeOverlayViewController:v4];
}

- (void)hide
{
  ++self->_lineFetchingGeneration;
  displayedOverlayElements = self->_displayedOverlayElements;
  self->_displayedOverlayElements = MEMORY[0x277CBEBF8];

  v4.receiver = self;
  v4.super_class = CACEditingModeOverlayManager;
  [(CACSimpleContentViewManager *)&v4 hide];
}

- (void)hideWithoutAnimation
{
  ++self->_lineFetchingGeneration;
  displayedOverlayElements = self->_displayedOverlayElements;
  self->_displayedOverlayElements = MEMORY[0x277CBEBF8];

  v4 = [(CACSimpleContentViewManager *)self viewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CACSimpleContentViewManager *)self viewController];
    v7 = [v6 viewControllerInPopover];
    [v7 setPopoverShowing:0];
  }

  v8.receiver = self;
  v8.super_class = CACEditingModeOverlayManager;
  [(CACSimpleContentViewManager *)&v8 hideWithoutAnimation];
}

- (void)_showPopoverForElement:(id)a3 targetRange:(_NSRange)a4 startIndex:(unint64_t)a5 type:(int64_t)a6
{
  length = a4.length;
  location = a4.location;
  v72 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v43 = self;
  v10 = [(CACSimpleContentViewManager *)self viewController];
  objc_opt_class();
  LOBYTE(self) = objc_opt_isKindOfClass();

  if (self)
  {
    v11 = [(CACSimpleContentViewManager *)v43 viewController];
    v12 = [v11 viewControllerInPopover];
    [v12 setPopoverShowing:0];
  }

  v65 = 0;
  v66 = &v65;
  v67 = 0x3010000000;
  v68 = &unk_26B415653;
  v69 = location;
  v70 = length;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v9 value];
    v14 = [v13 length];
    v15 = v66;
    v66[4] = 0;
    v15[5] = v14;
  }

  v39 = [v9 value];
  v41 = [v39 substringWithRange:{location, length}];
  v42 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277D798A8] textSegmentModelsForText:v41 type:a6 start:a5];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  obj = v62 = 0u;
  v16 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *(MEMORY[0x277CBF3A0] + 24);
  if (v16)
  {
    v21 = *v62;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v61 + 1) + 8 * i);
        if (([v23 isWhiteSpace] & 1) == 0)
        {
          v24 = objc_opt_new();
          [v24 setNumber:{objc_msgSend(v23, "labelNumber")}];
          v25 = [v23 representedText];
          v26 = [v25 string];
          [v24 setRepresentedText:v26];

          if (a6 < 2)
          {
            [v24 setTextUnit:a6];
          }

          v27 = [v23 nsRange];
          [v23 nsRange];
          v29 = v28;
          [v9 rectForRange:{v27 + location, v28}];
          [v24 setAxFrame:?];
          [v24 axFrame];
          [(CACEditingModeOverlayManager *)v43 _interfaceOrientedFrameForElement:v9 axFrame:?];
          [v24 setInterfaceOrientedFrame:?];
          [v24 setRange:{v27 + location, v29}];
          [v42 addObject:v24];
          [v24 axFrame];
          if (v20 != 0.0)
          {
            v74.origin.x = v30;
            v74.origin.y = v31;
            v74.size.width = v32;
            v74.size.height = v33;
            v73.origin.x = v17;
            v73.origin.y = v18;
            v73.size.width = v19;
            v73.size.height = v20;
            *&v30 = CGRectUnion(v73, v74);
          }

          v17 = v30;
          v18 = v31;
          v19 = v32;
          v20 = v33;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v16);
  }

  if ([v42 count] > 1)
  {
    v37 = [(CACSimpleContentViewManager *)v43 viewController];
    if ([v37 isBeingPresented])
    {
      v38 = [(NSArray *)v43->_displayedOverlayElements isEqualToArray:v42];

      if (v38)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    objc_storeStrong(&v43->_displayedOverlayElements, v42);
    objc_storeStrong(&v43->_overlayElementsForCommandHandling, v43->_displayedOverlayElements);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_2;
    v55[3] = &unk_279CEC048;
    v55[4] = v43;
    v56 = &__block_literal_global_383;
    v57 = v17;
    v58 = v18;
    v59 = v19;
    v60 = v20;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_7;
    v46[3] = &unk_279CEC070;
    v47 = v39;
    v48 = &v65;
    v49 = a6;
    v50 = a5;
    v51 = v17;
    v52 = v18;
    v53 = v19;
    v54 = v20;
    [(CACSimpleContentViewManager *)v43 showViewControllerWithCreationHandler:v55 updateHandler:v46];
  }

  else
  {
    displayedOverlayElements = v43->_displayedOverlayElements;
    v43->_displayedOverlayElements = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v43->_overlayElementsForCommandHandling, v43->_displayedOverlayElements);
    v35 = [(CACSimpleContentViewManager *)v43 viewController];
    v36 = [v35 isBeingPresented];

    if (v36)
    {
      [(CACSimpleContentViewManager *)v43 hideAnimated:1 completion:0];
    }
  }

LABEL_26:

  _Block_object_dispose(&v65, 8);
}

id __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke(uint64_t a1, void *a2)
{
  v60[14] = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
    v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
    v56 = [CACOverlayContainerView badgeViewContainerWithFrame:0 usingContrast:v4, v5, v6, v7];
    [v56 addSubview:v2];
    v9 = [CACOverlayContainerView badgeViewContainerWithFrame:1 usingContrast:v4, v5, v6, v7];
    v10 = [v2 contrastedCopy];
    [v9 addSubview:v10];
    [v8 addSubview:v9];
    [v8 addSubview:v56];
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = MEMORY[0x277CCAAD0];
    v59 = [v56 topAnchor];
    v58 = [v8 topAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v60[0] = v57;
    v55 = [v56 bottomAnchor];
    v54 = [v8 bottomAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v60[1] = v53;
    v52 = [v56 leadingAnchor];
    v51 = [v8 leadingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v60[2] = v50;
    v49 = [v56 trailingAnchor];
    v48 = [v8 trailingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v60[3] = v47;
    v46 = [v9 topAnchor];
    v45 = [v8 topAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v60[4] = v44;
    v43 = [v9 bottomAnchor];
    v42 = [v8 bottomAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v60[5] = v41;
    v38 = [v9 leadingAnchor];
    v37 = [v8 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v60[6] = v36;
    v35 = [v9 trailingAnchor];
    v34 = [v8 trailingAnchor];
    v32 = [v35 constraintEqualToAnchor:v34];
    v60[7] = v32;
    v31 = [v10 topAnchor];
    v30 = [v9 topAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v60[8] = v29;
    v28 = [v10 bottomAnchor];
    v27 = [v9 bottomAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v60[9] = v26;
    v25 = [v10 leadingAnchor];
    v39 = v9;
    v24 = [v9 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v60[10] = v23;
    v11 = v10;
    v33 = v10;
    v22 = [v10 trailingAnchor];
    v21 = [v9 trailingAnchor];
    v12 = [v22 constraintEqualToAnchor:v21];
    v60[11] = v12;
    v13 = [v2 centerYAnchor];
    v14 = [v10 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v60[12] = v15;
    v16 = [v2 centerXAnchor];
    v17 = [v11 centerXAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v60[13] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:14];
    [v40 activateConstraints:v19];
  }

  else
  {
    v8 = v2;
  }

  return v8;
}

CACEditingOverlayPopoverPresentingViewController *__83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(CACEditingOverlayPopoverPresentingViewController);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_3;
  v10[3] = &unk_279CEC000;
  v11 = *(a1 + 40);
  [MEMORY[0x277D798A0] setRightBadgeViewForText:v10];
  [MEMORY[0x277D798A0] setRightBadgeSizeForDigits:&__block_literal_global_392];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_5;
  v8 = &unk_279CEC000;
  v9 = *(a1 + 40);
  [MEMORY[0x277D798A0] setDownBadgeViewForText:&v5];
  [MEMORY[0x277D798A0] setDownBadgeSizeForDigits:{&__block_literal_global_394, v5, v6, v7, v8}];
  v3 = objc_alloc_init(MEMORY[0x277D798A8]);
  [(CACPopoverPresentingViewController *)v2 setPopoverPresentationDelegate:*(a1 + 32)];
  [(CACPopoverPresentingViewController *)v2 setViewControllerInPopover:v3];
  [(CACPopoverPresentingViewController *)v2 setPortraitUpSourceRect:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];
  [(CACPopoverPresentingViewController *)v2 setPermittedArrowDirections:1];
  [v3 setPopoverShowing:1];

  return v2;
}

id __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CACLabeledBadgeView alloc];
  v5 = [(CACLabeledBadgeView *)v4 initWithFrame:v3 label:1 arrowOrientation:0 badgePresentation:0 badgeIndicator:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

uint64_t __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = UIAccessibilityDarkerSystemColorsEnabled();

  return [CACLabeledBadgeView sizeOfBadgeGivenNumberOfDisplayedDigits:a2 arrowOrientation:1 badgePresentation:0 badgeIndicator:0 contrasted:v3];
}

id __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CACLabeledBadgeView alloc];
  v5 = [(CACLabeledBadgeView *)v4 initWithFrame:v3 label:2 arrowOrientation:0 badgePresentation:0 badgeIndicator:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

uint64_t __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = UIAccessibilityDarkerSystemColorsEnabled();

  return [CACLabeledBadgeView sizeOfBadgeGivenNumberOfDisplayedDigits:a2 arrowOrientation:2 badgePresentation:0 badgeIndicator:0 contrasted:v3];
}

void __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 viewControllerInPopover];
  v5 = [*(a1 + 32) substringWithRange:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  [v4 setText:v5];

  [v4 setType:*(a1 + 48)];
  [v4 setStartIndex:*(a1 + 56)];
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = [v3 view];
  [v8 bounds];
  v10 = v6 - v9 * 0.5;

  v11 = [v3 view];

  [v11 bounds];
  v13 = v7 - (v12 * 0.5 + 15.0);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CACEditingModeOverlayManager__showPopoverForElement_targetRange_startIndex_type___block_invoke_8;
  block[3] = &unk_279CEB2D0;
  v16 = v4;
  v14 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v17.size.width = *(a1 + 80);
  v17.size.height = *(a1 + 88);
  v17.origin.x = v10;
  v17.origin.y = v13;
  v18 = CGRectInset(v17, 0.0, 4.0);
  [v14 setFocusRect:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
}

- (void)numberingDidUpdate
{
  v2 = [(CACEditingModeOverlayManager *)self editingModeOverlayViewController];
  [v2 numberingDidUpdate];
}

- (void)startDelayedDimmingOfNumbers
{
  [(CACSimpleContentViewManager *)self setPendingDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]+ 1];
  [(CACSimpleContentViewManager *)self setActiveDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]];
  v3 = [(CACEditingModeOverlayManager *)self editingModeOverlayViewController];
  v4 = [v3 view];
  [v4 setAlpha:1.0];

  v5 = [(CACEditingModeOverlayManager *)self delegate];
  LODWORD(v4) = [v5 isOverlayFadingEnabledForEditingModeOverlayManager:self];

  if (v4)
  {
    v6 = [(CACEditingModeOverlayManager *)self delegate];
    [v6 overlayFadeDelayForEditingModeOverlayManager:self];
    v8 = dispatch_time(0, (v7 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CACEditingModeOverlayManager_startDelayedDimmingOfNumbers__block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

void __60__CACEditingModeOverlayManager_startDelayedDimmingOfNumbers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeDimmingTransactionID];
  if (v2 == [*(a1 + 32) pendingDimmingTransactionID])
  {
    v3 = [*(a1 + 32) editingModeOverlayViewController];

    if (v3)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __60__CACEditingModeOverlayManager_startDelayedDimmingOfNumbers__block_invoke_2;
      v4[3] = &unk_279CEB2D0;
      v4[4] = *(a1 + 32);
      [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0 completion:1.0];
    }
  }
}

void __60__CACEditingModeOverlayManager_startDelayedDimmingOfNumbers__block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  [v6 overlayFadeOpacityForEditingModeOverlayManager:*(a1 + 32)];
  v3 = v2;
  v4 = [*(a1 + 32) editingModeOverlayViewController];
  v5 = [v4 view];
  [v5 setAlpha:v3];
}

- (void)stopDelayedDimmingOfNumbers
{
  [(CACSimpleContentViewManager *)self setPendingDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]+ 1];
  v4 = [(CACEditingModeOverlayManager *)self editingModeOverlayViewController];
  v3 = [v4 view];
  [v3 setAlpha:1.0];
}

- (CACEditingModeOverlayManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end