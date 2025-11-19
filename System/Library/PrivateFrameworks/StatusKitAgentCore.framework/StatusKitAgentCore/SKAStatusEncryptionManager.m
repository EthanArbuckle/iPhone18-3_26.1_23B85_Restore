@interface SKAStatusEncryptionManager
+ (id)logger;
- (SKAStatusEncryptionManager)initWithDatabaseManager:(id)a3 invitationManager:(id)a4;
- (id)_deserializeBinaryPlistDictionaryData:(id)a3;
- (id)_encryptPayload:(id)a3 channel:(id)a4;
- (id)_mostRecentIncomingRatchetForChannel:(id)a3;
- (id)_serializeDictionaryAsBinaryPlist:(id)a3;
- (id)decryptStatusPayloadFromStatusEnvelopeData:(id)a3 channel:(id)a4;
- (id)encodeStatusPayload:(id)a3 statusUniqueIdentifier:(id)a4 dateCreated:(id)a5 currentServerTime:(id)a6 channel:(id)a7;
- (id)encryptionValidationTokenForChannel:(id)a3;
- (id)extractEnvelopeFromStatusEnvelopeData:(id)a3;
- (void)encodeStatusPayloadForProvisioning:(id)a3 statusUniqueIdentifier:(id)a4 dateCreated:(id)a5 currentServerTime:(id)a6 channel:(id)a7;
@end

@implementation SKAStatusEncryptionManager

- (SKAStatusEncryptionManager)initWithDatabaseManager:(id)a3 invitationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SKAStatusEncryptionManager;
  v9 = [(SKAStatusEncryptionManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_databaseManager, a3);
    objc_storeStrong(&v10->_invitationManager, a4);
  }

  return v10;
}

- (id)encodeStatusPayload:(id)a3 statusUniqueIdentifier:(id)a4 dateCreated:(id)a5 currentServerTime:(id)a6 channel:(id)a7
{
  v12 = MEMORY[0x277CBEB38];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v12);
  [v18 setObject:v16 forKeyedSubscript:@"i"];

  [v14 timeIntervalSince1970];
  v20 = v19;

  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
  [v18 setObject:v21 forKeyedSubscript:@"p"];

  [v15 timeIntervalSince1970];
  v23 = v22;

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  [v18 setObject:v24 forKeyedSubscript:@"c"];

  v25 = [v17 payloadData];

  v26 = [(SKAStatusEncryptionManager *)self _encryptPayload:v25 channel:v13];

  v27 = [v26 encryptedMessage];
  v28 = [v27 base64EncodedStringWithOptions:0];
  [v18 setObject:v28 forKeyedSubscript:@"e"];
  v29 = [v26 index];
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v29];
  [v18 setObject:v30 forKeyedSubscript:@"r"];

  v31 = [v26 signature];
  v32 = [v31 base64EncodedStringWithOptions:0];
  [v18 setObject:v32 forKeyedSubscript:@"s"];
  v33 = [(SKAStatusEncryptionManager *)self _serializeDictionaryAsBinaryPlist:v18];

  return v33;
}

