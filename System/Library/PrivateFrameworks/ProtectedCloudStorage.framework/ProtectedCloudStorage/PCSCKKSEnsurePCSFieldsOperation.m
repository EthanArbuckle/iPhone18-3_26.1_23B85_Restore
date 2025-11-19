@interface PCSCKKSEnsurePCSFieldsOperation
- (BOOL)haveCKKSPlaintextEntitlements;
- (PCSCKKSEnsurePCSFieldsOperation)initWithItemModifyContext:(id)a3;
- (int)updateKeychain:(id)a3 withAttributes:(id)a4;
- (void)start;
@end

@implementation PCSCKKSEnsurePCSFieldsOperation

- (PCSCKKSEnsurePCSFieldsOperation)initWithItemModifyContext:(id)a3
{
  v5 = a3;
  if ((PCSCurrentPersonaMatchesDSIDFromSet([v5 set]) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v5 serviceContexts];
  v7 = [v6 count];

  if (!v7 || (v18.receiver = self, v18.super_class = PCSCKKSEnsurePCSFieldsOperation, v8 = [(PCSCKKSEnsurePCSFieldsOperation *)&v18 init], (self = v8) == 0))
  {
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v8->_context, a3);
  v9 = [v5 serviceContexts];
  v10 = [v9 count];

  v11 = MEMORY[0x1E696AEC0];
  if (v10 == 1)
  {
    v12 = [(PCSCKKSItemModifyContext *)self->_context serviceContexts];
    v13 = [v12 allKeys];
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v11 stringWithFormat:@"EnsurePCSFields service: %@", v14];
    [(PCSCKKSEnsurePCSFieldsOperation *)self setName:v15];
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"EnsurePCSFields service: %@", @"bulk-service-identity-creation-identifier"];
    [(PCSCKKSEnsurePCSFieldsOperation *)self setName:v12];
  }

  self = self;
  v16 = self;
LABEL_10:

  return v16;
}

- (BOOL)haveCKKSPlaintextEntitlements
{
  if (PCSTestsEnabled())
  {
    v3 = 1;
  }

  else
  {
    v4 = [(PCSCKKSEnsurePCSFieldsOperation *)self context];
    v5 = PCSCurrentPersonaMatchesDSIDFromSet([v4 set]);

    if (v5)
    {
      if (haveCKKSPlaintextEntitlements_once != -1)
      {
        [PCSCKKSEnsurePCSFieldsOperation haveCKKSPlaintextEntitlements];
      }

      v3 = haveCKKSPlaintextEntitlements_haveEntitlements;
    }

    else
    {
      v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      v3 = 0;
      if (v6)
      {
        *v8 = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", v8, 2u);
        v3 = 0;
      }
    }
  }

  return v3 & 1;
}

void __64__PCSCKKSEnsurePCSFieldsOperation_haveCKKSPlaintextEntitlements__block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.ckks.plaintextfields", 0);
    CFRelease(v1);

    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  haveCKKSPlaintextEntitlements_haveEntitlements = v3;
}

- (void)start
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = 272;
  PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Starting: %s", "[PCSCKKSEnsurePCSFieldsOperation start]");
  if ([(PCSCKKSOperation *)self startOperation])
  {
    v4 = [(PCSCKKSEnsurePCSFieldsOperation *)self context];
    v5 = PCSCurrentPersonaMatchesDSIDFromSet([v4 set]);

    if (v5)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v6 = [(PCSCKKSEnsurePCSFieldsOperation *)self context];
      v7 = [v6 serviceContexts];
      v8 = [v7 allKeys];

      v9 = [v8 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v36;
        v33 = *MEMORY[0x1E697B3C8];
        v34 = v8;
        do
        {
          v12 = 0;
          do
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v35 + 1) + 8 * v12);
            v14 = [(PCSCKKSEnsurePCSFieldsOperation *)self context];
            v15 = [v14 serviceContexts];
            v16 = [v15 objectForKeyedSubscript:v13];

            if ([v16 currentIdentity])
            {
              v17 = [v16 currentItemReference];
              if (v17)
              {
                v18 = v17;
                v19 = [(PCSCKKSEnsurePCSFieldsOperation *)self haveCKKSPlaintextEntitlements];

                if (v19)
                {
                  v20 = [(PCSCKKSEnsurePCSFieldsOperation *)self context];
                  v21 = [v20 mtt];
                  v22 = [v21 measurePoint:@"EnsurePCSAttributes"];

                  if ((_PCSIdentityHavePCSCKKSAttributes([v16 currentIdentity]) & 1) == 0)
                  {
                    v23 = [MEMORY[0x1E695DF90] dictionary];
                    v40 = v33;
                    v24 = [v16 currentItemReference];
                    v41 = v24;
                    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];

                    if (_PCSKeychainAmendCKKSEntry([v16 currentIdentity], v23))
                    {
                      v26 = [(PCSCKKSEnsurePCSFieldsOperation *)self updateKeychain:v25 withAttributes:v23];
                      v32 = v25;
                      v27 = v3;
                      v28 = [*(&self->super.super.super.isa + v3) log];
                      v31 = [v16 currentIdentity];
                      v29 = v28;
                      v3 = v27;
                      v25 = v32;
                      PCSMigrationLog(v29, @"Updated identity %@ with CKKS attributes: status: %d", v31, v26);
                      if (!v26)
                      {
                        _PCSIdentityCheckPCSAttributes([v16 currentIdentity], v23);
                      }
                    }

                    else
                    {
                      PCSMigrationLog([*(&self->super.super.super.isa + v3) log], @"Could not build CKKS attributes for %@", objc_msgSend(v16, "currentIdentity"));
                    }

                    [v22 complete:1];

                    v8 = v34;
                  }
                }
              }
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v35 objects:v42 count:16];
        }

        while (v10);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    [(PCSCKKSOperation *)self completeOperation];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (int)updateKeychain:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PCSCKKSEnsurePCSFieldsOperation *)self context];
  v9 = PCSCurrentPersonaMatchesDSIDFromSet([v8 set]);

  if (v9)
  {
    v10 = qword_1ED6F2358(v6, v7);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", v12, 2u);
    }

    v10 = -25291;
  }

  return v10;
}

@end