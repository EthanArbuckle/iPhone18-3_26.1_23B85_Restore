@interface GmoDbgServices
+ (int)compareVersions:(id)a3 toVersion:(id)a4;
- (GmoDbgServices)init;
- (id)createNewMetaDataDict;
- (id)generateFolderNameWithId:(id)a3;
- (int)extractDbgDataFor_gmoBankInput:(GmoProcessBankInputs *)a3 inIndex:(unsigned int)a4;
- (int)extractDbgDataFor_gmoBankOutput:(id *)a3 anchorsWithHist:(PDAnchors *)a4 spotLocationsAtRefDist:(id *)a5 inIndex:(unsigned int)a6;
- (int)extractDbgDataFor_gmoConfig:(GmoCfgBits *)a3 inIndex:(unsigned int)a4;
- (int)extractDbgDataFor_gmoDebug:(GmoDebugData *)a3 inIndex:(unsigned int)a4;
- (int)extractDbgDataFor_gmoInit:(GmoInitInputs *)a3 inIndex:(unsigned int)a4;
- (void)addDbgDataFor_findSpotLocation:(SpecsResults *)a3 withAnchors:(const SpConfig *)a4 spotLocationEstimation:(void *)a5 outBound:(void *)a6;
- (void)addDbgDataFor_getAnchorsWithHysteresis:(id *)a3 currAnchors:(const PDAnchors *)a4 snrHysteresisPct:(float)a5 anchorsWithHist:(PDAnchors *)a6 violations:(spViolations *)a7 numOfClippedSpots:(unint64_t)a8 anchorMoveIdx:(void *)a9 spotLocationsAtRefDist:(id *)a10 numQualifiedSpot:(unint64_t)a11 anchorsShift:(PDAnchors *)a12 anchorsMoved:(unint64_t)a13;
- (void)addDbgDataFor_globalEstimation:(id *)a3 spotLocationAtRefDist:(id *)a4 smoothedSNR:(PeridotSpotValues<common:(const void *)a6 :(void *)a7 PeridotSpotScalarValue<float>> *)a5 validSpotsIndexes:(GlobalEstimationCtrl *)a8 result:hCtrl:;
- (void)addDbgDataFor_gmoBankInput:(const GmoProcessBankInputs *)a3;
- (void)addDbgDataFor_gmoBankOutput:(id *)a3 anchorsWithHist:(const PDAnchors *)a4 spotLocationsAtRefDist:(id *)a5;
- (void)addDbgDataFor_gmoConfig:(GmoCfgBits *)a3;
- (void)addDbgDataFor_gmoInit:(GmoInitInputs *)a3;
- (void)addDbgDataFor_gtErrP95:(const float *)a3 smoothedErrP95:(const float *)a4 gtErrP95Sop:(const float *)a5 smoothedErrP95Sop:(const float *)a6;
- (void)addDbgDataFor_homogClassifier:(const GmoMetrics *)a3 estTols:(const EstTols *)a4;
- (void)addDbgDataFor_itpQual:(const float *)a3 itpQualSop:(const float *)a4;
- (void)addDbgDataFor_spotLocation:(id *)a3 withName:(id)a4;
- (void)dumpMetaDataAsXML:(id)a3;
- (void)endOfBank;
- (void)endOfHomogCycle;
- (void)endOfSession;
- (void)readMetaDataFromXML:(id)a3;
- (void)recStart;
@end

@implementation GmoDbgServices

- (int)extractDbgDataFor_gmoBankOutput:(id *)a3 anchorsWithHist:(PDAnchors *)a4 spotLocationsAtRefDist:(id *)a5 inIndex:(unsigned int)a6
{
  v10 = a6;
  v97 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:a6];
  v11 = [v97 objectForKeyedSubscript:@"hasData"];
  v12 = [v11 isEqual:MEMORY[0x277CBEC38]];

  if ((v12 & 1) == 0)
  {
    return 1;
  }

  v89 = a5;
  v90 = a4;
  v13 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:v10];
  v98 = [v13 objectForKeyedSubscript:@"output"];

  v94 = 0;
  p_var1 = &a3->var0[0].var0[0].var1;
  do
  {
    v15 = 0;
    v91 = p_var1;
    do
    {
      v16 = [v98 objectForKeyedSubscript:@"smoothedSpotLocations"];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v94];
      v18 = [v17 stringValue];
      v19 = [v16 objectForKeyedSubscript:v18];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
      v21 = [v20 stringValue];
      v22 = [v19 objectForKeyedSubscript:v21];
      v23 = [v22 objectForKeyedSubscript:@"x"];
      [v23 floatValue];
      *(p_var1 - 1) = v24;

      v25 = [v98 objectForKeyedSubscript:@"smoothedSpotLocations"];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v94];
      v27 = [v26 stringValue];
      v28 = [v25 objectForKeyedSubscript:v27];
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
      v30 = [v29 stringValue];
      v31 = [v28 objectForKeyedSubscript:v30];
      v32 = [v31 objectForKeyedSubscript:@"y"];
      [v32 floatValue];
      *p_var1 = v33;
      p_var1 += 2;

      ++v15;
    }

    while (v15 != 14);
    p_var1 = v91 + 28;
    ++v94;
  }

  while (v94 != 8);
  v95 = 0;
  p_useNorthHS2 = &v90->banks[0].anchors[0].useNorthHS2;
  do
  {
    v35 = 0;
    v92 = p_useNorthHS2;
    do
    {
      v36 = [v98 objectForKeyedSubscript:@"anchors"];
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v95];
      v38 = [v37 stringValue];
      v39 = [v36 objectForKeyedSubscript:v38];
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v35];
      v41 = [v40 stringValue];
      v42 = [v39 objectForKeyedSubscript:v41];
      v43 = [v42 objectForKeyedSubscript:@"x"];
      [v43 floatValue];
      *(p_useNorthHS2 - 2) = v44;

      v45 = [v98 objectForKeyedSubscript:@"anchors"];
      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v95];
      v47 = [v46 stringValue];
      v48 = [v45 objectForKeyedSubscript:v47];
      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v35];
      v50 = [v49 stringValue];
      v51 = [v48 objectForKeyedSubscript:v50];
      v52 = [v51 objectForKeyedSubscript:@"y"];
      [v52 floatValue];
      *(p_useNorthHS2 - 1) = v53;

      v54 = [v98 objectForKeyedSubscript:@"anchors"];
      v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v95];
      v56 = [v55 stringValue];
      v57 = [v54 objectForKeyedSubscript:v56];
      v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v35];
      v59 = [v58 stringValue];
      v60 = [v57 objectForKeyedSubscript:v59];
      v61 = [v60 objectForKeyedSubscript:@"useNorthHS2"];
      [v61 floatValue];
      *p_useNorthHS2 = v62 != 0.0;
      p_useNorthHS2 += 3;

      ++v35;
    }

    while (v35 != 14);
    p_useNorthHS2 = v92 + 42;
    ++v95;
  }

  while (v95 != 8);
  v63 = [v98 objectForKeyedSubscript:@"globalSpotLocations"];
  v64 = [v63 objectForKeyedSubscript:@"calibDistance"];
  [v64 floatValue];
  v89->var1 = v65;

  v66 = [v98 objectForKeyedSubscript:@"globalSpotLocations"];
  v67 = [v66 objectForKeyedSubscript:@"isSphere"];
  v89->var2 = [v67 unsignedCharValue];

  v96 = 0;
  v68 = &v89->var0[0].var0[0].var1;
  do
  {
    v69 = 0;
    v93 = v68;
    do
    {
      v70 = [v98 objectForKeyedSubscript:@"globalSpotLocations"];
      v71 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v96];
      v72 = [v71 stringValue];
      v73 = [v70 objectForKeyedSubscript:v72];
      v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v69];
      v75 = [v74 stringValue];
      v76 = [v73 objectForKeyedSubscript:v75];
      v77 = [v76 objectForKeyedSubscript:@"x"];
      [v77 floatValue];
      *(v68 - 1) = v78;

      v79 = [v98 objectForKeyedSubscript:@"globalSpotLocations"];
      v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v96];
      v81 = [v80 stringValue];
      v82 = [v79 objectForKeyedSubscript:v81];
      v83 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v69];
      v84 = [v83 stringValue];
      v85 = [v82 objectForKeyedSubscript:v84];
      v86 = [v85 objectForKeyedSubscript:@"y"];
      [v86 floatValue];
      *v68 = v87;
      v68 += 2;

      ++v69;
    }

    while (v69 != 14);
    v68 = v93 + 28;
    ++v96;
  }

  while (v96 != 8);

  return 0;
}

