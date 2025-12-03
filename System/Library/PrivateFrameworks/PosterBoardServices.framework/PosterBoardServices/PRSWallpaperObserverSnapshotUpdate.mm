@interface PRSWallpaperObserverSnapshotUpdate
- (NSString)description;
- (PRSWallpaperObserverSnapshotUpdate)initWithBSXPCCoder:(id)coder;
- (PRSWallpaperObserverSnapshotUpdate)initWithPath:(id)path snapshotType:(id)type;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRSWallpaperObserverSnapshotUpdate

- (PRSWallpaperObserverSnapshotUpdate)initWithPath:(id)path snapshotType:(id)type
{
  pathCopy = path;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = PRSWallpaperObserverSnapshotUpdate;
  v9 = [(PRSWallpaperObserverSnapshotUpdate *)&v13 init];
  if (v9)
  {
    v10 = [typeCopy copy];
    snapshotType = v9->_snapshotType;
    v9->_snapshotType = v10;

    objc_storeStrong(&v9->_path, path);
  }

  return v9;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"p"];
  [coderCopy encodeObject:self->_snapshotType forKey:@"t"];
}

- (PRSWallpaperObserverSnapshotUpdate)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PRSWallpaperObserverSnapshotUpdate;
  v5 = [(PRSWallpaperObserverSnapshotUpdate *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    snapshotType = v5->_snapshotType;
    v5->_snapshotType = v8;
  }

  return v5;
}

- (NSString)description
{
  snapshotType = self->_snapshotType;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  identity = [(PFServerPosterPath *)self->_path identity];
  v8 = identity;
  if (snapshotType)
  {
    [v4 stringWithFormat:@"<%@: path=(%@) snapshotType=(%@)>", v6, identity, self->_snapshotType];
  }

  else
  {
    [v4 stringWithFormat:@"<%@: path=(%@)>", v6, identity, v11];
  }
  v9 = ;

  return v9;
}

@end