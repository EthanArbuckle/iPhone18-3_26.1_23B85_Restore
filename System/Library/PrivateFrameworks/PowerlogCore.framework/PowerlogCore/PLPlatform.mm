@interface PLPlatform
+ (BOOL)carrierBuild;
+ (BOOL)hasANE;
+ (BOOL)hasAOD;
+ (BOOL)hasAOP;
+ (BOOL)hasAOP2;
+ (BOOL)hasAOT;
+ (BOOL)hasCapability:(int)a3;
+ (BOOL)hasDCP;
+ (BOOL)hasGenerativeModelSystems;
+ (BOOL)hasLPEM;
+ (BOOL)hasNFC;
+ (BOOL)hasOLED;
+ (BOOL)hasProximitySensor;
+ (BOOL)hasSleepMedia;
+ (BOOL)internalBuild;
+ (BOOL)is64Bit;
+ (BOOL)isAppleTV;
+ (BOOL)isBasebandDSDS;
+ (BOOL)isBasebandDale;
+ (BOOL)isBasebandIBIS;
+ (BOOL)isBasebandIce;
+ (BOOL)isBasebandMav;
+ (BOOL)isBasebandMavLeg;
+ (BOOL)isBasebandMavToAllowSysdiagnoseTrigger;
+ (BOOL)isBasebandProto;
+ (BOOL)isDeviceClassName:(id)a3;
+ (BOOL)isUsingAnOlderWifiChip;
+ (BOOL)isWatch;
+ (BOOL)isiOS;
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (BOOL)isiPod;
+ (BOOL)kPLXIsOneOf:(int)a3 firstArg:(int)a4 restOfArgs:(char *)a5;
+ (BOOL)nonUIBuild;
+ (id)kPLDeviceClassName;
+ (id)kPLDeviceMap;
+ (id)kPLPlatformAttributes;
+ (int)kPLAudioClassOfDevice;
+ (int)kPLBasebandClassOfDevice;
+ (int)kPLCameraClassOfDevice;
+ (int)kPLDeviceClass;
+ (int)kPLDisplayClassOfDevice;
+ (int)kPLGPSClassOfDevice;
+ (int)kPLSoCClassOfDevice;
+ (int)kPLTorchClassOfDevice;
+ (int)kPLWiFiClassOfDevice;
@end

@implementation PLPlatform

+ (BOOL)hasAOD
{
  if (hasAOD_onceToken != -1)
  {
    +[PLPlatform hasAOD];
  }

  return hasAOD_result;
}

+ (BOOL)hasDCP
{
  if (hasDCP_onceToken != -1)
  {
    +[PLPlatform hasDCP];
  }

  return hasDCP_isDCPSupported;
}

+ (BOOL)isiOS
{
  if (isiOS_onceToken != -1)
  {
    +[PLPlatform isiOS];
  }

  return isiOS_isiOS;
}

+ (BOOL)internalBuild
{
  if (internalBuild_onceToken != -1)
  {
    +[PLPlatform internalBuild];
  }

  return internalBuild_result != 0;
}

+ (int)kPLDeviceClass
{
  v2 = [a1 kPLPlatformAttributes];
  v3 = [v2 objectAtIndexedSubscript:2];
  v4 = [v3 intValue];

  return v4;
}

+ (BOOL)isiPod
{
  if (isiPod_onceToken != -1)
  {
    +[PLPlatform isiPod];
  }

  return isiPod_isiPod;
}

+ (id)kPLPlatformAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PLPlatform_kPLPlatformAttributes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (kPLPlatformAttributes_onceToken != -1)
  {
    dispatch_once(&kPLPlatformAttributes_onceToken, block);
  }

  v2 = kPLPlatformAttributes_deviceInfo;

  return v2;
}

+ (BOOL)isBasebandMav
{
  if (isBasebandMav_onceToken != -1)
  {
    +[PLPlatform isBasebandMav];
  }

  return isBasebandMav_result;
}

+ (BOOL)isiPhone
{
  if (isiPhone_onceToken != -1)
  {
    +[PLPlatform isiPhone];
  }

  return isiPhone_isiPhone;
}

+ (int)kPLSoCClassOfDevice
{
  v2 = [a1 kPLPlatformAttributes];
  v3 = [v2 objectAtIndexedSubscript:3];
  v4 = [v3 intValue];

  return v4;
}

+ (BOOL)hasGenerativeModelSystems
{
  if (hasGenerativeModelSystems_onceToken != -1)
  {
    +[PLPlatform hasGenerativeModelSystems];
  }

  return hasGenerativeModelSystems_supportsGMS;
}

+ (BOOL)isUsingAnOlderWifiChip
{
  if (isUsingAnOlderWifiChip_onceToken != -1)
  {
    +[PLPlatform isUsingAnOlderWifiChip];
  }

  return isUsingAnOlderWifiChip_result;
}

+ (int)kPLWiFiClassOfDevice
{
  v2 = [a1 kPLPlatformAttributes];
  v3 = [v2 objectAtIndexedSubscript:6];
  v4 = [v3 intValue];

  return v4;
}

+ (BOOL)isiPad
{
  if (isiPad_onceToken != -1)
  {
    +[PLPlatform isiPad];
  }

  return isiPad_isiPad;
}

+ (BOOL)hasAOT
{
  if (hasAOT_onceToken != -1)
  {
    +[PLPlatform hasAOT];
  }

  return hasAOT_result;
}

+ (int)kPLBasebandClassOfDevice
{
  v2 = [a1 kPLPlatformAttributes];
  v3 = [v2 objectAtIndexedSubscript:5];
  v4 = [v3 intValue];

  return v4;
}

+ (BOOL)isBasebandProto
{
  if (isBasebandProto_onceToken != -1)
  {
    +[PLPlatform isBasebandProto];
  }

  return isBasebandProto_result;
}

+ (BOOL)isBasebandDSDS
{
  if (isBasebandDSDS_onceToken != -1)
  {
    +[PLPlatform isBasebandDSDS];
  }

  return isBasebandDSDS_result;
}

