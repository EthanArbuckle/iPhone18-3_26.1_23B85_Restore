@interface PLAssetComputeCacheFaceRebuildDescription
- (BOOL)isHidden;
- (BOOL)isManual;
- (PLAssetComputeCacheFaceRebuildDescription)initWithPayloadAttributes:(id)attributes;
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
  intValue = [v2 intValue];

  return intValue;
}

- (int)cloudNameSource
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"cloudNameSource"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)nameSource
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"nameSource"];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)isManual
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"manual"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isHidden
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"hidden"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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

- (PLAssetComputeCacheFaceRebuildDescription)initWithPayloadAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9.receiver = self;
  v9.super_class = PLAssetComputeCacheFaceRebuildDescription;
  v6 = [(PLAssetComputeCacheFaceRebuildDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payloadAttributes, attributes);
  }

  return v7;
}

@end