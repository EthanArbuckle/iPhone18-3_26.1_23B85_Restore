@interface PKIdentityDataReleaseTransactionConfiguration
- (_TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration)init;
- (_TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration)initWithDocumentType:(id)type elements:(id)elements transactionSource:(unint64_t)source passName:(id)name;
@end

@implementation PKIdentityDataReleaseTransactionConfiguration

- (_TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration)initWithDocumentType:(id)type elements:(id)elements transactionSource:(unint64_t)source passName:(id)name
{
  v7 = sub_1BE052434();
  v9 = v8;
  sub_1BD91B988();
  sub_1BD91B9D4(&qword_1EBD49A00, sub_1BD91B988);
  v10 = sub_1BE052A34();
  v11 = sub_1BE052434();
  return PKIdentityDataReleaseTransactionConfiguration.init(documentType:elements:transactionSource:passName:)(v7, v9, v10, source, v11, v12);
}

- (_TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end