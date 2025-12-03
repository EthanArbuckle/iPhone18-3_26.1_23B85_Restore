@interface _UISceneEventRegistry
- (id)eventForType:(uint64_t)type;
@end

@implementation _UISceneEventRegistry

- (id)eventForType:(uint64_t)type
{
  if (type)
  {
    v2 = *(type + 8);
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