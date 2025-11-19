@interface VFXUSKToken_helper
+ (id)tokenWithString:(id)a3;
@end

@implementation VFXUSKToken_helper

+ (id)tokenWithString:(id)a3
{
  v4 = [qword_1EB658D08 alloc];
  v7 = objc_msgSend_initWithString_(v4, v5, a3, v6);

  return v7;
}

@end