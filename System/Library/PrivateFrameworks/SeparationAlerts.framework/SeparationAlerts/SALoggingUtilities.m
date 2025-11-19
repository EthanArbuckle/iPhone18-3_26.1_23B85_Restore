@interface SALoggingUtilities
+ (id)computeMessagesForEvent:(id)a3;
+ (id)extractEventFromMessages:(id)a3;
+ (id)extractUniqueIdentifierFromMessage:(id)a3;
+ (id)stringToSplit:(id)a3 maxSplitSize:(unint64_t)a4;
+ (void)logTAEvent:(id)a3;
@end

@implementation SALoggingUtilities

+ (void)logTAEvent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [SALoggingUtilities computeMessagesForEvent:a3];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = TASAEventsLog;
        if (os_log_type_enabled(TASAEventsLog, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(*(&v11 + 1) + 8 * v7);
          *buf = 138739971;
          v16 = v9;
          _os_log_debug_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEBUG, "%{sensitive}@", buf, 0xCu);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)computeMessagesForEvent:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v3)
  {
LABEL_15:
    v21 = v4;
    goto LABEL_16;
  }

  v5 = objc_autoreleasePoolPush();
  v30 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v30];
  v7 = v30;
  v8 = [v6 base64EncodedStringWithOptions:32];
  v9 = v8;
  if (!v7 && ![v8 isEqual:&stru_287709218])
  {
    context = v5;
    *buf = 0;
    *v33 = 0;
    v12 = objc_alloc_init(MEMORY[0x277CCAD78]);
    [v12 getUUIDBytes:buf];

    v13 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
    v14 = [v13 base64EncodedStringWithOptions:32];

    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v9;
    v15 = +[SALoggingUtilities stringToSplit:maxSplitSize:](SALoggingUtilities, "stringToSplit:maxSplitSize:", v9, 1015 - [v14 length]);
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v14, *(*(&v26 + 1) + 8 * i)];
          [v4 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v17);
    }

    objc_autoreleasePoolPop(context);
    goto LABEL_15;
  }

  v10 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    *v33 = 2082;
    *&v33[2] = "";
    v34 = 2113;
    v35 = v7;
    v36 = 2117;
    v37 = v9;
    _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Archiver error, Error:%{private}@, String:%{sensitive}@}", buf, 0x26u);
  }

  v11 = v4;

  objc_autoreleasePoolPop(v5);
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)stringToSplit:(id)a3 maxSplitSize:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v5 && a4 && ([v5 isEqual:&stru_287709218] & 1) == 0)
  {
    if ([v5 length] <= a4)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = [v5 substringWithRange:{v7, a4}];
        [v6 addObject:v8];

        v7 += a4;
      }

      while (a4 + v7 < [v5 length]);
    }

    v9 = [v5 substringWithRange:{v7, objc_msgSend(v5, "length") - objc_msgSend(v6, "count") * a4}];
    [v6 addObject:v9];
  }

  return v6;
}

+ (id)extractUniqueIdentifierFromMessage:(id)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length] < 0x19)
  {
    v6 = 0;
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0;
    v4 = [v3 substringWithRange:{0, 24}];
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:1];
    [v5 getBytes:v9 length:16];
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v9];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)extractEventFromMessages:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v21 + 1) + 8 * i) substringWithRange:{24, objc_msgSend(*(*(&v21 + 1) + 8 * i), "length") - 24}];
        [v4 appendString:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x277CBEB98];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v27[2] = objc_opt_class();
  v27[3] = objc_opt_class();
  v27[4] = objc_opt_class();
  v27[5] = objc_opt_class();
  v27[6] = objc_opt_class();
  v27[7] = objc_opt_class();
  v27[8] = objc_opt_class();
  v27[9] = objc_opt_class();
  v27[10] = objc_opt_class();
  v27[11] = objc_opt_class();
  v27[12] = objc_opt_class();
  v27[13] = objc_opt_class();
  v27[14] = objc_opt_class();
  v27[15] = objc_opt_class();
  v27[16] = objc_opt_class();
  v27[17] = objc_opt_class();
  v27[18] = objc_opt_class();
  v27[19] = objc_opt_class();
  v27[20] = objc_opt_class();
  v27[21] = objc_opt_class();
  v27[22] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:23];
  v13 = [v11 setWithArray:v12];

  v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:1];
  v20 = 0;
  v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v13 fromData:v14 error:&v20];
  v16 = v20;
  if (v16)
  {
    v17 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v16;
      _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEFAULT, "unarchive error: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

@end