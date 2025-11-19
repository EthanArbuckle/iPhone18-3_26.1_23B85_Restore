@interface SBAppLayoutAutoLayoutSpaceCacheKey
- (double)containerBounds;
- (double)floatingDockHeight;
- (id)_records;
- (id)appLayout;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithAppLayout:(id *)a1;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)updateWithContainerBounds:(int)a3 containerOrientation:(int)a4 floatingDockHeight:(void *)a5 hideStrips:(void *)a6 hideDock:(CGFloat)a7 preferredMinimumSizeMap:(CGFloat)a8 layoutAttributesMap:(CGFloat)a9;
- (void)dealloc;
@end

@implementation SBAppLayoutAutoLayoutSpaceCacheKey

- (void)dealloc
{
  nullable_records = self->_nullable_records;
  if (nullable_records)
  {
    free(nullable_records);
    self->_nullable_records = 0;
  }

  v4.receiver = self;
  v4.super_class = SBAppLayoutAutoLayoutSpaceCacheKey;
  [(SBAppLayoutAutoLayoutSpaceCacheKey *)&v4 dealloc];
}

- (id)succinctDescription
{
  v2 = [(SBAppLayoutAutoLayoutSpaceCacheKey *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_appLayout);
  v5 = [WeakRetained allItems];
  v6 = [v3 appendUnsignedInteger:objc_msgSend(v5 withName:{"count"), @"item(s)"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBAppLayoutAutoLayoutSpaceCacheKey *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBAppLayoutAutoLayoutSpaceCacheKey *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__SBAppLayoutAutoLayoutSpaceCacheKey_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __76__SBAppLayoutAutoLayoutSpaceCacheKey_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendSize:@"preferredMinimumSize" withName:{*(a1 + 40), *(a1 + 48)}];
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v18 = *(a1 + 56);
  v19 = v4;
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v5 = SBDisplayItemAttributedSizeDescription(&v18);
  [v3 appendString:v5 withName:@"attributedSize"];

  v6 = [*(a1 + 32) appendPoint:@"normalizedCenter" withName:{*(a1 + 112), *(a1 + 120)}];
  v7 = *(a1 + 32);
  v8 = NSStringFromDisplayItemSizingPolicy(*(a1 + 128));
  [v7 appendString:v8 withName:@"sizingPolicy"];

  v9 = *(a1 + 32);
  v10 = SBOcclusionStateDescription(*(a1 + 136));
  [v9 appendString:v10 withName:@"occlusionState"];

  v11 = *(a1 + 32);
  v12 = BSInterfaceOrientationDescription();
  [v11 appendString:v12 withName:@"contentOrientation"];

  v13 = *(a1 + 32);
  v18 = *(a1 + 152);
  *&v19 = *(a1 + 168);
  v14 = SBStringFromDisplayItemTileConfiguration(&v18);
  [v13 appendString:v14 withName:@"tileConfiguration"];

  v15 = *(a1 + 32);
  v16 = *(a1 + 192);
  v18 = *(a1 + 176);
  v19 = v16;
  *&v20 = *(a1 + 208);
  v17 = NSStringFromDisplayItemSlideOverConfiguration(&v18);
  [v15 appendString:v17 withName:@"slideOverConfiguration"];
}

- (id)initWithAppLayout:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = SBAppLayoutAutoLayoutSpaceCacheKey;
    a1 = objc_msgSendSuper2(&v6, sel_init);
    if (a1)
    {
      if (!v3)
      {
        v5 = [MEMORY[0x277CCA890] currentHandler];
        [v5 handleFailureInMethod:sel_initWithAppLayout_ object:a1 file:@"SBAppLayoutAutoLayoutSpaceCacheKey.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
      }

      objc_storeWeak(a1 + 3, v3);
    }
  }

  return a1;
}

- (uint64_t)updateWithContainerBounds:(int)a3 containerOrientation:(int)a4 floatingDockHeight:(void *)a5 hideStrips:(void *)a6 hideDock:(CGFloat)a7 preferredMinimumSizeMap:(CGFloat)a8 layoutAttributesMap:(CGFloat)a9
{
  v21 = a5;
  v22 = a6;
  if (a1)
  {
    v45.origin.x = a7;
    v45.origin.y = a8;
    v45.size.width = a9;
    v45.size.height = a10;
    v23 = CGRectEqualToRect(v45, *(a1 + 64));
    if (!v23)
    {
      *(a1 + 64) = a7;
      *(a1 + 72) = a8;
      *(a1 + 80) = a9;
      *(a1 + 88) = a10;
    }

    if (*(a1 + 32) == a2)
    {
      v24 = !v23;
    }

    else
    {
      *(a1 + 32) = a2;
      v24 = 1;
    }

    if (*(a1 + 40) != a11)
    {
      *(a1 + 40) = a11;
      v24 = 1;
    }

    if (*(a1 + 16) != a3)
    {
      *(a1 + 16) = a3;
      v24 = 1;
    }

    if (*(a1 + 17) != a4)
    {
      *(a1 + 17) = a4;
      v24 = 1;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v26 = [WeakRetained allItems];

    v27 = [v26 count];
    v28 = [(SBAppLayoutAutoLayoutSpaceCacheKey *)a1 _records];
    if (v27 >= 1)
    {
      v29 = v28;
      v30 = 0;
      v31 = *MEMORY[0x277CBF3A8];
      v32 = *(MEMORY[0x277CBF3A8] + 8);
      do
      {
        v33 = [v26 objectAtIndex:v30];
        memcpy(__dst, v29, sizeof(__dst));
        memcpy(__s2, v29, sizeof(__s2));
        v34 = [v21 objectForKey:v33];
        v35 = v32;
        v36 = v31;
        if (v34)
        {
          v36 = MEMORY[0x223D6B400](v31, v32);
        }

        *__s2 = v36;
        *&__s2[8] = v35;
        v37 = [v22 objectForKey:v33];
        [(SBDisplayItemLayoutAttributes *)v37 attributedSize];
        *&__s2[72] = [(SBDisplayItemLayoutAttributes *)v37 normalizedCenter];
        *&__s2[80] = v38;
        *&__s2[88] = [(SBHomeScreenConfigurationServer *)v37 connections];
        *&__s2[96] = [(SBCameraHardwareButton *)v37 foregroundCameraShutterButtonPIDs];
        *&__s2[104] = [(SBHomeScreenConfigurationServer *)v37 authenticator];
        [(SBDisplayItemLayoutAttributes *)v37 tileConfiguration];
        *&__s2[112] = v40;
        *&__s2[128] = v41;
        [(SBDisplayItemLayoutAttributes *)v37 slideOverConfiguration];
        *&__s2[136] = v40;
        *&__s2[152] = v41;
        *&__s2[168] = v42;
        *&__s2[176] = [(SBHomeScreenConfigurationServer *)v37 queue];
        if (memcmp(__dst, __s2, 0xB8uLL))
        {
          memcpy(v29, __s2, 0xB8uLL);
          v24 = 1;
        }

        ++v30;
        v29 += 23;
      }

      while (v27 != v30);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

- (id)_records
{
  if (result)
  {
    v1 = result;
    result = result[1];
    if (!result)
    {
      WeakRetained = objc_loadWeakRetained(v1 + 3);
      v3 = [WeakRetained allItems];
      v4 = [v3 count];

      result = malloc_type_calloc(v4, 0xB8uLL, 0x100004076419E0CuLL);
      v1[1] = result;
    }
  }

  return result;
}

void __76__SBAppLayoutAutoLayoutSpaceCacheKey_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = [WeakRetained allItems];

  v4 = [v3 count];
  v5 = [(SBAppLayoutAutoLayoutSpaceCacheKey *)*(a1 + 32) _records];
  if (v4 >= 1)
  {
    v6 = v5;
    for (i = 0; i != v4; ++i)
    {
      [v3 objectAtIndex:i];
      v9 = v8 = v3;
      memcpy(__dst, v6, sizeof(__dst));
      v10 = *(a1 + 40);
      v11 = [v9 uniqueIdentifier];
      v12 = [*(a1 + 40) activeMultilinePrefix];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __76__SBAppLayoutAutoLayoutSpaceCacheKey_descriptionBuilderWithMultilinePrefix___block_invoke_2;
      v19[3] = &unk_2783BD668;
      v20 = *(a1 + 40);
      memcpy(v21, __dst, sizeof(v21));
      [v10 appendBodySectionWithName:v11 multilinePrefix:v12 block:v19];

      v3 = v8;
      v6 += 23;
    }
  }

  v13 = [*(a1 + 40) appendRect:@"containerBounds" withName:{*(*(a1 + 32) + 64), *(*(a1 + 32) + 72), *(*(a1 + 32) + 80), *(*(a1 + 32) + 88)}];
  v14 = *(a1 + 40);
  v15 = BSInterfaceOrientationDescription();
  [v14 appendString:v15 withName:@"containerOrientation"];

  v16 = [*(a1 + 40) appendFloat:@"floatingDockHeight" withName:1 decimalPrecision:*(*(a1 + 32) + 40)];
  v17 = [*(a1 + 40) appendBool:*(*(a1 + 32) + 16) withName:@"hideStrips"];
  v18 = [*(a1 + 40) appendBool:*(*(a1 + 32) + 17) withName:@"hideDock"];
}

- (id)appLayout
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    v1 = vars8;
  }

  return WeakRetained;
}

- (double)containerBounds
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0.0;
  }
}

- (double)floatingDockHeight
{
  if (a1)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0.0;
  }
}

@end