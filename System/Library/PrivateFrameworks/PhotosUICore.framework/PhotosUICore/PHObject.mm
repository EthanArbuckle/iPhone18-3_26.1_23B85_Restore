@interface PHObject
@end

@implementation PHObject

void __68__PHObject_PhotosUICore___px_initializeUserInterfaceIdentifierCache__block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  v1 = _PXUserInterfaceIdentifierCache;
  _PXUserInterfaceIdentifierCache = v0;

  _PXUserInterfaceIdentifierCacheLock = 0;
}

@end