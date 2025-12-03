@interface PDSpotFinder
+ (BOOL)findSpotsInImage:(__CVBuffer *)image andUpdateCalib:(void *)calib forPreset:(int)preset distance:(float)distance isSphere:(BOOL)sphere outputFoMs:(id *)ms;
@end

@implementation PDSpotFinder

+ (BOOL)findSpotsInImage:(__CVBuffer *)image andUpdateCalib:(void *)calib forPreset:(int)preset distance:(float)distance isSphere:(BOOL)sphere outputFoMs:(id *)ms
{
  v275 = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetWidth(image) != 84 || CVPixelBufferGetHeight(image) != 864 || CVPixelBufferGetPixelFormatType(image) != 1278226534)
  {
    peridot_depth_log("image must be of width %zu, height %zu, and pixel format 'L00f'");
    return 0;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(calib);
  if (preset)
  {
    peridot_depth_log("spot finder currently only supports NormalRange preset");
    return 0;
  }

  v16 = MutableBytePtr;
  CVPixelBufferLockBaseAddress(image, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(image);
  BytesPerRow = CVPixelBufferGetBytesPerRow(image);
  __dst[0] = 0;
  __dst[1] = 0;
  v46 = 0;
  v47 = 0x11B8000000001;
  coder::array_base<float,int,2>::ensureCapacity(__dst, 72576);
  v19 = v16 + 344064;
  v20 = __dst[0];
  v21 = 864;
  do
  {
    memcpy(v20, BaseAddress, 0x150uLL);
    v20 += 336;
    BaseAddress += BytesPerRow;
    --v21;
  }

  while (v21);
  CVPixelBufferUnlockBaseAddress(image, 1uLL);
  v274 = 0x800000001;
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  memcpy(&state, &uv, 0x9C4uLL);
  isInitialized_spot_finder_peridot[0] = 1;
  spot_finder_peridot(__dst, distance, &unk_2247B94A8, v23);
  isInitialized_spot_finder_peridot[0] = 0;
  v24.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  peridot_depth_log("Ran spot finder in %f ms", ((v24.__d_.__rep_ - rep) / 1000) * 0.001);
  *(v19 + 307) = distance;
  v19[1232] = sphere;
  *(v19 + 83) = v50;
  *(v19 + 84) = v162;
  *(v19 + 85) = v51;
  *(v19 + 86) = v163;
  *(v19 + 87) = v52;
  *(v19 + 88) = v164;
  *(v19 + 89) = v53;
  *(v19 + 90) = v165;
  *(v19 + 91) = v54;
  *(v19 + 92) = v166;
  *(v19 + 93) = v55;
  *(v19 + 94) = v167;
  *(v19 + 95) = v56;
  *(v19 + 96) = v168;
  *(v19 + 97) = v57;
  *(v19 + 98) = v169;
  *(v19 + 99) = v58;
  *(v19 + 100) = v170;
  *(v19 + 101) = v59;
  *(v19 + 102) = v171;
  *(v19 + 103) = v60;
  *(v19 + 104) = v172;
  *(v19 + 105) = v61;
  *(v19 + 106) = v173;
  *(v19 + 107) = v62;
  *(v19 + 108) = v174;
  *(v19 + 109) = v63;
  *(v19 + 110) = v175;
  *(v19 + 111) = v64;
  *(v19 + 112) = v176;
  *(v19 + 113) = v65;
  *(v19 + 114) = v177;
  *(v19 + 115) = v66;
  *(v19 + 116) = v178;
  *(v19 + 117) = v67;
  *(v19 + 118) = v179;
  *(v19 + 119) = v68;
  *(v19 + 120) = v180;
  *(v19 + 121) = v69;
  *(v19 + 122) = v181;
  *(v19 + 123) = v70;
  *(v19 + 124) = v182;
  *(v19 + 125) = v71;
  *(v19 + 126) = v183;
  *(v19 + 127) = v72;
  *(v19 + 128) = v184;
  *(v19 + 129) = v73;
  *(v19 + 130) = v185;
  *(v19 + 131) = v74;
  *(v19 + 132) = v186;
  *(v19 + 133) = v75;
  *(v19 + 134) = v187;
  *(v19 + 135) = v76;
  *(v19 + 136) = v188;
  *(v19 + 137) = v77;
  *(v19 + 138) = v189;
  *(v19 + 139) = v78;
  *(v19 + 140) = v190;
  *(v19 + 141) = v79;
  *(v19 + 142) = v191;
  *(v19 + 143) = v80;
  *(v19 + 144) = v192;
  *(v19 + 145) = v81;
  *(v19 + 146) = v193;
  *(v19 + 147) = v82;
  *(v19 + 148) = v194;
  *(v19 + 149) = v83;
  *(v19 + 150) = v195;
  *(v19 + 151) = v84;
  *(v19 + 152) = v196;
  *(v19 + 153) = v85;
  *(v19 + 154) = v197;
  *(v19 + 155) = v86;
  *(v19 + 156) = v198;
  *(v19 + 157) = v87;
  *(v19 + 158) = v199;
  *(v19 + 159) = v88;
  *(v19 + 160) = v200;
  *(v19 + 161) = v89;
  *(v19 + 162) = v201;
  *(v19 + 163) = v90;
  *(v19 + 164) = v202;
  *(v19 + 165) = v91;
  *(v19 + 166) = v203;
  *(v19 + 167) = v92;
  *(v19 + 168) = v204;
  *(v19 + 169) = v93;
  *(v19 + 170) = v205;
  *(v19 + 171) = v94;
  *(v19 + 172) = v206;
  *(v19 + 173) = v95;
  *(v19 + 174) = v207;
  *(v19 + 175) = v96;
  *(v19 + 176) = v208;
  *(v19 + 177) = v97;
  *(v19 + 178) = v209;
  *(v19 + 179) = v98;
  *(v19 + 180) = v210;
  *(v19 + 181) = v99;
  *(v19 + 182) = v211;
  *(v19 + 183) = v100;
  *(v19 + 184) = v212;
  *(v19 + 185) = v101;
  *(v19 + 186) = v213;
  *(v19 + 187) = v102;
  *(v19 + 188) = v214;
  *(v19 + 189) = v103;
  *(v19 + 190) = v215;
  *(v19 + 191) = v104;
  *(v19 + 192) = v216;
  *(v19 + 193) = v105;
  *(v19 + 194) = v217;
  *(v19 + 195) = v106;
  *(v19 + 196) = v218;
  *(v19 + 197) = v107;
  *(v19 + 198) = v219;
  *(v19 + 199) = v108;
  *(v19 + 200) = v220;
  *(v19 + 201) = v109;
  *(v19 + 202) = v221;
  *(v19 + 203) = v110;
  *(v19 + 204) = v222;
  *(v19 + 205) = v111;
  *(v19 + 206) = v223;
  *(v19 + 207) = v112;
  *(v19 + 208) = v224;
  *(v19 + 209) = v113;
  *(v19 + 210) = v225;
  *(v19 + 211) = v114;
  *(v19 + 212) = v226;
  *(v19 + 213) = v115;
  *(v19 + 214) = v227;
  *(v19 + 215) = v116;
  *(v19 + 216) = v228;
  *(v19 + 217) = v117;
  *(v19 + 218) = v229;
  *(v19 + 219) = v118;
  *(v19 + 220) = v230;
  *(v19 + 221) = v119;
  *(v19 + 222) = v231;
  *(v19 + 223) = v120;
  *(v19 + 224) = v232;
  *(v19 + 225) = v121;
  *(v19 + 226) = v233;
  *(v19 + 227) = v122;
  *(v19 + 228) = v234;
  *(v19 + 229) = v123;
  *(v19 + 230) = v235;
  *(v19 + 231) = v124;
  *(v19 + 232) = v236;
  *(v19 + 233) = v125;
  *(v19 + 234) = v237;
  *(v19 + 235) = v126;
  *(v19 + 236) = v238;
  *(v19 + 237) = v127;
  *(v19 + 238) = v239;
  *(v19 + 239) = v128;
  *(v19 + 240) = v240;
  *(v19 + 241) = v129;
  *(v19 + 242) = v241;
  *(v19 + 243) = v130;
  *(v19 + 244) = v242;
  *(v19 + 245) = v131;
  *(v19 + 246) = v243;
  *(v19 + 247) = v132;
  *(v19 + 248) = v244;
  *(v19 + 249) = v133;
  *(v19 + 250) = v245;
  *(v19 + 251) = v134;
  *(v19 + 252) = v246;
  *(v19 + 253) = v135;
  *(v19 + 254) = v247;
  *(v19 + 255) = v136;
  *(v19 + 256) = v248;
  *(v19 + 257) = v137;
  *(v19 + 258) = v249;
  *(v19 + 259) = v138;
  *(v19 + 260) = v250;
  *(v19 + 261) = v139;
  *(v19 + 262) = v251;
  *(v19 + 263) = v140;
  *(v19 + 264) = v252;
  *(v19 + 265) = v141;
  *(v19 + 266) = v253;
  *(v19 + 267) = v142;
  *(v19 + 268) = v254;
  *(v19 + 269) = v143;
  *(v19 + 270) = v255;
  *(v19 + 271) = v144;
  *(v19 + 272) = v256;
  *(v19 + 273) = v145;
  *(v19 + 274) = v257;
  *(v19 + 275) = v146;
  *(v19 + 276) = v258;
  *(v19 + 277) = v147;
  *(v19 + 278) = v259;
  *(v19 + 279) = v148;
  *(v19 + 280) = v260;
  *(v19 + 281) = v149;
  *(v19 + 282) = v261;
  *(v19 + 283) = v150;
  *(v19 + 284) = v262;
  *(v19 + 285) = v151;
  *(v19 + 286) = v263;
  *(v19 + 287) = v152;
  *(v19 + 288) = v264;
  *(v19 + 289) = v153;
  *(v19 + 290) = v265;
  *(v19 + 291) = v154;
  *(v19 + 292) = v266;
  *(v19 + 293) = v155;
  *(v19 + 294) = v267;
  *(v19 + 295) = v156;
  *(v19 + 296) = v268;
  *(v19 + 297) = v157;
  *(v19 + 298) = v269;
  *(v19 + 299) = v158;
  *(v19 + 300) = v270;
  *(v19 + 301) = v159;
  *(v19 + 302) = v271;
  *(v19 + 303) = v160;
  *(v19 + 304) = v272;
  *(v19 + 305) = v161;
  *(v19 + 306) = v273;
  if (ms)
  {
    v48[0] = @"SF_Spots99pDistToNominal";
    v34 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
    v49[0] = v34;
    v48[1] = @"SF_numSpotsOutTol";
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
    v49[1] = v25;
    v48[2] = @"SF_missing_spots";
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
    v49[2] = v26;
    v48[3] = @"SF_Rx_mrad";
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
    v49[3] = v27;
    v48[4] = @"SF_Ry_mrad";
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
    v49[4] = v28;
    v48[5] = @"SF_Rz_mrad";
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
    v49[5] = v29;
    v48[6] = @"SF_Tx_mm";
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
    v49[6] = v30;
    v48[7] = @"SF_Ty_mm";
    v31 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
    v49[7] = v31;
    v48[8] = @"SF_Tz_mm";
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
    v49[8] = v32;
    v48[9] = @"SF_Rz_center_region_mrads";
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
    v49[9] = v33;
    *ms = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:10];
  }

  if (v46 == 1)
  {
    if (__dst[0])
    {
      MEMORY[0x22AA53170](__dst[0], 0x1000C8052888210);
    }
  }

  return 1;
}

@end