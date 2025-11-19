@interface SBIconPreviousLocationTracker
- (void)captureLocationInfoForIcon:(id)a3 inModel:(id)a4;
@end

@implementation SBIconPreviousLocationTracker

- (void)captureLocationInfoForIcon:(id)a3 inModel:(id)a4
{
  v14 = a3;
  v6 = [a4 rootFolder];
  v7 = [v6 indexPathForIcon:v14];
  if (v7)
  {
    v8 = [v6 folderContainingIndexPath:v7 relativeIndexPath:0];
    v9 = v8;
    if (v8 && v8 != v6)
    {
      if (!self->_previousIconLocations)
      {
        v10 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        previousIconLocations = self->_previousIconLocations;
        self->_previousIconLocations = v10;
      }

      v12 = objc_alloc_init(SBIconPreviousLocationInfo);
      [(SBIconPreviousLocationInfo *)v12 setFolder:v9];
      v13 = [v9 displayName];
      [(SBIconPreviousLocationInfo *)v12 setFolderName:v13];

      [(NSMapTable *)self->_previousIconLocations setObject:v12 forKey:v14];
    }
  }

  else
  {
    v9 = 0;
  }
}

@end