@interface PUExpandableTileLayoutInfo
- (BOOL)isGeometryEqualToLayoutInfo:(id)a3;
- (CGSize)expandedSize;
- (CGSize)unexpandedSize;
- (PUExpandableTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 cornerRadius:(double)a6 alpha:(double)a7 transform:(CGAffineTransform *)a8 zPosition:(double)a9 coordinateSystem:(id)a10;
- (PUExpandableTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 cornerRadius:(double)a6 alpha:(double)a7 transform:(CGAffineTransform *)a8 zPosition:(double)a9 coordinateSystem:(id)a10 isExpanded:(BOOL)a11 expandedSize:(CGSize)a12 unexpandedSize:(CGSize)a13;
- (id)clone;
@end

@implementation PUExpandableTileLayoutInfo

- (CGSize)unexpandedSize
{
  width = self->_unexpandedSize.width;
  height = self->_unexpandedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)expandedSize
{
  width = self->_expandedSize.width;
  height = self->_expandedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isGeometryEqualToLayoutInfo:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PUExpandableTileLayoutInfo;
  if (-[PUTileLayoutInfo isGeometryEqualToLayoutInfo:](&v14, sel_isGeometryEqualToLayoutInfo_, v4) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (([v4 expandedSize], self->_expandedSize.width == v6) ? (v7 = self->_expandedSize.height == v5) : (v7 = 0), v7 && ((objc_msgSend(v4, "unexpandedSize"), self->_unexpandedSize.width == v9) ? (v10 = self->_unexpandedSize.height == v8) : (v10 = 0), v10)))
  {
    isExpanded = self->_isExpanded;
    v11 = isExpanded == [v4 isExpanded];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v28 = v5;
  v7 = v6;
  [(PUTileLayoutInfo *)self size];
  v9 = v8;
  v11 = v10;
  [(PUTileLayoutInfo *)self cornerRadius];
  v13 = v12;
  [(PUTileLayoutInfo *)self alpha];
  v15 = v14;
  [(PUTileLayoutInfo *)self transform];
  [(PUTileLayoutInfo *)self zPosition];
  v17 = v16;
  v18 = [(PUTileLayoutInfo *)self coordinateSystem];
  v19 = [(PUExpandableTileLayoutInfo *)self isExpanded];
  [(PUExpandableTileLayoutInfo *)self expandedSize];
  v21 = v20;
  v23 = v22;
  [(PUExpandableTileLayoutInfo *)self unexpandedSize];
  v26 = [v3 initWithTileIdentifier:v4 center:v29 size:v18 cornerRadius:v19 alpha:v28 transform:v7 zPosition:v9 coordinateSystem:v11 isExpanded:v13 expandedSize:v15 unexpandedSize:{v17, v21, v23, v24, v25}];

  return v26;
}

- (PUExpandableTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 cornerRadius:(double)a6 alpha:(double)a7 transform:(CGAffineTransform *)a8 zPosition:(double)a9 coordinateSystem:(id)a10 isExpanded:(BOOL)a11 expandedSize:(CGSize)a12 unexpandedSize:(CGSize)a13
{
  v14 = *MEMORY[0x1E69796E0];
  v18.receiver = self;
  v18.super_class = PUExpandableTileLayoutInfo;
  v15 = *&a8->c;
  v17[0] = *&a8->a;
  v17[1] = v15;
  v17[2] = *&a8->tx;
  result = [(PUTileLayoutInfo *)&v18 initWithTileIdentifier:a3 center:v14 size:15 alpha:v17 cornerRadius:a10 cornerCurve:*&a13.height cornerMask:a4.x transform:a4.y zPosition:a5.width contentsRect:a5.height coordinateSystem:a7, a6, a9, *MEMORY[0x1E69C48E0], *(MEMORY[0x1E69C48E0] + 8), *(MEMORY[0x1E69C48E0] + 16), *(MEMORY[0x1E69C48E0] + 24)];
  if (result)
  {
    result->_isExpanded = a11;
    result->_unexpandedSize.width = v19;
    result->_unexpandedSize.height = v20;
    result->_expandedSize = a12;
  }

  return result;
}

- (PUExpandableTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 cornerRadius:(double)a6 alpha:(double)a7 transform:(CGAffineTransform *)a8 zPosition:(double)a9 coordinateSystem:(id)a10
{
  v10 = *&a8->c;
  v12[0] = *&a8->a;
  v12[1] = v10;
  v12[2] = *&a8->tx;
  return [(PUExpandableTileLayoutInfo *)self initWithTileIdentifier:a3 center:v12 size:a10 cornerRadius:0 alpha:a4.x transform:a4.y zPosition:a5.width coordinateSystem:a5.height isExpanded:a6 expandedSize:a7 unexpandedSize:a9, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
}

@end