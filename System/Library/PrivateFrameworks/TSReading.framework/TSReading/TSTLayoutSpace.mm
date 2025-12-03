@interface TSTLayoutSpace
- (CGAffineTransform)transformFromCanvas;
- (CGAffineTransform)transformFromDevice;
- (CGAffineTransform)transformToCanvas;
- (CGAffineTransform)transformToDevice;
- (CGPoint)tableOffset;
- (TSTLayout)layout;
- (TSTLayoutSpace)initWithLayoutSpaceBundle:(id)bundle type:(int)type;
- (TSTMasterLayout)masterLayout;
- (id)description;
- (int)validate:(id)validate;
- (int)validateCoordinateCache:(id)cache;
- (int)validateTableOffset:(id)offset;
- (void)dealloc;
- (void)invalidateCoordinates;
- (void)invalidateTableOffset;
- (void)lockForRead;
- (void)lockForWrite;
- (void)setTransformFromCanvas:(CGAffineTransform *)canvas;
- (void)setTransformFromDevice:(CGAffineTransform *)device;
- (void)setTransformToCanvas:(CGAffineTransform *)canvas;
- (void)setTransformToDevice:(CGAffineTransform *)device;
- (void)setViewScale:(double)scale;
- (void)unlock;
- (void)validateCachedFrames;
@end

@implementation TSTLayoutSpace

- (TSTLayout)layout
{
  bundle = [(TSTLayoutSpace *)self bundle];

  return [(TSTLayoutSpaceBundle *)bundle layout];
}

- (TSTMasterLayout)masterLayout
{
  layout = [(TSTLayoutSpaceBundle *)[(TSTLayoutSpace *)self bundle] layout];

  return [(TSTLayout *)layout masterLayout];
}

- (TSTLayoutSpace)initWithLayoutSpaceBundle:(id)bundle type:(int)type
{
  v15.receiver = self;
  v15.super_class = TSTLayoutSpace;
  v6 = [(TSTLayoutSpace *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->mBundle = bundle;
    v6->mLayoutSpaceType = type;
    v6->mInvalidFlags = 257;
    TSTLayoutSpaceSetGridRange(v6, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
    *&v7->mHeaderColumnsRepeat = 0;
    v7->mViewScale = 1.0;
    v8 = MEMORY[0x277CBF2C0];
    v9 = *MEMORY[0x277CBF2C0];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    *&v7->mTransformToCanvas.a = *MEMORY[0x277CBF2C0];
    *&v7->mTransformToCanvas.c = v10;
    v11 = *(v8 + 32);
    *&v7->mTransformToCanvas.tx = v11;
    *&v7->mTransformFromCanvas.a = v9;
    *&v7->mTransformFromCanvas.c = v10;
    *&v7->mTransformFromCanvas.tx = v11;
    *&v7->mTransformToDevice.c = v10;
    *&v7->mTransformToDevice.a = v9;
    *&v7->mTransformToDevice.tx = v11;
    *&v7->mTransformFromDevice.a = v9;
    *&v7->mTransformFromDevice.c = v10;
    *&v7->mTransformFromDevice.tx = v11;
    *&v7->mDrawBlackAndWhite = 256;
    *&v7->mHeaderRowColumnCoordinates = 0u;
    *&v7->mHeaderColumnRowCoordinates = 0u;
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v7->mCachedFrame.origin = *MEMORY[0x277CBF3A0];
    v7->mCachedFrame.size = v13;
    v7->mCachedAlignedFrame.origin = v12;
    v7->mCachedAlignedFrame.size = v13;
    v7->mCachedStrokeFrame.origin = v12;
    v7->mCachedStrokeFrame.size = v13;
    v7->mCachedAlignedStrokeFrame.origin = v12;
    v7->mCachedAlignedStrokeFrame.size = v13;
    pthread_rwlock_init(&v7->mLock, 0);
    v7->mLayoutDirectionIsLeftToRight = [(TSTLayoutSpace *)v7 p_getLayoutDirectionLeftToRight];
  }

  return v7;
}

- (void)dealloc
{
  self->mHeaderRowColumnCoordinates = 0;

  self->mBodyColumnCoordinates = 0;
  self->mHeaderColumnRowCoordinates = 0;

  self->mBodyRowCoordinates = 0;
  pthread_rwlock_destroy(&self->mLock);
  v3.receiver = self;
  v3.super_class = TSTLayoutSpace;
  [(TSTLayoutSpace *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  mLayoutSpaceType = self->mLayoutSpaceType;
  if (mLayoutSpaceType > 6)
  {
    v7 = @"TSTLayoutSpaceTypeUnknown";
  }

  else
  {
    v7 = off_279D4AA10[mLayoutSpaceType];
  }

  topLeft = self->mGridRange.topLeft;
  bottomRight = self->mGridRange.bottomRight;
  v10 = MEMORY[0x277CCACA8];
  v11 = HIDWORD(*&topLeft);
  if (topLeft.column == -1 && v11 == 0xFFFFFFFF)
  {
    v14 = @"{invalid, invalid}";
  }

  else
  {
    if (topLeft.column == -1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v11, v21];
    }

    else if (v11 == 0xFFFFFFFF)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, invalid}", *&self->mGridRange.topLeft, v21];
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, %u}", *&self->mGridRange.topLeft, HIDWORD(*&topLeft)];
    }

    v14 = v13;
  }

  v15 = HIDWORD(*&bottomRight);
  if (bottomRight.column == -1 && v15 == 0xFFFFFFFF)
  {
    v16 = @"{invalid, invalid}";
  }

  else if (bottomRight.column == -1)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v15, v21];
  }

  else if (v15 == 0xFFFFFFFF)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, invalid}", bottomRight, v21];
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, %u}", bottomRight, HIDWORD(*&bottomRight)];
  }

  v17 = [v10 stringWithFormat:@"{%@->%@}", v14, v16];
  v18 = *&self->mTransformToDevice.c;
  *&transform.a = *&self->mTransformToDevice.a;
  *&transform.c = v18;
  *&transform.tx = *&self->mTransformToDevice.tx;
  v19 = NSStringFromCGAffineTransform(&transform);
  return [v3 stringWithFormat:@"<%@ %p type=%@ gridRange=%@ transformToDevice=%@ tableOffset=%@ invalidFlags=%d>", v5, self, v7, v17, v19, NSStringFromCGPoint(self->mTableOffset), self->mInvalidFlags.coordinates];
}

