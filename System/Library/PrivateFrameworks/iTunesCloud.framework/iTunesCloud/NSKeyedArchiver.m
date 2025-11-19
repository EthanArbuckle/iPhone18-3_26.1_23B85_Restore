@interface NSKeyedArchiver
@end

@implementation NSKeyedArchiver

void __107__NSKeyedArchiver_ICUserIdentity__ic_archivedDataWithRootUserIdentity_inStore_requiringSecureCoding_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 archivedDataWithRootObject:v2 requiringSecureCoding:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

@end