@interface SKGEmbeddingVersionManager
+ (BOOL)embeddingsSupported;
+ (id)currentEmbeddingVersion;
+ (id)currentEmbeddingVersionDataReturningError:(id *)a3;
@end

@implementation SKGEmbeddingVersionManager

+ (BOOL)embeddingsSupported
{
  v2 = [MEMORY[0x1E69D3DC8] sharedInstance];
  v3 = [v2 deviceCanGenerateEmbeddings];

  return v3;
}

+ (id)currentEmbeddingVersion
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [MEMORY[0x1E69D3DC8] version];

  return [v2 numberWithUnsignedInteger:v3];
}

+ (id)currentEmbeddingVersionDataReturningError:(id *)a3
{
  v5 = [a1 currentEmbeddingVersion];
  v6 = [a1 embeddingVersionDataFromTextVersion:v5 returningError:a3];

  return v6;
}

@end