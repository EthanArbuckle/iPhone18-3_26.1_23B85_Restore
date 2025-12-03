@interface WBSPasswordsNotificationManager
+ (WBSPasswordsNotificationManager)sharedNotificationManager;
- (WBSPasswordsNotificationManagerDelegate)delegate;
- (void)removeDeliveredTakeATourNotification;
- (void)requestPermissionToSendNotificationsProvisionally:(BOOL)provisionally withCompletionHandler:(id)handler;
- (void)requestStatusWithCompletionHandler:(id)handler;
- (void)scheduleAutomaticallyCreatedPasskeyNotificationWithServiceName:(NSString *)name relyingPartyID:(NSString *)d userName:(NSString *)userName credentialID:(NSData *)iD completionHandler:(id)handler;
- (void)scheduleICloudKeychainSyncingNotification;
- (void)schedulePasskeyMovedToRecentlyDeletedNotificationForApp:(NSString *)app relyingPartyID:(NSString *)d userName:(NSString *)name credentialID:(NSData *)iD shouldUseRelyingPartyForServiceName:(BOOL)serviceName completionHandler:(id)handler;
- (void)schedulePasskeyUpdatedNotificationForApp:(NSString *)app relyingPartyID:(NSString *)d userName:(NSString *)name credentialID:(NSData *)iD shouldUseRelyingPartyForServiceName:(BOOL)serviceName completionHandler:(id)handler;
- (void)schedulePasswordBreachNotificationRequest:(id)request completionHandler:(id)handler;
- (void)schedulePasswordMovedToRecentlyDeletedNotificationForApp:(NSString *)app domain:(NSString *)domain userName:(NSString *)name shouldUseRelyingPartyForServiceName:(BOOL)serviceName completionHandler:(id)handler;
- (void)schedulePasswordSavedNotificationForSavedAccount:(WBSSavedAccount *)account completionHandler:(id)handler;
- (void)schedulePasswordUpdatedNotificationForSavedAccount:(WBSSavedAccount *)account completionHandler:(id)handler;
- (void)scheduleTakeATourNotificationIfNeededWithCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation WBSPasswordsNotificationManager

+ (WBSPasswordsNotificationManager)sharedNotificationManager
{
  if (qword_1EBA8A510 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBA8A518;

  return v3;
}

- (WBSPasswordsNotificationManagerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)requestStatusWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(self + OBJC_IVAR___WBSPasswordsNotificationManager_userNotificationCenter);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B851F608;
  *(v7 + 24) = v5;
  v10[4] = sub_1B851F61C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B8516C7C;
  v10[3] = &block_descriptor_164;
  v8 = _Block_copy(v10);
  selfCopy = self;

  [v6 getNotificationSettingsWithCompletionHandler_];

  _Block_release(v8);
}

- (void)requestPermissionToSendNotificationsProvisionally:(BOOL)provisionally withCompletionHandler:(id)handler
{
  provisionallyCopy = provisionally;
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  if (provisionallyCopy)
  {
    v8 = 70;
  }

  else
  {
    v8 = 6;
  }

  v9 = *(self + OBJC_IVAR___WBSPasswordsNotificationManager_userNotificationCenter);
  v12[4] = sub_1B851F600;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B8516E20;
  v12[3] = &block_descriptor_155;
  v10 = _Block_copy(v12);
  selfCopy = self;

  [v9 requestAuthorizationWithOptions:v8 completionHandler:v10];
  _Block_release(v10);
}

- (void)schedulePasswordSavedNotificationForSavedAccount:(WBSSavedAccount *)account completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = account;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B8566108();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8574508;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B8574510;
  v15[5] = v14;
  accountCopy = account;
  selfCopy = self;
  sub_1B8534B98(0, 0, v10, &unk_1B8574518, v15);
}

- (void)schedulePasswordUpdatedNotificationForSavedAccount:(WBSSavedAccount *)account completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = account;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B8566108();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B85744E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B85744E8;
  v15[5] = v14;
  accountCopy = account;
  selfCopy = self;
  sub_1B8534B98(0, 0, v10, &unk_1B85744F0, v15);
}

