@interface GmoDbgServices
+ (int)compareVersions:(id)versions toVersion:(id)version;
- (GmoDbgServices)init;
- (id)createNewMetaDataDict;
- (id)generateFolderNameWithId:(id)id;
- (int)extractDbgDataFor_gmoBankInput:(GmoProcessBankInputs *)input inIndex:(unsigned int)index;
- (int)extractDbgDataFor_gmoBankOutput:(id *)output anchorsWithHist:(PDAnchors *)hist spotLocationsAtRefDist:(id *)dist inIndex:(unsigned int)index;
- (int)extractDbgDataFor_gmoConfig:(GmoCfgBits *)config inIndex:(unsigned int)index;
- (int)extractDbgDataFor_gmoDebug:(GmoDebugData *)debug inIndex:(unsigned int)index;
- (int)extractDbgDataFor_gmoInit:(GmoInitInputs *)init inIndex:(unsigned int)index;
- (void)addDbgDataFor_findSpotLocation:(SpecsResults *)location withAnchors:(const SpConfig *)anchors spotLocationEstimation:(void *)estimation outBound:(void *)bound;
- (void)addDbgDataFor_getAnchorsWithHysteresis:(id *)hysteresis currAnchors:(const PDAnchors *)anchors snrHysteresisPct:(float)pct anchorsWithHist:(PDAnchors *)hist violations:(spViolations *)violations numOfClippedSpots:(unint64_t)spots anchorMoveIdx:(void *)idx spotLocationsAtRefDist:(id *)self0 numQualifiedSpot:(unint64_t)self1 anchorsShift:(PDAnchors *)self2 anchorsMoved:(unint64_t)self3;
- (void)addDbgDataFor_globalEstimation:(id *)estimation spotLocationAtRefDist:(id *)dist smoothedSNR:(PeridotSpotValues<common:(const void *)r :(void *)a7 PeridotSpotScalarValue<float>> *)a5 validSpotsIndexes:(GlobalEstimationCtrl *)indexes result:hCtrl:;
- (void)addDbgDataFor_gmoBankInput:(const GmoProcessBankInputs *)input;
- (void)addDbgDataFor_gmoBankOutput:(id *)output anchorsWithHist:(const PDAnchors *)hist spotLocationsAtRefDist:(id *)dist;
- (void)addDbgDataFor_gmoConfig:(GmoCfgBits *)config;
- (void)addDbgDataFor_gmoInit:(GmoInitInputs *)init;
- (void)addDbgDataFor_gtErrP95:(const float *)p95 smoothedErrP95:(const float *)errP95 gtErrP95Sop:(const float *)sop smoothedErrP95Sop:(const float *)p95Sop;
- (void)addDbgDataFor_homogClassifier:(const GmoMetrics *)classifier estTols:(const EstTols *)tols;
- (void)addDbgDataFor_itpQual:(const float *)qual itpQualSop:(const float *)sop;
- (void)addDbgDataFor_spotLocation:(id *)location withName:(id)name;
- (void)dumpMetaDataAsXML:(id)l;
- (void)endOfBank;
- (void)endOfHomogCycle;
- (void)endOfSession;
- (void)readMetaDataFromXML:(id)l;
- (void)recStart;
@end

@implementation GmoDbgServices

- (int)extractDbgDataFor_gmoBankOutput:(id *)output anchorsWithHist:(PDAnchors *)hist spotLocationsAtRefDist:(id *)dist inIndex:(unsigned int)index
{
  indexCopy = index;
  v97 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:index];
  v11 = [v97 objectForKeyedSubscript:@"hasData"];
  v12 = [v11 isEqual:MEMORY[0x277CBEC38]];

  if ((v12 & 1) == 0)
  {
    return 1;
  }

  distCopy = dist;
  histCopy = hist;
  v13 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:indexCopy];
  v98 = [v13 objectForKeyedSubscript:@"output"];

  v94 = 0;
  p_var1 = &output->var0[0].var0[0].var1;
  do
  {
    v15 = 0;
    v91 = p_var1;
    do
    {
      v16 = [v98 objectForKeyedSubscript:@"smoothedSpotLocations"];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v94];
      stringValue = [v17 stringValue];
      v19 = [v16 objectForKeyedSubscript:stringValue];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
      stringValue2 = [v20 stringValue];
      v22 = [v19 objectForKeyedSubscript:stringValue2];
      v23 = [v22 objectForKeyedSubscript:@"x"];
      [v23 floatValue];
      *(p_var1 - 1) = v24;

      v25 = [v98 objectForKeyedSubscript:@"smoothedSpotLocations"];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v94];
      stringValue3 = [v26 stringValue];
      v28 = [v25 objectForKeyedSubscript:stringValue3];
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
      stringValue4 = [v29 stringValue];
      v31 = [v28 objectForKeyedSubscript:stringValue4];
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
  p_useNorthHS2 = &histCopy->banks[0].anchors[0].useNorthHS2;
  do
  {
    v35 = 0;
    v92 = p_useNorthHS2;
    do
    {
      v36 = [v98 objectForKeyedSubscript:@"anchors"];
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v95];
      stringValue5 = [v37 stringValue];
      v39 = [v36 objectForKeyedSubscript:stringValue5];
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v35];
      stringValue6 = [v40 stringValue];
      v42 = [v39 objectForKeyedSubscript:stringValue6];
      v43 = [v42 objectForKeyedSubscript:@"x"];
      [v43 floatValue];
      *(p_useNorthHS2 - 2) = v44;

      v45 = [v98 objectForKeyedSubscript:@"anchors"];
      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v95];
      stringValue7 = [v46 stringValue];
      v48 = [v45 objectForKeyedSubscript:stringValue7];
      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v35];
      stringValue8 = [v49 stringValue];
      v51 = [v48 objectForKeyedSubscript:stringValue8];
      v52 = [v51 objectForKeyedSubscript:@"y"];
      [v52 floatValue];
      *(p_useNorthHS2 - 1) = v53;

      v54 = [v98 objectForKeyedSubscript:@"anchors"];
      v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v95];
      stringValue9 = [v55 stringValue];
      v57 = [v54 objectForKeyedSubscript:stringValue9];
      v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v35];
      stringValue10 = [v58 stringValue];
      v60 = [v57 objectForKeyedSubscript:stringValue10];
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
  distCopy->var1 = v65;

  v66 = [v98 objectForKeyedSubscript:@"globalSpotLocations"];
  v67 = [v66 objectForKeyedSubscript:@"isSphere"];
  distCopy->var2 = [v67 unsignedCharValue];

  v96 = 0;
  v68 = &distCopy->var0[0].var0[0].var1;
  do
  {
    v69 = 0;
    v93 = v68;
    do
    {
      v70 = [v98 objectForKeyedSubscript:@"globalSpotLocations"];
      v71 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v96];
      stringValue11 = [v71 stringValue];
      v73 = [v70 objectForKeyedSubscript:stringValue11];
      v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v69];
      stringValue12 = [v74 stringValue];
      v76 = [v73 objectForKeyedSubscript:stringValue12];
      v77 = [v76 objectForKeyedSubscript:@"x"];
      [v77 floatValue];
      *(v68 - 1) = v78;

      v79 = [v98 objectForKeyedSubscript:@"globalSpotLocations"];
      v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v96];
      stringValue13 = [v80 stringValue];
      v82 = [v79 objectForKeyedSubscript:stringValue13];
      v83 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v69];
      stringValue14 = [v83 stringValue];
      v85 = [v82 objectForKeyedSubscript:stringValue14];
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

