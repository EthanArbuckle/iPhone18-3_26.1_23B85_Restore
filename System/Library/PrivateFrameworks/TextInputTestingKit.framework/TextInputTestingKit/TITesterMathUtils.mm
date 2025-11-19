@interface TITesterMathUtils
+ (int)solveSystemOfEquations:(float *)a3 withBMatrix:(float *)a4 size:(int)a5;
@end

@implementation TITesterMathUtils

+ (int)solveSystemOfEquations:(float *)a3 withBMatrix:(float *)a4 size:(int)a5
{
  __info = 0;
  v8 = a5;
  v9 = 4 * a5;
  v10 = malloc_type_malloc(v9, 0x100004052888210uLL);
  v11 = malloc_type_malloc(v9 * v8, 0x100004052888210uLL);
  v12 = v11;
  if (a5 >= 1)
  {
    v13 = 0;
    v14 = 4 * a5;
    v15 = v11;
    do
    {
      v16 = 0;
      v17 = v15;
      do
      {
        *v17 = a3[v16 / 4];
        v16 += 4;
        v17 = (v17 + v14);
      }

      while (v14 != v16);
      ++v13;
      ++v15;
      a3 = (a3 + v14);
    }

    while (v13 != a5);
  }

  __nrhs = 1;
  __ldb = a5;
  sgesv_(&__ldb, &__nrhs, v11, &__ldb, v10, a4, &__ldb, &__info);
  free(v10);
  free(v12);
  return __info;
}

@end