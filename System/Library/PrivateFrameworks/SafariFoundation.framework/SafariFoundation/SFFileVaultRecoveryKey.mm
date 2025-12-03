@interface SFFileVaultRecoveryKey
- (BOOL)isSavedInPasswordsApp;
- (BOOL)isSharedInGroup;
- (NSDate)creationDate;
- (SFFileVaultRecoveryKey)init;
- (SFFileVaultRecoveryKey)initWithVolumeID:(id)d serialNumber:(id)number recoveryKey:(id)key displayName:(id)name creationDate:(id)date;
- (void)setIsSavedInPasswordsApp:(BOOL)app;
- (void)setIsSharedInGroup:(BOOL)group;
@end

@implementation SFFileVaultRecoveryKey

- (NSDate)creationDate
{
  v3 = sub_26453929C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(self + OBJC_IVAR___SFFileVaultRecoveryKey_objc_creationDate);
  sub_26453928C();
  v9 = sub_26453927C();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (BOOL)isSharedInGroup
{
  v3 = OBJC_IVAR___SFFileVaultRecoveryKey_isSharedInGroup;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSharedInGroup:(BOOL)group
{
  v5 = OBJC_IVAR___SFFileVaultRecoveryKey_isSharedInGroup;
  swift_beginAccess();
  *(self + v5) = group;
}

- (BOOL)isSavedInPasswordsApp
{
  v3 = OBJC_IVAR___SFFileVaultRecoveryKey_isSavedInPasswordsApp;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSavedInPasswordsApp:(BOOL)app
{
  v5 = OBJC_IVAR___SFFileVaultRecoveryKey_isSavedInPasswordsApp;
  swift_beginAccess();
  *(self + v5) = app;
}

- (SFFileVaultRecoveryKey)initWithVolumeID:(id)d serialNumber:(id)number recoveryKey:(id)key displayName:(id)name creationDate:(id)date
{
  v23[1] = self;
  v7 = *(*(sub_26453929C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2645392BC();
  v12 = v11;
  v13 = sub_2645392BC();
  v15 = v14;
  v16 = sub_2645392BC();
  v18 = v17;
  v19 = sub_2645392BC();
  v21 = v20;
  sub_26453928C();
  return SFFileVaultRecoveryKey.init(volumeID:serialNumber:recoveryKey:displayName:creationDate:)(v10, v12, v13, v15, v16, v18, v19, v21, v9);
}

- (SFFileVaultRecoveryKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end