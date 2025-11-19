@interface TFArchiver
- (BOOL)archiveDirectory:(id)a3 toLocation:(id)a4;
- (BOOL)unarchive:(id)a3 toLocation:(id)a4;
@end

@implementation TFArchiver

- (BOOL)archiveDirectory:(id)a3 toLocation:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  BOMCopierNew();
  v7 = [MEMORY[0x1E695DF70] array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v11 = @"createPKZip";
  v12[0] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v6 fileSystemRepresentation];

  [v5 fileSystemRepresentation];
  LODWORD(v5) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  v9 = *MEMORY[0x1E69E9840];
  return v5 == 0;
}

- (BOOL)unarchive:(id)a3 toLocation:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  BOMCopierNew();
  v7 = [MEMORY[0x1E695DF70] array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v11 = @"extractPKZip";
  v12[0] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v6 fileSystemRepresentation];

  [v5 fileSystemRepresentation];
  LODWORD(v5) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  v9 = *MEMORY[0x1E69E9840];
  return v5 == 0;
}

@end