+ (id)kPLDeviceMap
{
  v1191[149] = *MEMORY[0x1E69E9840];
  v1189 = 1602014129;
  v1188 = xmmword_1D86FA788;
  v718 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1190[0] = v718;
  v1190[1] = @"J71";
  v717 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1190 count:2];
  v716 = [a1 wrapDeviceArgumentsInArray:{100004, 1001003, 1002002, 0xFFFFFFFFLL, 1004003, 1005010, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v715 = [v717 arrayByAddingObjectsFromArray:v716];
  v714 = [v715 copy];
  v1191[0] = v714;
  v1186 = -810116762;
  v1185 = xmmword_1D86FA79C;
  v713 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1187[0] = v713;
  v1187[1] = @"J72";
  v712 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1187 count:2];
  v711 = [a1 wrapDeviceArgumentsInArray:{100005, 1001003, 1002002, 1003002, 1004003, 1005010, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v710 = [v712 arrayByAddingObjectsFromArray:v711];
  v709 = [v710 copy];
  v1191[1] = v709;
  v1183 = -1195351767;
  v1182 = xmmword_1D86FA7B0;
  v708 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1184[0] = v708;
  v1184[1] = @"J73";
  v707 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1184 count:2];
  v706 = [a1 wrapDeviceArgumentsInArray:{100006, 1001003, 1002002, 1003002, 1004003, 1005010, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v705 = [v707 arrayByAddingObjectsFromArray:v706];
  v704 = [v705 copy];
  v1191[2] = v704;
  v1180 = -1639077591;
  v1179 = xmmword_1D86FA7C4;
  v703 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1181[0] = v703;
  v1181[1] = @"J81";
  v702 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1181 count:2];
  v701 = [a1 wrapDeviceArgumentsInArray:{100007, 1001005, 1002003, 0xFFFFFFFFLL, 1004005, 1005002, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v700 = [v702 arrayByAddingObjectsFromArray:v701];
  v699 = [v700 copy];
  v1191[3] = v699;
  v1177 = 338555555;
  v1176 = xmmword_1D86FA7D8;
  v698 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1178[0] = v698;
  v1178[1] = @"J82";
  v697 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1178 count:2];
  v696 = [a1 wrapDeviceArgumentsInArray:{100008, 1001005, 1002003, 1003003, 1004005, 1005002, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v695 = [v697 arrayByAddingObjectsFromArray:v696];
  v694 = [v695 copy];
  v1191[4] = v694;
  v1174 = 1789837692;
  v1173 = xmmword_1D86FA7EC;
  v693 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1175[0] = v693;
  v1175[1] = @"J85";
  v692 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1175 count:2];
  v691 = [a1 wrapDeviceArgumentsInArray:{100010, 1001003, 1002004, 0xFFFFFFFFLL, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v690 = [v692 arrayByAddingObjectsFromArray:v691];
  v689 = [v690 copy];
  v1191[5] = v689;
  v1171 = -1239654590;
  v1170 = xmmword_1D86FA800;
  v688 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1172[0] = v688;
  v1172[1] = @"J86";
  v687 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1172 count:2];
  v686 = [a1 wrapDeviceArgumentsInArray:{100011, 1001003, 1002004, 1003002, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v685 = [v687 arrayByAddingObjectsFromArray:v686];
  v684 = [v685 copy];
  v1191[6] = v684;
  v1168 = -1579092758;
  v1167 = xmmword_1D86FA814;
  v683 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1169[0] = v683;
  v1169[1] = @"J87";
  v682 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1169 count:2];
  v681 = [a1 wrapDeviceArgumentsInArray:{100012, 1001003, 1002004, 1003002, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v680 = [v682 arrayByAddingObjectsFromArray:v681];
  v679 = [v680 copy];
  v1191[7] = v679;
  v1165 = 48355600;
  v1164 = xmmword_1D86FA828;
  v678 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1166[0] = v678;
  v1166[1] = @"J85M";
  v677 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1166 count:2];
  v676 = [a1 wrapDeviceArgumentsInArray:{100013, 1001003, 1002004, 0xFFFFFFFFLL, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v675 = [v677 arrayByAddingObjectsFromArray:v676];
  v674 = [v675 copy];
  v1191[8] = v674;
  v1162 = -679691073;
  v1161 = xmmword_1D86FA83C;
  v673 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1163[0] = v673;
  v1163[1] = @"J86M";
  v672 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1163 count:2];
  v671 = [a1 wrapDeviceArgumentsInArray:{100014, 1001003, 1002004, 1003002, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v670 = [v672 arrayByAddingObjectsFromArray:v671];
  v669 = [v670 copy];
  v1191[9] = v669;
  v1159 = 1430379884;
  v1158 = xmmword_1D86FA850;
  v668 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1160[0] = v668;
  v1160[1] = @"J87M";
  v667 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1160 count:2];
  v666 = [a1 wrapDeviceArgumentsInArray:{100015, 1001003, 1002004, 1003002, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v665 = [v667 arrayByAddingObjectsFromArray:v666];
  v664 = [v665 copy];
  v1191[10] = v664;
  v1156 = 1032708406;
  v1155 = xmmword_1D86FA864;
  v663 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1157[0] = v663;
  v1157[1] = @"J96";
  v662 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1157 count:2];
  v661 = [a1 wrapDeviceArgumentsInArray:{100016, 1001004, 1002004, 0xFFFFFFFFLL, 1004005, 1005003, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v660 = [v662 arrayByAddingObjectsFromArray:v661];
  v659 = [v660 copy];
  v1191[11] = v659;
  v1153 = 729903963;
  v1152 = xmmword_1D86FA878;
  v658 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1154[0] = v658;
  v1154[1] = @"J97";
  v657 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1154 count:2];
  v656 = [a1 wrapDeviceArgumentsInArray:{100017, 1001004, 1002004, 1003003, 1004005, 1005003, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v655 = [v657 arrayByAddingObjectsFromArray:v656];
  v654 = [v655 copy];
  v1191[12] = v654;
  v1150 = 1275676051;
  v1149 = xmmword_1D86FA88C;
  v653 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1151[0] = v653;
  v1151[1] = @"J98A";
  v652 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1151 count:2];
  v651 = [a1 wrapDeviceArgumentsInArray:{100018, 1001007, 1002005, 0xFFFFFFFFLL, 1004005, 1005005, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v650 = [v652 arrayByAddingObjectsFromArray:v651];
  v649 = [v650 copy];
  v1191[13] = v649;
  v1147 = 1908474541;
  v1146 = xmmword_1D86FA8A0;
  v648 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1148[0] = v648;
  v1148[1] = @"J99A";
  v647 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1148 count:2];
  v646 = [a1 wrapDeviceArgumentsInArray:{100019, 1001007, 1002005, 1003003, 1004005, 1005005, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v645 = [v647 arrayByAddingObjectsFromArray:v646];
  v644 = [v645 copy];
  v1191[14] = v644;
  v1144 = -1527788847;
  v1143 = xmmword_1D86FA8B4;
  v643 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1145[0] = v643;
  v1145[1] = @"J127";
  v642 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1145 count:2];
  v641 = [a1 wrapDeviceArgumentsInArray:{100020, 1001007, 1002006, 0xFFFFFFFFLL, 1004007, 1005004, 1006006, 1007004, 0xFFFFFFFFLL, 0}];
  v640 = [v642 arrayByAddingObjectsFromArray:v641];
  v639 = [v640 copy];
  v1191[15] = v639;
  v1141 = 1532898719;
  v1140 = xmmword_1D86FA8C8;
  v638 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1142[0] = v638;
  v1142[1] = @"J128";
  v637 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1142 count:2];
  v636 = [a1 wrapDeviceArgumentsInArray:{100021, 1001007, 1002006, 1003004, 1004007, 1005004, 1006006, 1007004, 1008001, 0}];
  v635 = [v637 arrayByAddingObjectsFromArray:v636];
  v634 = [v635 copy];
  v1191[16] = v634;
  v1138 = -199226823;
  v1137 = xmmword_1D86FA8DC;
  v633 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1139[0] = v633;
  v1139[1] = @"J71N";
  v632 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1139 count:2];
  v631 = [a1 wrapDeviceArgumentsInArray:{100022, 1001006, 1002002, 0xFFFFFFFFLL, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v630 = [v632 arrayByAddingObjectsFromArray:v631];
  v629 = [v630 copy];
  v1191[17] = v629;
  v1135 = -1283070668;
  v1134 = xmmword_1D86FA8F0;
  v628 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1136[0] = v628;
  v1136[1] = @"J72N";
  v627 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1136 count:2];
  v626 = [a1 wrapDeviceArgumentsInArray:{100023, 1001006, 1002002, 1003003, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v625 = [v627 arrayByAddingObjectsFromArray:v626];
  v624 = [v625 copy];
  v1191[18] = v624;
  v1132 = 1412427398;
  v1131 = xmmword_1D86FA904;
  v623 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1133[0] = v623;
  v1133[1] = @"J71N";
  v622 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1133 count:2];
  v621 = [a1 wrapDeviceArgumentsInArray:{100024, 1001006, 1002002, 0xFFFFFFFFLL, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v620 = [v622 arrayByAddingObjectsFromArray:v621];
  v619 = [v620 copy];
  v1191[19] = v619;
  v1129 = 160260070;
  v1128 = xmmword_1D86FA918;
  v618 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1130[0] = v618;
  v1130[1] = @"J72N";
  v617 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1130 count:2];
  v616 = [a1 wrapDeviceArgumentsInArray:{100025, 1001006, 1002002, 1003003, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v615 = [v617 arrayByAddingObjectsFromArray:v616];
  v614 = [v615 copy];
  v1191[20] = v614;
  v1126 = -1022451852;
  v1125 = xmmword_1D86FA92C;
  v613 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1127[0] = v613;
  v1127[1] = @"J98N";
  v612 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1127 count:2];
  v611 = [a1 wrapDeviceArgumentsInArray:{100026, 1001009, 1002017, 0xFFFFFFFFLL, 1004007, 1005007, 1006006, 1007004, 0xFFFFFFFFLL, 0}];
  v610 = [v612 arrayByAddingObjectsFromArray:v611];
  v609 = [v610 copy];
  v1191[21] = v609;
  v1123 = 1729782187;
  v1122 = xmmword_1D86FA940;
  v608 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1124[0] = v608;
  v1124[1] = @"J99N";
  v607 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1124 count:2];
  v606 = [a1 wrapDeviceArgumentsInArray:{100027, 1001009, 1002017, 1003005, 1004007, 1005007, 1006006, 1007004, 1008001, 0}];
  v605 = [v607 arrayByAddingObjectsFromArray:v606];
  v604 = [v605 copy];
  v1191[22] = v604;
  v1120 = 996646949;
  v1119 = xmmword_1D86FA954;
  v603 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1121[0] = v603;
  v1121[1] = @"J127N";
  v602 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1121 count:2];
  v601 = [a1 wrapDeviceArgumentsInArray:{100028, 1001009, 1002018, 0xFFFFFFFFLL, 1004007, 1005008, 1006006, 1007004, 0xFFFFFFFFLL, 0}];
  v600 = [v602 arrayByAddingObjectsFromArray:v601];
  v599 = [v600 copy];
  v1191[23] = v599;
  v1117 = -563086000;
  v1116 = xmmword_1D86FA968;
  v598 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1118[0] = v598;
  v1118[1] = @"J128N";
  v597 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1118 count:2];
  v596 = [a1 wrapDeviceArgumentsInArray:{100029, 1001009, 1002018, 1003005, 1004007, 1005008, 1006006, 1007004, 1008001, 0}];
  v595 = [v597 arrayByAddingObjectsFromArray:v596];
  v594 = [v595 copy];
  v1191[24] = v594;
  v1114 = 317289457;
  v1113 = xmmword_1D86FA97C;
  v593 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1115[0] = v593;
  v1115[1] = @"J71NM";
  v592 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1115 count:2];
  v591 = [a1 wrapDeviceArgumentsInArray:{100030, 1001008, 1002002, 0xFFFFFFFFLL, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v590 = [v592 arrayByAddingObjectsFromArray:v591];
  v589 = [v590 copy];
  v1191[25] = v589;
  v1111 = 401945557;
  v1110 = xmmword_1D86FA990;
  v588 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1112[0] = v588;
  v1112[1] = @"J72NM";
  v587 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1112 count:2];
  v586 = [a1 wrapDeviceArgumentsInArray:{100031, 1001008, 1002002, 1003004, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v585 = [v587 arrayByAddingObjectsFromArray:v586];
  v584 = [v585 copy];
  v1191[26] = v584;
  v1108 = 2030516999;
  v1107 = xmmword_1D86FA9A4;
  v583 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1109[0] = v583;
  v1109[1] = @"J120N";
  v582 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1109 count:2];
  v581 = [a1 wrapDeviceArgumentsInArray:{100032, 1001012, 1002027, 0xFFFFFFFFLL, 1004013, 1005006, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v580 = [v582 arrayByAddingObjectsFromArray:v581];
  v579 = [v580 copy];
  v1191[27] = v579;
  v1105 = -1276010597;
  v1104 = xmmword_1D86FA9B8;
  v578 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1106[0] = v578;
  v1106[1] = @"J120N";
  v577 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1106 count:2];
  v576 = [a1 wrapDeviceArgumentsInArray:{100033, 1001012, 1002027, 0xFFFFFFFFLL, 1004013, 1005006, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v575 = [v577 arrayByAddingObjectsFromArray:v576];
  v574 = [v575 copy];
  v1191[28] = v574;
  v1102 = -762483149;
  v1101 = xmmword_1D86FA9CC;
  v573 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1103[0] = v573;
  v1103[1] = @"J121N";
  v572 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1103 count:2];
  v571 = [a1 wrapDeviceArgumentsInArray:{100034, 1001012, 1002027, 1003010, 1004013, 1005006, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v570 = [v572 arrayByAddingObjectsFromArray:v571];
  v569 = [v570 copy];
  v1191[29] = v569;
  v1099 = -1926937532;
  v1098 = xmmword_1D86FA9E0;
  v568 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1100[0] = v568;
  v1100[1] = @"J121N";
  v567 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1100 count:2];
  v566 = [a1 wrapDeviceArgumentsInArray:{100035, 1001012, 1002027, 1003010, 1004013, 1005006, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v565 = [v567 arrayByAddingObjectsFromArray:v566];
  v564 = [v565 copy];
  v1191[30] = v564;
  v1096 = -1902732724;
  v1095 = xmmword_1D86FA9F4;
  v563 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1097[0] = v563;
  v1097[1] = @"J120NM";
  v562 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1097 count:2];
  v561 = [a1 wrapDeviceArgumentsInArray:{100036, 1001012, 1002028, 0xFFFFFFFFLL, 1004013, 1005024, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v560 = [v562 arrayByAddingObjectsFromArray:v561];
  v559 = [v560 copy];
  v1191[31] = v559;
  v1093 = -342357580;
  v1092 = xmmword_1D86FAA08;
  v558 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1094[0] = v558;
  v1094[1] = @"J120NM";
  v557 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1094 count:2];
  v556 = [a1 wrapDeviceArgumentsInArray:{100037, 1001012, 1002028, 0xFFFFFFFFLL, 1004013, 1005024, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v555 = [v557 arrayByAddingObjectsFromArray:v556];
  v554 = [v555 copy];
  v1191[32] = v554;
  v1090 = 300442574;
  v1089 = xmmword_1D86FAA1C;
  v553 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1091[0] = v553;
  v1091[1] = @"J121NM";
  v552 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1091 count:2];
  v551 = [a1 wrapDeviceArgumentsInArray:{100038, 1001012, 1002028, 1003010, 1004013, 1005024, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v550 = [v552 arrayByAddingObjectsFromArray:v551];
  v549 = [v550 copy];
  v1191[33] = v549;
  v1087 = -1294188889;
  v1086 = xmmword_1D86FAA30;
  v548 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1088[0] = v548;
  v1088[1] = @"J121NM";
  v547 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1088 count:2];
  v546 = [a1 wrapDeviceArgumentsInArray:{100039, 1001012, 1002028, 1003010, 1004013, 1005024, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v545 = [v547 arrayByAddingObjectsFromArray:v546];
  v544 = [v545 copy];
  v1191[34] = v544;
  v1084 = 1278131292;
  v1083 = xmmword_1D86FAA44;
  v543 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1085[0] = v543;
  v1085[1] = @"J96NM";
  v542 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1085 count:2];
  v541 = [a1 wrapDeviceArgumentsInArray:{100040, 1001011, 1002004, 0xFFFFFFFFLL, 1004013, 1005003, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v540 = [v542 arrayByAddingObjectsFromArray:v541];
  v539 = [v540 copy];
  v1191[35] = v539;
  v1081 = -1841712216;
  v1080 = xmmword_1D86FAA58;
  v538 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1082[0] = v538;
  v1082[1] = @"J97NM";
  v537 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1082 count:2];
  v536 = [a1 wrapDeviceArgumentsInArray:{100041, 1001011, 1002004, 1003010, 1004013, 1005003, 1006006, 0xFFFFFFFFLL, 1008002, 0}];
  v535 = [v537 arrayByAddingObjectsFromArray:v536];
  v534 = [v535 copy];
  v1191[36] = v534;
  v1078 = 659506830;
  v1077 = xmmword_1D86FAA6C;
  v533 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1079[0] = v533;
  v1079[1] = @"J207N";
  v532 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1079 count:2];
  v531 = [a1 wrapDeviceArgumentsInArray:{100042, 1001011, 1002018, 0xFFFFFFFFLL, 1004013, 1005024, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v530 = [v532 arrayByAddingObjectsFromArray:v531];
  v529 = [v530 copy];
  v1191[37] = v529;
  v1075 = 213746202;
  v1074 = xmmword_1D86FAA80;
  v528 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1076[0] = v528;
  v1076[1] = @"J208N";
  v527 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1076 count:2];
  v526 = [a1 wrapDeviceArgumentsInArray:{100043, 1001011, 1002018, 1003010, 1004013, 1005024, 1006006, 0xFFFFFFFFLL, 1008002, 0}];
  v525 = [v527 arrayByAddingObjectsFromArray:v526];
  v524 = [v525 copy];
  v1191[38] = v524;
  v1072 = -1157300313;
  v1071 = xmmword_1D86FAA94;
  v523 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1073[0] = v523;
  v1073[1] = @"J71C";
  v522 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1073 count:2];
  v521 = [a1 wrapDeviceArgumentsInArray:{100044, 1001008, 1002018, 0xFFFFFFFFLL, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v520 = [v522 arrayByAddingObjectsFromArray:v521];
  v519 = [v520 copy];
  v1191[39] = v519;
  v1069 = -2132668294;
  v1068 = xmmword_1D86FAAA8;
  v518 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1070[0] = v518;
  v1070[1] = @"J72C";
  v517 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1070 count:2];
  v516 = [a1 wrapDeviceArgumentsInArray:{100045, 1001008, 1002018, 1003010, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 1008002, 0}];
  v515 = [v517 arrayByAddingObjectsFromArray:v516];
  v514 = [v515 copy];
  v1191[40] = v514;
  v1066 = 1126727276;
  v1065 = xmmword_1D86FAABC;
  v513 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1067[0] = v513;
  v1067[1] = @"J317N";
  v512 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1067 count:2];
  v511 = [a1 wrapDeviceArgumentsInArray:{100046, 1001012, 1002027, 0xFFFFFFFFLL, 1004014, 1005006, 1006009, 0xFFFFFFFFLL, 1008002, 0}];
  v510 = [v512 arrayByAddingObjectsFromArray:v511];
  v509 = [v510 copy];
  v1191[41] = v509;
  v1063 = 300130091;
  v1062 = xmmword_1D86FAAD0;
  v508 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1064[0] = v508;
  v1064[1] = @"J318N";
  v507 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1064 count:2];
  v506 = [a1 wrapDeviceArgumentsInArray:{100047, 1001012, 1002027, 1003011, 1004014, 1005006, 1006009, 0xFFFFFFFFLL, 1008002, 0}];
  v505 = [v507 arrayByAddingObjectsFromArray:v506];
  v504 = [v505 copy];
  v1191[42] = v504;
  v1060 = 343814884;
  v1059 = xmmword_1D86FAAE4;
  v503 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1061[0] = v503;
  v1061[1] = @"J320N";
  v502 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1061 count:2];
  v501 = [a1 wrapDeviceArgumentsInArray:{100048, 1001012, 1002028, 0xFFFFFFFFLL, 1004014, 1005006, 1006009, 0xFFFFFFFFLL, 1008002, 0}];
  v500 = [v502 arrayByAddingObjectsFromArray:v501];
  v499 = [v500 copy];
  v1191[43] = v499;
  v1057 = -1675932945;
  v1056 = xmmword_1D86FAAF8;
  v498 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1058[0] = v498;
  v1058[1] = @"J321N";
  v497 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1058 count:2];
  v496 = [a1 wrapDeviceArgumentsInArray:{100049, 1001012, 1002028, 1003011, 1004014, 1005006, 1006009, 0xFFFFFFFFLL, 1008002, 0}];
  v495 = [v497 arrayByAddingObjectsFromArray:v496];
  v494 = [v495 copy];
  v1191[44] = v494;
  v1054 = 372777383;
  v1053 = xmmword_1D86FAB0C;
  v493 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1055[0] = v493;
  v1055[1] = @"J71D";
  v492 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1055 count:2];
  v491 = [a1 wrapDeviceArgumentsInArray:{100050, 1001011, 1002018, 0xFFFFFFFFLL, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v490 = [v492 arrayByAddingObjectsFromArray:v491];
  v489 = [v490 copy];
  v1191[45] = v489;
  v1051 = -858079590;
  v1050 = xmmword_1D86FAB20;
  v488 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1052[0] = v488;
  v1052[1] = @"J72D";
  v487 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1052 count:2];
  v486 = [a1 wrapDeviceArgumentsInArray:{100051, 1001011, 1002018, 1003010, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 1008002, 0}];
  v485 = [v487 arrayByAddingObjectsFromArray:v486];
  v484 = [v485 copy];
  v1191[46] = v484;
  v1048 = 345196535;
  v1047 = xmmword_1D86FAB34;
  v483 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1049[0] = v483;
  v1049[1] = @"J127NM";
  v482 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1049 count:2];
  v481 = [a1 wrapDeviceArgumentsInArray:{100052, 1001014, 1002031, 0xFFFFFFFFLL, 1004015, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v480 = [v482 arrayByAddingObjectsFromArray:v481];
  v479 = [v480 copy];
  v1191[47] = v479;
  v1045 = 440949464;
  v1044 = xmmword_1D86FAB48;
  v478 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1046[0] = v478;
  v1046[1] = @"J128NM";
  v477 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1046 count:2];
  v476 = [a1 wrapDeviceArgumentsInArray:{100053, 1001014, 1002031, 1003011, 1004015, 1005006, 1006006, 0xFFFFFFFFLL, 1008002, 0}];
  v475 = [v477 arrayByAddingObjectsFromArray:v476];
  v474 = [v475 copy];
  v1191[48] = v474;
  v1042 = -695298128;
  v1041 = xmmword_1D86FAB5C;
  v473 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1043[0] = v473;
  v1043[1] = @"J317NM";
  v472 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1043 count:2];
  v471 = [a1 wrapDeviceArgumentsInArray:{100054, 1001015, 1002032, 0xFFFFFFFFLL, 1004015, 1005008, 1006012, 1007004, 0xFFFFFFFFLL, 0}];
  v470 = [v472 arrayByAddingObjectsFromArray:v471];
  v469 = [v470 copy];
  v1191[49] = v469;
  v1039 = 804488105;
  v1038 = xmmword_1D86FAB70;
  v468 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1040[0] = v468;
  v1040[1] = @"J317NM";
  v467 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1040 count:2];
  v466 = [a1 wrapDeviceArgumentsInArray:{100055, 1001015, 1002032, 0xFFFFFFFFLL, 1004015, 1005008, 1006012, 1007004, 0xFFFFFFFFLL, 0}];
  v465 = [v467 arrayByAddingObjectsFromArray:v466];
  v464 = [v465 copy];
  v1191[50] = v464;
  v1036 = 1614584579;
  v1035 = xmmword_1D86FAB84;
  v463 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1037[0] = v463;
  v1037[1] = @"J318NM";
  v462 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1037 count:2];
  v461 = [a1 wrapDeviceArgumentsInArray:{100056, 1001015, 1002032, 1003012, 1004015, 1005008, 1006012, 1007004, 1008004, 0}];
  v460 = [v462 arrayByAddingObjectsFromArray:v461];
  v459 = [v460 copy];
  v1191[51] = v459;
  v1033 = 324288768;
  v1032 = xmmword_1D86FAB98;
  v458 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1034[0] = v458;
  v1034[1] = @"J318NM";
  v457 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1034 count:2];
  v456 = [a1 wrapDeviceArgumentsInArray:{100057, 1001015, 1002032, 1003012, 1004015, 1005008, 1006012, 1007004, 1008004, 0}];
  v455 = [v457 arrayByAddingObjectsFromArray:v456];
  v454 = [v455 copy];
  v1191[52] = v454;
  v1030 = 460218192;
  v1029 = xmmword_1D86FABAC;
  v453 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1031[0] = v453;
  v1031[1] = @"J320NM";
  v452 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1031 count:2];
  v451 = [a1 wrapDeviceArgumentsInArray:{100058, 1001015, 1002030, 0xFFFFFFFFLL, 1004015, 1005008, 1006012, 1007004, 0xFFFFFFFFLL, 0}];
  v450 = [v452 arrayByAddingObjectsFromArray:v451];
  v449 = [v450 copy];
  v1191[53] = v449;
  v1027 = 2144905009;
  v1026 = xmmword_1D86FABC0;
  v448 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1028[0] = v448;
  v1028[1] = @"J320NM";
  v447 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1028 count:2];
  v446 = [a1 wrapDeviceArgumentsInArray:{100059, 1001015, 1002030, 0xFFFFFFFFLL, 1004015, 1005008, 1006012, 1007004, 0xFFFFFFFFLL, 0}];
  v445 = [v447 arrayByAddingObjectsFromArray:v446];
  v444 = [v445 copy];
  v1191[54] = v444;
  v1024 = 127894440;
  v1023 = xmmword_1D86FABD4;
  v443 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1025[0] = v443;
  v1025[1] = @"J321NM";
  v442 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1025 count:2];
  v441 = [a1 wrapDeviceArgumentsInArray:{100060, 1001015, 1002030, 1003012, 1004015, 1005008, 1006012, 1007004, 1008004, 0}];
  v440 = [v442 arrayByAddingObjectsFromArray:v441];
  v439 = [v440 copy];
  v1191[55] = v439;
  v1021 = 1070997468;
  v1020 = xmmword_1D86FABE8;
  v438 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1022[0] = v438;
  v1022[1] = @"J321NM";
  v437 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1022 count:2];
  v436 = [a1 wrapDeviceArgumentsInArray:{100061, 1001015, 1002030, 1003012, 1004015, 1005008, 1006012, 1007004, 1008004, 0}];
  v435 = [v437 arrayByAddingObjectsFromArray:v436];
  v434 = [v435 copy];
  v1191[56] = v434;
  v1018 = -212523443;
  v1017 = xmmword_1D86FABFC;
  v433 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1019[0] = v433;
  v1019[1] = @"J71DN";
  v432 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1019 count:2];
  v431 = [a1 wrapDeviceArgumentsInArray:{100062, 1001013, 1002018, 0xFFFFFFFFLL, 1004007, 1005006, 1006016, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v430 = [v432 arrayByAddingObjectsFromArray:v431];
  v429 = [v430 copy];
  v1191[57] = v429;
  v1015 = 646100384;
  v1014 = xmmword_1D86FAC10;
  v428 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1016[0] = v428;
  v1016[1] = @"J72DN";
  v427 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1016 count:2];
  v426 = [a1 wrapDeviceArgumentsInArray:{100063, 1001013, 1002018, 1003010, 1004007, 1005006, 1006016, 0xFFFFFFFFLL, 1008002, 0}];
  v425 = [v427 arrayByAddingObjectsFromArray:v426];
  v424 = [v425 copy];
  v1191[58] = v424;
  v1012 = 688565114;
  v1011 = xmmword_1D86FAC24;
  v423 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1013[0] = v423;
  v1013[1] = @"J96NMN";
  v422 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1013 count:2];
  v421 = [a1 wrapDeviceArgumentsInArray:{100064, 1001016, 1002033, 0xFFFFFFFFLL, 1004015, 1005003, 1006013, 1007004, 0xFFFFFFFFLL, 0}];
  v420 = [v422 arrayByAddingObjectsFromArray:v421];
  v419 = [v420 copy];
  v1191[59] = v419;
  v1009 = -493418906;
  v1008 = xmmword_1D86FAC38;
  v418 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1010[0] = v418;
  v1010[1] = @"J97NMN";
  v417 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1010 count:2];
  v416 = [a1 wrapDeviceArgumentsInArray:{100065, 1001016, 1002033, 1003013, 1004015, 1005003, 1006013, 1007004, 1008004, 0}];
  v415 = [v417 arrayByAddingObjectsFromArray:v416];
  v414 = [v415 copy];
  v1191[60] = v414;
  v1006 = -545612308;
  v1005 = xmmword_1D86FAC4C;
  v413 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1007[0] = v413;
  v1007[1] = @"J307N";
  v412 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1007 count:2];
  v411 = [a1 wrapDeviceArgumentsInArray:{100066, 1001015, 1002036, 0xFFFFFFFFLL, 1004015, 1005028, 1006017, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v410 = [v412 arrayByAddingObjectsFromArray:v411];
  v409 = [v410 copy];
  v1191[61] = v409;
  v1003 = 1178062702;
  v1002 = xmmword_1D86FAC60;
  v408 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1004[0] = v408;
  v1004[1] = @"J307NM";
  v407 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1004 count:2];
  v406 = [a1 wrapDeviceArgumentsInArray:{100067, 1001015, 1002036, 1003013, 1004015, 1005028, 1006017, 0xFFFFFFFFLL, 1008004, 0}];
  v405 = [v407 arrayByAddingObjectsFromArray:v406];
  v404 = [v405 copy];
  v1191[62] = v404;
  v1000 = -340360463;
  v999 = xmmword_1D86FAC74;
  v403 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1001[0] = v403;
  v1001[1] = @"J271";
  v402 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1001 count:2];
  v401 = [a1 wrapDeviceArgumentsInArray:{100068, 1001014, 1002040, 0xFFFFFFFFLL, 1004015, 1005030, 1006021, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v400 = [v402 arrayByAddingObjectsFromArray:v401];
  v399 = [v400 copy];
  v1191[63] = v399;
  v997 = 1605231531;
  v996 = xmmword_1D86FAC88;
  v398 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v998[0] = v398;
  v998[1] = @"J272";
  v397 = [MEMORY[0x1E695DEC8] arrayWithObjects:v998 count:2];
  v396 = [a1 wrapDeviceArgumentsInArray:{100069, 1001014, 1002040, 1003013, 1004015, 1005030, 1006021, 0xFFFFFFFFLL, 1008004, 0}];
  v395 = [v397 arrayByAddingObjectsFromArray:v396];
  v394 = [v395 copy];
  v1191[64] = v394;
  v994 = 1878025452;
  v993 = xmmword_1D86FAC9C;
  v393 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v995[0] = v393;
  v995[1] = @"J617";
  v392 = [MEMORY[0x1E695DEC8] arrayWithObjects:v995 count:2];
  v391 = [a1 wrapDeviceArgumentsInArray:{100070, 1001017, 1002041, 0xFFFFFFFFLL, 1004016, 1005032, 1006022, 1007004, 0xFFFFFFFFLL, 0}];
  v390 = [v392 arrayByAddingObjectsFromArray:v391];
  v389 = [v390 copy];
  v1191[65] = v389;
  v991 = 1725957070;
  v990 = xmmword_1D86FACB0;
  v388 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v992[0] = v388;
  v992[1] = @"J618";
  v387 = [MEMORY[0x1E695DEC8] arrayWithObjects:v992 count:2];
  v386 = [a1 wrapDeviceArgumentsInArray:{100071, 1001017, 1002041, 1003015, 1004016, 1005032, 1006022, 1007004, 1008004, 0}];
  v385 = [v387 arrayByAddingObjectsFromArray:v386];
  v384 = [v385 copy];
  v1191[66] = v384;
  v988 = 538967431;
  v987 = xmmword_1D86FACC4;
  v383 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v989[0] = v383;
  v989[1] = @"J620";
  v382 = [MEMORY[0x1E695DEC8] arrayWithObjects:v989 count:2];
  v381 = [a1 wrapDeviceArgumentsInArray:{100072, 1001017, 1002030, 0xFFFFFFFFLL, 1004016, 1005032, 1006022, 1007004, 0xFFFFFFFFLL, 0}];
  v380 = [v382 arrayByAddingObjectsFromArray:v381];
  v379 = [v380 copy];
  v1191[67] = v379;
  v985 = 2060712151;
  v984 = xmmword_1D86FACD8;
  v378 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v986[0] = v378;
  v986[1] = @"J621";
  v377 = [MEMORY[0x1E695DEC8] arrayWithObjects:v986 count:2];
  v376 = [a1 wrapDeviceArgumentsInArray:{100073, 1001017, 1002030, 1003015, 1004016, 1005032, 1006022, 1007004, 1008004, 0}];
  v375 = [v377 arrayByAddingObjectsFromArray:v376];
  v374 = [v375 copy];
  v1191[68] = v374;
  v982 = 958549802;
  v981 = xmmword_1D86FACEC;
  v373 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v983[0] = v373;
  v983[1] = @"J507";
  v372 = [MEMORY[0x1E695DEC8] arrayWithObjects:v983 count:2];
  v371 = [a1 wrapDeviceArgumentsInArray:{100074, 1001017, 1002056, 0xFFFFFFFFLL, 1004016, 1005042, 1006028, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v370 = [v372 arrayByAddingObjectsFromArray:v371];
  v369 = [v370 copy];
  v1191[69] = v369;
  v979 = -12497897;
  v978 = xmmword_1D86FAD00;
  v368 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v980[0] = v368;
  v980[1] = @"J508";
  v367 = [MEMORY[0x1E695DEC8] arrayWithObjects:v980 count:2];
  v366 = [a1 wrapDeviceArgumentsInArray:{100075, 1001017, 1002056, 1003016, 1004016, 1005042, 1006028, 0xFFFFFFFFLL, 1008004, 0}];
  v365 = [v367 arrayByAddingObjectsFromArray:v366];
  v364 = [v365 copy];
  v1191[70] = v364;
  v976 = 1377540371;
  v975 = xmmword_1D86FAD14;
  v363 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v977[0] = v363;
  v977[1] = @"J537";
  v362 = [MEMORY[0x1E695DEC8] arrayWithObjects:v977 count:2];
  v361 = [a1 wrapDeviceArgumentsInArray:{100076, 1001017, 1002055, 0xFFFFFFFFLL, 1004016, 1005043, 1006029, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v360 = [v362 arrayByAddingObjectsFromArray:v361];
  v359 = [v360 copy];
  v1191[71] = v359;
  v973 = -518121279;
  v972 = xmmword_1D86FAD28;
  v358 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v974[0] = v358;
  v974[1] = @"J538";
  v357 = [MEMORY[0x1E695DEC8] arrayWithObjects:v974 count:2];
  v356 = [a1 wrapDeviceArgumentsInArray:{100077, 1001017, 1002055, 1003016, 1004016, 1005043, 1006029, 0xFFFFFFFFLL, 1008004, 0}];
  v355 = [v357 arrayByAddingObjectsFromArray:v356];
  v354 = [v355 copy];
  v1191[72] = v354;
  v970 = 802516499;
  v969 = xmmword_1D86FAD3C;
  v353 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v971[0] = v353;
  v971[1] = @"J717";
  v352 = [MEMORY[0x1E695DEC8] arrayWithObjects:v971 count:2];
  v351 = [a1 wrapDeviceArgumentsInArray:{100078, 1001020, 1002057, 0xFFFFFFFFLL, 1004016, 1005044, 1006025, 1007004, 0xFFFFFFFFLL, 0}];
  v350 = [v352 arrayByAddingObjectsFromArray:v351];
  v349 = [v350 copy];
  v1191[73] = v349;
  v967 = -1919324456;
  v966 = xmmword_1D86FAD50;
  v348 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v968[0] = v348;
  v968[1] = @"J718";
  v347 = [MEMORY[0x1E695DEC8] arrayWithObjects:v968 count:2];
  v346 = [a1 wrapDeviceArgumentsInArray:{100079, 1001020, 1002057, 1003016, 1004016, 1005044, 1006025, 1007004, 1008004, 0}];
  v345 = [v347 arrayByAddingObjectsFromArray:v346];
  v344 = [v345 copy];
  v1191[74] = v344;
  v964 = 1127969586;
  v963 = xmmword_1D86FAD64;
  v343 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v965[0] = v343;
  v965[1] = @"J720";
  v342 = [MEMORY[0x1E695DEC8] arrayWithObjects:v965 count:2];
  v341 = [a1 wrapDeviceArgumentsInArray:{100080, 1001020, 1002057, 0xFFFFFFFFLL, 1004016, 1005044, 1006025, 1007004, 0xFFFFFFFFLL, 0}];
  v340 = [v342 arrayByAddingObjectsFromArray:v341];
  v339 = [v340 copy];
  v1191[75] = v339;
  v961 = 1292009573;
  v960 = xmmword_1D86FAD78;
  v338 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v962[0] = v338;
  v962[1] = @"J721";
  v337 = [MEMORY[0x1E695DEC8] arrayWithObjects:v962 count:2];
  v336 = [a1 wrapDeviceArgumentsInArray:{100081, 1001020, 1002057, 1003016, 1004016, 1005044, 1006025, 1007004, 1008004, 0}];
  v335 = [v337 arrayByAddingObjectsFromArray:v336];
  v334 = [v335 copy];
  v1191[76] = v334;
  v958 = 1656760039;
  v957 = xmmword_1D86FAD8C;
  v333 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v959[0] = v333;
  v959[1] = @"J817";
  v332 = [MEMORY[0x1E695DEC8] arrayWithObjects:v959 count:2];
  v331 = [a1 wrapDeviceArgumentsInArray:{100092, 1001028, 1002057, 0xFFFFFFFFLL, 1004019, 1005044, 1006025, 1007004, 0xFFFFFFFFLL, 0}];
  v330 = [v332 arrayByAddingObjectsFromArray:v331];
  v329 = [v330 copy];
  v1191[77] = v329;
  v955 = -2071977621;
  v954 = xmmword_1D86FADA0;
  v328 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v956[0] = v328;
  v956[1] = @"J818";
  v327 = [MEMORY[0x1E695DEC8] arrayWithObjects:v956 count:2];
  v326 = [a1 wrapDeviceArgumentsInArray:{100093, 1001028, 1002057, 1003018, 1004019, 1005044, 1006025, 1007004, 1008004, 0}];
  v325 = [v327 arrayByAddingObjectsFromArray:v326];
  v324 = [v325 copy];
  v1191[78] = v324;
  v952 = -543210860;
  v951 = xmmword_1D86FADB4;
  v323 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v953[0] = v323;
  v953[1] = @"J820";
  v322 = [MEMORY[0x1E695DEC8] arrayWithObjects:v953 count:2];
  v321 = [a1 wrapDeviceArgumentsInArray:{100094, 1001028, 1002057, 0xFFFFFFFFLL, 1004019, 1005044, 1006025, 1007004, 0xFFFFFFFFLL, 0}];
  v320 = [v322 arrayByAddingObjectsFromArray:v321];
  v319 = [v320 copy];
  v1191[79] = v319;
  v949 = -1597604211;
  v948 = xmmword_1D86FADC8;
  v318 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v950[0] = v318;
  v950[1] = @"J821";
  v317 = [MEMORY[0x1E695DEC8] arrayWithObjects:v950 count:2];
  v316 = [a1 wrapDeviceArgumentsInArray:{100095, 1001028, 1002057, 1003018, 1004019, 1005044, 1006025, 1007004, 1008004, 0}];
  v315 = [v317 arrayByAddingObjectsFromArray:v316];
  v314 = [v315 copy];
  v1191[80] = v314;
  v946 = -16711936;
  v945 = xmmword_1D86FB278;
  v313 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v947[0] = v313;
  v947[1] = @"J381";
  v312 = [MEMORY[0x1E695DEC8] arrayWithObjects:v947 count:2];
  v311 = [a1 wrapDeviceArgumentsInArray:{100082, 1001014, 1002053, 0xFFFFFFFFLL, 1004018, 1005030, 1006021, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v310 = [v312 arrayByAddingObjectsFromArray:v311];
  v309 = [v310 copy];
  v1191[81] = v309;
  v943 = -16711936;
  v942 = xmmword_1D86FB278;
  v308 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v944[0] = v308;
  v944[1] = @"J382";
  v307 = [MEMORY[0x1E695DEC8] arrayWithObjects:v944 count:2];
  v306 = [a1 wrapDeviceArgumentsInArray:{100083, 1001014, 1002053, 1003016, 1004018, 1005030, 1006021, 0xFFFFFFFFLL, 1008004, 0}];
  v305 = [v307 arrayByAddingObjectsFromArray:v306];
  v304 = [v305 copy];
  v1191[82] = v304;
  v940 = -773054213;
  v939 = xmmword_1D86FADDC;
  v303 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v941[0] = v303;
  v941[1] = @"J410";
  v302 = [MEMORY[0x1E695DEC8] arrayWithObjects:v941 count:2];
  v301 = [a1 wrapDeviceArgumentsInArray:{100084, 1001019, 1002054, 0xFFFFFFFFLL, 1004016, 1005045, 1006030, 1007004, 0xFFFFFFFFLL, 0}];
  v300 = [v302 arrayByAddingObjectsFromArray:v301];
  v299 = [v300 copy];
  v1191[83] = v299;
  v937 = -1204420428;
  v936 = xmmword_1D86FADF0;
  v298 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v938[0] = v298;
  v938[1] = @"J411";
  v297 = [MEMORY[0x1E695DEC8] arrayWithObjects:v938 count:2];
  v296 = [a1 wrapDeviceArgumentsInArray:{100085, 1001019, 1002054, 1003016, 1004016, 1005045, 1006030, 1007004, 1008004, 0}];
  v295 = [v297 arrayByAddingObjectsFromArray:v296];
  v294 = [v295 copy];
  v1191[84] = v294;
  v934 = -1231738393;
  v933 = xmmword_1D86FAE04;
  v293 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v935[0] = v293;
  v935[1] = @"J481";
  v292 = [MEMORY[0x1E695DEC8] arrayWithObjects:v935 count:2];
  v291 = [a1 wrapDeviceArgumentsInArray:{100086, 1001018, 1002054, 0xFFFFFFFFLL, 1004018, 1005030, 1006021, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v290 = [v292 arrayByAddingObjectsFromArray:v291];
  v289 = [v290 copy];
  v1191[85] = v289;
  v931 = 164967128;
  v930 = xmmword_1D86FAE18;
  v288 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v932[0] = v288;
  v932[1] = @"J482";
  v287 = [MEMORY[0x1E695DEC8] arrayWithObjects:v932 count:2];
  v719 = [a1 wrapDeviceArgumentsInArray:{100087, 1001018, 1002054, 1003016, 1004015, 1005030, 1006021, 0xFFFFFFFFLL, 1008004, 0}];
  v286 = [v287 arrayByAddingObjectsFromArray:v719];
  v285 = [v286 copy];
  v1191[86] = v285;
  v928 = -1047119348;
  v927 = xmmword_1D86FAE2C;
  v284 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v929[0] = v284;
  v929[1] = @"J607";
  v283 = [MEMORY[0x1E695DEC8] arrayWithObjects:v929 count:2];
  v282 = [a1 wrapDeviceArgumentsInArray:{100088, 1001018, 1002056, 0xFFFFFFFFLL, 1004016, 1005042, 1006028, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v281 = [v283 arrayByAddingObjectsFromArray:v282];
  v280 = [v281 copy];
  v1191[87] = v280;
  v925 = -1346985080;
  v924 = xmmword_1D86FAE40;
  v279 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v926[0] = v279;
  v926[1] = @"J608";
  v278 = [MEMORY[0x1E695DEC8] arrayWithObjects:v926 count:2];
  v277 = [a1 wrapDeviceArgumentsInArray:{100089, 1001018, 1002056, 1003016, 1004016, 1005042, 1006028, 0xFFFFFFFFLL, 1008004, 0}];
  v276 = [v278 arrayByAddingObjectsFromArray:v277];
  v275 = [v276 copy];
  v1191[88] = v275;
  v922 = -1243071412;
  v921 = xmmword_1D86FAE54;
  v274 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v923[0] = v274;
  v923[1] = @"J637";
  v273 = [MEMORY[0x1E695DEC8] arrayWithObjects:v923 count:2];
  v272 = [a1 wrapDeviceArgumentsInArray:{100090, 1001018, 1002055, 0xFFFFFFFFLL, 1004016, 1005043, 1006029, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v271 = [v273 arrayByAddingObjectsFromArray:v272];
  v270 = [v271 copy];
  v1191[89] = v270;
  v919 = 2017356181;
  v918 = xmmword_1D86FAE68;
  v269 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v920[0] = v269;
  v920[1] = @"J638";
  v268 = [MEMORY[0x1E695DEC8] arrayWithObjects:v920 count:2];
  v267 = [a1 wrapDeviceArgumentsInArray:{100091, 1001018, 1002055, 1003016, 1004016, 1005043, 1006029, 0xFFFFFFFFLL, 1008004, 0}];
  v266 = [v268 arrayByAddingObjectsFromArray:v267];
  v265 = [v266 copy];
  v1191[90] = v265;
  v916 = 1960366092;
  v915 = xmmword_1D86FAE7C;
  v264 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v917[0] = v264;
  v917[1] = @"N102";
  v262 = [MEMORY[0x1E695DEC8] arrayWithObjects:v917 count:2];
  v261 = [a1 wrapDeviceArgumentsInArray:{101001, 1001004, 1002007, 0xFFFFFFFFLL, 1004006, 1005009, 1006001, 1007001, 0xFFFFFFFFLL, 0}];
  v260 = [v262 arrayByAddingObjectsFromArray:v261];
  v259 = [v260 copy];
  v1191[91] = v259;
  v913 = -2114570942;
  v912 = xmmword_1D86FAE90;
  v258 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v914[0] = v258;
  v914[1] = @"N102N";
  v257 = [MEMORY[0x1E695DEC8] arrayWithObjects:v914 count:2];
  v256 = [a1 wrapDeviceArgumentsInArray:{101002, 1001008, 1002029, 0xFFFFFFFFLL, 1004008, 1005025, 1006001, 1007001, 0xFFFFFFFFLL, 0}];
  v255 = [v257 arrayByAddingObjectsFromArray:v256];
  v254 = [v255 copy];
  v1191[92] = v254;
  v910 = 28030256;
  v909 = xmmword_1D86FAEA4;
  v253 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v911[0] = v253;
  v911[1] = @"N51";
  v251 = [MEMORY[0x1E695DEC8] arrayWithObjects:v911 count:2];
  v250 = [a1 wrapDeviceArgumentsInArray:{102005, 1001003, 1002008, 1003002, 1004002, 1005012, 1006001, 1007002, 1008001, 0}];
  v249 = [v251 arrayByAddingObjectsFromArray:v250];
  v248 = [v249 copy];
  v1191[93] = v248;
  v907 = 1214363620;
  v906 = xmmword_1D86FAEB8;
  v247 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v908[0] = v247;
  v908[1] = @"N53";
  v246 = [MEMORY[0x1E695DEC8] arrayWithObjects:v908 count:2];
  v732 = [a1 wrapDeviceArgumentsInArray:{102006, 1001003, 1002008, 1003002, 1004002, 1005012, 1006001, 1007002, 1008001, 0}];
  v245 = [v246 arrayByAddingObjectsFromArray:v732];
  v244 = [v245 copy];
  v1191[94] = v244;
  v904 = -798153473;
  v903 = xmmword_1D86FAECC;
  v243 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v905[0] = v243;
  v905[1] = @"N56";
  v242 = [MEMORY[0x1E695DEC8] arrayWithObjects:v905 count:2];
  v241 = [a1 wrapDeviceArgumentsInArray:{102007, 1001004, 1002009, 1003003, 1004006, 1005014, 1006001, 1007003, 1008001, 0}];
  v240 = [v242 arrayByAddingObjectsFromArray:v241];
  v239 = [v240 copy];
  v1191[95] = v239;
  v901 = -776721724;
  v900 = xmmword_1D86FAEE0;
  v238 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v902[0] = v238;
  v902[1] = @"N61";
  v237 = [MEMORY[0x1E695DEC8] arrayWithObjects:v902 count:2];
  v730 = [a1 wrapDeviceArgumentsInArray:{102008, 1001004, 1002010, 1003003, 1004006, 1005013, 1006001, 1007004, 1008001, 0}];
  v236 = [v237 arrayByAddingObjectsFromArray:v730];
  v235 = [v236 copy];
  v1191[96] = v235;
  v898 = -1403227947;
  v897 = xmmword_1D86FAEF4;
  v234 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v899[0] = v234;
  v899[1] = @"N66";
  v233 = [MEMORY[0x1E695DEC8] arrayWithObjects:v899 count:2];
  v232 = [a1 wrapDeviceArgumentsInArray:{102009, 1001006, 1002011, 1003004, 1004005, 1005015, 1006001, 1007004, 1008001, 0}];
  v231 = [v233 arrayByAddingObjectsFromArray:v232];
  v230 = [v231 copy];
  v1191[97] = v230;
  v895 = 729118884;
  v894 = xmmword_1D86FAF08;
  v229 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v896[0] = v229;
  v896[1] = @"N66M";
  v228 = [MEMORY[0x1E695DEC8] arrayWithObjects:v896 count:2];
  v227 = [a1 wrapDeviceArgumentsInArray:{102010, 1001006, 1002011, 1003004, 1004005, 1005015, 1006001, 1007004, 1008001, 0}];
  v226 = [v228 arrayByAddingObjectsFromArray:v227];
  v225 = [v226 copy];
  v1191[98] = v225;
  v892 = -489993439;
  v891 = xmmword_1D86FAF1C;
  v224 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v893[0] = v224;
  v893[1] = @"N71";
  v223 = [MEMORY[0x1E695DEC8] arrayWithObjects:v893 count:2];
  v222 = [a1 wrapDeviceArgumentsInArray:{102011, 1001006, 1002012, 1003004, 1004005, 1005015, 1006001, 1007004, 1008001, 0}];
  v221 = [v223 arrayByAddingObjectsFromArray:v222];
  v220 = [v221 copy];
  v1191[99] = v220;
  v889 = 886875686;
  v888 = xmmword_1D86FAF30;
  v219 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v890[0] = v219;
  v890[1] = @"N71M";
  v218 = [MEMORY[0x1E695DEC8] arrayWithObjects:v890 count:2];
  v733 = [a1 wrapDeviceArgumentsInArray:{102012, 1001006, 1002012, 1003004, 1004005, 1005015, 1006001, 1007004, 1008001, 0}];
  v731 = [v218 arrayByAddingObjectsFromArray:v733];
  v217 = [v731 copy];
  v1191[100] = v217;
  v886 = 1046806126;
  v885 = xmmword_1D86FAF44;
  v216 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v887[0] = v216;
  v887[1] = @"N69";
  v215 = [MEMORY[0x1E695DEC8] arrayWithObjects:v887 count:2];
  v214 = [a1 wrapDeviceArgumentsInArray:{102013, 1001006, 1002008, 1003003, 1004008, 1005016, 1006001, 1007002, 1008001, 0}];
  v213 = [v215 arrayByAddingObjectsFromArray:v214];
  v212 = [v213 copy];
  v1191[101] = v212;
  v883 = -188760945;
  v882 = xmmword_1D86FAF58;
  v211 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v884[0] = v211;
  v884[1] = @"N69U";
  v210 = [MEMORY[0x1E695DEC8] arrayWithObjects:v884 count:2];
  v729 = [a1 wrapDeviceArgumentsInArray:{102014, 1001006, 1002008, 1003003, 1004008, 1005016, 1006001, 1007002, 1008001, 0}];
  v720 = [v210 arrayByAddingObjectsFromArray:v729];
  v209 = [v720 copy];
  v1191[102] = v209;
  v880 = -350584140;
  v879 = xmmword_1D86FAF6C;
  v208 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v881[0] = v208;
  v881[1] = @"D10";
  v207 = [MEMORY[0x1E695DEC8] arrayWithObjects:v881 count:2];
  v206 = [a1 wrapDeviceArgumentsInArray:{102015, 1001008, 1002013, 1003005, 1004007, 1005017, 1006002, 1007005, 1008001, 0}];
  v204 = [v207 arrayByAddingObjectsFromArray:v206];
  v203 = [v204 copy];
  v1191[103] = v203;
  v877 = -1418383976;
  v876 = xmmword_1D86FAF80;
  v202 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v878[0] = v202;
  v878[1] = @"D101";
  v201 = [MEMORY[0x1E695DEC8] arrayWithObjects:v878 count:2];
  v200 = [a1 wrapDeviceArgumentsInArray:{102016, 1001008, 1002013, 1003006, 1004007, 1005017, 1006002, 1007005, 1008002, 0}];
  v199 = [v201 arrayByAddingObjectsFromArray:v200];
  v198 = [v199 copy];
  v1191[104] = v198;
  v874 = 368778837;
  v873 = xmmword_1D86FAF94;
  v197 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v875[0] = v197;
  v875[1] = @"D11";
  v196 = [MEMORY[0x1E695DEC8] arrayWithObjects:v875 count:2];
  v738 = [a1 wrapDeviceArgumentsInArray:{102017, 1001008, 1002014, 1003005, 1004007, 1005018, 1006003, 1007005, 1008001, 0}];
  v195 = [v196 arrayByAddingObjectsFromArray:v738];
  v194 = [v195 copy];
  v1191[105] = v194;
  v871 = -1213485500;
  v870 = xmmword_1D86FAFA8;
  v193 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v872[0] = v193;
  v872[1] = @"D111";
  v192 = [MEMORY[0x1E695DEC8] arrayWithObjects:v872 count:2];
  v737 = [a1 wrapDeviceArgumentsInArray:{102018, 1001008, 1002014, 1003006, 1004007, 1005018, 1006003, 1007005, 1008002, 0}];
  v191 = [v192 arrayByAddingObjectsFromArray:v737];
  v190 = [v191 copy];
  v1191[106] = v190;
  v868 = 414393924;
  v867 = xmmword_1D86FAFBC;
  v189 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v869[0] = v189;
  v869[1] = @"D10N";
  v188 = [MEMORY[0x1E695DEC8] arrayWithObjects:v869 count:2];
  v187 = [a1 wrapDeviceArgumentsInArray:{102021, 1001010, 1002019, 1003007, 1004010, 1005021, 1006002, 1007006, 1008001, 0}];
  v186 = [v188 arrayByAddingObjectsFromArray:v187];
  v185 = [v186 copy];
  v1191[107] = v185;
  v865 = 897736383;
  v864 = xmmword_1D86FAFD0;
  v184 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v866[0] = v184;
  v866[1] = @"D101N";
  v183 = [MEMORY[0x1E695DEC8] arrayWithObjects:v866 count:2];
  v182 = [a1 wrapDeviceArgumentsInArray:{102022, 1001010, 1002019, 1003008, 1004010, 1005021, 1006002, 1007006, 1008002, 0}];
  v181 = [v183 arrayByAddingObjectsFromArray:v182];
  v180 = [v181 copy];
  v1191[108] = v180;
  v862 = -996295886;
  v861 = xmmword_1D86FAFE4;
  v179 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v863[0] = v179;
  v863[1] = @"D11N";
  v178 = [MEMORY[0x1E695DEC8] arrayWithObjects:v863 count:2];
  v177 = [a1 wrapDeviceArgumentsInArray:{102023, 1001010, 1002020, 1003007, 1004010, 1005021, 1006004, 1007006, 1008001, 0}];
  v176 = [v178 arrayByAddingObjectsFromArray:v177];
  v175 = [v176 copy];
  v1191[109] = v175;
  v859 = -453987047;
  v858 = xmmword_1D86FAFF8;
  v174 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v860[0] = v174;
  v860[1] = @"D111N";
  v173 = [MEMORY[0x1E695DEC8] arrayWithObjects:v860 count:2];
  v172 = [a1 wrapDeviceArgumentsInArray:{102024, 1001010, 1002020, 1003008, 1004010, 1005021, 1006004, 1007006, 1008002, 0}];
  v171 = [v173 arrayByAddingObjectsFromArray:v172];
  v170 = [v171 copy];
  v1191[110] = v170;
  v856 = -337121064;
  v855 = xmmword_1D86FB00C;
  v169 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v857[0] = v169;
  v857[1] = @"D11NM";
  v168 = [MEMORY[0x1E695DEC8] arrayWithObjects:v857 count:2];
  v739 = [a1 wrapDeviceArgumentsInArray:{102025, 1001010, 1002021, 1003007, 1004010, 1005022, 1006004, 1007006, 1008001, 0}];
  v167 = [v168 arrayByAddingObjectsFromArray:v739];
  v166 = [v167 copy];
  v1191[111] = v166;
  v853 = 450980336;
  v852 = xmmword_1D86FB020;
  v165 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v854[0] = v165;
  v854[1] = @"D111NM";
  v164 = [MEMORY[0x1E695DEC8] arrayWithObjects:v854 count:2];
  v742 = [a1 wrapDeviceArgumentsInArray:{102026, 1001010, 1002021, 1003008, 1004010, 1005022, 1006004, 1007006, 1008002, 0}];
  v163 = [v164 arrayByAddingObjectsFromArray:v742];
  v162 = [v163 copy];
  v1191[112] = v162;
  v850 = -232427879;
  v849 = xmmword_1D86FB034;
  v161 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v851[0] = v161;
  v851[1] = @"D211NM";
  v160 = [MEMORY[0x1E695DEC8] arrayWithObjects:v851 count:2];
  v159 = [a1 wrapDeviceArgumentsInArray:{102027, 1001011, 1002024, 1003010, 1004013, 1005023, 1006005, 1007006, 1008002, 0}];
  v158 = [v160 arrayByAddingObjectsFromArray:v159];
  v157 = [v158 copy];
  v1191[113] = v157;
  v847 = 1477534141;
  v846 = xmmword_1D86FB048;
  v156 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v848[0] = v156;
  v848[1] = @"D231NM";
  v155 = [MEMORY[0x1E695DEC8] arrayWithObjects:v848 count:2];
  v263 = [a1 wrapDeviceArgumentsInArray:{102028, 1001011, 1002025, 1003010, 1004013, 1005023, 1006005, 1007006, 1008002, 0}];
  v154 = [v155 arrayByAddingObjectsFromArray:v263];
  v153 = [v154 copy];
  v1191[114] = v153;
  v844 = -1843102369;
  v843 = xmmword_1D86FB05C;
  v152 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v845[0] = v152;
  v845[1] = @"D201NM";
  v151 = [MEMORY[0x1E695DEC8] arrayWithObjects:v845 count:2];
  v743 = [a1 wrapDeviceArgumentsInArray:{102029, 1001011, 1002026, 1003010, 1004010, 1005023, 1006005, 1007006, 1008002, 0}];
  v727 = [v151 arrayByAddingObjectsFromArray:v743];
  v150 = [v727 copy];
  v1191[115] = v150;
  v841 = -61007701;
  v840 = xmmword_1D86FB070;
  v149 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v842[0] = v149;
  v842[1] = @"D321NM";
  v148 = [MEMORY[0x1E695DEC8] arrayWithObjects:v842 count:2];
  v147 = [a1 wrapDeviceArgumentsInArray:{102030, 1001013, 1002030, 1003011, 1004014, 1005026, 1006008, 1007006, 1008002, 0}];
  v146 = [v148 arrayByAddingObjectsFromArray:v147];
  v145 = [v146 copy];
  v1191[116] = v145;
  v838 = -235416490;
  v837 = xmmword_1D86FB084;
  v143 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v839[0] = v143;
  v839[1] = @"D331NM";
  v142 = [MEMORY[0x1E695DEC8] arrayWithObjects:v839 count:2];
  v141 = [a1 wrapDeviceArgumentsInArray:{102031, 1001013, 1002030, 1003011, 1004014, 1005026, 1006008, 1007006, 1008002, 0}];
  v140 = [v142 arrayByAddingObjectsFromArray:v141];
  v139 = [v140 copy];
  v1191[117] = v139;
  v835 = -820493242;
  v834 = xmmword_1D86FB098;
  v138 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v836[0] = v138;
  v836[1] = @"D332NM";
  v137 = [MEMORY[0x1E695DEC8] arrayWithObjects:v836 count:2];
  v136 = [a1 wrapDeviceArgumentsInArray:{102032, 1001013, 1002030, 1003011, 1004014, 1005026, 1006008, 1007006, 1008002, 0}];
  v135 = [v137 arrayByAddingObjectsFromArray:v136];
  v134 = [v135 copy];
  v1191[118] = v134;
  v832 = -121925081;
  v831 = xmmword_1D86FB0AC;
  v133 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v833[0] = v133;
  v833[1] = @"D10NM";
  v132 = [MEMORY[0x1E695DEC8] arrayWithObjects:v833 count:2];
  v745 = [a1 wrapDeviceArgumentsInArray:{102033, 1001013, 1002019, 1003011, 1004014, 1005021, 1006002, 1007006, 1008002, 0}];
  v741 = [v132 arrayByAddingObjectsFromArray:v745];
  v728 = [v741 copy];
  v1191[119] = v728;
  v829 = 1071957977;
  v828 = xmmword_1D86FB0C0;
  v252 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v830[0] = v252;
  v830[1] = @"D421NM";
  v205 = [MEMORY[0x1E695DEC8] arrayWithObjects:v830 count:2];
  v131 = [a1 wrapDeviceArgumentsInArray:{102034, 1001014, 1002030, 1003012, 1004015, 1005026, 1006010, 1007006, 1008004, 0}];
  v130 = [v205 arrayByAddingObjectsFromArray:v131];
  v129 = [v130 copy];
  v1191[120] = v129;
  v826 = 438437663;
  v825 = xmmword_1D86FB0D4;
  v128 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v827[0] = v128;
  v827[1] = @"D431NM";
  v127 = [MEMORY[0x1E695DEC8] arrayWithObjects:v827 count:2];
  v126 = [a1 wrapDeviceArgumentsInArray:{102035, 1001014, 1002030, 1003012, 1004015, 1005026, 1006010, 1007006, 1008004, 0}];
  v125 = [v127 arrayByAddingObjectsFromArray:v126];
  v124 = [v125 copy];
  v1191[121] = v124;
  v823 = -382792827;
  v822 = xmmword_1D86FB0E8;
  v123 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v824[0] = v123;
  v824[1] = @"D432NM";
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v824 count:2];
  v121 = [a1 wrapDeviceArgumentsInArray:{102036, 1001014, 1002030, 1003012, 1004015, 1005026, 1006011, 1007006, 1008004, 0}];
  v120 = [v122 arrayByAddingObjectsFromArray:v121];
  v119 = [v120 copy];
  v1191[122] = v119;
  v820 = 1575123478;
  v819 = xmmword_1D86FB0FC;
  v118 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v821[0] = v118;
  v821[1] = @"D441NM";
  v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:v821 count:2];
  v735 = [a1 wrapDeviceArgumentsInArray:{102037, 1001014, 1002030, 1003012, 1004015, 1005026, 1006011, 1007006, 1008004, 0}];
  v726 = [v117 arrayByAddingObjectsFromArray:v735];
  v116 = [v726 copy];
  v1191[123] = v116;
  v817 = 123138233;
  v816 = xmmword_1D86FB110;
  v115 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v818[0] = v115;
  v818[1] = @"D521NM";
  v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:v818 count:2];
  v113 = [a1 wrapDeviceArgumentsInArray:{102038, 1001016, 1002030, 1003013, 1004015, 1005026, 1006014, 1007006, 1008004, 0}];
  v112 = [v114 arrayByAddingObjectsFromArray:v113];
  v111 = [v112 copy];
  v1191[124] = v111;
  v814 = 681511593;
  v813 = xmmword_1D86FB124;
  v110 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v815[0] = v110;
  v815[1] = @"D531NM";
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:v815 count:2];
  v108 = [a1 wrapDeviceArgumentsInArray:{102039, 1001016, 1002030, 1003013, 1004015, 1005026, 1006014, 1007006, 1008004, 0}];
  v107 = [v109 arrayByAddingObjectsFromArray:v108];
  v106 = [v107 copy];
  v1191[125] = v106;
  v811 = 713503427;
  v810 = xmmword_1D86FB138;
  v105 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v812[0] = v105;
  v812[1] = @"D532NM";
  v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:v812 count:2];
  v103 = [a1 wrapDeviceArgumentsInArray:{102040, 1001016, 1002030, 1003013, 1004015, 1005026, 1006015, 1007006, 1008004, 0}];
  v102 = [v104 arrayByAddingObjectsFromArray:v103];
  v101 = [v102 copy];
  v1191[126] = v101;
  v808 = -1632750650;
  v807 = xmmword_1D86FB14C;
  v100 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v809[0] = v100;
  v809[1] = @"D541NM";
  v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v809 count:2];
  v722 = [a1 wrapDeviceArgumentsInArray:{102041, 1001016, 1002030, 1003013, 1004015, 1005026, 1006015, 1007006, 1008004, 0}];
  v98 = [v99 arrayByAddingObjectsFromArray:v722];
  v97 = [v98 copy];
  v1191[127] = v97;
  v805 = -1431778695;
  v804 = xmmword_1D86FB160;
  v96 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v806[0] = v96;
  v806[1] = @"D10NMN";
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v806 count:2];
  v746 = [a1 wrapDeviceArgumentsInArray:{102042, 1001016, 1002019, 1003014, 1004015, 1005029, 1006018, 1007006, 1008004, 0}];
  v94 = [v95 arrayByAddingObjectsFromArray:v746];
  v93 = [v94 copy];
  v1191[128] = v93;
  v802 = 533419158;
  v801 = xmmword_1D86FB174;
  v92 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v803[0] = v92;
  v803[1] = @"D27";
  v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v803 count:2];
  v90 = [a1 wrapDeviceArgumentsInArray:{102043, 1001016, 1002030, 1003015, 1004015, 1005026, 1006019, 1007005, 1008004, 0}];
  v89 = [v91 arrayByAddingObjectsFromArray:v90];
  v88 = [v89 copy];
  v1191[129] = v88;
  v799 = 1106979518;
  v798 = xmmword_1D86FB188;
  v87 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v800[0] = v87;
  v800[1] = @"D28";
  v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v800 count:2];
  v85 = [a1 wrapDeviceArgumentsInArray:{102044, 1001016, 1002030, 1003015, 1004015, 1005033, 1006019, 1007005, 1008004, 0}];
  v84 = [v86 arrayByAddingObjectsFromArray:v85];
  v83 = [v84 copy];
  v1191[130] = v83;
  v796 = -1820426635;
  v795 = xmmword_1D86FB19C;
  v82 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v797[0] = v82;
  v797[1] = @"D73";
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v797 count:2];
  v80 = [a1 wrapDeviceArgumentsInArray:{102045, 1001018, 1002030, 1003015, 1004015, 1005026, 1006020, 1007006, 1008005, 0}];
  v79 = [v81 arrayByAddingObjectsFromArray:v80];
  v78 = [v79 copy];
  v1191[131] = v78;
  v793 = -937652876;
  v792 = xmmword_1D86FB1B0;
  v77 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v794[0] = v77;
  v794[1] = @"D74";
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v794 count:2];
  v723 = [a1 wrapDeviceArgumentsInArray:{102046, 1001018, 1002030, 1003015, 1004015, 1005026, 1006020, 1007006, 1008005, 0}];
  v75 = [v76 arrayByAddingObjectsFromArray:v723];
  v74 = [v75 copy];
  v1191[132] = v74;
  v790 = -609570151;
  v789 = xmmword_1D86FB1C4;
  v73 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v791[0] = v73;
  v791[1] = @"D37";
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v791 count:2];
  v71 = [a1 wrapDeviceArgumentsInArray:{102047, 1001018, 1002030, 1003016, 1004015, 1005034, 1006023, 1007006, 1008004, 0}];
  v70 = [v72 arrayByAddingObjectsFromArray:v71];
  v69 = [v70 copy];
  v1191[133] = v69;
  v787 = -874769875;
  v786 = xmmword_1D86FB1D8;
  v68 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v788[0] = v68;
  v788[1] = @"D38";
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v788 count:2];
  v144 = [a1 wrapDeviceArgumentsInArray:{102048, 1001018, 1002030, 1003016, 1004015, 1005035, 1006023, 1007006, 1008004, 0}];
  v66 = [v67 arrayByAddingObjectsFromArray:v144];
  v65 = [v66 copy];
  v1191[134] = v65;
  v784 = 1874287171;
  v783 = xmmword_1D86FB1EC;
  v64 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v785[0] = v64;
  v785[1] = @"D83";
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v785 count:2];
  v61 = [a1 wrapDeviceArgumentsInArray:{102049, 1001019, 1002030, 1003016, 1004016, 1005036, 1006024, 1007006, 1008005, 0}];
  v60 = [v62 arrayByAddingObjectsFromArray:v61];
  v59 = [v60 copy];
  v1191[135] = v59;
  v781 = -781324731;
  v780 = xmmword_1D86FB200;
  v58 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v782[0] = v58;
  v782[1] = @"D84";
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v782 count:2];
  v736 = [a1 wrapDeviceArgumentsInArray:{102050, 1001019, 1002030, 1003016, 1004016, 1005037, 1006024, 1007006, 1008005, 0}];
  v56 = [v57 arrayByAddingObjectsFromArray:v736];
  v55 = [v56 copy];
  v1191[136] = v55;
  v778 = 1223847566;
  v777 = xmmword_1D86FB214;
  v54 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v779[0] = v54;
  v779[1] = @"D47";
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v779 count:2];
  v52 = [a1 wrapDeviceArgumentsInArray:{102052, 1001022, 1002030, 1003017, 1004017, 1005038, 1006026, 1007006, 1008004, 0}];
  v51 = [v53 arrayByAddingObjectsFromArray:v52];
  v50 = [v51 copy];
  v1191[137] = v50;
  v775 = 185580364;
  v774 = xmmword_1D86FB228;
  v49 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v776[0] = v49;
  v776[1] = @"D48";
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v776 count:2];
  v47 = [a1 wrapDeviceArgumentsInArray:{102053, 1001022, 1002030, 1003017, 1004017, 1005038, 1006026, 1007006, 1008004, 0}];
  v46 = [v48 arrayByAddingObjectsFromArray:v47];
  v45 = [v46 copy];
  v1191[138] = v45;
  v772 = 1214880059;
  v771 = xmmword_1D86FB23C;
  v44 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v773[0] = v44;
  v773[1] = @"D93";
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v773 count:2];
  v42 = [a1 wrapDeviceArgumentsInArray:{102054, 1001021, 1002030, 1003017, 1004017, 1005038, 1006027, 1007006, 1008005, 0}];
  v41 = [v43 arrayByAddingObjectsFromArray:v42];
  v40 = [v41 copy];
  v1191[139] = v40;
  v769 = 426359977;
  v768 = xmmword_1D86FB250;
  v39 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v770[0] = v39;
  v770[1] = @"D94";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v770 count:2];
  v37 = [a1 wrapDeviceArgumentsInArray:{102055, 1001021, 1002030, 1003017, 1004017, 1005038, 1006027, 1007006, 1008005, 0}];
  v36 = [v38 arrayByAddingObjectsFromArray:v37];
  v34 = [v36 copy];
  v1191[140] = v34;
  v766 = 169342588;
  v765 = xmmword_1D86FB264;
  v33 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v767[0] = v33;
  v767[1] = @"V59";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v767 count:2];
  v31 = [a1 wrapDeviceArgumentsInArray:{102056, 1001022, 1002030, 1003018, 1004015, 1005046, 1006031, 1007006, 1008006, 0}];
  v30 = [v32 arrayByAddingObjectsFromArray:v31];
  v29 = [v30 copy];
  v1191[141] = v29;
  v763 = -16711936;
  v762 = xmmword_1D86FB278;
  v724 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v764[0] = v724;
  v764[1] = &stru_1F539D228;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v764 count:2];
  v748 = [a1 wrapDeviceArgumentsInArray:{102051, 1001016, 1002030, 1003018, 1004015, 1005026, 1006014, 1007006, 1008004, 0}];
  v740 = [v28 arrayByAddingObjectsFromArray:v748];
  v734 = [v740 copy];
  v1191[142] = v734;
  v760 = 431774303;
  v759 = xmmword_1D86FB28C;
  v63 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v761[0] = v63;
  v761[1] = @"D83";
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v761 count:2];
  v744 = [a1 wrapDeviceArgumentsInArray:{102057, 1001019, 1002030, 1003016, 1004019, 1005037, 1006024, 1007006, 1008005, 0}];
  v721 = [v35 arrayByAddingObjectsFromArray:v744];
  v27 = [v721 copy];
  v1191[143] = v27;
  v757 = 1459208360;
  v756 = xmmword_1D86FB2A0;
  v26 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v758[0] = v26;
  v758[1] = @"D23";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v758 count:2];
  v725 = [a1 wrapDeviceArgumentsInArray:{102058, 1001029, 1002030, 1003018, 1004019, 1005048, 1006032, 1007007, 1008006, 0}];
  v24 = [v25 arrayByAddingObjectsFromArray:v725];
  v23 = [v24 copy];
  v1191[144] = v23;
  v754 = -1379821877;
  v753 = xmmword_1D86FB2B4;
  v22 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v755[0] = v22;
  v755[1] = @"V57";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v755 count:2];
  v20 = [a1 wrapDeviceArgumentsInArray:{102059, 1001027, 1002030, 1003020, 1004019, 1005049, 1006033, 1007006, 1008005, 0}];
  v19 = [v21 arrayByAddingObjectsFromArray:v20];
  v18 = [v19 copy];
  v1191[145] = v18;
  v751 = -1354433901;
  v750 = xmmword_1D86FB2C8;
  v17 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v752[0] = v17;
  v752[1] = @"V53";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v752 count:2];
  v15 = [a1 wrapDeviceArgumentsInArray:{102060, 1001029, 1002030, 1003020, 1004019, 1005038, 1006034, 1007006, 1008005, 0}];
  v14 = [v16 arrayByAddingObjectsFromArray:v15];
  v13 = [v14 copy];
  v1191[146] = v13;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v749[0] = v3;
  v749[1] = @"V54";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v749 count:2];
  v5 = [a1 wrapDeviceArgumentsInArray:{102061, 1001029, 1002030, 1003020, 1004019, 1005038, 1006034, 1007006, 1008005, 0}];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = [v6 copy];
  v1191[147] = v7;
  v8 = [a1 wrapDeviceArgumentsInArray:{0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v9 = [&unk_1F540B728 arrayByAddingObjectsFromArray:v8];
  v10 = [v9 copy];
  v1191[148] = v10;
  v747 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1191 count:149];

  v11 = *MEMORY[0x1E69E9840];

  return v747;
}

