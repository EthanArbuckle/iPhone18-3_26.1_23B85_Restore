@interface UIKeyboardKeyplaneSnapshotView
- (UIKeyboardKeyplaneSnapshotView)initWithKeyplaneView:(id)view;
- (id)snapshotFromView:(id)view;
- (void)setAlpha:(double)alpha;
@end

@implementation UIKeyboardKeyplaneSnapshotView

- (UIKeyboardKeyplaneSnapshotView)initWithKeyplaneView:(id)view
{
  v94 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy bounds];
  v87.receiver = self;
  v87.super_class = UIKeyboardKeyplaneSnapshotView;
  v5 = [(UIView *)&v87 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    layer = [(UIView *)v5 layer];
    [layer setAllowsGroupBlending:0];

    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v58 = viewCopy;
    obj = [viewCopy subviews];
    p_isa = &v6->super.super.super.isa;
    v62 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
    v10 = 0;
    if (v62)
    {
      v61 = *v84;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v84 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v83 + 1) + 8 * i);
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          layer2 = [v12 layer];
          sublayers = [layer2 sublayers];

          v15 = [sublayers countByEnumeratingWithState:&v79 objects:v92 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v80;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v80 != v17)
                {
                  objc_enumerationMutation(sublayers);
                }

                v19 = *(*(&v79 + 1) + 8 * j);
                if (([v19 isHidden] & 1) == 0)
                {
                  compositingFilter = [v19 compositingFilter];

                  if (compositingFilter)
                  {
                    compositingFilter2 = [v19 compositingFilter];

                    v22 = array2;
                    v10 = compositingFilter2;
                  }

                  else
                  {
                    v22 = array;
                  }

                  [v22 addObject:v19];
                }
              }

              v16 = [sublayers countByEnumeratingWithState:&v79 objects:v92 count:16];
            }

            while (v16);
          }
        }

        v62 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
      }

      while (v62);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v23 = array;
    v24 = [v23 countByEnumeratingWithState:&v75 objects:v91 count:16];
    viewCopy = v58;
    if (v24)
    {
      v25 = v24;
      v26 = *v76;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v76 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v75 + 1) + 8 * k) setHidden:1];
        }

        v25 = [v23 countByEnumeratingWithState:&v75 objects:v91 count:16];
      }

      while (v25);
    }

    v28 = [UIImageView alloc];
    [p_isa bounds];
    v29 = [(UIImageView *)v28 initWithFrame:?];
    v30 = p_isa[52];
    p_isa[52] = v29;

    v31 = [p_isa snapshotFromView:v58];
    [p_isa[52] setImage:v31];

    layer3 = [p_isa[52] layer];
    [layer3 setCompositingFilter:v10];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v33 = v23;
    v34 = [v33 countByEnumeratingWithState:&v71 objects:v90 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v72;
      do
      {
        for (m = 0; m != v35; ++m)
        {
          if (*v72 != v36)
          {
            objc_enumerationMutation(v33);
          }

          [*(*(&v71 + 1) + 8 * m) setHidden:0];
        }

        v35 = [v33 countByEnumeratingWithState:&v71 objects:v90 count:16];
      }

      while (v35);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v38 = array2;
    v39 = [v38 countByEnumeratingWithState:&v67 objects:v89 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v68;
      do
      {
        for (n = 0; n != v40; ++n)
        {
          if (*v68 != v41)
          {
            objc_enumerationMutation(v38);
          }

          [*(*(&v67 + 1) + 8 * n) setHidden:1];
        }

        v40 = [v38 countByEnumeratingWithState:&v67 objects:v89 count:16];
      }

      while (v40);
    }

    v43 = [UIImageView alloc];
    [p_isa bounds];
    v44 = [(UIImageView *)v43 initWithFrame:?];
    v45 = p_isa[51];
    p_isa[51] = v44;

    v46 = [p_isa snapshotFromView:v58];
    [p_isa[51] setImage:v46];

    _inheritedRenderConfig = [p_isa _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      layer4 = [p_isa layer];
      v50 = +[UIKBRenderTraits emptyTraits];
      v51 = [v50 extraFiltersForType:*MEMORY[0x1E6979D78]];
      [layer4 setFilters:v51];
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v52 = v38;
    v53 = [v52 countByEnumeratingWithState:&v63 objects:v88 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v64;
      do
      {
        for (ii = 0; ii != v54; ++ii)
        {
          if (*v64 != v55)
          {
            objc_enumerationMutation(v52);
          }

          [*(*(&v63 + 1) + 8 * ii) setHidden:0];
        }

        v54 = [v52 countByEnumeratingWithState:&v63 objects:v88 count:16];
      }

      while (v54);
    }

    v6 = p_isa;
    [p_isa addSubview:p_isa[52]];
    [(UIView *)v6 addSubview:v6->_fgView];
  }

  return v6;
}

- (id)snapshotFromView:(id)view
{
  viewCopy = view;
  v4 = viewCopy;
  if (viewCopy)
  {
    window = [viewCopy window];
    screen = [window screen];
    [screen scale];

    v7 = [UIGraphicsImageRenderer alloc];
    [v4 frame];
    v9 = v8;
    v11 = v10;
    traitCollection = [v4 traitCollection];
    v13 = [UIGraphicsImageRendererFormat formatForTraitCollection:traitCollection];
    v14 = [(UIGraphicsImageRenderer *)v7 initWithSize:v13 format:v9, v11];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__UIKeyboardKeyplaneSnapshotView_snapshotFromView___block_invoke;
    v17[3] = &unk_1E70F6970;
    v18 = v4;
    v15 = [(UIGraphicsImageRenderer *)v14 imageWithActions:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __51__UIKeyboardKeyplaneSnapshotView_snapshotFromView___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

- (void)setAlpha:(double)alpha
{
  alphaCopy = alpha;
  layer = [(UIView *)self->_fgView layer];
  *&v6 = alphaCopy;
  [layer setOpacity:v6];

  layer2 = [(UIView *)self->_bgView layer];
  *&v7 = alphaCopy;
  [layer2 setOpacity:v7];
}

@end