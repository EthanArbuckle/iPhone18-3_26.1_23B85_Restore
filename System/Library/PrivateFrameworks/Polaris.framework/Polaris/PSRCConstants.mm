@interface PSRCConstants
+ (BOOL)checkBufferConfigExistsForKey:(id)a3;
+ (id)resourceIDForKey:(id)a3;
+ (unsigned)getCameraDepthForKey:(id)a3;
+ (unsigned)getReaderDepthForKey:(id)a3;
+ (unsigned)getWriterDepthForKey:(id)a3;
+ (void)setUp;
@end

@implementation PSRCConstants

+ (void)setUp
{
  if (setUp_onceToken != -1)
  {
    +[PSRCConstants setUp];
  }
}

void __22__PSRCConstants_setUp__block_invoke()
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = MEMORY[0x277CBEAC0];
  v1 = [v5 pathForResource:@"PSRCBufferDepthsN301" ofType:@"plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = [v2 objectForKey:@"bufferConfigs"];
  v4 = bufferDict;
  bufferDict = v3;
}

+ (unsigned)getCameraDepthForKey:(id)a3
{
  v4 = a3;
  [a1 setUp];
  v5 = [bufferDict objectForKey:v4];

  if (v5)
  {
    v6 = [bufferDict objectForKeyedSubscript:v4];
    v7 = [v6 objectForKey:@"cameraDepth"];
    v8 = [v7 unsignedIntValue];

    return v8;
  }

  else
  {
    v10 = [(PSRCConstants *)&v13 getCameraDepthForKey:v4];
    return [(PSRCConstants *)v10 getReaderDepthForKey:v11, v12];
  }
}

+ (unsigned)getReaderDepthForKey:(id)a3
{
  v4 = a3;
  [a1 setUp];
  v5 = [bufferDict objectForKey:v4];

  if (v5)
  {
    v6 = [bufferDict objectForKeyedSubscript:v4];
    v7 = [v6 objectForKey:@"readerDepth"];
    v8 = [v7 unsignedIntValue];

    return v8;
  }

  else
  {
    v10 = [(PSRCConstants *)&v13 getReaderDepthForKey:v4];
    return [(PSRCConstants *)v10 getWriterDepthForKey:v11, v12];
  }
}

+ (unsigned)getWriterDepthForKey:(id)a3
{
  v4 = a3;
  [a1 setUp];
  v5 = [bufferDict objectForKey:v4];

  if (v5)
  {
    v6 = [bufferDict objectForKeyedSubscript:v4];
    v7 = [v6 objectForKey:@"writerDepth"];
    v8 = [v7 unsignedIntValue];

    return v8;
  }

  else
  {
    v10 = [(PSRCConstants *)&v13 getWriterDepthForKey:v4];
    return [(PSRCConstants *)v10 checkBufferConfigExistsForKey:v11, v12];
  }
}

+ (BOOL)checkBufferConfigExistsForKey:(id)a3
{
  v4 = a3;
  [a1 setUp];
  v5 = [bufferDict objectForKey:v4];

  return v5 != 0;
}

+ (id)resourceIDForKey:(id)a3
{
  v3 = resourceIDForKey__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[PSRCConstants resourceIDForKey:];
  }

  v5 = [resourceIDForKey__keyToIDMap objectForKeyedSubscript:v4];

  return v5;
}

