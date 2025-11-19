@interface NSManagedObject(OFNSManagedObjectExtensions)
- (uint64_t)uri;
@end

@implementation NSManagedObject(OFNSManagedObjectExtensions)

- (uint64_t)uri
{
  v1 = [a1 objectID];

  return [v1 URIRepresentation];
}

@end