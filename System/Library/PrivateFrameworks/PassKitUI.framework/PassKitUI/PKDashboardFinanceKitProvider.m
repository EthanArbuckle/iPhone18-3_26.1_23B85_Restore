@interface PKDashboardFinanceKitProvider
- (BOOL)_loaded;
- (BOOL)loaded;
- (_TtC9PassKitUI29PKDashboardFinanceKitProvider)init;
- (_TtC9PassKitUI29PKDashboardFinanceKitProvider)initWithPass:(id)a3;
- (id)dashboardItemForIndex:(int64_t)a3;
- (int64_t)_transactionsCount;
- (int64_t)transactionsCount;
- (void)loadWithCompletionHandler:(id)a3;
- (void)setLoaded:(BOOL)a3;
- (void)setTransactionsCount:(int64_t)a3;
- (void)set_loaded:(BOOL)a3;
- (void)set_transactionsCount:(int64_t)a3;
@end

@implementation PKDashboardFinanceKitProvider

- (int64_t)_transactionsCount
{
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)set_transactionsCount:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)transactionsCount
{
  swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  v3 = self;
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  v5 = *(&v3->super.isa + v4);

  return v5;
}

- (void)setTransactionsCount:(int64_t)a3
{
  v4 = self;
  sub_1BD98D7D0(a3);
}

- (BOOL)_loaded
{
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)set_loaded:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)loaded
{
  swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  v3 = self;
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  LOBYTE(v4) = *(&v3->super.isa + v4);

  return v4;
}

- (void)setLoaded:(BOOL)a3
{
  v4 = self;
  sub_1BD98DE1C(a3);
}

- (_TtC9PassKitUI29PKDashboardFinanceKitProvider)initWithPass:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions) = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  v6 = sub_1BE049184();
  v7 = *(*(v6 - 8) + 56);
  v7(self + v5, 1, 1, v6);
  v7(self + v5, 1, 1, v6);
  *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded) = 0;
  v8 = a3;
  sub_1BE04B5C4();
  *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider_pass) = v8;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PKDashboardFinanceKitProvider();
  return [(PKDashboardFinanceKitProvider *)&v10 init];
}

- (id)dashboardItemForIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_1BD98E4B4(a3);

  return v5;
}

- (void)loadWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BE109090;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BE107FA0;
  v13[5] = v12;
  v14 = self;
  sub_1BD992D04(0, 0, v8, &unk_1BE0C7F30, v13);
}

- (_TtC9PassKitUI29PKDashboardFinanceKitProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end