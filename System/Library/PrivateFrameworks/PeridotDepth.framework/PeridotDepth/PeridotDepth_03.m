void bumpPeridotCalibOneVersion<peridot::CalibHistory::v5::_PeridotCalib,peridot::CalibHistory::v6::_PeridotCalib>(uint64_t a1, uint64_t a2)
{
  *a2 = 6;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v5;
  *(a2 + 8) = v4;
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v8;
  *(a2 + 72) = v7;
  *(a2 + 56) = v6;
  v9 = *(a1 + 108);
  *(a2 + 124) = *(a1 + 124);
  *(a2 + 108) = v9;
  *(a2 + 140) = *(a1 + 140);
  memcpy((a2 + 156), (a1 + 156), 0x2150uLL);
  memcpy((a2 + 8684), (a1 + 8684), 0x47A70uLL);
  memcpy((a2 + 302172), (a1 + 302172), 0x710uLL);
  memcpy((a2 + 303980), (a1 + 303980), 0x710uLL);
  v10 = *(a1 + 305816);
  v11 = *(a1 + 305804);
  *(a2 + 305788) = *(a1 + 305788);
  *(a2 + 305804) = v11;
  *(a2 + 305816) = v10;
  memcpy((a2 + 305832), (a1 + 305832), 0x4414uLL);
  memcpy((a2 + 323260), (a1 + 323260), 0x8380uLL);
  memcpy((a2 + 356928), (a1 + 356928), 0x1038uLL);
  v12 = (a2 + 361080);
  v13 = *(a1 + 361096);
  *(a2 + 361080) = *(a1 + 361080);
  *(a2 + 361096) = v13;
  v14 = *(a1 + 361112);
  v15 = *(a1 + 361128);
  v16 = *(a1 + 361160);
  *(a2 + 361144) = *(a1 + 361144);
  *(a2 + 361160) = v16;
  *(a2 + 361112) = v14;
  *(a2 + 361128) = v15;
  v17 = (a2 + 361176);
  v18 = *(a1 + 361192);
  *(a2 + 361176) = *(a1 + 361176);
  *(a2 + 361192) = v18;
  v19 = *(a1 + 361256);
  v21 = *(a1 + 361208);
  v20 = *(a1 + 361224);
  *(a2 + 361240) = *(a1 + 361240);
  *(a2 + 361256) = v19;
  *(a2 + 361208) = v21;
  *(a2 + 361224) = v20;
  v23 = *(a1 + 361320);
  v22 = *(a1 + 361336);
  v24 = *(a1 + 361368);
  *(a2 + 361352) = *(a1 + 361352);
  *(a2 + 361368) = v24;
  *(a2 + 361320) = v23;
  *(a2 + 361336) = v22;
  v25 = *(a1 + 361272);
  v26 = *(a1 + 361304);
  *(a2 + 361288) = *(a1 + 361288);
  *(a2 + 361304) = v26;
  *(a2 + 361272) = v25;
  *(a2 + 361384) = *(a1 + 361384);
  *(a2 + 361400) = *(a1 + 361400);
  if (*(a2 + 9080) != 0.0)
  {
    v27 = (a2 + 360448);
    if (v27[98] > -2.0)
    {
      if (v27[82] != 0.0)
      {
        v28 = *v12;
        v28.f64[1] = v27[83];
        v48 = vcvt_f32_f64(v28);
        v29 = v27[87];
        v30 = v27[88];
        v31 = v27[89];
        v32.f32[0] = atan2f(v30, v31);
        v47 = v32;
        v46 = atan2f(-v29, sqrtf((v30 * v30) + (v31 * v31)));
        v33 = atan2f(v48.f32[1], v48.f32[0]);
        v34 = v47;
        v34.f32[1] = v46;
        v34.f32[2] = v33;
        v49 = vaddq_f32(v34, xmmword_2247A4610);
        v35 = __sincosf_stret(v49.f32[0]);
        v36 = __sincosf_stret(v49.f32[1]);
        v37 = __sincosf_stret(v49.f32[2]);
        v38 = vmul_n_f32(__PAIR64__(LODWORD(v37.__sinval), LODWORD(v37.__cosval)), v36.__cosval);
        v39 = -(v35.__cosval * v37.__sinval - v37.__cosval * v35.__sinval * v36.__sinval);
        v40 = v35.__cosval * v37.__cosval + v37.__sinval * v35.__sinval * v36.__sinval;
        v41 = v37.__sinval * v35.__sinval + v35.__cosval * v36.__sinval * v37.__cosval;
        v42 = -(v37.__cosval * v35.__sinval - v35.__cosval * v36.__sinval * v37.__sinval);
        v27[79] = v38.f32[0];
        v27[87] = -v36.__sinval;
        v38.i32[0] = vdup_lane_s32(v38, 1).u32[0];
        v38.f32[1] = v40;
        v27[80] = v39;
        *(v27 + 83) = vcvtq_f64_f32(v38);
        v27[81] = v41;
        v27[85] = v42;
        *(v27 + 44) = vcvtq_f64_f32(vmul_n_f32(v35, v36.__cosval));
      }

      v43 = v12[3];
      v17[2] = v12[2];
      v17[3] = v43;
      v44 = v12[5];
      v17[4] = v12[4];
      v17[5] = v44;
      v45 = v12[1];
      *v17 = *v12;
      v17[1] = v45;
    }
  }
}

__n128 bumpPeridotCalibOneVersion<peridot::CalibHistory::v4::_PeridotCalib,peridot::CalibHistory::v5::_PeridotCalib>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 361080);
  v5 = (a1 + 76120);
  *a2 = 5;
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v7;
  *(a2 + 8) = v6;
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v10 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v10;
  *(a2 + 72) = v9;
  *(a2 + 56) = v8;
  v11 = *(a1 + 108);
  *(a2 + 124) = *(a1 + 124);
  *(a2 + 108) = v11;
  *(a2 + 140) = *(a1 + 140);
  memcpy((a2 + 156), (a1 + 156), 0x2150uLL);
  v12 = 0;
  v13 = 0;
  v14 = *(a1 + 12732);
  v15 = a1 + 8928;
  do
  {
    v16 = a2 + 8928 + v12;
    v17 = a2 + v12;
    v18 = *(v15 + v13 - 244);
    *(v17 + 8688) = *(a1 + v13 + 8688);
    *(v17 + 8704) = *(a1 + v13 + 8704);
    v19 = *(v15 + v13 - 208);
    v20 = *(v15 + v13 - 204);
    *(v16 - 244) = v18;
    *(v16 - 212) = v20;
    *(v16 - 196) = *(v15 + v13 - 188);
    v21 = *(v15 + v13 - 172);
    v22 = *(v15 + v13 - 168);
    *(v16 - 216) = v19;
    *(v16 - 184) = v22;
    *(v17 + 8760) = *(a1 + v13 + 8776);
    v23 = *(v15 + v13 - 136);
    v24 = *(v15 + v13 - 132);
    *(v16 - 188) = v21;
    *(v16 - 156) = v24;
    *(v16 - 140) = *(v15 + v13 - 116);
    v25 = *(v15 + v13 - 100);
    v26 = *(a1 + v13 + 8832);
    *(v16 - 160) = v23;
    *(v17 + 8800) = v26;
    *(v17 + 8816) = *(a1 + v13 + 8848);
    v27 = *(v15 + v13 - 64);
    v28 = *(v15 + v13 - 60);
    *(v16 - 132) = v25;
    *(v16 - 100) = v28;
    *(v16 - 84) = *(v15 + v13 - 44);
    v29 = *(v15 + v13 - 28);
    v30 = *(v15 + v13 - 24);
    *(v16 - 104) = v27;
    *(v16 - 72) = v30;
    *(v17 + 8872) = *(v15 + v13 - 8);
    v31 = *(v15 + v13 + 8);
    v32 = *(v15 + v13 + 12);
    *(v16 - 76) = v29;
    *(v16 - 44) = v32;
    *(v16 - 28) = *(v15 + v13 + 28);
    v33 = *(v15 + v13 + 44);
    v34 = *(a1 + v13 + 8976);
    *(v16 - 48) = v31;
    *(v17 + 8912) = v34;
    *(v17 + 8928) = *(v15 + v13 + 64);
    v35 = *(v15 + v13 + 80);
    v36 = *(v15 + v13 + 84);
    *(v16 - 20) = v33;
    *(v16 + 12) = v36;
    *(v16 + 28) = *(v15 + v13 + 100);
    v37 = *(v15 + v13 + 116);
    v38 = *(v15 + v13 + 120);
    *(v16 + 8) = v35;
    *(v16 + 40) = v38;
    *(v17 + 8984) = *(a1 + v13 + 9064);
    *(v17 + 8988) = *(a1 + v13 + 9068);
    *(v16 + 36) = v37;
    v39 = *(v15 + v13 + 152);
    *(v16 + 68) = *(v15 + v13 + 156);
    *(v16 + 84) = *(v15 + v13 + 172);
    *(v16 + 64) = v39;
    *(v16 + 92) = *(v15 + v13 + 188);
    *(v17 + 9024) = *(a1 + v13 + 9120);
    *(v17 + 9040) = *(a1 + v13 + 9136);
    *(v17 + 9044) = *(a1 + v13 + 9140);
    v40 = *(v15 + v13 + 224);
    *(v16 + 124) = *(v15 + v13 + 228);
    *(v16 + 120) = v40;
    *(v16 + 140) = *(v15 + v13 + 244);
    *(v17 + 9076) = v14;
    v13 += 504;
    v12 += 36684;
  }

  while (v13 != 4032);
  *(a2 + 302156) = *(a1 + 12716);
  memcpy((a2 + 302172), (a1 + 12736), 0x710uLL);
  memcpy((a2 + 303980), (a1 + 14544), 0x710uLL);
  v41 = *(a1 + 16380);
  v42 = *(a1 + 16368);
  *(a2 + 305788) = *(a1 + 16352);
  *(a2 + 305804) = v42;
  *(a2 + 305816) = v41;
  memcpy((a2 + 305832), (a1 + 20876), 0x4414uLL);
  memcpy((a2 + 323260), (a1 + 38304), 0x8380uLL);
  memcpy((a2 + 356928), (a1 + 71968), 0x1038uLL);
  *v4 = *v5;
  v4[1] = v5[1];
  v4[2] = v5[2];
  v4[3] = v5[9];
  v4[4] = v5[3];
  v4[5] = v5[4];
  v4[6] = v5[5];
  v4[7] = v5[10];
  v4[8] = v5[6];
  v4[9] = v5[7];
  v4[10] = v5[8];
  v4[11] = v5[11];
  v4[12] = v5[12];
  v4[13] = v5[13];
  v4[14] = v5[14];
  v4[15] = v5[21];
  v4[16] = v5[15];
  v4[17] = v5[16];
  v4[18] = v5[17];
  v4[19] = v5[22];
  v4[20] = v5[18];
  v4[21] = v5[19];
  v4[22] = v5[20];
  v4[23] = v5[23];
  v43 = *(a1 + 76392);
  v44 = *(a1 + 76408);
  v45 = *(a1 + 76440);
  *(a2 + 361384) = *(a1 + 76424);
  *(a2 + 361400) = v45;
  *(a2 + 361352) = v43;
  *(a2 + 361368) = v44;
  v46 = *(a1 + 76328);
  v47 = *(a1 + 76344);
  v48 = *(a1 + 76376);
  *(a2 + 361320) = *(a1 + 76360);
  *(a2 + 361336) = v48;
  *(a2 + 361288) = v46;
  *(a2 + 361304) = v47;
  result = *(a1 + 76312);
  *(a2 + 361272) = result;
  return result;
}

__n128 bumpPeridotCalibOneVersion<peridot::CalibHistory::v2::_PeridotCalib,peridot::CalibHistory::v3::_PeridotCalib>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 36864;
  v5 = a1 + 36864;
  *a2 = 3;
  v6 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v9;
  *(a2 + 56) = v8;
  *(a2 + 40) = v7;
  *(a2 + 104) = 0;
  v10 = *(a1 + 108);
  *(a2 + 124) = *(a1 + 124);
  *(a2 + 108) = v10;
  *(a2 + 140) = *(a1 + 140);
  memcpy((a2 + 156), (a1 + 156), 0x2150uLL);
  memcpy((a2 + 8684), (a1 + 8684), 0xFD4uLL);
  memcpy((a2 + 12736), (a1 + 12736), 0x710uLL);
  memcpy((a2 + 14544), (a1 + 14544), 0x710uLL);
  v11 = *(a1 + 16380);
  v12 = *(a1 + 16368);
  *(a2 + 16352) = *(a1 + 16352);
  *(a2 + 16368) = v12;
  *(a2 + 16380) = v11;
  memcpy((a2 + 16396), (a1 + 16440), 0x1180uLL);
  memcpy((a2 + 20876), (a1 + 20920), 0x41A0uLL);
  *(v4 + 812) = *(v5 + 856);
  *(v4 + 813) = 0;
  v13 = *(a1 + 37728);
  *(a2 + 37700) = *(a1 + 37744);
  *(a2 + 37684) = v13;
  *(a2 + 37708) = *(a1 + 37888);
  *(v4 + 860) = *(v5 + 1232);
  *(v4 + 864) = *(v5 + 1248);
  *(v4 + 868) = *(v5 + 1264);
  *(v4 + 870) = *(v5 + 1276);
  *(v4 + 872) = *(v5 + 1288);
  *(v4 + 874) = *(v5 + 1300);
  *(v4 + 876) = *(v5 + 1312);
  *(v4 + 878) = *(v5 + 1324);
  *(v4 + 880) = *(v5 + 1236);
  *(v4 + 884) = *(v5 + 1252);
  *(v4 + 888) = *(v5 + 1270);
  *(v4 + 890) = *(v5 + 1282);
  *(v4 + 892) = *(v5 + 1294);
  *(v4 + 894) = *(v5 + 1306);
  *(v4 + 896) = *(v5 + 1318);
  *(v4 + 898) = *(v5 + 1330);
  *(v4 + 900) = *(v5 + 1336);
  *(v4 + 904) = *(v5 + 1352);
  *(v4 + 908) = *(v5 + 1368);
  *(v4 + 910) = *(v5 + 1380);
  *(v4 + 912) = *(v5 + 1392);
  *(v4 + 914) = *(v5 + 1404);
  *(v4 + 916) = *(v5 + 1416);
  *(v4 + 918) = *(v5 + 1428);
  *(v4 + 920) = *(v5 + 1340);
  *(v4 + 924) = *(v5 + 1356);
  *(v4 + 928) = *(v5 + 1374);
  *(v4 + 930) = *(v5 + 1386);
  *(v4 + 932) = *(v5 + 1398);
  *(v4 + 934) = *(v5 + 1410);
  *(v4 + 936) = *(v5 + 1422);
  *(v4 + 938) = *(v5 + 1434);
  *(v4 + 940) = *(v5 + 1440);
  *(v4 + 944) = *(v5 + 1456);
  *(v4 + 948) = *(v5 + 1472);
  *(v4 + 950) = *(v5 + 1484);
  *(v4 + 952) = *(v5 + 1496);
  *(v4 + 954) = *(v5 + 1508);
  *(v4 + 956) = *(v5 + 1520);
  *(v4 + 958) = *(v5 + 1532);
  *(v4 + 960) = *(v5 + 1444);
  *(v4 + 964) = *(v5 + 1460);
  *(v4 + 968) = *(v5 + 1478);
  *(v4 + 970) = *(v5 + 1490);
  *(v4 + 972) = *(v5 + 1502);
  *(v4 + 974) = *(v5 + 1514);
  *(v4 + 976) = *(v5 + 1526);
  *(v4 + 978) = *(v5 + 1538);
  *(v4 + 980) = *(v5 + 1544);
  *(v4 + 984) = *(v5 + 1560);
  *(v4 + 988) = *(v5 + 1576);
  *(v4 + 990) = *(v5 + 1588);
  *(v4 + 992) = *(v5 + 1600);
  *(v4 + 994) = *(v5 + 1612);
  *(v4 + 996) = *(v5 + 1624);
  *(v4 + 998) = *(v5 + 1636);
  *(v4 + 1000) = *(v5 + 1548);
  *(v4 + 1004) = *(v5 + 1564);
  *(v4 + 1008) = *(v5 + 1582);
  *(v4 + 1010) = *(v5 + 1594);
  *(v4 + 1012) = *(v5 + 1606);
  *(v4 + 1014) = *(v5 + 1618);
  *(v4 + 1016) = *(v5 + 1630);
  *(v4 + 1018) = *(v5 + 1642);
  *(v4 + 1020) = *(v5 + 1648);
  *(v4 + 1024) = *(v5 + 1664);
  *(v4 + 1028) = *(v5 + 1680);
  *(v4 + 1030) = *(v5 + 1692);
  *(v4 + 1032) = *(v5 + 1704);
  *(v4 + 1034) = *(v5 + 1716);
  *(v4 + 1036) = *(v5 + 1728);
  *(v4 + 1038) = *(v5 + 1740);
  *(v4 + 1040) = *(v5 + 1652);
  *(v4 + 1044) = *(v5 + 1668);
  *(v4 + 1048) = *(v5 + 1686);
  *(v4 + 1050) = *(v5 + 1698);
  *(v4 + 1052) = *(v5 + 1710);
  *(v4 + 1054) = *(v5 + 1722);
  *(v4 + 1056) = *(v5 + 1734);
  *(v4 + 1058) = *(v5 + 1746);
  *(v4 + 1060) = *(v5 + 1752);
  *(v4 + 1064) = *(v5 + 1768);
  *(v4 + 1068) = *(v5 + 1784);
  *(v4 + 1070) = *(v5 + 1796);
  *(v4 + 1072) = *(v5 + 1808);
  *(v4 + 1074) = *(v5 + 1820);
  *(v4 + 1076) = *(v5 + 1832);
  *(v4 + 1078) = *(v5 + 1844);
  *(v4 + 1080) = *(v5 + 1756);
  *(v4 + 1084) = *(v5 + 1772);
  *(v4 + 1088) = *(v5 + 1790);
  *(v4 + 1090) = *(v5 + 1802);
  *(v4 + 1092) = *(v5 + 1814);
  *(v4 + 1094) = *(v5 + 1826);
  *(v4 + 1096) = *(v5 + 1838);
  *(v4 + 1098) = *(v5 + 1850);
  *(v4 + 1100) = *(v5 + 1856);
  *(v4 + 1104) = *(v5 + 1872);
  *(v4 + 1108) = *(v5 + 1888);
  *(v4 + 1110) = *(v5 + 1900);
  *(v4 + 1112) = *(v5 + 1912);
  *(v4 + 1114) = *(v5 + 1924);
  *(v4 + 1116) = *(v5 + 1936);
  *(v4 + 1118) = *(v5 + 1948);
  *(v4 + 1120) = *(v5 + 1860);
  *(v4 + 1124) = *(v5 + 1876);
  *(v4 + 1128) = *(v5 + 1894);
  *(v4 + 1130) = *(v5 + 1906);
  *(v4 + 1132) = *(v5 + 1918);
  *(v4 + 1134) = *(v5 + 1930);
  *(v4 + 1136) = *(v5 + 1942);
  *(v4 + 1138) = *(v5 + 1954);
  *(v4 + 1140) = *(v5 + 1960);
  *(v4 + 1144) = *(v5 + 1976);
  *(v4 + 1148) = *(v5 + 1992);
  *(v4 + 1150) = *(v5 + 2004);
  *(v4 + 1152) = *(v5 + 2016);
  *(v4 + 1154) = *(v5 + 2028);
  *(v4 + 1156) = *(v5 + 2040);
  *(v4 + 1158) = *(v5 + 2052);
  *(v4 + 1160) = *(v5 + 1964);
  *(v4 + 1164) = *(v5 + 1980);
  *(v4 + 1168) = *(v5 + 1998);
  *(v4 + 1170) = *(v5 + 2010);
  *(v4 + 1172) = *(v5 + 2022);
  *(v4 + 1174) = *(v5 + 2034);
  *(v4 + 1176) = *(v5 + 2046);
  *(v4 + 1178) = *(v5 + 2058);
  *(v4 + 1180) = *(v5 + 2288);
  *(v4 + 1182) = *(v5 + 2290);
  *(v4 + 1184) = *(v5 + 2292);
  *(v4 + 1186) = *(v5 + 2294);
  *(v4 + 1188) = *(v5 + 2296);
  *(v4 + 1190) = *(v5 + 2298);
  *(v4 + 1192) = *(v5 + 2300);
  *(v4 + 1194) = *(v5 + 2302);
  *(v4 + 1196) = *(v5 + 2304);
  *(v4 + 1198) = *(v5 + 2306);
  *(v4 + 1200) = *(v5 + 2308);
  *(v4 + 1202) = *(v5 + 2310);
  *(v4 + 1204) = *(v5 + 2312);
  *(v4 + 1206) = *(v5 + 2314);
  *(v4 + 1208) = 0;
  *(v4 + 1210) = *(v5 + 2344);
  *(v4 + 1212) = *(v5 + 2346);
  *(v4 + 1214) = *(v5 + 2348);
  *(v4 + 1216) = *(v5 + 2350);
  *(v4 + 1218) = *(v5 + 2352);
  *(v4 + 1220) = *(v5 + 2354);
  *(v4 + 1222) = *(v5 + 2356);
  *(v4 + 1224) = *(v5 + 2358);
  *(v4 + 1226) = *(v5 + 2360);
  *(v4 + 1228) = *(v5 + 2362);
  *(v4 + 1230) = *(v5 + 2364);
  *(v4 + 1232) = *(v5 + 2366);
  *(v4 + 1234) = *(v5 + 2368);
  *(v4 + 1236) = *(v5 + 2370);
  *(v4 + 1238) = 0;
  *(v4 + 1240) = *(v5 + 2400);
  *(v4 + 1242) = *(v5 + 2402);
  *(v4 + 1244) = *(v5 + 2404);
  *(v4 + 1246) = *(v5 + 2406);
  *(v4 + 1248) = *(v5 + 2408);
  *(v4 + 1250) = *(v5 + 2410);
  *(v4 + 1252) = *(v5 + 2412);
  *(v4 + 1254) = *(v5 + 2414);
  *(v4 + 1256) = *(v5 + 2416);
  *(v4 + 1258) = *(v5 + 2418);
  *(v4 + 1260) = *(v5 + 2420);
  *(v4 + 1262) = *(v5 + 2422);
  *(v4 + 1264) = *(v5 + 2424);
  *(v4 + 1266) = *(v5 + 2426);
  *(v4 + 1268) = 0;
  *(v4 + 1270) = *(v5 + 2456);
  *(v4 + 1272) = *(v5 + 2458);
  *(v4 + 1274) = *(v5 + 2460);
  *(v4 + 1276) = *(v5 + 2462);
  *(v4 + 1278) = *(v5 + 2464);
  *(v4 + 1280) = *(v5 + 2466);
  *(v4 + 1282) = *(v5 + 2468);
  *(v4 + 1284) = *(v5 + 2470);
  *(v4 + 1286) = *(v5 + 2472);
  *(v4 + 1288) = *(v5 + 2474);
  *(v4 + 1290) = *(v5 + 2476);
  *(v4 + 1292) = *(v5 + 2478);
  *(v4 + 1294) = *(v5 + 2480);
  *(v4 + 1296) = *(v5 + 2482);
  *(v4 + 1298) = 0;
  *(v4 + 1300) = *(v5 + 2512);
  *(v4 + 1302) = *(v5 + 2514);
  *(v4 + 1304) = *(v5 + 2516);
  *(v4 + 1306) = *(v5 + 2518);
  *(v4 + 1308) = *(v5 + 2520);
  *(v4 + 1310) = *(v5 + 2522);
  *(v4 + 1312) = *(v5 + 2524);
  *(v4 + 1314) = *(v5 + 2526);
  *(v4 + 1316) = *(v5 + 2528);
  *(v4 + 1318) = *(v5 + 2530);
  *(v4 + 1320) = *(v5 + 2532);
  *(v4 + 1322) = *(v5 + 2534);
  *(v4 + 1324) = *(v5 + 2536);
  *(v4 + 1326) = *(v5 + 2538);
  *(v4 + 1328) = 0;
  *(v4 + 1330) = *(v5 + 2568);
  *(v4 + 1332) = *(v5 + 2570);
  *(v4 + 1334) = *(v5 + 2572);
  *(v4 + 1336) = *(v5 + 2574);
  *(v4 + 1338) = *(v5 + 2576);
  *(v4 + 1340) = *(v5 + 2578);
  *(v4 + 1342) = *(v5 + 2580);
  *(v4 + 1344) = *(v5 + 2582);
  *(v4 + 1346) = *(v5 + 2584);
  *(v4 + 1348) = *(v5 + 2586);
  *(v4 + 1350) = *(v5 + 2588);
  *(v4 + 1352) = *(v5 + 2590);
  *(v4 + 1354) = *(v5 + 2592);
  *(v4 + 1356) = *(v5 + 2594);
  *(v4 + 1358) = 0;
  *(v4 + 1360) = *(v5 + 2624);
  *(v4 + 1362) = *(v5 + 2626);
  *(v4 + 1364) = *(v5 + 2628);
  *(v4 + 1366) = *(v5 + 2630);
  *(v4 + 1368) = *(v5 + 2632);
  *(v4 + 1370) = *(v5 + 2634);
  *(v4 + 1372) = *(v5 + 2636);
  *(v4 + 1374) = *(v5 + 2638);
  *(v4 + 1376) = *(v5 + 2640);
  *(v4 + 1378) = *(v5 + 2642);
  *(v4 + 1380) = *(v5 + 2644);
  *(v4 + 1382) = *(v5 + 2646);
  *(v4 + 1384) = *(v5 + 2648);
  *(v4 + 1386) = *(v5 + 2650);
  *(v4 + 1388) = 0;
  *(v4 + 1390) = *(v5 + 2680);
  *(v4 + 1392) = *(v5 + 2682);
  *(v4 + 1394) = *(v5 + 2684);
  *(v4 + 1396) = *(v5 + 2686);
  *(v4 + 1398) = *(v5 + 2688);
  *(v4 + 1400) = *(v5 + 2690);
  *(v4 + 1402) = *(v5 + 2692);
  *(v4 + 1404) = *(v5 + 2694);
  *(v4 + 1406) = *(v5 + 2696);
  *(v4 + 1408) = *(v5 + 2698);
  *(v4 + 1410) = *(v5 + 2700);
  *(v4 + 1412) = *(v5 + 2702);
  *(v4 + 1414) = *(v5 + 2704);
  *(v4 + 1416) = *(v5 + 2706);
  *(v4 + 1418) = 0;
  *(a2 + 38284) = *(a1 + 39600);
  memcpy((a2 + 38304), (a1 + 39616), 0x8380uLL);
  memcpy((a2 + 71968), (a1 + 73280), 0x1038uLL);
  v14 = *(a1 + 77448);
  *(a2 + 76120) = *(a1 + 77432);
  *(a2 + 76136) = v14;
  v15 = *(a1 + 77464);
  v16 = *(a1 + 77480);
  v17 = *(a1 + 77512);
  *(a2 + 76184) = *(a1 + 77496);
  *(a2 + 76200) = v17;
  *(a2 + 76152) = v15;
  *(a2 + 76168) = v16;
  v18 = *(a1 + 77544);
  *(a2 + 76216) = *(a1 + 77528);
  *(a2 + 76232) = v18;
  v19 = *(a1 + 77608);
  v21 = *(a1 + 77560);
  v20 = *(a1 + 77576);
  *(a2 + 76280) = *(a1 + 77592);
  *(a2 + 76296) = v19;
  *(a2 + 76248) = v21;
  *(a2 + 76264) = v20;
  v23 = *(a1 + 77704);
  v22 = *(a1 + 77720);
  v24 = *(a1 + 77752);
  *(a2 + 76424) = *(a1 + 77736);
  *(a2 + 76440) = v24;
  *(a2 + 76392) = v23;
  *(a2 + 76408) = v22;
  v26 = *(a1 + 77640);
  v25 = *(a1 + 77656);
  v27 = *(a1 + 77688);
  *(a2 + 76360) = *(a1 + 77672);
  *(a2 + 76376) = v27;
  *(a2 + 76328) = v26;
  *(a2 + 76344) = v25;
  result = *(a1 + 77624);
  *(a2 + 76312) = result;
  return result;
}

void sub_2246AB878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__tree<std::__value_type<std::string,peridot::DataBuffer>,std::__map_value_compare<std::string,std::__value_type<std::string,peridot::DataBuffer>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,peridot::DataBuffer>>>::destroy(a8);
  std::vector<std::string>::~vector[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void peridot::CalibManager::resetStrayCalib(peridot::CalibManager *this, _PeridotCalib *a2)
{
  if (a2 == 6)
  {
    v3 = &wc_stary_map_jlnm_bin_V5x;
  }

  else
  {
    v3 = &wc_stary_map_jlnm_bin;
    if (a2 == -1)
    {
      v4 = MGGetProductType();
      if (v4 == 3048527336 || v4 == 3591055299)
      {
        v3 = &wc_stary_map_jlnm_bin_V5x;
      }

      else
      {
        v3 = &wc_stary_map_jlnm_bin;
      }
    }
  }

  readJLNM_v102_stray_map(v3, this);
  *(this + 1) |= 1u;
}

id peridot::CalibManager::getPeridotCamera(peridot::CalibManager *this, const _PeridotCalib *a2)
{
  v4 = (this + 398000);
  LOWORD(v2) = *(this + 201072);
  LOWORD(v3) = *(this + 201073);
  v5 = *(this + 49750);
  v44 = *(this + 49751);
  v46 = *(this + 24876);
  v6 = *(this + 50266);
  v7 = *(this + 50267);
  v8 = [MEMORY[0x277CBEB28] dataWithLength:1024];
  v9 = [MEMORY[0x277CBEB28] dataWithLength:1024];
  v10 = [v8 mutableBytes];
  v11 = v2;
  v12 = v3;
  v13 = 1.0 / *&v44;
  *&v14 = v5 * (1.0 / *&v44);
  v15 = vdivq_f64(v46, vdupq_lane_s64(v44, 0));
  LODWORD(v16) = 0;
  HIDWORD(v16) = v14;
  *&v43 = v14;
  v45 = v16;
  __asm { FMOV            V1.2S, #1.0 }

  v42 = COERCE_DOUBLE(vcvt_f32_f64(v15));
  v22 = (v46.f64[0] + v6 * v5) * v13;
  v23 = (v46.f64[1] + v7 * v5) * v13;
  v24 = v4 + 132;
  v25 = (v10 + 16);
  v26 = 256;
  do
  {
    v28 = v24[-2];
    v27 = v24[-1];
    v30 = *v24;
    v29 = v24[1];
    v24 += 4;
    v25[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v28), v27);
    *v25 = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v29);
    v25 += 2;
    v26 -= 8;
  }

  while (v26);
  v31 = [v9 mutableBytes];
  v32 = v4 + 4;
  v33 = (v31 + 16);
  v34 = 256;
  do
  {
    v36 = v32[-2];
    v35 = v32[-1];
    v38 = *v32;
    v37 = v32[1];
    v32 += 4;
    v33[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v35);
    *v33 = vcvt_hight_f32_f64(vcvt_f32_f64(v38), v37);
    v33 += 2;
    v34 -= 8;
  }

  while (v34);
  v39 = [objc_alloc(MEMORY[0x277CED0C8]) initWithDistortionCenter:v8 distortedRadii:v9 undistortedRadii:{v22, v23}];
  v40 = [objc_alloc(MEMORY[0x277CED0D8]) initWithIntrinsics:v39 cameraToPlatformTransform:v43 pixelSize:v45 forReferenceDimensions:v42 withDistortionModel:{*&_PromotedConst, unk_2247BCC40, 0.0, unk_2247BCC60, v4->f64[1], *&v11, *&v12}];

  return v40;
}

