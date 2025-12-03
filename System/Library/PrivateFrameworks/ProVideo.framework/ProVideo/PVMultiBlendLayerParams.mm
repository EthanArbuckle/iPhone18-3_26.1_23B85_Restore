@interface PVMultiBlendLayerParams
- (PVMultiBlendLayerParams)init;
- (PVMultiBlendLayerParams)initWithCoder:(id)coder;
- (PVMultiBlendLayerParams)initWithOpacity:(float)opacity mode:(int)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PVMultiBlendLayerParams

- (PVMultiBlendLayerParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PVMultiBlendLayerParams;
  v5 = [(PVMultiBlendLayerParams *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"opacity"];
    [v6 floatValue];
    v8 = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    integerValue = [v9 integerValue];

    LODWORD(v11) = v8;
    [(PVMultiBlendLayerParams *)v5 _sharedInitWithOpacity:integerValue mode:v11];
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

- (PVMultiBlendLayerParams)initWithOpacity:(float)opacity mode:(int)mode
{
  v4 = *&mode;
  v10.receiver = self;
  v10.super_class = PVMultiBlendLayerParams;
  v6 = [(PVMultiBlendLayerParams *)&v10 init];
  v8 = v6;
  if (v6)
  {
    *&v7 = opacity;
    [(PVMultiBlendLayerParams *)v6 _sharedInitWithOpacity:v4 mode:v7];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mode];
  [coderCopy encodeObject:v4 forKey:@"mode"];

  *&v5 = self->_opacity;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [coderCopy encodeObject:v6 forKey:@"opacity"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  *&v5 = self->_opacity;
  mode = self->_mode;

  return [v4 initWithOpacity:mode mode:v5];
}

@end