@interface _UICollectionLayoutSectionGeometryTranslator
- (char)initWithPrimaryContentSize:(int)size sectionAuxiliarySolutionSize:(double)solutionSize layoutAxis:(double)axis layoutRTL:(double)l sectionInsets:(double)insets contentFrameSupplementaryOffset:(double)offset;
- (double)auxillaryHostContentSize;
- (double)contentRectForSectionRect:(CGFloat)rect;
- (id)description;
@end

@implementation _UICollectionLayoutSectionGeometryTranslator

- (double)auxillaryHostContentSize
{
  if (!self)
  {
    return 0.0;
  }

  v2 = *(self + 8);
  if (!v2)
  {
    return *(self + 88);
  }

  v3 = _UITotalEdgeDimensionsForLayoutAxis(v2, *(self + 40), *(self + 48), *(self + 56), *(self + 64));
  v4 = *(self + 88);
  return v4 + _UISetSizeValueForAxis(*(self + 8), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v3);
}

- (char)initWithPrimaryContentSize:(int)size sectionAuxiliarySolutionSize:(double)solutionSize layoutAxis:(double)axis layoutRTL:(double)l sectionInsets:(double)insets contentFrameSupplementaryOffset:(double)offset
{
  if (!self)
  {
    return 0;
  }

  v45.receiver = self;
  v45.super_class = _UICollectionLayoutSectionGeometryTranslator;
  v28 = objc_msgSendSuper2(&v45, sel_init);
  v29 = v28;
  if (v28)
  {
    *(v28 + 1) = a2;
    v28[16] = size;
    if (size)
    {
      v30 = a11;
    }

    else
    {
      v30 = a9;
    }

    if (size)
    {
      v31 = a9;
    }

    else
    {
      v31 = a11;
    }

    *(v28 + 5) = offset;
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
      v39 = offset + v34 + v38;
      v40 = _UITotalEdgeDimensionsForLayoutAxis(a2, *(v29 + 5), *(v29 + 6), *(v29 + 7), *(v29 + 8));
      v41 = _UISetSizeValueForAxis(a2, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v40);
      *(v29 + 9) = v37;
      *(v29 + 10) = v39;
      *(v29 + 11) = solutionSize;
      *(v29 + 12) = axis;
      *(v29 + 104) = *v32;
      *(v29 + 15) = fmax(solutionSize + v41, l);
      *(v29 + 16) = fmax(axis + v42, insets);
    }

    else
    {
      v43 = *MEMORY[0x1E695EFF8];
      *(v28 + 72) = *MEMORY[0x1E695EFF8];
      *(v28 + 11) = solutionSize;
      *(v28 + 12) = axis;
      *(v28 + 104) = v43;
      *(v28 + 120) = *(v28 + 88);
    }
  }

  return v29;
}

- (double)contentRectForSectionRect:(CGFloat)rect
{
  if (!self)
  {
    return 0.0;
  }

  v9 = a2 - *(self + 72);
  CGRectGetWidth(*&a2);
  v11.origin.x = a2;
  v11.origin.y = rect;
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