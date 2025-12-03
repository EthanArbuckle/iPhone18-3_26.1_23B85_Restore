@interface TPSBiomeDataProvider
+ (void)donateEventWithIdentifier:(id)identifier context:(id)context userInfo:(id)info;
- (void)deregisterWakingForAllRegistrations;
- (void)deregisterWakingForRegistrationID:(id)d;
- (void)registerWakingForEventWithEvent:(id)event registrationID:(id)d clientIdentifier:(id)identifier completion:(id)completion;
@end

@implementation TPSBiomeDataProvider

+ (void)donateEventWithIdentifier:(id)identifier context:(id)context userInfo:(id)info
{
  v7 = sub_1C014C230();
  v9 = v8;
  if (context)
  {
    v10 = sub_1C014C230();
    context = v11;
    if (info)
    {
LABEL_3:
      infoCopy = info;
      info = sub_1C014BCC0();
      v14 = v13;

      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (info)
    {
      goto LABEL_3;
    }
  }

  v14 = 0xF000000000000000;
LABEL_6:
  sub_1C0149144(v7, v9, v10, context, info, v14);
  sub_1C01166E0(info, v14);
}

- (void)registerWakingForEventWithEvent:(id)event registrationID:(id)d clientIdentifier:(id)identifier completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_1C014C230();
  v12 = v11;
  if (identifier)
  {
    sub_1C014C230();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  eventCopy = event;
  selfCopy = self;
  sub_1C0149604(eventCopy, v10, v12, sub_1C01495AC, v13);
}

- (void)deregisterWakingForAllRegistrations
{
  selfCopy = self;
  sub_1C0147F20();
}

- (void)deregisterWakingForRegistrationID:(id)d
{
  v4 = sub_1C014C230();
  v6 = v5;
  selfCopy = self;
  sub_1C01483B0(v4, v6);
}

@end