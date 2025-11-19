@interface _UIWTCProofreadingDecorationView
- (_UIWTCProofreadingDecorationView)initWithFrame:(CGRect)a3;
- (void)addDecorationInfo:(id)a3;
- (void)clearAllDecorations;
- (void)clearAllDecorationsOfType:(int64_t)a3;
- (void)clearAllHighlights;
- (void)clearAllUnderlines;
- (void)layoutSubviews;
- (void)removeDecorationInfo:(id)a3;
@end

@implementation _UIWTCProofreadingDecorationView

- (_UIWTCProofreadingDecorationView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = _UIWTCProofreadingDecorationView;
  v3 = [(UIView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x1E695DF90] dictionary];
    underlineDecorations = v4->_underlineDecorations;
    v4->_underlineDecorations = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    underlineSubviews = v4->_underlineSubviews;
    v4->_underlineSubviews = v7;

    v9 = [_UIWTCHighlightContainerView alloc];
    [(UIView *)v4 bounds];
    v10 = [(_UIWTCHighlightContainerView *)v9 initWithFrame:?];
    highlightContainer = v4->_highlightContainer;
    v4->_highlightContainer = v10;

    [(UIView *)v4->_highlightContainer setAutoresizingMask:18];
    [(UIView *)v4 addSubview:v4->_highlightContainer];
  }

  return v4;
}

