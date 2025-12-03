@interface VLFilesystemDataProvider
- (VLFilesystemDataProvider)initWithBaseDirectory:(id)directory;
- (VLLocalizationDataProviderDelegate)delegate;
- (id)fileURLForKey:(id *)key error:(id *)error;
- (void)determineAvailabilityForCoordinate:(id *)coordinate horizontalAccuracy:(double)accuracy purpose:(int64_t)purpose callbackQueue:(id)queue callback:(id)callback;
@end

@implementation VLFilesystemDataProvider

- (VLFilesystemDataProvider)initWithBaseDirectory:(id)directory
{
  directoryCopy = directory;
  if (([directoryCopy isFileURL] & 1) == 0)
  {
    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"directoryURL must be a file URL" userInfo:0];
    objc_exception_throw(v10);
  }

  v11.receiver = self;
  v11.super_class = VLFilesystemDataProvider;
  v6 = [(VLFilesystemDataProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseDirectory, directory);
    v8 = v7;
  }

  return v7;
}

- (id)fileURLForKey:(id *)key error:(id *)error
{
  baseDirectory = self->_baseDirectory;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i/%i/%i/tracks_%i.vtrk", key->var0, key->var1, key->var2, key->var3];
  v7 = [(NSURL *)baseDirectory URLByAppendingPathComponent:v6];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v7 path];
  v10 = [defaultManager fileExistsAtPath:path];

  if (v10)
  {
    v11 = v7;
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"VLLocalizationDataProviderErrorDomain" code:2 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)determineAvailabilityForCoordinate:(id *)coordinate horizontalAccuracy:(double)accuracy purpose:(int64_t)purpose callbackQueue:(id)queue callback:(id)callback
{
  callbackCopy = callback;
  v11 = callbackCopy;
  if (callbackCopy)
  {
    v14 = *coordinate;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __113__VLFilesystemDataProvider_determineAvailabilityForCoordinate_horizontalAccuracy_purpose_callbackQueue_callback___block_invoke;
    v12[3] = &unk_279E2DA20;
    v12[4] = self;
    v13 = callbackCopy;
    dispatch_async(queue, v12);
  }
}

void __113__VLFilesystemDataProvider_determineAvailabilityForCoordinate_horizontalAccuracy_purpose_callbackQueue_callback___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 contentsOfDirectoryAtURL:*(*(a1 + 32) + 8) includingPropertiesForKeys:0 options:0 error:0];

  memset(v15, 0, sizeof(v15));
  if ([v3 countByEnumeratingWithState:v15 objects:v16 count:16])
  {
    v4 = [**(&v15[0] + 1) lastPathComponent];
    v5 = [v4 integerValue];
    GEOMapPointForCoordinate();
    v6 = (1 << v5) / *(MEMORY[0x277D0E7E0] + 16);
    LODWORD(v9) = vcvtmd_u64_f64(v8 * v6);
    v10 = *(*(a1 + 32) + 8);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu/%llu/%llu", v5, __PAIR64__(MEMORY[0x277D0E7E4], vcvtmd_u64_f64(v7 * v6)), v9];
    v12 = [v10 URLByAppendingPathComponent:v11];

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v12 path];
    [v13 fileExistsAtPath:v14];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (VLLocalizationDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end