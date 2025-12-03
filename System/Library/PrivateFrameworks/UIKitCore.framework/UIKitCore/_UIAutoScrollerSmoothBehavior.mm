@interface _UIAutoScrollerSmoothBehavior
- ($9F891FA3B7BC1BE651A10F4EEBEFFC62)offsetForAutoScroller:(SEL)scroller timeDelta:(id)delta;
- (_UIAutoScrollerSmoothBehavior)init;
- (double)beginDelayForAutoScroller:(id)scroller;
- (void)autoScrollStarted:(id)started;
@end

@implementation _UIAutoScrollerSmoothBehavior

- (_UIAutoScrollerSmoothBehavior)init
{
  v9.receiver = self;
  v9.super_class = _UIAutoScrollerSmoothBehavior;
  v2 = [(_UIAutoScrollerSmoothBehavior *)&v9 init];
  if (v2)
  {
    LODWORD(v3) = 1050253722;
    LODWORD(v5) = 1060320051;
    LODWORD(v4) = 1.0;
    v6 = [MEMORY[0x1E69793D0] functionWithControlPoints:v3 :0.0 :v4 :v5];
    v7 = *(v2 + 1);
    *(v2 + 1) = v6;

    *(v2 + 24) = _SmoothBehaviorDefaultStaticInsets;
    *(v2 + 40) = unk_18A683890;
  }

  return v2;
}

- (double)beginDelayForAutoScroller:(id)scroller
{
  _scrollContinuous = [scroller _scrollContinuous];
  result = 0.75;
  if (_scrollContinuous)
  {
    return 0.0;
  }

  return result;
}

- (void)autoScrollStarted:(id)started
{
  *&self->_behaviorFlags &= ~1u;
  *&self->_dynamicAutoScrollInsets.top = 0u;
  *&self->_dynamicAutoScrollInsets.bottom = 0u;
  scrollView = [started scrollView];
  traitCollection = [scrollView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1 || userInterfaceIdiom == 6)
  {
    v7 = &_SmoothBehaviorDefaultStaticInsets;
  }

  else
  {
    v7 = &_SmoothBehaviorReducedStaticInsets;
  }

  v8 = v7[1];
  *&self->_staticInsets.top = *v7;
  *&self->_staticInsets.bottom = v8;
}

