@interface IDSPseudonym
- (BOOL)csd_isExpired;
@end

@implementation IDSPseudonym

- (BOOL)csd_isExpired
{
  properties = [(IDSPseudonym *)self properties];
  v3 = [properties hasBeenExpiredForAtLeast:0.0];

  return v3;
}

@end