@interface PGSongEntry
- (PGSongEntry)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation PGSongEntry

- (PGSongEntry)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SongEntry();
  return [(PGSongEntry *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end