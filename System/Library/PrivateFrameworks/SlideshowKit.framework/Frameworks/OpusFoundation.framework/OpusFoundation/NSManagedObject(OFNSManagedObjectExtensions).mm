@interface NSManagedObject(OFNSManagedObjectExtensions)
- (uint64_t)uri;
@end

@implementation NSManagedObject(OFNSManagedObjectExtensions)

- (uint64_t)uri
{
  objectID = [self objectID];

  return [objectID URIRepresentation];
}

@end