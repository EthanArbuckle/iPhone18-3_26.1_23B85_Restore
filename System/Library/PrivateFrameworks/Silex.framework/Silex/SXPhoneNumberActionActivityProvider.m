@interface SXPhoneNumberActionActivityProvider
- (SXPhoneNumberActionActivityProvider)initWithHost:(id)a3 messagePresenter:(id)a4 deviceCapabilities:(id)a5;
- (id)activityGroupForAction:(id)a3;
- (void)call:(id)a3 showDialog:(BOOL)a4;
- (void)copy:(id)a3;
- (void)faceTime:(id)a3;
- (void)message:(id)a3;
@end

@implementation SXPhoneNumberActionActivityProvider

- (SXPhoneNumberActionActivityProvider)initWithHost:(id)a3 messagePresenter:(id)a4 deviceCapabilities:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXPhoneNumberActionActivityProvider;
  v12 = [(SXPhoneNumberActionActivityProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_host, a3);
    objc_storeStrong(&v13->_messagePresenter, a4);
    objc_storeStrong(&v13->_deviceCapabilities, a5);
  }

  return v13;
}

- (id)activityGroupForAction:(id)a3
{
  v4 = a3;
  v5 = [SXActionActivityGroup alloc];
  v6 = [v4 phoneNumber];
  v7 = [(SXActionActivityGroup *)v5 initWithTitle:v6];

  v8 = [(SXPhoneNumberActionActivityProvider *)self deviceCapabilities];
  v9 = [v8 hasCellularTelephonyCapabilities];

  if (v9)
  {
    v10 = [SXBlockActionActivity alloc];
    v11 = SXBundle();
    v12 = [v11 localizedStringForKey:@"Call" value:&stru_1F532F6C0 table:0];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __62__SXPhoneNumberActionActivityProvider_activityGroupForAction___block_invoke;
    v40[3] = &unk_1E84FEDD0;
    v40[4] = self;
    v41 = v4;
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
  v16 = v4;
  v37 = v16;
  v17 = [(SXBlockActionActivity *)v14 initWithLabel:v15 type:1 block:v36];
  [(SXActionActivityGroup *)v7 addActivity:v17];

  v18 = [(SXPhoneNumberActionActivityProvider *)self messagePresenter];
  LODWORD(v15) = [v18 canPresentMessage];

  if (v15)
  {
    v19 = [SXBlockActionActivity alloc];
    v20 = SXBundle();
    v21 = [v20 localizedStringForKey:@"Send Message" value:&stru_1F532F6C0 table:0];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __62__SXPhoneNumberActionActivityProvider_activityGroupForAction___block_invoke_4;
    v33 = &unk_1E84FEDD0;
    v34 = self;
    v35 = v16;
    v22 = [(SXBlockActionActivity *)v19 initWithLabel:v21 type:1 block:&v30];
    [(SXActionActivityGroup *)v7 addActivity:v22, v30, v31, v32, v33, v34];
  }

  v23 = [SXPasteboardActionActivity alloc];
  v24 = SXBundle();
  v25 = [v24 localizedStringForKey:@"Copy" value:&stru_1F532F6C0 table:0];
  v26 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v27 = [v16 phoneNumber];
  v28 = [(SXPasteboardActionActivity *)v23 initWithLabel:v25 type:1 pasteboard:v26 string:v27];
  [(SXActionActivityGroup *)v7 addActivity:v28];

  return v7;
}

- (void)call:(id)a3 showDialog:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E69D8A90];
  v7 = a3;
  v16 = objc_alloc_init(v6);
  v8 = [v16 providersPassingTest:&__block_literal_global_103];
  v9 = [v8 firstObject];

  v10 = objc_alloc(MEMORY[0x1E69D8C00]);
  v11 = [v7 phoneNumber];

  v12 = [v10 initWithType:2 value:v11];
  v13 = [objc_alloc(MEMORY[0x1E69D8BD0]) initWithProvider:v9];
  [v13 setVideo:0];
  [v13 setHandle:v12];
  [v13 setShowUIPrompt:v4];
  v14 = [(SXPhoneNumberActionActivityProvider *)self host];
  v15 = [v13 URL];
  [v14 openURL:v15 completion:0];
}

- (void)faceTime:(id)a3
{
  v4 = MEMORY[0x1E69D8A90];
  v5 = a3;
  v14 = objc_alloc_init(v4);
  v6 = [v14 providersPassingTest:&__block_literal_global_19_0];
  v7 = [v6 firstObject];

  v8 = objc_alloc(MEMORY[0x1E69D8C00]);
  v9 = [v5 phoneNumber];

  v10 = [v8 initWithType:2 value:v9];
  v11 = [objc_alloc(MEMORY[0x1E69D8BD0]) initWithProvider:v7];
  [v11 setVideo:0];
  [v11 setHandle:v10];
  v12 = [(SXPhoneNumberActionActivityProvider *)self host];
  v13 = [v11 URL];
  [v12 openURL:v13 completion:0];
}

- (void)message:(id)a3
{
  v4 = a3;
  v5 = [SXPresentableMessage alloc];
  v6 = [v4 phoneNumber];

  v8 = [(SXPresentableMessage *)v5 initWithRecipient:v6 message:0];
  v7 = [(SXPhoneNumberActionActivityProvider *)self messagePresenter];
  [v7 presentMessage:v8];
}

- (void)copy:(id)a3
{
  v3 = MEMORY[0x1E69DCD50];
  v4 = a3;
  v6 = [v3 generalPasteboard];
  v5 = [v4 phoneNumber];

  [v6 setString:v5];
}

@end