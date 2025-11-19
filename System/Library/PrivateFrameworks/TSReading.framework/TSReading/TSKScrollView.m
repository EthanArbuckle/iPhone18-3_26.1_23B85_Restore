@interface TSKScrollView
- (BOOL)isScrolling;
- (CGRect)scrollableAreaBounds;
- (void)hideScrollIndicators;
- (void)layoutSubviews;
- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation TSKScrollView

- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  [(TSKScrollView *)self contentSize];
  v130.size.width = v12;
  v130.size.height = v13;
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  v130.origin.x = v10;
  v130.origin.y = v11;
  v83 = CGRectIntersection(v82, v130);
  v14 = v83.origin.x;
  v15 = v83.origin.y;
  v16 = v83.size.width;
  v17 = v83.size.height;
  if (CGRectIsEmpty(v83))
  {
    return;
  }

  [(TSKScrollView *)self visibleFrame];
  [(TSKScrollView *)self convertRect:[(TSKScrollView *)self superview] fromView:v18, v19, v20, v21];
  rect = v16;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(TSKScrollView *)self contentOffset];
  v72 = v30;
  v70 = v31;
  v84.origin.x = v23;
  v84.origin.y = v25;
  v84.size.width = v27;
  v84.size.height = v29;
  MaxX = CGRectGetMaxX(v84);
  v85.origin.x = v14;
  v85.origin.y = v15;
  v85.size.width = rect;
  v76 = v17;
  v85.size.height = v17;
  v71 = v25;
  v75 = v27;
  if (MaxX <= CGRectGetMaxX(v85) || (v86.origin.x = v23, v86.origin.y = v25, v86.size.width = v27, v86.size.height = v29, v33 = CGRectGetMinX(v86), v87.origin.x = v14, v87.origin.y = v15, v87.size.width = rect, v87.size.height = v17, v33 <= CGRectGetMinX(v87)))
  {
    v94.origin.x = v23;
    v94.origin.y = v25;
    v94.size.width = v27;
    v94.size.height = v29;
    MinX = CGRectGetMinX(v94);
    v95.origin.x = v14;
    v95.origin.y = v15;
    v95.size.width = rect;
    v95.size.height = v17;
    if (MinX >= CGRectGetMinX(v95))
    {
      v44 = v23;
      v39 = rect;
      v40 = v76;
      goto LABEL_16;
    }

    v96.origin.x = v23;
    v96.origin.y = v25;
    v96.size.width = v27;
    v96.size.height = v29;
    v43 = CGRectGetMaxX(v96);
    v97.origin.x = v14;
    v97.origin.y = v15;
    v97.size.width = rect;
    v44 = v23;
    v97.size.height = v17;
    v39 = rect;
    v40 = v76;
    if (v43 >= CGRectGetMaxX(v97))
    {
      goto LABEL_16;
    }

    v98.origin.x = v14;
    v98.origin.y = v15;
    v98.size.width = rect;
    v98.size.height = v76;
    v69 = CGRectGetMinX(v98);
    v99.origin.x = v44;
    v99.origin.y = v71;
    v99.size.width = v27;
    v99.size.height = v29;
    v66 = v69 - CGRectGetMinX(v99);
    v100.origin.x = v14;
    v100.origin.y = v15;
    v100.size.width = rect;
    v100.size.height = v76;
    v64 = CGRectGetMaxX(v100);
    v101.origin.x = v44;
    v101.origin.y = v71;
    v101.size.width = v27;
    v101.size.height = v29;
    v45 = v66 < v64 - CGRectGetMaxX(v101);
    v67 = v14;
    v46 = v14;
    v47 = v15;
    v48 = rect;
    v49 = v76;
    if (v45)
    {
      v50 = CGRectGetMinX(*&v46);
      v102.origin.x = v44;
      v102.origin.y = v71;
      v102.size.height = v29;
      v102.size.width = v75;
      v51 = v75;
      v52 = CGRectGetMinX(v102);
    }

    else
    {
      v50 = CGRectGetMaxX(*&v46);
      v105.origin.x = v44;
      v105.origin.y = v71;
      v105.size.height = v29;
      v105.size.width = v75;
      v51 = v75;
      v52 = CGRectGetMaxX(v105);
    }

    v39 = rect;
    v72 = v72 + v50 - v52;
    v27 = v51;
    v40 = v76;
  }

  else
  {
    v88.origin.x = v23;
    v88.origin.y = v25;
    v88.size.width = v27;
    v88.size.height = v29;
    v34 = CGRectGetMaxX(v88);
    v89.origin.x = v14;
    v89.origin.y = v15;
    v89.size.width = rect;
    v89.size.height = v17;
    v65 = v34 - CGRectGetMaxX(v89);
    v68 = v23;
    v90.origin.x = v23;
    v90.origin.y = v25;
    v90.size.width = v27;
    v90.size.height = v29;
    v35 = CGRectGetMinX(v90);
    v91.origin.x = v14;
    v91.origin.y = v15;
    v91.size.width = rect;
    v91.size.height = v17;
    v67 = v14;
    if (v65 >= v35 - CGRectGetMinX(v91))
    {
      v103.origin.x = v23;
      v103.origin.y = v25;
      v36 = v27;
      v103.size.width = v27;
      v103.size.height = v29;
      v37 = CGRectGetMinX(v103);
      v104.origin.x = v14;
      v38 = v15;
      v104.origin.y = v15;
      v39 = rect;
      v104.size.width = rect;
      v40 = v76;
      v104.size.height = v76;
      v41 = CGRectGetMinX(v104);
    }

    else
    {
      v92.origin.x = v23;
      v92.origin.y = v25;
      v36 = v27;
      v92.size.width = v27;
      v92.size.height = v29;
      v37 = CGRectGetMaxX(v92);
      v93.origin.x = v14;
      v38 = v15;
      v93.origin.y = v15;
      v39 = rect;
      v93.size.width = rect;
      v40 = v76;
      v93.size.height = v76;
      v41 = CGRectGetMaxX(v93);
    }

    v72 = v72 - (v37 - v41);
    v27 = v36;
    v44 = v68;
    v15 = v38;
  }

  v14 = v67;
