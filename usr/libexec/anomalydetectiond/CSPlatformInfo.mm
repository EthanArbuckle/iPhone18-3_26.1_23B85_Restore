@interface CSPlatformInfo
+ (id)hardwareMap;
+ (id)sharedInstance;
+ (id)sharedInstance:(unint64_t)a3;
- (BOOL)forceDetectionDevice;
- (BOOL)isCrashClassifierSupportedPlatform;
- (BOOL)isDOEDeviceDefaultSet;
- (BOOL)isEigerDevice;
- (BOOL)isExtendedPretriggerDMDevice;
- (BOOL)isExtendedPretriggerMagDevice;
- (BOOL)isFeedbackAssistantEligible;
- (BOOL)isInternalInstall;
- (BOOL)isKappaDetectionDevice;
- (BOOL)isKappaDetectionDevice:(unint64_t)a3;
- (BOOL)isKappaLoggingDevice;
- (BOOL)isKappaLoggingDevice:(unint64_t)a3;
- (BOOL)isMDevice;
- (BOOL)isSovereignDevice;
- (CSPlatformInfo)init;
- (CSPlatformInfo)initWithHardware:(unint64_t)a3;
- (id)getSerialNumber;
- (id)getSystem:(const char *)a3;
- (id)getSystemModel;
- (id)getSystemVersionDescription;
- (id)getSystemVersionDescriptionNoBuild;
- (int)getSystemReleaseType;
- (unint64_t)getSystemHardware;
- (unint64_t)queryEmbeddedSystemHardware;
@end

@implementation CSPlatformInfo

+ (id)sharedInstance:(unint64_t)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034BE38;
  block[3] = &unk_100423460;
  block[4] = a3;
  if (qword_100458928 != -1)
  {
    dispatch_once(&qword_100458928, block);
  }

  v3 = qword_100458920;

  return v3;
}

+ (id)sharedInstance
{
  if (qword_100458928 != -1)
  {
    sub_100350C04();
  }

  v3 = qword_100458920;

  return v3;
}

