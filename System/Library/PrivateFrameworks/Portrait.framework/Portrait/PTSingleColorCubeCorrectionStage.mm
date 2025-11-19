@interface PTSingleColorCubeCorrectionStage
- (id)init:(id)a3 cubeSize:(unsigned int)a4 data:(const char *)a5;
- (int)load3DTextureFromData:(const char *)a3 cubeSize:(unsigned int)a4 metal:(id)a5 outTexture:(id *)a6;
@end

@implementation PTSingleColorCubeCorrectionStage

- (int)load3DTextureFromData:(const char *)a3 cubeSize:(unsigned int)a4 metal:(id)a5 outTexture:(id *)a6
{
  v9 = MEMORY[0x277CD7058];
  v10 = a5;
  v11 = objc_alloc_init(v9);
  if (!v11)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PTSingleColorCubeCorrectionStage load3DTextureFromData:v12 cubeSize:? metal:? outTexture:?];
    }
  }

  [v11 setTextureType:7];
  [v11 setWidth:a4];
  [v11 setHeight:a4];
  [v11 setDepth:a4];
  [v11 setPixelFormat:70];
  [v11 setUsage:1];
  v13 = [v10 newTextureWithDescriptor:v11];

  v14 = *a6;
  *a6 = v13;

  v15 = *a6;
  if (*a6)
  {
    memset(v18, 0, 24);
    v18[3] = a4;
    v18[4] = a4;
    v18[5] = a4;
    [v15 replaceRegion:v18 mipmapLevel:0 slice:0 withBytes:a3 bytesPerRow:4 * a4 bytesPerImage:4 * a4 * a4];
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

- (id)init:(id)a3 cubeSize:(unsigned int)a4 data:(const char *)a5
{
  v6 = *&a4;
  v8 = a3;
  v14.receiver = self;
  v14.super_class = PTSingleColorCubeCorrectionStage;
  v9 = [(PTSingleColorCubeCorrectionStage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (![(PTSingleColorCubeCorrectionStage *)v9 load3DTextureFromData:a5 cubeSize:v6 metal:v8 outTexture:&v9->_defaultCubeTexture])
    {
      v12 = v10;
      goto LABEL_8;
    }

    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTSingleColorCubeCorrectionStage init:v11 cubeSize:? data:?];
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (void)load3DTextureFromData:(os_log_t)log cubeSize:metal:outTexture:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "texDesc";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

@end