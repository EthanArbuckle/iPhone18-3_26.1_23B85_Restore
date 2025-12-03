@interface WLKFederatedPunchout
- (id)expiry;
- (int64_t)failureReason;
- (unint64_t)ttl;
- (void)setFailureReason:(int64_t)reason;
- (void)setTtl:(unint64_t)ttl;
@end

@implementation WLKFederatedPunchout

- (unint64_t)ttl
{
  v2 = objc_getAssociatedObject(self, WLKFederatedPunchoutReporterAdditionsKeyTTL);
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setTtl:(unint64_t)ttl
{
  v4 = WLKFederatedPunchoutReporterAdditionsKeyTTL;
  v5 = [NSNumber numberWithUnsignedInteger:ttl];
  objc_setAssociatedObject(self, v4, v5, 1);
}

- (int64_t)failureReason
{
  v2 = objc_getAssociatedObject(self, WLKFederatedPunchoutReporterAdditionsKeyFailureReason);
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setFailureReason:(int64_t)reason
{
  v4 = WLKFederatedPunchoutReporterAdditionsKeyFailureReason;
  v5 = [NSNumber numberWithInteger:reason];
  objc_setAssociatedObject(self, v4, v5, 1);
}

- (id)expiry
{
  v3 = [NSDate alloc];
  v4 = [(WLKFederatedPunchout *)self ttl];
  punchoutTime = [(WLKFederatedPunchout *)self punchoutTime];
  v6 = [v3 initWithTimeInterval:punchoutTime sinceDate:v4];

  return v6;
}

@end