- (void)lockForRead
{
  v2 = pthread_rwlock_rdlock(&self->mLock);
  if (v2)
  {
    v3 = v2;
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayoutSpace lockForRead]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 287, @"Unable to lock layout space for reading: %d", v3}];
  }
}

- (void)lockForWrite
{
  v2 = pthread_rwlock_wrlock(&self->mLock);
  if (v2)
  {
    v3 = v2;
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayoutSpace lockForWrite]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 311, @"Unable to lock layout space for writing: %d", v3}];
  }
}

- (void)unlock
{
  v2 = pthread_rwlock_unlock(&self->mLock);
  if (v2)
  {
    v3 = v2;
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayoutSpace unlock]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 321, @"Unable to unlock layout space: %d", v3}];
  }
}

- (void)invalidateCoordinates
{
  [(TSTLayoutSpace *)self lockForWrite];
  self->mInvalidFlags.coordinates = 1;

  [(TSTLayoutSpace *)self unlock];
}

- (void)invalidateTableOffset
{
  [(TSTLayoutSpace *)self lockForWrite];
  self->mInvalidFlags.tableOffset = 1;

  [(TSTLayoutSpace *)self unlock];
}

- (int)validate:(id)validate
{
  if (!self->mInvalidFlags.tableOffset && !self->mInvalidFlags.coordinates)
  {
    return 0;
  }

  [(TSTLayoutSpace *)self lockForWrite];
  self->mLayoutDirectionIsLeftToRight = [(TSTLayoutSpace *)self p_getLayoutDirectionLeftToRight];
  [(TSTLayoutSpace *)self validateCachedFrames];
  v5 = [(TSTLayoutSpace *)self validateCoordinateCache:validate];
  v6 = [(TSTLayoutSpace *)self validateTableOffset:validate]| v5;
  [(TSTLayoutSpace *)self unlock];
  return v6;
}

- (int)validateTableOffset:(id)offset
{
  if (!self->mInvalidFlags.tableOffset)
  {
    return 0;
  }

  if (offset)
  {
    [offset tableOffset];
    v5 = v4;
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v5 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
    topLeft = self->mGridRange.topLeft;
    bottomRight = self->mGridRange.bottomRight;
    v12 = topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column;
    v13 = HIDWORD(*&topLeft);
    v14 = HIDWORD(*&bottomRight);
    if (!v12 && v13 != 0xFFFFFFFF && v14 != 0xFFFFFFFF && v13 <= v14)
    {
      Range = TSTLayoutSpaceGetRange(self);
      v19 = TSTMasterLayoutStrokeHeightOfGridRow([(TSTLayoutSpace *)self masterLayout], Range, 0, 0xFFFFFFFF);
      v5 = -floor(v5 - TSTMasterLayoutStrokeWidthOfGridColumn([(TSTLayoutSpace *)self masterLayout], BYTE2(Range), 0, 0xFFFFFFFF) * 0.5 + -1.0 + 0.00000011920929);
      TSTLayoutGetTableNameHeight([(TSTLayoutSpace *)self layout]);
      v7 = v20 - floor(v7 - v19 * 0.5 + -1.0 + 0.00000011920929);
    }

    [(TSTLayoutSpace *)self tableOffset];
    if (v22 == v7 && v21 == v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = 3;
    }
  }

  [(TSTLayoutSpace *)self setTableOffset:v5, v7];
  self->mInvalidFlags.tableOffset = 0;
  return v8;
}