LABEL_16:
  v106.origin.x = v44;
  v106.origin.y = v71;
  v106.size.width = v27;
  v106.size.height = v29;
  MaxY = CGRectGetMaxY(v106);
  v107.origin.x = v14;
  v107.origin.y = v15;
  v107.size.width = v39;
  v107.size.height = v40;
  if (MaxY <= CGRectGetMaxY(v107) || (v108.origin.x = v44, v108.origin.y = v71, v108.size.width = v75, v108.size.height = v29, v54 = CGRectGetMinY(v108), v109.origin.x = v14, v109.origin.y = v15, v109.size.width = v39, v109.size.height = v40, v54 <= CGRectGetMinY(v109)))
  {
    v116.origin.x = v44;
    v116.origin.y = v71;
    v116.size.width = v75;
    v116.size.height = v29;
    MinY = CGRectGetMinY(v116);
    v117.origin.x = v14;
    v117.origin.y = v15;
    v117.size.width = v39;
    v117.size.height = v40;
    if (MinY >= CGRectGetMinY(v117))
    {
      v61 = v70;
    }

    else
    {
      v118.origin.x = v44;
      v118.origin.y = v71;
      v118.size.width = v75;
      v118.size.height = v29;
      v59 = CGRectGetMaxY(v118);
      v119.origin.x = v14;
      v119.origin.y = v15;
      v119.size.width = v39;
      v119.size.height = v40;
      v60 = CGRectGetMaxY(v119);
      v61 = v70;
      if (v59 < v60)
      {
        v120.origin.x = v14;
        v120.origin.y = v15;
        v120.size.width = v39;
        v120.size.height = v40;
        v79 = CGRectGetMinY(v120);
        v121.origin.x = v44;
        v121.origin.y = v71;
        v121.size.width = v75;
        v121.size.height = v29;
        v80 = v79 - CGRectGetMinY(v121);
        v122.origin.x = v14;
        v122.origin.y = v15;
        v122.size.width = v39;
        v122.size.height = v40;
        recta = CGRectGetMaxY(v122);
        v123.origin.x = v44;
        v123.origin.y = v71;
        v123.size.width = v75;
        v123.size.height = v29;
        if (v80 >= recta - CGRectGetMaxY(v123))
        {
          v128.origin.x = v14;
          v128.origin.y = v15;
          v128.size.width = v39;
          v128.size.height = v40;
          v62 = CGRectGetMaxY(v128);
          v129.origin.x = v44;
          v129.origin.y = v71;
          v129.size.width = v75;
          v129.size.height = v29;
          v63 = CGRectGetMaxY(v129);
        }

        else
        {
          v124.origin.x = v14;
          v124.origin.y = v15;
          v124.size.width = v39;
          v124.size.height = v40;
          v62 = CGRectGetMinY(v124);
          v125.origin.x = v44;
          v125.origin.y = v71;
          v125.size.width = v75;
          v125.size.height = v29;
          v63 = CGRectGetMinY(v125);
        }

        v61 = v70 + v62 - v63;
      }
    }
  }

  else
  {
    v110.origin.x = v44;
    v110.origin.y = v71;
    v110.size.width = v75;
    v110.size.height = v29;
    v77 = CGRectGetMaxY(v110);
    v111.origin.x = v14;
    v111.origin.y = v15;
    v111.size.width = v39;
    v111.size.height = v40;
    v78 = v77 - CGRectGetMaxY(v111);
    v112.origin.x = v44;
    v112.origin.y = v71;
    v112.size.width = v75;
    v112.size.height = v29;
    v55 = CGRectGetMinY(v112);
    v113.origin.x = v14;
    v113.origin.y = v15;
    v113.size.width = v39;
    v113.size.height = v40;
    if (v78 >= v55 - CGRectGetMinY(v113))
    {
      v126.origin.x = v44;
      v126.origin.y = v71;
      v126.size.width = v75;
      v126.size.height = v29;
      v56 = CGRectGetMinY(v126);
      v127.origin.x = v14;
      v127.origin.y = v15;
      v127.size.width = v39;
      v127.size.height = v40;
      v57 = CGRectGetMinY(v127);
    }

    else
    {
      v114.origin.x = v44;
      v114.origin.y = v71;
      v114.size.width = v75;
      v114.size.height = v29;
      v56 = CGRectGetMaxY(v114);
      v115.origin.x = v14;
      v115.origin.y = v15;
      v115.size.width = v39;
      v115.size.height = v40;
      v57 = CGRectGetMaxY(v115);
    }

    v61 = v70 - (v56 - v57);
  }

  [(TSKScrollView *)self setContentOffset:v4 animated:v72, v61];
}

