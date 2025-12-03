@interface UNNotificationClient
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
- (void)userNotificationCenter:(id)center didOpenApplicationForResponse:(id)response;
@end

@implementation UNNotificationClient

- (void)userNotificationCenter:(id)center didOpenApplicationForResponse:(id)response
{
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_26CC7A890(responseCopy);
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  centerCopy = center;
  settingsCopy = settings;
  selfCopy = self;
  sub_26CC7AAAC(centerCopy, settingsCopy);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = center;
  v14[3] = notification;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_26CD3A86C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26CD427D0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_26CD427D8;
  v17[5] = v16;
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_26CC78568(0, 0, v12, &unk_26CD427E0, v17);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = center;
  v14[3] = response;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_26CD3A86C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26CD42768;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_26CD42778;
  v17[5] = v16;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_26CC78568(0, 0, v12, &unk_26CD42788, v17);
}

@end