- ($9F891FA3B7BC1BE651A10F4EEBEFFC62)offsetForAutoScroller:(SEL)scroller timeDelta:(id)delta
{
  retstr->var0.x = 0.0;
  retstr->var0.y = 0.0;
  retstr->var1 = 0;
  deltaCopy = delta;
  [deltaCopy point];
  point = v8;
  v10 = v9;
  scrollView = [deltaCopy scrollView];
  allowedDirections = [deltaCopy allowedDirections];
  [scrollView adjustedContentInset];
  v13 = fmax(v12, 0.0);
  v15 = fmax(v14, 0.0);
  v17 = fmax(v16, 0.0);
  v19 = fmax(v18, 0.0);
  [scrollView bounds];
  v21 = v15 + v20;
  v23 = v13 + v22;
  v90 = v19;
  v91 = v15;
  v93 = v13;
  v89 = v17;
  v24 = v13 + v17;
  v25 = v21;
  v27 = v26 - v24;
  top = self->_staticInsets.top;
  left = self->_staticInsets.left;
  v30 = left + v21;
  rect = v23;
  v31 = top + v23;
  point_8 = v32 - (v15 + v19);
  v33 = point_8 - (left + self->_staticInsets.right);
  v34 = v27 - (top + self->_staticInsets.bottom);
  _scrollContinuous = [deltaCopy _scrollContinuous];

  if (_scrollContinuous)
  {
    if ((*&self->_behaviorFlags & 1) == 0)
    {
      v105.origin.x = v30;
      v105.origin.y = v31;
      v105.size.width = v33;
      v105.size.height = v34;
      v104.x = point;
      v104.y = v10;
      if (CGRectContainsPoint(v105, v104))
      {
        *&self->_behaviorFlags |= 1u;
        v36 = *&self->_staticInsets.bottom;
        *&self->_dynamicAutoScrollInsets.top = *&self->_staticInsets.top;
        *&self->_dynamicAutoScrollInsets.bottom = v36;
      }

      else
      {
        v124.origin.x = v30;
        v124.origin.y = v31;
        v124.size.width = v33;
        v124.size.height = v34;
        if (v10 >= CGRectGetMaxY(v124))
        {
          [scrollView bounds];
          v84 = CGRectGetMaxY(v127) - v10;
          if (self->_dynamicAutoScrollInsets.bottom < v84)
          {
            self->_dynamicAutoScrollInsets.bottom = v84;
          }
        }

        else
        {
          v125.origin.x = v30;
          v125.origin.y = v31;
          v125.size.width = v33;
          v125.size.height = v34;
          if (v10 < CGRectGetMinY(v125))
          {
            [scrollView bounds];
            v83 = v10 - CGRectGetMinY(v126);
            if (self->_dynamicAutoScrollInsets.top < v83)
            {
              self->_dynamicAutoScrollInsets.top = v83;
            }
          }
        }

        v128.origin.x = v30;
        v128.origin.y = v31;
        v128.size.width = v33;
        v128.size.height = v34;
        if (point >= CGRectGetMaxX(v128))
        {
          [scrollView bounds];
          v86 = CGRectGetMaxX(v131) - point;
          if (self->_dynamicAutoScrollInsets.right < v86)
          {
            self->_dynamicAutoScrollInsets.right = v86;
          }
        }

        else
        {
          v129.origin.x = v30;
          v129.origin.y = v31;
          v129.size.width = v33;
          v129.size.height = v34;
          if (point < CGRectGetMinX(v129))
          {
            [scrollView bounds];
            v85 = point - CGRectGetMinX(v130);
            if (self->_dynamicAutoScrollInsets.left < v85)
            {
              self->_dynamicAutoScrollInsets.left = v85;
            }
          }
        }
      }
    }
  }

  else
  {
    *&self->_behaviorFlags |= 1u;
  }

  if ((*&self->_behaviorFlags & 1) == 0)
  {
    [scrollView bounds];
    v37 = self->_dynamicAutoScrollInsets.top;
    v38 = self->_dynamicAutoScrollInsets.left;
    v30 = v39 + v38;
    v31 = v37 + v40;
    v33 = v41 - (v38 + self->_dynamicAutoScrollInsets.right);
    v34 = v42 - (v37 + self->_dynamicAutoScrollInsets.bottom);
  }

  [scrollView contentSize];
  v44 = v43;
  v95 = v45;
  [(_UIAutoScrollerSmoothBehavior *)self _layoutAreaViewsWithCurrentNonScrollingArea:scrollView inScrollView:v30, v31, v33, v34];
  if ((allowedDirections & 0x10) != 0 && (v106.origin.x = v30, v106.origin.y = v31, v106.size.width = v33, v106.size.height = v34, v10 > CGRectGetMaxY(v106)) && (v107.origin.x = v25, v107.origin.y = rect, v107.size.width = point_8, v107.size.height = v27, MaxY = CGRectGetMaxY(v107), v46 = v95, MaxY < v95))
  {
    v48 = 16;
    retstr->var1 = 16;
    v108.origin.x = v30;
    v108.origin.y = v31;
    v108.size.width = v33;
    v108.size.height = v34;
    v49 = (v10 - CGRectGetMaxY(v108)) / self->_staticInsets.bottom;
    *&v49 = v49;
    [(CAMediaTimingFunction *)self->_speedTimingFunction _solveForInput:v49];
    v51 = v50;
  }

  else
  {
    v97 = 0.0;
    if ((allowedDirections & 8) == 0 || (v109.origin.x = v30, v109.origin.y = v31, v109.size.width = v33, v109.size.height = v34, v10 >= CGRectGetMinY(v109)) || (v110.origin.x = v25, v110.origin.y = rect, v110.size.width = point_8, v110.size.height = v27, CGRectGetMinY(v110) <= 0.0))
    {
      v48 = 0;
      goto LABEL_18;
    }

    v48 = 8;
    retstr->var1 = 8;
    v111.origin.x = v30;
    v111.origin.y = v31;
    v111.size.width = v33;
    v111.size.height = v34;
    v52 = (CGRectGetMinY(v111) - v10) / self->_staticInsets.top;
    *&v52 = v52;
    [(CAMediaTimingFunction *)self->_speedTimingFunction _solveForInput:v52];
    v51 = -v53;
  }

  v97 = v51;
LABEL_18:
  v94 = v44;
  if ((allowedDirections & 4) != 0 && (v112.origin.x = v30, v112.origin.y = v31, v112.size.width = v33, v112.size.height = v34, MaxX = CGRectGetMaxX(v112), v46 = point, point > MaxX) && (v113.origin.x = v25, v113.origin.y = rect, v113.size.width = point_8, v113.size.height = v27, CGRectGetMaxX(v113) < v44))
  {
    v55 = v27;
    v56 = point_8;
    retstr->var1 = v48 | 4;
    v114.origin.x = v30;
    v114.origin.y = v31;
    v114.size.width = v33;
    v114.size.height = v34;
    v57 = (point - CGRectGetMaxX(v114)) / self->_staticInsets.right;
    *&v57 = v57;
    [(CAMediaTimingFunction *)self->_speedTimingFunction _solveForInput:v57];
    v59 = v58;
  }

  else
  {
    v55 = v27;
    v56 = point_8;
    v59 = 0.0;
    if ((allowedDirections & 2) != 0)
    {
      v115.origin.x = v30;
      v115.origin.y = v31;
      v115.size.width = v33;
      v115.size.height = v34;
      MinX = CGRectGetMinX(v115);
      v46 = point;
      if (point < MinX)
      {
        v116.origin.x = v25;
        v116.origin.y = rect;
        v116.size.width = point_8;
        v116.size.height = v55;
        if (CGRectGetMinX(v116) > 0.0)
        {
          retstr->var1 = v48 | 2;
          v117.origin.x = v30;
          v117.origin.y = v31;
          v117.size.width = v33;
          v117.size.height = v34;
          v61 = (CGRectGetMinX(v117) - point) / self->_staticInsets.left;
          *&v61 = v61;
          [(CAMediaTimingFunction *)self->_speedTimingFunction _solveForInput:v61];
          v59 = -v62;
        }
      }
    }
  }

  if (v97 == 0.0 && v59 == 0.0)
  {
    retstr->var1 = 1;
LABEL_42:
    v69 = scrollView;
    goto LABEL_67;
  }

  if (![scrollView isPagingEnabled])
  {
    point_8b = a5 * 1200.0;
    [scrollView contentOffset];
    v72 = v71;
    v74 = v73;
    v120.origin.x = v25;
    v120.origin.y = rect;
    v120.size.width = v56;
    v75 = v55;
    v120.size.height = v55;
    if (v95 > CGRectGetHeight(v120))
    {
      v76 = point_8b * v97 + v74;
      v74 = -v93;
      v121.origin.x = v25;
      v121.origin.y = rect;
      v121.size.width = v56;
      v121.size.height = v75;
      Height = CGRectGetHeight(v121);
      if (v76 >= -v93)
      {
        v78 = v93 + v89 + v95 - Height;
        v74 = v76;
        if (v76 > v78)
        {
          v74 = v78;
        }
      }
    }

    v122.origin.x = v25;
    v122.origin.y = rect;
    v122.size.width = v56;
    v122.size.height = v75;
    if (v94 > CGRectGetWidth(v122))
    {
      v79 = v25;
      v80 = point_8b * v59 + v72;
      v72 = -v91;
      v123.origin.x = v79;
      v123.origin.y = rect;
      v123.size.width = v56;
      v123.size.height = v75;
      Width = CGRectGetWidth(v123);
      if (v80 >= -v91)
      {
        v82 = v90 + v91 + v94 - Width;
        v72 = v80;
        if (v80 > v82)
        {
          v72 = v82;
        }
      }
    }

    retstr->var0.x = v72;
    retstr->var0.y = v74;
    goto LABEL_42;
  }

  [scrollView contentOffset];
  v64 = v63;
  point_8a = v65;
  v118.origin.x = v25;
  v118.origin.y = rect;
  v118.size.width = v56;
  v118.size.height = v55;
  v66 = CGRectGetWidth(v118);
  v119.origin.x = v25;
  v119.origin.y = rect;
  v119.size.width = v56;
  v119.size.height = v55;
  v67 = CGRectGetHeight(v119);
  if (v59 <= 0.0)
  {
    v68 = 0.0;
    v69 = scrollView;
    v70 = point_8a;
    if (v59 < 0.0)
    {
      if (v64 >= v66)
      {
        v68 = -v66;
      }

      else
      {
        v68 = -v64;
      }
    }
  }

  else
  {
    v68 = v66;
    v69 = scrollView;
    v70 = point_8a;
    if (v64 + v66 + v66 > v94)
    {
      v68 = v94 - v66 - v64;
    }
  }

  if (v97 <= 0.0)
  {
    v87 = 0.0;
    if (v97 < 0.0)
    {
      if (v70 - v67 >= v93)
      {
        v87 = -v67;
      }

      else
      {
        v87 = -v70 - v93;
      }
    }
  }

  else
  {
    v87 = v67;
    if (v70 + v67 + v67 > v95)
    {
      v87 = v95 - v67 - v70;
    }
  }

  retstr->var0.x = v64 + v68;
  retstr->var0.y = v70 + v87;
LABEL_67:

  return result;
}

@end