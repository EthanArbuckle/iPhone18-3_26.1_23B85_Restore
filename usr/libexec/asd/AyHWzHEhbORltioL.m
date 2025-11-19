@interface AyHWzHEhbORltioL
+ (id)sharedInstance;
- (unint64_t)XIxEGt72u9dQYi43:(int)a3 S6srINK5PmHWLUdD:(unint64_t)a4;
@end

@implementation AyHWzHEhbORltioL

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009498;
  block[3] = &unk_10068EEE8;
  block[4] = a1;
  if (qword_1006D7C60 != -1)
  {
    dispatch_once(&qword_1006D7C60, block);
  }

  v2 = qword_1006D7C58;

  return v2;
}

- (unint64_t)XIxEGt72u9dQYi43:(int)a3 S6srINK5PmHWLUdD:(unint64_t)a4
{
  if (a3 > 0xA)
  {
    return 0;
  }

  result = 1;
  if (((1 << a3) & 0x40C) == 0)
  {
    return 0;
  }

  return result;
}

@end