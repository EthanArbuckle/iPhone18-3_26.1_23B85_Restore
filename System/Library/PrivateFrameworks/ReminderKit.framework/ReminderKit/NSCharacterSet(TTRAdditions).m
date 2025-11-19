@interface NSCharacterSet(TTRAdditions)
+ (id)hashtagTokenAllowedCharacters;
+ (id)makeFormatCharacters;
+ (uint64_t)subtractOtherPunctuationCharactersFrom:()TTRAdditions;
@end

@implementation NSCharacterSet(TTRAdditions)

+ (id)hashtagTokenAllowedCharacters
{
  v0 = [MEMORY[0x1E696AD48] alphanumericCharacterSet];
  v1 = [MEMORY[0x1E696AB08] emojis];
  [v0 formUnionWithCharacterSet:v1];

  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-_"];
  [v0 formUnionWithCharacterSet:v2];

  v3 = [MEMORY[0x1E696AB08] makeFormatCharacters];
  [v0 formUnionWithCharacterSet:v3];

  v4 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  [v0 formUnionWithCharacterSet:v4];

  v5 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v0 formUnionWithCharacterSet:v5];

  [MEMORY[0x1E696AB08] subtractOtherPunctuationCharactersFrom:v0];

  return v0;
}

+ (id)makeFormatCharacters
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = xmmword_19A2303D0;
  v5 = xmmword_19A2303E0;
  v6 = xmmword_19A2303F0;
  v7 = xmmword_19A230400;
  v8 = xmmword_19A230410;
  v9 = xmmword_19A230420;
  v10 = xmmword_19A230430;
  v11 = xmmword_19A230440;
  v12 = xmmword_19A230450;
  v13 = xmmword_19A230460;
  v14 = xmmword_19A230470;
  v15 = xmmword_19A230480;
  v16 = xmmword_19A230490;
  v17 = xmmword_19A2304A0;
  v18 = xmmword_19A2304B0;
  v19 = xmmword_19A2304C0;
  v20 = xmmword_19A2304D0;
  v21 = xmmword_19A2304E0;
  v22 = xmmword_19A2304F0;
  v23 = xmmword_19A230500;
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  for (i = 0; i != 320; i += 16)
  {
    [v0 addCharactersInRange:{*(&v4 + i), *(&v4 + i + 8), v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v0;
}

+ (uint64_t)subtractOtherPunctuationCharactersFrom:()TTRAdditions
{
  v4 = 0;
  v190 = *MEMORY[0x1E69E9840];
  v7 = xmmword_19A230510;
  v8 = xmmword_19A230520;
  v9 = xmmword_19A230530;
  v10 = xmmword_19A230540;
  v11 = xmmword_19A230550;
  v12 = xmmword_19A230560;
  v13 = xmmword_19A230570;
  v14 = xmmword_19A230580;
  v15 = xmmword_19A230590;
  v16 = xmmword_19A2305A0;
  v17 = xmmword_19A2305B0;
  v18 = xmmword_19A2305C0;
  v19 = xmmword_19A2305D0;
  v20 = xmmword_19A2305E0;
  v21 = xmmword_19A2305F0;
  v22 = xmmword_19A230600;
  v23 = xmmword_19A230610;
  v24 = xmmword_19A230620;
  v25 = xmmword_19A230630;
  v26 = xmmword_19A230640;
  v27 = xmmword_19A230650;
  v28 = xmmword_19A230660;
  v29 = xmmword_19A230670;
  v30 = xmmword_19A230680;
  v31 = xmmword_19A230690;
  v32 = xmmword_19A2306A0;
  v33 = xmmword_19A2306B0;
  v34 = xmmword_19A2306C0;
  v35 = xmmword_19A2306D0;
  v36 = xmmword_19A2306E0;
  v37 = xmmword_19A2306F0;
  v38 = xmmword_19A230700;
  v39 = xmmword_19A230710;
  v40 = xmmword_19A230720;
  v41 = xmmword_19A230730;
  v42 = xmmword_19A230740;
  v43 = xmmword_19A230750;
  v44 = xmmword_19A230760;
  v45 = xmmword_19A230770;
  v46 = xmmword_19A230780;
  v47 = xmmword_19A230790;
  v48 = xmmword_19A2307A0;
  v49 = xmmword_19A2307B0;
  v50 = xmmword_19A2307C0;
  v51 = xmmword_19A2307D0;
  v52 = xmmword_19A2307E0;
  v53 = xmmword_19A2307F0;
  v54 = xmmword_19A230800;
  v55 = xmmword_19A230810;
  v56 = xmmword_19A230820;
  v57 = xmmword_19A230830;
  v58 = xmmword_19A230840;
  v59 = xmmword_19A230850;
  v60 = xmmword_19A230860;
  v61 = xmmword_19A230870;
  v62 = xmmword_19A230880;
  v63 = xmmword_19A230890;
  v64 = xmmword_19A2308A0;
  v65 = xmmword_19A2308B0;
  v66 = xmmword_19A2308C0;
  v67 = xmmword_19A2308D0;
  v68 = xmmword_19A2308E0;
  v69 = xmmword_19A2308F0;
  v70 = xmmword_19A230900;
  v71 = xmmword_19A230910;
  v72 = xmmword_19A230920;
  v73 = xmmword_19A230930;
  v74 = xmmword_19A230940;
  v75 = xmmword_19A230950;
  v76 = xmmword_19A230960;
  v77 = xmmword_19A230970;
  v78 = xmmword_19A230980;
  v79 = xmmword_19A230990;
  v80 = xmmword_19A2309A0;
  v81 = xmmword_19A2309B0;
  v82 = xmmword_19A2309C0;
  v83 = xmmword_19A2309D0;
  v84 = xmmword_19A2309E0;
  v85 = xmmword_19A2309F0;
  v86 = xmmword_19A230A00;
  v87 = xmmword_19A230A10;
  v88 = xmmword_19A230A20;
  v89 = xmmword_19A230A30;
  v90 = xmmword_19A230A40;
  v91 = xmmword_19A230A50;
  v92 = xmmword_19A230A60;
  v93 = xmmword_19A230A70;
  v94 = xmmword_19A230A80;
  v95 = xmmword_19A230A90;
  v96 = xmmword_19A230AA0;
  v97 = xmmword_19A230AB0;
  v98 = xmmword_19A230AC0;
  v99 = xmmword_19A230AD0;
  v100 = xmmword_19A230AE0;
  v101 = xmmword_19A230AF0;
  v102 = xmmword_19A230B00;
  v103 = xmmword_19A230B10;
  v104 = xmmword_19A230B20;
  v105 = xmmword_19A230B30;
  v106 = xmmword_19A230B40;
  v107 = xmmword_19A230B50;
  v108 = xmmword_19A230B60;
  v109 = xmmword_19A230B70;
  v110 = xmmword_19A230B80;
  v111 = xmmword_19A230B90;
  v112 = xmmword_19A230BA0;
  v113 = xmmword_19A230BB0;
  v114 = xmmword_19A230BC0;
  v115 = xmmword_19A230BD0;
  v116 = xmmword_19A230BE0;
  v117 = xmmword_19A230BF0;
  v118 = xmmword_19A230C00;
  v119 = xmmword_19A230C10;
  v120 = xmmword_19A230C20;
  v121 = xmmword_19A230C30;
  v122 = xmmword_19A230C40;
  v123 = xmmword_19A230C50;
  v124 = xmmword_19A230C60;
  v125 = xmmword_19A230C70;
  v126 = xmmword_19A230C80;
  v127 = xmmword_19A230C90;
  v128 = xmmword_19A230CA0;
  v129 = xmmword_19A230CB0;
  v130 = xmmword_19A230CC0;
  v131 = xmmword_19A230CD0;
  v132 = xmmword_19A230CE0;
  v133 = xmmword_19A230CF0;
  v134 = xmmword_19A230D00;
  v135 = xmmword_19A230D10;
  v136 = xmmword_19A230D20;
  v137 = xmmword_19A230D30;
  v138 = xmmword_19A230D40;
  v139 = xmmword_19A230D50;
  v140 = xmmword_19A230D60;
  v141 = xmmword_19A230D70;
  v142 = xmmword_19A230D80;
  v143 = xmmword_19A230D90;
  v144 = xmmword_19A230DA0;
  v145 = xmmword_19A230DB0;
  v146 = xmmword_19A230DC0;
  v147 = xmmword_19A230DD0;
  v148 = xmmword_19A230DE0;
  v149 = xmmword_19A230DF0;
  v150 = xmmword_19A230E00;
  v151 = xmmword_19A230E10;
  v152 = xmmword_19A230E20;
  v153 = xmmword_19A230E30;
  v154 = xmmword_19A230E40;
  v155 = xmmword_19A230E50;
  v156 = xmmword_19A230E60;
  v157 = xmmword_19A230E70;
  v158 = xmmword_19A230E80;
  v159 = xmmword_19A230E90;
  v160 = xmmword_19A230EA0;
  v161 = xmmword_19A230EB0;
  v162 = xmmword_19A230EC0;
  v163 = xmmword_19A230ED0;
  v164 = xmmword_19A230EE0;
  v165 = xmmword_19A230EF0;
  v166 = xmmword_19A230F00;
  v167 = xmmword_19A230F10;
  v168 = xmmword_19A230F20;
  v169 = xmmword_19A230F30;
  v170 = xmmword_19A230F40;
  v171 = xmmword_19A230F50;
  v172 = xmmword_19A230F60;
  v173 = xmmword_19A230F70;
  v174 = xmmword_19A230F80;
  v175 = xmmword_19A230F90;
  v176 = xmmword_19A230FA0;
  v177 = xmmword_19A230FB0;
  v178 = xmmword_19A230FC0;
  v179 = xmmword_19A230FD0;
  v180 = xmmword_19A230FE0;
  v181 = xmmword_19A230FF0;
  v182 = xmmword_19A231000;
  v183 = xmmword_19A231010;
  v184 = xmmword_19A231020;
  v185 = xmmword_19A231030;
  v186 = xmmword_19A231040;
  v187 = xmmword_19A231050;
  v188 = xmmword_19A231060;
  v189 = xmmword_19A231070;
  do
  {
    result = [a3 removeCharactersInRange:{*(&v7 + v4), *(&v7 + v4 + 8), v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36}];
    v4 += 16;
  }

  while (v4 != 2928);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end