+ (id)hardwareMap
{
  v4[0] = &off_10043D6C0;
  v4[1] = &off_10043D6D8;
  v5[0] = &off_10043D6C0;
  v5[1] = &off_10043D6D8;
  v4[2] = &off_10043D6F0;
  v4[3] = &off_10043D708;
  v5[2] = &off_10043D6F0;
  v5[3] = &off_10043D708;
  v4[4] = &off_10043D720;
  v4[5] = &off_10043D738;
  v5[4] = &off_10043D720;
  v5[5] = &off_10043D738;
  v4[6] = &off_10043D750;
  v4[7] = &off_10043D768;
  v5[6] = &off_10043D750;
  v5[7] = &off_10043D768;
  v4[8] = &off_10043D780;
  v4[9] = &off_10043D798;
  v5[8] = &off_10043D780;
  v5[9] = &off_10043D798;
  v4[10] = &off_10043D7B0;
  v4[11] = &off_10043D7C8;
  v5[10] = &off_10043D7B0;
  v5[11] = &off_10043D7C8;
  v4[12] = &off_10043D7E0;
  v4[13] = &off_10043D7F8;
  v5[12] = &off_10043D7E0;
  v5[13] = &off_10043D7F8;
  v4[14] = &off_10043D810;
  v4[15] = &off_10043D828;
  v5[14] = &off_10043D810;
  v5[15] = &off_10043D828;
  v4[16] = &off_10043D840;
  v4[17] = &off_10043D858;
  v5[16] = &off_10043D840;
  v5[17] = &off_10043D858;
  v4[18] = &off_10043D870;
  v4[19] = &off_10043D888;
  v5[18] = &off_10043D870;
  v5[19] = &off_10043D888;
  v4[20] = &off_10043D8A0;
  v4[21] = &off_10043D8B8;
  v5[20] = &off_10043D8A0;
  v5[21] = &off_10043D8B8;
  v4[22] = &off_10043D8D0;
  v4[23] = &off_10043D8E8;
  v5[22] = &off_10043D8D0;
  v5[23] = &off_10043D8E8;
  v4[24] = &off_10043D900;
  v4[25] = &off_10043D918;
  v5[24] = &off_10043D900;
  v5[25] = &off_10043D918;
  v4[26] = &off_10043D930;
  v4[27] = &off_10043D948;
  v5[26] = &off_10043D930;
  v5[27] = &off_10043D948;
  v4[28] = &off_10043D960;
  v4[29] = &off_10043D978;
  v5[28] = &off_10043D960;
  v5[29] = &off_10043D978;
  v4[30] = &off_10043D990;
  v4[31] = &off_10043D9A8;
  v5[30] = &off_10043D990;
  v5[31] = &off_10043D9A8;
  v4[32] = &off_10043D9C0;
  v4[33] = &off_10043D9D8;
  v5[32] = &off_10043D9C0;
  v5[33] = &off_10043D9D8;
  v4[34] = &off_10043D9F0;
  v4[35] = &off_10043DA08;
  v5[34] = &off_10043D9F0;
  v5[35] = &off_10043DA08;
  v4[36] = &off_10043DA20;
  v4[37] = &off_10043DA38;
  v5[36] = &off_10043DA20;
  v5[37] = &off_10043DA38;
  v4[38] = &off_10043DA50;
  v4[39] = &off_10043DA68;
  v5[38] = &off_10043DA50;
  v5[39] = &off_10043DA68;
  v4[40] = &off_10043DA80;
  v4[41] = &off_10043DA98;
  v5[40] = &off_10043DA80;
  v5[41] = &off_10043DA98;
  v4[42] = &off_10043DAB0;
  v4[43] = &off_10043DAC8;
  v5[42] = &off_10043DAB0;
  v5[43] = &off_10043DAC8;
  v4[44] = &off_10043DAE0;
  v4[45] = &off_10043DAF8;
  v5[44] = &off_10043DAE0;
  v5[45] = &off_10043DAF8;
  v4[46] = &off_10043DB10;
  v4[47] = &off_10043DB28;
  v5[46] = &off_10043DB10;
  v5[47] = &off_10043DB28;
  v4[48] = &off_10043DB40;
  v4[49] = &off_10043DB58;
  v5[48] = &off_10043DB40;
  v5[49] = &off_10043DB58;
  v4[50] = &off_10043DB70;
  v4[51] = &off_10043DB88;
  v5[50] = &off_10043DB70;
  v5[51] = &off_10043DB88;
  v4[52] = &off_10043DBA0;
  v4[53] = &off_10043DBB8;
  v5[52] = &off_10043DBA0;
  v5[53] = &off_10043DBB8;
  v4[54] = &off_10043DBD0;
  v4[55] = &off_10043DBE8;
  v5[54] = &off_10043DBD0;
  v5[55] = &off_10043DBE8;
  v4[56] = &off_10043DC00;
  v4[57] = &off_10043DC18;
  v5[56] = &off_10043DC00;
  v5[57] = &off_10043DC18;
  v4[58] = &off_10043DC30;
  v4[59] = &off_10043DC48;
  v5[58] = &off_10043DC30;
  v5[59] = &off_10043DC48;
  v4[60] = &off_10043DC60;
  v4[61] = &off_10043DC78;
  v5[60] = &off_10043DC60;
  v5[61] = &off_10043DC78;
  v4[62] = &off_10043DC90;
  v4[63] = &off_10043DCA8;
  v5[62] = &off_10043DC90;
  v5[63] = &off_10043DCA8;
  v4[64] = &off_10043DCC0;
  v5[64] = &off_10043DCC0;
  v4[65] = &off_10043DCD8;
  v5[65] = &off_10043DCD8;
  v4[66] = &off_10043DCF0;
  v5[66] = &off_10043DCF0;
  v4[67] = &off_10043DD08;
  v5[67] = &off_10043DD08;
  v4[68] = &off_10043DD20;
  v5[68] = &off_10043DD20;
  v4[69] = &off_10043DD38;
  v5[69] = &off_10043DD38;
  v4[70] = &off_10043DD50;
  v5[70] = &off_10043DD50;
  v4[71] = &off_10043DD68;
  v5[71] = &off_10043DD68;
  v4[72] = &off_10043DD80;
  v5[72] = &off_10043DD80;
  v4[73] = &off_10043DD98;
  v5[73] = &off_10043DD98;
  v4[74] = &off_10043DDB0;
  v5[74] = &off_10043DDB0;
  v4[75] = &off_10043DDC8;
  v5[75] = &off_10043DDC8;
  v4[76] = &off_10043DDE0;
  v5[76] = &off_10043DDE0;
  v4[77] = &off_10043DDF8;
  v5[77] = &off_10043DDF8;
  v4[78] = &off_10043DE10;
  v5[78] = &off_10043DE10;
  v4[79] = &off_10043DE28;
  v5[79] = &off_10043DE28;
  v4[80] = &off_10043DE40;
  v5[80] = &off_10043DE40;
  v4[81] = &off_10043DE58;
  v5[81] = &off_10043DE58;
  v4[82] = &off_10043DE70;
  v5[82] = &off_10043DE70;
  v4[83] = &off_10043DE88;
  v5[83] = &off_10043DE88;
  v4[84] = &off_10043DEA0;
  v5[84] = &off_10043DEA0;
  v4[85] = &off_10043DEB8;
  v5[85] = &off_10043DEB8;
  v4[86] = &off_10043DED0;
  v5[86] = &off_10043DED0;
  v4[87] = &off_10043DEE8;
  v5[87] = &off_10043DEE8;
  v4[88] = &off_10043DF00;
  v5[88] = &off_10043DF00;
  v4[89] = &off_10043DF18;
  v5[89] = &off_10043DF18;
  v4[90] = &off_10043DF30;
  v5[90] = &off_10043DF30;
  v4[91] = &off_10043DF48;
  v5[91] = &off_10043DF48;
  v4[92] = &off_10043DF60;
  v5[92] = &off_10043DF60;
  v4[93] = &off_10043DF78;
  v5[93] = &off_10043DF78;
  v4[94] = &off_10043DF90;
  v5[94] = &off_10043DF90;
  v4[95] = &off_10043DFA8;
  v5[95] = &off_10043DFA8;
  v4[96] = &off_10043DFC0;
  v5[96] = &off_10043DFC0;
  v4[97] = &off_10043DFD8;
  v5[97] = &off_10043DFD8;
  v4[98] = &off_10043DFF0;
  v5[98] = &off_10043DFF0;
  v4[99] = &off_10043E008;
  v5[99] = &off_10043E008;
  v4[100] = &off_10043E020;
  v5[100] = &off_10043E020;
  v4[101] = &off_10043E038;
  v5[101] = &off_10043E038;
  v4[102] = &off_10043E050;
  v5[102] = &off_10043E050;
  v4[103] = &off_10043E068;
  v5[103] = &off_10043E068;
  v4[104] = &off_10043E080;
  v5[104] = &off_10043E080;
  v4[105] = &off_10043E098;
  v5[105] = &off_10043E098;
  v4[106] = &off_10043E0B0;
  v5[106] = &off_10043E0B0;
  v4[107] = &off_10043E0C8;
  v5[107] = &off_10043E0C8;
  v4[108] = &off_10043E0E0;
  v5[108] = &off_10043E0E0;
  v4[109] = &off_10043E0F8;
  v5[109] = &off_10043E0F8;
  v4[110] = &off_10043E110;
  v5[110] = &off_10043E110;
  v4[111] = &off_10043E128;
  v5[111] = &off_10043E128;
  v4[112] = &off_10043E140;
  v5[112] = &off_10043E140;
  v4[113] = &off_10043E158;
  v5[113] = &off_10043E158;
  v4[114] = &off_10043E170;
  v5[114] = &off_10043E170;
  v4[115] = &off_10043E188;
  v5[115] = &off_10043E188;
  v4[116] = &off_10043E1A0;
  v5[116] = &off_10043E1A0;
  v4[117] = &off_10043E1B8;
  v5[117] = &off_10043E1B8;
  v4[118] = &off_10043E1D0;
  v5[118] = &off_10043E1D0;
  v4[119] = &off_10043E1E8;
  v5[119] = &off_10043E1E8;
  v4[120] = &off_10043E200;
  v5[120] = &off_10043E200;
  v4[121] = &off_10043E218;
  v5[121] = &off_10043E218;
  v4[122] = &off_10043E230;
  v5[122] = &off_10043E230;
  v4[123] = &off_10043E248;
  v5[123] = &off_10043E248;
  v4[124] = &off_10043E260;
  v5[124] = &off_10043E260;
  v4[125] = &off_10043E278;
  v5[125] = &off_10043E278;
  v4[126] = &off_10043E290;
  v5[126] = &off_10043E290;
  v4[127] = &off_10043E2A8;
  v5[127] = &off_10043E2A8;
  v4[128] = &off_10043E2C0;
  v5[128] = &off_10043E2C0;
  v4[129] = &off_10043E2D8;
  v5[129] = &off_10043E2D8;
  v4[130] = &off_10043E2F0;
  v5[130] = &off_10043E2F0;
  v4[131] = &off_10043E308;
  v5[131] = &off_10043E308;
  v4[132] = &off_10043E320;
  v5[132] = &off_10043E320;
  v4[133] = &off_10043E338;
  v5[133] = &off_10043E338;
  v4[134] = &off_10043E350;
  v5[134] = &off_10043E350;
  v4[135] = &off_10043E368;
  v5[135] = &off_10043E368;
  v4[136] = &off_10043E380;
  v5[136] = &off_10043E380;
  v4[137] = &off_10043E398;
  v5[137] = &off_10043E398;
  v4[138] = &off_10043E3B0;
  v5[138] = &off_10043E3B0;
  v4[139] = &off_10043E3C8;
  v5[139] = &off_10043E3C8;
  v4[140] = &off_10043E3E0;
  v5[140] = &off_10043E3E0;
  v4[141] = &off_10043E3F8;
  v5[141] = &off_10043E3F8;
  v4[142] = &off_10043E410;
  v5[142] = &off_10043E410;
  v4[143] = &off_10043E428;
  v5[143] = &off_10043E428;
  v4[144] = &off_10043E440;
  v5[144] = &off_10043E440;
  v4[145] = &off_10043E458;
  v5[145] = &off_10043E458;
  v4[146] = &off_10043E470;
  v5[146] = &off_10043E470;
  v4[147] = &off_10043E488;
  v5[147] = &off_10043E488;
  v4[148] = &off_10043E4A0;
  v5[148] = &off_10043E4A0;
  v4[149] = &off_10043E4B8;
  v5[149] = &off_10043E4B8;
  v4[150] = &off_10043E4D0;
  v5[150] = &off_10043E4D0;
  v4[151] = &off_10043E4E8;
  v5[151] = &off_10043E4E8;
  v4[152] = &off_10043E500;
  v5[152] = &off_10043E500;
  v4[153] = &off_10043E518;
  v5[153] = &off_10043E518;
  v4[154] = &off_10043E530;
  v5[154] = &off_10043E530;
  v4[155] = &off_10043E548;
  v5[155] = &off_10043E548;
  v4[156] = &off_10043E560;
  v5[156] = &off_10043E560;
  v4[157] = &off_10043E578;
  v5[157] = &off_10043E578;
  v4[158] = &off_10043E590;
  v5[158] = &off_10043E590;
  v4[159] = &off_10043E5A8;
  v5[159] = &off_10043E5A8;
  v4[160] = &off_10043E5C0;
  v5[160] = &off_10043E5C0;
  v4[161] = &off_10043E5D8;
  v5[161] = &off_10043E5D8;
  v4[162] = &off_10043E5F0;
  v5[162] = &off_10043E5F0;
  v4[163] = &off_10043E608;
  v5[163] = &off_10043E608;
  v4[164] = &off_10043E620;
  v5[164] = &off_10043E620;
  v4[165] = &off_10043E638;
  v5[165] = &off_10043E638;
  v4[166] = &off_10043E650;
  v5[166] = &off_10043E650;
  v4[167] = &off_10043E668;
  v5[167] = &off_10043E668;
  v4[168] = &off_10043E680;
  v5[168] = &off_10043E680;
  v4[169] = &off_10043E698;
  v5[169] = &off_10043E698;
  v4[170] = &off_10043E6B0;
  v5[170] = &off_10043E6B0;
  v4[171] = &off_10043E6C8;
  v5[171] = &off_10043E6C8;
  v4[172] = &off_10043E6E0;
  v5[172] = &off_10043E6E0;
  v4[173] = &off_10043E6F8;
  v5[173] = &off_10043E6F8;
  v4[174] = &off_10043E710;
  v5[174] = &off_10043E710;
  v4[175] = &off_10043E728;
  v5[175] = &off_10043E728;
  v4[176] = &off_10043E740;
  v5[176] = &off_10043E740;
  v4[177] = &off_10043E758;
  v5[177] = &off_10043E758;
  v4[178] = &off_10043E770;
  v5[178] = &off_10043E770;
  v4[179] = &off_10043E788;
  v5[179] = &off_10043E788;
  v4[180] = &off_10043E7A0;
  v5[180] = &off_10043E7A0;
  v4[181] = &off_10043E7B8;
  v5[181] = &off_10043E7B8;
  v4[182] = &off_10043E7D0;
  v5[182] = &off_10043E7D0;
  v4[183] = &off_10043E7E8;
  v5[183] = &off_10043E7E8;
  v4[184] = &off_10043E800;
  v5[184] = &off_10043E800;
  v4[185] = &off_10043E818;
  v5[185] = &off_10043E818;
  v4[186] = &off_10043E830;
  v5[186] = &off_10043E830;
  v4[187] = &off_10043E848;
  v5[187] = &off_10043E848;
  v4[188] = &off_10043E860;
  v5[188] = &off_10043E860;
  v4[189] = &off_10043E878;
  v5[189] = &off_10043E878;
  v4[190] = &off_10043E890;
  v5[190] = &off_10043E890;
  v4[191] = &off_10043E8A8;
  v5[191] = &off_10043E8A8;
  v4[192] = &off_10043E8C0;
  v5[192] = &off_10043E8C0;
  v4[193] = &off_10043E8D8;
  v5[193] = &off_10043E8D8;
  v4[194] = &off_10043E8F0;
  v5[194] = &off_10043E8F0;
  v4[195] = &off_10043E908;
  v5[195] = &off_10043E908;
  v4[196] = &off_10043E920;
  v5[196] = &off_10043E920;
  v4[197] = &off_10043E938;
  v5[197] = &off_10043E938;
  v4[198] = &off_10043E950;
  v5[198] = &off_10043E950;
  v4[199] = &off_10043E968;
  v5[199] = &off_10043E968;
  v4[200] = &off_10043E980;
  v5[200] = &off_10043E980;
  v4[201] = &off_10043E998;
  v5[201] = &off_10043E998;
  v4[202] = &off_10043E9B0;
  v5[202] = &off_10043E9B0;
  v4[203] = &off_10043E9C8;
  v5[203] = &off_10043E9C8;
  v4[204] = &off_10043E9E0;
  v5[204] = &off_10043E9E0;
  v4[205] = &off_10043E9F8;
  v5[205] = &off_10043E9F8;
  v4[206] = &off_10043EA10;
  v5[206] = &off_10043EA10;
  v4[207] = &off_10043EA28;
  v5[207] = &off_10043EA28;
  v4[208] = &off_10043EA40;
  v5[208] = &off_10043EA40;
  v4[209] = &off_10043EA58;
  v5[209] = &off_10043EA58;
  v4[210] = &off_10043EA70;
  v5[210] = &off_10043EA70;
  v4[211] = &off_10043EA88;
  v5[211] = &off_10043EA88;
  v4[212] = &off_10043EAA0;
  v5[212] = &off_10043EAA0;
  v4[213] = &off_10043EAB8;
  v5[213] = &off_10043EAB8;
  v4[214] = &off_10043EAD0;
  v5[214] = &off_10043EAD0;
  v4[215] = &off_10043EAE8;
  v5[215] = &off_10043EAE8;
  v4[216] = &off_10043EB00;
  v5[216] = &off_10043EB00;
  v4[217] = &off_10043EB18;
  v5[217] = &off_10043EB18;
  v4[218] = &off_10043EB30;
  v5[218] = &off_10043EB30;
  v4[219] = &off_10043EB48;
  v5[219] = &off_10043EB48;
  v4[220] = &off_10043EB60;
  v5[220] = &off_10043EB60;
  v4[221] = &off_10043EB78;
  v5[221] = &off_10043EB78;
  v4[222] = &off_10043EB90;
  v5[222] = &off_10043EB90;
  v4[223] = &off_10043EBA8;
  v5[223] = &off_10043EBA8;
  v4[224] = &off_10043EBC0;
  v5[224] = &off_10043EBC0;
  v4[225] = &off_10043EBD8;
  v5[225] = &off_10043EBD8;
  v4[226] = &off_10043EBF0;
  v5[226] = &off_10043EBF0;
  v4[227] = &off_10043EC08;
  v5[227] = &off_10043EC08;
  v4[228] = &off_10043EC20;
  v5[228] = &off_10043EC20;
  v4[229] = &off_10043EC38;
  v5[229] = &off_10043EC38;
  v4[230] = &off_10043EC50;
  v5[230] = &off_10043EC50;
  v4[231] = &off_10043EC68;
  v5[231] = &off_10043EC68;
  v4[232] = &off_10043EC80;
  v5[232] = &off_10043EC80;
  v4[233] = &off_10043EC98;
  v5[233] = &off_10043EC98;
  v4[234] = &off_10043ECB0;
  v5[234] = &off_10043ECB0;
  v4[235] = &off_10043ECC8;
  v5[235] = &off_10043ECC8;
  v4[236] = &off_10043ECE0;
  v5[236] = &off_10043ECE0;
  v4[237] = &off_10043ECF8;
  v5[237] = &off_10043ECF8;
  v4[238] = &off_10043ED10;
  v5[238] = &off_10043ED10;
  v4[239] = &off_10043ED28;
  v5[239] = &off_10043ED28;
  v4[240] = &off_10043ED40;
  v5[240] = &off_10043ED40;
  v4[241] = &off_10043ED58;
  v5[241] = &off_10043ED58;
  v4[242] = &off_10043ED70;
  v5[242] = &off_10043ED70;
  v4[243] = &off_10043ED88;
  v5[243] = &off_10043ED88;
  v4[244] = &off_10043EDA0;
  v5[244] = &off_10043EDA0;
  v4[245] = &off_10043EDB8;
  v5[245] = &off_10043EDB8;
  v4[246] = &off_10043EDD0;
  v5[246] = &off_10043EDD0;
  v4[247] = &off_10043EDE8;
  v5[247] = &off_10043EDE8;
  v4[248] = &off_10043EE00;
  v5[248] = &off_10043EE00;
  v4[249] = &off_10043EE18;
  v5[249] = &off_10043EE18;
  v4[250] = &off_10043EE30;
  v5[250] = &off_10043EE30;
  v4[251] = &off_10043EE48;
  v5[251] = &off_10043EE48;
  v4[252] = &off_10043EE60;
  v5[252] = &off_10043EE60;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:253];

  return v2;
}

