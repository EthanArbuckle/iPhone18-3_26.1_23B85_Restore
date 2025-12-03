@interface _UICachedBoundingPathBitmapDataReferenceCorner
+ (id)cachedReferenceCornerForRadius:(int64_t)radius;
- (_UIBoundingPathBitmapDataCorner)referenceCornerCopy;
- (_UICachedBoundingPathBitmapDataReferenceCorner)initWithCoder:(id)coder;
- (_UICachedBoundingPathBitmapDataReferenceCorner)initWithReferenceCorner:(_UIBoundingPathBitmapDataCorner *)corner;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UICachedBoundingPathBitmapDataReferenceCorner

+ (id)cachedReferenceCornerForRadius:(int64_t)radius
{
  v4 = __cachedReferenceCornersByRadius;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    if (!__cachedReferenceCornersByRadius)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      v8 = __cachedReferenceCornersByRadius;
      __cachedReferenceCornersByRadius = v7;
    }

    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    _UIBoundingPathBitmapDataCreateReferenceCornerWithRadius(radius, &v14);
    v9 = [_UICachedBoundingPathBitmapDataReferenceCorner alloc];
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    v6 = [(_UICachedBoundingPathBitmapDataReferenceCorner *)v9 initWithReferenceCorner:v13];
    v10 = __cachedReferenceCornersByRadius;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:radius];
    [v10 setObject:v6 forKey:v11];
  }

  return v6;
}

- (_UICachedBoundingPathBitmapDataReferenceCorner)initWithReferenceCorner:(_UIBoundingPathBitmapDataCorner *)corner
{
  v12.receiver = self;
  v12.super_class = _UICachedBoundingPathBitmapDataReferenceCorner;
  v5 = [(_UICachedBoundingPathBitmapDataReferenceCorner *)&v12 init];
  if (v5)
  {
    if (corner->location)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"_UIBoundingPathBitmapDataCornerCache.m" lineNumber:161 description:{@"%@ should only be used to cache reference corners", v11}];
    }

    v6 = *&corner->location;
    v7 = *&corner->size;
    *(v5 + 40) = *&corner->referenceEdgePositionsByRow;
    *(v5 + 24) = v7;
    *(v5 + 8) = v6;
  }

  return v5;
}

