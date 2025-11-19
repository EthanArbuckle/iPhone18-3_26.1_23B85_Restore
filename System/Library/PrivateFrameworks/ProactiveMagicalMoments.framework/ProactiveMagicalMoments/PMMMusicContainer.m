@interface PMMMusicContainer
- (PMMMusicContainer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPauseIfUnset;
- (void)setPlayingWithBundleId:(id)a3 trackIdentifier:(id)a4 playTime:(id)a5;
@end

@implementation PMMMusicContainer

- (void)setPauseIfUnset
{
  if (!self->_pauseTime)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    pauseTime = self->_pauseTime;
    self->_pauseTime = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (PMMMusicContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PMMMusicContainer;
  v5 = [(PMMMusicContainer *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackIdentifier"];
    trackIdentifier = v5->_trackIdentifier;
    v5->_trackIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playTime"];
    playTime = v5->_playTime;
    v5->_playTime = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pauseTime"];
    pauseTime = v5->_pauseTime;
    v5->_pauseTime = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleId = self->_bundleId;
  v5 = a3;
  [v5 encodeObject:bundleId forKey:@"bundleId"];
  [v5 encodeObject:self->_trackIdentifier forKey:@"trackIdentifier"];
  [v5 encodeObject:self->_playTime forKey:@"playTime"];
  [v5 encodeObject:self->_pauseTime forKey:@"pauseTime"];
}

- (void)setPlayingWithBundleId:(id)a3 trackIdentifier:(id)a4 playTime:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  bundleId = self->_bundleId;
  self->_bundleId = v8;
  v17 = v8;

  trackIdentifier = self->_trackIdentifier;
  self->_trackIdentifier = v9;
  v13 = v9;

  playTime = self->_playTime;
  self->_playTime = v10;
  v15 = v10;

  pauseTime = self->_pauseTime;
  self->_pauseTime = 0;
}

@end