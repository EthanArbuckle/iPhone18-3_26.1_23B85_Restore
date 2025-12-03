@interface PFCoreDataUtils
+ (id)findDuplicateItemsWithEntity:(id)entity itemsToLookAtFilter:(id)filter keysThatMustMatchToBeConsideredADuplicate:(id)duplicate keysThatShouldNotBeDuplicated:(id)duplicated keyValuesOfDuplicatedItemsToReturn:(id)return sortDescriptors:(id)descriptors;
- (_TtC18PodcastsFoundation15PFCoreDataUtils)init;
@end

@implementation PFCoreDataUtils

+ (id)findDuplicateItemsWithEntity:(id)entity itemsToLookAtFilter:(id)filter keysThatMustMatchToBeConsideredADuplicate:(id)duplicate keysThatShouldNotBeDuplicated:(id)duplicated keyValuesOfDuplicatedItemsToReturn:(id)return sortDescriptors:(id)descriptors
{
  v9 = sub_1D917820C();
  v11 = v10;
  v12 = sub_1D91785FC();
  v13 = sub_1D91785FC();
  v14 = sub_1D91785FC();
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  sub_1D91785FC();
  filterCopy = filter;
  _s18PodcastsFoundation15PFCoreDataUtilsC18findDuplicateItems6entity19itemsToLookAtFilter017keysThatMustMatchK22BeConsideredADuplicate0op9ShouldNotS10Duplicated011keyValuesOfxhK6Return15sortDescriptorsSDySSSayyXlGGSS_So11NSPredicateCSaySSGA2OSaySo16NSSortDescriptorCGtFZ_0(v9, v11, filterCopy, v12, v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB86E0, &qword_1D91A2538);
  v16 = sub_1D917802C();

  return v16;
}

- (_TtC18PodcastsFoundation15PFCoreDataUtils)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PFCoreDataUtils();
  return [(PFCoreDataUtils *)&v3 init];
}

@end