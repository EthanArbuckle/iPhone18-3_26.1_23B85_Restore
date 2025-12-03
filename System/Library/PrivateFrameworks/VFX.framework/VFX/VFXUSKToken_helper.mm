@interface VFXUSKToken_helper
+ (id)tokenWithString:(id)string;
@end

@implementation VFXUSKToken_helper

+ (id)tokenWithString:(id)string
{
  v4 = [qword_1EB658D08 alloc];
  v7 = objc_msgSend_initWithString_(v4, v5, string, v6);

  return v7;
}

@end