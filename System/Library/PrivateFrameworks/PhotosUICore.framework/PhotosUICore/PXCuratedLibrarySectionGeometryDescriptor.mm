@interface PXCuratedLibrarySectionGeometryDescriptor
- ($7A74DE1ADD4D9428579EDAA94466197A)headerCornerRadius;
- (BOOL)isEqual:(id)equal;
- (CGRect)headerRect;
- (CGRect)keyAssetRect;
- (CGRect)resizeRect:(CGRect)rect fromGeometryDesciptor:(id)desciptor inContainer:(int64_t)container resizing:(unint64_t)resizing;
- (CGRect)sectionRect;
- (PXCuratedLibrarySectionGeometryDescriptor)init;
- (PXCuratedLibrarySectionGeometryDescriptor)sectionGeometryDescriptorWithHeaderRect:(CGRect)rect;
- (PXCuratedLibrarySectionGeometryDescriptor)sectionGeometryDescriptorWithMaximumHeightBelowHeader:(double)header;
- (PXCuratedLibrarySectionGeometryDescriptor)sectionGeometryDescriptorWithVisualPosition:(int64_t)position;
- (id)description;
- (id)initWithSectionRect:(double)rect headerRect:(double)headerRect keyAssetRect:(double)assetRect headerCornerRadius:(double)radius headerAsset:(double)asset visualPosition:(double)position;
- (id)sectionGeometryDescriptorOffsetBy:(CGPoint)by;
- (id)sectionGeometryDescriptorTransformedBy:(CGAffineTransform *)by;
- (unint64_t)hash;
@end

@implementation PXCuratedLibrarySectionGeometryDescriptor

- ($7A74DE1ADD4D9428579EDAA94466197A)headerCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (CGRect)headerRect
{
  x = self->_headerRect.origin.x;
  y = self->_headerRect.origin.y;
  width = self->_headerRect.size.width;
  height = self->_headerRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)keyAssetRect
{
  x = self->_keyAssetRect.origin.x;
  y = self->_keyAssetRect.origin.y;
  width = self->_keyAssetRect.size.width;
  height = self->_keyAssetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sectionRect
{
  x = self->_sectionRect.origin.x;
  y = self->_sectionRect.origin.y;
  width = self->_sectionRect.size.width;
  height = self->_sectionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

float __65__PXCuratedLibrarySectionGeometryDescriptor_cornerRadiusForRect___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 40);
  if (*(v4 + a3) == 1 && *(v4 + a4) == 1)
  {
    result = *(a1 + 4 * a2 + 48);
    *(*(*(a1 + 32) + 8) + 4 * a2 + 32) = result;
  }

  return result;
}

- (CGRect)resizeRect:(CGRect)rect fromGeometryDesciptor:(id)desciptor inContainer:(int64_t)container resizing:(unint64_t)resizing
{
  desciptorCopy = desciptor;
  v11 = desciptorCopy;
  if (!resizing)
  {
    goto LABEL_13;
  }

  v13 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  if (container <= 1)
  {
    if (container != 1)
    {
      v16 = *(MEMORY[0x1E695F050] + 24);
      v17 = *(MEMORY[0x1E695F050] + 16);
      v18 = *(MEMORY[0x1E695F050] + 8);
      v19 = *MEMORY[0x1E695F050];
      if (!container)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionGeometryDescriptor.m" lineNumber:141 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      goto LABEL_10;
    }

    [desciptorCopy sectionRect];
    v19 = v28;
    v18 = v29;
    v17 = v30;
    v16 = v31;
    [(PXCuratedLibrarySectionGeometryDescriptor *)self sectionRect];
    goto LABEL_9;
  }

  if (container == 2)
  {
    [desciptorCopy headerRect];
    v19 = v32;
    v18 = v33;
    v17 = v34;
    v16 = v35;
    [(PXCuratedLibrarySectionGeometryDescriptor *)self headerRect];
    goto LABEL_9;
  }

  v16 = *(MEMORY[0x1E695F050] + 24);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v18 = *(MEMORY[0x1E695F050] + 8);
  v19 = *MEMORY[0x1E695F050];
  if (container == 3)
  {
    [desciptorCopy keyAssetRect];
    v19 = v20;
    v18 = v21;
    v17 = v22;
    v16 = v23;
    [(PXCuratedLibrarySectionGeometryDescriptor *)self keyAssetRect];
LABEL_9:
    v13 = v24;
    v12 = v25;
    v15 = v26;
    v14 = v27;
  }

LABEL_10:
  v42.origin.x = v19;
  v42.origin.y = v18;
  v42.size.width = v17;
  v42.size.height = v16;
  if (!CGRectIsNull(v42))
  {
    v43.origin.x = v13;
    v43.origin.y = v12;
    v43.size.width = v15;
    v43.size.height = v14;
    if (!CGRectIsNull(v43))
    {
      PXGResizeRect();
    }
  }

LABEL_13:

  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXCuratedLibrarySectionGeometryDescriptor)sectionGeometryDescriptorWithHeaderRect:(CGRect)rect
{
  v4 = objc_alloc(objc_opt_class());
  [(PXCuratedLibrarySectionGeometryDescriptor *)self sectionRect];
  v30 = v6;
  v31 = v5;
  v28 = v8;
  v29 = v7;
  [(PXCuratedLibrarySectionGeometryDescriptor *)self keyAssetRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(PXCuratedLibrarySectionGeometryDescriptor *)self headerCornerRadius];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  headerAsset = [(PXCuratedLibrarySectionGeometryDescriptor *)self headerAsset];
  v26 = [v4 initWithSectionRect:headerAsset headerRect:-[PXCuratedLibrarySectionGeometryDescriptor visualPosition](self keyAssetRect:"visualPosition") headerCornerRadius:v31 headerAsset:v30 visualPosition:{v29, v28, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v10, v12, v14, v16, __PAIR64__(v20, v18), __PAIR64__(v24, v22)}];

  return v26;
}