- (int)extractDbgDataFor_gmoBankInput:(GmoProcessBankInputs *)input inIndex:(unsigned int)index
{
  indexCopy = index;
  v271 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:?];
  v4 = [v271 objectForKeyedSubscript:@"hasData"];
  v5 = [v4 isEqual:MEMORY[0x277CBEC38]];

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:indexCopy];
  v7 = [v6 valueForKey:@"input"];

  v272 = v7;
  v8 = [v7 objectForKeyedSubscript:@"bankId"];
  input->var0 = [v8 unsignedLongValue];

  v9 = [v7 objectForKeyedSubscript:@"bankIndx"];
  input->var1 = [v9 unsignedLongValue];

  v10 = [v7 objectForKeyedSubscript:@"frameIdx"];
  input->var2 = [v10 unsignedLongValue];

  v11 = [v7 objectForKeyedSubscript:@"phaseNum"];
  input->var3 = [v11 unsignedLongValue];

  v12 = [v7 objectForKeyedSubscript:@"priNum"];
  input->var4 = [v12 unsignedLongValue];

  v13 = [v7 objectForKeyedSubscript:@"cfgUpdateId"];
  input->var6 = [v13 unsignedIntValue];

  v14 = [v7 objectForKeyedSubscript:@"sensorTemperature"];
  [v14 floatValue];
  input->var7 = v15;

  v16 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:indexCopy];
  v17 = [v16 objectForKeyedSubscript:@"metaDataVersion"];
  LODWORD(v7) = [GmoDbgServices compareVersions:v17 toVersion:@"3.0.3"];

  if (v7 == 1)
  {
    v18 = [v272 objectForKeyedSubscript:@"timestamp"];
    [v18 doubleValue];
    input->var8 = v19;
  }

  else
  {
    v18 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:indexCopy];
    v21 = [v18 objectForKeyedSubscript:@"debug"];
    v22 = [v21 objectForKeyedSubscript:@"timestamp"];
    [v22 floatValue];
    input->var8 = v23;
  }

  v24 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:indexCopy];
  v25 = [v24 objectForKeyedSubscript:@"metaDataVersion"];
  v26 = [GmoDbgServices compareVersions:v25 toVersion:@"3.0.4"];

  if (v26 == 1)
  {
    v27 = [v272 objectForKeyedSubscript:@"internalFwError"];
    input->var9 = [v27 BOOLValue];
  }

  else
  {
    input->var9 = 0;
  }

  v28 = [v272 objectForKeyedSubscript:@"lsb"];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
  stringValue = [v29 stringValue];
  v31 = [v28 objectForKeyedSubscript:stringValue];
  [v31 floatValue];
  input->var5[0] = v32;

  v33 = [v272 objectForKeyedSubscript:@"lsb"];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
  stringValue2 = [v34 stringValue];
  v36 = [v33 objectForKeyedSubscript:stringValue2];
  [v36 floatValue];
  input->var5[1] = v37;

  v38 = [v272 objectForKeyedSubscript:@"lsb"];
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2];
  stringValue3 = [v39 stringValue];
  v41 = [v38 objectForKeyedSubscript:stringValue3];
  [v41 floatValue];
  input->var5[2] = v42;

  v43 = 0;
  do
  {
    v44 = 0;
    v279 = &input->var10 + 24 * v43;
    v45 = 1;
    v285 = v43;
    do
    {
      v282 = v45;
      v46 = [v272 objectForKeyedSubscript:@"userOutput"];
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v43];
      stringValue4 = [v47 stringValue];
      v49 = [v46 objectForKeyedSubscript:stringValue4];
      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
      stringValue5 = [v50 stringValue];
      v52 = [v49 objectForKeyedSubscript:stringValue5];
      v53 = [v52 objectForKeyedSubscript:@"confidence"];
      [v53 floatValue];
      v54 = &v279[12 * v44];
      *(v54 + 1) = v55;

      v56 = [v272 objectForKeyedSubscript:@"userOutput"];
      v57 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v285];
      stringValue6 = [v57 stringValue];
      v59 = [v56 objectForKeyedSubscript:stringValue6];
      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
      stringValue7 = [v60 stringValue];
      v62 = [v59 objectForKeyedSubscript:stringValue7];
      v63 = [v62 objectForKeyedSubscript:@"tof"];
      [v63 floatValue];
      *v54 = v64;

      v65 = [v272 objectForKeyedSubscript:@"userOutput"];
      v66 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v285];
      stringValue8 = [v66 stringValue];
      v68 = [v65 objectForKeyedSubscript:stringValue8];
      v69 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
      stringValue9 = [v69 stringValue];
      v43 = [v68 objectForKeyedSubscript:stringValue9];
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
    v277 = &input->var10.var0[7] + 32 * v73;
    v74 = 1;
    v283 = v73;
    do
    {
      v280 = v74;
      v75 = [v272 objectForKeyedSubscript:@"spotDepth"];
      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v73];
      stringValue10 = [v76 stringValue];
      v78 = [v75 objectForKeyedSubscript:stringValue10];
      v79 = [v78 objectForKeyedSubscript:@"hs"];
      v80 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v286];
      stringValue11 = [v80 stringValue];
      v82 = [v79 objectForKeyedSubscript:stringValue11];
      v83 = [v82 objectForKeyedSubscript:@"confidence"];
      [v83 floatValue];
      v84 = &v277[8 * v286];
      *(v84 + 1) = v85;

      v86 = [v272 objectForKeyedSubscript:@"spotDepth"];
      v87 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v283];
      stringValue12 = [v87 stringValue];
      v89 = [v86 objectForKeyedSubscript:stringValue12];
      v90 = [v89 objectForKeyedSubscript:@"hs"];
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v286];
      stringValue13 = [v91 stringValue];
      v93 = [v90 objectForKeyedSubscript:stringValue13];
      v94 = [v93 objectForKeyedSubscript:@"tof"];
      [v94 floatValue];
      *v84 = v95;

      v96 = [v272 objectForKeyedSubscript:@"spotDepth"];
      v97 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v283];
      stringValue14 = [v97 stringValue];
      v99 = [v96 objectForKeyedSubscript:stringValue14];
      v100 = [v99 objectForKeyedSubscript:@"hp"];
      v101 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v286];
      stringValue15 = [v101 stringValue];
      v103 = [v100 objectForKeyedSubscript:stringValue15];
      v104 = [v103 objectForKeyedSubscript:@"confidence"];
      [v104 floatValue];
      v73 = &v277[8 * v286 + 16];
      *(v73 + 4) = v105;

      v106 = [v272 objectForKeyedSubscript:@"spotDepth"];
      v107 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v283];
      stringValue16 = [v107 stringValue];
      v109 = [v106 objectForKeyedSubscript:stringValue16];
      v110 = [v109 objectForKeyedSubscript:@"hp"];
      v111 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v286];
      stringValue17 = [v111 stringValue];
      v113 = [v110 objectForKeyedSubscript:stringValue17];
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
  var4 = input->var4;
  if (var4 && input->var3)
  {
    v267 = 0;
    v117 = &input->var11.var0[2].var0[1][1];
    var3 = 1;
    v260 = &input->var11.var0[2].var0[1][1];
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
                stringValue18 = [v125 stringValue];
                v127 = [v124 objectForKeyedSubscript:stringValue18];
                v287 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v119];
                stringValue19 = [v287 stringValue];
                v128 = [v127 objectForKeyedSubscript:stringValue19];
                v281 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v268];
                [v281 stringValue];
                v276 = v278 = v128;
                v129 = [v128 objectForKeyedSubscript:v276];
                v119 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v270];
                stringValue20 = [v119 stringValue];
                v131 = [v129 objectForKeyedSubscript:stringValue20];
                v273 = v125;
                v274 = v124;
                v275 = v123;
                v132 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:i];
                stringValue21 = [v132 stringValue];
                v134 = [v131 objectForKeyedSubscript:stringValue21];
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
          var3 = input->var3;
          LODWORD(v119) = v266 + 1;
          v120 = v261;
        }

        while (var3 > (v266 + 1));
        var4 = input->var4;
        v117 = v260;
      }

      ++v267;
    }

    while (var4 > v267);
  }

  v136 = 0;
  v137 = &input->var12.var0.var0[2].var0[3].var0[2].var0[3][2];
  v138 = 14;
  do
  {
    v139 = [v272 objectForKeyedSubscript:{@"superFrameDataNormalBank", v260}];
    v140 = [v139 objectForKeyedSubscript:@"spConfig"];
    v141 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v136];
    stringValue22 = [v141 stringValue];
    v143 = [v140 objectForKeyedSubscript:stringValue22];
    v144 = [v143 objectForKeyedSubscript:@"spx"];
    *(v137 - 28) = [v144 charValue];

    v145 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
    v146 = [v145 objectForKeyedSubscript:@"spConfig"];
    v147 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v136];
    stringValue23 = [v147 stringValue];
    v149 = [v146 objectForKeyedSubscript:stringValue23];
    v150 = [v149 objectForKeyedSubscript:@"spy"];
    *(v137 - 14) = [v150 charValue];

    v151 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
    v152 = [v151 objectForKeyedSubscript:@"spConfig"];
    v153 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v136];
    stringValue24 = [v153 stringValue];
    v155 = [v152 objectForKeyedSubscript:stringValue24];
    v156 = [v155 objectForKeyedSubscript:@"useNorthHS2"];
    *v137 = [v156 BOOLValue];
    v137 = (v137 + 1);

    ++v136;
    --v138;
  }

  while (v138);
  v157 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:indexCopy];
  v158 = [v157 objectForKeyedSubscript:@"metaDataVersion"];
  v159 = [GmoDbgServices compareVersions:v158 toVersion:@"3.0.5"];

  if (v159 == 1)
  {
    v160 = 0;
    v161 = &input->var12.var0.var0[2].var0[3].var0[3].var0[1][0] + 1;
    do
    {
      v162 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v163 = [v162 objectForKeyedSubscript:@"priConfig"];
      v164 = [v163 objectForKeyedSubscript:@"spect1hs1"];
      v165 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      stringValue25 = [v165 stringValue];
      v167 = [v164 objectForKeyedSubscript:stringValue25];
      *(v161 - 3) = [v167 unsignedCharValue];

      v168 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v169 = [v168 objectForKeyedSubscript:@"priConfig"];
      v170 = [v169 objectForKeyedSubscript:@"spect2hs1"];
      v171 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      stringValue26 = [v171 stringValue];
      v173 = [v170 objectForKeyedSubscript:stringValue26];
      *(v161 - 2) = [v173 unsignedCharValue];

      v174 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v175 = [v174 objectForKeyedSubscript:@"priConfig"];
      v176 = [v175 objectForKeyedSubscript:@"spect1hs2"];
      v177 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      stringValue27 = [v177 stringValue];
      v179 = [v176 objectForKeyedSubscript:stringValue27];
      *(v161 - 1) = [v179 unsignedCharValue];

      v180 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v181 = [v180 objectForKeyedSubscript:@"priConfig"];
      v182 = [v181 objectForKeyedSubscript:@"spect2hs2"];
      v183 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      stringValue28 = [v183 stringValue];
      v185 = [v182 objectForKeyedSubscript:stringValue28];
      *v161 = [v185 unsignedCharValue];

      v186 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v187 = [v186 objectForKeyedSubscript:@"priConfig"];
      v188 = [v187 objectForKeyedSubscript:@"spect1hp"];
      v189 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      stringValue29 = [v189 stringValue];
      v191 = [v188 objectForKeyedSubscript:stringValue29];
      v161[1] = [v191 unsignedCharValue];

      v192 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v193 = [v192 objectForKeyedSubscript:@"priConfig"];
      v194 = [v193 objectForKeyedSubscript:@"spect2hp"];
      v195 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      stringValue30 = [v195 stringValue];
      v197 = [v194 objectForKeyedSubscript:stringValue30];
      v161[2] = [v197 unsignedCharValue];

      v198 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v199 = [v198 objectForKeyedSubscript:@"priConfig"];
      v200 = [v199 objectForKeyedSubscript:@"spect1pepx"];
      v201 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      stringValue31 = [v201 stringValue];
      v203 = [v200 objectForKeyedSubscript:stringValue31];
      v161[3] = [v203 unsignedCharValue];

      v204 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v205 = [v204 objectForKeyedSubscript:@"priConfig"];
      v206 = [v205 objectForKeyedSubscript:@"spect2pepx"];
      v207 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v160];
      stringValue32 = [v207 stringValue];
      v209 = [v206 objectForKeyedSubscript:stringValue32];
      v161[4] = [v209 unsignedCharValue];

      ++v160;
      v161 += 8;
    }

    while (v160 != 16);
  }

  else
  {
    v210 = 0;
    v211 = &input->var12.var0.var0[2].var0[3].var0[3].var0[1][0] + 1;
    do
    {
      v212 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v213 = [v212 objectForKeyedSubscript:@"priConfig"];
      v214 = [v213 objectForKeyedSubscript:@"spect1hs1"];
      v215 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      stringValue33 = [v215 stringValue];
      v217 = [v214 objectForKeyedSubscript:stringValue33];
      *(v211 - 3) = [v217 unsignedCharValue];

      v218 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v219 = [v218 objectForKeyedSubscript:@"priConfig"];
      v220 = [v219 objectForKeyedSubscript:@"spect2hs1"];
      v221 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      stringValue34 = [v221 stringValue];
      v223 = [v220 objectForKeyedSubscript:stringValue34];
      *(v211 - 2) = [v223 unsignedCharValue];

      v224 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v225 = [v224 objectForKeyedSubscript:@"priConfig"];
      v226 = [v225 objectForKeyedSubscript:@"spect1hs2"];
      v227 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      stringValue35 = [v227 stringValue];
      v229 = [v226 objectForKeyedSubscript:stringValue35];
      *(v211 - 1) = [v229 unsignedCharValue];

      v230 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v231 = [v230 objectForKeyedSubscript:@"priConfig"];
      v232 = [v231 objectForKeyedSubscript:@"spect2hs2"];
      v233 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      stringValue36 = [v233 stringValue];
      v235 = [v232 objectForKeyedSubscript:stringValue36];
      *v211 = [v235 unsignedCharValue];

      v236 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v237 = [v236 objectForKeyedSubscript:@"priConfig"];
      v238 = [v237 objectForKeyedSubscript:@"spect1hp"];
      v239 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      stringValue37 = [v239 stringValue];
      v241 = [v238 objectForKeyedSubscript:stringValue37];
      v211[1] = [v241 unsignedCharValue];

      v242 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v243 = [v242 objectForKeyedSubscript:@"priConfig"];
      v244 = [v243 objectForKeyedSubscript:@"spect2hp"];
      v245 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      stringValue38 = [v245 stringValue];
      v247 = [v244 objectForKeyedSubscript:stringValue38];
      v211[2] = [v247 unsignedCharValue];

      v248 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v249 = [v248 objectForKeyedSubscript:@"priConfig"];
      v250 = [v249 objectForKeyedSubscript:@"spect1pepx"];
      v251 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      stringValue39 = [v251 stringValue];
      v253 = [v250 objectForKeyedSubscript:stringValue39];
      v211[3] = [v253 unsignedCharValue];

      v254 = [v272 objectForKeyedSubscript:@"superFrameDataNormalBank"];
      v255 = [v254 objectForKeyedSubscript:@"priConfig"];
      v256 = [v255 objectForKeyedSubscript:@"spect2pepx"];
      v257 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
      stringValue40 = [v257 stringValue];
      v259 = [v256 objectForKeyedSubscript:stringValue40];
      v211[4] = [v259 unsignedCharValue];

      ++v210;
      v211 += 8;
    }

    while (v210 != 12);
    *(&input->var12.var0.var0[2].var0[3].var0[5].var0[0][2] + 2) = 0u;
    *(&input->var12.var0.var0[2].var0[3].var0[5].var0[2][0] + 2) = 0u;
  }

  return 0;
}

