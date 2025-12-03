@interface ForegroundAppRecord
- (id)description;
- (void)setIsForeground:(BOOL)foreground;
- (void)setPolicyId:(unint64_t)id;
@end

@implementation ForegroundAppRecord

- (void)setIsForeground:(BOOL)foreground
{
  if (self->_isForeground != foreground || self->_stateChangeTime == 0.0)
  {
    self->_isForeground = foreground;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_stateChangeTime = v4;
  }
}

- (void)setPolicyId:(unint64_t)id
{
  if (self->_policyId != id)
  {
    self->_policyId = id;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_stateChangeTime = v4;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"appRecord %@ fg %d sess %d exploit yes/no %d/%d  policy %d connections %lld closed %lld", self->_bundleName, self->_isForeground, self->_foregroundSessionActivity, self->_countedAsExploitingOutrank, self->_countedAsNonExploitingOutrank, self->_policyId, self->_connectionCount, self->_closedConnectionCount];

  return v2;
}

@end