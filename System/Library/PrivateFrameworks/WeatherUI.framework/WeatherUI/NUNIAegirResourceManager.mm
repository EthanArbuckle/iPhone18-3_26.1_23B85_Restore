@interface NUNIAegirResourceManager
+ (id)sharedInstanceWithDisplayPixelFormat:(unint64_t)format;
+ (void)_deallocInstance:(id)instance;
- (NUNIAegirResourceManager)initWithDisplayPixelFormat:(unint64_t)format;
- (id)_generatePipelineVshName:(id)name fshName:(id)fshName config:(unint64_t)config blend0:(unint64_t)blend0 blend1:(unint64_t)blend1 pixelFormat0:(unint64_t)format0 pixelFormat1:(unint64_t)format1;
- (id)provideAtlasBacking:(id)backing;
- (id)renderDisplayPipeline;
- (id)renderOffscreenPipelineForLocationDot;
- (id)renderOffscreenPipelineForPost;
- (id)renderOffscreenPipelineForSpheroid:(unint64_t)spheroid config:(unint64_t)config;
- (id)renderOffscreenPipelineForStar;
- (id)renderOffscreenPipelineForStarfield;
- (id)renderOffscreenPipelineForThreshold;
- (id)textureGroupWithSuffix:(id)suffix device:(id)device;
- (unint64_t)pixelFormat0For:(id)for;
- (void)_asyncDeallocInstance;
- (void)_handleCloudCoverTextureExpired;
- (void)_loadGeometry;
- (void)addClient;
- (void)dealloc;
- (void)prepareForRendering;
- (void)removeClient;
- (void)setPipelineConstants:(uint64_t)constants;
@end

@implementation NUNIAegirResourceManager

+ (id)sharedInstanceWithDisplayPixelFormat:(unint64_t)format
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!__sharedInstance)
  {
    v5 = [[NUNIAegirResourceManager alloc] initWithDisplayPixelFormat:format];
    v6 = __sharedInstance;
    __sharedInstance = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = __sharedInstance;
  if (*(__sharedInstance + 32) != format)
  {
    v8 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NUNIAegirResourceManager *)format sharedInstanceWithDisplayPixelFormat:v8];
    }

    v7 = __sharedInstance;
  }

  return v7;
}

+ (void)_deallocInstance:(id)instance
{
  obj = self;
  objc_sync_enter(obj);
  v3 = __sharedInstance;
  __sharedInstance = 0;

  objc_sync_exit(obj);
}

- (NUNIAegirResourceManager)initWithDisplayPixelFormat:(unint64_t)format
{
  v11.receiver = self;
  v11.super_class = NUNIAegirResourceManager;
  v4 = [(NUNIAegirResourceManager *)&v11 init];
  if (v4)
  {
    v5 = objc_opt_new();
    resourceProviderKey = v4->_resourceProviderKey;
    v4->_resourceProviderKey = v5;

    v4->_displayPixelFormat = format;
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    textureGroupHashTable = v4->_textureGroupHashTable;
    v4->_textureGroupHashTable = strongToWeakObjectsMapTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__handleCloudCoverTextureExpired name:@"CloudCoverExpiredNotification" object:0];
  }

  return v4;
}

- (void)prepareForRendering
{
  if (!self->_device)
  {
    v4 = +[CLKUIMetalResourceManager sharedDevice];
    device = self->_device;
    self->_device = v4;

    v6 = self->_device;
    v7 = NUNIBundle();
    v8 = [(MTLDevice *)v6 newDefaultLibraryWithBundle:v7 error:0];
    library = self->_library;
    self->_library = v8;

    [(NUNIAegirResourceManager *)self _loadGeometry];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NUNIAegirResourceManager;
  [(NUNIAegirResourceManager *)&v2 dealloc];
}

- (void)_asyncDeallocInstance
{
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  v3 = objc_opt_class();
  if (isMainThread)
  {

    [v3 _deallocInstance:0];
  }

  else
  {

    [v3 performSelectorOnMainThread:sel__deallocInstance_ withObject:0 waitUntilDone:0];
  }
}

- (void)addClient
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_clients;
  objc_sync_exit(obj);
}

- (void)removeClient
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_clients - 1;
  selfCopy->_clients = v3;
  objc_sync_exit(selfCopy);

  if (!v3)
  {

    [(NUNIAegirResourceManager *)selfCopy _asyncDeallocInstance];
  }
}

