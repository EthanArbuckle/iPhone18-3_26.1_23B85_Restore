@interface WFAbsolutePathFileLocation
- (id)resolveLocationWithError:(id *)a3;
@end

@implementation WFAbsolutePathFileLocation

- (id)resolveLocationWithError:(id *)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(WFFileLocation *)self relativeSubpath];
  v5 = [v3 fileURLWithPath:v4];

  return v5;
}

@end