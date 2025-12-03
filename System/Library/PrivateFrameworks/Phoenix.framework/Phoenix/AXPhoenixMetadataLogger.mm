@interface AXPhoenixMetadataLogger
- (AXPhoenixMetadataLogger)initWithMetadata:(id)metadata;
- (NSDateFormatter)dateFormatter;
- (id)_deviceModelName;
- (id)_orientationString;
- (void)setMetadataFilePathUnderDirectory:(id)directory;
- (void)writeMetadataToFileWithSensors:(id)sensors withAnnotations:(id)annotations withFalsePositivesMetadata:(id)metadata;
@end

@implementation AXPhoenixMetadataLogger

- (AXPhoenixMetadataLogger)initWithMetadata:(id)metadata
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AXPhoenixMetadataLogger;
  selfCopy = [(AXPhoenixMetadataLogger *)&v7 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = [location[0] objectForKeyedSubscript:@"start_timestamp"];
    [(AXPhoenixMetadataLogger *)selfCopy setStartTimestamp:?];
    MEMORY[0x277D82BD8](v6);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)setMetadataFilePathUnderDirectory:(id)directory
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, directory);
  startTimestamp = [(AXPhoenixMetadataLogger *)selfCopy startTimestamp];
  v3 = [AXPhoenixDataCollectionUtils createFilename:"createFilename:usingTimestamp:withFileExtension:underDirectory:" usingTimestamp:@"metadata" withFileExtension:? underDirectory:?];
  [(AXPhoenixMetadataLogger *)selfCopy setMetadataFilePath:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](startTimestamp);
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

- (void)writeMetadataToFileWithSensors:(id)sensors withAnnotations:(id)annotations withFalsePositivesMetadata:(id)metadata
{
  v44[26] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, sensors);
  v38 = 0;
  objc_storeStrong(&v38, annotations);
  v37 = 0;
  objc_storeStrong(&v37, metadata);
  dateFormatter = [(AXPhoenixMetadataLogger *)selfCopy dateFormatter];
  [(NSDateFormatter *)dateFormatter setDateFormat:@"YYYY-MM-dd"];
  MEMORY[0x277D82BD8](dateFormatter);
  dateFormatter2 = [(AXPhoenixMetadataLogger *)selfCopy dateFormatter];
  startTimestamp = [(AXPhoenixMetadataLogger *)selfCopy startTimestamp];
  v36 = [(NSDateFormatter *)dateFormatter2 stringFromDate:?];
  MEMORY[0x277D82BD8](startTimestamp);
  MEMORY[0x277D82BD8](dateFormatter2);
  dateFormatter3 = [(AXPhoenixMetadataLogger *)selfCopy dateFormatter];
  [(NSDateFormatter *)dateFormatter3 setDateFormat:@"HH-mm-ss-SSS"];
  MEMORY[0x277D82BD8](dateFormatter3);
  dateFormatter4 = [(AXPhoenixMetadataLogger *)selfCopy dateFormatter];
  startTimestamp2 = [(AXPhoenixMetadataLogger *)selfCopy startTimestamp];
  v35 = [(NSDateFormatter *)dateFormatter4 stringFromDate:?];
  MEMORY[0x277D82BD8](startTimestamp2);
  MEMORY[0x277D82BD8](dateFormatter4);
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 7];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  identifierForVendor = [currentDevice identifierForVendor];
  uUIDString = [identifierForVendor UUIDString];
  MEMORY[0x277D82BD8](identifierForVendor);
  MEMORY[0x277D82BD8](currentDevice);
  v32 = [uUIDString substringToIndex:5];
  _deviceModelName = [(AXPhoenixMetadataLogger *)selfCopy _deviceModelName];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];
  MEMORY[0x277D82BD8](processInfo);
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v29 = [localTimeZone localizedName:0 locale:?];
  MEMORY[0x277D82BD8](currentLocale);
  MEMORY[0x277D82BD8](localTimeZone);
  _orientationString = [(AXPhoenixMetadataLogger *)selfCopy _orientationString];
  _fullHardwareConfigurationString = [(AXPhoenixMetadataLogger *)selfCopy _fullHardwareConfigurationString];
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
  v44[17] = _deviceModelName;
  v43[18] = @"uuid";
  v44[18] = uUIDString;
  v43[19] = @"os";
  v44[19] = operatingSystemVersionString;
  v43[20] = @"time_zone";
  v44[20] = v29;
  v43[21] = @"device_orientation";
  v44[21] = _orientationString;
  v43[22] = @"full_hardware_config";
  v44[22] = _fullHardwareConfigurationString;
  v43[23] = @"accel_sample_rate_hz";
  v44[23] = @"100.00";
  v43[24] = @"gyro_sample_rate_hz";
  v44[24] = @"100.00";
  v43[25] = @"user_accel_sample_rate_hz";
  v44[25] = @"100.00";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:26];
  v20 = objc_alloc(MEMORY[0x277CBEB78]);
  metadataFilePath = [(AXPhoenixMetadataLogger *)selfCopy metadataFilePath];
  v25 = [v20 initToFileAtPath:? append:?];
  MEMORY[0x277D82BD8](metadataFilePath);
  [v25 open];
  oslog[1] = 3;
  if ([MEMORY[0x277CCAAA0] writeJSONObject:v26 toStream:v25 options:3 error:0])
  {
    oslog[0] = AXLogBackTap();
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
    {
      metadataFilePath2 = [(AXPhoenixMetadataLogger *)selfCopy metadataFilePath];
      __os_log_helper_16_2_2_8_32_8_64(v42, "[AXPhoenixMetadataLogger writeMetadataToFileWithSensors:withAnnotations:withFalsePositivesMetadata:]", metadataFilePath2);
      _os_log_impl(&dword_25E4AC000, oslog[0], type, "[PHOENIX] %s Metadata written to: %@", v42, 0x16u);
      MEMORY[0x277D82BD8](metadataFilePath2);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v22 = AXLogBackTap();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      metadataFilePath3 = [(AXPhoenixMetadataLogger *)selfCopy metadataFilePath];
      __os_log_helper_16_2_2_8_32_8_64(v41, "[AXPhoenixMetadataLogger writeMetadataToFileWithSensors:withAnnotations:withFalsePositivesMetadata:]", metadataFilePath3);
      _os_log_error_impl(&dword_25E4AC000, v22, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Error writing data collection metadata to: %@", v41, 0x16u);
      MEMORY[0x277D82BD8](metadataFilePath3);
    }

    objc_storeStrong(&v22, 0);
  }

  [v25 close];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&_fullHardwareConfigurationString, 0);
  objc_storeStrong(&_orientationString, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&operatingSystemVersionString, 0);
  objc_storeStrong(&_deviceModelName, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&uUIDString, 0);
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  orientation = [currentDevice orientation];
  MEMORY[0x277D82BD8](currentDevice);
  if (orientation)
  {
    switch(orientation)
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