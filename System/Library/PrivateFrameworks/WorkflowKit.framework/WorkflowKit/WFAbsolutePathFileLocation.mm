@interface WFAbsolutePathFileLocation
- (id)resolveLocationWithError:(id *)error;
@end

@implementation WFAbsolutePathFileLocation

- (id)resolveLocationWithError:(id *)error
{
  v3 = MEMORY[0x1E695DFF8];
  relativeSubpath = [(WFFileLocation *)self relativeSubpath];
  v5 = [v3 fileURLWithPath:relativeSubpath];

  return v5;
}

@end