float32x2_t peridot::CalibManager::extrinsicsToFloat4x3(float64x2_t *a1)
{
  v1 = *a1;
  v1.f64[1] = a1[2].f64[0];
  return vcvt_f32_f64(v1);
}

float64x2_t peridot::CalibManager::extrinsicsFromFloat4x3@<Q0>(int8x16_t *this@<X0>, float64x2_t *a2@<X8>)
{
  v3 = *this;
  v4 = this[1];
  v5 = this[2];
  v6 = this[3];
  *a2 = vcvtq_f64_f32(vzip1_s32(*this->i8, *v4.i8));
  a2[1] = vcvtq_f64_f32(vzip1_s32(*v5.i8, *v6.i8));
  a2[2] = vcvtq_f64_f32(vzip2_s32(*v3.i8, *v4.i8));
  a2[3] = vcvtq_f64_f32(vzip2_s32(*v5.i8, *v6.i8));
  result = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v3, v3, 8uLL), *&vextq_s8(v4, v4, 8uLL)));
  a2[4] = result;
  a2[5] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
  return result;
}

__n128 bumpPeridotCalibOneVersion<peridot::CalibHistory::v1::_PeridotCalib,peridot::CalibHistory::v2::_PeridotCalib>(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  *(a2 + 4) = 0u;
  *(a2 + 20) = 0u;
  *(a2 + 36) = 0u;
  *(a2 + 52) = 0u;
  *(a2 + 68) = 0u;
  *(a2 + 84) = 0u;
  *(a2 + 100) = 0;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 28);
  *(a2 + 124) = *(a1 + 44);
  *(a2 + 108) = v4;
  *(a2 + 148) = 0;
  *(a2 + 140) = 0;
  memcpy((a2 + 156), (a1 + 60), 0x2150uLL);
  memcpy((a2 + 8684), (a1 + 8588), 0xFD4uLL);
  memcpy((a2 + 12736), (a1 + 12640), 0x710uLL);
  memcpy((a2 + 14544), (a1 + 14448), 0x710uLL);
  v5 = *(a1 + 16272);
  *(a2 + 16352) = *(a1 + 16256);
  *(a2 + 16368) = v5;
  v6 = *(a1 + 16304);
  v7 = *(a1 + 16320);
  v8 = *(a1 + 16336);
  *(a2 + 0x4000) = *(a1 + 16288);
  *(a2 + 16432) = v8;
  *(a2 + 16416) = v7;
  *(a2 + 16400) = v6;
  memcpy((a2 + 16440), (a1 + 16344), 0x1180uLL);
  memcpy((a2 + 20920), (a1 + 20824), 0x4908uLL);
  memcpy((a2 + 39616), (a1 + 39520), 0x8380uLL);
  memcpy((a2 + 73280), (a1 + 73184), 0x1038uLL);
  v9 = *(a1 + 77352);
  *(a2 + 77432) = *(a1 + 77336);
  *(a2 + 77448) = v9;
  v10 = *(a1 + 77368);
  v11 = *(a1 + 77384);
  v12 = *(a1 + 77416);
  *(a2 + 77496) = *(a1 + 77400);
  *(a2 + 77512) = v12;
  *(a2 + 77464) = v10;
  *(a2 + 77480) = v11;
  v13 = *(a1 + 77448);
  *(a2 + 77528) = *(a1 + 77432);
  *(a2 + 77544) = v13;
  v14 = *(a1 + 77512);
  v16 = *(a1 + 77464);
  v15 = *(a1 + 77480);
  *(a2 + 77592) = *(a1 + 77496);
  *(a2 + 77608) = v14;
  *(a2 + 77560) = v16;
  *(a2 + 77576) = v15;
  v18 = *(a1 + 77608);
  v17 = *(a1 + 77624);
  v19 = *(a1 + 77656);
  *(a2 + 77736) = *(a1 + 77640);
  *(a2 + 77752) = v19;
  *(a2 + 77704) = v18;
  *(a2 + 77720) = v17;
  v21 = *(a1 + 77544);
  v20 = *(a1 + 77560);
  v22 = *(a1 + 77592);
  *(a2 + 77672) = *(a1 + 77576);
  *(a2 + 77688) = v22;
  *(a2 + 77640) = v21;
  *(a2 + 77656) = v20;
  result = *(a1 + 77528);
  *(a2 + 77624) = result;
  return result;
}

float64x2_t bumpPeridotCalibOneVersion<peridot::CalibHistory::v3::_PeridotCalib,peridot::CalibHistory::v4::_PeridotCalib>(void *__src, float64x2_t *__dst)
{
  memcpy(__dst, __src, 0x12AA8uLL);
  LODWORD(__dst->f64[0]) = 4;
  __dst[4762] = vnegq_f64(__dst[4762]);
  result = vnegq_f64(__dst[4768]);
  __dst[4768] = result;
  return result;
}

uint64_t bumpPeridotCalibOneVersion<peridot::CalibHistory::v8::_PeridotCalib,peridot::CalibHistory::v9::_PeridotCalib>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 401408);
  v5 = (a1 + 401408);
  *a2 = 9;
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v7;
  *(a2 + 8) = v6;
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v10 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v10;
  *(a2 + 72) = v9;
  *(a2 + 56) = v8;
  memcpy((a2 + 108), (a1 + 108), 0x8DC0uLL);
  v11 = *(a1 + 36412);
  *(a2 + 36396) = *(a1 + 36396);
  *(a2 + 36412) = v11;
  *(a2 + 36428) = *(a1 + 36428);
  memcpy((a2 + 36444), (a1 + 36444), 0x3150uLL);
  memcpy((a2 + 49068), (a1 + 49068), 0x47A90uLL);
  memcpy((a2 + 342588), (a1 + 342588), 0x710uLL);
  memcpy((a2 + 344396), (a1 + 344396), 0x710uLL);
  v12 = *(a1 + 346232);
  v13 = *(a1 + 346220);
  *(a2 + 346204) = *(a1 + 346204);
  *(a2 + 346220) = v13;
  *(a2 + 346232) = v12;
  memcpy((a2 + 346248), (a1 + 346248), 0x46A4uLL);
  memcpy((a2 + 364332), (a1 + 364332), 0x8380uLL);
  memcpy((a2 + 398000), (a1 + 398000), 0x1038uLL);
  v14 = *(a1 + 402168);
  *(a2 + 402152) = *(a1 + 402152);
  *(a2 + 402168) = v14;
  v15 = *(a1 + 402184);
  v16 = *(a1 + 402200);
  v17 = *(a1 + 402232);
  *(a2 + 402216) = *(a1 + 402216);
  *(a2 + 402232) = v17;
  *(a2 + 402184) = v15;
  *(a2 + 402200) = v16;
  v18 = *(a1 + 402264);
  *(a2 + 402248) = *(a1 + 402248);
  *(a2 + 402264) = v18;
  v19 = *(a1 + 402328);
  v21 = *(a1 + 402280);
  v20 = *(a1 + 402296);
  *(a2 + 402312) = *(a1 + 402312);
  *(a2 + 402328) = v19;
  *(a2 + 402280) = v21;
  *(a2 + 402296) = v20;
  v23 = *(a1 + 402392);
  v22 = *(a1 + 402408);
  v24 = *(a1 + 402440);
  *(a2 + 402456) = *(a1 + 402424);
  *(a2 + 402472) = v24;
  *(a2 + 402424) = v23;
  *(a2 + 402440) = v22;
  v25 = *(a1 + 402344);
  v26 = *(a1 + 402376);
  *(a2 + 402392) = *(a1 + 402360);
  *(a2 + 402408) = v26;
  *(a2 + 402376) = v25;
  *(a2 + 402488) = *(a1 + 402456);
  *(a2 + 402504) = *(a1 + 402472);
  v4[1112] = v5[1080];
  v4[1113] = v5[1081];
  v4[1114] = v5[1082];
  v4[1115] = v5[1083];
  v4[1116] = v5[1084];
  v4[1117] = v5[1085];
  v4[1118] = v5[1086];
  v4[1119] = v5[1087];

  return nvmGetModuleSerialNumber((a2 + 365228), 0x8000, (a2 + 402344));
}

__CFData *peridot::CalibManager::createIspFirmwareCalib(peridot::CalibManager *this, _PeridotCalib *a2, const __CFDictionary *a3)
{
  v4 = a2;
  v5 = [(_PeridotCalib *)v4 objectForKeyedSubscript:@"Version"];
  v7 = v5;
  if (!v5 || (v8 = [v5 unsignedIntValue], v8 == -1) || v8 == 4)
  {
    IspFirmwareCalibV4 = peridot::CalibManager::createIspFirmwareCalibV4(this, v4, v6);
  }

  else
  {
    if (v8 != 3)
    {
      peridot_depth_log("Unknown firmware calib version requested: %u", v8);
      IspFirmwareCalibV4 = 0;
      goto LABEL_11;
    }

    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 1104);
    IspFirmwareCalibV4 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, 1104);
      MutableBytePtr = CFDataGetMutableBytePtr(IspFirmwareCalibV4);
      bzero(MutableBytePtr, 0x450uLL);
      peridot::CalibManager::getFwSpotLocations(this, v4, __src);
      *MutableBytePtr = 3;
      v12 = *(this + 8);
      v13 = *(this + 24);
      *(MutableBytePtr + 40) = *(this + 40);
      *(MutableBytePtr + 24) = v13;
      *(MutableBytePtr + 8) = v12;
      v14 = *(this + 56);
      v15 = *(this + 72);
      v16 = *(this + 88);
      *(MutableBytePtr + 26) = *(this + 26);
      *(MutableBytePtr + 88) = v16;
      *(MutableBytePtr + 72) = v15;
      *(MutableBytePtr + 56) = v14;
      v17 = *(this + 346204);
      v18 = *(this + 346220);
      *(MutableBytePtr + 65) = *(this + 346232);
      *(MutableBytePtr + 1012) = v17;
      *(MutableBytePtr + 1028) = v18;
      v19 = *(this + 346204);
      v20 = *(this + 346220);
      *(MutableBytePtr + 1084) = *(this + 346232);
      *(MutableBytePtr + 67) = v20;
      *(MutableBytePtr + 66) = v19;
      memcpy(MutableBytePtr + 108, __src, 0x388uLL);
    }
  }

  v21 = +[PDUserDefaults defaults];
  v22 = [v21 dumpIspPeridotCalibPath];

  if (v22)
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = +[PDInternalUtils currTimeAsString];
    v25 = [v23 stringWithFormat:@"%@/%@_IspPeridotCalib.bin", v22, v24];

    [(__CFData *)IspFirmwareCalibV4 writeToFile:v25 atomically:1];
  }

LABEL_11:
  return IspFirmwareCalibV4;
}

void peridot::CalibManager::getFwSpotLocations(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = [v14 objectForKeyedSubscript:@"SpotsAtOriginalLocation"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v14 objectForKeyedSubscript:@"SpotsOptimizedForDistance"];
  v9 = v8;
  if (v8)
  {
    [v8 unsignedLongValue];
  }

  v10 = [v14 objectForKeyedSubscript:@"SpotsOptimizedForPlane"];
  v12 = v10;
  if (!v10)
  {
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_10:
    v13 = peridot::CalibManager::getPeridotCamera(a1, v11);
    peridot::compensateForParallax(v13);
  }

  [v10 BOOLValue];
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_8:
  memcpy(a3, (a1 + 344396), 0x388uLL);
}

uint64_t peridot::PeridotDXPRangeEstimation::PeridotDXPRangeEstimation(uint64_t this)
{
  *this = 257;
  *(this + 2) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 128) = 0;
  return this;
}

{
  *this = 257;
  *(this + 2) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 128) = 0;
  return this;
}

void peridot::PeridotDXPRangeEstimation::~PeridotDXPRangeEstimation(peridot::PeridotDXPRangeEstimation *this)
{
  v1 = *(this + 16);
  if (v1)
  {
    *(this + 17) = v1;
    operator delete(v1);
  }
}

{
  v1 = *(this + 16);
  if (v1)
  {
    *(this + 17) = v1;
    operator delete(v1);
  }
}

double peridot::PeridotDXPRangeEstimation::init(std::vector<unsigned int> *this, uint64_t a2, int a3)
{
  LOWORD(this->__begin_) = a3;
  BYTE2(this->__begin_) = BYTE2(a3);
  LOBYTE(this->__end_) = *(a2 + 5);
  v4 = (this + 128);
  end = this[5].__end_;
  this[6].__end_cap_.__value_ = vcvtad_u64_f64(((*(a2 + 3680) - *(a2 + 3672)) >> 2) * 0.35);
  if ((this[6].__begin_ - end) <= 0x33)
  {
    operator new();
  }

  v6 = this[5].__end_cap_.__value_ - end;
  if ((v6 >> 2) > 3)
  {
    if (v6 != 16)
    {
      this[5].__end_cap_.__value_ = end + 4;
    }
  }

  else
  {
    std::vector<float>::__append(v4, 4 - (v6 >> 2));
    end = v4->__begin_;
  }

  *end = peridot::PeridotDXPRangeEstimation::getPulseParams(std::vector<float> const&,std::vector<float>&)::pulseParamsResult;
  result = 131072.03;
  this[6].__end_ = 0x410000003E4CCCCDLL;
  return result;
}

void std::vector<float>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = 4 * __n;
      bzero(this->__end_, 4 * __n);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 2) + __n;
    if (v7 >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * __n;
    bzero(v11, 4 * __n);
    memcpy(0, begin, v6);
    this->__begin_ = 0;
    this->__end_ = &v11[v12];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

double peridot::PeridotDXPRangeEstimation::getPulseParams(uint64_t a1, uint64_t a2, _OWORD **a3)
{
  result = *&peridot::PeridotDXPRangeEstimation::getPulseParams(std::vector<float> const&,std::vector<float>&)::pulseParamsResult;
  **a3 = peridot::PeridotDXPRangeEstimation::getPulseParams(std::vector<float> const&,std::vector<float>&)::pulseParamsResult;
  return result;
}

uint64_t peridot::PeridotDXPRangeEstimation::setRunMode(uint64_t result, int a2)
{
  *result = a2;
  *(result + 2) = BYTE2(a2);
  return result;
}

__n128 peridot::PeridotDXPRangeEstimation::configure(uint64_t a1, uint64_t a2)
{
  *(a1 + 4) = *a2;
  *(a1 + 8) = *(a2 + 5);
  v2 = *(a2 + 3424);
  *(a1 + 20) = *(a2 + 3432);
  *(a1 + 12) = v2;
  v3 = *(a2 + 3436);
  *(a1 + 32) = *(a2 + 3444);
  *(a1 + 24) = v3;
  v4 = *(a2 + 3464);
  *(a1 + 56) = *(a2 + 3480);
  *(a1 + 40) = v4;
  v5 = *(a2 + 3448);
  *(a1 + 80) = *(a2 + 3464);
  *(a1 + 64) = v5;
  result = *(a2 + 3744);
  v7 = *(a2 + 3776);
  *(a1 + 96) = *(a2 + 3760);
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t peridot::PeridotDXPRangeEstimation::estimatorNew(float32x4_t *this, uint64_t a2, const peridot::PeridotDetectorOutput::DetectorOutSpot *a3, const peridot::PeridotPreProcessOutput::PreProcessorOutSpot *a4, const unint64_t *a5, const peridot::PeridotDxpMacro *a6, peridot::PeridotDepth *a7)
{
  v9 = 0;
  v210 = *MEMORY[0x277D85DE8];
  v10 = this->f32[3];
  v166 = a3 + 400;
  v167 = a3 + 160;
  v168 = a3 + 640;
  v11 = a3 + 36;
  v12 = a3 + 276;
  v13 = a3 + 516;
  v194 = v10;
  v14 = (a7 + 192 * a2);
  v15 = a3 + 240;
  v16 = v14 + 4;
  v17 = a3 + 480;
  v18 = v14 + 8;
  v19 = a3 + 88;
  v203 = a3 + 328;
  v20 = a3 + 568;
  v192 = a3 + 48;
  v193 = a3 + 24;
  v190 = a3 + 72;
  v191 = a3 + 60;
  v189 = (v14 + 3);
  v187 = a3 + 236;
  v188 = a3 + 235;
  v185 = a3 + 264;
  v186 = a3 + 237;
  v184 = a3 + 288;
  v182 = a3 + 312;
  v183 = a3 + 300;
  v181 = (v14 + 7);
  v179 = a3 + 476;
  v180 = a3 + 475;
  v178 = a3 + 477;
  v201 = a3 + 528;
  v202 = a3 + 504;
  v199 = a3 + 552;
  v200 = a3 + 540;
  v198 = (v14 + 11);
  v196 = a3 + 716;
  v197 = a3 + 715;
  v195 = a3 + 717;
  v175 = a3;
  v173 = v14;
  v174 = a3 + 36;
  v171 = v14 + 4;
  v172 = a3 + 240;
  v169 = a3 + 88;
  v170 = a3 + 480;
  v177 = v14 + 8;
  do
  {
    if (v9 != 1 || (this->i8[0] & 1) != 0)
    {
      v21 = v168;
      if (v9)
      {
        v21 = v167;
        if (v9 != 2)
        {
          v21 = v166;
        }
      }

      v22 = 0;
      v23 = *(v21 + 1);
      v208[0] = *v21;
      v208[1] = v23;
      v209 = *(v21 + 8);
      while (1)
      {
        v34 = v13;
        if (v9)
        {
          v34 = v12;
          if (v9 != 1)
          {
            v34 = v11;
          }
        }

        if (*&v34[4 * v22] <= 0.2)
        {
          if (v9 == 2)
          {
            v45 = (*(a3 + v22) + 1.5) * v194;
            v46 = *v14;
            *(*v14 + 80 * v22) = v45;
            v41 = 0.0;
            v42 = 0.0;
            v43 = 0.0;
            goto LABEL_173;
          }

          if (v9 != 1)
          {
            *(*v18 + 80 * v22) = v10 * *&v17[8 * v22];
            v41 = 0.0;
            v42 = 0.0;
            v43 = 0.0;
            goto LABEL_165;
          }

          v39 = (*&v15[8 * v22] + 1.5) * v194;
          v40 = *v16;
          *(*v16 + 80 * v22) = v39;
          v41 = 0.0;
          v42 = 0.0;
          v43 = 0.0;
          goto LABEL_135;
        }

        if (v9 == 1)
        {
          break;
        }

        if (v9)
        {
          v36 = &v19[8 * v22];
          v44 = *(a3 + v22);
          goto LABEL_30;
        }

        v35 = 0;
        v36 = &v20[8 * v22];
        v37 = 0.5;
        v38 = 92;
LABEL_31:
        v47 = *(a4 + 46);
        v48 = *(a4 + 71);
        v49 = *(a4 + 21);
        v50 = this[9].f32[2];
        v51 = *v36;
        v52 = 0.0;
        if (*(v208 + v22) <= v50 || v51 == 0 || v51 >= v38 - 1)
        {
          goto LABEL_39;
        }

        v56 = *(a4 + 21);
        if (v9)
        {
          v56 = *(a4 + 71);
          if (v9 == 2)
          {
            v56 = *(a4 + 46);
          }
        }

        v57 = *(*v56 + 8);
        v58 = (v57 + 4 * v51);
        v60 = *(v58 - 1);
        v59 = *v58;
        v61 = *(v57 + 4 * (v51 + 1));
        if (v60 > *v58 && vabds_f32(v60, v59) >= 0.0000001)
        {
LABEL_39:
          v55 = 0.0;
        }

        else if (v59 >= v61 || (v55 = 0.0, vabds_f32(v61, v59) < 0.0000001))
        {
          v62 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(this[5], v60), this[6], v59), this[7], v61).u64[0];
          v52 = (((v37 + (v51 + 1)) + (vmuls_lane_f32(-0.5, v62, 1) / v62.f32[0])) + (v38 * v35)) * v10;
          v55 = *(v208 + v22);
        }

        v63 = v38 + ~v51;
        v64 = this[10].u64[0];
        if (v64 < v63)
        {
          v63 = this[10].u64[0];
        }

        v65 = v64;
        v41 = (v55 * v63) / v64;
        *(v208 + v22) = v41;
        if (v9)
        {
          v66 = 8 * v22;
          if (v9 == 1)
          {
            v67 = &v203[v66 + 24];
            v68 = *&v15[8 * v22];
          }

          else
          {
            v67 = &v19[v66 + 24];
            v68 = *(a3 + v22);
          }

          v72 = v68;
          v71 = this[3].u64[0];
          v69 = vcvtms_u32_f32((v72 + -1.0) / v71);
          v70 = 2.0;
        }

        else
        {
          v69 = 0;
          v67 = &v20[8 * v22 + 24];
          v70 = 0.5;
          v71 = 92;
        }

        v73 = *v67;
        v74 = v208 + v22;
        v75 = 0.0;
        if (v74[3] <= v50 || !v73 || v73 >= v71 - 1)
        {
          goto LABEL_68;
        }

        v76 = v49;
        if (v9)
        {
          v76 = v47;
          if (v9 == 1)
          {
            v76 = v48;
          }
        }

        v77 = *(*(v76 + 8) + 8);
        v78 = (v77 + 4 * v73);
        v80 = *(v78 - 1);
        v79 = *v78;
        v81 = *(v77 + 4 * (v73 + 1));
        if (v80 <= *v78 || vabds_f32(v80, v79) < 0.0000001)
        {
          if (v79 >= v81 || (v82 = 0.0, vabds_f32(v81, v79) < 0.0000001))
          {
            v83 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(this[5], v80), this[6], v79), this[7], v81).u64[0];
            v75 = (((v70 + (v71 * v69)) + (v73 + 1)) + (vmuls_lane_f32(-0.5, v83, 1) / v83.f32[0])) * v10;
            v82 = v74[3];
          }
        }

        else
        {
LABEL_68:
          v82 = 0.0;
        }

        v84 = v71 + ~v73;
        if (v64 < v84)
        {
          v84 = v64;
        }

        v42 = (v82 * v84) / v65;
        v74[3] = v42;
        if (v9)
        {
          v85 = 8 * v22;
          if (v9 == 1)
          {
            v86 = &v203[v85 + 48];
            v87 = *&v15[8 * v22];
          }

          else
          {
            v86 = &v19[v85 + 48];
            v87 = *(a3 + v22);
          }

          v91 = v87;
          v90 = this[3].u64[1];
          v88 = vcvtms_u32_f32((v91 + -1.0) / v90);
          v89 = 2.0;
        }

        else
        {
          v88 = 0;
          v86 = &v20[8 * v22 + 48];
          v89 = 0.5;
          v90 = 92;
        }

        v92 = *v86;
        v94 = v74[6];
        v93 = v74 + 6;
        v95 = v94;
        v96 = 0.0;
        if (v94 <= v50 || !v92 || v92 >= v90 - 1)
        {
          goto LABEL_88;
        }

        if (v9)
        {
          v49 = v47;
          if (v9 == 1)
          {
            v49 = v48;
          }
        }

        v97 = *(*(v49 + 16) + 8);
        v98 = (v97 + 4 * v92);
        v100 = *(v98 - 1);
        v99 = *v98;
        v101 = *(v97 + 4 * (v92 + 1));
        if (v100 <= *v98 || vabds_f32(v100, v99) < 0.0000001)
        {
          if (v99 >= v101 || (v102 = 0.0, vabds_f32(v101, v99) < 0.0000001))
          {
            v103 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(this[5], v100), this[6], v99), this[7], v101).u64[0];
            v96 = (((v89 + (v90 * v88)) + (v92 + 1)) + (vmuls_lane_f32(-0.5, v103, 1) / v103.f32[0])) * v10;
            v102 = v95;
          }
        }

        else
        {
LABEL_88:
          v102 = 0.0;
        }

        v104 = v90 + ~v92;
        if (v64 < v104)
        {
          v104 = v64;
        }

        v43 = (v102 * v104) / v65;
        *v93 = v43;
        v105 = v20;
        if (v9)
        {
          v105 = v203;
          if (v9 != 1)
          {
            v105 = v19;
          }
        }

        v106 = &v105[8 * v22];
        v107 = *v106;
        v108 = v106[3];
        v109 = v106[6];
        v110 = fmaxf(fmaxf(v107, v108), v109);
        if (v110 <= 0.0)
        {
          goto LABEL_131;
        }

        v111 = v110 + 1.0;
        if (v41 <= v50)
        {
          if (v42 > v50)
          {
LABEL_104:
            v42 = ((v108 + 1.0) * v42) / v111;
            if (v43 <= v50)
            {
              goto LABEL_99;
            }

LABEL_98:
            v43 = ((v109 + 1.0) * v43) / v111;
            goto LABEL_99;
          }
        }

        else
        {
          v41 = ((v107 + 1.0) * v41) / v111;
          if (v42 > v50)
          {
            goto LABEL_104;
          }
        }

        if (v43 > v50)
        {
          goto LABEL_98;
        }

LABEL_99:
        v112 = v43 + (v42 + v41);
        if (v112 > 0.0)
        {
          v113 = (((v41 * v52) + (v42 * v75)) + (v43 * v96)) / v112;
          if (v9)
          {
            if (v9 != 1)
            {
              v46 = *v14;
              *(*v14 + 80 * v22) = v113;
LABEL_173:
              v122 = v46 + 80 * v22;
              *(v122 + 8) = *&v11[4 * v22];
              *(v122 + 20) = *&v193[4 * v22];
              *(v122 + 12) = *&v192[4 * v22];
              *(v122 + 4) = *&v191[4 * v22];
              *(v122 + 28) = *&v190[4 * v22];
              *(v122 + 48) = 1;
              v158 = *(a4 + 37);
              v159 = *(a4 + 38);
              if (v158 != v159)
              {
                v160 = v158 + 1;
                if (v158 + 1 != v159)
                {
                  v161 = *v158;
                  v162 = v158 + 1;
                  do
                  {
                    v163 = *v162++;
                    v164 = v163;
                    if (v161 < v163)
                    {
                      v161 = v164;
                      v158 = v160;
                    }

                    v160 = v162;
                  }

                  while (v162 != v159);
                }
              }

              *(v122 + 36) = *v158;
              v24 = 19;
              v26 = v189;
              v25 = (a4 + 392);
              v27 = v43 + (v42 + v41);
              v29 = v187;
              v28 = v188;
              v30 = v186;
              goto LABEL_10;
            }

            v40 = *v16;
            *(*v16 + 80 * v22) = v113;
            goto LABEL_135;
          }

          *(*v18 + 80 * v22) = v113;
LABEL_143:
          if (*&v13[4 * v22] > 0.2)
          {
            v207 = 0;
            v206 = 0;
            v130 = *(a4 + 15);
            v131 = *v130;
            v132 = *(*v130 + 16);
            if (v132 >= 0x171)
            {
              peridot_depth_log("Trying to copy histogram of different size");
              v132 = *(v131 + 16);
              v130 = *(a4 + 15);
            }

            v206 = v132;
            memcpy(__dst, *(v131 + 8), 4 * v132);
            v133 = this->u8[8];
            if (v133 >= 2)
            {
              for (i = 1; i != v133; ++i)
              {
                v135 = v130[i];
                v136 = *(v135 + 16);
                if (v136)
                {
                  v137 = *(v135 + 8);
                  if (v136 > 7 && (__dst < &v137->f32[v136] ? (v138 = v137 >= &__dst[v136]) : (v138 = 1), v138))
                  {
                    v139 = v136 & 0xFFFFFFFFFFFFFFF8;
                    v140 = v137 + 1;
                    v141 = &v205;
                    v142 = v136 & 0xFFFFFFFFFFFFFFF8;
                    do
                    {
                      v143 = vaddq_f32(*v141, *v140);
                      v141[-1] = vaddq_f32(v141[-1], v140[-1]);
                      *v141 = v143;
                      v141 += 2;
                      v140 += 2;
                      v142 -= 8;
                    }

                    while (v142);
                    if (v136 == v139)
                    {
                      continue;
                    }
                  }

                  else
                  {
                    v139 = 0;
                  }

                  v144 = v136 - v139;
                  v145 = v139;
                  v146 = &__dst[v139];
                  v147 = &v137->f32[v145];
                  do
                  {
                    v148 = *v147++;
                    *v146 = *v146 + v148;
                    ++v146;
                    --v144;
                  }

                  while (v144);
                }
              }
            }

            peridot::PeridotDxpMacro::getPMF(a6, *(*v177 + 80 * v22), __dst, *(*v130 + 16), &v207 + 1, &v207);
            v149 = v207;
            v18 = v177;
            v150 = *v177 + 80 * v22;
            *(v150 + 40) = HIDWORD(v207);
            *(v150 + 44) = v149;
            v11 = v174;
            a3 = v175;
            v15 = v172;
            v14 = v173;
            v17 = v170;
            v16 = v171;
            v19 = v169;
          }

LABEL_165:
          v122 = *v18 + 80 * v22;
          *(v122 + 8) = *&v13[4 * v22];
          *(v122 + 20) = *&v202[4 * v22];
          *(v122 + 12) = *&v201[4 * v22];
          *(v122 + 4) = *&v200[4 * v22];
          *(v122 + 28) = *&v199[4 * v22];
          *(v122 + 48) = 2;
          v151 = *(a4 + 12);
          v152 = *(a4 + 13);
          if (v151 != v152)
          {
            v153 = v151 + 1;
            if (v151 + 1 != v152)
            {
              v154 = *v151;
              v155 = v151 + 1;
              do
              {
                v156 = *v155++;
                v157 = v156;
                if (v154 < v156)
                {
                  v154 = v157;
                  v151 = v153;
                }

                v153 = v155;
              }

              while (v155 != v152);
            }
          }

          *(v122 + 36) = *v151;
          v24 = 19;
          v26 = v198;
          v25 = (a4 + 192);
          v27 = v43 + (v42 + v41);
          v29 = v196;
          v28 = v197;
          v30 = v195;
          goto LABEL_10;
        }

        v114 = v52 > 0.0;
        if (v52 <= 0.0)
        {
          v115 = 0.0;
        }

        else
        {
          v115 = v52;
        }

        if (v75 <= 0.0)
        {
          v116 = 0.0;
        }

        else
        {
          v116 = v75;
        }

        v117 = v115 + v116;
        if (v75 > 0.0)
        {
          ++v114;
        }

        if (v96 > 0.0)
        {
          v117 = v96 + v117;
          ++v114;
        }

        if (v114)
        {
          v117 = v117 / v114;
        }

        v118 = v18;
        if (v9)
        {
          v118 = v16;
          if (v9 == 2)
          {
            v118 = v14;
          }
        }

        *(*v118 + 80 * v22) = v117;
        if (v52 <= 0.0)
        {
          v119 = 0.0;
        }

        else
        {
          v119 = 1.0;
        }

        v41 = v119;
        if (v75 <= 0.0)
        {
          v120 = 0.0;
        }

        else
        {
          v120 = 1.0;
        }

        v42 = v120;
        if (v96 <= 0.0)
        {
          v121 = 0.0;
        }

        else
        {
          v121 = 1.0;
        }

        v43 = v121;
        if (!v9)
        {
          goto LABEL_143;
        }

