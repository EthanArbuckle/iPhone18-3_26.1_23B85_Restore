@interface PRSWallpaperObserverSnapshotUpdate
- (NSString)description;
- (PRSWallpaperObserverSnapshotUpdate)initWithBSXPCCoder:(id)a3;
- (PRSWallpaperObserverSnapshotUpdate)initWithPath:(id)a3 snapshotType:(id)a4;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRSWallpaperObserverSnapshotUpdate

- (PRSWallpaperObserverSnapshotUpdate)initWithPath:(id)a3 snapshotType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PRSWallpaperObserverSnapshotUpdate;
  v9 = [(PRSWallpaperObserverSnapshotUpdate *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    snapshotType = v9->_snapshotType;
    v9->_snapshotType = v10;

    objc_storeStrong(&v9->_path, a3);
  }

  return v9;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  path = self->_path;
  v5 = a3;
  [v5 encodeObject:path forKey:@"p"];
  [v5 encodeObject:self->_snapshotType forKey:@"t"];
}

- (PRSWallpaperObserverSnapshotUpdate)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PRSWallpaperObserverSnapshotUpdate;
  v5 = [(PRSWallpaperObserverSnapshotUpdate *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"t"];
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
  v7 = [(PFServerPosterPath *)self->_path identity];
  v8 = v7;
  if (snapshotType)
  {
    [v4 stringWithFormat:@"<%@: path=(%@) snapshotType=(%@)>", v6, v7, self->_snapshotType];
  }

  else
  {
    [v4 stringWithFormat:@"<%@: path=(%@)>", v6, v7, v11];
  }
  v9 = ;

  return v9;
}

@end