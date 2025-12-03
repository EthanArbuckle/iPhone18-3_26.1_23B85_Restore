@interface MTUTIUtil
+ (BOOL)isAudio:(id)audio;
+ (BOOL)isVideo:(id)video;
+ (id)convertUti:(id)uti;
@end

@implementation MTUTIUtil

+ (id)convertUti:(id)uti
{
  utiCopy = uti;
  identifier = [*MEMORY[0x1E6983080] identifier];
  v5 = [utiCopy isEqualToString:identifier];

  if (v5)
  {
    identifier2 = [*MEMORY[0x1E6982EE8] identifier];

    utiCopy = identifier2;
  }

  return utiCopy;
}

+ (BOOL)isVideo:(id)video
{
  v3 = [self convertUti:video];
  identifier = [*MEMORY[0x1E6982EE8] identifier];
  v5 = [v3 isEqualToString:identifier];

  return v5;
}

+ (BOOL)isAudio:(id)audio
{
  v3 = [self convertUti:audio];
  identifier = [*MEMORY[0x1E6982CD0] identifier];
  v5 = [v3 isEqualToString:identifier];

  return v5;
}

@end