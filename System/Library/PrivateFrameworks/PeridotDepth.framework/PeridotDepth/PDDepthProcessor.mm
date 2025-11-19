@interface PDDepthProcessor
- (BOOL)_prepareForPeridotPreset:(int)a3;
- (BOOL)prepareDataPool;
- (BOOL)prepareForPeridotPreset:(int)a3 rawSensorDimensions:(CGSize)a4;
- (BOOL)setDataBufferPool:(__CVDataBufferPool *)a3;
- (PDDepthProcessor)initWithSystemCalibrationData:(id)a3;
- (id).cxx_construct;
- (id)generatePointCloudFromRawFrame:(id)a3;
- (id)generatePointCloudFromRawFrame:(id)a3 timestamp:(id *)a4;
- (id)generatePointCloudFromRawFrame:(id)a3 timestamp:(id *)a4 usingDataBuffer:(__CVBuffer *)a5;
- (id)getInternalState;
- (id)postProcessAllBanks:(id)a3;
- (id)rawFrameFromPointCloud:(id)a3;
- (void)dealloc;
- (void)reportSessionStatistics;
@end

@implementation PDDepthProcessor

- (id).cxx_construct
{
  *&self->_presetInfo.additionalDataHeader.magic = 0x1D2024C08;
  self->_presetInfo.additionalDataHeader.dataSizes[0] = 0;
  self->_presetInfo.additionalDataHeader.dataSizes[1] = 0;
  operator new();
}

- (id)postProcessAllBanks:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  LODWORD(v20) = 335676608;
  kdebug_trace();
  v5 = [objc_alloc(MEMORY[0x277CED0E8]) initByMergingPointClouds:{v4, v20, 0, 0, 0, 0}];
  if ([v4 count])
  {
    if (self->_spotClasificationEnabled)
    {
      v6 = [v4 objectAtIndex:0];
      v7 = [v6 additionalData];
      v8 = [v7 bytes];
      v9 = v8 && *v8 == -771601400 && v8[1] == 1;

      v11 = [v6 additionalData];
      v12 = [v11 bytes];

      if (v9 && *(v12 + 8))
      {
        bzero(v21, 0x700uLL);
        v13 = 0;
        for (i = 0; [v4 count] > i; ++i)
        {
          v15 = [v4 objectAtIndex:i];

          v16 = [v15 additionalData];
          v17 = [v16 bytes];

          v18 = self->_presetInfo.additionalDataHeader.dataSizes[0];
          memcpy(&v21[v13], (v17 + 24), v18);
          v13 += v18;
          v6 = v15;
        }

        peridot::PeridotNearRangeIndicator::run(self->_algo._impl.__ptr_ + 1760576, v5, v21);
      }
    }

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  kdebug_trace();

  return v10;
}

- (id)getInternalState
{
  v2 = [*self->_algo._impl.__ptr_ copySessionState];

  return v2;
}

- (void)reportSessionStatistics
{
  ptr = self->_algo._impl.__ptr_;
  if (*(ptr + 221982))
  {
    PeridotTelemetry::reportSessionStatistics((ptr + 1775856));
    v3 = *(ptr + 221982);
    *(ptr + 221982) = 0;
  }
}

