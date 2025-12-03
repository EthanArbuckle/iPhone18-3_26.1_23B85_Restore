@interface SKGEmbeddingVersionManager
+ (BOOL)embeddingsSupported;
+ (id)currentEmbeddingVersion;
+ (id)currentEmbeddingVersionDataReturningError:(id *)error;
@end

@implementation SKGEmbeddingVersionManager

+ (BOOL)embeddingsSupported
{
  mEMORY[0x1E69D3DC8] = [MEMORY[0x1E69D3DC8] sharedInstance];
  deviceCanGenerateEmbeddings = [mEMORY[0x1E69D3DC8] deviceCanGenerateEmbeddings];

  return deviceCanGenerateEmbeddings;
}

+ (id)currentEmbeddingVersion
{
  v2 = MEMORY[0x1E696AD98];
  version = [MEMORY[0x1E69D3DC8] version];

  return [v2 numberWithUnsignedInteger:version];
}

+ (id)currentEmbeddingVersionDataReturningError:(id *)error
{
  currentEmbeddingVersion = [self currentEmbeddingVersion];
  v6 = [self embeddingVersionDataFromTextVersion:currentEmbeddingVersion returningError:error];

  return v6;
}

@end