@interface VFXUSKData_helper
+ (id)dataWithDouble:(double)a3;
+ (id)dataWithInt:(int)a3;
+ (id)dataWithString:(id)a3;
+ (id)dataWithToken:(id)a3;
@end

@implementation VFXUSKData_helper

+ (id)dataWithToken:(id)a3
{
  v4 = [qword_1EB658D18 alloc];
  v7 = objc_msgSend_initWithToken_(v4, v5, a3, v6);

  return v7;
}

+ (id)dataWithInt:(int)a3
{
  v3 = *&a3;
  v4 = [qword_1EB658D18 alloc];
  v7 = objc_msgSend_initWithInt_(v4, v5, v3, v6);

  return v7;
}

+ (id)dataWithDouble:(double)a3
{
  v4 = [qword_1EB658D18 alloc];
  v8 = objc_msgSend_initWithDouble_(v4, v5, v6, v7, a3);

  return v8;
}

+ (id)dataWithString:(id)a3
{
  v4 = [qword_1EB658D18 alloc];
  v7 = objc_msgSend_initWithString_(v4, v5, a3, v6);

  return v7;
}

@end