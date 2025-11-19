@interface SKError
+ (BOOL)failWithError:(id)a3 error:(id *)a4;
+ (BOOL)failWithSKErrorCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5;
+ (BOOL)failWithSKErrorCode:(int64_t)a3 error:(id *)a4;
+ (NSBundle)frameworkBundle;
+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4;
+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5;
+ (id)errorWithCode:(int64_t)a3 disks:(id)a4 userInfo:(id)a5;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)errorWithOSStatus:(int)a3 debugDescription:(id)a4 error:(id *)a5;
+ (id)errorWithPOSIXCode:(int)a3 debugDescription:(id)a4 error:(id *)a5;
+ (id)localizedDescriptionForCode:(int64_t)a3;
+ (id)nilWithError:(id)a3 error:(id *)a4;
+ (id)nilWithSKErrorCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5;
+ (id)nilWithSKErrorCode:(int64_t)a3 error:(id *)a4;
@end

@implementation SKError

+ (NSBundle)frameworkBundle
{
  if (frameworkBundle_onceToken != -1)
  {
    +[SKError frameworkBundle];
  }

  v3 = frameworkBundle__bundle;

  return v3;
}

void __26__SKError_frameworkBundle__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA8D8];
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/StorageKit.framework"];
  v2 = [v0 bundleWithURL:v1];
  v3 = frameworkBundle__bundle;
  frameworkBundle__bundle = v2;

  if (!frameworkBundle__bundle)
  {
    v4 = +[SKBaseManager sharedManager];
    [v4 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&__block_literal_global_28];

    v5 = SKGetOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "+[SKError frameworkBundle]_block_invoke";
      _os_log_impl(&dword_26BBB8000, v5, OS_LOG_TYPE_FAULT, "%s: FATAL ERROR: Failed to get the NSBundle of StorageKit framework", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

id __26__SKError_frameworkBundle__block_invoke_2()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKError.m", 55);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

+ (id)localizedDescriptionForCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a3];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v6 = [v5 localizedStringForKey:v4 value:0 table:@"SKError"];

  v7 = 0;
  if (([v6 isEqualToString:v4] & 1) == 0)
  {
    v7 = v6;
  }

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CCA068];
  v12[0] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [SKError errorWithCode:a3 disks:0 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277CCA068];
  v15[0] = a4;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [SKError errorWithCode:a3 disks:0 userInfo:v9];

  if (a5)
  {
    v11 = v10;
    *a5 = v10;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CCA7E8];
  v12[0] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [SKError errorWithCode:a3 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)errorWithCode:(int64_t)a3 disks:(id)a4 userInfo:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
    v11 = [v9 mutableCopy];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
  }

  v12 = *MEMORY[0x277CCA450];
  v13 = [v11 objectForKey:*MEMORY[0x277CCA450]];

  if (!v13)
  {
    if (v8)
    {
      v14 = SKGetOSLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [a1 localizedDescriptionForCode:a3];
        *buf = 136315650;
        v28 = "+[SKError errorWithCode:disks:userInfo:]";
        v29 = 2112;
        v30 = v15;
        v31 = 2112;
        v32 = v8;
        _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, "%s: %@ : %@", buf, 0x20u);
      }

      v16 = MEMORY[0x277CCACA8];
      v17 = [a1 localizedDescriptionForCode:a3];
      v18 = commaSeparatedDiskListFromArray(v8);
      v19 = [v16 stringWithFormat:@"%@ : %@", v17, v18];
    }

    else
    {
      v19 = [a1 localizedDescriptionForCode:a3];
      v23 = *MEMORY[0x277CCA068];
      v24 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA068]];

      v17 = SKGetOSLog();
      v25 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      if (v24)
      {
        if (v25)
        {
          v26 = [v11 objectForKeyedSubscript:v23];
          *buf = 136315650;
          v28 = "+[SKError errorWithCode:disks:userInfo:]";
          v29 = 2112;
          v30 = v19;
          v31 = 2112;
          v32 = v26;
          _os_log_impl(&dword_26BBB8000, v17, OS_LOG_TYPE_ERROR, "%s: %@ [%@]", buf, 0x20u);
        }
      }

      else if (v25)
      {
        *buf = 136315394;
        v28 = "+[SKError errorWithCode:disks:userInfo:]";
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_26BBB8000, v17, OS_LOG_TYPE_ERROR, "%s: %@", buf, 0x16u);
      }
    }

    if (v19)
    {
      [v11 setObject:v19 forKey:v12];
    }
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.StorageKit" code:a3 userInfo:v11];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)nilWithError:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_26BBB8000, v6, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
  }

  if (a4)
  {
    v7 = v5;
    *a4 = v5;
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (BOOL)failWithError:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_26BBB8000, v6, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
  }

  if (a4)
  {
    v7 = v5;
    *a4 = v5;
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)errorWithPOSIXCode:(int)a3 debugDescription:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA5B8];
  v8 = a3;
  v9 = userInfoWithDebugDescription(a4);
  v10 = [v6 errorWithDomain:v7 code:v8 userInfo:v9];

  v11 = SKGetOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_26BBB8000, v11, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
  }

  if (a5)
  {
    v12 = v10;
    *a5 = v10;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)errorWithOSStatus:(int)a3 debugDescription:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  v9 = MEMORY[0x277CCA9B8];
  if ((a3 - 49152) > 0x6B)
  {
    v10 = *MEMORY[0x277CCA590];
    v11 = a3;
  }

  else
  {
    v10 = *MEMORY[0x277CCA5B8];
    v11 = a3 & 0x7F;
  }

  v12 = userInfoWithDebugDescription(v7);
  v13 = [v9 errorWithDomain:v10 code:v11 userInfo:v12];

  v14 = SKGetOSLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
  }

  if (a5)
  {
    v15 = v13;
    *a5 = v13;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)nilWithSKErrorCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5
{
  v7 = userInfoWithDebugDescription(a4);
  v8 = [SKError errorWithCode:a3 userInfo:v7];
  v9 = [SKError nilWithError:v8 error:a5];

  return v9;
}

+ (id)nilWithSKErrorCode:(int64_t)a3 error:(id *)a4
{
  v5 = [SKError errorWithCode:a3 userInfo:0];
  v6 = [SKError nilWithError:v5 error:a4];

  return v6;
}

+ (BOOL)failWithSKErrorCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5
{
  v7 = userInfoWithDebugDescription(a4);
  v8 = [SKError errorWithCode:a3 userInfo:v7];
  LOBYTE(a5) = [SKError failWithError:v8 error:a5];

  return a5;
}

+ (BOOL)failWithSKErrorCode:(int64_t)a3 error:(id *)a4
{
  v5 = [SKError errorWithCode:a3 userInfo:0];
  LOBYTE(a4) = [SKError failWithError:v5 error:a4];

  return a4;
}

@end