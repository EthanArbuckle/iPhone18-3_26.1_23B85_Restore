@interface WFCoreDataLibrary
- (id)descriptor;
@end

@implementation WFCoreDataLibrary

- (id)descriptor
{
  v3 = objc_alloc(MEMORY[0x1E69E0A68]);
  identifier = [(WFCoreDataLibrary *)self identifier];
  v5 = [v3 initWithIdentifier:identifier objectType:10];

  return v5;
}

@end