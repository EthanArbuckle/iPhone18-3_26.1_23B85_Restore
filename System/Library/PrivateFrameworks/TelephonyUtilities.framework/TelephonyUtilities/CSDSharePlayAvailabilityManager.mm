@interface CSDSharePlayAvailabilityManager
- (CSDSharePlayAvailabilityManager)initWithMessageProvider:(id)a3 referenceDateProvider:(id)a4 remoteAvailabilityThresholdSeconds:(unint64_t)a5 requestToScreenShareEnabled:(BOOL)a6 relaySupportEnabled:(BOOL)a7;
- (void)handleWithMessage:(CSDMessagingSharePlayAvailable *)a3 fromHandle:(TUHandle *)a4 sentAtEpochMillis:(unint64_t)a5 completionHandler:(id)a6;
@end

@implementation CSDSharePlayAvailabilityManager

- (CSDSharePlayAvailabilityManager)initWithMessageProvider:(id)a3 referenceDateProvider:(id)a4 remoteAvailabilityThresholdSeconds:(unint64_t)a5 requestToScreenShareEnabled:(BOOL)a6 relaySupportEnabled:(BOOL)a7
{
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_unknownObjectRetain();
  return sub_1003A190C(v12, sub_1003A6314, v11, a5, a6, a7);
}

- (void)handleWithMessage:(CSDMessagingSharePlayAvailable *)a3 fromHandle:(TUHandle *)a4 sentAtEpochMillis:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;

  sub_10044D610(&unk_100583BA8, v11);
}

@end