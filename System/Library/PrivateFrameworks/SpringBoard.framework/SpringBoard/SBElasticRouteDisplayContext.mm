@interface SBElasticRouteDisplayContext
+ (id)routeContextWithName:(id)a3 glyphImage:(id)a4;
+ (id)routeContextWithName:(id)a3 valueTransformer:(id)a4 glyphPackage:(id)a5;
- (NSString)description;
- (id)_initWithName:(id)a3 glyphStateValueTransformer:(id)a4 glyphPackage:(id)a5 glyphImage:(id)a6;
@end

@implementation SBElasticRouteDisplayContext

+ (id)routeContextWithName:(id)a3 valueTransformer:(id)a4 glyphPackage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    [SBElasticRouteDisplayContext routeContextWithName:a2 valueTransformer:a1 glyphPackage:?];
  }

  v12 = [[a1 alloc] _initWithName:v9 glyphStateValueTransformer:v10 glyphPackage:v11 glyphImage:0];

  return v12;
}

+ (id)routeContextWithName:(id)a3 glyphImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SBElasticRouteDisplayContext routeContextWithName:a2 glyphImage:a1];
  }

  v9 = [[a1 alloc] _initWithName:v7 glyphStateValueTransformer:0 glyphPackage:0 glyphImage:v8];

  return v9;
}

- (id)_initWithName:(id)a3 glyphStateValueTransformer:(id)a4 glyphPackage:(id)a5 glyphImage:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    [SBElasticRouteDisplayContext _initWithName:a2 glyphStateValueTransformer:self glyphPackage:? glyphImage:?];
  }

  v21.receiver = self;
  v21.super_class = SBElasticRouteDisplayContext;
  v16 = [(SBElasticRouteDisplayContext *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_localizedDisplayName, a3);
    v18 = MEMORY[0x223D6F7F0](v13);
    glyphStateValueTransformer = v17->_glyphStateValueTransformer;
    v17->_glyphStateValueTransformer = v18;

    objc_storeStrong(&v17->_glyphPackage, a5);
    objc_storeStrong(&v17->_glyphImage, a6);
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