@interface PLLoggingServiceListener
+ (PLLoggingServiceListener)sharedInstance;
- (PLLoggingServiceListener)init;
@end

@implementation PLLoggingServiceListener

- (PLLoggingServiceListener)init
{
  v3.receiver = self;
  v3.super_class = PLLoggingServiceListener;
  return [(PLLoggingServiceListener *)&v3 init];
}

+ (PLLoggingServiceListener)sharedInstance
{
  if (qword_2802D3020 != -1)
  {
    swift_once();
  }

  v3 = qword_2802D31F0;

  return v3;
}

@end