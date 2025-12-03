@interface PXLayoutGeometryArray
- (PXLayoutGeometryArray)initWithGeometries:(_PXLayoutGeometry *)geometries count:(unint64_t)count;
- (_PXLayoutGeometry)geometryAtIndex:(SEL)index;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation PXLayoutGeometryArray

- (_PXLayoutGeometry)geometryAtIndex:(SEL)index
{
  selfCopy = self;
  if (*&self->var1.y <= a4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:index object:selfCopy file:@"PXLayoutGeometryArray.m" lineNumber:48 description:{@"index %ld out of bounds", a4}];
  }

  v7 = *&selfCopy->var1.x + 152 * a4;
  v8 = *(v7 + 112);
  *&retstr->var5 = *(v7 + 96);
  *&retstr->var6.origin.y = v8;
  *&retstr->var6.size.height = *(v7 + 128);
  retstr->var7.height = *(v7 + 144);
  v9 = *(v7 + 48);
  *&retstr->var2.height = *(v7 + 32);
  *&retstr->var3.b = v9;
  v10 = *(v7 + 80);
  *&retstr->var3.d = *(v7 + 64);
  *&retstr->var3.ty = v10;
  v11 = *(v7 + 16);
  *&retstr->var0 = *v7;
  *&retstr->var1.y = v11;
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  geometries = self->_geometries;
  count = self->_count;

  return [v4 initWithGeometries:geometries count:count];
}

- (void)dealloc
{
  geometries = self->_geometries;
  if (geometries)
  {
    free(geometries);
    self->_geometries = 0;
  }

  v4.receiver = self;
  v4.super_class = PXLayoutGeometryArray;
  [(PXLayoutGeometryArray *)&v4 dealloc];
}

- (PXLayoutGeometryArray)initWithGeometries:(_PXLayoutGeometry *)geometries count:(unint64_t)count
{
  if (!geometries)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLayoutGeometryArray.m" lineNumber:23 description:@"geometries is NULL"];
  }

  v21.receiver = self;
  v21.super_class = PXLayoutGeometryArray;
  v7 = [(PXLayoutGeometryArray *)&v21 init];
  if (v7)
  {
    v7->_geometries = malloc_type_malloc(152 * count, 0x100004050011849uLL);
    if (count)
    {
      v8 = 0;
      countCopy = count;
      do
      {
        v10 = &v7->_geometries[v8];
        v11 = *&geometries[v8].var1.y;
        *&v10->var0 = *&geometries[v8].var0;
        *&v10->var1.y = v11;
        v12 = *&geometries[v8].var2.height;
        v13 = *&geometries[v8].var3.b;
        v14 = *&geometries[v8].var3.ty;
        *&v10->var3.d = *&geometries[v8].var3.d;
        *&v10->var3.ty = v14;
        *&v10->var2.height = v12;
        *&v10->var3.b = v13;
        v15 = *&geometries[v8].var5;
        v16 = *&geometries[v8].var6.origin.y;
        v17 = *&geometries[v8].var6.size.height;
        v10->var7.height = geometries[v8].var7.height;
        *&v10->var6.origin.y = v16;
        *&v10->var6.size.height = v17;
        *&v10->var5 = v15;
        ++v8;
        --countCopy;
      }

      while (countCopy);
    }

    v7->_count = count;
  }

  return v7;
}

@end