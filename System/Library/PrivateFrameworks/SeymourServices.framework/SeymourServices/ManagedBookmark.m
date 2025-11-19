@interface ManagedBookmark
- (ManagedBookmark)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedBookmark

- (ManagedBookmark)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedBookmark();
  return [(ManagedBookmark *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end