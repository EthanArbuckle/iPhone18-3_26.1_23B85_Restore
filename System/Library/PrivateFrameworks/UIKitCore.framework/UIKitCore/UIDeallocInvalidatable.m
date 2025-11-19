@interface UIDeallocInvalidatable
@end

@implementation UIDeallocInvalidatable

id __53___UIDeallocInvalidatable_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"identifier"];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = [*(v3 + 16) hasBeenSignalled] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return [v4 appendBool:v5 withName:@"isValid"];
}

@end