LABEL_131:
        if (!v9)
        {
          goto LABEL_165;
        }

        if (v9 == 2)
        {
          v46 = *v14;
          goto LABEL_173;
        }

        v40 = *v16;
LABEL_135:
        v122 = v40 + 80 * v22;
        *(v122 + 8) = *&v12[4 * v22];
        *(v122 + 20) = *&v185[4 * v22];
        *(v122 + 12) = *&v184[4 * v22];
        *(v122 + 4) = *&v183[4 * v22];
        *(v122 + 28) = *&v182[4 * v22];
        *(v122 + 48) = 3;
        v123 = *(a4 + 62);
        v124 = *(a4 + 63);
        if (v123 != v124)
        {
          v125 = v123 + 1;
          if (v123 + 1 != v124)
          {
            v126 = *v123;
            v127 = v123 + 1;
            do
            {
              v128 = *v127++;
              v129 = v128;
              if (v126 < v128)
              {
                v126 = v129;
                v123 = v125;
              }

              v125 = v127;
            }

            while (v127 != v124);
          }
        }

        *(v122 + 36) = *v123;
        v24 = 24;
        v26 = v181;
        v25 = (a4 + 592);
        v27 = v43 + (v42 + v41);
        v29 = v179;
        v28 = v180;
        v30 = v178;
LABEL_10:
        v32 = v42 == 0.0 && v43 == 0.0;
        v33 = 1.0 / (v27 + (v32 & (v41 == 0.0)));
        *(v122 + 64) = v41 * v33;
        *(v122 + 68) = v42 * v33;
        *(v122 + 72) = v43 * v33;
        *v26 = (*v25 * 0.25) / this[4].f32[0];
        *(v122 + 60) = *(v122 + 60) & ((-7 << v24) - 1) | ((*v28 | (2 * *v29) | (4 * v30[v22++])) << v24);
        if (v22 == 3)
        {
          goto LABEL_2;
        }
      }

      v36 = &v203[8 * v22];
      v44 = *&v15[8 * v22];
LABEL_30:
      v38 = this[2].u64[1];
      v35 = vcvtms_u32_f32((v44 + -1.0) / v38);
      v37 = 2.0;
      goto LABEL_31;
    }

LABEL_2:
    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t peridot::PeridotDXPRangeEstimation::calcBLparamsHS(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v200 = v5;
  v202 = v6;
  v203 = v4;
  v204 = v8;
  v206 = v7;
  v10 = v9;
  v211 = v11;
  v261 = *MEMORY[0x277D85DE8];
  v210 = v9;
  if (v9)
  {
    v12 = 0;
    v13 = v4;
    do
    {
      v212 = v12;
      v14 = (*v206 + 24 * v12);
      v15 = *v14;
      v16 = v14[1] - *v14;
      if (v16)
      {
        v17 = 0;
        v18 = v16 >> 2;
        v19 = *v211;
        if (v18 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18;
        }

        v21 = 1;
        do
        {
          v22 = *v15++;
          if (v22 == 1)
          {
            *(&v255 + v17) = v21;
            v23 = v21 * v13;
            *(&v249 + v17) = expf(v23 * v19[1]);
            *(&v243 + v17) = expf(v23 * v19[3]);
            v242[v17++] = 1.0;
          }

          ++v21;
          --v20;
        }

        while (v20);
        v236 = &unk_283809BF8;
        if (v17)
        {
          operator new[]();
        }
      }

      else
      {
        v17 = 0;
        v236 = &unk_283809BF8;
      }

      v237 = 0;
      v238 = 0;
      v239 = 3;
      v240 = 0;
      v241 = 24 * v17;
      if (v17)
      {
        v24 = 0;
        v25 = 0;
        do
        {
          v26 = 8 * v24;
          *(v237 + v26) = *(&v249 + v25);
          *(v237 + v26 + 8) = *(&v243 + v25);
          *(v237 + v26 + 16) = v242[v25++];
          v24 += 3;
        }

        while (v17 > v25);
      }

      v230 = &unk_283809BF8;
      v231 = 0;
      v232 = 0;
      v233 = 0;
      v234 = 0;
      v235 = 8 * v17 * v17;
      bzero(0, 0);
      if (v17)
      {
        v27 = 0;
        v28 = **v211;
        v29 = (*v211)[1];
        v30 = (*v211)[2];
        v31 = (*v211)[3];
        v32 = &v255;
        v33 = 1;
        do
        {
          v34 = *v32++;
          v35 = exp(v34 * v29) * v28;
          v36 = exp(v31 * v34);
          *(v231 + v27) = 1.0 / (v35 + v36 * v30);
          v27 += 8;
        }

        while (v17 > v33++);
      }

      v220 = &unk_283809BF8;
      __src = 0;
      v222 = v239;
      v223 = 0;
      v224 = 8 * v239 * v17;
      v225 = &unk_283809BF8;
      if (v239 * v239)
      {
        operator new[]();
      }

      v226 = 0;
      LODWORD(v227) = v239;
      HIDWORD(v227) = v239;
      v228 = 0;
      v229 = 8 * v239 * v239;
      Matrix<double>::MultAxBToC(&v220, &v236, &v225);
      v220 = &unk_283809BF8;
      v10 = v210;
      if (__src && v223 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v38 = *v226;
      v39 = v212;
      if (v227 == 3)
      {
        v40 = -(v226[7] * v226[5] - v226[8] * v226[4]) * v38 + -(v226[6] * v226[4] - v226[3] * v226[7]) * v226[2] + -(v226[3] * v226[8] - v226[6] * v226[5]) * v226[1];
      }

      else
      {
        v40 = -(v226[2] * v226[1] - v226[3] * v38);
      }

      if (v40 <= 1.0e-10)
      {
        v44 = v238;
        v220 = &unk_283809BF8;
        if (2 * v238)
        {
          operator new[]();
        }

        v45 = v238;
        __src = 0;
        v222 = v238 | 0x200000000;
        v223 = 0;
        v46 = 16 * v238;
        v224 = v46;
        v47 = v237;
        if (v238)
        {
          v48 = (v237 + 8);
          v49 = 8 * v239;
          v50 = 0;
          do
          {
            *v50++ = *v48;
            v48 = (v48 + v49);
            --v45;
          }

          while (v45);
        }

        if (v241 < v46)
        {
          if (v47 && v240 == 1)
          {
            MEMORY[0x22AA53170]();
          }

          operator new[]();
        }

        v239 = 2;
        v238 = v44;
        memcpy(v47, 0, 16 * v44);
        v220 = &unk_283809BF8;
        if (__src && v223 == 1)
        {
          MEMORY[0x22AA53170]();
        }

        v51 = v238;
        v52 = v239;
        v53 = v233;
        v214 = &unk_283809BF8;
        if (v233 * v239)
        {
          operator new[]();
        }

        v215 = 0;
        v216 = v239;
        v217 = v233;
        v218 = 0;
        v54 = 8 * v239;
        v219 = v54 * v233;
        if (v239 && v233)
        {
          v55 = 0;
          v56 = 0;
          if (v238)
          {
            v57 = v239;
            v58 = 2 * v239;
            v59 = 16;
            do
            {
              v60 = v233;
              v61 = v53 * v56;
              if (v51 > 3)
              {
                if (v57 == 1 && v233 == 1)
                {
                  v69 = 0;
                  v70 = 16;
                  do
                  {
                    v71 = (v237 + v59);
                    v72 = (v231 + v70);
                    v73 = 0uLL;
                    v74 = v51 & 0xFFFFFFFC;
                    v75 = 0uLL;
                    do
                    {
                      v73 = vmlaq_f64(v73, v71[-1], v72[-1]);
                      v75 = vmlaq_f64(v75, *v71, *v72);
                      v71 += 2;
                      v72 += 2;
                      v74 -= 4;
                    }

                    while (v74);
                    v76 = vaddvq_f64(vaddq_f64(v75, v73));
                    if ((v51 & 0xFFFFFFFC) != v51)
                    {
                      v77 = v51 & 0xFFFFFFFC;
                      do
                      {
                        v76 = v76 + *(v231 + 8 * v69 + 8 * v77) * *(v237 + 8 * v56 + 8 * v77);
                        ++v77;
                      }

                      while (v51 != v77);
                    }

                    *(v215 + 8 * v69++ + 8 * v61) = v76;
                    v70 += 8;
                  }

                  while (v69 != v53);
                }

                else
                {
                  v78 = 0;
                  do
                  {
                    v79 = 0;
                    v80 = 0;
                    v81 = 0.0;
                    v82 = v51;
                    do
                    {
                      v81 = v81 + *(v231 + 8 * v78 + 8 * v80) * *(v237 + 8 * v56 + 8 * v79);
                      v80 += v60;
                      v79 += v57;
                      --v82;
                    }

                    while (v82);
                    *(v215 + 8 * v78++ + 8 * v61) = v81;
                  }

                  while (v78 != v53);
                }
              }

              else
              {
                v62 = 0;
                v63 = 8 * v55;
                v64 = 16 * v233;
                v65 = 8 * v233;
                v66 = v53;
                do
                {
                  v67 = (v237 + 8 * v56);
                  v68 = *(v231 + v62) * *v67;
                  if (v51 != 1)
                  {
                    v68 = v68 + *(v231 + v65) * v67[v57];
                    if (v51 != 2)
                    {
                      v68 = v68 + *(v231 + v64) * v67[v58];
                    }
                  }

                  *(v215 + v63) = v68;
                  v63 += 8;
                  v64 += 8;
                  v65 += 8;
                  v62 += 8;
                  --v66;
                }

                while (v66);
              }

              ++v56;
              v59 += 8;
              v55 += v53;
            }

            while (v56 != v52);
          }

          else
          {
            do
            {
              v83 = 8 * v55;
              v84 = v53;
              do
              {
                *(v215 + v83) = 0;
                v83 += 8;
                --v84;
              }

              while (v84);
              ++v56;
              v55 += v53;
            }

            while (v56 != v52);
          }
        }

        v220 = &unk_283809BF8;
        if (v239 * v52)
        {
          operator new[]();
        }

        __src = 0;
        v222 = __PAIR64__(v239, v52);
        v223 = 0;
        v224 = v54 * v239;
        Matrix<double>::MultAxBToC(&v214, &v236, &v220);
        v85 = 8 * v222 * HIDWORD(v222);
        if (v229 < v85)
        {
          if (v226 && v228 == 1)
          {
            MEMORY[0x22AA53170](v226, 0x1000C8000313F17);
          }

          operator new[]();
        }

        v227 = v222;
        memcpy(v226, __src, v85);
        v220 = &unk_283809BF8;
        if (__src && v223 == 1)
        {
          MEMORY[0x22AA53170]();
          __src = 0;
          v224 = 0;
          v223 = 0;
        }

        v222 = 0;
        v214 = &unk_283809BF8;
        v10 = v210;
        if (v215 && v218 == 1)
        {
          MEMORY[0x22AA53170]();
        }

        v86 = *v226;
        if (v227 == 3)
        {
          v87 = -(v226[7] * v226[5] - v226[8] * v226[4]) * v86 + -(v226[6] * v226[4] - v226[3] * v226[7]) * v226[2] + -(v226[3] * v226[8] - v226[6] * v226[5]) * v226[1];
        }

        else
        {
          v87 = -(v226[2] * v226[1] - v226[3] * v86);
        }

        if (v87 <= 1.0e-10)
        {
          v220 = &unk_283809BF8;
          if (v238)
          {
            operator new[]();
          }

          __src = 0;
          v222 = 0x100000000;
          v223 = 0;
          v224 = 0;
          v239 = 1;
          v238 = 0;
          v220 = &unk_283809BF8;
          v214 = &unk_283809BF8;
          if (v233)
          {
            operator new[]();
          }

          v215 = 0;
          v216 = v239;
          v217 = 0;
          v218 = 0;
          v219 = 0;
          v220 = &unk_283809BF8;
          operator new[]();
        }

        Matrix<double>::Inverse(&v220, &v225);
        v39 = v212;
        v88 = __src;
        v89 = HIDWORD(v222);
        v90 = v204 + 36 * v212;
        *v90 = 0;
        *(v90 + 8) = 0;
        *(v90 + 12) = 0;
        *(v90 + 16) = vcvt_f32_f64(*v88);
        *(v90 + 24) = 0;
        *(v90 + 28) = vcvt_f32_f64(*(v88 + 8 * v89));
      }

      else
      {
        Matrix<double>::Inverse(&v220, &v225);
        v41 = __src;
        v42 = (v204 + 36 * v212);
        *v42 = vcvt_hight_f32_f64(vcvt_f32_f64(*__src), *(__src + 1));
        v42[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v41[2]), v41[3]);
        v43 = v41[4].f64[0];
        v42[2].f32[0] = v43;
      }

      v220 = &unk_283809BF8;
      if (v223 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v225 = &unk_283809BF8;
      if (v226 && v228 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v230 = &unk_283809BF8;
      if (v231 && v234 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v236 = &unk_283809BF8;
      if (v237 && v240 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v12 = v39 + 1;
    }

    while (v12 != v10);
  }

  v255 = &unk_283809BF8;
  if (v10 * v10)
  {
    operator new[]();
  }

  v256 = 0;
  v257 = v10;
  v258 = v10;
  v209 = v10 * v10;
  v259 = 0;
  v201 = v10;
  v208 = 8 * v10 * v10;
  v260 = v208;
  bzero(0, 0);
  v91 = 0;
  v92 = v10 & ~(v10 >> 31);
  v207 = (v10 - 1);
  v93 = (v207 + 1) & 0x1FFFFFFFCLL;
  v94 = 8 * v93;
  v95 = v10 - v93;
  v205 = -(v10 & 0xFFFFFFFC);
  __asm { FMOV            V0.2D, #1.0 }

  v213 = _Q0;
  do
  {
    if (v91 == v92)
    {
      break;
    }

    v101 = *v211;
    v102 = **v211;
    v103 = (v91 + 1);
    v104 = exp((*v211)[1] * v103) * v102;
    v105 = v101[2];
    v106 = v104 + exp(v101[3] * v103) * v105;
    if (v106 == 0.0)
    {
      v249 = &unk_283809BF8;
      if (v209)
      {
        operator new[]();
      }

      v107 = 0;
      v250 = 0;
      v251 = v10;
      v252 = v10;
      v253 = 0;
      v254 = v208;
      if (v207 > 2)
      {
        if (v207 + 1 == v93)
        {
          v112 = 0;
          v113 = 16;
          do
          {
            v114 = vdup_n_s32(v112);
            v115 = v113;
            v116 = v207 + 1;
            v117 = 0x100000000;
            do
            {
              v118 = vceq_s32(v114, v117);
              v119.i64[0] = v118.i32[0];
              v119.i64[1] = v118.i32[1];
              v120 = v119;
              v121 = vceq_s32(v114, vadd_s32(v117, 0x200000002));
              v119.i64[0] = v121.i32[0];
              v119.i64[1] = v121.i32[1];
              v115[-1] = vandq_s8(v213, v120);
              *v115 = vandq_s8(v213, v119);
              v117 = vadd_s32(v117, 0x400000004);
              v115 += 2;
              v116 -= 4;
            }

            while (v116);
            ++v112;
            v113 += v94;
          }

          while (v112 != v10);
        }

        else
        {
          v122 = 0;
          v123 = v205;
          do
          {
            v124 = vdup_n_s32(v122);
            v125 = (v107 + 2);
            v126 = (v207 + 1) & 0x1FFFFFFFCLL;
            v127 = 0x100000000;
            do
            {
              v128 = vceq_s32(v124, v127);
              v129.i64[0] = v128.i32[0];
              v129.i64[1] = v128.i32[1];
              v130 = v129;
              v131 = vceq_s32(v124, vadd_s32(v127, 0x200000002));
              v129.i64[0] = v131.i32[0];
              v129.i64[1] = v131.i32[1];
              v125[-1] = vandq_s8(v213, v130);
              *v125 = vandq_s8(v213, v129);
              v127 = vadd_s32(v127, 0x400000004);
              v125 += 2;
              v126 -= 4;
            }

            while (v126);
            v107 = (v107 + v94);
            v132 = v123;
            v133 = v95;
            do
            {
              if (v132)
              {
                v134 = 0.0;
              }

              else
              {
                v134 = 1.0;
              }

              *v107++ = v134;
              --v132;
              --v133;
            }

            while (v133);
            ++v122;
            ++v123;
          }

          while (v122 != v10);
        }
      }

      else
      {
        v108 = 0;
        do
        {
          v109 = v108;
          v110 = v10;
          do
          {
            if (v109)
            {
              v111 = 0.0;
            }

            else
            {
              v111 = 1.0;
            }

            *v107++ = v111;
            --v109;
            --v110;
          }

          while (v110);
          ++v108;
        }

        while (v108 != v10);
      }

      v135 = 8 * v251 * v252;
      if (v260 < v135)
      {
        if (v256)
        {
          if (v259 == 1)
          {
            MEMORY[0x22AA53170](v256, 0x1000C8000313F17);
          }
        }

        operator new[]();
      }

      v258 = v252;
      v257 = v251;
      memcpy(v256, v250, v135);
      v249 = &unk_283809BF8;
      if (v250 && v253 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v10 = v210;
    }

    else
    {
      *(v256 + v91 + v258 * v91) = 1.0 / v106;
    }

    ++v91;
  }

  while (v106 != 0.0);
  v249 = &unk_283809BF8;
  if (v10)
  {
    operator new[]();
  }

  v250 = 0;
  v251 = 0;
  v252 = 3;
  v253 = 0;
  v254 = 24 * v201;
  if (v10)
  {
    v136 = 0;
    v137 = v203 * (*v211)[1];
    v138 = v203 * (*v211)[3];
    v139 = 1;
    do
    {
      v140 = exp(v137 * v139);
      v141 = 8 * v136;
      *(v250 + v141) = v140;
      v142 = exp(v138 * v139);
      *(v250 + v141 + 8) = v142;
      *(v250 + v141 + 16) = 0x3FF0000000000000;
      v143 = v139;
      v136 += 3;
      ++v139;
    }

    while (v143 < v10);
  }

  v144 = v258;
  v243 = &unk_283809BF8;
  if (v258)
  {
    operator new[]();
  }

  v244 = 0;
  v245 = 3;
  v246 = 0;
  v247 = 0;
  v248 = 0;
  if (!v10)
  {
    v159 = v250;
    goto LABEL_194;
  }

  v145 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v146 = v145 + 1;
  v147 = v202;
  v148 = v244;
  if (v145 > 6)
  {
    v149 = v146 & 0x3FFFFFFFFFFFFFF8;
    v150 = v146 & 0x3FFFFFFFFFFFFFF8;
    v148 = (8 * (v146 & 0x3FFFFFFFFFFFFFF8));
    v151 = v244 + 2;
    v152 = v202 + 1;
    v153 = v146 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      v155 = v151[-2];
      v154 = v151[-1];
      v157 = *v151;
      v156 = v151[1];
      v151 += 4;
      v152[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v155), v154);
      *v152 = vcvt_hight_f32_f64(vcvt_f32_f64(v157), v156);
      v152 += 2;
      v153 -= 8;
    }

    while (v153);
    if (v146 == v149)
    {
      v158 = 8 * v144 + 8 * v10;
      goto LABEL_170;
    }

    v147 = &v202->f32[v150];
  }

  do
  {
    v160 = *v148++;
    v161 = v160;
    *v147++ = v161;
  }

  while (v148 != (8 * v10));
  v162 = (8 * v144);
  v158 = 8 * v144 + 8 * v10;
  if (v145 < 7)
  {
    f32 = v202[92].f32;
    goto LABEL_175;
  }

  v149 = v146 & 0x3FFFFFFFFFFFFFF8;
  v150 = v146 & 0x3FFFFFFFFFFFFFF8;
  v148 = (8 * (v146 & 0x3FFFFFFFFFFFFFF8));
LABEL_170:
  f32 = &v202[92].f32[v150];
  v164 = (8 * v144 + 32);
  v165 = v202 + 93;
  v166 = v149;
  do
  {
    v168 = v164[-2];
    v167 = v164[-1];
    v170 = *v164;
    v169 = v164[1];
    v164 += 4;
    v165[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v168), v167);
    *v165 = vcvt_hight_f32_f64(vcvt_f32_f64(v170), v169);
    v165 += 2;
    v166 -= 8;
  }

  while (v166);
  if (v146 == v149)
  {
    v171 = 8 * v10;
    v172 = v200;
    goto LABEL_180;
  }

  v162 = &v148[v144];
LABEL_175:
  v172 = v200;
  do
  {
    v173 = *v162++;
    v174 = v173;
    *f32++ = v174;
  }

  while (v162 != v158);
  v175 = 0;
  v171 = 8 * v10;
  if (v145 < 7)
  {
    v176 = v202[184].f32;
    goto LABEL_184;
  }

  v149 = v146 & 0x3FFFFFFFFFFFFFF8;
  v150 = v146 & 0x3FFFFFFFFFFFFFF8;
  v148 = (8 * (v146 & 0x3FFFFFFFFFFFFFF8));
LABEL_180:
  v176 = &v202[184].f32[v150];
  v177 = 32;
  v178 = v202 + 185;
  v179 = v149;
  do
  {
    v181 = *(v177 - 32);
    v180 = *(v177 - 16);
    v183 = *v177;
    v182 = *(v177 + 16);
    v177 += 64;
    v178[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v181), v180);
    *v178 = vcvt_hight_f32_f64(vcvt_f32_f64(v183), v182);
    v178 += 2;
    v179 -= 8;
  }

  while (v179);
  if (v146 != v149)
  {
    v175 = v148;
    do
    {
LABEL_184:
      v184 = *v175++;
      v185 = v184;
      *v176++ = v185;
    }

    while (v175 != v171);
  }

  v159 = v250;
  v186 = 24 * v10;
  if (!(24 * v10))
  {
    goto LABEL_194;
  }

  if ((v186 - 8) < 0x38)
  {
    v187 = v250;
    goto LABEL_192;
  }

  v188 = ((v186 - 8) >> 3) + 1;
  v189 = (v250 + 32);
  v190 = (v172 + 4);
  v191 = v188 & 0x3FFFFFFFFFFFFFF8;
  do
  {
    v193 = v189[-2];
    v192 = v189[-1];
    v195 = *v189;
    v194 = v189[1];
    v189 += 4;
    v190[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v193), v192);
    *v190 = vcvt_hight_f32_f64(vcvt_f32_f64(v195), v194);
    v190 += 2;
    v191 -= 8;
  }

  while (v191);
  if (v188 != (v188 & 0x3FFFFFFFFFFFFFF8))
  {
    v172 += v188 & 0x3FFFFFFFFFFFFFF8;
    v187 = &v159[8 * (v188 & 0x3FFFFFFFFFFFFFF8)];
LABEL_192:
    v196 = &v159[v186];
    do
    {
      v197 = *v187++;
      v198 = v197;
      *v172++ = v198;
    }

    while (v187 != v196);
  }

LABEL_194:
  v243 = &unk_283809BF8;
  v249 = &unk_283809BF8;
  if (v159 && v253 == 1)
  {
    MEMORY[0x22AA53170](v159, 0x1000C8000313F17);
  }

  v255 = &unk_283809BF8;
  if (v256 && v259 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  return 0;
}

void sub_2246AF5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  Matrix<double>::~Matrix(&a36);
  Matrix<double>::~Matrix(&a41);
  Matrix<double>::~Matrix(&a46);
  _Unwind_Resume(a1);
}

uint64_t Matrix<double>::Inverse(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  *a1 = &unk_283809BF8;
  if (v4 * v5)
  {
    operator new[]();
  }

  result = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 8 * v5 * v4;
  v7 = *(a2 + 8);
  v8 = *v7;
  if (v5 == 3)
  {
    v9 = -(v7[7] * v7[5] - v7[8] * v7[4]) * v8 + -(v7[6] * v7[4] - v7[3] * v7[7]) * v7[2] + -(v7[3] * v7[8] - v7[6] * v7[5]) * v7[1];
    if (v9 == 0.0)
    {
      return result;
    }
  }

  else
  {
    v10 = v7[3];
    v9 = -(v7[2] * v7[1] - v10 * v8);
    if (v9 == 0.0)
    {
      return result;
    }

    if (v5 == 2)
    {
      v11 = 1.0 / v9;
      MEMORY[0] = v10 * v11;
      MEMORY[8] = -(v7[1] * v11);
      MEMORY[0x10] = -(v7[2] * v11);
      MEMORY[0x18] = *v7 * v11;
      return result;
    }
  }

  v12 = *(a2 + 20);
  if (v12)
  {
    v13 = 0;
    v14 = 5;
    v15 = 1;
    v16 = 8;
    v17 = 2;
    v18 = 7;
    v19 = 4;
    v20 = 1.0 / v9;
    do
    {
      LODWORD(result) = 0;
      v21 = 0;
      v22 = 9 * (v15 / 3);
      v23 = 9 * (v17 / 3);
      v24 = v13 + 1;
      v25 = v14 - v22;
      v26 = v16 - v23;
      v27 = v18 - v23;
      v28 = v19 - v22;
      v29 = 2;
      v30 = 1;
      do
      {
        v31 = *(a2 + 8);
        *(*(a1 + 8) + 8 * v13 + 8 * result) = -(*(v31 + 8 * (v21 + v27 - 3 * (v30 / 3))) * *(v31 + 8 * (v21 + v25 - 3 * (v29 / 3))) - *(v31 + 8 * (v21 + v26 - 3 * (v29 / 3))) * *(v31 + 8 * (v21 + v28 - 3 * (v30 / 3)))) * v20;
        result = result + v4;
        ++v29;
        ++v30;
        ++v21;
      }

      while (v12 != v21);
      v14 += 3;
      ++v15;
      v16 += 3;
      ++v17;
      v18 += 3;
      v19 += 3;
      ++v13;
    }

    while (v24 != v12);
  }

  return result;
}

uint64_t peridot::PeridotDXPRangeEstimation::calcBLparamsHP(uint64_t a1, float **a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6, float32x4_t *a7, float *a8)
{
  v8 = a3;
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v185 = i;
      v10 = *(*a4 + 24 * i);
      if (*(*a4 + 24 * i + 8) != v10)
      {
        v11 = 0;
        do
        {
          v12 = *(v10 + 4 * v11++);
          if (v12 == 1)
          {
            operator new();
          }

          v10 = *(*a4 + 24 * i);
        }

        while (v11 < (*(*a4 + 24 * i + 8) - v10) >> 2);
      }

      v209 = &unk_283809BF8;
      v8 = a3;
      v210 = 0;
      v211 = 0;
      v212 = 3;
      v213 = 0;
      v214 = 0;
      v203 = &unk_283809BF8;
      v204 = 0;
      v205 = 0;
      v206 = 0;
      v207 = 0;
      v208 = 0;
      bzero(0, 0);
      v193 = &unk_283809BF8;
      v194 = 0;
      v195 = v212;
      v196 = 0;
      v197 = 0;
      v198 = &unk_283809BF8;
      if (v212 * v212)
      {
        operator new[]();
      }

      v199 = 0;
      LODWORD(v200) = v212;
      HIDWORD(v200) = v212;
      v201 = 0;
      v202 = 8 * v212 * v212;
      Matrix<double>::MultAxBToC(&v193, &v209, &v198);
      v193 = &unk_283809BF8;
      if (v194 && v196 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v13 = *v199;
      if (v200 == 3)
      {
        v14 = -(v199[7] * v199[5] - v199[8] * v199[4]) * v13 + -(v199[6] * v199[4] - v199[3] * v199[7]) * v199[2] + -(v199[3] * v199[8] - v199[6] * v199[5]) * v199[1];
      }

      else
      {
        v14 = -(v199[2] * v199[1] - v199[3] * v13);
      }

      if (v14 <= 1.0e-10)
      {
        v18 = v211;
        v193 = &unk_283809BF8;
        if (2 * v211)
        {
          operator new[]();
        }

        v19 = v211;
        v194 = 0;
        v195 = v211 | 0x200000000;
        v196 = 0;
        v20 = 16 * v211;
        v197 = v20;
        v21 = v210;
        if (v211)
        {
          v22 = v210 + 1;
          v23 = 8 * v212;
          v24 = 0;
          do
          {
            *v24++ = *v22;
            v22 = (v22 + v23);
            --v19;
          }

          while (v19);
        }

        if (v214 < v20)
        {
          if (v21 && v213 == 1)
          {
            MEMORY[0x22AA53170]();
          }

          operator new[]();
        }

        v211 = v18;
        v212 = 2;
        memcpy(v21, 0, 16 * v18);
        v193 = &unk_283809BF8;
        if (v194 && v196 == 1)
        {
          MEMORY[0x22AA53170]();
        }

        v26 = v211;
        v25 = v212;
        v27 = v206;
        v187 = &unk_283809BF8;
        if (v206 * v212)
        {
          operator new[]();
        }

        v188 = 0;
        v189 = v212;
        v190 = v206;
        v191 = 0;
        v28 = 8 * v212;
        v192 = v28 * v206;
        if (v212 && v206)
        {
          v29 = 0;
          v30 = 0;
          if (v211)
          {
            v31 = v212;
            v32 = 2 * v212;
            v33 = 2;
            do
            {
              v34 = v206;
              v35 = v27 * v30;
              if (v26 > 3)
              {
                if (v31 == 1 && v206 == 1)
                {
                  v43 = 0;
                  v44 = 2;
                  do
                  {
                    v45 = &v210[v33];
                    v46 = &v204[v44];
                    v47 = 0uLL;
                    v48 = v26 & 0xFFFFFFFC;
                    v49 = 0uLL;
                    do
                    {
                      v47 = vmlaq_f64(v47, v45[-1], v46[-1]);
                      v49 = vmlaq_f64(v49, *v45, *v46);
                      v45 += 2;
                      v46 += 2;
                      v48 -= 4;
                    }

                    while (v48);
                    v50 = vaddvq_f64(vaddq_f64(v49, v47));
                    if ((v26 & 0xFFFFFFFC) != v26)
                    {
                      v51 = v26 & 0xFFFFFFFC;
                      do
                      {
                        v50 = v50 + v204[v43 + v51] * v210[v30 + v51];
                        ++v51;
                      }

                      while (v26 != v51);
                    }

                    *(v188 + 8 * v43++ + 8 * v35) = v50;
                    ++v44;
                  }

                  while (v43 != v27);
                }

                else
                {
                  v52 = 0;
                  do
                  {
                    v53 = 0;
                    v54 = 0;
                    v55 = 0.0;
                    v56 = v26;
                    do
                    {
                      v55 = v55 + v204[v52 + v54] * v210[v30 + v53];
                      v54 += v34;
                      v53 += v31;
                      --v56;
                    }

                    while (v56);
                    *(v188 + 8 * v52++ + 8 * v35) = v55;
                  }

                  while (v52 != v27);
                }
              }

              else
              {
                v36 = 0;
                v37 = 8 * v29;
                v38 = 2 * v206;
                v39 = v206;
                v40 = v27;
                do
                {
                  v41 = &v210[v30];
                  v42 = v204[v36] * *v41;
                  if (v26 != 1)
                  {
                    v42 = v42 + v204[v39] * v41[v31];
                    if (v26 != 2)
                    {
                      v42 = v42 + v204[v38] * v41[v32];
                    }
                  }

                  *(v188 + v37) = v42;
                  v37 += 8;
                  ++v38;
                  ++v39;
                  ++v36;
                  --v40;
                }

                while (v40);
              }

              ++v30;
              ++v33;
              v29 += v27;
            }

            while (v30 != v25);
          }

          else
          {
            do
            {
              v57 = 8 * v29;
              v58 = v27;
              do
              {
                *(v188 + v57) = 0;
                v57 += 8;
                --v58;
              }

              while (v58);
              ++v30;
              v29 += v27;
            }

            while (v30 != v25);
          }
        }

        v193 = &unk_283809BF8;
        if (v212 * v25)
        {
          operator new[]();
        }

        v194 = 0;
        v195 = __PAIR64__(v212, v25);
        v196 = 0;
        v197 = v28 * v212;
        Matrix<double>::MultAxBToC(&v187, &v209, &v193);
        v59 = 8 * v195 * HIDWORD(v195);
        if (v202 < v59)
        {
          if (v199 && v201 == 1)
          {
            MEMORY[0x22AA53170](v199, 0x1000C8000313F17);
          }

          operator new[]();
        }

        v200 = v195;
        memcpy(v199, v194, v59);
        v193 = &unk_283809BF8;
        if (v194 && v196 == 1)
        {
          MEMORY[0x22AA53170]();
          v194 = 0;
          v197 = 0;
          v196 = 0;
        }

        v195 = 0;
        v187 = &unk_283809BF8;
        i = v185;
        if (v188 && v191 == 1)
        {
          MEMORY[0x22AA53170]();
        }

        v60 = *v199;
        if (v200 == 3)
        {
          v61 = -(v199[7] * v199[5] - v199[8] * v199[4]) * v60 + -(v199[6] * v199[4] - v199[3] * v199[7]) * v199[2] + -(v199[3] * v199[8] - v199[6] * v199[5]) * v199[1];
        }

        else
        {
          v61 = -(v199[2] * v199[1] - v199[3] * v60);
        }

        if (v61 <= 1.0e-10)
        {
          v193 = &unk_283809BF8;
          if (v211)
          {
            operator new[]();
          }

          v194 = 0;
          v195 = 0x100000000;
          v196 = 0;
          v197 = 0;
          v211 = 0;
          v212 = 1;
          v193 = &unk_283809BF8;
          v187 = &unk_283809BF8;
          if (v206)
          {
            operator new[]();
          }

          v188 = 0;
          v189 = v212;
          v190 = 0;
          v191 = 0;
          v192 = 0;
          v193 = &unk_283809BF8;
          operator new[]();
        }

        Matrix<double>::Inverse(&v193, &v198);
        v62 = v194;
        v63 = HIDWORD(v195);
        v64 = a6 + 36 * v185;
        *v64 = 0;
        *(v64 + 8) = 0;
        *(v64 + 12) = 0;
        *(v64 + 16) = vcvt_f32_f64(*v62);
        *(v64 + 24) = 0;
        *(v64 + 28) = vcvt_f32_f64(*(v62 + 8 * v63));
      }

      else
      {
        Matrix<double>::Inverse(&v193, &v198);
        v15 = v194;
        v16 = (a6 + 36 * i);
        *v16 = vcvt_hight_f32_f64(vcvt_f32_f64(*v194), *(v194 + 1));
        v16[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v15[2]), v15[3]);
        v17 = v15[4].f64[0];
        v16[2].f32[0] = v17;
      }

      v193 = &unk_283809BF8;
      if (v196 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v198 = &unk_283809BF8;
      if (v199 && v201 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v203 = &unk_283809BF8;
      if (v204 && v207 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v209 = &unk_283809BF8;
      if (v210 && v213 == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }
  }

  v209 = &unk_283809BF8;
  if (v8 * v8)
  {
    operator new[]();
  }

  v210 = 0;
  v211 = v8;
  v212 = v8;
  v213 = 0;
  v178 = v8;
  v183 = 8 * v8 * v8;
  v214 = v183;
  bzero(0, 0);
  v65 = 0;
  v66 = v8 & ~(v8 >> 31);
  v181 = (v8 - 1);
  v67 = (v181 + 1) & 0x1FFFFFFFCLL;
  v68 = 8 * v67;
  v69 = v8 - v67;
  __src = -(v8 & 0xFFFFFFFC);
  __asm { FMOV            V0.2D, #1.0 }

  *v186 = _Q0;
  v180 = v66;
  do
  {
    if (v65 == v66)
    {
      break;
    }

    v75 = *a2;
    v76 = **a2;
    v77 = (v65 + 1);
    v78 = exp((*a2)[1] * v77) * v76;
    v79 = v75[2];
    v80 = v78 + exp(v75[3] * v77) * v79;
    if (v80 == 0.0)
    {
      v203 = &unk_283809BF8;
      v81 = 0;
      v204 = 0;
      v205 = v8;
      v206 = v8;
      v207 = 0;
      v208 = v183;
      if (v181 > 2)
      {
        if (v181 + 1 == v67)
        {
          v86 = 0;
          v87 = 16;
          do
          {
            v88 = vdup_n_s32(v86);
            v89 = v87;
            v90 = v181 + 1;
            v91 = 0x100000000;
            do
            {
              v92 = vceq_s32(v88, v91);
              v93.i64[0] = v92.i32[0];
              v93.i64[1] = v92.i32[1];
              v94 = v93;
              v95 = vceq_s32(v88, vadd_s32(v91, 0x200000002));
              v93.i64[0] = v95.i32[0];
              v93.i64[1] = v95.i32[1];
              v89[-1] = vandq_s8(*v186, v94);
              *v89 = vandq_s8(*v186, v93);
              v91 = vadd_s32(v91, 0x400000004);
              v89 += 2;
              v90 -= 4;
            }

            while (v90);
            ++v86;
            v87 += v68;
          }

          while (v86 != v8);
        }

        else
        {
          v96 = 0;
          v97 = __src;
          do
          {
            v98 = vdup_n_s32(v96);
            v99 = (v81 + 2);
            v100 = (v181 + 1) & 0x1FFFFFFFCLL;
            v101 = 0x100000000;
            do
            {
              v102 = vceq_s32(v98, v101);
              v103.i64[0] = v102.i32[0];
              v103.i64[1] = v102.i32[1];
              v104 = v103;
              v105 = vceq_s32(v98, vadd_s32(v101, 0x200000002));
              v103.i64[0] = v105.i32[0];
              v103.i64[1] = v105.i32[1];
              v99[-1] = vandq_s8(*v186, v104);
              *v99 = vandq_s8(*v186, v103);
              v101 = vadd_s32(v101, 0x400000004);
              v99 += 2;
              v100 -= 4;
            }

            while (v100);
            v81 = (v81 + v68);
            v106 = v97;
            v107 = v69;
            do
            {
              if (v106)
              {
                v108 = 0.0;
              }

              else
              {
                v108 = 1.0;
              }

              *v81++ = v108;
              --v106;
              --v107;
            }

            while (v107);
            ++v96;
            ++v97;
          }

          while (v96 != v8);
        }
      }

      else
      {
        v82 = 0;
        do
        {
          v83 = v82;
          v84 = v8;
          do
          {
            if (v83)
            {
              v85 = 0.0;
            }

            else
            {
              v85 = 1.0;
            }

            *v81++ = v85;
            --v83;
            --v84;
          }

          while (v84);
          ++v82;
        }

        while (v82 != v8);
      }

      if (v214 < 8 * v205 * v206)
      {
        if (v210)
        {
          if (v213 == 1)
          {
            MEMORY[0x22AA53170](v210, 0x1000C8000313F17);
          }
        }

        operator new[]();
      }

      v211 = v205;
      v212 = v206;
      memcpy(v210, v204, 8 * v205 * v206);
      v203 = &unk_283809BF8;
      if (v204 && v207 == 1)
      {
        MEMORY[0x22AA53170]();
      }

      v8 = a3;
      v66 = v180;
    }

    else
    {
      v210[v65 + v212 * v65] = 1.0 / v80;
    }

    ++v65;
  }

  while (v80 != 0.0);
  v203 = &unk_283809BF8;
  if (v8)
  {
    operator new[]();
  }

  v204 = 0;
  v205 = 0;
  v206 = 3;
  v207 = 0;
  v208 = 24 * v178;
  if (v8)
  {
    v109 = 0;
    v110 = a5 * (*a2)[1];
    v111 = a5 * (*a2)[3];
    v112 = 1;
    do
    {
      v113 = exp(v110 * v112);
      v114 = v109;
      v204[v114] = v113;
      v115 = exp(v111 * v112);
      v204[v114 + 1] = v115;
      v204[v114 + 2] = 1.0;
      v116 = v112;
      v109 += 3;
      ++v112;
    }

    while (v116 < v8);
  }

  v117 = v212;
  v198 = &unk_283809BF8;
  if (v212)
  {
    operator new[]();
  }

  v199 = 0;
  v200 = 3;
  v201 = 0;
  v202 = 0;
  if (!v8)
  {
    v132 = v204;
    goto LABEL_180;
  }

  v118 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v119 = v118 + 1;
  v120 = a7;
  v121 = v199;
  if (v118 > 6)
  {
    v122 = v119 & 0x3FFFFFFFFFFFFFF8;
    v123 = v119 & 0x3FFFFFFFFFFFFFF8;
    v121 = (8 * (v119 & 0x3FFFFFFFFFFFFFF8));
    v124 = (v199 + 4);
    v125 = a7 + 1;
    v126 = v119 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      v128 = v124[-2];
      v127 = v124[-1];
      v130 = *v124;
      v129 = v124[1];
      v124 += 4;
      v125[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v128), v127);
      *v125 = vcvt_hight_f32_f64(vcvt_f32_f64(v130), v129);
      v125 += 2;
      v126 -= 8;
    }

    while (v126);
    if (v119 == v122)
    {
      v131 = 8 * v117 + 8 * v8;
      goto LABEL_156;
    }

    v120 = &a7->f32[v123];
  }

  do
  {
    v133 = *v121++;
    v134 = v133;
    *v120++ = v134;
  }

  while (v121 != (8 * v8));
  v135 = (8 * v117);
  v131 = 8 * v117 + 8 * v8;
  if (v118 < 7)
  {
    f32 = a7[23].f32;
    goto LABEL_161;
  }

  v122 = v119 & 0x3FFFFFFFFFFFFFF8;
  v123 = v119 & 0x3FFFFFFFFFFFFFF8;
  v121 = (8 * (v119 & 0x3FFFFFFFFFFFFFF8));
LABEL_156:
  f32 = &a7[23].f32[v123];
  v137 = (8 * v117 + 32);
  v138 = a7 + 24;
  v139 = v122;
  do
  {
    v141 = v137[-2];
    v140 = v137[-1];
    v143 = *v137;
    v142 = v137[1];
    v137 += 4;
    v138[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v141), v140);
    *v138 = vcvt_hight_f32_f64(vcvt_f32_f64(v143), v142);
    v138 += 2;
    v139 -= 8;
  }

  while (v139);
  if (v119 == v122)
  {
    v144 = 8 * v8;
    v145 = a8;
    goto LABEL_166;
  }

  v135 = &v121[v117];
LABEL_161:
  v145 = a8;
  do
  {
    v146 = *v135++;
    v147 = v146;
    *f32++ = v147;
  }

  while (v135 != v131);
  v148 = 0;
  v144 = 8 * v8;
  if (v118 < 7)
  {
    v149 = a7[46].f32;
    goto LABEL_170;
  }

  v122 = v119 & 0x3FFFFFFFFFFFFFF8;
  v123 = v119 & 0x3FFFFFFFFFFFFFF8;
  v121 = (8 * (v119 & 0x3FFFFFFFFFFFFFF8));
LABEL_166:
  v149 = &a7[46].f32[v123];
  v150 = 32;
  v151 = a7 + 47;
  v152 = v122;
  do
  {
    v154 = *(v150 - 32);
    v153 = *(v150 - 16);
    v156 = *v150;
    v155 = *(v150 + 16);
    v150 += 64;
    v151[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v154), v153);
    *v151 = vcvt_hight_f32_f64(vcvt_f32_f64(v156), v155);
    v151 += 2;
    v152 -= 8;
  }

  while (v152);
  if (v119 != v122)
  {
    v148 = v121;
    do
    {
LABEL_170:
      v157 = *v148++;
      v158 = v157;
      *v149++ = v158;
    }

    while (v148 != v144);
  }

  v132 = v204;
  v159 = 24 * v8;
  if (!(24 * v8))
  {
    goto LABEL_180;
  }

  if ((v159 - 8) < 0x38)
  {
    v160 = v204;
    goto LABEL_178;
  }

  v161 = ((v159 - 8) >> 3) + 1;
  v162 = (v204 + 4);
  v163 = (v145 + 4);
  v164 = v161 & 0x3FFFFFFFFFFFFFF8;
  do
  {
    v166 = v162[-2];
    v165 = v162[-1];
    v168 = *v162;
    v167 = v162[1];
    v162 += 4;
    v163[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v166), v165);
    *v163 = vcvt_hight_f32_f64(vcvt_f32_f64(v168), v167);
    v163 += 2;
    v164 -= 8;
  }

  while (v164);
  if (v161 != (v161 & 0x3FFFFFFFFFFFFFF8))
  {
    v145 += v161 & 0x3FFFFFFFFFFFFFF8;
    v160 = &v132[v161 & 0x3FFFFFFFFFFFFFF8];
LABEL_178:
    v169 = &v132[v159 / 8];
    do
    {
      v170 = *v160++;
      v171 = v170;
      *v145++ = v171;
    }

    while (v160 != v169);
  }