- (void)setTransformToCanvas:(CGAffineTransform *)canvas
{
  v4 = *&canvas->a;
  v5 = *&canvas->c;
  *&self->mTransformToCanvas.tx = *&canvas->tx;
  *&self->mTransformToCanvas.c = v5;
  *&self->mTransformToCanvas.a = v4;
  v6 = *&canvas->c;
  *&v8.a = *&canvas->a;
  *&v8.c = v6;
  *&v8.tx = *&canvas->tx;
  CGAffineTransformInvert(&v9, &v8);
  v7 = *&v9.c;
  *&self->mTransformFromCanvas.a = *&v9.a;
  *&self->mTransformFromCanvas.c = v7;
  *&self->mTransformFromCanvas.tx = *&v9.tx;
}

- (void)setViewScale:(double)scale
{
  if (self->mViewScale != scale)
  {
    self->mViewScale = scale;
    self->mInvalidFlags.tableOffset = 1;
  }
}

- (void)validateCachedFrames
{
  if (self->mInvalidFlags.coordinates || self->mInvalidFlags.tableOffset)
  {
    v2 = *MEMORY[0x277CBF3A0];
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    self->mCachedFrame.origin = *MEMORY[0x277CBF3A0];
    self->mCachedFrame.size = v3;
    self->mCachedAlignedFrame.origin = v2;
    self->mCachedAlignedFrame.size = v3;
    self->mCachedStrokeFrame.origin = v2;
    self->mCachedStrokeFrame.size = v3;
    self->mCachedAlignedStrokeFrame.origin = v2;
    self->mCachedAlignedStrokeFrame.size = v3;
  }
}

