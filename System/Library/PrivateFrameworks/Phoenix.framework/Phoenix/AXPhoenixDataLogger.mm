@interface AXPhoenixDataLogger
- (AXPhoenixDataLogger)init;
- (void)logClassifierData:(id)a3 isDoubleTap:(BOOL)a4 startTime:(double)a5 endTime:(double)a6 completion:(id)a7;
@end

@implementation AXPhoenixDataLogger

- (AXPhoenixDataLogger)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AXPhoenixDataLogger;
  v9 = [(AXPhoenixDataLogger *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    attr = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v2 = dispatch_queue_create("com.apple.accessibility.phoenix.dataLogger", attr);
    queue = v9->_queue;
    v9->_queue = v2;
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&attr, 0);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)logClassifierData:(id)a3 isDoubleTap:(BOOL)a4 startTime:(double)a5 endTime:(double)a6 completion:(id)a7
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v21[2] = *&a5;
  v21[1] = *&a6;
  v21[0] = 0;
  objc_storeStrong(v21, a7);
  objc_initWeak(&from, v24);
  queue = [(AXPhoenixDataLogger *)v24 queue];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __82__AXPhoenixDataLogger_logClassifierData_isDoubleTap_startTime_endTime_completion___block_invoke;
  v16 = &unk_279A20C50;
  objc_copyWeak(v19, &from);
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = MEMORY[0x277D82BE0](v21[0]);
  dispatch_async(queue, &v12);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_destroyWeak(v19);
  objc_destroyWeak(&from);
  objc_storeStrong(v21, 0);
  objc_storeStrong(location, 0);
}

void __82__AXPhoenixDataLogger_logClassifierData_isDoubleTap_startTime_endTime_completion___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v38[2] = a1;
  v38[1] = a1;
  v38[0] = objc_loadWeakRetained((a1 + 48));
  v37 = 0;
  v36 = 0;
  if (v38[0])
  {
    if (([MEMORY[0x277CCAAA0] isValidJSONObject:*(a1 + 32)] & 1) == 0)
    {
      location = AXLogBackTap();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_64(v49, "[AXPhoenixDataLogger logClassifierData:isDoubleTap:startTime:endTime:completion:]_block_invoke", *(a1 + 32));
        _os_log_error_impl(&dword_25E4AC000, location, type, "[PHOENIX] %s Dictionary is not valid json: %@", v49, 0x16u);
      }

      objc_storeStrong(&location, 0);
      if (*(a1 + 40))
      {
        (*(*(a1 + 40) + 16))();
      }

      v33 = 1;
      goto LABEL_31;
    }

    v32 = [MEMORY[0x277CBEAA8] date];
    v1 = [AXPhoenixDataCollectionUtils createFilename:@"motion" usingTimestamp:v32 withFileExtension:@"json" underDirectory:@"/var/mobile/DTX"];
    v2 = v36;
    v36 = v1;
    MEMORY[0x277D82BD8](v2);
    if ([v36 length])
    {
      v31 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:v36 append:0];
      if (v31)
      {
        [v31 open];
        if ([v31 hasSpaceAvailable])
        {
          v28 = 0;
          v27 = [*(a1 + 32) objectForKey:@"accelerometer"];
          v46[0] = @"predictions";
          v14 = [*(a1 + 32) objectForKey:?];
          v47[0] = v14;
          v46[1] = @"result";
          v13 = [*(a1 + 32) objectForKey:?];
          v47[1] = v13;
          v46[2] = @"startTime";
          v12 = [*(a1 + 32) objectForKey:?];
          v47[2] = v12;
          v46[3] = @"endTime";
          v11 = [*(a1 + 32) objectForKey:?];
          v47[3] = v11;
          v46[4] = @"modelDescription";
          v10 = [*(a1 + 32) objectForKey:?];
          v47[4] = v10;
          v46[5] = @"modelVersion";
          v9 = [*(a1 + 32) objectForKey:?];
          v47[5] = v9;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:6];
          MEMORY[0x277D82BD8](v9);
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BD8](v12);
          MEMORY[0x277D82BD8](v13);
          MEMORY[0x277D82BD8](v14);
          obj = v28;
          v15 = [MEMORY[0x277CCAAA0] writeJSONObject:v27 toStream:v31 options:3 error:&obj];
          objc_storeStrong(&v28, obj);
          if (v15)
          {
            v24 = AXLogBackTap();
            v23 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_2_8_32_8_64(v45, "[AXPhoenixDataLogger logClassifierData:isDoubleTap:startTime:endTime:completion:]_block_invoke", v36);
              _os_log_impl(&dword_25E4AC000, v24, v23, "[PHOENIX] %s Buffer written to: %@", v45, 0x16u);
            }

            objc_storeStrong(&v24, 0);
            v43 = @"start_timestamp";
            v44 = v32;
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:?];
            v3 = [AXPhoenixMetadataLogger alloc];
            v21 = [(AXPhoenixMetadataLogger *)v3 initWithMetadata:v22];
            [(AXPhoenixMetadataLogger *)v21 setMetadataFilePathUnderDirectory:@"/var/mobile/DTX"];
            v41 = @"motion";
            v8 = [v36 lastPathComponent];
            v42 = v8;
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            MEMORY[0x277D82BD8](v8);
            [(AXPhoenixMetadataLogger *)v21 writeMetadataToFileWithSensors:v20 withAnnotations:MEMORY[0x277CBEC10] withFalsePositivesMetadata:v26];
            v37 = 1;
            objc_storeStrong(&v20, 0);
            objc_storeStrong(&v21, 0);
            objc_storeStrong(&v22, 0);
          }

          else
          {
            v19 = AXLogBackTap();
            v18 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_3_8_32_8_64_8_64(v40, "[AXPhoenixDataLogger logClassifierData:isDoubleTap:startTime:endTime:completion:]_block_invoke", v36, v28);
              _os_log_error_impl(&dword_25E4AC000, v19, v18, "[PHOENIX] %s Error writing buffer to %@: %@", v40, 0x20u);
            }

            objc_storeStrong(&v19, 0);
          }

          objc_storeStrong(&v26, 0);
          objc_storeStrong(&v27, 0);
          objc_storeStrong(&v28, 0);
        }

        else
        {
          v17 = AXLogBackTap();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_64(v39, "[AXPhoenixDataLogger logClassifierData:isDoubleTap:startTime:endTime:completion:]_block_invoke", v36);
            _os_log_error_impl(&dword_25E4AC000, v17, OS_LOG_TYPE_ERROR, "[PHOENIX] %s No space error when writing output stream for %@", v39, 0x16u);
          }

          objc_storeStrong(&v17, 0);
        }

        [v31 close];
      }

      else
      {
        oslog = AXLogBackTap();
        v29 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_64(v48, "[AXPhoenixDataLogger logClassifierData:isDoubleTap:startTime:endTime:completion:]_block_invoke", v36);
          _os_log_error_impl(&dword_25E4AC000, oslog, v29, "[PHOENIX] %s Error creating stream for %@", v48, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
      }

      v7 = [v36 stringByDeletingPathExtension];
      v6 = [v7 lastPathComponent];
      v4 = [v6 stringByReplacingOccurrencesOfString:@"_motion" withString:&stru_287032B48];
      v5 = v36;
      v36 = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v32, 0);
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  v33 = 0;
LABEL_31:
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v38, 0);
  *MEMORY[0x277D85DE8];
}

@end