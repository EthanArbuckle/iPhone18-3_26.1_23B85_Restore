@interface MOContextMusicMetaDataMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOContextMusicMetaDataMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v4 = [[MOContextMusicMetaDataMO alloc] initWithContext:v5];

    v7 = [(MOContextMusicMetaDataMO *)v6 musicString];
    [(MOContextMusicMetaDataMO *)v4 setMusicString:v7];

    v8 = [(MOContextMusicMetaDataMO *)v6 artist];
    [(MOContextMusicMetaDataMO *)v4 setArtist:v8];

    v9 = [(MOContextMusicMetaDataMO *)v6 title];

    [(MOContextMusicMetaDataMO *)v4 setTitle:v9];
  }

  return v4;
}

@end