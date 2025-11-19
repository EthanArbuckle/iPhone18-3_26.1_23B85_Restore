@interface MTSearchResponse
- (MTSearchResponse)init;
- (id)itemInSection:(int64_t)a3 row:(int64_t)a4;
- (id)itemsFor:(int64_t)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
@end

@implementation MTSearchResponse

- (id)itemInSection:(int64_t)a3 row:(int64_t)a4
{
  v6 = self;
  v7 = sub_1D905AD28(a3, a4);

  return v7;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1D905AE58(a3);

  return v5;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1D905AFB4(a3);

  return v5;
}

- (id)itemsFor:(int64_t)a3
{
  v4 = self;
  sub_1D905B430(a3);

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