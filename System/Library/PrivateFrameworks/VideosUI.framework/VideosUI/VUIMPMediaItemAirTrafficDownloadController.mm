@interface VUIMPMediaItemAirTrafficDownloadController
- (VUIMPMediaItemAirTrafficDownloadController)initWithMediaItem:(id)item serialProcessingDispatchQueue:(id)queue;
- (VUIMPMediaItemAirTrafficDownloadController)initWithMediaItem:(id)item state:(id)state serialProcessingDispatchQueue:(id)queue;
- (void)_handleMediaLibraryDidChangeNotification:(id)notification;
- (void)dealloc;
@end

@implementation VUIMPMediaItemAirTrafficDownloadController

- (VUIMPMediaItemAirTrafficDownloadController)initWithMediaItem:(id)item serialProcessingDispatchQueue:(id)queue
{
  itemCopy = item;
  queueCopy = queue;
  v8 = [itemCopy valueForProperty:*MEMORY[0x1E696FA48]];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v10 = objc_alloc_init(VUIMPMediaItemDownloadControllerState);
    [(VUIMPMediaItemDownloadControllerState *)v10 setStatus:0];
    v17.receiver = self;
    v17.super_class = VUIMPMediaItemAirTrafficDownloadController;
    v11 = [(VUIMPMediaItemDownloadController *)&v17 initWithMediaItem:itemCopy state:v10 serialProcessingDispatchQueue:queueCopy];
    if (v11)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = *MEMORY[0x1E696FBA8];
      mediaLibrary = [itemCopy mediaLibrary];
      [defaultCenter addObserver:v11 selector:sel__handleMediaLibraryDidChangeNotification_ name:v13 object:mediaLibrary];
    }

    self = v11;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VUIMPMediaItemAirTrafficDownloadController)initWithMediaItem:(id)item state:(id)state serialProcessingDispatchQueue:(id)queue
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The %@ initializer is not available.", v8}];

  return 0;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIMPMediaItemAirTrafficDownloadController;
  [(VUIMPMediaItemAirTrafficDownloadController *)&v4 dealloc];
}

- (void)_handleMediaLibraryDidChangeNotification:(id)notification
{
  mediaItem = [(VUIMPMediaItemDownloadController *)self mediaItem];
  v4 = [mediaItem valueForProperty:*MEMORY[0x1E696FA48]];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = -1.0;
  }

  if (bOOLValue)
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
  [(VUIMPMediaItemDownloadControllerState *)v8 setDownloadSucceeded:bOOLValue ^ 1u];
  [(VUIMPMediaItemDownloadController *)self _setState:v8];
}

@end