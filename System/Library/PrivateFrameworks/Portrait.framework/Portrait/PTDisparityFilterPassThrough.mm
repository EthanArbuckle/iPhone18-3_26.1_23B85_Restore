@interface PTDisparityFilterPassThrough
- (PTDisparityFilterPassThrough)initWithMetalContext:(id)a3;
- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inStatePrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 outState:(id)a8;
@end

@implementation PTDisparityFilterPassThrough

- (PTDisparityFilterPassThrough)initWithMetalContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PTDisparityFilterPassThrough;
  v6 = [(PTDisparityFilterPassThrough *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, a3);
    v8 = v7;
  }

  return v7;
}

- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inStatePrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 outState:(id)a8
{
  metalContext = self->_metalContext;
  v11 = a7;
  v12 = a6;
  v13 = a3;
  v14 = [(PTMetalContext *)metalContext textureUtil];
  v15 = [v14 copy:v13 inTex:v12 outTex:v11];

  return v15;
}

@end