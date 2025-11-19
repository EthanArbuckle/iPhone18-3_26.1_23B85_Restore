@interface GainMapPlist
- (int)readPlist:(id)a3;
@end

@implementation GainMapPlist

- (int)readPlist:(id)a3
{
  v4 = a3;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v5, @"MinThreshold", 0, 0.0);
  self->minThreshold = v6;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v7, @"MaxThreshold", 0, 0.0);
  v9 = v8;

  self->maxThreshold = v9;
  return 0;
}

@end