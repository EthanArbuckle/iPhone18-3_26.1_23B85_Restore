@interface TITesterMathUtils
+ (int)solveSystemOfEquations:(float *)equations withBMatrix:(float *)matrix size:(int)size;
@end

@implementation TITesterMathUtils

+ (int)solveSystemOfEquations:(float *)equations withBMatrix:(float *)matrix size:(int)size
{
  __info = 0;
  sizeCopy = size;
  v9 = 4 * size;
  v10 = malloc_type_malloc(v9, 0x100004052888210uLL);
  v11 = malloc_type_malloc(v9 * sizeCopy, 0x100004052888210uLL);
  v12 = v11;
  if (size >= 1)
  {
    v13 = 0;
    v14 = 4 * size;
    v15 = v11;
    do
    {
      v16 = 0;
      v17 = v15;
      do
      {
        *v17 = equations[v16 / 4];
        v16 += 4;
        v17 = (v17 + v14);
      }

      while (v14 != v16);
      ++v13;
      ++v15;
      equations = (equations + v14);
    }

    while (v13 != size);
  }

  __nrhs = 1;
  __ldb = size;
  sgesv_(&__ldb, &__nrhs, v11, &__ldb, v10, matrix, &__ldb, &__info);
  free(v10);
  free(v12);
  return __info;
}

@end