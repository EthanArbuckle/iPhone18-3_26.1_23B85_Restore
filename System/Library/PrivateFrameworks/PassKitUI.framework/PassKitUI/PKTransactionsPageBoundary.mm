@interface PKTransactionsPageBoundary
- (_TtC9PassKitUI26PKTransactionsPageBoundary)init;
- (_TtC9PassKitUI26PKTransactionsPageBoundary)initWithDate:(id)a3 identifier:(id)a4;
@end

@implementation PKTransactionsPageBoundary

- (_TtC9PassKitUI26PKTransactionsPageBoundary)initWithDate:(id)a3 identifier:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v16 - v8;
  if (a3)
  {
    sub_1BE04AEE4();
    v10 = sub_1BE04AF64();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1BE04AF64();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  if (a4)
  {
    v12 = sub_1BE052434();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return PKTransactionsPageBoundary.init(date:identifier:)(v9, v12, v14);
}

- (_TtC9PassKitUI26PKTransactionsPageBoundary)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end