- (CSPlatformInfo)init
{
  v8.receiver = self;
  v8.super_class = CSPlatformInfo;
  v2 = [(CSPlatformInfo *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_hardware = [(CSPlatformInfo *)v2 getSystemHardware];
    if (qword_100456838 != -1)
    {
      sub_100350C18();
    }

    v4 = qword_100456840;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      hardware = v3->_hardware;
      v6 = [(CSPlatformInfo *)v3 getSystemVersionDescription];
      *buf = 67109378;
      v10 = hardware;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "hw = %d (%@)", buf, 0x12u);
    }

    v3->_isSimulated = 0;
  }

  return v3;
}

- (CSPlatformInfo)initWithHardware:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CSPlatformInfo;
  result = [(CSPlatformInfo *)&v5 init];
  if (result)
  {
    result->_hardware = a3;
    result->_isSimulated = 1;
  }

  return result;
}

- (BOOL)isDOEDeviceDefaultSet
{
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 BOOLForKey:@"CSKappaDeviceIsDOE"];

  return v3;
}

- (BOOL)forceDetectionDevice
{
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 BOOLForKey:@"CSKappaForceDetection"];

  return v3;
}

- (BOOL)isKappaDetectionDevice
{
  v3 = [(CSPlatformInfo *)self isKappaDetectionDevice:self->_hardware];
  if ([(CSPlatformInfo *)self isKappaLoggingDevice:self->_hardware]&& !v3 && [(CSPlatformInfo *)self forceDetectionDevice])
  {
    return 1;
  }

  return v3;
}

