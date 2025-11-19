@interface PXGStringTextureProvider
- (BOOL)_shouldRedrawForViewEnvironmentChange:(id)a3;
- (PXGStringTextureProvider)init;
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7;
- (void)_requestTextureForAttributedString:(id)a3 attributedStringBoundingSize:(CGSize)a4 string:(id)a5 withAttributes:(id)a6 targetSize:(CGSize)a7 drawingOptions:(int64_t)a8 drawingContext:(id)a9 userInterfaceDirection:(unint64_t)a10 verticalAlignment:(int64_t)a11 screenScale:(double)a12 textureRequestID:(int)a13 padding:(UIEdgeInsets)a14;
- (void)cancelTextureRequests:(id)a3;
- (void)viewEnvironmentDidChange:(id)a3;
@end

@implementation PXGStringTextureProvider

- (PXGStringTextureProvider)init
{
  v3.receiver = self;
  v3.super_class = PXGStringTextureProvider;
  result = [(PXGCGImageTextureProvider *)&v3 init];
  if (result)
  {
    result->_requestBlockLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)_requestTextureForAttributedString:(id)a3 attributedStringBoundingSize:(CGSize)a4 string:(id)a5 withAttributes:(id)a6 targetSize:(CGSize)a7 drawingOptions:(int64_t)a8 drawingContext:(id)a9 userInterfaceDirection:(unint64_t)a10 verticalAlignment:(int64_t)a11 screenScale:(double)a12 textureRequestID:(int)a13 padding:(UIEdgeInsets)a14
{
  height = a7.height;
  width = a7.width;
  v22 = a4.height;
  v23 = a4.width;
  v69[3] = *MEMORY[0x277D85DE8];
  v25 = a3;
  v26 = a5;
  v27 = a6;
  v28 = a9;
  if ([(PXGTextureProvider *)self isRequestActive:a13])
  {
    if (PXPixelSizeAreaIsZero())
    {
      [(PXGTextureProvider *)self provideNothingForRequestID:a13];
      goto LABEL_21;
    }

    v47 = a8;
    if (a10 == 1)
    {
      v29 = *MEMORY[0x277D74118];
      v30 = [v27 objectForKeyedSubscript:*MEMORY[0x277D74118]];
      v31 = [v30 mutableCopy];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = objc_alloc_init(MEMORY[0x277D74240]);
      }

      v34 = v33;

      v35 = [v34 alignment];
      if (v35 == 2)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35;
      }

      if (v35)
      {
        v37 = v36;
      }

      else
      {
        v37 = 2;
      }

      [v34 setAlignment:v37];
      v38 = [v27 mutableCopy];
      [v38 setObject:v34 forKeyedSubscript:v29];

      v27 = v38;
      a8 = v47;
    }

    if (v25)
    {
      v39 = objc_alloc(MEMORY[0x277D3CE08]);
      v69[0] = v25;
      *v66 = width;
      *&v66[1] = height;
      v40 = [MEMORY[0x277CCAE60] valueWithBytes:v66 objCType:"{CGSize=dd}"];
      v69[1] = v40;
      v41 = [MEMORY[0x277CCABB0] numberWithInteger:a8];
      v69[2] = v41;
      v42 = MEMORY[0x277CBEA60];
      v43 = v69;
    }

    else
    {
      v39 = objc_alloc(MEMORY[0x277D3CE08]);
      if (v27)
      {
        v68[0] = v26;
        v68[1] = v27;
        *v65 = width;
        *&v65[1] = height;
        v40 = [MEMORY[0x277CCAE60] valueWithBytes:v65 objCType:"{CGSize=dd}"];
        v68[2] = v40;
        v41 = [MEMORY[0x277CCABB0] numberWithInteger:a8];
        v68[3] = v41;
        v42 = MEMORY[0x277CBEA60];
        v43 = v68;
        v44 = 4;
        goto LABEL_20;
      }

      v67[0] = v26;
      *v64 = width;
      *&v64[1] = height;
      v40 = [MEMORY[0x277CCAE60] valueWithBytes:v64 objCType:"{CGSize=dd}"];
      v67[1] = v40;
      v41 = [MEMORY[0x277CCABB0] numberWithInteger:a8];
      v67[2] = v41;
      v42 = MEMORY[0x277CBEA60];
      v43 = v67;
    }

    v44 = 3;
LABEL_20:
    v45 = [v42 arrayWithObjects:v43 count:v44];
    v46 = [v39 initWithObjects:v45];

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __233__PXGStringTextureProvider__requestTextureForAttributedString_attributedStringBoundingSize_string_withAttributes_targetSize_drawingOptions_drawingContext_userInterfaceDirection_verticalAlignment_screenScale_textureRequestID_padding___block_invoke;
    v51[3] = &unk_2782A8860;
    v56 = width;
    v57 = height;
    v52 = v25;
    v53 = v26;
    v27 = v27;
    v54 = v27;
    v58 = v23;
    v59 = v22;
    v60 = v47;
    v55 = v28;
    v61 = a11;
    v62 = a14;
    v63 = a12;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __233__PXGStringTextureProvider__requestTextureForAttributedString_attributedStringBoundingSize_string_withAttributes_targetSize_drawingOptions_drawingContext_userInterfaceDirection_verticalAlignment_screenScale_textureRequestID_padding___block_invoke_3;
    v48[3] = &unk_2782AC600;
    v50 = 0;
    v48[4] = self;
    v49 = a13;
    [(PXGCGImageTextureProvider *)self requestCGImageWithCacheKey:v46 imageProvider:v51 resultHandler:v48];
  }

