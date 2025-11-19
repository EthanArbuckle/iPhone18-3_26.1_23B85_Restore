@interface RBCommitObserverArray
- (id).cxx_construct;
- (uint64_t)get:(uint64_t *)a1;
@end

@implementation RBCommitObserverArray

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 4;
  return self;
}

- (uint64_t)get:(uint64_t *)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[5];
  v3 = a1[6];
  if (!v2)
  {
    v2 = a1 + 1;
  }

  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = 8 * v3;
  while (1)
  {
    v5 = *v2;
    if (*(*v2 + 16) == a2)
    {
      return v5;
    }

    ++v2;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

@end