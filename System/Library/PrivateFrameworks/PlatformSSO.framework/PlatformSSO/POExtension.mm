@interface POExtension
- (BOOL)canPerformRegistration;
- (POExtension)initWithExtensionBundleIdentifier:(id)identifier delegate:(id)delegate;
- (POExtension)initWithExtensionBundleIdentifier:(id)identifier extensionManager:(id)manager delegate:(id)delegate;
- (POExtensionDelegate)delegate;
- (id)supportedDeviceEncryptionAlgorithms;
- (id)supportedDeviceSigningAlgorithms;
- (id)supportedUserSecureEnclaveKeySigningAlgorithms;
- (int64_t)protocolVersion;
- (int64_t)supportedGrantTypes;
- (void)_unload;
- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error;
- (void)authorizationDidFailWithOtherVersionError:(id)error;
- (void)beginDeviceRegistrationUsingOptions:(int64_t)options extensionData:(id)data completion:(id)completion;
- (void)beginUserRegistrationUsingUserName:(id)name authenticationMethod:(int)method options:(int64_t)options extensionData:(id)data completion:(id)completion;
- (void)close;
- (void)dealloc;
- (void)displayNamesForGroups:(id)groups extensionData:(id)data completion:(id)completion;
- (void)keyWillRotateForKeyType:(int64_t)type newKey:(__SecKey *)key extensionData:(id)data completion:(id)completion;
- (void)presentAuthorizationViewControllerInWindow:(id)window hints:(id)hints completion:(id)completion;
- (void)presentRegistrationViewControllerWithCompletion:(id)completion;
- (void)profilePictureForUserUsingExtensionData:(id)data completion:(id)completion;
- (void)registrationDidCancelWithCompletion:(id)completion;
- (void)registrationDidCompleteWithCompletion:(id)completion;
- (void)unload;
@end

@implementation POExtension

- (POExtension)initWithExtensionBundleIdentifier:(id)identifier delegate:(id)delegate
{
  v6 = MEMORY[0x277CEBEE8];
  delegateCopy = delegate;
  identifierCopy = identifier;
  sharedInstance = [v6 sharedInstance];
  v10 = [(POExtension *)self initWithExtensionBundleIdentifier:identifierCopy extensionManager:sharedInstance delegate:delegateCopy];

  return v10;
}

- (POExtension)initWithExtensionBundleIdentifier:(id)identifier extensionManager:(id)manager delegate:(id)delegate
{
  identifierCopy = identifier;
  managerCopy = manager;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = POExtension;
  v11 = [(POExtension *)&v18 init];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = [managerCopy loadExtensionWithBundleIdentifier:identifierCopy];
  extension = v11->_extension;
  v11->_extension = v12;

  objc_storeWeak(&v11->_delegate, delegateCopy);
  v14 = v11->_extension;
  if (v14)
  {
    [(SOExtension *)v14 saveDelegate:v11 forRequestIdentifier:@"platform sso"];
LABEL_4:
    v15 = v11;
    goto LABEL_8;
  }

  v16 = PO_LOG_POExtension();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [POExtension initWithExtensionBundleIdentifier:extensionManager:delegate:];
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (void)dealloc
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_25E831000, v0, OS_LOG_TYPE_DEBUG, "%s  on %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)unload
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[POExtension unload]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  [(POExtension *)self close];
  [(POExtension *)self _unload];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_unload
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[POExtension _unload]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  [(SOExtension *)self->_extension unload];
  [(SOExtension *)self->_extension removeDelegateForRequestIdentifier:@"platform sso"];
  extension = self->_extension;
  self->_extension = 0;

  extensionViewController = self->_extensionViewController;
  self->_extensionViewController = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[POExtension close]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_11);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)beginDeviceRegistrationUsingOptions:(int64_t)options extensionData:(id)data completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v10 = PO_LOG_POExtension();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[POExtension beginDeviceRegistrationUsingOptions:extensionData:completion:]";
    v21 = 2048;
    optionsCopy = options;
    v23 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_DEFAULT, "%s options = %ld on %@", buf, 0x20u);
  }

  extension = self->_extension;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__POExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke;
  v15[3] = &unk_279A3ABD8;
  v17 = completionCopy;
  optionsCopy2 = options;
  v15[4] = self;
  v16 = dataCopy;
  v12 = dataCopy;
  v13 = completionCopy;
  [(SOExtension *)extension requestAuthorizationViewControllerWithCompletion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __76__POExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = PO_LOG_POExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_INFO, "requestAuthorizationViewControllerWithCompletion: remoteViewController = %{public}@, error = %{public}@", buf, 0x16u);
  }

  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(v9 + 8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __76__POExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2;
    v16[3] = &unk_279A3ABB0;
    v16[4] = v9;
    v12 = *(a1 + 56);
    v17 = *(a1 + 48);
    [v11 beginDeviceRegistrationUsingOptions:v12 extensionData:v10 completion:v16];
    v13 = v17;
  }

  else
  {
    v14 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__POExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_4;
    block[3] = &unk_279A3A0F8;
    v19 = *(a1 + 48);
    dispatch_async(v14, block);

    v13 = v19;
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __76__POExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __76__POExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = PO_LOG_POExtension();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __76__POExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2_cold_1(a2);
  }

  v5 = [*(a1 + 32) sdkVersionString];
  v6 = [v5 compare:&unk_28708C438];

  if (v6 == -1)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_8);
  }

  v7 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__POExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2_9;
  v8[3] = &unk_279A3AB88;
  v9 = *(a1 + 40);
  v10 = a2;
  dispatch_async(v7, v8);
}