- (id)generatePointCloudFromRawFrame:(id)a3 timestamp:(id *)a4 usingDataBuffer:(__CVBuffer *)a5
{
  v5 = (MEMORY[0x28223BE20])(self, a2, a3);
  v7 = v6;
  v9 = v8;
  v101 = v5;
  v147 = *MEMORY[0x277D85DE8];
  v11 = v10;
  v111 = 335676444;
  v112 = 0u;
  v113 = 0u;
  v97 = v11;
  kdebug_trace();
  DWORD1(v146[5]) = 0;
  HIDWORD(v146[10]) = 0;
  DWORD1(v146[16]) = 0;
  DWORD2(v146[24]) = 0;
  LODWORD(v146[30]) = 0;
  DWORD2(v146[35]) = 0;
  HIDWORD(v146[43]) = 0;
  DWORD1(v146[49]) = 0;
  HIDWORD(v146[54]) = 0;
  LODWORD(v146[63]) = 0;
  DWORD2(v146[68]) = 0;
  LODWORD(v146[74]) = 0;
  DWORD1(v146[82]) = 0;
  HIDWORD(v146[87]) = 0;
  DWORD1(v146[93]) = 0;
  DWORD2(v146[101]) = 0;
  LODWORD(v146[107]) = 0;
  DWORD2(v146[112]) = 0;
  HIDWORD(v146[120]) = 0;
  DWORD1(v146[126]) = 0;
  HIDWORD(v146[131]) = 0;
  LODWORD(v146[140]) = 0;
  DWORD2(v146[145]) = 0;
  LODWORD(v146[151]) = 0;
  DWORD1(v146[159]) = 0;
  HIDWORD(v146[164]) = 0;
  DWORD1(v146[170]) = 0;
  DWORD2(v146[178]) = 0;
  LODWORD(v146[184]) = 0;
  DWORD2(v146[189]) = 0;
  HIDWORD(v146[197]) = 0;
  DWORD1(v146[203]) = 0;
  HIDWORD(v146[208]) = 0;
  LODWORD(v146[217]) = 0;
  DWORD2(v146[222]) = 0;
  LODWORD(v146[228]) = 0;
  DWORD1(v146[236]) = 0;
  HIDWORD(v146[241]) = 0;
  DWORD1(v146[247]) = 0;
  DWORD2(v146[255]) = 0;
  LODWORD(v146[261]) = 0;
  DWORD2(v146[266]) = 0;
  BYTE8(v146[269]) = -1;
  *(&v146[274] + 8) = xmmword_2247A4620;
  HIDWORD(v146[275]) = 16843009;
  LOBYTE(v146[276]) = 0;
  DWORD1(v146[276]) = 814313567;
  LODWORD(v146[277]) = 808933364;
  *(&v146[277] + 12) = xmmword_2247A4630;
  *(&v146[278] + 12) = 0x40E000003F400000;
  LODWORD(v146[280]) = 1065353216;
  WORD6(v146[280]) = 256;
  BYTE14(v146[280]) = 0;
  LODWORD(v146[281]) = 1082130432;
  HIDWORD(v146[286]) = 0;
  DWORD1(v146[292]) = 0;
  HIDWORD(v146[297]) = 0;
  LODWORD(v146[306]) = 0;
  DWORD2(v146[311]) = 0;
  LODWORD(v146[317]) = 0;
  DWORD1(v146[325]) = 0;
  HIDWORD(v146[330]) = 0;
  DWORD1(v146[336]) = 0;
  DWORD2(v146[344]) = 0;
  LODWORD(v146[350]) = 0;
  DWORD2(v146[355]) = 0;
  HIDWORD(v146[363]) = 0;
  DWORD1(v146[369]) = 0;
  HIDWORD(v146[374]) = 0;
  LODWORD(v146[383]) = 0;
  DWORD2(v146[388]) = 0;
  LODWORD(v146[394]) = 0;
  DWORD1(v146[402]) = 0;
  HIDWORD(v146[407]) = 0;
  DWORD1(v146[413]) = 0;
  DWORD2(v146[421]) = 0;
  LODWORD(v146[427]) = 0;
  DWORD2(v146[432]) = 0;
  HIDWORD(v146[440]) = 0;
  DWORD1(v146[446]) = 0;
  HIDWORD(v146[451]) = 0;
  LODWORD(v146[460]) = 0;
  DWORD2(v146[465]) = 0;
  LODWORD(v146[471]) = 0;
  DWORD1(v146[479]) = 0;
  HIDWORD(v146[484]) = 0;
  DWORD1(v146[490]) = 0;
  DWORD2(v146[498]) = 0;
  LODWORD(v146[504]) = 0;
  DWORD2(v146[509]) = 0;
  HIDWORD(v146[517]) = 0;
  DWORD1(v146[523]) = 0;
  HIDWORD(v146[528]) = 0;
  LODWORD(v146[537]) = 0;
  DWORD2(v146[542]) = 0;
  LODWORD(v146[548]) = 0;
  LOBYTE(v146[551]) = -1;
  v146[556] = xmmword_2247A4620;
  DWORD1(v146[557]) = 16843009;
  BYTE8(v146[557]) = 0;
  HIDWORD(v146[557]) = 814313567;
  DWORD2(v146[558]) = 808933364;
  *(&v146[559] + 4) = xmmword_2247A4630;
  *(&v146[560] + 4) = 0x40E000003F400000;
  DWORD2(v146[561]) = 1065353216;
  WORD2(v146[562]) = 256;
  BYTE6(v146[562]) = 0;
  DWORD2(v146[562]) = 1082130432;
  DWORD1(v146[568]) = 0;
  HIDWORD(v146[573]) = 0;
  DWORD1(v146[579]) = 0;
  DWORD2(v146[587]) = 0;
  LODWORD(v146[593]) = 0;
  DWORD2(v146[598]) = 0;
  HIDWORD(v146[606]) = 0;
  DWORD1(v146[612]) = 0;
  HIDWORD(v146[617]) = 0;
  LODWORD(v146[626]) = 0;
  DWORD2(v146[631]) = 0;
  LODWORD(v146[637]) = 0;
  DWORD1(v146[645]) = 0;
  HIDWORD(v146[650]) = 0;
  DWORD1(v146[656]) = 0;
  DWORD2(v146[664]) = 0;
  LODWORD(v146[670]) = 0;
  DWORD2(v146[675]) = 0;
  HIDWORD(v146[683]) = 0;
  DWORD1(v146[689]) = 0;
  HIDWORD(v146[694]) = 0;
  LODWORD(v146[703]) = 0;
  DWORD2(v146[708]) = 0;
  LODWORD(v146[714]) = 0;
  DWORD1(v146[722]) = 0;
  HIDWORD(v146[727]) = 0;
  DWORD1(v146[733]) = 0;
  DWORD2(v146[741]) = 0;
  LODWORD(v146[747]) = 0;
  DWORD2(v146[752]) = 0;
  HIDWORD(v146[760]) = 0;
  DWORD1(v146[766]) = 0;
  HIDWORD(v146[771]) = 0;
  LODWORD(v146[780]) = 0;
  DWORD2(v146[785]) = 0;
  LODWORD(v146[791]) = 0;
  DWORD1(v146[799]) = 0;
  HIDWORD(v146[804]) = 0;
  DWORD1(v146[810]) = 0;
  DWORD2(v146[818]) = 0;
  LODWORD(v146[824]) = 0;
  DWORD2(v146[829]) = 0;
  BYTE8(v146[832]) = -1;
  *(&v146[837] + 8) = xmmword_2247A4620;
  HIDWORD(v146[838]) = 16843009;
  LOBYTE(v146[839]) = 0;
  DWORD1(v146[839]) = 814313567;
  LODWORD(v146[840]) = 808933364;
  *(&v146[840] + 12) = xmmword_2247A4630;
  *(&v146[841] + 12) = 0x40E000003F400000;
  LODWORD(v146[843]) = 1065353216;
  WORD6(v146[843]) = 256;
  BYTE14(v146[843]) = 0;
  LODWORD(v146[844]) = 1082130432;
  HIDWORD(v146[849]) = 0;
  DWORD1(v146[855]) = 0;
  HIDWORD(v146[860]) = 0;
  LODWORD(v146[869]) = 0;
  DWORD2(v146[874]) = 0;
  LODWORD(v146[880]) = 0;
  DWORD1(v146[888]) = 0;
  HIDWORD(v146[893]) = 0;
  DWORD1(v146[899]) = 0;
  DWORD2(v146[907]) = 0;
  LODWORD(v146[913]) = 0;
  DWORD2(v146[918]) = 0;
  HIDWORD(v146[926]) = 0;
  DWORD1(v146[932]) = 0;
  HIDWORD(v146[937]) = 0;
  LODWORD(v146[946]) = 0;
  DWORD2(v146[951]) = 0;
  LODWORD(v146[957]) = 0;
  DWORD1(v146[965]) = 0;
  HIDWORD(v146[970]) = 0;
  DWORD1(v146[976]) = 0;
  DWORD2(v146[984]) = 0;
  LODWORD(v146[990]) = 0;
  DWORD2(v146[995]) = 0;
  HIDWORD(v146[1003]) = 0;
  DWORD1(v146[1009]) = 0;
  HIDWORD(v146[1014]) = 0;
  LODWORD(v146[1023]) = 0;
  DWORD2(v146[1028]) = 0;
  LODWORD(v146[1034]) = 0;
  DWORD1(v146[1042]) = 0;
  HIDWORD(v146[1047]) = 0;
  DWORD1(v146[1053]) = 0;
  DWORD2(v146[1061]) = 0;
  LODWORD(v146[1067]) = 0;
  DWORD2(v146[1072]) = 0;
  HIDWORD(v146[1080]) = 0;
  DWORD1(v146[1086]) = 0;
  HIDWORD(v146[1091]) = 0;
  LODWORD(v146[1100]) = 0;
  DWORD2(v146[1105]) = 0;
  LODWORD(v146[1111]) = 0;
  LOBYTE(v146[1114]) = -1;
  v146[1119] = xmmword_2247A4620;
  DWORD1(v146[1120]) = 16843009;
  BYTE8(v146[1120]) = 0;
  HIDWORD(v146[1120]) = 814313567;
  DWORD2(v146[1121]) = 808933364;
  *(&v146[1122] + 4) = xmmword_2247A4630;
  *(&v146[1123] + 4) = 0x40E000003F400000;
  DWORD2(v146[1124]) = 1065353216;
  WORD2(v146[1125]) = 256;
  BYTE6(v146[1125]) = 0;
  DWORD2(v146[1125]) = 1082130432;
  DWORD1(v146[1131]) = 0;
  HIDWORD(v146[1136]) = 0;
  DWORD1(v146[1142]) = 0;
  DWORD2(v146[1150]) = 0;
  LODWORD(v146[1156]) = 0;
  DWORD2(v146[1161]) = 0;
  HIDWORD(v146[1169]) = 0;
  DWORD1(v146[1175]) = 0;
  HIDWORD(v146[1180]) = 0;
  LODWORD(v146[1189]) = 0;
  DWORD2(v146[1194]) = 0;
  LODWORD(v146[1200]) = 0;
  DWORD1(v146[1208]) = 0;
  HIDWORD(v146[1213]) = 0;
  DWORD1(v146[1219]) = 0;
  DWORD2(v146[1227]) = 0;
  LODWORD(v146[1233]) = 0;
  DWORD2(v146[1238]) = 0;
  HIDWORD(v146[1246]) = 0;
  DWORD1(v146[1252]) = 0;
  HIDWORD(v146[1257]) = 0;
  LODWORD(v146[1266]) = 0;
  DWORD2(v146[1271]) = 0;
  LODWORD(v146[1277]) = 0;
  DWORD1(v146[1285]) = 0;
  HIDWORD(v146[1290]) = 0;
  DWORD1(v146[1296]) = 0;
  DWORD2(v146[1304]) = 0;
  LODWORD(v146[1310]) = 0;
  DWORD2(v146[1315]) = 0;
  HIDWORD(v146[1323]) = 0;
  DWORD1(v146[1329]) = 0;
  HIDWORD(v146[1334]) = 0;
  LODWORD(v146[1343]) = 0;
  DWORD2(v146[1348]) = 0;
  LODWORD(v146[1354]) = 0;
  DWORD1(v146[1362]) = 0;
  HIDWORD(v146[1367]) = 0;
  DWORD1(v146[1373]) = 0;
  DWORD2(v146[1381]) = 0;
  LODWORD(v146[1387]) = 0;
  DWORD2(v146[1392]) = 0;
  BYTE8(v146[1395]) = -1;
  *(&v146[1400] + 8) = xmmword_2247A4620;
  HIDWORD(v146[1401]) = 16843009;
  LOBYTE(v146[1402]) = 0;
  DWORD1(v146[1402]) = 814313567;
  LODWORD(v146[1403]) = 808933364;
  *(&v146[1403] + 12) = xmmword_2247A4630;
  *(&v146[1404] + 12) = 0x40E000003F400000;
  LODWORD(v146[1406]) = 1065353216;
  WORD6(v146[1406]) = 256;
  BYTE14(v146[1406]) = 0;
  LODWORD(v146[1407]) = 1082130432;
  HIDWORD(v146[1412]) = 0;
  DWORD1(v146[1418]) = 0;
  HIDWORD(v146[1423]) = 0;
  LODWORD(v146[1432]) = 0;
  DWORD2(v146[1437]) = 0;
  LODWORD(v146[1443]) = 0;
  DWORD1(v146[1451]) = 0;
  HIDWORD(v146[1456]) = 0;
  DWORD1(v146[1462]) = 0;
  DWORD2(v146[1470]) = 0;
  LODWORD(v146[1476]) = 0;
  DWORD2(v146[1481]) = 0;
  HIDWORD(v146[1489]) = 0;
  DWORD1(v146[1495]) = 0;
  HIDWORD(v146[1500]) = 0;
  LODWORD(v146[1509]) = 0;
  DWORD2(v146[1514]) = 0;
  LODWORD(v146[1520]) = 0;
  DWORD1(v146[1528]) = 0;
  HIDWORD(v146[1533]) = 0;
  DWORD1(v146[1539]) = 0;
  DWORD2(v146[1547]) = 0;
  LODWORD(v146[1553]) = 0;
  DWORD2(v146[1558]) = 0;
  HIDWORD(v146[1566]) = 0;
  DWORD1(v146[1572]) = 0;
  HIDWORD(v146[1577]) = 0;
  LODWORD(v146[1586]) = 0;
  DWORD2(v146[1591]) = 0;
  LODWORD(v146[1597]) = 0;
  DWORD1(v146[1605]) = 0;
  HIDWORD(v146[1610]) = 0;
  DWORD1(v146[1616]) = 0;
  DWORD2(v146[1624]) = 0;
  LODWORD(v146[1630]) = 0;
  DWORD2(v146[1635]) = 0;
  HIDWORD(v146[1643]) = 0;
  DWORD1(v146[1649]) = 0;
  HIDWORD(v146[1654]) = 0;
  LODWORD(v146[1663]) = 0;
  DWORD2(v146[1668]) = 0;
  LODWORD(v146[1674]) = 0;
  LOBYTE(v146[1677]) = -1;
  v146[1682] = xmmword_2247A4620;
  DWORD1(v146[1683]) = 16843009;
  BYTE8(v146[1683]) = 0;
  HIDWORD(v146[1683]) = 814313567;
  DWORD2(v146[1684]) = 808933364;
  *(&v146[1685] + 4) = xmmword_2247A4630;
  *(&v146[1686] + 4) = 0x40E000003F400000;
  DWORD2(v146[1687]) = 1065353216;
  WORD2(v146[1688]) = 256;
  BYTE6(v146[1688]) = 0;
  DWORD2(v146[1688]) = 1082130432;
  DWORD1(v146[1694]) = 0;
  HIDWORD(v146[1699]) = 0;
  DWORD1(v146[1705]) = 0;
  DWORD2(v146[1713]) = 0;
  LODWORD(v146[1719]) = 0;
  DWORD2(v146[1724]) = 0;
  HIDWORD(v146[1732]) = 0;
  DWORD1(v146[1738]) = 0;
  HIDWORD(v146[1743]) = 0;
  LODWORD(v146[1752]) = 0;
  DWORD2(v146[1757]) = 0;
  LODWORD(v146[1763]) = 0;
  DWORD1(v146[1771]) = 0;
  HIDWORD(v146[1776]) = 0;
  DWORD1(v146[1782]) = 0;
  DWORD2(v146[1790]) = 0;
  LODWORD(v146[1796]) = 0;
  DWORD2(v146[1801]) = 0;
  HIDWORD(v146[1809]) = 0;
  DWORD1(v146[1815]) = 0;
  HIDWORD(v146[1820]) = 0;
  LODWORD(v146[1829]) = 0;
  DWORD2(v146[1834]) = 0;
  LODWORD(v146[1840]) = 0;
  DWORD1(v146[1848]) = 0;
  HIDWORD(v146[1853]) = 0;
  DWORD1(v146[1859]) = 0;
  DWORD2(v146[1867]) = 0;
  LODWORD(v146[1873]) = 0;
  DWORD2(v146[1878]) = 0;
  HIDWORD(v146[1886]) = 0;
  DWORD1(v146[1892]) = 0;
  HIDWORD(v146[1897]) = 0;
  LODWORD(v146[1906]) = 0;
  DWORD2(v146[1911]) = 0;
  LODWORD(v146[1917]) = 0;
  DWORD1(v146[1925]) = 0;
  HIDWORD(v146[1930]) = 0;
  DWORD1(v146[1936]) = 0;
  DWORD2(v146[1944]) = 0;
  LODWORD(v146[1950]) = 0;
  DWORD2(v146[1955]) = 0;
  BYTE8(v146[1958]) = -1;
  *(&v146[1963] + 8) = xmmword_2247A4620;
  HIDWORD(v146[1964]) = 16843009;
  LOBYTE(v146[1965]) = 0;
  DWORD1(v146[1965]) = 814313567;
  LODWORD(v146[1966]) = 808933364;
  *(&v146[1966] + 12) = xmmword_2247A4630;
  *(&v146[1967] + 12) = 0x40E000003F400000;
  LODWORD(v146[1969]) = 1065353216;
  WORD6(v146[1969]) = 256;
  BYTE14(v146[1969]) = 0;
  LODWORD(v146[1970]) = 1082130432;
  HIDWORD(v146[1975]) = 0;
  DWORD1(v146[1981]) = 0;
  HIDWORD(v146[1986]) = 0;
  LODWORD(v146[1995]) = 0;
  DWORD2(v146[2000]) = 0;
  LODWORD(v146[2006]) = 0;
  DWORD1(v146[2014]) = 0;
  HIDWORD(v146[2019]) = 0;
  DWORD1(v146[2025]) = 0;
  DWORD2(v146[2033]) = 0;
  LODWORD(v146[2039]) = 0;
  DWORD2(v146[2044]) = 0;
  HIDWORD(v146[2052]) = 0;
  DWORD1(v146[2058]) = 0;
  HIDWORD(v146[2063]) = 0;
  LODWORD(v146[2072]) = 0;
  DWORD2(v146[2077]) = 0;
  LODWORD(v146[2083]) = 0;
  DWORD1(v146[2091]) = 0;
  HIDWORD(v146[2096]) = 0;
  DWORD1(v146[2102]) = 0;
  DWORD2(v146[2110]) = 0;
  LODWORD(v146[2116]) = 0;
  DWORD2(v146[2121]) = 0;
  HIDWORD(v146[2129]) = 0;
  DWORD1(v146[2135]) = 0;
  HIDWORD(v146[2140]) = 0;
  LODWORD(v146[2149]) = 0;
  DWORD2(v146[2154]) = 0;
  LODWORD(v146[2160]) = 0;
  DWORD1(v146[2168]) = 0;
  HIDWORD(v146[2173]) = 0;
  DWORD1(v146[2179]) = 0;
  DWORD2(v146[2187]) = 0;
  LODWORD(v146[2193]) = 0;
  DWORD2(v146[2198]) = 0;
  HIDWORD(v146[2206]) = 0;
  DWORD1(v146[2212]) = 0;
  HIDWORD(v146[2217]) = 0;
  LODWORD(v146[2226]) = 0;
  DWORD2(v146[2231]) = 0;
  LODWORD(v146[2237]) = 0;
  LOBYTE(v146[2240]) = -1;
  v146[2245] = xmmword_2247A4620;
  DWORD1(v146[2246]) = 16843009;
  BYTE8(v146[2246]) = 0;
  HIDWORD(v146[2246]) = 814313567;
  DWORD2(v146[2247]) = 808933364;
  *(&v146[2248] + 4) = xmmword_2247A4630;
  *(&v146[2249] + 4) = 0x40E000003F400000;
  DWORD2(v146[2250]) = 1065353216;
  v12 = -21568;
  BYTE4(v146[2251]) = 0;
  *(&v146[2251] + 5) = 1;
  DWORD2(v146[2251]) = 1082130432;
  do
  {
    v13 = &v138[v12];
    *(v13 + 2698) = 0;
    *(v13 + 1348) = 0uLL;
    *(v13 + 2700) = 0;
    *(&v146[2] + v12 + 8) = 0uLL;
    *(v13 + 2704) = 0;
    *(&v146[4] + v12 + 8) = 0uLL;
    *(v13 + 2708) = 0;
    *(&v146[6] + v12 + 8) = 0uLL;
    *(v13 + 2712) = 0;
    *(&v146[8] + v12 + 8) = 0uLL;
    *(v13 + 1358) = 0uLL;
    *(v13 + 2718) = 0;
    *(v13 + 1360) = 0uLL;
    *(v13 + 2722) = 0;
    *(v13 + 1362) = 0uLL;
    *(v13 + 2726) = 0;
    *(v13 + 1364) = 0uLL;
    *(v13 + 2730) = 0;
    *(v13 + 2734) = 0;
    *(v13 + 1366) = 0uLL;
    *(v13 + 2738) = 0;
    *(v13 + 1368) = 0uLL;
    *(v13 + 2742) = 0;
    *(v13 + 1370) = 0uLL;
    *(v13 + 2746) = 0;
    *(v13 + 1372) = 0uLL;
    *(v13 + 2750) = 0;
    *(v13 + 1374) = 0uLL;
    *(v13 + 2754) = 0;
    *(v13 + 1376) = 0uLL;
    *(v13 + 2758) = 0;
    *(v13 + 1378) = 0uLL;
    *(v13 + 2762) = 0;
    *(v13 + 1380) = 0uLL;
    *(v13 + 2766) = 0;
    *(v13 + 1382) = 0uLL;
    *(v13 + 2770) = 0;
    *(v13 + 1384) = 0uLL;
    *(v13 + 2774) = 0;
    *(v13 + 1386) = 0uLL;
    *(v13 + 2778) = 0;
    *(v13 + 1388) = 0uLL;
    *(v13 + 2782) = 0;
    *(v13 + 1390) = 0uLL;
    *(v13 + 2786) = 0;
    *(v13 + 1392) = 0uLL;
    *(v13 + 2790) = 0;
    *(v13 + 1394) = 0uLL;
    *(v13 + 2794) = 0;
    *(v13 + 1396) = 0uLL;
    *(v13 + 2798) = 0;
    *(v13 + 1398) = 0uLL;
    *(v13 + 2802) = 0;
    *(v13 + 1400) = 0uLL;
    *(v13 + 2806) = 0;
    *(v13 + 1402) = 0uLL;
    *(v13 + 2810) = 0;
    *(v13 + 1404) = 0uLL;
    *(v13 + 2814) = 0;
    *(v13 + 1406) = 0uLL;
    *(v13 + 2818) = 0;
    *(v13 + 1408) = 0uLL;
    *(v13 + 2822) = 0;
    *(v13 + 1410) = 0uLL;
    *(v13 + 2826) = 0;
    *(v13 + 1412) = 0uLL;
    *(v13 + 2830) = 0;
    *(v13 + 1414) = 0uLL;
    *(v13 + 2834) = 0;
    *(v13 + 1416) = 0uLL;
    *(v13 + 2838) = 0;
    *(v13 + 1418) = 0uLL;
    *(v13 + 2842) = 0;
    *(v13 + 1420) = 0uLL;
    *(v13 + 2846) = 0;
    *(v13 + 1422) = 0uLL;
    *(v13 + 2850) = 0;
    *(v13 + 1424) = 0uLL;
    *(v13 + 2854) = 0;
    *(v13 + 1426) = 0uLL;
    *(v13 + 2858) = 0;
    *(v13 + 1428) = 0uLL;
    *(v13 + 2862) = 0;
    *(v13 + 1430) = 0uLL;
    *(v13 + 2866) = 0;
    *(v13 + 1432) = 0uLL;
    *(v13 + 2870) = 0;
    *(v13 + 1434) = 0uLL;
    *(v13 + 2874) = 0;
    *(v13 + 1436) = 0uLL;
    *(v13 + 2878) = 0;
    *(v13 + 1438) = 0uLL;
    *(v13 + 2882) = 0;
    *(v13 + 1440) = 0uLL;
    *(v13 + 2886) = 0;
    *(v13 + 1442) = 0uLL;
    *(v13 + 2890) = 0;
    *(v13 + 1444) = 0uLL;
    *(v13 + 2894) = 0;
    *(v13 + 1446) = 0uLL;
    *(v13 + 2898) = 0;
    *(v13 + 1448) = 0uLL;
    *(v13 + 2902) = 0;
    *(v13 + 1450) = 0uLL;
    *(v13 + 2906) = 0;
    *(v13 + 1452) = 0uLL;
    *(v13 + 2910) = 0;
    *(v13 + 1454) = 0uLL;
    *(v13 + 2914) = 0;
    *(v13 + 1456) = 0uLL;
    *(v13 + 2918) = 0;
    *(v13 + 1458) = 0uLL;
    *(v13 + 2922) = 0;
    *(v13 + 1460) = 0uLL;
    *(v13 + 2926) = 0;
    *(v13 + 1462) = 0uLL;
    *(v13 + 2930) = 0;
    *(v13 + 1464) = 0uLL;
    *(v13 + 2934) = 0;
    *(v13 + 1466) = 0uLL;
    *(v13 + 2938) = 0;
    *(v13 + 1468) = 0uLL;
    *(v13 + 2942) = 0;
    *(v13 + 1470) = 0uLL;
    *(v13 + 2946) = 0;
    *(v13 + 1472) = 0uLL;
    *(v13 + 2950) = 0;
    *(v13 + 1474) = 0uLL;
    *(v13 + 2954) = 0;
    *(v13 + 1476) = 0uLL;
    *(v13 + 2958) = 0;
    *(v13 + 1478) = 0uLL;
    *(v13 + 2962) = 0;
    *(v13 + 1480) = 0uLL;
    *(v13 + 2966) = 0;
    *(v13 + 1482) = 0uLL;
    *(v13 + 2970) = 0;
    *(v13 + 1484) = 0uLL;
    *(v13 + 2974) = 0;
    *(v13 + 1486) = 0uLL;
    *(v13 + 2978) = 0;
    *(v13 + 1488) = 0uLL;
    *(v13 + 2982) = 0;
    *(v13 + 1490) = 0uLL;
    *(v13 + 2986) = 0;
    *(v13 + 1492) = 0uLL;
    *(v13 + 2990) = 0;
    *(v13 + 1494) = 0uLL;
    *(v13 + 2994) = 0;
    *(v13 + 1496) = 0uLL;
    *(v13 + 2998) = 0;
    *(v13 + 1498) = 0uLL;
    *(v13 + 3002) = 0;
    *(v13 + 1500) = 0uLL;
    *(v13 + 3006) = 0;
    *(v13 + 1502) = 0uLL;
    *(v13 + 3010) = 0;
    *(v13 + 1504) = 0uLL;
    *(v13 + 3014) = 0;
    *(v13 + 1506) = 0uLL;
    *(v13 + 3018) = 0;
    *(v13 + 1508) = 0uLL;
    *(v13 + 3022) = 0;
    *(v13 + 1510) = 0uLL;
    *(v13 + 3026) = 0;
    *(v13 + 1512) = 0uLL;
    *(v13 + 3030) = 0;
    *(v13 + 1514) = 0uLL;
    v12 += 2696;
  }

  while (v12);
  v110 = *(v101 + 24);
  ++*(v101 + 128);
  v98 = +[PDUserDefaults defaults];
  v96 = v9;
  if (![v98 loopDxpResults] || *(v101 + 128) < 0x14uLL)
  {
    v102 = 0;
LABEL_9:
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    memset(&v128[16], 0, 96);
    memset(&v128[128], 0, 96);
    memset(&v129[16], 0, 96);
    memset(&v129[128], 0, 96);
    memset(&v130[16], 0, 96);
    memset(&v130[128], 0, 96);
    memset(&v131[16], 0, 96);
    memset(&v131[128], 0, 96);
    memset(&v132[16], 0, 96);
    memset(&v132[128], 0, 96);
    memset(&v133[16], 0, 96);
    memset(&v133[128], 0, 96);
    memset(&v134[16], 0, 96);
    memset(&v134[128], 0, 96);
    v18 = [v11 bytes];
    v19 = [v11 length];
    *v108 = *v9;
    *&v108[16] = *(v9 + 16);
    v94 = 0;
    if (peridot::PeridotAlgo::Impl::processSuperFrame(*(v101 + 96), v18, v19, *v108))
    {
      if (BYTE8(v146[269]) == 255)
      {
        v20 = v110;
        if (v110)
        {
          v21 = 0;
          v22 = &v146[153] + 12;
          do
          {
            v22[1852] = v21;
            bzero(v22 - 2460, 0x10D8uLL);
            *(v22 - 1848) = 1;
            *(v22 - 1540) = 2;
            *(v22 - 1232) = 3;
            *(v22 - 924) = 4;
            *(v22 - 616) = 5;
            v23 = v22 - 308;
            *v22 = 7;
            v22[308] = 8;
            v22[616] = 9;
            v22[924] = 10;
            v22[1232] = 11;
            v22[1540] = 12;
            v22[1848] = 13;
            ++v21;
            v22 += 4504;
            *v23 = 6;
          }

          while (v20 != v21);
        }
      }
    }

    if (v102)
    {
      peridot_depth_log("Warning! Looping over DXP results. Storing results for bank %d", [v102 intValue]);
      *(v101 + 136) = v110;
      v24 = [MEMORY[0x277CBEA90] dataWithBytes:v146 length:36032];
      [*(v101 + 144) setObject:v24 forKeyedSubscript:v102];

      peridot::PeridotDepth::operator=(v101 + 152 + 21568 * [v102 unsignedIntValue], v138);
      peridot::PeridotDepth::operator=(v101 + 152 + 21568 * [v102 unsignedIntValue] + 2696, &v139);
      peridot::PeridotDepth::operator=(v101 + 152 + 21568 * [v102 unsignedIntValue] + 5392, &v140);
      peridot::PeridotDepth::operator=(v101 + 152 + 21568 * [v102 unsignedIntValue] + 8088, &v141);
      peridot::PeridotDepth::operator=(v101 + 152 + 21568 * [v102 unsignedIntValue] + 10784, &v142);
      peridot::PeridotDepth::operator=(v101 + 152 + 21568 * [v102 unsignedIntValue] + 13480, &v143);
      peridot::PeridotDepth::operator=(v101 + 152 + 21568 * [v102 unsignedIntValue] + 16176, &v144);
      peridot::PeridotDepth::operator=(v101 + 152 + 21568 * [v102 unsignedIntValue] + 18872, &v145);
    }

    peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(v134);
    peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(v133);
    peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(v132);
    peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(v131);
    peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(v130);
    peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(v129);
    peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(v128);
    peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(&__src);
    goto LABEL_17;
  }

  v137 = 0;
  __src = 0;
  v115 = 0;
  v14 = PeridotSuperFrame::loadFromBuffer(&__src, [v11 bytes], objc_msgSend(v11, "length"), 0);
  if ((v14 & 1) == 0)
  {
    peridot_depth_log("Failed loading frame!");
    v102 = 0;
    v17 = 1;
    v76 = v137;
    if (!v137)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(*(*&v131[8 * v135 + 24] + 2) - 1)];
  v16 = [*(v101 + 144) objectForKeyedSubscript:v15];
  v17 = v16 == 0;
  if (v16)
  {
    peridot_depth_log("Warning! Looping over DXP results. Returning last results for bank %d", [v15 intValue]);
    memcpy(v146, [v16 bytes], sizeof(v146));
    v102 = 0;
    v110 = *(v101 + 136);
  }

  else
  {
    v102 = v15;
  }

  v76 = v137;
  if (v137)
  {
LABEL_32:
    MEMORY[0x22AA53170](v76, 0x1000C801E9FC43BLL);
  }

LABEL_33:
  if ((v14 & 1) == 0)
  {
    v99 = 0;
    goto LABEL_46;
  }

  if (v17)
  {
    goto LABEL_9;
  }

LABEL_17:
  *v108 = 335677008;
  *&v108[8] = 0u;
  v109 = 0u;
  kdebug_trace();
  v100 = v110;
  if ([MEMORY[0x277CED0A0] prepareDataBuffer:v7 forLength:(42 * v110) additionalDataSize:*(v101 + 40)])
  {
    v25 = [objc_alloc(MEMORY[0x277CED0E8]) initWithDataBuffer:v7];
    v99 = v25;
    if (v25)
    {
      v26 = v25;
      v27 = [v25 mutableCameraPixels];
      v28 = [v26 mutableEuclideanDistances];
      v105 = [v26 mutableConfidences];
      v104 = [v26 mutableIntensities];
      v29 = [v26 mutableSignalToNoiseRatios];
      v30 = [v26 mutableBankIds];
      v31 = [v26 mutableSpotIds];
      v32 = [v26 mutableEchoIds];
      v33 = [v26 mutableFlags];
      v34 = [v26 additionalData];
      v35 = v34;
      v36 = [v34 bytes];
      v37 = *(v101 + 56);
      *(v36 + 16) = *(v101 + 72);
      *v36 = v37;

      v95 = *(v101 + 64);
      bzero(&__src, 0x700uLL);
      if (v100)
      {
        v38 = 0;
        v39 = &v115;
        v40 = (v27 + 32);
        v41 = v105 + 8;
        v42 = v104 + 8;
        v43 = v29 + 8;
        v44 = v28 + 8;
        v45 = v33 + 8;
        v46 = v146;
        v47 = 2;
        do
        {
          v48 = 0;
          v49 = 0;
          v106 = v38;
          v50 = v146 + 4504 * v38;
          v103 = v40;
          v51 = v40;
          v52 = v46;
          v53 = v39;
          v54 = v47;
          do
          {
            v55 = (v30 + v54);
            *(v55 - 2) = v50[4312];
            v56 = (v31 + v54);
            *(v56 - 2) = v49;
            v57 = (v32 + v54);
            *(v57 - 2) = 0;
            v51[-2] = vcvtq_f64_f32(v52[4]);
            v58 = (v41 + v48);
            *(v58 - 2) = v52->i32[1];
            v59 = (v42 + v48);
            *(v59 - 2) = v52[1].i32[1];
            v60 = (v43 + v48);
            *(v60 - 2) = v52[1].i32[0];
            v61 = v52->f32[0] * 1.49852322e11;
            v62 = (v44 + v48);
            *(v62 - 2) = v61;
            v63 = (v45 + v48);
            *(v63 - 2) = v52[10].i32[1];
            *(v55 - 1) = v50[4312];
            *(v56 - 1) = v49;
            *(v57 - 1) = 1;
            v51[-1] = vcvtq_f64_f32(v52[15]);
            *(v58 - 1) = v52[11].i32[1];
            *(v59 - 1) = v52[12].i32[1];
            *(v60 - 1) = v52[12].i32[0];
            v64 = v52[11].f32[0] * 1.49852322e11;
            *(v62 - 1) = v64;
            *(v63 - 1) = v52[21].i32[1];
            *v55 = v50[4312];
            *v56 = v49;
            *v57 = 2;
            *v51 = vcvtq_f64_f32(v52[26]);
            v51 += 3;
            *v58 = v52[22].i32[1];
            *v59 = v52[23].i32[1];
            *v60 = v52[23].i32[0];
            v65 = v52[22].f32[0] * 1.49852322e11;
            *v62 = v65;
            *v63 = v52[32].i32[1];
            *(v53 - 1) = v52[33];
            v66 = v52[10].f32[0] * 1.49852322e11;
            ++v49;
            v48 += 12;
            v54 += 3;
            *v53 = v52[3].f32[1];
            v53[1] = v66;
            v53 += 4;
            v52 = (v52 + 308);
          }

          while (v48 != 168);
          v38 = v106 + 1;
          v47 += 42;
          v39 += 56;
          v46 = (v46 + 4504);
          v40 = v103 + 42;
          v41 += 168;
          v42 += 168;
          v43 += 168;
          v44 += 168;
          v45 += 168;
        }

        while (v106 + 1 != v100);
      }

      v11 = v97;
      v67 = [v99 additionalData];
      v68 = v67;
      memcpy(([v67 bytes] + 24), &__src, *(v101 + 64));

      [*(v101 + 88) undistort:objc_msgSend(v99 distortedPixels:"length") outUndistorted:{objc_msgSend(v99, "cameraPixels"), objc_msgSend(v99, "mutableUndistortedCameraPixels")}];
      [*(v101 + 88) backProject:objc_msgSend(v99 undistortedPixels:"length") withR:objc_msgSend(v99 outPoints:{"undistortedCameraPixels"), objc_msgSend(v99, "mutableEuclideanDistances"), objc_msgSend(v99, "mutablePoints")}];
      [v99 applyPerformanceOverrides];
      if (*(v101 + 104) == 1)
      {
        v69 = [v99 additionalData];
        v70 = v69;
        v71 = [v69 bytes];
        v72 = v97;
        memcpy((v71 + (v95 + 24)), [v97 bytes], *(v101 + 72));
      }

      v73 = [v98 dumpRawFramesPath];
      v74 = [v98 dumpPointCloudsPath];
      if (v73 | v74)
      {
        if (*(v96 + 12))
        {
          time = *v96;
          v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06.13f", CMTimeGetSeconds(&time)];
        }

        else
        {
          v75 = +[PDInternalUtils currTimeAsString];
        }

        v77 = v75;
        if (v73)
        {
          v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.L008", v73, v75];
          [v97 writeToFile:v78 atomically:0];
        }

        if (v74)
        {
          v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.csv", v74, v77];
          [v99 writeToFile:v79 atomically:0];
        }
      }

      v80 = v99;
    }
  }

  else
  {
    v99 = 0;
  }

  kdebug_trace();
LABEL_46:

  v81 = v146;
  v82 = 21536;
  do
  {
    v83 = -2688;
    v84 = v82;
    do
    {
      v85 = &v138[v84];
      v86 = *&v138[v84 - 8];
      if (v86)
      {
        *&v138[v84] = v86;
        operator delete(v86);
      }

      v87 = *(v85 - 5);
      if (v87)
      {
        *&v136[v84 + 128] = v87;
        operator delete(v87);
      }

      v88 = &v138[v84];
      v89 = *&v136[v84 + 88];
      if (v89)
      {
        *(v88 - 8) = v89;
        operator delete(v89);
      }

      v90 = *(v88 - 13);
      if (v90)
      {
        *&v136[v84 + 64] = v90;
        operator delete(v90);
      }

      v91 = *&v136[v84 + 24];
      if (v91)
      {
        *&v136[v84 + 32] = v91;
        operator delete(v91);
      }

      v92 = *(v85 - 21);
      if (v92)
      {
        *&v136[v84] = v92;
        operator delete(v92);
      }

      v84 -= 192;
      v83 += 192;
    }

    while (v83);
    v81 -= 2696;
    v82 -= 2696;
  }

  while (v81 != v138);
  kdebug_trace();

  return v99;
}

