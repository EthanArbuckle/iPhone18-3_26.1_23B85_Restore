@interface RSSemanticSegmentation
- (RSSemanticSegmentation)init;
@end

@implementation RSSemanticSegmentation

- (RSSemanticSegmentation)init
{
  v6.receiver = self;
  v6.super_class = RSSemanticSegmentation;
  v2 = [(RSSemanticSegmentation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_deviceOrientation = 0;
    *&v2->_initRotater = 0;
    v4 = v2;
  }

  return v3;
}

@end