- (int)extractDbgDataFor_gmoBankInput:(GmoProcessBankInputs *)a3 inIndex:(unsigned int)a4
{
  v263 = a4;
  v271 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:?];
  v4 = [v271 objectForKeyedSubscript:@"hasData"];
  v5 = [v4 isEqual:MEMORY[0x277CBEC38]];

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:v263];
  v7 = [v6 valueForKey:@"input"];

  v272 = v7;
  v8 = [v7 objectForKeyedSubscript:@"bankId"];
  a3->var0 = [v8 unsignedLongValue];

  v9 = [v7 objectForKeyedSubscript:@"bankIndx"];
  a3->var1 = [v9 unsignedLongValue];

  v10 = [v7 objectForKeyedSubscript:@"frameIdx"];
  a3->var2 = [v10 unsignedLongValue];

  v11 = [v7 objectForKeyedSubscript:@"phaseNum"];
  a3->var3 = [v11 unsignedLongValue];

  v12 = [v7 objectForKeyedSubscript:@"priNum"];
  a3->var4 = [v12 unsignedLongValue];

  v13 = [v7 objectForKeyedSubscript:@"cfgUpdateId"];
  a3->var6 = [v13 unsignedIntValue];

  v14 = [v7 objectForKeyedSubscript:@"sensorTemperature"];
  [v14 floatValue];
  a3->var7 = v15;

  v16 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:v263];
  v17 = [v16 objectForKeyedSubscript:@"metaDataVersion"];
  LODWORD(v7) = [GmoDbgServices compareVersions:v17 toVersion:@"3.0.3"];

  if (v7 == 1)
  {
    v18 = [v272 objectForKeyedSubscript:@"timestamp"];
    [v18 doubleValue];
    a3->var8 = v19;
  }

  else
  {
    v18 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:v263];
    v21 = [v18 objectForKeyedSubscript:@"debug"];
    v22 = [v21 objectForKeyedSubscript:@"timestamp"];
    [v22 floatValue];
    a3->var8 = v23;
  }

  v24 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:v263];
  v25 = [v24 objectForKeyedSubscript:@"metaDataVersion"];
  v26 = [GmoDbgServices compareVersions:v25 toVersion:@"3.0.4"];

  if (v26 == 1)
  {
    v27 = [v272 objectForKeyedSubscript:@"internalFwError"];
    a3->var9 = [v27 BOOLValue];
  }

  else
  {
    a3->var9 = 0;
  }

  v28 = [v272 objectForKeyedSubscript:@"lsb"];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
  v30 = [v29 stringValue];
  v31 = [v28 objectForKeyedSubscript:v30];
  [v31 floatValue];
  a3->var5[0] = v32;

  v33 = [v272 objectForKeyedSubscript:@"lsb"];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
  v35 = [v34 stringValue];
  v36 = [v33 objectForKeyedSubscript:v35];
  [v36 floatValue];
  a3->var5[1] = v37;

  v38 = [v272 objectForKeyedSubscript:@"lsb"];
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2];
  v40 = [v39 stringValue];
  v41 = [v38 objectForKeyedSubscript:v40];
  [v41 floatValue];
  a3->var5[2] = v42;

  v43 = 0;
  do
  {
    v44 = 0;
    v279 = &a3->var10 + 24 * v43;
    v45 = 1;
    v285 = v43;
    do
    {
      v282 = v45;
      v46 = [v272 objectForKeyedSubscript:@"userOutput"];
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v43];
      v48 = [v47 stringValue];
      v49 = [v46 objectForKeyedSubscript:v48];
      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
      v51 = [v50 stringValue];
      v52 = [v49 objectForKeyedSubscript:v51];
      v53 = [v52 objectForKeyedSubscript:@"confidence"];
      [v53 floatValue];
      v54 = &v279[12 * v44];
      *(v54 + 1) = v55;

      v56 = [v272 objectForKeyedSubscript:@"userOutput"];
      v57 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v285];
      v58 = [v57 stringValue];
      v59 = [v56 objectForKeyedSubscript:v58];
      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
      v61 = [v60 stringValue];
      v62 = [v59 objectForKeyedSubscript:v61];
      v63 = [v62 objectForKeyedSubscript:@"tof"];
      [v63 floatValue];
      *v54 = v64;

      v65 = [v272 objectForKeyedSubscript:@"userOutput"];
      v66 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v285];
      v67 = [v66 stringValue];
      v68 = [v65 objectForKeyedSubscript:v67];
      v69 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
      v70 = [v69 stringValue];
      v43 = [v68 objectForKeyedSubscript:v70];
      v71 = [v43 objectForKeyedSubscript:@"na"];
      [v71 floatValue];
      *(v54 + 2) = v72;

      v45 = 0;
      v44 = 1;
      LOWORD(v43) = v285;
    }

    while ((v282 & 1) != 0);
    v43 = v285 + 1;
  }

  while (v285 != 13);
  v73 = 0;
  do
  {
    v286 = 0;
    v277 = &a3->var10.var0[7] + 32 * v73;
    v74 = 1;
    v283 = v73;
    do
    {
      v280 = v74;
      v75 = [v272 objectForKeyedSubscript:@"spotDepth"];
      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v73];
      v77 = [v76 stringValue];
      v78 = [v75 objectForKeyedSubscript:v77];
      v79 = [v78 objectForKeyedSubscript:@"hs"];
      v80 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v286];
      v81 = [v80 stringValue];
      v82 = [v79 objectForKeyedSubscript:v81];
      v83 = [v82 objectForKeyedSubscript:@"confidence"];
      [v83 floatValue];
      v84 = &v277[8 * v286];
      *(v84 + 1) = v85;

      v86 = [v272 objectForKeyedSubscript:@"spotDepth"];
      v87 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v283];
      v88 = [v87 stringValue];
      v89 = [v86 objectForKeyedSubscript:v88];
      v90 = [v89 objectForKeyedSubscript:@"hs"];
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v286];
      v92 = [v91 stringValue];
      v93 = [v90 objectForKeyedSubscript:v92];
      v94 = [v93 objectForKeyedSubscript:@"tof"];
      [v94 floatValue];
      *v84 = v95;

      v96 = [v272 objectForKeyedSubscript:@"spotDepth"];
      v97 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v283];
      v98 = [v97 stringValue];
      v99 = [v96 objectForKeyedSubscript:v98];
      v100 = [v99 objectForKeyedSubscript:@"hp"];
      v101 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v286];
      v102 = [v101 stringValue];
      v103 = [v100 objectForKeyedSubscript:v102];
      v104 = [v103 objectForKeyedSubscript:@"confidence"];
      [v104 floatValue];
      v73 = &v277[8 * v286 + 16];
      *(v73 + 4) = v105;

      v106 = [v272 objectForKeyedSubscript:@"spotDepth"];
      v107 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v283];
      v108 = [v107 stringValue];
      v109 = [v106 objectForKeyedSubscript:v108];
      v110 = [v109 objectForKeyedSubscript:@"hp"];
      v111 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v286];
      v112 = [v111 stringValue];
      v113 = [v110 objectForKeyedSubscript:v112];
      v114 = [v113 objectForKeyedSubscript:@"tof"];
      [v114 floatValue];
      *v73 = v115;

      v74 = 0;
      v286 = 1;
      LOWORD(v73) = v283;
    }

    while ((v280 & 1) != 0);
    v73 = v283 + 1;
  }

  while (v283 != 13);
  var4 = a3->var4;
  if (var4 && a3->var3)
  {
    v267 = 0;
    v117 = &a3->var11.var0[2].var0[1][1];
    var3 = 1;
    v260 = &a3->var11.var0[2].var0[1][1];
    do
    {
      if (var3)
      {
        LODWORD(v119) = 0;
        v120 = &v117[672 * v267];
        v261 = v120;
        do
        {
          v268 = 0;
          v121 = &v120[168 * v119];
          v266 = v119;
          do
          {
            v269 = v121;
            v270 = 0;
            v265 = v121;
            do
            {
              for (i = 0; i != 3; ++i)
              {
                v123 = [v272 objectForKeyedSubscript:{@"superFrameDataNormalBank", v260}];
                v124 = [v123 objectForKeyedSubscript:@"specs"];
                v125 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v267];
                v126 = [v125 stringValue];
                v127 = [v124 objectForKeyedSubscript:v126];
                v287 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v119];
                v284 = [v287 stringValue];
                v128 = [v127 objectForKeyedSubscript:v284];
                v281 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v268];
                [v281 stringValue];
                v276 = v278 = v128;
                v129 = [v128 objectForKeyedSubscript:v276];
                v119 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v270];
                v130 = [v119 stringValue];
                v131 = [v129 objectForKeyedSubscript:v130];
                v273 = v125;
                v274 = v124;
                v275 = v123;
                v132 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:i];
                v133 = [v132 stringValue];
                v134 = [v131 objectForKeyedSubscript:v133];
                [v134 floatValue];
                v269[i] = v135;

                LOWORD(v119) = v266;
              }

              v269 += 3;
              ++v270;
            }

            while (v270 != 4);
            v121 = v265 + 12;
            ++v268;
          }

          while (v268 != 14);
          var3 = a3->var3;
          LODWORD(v119) = v266 + 1;
          v120 = v261;
        }

        while (var3 > (v266 + 1));
        var4 = a3->var4;
        v117 = v260;
      }

      ++v267;
    }

    while (var4 > v267);
  }

  v136 = 0;
  v137 = &a3->var12.var0.var0[2].var0[3].var0[2].var0[3][2];
  v138 = 14;
  do
  {
    v139 = [v272 objectForKeyedSubscript:{@"superFrameDataNormalBank", v260}];
    v140 = [v139 objectForKeyedSubscript:@"spConfig"];
    v141 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v136];
    v142 = [v141 stringValue];
    v143 = [v140 objectForKeyedSubscript:v142];
    v144 = [v143 objectForKeyedSubscript:@"spx"];
    *(v137 - 28) = [v144 charValue];

    v145 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
    v146 = [v145 objectForKeyedSubscript:@"spConfig"];
    v147 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v136];
    v148 = [v147 stringValue];
    v149 = [v146 objectForKeyedSubscript:v148];
    v150 = [v149 objectForKeyedSubscript:@"spy"];
    *(v137 - 14) = [v150 charValue];

    v151 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
    v152 = [v151 objectForKeyedSubscript:@"spConfig"];
    v153 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v136];
    v154 = [v153 stringValue];
    v155 = [v152 objectForKeyedSubscript:v154];
    v156 = [v155 objectForKeyedSubscript:@"useNorthHS2"];
    *v137 = [v156 BOOLValue];
    v137 = (v137 + 1);

    ++v136;
    --v138;
  }

  while (v138);
  v157 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:v263];
  v158 = [v157 objectForKeyedSubscript:@"metaDataVersion"];
  v159 = [GmoDbgServices compareVersions:v158 toVersion:@"3.0.5"];

  if (v159 == 1)
  {
    v160 = 0;
    v161 = &a3->var12.var0.var0[2].var0[3].var0[3].var0[1][0] + 1;
    do
    {
      v162 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v163 = [v162 objectForKeyedSubscript:@"priConfig"];
      v164 = [v163 objectForKeyedSubscript:@"spect1hs1"];
      v165 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      v166 = [v165 stringValue];
      v167 = [v164 objectForKeyedSubscript:v166];
      *(v161 - 3) = [v167 unsignedCharValue];

      v168 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v169 = [v168 objectForKeyedSubscript:@"priConfig"];
      v170 = [v169 objectForKeyedSubscript:@"spect2hs1"];
      v171 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      v172 = [v171 stringValue];
      v173 = [v170 objectForKeyedSubscript:v172];
      *(v161 - 2) = [v173 unsignedCharValue];

      v174 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v175 = [v174 objectForKeyedSubscript:@"priConfig"];
      v176 = [v175 objectForKeyedSubscript:@"spect1hs2"];
      v177 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      v178 = [v177 stringValue];
      v179 = [v176 objectForKeyedSubscript:v178];
      *(v161 - 1) = [v179 unsignedCharValue];

      v180 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v181 = [v180 objectForKeyedSubscript:@"priConfig"];
      v182 = [v181 objectForKeyedSubscript:@"spect2hs2"];
      v183 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      v184 = [v183 stringValue];
      v185 = [v182 objectForKeyedSubscript:v184];
      *v161 = [v185 unsignedCharValue];

      v186 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v187 = [v186 objectForKeyedSubscript:@"priConfig"];
      v188 = [v187 objectForKeyedSubscript:@"spect1hp"];
      v189 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      v190 = [v189 stringValue];
      v191 = [v188 objectForKeyedSubscript:v190];
      v161[1] = [v191 unsignedCharValue];

      v192 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v193 = [v192 objectForKeyedSubscript:@"priConfig"];
      v194 = [v193 objectForKeyedSubscript:@"spect2hp"];
      v195 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      v196 = [v195 stringValue];
      v197 = [v194 objectForKeyedSubscript:v196];
      v161[2] = [v197 unsignedCharValue];

      v198 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v199 = [v198 objectForKeyedSubscript:@"priConfig"];
      v200 = [v199 objectForKeyedSubscript:@"spect1pepx"];
      v201 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      v202 = [v201 stringValue];
      v203 = [v200 objectForKeyedSubscript:v202];
      v161[3] = [v203 unsignedCharValue];

      v204 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v205 = [v204 objectForKeyedSubscript:@"priConfig"];
      v206 = [v205 objectForKeyedSubscript:@"spect2pepx"];
      v207 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      v208 = [v207 stringValue];
      v209 = [v206 objectForKeyedSubscript:v208];
      v161[4] = [v209 unsignedCharValue];

      ++v160;
      v161 += 8;
    }

    while (v160 != 16);
  }

  else
  {
    v210 = 0;
    v211 = &a3->var12.var0.var0[2].var0[3].var0[3].var0[1][0] + 1;
    do
    {
      v212 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v213 = [v212 objectForKeyedSubscript:@"priConfig"];
      v214 = [v213 objectForKeyedSubscript:@"spect1hs1"];
      v215 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      v216 = [v215 stringValue];
      v217 = [v214 objectForKeyedSubscript:v216];
      *(v211 - 3) = [v217 unsignedCharValue];

      v218 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v219 = [v218 objectForKeyedSubscript:@"priConfig"];
      v220 = [v219 objectForKeyedSubscript:@"spect2hs1"];
      v221 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      v222 = [v221 stringValue];
      v223 = [v220 objectForKeyedSubscript:v222];
      *(v211 - 2) = [v223 unsignedCharValue];

      v224 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v225 = [v224 objectForKeyedSubscript:@"priConfig"];
      v226 = [v225 objectForKeyedSubscript:@"spect1hs2"];
      v227 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      v228 = [v227 stringValue];
      v229 = [v226 objectForKeyedSubscript:v228];
      *(v211 - 1) = [v229 unsignedCharValue];

      v230 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v231 = [v230 objectForKeyedSubscript:@"priConfig"];
      v232 = [v231 objectForKeyedSubscript:@"spect2hs2"];
      v233 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      v234 = [v233 stringValue];
      v235 = [v232 objectForKeyedSubscript:v234];
      *v211 = [v235 unsignedCharValue];

      v236 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v237 = [v236 objectForKeyedSubscript:@"priConfig"];
      v238 = [v237 objectForKeyedSubscript:@"spect1hp"];
      v239 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      v240 = [v239 stringValue];
      v241 = [v238 objectForKeyedSubscript:v240];
      v211[1] = [v241 unsignedCharValue];

      v242 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v243 = [v242 objectForKeyedSubscript:@"priConfig"];
      v244 = [v243 objectForKeyedSubscript:@"spect2hp"];
      v245 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      v246 = [v245 stringValue];
      v247 = [v244 objectForKeyedSubscript:v246];
      v211[2] = [v247 unsignedCharValue];

      v248 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v249 = [v248 objectForKeyedSubscript:@"priConfig"];
      v250 = [v249 objectForKeyedSubscript:@"spect1pepx"];
      v251 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      v252 = [v251 stringValue];
      v253 = [v250 objectForKeyedSubscript:v252];
      v211[3] = [v253 unsignedCharValue];

      v254 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v255 = [v254 objectForKeyedSubscript:@"priConfig"];
      v256 = [v255 objectForKeyedSubscript:@"spect2pepx"];
      v257 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      v258 = [v257 stringValue];
      v259 = [v256 objectForKeyedSubscript:v258];
      v211[4] = [v259 unsignedCharValue];

      ++v210;
      v211 += 8;
    }

    while (v210 != 12);
    *(&a3->var12.var0.var0[2].var0[3].var0[5].var0[0][2] + 2) = 0u;
    *(&a3->var12.var0.var0[2].var0[3].var0[5].var0[2][0] + 2) = 0u;
  }

  return 0;
}

