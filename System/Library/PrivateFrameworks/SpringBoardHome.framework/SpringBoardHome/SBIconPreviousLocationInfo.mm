@interface SBIconPreviousLocationInfo
- (SBFolder)folder;
@end

@implementation SBIconPreviousLocationInfo

- (SBFolder)folder
{
  WeakRetained = objc_loadWeakRetained(&self->_folder);

  return WeakRetained;
}

@end