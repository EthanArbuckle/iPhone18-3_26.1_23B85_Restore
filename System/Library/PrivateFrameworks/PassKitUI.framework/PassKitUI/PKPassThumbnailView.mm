@interface PKPassThumbnailView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)initWithPass:(void *)pass suppressedContent:(void *)content rendererState:(int)state options:;
- (uint64_t)_layoutWithBounds:(uint64_t)bounds@<X8> commit:(double)commit@<D0>;
- (uint64_t)sizeStateForSize:(double)size@<D0>;
- (void)_updateRasterizationScale;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBrighten:(uint64_t)brighten;
- (void)setShadowVisibility:(uint64_t)visibility;
@end

@implementation PKPassThumbnailView

- (id)initWithPass:(void *)pass suppressedContent:(void *)content rendererState:(int)state options:
{
  v10 = a2;
  contentCopy = content;
  if (!self || !v10)
  {
    goto LABEL_12;
  }

  v38.receiver = self;
  v38.super_class = PKPassThumbnailView;
  v12 = objc_msgSendSuper2(&v38, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  self = v12;
  if (!v12)
  {
LABEL_19:
    self = self;
    selfCopy = self;
    goto LABEL_20;
  }

  objc_storeStrong(v12 + 58, a2);
  *(self + 102) = state;
  self[59] = pass;
  *(self + 457) = 1;
  self[61] = 0x3FF0000000000000;
  *(self + 458) = 0;
  v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v14 = self[52];
  self[52] = v13;

  [self addSubview:self[52]];
  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v16 = self[53];
  self[53] = v15;

  [self[52] addSubview:self[53]];
  layer = [self[53] layer];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  v19 = *(self + 61) * 0.25;
  *&v19 = v19;
  [layer setShadowOpacity:v19];
  [layer setShadowOffset:{0.0, 12.0}];
  [layer setShadowRadius:18.0];
  [(PKPassThumbnailView *)self _updateRasterizationScale];
  v37 = contentCopy;
  v36 = contentCopy;
  v20 = self[54];
  if (v20)
  {
    [v20 removeFromSuperview];
    v21 = self[54];
    self[54] = 0;
  }

  v22 = *(self + 102);
  v23 = [PKPassView alloc];
  v24 = v22 & 3;
  v25 = self[58];
  if ((v22 & 3) != 0)
  {
    contentCopy = 5;
  }

  else
  {
    contentCopy = 4;
  }

  v26 = self[59];
  v27 = v26 | 0x5F7;
  if ((self[51] & 3) == 0)
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
    v30 = [(PKPassView *)v23 initWithPass:v25 content:contentCopy suppressedContent:v27 rendererState:v36];
    v31 = self[54];
    self[54] = v30;

    [self[54] setUserInteractionEnabled:0];
    [self[54] setModallyPresented:*(self + 458)];
    [self[54] setPaused:v24 == 0];
    [self[54] sizeToFit];
    layer2 = [self[54] layer];
    [layer2 setMinificationFilter:*MEMORY[0x1E6979D68]];
    v33 = self[53];
    v34 = self[54];
    if (self[55])
    {
      [v33 insertSubview:v34 belowSubview:?];
    }

    else
    {
      [v33 addSubview:v34];
    }

    contentCopy = v37;
    [self setNeedsLayout];

    goto LABEL_19;
  }

  __break(1u);
LABEL_12:
  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

- (void)_updateRasterizationScale
{
  if (self)
  {
    window = [self window];
    windowScene = [window windowScene];
    screen = [windowScene screen];

    if (screen)
    {
      [screen scale];
    }

    else
    {
      v4 = PKUIScreenScale();
    }

    v5 = v4;
    layer = [self[53] layer];
    [layer rasterizationScale];
    if (v7 != v5)
    {
      [layer setRasterizationScale:v5];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPassThumbnailView *)self _layoutWithBounds:v5 commit:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  v3 = *v5;
  v4 = *&v5[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (uint64_t)_layoutWithBounds:(uint64_t)bounds@<X8> commit:(double)commit@<D0>
{
  if (result)
  {
    v12 = result;
    [*(result + 432) sizeOfFront];
    v14 = v13;
    v16 = v15;
    style = [*(v12 + 464) style];
    v18 = v16;
    if (style != 6)
    {
      v18 = v14 * 0.704081633;
      if (style == 7)
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
        layer = [*(v12 + 424) layer];
        [layer setShouldRasterize:*(v12 + 412)];
      }

      [*(v12 + 416) setFrame:{commit + -44.0, a5 + -44.0, a6 + 44.0 + 44.0, a7 + 44.0}];
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
      layer2 = [*(v12 + 432) layer];
      [layer2 anchorPoint];
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

    *bounds = v25;
    *(bounds + 8) = v30;
    *(bounds + 16) = v31;
  }

  else
  {
    *bounds = 0;
    *(bounds + 8) = 0;
    *(bounds + 16) = 0;
  }

  return result;
}

- (uint64_t)sizeStateForSize:(double)size@<D0>
{
  if (result)
  {
    return [(PKPassThumbnailView *)result _layoutWithBounds:a2 commit:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), size, a4];
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

- (void)setBrighten:(uint64_t)brighten
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (brighten && *(brighten + 456) != a2)
  {
    *(brighten + 456) = a2;
    if (*(brighten + 456) == 1)
    {
      v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v4 = *(brighten + 440);
      *(brighten + 440) = v3;

      v5 = *(brighten + 440);
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

      layer = [*(brighten + 440) layer];
      v13[0] = v7;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [layer setFilters:v10];

      [*(brighten + 424) addSubview:*(brighten + 440)];
      [brighten setNeedsLayout];
    }

    else
    {
      [*(brighten + 440) removeFromSuperview];
      v11 = *(brighten + 440);
      *(brighten + 440) = 0;
    }
  }
}

- (void)setShadowVisibility:(uint64_t)visibility
{
  if (visibility)
  {
    v3 = fmax(fmin(a2, 1.0), 0.0);
    if (*(visibility + 488) != v3)
    {
      *(visibility + 488) = v3;
      layer = [*(visibility + 424) layer];
      v4 = *(visibility + 488) * 0.25;
      *&v4 = v4;
      [layer setShadowOpacity:v4];
    }
  }
}

@end