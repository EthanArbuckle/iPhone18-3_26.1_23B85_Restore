@interface SAUtilities
+ (id)breakCommaSeparatedStringToComponents:(id)components;
+ (id)createCommaSeparatedString:(id)string;
+ (id)splitArray:(id)array into:(int)into;
+ (int)killSADaemon;
+ (int)loadSADaemon;
+ (void)getFileSize:(id)size reply:(id)reply;
@end

@implementation SAUtilities

+ (id)splitArray:(id)array into:(int)into
{
  arrayCopy = array;
  v6 = arrayCopy;
  if (!arrayCopy)
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SAUtilities splitArray:v7 into:?];
    }

    goto LABEL_18;
  }

  if ([arrayCopy count] < into)
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SAUtilities *)v6 splitArray:into into:v7];
    }

LABEL_18:

    v8 = 0;
    goto LABEL_19;
  }

  if (into <= 0)
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SAUtilities splitArray:into into:v7];
    }

    goto LABEL_18;
  }

  v8 = objc_opt_new();
  v9 = [v6 count];
  v10 = 0;
  v11 = 0;
  v12 = v9 / into;
  do
  {
    if (v12 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v12;
    }

    if (v11 >= into - 1)
    {
      v13 = v9;
    }

    v14 = [v6 subarrayWithRange:{v10, v13}];
    [v8 addObject:v14];

    v10 += v12;
    ++v11;
    v9 -= v12;
  }

  while (into != v11);
LABEL_19:

  return v8;
}

+ (void)getFileSize:(id)size reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v6 = MEMORY[0x277CBEBC0];
  replyCopy = reply;
  v8 = [v6 fileURLWithPath:sizeCopy];
  v18 = 0;
  v9 = *MEMORY[0x277CBE7D0];
  v17 = 0;
  [v8 getResourceValue:&v18 forKey:v9 error:&v17];
  v10 = v18;
  v11 = v17;
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (v12)
  {
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (v11)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@" with error %@", v11];
      }

      else
      {
        v16 = &stru_287BC9EA8;
      }

      *buf = 138412546;
      v20 = sizeCopy;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&dword_26B26B000, v13, OS_LOG_TYPE_ERROR, "Failed to get physical size for file (%@)%@", buf, 0x16u);
      if (v11)
      {
      }
    }

    unsignedLongValue = 0;
  }

  else
  {
    unsignedLongValue = [v10 unsignedLongValue];
  }

  replyCopy[2](replyCopy, unsignedLongValue, v11);

  v15 = *MEMORY[0x277D85DE8];
}

void __65__SAUtilities_processArrayConcurrently_number_queue_group_block___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v9 + 1) + 8 * v6);
      if (!(*(*(a1 + 48) + 16))(*(a1 + 48)))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  dispatch_group_leave(*(a1 + 40));
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)createCommaSeparatedString:(id)string
{
  allObjects = [string allObjects];
  v4 = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

+ (id)breakCommaSeparatedStringToComponents:(id)components
{
  v3 = [components componentsSeparatedByString:{@", "}];
  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

+ (int)killSADaemon
{
  v2 = objc_opt_new();
  [v2 setLaunchPath:@"/usr/bin/pkill"];
  [v2 setArguments:&unk_287BCCB50];
  [v2 launchAndReturnError:0];
  [v2 waitUntilExit];
  terminationStatus = [v2 terminationStatus];

  return terminationStatus;
}

+ (int)loadSADaemon
{
  v2 = objc_opt_new();
  [v2 setLaunchPath:@"/bin/launchctl"];
  [v2 setArguments:&unk_287BCCB68];
  [v2 launchAndReturnError:0];
  [v2 waitUntilExit];
  terminationStatus = [v2 terminationStatus];

  return terminationStatus;
}

+ (void)splitArray:(int)a1 into:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[SAUtilities splitArray:into:]";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_26B26B000, a2, OS_LOG_TYPE_ERROR, "%s: number of parts (%d) must be > 0", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)splitArray:(NSObject *)a3 into:.cold.2(void *a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 136315650;
  v6 = "+[SAUtilities splitArray:into:]";
  v7 = 1024;
  v8 = a2;
  v9 = 1024;
  v10 = [a1 count];
  _os_log_error_impl(&dword_26B26B000, a3, OS_LOG_TYPE_ERROR, "%s: number of parts (%d) is higher than the supplied array count (%d). can't split array", &v5, 0x18u);
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)splitArray:(os_log_t)log into:.cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[SAUtilities splitArray:into:]";
  _os_log_error_impl(&dword_26B26B000, log, OS_LOG_TYPE_ERROR, "%s: supplied array in nil", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)processArrayConcurrently:(NSObject *)a3 number:queue:group:block:.cold.1(void *a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 134218240;
  v7 = [a1 count];
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_26B26B000, a3, OS_LOG_TYPE_ERROR, "Failed to split array (count: %lu) to %d parts. Bailing out", &v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end