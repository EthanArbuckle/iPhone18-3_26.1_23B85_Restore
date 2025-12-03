@interface PXLayoutSnapshot
- (CGRect)contentRect;
- (PXLayoutSnapshot)initWithContentRect:(CGRect)rect;
- (_PXLayoutGeometry)geometryForItem:(SEL)item;
- (id)description;
- (void)enumerateGeometriesForItemsInRect:(CGRect)rect usingBlock:(id)block;
@end

@implementation PXLayoutSnapshot

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)enumerateGeometriesForItemsInRect:(CGRect)rect usingBlock:(id)block
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLayoutSnapshot.m" lineNumber:41 description:@"-enumerateGeometriesForItemsInRect:usingBlock: must be overidden"];
}

- (_PXLayoutGeometry)geometryForItem:(SEL)item
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:item object:self file:@"PXLayoutSnapshot.m" lineNumber:36 description:@"-geometryForItem: must be overidden"];

  retstr->var7.height = 0.0;
  *&retstr->var5 = xmmword_1B4075480;
  *&retstr->var6.origin.y = unk_1B4075490;
  *&retstr->var6.size.height = xmmword_1B40754A0;
  *&retstr->var2.height = xmmword_1B4075440;
  *&retstr->var3.b = unk_1B4075450;
  *&retstr->var3.d = xmmword_1B4075460;
  *&retstr->var3.ty = unk_1B4075470;
  *&retstr->var0 = PXLayoutGeometryNull;
  *&retstr->var1.y = *algn_1B4075430;
  return result;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PXLayoutSnapshot;
  v3 = [(PXLayoutSnapshot *)&v7 description];
  [(PXLayoutSnapshot *)self contentRect];
  v4 = NSStringFromCGRect(v9);
  v5 = [v3 stringByAppendingFormat:@"contentRect:%@", v4];

  return v5;
}

- (PXLayoutSnapshot)initWithContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = PXLayoutSnapshot;
  result = [(PXLayoutSnapshot *)&v8 init];
  if (result)
  {
    result->_contentRect.origin.x = x;
    result->_contentRect.origin.y = y;
    result->_contentRect.size.width = width;
    result->_contentRect.size.height = height;
  }

  return result;
}

@end