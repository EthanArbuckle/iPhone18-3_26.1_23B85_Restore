@interface Int:
- (uint64_t)CGFloat;
- (void)CGFloat;
@end

@implementation Int:

- (void)CGFloat
{
  if (!*a2)
  {
    v6 = a5(0, a3, MEMORY[0x1E69E7DE0]);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

- (uint64_t)CGFloat
{
  type metadata accessor for [Int : CGFloat](0, &lazy cache variable for type metadata for [Int : CGFloat], MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E5E28]);
  (*(*(v2 - 8) + 8))(self, v2);
  return self;
}

@end