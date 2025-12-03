@interface PSSceneSpecification
+ (PSSceneSpecification)mainSceneSpecification;
+ (PSSceneSpecification)previewSceneSpecification;
- (PSSceneSpecification)initWithSpecification:(id)specification;
@end

@implementation PSSceneSpecification

- (PSSceneSpecification)initWithSpecification:(id)specification
{
  specificationCopy = specification;
  v9.receiver = self;
  v9.super_class = PSSceneSpecification;
  v6 = [(PSSceneSpecification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specification, specification);
  }

  return v7;
}

+ (PSSceneSpecification)previewSceneSpecification
{
  v3 = objc_alloc_init(MEMORY[0x277D40F30]);
  v4 = [[self alloc] initWithSpecification:v3];

  return v4;
}

+ (PSSceneSpecification)mainSceneSpecification
{
  v3 = objc_alloc_init(MEMORY[0x277D40F28]);
  v4 = [[self alloc] initWithSpecification:v3];

  return v4;
}

@end