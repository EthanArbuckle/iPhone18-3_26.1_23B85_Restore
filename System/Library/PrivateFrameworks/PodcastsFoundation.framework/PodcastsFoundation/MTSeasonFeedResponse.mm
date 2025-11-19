@interface MTSeasonFeedResponse
- (id)sectionAtIndex:(unint64_t)a3;
@end

@implementation MTSeasonFeedResponse

- (id)sectionAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1D901A2D4(a3);
  v7 = v6;
  v8 = type metadata accessor for GenericDataSourceSection();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v10 = sub_1D8E3B050;
  v10[1] = 0;
  v11 = &v9[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v11 = v5;
  v11[1] = v7;
  v17.receiver = v9;
  v17.super_class = v8;
  v12 = [(BaseFeedResponse *)&v17 init];
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = a3;
  v14 = (v12 + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  v15 = v14[1];
  *v14 = sub_1D901AA10;
  v14[1] = v13;

  return v12;
}

@end