@interface PXPeopleNamingUtilities
+ (id)itemsFor:(id)for photoLibrary:(id)library detectionType:(signed __int16)type;
- (PXPeopleNamingUtilities)init;
@end

@implementation PXPeopleNamingUtilities

+ (id)itemsFor:(id)for photoLibrary:(id)library detectionType:(signed __int16)type
{
  v7 = sub_1A524C674();
  v9 = v8;
  swift_getObjCClassMetadata();
  libraryCopy = library;
  static PeopleNamingUtilities.items(for:photoLibrary:detectionType:)(v7, v9, libraryCopy, type);

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