void __35__PLPlatform_kPLPlatformAttributes__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) kPLDeviceMap];
  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:v4];
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 BOOLValue];

      kPLPlatformAttributes_rowIndex = v4;
      if (v7)
      {
        break;
      }

      ++v4;
    }

    while ([v3 count] > v4);
  }

  v8 = [v3 objectAtIndexedSubscript:kPLPlatformAttributes_rowIndex];
  v9 = kPLPlatformAttributes_deviceInfo;
  kPLPlatformAttributes_deviceInfo = v8;

  objc_autoreleasePoolPop(v2);
}

+ (id)kPLDeviceClassName
{
  v2 = [a1 kPLPlatformAttributes];
  v3 = [v2 objectAtIndexedSubscript:1];

  return v3;
}

+ (BOOL)isDeviceClassName:(id)a3
{
  v4 = a3;
  v5 = [a1 kPLDeviceClassName];

  return v5 == v4;
}

+ (int)kPLDisplayClassOfDevice
{
  v2 = [a1 kPLPlatformAttributes];
  v3 = [v2 objectAtIndexedSubscript:4];
  v4 = [v3 intValue];

  return v4;
}

+ (int)kPLAudioClassOfDevice
{
  v2 = [a1 kPLPlatformAttributes];
  v3 = [v2 objectAtIndexedSubscript:7];
  v4 = [v3 intValue];

  return v4;
}

