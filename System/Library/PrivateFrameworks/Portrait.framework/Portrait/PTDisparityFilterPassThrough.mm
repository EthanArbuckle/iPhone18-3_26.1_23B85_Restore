@interface PTDisparityFilterPassThrough
- (PTDisparityFilterPassThrough)initWithMetalContext:(id)context;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state;
@end

@implementation PTDisparityFilterPassThrough

- (PTDisparityFilterPassThrough)initWithMetalContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = PTDisparityFilterPassThrough;
  v6 = [(PTDisparityFilterPassThrough *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
    v8 = v7;
  }

  return v7;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state
{
  metalContext = self->_metalContext;
  outDisparityCopy = outDisparity;
  disparityCopy = disparity;
  filterCopy = filter;
  textureUtil = [(PTMetalContext *)metalContext textureUtil];
  v15 = [textureUtil copy:filterCopy inTex:disparityCopy outTex:outDisparityCopy];

  return v15;
}

@end