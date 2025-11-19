@interface PSSceneSpecification
+ (PSSceneSpecification)mainSceneSpecification;
+ (PSSceneSpecification)previewSceneSpecification;
- (PSSceneSpecification)initWithSpecification:(id)a3;
@end

@implementation PSSceneSpecification

- (PSSceneSpecification)initWithSpecification:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSSceneSpecification;
  v6 = [(PSSceneSpecification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specification, a3);
  }

  return v7;
}

+ (PSSceneSpecification)previewSceneSpecification
{
  v3 = objc_alloc_init(MEMORY[0x277D40F30]);
  v4 = [[a1 alloc] initWithSpecification:v3];

  return v4;
}

+ (PSSceneSpecification)mainSceneSpecification
{
  v3 = objc_alloc_init(MEMORY[0x277D40F28]);
  v4 = [[a1 alloc] initWithSpecification:v3];

  return v4;
}

@end