@interface PUBadgeTileLayoutInfo
- (BOOL)isGeometryEqualToLayoutInfo:(id)info;
- (PUBadgeTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)system;
- (PUBadgeTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position hitTestOutset:(UIEdgeInsets)outset coordinateSystem:(id)self0 isOverContent:(BOOL)self1 contentWidth:(double)self2 leadingContentWidth:(double)self3;
- (id)clone;
@end

@implementation PUBadgeTileLayoutInfo

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
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
  coordinateSystem = [(PUTileLayoutInfo *)self coordinateSystem];
  isOverContent = [(PUBadgeTileLayoutInfo *)self isOverContent];
  [(PUBadgeTileLayoutInfo *)self contentWidth];
  v25 = v24;
  [(PUBadgeTileLayoutInfo *)self leadingContentWidth];
  v27 = [v3 initWithTileIdentifier:tileIdentifier center:v32 size:coordinateSystem alpha:isOverContent transform:v31 zPosition:v30 hitTestOutset:v29 coordinateSystem:v9 isOverContent:v11 contentWidth:v13 leadingContentWidth:{v15, v17, v19, v21, v25, v26}];

  return v27;
}

- (BOOL)isGeometryEqualToLayoutInfo:(id)info
{
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = PUBadgeTileLayoutInfo;
  if (-[PUTileLayoutInfo isGeometryEqualToLayoutInfo:](&v12, sel_isGeometryEqualToLayoutInfo_, infoCopy) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (isOverContent = self->_isOverContent, isOverContent == [infoCopy isOverContent]) && (contentWidth = self->_contentWidth, objc_msgSend(infoCopy, "contentWidth"), contentWidth == v7))
  {
    leadingContentWidth = self->_leadingContentWidth;
    [infoCopy leadingContentWidth];
    v10 = leadingContentWidth == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PUBadgeTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position hitTestOutset:(UIEdgeInsets)outset coordinateSystem:(id)self0 isOverContent:(BOOL)self1 contentWidth:(double)self2 leadingContentWidth:(double)self3
{
  v17.receiver = self;
  v17.super_class = PUBadgeTileLayoutInfo;
  v14 = *&transform->c;
  v16[0] = *&transform->a;
  v16[1] = v14;
  v16[2] = *&transform->tx;
  result = [(PUTileLayoutInfo *)&v17 initWithTileIdentifier:identifier center:0 size:0 alpha:0 cornerRadius:v16 cornerCurve:system cornerMask:center.x borderWidth:center.y borderColor:size.width transform:size.height zPosition:alpha contentsRect:0.0 hitTestOutset:0.0 coordinateSystem:position cropInsets:*MEMORY[0x1E69C48E0] normalizedLegibilityInsets:*(MEMORY[0x1E69C48E0] + 8), *(MEMORY[0x1E69C48E0] + 16), *(MEMORY[0x1E69C48E0] + 24), *&outset.top, *&outset.left, *&outset.bottom, *&outset.right, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  if (result)
  {
    result->_isOverContent = content;
    result->_contentWidth = width;
    result->_leadingContentWidth = contentWidth;
  }

  return result;
}

- (PUBadgeTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)system
{
  v9 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v9;
  v11[2] = *&transform->tx;
  return [(PUBadgeTileLayoutInfo *)self initWithTileIdentifier:identifier center:v11 size:system alpha:0 transform:center.x zPosition:center.y hitTestOutset:size.width coordinateSystem:size.height isOverContent:alpha contentWidth:position leadingContentWidth:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), 0, 0];
}

@end