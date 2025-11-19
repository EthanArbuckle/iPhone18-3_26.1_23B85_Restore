@interface _UICollectionLayoutSectionGeometryTranslator
- (char)initWithPrimaryContentSize:(int)a3 sectionAuxiliarySolutionSize:(double)a4 layoutAxis:(double)a5 layoutRTL:(double)a6 sectionInsets:(double)a7 contentFrameSupplementaryOffset:(double)a8;
- (double)auxillaryHostContentSize;
- (double)contentRectForSectionRect:(CGFloat)a3;
- (id)description;
@end

@implementation _UICollectionLayoutSectionGeometryTranslator

- (double)auxillaryHostContentSize
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return *(a1 + 88);
  }

  v3 = _UITotalEdgeDimensionsForLayoutAxis(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v4 = *(a1 + 88);
  return v4 + _UISetSizeValueForAxis(*(a1 + 8), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v3);
}

- (char)initWithPrimaryContentSize:(int)a3 sectionAuxiliarySolutionSize:(double)a4 layoutAxis:(double)a5 layoutRTL:(double)a6 sectionInsets:(double)a7 contentFrameSupplementaryOffset:(double)a8
{
  if (!a1)
  {
    return 0;
  }

  v45.receiver = a1;
  v45.super_class = _UICollectionLayoutSectionGeometryTranslator;
  v28 = objc_msgSendSuper2(&v45, sel_init);
  v29 = v28;
  if (v28)
  {
    *(v28 + 1) = a2;
    v28[16] = a3;
    if (a3)
    {
      v30 = a11;
    }

    else
    {
      v30 = a9;
    }

    if (a3)
    {
      v31 = a9;
    }

    else
    {
      v31 = a11;
    }

    *(v28 + 5) = a8;
    *(v28 + 6) = v30;
    *(v28 + 7) = a10;
    *(v28 + 8) = v31;
    *(v28 + 3) = a12;
    *(v28 + 4) = a13;
    if (a2)
    {
      v32 = MEMORY[0x1E695EFF8];
      v33 = *MEMORY[0x1E695EFF8];
      v34 = *(MEMORY[0x1E695EFF8] + 8);
      v35 = v30 + *MEMORY[0x1E695EFF8];
      v36 = _UIPointValueForAxis(a2, a12, a13);
      v37 = v35 + _UISetPointValueForAxis(*(v29 + 1), v33, v34, v36);
      v39 = a8 + v34 + v38;
      v40 = _UITotalEdgeDimensionsForLayoutAxis(a2, *(v29 + 5), *(v29 + 6), *(v29 + 7), *(v29 + 8));
      v41 = _UISetSizeValueForAxis(a2, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v40);
      *(v29 + 9) = v37;
      *(v29 + 10) = v39;
      *(v29 + 11) = a4;
      *(v29 + 12) = a5;
      *(v29 + 104) = *v32;
      *(v29 + 15) = fmax(a4 + v41, a6);
      *(v29 + 16) = fmax(a5 + v42, a7);
    }

    else
    {
      v43 = *MEMORY[0x1E695EFF8];
      *(v28 + 72) = *MEMORY[0x1E695EFF8];
      *(v28 + 11) = a4;
      *(v28 + 12) = a5;
      *(v28 + 104) = v43;
      *(v28 + 120) = *(v28 + 88);
    }
  }

  return v29;
}

- (double)contentRectForSectionRect:(CGFloat)a3
{
  if (!a1)
  {
    return 0.0;
  }

  v9 = a2 - *(a1 + 72);
  CGRectGetWidth(*&a2);
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  CGRectGetHeight(v11);
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGRect(self->_contentFrameIncludingAuxiliaries);
  v7 = NSStringFromCGRect(self->_primaryContentFrame);
  v8 = [v3 stringWithFormat:@"<%@:%p _contentFrameIncludingAuxiliaries=%@ primaryContentFrame=%@>", v5, self, v6, v7];;

  return v8;
}

@end