uint64_t __76__POExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2_9(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)beginUserRegistrationUsingUserName:(id)name authenticationMethod:(int)method options:(int64_t)options extensionData:(id)data completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dataCopy = data;
  completionCopy = completion;
  v15 = PO_LOG_POExtension();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v28 = "[POExtension beginUserRegistrationUsingUserName:authenticationMethod:options:extensionData:completion:]";
    v29 = 1026;
    methodCopy = method;
    v31 = 2048;
    optionsCopy = options;
    v33 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v15, OS_LOG_TYPE_DEFAULT, "%s authenticationMethod = %{public}d, options = %ld on %@", buf, 0x26u);
  }

  extension = self->_extension;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __104__POExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke;
  v21[3] = &unk_279A3AC00;
  v21[4] = self;
  v22 = nameCopy;
  methodCopy2 = method;
  v24 = completionCopy;
  optionsCopy2 = options;
  v23 = dataCopy;
  v17 = dataCopy;
  v18 = nameCopy;
  v19 = completionCopy;
  [(SOExtension *)extension requestAuthorizationViewControllerWithCompletion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __104__POExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = PO_LOG_POExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v23 = v6;
    v24 = 2114;
    v25 = v7;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_INFO, "requestAuthorizationViewControllerWithCompletion: remoteViewController = %{public}@, error = %{public}@", buf, 0x16u);
  }

  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(v9 + 8);
    v12 = *(a1 + 72);
    v13 = *(a1 + 48);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __104__POExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2;
    v18[3] = &unk_279A3ABB0;
    v18[4] = v9;
    v14 = *(a1 + 64);
    v19 = *(a1 + 56);
    [v11 beginUserRegistrationUsingUserName:v10 authenticationMethod:v12 options:v14 extensionData:v13 completion:v18];
    v15 = v19;
  }

  else
  {
    v16 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__POExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_12;
    block[3] = &unk_279A3A0F8;
    v21 = *(a1 + 56);
    dispatch_async(v16, block);

    v15 = v21;
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __104__POExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_12(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __104__POExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = PO_LOG_POExtension();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __104__POExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2_cold_1(a2);
  }

  v5 = [*(a1 + 32) sdkVersionString];
  v6 = [v5 compare:&unk_28708C438];

  if (v6 == -1)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_15);
  }

  v7 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __104__POExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2_16;
  v8[3] = &unk_279A3AB88;
  v9 = *(a1 + 40);
  v10 = a2;
  dispatch_async(v7, v8);
}

