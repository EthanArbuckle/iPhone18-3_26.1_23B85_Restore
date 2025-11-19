@interface SBIconGridImage
+ (CGRect)rectAtIndex:(unint64_t)a3 inLayout:(id)a4 maxCount:(unint64_t)a5;
+ (CGSize)sizeForLayout:(id)a3;
+ (id)gridImageForLayout:(id)a3 imageAppearance:(id)a4 previousGridImage:(id)a5 previousGridCellIndexToUpdate:(unint64_t)a6 pool:(id)a7 cellImageDrawBlock:(id)a8;
- (BOOL)isIconImageLoadingAtIndex:(unint64_t)a3;
- (BOOL)isIconImageTreatedAtIndex:(unint64_t)a3;
- (id)gridImageByPatchingCellAtIndex:(unint64_t)a3 cellImageProviderBlock:(id)a4;
- (id)iconImageAtIndex:(unint64_t)a3;
- (unint64_t)numberOfCells;
- (unint64_t)numberOfColumns;
- (unint64_t)numberOfLoadingCells;
- (unint64_t)numberOfRows;
- (unint64_t)numberOfUsedCells;
@end

@implementation SBIconGridImage

+ (id)gridImageForLayout:(id)a3 imageAppearance:(id)a4 previousGridImage:(id)a5 previousGridCellIndexToUpdate:(unint64_t)a6 pool:(id)a7 cellImageDrawBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  [v14 iconImageInfo];
  v20 = v19;
  v21 = SBHIconListLayoutMaximumIconCount(v14);
  [a1 sizeForLayout:v14];
  v23 = v22;
  v25 = v24;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v60 = [v16 treatedCells];
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = [v16 loadingCells];
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = [v16 usedCells];
  context = objc_autoreleasePoolPush();
  v26 = MEMORY[0x1E69DCAB8];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __126__SBIconGridImage_gridImageForLayout_imageAppearance_previousGridImage_previousGridCellIndexToUpdate_pool_cellImageDrawBlock___block_invoke;
  v44[3] = &unk_1E808D660;
  v27 = v16;
  v45 = v27;
  v52 = v21;
  v53 = a6;
  v54 = a1;
  v46 = v14;
  v48 = v59;
  v49 = v55;
  v28 = v18;
  v47 = v28;
  v50 = &v61;
  v51 = v57;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __126__SBIconGridImage_gridImageForLayout_imageAppearance_previousGridImage_previousGridCellIndexToUpdate_pool_cellImageDrawBlock___block_invoke_2;
  v36[3] = &unk_1E808D688;
  v43 = a1;
  v29 = v46;
  v37 = v29;
  v30 = v15;
  v38 = v30;
  v31 = v17;
  v39 = v31;
  v40 = v59;
  v41 = v57;
  v42 = v55;
  v32 = [v26 sbf_imageFromContextWithSize:0 scale:v31 type:v44 pool:v36 drawing:v23 encapsulation:{v25, v20}];

  objc_autoreleasePoolPop(context);
  if (v27 && !v62[3])
  {
    v33 = v27;

    v32 = v33;
  }

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);
  _Block_object_dispose(&v61, 8);

  return v32;
}

uint64_t __126__SBIconGridImage_gridImageForLayout_imageAppearance_previousGridImage_previousGridCellIndexToUpdate_pool_cellImageDrawBlock___block_invoke(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  [v3 size];
  result = [v3 drawInRect:{v4, v5, v6, v7}];
  v9 = *(a1 + 88);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      if (!*(a1 + 32))
      {
        goto LABEL_8;
      }

      if (v10 == *(a1 + 96))
      {
        break;
      }

LABEL_12:
      if (++v10 >= v9)
      {
        return result;
      }
    }

    v11 = UIGraphicsGetCurrentContext();
    [*(a1 + 104) rectAtIndex:v10 inLayout:*(a1 + 40) maxCount:*(a1 + 88)];
    CGContextClearRect(v11, v14);
    v12 = 1 << v10;
    if (v10 <= 0x1F)
    {
      *(*(*(a1 + 56) + 8) + 24) &= ~v12;
    }

    *(*(*(a1 + 64) + 8) + 24) |= v12;
    v9 = *(a1 + 88);
LABEL_8:
    [*(a1 + 104) rectAtIndex:v10 inLayout:*(a1 + 40) maxCount:v9];
    result = (*(*(a1 + 48) + 16))();
    if (result)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
      v13 = 1 << v10;
      *(*(*(a1 + 64) + 8) + 24) |= 1 << v10;
      if (v10 <= 0x1F)
      {
        *(*(*(a1 + 56) + 8) + 24) &= ~v13;
        *(*(*(a1 + 80) + 8) + 24) &= ~v13;
      }
    }

    v9 = *(a1 + 88);
    goto LABEL_12;
  }

  return result;
}

