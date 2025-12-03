@interface CSDAudioSessionProvider
+ (id)getAudioSessionFor:(id)for;
@end

@implementation CSDAudioSessionProvider

+ (id)getAudioSessionFor:(id)for
{
  swift_getObjCClassMetadata();
  forCopy = for;
  v5 = sub_10003F454(forCopy);

  return v5;
}

@end