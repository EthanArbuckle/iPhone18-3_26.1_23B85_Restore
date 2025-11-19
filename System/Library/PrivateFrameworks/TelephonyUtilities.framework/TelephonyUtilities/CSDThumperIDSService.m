@interface CSDThumperIDSService
+ (id)sharedInstance;
@end

@implementation CSDThumperIDSService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B87E0;
  block[3] = &unk_10061A860;
  block[4] = a1;
  if (qword_1006ACE50 != -1)
  {
    dispatch_once(&qword_1006ACE50, block);
  }

  v2 = qword_1006ACE48;

  return v2;
}

@end