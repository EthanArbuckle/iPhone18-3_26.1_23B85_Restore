@interface NUNIRenderer
+ (id)sharedInstanceWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style;
+ (void)_deallocInstanceWithPixelFormat:(unint64_t)format rendererStyle:(unint64_t)style;
- (NUNIRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style;
- (void)_asyncDeallocInstance;
- (void)dealloc;
@end

@implementation NUNIRenderer

+ (id)sharedInstanceWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style
{
  suffixCopy = suffix;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (style == 2)
  {
    v10 = [[NUNIAegirRenderer alloc] initWithPixelFormat:format textureSuffix:suffixCopy rendererStyle:2];
    v11 = +[_TtC9WeatherUI14PreferencePane aegirRenderingPreferencePane];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v13 = [standardUserDefaults objectForKey:@"AegirRenderingReset"];

    if (!v13)
    {
      [v11 reset];
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults2 setObject:MEMORY[0x1E695E118] forKey:@"AegirRenderingReset"];
    }

    [(NUNIAegirRenderer *)v10 setRendererOptions:v11];
  }

  else
  {
    v10 = 0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:format];
  [0 setObject:v10 forKeyedSubscript:v15];

  objc_sync_exit(selfCopy);

  return v10;
}

+ (void)_deallocInstanceWithPixelFormat:(unint64_t)format rendererStyle:(unint64_t)style
{
  obj = self;
  objc_sync_enter(obj);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:format];
  v6 = [0 objectForKeyedSubscript:v5];

  [v6 discard];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:format];
  [0 setObject:0 forKeyedSubscript:v7];

  objc_sync_exit(obj);
}

- (NUNIRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style
{
  v11.receiver = self;
  v11.super_class = NUNIRenderer;
  v7 = [(NUNIRenderer *)&v11 init:format];
  v8 = v7;
  if (v7)
  {
    v7->_rendererStyle = style;
    v7->_pixelFormat = format;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__asyncDeallocInstance name:*MEMORY[0x1E695B4C8] object:0];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695B4C8] object:0];

  v4.receiver = self;
  v4.super_class = NUNIRenderer;
  [(NUNIRenderer *)&v4 dealloc];
}

- (void)_asyncDeallocInstance
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = objc_opt_class();
    pixelFormat = [(NUNIRenderer *)self pixelFormat];
    rendererStyle = [(NUNIRenderer *)self rendererStyle];

    [v3 _deallocInstanceWithPixelFormat:pixelFormat rendererStyle:rendererStyle];
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__NUNIRenderer__asyncDeallocInstance__block_invoke;
    block[3] = &unk_1E7FF8F18;
    objc_copyWeak(&v7, &location);
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __37__NUNIRenderer__asyncDeallocInstance__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [objc_opt_class() _deallocInstanceWithPixelFormat:objc_msgSend(v2 rendererStyle:"pixelFormat"), objc_msgSend(v2, "rendererStyle")];
    WeakRetained = v2;
  }
}

@end