uint64_t __104__POExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2_16(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)registrationDidCompleteWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = PO_LOG_POExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[POExtension registrationDidCompleteWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  extension = self->_extension;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__POExtension_registrationDidCompleteWithCompletion___block_invoke;
  v9[3] = &unk_279A3AC28;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  [(SOExtension *)extension requestAuthorizationViewControllerWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __53__POExtension_registrationDidCompleteWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = PO_LOG_POExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_INFO, "requestAuthorizationViewControllerWithCompletion: remoteViewController = %{public}@, error = %{public}@", buf, 0x16u);
  }

  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    v9 = *(*(a1 + 32) + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__POExtension_registrationDidCompleteWithCompletion___block_invoke_2;
    v11[3] = &unk_279A3A0F8;
    v12 = *(a1 + 40);
    [v9 registrationDidCompleteWithCompletion:v11];
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_19);
    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __53__POExtension_registrationDidCompleteWithCompletion___block_invoke_2(uint64_t a1)
{
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_21);
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)registrationDidCancelWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = PO_LOG_POExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[POExtension registrationDidCancelWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__POExtension_registrationDidCancelWithCompletion___block_invoke;
  v9[3] = &unk_279A3A0D0;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __51__POExtension_registrationDidCancelWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__POExtension_registrationDidCancelWithCompletion___block_invoke_2;
  v2[3] = &unk_279A3A0F8;
  v3 = *(a1 + 40);
  [v1 registrationDidCancelWithCompletion:v2];
}

void __51__POExtension_registrationDidCancelWithCompletion___block_invoke_2(uint64_t a1)
{
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_23);
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__POExtension_registrationDidCancelWithCompletion___block_invoke_4;
  block[3] = &unk_279A3A0F8;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

- (int64_t)supportedGrantTypes
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = dispatch_semaphore_create(0);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  extension = self->_extension;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__POExtension_supportedGrantTypes__block_invoke;
  v6[3] = &unk_279A3AC78;
  v6[4] = self;
  v6[5] = &v11;
  v6[6] = &v7;
  [(SOExtension *)extension setupNonUISessionWithCompletion:v6];
  dispatch_semaphore_wait(v12[5], 0xFFFFFFFFFFFFFFFFLL);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v4;
}

intptr_t __34__POExtension_supportedGrantTypes__block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__POExtension_supportedGrantTypes__block_invoke_2;
    v6[3] = &unk_279A3AC50;
    v7 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    return [v3 supportedGrantTypesCompletion:v6];
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return dispatch_semaphore_signal(v5);
  }
}

- (int64_t)protocolVersion
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = dispatch_semaphore_create(0);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  extension = self->_extension;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__POExtension_protocolVersion__block_invoke;
  v6[3] = &unk_279A3AC78;
  v6[4] = self;
  v6[5] = &v11;
  v6[6] = &v7;
  [(SOExtension *)extension setupNonUISessionWithCompletion:v6];
  dispatch_semaphore_wait(v12[5], 0xFFFFFFFFFFFFFFFFLL);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v4;
}

intptr_t __30__POExtension_protocolVersion__block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__POExtension_protocolVersion__block_invoke_2;
    v6[3] = &unk_279A3AC50;
    v7 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    return [v3 protocolVersionCompletion:v6];
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return dispatch_semaphore_signal(v5);
  }
}

- (id)supportedDeviceSigningAlgorithms
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = dispatch_semaphore_create(0);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  extension = self->_extension;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__POExtension_supportedDeviceSigningAlgorithms__block_invoke;
  v6[3] = &unk_279A3AC78;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [(SOExtension *)extension setupNonUISessionWithCompletion:v6];
  dispatch_semaphore_wait(v14[5], 0xFFFFFFFFFFFFFFFFLL);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

intptr_t __47__POExtension_supportedDeviceSigningAlgorithms__block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__POExtension_supportedDeviceSigningAlgorithms__block_invoke_2;
    v6[3] = &unk_279A3ACA0;
    v7 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    return [v3 supportedDeviceSigningAlgorithmsCompletion:v6];
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return dispatch_semaphore_signal(v5);
  }
}

void __47__POExtension_supportedDeviceSigningAlgorithms__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

