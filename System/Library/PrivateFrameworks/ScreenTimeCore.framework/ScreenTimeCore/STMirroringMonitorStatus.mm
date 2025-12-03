@interface STMirroringMonitorStatus
- (STMirroringMonitorStatus)initWithCoder:(id)coder;
- (STMirroringMonitorStatus)initWithInstanceExists:(BOOL)exists instanceRunning:(BOOL)running;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMirroringMonitorStatus

- (STMirroringMonitorStatus)initWithInstanceExists:(BOOL)exists instanceRunning:(BOOL)running
{
  v7.receiver = self;
  v7.super_class = STMirroringMonitorStatus;
  result = [(STMirroringMonitorStatus *)&v7 init];
  if (result)
  {
    result->_exists = exists;
    result->_running = running;
  }

  return result;
}

- (STMirroringMonitorStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STMirroringMonitorStatus;
  v5 = [(STMirroringMonitorStatus *)&v7 init];
  if (v5)
  {
    v5->_exists = [coderCopy decodeBoolForKey:@"exists"];
    v5->_running = [coderCopy decodeBoolForKey:@"running"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  exists = self->_exists;
  coderCopy = coder;
  [coderCopy encodeBool:exists forKey:@"exists"];
  [coderCopy encodeBool:self->_running forKey:@"running"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  exists = self->_exists;
  running = self->_running;

  return [v4 initWithInstanceExists:exists instanceRunning:running];
}

@end