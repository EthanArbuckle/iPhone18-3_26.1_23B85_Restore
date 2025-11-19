@interface RecommendationModulesResponse
- (id)itemInSection:(int64_t)a3 row:(int64_t)a4;
- (id)itemsFor:(int64_t)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
@end

@implementation RecommendationModulesResponse

- (id)itemsFor:(int64_t)a3
{
  v3 = *self->modulesMetadata;

  sub_1D8F61420(v4);

  v5 = sub_1D91785DC();

  return v5;
}

- (id)itemInSection:(int64_t)a3 row:(int64_t)a4
{
  v4 = *(self + 2);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x1DA72AA90](a4, v4);

    v5 = v7;
    goto LABEL_5;
  }

  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a4)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  v5 = *(v4 + 8 * a4 + 32);
LABEL_5:

  return v5;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  v3 = *self->modulesMetadata;
  if (!(v3 >> 62))
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1D917935C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v3 = type metadata accessor for GenericDataSourceSection();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v5 = sub_1D8E3B050;
  v5[1] = 0;
  v6 = &v4[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v9.receiver = v4;
  v9.super_class = v3;
  v7 = [(RecommendationModulesResponse *)&v9 init];

  return v7;
}

@end