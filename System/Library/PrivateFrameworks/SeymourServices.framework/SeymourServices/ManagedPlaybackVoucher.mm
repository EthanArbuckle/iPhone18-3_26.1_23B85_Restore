@interface ManagedPlaybackVoucher
- (ManagedPlaybackVoucher)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedPlaybackVoucher

- (ManagedPlaybackVoucher)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedPlaybackVoucher();
  return [(ManagedPlaybackVoucher *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end