- (id)generatePointCloudFromRawFrame:(id)a3 timestamp:(id *)a4
{
  v6 = a3;
  buffer = 0;
  if (self->_dataBufferPool || ([(PDDepthProcessor *)self prepareDataPool], self->_dataBufferPool))
  {
    if (CVDataBufferPoolCreateDataBuffer())
    {
      peridot_depth_log("Failed to create a data buffer from the pool");
      v7 = 0;
      goto LABEL_8;
    }

    v8 = buffer;
  }

  else
  {
    v8 = 0;
  }

  v10 = *&a4->var0;
  var3 = a4->var3;
  v7 = [(PDDepthProcessor *)self generatePointCloudFromRawFrame:v6 timestamp:&v10 usingDataBuffer:v8];
  CVBufferRelease(buffer);
LABEL_8:

  return v7;
}

- (id)generatePointCloudFromRawFrame:(id)a3
{
  v5 = *MEMORY[0x277CC0898];
  v6 = *(MEMORY[0x277CC0898] + 16);
  v3 = [(PDDepthProcessor *)self generatePointCloudFromRawFrame:a3 timestamp:&v5];

  return v3;
}

- (BOOL)prepareForPeridotPreset:(int)a3 rawSensorDimensions:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = *&a3;
  storeRawFramesInPointCloud = self->_storeRawFramesInPointCloud;
  if (a4.width == 512.0 && a4.height == 768.0)
  {
    v11 = 2;
  }

  else if (a4.width == 1024.0 && a4.height == 768.0)
  {
    v11 = 4;
  }

  else if (a4.width == 0.0 && a4.height == 0.0)
  {
    v11 = 8;
  }

  else
  {
    v11 = 8;
    peridot_depth_log("Unknown raw sensor dimensions: %fx%f. Will allow up to %zu banks per frame.", a4.width, a4.height, 8uLL);
  }

  v12 = 224 * v11;
  if (storeRawFramesInPointCloud)
  {
    v13 = (width * height);
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277CED0A0] requiredStorageBytesForLength:42 * v11 additionalDataSize:v13 + v12 + 24];
  self->_presetInfo.dimensions.width = width;
  self->_presetInfo.dimensions.height = height;
  self->_presetInfo.banksPerFrame = v11;
  self->_presetInfo.pointsPerFrame = 42 * v11;
  self->_presetInfo.additionalSize = v13 + v12 + 24;
  self->_presetInfo.requiredBytes = v14;
  *&self->_presetInfo.additionalDataHeader.magic = 0x1D2024C08;
  self->_presetInfo.additionalDataHeader.dataSizes[0] = v12;
  self->_presetInfo.additionalDataHeader.dataSizes[1] = v13;

  return [(PDDepthProcessor *)self _prepareForPeridotPreset:v6];
}

