@interface SCDAElectionParticipantIdVendor
+ (id)computeId:(id)a3 withPayload:(id)a4;
+ (void)initialize;
- (SCDAElectionParticipantIdVendor)init;
- (id)computeIds:(id)a3;
- (void)_clearCBAdvertiser;
- (void)_fetchBTLEAddress;
- (void)_init;
- (void)_reinit;
- (void)dealloc;
- (void)fetchBTLEAddressIfRequired;
@end

@implementation SCDAElectionParticipantIdVendor

- (void)fetchBTLEAddressIfRequired
{
  if (self->_reinitialize)
  {
    [(SCDAElectionParticipantIdVendor *)self _reinit];
  }

  if (!self->_bleAddress)
  {

    [(SCDAElectionParticipantIdVendor *)self _fetchBTLEAddress];
  }
}

- (void)dealloc
{
  self->_deallocInProgress = 1;
  bleAddress = self->_bleAddress;
  self->_bleAddress = 0;

  rotatedBLEAddress = self->_rotatedBLEAddress;
  self->_rotatedBLEAddress = 0;

  [(SCDAElectionParticipantIdVendor *)self _clearCBAdvertiser];
  v5.receiver = self;
  v5.super_class = SCDAElectionParticipantIdVendor;
  [(SCDAElectionParticipantIdVendor *)&v5 dealloc];
}

- (void)_clearCBAdvertiser
{
  cbAdvertiser = self->_cbAdvertiser;
  if (cbAdvertiser)
  {
    self->_cbAdvertiser = 0;
    v3 = cbAdvertiser;

    [(CBAdvertiser *)v3 setInvalidationHandler:0];
    [(CBAdvertiser *)v3 setInterruptionHandler:0];
    [(CBAdvertiser *)v3 setAdvertisingAddressChangedHandler:0];
    [(CBAdvertiser *)v3 invalidate];
  }
}

- (id)computeIds:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SCDAElectionParticipantIdVendor *)self fetchBTLEAddressIfRequired];
  v5 = self;
  objc_sync_enter(v5);
  v6 = v5->_bleAddress;
  v7 = v5->_lastAddressChange;
  v8 = v5->_rotatedBLEAddress;
  v9 = v5->_lastRotatedAddressChange;
  objc_sync_exit(v5);

  if (!v4 || !v6)
  {
    v13 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315650;
      v24 = "[SCDAElectionParticipantIdVendor computeIds:]";
      v25 = 1024;
      *v26 = v6 == 0;
      *&v26[4] = 1024;
      *&v26[6] = v4 == 0;
      _os_log_debug_impl(&dword_1DA758000, v13, OS_LOG_TYPE_DEBUG, "%s #scda Returning null sentinel id. addressNil?%d payloadNil?%d", &v23, 0x18u);
    }

    v12 = _nullId;
    goto LABEL_10;
  }

  [(NSDate *)v7 timeIntervalSinceNow];
  if (v10 < -1202.0)
  {
    v11 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315394;
      v24 = "[SCDAElectionParticipantIdVendor computeIds:]";
      v25 = 2112;
      *v26 = v7;
      _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s #scda Returning stale sentinel id. lastChange: %@", &v23, 0x16u);
    }

    v12 = _staleId;