- (PXCuratedLibrarySectionGeometryDescriptor)sectionGeometryDescriptorWithMaximumHeightBelowHeader:(double)header
{
  selfCopy = self;
  [(PXCuratedLibrarySectionGeometryDescriptor *)selfCopy sectionRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PXCuratedLibrarySectionGeometryDescriptor *)selfCopy keyAssetRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  rect = v5;
  v59.origin.x = v5;
  rect_8 = v7;
  v59.origin.y = v7;
  v20 = v9;
  v59.size.width = v9;
  v59.size.height = v11;
  MaxY = CGRectGetMaxY(v59);
  v60.origin.x = v13;
  v52 = v19;
  v53 = v15;
  v60.origin.y = v15;
  v60.size.width = v17;
  v60.size.height = v19;
  v22 = MaxY - CGRectGetMaxY(v60);
  if (v22 > header)
  {
    v23 = v11 + header - v22;
    [(PXCuratedLibrarySectionGeometryDescriptor *)selfCopy headerRect];
    v26 = v25;
    v27 = v24;
    v48 = v28;
    v30 = v29;
    v55 = v13;
    if (v24 >= 0.0)
    {
      v31 = v24;
    }

    else
    {
      v31 = 0.0;
    }

    v61.origin.x = rect;
    v61.origin.y = rect_8;
    v61.size.width = v9;
    v61.size.height = v23;
    v51 = v23;
    v32 = CGRectGetMaxY(v61);
    v62.origin.x = v26;
    v62.origin.y = v27;
    v62.size.width = v48;
    v62.size.height = v30;
    v33 = v32 - CGRectGetHeight(v62);
    if (v31 >= v33)
    {
      v31 = v33;
    }

    v50 = v31;
    v63.origin.x = rect;
    v63.origin.y = rect_8;
    v63.size.width = v20;
    v63.size.height = v23;
    v34 = CGRectGetMaxY(v63);
    v64.origin.x = v26;
    v64.origin.y = v31;
    v64.size.width = v48;
    v64.size.height = v30;
    v35 = v34 - CGRectGetMinY(v64);
    if (v30 < v35)
    {
      v35 = v30;
    }

    v49 = v35;
    v36 = objc_alloc(objc_opt_class());
    [(PXCuratedLibrarySectionGeometryDescriptor *)selfCopy headerCornerRadius];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    headerAsset = [(PXCuratedLibrarySectionGeometryDescriptor *)selfCopy headerAsset];
    v46 = [v36 initWithSectionRect:headerAsset headerRect:-[PXCuratedLibrarySectionGeometryDescriptor visualPosition](selfCopy keyAssetRect:"visualPosition") headerCornerRadius:rect headerAsset:rect_8 visualPosition:{v20, v51, v26, v50, v48, v49, *&v55, *&v53, *&v17, *&v52, __PAIR64__(v40, v38), __PAIR64__(v44, v42)}];

    selfCopy = v46;
  }

  return selfCopy;
}

