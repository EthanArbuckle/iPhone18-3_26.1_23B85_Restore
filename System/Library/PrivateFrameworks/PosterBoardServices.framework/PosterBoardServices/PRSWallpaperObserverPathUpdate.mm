@interface PRSWallpaperObserverPathUpdate
- (NSString)description;
- (PRSWallpaperObserverPathUpdate)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRSWallpaperObserverPathUpdate

- (void)encodeWithBSXPCCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"p"];
  [coderCopy encodeObject:self->_identity forKey:@"i"];
  [coderCopy encodeUInt64:self->_locations forKey:@"l"];
  [coderCopy encodeUInt64:self->_changed forKey:@"c"];
}

- (PRSWallpaperObserverPathUpdate)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PRSWallpaperObserverPathUpdate;
  v5 = [(PRSWallpaperObserverPathUpdate *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identity = v5->_identity;
    v5->_identity = v8;

    v5->_locations = [coderCopy decodeUInt64ForKey:@"l"];
    v5->_changed = [coderCopy decodeUInt64ForKey:@"c"];
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
    identity = [(PFServerPosterPath *)self->_path identity];
    v11 = [v4 stringWithFormat:@"<%@: locs=(%@) changed=(%@) path=%@>", v6, v7, v9, identity];
  }

  else
  {
    v11 = [v4 stringWithFormat:@"<%@: locs=(%@) changed=(%@) identity=%@>", v6, v7, v8, self->_identity];
  }

  return v11;
}

@end