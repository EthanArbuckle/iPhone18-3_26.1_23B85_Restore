@interface BRiWorkSharingInfo
- (BRiWorkSharingInfo)initWithCoder:(id)a3;
@end

@implementation BRiWorkSharingInfo

- (BRiWorkSharingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BRiWorkSharingInfo *)self init];
  if (v5)
  {
    v5->_options = [v4 decodeInt32ForKey:@"options"];
  }

  return v5;
}

@end