- (int)extractDbgDataFor_gmoConfig:(GmoCfgBits *)a3 inIndex:(unsigned int)a4
{
  v6 = a4;
  v7 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:a4];
  v8 = [v7 objectForKeyedSubscript:@"hasData"];
  v9 = [v8 isEqual:MEMORY[0x277CBEC38]];

  if ((v9 & 1) == 0)
  {
    return 1;
  }

  v10 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:v6];
  v11 = [v10 valueForKey:@"init"];

  v12 = [v11 objectForKeyedSubscript:@"config"];
  a3->all = [v12 unsignedIntValue];

  return 0;
}

- (int)extractDbgDataFor_gmoInit:(GmoInitInputs *)a3 inIndex:(unsigned int)a4
{
  v6 = a4;
  v7 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:a4];
  v8 = [v7 objectForKeyedSubscript:@"hasData"];
  v9 = [v8 isEqual:MEMORY[0x277CBEC38]];

  if (v9)
  {
    v10 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:v6];
    v11 = [v10 valueForKey:@"init"];

    v12 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:v6];
    v13 = [v12 objectForKeyedSubscript:@"metaDataVersion"];
    LODWORD(v10) = [GmoDbgServices compareVersions:v13 toVersion:@"3.0.2"];

    if (v10 == 1)
    {
      v14 = [v11 objectForKeyedSubscript:@"pulseShapeSize"];
      a3->var0.var1 = [v14 unsignedShortValue];
    }

    else
    {
      a3->var0.var1 = 64;
    }

    operator new[]();
  }

  return 1;
}

- (int)extractDbgDataFor_gmoDebug:(GmoDebugData *)a3 inIndex:(unsigned int)a4
{
  v6 = a4;
  v108 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:a4];
  v7 = [v108 objectForKeyedSubscript:@"hasData"];
  v8 = [v7 isEqual:MEMORY[0x277CBEC38]];

  if ((v8 & 1) == 0)
  {
    return 1;
  }

  v9 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:v6];
  v109 = [v9 valueForKey:@"debug"];

  v110 = 0;
  v10 = 0x277CCA000uLL;
  v106 = a3;
  v11 = a3;
  do
  {
    v12 = 0;
    v107 = v11;
    do
    {
      v13 = [v109 objectForKeyedSubscript:{@"operationalSpotLocations10m", v106}];
      v14 = [*(v10 + 2992) numberWithUnsignedLong:v110];
      v15 = [v14 stringValue];
      v16 = [v13 objectForKeyedSubscript:v15];
      v17 = [*(v10 + 2992) numberWithUnsignedLong:v12];
      v18 = [v17 stringValue];
      v19 = [v16 objectForKeyedSubscript:v18];
      v20 = [v19 objectForKeyedSubscript:@"x"];
      [v20 floatValue];
      v11->var0.var0[0].var0[0].var0 = v21;

      v22 = [v109 objectForKeyedSubscript:@"operationalSpotLocations10m"];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      v24 = [v23 stringValue];
      v25 = [v22 objectForKeyedSubscript:v24];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      v27 = [v26 stringValue];
      v28 = [v25 objectForKeyedSubscript:v27];
      v29 = [v28 objectForKeyedSubscript:@"y"];
      [v29 floatValue];
      v11->var0.var0[0].var0[0].var1 = v30;

      v31 = [v109 objectForKeyedSubscript:@"operationalSpotLocations70cm"];
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      v33 = [v32 stringValue];
      v34 = [v31 objectForKeyedSubscript:v33];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      v36 = [v35 stringValue];
      v37 = [v34 objectForKeyedSubscript:v36];
      v38 = [v37 objectForKeyedSubscript:@"x"];
      [v38 floatValue];
      v11->var1.var0[0].var0[0].var0 = v39;

      v40 = [v109 objectForKeyedSubscript:@"operationalSpotLocations70cm"];
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      v42 = [v41 stringValue];
      v43 = [v40 objectForKeyedSubscript:v42];
      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      v45 = [v44 stringValue];
      v46 = [v43 objectForKeyedSubscript:v45];
      v47 = [v46 objectForKeyedSubscript:@"y"];
      [v47 floatValue];
      v11->var1.var0[0].var0[0].var1 = v48;

      v49 = [v109 objectForKeyedSubscript:@"factorySpotLocations10m"];
      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      v51 = [v50 stringValue];
      v52 = [v49 objectForKeyedSubscript:v51];
      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      v54 = [v53 stringValue];
      v55 = [v52 objectForKeyedSubscript:v54];
      v56 = [v55 objectForKeyedSubscript:@"x"];
      [v56 floatValue];
      v11->var2.var0[0].var0[0].var0 = v57;

      v58 = [v109 objectForKeyedSubscript:@"factorySpotLocations10m"];
      v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      v60 = [v59 stringValue];
      v61 = [v58 objectForKeyedSubscript:v60];
      v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      v63 = [v62 stringValue];
      v64 = [v61 objectForKeyedSubscript:v63];
      v65 = [v64 objectForKeyedSubscript:@"y"];
      [v65 floatValue];
      v11->var2.var0[0].var0[0].var1 = v66;

      v67 = [v109 objectForKeyedSubscript:@"factorySpotLocations70cm"];
      v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      v69 = [v68 stringValue];
      v70 = [v67 objectForKeyedSubscript:v69];
      v71 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      v72 = [v71 stringValue];
      v73 = [v70 objectForKeyedSubscript:v72];
      v74 = [v73 objectForKeyedSubscript:@"x"];
      [v74 floatValue];
      v11->var3.var0[0].var0[0].var0 = v75;

      v76 = [v109 objectForKeyedSubscript:@"factorySpotLocations70cm"];
      v77 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      v78 = [v77 stringValue];
      v79 = [v76 objectForKeyedSubscript:v78];
      v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      v81 = [v80 stringValue];
      v82 = [v79 objectForKeyedSubscript:v81];
      v83 = [v82 objectForKeyedSubscript:@"y"];
      [v83 floatValue];
      v11->var3.var0[0].var0[0].var1 = v84;

      ++v12;
      v11 = (v11 + 8);
      v10 = 0x277CCA000;
    }

    while (v12 != 14);
    v11 = &v107->var0.var0[1];
    ++v110;
  }

  while (v110 != 8);
  v85 = [v109 objectForKeyedSubscript:@"operationalSpotLocations10m"];
  v86 = [v85 objectForKeyedSubscript:@"isSphere"];
  v106->var0.var2 = [v86 unsignedCharValue];

  v87 = [v109 objectForKeyedSubscript:@"operationalSpotLocations10m"];
  v88 = [v87 objectForKeyedSubscript:@"calibDistance"];
  [v88 floatValue];
  v106->var0.var1 = v89;

  v90 = [v109 objectForKeyedSubscript:@"operationalSpotLocations70cm"];
  v91 = [v90 objectForKeyedSubscript:@"isSphere"];
  v106->var1.var2 = [v91 unsignedCharValue];

  v92 = [v109 objectForKeyedSubscript:@"operationalSpotLocations70cm"];
  v93 = [v92 objectForKeyedSubscript:@"calibDistance"];
  [v93 floatValue];
  v106->var1.var1 = v94;

  v95 = [v109 objectForKeyedSubscript:@"factorySpotLocations10m"];
  v96 = [v95 objectForKeyedSubscript:@"isSphere"];
  v106->var2.var2 = [v96 unsignedCharValue];

  v97 = [v109 objectForKeyedSubscript:@"factorySpotLocations10m"];
  v98 = [v97 objectForKeyedSubscript:@"calibDistance"];
  [v98 floatValue];
  v106->var2.var1 = v99;

  v100 = [v109 objectForKeyedSubscript:@"factorySpotLocations70cm"];
  v101 = [v100 objectForKeyedSubscript:@"isSphere"];
  v106->var3.var2 = [v101 unsignedCharValue];

  v102 = [v109 objectForKeyedSubscript:@"factorySpotLocations70cm"];
  v103 = [v102 objectForKeyedSubscript:@"calibDistance"];
  [v103 floatValue];
  v106->var3.var1 = v104;

  return 0;
}

