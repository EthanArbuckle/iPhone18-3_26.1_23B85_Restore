@interface CertificationLogging
+ (id)getInstance;
+ (void)bleLogMessageReceived:(id)a3 peerUUID:(id)a4;
+ (void)bleLogMessageSent:(id)a3 peerUUID:(id)a4;
+ (void)bleLogRSSI:(id)a3 peerUUID:(id)a4;
+ (void)bleLogVehicleConnected:(id)a3;
+ (void)bleLogVehicleDisconnected:(id)a3;
+ (void)logEncryptedAPDU:(id)a3 decrypted:(id)a4;
- (void)logEvent:(void *)a3 message:(void *)a4 peerUUID:;
@end

@implementation CertificationLogging

+ (id)getInstance
{
  objc_opt_self();
  if (getInstance_onceToken_0 != -1)
  {
    +[CertificationLogging getInstance];
  }

  v0 = getInstance_instance_0;

  return v0;
}

void __35__CertificationLogging_getInstance__block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@".GlobalPreferences"];
  if ([v4 BOOLForKey:@"com.apple.CarKeysTests.enableCertificationLogging"])
  {
    v0 = objc_opt_new();
    v1 = getInstance_instance_0;
    getInstance_instance_0 = v0;

    v2 = os_log_create("com.apple.certification", "digitalCarKey");
    v3 = *(getInstance_instance_0 + 8);
    *(getInstance_instance_0 + 8) = v2;
  }
}

void __50__CertificationLogging_logEvent_message_peerUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 base64];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v6 = [v5 UUIDString];
  }

  v7 = v6;
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];

LABEL_6:
}

