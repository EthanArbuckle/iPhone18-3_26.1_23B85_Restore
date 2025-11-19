@interface NUNIRenderer
+ (id)sharedInstanceWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5;
+ (void)_deallocInstanceWithPixelFormat:(unint64_t)a3 rendererStyle:(unint64_t)a4;
- (NUNIRenderer)initWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5;
- (void)_asyncDeallocInstance;
- (void)dealloc;
@end

@implementation NUNIRenderer

+ (id)sharedInstanceWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5
{
  v8 = a4;
  v9 = a1;
  objc_sync_enter(v9);
  if (a5 == 2)
  {
    v10 = [[NUNIAegirRenderer alloc] initWithPixelFormat:a3 textureSuffix:v8 rendererStyle:2];
    v11 = +[_TtC9WeatherUI14PreferencePane aegirRenderingPreferencePane];
    v12 = [MEMORY[0x1E695E000] standardUserDefaults];
    v13 = [v12 objectForKey:@"AegirRenderingReset"];

    if (!v13)
    {
      [v11 reset];
      v14 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v14 setObject:MEMORY[0x1E695E118] forKey:@"AegirRenderingReset"];
    }

    [(NUNIAegirRenderer *)v10 setRendererOptions:v11];
  }

  else
  {
    v10 = 0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [0 setObject:v10 forKeyedSubscript:v15];

  objc_sync_exit(v9);

  return v10;
}

+ (void)_deallocInstanceWithPixelFormat:(unint64_t)a3 rendererStyle:(unint64_t)a4
{
  obj = a1;
  objc_sync_enter(obj);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [0 objectForKeyedSubscript:v5];

  [v6 discard];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [0 setObject:0 forKeyedSubscript:v7];

  objc_sync_exit(obj);
}

- (NUNIRenderer)initWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = NUNIRenderer;
  v7 = [(NUNIRenderer *)&v11 init:a3];
  v8 = v7;
  if (v7)
  {
    v7->_rendererStyle = a5;
    v7->_pixelFormat = a3;
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v8 selector:sel__asyncDeallocInstance name:*MEMORY[0x1E695B4C8] object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695B4C8] object:0];

  v4.receiver = self;
  v4.super_class = NUNIRenderer;
  [(NUNIRenderer *)&v4 dealloc];
}

- (void)_asyncDeallocInstance
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = objc_opt_class();
    v4 = [(NUNIRenderer *)self pixelFormat];
    v5 = [(NUNIRenderer *)self rendererStyle];

    [v3 _deallocInstanceWithPixelFormat:v4 rendererStyle:v5];
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