- (int)extractDbgDataFor_gmoConfig:(GmoCfgBits *)config inIndex:(unsigned int)index
{
  indexCopy = index;
  v7 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:index];
  v8 = [v7 objectForKeyedSubscript:@"hasData"];
  v9 = [v8 isEqual:MEMORY[0x277CBEC38]];

  if ((v9 & 1) == 0)
  {
    return 1;
  }

  v10 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:indexCopy];
  v11 = [v10 valueForKey:@"init"];

  v12 = [v11 objectForKeyedSubscript:@"config"];
  config->all = [v12 unsignedIntValue];

  return 0;
}

- (int)extractDbgDataFor_gmoInit:(GmoInitInputs *)init inIndex:(unsigned int)index
{
  indexCopy = index;
  v7 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:index];
  v8 = [v7 objectForKeyedSubscript:@"hasData"];
  v9 = [v8 isEqual:MEMORY[0x277CBEC38]];

  if (v9)
  {
    v10 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:indexCopy];
    v11 = [v10 valueForKey:@"init"];

    v12 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:indexCopy];
    v13 = [v12 objectForKeyedSubscript:@"metaDataVersion"];
    LODWORD(v10) = [GmoDbgServices compareVersions:v13 toVersion:@"3.0.2"];

    if (v10 == 1)
    {
      v14 = [v11 objectForKeyedSubscript:@"pulseShapeSize"];
      init->var0.var1 = [v14 unsignedShortValue];
    }

    else
    {
      init->var0.var1 = 64;
    }

    operator new[]();
  }

  return 1;
}

- (int)extractDbgDataFor_gmoDebug:(GmoDebugData *)debug inIndex:(unsigned int)index
{
  indexCopy = index;
  v108 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:index];
  v7 = [v108 objectForKeyedSubscript:@"hasData"];
  v8 = [v7 isEqual:MEMORY[0x277CBEC38]];

  if ((v8 & 1) == 0)
  {
    return 1;
  }

  v9 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:indexCopy];
  v109 = [v9 valueForKey:@"debug"];

  v110 = 0;
  v10 = 0x277CCA000uLL;
  debugCopy = debug;
  debugCopy2 = debug;
  do
  {
    v12 = 0;
    v107 = debugCopy2;
    do
    {
      v13 = [v109 objectForKeyedSubscript:{@"operationalSpotLocations10m", debugCopy}];
      v14 = [*(v10 + 2992) numberWithUnsignedLong:v110];
      stringValue = [v14 stringValue];
      v16 = [v13 objectForKeyedSubscript:stringValue];
      v17 = [*(v10 + 2992) numberWithUnsignedLong:v12];
      stringValue2 = [v17 stringValue];
      v19 = [v16 objectForKeyedSubscript:stringValue2];
      v20 = [v19 objectForKeyedSubscript:@"x"];
      [v20 floatValue];
      debugCopy2->var0.var0[0].var0[0].var0 = v21;

      v22 = [v109 objectForKeyedSubscript:@"operationalSpotLocations10m"];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      stringValue3 = [v23 stringValue];
      v25 = [v22 objectForKeyedSubscript:stringValue3];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      stringValue4 = [v26 stringValue];
      v28 = [v25 objectForKeyedSubscript:stringValue4];
      v29 = [v28 objectForKeyedSubscript:@"y"];
      [v29 floatValue];
      debugCopy2->var0.var0[0].var0[0].var1 = v30;

      v31 = [v109 objectForKeyedSubscript:@"operationalSpotLocations70cm"];
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      stringValue5 = [v32 stringValue];
      v34 = [v31 objectForKeyedSubscript:stringValue5];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      stringValue6 = [v35 stringValue];
      v37 = [v34 objectForKeyedSubscript:stringValue6];
      v38 = [v37 objectForKeyedSubscript:@"x"];
      [v38 floatValue];
      debugCopy2->var1.var0[0].var0[0].var0 = v39;

      v40 = [v109 objectForKeyedSubscript:@"operationalSpotLocations70cm"];
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      stringValue7 = [v41 stringValue];
      v43 = [v40 objectForKeyedSubscript:stringValue7];
      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      stringValue8 = [v44 stringValue];
      v46 = [v43 objectForKeyedSubscript:stringValue8];
      v47 = [v46 objectForKeyedSubscript:@"y"];
      [v47 floatValue];
      debugCopy2->var1.var0[0].var0[0].var1 = v48;

      v49 = [v109 objectForKeyedSubscript:@"factorySpotLocations10m"];
      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      stringValue9 = [v50 stringValue];
      v52 = [v49 objectForKeyedSubscript:stringValue9];
      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      stringValue10 = [v53 stringValue];
      v55 = [v52 objectForKeyedSubscript:stringValue10];
      v56 = [v55 objectForKeyedSubscript:@"x"];
      [v56 floatValue];
      debugCopy2->var2.var0[0].var0[0].var0 = v57;

      v58 = [v109 objectForKeyedSubscript:@"factorySpotLocations10m"];
      v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      stringValue11 = [v59 stringValue];
      v61 = [v58 objectForKeyedSubscript:stringValue11];
      v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      stringValue12 = [v62 stringValue];
      v64 = [v61 objectForKeyedSubscript:stringValue12];
      v65 = [v64 objectForKeyedSubscript:@"y"];
      [v65 floatValue];
      debugCopy2->var2.var0[0].var0[0].var1 = v66;

      v67 = [v109 objectForKeyedSubscript:@"factorySpotLocations70cm"];
      v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      stringValue13 = [v68 stringValue];
      v70 = [v67 objectForKeyedSubscript:stringValue13];
      v71 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      stringValue14 = [v71 stringValue];
      v73 = [v70 objectForKeyedSubscript:stringValue14];
      v74 = [v73 objectForKeyedSubscript:@"x"];
      [v74 floatValue];
      debugCopy2->var3.var0[0].var0[0].var0 = v75;

      v76 = [v109 objectForKeyedSubscript:@"factorySpotLocations70cm"];
      v77 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
      stringValue15 = [v77 stringValue];
      v79 = [v76 objectForKeyedSubscript:stringValue15];
      v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
      stringValue16 = [v80 stringValue];
      v82 = [v79 objectForKeyedSubscript:stringValue16];
      v83 = [v82 objectForKeyedSubscript:@"y"];
      [v83 floatValue];
      debugCopy2->var3.var0[0].var0[0].var1 = v84;

      ++v12;
      debugCopy2 = (debugCopy2 + 8);
      v10 = 0x277CCA000;
    }

    while (v12 != 14);
    debugCopy2 = &v107->var0.var0[1];
    ++v110;
  }

  while (v110 != 8);
  v85 = [v109 objectForKeyedSubscript:@"operationalSpotLocations10m"];
  v86 = [v85 objectForKeyedSubscript:@"isSphere"];
  debugCopy->var0.var2 = [v86 unsignedCharValue];

  v87 = [v109 objectForKeyedSubscript:@"operationalSpotLocations10m"];
  v88 = [v87 objectForKeyedSubscript:@"calibDistance"];
  [v88 floatValue];
  debugCopy->var0.var1 = v89;

  v90 = [v109 objectForKeyedSubscript:@"operationalSpotLocations70cm"];
  v91 = [v90 objectForKeyedSubscript:@"isSphere"];
  debugCopy->var1.var2 = [v91 unsignedCharValue];

  v92 = [v109 objectForKeyedSubscript:@"operationalSpotLocations70cm"];
  v93 = [v92 objectForKeyedSubscript:@"calibDistance"];
  [v93 floatValue];
  debugCopy->var1.var1 = v94;

  v95 = [v109 objectForKeyedSubscript:@"factorySpotLocations10m"];
  v96 = [v95 objectForKeyedSubscript:@"isSphere"];
  debugCopy->var2.var2 = [v96 unsignedCharValue];

  v97 = [v109 objectForKeyedSubscript:@"factorySpotLocations10m"];
  v98 = [v97 objectForKeyedSubscript:@"calibDistance"];
  [v98 floatValue];
  debugCopy->var2.var1 = v99;

  v100 = [v109 objectForKeyedSubscript:@"factorySpotLocations70cm"];
  v101 = [v100 objectForKeyedSubscript:@"isSphere"];
  debugCopy->var3.var2 = [v101 unsignedCharValue];

  v102 = [v109 objectForKeyedSubscript:@"factorySpotLocations70cm"];
  v103 = [v102 objectForKeyedSubscript:@"calibDistance"];
  [v103 floatValue];
  debugCopy->var3.var1 = v104;

  return 0;
}