- (void)layoutSubviews
{
  v102 = *MEMORY[0x1E69E9840];
  if (self->_needsLayoutForUnderlines)
  {
    v2 = self;
    if (!self->_underlineEffectView)
    {
      v3 = [UIVisualEffectView alloc];
      v4 = _UIWritingToolsProofreadingUnderlineEffect();
      v5 = [(UIVisualEffectView *)v3 initWithEffect:v4];
      underlineEffectView = v2->_underlineEffectView;
      v2->_underlineEffectView = v5;

      [(UIView *)v2 bounds];
      [(UIView *)v2->_underlineEffectView setFrame:?];
      [(UIView *)v2->_underlineEffectView setAutoresizingMask:18];
      [(UIView *)v2 addSubview:v2->_underlineEffectView];
    }

    v7 = v2->_underlineDecorations;
    v8 = v2->_underlineSubviews;
    v9 = [(UIVisualEffectView *)v2->_underlineEffectView contentView];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v67 = v7;
    obj = [(NSMutableDictionary *)v7 keyEnumerator];
    v68 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
    if (v68)
    {
      v65 = *v95;
      v66 = v8;
      do
      {
        v10 = 0;
        do
        {
          if (*v95 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v69 = v10;
          v11 = *(*(&v94 + 1) + 8 * v10);
          v12 = [(NSMutableDictionary *)v67 objectForKeyedSubscript:v11];
          v13 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v11];
          if (v13)
          {
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:&v90 objects:v100 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v91;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v91 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [*(*(&v90 + 1) + 8 * i) removeFromSuperview];
                }

                v16 = [v14 countByEnumeratingWithState:&v90 objects:v100 count:16];
              }

              while (v16);
            }

            [v14 removeAllObjects];
          }

          else
          {
            v14 = [MEMORY[0x1E695DF70] array];
            [(NSMutableDictionary *)v8 setObject:v14 forKeyedSubscript:v11];
          }

          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v73 = [v12 ranges];
          v19 = [v73 countByEnumeratingWithState:&v86 objects:v99 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v87;
            v70 = *v87;
            v71 = v12;
            do
            {
              v22 = 0;
              v72 = v20;
              do
              {
                if (*v87 != v21)
                {
                  objc_enumerationMutation(v73);
                }

                v23 = *(*(&v86 + 1) + 8 * v22);
                v24 = [v12 containers];
                v25 = [v24 objectForKey:v23];

                v26 = [(UIView *)v2 superview];

                if (v25 == v26)
                {
                  v74 = v22;
                  v27 = v2;
                  v28 = [v12 paths];
                  v29 = [v28 objectForKeyedSubscript:v23];

                  v84 = 0u;
                  v85 = 0u;
                  v82 = 0u;
                  v83 = 0u;
                  v76 = v29;
                  v30 = [v76 countByEnumeratingWithState:&v82 objects:v98 count:16];
                  if (v30)
                  {
                    v31 = v30;
                    v32 = *v83;
                    do
                    {
                      for (j = 0; j != v31; ++j)
                      {
                        if (*v83 != v32)
                        {
                          objc_enumerationMutation(v76);
                        }

                        v34 = *(*(&v82 + 1) + 8 * j);
                        v35 = objc_alloc_init(_UIWTCUnderlineDrawingView);
                        [v14 addObject:v35];
                        [v9 addSubview:v35];
                        [v34 bounds];
                        v37 = v36;
                        v39 = v38;
                        v41 = v40;
                        v43 = v42;
                        [v9 convertRect:v25 fromView:?];
                        [(UIView *)v35 setFrame:?];
                        [(UIView *)v35 convertRect:v25 fromView:v37, v39, v41, v43];
                        v45 = v44;
                        v47 = v46;
                        v49 = v48;
                        v51 = v50;
                        v52 = [v34 copy];
                        v103.origin.x = v37;
                        v103.origin.y = v39;
                        v103.size.width = v41;
                        v103.size.height = v43;
                        if (CGRectGetWidth(v103) > 0.0)
                        {
                          v104.origin.x = v37;
                          v104.origin.y = v39;
                          v104.size.width = v41;
                          v104.size.height = v43;
                          if (CGRectGetHeight(v104) > 0.0)
                          {
                            v53 = vabdd_f64(v41, v49);
                            if (vabdd_f64(v43, v51) >= 0.00000011920929 || v53 >= 0.00000011920929)
                            {
                              memset(&v81, 0, sizeof(v81));
                              v105.origin.x = v45;
                              v105.origin.y = v47;
                              v105.size.width = v49;
                              v105.size.height = v51;
                              sx = CGRectGetWidth(v105);
                              v106.origin.x = v37;
                              v106.origin.y = v39;
                              v106.size.width = v41;
                              v106.size.height = v43;
                              sxa = sx / CGRectGetWidth(v106);
                              v107.origin.x = v45;
                              v107.origin.y = v47;
                              v107.size.width = v49;
                              v107.size.height = v51;
                              Height = CGRectGetHeight(v107);
                              v108.origin.x = v37;
                              v108.origin.y = v39;
                              v108.size.width = v41;
                              v108.size.height = v43;
                              v55 = CGRectGetHeight(v108);
                              CGAffineTransformMakeScale(&v81, sxa, Height / v55);
                              v80 = v81;
                              [v52 applyTransform:&v80];
                            }
                          }
                        }

                        memset(&v81, 0, sizeof(v81));
                        v109.origin.x = v45;
                        v109.origin.y = v47;
                        v109.size.width = v49;
                        v109.size.height = v51;
                        sxb = v51;
                        v56 = v49;
                        v57 = v47;
                        v58 = v45;
                        MidX = CGRectGetMidX(v109);
                        v110.origin.x = v37;
                        v110.origin.y = v39;
                        v110.size.width = v41;
                        v110.size.height = v43;
                        v60 = MidX - CGRectGetMidX(v110);
                        v111.origin.x = v58;
                        v111.origin.y = v57;
                        v111.size.width = v56;
                        v111.size.height = sxb;
                        MidY = CGRectGetMidY(v111);
                        v112.origin.x = v37;
                        v112.origin.y = v39;
                        v112.size.width = v41;
                        v112.size.height = v43;
                        v62 = CGRectGetMidY(v112);
                        CGAffineTransformMakeTranslation(&v81, v60, MidY - v62);
                        v80 = v81;
                        [v52 applyTransform:&v80];
                        [(_UIWTCUnderlineDrawingView *)v35 setPath:v52];
                        v63 = [(UIView *)v27 tintColor];
                        [(_UIWTCUnderlineDrawingView *)v35 setColor:v63];
                      }

                      v31 = [v76 countByEnumeratingWithState:&v82 objects:v98 count:16];
                    }

                    while (v31);
                  }

                  v2 = v27;
                  v21 = v70;
                  v12 = v71;
                  v20 = v72;
                  v22 = v74;
                }

                ++v22;
              }

              while (v22 != v20);
              v20 = [v73 countByEnumeratingWithState:&v86 objects:v99 count:16];
            }

            while (v20);
          }

          v10 = v69 + 1;
          v8 = v66;
        }

        while (v69 + 1 != v68);
        v68 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
      }

      while (v68);
    }

    v2->_needsLayoutForUnderlines = 0;
  }
}

