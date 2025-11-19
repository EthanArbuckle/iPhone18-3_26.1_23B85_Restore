@interface PLFileManagerAllocatedSizeRemoveDelegate
- (BOOL)fileManager:(id)a3 shouldRemoveItemAtURL:(id)a4;
@end

@implementation PLFileManagerAllocatedSizeRemoveDelegate

- (BOOL)fileManager:(id)a3 shouldRemoveItemAtURL:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E695DC58];
  v5 = v14;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = [v6 arrayWithObjects:&v14 count:1];
  v9 = [v7 resourceValuesForKeys:v8 error:{0, v14, v15}];

  v10 = [v9 objectForKeyedSubscript:v5];
  v11 = [v10 longLongValue];

  v12 = vdupq_n_s64(1uLL);
  v12.i64[0] = v11;
  *&self->_totalFileAllocatedSize = vaddq_s64(*&self->_totalFileAllocatedSize, v12);

  return 1;
}

@end