+ (int)kPLCameraClassOfDevice
{
  v2 = [a1 kPLPlatformAttributes];
  v3 = [v2 objectAtIndexedSubscript:8];
  v4 = [v3 intValue];

  return v4;
}

+ (int)kPLTorchClassOfDevice
{
  v2 = [a1 kPLPlatformAttributes];
  v3 = [v2 objectAtIndexedSubscript:9];
  v4 = [v3 intValue];

  return v4;
}

+ (int)kPLGPSClassOfDevice
{
  v2 = [a1 kPLPlatformAttributes];
  v3 = [v2 objectAtIndexedSubscript:10];
  v4 = [v3 intValue];

  return v4;
}

BOOL __36__PLPlatform_isUsingAnOlderWifiChip__block_invoke()
{
  result = [PLPlatform kPLWiFiClassIsOneOf:1004001, 1004002, 1004003, 1004004, 1004005, 1004006, 1004007, 1004008, 1004009, 1004010, 1004011, 1004012, 1004013, 1004014, 0];
  isUsingAnOlderWifiChip_result = result;
  return result;
}

+ (BOOL)hasCapability:(int)a3
{
  if (a3 == 9)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  v7 = +[PLPlatform kPLDeviceClass];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__PLPlatform_hasCapability___block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v9 = v7;
  if (hasCapability__onceToken != -1)
  {
    dispatch_once(&hasCapability__onceToken, block);
  }

  if (hasCapability__capabilitiesBeenSet == 1)
  {
    return hasCapability__blockWrapper[a3];
  }

  else
  {
    return 0;
  }
}

