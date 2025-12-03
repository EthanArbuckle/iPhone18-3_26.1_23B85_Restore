@interface PLFileManagerAllocatedSizeRemoveDelegate
- (BOOL)fileManager:(id)manager shouldRemoveItemAtURL:(id)l;
@end

@implementation PLFileManagerAllocatedSizeRemoveDelegate

- (BOOL)fileManager:(id)manager shouldRemoveItemAtURL:(id)l
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E695DC58];
  v5 = v14;
  v6 = MEMORY[0x1E695DEC8];
  lCopy = l;
  v8 = [v6 arrayWithObjects:&v14 count:1];
  v9 = [lCopy resourceValuesForKeys:v8 error:{0, v14, v15}];

  v10 = [v9 objectForKeyedSubscript:v5];
  longLongValue = [v10 longLongValue];

  v12 = vdupq_n_s64(1uLL);
  v12.i64[0] = longLongValue;
  *&self->_totalFileAllocatedSize = vaddq_s64(*&self->_totalFileAllocatedSize, v12);

  return 1;
}

@end