LABEL_180:
  v198 = &unk_283809BF8;
  v203 = &unk_283809BF8;
  if (v132 && v207 == 1)
  {
    MEMORY[0x22AA53170](v132, 0x1000C8000313F17, a7);
  }

  v209 = &unk_283809BF8;
  if (v210 && v213 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  return 0;
}

void sub_2246B1A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  Matrix<double>::~Matrix(v37 - 232);
  Matrix<double>::~Matrix(v37 - 192);
  _Unwind_Resume(a1);
}

void sub_2246BAF78(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2246BB0D4(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_2246BB22C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFData *peridot::CalibManager::createIspFirmwareCalibV3(peridot::CalibManager *this, _PeridotCalib *a2, const __CFDictionary *a3)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 1104);
  v6 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 1104);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    bzero(MutableBytePtr, 0x450uLL);
    peridot::CalibManager::getFwSpotLocations(this, a2, __src);
    *MutableBytePtr = 3;
    v8 = *(this + 8);
    v9 = *(this + 24);
    *(MutableBytePtr + 40) = *(this + 40);
    *(MutableBytePtr + 24) = v9;
    *(MutableBytePtr + 8) = v8;
    v10 = *(this + 56);
    v11 = *(this + 72);
    v12 = *(this + 88);
    *(MutableBytePtr + 26) = *(this + 26);
    *(MutableBytePtr + 88) = v12;
    *(MutableBytePtr + 72) = v11;
    *(MutableBytePtr + 56) = v10;
    v13 = *(this + 346204);
    v14 = *(this + 346220);
    *(MutableBytePtr + 65) = *(this + 346232);
    *(MutableBytePtr + 1012) = v13;
    *(MutableBytePtr + 1028) = v14;
    v15 = *(this + 346204);
    v16 = *(this + 346220);
    *(MutableBytePtr + 1084) = *(this + 346232);
    *(MutableBytePtr + 67) = v16;
    *(MutableBytePtr + 66) = v15;
    memcpy(MutableBytePtr + 108, __src, 0x388uLL);
  }

  return v6;
}

void sub_2246BBD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a9);

  _Unwind_Resume(a1);
}

void sub_2246BD660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a27);

  peridot::PeridotDepth::~PeridotDepth(&STACK[0x5CC0]);
  peridot::PeridotDepth::~PeridotDepth(&STACK[0x5238]);
  peridot::PeridotDepth::~PeridotDepth(&STACK[0x47B0]);
  peridot::PeridotDepth::~PeridotDepth(&STACK[0x3D28]);
  peridot::PeridotDepth::~PeridotDepth(&STACK[0x32A0]);
  peridot::PeridotDepth::~PeridotDepth(&STACK[0x2818]);
  peridot::PeridotDepth::~PeridotDepth(&STACK[0x1D90]);
  peridot::PeridotDepth::~PeridotDepth(&STACK[0x1308]);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a34);

  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotDepth::operator=(uint64_t a1, uint64_t a2)
{
  v4 = peridot::PeridotDepthSpot::operator=(a1, a2);
  peridot::PeridotDepthSpot::operator=(v4 + 192, a2 + 192);
  peridot::PeridotDepthSpot::operator=(a1 + 384, a2 + 384);
  peridot::PeridotDepthSpot::operator=(a1 + 576, a2 + 576);
  peridot::PeridotDepthSpot::operator=(a1 + 768, a2 + 768);
  peridot::PeridotDepthSpot::operator=(a1 + 960, a2 + 960);
  peridot::PeridotDepthSpot::operator=(a1 + 1152, a2 + 1152);
  peridot::PeridotDepthSpot::operator=(a1 + 1344, a2 + 1344);
  peridot::PeridotDepthSpot::operator=(a1 + 1536, a2 + 1536);
  peridot::PeridotDepthSpot::operator=(a1 + 1728, a2 + 1728);
  peridot::PeridotDepthSpot::operator=(a1 + 1920, a2 + 1920);
  peridot::PeridotDepthSpot::operator=(a1 + 2112, a2 + 2112);
  peridot::PeridotDepthSpot::operator=(a1 + 2304, a2 + 2304);
  peridot::PeridotDepthSpot::operator=(a1 + 2496, a2 + 2496);
  *(a1 + 2688) = *(a2 + 2688);
  return a1;
}

void peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(peridot::PeridotSpotRefDepth *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    *(this + 17) = v5;
    operator delete(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    *(this + 9) = v7;
    operator delete(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 6) = v8;
    operator delete(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    *(this + 3) = v9;
    operator delete(v9);
  }
}

void peridot::PeridotDepth::~PeridotDepth(peridot::PeridotDepth *this)
{
  v2 = 2688;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 - 32);
    if (v4)
    {
      *(v3 - 3) = v4;
      operator delete(v4);
    }

    v5 = *(v3 - 8);
    if (v5)
    {
      *(this + v2 - 56) = v5;
      operator delete(v5);
    }

    v6 = this + v2;
    v7 = *(this + v2 - 96);
    if (v7)
    {
      *(v6 - 11) = v7;
      operator delete(v7);
    }

    v8 = *(v6 - 16);
    if (v8)
    {
      *(this + v2 - 120) = v8;
      operator delete(v8);
    }

    v9 = *(this + v2 - 160);
    if (v9)
    {
      *(this + v2 - 152) = v9;
      operator delete(v9);
    }

    v10 = *(v3 - 24);
    if (v10)
    {
      *(this + v2 - 184) = v10;
      operator delete(v10);
    }

    v2 -= 192;
  }

  while (v2);
}

uint64_t peridot::PeridotDepthSpot::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 152) = *(a2 + 152);
  }

  else
  {
    std::vector<peridot::PeridotDepthSpotEcho>::__assign_with_size[abi:ne200100]<peridot::PeridotDepthSpotEcho*,peridot::PeridotDepthSpotEcho*>(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
    *(a1 + 24) = *(a2 + 24);
    std::vector<peridot::PeridotDepthSpotEcho>::__assign_with_size[abi:ne200100]<peridot::PeridotDepthSpotEcho*,peridot::PeridotDepthSpotEcho*>((a1 + 32), *(a2 + 32), *(a2 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
    *(a1 + 56) = *(a2 + 56);
    std::vector<peridot::PeridotDepthSpotEcho>::__assign_with_size[abi:ne200100]<peridot::PeridotDepthSpotEcho*,peridot::PeridotDepthSpotEcho*>((a1 + 64), *(a2 + 64), *(a2 + 72), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 72) - *(a2 + 64)) >> 4));
    *(a1 + 88) = *(a2 + 88);
    std::vector<peridot::PeridotDepthSpotEcho>::__assign_with_size[abi:ne200100]<peridot::PeridotDepthSpotEcho*,peridot::PeridotDepthSpotEcho*>((a1 + 96), *(a2 + 96), *(a2 + 104), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 104) - *(a2 + 96)) >> 4));
    *(a1 + 120) = *(a2 + 120);
    std::vector<peridot::PeridotDepthSpotEcho>::__assign_with_size[abi:ne200100]<peridot::PeridotDepthSpotEcho*,peridot::PeridotDepthSpotEcho*>((a1 + 128), *(a2 + 128), *(a2 + 136), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 136) - *(a2 + 128)) >> 4));
    *(a1 + 152) = *(a2 + 152);
    std::vector<peridot::PeridotDepthSpotEcho>::__assign_with_size[abi:ne200100]<peridot::PeridotDepthSpotEcho*,peridot::PeridotDepthSpotEcho*>((a1 + 160), *(a2 + 160), *(a2 + 168), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 168) - *(a2 + 160)) >> 4));
  }

  *(a1 + 184) = *(a2 + 184);
  return a1;
}

