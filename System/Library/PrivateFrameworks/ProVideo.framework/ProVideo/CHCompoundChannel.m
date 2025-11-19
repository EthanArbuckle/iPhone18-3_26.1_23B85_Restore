@interface CHCompoundChannel
- (void)ozChannel;
- (void)removeAllKeyframes;
@end

@implementation CHCompoundChannel

- (void)ozChannel
{
  result = self->super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)removeAllKeyframes
{
  if (v2)
  {
    v3 = v2[1] - *v2;
    if ((v3 & 0x7FFFFFFF8) != 0)
    {
      v4 = 0;
      v5 = (v3 >> 3);
      v6 = MEMORY[0x277CC08F0];
      do
      {
        v7 = *(*v2 + 8 * v4);
        if (v7)
        {
        }

        else
        {
          v8 = 0;
        }

        (*(*v8 + 752))(v8, v6, 1);
        (*(*v8 + 288))(v8, 0);
        ++v4;
      }

      while (v5 != v4);
    }
  }
}

@end