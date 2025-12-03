@interface CSDSharePlayAvailabilityManager
- (CSDSharePlayAvailabilityManager)initWithMessageProvider:(id)provider referenceDateProvider:(id)dateProvider remoteAvailabilityThresholdSeconds:(unint64_t)seconds requestToScreenShareEnabled:(BOOL)enabled relaySupportEnabled:(BOOL)supportEnabled;
- (void)handleWithMessage:(CSDMessagingSharePlayAvailable *)message fromHandle:(TUHandle *)handle sentAtEpochMillis:(unint64_t)millis completionHandler:(id)handler;
@end

@implementation CSDSharePlayAvailabilityManager

- (CSDSharePlayAvailabilityManager)initWithMessageProvider:(id)provider referenceDateProvider:(id)dateProvider remoteAvailabilityThresholdSeconds:(unint64_t)seconds requestToScreenShareEnabled:(BOOL)enabled relaySupportEnabled:(BOOL)supportEnabled
{
  v10 = _Block_copy(dateProvider);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_unknownObjectRetain();
  return sub_1003A190C(v12, sub_1003A6314, v11, seconds, enabled, supportEnabled);
}

- (void)handleWithMessage:(CSDMessagingSharePlayAvailable *)message fromHandle:(TUHandle *)handle sentAtEpochMillis:(unint64_t)millis completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = message;
  v11[3] = handle;
  v11[4] = millis;
  v11[5] = v10;
  v11[6] = self;
  messageCopy = message;
  handleCopy = handle;

  sub_10044D610(&unk_100583BA8, v11);
}

@end