char *std::vector<peridot::PeridotDepthSpotEcho>::__assign_with_size[abi:ne200100]<peridot::PeridotDepthSpotEcho*,peridot::PeridotDepthSpotEcho*>(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 4) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x333333333333333)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x199999999999999)
      {
        v11 = 0x333333333333333;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x333333333333333)
      {
        operator new();
      }
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 4) >= a4)
  {
    v17 = a3 - a2;
    if (a3 != a2)
    {
      v18 = result;
      memmove(result, a2, v17 - 4);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 4);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

void sub_2246BE7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PDDepthProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double peridot::PeridotUserOutput::PeridotUserOutput(peridot::PeridotUserOutput *this)
{
  *(this + 21) = 0;
  *(this + 43) = 0;
  *(this + 65) = 0;
  *(this + 98) = 0;
  *(this + 120) = 0;
  *(this + 142) = 0;
  *(this + 175) = 0;
  *(this + 197) = 0;
  *(this + 219) = 0;
  *(this + 252) = 0;
  *(this + 274) = 0;
  *(this + 296) = 0;
  *(this + 329) = 0;
  *(this + 351) = 0;
  *(this + 373) = 0;
  *(this + 406) = 0;
  *(this + 428) = 0;
  *(this + 450) = 0;
  *(this + 483) = 0;
  *(this + 505) = 0;
  *(this + 527) = 0;
  *(this + 560) = 0;
  *(this + 582) = 0;
  *(this + 604) = 0;
  *(this + 637) = 0;
  *(this + 659) = 0;
  *(this + 681) = 0;
  *(this + 714) = 0;
  *(this + 736) = 0;
  *(this + 758) = 0;
  *(this + 791) = 0;
  *(this + 813) = 0;
  *(this + 835) = 0;
  *(this + 868) = 0;
  *(this + 890) = 0;
  *(this + 912) = 0;
  *(this + 945) = 0;
  *(this + 967) = 0;
  *(this + 989) = 0;
  *(this + 1022) = 0;
  *(this + 1044) = 0;
  *(this + 1066) = 0;
  *(this + 4312) = -1;
  *(this + 4392) = xmmword_2247A4620;
  *(this + 1103) = 16843009;
  *(this + 4416) = 0;
  *(this + 1105) = 814313567;
  *(this + 1108) = 808933364;
  result = -0.0078125;
  *(this + 4444) = xmmword_2247A4630;
  *(this + 4460) = 0x40E000003F400000;
  *(this + 1120) = 1065353216;
  *(this + 2246) = 256;
  *(this + 4494) = 0;
  *(this + 1124) = 1082130432;
  return result;
}

{
  *(this + 21) = 0;
  *(this + 43) = 0;
  *(this + 65) = 0;
  *(this + 98) = 0;
  *(this + 120) = 0;
  *(this + 142) = 0;
  *(this + 175) = 0;
  *(this + 197) = 0;
  *(this + 219) = 0;
  *(this + 252) = 0;
  *(this + 274) = 0;
  *(this + 296) = 0;
  *(this + 329) = 0;
  *(this + 351) = 0;
  *(this + 373) = 0;
  *(this + 406) = 0;
  *(this + 428) = 0;
  *(this + 450) = 0;
  *(this + 483) = 0;
  *(this + 505) = 0;
  *(this + 527) = 0;
  *(this + 560) = 0;
  *(this + 582) = 0;
  *(this + 604) = 0;
  *(this + 637) = 0;
  *(this + 659) = 0;
  *(this + 681) = 0;
  *(this + 714) = 0;
  *(this + 736) = 0;
  *(this + 758) = 0;
  *(this + 791) = 0;
  *(this + 813) = 0;
  *(this + 835) = 0;
  *(this + 868) = 0;
  *(this + 890) = 0;
  *(this + 912) = 0;
  *(this + 945) = 0;
  *(this + 967) = 0;
  *(this + 989) = 0;
  *(this + 1022) = 0;
  *(this + 1044) = 0;
  *(this + 1066) = 0;
  *(this + 4312) = -1;
  *(this + 4392) = xmmword_2247A4620;
  *(this + 1103) = 16843009;
  *(this + 4416) = 0;
  *(this + 1105) = 814313567;
  *(this + 1108) = 808933364;
  result = -0.0078125;
  *(this + 4444) = xmmword_2247A4630;
  *(this + 4460) = 0x40E000003F400000;
  *(this + 1120) = 1065353216;
  *(this + 2246) = 256;
  *(this + 4494) = 0;
  *(this + 1124) = 1082130432;
  return result;
}

double peridot::PeridotUserOutput::SpotFilteringCFG::init(peridot::PeridotUserOutput::SpotFilteringCFG *this, float a2)
{
  *(this + 12) = vmul_n_f32(0x3FC0000040400000, a2);
  v2 = a2 * 2.3;
  *(this + 6) = v2;
  *(this + 7) = a2 + a2;
  *(this + 16) = 1017370378;
  *(this + 7) = 0x4009999A3FD9999ALL;
  result = 4.60733979e-70;
  *(this + 9) = 0x3189705F2FA4ED3FLL;
  return result;
}

void peridot::PeridotUserOutput::reset(peridot::PeridotUserOutput *this, char a2)
{
  v3 = this + 4096;
  *(this + 4312) = a2;
  bzero(this, 0x10D8uLL);
  *(this + 612) = 1;
  *(this + 920) = 2;
  *(this + 1228) = 3;
  *(this + 1536) = 4;
  *(this + 1844) = 5;
  *(this + 2152) = 6;
  *(this + 2460) = 7;
  *(this + 2768) = 8;
  *(this + 3076) = 9;
  *(this + 3384) = 10;
  *(this + 3692) = 11;
  *(this + 4000) = 12;
  v3[212] = 13;
}

float peridot::PeridotUserOutput::init(peridot::PeridotUserOutput *this, char a2, unint64_t *a3, float a4)
{
  v6 = this + 4096;
  *(this + 4312) = a2;
  bzero(this, 0x10D8uLL);
  *(this + 612) = 1;
  *(this + 920) = 2;
  *(this + 1228) = 3;
  *(this + 1536) = 4;
  *(this + 1844) = 5;
  *(this + 2152) = 6;
  *(this + 2460) = 7;
  *(this + 2768) = 8;
  *(this + 3076) = 9;
  *(this + 3384) = 10;
  *(this + 3692) = 11;
  *(this + 4000) = 12;
  v6[212] = 13;
  *(this + 540) = *a3;
  *(this + 541) = a3[1];
  *(this + 542) = a3[2];
  *(this + 543) = a3[3];
  *(this + 544) = a3[4];
  *(this + 545) = a3[5];
  *(this + 546) = a3[6];
  *(this + 547) = a3[7];
  *(this + 548) = a3[8];
  *(this + 1102) = a4;
  *(this + 553) = vmul_n_f32(0x3FC0000040400000, a4);
  v7 = a4 * 2.3;
  *(this + 1109) = v7;
  result = a4 + a4;
  *(this + 1110) = a4 + a4;
  *(this + 4468) = 0x4009999A3FD9999ALL;
  *(this + 1119) = 1017370378;
  *(this + 4484) = 0x3189705F2FA4ED3FLL;
  return result;
}

float peridot::PeridotUserOutput::setStray(peridot::PeridotUserOutput *this, float *a2, float *a3, const float *a4, const float *a5)
{
  v5 = *a2;
  *(this + 66) = *a2;
  v6 = *a3;
  *(this + 67) = *a3;
  if (v5 != 0.0)
  {
    *(this + 68) = v5 - *a4;
  }

  if (v6 != 0.0)
  {
    *(this + 69) = v6 - *a5;
  }

  v7 = a2[1];
  *(this + 143) = v7;
  v8 = a3[1];
  *(this + 144) = v8;
  if (v7 != 0.0)
  {
    *(this + 145) = v7 - a4[1];
  }

  if (v8 != 0.0)
  {
    *(this + 146) = v8 - a5[1];
  }

  v9 = a2[2];
  *(this + 220) = v9;
  v10 = a3[2];
  *(this + 221) = v10;
  if (v9 != 0.0)
  {
    *(this + 222) = v9 - a4[2];
  }

  if (v10 != 0.0)
  {
    *(this + 223) = v10 - a5[2];
  }

  v11 = a2[3];
  *(this + 297) = v11;
  v12 = a3[3];
  *(this + 298) = v12;
  if (v11 != 0.0)
  {
    *(this + 299) = v11 - a4[3];
  }

  if (v12 != 0.0)
  {
    *(this + 300) = v12 - a5[3];
  }

  v13 = a2[4];
  *(this + 374) = v13;
  v14 = a3[4];
  *(this + 375) = v14;
  if (v13 != 0.0)
  {
    *(this + 376) = v13 - a4[4];
  }

  if (v14 != 0.0)
  {
    *(this + 377) = v14 - a5[4];
  }

  v15 = a2[5];
  *(this + 451) = v15;
  v16 = a3[5];
  *(this + 452) = v16;
  if (v15 != 0.0)
  {
    *(this + 453) = v15 - a4[5];
  }

  if (v16 != 0.0)
  {
    *(this + 454) = v16 - a5[5];
  }

  v17 = a2[6];
  *(this + 528) = v17;
  v18 = a3[6];
  *(this + 529) = v18;
  if (v17 != 0.0)
  {
    *(this + 530) = v17 - a4[6];
  }

  if (v18 != 0.0)
  {
    *(this + 531) = v18 - a5[6];
  }

  v19 = a2[7];
  *(this + 605) = v19;
  v20 = a3[7];
  *(this + 606) = v20;
  if (v19 != 0.0)
  {
    *(this + 607) = v19 - a4[7];
  }

  if (v20 != 0.0)
  {
    *(this + 608) = v20 - a5[7];
  }

  v21 = a2[8];
  *(this + 682) = v21;
  v22 = a3[8];
  *(this + 683) = v22;
  if (v21 != 0.0)
  {
    *(this + 684) = v21 - a4[8];
  }

  if (v22 != 0.0)
  {
    *(this + 685) = v22 - a5[8];
  }

  v23 = a2[9];
  *(this + 759) = v23;
  v24 = a3[9];
  *(this + 760) = v24;
  if (v23 != 0.0)
  {
    *(this + 761) = v23 - a4[9];
  }

  if (v24 != 0.0)
  {
    *(this + 762) = v24 - a5[9];
  }

  v25 = a2[10];
  *(this + 836) = v25;
  v26 = a3[10];
  *(this + 837) = v26;
  if (v25 != 0.0)
  {
    *(this + 838) = v25 - a4[10];
  }

  if (v26 != 0.0)
  {
    *(this + 839) = v26 - a5[10];
  }

  v27 = a2[11];
  *(this + 913) = v27;
  v28 = a3[11];
  *(this + 914) = v28;
  if (v27 != 0.0)
  {
    *(this + 915) = v27 - a4[11];
  }

  if (v28 != 0.0)
  {
    *(this + 916) = v28 - a5[11];
  }

  v29 = a2[12];
  *(this + 990) = v29;
  v30 = a3[12];
  *(this + 991) = v30;
  if (v29 != 0.0)
  {
    *(this + 992) = v29 - a4[12];
  }

  if (v30 != 0.0)
  {
    *(this + 993) = v30 - a5[12];
  }

  v31 = a2[13];
  *(this + 1067) = v31;
  result = a3[13];
  *(this + 1068) = result;
  if (v31 != 0.0)
  {
    *(this + 1069) = v31 - a4[13];
  }

  if (result != 0.0)
  {
    result = result - a5[13];
    *(this + 1070) = result;
  }

  return result;
}

_BYTE *peridot::PeridotUserOutput::spotsFiltering(peridot::PeridotUserOutput *this, int a2, float *a3, const float *a4, const float *a5, char a6)
{
  v8 = 0;
  v258 = *MEMORY[0x277D85DE8];
  v9 = this + 4096;
  v10 = *(this + 1098);
  v11 = (this + 100);
  v12 = v246;
  do
  {
    *(v12 - 1) = 0;
    v14 = 1.0;
    v15 = 1.0;
    if (*(v11 - 24) >= v10)
    {
      *(v12 - 1) = 1;
      v15 = *(v11 - 25);
    }

    *(&v249 + v8) = v15;
    v16 = *(v11 - 21);
    *&v247[v8 + 160] = *(v11 - 22);
    *&v246[v8 + 41] = v16;
    *v12 = 0;
    if (*(v11 - 2) >= v10)
    {
      *v12 = 1;
      v14 = *(v11 - 3);
    }

    v251[v8 / 4 - 1] = v14;
    v17 = *(v11 + 1);
    *&v247[v8 + 164] = *v11;
    *&v246[v8 + 45] = v17;
    v12[1] = 0;
    v18 = 1.0;
    if (v11[20] >= (v10 * 0.75))
    {
      v12[1] = 1;
      v18 = v11[19];
    }

    v251[v8 / 4] = v18;
    v13 = *(v11 + 23);
    *&v247[v8 + 168] = v11[22];
    *&v246[v8 + 49] = v13;
    v8 += 12;
    v11 += 77;
    v12 += 3;
  }

  while (v8 != 168);
  v19 = 0;
  v20 = *(this + 66);
  v21 = *(this + 144);
  v244[0] = *(this + 67);
  v244[1] = v21;
  v22 = *(this + 143);
  v243[0] = v20;
  v243[1] = v22;
  v23 = *(this + 220);
  v24 = *(this + 298);
  v244[2] = *(this + 221);
  v244[3] = v24;
  v25 = *(this + 297);
  v243[2] = v23;
  v243[3] = v25;
  v26 = *(this + 374);
  v27 = *(this + 452);
  v244[4] = *(this + 375);
  v244[5] = v27;
  v28 = *(this + 451);
  v243[4] = v26;
  v243[5] = v28;
  v29 = *(this + 528);
  v30 = *(this + 606);
  v244[6] = *(this + 529);
  v244[7] = v30;
  v31 = *(this + 605);
  v243[6] = v29;
  v243[7] = v31;
  v32 = *(this + 682);
  v33 = *(this + 760);
  v244[8] = *(this + 683);
  v244[9] = v33;
  v34 = *(this + 759);
  v243[8] = v32;
  v243[9] = v34;
  v35 = *(this + 836);
  v36 = *(this + 914);
  v244[10] = *(this + 837);
  v244[11] = v36;
  v37 = *(this + 913);
  v243[10] = v35;
  v243[11] = v37;
  v38 = *(this + 990);
  v39 = *(this + 1068);
  v244[12] = *(this + 991);
  v244[13] = v39;
  v40 = *(this + 1067);
  v41 = &v250;
  v243[12] = v38;
  v243[13] = v40;
  v42 = *(this + 1108);
  v43 = *(this + 1105);
  do
  {
    *(&v242[4] + v19 + 4) = 0;
    *(&v242[3] + v19 + 6) = 0;
    v44 = fminf(*(v41 - 1), *v41);
    if (v42 > v44 && *(this + 1109) < *&v244[v19] || v42 <= v44 && *(this + 1110) < *&v244[v19])
    {
      *(&v242[4] + v19 + 4) = 1;
    }

    if (v43 > v44 && *(this + 1106) < *&v243[v19] || v43 <= v44 && *(this + 1107) < *&v243[v19])
    {
      *(&v242[3] + v19 + 6) = 1;
    }

    ++v19;
    v41 += 3;
  }

  while (v19 != 14);
  v45 = 0;
  v46 = 0;
  v47 = *(this + 4413);
  v48 = (this + 172);
  v49 = *(this + 4412);
  do
  {
    if ((v47 & 1) != 0 && v246[v45 - 1] == 1)
    {
      v51 = *(&v242[4] + v46 + 4);
      v52 = 3 * v46;
      if (!v49)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v51 = 0;
      v52 = 3 * v46;
      if (!v49)
      {
        goto LABEL_34;
      }
    }

    if (v246[v45 - 1] == 1 && (*(&v242[3] + v46 + 6) & 1) != 0)
    {
      v53 = &v242[5] + v45 + 2;
      *(&v242[5] + v45 + 2) = 0;
      goto LABEL_36;
    }

LABEL_34:
    *(&v242[5] + v45 + 2) = 0;
    if (v51)
    {
      v53 = &v242[5] + v52 + 2;
LABEL_36:
      *v53 = 1;
      *(v48 - 22) |= 0x400000u;
      if (!v47)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if ((v47 & 1) == 0)
    {
LABEL_41:
      v54 = 0;
      v55 = 0;
      if (!v49)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

LABEL_37:
    v54 = v246[v45];
    if (v54 == 1)
    {
      v55 = *(&v242[4] + v46 + 4);
      if (!v49)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v55 = 0;
      v54 = 1;
      if (!v49)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v246[v45] == 1 && (*(&v242[3] + v46 + 6) & 1) != 0)
    {
      *(&v242[5] + v45 + 3) = 0;
      v56 = &v242[5] + v45 + 3;
      goto LABEL_49;
    }

LABEL_47:
    *(&v242[5] + v45 + 3) = 0;
    if ((v55 & 1) == 0)
    {
      if (!v54)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v56 = &v242[5] + v52 + 3;
LABEL_49:
    *v56 = 1;
    *v48 |= 0x400000u;
    if ((v47 & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_52:
    if (v246[v45 + 1] != 1)
    {
LABEL_56:
      LOBYTE(v54) = 0;
      if (!v49)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

    LOBYTE(v54) = *(&v242[4] + v46 + 4);
LABEL_54:
    if (!v49)
    {
      goto LABEL_59;
    }

LABEL_57:
    if (v246[v45 + 1] == 1 && (*(&v242[3] + v46 + 6) & 1) != 0)
    {
      *(&v242[5] + v45 + 4) = 0;
      v50 = &v242[5] + v45 + 4;
LABEL_24:
      *v50 = 1;
      v48[22] |= 0x400000u;
      goto LABEL_25;
    }

LABEL_59:
    *(&v242[5] + v45 + 4) = 0;
    if (v54)
    {
      v50 = &v242[5] + v52 + 4;
      goto LABEL_24;
    }

LABEL_25:
    ++v46;
    v45 += 3;
    v48 += 77;
  }

  while (v45 != 42);
  memset(v242, 0, 42);
  v57 = (this + 172);
  for (i = 1; i != 43; i += 3)
  {
    if (*(v57 - 20) <= 0.0 || *(v57 - 18) >= 0.08 || *(v57 - 14) <= 0.0015)
    {
      *(v242 + i) = 0;
    }

    else
    {
      v59 = *(v57 - 11);
      *(v242 + i) = v59 > 2.1;
      if (v59 > 2.1)
      {
        *v57 |= 0x4000u;
      }
    }

    v57 += 77;
  }

  v60 = 0;
  v61 = 0;
  v62 = (this + 172);
  do
  {
    v63 = *(v62 - 22) & 0x8000;
    v64 = &v240[v60 + 42];
    *v64 = v246[v60 - 1] & (v63 >> 15);
    v65 = *v62 & 0x8000;
    v64[1] = v246[v60] & (v65 >> 15);
    v61 |= (v62[22] & 0x8000 | v65 | v63) != 0;
    v64[2] = v246[v60 + 1] & ((v62[22] & 0x8000u) >> 15);
    v60 += 3;
    v62 += 77;
  }

  while (v60 != 42);
  if (v61)
  {
    *(this + 21) &= ~0x8000u;
    if ((v241[0] & 1) == 0)
    {
      *(this + 43) &= ~0x8000u;
    }

    *(this + 65) &= ~0x8000u;
    *(this + 98) &= ~0x8000u;
    if ((v241[3] & 1) == 0)
    {
      *(this + 120) &= ~0x8000u;
    }

    *(this + 142) &= ~0x8000u;
    *(this + 175) &= ~0x8000u;
    if ((v241[6] & 1) == 0)
    {
      *(this + 197) &= ~0x8000u;
    }

    *(this + 219) &= ~0x8000u;
    *(this + 252) &= ~0x8000u;
    if ((v241[9] & 1) == 0)
    {
      *(this + 274) &= ~0x8000u;
    }

    *(this + 296) &= ~0x8000u;
    *(this + 329) &= ~0x8000u;
    if ((v241[12] & 1) == 0)
    {
      *(this + 351) &= ~0x8000u;
    }

    *(this + 373) &= ~0x8000u;
    *(this + 406) &= ~0x8000u;
    if ((v241[15] & 1) == 0)
    {
      *(this + 428) &= ~0x8000u;
    }

    *(this + 450) &= ~0x8000u;
    *(this + 483) &= ~0x8000u;
    if ((v241[18] & 1) == 0)
    {
      *(this + 505) &= ~0x8000u;
    }

    *(this + 527) &= ~0x8000u;
    *(this + 560) &= ~0x8000u;
    if ((v241[21] & 1) == 0)
    {
      *(this + 582) &= ~0x8000u;
    }

    *(this + 604) &= ~0x8000u;
    *(this + 637) &= ~0x8000u;
    if ((v241[24] & 1) == 0)
    {
      *(this + 659) &= ~0x8000u;
    }

    *(this + 681) &= ~0x8000u;
    *(this + 714) &= ~0x8000u;
    if ((v241[27] & 1) == 0)
    {
      *(this + 736) &= ~0x8000u;
    }

    *(this + 758) &= ~0x8000u;
    *(this + 791) &= ~0x8000u;
    if ((v241[30] & 1) == 0)
    {
      *(this + 813) &= ~0x8000u;
    }

    *(this + 835) &= ~0x8000u;
    *(this + 868) &= ~0x8000u;
    if ((v241[33] & 1) == 0)
    {
      *(this + 890) &= ~0x8000u;
    }

    *(this + 912) &= ~0x8000u;
    *(this + 945) &= ~0x8000u;
    if ((v241[36] & 1) == 0)
    {
      *(this + 967) &= ~0x8000u;
    }

    *(this + 989) &= ~0x8000u;
    *(this + 1022) &= ~0x8000u;
    if ((v241[39] & 1) == 0)
    {
      *(this + 1044) &= ~0x8000u;
    }

    *(this + 1066) &= ~0x8000u;
  }

  v66 = 0;
  v67 = (this + 172);
  while (2)
  {
    if ((v246[v66 - 1] & 1) == 0)
    {
      v240[v66] = 0;
      goto LABEL_111;
    }

    v68 = *(this + 1116);
    if (v68 <= *a3)
    {
      v240[v66] = 1;
      goto LABEL_110;
    }

    v69 = *a5 * *a4;
    v240[v66] = v68 <= v69;
    if (v68 <= v69)
    {
LABEL_110:
      *(v67 - 22) |= 0x20000u;
    }

LABEL_111:
    if ((v246[v66] & 1) == 0)
    {
      v240[v66 + 1] = 0;
      goto LABEL_118;
    }

    v70 = *(this + 1116);
    if (v70 <= *a3)
    {
      v240[v66 + 1] = 1;
      goto LABEL_117;
    }

    v71 = *a5 * *a4;
    v240[v66 + 1] = v70 <= v71;
    if (v70 <= v71)
    {
LABEL_117:
      *v67 |= 0x20000u;
    }

LABEL_118:
    if (v246[v66 + 1])
    {
      v72 = *(this + 1116);
      if (v72 <= *a3)
      {
        v240[v66 + 2] = 1;
        goto LABEL_123;
      }

      v73 = *a5 * *a4;
      v240[v66 + 2] = v72 <= v73;
      if (v72 <= v73)
      {
LABEL_123:
        v67[22] |= 0x20000u;
      }
    }

    else
    {
      v240[v66 + 2] = 0;
    }

    v66 += 3;
    ++a3;
    ++a4;
    ++a5;
    v67 += 77;
    if (v66 != 42)
    {
      continue;
    }

    break;
  }

  v74 = 0uLL;
  v238 = 0u;
  memset(v239, 0, sizeof(v239));
  if (v245)
  {
    v75 = v246[0];
  }

  else
  {
    v75 = 0;
  }

  v224 = v75;
  if (v246[2])
  {
    v76 = v246[3];
  }

  else
  {
    v76 = 0;
  }

  v225 = v76;
  if (v246[5])
  {
    v77 = v246[6];
  }

  else
  {
    v77 = 0;
  }

  v226 = v77;
  if (v246[8])
  {
    v78 = v246[9];
  }

  else
  {
    v78 = 0;
  }

  v227 = v78;
  if (v246[11])
  {
    v79 = v246[12];
  }

  else
  {
    v79 = 0;
  }

  v228 = v79;
  if (v246[14])
  {
    v80 = v246[15];
  }

  else
  {
    v80 = 0;
  }

  v229 = v80;
  if (v246[17])
  {
    v81 = v246[18];
  }

  else
  {
    v81 = 0;
  }

  v230 = v81;
  if (v246[20])
  {
    v82 = v246[21];
  }

  else
  {
    v82 = 0;
  }

  v231 = v82;
  if (v246[23])
  {
    v83 = v246[24];
  }

  else
  {
    v83 = 0;
  }

  v232 = v83;
  if (v246[26])
  {
    v84 = v246[27];
  }

  else
  {
    v84 = 0;
  }

  v233 = v84;
  if (v246[29])
  {
    v85 = v246[30];
  }

  else
  {
    v85 = 0;
  }

  v234 = v85;
  if (v246[32])
  {
    v86 = v246[33];
  }

  else
  {
    v86 = 0;
  }

  v235 = v86;
  if (v246[35])
  {
    v87 = v246[36];
  }

  else
  {
    v87 = 0;
  }

  v236 = v87;
  if (v246[38])
  {
    v88 = v246[39];
  }

  else
  {
    v88 = 0;
  }

  v237 = v88;
  if (v9[319] == 1 && ((v88 | v87 | v86 | v85 | v84 | v83 | v82 | v81 | v80 | v79 | v78 | v77 | v76 | v75) & 1) != 0)
  {
    v196 = v9;
    v197 = a2;
    v89 = v251[2] > v251[1];
    v90 = v251[8] > v251[7];
    v91 = v251[14] > v251[13];
    v92 = v251[20] > v251[19];
    v93 = v251[26] > v251[25];
    v94 = v251[32] > v251[31];
    v95 = v251[38] > v251[37];
    if (v250 <= v249)
    {
      v96 = v223;
    }

    else
    {
      v96 = v223 + 1;
    }

    if (v251[5] <= v251[4])
    {
      v97 = v223 + 6;
    }

    else
    {
      v97 = v223 + 7;
    }

    v98 = (v223 | 0xC);
    if (v251[11] <= v251[10])
    {
      v99 = (v223 | 0xC);
    }

    else
    {
      v99 = v98 + 1;
    }

    if (v251[17] <= v251[16])
    {
      v100 = &v223[1] + 2;
    }

    else
    {
      v100 = &v223[1] + 3;
    }

    if (v251[23] <= v251[22])
    {
      v101 = &v223[1] + 8;
    }

    else
    {
      v101 = &v223[1] + 9;
    }

    if (v251[29] <= v251[28])
    {
      v102 = &v223[1] + 14;
    }

    else
    {
      v102 = &v223[1] + 15;
    }

    v103 = v251[35] <= v251[34];
    memset(v223, 0, 42);
    memset(v222, 0, sizeof(v222));
    v221 = 0u;
    *v96 = 1;
    *(v223 + v89 + 3) = 1;
    *((v223 | 9) + v90) = 1;
    *v97 = 1;
    *v99 = 1;
    *((v223 | 0xF) + v91) = 1;
    *v100 = 1;
    *(&v223[1] + v92 + 5) = 1;
    *(&v223[1] + v93 + 11) = 1;
    *v101 = 1;
    *v102 = 1;
    *(&v223[2] + v94 + 1) = 1;
    if (v103)
    {
      v104 = &v223[2] + 4;
    }

    else
    {
      v104 = &v223[2] + 5;
    }

    *v104 = 1;
    *(&v223[2] + v95 + 7) = 1;
    v220 = LOWORD(v223[0]) ^ 0x101;
    *(&v221 + 1) = *(v223 + 3) ^ 0x101;
    WORD2(v221) = WORD3(v223[0]) ^ 0x101;
    *(&v221 + 7) = *(v223 + 9) ^ 0x101;
    WORD5(v221) = WORD6(v223[0]) ^ 0x101;
    *(&v221 + 13) = *(v223 + 15) ^ 0x101;
    v222[0] = WORD1(v223[1]) ^ 0x101;
    *(&v222[1] + 1) = *(&v223[1] + 5) ^ 0x101;
    v222[3] = WORD4(v223[1]) ^ 0x101;
    *(&v222[4] + 1) = *(&v223[1] + 11) ^ 0x101;
    v222[6] = HIWORD(v223[1]) ^ 0x101;
    *(&v222[7] + 1) = *(&v223[2] + 1) ^ 0x101;
    v222[9] = WORD2(v223[2]) ^ 0x101;
    *(&v222[10] + 1) = *(&v223[2] + 7) ^ 0x101;
    if ((v224 & 1) == 0)
    {
      BYTE2(v223[0]) = 0;
      LOWORD(v223[0]) = 0;
      v220 = 0;
      LOBYTE(v221) = 0;
    }

    if (v225)
    {
      if (v226)
      {
        goto LABEL_193;
      }

LABEL_386:
      BYTE8(v223[0]) = 0;
      WORD3(v223[0]) = 0;
      WORD2(v221) = 0;
      BYTE6(v221) = 0;
      if ((v227 & 1) == 0)
      {
        goto LABEL_387;
      }

LABEL_194:
      if (v228)
      {
        goto LABEL_195;
      }

LABEL_388:
      *((v223 | 0xC) + 2) = 0;
      *v98 = 0;
      WORD5(v221) = 0;
      BYTE12(v221) = 0;
      if ((v229 & 1) == 0)
      {
        goto LABEL_389;
      }

LABEL_196:
      if (v230)
      {
        goto LABEL_197;
      }

LABEL_390:
      BYTE4(v223[1]) = 0;
      WORD1(v223[1]) = 0;
      v222[0] = 0;
      LOBYTE(v222[1]) = 0;
      if ((v231 & 1) == 0)
      {
        goto LABEL_391;
      }

LABEL_198:
      if (v232)
      {
        goto LABEL_199;
      }

LABEL_392:
      BYTE10(v223[1]) = 0;
      WORD4(v223[1]) = 0;
      v222[3] = 0;
      LOBYTE(v222[4]) = 0;
      if ((v233 & 1) == 0)
      {
        goto LABEL_393;
      }

LABEL_200:
      if (v234)
      {
        goto LABEL_201;
      }

LABEL_394:
      LOBYTE(v223[2]) = 0;
      HIWORD(v223[1]) = 0;
      v222[6] = 0;
      LOBYTE(v222[7]) = 0;
      if ((v235 & 1) == 0)
      {
        goto LABEL_395;
      }

LABEL_202:
      if (v236)
      {
        goto LABEL_203;
      }

LABEL_396:
      BYTE6(v223[2]) = 0;
      WORD2(v223[2]) = 0;
      v222[9] = 0;
      LOBYTE(v222[10]) = 0;
      if (v237)
      {
        goto LABEL_205;
      }

LABEL_204:
      BYTE9(v223[2]) = 0;
      *(&v223[2] + 7) = 0;
      *(&v222[10] + 1) = 0;
      HIBYTE(v222[11]) = 0;
      goto LABEL_205;
    }

    BYTE5(v223[0]) = 0;
    *(v223 + 3) = 0;
    *(&v221 + 1) = 0;
    BYTE3(v221) = 0;
    if ((v226 & 1) == 0)
    {
      goto LABEL_386;
    }

LABEL_193:
    if (v227)
    {
      goto LABEL_194;
    }

LABEL_387:
    *((v223 | 9) + 2) = 0;
    *(v223 | 9) = 0;
    *(&v221 + 7) = 0;
    BYTE9(v221) = 0;
    if ((v228 & 1) == 0)
    {
      goto LABEL_388;
    }

LABEL_195:
    if (v229)
    {
      goto LABEL_196;
    }

LABEL_389:
    *((v223 | 0xF) + 2) = 0;
    *(v223 | 0xF) = 0;
    *(&v221 + 13) = 0;
    HIBYTE(v221) = 0;
    if ((v230 & 1) == 0)
    {
      goto LABEL_390;
    }

LABEL_197:
    if (v231)
    {
      goto LABEL_198;
    }

LABEL_391:
    BYTE7(v223[1]) = 0;
    *(&v223[1] + 5) = 0;
    *(&v222[1] + 1) = 0;
    HIBYTE(v222[2]) = 0;
    if ((v232 & 1) == 0)
    {
      goto LABEL_392;
    }

LABEL_199:
    if (v233)
    {
      goto LABEL_200;
    }

LABEL_393:
    BYTE13(v223[1]) = 0;
    *(&v223[1] + 11) = 0;
    *(&v222[4] + 1) = 0;
    HIBYTE(v222[5]) = 0;
    if ((v234 & 1) == 0)
    {
      goto LABEL_394;
    }

LABEL_201:
    if (v235)
    {
      goto LABEL_202;
    }

LABEL_395:
    BYTE3(v223[2]) = 0;
    *(&v223[2] + 1) = 0;
    *(&v222[7] + 1) = 0;
    HIBYTE(v222[8]) = 0;
    if ((v236 & 1) == 0)
    {
      goto LABEL_396;
    }

LABEL_203:
    if ((v237 & 1) == 0)
    {
      goto LABEL_204;
    }

LABEL_205:
    v105 = 0;
    v106 = 0;
    *&v255 = 0;
    v253 = 0uLL;
    v254 = 0uLL;
    v252 = 0uLL;
    v219 = 0;
    memset(v218, 0, sizeof(v218));
    v217 = 0;
    v215 = 0uLL;
    v216 = 0uLL;
    v214 = 0uLL;
    v213 = 0;
    v211 = 0uLL;
    v212 = 0uLL;
    v107 = v247;
    v108 = v251;
    v210 = 0uLL;
    v109 = &v248;
    v209 = 0;
    memset(v208, 0, sizeof(v208));
    do
    {
      if (*(v223 + v105))
      {
        *(&v252 + v106) = *(v108 - 2);
        *(&v214 + v106) = *(v107 - 2);
        *(v208 + v106) = *(v109 - 2);
      }

      if (*(&v220 + v105) == 1)
      {
        *(v218 + v106) = *(v108 - 2);
        *(&v210 + v106) = *(v107 - 2);
      }

      if (*(v223 + v105 + 1) == 1)
      {
        *(&v252 + v106) = *(v108 - 1);
        *(&v214 + v106) = *(v107 - 1);
        *(v208 + v106) = *(v109 - 1);
      }

      if (*(&v220 + v105 + 1) == 1)
      {
        *(v218 + v106) = *(v108 - 1);
        *(&v210 + v106) = *(v107 - 1);
      }

      if (*(v223 + v105 + 2) == 1)
      {
        *(&v252 + v106) = *v108;
        *(&v214 + v106) = *v107;
        *(v208 + v106) = *v109;
      }

      if (*(&v220 + v105 + 2) == 1)
      {
        *(v218 + v106) = *v108;
        *(&v210 + v106) = *v107;
      }

      v106 += 4;
      v107 += 3;
      v108 += 3;
      v105 += 3;
      v109 = (v109 + 12);
    }

    while (v106 != 56);
    v110 = 0;
    v207 = 0;
    memset(v206, 0, sizeof(v206));
    v205 = 0;
    memset(v204, 0, sizeof(v204));
    do
    {
      v111 = *(v218 + v110);
      v112 = *(&v252 + v110);
      if (v111 == 0.0)
      {
        if (v112 != 0.0)
        {
          printf("Warning: division by 0 (close_tofs[%d] is 0)\n", v110);
        }
      }

      else
      {
        *(v206 + v110) = v112 / v111;
        v113 = *(&v210 + v110);
        if (v113 == 0.0)
        {
          if (v112 != 0.0)
          {
            printf("Warning: division by 0 (close_qs[%d] is 0)\n", v110);
          }
        }

        else
        {
          *(v204 + v110) = *(&v214 + v110) / v113;
        }
      }

      ++v110;
    }

    while (v110 != 14);
    v114 = 0;
    v115 = 0;
    memset(v203, 0, 42);
    memset(v202, 0, 42);
    memset(v201, 0, 42);
    memset(v200, 0, 42);
    *&v116 = 0x101010101010101;
    *(&v116 + 1) = 0x101010101010101;
    *&v199[10] = v116;
    v198 = v116;
    *v199 = v116;
    a2 = v197;
    v9 = v196;
    do
    {
      if (*(v223 + v115))
      {
        v118 = *(v206 + v114);
        v119 = v118 >= *(this + 1117) && v118 <= *(this + 1118);
        *(v203 + v115) = v119;
        v120 = *(v208 + v114);
        if (v120 <= *(this + 1119))
        {
          if (v120 == 0.0)
          {
            v121 = v196[396];
          }

          else
          {
            v121 = 1;
          }
        }

        else
        {
          v121 = 0;
        }

        *(v202 + v115) = v121 & 1;
        *(v201 + v115) = *(v204 + v114) <= *(this + 1120);
        v122 = *(v218 + v114);
        v123 = v122 >= *(this + 1121) && v122 <= *(this + 1122);
        *(v200 + v115) = v123;
      }

      if (*(v223 + v115 + 1) == 1)
      {
        v124 = *(v206 + v114);
        v125 = v124 >= *(this + 1117) && v124 <= *(this + 1118);
        *(v203 + v115 + 1) = v125;
        v126 = *(v208 + v114);
        if (v126 <= *(this + 1119))
        {
          if (v126 == 0.0)
          {
            v127 = v196[396];
          }

          else
          {
            v127 = 1;
          }
        }

        else
        {
          v127 = 0;
        }

        *(v202 + v115 + 1) = v127 & 1;
        *(v201 + v115 + 1) = *(v204 + v114) <= *(this + 1120);
        v128 = *(v218 + v114);
        v129 = v128 >= *(this + 1121) && v128 <= *(this + 1122);
        *(v200 + v115 + 1) = v129;
      }

      if (*(v223 + v115 + 2) == 1)
      {
        v130 = *(v206 + v114);
        v131 = v130 >= *(this + 1117) && v130 <= *(this + 1118);
        *(v203 + v115 + 2) = v131;
        v132 = *(v208 + v114);
        if (v132 <= *(this + 1119))
        {
          if (v132 == 0.0)
          {
            v133 = v196[396];
          }

          else
          {
            v133 = 1;
          }
        }

        else
        {
          v133 = 0;
        }

        *(v202 + v115 + 2) = v133 & 1;
        *(v201 + v115 + 2) = *(v204 + v114) <= *(this + 1120);
        v134 = *(v218 + v114);
        v117 = v134 >= *(this + 1121) && v134 <= *(this + 1122);
        *(v200 + v115 + 2) = v117;
      }

      v115 += 3;
      v114 += 4;
    }

    while (v115 != 42);
    if ((v196[397] & 1) == 0)
    {
      v191 = (this + 152);
      v192 = v223 + 1;
      v193 = &v198 + 1;
      v194 = 14;
      do
      {
        if (*(v192 - 1) == 1)
        {
          *(v193 - 1) = (*(v191 - 22) + *(v191 - 22)) < 1.0;
        }

        if (*v192 == 1)
        {
          *v193 = (*v191 + *v191) < 1.0;
        }

        if (v192[1] == 1)
        {
          v193[1] = (v191[22] + v191[22]) < 1.0;
        }

        v191 += 77;
        v192 += 3;
        v193 += 3;
        --v194;
      }

      while (v194);
    }

    v135 = 0;
    v136 = &v224;
    v74 = 0uLL;
    do
    {
      v138 = *v136++;
      if (v138)
      {
        if (*(v203 + v135) == 1 && *(v202 + v135) == 1 && *(v201 + v135) == 1 && *(v200 + v135) == 1)
        {
          v139 = v199[v135 - 16];
        }

        else
        {
          v139 = 0;
        }

        v239[v135 - 16] = v139 & 1;
        if (*(v203 + v135 + 1) == 1 && *(v202 + v135 + 1) == 1 && *(v201 + v135 + 1) == 1 && *(v200 + v135 + 1) == 1)
        {
          v140 = v199[v135 - 15];
        }

        else
        {
          v140 = 0;
        }

        v239[v135 - 15] = v140 & 1;
        if (*(v203 + v135 + 2) == 1 && *(v202 + v135 + 2) == 1 && *(v201 + v135 + 2) == 1 && *(v200 + v135 + 2) == 1)
        {
          v141 = v199[v135 - 14];
        }

        else
        {
          v141 = 0;
        }

        v239[v135 - 14] = v141 & 1;
      }

      else
      {
        v137 = &v239[v135 - 16];
        v137[2] = 0;
        *v137 = 0;
      }

      v135 += 3;
    }

    while (v135 != 42);
    v142 = 0;
    v143 = (this + 172);
    do
    {
      if (v239[v142 - 16])
      {
        *(v143 - 22) |= 1u;
      }

      if (v239[v142 - 15] == 1)
      {
        *v143 |= 1u;
      }

      if (v239[v142 - 14] == 1)
      {
        v143[22] |= 1u;
      }

      v142 += 3;
      v143 += 77;
    }

    while (v142 != 42);
    if (a6)
    {
      v74 = 0uLL;
      v238 = 0u;
      memset(v239, 0, sizeof(v239));
    }
  }

  v144 = 0;
  v145 = 0;
  *(&v218[1] + 10) = v74;
  v218[0] = v74;
  v218[1] = v74;
  v146 = (this + 100);
  v147 = v251;
  v148 = v9[318];
  while (2)
  {
    if ((v148 & 1) == 0)
    {
      v149 = v218 + v144;
      v149[2] = 0;
      *v149 = 0;
      goto LABEL_305;
    }

    if (v246[v144 - 1] != 1)
    {
      goto LABEL_313;
    }

    v150 = *(v146 - 22);
    if (v150 <= 0.0)
    {
      goto LABEL_313;
    }

    v151 = ceilf(v150 * 10000.0) * 0.0001;
    v152 = *(this + 1111);
    v153 = *(v147 - 2);
    if (v152 > v153 && v151 < *(this + 1112))
    {
      *(v218 + v144) = 1;
      goto LABEL_316;
    }

    if (v152 <= v153)
    {
      v155 = *(this + 1113);
      *(v218 + v144) = v151 < v155;
      if (v151 < v155)
      {
LABEL_316:
        v154 = v239[v144 - 16] ^ 1;
      }

      else
      {
        v154 = 0;
      }
    }

    else
    {
LABEL_313:
      v154 = 0;
      *(v218 + v144) = 0;
    }

    if (v246[v144] != 1 || *v146 <= 0.0)
    {
      goto LABEL_323;
    }

    v156 = ceilf(*v146 * 10000.0) * 0.0001;
    v157 = *(this + 1111);
    v158 = *(v147 - 1);
    if (v157 > v158 && v156 < *(this + 1112))
    {
      *(v218 + v144 + 1) = 1;
      goto LABEL_326;
    }

    if (v157 <= v158)
    {
      v160 = *(this + 1113);
      *(v218 + v144 + 1) = v156 < v160;
      if (v156 < v160)
      {
LABEL_326:
        v159 = v239[v144 - 15] ^ 1;
      }

      else
      {
        v159 = 0;
      }
    }

    else
    {
LABEL_323:
      v159 = 0;
      *(v218 + v144 + 1) = 0;
    }

    v161 = 0;
    v145 += v159 + v154;
    if (v246[v144 + 1] == 1)
    {
      v162 = v146[22];
      if (v162 > 0.0)
      {
        v163 = ceilf(v162 * 10000.0) * 0.0001;
        v164 = *(this + 1111);
        if (v164 > *v147 && v163 < *(this + 1112))
        {
          *(v218 + v144 + 2) = 1;
          goto LABEL_305;
        }

        v161 = v164 <= *v147 && v163 < *(this + 1113);
      }
    }

    *(v218 + v144 + 2) = v161;
LABEL_305:
    v144 += 3;
    v146 += 77;
    v147 += 3;
    if (v144 != 42)
    {
      continue;
    }

    break;
  }

  if (*(this + 1114) < v145)
  {
    memset(v218, 0, 42);
  }

  v165 = (this + 172);
  v166 = v218 + 2;
  v167 = 14;
  do
  {
    if (*(v166 - 2))
    {
      *(v165 - 22) |= 0x400u;
    }

    if (*(v166 - 1) == 1)
    {
      *v165 |= 0x400u;
    }

    if (*v166 == 1)
    {
      v165[22] |= 0x400u;
    }

    v166 += 3;
    v165 += 77;
    --v167;
  }

  while (v167);
  v168 = 0;
  v169 = (this + 92);
  result = v240;
  do
  {
    if ((*(&v242[5] + v168 + 2) & 1) != 0 || (*(v242 + v168) & 1) != 0 || (*(v218 + v168) & 1) != 0 || (v240[v168 + 42] & 1) != 0 || (v240[v168] & 1) != 0 || v239[v168 - 16] == 1)
    {
      *(v169 - 22) = *(v169 - 22) * *(this + 1115);
    }

    if ((*(&v242[5] + v168 + 3) & 1) != 0 || (*(v242 + v168 + 1) & 1) != 0 || (*(v218 + v168 + 1) & 1) != 0 || (v241[v168] & 1) != 0 || (v240[v168 + 1] & 1) != 0 || v239[v168 - 15] == 1)
    {
      *v169 = *v169 * *(this + 1115);
    }

    if ((*(&v242[5] + v168 + 4) & 1) != 0 || (*(v242 + v168 + 2) & 1) != 0 || (*(v218 + v168 + 2) & 1) != 0 || (v241[v168 + 1] & 1) != 0 || (v240[v168 + 2] & 1) != 0 || v239[v168 - 14] == 1)
    {
      v169[22] = v169[22] * *(this + 1115);
    }

    v168 += 3;
    v169 += 77;
  }

  while (v168 != 42);
  v171 = this + 172;
  v172 = 14;
  while (2)
  {
    if (a2)
    {
      if ((*(v171 - 88) & 0x40) != 0)
      {
        *(v171 - 42) = 0;
        if ((*v171 & 0x40) != 0)
        {
          goto LABEL_377;
        }

LABEL_374:
        if ((v171[88] & 0x40) != 0)
        {
LABEL_378:
          *(v171 + 2) = 0;
        }
      }

      else
      {
        if ((*v171 & 0x40) == 0)
        {
          goto LABEL_374;
        }

LABEL_377:
        *(v171 - 20) = 0;
        if ((v171[88] & 0x40) != 0)
        {
          goto LABEL_378;
        }
      }
    }

    v171 += 308;
    if (--v172)
    {
      continue;
    }

    break;
  }

  v173 = this + 88;
  v174 = 14;
  do
  {
    if (*(v173 - 21) < 0.999 && *(v173 + 1) >= 0.999)
    {
      v175 = v173 - 88;
      v176 = *(v173 - 72);
      v214 = *(v173 - 88);
      v215 = v176;
      LODWORD(v216) = *(v173 - 14);
      v177 = *(v173 + 1);
      v210 = *v173;
      v178 = v210;
      v211 = v177;
      LODWORD(v212) = *(v173 + 8);
      v179 = *(v173 - 1);
      v180 = *(v173 - 40);
      v254 = *(v173 - 56);
      v255 = v180;
      v256 = *(v173 - 24);
      v257 = *(v173 - 1);
      v181 = *(v173 - 72);
      v252 = v214;
      v253 = v181;
      v182 = *(v173 + 3);
      *(v175 + 2) = *(v173 + 2);
      *(v175 + 3) = v182;
      *(v175 + 4) = *(v173 + 4);
      v183 = *(v173 + 21);
      *(v175 + 20) = *(v173 + 20);
      v184 = *(v173 + 1);
      *v175 = v178;
      *(v175 + 1) = v184;
      v185 = v253;
      *v173 = v252;
      *(v173 + 1) = v185;
      *(v175 + 8) = v212;
      v186 = v257;
      v187 = v256;
      *(v173 + 3) = v255;
      *(v173 + 4) = v187;
      *(v173 + 2) = v254;
      v188 = v211;
      *v175 = v210;
      *(v175 + 1) = v188;
      v189 = v214;
      v190 = v215;
      *(v173 + 8) = v216;
      *v173 = v189;
      *(v173 + 1) = v190;
      *(v173 - 1) = v183;
      *(v173 + 20) = v186;
      *(v173 + 21) = v179;
    }

    v173 += 308;
    --v174;
  }

  while (v174);
  return result;
}

__n128 peridot::PeridotUserOutput::switchEchos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 88 * a3;
  v20 = *(v4 + 16);
  v21 = *(v4 + 32);
  v5 = a2 + 88 * a4;
  v17 = *v5;
  v18 = *(v5 + 16);
  v19 = *(v5 + 32);
  v6 = *(v4 + 84);
  v13 = *(v4 + 32);
  v14 = *(v4 + 48);
  v15 = *(v4 + 64);
  v16 = *(v4 + 80);
  v12 = *v4;
  *v4 = *v5;
  *(v4 + 16) = v18;
  v8 = *(v5 + 48);
  v7 = *(v5 + 64);
  v9 = *(v5 + 84);
  v10 = *(v5 + 32);
  *(v4 + 80) = *(v5 + 80);
  *(v4 + 84) = v9;
  *(v4 + 48) = v8;
  *(v4 + 64) = v7;
  *(v4 + 32) = v10;
  *v5 = v12;
  *(v5 + 16) = v20;
  *(v5 + 80) = v16;
  *(v5 + 84) = v6;
  *(v5 + 48) = v14;
  *(v5 + 64) = v15;
  *(v5 + 32) = v13;
  *v4 = v17;
  *(v4 + 16) = v18;
  *(v4 + 32) = v19;
  result = v12;
  *(v5 + 32) = v21;
  *v5 = v12;
  *(v5 + 16) = v20;
  return result;
}

uint64_t peridot::PeridotUserOutput::fusionOutput(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v342 = v11;
  v329 = v12;
  v336 = v13;
  v330 = v14;
  v16 = v15;
  v337 = v17;
  v18 = v10;
  v19 = 0;
  *&v396[92] = *MEMORY[0x277D85DE8];
  v334 = v20 + 240;
  v335 = v20 + 16;
  v333 = v20 + 72;
  __asm { FMOV            V4.4S, #0.75 }

  v338 = v10;
  v332 = v15;
  v331 = _Q4;
  do
  {
    v25 = (v18 + 308 * v19);
    *(v25 + 304) = v19;
    *(v25 + 71) = *(v335 + 4 * v19);
    *(v25 + 72) = *(v334 + 4 * v19);
    v26 = (v333 + 4 * v19);
    *(v25 + 73) = *v26;
    *(v25 + 74) = v26[14];
    v339 = v25;
    *(v25 + 75) = v26[28];
    v341 = v19;
    v27 = &v337[24 * v19];
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - *v27) >> 4);
    if (v29 == *v27)
    {
      v32 = 0;
      if (!v16)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v31 = 0;
      if (v30 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - *v27) >> 4);
      }

      v33 = v28 + 36;
      do
      {
        v394[v31] = *(v33 - 28);
        v34 = *(v33 - 24);
        *&v393[4 * v31] = *(v33 - 20);
        v35 = *(v33 + 4);
        v392[v31 + 216] = *v33;
        v392[v31 + 189] = *(v33 - 32);
        v392[v31 + 162] = v34;
        v392[v31 + 135] = v35;
        *&v392[2 * v31 + 81] = *(v33 + 12);
        *&v392[2 * v31 + 27] = v31;
        ++v31;
        v33 += 80;
      }

      while (v32 != v31);
      if (!v16)
      {
        goto LABEL_18;
      }
    }

    v36 = *(v27 + 4);
    v37 = *(v27 + 5);
    v38 = v37 - v36;
    if (v37 != v36)
    {
      v39 = 0;
      v40 = 0xCCCCCCCCCCCCCCCDLL * (v38 >> 4);
      if (v40 <= 1)
      {
        v40 = 1;
      }

      v41 = v36 + 36;
      do
      {
        v394[v32 + v39] = *(v41 - 28);
        v42 = *(v41 - 24);
        *&v393[4 * v32 + 4 * v39] = *(v41 - 20);
        v43 = *(v41 + 4);
        v392[v32 + 216 + v39] = *v41;
        v392[v32 + 189 + v39] = *(v41 - 32);
        v392[v32 + 162 + v39] = v42;
        v392[v32 + 135 + v39] = v43;
        *&v392[2 * v32 + 81 + 2 * v39] = *(v41 + 12);
        *&v392[2 * v32 + 27 + 2 * v39] = v39;
        ++v39;
        v41 += 80;
      }

      while (v40 != v39);
      v32 += v39;
    }

LABEL_18:
    v44 = *(v27 + 8);
    v45 = *(v27 + 9);
    v46 = v45 - v44;
    if (v45 != v44)
    {
      v47 = 0;
      v48 = 0xCCCCCCCCCCCCCCCDLL * (v46 >> 4);
      if (v48 <= 1)
      {
        v48 = 1;
      }

      v49 = v44 + 36;
      do
      {
        v394[v32 + v47] = *(v49 - 28);
        v50 = *(v49 - 24);
        *&v393[4 * v32 + 4 * v47] = *(v49 - 20);
        v51 = *(v49 + 4);
        v392[v32 + 216 + v47] = *v49;
        v392[v32 + 189 + v47] = *(v49 - 32);
        v392[v32 + 162 + v47] = v50;
        v392[v32 + 135 + v47] = v51;
        *&v392[2 * v32 + 81 + 2 * v47] = *(v49 + 12);
        *&v392[2 * v32 + 27 + 2 * v47] = v47;
        ++v47;
        v49 += 80;
      }

      while (v48 != v47);
      v32 += v47;
    }

    if (v16)
    {
      v52 = *(v27 + 12);
      v53 = *(v27 + 13);
      v54 = v53 - v52;
      if (v53 != v52)
      {
        v55 = 0;
        v56 = 0xCCCCCCCCCCCCCCCDLL * (v54 >> 4);
        if (v56 <= 1)
        {
          v56 = 1;
        }

        v57 = v52 + 36;
        do
        {
          v394[v32 + v55] = *(v57 - 28);
          v58 = *(v57 - 24);
          *&v393[4 * v32 + 4 * v55] = *(v57 - 20);
          v59 = *(v57 + 4);
          v392[v32 + 216 + v55] = *v57;
          v392[v32 + 189 + v55] = *(v57 - 32);
          v392[v32 + 162 + v55] = v58;
          v392[v32 + 135 + v55] = v59;
          *&v392[2 * v32 + 81 + 2 * v55] = *(v57 + 12);
          *&v392[2 * v32 + 27 + 2 * v55] = v55;
          ++v55;
          v57 += 80;
        }

        while (v56 != v55);
        v32 += v55;
      }

      v60 = *(v27 + 16);
      v61 = *(v27 + 17);
      v62 = v61 - v60;
      if (v61 != v60)
      {
        v63 = 0;
        v64 = 0xCCCCCCCCCCCCCCCDLL * (v62 >> 4);
        if (v64 <= 1)
        {
          v64 = 1;
        }

        v65 = v60 + 36;
        do
        {
          v394[v32 + v63] = *(v65 - 28);
          v66 = *(v65 - 24);
          *&v393[4 * v32 + 4 * v63] = *(v65 - 20);
          v67 = *(v65 + 4);
          v392[v32 + 216 + v63] = *v65;
          v392[v32 + 189 + v63] = *(v65 - 32);
          v392[v32 + 162 + v63] = v66;
          v392[v32 + 135 + v63] = v67;
          *&v392[2 * v32 + 81 + 2 * v63] = *(v65 + 12);
          *&v392[2 * v32 + 27 + 2 * v63] = v63;
          ++v63;
          v65 += 80;
        }

        while (v64 != v63);
        v32 += v63;
      }

      v68 = *(v27 + 20);
      v69 = *(v27 + 21);
      v70 = v69 - v68;
      if (v69 != v68)
      {
        v71 = 0;
        v72 = 0xCCCCCCCCCCCCCCCDLL * (v70 >> 4);
        if (v72 <= 1)
        {
          v72 = 1;
        }

        v73 = v68 + 36;
        do
        {
          v394[v32 + v71] = *(v73 - 28);
          v74 = *(v73 - 24);
          *&v393[4 * v32 + 4 * v71] = *(v73 - 20);
          v75 = *(v73 + 4);
          v392[v32 + 216 + v71] = *v73;
          v392[v32 + 189 + v71] = *(v73 - 32);
          v392[v32 + 162 + v71] = v74;
          v392[v32 + 135 + v71] = v75;
          *&v392[2 * v32 + 81 + 2 * v71] = *(v73 + 12);
          *&v392[2 * v32 + 27 + 2 * v71] = v71;
          ++v71;
          v73 += 80;
        }

        while (v72 != v71);
        v32 += v71;
      }
    }

    v76 = v27[6];
    v77 = *(v18 + 4404);
    if (v336)
    {
      if ((*(v329 + v341) & 1) == 0 && v76 <= v77)
      {
        goto LABEL_77;
      }
    }

    else if (v76 <= v77)
    {
      goto LABEL_77;
    }

    if (v32)
    {
      if (v32 > 7)
      {
        v78 = v32 & 0xFFFFFFFFFFFFFFF8;
        v79 = v396;
        v80 = v32 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v81 = vmulq_f32(*v79, _Q4);
          v79[-1] = vmulq_f32(v79[-1], _Q4);
          *v79 = v81;
          v79 += 2;
          v80 -= 8;
        }

        while (v80);
        if (v32 == v78)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v78 = 0;
      }

      v82 = v32 - v78;
      v83 = &v394[v78];
      do
      {
        *v83 = *v83 * 0.75;
        ++v83;
        --v82;
      }

      while (v82);
    }

LABEL_56:
    if (v29 != v28)
    {
      if (v30 <= 1)
      {
        v30 = 1;
      }

      v84 = (v44 + 8);
      v85 = (*(v27 + 4) + 8);
      v86 = (v28 + 8);
      do
      {
        *v86 = *v86 * 0.75;
        v86 += 20;
        *v85 = *v85 * 0.75;
        v85 += 20;
        *v84 = *v84 * 0.75;
        v84 += 20;
        --v30;
      }

      while (v30);
    }

    if (v16)
    {
      v87 = *(v27 + 12);
      v88 = *(v27 + 13) - v87;
      if (v88)
      {
        v89 = 0xCCCCCCCCCCCCCCCDLL * (v88 >> 4);
        v90 = v89 <= 1 ? 1 : 0xCCCCCCCCCCCCCCCDLL * (v88 >> 4);
        v91 = 0;
        if (v89 <= 1)
        {
          goto LABEL_67;
        }

        v138 = !is_mul_ok(v90 - 1, 0x50uLL);
        if (v87 + 8 + 80 * (v90 - 1) < v87 + 8)
        {
          goto LABEL_67;
        }

        if (v138)
        {
          goto LABEL_67;
        }

        v91 = v90 & 0xFFFFFFFFFFFFFFFELL;
        v139 = (v87 + 88);
        v140 = v90 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v141 = *v139 * 0.75;
          *(v139 - 20) = *(v139 - 20) * 0.75;
          *v139 = v141;
          v139 += 40;
          v140 -= 2;
        }

        while (v140);
        if (v89 != v91)
        {
LABEL_67:
          v92 = v90 - v91;
          v93 = (v87 + 80 * v91 + 8);
          do
          {
            *v93 = *v93 * 0.75;
            v93 += 20;
            --v92;
          }

          while (v92);
        }
      }

      v94 = *(v27 + 16);
      v95 = *(v27 + 17) - v94;
      if (v95)
      {
        v96 = 0xCCCCCCCCCCCCCCCDLL * (v95 >> 4);
        v97 = v96 <= 1 ? 1 : 0xCCCCCCCCCCCCCCCDLL * (v95 >> 4);
        v98 = 0;
        if (v96 <= 1)
        {
          goto LABEL_74;
        }

        v142 = !is_mul_ok(v97 - 1, 0x50uLL);
        if (v94 + 8 + 80 * (v97 - 1) < v94 + 8)
        {
          goto LABEL_74;
        }

        if (v142)
        {
          goto LABEL_74;
        }

        v98 = v97 & 0xFFFFFFFFFFFFFFFELL;
        v143 = (v94 + 88);
        v144 = v97 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v145 = *v143 * 0.75;
          *(v143 - 20) = *(v143 - 20) * 0.75;
          *v143 = v145;
          v143 += 40;
          v144 -= 2;
        }

        while (v144);
        if (v96 != v98)
        {
LABEL_74:
          v99 = v97 - v98;
          v100 = (v94 + 80 * v98 + 8);
          do
          {
            *v100 = *v100 * 0.75;
            v100 += 20;
            --v99;
          }

          while (v99);
        }
      }

      *(*(v27 + 20) + 8) = *(*(v27 + 20) + 8) * 0.75;
    }

LABEL_77:
    __n = v27;
    if (!v32)
    {
      v103 = 0;
      *&v367 = v394;
      v104 = v375;
LABEL_120:
      std::__stable_sort<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(v375, v104, &v367, v32, 0, v103);
      goto LABEL_121;
    }

    for (i = 0; i != v32; ++i)
    {
      if (*&v392[2 * i + 81] == 20)
      {
        if (*&v394[i] > 0.9 && *&v392[i + 135] >= 2.4)
        {
          *(v339 + 20) = *&v393[4 * i];
        }

        if ((v330 & (v341 > 0xB)) != 0)
        {
          v394[i] = 0;
        }
      }
    }

    if (v32 <= 3)
    {
      v102 = 0;
LABEL_105:
      v116 = v32 - v102;
      v117 = 4 * v102;
      v118 = &v394[v102];
      v119 = &v393[v117];
      do
      {
        if (*v119 < 3.0e-10)
        {
          *v118 = 0;
        }

        ++v118;
        ++v119;
        --v116;
      }

      while (v116);
      goto LABEL_98;
    }

    v102 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v105 = v393;
    v106 = &v395;
    v107 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v108 = *v105->f32;
      v109 = vdupq_n_s64(0x3DF49DA7E361CE4CuLL);
      v110 = vmovn_s64(vcgtq_f64(v109, vcvtq_f64_f32(*v105)));
      if (vuzp1_s16(v110, *v105).u8[0])
      {
        *(v106 - 2) = 0;
      }

      if (vuzp1_s16(v110, *&v108).i8[2])
      {
        *(v106 - 1) = 0;
      }

      v111 = vmovn_s64(vcgtq_f64(v109, vcvt_hight_f64_f32(v108)));
      if (vuzp1_s16(v111, v111).i32[1])
      {
        *v106 = 0;
        v106[1] = 0;
      }

      v106 += 4;
      v105 += 2;
      v107 -= 4;
    }

    while (v107);
    if (v32 != v102)
    {
      goto LABEL_105;
    }

LABEL_98:
    for (j = 0; j != v32; ++j)
    {
      if (*&v392[2 * j + 81] == 12 && *&v393[4 * j] < 4.65e-10)
      {
        v394[j] = 0;
      }
    }

    v113 = v375;
    v104 = &v375[v32];
    v114 = (v32 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v114 < 3)
    {
      v115 = 0;
      goto LABEL_113;
    }

    v120 = v114 + 1;
    v115 = (v114 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v121 = xmmword_2247A4650;
    v122 = &v376;
    v123 = v115;
    do
    {
      v122[-1] = v121;
      *v122 = vaddq_s64(v121, vdupq_n_s64(2uLL));
      v121 = vaddq_s64(v121, vdupq_n_s64(4uLL));
      v122 += 2;
      v123 -= 4;
    }

    while (v123);
    if (v120 != v115)
    {
      v113 = &v375[v115];
      do
      {
LABEL_113:
        *v113++ = v115++;
      }

      while (v113 != v104);
    }

    *&v367 = v394;
    if (v32 < 129)
    {
      v103 = 0;
      goto LABEL_120;
    }

    v124 = v32;
    while (1)
    {
      v125 = operator new(8 * v124, MEMORY[0x277D826F0]);
      if (v125)
      {
        break;
      }

      v103 = v124 >> 1;
      v233 = v124 > 1;
      v124 >>= 1;
      if (!v233)
      {
        v104 = &v375[v32];
        goto LABEL_120;
      }
    }

    v137 = v125;
    std::__stable_sort<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(v375, &v375[v32], &v367, v32, v125, v124);
    operator delete(v137);
LABEL_121:
    if (!v32)
    {
      v136 = 0;
      v129 = v390[0];
      goto LABEL_219;
    }

    for (k = 0; k != v32; ++k)
    {
      v127 = v375[k];
      v392[k] = v394[v127];
      v391[k] = *&v393[4 * v127];
      v390[k] = *&v392[v127 + 216];
      v389[k] = v392[v127 + 189];
      __dst[k] = *&v392[v127 + 162];
      v387[k] = *&v392[v127 + 135];
      v386[k] = *&v392[2 * v127 + 81];
      v385[k] = *&v392[2 * v127 + 27];
    }

    v128 = 0;
    v129 = v390[0];
    do
    {
      if (v390[v128] > v129)
      {
        v129 = v390[v128];
      }

      ++v128;
    }

    while (v32 != v128);
    bzero(v373, v32);
    v130 = 0;
    v131 = 0;
    do
    {
      if (v386[v130] == 20 && *&v392[v130] > 0.5 && v387[v130] >= 2.4)
      {
        v132 = v391;
        v133 = v392;
        v134 = v32;
        do
        {
          if (*v133 > 0.5 && vabds_f32(*v132, v391[v130]) < 6.67e-10)
          {
            ++v131;
          }

          ++v132;
          ++v133;
          --v134;
        }

        while (v134);
      }

      ++v130;
    }

    while (v130 != v32);
    if (v131 == 1)
    {
      if (v32 <= 3)
      {
        v135 = 0;
LABEL_284:
        v251 = v32 - v135;
        v252 = &v373[v135];
        v253 = &v386[v135];
        do
        {
          v254 = *v253++;
          if (v254 == 20)
          {
            *v252 = 1;
          }

          ++v252;
          --v251;
        }

        while (v251);
        goto LABEL_202;
      }

      if (v32 >= 0x10)
      {
        v135 = v32 & 0xFFFFFFFFFFFFFFF0;
        v146 = v386;
        v147 = &v374;
        v148 = v32 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v149 = *v146;
          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vceqq_s64(*v146, vdupq_n_s64(0x14uLL))), *v146), *v146).u8[0])
          {
            *(v147 - 7) = 1;
          }

          v150 = vmovn_s64(vceqq_s64(v149, vdupq_n_s64(0x14uLL)));
          v151 = vuzp1_s16(v150, v150);
          if (vuzp1_s8(v151, v151).i8[1])
          {
            *(v147 - 6) = 1;
          }

          v152 = *(v146 + 1);
          if (vuzp1_s8(vuzp1_s16(*&v152, vmovn_s64(vceqq_s64(v152, vdupq_n_s64(0x14uLL)))), *&v152).i8[2])
          {
            *(v147 - 5) = 1;
          }

          v153 = vmovn_s64(vceqq_s64(v152, vdupq_n_s64(0x14uLL)));
          v154 = vuzp1_s16(v153, v153);
          if (vuzp1_s8(v154, v154).i8[3])
          {
            *(v147 - 4) = 1;
          }

          v155 = *(v146 + 2);
          if (vuzp1_s8(*&v155, vuzp1_s16(vmovn_s64(vceqq_s64(v155, vdupq_n_s64(0x14uLL))), *&v155)).i32[1])
          {
            *(v147 - 3) = 1;
          }

          v156 = vmovn_s64(vceqq_s64(v155, vdupq_n_s64(0x14uLL)));
          v157 = vuzp1_s16(v156, v156);
          if (vuzp1_s8(v157, v157).i8[5])
          {
            *(v147 - 2) = 1;
          }

          v158 = *(v146 + 3);
          if (vuzp1_s8(*&v158, vuzp1_s16(*&v158, vmovn_s64(vceqq_s64(v158, vdupq_n_s64(0x14uLL))))).i8[6])
          {
            *(v147 - 1) = 1;
          }

          v159 = vmovn_s64(vceqq_s64(v158, vdupq_n_s64(0x14uLL)));
          v160 = vuzp1_s16(v159, v159);
          if (vuzp1_s8(v160, v160).i8[7])
          {
            *v147 = 1;
          }

          v161 = *(v146 + 4);
          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vceqq_s64(v161, vdupq_n_s64(0x14uLL))), *v161.i8), *v161.i8).u8[0])
          {
            *(v147 + 1) = 1;
          }

          v162 = vmovn_s64(vceqq_s64(v161, vdupq_n_s64(0x14uLL)));
          v163 = vuzp1_s16(v162, v162);
          if (vuzp1_s8(v163, v163).i8[1])
          {
            *(v147 + 2) = 1;
          }

          v165 = *(v146 + 6);
          v164 = *(v146 + 7);
          if (vuzp1_s8(vuzp1_s16(*&v164, vmovn_s64(vceqq_s64(*(v146 + 80), vdupq_n_s64(0x14uLL)))), *&v164).i8[2])
          {
            *(v147 + 3) = 1;
            *(v147 + 4) = 1;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(vmovn_s64(vceqq_s64(v165, vdupq_n_s64(0x14uLL))), *&v164)).i32[1])
          {
            *(v147 + 5) = 1;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(vmovn_s64(vceqq_s64(v165, vdupq_n_s64(0x14uLL))), *&v164)).i8[5])
          {
            *(v147 + 6) = 1;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(*&v164, vmovn_s64(vceqq_s64(v164, vdupq_n_s64(0x14uLL))))).i8[6])
          {
            *(v147 + 7) = 1;
          }

          v166 = vmovn_s64(vceqq_s64(v164, vdupq_n_s64(0x14uLL)));
          v167 = vuzp1_s16(v166, v166);
          if (vuzp1_s8(v167, v167).i8[7])
          {
            *(v147 + 8) = 1;
          }

          v146 += 16;
          v147 += 4;
          v148 -= 16;
        }

        while (v148);
        if (v32 == v135)
        {
          goto LABEL_202;
        }

        if ((v32 & 0xC) == 0)
        {
          goto LABEL_284;
        }
      }

      else
      {
        v135 = 0;
      }

      v168 = v135;
      v135 = v32 & 0xFFFFFFFFFFFFFFFCLL;
      v169 = v168 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
      v170 = &v386[v168];
      v171 = &v373[v168 + 3];
      do
      {
        v172 = *v170->i8;
        if (vuzp1_s16(vmovn_s64(vceqq_s64(*v170->i8, vdupq_n_s64(0x14uLL))), *v170).u8[0])
        {
          *(v171 - 3) = 1;
        }

        v173 = vmovn_s64(vceqq_s64(v172, vdupq_n_s64(0x14uLL)));
        if (vuzp1_s16(v173, v173).i8[2])
        {
          *(v171 - 2) = 1;
        }

        v174 = *v170[2].i8;
        if (vuzp1_s16(*&v174, vmovn_s64(vceqq_s64(v174, vdupq_n_s64(0x14uLL)))).i32[1])
        {
          *(v171 - 1) = 1;
        }

        v175 = vmovn_s64(vceqq_s64(v174, vdupq_n_s64(0x14uLL)));
        if (vuzp1_s16(v175, v175).i8[6])
        {
          *v171 = 1;
        }

        v170 += 4;
        v171 += 4;
        v169 += 4;
      }

      while (v169);
      if (v32 == v135)
      {
        goto LABEL_202;
      }

      goto LABEL_284;
    }

