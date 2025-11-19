@interface AXPhoenixMetadataLogger
- (AXPhoenixMetadataLogger)initWithMetadata:(id)a3;
- (NSDateFormatter)dateFormatter;
- (id)_deviceModelName;
- (id)_orientationString;
- (void)setMetadataFilePathUnderDirectory:(id)a3;
- (void)writeMetadataToFileWithSensors:(id)a3 withAnnotations:(id)a4 withFalsePositivesMetadata:(id)a5;
@end

@implementation AXPhoenixMetadataLogger

- (AXPhoenixMetadataLogger)initWithMetadata:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AXPhoenixMetadataLogger;
  v9 = [(AXPhoenixMetadataLogger *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v6 = [location[0] objectForKeyedSubscript:@"start_timestamp"];
    [(AXPhoenixMetadataLogger *)v9 setStartTimestamp:?];
    MEMORY[0x277D82BD8](v6);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)setMetadataFilePathUnderDirectory:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AXPhoenixMetadataLogger *)v6 startTimestamp];
  v3 = [AXPhoenixDataCollectionUtils createFilename:"createFilename:usingTimestamp:withFileExtension:underDirectory:" usingTimestamp:@"metadata" withFileExtension:? underDirectory:?];
  [(AXPhoenixMetadataLogger *)v6 setMetadataFilePath:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (NSDateFormatter)dateFormatter
{
  if (!self->_dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [(AXPhoenixMetadataLogger *)self setDateFormatter:?];
    MEMORY[0x277D82BD8](v4);
  }

  dateFormatter = self->_dateFormatter;

  return dateFormatter;
}

- (void)writeMetadataToFileWithSensors:(id)a3 withAnnotations:(id)a4 withFalsePositivesMetadata:(id)a5
{
  v44[26] = *MEMORY[0x277D85DE8];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v37 = 0;
  objc_storeStrong(&v37, a5);
  v9 = [(AXPhoenixMetadataLogger *)v40 dateFormatter];
  [(NSDateFormatter *)v9 setDateFormat:@"YYYY-MM-dd"];
  MEMORY[0x277D82BD8](v9);
  v11 = [(AXPhoenixMetadataLogger *)v40 dateFormatter];
  v10 = [(AXPhoenixMetadataLogger *)v40 startTimestamp];
  v36 = [(NSDateFormatter *)v11 stringFromDate:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = [(AXPhoenixMetadataLogger *)v40 dateFormatter];
  [(NSDateFormatter *)v12 setDateFormat:@"HH-mm-ss-SSS"];
  MEMORY[0x277D82BD8](v12);
  v14 = [(AXPhoenixMetadataLogger *)v40 dateFormatter];
  v13 = [(AXPhoenixMetadataLogger *)v40 startTimestamp];
  v35 = [(NSDateFormatter *)v14 stringFromDate:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 7];
  v16 = [MEMORY[0x277D75418] currentDevice];
  v15 = [v16 identifierForVendor];
  v33 = [v15 UUIDString];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v32 = [v33 substringToIndex:5];
  v31 = [(AXPhoenixMetadataLogger *)v40 _deviceModelName];
  v17 = [MEMORY[0x277CCAC38] processInfo];
  v30 = [v17 operatingSystemVersionString];
  MEMORY[0x277D82BD8](v17);
  v19 = [MEMORY[0x277CBEBB0] localTimeZone];
  v18 = [MEMORY[0x277CBEAF8] currentLocale];
  v29 = [v19 localizedName:0 locale:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v28 = [(AXPhoenixMetadataLogger *)v40 _orientationString];
  v27 = [(AXPhoenixMetadataLogger *)v40 _fullHardwareConfigurationString];
  v43[0] = @"username";
  v44[0] = v32;
  v43[1] = @"first_name";
  v44[1] = v32;
  v43[2] = @"last_name";
  v44[2] = v32;
  v43[3] = @"shift_key";
  v44[3] = v34;
  v43[4] = @"tap_location";
  v44[4] = @"unset";
  v43[5] = @"gesture";
  v44[5] = @"unset";
  v43[6] = @"activity";
  v44[6] = @"general";
  v43[7] = @"case";
  v44[7] = @"unknown";
  v43[8] = @"negative_category";
  v44[8] = @"general";
  v43[9] = @"data_collection_source";
  v44[9] = @"carry-fp";
  v43[10] = @"data_collection_phase";
  v44[10] = @"production-2";
  v43[11] = @"data_type";
  v44[11] = @"negative";
  v43[12] = @"date_collected";
  v44[12] = v36;
  v43[13] = @"time_collected";
  v44[13] = v35;
  v43[14] = @"sensors";
  v44[14] = location[0];
  v43[15] = @"annotations";
  v44[15] = v38;
  v43[16] = @"false_positive_metadata";
  v44[16] = v37;
  v43[17] = @"device_model";
  v44[17] = v31;
  v43[18] = @"uuid";
  v44[18] = v33;
  v43[19] = @"os";
  v44[19] = v30;
  v43[20] = @"time_zone";
  v44[20] = v29;
  v43[21] = @"device_orientation";
  v44[21] = v28;
  v43[22] = @"full_hardware_config";
  v44[22] = v27;
  v43[23] = @"accel_sample_rate_hz";
  v44[23] = @"100.00";
  v43[24] = @"gyro_sample_rate_hz";
  v44[24] = @"100.00";
  v43[25] = @"user_accel_sample_rate_hz";
  v44[25] = @"100.00";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:26];
  v20 = objc_alloc(MEMORY[0x277CBEB78]);
  v21 = [(AXPhoenixMetadataLogger *)v40 metadataFilePath];
  v25 = [v20 initToFileAtPath:? append:?];
  MEMORY[0x277D82BD8](v21);
  [v25 open];
  oslog[1] = 3;
  if ([MEMORY[0x277CCAAA0] writeJSONObject:v26 toStream:v25 options:3 error:0])
  {
    oslog[0] = AXLogBackTap();
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
    {
      v6 = [(AXPhoenixMetadataLogger *)v40 metadataFilePath];
      __os_log_helper_16_2_2_8_32_8_64(v42, "[AXPhoenixMetadataLogger writeMetadataToFileWithSensors:withAnnotations:withFalsePositivesMetadata:]", v6);
      _os_log_impl(&dword_25E4AC000, oslog[0], type, "[PHOENIX] %s Metadata written to: %@", v42, 0x16u);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v22 = AXLogBackTap();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v5 = [(AXPhoenixMetadataLogger *)v40 metadataFilePath];
      __os_log_helper_16_2_2_8_32_8_64(v41, "[AXPhoenixMetadataLogger writeMetadataToFileWithSensors:withAnnotations:withFalsePositivesMetadata:]", v5);
      _os_log_error_impl(&dword_25E4AC000, v22, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Error writing data collection metadata to: %@", v41, 0x16u);
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&v22, 0);
  }

  [v25 close];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_deviceModelName
{
  v6 = *MEMORY[0x277D85DE8];
  v4[2] = self;
  v4[1] = a2;
  bzero(&v5, 0x200uLL);
  uname(&v5);
  v4[0] = [MEMORY[0x277CCACA8] stringWithCString:v5.machine encoding:4];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_orientationString
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 orientation];
  MEMORY[0x277D82BD8](v3);
  if (v4)
  {
    switch(v4)
    {
      case 1:
        v5 = MEMORY[0x277D82BE0](@"UIDeviceOrientationPortrait");
        break;
      case 2:
        v5 = MEMORY[0x277D82BE0](@"UIDeviceOrientationPortraitUpsideDown");
        break;
      case 3:
        v5 = MEMORY[0x277D82BE0](@"UIDeviceOrientationLandscapeLeft");
        break;
      case 4:
        v5 = MEMORY[0x277D82BE0](@"UIDeviceOrientationLandscapeRight");
        break;
      case 5:
        v5 = MEMORY[0x277D82BE0](@"UIDeviceOrientationFaceUp");
        break;
      case 6:
        v5 = MEMORY[0x277D82BE0](@"UIDeviceOrientationFaceDown");
        break;
    }
  }

  else
  {
    v5 = MEMORY[0x277D82BE0](@"UIDeviceOrientationUnknown");
  }

  return v5;
}

@end