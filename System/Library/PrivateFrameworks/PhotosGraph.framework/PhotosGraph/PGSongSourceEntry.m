@interface PGSongSourceEntry
- (PGSongSourceEntry)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation PGSongSourceEntry

- (PGSongSourceEntry)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SongSourceEntry();
  return [(PGSongSourceEntry *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end