- (BOOL)_prepareForPeridotPreset:(int)a3
{
  v5 = [PDUtils getPresetName:?];
  peridot_depth_log("PDDepthProcessor preparing for preset %s", [v5 UTF8String]);

  ptr = self->_algo._impl.__ptr_;
  *(ptr + 100866) = a3;
  v7 = peridot::presetToRunMode(a3);
  *(ptr + 403473) = v7;
  *(ptr + 403475) = BYTE2(v7);
  *(ptr + 201744) = v7;
  *(ptr + 403490) = BYTE2(v7);
  *(ptr + 222976) = v7;
  *(ptr + 445954) = BYTE2(v7);
  *(ptr + 223378) = v7;
  *(ptr + 446758) = BYTE2(v7);
  *(ptr + 241856) = v7;
  *(ptr + 483714) = BYTE2(v7);
  *(ptr + 254424) = v7;
  *(ptr + 508850) = BYTE2(v7);
  *(ptr + 286168) = v7;
  *(ptr + 572338) = BYTE2(v7);
  *(ptr + 307400) = v7;
  *(ptr + 614802) = BYTE2(v7);
  *(ptr + 307802) = v7;
  *(ptr + 615606) = BYTE2(v7);
  *(ptr + 326280) = v7;
  *(ptr + 652562) = BYTE2(v7);
  *(ptr + 338848) = v7;
  *(ptr + 677698) = BYTE2(v7);
  *(ptr + 370592) = v7;
  *(ptr + 741186) = BYTE2(v7);
  *(ptr + 391824) = v7;
  *(ptr + 783650) = BYTE2(v7);
  *(ptr + 392226) = v7;
  *(ptr + 784454) = BYTE2(v7);
  *(ptr + 410704) = v7;
  *(ptr + 821410) = BYTE2(v7);
  *(ptr + 423272) = v7;
  *(ptr + 846546) = BYTE2(v7);
  *(ptr + 455016) = v7;
  *(ptr + 910034) = BYTE2(v7);
  *(ptr + 476248) = v7;
  *(ptr + 952498) = BYTE2(v7);
  *(ptr + 476650) = v7;
  *(ptr + 953302) = BYTE2(v7);
  *(ptr + 495128) = v7;
  *(ptr + 990258) = BYTE2(v7);
  *(ptr + 507696) = v7;
  *(ptr + 1015394) = BYTE2(v7);
  *(ptr + 539440) = v7;
  *(ptr + 1078882) = BYTE2(v7);
  *(ptr + 560672) = v7;
  *(ptr + 1121346) = BYTE2(v7);
  *(ptr + 561074) = v7;
  *(ptr + 1122150) = BYTE2(v7);
  *(ptr + 579552) = v7;
  *(ptr + 1159106) = BYTE2(v7);
  *(ptr + 592120) = v7;
  *(ptr + 1184242) = BYTE2(v7);
  *(ptr + 623864) = v7;
  *(ptr + 1247730) = BYTE2(v7);
  *(ptr + 645096) = v7;
  *(ptr + 1290194) = BYTE2(v7);
  *(ptr + 645498) = v7;
  *(ptr + 1290998) = BYTE2(v7);
  *(ptr + 663976) = v7;
  *(ptr + 1327954) = BYTE2(v7);
  *(ptr + 676544) = v7;
  *(ptr + 1353090) = BYTE2(v7);
  *(ptr + 708288) = v7;
  *(ptr + 1416578) = BYTE2(v7);
  *(ptr + 729520) = v7;
  *(ptr + 1459042) = BYTE2(v7);
  *(ptr + 729922) = v7;
  *(ptr + 1459846) = BYTE2(v7);
  *(ptr + 748400) = v7;
  *(ptr + 1496802) = BYTE2(v7);
  *(ptr + 760968) = v7;
  *(ptr + 1521938) = BYTE2(v7);
  *(ptr + 792712) = v7;
  *(ptr + 1585426) = BYTE2(v7);
  *(ptr + 813944) = v7;
  *(ptr + 1627890) = BYTE2(v7);
  *(ptr + 814346) = v7;
  *(ptr + 1628694) = BYTE2(v7);
  *(ptr + 832824) = v7;
  *(ptr + 1665650) = BYTE2(v7);
  *(ptr + 845392) = v7;
  *(ptr + 1690786) = BYTE2(v7);

  return [(PDDepthProcessor *)self prepareDataPool];
}