- (void)setPipelineConstants:(uint64_t)constants
{
  obj = objc_opt_new();
  [obj setConstantValue:constants type:16 atIndex:0];
  [obj setConstantValue:constants + 2 type:16 atIndex:1];
  [obj setConstantValue:constants + 4 type:16 atIndex:2];
  [obj setConstantValue:constants + 6 type:16 atIndex:3];
  [obj setConstantValue:constants + 8 type:16 atIndex:4];
  [obj setConstantValue:constants + 10 type:16 atIndex:5];
  [obj setConstantValue:constants + 12 type:16 atIndex:6];
  [obj setConstantValue:constants + 14 type:16 atIndex:7];
  [obj setConstantValue:constants + 16 type:16 atIndex:8];
  [obj setConstantValue:constants + 18 type:16 atIndex:9];
  [obj setConstantValue:constants + 20 type:16 atIndex:10];
  [obj setConstantValue:constants + 22 type:16 atIndex:11];
  [obj setConstantValue:constants + 24 type:16 atIndex:12];
  [obj setConstantValue:constants + 26 type:16 atIndex:13];
  [obj setConstantValue:constants + 28 type:16 atIndex:14];
  [obj setConstantValue:constants + 30 type:16 atIndex:15];
  [obj setConstantValue:constants + 32 type:16 atIndex:16];
  [obj setConstantValue:constants + 34 type:16 atIndex:17];
  [obj setConstantValue:constants + 36 type:16 atIndex:18];
  [obj setConstantValue:constants + 38 type:16 atIndex:19];
  [obj setConstantValue:constants + 40 type:16 atIndex:20];
  [obj setConstantValue:constants + 42 type:16 atIndex:21];
  [obj setConstantValue:constants + 44 type:16 atIndex:22];
  [obj setConstantValue:constants + 46 type:16 atIndex:23];
  [obj setConstantValue:constants + 48 type:16 atIndex:24];
  [obj setConstantValue:constants + 50 type:16 atIndex:25];
  [obj setConstantValue:constants + 52 type:16 atIndex:26];
  [obj setConstantValue:constants + 54 type:16 atIndex:27];
  [obj setConstantValue:constants + 56 type:16 atIndex:28];
  [obj setConstantValue:constants + 58 type:16 atIndex:29];
  [obj setConstantValue:constants + 60 type:16 atIndex:30];
  [obj setConstantValue:constants + 62 type:16 atIndex:31];
  [obj setConstantValue:constants + 64 type:16 atIndex:32];
  [obj setConstantValue:constants + 66 type:16 atIndex:33];
  [obj setConstantValue:constants + 68 type:16 atIndex:34];
  objc_storeStrong((self + 880), obj);
  v5 = *(self + 48);
  *(self + 48) = 0;

  v6 = *(self + 56);
  *(self + 56) = 0;

  v7 = *(self + 64);
  *(self + 64) = 0;

  v8 = *(self + 72);
  *(self + 72) = 0;

  v9 = *(self + 80);
  *(self + 80) = 0;

  v10 = *(self + 88);
  *(self + 88) = 0;

  v11 = 0;
  v12 = self + 96;
  do
  {
    for (i = 0; i != 32; i += 8)
    {
      v14 = *(v12 + i);
      *(v12 + i) = 0;
    }

    ++v11;
    v12 += 32;
  }

  while (v11 != 24);
}

- (void)_loadGeometry
{
  v3 = [(MTLDevice *)self->_device newBufferWithBytes:&quadVertices length:16 options:1];
  rectVerticesBuffer = self->_rectVerticesBuffer;
  self->_rectVerticesBuffer = v3;

  self->_starVerticesBuffer = [(MTLDevice *)self->_device newBufferWithBytes:&starVertices length:67392 options:1];

  MEMORY[0x1EEE66BB8]();
}