LABEL_202:
    if (v16)
    {
      v136 = 0;
      v176 = v385;
      v177 = v387;
      v178 = __dst;
      v179 = v389;
      v180 = v390;
      v181 = v392;
      v182 = v373;
      v183 = v386;
      v184 = v391;
      do
      {
        v186 = *v183++;
        v185 = v186;
        v187 = v186 == 20 && *v177 < 2.4;
        v188 = *v184;
        if (*v184 != 0.0 && !v187 && (*v182 & 1) == 0)
        {
          __src[v136] = *v181;
          v383[v136] = v188;
          v382[v136] = *v180;
          v381[v136] = *v179;
          v380[v136] = *v178;
          v379[v136] = *v177;
          v378[v136] = v185;
          v377[v136++] = *v176;
        }

        ++v176;
        ++v177;
        ++v178;
        ++v179;
        ++v180;
        ++v181;
        ++v182;
        ++v184;
        --v32;
      }

      while (v32);
    }

    else
    {
      v136 = 0;
      v189 = v385;
      v190 = v386;
      v191 = v387;
      v192 = __dst;
      v193 = v389;
      v194 = v390;
      v195 = v392;
      v196 = v391;
      do
      {
        v197 = *v196;
        if (*v196 != 0.0 && v197 >= 3.8e-10)
        {
          __src[v136] = *v195;
          v383[v136] = v197;
          v382[v136] = *v194;
          v381[v136] = *v193;
          v380[v136] = *v192;
          v379[v136] = *v191;
          v378[v136] = *v190;
          v377[v136++] = *v189;
        }

        ++v189;
        ++v190;
        ++v191;
        ++v192;
        ++v193;
        ++v194;
        ++v195;
        ++v196;
        --v32;
      }

      while (v32);
    }

    if (v136)
    {
      memcpy(v392, __src, 4 * v136);
      memcpy(v391, v383, 4 * v136);
      memcpy(v390, v382, 4 * v136);
      memcpy(v389, v381, 4 * v136);
      memcpy(__dst, v380, 4 * v136);
      memcpy(v387, v379, 4 * v136);
      memcpy(v386, v378, 8 * v136);
      memcpy(v385, v377, 8 * v136);
    }

