@interface PGSongEntry
- (PGSongEntry)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation PGSongEntry

- (PGSongEntry)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SongEntry();
  return [(PGSongEntry *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end