- (void)addDecorationInfo:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_41;
  }

  if ([v4 type])
  {
    v6 = [(UIView *)self superview];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v7 = [v5 ranges];
    v8 = [v7 countByEnumeratingWithState:&v79 objects:v84 count:16];
    if (v8)
    {
      v9 = v8;
      v65 = self;
      v10 = 0;
      v11 = *v80;
      v66 = *v80;
      do
      {
        v12 = 0;
        sx = v9;
        do
        {
          if (*v80 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v79 + 1) + 8 * v12);
          v14 = [v5 containers];
          v15 = [v14 objectForKey:v13];

          if (v6 == v15)
          {
            v16 = v7;
            v17 = v6;
            v18 = v5;
            v19 = [v5 paths];
            v20 = [v19 objectForKeyedSubscript:v13];

            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v75 objects:v83 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v76;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v76 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v75 + 1) + 8 * i);
                  if (v10)
                  {
                    [v10 appendPath:v26];
                  }

                  else
                  {
                    v10 = v26;
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v75 objects:v83 count:16];
              }

              while (v23);
            }

            v5 = v18;
            v6 = v17;
            v7 = v16;
            v11 = v66;
            v9 = sx;
          }

          ++v12;
        }

        while (v12 != v9);
        v9 = [v7 countByEnumeratingWithState:&v79 objects:v84 count:16];
      }

      while (v9);

      self = v65;
      if (v10)
      {
        v27 = v5;
        v28 = [(_UIWTCHighlightContainerView *)v65->_highlightContainer highlightSubview];
        [v10 bounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        [v28 convertRect:v6 fromView:?];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v86.origin.x = v30;
        v86.origin.y = v32;
        v86.size.width = v34;
        v86.size.height = v36;
        if (CGRectGetWidth(v86) > 0.0)
        {
          v87.origin.x = v30;
          v87.origin.y = v32;
          v87.size.width = v34;
          v87.size.height = v36;
          if (CGRectGetHeight(v87) > 0.0)
          {
            v45 = vabdd_f64(v34, v42);
            if (vabdd_f64(v36, v44) >= 0.00000011920929 || v45 >= 0.00000011920929)
            {
              memset(&v74, 0, sizeof(v74));
              v88.origin.x = v38;
              v88.origin.y = v40;
              v88.size.width = v42;
              v88.size.height = v44;
              sxa = CGRectGetWidth(v88);
              v89.origin.x = v30;
              v89.origin.y = v32;
              v89.size.width = v34;
              v89.size.height = v36;
              sxb = sxa / CGRectGetWidth(v89);
              v90.origin.x = v38;
              v90.origin.y = v40;
              v90.size.width = v42;
              v90.size.height = v44;
              Height = CGRectGetHeight(v90);
              v91.origin.x = v30;
              v91.origin.y = v32;
              v91.size.width = v34;
              v91.size.height = v36;
              v47 = CGRectGetHeight(v91);
              CGAffineTransformMakeScale(&v74, sxb, Height / v47);
              v73 = v74;
              [v10 applyTransform:&v73];
            }
          }
        }

        memset(&v74, 0, sizeof(v74));
        v92.origin.x = v38;
        v92.origin.y = v40;
        v92.size.width = v42;
        v92.size.height = v44;
        sxc = v44;
        v48 = v42;
        v49 = v40;
        v50 = v38;
        MidX = CGRectGetMidX(v92);
        v93.origin.x = v30;
        v93.origin.y = v32;
        v93.size.width = v34;
        v93.size.height = v36;
        v52 = MidX - CGRectGetMidX(v93);
        v94.origin.x = v50;
        v94.origin.y = v49;
        v94.size.width = v48;
        v94.size.height = sxc;
        MidY = CGRectGetMidY(v94);
        v95.origin.x = v30;
        v95.origin.y = v32;
        v95.size.width = v34;
        v95.size.height = v36;
        v54 = CGRectGetMidY(v95);
        CGAffineTransformMakeTranslation(&v74, v52, MidY - v54);
        v73 = v74;
        [v10 applyTransform:&v73];
        [v28 setPath:{objc_msgSend(v10, "CGPath")}];
        v55 = [(UIView *)v65->_highlightContainer tintColor];
        v56 = [v55 colorWithAlphaComponent:0.2];
        [v28 setSelectionColor:v56];

        v57 = [v27 identifier];
        [(_UIWTCHighlightContainerView *)v65->_highlightContainer setHighlightedSuggestionIdentifier:v57];

        v5 = v27;
LABEL_37:

        goto LABEL_38;
      }
    }

    else
    {
    }

    if (os_variant_has_internal_diagnostics())
    {
      v64 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v74.a) = 0;
        _os_log_fault_impl(&dword_188A29000, v64, OS_LOG_TYPE_FAULT, "Failed to create highlight path from decoration info", &v74, 2u);
      }
    }

    else
    {
      v60 = *(__UILogGetCategoryCachedImpl("Assert", &addDecorationInfo____s_category) + 8);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v74.a) = 0;
        _os_log_impl(&dword_188A29000, v60, OS_LOG_TYPE_ERROR, "Failed to create highlight path from decoration info", &v74, 2u);
      }
    }

    v10 = 0;
    goto LABEL_37;
  }

  v58 = self->_underlineDecorations;
  v59 = [v5 identifier];
  [(NSMutableDictionary *)v58 setObject:v5 forKeyedSubscript:v59];

  self->_needsLayoutForUnderlines = 1;
