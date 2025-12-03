@interface _SUIAShockwaveMeshes
+ (id)captureButtonMesh;
+ (id)identityMeshTransformRows:(unsigned int)rows columns:(unsigned int)columns sharpness:(float)sharpness normalization:(id)normalization replicatesEdges:(BOOL)edges;
+ (id)siriButtonAndEdgeMesh;
+ (id)stingMesh;
@end

@implementation _SUIAShockwaveMeshes

+ (id)identityMeshTransformRows:(unsigned int)rows columns:(unsigned int)columns sharpness:(float)sharpness normalization:(id)normalization replicatesEdges:(BOOL)edges
{
  edgesCopy = edges;
  v25 = *&sharpness;
  normalizationCopy = normalization;
  v11 = objc_alloc_init(MEMORY[0x277CD9F18]);
  [v11 setDepthNormalization:normalizationCopy];
  [v11 setReplicatesEdges:edgesCopy];
  v12 = rows - 1;
  if (!rows)
  {
    goto LABEL_13;
  }

  v13 = 0;
  do
  {
    if (v13)
    {
      v14 = ((1.0 / v12) * v13);
    }

    else
    {
      v14 = 0.0;
    }

    if (columns)
    {
      v15 = 0;
      do
      {
        v16 = ((1.0 / (columns - 1)) * v15);
        if (!v15)
        {
          v16 = 0.0;
        }

        v27 = v16;
        v28 = v14;
        *v29.i64 = v16;
        *&v29.i64[1] = v14;
        v30 = 0x3FE0000000000000;
        [v11 addVertex:{&v27, v25}];
        ++v15;
      }

      while (columns != v15);
    }

    ++v13;
  }

  while (v13 != rows);
  if (rows != 1)
  {
LABEL_13:
    v17 = 0;
    v18 = vdupq_lane_s32(*&v25, 0);
    v26 = v18;
    do
    {
      if (columns == 1)
      {
        ++v17;
      }

      else
      {
        v19 = v17 * columns;
        v20 = ++v17 * columns;
        v21 = columns - 1;
        do
        {
          v22 = v19 + 1;
          v23 = v20 + 1;
          LODWORD(v27) = v19;
          HIDWORD(v27) = v19 + 1;
          LODWORD(v28) = v20 + 1;
          HIDWORD(v28) = v20;
          v29 = v18;
          [v11 addFace:{&v27, v26.i64[0]}];
          v18 = v26;
          v19 = v22;
          v20 = v23;
          --v21;
        }

        while (v21);
      }
    }

    while (v17 != v12);
  }

  return v11;
}

