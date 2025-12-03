@interface ManagedPrivacyAcknowledgement
- (ManagedPrivacyAcknowledgement)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedPrivacyAcknowledgement

- (ManagedPrivacyAcknowledgement)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedPrivacyAcknowledgement();
  return [(ManagedPrivacyAcknowledgement *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end