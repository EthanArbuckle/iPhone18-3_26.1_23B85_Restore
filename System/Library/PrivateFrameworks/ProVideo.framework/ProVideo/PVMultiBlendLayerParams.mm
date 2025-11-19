@interface PVMultiBlendLayerParams
- (PVMultiBlendLayerParams)init;
- (PVMultiBlendLayerParams)initWithCoder:(id)a3;
- (PVMultiBlendLayerParams)initWithOpacity:(float)a3 mode:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PVMultiBlendLayerParams

- (PVMultiBlendLayerParams)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PVMultiBlendLayerParams;
  v5 = [(PVMultiBlendLayerParams *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"opacity"];
    [v6 floatValue];
    v8 = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    v10 = [v9 integerValue];

    LODWORD(v11) = v8;
    [(PVMultiBlendLayerParams *)v5 _sharedInitWithOpacity:v10 mode:v11];
  }

  return v5;
}

- (PVMultiBlendLayerParams)init
{
  v6.receiver = self;
  v6.super_class = PVMultiBlendLayerParams;
  v2 = [(PVMultiBlendLayerParams *)&v6 init];
  v4 = v2;
  if (v2)
  {
    LODWORD(v3) = 1.0;
    [(PVMultiBlendLayerParams *)v2 _sharedInitWithOpacity:0 mode:v3];
  }

  return v4;
}

- (PVMultiBlendLayerParams)initWithOpacity:(float)a3 mode:(int)a4
{
  v4 = *&a4;
  v10.receiver = self;
  v10.super_class = PVMultiBlendLayerParams;
  v6 = [(PVMultiBlendLayerParams *)&v10 init];
  v8 = v6;
  if (v6)
  {
    *&v7 = a3;
    [(PVMultiBlendLayerParams *)v6 _sharedInitWithOpacity:v4 mode:v7];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mode];
  [v7 encodeObject:v4 forKey:@"mode"];

  *&v5 = self->_opacity;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v7 encodeObject:v6 forKey:@"opacity"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  *&v5 = self->_opacity;
  mode = self->_mode;

  return [v4 initWithOpacity:mode mode:v5];
}

@end