- (int)validateCoordinateCache:(id)cache
{
  result = 0;
  v31 = 0;
  if (!self->mInvalidFlags.coordinates)
  {
    return result;
  }

  if ((self->mLayoutSpaceType - 1) > 5)
  {
    TopLeftCornerGridRange = TSTLayoutSpaceGetTopLeftCornerGridRange(self);
    v12 = TopLeftCornerGridRange;
    if (TopLeftCornerGridRange == -1 || (v13 = v11, v11 == -1) || TopLeftCornerGridRange > v11 || HIDWORD(TopLeftCornerGridRange) == 0xFFFFFFFF || HIDWORD(v11) == 0xFFFFFFFF || HIDWORD(TopLeftCornerGridRange) > HIDWORD(v11))
    {
      HeaderColumnsGridRange = TSTLayoutSpaceGetHeaderColumnsGridRange(self);
      RowCoordinates = 0;
      if (HeaderColumnsGridRange != -1 && v15 != -1 && HeaderColumnsGridRange <= v15)
      {
        RowCoordinates = 0;
        if (HIDWORD(HeaderColumnsGridRange) != 0xFFFFFFFF && HIDWORD(v15) != 0xFFFFFFFF && HIDWORD(HeaderColumnsGridRange) <= HIDWORD(v15))
        {
          RowCoordinates = TSTLayoutSpaceCreateRowCoordinates(self, HeaderColumnsGridRange, v15, self->mHeaderColumnRowCoordinates, &v31);
        }
      }

      HeaderRowsGridRange = TSTLayoutSpaceGetHeaderRowsGridRange(self);
      v12 = HeaderRowsGridRange;
      ColumnCoordinates = 0;
      if (HeaderRowsGridRange == -1)
      {
        goto LABEL_25;
      }

      v13 = v17;
      if (v17 == -1)
      {
        goto LABEL_25;
      }

      if (HeaderRowsGridRange > v17)
      {
        goto LABEL_25;
      }

      ColumnCoordinates = 0;
      if (HIDWORD(HeaderRowsGridRange) == 0xFFFFFFFF || HIDWORD(v17) == 0xFFFFFFFF || HIDWORD(HeaderRowsGridRange) > HIDWORD(v17))
      {
        goto LABEL_25;
      }
    }

    else
    {
      RowCoordinates = TSTLayoutSpaceCreateRowCoordinates(self, TopLeftCornerGridRange, v11, self->mHeaderColumnRowCoordinates, &v31);
    }

    ColumnCoordinates = TSTLayoutSpaceCreateColumnCoordinates(self, v12, v13, self->mHeaderRowColumnCoordinates, &v31 + 1);
LABEL_25:
    ExtendedBodyGridRange = TSTLayoutSpaceGetExtendedBodyGridRange(self);
    v20 = ExtendedBodyGridRange;
    v8 = 0;
    if (ExtendedBodyGridRange == -1 || (v21 = v19, v19 == -1) || ExtendedBodyGridRange > v19 || (v8 = 0, HIDWORD(ExtendedBodyGridRange) == 0xFFFFFFFF) || HIDWORD(v19) == 0xFFFFFFFF || HIDWORD(ExtendedBodyGridRange) > HIDWORD(v19))
    {
      v9 = 0;
    }

    else
    {
      v9 = TSTLayoutSpaceCreateColumnCoordinates(self, ExtendedBodyGridRange, v19, self->mBodyColumnCoordinates, &v31 + 1);
      v8 = TSTLayoutSpaceCreateRowCoordinates(self, v20, v21, self->mBodyRowCoordinates, &v31);
    }

    goto LABEL_33;
  }

  RowCoordinates = TSTLayoutSpaceCreateRowCoordinates(self, *&self->mGridRange.topLeft, *&self->mGridRange.bottomRight, self->mHeaderColumnRowCoordinates, &v31);
  ColumnCoordinates = TSTLayoutSpaceCreateColumnCoordinates(self, *&self->mGridRange.topLeft, *&self->mGridRange.bottomRight, self->mHeaderRowColumnCoordinates, &v31 + 1);
  v8 = 0;
  v9 = 0;
LABEL_33:

  self->mHeaderRowColumnCoordinates = 0;
  self->mBodyColumnCoordinates = 0;

  self->mHeaderColumnRowCoordinates = 0;
  self->mBodyRowCoordinates = 0;
  if (!self->mLayoutDirectionIsLeftToRight)
  {
    if (v9)
    {
      TSTLayoutSpaceGetExtendedBodyGridRange(self);
      bottomRight.column = v22;
      v24 = v9;
    }

    else
    {
      bottomRight = self->mGridRange.bottomRight;
      if (ColumnCoordinates)
      {
        v24 = ColumnCoordinates;
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayoutSpace validateCoordinateCache:]"];
        [currentHandler handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 3121, @"There are no column coordinates"}];
        v24 = 0;
      }
    }

    isMain = [(TSTLayoutSpace *)self isMain];
    if (!cache || isMain)
    {
      Coordinate = TSTCoordinateArrayGetCoordinate(v24, bottomRight.column + 1);
    }

    else
    {
      Coordinate = TSTLayoutSpaceGetRawTableCoordinateForGridColumn(cache, (*(cache + 8) + 1));
    }

    v29 = Coordinate;
    if (v9)
    {
      [(TSTCoordinateArray *)v9 hasRightToLeftOrderingWithWidth:Coordinate];
    }

    if (ColumnCoordinates)
    {
      [(TSTCoordinateArray *)ColumnCoordinates hasRightToLeftOrderingWithWidth:v29];
    }
  }

  self->mHeaderRowColumnCoordinates = ColumnCoordinates;
  self->mBodyColumnCoordinates = v9;
  self->mHeaderColumnRowCoordinates = RowCoordinates;
  self->mBodyRowCoordinates = v8;
  self->mInvalidFlags.coordinates = 0;
  if (v31)
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  return v30 | HIBYTE(v31);
}

- (CGAffineTransform)transformToCanvas
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

- (CGAffineTransform)transformFromCanvas
{
  v3 = *&self[2].d;
  *&retstr->a = *&self[2].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].ty;
  return self;
}

- (void)setTransformFromCanvas:(CGAffineTransform *)canvas
{
  v3 = *&canvas->a;
  v4 = *&canvas->c;
  *&self->mTransformFromCanvas.tx = *&canvas->tx;
  *&self->mTransformFromCanvas.c = v4;
  *&self->mTransformFromCanvas.a = v3;
}

- (CGAffineTransform)transformToDevice
{
  v3 = *&self[3].d;
  *&retstr->a = *&self[3].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].ty;
  return self;
}

- (void)setTransformToDevice:(CGAffineTransform *)device
{
  v3 = *&device->a;
  v4 = *&device->c;
  *&self->mTransformToDevice.tx = *&device->tx;
  *&self->mTransformToDevice.c = v4;
  *&self->mTransformToDevice.a = v3;
}

- (CGAffineTransform)transformFromDevice
{
  v3 = *&self[4].d;
  *&retstr->a = *&self[4].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].ty;
  return self;
}

- (void)setTransformFromDevice:(CGAffineTransform *)device
{
  v3 = *&device->a;
  v4 = *&device->c;
  *&self->mTransformFromDevice.tx = *&device->tx;
  *&self->mTransformFromDevice.c = v4;
  *&self->mTransformFromDevice.a = v3;
}

- (CGPoint)tableOffset
{
  x = self->mTableOffset.x;
  y = self->mTableOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end