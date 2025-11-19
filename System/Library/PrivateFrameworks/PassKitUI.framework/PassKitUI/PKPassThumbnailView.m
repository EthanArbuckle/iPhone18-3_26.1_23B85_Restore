@interface PKPassThumbnailView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)initWithPass:(void *)a3 suppressedContent:(void *)a4 rendererState:(int)a5 options:;
- (uint64_t)_layoutWithBounds:(uint64_t)a3@<X8> commit:(double)a4@<D0>;
- (uint64_t)sizeStateForSize:(double)a3@<D0>;
- (void)_updateRasterizationScale;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBrighten:(uint64_t)a1;
- (void)setShadowVisibility:(uint64_t)a1;
@end

@implementation PKPassThumbnailView

- (id)initWithPass:(void *)a3 suppressedContent:(void *)a4 rendererState:(int)a5 options:
{
  v10 = a2;
  v11 = a4;
  if (!a1 || !v10)
  {
    goto LABEL_12;
  }

  v38.receiver = a1;
  v38.super_class = PKPassThumbnailView;
  v12 = objc_msgSendSuper2(&v38, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  a1 = v12;
  if (!v12)
  {
LABEL_19:
    a1 = a1;
    v28 = a1;
    goto LABEL_20;
  }

  objc_storeStrong(v12 + 58, a2);
  *(a1 + 102) = a5;
  a1[59] = a3;
  *(a1 + 457) = 1;
  a1[61] = 0x3FF0000000000000;
  *(a1 + 458) = 0;
  v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v14 = a1[52];
  a1[52] = v13;

  [a1 addSubview:a1[52]];
  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v16 = a1[53];
  a1[53] = v15;

  [a1[52] addSubview:a1[53]];
  v17 = [a1[53] layer];
  v18 = [MEMORY[0x1E69DC888] blackColor];
  [v17 setShadowColor:{objc_msgSend(v18, "CGColor")}];

  v19 = *(a1 + 61) * 0.25;
  *&v19 = v19;
  [v17 setShadowOpacity:v19];
  [v17 setShadowOffset:{0.0, 12.0}];
  [v17 setShadowRadius:18.0];
  [(PKPassThumbnailView *)a1 _updateRasterizationScale];
  v37 = v11;
  v36 = v11;
  v20 = a1[54];
  if (v20)
  {
    [v20 removeFromSuperview];
    v21 = a1[54];
    a1[54] = 0;
  }

  v22 = *(a1 + 102);
  v23 = [PKPassView alloc];
  v24 = v22 & 3;
  v25 = a1[58];
  if ((v22 & 3) != 0)
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  v26 = a1[59];
  v27 = v26 | 0x5F7;
  if ((a1[51] & 3) == 0)
  {
    if (PKIsLowEndDevice())
    {
      v27 = v26 | 0x7F7;
    }

    goto LABEL_15;
  }

  if ((v26 & 0x200) == 0)
  {
LABEL_15:
    v29 = v36;
    v30 = [(PKPassView *)v23 initWithPass:v25 content:v11 suppressedContent:v27 rendererState:v36];
    v31 = a1[54];
    a1[54] = v30;

    [a1[54] setUserInteractionEnabled:0];
    [a1[54] setModallyPresented:*(a1 + 458)];
    [a1[54] setPaused:v24 == 0];
    [a1[54] sizeToFit];
    v32 = [a1[54] layer];
    [v32 setMinificationFilter:*MEMORY[0x1E6979D68]];
    v33 = a1[53];
    v34 = a1[54];
    if (a1[55])
    {
      [v33 insertSubview:v34 belowSubview:?];
    }

    else
    {
      [v33 addSubview:v34];
    }

    v11 = v37;
    [a1 setNeedsLayout];

    goto LABEL_19;
  }

  __break(1u);
LABEL_12:
  v28 = 0;
LABEL_20:

  return v28;
}

- (void)_updateRasterizationScale
{
  if (a1)
  {
    v2 = [a1 window];
    v3 = [v2 windowScene];
    v8 = [v3 screen];

    if (v8)
    {
      [v8 scale];
    }

    else
    {
      v4 = PKUIScreenScale();
    }

    v5 = v4;
    v6 = [a1[53] layer];
    [v6 rasterizationScale];
    if (v7 != v5)
    {
      [v6 setRasterizationScale:v5];
    }
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PKPassThumbnailView;
  [(PKPassThumbnailView *)&v3 didMoveToWindow];
  [(PKPassThumbnailView *)&self->super.super.super.isa _updateRasterizationScale];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKPassThumbnailView *)self _layoutWithBounds:v5 commit:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  v3 = *v5;
  v4 = *&v5[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (uint64_t)_layoutWithBounds:(uint64_t)a3@<X8> commit:(double)a4@<D0>
{
  if (result)
  {
    v12 = result;
    [*(result + 432) sizeOfFront];
    v14 = v13;
    v16 = v15;
    v17 = [*(v12 + 464) style];
    v18 = v16;
    if (v17 != 6)
    {
      v18 = v14 * 0.704081633;
      if (v17 == 7)
      {
        v56 = a5;
        v58 = a6;
        [*(v12 + 464) thumbnailRect];
        x = v63.origin.x;
        y = v63.origin.y;
        width = v63.size.width;
        height = v63.size.height;
        if (!CGRectIsEmpty(v63))
        {
          v64.origin.x = x;
          v64.origin.y = y;
          v64.size.width = width;
          v64.size.height = height;
          v18 = fmax(CGRectGetMaxY(v64) + 1.0, v18);
        }

        a5 = v56;
        a6 = v58;
      }
    }

    v23 = fmin(a6 / v14, a7 / v18);
    result = PKSizeRoundToPixel();
    v25 = v24;
    v27 = v26;
    v28 = v26;
    if (v16 != v18)
    {
      result = PKFloatRoundToPixel();
    }

    if (v27 <= a7)
    {
      v29 = v27;
    }

    else
    {
      v29 = a7;
    }

    if (*(v12 + 457) & 1 | (v28 >= a7))
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    v31 = v27 != v30;
    if (a2)
    {
      v32 = v23 < 1.0;
      if (*(v12 + 412) != v32)
      {
        *(v12 + 412) = v32;
        v33 = [*(v12 + 424) layer];
        [v33 setShouldRasterize:*(v12 + 412)];
      }

      [*(v12 + 416) setFrame:{a4 + -44.0, a5 + -44.0, a6 + 44.0 + 44.0, a7 + 44.0}];
      [*(v12 + 416) setClipsToBounds:v31];
      [*(v12 + 448) setAlpha:v31];
      PKSizeAlignedInRect();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = *(v12 + 448);
      v57 = v30;
      v59 = v25;
      if (v42)
      {
        [v42 pkui_alignmentRect];
        PKSizeAlignedInRect();
        [*(v12 + 448) pkui_setAlignmentRect:{v43 + 44.0, v44 + 44.0}];
      }

      v65.origin.x = v35;
      v65.origin.y = v37;
      v65.size.width = v39;
      v65.size.height = v41;
      v66 = CGRectOffset(v65, 44.0, 44.0);
      v61 = v66.size.width;
      v45 = v66.size.height;
      [*(v12 + 424) setFrame:{v66.origin.x, v66.origin.y}];
      v46 = [*(v12 + 432) layer];
      [v46 anchorPoint];
      v48 = v47;
      v50 = v49;

      v52 = *MEMORY[0x1E695EFF8];
      v51 = *(MEMORY[0x1E695EFF8] + 8);
      v53 = *MEMORY[0x1E695EFF8] + v48 * v59;
      v54 = *(v12 + 432);
      CATransform3DMakeScale(&v62, v23, v23, 1.0);
      [v54 setTransform3D:&v62];
      [*(v12 + 432) setCenter:{v53, v51 + v50 * v27}];
      v55 = v51;
      v25 = v59;
      result = [*(v12 + 440) setFrame:{v52, v55, v61, v45}];
      v30 = v57;
    }

    *a3 = v25;
    *(a3 + 8) = v30;
    *(a3 + 16) = v31;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

- (uint64_t)sizeStateForSize:(double)a3@<D0>
{
  if (result)
  {
    return [(PKPassThumbnailView *)result _layoutWithBounds:a2 commit:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3, a4];
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKPassThumbnailView;
  [(PKPassThumbnailView *)&v8 layoutSubviews];
  [(PKPassThumbnailView *)self bounds];
  [(PKPassThumbnailView *)self _layoutWithBounds:v7 commit:v3, v4, v5, v6];
}

- (void)setBrighten:(uint64_t)a1
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 456) != a2)
  {
    *(a1 + 456) = a2;
    if (*(a1 + 456) == 1)
    {
      v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v4 = *(a1 + 440);
      *(a1 + 440) = v3;

      v5 = *(a1 + 440);
      v6 = [MEMORY[0x1E69DC888] colorWithDisplayP3Red:0.921569 green:0.2 blue:0.145098 alpha:1.0];
      [v5 setBackgroundColor:v6];

      v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
      v12[2] = xmmword_1BE1158F0;
      v12[3] = unk_1BE115900;
      v12[4] = xmmword_1BE115910;
      v12[0] = xmmword_1BE1158D0;
      v12[1] = unk_1BE1158E0;
      v8 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v12];
      [v7 setValue:v8 forKey:@"inputColorMatrix"];

      v9 = [*(a1 + 440) layer];
      v13[0] = v7;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v9 setFilters:v10];

      [*(a1 + 424) addSubview:*(a1 + 440)];
      [a1 setNeedsLayout];
    }

    else
    {
      [*(a1 + 440) removeFromSuperview];
      v11 = *(a1 + 440);
      *(a1 + 440) = 0;
    }
  }
}

- (void)setShadowVisibility:(uint64_t)a1
{
  if (a1)
  {
    v3 = fmax(fmin(a2, 1.0), 0.0);
    if (*(a1 + 488) != v3)
    {
      *(a1 + 488) = v3;
      v5 = [*(a1 + 424) layer];
      v4 = *(a1 + 488) * 0.25;
      *&v4 = v4;
      [v5 setShadowOpacity:v4];
    }
  }
}

@end