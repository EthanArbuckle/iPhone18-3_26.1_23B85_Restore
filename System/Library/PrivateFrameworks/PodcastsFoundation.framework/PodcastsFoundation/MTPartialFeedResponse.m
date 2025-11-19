@interface MTPartialFeedResponse
- (id)itemInSection:(int64_t)a3 row:(int64_t)a4;
- (id)itemsFor:(int64_t)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
@end

@implementation MTPartialFeedResponse

- (id)itemsFor:(int64_t)a3
{
  v3 = self;
  sub_1D9001E64();
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  v5 = *(&v3->super.super.isa + v4);

  sub_1D8F61420(v6);

  v7 = sub_1D91785DC();

  return v7;
}

- (id)itemInSection:(int64_t)a3 row:(int64_t)a4
{
  v6 = self;
  v7 = sub_1D90179A0(a3, a4);

  return v7;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1D9017BE0(a3);

  return v5;
}

- (unint64_t)numberOfSections
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request);
  type metadata accessor for PartialFeedRequest();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  return *(*(v3 + v4) + 16);
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x100);
  v5 = self;
  v6 = v4(a3);
  v8 = v7;
  v9 = type metadata accessor for GenericDataSourceSection();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v11 = sub_1D8E3B050;
  v11[1] = 0;
  v12 = &v10[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v12 = v6;
  v12[1] = v8;
  v18.receiver = v10;
  v18.super_class = v9;
  v13 = [(BaseFeedResponse *)&v18 init];
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  *(v14 + 24) = a3;
  v15 = (v13 + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  v16 = v15[1];
  *v15 = sub_1D9018E10;
  v15[1] = v14;

  return v13;
}

@end