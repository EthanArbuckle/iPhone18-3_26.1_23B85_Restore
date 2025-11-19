@interface PTCinematographyStreamOptions
- (CGSize)fixedFocusNormalizedRectSize;
- (PTCinematographyStreamOptions)init;
- (PTCinematographyStreamOptions)initWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation PTCinematographyStreamOptions

- (PTCinematographyStreamOptions)init
{
  v3.receiver = self;
  v3.super_class = PTCinematographyStreamOptions;
  result = [(PTCinematographyStreamOptions *)&v3 init];
  if (result)
  {
    result->_snapshotPolicy = 0;
    result->_overrideFrameSnapshotPolicy = 0;
  }

  return result;
}

- (PTCinematographyStreamOptions)initWithOptions:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PTCinematographyStreamOptions;
  v5 = [(PTCinematographyStreamOptions *)&v12 init];
  if (v5)
  {
    v5->_version = [v4 version];
    [v4 fixedFocusNormalizedRectSize];
    v5->_fixedFocusNormalizedRectSize.width = v6;
    v5->_fixedFocusNormalizedRectSize.height = v7;
    v8 = [v4 cinematographyParameters];
    v9 = [v8 copy];
    cinematographyParameters = v5->_cinematographyParameters;
    v5->_cinematographyParameters = v9;

    v5->_snapshotPolicy = [v4 _snapshotPolicy];
    v5->_overrideFrameSnapshotPolicy = [v4 _overrideFrameSnapshotPolicy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PTCinematographyStreamOptions alloc];

  return [(PTCinematographyStreamOptions *)v4 initWithOptions:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PTCinematographyStreamOptions alloc];

  return [(PTCinematographyStreamOptions *)v4 initWithOptions:self];
}

- (CGSize)fixedFocusNormalizedRectSize
{
  objc_copyStruct(v4, &self->_fixedFocusNormalizedRectSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end