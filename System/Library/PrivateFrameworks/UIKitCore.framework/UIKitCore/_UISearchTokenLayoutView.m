@interface _UISearchTokenLayoutView
- (BOOL)respondsToSelector:(SEL)a3;
- (CGRect)boundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5;
- (CGRect)selectionBounds;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)atomInsets;
- (_UISearchTokenLayoutView)init;
- (_UISearchTokenLayoutView)initWithCoder:(id)a3;
- (_UISearchTokenLayoutView)initWithDelegateView:(id)a3;
- (_UISearchTokenLayoutView)initWithFrame:(CGRect)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)targetedDragPreviewInContainerView:(id)a3;
- (void)layoutSubviews;
- (void)updateMaskLayerForAttachmentRect:(CGRect)a3 lineFragment:(CGRect)a4;
- (void)updateMaskLayerForVisibleRect:(CGRect)a3;
@end

@implementation _UISearchTokenLayoutView

- (_UISearchTokenLayoutView)initWithDelegateView:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _UISearchTokenLayoutView;
  v6 = [(UIView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegateView, a3);
    [(_UIAtomTextViewAtomLayout *)v7->_delegateView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7 setAutoresizesSubviews:0];
    [(UIView *)v7 addSubview:v7->_delegateView];
    v8 = v7;
  }

  return v7;
}

- (_UISearchTokenLayoutView)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unimplemented" userInfo:0];
  objc_exception_throw(v2);
}

- (_UISearchTokenLayoutView)initWithFrame:(CGRect)a3
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unimplemented" userInfo:{0, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  objc_exception_throw(v3);
}

- (_UISearchTokenLayoutView)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unimplemented" userInfo:0];
  objc_exception_throw(v4);
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5.receiver = self;
  v5.super_class = _UISearchTokenLayoutView;
  if ([(_UISearchTokenLayoutView *)&v5 respondsToSelector:?])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = _UISearchTokenLayoutView;
  v5 = [(_UISearchTokenLayoutView *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(_UIAtomTextViewAtomLayout *)self->_delegateView methodSignatureForSelector:a3];
  }

  return v5;
}

- (UIEdgeInsets)atomInsets
{
  UIRoundToViewScale(self);
  v4 = v3;
  UIRoundToViewScale(self);
  v6 = 3.0 - v5;
  if ([(_UISearchTokenLayoutView *)self isLastSearchToken])
  {
    UIRoundToViewScale(self);
    v8 = v7;
    if ([(UIView *)self effectiveUserInterfaceLayoutDirection])
    {
      v4 = v4 + v8;
    }

    else
    {
      v6 = v6 + v8;
    }
  }

  v9 = 0.0;
  v10 = 0.0;
  v11 = v4;
  v12 = v6;
  result.right = v12;
  result.bottom = v10;
  result.left = v11;
  result.top = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_UIAtomTextViewAtomLayout *)self->_delegateView systemLayoutSizeFittingSize:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  [(_UISearchTokenLayoutView *)self atomInsets];
  v10 = v5 + v8 + v9;
  v13 = v7 + v11 + v12;
  v14 = v10;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = _UISearchTokenLayoutView;
  [(UIView *)&v16 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UISearchTokenLayoutView *)self atomInsets];
  v12 = v4 + v11;
  v13 = v6 - self->_verticalDelegateViewOrigin;
  [(_UIAtomTextViewAtomLayout *)self->_delegateView systemLayoutSizeFittingSize:v8, v10];
  [(_UIAtomTextViewAtomLayout *)self->_delegateView setFrame:v12, v13, v14, v15];
}

