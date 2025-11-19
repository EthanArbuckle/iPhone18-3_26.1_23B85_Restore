@interface CSDFaceTimeAudioIDSService
+ (id)sharedInstance;
@end

@implementation CSDFaceTimeAudioIDSService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A7B98;
  block[3] = &unk_10061A860;
  block[4] = a1;
  if (qword_1006ACE40 != -1)
  {
    dispatch_once(&qword_1006ACE40, block);
  }

  v2 = qword_1006ACE38;

  return v2;
}

@end