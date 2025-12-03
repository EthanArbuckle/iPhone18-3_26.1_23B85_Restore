@interface SCMLModelBase
- (SCMLModelBase)initWithOptions:(id)options;
- (id)performanceResults;
- (void)_copy_data_from_blob:(id *)_copy_data_from_blob to:(void *)to;
- (void)_copy_data_from_blob:(id *)_copy_data_from_blob toPtr:(float *)ptr;
- (void)_copy_data_to_blob:(float *)_copy_data_to_blob to:(id *)to;
- (void)_copy_data_to_blob:(id)_copy_data_to_blob toBuffer:(id *)buffer;
- (void)_copy_data_to_blob_repeated:(id)_copy_data_to_blob_repeated to:(id *)to;
@end

@implementation SCMLModelBase

- (SCMLModelBase)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = SCMLModelBase;
  v5 = [(SCMLModelBase *)&v11 init];
  if (v5)
  {
    v6 = [[SCMLPerformance alloc] initWithOptions:optionsCopy];
    perfResults = v5->_perfResults;
    v5->_perfResults = v6;

    v8 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v8;
  }

  return v5;
}

- (void)_copy_data_from_blob:(id *)_copy_data_from_blob to:(void *)to
{
  v7 = *&_copy_data_from_blob->var12;
  v25 = *&_copy_data_from_blob->var10;
  v26 = v7;
  v27 = *&_copy_data_from_blob->var14;
  v8 = *&_copy_data_from_blob->var4;
  v21 = *&_copy_data_from_blob->var3[2];
  v22 = v8;
  v9 = *&_copy_data_from_blob->var8;
  v23 = *&_copy_data_from_blob->var6;
  v24 = v9;
  v10 = *_copy_data_from_blob->var2;
  v17 = *&_copy_data_from_blob->var0;
  v18 = v10;
  v11 = *_copy_data_from_blob->var3;
  v19 = *&_copy_data_from_blob->var2[2];
  v20 = v11;
  std::vector<float>::resize(to, [(SCMLModelBase *)self _blob_size:&v17]);
  v12 = *&_copy_data_from_blob->var12;
  v25 = *&_copy_data_from_blob->var10;
  v26 = v12;
  v27 = *&_copy_data_from_blob->var14;
  v13 = *&_copy_data_from_blob->var4;
  v21 = *&_copy_data_from_blob->var3[2];
  v22 = v13;
  v14 = *&_copy_data_from_blob->var8;
  v23 = *&_copy_data_from_blob->var6;
  v24 = v14;
  v15 = *_copy_data_from_blob->var2;
  v17 = *&_copy_data_from_blob->var0;
  v18 = v15;
  v16 = *_copy_data_from_blob->var3;
  v19 = *&_copy_data_from_blob->var2[2];
  v20 = v16;
  [(SCMLModelBase *)self _copy_data_from_blob:&v17 toPtr:*to];
}

- (void)_copy_data_from_blob:(id *)_copy_data_from_blob toPtr:(float *)ptr
{
  v4 = *&_copy_data_from_blob->var12;
  v9[8] = *&_copy_data_from_blob->var10;
  v9[9] = v4;
  v10 = *&_copy_data_from_blob->var14;
  v5 = *&_copy_data_from_blob->var4;
  v9[4] = *&_copy_data_from_blob->var3[2];
  v9[5] = v5;
  v6 = *&_copy_data_from_blob->var8;
  v9[6] = *&_copy_data_from_blob->var6;
  v9[7] = v6;
  v7 = *_copy_data_from_blob->var2;
  v9[0] = *&_copy_data_from_blob->var0;
  v9[1] = v7;
  v8 = *_copy_data_from_blob->var3;
  v9[2] = *&_copy_data_from_blob->var2[2];
  v9[3] = v8;
  memcpy(ptr, _copy_data_from_blob->var0, 4 * [(SCMLModelBase *)self _blob_size:v9]);
}

- (void)_copy_data_to_blob:(float *)_copy_data_to_blob to:(id *)to
{
  var0 = to->var0;
  v5 = *&to->var12;
  v10[8] = *&to->var10;
  v10[9] = v5;
  v11 = *&to->var14;
  v6 = *&to->var4;
  v10[4] = *&to->var3[2];
  v10[5] = v6;
  v7 = *&to->var8;
  v10[6] = *&to->var6;
  v10[7] = v7;
  v8 = *to->var2;
  v10[0] = *&to->var0;
  v10[1] = v8;
  v9 = *to->var3;
  v10[2] = *&to->var2[2];
  v10[3] = v9;
  memcpy(var0, _copy_data_to_blob, 4 * [(SCMLModelBase *)self _blob_size:v10]);
}

- (void)_copy_data_to_blob:(id)_copy_data_to_blob toBuffer:(id *)buffer
{
  _copy_data_to_blobCopy = _copy_data_to_blob;
  var0 = buffer->var0;
  v8 = *&buffer->var12;
  v13[8] = *&buffer->var10;
  v13[9] = v8;
  v14 = *&buffer->var14;
  v9 = *&buffer->var4;
  v13[4] = *&buffer->var3[2];
  v13[5] = v9;
  v10 = *&buffer->var8;
  v13[6] = *&buffer->var6;
  v13[7] = v10;
  v11 = *buffer->var2;
  v13[0] = *&buffer->var0;
  v13[1] = v11;
  v12 = *buffer->var3;
  v13[2] = *&buffer->var2[2];
  v13[3] = v12;
  memcpy(var0, [_copy_data_to_blobCopy bytes], 4 * -[SCMLModelBase _blob_size:](self, "_blob_size:", v13));
}

- (void)_copy_data_to_blob_repeated:(id)_copy_data_to_blob_repeated to:(id *)to
{
  _copy_data_to_blob_repeatedCopy = _copy_data_to_blob_repeated;
  var0 = to->var0;
  v8 = *&to->var12;
  v19[8] = *&to->var10;
  v19[9] = v8;
  v20 = *&to->var14;
  v9 = *&to->var4;
  v19[4] = *&to->var3[2];
  v19[5] = v9;
  v10 = *&to->var8;
  v19[6] = *&to->var6;
  v19[7] = v10;
  v11 = *to->var2;
  v19[0] = *&to->var0;
  v19[1] = v11;
  v12 = *to->var3;
  v19[2] = *&to->var2[2];
  v19[3] = v12;
  v13 = [(SCMLModelBase *)self _blob_size:v19];
  bytes = [_copy_data_to_blob_repeatedCopy bytes];
  v15 = [_copy_data_to_blob_repeatedCopy length];
  if (v15 >> 2 <= v13)
  {
    v16 = 0;
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v13 / (v15 >> 2);
    do
    {
      memcpy(var0, bytes, v17);
      ++v16;
      var0 += v17;
    }

    while (v16 < v18);
  }
}

- (id)performanceResults
{
  perfResults = [(SCMLModelBase *)self perfResults];
  results = [perfResults results];

  return results;
}

@end