@interface FPDisparityEstimator_CostParameters
- (id)description;
@end

@implementation FPDisparityEstimator_CostParameters

- (id)description
{
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"\r");
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v4, @"nView:                          %u \r", self->_nView);
  v7 = objc_msgSend_stringByAppendingString_(v3, v6, v5);

  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v8, @"rigidWindowSupport:             %d \r", self->_rigidWindowSupport);
  v11 = objc_msgSend_stringByAppendingString_(v7, v10, v9);

  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v12, @"costMapAntialiasingStrength:    %f \r", self->_costMapAntialiasingStrength);
  v15 = objc_msgSend_stringByAppendingString_(v11, v14, v13);

  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v16, @"costEpsilon:                    %f \r", self->_costEpsilon);
  v19 = objc_msgSend_stringByAppendingString_(v15, v18, v17);

  return v19;
}

@end