- (id)supportedDeviceEncryptionAlgorithms
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = dispatch_semaphore_create(0);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  extension = self->_extension;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__POExtension_supportedDeviceEncryptionAlgorithms__block_invoke;
  v6[3] = &unk_279A3AC78;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [(SOExtension *)extension setupNonUISessionWithCompletion:v6];
  dispatch_semaphore_wait(v14[5], 0xFFFFFFFFFFFFFFFFLL);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

intptr_t __50__POExtension_supportedDeviceEncryptionAlgorithms__block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__POExtension_supportedDeviceEncryptionAlgorithms__block_invoke_2;
    v6[3] = &unk_279A3ACA0;
    v7 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    return [v3 supportedDeviceEncryptionAlgorithmsCompletion:v6];
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return dispatch_semaphore_signal(v5);
  }
}

void __50__POExtension_supportedDeviceEncryptionAlgorithms__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

- (id)supportedUserSecureEnclaveKeySigningAlgorithms
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = dispatch_semaphore_create(0);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  extension = self->_extension;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__POExtension_supportedUserSecureEnclaveKeySigningAlgorithms__block_invoke;
  v6[3] = &unk_279A3AC78;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [(SOExtension *)extension setupNonUISessionWithCompletion:v6];
  dispatch_semaphore_wait(v14[5], 0xFFFFFFFFFFFFFFFFLL);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

intptr_t __61__POExtension_supportedUserSecureEnclaveKeySigningAlgorithms__block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__POExtension_supportedUserSecureEnclaveKeySigningAlgorithms__block_invoke_2;
    v6[3] = &unk_279A3ACA0;
    v7 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    return [v3 supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:v6];
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return dispatch_semaphore_signal(v5);
  }
}

void __61__POExtension_supportedUserSecureEnclaveKeySigningAlgorithms__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

- (BOOL)canPerformRegistration
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[POExtension canPerformRegistration]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = dispatch_semaphore_create(0);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  extension = self->_extension;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__POExtension_canPerformRegistration__block_invoke;
  v8[3] = &unk_279A3AC78;
  v8[4] = self;
  v8[5] = buf;
  v8[6] = &v9;
  [(SOExtension *)extension setupNonUISessionWithCompletion:v8];
  dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(buf, 8);

  v6 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

intptr_t __37__POExtension_canPerformRegistration__block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__POExtension_canPerformRegistration__block_invoke_2;
    v6[3] = &unk_279A3ACC8;
    v7 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    return [v3 canPerformRegistrationCompletion:v6];
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return dispatch_semaphore_signal(v5);
  }
}

- (void)presentRegistrationViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PO_LOG_POExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtension presentRegistrationViewControllerWithCompletion:];
  }

  delegate = [(POExtension *)self delegate];
  [delegate presentRegistrationViewControllerWithCompletion:completionCopy];
}

- (void)presentAuthorizationViewControllerInWindow:(id)window hints:(id)hints completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = PO_LOG_POExtension();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[POExtension presentAuthorizationViewControllerInWindow:hints:completion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  if (self->_extensionViewController)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"No extension registration view controller"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = PO_LOG_POExtension();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[POExtension authorization:didCompleteWithCredential:error:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_32);
  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__POExtension_authorization_didCompleteWithCredential_error___block_invoke_2;
  v11[3] = &unk_279A3A7D8;
  v11[4] = self;
  v12 = errorCopy;
  v9 = errorCopy;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __61__POExtension_authorization_didCompleteWithCredential_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 requestDidCompleteWithError:*(a1 + 40)];
  }
}

- (void)authorizationDidFailWithOtherVersionError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = PO_LOG_POExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[POExtension authorizationDidFailWithOtherVersionError:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  [(POExtension *)self authorization:errorCopy didCompleteWithCredential:0 error:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)keyWillRotateForKeyType:(int64_t)type newKey:(__SecKey *)key extensionData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v12 = [objc_alloc(MEMORY[0x277CDBD80]) initWithKey:key];
  extension = self->_extension;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__POExtension_keyWillRotateForKeyType_newKey_extensionData_completion___block_invoke;
  v17[3] = &unk_279A3ACF0;
  v20 = completionCopy;
  typeCopy = type;
  v17[4] = self;
  v18 = v12;
  v19 = dataCopy;
  v14 = dataCopy;
  v15 = v12;
  v16 = completionCopy;
  [(SOExtension *)extension setupNonUISessionWithCompletion:v17];
}

