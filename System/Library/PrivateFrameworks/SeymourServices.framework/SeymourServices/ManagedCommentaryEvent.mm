@interface ManagedCommentaryEvent
- (ManagedCommentaryEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedCommentaryEvent

- (ManagedCommentaryEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedCommentaryEvent();
  return [(ManagedCommentaryEvent *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end