- (BOOL)prepareDataPool
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_dataBufferPool)
  {
    return 1;
  }

  v7 = *MEMORY[0x277CC4B58];
  v8[0] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [MEMORY[0x277CED0A0] pixelFormat];
  [(PDDepthProcessor *)self requiredStorageBytesForGeneratedPointClouds];
  v5 = CVDataBufferPoolCreate();
  v2 = v5 == 0;
  if (v5)
  {
    peridot_depth_log("Error: failed to allocate a new data buffer pool");
  }

  return v2;
}

- (BOOL)setDataBufferPool:(__CVDataBufferPool *)a3
{
  if (a3)
  {
    v5 = CVDataBufferPoolGetDataBufferAttributes();
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC4B58]];
    v7 = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD2A70]];
    v9 = [v8 unsignedIntValue];

    if (v9 != [MEMORY[0x277CED0A0] pixelFormat])
    {
      goto LABEL_6;
    }

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CD2948]];
    v11 = [v10 unsignedIntegerValue];

    if (v11 < [(PDDepthProcessor *)self requiredStorageBytesForGeneratedPointClouds])
    {
      peridot_depth_log("Got a buffer pool with smaller size (%zu) than required (%zu)", v11, [(PDDepthProcessor *)self requiredStorageBytesForGeneratedPointClouds]);
LABEL_6:

      return 0;
    }
  }

  dataBufferPool = self->_dataBufferPool;
  if (dataBufferPool)
  {
    CFRelease(dataBufferPool);
    self->_dataBufferPool = 0;
  }

  if (a3)
  {
    self->_dataBufferPool = CFRetain(a3);
  }

  return 1;
}

