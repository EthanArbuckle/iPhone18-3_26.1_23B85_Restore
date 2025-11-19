@interface BitmapRetriever
+ (id)sharedInstance;
- (void)dumpActivityBitmap;
- (void)getActivityBitmapsWithNames:(id)a3 currMachAbsTime:(unint64_t)a4 startTime:(unint64_t)a5 endTime:(unint64_t)a6 options:(id)a7 reply:(id)a8;
- (void)tallyUpActivityBitmapsForInterface:(unsigned __int8)a3 queue:(id)a4 replyQueue:(id)a5 reply:(id)a6;
@end

@implementation BitmapRetriever

void __86__BitmapRetriever__rolledActivityBitmapsWithNames_startTime_endTime_format_interface___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = [v5 getWrappedBitmapsFromTime:*(a1 + 48) toTime:*(a1 + 56)];
  if (v22)
  {
    if (v6)
    {
      if (![*(a1 + 32) count] || (v7 = *(a1 + 32), objc_msgSend(v5, "appName"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "containsObject:", v8), v8, v7))
      {
        v9 = [*(a1 + 40) objectForKeyedSubscript:v22];

        v10 = *(a1 + 64);
        if (v9)
        {
          v11 = [*(a1 + 40) objectForKeyedSubscript:v22];
          v12 = v11;
          if (v10 != 1)
          {
            v13 = [v11 objectForKeyedSubscript:@"Bitmap"];

            v12 = v13;
          }

          if (v12)
          {
            v14 = [v12 bytes];
            v15 = [v6 bytes];
            if ([v12 length])
            {
              v16 = 0;
              do
              {
                *(v14 + v16) |= *(v15 + v16);
                ++v16;
              }

              while (v16 < [v12 length]);
            }

            if (!*(a1 + 64))
            {
              v17 = [*(a1 + 40) objectForKeyedSubscript:v22];
              v18 = [v17 objectForKeyedSubscript:@"BitmapActualStartTime"];
              v19 = [v5 startTime];
              if (v19 < [v18 unsignedLongLongValue])
              {
                v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "startTime")}];
                [v17 setObject:v20 forKeyedSubscript:@"BitmapActualStartTime"];
              }
            }
          }
        }

        else
        {
          if (v10 == 1)
          {
            [*(a1 + 40) setObject:v6 forKeyedSubscript:v22];
            goto LABEL_22;
          }

          v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v12 setObject:v6 forKeyedSubscript:@"Bitmap"];
          if (!*(a1 + 64))
          {
            v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "startTime")}];
            [v12 setObject:v21 forKeyedSubscript:@"BitmapActualStartTime"];
          }

          [*(a1 + 40) setObject:v12 forKeyedSubscript:v22];
        }
      }
    }
  }

LABEL_22:
}

void __83__BitmapRetriever__getActivityBitmapsWithNames_startTime_endTime_format_interface___block_invoke(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getWrappedBitmapsFromTime:*(a1 + 48) toTime:*(a1 + 56)];
  if (v4)
  {
    if (![*(a1 + 32) count] || (v5 = *(a1 + 32), objc_msgSend(v3, "appName"), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v5, "containsObject:", v6), v6, v5))
    {
      v7 = *(a1 + 64);
      switch(v7)
      {
        case 2:
          v15 = @"Bitmap";
          v16 = v4;
          v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
          v13 = *(a1 + 40);
          v9 = [v3 appName];
          [v13 setObject:v8 forKeyedSubscript:v9];
          goto LABEL_10;
        case 1:
          v12 = *(a1 + 40);
          v8 = [v3 appName];
          [v12 setObject:v4 forKeyedSubscript:v8];
LABEL_11:

          break;
        case 0:
          v17[0] = @"Bitmap";
          v17[1] = @"BitmapActualStartTime";
          v18[0] = v4;
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "startTime")}];
          v18[1] = v8;
          v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
          v10 = *(a1 + 40);
          v11 = [v3 appName];
          [v10 setObject:v9 forKeyedSubscript:v11];

