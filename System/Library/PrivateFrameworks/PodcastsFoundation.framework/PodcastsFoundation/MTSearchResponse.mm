@interface MTSearchResponse
- (MTSearchResponse)init;
- (id)itemInSection:(int64_t)section row:(int64_t)row;
- (id)itemsFor:(int64_t)for;
- (id)sectionAtIndex:(unint64_t)index;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
@end

@implementation MTSearchResponse

- (id)itemInSection:(int64_t)section row:(int64_t)row
{
  selfCopy = self;
  v7 = sub_1D905AD28(section, row);

  return v7;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  selfCopy = self;
  v5 = sub_1D905AE58(section);

  return v5;
}

- (id)sectionAtIndex:(unint64_t)index
{
  selfCopy = self;
  v5 = sub_1D905AFB4(index);

  return v5;
}

- (id)itemsFor:(int64_t)for
{
  selfCopy = self;
  sub_1D905B430(for);

  v5 = sub_1D91785DC();

  return v5;
}

- (MTSearchResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end