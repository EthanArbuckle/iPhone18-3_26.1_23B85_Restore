@interface String:
- (uint64_t)Any;
- (void)Any;
@end

@implementation String:

- (uint64_t)Any
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

- (void)Any
{
  if (!lazy cache variable for type metadata for [String : Any])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : Any]);
    }
  }
}

@end