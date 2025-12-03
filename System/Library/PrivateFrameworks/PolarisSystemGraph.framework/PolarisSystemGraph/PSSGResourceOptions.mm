@interface PSSGResourceOptions
+ (id)optionsWithoutStrides;
- (BOOL)isEqual:(id)equal;
- (PSSGResourceOptions)initWithDefaultStride:(unsigned int)stride supportedStrides:(id)strides setupSupported:(BOOL)supported baseMSGSyncID:(id)d;
- (id)description;
@end

@implementation PSSGResourceOptions

+ (id)optionsWithoutStrides
{
  v2 = [[PSSGResourceOptions alloc] initWithDefaultStride:0 supportedStrides:0 setupSupported:0 baseMSGSyncID:0];

  return v2;
}

- (PSSGResourceOptions)initWithDefaultStride:(unsigned int)stride supportedStrides:(id)strides setupSupported:(BOOL)supported baseMSGSyncID:(id)d
{
  stridesCopy = strides;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = PSSGResourceOptions;
  v13 = [(PSSGResourceOptions *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_defaultStride = stride;
    objc_storeStrong(&v13->_supportedStrides, strides);
    v14->_setupResumeSupported = supported;
    objc_storeStrong(&v14->_baseMSGSyncID, d);
    v15 = v14;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  defaultStride = [(PSSGResourceOptions *)self defaultStride];
  if (defaultStride == [equalCopy defaultStride])
  {
    v6 = MEMORY[0x277CBEB98];
    supportedStrides = [(PSSGResourceOptions *)self supportedStrides];
    v8 = [v6 setWithArray:supportedStrides];
    v9 = MEMORY[0x277CBEB98];
    supportedStrides2 = [equalCopy supportedStrides];
    v11 = [v9 setWithArray:supportedStrides2];
    v12 = [v8 isEqual:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  defaultStride = [(PSSGResourceOptions *)self defaultStride];
  supportedStrides = [(PSSGResourceOptions *)self supportedStrides];
  v6 = [v3 stringWithFormat:@"default: %d supported: %@", defaultStride, supportedStrides];

  return v6;
}

@end