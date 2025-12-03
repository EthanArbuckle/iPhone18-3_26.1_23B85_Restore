@interface CSDDialingInterventionController
- (BOOL)interveneIfNeededForDialRequest:(id)request;
- (BOOL)interveneIfNeededForJoinRequest:(id)request;
@end

@implementation CSDDialingInterventionController

- (BOOL)interveneIfNeededForDialRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  LOBYTE(self) = sub_10001F214(requestCopy);

  return self & 1;
}

- (BOOL)interveneIfNeededForJoinRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  LOBYTE(self) = sub_1002DBDF8(requestCopy);

  return self & 1;
}

@end