- (id)sectionGeometryDescriptorTransformedBy:(CGAffineTransform *)by
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PXCuratedLibrarySectionGeometryDescriptor_sectionGeometryDescriptorTransformedBy___block_invoke;
  aBlock[3] = &__block_descriptor_80_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v4 = *&by->c;
  v42 = *&by->a;
  v43 = v4;
  v44 = *&by->tx;
  v5 = _Block_copy(aBlock);
  v6 = objc_alloc(objc_opt_class());
  [(PXCuratedLibrarySectionGeometryDescriptor *)self sectionRect];
  v7 = v5[2](v5);
  v39 = v8;
  v40 = v7;
  v37 = v10;
  v38 = v9;
  [(PXCuratedLibrarySectionGeometryDescriptor *)self headerRect];
  v11 = v5[2](v5);
  v35 = v12;
  v36 = v11;
  v33 = v14;
  v34 = v13;
  [(PXCuratedLibrarySectionGeometryDescriptor *)self keyAssetRect];
  v15 = v5[2](v5);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(PXCuratedLibrarySectionGeometryDescriptor *)self headerCornerRadius];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  headerAsset = [(PXCuratedLibrarySectionGeometryDescriptor *)self headerAsset];
  v31 = [v6 initWithSectionRect:headerAsset headerRect:-[PXCuratedLibrarySectionGeometryDescriptor visualPosition](self keyAssetRect:"visualPosition") headerCornerRadius:v40 headerAsset:v39 visualPosition:{v38, v37, v36, v35, v34, v33, *&v15, v17, v19, v21, __PAIR64__(v25, v23), __PAIR64__(v29, v27)}];

  return v31;
}

double __84__PXCuratedLibrarySectionGeometryDescriptor_sectionGeometryDescriptorTransformedBy___block_invoke(_OWORD *a1, double a2, double a3, double a4, double a5)
{
  v8 = a2;
  if (!CGRectIsNull(*&a2))
  {
    v10 = a1[3];
    *&v15.a = a1[2];
    *&v15.c = v10;
    *&v15.tx = a1[4];
    v11 = v8;
    *&v10 = a3;
    v12 = a4;
    v13 = a5;
    *&v8 = CGRectApplyAffineTransform(*(&v10 - 8), &v15);
  }

  return v8;
}

- (id)sectionGeometryDescriptorOffsetBy:(CGPoint)by
{
  CGAffineTransformMakeTranslation(&v6, by.x, by.y);
  v4 = [(PXCuratedLibrarySectionGeometryDescriptor *)self sectionGeometryDescriptorTransformedBy:&v6];

  return v4;
}

