@interface ACAccount
- (NSString)accountDSID;
@end

@implementation ACAccount

- (NSString)accountDSID
{
  ic_DSID = [(ACAccount *)self ic_DSID];
  stringValue = [ic_DSID stringValue];

  return stringValue;
}

@end