void __28__PLPlatform_hasCapability___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  switch(v8)
  {
    case 100018:
    case 100019:
    case 100020:
    case 100021:
    case 100026:
    case 100027:
    case 100028:
    case 100029:
    case 100040:
    case 100041:
    case 100042:
    case 100043:
    case 100044:
    case 100045:
    case 100050:
    case 100051:
    case 100052:
    case 100053:
    case 100062:
    case 100063:
    case 100064:
    case 100065:
    case 100066:
    case 100067:
    case 100068:
    case 100069:
    case 100074:
    case 100075:
    case 100076:
    case 100077:
    case 100084:
    case 100085:
    case 100086:
    case 100087:
      setCapabilities(a1, a2, 0, a4, a5, a6, a7, a8, 0);
      goto LABEL_6;
    case 100022:
    case 100023:
    case 100024:
    case 100025:
    case 100030:
    case 100031:
    case 100082:
    case 100083:
      return;
    case 100032:
    case 100033:
    case 100034:
    case 100035:
    case 100036:
    case 100037:
    case 100038:
    case 100039:
    case 100046:
    case 100047:
    case 100048:
    case 100049:
    case 100054:
    case 100055:
    case 100056:
    case 100057:
    case 100058:
    case 100059:
    case 100060:
    case 100061:
    case 100070:
    case 100071:
    case 100072:
    case 100073:
    case 100088:
    case 100089:
    case 100090:
    case 100091:
LABEL_3:
      setCapabilities(a1, a2, 0, a4, a5, a6, a7, a8, 1);
      goto LABEL_6;
    case 100078:
    case 100079:
    case 100080:
    case 100081:
    case 100092:
    case 100093:
    case 100094:
    case 100095:
LABEL_4:
      setCapabilities(a1, a2, 1, a4, a5, a6, a7, a8, 1);
LABEL_6:
      hasCapability__capabilitiesBeenSet = 1;
      break;
    default:
      switch(v8)
      {
        case 102025:
        case 102026:
        case 102027:
        case 102028:
        case 102030:
        case 102031:
        case 102034:
        case 102035:
        case 102036:
        case 102037:
        case 102038:
        case 102039:
        case 102040:
        case 102041:
        case 102043:
        case 102044:
        case 102045:
        case 102046:
        case 102047:
        case 102048:
        case 102049:
        case 102050:
        case 102052:
        case 102053:
        case 102054:
        case 102055:
        case 102056:
        case 102057:
        case 102058:
        case 102059:
        case 102060:
        case 102061:
          goto LABEL_4;
        case 102029:
        case 102032:
          goto LABEL_3;
        default:
          return;
      }
  }
}

