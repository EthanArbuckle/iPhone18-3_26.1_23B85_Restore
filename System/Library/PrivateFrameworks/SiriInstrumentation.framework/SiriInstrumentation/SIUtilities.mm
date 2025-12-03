@interface SIUtilities
+ (int)convertCountryCodeToSchemaCountryCode:(id)code;
+ (int)convertLanguageCodeToSchemaLocale:(id)locale;
@end

@implementation SIUtilities

+ (int)convertCountryCodeToSchemaCountryCode:(id)code
{
  if (!code)
  {
    return 0;
  }

  uppercaseString = [code uppercaseString];
  if ([uppercaseString isEqualToString:@"AD"])
  {
    v4 = 6;
  }

  else if ([uppercaseString isEqualToString:@"AE"])
  {
    v4 = 222;
  }

  else if ([uppercaseString isEqualToString:@"AF"])
  {
    v4 = 1;
  }

  else if ([uppercaseString isEqualToString:@"AG"])
  {
    v4 = 10;
  }

  else if ([uppercaseString isEqualToString:@"AI"])
  {
    v4 = 8;
  }

  else if ([uppercaseString isEqualToString:@"AL"])
  {
    v4 = 3;
  }

  else if ([uppercaseString isEqualToString:@"AM"])
  {
    v4 = 12;
  }

  else if ([uppercaseString isEqualToString:@"AO"])
  {
    v4 = 7;
  }

  else if ([uppercaseString isEqualToString:@"AQ"])
  {
    v4 = 9;
  }

  else if ([uppercaseString isEqualToString:@"AR"])
  {
    v4 = 11;
  }

  else if ([uppercaseString isEqualToString:@"AS"])
  {
    v4 = 5;
  }

  else if ([uppercaseString isEqualToString:@"AT"])
  {
    v4 = 15;
  }

  else if ([uppercaseString isEqualToString:@"AU"])
  {
    v4 = 14;
  }

  else if ([uppercaseString isEqualToString:@"AW"])
  {
    v4 = 13;
  }

  else if ([uppercaseString isEqualToString:@"AX"])
  {
    v4 = 2;
  }

  else if ([uppercaseString isEqualToString:@"AZ"])
  {
    v4 = 16;
  }

  else if ([uppercaseString isEqualToString:@"BA"])
  {
    v4 = 29;
  }

  else if ([uppercaseString isEqualToString:@"BB"])
  {
    v4 = 20;
  }

  else if ([uppercaseString isEqualToString:@"BD"])
  {
    v4 = 19;
  }

  else if ([uppercaseString isEqualToString:@"BE"])
  {
    v4 = 22;
  }

  else if ([uppercaseString isEqualToString:@"BF"])
  {
    v4 = 36;
  }

  else if ([uppercaseString isEqualToString:@"BG"])
  {
    v4 = 35;
  }

  else if ([uppercaseString isEqualToString:@"BH"])
  {
    v4 = 18;
  }

  else if ([uppercaseString isEqualToString:@"BI"])
  {
    v4 = 37;
  }

  else if ([uppercaseString isEqualToString:@"BJ"])
  {
    v4 = 24;
  }

  else if ([uppercaseString isEqualToString:@"BL"])
  {
    v4 = 248;
  }

  else if ([uppercaseString isEqualToString:@"BM"])
  {
    v4 = 25;
  }

  else if ([uppercaseString isEqualToString:@"BN"])
  {
    v4 = 34;
  }

  else if ([uppercaseString isEqualToString:@"BO"])
  {
    v4 = 27;
  }

  else if ([uppercaseString isEqualToString:@"BQ"])
  {
    v4 = 28;
  }

  else if ([uppercaseString isEqualToString:@"BR"])
  {
    v4 = 32;
  }

  else if ([uppercaseString isEqualToString:@"BS"])
  {
    v4 = 17;
  }

  else if ([uppercaseString isEqualToString:@"BT"])
  {
    v4 = 26;
  }

  else if ([uppercaseString isEqualToString:@"BV"])
  {
    v4 = 31;
  }

  else if ([uppercaseString isEqualToString:@"BW"])
  {
    v4 = 30;
  }

  else if ([uppercaseString isEqualToString:@"BY"])
  {
    v4 = 21;
  }

  else if ([uppercaseString isEqualToString:@"BZ"])
  {
    v4 = 23;
  }

  else if ([uppercaseString isEqualToString:@"CA"])
  {
    v4 = 41;
  }

  else if ([uppercaseString isEqualToString:@"CC"])
  {
    v4 = 48;
  }

  else if ([uppercaseString isEqualToString:@"CD"])
  {
    v4 = 51;
  }

  else if ([uppercaseString isEqualToString:@"CF"])
  {
    v4 = 43;
  }

  else if ([uppercaseString isEqualToString:@"CG"])
  {
    v4 = 52;
  }

  else if ([uppercaseString isEqualToString:@"CH"])
  {
    v4 = 204;
  }

  else if ([uppercaseString isEqualToString:@"CI"])
  {
    v4 = 55;
  }

  else if ([uppercaseString isEqualToString:@"CK"])
  {
    v4 = 53;
  }

  else if ([uppercaseString isEqualToString:@"CL"])
  {
    v4 = 45;
  }

  else if ([uppercaseString isEqualToString:@"CM"])
  {
    v4 = 40;
  }

  else if ([uppercaseString isEqualToString:@"CN"])
  {
    v4 = 46;
  }

  else if ([uppercaseString isEqualToString:@"CO"])
  {
    v4 = 49;
  }

  else if ([uppercaseString isEqualToString:@"CR"])
  {
    v4 = 54;
  }

  else if ([uppercaseString isEqualToString:@"CU"])
  {
    v4 = 57;
  }

  else if ([uppercaseString isEqualToString:@"CV"])
  {
    v4 = 38;
  }

  else if ([uppercaseString isEqualToString:@"CW"])
  {
    v4 = 58;
  }

  else if ([uppercaseString isEqualToString:@"CX"])
  {
    v4 = 47;
  }

  else if ([uppercaseString isEqualToString:@"CY"])
  {
    v4 = 59;
  }

  else if ([uppercaseString isEqualToString:@"CZ"])
  {
    v4 = 60;
  }

  else if ([uppercaseString isEqualToString:@"DE"])
  {
    v4 = 82;
  }

  else if ([uppercaseString isEqualToString:@"DJ"])
  {
    v4 = 62;
  }

  else if ([uppercaseString isEqualToString:@"DK"])
  {
    v4 = 61;
  }

  else if ([uppercaseString isEqualToString:@"DM"])
  {
    v4 = 63;
  }

  else if ([uppercaseString isEqualToString:@"DO"])
  {
    v4 = 64;
  }

  else if ([uppercaseString isEqualToString:@"DZ"])
  {
    v4 = 4;
  }

  else if ([uppercaseString isEqualToString:@"EC"])
  {
    v4 = 238;
  }

  else if ([uppercaseString isEqualToString:@"EE"])
  {
    v4 = 68;
  }

  else if ([uppercaseString isEqualToString:@"EG"])
  {
    v4 = 65;
  }

  else if ([uppercaseString isEqualToString:@"EH"])
  {
    v4 = 234;
  }

  else if ([uppercaseString isEqualToString:@"ER"])
  {
    v4 = 67;
  }

  else if ([uppercaseString isEqualToString:@"ES"])
  {
    v4 = 198;
  }

  else if ([uppercaseString isEqualToString:@"ET"])
  {
    v4 = 70;
  }

  else if ([uppercaseString isEqualToString:@"FI"])
  {
    v4 = 74;
  }

  else if ([uppercaseString isEqualToString:@"FJ"])
  {
    v4 = 73;
  }

  else if ([uppercaseString isEqualToString:@"FK"])
  {
    v4 = 71;
  }

  else if ([uppercaseString isEqualToString:@"FM"])
  {
    v4 = 140;
  }

  else if ([uppercaseString isEqualToString:@"FO"])
  {
    v4 = 72;
  }

  else if ([uppercaseString isEqualToString:@"FR"])
  {
    v4 = 75;
  }

  else if ([uppercaseString isEqualToString:@"GA"])
  {
    v4 = 79;
  }

  else if ([uppercaseString isEqualToString:@"GB"])
  {
    v4 = 223;
  }

  else if ([uppercaseString isEqualToString:@"GD"])
  {
    v4 = 86;
  }

  else if ([uppercaseString isEqualToString:@"GE"])
  {
    v4 = 81;
  }

  else if ([uppercaseString isEqualToString:@"GF"])
  {
    v4 = 76;
  }

  else if ([uppercaseString isEqualToString:@"GG"])
  {
    v4 = 90;
  }

  else if ([uppercaseString isEqualToString:@"GH"])
  {
    v4 = 83;
  }

  else if ([uppercaseString isEqualToString:@"GI"])
  {
    v4 = 84;
  }

  else if ([uppercaseString isEqualToString:@"GL"])
  {
    v4 = 85;
  }

  else if ([uppercaseString isEqualToString:@"GM"])
  {
    v4 = 80;
  }

  else if ([uppercaseString isEqualToString:@"GN"])
  {
    v4 = 91;
  }

  else if ([uppercaseString isEqualToString:@"GP"])
  {
    v4 = 87;
  }

  else if ([uppercaseString isEqualToString:@"GQ"])
  {
    v4 = 239;
  }

  else if ([uppercaseString isEqualToString:@"GR"])
  {
    v4 = 240;
  }

  else if ([uppercaseString isEqualToString:@"GS"])
  {
    v4 = 196;
  }

  else if ([uppercaseString isEqualToString:@"GT"])
  {
    v4 = 89;
  }

  else if ([uppercaseString isEqualToString:@"GU"])
  {
    v4 = 88;
  }

  else if ([uppercaseString isEqualToString:@"GW"])
  {
    v4 = 92;
  }

  else if ([uppercaseString isEqualToString:@"GY"])
  {
    v4 = 93;
  }

  else if ([uppercaseString isEqualToString:@"HK"])
  {
    v4 = 97;
  }

  else if ([uppercaseString isEqualToString:@"HM"])
  {
    v4 = 241;
  }

  else if ([uppercaseString isEqualToString:@"HN"])
  {
    v4 = 96;
  }

  else if ([uppercaseString isEqualToString:@"HR"])
  {
    v4 = 56;
  }

  else if ([uppercaseString isEqualToString:@"HT"])
  {
    v4 = 94;
  }

  else if ([uppercaseString isEqualToString:@"HU"])
  {
    v4 = 98;
  }

  else if ([uppercaseString isEqualToString:@"ID"])
  {
    v4 = 101;
  }

  else if ([uppercaseString isEqualToString:@"IE"])
  {
    v4 = 104;
  }

  else if ([uppercaseString isEqualToString:@"IL"])
  {
    v4 = 106;
  }

  else if ([uppercaseString isEqualToString:@"IM"])
  {
    v4 = 105;
  }

  else if ([uppercaseString isEqualToString:@"IN"])
  {
    v4 = 100;
  }

  else if ([uppercaseString isEqualToString:@"IO"])
  {
    v4 = 33;
  }

  else if ([uppercaseString isEqualToString:@"IQ"])
  {
    v4 = 103;
  }

  else if ([uppercaseString isEqualToString:@"IR"])
  {
    v4 = 102;
  }

  else if ([uppercaseString isEqualToString:@"IS"])
  {
    v4 = 99;
  }

  else if ([uppercaseString isEqualToString:@"IT"])
  {
    v4 = 107;
  }

  else if ([uppercaseString isEqualToString:@"JE"])
  {
    v4 = 108;
  }

  else if ([uppercaseString isEqualToString:@"JM"])
  {
    v4 = 242;
  }

  else if ([uppercaseString isEqualToString:@"JO"])
  {
    v4 = 109;
  }

  else if ([uppercaseString isEqualToString:@"JP"])
  {
    v4 = 243;
  }

  else if ([uppercaseString isEqualToString:@"KE"])
  {
    v4 = 111;
  }

  else if ([uppercaseString isEqualToString:@"KG"])
  {
    v4 = 116;
  }

  else if ([uppercaseString isEqualToString:@"KH"])
  {
    v4 = 39;
  }

  else if ([uppercaseString isEqualToString:@"KI"])
  {
    v4 = 112;
  }

  else if ([uppercaseString isEqualToString:@"KM"])
  {
    v4 = 50;
  }

  else if ([uppercaseString isEqualToString:@"KN"])
  {
    v4 = 178;
  }

  else if ([uppercaseString isEqualToString:@"KP"])
  {
    v4 = 113;
  }

  else if ([uppercaseString isEqualToString:@"KR"])
  {
    v4 = 114;
  }

  else if ([uppercaseString isEqualToString:@"KW"])
  {
    v4 = 115;
  }

  else if ([uppercaseString isEqualToString:@"KY"])
  {
    v4 = 42;
  }

  else if ([uppercaseString isEqualToString:@"KZ"])
  {
    v4 = 110;
  }

  else if ([uppercaseString isEqualToString:@"LA"])
  {
    v4 = 117;
  }

  else if ([uppercaseString isEqualToString:@"LB"])
  {
    v4 = 119;
  }

  else if ([uppercaseString isEqualToString:@"LC"])
  {
    v4 = 179;
  }

  else if ([uppercaseString isEqualToString:@"LI"])
  {
    v4 = 123;
  }

  else if ([uppercaseString isEqualToString:@"LK"])
  {
    v4 = 199;
  }

  else if ([uppercaseString isEqualToString:@"LR"])
  {
    v4 = 121;
  }

  else if ([uppercaseString isEqualToString:@"LS"])
  {
    v4 = 120;
  }

  else if ([uppercaseString isEqualToString:@"LT"])
  {
    v4 = 124;
  }

  else if ([uppercaseString isEqualToString:@"LU"])
  {
    v4 = 125;
  }

  else if ([uppercaseString isEqualToString:@"LV"])
  {
    v4 = 118;
  }

  else if ([uppercaseString isEqualToString:@"LY"])
  {
    v4 = 122;
  }

  else if ([uppercaseString isEqualToString:@"MA"])
  {
    v4 = 146;
  }

  else if ([uppercaseString isEqualToString:@"MC"])
  {
    v4 = 142;
  }

  else if ([uppercaseString isEqualToString:@"MD"])
  {
    v4 = 141;
  }

  else if ([uppercaseString isEqualToString:@"ME"])
  {
    v4 = 144;
  }

  else if ([uppercaseString isEqualToString:@"MF"])
  {
    v4 = 180;
  }

  else if ([uppercaseString isEqualToString:@"MG"])
  {
    v4 = 128;
  }

  else if ([uppercaseString isEqualToString:@"MH"])
  {
    v4 = 134;
  }

  else if ([uppercaseString isEqualToString:@"MK"])
  {
    v4 = 127;
  }

  else if ([uppercaseString isEqualToString:@"ML"])
  {
    v4 = 132;
  }

  else if ([uppercaseString isEqualToString:@"MM"])
  {
    v4 = 148;
  }

  else if ([uppercaseString isEqualToString:@"MN"])
  {
    v4 = 143;
  }

  else if ([uppercaseString isEqualToString:@"MO"])
  {
    v4 = 126;
  }

  else if ([uppercaseString isEqualToString:@"MP"])
  {
    v4 = 245;
  }

  else if ([uppercaseString isEqualToString:@"MQ"])
  {
    v4 = 135;
  }

  else if ([uppercaseString isEqualToString:@"MR"])
  {
    v4 = 136;
  }

  else if ([uppercaseString isEqualToString:@"MS"])
  {
    v4 = 145;
  }

  else if ([uppercaseString isEqualToString:@"MT"])
  {
    v4 = 133;
  }

  else if ([uppercaseString isEqualToString:@"MU"])
  {
    v4 = 137;
  }

  else if ([uppercaseString isEqualToString:@"MV"])
  {
    v4 = 131;
  }

  else if ([uppercaseString isEqualToString:@"MW"])
  {
    v4 = 129;
  }

  else if ([uppercaseString isEqualToString:@"MX"])
  {
    v4 = 139;
  }

  else if ([uppercaseString isEqualToString:@"MY"])
  {
    v4 = 130;
  }

  else if ([uppercaseString isEqualToString:@"MZ"])
  {
    v4 = 147;
  }

  else if ([uppercaseString isEqualToString:@"NA"])
  {
    v4 = 149;
  }

  else if ([uppercaseString isEqualToString:@"NC"])
  {
    v4 = 153;
  }

  else if ([uppercaseString isEqualToString:@"NE"])
  {
    v4 = 156;
  }

  else if ([uppercaseString isEqualToString:@"NF"])
  {
    v4 = 159;
  }

  else if ([uppercaseString isEqualToString:@"NG"])
  {
    v4 = 157;
  }

  else if ([uppercaseString isEqualToString:@"NI"])
  {
    v4 = 155;
  }

  else if ([uppercaseString isEqualToString:@"NL"])
  {
    v4 = 152;
  }

  else if ([uppercaseString isEqualToString:@"NO"])
  {
    v4 = 160;
  }

  else if ([uppercaseString isEqualToString:@"NP"])
  {
    v4 = 151;
  }

  else if ([uppercaseString isEqualToString:@"NR"])
  {
    v4 = 150;
  }

  else if ([uppercaseString isEqualToString:@"NU"])
  {
    v4 = 158;
  }

  else if ([uppercaseString isEqualToString:@"NZ"])
  {
    v4 = 154;
  }

  else if ([uppercaseString isEqualToString:@"OM"])
  {
    v4 = 161;
  }

  else if ([uppercaseString isEqualToString:@"PA"])
  {
    v4 = 165;
  }

  else if ([uppercaseString isEqualToString:@"PE"])
  {
    v4 = 246;
  }

  else if ([uppercaseString isEqualToString:@"PF"])
  {
    v4 = 77;
  }

  else if ([uppercaseString isEqualToString:@"PG"])
  {
    v4 = 166;
  }

  else if ([uppercaseString isEqualToString:@"PH"])
  {
    v4 = 168;
  }

  else if ([uppercaseString isEqualToString:@"PK"])
  {
    v4 = 162;
  }

  else if ([uppercaseString isEqualToString:@"PL"])
  {
    v4 = 170;
  }

  else if ([uppercaseString isEqualToString:@"PM"])
  {
    v4 = 181;
  }

  else if ([uppercaseString isEqualToString:@"PN"])
  {
    v4 = 169;
  }

  else if ([uppercaseString isEqualToString:@"PR"])
  {
    v4 = 172;
  }

  else if ([uppercaseString isEqualToString:@"PS"])
  {
    v4 = 164;
  }

  else if ([uppercaseString isEqualToString:@"PT"])
  {
    v4 = 171;
  }

  else if ([uppercaseString isEqualToString:@"PW"])
  {
    v4 = 163;
  }

  else if ([uppercaseString isEqualToString:@"PY"])
  {
    v4 = 167;
  }

  else if ([uppercaseString isEqualToString:@"QA"])
  {
    v4 = 173;
  }

  else if ([uppercaseString isEqualToString:@"RE"])
  {
    v4 = 247;
  }

  else if ([uppercaseString isEqualToString:@"RO"])
  {
    v4 = 174;
  }

  else if ([uppercaseString isEqualToString:@"RS"])
  {
    v4 = 187;
  }

  else if ([uppercaseString isEqualToString:@"RU"])
  {
    v4 = 175;
  }

  else if ([uppercaseString isEqualToString:@"RW"])
  {
    v4 = 176;
  }

  else if ([uppercaseString isEqualToString:@"SA"])
  {
    v4 = 186;
  }

  else if ([uppercaseString isEqualToString:@"SB"])
  {
    v4 = 193;
  }

  else if ([uppercaseString isEqualToString:@"SC"])
  {
    v4 = 188;
  }

  else if ([uppercaseString isEqualToString:@"SD"])
  {
    v4 = 200;
  }

  else if ([uppercaseString isEqualToString:@"SE"])
  {
    v4 = 203;
  }

  else if ([uppercaseString isEqualToString:@"SG"])
  {
    v4 = 190;
  }

  else if ([uppercaseString isEqualToString:@"SH"])
  {
    v4 = 177;
  }

  else if ([uppercaseString isEqualToString:@"SI"])
  {
    v4 = 192;
  }

  else if ([uppercaseString isEqualToString:@"SJ"])
  {
    v4 = 202;
  }

  else if ([uppercaseString isEqualToString:@"SK"])
  {
    v4 = 191;
  }

  else if ([uppercaseString isEqualToString:@"SL"])
  {
    v4 = 189;
  }

  else if ([uppercaseString isEqualToString:@"SM"])
  {
    v4 = 184;
  }

  else if ([uppercaseString isEqualToString:@"SN"])
  {
    v4 = 249;
  }

  else if ([uppercaseString isEqualToString:@"SO"])
  {
    v4 = 194;
  }

  else if ([uppercaseString isEqualToString:@"SR"])
  {
    v4 = 201;
  }

  else if ([uppercaseString isEqualToString:@"SS"])
  {
    v4 = 197;
  }

  else if ([uppercaseString isEqualToString:@"ST"])
  {
    v4 = 185;
  }

  else if ([uppercaseString isEqualToString:@"SV"])
  {
    v4 = 66;
  }

  else if ([uppercaseString isEqualToString:@"SX"])
  {
    v4 = 250;
  }

  else if ([uppercaseString isEqualToString:@"SY"])
  {
    v4 = 205;
  }

  else if ([uppercaseString isEqualToString:@"SZ"])
  {
    v4 = 69;
  }

  else if ([uppercaseString isEqualToString:@"TC"])
  {
    v4 = 218;
  }

  else if ([uppercaseString isEqualToString:@"TD"])
  {
    v4 = 44;
  }

  else if ([uppercaseString isEqualToString:@"TF"])
  {
    v4 = 78;
  }

  else if ([uppercaseString isEqualToString:@"TG"])
  {
    v4 = 211;
  }

  else if ([uppercaseString isEqualToString:@"TH"])
  {
    v4 = 209;
  }

  else if ([uppercaseString isEqualToString:@"TJ"])
  {
    v4 = 207;
  }

  else if ([uppercaseString isEqualToString:@"TK"])
  {
    v4 = 212;
  }

  else if ([uppercaseString isEqualToString:@"TL"])
  {
    v4 = 210;
  }

  else if ([uppercaseString isEqualToString:@"TM"])
  {
    v4 = 217;
  }

  else if ([uppercaseString isEqualToString:@"TN"])
  {
    v4 = 215;
  }

  else if ([uppercaseString isEqualToString:@"TO"])
  {
    v4 = 213;
  }

  else if ([uppercaseString isEqualToString:@"TR"])
  {
    v4 = 216;
  }

  else if ([uppercaseString isEqualToString:@"TT"])
  {
    v4 = 214;
  }

  else if ([uppercaseString isEqualToString:@"TV"])
  {
    v4 = 219;
  }

  else if ([uppercaseString isEqualToString:@"TW"])
  {
    v4 = 206;
  }

  else if ([uppercaseString isEqualToString:@"TZ"])
  {
    v4 = 208;
  }

  else if ([uppercaseString isEqualToString:@"UA"])
  {
    v4 = 221;
  }

  else if ([uppercaseString isEqualToString:@"UG"])
  {
    v4 = 220;
  }

  else if ([uppercaseString isEqualToString:@"UM"])
  {
    v4 = 224;
  }

  else if ([uppercaseString isEqualToString:@"US"])
  {
    v4 = 225;
  }

  else if ([uppercaseString isEqualToString:@"UY"])
  {
    v4 = 226;
  }

  else if ([uppercaseString isEqualToString:@"UZ"])
  {
    v4 = 227;
  }

  else if ([uppercaseString isEqualToString:@"VA"])
  {
    v4 = 95;
  }

  else if ([uppercaseString isEqualToString:@"VC"])
  {
    v4 = 182;
  }

  else if ([uppercaseString isEqualToString:@"VE"])
  {
    v4 = 229;
  }

  else if ([uppercaseString isEqualToString:@"VG"])
  {
    v4 = 231;
  }

  else if ([uppercaseString isEqualToString:@"VI"])
  {
    v4 = 232;
  }

  else if ([uppercaseString isEqualToString:@"VN"])
  {
    v4 = 230;
  }

  else if ([uppercaseString isEqualToString:@"VU"])
  {
    v4 = 228;
  }

  else if ([uppercaseString isEqualToString:@"WF"])
  {
    v4 = 233;
  }

  else if ([uppercaseString isEqualToString:@"WS"])
  {
    v4 = 183;
  }

  else if ([uppercaseString isEqualToString:@"XK"])
  {
    v4 = 244;
  }

  else if ([uppercaseString isEqualToString:@"YE"])
  {
    v4 = 235;
  }

  else if ([uppercaseString isEqualToString:@"YT"])
  {
    v4 = 138;
  }

  else if ([uppercaseString isEqualToString:@"ZA"])
  {
    v4 = 195;
  }

  else if ([uppercaseString isEqualToString:@"ZM"])
  {
    v4 = 236;
  }

  else if ([uppercaseString isEqualToString:@"ZW"])
  {
    v4 = 237;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)convertLanguageCodeToSchemaLocale:(id)locale
{
  if (!locale)
  {
    return 0;
  }

  uppercaseString = [locale uppercaseString];
  if ([uppercaseString isEqualToString:@"AR-AE"])
  {
    v4 = 1;
  }

  else if ([uppercaseString isEqualToString:@"AR-SA"])
  {
    v4 = 2;
  }

  else if ([uppercaseString isEqualToString:@"CA-ES"])
  {
    v4 = 3;
  }

  else if ([uppercaseString isEqualToString:@"CS-CZ"])
  {
    v4 = 4;
  }

  else if ([uppercaseString isEqualToString:@"DA-DK"])
  {
    v4 = 5;
  }

  else if ([uppercaseString isEqualToString:@"DE-AT"])
  {
    v4 = 6;
  }

  else if ([uppercaseString isEqualToString:@"DE-CH"])
  {
    v4 = 7;
  }

  else if ([uppercaseString isEqualToString:@"DE-DE"])
  {
    v4 = 8;
  }

  else if ([uppercaseString isEqualToString:@"EL-GR"])
  {
    v4 = 9;
  }

  else if ([uppercaseString isEqualToString:@"EN-AE"])
  {
    v4 = 10;
  }

  else if ([uppercaseString isEqualToString:@"EN-AU"])
  {
    v4 = 11;
  }

  else if ([uppercaseString isEqualToString:@"EN-CA"])
  {
    v4 = 12;
  }

  else if ([uppercaseString isEqualToString:@"EN-GB"])
  {
    v4 = 13;
  }

  else if ([uppercaseString isEqualToString:@"EN-ID"])
  {
    v4 = 14;
  }

  else if ([uppercaseString isEqualToString:@"EN-IE"])
  {
    v4 = 15;
  }

  else if ([uppercaseString isEqualToString:@"EN-IN"])
  {
    v4 = 16;
  }

  else if ([uppercaseString isEqualToString:@"EN-MY"])
  {
    v4 = 17;
  }

  else if ([uppercaseString isEqualToString:@"EN-NZ"])
  {
    v4 = 18;
  }

  else if ([uppercaseString isEqualToString:@"EN-PH"])
  {
    v4 = 19;
  }

  else if ([uppercaseString isEqualToString:@"EN-SA"])
  {
    v4 = 21;
  }

  else if ([uppercaseString isEqualToString:@"EN-SG"])
  {
    v4 = 20;
  }

  else if ([uppercaseString isEqualToString:@"EN-US"])
  {
    v4 = 22;
  }

  else if ([uppercaseString isEqualToString:@"EN-ZA"])
  {
    v4 = 23;
  }

  else if ([uppercaseString isEqualToString:@"ES-CL"])
  {
    v4 = 24;
  }

  else if ([uppercaseString isEqualToString:@"ES-CO"])
  {
    v4 = 25;
  }

  else if ([uppercaseString isEqualToString:@"ES-ES"])
  {
    v4 = 26;
  }

  else if ([uppercaseString isEqualToString:@"ES-MX"])
  {
    v4 = 27;
  }

  else if ([uppercaseString isEqualToString:@"ES-US"])
  {
    v4 = 28;
  }

  else if ([uppercaseString isEqualToString:@"FI-FI"])
  {
    v4 = 29;
  }

  else if ([uppercaseString isEqualToString:@"FR-BE"])
  {
    v4 = 30;
  }

  else if ([uppercaseString isEqualToString:@"FR-CA"])
  {
    v4 = 31;
  }

  else if ([uppercaseString isEqualToString:@"FR-CH"])
  {
    v4 = 32;
  }

  else if ([uppercaseString isEqualToString:@"FR-FR"])
  {
    v4 = 33;
  }

  else if ([uppercaseString isEqualToString:@"HE-IL"])
  {
    v4 = 34;
  }

  else if ([uppercaseString isEqualToString:@"HI-IN"])
  {
    v4 = 35;
  }

  else if ([uppercaseString isEqualToString:@"HR-HR"])
  {
    v4 = 36;
  }

  else if ([uppercaseString isEqualToString:@"HU-HU"])
  {
    v4 = 37;
  }

  else if ([uppercaseString isEqualToString:@"ID-ID"])
  {
    v4 = 38;
  }

  else if ([uppercaseString isEqualToString:@"IT-CH"])
  {
    v4 = 39;
  }

  else if ([uppercaseString isEqualToString:@"IT-IT"])
  {
    v4 = 40;
  }

  else if ([uppercaseString isEqualToString:@"JA-JP"])
  {
    v4 = 41;
  }

  else if ([uppercaseString isEqualToString:@"KO-KR"])
  {
    v4 = 42;
  }

  else if ([uppercaseString isEqualToString:@"MS-MY"])
  {
    v4 = 43;
  }

  else if ([uppercaseString isEqualToString:@"NB-NO"])
  {
    v4 = 44;
  }

  else if ([uppercaseString isEqualToString:@"NL-BE"])
  {
    v4 = 45;
  }

  else if ([uppercaseString isEqualToString:@"NL-NL"])
  {
    v4 = 46;
  }

  else if ([uppercaseString isEqualToString:@"PL-PL"])
  {
    v4 = 47;
  }

  else if ([uppercaseString isEqualToString:@"PT-BR"])
  {
    v4 = 48;
  }

  else if ([uppercaseString isEqualToString:@"PT-PT"])
  {
    v4 = 49;
  }

  else if ([uppercaseString isEqualToString:@"RO-RO"])
  {
    v4 = 50;
  }

  else if ([uppercaseString isEqualToString:@"RU-RU"])
  {
    v4 = 51;
  }

  else if ([uppercaseString isEqualToString:@"SK-SK"])
  {
    v4 = 52;
  }

  else if ([uppercaseString isEqualToString:@"SV-SE"])
  {
    v4 = 53;
  }

  else if ([uppercaseString isEqualToString:@"TH-TH"])
  {
    v4 = 54;
  }

  else if ([uppercaseString isEqualToString:@"TR-TR"])
  {
    v4 = 55;
  }

  else if ([uppercaseString isEqualToString:@"UK-UA"])
  {
    v4 = 56;
  }

  else if ([uppercaseString isEqualToString:@"VI-VN"])
  {
    v4 = 57;
  }

  else if ([uppercaseString isEqualToString:@"WUU-CN"])
  {
    v4 = 58;
  }

  else if ([uppercaseString isEqualToString:@"YUE-CN"])
  {
    v4 = 59;
  }

  else if ([uppercaseString isEqualToString:@"ZH-CN"])
  {
    v4 = 60;
  }

  else if ([uppercaseString isEqualToString:@"ZH-HK"])
  {
    v4 = 61;
  }

  else if ([uppercaseString isEqualToString:@"ZH-TW"])
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