@interface SBElasticValueViewControllerFactory
+ (id)factoryWithBrightnessDataSource:(id)a3;
+ (id)factoryWithVolumeDataSource:(id)a3;
- (id)_initWithViewControllerGenerator:(id)a3;
@end

@implementation SBElasticValueViewControllerFactory

+ (id)factoryWithBrightnessDataSource:(id)a3
{
  v3 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__SBElasticValueViewControllerFactory_factoryWithBrightnessDataSource___block_invoke;
  v8[3] = &unk_2783C1C70;
  v9 = v3;
  v4 = v3;
  v5 = MEMORY[0x223D6F7F0](v8);
  v6 = [objc_alloc(objc_opt_class()) _initWithViewControllerGenerator:v5];

  return v6;
}

SBElasticBrightnessViewController *__71__SBElasticValueViewControllerFactory_factoryWithBrightnessDataSource___block_invoke(uint64_t a1)
{
  v1 = [[SBElasticBrightnessViewController alloc] initWithDataSource:*(a1 + 32)];

  return v1;
}

+ (id)factoryWithVolumeDataSource:(id)a3
{
  v3 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SBElasticValueViewControllerFactory_factoryWithVolumeDataSource___block_invoke;
  v8[3] = &unk_2783C1C70;
  v9 = v3;
  v4 = v3;
  v5 = MEMORY[0x223D6F7F0](v8);
  v6 = [objc_alloc(objc_opt_class()) _initWithViewControllerGenerator:v5];

  return v6;
}

SBElasticVolumeViewController *__67__SBElasticValueViewControllerFactory_factoryWithVolumeDataSource___block_invoke(uint64_t a1)
{
  v1 = [[SBElasticVolumeViewController alloc] initWithDataSource:*(a1 + 32)];

  return v1;
}

- (id)_initWithViewControllerGenerator:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBElasticValueViewControllerFactory;
  v5 = [(SBElasticValueViewControllerFactory *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x223D6F7F0](v4);
    generator = v5->_generator;
    v5->_generator = v6;
  }

  return v5;
}

@end