- (void)addDbgDataFor_homogClassifier:(const GmoMetrics *)classifier estTols:(const EstTols *)tols
{
  v52 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v52 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v8 = [v7 valueForKey:@"intermediate"];

  [v8 setValue:dictionary forKey:@"homogClassifier"];
  *&v9 = classifier->var2;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [dictionary setObject:v10 forKeyedSubscript:@"nQualRatio"];

  *&v11 = classifier->var1;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [dictionary setObject:v12 forKeyedSubscript:@"avgCoverage"];

  *&v13 = classifier->var3;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  [dictionary setObject:v14 forKeyedSubscript:@"modelErrQualP95"];

  *&v15 = classifier->var6;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  [dictionary setObject:v16 forKeyedSubscript:@"calibErrQualP95"];

  *&v17 = classifier->var8;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  [dictionary setObject:v18 forKeyedSubscript:@"calibErrUnQualP95"];

  *&v19 = classifier->var10;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [dictionary setObject:v20 forKeyedSubscript:@"calibErrQualP50"];

  *&v21 = classifier->var12;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  [dictionary setObject:v22 forKeyedSubscript:@"u0Tol"];

  *&v23 = classifier->var11;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  [dictionary setObject:v24 forKeyedSubscript:@"v0Tol"];

  *&v25 = classifier->var0;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  [dictionary setObject:v26 forKeyedSubscript:@"ambientLevel"];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:dictionary2 forKey:@"nc"];
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:classifier->var13.var0];
  [dictionary2 setObject:v28 forKeyedSubscript:@"countTopLeft"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:classifier->var13.var1];
  [dictionary2 setObject:v29 forKeyedSubscript:@"countLeft"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:classifier->var13.var2];
  [dictionary2 setObject:v30 forKeyedSubscript:@"countBottomLeft"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:classifier->var13.var3];
  [dictionary2 setObject:v31 forKeyedSubscript:@"countTop"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:classifier->var13.var4];
  [dictionary2 setObject:v32 forKeyedSubscript:@"countCenter"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:classifier->var13.var5];
  [dictionary2 setObject:v33 forKeyedSubscript:@"countBottom"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:classifier->var13.var6];
  [dictionary2 setObject:v34 forKeyedSubscript:@"countTopRight"];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:classifier->var13.var7];
  [dictionary2 setObject:v35 forKeyedSubscript:@"countRight"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:classifier->var13.var8];
  [dictionary2 setObject:v36 forKeyedSubscript:@"countBottomRight"];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:dictionary3 forKey:@"estTols"];
  *&v38 = tols->var0;
  v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  [dictionary3 setObject:v39 forKeyedSubscript:@"efl"];

  *&v40 = tols->var1;
  v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
  [dictionary3 setObject:v41 forKeyedSubscript:@"u0"];

  *&v42 = tols->var2;
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
  [dictionary3 setObject:v43 forKeyedSubscript:@"v0"];

  *&v44 = tols->var3;
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
  [dictionary3 setObject:v45 forKeyedSubscript:@"tiltX"];

  *&v46 = tols->var4;
  v47 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
  [dictionary3 setObject:v47 forKeyedSubscript:@"tiltY"];

  *&v48 = tols->var5;
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  [dictionary3 setObject:v49 forKeyedSubscript:@"tiltZ"];

  *&v50 = tols->var6;
  v51 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
  [dictionary3 setObject:v51 forKeyedSubscript:@"count"];
}

- (void)addDbgDataFor_spotLocation:(id *)location withName:(id)name
{
  nameCopy = name;
  v6 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v7 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v8 = [v7 valueForKey:@"debug"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  *&v9 = location->var1;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [dictionary setObject:v10 forKeyedSubscript:@"calibDistance"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:location->var2];
  [dictionary setObject:v11 forKeyedSubscript:@"isSphere"];

  v12 = 0;
  p_var1 = &location->var0[0].var0[0].var1;
  do
  {
    v29 = v12;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v15 = 0;
    v28 = p_var1;
    v16 = p_var1;
    do
    {
      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      *&v18 = *(v16 - 1);
      v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
      [dictionary3 setObject:v19 forKeyedSubscript:@"x"];

      *&v20 = *v16;
      v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
      [dictionary3 setObject:v21 forKeyedSubscript:@"y"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
      stringValue = [v22 stringValue];
      [dictionary2 setObject:dictionary3 forKeyedSubscript:stringValue];

      ++v15;
      v16 += 2;
    }

    while (v15 != 14);
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v29];
    stringValue2 = [v24 stringValue];
    [dictionary setObject:dictionary2 forKeyedSubscript:stringValue2];

    v12 = v29 + 1;
    p_var1 = v28 + 28;
  }

  while (v29 != 7);
  [v8 setObject:dictionary forKeyedSubscript:nameCopy];
}

- (void)addDbgDataFor_gtErrP95:(const float *)p95 smoothedErrP95:(const float *)errP95 gtErrP95Sop:(const float *)sop smoothedErrP95Sop:(const float *)p95Sop
{
  v20 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v11 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v21 = [v11 valueForKey:@"debug"];

  *&v12 = *p95;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  [v21 setObject:v13 forKeyedSubscript:@"globalErrP95"];

  *&v14 = *errP95;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [v21 setObject:v15 forKeyedSubscript:@"smoothedErrP95"];

  *&v16 = *sop;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [v21 setObject:v17 forKeyedSubscript:@"globalErrP95Sop"];

  *&v18 = *p95Sop;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  [v21 setObject:v19 forKeyedSubscript:@"smoothedErrP95Sop"];
}

- (void)addDbgDataFor_itpQual:(const float *)qual itpQualSop:(const float *)sop
{
  v12 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v7 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v13 = [v7 valueForKey:@"debug"];

  *&v8 = *qual;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v13 setObject:v9 forKeyedSubscript:@"itpQual"];

  *&v10 = *sop;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  [v13 setObject:v11 forKeyedSubscript:@"itpQualSop"];
}