- (id)textureGroupWithSuffix:(id)suffix device:(id)device
{
  suffixCopy = suffix;
  deviceCopy = device;
  v8 = [(NSMapTable *)self->_textureGroupHashTable objectForKey:suffixCopy];
  if (!v8)
  {
    v48 = objc_alloc_init(NUNIAegirTextureGroup);
    v9 = +[CLKUITexture nullTexture2D];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:24];
    do
    {
      [v10 setObject:&stru_1F3B5C700 atIndexedSubscript:v8++];
    }

    while (v8 != 24);
    v11 = +[MetalDeviceInfo sharedInfo];
    v47 = deviceCopy;
    v12 = [v11 supportXR10ForDevice:deviceCopy];

    if (v12)
    {
      v13 = @"c4a";
    }

    else
    {
      v13 = @"c4a_b";
    }

    [v10 setObject:v13 atIndexedSubscript:4];
    v14 = objc_opt_new();
    for (i = 0; i != 24; ++i)
    {
      v16 = [v10 objectAtIndexedSubscript:i];
      v17 = v16;
      if (v16)
      {
        suffixCopy = [v16 stringByAppendingFormat:@"-%@", suffixCopy];
        v19 = [CLKUITexture textureWithProviderDelegate:self uuid:suffixCopy nullTexture:v9];
        [v14 addObject:v19];
      }

      else
      {
        [v14 addObject:v9];
      }
    }

    [(NUNIAegirTextureGroup *)v48 setAlbedos:v14];

    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:24];
    for (j = 0; j != 24; ++j)
    {
      [v20 setObject:&stru_1F3B5C700 atIndexedSubscript:j];
    }

    v22 = +[MetalDeviceInfo sharedInfo];
    v23 = [v22 supportXR10ForDevice:v47];

    if (v23)
    {
      v24 = @"c4n";
    }

    else
    {
      v24 = @"c4n_b";
    }

    [v20 setObject:v24 atIndexedSubscript:4];
    v25 = objc_opt_new();
    for (k = 0; k != 24; ++k)
    {
      v27 = [v20 objectAtIndexedSubscript:k];
      v28 = v27;
      if (v27)
      {
        suffixCopy2 = [v27 stringByAppendingFormat:@"-%@", suffixCopy];
        v30 = [CLKUITexture textureWithProviderDelegate:self uuid:suffixCopy2 nullTexture:v9];
        [v25 addObject:v30];
      }

      else
      {
        [v25 addObject:v9];
      }
    }

    [(NUNIAegirTextureGroup *)v48 setNormals:v25];

    v31 = objc_opt_new();
    for (m = 0; m != 24; ++m)
    {
      v33 = textureGroupWithSuffix_device__uuidEmissives[m];
      if (v33)
      {
        suffixCopy3 = [v33 stringByAppendingFormat:@"-%@", suffixCopy];
        v35 = [CLKUITexture textureWithProviderDelegate:self uuid:suffixCopy3 nullTexture:v9];
        [v31 addObject:v35];
      }

      else
      {
        [v31 addObject:v9];
      }
    }

    [(NUNIAegirTextureGroup *)v48 setEmissives:v31];

    v36 = objc_opt_new();
    v37 = objc_opt_new();
    v38 = objc_opt_new();
    for (n = 0; n != 24; ++n)
    {
      if (!textureGroupWithSuffix_device__uuidClouds[n])
      {
        [v36 addObject:v9];
        [v37 addObject:v9];
        [v38 addObject:v9];
      }
    }

    [(NUNIAegirTextureGroup *)v48 setCloudsLo:v36];
    [(NUNIAegirTextureGroup *)v48 setCloudsMd:v37];
    [(NUNIAegirTextureGroup *)v48 setCloudsHi:v38];

    v40 = objc_opt_new();
    for (ii = 0; ii != 24; ++ii)
    {
      if ((0x40B7FuLL >> ii))
      {
        [v40 addObject:v9];
      }

      else
      {
        suffixCopy4 = [textureGroupWithSuffix_device__uuidGradients[ii] stringByAppendingFormat:@"-%@", suffixCopy];
        v43 = [CLKUITexture textureWithProviderDelegate:self uuid:suffixCopy4 nullTexture:v9];
        [v40 addObject:v43];
      }
    }

    v8 = v48;
    [(NUNIAegirTextureGroup *)v48 setGradients:v40];

    suffixCopy5 = [@"s1a" stringByAppendingFormat:@"-%@", suffixCopy];
    v45 = [CLKUITexture textureWithProviderDelegate:self uuid:suffixCopy5 nullTexture:v9];
    [(NUNIAegirTextureGroup *)v48 setStarfield:v45];

    [(NSMapTable *)self->_textureGroupHashTable setObject:v48 forKey:suffixCopy];
    deviceCopy = v47;
  }

  return v8;
}

