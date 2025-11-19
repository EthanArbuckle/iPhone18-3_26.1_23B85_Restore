@interface MTPurchaseControllerWrapper
+ (MTPurchaseControllerWrapper)sharedInstance;
- (MTPurchaseControllerWrapper)init;
- (void)fetchChannelUpdatesCheckingEntitlementsNotification;
- (void)forceFetchLatestChannelUpdates;
- (void)syncMusicSubscriptionInformation;
@end

@implementation MTPurchaseControllerWrapper

- (MTPurchaseControllerWrapper)init
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9A70, &unk_1D91AD3F0));
  *(&self->super.isa + OBJC_IVAR___MTPurchaseControllerWrapper_purchaseController) = sub_1D8D066C8(v6);
  v5.receiver = self;
  v5.super_class = type metadata accessor for PurchaseControllerWrapper();
  return [(MTPurchaseControllerWrapper *)&v5 init];
}

+ (MTPurchaseControllerWrapper)sharedInstance
{
  if (qword_1EDCD2AC0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCD2AC8;

  return v3;
}

- (void)syncMusicSubscriptionInformation
{
  v2 = *(*(&self->super.isa + OBJC_IVAR___MTPurchaseControllerWrapper_purchaseController) + *((*MEMORY[0x1E69E7D40] & **(&self->super.isa + OBJC_IVAR___MTPurchaseControllerWrapper_purchaseController)) + 0xB0));
  v3 = self;
  sub_1D8D6C624(0, sub_1D906A898, 0);
}

- (void)forceFetchLatestChannelUpdates
{
  v2 = self;
  sub_1D8DBA884();
}

- (void)fetchChannelUpdatesCheckingEntitlementsNotification
{
  v2 = self;
  sub_1D8DBADF0();
}

@end