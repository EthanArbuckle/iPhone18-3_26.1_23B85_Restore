@interface SBIconPreviousLocationTracker
- (void)captureLocationInfoForIcon:(id)icon inModel:(id)model;
@end

@implementation SBIconPreviousLocationTracker

- (void)captureLocationInfoForIcon:(id)icon inModel:(id)model
{
  iconCopy = icon;
  rootFolder = [model rootFolder];
  v7 = [rootFolder indexPathForIcon:iconCopy];
  if (v7)
  {
    v8 = [rootFolder folderContainingIndexPath:v7 relativeIndexPath:0];
    v9 = v8;
    if (v8 && v8 != rootFolder)
    {
      if (!self->_previousIconLocations)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        previousIconLocations = self->_previousIconLocations;
        self->_previousIconLocations = weakToStrongObjectsMapTable;
      }

      v12 = objc_alloc_init(SBIconPreviousLocationInfo);
      [(SBIconPreviousLocationInfo *)v12 setFolder:v9];
      displayName = [v9 displayName];
      [(SBIconPreviousLocationInfo *)v12 setFolderName:displayName];

      [(NSMapTable *)self->_previousIconLocations setObject:v12 forKey:iconCopy];
    }
  }

  else
  {
    v9 = 0;
  }
}

@end