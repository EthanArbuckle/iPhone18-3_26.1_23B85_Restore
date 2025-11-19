@interface CNContactStore
@end

@implementation CNContactStore

uint64_t __58__CNContactStore_TUSearchUtilities__contactForIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = contactForIdentifier__identifierToContactCache;
  contactForIdentifier__identifierToContactCache = v0;

  v2 = contactForIdentifier__identifierToContactCache;

  return [v2 setCountLimit:100];
}

uint64_t __61__CNContactStore_TUSearchUtilities__contactForDestinationId___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = contactForDestinationId__destinationIDToContactCache;
  contactForDestinationId__destinationIDToContactCache = v0;

  v2 = contactForDestinationId__destinationIDToContactCache;

  return [v2 setCountLimit:100];
}

@end