- (void)addDbgDataFor_homogClassifier:(const GmoMetrics *)a3 estTols:(const EstTols *)a4
{
  v52 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v52 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v53 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v8 = [v7 valueForKey:@"intermediate"];

  [v8 setValue:v53 forKey:@"homogClassifier"];
  *&v9 = a3->var2;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v53 setObject:v10 forKeyedSubscript:@"nQualRatio"];

  *&v11 = a3->var1;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v53 setObject:v12 forKeyedSubscript:@"avgCoverage"];

  *&v13 = a3->var3;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  [v53 setObject:v14 forKeyedSubscript:@"modelErrQualP95"];

  *&v15 = a3->var6;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  [v53 setObject:v16 forKeyedSubscript:@"calibErrQualP95"];

  *&v17 = a3->var8;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  [v53 setObject:v18 forKeyedSubscript:@"calibErrUnQualP95"];

  *&v19 = a3->var10;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [v53 setObject:v20 forKeyedSubscript:@"calibErrQualP50"];

  *&v21 = a3->var12;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  [v53 setObject:v22 forKeyedSubscript:@"u0Tol"];

  *&v23 = a3->var11;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  [v53 setObject:v24 forKeyedSubscript:@"v0Tol"];

  *&v25 = a3->var0;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  [v53 setObject:v26 forKeyedSubscript:@"ambientLevel"];

  v27 = [MEMORY[0x277CBEB38] dictionary];
  [v53 setValue:v27 forKey:@"nc"];
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var13.var0];
  [v27 setObject:v28 forKeyedSubscript:@"countTopLeft"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var13.var1];
  [v27 setObject:v29 forKeyedSubscript:@"countLeft"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var13.var2];
  [v27 setObject:v30 forKeyedSubscript:@"countBottomLeft"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var13.var3];
  [v27 setObject:v31 forKeyedSubscript:@"countTop"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var13.var4];
  [v27 setObject:v32 forKeyedSubscript:@"countCenter"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var13.var5];
  [v27 setObject:v33 forKeyedSubscript:@"countBottom"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var13.var6];
  [v27 setObject:v34 forKeyedSubscript:@"countTopRight"];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var13.var7];
  [v27 setObject:v35 forKeyedSubscript:@"countRight"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var13.var8];
  [v27 setObject:v36 forKeyedSubscript:@"countBottomRight"];

  v37 = [MEMORY[0x277CBEB38] dictionary];
  [v53 setValue:v37 forKey:@"estTols"];
  *&v38 = a4->var0;
  v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  [v37 setObject:v39 forKeyedSubscript:@"efl"];

  *&v40 = a4->var1;
  v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
  [v37 setObject:v41 forKeyedSubscript:@"u0"];

  *&v42 = a4->var2;
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
  [v37 setObject:v43 forKeyedSubscript:@"v0"];

  *&v44 = a4->var3;
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
  [v37 setObject:v45 forKeyedSubscript:@"tiltX"];

  *&v46 = a4->var4;
  v47 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
  [v37 setObject:v47 forKeyedSubscript:@"tiltY"];

  *&v48 = a4->var5;
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  [v37 setObject:v49 forKeyedSubscript:@"tiltZ"];

  *&v50 = a4->var6;
  v51 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
  [v37 setObject:v51 forKeyedSubscript:@"count"];
}

- (void)addDbgDataFor_spotLocation:(id *)a3 withName:(id)a4
{
  v26 = a4;
  v6 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v7 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v8 = [v7 valueForKey:@"debug"];

  v27 = [MEMORY[0x277CBEB38] dictionary];
  *&v9 = a3->var1;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v27 setObject:v10 forKeyedSubscript:@"calibDistance"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var2];
  [v27 setObject:v11 forKeyedSubscript:@"isSphere"];

  v12 = 0;
  p_var1 = &a3->var0[0].var0[0].var1;
  do
  {
    v29 = v12;
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = 0;
    v28 = p_var1;
    v16 = p_var1;
    do
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
      *&v18 = *(v16 - 1);
      v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
      [v17 setObject:v19 forKeyedSubscript:@"x"];

      *&v20 = *v16;
      v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
      [v17 setObject:v21 forKeyedSubscript:@"y"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
      v23 = [v22 stringValue];
      [v14 setObject:v17 forKeyedSubscript:v23];

      ++v15;
      v16 += 2;
    }

    while (v15 != 14);
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v29];
    v25 = [v24 stringValue];
    [v27 setObject:v14 forKeyedSubscript:v25];

    v12 = v29 + 1;
    p_var1 = v28 + 28;
  }

  while (v29 != 7);
  [v8 setObject:v27 forKeyedSubscript:v26];
}

- (void)addDbgDataFor_gtErrP95:(const float *)a3 smoothedErrP95:(const float *)a4 gtErrP95Sop:(const float *)a5 smoothedErrP95Sop:(const float *)a6
{
  v20 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v11 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v21 = [v11 valueForKey:@"debug"];

  *&v12 = *a3;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  [v21 setObject:v13 forKeyedSubscript:@"globalErrP95"];

  *&v14 = *a4;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [v21 setObject:v15 forKeyedSubscript:@"smoothedErrP95"];

  *&v16 = *a5;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [v21 setObject:v17 forKeyedSubscript:@"globalErrP95Sop"];

  *&v18 = *a6;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  [v21 setObject:v19 forKeyedSubscript:@"smoothedErrP95Sop"];
}

- (void)addDbgDataFor_itpQual:(const float *)a3 itpQualSop:(const float *)a4
{
  v12 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v7 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v13 = [v7 valueForKey:@"debug"];

  *&v8 = *a3;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v13 setObject:v9 forKeyedSubscript:@"itpQual"];

  *&v10 = *a4;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  [v13 setObject:v11 forKeyedSubscript:@"itpQualSop"];
}

