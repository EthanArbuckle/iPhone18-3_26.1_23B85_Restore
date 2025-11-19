@interface KeyboardObserver
- (void)keyboardDidHideWithNotification:(id)a3;
- (void)keyboardWillChangeFrameWithNotification:(id)a3;
- (void)keyboardWillHideWithNotification:(id)a3;
- (void)keyboardWillShowWithNotification:(id)a3;
@end

@implementation KeyboardObserver

- (void)keyboardWillShowWithNotification:(id)a3
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12[-v5];
  v7 = sub_1BE04A2E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v12[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04A2C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v12[15] = 1;
  swift_retain_n();
  sub_1BE04D8C4();
  (*(v8 + 16))(v6, v11, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1BD4D9370(v6);

  sub_1BD4D9CC0(v6);
  (*(v8 + 8))(v11, v7);
}

- (void)keyboardWillHideWithNotification:(id)a3
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = sub_1BE04A2E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A2C4();
  (*(v8 + 56))(v6, 1, 1, v7);
  sub_1BE048964();
  sub_1BD4D9370(v6);

  sub_1BD4D9CC0(v6);
  (*(v8 + 8))(v11, v7);
}

- (void)keyboardDidHideWithNotification:(id)a3
{
  v3 = sub_1BE04A2E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04A2C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v8[15] = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  (*(v4 + 8))(v7, v3);
}

- (void)keyboardWillChangeFrameWithNotification:(id)a3
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = sub_1BE04A2E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A2C4();
  (*(v8 + 16))(v6, v11, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1BE048964();
  sub_1BD4D9370(v6);

  sub_1BD4D9CC0(v6);
  (*(v8 + 8))(v11, v7);
}

@end