LABEL_21:
}

uint64_t __233__PXGStringTextureProvider__requestTextureForAttributedString_attributedStringBoundingSize_string_withAttributes_targetSize_drawingOptions_drawingContext_userInterfaceDirection_verticalAlignment_screenScale_textureRequestID_padding___block_invoke(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v8 = PXCreateCGImageWithDrawBlock();

  return v8;
}

uint64_t __233__PXGStringTextureProvider__requestTextureForAttributedString_attributedStringBoundingSize_string_withAttributes_targetSize_drawingOptions_drawingContext_userInterfaceDirection_verticalAlignment_screenScale_textureRequestID_padding___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = 0;
  v12 = 0;
  v13 = 0;
  v2 = *(a1 + 44);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = xmmword_21AE2D320;
  v7 = v2;
  v10 = 1065353216;
  v11 = 0;
  return [v3 provideCGImage:a2 options:&v6 forRequestID:v4];
}

void __233__PXGStringTextureProvider__requestTextureForAttributedString_attributedStringBoundingSize_string_withAttributes_targetSize_drawingOptions_drawingContext_userInterfaceDirection_verticalAlignment_screenScale_textureRequestID_padding___block_invoke_2(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:*(a1 + 40) attributes:*(a1 + 48)];
  }

  v15 = v13;
  PXGDrawAttributedString(v13, *(a1 + 80), *(a1 + 56), *(a1 + 88), a2, *(a1 + 64), *(a1 + 72), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), v14, a3, a4, a5, a6, *(a1 + 128));
}

- (BOOL)_shouldRedrawForViewEnvironmentChange:(id)a3
{
  v4 = a3;
  v5 = [(PXGTextureProvider *)self viewEnvironment];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  return v6 != v7;
}

- (void)viewEnvironmentDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = PXGStringTextureProvider;
  v4 = a3;
  [(PXGTextureProvider *)&v7 viewEnvironmentDidChange:v4];
  v5 = [(PXGStringTextureProvider *)self _shouldRedrawForViewEnvironmentChange:v4, v7.receiver, v7.super_class];

  if (v5)
  {
    [(PXGCGImageTextureProvider *)self invalidateCache];
    os_unfair_lock_lock(&self->_requestBlockLock);
    v6 = [(NSMutableDictionary *)self->_requestBlockLock_requestIDsToProviderBlock copy];
    os_unfair_lock_unlock(&self->_requestBlockLock);
    [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_5145];
  }
}

- (void)cancelTextureRequests:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXGStringTextureProvider;
  v4 = a3;
  [(PXGTextureProvider *)&v6 cancelTextureRequests:v4];
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PXGStringTextureProvider_cancelTextureRequests___block_invoke;
  v5[3] = &unk_2782ABC08;
  v5[4] = self;
  [v4 enumerateIndexesUsingBlock:v5];

  os_unfair_lock_unlock(&self->_requestBlockLock);
}