+ (BOOL)is64Bit
{
  if (is64Bit_onceToken != -1)
  {
    +[PLPlatform is64Bit];
  }

  return is64Bit__is64Bit;
}

uint64_t __21__PLPlatform_is64Bit__block_invoke()
{
  v0 = MEMORY[0x1DA71ADA0]();
  v4 = 0u;
  v5 = 0u;
  *host_info_out = 0u;
  host_info_outCnt = 12;
  result = host_info(v0, 1, host_info_out, &host_info_outCnt);
  if (!result && HIBYTE(host_info_out[3]) == 1)
  {
    is64Bit__is64Bit = 1;
  }

  return result;
}

+ (BOOL)hasNFC
{
  if (hasNFC_onceToken != -1)
  {
    +[PLPlatform hasNFC];
  }

  return hasNFC_hasNfc;
}

void __20__PLPlatform_hasNFC__block_invoke()
{
  v0 = MGCopyAnswer();
  hasNFC_hasNfc = CFBooleanGetValue(v0) != 0;

  CFRelease(v0);
}

+ (BOOL)hasLPEM
{
  if (hasLPEM_onceToken != -1)
  {
    +[PLPlatform hasLPEM];
  }

  return hasLPEM_supportsLPEM;
}

uint64_t __21__PLPlatform_hasLPEM__block_invoke()
{
  result = MGGetBoolAnswer();
  hasLPEM_supportsLPEM = result;
  return result;
}

