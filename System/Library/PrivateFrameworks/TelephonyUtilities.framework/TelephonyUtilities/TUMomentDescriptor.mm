@interface TUMomentDescriptor
- (NSURL)photoViewingAppURL;
- (TUMomentDescriptor)init;
- (TUMomentDescriptor)initWithCoder:(id)coder;
- (TUMomentDescriptor)initWithPhotosAppAssetIdentifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUMomentDescriptor

- (TUMomentDescriptor)initWithPhotosAppAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TUMomentDescriptor;
  v6 = [(TUMomentDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photosAssetIdentifier, identifier);
  }

  return v7;
}

- (TUMomentDescriptor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUMomentDescriptor.m" lineNumber:25 description:{@"%s is unavailable", "-[TUMomentDescriptor init]"}];

  return 0;
}

- (NSURL)photoViewingAppURL
{
  v2 = MEMORY[0x1E696AEC0];
  photosAssetIdentifier = [(TUMomentDescriptor *)self photosAssetIdentifier];
  v4 = [v2 stringWithFormat:@"photos://asset?identifier=%@&albumname=camera-roll", photosAssetIdentifier];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  photosAssetIdentifier = [(TUMomentDescriptor *)self photosAssetIdentifier];
  [v3 appendFormat:@" pAI=%@", photosAssetIdentifier];

  [v3 appendString:@">"];

  return v3;
}

- (TUMomentDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_photosAssetIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(TUMomentDescriptor *)self initWithPhotosAppAssetIdentifier:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  photosAssetIdentifier = [(TUMomentDescriptor *)self photosAssetIdentifier];
  v5 = NSStringFromSelector(sel_photosAssetIdentifier);
  [coderCopy encodeObject:photosAssetIdentifier forKey:v5];
}

@end