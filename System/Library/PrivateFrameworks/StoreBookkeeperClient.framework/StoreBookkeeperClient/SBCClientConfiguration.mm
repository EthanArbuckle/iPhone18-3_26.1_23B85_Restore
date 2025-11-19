@interface SBCClientConfiguration
- (SBCClientConfiguration)initWithCoder:(id)a3;
- (SBCClientConfiguration)initWithPlaybackPositionDomain:(id)a3;
- (id)description;
@end

@implementation SBCClientConfiguration

- (SBCClientConfiguration)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"SBCPlaybackPositionDomain"];
  v5 = [(SBCClientConfiguration *)self initWithPlaybackPositionDomain:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SBCClientConfiguration;
  v4 = [(SBCClientConfiguration *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_playbackPositionDomain];

  return v5;
}

- (SBCClientConfiguration)initWithPlaybackPositionDomain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBCClientConfiguration;
  v6 = [(SBCClientConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playbackPositionDomain, a3);
  }

  return v7;
}

@end