uint64_t __20__PLPlatform_hasAOT__block_invoke()
{
  result = +[PLPlatform isWatch];
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  hasAOT_result = result;
  return result;
}

uint64_t __20__PLPlatform_hasAOD__block_invoke()
{
  result = +[PLModelingUtilities isiPhone];
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  hasAOD_result = result;
  return result;
}

+ (BOOL)hasSleepMedia
{
  if (hasSleepMedia_onceToken != -1)
  {
    +[PLPlatform hasSleepMedia];
  }

  return 0;
}

uint64_t __20__PLPlatform_hasDCP__block_invoke()
{
  result = MGGetBoolAnswer();
  hasDCP_isDCPSupported = result;
  return result;
}

+ (BOOL)hasOLED
{
  if (hasOLED_onceToken != -1)
  {
    +[PLPlatform hasOLED];
  }

  return hasOLED_isOLEDSupported;
}

uint64_t __21__PLPlatform_hasOLED__block_invoke()
{
  result = MGGetBoolAnswer();
  hasOLED_isOLEDSupported = result;
  return result;
}

uint64_t __39__PLPlatform_hasGenerativeModelSystems__block_invoke()
{
  result = MGGetBoolAnswer();
  hasGenerativeModelSystems_supportsGMS = result;
  return result;
}

