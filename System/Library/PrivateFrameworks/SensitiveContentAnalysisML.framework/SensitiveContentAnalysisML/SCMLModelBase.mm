@interface SCMLModelBase
- (SCMLModelBase)initWithOptions:(id)a3;
- (id)performanceResults;
- (void)_copy_data_from_blob:(id *)a3 to:(void *)a4;
- (void)_copy_data_from_blob:(id *)a3 toPtr:(float *)a4;
- (void)_copy_data_to_blob:(float *)a3 to:(id *)a4;
- (void)_copy_data_to_blob:(id)a3 toBuffer:(id *)a4;
- (void)_copy_data_to_blob_repeated:(id)a3 to:(id *)a4;
@end

@implementation SCMLModelBase

- (SCMLModelBase)initWithOptions:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SCMLModelBase;
  v5 = [(SCMLModelBase *)&v11 init];
  if (v5)
  {
    v6 = [[SCMLPerformance alloc] initWithOptions:v4];
    perfResults = v5->_perfResults;
    v5->_perfResults = v6;

    v8 = [v4 copy];
    options = v5->_options;
    v5->_options = v8;
  }

  return v5;
}

- (void)_copy_data_from_blob:(id *)a3 to:(void *)a4
{
  v7 = *&a3->var12;
  v25 = *&a3->var10;
  v26 = v7;
  v27 = *&a3->var14;
  v8 = *&a3->var4;
  v21 = *&a3->var3[2];
  v22 = v8;
  v9 = *&a3->var8;
  v23 = *&a3->var6;
  v24 = v9;
  v10 = *a3->var2;
  v17 = *&a3->var0;
  v18 = v10;
  v11 = *a3->var3;
  v19 = *&a3->var2[2];
  v20 = v11;
  std::vector<float>::resize(a4, [(SCMLModelBase *)self _blob_size:&v17]);
  v12 = *&a3->var12;
  v25 = *&a3->var10;
  v26 = v12;
  v27 = *&a3->var14;
  v13 = *&a3->var4;
  v21 = *&a3->var3[2];
  v22 = v13;
  v14 = *&a3->var8;
  v23 = *&a3->var6;
  v24 = v14;
  v15 = *a3->var2;
  v17 = *&a3->var0;
  v18 = v15;
  v16 = *a3->var3;
  v19 = *&a3->var2[2];
  v20 = v16;
  [(SCMLModelBase *)self _copy_data_from_blob:&v17 toPtr:*a4];
}

- (void)_copy_data_from_blob:(id *)a3 toPtr:(float *)a4
{
  v4 = *&a3->var12;
  v9[8] = *&a3->var10;
  v9[9] = v4;
  v10 = *&a3->var14;
  v5 = *&a3->var4;
  v9[4] = *&a3->var3[2];
  v9[5] = v5;
  v6 = *&a3->var8;
  v9[6] = *&a3->var6;
  v9[7] = v6;
  v7 = *a3->var2;
  v9[0] = *&a3->var0;
  v9[1] = v7;
  v8 = *a3->var3;
  v9[2] = *&a3->var2[2];
  v9[3] = v8;
  memcpy(a4, a3->var0, 4 * [(SCMLModelBase *)self _blob_size:v9]);
}

- (void)_copy_data_to_blob:(float *)a3 to:(id *)a4
{
  var0 = a4->var0;
  v5 = *&a4->var12;
  v10[8] = *&a4->var10;
  v10[9] = v5;
  v11 = *&a4->var14;
  v6 = *&a4->var4;
  v10[4] = *&a4->var3[2];
  v10[5] = v6;
  v7 = *&a4->var8;
  v10[6] = *&a4->var6;
  v10[7] = v7;
  v8 = *a4->var2;
  v10[0] = *&a4->var0;
  v10[1] = v8;
  v9 = *a4->var3;
  v10[2] = *&a4->var2[2];
  v10[3] = v9;
  memcpy(var0, a3, 4 * [(SCMLModelBase *)self _blob_size:v10]);
}

- (void)_copy_data_to_blob:(id)a3 toBuffer:(id *)a4
{
  v6 = a3;
  var0 = a4->var0;
  v8 = *&a4->var12;
  v13[8] = *&a4->var10;
  v13[9] = v8;
  v14 = *&a4->var14;
  v9 = *&a4->var4;
  v13[4] = *&a4->var3[2];
  v13[5] = v9;
  v10 = *&a4->var8;
  v13[6] = *&a4->var6;
  v13[7] = v10;
  v11 = *a4->var2;
  v13[0] = *&a4->var0;
  v13[1] = v11;
  v12 = *a4->var3;
  v13[2] = *&a4->var2[2];
  v13[3] = v12;
  memcpy(var0, [v6 bytes], 4 * -[SCMLModelBase _blob_size:](self, "_blob_size:", v13));
}

- (void)_copy_data_to_blob_repeated:(id)a3 to:(id *)a4
{
  v6 = a3;
  var0 = a4->var0;
  v8 = *&a4->var12;
  v19[8] = *&a4->var10;
  v19[9] = v8;
  v20 = *&a4->var14;
  v9 = *&a4->var4;
  v19[4] = *&a4->var3[2];
  v19[5] = v9;
  v10 = *&a4->var8;
  v19[6] = *&a4->var6;
  v19[7] = v10;
  v11 = *a4->var2;
  v19[0] = *&a4->var0;
  v19[1] = v11;
  v12 = *a4->var3;
  v19[2] = *&a4->var2[2];
  v19[3] = v12;
  v13 = [(SCMLModelBase *)self _blob_size:v19];
  v14 = [v6 bytes];
  v15 = [v6 length];
  if (v15 >> 2 <= v13)
  {
    v16 = 0;
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v13 / (v15 >> 2);
    do
    {
      memcpy(var0, v14, v17);
      ++v16;
      var0 += v17;
    }

    while (v16 < v18);
  }
}

- (id)performanceResults
{
  v2 = [(SCMLModelBase *)self perfResults];
  v3 = [v2 results];

  return v3;
}

@end