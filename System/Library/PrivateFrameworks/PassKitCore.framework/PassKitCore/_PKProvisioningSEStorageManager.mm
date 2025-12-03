@interface _PKProvisioningSEStorageManager
- (_PKProvisioningSEStorageManager)init;
- (_PKProvisioningSEStorageManager)initWithWebService:(id)service;
- (void)currentSnapshotWithCompletion:(id)completion;
- (void)debugReservationDescriptionsWithCompletion:(id)completion;
- (void)deleteExpiredReservationsWithCompletion:(id)completion;
- (void)deleteWithReservation:(id)reservation completion:(id)completion;
- (void)performDebugSECleanupWithCompletion:(id)completion;
- (void)reclaimUnusedSEMemoryWithCompletion:(id)completion;
- (void)reserveStorageFor:(id)for metadata:(id)metadata completion:(id)completion;
@end

@implementation _PKProvisioningSEStorageManager

- (_PKProvisioningSEStorageManager)init
{
  if (PKRunningInPassd())
  {

    return [(_PKProvisioningSEStorageManager *)self initWithWebService:0];
  }

  else
  {
    sharedService = [objc_opt_self() sharedService];
    v5 = [(_PKProvisioningSEStorageManager *)self initWithWebService:sharedService];

    return v5;
  }
}

- (_PKProvisioningSEStorageManager)initWithWebService:(id)service
{
  v5 = OBJC_IVAR____PKProvisioningSEStorageManager_secureElement;
  v6 = objc_allocWithZone(PKSecureElement);
  serviceCopy = service;
  *(&self->super.isa + v5) = [v6 init];
  *(&self->super.isa + OBJC_IVAR____PKProvisioningSEStorageManager_webService) = service;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ProvisioningSEStorageManager();
  return [(_PKProvisioningSEStorageManager *)&v9 init];
}

- (void)reserveStorageFor:(id)for metadata:(id)metadata completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_1ADB06610();
  if (metadata)
  {
    metadata = sub_1ADB06280();
  }

  _Block_copy(v7);
  selfCopy = self;
  sub_1AD485840(v8, metadata, selfCopy, v7);
  _Block_release(v7);

  _Block_release(v7);
}

- (void)deleteWithReservation:(id)reservation completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_1ADB05E30();
  v6 = sub_1ADB06610();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1AD4885EC;
  }

  else
  {
    v7 = 0;
  }

  sub_1AD3C5F14(v5);
  selfCopy = self;
  sub_1AD486660(selfCopy, v5, v7, v6);
  sub_1AD3C5FB8(v5);

  sub_1AD3C5FB8(v5);
}

- (void)currentSnapshotWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1AD4870FC(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)deleteExpiredReservationsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1AD484130(selfCopy, sub_1AD4885EC, v5, selfCopy, 1, 2);
}

- (void)debugReservationDescriptionsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1AD486DE8(selfCopy, sub_1AD48709C, v5, selfCopy);
}

- (void)performDebugSECleanupWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1AD48708C;
  *(v6 + 24) = v5;
  selfCopy = self;

  sub_1AD47E5DC(0, 0, sub_1AD42F824, v6);
}

- (void)reclaimUnusedSEMemoryWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1AD487084;
  *(v6 + 24) = v5;
  v9[4] = sub_1AD4885F4;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1AD471DC4;
  v9[3] = &block_descriptor_24_2;
  v7 = _Block_copy(v9);
  selfCopy = self;

  [(_PKProvisioningSEStorageManager *)selfCopy deleteExpiredReservationsWithCompletion:v7];

  _Block_release(v7);
}

@end