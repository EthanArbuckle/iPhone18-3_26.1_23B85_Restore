@interface RSMirrorDetection
- (RSMirrorDetection)init;
@end

@implementation RSMirrorDetection

- (RSMirrorDetection)init
{
  v8.receiver = self;
  v8.super_class = RSMirrorDetection;
  v4 = [(RSMirrorDetection *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3);
    mirrorPoints = v4->_mirrorPoints;
    v4->_mirrorPoints = v5;
  }

  return v4;
}

@end