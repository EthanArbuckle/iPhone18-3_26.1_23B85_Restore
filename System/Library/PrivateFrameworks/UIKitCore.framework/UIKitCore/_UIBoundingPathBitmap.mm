@interface _UIBoundingPathBitmap
- (_UIBoundingPathBitmap)boundingPathBitmapWithRect:(_UIIntegralRect *)rect;
- (_UIBoundingPathBitmap)boundingPathBitmapWithRect:(_UIIntegralRect *)rect cornerRadii:(_UIIntegralCornerRadii *)radii;
- (_UIBoundingPathBitmap)initWithBitmapData:(_UIBoundingPathBitmapData *)data;
- (_UIBoundingPathBitmap)initWithCoder:(id)coder;
- (_UIBoundingPathBitmap)initWithSize:(_UIIntegralSize)size containsPoint:(id)point;
- (_UIBoundingPathBitmapData)bitmapData;
- (id)_imageRepresentation;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIBoundingPathBitmap

- (_UIBoundingPathBitmapData)bitmapData
{
  v3 = *&self->skipRegion.height;
  *&retstr->width = *&self->height;
  retstr->skipRegion = v3;
  *&retstr->nodeCount = *&self->maximumNodesPerRow;
  retstr->rows = self[1].width;
  return self;
}

- (_UIBoundingPathBitmap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"nodeCount"];
  v6 = [coderCopy decodeIntegerForKey:@"maximumNodesPerRow"];
  if (v5)
  {
    v23[0] = 0;
    v7 = [coderCopy decodeBytesForKey:@"rows" returnedLength:v23];
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIBoundingPathBitmapData decodeBitmapDataWithCoder(NSCoder *__strong)"];
      [currentHandler handleFailureInFunction:v17 file:@"_UIBoundingPathBitmap.m" lineNumber:70 description:@"Failed to decode the bitmap data: decoded bytes are NULL"];
    }

    if (v23[0] != 2 * v5)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIBoundingPathBitmapData decodeBitmapDataWithCoder(NSCoder *__strong)"];
      [currentHandler2 handleFailureInFunction:v19 file:@"_UIBoundingPathBitmap.m" lineNumber:71 description:{@"Failed to decode the bitmap data: decoded bytes length (%ld) does not equal expected length (%ld)", v23[0], 2 * v5}];
    }

    v8 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
    if (!v8)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataNode *_UIAllocateHostNodeArrayFromDecodedStandardizedEndiannessByteArray(const uint8_t *, const size_t)"}];
      [currentHandler3 handleFailureInFunction:v21 file:@"_UIBoundingPathBitmap.m" lineNumber:50 description:@"Failed to allocate memory for storing the bitmap data node array."];
    }

    memcpy(v8, v7, 2 * v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = [coderCopy decodeIntegerForKey:@"width"];
  v10 = [coderCopy decodeIntegerForKey:@"height"];
  v11 = [coderCopy decodeIntegerForKey:@"skipRegion.y"];
  v12 = [coderCopy decodeIntegerForKey:@"skipRegion.height"];
  if (v5 != (v10 - v12) * v6)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIBoundingPathBitmapData decodeBitmapDataWithCoder(NSCoder *__strong)"];
    [currentHandler4 handleFailureInFunction:v22 file:@"_UIBoundingPathBitmap.m" lineNumber:81 description:{@"Decoded bitmap data is malformed: width=%ld; height=%lu; skipRegionY=%lu; skipRegionHeight=%lu; nodeCount=%lu; maximumNodesPerRow=%lu", v9, v10, v11, v12, v5, v6}];
  }

  v23[0] = v9;
  v23[1] = v10;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v5;
  v23[5] = v6;
  v23[6] = v8;
  v13 = [(_UIBoundingPathBitmap *)self initWithBitmapData:v23];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_bitmapData.nodeCount forKey:@"nodeCount"];
  [coderCopy encodeInteger:self->_bitmapData.maximumNodesPerRow forKey:@"maximumNodesPerRow"];
  nodeCount = self->_bitmapData.nodeCount;
  if (nodeCount)
  {
    rows = self->_bitmapData.rows;
    v6 = 2 * nodeCount;
    v7 = malloc_type_malloc(2 * nodeCount, 0x1000040BDFB0063uLL);
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"uint8_t *_UIAllocateStandardizedEndiannessByteArrayForEncodingHostNodeArray(const _UIBoundingPathBitmapDataNode *, const size_t)"}];
      [currentHandler handleFailureInFunction:v9 file:@"_UIBoundingPathBitmap.m" lineNumber:34 description:@"Failed to allocate memory for encoding the bitmap data node array."];
    }

    memcpy(v7, rows, v6);
    [coderCopy encodeBytes:v7 length:2 * self->_bitmapData.nodeCount forKey:@"rows"];
    free(v7);
  }

  [coderCopy encodeInteger:self->_bitmapData.width forKey:@"width"];
  [coderCopy encodeInteger:self->_bitmapData.height forKey:@"height"];
  [coderCopy encodeInteger:self->_bitmapData.skipRegion.y forKey:@"skipRegion.y"];
  [coderCopy encodeInteger:self->_bitmapData.skipRegion.height forKey:@"skipRegion.height"];
}

