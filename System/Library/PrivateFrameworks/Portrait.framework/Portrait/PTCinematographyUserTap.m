@interface PTCinematographyUserTap
- (NSNumber)trackNumber;
- (PTCinematographyUserTap)initWithTime:(id *)a3 tappedDetection:(id)a4 strong:(BOOL)a5 group:(BOOL)a6;
- (id)focusIdentifier;
- (int64_t)groupIdentifier;
- (int64_t)trackIdentifier;
@end

@implementation PTCinematographyUserTap

- (PTCinematographyUserTap)initWithTime:(id *)a3 tappedDetection:(id)a4 strong:(BOOL)a5 group:(BOOL)a6
{
  v6 = a6;
  v11 = a4;
  v12 = [v11 trackNumber];

  if (v12)
  {
    v20.receiver = self;
    v20.super_class = PTCinematographyUserTap;
    v13 = [(PTCinematographyUserTap *)&v20 init];
    v14 = v13;
    if (v13)
    {
      v15 = *&a3->var0;
      *(v13 + 5) = a3->var3;
      *(v13 + 24) = v15;
      objc_storeStrong(v13 + 2, a4);
      v14[8] = a5;
      v16 = v6 && PTGroupIDIsValid([v11 groupIdentifier]);
      v14[9] = v16;
    }

    self = v14;
    v18 = self;
  }

  else
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyUserTap initWithTime:v17 tappedDetection:? strong:? group:?];
    }

    v18 = 0;
  }

  return v18;
}

- (id)focusIdentifier
{
  v2 = [(PTCinematographyUserTap *)self detection];
  v3 = [v2 focusIdentifier];

  return v3;
}

- (int64_t)trackIdentifier
{
  v2 = [(PTCinematographyUserTap *)self detection];
  v3 = [v2 trackIdentifier];

  return v3;
}

- (NSNumber)trackNumber
{
  v2 = [(PTCinematographyUserTap *)self detection];
  v3 = [v2 trackNumber];

  return v3;
}

- (int64_t)groupIdentifier
{
  v2 = [(PTCinematographyUserTap *)self detection];
  v3 = [v2 groupIdentifier];

  return v3;
}

@end