+ (void)logEncryptedAPDU:(id)a3 decrypted:(id)a4
{
  v9[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 length] && objc_msgSend(v5, "length"))
  {
    [(CertificationLogging *)&v8 logEncryptedAPDU:v5 decrypted:v9, v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)logEvent:(void *)a3 message:(void *)a4 peerUUID:
{
  v55[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    switch(a2)
    {
      case 0uLL:
        if (v9)
        {
          v55[0] = @"event";
          v54[0] = @"log_type";
          v54[1] = @"vehicle_uuid";
          v11 = [v9 UUIDString];
          v54[2] = @"payload";
          v55[1] = v11;
          v55[2] = @"connect";
          v12 = MEMORY[0x1E695DF20];
          v13 = v55;
          v14 = v54;
          goto LABEL_20;
        }

        break;
      case 1uLL:
        if (v9)
        {
          v53[0] = @"event";
          v52[0] = @"log_type";
          v52[1] = @"vehicle_uuid";
          v11 = [v9 UUIDString];
          v52[2] = @"payload";
          v53[1] = v11;
          v53[2] = @"disconnect";
          v12 = MEMORY[0x1E695DF20];
          v13 = v53;
          v14 = v52;
LABEL_20:
          v4 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:3];
          goto LABEL_21;
        }

        break;
      case 2uLL:
        if (v9)
        {
          if (v8)
          {
            objc_opt_class();
            if (OUTLINED_FUNCTION_2())
            {
              v47[0] = @"dck_message";
              v46[0] = @"log_type";
              v46[1] = @"vehicle_uuid";
              v11 = [v10 UUIDString];
              v47[1] = v11;
              v47[2] = @"out";
              v46[2] = @"direction";
              v46[3] = @"payload";
              v17 = [v8 base64];
              v47[3] = v17;
              v18 = MEMORY[0x1E695DF20];
              v19 = v47;
              v20 = v46;
              goto LABEL_17;
            }
          }

          v34 = SESDefaultLogObject();
          if (OUTLINED_FUNCTION_1(v34))
          {
            *buf = 134218242;
            OUTLINED_FUNCTION_0(2);
            v26 = "Wrong payload for event type %lu %@";
            goto LABEL_45;
          }

          goto LABEL_47;
        }

        break;
      case 3uLL:
        if (v9)
        {
          if (v8)
          {
            objc_opt_class();
            if (OUTLINED_FUNCTION_2())
            {
              v45[0] = @"dck_message";
              v44[0] = @"log_type";
              v44[1] = @"vehicle_uuid";
              v11 = [v10 UUIDString];
              v45[1] = v11;
              v45[2] = @"in";
              v44[2] = @"direction";
              v44[3] = @"payload";
              v17 = [v8 base64];
              v45[3] = v17;
              v18 = MEMORY[0x1E695DF20];
              v19 = v45;
              v20 = v44;
LABEL_17:
              v4 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:4];

              goto LABEL_21;
            }
          }

          v35 = SESDefaultLogObject();
          if (!OUTLINED_FUNCTION_1(v35))
          {
            goto LABEL_47;
          }

          *buf = 134218242;
          OUTLINED_FUNCTION_0(3);
          v26 = "Wrong payload for event type %lu %@";
          goto LABEL_45;
        }

        break;
      case 4uLL:
        if (v9)
        {
          if (v8)
          {
            v4 = 0x1E695D000;
            objc_opt_class();
            if (OUTLINED_FUNCTION_2())
            {
              v15 = [v8 mutableCopy];
              v38[0] = MEMORY[0x1E69E9820];
              v38[1] = 3221225472;
              v38[2] = __50__CertificationLogging_logEvent_message_peerUUID___block_invoke;
              v38[3] = &unk_1E86FFB80;
              v39 = v15;
              v11 = v15;
              [v8 enumerateKeysAndObjectsUsingBlock:v38];
              v43[0] = @"rssi";
              v42[0] = @"log_type";
              v42[1] = @"vehicle_uuid";
              v16 = [v10 UUIDString];
              v42[2] = @"payload";
              v43[1] = v16;
              v43[2] = v11;
              v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];

LABEL_21:
              goto LABEL_24;
            }
          }

          v33 = SESDefaultLogObject();
          if (!OUTLINED_FUNCTION_1(v33))
          {
            goto LABEL_47;
          }

          *buf = 134218242;
          OUTLINED_FUNCTION_0(4);
          v26 = "Wrong payload for event type %lu %@";
          goto LABEL_45;
        }

        break;
      case 5uLL:
        v4 = 0x1E695D000;
        objc_opt_class();
        if (OUTLINED_FUNCTION_2())
        {
          v40[0] = @"log_type";
          v40[1] = @"payload";
          v41[0] = @"dck_decrypted";
          v41[1] = v8;
          v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
LABEL_24:
          if ([MEMORY[0x1E696ACB0] isValidJSONObject:v4])
          {
            v37 = 0;
            v21 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v37];
            v22 = v37;
            if (v22)
            {
              v23 = SESDefaultLogObject();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v49 = v4;
                v50 = 2112;
                v51 = v22;
                _os_log_impl(&dword_1E0FCB000, v23, OS_LOG_TYPE_ERROR, "Failed to serialize object %@ %@", buf, 0x16u);
              }
            }

            else
            {
              v30 = *(a1 + 8);
              if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
LABEL_38:

                goto LABEL_47;
              }

              v31 = MEMORY[0x1E696AEC0];
              v23 = v30;
              v32 = [[v31 alloc] initWithData:v21 encoding:4];
              *buf = 138412290;
              v49 = v32;
              _os_log_impl(&dword_1E0FCB000, v23, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
            }

            goto LABEL_38;
          }

          v24 = SESDefaultLogObject();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = v4;
            _os_log_impl(&dword_1E0FCB000, v24, OS_LOG_TYPE_ERROR, "Invalid JSON object %@", buf, 0xCu);
          }
        }

        else
        {
          v29 = SESDefaultLogObject();
          if (!OUTLINED_FUNCTION_1(v29))
          {
            goto LABEL_47;
          }

          *buf = 134218242;
          OUTLINED_FUNCTION_0(5);
          v26 = "Wrong payload for event type %lu %@";
LABEL_45:
          v27 = v4;
          v28 = 22;
LABEL_46:
          _os_log_impl(&dword_1E0FCB000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
        }

LABEL_47:

        break;
      default:
        v25 = SESDefaultLogObject();
        if (!OUTLINED_FUNCTION_1(v25))
        {
          goto LABEL_47;
        }

        *buf = 134217984;
        v49 = a2;
        v26 = "Unknown event type %lu";
        v27 = v4;
        v28 = 12;
        goto LABEL_46;
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

+ (void)bleLogVehicleConnected:(id)a3
{
  v3 = a3;
  v4 = +[CertificationLogging getInstance];
  [(CertificationLogging *)v4 logEvent:0 message:v3 peerUUID:?];
}

+ (void)bleLogVehicleDisconnected:(id)a3
{
  v3 = a3;
  v4 = +[CertificationLogging getInstance];
  [(CertificationLogging *)v4 logEvent:0 message:v3 peerUUID:?];
}

+ (void)bleLogMessageSent:(id)a3 peerUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CertificationLogging getInstance];
  [(CertificationLogging *)v7 logEvent:v6 message:v5 peerUUID:?];
}

+ (void)bleLogMessageReceived:(id)a3 peerUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CertificationLogging getInstance];
  [(CertificationLogging *)v7 logEvent:v6 message:v5 peerUUID:?];
}

+ (void)bleLogRSSI:(id)a3 peerUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CertificationLogging getInstance];
  [(CertificationLogging *)v7 logEvent:v6 message:v5 peerUUID:?];
}

+ (void)logEncryptedAPDU:(void *)a3 decrypted:(void *)a4 .cold.1(void *a1, void *a2, void *a3, void *a4)
{
  v8 = +[CertificationLogging getInstance];
  *a1 = @"raw_payload";
  v9 = [a2 base64];
  *a3 = v9;
  a1[1] = @"decrypted_payload";
  v10 = [a4 base64];
  a3[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a1 count:2];
  [(CertificationLogging *)v8 logEvent:v11 message:0 peerUUID:?];
}

@end