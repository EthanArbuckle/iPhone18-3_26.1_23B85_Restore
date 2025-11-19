@interface SearchUIArchivedRowModel
- (BOOL)hasView;
- (NSString)accessibilityIdentifier;
- (NSString)reuseIdentifier;
- (SearchUIArchivedRowModel)init;
- (SearchUIArchivedRowModel)initWithCardSection:(id)a3 queryId:(unint64_t)a4 itemIdentifier:(id)a5;
- (SearchUIArchivedRowModel)initWithResult:(id)a3 cardSection:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7;
- (SearchUIArchivedRowModel)initWithResult:(id)a3 cardSection:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6;
- (SearchUIArchivedRowModel)initWithResult:(id)a3 itemIdentifier:(id)a4;
- (SearchUIArchivedRowModel)initWithResults:(id)a3 itemIdentifier:(id)a4;
@end

@implementation SearchUIArchivedRowModel

- (SearchUIArchivedRowModel)initWithResult:(id)a3 cardSection:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7
{
  v8 = a5;
  if (a7)
  {
    v11 = sub_1DA25F244();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = a3;
  v15 = a4;
  return sub_1DA223DA8(a3, a4, v8, a6, v11, v13);
}

- (BOOL)hasView
{
  v3 = OBJC_IVAR___SearchUIArchivedRowModel_swiftUIView;
  swift_beginAccess();
  sub_1DA225128(self + v3, v5);
  LOBYTE(self) = v6 != 0;
  sub_1DA179568(v5, &qword_1ECBA2D68);
  return self;
}

- (NSString)accessibilityIdentifier
{
  v2 = sub_1DA25F234();

  return v2;
}

- (NSString)reuseIdentifier
{
  v2 = sub_1DA25F234();

  return v2;
}

- (SearchUIArchivedRowModel)initWithResult:(id)a3 itemIdentifier:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIArchivedRowModel)initWithResult:(id)a3 cardSection:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIArchivedRowModel)initWithResults:(id)a3 itemIdentifier:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIArchivedRowModel)initWithCardSection:(id)a3 queryId:(unint64_t)a4 itemIdentifier:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIArchivedRowModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end