- (id)rawFrameFromPointCloud:(id)a3
{
  v4 = a3;
  v5 = [v4 additionalData];
  v6 = [v5 bytes];
  v7 = !v6 || *v6 != -771601400 || v6[1] != 1;

  v8 = [v4 additionalData];
  v9 = *([v8 bytes] + 16);

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = self->_presetInfo.additionalDataHeader.dataSizes[0];
    v13 = objc_alloc(MEMORY[0x277CBEA90]);
    v14 = [v4 additionalData];
    v11 = [v13 initWithBytes:objc_msgSend(v14 length:{"bytes") + (v12 + 24), self->_presetInfo.additionalDataHeader.dataSizes[1]}];
  }

  return v11;
}

- (void)dealloc
{
  dataBufferPool = self->_dataBufferPool;
  if (dataBufferPool)
  {
    CFRelease(dataBufferPool);
  }

  v4.receiver = self;
  v4.super_class = PDDepthProcessor;
  [(PDDepthProcessor *)&v4 dealloc];
}

- (PDDepthProcessor)initWithSystemCalibrationData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_5;
  }

  v25.receiver = self;
  v25.super_class = PDDepthProcessor;
  self = [(PDDepthProcessor *)&v25 init];
  if (!self)
  {
    goto LABEL_5;
  }

  v5 = [v4 peridotModule];
  moduleCalib = self->_moduleCalib;
  self->_moduleCalib = v5;

  v7 = [v4 peridotCamera];
  cameraCalib = self->_cameraCalib;
  self->_cameraCalib = v7;

  v9 = +[PDUserDefaults defaults];
  self->_storeRawFramesInPointCloud = [v9 storeRawFramesInPointCloud];

  getInfoForDimensions(*MEMORY[0x277CBF3A8], v23);
  v10 = v23[0];
  *&self->_presetInfo.banksPerFrame = v23[1];
  v11 = v23[3];
  *&self->_presetInfo.additionalSize = v23[2];
  *&self->_presetInfo.additionalDataHeader.magic = v11;
  self->_presetInfo.additionalDataHeader.dataSizes[1] = v24;
  self->_presetInfo.dimensions = v10;
  self->_dataBufferPool = 0;
  self->_frameCounter = 0;
  if (!peridot::PeridotAlgo::Impl::init(self->_algo._impl.__ptr_, -[PDPeridotModuleCalibrationData calib](self->_moduleCalib, "calib"), self->_cameraCalib, [v4 platform], 0))
  {
    v14 = +[PDUserDefaults defaults];
    v15 = [v14 loopDxpResults];

    if (v15)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      lastOutputs = self->_lastOutputs;
      self->_lastOutputs = v16;
    }

    v18 = +[PDUserDefaults defaults];
    v19 = [v18 spotClasificationEnabled];

    switch(v19)
    {
      case -1:
        spotClasificationEnabled = [v4 platform] == 6;
        break;
      case 0:
        spotClasificationEnabled = 0;
        self->_spotClasificationEnabled = 0;
LABEL_17:
        NSLog(&cfstr_SpotclassnetEn.isa, spotClasificationEnabled);
        v21 = +[PDUserDefaults defaults];
        v22 = [v21 gmoCfgBits];

        NSLog(&cfstr_GmoPddepthproc.isa, v22);
        [*self->_algo._impl.__ptr_ setCfgBits:v22];
        self = self;
        v12 = self;
        goto LABEL_6;
      case 1:
        spotClasificationEnabled = 1;
        break;
      default:
        spotClasificationEnabled = self->_spotClasificationEnabled;
        goto LABEL_17;
    }

    self->_spotClasificationEnabled = spotClasificationEnabled;
    goto LABEL_17;
  }

  peridot_depth_log("Failed to initialize algo");
LABEL_5:
  v12 = 0;
LABEL_6:

  return v12;
}

@end