- (_UIBoundingPathBitmap)initWithSize:(_UIIntegralSize)size containsPoint:(id)point
{
  var1 = size.var1;
  var0 = size.var0;
  pointCopy = point;
  v8 = _UIComputeSkipRegionForBoundingPathData(var0, var1, pointCopy);
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  _UICreateBoundingPathBitmapData(var0, var1, v8, v9, pointCopy, &v13);

  v11[0] = v13;
  v11[1] = v14;
  v11[2] = v15;
  v12 = v16;
  return [(_UIBoundingPathBitmap *)self initWithBitmapData:v11];
}

- (_UIBoundingPathBitmap)initWithBitmapData:(_UIBoundingPathBitmapData *)data
{
  v8.receiver = self;
  v8.super_class = _UIBoundingPathBitmap;
  result = [(_UIBoundingPathBitmap *)&v8 init];
  if (result)
  {
    v5 = *&data->width;
    skipRegion = data->skipRegion;
    v7 = *&data->nodeCount;
    result->_bitmapData.rows = data->rows;
    *&result->_bitmapData.nodeCount = v7;
    result->_bitmapData.skipRegion = skipRegion;
    *&result->_bitmapData.width = v5;
  }

  return result;
}

- (void)dealloc
{
  free(self->_bitmapData.rows);
  v3.receiver = self;
  v3.super_class = _UIBoundingPathBitmap;
  [(_UIBoundingPathBitmap *)&v3 dealloc];
}

- (_UIBoundingPathBitmap)boundingPathBitmapWithRect:(_UIIntegralRect *)rect
{
  memset(v7, 0, sizeof(v7));
  var1 = rect->var1;
  v6[0] = rect->var0;
  v6[1] = var1;
  v4 = [(_UIBoundingPathBitmap *)self boundingPathBitmapWithRect:v6 cornerRadii:v7];

  return v4;
}

- (_UIBoundingPathBitmap)boundingPathBitmapWithRect:(_UIIntegralRect *)rect cornerRadii:(_UIIntegralCornerRadii *)radii
{
  width = self->_bitmapData.width;
  height = self->_bitmapData.height;
  if (rect->var0.var0)
  {
    v6 = 0;
  }

  else
  {
    v6 = rect->var1.var0 == width;
  }

  v7 = v6 && rect->var0.var1 == 0;
  if (v7 && rect->var1.var1 == height && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&radii->var0), vceqzq_s64(*&radii->var2))))) & 1) == 0)
  {
    selfCopy = self;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0u;
    v20 = 0u;
    *&v16 = width;
    *(&v16 + 1) = height;
    v8 = *&self->_bitmapData.nodeCount;
    skipRegion = self->_bitmapData.skipRegion;
    v18 = v8;
    rows = self->_bitmapData.rows;
    var1 = rect->var1;
    v15[0] = rect->var0;
    v15[1] = var1;
    v10 = *&radii->var2;
    v14[0] = *&radii->var0;
    v14[1] = v10;
    _UIBoundingPathBitmapDataFromDataWithRectAndRadii(&v16, v15, v14, &v20);
    v11 = [_UIBoundingPathBitmap alloc];
    v16 = v20;
    skipRegion = v21;
    v18 = v22;
    rows = v23;
    selfCopy = [(_UIBoundingPathBitmap *)v11 initWithBitmapData:&v16];
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  skipRegion = self->_bitmapData.skipRegion;
  v9[0] = *&self->_bitmapData.width;
  v9[1] = skipRegion;
  v9[2] = *&self->_bitmapData.nodeCount;
  rows = self->_bitmapData.rows;
  v6 = _UIBoundingPathBitmapDataDescription(v9);
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (id)_imageRepresentation
{
  skipRegion = self->_bitmapData.skipRegion;
  v5[0] = *&self->_bitmapData.width;
  v5[1] = skipRegion;
  v5[2] = *&self->_bitmapData.nodeCount;
  rows = self->_bitmapData.rows;
  v3 = _UIBoundingPathBitmapDataImageRepresentation(v5);

  return v3;
}

@end