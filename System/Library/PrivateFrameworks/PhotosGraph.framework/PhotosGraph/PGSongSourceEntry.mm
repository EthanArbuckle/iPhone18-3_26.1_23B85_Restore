@interface PGSongSourceEntry
- (PGSongSourceEntry)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation PGSongSourceEntry

- (PGSongSourceEntry)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SongSourceEntry();
  return [(PGSongSourceEntry *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end