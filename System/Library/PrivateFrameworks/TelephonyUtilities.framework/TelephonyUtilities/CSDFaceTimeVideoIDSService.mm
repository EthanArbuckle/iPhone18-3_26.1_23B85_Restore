@interface CSDFaceTimeVideoIDSService
+ (id)sharedInstance;
@end

@implementation CSDFaceTimeVideoIDSService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7D80;
  block[3] = &unk_10061A860;
  block[4] = self;
  if (qword_1006ACC38 != -1)
  {
    dispatch_once(&qword_1006ACC38, block);
  }

  v2 = qword_1006ACC30;

  return v2;
}

@end