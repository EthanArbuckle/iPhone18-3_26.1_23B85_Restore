@interface _UISceneEventRegistry
- (id)eventForType:(uint64_t)a1;
@end

@implementation _UISceneEventRegistry

- (id)eventForType:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v4 = [v2 objectForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end