- (void)encodeStatusPayloadForProvisioning:(id)a3 statusUniqueIdentifier:(id)a4 dateCreated:(id)a5 currentServerTime:(id)a6 channel:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = [v12 statusPayload];
  v18 = [(SKAStatusEncryptionManager *)self encodeStatusPayload:v17 statusUniqueIdentifier:v16 dateCreated:v15 currentServerTime:v14 channel:v13];

  v19 = [MEMORY[0x277CBEA90] __imDataWithRandomBytes:32];
  v20 = objc_alloc_init(SharedChannelProvisionOffGridPacket);
  v42 = v18;
  [(SharedChannelProvisionOffGridPacket *)v20 setPublishPayload:v18];
  v21 = objc_alloc(MEMORY[0x277CBEA90]);
  v22 = [v13 identifier];

  v23 = [v21 initWithBase64EncodedString:v22 options:0];
  [(SharedChannelProvisionOffGridPacket *)v20 setChannelId:v23];

  [(SharedChannelProvisionOffGridPacket *)v20 setChannelTopic:@"com.apple.icloud.presence.mode.status"];
  [(SharedChannelProvisionOffGridPacket *)v20 setCommitmentSalt:v19];
  v24 = [MEMORY[0x277CBEA90] __imDataWithRandomBytes:12];
  v25 = [v24 mutableCopy];

  v26 = [MEMORY[0x277CBEB28] dataWithLength:16];
  v41 = v20;
  v27 = [(SharedChannelProvisionOffGridPacket *)v20 data];
  [v26 appendData:v27];

  v28 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v26, "length")}];
  v29 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:16];
  v30 = [MEMORY[0x277CBEA90] __imDataWithRandomBytes:16];
  [v30 bytes];
  [v30 length];
  v40 = v25;
  [v25 bytes];
  [v26 bytes];
  v31 = [v26 length];
  v32 = [v28 mutableBytes];
  v39 = [v29 mutableBytes];
  v38 = v32;
  v33 = CCCryptorGCMOneshotEncrypt();
  if (v33)
  {
    v34 = v33;
    v35 = v40;
    v36 = [SKAStatusEncryptionManager logger:v31];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v44 = v34;
      _os_log_impl(&dword_220099000, v36, OS_LOG_TYPE_DEFAULT, "CCCryptorGCMOneshotEncrypt failed with result %d.", buf, 8u);
    }
  }

  else
  {
    [v12 setCommitmentSalt:{v19, v31, v32, v39, 16}];
    [v12 setDecryptionKey:v30];
    v35 = v40;
    [v12 setInitializationVector:v40];
    [v28 appendData:v29];
    [v12 setEncryptedStatusPayload:v28];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)_encryptPayload:(id)a3 channel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 currentOutgoingRatchet];
  if (v8)
  {
    v9 = v8;
LABEL_3:
    v26 = 0;
    v10 = [v9 sealStatus:v6 authenticating:0 error:&v26];
    v11 = v26;
    v12 = +[SKAStatusEncryptionManager logger];
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusEncryptionManager _encryptPayload:channel:];
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Message encrypted successfully", buf, 2u);
    }

    goto LABEL_22;
  }

  v14 = +[SKAStatusEncryptionManager logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Channel does not have a current outgoing ratchet, rolling encryption key to generate a new one.", buf, 2u);
  }

  invitationManager = self->_invitationManager;
  v16 = [v7 statusType];
  v27 = 0;
  v17 = [(SKAInvitationManaging *)invitationManager rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:v16 error:&v27];
  v18 = v27;

  v19 = +[SKAStatusEncryptionManager logger];
  v20 = v19;
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Encryption key rolled successfully, fetching new key", buf, 2u);
    }

    v21 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
    databaseManager = self->_databaseManager;
    v23 = [v7 statusType];
    v24 = [(SKADatabaseManaging *)databaseManager existingPersonalChannelForStatusTypeIdentifier:v23 databaseContext:v21];

    v9 = [v24 currentOutgoingRatchet];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager _encryptPayload:channel:];
    }
  }

  v11 = +[SKAStatusEncryptionManager logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SKAStatusEncryptionManager _encryptPayload:channel:];
  }

  v9 = 0;
  v10 = 0;
LABEL_22:

  return v10;
}

- (id)extractEnvelopeFromStatusEnvelopeData:(id)a3
{
  v3 = [(SKAStatusEncryptionManager *)self _deserializeBinaryPlistDictionaryData:a3];
  if (v3)
  {
    v4 = [[SKAStatusUnencryptedEnvelope alloc] initWithEnvelopeDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)decryptStatusPayloadFromStatusEnvelopeData:(id)a3 channel:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    v15 = 0;
    goto LABEL_26;
  }

  v7 = [(SKAStatusEncryptionManager *)self _deserializeBinaryPlistDictionaryData:a3];
  v8 = v7;
  if (!v7)
  {
    v9 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
    }

    v15 = 0;
    goto LABEL_25;
  }

  v9 = [v7 ska_dataFrombase64EncodedStringForKey:@"e"];
  if (!v9)
  {
    v10 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
    }

    v15 = 0;
    goto LABEL_24;
  }

  v10 = [v8 ska_dataFrombase64EncodedStringForKey:@"s"];
  if (!v10)
  {
    v12 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
    }

    v15 = 0;
    goto LABEL_23;
  }

  v11 = [v8 ska_numberForKey:@"r"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 integerValue];
    if (v13 < 0x10000)
    {
      v15 = [(SKAStatusEncryptionManager *)self _decryptPayload:v9 withRatchetIndex:v13 signatureData:v10 channel:v6];
      v17 = +[SKAStatusEncryptionManager logger];
      v14 = v17;
      if (v15)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Successfully decrypted status payload", v18, 2u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
      }

      goto LABEL_22;
    }

    v14 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
    }
  }

  else
  {
    v14 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
    }
  }

  v15 = 0;
LABEL_22:

LABEL_23:
LABEL_24:

LABEL_25:
LABEL_26:

  return v15;
}

