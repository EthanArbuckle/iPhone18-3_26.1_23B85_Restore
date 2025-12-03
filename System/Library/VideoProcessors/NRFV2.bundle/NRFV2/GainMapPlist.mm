@interface GainMapPlist
- (int)readPlist:(id)plist;
@end

@implementation GainMapPlist

- (int)readPlist:(id)plist
{
  plistCopy = plist;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v5, @"MinThreshold", 0, 0.0);
  self->minThreshold = v6;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v7, @"MaxThreshold", 0, 0.0);
  v9 = v8;

  self->maxThreshold = v9;
  return 0;
}

@end