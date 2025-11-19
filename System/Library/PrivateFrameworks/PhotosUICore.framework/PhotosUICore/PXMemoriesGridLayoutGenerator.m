@interface PXMemoriesGridLayoutGenerator
- (id)geometryKinds;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
@end

@implementation PXMemoriesGridLayoutGenerator

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  length = a4.length;
  location = a4.location;
  v20.receiver = self;
  v20.super_class = PXMemoriesGridLayoutGenerator;
  [PXGridLayoutGenerator getGeometries:sel_getGeometries_inRange_withKind_ inRange:? withKind:?];
  if (length)
  {
    v10 = [(PXMemoriesGridLayoutGenerator *)self geometryKinds];
    v11 = [v10 containsIndex:a5];

    if (v11)
    {
      if (location <= -length)
      {
        v12 = length + location;
        if (length + location <= location + 1)
        {
          v12 = location + 1;
        }

        v13 = v12 - location;
        v14 = (v12 - location + 1) & 0xFFFFFFFFFFFFFFFELL;
        v15 = vdupq_n_s64(v13 - 1);
        v16 = xmmword_1A5301350;
        p_var5 = &a3[1].var5;
        v18 = vdupq_n_s64(2uLL);
        do
        {
          v19 = vmovn_s64(vcgeq_u64(v15, v16));
          if (v19.i8[0])
          {
            *(p_var5 - 19) = a5;
          }

          if (v19.i8[4])
          {
            *p_var5 = a5;
          }

          v16 = vaddq_s64(v16, v18);
          p_var5 += 38;
          v14 -= 2;
        }

        while (v14);
      }
    }
  }
}

- (id)geometryKinds
{
  if (geometryKinds_onceToken_189637 != -1)
  {
    dispatch_once(&geometryKinds_onceToken_189637, &__block_literal_global_189638);
  }

  v3 = geometryKinds_kinds_189639;

  return v3;
}

void __46__PXMemoriesGridLayoutGenerator_geometryKinds__block_invoke()
{
  v0 = [MEMORY[0x1E696AD50] indexSetWithIndex:0];
  [v0 addIndex:2];
  v1 = geometryKinds_kinds_189639;
  geometryKinds_kinds_189639 = v0;
}

@end