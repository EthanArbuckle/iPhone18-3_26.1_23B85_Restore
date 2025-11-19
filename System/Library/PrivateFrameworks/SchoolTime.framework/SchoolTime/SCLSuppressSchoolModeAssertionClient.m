@interface SCLSuppressSchoolModeAssertionClient
- (NSString)description;
- (SCLSuppressSchoolModeAssertionClient)initWithConnection:(id)a3;
- (SCLSuppressSchoolModeAssertionClientDelegate)delegate;
- (void)acquireWithExplanation:(id)a3 UUID:(id)a4 completion:(id)a5;
- (void)connectionDidInvalidate;
@end

@implementation SCLSuppressSchoolModeAssertionClient

- (SCLSuppressSchoolModeAssertionClient)initWithConnection:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SCLSuppressSchoolModeAssertionClient;
  v6 = [(SCLSuppressSchoolModeAssertionClient *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    connection = v7->_connection;
    v9 = SCLSuppressSchoolModeAssertionXPCServerInterface();
    [(NSXPCConnection *)connection setExportedInterface:v9];

    v10 = [v5 valueForEntitlement:0x2876232C8];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 BOOLValue])
    {
      v7->_entitled = 1;
    }

    else
    {
      v11 = scl_framework_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SCLSuppressSchoolModeAssertionClient *)v5 initWithConnection:v11];
      }
    }

    objc_initWeak(&location, v7);
    v12 = v7->_connection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__SCLSuppressSchoolModeAssertionClient_initWithConnection___block_invoke;
    v14[3] = &unk_279B6C3A8;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v12 setInvalidationHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __59__SCLSuppressSchoolModeAssertionClient_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionDidInvalidate];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SCLSuppressSchoolModeAssertionClient *)self explanation];
  v7 = [v3 stringWithFormat:@"<%@ %p explanation: %@>", v5, self, v6];;

  return v7;
}

- (void)connectionDidInvalidate
{
  [(SCLSuppressSchoolModeAssertionClient *)self setAcquired:0];
  v3 = [(SCLSuppressSchoolModeAssertionClient *)self delegate];
  [v3 clientDidInvalidate:self];
}

- (void)acquireWithExplanation:(id)a3 UUID:(id)a4 completion:(id)a5
{
  v11 = a5;
  v7 = [a3 copy];
  explanation = self->_explanation;
  self->_explanation = v7;

  if ([(SCLSuppressSchoolModeAssertionClient *)self isEntitled])
  {
    if (![(SCLSuppressSchoolModeAssertionClient *)self isAcquired])
    {
      [(SCLSuppressSchoolModeAssertionClient *)self setAcquired:1];
      v9 = [(SCLSuppressSchoolModeAssertionClient *)self delegate];
      [v9 clientDidAcquireAssertion:self];
    }

    v11[2](v11, 1, 0);
  }

  else
  {
    v10 = SCLEntitlementError(0x2876232C8);
    (v11)[2](v11, 0, v10);
  }
}

- (SCLSuppressSchoolModeAssertionClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithConnection:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "Client %@ is not entitled to acquire suppression assertions", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end