void __50__PXGStringTextureProvider_cancelTextureRequests___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [*(*(a1 + 32) + 264) removeObjectForKey:v3];
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7
{
  v12 = a7;
  val = self;
  v82.receiver = self;
  v82.super_class = PXGStringTextureProvider;
  v58 = a6;
  v13 = [(PXGTextureProvider *)&v82 requestTexturesForSpritesInRange:a3 geometries:a4 styles:a5 infos:a6 inLayout:v12];
  v48 = v14;
  v49 = v13;
  v15 = [v12 contentSource];
  v57 = [v12 userInterfaceDirection];
  [v12 displayScale];
  v56 = v16;
  v17 = HIDWORD(*&a3);
  if (HIDWORD(*&a3))
  {
    v54 = *(MEMORY[0x277D3CF90] + 8);
    v55 = *MEMORY[0x277D3CF90];
    v52 = *(MEMORY[0x277D3CF90] + 24);
    v53 = *(MEMORY[0x277D3CF90] + 16);
    v50 = *(MEMORY[0x277CCA870] + 8);
    v51 = *MEMORY[0x277CCA870];
    v18 = v49;
    v63 = v15;
    do
    {
      v62 = v17;
      v19 = [v15 attributedStringForSpriteAtIndex:a3 inLayout:v12];
      if (v19)
      {
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v21 = [v15 stringAtIndex:a3 inLayout:v12];
        v20 = [v15 stringAttributesAtIndex:a3 inLayout:v12];
      }

      v22 = [v15 verticalAlignmentForStringAtIndex:a3 inLayout:v12];
      if ([v12 stringSourceRespondsTo])
      {
        v23 = [v15 stringDrawingOptionsForSpriteAtIndex:a3 inLayout:v12];
      }

      else
      {
        v23 = 1;
      }

      v24 = v52;
      v25 = v53;
      v26 = v54;
      v27 = v55;
      if (([v12 stringSourceRespondsTo] & 0x100) != 0)
      {
        [v63 paddingForSpriteAtIndex:a3 inLayout:v12];
        v27 = v28;
        v26 = v29;
        v25 = v30;
        v24 = v31;
      }

      if (([v12 stringSourceRespondsTo] & 0x10000) != 0)
      {
        v32 = [v63 drawingContextForSpriteAtIndex:a3 inLayout:v12];
      }

      else
      {
        v32 = 0;
      }

      v34 = v50;
      v33 = v51;
      if (([v12 stringSourceRespondsTo] & 0x1000000) != 0)
      {
        [v63 attributedStringBoundingSizeForSpriteAtIndex:a3 inLayout:v12];
        v33 = v35;
        v34 = v36;
      }

      v37 = *(&v58->var3 + 5 * a3.location);
      objc_initWeak(&location, val);
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __94__PXGStringTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      v65[3] = &unk_2782A87F0;
      objc_copyWeak(v70, &location);
      v60 = v20;
      v66 = v60;
      v61 = v19;
      v67 = v61;
      v70[1] = v33;
      v70[2] = v34;
      v59 = v21;
      v68 = v59;
      v71 = vcvtq_f64_f32(v37);
      v72 = v23;
      v38 = v32;
      v69 = v38;
      v73 = v57;
      v74 = v22;
      v80 = v18;
      v75 = v56;
      v76 = v27;
      v77 = v26;
      v78 = v25;
      v79 = v24;
      v39 = MEMORY[0x21CEE40A0](v65);
      os_unfair_lock_lock(&val->_requestBlockLock);
      if (!val->_requestBlockLock_requestIDsToProviderBlock)
      {
        v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
        requestBlockLock_requestIDsToProviderBlock = val->_requestBlockLock_requestIDsToProviderBlock;
        val->_requestBlockLock_requestIDsToProviderBlock = v40;
      }

      v42 = [v39 copy];
      v43 = MEMORY[0x21CEE40A0]();
      v44 = val->_requestBlockLock_requestIDsToProviderBlock;
      v45 = [MEMORY[0x277CCABB0] numberWithInt:v18];
      [(NSMutableDictionary *)v44 setObject:v43 forKeyedSubscript:v45];

      os_unfair_lock_unlock(&val->_requestBlockLock);
      v39[2](v39);

      objc_destroyWeak(v70);
      objc_destroyWeak(&location);

      v18 = (v18 + 1);
      a3 = (a3.location + 1);
      v15 = v63;
      v17 = v62 - 1;
    }

    while (v62 != 1);
  }

  v47 = v48;
  v46 = v49;
  result.length = v47;
  result.location = v46;
  return result;
}

void __94__PXGStringTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained viewEnvironment];
    v6 = v4;
    v7 = v5;
    v8 = v7;
    if (v6)
    {
      if (v7)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = ___PXGResolvedAttributesWithViewEnvironment_block_invoke;
        v27[3] = &unk_2782A88A8;
        v28 = v9;
        v29 = v8;
        v10 = v9;
        [v6 enumerateKeysAndObjectsUsingBlock:v27];
        v11 = [v10 copy];
      }

      else
      {
        v11 = v6;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [v3 requestQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __94__PXGStringTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_2;
    v14[3] = &unk_2782A87C8;
    v14[4] = v3;
    v15 = *(a1 + 40);
    v19 = *(a1 + 72);
    v16 = *(a1 + 48);
    v17 = v11;
    v20 = *(a1 + 88);
    v21 = *(a1 + 104);
    v18 = *(a1 + 56);
    v22 = *(a1 + 112);
    v23 = *(a1 + 128);
    v26 = *(a1 + 168);
    v24 = *(a1 + 136);
    v25 = *(a1 + 152);
    v13 = v11;
    dispatch_async(v12, v14);
  }
}

@end