@interface GlobalsImpl
+ (_TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl)shared;
- (BOOL)isInternalInstall;
- (NSString)localDeviceAssistantIdentifier;
- (void)setLocalDeviceAssistantIdentifier:(id)identifier;
@end

@implementation GlobalsImpl

- (void)setLocalDeviceAssistantIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_266ABDA84();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_266A6B150(v4, v6);
}

- (NSString)localDeviceAssistantIdentifier
{
  sub_266A6C04C();
  if (v2)
  {
    v3 = sub_266ABDA74();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (_TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl)shared
{
  v2 = static GlobalsImpl.shared.getter();

  return v2;
}

- (BOOL)isInternalInstall
{
  selfCopy = self;
  v3 = sub_266A844AC();

  return v3 & 1;
}

@end