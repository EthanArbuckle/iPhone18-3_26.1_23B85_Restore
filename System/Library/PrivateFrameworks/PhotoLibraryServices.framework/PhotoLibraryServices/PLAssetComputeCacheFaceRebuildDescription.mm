@interface PLAssetComputeCacheFaceRebuildDescription
- (BOOL)isHidden;
- (BOOL)isManual;
- (PLAssetComputeCacheFaceRebuildDescription)initWithPayloadAttributes:(id)a3;
- (double)bodyCenterX;
- (double)bodyCenterY;
- (double)bodyHeight;
- (double)bodyWidth;
- (double)centerX;
- (double)centerY;
- (double)size;
- (int)cloudNameSource;
- (int)faceAlgorithmVersion;
- (int)nameSource;
@end

@implementation PLAssetComputeCacheFaceRebuildDescription

- (int)faceAlgorithmVersion
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"faceAlgorithmVersion"];
  v3 = [v2 intValue];

  return v3;
}

- (int)cloudNameSource
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"cloudNameSource"];
  v3 = [v2 intValue];

  return v3;
}

- (int)nameSource
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"nameSource"];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)isManual
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"manual"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isHidden
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"hidden"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (double)bodyHeight
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"bodyHeight"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)bodyWidth
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"bodyWidth"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)bodyCenterY
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"bodyCenterY"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)bodyCenterX
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"bodyCenterX"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)size
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"size"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)centerY
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"centerY"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)centerX
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"centerX"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (PLAssetComputeCacheFaceRebuildDescription)initWithPayloadAttributes:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLAssetComputeCacheFaceRebuildDescription;
  v6 = [(PLAssetComputeCacheFaceRebuildDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payloadAttributes, a3);
  }

  return v7;
}

@end