- (void)scheduleTakeATourNotificationIfNeededWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B8566108();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B85744B8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B85744C0;
  v13[5] = v12;
  selfCopy = self;
  sub_1B8534B98(0, 0, v8, &unk_1B85744C8, v13);
}

- (void)removeDeliveredTakeATourNotification
{
  v2 = *(self + OBJC_IVAR___WBSPasswordsNotificationManager_userNotificationCenter);
  selfCopy = self;
  v4 = sub_1B8565FF8();
  [v2 removeDeliveredNotificationsWithIdentifiers_];
}

- (void)scheduleICloudKeychainSyncingNotification
{
  v2 = *(self + OBJC_IVAR___WBSPasswordsNotificationManager_userNotificationCenter);
  selfCopy = self;
  v4 = sub_1B851DF78();
  v5 = sub_1B8565D68();
  v6 = [objc_opt_self() requestWithIdentifier:v5 content:v4 trigger:0];

  [v2 addNotificationRequest:v6 withCompletionHandler:0];
}

- (void)schedulePasswordBreachNotificationRequest:(id)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(self + OBJC_IVAR___WBSPasswordsNotificationManager_userNotificationCenter);
  v12[4] = sub_1B851F19C;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B851917C;
  v12[3] = &block_descriptor_101;
  v9 = _Block_copy(v12);
  requestCopy = request;
  selfCopy = self;

  [v8 addNotificationRequest:requestCopy withCompletionHandler:v9];

  _Block_release(v9);
}

- (void)scheduleAutomaticallyCreatedPasskeyNotificationWithServiceName:(NSString *)name relyingPartyID:(NSString *)d userName:(NSString *)userName credentialID:(NSData *)iD completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = name;
  v18[3] = d;
  v18[4] = userName;
  v18[5] = iD;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_1B8566108();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1B8574490;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1B8574498;
  v21[5] = v20;
  nameCopy = name;
  dCopy = d;
  userNameCopy = userName;
  iDCopy = iD;
  selfCopy = self;
  sub_1B8534B98(0, 0, v16, &unk_1B85744A0, v21);
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_1B851E3EC(notificationCopy, sub_1B851F92C, v9);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_1B851E7C8(responseCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)schedulePasskeyUpdatedNotificationForApp:(NSString *)app relyingPartyID:(NSString *)d userName:(NSString *)name credentialID:(NSData *)iD shouldUseRelyingPartyForServiceName:(BOOL)serviceName completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = app;
  *(v20 + 24) = d;
  *(v20 + 32) = name;
  *(v20 + 40) = iD;
  *(v20 + 48) = serviceName;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_1B8566108();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1B8574460;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1B8574468;
  v23[5] = v22;
  appCopy = app;
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  selfCopy = self;
  sub_1B8534B98(0, 0, v18, &unk_1B8574470, v23);
}

- (void)schedulePasskeyMovedToRecentlyDeletedNotificationForApp:(NSString *)app relyingPartyID:(NSString *)d userName:(NSString *)name credentialID:(NSData *)iD shouldUseRelyingPartyForServiceName:(BOOL)serviceName completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = app;
  *(v20 + 24) = d;
  *(v20 + 32) = name;
  *(v20 + 40) = iD;
  *(v20 + 48) = serviceName;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_1B8566108();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1B8574440;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1B8574448;
  v23[5] = v22;
  appCopy = app;
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  selfCopy = self;
  sub_1B8534B98(0, 0, v18, &unk_1B8574450, v23);
}

- (void)schedulePasswordMovedToRecentlyDeletedNotificationForApp:(NSString *)app domain:(NSString *)domain userName:(NSString *)name shouldUseRelyingPartyForServiceName:(BOOL)serviceName completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  *(v18 + 16) = app;
  *(v18 + 24) = domain;
  *(v18 + 32) = name;
  *(v18 + 40) = serviceName;
  *(v18 + 48) = v17;
  *(v18 + 56) = self;
  v19 = sub_1B8566108();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1B8574420;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1B8574428;
  v21[5] = v20;
  appCopy = app;
  domainCopy = domain;
  nameCopy = name;
  selfCopy = self;
  sub_1B8534B98(0, 0, v16, &unk_1B8574430, v21);
}

@end