id __126__SBIconGridImage_gridImageForLayout_imageAppearance_previousGridImage_previousGridCellIndexToUpdate_pool_cellImageDrawBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = [objc_alloc(*(a1 + 80)) initWithCGImage:a2 scale:a3 orientation:a4];
  [v5 setListLayout:*(a1 + 32)];
  [v5 setImageAppearance:*(a1 + 40)];
  [v5 setPool:*(a1 + 48)];
  [v5 setTreatedCells:*(*(*(a1 + 56) + 8) + 24)];
  [v5 setLoadingCells:*(*(*(a1 + 64) + 8) + 24)];
  [v5 setUsedCells:*(*(*(a1 + 72) + 8) + 24)];

  return v5;
}

- (id)gridImageByPatchingCellAtIndex:(unint64_t)a3 cellImageProviderBlock:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v8 = [(SBIconGridImage *)self listLayout];
  v9 = [(SBIconGridImage *)self imageAppearance];
  v10 = [(SBIconGridImage *)self pool];
  v11 = [v7 gridImageForLayout:v8 imageAppearance:v9 previousGridImage:self previousGridCellIndexToUpdate:a3 pool:v10 cellImageDrawBlock:v6];

  return v11;
}

- (unint64_t)numberOfCells
{
  v2 = [(SBIconGridImage *)self listLayout];
  v3 = SBHIconListLayoutMaximumIconCount(v2);

  return v3;
}

- (unint64_t)numberOfColumns
{
  v2 = [(SBIconGridImage *)self listLayout];
  v3 = [v2 numberOfColumnsForOrientation:1];

  return v3;
}

- (unint64_t)numberOfRows
{
  v2 = [(SBIconGridImage *)self listLayout];
  v3 = [v2 numberOfRowsForOrientation:1];

  return v3;
}

- (unint64_t)numberOfUsedCells
{
  v2 = vcnt_s8(self->_usedCells);
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

- (id)iconImageAtIndex:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(SBIconGridImage *)self listLayout];
  [v5 rectAtIndex:a3 inLayout:v6 maxCount:{-[SBIconGridImage numberOfCells](self, "numberOfCells")}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(SBIconGridImage *)self CGImage];
  if (v15)
  {
    [(SBIconGridImage *)self scale];
    v17 = v16;
    CGAffineTransformMakeScale(&v21, v16, v16);
    v23.origin.x = v8;
    v23.origin.y = v10;
    v23.size.width = v12;
    v23.size.height = v14;
    v24 = CGRectApplyAffineTransform(v23, &v21);
    v18 = CGImageCreateWithImageInRect(v15, v24);
    if (v18)
    {
      v19 = v18;
      v15 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v18 scale:0 orientation:v17];
      CGImageRelease(v19);
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)isIconImageTreatedAtIndex:(unint64_t)a3
{
  if (a3 <= 0x20)
  {
    return (self->_treatedCells >> a3) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isIconImageLoadingAtIndex:(unint64_t)a3
{
  if (a3 <= 0x20)
  {
    return (self->_loadingCells >> a3) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (unint64_t)numberOfLoadingCells
{
  v2 = vcnt_s8(self->_loadingCells);
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

+ (CGRect)rectAtIndex:(unint64_t)a3 inLayout:(id)a4 maxCount:(unint64_t)a5
{
  v8 = a4;
  v9 = [v8 numberOfColumnsForOrientation:1];
  v10 = SBHIconListLayoutFolderIconGridCellSize(v8);
  v12 = v11;
  v13 = SBHIconListLayoutFolderIconGridCellSpacing(v8);
  v15 = v14;
  if (v9)
  {
    v16 = a3 / v9;
    v17 = a3 % v9;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v19 = v9 + ~v17;
  if (v18 != 1)
  {
    v19 = v17;
  }

  v20 = v10 + v13;
  v21 = (v10 + v13) * v19;
  if (v16 == [a1 numberOfRowsForNumberOfCells:a5 inLayout:v8] - 1)
  {
    v21 = v21 + floor(v20 * (v9 - a5 + v16 * v9) * 0.5);
  }

  v22 = v21;
  v23 = (v12 + v15) * v16;
  v24 = v10;
  v25 = v12;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (CGSize)sizeForLayout:(id)a3
{
  v3 = a3;
  v4 = [v3 numberOfRowsForOrientation:1];
  v5 = [v3 numberOfColumnsForOrientation:1];
  v6 = SBHIconListLayoutFolderIconGridCellSize(v3);
  v8 = v7;
  v9 = SBHIconListLayoutFolderIconGridCellSpacing(v3);
  v11 = v10;

  v12 = v9 * (v5 - 1);
  v13 = 0.0;
  if (!v5)
  {
    v12 = 0.0;
  }

  if (v4)
  {
    v13 = v11 * (v4 - 1);
  }

  v14 = v12 + v5 * v6;
  v15 = v13 + v4 * v8;
  result.height = v15;
  result.width = v14;
  return result;
}

@end