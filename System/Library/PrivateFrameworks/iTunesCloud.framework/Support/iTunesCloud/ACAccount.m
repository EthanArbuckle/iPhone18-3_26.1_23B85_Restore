@interface ACAccount
- (NSString)accountDSID;
@end

@implementation ACAccount

- (NSString)accountDSID
{
  v2 = [(ACAccount *)self ic_DSID];
  v3 = [v2 stringValue];

  return v3;
}

@end