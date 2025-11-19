@interface _PKProvisioningSEStorageManager
- (_PKProvisioningSEStorageManager)init;
- (_PKProvisioningSEStorageManager)initWithWebService:(id)a3;
- (void)currentSnapshotWithCompletion:(id)a3;
- (void)debugReservationDescriptionsWithCompletion:(id)a3;
- (void)deleteExpiredReservationsWithCompletion:(id)a3;
- (void)deleteWithReservation:(id)a3 completion:(id)a4;
- (void)performDebugSECleanupWithCompletion:(id)a3;
- (void)reclaimUnusedSEMemoryWithCompletion:(id)a3;
- (void)reserveStorageFor:(id)a3 metadata:(id)a4 completion:(id)a5;
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
    v4 = [objc_opt_self() sharedService];
    v5 = [(_PKProvisioningSEStorageManager *)self initWithWebService:v4];

    return v5;
  }
}

- (_PKProvisioningSEStorageManager)initWithWebService:(id)a3
{
  v5 = OBJC_IVAR____PKProvisioningSEStorageManager_secureElement;
  v6 = objc_allocWithZone(PKSecureElement);
  v7 = a3;
  *(&self->super.isa + v5) = [v6 init];
  *(&self->super.isa + OBJC_IVAR____PKProvisioningSEStorageManager_webService) = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ProvisioningSEStorageManager();
  return [(_PKProvisioningSEStorageManager *)&v9 init];
}

- (void)reserveStorageFor:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1ADB06610();
  if (a4)
  {
    a4 = sub_1ADB06280();
  }

  _Block_copy(v7);
  v9 = self;
  sub_1AD485840(v8, a4, v9, v7);
  _Block_release(v7);

  _Block_release(v7);
}

- (void)deleteWithReservation:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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
  v8 = self;
  sub_1AD486660(v8, v5, v7, v6);
  sub_1AD3C5FB8(v5);

  sub_1AD3C5FB8(v5);
}

- (void)currentSnapshotWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1AD4870FC(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)deleteExpiredReservationsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1AD484130(v6, sub_1AD4885EC, v5, v6, 1, 2);
}

- (void)debugReservationDescriptionsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1AD486DE8(v6, sub_1AD48709C, v5, v6);
}

- (void)performDebugSECleanupWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1AD48708C;
  *(v6 + 24) = v5;
  v7 = self;

  sub_1AD47E5DC(0, 0, sub_1AD42F824, v6);
}

- (void)reclaimUnusedSEMemoryWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;

  [(_PKProvisioningSEStorageManager *)v8 deleteExpiredReservationsWithCompletion:v7];

  _Block_release(v7);
}

@end