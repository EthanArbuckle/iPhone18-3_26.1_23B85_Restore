@interface SXPhoneNumberActionActivityProvider
- (SXPhoneNumberActionActivityProvider)initWithHost:(id)host messagePresenter:(id)presenter deviceCapabilities:(id)capabilities;
- (id)activityGroupForAction:(id)action;
- (void)call:(id)call showDialog:(BOOL)dialog;
- (void)copy:(id)copy;
- (void)faceTime:(id)time;
- (void)message:(id)message;
@end

@implementation SXPhoneNumberActionActivityProvider

- (SXPhoneNumberActionActivityProvider)initWithHost:(id)host messagePresenter:(id)presenter deviceCapabilities:(id)capabilities
{
  hostCopy = host;
  presenterCopy = presenter;
  capabilitiesCopy = capabilities;
  v15.receiver = self;
  v15.super_class = SXPhoneNumberActionActivityProvider;
  v12 = [(SXPhoneNumberActionActivityProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_host, host);
    objc_storeStrong(&v13->_messagePresenter, presenter);
    objc_storeStrong(&v13->_deviceCapabilities, capabilities);
  }

  return v13;
}

- (id)activityGroupForAction:(id)action
{
  actionCopy = action;
  v5 = [SXActionActivityGroup alloc];
  phoneNumber = [actionCopy phoneNumber];
  v7 = [(SXActionActivityGroup *)v5 initWithTitle:phoneNumber];

  deviceCapabilities = [(SXPhoneNumberActionActivityProvider *)self deviceCapabilities];
  hasCellularTelephonyCapabilities = [deviceCapabilities hasCellularTelephonyCapabilities];

  if (hasCellularTelephonyCapabilities)
  {
    v10 = [SXBlockActionActivity alloc];
    v11 = SXBundle();
    v12 = [v11 localizedStringForKey:@"Call" value:&stru_1F532F6C0 table:0];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __62__SXPhoneNumberActionActivityProvider_activityGroupForAction___block_invoke;
    v40[3] = &unk_1E84FEDD0;
    v40[4] = self;
    v41 = actionCopy;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __62__SXPhoneNumberActionActivityProvider_activityGroupForAction___block_invoke_2;
    v38[3] = &unk_1E84FEDD0;
    v38[4] = self;
    v39 = v41;
    v13 = [(SXBlockActionActivity *)v10 initWithLabel:v12 type:0 immediateBlock:v40 userSelectedBlock:v38];
    [(SXActionActivityGroup *)v7 addActivity:v13];
  }

  v14 = [SXBlockActionActivity alloc];
  v15 = TUFaceTimeAudioServiceName();
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __62__SXPhoneNumberActionActivityProvider_activityGroupForAction___block_invoke_3;
  v36[3] = &unk_1E84FEDD0;
  v36[4] = self;
  v16 = actionCopy;
  v37 = v16;
  v17 = [(SXBlockActionActivity *)v14 initWithLabel:v15 type:1 block:v36];
  [(SXActionActivityGroup *)v7 addActivity:v17];

  messagePresenter = [(SXPhoneNumberActionActivityProvider *)self messagePresenter];
  LODWORD(v15) = [messagePresenter canPresentMessage];

  if (v15)
  {
    v19 = [SXBlockActionActivity alloc];
    v20 = SXBundle();
    v21 = [v20 localizedStringForKey:@"Send Message" value:&stru_1F532F6C0 table:0];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __62__SXPhoneNumberActionActivityProvider_activityGroupForAction___block_invoke_4;
    v33 = &unk_1E84FEDD0;
    selfCopy = self;
    v35 = v16;
    v22 = [(SXBlockActionActivity *)v19 initWithLabel:v21 type:1 block:&v30];
    [(SXActionActivityGroup *)v7 addActivity:v22, v30, v31, v32, v33, selfCopy];
  }

  v23 = [SXPasteboardActionActivity alloc];
  v24 = SXBundle();
  v25 = [v24 localizedStringForKey:@"Copy" value:&stru_1F532F6C0 table:0];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  phoneNumber2 = [v16 phoneNumber];
  v28 = [(SXPasteboardActionActivity *)v23 initWithLabel:v25 type:1 pasteboard:generalPasteboard string:phoneNumber2];
  [(SXActionActivityGroup *)v7 addActivity:v28];

  return v7;
}

- (void)call:(id)call showDialog:(BOOL)dialog
{
  dialogCopy = dialog;
  v6 = MEMORY[0x1E69D8A90];
  callCopy = call;
  v16 = objc_alloc_init(v6);
  v8 = [v16 providersPassingTest:&__block_literal_global_103];
  firstObject = [v8 firstObject];

  v10 = objc_alloc(MEMORY[0x1E69D8C00]);
  phoneNumber = [callCopy phoneNumber];

  v12 = [v10 initWithType:2 value:phoneNumber];
  v13 = [objc_alloc(MEMORY[0x1E69D8BD0]) initWithProvider:firstObject];
  [v13 setVideo:0];
  [v13 setHandle:v12];
  [v13 setShowUIPrompt:dialogCopy];
  host = [(SXPhoneNumberActionActivityProvider *)self host];
  v15 = [v13 URL];
  [host openURL:v15 completion:0];
}

- (void)faceTime:(id)time
{
  v4 = MEMORY[0x1E69D8A90];
  timeCopy = time;
  v14 = objc_alloc_init(v4);
  v6 = [v14 providersPassingTest:&__block_literal_global_19_0];
  firstObject = [v6 firstObject];

  v8 = objc_alloc(MEMORY[0x1E69D8C00]);
  phoneNumber = [timeCopy phoneNumber];

  v10 = [v8 initWithType:2 value:phoneNumber];
  v11 = [objc_alloc(MEMORY[0x1E69D8BD0]) initWithProvider:firstObject];
  [v11 setVideo:0];
  [v11 setHandle:v10];
  host = [(SXPhoneNumberActionActivityProvider *)self host];
  v13 = [v11 URL];
  [host openURL:v13 completion:0];
}

- (void)message:(id)message
{
  messageCopy = message;
  v5 = [SXPresentableMessage alloc];
  phoneNumber = [messageCopy phoneNumber];

  v8 = [(SXPresentableMessage *)v5 initWithRecipient:phoneNumber message:0];
  messagePresenter = [(SXPhoneNumberActionActivityProvider *)self messagePresenter];
  [messagePresenter presentMessage:v8];
}

- (void)copy:(id)copy
{
  v3 = MEMORY[0x1E69DCD50];
  copyCopy = copy;
  generalPasteboard = [v3 generalPasteboard];
  phoneNumber = [copyCopy phoneNumber];

  [generalPasteboard setString:phoneNumber];
}

@end