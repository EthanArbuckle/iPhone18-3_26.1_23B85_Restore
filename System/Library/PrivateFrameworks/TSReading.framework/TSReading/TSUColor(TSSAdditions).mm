@interface TSUColor(TSSAdditions)
+ (uint64_t)bootstrapPresetsOfKind:()TSSAdditions inTheme:alternate:;
+ (uint64_t)p_defaultPresetColors:()TSSAdditions;
@end

@implementation TSUColor(TSSAdditions)

+ (uint64_t)p_defaultPresetColors:()TSSAdditions
{
  v6[30] = *MEMORY[0x277D85DE8];
  if (a3 > 6)
  {
    return 0;
  }

  if (((1 << a3) & 0x2B) != 0)
  {
    v6[0] = [MEMORY[0x277D6C2A8] clearColor];
    v6[1] = [MEMORY[0x277D6C2A8] colorWithRed:0.324999988 green:0.344999999 blue:0.372999996 alpha:1.0];
    v6[2] = [MEMORY[0x277D6C2A8] blackColor];
    v6[3] = [MEMORY[0x277D6C2A8] colorWithRed:? green:? blue:? alpha:?];
    v6[4] = [MEMORY[0x277D6C2A8] whiteColor];
    v6[5] = [MEMORY[0x277D6C2A8] colorWithRed:0.866999984 green:? blue:? alpha:?];
    v6[6] = [MEMORY[0x277D6C2A8] colorWithRed:0.0270000007 green:0.136999995 blue:0.317999989 alpha:1.0];
    v6[7] = [MEMORY[0x277D6C2A8] colorWithRed:0.118000001 green:0.0780000016 blue:0.234999999 alpha:1.0];
    v6[8] = [MEMORY[0x277D6C2A8] colorWithRed:0.0590000004 green:0.216000006 blue:0.474999994 alpha:1.0];
    v6[9] = [MEMORY[0x277D6C2A8] colorWithRed:0.195999995 green:0.152999997 blue:0.442999989 alpha:1.0];
    v6[10] = [MEMORY[0x277D6C2A8] colorWithRed:0.133000001 green:0.388000011 blue:0.753000021 alpha:1.0];
    v6[11] = [MEMORY[0x277D6C2A8] colorWithRed:0.352999985 green:0.250999987 blue:0.753000021 alpha:1.0];
    v6[12] = [MEMORY[0x277D6C2A8] colorWithRed:0.219999999 green:0.583999991 blue:0.984000027 alpha:1.0];
    v6[13] = [MEMORY[0x277D6C2A8] colorWithRed:0.545000017 green:0.49000001 blue:0.936999977 alpha:1.0];
    v6[14] = [MEMORY[0x277D6C2A8] colorWithRed:0.0939999968 green:0.259000003 blue:0.0270000007 alpha:1.0];
    v6[15] = [MEMORY[0x277D6C2A8] colorWithRed:0.0120000001 green:0.192000002 blue:0.200000003 alpha:1.0];
    v6[16] = [MEMORY[0x277D6C2A8] colorWithRed:0.152999997 green:0.372999996 blue:0.050999999 alpha:1.0];
    v6[17] = [MEMORY[0x277D6C2A8] colorWithRed:0.0670000017 green:0.36500001 blue:0.372999996 alpha:1.0];
    v6[18] = [MEMORY[0x277D6C2A8] colorWithRed:0.165000007 green:0.620000005 blue:0.114 alpha:1.0];
    v6[19] = [MEMORY[0x277D6C2A8] colorWithRed:0.0939999968 green:0.654999971 blue:0.675000012 alpha:1.0];
    v6[20] = [MEMORY[0x277D6C2A8] colorWithRed:0.481999993 green:0.870999992 blue:0.246999994 alpha:1.0];
    v6[21] = [MEMORY[0x277D6C2A8] colorWithRed:0.250999987 green:0.862999976 blue:0.885999978 alpha:1.0];
    v6[22] = [MEMORY[0x277D6C2A8] colorWithRed:0.200000003 green:0.00400000019 blue:0.0120000001 alpha:1.0];
    v6[23] = [MEMORY[0x277D6C2A8] colorWithRed:0.372999996 green:0.216000006 blue:0.0309999995 alpha:1.0];
    v6[24] = [MEMORY[0x277D6C2A8] colorWithRed:0.435000002 green:0.0160000008 blue:0.0350000001 alpha:1.0];
    v6[25] = [MEMORY[0x277D6C2A8] colorWithRed:0.522000015 green:0.328999996 blue:0.0670000017 alpha:1.0];
    v6[26] = [MEMORY[0x277D6C2A8] colorWithRed:0.573000014 green:0.0549999997 blue:0.105999999 alpha:1.0];
    v6[27] = [MEMORY[0x277D6C2A8] colorWithRed:0.725000024 green:0.501999974 blue:0.172999993 alpha:1.0];
    v6[28] = [MEMORY[0x277D6C2A8] colorWithRed:0.808000028 green:0.333000004 blue:0.337000012 alpha:1.0];
    v6[29] = [MEMORY[0x277D6C2A8] colorWithRed:0.893999994 green:0.643000007 blue:0.224000007 alpha:1.0];
    v3 = v6;
  }

  else
  {
    v5[0] = [MEMORY[0x277D6C2A8] clearColor];
    v5[1] = [MEMORY[0x277D6C2A8] colorWithWhite:0.188999996 alpha:1.0];
    v5[2] = [MEMORY[0x277D6C2A8] blackColor];
    v5[3] = [MEMORY[0x277D6C2A8] colorWithWhite:0.453999996 alpha:1.0];
    v5[4] = [MEMORY[0x277D6C2A8] whiteColor];
    v5[5] = [MEMORY[0x277D6C2A8] colorWithWhite:0.754999995 alpha:1.0];
    v5[6] = [MEMORY[0x277D6C2A8] colorWithRed:0.298999995 green:0.244000003 blue:0.342999995 alpha:1.0];
    v5[7] = [MEMORY[0x277D6C2A8] colorWithRed:0.104999997 green:0.189999998 blue:0.272000015 alpha:1.0];
    v5[8] = [MEMORY[0x277D6C2A8] colorWithRed:0.463 green:0.36500001 blue:0.509000003 alpha:1.0];
    v5[9] = [MEMORY[0x277D6C2A8] colorWithRed:0.30399999 green:0.404000014 blue:0.552999973 alpha:1.0];
    v5[10] = [MEMORY[0x277D6C2A8] colorWithRed:0.619000018 green:0.533999979 blue:0.658999979 alpha:1.0];
    v5[11] = [MEMORY[0x277D6C2A8] colorWithRed:0.470999986 green:0.615999997 blue:0.736000001 alpha:1.0];
    v5[12] = [MEMORY[0x277D6C2A8] colorWithRed:0.762000024 green:0.736999989 blue:0.781000018 alpha:1.0];
    v5[13] = [MEMORY[0x277D6C2A8] colorWithRed:0.694000006 green:0.811999977 blue:0.874000013 alpha:1.0];
    v5[14] = [MEMORY[0x277D6C2A8] colorWithRed:0.153999999 green:0.219999999 blue:0.118000001 alpha:1.0];
    v5[15] = [MEMORY[0x277D6C2A8] colorWithRed:0.213 green:0.0869999975 blue:0.0160000008 alpha:1.0];
    v5[16] = [MEMORY[0x277D6C2A8] colorWithRed:0.349000007 green:0.44600001 blue:0.282000005 alpha:1.0];
    v5[17] = [MEMORY[0x277D6C2A8] colorWithRed:0.393000007 green:0.340000004 blue:0.268000007 alpha:1.0];
    v5[18] = [MEMORY[0x277D6C2A8] colorWithRed:0.460000008 green:0.611000001 blue:0.363000005 alpha:1.0];
    v5[19] = [MEMORY[0x277D6C2A8] colorWithRed:0.619000018 green:0.521000028 blue:0.397000015 alpha:1.0];
    v5[20] = [MEMORY[0x277D6C2A8] colorWithRed:0.702000022 green:0.745000005 blue:0.587000012 alpha:1.0];
    v5[21] = [MEMORY[0x277D6C2A8] colorWithRed:0.771000028 green:0.648999989 blue:0.493999988 alpha:1.0];
    v5[22] = [MEMORY[0x277D6C2A8] colorWithRed:0.365999997 green:0.0500000007 blue:0.0179999992 alpha:1.0];
    v5[23] = [MEMORY[0x277D6C2A8] colorWithRed:0.460000008 green:0.305999994 blue:0.155000001 alpha:1.0];
    v5[24] = [MEMORY[0x277D6C2A8] colorWithRed:0.574999988 green:0.229000002 blue:0.164000005 alpha:1.0];
    v5[25] = [MEMORY[0x277D6C2A8] colorWithRed:0.713999987 green:0.460000008 blue:0.247999996 alpha:1.0];
    v5[26] = [MEMORY[0x277D6C2A8] colorWithRed:0.801999986 green:0.367000014 blue:0.31400001 alpha:1.0];
    v5[27] = [MEMORY[0x277D6C2A8] colorWithRed:0.873000026 green:0.648999989 blue:0.34799999 alpha:1.0];
    v5[28] = [MEMORY[0x277D6C2A8] colorWithRed:0.848999977 green:0.603999972 blue:0.560000002 alpha:1.0];
    v5[29] = [MEMORY[0x277D6C2A8] colorWithRed:0.949999988 green:0.785000026 blue:0.5 alpha:1.0];
    v3 = v5;
  }

  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:30];
}

+ (uint64_t)bootstrapPresetsOfKind:()TSSAdditions inTheme:alternate:
{
  v7 = [self p_defaultPresetColors:a5];

  return [a4 setPresets:v7 ofKind:a3];
}

@end