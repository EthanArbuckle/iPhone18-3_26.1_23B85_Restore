@interface ICCloudServerSupportedServiceGetNamesBidirectionalDictionary
@end

@implementation ICCloudServerSupportedServiceGetNamesBidirectionalDictionary

void ___ICCloudServerSupportedServiceGetNamesBidirectionalDictionary_block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69B13E8]);
  v4[0] = &unk_1F2C920B0;
  v4[1] = &unk_1F2C920C8;
  v5[0] = @"main";
  v5[1] = @"networkAvailability";
  v4[2] = &unk_1F2C920E0;
  v4[3] = &unk_1F2C920F8;
  v5[2] = @"cloud";
  v5[3] = @"cloudStatusMonitor";
  v4[4] = &unk_1F2C92110;
  v4[5] = &unk_1F2C92128;
  v5[4] = @"mediaUserStateCenterServer";
  v5[5] = @"playbackPosition";
  v4[6] = &unk_1F2C92140;
  v5[6] = @"badging";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:7];
  v2 = [v0 initWithDictionary:v1];
  v3 = _ICCloudServerSupportedServiceGetNamesBidirectionalDictionary_sCloudServerSupportedServiceNames;
  _ICCloudServerSupportedServiceGetNamesBidirectionalDictionary_sCloudServerSupportedServiceNames = v2;
}

@end