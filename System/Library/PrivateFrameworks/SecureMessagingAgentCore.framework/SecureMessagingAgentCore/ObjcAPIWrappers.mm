@interface ObjcAPIWrappers
- (void)requestPhoneNumberCredentialForSimLabelID:(id)a3 withCompletion:(id)a4;
@end

@implementation ObjcAPIWrappers

- (void)requestPhoneNumberCredentialForSimLabelID:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (CUTWeakLinkClass())
  {
    v7 = objc_alloc_init(CUTWeakLinkClass());
    if (objc_opt_respondsToSelector())
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __76__ObjcAPIWrappers_requestPhoneNumberCredentialForSimLabelID_withCompletion___block_invoke_29;
      v9[3] = &unk_279B92A08;
      v10 = v6;
      [v7 requestPhoneNumberCredentialForService:2 simLabelID:v5 withCompletion:v9];
    }
  }

  else
  {
    if (requestPhoneNumberCredentialForSimLabelID_withCompletion__onceToken != -1)
    {
      [ObjcAPIWrappers requestPhoneNumberCredentialForSimLabelID:withCompletion:];
    }

    v8 = requestPhoneNumberCredentialForSimLabelID_withCompletion____log;
    if (os_log_type_enabled(requestPhoneNumberCredentialForSimLabelID_withCompletion____log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26524C000, v8, OS_LOG_TYPE_DEFAULT, "IDS Change has not landed for phone number credential fetch.", buf, 2u);
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ObjcWrapperError" code:0 userInfo:0];
    (*(v6 + 2))(v6, 0, v7);
  }
}

uint64_t __76__ObjcAPIWrappers_requestPhoneNumberCredentialForSimLabelID_withCompletion___block_invoke()
{
  requestPhoneNumberCredentialForSimLabelID_withCompletion____log = os_log_create("com.apple.securemessaging", "ObjcWrapper");

  return MEMORY[0x2821F96F8]();
}

void __76__ObjcAPIWrappers_requestPhoneNumberCredentialForSimLabelID_withCompletion___block_invoke_29(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [PhoneNumberCredential alloc];
    v6 = [v9 telURI];
    v7 = [v9 credential];
    v8 = -[PhoneNumberCredential initWithTelURI:credential:credentialType:](v5, "initWithTelURI:credential:credentialType:", v6, v7, [v9 credentialType]);

    (*(*(a1 + 32) + 16))();
  }
}

@end