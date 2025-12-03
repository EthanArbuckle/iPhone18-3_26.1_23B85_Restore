@interface MTFullFeedResponse
- (id)itemInSection:(int64_t)section row:(int64_t)row;
- (id)itemsFor:(int64_t)for;
- (id)sectionAtIndex:(unint64_t)index;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
@end

@implementation MTFullFeedResponse

- (id)itemsFor:(int64_t)for
{
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  v5 = *(&self->super.super.isa + v4);
  selfCopy = self;

  sub_1D8F61420(v7);

  v8 = sub_1D91785DC();

  return v8;
}

- (id)itemInSection:(int64_t)section row:(int64_t)row
{
  selfCopy = self;
  v7 = sub_1D901619C(section, row);

  return v7;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  selfCopy = self;
  v5 = sub_1D90163A0(section);

  return v5;
}

- (unint64_t)numberOfSections
{
  if ((*(&self->super.super.isa + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest))[OBJC_IVAR___MTFullFeedRequest_isSerial] != 1)
  {
    return 1;
  }

  v2 = self + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  return *(*(v2 + 2) + 16);
}

- (id)sectionAtIndex:(unint64_t)index
{
  selfCopy = self;
  v5 = sub_1D90167AC(index);
  v7 = v6;
  v8 = type metadata accessor for GenericDataSourceSection();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v10 = sub_1D8E3B050;
  v10[1] = 0;
  v11 = &v9[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v11 = v5;
  v11[1] = v7;
  v14.receiver = v9;
  v14.super_class = v8;
  v12 = [(BaseFeedResponse *)&v14 init];

  return v12;
}

@end