- (void)addDbgDataFor_getAnchorsWithHysteresis:(id *)hysteresis currAnchors:(const PDAnchors *)anchors snrHysteresisPct:(float)pct anchorsWithHist:(PDAnchors *)hist violations:(spViolations *)violations numOfClippedSpots:(unint64_t)spots anchorMoveIdx:(void *)idx spotLocationsAtRefDist:(id *)self0 numQualifiedSpot:(unint64_t)self1 anchorsShift:(PDAnchors *)self2 anchorsMoved:(unint64_t)self3
{
  v109 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v109 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:dictionary2 forKey:@"in"];
  [dictionary setValue:dictionary3 forKey:@"out"];
  v20 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v21 = [v20 valueForKey:@"intermediate"];

  v107 = v21;
  [v21 setValue:dictionary forKey:@"getAnchorsWithHysteresis"];
  v116 = dictionary3;
  histCopy = hist;
  violationsCopy = violations;
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0;
  p_var1 = &hysteresis->var0[0].var0[0].var1;
  do
  {
    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    v25 = 0;
    v121 = p_var1;
    v26 = p_var1;
    do
    {
      dictionary6 = [MEMORY[0x277CBEB38] dictionary];
      *&v28 = *(v26 - 1);
      v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
      [dictionary6 setObject:v29 forKeyedSubscript:@"x"];

      *&v30 = *v26;
      v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
      [dictionary6 setObject:v31 forKeyedSubscript:@"y"];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v25];
      stringValue = [v32 stringValue];
      [dictionary5 setObject:dictionary6 forKeyedSubscript:stringValue];

      ++v25;
      v26 += 2;
    }

    while (v25 != 14);
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v22];
    stringValue2 = [v34 stringValue];
    [dictionary4 setObject:dictionary5 forKeyedSubscript:stringValue2];

    ++v22;
    p_var1 = v121 + 28;
  }

  while (v22 != 8);
  [dictionary2 setObject:dictionary4 forKeyedSubscript:@"spotLocations"];
  dictionary7 = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0;
  p_useNorthHS2 = &anchors->banks[0].anchors[0].useNorthHS2;
  do
  {
    v117 = v36;
    dictionary8 = [MEMORY[0x277CBEB38] dictionary];
    v38 = 0;
    v39 = p_useNorthHS2;
    do
    {
      dictionary9 = [MEMORY[0x277CBEB38] dictionary];
      v41 = [MEMORY[0x277CCABB0] numberWithChar:*(v39 - 2)];
      [dictionary9 setObject:v41 forKeyedSubscript:@"x"];

      v42 = [MEMORY[0x277CCABB0] numberWithChar:*(v39 - 1)];
      [dictionary9 setObject:v42 forKeyedSubscript:@"y"];

      v43 = [MEMORY[0x277CCABB0] numberWithBool:*v39];
      [dictionary9 setObject:v43 forKeyedSubscript:@"useNorthHS2"];

      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v38];
      stringValue3 = [v44 stringValue];
      [dictionary8 setObject:dictionary9 forKeyedSubscript:stringValue3];

      ++v38;
      v39 += 3;
    }

    while (v38 != 14);
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v117];
    stringValue4 = [v46 stringValue];
    [dictionary7 setObject:dictionary8 forKeyedSubscript:stringValue4];

    v36 = v117 + 1;
    p_useNorthHS2 += 42;
  }

  while (v117 != 7);
  [dictionary2 setObject:dictionary7 forKeyedSubscript:@"currAnchors"];
  *&v48 = pct;
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  [dictionary2 setValue:v49 forKey:@"snrHysteresisPct"];

  dictionary10 = [MEMORY[0x277CBEB38] dictionary];
  v50 = 0;
  v51 = &histCopy->banks[0].anchors[0].useNorthHS2;
  do
  {
    v123 = v50;
    dictionary11 = [MEMORY[0x277CBEB38] dictionary];
    v53 = 0;
    v118 = v51;
    v54 = v51;
    do
    {
      dictionary12 = [MEMORY[0x277CBEB38] dictionary];
      v56 = [MEMORY[0x277CCABB0] numberWithChar:*(v54 - 2)];
      [dictionary12 setObject:v56 forKeyedSubscript:@"x"];

      v57 = [MEMORY[0x277CCABB0] numberWithChar:*(v54 - 1)];
      [dictionary12 setObject:v57 forKeyedSubscript:@"y"];

      v58 = [MEMORY[0x277CCABB0] numberWithBool:*v54];
      [dictionary12 setObject:v58 forKeyedSubscript:@"useNorthHS2"];

      v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v53];
      stringValue5 = [v59 stringValue];
      [dictionary11 setObject:dictionary12 forKeyedSubscript:stringValue5];

      ++v53;
      v54 += 3;
    }

    while (v53 != 14);
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v123];
    stringValue6 = [v61 stringValue];
    [dictionary10 setObject:dictionary11 forKeyedSubscript:stringValue6];

    v50 = v123 + 1;
    v51 = v118 + 42;
  }

  while (v123 != 7);
  [v116 setObject:dictionary10 forKeyedSubscript:@"anchorsWithHist"];
  dictionary13 = [MEMORY[0x277CBEB38] dictionary];
  v63 = [MEMORY[0x277CCABB0] numberWithBool:violationsCopy->var0];
  [dictionary13 setObject:v63 forKeyedSubscript:@"violationFlag"];

  v64 = &violationsCopy->var1[0][0].var1;
  v65 = 0;
  do
  {
    v124 = v65;
    dictionary14 = [MEMORY[0x277CBEB38] dictionary];
    v67 = 0;
    v119 = v64;
    v68 = v64;
    do
    {
      dictionary15 = [MEMORY[0x277CBEB38] dictionary];
      v70 = [MEMORY[0x277CCABB0] numberWithBool:*(v68 - 1)];
      [dictionary15 setObject:v70 forKeyedSubscript:@"boundaryFlag"];

      v71 = [MEMORY[0x277CCABB0] numberWithBool:*v68];
      [dictionary15 setObject:v71 forKeyedSubscript:@"boundingBoxFlag"];

      v72 = [MEMORY[0x277CCABB0] numberWithBool:v68[1]];
      [dictionary15 setObject:v72 forKeyedSubscript:@"verticalSepFlag"];

      v73 = [MEMORY[0x277CCABB0] numberWithBool:v68[2]];
      [dictionary15 setObject:v73 forKeyedSubscript:@"nearestNeighborFlag"];

      v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v67];
      stringValue7 = [v74 stringValue];
      [dictionary14 setObject:dictionary15 forKeyedSubscript:stringValue7];

      ++v67;
      v68 += 4;
    }

    while (v67 != 14);
    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v124];
    stringValue8 = [v76 stringValue];
    [dictionary13 setObject:dictionary14 forKeyedSubscript:stringValue8];

    v65 = v124 + 1;
    v64 = v119 + 56;
  }

  while (v124 != 7);
  [v116 setObject:dictionary13 forKeyedSubscript:@"violations"];
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:spots];
  [v116 setObject:v78 forKeyedSubscript:@"numOfClippedSpots"];

  dictionary16 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 8; ++i)
  {
    dictionary17 = [MEMORY[0x277CBEB38] dictionary];
    for (j = 0; j != 14; ++j)
    {
      dictionary18 = [MEMORY[0x277CBEB38] dictionary];
      v84 = [MEMORY[0x277CCABB0] numberWithBool:*(idx + j)];
      [dictionary18 setObject:v84 forKeyedSubscript:@"val"];

      v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:j];
      stringValue9 = [v85 stringValue];
      [dictionary17 setObject:dictionary18 forKeyedSubscript:stringValue9];
    }

    v87 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i];
    stringValue10 = [v87 stringValue];
    [dictionary16 setObject:dictionary17 forKeyedSubscript:stringValue10];

    idx = idx + 14;
    v89 = 0x277CBE000uLL;
  }

  [v116 setObject:dictionary16 forKeyedSubscript:@"anchorMoveIdx"];
  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:moved];
  [v116 setObject:v90 forKeyedSubscript:@"anchorsMoved"];

  v91 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:spot];
  [v116 setObject:v91 forKeyedSubscript:@"numQualSpots"];
  v120 = dictionary16;

  dictionary19 = [MEMORY[0x277CBEB38] dictionary];
  v92 = 0;
  v93 = &dist->var0[0].var0[0].var1;
  do
  {
    dictionary20 = [*(v89 + 2872) dictionary];
    v95 = 0;
    v127 = v93;
    do
    {
      dictionary21 = [MEMORY[0x277CBEB38] dictionary];
      *&v97 = *(v93 - 1);
      v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
      [dictionary21 setObject:v98 forKeyedSubscript:@"x"];

      *&v99 = *v93;
      v100 = [MEMORY[0x277CCABB0] numberWithFloat:v99];
      [dictionary21 setObject:v100 forKeyedSubscript:@"y"];

      v101 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v95];
      stringValue11 = [v101 stringValue];
      [dictionary20 setObject:dictionary21 forKeyedSubscript:stringValue11];

      ++v95;
      v93 += 2;
    }

    while (v95 != 14);
    v103 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v92];
    stringValue12 = [v103 stringValue];
    [dictionary19 setObject:dictionary20 forKeyedSubscript:stringValue12];

    ++v92;
    v93 = v127 + 28;
    v89 = 0x277CBE000;
  }

  while (v92 != 8);
  [v116 setObject:dictionary19 forKeyedSubscript:@"spotLocationsAtRefDist"];
}