+ (BOOL)hasANE
{
  if (hasANE_onceToken != -1)
  {
    +[PLPlatform hasANE];
  }

  return hasANE___hasAppleNeuralEngineSupport;
}

uint64_t __20__PLPlatform_hasANE__block_invoke()
{
  result = MGGetBoolAnswer();
  hasANE___hasAppleNeuralEngineSupport = result;
  return result;
}

+ (BOOL)hasProximitySensor
{
  if (hasProximitySensor_onceToken != -1)
  {
    +[PLPlatform hasProximitySensor];
  }

  return hasProximitySensor___proximitySensorCapability;
}

uint64_t __32__PLPlatform_hasProximitySensor__block_invoke()
{
  result = MGGetBoolAnswer();
  hasProximitySensor___proximitySensorCapability = result;
  return result;
}

+ (BOOL)hasAOP
{
  if (hasAOP_onceToken != -1)
  {
    +[PLPlatform hasAOP];
  }

  return hasAOP_hasAOP;
}

uint64_t __20__PLPlatform_hasAOP__block_invoke()
{
  result = MGGetBoolAnswer();
  hasAOP_hasAOP = result;
  return result;
}

+ (BOOL)hasAOP2
{
  if (hasAOP2_onceToken != -1)
  {
    +[PLPlatform hasAOP2];
  }

  return hasAOP2_hasAOP2;
}

uint64_t __21__PLPlatform_hasAOP2__block_invoke()
{
  result = MGGetBoolAnswer();
  hasAOP2_hasAOP2 = result;
  return result;
}

BOOL __20__PLPlatform_isiPod__block_invoke()
{
  result = +[PLModelingUtilities isiPod];
  isiPod_isiPod = result;
  return result;
}

BOOL __20__PLPlatform_isiPad__block_invoke()
{
  result = +[PLModelingUtilities isiPad];
  isiPad_isiPad = result;
  return result;
}

BOOL __22__PLPlatform_isiPhone__block_invoke()
{
  result = +[PLModelingUtilities isiPhone];
  isiPhone_isiPhone = result;
  return result;
}

BOOL __19__PLPlatform_isiOS__block_invoke()
{
  result = +[PLPlatform isiPhone](PLPlatform, "isiPhone") || +[PLPlatform isiPad](PLPlatform, "isiPad") || +[PLPlatform isiPod];
  isiOS_isiOS = result;
  return result;
}

+ (BOOL)isWatch
{
  if (isWatch_onceToken != -1)
  {
    +[PLPlatform isWatch];
  }

  return isWatch_isWatch;
}

BOOL __21__PLPlatform_isWatch__block_invoke()
{
  result = +[PLModelingUtilities isWatch];
  isWatch_isWatch = result;
  return result;
}

+ (BOOL)isAppleTV
{
  if (isAppleTV_onceToken != -1)
  {
    +[PLPlatform isAppleTV];
  }

  return isAppleTV_isAppleTV;
}

BOOL __23__PLPlatform_isAppleTV__block_invoke()
{
  result = +[PLModelingUtilities isAppleTV];
  isAppleTV_isAppleTV = result;
  return result;
}

BOOL __27__PLPlatform_internalBuild__block_invoke()
{
  result = +[PLModelingUtilities internalBuild];
  internalBuild_result = result;
  return result;
}

+ (BOOL)carrierBuild
{
  if (carrierBuild_onceToken != -1)
  {
    +[PLPlatform carrierBuild];
  }

  return carrierBuild_carrierBuild;
}

BOOL __26__PLPlatform_carrierBuild__block_invoke()
{
  result = +[PLModelingUtilities carrierBuild];
  carrierBuild_carrierBuild = result;
  return result;
}

+ (BOOL)nonUIBuild
{
  if (nonUIBuild_onceToken != -1)
  {
    +[PLPlatform nonUIBuild];
  }

  return nonUIBuild_nonUIBuild;
}

void __24__PLPlatform_nonUIBuild__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    nonUIBuild_nonUIBuild = [v0 isEqualToString:@"NonUI"];

    CFRelease(v1);
  }

  else
  {
    nonUIBuild_nonUIBuild = 0;
  }
}

+ (BOOL)isBasebandMavLeg
{
  if (isBasebandMavLeg_onceToken != -1)
  {
    +[PLPlatform isBasebandMavLeg];
  }

  return isBasebandMavLeg_result;
}

BOOL __30__PLPlatform_isBasebandMavLeg__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003003, 1003004, 1003005, 1003007, 0];
  isBasebandMavLeg_result = result;
  return result;
}

+ (BOOL)isBasebandIce
{
  if (isBasebandIce_onceToken != -1)
  {
    +[PLPlatform isBasebandIce];
  }

  return isBasebandIce_result;
}

BOOL __27__PLPlatform_isBasebandIce__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003006, 1003008, 1003010, 1003011, 0];
  isBasebandIce_result = result;
  return result;
}

+ (BOOL)isBasebandIBIS
{
  if (isBasebandIBIS_onceToken != -1)
  {
    +[PLPlatform isBasebandIBIS];
  }

  return isBasebandIBIS_result;
}

BOOL __28__PLPlatform_isBasebandIBIS__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003009, 0];
  isBasebandIBIS_result = result;
  return result;
}

BOOL __27__PLPlatform_isBasebandMav__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003012, 1003013, 1003014, 1003015, 1003016, 1003017, 1003020, 0];
  isBasebandMav_result = result;
  return result;
}

+ (BOOL)isBasebandMavToAllowSysdiagnoseTrigger
{
  if (isBasebandMavToAllowSysdiagnoseTrigger_onceToken != -1)
  {
    +[PLPlatform isBasebandMavToAllowSysdiagnoseTrigger];
  }

  return isBasebandMavToAllowSysdiagnoseTrigger_result;
}

BOOL __52__PLPlatform_isBasebandMavToAllowSysdiagnoseTrigger__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003015, 1003016, 1003017, 1003020, 0];
  isBasebandMavToAllowSysdiagnoseTrigger_result = result;
  return result;
}

BOOL __29__PLPlatform_isBasebandProto__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003018, 0];
  isBasebandProto_result = result;
  return result;
}

+ (BOOL)isBasebandDale
{
  if (isBasebandDale_onceToken != -1)
  {
    +[PLPlatform isBasebandDale];
  }

  return isBasebandDale_result;
}

BOOL __28__PLPlatform_isBasebandDale__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003019, 0];
  isBasebandDale_result = result;
  return result;
}

BOOL __28__PLPlatform_isBasebandDSDS__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003010, 1003011, 1003012, 1003013, 1003014, 1003015, 1003016, 1003017, 1003018, 1003020, 0];
  isBasebandDSDS_result = result;
  return result;
}

+ (BOOL)kPLXIsOneOf:(int)a3 firstArg:(int)a4 restOfArgs:(char *)a5
{
  v7 = [a1 kPLPlatformAttributes];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 intValue];

  result = 0;
  if (a4 && v9 != -1)
  {
    if (v9 == a4)
    {
      return 1;
    }

    else
    {
      do
      {
        v11 = a5;
        a5 += 8;
        v12 = *v11;
        result = v12 != 0;
        if (v12)
        {
          v13 = v12 == v9;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }
  }

  return result;
}

@end