- (CGRect)selectionBounds
{
  [(_UIAtomTextViewAtomLayout *)self->_delegateView bounds];
  delegateView = self->_delegateView;

  [(UIView *)self convertRect:delegateView fromView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)boundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5
{
  [(UIView *)self layoutIfNeeded:a3];
  v6 = *MEMORY[0x1E695F058];
  [(_UISearchTokenLayoutView *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v8 = v7;
  v9 = [(_UISearchTokenLayoutView *)self viewForLastBaselineLayout];
  [v9 _baselineOffsetFromBottom];
  v11 = -v10;
  [v9 bounds];
  Height = CGRectGetHeight(v18);
  delegateView = self->_delegateView;
  [v9 bounds];
  [(_UIAtomTextViewAtomLayout *)delegateView convertRect:v9 fromView:?];
  self->_verticalDelegateViewOrigin = CGRectGetMinY(v19);

  v14 = v6;
  v15 = v11;
  v16 = v8;
  v17 = Height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)updateMaskLayerForAttachmentRect:(CGRect)a3 lineFragment:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v53[4] = *MEMORY[0x1E69E9840];
  v13 = CGRectIntersectsRect(a3, a4);
  v45 = v9;
  v46 = v11;
  if (v13)
  {
    v55.origin.x = v11;
    v55.origin.y = v10;
    v55.size.width = v9;
    v55.size.height = v8;
    MaxX = CGRectGetMaxX(v55);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v14 = MaxX > CGRectGetMaxX(v56);
    v57.origin.x = v11;
    v15 = v10;
    v57.origin.y = v10;
    v57.size.width = v9;
    v57.size.height = v8;
    MinX = CGRectGetMinX(v57);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v17 = MinX < CGRectGetMinX(v58);
    if (v17)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = v10;
    v14 = 0;
    v17 = 0;
  }

  if (v14)
  {
LABEL_9:
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    v66.origin.x = v46;
    v66.origin.y = v15;
    v66.size.width = v9;
    v66.size.height = v8;
    v60 = CGRectIntersection(v59, v66);
    v19 = v60.origin.x;
    v20 = v60.origin.y;
    v21 = v60.size.width;
    v60.origin.x = v46;
    v60.origin.y = v15;
    v60.size.width = v9;
    v60.size.height = v8;
    v22 = CGRectGetMinX(v60);
    if (qword_1ED49A000 != -1)
    {
      dispatch_once(&qword_1ED49A000, &__block_literal_global_76);
    }

    v23 = v19 - v22;
    memset(&slice, 0, sizeof(slice));
    if (v14)
    {
      v24 = v8;
      slice.origin.x = v46;
      slice.origin.y = v15;
      MaxX = v15;
      slice.size.width = v9;
      slice.size.height = v8;
      v61.origin.x = v23;
      v61.origin.y = v20;
      v61.size.width = v21;
      v61.size.height = v8;
      v25 = (CGRectGetMaxX(v61) + -50.0) / v9;
      v62.origin.x = v23;
      v62.origin.y = v20;
      v62.size.width = v21;
      v62.size.height = v8;
      v26 = CGRectGetMaxX(v62) / v45;
      if (v17)
      {
        v63.origin.x = v23;
        v63.origin.y = v20;
        v63.size.width = v21;
        v63.size.height = v8;
        v27 = CGRectGetMinX(v63) / v45;
        v64.origin.x = v23;
        v64.origin.y = v20;
        v64.size.width = v21;
        v64.size.height = v8;
        v28 = CGRectGetMinX(v64);
        v53[0] = _MergedGlobals_3_4;
        v53[1] = qword_1ED499FF8;
        v53[2] = qword_1ED499FF8;
        v53[3] = _MergedGlobals_3_4;
        v29 = (v28 + 50.0) / v45;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
        v31 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
        v52[0] = v31;
        v32 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
        v52[1] = v32;
        v33 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
        v52[2] = v33;
        v34 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
        v52[3] = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
      }

      else
      {
        v51[0] = qword_1ED499FF8;
        v51[1] = _MergedGlobals_3_4;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
        v31 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
        v50[0] = v31;
        v32 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
        v50[1] = v32;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
      }

      v37 = MaxX;
      v36 = v46;
      v38 = v45;
    }

    else
    {
      memset(&remainder, 0, sizeof(remainder));
      v65.origin.x = v23;
      v65.origin.y = v20;
      v65.size.width = v21;
      v65.size.height = v8;
      CGRectDivide(v65, &slice, &remainder, 50.0, CGRectMinXEdge);
      v49[0] = _MergedGlobals_3_4;
      v49[1] = qword_1ED499FF8;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
      v36 = slice.origin.x;
      v37 = slice.origin.y;
      v35 = &unk_1EFE2B560;
      v38 = slice.size.width;
      v24 = slice.size.height;
    }

    verticalDelegateViewOrigin = self->_verticalDelegateViewOrigin;
    v40 = v24 + verticalDelegateViewOrigin + verticalDelegateViewOrigin;
    v41 = -verticalDelegateViewOrigin;
    v42 = [MEMORY[0x1E6979380] layer];
    [v42 setColors:v30];
    [v42 setLocations:v35];
    [v42 setStartPoint:{0.0, 0.5}];
    [v42 setEndPoint:{1.0, 0.5}];
    [v42 setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [v42 setBounds:{v36, v37, v38, v40}];
    [v42 setPosition:{0.0, v41}];
    v43 = [(UIView *)self layer];
    [v43 setMask:v42];

    [(UIView *)self setHidden:0];
    return;
  }

  v18 = [(UIView *)self layer];
  [v18 setMask:0];

  [(UIView *)self setHidden:!v13];
}

- (void)updateMaskLayerForVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v58[6] = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v72.origin.x = v9;
  v72.origin.y = v11;
  v72.size.width = v13;
  v72.size.height = v15;
  if (CGRectContainsRect(v60, v72))
  {
    v16 = [(UIView *)self layer];
    [v16 setMask:0];

    v17 = self;
    v18 = 0;
LABEL_10:

    [(UIView *)v17 setHidden:v18];
    return;
  }

  v61.origin.x = v9;
  v61.origin.y = v11;
  v61.size.width = v13;
  v61.size.height = v15;
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  if (!CGRectIntersectsRect(v61, v73))
  {
    v52 = [(UIView *)self layer];
    [v52 setMask:0];

    v17 = self;
    v18 = 1;
    goto LABEL_10;
  }

  v62.origin.x = v9;
  v62.origin.y = v11;
  v62.size.width = v13;
  v62.size.height = v15;
  v55 = v13;
  v19 = v15;
  v20 = v11;
  MinX = CGRectGetMinX(v62);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  v53 = MinX - CGRectGetMinX(v63);
  v64.origin.y = v20;
  v56 = v9;
  v64.origin.x = v9;
  v64.size.width = v55;
  v64.size.height = v19;
  MaxX = CGRectGetMaxX(v64);
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  v23 = MaxX - CGRectGetMaxX(v65);
  v24 = +[UIColor clearColor];
  v25 = [v24 CGColor];

  v26 = +[UIColor whiteColor];
  v27 = [v26 CGColor];

  v58[0] = v25;
  v58[1] = v25;
  v58[2] = v27;
  v58[3] = v27;
  v58[4] = v25;
  v58[5] = v25;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:6];
  v29 = 0.0;
  v30 = 0.0;
  if (v53 < -3.0)
  {
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    v54 = v23;
    v31 = CGRectGetMinX(v66);
    v67.origin.y = v20;
    v67.origin.x = v56;
    v67.size.width = v55;
    v67.size.height = v19;
    v32 = v31 - CGRectGetMinX(v67);
    v23 = v54;
    v30 = v32 / v55;
    v29 = 50.0 / v55 + v32 / v55;
  }

  v33 = 1.0;
  v34 = 1.0;
  if (v23 > 3.0)
  {
    v68.origin.x = x;
    v35 = v30;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    v36 = CGRectGetMaxX(v68);
    v69.origin.y = v20;
    v69.origin.x = v56;
    v69.size.width = v55;
    v69.size.height = v19;
    v37 = CGRectGetMinX(v69);
    v30 = v35;
    v33 = (v36 - v37) / v55;
    v34 = v33 + -50.0 / v55;
  }

  v57[0] = &unk_1EFE2FDA0;
  v38 = v34;
  v39 = v33;
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
  v57[1] = v40;
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
  v57[2] = v41;
  v42 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
  v57[3] = v42;
  v43 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
  v57[4] = v43;
  v57[5] = &unk_1EFE2FDB8;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:6];

  v45 = *MEMORY[0x1E695EFF8];
  v46 = *(MEMORY[0x1E695EFF8] + 8);
  v70.origin.x = v56;
  v70.origin.y = v20;
  v70.size.width = v55;
  v70.size.height = v19;
  MidX = CGRectGetMidX(v70);
  v71.origin.x = v56;
  v71.origin.y = v20;
  v71.size.width = v55;
  v71.size.height = v19;
  MidY = CGRectGetMidY(v71);
  v49 = v19 + self->_verticalDelegateViewOrigin + self->_verticalDelegateViewOrigin;
  v50 = [MEMORY[0x1E6979380] layer];
  [v50 setColors:v28];
  [v50 setLocations:v44];
  [v50 setStartPoint:{0.0, 0.5}];
  [v50 setEndPoint:{1.0, 0.5}];
  [v50 setBounds:{v45, v46, v55, v49}];
  [v50 setPosition:{MidX, MidY}];
  v51 = [(UIView *)self layer];
  [v51 setMask:v50];

  [(UIView *)self setHidden:0];
}

- (id)targetedDragPreviewInContainerView:(id)a3
{
  v4 = a3;
  [(_UISearchTokenLayoutView *)self selectionBounds];
  [v4 convertRect:self fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = self->_delegateView;
  v14 = objc_opt_new();
  v15 = +[UIColor clearColor];
  [v14 setBackgroundColor:v15];

  v16 = [(UIPreviewTarget *)[UIDragPreviewTarget alloc] initWithContainer:v4 center:v6 + v10 * 0.5, v8 + v12 * 0.5];
  v17 = [[UITargetedDragPreview alloc] initWithView:v13 parameters:v14 target:v16];

  return v17;
}

@end