- (void)addDbgDataFor_getAnchorsWithHysteresis:(id *)a3 currAnchors:(const PDAnchors *)a4 snrHysteresisPct:(float)a5 anchorsWithHist:(PDAnchors *)a6 violations:(spViolations *)a7 numOfClippedSpots:(unint64_t)a8 anchorMoveIdx:(void *)a9 spotLocationsAtRefDist:(id *)a10 numQualifiedSpot:(unint64_t)a11 anchorsShift:(PDAnchors *)a12 anchorsMoved:(unint64_t)a13
{
  v109 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v109 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v110 = [MEMORY[0x277CBEB38] dictionary];
  v108 = [MEMORY[0x277CBEB38] dictionary];
  v19 = [MEMORY[0x277CBEB38] dictionary];
  [v110 setValue:v108 forKey:@"in"];
  [v110 setValue:v19 forKey:@"out"];
  v20 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v21 = [v20 valueForKey:@"intermediate"];

  v107 = v21;
  [v21 setValue:v110 forKey:@"getAnchorsWithHysteresis"];
  v116 = v19;
  v113 = a6;
  v106 = a7;
  v115 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0;
  p_var1 = &a3->var0[0].var0[0].var1;
  do
  {
    v24 = [MEMORY[0x277CBEB38] dictionary];
    v25 = 0;
    v121 = p_var1;
    v26 = p_var1;
    do
    {
      v27 = [MEMORY[0x277CBEB38] dictionary];
      *&v28 = *(v26 - 1);
      v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
      [v27 setObject:v29 forKeyedSubscript:@"x"];

      *&v30 = *v26;
      v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
      [v27 setObject:v31 forKeyedSubscript:@"y"];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v25];
      v33 = [v32 stringValue];
      [v24 setObject:v27 forKeyedSubscript:v33];

      ++v25;
      v26 += 2;
    }

    while (v25 != 14);
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v22];
    v35 = [v34 stringValue];
    [v115 setObject:v24 forKeyedSubscript:v35];

    ++v22;
    p_var1 = v121 + 28;
  }

  while (v22 != 8);
  [v108 setObject:v115 forKeyedSubscript:@"spotLocations"];
  v112 = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0;
  p_useNorthHS2 = &a4->banks[0].anchors[0].useNorthHS2;
  do
  {
    v117 = v36;
    v37 = [MEMORY[0x277CBEB38] dictionary];
    v38 = 0;
    v39 = p_useNorthHS2;
    do
    {
      v40 = [MEMORY[0x277CBEB38] dictionary];
      v41 = [MEMORY[0x277CCABB0] numberWithChar:*(v39 - 2)];
      [v40 setObject:v41 forKeyedSubscript:@"x"];

      v42 = [MEMORY[0x277CCABB0] numberWithChar:*(v39 - 1)];
      [v40 setObject:v42 forKeyedSubscript:@"y"];

      v43 = [MEMORY[0x277CCABB0] numberWithBool:*v39];
      [v40 setObject:v43 forKeyedSubscript:@"useNorthHS2"];

      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v38];
      v45 = [v44 stringValue];
      [v37 setObject:v40 forKeyedSubscript:v45];

      ++v38;
      v39 += 3;
    }

    while (v38 != 14);
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v117];
    v47 = [v46 stringValue];
    [v112 setObject:v37 forKeyedSubscript:v47];

    v36 = v117 + 1;
    p_useNorthHS2 += 42;
  }

  while (v117 != 7);
  [v108 setObject:v112 forKeyedSubscript:@"currAnchors"];
  *&v48 = a5;
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  [v108 setValue:v49 forKey:@"snrHysteresisPct"];

  v111 = [MEMORY[0x277CBEB38] dictionary];
  v50 = 0;
  v51 = &v113->banks[0].anchors[0].useNorthHS2;
  do
  {
    v123 = v50;
    v52 = [MEMORY[0x277CBEB38] dictionary];
    v53 = 0;
    v118 = v51;
    v54 = v51;
    do
    {
      v55 = [MEMORY[0x277CBEB38] dictionary];
      v56 = [MEMORY[0x277CCABB0] numberWithChar:*(v54 - 2)];
      [v55 setObject:v56 forKeyedSubscript:@"x"];

      v57 = [MEMORY[0x277CCABB0] numberWithChar:*(v54 - 1)];
      [v55 setObject:v57 forKeyedSubscript:@"y"];

      v58 = [MEMORY[0x277CCABB0] numberWithBool:*v54];
      [v55 setObject:v58 forKeyedSubscript:@"useNorthHS2"];

      v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v53];
      v60 = [v59 stringValue];
      [v52 setObject:v55 forKeyedSubscript:v60];

      ++v53;
      v54 += 3;
    }

    while (v53 != 14);
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v123];
    v62 = [v61 stringValue];
    [v111 setObject:v52 forKeyedSubscript:v62];

    v50 = v123 + 1;
    v51 = v118 + 42;
  }

  while (v123 != 7);
  [v116 setObject:v111 forKeyedSubscript:@"anchorsWithHist"];
  v114 = [MEMORY[0x277CBEB38] dictionary];
  v63 = [MEMORY[0x277CCABB0] numberWithBool:v106->var0];
  [v114 setObject:v63 forKeyedSubscript:@"violationFlag"];

  v64 = &v106->var1[0][0].var1;
  v65 = 0;
  do
  {
    v124 = v65;
    v66 = [MEMORY[0x277CBEB38] dictionary];
    v67 = 0;
    v119 = v64;
    v68 = v64;
    do
    {
      v69 = [MEMORY[0x277CBEB38] dictionary];
      v70 = [MEMORY[0x277CCABB0] numberWithBool:*(v68 - 1)];
      [v69 setObject:v70 forKeyedSubscript:@"boundaryFlag"];

      v71 = [MEMORY[0x277CCABB0] numberWithBool:*v68];
      [v69 setObject:v71 forKeyedSubscript:@"boundingBoxFlag"];

      v72 = [MEMORY[0x277CCABB0] numberWithBool:v68[1]];
      [v69 setObject:v72 forKeyedSubscript:@"verticalSepFlag"];

      v73 = [MEMORY[0x277CCABB0] numberWithBool:v68[2]];
      [v69 setObject:v73 forKeyedSubscript:@"nearestNeighborFlag"];

      v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v67];
      v75 = [v74 stringValue];
      [v66 setObject:v69 forKeyedSubscript:v75];

      ++v67;
      v68 += 4;
    }

    while (v67 != 14);
    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v124];
    v77 = [v76 stringValue];
    [v114 setObject:v66 forKeyedSubscript:v77];

    v65 = v124 + 1;
    v64 = v119 + 56;
  }

  while (v124 != 7);
  [v116 setObject:v114 forKeyedSubscript:@"violations"];
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a8];
  [v116 setObject:v78 forKeyedSubscript:@"numOfClippedSpots"];

  v79 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 8; ++i)
  {
    v81 = [MEMORY[0x277CBEB38] dictionary];
    for (j = 0; j != 14; ++j)
    {
      v83 = [MEMORY[0x277CBEB38] dictionary];
      v84 = [MEMORY[0x277CCABB0] numberWithBool:*(a9 + j)];
      [v83 setObject:v84 forKeyedSubscript:@"val"];

      v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:j];
      v86 = [v85 stringValue];
      [v81 setObject:v83 forKeyedSubscript:v86];
    }

    v87 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i];
    v88 = [v87 stringValue];
    [v79 setObject:v81 forKeyedSubscript:v88];

    a9 = a9 + 14;
    v89 = 0x277CBE000uLL;
  }

  [v116 setObject:v79 forKeyedSubscript:@"anchorMoveIdx"];
  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a13];
  [v116 setObject:v90 forKeyedSubscript:@"anchorsMoved"];

  v91 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a11];
  [v116 setObject:v91 forKeyedSubscript:@"numQualSpots"];
  v120 = v79;

  v125 = [MEMORY[0x277CBEB38] dictionary];
  v92 = 0;
  v93 = &a10->var0[0].var0[0].var1;
  do
  {
    v94 = [*(v89 + 2872) dictionary];
    v95 = 0;
    v127 = v93;
    do
    {
      v96 = [MEMORY[0x277CBEB38] dictionary];
      *&v97 = *(v93 - 1);
      v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
      [v96 setObject:v98 forKeyedSubscript:@"x"];

      *&v99 = *v93;
      v100 = [MEMORY[0x277CCABB0] numberWithFloat:v99];
      [v96 setObject:v100 forKeyedSubscript:@"y"];

      v101 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v95];
      v102 = [v101 stringValue];
      [v94 setObject:v96 forKeyedSubscript:v102];

      ++v95;
      v93 += 2;
    }

    while (v95 != 14);
    v103 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v92];
    v104 = [v103 stringValue];
    [v125 setObject:v94 forKeyedSubscript:v104];

    ++v92;
    v93 = v127 + 28;
    v89 = 0x277CBE000;
  }

  while (v92 != 8);
  [v116 setObject:v125 forKeyedSubscript:@"spotLocationsAtRefDist"];
}

- (void)addDbgDataFor_globalEstimation:(id *)a3 spotLocationAtRefDist:(id *)a4 smoothedSNR:(PeridotSpotValues<common:(const void *)a6 :(void *)a7 PeridotSpotScalarValue<float>> *)a5 validSpotsIndexes:(GlobalEstimationCtrl *)a8 result:hCtrl:
{
  v107 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v107 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v108 = [MEMORY[0x277CBEB38] dictionary];
  v106 = [MEMORY[0x277CBEB38] dictionary];
  v105 = [MEMORY[0x277CBEB38] dictionary];
  v104 = [MEMORY[0x277CBEB38] dictionary];
  [v108 setValue:v106 forKey:@"ctrl"];
  [v108 setValue:v105 forKey:@"in"];
  [v108 setValue:v104 forKey:@"out"];
  v13 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v14 = [v13 valueForKey:@"intermediate"];

  v103 = v14;
  [v14 setValue:v108 forKey:@"globalEstimation"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:a8->attemptHomog];
  [v106 setObject:v15 forKeyedSubscript:@"attemptHomog"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:a8->doHomog];
  [v106 setObject:v16 forKeyedSubscript:@"doHomog"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:a8->hDone];
  [v106 setObject:v17 forKeyedSubscript:@"hDone"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:a8->hOk];
  [v106 setObject:v18 forKeyedSubscript:@"hOk"];

  v111 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0;
  p_var1 = &a3->var0[0].var0[0].var1;
  do
  {
    v117 = v19;
    v21 = [MEMORY[0x277CBEB38] dictionary];
    v22 = 0;
    v114 = p_var1;
    v23 = p_var1;
    do
    {
      v24 = [MEMORY[0x277CBEB38] dictionary];
      *&v25 = *(v23 - 1);
      v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
      [v24 setObject:v26 forKeyedSubscript:@"x"];

      *&v27 = *v23;
      v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
      [v24 setObject:v28 forKeyedSubscript:@"y"];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v22];
      v30 = [v29 stringValue];
      [v21 setObject:v24 forKeyedSubscript:v30];

      ++v22;
      v23 += 2;
    }

    while (v22 != 14);
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v117];
    v32 = [v31 stringValue];
    [v111 setObject:v21 forKeyedSubscript:v32];

    v19 = v117 + 1;
    p_var1 = v114 + 28;
  }

  while (v117 != 7);
  [v105 setObject:v111 forKeyedSubscript:@"refLocations"];

  v112 = [MEMORY[0x277CBEB38] dictionary];
  v33 = 0;
  v34 = &a4->var0[0].var0[0].var1;
  do
  {
    v118 = v33;
    v35 = [MEMORY[0x277CBEB38] dictionary];
    v36 = 0;
    v115 = v34;
    v37 = v34;
    do
    {
      v38 = [MEMORY[0x277CBEB38] dictionary];
      *&v39 = *(v37 - 1);
      v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
      [v38 setObject:v40 forKeyedSubscript:@"x"];

      *&v41 = *v37;
      v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
      [v38 setObject:v42 forKeyedSubscript:@"y"];

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v36];
      v44 = [v43 stringValue];
      [v35 setObject:v38 forKeyedSubscript:v44];

      ++v36;
      v37 += 2;
    }

    while (v36 != 14);
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v118];
    v46 = [v45 stringValue];
    [v112 setObject:v35 forKeyedSubscript:v46];

    v33 = v118 + 1;
    v34 = v115 + 28;
  }

  while (v118 != 7);
  [v105 setObject:v112 forKeyedSubscript:@"spotLocationAtRefDist"];

  v47 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 8; ++i)
  {
    v49 = [MEMORY[0x277CBEB38] dictionary];
    for (j = 0; j != 14; ++j)
    {
      *&v50 = a5->var0[0].var0[j].var0;
      v52 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:j];
      v54 = [v53 stringValue];
      [v49 setObject:v52 forKeyedSubscript:v54];
    }

    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i];
    v56 = [v55 stringValue];
    [v47 setObject:v49 forKeyedSubscript:v56];

    a5 = (a5 + 56);
  }

  [v105 setObject:v47 forKeyedSubscript:@"smoothedSNR"];

  v57 = [MEMORY[0x277CBEB38] dictionary];
  for (k = 0; k != 8; ++k)
  {
    v59 = [MEMORY[0x277CBEB38] dictionary];
    v60 = a6 + 24 * k;
    v61 = *v60;
    v62 = *(v60 + 1);
    if (*v60 != v62)
    {
      v63 = 0;
      do
      {
        v64 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v61];
        v65 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v63];
        v66 = [v65 stringValue];
        [v59 setObject:v64 forKeyedSubscript:v66];

        ++v63;
        ++v61;
      }

      while (v61 != v62);
    }

    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:k];
    v68 = [v67 stringValue];
    [v57 setObject:v59 forKeyedSubscript:v68];
    v69 = 0x277CBE000uLL;
  }

  [v105 setObject:v57 forKeyedSubscript:@"validSpotsIndexes"];

  v70 = [MEMORY[0x277CBEB38] dictionary];
  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a7];
  [v70 setObject:v71 forKeyedSubscript:@"trials"];

  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a7 + 1)];
  [v70 setObject:v72 forKeyedSubscript:@"nInliers"];

  LODWORD(v73) = *(a7 + 22);
  v74 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
  [v70 setObject:v74 forKeyedSubscript:@"modelError"];

  v75 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a7 + 7))
  {
    v76 = 0;
    do
    {
      v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a7 + 2) + 4 * v76)];
      v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v76];
      v79 = [v78 stringValue];
      [v75 setObject:v77 forKeyedSubscript:v79];

      ++v76;
    }

    while (v76 < *(a7 + 7));
  }

  [v70 setObject:v75 forKeyedSubscript:@"inliers"];
  v113 = v70;

  v80 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a7 + 16))
  {
    v81 = 0;
    do
    {
      v82 = [MEMORY[0x277CBEB38] dictionary];
      v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v81];
      v84 = [v83 stringValue];
      [v80 setObject:v82 forKeyedSubscript:v84];

      LODWORD(v85) = *(a7 + 17);
      if (v85)
      {
        v86 = 0;
        do
        {
          v87 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a7 + 7) + 8 * (v81 * v85) + 8 * v86)];
          v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v86];
          v89 = [v88 stringValue];
          [v82 setObject:v87 forKeyedSubscript:v89];

          ++v86;
          v85 = *(a7 + 17);
        }

        while (v86 < v85);
      }

      v81 = (v81 + 1);
    }

    while (v81 < *(a7 + 16));
  }

  [v113 setObject:v80 forKeyedSubscript:@"hModel"];

  v116 = [MEMORY[0x277CBEB38] dictionary];
  v90 = 0;
  v91 = a7 + 96;
  do
  {
    v92 = [*(v69 + 2872) dictionary];
    v93 = 0;
    v119 = v91;
    do
    {
      v94 = [MEMORY[0x277CBEB38] dictionary];
      LODWORD(v95) = *(v91 - 1);
      v96 = [MEMORY[0x277CCABB0] numberWithFloat:v95];
      [v94 setObject:v96 forKeyedSubscript:@"x"];

      LODWORD(v97) = *v91;
      v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
      [v94 setObject:v98 forKeyedSubscript:@"y"];

      v99 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v93];
      v100 = [v99 stringValue];
      [v92 setObject:v94 forKeyedSubscript:v100];

      ++v93;
      v91 += 2;
    }

    while (v93 != 14);
    v101 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v90];
    [v101 stringValue];
    v102 = v69 = 0x277CBE000;
    [v116 setObject:v92 forKeyedSubscript:v102];

    ++v90;
    v91 = v119 + 28;
  }

  while (v90 != 8);
  [v113 setObject:v116 forKeyedSubscript:@"newSpotLocAtRefDist"];
  [v104 setObject:v113 forKeyedSubscript:@"result"];
}