LABEL_38:
  [(UIView *)self setNeedsLayout];
  v61 = [(UIView *)self window];
  if (v61)
  {
    v62 = v61;
    v63 = +[UIView _isInAnimationBlockWithAnimationsEnabled];

    if (v63)
    {
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __54___UIWTCProofreadingDecorationView_addDecorationInfo___block_invoke;
      v72[3] = &unk_1E70F3590;
      v72[4] = self;
      [UIView performWithoutAnimation:v72];
    }
  }

LABEL_41:
}

- (void)removeDecorationInfo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    if ([v5 type])
    {
      v7 = [(_UIWTCHighlightContainerView *)self->_highlightContainer highlightedSuggestionIdentifier];
      v8 = [v5 identifier];
      v9 = [v7 isEqual:v8];

      if (v9)
      {
        v10 = [(_UIWTCHighlightContainerView *)self->_highlightContainer highlightSubview];
        [v10 setPath:0];

        [(_UIWTCHighlightContainerView *)self->_highlightContainer setHighlightedSuggestionIdentifier:0];
      }
    }

    else
    {
      v11 = self->_underlineDecorations;
      v12 = self->_underlineSubviews;
      [(NSMutableDictionary *)v11 removeObjectForKey:v6];
      v13 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v6];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v18 + 1) + 8 * v17++) removeFromSuperview];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }

      [v13 removeAllObjects];
    }
  }
}

- (void)clearAllDecorationsOfType:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = self->_underlineDecorations;
  v5 = [(NSMutableDictionary *)v4 copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_UIWTCProofreadingDecorationView *)self removeDecorationInfo:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)clearAllUnderlines
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_underlineDecorations copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(_UIWTCProofreadingDecorationView *)self removeDecorationInfo:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)clearAllHighlights
{
  v2 = [(_UIWTCHighlightContainerView *)self->_highlightContainer highlightSubview];
  [v2 setPath:0];
}

- (void)clearAllDecorations
{
  [(_UIWTCProofreadingDecorationView *)self clearAllUnderlines];

  [(_UIWTCProofreadingDecorationView *)self clearAllHighlights];
}

@end