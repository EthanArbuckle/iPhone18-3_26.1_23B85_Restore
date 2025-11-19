@interface PBUserAuthorizationRecord
- (PBUserAuthorizationRecord)initWithPasteAllowed:(BOOL)a3;
@end

@implementation PBUserAuthorizationRecord

- (PBUserAuthorizationRecord)initWithPasteAllowed:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PBUserAuthorizationRecord;
  v4 = [(PBUserAuthorizationRecord *)&v6 init];
  if (v4)
  {
    v4->_timestamp = mach_continuous_time();
    v4->_pasteWasAllowed = a3;
  }

  return v4;
}

@end