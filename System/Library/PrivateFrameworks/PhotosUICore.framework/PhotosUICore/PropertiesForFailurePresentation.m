@interface PropertiesForFailurePresentation
@end

@implementation PropertiesForFailurePresentation

void ___PropertiesForFailurePresentation_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [[off_1E7721440 alloc] initWithTitle:v8 style:a3 action:v7];

  [v6 addObject:v9];
}

@end