void __71__POExtension_keyWillRotateForKeyType_newKey_extensionData_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(a1 + 64);
    v9 = [*(a1 + 40) endpoint];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__POExtension_keyWillRotateForKeyType_newKey_extensionData_completion___block_invoke_38;
    v13[3] = &unk_279A3ABB0;
    v10 = &v14;
    v11 = *(a1 + 48);
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    [v7 keyWillRotateForKeyType:v8 keyProxyEndpoint:v9 extensionData:v11 completion:v13];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__POExtension_keyWillRotateForKeyType_newKey_extensionData_completion___block_invoke_2;
    v16[3] = &unk_279A3A088;
    v10 = &v17;
    v17 = v5;
    v12 = __71__POExtension_keyWillRotateForKeyType_newKey_extensionData_completion___block_invoke_2(v16);
    (*(*(a1 + 56) + 16))();
  }
}

id __71__POExtension_keyWillRotateForKeyType_newKey_extensionData_completion___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to call key rotation on extension."];
  v2 = PO_LOG_POExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

uint64_t __71__POExtension_keyWillRotateForKeyType_newKey_extensionData_completion___block_invoke_38(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)displayNamesForGroups:(id)groups extensionData:(id)data completion:(id)completion
{
  groupsCopy = groups;
  dataCopy = data;
  completionCopy = completion;
  extension = self->_extension;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__POExtension_displayNamesForGroups_extensionData_completion___block_invoke;
  v15[3] = &unk_279A3AD40;
  v15[4] = self;
  v16 = groupsCopy;
  v17 = dataCopy;
  v18 = completionCopy;
  v12 = dataCopy;
  v13 = groupsCopy;
  v14 = completionCopy;
  [(SOExtension *)extension setupNonUISessionWithCompletion:v15];
}

void __62__POExtension_displayNamesForGroups_extensionData_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__POExtension_displayNamesForGroups_extensionData_completion___block_invoke_42;
    v12[3] = &unk_279A3AD18;
    v9 = &v13;
    v10 = *(a1 + 48);
    v13 = *(a1 + 56);
    [v8 displayNamesForGroups:v7 extensionData:v10 completion:v12];
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__POExtension_displayNamesForGroups_extensionData_completion___block_invoke_2;
    v14[3] = &unk_279A3A088;
    v9 = &v15;
    v15 = v5;
    v11 = __62__POExtension_displayNamesForGroups_extensionData_completion___block_invoke_2(v14);
    (*(*(a1 + 56) + 16))();
  }
}

id __62__POExtension_displayNamesForGroups_extensionData_completion___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to call displayNamesForGroups on extension."];
  v2 = PO_LOG_POExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)profilePictureForUserUsingExtensionData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  extension = self->_extension;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__POExtension_profilePictureForUserUsingExtensionData_completion___block_invoke;
  v11[3] = &unk_279A3AD90;
  v12 = dataCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = dataCopy;
  v10 = completionCopy;
  [(SOExtension *)extension setupNonUISessionWithCompletion:v11];
}

void __66__POExtension_profilePictureForUserUsingExtensionData_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__POExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_47;
    v11[3] = &unk_279A3AD68;
    v9 = &v12;
    v12 = *(a1 + 48);
    [v8 profilePictureForUserUsingExtensionData:v7 completion:v11];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__POExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_2;
    v13[3] = &unk_279A3A088;
    v9 = &v14;
    v14 = v5;
    v10 = __66__POExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_2(v13);
    (*(*(a1 + 48) + 16))();
  }
}

id __66__POExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to call profilePictureForUser on extension."];
  v2 = PO_LOG_POExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (POExtensionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithExtensionBundleIdentifier:extensionManager:delegate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_25E831000, v0, v1, "PlatformSSO extension not found (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__POExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_25E831000, v2, v3, "beginDeviceRegistrationUsingLoginManager completed, result = %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __104__POExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_25E831000, v2, v3, "beginUserRegistrationUsingLoginManager completed, result = %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)presentRegistrationViewControllerWithCompletion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_25E831000, v0, OS_LOG_TYPE_DEBUG, "%s  on %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end