- (void)addDbgDataFor_findSpotLocation:(SpecsResults *)a3 withAnchors:(const SpConfig *)a4 spotLocationEstimation:(void *)a5 outBound:(void *)a6
{
  v79 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v79 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v80 = [MEMORY[0x277CBEB38] dictionary];
  v78 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v80 setValue:v78 forKey:@"in"];
  [v80 setValue:v10 forKey:@"out"];
  v11 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v12 = [v11 valueForKey:@"intermediate"];

  v76 = v12;
  [v12 setValue:v80 forKey:@"findSpotLocation"];
  v77 = [MEMORY[0x277CBEB38] dictionary];
  v74 = a6;
  v75 = a5;
  v85 = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0;
  v81 = a3;
  v14 = a3->var0[0][1];
  v84 = v10;
  do
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v16 = 0;
    v17 = v14;
    do
    {
      v18 = [MEMORY[0x277CBEB38] dictionary];
      *&v19 = *(v17 - 14);
      v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
      v22 = [v21 stringValue];
      [v18 setObject:v20 forKeyedSubscript:v22];

      *&v23 = *v17;
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
      v26 = [v25 stringValue];
      [v18 setObject:v24 forKeyedSubscript:v26];

      *&v27 = v17[14];
      v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2];
      v30 = [v29 stringValue];
      [v18 setObject:v28 forKeyedSubscript:v30];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v16];
      v32 = [v31 stringValue];
      [v15 setObject:v18 forKeyedSubscript:v32];

      ++v16;
      v17 += 42;
    }

    while (v16 != 4);
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v13];
    v34 = [v33 stringValue];
    [v85 setObject:v15 forKeyedSubscript:v34];

    ++v13;
    ++v14;
  }

  while (v13 != 14);
  [v77 setObject:v85 forKeyedSubscript:@"specQs"];
  v83 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 14; ++i)
  {
    *&v35 = v81->var1[i];
    v37 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i];
    v39 = [v38 stringValue];
    [v83 setObject:v37 forKeyedSubscript:v39];
  }

  [v77 setObject:v83 forKeyedSubscript:@"specSnr"];
  v40 = [MEMORY[0x277CBEB38] dictionary];
  for (j = 0; j != 14; ++j)
  {
    v42 = [MEMORY[0x277CBEB38] dictionary];
    v43 = [MEMORY[0x277CCABB0] numberWithBool:v81->var2[0][j]];
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v45 = [v44 stringValue];
    [v42 setObject:v43 forKeyedSubscript:v45];

    v46 = [MEMORY[0x277CCABB0] numberWithBool:v81->var2[1][j]];
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
    v48 = [v47 stringValue];
    [v42 setObject:v46 forKeyedSubscript:v48];

    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:j];
    v50 = [v49 stringValue];
    [v40 setObject:v42 forKeyedSubscript:v50];
  }

  [v77 setObject:v40 forKeyedSubscript:@"specQsValid"];
  [v78 setObject:v77 forKeyedSubscript:@"specsOut"];
  v82 = [MEMORY[0x277CBEB38] dictionary];
  for (k = 0; k != 14; ++k)
  {
    v52 = [MEMORY[0x277CBEB38] dictionary];
    v53 = [MEMORY[0x277CCABB0] numberWithChar:a4->var0[k]];
    [v52 setObject:v53 forKeyedSubscript:@"x"];

    v54 = [MEMORY[0x277CCABB0] numberWithChar:a4->var1[k]];
    [v52 setObject:v54 forKeyedSubscript:@"y"];

    v55 = [MEMORY[0x277CCABB0] numberWithBool:a4->var2[k]];
    [v52 setObject:v55 forKeyedSubscript:@"useNorthHS2"];

    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:k];
    v57 = [v56 stringValue];
    [v82 setObject:v52 forKeyedSubscript:v57];
  }

  [v78 setObject:v82 forKeyedSubscript:@"anchors"];
  v87 = v40;
  v58 = [MEMORY[0x277CBEB38] dictionary];
  v59 = 0;
  v60 = (v75 + 8);
  do
  {
    v61 = [MEMORY[0x277CBEB38] dictionary];
    v62 = [MEMORY[0x277CCABB0] numberWithDouble:*(v60 - 1)];
    [v61 setObject:v62 forKeyedSubscript:@"x"];

    v63 = [MEMORY[0x277CCABB0] numberWithDouble:*v60];
    [v61 setObject:v63 forKeyedSubscript:@"y"];

    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v59];
    v65 = [v64 stringValue];
    [v58 setObject:v61 forKeyedSubscript:v65];

    ++v59;
    v60 += 2;
  }

  while (v59 != 14);
  [v84 setObject:v58 forKeyedSubscript:@"spotLocationEstimation"];
  v66 = [MEMORY[0x277CBEB38] dictionary];
  v67 = 0;
  v68 = (v74 + 1);
  do
  {
    v69 = [MEMORY[0x277CBEB38] dictionary];
    v70 = [MEMORY[0x277CCABB0] numberWithBool:*(v68 - 1)];
    [v69 setObject:v70 forKeyedSubscript:@"outBound0"];

    v71 = [MEMORY[0x277CCABB0] numberWithBool:*v68];
    [v69 setObject:v71 forKeyedSubscript:@"outBound1"];

    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v67];
    v73 = [v72 stringValue];
    [v66 setObject:v69 forKeyedSubscript:v73];

    ++v67;
    v68 += 2;
  }

  while (v67 != 14);
  [v84 setObject:v66 forKeyedSubscript:@"outBound"];
}

- (void)addDbgDataFor_gmoBankOutput:(id *)a3 anchorsWithHist:(const PDAnchors *)a4 spotLocationsAtRefDist:(id *)a5
{
  v52 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v52 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v53 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v9 setObject:v53 forKeyedSubscript:@"output"];
  v56 = a4;
  v51 = a5;

  v55 = [MEMORY[0x277CBEB38] dictionary];
  v10 = 0;
  p_var1 = &a3->var0[0].var0[0].var1;
  do
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v13 = 0;
    v59 = p_var1;
    do
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
      *&v15 = *(p_var1 - 1);
      v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
      [v14 setObject:v16 forKeyedSubscript:@"x"];

      *&v17 = *p_var1;
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
      [v14 setObject:v18 forKeyedSubscript:@"y"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v13];
      v20 = [v19 stringValue];
      [v12 setObject:v14 forKeyedSubscript:v20];

      ++v13;
      p_var1 += 2;
    }

    while (v13 != 14);
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
    v22 = [v21 stringValue];
    [v55 setObject:v12 forKeyedSubscript:v22];

    ++v10;
    p_var1 = v59 + 28;
  }

  while (v10 != 8);
  [v53 setObject:v55 forKeyedSubscript:@"smoothedSpotLocations"];
  v54 = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0;
  p_useNorthHS2 = &v56->banks[0].anchors[0].useNorthHS2;
  do
  {
    v60 = v23;
    v25 = [MEMORY[0x277CBEB38] dictionary];
    v26 = 0;
    v57 = p_useNorthHS2;
    do
    {
      v27 = [MEMORY[0x277CBEB38] dictionary];
      v28 = [MEMORY[0x277CCABB0] numberWithChar:*(p_useNorthHS2 - 2)];
      [v27 setObject:v28 forKeyedSubscript:@"x"];

      v29 = [MEMORY[0x277CCABB0] numberWithChar:*(p_useNorthHS2 - 1)];
      [v27 setObject:v29 forKeyedSubscript:@"y"];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:*p_useNorthHS2];
      [v27 setObject:v30 forKeyedSubscript:@"useNorthHS2"];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v26];
      v32 = [v31 stringValue];
      [v25 setObject:v27 forKeyedSubscript:v32];

      ++v26;
      p_useNorthHS2 += 3;
    }

    while (v26 != 14);
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v60];
    v34 = [v33 stringValue];
    [v54 setObject:v25 forKeyedSubscript:v34];

    v23 = v60 + 1;
    p_useNorthHS2 = v57 + 42;
  }

  while (v60 != 7);
  [v53 setObject:v54 forKeyedSubscript:@"anchors"];
  v58 = [MEMORY[0x277CBEB38] dictionary];
  *&v35 = v51->var1;
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
  [v58 setObject:v36 forKeyedSubscript:@"calibDistance"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v51->var2];
  [v58 setObject:v37 forKeyedSubscript:@"isSphere"];

  v38 = 0;
  v39 = &v51->var0[0].var0[0].var1;
  do
  {
    v40 = [MEMORY[0x277CBEB38] dictionary];
    v41 = 0;
    v61 = v39;
    do
    {
      v42 = [MEMORY[0x277CBEB38] dictionary];
      LODWORD(v43) = *(v39 - 1);
      v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
      [v42 setObject:v44 forKeyedSubscript:@"x"];

      LODWORD(v45) = *v39;
      v46 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
      [v42 setObject:v46 forKeyedSubscript:@"y"];

      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v41];
      v48 = [v47 stringValue];
      [v40 setObject:v42 forKeyedSubscript:v48];

      ++v41;
      v39 += 2;
    }

    while (v41 != 14);
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v38];
    v50 = [v49 stringValue];
    [v58 setObject:v40 forKeyedSubscript:v50];

    ++v38;
    v39 = v61 + 28;
  }

  while (v38 != 8);
  [v53 setObject:v58 forKeyedSubscript:@"globalSpotLocations"];
}

