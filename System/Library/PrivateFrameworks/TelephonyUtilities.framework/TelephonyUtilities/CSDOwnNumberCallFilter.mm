@interface CSDOwnNumberCallFilter
- (BOOL)shouldFilterIncomingCall:(id)a3 from:(id)a4;
@end

@implementation CSDOwnNumberCallFilter

- (BOOL)shouldFilterIncomingCall:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10042A224(v6);

  return v9 & 1;
}

@end