- (BOOL)isKappaDetectionDevice:(unint64_t)a3
{
  if (a3 != 194 || ![(CSPlatformInfo *)self isDOEDeviceDefaultSet])
  {
    return a3 - 229 < 2 || a3 - 87 < 2 || a3 - 91 < 2 || (a3 & 0xFFFFFFFFFFFFFFFELL) == 202 || (a3 & 0xFFFFFFFFFFFFFFFBLL) - 89 < 2 || a3 - 237 < 6 || a3 - 145 < 0x12 || a3 - 243 < 9;
  }

  if (qword_100456838 != -1)
  {
    sub_100350BF0();
  }

  v4 = qword_100456840;
  v5 = 1;
  if (os_log_type_enabled(qword_100456840, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "is DOE default set, overriding", v14, 2u);
  }

  return v5;
}

- (BOOL)isKappaLoggingDevice
{
  v3 = [(CSPlatformInfo *)self isKappaDetectionDevice:self->_hardware];
  v4 = [(CSPlatformInfo *)self isKappaLoggingDevice:self->_hardware];
  if (v4 && (v3 & 1) == 0 && [(CSPlatformInfo *)self forceDetectionDevice])
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isKappaLoggingDevice:(unint64_t)a3
{
  if (a3 - 168 > 0x3C)
  {
    goto LABEL_10;
  }

  if (((1 << (a3 + 88)) & 0x100000037A000015) != 0)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  if (a3 != 194)
  {
LABEL_10:
    LOBYTE(v5) = 0;
    return v5;
  }

  v9 = v3;
  v10 = v4;
  if ([(CSPlatformInfo *)self isDOEDeviceDefaultSet])
  {
    if (qword_100456838 != -1)
    {
      sub_100350BF0();
    }

    v6 = qword_100456840;
    v5 = os_log_type_enabled(qword_100456840, OS_LOG_TYPE_INFO);
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "is DOE default set, overriding", v8, 2u);
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)isEigerDevice
{
  hardware = self->_hardware;
  v3 = hardware - 137;
  v4 = hardware - 193;
  v6 = v4 <= 8 && v4 != 6;
  return v3 < 0xC || v6;
}

- (BOOL)isSovereignDevice
{
  hardware = self->_hardware;
  v3 = hardware - 197;
  v4 = hardware - 141 < 4;
  v5 = v3 > 0x1F;
  v6 = (1 << v3) & 0x8000001BLL;
  return !v5 && v6 != 0 || v4;
}

- (BOOL)isExtendedPretriggerDMDevice
{
  hardware = self->_hardware;
  v3 = hardware - 202;
  v4 = hardware - 145;
  v5 = hardware - 87 < 4;
  if (v4 < 0x12)
  {
    v5 = 1;
  }

  v6 = v3 > 0x31;
  v7 = (1 << v3) & 0x3FFF818000003;
  return !v6 && v7 != 0 || v5;
}

- (BOOL)isExtendedPretriggerMagDevice
{
  hardware = self->_hardware;
  v3 = hardware - 202;
  v4 = hardware - 145;
  v5 = hardware - 87 < 4;
  if (v4 < 0x12)
  {
    v5 = 1;
  }

  v6 = v3 > 0x31;
  v7 = (1 << v3) & 0x3FFF818000003;
  return !v6 && v7 != 0 || v5;
}

- (BOOL)isMDevice
{
  hardware = self->_hardware;
  v3 = hardware - 238;
  v4 = hardware - 91 < 4;
  return v3 < 5 || v4;
}

- (BOOL)isCrashClassifierSupportedPlatform
{
  hardware = self->_hardware;
  v3 = hardware - 202;
  v4 = hardware - 87 < 8;
  v5 = v3 > 0x28;
  v6 = (1 << v3) & 0x1F818000003;
  return !v5 && v6 != 0 || v4;
}

- (int)getSystemReleaseType
{
  if (qword_100458930 != -1)
  {
    sub_100350C40();
  }

  return dword_100458710;
}

- (BOOL)isFeedbackAssistantEligible
{
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 getFloatDefault:@"FeedbackAssistantOverride"];
  v4 = +[CSPermissions sharedInstance];
  v5 = [v4 isAuthorizedToCollectData];

  v6 = +[CSPlatformInfo sharedInstance];
  [v6 isInternalInstall];

  return v5 & BYTE4(v3) & ((v3 & 0x7FFFFFFF) != 0);
}

- (BOOL)isInternalInstall
{
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 getBooleanDefault:@"CSKappaForceNotInternal"];

  if ((v3 & 0x100) != 0)
  {
    if (qword_100456838 != -1)
    {
      sub_100350BF0();
    }

    v4 = v3 ^ 1;
    v5 = qword_100456840;
    if (os_log_type_enabled(qword_100456840, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109120;
      v7[1] = v4 & 1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "isInternalInstall forcing internal = %d", v7, 8u);
    }
  }

  else
  {
    if (qword_100458940 != -1)
    {
      sub_100350C54();
    }

    v4 = byte_100458938;
  }

  return v4 & 1;
}

- (id)getSystem:(const char *)a3
{
  v5 = 128;
  if (sysctlbyname(a3, v6, &v5, 0, 0))
  {
    v3 = &stru_100436548;
  }

  else
  {
    v3 = [[NSString alloc] initWithUTF8String:v6];
  }

  return v3;
}

- (id)getSystemModel
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034DB5C;
  block[3] = &unk_100431708;
  block[4] = self;
  if (qword_100458950 != -1)
  {
    dispatch_once(&qword_100458950, block);
  }

  return qword_100458948;
}

- (id)getSystemVersionDescription
{
  v2 = _CFCopyServerVersionDictionary();
  if (!v2)
  {
    v2 = _CFCopySystemVersionDictionary();
  }

  v3 = [v2 objectForKey:_kCFSystemVersionProductVersionKey];
  v4 = [v2 objectForKey:_kCFSystemVersionProductNameKey];
  v5 = [v2 objectForKey:_kCFSystemVersionBuildVersionKey];
  v6 = @"???";
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = @"???";
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = @"???";
  }

  if (v5)
  {
    v6 = v5;
  }

  v9 = [NSString stringWithFormat:@"%@ %@ (%@)", v7, v8, v6];

  return v9;
}