- (id)renderDisplayPipeline
{
  v3 = self->_pipelineStateDisplay;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_pass_vsh" fshName:@"aegir_display_fsh" config:0 blend0:0 blend1:4 pixelFormat0:self->_displayPixelFormat pixelFormat1:0];
    pipelineStateDisplay = self->_pipelineStateDisplay;
    self->_pipelineStateDisplay = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForPost
{
  v3 = self->_pipelineStatePost;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_pass_vsh" fshName:@"aegir_post_fsh" config:0 blend0:2 blend1:3 pixelFormat0:[(NUNIAegirResourceManager *)self pixelFormat0For:self->_device] pixelFormat1:10];
    pipelineStatePost = self->_pipelineStatePost;
    self->_pipelineStatePost = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForStarfield
{
  v3 = self->_pipelineStateStarfield;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_pass_vsh" fshName:@"aegir_starfield_fsh" config:0 blend0:0 blend1:4 pixelFormat0:[(NUNIAegirResourceManager *)self pixelFormat0For:self->_device] pixelFormat1:10];
    pipelineStateStarfield = self->_pipelineStateStarfield;
    self->_pipelineStateStarfield = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForStar
{
  v3 = self->_pipelineStateStar;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_star_vsh" fshName:@"aegir_star_fsh" config:0 blend0:1 blend1:4 pixelFormat0:[(NUNIAegirResourceManager *)self pixelFormat0For:self->_device] pixelFormat1:10];
    pipelineStateStar = self->_pipelineStateStar;
    self->_pipelineStateStar = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForThreshold
{
  v3 = self->_pipelineStateThreshold;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_pass_vsh" fshName:@"aegir_threshold_fsh" config:0 blend0:0 blend1:4 pixelFormat0:10 pixelFormat1:0];
    pipelineStateThreshold = self->_pipelineStateThreshold;
    self->_pipelineStateThreshold = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForLocationDot
{
  v3 = self->_pipelineStateLocationDot;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_locdot_vsh" fshName:@"aegir_locdot_fsh" config:0 blend0:1 blend1:4 pixelFormat0:[(NUNIAegirResourceManager *)self pixelFormat0For:self->_device] pixelFormat1:10];
    pipelineStateLocationDot = self->_pipelineStateLocationDot;
    self->_pipelineStateLocationDot = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForSpheroid:(unint64_t)spheroid config:(unint64_t)config
{
  v7 = self + 32 * spheroid + 8 * config;
  v9 = *(v7 + 12);
  v8 = (v7 + 96);
  v10 = v9;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:24];
    for (i = 0; i != 24; ++i)
    {
      [v11 setObject:&stru_1F3B5C700 atIndexedSubscript:i];
    }

    v13 = +[MetalDeviceInfo sharedInfo];
    v14 = [v13 supportXR10ForDevice:self->_device];

    if (v14)
    {
      v15 = @"aegir_luna_fsh";
    }

    else
    {
      v15 = @"aegir_luna_fsh_intel";
    }

    [v11 setObject:v15 atIndexedSubscript:4];
    v16 = renderOffscreenPipelineForSpheroid_config__spheroridVshs[spheroid];
    v17 = [v11 objectAtIndexedSubscript:spheroid];
    if (v17)
    {
      v18 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:v16 fshName:v17 config:config blend0:1 blend1:1 pixelFormat0:[(NUNIAegirResourceManager *)self pixelFormat0For:self->_device] pixelFormat1:10];
      v19 = *v8;
      *v8 = v18;

      v10 = v18;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_generatePipelineVshName:(id)name fshName:(id)fshName config:(unint64_t)config blend0:(unint64_t)blend0 blend1:(unint64_t)blend1 pixelFormat0:(unint64_t)format0 pixelFormat1:(unint64_t)format1
{
  configCopy = config;
  v53 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  fshNameCopy = fshName;
  v44 = configCopy & 1;
  v43 = (configCopy & 2) != 0;
  v17 = [(MTLFunctionConstantValues *)self->_pipelineConstants copy];
  [v17 setConstantValue:&v44 type:53 atIndex:35];
  [v17 setConstantValue:&v43 type:53 atIndex:36];
  blend1Copy = blend1;
  blend0Copy = blend0;
  v18 = objc_opt_new();
  fshNameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)+(%@)", nameCopy, fshNameCopy];
  [v18 setLabel:fshNameCopy];

  v39 = nameCopy;
  v20 = [(MTLLibrary *)self->_library newFunctionWithName:nameCopy];
  [v18 setVertexFunction:v20];

  v21 = [(MTLLibrary *)self->_library newFunctionWithName:fshNameCopy constantValues:v17 error:0];
  [v18 setFragmentFunction:v21];

  v22 = 0;
  v23 = &blend0Copy;
  v24 = 1;
  do
  {
    v25 = v24;
    if (!format0)
    {
      goto LABEL_15;
    }

    colorAttachments = [v18 colorAttachments];
    v27 = [colorAttachments objectAtIndexedSubscript:v22];

    [v27 setPixelFormat:format0];
    [v27 setBlendingEnabled:0];
    v28 = *v23;
    if (*v23 > 2)
    {
      if (v28 != 3)
      {
        if (v28 == 4)
        {
          [v27 setWriteMask:0];
        }

        goto LABEL_14;
      }

      [v27 setBlendingEnabled:1];
      [v27 setRgbBlendOperation:2];
      v29 = v27;
      v30 = 2;
      goto LABEL_12;
    }

    if (v28 == 1)
    {
      [v27 setBlendingEnabled:1];
      [v27 setRgbBlendOperation:0];
      [v27 setAlphaBlendOperation:0];
      [v27 setSourceRGBBlendFactor:4];
      [v27 setSourceAlphaBlendFactor:4];
      [v27 setDestinationRGBBlendFactor:5];
      v31 = v27;
      v32 = 5;
LABEL_13:
      [v31 setDestinationAlphaBlendFactor:v32];
      goto LABEL_14;
    }

    if (v28 == 2)
    {
      [v27 setBlendingEnabled:1];
      [v27 setRgbBlendOperation:0];
      v29 = v27;
      v30 = 0;
LABEL_12:
      [v29 setAlphaBlendOperation:v30];
      [v27 setSourceRGBBlendFactor:1];
      [v27 setSourceAlphaBlendFactor:1];
      [v27 setDestinationRGBBlendFactor:1];
      v31 = v27;
      v32 = 1;
      goto LABEL_13;
    }

LABEL_14:

LABEL_15:
    v24 = 0;
    v23 = &blend1Copy;
    format0 = format1;
    v22 = 1;
  }

  while ((v25 & 1) != 0);
  device = self->_device;
  v40 = 0;
  v34 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v18 error:&v40];
  v35 = v40;
  if (!v34)
  {
    v36 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = self->_device;
      *buf = 138413058;
      v46 = v39;
      v47 = 2112;
      v48 = fshNameCopy;
      v49 = 2112;
      v50 = v38;
      v51 = 2112;
      v52 = v35;
      _os_log_error_impl(&dword_1BC940000, v36, OS_LOG_TYPE_ERROR, "AegirResourceManager: Metal compilation failure Shader=%@+%@ Device=%@ Error=%@", buf, 0x2Au);
    }
  }

  return v34;
}

- (void)_handleCloudCoverTextureExpired
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__NUNIAegirResourceManager__handleCloudCoverTextureExpired__block_invoke;
  block[3] = &unk_1E7FF8E50;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __59__NUNIAegirResourceManager__handleCloudCoverTextureExpired__block_invoke(uint64_t a1)
{
  v2 = NUNILoggingObjectForDomain(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BC940000, v2, OS_LOG_TYPE_DEFAULT, "Received cloud cover texture expired update. It will purge current textures.", v4, 2u);
  }

  return [*(a1 + 32) purgeAllCloudCoverTextures];
}

- (id)provideAtlasBacking:(id)backing
{
  v14 = *MEMORY[0x1E69E9840];
  backingCopy = backing;
  v4 = NUNIBundle();
  v5 = [v4 pathForResource:backingCopy ofType:@"art"];

  v6 = NUNILoggingObjectForDomain(0);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = backingCopy;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1BC940000, v7, OS_LOG_TYPE_DEFAULT, "providing artwork for %@ at %@", &v10, 0x16u);
    }

    v8 = [CLKUIAtlasBacking atlasBackingWithArt:v5 uuid:backingCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NUNIAegirResourceManager *)backingCopy provideAtlasBacking:v7];
    }

    v8 = 0;
  }

  return v8;
}

- (unint64_t)pixelFormat0For:(id)for
{
  v4 = +[MetalDeviceInfo sharedInfo];
  if ([v4 supportXR10ForDevice:self->_device])
  {
    v5 = 555;
  }

  else
  {
    v5 = 81;
  }

  return v5;
}

+ (void)sharedInstanceWithDisplayPixelFormat:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__sharedInstance + 32);
  v3[0] = 67109376;
  v3[1] = v2;
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_1BC940000, a2, OS_LOG_TYPE_ERROR, "AegirResourceManager: DisplayPixelFormat %d != %d", v3, 0xEu);
}

- (void)provideAtlasBacking:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BC940000, a2, OS_LOG_TYPE_ERROR, "AegirResourceManager: missing artwork for %@", &v2, 0xCu);
}

@end