LABEL_219:
    v198 = 0;
    v199 = v136;
    do
    {
      if (v199)
      {
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = v391[0];
        v205 = *(v18 + 4396);
        do
        {
          if (vabds_f32(v204, v391[v201]) < v205)
          {
            *(&v367 + v203++) = v201;
            if (*&v392[v201] > 0.55)
            {
              *(&v362 + v202++) = v201;
            }
          }

          ++v201;
        }

        while (v199 != v201);
        if (v202)
        {
          memcpy(&v359, &v362, 8 * v202);
          for (m = 0; m != v202; ++m)
          {
            v207 = *(&v359 + m);
            v358.f32[m] = v391[v207];
            v357[m] = v387[v207];
            v356[m] = __dst[v207];
            v354[m] = v386[v207];
            v353[m] = *&v392[v207];
            v352[m] = *&v389[v207];
            v351[m] = v390[v207];
            v348[m] = v385[v207];
          }

          v347 = 0;
          v345 = 0u;
          v346 = 0u;
          *v344 = 0;
          v343 = 0.0;
          peridot::PeridotUserOutput::funsedTofByEmpiricalRMS(v18, &v358, v357, v353, v352, v356, v351, v354, v348, v202, &v345, (v342 + 216 * v341 + 72 * v198), (a10 + 108 * v341 + 36 * v198), &v344[1], &v343, v344);
          v208 = v339 + 88 * v198;
          v209 = v346;
          *(v208 + 44) = v345;
          *(v208 + 60) = v209;
          *(v208 + 76) = v347;
          *&v209 = v344[0];
          *v208 = v344[1];
          *(v208 + 4) = v209;
          *(v208 + 8) = v343;
          *(v208 + 12) = 0;
          v210 = *(v208 + 44);
          v211 = 0.0;
          v212 = 0.0;
          if (v210 > 0.0)
          {
            v213 = *(*__n + 80 * *(v342 + 216 * v341 + 72 * v198) + 12) * 6.0;
            v212 = fmaxf(v213, 0.0);
            v211 = v213 * v210;
          }

          v214 = *(v208 + 48);
          if (v214 > 0.0)
          {
            v215 = *(__n + 8) + 80 * *(v342 + 216 * v341 + 72 * v198 + 8);
            v216 = *(v215 + 12);
            if (v216 > v212)
            {
              v212 = *(v215 + 12);
            }

            v211 = v211 + (v216 * v214);
          }

          v217 = *(v208 + 52);
          if (v217 > 0.0)
          {
            v218 = *(__n + 4) + 80 * *(v342 + 216 * v341 + 72 * v198 + 16);
            v219 = *(v218 + 12);
            if (v219 > v212)
            {
              v212 = *(v218 + 12);
            }

            v211 = v211 + (v219 * v217);
          }

          v220 = *(v208 + 56);
          if (v220 > 0.0)
          {
            v221 = *(__n + 12) + 80 * *(v342 + 216 * v341 + 72 * v198 + 24);
            v222 = *(v221 + 12) * 0.0;
            if (v222 > v212)
            {
              v212 = *(v221 + 12) * 0.0;
            }

            v211 = v211 + (v222 * v220);
          }

          v223 = *(v208 + 60);
          if (v223 > 0.0)
          {
            v224 = *(__n + 12) + 80 * *(v342 + 216 * v341 + 72 * v198 + 32);
            v225 = *(v224 + 12);
            if (v225 > v212)
            {
              v212 = *(v224 + 12);
            }

            v211 = v211 + (v225 * v223);
          }

          v226 = *(v208 + 64);
          if (v226 > 0.0)
          {
            v227 = *(__n + 16) + 80 * *(v342 + 216 * v341 + 72 * v198 + 40);
            v228 = *(v227 + 12);
            if (v228 > v212)
            {
              v212 = *(v227 + 12);
            }

            v211 = v211 + (v228 * v226);
          }

          v229 = *(v208 + 68);
          if (v229 > 0.0)
          {
            v230 = *(__n + 16) + 80 * *(v342 + 216 * v341 + 72 * v198 + 48);
            v231 = *(v230 + 12) * 0.0;
            if (v231 > v212)
            {
              v212 = *(v230 + 12) * 0.0;
            }

            v211 = v211 + (v231 * v229);
          }

          v232 = *(v208 + 76);
          v233 = v212 >= 0.0 || *(v208 + 72) <= 0.0;
          if (!v233)
          {
            v212 = 0.0;
          }

          if (v232 > 0.0)
          {
            v234 = *(__n + 20) + 80 * *(v342 + 216 * v341 + 72 * v198 + 64);
            v235 = *(v234 + 12) * 4.0;
            if (v235 > v212)
            {
              v212 = *(v234 + 12) * 4.0;
            }

            v211 = v211 + (v235 * v232);
          }

          *(v208 + 16) = v211;
          *(v208 + 20) = v212;
          if (v203)
          {
            operator new();
          }

          v199 = 0;
          if (v136)
          {
            v236 = 0;
            v18 = v338;
            v27 = __n;
            do
            {
              __src[v199] = v392[v236];
              v383[v199] = v391[v236];
              v382[v199] = LODWORD(v390[v236]);
              v381[v199] = v389[v236];
              v380[v199] = LODWORD(__dst[v236]);
              v379[v199] = LODWORD(v387[v236]);
              v378[v199] = v386[v236];
              v377[v199++] = v385[v236++];
            }

            while (v236 != v136);
            if (v199)
            {
              memcpy(v392, __src, 4 * v199);
              memcpy(v391, v383, 4 * v199);
              memcpy(v390, v382, 4 * v199);
              memcpy(v389, v381, 4 * v199);
              memcpy(__dst, v380, 4 * v199);
              memcpy(v387, v379, 4 * v199);
              memcpy(v386, v378, 8 * v199);
              v27 = __n;
              memcpy(v385, v377, 8 * v199);
            }
          }

          else
          {
            v18 = v338;
            v27 = __n;
          }

          v136 = v199;
        }

        else
        {
          v27 = __n;
        }
      }

      else
      {
        v200 = v339 + 88 * v198;
        *(v200 + 76) = 0;
        *(v200 + 60) = 0u;
        *(v200 + 44) = 0u;
        *v200 = 0;
        *(v200 + 8) = 0;
      }

      ++v198;
    }

    while (v198 != 3);
    v16 = v332;
    if (v129 > 4.4 && *(v339 + 23) > 0.0)
    {
      v237 = *(v339 + 5);
      v238 = *(v339 + 27);
      v239 = v238 > v237;
      if (v238 > v237)
      {
        v237 = *(v339 + 27);
      }

      if (*(v339 + 49) > v237)
      {
        v239 = 2;
      }

      if (v239)
      {
        v240 = (v339 + 88 * v239);
        v241 = v240[3];
        v369 = v240[2];
        v370 = v241;
        v371 = v240[4];
        v242 = *(v240 + 21);
        LODWORD(v372) = *(v240 + 20);
        v243 = v240[1];
        v367 = *v240;
        v368 = v243;
        v244 = v342 + 216 * v341 + 72 * v239;
        v245 = *v244;
        v246 = *(v244 + 16);
        v247 = *(v244 + 32);
        v248 = *(v244 + 48);
        v366 = *(v244 + 64);
        v365 = v248;
        v364 = v247;
        v362 = v245;
        v363 = v246;
        v249 = a10 + 108 * v341 + 36 * v239;
        v350 = *(v249 + 32);
        v250 = *(v249 + 16);
        *v348 = *v249;
        v349 = v250;
      }

      else
      {
        v242 = 0;
      }

      for (n = 0; n != 3; ++n)
      {
        if (n != v239)
        {
          v256 = v339 + 22 * n;
          if (v256[1] > 0.0)
          {
            if (v256[11] <= 0.0)
            {
              v259 = 0;
              v258 = &v359;
              v257 = v354;
            }

            else
            {
              *&v359 = 1;
              v354[0] = *(v342 + 216 * v341 + 72 * n);
              v258 = (&v359 + 8);
              v257 = v355;
              v259 = 1;
            }

            if (v256[12] > 0.0)
            {
              *v258 = 2;
              *v257 = *(v342 + 216 * v341 + 72 * n + 8);
              ++v259;
            }

            if (v256[13] > 0.0)
            {
              *(&v359 + v259) = 3;
              v354[v259++] = *(v342 + 216 * v341 + 72 * n + 16);
            }

            if (v256[14] > 0.0)
            {
              *(&v359 + v259) = 11;
              v354[v259++] = *(v342 + 216 * v341 + 72 * n + 24);
            }

            if (v256[15] > 0.0)
            {
              *(&v359 + v259) = 12;
              v354[v259++] = *(v342 + 216 * v341 + 72 * n + 32);
            }

            if (v256[16] > 0.0)
            {
              *(&v359 + v259) = 14;
              v354[v259++] = *(v342 + 216 * v341 + 72 * n + 40);
            }

            if (v256[17] > 0.0)
            {
              *(&v359 + v259) = 15;
              v354[v259++] = *(v342 + 216 * v341 + 72 * n + 48);
            }

            if (v256[18] > 0.0)
            {
              *(&v359 + v259) = 16;
              v354[v259++] = *(v342 + 216 * v341 + 72 * n + 56);
            }

            if (v256[19] > 0.0)
            {
              *(&v359 + v259) = 20;
              v354[v259++] = *(v342 + 216 * v341 + 72 * n + 64);
LABEL_313:
              v260 = v354;
              v261 = &v359;
LABEL_318:
              v266 = *v261++;
              v265 = v266;
              if (v266 > 11)
              {
                if ((v265 - 14) >= 2)
                {
                  if (v265 != 12)
                  {
                    goto LABEL_317;
                  }

                  v264 = *(v27 + 12);
                }

                else
                {
                  v264 = *(v27 + 16);
                }
              }

              else
              {
                if (v265 == 1)
                {
                  v262 = *v260;
                  v263 = *v27;
                  goto LABEL_315;
                }

                if (v265 != 2)
                {
                  if (v265 == 3)
                  {
                    v262 = *v260;
                    v263 = *(v27 + 4);
                    goto LABEL_315;
                  }

LABEL_317:
                  ++v260;
                  if (!--v259)
                  {
                    continue;
                  }

                  goto LABEL_318;
                }

                v262 = *v260;
                v263 = *(v27 + 8);
LABEL_315:
                v264 = v263 + 80 * v262;
              }

              *(v264 + 8) = 0;
              goto LABEL_317;
            }

            if (v259)
            {
              goto LABEL_313;
            }
          }
        }
      }

      if (v239)
      {
        v267 = v368;
        *v339 = v367;
        v339[1] = v267;
        v268 = v372;
        v269 = v371;
        v270 = v369;
        v339[3] = v370;
        v339[4] = v269;
        v339[2] = v270;
        *(v339 + 20) = v268;
        *(v339 + 21) = v242;
        v271 = v342 + 216 * v341;
        *(v271 + 64) = v366;
        v272 = v365;
        *(v271 + 32) = v364;
        *(v271 + 48) = v272;
        v273 = v363;
        *v271 = v362;
        *(v271 + 16) = v273;
        v274 = a10 + 108 * v341;
        *(v274 + 32) = v350;
        v275 = v349;
        *v274 = *v348;
        *(v274 + 16) = v275;
      }

      *(v339 + 43) |= 0x8000u;
    }

    v339[11] = 0u;
    *(v339 + 32) = 0;
    v339[14] = 0u;
    v339[15] = 0u;
    v339[12] = 0u;
    v339[13] = 0u;
    v276 = (v342 + 216 * v341);
    *(v276 + 26) = 0;
    v276[11] = 0u;
    v276[12] = 0u;
    v276[9] = 0u;
    v276[10] = 0u;
    v277 = (a10 + 108 * v341);
    *(v277 + 26) = 0;
    *(v277 + 88) = 0u;
    *(v277 + 72) = 0u;
    if (*(v339 + 1) >= 0.999 && *(v339 + 23) >= 0.999)
    {
      v278 = (v339 + 88);
      if (*(v339 + 22) < *v339)
      {
        v279 = v339[1];
        v362 = *v339;
        v280 = v362;
        v363 = v279;
        LODWORD(v364) = *(v339 + 8);
        v281 = *(v339 + 104);
        v359 = *v278;
        v282 = v359;
        v360 = v281;
        v361 = *(v339 + 30);
        v283 = *(v339 + 21);
        v284 = v339[3];
        v369 = v339[2];
        v370 = v284;
        v372 = *(v339 + 10);
        v285 = *(v339 + 136);
        v339[2] = *(v339 + 120);
        v339[3] = v285;
        v286 = *(v339 + 42);
        *(v339 + 42) = v372;
        v287 = v370;
        *(v339 + 120) = v369;
        *(v339 + 136) = v287;
        *(v339 + 8) = v361;
        *(v339 + 30) = v364;
        v288 = *(v339 + 43);
        v371 = v339[4];
        v289 = v339[1];
        v367 = v280;
        v368 = v289;
        v339[4] = *(v339 + 152);
        v290 = *(v339 + 104);
        *v339 = v282;
        v339[1] = v290;
        v291 = v368;
        *v278 = v367;
        *(v339 + 104) = v291;
        *(v339 + 152) = v371;
        v292 = v360;
        *v339 = v359;
        v339[1] = v292;
        v293 = v363;
        *v278 = v362;
        *(v339 + 104) = v293;
        *(v339 + 20) = v286;
        *(v339 + 21) = v288;
        *(v339 + 43) = v283;
        v294 = v276[3];
        v369 = v276[2];
        v370 = v294;
        *&v371 = *(v276 + 8);
        v295 = *v276;
        v368 = v276[1];
        v367 = v295;
        v296 = *(v276 + 88);
        v297 = *(v276 + 120);
        v276[2] = *(v276 + 104);
        v276[3] = v297;
        *(v276 + 8) = *(v276 + 17);
        *v276 = *(v276 + 72);
        v276[1] = v296;
        v298 = v368;
        *(v276 + 72) = v367;
        v299 = v369;
        v300 = v370;
        *(v276 + 17) = v371;
        *(v276 + 120) = v300;
        *(v276 + 104) = v299;
        *(v276 + 88) = v298;
        v301 = *(v277 + 8);
        v303 = *v277;
        v302 = v277[1];
        v304 = *(v277 + 52);
        *v277 = *(v277 + 36);
        v277[1] = v304;
        *(v277 + 8) = *(v277 + 17);
        *(v277 + 36) = v303;
        *(v277 + 52) = v302;
        *(v277 + 17) = v301;
      }
    }

    v305 = fmaxf(v27[6], v27[22]);
    *(v339 + 7) = v305;
    *(v339 + 10) = v129;
    *(v339 + 29) = v305;
    *(v339 + 32) = v129;
    *(v339 + 51) = v305;
    *(v339 + 54) = v129;
    v306 = *v27;
    v307 = *(v27 + 4);
    v308 = v332 == 2 && *(*(v27 + 16) + 36) > 90.0;
    _Q4 = v331;
    v309 = fmaxf(fmaxf(*(*v27 + 36), *(v307 + 36)), *(*(v27 + 8) + 36));
    v310 = v309 > 90.0;
    if (v309 > 90.0 || v308)
    {
      *(v339 + 21) |= 0x1000u;
    }

    if (v76 > v77)
    {
      *(v339 + 21) |= 0x40000u;
    }

    v312 = *(v339 + 11);
    v313 = *(v339 + 13);
    v314 = *(v339 + 19);
    if ((v312 > 0.1) | (2 * (v313 > 0.1)) | (4 * (*(v339 + 12) > 0.1)) | (8 * (*(v339 + 15) > 0.1)) | (16 * (*(v339 + 16) > 0.1)))
    {
      *(v339 + 21) = *(v339 + 21) & 0xFFFFFFC1 | (2 * ((v312 > 0.1) | (2 * (v313 > 0.1)) & 0x1F | (4 * (*(v339 + 12) > 0.1)) & 0x1F | (8 * (*(v339 + 15) > 0.1)) & 0x1F | (16 * (*(v339 + 16) > 0.1)) & 0x1F));
    }

    if (v314 > 0.1)
    {
      *(v339 + 21) |= 0x80u;
    }

    if (v312 > 0.1 && ((*(v306 + 60) >> 19) & 7) != 0)
    {
      *(v339 + 21) = *(v339 + 21) & 0xFFC7FFFF | (((*(v306 + 60) >> 19) & 7) << 19);
    }

    if (v313 > 0.1 && (*(v307 + 63) & 7) != 0)
    {
      *(v339 + 21) = *(v339 + 21) & 0xF8FFFFFF | ((*(v307 + 63) & 7) << 24);
    }

    if (v332 != 2)
    {
      if (!v310)
      {
        goto LABEL_360;
      }

LABEL_359:
      *(v339 + 43) |= 0x1000u;
      goto LABEL_360;
    }

    if (v310 || *(*(v27 + 16) + 36) > 90.0)
    {
      goto LABEL_359;
    }

LABEL_360:
    if (v76 > v77)
    {
      *(v339 + 43) |= 0x40000u;
    }

    v315 = *(v339 + 33);
    v316 = *(v339 + 35);
    v317 = *(v339 + 41);
    if ((v315 > 0.1) | (2 * (v316 > 0.1)) | (4 * (*(v339 + 34) > 0.1)) | (8 * (*(v339 + 37) > 0.1)) | (16 * (*(v339 + 38) > 0.1)))
    {
      *(v339 + 43) = *(v339 + 43) & 0xFFFFFFC1 | (2 * ((v315 > 0.1) | (2 * (v316 > 0.1)) & 0x1F | (4 * (*(v339 + 34) > 0.1)) & 0x1F | (8 * (*(v339 + 37) > 0.1)) & 0x1F | (16 * (*(v339 + 38) > 0.1)) & 0x1F));
    }

    if (v317 > 0.1)
    {
      *(v339 + 43) |= 0x80u;
    }

    if (v315 > 0.1)
    {
      v318 = (*(v306 + 140) >> 19) & 7;
      if (v318)
      {
        *(v339 + 43) = *(v339 + 43) & 0xFFC7FFFF | ((v318 & 7) << 19);
      }
    }

    if (v316 > 0.1)
    {
      v319 = *(v307 + 143) & 7;
      if (v319)
      {
        *(v339 + 43) = *(v339 + 43) & 0xF8FFFFFF | ((v319 & 7) << 24);
      }
    }

    v320 = vabds_f32(*v339, *(v339 + 44));
    v321 = *(v18 + 4396);
    if (vabds_f32(*v339, *(v339 + 22)) >= v321)
    {
      if (v320 >= v321)
      {
        goto LABEL_381;
      }

      v322 = 0;
      v323 = &v367;
      goto LABEL_377;
    }

    *&v367 = 1;
    if (v320 < v321)
    {
      v323 = &v362;
      v322 = 1;
LABEL_377:
      *v323 = 2;
      v324 = v322 + 1;
      v325 = v367;
      goto LABEL_379;
    }

    v325 = 1;
    v324 = 1;
LABEL_379:
    v326 = v339 + 88 * v325;
    *(v326 + 76) = 0;
    *(v326 + 60) = 0u;
    *(v326 + 44) = 0u;
    *(v326 + 8) = 0;
    *(v326 + 16) = 0;
    *v326 = 0;
    *(v326 + 24) = 0;
    if (v324 != 1)
    {
      v327 = v339 + 88 * v362;
      *(v327 + 44) = 0uLL;
      *(v327 + 60) = 0uLL;
      *(v327 + 76) = 0;
      *(v327 + 8) = 0;
      *(v327 + 16) = 0;
      *v327 = 0;
      *(v327 + 24) = 0;
    }

LABEL_381:
    if (vabds_f32(*(v339 + 22), *(v339 + 44)) < v321)
    {
      *(v339 + 63) = 0;
      *(v339 + 236) = 0u;
      *(v339 + 220) = 0u;
      *(v339 + 23) = 0;
      *(v339 + 24) = 0;
      *(v339 + 22) = 0;
      *(v339 + 50) = 0;
    }

    v19 = v341 + 1;
  }

  while (v341 != 13);
  if (v332)
  {
    if ((*(v337[16] + 61) & 0x20) != 0)
    {
      *(v18 + 84) |= 0x2000u;
      *(v18 + 172) |= 0x2000u;
      *(v18 + 260) |= 0x2000u;
    }

    if ((*(v337[40] + 61) & 0x20) != 0)
    {
      *(v18 + 392) |= 0x2000u;
      *(v18 + 480) |= 0x2000u;
      *(v18 + 568) |= 0x2000u;
    }

    if ((*(v337[64] + 61) & 0x20) != 0)
    {
      *(v18 + 700) |= 0x2000u;
      *(v18 + 788) |= 0x2000u;
      *(v18 + 876) |= 0x2000u;
    }

    if ((*(v337[88] + 61) & 0x20) != 0)
    {
      *(v18 + 1008) |= 0x2000u;
      *(v18 + 1096) |= 0x2000u;
      *(v18 + 1184) |= 0x2000u;
    }

    if ((*(v337[112] + 61) & 0x20) != 0)
    {
      *(v18 + 1316) |= 0x2000u;
      *(v18 + 1404) |= 0x2000u;
      *(v18 + 1492) |= 0x2000u;
    }

    if ((*(v337[136] + 61) & 0x20) != 0)
    {
      *(v18 + 1624) |= 0x2000u;
      *(v18 + 1712) |= 0x2000u;
      *(v18 + 1800) |= 0x2000u;
    }

    if ((*(v337[160] + 61) & 0x20) != 0)
    {
      *(v18 + 1932) |= 0x2000u;
      *(v18 + 2020) |= 0x2000u;
      *(v18 + 2108) |= 0x2000u;
    }

    if ((*(v337[184] + 61) & 0x20) != 0)
    {
      *(v18 + 2240) |= 0x2000u;
      *(v18 + 2328) |= 0x2000u;
      *(v18 + 2416) |= 0x2000u;
    }

    if ((*(v337[208] + 61) & 0x20) != 0)
    {
      *(v18 + 2548) |= 0x2000u;
      *(v18 + 2636) |= 0x2000u;
      *(v18 + 2724) |= 0x2000u;
    }

    if ((*(v337[232] + 61) & 0x20) != 0)
    {
      *(v18 + 2856) |= 0x2000u;
      *(v18 + 2944) |= 0x2000u;
      *(v18 + 3032) |= 0x2000u;
    }

    if ((*(v337[256] + 61) & 0x20) != 0)
    {
      *(v18 + 3164) |= 0x2000u;
      *(v18 + 3252) |= 0x2000u;
      *(v18 + 3340) |= 0x2000u;
    }

    if ((*(v337[280] + 61) & 0x20) != 0)
    {
      *(v18 + 3472) |= 0x2000u;
      *(v18 + 3560) |= 0x2000u;
      *(v18 + 3648) |= 0x2000u;
    }

    if ((*(v337[304] + 61) & 0x20) != 0)
    {
      *(v18 + 3780) |= 0x2000u;
      *(v18 + 3868) |= 0x2000u;
      *(v18 + 3956) |= 0x2000u;
    }

    if ((*(v337[328] + 61) & 0x20) != 0)
    {
      *(v18 + 4088) |= 0x2000u;
      *(v18 + 4176) |= 0x2000u;
      *(v18 + 4264) |= 0x2000u;
    }
  }

  return 0;
}

void sub_2246C3A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *__p)
{
  operator delete(v45);
  v47 = __p;
  if (__p)
  {
    do
    {
      v48 = *v47;
      operator delete(v47);
      v47 = v48;
    }

    while (v48);
  }

  if (!a43)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a43);
  _Unwind_Resume(a1);
}

char *std::__stable_sort<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4, char *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  if (a4 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *result;
    v8 = *(*a3 + 4 * v6);
    v9 = *(*a3 + 4 * *result);
    if (fabsf(v8 + -1.0) >= 0.000001)
    {
      if (v8 <= v9)
      {
        return result;
      }
    }

    else if (fabsf(v9 + -1.0) < 0.000001 || v8 <= v9)
    {
      return result;
    }

    *result = v6;
    *(a2 - 1) = v7;
    return result;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v11 = result + 8;
    if (result + 8 == a2)
    {
      return result;
    }

    v12 = 0;
    v13 = *a3;
    v14 = result;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = *v16;
      v17 = *(v16 + 1);
      v19 = *(v13 + 4 * v17);
      v20 = *(v13 + 4 * *v16);
      if (fabsf(v19 + -1.0) >= 0.000001)
      {
        if (v19 <= v20)
        {
          goto LABEL_16;
        }

        *(v16 + 1) = v18;
        v26 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = &result[v26];
            v27 = *&result[v26 - 8];
            if (v19 <= *(v13 + 4 * v27))
            {
              break;
            }

            *v15 = v27;
            v26 -= 8;
            if (!v26)
            {
LABEL_14:
              v15 = result;
              break;
            }
          }
        }
      }

      else
      {
        if (fabsf(v20 + -1.0) < 0.000001 || v19 <= v20)
        {
          goto LABEL_16;
        }

        *(v16 + 1) = v18;
        v22 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = &result[v22];
            v23 = *&result[v22 - 8];
            v24 = *(v13 + 4 * v23);
            if (fabsf(v24 + -1.0) < 0.000001 || v19 <= v24)
            {
              break;
            }

            *v15 = v23;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_14;
            }
          }
        }
      }

      *v15 = v17;
LABEL_16:
      v11 = v14 + 8;
      v12 += 8;
      if (v14 + 8 == a2)
      {
        return result;
      }
    }
  }

  v29 = a4 >> 1;
  v30 = &result[8 * (a4 >> 1)];
  v31 = a4 - (a4 >> 1);
  v32 = result;
  if (a4 > a6)
  {
    std::__stable_sort<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(result, v30, a3, a4 >> 1, a5, a6);
    std::__stable_sort<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(v30, a2, a3, v31, a5, a6);

    return std::__inplace_merge<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(v32, v30, a2, a3, v29, v31, a5, a6);
  }

  v38 = a5;
  std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(result, v30, a3, a4 >> 1, a5);
  v39 = &v38[v29];
  result = std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(v30, a2, a3, v31, v39);
  v40 = &v38[a4];
  v41 = *a3;
  v42 = -1;
  v43 = v32;
  v44 = v39;
  do
  {
    if (v44 == v40)
    {
      if (v38 == v39)
      {
        return result;
      }

      v48 = v39 - v38 - 8;
      if (v48 >= 0x38 && (&v32[v42 + 1] - v38) >= 0x20)
      {
        v49 = v43 + 2;
        v50 = (v48 >> 3) + 1;
        v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
        v43 = (v43 + v51);
        v52 = (v38 + 2);
        v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v54 = *v52;
          *(v49 - 1) = *(v52 - 1);
          *v49 = v54;
          v52 += 2;
          v49 += 2;
          v53 -= 4;
        }

        while (v53);
        if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
        {
          return result;
        }

        v38 = (v38 + v51);
      }

      do
      {
        v55 = *v38++;
        *v43++ = v55;
      }

      while (v38 != v39);
      return result;
    }

    v45 = *(v41 + 4 * *v44);
    v46 = *(v41 + 4 * *v38);
    if (fabsf(v45 + -1.0) >= 0.000001)
    {
      if (v45 > v46)
      {
        goto LABEL_41;
      }
    }

    else if (fabsf(v46 + -1.0) >= 0.000001 && v45 > v46)
    {
LABEL_41:
      *v43 = *v44++;
      goto LABEL_42;
    }

    *v43 = *v38++;
LABEL_42:
    ++v43;
    ++v42;
  }

  while (v38 != v39);
  if (v44 == v40)
  {
    return result;
  }

  v56 = v40 - v44 - 8;
  if (v56 <= 0x47 || (&v32[v42] - v44 + 8) < 0x20)
  {
    goto LABEL_69;
  }

  v57 = v43 + 2;
  v58 = (v56 >> 3) + 1;
  v59 = 8 * (v58 & 0x3FFFFFFFFFFFFFFCLL);
  v43 = (v43 + v59);
  v60 = (v44 + 2);
  v61 = v58 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v62 = *v60;
    *(v57 - 1) = *(v60 - 1);
    *v57 = v62;
    v60 += 2;
    v57 += 2;
    v61 -= 4;
  }

  while (v61);
  if (v58 != (v58 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v44 = (v44 + v59);
    do
    {
LABEL_69:
      v63 = *v44++;
      *v43++ = v63;
    }

    while (v44 != v40);
  }

  return result;
}

char *peridot::PeridotUserOutput::funsedTofByEmpiricalRMS(char *this, float32x4_t *a2, float *a3, const float *a4, const float *a5, const float *a6, const float *a7, unint64_t *a8, const unint64_t *a9, unint64_t a10, float *a11, unint64_t *a12, float *a13, float *a14, float *a15, float *a16)
{
  v16 = a16;
  v17 = a10;
  v119 = *MEMORY[0x277D85DE8];
  if (!a10)
  {
    goto LABEL_19;
  }

  v18 = a9;
  if (a10 <= 7)
  {
    v19 = 0;
    v20 = 0.0;
LABEL_7:
    v26 = a10 - v19;
    v27 = &a2->f32[v19];
    do
    {
      v28 = *v27++;
      v20 = v28 + v20;
      --v26;
    }

    while (v26);
    goto LABEL_9;
  }

  v19 = a10 & 0xFFFFFFFFFFFFFFF8;
  v21 = a2 + 1;
  v22 = 0uLL;
  v23 = a10 & 0xFFFFFFFFFFFFFFF8;
  v24 = 0uLL;
  do
  {
    v22 = vaddq_f32(v21[-1], v22);
    v24 = vaddq_f32(*v21, v24);
    v21 += 2;
    v23 -= 8;
  }

  while (v23);
  v25 = vaddq_f32(v24, v22);
  v20 = vaddv_f32(*&vpaddq_f32(v25, v25));
  if (v19 != a10)
  {
    goto LABEL_7;
  }

LABEL_9:
  if ((v20 / a10) >= 0.0000000015)
  {
    v100 = a14;
    v101 = a15;
    v32 = this;
    v102 = a16;
    v33 = 4 * a10;
    v34 = a3;
    v35 = a7;
    v36 = a6;
    v37 = a5;
    v38 = a4;
    v39 = a8;
    memcpy(__dst, a2, 4 * a10);
    memcpy(v117, v34, 4 * a10);
    memcpy(v116, v39, 8 * a10);
    memcpy(v115, v38, 4 * a10);
    memcpy(v114, v37, 4 * a10);
    memcpy(v113, v36, 4 * a10);
    memcpy(v112, v35, 4 * a10);
    memcpy(v111, a9, 8 * a10);
    goto LABEL_17;
  }

  v29 = 0;
  do
  {
    v31 = *a8++;
    v30 = v31;
    if (v31 >= 0xB)
    {
      __dst[v29] = a2->i32[0];
      v117[v29] = *a3;
      v116[v29] = v30;
      v115[v29] = *a4;
      v114[v29] = *a5;
      v113[v29] = *a6;
      v112[v29] = *a7;
      v111[v29++] = *v18;
    }

    ++v18;
    ++a7;
    ++a6;
    ++a5;
    ++a4;
    ++a3;
    a2 = (a2 + 4);
    --v17;
  }

  while (v17);
  if (!v29)
  {
LABEL_19:
    *a14 = 0.0;
    *a15 = 0.0;
    *a16 = 0.0;
    if (*a14 <= 0.0)
    {
      return this;
    }

    v41 = v115[0];
    goto LABEL_52;
  }

  v100 = a14;
  v101 = a15;
  v32 = this;
  v102 = a16;
  v33 = 4 * v29;
  v17 = v29;
LABEL_17:
  memcpy(v109, __dst, v33);
  if (v17 <= 7)
  {
    v40 = 0;
LABEL_24:
    v46 = v17 - v40;
    v47 = &v109[v40];
    do
    {
      v48 = *v47 * 149852322.0;
      *v47++ = v48;
      --v46;
    }

    while (v46);
    goto LABEL_26;
  }

  v40 = v17 & 0xFFFFFFFFFFFFFFF8;
  v42 = &v110;
  v43 = vdupq_n_s64(0x41A1DD2145000000uLL);
  v44 = v17 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v45 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v42), v43)), vmulq_f64(vcvt_hight_f64_f32(*v42->f32), v43));
    *v42[-2].f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v42[-2]), v43)), vmulq_f64(vcvt_hight_f64_f32(*v42[-2].f32), v43));
    *v42->f32 = v45;
    v42 += 4;
    v44 -= 8;
  }

  while (v44);
  if (v17 != v40)
  {
    goto LABEL_24;
  }