+ (id)siriButtonAndEdgeMesh
{
  v115 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 32);
  v10[2] = xmmword_26C618490;
  v10[3] = xmmword_26C6184A0;
  v10[4] = xmmword_26C6184B0;
  v10[5] = xmmword_26C6184C0;
  __asm { FMOV            V2.2D, #0.5 }

  v10[6] = xmmword_26C6184C0;
  v10[7] = _Q2;
  v10[8] = xmmword_26C6184B0;
  v10[9] = xmmword_26C6184B0;
  v10[10] = xmmword_26C6184D0;
  v10[11] = xmmword_26C6184D0;
  v10[12] = xmmword_26C6184E0;
  v10[13] = xmmword_26C6184F0;
  v10[14] = xmmword_26C6184B0;
  v10[15] = xmmword_26C618500;
  v10[16] = xmmword_26C618500;
  v10[17] = xmmword_26C618510;
  v10[18] = xmmword_26C618520;
  v10[19] = xmmword_26C618530;
  v11 = vdupq_n_s64(0x3FC555555FFDF467uLL);
  v12 = v11;
  v13 = xmmword_26C618540;
  v14 = xmmword_26C618550;
  v15 = xmmword_26C618530;
  v16 = xmmword_26C618490;
  v17 = xmmword_26C618490;
  v18 = xmmword_26C618560;
  v19 = xmmword_26C618570;
  v20 = xmmword_26C618530;
  v21 = xmmword_26C618580;
  v22 = xmmword_26C618580;
  v23 = xmmword_26C618590;
  v24 = xmmword_26C6185A0;
  v25 = xmmword_26C618530;
  v26 = xmmword_26C6185B0;
  v27 = xmmword_26C6185B0;
  v28 = xmmword_26C618490;
  v29 = xmmword_26C6185C0;
  v30 = xmmword_26C6185D0;
  v31 = vdupq_n_s64(0x3FD555556000B417uLL);
  v32 = v31;
  v33 = _Q2;
  v34 = xmmword_26C6185E0;
  v35 = xmmword_26C6185F0;
  v36 = xmmword_26C618600;
  v37 = xmmword_26C618600;
  v38 = xmmword_26C6184E0;
  v39 = xmmword_26C618610;
  v40 = xmmword_26C6185D0;
  v41 = xmmword_26C618620;
  v42 = xmmword_26C618620;
  v43 = xmmword_26C618510;
  v44 = xmmword_26C618510;
  v45 = _Q2;
  v46 = xmmword_26C618530;
  v47 = xmmword_26C618530;
  v48 = xmmword_26C618540;
  v49 = xmmword_26C618630;
  v50 = xmmword_26C618640;
  v51 = _Q2;
  v52 = xmmword_26C618650;
  v53 = xmmword_26C618560;
  v54 = xmmword_26C618660;
  v55 = xmmword_26C618640;
  v56 = xmmword_26C618670;
  v57 = xmmword_26C618670;
  v58 = xmmword_26C618590;
  v59 = xmmword_26C618590;
  v60 = _Q2;
  v61 = xmmword_26C618680;
  v62 = xmmword_26C618680;
  v63 = xmmword_26C618490;
  v64 = xmmword_26C618690;
  v65 = xmmword_26C6186A0;
  v66 = xmmword_26C6186B0;
  v67 = xmmword_26C6186B0;
  v68 = _Q2;
  v69 = xmmword_26C6186A0;
  v70 = xmmword_26C6186A0;
  v71 = vdupq_n_s64(0x3FE555555FFF543FuLL);
  v72 = v71;
  v73 = xmmword_26C6184E0;
  v74 = xmmword_26C6186C0;
  v75 = xmmword_26C6186A0;
  v76 = xmmword_26C6186D0;
  v77 = xmmword_26C6186D0;
  v78 = xmmword_26C618510;
  v79 = xmmword_26C6186E0;
  v80 = xmmword_26C618670;
  v81 = xmmword_26C6186F0;
  v82 = xmmword_26C6186F0;
  v83 = xmmword_26C618540;
  v84 = xmmword_26C618700;
  v85 = xmmword_26C618670;
  v86 = xmmword_26C6184E0;
  v87 = xmmword_26C6184E0;
  v88 = xmmword_26C618560;
  v89 = xmmword_26C618710;
  v90 = xmmword_26C618670;
  v91 = vdupq_n_s64(0x3FEAAAAAA000ABC1uLL);
  v92 = v91;
  v93 = xmmword_26C618590;
  v94 = xmmword_26C618720;
  v95 = xmmword_26C618670;
  v96 = xmmword_26C618730;
  v97 = xmmword_26C618730;
  v98 = xmmword_26C618490;
  v99 = xmmword_26C618740;
  v100 = xmmword_26C618750;
  v101 = xmmword_26C618760;
  v102 = xmmword_26C618760;
  v103 = _Q2;
  v104 = xmmword_26C618750;
  v105 = xmmword_26C618750;
  v106 = xmmword_26C618770;
  v107 = xmmword_26C618770;
  v108 = xmmword_26C6184E0;
  v109 = xmmword_26C618780;
  v110 = xmmword_26C618750;
  __asm { FMOV            V1.2D, #1.0 }

  v111 = _Q1;
  v112 = _Q1;
  v113 = 0x3FE0000000000000;
  v114[0] = xmmword_26C618790;
  v114[1] = 0u;
  v114[2] = xmmword_26C6187A0;
  v114[3] = 0u;
  v114[4] = xmmword_26C6187B0;
  v114[5] = 0u;
  v114[6] = xmmword_26C6187C0;
  v114[7] = 0u;
  v114[8] = xmmword_26C6187D0;
  v114[9] = 0u;
  v114[10] = xmmword_26C6187E0;
  v114[11] = 0u;
  v114[12] = xmmword_26C6187F0;
  v114[13] = 0u;
  v114[14] = xmmword_26C618800;
  v114[15] = 0u;
  v114[16] = xmmword_26C618810;
  v114[17] = 0u;
  v114[18] = xmmword_26C618820;
  v114[19] = 0u;
  v114[20] = xmmword_26C618830;
  v114[21] = 0u;
  v114[22] = xmmword_26C618840;
  v114[23] = 0u;
  v114[24] = xmmword_26C618850;
  v114[25] = 0u;
  v114[26] = xmmword_26C618860;
  v114[27] = 0u;
  v114[28] = xmmword_26C618870;
  v114[29] = 0u;
  v114[30] = xmmword_26C618880;
  v114[31] = 0u;
  v114[32] = xmmword_26C618890;
  v114[33] = 0u;
  v114[34] = xmmword_26C6188A0;
  v114[35] = 0u;
  v114[36] = xmmword_26C6188B0;
  v114[37] = 0u;
  v114[38] = xmmword_26C6188C0;
  v114[39] = 0u;
  v114[40] = xmmword_26C6188D0;
  v114[41] = 0u;
  v114[42] = xmmword_26C6188E0;
  v114[43] = 0u;
  v114[44] = xmmword_26C6188F0;
  v114[45] = 0u;
  v114[46] = xmmword_26C618900;
  v114[47] = 0u;
  v114[48] = xmmword_26C618910;
  v114[49] = 0u;
  v114[50] = xmmword_26C618920;
  v114[51] = 0u;
  v114[52] = xmmword_26C618930;
  v114[53] = 0u;
  v114[54] = xmmword_26C618940;
  v114[55] = 0u;
  v114[56] = xmmword_26C618950;
  v114[57] = 0u;
  v114[58] = xmmword_26C618960;
  v114[59] = 0u;
  v114[60] = xmmword_26C618970;
  v114[61] = 0u;
  v114[62] = xmmword_26C618980;
  v114[63] = 0u;
  v114[64] = xmmword_26C618990;
  v114[65] = 0u;
  v114[66] = xmmword_26C6189A0;
  v114[67] = 0u;
  v114[68] = xmmword_26C6189B0;
  v114[69] = 0u;
  v114[70] = xmmword_26C6189C0;
  v114[71] = 0u;
  v8 = [MEMORY[0x277CD9F18] meshTransformWithVertexCount:49 vertices:v10 faceCount:36 faces:v114 depthNormalization:*MEMORY[0x277CDA150]];
  [v8 setReplicatesEdges:1];

  return v8;
}

+ (id)captureButtonMesh
{
  v121 = *MEMORY[0x277D85DE8];
  memset(v17, 0, 32);
  v17[2] = xmmword_26C6189D0;
  v17[3] = xmmword_26C6189E0;
  v17[4] = xmmword_26C6184B0;
  v17[5] = xmmword_26C6189F0;
  v17[6] = xmmword_26C6189F0;
  v17[7] = xmmword_26C618A00;
  v17[8] = xmmword_26C618A10;
  v17[9] = xmmword_26C6184B0;
  v17[10] = xmmword_26C618510;
  v17[11] = xmmword_26C618510;
  v17[12] = xmmword_26C618A20;
  v17[13] = xmmword_26C618A30;
  v17[14] = xmmword_26C6184B0;
  v17[15] = xmmword_26C618A40;
  v17[16] = xmmword_26C618A40;
  v17[17] = xmmword_26C618A50;
  v17[18] = xmmword_26C618A60;
  v17[19] = xmmword_26C6184B0;
  v17[20] = xmmword_26C618500;
  v17[21] = xmmword_26C618500;
  v17[22] = xmmword_26C618510;
  v17[23] = xmmword_26C618A70;
  __asm { FMOV            V6.2D, #0.125 }

  v17[24] = xmmword_26C618A80;
  v17[25] = _Q6;
  v17[26] = _Q6;
  v17[27] = xmmword_26C618A90;
  v17[28] = xmmword_26C618AA0;
  v17[29] = xmmword_26C618A80;
  v17[30] = xmmword_26C618AB0;
  v17[31] = xmmword_26C618AB0;
  __asm { FMOV            V16.2D, #0.5 }

  v17[32] = _Q16;
  v17[33] = xmmword_26C618A80;
  v17[34] = xmmword_26C618A80;
  v17[35] = xmmword_26C618AC0;
  v17[36] = xmmword_26C618AC0;
  v17[37] = xmmword_26C618AD0;
  v17[38] = xmmword_26C618AE0;
  v17[39] = xmmword_26C618A80;
  v17[40] = xmmword_26C618AF0;
  v17[41] = xmmword_26C618AF0;
  v17[42] = xmmword_26C618590;
  v17[43] = xmmword_26C618B00;
  v17[44] = xmmword_26C618A80;
  v17[45] = xmmword_26C618B10;
  v17[46] = xmmword_26C618B10;
  v17[47] = xmmword_26C6189D0;
  v17[48] = xmmword_26C618B20;
  v17[49] = xmmword_26C618B30;
  __asm { FMOV            V20.2D, #0.25 }

  v17[50] = _Q20;
  v17[51] = xmmword_26C618B40;
  v17[52] = xmmword_26C618A00;
  v17[53] = xmmword_26C618B50;
  v17[54] = xmmword_26C618B30;
  v17[55] = xmmword_26C618A90;
  v17[56] = xmmword_26C618B60;
  v17[57] = xmmword_26C618A20;
  v17[58] = xmmword_26C618B70;
  v17[59] = xmmword_26C618B30;
  v17[60] = xmmword_26C618B80;
  v17[61] = xmmword_26C618B90;
  v17[62] = xmmword_26C618A50;
  v17[63] = xmmword_26C618BA0;
  v17[64] = xmmword_26C618B30;
  v17[65] = xmmword_26C618BB0;
  v17[66] = xmmword_26C618BB0;
  v17[67] = xmmword_26C618510;
  v17[68] = xmmword_26C618BC0;
  v17[69] = xmmword_26C618BD0;
  v17[70] = xmmword_26C618BE0;
  v17[71] = xmmword_26C618BE0;
  v17[72] = xmmword_26C618A90;
  v17[73] = xmmword_26C618BF0;
  v17[74] = xmmword_26C618BD0;
  __asm { FMOV            V21.2D, #0.375 }

  v17[75] = _Q21;
  v17[76] = xmmword_26C618C00;
  v17[77] = _Q16;
  v17[78] = xmmword_26C618C10;
  v17[79] = xmmword_26C618BD0;
  v17[80] = xmmword_26C618C20;
  v17[81] = xmmword_26C618C30;
  v17[82] = xmmword_26C618AD0;
  v17[83] = xmmword_26C618C40;
  v17[84] = xmmword_26C618BD0;
  v17[85] = xmmword_26C618C50;
  v17[86] = xmmword_26C618C50;
  v17[87] = xmmword_26C618590;
  v17[88] = xmmword_26C618C60;
  v17[89] = xmmword_26C618BD0;
  v17[90] = xmmword_26C6184B0;
  v17[91] = xmmword_26C6184B0;
  v17[92] = xmmword_26C6189D0;
  v17[93] = xmmword_26C6189D0;
  v17[94] = _Q16;
  v17[95] = xmmword_26C618B30;
  v17[96] = xmmword_26C618C70;
  v17[97] = xmmword_26C618A00;
  v17[98] = xmmword_26C618C80;
  v17[99] = _Q16;
  v17[100] = _Q16;
  v17[101] = xmmword_26C618C90;
  v17[102] = xmmword_26C618A20;
  v17[103] = xmmword_26C618CA0;
  v17[104] = xmmword_26C618CB0;
  v17[105] = xmmword_26C618CC0;
  v17[106] = xmmword_26C618CD0;
  v17[107] = xmmword_26C618A50;
  v17[108] = xmmword_26C618A50;
  v17[109] = _Q16;
  v17[110] = xmmword_26C618750;
  v17[111] = xmmword_26C618750;
  v17[112] = xmmword_26C618510;
  v17[113] = xmmword_26C618CE0;
  v17[114] = xmmword_26C618CF0;
  v17[115] = xmmword_26C618D00;
  v17[116] = xmmword_26C618D00;
  v17[117] = xmmword_26C618A90;
  v17[118] = xmmword_26C618D10;
  v17[119] = xmmword_26C618D20;
  v17[120] = xmmword_26C618D30;
  v17[121] = xmmword_26C618D40;
  v17[122] = _Q16;
  v17[123] = xmmword_26C618CF0;
  v17[124] = xmmword_26C618D50;
  __asm { FMOV            V21.2D, #0.625 }

  v17[125] = _Q21;
  v17[126] = xmmword_26C618D60;
  v17[127] = xmmword_26C618AD0;
  v17[128] = xmmword_26C618D70;
  v17[129] = xmmword_26C618CF0;
  v17[130] = xmmword_26C618D80;
  v17[131] = xmmword_26C618D80;
  v17[132] = xmmword_26C618590;
  v17[133] = xmmword_26C618D90;
  v17[134] = xmmword_26C618CF0;
  v17[135] = xmmword_26C618DA0;
  v17[136] = xmmword_26C618DA0;
  v17[137] = xmmword_26C6189D0;
  v17[138] = xmmword_26C618DB0;
  v17[139] = xmmword_26C618CC0;
  v17[140] = xmmword_26C618DC0;
  v17[141] = xmmword_26C618DC0;
  v17[142] = xmmword_26C618A00;
  v17[143] = xmmword_26C618DD0;
  v17[144] = xmmword_26C618CC0;
  v17[145] = xmmword_26C618AD0;
  v17[146] = xmmword_26C618AD0;
  v17[147] = xmmword_26C618A20;
  v17[148] = xmmword_26C618DE0;
  v17[149] = xmmword_26C618CC0;
  __asm { FMOV            V20.2D, #0.75 }

  v17[150] = _Q20;
  v17[151] = _Q20;
  v17[152] = xmmword_26C618A50;
  v17[153] = xmmword_26C618DF0;
  v17[154] = xmmword_26C618CC0;
  v17[155] = xmmword_26C618E00;
  v17[156] = xmmword_26C618E00;
  v17[157] = xmmword_26C618510;
  v17[158] = xmmword_26C618E10;
  v17[159] = xmmword_26C618E20;
  v17[160] = xmmword_26C618E30;
  v17[161] = xmmword_26C618E30;
  v17[162] = xmmword_26C618A90;
  v17[163] = xmmword_26C618E40;
  v17[164] = xmmword_26C618E20;
  v17[165] = xmmword_26C618E50;
  v17[166] = xmmword_26C618E50;
  v17[167] = _Q16;
  v17[168] = xmmword_26C618E20;
  v17[169] = xmmword_26C618E20;
  v17[170] = xmmword_26C618E60;
  v17[171] = xmmword_26C618E60;
  v17[172] = xmmword_26C618AD0;
  v17[173] = xmmword_26C618E70;
  v17[174] = xmmword_26C618E20;
  __asm { FMOV            V7.2D, #0.875 }

  v17[175] = _Q7;
  v17[176] = _Q7;
  v17[177] = xmmword_26C618590;
  v17[178] = xmmword_26C618E80;
  v17[179] = xmmword_26C618E20;
  v17[180] = xmmword_26C618730;
  v17[181] = xmmword_26C618730;
  v17[182] = xmmword_26C6189D0;
  v17[183] = xmmword_26C618E90;
  v17[184] = xmmword_26C618750;
  v17[185] = xmmword_26C618EA0;
  v17[186] = xmmword_26C618EA0;
  v17[187] = xmmword_26C618A00;
  v17[188] = xmmword_26C618EB0;
  v17[189] = xmmword_26C618750;
  v17[190] = xmmword_26C618590;
  v17[191] = xmmword_26C618590;
  v17[192] = xmmword_26C618A20;
  v17[193] = xmmword_26C618EC0;
  v17[194] = xmmword_26C618750;
  v17[195] = xmmword_26C618ED0;
  v17[196] = xmmword_26C618ED0;
  v17[197] = xmmword_26C618A50;
  v17[198] = xmmword_26C618EE0;
  v17[199] = xmmword_26C618750;
  __asm { FMOV            V1.2D, #1.0 }

  v17[200] = _Q1;
  v17[201] = _Q1;
  v18 = 0x3FE0000000000000;
  v19[0] = xmmword_26C618EF0;
  v19[1] = 0u;
  v19[2] = xmmword_26C618F00;
  v19[3] = 0u;
  v19[4] = xmmword_26C618F10;
  v19[5] = 0u;
  v19[6] = xmmword_26C618F20;
  v19[7] = 0u;
  v19[8] = xmmword_26C618F30;
  v19[9] = 0u;
  v19[10] = xmmword_26C618F40;
  v19[11] = 0u;
  v19[12] = xmmword_26C618F50;
  v19[13] = 0u;
  v19[14] = xmmword_26C618F60;
  v19[15] = 0u;
  v19[16] = xmmword_26C618F70;
  v19[17] = 0u;
  v19[18] = xmmword_26C618F80;
  v19[19] = 0u;
  v19[20] = xmmword_26C618F90;
  v19[21] = 0u;
  v19[22] = xmmword_26C618FA0;
  v19[23] = 0u;
  v19[24] = xmmword_26C618FB0;
  v19[25] = 0u;
  v19[26] = xmmword_26C618FC0;
  v19[27] = 0u;
  v19[28] = xmmword_26C618FD0;
  v19[29] = 0u;
  v19[30] = xmmword_26C618FE0;
  v19[31] = 0u;
  v19[32] = xmmword_26C618FF0;
  v19[33] = 0u;
  v19[34] = xmmword_26C619000;
  v19[35] = 0u;
  v19[36] = xmmword_26C619010;
  v19[37] = 0u;
  v19[38] = xmmword_26C619020;
  v19[39] = 0u;
  v19[40] = xmmword_26C619030;
  v19[41] = 0u;
  v19[42] = xmmword_26C619040;
  v19[43] = 0u;
  v19[44] = xmmword_26C619050;
  v19[45] = 0u;
  v19[46] = xmmword_26C619060;
  v19[47] = 0u;
  v19[48] = xmmword_26C619070;
  v19[49] = 0u;
  v19[50] = xmmword_26C619080;
  v19[51] = 0u;
  v19[52] = xmmword_26C619090;
  v19[53] = 0u;
  v19[54] = xmmword_26C6190A0;
  v19[55] = 0u;
  v19[56] = xmmword_26C6190B0;
  v19[57] = 0u;
  v19[58] = xmmword_26C6190C0;
  v19[59] = 0u;
  v19[60] = xmmword_26C6190D0;
  v21 = 0;
  v20 = 0;
  v22 = xmmword_26C6190E0;
  v24 = 0;
  v23 = 0;
  v25 = xmmword_26C6190F0;
  v27 = 0;
  v26 = 0;
  v28 = xmmword_26C619100;
  v30 = 0;
  v29 = 0;
  v31 = xmmword_26C619110;
  v33 = 0;
  v32 = 0;
  v34 = xmmword_26C619120;
  v36 = 0;
  v35 = 0;
  v37 = xmmword_26C619130;
  v39 = 0;
  v38 = 0;
  v40 = xmmword_26C619140;
  v42 = 0;
  v41 = 0;
  v43 = xmmword_26C619150;
  v45 = 0;
  v44 = 0;
  v46 = xmmword_26C619160;
  v48 = 0;
  v47 = 0;
  v49 = xmmword_26C619170;
  v51 = 0;
  v50 = 0;
  v52 = xmmword_26C619180;
  v54 = 0;
  v53 = 0;
  v55 = xmmword_26C619190;
  v57 = 0;
  v56 = 0;
  v58 = xmmword_26C6191A0;
  v60 = 0;
  v59 = 0;
  v61 = xmmword_26C6191B0;
  v63 = 0;
  v62 = 0;
  v64 = xmmword_26C6191C0;
  v66 = 0;
  v65 = 0;
  v67 = xmmword_26C6191D0;
  v69 = 0;
  v68 = 0;
  v70 = xmmword_26C6191E0;
  v72 = 0;
  v71 = 0;
  v73 = xmmword_26C6191F0;
  v75 = 0;
  v74 = 0;
  v76 = xmmword_26C619200;
  v78 = 0;
  v77 = 0;
  v79 = xmmword_26C619210;
  v81 = 0;
  v80 = 0;
  v82 = xmmword_26C619220;
  v84 = 0;
  v83 = 0;
  v85 = xmmword_26C619230;
  v87 = 0;
  v86 = 0;
  v88 = xmmword_26C619240;
  v90 = 0;
  v89 = 0;
  v91 = xmmword_26C619250;
  v93 = 0;
  v92 = 0;
  v94 = xmmword_26C619260;
  v96 = 0;
  v95 = 0;
  v97 = xmmword_26C619270;
  v99 = 0;
  v98 = 0;
  v100 = xmmword_26C619280;
  v102 = 0;
  v101 = 0;
  v103 = xmmword_26C619290;
  v105 = 0;
  v104 = 0;
  v106 = xmmword_26C6192A0;
  v108 = 0;
  v107 = 0;
  v109 = xmmword_26C6192B0;
  v111 = 0;
  v110 = 0;
  v112 = xmmword_26C6192C0;
  v114 = 0;
  v113 = 0;
  v14 = *MEMORY[0x277CDA150];
  v115 = xmmword_26C6192D0;
  v117 = 0;
  v116 = 0;
  v118 = xmmword_26C6192E0;
  v120 = 0;
  v119 = 0;
  v15 = [MEMORY[0x277CD9F18] meshTransformWithVertexCount:81 vertices:v17 faceCount:64 faces:v19 depthNormalization:v14];
  [v15 setReplicatesEdges:1];

  return v15;
}

+ (id)stingMesh
{
  v62 = *MEMORY[0x277D85DE8];
  memset(v60, 0, 32);
  v60[2] = xmmword_26C618A90;
  v60[3] = xmmword_26C618B10;
  v60[4] = xmmword_26C6184B0;
  v60[5] = xmmword_26C618510;
  v60[6] = xmmword_26C618510;
  v60[7] = xmmword_26C618AD0;
  v60[8] = xmmword_26C618DA0;
  v60[9] = xmmword_26C6184B0;
  v60[10] = xmmword_26C618500;
  v60[11] = xmmword_26C618500;
  v60[12] = xmmword_26C618510;
  v60[13] = xmmword_26C6189F0;
  __asm { FMOV            V5.2D, #0.25 }

  v60[14] = xmmword_26C618B30;
  v60[15] = _Q5;
  __asm { FMOV            V6.2D, #0.5 }

  v60[16] = xmmword_26C6192F0;
  v60[17] = _Q6;
  v60[18] = xmmword_26C618B30;
  v60[19] = xmmword_26C619300;
  v60[20] = xmmword_26C618B80;
  v60[21] = xmmword_26C619310;
  v60[22] = xmmword_26C618590;
  v60[23] = xmmword_26C618EA0;
  v60[24] = xmmword_26C618B30;
  v60[25] = xmmword_26C6184B0;
  v60[26] = xmmword_26C6184B0;
  v60[27] = xmmword_26C618A90;
  v60[28] = xmmword_26C618A90;
  v60[29] = _Q6;
  v60[30] = _Q6;
  v60[31] = _Q6;
  v60[32] = xmmword_26C618AD0;
  v60[33] = xmmword_26C618AD0;
  v60[34] = _Q6;
  v60[35] = xmmword_26C618750;
  v60[36] = xmmword_26C618750;
  v60[37] = xmmword_26C618510;
  v60[38] = xmmword_26C618A40;
  v60[39] = xmmword_26C618CC0;
  v60[40] = xmmword_26C618DC0;
  v60[41] = xmmword_26C619320;
  v60[42] = _Q6;
  v60[43] = xmmword_26C618CC0;
  __asm { FMOV            V6.2D, #0.75 }

  v60[44] = xmmword_26C619330;
  v60[45] = _Q6;
  v60[46] = xmmword_26C619340;
  v60[47] = xmmword_26C618590;
  v60[48] = xmmword_26C618ED0;
  v60[49] = xmmword_26C618CC0;
  v60[50] = xmmword_26C618730;
  v60[51] = xmmword_26C618730;
  v60[52] = xmmword_26C618A90;
  v60[53] = xmmword_26C618BB0;
  v60[54] = xmmword_26C618750;
  v60[55] = xmmword_26C618590;
  v60[56] = xmmword_26C618590;
  v60[57] = xmmword_26C618AD0;
  v60[58] = xmmword_26C618E00;
  v60[59] = xmmword_26C618750;
  __asm { FMOV            V0.2D, #1.0 }

  v60[60] = _Q0;
  v60[61] = _Q0;
  v61 = 0x3FE0000000000000;
  v12 = xmmword_26C619350;
  v13 = 0;
  v14 = 0;
  v15 = xmmword_26C619360;
  v16 = 0;
  v17 = 0;
  v18 = xmmword_26C619370;
  v19 = 0;
  v20 = 0;
  v21 = xmmword_26C619380;
  v22 = 0;
  v23 = 0;
  v24 = xmmword_26C619390;
  v25 = 0;
  v26 = 0;
  v27 = xmmword_26C6193A0;
  v28 = 0;
  v29 = 0;
  v30 = xmmword_26C6193B0;
  v31 = 0;
  v32 = 0;
  v33 = xmmword_26C6193C0;
  v34 = 0;
  v35 = 0;
  v36 = xmmword_26C6193D0;
  v37 = 0;
  v38 = 0;
  v39 = xmmword_26C6193E0;
  v40 = 0;
  v41 = 0;
  v42 = xmmword_26C6193F0;
  v43 = 0;
  v44 = 0;
  v45 = xmmword_26C619400;
  v46 = 0;
  v47 = 0;
  v48 = xmmword_26C619410;
  v49 = 0;
  v50 = 0;
  v51 = xmmword_26C619420;
  v52 = 0;
  v53 = 0;
  v54 = xmmword_26C619430;
  v55 = 0;
  v56 = 0;
  v57 = xmmword_26C619440;
  v58 = 0;
  v59 = 0;
  v10 = [MEMORY[0x277CD9F18] meshTransformWithVertexCount:25 vertices:v60 faceCount:16 faces:&v12 depthNormalization:*MEMORY[0x277CDA150]];
  [v10 setReplicatesEdges:1];

  return v10;
}

@end