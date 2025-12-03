@interface MOContextMusicMetaDataMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOContextMusicMetaDataMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  objectCopy = object;
  if (object)
  {
    contextCopy = context;
    v6 = objectCopy;
    objectCopy = [[MOContextMusicMetaDataMO alloc] initWithContext:contextCopy];

    musicString = [(MOContextMusicMetaDataMO *)v6 musicString];
    [(MOContextMusicMetaDataMO *)objectCopy setMusicString:musicString];

    artist = [(MOContextMusicMetaDataMO *)v6 artist];
    [(MOContextMusicMetaDataMO *)objectCopy setArtist:artist];

    title = [(MOContextMusicMetaDataMO *)v6 title];

    [(MOContextMusicMetaDataMO *)objectCopy setTitle:title];
  }

  return objectCopy;
}

@end