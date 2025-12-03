@interface _BKHIDKeyboardDevicePropertiesContainer
+ (id)protobufSchema;
@end

@implementation _BKHIDKeyboardDevicePropertiesContainer

+ (id)protobufSchema
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C370;
  block[3] = &unk_1000FC018;
  block[4] = self;
  if (qword_100125D88 != -1)
  {
    dispatch_once(&qword_100125D88, block);
  }

  v2 = qword_100125D80;

  return v2;
}

@end