- (void)addDbgDataFor_globalEstimation:(id *)estimation spotLocationAtRefDist:(id *)dist smoothedSNR:(PeridotSpotValues<common:(const void *)r :(void *)a7 PeridotSpotScalarValue<float>> *)a5 validSpotsIndexes:(GlobalEstimationCtrl *)indexes result:hCtrl:
{
  v107 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v107 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:dictionary2 forKey:@"ctrl"];
  [dictionary setValue:dictionary3 forKey:@"in"];
  [dictionary setValue:dictionary4 forKey:@"out"];
  v13 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v14 = [v13 valueForKey:@"intermediate"];

  v103 = v14;
  [v14 setValue:dictionary forKey:@"globalEstimation"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:indexes->attemptHomog];
  [dictionary2 setObject:v15 forKeyedSubscript:@"attemptHomog"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:indexes->doHomog];
  [dictionary2 setObject:v16 forKeyedSubscript:@"doHomog"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:indexes->hDone];
  [dictionary2 setObject:v17 forKeyedSubscript:@"hDone"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:indexes->hOk];
  [dictionary2 setObject:v18 forKeyedSubscript:@"hOk"];

  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0;
  p_var1 = &estimation->var0[0].var0[0].var1;
  do
  {
    v117 = v19;
    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    v22 = 0;
    v114 = p_var1;
    v23 = p_var1;
    do
    {
      dictionary7 = [MEMORY[0x277CBEB38] dictionary];
      *&v25 = *(v23 - 1);
      v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
      [dictionary7 setObject:v26 forKeyedSubscript:@"x"];

      *&v27 = *v23;
      v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
      [dictionary7 setObject:v28 forKeyedSubscript:@"y"];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v22];
      stringValue = [v29 stringValue];
      [dictionary6 setObject:dictionary7 forKeyedSubscript:stringValue];

      ++v22;
      v23 += 2;
    }

    while (v22 != 14);
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v117];
    stringValue2 = [v31 stringValue];
    [dictionary5 setObject:dictionary6 forKeyedSubscript:stringValue2];

    v19 = v117 + 1;
    p_var1 = v114 + 28;
  }

  while (v117 != 7);
  [dictionary3 setObject:dictionary5 forKeyedSubscript:@"refLocations"];

  dictionary8 = [MEMORY[0x277CBEB38] dictionary];
  v33 = 0;
  v34 = &dist->var0[0].var0[0].var1;
  do
  {
    v118 = v33;
    dictionary9 = [MEMORY[0x277CBEB38] dictionary];
    v36 = 0;
    v115 = v34;
    v37 = v34;
    do
    {
      dictionary10 = [MEMORY[0x277CBEB38] dictionary];
      *&v39 = *(v37 - 1);
      v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
      [dictionary10 setObject:v40 forKeyedSubscript:@"x"];

      *&v41 = *v37;
      v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
      [dictionary10 setObject:v42 forKeyedSubscript:@"y"];

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v36];
      stringValue3 = [v43 stringValue];
      [dictionary9 setObject:dictionary10 forKeyedSubscript:stringValue3];

      ++v36;
      v37 += 2;
    }

    while (v36 != 14);
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v118];
    stringValue4 = [v45 stringValue];
    [dictionary8 setObject:dictionary9 forKeyedSubscript:stringValue4];

    v33 = v118 + 1;
    v34 = v115 + 28;
  }

  while (v118 != 7);
  [dictionary3 setObject:dictionary8 forKeyedSubscript:@"spotLocationAtRefDist"];

  dictionary11 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 8; ++i)
  {
    dictionary12 = [MEMORY[0x277CBEB38] dictionary];
    for (j = 0; j != 14; ++j)
    {
      *&v50 = a5->var0[0].var0[j].var0;
      v52 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:j];
      stringValue5 = [v53 stringValue];
      [dictionary12 setObject:v52 forKeyedSubscript:stringValue5];
    }

    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i];
    stringValue6 = [v55 stringValue];
    [dictionary11 setObject:dictionary12 forKeyedSubscript:stringValue6];

    a5 = (a5 + 56);
  }

  [dictionary3 setObject:dictionary11 forKeyedSubscript:@"smoothedSNR"];

  dictionary13 = [MEMORY[0x277CBEB38] dictionary];
  for (k = 0; k != 8; ++k)
  {
    dictionary14 = [MEMORY[0x277CBEB38] dictionary];
    v60 = r + 24 * k;
    v61 = *v60;
    v62 = *(v60 + 1);
    if (*v60 != v62)
    {
      v63 = 0;
      do
      {
        v64 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v61];
        v65 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v63];
        stringValue7 = [v65 stringValue];
        [dictionary14 setObject:v64 forKeyedSubscript:stringValue7];

        ++v63;
        ++v61;
      }

      while (v61 != v62);
    }

    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:k];
    stringValue8 = [v67 stringValue];
    [dictionary13 setObject:dictionary14 forKeyedSubscript:stringValue8];
    v69 = 0x277CBE000uLL;
  }

  [dictionary3 setObject:dictionary13 forKeyedSubscript:@"validSpotsIndexes"];

  dictionary15 = [MEMORY[0x277CBEB38] dictionary];
  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a7];
  [dictionary15 setObject:v71 forKeyedSubscript:@"trials"];

  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a7 + 1)];
  [dictionary15 setObject:v72 forKeyedSubscript:@"nInliers"];

  LODWORD(v73) = *(a7 + 22);
  v74 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
  [dictionary15 setObject:v74 forKeyedSubscript:@"modelError"];

  dictionary16 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a7 + 7))
  {
    v76 = 0;
    do
    {
      v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a7 + 2) + 4 * v76)];
      v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v76];
      stringValue9 = [v78 stringValue];
      [dictionary16 setObject:v77 forKeyedSubscript:stringValue9];

      ++v76;
    }

    while (v76 < *(a7 + 7));
  }

  [dictionary15 setObject:dictionary16 forKeyedSubscript:@"inliers"];
  v113 = dictionary15;

  dictionary17 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a7 + 16))
  {
    v81 = 0;
    do
    {
      dictionary18 = [MEMORY[0x277CBEB38] dictionary];
      v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v81];
      stringValue10 = [v83 stringValue];
      [dictionary17 setObject:dictionary18 forKeyedSubscript:stringValue10];

      LODWORD(v85) = *(a7 + 17);
      if (v85)
      {
        v86 = 0;
        do
        {
          v87 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a7 + 7) + 8 * (v81 * v85) + 8 * v86)];
          v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v86];
          stringValue11 = [v88 stringValue];
          [dictionary18 setObject:v87 forKeyedSubscript:stringValue11];

          ++v86;
          v85 = *(a7 + 17);
        }

        while (v86 < v85);
      }

      v81 = (v81 + 1);
    }

    while (v81 < *(a7 + 16));
  }

  [v113 setObject:dictionary17 forKeyedSubscript:@"hModel"];

  dictionary19 = [MEMORY[0x277CBEB38] dictionary];
  v90 = 0;
  v91 = a7 + 96;
  do
  {
    dictionary20 = [*(v69 + 2872) dictionary];
    v93 = 0;
    v119 = v91;
    do
    {
      dictionary21 = [MEMORY[0x277CBEB38] dictionary];
      LODWORD(v95) = *(v91 - 1);
      v96 = [MEMORY[0x277CCABB0] numberWithFloat:v95];
      [dictionary21 setObject:v96 forKeyedSubscript:@"x"];

      LODWORD(v97) = *v91;
      v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
      [dictionary21 setObject:v98 forKeyedSubscript:@"y"];

      v99 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v93];
      stringValue12 = [v99 stringValue];
      [dictionary20 setObject:dictionary21 forKeyedSubscript:stringValue12];

      ++v93;
      v91 += 2;
    }

    while (v93 != 14);
    v101 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v90];
    [v101 stringValue];
    v102 = v69 = 0x277CBE000;
    [dictionary19 setObject:dictionary20 forKeyedSubscript:v102];

    ++v90;
    v91 = v119 + 28;
  }

  while (v90 != 8);
  [v113 setObject:dictionary19 forKeyedSubscript:@"newSpotLocAtRefDist"];
  [dictionary4 setObject:v113 forKeyedSubscript:@"result"];
}

- (void)addDbgDataFor_findSpotLocation:(SpecsResults *)location withAnchors:(const SpConfig *)anchors spotLocationEstimation:(void *)estimation outBound:(void *)bound
{
  v79 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v79 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:dictionary2 forKey:@"in"];
  [dictionary setValue:dictionary3 forKey:@"out"];
  v11 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v12 = [v11 valueForKey:@"intermediate"];

  v76 = v12;
  [v12 setValue:dictionary forKey:@"findSpotLocation"];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  boundCopy = bound;
  estimationCopy = estimation;
  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0;
  locationCopy = location;
  v14 = location->var0[0][1];
  v84 = dictionary3;
  do
  {
    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    v16 = 0;
    v17 = v14;
    do
    {
      dictionary7 = [MEMORY[0x277CBEB38] dictionary];
      *&v19 = *(v17 - 14);
      v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
      stringValue = [v21 stringValue];
      [dictionary7 setObject:v20 forKeyedSubscript:stringValue];

      *&v23 = *v17;
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
      stringValue2 = [v25 stringValue];
      [dictionary7 setObject:v24 forKeyedSubscript:stringValue2];

      *&v27 = v17[14];
      v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2];
      stringValue3 = [v29 stringValue];
      [dictionary7 setObject:v28 forKeyedSubscript:stringValue3];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v16];
      stringValue4 = [v31 stringValue];
      [dictionary6 setObject:dictionary7 forKeyedSubscript:stringValue4];

      ++v16;
      v17 += 42;
    }

    while (v16 != 4);
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v13];
    stringValue5 = [v33 stringValue];
    [dictionary5 setObject:dictionary6 forKeyedSubscript:stringValue5];

    ++v13;
    ++v14;
  }

  while (v13 != 14);
  [dictionary4 setObject:dictionary5 forKeyedSubscript:@"specQs"];
  dictionary8 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 14; ++i)
  {
    *&v35 = locationCopy->var1[i];
    v37 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i];
    stringValue6 = [v38 stringValue];
    [dictionary8 setObject:v37 forKeyedSubscript:stringValue6];
  }

  [dictionary4 setObject:dictionary8 forKeyedSubscript:@"specSnr"];
  dictionary9 = [MEMORY[0x277CBEB38] dictionary];
  for (j = 0; j != 14; ++j)
  {
    dictionary10 = [MEMORY[0x277CBEB38] dictionary];
    v43 = [MEMORY[0x277CCABB0] numberWithBool:locationCopy->var2[0][j]];
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    stringValue7 = [v44 stringValue];
    [dictionary10 setObject:v43 forKeyedSubscript:stringValue7];

    v46 = [MEMORY[0x277CCABB0] numberWithBool:locationCopy->var2[1][j]];
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
    stringValue8 = [v47 stringValue];
    [dictionary10 setObject:v46 forKeyedSubscript:stringValue8];

    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:j];
    stringValue9 = [v49 stringValue];
    [dictionary9 setObject:dictionary10 forKeyedSubscript:stringValue9];
  }

  [dictionary4 setObject:dictionary9 forKeyedSubscript:@"specQsValid"];
  [dictionary2 setObject:dictionary4 forKeyedSubscript:@"specsOut"];
  dictionary11 = [MEMORY[0x277CBEB38] dictionary];
  for (k = 0; k != 14; ++k)
  {
    dictionary12 = [MEMORY[0x277CBEB38] dictionary];
    v53 = [MEMORY[0x277CCABB0] numberWithChar:anchors->var0[k]];
    [dictionary12 setObject:v53 forKeyedSubscript:@"x"];

    v54 = [MEMORY[0x277CCABB0] numberWithChar:anchors->var1[k]];
    [dictionary12 setObject:v54 forKeyedSubscript:@"y"];

    v55 = [MEMORY[0x277CCABB0] numberWithBool:anchors->var2[k]];
    [dictionary12 setObject:v55 forKeyedSubscript:@"useNorthHS2"];

    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:k];
    stringValue10 = [v56 stringValue];
    [dictionary11 setObject:dictionary12 forKeyedSubscript:stringValue10];
  }

  [dictionary2 setObject:dictionary11 forKeyedSubscript:@"anchors"];
  v87 = dictionary9;
  dictionary13 = [MEMORY[0x277CBEB38] dictionary];
  v59 = 0;
  v60 = (estimationCopy + 8);
  do
  {
    dictionary14 = [MEMORY[0x277CBEB38] dictionary];
    v62 = [MEMORY[0x277CCABB0] numberWithDouble:*(v60 - 1)];
    [dictionary14 setObject:v62 forKeyedSubscript:@"x"];

    v63 = [MEMORY[0x277CCABB0] numberWithDouble:*v60];
    [dictionary14 setObject:v63 forKeyedSubscript:@"y"];

    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v59];
    stringValue11 = [v64 stringValue];
    [dictionary13 setObject:dictionary14 forKeyedSubscript:stringValue11];

    ++v59;
    v60 += 2;
  }

  while (v59 != 14);
  [v84 setObject:dictionary13 forKeyedSubscript:@"spotLocationEstimation"];
  dictionary15 = [MEMORY[0x277CBEB38] dictionary];
  v67 = 0;
  v68 = (boundCopy + 1);
  do
  {
    dictionary16 = [MEMORY[0x277CBEB38] dictionary];
    v70 = [MEMORY[0x277CCABB0] numberWithBool:*(v68 - 1)];
    [dictionary16 setObject:v70 forKeyedSubscript:@"outBound0"];

    v71 = [MEMORY[0x277CCABB0] numberWithBool:*v68];
    [dictionary16 setObject:v71 forKeyedSubscript:@"outBound1"];

    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v67];
    stringValue12 = [v72 stringValue];
    [dictionary15 setObject:dictionary16 forKeyedSubscript:stringValue12];

    ++v67;
    v68 += 2;
  }

  while (v67 != 14);
  [v84 setObject:dictionary15 forKeyedSubscript:@"outBound"];
}

