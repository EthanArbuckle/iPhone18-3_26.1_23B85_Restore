@interface VUIMPMediaItemAirTrafficDownloadController
- (VUIMPMediaItemAirTrafficDownloadController)initWithMediaItem:(id)a3 serialProcessingDispatchQueue:(id)a4;
- (VUIMPMediaItemAirTrafficDownloadController)initWithMediaItem:(id)a3 state:(id)a4 serialProcessingDispatchQueue:(id)a5;
- (void)_handleMediaLibraryDidChangeNotification:(id)a3;
- (void)dealloc;
@end

@implementation VUIMPMediaItemAirTrafficDownloadController

- (VUIMPMediaItemAirTrafficDownloadController)initWithMediaItem:(id)a3 serialProcessingDispatchQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 valueForProperty:*MEMORY[0x1E696FA48]];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = objc_alloc_init(VUIMPMediaItemDownloadControllerState);
    [(VUIMPMediaItemDownloadControllerState *)v10 setStatus:0];
    v17.receiver = self;
    v17.super_class = VUIMPMediaItemAirTrafficDownloadController;
    v11 = [(VUIMPMediaItemDownloadController *)&v17 initWithMediaItem:v6 state:v10 serialProcessingDispatchQueue:v7];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = *MEMORY[0x1E696FBA8];
      v14 = [v6 mediaLibrary];
      [v12 addObserver:v11 selector:sel__handleMediaLibraryDidChangeNotification_ name:v13 object:v14];
    }

    self = v11;

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (VUIMPMediaItemAirTrafficDownloadController)initWithMediaItem:(id)a3 state:(id)a4 serialProcessingDispatchQueue:(id)a5
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The %@ initializer is not available.", v8}];

  return 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIMPMediaItemAirTrafficDownloadController;
  [(VUIMPMediaItemAirTrafficDownloadController *)&v4 dealloc];
}

- (void)_handleMediaLibraryDidChangeNotification:(id)a3
{
  v9 = [(VUIMPMediaItemDownloadController *)self mediaItem];
  v4 = [v9 valueForProperty:*MEMORY[0x1E696FA48]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = -1.0;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  v8 = objc_alloc_init(VUIMPMediaItemDownloadControllerState);
  [(VUIMPMediaItemDownloadControllerState *)v8 setStatus:v7];
  [(VUIMPMediaItemDownloadControllerState *)v8 setDownloadProgress:v6];
  [(VUIMPMediaItemDownloadControllerState *)v8 setDownloadSucceeded:v5 ^ 1u];
  [(VUIMPMediaItemDownloadController *)self _setState:v8];
}

@end