void __34__PSRCConstants_resourceIDForKey___block_invoke()
{
  v4[137] = *MEMORY[0x277D85DE8];
  v3[0] = PLSResourceKeyRCStreamMCAMLS1[0];
  v3[1] = PLSResourceKeyRCStreamMCAMLS2[0];
  v4[0] = &unk_2870CAED8;
  v4[1] = &unk_2870CAEF0;
  v3[2] = PLSResourceKeyRCStreamMCAMLS3[0];
  v3[3] = PLSResourceKeyRCStreamMCAMLS3WR31[0];
  v4[2] = &unk_2870CAF08;
  v4[3] = &unk_2870CAF20;
  v3[4] = PLSResourceKeyRCStreamMCAMRS3WR31[0];
  v3[5] = PLSResourceKeyRCStreamMCAMLS3WRP_1[0];
  v4[4] = &unk_2870CAF38;
  v4[5] = &unk_2870CAF50;
  v3[6] = PLSResourceKeyRCStreamMCAMRS3WRP_1[0];
  v3[7] = PLSResourceKeyRCStreamMCAMLS3WR[0];
  v4[6] = &unk_2870CAF68;
  v4[7] = &unk_2870CAF80;
  v3[8] = PLSResourceKeyRCStreamMCAMRS3WR[0];
  v3[9] = PLSResourceKeyRCStreamMCAMLS3P[0];
  v4[8] = &unk_2870CAF98;
  v4[9] = &unk_2870CAFB0;
  v3[10] = PLSResourceKeyRCStreamMCAMLS3R[0];
  v3[11] = PLSResourceKeyRCStreamMCAMLS4[0];
  v4[10] = &unk_2870CAFC8;
  v4[11] = &unk_2870CAFE0;
  v3[12] = PLSResourceKeyRCStreamMCAMLS5[0];
  v3[13] = PLSResourceKeyRCStreamMCAMLS6[0];
  v4[12] = &unk_2870CAFF8;
  v4[13] = &unk_2870CB010;
  v3[14] = PLSResourceKeyRCStreamMCAMLS8[0];
  v3[15] = PLSResourceKeyRCStreamMCAMLDESGEN[0];
  v4[14] = &unk_2870CB028;
  v4[15] = &unk_2870CB040;
  v3[16] = PLSResourceKeyRCStreamMCAMRS1[0];
  v3[17] = PLSResourceKeyRCStreamMCAMRS2[0];
  v4[16] = &unk_2870CB058;
  v4[17] = &unk_2870CB070;
  v3[18] = PLSResourceKeyRCStreamMCAMRS3[0];
  v3[19] = PLSResourceKeyRCStreamMCAMRS3P[0];
  v4[18] = &unk_2870CB088;
  v4[19] = &unk_2870CB0A0;
  v3[20] = PLSResourceKeyRCStreamMCAMRS3R[0];
  v3[21] = PLSResourceKeyRCStreamMCAMRS4[0];
  v4[20] = &unk_2870CB0B8;
  v4[21] = &unk_2870CB0D0;
  v3[22] = PLSResourceKeyRCStreamMCAMRS5[0];
  v3[23] = PLSResourceKeyRCStreamMCAMRS6[0];
  v4[22] = &unk_2870CB0E8;
  v4[23] = &unk_2870CB100;
  v3[24] = PLSResourceKeyRCStreamMCAMRS8[0];
  v3[25] = PLSResourceKeyRCStreamMCAMRDESGEN[0];
  v4[24] = &unk_2870CB118;
  v4[25] = &unk_2870CB130;
  v3[26] = PLSResourceKeyRCStreamMCAMLS8U_1[0];
  v3[27] = PLSResourceKeyRCStreamMCAMRS8U_1[0];
  v4[26] = &unk_2870CB148;
  v4[27] = &unk_2870CB160;
  v3[28] = PLSResourceKeyRCStreamMCAMLS8U_10[0];
  v3[29] = PLSResourceKeyRCStreamMCAMRS8U_10[0];
  v4[28] = &unk_2870CB178;
  v4[29] = &unk_2870CB190;
  v3[30] = PLSResourceKeyRCStreamMCAMLS8W_1[0];
  v3[31] = PLSResourceKeyRCStreamMCAMRS8W_1[0];
  v4[30] = &unk_2870CB1A8;
  v4[31] = &unk_2870CB1C0;
  v3[32] = PLSResourceKeyRCStreamMCAMLS8U41_10[0];
  v3[33] = PLSResourceKeyRCStreamMCAMRS8U41_10[0];
  v4[32] = &unk_2870CB1D8;
  v4[33] = &unk_2870CB1F0;
  v3[34] = PLSResourceKeyRCStreamMCAMLS8WP_1[0];
  v3[35] = PLSResourceKeyRCStreamMCAMRS8WP_1[0];
  v4[34] = &unk_2870CB208;
  v4[35] = &unk_2870CB220;
  v3[36] = PLSResourceKeyRCStreamDCAMLS1[0];
  v3[37] = PLSResourceKeyRCStreamDCAMLS2[0];
  v4[36] = &unk_2870CB238;
  v4[37] = &unk_2870CB250;
  v3[38] = PLSResourceKeyRCStreamDCAMLS2W[0];
  v3[39] = PLSResourceKeyRCStreamDCAMLS2WP[0];
  v4[38] = &unk_2870CB268;
  v4[39] = &unk_2870CB280;
  v3[40] = PLSResourceKeyRCStreamDCAMLS2B[0];
  v3[41] = PLSResourceKeyRCStreamDCAMLS2BW[0];
  v4[40] = &unk_2870CB298;
  v4[41] = &unk_2870CB2B0;
  v3[42] = PLSResourceKeyRCStreamDCAMLS2BWP[0];
  v3[43] = PLSResourceKeyRCStreamDCAMLDESGEN[0];
  v4[42] = &unk_2870CB2C8;
  v4[43] = &unk_2870CB2E0;
  v3[44] = PLSResourceKeyRCStreamDCAMRS1[0];
  v3[45] = PLSResourceKeyRCStreamDCAMRS2[0];
  v4[44] = &unk_2870CB2F8;
  v4[45] = &unk_2870CB310;
  v3[46] = PLSResourceKeyRCStreamDCAMRS2W[0];
  v3[47] = PLSResourceKeyRCStreamDCAMRS2WP[0];
  v4[46] = &unk_2870CB328;
  v4[47] = &unk_2870CB340;
  v3[48] = PLSResourceKeyRCStreamDCAMRS2B[0];
  v3[49] = PLSResourceKeyRCStreamDCAMRS2BW[0];
  v4[48] = &unk_2870CB358;
  v4[49] = &unk_2870CB370;
  v3[50] = PLSResourceKeyRCStreamDCAMRS2BWP[0];
  v3[51] = PLSResourceKeyRCStreamDCAMRDESGEN[0];
  v4[50] = &unk_2870CB388;
  v4[51] = &unk_2870CB3A0;
  v3[52] = PLSResourceKeyRCStreamSCAMLS1[0];
  v3[53] = PLSResourceKeyRCStreamSCAMLS2[0];
  v4[52] = &unk_2870CB3B8;
  v4[53] = &unk_2870CB3D0;
  v3[54] = PLSResourceKeyRCStreamSCAMRS1[0];
  v3[55] = PLSResourceKeyRCStreamSCAMLS2W[0];
  v4[54] = &unk_2870CB3E8;
  v4[55] = &unk_2870CB400;
  v3[56] = PLSResourceKeyRCStreamSCAMLS2WP[0];
  v3[57] = PLSResourceKeyRCStreamSCAMLS2B[0];
  v4[56] = &unk_2870CB418;
  v4[57] = &unk_2870CB430;
  v3[58] = PLSResourceKeyRCStreamSCAMLS2BW[0];
  v3[59] = PLSResourceKeyRCStreamSCAMLS2BWP[0];
  v4[58] = &unk_2870CB448;
  v4[59] = &unk_2870CB460;
  v3[60] = PLSResourceKeyRCStreamSCAMLDESGEN[0];
  v3[61] = PLSResourceKeyRCStreamSCAMRS2[0];
  v4[60] = &unk_2870CB478;
  v4[61] = &unk_2870CB490;
  v3[62] = PLSResourceKeyRCStreamSCAMRS2W[0];
  v3[63] = PLSResourceKeyRCStreamSCAMRS2WP[0];
  v4[62] = &unk_2870CB4A8;
  v4[63] = &unk_2870CB4C0;
  v3[64] = PLSResourceKeyRCStreamSCAMRS2B[0];
  v4[64] = &unk_2870CB4D8;
  v3[65] = PLSResourceKeyRCStreamSCAMRS2BW[0];
  v4[65] = &unk_2870CB4F0;
  v3[66] = PLSResourceKeyRCStreamSCAMRS2BWP[0];
  v4[66] = &unk_2870CB508;
  v3[67] = PLSResourceKeyRCStreamSCAMRDESGEN[0];
  v4[67] = &unk_2870CB520;
  v3[68] = PLSResourceKeyRCStreamJCAMLS1[0];
  v4[68] = &unk_2870CB538;
  v3[69] = PLSResourceKeyRCStreamJCAMRS1[0];
  v4[69] = &unk_2870CB550;
  v3[70] = PLSResourceKeyRCStreamJCAMLS2[0];
  v4[70] = &unk_2870CB568;
  v3[71] = PLSResourceKeyRCStreamJCAMLS2W[0];
  v4[71] = &unk_2870CB580;
  v3[72] = PLSResourceKeyRCStreamJCAMLS2WP[0];
  v4[72] = &unk_2870CB598;
  v3[73] = PLSResourceKeyRCStreamJCAMLS2B[0];
  v4[73] = &unk_2870CB5B0;
  v3[74] = PLSResourceKeyRCStreamJCAMLS2BW[0];
  v4[74] = &unk_2870CB5C8;
  v3[75] = PLSResourceKeyRCStreamJCAMLS2BWP[0];
  v4[75] = &unk_2870CB5E0;
  v3[76] = PLSResourceKeyRCStreamJCAMRS2[0];
  v4[76] = &unk_2870CB5F8;
  v3[77] = PLSResourceKeyRCStreamJCAMRS2W[0];
  v4[77] = &unk_2870CB610;
  v3[78] = PLSResourceKeyRCStreamJCAMRS2WP[0];
  v4[78] = &unk_2870CB628;
  v3[79] = PLSResourceKeyRCStreamJCAMRS2B[0];
  v4[79] = &unk_2870CB640;
  v3[80] = PLSResourceKeyRCStreamJCAMRS2BW[0];
  v4[80] = &unk_2870CB658;
  v3[81] = PLSResourceKeyRCStreamJCAMRS2BWP[0];
  v4[81] = &unk_2870CB670;
  v3[82] = PLSResourceKeyRCStreamECAMLS1[0];
  v4[82] = &unk_2870CB688;
  v3[83] = PLSResourceKeyRCStreamECAMLS2[0];
  v4[83] = &unk_2870CB6A0;
  v3[84] = PLSResourceKeyRCStreamNECAMLS2BU[0];
  v4[84] = &unk_2870CB6B8;
  v3[85] = PLSResourceKeyRCStreamNECAMLS2UC[0];
  v4[85] = &unk_2870CB6D0;
  v3[86] = PLSResourceKeyRCStreamNECAMLS2BUC[0];
  v4[86] = &unk_2870CB6E8;
  v3[87] = PLSResourceKeyRCStreamBECAMLS2UC[0];
  v4[87] = &unk_2870CB700;
  v3[88] = PLSResourceKeyRCStreamBECAMLS2BUC[0];
  v4[88] = &unk_2870CB718;
  v3[89] = PLSResourceKeyRCStreamECAMLS2U52[0];
  v4[89] = &unk_2870CB730;
  v3[90] = PLSResourceKeyRCStreamECAMLS2U52P[0];
  v4[90] = &unk_2870CB748;
  v3[91] = PLSResourceKeyRCStreamECAMLIID[0];
  v4[91] = &unk_2870CB760;
  v3[92] = PLSResourceKeyRCStreamNECAMLOID[0];
  v4[92] = &unk_2870CB778;
  v3[93] = PLSResourceKeyRCStreamNECAMROID[0];
  v4[93] = &unk_2870CB790;
  v3[94] = PLSResourceKeyRCStreamBECAMLOID[0];
  v4[94] = &unk_2870CB7A8;
  v3[95] = PLSResourceKeyRCStreamBECAMROID[0];
  v4[95] = &unk_2870CB7C0;
  v3[96] = PLSResourceKeyRCStreamECAMLOC[0];
  v4[96] = &unk_2870CB7D8;
  v3[97] = PLSResourceKeyRCStreamNECAMLBOC[0];
  v4[97] = &unk_2870CB7F0;
  v3[98] = PLSResourceKeyRCStreamECAMRS1[0];
  v4[98] = &unk_2870CB808;
  v3[99] = PLSResourceKeyRCStreamECAMRS2[0];
  v4[99] = &unk_2870CB820;
  v3[100] = PLSResourceKeyRCStreamNECAMRS2BU[0];
  v4[100] = &unk_2870CB838;
  v3[101] = PLSResourceKeyRCStreamNECAMRS2UC[0];
  v4[101] = &unk_2870CB850;
  v3[102] = PLSResourceKeyRCStreamNECAMRS2BUC[0];
  v4[102] = &unk_2870CB868;
  v3[103] = PLSResourceKeyRCStreamBECAMRS2UC[0];
  v4[103] = &unk_2870CB880;
  v3[104] = PLSResourceKeyRCStreamBECAMRS2BUC[0];
  v4[104] = &unk_2870CB898;
  v3[105] = PLSResourceKeyRCStreamECAMRS2U52[0];
  v4[105] = &unk_2870CB8B0;
  v3[106] = PLSResourceKeyRCStreamECAMRS2U52P[0];
  v4[106] = &unk_2870CB8C8;
  v3[107] = PLSResourceKeyRCStreamECAMRIID[0];
  v4[107] = &unk_2870CB8E0;
  v3[108] = PLSResourceKeyRCStreamECAMROC[0];
  v4[108] = &unk_2870CB8F8;
  v3[109] = PLSResourceKeyRCStreamNECAMRBOC[0];
  v4[109] = &unk_2870CB910;
  v3[110] = PLSResourceKeyRCStreamBECAMLS1[0];
  v4[110] = &unk_2870CB928;
  v3[111] = PLSResourceKeyRCStreamBECAMLS2[0];
  v4[111] = &unk_2870CB940;
  v3[112] = PLSResourceKeyRCStreamBECAMLS2BU[0];
  v4[112] = &unk_2870CB958;
  v3[113] = PLSResourceKeyRCStreamBECAMLS2U52[0];
  v4[113] = &unk_2870CB970;
  v3[114] = PLSResourceKeyRCStreamBECAMLS2U52P[0];
  v4[114] = &unk_2870CB988;
  v3[115] = PLSResourceKeyRCStreamBECAMLIID[0];
  v4[115] = &unk_2870CB9A0;
  v3[116] = PLSResourceKeyRCStreamBECAMRS1[0];
  v4[116] = &unk_2870CB9B8;
  v3[117] = PLSResourceKeyRCStreamBECAMRS2[0];
  v4[117] = &unk_2870CB9D0;
  v3[118] = PLSResourceKeyRCStreamBECAMRS2BU[0];
  v4[118] = &unk_2870CB9E8;
  v3[119] = PLSResourceKeyRCStreamBECAMRS2U52[0];
  v4[119] = &unk_2870CBA00;
  v3[120] = PLSResourceKeyRCStreamBECAMRS2U52P[0];
  v4[120] = &unk_2870CBA18;
  v3[121] = PLSResourceKeyRCStreamBECAMRIID[0];
  v4[121] = &unk_2870CBA30;
  v3[122] = PLSResourceKeyRCStreamBCAMLS1[0];
  v4[122] = &unk_2870CBA48;
  v3[123] = PLSResourceKeyRCStreamBCAMRS1[0];
  v4[123] = &unk_2870CBA60;
  v3[124] = PLSResourceKeyRCStreamPearlIIR[0];
  v4[124] = &unk_2870CBA78;
  v3[125] = PLSResourceKeyRCStreamPearlIRW[0];
  v4[125] = &unk_2870CBA90;
  v3[126] = PLSResourceKeyRCStreamPearlDepth[0];
  v4[126] = &unk_2870CBAA8;
  v3[127] = PLSResourceKeyRCStreamJasper[0];
  v4[127] = &unk_2870CBAC0;
  v3[128] = PLSResourceKeyRCStreamJasperRaw[0];
  v4[128] = &unk_2870CBAD8;
  v3[129] = PLSResourceKeyRCStreamJasperPointCloud[0];
  v4[129] = &unk_2870CBAF0;
  v3[130] = PLSResourceKeyRCStreamStereoPCE[0];
  v4[130] = &unk_2870CBB08;
  v3[131] = PLSResourceKeyRCStreamDCAMLDESGENRAW[0];
  v4[131] = &unk_2870CBB20;
  v3[132] = PLSResourceKeyRCStreamDCAMRDESGENRAW[0];
  v4[132] = &unk_2870CBB38;
  v3[133] = PLSResourceKeyRCStreamSCAMLDESGENRAW[0];
  v4[133] = &unk_2870CBB50;
  v3[134] = PLSResourceKeyRCStreamSCAMRDESGENRAW[0];
  v4[134] = &unk_2870CBB68;
  v3[135] = PLSResourceKeyRCStreamMCAMLDESGENRAW[0];
  v4[135] = &unk_2870CBB80;
  v3[136] = PLSResourceKeyRCStreamMCAMRDESGENRAW[0];
  v4[136] = &unk_2870CBB98;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:137];
  v1 = resourceIDForKey__keyToIDMap;
  resourceIDForKey__keyToIDMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)getCameraDepthForKey:(char *)a1 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "No Entry in PSRCConstants for Key (%s)", [a2 UTF8String]);
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d No Entry in PSRCConstants for Key (%s)", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSRCConstants getReaderDepthForKey:v18];
}

+ (uint64_t)getReaderDepthForKey:(char *)a1 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "No Entry in PSRCConstants for Key (%s)", [a2 UTF8String]);
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d No Entry in PSRCConstants for Key (%s)", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSRCConstants getWriterDepthForKey:v18];
}

+ (uint64_t)getWriterDepthForKey:(char *)a1 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "No Entry in PSRCConstants for Key (%s)", [a2 UTF8String]);
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d No Entry in PSRCConstants for Key (%s)", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSRCConstants resourceIDForKey:v18];
}

@end