- (void)addDbgDataFor_gmoBankOutput:(id *)output anchorsWithHist:(const PDAnchors *)hist spotLocationsAtRefDist:(id *)dist
{
  v52 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v52 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v9 setObject:dictionary forKeyedSubscript:@"output"];
  histCopy = hist;
  distCopy = dist;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v10 = 0;
  p_var1 = &output->var0[0].var0[0].var1;
  do
  {
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v13 = 0;
    v59 = p_var1;
    do
    {
      dictionary4 = [MEMORY[0x277CBEB38] dictionary];
      *&v15 = *(p_var1 - 1);
      v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
      [dictionary4 setObject:v16 forKeyedSubscript:@"x"];

      *&v17 = *p_var1;
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
      [dictionary4 setObject:v18 forKeyedSubscript:@"y"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v13];
      stringValue = [v19 stringValue];
      [dictionary3 setObject:dictionary4 forKeyedSubscript:stringValue];

      ++v13;
      p_var1 += 2;
    }

    while (v13 != 14);
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
    stringValue2 = [v21 stringValue];
    [dictionary2 setObject:dictionary3 forKeyedSubscript:stringValue2];

    ++v10;
    p_var1 = v59 + 28;
  }

  while (v10 != 8);
  [dictionary setObject:dictionary2 forKeyedSubscript:@"smoothedSpotLocations"];
  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0;
  p_useNorthHS2 = &histCopy->banks[0].anchors[0].useNorthHS2;
  do
  {
    v60 = v23;
    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    v26 = 0;
    v57 = p_useNorthHS2;
    do
    {
      dictionary7 = [MEMORY[0x277CBEB38] dictionary];
      v28 = [MEMORY[0x277CCABB0] numberWithChar:*(p_useNorthHS2 - 2)];
      [dictionary7 setObject:v28 forKeyedSubscript:@"x"];

      v29 = [MEMORY[0x277CCABB0] numberWithChar:*(p_useNorthHS2 - 1)];
      [dictionary7 setObject:v29 forKeyedSubscript:@"y"];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:*p_useNorthHS2];
      [dictionary7 setObject:v30 forKeyedSubscript:@"useNorthHS2"];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v26];
      stringValue3 = [v31 stringValue];
      [dictionary6 setObject:dictionary7 forKeyedSubscript:stringValue3];

      ++v26;
      p_useNorthHS2 += 3;
    }

    while (v26 != 14);
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v60];
    stringValue4 = [v33 stringValue];
    [dictionary5 setObject:dictionary6 forKeyedSubscript:stringValue4];

    v23 = v60 + 1;
    p_useNorthHS2 = v57 + 42;
  }

  while (v60 != 7);
  [dictionary setObject:dictionary5 forKeyedSubscript:@"anchors"];
  dictionary8 = [MEMORY[0x277CBEB38] dictionary];
  *&v35 = distCopy->var1;
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
  [dictionary8 setObject:v36 forKeyedSubscript:@"calibDistance"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:distCopy->var2];
  [dictionary8 setObject:v37 forKeyedSubscript:@"isSphere"];

  v38 = 0;
  v39 = &distCopy->var0[0].var0[0].var1;
  do
  {
    dictionary9 = [MEMORY[0x277CBEB38] dictionary];
    v41 = 0;
    v61 = v39;
    do
    {
      dictionary10 = [MEMORY[0x277CBEB38] dictionary];
      LODWORD(v43) = *(v39 - 1);
      v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
      [dictionary10 setObject:v44 forKeyedSubscript:@"x"];

      LODWORD(v45) = *v39;
      v46 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
      [dictionary10 setObject:v46 forKeyedSubscript:@"y"];

      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v41];
      stringValue5 = [v47 stringValue];
      [dictionary9 setObject:dictionary10 forKeyedSubscript:stringValue5];

      ++v41;
      v39 += 2;
    }

    while (v41 != 14);
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v38];
    stringValue6 = [v49 stringValue];
    [dictionary8 setObject:dictionary9 forKeyedSubscript:stringValue6];

    ++v38;
    v39 = v61 + 28;
  }

  while (v38 != 8);
  [dictionary setObject:dictionary8 forKeyedSubscript:@"globalSpotLocations"];
}

