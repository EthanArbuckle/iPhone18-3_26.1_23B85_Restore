@interface MTCategory
+ (id)predicateForLibraryCategoriesMatching:(id)a3;
+ (id)sortDescriptorsForCategoriesInLibrary;
+ (id)sortDescriptorsForCategoriesInSearch;
- (MTCategory)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation MTCategory

- (MTCategory)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTCategory();
  return [(MTCategory *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

+ (id)predicateForLibraryCategoriesMatching:(id)a3
{
  v3 = sub_1D917820C();
  v5 = _s18PodcastsFoundation10MTCategoryC37predicateForLibraryCategoriesMatchingySo11NSPredicateCSSFZ_0(v3, v4);

  return v5;
}

+ (id)sortDescriptorsForCategoriesInLibrary
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189070;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [v3 initWithKey:v4 ascending:1];

  *(v2 + 32) = v5;
  sub_1D8D28BC8();
  v6 = sub_1D91785DC();

  return v6;
}

+ (id)sortDescriptorsForCategoriesInSearch
{
  _s18PodcastsFoundation10MTCategoryC36sortDescriptorsForCategoriesInSearchSaySo16NSSortDescriptorCGyFZ_0();
  sub_1D8D28BC8();
  v2 = sub_1D91785DC();

  return v2;
}

@end