LABEL_10:
    v14 = v12;
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v14 = [SCDAElectionParticipantIdVendor computeId:v6 withPayload:v4];
  v19 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v23 = 136315906;
    v24 = "[SCDAElectionParticipantIdVendor computeIds:]";
    v25 = 2112;
    *v26 = v14;
    *&v26[8] = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v4;
    _os_log_debug_impl(&dword_1DA758000, v19, OS_LOG_TYPE_DEBUG, "%s #scda Primary electionParticipantId: %@ from address %@ and payload %@", &v23, 0x2Au);
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else if (!v8)
  {
    goto LABEL_11;
  }

  [(NSDate *)v9 timeIntervalSinceNow];
  if (v20 < -1202.0)
  {
    v21 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315394;
      v24 = "[SCDAElectionParticipantIdVendor computeIds:]";
      v25 = 2112;
      *v26 = v9;
      _os_log_debug_impl(&dword_1DA758000, v21, OS_LOG_TYPE_DEBUG, "%s #scda Ignoring stale rotated address. lastChange: %@", &v23, 0x16u);
    }

    goto LABEL_11;
  }

  v15 = [SCDAElectionParticipantIdVendor computeId:v8 withPayload:v4];
  v22 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v23 = 136315650;
    v24 = "[SCDAElectionParticipantIdVendor computeIds:]";
    v25 = 2112;
    *v26 = v15;
    *&v26[8] = 2112;
    v27 = v8;
    _os_log_debug_impl(&dword_1DA758000, v22, OS_LOG_TYPE_DEBUG, "%s #scda Rotated electionParticipantId: %@ from address %@", &v23, 0x20u);
  }

LABEL_12:
  v16 = [[SCDAElectionParticipantIds alloc] init:v14 rotatedElectionParticipantId:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)_fetchBTLEAddress
{
  v25 = *MEMORY[0x1E69E9840];
  cbAdvertiser = self->_cbAdvertiser;
  if (cbAdvertiser)
  {
    v4 = [(CBAdvertiser *)cbAdvertiser advertisingAddressDataNonConnectable];
    v5 = [v4 copy];

    v6 = [MEMORY[0x1E695DF00] now];
    if (!v5)
    {
      v13 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v19 = 136315138;
        v20 = "[SCDAElectionParticipantIdVendor _fetchBTLEAddress]";
        _os_log_debug_impl(&dword_1DA758000, v13, OS_LOG_TYPE_DEBUG, "%s #scda BTLE address is not available", &v19, 0xCu);
      }

      goto LABEL_13;
    }

    v7 = self;
    objc_sync_enter(v7);
    bleAddress = v7->_bleAddress;
    if (bleAddress)
    {
      if ([(NSData *)bleAddress isEqualToData:v5])
      {
        v9 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          v19 = 136315138;
          v20 = "[SCDAElectionParticipantIdVendor _fetchBTLEAddress]";
          v10 = "%s #scda Ignoring duplicate BTLE address change";
          v11 = v9;
          v12 = 12;
LABEL_16:
          _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, v10, &v19, v12);
        }
      }

      else
      {
        objc_storeStrong(&v7->_rotatedBLEAddress, v7->_bleAddress);
        objc_storeStrong(&v7->_lastRotatedAddressChange, v7->_lastAddressChange);
        objc_storeStrong(&v7->_bleAddress, v5);
        objc_storeStrong(&v7->_lastAddressChange, v6);
        v15 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          rotatedBLEAddress = v7->_rotatedBLEAddress;
          v18 = v7->_bleAddress;
          v19 = 136315650;
          v20 = "[SCDAElectionParticipantIdVendor _fetchBTLEAddress]";
          v21 = 2112;
          v22 = rotatedBLEAddress;
          v23 = 2112;
          v24 = v18;
          v10 = "%s #scda BTLE address changed from %@ to %@";
          v11 = v15;
          v12 = 32;
          goto LABEL_16;
        }
      }
    }

    else
    {
      objc_storeStrong(&v7->_bleAddress, v5);
      objc_storeStrong(&v7->_lastAddressChange, v6);
      v14 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v19 = 136315394;
        v20 = "[SCDAElectionParticipantIdVendor _fetchBTLEAddress]";
        v21 = 2112;
        v22 = v5;
        v10 = "%s #scda BTLE address initialized to %@ due to address change";
        v11 = v14;
        v12 = 22;
        goto LABEL_16;
      }
    }

    objc_sync_exit(v7);

