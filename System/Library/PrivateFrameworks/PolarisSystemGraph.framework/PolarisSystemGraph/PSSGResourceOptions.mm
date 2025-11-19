@interface PSSGResourceOptions
+ (id)optionsWithoutStrides;
- (BOOL)isEqual:(id)a3;
- (PSSGResourceOptions)initWithDefaultStride:(unsigned int)a3 supportedStrides:(id)a4 setupSupported:(BOOL)a5 baseMSGSyncID:(id)a6;
- (id)description;
@end

@implementation PSSGResourceOptions

+ (id)optionsWithoutStrides
{
  v2 = [[PSSGResourceOptions alloc] initWithDefaultStride:0 supportedStrides:0 setupSupported:0 baseMSGSyncID:0];

  return v2;
}

- (PSSGResourceOptions)initWithDefaultStride:(unsigned int)a3 supportedStrides:(id)a4 setupSupported:(BOOL)a5 baseMSGSyncID:(id)a6
{
  v11 = a4;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = PSSGResourceOptions;
  v13 = [(PSSGResourceOptions *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_defaultStride = a3;
    objc_storeStrong(&v13->_supportedStrides, a4);
    v14->_setupResumeSupported = a5;
    objc_storeStrong(&v14->_baseMSGSyncID, a6);
    v15 = v14;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PSSGResourceOptions *)self defaultStride];
  if (v5 == [v4 defaultStride])
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = [(PSSGResourceOptions *)self supportedStrides];
    v8 = [v6 setWithArray:v7];
    v9 = MEMORY[0x277CBEB98];
    v10 = [v4 supportedStrides];
    v11 = [v9 setWithArray:v10];
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
  v4 = [(PSSGResourceOptions *)self defaultStride];
  v5 = [(PSSGResourceOptions *)self supportedStrides];
  v6 = [v3 stringWithFormat:@"default: %d supported: %@", v4, v5];

  return v6;
}

@end