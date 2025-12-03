@interface PTCinematographyUserTap
- (NSNumber)trackNumber;
- (PTCinematographyUserTap)initWithTime:(id *)time tappedDetection:(id)detection strong:(BOOL)strong group:(BOOL)group;
- (id)focusIdentifier;
- (int64_t)groupIdentifier;
- (int64_t)trackIdentifier;
@end

@implementation PTCinematographyUserTap

- (PTCinematographyUserTap)initWithTime:(id *)time tappedDetection:(id)detection strong:(BOOL)strong group:(BOOL)group
{
  groupCopy = group;
  detectionCopy = detection;
  trackNumber = [detectionCopy trackNumber];

  if (trackNumber)
  {
    v20.receiver = self;
    v20.super_class = PTCinematographyUserTap;
    v13 = [(PTCinematographyUserTap *)&v20 init];
    v14 = v13;
    if (v13)
    {
      v15 = *&time->var0;
      *(v13 + 5) = time->var3;
      *(v13 + 24) = v15;
      objc_storeStrong(v13 + 2, detection);
      v14[8] = strong;
      v16 = groupCopy && PTGroupIDIsValid([detectionCopy groupIdentifier]);
      v14[9] = v16;
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyUserTap initWithTime:v17 tappedDetection:? strong:? group:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)focusIdentifier
{
  detection = [(PTCinematographyUserTap *)self detection];
  focusIdentifier = [detection focusIdentifier];

  return focusIdentifier;
}

- (int64_t)trackIdentifier
{
  detection = [(PTCinematographyUserTap *)self detection];
  trackIdentifier = [detection trackIdentifier];

  return trackIdentifier;
}

- (NSNumber)trackNumber
{
  detection = [(PTCinematographyUserTap *)self detection];
  trackNumber = [detection trackNumber];

  return trackNumber;
}

- (int64_t)groupIdentifier
{
  detection = [(PTCinematographyUserTap *)self detection];
  groupIdentifier = [detection groupIdentifier];

  return groupIdentifier;
}

@end