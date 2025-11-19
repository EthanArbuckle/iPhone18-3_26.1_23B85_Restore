@interface CSDDialingInterventionController
- (BOOL)interveneIfNeededForDialRequest:(id)a3;
- (BOOL)interveneIfNeededForJoinRequest:(id)a3;
@end

@implementation CSDDialingInterventionController

- (BOOL)interveneIfNeededForDialRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10001F214(v4);

  return self & 1;
}

- (BOOL)interveneIfNeededForJoinRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1002DBDF8(v4);

  return self & 1;
}

@end