- (_UICachedBoundingPathBitmapDataReferenceCorner)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"radius"];
  v6 = [coderCopy decodeIntegerForKey:@"size"];
  v7 = [coderCopy decodeBoolForKey:@"edgePositionsUseLargeValues"];
  v8 = v6 << v7;
  if (v6 << v7)
  {
    v23[0] = 0;
    v9 = [coderCopy decodeBytesForKey:@"referenceEdgePositionsByRow" returnedLength:v23];
    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIBoundingPathBitmapDataCorner _decodeReferenceCornerFromCoder(NSCoder *__strong)"];
      [currentHandler handleFailureInFunction:v16 file:@"_UIBoundingPathBitmapDataCornerCache.m" lineNumber:110 description:@"Failed to decode the bitmap data corner: decoded row bytes are NULL"];
    }

    if (v23[0] != v8)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIBoundingPathBitmapDataCorner _decodeReferenceCornerFromCoder(NSCoder *__strong)"];
      [currentHandler2 handleFailureInFunction:v18 file:@"_UIBoundingPathBitmapDataCornerCache.m" lineNumber:111 description:{@"Failed to decode the bitmap data corner: decoded row bytes length (%ld) does not equal expected length (%ld)", v23[0], v8}];
    }

    HostReferenceEdgePositionsFromDecodedStandardizedEndiannessByteArray = _allocateHostReferenceEdgePositionsFromDecodedStandardizedEndiannessByteArray(v9, v6, v7);
    v11 = HostReferenceEdgePositionsFromDecodedStandardizedEndiannessByteArray;
    if ([coderCopy containsValueForKey:@"referenceEdgePositionsByCol"])
    {
      v28 = 0;
      v12 = [coderCopy decodeBytesForKey:@"referenceEdgePositionsByCol" returnedLength:&v28];
      if (!v12)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIBoundingPathBitmapDataCorner _decodeReferenceCornerFromCoder(NSCoder *__strong)"];
        [currentHandler3 handleFailureInFunction:v20 file:@"_UIBoundingPathBitmapDataCornerCache.m" lineNumber:119 description:@"Failed to decode the bitmap data corner: decoded col bytes are NULL"];
      }

      if (v28 != v8)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIBoundingPathBitmapDataCorner _decodeReferenceCornerFromCoder(NSCoder *__strong)"];
        [currentHandler4 handleFailureInFunction:v22 file:@"_UIBoundingPathBitmapDataCornerCache.m" lineNumber:120 description:{@"Failed to decode the bitmap data corner: decoded col bytes length (%ld) does not equal expected length (%ld)", v28, v8}];
      }

      v11 = _allocateHostReferenceEdgePositionsFromDecodedStandardizedEndiannessByteArray(v12, v6, v7);
    }
  }

  else
  {
    v11 = 0;
    HostReferenceEdgePositionsFromDecodedStandardizedEndiannessByteArray = 0;
  }

  v23[0] = 0;
  v23[1] = v5;
  v23[2] = v6;
  v24 = v7;
  memset(v25, 0, sizeof(v25));
  v26 = HostReferenceEdgePositionsFromDecodedStandardizedEndiannessByteArray;
  v27 = v11;
  v13 = [(_UICachedBoundingPathBitmapDataReferenceCorner *)self initWithReferenceCorner:v23];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = self->_referenceCorner.location;
  radius = self->_referenceCorner.radius;
  size = self->_referenceCorner.size;
  edgePositionsUseLargeValues = self->_referenceCorner.edgePositionsUseLargeValues;
  referenceEdgePositionsByRow = self->_referenceCorner.referenceEdgePositionsByRow;
  referenceEdgePositionsByCol = self->_referenceCorner.referenceEdgePositionsByCol;
  v11 = coderCopy;
  v17 = v11;
  if (location)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _encodeReferenceCornerWithCoder(const _UIBoundingPathBitmapDataCorner, NSCoder *__strong)"}];
    [currentHandler handleFailureInFunction:v16 file:@"_UIBoundingPathBitmapDataCornerCache.m" lineNumber:130 description:@"Only reference corners can be encoded as data."];

    v11 = v17;
  }

  [v11 encodeInteger:radius forKey:@"radius"];
  [v17 encodeInteger:size forKey:@"size"];
  [v17 encodeBool:edgePositionsUseLargeValues & 1 forKey:@"edgePositionsUseLargeValues"];
  v12 = size << edgePositionsUseLargeValues;
  if (size << edgePositionsUseLargeValues)
  {
    StandardizedEndiannessByteArrayForEncodingHostReferenceEdgePositions = _allocateStandardizedEndiannessByteArrayForEncodingHostReferenceEdgePositions(referenceEdgePositionsByRow, size, edgePositionsUseLargeValues & 1);
    [v17 encodeBytes:StandardizedEndiannessByteArrayForEncodingHostReferenceEdgePositions length:size << edgePositionsUseLargeValues forKey:@"referenceEdgePositionsByRow"];
    free(StandardizedEndiannessByteArrayForEncodingHostReferenceEdgePositions);
    if (referenceEdgePositionsByRow != referenceEdgePositionsByCol)
    {
      v14 = _allocateStandardizedEndiannessByteArrayForEncodingHostReferenceEdgePositions(referenceEdgePositionsByCol, size, edgePositionsUseLargeValues & 1);
      [v17 encodeBytes:v14 length:v12 forKey:@"referenceEdgePositionsByCol"];
      free(v14);
    }
  }
}

- (_UIBoundingPathBitmapDataCorner)referenceCornerCopy
{
  v4 = *&self->radius;
  v5 = *&self->edgePositionsUseLargeValues;
  referenceEdgePositionsByRow = self->referenceEdgePositionsByRow;
  if (v5 << referenceEdgePositionsByRow)
  {
    v11 = *&self->radius;
    referenceEdgePositionsByCol = self->referenceEdgePositionsByCol;
    location = self[1].location;
    v9 = malloc_type_malloc(v5 << referenceEdgePositionsByRow, 0xFBA22C5EuLL);
    self = memcpy(v9, referenceEdgePositionsByCol, v5 << referenceEdgePositionsByRow);
    if (referenceEdgePositionsByCol == location)
    {
      v10 = v9;
    }

    else
    {
      v10 = malloc_type_malloc(v5 << referenceEdgePositionsByRow, 0xF76C1732uLL);
      self = memcpy(v10, location, v5 << referenceEdgePositionsByRow);
    }

    v4 = v11;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  *&retstr->location = v4;
  retstr->size = v5;
  retstr->edgePositionsUseLargeValues = referenceEdgePositionsByRow;
  retstr->referenceEdgePositionsByRow = v9;
  retstr->referenceEdgePositionsByCol = v10;
  return self;
}

- (void)dealloc
{
  v3 = *&self->_referenceCorner.size;
  v5[0] = *&self->_referenceCorner.location;
  v5[1] = v3;
  v5[2] = *&self->_referenceCorner.referenceEdgePositionsByRow;
  _UIBoundingPathBitmapDataDestroyCorner(v5);
  v4.receiver = self;
  v4.super_class = _UICachedBoundingPathBitmapDataReferenceCorner;
  [(_UICachedBoundingPathBitmapDataReferenceCorner *)&v4 dealloc];
}

@end