- (BOOL)isScrolling
{
  if (([(TSKScrollView *)self isDragging]& 1) != 0)
  {
    return 1;
  }

  return [(TSKScrollView *)self isDecelerating];
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    [(TSKScrollView *)self contentOffset];
    v11 = y != v10 || x != v9;
  }

  else
  {
    v11 = 0;
  }

  [(TSKScrollView *)self delegate];
  v12 = TSUProtocolCast();
  if (v11)
  {
    if (!self->mAnimatingContentOffsetCount && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v12 scrollView:self willAnimateToContentOffset:{x, y}];
    }

    ++self->mAnimatingContentOffsetCount;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__TSKScrollView_setContentOffset_animated_completionBlock___block_invoke;
  v20[3] = &unk_279D476B8;
  v20[4] = self;
  *&v20[5] = x;
  *&v20[6] = y;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v14 = __59__TSKScrollView_setContentOffset_animated_completionBlock___block_invoke_2;
  v15 = &unk_279D47A38;
  v19 = v11;
  v16 = self;
  v17 = v12;
  v18 = a5;
  if (v11)
  {
    [MEMORY[0x277D75D18] animateWithDuration:4 delay:v20 options:v13 animations:0.200000003 completion:0.0];
  }

  else
  {
    [(TSKScrollView *)self setContentOffset:x, y];
    (v14)(v13, 1);
  }
}

uint64_t __59__TSKScrollView_setContentOffset_animated_completionBlock___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    goto LABEL_9;
  }

  if (!*(*(a1 + 32) + 2152))
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKScrollView setContentOffset:animated:completionBlock:]_block_invoke_2"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKScrollView.mm"), 131, @"imbalanced content offset animation count"}];
    if ((*(a1 + 56) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 2152);
  if (!v5 || (*(v4 + 2152) = v5 - 1, !*(*(a1 + 32) + 2152)))
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) scrollViewDidEndScrollingAnimation:*(a1 + 32)];
      goto LABEL_11;
    }

    if ((*(a1 + 56) & 1) == 0)
    {
LABEL_9:
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 40) scrollViewDidScroll:*(a1 + 32)];
      }
    }
  }

LABEL_11:
  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TSKScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [-[TSKScrollView delegate](self "delegate")];
    x = v6;
    y = v7;
  }

  v8.receiver = self;
  v8.super_class = TSKScrollView;
  [(TSKScrollView *)&v8 setContentOffset:x, y];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TSKScrollView;
  [(TSKScrollView *)&v3 layoutSubviews];
  [(TSKScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [-[TSKScrollView delegate](self "delegate")];
  }
}

- (void)hideScrollIndicators
{
  [(TSKScrollView *)self setShowsHorizontalScrollIndicator:0];

  [(TSKScrollView *)self setShowsVerticalScrollIndicator:0];
}

- (CGRect)scrollableAreaBounds
{
  x = self->_scrollableAreaBounds.origin.x;
  y = self->_scrollableAreaBounds.origin.y;
  width = self->_scrollableAreaBounds.size.width;
  height = self->_scrollableAreaBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end