LABEL_26:
  v49 = 0;
  memset(v108, 0, sizeof(v108));
  v50 = &v107;
  v107 = 0u;
  do
  {
    peridot::PeridotUserOutput::fusionRMSWeights(v32, v116[v49], v117[v49], v114[v49], v113[v49], v109[v49], v112[v49], v50);
    ++v49;
    ++v50;
  }

  while (v17 != v49);
  v51 = 0uLL;
  memset(v106, 0, sizeof(v106));
  v105 = 0u;
  v103 = 0u;
  memset(v104, 0, sizeof(v104));
  __asm { FMOV            V1.4S, #1.0 }

  if (v17 > 7)
  {
    v57 = v17 & 0xFFFFFFFFFFFFFFF8;
    v61 = v108;
    v62 = v17 & 0xFFFFFFFFFFFFFFF8;
    v63 = 0uLL;
    v60 = v100;
    v59 = v101;
    do
    {
      v51 = vaddq_f32(vdivq_f32(_Q1, vmulq_f32(v61[-1], v61[-1])), v51);
      v63 = vaddq_f32(vdivq_f32(_Q1, vmulq_f32(*v61, *v61)), v63);
      v61 += 2;
      v62 -= 8;
    }

    while (v62);
    v64 = vaddq_f32(v63, v51);
    v58 = vaddv_f32(*&vpaddq_f32(v64, v64));
    if (v17 == v57)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v57 = 0;
    v58 = 0.0;
    v60 = v100;
    v59 = v101;
  }

  v65 = v17 - v57;
  v66 = &v108[-1] + v57;
  do
  {
    v67 = *v66++;
    v58 = (1.0 / (v67 * v67)) + v58;
    --v65;
  }

  while (v65);
  if (v17 < 8)
  {
    v57 = 0;
LABEL_41:
    v74 = v17 - v57;
    v75 = 4 * v57;
    v76 = &v104[-1] + v57;
    v77 = (&v106[-1] + v75);
    v78 = (&v108[-1] + v75);
    do
    {
      v79 = *v78++;
      *v77++ = 1.0 / ((v79 * v79) * v58);
      *v76++ = 1.0 / (v79 * v79);
      --v74;
    }

    while (v74);
    goto LABEL_43;
  }

  v57 = v17 & 0xFFFFFFFFFFFFFFF8;
LABEL_38:
  v68 = v104;
  v69 = v106;
  v70 = v108;
  v71 = v57;
  do
  {
    v72 = vmulq_f32(v70[-1], v70[-1]);
    v73 = vmulq_f32(*v70, *v70);
    v69[-1] = vdivq_f32(_Q1, vmulq_n_f32(v72, v58));
    *v69 = vdivq_f32(_Q1, vmulq_n_f32(v73, v58));
    v68[-1] = vdivq_f32(_Q1, v72);
    *v68 = vdivq_f32(_Q1, v73);
    v68 += 2;
    v69 += 2;
    v70 += 2;
    v71 -= 8;
  }

  while (v71);
  if (v17 != v57)
  {
    goto LABEL_41;
  }

LABEL_43:
  v80 = &v103;
  v81 = v111;
  v82 = &v105;
  v83 = v116;
  v84 = v17;
  do
  {
    v85 = *v83++;
    v86 = qword_2247A6D48[v85 - 1];
    LODWORD(v85) = *v82;
    v82 = (v82 + 4);
    LODWORD(a11[v86 - 1]) = v85;
    v87 = *v81++;
    this = v87;
    a12[v86 - 1] = v87;
    LODWORD(v87) = *v80;
    v80 = (v80 + 4);
    LODWORD(a13[v86 - 1]) = v87;
    --v84;
  }

  while (v84);
  *v60 = 0.0;
  *v59 = 0.0;
  v88 = v114;
  v89 = &v105;
  v90 = __dst;
  v91 = v17;
  do
  {
    v92 = *v90++;
    v93 = v92;
    v94 = *v89++;
    v95 = v94;
    *v60 = *v60 + (v94 * v93);
    v96 = *v88++;
    *v59 = *v59 + (v96 * v95);
    --v91;
  }

  while (v91);
  v16 = v102;
  *v102 = 0.0;
  if (*v60 > 0.0)
  {
    v97 = v115;
    v41 = v115[0];
    do
    {
      v98 = *v97++;
      v99 = v98;
      if (v98 > v41)
      {
        v41 = v99;
      }

      --v17;
    }

    while (v17);
LABEL_52:
    *v16 = v41;
  }

  return this;
}

char *peridot::PeridotUserOutput::fusionRMSWeights(char *this, uint64_t a2, float a3, float a4, float a5, float a6, float a7, float *a8)
{
  if (a4 > 200.0)
  {
    a4 = 200.0;
  }

  if (a3 <= 100.0)
  {
    v11 = a3;
  }

  else
  {
    v11 = 100.0;
  }

  if (a2 <= 11)
  {
    switch(a2)
    {
      case 1:
        v19 = this;
        v20 = log(fmax((a4 * 0.005), 0.0) + 0.01);
        v21 = log(fmax((*(v19 + 4320) * a5), 0.0) + 0.01);
        v22 = log(fmax(a6, 0.01));
        v17 = 0;
        v16 = v22 * -0.549499989 + 2.53259993 + v20 * -4.3210001 + v21 * 2.05990005;
        v54 = v16;
        break;
      case 2:
        v29 = log(fmax((a4 * 0.005), 0.0) + 0.01);
        v30 = log(fmax((v11 * 0.01), 0.0) + 0.01);
        v16 = log(fmax(a5, 0.0) + 0.01) * 0.7949 + 2.03110003 + v30 * -6.38390017 + v29 * 1.54900002;
        v54 = v16;
        v17 = 1;
        break;
      case 3:
        v16 = log(fmax(a5, 0.0) + 0.01) * 1.05630004 + 5.99139977;
        v54 = v16;
        v17 = 2;
        break;
      default:
        return this;
    }

    goto LABEL_23;
  }

  if (a2 <= 14)
  {
    if (a2 == 12)
    {
      v23 = log(fmax((a4 * 0.005), 0.0) + 0.01);
      v24 = log(fmax((v11 * 0.01), 0.0) + 0.01);
      v16 = log(fmax(a5, 0.0) + 0.01) * 0.0983000025 + 1.60290003 + v24 * -1.53540003 + v23 * 0.0417999998;
      v54 = v16;
      v17 = 3;
    }

    else
    {
      if (a2 != 14)
      {
        return this;
      }

      v13 = log(fmax((a4 * 0.005), 0.0) + 0.01);
      v14 = log(fmax((a7 * 0.01), 0.0) + 0.01);
      v15 = log(fmax((v11 * 0.01), 0.0) + 0.01);
      v16 = log(fmax(a6, 0.01)) * -0.450800002 + 3.74679995 + v15 * 1.11870003 + v13 * -1.34060001 + v14 * 0.710300028;
      v54 = v16;
      v17 = 4;
    }

    goto LABEL_23;
  }

  if (a2 == 15)
  {
    v26 = log(fmax((a4 * 0.005), 0.0) + 0.01);
    v27 = log(fmax((a7 * 0.01), 0.0) + 0.01);
    v28 = log(fmax((v11 * 0.01), 0.0) + 0.01);
    v16 = log(fmax(a6, 0.01)) * -9.14649963 + -13.5471001 + v28 * 0.333200008 + v26 * 0.564599991 + v27 * 0.164399996;
    v54 = v16;
    v17 = 5;
LABEL_23:
    v31 = (&peridot::z_func_temporal + 88 * v17);
    if (v16 < *v31)
    {
      v16 = *v31 + 0.00001;
      v54 = v16;
    }

    v32 = v31[21];
    if (v16 > v32)
    {
      v33 = v32 + -0.00001;
      v54 = v33;
    }

    v50 = &peridot::z_func_temporal + 88 * v17;
    v51 = 0x1600000001;
    v52 = 0;
    v53 = 88;
    v48 = 88;
    v49 = &unk_28380A0A8;
    v46 = 0x1600000001;
    v47 = 0;
    v44 = &unk_28380A0A8;
    v45 = &peridot::y_func_temporal + 88 * v17;
    v40 = &v54;
    v41 = 0x100000001;
    v42 = 0;
    v43 = 4;
    v38 = 4;
    v39 = &unk_28380A0A8;
    v36 = 0x100000001;
    v37 = 0;
    v34 = &unk_28380A0A8;
    v35 = a8;
    Interp1<float,LinearInterpolator<float>>(&v49, &v44, &v54, 1, &v34);
    goto LABEL_28;
  }

  if (a2 != 20)
  {
    return this;
  }

  v54 = v11;
  if (v11 < 2.0)
  {
    v18 = 1073741866;
LABEL_43:
    v54 = *&v18;
    goto LABEL_44;
  }

  if (v11 > 5.5)
  {
    v18 = 1085276139;
    goto LABEL_43;
  }

LABEL_44:
  v51 = 0xF00000001;
  v52 = 0;
  v53 = 60;
  v49 = &unk_28380A0A8;
  v50 = &peridot::z_func_spatial;
  v46 = 0xF00000001;
  v47 = 0;
  v48 = 60;
  v44 = &unk_28380A0A8;
  v45 = &peridot::y_func_spatial;
  v40 = &v54;
  v41 = 0x100000001;
  v42 = 0;
  v43 = 4;
  v38 = 4;
  v39 = &unk_28380A0A8;
  v36 = 0x100000001;
  v37 = 0;
  v34 = &unk_28380A0A8;
  v35 = a8;
  Interp1<float,LinearInterpolator<float>>(&v49, &v44, &v54, 1, &v34);
LABEL_28:
  v34 = &unk_283809D60;
  if (v35 && v37 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v39 = &unk_283809D60;
  if (v40 && v42 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v44 = &unk_283809D60;
  if (v45 && v47 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v49 = &unk_283809D60;
  this = v50;
  if (v50)
  {
    if (v52 == 1)
    {
      return MEMORY[0x22AA53170]();
    }
  }

  return this;
}

void sub_2246C4CE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  MatrixNxPts<1u,float>::~MatrixNxPts(va);
  MatrixNxPts<1u,float>::~MatrixNxPts(va1);
  MatrixNxPts<1u,float>::~MatrixNxPts(va2);
  MatrixNxPts<1u,float>::~MatrixNxPts(va3);
  _Unwind_Resume(a1);
}

float *Interp1<float,LinearInterpolator<float>>(uint64_t a1, uint64_t a2, float *a3, int a4, uint64_t a5)
{
  v5 = a3;
  v7 = *(a1 + 20);
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  result = *(a5 + 8);
  if (*(a5 + 32) < 4 * a4)
  {
    if (result)
    {
      if (*(a5 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a5 + 16) = 1;
  *(a5 + 20) = a4;
  if (a4 >= 1)
  {
    v11 = a4;
    v12 = *v8;
    v13 = v8[v7 - 1];
    v14 = *(a1 + 20);
    v15 = v14 - 1;
    v16 = v9 + 4 * v7;
    v17 = v7 - 1;
    LODWORD(v18) = v7 - 2;
    if (v14 - 1 >= 100)
    {
      for (i = 0; i != a4; result[i++] = v29)
      {
        v30 = a3[i];
        v29 = 0.0;
        if (v30 <= v13 && v30 >= v12)
        {
          v27 = 0;
          v32 = v15;
          while (1)
          {
            v33 = (v27 + v32) >> 1;
            v34 = *(*(a1 + 8) + 4 * v33);
            if (v34 == v30)
            {
              break;
            }

            if (v34 > v30)
            {
              v32 = v33 - 1;
            }

            else
            {
              v27 = v33 + 1;
            }

            if (v27 > v32)
            {
              if (v30 >= v13)
              {
                goto LABEL_46;
              }

              goto LABEL_27;
            }
          }

          v27 = (v27 + v32) >> 1;
          if (v30 >= v13)
          {
LABEL_46:
            v29 = *(v16 - 4);
            continue;
          }

LABEL_27:
          if (v32 < v27)
          {
            v27 = v32;
          }

          v28 = v27 & ~(v27 >> 31);
          if (v17 <= v28)
          {
            v28 = v7 - 2;
          }

          v29 = (((v30 - v8[v28]) * (*(*(a2 + 8) + 4 * (v28 + 1)) - *(*(a2 + 8) + 4 * v28))) / (v8[v28 + 1] - v8[v28])) + *(*(a2 + 8) + 4 * v28);
        }
      }
    }

    else if (v14 < 1)
    {
      if (v7 == 1)
      {
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      do
      {
        v36 = *v5;
        v35 = 0.0;
        if (*v5 <= v13 && v36 >= v12)
        {
          if (v36 < v13)
          {
            v35 = (((v36 - v8[v18]) * (*(*(a2 + 8) + 4 * (v18 + 1)) - *(*(a2 + 8) + 4 * v18))) / (v8[(v18 + 1)] - v8[v18])) + *(*(a2 + 8) + 4 * v18);
          }

          else
          {
            v35 = *(v16 - 4);
          }
        }

        *result++ = v35;
        ++v5;
        --v11;
      }

      while (v11);
    }

    else
    {
      for (j = 0; j != a4; result[j++] = v22)
      {
        v23 = a3[j];
        v22 = 0.0;
        if (v23 <= v13 && v23 >= v12)
        {
          v25 = 0;
          while (*(*(a1 + 8) + 4 * v25) <= v23)
          {
            if (v14 == ++v25)
            {
              LODWORD(v25) = 0;
              break;
            }
          }

          if (v23 < v13)
          {
            v20 = v25 != 0;
            v21 = v25 - 1;
            if (!v20)
            {
              v21 = 0;
            }

            if (v17 <= v21)
            {
              v21 = v7 - 2;
            }

            v22 = (((v23 - v8[v21]) * (*(*(a2 + 8) + 4 * (v21 + 1)) - *(*(a2 + 8) + 4 * v21))) / (v8[v21 + 1] - v8[v21])) + *(*(a2 + 8) + 4 * v21);
          }

          else
          {
            v22 = *(v16 - 4);
          }
        }
      }
    }
  }

  return result;
}

char *std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(char *result, char *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  switch(a4)
  {
    case 0:
      return result;
    case 1:
LABEL_9:
      *a5 = *result;
      return result;
    case 2:
      v7 = *(a2 - 1);
      v5 = a2 - 8;
      v6 = v7;
      v8 = *(*a3 + 4 * v7);
      v9 = *(*a3 + 4 * *result);
      if (fabsf(v8 + -1.0) < 0.000001 && fabsf(v9 + -1.0) < 0.000001 || v8 <= v9)
      {
        v6 = *result;
        result = v5;
      }

      *a5++ = v6;
      goto LABEL_9;
  }

  if (a4 <= 8)
  {
    if (result == a2)
    {
      return result;
    }

    v10 = *a3;
    v11 = *result;
    result += 8;
    *a5 = v11;
    if (result == a2)
    {
      return result;
    }

    v12 = 0;
    v13 = a5;
    v14 = a5;
LABEL_18:
    v17 = *v14++;
    v16 = v17;
    v18 = *(v10 + 4 * *result);
    v19 = *(v10 + 4 * v17);
    if (fabsf(v18 + -1.0) >= 0.000001)
    {
      if (v18 <= v19)
      {
        goto LABEL_34;
      }
    }

    else if (fabsf(v19 + -1.0) < 0.000001 || v18 <= v19)
    {
LABEL_34:
      *v14 = *result;
      goto LABEL_17;
    }

    v13[1] = v16;
    v15 = a5;
    if (v13 == a5)
    {
      goto LABEL_16;
    }

    v21 = v12;
    while (1)
    {
      v23 = *(a5 + v21 - 8);
      v24 = *(v10 + 4 * *result);
      v25 = *(v10 + 4 * v23);
      if (fabsf(v24 + -1.0) < 0.000001)
      {
        if (fabsf(v25 + -1.0) < 0.000001 || v24 <= v25)
        {
          v15 = (a5 + v21);
LABEL_16:
          *v15 = *result;
LABEL_17:
          result += 8;
          v12 += 8;
          v13 = v14;
          if (result == a2)
          {
            return result;
          }

          goto LABEL_18;
        }
      }

      else if (v24 <= v25)
      {
        v15 = v13;
        goto LABEL_16;
      }

      --v13;
      *(a5 + v21) = v23;
      v21 -= 8;
      if (!v21)
      {
        v15 = a5;
        goto LABEL_16;
      }
    }
  }

  v26 = a4 >> 1;
  v27 = a4 >> 1;
  v28 = &result[v27 * 8];
  v29 = result;
  v33 = a5;
  (std::__stable_sort<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>)();
  result = std::__stable_sort<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(v28, a2, a3, a4 - v26, &v33[v27], a4 - v26);
  v34 = *a3;
  v35 = -1;
  v36 = v33;
  v37 = v29;
  v38 = v28;
  do
  {
    if (v38 == a2)
    {
      if (v37 == v28)
      {
        return result;
      }

      v42 = &v29[8 * v26] - v37 - 8;
      if (v42 >= 0x38 && (&v33[v35 + 1] - v37) >= 0x20)
      {
        v43 = v36 + 2;
        v44 = (v42 >> 3) + 1;
        v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
        v36 = (v36 + v45);
        v46 = (v37 + 2);
        v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v48 = *v46;
          *(v43 - 1) = *(v46 - 1);
          *v43 = v48;
          v46 += 2;
          v43 += 2;
          v47 -= 4;
        }

        while (v47);
        if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
        {
          return result;
        }

        v37 = (v37 + v45);
      }

      do
      {
        v49 = *v37++;
        *v36++ = v49;
      }

      while (v37 != v28);
      return result;
    }

    v39 = *(v34 + 4 * *v38);
    v40 = *(v34 + 4 * *v37);
    if (fabsf(v39 + -1.0) >= 0.000001)
    {
      if (v39 > v40)
      {
        goto LABEL_37;
      }
    }

    else if (fabsf(v40 + -1.0) >= 0.000001 && v39 > v40)
    {
LABEL_37:
      *v36 = *v38++;
      goto LABEL_38;
    }

    *v36 = *v37++;
LABEL_38:
    ++v36;
    ++v35;
  }

  while (v37 != v28);
  if (v38 == a2)
  {
    return result;
  }

  v50 = a2 - v38 - 8;
  if (v50 < 0x48 || (&v33[v35] - v38 + 8) < 0x20)
  {
    goto LABEL_65;
  }

  v51 = v36 + 2;
  v52 = (v50 >> 3) + 1;
  v53 = 8 * (v52 & 0x3FFFFFFFFFFFFFFCLL);
  v36 = (v36 + v53);
  v54 = (v38 + 2);
  v55 = v52 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v56 = *v54;
    *(v51 - 1) = *(v54 - 1);
    *v51 = v56;
    v54 += 2;
    v51 += 2;
    v55 -= 4;
  }

  while (v55);
  if (v52 != (v52 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v38 = (v38 + v53);
    do
    {
LABEL_65:
      v57 = *v38++;
      *v36++ = v57;
    }

    while (v38 != a2);
  }

  return result;
}

uint64_t *std::__inplace_merge<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v11 = *a4;
    v12 = *(*a4 + 4 * *a2);
    if (fabsf(v12 + -1.0) >= 0.000001)
    {
      while (1)
      {
        v13 = *result;
        if (v12 > *(v11 + 4 * *result))
        {
          break;
        }

        ++result;
        if (!--a5)
        {
          return result;
        }
      }
    }

    else
    {
      while (1)
      {
        v13 = *result;
        v14 = *(v11 + 4 * *result);
        v15 = fabsf(v14 + -1.0) < 0.000001 || v12 <= v14;
        if (!v15)
        {
          break;
        }

        ++result;
        if (!--a5)
        {
          return result;
        }
      }
    }

    if (a5 >= a6)
    {
      if (a5 == 1)
      {
        *result = *a2;
        *a2 = v13;
        return result;
      }

      v30 = a5 / 2;
      v20 = &result[a5 / 2];
      if (a3 == a2)
      {
        v41 = a3;
        v17 = a2;
      }

      else
      {
        v31 = *(v11 + 4 * *v20);
        v32 = a3 - a2;
        v17 = a2;
        if (fabsf(v31 + -1.0) < 0.000001)
        {
          do
          {
            v37 = v32 >> 1;
            v38 = &v17[v32 >> 1];
            v40 = *v38;
            v39 = v38 + 1;
            v32 += ~(v32 >> 1);
            if (fabsf(*(v11 + 4 * v40) + -1.0) >= 0.000001 && *(v11 + 4 * v40) > v31)
            {
              v17 = v39;
            }

            else
            {
              v32 = v37;
            }
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v32 >> 1;
            v34 = &v17[v32 >> 1];
            v36 = *v34;
            v35 = v34 + 1;
            v32 += ~(v32 >> 1);
            if (*(v11 + 4 * v36) > v31)
            {
              v17 = v35;
            }

            else
            {
              v32 = v33;
            }
          }

          while (v32);
        }

        v41 = a2;
      }

      v16 = v17 - v41;
    }

    else
    {
      v16 = a6 / 2;
      v17 = &a2[a6 / 2];
      if (a2 == result)
      {
        v29 = a2;
        v20 = result;
      }

      else
      {
        v18 = a2 - result;
        v19 = *(v11 + 4 * *v17);
        v20 = result;
        if (fabsf(v19 + -1.0) >= 0.000001)
        {
          do
          {
            v25 = v18 >> 1;
            v26 = &v20[v18 >> 1];
            v28 = *v26;
            v27 = v26 + 1;
            v18 += ~(v18 >> 1);
            if (v19 > *(v11 + 4 * v28))
            {
              v18 = v25;
            }

            else
            {
              v20 = v27;
            }
          }

          while (v18);
        }

        else
        {
          do
          {
            v21 = v18 >> 1;
            v22 = &v20[v18 >> 1];
            v24 = *v22;
            v23 = v22 + 1;
            v18 += ~(v18 >> 1);
            if (fabsf(*(v11 + 4 * v24) + -1.0) >= 0.000001 && v19 > *(v11 + 4 * v24))
            {
              v18 = v21;
            }

            else
            {
              v20 = v23;
            }
          }

          while (v18);
        }

        v29 = result;
      }

      v30 = v20 - v29;
    }

    v42 = v17;
    if (v20 != a2)
    {
      v42 = v20;
      if (a2 != v17)
      {
        v43 = v20 + 1;
        if (v20 + 1 == a2)
        {
          v119 = *v20;
          v121 = a4;
          v50 = v17 - a2;
          v123 = result;
          v51 = a3;
          v52 = a7;
          v53 = a6;
          v54 = a5;
          memmove(v20, v20 + 1, v17 - a2);
          a5 = v54;
          a4 = v121;
          result = v123;
          a6 = v53;
          a7 = v52;
          a3 = v51;
          v42 = (v20 + v50);
          *v42 = v119;
        }

        else
        {
          v44 = a2 + 1;
          if (a2 + 1 == v17)
          {
            v55 = *(v17 - 1);
            v42 = v20 + 1;
            if (v17 - 1 != v20)
            {
              v122 = a4;
              v124 = result;
              v120 = a3;
              v56 = a7;
              v57 = a6;
              v58 = a5;
              memmove(v20 + 1, v20, (v17 - 1) - v20);
              a5 = v58;
              a4 = v122;
              result = v124;
              a6 = v57;
              a7 = v56;
              a3 = v120;
            }

            *v20 = v55;
          }

          else
          {
            v45 = a2 - v20;
            v46 = a2 - v20;
            v47 = v17 - a2;
            if (v46 == v47)
            {
              do
              {
                v48 = *(v43 - 1);
                *(v43 - 1) = *(v44 - 1);
                *(v44 - 1) = v48;
                if (v43 == a2)
                {
                  break;
                }

                ++v43;
              }

              while (v44++ != v17);
              v42 = a2;
            }

            else
            {
              v59 = a2 - v20;
              do
              {
                v60 = v59;
                v59 = v47;
                v47 = v60 % v47;
              }

              while (v47);
              v61 = &v20[v59];
              do
              {
                v63 = *--v61;
                v62 = v63;
                v64 = (v61 + v45);
                v65 = v61;
                do
                {
                  v66 = v65;
                  v65 = v64;
                  *v66 = *v64;
                  v67 = v17 - v64;
                  v68 = __OFSUB__(v46, v67);
                  v69 = v46 - v67;
                  v15 = (v69 < 0) ^ v68;
                  v64 = &v20[v69];
                  if (v15)
                  {
                    v64 = (v65 + v45);
                  }
                }

                while (v64 != v61);
                *v65 = v62;
              }

              while (v61 != v20);
              v42 = (v20 + v17 - a2);
            }
          }
        }
      }
    }

    v70 = a5 - v30;
    v71 = a6 - v16;
    if (v30 + v16 >= v70 + v71)
    {
      v76 = result;
      std::__inplace_merge<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(v42, v17, a3, a4);
      result = v76;
      a6 = v16;
      a5 = v30;
      a3 = v42;
      a2 = v20;
      if (!v16)
      {
        return result;
      }
    }

    else
    {
      v72 = v20;
      v73 = a3;
      v74 = v70;
      v75 = v71;
      std::__inplace_merge<std::_ClassicAlgPolicy,peridot::PeridotUserOutput::fusionOutput(peridot::PeridotDepth &,peridot::PeridotOpMode,unsigned char,BOOL,BOOL *,peridot::T0Output const&,unsigned long (&)[14][3][9],peridot::PeridotUserOutputInvRmsEst &)::$_0 &,unsigned long *>(result, v72, v42, a4);
      a5 = v74;
      a6 = v75;
      a3 = v73;
      result = v42;
      a2 = v17;
      if (!v75)
      {
        return result;
      }
    }
  }

  if (a5 <= a6)
  {
    if (result == a2)
    {
      return result;
    }

    v95 = a2 - result - 8;
    v96 = a7;
    v97 = result;
    if (v95 >= 0x18)
    {
      v96 = a7;
      v97 = result;
      if ((a7 - result) > 0x1F)
      {
        v98 = (v95 >> 3) + 1;
        v99 = v98 & 0x3FFFFFFFFFFFFFFCLL;
        v96 = &a7[v99 * 8];
        v100 = (result + 2);
        v101 = a7 + 16;
        v102 = v98 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v103 = *v100;
          *(v101 - 1) = *(v100 - 1);
          *v101 = v103;
          v100 += 2;
          v101 += 2;
          v102 -= 4;
        }

        while (v102);
        if (v98 == (v98 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_102;
        }

        v97 = &result[v99];
      }
    }

    do
    {
      v104 = *v97++;
      *v96 = v104;
      v96 += 8;
    }

    while (v97 != a2);
LABEL_102:
    v105 = *a4;
    while (1)
    {
      if (a2 == a3)
      {

        return memmove(result, a7, v96 - a7);
      }

      v106 = *(v105 + 4 * *a2);
      v107 = *(v105 + 4 * *a7);
      if (fabsf(v106 + -1.0) >= 0.000001)
      {
        if (v106 <= v107)
        {
          goto LABEL_114;
        }
      }

      else if (fabsf(v107 + -1.0) < 0.000001 || v106 <= v107)
      {
LABEL_114:
        *result = *a7;
        a7 += 8;
        goto LABEL_104;
      }

      *result = *a2++;
LABEL_104:
      ++result;
      if (a7 == v96)
      {
        return result;
      }
    }
  }

  if (a2 == a3)
  {
    return result;
  }

  v77 = a3 - a2 - 8;
  v78 = a7;
  v79 = a2;
  if (v77 >= 0x18)
  {
    v78 = a7;
    v79 = a2;
    if ((a7 - a2) > 0x1F)
    {
      v80 = (v77 >> 3) + 1;
      v81 = v80 & 0x3FFFFFFFFFFFFFFCLL;
      v78 = &a7[v81 * 8];
      v82 = (a2 + 2);
      v83 = a7 + 16;
      v84 = v80 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v85 = *v82;
        *(v83 - 1) = *(v82 - 1);
        *v83 = v85;
        v82 += 2;
        v83 += 2;
        v84 -= 4;
      }

      while (v84);
      if (v80 == (v80 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_82;
      }

      v79 = &a2[v81];
    }
  }

  do
  {
    v86 = *v79++;
    *v78 = v86;
    v78 += 8;
  }

  while (v79 != a3);
LABEL_82:
  v87 = 0;
  v88 = *a4;
  v89 = a3;
  while (a2 != result)
  {
    v91 = a2 - 1;
    v90 = *(a2 - 1);
    v92 = *(v88 + 4 * *(v78 - 1));
    v93 = *(v88 + 4 * v90);
    if (fabsf(v92 + -1.0) >= 0.000001)
    {
      if (v92 > v93)
      {
        goto LABEL_84;
      }
    }

    else if (fabsf(v93 + -1.0) >= 0.000001 && v92 > v93)
    {
      goto LABEL_84;
    }

    v90 = *(v78 - 1);
    v91 = a2;
    v78 -= 8;
LABEL_84:
    *--v89 = v90;
    ++v87;
    a2 = v91;
    if (v78 == a7)
    {
      return result;
    }
  }

  v109 = v78 - a7;
  if (v78 != a7)
  {
    v110 = v109 - 8;
    if ((v109 - 8) >= 0x48 && (v78 - a3 + 8 * v87) >= 0x20)
    {
      v114 = v89 - 2;
      v115 = (v110 >> 3) + 1;
      v111 = &v78[-8 * (v115 & 0x3FFFFFFFFFFFFFFCLL)];
      v116 = v78 - 16;
      v117 = v115 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v118 = *v116;
        *(v114 - 1) = *(v116 - 1);
        *v114 = v118;
        v114 -= 4;
        v116 -= 32;
        v117 -= 4;
      }

      while (v117);
      if (v115 != (v115 & 0x3FFFFFFFFFFFFFFCLL))
      {
        v89 -= v115 & 0x3FFFFFFFFFFFFFFCLL;
        goto LABEL_120;
      }
    }

    else
    {
      v111 = v78;
LABEL_120:
      v112 = v89 - 1;
      do
      {
        v113 = *(v111 - 1);
        v111 -= 8;
        *v112-- = v113;
      }

      while (v111 != a7);
    }
  }

  return result;
}