@interface BRiWorkSharingInfo
- (BRiWorkSharingInfo)initWithCoder:(id)coder;
@end

@implementation BRiWorkSharingInfo

- (BRiWorkSharingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BRiWorkSharingInfo *)self init];
  if (v5)
  {
    v5->_options = [coderCopy decodeInt32ForKey:@"options"];
  }

  return v5;
}

@end