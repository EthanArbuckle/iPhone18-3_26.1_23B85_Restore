@interface PRSWallpaperObserverPathUpdate
- (NSString)description;
- (PRSWallpaperObserverPathUpdate)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRSWallpaperObserverPathUpdate

- (void)encodeWithBSXPCCoder:(id)a3
{
  path = self->_path;
  v5 = a3;
  [v5 encodeObject:path forKey:@"p"];
  [v5 encodeObject:self->_identity forKey:@"i"];
  [v5 encodeUInt64:self->_locations forKey:@"l"];
  [v5 encodeUInt64:self->_changed forKey:@"c"];
}

- (PRSWallpaperObserverPathUpdate)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PRSWallpaperObserverPathUpdate;
  v5 = [(PRSWallpaperObserverPathUpdate *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identity = v5->_identity;
    v5->_identity = v8;

    v5->_locations = [v4 decodeUInt64ForKey:@"l"];
    v5->_changed = [v4 decodeUInt64ForKey:@"c"];
  }

  return v5;
}

- (NSString)description
{
  path = self->_path;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = PRSWallpaperObserverLocationsDescription(self->_locations);
  v8 = PRSWallpaperObserverLocationsDescription(self->_changed);
  v9 = v8;
  if (path)
  {
    v10 = [(PFServerPosterPath *)self->_path identity];
    v11 = [v4 stringWithFormat:@"<%@: locs=(%@) changed=(%@) path=%@>", v6, v7, v9, v10];
  }

  else
  {
    v11 = [v4 stringWithFormat:@"<%@: locs=(%@) changed=(%@) identity=%@>", v6, v7, v8, self->_identity];
  }

  return v11;
}

@end