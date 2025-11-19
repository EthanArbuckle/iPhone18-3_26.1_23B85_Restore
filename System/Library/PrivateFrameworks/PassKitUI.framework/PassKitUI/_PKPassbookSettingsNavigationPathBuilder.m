@interface _PKPassbookSettingsNavigationPathBuilder
+ (void)appendAutofillViewNavigationPathTo:(id)a3 descriptors:(id)a4 authentication:(id)a5 settingsController:(id)a6;
- (_PKPassbookSettingsNavigationPathBuilder)init;
@end

@implementation _PKPassbookSettingsNavigationPathBuilder

+ (void)appendAutofillViewNavigationPathTo:(id)a3 descriptors:(id)a4 authentication:(id)a5 settingsController:(id)a6
{
  v25 = sub_1BE04CEB4();
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE04CEE4();
  v12 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD9FB9E8();
  v16 = sub_1BE052744();
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = sub_1BE04AAC4();
  v22 = v21;

  sub_1BE052D94();
  v28 = v16;
  v29 = v20;
  v30 = v22;
  v31 = v19;
  type metadata accessor for AutoFillFPANCardsView(0);
  sub_1BD9FBA34(&qword_1EBD5BBF0, type metadata accessor for AutoFillFPANCardsView);
  sub_1BE04CEA4();

  sub_1BD9FBA34(&qword_1EBD5BBF8, MEMORY[0x1E69C59C0]);
  v23 = v25;
  sub_1BE04CED4();

  sub_1BD1245AC(v20, v22);
  (*(v27 + 8))(v11, v23);
  (*(v12 + 8))(v15, v26);
}

- (_PKPassbookSettingsNavigationPathBuilder)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(_PKPassbookSettingsNavigationPathBuilder *)&v3 init];
}

@end