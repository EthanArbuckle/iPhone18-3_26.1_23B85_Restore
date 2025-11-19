@interface UIImageJPEGRepresentation
@end

@implementation UIImageJPEGRepresentation

void ___UIImageJPEGRepresentation_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = fmax(fmin(*(a1 + 32), 1.0), 0.0);
  v7 = a2;
  v5 = [v3 numberWithDouble:v4];
  [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696D338]];

  if (*(a1 + 40))
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = MEMORY[0x1E695E110];
  }

  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696D370]];
}

@end