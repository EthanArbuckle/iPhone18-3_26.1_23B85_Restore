@interface _MapEngineRenderQueueSource
- (_MapEngineRenderQueueSource)initWithEngine:(void *)engine;
- (void)renderQueueForTimestamp:(double)timestamp;
@end

@implementation _MapEngineRenderQueueSource

- (void)renderQueueForTimestamp:(double)timestamp
{
  v11 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v3 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315650;
    v6 = "false";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDMapEngine.mm";
    v9 = 1024;
    v10 = 2569;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "Unsupported: Assertion with expression - %s : Failed in file - %s line - %i", &v5, 0x1Cu);
  }

  return 0;
}

- (_MapEngineRenderQueueSource)initWithEngine:(void *)engine
{
  v8.receiver = self;
  v8.super_class = _MapEngineRenderQueueSource;
  v4 = [(_MapEngineRenderQueueSource *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_mapEngine = engine;
    v6 = v4;
  }

  return v5;
}

@end