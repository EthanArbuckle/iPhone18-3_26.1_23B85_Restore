@interface UITextMagnifierCommonRenderer
- (id)backgroundColourIfNecessary;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)didMoveToSuperview;
- (void)loadImages;
- (void)performOperations:(id)a3;
- (void)update;
@end

@implementation UITextMagnifierCommonRenderer

- (void)loadImages
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->m_loaded)
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
    objc_storeStrong(&self->m_images, v17);
    v16 = [MEMORY[0x1E695DF90] dictionary];
    objc_storeStrong(&self->m_offsets, v16);
    v15 = self;
    v3 = [(UITextMagnifierCommonRenderer *)self visualsForMagnifier];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [v3 allKeys];
    v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = [v3 objectForKey:v8];
          v10 = [v9 objectForKey:@"UITextMagnifierFilename"];
          v11 = v10;
          if (v10)
          {
            v12 = _UIImageWithName(v10);
            if (v12)
            {
              v13 = v12;
              [v17 setObject:v12 forKey:v8];
              v14 = [v9 objectForKey:@"UITextMagnifierOffset"];
              if (v14)
              {
                [v16 setObject:v14 forKey:v8];
              }
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }

    v15->m_loaded = 1;
  }
}

- (void)performOperations:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITextMagnifierCommonRenderer *)self magnifier];
  v6 = [v5 target];
  v7 = [v6 window];

  v8 = [v7 screen];
  v9 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 forScreen:v8];

  if ([UIApp _isSpringBoard])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__UITextMagnifierCommonRenderer_performOperations___block_invoke;
    v21[3] = &unk_1E7125460;
    v23 = &v29;
    v22 = v7;
    v24 = &v25;
    [v9 enumerateObjectsUsingBlock:v21];
    if (v30[3] == 0x7FFFFFFFFFFFFFFFLL || v26[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
    }

    else
    {
      v11 = [v9 objectAtIndex:?];
      v10 = [v9 mutableCopy];
      [v10 insertObject:v11 atIndex:v26[3] + 1];
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v10 = v9;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v33 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        if ([v16 _appearsInLoupe])
        {
          v4[2](v4, v16);
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v17 objects:v33 count:16];
    }

    while (v13);
  }
}

