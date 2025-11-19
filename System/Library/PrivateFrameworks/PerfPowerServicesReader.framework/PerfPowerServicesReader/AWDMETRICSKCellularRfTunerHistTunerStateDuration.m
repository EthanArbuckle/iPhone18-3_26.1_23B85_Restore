@interface AWDMETRICSKCellularRfTunerHistTunerStateDuration
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

@implementation AWDMETRICSKCellularRfTunerHistTunerStateDuration

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

  else if ([v3 isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_NR"])
  {
    v4 = 12;
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
  if ([v3 isEqualToString:@"SYS_BAND_GSM_900"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_PGSM_900"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_EGSM_900"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_RGSM_900"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_DCS_1800"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_PCS_1900"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_850"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_450"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_480"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_750"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_380"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_410"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_BAND_GSM_900"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_710"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_810"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_GSM_INVALID"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_INVALID"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_I_IMT_2000"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_II_PCS_1900"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_III_1700"])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_IV_1700"])
  {
    v4 = 104;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_V_850"])
  {
    v4 = 105;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VI_800"])
  {
    v4 = 106;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VII_2600"])
  {
    v4 = 107;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_VIII_900"])
  {
    v4 = 108;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_IX_1700"])
  {
    v4 = 109;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_X"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XI_1500"])
  {
    v4 = 111;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XII"])
  {
    v4 = 112;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XIII"])
  {
    v4 = 113;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XIV"])
  {
    v4 = 114;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XV"])
  {
    v4 = 115;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XVI"])
  {
    v4 = 116;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XVII"])
  {
    v4 = 117;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XVIII"])
  {
    v4 = 118;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XIX_850"])
  {
    v4 = 119;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XX"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XXI"])
  {
    v4 = 121;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XXII"])
  {
    v4 = 122;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_WCDMA_XXV"])
  {
    v4 = 125;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_INVALID"])
  {
    v4 = 400;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND1"])
  {
    v4 = 401;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND2"])
  {
    v4 = 402;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND3"])
  {
    v4 = 403;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND4"])
  {
    v4 = 404;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND5"])
  {
    v4 = 405;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND6"])
  {
    v4 = 406;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND7"])
  {
    v4 = 407;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND8"])
  {
    v4 = 408;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND9"])
  {
    v4 = 409;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND10"])
  {
    v4 = 410;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND11"])
  {
    v4 = 411;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND12"])
  {
    v4 = 412;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND13"])
  {
    v4 = 413;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND14"])
  {
    v4 = 414;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND17"])
  {
    v4 = 417;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND18"])
  {
    v4 = 418;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND19"])
  {
    v4 = 419;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND20"])
  {
    v4 = 420;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND21"])
  {
    v4 = 421;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND22"])
  {
    v4 = 422;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND23"])
  {
    v4 = 423;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND24"])
  {
    v4 = 424;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND25"])
  {
    v4 = 425;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND26"])
  {
    v4 = 426;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND27"])
  {
    v4 = 427;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND28"])
  {
    v4 = 428;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND29"])
  {
    v4 = 429;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND30"])
  {
    v4 = 430;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND31"])
  {
    v4 = 431;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND33"])
  {
    v4 = 433;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND34"])
  {
    v4 = 434;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND35"])
  {
    v4 = 435;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND36"])
  {
    v4 = 436;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND37"])
  {
    v4 = 437;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND38"])
  {
    v4 = 438;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND39"])
  {
    v4 = 439;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND40"])
  {
    v4 = 440;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND41"])
  {
    v4 = 441;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND42"])
  {
    v4 = 442;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND43"])
  {
    v4 = 443;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND44"])
  {
    v4 = 444;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND45"])
  {
    v4 = 445;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND46"])
  {
    v4 = 446;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND48"])
  {
    v4 = 448;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND49"])
  {
    v4 = 449;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND50"])
  {
    v4 = 450;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND51"])
  {
    v4 = 451;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND52"])
  {
    v4 = 452;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND53"])
  {
    v4 = 453;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND65"])
  {
    v4 = 465;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND66"])
  {
    v4 = 466;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND67"])
  {
    v4 = 467;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND68"])
  {
    v4 = 468;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND69"])
  {
    v4 = 469;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND70"])
  {
    v4 = 470;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND71"])
  {
    v4 = 471;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND72"])
  {
    v4 = 472;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND73"])
  {
    v4 = 473;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND74"])
  {
    v4 = 474;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND75"])
  {
    v4 = 475;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND76"])
  {
    v4 = 476;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND85"])
  {
    v4 = 485;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND87"])
  {
    v4 = 487;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_LTE_EUTRAN_BAND88"])
  {
    v4 = 488;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_INVALID"])
  {
    v4 = 1000;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND1"])
  {
    v4 = 1001;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND2"])
  {
    v4 = 1002;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND3"])
  {
    v4 = 1003;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND5"])
  {
    v4 = 1005;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND7"])
  {
    v4 = 1007;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND8"])
  {
    v4 = 1008;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND12"])
  {
    v4 = 1012;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND13"])
  {
    v4 = 1013;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND14"])
  {
    v4 = 1014;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND18"])
  {
    v4 = 1018;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND20"])
  {
    v4 = 1020;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND24"])
  {
    v4 = 1024;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND25"])
  {
    v4 = 1025;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND26"])
  {
    v4 = 1026;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND28"])
  {
    v4 = 1028;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND29"])
  {
    v4 = 1029;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND30"])
  {
    v4 = 1030;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND34"])
  {
    v4 = 1034;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND38"])
  {
    v4 = 1038;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND39"])
  {
    v4 = 1039;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND40"])
  {
    v4 = 1040;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND41"])
  {
    v4 = 1041;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND46"])
  {
    v4 = 1046;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND47"])
  {
    v4 = 1047;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND48"])
  {
    v4 = 1048;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND50"])
  {
    v4 = 1050;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND51"])
  {
    v4 = 1051;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND53"])
  {
    v4 = 1053;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND65"])
  {
    v4 = 1065;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND66"])
  {
    v4 = 1066;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND67"])
  {
    v4 = 1067;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND70"])
  {
    v4 = 1070;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND71"])
  {
    v4 = 1071;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND74"])
  {
    v4 = 1074;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND75"])
  {
    v4 = 1075;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND76"])
  {
    v4 = 1076;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND77"])
  {
    v4 = 1077;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND78"])
  {
    v4 = 1078;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND79"])
  {
    v4 = 1079;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND80"])
  {
    v4 = 1080;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND81"])
  {
    v4 = 1081;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND82"])
  {
    v4 = 1082;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND83"])
  {
    v4 = 1083;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND84"])
  {
    v4 = 1084;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND85"])
  {
    v4 = 1085;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND86"])
  {
    v4 = 1086;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND89"])
  {
    v4 = 1089;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND90"])
  {
    v4 = 1090;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND91"])
  {
    v4 = 1091;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND92"])
  {
    v4 = 1092;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND93"])
  {
    v4 = 1093;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND94"])
  {
    v4 = 1094;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND95"])
  {
    v4 = 1095;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND96"])
  {
    v4 = 1096;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND97"])
  {
    v4 = 1097;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND98"])
  {
    v4 = 1098;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND99"])
  {
    v4 = 1099;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND257"])
  {
    v4 = 1257;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND258"])
  {
    v4 = 1258;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND259"])
  {
    v4 = 1259;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND260"])
  {
    v4 = 1260;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND261"])
  {
    v4 = 1261;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_NR5G_BAND262"])
  {
    v4 = 1262;
  }

  else if ([v3 isEqualToString:@"SYS_BAND_INVALID"])
  {
    v4 = 0xFFFF;
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
  v8.super_class = AWDMETRICSKCellularRfTunerHistTunerStateDuration;
  v4 = [(AWDMETRICSKCellularRfTunerHistTunerStateDuration *)&v8 description];
  v5 = [(AWDMETRICSKCellularRfTunerHistTunerStateDuration *)self dictionaryRepresentation];
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
    if (rat <= 4)
    {
      if (!rat)
      {
        v6 = @"SYS_MODE_NO_SRV";
        goto LABEL_14;
      }

      if (rat == 3)
      {
        v6 = @"SYS_MODE_GSM";
        goto LABEL_14;
      }
    }

    else
    {
      switch(rat)
      {
        case 5:
          v6 = @"SYS_MODE_WCDMA";
          goto LABEL_14;
        case 9:
          v6 = @"SYS_MODE_LTE";
          goto LABEL_14;
        case 12:
          v6 = @"SYS_MODE_NR";
LABEL_14:
          [v3 setObject:v6 forKey:@"rat"];

          has = self->_has;
          goto LABEL_15;
      }
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rat];
    goto LABEL_14;
  }

LABEL_15:
  if ((has & 0x20) != 0)
  {
    txBand = self->_txBand;
    if (txBand > 999)
    {
      if (txBand > 1256)
      {
        if (txBand <= 1259)
        {
          if (txBand == 1257)
          {
            v8 = @"SYS_BAND_NR5G_BAND257";
          }

          else if (txBand == 1258)
          {
            v8 = @"SYS_BAND_NR5G_BAND258";
          }

          else
          {
            v8 = @"SYS_BAND_NR5G_BAND259";
          }
        }

        else if (txBand > 1261)
        {
          if (txBand == 1262)
          {
            v8 = @"SYS_BAND_NR5G_BAND262";
          }

          else if (txBand == 0xFFFF)
          {
            v8 = @"SYS_BAND_INVALID";
          }

          else
          {
LABEL_198:
            v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_txBand];
          }
        }

        else if (txBand == 1260)
        {
          v8 = @"SYS_BAND_NR5G_BAND260";
        }

        else
        {
          v8 = @"SYS_BAND_NR5G_BAND261";
        }
      }

      else
      {
        switch(txBand)
        {
          case 1000:
            v8 = @"SYS_BAND_NR5G_INVALID";
            break;
          case 1001:
            v8 = @"SYS_BAND_NR5G_BAND1";
            break;
          case 1002:
            v8 = @"SYS_BAND_NR5G_BAND2";
            break;
          case 1003:
            v8 = @"SYS_BAND_NR5G_BAND3";
            break;
          case 1005:
            v8 = @"SYS_BAND_NR5G_BAND5";
            break;
          case 1007:
            v8 = @"SYS_BAND_NR5G_BAND7";
            break;
          case 1008:
            v8 = @"SYS_BAND_NR5G_BAND8";
            break;
          case 1012:
            v8 = @"SYS_BAND_NR5G_BAND12";
            break;
          case 1013:
            v8 = @"SYS_BAND_NR5G_BAND13";
            break;
          case 1014:
            v8 = @"SYS_BAND_NR5G_BAND14";
            break;
          case 1018:
            v8 = @"SYS_BAND_NR5G_BAND18";
            break;
          case 1020:
            v8 = @"SYS_BAND_NR5G_BAND20";
            break;
          case 1024:
            v8 = @"SYS_BAND_NR5G_BAND24";
            break;
          case 1025:
            v8 = @"SYS_BAND_NR5G_BAND25";
            break;
          case 1026:
            v8 = @"SYS_BAND_NR5G_BAND26";
            break;
          case 1028:
            v8 = @"SYS_BAND_NR5G_BAND28";
            break;
          case 1029:
            v8 = @"SYS_BAND_NR5G_BAND29";
            break;
          case 1030:
            v8 = @"SYS_BAND_NR5G_BAND30";
            break;
          case 1034:
            v8 = @"SYS_BAND_NR5G_BAND34";
            break;
          case 1038:
            v8 = @"SYS_BAND_NR5G_BAND38";
            break;
          case 1039:
            v8 = @"SYS_BAND_NR5G_BAND39";
            break;
          case 1040:
            v8 = @"SYS_BAND_NR5G_BAND40";
            break;
          case 1041:
            v8 = @"SYS_BAND_NR5G_BAND41";
            break;
          case 1046:
            v8 = @"SYS_BAND_NR5G_BAND46";
            break;
          case 1047:
            v8 = @"SYS_BAND_NR5G_BAND47";
            break;
          case 1048:
            v8 = @"SYS_BAND_NR5G_BAND48";
            break;
          case 1050:
            v8 = @"SYS_BAND_NR5G_BAND50";
            break;
          case 1051:
            v8 = @"SYS_BAND_NR5G_BAND51";
            break;
          case 1053:
            v8 = @"SYS_BAND_NR5G_BAND53";
            break;
          case 1065:
            v8 = @"SYS_BAND_NR5G_BAND65";
            break;
          case 1066:
            v8 = @"SYS_BAND_NR5G_BAND66";
            break;
          case 1067:
            v8 = @"SYS_BAND_NR5G_BAND67";
            break;
          case 1070:
            v8 = @"SYS_BAND_NR5G_BAND70";
            break;
          case 1071:
            v8 = @"SYS_BAND_NR5G_BAND71";
            break;
          case 1074:
            v8 = @"SYS_BAND_NR5G_BAND74";
            break;
          case 1075:
            v8 = @"SYS_BAND_NR5G_BAND75";
            break;
          case 1076:
            v8 = @"SYS_BAND_NR5G_BAND76";
            break;
          case 1077:
            v8 = @"SYS_BAND_NR5G_BAND77";
            break;
          case 1078:
            v8 = @"SYS_BAND_NR5G_BAND78";
            break;
          case 1079:
            v8 = @"SYS_BAND_NR5G_BAND79";
            break;
          case 1080:
            v8 = @"SYS_BAND_NR5G_BAND80";
            break;
          case 1081:
            v8 = @"SYS_BAND_NR5G_BAND81";
            break;
          case 1082:
            v8 = @"SYS_BAND_NR5G_BAND82";
            break;
          case 1083:
            v8 = @"SYS_BAND_NR5G_BAND83";
            break;
          case 1084:
            v8 = @"SYS_BAND_NR5G_BAND84";
            break;
          case 1085:
            v8 = @"SYS_BAND_NR5G_BAND85";
            break;
          case 1086:
            v8 = @"SYS_BAND_NR5G_BAND86";
            break;
          case 1089:
            v8 = @"SYS_BAND_NR5G_BAND89";
            break;
          case 1090:
            v8 = @"SYS_BAND_NR5G_BAND90";
            break;
          case 1091:
            v8 = @"SYS_BAND_NR5G_BAND91";
            break;
          case 1092:
            v8 = @"SYS_BAND_NR5G_BAND92";
            break;
          case 1093:
            v8 = @"SYS_BAND_NR5G_BAND93";
            break;
          case 1094:
            v8 = @"SYS_BAND_NR5G_BAND94";
            break;
          case 1095:
            v8 = @"SYS_BAND_NR5G_BAND95";
            break;
          case 1096:
            v8 = @"SYS_BAND_NR5G_BAND96";
            break;
          case 1097:
            v8 = @"SYS_BAND_NR5G_BAND97";
            break;
          case 1098:
            v8 = @"SYS_BAND_NR5G_BAND98";
            break;
          case 1099:
            v8 = @"SYS_BAND_NR5G_BAND99";
            break;
          default:
            goto LABEL_198;
        }
      }
    }

    else
    {
      switch(txBand)
      {
        case 400:
          v8 = @"SYS_BAND_LTE_EUTRAN_INVALID";
          break;
        case 401:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND1";
          break;
        case 402:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND2";
          break;
        case 403:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND3";
          break;
        case 404:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND4";
          break;
        case 405:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND5";
          break;
        case 406:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND6";
          break;
        case 407:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND7";
          break;
        case 408:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND8";
          break;
        case 409:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND9";
          break;
        case 410:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND10";
          break;
        case 411:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND11";
          break;
        case 412:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND12";
          break;
        case 413:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND13";
          break;
        case 414:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND14";
          break;
        case 415:
        case 416:
        case 432:
        case 447:
        case 454:
        case 455:
        case 456:
        case 457:
        case 458:
        case 459:
        case 460:
        case 461:
        case 462:
        case 463:
        case 464:
        case 477:
        case 478:
        case 479:
        case 480:
        case 481:
        case 482:
        case 483:
        case 484:
        case 486:
          goto LABEL_198;
        case 417:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND17";
          break;
        case 418:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND18";
          break;
        case 419:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND19";
          break;
        case 420:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND20";
          break;
        case 421:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND21";
          break;
        case 422:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND22";
          break;
        case 423:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND23";
          break;
        case 424:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND24";
          break;
        case 425:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND25";
          break;
        case 426:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND26";
          break;
        case 427:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND27";
          break;
        case 428:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND28";
          break;
        case 429:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND29";
          break;
        case 430:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND30";
          break;
        case 431:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND31";
          break;
        case 433:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND33";
          break;
        case 434:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND34";
          break;
        case 435:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND35";
          break;
        case 436:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND36";
          break;
        case 437:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND37";
          break;
        case 438:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND38";
          break;
        case 439:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND39";
          break;
        case 440:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND40";
          break;
        case 441:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND41";
          break;
        case 442:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND42";
          break;
        case 443:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND43";
          break;
        case 444:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND44";
          break;
        case 445:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND45";
          break;
        case 446:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND46";
          break;
        case 448:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND48";
          break;
        case 449:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND49";
          break;
        case 450:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND50";
          break;
        case 451:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND51";
          break;
        case 452:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND52";
          break;
        case 453:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND53";
          break;
        case 465:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND65";
          break;
        case 466:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND66";
          break;
        case 467:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND67";
          break;
        case 468:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND68";
          break;
        case 469:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND69";
          break;
        case 470:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND70";
          break;
        case 471:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND71";
          break;
        case 472:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND72";
          break;
        case 473:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND73";
          break;
        case 474:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND74";
          break;
        case 475:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND75";
          break;
        case 476:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND76";
          break;
        case 485:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND85";
          break;
        case 487:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND87";
          break;
        case 488:
          v8 = @"SYS_BAND_LTE_EUTRAN_BAND88";
          break;
        default:
          switch(txBand)
          {
            case 'd':
              v8 = @"SYS_BAND_WCDMA_INVALID";
              break;
            case 'e':
              v8 = @"SYS_BAND_WCDMA_I_IMT_2000";
              break;
            case 'f':
              v8 = @"SYS_BAND_WCDMA_II_PCS_1900";
              break;
            case 'g':
              v8 = @"SYS_BAND_WCDMA_III_1700";
              break;
            case 'h':
              v8 = @"SYS_BAND_WCDMA_IV_1700";
              break;
            case 'i':
              v8 = @"SYS_BAND_WCDMA_V_850";
              break;
            case 'j':
              v8 = @"SYS_BAND_WCDMA_VI_800";
              break;
            case 'k':
              v8 = @"SYS_BAND_WCDMA_VII_2600";
              break;
            case 'l':
              v8 = @"SYS_BAND_WCDMA_VIII_900";
              break;
            case 'm':
              v8 = @"SYS_BAND_WCDMA_IX_1700";
              break;
            case 'n':
              v8 = @"SYS_BAND_WCDMA_X";
              break;
            case 'o':
              v8 = @"SYS_BAND_WCDMA_XI_1500";
              break;
            case 'p':
              v8 = @"SYS_BAND_WCDMA_XII";
              break;
            case 'q':
              v8 = @"SYS_BAND_WCDMA_XIII";
              break;
            case 'r':
              v8 = @"SYS_BAND_WCDMA_XIV";
              break;
            case 's':
              v8 = @"SYS_BAND_WCDMA_XV";
              break;
            case 't':
              v8 = @"SYS_BAND_WCDMA_XVI";
              break;
            case 'u':
              v8 = @"SYS_BAND_WCDMA_XVII";
              break;
            case 'v':
              v8 = @"SYS_BAND_WCDMA_XVIII";
              break;
            case 'w':
              v8 = @"SYS_BAND_WCDMA_XIX_850";
              break;
            case 'x':
              v8 = @"SYS_BAND_WCDMA_XX";
              break;
            case 'y':
              v8 = @"SYS_BAND_WCDMA_XXI";
              break;
            case 'z':
              v8 = @"SYS_BAND_WCDMA_XXII";
              break;
            case '{':
            case '|':
              goto LABEL_198;
            case '}':
              v8 = @"SYS_BAND_WCDMA_XXV";
              break;
            default:
              v8 = @"SYS_BAND_GSM_900";
              v9 = self->_txBand;
              switch(txBand)
              {
                case 0:
                  goto LABEL_199;
                case 1:
                  v8 = @"SYS_BAND_GSM_PGSM_900";
                  break;
                case 2:
                  v8 = @"SYS_BAND_GSM_EGSM_900";
                  break;
                case 3:
                  v8 = @"SYS_BAND_GSM_RGSM_900";
                  break;
                case 4:
                  v8 = @"SYS_BAND_GSM_DCS_1800";
                  break;
                case 5:
                  v8 = @"SYS_BAND_GSM_PCS_1900";
                  break;
                case 6:
                  v8 = @"SYS_BAND_GSM_850";
                  break;
                case 7:
                  v8 = @"SYS_BAND_GSM_450";
                  break;
                case 8:
                  v8 = @"SYS_BAND_GSM_480";
                  break;
                case 9:
                  v8 = @"SYS_BAND_GSM_750";
                  break;
                case 10:
                  v8 = @"SYS_BAND_GSM_380";
                  break;
                case 11:
                  v8 = @"SYS_BAND_GSM_410";
                  break;
                case 12:
                  v8 = @"SYS_BAND_GSM_BAND_GSM_900";
                  break;
                case 13:
                  v8 = @"SYS_BAND_GSM_710";
                  break;
                case 14:
                  v8 = @"SYS_BAND_GSM_810";
                  break;
                case 19:
                  v8 = @"SYS_BAND_GSM_INVALID";
                  break;
                default:
                  goto LABEL_198;
              }

              break;
          }

          break;
      }
    }

LABEL_199:
    [v3 setObject:v8 forKey:@"tx_band"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_port];
    [v3 setObject:v12 forKey:@"port"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_202:
      if ((has & 1) == 0)
      {
        goto LABEL_203;
      }

      goto LABEL_214;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_202;
  }

  scenarioDecision = self->_scenarioDecision;
  if (scenarioDecision >= 0xD)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scenarioDecision];
  }

  else
  {
    v14 = off_279A0FF78[scenarioDecision];
  }

  [v3 setObject:v14 forKey:@"scenario_decision"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_203:
    if ((has & 0x40) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_215;
  }

LABEL_214:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
  [v3 setObject:v15 forKey:@"duration"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_204:
    if ((has & 2) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_205;
  }

LABEL_215:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_workMode];
  [v3 setObject:v16 forKey:@"work_mode"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_205:
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ftQualInd];
    [v3 setObject:v10 forKey:@"ft_qual_ind"];
  }

LABEL_206:

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