- (id)getSystemVersionDescriptionNoBuild
{
  v2 = _CFCopyServerVersionDictionary();
  if (!v2)
  {
    v2 = _CFCopySystemVersionDictionary();
  }

  v3 = [v2 objectForKey:_kCFSystemVersionProductVersionKey];
  v4 = [v2 objectForKey:_kCFSystemVersionProductNameKey];
  v5 = @"???";
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"???";
  }

  if (v3)
  {
    v5 = v3;
  }

  v7 = [NSString stringWithFormat:@"%@ %@", v6, v5];

  return v7;
}

- (unint64_t)getSystemHardware
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034DE74;
  block[3] = &unk_100431708;
  block[4] = self;
  if (qword_100458960 != -1)
  {
    dispatch_once(&qword_100458960, block);
  }

  return qword_100458958;
}

- (unint64_t)queryEmbeddedSystemHardware
{
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 10;
  }

  if (MGIsDeviceOfType())
  {
    return 15;
  }

  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 12;
  }

  if (MGIsDeviceOfType())
  {
    return 13;
  }

  if (MGIsDeviceOfType())
  {
    return 14;
  }

  if (MGIsDeviceOfType())
  {
    return 16;
  }

  if (MGIsDeviceOfType())
  {
    return 17;
  }

  v6 = 1244490093;
  *buf = xmmword_1003C00E8;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 25;
  }

  if (MGIsDeviceOfType())
  {
    return 49;
  }

  if (MGIsDeviceOfType())
  {
    return 50;
  }

  v6 = 1839812531;
  *buf = xmmword_1003C0110;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 50;
  }

  if (MGIsDeviceOfType())
  {
    return 82;
  }

  v6 = -435113336;
  *buf = xmmword_1003C0124;
  if (MGIsDeviceOfType())
  {
    return 83;
  }

  v6 = -1997581659;
  *buf = xmmword_1003C0138;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 187;
  }

  if (MGIsDeviceOfType())
  {
    return 18;
  }

  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 19;
  }

  v6 = -38605833;
  *buf = xmmword_1003C014C;
  if (MGIsDeviceOfType())
  {
    return 20;
  }

  v6 = -894965712;
  *buf = xmmword_1003C0160;
  if (MGIsDeviceOfType())
  {
    return 21;
  }

  if (MGIsDeviceOfType())
  {
    return 23;
  }

  v6 = -926344036;
  *buf = xmmword_1003C0174;
  if (MGIsDeviceOfType())
  {
    return 26;
  }

  v6 = -954998212;
  *buf = xmmword_1003C0188;
  if (MGIsDeviceOfType())
  {
    return 27;
  }

  v6 = 436612651;
  *buf = xmmword_1003C019C;
  if (MGIsDeviceOfType())
  {
    return 28;
  }

  if (MGIsDeviceOfType())
  {
    return 29;
  }

  if (MGIsDeviceOfType())
  {
    return 30;
  }

  if (MGIsDeviceOfType())
  {
    return 31;
  }

  if (MGIsDeviceOfType())
  {
    return 32;
  }

  v6 = 28030256;
  *buf = xmmword_1003C01B0;
  if (MGIsDeviceOfType())
  {
    return 33;
  }

  v6 = 1214363620;
  *buf = xmmword_1003C01C4;
  if (MGIsDeviceOfType())
  {
    return 34;
  }

  v6 = -2101636455;
  *buf = xmmword_1003C01D8;
  if (MGIsDeviceOfType())
  {
    return 35;
  }

  v6 = -1955568593;
  *buf = xmmword_1003C01EC;
  if (MGIsDeviceOfType())
  {
    return 36;
  }

  v6 = 1602014129;
  *buf = xmmword_1003C0200;
  if (MGIsDeviceOfType())
  {
    return 37;
  }

  v6 = -810116762;
  *buf = xmmword_1003C0214;
  if (MGIsDeviceOfType())
  {
    return 38;
  }

  v6 = -1195351767;
  *buf = xmmword_1003C0228;
  if (MGIsDeviceOfType())
  {
    return 39;
  }

  if (MGIsDeviceOfType())
  {
    return 40;
  }

  if (MGIsDeviceOfType())
  {
    return 41;
  }

  v6 = 1789837692;
  *buf = xmmword_1003C023C;
  if (MGIsDeviceOfType())
  {
    return 43;
  }

  v6 = 48355600;
  *buf = xmmword_1003C0250;
  if (MGIsDeviceOfType())
  {
    return 44;
  }

  v6 = -1239654590;
  *buf = xmmword_1003C0264;
  if (MGIsDeviceOfType())
  {
    return 45;
  }

  v6 = -679691073;
  *buf = xmmword_1003C0278;
  if (MGIsDeviceOfType())
  {
    return 46;
  }

  v6 = -1579092758;
  *buf = xmmword_1003C028C;
  if (MGIsDeviceOfType())
  {
    return 47;
  }

  v6 = 1430379884;
  *buf = xmmword_1003C02A0;
  if (MGIsDeviceOfType())
  {
    return 48;
  }

  if (MGIsDeviceOfType())
  {
    return 51;
  }

  v6 = -798153473;
  *buf = xmmword_1003C02B4;
  if (MGIsDeviceOfType())
  {
    return 52;
  }

  v6 = -776721724;
  *buf = xmmword_1003C02C8;
  if (MGIsDeviceOfType())
  {
    return 53;
  }

  v6 = -1403227947;
  *buf = xmmword_1003C02DC;
  if (MGIsDeviceOfType())
  {
    return 54;
  }

  v6 = 729118884;
  *buf = xmmword_1003C02F0;
  if (MGIsDeviceOfType())
  {
    return 55;
  }

  v6 = 1046806126;
  *buf = xmmword_1003C0304;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 56;
  }

  v6 = -489993439;
  *buf = xmmword_1003C032C;
  if (MGIsDeviceOfType())
  {
    return 57;
  }

  v6 = 886875686;
  *buf = xmmword_1003C0340;
  if (MGIsDeviceOfType())
  {
    return 58;
  }

  v6 = -1639077591;
  *buf = xmmword_1003C0354;
  if (MGIsDeviceOfType())
  {
    return 59;
  }

  v6 = 338555555;
  *buf = xmmword_1003C0368;
  if (MGIsDeviceOneOfType())
  {
    return 60;
  }

  v6 = 1032708406;
  *buf = xmmword_1003C037C;
  if (MGIsDeviceOfType())
  {
    return 61;
  }

  v6 = 729903963;
  *buf = xmmword_1003C0390;
  if (MGIsDeviceOfType())
  {
    return 62;
  }

  v6 = 1278131292;
  *buf = xmmword_1003C03A4;
  if (MGIsDeviceOfType())
  {
    return 63;
  }

  v6 = -1841712216;
  *buf = xmmword_1003C03B8;
  if (MGIsDeviceOfType())
  {
    return 64;
  }

  v6 = 1275676051;
  *buf = xmmword_1003C03CC;
  if (MGIsDeviceOfType())
  {
    return 65;
  }

  v6 = 1908474541;
  *buf = xmmword_1003C03E0;
  if (MGIsDeviceOfType())
  {
    return 66;
  }

  v6 = -1022451852;
  *buf = xmmword_1003C03F4;
  if (MGIsDeviceOfType())
  {
    return 100;
  }

  v6 = 1729782187;
  *buf = xmmword_1003C0408;
  if (MGIsDeviceOfType())
  {
    return 101;
  }

  if (MGIsDeviceOfType())
  {
    return 67;
  }

  v6 = 368885834;
  *buf = xmmword_1003C041C;
  if (MGIsDeviceOfType())
  {
    return 68;
  }

  v6 = -414334491;
  *buf = xmmword_1003C0430;
  if (MGIsDeviceOfType())
  {
    return 69;
  }

  if (MGIsDeviceOfType())
  {
    return 70;
  }

  v6 = -526227167;
  *buf = xmmword_1003C0444;
  if (MGIsDeviceOfType())
  {
    return 71;
  }

  v6 = -1509831889;
  *buf = xmmword_1003C0458;
  if (MGIsDeviceOfType())
  {
    return 72;
  }

  v6 = 1960366092;
  *buf = xmmword_1003C046C;
  if (MGIsDeviceOfType())
  {
    return 73;
  }

  v6 = -2114570942;
  *buf = xmmword_1003C0480;
  if (MGIsDeviceOfType())
  {
    return 177;
  }

  v6 = -1527788847;
  *buf = xmmword_1003C0494;
  if (MGIsDeviceOfType())
  {
    return 74;
  }

  v6 = 1532898719;
  *buf = xmmword_1003C04A8;
  if (MGIsDeviceOfType())
  {
    return 75;
  }

  v6 = 996646949;
  *buf = xmmword_1003C04BC;
  if (MGIsDeviceOfType())
  {
    return 76;
  }

  v6 = -563086000;
  *buf = xmmword_1003C04D0;
  if (MGIsDeviceOfType())
  {
    return 77;
  }

  v6 = 659506830;
  *buf = xmmword_1003C04E4;
  if (MGIsDeviceOfType())
  {
    return 78;
  }

  v6 = 213746202;
  *buf = xmmword_1003C04F8;
  if (MGIsDeviceOfType())
  {
    return 79;
  }

  v6 = 289690957;
  *buf = xmmword_1003C050C;
  if (MGIsDeviceOfType())
  {
    return 80;
  }

  v6 = 586720268;
  *buf = xmmword_1003C0520;
  if (MGIsDeviceOfType())
  {
    return 81;
  }

  v6 = -350584140;
  *buf = xmmword_1003C0534;
  if (MGIsDeviceOfType())
  {
    return 84;
  }

  v6 = 368778837;
  *buf = xmmword_1003C0548;
  if (MGIsDeviceOfType())
  {
    return 85;
  }

  if (MGIsDeviceOfType())
  {
    return 86;
  }

  v6 = -609570151;
  *buf = xmmword_1003C055C;
  if (MGIsDeviceOfType())
  {
    return 87;
  }

  v6 = -874769875;
  *buf = xmmword_1003C0570;
  if (MGIsDeviceOfType())
  {
    return 88;
  }

  v6 = 1223847566;
  *buf = xmmword_1003C0584;
  if (MGIsDeviceOfType())
  {
    return 91;
  }

  v6 = 185580364;
  *buf = xmmword_1003C0598;
  if (MGIsDeviceOfType())
  {
    return 92;
  }

  v6 = -1418383976;
  *buf = xmmword_1003C05AC;
  if (MGIsDeviceOfType())
  {
    return 95;
  }

  v6 = -1213485500;
  *buf = xmmword_1003C05C0;
  if (MGIsDeviceOfType())
  {
    return 96;
  }

  if (MGIsDeviceOfType())
  {
    return 97;
  }

  v6 = 1425254930;
  *buf = xmmword_1003C05D4;
  if (MGIsDeviceOfType())
  {
    return 98;
  }

  v6 = 1899561076;
  *buf = xmmword_1003C05E8;
  if (MGIsDeviceOfType())
  {
    return 99;
  }

  v6 = -199226823;
  *buf = xmmword_1003C05FC;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 102;
  }

  v6 = -1283070668;
  *buf = xmmword_1003C0624;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 103;
  }

  v6 = 1711910369;
  *buf = xmmword_1003C064C;
  if (MGIsDeviceOfType())
  {
    return 104;
  }

  v6 = -1282800328;
  *buf = xmmword_1003C0660;
  if (MGIsDeviceOfType())
  {
    return 105;
  }

  v6 = 897736383;
  *buf = xmmword_1003C0674;
  if (MGIsDeviceOfType())
  {
    return 106;
  }

  v6 = -453987047;
  *buf = xmmword_1003C0688;
  if (MGIsDeviceOfType())
  {
    return 107;
  }

  v6 = 450980336;
  *buf = xmmword_1003C069C;
  if (MGIsDeviceOfType())
  {
    return 108;
  }

  v6 = 414393924;
  *buf = xmmword_1003C06B0;
  if (MGIsDeviceOfType())
  {
    return 109;
  }

  v6 = -996295886;
  *buf = xmmword_1003C06C4;
  if (MGIsDeviceOfType())
  {
    return 110;
  }

  v6 = -337121064;
  *buf = xmmword_1003C06D8;
  if (MGIsDeviceOfType())
  {
    return 111;
  }

  v6 = -2092955395;
  *buf = xmmword_1003C06EC;
  if (MGIsDeviceOfType())
  {
    return 112;
  }

  v6 = 674998600;
  *buf = xmmword_1003C0700;
  if (MGIsDeviceOfType())
  {
    return 113;
  }

  v6 = 317289457;
  *buf = xmmword_1003C0714;
  if (MGIsDeviceOfType())
  {
    return 114;
  }

  v6 = 401945557;
  *buf = xmmword_1003C0728;
  if (MGIsDeviceOfType())
  {
    return 115;
  }

  v6 = -232427879;
  *buf = xmmword_1003C073C;
  if (MGIsDeviceOfType())
  {
    return 116;
  }

  v6 = -427474227;
  *buf = xmmword_1003C0750;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 117;
  }

  v6 = -1843102369;
  *buf = xmmword_1003C0778;
  if (MGIsDeviceOfType())
  {
    return 118;
  }

  if (MGIsDeviceOfType())
  {
    return 119;
  }

  v6 = 470738981;
  *buf = xmmword_1003C078C;
  if (MGIsDeviceOfType())
  {
    return 120;
  }

  if (MGIsDeviceOfType())
  {
    return 121;
  }

  v6 = 710807826;
  *buf = xmmword_1003C07A0;
  if (MGIsDeviceOfType())
  {
    return 122;
  }

  if (MGIsDeviceOfType())
  {
    return 123;
  }

  v6 = 1860682089;
  *buf = xmmword_1003C07B4;
  if (MGIsDeviceOfType())
  {
    return 124;
  }

  if (MGIsDeviceOfType())
  {
    return 125;
  }

  v6 = -2085056298;
  *buf = xmmword_1003C07C8;
  if (MGIsDeviceOfType())
  {
    return 126;
  }

  v6 = 2146530832;
  *buf = xmmword_1003C07DC;
  if (MGIsDeviceOfType())
  {
    return 127;
  }

  v6 = -1742178852;
  *buf = xmmword_1003C07F0;
  if (MGIsDeviceOfType())
  {
    return 128;
  }

  v6 = 617174804;
  *buf = xmmword_1003C0804;
  if (MGIsDeviceOfType())
  {
    return 129;
  }

  v6 = 1330813729;
  *buf = xmmword_1003C0818;
  if (MGIsDeviceOfType())
  {
    return 130;
  }

  if (MGIsDeviceOfType())
  {
    return 131;
  }

  if (MGIsDeviceOfType())
  {
    return 132;
  }

  v6 = 152704997;
  *buf = xmmword_1003C082C;
  if (MGIsDeviceOfType())
  {
    return 133;
  }

  v6 = -338255497;
  *buf = xmmword_1003C0840;
  if (MGIsDeviceOfType())
  {
    return 134;
  }

  v6 = -1040127899;
  *buf = xmmword_1003C0854;
  if (MGIsDeviceOfType())
  {
    return 135;
  }

  v6 = 283967174;
  *buf = xmmword_1003C0868;
  if (MGIsDeviceOfType())
  {
    return 136;
  }

  v6 = 1530707451;
  *buf = xmmword_1003C087C;
  if (MGIsDeviceOfType())
  {
    return 137;
  }

  v6 = -871113647;
  *buf = xmmword_1003C0890;
  if (MGIsDeviceOfType())
  {
    return 138;
  }

  v6 = 483476120;
  *buf = xmmword_1003C08A4;
  if (MGIsDeviceOfType())
  {
    return 139;
  }

  v6 = 1472775220;
  *buf = xmmword_1003C08B8;
  if (MGIsDeviceOfType())
  {
    return 140;
  }

  v6 = 56502976;
  *buf = xmmword_1003C08CC;
  if (MGIsDeviceOfType())
  {
    return 141;
  }

  v6 = 282158961;
  *buf = xmmword_1003C08E0;
  if (MGIsDeviceOfType())
  {
    return 142;
  }

  v6 = 1282132887;
  *buf = xmmword_1003C08F4;
  if (MGIsDeviceOfType())
  {
    return 143;
  }

  v6 = -961843768;
  *buf = xmmword_1003C0908;
  if (MGIsDeviceOfType())
  {
    return 144;
  }

  v6 = 1326690998;
  *buf = xmmword_1003C091C;
  if (MGIsDeviceOfType())
  {
    return 145;
  }

  v6 = -441172408;
  *buf = xmmword_1003C0930;
  if (MGIsDeviceOfType())
  {
    return 146;
  }

  v6 = -126099363;
  *buf = xmmword_1003C0944;
  if (MGIsDeviceOfType())
  {
    return 147;
  }

  v6 = 1756484512;
  *buf = xmmword_1003C0958;
  if (MGIsDeviceOfType())
  {
    return 148;
  }

  v6 = 763775061;
  *buf = xmmword_1003C096C;
  if (MGIsDeviceOfType())
  {
    return 149;
  }

  v6 = -1092155788;
  *buf = xmmword_1003C0980;
  if (MGIsDeviceOfType())
  {
    return 150;
  }

  v6 = -557458837;
  *buf = xmmword_1003C0994;
  if (MGIsDeviceOfType())
  {
    return 151;
  }

  v6 = -63049871;
  *buf = xmmword_1003C09A8;
  if (MGIsDeviceOfType())
  {
    return 152;
  }

  v6 = 1730000236;
  *buf = xmmword_1003C09BC;
  if (MGIsDeviceOfType())
  {
    return 153;
  }

  v6 = 406601745;
  *buf = xmmword_1003C09D0;
  if (MGIsDeviceOfType())
  {
    return 154;
  }

  v6 = 1530338216;
  *buf = xmmword_1003C09E4;
  if (MGIsDeviceOfType())
  {
    return 155;
  }

  v6 = -1930811061;
  *buf = xmmword_1003C09F8;
  if (MGIsDeviceOfType())
  {
    return 156;
  }

  v6 = 1654218604;
  *buf = xmmword_1003C0A0C;
  if (MGIsDeviceOfType())
  {
    return 157;
  }

  v6 = -182498503;
  *buf = xmmword_1003C0A20;
  if (MGIsDeviceOfType())
  {
    return 158;
  }

  v6 = -2030489149;
  *buf = xmmword_1003C0A34;
  if (MGIsDeviceOfType())
  {
    return 159;
  }

  v6 = 841005628;
  *buf = xmmword_1003C0A48;
  if (MGIsDeviceOfType())
  {
    return 160;
  }

  v6 = 223445260;
  *buf = xmmword_1003C0A5C;
  if (MGIsDeviceOfType())
  {
    return 161;
  }

  v6 = 1219348060;
  *buf = xmmword_1003C0A70;
  if (MGIsDeviceOfType())
  {
    return 162;
  }

  v6 = 373548423;
  *buf = xmmword_1003C0A84;
  if (MGIsDeviceOfType())
  {
    return 243;
  }

  v6 = -1921398171;
  *buf = xmmword_1003C0A98;
  if (MGIsDeviceOfType())
  {
    return 244;
  }

  v6 = 2140507472;
  *buf = xmmword_1003C0AAC;
  if (MGIsDeviceOfType())
  {
    return 245;
  }

  v6 = -936391310;
  *buf = xmmword_1003C0AC0;
  if (MGIsDeviceOfType())
  {
    return 246;
  }

  v6 = -1384522500;
  *buf = xmmword_1003C0AD4;
  if (MGIsDeviceOfType())
  {
    return 247;
  }

  v6 = -782763850;
  *buf = xmmword_1003C0AE8;
  if (MGIsDeviceOfType())
  {
    return 248;
  }

  v6 = 1815762806;
  *buf = xmmword_1003C0AFC;
  if (MGIsDeviceOfType())
  {
    return 249;
  }

  v6 = -1897771119;
  *buf = xmmword_1003C0B10;
  if (MGIsDeviceOfType())
  {
    return 250;
  }

  v6 = -652049476;
  *buf = xmmword_1003C0B24;
  if (MGIsDeviceOfType())
  {
    return 251;
  }

  v6 = 2030516999;
  *buf = xmmword_1003C0B38;
  if (MGIsDeviceOneOfType())
  {
    return 163;
  }

  v6 = -762483149;
  *buf = xmmword_1003C0B60;
  if (MGIsDeviceOneOfType())
  {
    return 164;
  }

  v6 = -1902732724;
  *buf = xmmword_1003C0B88;
  if (MGIsDeviceOneOfType())
  {
    return 165;
  }

  v6 = 300442574;
  *buf = xmmword_1003C0BB0;
  if (MGIsDeviceOneOfType())
  {
    return 166;
  }

  if (MGIsDeviceOfType())
  {
    return 167;
  }

  v6 = -61007701;
  *buf = xmmword_1003C0BD8;
  if (MGIsDeviceOfType())
  {
    return 168;
  }

  if (MGIsDeviceOfType())
  {
    return 169;
  }

  v6 = -235416490;
  *buf = xmmword_1003C0BEC;
  if (MGIsDeviceOfType())
  {
    return 170;
  }

  v6 = -820493242;
  *buf = xmmword_1003C0C00;
  if (MGIsDeviceOfType())
  {
    return 172;
  }

  v6 = -1157300313;
  *buf = xmmword_1003C0C14;
  if (MGIsDeviceOfType())
  {
    return 173;
  }

  v6 = -2132668294;
  *buf = xmmword_1003C0C28;
  if (MGIsDeviceOfType())
  {
    return 174;
  }

  if (MGIsDeviceOfType())
  {
    return 175;
  }

  if (MGIsDeviceOfType())
  {
    return 176;
  }

  if (MGIsDeviceOfType())
  {
    return 178;
  }

  if (MGIsDeviceOfType())
  {
    return 179;
  }

  v6 = 1737149739;
  *buf = xmmword_1003C0C3C;
  if (MGIsDeviceOfType())
  {
    return 180;
  }

  v6 = 1577888303;
  *buf = xmmword_1003C0C50;
  if (MGIsDeviceOfType())
  {
    return 181;
  }

  v6 = -1918230744;
  *buf = xmmword_1003C0C64;
  if (MGIsDeviceOfType())
  {
    return 182;
  }

  v6 = 1126727276;
  *buf = xmmword_1003C0C78;
  if (MGIsDeviceOfType())
  {
    return 183;
  }

  v6 = 300130091;
  *buf = xmmword_1003C0C8C;
  if (MGIsDeviceOfType())
  {
    return 184;
  }

  v6 = 343814884;
  *buf = xmmword_1003C0CA0;
  if (MGIsDeviceOfType())
  {
    return 185;
  }

  v6 = -1675932945;
  *buf = xmmword_1003C0CB4;
  if (MGIsDeviceOfType())
  {
    return 186;
  }

  if (MGIsDeviceOfType())
  {
    return 188;
  }

  if (MGIsDeviceOfType())
  {
    return 189;
  }

  if (MGIsDeviceOfType())
  {
    return 191;
  }

  v6 = -1840391155;
  *buf = xmmword_1003C0CC8;
  if (MGIsDeviceOfType())
  {
    return 192;
  }

  v6 = -121925081;
  *buf = xmmword_1003C0CDC;
  if (MGIsDeviceOfType())
  {
    return 171;
  }

  v6 = 1071957977;
  *buf = xmmword_1003C0CF0;
  if (MGIsDeviceOfType())
  {
    return 193;
  }

  v6 = 438437663;
  *buf = xmmword_1003C0D04;
  if (MGIsDeviceOfType())
  {
    return 194;
  }

  v6 = 1575123478;
  *buf = xmmword_1003C0D18;
  if (MGIsDeviceOfType())
  {
    return 195;
  }

  v6 = -382792827;
  *buf = xmmword_1003C0D2C;
  if (MGIsDeviceOfType())
  {
    return 196;
  }

  v6 = 123138233;
  *buf = xmmword_1003C0D40;
  if (MGIsDeviceOfType())
  {
    return 197;
  }

  v6 = 681511593;
  *buf = xmmword_1003C0D54;
  if (MGIsDeviceOfType())
  {
    return 198;
  }

  if (MGIsDeviceOfType())
  {
    return 199;
  }

  v6 = 713503427;
  *buf = xmmword_1003C0D68;
  if (MGIsDeviceOfType())
  {
    return 200;
  }

  v6 = -1632750650;
  *buf = xmmword_1003C0D7C;
  if (MGIsDeviceOfType())
  {
    return 201;
  }

  v6 = -1820426635;
  *buf = xmmword_1003C0D90;
  if (MGIsDeviceOfType())
  {
    return 202;
  }

  v6 = -937652876;
  *buf = xmmword_1003C0DA4;
  if (MGIsDeviceOfType())
  {
    return 203;
  }

  v6 = 1874287171;
  *buf = xmmword_1003C0DB8;
  if (MGIsDeviceOfType())
  {
    return 89;
  }

  v6 = -781324731;
  *buf = xmmword_1003C0DCC;
  if (MGIsDeviceOfType())
  {
    return 90;
  }

  v6 = 1214880059;
  *buf = xmmword_1003C0DE0;
  if (MGIsDeviceOfType())
  {
    return 93;
  }

  v6 = 426359977;
  *buf = xmmword_1003C0DF4;
  if (MGIsDeviceOfType())
  {
    return 94;
  }

  v6 = 169342588;
  *buf = xmmword_1003C0E08;
  if (MGIsDeviceOfType())
  {
    return 237;
  }

  v6 = 1459208360;
  *buf = xmmword_1003C0E1C;
  if (MGIsDeviceOfType())
  {
    return 238;
  }

  v6 = -1354433901;
  *buf = xmmword_1003C0E30;
  if (MGIsDeviceOfType())
  {
    return 239;
  }

  v6 = 1021543808;
  *buf = xmmword_1003C0E44;
  if (MGIsDeviceOfType())
  {
    return 240;
  }

  v6 = -1379821877;
  *buf = xmmword_1003C0E58;
  if (MGIsDeviceOfType())
  {
    return 241;
  }

  if (MGIsDeviceOfType())
  {
    return 242;
  }

  if (MGIsDeviceOfType())
  {
    return 190;
  }

  if (MGIsDeviceOfType())
  {
    return 204;
  }

  v6 = 345196535;
  *buf = xmmword_1003C0E6C;
  if (MGIsDeviceOfType())
  {
    return 205;
  }

  v6 = 440949464;
  *buf = xmmword_1003C0E80;
  if (MGIsDeviceOfType())
  {
    return 206;
  }

  v6 = 688565114;
  *buf = xmmword_1003C0E94;
  if (MGIsDeviceOfType())
  {
    return 207;
  }

  v6 = -493418906;
  *buf = xmmword_1003C0EA8;
  if (MGIsDeviceOfType())
  {
    return 208;
  }

  if (MGIsDeviceOfType())
  {
    return 209;
  }

  v6 = -584398440;
  *buf = xmmword_1003C0EBC;
  if (MGIsDeviceOfType())
  {
    return 214;
  }

  v6 = -879476163;
  *buf = xmmword_1003C0ED0;
  if (MGIsDeviceOfType())
  {
    return 215;
  }

  v6 = -695298128;
  *buf = xmmword_1003C0EE4;
  if (MGIsDeviceOneOfType())
  {
    return 216;
  }

  v6 = 1614584579;
  *buf = xmmword_1003C0F0C;
  if (MGIsDeviceOneOfType())
  {
    return 217;
  }

  v6 = 460218192;
  *buf = xmmword_1003C0F34;
  if (MGIsDeviceOneOfType())
  {
    return 218;
  }

  v6 = 127894440;
  *buf = xmmword_1003C0F5C;
  if (MGIsDeviceOneOfType())
  {
    return 219;
  }

  v6 = 372777383;
  *buf = xmmword_1003C0F84;
  if (MGIsDeviceOfType())
  {
    return 220;
  }

  v6 = -858079590;
  *buf = xmmword_1003C0F98;
  if (MGIsDeviceOfType())
  {
    return 221;
  }

  v6 = -212523443;
  *buf = xmmword_1003C0FAC;
  if (MGIsDeviceOfType())
  {
    return 222;
  }

  v6 = 646100384;
  *buf = xmmword_1003C0FC0;
  if (MGIsDeviceOfType())
  {
    return 223;
  }

  v6 = -340360463;
  *buf = xmmword_1003C0FD4;
  if (MGIsDeviceOfType())
  {
    return 224;
  }

  v6 = 1605231531;
  *buf = xmmword_1003C0FE8;
  if (MGIsDeviceOfType())
  {
    return 225;
  }

  v6 = -545612308;
  *buf = xmmword_1003C0FFC;
  if (MGIsDeviceOfType())
  {
    return 226;
  }

  v6 = 1178062702;
  *buf = xmmword_1003C1010;
  if (MGIsDeviceOfType())
  {
    return 227;
  }

  v6 = -1431778695;
  *buf = xmmword_1003C1024;
  if (MGIsDeviceOfType())
  {
    return 228;
  }

  v6 = 533419158;
  *buf = xmmword_1003C1038;
  if (MGIsDeviceOfType())
  {
    return 229;
  }

  v6 = 1106979518;
  *buf = xmmword_1003C104C;
  if (MGIsDeviceOfType())
  {
    return 230;
  }

  v6 = 1878025452;
  *buf = xmmword_1003C1060;
  if (MGIsDeviceOfType())
  {
    return 231;
  }

  v6 = 1725957070;
  *buf = xmmword_1003C1074;
  if (MGIsDeviceOfType())
  {
    return 232;
  }

  v6 = 538967431;
  *buf = xmmword_1003C1088;
  if (MGIsDeviceOfType())
  {
    return 233;
  }

  v6 = 2060712151;
  *buf = xmmword_1003C109C;
  if (MGIsDeviceOfType())
  {
    return 234;
  }

  if (MGIsDeviceOfType())
  {
    return 171;
  }

  v6 = -1819593402;
  *buf = xmmword_1003C10B0;
  if (MGIsDeviceOneOfType())
  {
    return 1;
  }

  result = MGCopyAnswer();
  if (result)
  {
    v3 = result;
    v4 = sub_10034BF18();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "unknown HW model %{private}@", buf, 0xCu);
    }

    CFRelease(v3);
    return 0;
  }

  return result;
}

- (id)getSerialNumber
{
  if (qword_100458970 != -1)
  {
    sub_100350C68();
  }

  v3 = qword_100458968;

  return v3;
}

@end