void __51__UITextMagnifierCommonRenderer_performOperations___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = a1 + 5;
  if (*(*(a1[5] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && a1[4] == v5 && (v12 = v5, NSClassFromString(&cfstr_Sbisolationtan.isa), isKindOfClass = objc_opt_isKindOfClass(), v6 = v12, (isKindOfClass & 1) != 0) || (v10 = a1[6], v9 = a1 + 6, *(*(v10 + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL) && (v13 = v6, NSClassFromString(&cfstr_Sbhomescreenwi.isa), v11 = objc_opt_isKindOfClass(), v6 = v13, v7 = v9, (v11 & 1) != 0))
  {
    *(*(*v7 + 8) + 24) = a3;
  }
}

- (void)didMoveToSuperview
{
  if (dyld_program_sdk_at_least())
  {

    [(UITextMagnifierCommonRenderer *)self update];
  }
}

- (id)backgroundColourIfNecessary
{
  if (![UIApp _isSpringBoard] || ((-[UITextMagnifierCommonRenderer magnifier](self, "magnifier"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "target"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "window"), v2 = objc_claimAutoreleasedReturnValue(), v5, v4, objc_msgSend(v2, "screen"), v6 = objc_claimAutoreleasedReturnValue(), +[UIWindow allWindowsIncludingInternalWindows:onlyVisibleWindows:forScreen:](UIWindow, "allWindowsIncludingInternalWindows:onlyVisibleWindows:forScreen:", 1, 1, v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v23 = 0, v24 = &v23, v25 = 0x2020000000, v26 = 0x7FFFFFFFFFFFFFFFLL, v19 = 0, v20 = &v19, v21 = 0x2020000000, v22 = 0x7FFFFFFFFFFFFFFFLL, v15[0] = MEMORY[0x1E69E9820], v15[1] = 3221225472, v15[2] = __60__UITextMagnifierCommonRenderer_backgroundColourIfNecessary__block_invoke, v15[3] = &unk_1E7125460, v17 = &v23, v8 = v2, v16 = v8, v18 = &v19, objc_msgSend(v7, "enumerateObjectsUsingBlock:", v15), v24[3] != 0x7FFFFFFFFFFFFFFFLL) && v20[3] != 0x7FFFFFFFFFFFFFFFLL ? (+[UIColor blackColor](UIColor, "blackColor"), v2 = objc_claimAutoreleasedReturnValue(), v9 = 0) : (v9 = 1), v16, _Block_object_dispose(&v19, 8), _Block_object_dispose(&v23, 8), v7, v8, v9))
  {
    v10 = [(UIView *)self _window];
    if ([v10 _isHostedInAnotherProcess])
    {
LABEL_8:
      v11 = +[UIColor darkGrayColor];
LABEL_9:
      v2 = v11;
LABEL_10:

      goto LABEL_11;
    }

    v13 = [v10 windowScene];
    v14 = [v13 _backgroundStyle];

    if (v14 <= 6)
    {
      if (((1 << v14) & 0xC) != 0)
      {
        v11 = +[UIColor lightGrayColor];
        goto LABEL_9;
      }

      if (((1 << v14) & 0x30) != 0)
      {
        goto LABEL_8;
      }

      if (((1 << v14) & 0x42) != 0)
      {
        v11 = +[UIColor grayColor];
        goto LABEL_9;
      }
    }

    if (!v14)
    {
      v2 = 0;
    }

    goto LABEL_10;
  }

LABEL_11:

  return v2;
}

void __60__UITextMagnifierCommonRenderer_backgroundColourIfNecessary__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = a1 + 5;
  if (*(*(a1[5] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && a1[4] == v5 && (v12 = v5, NSClassFromString(&cfstr_Sbisolationtan.isa), isKindOfClass = objc_opt_isKindOfClass(), v6 = v12, (isKindOfClass & 1) != 0) || (v10 = a1[6], v9 = a1 + 6, *(*(v10 + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL) && (v13 = v6, NSClassFromString(&cfstr_Sbhomescreenwi.isa), v11 = objc_opt_isKindOfClass(), v6 = v13, v7 = v9, (v11 & 1) != 0))
  {
    *(*(*v7 + 8) + 24) = a3;
  }
}

- (void)update
{
  v3 = [(UIView *)self superview];

  if (v3)
  {
    [(UITextMagnifierCommonRenderer *)self loadImages];
    v81 = [(UITextMagnifierCommonRenderer *)self magnifier];
    v4 = [v81 isHorizontal];
    v5 = @"UITextMagnifierVerticalLo";
    if (v4)
    {
      v5 = @"UITextMagnifierHorizontalLo";
    }

    m_images = self->m_images;
    if (v4)
    {
      v7 = @"UITextMagnifierHorizontalMask";
    }

    else
    {
      v7 = @"UITextMagnifierVerticalMask";
    }

    if (v4)
    {
      v8 = @"UITextMagnifierHorizontalHi";
    }

    else
    {
      v8 = @"UITextMagnifierVerticalHi";
    }

    v9 = v5;
    v10 = [(NSDictionary *)m_images objectForKey:v9];
    v11 = [(NSDictionary *)self->m_offsets objectForKey:v9];

    [v11 CGPointValue];
    v13 = v12;
    v15 = v14;

    v16 = self->m_images;
    v17 = v7;
    v18 = [(NSDictionary *)v16 objectForKey:v17];
    v19 = [(NSDictionary *)self->m_offsets objectForKey:v17];

    [v19 CGPointValue];
    v78 = v20;
    v22 = v21;

    v23 = self->m_images;
    v24 = v8;
    v82 = [(NSDictionary *)v23 objectForKey:v24];
    v25 = [(NSDictionary *)self->m_offsets objectForKey:v24];

    [v25 CGPointValue];
    v79 = v27;
    v80 = v26;

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (!self->m_back && v10)
    {
      v28 = objc_alloc_init(MEMORY[0x1E6979398]);
      m_back = self->m_back;
      self->m_back = v28;

      v30 = [(UIView *)self layer];
      [v30 addSublayer:self->m_back];
    }

    -[CALayer setContents:](self->m_back, "setContents:", [v10 CGImage]);
    if (!self->m_mask)
    {
      v31 = objc_alloc_init(MEMORY[0x1E6979398]);
      m_mask = self->m_mask;
      self->m_mask = v31;

      v33 = objc_alloc_init(MEMORY[0x1E6979398]);
      [(CALayer *)self->m_mask setMask:v33];

      v34 = [(UIView *)self layer];
      [v34 insertSublayer:self->m_mask above:self->m_back];
    }

    v35 = [v18 CGImage];
    v36 = [(CALayer *)self->m_mask mask];
    [v36 setContents:v35];

    m_content = self->m_content;
    if (m_content)
    {
      v38 = [(CALayer *)m_content sublayers];
      v39 = [v38 copy];
      [v39 makeObjectsPerformSelector:sel_removeFromSuperlayer];
    }

    else
    {
      v40 = objc_alloc_init(MEMORY[0x1E6979398]);
      v41 = self->m_content;
      self->m_content = v40;

      [(CALayer *)self->m_content setAnchorPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
      [(CALayer *)self->m_mask addSublayer:self->m_content];
    }

    if (!self->m_front)
    {
      v42 = objc_alloc_init(MEMORY[0x1E6979398]);
      m_front = self->m_front;
      self->m_front = v42;

      v44 = [(UIView *)self layer];
      [v44 insertSublayer:self->m_front above:self->m_mask];
    }

    -[CALayer setContents:](self->m_front, "setContents:", [v82 CGImage]);
    if (!self->_isRegisteredForGeometryChanges)
    {
      [(UIView *)self _registerForGeometryChanges];
      self->_isRegisteredForGeometryChanges = 1;
    }

    v45 = [(UITextMagnifierCommonRenderer *)self backgroundColourIfNecessary];
    v46 = v81;
    if (v45)
    {
      v76 = v18;
      v77 = v10;
      v47 = objc_alloc_init(MEMORY[0x1E6979398]);
      v75 = v45;
      [v47 setBackgroundColor:{objc_msgSend(v45, "CGColor")}];
      v48 = [(UITextMagnifierCommonRenderer *)self magnifier];
      v49 = [v48 target];
      v50 = [v49 window];
      v51 = [v50 screen];
      v52 = v51;
      if (!v51)
      {
        v52 = [objc_opt_self() mainScreen];
      }

      [v52 bounds];
      [v47 setFrame:?];
      if (!v51)
      {
      }

      [(CALayer *)self->m_content addSublayer:v47];
      v46 = v81;
      v18 = v76;
      v10 = v77;
      v45 = v75;
    }

    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __39__UITextMagnifierCommonRenderer_update__block_invoke;
    v84[3] = &unk_1E7125488;
    v84[4] = self;
    [(UITextMagnifierCommonRenderer *)self performOperations:v84];
    [(UIView *)self bounds];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__UITextMagnifierCommonRenderer_update__block_invoke_2;
    aBlock[3] = &__block_descriptor_64_e63__CGRect__CGPoint_dd__CGSize_dd__40__0_CGPoint_dd_8_CGSize_dd_24l;
    *&aBlock[4] = v53;
    *&aBlock[5] = v55;
    *&aBlock[6] = v57;
    *&aBlock[7] = v59;
    v61 = _Block_copy(aBlock);
    [v10 size];
    v61[2](v61, v13, v15, v62, v63);
    [(CALayer *)self->m_back setFrame:?];
    [(CALayer *)self->m_mask setFrame:v54, v56, v58, v60];
    [v46 frame];
    v64 = (v61[2])(v61, v78, v22);
    v66 = v65;
    v68 = v67;
    v70 = v69;
    [(CALayer *)self->m_mask mask];
    v72 = v71 = v46;
    [v72 setFrame:{v64, v66, v68, v70}];

    [v82 size];
    v61[2](v61, v80, v79, v73, v74);
    [(CALayer *)self->m_front setFrame:?];
    [MEMORY[0x1E6979518] commit];
  }
}

void __39__UITextMagnifierCommonRenderer_update__block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E6979408]);
  [v3 setMatchesOpacity:1];
  [v3 setMatchesTransform:1];
  v4 = [v20 layer];
  [v3 setSourceLayer:v4];

  v5 = [v3 sourceLayer];
  [v5 anchorPoint];
  [v3 setAnchorPoint:?];

  v6 = [v3 sourceLayer];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (([v20 _isTextEffectsWindow] & 1) == 0 && objc_msgSend(v20, "_isHostedInAnotherProcess"))
  {
    v15 = [*(a1 + 32) _window];
    v16 = [v15 windowScene];
    v17 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v16];

    [v17 hostedViewOrigin];
    v8 = v8 + v18;
    v10 = v10 + v19;
  }

  [v3 setFrame:{v8, v10, v12, v14}];
  [*(*(a1 + 32) + 448) addSublayer:v3];
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  if ((a3->var0 & 6) != 0)
  {
    v37 = v11;
    v38 = v10;
    v39 = v9;
    v40 = v8;
    v41 = v7;
    v42 = v6;
    v43 = v4;
    v44 = v5;
    v13 = [(UITextMagnifierCommonRenderer *)self magnifier];
    [v13 offsetFromMagnificationPoint];
    v15 = v14;
    v16 = *MEMORY[0x1E695EFF8];
    v17 = *(MEMORY[0x1E695EFF8] + 8);
    v18 = [v13 isHorizontal];
    if (v18)
    {
      v19 = v15 + v17;
    }

    else
    {
      v19 = v17;
    }

    if (v18)
    {
      v20 = v16;
    }

    else
    {
      v20 = v15 + v16;
    }

    v21 = [(UIView *)self _window];
    [(UIView *)self bounds];
    [v21 convertRect:self fromView:?];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = *(MEMORY[0x1E69792E8] + 80);
    *&v36.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v36.m33 = v30;
    v31 = *(MEMORY[0x1E69792E8] + 112);
    *&v36.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v36.m43 = v31;
    v32 = *(MEMORY[0x1E69792E8] + 16);
    *&v36.m11 = *MEMORY[0x1E69792E8];
    *&v36.m13 = v32;
    v33 = *(MEMORY[0x1E69792E8] + 48);
    *&v36.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v36.m23 = v33;
    *&v35.m31 = *&v36.m31;
    *&v35.m33 = v30;
    *&v35.m41 = *&v36.m41;
    *&v35.m43 = v31;
    *&v35.m11 = *&v36.m11;
    *&v35.m13 = v32;
    *&v35.m21 = *&v36.m21;
    *&v35.m23 = v33;
    CATransform3DTranslate(&v36, &v35, (v20 + v23 + (v27 + v27 / -1.20000005) * 0.5) * -1.20000005, (v19 + v25 + (v29 + v29 / -1.20000005) * 0.5) * -1.20000005, 0.0);
    v34 = v36;
    CATransform3DScale(&v35, &v34, 1.20000005, 1.20000005, 1.0);
    v36 = v35;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v35 = v36;
    [(CALayer *)self->m_content setSublayerTransform:&v35];
    [MEMORY[0x1E6979518] commit];
  }
}

@end