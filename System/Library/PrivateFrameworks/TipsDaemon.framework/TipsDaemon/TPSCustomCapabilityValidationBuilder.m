@interface TPSCustomCapabilityValidationBuilder
+ (id)deviceCapabilityValidationMap;
+ (id)targetValidationForCapability:(id)a3;
+ (id)targetValidationForNRDeviceCapability:(id)a3;
+ (id)watchCapabilityValidationMap;
@end

@implementation TPSCustomCapabilityValidationBuilder

+ (id)deviceCapabilityValidationMap
{
  if (deviceCapabilityValidationMap_onceToken != -1)
  {
    +[TPSCustomCapabilityValidationBuilder deviceCapabilityValidationMap];
  }

  v3 = deviceCapabilityValidationMap_capabilityMap;

  return v3;
}

void __69__TPSCustomCapabilityValidationBuilder_deviceCapabilityValidationMap__block_invoke()
{
  v4[70] = *MEMORY[0x277D85DE8];
  v3[0] = @"BetaUser";
  v4[0] = objc_opt_class();
  v3[1] = @"6a4a9403835f9f19136d51a5fda2eb4cdbb2f115";
  v4[1] = objc_opt_class();
  v3[2] = @"62e200ccfc12f2f7df0045e62966165a84b22865";
  v4[2] = objc_opt_class();
  v3[3] = @"AppleArcadeSubscription";
  v4[3] = objc_opt_class();
  v3[4] = @"AppleCardSetup";
  v4[4] = objc_opt_class();
  v3[5] = @"AppleCashFamily";
  v4[5] = objc_opt_class();
  v3[6] = @"AppleCashSetup";
  v4[6] = objc_opt_class();
  v3[7] = @"AppleFitnessPlusSubscription";
  v4[7] = objc_opt_class();
  v3[8] = @"AppleNewsPlusSubscription";
  v4[8] = objc_opt_class();
  v3[9] = @"ApplePayActivation";
  v4[9] = objc_opt_class();
  v3[10] = @"ApplePayPeer";
  v4[10] = objc_opt_class();
  v3[11] = @"ApplePaySetup";
  v4[11] = objc_opt_class();
  v3[12] = @"AppleTVHomePod";
  v4[12] = objc_opt_class();
  v3[13] = @"AppleTVPlusSubscription";
  v4[13] = objc_opt_class();
  v3[14] = @"AppStoreRegion";
  v4[14] = objc_opt_class();
  v3[15] = @"f26177587586682d72004e360c3d302bcd88fded";
  v4[15] = objc_opt_class();
  v3[16] = @"32971e46f383403dfbcf0e9ce5455486d889c24";
  v4[16] = objc_opt_class();
  v3[17] = @"2f480e181229a3cfe6797ccd6710bd93b8303c4c";
  v4[17] = objc_opt_class();
  v3[18] = @"e2144efa67e3162124c9db7498f21dc65ced81a5";
  v4[18] = objc_opt_class();
  v3[19] = @"58656d847de7d3f11b334345d2a09a0a171e4803";
  v4[19] = objc_opt_class();
  v3[20] = @"6aac0d229f037e21ac5a19d6836811e6cf1df434";
  v4[20] = objc_opt_class();
  v3[21] = @"ContainsLanguage";
  v4[21] = objc_opt_class();
  v3[22] = @"ContextualEvent";
  v4[22] = objc_opt_class();
  v3[23] = @"DictationLanguages";
  v4[23] = objc_opt_class();
  v3[24] = @"DualSim";
  v4[24] = objc_opt_class();
  v3[25] = @"97a844593f69be5f9b53f9d6492f343887622d07";
  v4[25] = objc_opt_class();
  v3[26] = @"ExcludeApps";
  v4[26] = objc_opt_class();
  v3[27] = @"b83326572480b130f53f6be070dcdba8dbb7ffee";
  v4[27] = objc_opt_class();
  v3[28] = @"FamilyHasChild";
  v4[28] = objc_opt_class();
  v3[29] = @"FamilyIsChildAccount";
  v4[29] = objc_opt_class();
  v3[30] = @"FamilyOrganizer";
  v4[30] = objc_opt_class();
  v3[31] = @"32316fa371b1b1a819b91ee347c5db5e2841e942";
  v4[31] = objc_opt_class();
  v3[32] = @"370bbcbee5e996dc60e8b7ec961bc0310d21f150";
  v4[32] = objc_opt_class();
  v3[33] = @"d6413259b1ed0d6b636f2b1c2ed590d3b4c28b04";
  v4[33] = objc_opt_class();
  v3[34] = @"b82a54bd17d8787ff536a1e2619eceea03b5e7c8";
  v4[34] = objc_opt_class();
  v3[35] = @"9e401c3ab1c7e98e989f578806e04139d2ab12c2";
  v4[35] = objc_opt_class();
  v3[36] = @"HKFeatureStatus";
  v4[36] = objc_opt_class();
  v3[37] = @"HealthRecordsAccountInfoStatus";
  v4[37] = objc_opt_class();
  v3[38] = @"HeySiriAvailable";
  v4[38] = objc_opt_class();
  v3[39] = @"HeySiriEnabled";
  v4[39] = objc_opt_class();
  v3[40] = @"HeySiriEverUsed";
  v4[40] = objc_opt_class();
  v3[41] = @"HomeSetup";
  v4[41] = objc_opt_class();
  v3[42] = @"HomeSetupWithAccessories";
  v4[42] = objc_opt_class();
  v3[43] = @"f351e061575fb4e0fd7988380c83c47ba0d52434";
  v4[43] = objc_opt_class();
  v3[44] = @"f591050f8d0408ad3bc4e62cab04daa3a0d273df";
  v4[44] = objc_opt_class();
  v3[45] = @"KeyboardExtendedSuggestions";
  v4[45] = objc_opt_class();
  v3[46] = @"HandwritingKeyboardEnabled";
  v4[46] = objc_opt_class();
  v3[47] = @"InstalledKeyboards";
  v4[47] = objc_opt_class();
  v3[48] = @"17eb06719c9d3aabf50bb59c4a7e774a60c65777";
  v4[48] = objc_opt_class();
  v3[49] = @"74d51db7850d6d7ce6338bdd62165a98508cad47";
  v4[49] = objc_opt_class();
  v3[50] = @"MedicalIDEnabled";
  v4[50] = objc_opt_class();
  v3[51] = @"MultipleLanguages";
  v4[51] = objc_opt_class();
  v3[52] = @"HavePeopleSuggestion";
  v4[52] = objc_opt_class();
  v3[53] = @"ScreenTimeCloudDevice";
  v4[53] = objc_opt_class();
  v3[54] = @"ScreenTimeCurrentDevice";
  v4[54] = objc_opt_class();
  v3[55] = @"773abb50868ad190f9ba0c5d33b8db96440db9f5";
  v4[55] = objc_opt_class();
  v3[56] = @"SiriEnabled";
  v4[56] = objc_opt_class();
  v3[57] = @"SiriLanguageMatchesSystemLanguage";
  v4[57] = objc_opt_class();
  v3[58] = @"SleepSetup";
  v4[58] = objc_opt_class();
  v3[59] = @"iCloudAccount";
  v4[59] = objc_opt_class();
  v3[60] = @"iCloudBackup";
  v4[60] = objc_opt_class();
  v3[61] = @"iCloudDrive";
  v4[61] = objc_opt_class();
  v3[62] = @"iCloudFindMyDevice";
  v4[62] = objc_opt_class();
  v3[63] = @"CloudMusicCatalogPlayback";
  v4[63] = objc_opt_class();
  v3[64] = @"iCloudPhotoLibrary";
  v4[64] = objc_opt_class();
  v3[65] = @"iCloudPlusAccount";
  v4[65] = objc_opt_class();
  v3[66] = @"13eda8c5e84d02c01729dba5c716bebd337f48cc";
  v4[66] = objc_opt_class();
  v3[67] = @"e0be4ec01737fdec5a211693a64dad134bcfa88a";
  v4[67] = objc_opt_class();
  v3[68] = @"678eced4f962f217a8df044a40d2bde4a8f12746";
  v4[68] = objc_opt_class();
  v3[69] = @"02742f81f8f41e86266597baf0adfe4d2df0ca4e";
  v4[69] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:70];
  v1 = deviceCapabilityValidationMap_capabilityMap;
  deviceCapabilityValidationMap_capabilityMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)targetValidationForCapability:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(TPSTargetingValidation);
  if ([v4 type] == 2)
  {
    v6 = [a1 deviceCapabilityValidationMap];
    v7 = [v4 key];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = objc_alloc_init(v8);

      v5 = v9;
    }

    v10 = [v4 key];
    if (v10)
    {
      v11 = v10;
      v12 = [v4 value];

      if (v12)
      {
        v13 = [v4 key];
        v18 = v13;
        v14 = [v4 value];
        v19[0] = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        [(TPSTargetingValidation *)v5 setTargetContext:v15];
      }
    }

    -[TPSTargetingValidation setJoinType:](v5, "setJoinType:", [v4 joinType]);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)watchCapabilityValidationMap
{
  if (watchCapabilityValidationMap_onceToken != -1)
  {
    +[TPSCustomCapabilityValidationBuilder watchCapabilityValidationMap];
  }

  v3 = watchCapabilityValidationMap_capabilityMap;

  return v3;
}

void __68__TPSCustomCapabilityValidationBuilder_watchCapabilityValidationMap__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"FallDetection";
  v3[1] = @"ECG";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = watchCapabilityValidationMap_capabilityMap;
  watchCapabilityValidationMap_capabilityMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)targetValidationForNRDeviceCapability:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(TPSTargetingValidation);
  if ([v4 type] == 4)
  {
    v6 = [a1 watchCapabilityValidationMap];
    v7 = [v4 key];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = objc_alloc_init(v8);

      v5 = v9;
    }

    v10 = [v4 key];
    if (v10)
    {
      v11 = v10;
      v12 = [v4 value];

      if (v12)
      {
        v13 = [v4 key];
        v18 = v13;
        v14 = [v4 value];
        v19[0] = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        [(TPSTargetingValidation *)v5 setTargetContext:v15];
      }
    }

    -[TPSTargetingValidation setJoinType:](v5, "setJoinType:", [v4 joinType]);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

@end