@interface VFXUSKData_helper
+ (id)dataWithDouble:(double)double;
+ (id)dataWithInt:(int)int;
+ (id)dataWithString:(id)string;
+ (id)dataWithToken:(id)token;
@end

@implementation VFXUSKData_helper

+ (id)dataWithToken:(id)token
{
  v4 = [qword_1EB658D18 alloc];
  v7 = objc_msgSend_initWithToken_(v4, v5, token, v6);

  return v7;
}

+ (id)dataWithInt:(int)int
{
  v3 = *&int;
  v4 = [qword_1EB658D18 alloc];
  v7 = objc_msgSend_initWithInt_(v4, v5, v3, v6);

  return v7;
}

+ (id)dataWithDouble:(double)double
{
  v4 = [qword_1EB658D18 alloc];
  v8 = objc_msgSend_initWithDouble_(v4, v5, v6, v7, double);

  return v8;
}

+ (id)dataWithString:(id)string
{
  v4 = [qword_1EB658D18 alloc];
  v7 = objc_msgSend_initWithString_(v4, v5, string, v6);

  return v7;
}

@end