- (void)addDbgDataFor_gmoBankInput:(const GmoProcessBankInputs *)a3
{
  v157 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v157 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v4 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v158 = [v4 valueForKey:@"input"];

  v5 = [MEMORY[0x277CCABB0] numberWithLong:a3->var0];
  [v158 setObject:v5 forKeyedSubscript:@"bankId"];

  v6 = [MEMORY[0x277CCABB0] numberWithLong:a3->var1];
  [v158 setObject:v6 forKeyedSubscript:@"bankIndx"];

  v7 = [MEMORY[0x277CCABB0] numberWithLong:a3->var2];
  [v158 setObject:v7 forKeyedSubscript:@"frameIdx"];

  v8 = [MEMORY[0x277CCABB0] numberWithLong:a3->var3];
  [v158 setObject:v8 forKeyedSubscript:@"phaseNum"];

  v9 = [MEMORY[0x277CCABB0] numberWithLong:a3->var4];
  [v158 setObject:v9 forKeyedSubscript:@"priNum"];

  v10 = [MEMORY[0x277CCABB0] numberWithLong:a3->var6];
  [v158 setObject:v10 forKeyedSubscript:@"cfgUpdateId"];

  *&v11 = a3->var7;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v158 setObject:v12 forKeyedSubscript:@"sensorTemperature"];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:a3->var8];
  [v158 setObject:v13 forKeyedSubscript:@"timestamp"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:a3->var9];
  [v158 setObject:v14 forKeyedSubscript:@"internalFwError"];

  v154 = [MEMORY[0x277CBEB38] dictionary];
  *&v15 = a3->var5[0];
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
  v18 = [v17 stringValue];
  [v154 setObject:v16 forKeyedSubscript:v18];

  *&v19 = a3->var5[1];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
  v22 = [v21 stringValue];
  [v154 setObject:v20 forKeyedSubscript:v22];

  *&v23 = a3->var5[2];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2];
  v26 = [v25 stringValue];
  [v154 setObject:v24 forKeyedSubscript:v26];

  [v158 setObject:v154 forKeyedSubscript:@"lsb"];
  v160 = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0;
  v28 = &a3->var10.var0[0].var0[1][2];
  do
  {
    v29 = [MEMORY[0x277CBEB38] dictionary];
    v30 = [MEMORY[0x277CBEB38] dictionary];
    *&v31 = *(v28 - 4);
    v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
    [v30 setObject:v32 forKeyedSubscript:@"confidence"];

    *&v33 = *(v28 - 5);
    v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
    [v30 setObject:v34 forKeyedSubscript:@"tof"];

    *&v35 = *(v28 - 3);
    v36 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
    [v30 setObject:v36 forKeyedSubscript:@"na"];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v38 = [v37 stringValue];
    [v29 setObject:v30 forKeyedSubscript:v38];

    v39 = [MEMORY[0x277CBEB38] dictionary];
    *&v40 = *(v28 - 1);
    v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
    [v39 setObject:v41 forKeyedSubscript:@"confidence"];

    *&v42 = *(v28 - 2);
    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
    [v39 setObject:v43 forKeyedSubscript:@"tof"];

    *&v44 = *v28;
    v45 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
    [v39 setObject:v45 forKeyedSubscript:@"na"];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1];
    v47 = [v46 stringValue];
    [v29 setObject:v39 forKeyedSubscript:v47];

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
    v49 = [v48 stringValue];
    [v160 setObject:v29 forKeyedSubscript:v49];

    ++v27;
    v28 += 6;
  }

  while (v27 != 14);
  [v158 setObject:v160 forKeyedSubscript:@"userOutput"];
  v159 = [MEMORY[0x277CBEB38] dictionary];
  v50 = 0;
  v51 = &a3->var10.var0[7].var0[2][1];
  do
  {
    v52 = [MEMORY[0x277CBEB38] dictionary];
    v53 = [MEMORY[0x277CBEB38] dictionary];
    v54 = [MEMORY[0x277CBEB38] dictionary];
    v55 = [MEMORY[0x277CBEB38] dictionary];
    *&v56 = *(v51 - 6);
    v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
    [v55 setObject:v57 forKeyedSubscript:@"confidence"];

    *&v58 = *(v51 - 7);
    v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
    [v55 setObject:v59 forKeyedSubscript:@"tof"];

    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v61 = [v60 stringValue];
    [v53 setObject:v55 forKeyedSubscript:v61];

    v62 = [MEMORY[0x277CBEB38] dictionary];
    *&v63 = *(v51 - 2);
    v64 = [MEMORY[0x277CCABB0] numberWithFloat:v63];
    [v62 setObject:v64 forKeyedSubscript:@"confidence"];

    *&v65 = *(v51 - 3);
    v66 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
    [v62 setObject:v66 forKeyedSubscript:@"tof"];

    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v68 = [v67 stringValue];
    [v54 setObject:v62 forKeyedSubscript:v68];

    v69 = [MEMORY[0x277CBEB38] dictionary];
    *&v70 = *(v51 - 4);
    v71 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
    [v69 setObject:v71 forKeyedSubscript:@"confidence"];

    *&v72 = *(v51 - 5);
    v73 = [MEMORY[0x277CCABB0] numberWithFloat:v72];
    [v69 setObject:v73 forKeyedSubscript:@"tof"];

    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1];
    v75 = [v74 stringValue];
    [v53 setObject:v69 forKeyedSubscript:v75];

    v76 = [MEMORY[0x277CBEB38] dictionary];
    *&v77 = *v51;
    v78 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
    [v76 setObject:v78 forKeyedSubscript:@"confidence"];

    *&v79 = *(v51 - 1);
    v80 = [MEMORY[0x277CCABB0] numberWithFloat:v79];
    [v76 setObject:v80 forKeyedSubscript:@"tof"];

    v81 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1];
    v82 = [v81 stringValue];
    [v54 setObject:v76 forKeyedSubscript:v82];

    [v52 setObject:v53 forKeyedSubscript:@"hs"];
    [v52 setObject:v54 forKeyedSubscript:@"hp"];
    v83 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v50];
    v84 = [v83 stringValue];
    [v159 setObject:v52 forKeyedSubscript:v84];

    ++v50;
    v51 += 8;
  }

  while (v50 != 14);
  [v158 setObject:v159 forKeyedSubscript:@"spotDepth"];
  v152 = [MEMORY[0x277CBEB38] dictionary];
  v153 = [MEMORY[0x277CBEB38] dictionary];
  if (a3->var4)
  {
    v155 = 0;
    do
    {
      v85 = [MEMORY[0x277CBEB38] dictionary];
      v162 = v85;
      if (a3->var3)
      {
        v86 = 0;
        do
        {
          v167 = [MEMORY[0x277CBEB38] dictionary];
          v87 = 0;
          v165 = v86;
          v88 = a3->var11.var0[56 * v155 + 2 + 14 * v86].var0[2];
          do
          {
            v89 = [MEMORY[0x277CBEB38] dictionary];
            v90 = 0;
            v91 = v88;
            do
            {
              v92 = [MEMORY[0x277CBEB38] dictionary];
              *&v93 = *(v91 - 2);
              v94 = [MEMORY[0x277CCABB0] numberWithFloat:v93];
              v95 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
              v96 = [v95 stringValue];
              [v92 setObject:v94 forKeyedSubscript:v96];

              *&v97 = *(v91 - 1);
              v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
              v99 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1];
              v100 = [v99 stringValue];
              [v92 setObject:v98 forKeyedSubscript:v100];

              *&v101 = *v91;
              v102 = [MEMORY[0x277CCABB0] numberWithFloat:v101];
              v103 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:2];
              v104 = [v103 stringValue];
              [v92 setObject:v102 forKeyedSubscript:v104];

              v105 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v90];
              v106 = [v105 stringValue];
              [v89 setObject:v92 forKeyedSubscript:v106];

              ++v90;
              v91 += 3;
            }

            while (v90 != 4);
            v107 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v87];
            v108 = [v107 stringValue];
            [v167 setObject:v89 forKeyedSubscript:v108];

            ++v87;
            v88 += 12;
          }

          while (v87 != 14);
          v109 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v165];
          v85 = v162;
          v110 = [v109 stringValue];
          [v162 setObject:v167 forKeyedSubscript:v110];

          v86 = v165 + 1;
        }

        while (a3->var3 > (v165 + 1));
      }

      v111 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v155];
      v112 = [v111 stringValue];
      [v153 setObject:v85 forKeyedSubscript:v112];

      ++v155;
    }

    while (a3->var4 > v155);
  }

  [v152 setObject:v153 forKeyedSubscript:@"specs"];
  v168 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 14; ++i)
  {
    v114 = [MEMORY[0x277CBEB38] dictionary];
    v115 = [MEMORY[0x277CCABB0] numberWithChar:*(&a3->var12.var0.var0[2].var0[3].var0[2].var0[1][1] + i)];
    [v114 setObject:v115 forKeyedSubscript:@"spx"];

    v116 = [MEMORY[0x277CCABB0] numberWithChar:*(&a3->var12.var0.var0[2].var0[3].var0[2].var0[2][1] + i + 2)];
    [v114 setObject:v116 forKeyedSubscript:@"spy"];

    v117 = [MEMORY[0x277CCABB0] numberWithBool:*(&a3->var12.var0.var0[2].var0[3].var0[2].var0[3][2] + i)];
    [v114 setObject:v117 forKeyedSubscript:@"useNorthHS2"];

    v118 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i];
    v119 = [v118 stringValue];
    [v168 setObject:v114 forKeyedSubscript:v119];
  }

  [v152 setObject:v168 forKeyedSubscript:@"spConfig"];
  v120 = [MEMORY[0x277CBEB38] dictionary];
  v166 = [MEMORY[0x277CBEB38] dictionary];
  v163 = [MEMORY[0x277CBEB38] dictionary];
  v161 = [MEMORY[0x277CBEB38] dictionary];
  v156 = [MEMORY[0x277CBEB38] dictionary];
  v121 = [MEMORY[0x277CBEB38] dictionary];
  v122 = [MEMORY[0x277CBEB38] dictionary];
  v123 = [MEMORY[0x277CBEB38] dictionary];
  v151 = v120;
  v124 = [MEMORY[0x277CBEB38] dictionary];
  v125 = 0;
  v126 = &a3->var12.var0.var0[2].var0[3].var0[3].var0[1][0] + 1;
  do
  {
    v127 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v126 - 3)];
    v128 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    v129 = [v128 stringValue];
    [v166 setObject:v127 forKeyedSubscript:v129];

    v130 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v126 - 2)];
    v131 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    v132 = [v131 stringValue];
    [v163 setObject:v130 forKeyedSubscript:v132];

    v133 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v126 - 1)];
    v134 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    v135 = [v134 stringValue];
    [v161 setObject:v133 forKeyedSubscript:v135];

    v136 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v126];
    v137 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    v138 = [v137 stringValue];
    [v156 setObject:v136 forKeyedSubscript:v138];

    v139 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v126[1]];
    v140 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    v141 = [v140 stringValue];
    [v121 setObject:v139 forKeyedSubscript:v141];

    v142 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v126[2]];
    v143 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    v144 = [v143 stringValue];
    [v122 setObject:v142 forKeyedSubscript:v144];

    v145 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v126[3]];
    v146 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    v147 = [v146 stringValue];
    [v123 setObject:v145 forKeyedSubscript:v147];

    v148 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v126[4]];
    v149 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    v150 = [v149 stringValue];
    [v124 setObject:v148 forKeyedSubscript:v150];

    ++v125;
    v126 += 8;
  }

  while (v125 != 16);
  [v151 setObject:v166 forKeyedSubscript:@"spect1hs1"];
  [v151 setObject:v163 forKeyedSubscript:@"spect2hs1"];
  [v151 setObject:v161 forKeyedSubscript:@"spect1hs2"];
  [v151 setObject:v156 forKeyedSubscript:@"spect2hs2"];
  [v151 setObject:v121 forKeyedSubscript:@"spect1hp"];
  [v151 setObject:v122 forKeyedSubscript:@"spect2hp"];
  [v151 setObject:v123 forKeyedSubscript:@"spect1pepx"];
  [v151 setObject:v124 forKeyedSubscript:@"spect2pepx"];
  [v152 setObject:v151 forKeyedSubscript:@"priConfig"];
  [v158 setObject:v152 forKeyedSubscript:@"superFrameDataNormalBank"];
}

