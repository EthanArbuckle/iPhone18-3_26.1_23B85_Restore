@interface SBElasticRouteDisplayContext
+ (id)routeContextWithName:(id)name glyphImage:(id)image;
+ (id)routeContextWithName:(id)name valueTransformer:(id)transformer glyphPackage:(id)package;
- (NSString)description;
- (id)_initWithName:(id)name glyphStateValueTransformer:(id)transformer glyphPackage:(id)package glyphImage:(id)image;
@end

@implementation SBElasticRouteDisplayContext

+ (id)routeContextWithName:(id)name valueTransformer:(id)transformer glyphPackage:(id)package
{
  nameCopy = name;
  transformerCopy = transformer;
  packageCopy = package;
  if (!packageCopy)
  {
    [SBElasticRouteDisplayContext routeContextWithName:a2 valueTransformer:self glyphPackage:?];
  }

  v12 = [[self alloc] _initWithName:nameCopy glyphStateValueTransformer:transformerCopy glyphPackage:packageCopy glyphImage:0];

  return v12;
}

+ (id)routeContextWithName:(id)name glyphImage:(id)image
{
  nameCopy = name;
  imageCopy = image;
  if (!imageCopy)
  {
    [SBElasticRouteDisplayContext routeContextWithName:a2 glyphImage:self];
  }

  v9 = [[self alloc] _initWithName:nameCopy glyphStateValueTransformer:0 glyphPackage:0 glyphImage:imageCopy];

  return v9;
}

- (id)_initWithName:(id)name glyphStateValueTransformer:(id)transformer glyphPackage:(id)package glyphImage:(id)image
{
  nameCopy = name;
  transformerCopy = transformer;
  packageCopy = package;
  imageCopy = image;
  if (!nameCopy)
  {
    [SBElasticRouteDisplayContext _initWithName:a2 glyphStateValueTransformer:self glyphPackage:? glyphImage:?];
  }

  v21.receiver = self;
  v21.super_class = SBElasticRouteDisplayContext;
  v16 = [(SBElasticRouteDisplayContext *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_localizedDisplayName, name);
    v18 = MEMORY[0x223D6F7F0](transformerCopy);
    glyphStateValueTransformer = v17->_glyphStateValueTransformer;
    v17->_glyphStateValueTransformer = v18;

    objc_storeStrong(&v17->_glyphPackage, package);
    objc_storeStrong(&v17->_glyphImage, image);
  }

  return v17;
}

- (NSString)description
{
  v2 = @"glyphImage";
  if (self->_glyphPackage)
  {
    v2 = @"glyphPackage";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"SBElasticRouteDisplayContext with displayName: '%@', type: '%@'", self->_localizedDisplayName, v2];
}

+ (void)routeContextWithName:(uint64_t)a1 valueTransformer:(uint64_t)a2 glyphPackage:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBElasticRouteDisplayContext.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"glyphPackage"}];
}

+ (void)routeContextWithName:(uint64_t)a1 glyphImage:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBElasticRouteDisplayContext.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"glyphImage"}];
}

- (void)_initWithName:(uint64_t)a1 glyphStateValueTransformer:(uint64_t)a2 glyphPackage:glyphImage:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBElasticRouteDisplayContext.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"localizedDisplayName"}];
}

@end