LABEL_10:
          goto LABEL_11;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)getActivityBitmapsWithNames:(id)a3 currMachAbsTime:(unint64_t)a4 startTime:(unint64_t)a5 endTime:(unint64_t)a6 options:(id)a7 reply:(id)a8
{
  v27[7] = *MEMORY[0x277D85DE8];
  v24 = a6;
  v25 = a5;
  v12 = a8;
  v13 = a7;
  v14 = a3;
  [SFActivityBitmaps adjustStartTime:&v25 endTime:&v24 currMachAbsTime:a4];
  v15 = [(BitmapRetriever *)self _getActivityBitmapsWithNames:v14 startTime:v25 endTime:v24 options:v13 interface:3];
  v16 = [(BitmapRetriever *)self _getActivityBitmapsWithNames:v14 startTime:v25 endTime:v24 options:v13 interface:4];
  v17 = [(BitmapRetriever *)self _getActivityBitmapsWithNames:v14 startTime:v25 endTime:v24 options:v13 interface:5];
  v18 = [(BitmapRetriever *)self _getActivityBitmapsWithNames:v14 startTime:v25 endTime:v24 options:v13 interface:7];

  v26[0] = @"StartTime";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25];
  v27[0] = v19;
  v26[1] = @"EndTime";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
  v27[1] = v20;
  v26[2] = @"CurrentMachAbsTime";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  v27[2] = v21;
  v27[3] = v15;
  v26[3] = @"WiFi";
  v26[4] = @"WiFiNonInfra";
  v27[4] = v16;
  v27[5] = v17;
  v26[5] = @"Cellular";
  v26[6] = @"IPSec";
  v27[6] = v18;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];

  v12[2](v12, v22);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)tallyUpActivityBitmapsForInterface:(unsigned __int8)a3 queue:(id)a4 replyQueue:(id)a5 reply:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (a4 && v10 && v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__BitmapRetriever_tallyUpActivityBitmapsForInterface_queue_replyQueue_reply___block_invoke;
    v13[3] = &unk_27898B6A0;
    v13[4] = self;
    v16 = a3;
    v14 = v10;
    v15 = v12;
    dispatch_async(a4, v13);
  }
}

void __77__BitmapRetriever_tallyUpActivityBitmapsForInterface_queue_replyQueue_reply___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__BitmapRetriever_tallyUpActivityBitmapsForInterface_queue_replyQueue_reply___block_invoke_2;
  v12[3] = &unk_27898B650;
  v5 = v2;
  v13 = v5;
  [v3 enumerateActivityBitmapsOnInterface:v4 usingBlock:v12];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BitmapRetriever_tallyUpActivityBitmapsForInterface_queue_replyQueue_reply___block_invoke_3;
  block[3] = &unk_27898B678;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)dumpActivityBitmap
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "=========================== Start of NetworkActivityBitmap Dump ===========================", &v9, 2u);
  }

  v4 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"WiFi";
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "[%@]", &v9, 0xCu);
  }

  [(BitmapRetriever *)self enumerateActivityBitmapsOnInterface:3 usingBlock:&__block_literal_global_7];
  v5 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"Cellular";
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "[%@]", &v9, 0xCu);
  }

  [(BitmapRetriever *)self enumerateActivityBitmapsOnInterface:5 usingBlock:&__block_literal_global_9];
  v6 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"IPSec";
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "[%@]", &v9, 0xCu);
  }

  [(BitmapRetriever *)self enumerateActivityBitmapsOnInterface:7 usingBlock:&__block_literal_global_12];
  v7 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "=========================== End of NetworkActivityBitmap Dump ===========================", &v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __37__BitmapRetriever_dumpActivityBitmap__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 appName];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "  %@: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __37__BitmapRetriever_dumpActivityBitmap__block_invoke_7(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 appName];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "  %@: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __37__BitmapRetriever_dumpActivityBitmap__block_invoke_10(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 appName];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "  %@: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BitmapRetriever_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_8 != -1)
  {
    dispatch_once(&sharedInstance_pred_8, block);
  }

  v2 = sharedInstance_sharedInstance_8;

  return v2;
}

uint64_t __33__BitmapRetriever_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_8;
  sharedInstance_sharedInstance_8 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end