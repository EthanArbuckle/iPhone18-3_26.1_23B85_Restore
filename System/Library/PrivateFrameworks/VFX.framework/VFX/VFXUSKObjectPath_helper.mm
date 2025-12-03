@interface VFXUSKObjectPath_helper
+ (id)objectPathWithString:(id)string;
@end

@implementation VFXUSKObjectPath_helper

+ (id)objectPathWithString:(id)string
{
  v4 = [qword_1EB658D10 alloc];
  v7 = objc_msgSend_initWithString_(v4, v5, string, v6);

  return v7;
}

@end