LABEL_13:
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_reinit
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self->_deallocInProgress)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[SCDAElectionParticipantIdVendor _reinit]";
      _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s #scda ElectionParticipantIdVendor reinit", &v7, 0xCu);
    }

    bleAddress = self->_bleAddress;
    self->_bleAddress = 0;

    rotatedBLEAddress = self->_rotatedBLEAddress;
    self->_rotatedBLEAddress = 0;

    [(SCDAElectionParticipantIdVendor *)self _clearCBAdvertiser];
    [(SCDAElectionParticipantIdVendor *)self _init];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_init
{
  self->_reinitialize = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695D250]);
  cbAdvertiser = self->_cbAdvertiser;
  self->_cbAdvertiser = v3;

  v5 = self->_cbAdvertiser;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__SCDAElectionParticipantIdVendor__init__block_invoke;
  v15[3] = &unk_1E85D3850;
  v15[4] = self;
  [(CBAdvertiser *)v5 setInterruptionHandler:v15];
  v6 = self->_cbAdvertiser;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__SCDAElectionParticipantIdVendor__init__block_invoke_24;
  v14[3] = &unk_1E85D3850;
  v14[4] = self;
  [(CBAdvertiser *)v6 setInvalidationHandler:v14];
  objc_initWeak(&location, self);
  v7 = self->_cbAdvertiser;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__SCDAElectionParticipantIdVendor__init__block_invoke_25;
  v11[3] = &unk_1E85D31B8;
  objc_copyWeak(&v12, &location);
  [(CBAdvertiser *)v7 setAdvertisingAddressChangedHandler:v11];
  v8 = self->_cbAdvertiser;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__SCDAElectionParticipantIdVendor__init__block_invoke_2;
  v9[3] = &unk_1E85D31E0;
  v9[4] = self;
  objc_copyWeak(&v10, &location);
  [(CBAdvertiser *)v8 activateWithCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __40__SCDAElectionParticipantIdVendor__init__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SCDAElectionParticipantIdVendor _init]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s #scda CBAdvertiser interrupted. Will flag for reinitialization", &v4, 0xCu);
  }

  *(*(a1 + 32) + 8) = 1;
  v3 = *MEMORY[0x1E69E9840];
}

void __40__SCDAElectionParticipantIdVendor__init__block_invoke_24(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SCDAElectionParticipantIdVendor _init]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s #scda CBAdvertiser invalidated. Will flag for reinitialization", &v4, 0xCu);
  }

  *(*(a1 + 32) + 8) = 1;
  v3 = *MEMORY[0x1E69E9840];
}

void __40__SCDAElectionParticipantIdVendor__init__block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchBTLEAddress];
}

void __40__SCDAElectionParticipantIdVendor__init__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    *(*(a1 + 32) + 8) = 1;
    v4 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[SCDAElectionParticipantIdVendor _init]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1DA758000, v4, OS_LOG_TYPE_ERROR, "%s #scda CBAdvertiser activation failed with %@; BTLE address may not be available", &v7, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _fetchBTLEAddress];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (SCDAElectionParticipantIdVendor)init
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SCDAElectionParticipantIdVendor;
  v2 = [(SCDAElectionParticipantIdVendor *)&v6 init];
  if (v2)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v8 = "[SCDAElectionParticipantIdVendor init]";
      _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s #scda ElectionParticipantIdVendor init", buf, 0xCu);
    }

    v2->_deallocInProgress = 0;
    [(SCDAElectionParticipantIdVendor *)v2 _init];
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)computeId:(id)a3 withPayload:(id)a4
{
  data[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v5 length];
  if (v7 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  data[0] = 0;
  data[1] = 0;
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"73fa281b-4376-5284-8d9f-dc7ec5ad068f"];
  [v9 getUUIDBytes:data];

  memset(&v16, 0, sizeof(v16));
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, data, 0x10u);
  v10 = [v6 bytes];
  v11 = [v6 length];

  CC_SHA1_Update(&v16, v10, v11);
  v12 = [v5 bytes];

  CC_SHA1_Update(&v16, v12, v8);
  CC_SHA1_Final(md, &v16);
  v18 = v18 & 0xF | 0x50;
  v19 = v19 & 0x3F | 0x80;
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:md];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (void)initialize
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v3 = _nullId;
  _nullId = v2;

  _staleId = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"];

  MEMORY[0x1EEE66BB8]();
}

@end