- (id)encryptionValidationTokenForChannel:(id)a3
{
  v3 = [(SKAStatusEncryptionManager *)self _mostRecentIncomingRatchetForChannel:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 signingKeyIdentifier];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 ska_hexString];
  v6 = [v5 length];
  if (v6 >= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 substringToIndex:v7];

  return v8;
}

- (id)_mostRecentIncomingRatchetForChannel:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isPersonal];
  v6 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  databaseManager = self->_databaseManager;
  if (!v5)
  {
    v16 = [(SKADatabaseManaging *)databaseManager receivedInvitationsForChannel:v4 databaseContext:v6];
    v17 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v37 = [v16 count];
      _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Finding most recent incoming ratchet for non personal channel using incoming ratchet state from %ld received invitations.", buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v16;
    v18 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
LABEL_17:
      v21 = 0;
      while (1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v26 + 1) + 8 * v21) incomingRatchet];
        if (v15)
        {
          goto LABEL_24;
        }

        if (v19 == ++v21)
        {
          v19 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v19)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }

LABEL_23:
    v22 = 0;
    goto LABEL_25;
  }

  v8 = [(SKADatabaseManaging *)databaseManager generatedEncryptionKeysForPersonalChannel:v4 databaseContext:v6];
  v9 = +[SKAStatusEncryptionManager logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v37 = [v8 count];
    _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Finding most recent incoming ratchet for personal channel from %ld outgoing ratchets.", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = v11;
  v13 = *v31;
LABEL_6:
  v14 = 0;
  while (1)
  {
    if (*v31 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = [*(*(&v30 + 1) + 8 * v14) incomingRatchet];
    if (v15)
    {
      break;
    }

    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v12)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  v22 = v15;
LABEL_25:

  if (!v22)
  {
    v23 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager _mostRecentIncomingRatchetForChannel:];
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_serializeDictionaryAsBinaryPlist:(id)a3
{
  if (a3)
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:&v7];
    v4 = v7;
    if (v4)
    {
      v5 = +[SKAStatusEncryptionManager logger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusEncryptionManager _serializeDictionaryAsBinaryPlist:];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_deserializeBinaryPlistDictionaryData:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_16;
  }

  v17 = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:&v17];
  v5 = v17;
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v7 = +[SKAStatusEncryptionManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SKAStatusEncryptionManager _deserializeBinaryPlistDictionaryData:];
  }

  v8 = [[SharedChannelPublishPayload alloc] initWithData:v3];
  v9 = v8;
  if (!v8 || ([(SharedChannelPublishPayload *)v8 publishPayloadContent], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v14 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager _deserializeBinaryPlistDictionaryData:];
    }

    v13 = v4;
    goto LABEL_14;
  }

  v11 = MEMORY[0x277CCAC58];
  v12 = [(SharedChannelPublishPayload *)v9 publishPayloadContent];
  v16 = 0;
  v13 = [v11 propertyListWithData:v12 options:0 format:0 error:&v16];
  v6 = v16;

  if (v6)
  {
    v14 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SKAStatusEncryptionManager *)v9 _deserializeBinaryPlistDictionaryData:v6, v14];
    }

LABEL_14:
  }

  v4 = v13;
LABEL_16:

  return v4;
}

+ (id)logger
{
  if (logger_onceToken_1 != -1)
  {
    +[SKAStatusEncryptionManager logger];
  }

  v3 = logger__logger_1;

  return v3;
}

uint64_t __36__SKAStatusEncryptionManager_logger__block_invoke()
{
  logger__logger_1 = os_log_create("com.apple.StatusKit", "SKAStatusEncryptionManager");

  return MEMORY[0x2821F96F8]();
}

- (void)_encryptPayload:channel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_encryptPayload:channel:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_encryptPayload:channel:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_decryptPayload:withRatchetIndex:signatureData:channel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_decryptPayload:withRatchetIndex:signatureData:channel:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_decryptPayloadData:withIncomingRatchet:withRatchetIndex:signatureData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_decryptPayloadData:withIncomingRatchet:withRatchetIndex:signatureData:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mostRecentIncomingRatchetForChannel:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_serializeDictionaryAsBinaryPlist:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_deserializeBinaryPlistDictionaryData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_deserializeBinaryPlistDictionaryData:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 publishPayloadContent];
  OUTLINED_FUNCTION_1_0();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_220099000, a3, OS_LOG_TYPE_ERROR, "Error deserializing status envelope data as dictionary from proto data: %@ with error %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deserializeBinaryPlistDictionaryData:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end