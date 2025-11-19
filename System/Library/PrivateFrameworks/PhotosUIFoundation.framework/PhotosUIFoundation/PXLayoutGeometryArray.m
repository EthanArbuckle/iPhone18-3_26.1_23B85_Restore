@interface PXLayoutGeometryArray
- (PXLayoutGeometryArray)initWithGeometries:(_PXLayoutGeometry *)a3 count:(unint64_t)a4;
- (_PXLayoutGeometry)geometryAtIndex:(SEL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation PXLayoutGeometryArray

- (_PXLayoutGeometry)geometryAtIndex:(SEL)a3
{
  v5 = self;
  if (*&self->var1.y <= a4)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a3 object:v5 file:@"PXLayoutGeometryArray.m" lineNumber:48 description:{@"index %ld out of bounds", a4}];
  }

  v7 = *&v5->var1.x + 152 * a4;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (PXLayoutGeometryArray)initWithGeometries:(_PXLayoutGeometry *)a3 count:(unint64_t)a4
{
  if (!a3)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXLayoutGeometryArray.m" lineNumber:23 description:@"geometries is NULL"];
  }

  v21.receiver = self;
  v21.super_class = PXLayoutGeometryArray;
  v7 = [(PXLayoutGeometryArray *)&v21 init];
  if (v7)
  {
    v7->_geometries = malloc_type_malloc(152 * a4, 0x100004050011849uLL);
    if (a4)
    {
      v8 = 0;
      v9 = a4;
      do
      {
        v10 = &v7->_geometries[v8];
        v11 = *&a3[v8].var1.y;
        *&v10->var0 = *&a3[v8].var0;
        *&v10->var1.y = v11;
        v12 = *&a3[v8].var2.height;
        v13 = *&a3[v8].var3.b;
        v14 = *&a3[v8].var3.ty;
        *&v10->var3.d = *&a3[v8].var3.d;
        *&v10->var3.ty = v14;
        *&v10->var2.height = v12;
        *&v10->var3.b = v13;
        v15 = *&a3[v8].var5;
        v16 = *&a3[v8].var6.origin.y;
        v17 = *&a3[v8].var6.size.height;
        v10->var7.height = a3[v8].var7.height;
        *&v10->var6.origin.y = v16;
        *&v10->var6.size.height = v17;
        *&v10->var5 = v15;
        ++v8;
        --v9;
      }

      while (v9);
    }

    v7->_count = a4;
  }

  return v7;
}

@end