- (PXCuratedLibrarySectionGeometryDescriptor)sectionGeometryDescriptorWithVisualPosition:(int64_t)position
{
  v5 = objc_alloc(objc_opt_class());
  [(PXCuratedLibrarySectionGeometryDescriptor *)self sectionRect];
  v39 = v7;
  v40 = v6;
  v37 = v9;
  v38 = v8;
  [(PXCuratedLibrarySectionGeometryDescriptor *)self headerRect];
  v35 = v11;
  v36 = v10;
  v33 = v13;
  v34 = v12;
  [(PXCuratedLibrarySectionGeometryDescriptor *)self keyAssetRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(PXCuratedLibrarySectionGeometryDescriptor *)self headerCornerRadius];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  headerAsset = [(PXCuratedLibrarySectionGeometryDescriptor *)self headerAsset];
  v31 = [v5 initWithSectionRect:headerAsset headerRect:position keyAssetRect:v40 headerCornerRadius:v39 headerAsset:v38 visualPosition:{v37, v36, v35, v34, v33, v15, v17, v19, v21, __PAIR64__(v25, v23), __PAIR64__(v29, v27)}];

  return v31;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  [(PXCuratedLibrarySectionGeometryDescriptor *)self sectionRect];
  NSStringFromCGRect(v6);
  objc_claimAutoreleasedReturnValue();
  [(PXCuratedLibrarySectionGeometryDescriptor *)self headerRect];
  NSStringFromCGRect(v7);
  objc_claimAutoreleasedReturnValue();
  [(PXCuratedLibrarySectionGeometryDescriptor *)self keyAssetRect];
  NSStringFromCGRect(v8);
  objc_claimAutoreleasedReturnValue();
  [(PXCuratedLibrarySectionGeometryDescriptor *)self headerCornerRadius];
  PXGCornerRadiusDescription();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v54 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      visualPosition = [(PXCuratedLibrarySectionGeometryDescriptor *)self visualPosition];
      if (visualPosition == [(PXCuratedLibrarySectionGeometryDescriptor *)v5 visualPosition]&& ([(PXCuratedLibrarySectionGeometryDescriptor *)self sectionRect], v8 = v7, v10 = v9, v12 = v11, v14 = v13, [(PXCuratedLibrarySectionGeometryDescriptor *)v5 sectionRect], v62.origin.x = v15, v62.origin.y = v16, v62.size.width = v17, v62.size.height = v18, v59.origin.x = v8, v59.origin.y = v10, v59.size.width = v12, v59.size.height = v14, CGRectEqualToRect(v59, v62)) && ([(PXCuratedLibrarySectionGeometryDescriptor *)self headerRect], v20 = v19, v22 = v21, v24 = v23, v26 = v25, [(PXCuratedLibrarySectionGeometryDescriptor *)v5 headerRect], v63.origin.x = v27, v63.origin.y = v28, v63.size.width = v29, v63.size.height = v30, v60.origin.x = v20, v60.origin.y = v22, v60.size.width = v24, v60.size.height = v26, CGRectEqualToRect(v60, v63)) && ([(PXCuratedLibrarySectionGeometryDescriptor *)self keyAssetRect], v32 = v31, v34 = v33, v36 = v35, v38 = v37, [(PXCuratedLibrarySectionGeometryDescriptor *)v5 keyAssetRect], v64.origin.x = v39, v64.origin.y = v40, v64.size.width = v41, v64.size.height = v42, v61.origin.x = v32, v61.origin.y = v34, v61.size.width = v36, v61.size.height = v38, CGRectEqualToRect(v61, v64)))
      {
        [(PXCuratedLibrarySectionGeometryDescriptor *)self headerCornerRadius];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        [(PXCuratedLibrarySectionGeometryDescriptor *)v5 headerCornerRadius];
        v54 = 0;
        if (v44 == v55 && v46 == v51 && v48 == v52 && v50 == v53)
        {
          headerAsset = [(PXCuratedLibrarySectionGeometryDescriptor *)self headerAsset];
          headerAsset2 = [(PXCuratedLibrarySectionGeometryDescriptor *)v5 headerAsset];
          if (headerAsset == headerAsset2)
          {
            v54 = 1;
          }

          else
          {
            v54 = [headerAsset isEqual:headerAsset2];
          }
        }
      }

      else
      {
        v54 = 0;
      }
    }

    else
    {
      v54 = 0;
    }
  }

  return v54;
}

- (unint64_t)hash
{
  [(PXCuratedLibrarySectionGeometryDescriptor *)self sectionRect];
  v7 = [(PXCuratedLibrarySectionGeometryDescriptor *)self visualPosition]^ v3 ^ (2 * v4) ^ (4 * v5) ^ (8 * v6);
  [(PXCuratedLibrarySectionGeometryDescriptor *)self headerRect];
  return v7 ^ (16 * v8);
}

- (id)initWithSectionRect:(double)rect headerRect:(double)headerRect keyAssetRect:(double)assetRect headerCornerRadius:(double)radius headerAsset:(double)asset visualPosition:(double)position
{
  v35 = a11;
  v39.receiver = self;
  v39.super_class = PXCuratedLibrarySectionGeometryDescriptor;
  v36 = objc_msgSendSuper2(&v39, sel_init);
  v37 = v36;
  if (v36)
  {
    *(v36 + 5) = a2;
    *(v36 + 6) = rect;
    *(v36 + 7) = headerRect;
    *(v36 + 8) = assetRect;
    *(v36 + 13) = radius;
    *(v36 + 14) = asset;
    *(v36 + 15) = position;
    *(v36 + 16) = a9;
    v36[9] = a17;
    v36[10] = a18;
    v36[11] = a19;
    v36[12] = a20;
    *(v36 + 6) = a21;
    *(v36 + 7) = a22;
    *(v36 + 8) = a23;
    *(v36 + 9) = a24;
    objc_storeStrong(v36 + 1, a11);
    v37[2] = a12;
  }

  return v37;
}

- (PXCuratedLibrarySectionGeometryDescriptor)init
{
  HIDWORD(v3) = *(off_1E7721FF0 + 3);
  *(&v3 + 4) = *(off_1E7721FF0 + 4);
  LODWORD(v3) = *off_1E7721FF0;
  return [(PXCuratedLibrarySectionGeometryDescriptor *)self initWithSectionRect:0 headerRect:*MEMORY[0x1E695F050] keyAssetRect:*(MEMORY[0x1E695F050] + 8) headerCornerRadius:*(MEMORY[0x1E695F050] + 16) headerAsset:*(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v3];
}

@end