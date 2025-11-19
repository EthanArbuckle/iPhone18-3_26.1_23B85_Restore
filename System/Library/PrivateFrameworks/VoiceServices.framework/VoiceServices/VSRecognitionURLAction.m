@interface VSRecognitionURLAction
- (id)perform;
- (void)dealloc;
- (void)setURL:(id)a3;
@end

@implementation VSRecognitionURLAction

- (id)perform
{
  userInfoValues[1] = *MEMORY[0x277D85DE8];
  if (self->_url)
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      url = self->_url;
      *buf = 138412290;
      *&buf[4] = url;
      _os_log_impl(&dword_272850000, v3, OS_LOG_TYPE_INFO, "Dispatching open URL: %@", buf, 0xCu);
    }

    v5 = [(VSRecognitionAction *)self _session];
    v6 = self->_url;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__VSRecognitionURLAction_perform__block_invoke;
    v12[3] = &unk_279E4F1B0;
    v12[4] = self;
    [v5 _notifyDelegateOpenURL:v6 completion:v12];
    v7 = 0;
  }

  else
  {
    v8 = *MEMORY[0x277CBECE8];
    *buf = *MEMORY[0x277CBEE30];
    userInfoValues[0] = @"no URL to launch";
    v7 = CFErrorCreateWithUserInfoKeysAndValues(v8, @"VSErrorDomain", -4005, buf, userInfoValues, 1);
    [(VSRecognitionAction *)self completeWithNextAction:0 error:v7];
    v9 = v7;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void __33__VSRecognitionURLAction_perform__block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__VSRecognitionURLAction_perform__block_invoke_2;
  v3[3] = &unk_279E4F808;
  v2 = *(a1 + 32);
  v3[4] = a2;
  v3[5] = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __33__VSRecognitionURLAction_perform__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = VSGetLogDefault();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    v4 = *(a1 + 32);
    if (v3)
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_error_impl(&dword_272850000, v2, OS_LOG_TYPE_ERROR, "Open URL failed: %@", &v7, 0xCu);
      v4 = *(a1 + 32);
    }
  }

  else
  {
    v4 = 0;
  }

  result = [*(a1 + 40) completeWithNextAction:0 error:v4];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setURL:(id)a3
{
  url = self->_url;
  if (url != a3)
  {

    self->_url = a3;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VSRecognitionURLAction;
  [(VSRecognitionAction *)&v3 dealloc];
}

@end