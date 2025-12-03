@interface PMMMusicContainer
- (PMMMusicContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setPauseIfUnset;
- (void)setPlayingWithBundleId:(id)id trackIdentifier:(id)identifier playTime:(id)time;
@end

@implementation PMMMusicContainer

- (void)setPauseIfUnset
{
  if (!self->_pauseTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    pauseTime = self->_pauseTime;
    self->_pauseTime = date;

    MEMORY[0x2821F96F8]();
  }
}

- (PMMMusicContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PMMMusicContainer;
  v5 = [(PMMMusicContainer *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackIdentifier"];
    trackIdentifier = v5->_trackIdentifier;
    v5->_trackIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playTime"];
    playTime = v5->_playTime;
    v5->_playTime = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pauseTime"];
    pauseTime = v5->_pauseTime;
    v5->_pauseTime = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleId = self->_bundleId;
  coderCopy = coder;
  [coderCopy encodeObject:bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:self->_trackIdentifier forKey:@"trackIdentifier"];
  [coderCopy encodeObject:self->_playTime forKey:@"playTime"];
  [coderCopy encodeObject:self->_pauseTime forKey:@"pauseTime"];
}

- (void)setPlayingWithBundleId:(id)id trackIdentifier:(id)identifier playTime:(id)time
{
  idCopy = id;
  identifierCopy = identifier;
  timeCopy = time;
  bundleId = self->_bundleId;
  self->_bundleId = idCopy;
  v17 = idCopy;

  trackIdentifier = self->_trackIdentifier;
  self->_trackIdentifier = identifierCopy;
  v13 = identifierCopy;

  playTime = self->_playTime;
  self->_playTime = timeCopy;
  v15 = timeCopy;

  pauseTime = self->_pauseTime;
  self->_pauseTime = 0;
}

@end