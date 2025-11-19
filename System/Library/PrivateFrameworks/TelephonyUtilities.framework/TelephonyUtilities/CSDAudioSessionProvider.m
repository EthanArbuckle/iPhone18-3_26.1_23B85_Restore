@interface CSDAudioSessionProvider
+ (id)getAudioSessionFor:(id)a3;
@end

@implementation CSDAudioSessionProvider

+ (id)getAudioSessionFor:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_10003F454(v4);

  return v5;
}

@end