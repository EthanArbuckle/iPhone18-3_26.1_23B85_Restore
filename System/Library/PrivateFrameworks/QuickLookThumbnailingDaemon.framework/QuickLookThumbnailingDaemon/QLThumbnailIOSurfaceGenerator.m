@interface QLThumbnailIOSurfaceGenerator
+ (id)sharedInstance;
- (void)ioSurfaceWithSize:(CGSize)a3 completionHandler:(id)a4;
@end

@implementation QLThumbnailIOSurfaceGenerator

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[QLThumbnailIOSurfaceGenerator sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __47__QLThumbnailIOSurfaceGenerator_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)ioSurfaceWithSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v19[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v18[0] = *MEMORY[0x277CD2928];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  v19[0] = v7;
  v18[1] = *MEMORY[0x277CD28D0];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  v9 = *MEMORY[0x277CD28B0];
  v19[1] = v8;
  v19[2] = &unk_2873E95E8;
  v10 = *MEMORY[0x277CD28D8];
  v18[2] = v9;
  v18[3] = v10;
  v19[3] = &unk_2873E9600;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v12 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v11];
  if (!v12)
  {
    v13 = MEMORY[0x277D43EF8];
    v14 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_2615D3000, v14, OS_LOG_TYPE_FAULT, "Could not generate IOSurface for thumbnail generation with properties %@ #Thumbnail", &v16, 0xCu);
    }
  }

  v6[2](v6, v12, 0);

  v15 = *MEMORY[0x277D85DE8];
}

@end