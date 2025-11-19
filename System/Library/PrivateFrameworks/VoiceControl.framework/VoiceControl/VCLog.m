@interface VCLog
+ (id)logForCategory:(id)a3;
- (VCLog)init;
@end

@implementation VCLog

+ (id)logForCategory:(id)a3
{
  v3._countAndFlagsBits = sub_2723FE5B4();
  VCLogging.Category.init(rawValue:)(v3);
  v4 = v8;
  if (v8 == 43)
  {
    v4 = 0;
  }

  v7 = v4;
  v5 = sub_2723F7818(&v7);

  return v5;
}

- (VCLog)init
{
  v3.receiver = self;
  v3.super_class = VCLog;
  return [(VCLog *)&v3 init];
}

@end