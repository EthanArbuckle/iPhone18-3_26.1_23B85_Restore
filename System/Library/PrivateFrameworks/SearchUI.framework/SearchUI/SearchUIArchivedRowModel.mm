@interface SearchUIArchivedRowModel
- (BOOL)hasView;
- (NSString)accessibilityIdentifier;
- (NSString)reuseIdentifier;
- (SearchUIArchivedRowModel)init;
- (SearchUIArchivedRowModel)initWithCardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUIArchivedRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUIArchivedRowModel)initWithResult:(id)result cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUIArchivedRowModel)initWithResult:(id)result itemIdentifier:(id)identifier;
- (SearchUIArchivedRowModel)initWithResults:(id)results itemIdentifier:(id)identifier;
@end

@implementation SearchUIArchivedRowModel

- (SearchUIArchivedRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  inlineCopy = inline;
  if (identifier)
  {
    v11 = sub_1DA25F244();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  resultCopy = result;
  sectionCopy = section;
  return sub_1DA223DA8(result, section, inlineCopy, id, v11, v13);
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

- (SearchUIArchivedRowModel)initWithResult:(id)result itemIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIArchivedRowModel)initWithResult:(id)result cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIArchivedRowModel)initWithResults:(id)results itemIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIArchivedRowModel)initWithCardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier
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