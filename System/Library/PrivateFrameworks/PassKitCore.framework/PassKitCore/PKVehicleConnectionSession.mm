@interface PKVehicleConnectionSession
+ (void)sessionForPass:(PKSecureElementPass *)pass delegate:(id)delegate completion:(void *)completion;
- (BOOL)sendData:(NSData *)message error:(NSError *)error;
- (id)_initWithDelegate:(id)delegate sessionIdentifier:(id)identifier passLibrary:(id)library assertion:(id)assertion;
- (id)delegate;
- (void)_updateConnectionState:(int64_t)state;
- (void)dealloc;
- (void)vehicleConnectionDidRecievePassthroughData:(id)data;
@end

@implementation PKVehicleConnectionSession

+ (void)sessionForPass:(PKSecureElementPass *)pass delegate:(id)delegate completion:(void *)completion
{
  v7 = pass;
  v8 = delegate;
  v9 = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKVehicleConnectionSession_sessionForPass_delegate_completion___block_invoke;
  v13[3] = &unk_1E79CA3B8;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [PKAssertion acquireAssertionOfType:8 withReason:@"PKVehicleConnectionSession opened" completion:v13];
}

void __65__PKVehicleConnectionSession_sessionForPass_delegate_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Could not acquire vehicle connection assertion", v12, 2u);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
    (*(a1[6] + 2))();
  }

  else
  {
    v8 = +[PKPassLibrary sharedInstance];
    v9 = [a1[4] uniqueID];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__PKVehicleConnectionSession_sessionForPass_delegate_completion___block_invoke_2;
    v13[3] = &unk_1E79CA390;
    v14 = a1[5];
    v15 = v8;
    v16 = v5;
    v17 = a1[6];
    v10 = v8;
    [v10 startVehicleConnectionSessionWithPassUniqueIdentifier:v9 completion:v13];
  }
}

void __65__PKVehicleConnectionSession_sessionForPass_delegate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[PKVehicleConnectionSession alloc] _initWithDelegate:*(a1 + 32) sessionIdentifier:v4 passLibrary:*(a1 + 40) assertion:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 48) invalidate];
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
  }

  (*(*(a1 + 56) + 16))();
}

- (id)_initWithDelegate:(id)delegate sessionIdentifier:(id)identifier passLibrary:(id)library assertion:(id)assertion
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  libraryCopy = library;
  assertionCopy = assertion;
  v21.receiver = self;
  v21.super_class = PKVehicleConnectionSession;
  v14 = [(PKVehicleConnectionSession *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeStrong(&v15->_passLibrary, library);
    [(PKPassLibrary *)v15->_passLibrary addDelegate:v15];
    v15->_connectionStatus = 2;
    objc_storeStrong(&v15->_sessionIdentifier, identifier);
    objc_storeStrong(&v15->_assertion, assertion);
    objc_initWeak(&location, v15);
    assertion = v15->_assertion;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__PKVehicleConnectionSession__initWithDelegate_sessionIdentifier_passLibrary_assertion___block_invoke;
    v18[3] = &unk_1E79C9D80;
    objc_copyWeak(&v19, &location);
    [(PKAssertion *)assertion setInvalidationHandler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __88__PKVehicleConnectionSession__initWithDelegate_sessionIdentifier_passLibrary_assertion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained invalidate];
    v2 = v3[3];
    v3[3] = 0;

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  assertion = self->_assertion;
  if (assertion)
  {
    [(PKAssertion *)assertion invalidate];
    v4 = self->_assertion;
    self->_assertion = 0;
  }

  else
  {
    [(PKVehicleConnectionSession *)self invalidate];
  }

  v5.receiver = self;
  v5.super_class = PKVehicleConnectionSession;
  [(PKVehicleConnectionSession *)&v5 dealloc];
}

- (BOOL)sendData:(NSData *)message error:(NSError *)error
{
  v6 = message;
  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    v8 = [(PKPassLibrary *)self->_passLibrary sendRKEPassThroughMessage:v6 forSessionIdentifier:sessionIdentifier error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:2 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)vehicleConnectionDidRecievePassthroughData:(id)data
{
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 sessionDidReceiveData:dataCopy];
  }
}

- (void)_updateConnectionState:(int64_t)state
{
  self->_connectionStatus = state;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 sessionDidChangeConnectionState:state];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end