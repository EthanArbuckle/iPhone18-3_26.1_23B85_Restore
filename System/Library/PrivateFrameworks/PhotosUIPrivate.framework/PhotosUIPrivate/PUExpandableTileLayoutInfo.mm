@interface PUExpandableTileLayoutInfo
- (BOOL)isGeometryEqualToLayoutInfo:(id)info;
- (CGSize)expandedSize;
- (CGSize)unexpandedSize;
- (PUExpandableTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size cornerRadius:(double)radius alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)self0;
- (PUExpandableTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size cornerRadius:(double)radius alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)self0 isExpanded:(BOOL)self1 expandedSize:(CGSize)self2 unexpandedSize:(CGSize)self3;
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

- (BOOL)isGeometryEqualToLayoutInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = PUExpandableTileLayoutInfo;
  if (-[PUTileLayoutInfo isGeometryEqualToLayoutInfo:](&v14, sel_isGeometryEqualToLayoutInfo_, infoCopy) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (([infoCopy expandedSize], self->_expandedSize.width == v6) ? (v7 = self->_expandedSize.height == v5) : (v7 = 0), v7 && ((objc_msgSend(infoCopy, "unexpandedSize"), self->_unexpandedSize.width == v9) ? (v10 = self->_unexpandedSize.height == v8) : (v10 = 0), v10)))
  {
    isExpanded = self->_isExpanded;
    v11 = isExpanded == [infoCopy isExpanded];
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
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
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
  coordinateSystem = [(PUTileLayoutInfo *)self coordinateSystem];
  isExpanded = [(PUExpandableTileLayoutInfo *)self isExpanded];
  [(PUExpandableTileLayoutInfo *)self expandedSize];
  v21 = v20;
  v23 = v22;
  [(PUExpandableTileLayoutInfo *)self unexpandedSize];
  v26 = [v3 initWithTileIdentifier:tileIdentifier center:v29 size:coordinateSystem cornerRadius:isExpanded alpha:v28 transform:v7 zPosition:v9 coordinateSystem:v11 isExpanded:v13 expandedSize:v15 unexpandedSize:{v17, v21, v23, v24, v25}];

  return v26;
}

- (PUExpandableTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size cornerRadius:(double)radius alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)self0 isExpanded:(BOOL)self1 expandedSize:(CGSize)self2 unexpandedSize:(CGSize)self3
{
  v14 = *MEMORY[0x1E69796E0];
  v18.receiver = self;
  v18.super_class = PUExpandableTileLayoutInfo;
  v15 = *&transform->c;
  v17[0] = *&transform->a;
  v17[1] = v15;
  v17[2] = *&transform->tx;
  result = [(PUTileLayoutInfo *)&v18 initWithTileIdentifier:identifier center:v14 size:15 alpha:v17 cornerRadius:system cornerCurve:*&unexpandedSize.height cornerMask:center.x transform:center.y zPosition:size.width contentsRect:size.height coordinateSystem:alpha, radius, position, *MEMORY[0x1E69C48E0], *(MEMORY[0x1E69C48E0] + 8), *(MEMORY[0x1E69C48E0] + 16), *(MEMORY[0x1E69C48E0] + 24)];
  if (result)
  {
    result->_isExpanded = expanded;
    result->_unexpandedSize.width = v19;
    result->_unexpandedSize.height = v20;
    result->_expandedSize = expandedSize;
  }

  return result;
}

- (PUExpandableTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size cornerRadius:(double)radius alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)self0
{
  v10 = *&transform->c;
  v12[0] = *&transform->a;
  v12[1] = v10;
  v12[2] = *&transform->tx;
  return [(PUExpandableTileLayoutInfo *)self initWithTileIdentifier:identifier center:v12 size:system cornerRadius:0 alpha:center.x transform:center.y zPosition:size.width coordinateSystem:size.height isExpanded:radius expandedSize:alpha unexpandedSize:position, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
}

@end