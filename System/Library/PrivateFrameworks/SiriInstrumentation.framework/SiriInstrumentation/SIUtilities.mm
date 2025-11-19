@interface SIUtilities
+ (int)convertCountryCodeToSchemaCountryCode:(id)a3;
+ (int)convertLanguageCodeToSchemaLocale:(id)a3;
@end

@implementation SIUtilities

+ (int)convertCountryCodeToSchemaCountryCode:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 uppercaseString];
  if ([v3 isEqualToString:@"AD"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AE"])
  {
    v4 = 222;
  }

  else if ([v3 isEqualToString:@"AF"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AG"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"AI"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"AL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AM"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"AO"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AQ"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"AR"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"AS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"AT"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"AU"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"AW"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"AX"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AZ"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"BA"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"BB"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"BD"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"BE"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"BF"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"BG"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"BH"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"BI"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"BJ"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"BL"])
  {
    v4 = 248;
  }

  else if ([v3 isEqualToString:@"BM"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"BN"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"BO"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"BQ"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"BR"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"BS"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"BT"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"BV"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"BW"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"BY"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"BZ"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"CA"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"CC"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"CD"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"CF"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"CG"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"CH"])
  {
    v4 = 204;
  }

  else if ([v3 isEqualToString:@"CI"])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:@"CK"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"CL"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"CM"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"CN"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"CO"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"CR"])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:@"CU"])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:@"CV"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"CW"])
  {
    v4 = 58;
  }

  else if ([v3 isEqualToString:@"CX"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"CY"])
  {
    v4 = 59;
  }

  else if ([v3 isEqualToString:@"CZ"])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:@"DE"])
  {
    v4 = 82;
  }

  else if ([v3 isEqualToString:@"DJ"])
  {
    v4 = 62;
  }

  else if ([v3 isEqualToString:@"DK"])
  {
    v4 = 61;
  }

  else if ([v3 isEqualToString:@"DM"])
  {
    v4 = 63;
  }

  else if ([v3 isEqualToString:@"DO"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"DZ"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"EC"])
  {
    v4 = 238;
  }

  else if ([v3 isEqualToString:@"EE"])
  {
    v4 = 68;
  }

  else if ([v3 isEqualToString:@"EG"])
  {
    v4 = 65;
  }

  else if ([v3 isEqualToString:@"EH"])
  {
    v4 = 234;
  }

  else if ([v3 isEqualToString:@"ER"])
  {
    v4 = 67;
  }

  else if ([v3 isEqualToString:@"ES"])
  {
    v4 = 198;
  }

  else if ([v3 isEqualToString:@"ET"])
  {
    v4 = 70;
  }

  else if ([v3 isEqualToString:@"FI"])
  {
    v4 = 74;
  }

  else if ([v3 isEqualToString:@"FJ"])
  {
    v4 = 73;
  }

  else if ([v3 isEqualToString:@"FK"])
  {
    v4 = 71;
  }

  else if ([v3 isEqualToString:@"FM"])
  {
    v4 = 140;
  }

  else if ([v3 isEqualToString:@"FO"])
  {
    v4 = 72;
  }

  else if ([v3 isEqualToString:@"FR"])
  {
    v4 = 75;
  }

  else if ([v3 isEqualToString:@"GA"])
  {
    v4 = 79;
  }

  else if ([v3 isEqualToString:@"GB"])
  {
    v4 = 223;
  }

  else if ([v3 isEqualToString:@"GD"])
  {
    v4 = 86;
  }

  else if ([v3 isEqualToString:@"GE"])
  {
    v4 = 81;
  }

  else if ([v3 isEqualToString:@"GF"])
  {
    v4 = 76;
  }

  else if ([v3 isEqualToString:@"GG"])
  {
    v4 = 90;
  }

  else if ([v3 isEqualToString:@"GH"])
  {
    v4 = 83;
  }

  else if ([v3 isEqualToString:@"GI"])
  {
    v4 = 84;
  }

  else if ([v3 isEqualToString:@"GL"])
  {
    v4 = 85;
  }

  else if ([v3 isEqualToString:@"GM"])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:@"GN"])
  {
    v4 = 91;
  }

  else if ([v3 isEqualToString:@"GP"])
  {
    v4 = 87;
  }

  else if ([v3 isEqualToString:@"GQ"])
  {
    v4 = 239;
  }

  else if ([v3 isEqualToString:@"GR"])
  {
    v4 = 240;
  }

  else if ([v3 isEqualToString:@"GS"])
  {
    v4 = 196;
  }

  else if ([v3 isEqualToString:@"GT"])
  {
    v4 = 89;
  }

  else if ([v3 isEqualToString:@"GU"])
  {
    v4 = 88;
  }

  else if ([v3 isEqualToString:@"GW"])
  {
    v4 = 92;
  }

  else if ([v3 isEqualToString:@"GY"])
  {
    v4 = 93;
  }

  else if ([v3 isEqualToString:@"HK"])
  {
    v4 = 97;
  }

  else if ([v3 isEqualToString:@"HM"])
  {
    v4 = 241;
  }

  else if ([v3 isEqualToString:@"HN"])
  {
    v4 = 96;
  }

  else if ([v3 isEqualToString:@"HR"])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:@"HT"])
  {
    v4 = 94;
  }

  else if ([v3 isEqualToString:@"HU"])
  {
    v4 = 98;
  }

  else if ([v3 isEqualToString:@"ID"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"IE"])
  {
    v4 = 104;
  }

  else if ([v3 isEqualToString:@"IL"])
  {
    v4 = 106;
  }

  else if ([v3 isEqualToString:@"IM"])
  {
    v4 = 105;
  }

  else if ([v3 isEqualToString:@"IN"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"IO"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"IQ"])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"IR"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"IS"])
  {
    v4 = 99;
  }

  else if ([v3 isEqualToString:@"IT"])
  {
    v4 = 107;
  }

  else if ([v3 isEqualToString:@"JE"])
  {
    v4 = 108;
  }

  else if ([v3 isEqualToString:@"JM"])
  {
    v4 = 242;
  }

  else if ([v3 isEqualToString:@"JO"])
  {
    v4 = 109;
  }

  else if ([v3 isEqualToString:@"JP"])
  {
    v4 = 243;
  }

  else if ([v3 isEqualToString:@"KE"])
  {
    v4 = 111;
  }

  else if ([v3 isEqualToString:@"KG"])
  {
    v4 = 116;
  }

  else if ([v3 isEqualToString:@"KH"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"KI"])
  {
    v4 = 112;
  }

  else if ([v3 isEqualToString:@"KM"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"KN"])
  {
    v4 = 178;
  }

  else if ([v3 isEqualToString:@"KP"])
  {
    v4 = 113;
  }

  else if ([v3 isEqualToString:@"KR"])
  {
    v4 = 114;
  }

  else if ([v3 isEqualToString:@"KW"])
  {
    v4 = 115;
  }

  else if ([v3 isEqualToString:@"KY"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"KZ"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"LA"])
  {
    v4 = 117;
  }

  else if ([v3 isEqualToString:@"LB"])
  {
    v4 = 119;
  }

  else if ([v3 isEqualToString:@"LC"])
  {
    v4 = 179;
  }

  else if ([v3 isEqualToString:@"LI"])
  {
    v4 = 123;
  }

  else if ([v3 isEqualToString:@"LK"])
  {
    v4 = 199;
  }

  else if ([v3 isEqualToString:@"LR"])
  {
    v4 = 121;
  }

  else if ([v3 isEqualToString:@"LS"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"LT"])
  {
    v4 = 124;
  }

  else if ([v3 isEqualToString:@"LU"])
  {
    v4 = 125;
  }

  else if ([v3 isEqualToString:@"LV"])
  {
    v4 = 118;
  }

  else if ([v3 isEqualToString:@"LY"])
  {
    v4 = 122;
  }

  else if ([v3 isEqualToString:@"MA"])
  {
    v4 = 146;
  }

  else if ([v3 isEqualToString:@"MC"])
  {
    v4 = 142;
  }

  else if ([v3 isEqualToString:@"MD"])
  {
    v4 = 141;
  }

  else if ([v3 isEqualToString:@"ME"])
  {
    v4 = 144;
  }

  else if ([v3 isEqualToString:@"MF"])
  {
    v4 = 180;
  }

  else if ([v3 isEqualToString:@"MG"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"MH"])
  {
    v4 = 134;
  }

  else if ([v3 isEqualToString:@"MK"])
  {
    v4 = 127;
  }

  else if ([v3 isEqualToString:@"ML"])
  {
    v4 = 132;
  }

  else if ([v3 isEqualToString:@"MM"])
  {
    v4 = 148;
  }

  else if ([v3 isEqualToString:@"MN"])
  {
    v4 = 143;
  }

  else if ([v3 isEqualToString:@"MO"])
  {
    v4 = 126;
  }

  else if ([v3 isEqualToString:@"MP"])
  {
    v4 = 245;
  }

  else if ([v3 isEqualToString:@"MQ"])
  {
    v4 = 135;
  }

  else if ([v3 isEqualToString:@"MR"])
  {
    v4 = 136;
  }

  else if ([v3 isEqualToString:@"MS"])
  {
    v4 = 145;
  }

  else if ([v3 isEqualToString:@"MT"])
  {
    v4 = 133;
  }

  else if ([v3 isEqualToString:@"MU"])
  {
    v4 = 137;
  }

  else if ([v3 isEqualToString:@"MV"])
  {
    v4 = 131;
  }

  else if ([v3 isEqualToString:@"MW"])
  {
    v4 = 129;
  }

  else if ([v3 isEqualToString:@"MX"])
  {
    v4 = 139;
  }

  else if ([v3 isEqualToString:@"MY"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"MZ"])
  {
    v4 = 147;
  }

  else if ([v3 isEqualToString:@"NA"])
  {
    v4 = 149;
  }

  else if ([v3 isEqualToString:@"NC"])
  {
    v4 = 153;
  }

  else if ([v3 isEqualToString:@"NE"])
  {
    v4 = 156;
  }

  else if ([v3 isEqualToString:@"NF"])
  {
    v4 = 159;
  }

  else if ([v3 isEqualToString:@"NG"])
  {
    v4 = 157;
  }

  else if ([v3 isEqualToString:@"NI"])
  {
    v4 = 155;
  }

  else if ([v3 isEqualToString:@"NL"])
  {
    v4 = 152;
  }

  else if ([v3 isEqualToString:@"NO"])
  {
    v4 = 160;
  }

  else if ([v3 isEqualToString:@"NP"])
  {
    v4 = 151;
  }

  else if ([v3 isEqualToString:@"NR"])
  {
    v4 = 150;
  }

  else if ([v3 isEqualToString:@"NU"])
  {
    v4 = 158;
  }

  else if ([v3 isEqualToString:@"NZ"])
  {
    v4 = 154;
  }

  else if ([v3 isEqualToString:@"OM"])
  {
    v4 = 161;
  }

  else if ([v3 isEqualToString:@"PA"])
  {
    v4 = 165;
  }

  else if ([v3 isEqualToString:@"PE"])
  {
    v4 = 246;
  }

  else if ([v3 isEqualToString:@"PF"])
  {
    v4 = 77;
  }

  else if ([v3 isEqualToString:@"PG"])
  {
    v4 = 166;
  }

  else if ([v3 isEqualToString:@"PH"])
  {
    v4 = 168;
  }

  else if ([v3 isEqualToString:@"PK"])
  {
    v4 = 162;
  }

  else if ([v3 isEqualToString:@"PL"])
  {
    v4 = 170;
  }

  else if ([v3 isEqualToString:@"PM"])
  {
    v4 = 181;
  }

  else if ([v3 isEqualToString:@"PN"])
  {
    v4 = 169;
  }

  else if ([v3 isEqualToString:@"PR"])
  {
    v4 = 172;
  }

  else if ([v3 isEqualToString:@"PS"])
  {
    v4 = 164;
  }

  else if ([v3 isEqualToString:@"PT"])
  {
    v4 = 171;
  }

  else if ([v3 isEqualToString:@"PW"])
  {
    v4 = 163;
  }

  else if ([v3 isEqualToString:@"PY"])
  {
    v4 = 167;
  }

  else if ([v3 isEqualToString:@"QA"])
  {
    v4 = 173;
  }

  else if ([v3 isEqualToString:@"RE"])
  {
    v4 = 247;
  }

  else if ([v3 isEqualToString:@"RO"])
  {
    v4 = 174;
  }

  else if ([v3 isEqualToString:@"RS"])
  {
    v4 = 187;
  }

  else if ([v3 isEqualToString:@"RU"])
  {
    v4 = 175;
  }

  else if ([v3 isEqualToString:@"RW"])
  {
    v4 = 176;
  }

  else if ([v3 isEqualToString:@"SA"])
  {
    v4 = 186;
  }

  else if ([v3 isEqualToString:@"SB"])
  {
    v4 = 193;
  }

  else if ([v3 isEqualToString:@"SC"])
  {
    v4 = 188;
  }

  else if ([v3 isEqualToString:@"SD"])
  {
    v4 = 200;
  }

  else if ([v3 isEqualToString:@"SE"])
  {
    v4 = 203;
  }

  else if ([v3 isEqualToString:@"SG"])
  {
    v4 = 190;
  }

  else if ([v3 isEqualToString:@"SH"])
  {
    v4 = 177;
  }

  else if ([v3 isEqualToString:@"SI"])
  {
    v4 = 192;
  }

  else if ([v3 isEqualToString:@"SJ"])
  {
    v4 = 202;
  }

  else if ([v3 isEqualToString:@"SK"])
  {
    v4 = 191;
  }

  else if ([v3 isEqualToString:@"SL"])
  {
    v4 = 189;
  }

  else if ([v3 isEqualToString:@"SM"])
  {
    v4 = 184;
  }

  else if ([v3 isEqualToString:@"SN"])
  {
    v4 = 249;
  }

  else if ([v3 isEqualToString:@"SO"])
  {
    v4 = 194;
  }

  else if ([v3 isEqualToString:@"SR"])
  {
    v4 = 201;
  }

  else if ([v3 isEqualToString:@"SS"])
  {
    v4 = 197;
  }

  else if ([v3 isEqualToString:@"ST"])
  {
    v4 = 185;
  }

  else if ([v3 isEqualToString:@"SV"])
  {
    v4 = 66;
  }

  else if ([v3 isEqualToString:@"SX"])
  {
    v4 = 250;
  }

  else if ([v3 isEqualToString:@"SY"])
  {
    v4 = 205;
  }

  else if ([v3 isEqualToString:@"SZ"])
  {
    v4 = 69;
  }

  else if ([v3 isEqualToString:@"TC"])
  {
    v4 = 218;
  }

  else if ([v3 isEqualToString:@"TD"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"TF"])
  {
    v4 = 78;
  }

  else if ([v3 isEqualToString:@"TG"])
  {
    v4 = 211;
  }

  else if ([v3 isEqualToString:@"TH"])
  {
    v4 = 209;
  }

  else if ([v3 isEqualToString:@"TJ"])
  {
    v4 = 207;
  }

  else if ([v3 isEqualToString:@"TK"])
  {
    v4 = 212;
  }

  else if ([v3 isEqualToString:@"TL"])
  {
    v4 = 210;
  }

  else if ([v3 isEqualToString:@"TM"])
  {
    v4 = 217;
  }

  else if ([v3 isEqualToString:@"TN"])
  {
    v4 = 215;
  }

  else if ([v3 isEqualToString:@"TO"])
  {
    v4 = 213;
  }

  else if ([v3 isEqualToString:@"TR"])
  {
    v4 = 216;
  }

  else if ([v3 isEqualToString:@"TT"])
  {
    v4 = 214;
  }

  else if ([v3 isEqualToString:@"TV"])
  {
    v4 = 219;
  }

  else if ([v3 isEqualToString:@"TW"])
  {
    v4 = 206;
  }

  else if ([v3 isEqualToString:@"TZ"])
  {
    v4 = 208;
  }

  else if ([v3 isEqualToString:@"UA"])
  {
    v4 = 221;
  }

  else if ([v3 isEqualToString:@"UG"])
  {
    v4 = 220;
  }

  else if ([v3 isEqualToString:@"UM"])
  {
    v4 = 224;
  }

  else if ([v3 isEqualToString:@"US"])
  {
    v4 = 225;
  }

  else if ([v3 isEqualToString:@"UY"])
  {
    v4 = 226;
  }

  else if ([v3 isEqualToString:@"UZ"])
  {
    v4 = 227;
  }

  else if ([v3 isEqualToString:@"VA"])
  {
    v4 = 95;
  }

  else if ([v3 isEqualToString:@"VC"])
  {
    v4 = 182;
  }

  else if ([v3 isEqualToString:@"VE"])
  {
    v4 = 229;
  }

  else if ([v3 isEqualToString:@"VG"])
  {
    v4 = 231;
  }

  else if ([v3 isEqualToString:@"VI"])
  {
    v4 = 232;
  }

  else if ([v3 isEqualToString:@"VN"])
  {
    v4 = 230;
  }

  else if ([v3 isEqualToString:@"VU"])
  {
    v4 = 228;
  }

  else if ([v3 isEqualToString:@"WF"])
  {
    v4 = 233;
  }

  else if ([v3 isEqualToString:@"WS"])
  {
    v4 = 183;
  }

  else if ([v3 isEqualToString:@"XK"])
  {
    v4 = 244;
  }

  else if ([v3 isEqualToString:@"YE"])
  {
    v4 = 235;
  }

  else if ([v3 isEqualToString:@"YT"])
  {
    v4 = 138;
  }

  else if ([v3 isEqualToString:@"ZA"])
  {
    v4 = 195;
  }

  else if ([v3 isEqualToString:@"ZM"])
  {
    v4 = 236;
  }

  else if ([v3 isEqualToString:@"ZW"])
  {
    v4 = 237;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)convertLanguageCodeToSchemaLocale:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 uppercaseString];
  if ([v3 isEqualToString:@"AR-AE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AR-SA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CA-ES"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CS-CZ"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"DA-DK"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"DE-AT"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DE-CH"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"DE-DE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"EL-GR"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"EN-AE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"EN-AU"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"EN-CA"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"EN-GB"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"EN-ID"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"EN-IE"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"EN-IN"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"EN-MY"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"EN-NZ"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"EN-PH"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"EN-SA"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"EN-SG"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"EN-US"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"EN-ZA"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"ES-CL"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"ES-CO"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"ES-ES"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"ES-MX"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"ES-US"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"FI-FI"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"FR-BE"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"FR-CA"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"FR-CH"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"FR-FR"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"HE-IL"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"HI-IN"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"HR-HR"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"HU-HU"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"ID-ID"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"IT-CH"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"IT-IT"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"JA-JP"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"KO-KR"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"MS-MY"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"NB-NO"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"NL-BE"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"NL-NL"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"PL-PL"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"PT-BR"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"PT-PT"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"RO-RO"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"RU-RU"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"SK-SK"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"SV-SE"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"TH-TH"])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:@"TR-TR"])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:@"UK-UA"])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:@"VI-VN"])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:@"WUU-CN"])
  {
    v4 = 58;
  }

  else if ([v3 isEqualToString:@"YUE-CN"])
  {
    v4 = 59;
  }

  else if ([v3 isEqualToString:@"ZH-CN"])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:@"ZH-HK"])
  {
    v4 = 61;
  }

  else if ([v3 isEqualToString:@"ZH-TW"])
  {
    v4 = 62;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end