- (void)addDbgDataFor_gmoConfig:(GmoCfgBits *)a3
{
  v5 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v6 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v8 = [v6 objectForKeyedSubscript:@"init"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->all];
  [v8 setObject:v7 forKeyedSubscript:@"config"];
}

- (void)addDbgDataFor_gmoInit:(GmoInitInputs *)a3
{
  v13 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v14 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v5 setObject:v14 forKeyedSubscript:@"init"];

  [v14 setObject:0 forKeyedSubscript:@"config"];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v14 setObject:v6 forKeyedSubscript:@"pulseShape"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a3->var0.var1];
  [v14 setObject:v7 forKeyedSubscript:@"pulseShapeSize"];

  if (a3->var0.var1)
  {
    v9 = 0;
    do
    {
      *&v8 = a3->var0.var0[v9];
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
      v12 = [v11 stringValue];
      [v6 setValue:v10 forKey:v12];

      ++v9;
    }

    while (v9 < a3->var0.var1);
  }
}

- (void)readMetaDataFromXML:(id)a3
{
  v6 = a3;
  v4 = [v6 mutableCopy];
  gmoMetaData = self->_gmoMetaData;
  self->_gmoMetaData = v4;
}

- (void)dumpMetaDataAsXML:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEC28];
  for (i = v4; ; v4 = i)
  {
    v6 = [v4 lastObject];
    v7 = [v6 objectForKeyedSubscript:@"hasData"];
    v8 = [v7 isEqual:v5];

    if (!v8)
    {
      break;
    }

    [i removeLastObject];
  }

  [(GmoRecorder *)self->_recorder addRecWithObject:i];
}

- (void)endOfSession
{
  [(GmoRecorder *)self->_recorder stop];
  [(NSMutableArray *)self->_gmoMetaData removeAllObjects];
  self->_bankNumInHomogCycle = 0;
  self->_bankNumSinceRecStart = 0;
}

- (void)endOfHomogCycle
{
  objc_storeStrong(&self->_gmoMetaDataForRecording, self->_gmoMetaData);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:480];
  gmoMetaData = self->_gmoMetaData;
  self->_gmoMetaData = v3;

  v5 = self->_gmoMetaData;
  v6 = [(GmoDbgServices *)self createNewMetaDataDict];
  [(NSMutableArray *)v5 addObject:v6];

  self->_writingToDisk = 1;
  self->_numOfHomogCylceForRecording = self->_numOfHomogCylce;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__GmoDbgServices_endOfHomogCycle__block_invoke;
  block[3] = &unk_27852C640;
  block[4] = self;
  dispatch_async(queue, block);
  v8 = self->_numOfHomogCylce + 1;
  self->_bankNumInHomogCycle = 0;
  self->_numOfHomogCylce = v8;
}

uint64_t __33__GmoDbgServices_endOfHomogCycle__block_invoke(uint64_t a1)
{
  [*(a1 + 32) recStart];
  [*(a1 + 32) dumpMetaDataAsXML:*(*(a1 + 32) + 16)];
  result = [*(*(a1 + 32) + 32) stop];
  *(*(a1 + 32) + 56) = 0;
  return result;
}

- (void)endOfBank
{
  gmoMetaData = self->_gmoMetaData;
  v4 = [(GmoDbgServices *)self createNewMetaDataDict];
  [(NSMutableArray *)gmoMetaData addObject:v4];

  ++self->_bankNumSinceRecStart;
  ++self->_bankNumInHomogCycle;
}

- (void)recStart
{
  v3 = [[GmoRecorder alloc] init:@"/private/var/mobile/tmp/com.apple.cameracaptured/GMO_REC" recordType:1 recorderId:0 filePrefix:@"gmo" fileExt:@"plist"];
  recorder = self->_recorder;
  self->_recorder = v3;

  [(GmoRecorder *)self->_recorder requestWithRecordLengthMs:3600000];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"_H%d", self->_numOfHomogCylceForRecording];
  [GmoRecorder startWithFileId:"startWithFileId:addTimeStamp:dirName:" addTimeStamp:? dirName:?];
}

- (id)createNewMetaDataDict
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:@"3.3.0" forKeyedSubscript:@"metaDataVersion"];
  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasData"];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:v3 forKeyedSubscript:@"input"];

  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:v4 forKeyedSubscript:@"intermediate"];

  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:v5 forKeyedSubscript:@"debug"];

  return v2;
}

- (id)generateFolderNameWithId:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = objc_opt_new();
  [v5 setDateFormat:@"yyyy-MM-dd"];
  v6 = [v5 stringFromDate:v4];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = objc_opt_new();
  [v8 setDateFormat:@"HH-mm-ss"];
  v9 = [v8 stringFromDate:v7];
  if (v3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@%@", v6, v9, v3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v6, v9];
  }
  v10 = ;

  return v10;
}

- (GmoDbgServices)init
{
  self->_bankNumSinceRecStart = 0;
  *&self->_bankNumInHomogCycle = 0;
  self->_writingToDisk = 0;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:480];
  gmoMetaData = self->_gmoMetaData;
  self->_gmoMetaData = v3;

  v5 = [(GmoDbgServices *)self generateFolderNameWithId:@"_fileId"];
  recFolder = self->_recFolder;
  self->_recFolder = v5;

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  [v7 createDirectoryAtPath:@"/private/var/mobile/tmp/com.apple.cameracaptured/GMO_REC" withIntermediateDirectories:1 attributes:0 error:0];

  v8 = self->_gmoMetaData;
  v9 = [(GmoDbgServices *)self createNewMetaDataDict];
  [(NSMutableArray *)v8 addObject:v9];

  v10 = dispatch_queue_create("PeridotDepth online updates", 0);
  queue = self->_queue;
  self->_queue = v10;

  return self;
}

+ (int)compareVersions:(id)a3 toVersion:(id)a4
{
  v5 = a4;
  v6 = strdup([a3 UTF8String]);
  v7 = strdup([v5 UTF8String]);
  v8 = strtok(v6, ".");
  v9 = strtok(0, ".");
  v10 = strtok(0, ".");
  v11 = strtok(v7, ".");
  v12 = strtok(0, ".");
  v13 = strtok(0, ".");
  v14 = atoi(v8);
  v15 = atoi(v9);
  v21 = atoi(v10);
  v16 = atoi(v11);
  v17 = atoi(v12);
  v18 = atoi(v13);
  free(v6);
  free(v7);
  if (v14 < v16)
  {
    goto LABEL_2;
  }

  if (v14 > v16)
  {
LABEL_4:
    v19 = 1;
    goto LABEL_5;
  }

  if (v15 >= v17)
  {
    if (v15 <= v17)
    {
      if (v21 >= v18)
      {
        v19 = v21 > v18;
        goto LABEL_5;
      }

      goto LABEL_2;
    }

    goto LABEL_4;
  }

LABEL_2:
  v19 = -1;
LABEL_5:

  return v19;
}

@end