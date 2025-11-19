@interface AWDMETRICSTunerStateDuration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRat:(id)a3;
- (int)StringAsScenarioDecision:(id)a3;
- (int)StringAsTxBand:(id)a3;
- (int)rat;
- (int)scenarioDecision;
- (int)txBand;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFtQualInd:(BOOL)a3;
- (void)setHasPort:(BOOL)a3;
- (void)setHasRat:(BOOL)a3;
- (void)setHasScenarioDecision:(BOOL)a3;
- (void)setHasTxBand:(BOOL)a3;
- (void)setHasWorkMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSTunerStateDuration

- (int)rat
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_MODE_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE_V2"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_HDR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_EHRPD"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GW"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WLAN"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GWL"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_UMTS"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA_HDR"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_SUSPENDED"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)txBand
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_txBand;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTxBand:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsTxBand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_BAND_BC0"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC1"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC3"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC4"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC5"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC6"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC7"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC8"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC9"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC10"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC11"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC12"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC13"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC14"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC15"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC16"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC17"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC18"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_BC19"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_450"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_480"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_750"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_850"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_EGSM_900"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_PGSM_900"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_RGSM_900"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_DCS_1800"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_PCS_1900"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_I_IMT_2000"])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_II_PCS_1900"])
  {
    v4 = 81;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_III_1700"])
  {
    v4 = 82;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_IV_1700"])
  {
    v4 = 83;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_V_850"])
  {
    v4 = 84;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VI_800"])
  {
    v4 = 85;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VII_2600"])
  {
    v4 = 86;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VIII_900"])
  {
    v4 = 87;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_IX_1700"])
  {
    v4 = 88;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XI_1500"])
  {
    v4 = 90;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XIX_850"])
  {
    v4 = 91;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND1"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND2"])
  {
    v4 = 121;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND3"])
  {
    v4 = 122;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND4"])
  {
    v4 = 123;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND5"])
  {
    v4 = 124;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND6"])
  {
    v4 = 125;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND7"])
  {
    v4 = 126;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND8"])
  {
    v4 = 127;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND9"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND10"])
  {
    v4 = 129;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND11"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND12"])
  {
    v4 = 131;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND13"])
  {
    v4 = 132;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND14"])
  {
    v4 = 133;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND17"])
  {
    v4 = 136;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND18"])
  {
    v4 = 137;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND19"])
  {
    v4 = 138;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND20"])
  {
    v4 = 139;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND21"])
  {
    v4 = 140;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND24"])
  {
    v4 = 143;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND25"])
  {
    v4 = 144;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND26"])
  {
    v4 = 145;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND27"])
  {
    v4 = 146;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND28"])
  {
    v4 = 147;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND29"])
  {
    v4 = 148;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND30"])
  {
    v4 = 149;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND31"])
  {
    v4 = 150;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND32"])
  {
    v4 = 151;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND33"])
  {
    v4 = 152;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND34"])
  {
    v4 = 153;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND35"])
  {
    v4 = 154;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND36"])
  {
    v4 = 155;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND37"])
  {
    v4 = 156;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND38"])
  {
    v4 = 157;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND39"])
  {
    v4 = 158;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND40"])
  {
    v4 = 159;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND41"])
  {
    v4 = 160;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND42"])
  {
    v4 = 161;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND43"])
  {
    v4 = 162;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND125"])
  {
    v4 = 163;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND126"])
  {
    v4 = 164;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND127"])
  {
    v4 = 165;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND252"])
  {
    v4 = 166;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND255"])
  {
    v4 = 167;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND66"])
  {
    v4 = 168;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND250"])
  {
    v4 = 169;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND1"])
  {
    v4 = 170;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND2"])
  {
    v4 = 171;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND3"])
  {
    v4 = 172;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND4"])
  {
    v4 = 173;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND5"])
  {
    v4 = 174;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_UMTS_BAND6"])
  {
    v4 = 175;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND46"])
  {
    v4 = 176;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND47"])
  {
    v4 = 177;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND48"])
  {
    v4 = 178;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND71"])
  {
    v4 = 179;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND67"])
  {
    v4 = 180;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND68"])
  {
    v4 = 181;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND1"])
  {
    v4 = 182;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND2"])
  {
    v4 = 183;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND3"])
  {
    v4 = 184;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND5"])
  {
    v4 = 185;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND7"])
  {
    v4 = 186;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND8"])
  {
    v4 = 187;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND20"])
  {
    v4 = 188;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND28"])
  {
    v4 = 189;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND38"])
  {
    v4 = 190;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND41"])
  {
    v4 = 191;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND50"])
  {
    v4 = 192;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND51"])
  {
    v4 = 193;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND66"])
  {
    v4 = 194;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND70"])
  {
    v4 = 195;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND71"])
  {
    v4 = 196;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND74"])
  {
    v4 = 197;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND75"])
  {
    v4 = 198;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND76"])
  {
    v4 = 199;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND77"])
  {
    v4 = 200;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND78"])
  {
    v4 = 201;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND79"])
  {
    v4 = 202;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND80"])
  {
    v4 = 203;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND81"])
  {
    v4 = 204;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND82"])
  {
    v4 = 205;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND83"])
  {
    v4 = 206;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND84"])
  {
    v4 = 207;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND85"])
  {
    v4 = 208;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND257"])
  {
    v4 = 209;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND258"])
  {
    v4 = 210;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND259"])
  {
    v4 = 211;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND260"])
  {
    v4 = 212;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND261"])
  {
    v4 = 213;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND49"])
  {
    v4 = 214;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND12"])
  {
    v4 = 215;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND25"])
  {
    v4 = 216;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND34"])
  {
    v4 = 217;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND39"])
  {
    v4 = 218;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND40"])
  {
    v4 = 219;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND65"])
  {
    v4 = 220;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND86"])
  {
    v4 = 221;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND48"])
  {
    v4 = 222;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND14"])
  {
    v4 = 223;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND13"])
  {
    v4 = 224;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND18"])
  {
    v4 = 225;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND26"])
  {
    v4 = 226;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND30"])
  {
    v4 = 227;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND29"])
  {
    v4 = 228;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND53"])
  {
    v4 = 229;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND53"])
  {
    v4 = 230;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_RESERVED_1"])
  {
    v4 = 231;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND46"])
  {
    v4 = 232;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND91"])
  {
    v4 = 233;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND92"])
  {
    v4 = 234;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND93"])
  {
    v4 = 235;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND94"])
  {
    v4 = 236;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPort:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)scenarioDecision
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_scenarioDecision;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScenarioDecision:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsScenarioDecision:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FREE_SPACE_SCENARIO"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LATG_UATF_SCENARIO"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LATA_UATF_SCENARIO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LATGA_UATF_SCENARIO"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LATF_UATH_SCENARIO"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LATG_UATH_SCENARIO"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"LATA_UATH_SCENARIO"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LATGA_UATH_SCENARIO"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RHH_SCENARIO"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"LHH_SCENARIO"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"UHH_SCENARIO"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"E_SCENARIO"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"R_SCENARIO"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"IDLE_MODE_SCENARIO"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasWorkMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasFtQualInd:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSTunerStateDuration;
  v4 = [(AWDMETRICSTunerStateDuration *)&v8 description];
  v5 = [(AWDMETRICSTunerStateDuration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    rat = self->_rat;
    if (rat < 0x11 && ((0x19FFFu >> rat) & 1) != 0)
    {
      v6 = off_2782592D8[rat];
    }

    else
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rat];
    }

    [v3 setObject:v6 forKey:@"rat"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v7 = @"SYS_BAND_BC0";
    switch(self->_txBand)
    {
      case 0:
        break;
      case 1:
        v7 = @"SYS_BAND_BC1";
        break;
      case 3:
        v7 = @"SYS_BAND_BC3";
        break;
      case 4:
        v7 = @"SYS_BAND_BC4";
        break;
      case 5:
        v7 = @"SYS_BAND_BC5";
        break;
      case 6:
        v7 = @"SYS_BAND_BC6";
        break;
      case 7:
        v7 = @"SYS_BAND_BC7";
        break;
      case 8:
        v7 = @"SYS_BAND_BC8";
        break;
      case 9:
        v7 = @"SYS_BAND_BC9";
        break;
      case 0xA:
        v7 = @"SYS_BAND_BC10";
        break;
      case 0xB:
        v7 = @"SYS_BAND_BC11";
        break;
      case 0xC:
        v7 = @"SYS_BAND_BC12";
        break;
      case 0xD:
        v7 = @"SYS_BAND_BC13";
        break;
      case 0xE:
        v7 = @"SYS_BAND_BC14";
        break;
      case 0xF:
        v7 = @"SYS_BAND_BC15";
        break;
      case 0x10:
        v7 = @"SYS_BAND_BC16";
        break;
      case 0x11:
        v7 = @"SYS_BAND_BC17";
        break;
      case 0x12:
        v7 = @"SYS_BAND_BC18";
        break;
      case 0x13:
        v7 = @"SYS_BAND_BC19";
        break;
      case 0x28:
        v7 = @"SYS_BAND_GSM_450";
        break;
      case 0x29:
        v7 = @"SYS_BAND_GSM_480";
        break;
      case 0x2A:
        v7 = @"SYS_BAND_GSM_750";
        break;
      case 0x2B:
        v7 = @"SYS_BAND_GSM_850";
        break;
      case 0x2C:
        v7 = @"SYS_BAND_GSM_EGSM_900";
        break;
      case 0x2D:
        v7 = @"SYS_BAND_GSM_PGSM_900";
        break;
      case 0x2E:
        v7 = @"SYS_BAND_GSM_RGSM_900";
        break;
      case 0x2F:
        v7 = @"SYS_BAND_GSM_DCS_1800";
        break;
      case 0x30:
        v7 = @"SYS_BAND_GSM_PCS_1900";
        break;
      case 0x50:
        v7 = @"SYS_BAND_WCDMA_I_IMT_2000";
        break;
      case 0x51:
        v7 = @"SYS_BAND_WCDMA_II_PCS_1900";
        break;
      case 0x52:
        v7 = @"SYS_BAND_WCDMA_III_1700";
        break;
      case 0x53:
        v7 = @"SYS_BAND_WCDMA_IV_1700";
        break;
      case 0x54:
        v7 = @"SYS_BAND_WCDMA_V_850";
        break;
      case 0x55:
        v7 = @"SYS_BAND_WCDMA_VI_800";
        break;
      case 0x56:
        v7 = @"SYS_BAND_WCDMA_VII_2600";
        break;
      case 0x57:
        v7 = @"SYS_BAND_WCDMA_VIII_900";
        break;
      case 0x58:
        v7 = @"SYS_BAND_WCDMA_IX_1700";
        break;
      case 0x5A:
        v7 = @"SYS_BAND_WCDMA_XI_1500";
        break;
      case 0x5B:
        v7 = @"SYS_BAND_WCDMA_XIX_850";
        break;
      case 0x78:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND1";
        break;
      case 0x79:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND2";
        break;
      case 0x7A:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND3";
        break;
      case 0x7B:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND4";
        break;
      case 0x7C:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND5";
        break;
      case 0x7D:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND6";
        break;
      case 0x7E:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND7";
        break;
      case 0x7F:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND8";
        break;
      case 0x80:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND9";
        break;
      case 0x81:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND10";
        break;
      case 0x82:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND11";
        break;
      case 0x83:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND12";
        break;
      case 0x84:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND13";
        break;
      case 0x85:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND14";
        break;
      case 0x88:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND17";
        break;
      case 0x89:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND18";
        break;
      case 0x8A:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND19";
        break;
      case 0x8B:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND20";
        break;
      case 0x8C:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND21";
        break;
      case 0x8F:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND24";
        break;
      case 0x90:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND25";
        break;
      case 0x91:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND26";
        break;
      case 0x92:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND27";
        break;
      case 0x93:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND28";
        break;
      case 0x94:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND29";
        break;
      case 0x95:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND30";
        break;
      case 0x96:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND31";
        break;
      case 0x97:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND32";
        break;
      case 0x98:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND33";
        break;
      case 0x99:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND34";
        break;
      case 0x9A:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND35";
        break;
      case 0x9B:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND36";
        break;
      case 0x9C:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND37";
        break;
      case 0x9D:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND38";
        break;
      case 0x9E:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND39";
        break;
      case 0x9F:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND40";
        break;
      case 0xA0:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND41";
        break;
      case 0xA1:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND42";
        break;
      case 0xA2:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND43";
        break;
      case 0xA3:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND125";
        break;
      case 0xA4:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND126";
        break;
      case 0xA5:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND127";
        break;
      case 0xA6:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND252";
        break;
      case 0xA7:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND255";
        break;
      case 0xA8:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND66";
        break;
      case 0xA9:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND250";
        break;
      case 0xAA:
        v7 = @"SYS_BAND_UMTS_BAND1";
        break;
      case 0xAB:
        v7 = @"SYS_BAND_UMTS_BAND2";
        break;
      case 0xAC:
        v7 = @"SYS_BAND_UMTS_BAND3";
        break;
      case 0xAD:
        v7 = @"SYS_BAND_UMTS_BAND4";
        break;
      case 0xAE:
        v7 = @"SYS_BAND_UMTS_BAND5";
        break;
      case 0xAF:
        v7 = @"SYS_BAND_UMTS_BAND6";
        break;
      case 0xB0:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND46";
        break;
      case 0xB1:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND47";
        break;
      case 0xB2:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND48";
        break;
      case 0xB3:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND71";
        break;
      case 0xB4:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND67";
        break;
      case 0xB5:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND68";
        break;
      case 0xB6:
        v7 = @"SYS_BAND_NR5G_BAND1";
        break;
      case 0xB7:
        v7 = @"SYS_BAND_NR5G_BAND2";
        break;
      case 0xB8:
        v7 = @"SYS_BAND_NR5G_BAND3";
        break;
      case 0xB9:
        v7 = @"SYS_BAND_NR5G_BAND5";
        break;
      case 0xBA:
        v7 = @"SYS_BAND_NR5G_BAND7";
        break;
      case 0xBB:
        v7 = @"SYS_BAND_NR5G_BAND8";
        break;
      case 0xBC:
        v7 = @"SYS_BAND_NR5G_BAND20";
        break;
      case 0xBD:
        v7 = @"SYS_BAND_NR5G_BAND28";
        break;
      case 0xBE:
        v7 = @"SYS_BAND_NR5G_BAND38";
        break;
      case 0xBF:
        v7 = @"SYS_BAND_NR5G_BAND41";
        break;
      case 0xC0:
        v7 = @"SYS_BAND_NR5G_BAND50";
        break;
      case 0xC1:
        v7 = @"SYS_BAND_NR5G_BAND51";
        break;
      case 0xC2:
        v7 = @"SYS_BAND_NR5G_BAND66";
        break;
      case 0xC3:
        v7 = @"SYS_BAND_NR5G_BAND70";
        break;
      case 0xC4:
        v7 = @"SYS_BAND_NR5G_BAND71";
        break;
      case 0xC5:
        v7 = @"SYS_BAND_NR5G_BAND74";
        break;
      case 0xC6:
        v7 = @"SYS_BAND_NR5G_BAND75";
        break;
      case 0xC7:
        v7 = @"SYS_BAND_NR5G_BAND76";
        break;
      case 0xC8:
        v7 = @"SYS_BAND_NR5G_BAND77";
        break;
      case 0xC9:
        v7 = @"SYS_BAND_NR5G_BAND78";
        break;
      case 0xCA:
        v7 = @"SYS_BAND_NR5G_BAND79";
        break;
      case 0xCB:
        v7 = @"SYS_BAND_NR5G_BAND80";
        break;
      case 0xCC:
        v7 = @"SYS_BAND_NR5G_BAND81";
        break;
      case 0xCD:
        v7 = @"SYS_BAND_NR5G_BAND82";
        break;
      case 0xCE:
        v7 = @"SYS_BAND_NR5G_BAND83";
        break;
      case 0xCF:
        v7 = @"SYS_BAND_NR5G_BAND84";
        break;
      case 0xD0:
        v7 = @"SYS_BAND_NR5G_BAND85";
        break;
      case 0xD1:
        v7 = @"SYS_BAND_NR5G_BAND257";
        break;
      case 0xD2:
        v7 = @"SYS_BAND_NR5G_BAND258";
        break;
      case 0xD3:
        v7 = @"SYS_BAND_NR5G_BAND259";
        break;
      case 0xD4:
        v7 = @"SYS_BAND_NR5G_BAND260";
        break;
      case 0xD5:
        v7 = @"SYS_BAND_NR5G_BAND261";
        break;
      case 0xD6:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND49";
        break;
      case 0xD7:
        v7 = @"SYS_BAND_NR5G_BAND12";
        break;
      case 0xD8:
        v7 = @"SYS_BAND_NR5G_BAND25";
        break;
      case 0xD9:
        v7 = @"SYS_BAND_NR5G_BAND34";
        break;
      case 0xDA:
        v7 = @"SYS_BAND_NR5G_BAND39";
        break;
      case 0xDB:
        v7 = @"SYS_BAND_NR5G_BAND40";
        break;
      case 0xDC:
        v7 = @"SYS_BAND_NR5G_BAND65";
        break;
      case 0xDD:
        v7 = @"SYS_BAND_NR5G_BAND86";
        break;
      case 0xDE:
        v7 = @"SYS_BAND_NR5G_BAND48";
        break;
      case 0xDF:
        v7 = @"SYS_BAND_NR5G_BAND14";
        break;
      case 0xE0:
        v7 = @"SYS_BAND_NR5G_BAND13";
        break;
      case 0xE1:
        v7 = @"SYS_BAND_NR5G_BAND18";
        break;
      case 0xE2:
        v7 = @"SYS_BAND_NR5G_BAND26";
        break;
      case 0xE3:
        v7 = @"SYS_BAND_NR5G_BAND30";
        break;
      case 0xE4:
        v7 = @"SYS_BAND_NR5G_BAND29";
        break;
      case 0xE5:
        v7 = @"SYS_BAND_LTE_EUTRAN_BAND53";
        break;
      case 0xE6:
        v7 = @"SYS_BAND_NR5G_BAND53";
        break;
      case 0xE7:
        v7 = @"SYS_BAND_RESERVED_1";
        break;
      case 0xE8:
        v7 = @"SYS_BAND_NR5G_BAND46";
        break;
      case 0xE9:
        v7 = @"SYS_BAND_NR5G_BAND91";
        break;
      case 0xEA:
        v7 = @"SYS_BAND_NR5G_BAND92";
        break;
      case 0xEB:
        v7 = @"SYS_BAND_NR5G_BAND93";
        break;
      case 0xEC:
        v7 = @"SYS_BAND_NR5G_BAND94";
        break;
      default:
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_txBand];
        break;
    }

    [v3 setObject:v7 forKey:@"tx_band"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_port];
    [v3 setObject:v10 forKey:@"port"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_164:
      if ((has & 1) == 0)
      {
        goto LABEL_165;
      }

      goto LABEL_176;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_164;
  }

  scenarioDecision = self->_scenarioDecision;
  if (scenarioDecision >= 0xE)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scenarioDecision];
  }

  else
  {
    v12 = off_278259360[scenarioDecision];
  }

  [v3 setObject:v12 forKey:@"scenario_decision"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_165:
    if ((has & 0x40) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_177;
  }

LABEL_176:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
  [v3 setObject:v13 forKey:@"duration"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_166:
    if ((has & 2) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_167;
  }

LABEL_177:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_workMode];
  [v3 setObject:v14 forKey:@"work_mode"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_167:
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ftQualInd];
    [v3 setObject:v8 forKey:@"ft_qual_ind"];
  }

LABEL_168:

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    rat = self->_rat;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  txBand = self->_txBand;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  port = self->_port;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  scenarioDecision = self->_scenarioDecision;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  workMode = self->_workMode;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    ftQualInd = self->_ftQualInd;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[5] = self->_rat;
    *(v4 + 36) |= 8u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v4[7] = self->_txBand;
  *(v4 + 36) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[4] = self->_port;
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4[6] = self->_scenarioDecision;
  *(v4 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[2] = self->_duration;
  *(v4 + 36) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v4[8] = self->_workMode;
  *(v4 + 36) |= 0x40u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v4[3] = self->_ftQualInd;
    *(v4 + 36) |= 2u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 5) = self->_rat;
    *(result + 36) |= 8u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_txBand;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 4) = self->_port;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 6) = self->_scenarioDecision;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 2) = self->_duration;
  *(result + 36) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 8) = self->_workMode;
  *(result + 36) |= 0x40u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 3) = self->_ftQualInd;
  *(result + 36) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_rat != *(v4 + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 36) & 0x20) == 0 || self->_txBand != *(v4 + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_port != *(v4 + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0 || self->_scenarioDecision != *(v4 + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_duration != *(v4 + 2))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 36) & 0x40) == 0 || self->_workMode != *(v4 + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x40) != 0)
  {
    goto LABEL_36;
  }

  v5 = (*(v4 + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_ftQualInd != *(v4 + 3))
    {
      goto LABEL_36;
    }

    v5 = 1;
  }

LABEL_37:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v2 = 2654435761 * self->_rat;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_txBand;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_port;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_scenarioDecision;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if (*&self->_has)
  {
LABEL_6:
    v6 = 2654435761 * self->_duration;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_workMode;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_ftQualInd;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 8) != 0)
  {
    self->_rat = *(v4 + 5);
    *&self->_has |= 8u;
    v5 = *(v4 + 36);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 36) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_txBand = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_port = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_scenarioDecision = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 36);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_duration = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_workMode = *(v4 + 8);
  *&self->_has |= 0x40u;
  if ((*(v4 + 36) & 2) != 0)
  {
LABEL_8:
    self->_ftQualInd = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_9:
}

@end