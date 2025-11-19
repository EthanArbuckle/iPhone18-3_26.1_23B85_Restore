@interface TUMomentDescriptor
- (NSURL)photoViewingAppURL;
- (TUMomentDescriptor)init;
- (TUMomentDescriptor)initWithCoder:(id)a3;
- (TUMomentDescriptor)initWithPhotosAppAssetIdentifier:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUMomentDescriptor

- (TUMomentDescriptor)initWithPhotosAppAssetIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUMomentDescriptor;
  v6 = [(TUMomentDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photosAssetIdentifier, a3);
  }

  return v7;
}

- (TUMomentDescriptor)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUMomentDescriptor.m" lineNumber:25 description:{@"%s is unavailable", "-[TUMomentDescriptor init]"}];

  return 0;
}

- (NSURL)photoViewingAppURL
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(TUMomentDescriptor *)self photosAssetIdentifier];
  v4 = [v2 stringWithFormat:@"photos://asset?identifier=%@&albumname=camera-roll", v3];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUMomentDescriptor *)self photosAssetIdentifier];
  [v3 appendFormat:@" pAI=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (TUMomentDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_photosAssetIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(TUMomentDescriptor *)self initWithPhotosAppAssetIdentifier:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(TUMomentDescriptor *)self photosAssetIdentifier];
  v5 = NSStringFromSelector(sel_photosAssetIdentifier);
  [v4 encodeObject:v6 forKey:v5];
}

@end