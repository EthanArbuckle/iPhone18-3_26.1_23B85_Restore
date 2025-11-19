@interface PXPeopleNamingUtilities
+ (id)itemsFor:(id)a3 photoLibrary:(id)a4 detectionType:(signed __int16)a5;
- (PXPeopleNamingUtilities)init;
@end

@implementation PXPeopleNamingUtilities

+ (id)itemsFor:(id)a3 photoLibrary:(id)a4 detectionType:(signed __int16)a5
{
  v7 = sub_1A524C674();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a4;
  static PeopleNamingUtilities.items(for:photoLibrary:detectionType:)(v7, v9, v10, a5);

  type metadata accessor for PeopleNamingItem();
  v11 = sub_1A524CA14();

  return v11;
}

- (PXPeopleNamingUtilities)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PXPeopleNamingUtilities *)&v3 init];
}

@end