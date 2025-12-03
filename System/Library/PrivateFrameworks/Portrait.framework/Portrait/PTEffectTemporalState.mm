@interface PTEffectTemporalState
- (PTEffectTemporalState)initWithMetalContext:(id)context;
- (void)restoreState:(id)state cvmNetwork:(id)network temporalFilter:(id)filter;
- (void)saveState:(id)state cvmNetwork:(id)network msrColorPyramid:(id)pyramid;
@end

@implementation PTEffectTemporalState

- (PTEffectTemporalState)initWithMetalContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = PTEffectTemporalState;
  v6 = [(PTEffectTemporalState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)saveState:(id)state cvmNetwork:(id)network msrColorPyramid:(id)pyramid
{
  metalContext = self->_metalContext;
  pyramidCopy = pyramid;
  networkCopy = network;
  stateCopy = state;
  textureUtil = [(PTMetalContext *)metalContext textureUtil];
  inPrevDisparity = [networkCopy inPrevDisparity];
  width = [inPrevDisparity width];
  inPrevDisparity2 = [networkCopy inPrevDisparity];
  height = [inPrevDisparity2 height];
  inPrevDisparity3 = [networkCopy inPrevDisparity];
  v18 = [textureUtil createWithWidth:width height:height pixelFormat:objc_msgSend(inPrevDisparity3, "pixelFormat")];
  disparityNetworkTemporalState = self->_disparityNetworkTemporalState;
  self->_disparityNetworkTemporalState = v18;

  textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
  outDisparity = [networkCopy outDisparity];

  [textureUtil2 copy:stateCopy inTex:outDisparity outTex:self->_disparityNetworkTemporalState];
  pyramidRGBA = [pyramidCopy pyramidRGBA];

  firstObject = [pyramidRGBA firstObject];

  textureUtil3 = [(PTMetalContext *)self->_metalContext textureUtil];
  v24 = [textureUtil3 createWithWidth:objc_msgSend(firstObject height:"width") pixelFormat:objc_msgSend(firstObject, "height"), objc_msgSend(firstObject, "pixelFormat")];
  lastQuatersizeRGBA = self->_lastQuatersizeRGBA;
  self->_lastQuatersizeRGBA = v24;

  textureUtil4 = [(PTMetalContext *)self->_metalContext textureUtil];
  [textureUtil4 copy:stateCopy inTex:firstObject outTex:self->_lastQuatersizeRGBA];
}

- (void)restoreState:(id)state cvmNetwork:(id)network temporalFilter:(id)filter
{
  metalContext = self->_metalContext;
  filterCopy = filter;
  networkCopy = network;
  stateCopy = state;
  textureUtil = [(PTMetalContext *)metalContext textureUtil];
  disparityNetworkTemporalState = self->_disparityNetworkTemporalState;
  inPrevDisparity = [networkCopy inPrevDisparity];
  [textureUtil copy:stateCopy inTex:disparityNetworkTemporalState outTex:inPrevDisparity];

  textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
  lastQuatersizeRGBA = self->_lastQuatersizeRGBA;
  inRGBA = [networkCopy inRGBA];
  [textureUtil2 copy:stateCopy inTex:lastQuatersizeRGBA outTex:inRGBA];

  inRGBA2 = [networkCopy inRGBA];

  [filterCopy prepareFilter:stateCopy opticalFlowRGB:inRGBA2 frameIndex:0];
}

@end