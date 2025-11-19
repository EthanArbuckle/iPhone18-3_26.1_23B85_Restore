@interface UNNotificationClient
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 willPresentNotification:(UNNotification *)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4;
- (void)userNotificationCenter:(id)a3 didOpenApplicationForResponse:(id)a4;
@end

@implementation UNNotificationClient

- (void)userNotificationCenter:(id)a3 didOpenApplicationForResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_26CC7A890(v7);
}

- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_26CC7AAAC(v6, v7);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 willPresentNotification:(UNNotification *)a4 withCompletionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_26CC78568(0, 0, v12, &unk_26CD427E0, v17);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_26CC78568(0, 0, v12, &unk_26CD42788, v17);
}

@end