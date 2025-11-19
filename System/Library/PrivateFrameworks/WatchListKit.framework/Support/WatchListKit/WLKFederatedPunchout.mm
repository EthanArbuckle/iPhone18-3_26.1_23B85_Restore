@interface WLKFederatedPunchout
- (id)expiry;
- (int64_t)failureReason;
- (unint64_t)ttl;
- (void)setFailureReason:(int64_t)a3;
- (void)setTtl:(unint64_t)a3;
@end

@implementation WLKFederatedPunchout

- (unint64_t)ttl
{
  v2 = objc_getAssociatedObject(self, WLKFederatedPunchoutReporterAdditionsKeyTTL);
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setTtl:(unint64_t)a3
{
  v4 = WLKFederatedPunchoutReporterAdditionsKeyTTL;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  objc_setAssociatedObject(self, v4, v5, 1);
}

- (int64_t)failureReason
{
  v2 = objc_getAssociatedObject(self, WLKFederatedPunchoutReporterAdditionsKeyFailureReason);
  v3 = [v2 integerValue];

  return v3;
}

- (void)setFailureReason:(int64_t)a3
{
  v4 = WLKFederatedPunchoutReporterAdditionsKeyFailureReason;
  v5 = [NSNumber numberWithInteger:a3];
  objc_setAssociatedObject(self, v4, v5, 1);
}

- (id)expiry
{
  v3 = [NSDate alloc];
  v4 = [(WLKFederatedPunchout *)self ttl];
  v5 = [(WLKFederatedPunchout *)self punchoutTime];
  v6 = [v3 initWithTimeInterval:v5 sinceDate:v4];

  return v6;
}

@end