- (void)addDbgDataFor_gmoBankInput:(const GmoProcessBankInputs *)input
{
  v157 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v157 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v4 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v158 = [v4 valueForKey:@"input"];

  v5 = [MEMORY[0x277CCABB0] numberWithLong:input->var0];
  [v158 setObject:v5 forKeyedSubscript:@"bankId"];

  v6 = [MEMORY[0x277CCABB0] numberWithLong:input->var1];
  [v158 setObject:v6 forKeyedSubscript:@"bankIndx"];

  v7 = [MEMORY[0x277CCABB0] numberWithLong:input->var2];
  [v158 setObject:v7 forKeyedSubscript:@"frameIdx"];

  v8 = [MEMORY[0x277CCABB0] numberWithLong:input->var3];
  [v158 setObject:v8 forKeyedSubscript:@"phaseNum"];

  v9 = [MEMORY[0x277CCABB0] numberWithLong:input->var4];
  [v158 setObject:v9 forKeyedSubscript:@"priNum"];

  v10 = [MEMORY[0x277CCABB0] numberWithLong:input->var6];
  [v158 setObject:v10 forKeyedSubscript:@"cfgUpdateId"];

  *&v11 = input->var7;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v158 setObject:v12 forKeyedSubscript:@"sensorTemperature"];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:input->var8];
  [v158 setObject:v13 forKeyedSubscript:@"timestamp"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:input->var9];
  [v158 setObject:v14 forKeyedSubscript:@"internalFwError"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  *&v15 = input->var5[0];
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
  stringValue = [v17 stringValue];
  [dictionary setObject:v16 forKeyedSubscript:stringValue];

  *&v19 = input->var5[1];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
  stringValue2 = [v21 stringValue];
  [dictionary setObject:v20 forKeyedSubscript:stringValue2];

  *&v23 = input->var5[2];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2];
  stringValue3 = [v25 stringValue];
  [dictionary setObject:v24 forKeyedSubscript:stringValue3];

  [v158 setObject:dictionary forKeyedSubscript:@"lsb"];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0;
  v28 = &input->var10.var0[0].var0[1][2];
  do
  {
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    *&v31 = *(v28 - 4);
    v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
    [dictionary4 setObject:v32 forKeyedSubscript:@"confidence"];

    *&v33 = *(v28 - 5);
    v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
    [dictionary4 setObject:v34 forKeyedSubscript:@"tof"];

    *&v35 = *(v28 - 3);
    v36 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
    [dictionary4 setObject:v36 forKeyedSubscript:@"na"];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    stringValue4 = [v37 stringValue];
    [dictionary3 setObject:dictionary4 forKeyedSubscript:stringValue4];

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    *&v40 = *(v28 - 1);
    v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
    [dictionary5 setObject:v41 forKeyedSubscript:@"confidence"];

    *&v42 = *(v28 - 2);
    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
    [dictionary5 setObject:v43 forKeyedSubscript:@"tof"];

    *&v44 = *v28;
    v45 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
    [dictionary5 setObject:v45 forKeyedSubscript:@"na"];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1];
    stringValue5 = [v46 stringValue];
    [dictionary3 setObject:dictionary5 forKeyedSubscript:stringValue5];

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
    stringValue6 = [v48 stringValue];
    [dictionary2 setObject:dictionary3 forKeyedSubscript:stringValue6];

    ++v27;
    v28 += 6;
  }

  while (v27 != 14);
  [v158 setObject:dictionary2 forKeyedSubscript:@"userOutput"];
  dictionary6 = [MEMORY[0x277CBEB38] dictionary];
  v50 = 0;
  v51 = &input->var10.var0[7].var0[2][1];
  do
  {
    dictionary7 = [MEMORY[0x277CBEB38] dictionary];
    dictionary8 = [MEMORY[0x277CBEB38] dictionary];
    dictionary9 = [MEMORY[0x277CBEB38] dictionary];
    dictionary10 = [MEMORY[0x277CBEB38] dictionary];
    *&v56 = *(v51 - 6);
    v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
    [dictionary10 setObject:v57 forKeyedSubscript:@"confidence"];

    *&v58 = *(v51 - 7);
    v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
    [dictionary10 setObject:v59 forKeyedSubscript:@"tof"];

    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    stringValue7 = [v60 stringValue];
    [dictionary8 setObject:dictionary10 forKeyedSubscript:stringValue7];

    dictionary11 = [MEMORY[0x277CBEB38] dictionary];
    *&v63 = *(v51 - 2);
    v64 = [MEMORY[0x277CCABB0] numberWithFloat:v63];
    [dictionary11 setObject:v64 forKeyedSubscript:@"confidence"];

    *&v65 = *(v51 - 3);
    v66 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
    [dictionary11 setObject:v66 forKeyedSubscript:@"tof"];

    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    stringValue8 = [v67 stringValue];
    [dictionary9 setObject:dictionary11 forKeyedSubscript:stringValue8];

    dictionary12 = [MEMORY[0x277CBEB38] dictionary];
    *&v70 = *(v51 - 4);
    v71 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
    [dictionary12 setObject:v71 forKeyedSubscript:@"confidence"];

    *&v72 = *(v51 - 5);
    v73 = [MEMORY[0x277CCABB0] numberWithFloat:v72];
    [dictionary12 setObject:v73 forKeyedSubscript:@"tof"];

    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1];
    stringValue9 = [v74 stringValue];
    [dictionary8 setObject:dictionary12 forKeyedSubscript:stringValue9];

    dictionary13 = [MEMORY[0x277CBEB38] dictionary];
    *&v77 = *v51;
    v78 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
    [dictionary13 setObject:v78 forKeyedSubscript:@"confidence"];

    *&v79 = *(v51 - 1);
    v80 = [MEMORY[0x277CCABB0] numberWithFloat:v79];
    [dictionary13 setObject:v80 forKeyedSubscript:@"tof"];

    v81 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1];
    stringValue10 = [v81 stringValue];
    [dictionary9 setObject:dictionary13 forKeyedSubscript:stringValue10];

    [dictionary7 setObject:dictionary8 forKeyedSubscript:@"hs"];
    [dictionary7 setObject:dictionary9 forKeyedSubscript:@"hp"];
    v83 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v50];
    stringValue11 = [v83 stringValue];
    [dictionary6 setObject:dictionary7 forKeyedSubscript:stringValue11];

    ++v50;
    v51 += 8;
  }

  while (v50 != 14);
  [v158 setObject:dictionary6 forKeyedSubscript:@"spotDepth"];
  dictionary14 = [MEMORY[0x277CBEB38] dictionary];
  dictionary15 = [MEMORY[0x277CBEB38] dictionary];
  if (input->var4)
  {
    v155 = 0;
    do
    {
      dictionary16 = [MEMORY[0x277CBEB38] dictionary];
      v162 = dictionary16;
      if (input->var3)
      {
        v86 = 0;
        do
        {
          dictionary17 = [MEMORY[0x277CBEB38] dictionary];
          v87 = 0;
          v165 = v86;
          v88 = input->var11.var0[56 * v155 + 2 + 14 * v86].var0[2];
          do
          {
            dictionary18 = [MEMORY[0x277CBEB38] dictionary];
            v90 = 0;
            v91 = v88;
            do
            {
              dictionary19 = [MEMORY[0x277CBEB38] dictionary];
              *&v93 = *(v91 - 2);
              v94 = [MEMORY[0x277CCABB0] numberWithFloat:v93];
              v95 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
              stringValue12 = [v95 stringValue];
              [dictionary19 setObject:v94 forKeyedSubscript:stringValue12];

              *&v97 = *(v91 - 1);
              v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
              v99 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1];
              stringValue13 = [v99 stringValue];
              [dictionary19 setObject:v98 forKeyedSubscript:stringValue13];

              *&v101 = *v91;
              v102 = [MEMORY[0x277CCABB0] numberWithFloat:v101];
              v103 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:2];
              stringValue14 = [v103 stringValue];
              [dictionary19 setObject:v102 forKeyedSubscript:stringValue14];

              v105 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v90];
              stringValue15 = [v105 stringValue];
              [dictionary18 setObject:dictionary19 forKeyedSubscript:stringValue15];

              ++v90;
              v91 += 3;
            }

            while (v90 != 4);
            v107 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v87];
            stringValue16 = [v107 stringValue];
            [dictionary17 setObject:dictionary18 forKeyedSubscript:stringValue16];

            ++v87;
            v88 += 12;
          }

          while (v87 != 14);
          v109 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v165];
          dictionary16 = v162;
          stringValue17 = [v109 stringValue];
          [v162 setObject:dictionary17 forKeyedSubscript:stringValue17];

          v86 = v165 + 1;
        }

        while (input->var3 > (v165 + 1));
      }

      v111 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v155];
      stringValue18 = [v111 stringValue];
      [dictionary15 setObject:dictionary16 forKeyedSubscript:stringValue18];

      ++v155;
    }

    while (input->var4 > v155);
  }

  [dictionary14 setObject:dictionary15 forKeyedSubscript:@"specs"];
  dictionary20 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 14; ++i)
  {
    dictionary21 = [MEMORY[0x277CBEB38] dictionary];
    v115 = [MEMORY[0x277CCABB0] numberWithChar:*(&input->var12.var0.var0[2].var0[3].var0[2].var0[1][1] + i)];
    [dictionary21 setObject:v115 forKeyedSubscript:@"spx"];

    v116 = [MEMORY[0x277CCABB0] numberWithChar:*(&input->var12.var0.var0[2].var0[3].var0[2].var0[2][1] + i + 2)];
    [dictionary21 setObject:v116 forKeyedSubscript:@"spy"];

    v117 = [MEMORY[0x277CCABB0] numberWithBool:*(&input->var12.var0.var0[2].var0[3].var0[2].var0[3][2] + i)];
    [dictionary21 setObject:v117 forKeyedSubscript:@"useNorthHS2"];

    v118 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i];
    stringValue19 = [v118 stringValue];
    [dictionary20 setObject:dictionary21 forKeyedSubscript:stringValue19];
  }

  [dictionary14 setObject:dictionary20 forKeyedSubscript:@"spConfig"];
  dictionary22 = [MEMORY[0x277CBEB38] dictionary];
  dictionary23 = [MEMORY[0x277CBEB38] dictionary];
  dictionary24 = [MEMORY[0x277CBEB38] dictionary];
  dictionary25 = [MEMORY[0x277CBEB38] dictionary];
  dictionary26 = [MEMORY[0x277CBEB38] dictionary];
  dictionary27 = [MEMORY[0x277CBEB38] dictionary];
  dictionary28 = [MEMORY[0x277CBEB38] dictionary];
  dictionary29 = [MEMORY[0x277CBEB38] dictionary];
  v151 = dictionary22;
  dictionary30 = [MEMORY[0x277CBEB38] dictionary];
  v125 = 0;
  v126 = &input->var12.var0.var0[2].var0[3].var0[3].var0[1][0] + 1;
  do
  {
    v127 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v126 - 3)];
    v128 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    stringValue20 = [v128 stringValue];
    [dictionary23 setObject:v127 forKeyedSubscript:stringValue20];

    v130 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v126 - 2)];
    v131 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    stringValue21 = [v131 stringValue];
    [dictionary24 setObject:v130 forKeyedSubscript:stringValue21];

    v133 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v126 - 1)];
    v134 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    stringValue22 = [v134 stringValue];
    [dictionary25 setObject:v133 forKeyedSubscript:stringValue22];

    v136 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v126];
    v137 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    stringValue23 = [v137 stringValue];
    [dictionary26 setObject:v136 forKeyedSubscript:stringValue23];

    v139 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v126[1]];
    v140 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    stringValue24 = [v140 stringValue];
    [dictionary27 setObject:v139 forKeyedSubscript:stringValue24];

    v142 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v126[2]];
    v143 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    stringValue25 = [v143 stringValue];
    [dictionary28 setObject:v142 forKeyedSubscript:stringValue25];

    v145 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v126[3]];
    v146 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    stringValue26 = [v146 stringValue];
    [dictionary29 setObject:v145 forKeyedSubscript:stringValue26];

    v148 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v126[4]];
    v149 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    stringValue27 = [v149 stringValue];
    [dictionary30 setObject:v148 forKeyedSubscript:stringValue27];

    ++v125;
    v126 += 8;
  }

  while (v125 != 16);
  [v151 setObject:dictionary23 forKeyedSubscript:@"spect1hs1"];
  [v151 setObject:dictionary24 forKeyedSubscript:@"spect2hs1"];
  [v151 setObject:dictionary25 forKeyedSubscript:@"spect1hs2"];
  [v151 setObject:dictionary26 forKeyedSubscript:@"spect2hs2"];
  [v151 setObject:dictionary27 forKeyedSubscript:@"spect1hp"];
  [v151 setObject:dictionary28 forKeyedSubscript:@"spect2hp"];
  [v151 setObject:dictionary29 forKeyedSubscript:@"spect1pepx"];
  [v151 setObject:dictionary30 forKeyedSubscript:@"spect2pepx"];
  [dictionary14 setObject:v151 forKeyedSubscript:@"priConfig"];
  [v158 setObject:dictionary14 forKeyedSubscript:@"superFrameDataNormalBank"];
}

- (void)addDbgDataFor_gmoConfig:(GmoCfgBits *)config
{
  v5 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  v6 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  v8 = [v6 objectForKeyedSubscript:@"init"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:config->all];
  [v8 setObject:v7 forKeyedSubscript:@"config"];
}

- (void)addDbgDataFor_gmoInit:(GmoInitInputs *)init
{
  v13 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasData"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(NSMutableArray *)self->_gmoMetaData objectAtIndexedSubscript:self->_bankNumInHomogCycle];
  [v5 setObject:dictionary forKeyedSubscript:@"init"];

  [dictionary setObject:0 forKeyedSubscript:@"config"];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"pulseShape"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:init->var0.var1];
  [dictionary setObject:v7 forKeyedSubscript:@"pulseShapeSize"];

  if (init->var0.var1)
  {
    v9 = 0;
    do
    {
      *&v8 = init->var0.var0[v9];
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
      stringValue = [v11 stringValue];
      [dictionary2 setValue:v10 forKey:stringValue];

      ++v9;
    }

    while (v9 < init->var0.var1);
  }
}

- (void)readMetaDataFromXML:(id)l
{
  lCopy = l;
  v4 = [lCopy mutableCopy];
  gmoMetaData = self->_gmoMetaData;
  self->_gmoMetaData = v4;
}

- (void)dumpMetaDataAsXML:(id)l
{
  lCopy = l;
  v5 = MEMORY[0x277CBEC28];
  for (i = lCopy; ; lCopy = i)
  {
    lastObject = [lCopy lastObject];
    v7 = [lastObject objectForKeyedSubscript:@"hasData"];
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
  createNewMetaDataDict = [(GmoDbgServices *)self createNewMetaDataDict];
  [(NSMutableArray *)v5 addObject:createNewMetaDataDict];

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
  createNewMetaDataDict = [(GmoDbgServices *)self createNewMetaDataDict];
  [(NSMutableArray *)gmoMetaData addObject:createNewMetaDataDict];

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:dictionary forKeyedSubscript:@"input"];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:dictionary2 forKeyedSubscript:@"intermediate"];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:dictionary3 forKeyedSubscript:@"debug"];

  return v2;
}

- (id)generateFolderNameWithId:(id)id
{
  idCopy = id;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = objc_opt_new();
  [v5 setDateFormat:@"yyyy-MM-dd"];
  v6 = [v5 stringFromDate:date];
  date2 = [MEMORY[0x277CBEAA8] date];
  v8 = objc_opt_new();
  [v8 setDateFormat:@"HH-mm-ss"];
  v9 = [v8 stringFromDate:date2];
  if (idCopy)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@%@", v6, v9, idCopy];
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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:@"/private/var/mobile/tmp/com.apple.cameracaptured/GMO_REC" withIntermediateDirectories:1 attributes:0 error:0];

  v8 = self->_gmoMetaData;
  createNewMetaDataDict = [(GmoDbgServices *)self createNewMetaDataDict];
  [(NSMutableArray *)v8 addObject:createNewMetaDataDict];

  v10 = dispatch_queue_create("PeridotDepth online updates", 0);
  queue = self->_queue;
  self->_queue = v10;

  return self;
}

+ (int)compareVersions:(id)versions toVersion:(id)version
{
  versionCopy = version;
  v6 = strdup([versions UTF8String]);
  v7 = strdup([versionCopy UTF8String]);
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