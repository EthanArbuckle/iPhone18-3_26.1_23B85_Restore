@interface PUBadgeTileLayoutInfo
- (BOOL)isGeometryEqualToLayoutInfo:(id)a3;
- (PUBadgeTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 coordinateSystem:(id)a9;
- (PUBadgeTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 hitTestOutset:(UIEdgeInsets)a9 coordinateSystem:(id)a10 isOverContent:(BOOL)a11 contentWidth:(double)a12 leadingContentWidth:(double)a13;
- (id)clone;
@end

@implementation PUBadgeTileLayoutInfo

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v30 = v6;
  v31 = v5;
  [(PUTileLayoutInfo *)self size];
  v29 = v7;
  v9 = v8;
  [(PUTileLayoutInfo *)self alpha];
  v11 = v10;
  [(PUTileLayoutInfo *)self transform];
  [(PUTileLayoutInfo *)self zPosition];
  v13 = v12;
  [(PUTileLayoutInfo *)self hitTestOutset];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(PUTileLayoutInfo *)self coordinateSystem];
  v23 = [(PUBadgeTileLayoutInfo *)self isOverContent];
  [(PUBadgeTileLayoutInfo *)self contentWidth];
  v25 = v24;
  [(PUBadgeTileLayoutInfo *)self leadingContentWidth];
  v27 = [v3 initWithTileIdentifier:v4 center:v32 size:v22 alpha:v23 transform:v31 zPosition:v30 hitTestOutset:v29 coordinateSystem:v9 isOverContent:v11 contentWidth:v13 leadingContentWidth:{v15, v17, v19, v21, v25, v26}];

  return v27;
}

- (BOOL)isGeometryEqualToLayoutInfo:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PUBadgeTileLayoutInfo;
  if (-[PUTileLayoutInfo isGeometryEqualToLayoutInfo:](&v12, sel_isGeometryEqualToLayoutInfo_, v4) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (isOverContent = self->_isOverContent, isOverContent == [v4 isOverContent]) && (contentWidth = self->_contentWidth, objc_msgSend(v4, "contentWidth"), contentWidth == v7))
  {
    leadingContentWidth = self->_leadingContentWidth;
    [v4 leadingContentWidth];
    v10 = leadingContentWidth == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PUBadgeTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 hitTestOutset:(UIEdgeInsets)a9 coordinateSystem:(id)a10 isOverContent:(BOOL)a11 contentWidth:(double)a12 leadingContentWidth:(double)a13
{
  v17.receiver = self;
  v17.super_class = PUBadgeTileLayoutInfo;
  v14 = *&a7->c;
  v16[0] = *&a7->a;
  v16[1] = v14;
  v16[2] = *&a7->tx;
  result = [(PUTileLayoutInfo *)&v17 initWithTileIdentifier:a3 center:0 size:0 alpha:0 cornerRadius:v16 cornerCurve:a10 cornerMask:a4.x borderWidth:a4.y borderColor:a5.width transform:a5.height zPosition:a6 contentsRect:0.0 hitTestOutset:0.0 coordinateSystem:a8 cropInsets:*MEMORY[0x1E69C48E0] normalizedLegibilityInsets:*(MEMORY[0x1E69C48E0] + 8), *(MEMORY[0x1E69C48E0] + 16), *(MEMORY[0x1E69C48E0] + 24), *&a9.top, *&a9.left, *&a9.bottom, *&a9.right, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  if (result)
  {
    result->_isOverContent = a11;
    result->_contentWidth = a12;
    result->_leadingContentWidth = a13;
  }

  return result;
}

- (PUBadgeTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 coordinateSystem:(id)a9
{
  v9 = *&a7->c;
  v11[0] = *&a7->a;
  v11[1] = v9;
  v11[2] = *&a7->tx;
  return [(PUBadgeTileLayoutInfo *)self initWithTileIdentifier:a3 center:v11 size:a9 alpha:0 transform:a4.x zPosition:a4.y hitTestOutset:a5.width coordinateSystem:a5.height isOverContent:a6 contentWidth:a8 leadingContentWidth:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), 0, 0];
}

@end