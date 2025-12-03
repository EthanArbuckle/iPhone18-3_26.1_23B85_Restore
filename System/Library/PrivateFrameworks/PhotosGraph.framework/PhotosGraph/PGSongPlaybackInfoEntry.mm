@interface PGSongPlaybackInfoEntry
- (PGSongPlaybackInfoEntry)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation PGSongPlaybackInfoEntry

- (PGSongPlaybackInfoEntry)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SongPlaybackInfoEntry();
  return [(PGSongPlaybackInfoEntry *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end