@interface MOBundleContentExtractor
- (MOBundleContentExtractor)initWithConfigurationManager:(id)manager promptManager:(id)promptManager;
- (id)_extractContentFromBundle:(id)bundle;
- (id)_extractContentFromOutingBundle:(id)bundle;
- (id)_extractDictionaryFromBundle:(id)bundle;
- (id)_extractPersonNamesFromPersons:(id)persons;
- (id)_extractPersonsFromBundle:(id)bundle;
- (id)_filterOutVisitRelatedBundlesFrom:(id)from;
- (id)_sortedBundleBasedOnGoodnessScore:(id)score;
- (unint64_t)_extractActivityTypeFromBundle:(id)bundle;
- (unint64_t)_extractBundleTypeFromBundle:(id)bundle;
- (unint64_t)_extractPeopleClassificationFromPersons:(id)persons;
- (unint64_t)_extractPhotoTraitFromBundle:(id)bundle;
- (unint64_t)_extractPlaceTypeFromBundle:(id)bundle;
- (unint64_t)_extractTimeFromBundle:(id)bundle;
- (unint64_t)_findFirstMatchingCuratedPhotoTraitSetForBundle:(id)bundle;
- (unint64_t)_findMatchingMetaDataWithPeopleClassification:(unint64_t)classification;
- (void)_addContentRatingForSongTitleAndArtistSuggestions:(id)suggestions;
- (void)_extractDominantMusicFromBundle:(id)bundle forBundleContent:(id)content;
- (void)_extractPlaceOrCityNameFromBundle:(id)bundle forBundleContent:(id)content;
- (void)_extractTimeReferenceFromBundle:(id)bundle forBundleContent:(id)content;
- (void)_filterExtractedBundles:(id)bundles contextPredicate:(id)predicate withHandler:(id)handler;
- (void)_filterExtractedBundles:(id)bundles withHandler:(id)handler;
- (void)_sortedBundleContextFromUpdatedGoodnessScore:(id)score;
- (void)_updateContextGoodnessScoreFromBundle:(id)bundle forBundleContent:(id)content;
- (void)extractContentsFromBundlesWithBundlePredicate:(id)predicate contextPredicate:(id)contextPredicate handler:(id)handler;
- (void)extractContentsFromBundlesWithHandler:(id)handler;
@end

@implementation MOBundleContentExtractor

- (MOBundleContentExtractor)initWithConfigurationManager:(id)manager promptManager:(id)promptManager
{
  managerCopy = manager;
  promptManagerCopy = promptManager;
  v129.receiver = self;
  v129.super_class = MOBundleContentExtractor;
  v7 = [(MOBundleContentExtractor *)&v129 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("MOBundleContentExtractor", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v330 = &off_1000C7A80;
    v331 = &off_1000C9148;
    v126 = [NSDictionary dictionaryWithObjects:&v331 forKeys:&v330 count:1];
    v332[0] = v126;
    v328 = &off_1000C7A98;
    v329 = &off_1000C9160;
    v125 = [NSDictionary dictionaryWithObjects:&v329 forKeys:&v328 count:1];
    v332[1] = v125;
    v326 = &off_1000C7AB0;
    v327 = &off_1000C9178;
    v124 = [NSDictionary dictionaryWithObjects:&v327 forKeys:&v326 count:1];
    v332[2] = v124;
    v324 = &off_1000C7AC8;
    v325 = &off_1000C9190;
    v123 = [NSDictionary dictionaryWithObjects:&v325 forKeys:&v324 count:1];
    v332[3] = v123;
    v322 = &off_1000C7AC8;
    v323 = &off_1000C91A8;
    v122 = [NSDictionary dictionaryWithObjects:&v323 forKeys:&v322 count:1];
    v332[4] = v122;
    v320 = &off_1000C7AE0;
    v321 = &off_1000C91C0;
    v121 = [NSDictionary dictionaryWithObjects:&v321 forKeys:&v320 count:1];
    v332[5] = v121;
    v318 = &off_1000C7AF8;
    v319 = &off_1000C91D8;
    v120 = [NSDictionary dictionaryWithObjects:&v319 forKeys:&v318 count:1];
    v332[6] = v120;
    v316 = &off_1000C7B10;
    v317 = &off_1000C91F0;
    v119 = [NSDictionary dictionaryWithObjects:&v317 forKeys:&v316 count:1];
    v332[7] = v119;
    v314 = &off_1000C7B28;
    v315 = &off_1000C9208;
    v118 = [NSDictionary dictionaryWithObjects:&v315 forKeys:&v314 count:1];
    v332[8] = v118;
    v312 = &off_1000C7B40;
    v313 = &off_1000C9220;
    v117 = [NSDictionary dictionaryWithObjects:&v313 forKeys:&v312 count:1];
    v332[9] = v117;
    v310 = &off_1000C7B58;
    v311 = &off_1000C9238;
    v116 = [NSDictionary dictionaryWithObjects:&v311 forKeys:&v310 count:1];
    v332[10] = v116;
    v308 = &off_1000C7B70;
    v309 = &off_1000C9250;
    v115 = [NSDictionary dictionaryWithObjects:&v309 forKeys:&v308 count:1];
    v332[11] = v115;
    v306 = &off_1000C7B88;
    v307 = &off_1000C9268;
    v114 = [NSDictionary dictionaryWithObjects:&v307 forKeys:&v306 count:1];
    v332[12] = v114;
    v304 = &off_1000C7BA0;
    v305 = &off_1000C9280;
    v113 = [NSDictionary dictionaryWithObjects:&v305 forKeys:&v304 count:1];
    v332[13] = v113;
    v302 = &off_1000C7BB8;
    v303 = &off_1000C9298;
    v112 = [NSDictionary dictionaryWithObjects:&v303 forKeys:&v302 count:1];
    v332[14] = v112;
    v300 = &off_1000C7BD0;
    v301 = &off_1000C92B0;
    v111 = [NSDictionary dictionaryWithObjects:&v301 forKeys:&v300 count:1];
    v332[15] = v111;
    v298 = &off_1000C7BE8;
    v299 = &off_1000C92C8;
    v110 = [NSDictionary dictionaryWithObjects:&v299 forKeys:&v298 count:1];
    v332[16] = v110;
    v296 = &off_1000C7C00;
    v297 = &off_1000C92E0;
    v109 = [NSDictionary dictionaryWithObjects:&v297 forKeys:&v296 count:1];
    v332[17] = v109;
    v294 = &off_1000C7C18;
    v295 = &off_1000C92F8;
    v108 = [NSDictionary dictionaryWithObjects:&v295 forKeys:&v294 count:1];
    v332[18] = v108;
    v292 = &off_1000C7C30;
    v293 = &off_1000C9310;
    v107 = [NSDictionary dictionaryWithObjects:&v293 forKeys:&v292 count:1];
    v332[19] = v107;
    v290 = &off_1000C7C48;
    v291 = &off_1000C9328;
    v106 = [NSDictionary dictionaryWithObjects:&v291 forKeys:&v290 count:1];
    v332[20] = v106;
    v288 = &off_1000C7C60;
    v289 = &off_1000C9340;
    v105 = [NSDictionary dictionaryWithObjects:&v289 forKeys:&v288 count:1];
    v332[21] = v105;
    v286 = &off_1000C7B58;
    v287 = &off_1000C9358;
    v104 = [NSDictionary dictionaryWithObjects:&v287 forKeys:&v286 count:1];
    v332[22] = v104;
    v284 = &off_1000C7AC8;
    v285 = &off_1000C9370;
    v103 = [NSDictionary dictionaryWithObjects:&v285 forKeys:&v284 count:1];
    v332[23] = v103;
    v282 = &off_1000C7C78;
    v283 = &off_1000C9388;
    v102 = [NSDictionary dictionaryWithObjects:&v283 forKeys:&v282 count:1];
    v332[24] = v102;
    v280 = &off_1000C7C90;
    v281 = &off_1000C93A0;
    v101 = [NSDictionary dictionaryWithObjects:&v281 forKeys:&v280 count:1];
    v332[25] = v101;
    v278 = &off_1000C7CA8;
    v279 = &off_1000C93B8;
    v100 = [NSDictionary dictionaryWithObjects:&v279 forKeys:&v278 count:1];
    v332[26] = v100;
    v276 = &off_1000C7CC0;
    v277 = &off_1000C93D0;
    v99 = [NSDictionary dictionaryWithObjects:&v277 forKeys:&v276 count:1];
    v332[27] = v99;
    v274 = &off_1000C7CD8;
    v275 = &off_1000C93E8;
    v98 = [NSDictionary dictionaryWithObjects:&v275 forKeys:&v274 count:1];
    v332[28] = v98;
    v272 = &off_1000C7CF0;
    v273 = &off_1000C9400;
    v97 = [NSDictionary dictionaryWithObjects:&v273 forKeys:&v272 count:1];
    v332[29] = v97;
    v270 = &off_1000C7D08;
    v271 = &off_1000C9418;
    v96 = [NSDictionary dictionaryWithObjects:&v271 forKeys:&v270 count:1];
    v332[30] = v96;
    v268 = &off_1000C7D20;
    v269 = &off_1000C9430;
    v95 = [NSDictionary dictionaryWithObjects:&v269 forKeys:&v268 count:1];
    v332[31] = v95;
    v266 = &off_1000C7D38;
    v267 = &off_1000C9448;
    v94 = [NSDictionary dictionaryWithObjects:&v267 forKeys:&v266 count:1];
    v332[32] = v94;
    v264 = &off_1000C7D50;
    v265 = &off_1000C9460;
    v93 = [NSDictionary dictionaryWithObjects:&v265 forKeys:&v264 count:1];
    v332[33] = v93;
    v262 = &off_1000C7D68;
    v263 = &off_1000C9478;
    v92 = [NSDictionary dictionaryWithObjects:&v263 forKeys:&v262 count:1];
    v332[34] = v92;
    v260 = &off_1000C7D80;
    v261 = &off_1000C9490;
    v91 = [NSDictionary dictionaryWithObjects:&v261 forKeys:&v260 count:1];
    v332[35] = v91;
    v258 = &off_1000C7D98;
    v259 = &off_1000C94A8;
    v90 = [NSDictionary dictionaryWithObjects:&v259 forKeys:&v258 count:1];
    v332[36] = v90;
    v256 = &off_1000C7DB0;
    v257 = &off_1000C94C0;
    v89 = [NSDictionary dictionaryWithObjects:&v257 forKeys:&v256 count:1];
    v332[37] = v89;
    v254 = &off_1000C7DC8;
    v255 = &off_1000C94D8;
    v88 = [NSDictionary dictionaryWithObjects:&v255 forKeys:&v254 count:1];
    v332[38] = v88;
    v252 = &off_1000C7DE0;
    v253 = &off_1000C94F0;
    v87 = [NSDictionary dictionaryWithObjects:&v253 forKeys:&v252 count:1];
    v332[39] = v87;
    v250 = &off_1000C7DF8;
    v251 = &off_1000C9508;
    v86 = [NSDictionary dictionaryWithObjects:&v251 forKeys:&v250 count:1];
    v332[40] = v86;
    v248 = &off_1000C7E10;
    v249 = &off_1000C9520;
    v85 = [NSDictionary dictionaryWithObjects:&v249 forKeys:&v248 count:1];
    v332[41] = v85;
    v246 = &off_1000C7E28;
    v247 = &off_1000C9538;
    v84 = [NSDictionary dictionaryWithObjects:&v247 forKeys:&v246 count:1];
    v332[42] = v84;
    v244 = &off_1000C7E40;
    v245 = &off_1000C9550;
    v83 = [NSDictionary dictionaryWithObjects:&v245 forKeys:&v244 count:1];
    v332[43] = v83;
    v242 = &off_1000C7E58;
    v243 = &off_1000C9568;
    v82 = [NSDictionary dictionaryWithObjects:&v243 forKeys:&v242 count:1];
    v332[44] = v82;
    v240 = &off_1000C7E70;
    v241 = &off_1000C9580;
    v81 = [NSDictionary dictionaryWithObjects:&v241 forKeys:&v240 count:1];
    v332[45] = v81;
    v238 = &off_1000C7E88;
    v239 = &off_1000C9598;
    v80 = [NSDictionary dictionaryWithObjects:&v239 forKeys:&v238 count:1];
    v332[46] = v80;
    v236 = &off_1000C7EA0;
    v237 = &off_1000C95B0;
    v79 = [NSDictionary dictionaryWithObjects:&v237 forKeys:&v236 count:1];
    v332[47] = v79;
    v234 = &off_1000C7EB8;
    v235 = &off_1000C95C8;
    v78 = [NSDictionary dictionaryWithObjects:&v235 forKeys:&v234 count:1];
    v332[48] = v78;
    v232 = &off_1000C7ED0;
    v233 = &off_1000C95E0;
    v77 = [NSDictionary dictionaryWithObjects:&v233 forKeys:&v232 count:1];
    v332[49] = v77;
    v230 = &off_1000C7EE8;
    v231 = &off_1000C95F8;
    v76 = [NSDictionary dictionaryWithObjects:&v231 forKeys:&v230 count:1];
    v332[50] = v76;
    v228 = &off_1000C7F00;
    v229 = &off_1000C9610;
    v75 = [NSDictionary dictionaryWithObjects:&v229 forKeys:&v228 count:1];
    v332[51] = v75;
    v226 = &off_1000C7F18;
    v227 = &off_1000C9628;
    v74 = [NSDictionary dictionaryWithObjects:&v227 forKeys:&v226 count:1];
    v332[52] = v74;
    v224 = &off_1000C7F30;
    v225 = &off_1000C9640;
    v73 = [NSDictionary dictionaryWithObjects:&v225 forKeys:&v224 count:1];
    v332[53] = v73;
    v222 = &off_1000C7F48;
    v223 = &off_1000C9658;
    v72 = [NSDictionary dictionaryWithObjects:&v223 forKeys:&v222 count:1];
    v332[54] = v72;
    v220 = &off_1000C7F60;
    v221 = &off_1000C9670;
    v71 = [NSDictionary dictionaryWithObjects:&v221 forKeys:&v220 count:1];
    v332[55] = v71;
    v218 = &off_1000C7F78;
    v219 = &off_1000C9688;
    v70 = [NSDictionary dictionaryWithObjects:&v219 forKeys:&v218 count:1];
    v332[56] = v70;
    v216 = &off_1000C7F90;
    v217 = &off_1000C96A0;
    v69 = [NSDictionary dictionaryWithObjects:&v217 forKeys:&v216 count:1];
    v332[57] = v69;
    v214 = &off_1000C7FA8;
    v215 = &off_1000C96B8;
    v68 = [NSDictionary dictionaryWithObjects:&v215 forKeys:&v214 count:1];
    v332[58] = v68;
    v212 = &off_1000C7FC0;
    v213 = &off_1000C96D0;
    v67 = [NSDictionary dictionaryWithObjects:&v213 forKeys:&v212 count:1];
    v332[59] = v67;
    v210 = &off_1000C7FD8;
    v211 = &off_1000C96E8;
    v66 = [NSDictionary dictionaryWithObjects:&v211 forKeys:&v210 count:1];
    v332[60] = v66;
    v208 = &off_1000C7FF0;
    v209 = &off_1000C9700;
    v65 = [NSDictionary dictionaryWithObjects:&v209 forKeys:&v208 count:1];
    v332[61] = v65;
    v206 = &off_1000C8008;
    v207 = &off_1000C9718;
    v64 = [NSDictionary dictionaryWithObjects:&v207 forKeys:&v206 count:1];
    v332[62] = v64;
    v204 = &off_1000C8020;
    v205 = &off_1000C9730;
    v63 = [NSDictionary dictionaryWithObjects:&v205 forKeys:&v204 count:1];
    v332[63] = v63;
    v202 = &off_1000C8038;
    v203 = &off_1000C9748;
    v62 = [NSDictionary dictionaryWithObjects:&v203 forKeys:&v202 count:1];
    v332[64] = v62;
    v200 = &off_1000C8050;
    v201 = &off_1000C9760;
    v61 = [NSDictionary dictionaryWithObjects:&v201 forKeys:&v200 count:1];
    v332[65] = v61;
    v198 = &off_1000C8068;
    v199 = &off_1000C9778;
    v60 = [NSDictionary dictionaryWithObjects:&v199 forKeys:&v198 count:1];
    v332[66] = v60;
    v196 = &off_1000C8080;
    v197 = &off_1000C9790;
    v59 = [NSDictionary dictionaryWithObjects:&v197 forKeys:&v196 count:1];
    v332[67] = v59;
    v194 = &off_1000C8098;
    v195 = &off_1000C97A8;
    v58 = [NSDictionary dictionaryWithObjects:&v195 forKeys:&v194 count:1];
    v332[68] = v58;
    v192 = &off_1000C80B0;
    v193 = &off_1000C97C0;
    v57 = [NSDictionary dictionaryWithObjects:&v193 forKeys:&v192 count:1];
    v332[69] = v57;
    v190 = &off_1000C80C8;
    v191 = &off_1000C97D8;
    v56 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v190 count:1];
    v332[70] = v56;
    v188 = &off_1000C80E0;
    v189 = &off_1000C97F0;
    v55 = [NSDictionary dictionaryWithObjects:&v189 forKeys:&v188 count:1];
    v332[71] = v55;
    v186 = &off_1000C80F8;
    v187 = &off_1000C9808;
    v54 = [NSDictionary dictionaryWithObjects:&v187 forKeys:&v186 count:1];
    v332[72] = v54;
    v184 = &off_1000C8110;
    v185 = &off_1000C9820;
    v51 = [NSDictionary dictionaryWithObjects:&v185 forKeys:&v184 count:1];
    v332[73] = v51;
    v182 = &off_1000C8128;
    v183 = &off_1000C9838;
    v50 = [NSDictionary dictionaryWithObjects:&v183 forKeys:&v182 count:1];
    v332[74] = v50;
    v180 = &off_1000C8140;
    v181 = &off_1000C9850;
    v49 = [NSDictionary dictionaryWithObjects:&v181 forKeys:&v180 count:1];
    v332[75] = v49;
    v178 = &off_1000C8158;
    v179 = &off_1000C9868;
    v48 = [NSDictionary dictionaryWithObjects:&v179 forKeys:&v178 count:1];
    v332[76] = v48;
    v176 = &off_1000C8170;
    v177 = &off_1000C9880;
    v47 = [NSDictionary dictionaryWithObjects:&v177 forKeys:&v176 count:1];
    v332[77] = v47;
    v174 = &off_1000C8188;
    v175 = &off_1000C9898;
    v46 = [NSDictionary dictionaryWithObjects:&v175 forKeys:&v174 count:1];
    v332[78] = v46;
    v172 = &off_1000C81A0;
    v173 = &off_1000C98B0;
    v45 = [NSDictionary dictionaryWithObjects:&v173 forKeys:&v172 count:1];
    v332[79] = v45;
    v170 = &off_1000C81B8;
    v171 = &off_1000C98C8;
    v44 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
    v332[80] = v44;
    v168 = &off_1000C81D0;
    v169 = &off_1000C98E0;
    v43 = [NSDictionary dictionaryWithObjects:&v169 forKeys:&v168 count:1];
    v332[81] = v43;
    v166 = &off_1000C81E8;
    v167 = &off_1000C98F8;
    v42 = [NSDictionary dictionaryWithObjects:&v167 forKeys:&v166 count:1];
    v332[82] = v42;
    v164 = &off_1000C8200;
    v165 = &off_1000C9910;
    v41 = [NSDictionary dictionaryWithObjects:&v165 forKeys:&v164 count:1];
    v332[83] = v41;
    v162 = &off_1000C8218;
    v163 = &off_1000C9928;
    v40 = [NSDictionary dictionaryWithObjects:&v163 forKeys:&v162 count:1];
    v332[84] = v40;
    v160 = &off_1000C8230;
    v161 = &off_1000C9940;
    v39 = [NSDictionary dictionaryWithObjects:&v161 forKeys:&v160 count:1];
    v332[85] = v39;
    v158 = &off_1000C8248;
    v159 = &off_1000C9958;
    v38 = [NSDictionary dictionaryWithObjects:&v159 forKeys:&v158 count:1];
    v332[86] = v38;
    v156 = &off_1000C8260;
    v157 = &off_1000C9970;
    v37 = [NSDictionary dictionaryWithObjects:&v157 forKeys:&v156 count:1];
    v332[87] = v37;
    v154 = &off_1000C8278;
    v155 = &off_1000C9988;
    v36 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
    v332[88] = v36;
    v152 = &off_1000C8290;
    v153 = &off_1000C99A0;
    v35 = [NSDictionary dictionaryWithObjects:&v153 forKeys:&v152 count:1];
    v332[89] = v35;
    v150 = &off_1000C82A8;
    v151 = &off_1000C99B8;
    v34 = [NSDictionary dictionaryWithObjects:&v151 forKeys:&v150 count:1];
    v332[90] = v34;
    v148 = &off_1000C82C0;
    v149 = &off_1000C99D0;
    v33 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
    v332[91] = v33;
    v146 = &off_1000C82D8;
    v147 = &off_1000C99E8;
    v11 = [NSDictionary dictionaryWithObjects:&v147 forKeys:&v146 count:1];
    v332[92] = v11;
    v144 = &off_1000C82F0;
    v145 = &off_1000C9A00;
    v12 = [NSDictionary dictionaryWithObjects:&v145 forKeys:&v144 count:1];
    v332[93] = v12;
    v142 = &off_1000C8308;
    v143 = &off_1000C9A18;
    v13 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
    v332[94] = v13;
    v140 = &off_1000C8320;
    v141 = &off_1000C9A30;
    v14 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];
    v332[95] = v14;
    v138 = &off_1000C8338;
    v139 = &off_1000C9A48;
    v15 = [NSDictionary dictionaryWithObjects:&v139 forKeys:&v138 count:1];
    v332[96] = v15;
    v136 = &off_1000C8350;
    v137 = &off_1000C9A60;
    v16 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
    v332[97] = v16;
    v134 = &off_1000C8368;
    v135 = &off_1000C9A78;
    [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
    v17 = obj = promptManager;
    v332[98] = v17;
    v132 = &off_1000C8380;
    v133 = &off_1000C9A90;
    [NSDictionary dictionaryWithObjects:&v133 forKeys:&v132 count:1];
    v18 = v53 = manager;
    v332[99] = v18;
    v130 = &off_1000C8398;
    v131 = &off_1000C9AA8;
    v19 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
    v332[100] = v19;
    v20 = [NSArray arrayWithObjects:v332 count:101];
    curatedPhotoTraitsList = v7->_curatedPhotoTraitsList;
    v7->_curatedPhotoTraitsList = v20;

    v22 = [NSSet setWithObjects:&off_1000C7A80, &off_1000C7AB0, &off_1000C82C0, &off_1000C82D8, &off_1000C82A8, &off_1000C7AC8, &off_1000C7AE0, &off_1000C7B58, &off_1000C7D20, &off_1000C7CD8, 0];
    metaDataAllowListForSongTitleArtistInclusionActivityType = v7->_metaDataAllowListForSongTitleArtistInclusionActivityType;
    v7->_metaDataAllowListForSongTitleArtistInclusionActivityType = v22;

    v24 = [NSSet setWithObjects:&off_1000C82A8, &off_1000C7B58, &off_1000C7CF0, &off_1000C7A98, &off_1000C7C78, &off_1000C7D50, &off_1000C7FC0, &off_1000C7DB0, &off_1000C7FA8, &off_1000C8020, &off_1000C8038, &off_1000C8068, &off_1000C8080, 0];
    metaDataAllowListForSongTitleArtistInclusionPlaceType = v7->_metaDataAllowListForSongTitleArtistInclusionPlaceType;
    v7->_metaDataAllowListForSongTitleArtistInclusionPlaceType = v24;

    v26 = [NSSet setWithObjects:&off_1000C82A8, 0];
    metaDataAllowListForSongTitleArtistInclusionBundleType = v7->_metaDataAllowListForSongTitleArtistInclusionBundleType;
    v7->_metaDataAllowListForSongTitleArtistInclusionBundleType = v26;

    v28 = [NSSet setWithObjects:&off_1000C7CC0, &off_1000C7F00, &off_1000C7FC0, &off_1000C7D98, &off_1000C7DB0, &off_1000C7F60, &off_1000C7F78, &off_1000C7F90, &off_1000C7FA8, &off_1000C8020, &off_1000C8038, &off_1000C8050, &off_1000C8068, &off_1000C8080, &off_1000C7DC8, &off_1000C8098, &off_1000C80C8, &off_1000C80E0, &off_1000C80F8, &off_1000C8158, &off_1000C8170, &off_1000C8188, &off_1000C81A0, &off_1000C81B8, &off_1000C81D0, &off_1000C81E8, &off_1000C8200, &off_1000C8218, &off_1000C8230, &off_1000C8248, &off_1000C8260, &off_1000C8278, &off_1000C8290, &off_1000C7E40, &off_1000C7E58, &off_1000C7E70, &off_1000C7E88, &off_1000C7EA0, &off_1000C7EB8, &off_1000C7DF8, &off_1000C7F18, &off_1000C7ED0, &off_1000C7EE8, &off_1000C7DE0, &off_1000C8380, &off_1000C7E10, &off_1000C7E28, &off_1000C80B0, &off_1000C8320, &off_1000C7FF0, &off_1000C7FD8, &off_1000C8008, &off_1000C8128, &off_1000C8140, 0];
    metaDataAllowListForSongTitleArtistInclusionPhotoTrait = v7->_metaDataAllowListForSongTitleArtistInclusionPhotoTrait;
    v7->_metaDataAllowListForSongTitleArtistInclusionPhotoTrait = v28;

    objc_storeStrong(&v7->_promptManager, obj);
    v30 = +[MOBundleContentExtractor insignificantPlaceTypes];
    insignificantPlaceTypes = v7->_insignificantPlaceTypes;
    v7->_insignificantPlaceTypes = v30;

    objc_storeStrong(&v7->_configurationManager, v53);
  }

  return v7;
}

- (void)extractContentsFromBundlesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __66__MOBundleContentExtractor_extractContentsFromBundlesWithHandler___block_invoke;
  v7[3] = &unk_1000B4A70;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __66__MOBundleContentExtractor_extractContentsFromBundlesWithHandler___block_invoke(uint64_t a1)
{
  v2 = +[MOSettingsManager sharedInstance];
  v3 = [v2 getStateForSetting:11];

  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = &__kCFBooleanFalse;
    if (v3)
    {
      v5 = &__kCFBooleanTrue;
    }

    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "system significant location enabled, %@", &v15, 0xCu);
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v6))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCCreateBundleContent", "", &v15, 2u);
  }

  v7 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCCreateBundleContent" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v7 startSession];
  v8 = +[NSDate now];
  v9 = [*(a1 + 32) configurationManager];
  v10 = [v9 getIntegerSettingForKey:@"NumberOfWeeksForFetchBundle" withFallback:4];

  v11 = [v8 dateByAddingTimeInterval:v10 * -604800.0];
  v12 = *(a1 + 32);
  v13 = objc_opt_new();
  [v12 _extractContentsFromBundleStartDate:v11 endDate:v8 daysPerFetch:3 significantLocationEnabled:v3 partialResults:v13 withHandler:*(a1 + 40)];

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCCreateBundleContent", "", &v15, 2u);
  }

  [(MOPerformanceMeasurement *)v7 endSession];
}

- (void)extractContentsFromBundlesWithBundlePredicate:(id)predicate contextPredicate:(id)contextPredicate handler:(id)handler
{
  contextPredicateCopy = contextPredicate;
  handlerCopy = handler;
  promptManager = self->_promptManager;
  fetchRequestPredicate = [predicate fetchRequestPredicate];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __99__MOBundleContentExtractor_extractContentsFromBundlesWithBundlePredicate_contextPredicate_handler___block_invoke;
  v14[3] = &unk_1000B4A98;
  v15 = contextPredicateCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v12 = contextPredicateCopy;
  v13 = handlerCopy;
  [(MOPromptManager *)promptManager fetchEventBundlesWithPredicate:fetchRequestPredicate handler:v14];
}

void __99__MOBundleContentExtractor_extractContentsFromBundlesWithBundlePredicate_contextPredicate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __99__MOBundleContentExtractor_extractContentsFromBundlesWithBundlePredicate_contextPredicate_handler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = [v5 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetchEventBundlesWithPredicate, fetched eventBundle count, %lu", &v11, 0xCu);
    }

    v9 = predicateForRemovingDuplicates(@"suggestionID");
    v10 = [v5 filteredArrayUsingPredicate:v9];
    [*(a1 + 32) _filterExtractedBundles:v10 contextPredicate:*(a1 + 40) withHandler:*(a1 + 48)];
  }
}

void __139__MOBundleContentExtractor__extractContentsFromBundleStartDate_endDate_daysPerFetch_significantLocationEnabled_partialResults_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v6)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __139__MOBundleContentExtractor__extractContentsFromBundleStartDate_endDate_daysPerFetch_significantLocationEnabled_partialResults_withHandler___block_invoke_cold_1();
    }

    v9 = *(a1 + 56);
    v35 = NSLocalizedDescriptionKey;
    v36 = @"Bundle fetching failed";
    v10 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v11 = [NSError errorWithDomain:@"MOContextErrorDomain" code:2570 userInfo:v10];
    v12 = [NSError errorUsingError:v11 withUnderyingError:v6];
    (*(v9 + 16))(v9, 0, v12);
  }

  else
  {
    if ([v5 count])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = v5;
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          v17 = 0;
          do
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(a1 + 32) addObject:*(*(&v30 + 1) + 8 * v17)];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v15);
      }
    }

    v18 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __139__MOBundleContentExtractor__extractContentsFromBundleStartDate_endDate_daysPerFetch_significantLocationEnabled_partialResults_withHandler___block_invoke_1541;
    block[3] = &unk_1000B4AE8;
    objc_copyWeak(v28, (a1 + 64));
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v28[1] = *(a1 + 72);
    v29 = *(a1 + 80);
    v21 = *(a1 + 32);
    v22 = *(a1 + 56);
    *&v23 = v21;
    *(&v23 + 1) = v22;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    v26 = v24;
    v27 = v23;
    dispatch_async(v18, block);

    objc_destroyWeak(v28);
  }
}

void __139__MOBundleContentExtractor__extractContentsFromBundleStartDate_endDate_daysPerFetch_significantLocationEnabled_partialResults_withHandler___block_invoke_1541(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _extractContentsFromBundleStartDate:*(a1 + 32) endDate:*(a1 + 40) daysPerFetch:*(a1 + 72) significantLocationEnabled:*(a1 + 80) partialResults:*(a1 + 48) withHandler:*(a1 + 56)];
}

- (void)_filterExtractedBundles:(id)bundles withHandler:(id)handler
{
  bundlesCopy = bundles;
  handlerCopy = handler;
  v7 = [bundlesCopy count];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *buf = 134217984;
      v84 = [bundlesCopy count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "total count of fetched bundles %lu", buf, 0xCu);
    }

    v52 = handlerCopy;

    v53 = bundlesCopy;
    v10 = [(MOBundleContentExtractor *)self _sortedBundleBasedOnGoodnessScore:bundlesCopy];
    v11 = objc_opt_new();
    v60 = objc_opt_new();
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v10;
    v57 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
    if (v57)
    {
      v12 = *v79;
      v54 = *v79;
      do
      {
        for (i = 0; i != v57; i = i + 1)
        {
          if (*v79 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v78 + 1) + 8 * i);
          if (([v14 isSensitive] & 1) != 0 || (objc_msgSend(v14, "interfaceType") == 13 || objc_msgSend(v14, "summarizationGranularity") == 2) && objc_msgSend(v14, "interfaceType") != 13)
          {
            v25 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              [v14 bundleIdentifier];
              v26 = v59 = i;
              interfaceType = [v14 interfaceType];
              bundleSubType = [v14 bundleSubType];
              v29 = v25;
              summarizationGranularity = [v14 summarizationGranularity];
              isSensitive = [v14 isSensitive];
              *buf = 138413314;
              v84 = v26;
              v85 = 2048;
              v86 = interfaceType;
              v87 = 2048;
              v88 = bundleSubType;
              v89 = 2048;
              v90 = summarizationGranularity;
              v25 = v29;
              v91 = 2048;
              v92 = isSensitive;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "#bundlecuration, filtered bundle. reason: coarse granularity summary.bundleID %@, interfaceType %lu, subType %lu, summarizationGranularity %lu, isSensitive %lu", buf, 0x34u);

              i = v59;
            }
          }

          else
          {
            v15 = [(MOBundleContentExtractor *)self _extractContentFromBundle:v14];
            v62 = v15;
            v58 = i;
            if ([v11 count] && v15)
            {
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v16 = v11;
              v17 = [v16 countByEnumeratingWithState:&v74 objects:v94 count:16];
              if (v17)
              {
                v18 = v17;
                v61 = *v75;
                while (2)
                {
                  for (j = 0; j != v18; j = j + 1)
                  {
                    if (*v75 != v61)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v20 = *(*(&v74 + 1) + 8 * j);
                    v21 = [v15 compareMetadataWith:v20];
                    v22 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412802;
                      v84 = v62;
                      v85 = 2112;
                      v86 = v20;
                      v87 = 2048;
                      v88 = v21;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "#bundlededuping, comparing content, %@, current bundleContent, %@, result, %lu", buf, 0x20u);
                    }

                    if (v21 == 3)
                    {
                      [v60 addObject:v20];
                      v15 = v62;
                    }

                    else
                    {
                      v23 = v21 == 4 || v21 == 1;
                      v15 = v62;
                      if (v23)
                      {
                        v32 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
                        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                        {
                          *buf = 138412802;
                          v84 = v62;
                          v85 = 2112;
                          v86 = v20;
                          v87 = 1024;
                          LODWORD(v88) = 0;
                          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "#bundlededuping, duped bundle, %@, against, %@, bundleSelected, %d", buf, 0x1Cu);
                        }

                        goto LABEL_43;
                      }
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v74 objects:v94 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (([v16 containsObject:v15] & 1) == 0)
              {
                [v16 addObject:v15];
                v24 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v84 = v15;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "#bundlecuration, bundle selected and content is queued to generate prompts: %@", buf, 0xCu);
                }
              }
            }

            else if (v15)
            {
              [v11 addObject:v15];
            }

LABEL_43:
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v34 = v60;
            v35 = [v34 countByEnumeratingWithState:&v70 objects:v93 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v71;
              do
              {
                for (k = 0; k != v36; k = k + 1)
                {
                  if (*v71 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v70 + 1) + 8 * k);
                  if ([v11 containsObject:v39])
                  {
                    v40 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v84 = v39;
                      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "#bundlecuration, prune bundle containing only subset of other content metadata %@", buf, 0xCu);
                    }

                    [v11 removeObject:v39];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v70 objects:v93 count:16];
              }

              while (v36);
            }

            [(MOBundleContentExtractor *)self _sortedBundleContextFromUpdatedGoodnessScore:v11];
            v12 = v54;
            i = v58;
            v25 = v62;
          }
        }

        v57 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
      }

      while (v57);
    }

    [(MOBundleContentExtractor *)self _addContentRatingForSongTitleAndArtistSuggestions:v11];
    v41 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = [v11 count];
      *buf = 134217984;
      v84 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "extracted bundle content count, %lu", buf, 0xCu);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v43 = v11;
    v44 = [v43 countByEnumeratingWithState:&v66 objects:v82 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v67;
      do
      {
        for (m = 0; m != v45; m = m + 1)
        {
          if (*v67 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v66 + 1) + 8 * m);
          v49 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v84 = v48;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "bundle content after extraction, de-duping and sorting: %@", buf, 0xCu);
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v66 objects:v82 count:16];
      }

      while (v45);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __64__MOBundleContentExtractor__filterExtractedBundles_withHandler___block_invoke;
    block[3] = &unk_1000B4B38;
    handlerCopy = v52;
    v64 = v43;
    v65 = v52;
    v51 = v43;
    dispatch_async(queue, block);

    bundlesCopy = v53;
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "no bundle context is extracted due to 0 bundle fetched", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)_filterExtractedBundles:(id)bundles contextPredicate:(id)predicate withHandler:(id)handler
{
  bundlesCopy = bundles;
  predicateCopy = predicate;
  handlerCopy = handler;
  if ([bundlesCopy count])
  {
    v43 = handlerCopy;
    fetchRequestPredicate = [predicateCopy fetchRequestPredicate];
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:fetchRequestPredicate error:0];
    [v11 allowEvaluation];
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      predicateFormat = [v11 predicateFormat];
      *buf = 138412290;
      v62 = predicateFormat;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "deserializedContextPredicateData, %@", buf, 0xCu);
    }

    objc_opt_class();
    v44 = predicateCopy;
    v41 = v11;
    v42 = fetchRequestPredicate;
    if (objc_opt_isKindOfClass())
    {
      subpredicates = [v11 subpredicates];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60 = v11;
        v16 = [NSArray arrayWithObjects:&v60 count:1];
        v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

        subpredicates = [v17 subpredicates];
      }

      else
      {
        v18 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [MOBundleContentExtractor _filterExtractedBundles:contextPredicate:withHandler:];
        }

        subpredicates = 0;
      }
    }

    v19 = [MOContextPredicateBuilder extractFirstValueForKeyPath:@"contextType" fromPredicates:subpredicates];
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [bundlesCopy count];
      *buf = 134217984;
      v62 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "total count of fetched bundles %lu", buf, 0xCu);
    }

    v40 = subpredicates;

    v22 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = v19;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "contextType from predicate %@", buf, 0xCu);
    }

    v23 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v24 = bundlesCopy;
    v25 = [v24 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v55;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v55 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v54 + 1) + 8 * i);
          if ([v19 isEqualToNumber:&off_1000C7A80] && !objc_msgSend(v29, "summarizationGranularity") && (objc_msgSend(v29, "bundleSubType") == 204 || objc_msgSend(v29, "bundleSubType") == 206 || objc_msgSend(v29, "bundleSubType") == 207 || objc_msgSend(v29, "bundleSubType") == 208))
          {
            v30 = [(MOBundleContentExtractor *)self _extractContentFromBundle:v29];
            [v23 addObject:v30];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v26);
    }

    v45 = bundlesCopy;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v31 = v23;
    v32 = [v31 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v51;
      do
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v51 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v50 + 1) + 8 * j);
          v37 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v62 = v36;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "bundle content after extraction: %@", buf, 0xCu);
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v33);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __81__MOBundleContentExtractor__filterExtractedBundles_contextPredicate_withHandler___block_invoke;
    block[3] = &unk_1000B4B38;
    handlerCopy = v43;
    v48 = v31;
    v49 = v43;
    v39 = v31;
    dispatch_async(queue, block);

    predicateCopy = v44;
    bundlesCopy = v45;
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "no bundle context is extracted due to 0 bundle fetched", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __103__MOBundleContentExtractor__fetchEventBundlesWithStartDate_EndDate_SignificantLocationEnabled_Handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __103__MOBundleContentExtractor__fetchEventBundlesWithStartDate_EndDate_SignificantLocationEnabled_Handler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 40) + 16);
    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = [v5 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_fetchEventBundlesWithHandler, fetched eventBundle count, %lu", &v12, 0xCu);
  }

  if ((*(a1 + 48) & 1) != 0 || ![v5 count])
  {
    v9 = *(*(a1 + 40) + 16);
LABEL_11:
    v9();
    goto LABEL_12;
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) _filterOutVisitRelatedBundlesFrom:v5];
  (*(v10 + 16))(v10, v11, 0);

LABEL_12:
}

- (id)_filterOutVisitRelatedBundlesFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = fromCopy;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        events = [v9 events];
        v12 = [events countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(events);
              }

              if ([*(*(&v23 + 1) + 8 * j) category] == 1)
              {
                [v4 addObject:v9];
              }
            }

            v13 = [events countByEnumeratingWithState:&v23 objects:v33 count:16];
          }

          while (v13);
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v6);
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v4 count];
    *buf = 134217984;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "fetched visit related eventBundle count, %lu", buf, 0xCu);
  }

  v18 = [obj arrayByExcludingObjectsInArray:v4];
  v19 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v18 count];
    *buf = 134217984;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "fetched visit unrelated eventBundle count, %lu", buf, 0xCu);
  }

  return v18;
}

- (id)_extractContentFromBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [MOBundleContent alloc];
  v6 = +[NSUUID UUID];
  v7 = [(MOBundleContent *)v5 initWithBundleContentIdentifier:v6];

  v8 = [(MOBundleContentExtractor *)self _extractDictionaryFromBundle:bundleCopy];
  [(MOBundleContent *)v7 setLlmInputDictionary:v8];

  bundleIdentifier = [bundleCopy bundleIdentifier];
  [(MOBundleContent *)v7 setAssociatedBundleID:bundleIdentifier];

  suggestionID = [bundleCopy suggestionID];
  [(MOBundleContent *)v7 setAssociatedSuggestionID:suggestionID];

  rankingDictionary = [bundleCopy rankingDictionary];
  v12 = [rankingDictionary objectForKeyedSubscript:@"bundleGoodnessScore"];
  [v12 floatValue];
  [(MOBundleContent *)v7 setBundleGoodnessScore:v13];

  [(MOBundleContent *)v7 setPatternType:[(MOBundleContentExtractor *)self _extractPatternTypeFromBundle:bundleCopy]];
  [(MOBundleContent *)v7 setActivityType:[(MOBundleContentExtractor *)self _extractActivityTypeFromBundle:bundleCopy]];
  [(MOBundleContent *)v7 setPlaceType:[(MOBundleContentExtractor *)self _extractPlaceTypeFromBundle:bundleCopy]];
  [(MOBundleContent *)v7 setTime:[(MOBundleContentExtractor *)self _extractTimeFromBundle:bundleCopy]];
  startDate = [bundleCopy startDate];
  [(MOBundleContent *)v7 setStartDate:startDate];

  endDate = [bundleCopy endDate];
  [(MOBundleContent *)v7 setEndDate:endDate];

  [(MOBundleContent *)v7 setBundleType:[(MOBundleContentExtractor *)self _extractBundleTypeFromBundle:bundleCopy]];
  v16 = [(MOBundleContentExtractor *)self _extractPersonsFromBundle:bundleCopy];
  [(MOBundleContent *)v7 setPeopleClassification:[(MOBundleContentExtractor *)self _extractPeopleClassificationFromPersons:v16]];
  v17 = [(MOBundleContentExtractor *)self _extractPersonNamesFromPersons:v16];
  [(MOBundleContent *)v7 setPersonNames:v17];

  personNames = [(MOBundleContent *)v7 personNames];
  v19 = [personNames count] != 0;

  [(MOBundleContent *)v7 setHasPersonName:v19];
  [(MOBundleContentExtractor *)self _extractPlaceOrCityNameFromBundle:bundleCopy forBundleContent:v7];
  [(MOBundleContentExtractor *)self _extractTimeReferenceFromBundle:bundleCopy forBundleContent:v7];
  [(MOBundleContent *)v7 setPhotoTrait:[(MOBundleContentExtractor *)self _extractPhotoTraitFromBundle:bundleCopy]];
  [(MOBundleContentExtractor *)self _updateContextGoodnessScoreFromBundle:bundleCopy forBundleContent:v7];
  if ([bundleCopy interfaceType] != 4 && objc_msgSend(bundleCopy, "interfaceType") != 15)
  {
    labels = [bundleCopy labels];
    firstObject = [labels firstObject];
    [(MOBundleContent *)v7 setSuggestionLabel:firstObject];
  }

  [(MOBundleContentExtractor *)self _extractDominantMusicFromBundle:bundleCopy forBundleContent:v7];

  return v7;
}

- (void)_updateContextGoodnessScoreFromBundle:(id)bundle forBundleContent:(id)content
{
  bundleCopy = bundle;
  contentCopy = content;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleContentExtractor _updateContextGoodnessScoreFromBundle:bundleCopy forBundleContent:contentCopy];
  }

  rankingDictionary = [bundleCopy rankingDictionary];
  v10 = [rankingDictionary objectForKeyedSubscript:@"bundleGoodnessScore"];
  [v10 floatValue];
  [contentCopy setContextGoodnessScore:v11];

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleContentExtractor _updateContextGoodnessScoreFromBundle:contentCopy forBundleContent:?];
  }

  if ([contentCopy photoTrait])
  {
    [contentCopy contextGoodnessScore];
    [contentCopy setContextGoodnessScore:v13 + 0.150000006];
  }

  if ([contentCopy placeType])
  {
    insignificantPlaceTypes = self->_insignificantPlaceTypes;
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [contentCopy placeType]);
    LOBYTE(insignificantPlaceTypes) = [(NSArray *)insignificantPlaceTypes containsObject:v15];

    if ((insignificantPlaceTypes & 1) == 0)
    {
      [contentCopy contextGoodnessScore];
      [contentCopy setContextGoodnessScore:v16 + 0.0500000007];
    }
  }

  v17 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleContentExtractor _updateContextGoodnessScoreFromBundle:contentCopy forBundleContent:?];
  }
}

- (unint64_t)_extractActivityTypeFromBundle:(id)bundle
{
  action = [bundle action];
  v4 = action;
  if (!action || [action actionType] != 4)
  {
    v8 = 0;
    goto LABEL_8;
  }

  actionName = [v4 actionName];
  if ([actionName isEqualToString:@"walk"] & 1) != 0 || (_HKWorkoutActivityNameForActivityType(), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(actionName, "isEqualToString:", v6), v6, (v7))
  {
    v8 = 1;
  }

  else
  {
    v10 = _HKWorkoutActivityNameForActivityType();
    if ([actionName isEqualToString:v10])
    {
    }

    else
    {
      v11 = _HKWorkoutActivityNameForActivityType();
      v12 = [actionName isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        if ([actionName isEqualToString:@"cycle"] & 1) != 0 || (_HKWorkoutActivityNameForActivityType(), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(actionName, "isEqualToString:", v13), v13, (v14))
        {
          v8 = 3;
        }

        else if ([actionName isEqualToString:@"run"] & 1) != 0 || (_HKWorkoutActivityNameForActivityType(), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(actionName, "isEqualToString:", v15), v15, (v16))
        {
          v8 = 4;
        }

        else
        {
          v17 = _HKWorkoutActivityNameForActivityType();
          v18 = [actionName isEqualToString:v17];

          if (v18)
          {
            v8 = 5;
          }

          else
          {
            v19 = _HKWorkoutActivityNameForActivityType();
            v20 = [actionName isEqualToString:v19];

            if (v20)
            {
              v8 = 6;
            }

            else
            {
              v21 = _HKWorkoutActivityNameForActivityType();
              v22 = [actionName isEqualToString:v21];

              if (v22)
              {
                v8 = 7;
              }

              else
              {
                v23 = _HKWorkoutActivityNameForActivityType();
                v24 = [actionName isEqualToString:v23];

                if (v24)
                {
                  v8 = 8;
                }

                else
                {
                  v25 = _HKWorkoutActivityNameForActivityType();
                  v26 = [actionName isEqualToString:v25];

                  if (v26)
                  {
                    v8 = 9;
                  }

                  else
                  {
                    v8 = 10;
                  }
                }
              }
            }
          }
        }

        goto LABEL_6;
      }
    }

    v8 = 2;
  }

LABEL_6:

LABEL_8:
  return v8;
}

- (unint64_t)_extractTimeFromBundle:(id)bundle
{
  metaData = [bundle metaData];
  v4 = [metaData objectForKey:@"timeOfDay"];

  if (v4)
  {
    if ([v4 isEqualToString:@"morning"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"afternoon"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"evening"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"night"])
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_extractPlaceTypeFromBundle:(id)bundle
{
  place = [bundle place];
  v4 = place;
  if (place)
  {
    if ([place placeUserType] == 1)
    {
      v5 = 16;
    }

    else if ([v4 placeUserType] == 2)
    {
      v5 = 17;
    }

    else
    {
      poiCategory = [v4 poiCategory];
      v7 = [poiCategory isEqualToString:GEOPOICategoryRestaurant];

      if (v7)
      {
        v5 = 1;
      }

      else
      {
        poiCategory2 = [v4 poiCategory];
        v9 = [poiCategory2 isEqualToString:GEOPOICategoryStore];

        if (v9)
        {
          v5 = 2;
        }

        else
        {
          poiCategory3 = [v4 poiCategory];
          v11 = [poiCategory3 isEqualToString:GEOPOICategoryHotel];

          if (v11)
          {
            v5 = 3;
          }

          else
          {
            poiCategory4 = [v4 poiCategory];
            v13 = [poiCategory4 isEqualToString:GEOPOICategoryAirport];

            if (v13)
            {
              v5 = 4;
            }

            else
            {
              poiCategory5 = [v4 poiCategory];
              v15 = [poiCategory5 isEqualToString:GEOPOICategoryPark];

              if (v15)
              {
                v5 = 5;
              }

              else
              {
                poiCategory6 = [v4 poiCategory];
                v17 = [poiCategory6 isEqualToString:GEOPOICategoryCafe];

                if (v17)
                {
                  v5 = 6;
                }

                else
                {
                  poiCategory7 = [v4 poiCategory];
                  v19 = [poiCategory7 isEqualToString:GEOPOICategoryFoodMarket];

                  if (v19)
                  {
                    v5 = 7;
                  }

                  else
                  {
                    poiCategory8 = [v4 poiCategory];
                    v21 = [poiCategory8 isEqualToString:GEOPOICategoryFitnessCenter];

                    if (v21)
                    {
                      v5 = 8;
                    }

                    else
                    {
                      poiCategory9 = [v4 poiCategory];
                      v23 = [poiCategory9 isEqualToString:GEOPOICategoryUniversity];

                      if (v23)
                      {
                        v5 = 9;
                      }

                      else
                      {
                        poiCategory10 = [v4 poiCategory];
                        v25 = [poiCategory10 isEqualToString:GEOPOICategorySchool];

                        if (v25)
                        {
                          v5 = 10;
                        }

                        else
                        {
                          poiCategory11 = [v4 poiCategory];
                          v27 = [poiCategory11 isEqualToString:GEOPOICategoryAmusementPark];

                          if (v27)
                          {
                            v5 = 11;
                          }

                          else
                          {
                            poiCategory12 = [v4 poiCategory];
                            v29 = [poiCategory12 isEqualToString:GEOPOICategoryMovieTheater];

                            if (v29)
                            {
                              v5 = 12;
                            }

                            else
                            {
                              poiCategory13 = [v4 poiCategory];
                              v31 = [poiCategory13 isEqualToString:GEOPOICategoryTheater];

                              if (v31)
                              {
                                v5 = 13;
                              }

                              else
                              {
                                poiCategory14 = [v4 poiCategory];
                                v33 = [poiCategory14 isEqualToString:GEOPOICategoryMuseum];

                                if (v33)
                                {
                                  v5 = 14;
                                }

                                else
                                {
                                  poiCategory15 = [v4 poiCategory];
                                  v35 = [poiCategory15 isEqualToString:GEOPOICategoryBeach];

                                  if (v35)
                                  {
                                    v5 = 15;
                                  }

                                  else
                                  {
                                    poiCategory16 = [v4 poiCategory];
                                    v37 = [poiCategory16 isEqualToString:GEOPOICategoryAquarium];

                                    if (v37)
                                    {
                                      v5 = 18;
                                    }

                                    else
                                    {
                                      poiCategory17 = [v4 poiCategory];
                                      v39 = [poiCategory17 isEqualToString:GEOPOICategoryBakery];

                                      if (v39)
                                      {
                                        v5 = 19;
                                      }

                                      else
                                      {
                                        poiCategory18 = [v4 poiCategory];
                                        v41 = [poiCategory18 isEqualToString:GEOPOICategoryBrewery];

                                        if (v41)
                                        {
                                          v5 = 20;
                                        }

                                        else
                                        {
                                          poiCategory19 = [v4 poiCategory];
                                          v43 = [poiCategory19 isEqualToString:GEOPOICategoryCampground];

                                          if (v43)
                                          {
                                            v5 = 21;
                                          }

                                          else
                                          {
                                            poiCategory20 = [v4 poiCategory];
                                            v45 = [poiCategory20 isEqualToString:GEOPOICategoryFireStation];

                                            if (v45)
                                            {
                                              v5 = 22;
                                            }

                                            else
                                            {
                                              poiCategory21 = [v4 poiCategory];
                                              v47 = [poiCategory21 isEqualToString:GEOPOICategoryLibrary];

                                              if (v47)
                                              {
                                                v5 = 23;
                                              }

                                              else
                                              {
                                                poiCategory22 = [v4 poiCategory];
                                                v49 = [poiCategory22 isEqualToString:GEOPOICategoryMarina];

                                                if (v49)
                                                {
                                                  v5 = 24;
                                                }

                                                else
                                                {
                                                  poiCategory23 = [v4 poiCategory];
                                                  v51 = [poiCategory23 isEqualToString:GEOPOICategoryNationalPark];

                                                  if (v51)
                                                  {
                                                    v5 = 25;
                                                  }

                                                  else
                                                  {
                                                    poiCategory24 = [v4 poiCategory];
                                                    v53 = [poiCategory24 isEqualToString:GEOPOICategoryNightlife];

                                                    if (v53)
                                                    {
                                                      v5 = 26;
                                                    }

                                                    else
                                                    {
                                                      poiCategory25 = [v4 poiCategory];
                                                      v55 = [poiCategory25 isEqualToString:GEOPOICategoryPlayground];

                                                      if (v55)
                                                      {
                                                        v5 = 27;
                                                      }

                                                      else
                                                      {
                                                        poiCategory26 = [v4 poiCategory];
                                                        v57 = [poiCategory26 isEqualToString:GEOPOICategoryStadium];

                                                        if (v57)
                                                        {
                                                          v5 = 28;
                                                        }

                                                        else
                                                        {
                                                          poiCategory27 = [v4 poiCategory];
                                                          v59 = [poiCategory27 isEqualToString:GEOPOICategoryWinery];

                                                          if (v59)
                                                          {
                                                            v5 = 29;
                                                          }

                                                          else
                                                          {
                                                            poiCategory28 = [v4 poiCategory];
                                                            v61 = [poiCategory28 isEqualToString:GEOPOICategoryZoo];

                                                            if (v61)
                                                            {
                                                              v5 = 30;
                                                            }

                                                            else
                                                            {
                                                              poiCategory29 = [v4 poiCategory];
                                                              v63 = [poiCategory29 isEqualToString:GEOPOICategoryGolf];

                                                              if (v63)
                                                              {
                                                                v5 = 31;
                                                              }

                                                              else
                                                              {
                                                                poiCategory30 = [v4 poiCategory];
                                                                v65 = [poiCategory30 isEqualToString:GEOPOICategoryMiniGolf];

                                                                if (v65)
                                                                {
                                                                  v5 = 32;
                                                                }

                                                                else
                                                                {
                                                                  poiCategory31 = [v4 poiCategory];
                                                                  v67 = [poiCategory31 isEqualToString:GEOPOICategoryBowling];

                                                                  if (v67)
                                                                  {
                                                                    v5 = 33;
                                                                  }

                                                                  else
                                                                  {
                                                                    poiCategory32 = [v4 poiCategory];
                                                                    v69 = [poiCategory32 isEqualToString:GEOPOICategoryPlanetarium];

                                                                    if (v69)
                                                                    {
                                                                      v5 = 34;
                                                                    }

                                                                    else
                                                                    {
                                                                      poiCategory33 = [v4 poiCategory];
                                                                      v71 = [poiCategory33 isEqualToString:GEOPOICategoryBaseball];

                                                                      if (v71)
                                                                      {
                                                                        v5 = 35;
                                                                      }

                                                                      else
                                                                      {
                                                                        poiCategory34 = [v4 poiCategory];
                                                                        v73 = [poiCategory34 isEqualToString:GEOPOICategoryBasketball];

                                                                        if (v73)
                                                                        {
                                                                          v5 = 36;
                                                                        }

                                                                        else
                                                                        {
                                                                          poiCategory35 = [v4 poiCategory];
                                                                          v75 = [poiCategory35 isEqualToString:GEOPOICategoryNationalMonument];

                                                                          if (v75)
                                                                          {
                                                                            v5 = 37;
                                                                          }

                                                                          else
                                                                          {
                                                                            v5 = 0;
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_extractBundleTypeFromBundle:(id)bundle
{
  bundleSubType = [bundle bundleSubType];
  result = 1;
  if (bundleSubType <= 104)
  {
    switch(bundleSubType)
    {
      case 'e':
        return result;
      case 'g':
        return 4;
      case 'h':
        return 3;
    }
  }

  else if (bundleSubType > 900)
  {
    if (bundleSubType == 901 || bundleSubType == 905)
    {
      return result;
    }
  }

  else
  {
    if (bundleSubType == 105)
    {
      return 2;
    }

    if (bundleSubType == 106)
    {
      return result;
    }
  }

  v5 = bundleSubType - 501;
  v6 = bundleSubType == 301;
  v7 = 6;
  if (!v6)
  {
    v7 = 0;
  }

  if (v5 >= 3)
  {
    return v7;
  }

  else
  {
    return 5;
  }
}

- (unint64_t)_extractPeopleClassificationFromPersons:(id)persons
{
  personsCopy = persons;
  if ([personsCopy count])
  {
    firstObject = [personsCopy firstObject];
    v6 = [MOMetaDataCurationUtility getTheBestPersonRelationtshipTagFor:firstObject];
    if (v6 < 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(MOBundleContentExtractor *)self _findMatchingMetaDataWithPeopleClassification:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_findMatchingMetaDataWithPeopleClassification:(unint64_t)classification
{
  v3 = 3;
  v4 = vdupq_n_s64(classification);
  if (classification - 15 >= 3)
  {
    v3 = 0;
  }

  v5 = vandq_s8(v4, xmmword_1000A7510);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v5, xmmword_1000A7520), vceqq_s64(v5, xmmword_1000A7530)))) & 1 | (classification == 20))
  {
    v3 = 1;
  }

  if (classification == 21)
  {
    v3 = 2;
  }

  if (classification == 22)
  {
    v3 = 4;
  }

  if (classification - 27 >= 3)
  {
    return v3;
  }

  else
  {
    return 5;
  }
}

- (id)_extractPersonsFromBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  persons = [bundleCopy persons];
  v6 = [persons count];

  if (v6)
  {
    persons2 = [bundleCopy persons];
    v8 = [persons2 sortedArrayUsingSelector:"comparePersons:"];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v23;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if (([v15 isMePerson] & 1) == 0)
          {
            if (([v15 mePersonIdentified] & 1) != 0 || (objc_msgSend(v15, "localIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
            {
              [v4 addObject:v15];
              ++v12;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [(MOBundleContentExtractor *)v4 _extractPersonsFromBundle:bundleCopy];
  }

  if (v12 < 2)
  {
    v19 = v4;
  }

  else
  {
    v18 = [v4 objectAtIndex:arc4random_uniform(v12)];
    v19 = [NSMutableArray arrayWithObject:v18];

    v20 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [MOBundleContentExtractor _extractPersonsFromBundle:v19];
    }
  }

  return v19;
}

- (id)_extractPersonNamesFromPersons:(id)persons
{
  personsCopy = persons;
  v4 = objc_opt_new();
  if ([personsCopy count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = personsCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = *v19;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        givenName = [v10 givenName];
        v12 = [givenName length];

        if (v12)
        {
          givenName2 = [v10 givenName];
        }

        else
        {
          name = [v10 name];
          v15 = [name length];

          if (!v15)
          {
            continue;
          }

          givenName2 = [v10 name];
        }

        v16 = givenName2;
        [v4 addObject:givenName2];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v7)
      {
LABEL_14:

        break;
      }
    }
  }

  return v4;
}

- (void)_extractPlaceOrCityNameFromBundle:(id)bundle forBundleContent:(id)content
{
  bundleCopy = bundle;
  contentCopy = content;
  v6 = [NSSet setWithArray:&off_1000C9AC0];
  [contentCopy setHasPlaceName:0];
  [contentCopy setHasCityName:0];
  if ([bundleCopy interfaceType] == 2 || objc_msgSend(bundleCopy, "interfaceType") == 12 || objc_msgSend(bundleCopy, "interfaceType") == 15 || objc_msgSend(bundleCopy, "interfaceType") == 1)
  {
    place = [bundleCopy place];
    placeName = [place placeName];
    if (placeName)
    {
      v9 = placeName;
      place2 = [bundleCopy place];
      poiCategory = [place2 poiCategory];
      if ([v6 containsObject:poiCategory])
      {
        place3 = [bundleCopy place];
        if ([place3 placeType] != 4)
        {
          place4 = [bundleCopy place];
          placeType = [place4 placeType];

          if (placeType != 5)
          {
            place5 = [bundleCopy place];
            placeName2 = [place5 placeName];
            [contentCopy setPlaceName:placeName2];

            [contentCopy setHasPlaceName:1];
LABEL_18:
            place6 = [bundleCopy place];
            location = [place6 location];

            if (location)
            {
              [contentCopy setHasLocation:1];
              place7 = [bundleCopy place];
              location2 = [place7 location];
              [contentCopy setLocation:location2];
            }

            goto LABEL_20;
          }

LABEL_11:
          place8 = [bundleCopy place];
          enclosingArea = [place8 enclosingArea];

          if (enclosingArea)
          {
            place9 = [bundleCopy place];
            if ([place9 placeType] == 101)
            {
            }

            else
            {
              place10 = [bundleCopy place];
              placeType2 = [place10 placeType];

              if (placeType2 != 102)
              {
                place11 = [bundleCopy place];
                enclosingArea2 = [place11 enclosingArea];
                [contentCopy setCityName:enclosingArea2];

                [contentCopy setHasCityName:1];
              }
            }
          }

          goto LABEL_18;
        }
      }
    }

    goto LABEL_11;
  }

  if ([bundleCopy interfaceType] == 13)
  {
    place12 = [bundleCopy place];
    placeName3 = [place12 placeName];

    if (placeName3)
    {
      place13 = [bundleCopy place];
      placeName4 = [place13 placeName];
      [contentCopy setPlaceName:placeName4];

      [contentCopy setHasPlaceName:1];
    }
  }

LABEL_20:
}

- (void)_extractTimeReferenceFromBundle:(id)bundle forBundleContent:(id)content
{
  contentCopy = content;
  bundleCopy = bundle;
  v6 = [NSSet setWithArray:&off_1000C9AD8];
  [contentCopy setHasTimeReference:0];
  metaData = [bundleCopy metaData];

  v8 = [metaData objectForKey:@"time"];

  if (v8 && [v6 containsObject:v8])
  {
    [contentCopy setTimeReference:v8];
    [contentCopy setHasTimeReference:1];
  }
}

- (unint64_t)_extractPhotoTraitFromBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy interfaceType] == 13 || (objc_msgSend(bundleCopy, "photoTraits"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, !v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MOBundleContentExtractor *)self _findFirstMatchingCuratedPhotoTraitSetForBundle:bundleCopy];
  }

  return v7;
}

- (unint64_t)_findFirstMatchingCuratedPhotoTraitSetForBundle:(id)bundle
{
  bundleCopy = bundle;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = self->_curatedPhotoTraitsList;
  v31 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v31)
  {
    v28 = 0;
    v30 = *v54;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v54 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v53 + 1) + 8 * v4);
      v35 = objc_autoreleasePoolPush();
      allKeys = [v5 allKeys];
      firstObject = [allKeys firstObject];
      v39 = [v5 objectForKey:?];
      v6 = objc_opt_new();
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      photoTraits = [bundleCopy photoTraits];
      v8 = [photoTraits countByEnumeratingWithState:&v49 objects:v61 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v50;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v50 != v10)
            {
              objc_enumerationMutation(photoTraits);
            }

            v12 = *(*(&v49 + 1) + 8 * i);
            holidayIdentifier = [v12 holidayIdentifier];

            if (holidayIdentifier)
            {
              [v12 holidayIdentifier];
            }

            else
            {
              [v12 name];
            }
            v14 = ;
            [v6 addObject:v14];
          }

          v9 = [photoTraits countByEnumeratingWithState:&v49 objects:v61 count:16];
        }

        while (v9);
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v37 = v6;
      v40 = [v37 countByEnumeratingWithState:&v45 objects:v60 count:16];
      if (v40)
      {
        v33 = v4;
        LODWORD(v15) = 0;
        v38 = *v46;
        do
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v46 != v38)
            {
              objc_enumerationMutation(v37);
            }

            v17 = *(*(&v45 + 1) + 8 * j);
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v18 = v39;
            v19 = [v18 countByEnumeratingWithState:&v41 objects:v59 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v42;
              do
              {
                for (k = 0; k != v20; k = k + 1)
                {
                  if (*v42 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  if (![*(*(&v41 + 1) + 8 * k) caseInsensitiveCompare:v17])
                  {
                    v23 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v58 = v17;
                      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Match found for trait, %@", buf, 0xCu);
                    }

                    LODWORD(v15) = v15 + 1;
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v41 objects:v59 count:16];
              }

              while (v20);
            }
          }

          v40 = [v37 countByEnumeratingWithState:&v45 objects:v60 count:16];
        }

        while (v40);
        v15 = v15;
        v4 = v33;
      }

      else
      {
        v15 = 0;
      }

      v24 = [v39 count];
      if (v24 == v15)
      {
        intValue = [firstObject intValue];
        v26 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v58 = firstObject;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Setting trait meta data for %@", buf, 0xCu);
        }

        v28 = intValue;
      }

      objc_autoreleasePoolPop(v35);
      if (v24 == v15)
      {
        break;
      }

      if (++v4 == v31)
      {
        v31 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v31)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)_extractDictionaryFromBundle:(id)bundle
{
  bundleCopy = bundle;
  interfaceType = [bundleCopy interfaceType];
  if (interfaceType > 0xD || ((1 << interfaceType) & 0x3016) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MOBundleContentExtractor *)self _extractContentFromOutingBundle:bundleCopy];
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleContentExtractor _extractDictionaryFromBundle:];
  }

  return v7;
}

- (id)_extractContentFromOutingBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = +[NSMutableDictionary dictionary];
  metaData = [bundleCopy metaData];
  v6 = [metaData objectForKey:@"date_string"];

  if (v6)
  {
    [v4 setObject:v6 forKey:@"date_string"];
  }

  metaData2 = [bundleCopy metaData];
  v8 = [metaData2 objectForKey:@"date_reference_weekday_string"];

  if (v8)
  {
    [v4 setObject:v8 forKey:@"date_reference_weekday_string"];
  }

  metaData3 = [bundleCopy metaData];
  v10 = [metaData3 objectForKey:@"timeOfDay"];

  if (v10)
  {
    [v4 setObject:v10 forKey:@"timeOfDay"];
  }

  metaData4 = [bundleCopy metaData];
  v12 = [metaData4 objectForKey:@"action"];

  if (v12)
  {
    [v4 setObject:v12 forKey:@"action"];
  }

  place = [bundleCopy place];
  placeName = [place placeName];

  if (placeName)
  {
    [v4 setObject:placeName forKey:@"place name"];
  }

  place2 = [bundleCopy place];
  poiCategory = [place2 poiCategory];

  if (poiCategory)
  {
    [v4 setObject:poiCategory forKey:@"place category"];
  }

  place3 = [bundleCopy place];
  if ([place3 placeType] != 101)
  {
    [bundleCopy place];
    v30 = poiCategory;
    v18 = placeName;
    v19 = v4;
    v20 = v12;
    v21 = v10;
    v22 = v8;
    v24 = v23 = v6;
    placeType = [v24 placeType];

    v6 = v23;
    v8 = v22;
    v10 = v21;
    v12 = v20;
    v4 = v19;
    placeName = v18;
    poiCategory = v30;

    if (placeType == 102)
    {
      goto LABEL_18;
    }

    place4 = [bundleCopy place];
    place3 = [place4 enclosingArea];

    if (place3)
    {
      [v4 setObject:place3 forKey:@"location"];
    }
  }

LABEL_18:
  labels = [bundleCopy labels];
  firstObject = [labels firstObject];

  if (firstObject)
  {
    [v4 setObject:firstObject forKey:@"label"];
  }

  return v4;
}

- (id)_sortedBundleBasedOnGoodnessScore:(id)score
{
  scoreCopy = score;
  if ([scoreCopy count])
  {
    if ([scoreCopy count] == 1)
    {
      v4 = scoreCopy;
    }

    else
    {
      v4 = [scoreCopy sortedArrayUsingComparator:&__block_literal_global];
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

int64_t __62__MOBundleContentExtractor__sortedBundleBasedOnGoodnessScore___block_invoke(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a3;
  v5 = [(MOEventBundle *)a2 rankingDictionary];
  v6 = [v5 objectForKeyedSubscript:@"bundleGoodnessScore"];
  [v6 floatValue];
  v8 = v7;

  v9 = [(MOEventBundle *)v4 rankingDictionary];

  v10 = [v9 objectForKeyedSubscript:@"bundleGoodnessScore"];
  [v10 floatValue];
  v12 = v11;

  if (v8 <= v12)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)_sortedBundleContextFromUpdatedGoodnessScore:(id)score
{
  scoreCopy = score;
  if ([scoreCopy count] >= 2)
  {
    v3 = [scoreCopy sortedArrayUsingComparator:&__block_literal_global_1664];
  }
}

int64_t __73__MOBundleContentExtractor__sortedBundleContextFromUpdatedGoodnessScore___block_invoke(id a1, MOBundleContent *a2, MOBundleContent *a3)
{
  v4 = a3;
  [(MOBundleContent *)a2 contextGoodnessScore];
  v6 = v5;
  [(MOBundleContent *)v4 contextGoodnessScore];
  v8 = v7;

  v9 = v8;
  if (v6 <= v9)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)_extractDominantMusicFromBundle:(id)bundle forBundleContent:(id)content
{
  bundleCopy = bundle;
  contentCopy = content;
  metaDataAllowListForSongTitleArtistInclusionActivityType = [(MOBundleContentExtractor *)self metaDataAllowListForSongTitleArtistInclusionActivityType];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [contentCopy activityType]);
  if ([metaDataAllowListForSongTitleArtistInclusionActivityType containsObject:v9])
  {
    goto LABEL_6;
  }

  metaDataAllowListForSongTitleArtistInclusionPlaceType = [(MOBundleContentExtractor *)self metaDataAllowListForSongTitleArtistInclusionPlaceType];
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [contentCopy placeType]);
  if ([metaDataAllowListForSongTitleArtistInclusionPlaceType containsObject:v11])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  metaDataAllowListForSongTitleArtistInclusionBundleType = [(MOBundleContentExtractor *)self metaDataAllowListForSongTitleArtistInclusionBundleType];
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [contentCopy bundleType]);
  if ([metaDataAllowListForSongTitleArtistInclusionBundleType containsObject:v13])
  {

    goto LABEL_5;
  }

  metaDataAllowListForSongTitleArtistInclusionPhotoTrait = [(MOBundleContentExtractor *)self metaDataAllowListForSongTitleArtistInclusionPhotoTrait];
  v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [contentCopy photoTrait]);
  v30 = [metaDataAllowListForSongTitleArtistInclusionPhotoTrait containsObject:v29];

  if ((v30 & 1) == 0)
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    goto LABEL_14;
  }

LABEL_7:
  v14 = [NSPredicate predicateWithFormat:@"type == %lu", 3];
  v15 = [[NSSortDescriptor alloc] initWithKey:@"priorityScore" ascending:1];
  resources = [bundleCopy resources];
  v17 = [resources filteredArrayUsingPredicate:v14];

  v37 = v15;
  v18 = [NSArray arrayWithObjects:&v37 count:1];
  v19 = [v17 sortedArrayUsingDescriptors:v18];

  if ([v19 count])
  {
    firstObject = [v19 firstObject];
    data = [firstObject data];
    v22 = [MODictionaryEncoder decodeToDictionary:data];

    v23 = [v22 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
    LODWORD(firstObject) = [v23 isEqualToString:@"com.apple.Music"];

    if (firstObject)
    {
      v24 = [v22 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerTitle"];
      v25 = [v22 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerArtist"];
      v26 = [v22 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerTrackID"];
    }

    else
    {
      v26 = 0;
      v25 = 0;
      v24 = 0;
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
  }

LABEL_14:
  [contentCopy setMusicSuggestionSongTitle:v24];
  [contentCopy setMusicSuggestionArtistName:v25];
  [contentCopy setMusicSuggestionTrackID:v26];
  v27 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v32 = v24;
    v33 = 2112;
    v34 = v25;
    v35 = 2112;
    v36 = v26;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Extract music suggestion for bundle content, song title: %@, artist name: %@, trackID: %@", buf, 0x20u);
  }
}

- (void)_addContentRatingForSongTitleAndArtistSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v32 = objc_opt_new();
  v4 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = suggestionsCopy;
  v5 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    do
    {
      v8 = 0;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          musicSuggestionSongTitle = [v9 musicSuggestionSongTitle];
          musicSuggestionArtistName = [v9 musicSuggestionArtistName];
          musicSuggestionTrackID = [v9 musicSuggestionTrackID];
          *buf = 138412802;
          v43 = musicSuggestionSongTitle;
          v44 = 2112;
          v45 = musicSuggestionArtistName;
          v46 = 2112;
          v47 = musicSuggestionTrackID;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Music suggestion bundle content for content rating look up, song title: %@, artist name: %@, trackID: %@", buf, 0x20u);
        }

        musicSuggestionTrackID2 = [v9 musicSuggestionTrackID];

        if (musicSuggestionTrackID2)
        {
          v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [(MOBundleContentExtractor *)v40 _addContentRatingForSongTitleAndArtistSuggestions:v9, &v41, v12];
          }

          musicSuggestionTrackID3 = [v9 musicSuggestionTrackID];
          [v32 addObject:musicSuggestionTrackID3];

          musicSuggestionTrackID4 = [v9 musicSuggestionTrackID];
          v15 = [v4 valueForKey:musicSuggestionTrackID4];

          if (v15)
          {
            musicSuggestionTrackID5 = [v9 musicSuggestionTrackID];
            musicSuggestionTrackID6 = [v4 objectForKeyedSubscript:musicSuggestionTrackID5];
            [musicSuggestionTrackID6 addObject:v9];
          }

          else
          {
            musicSuggestionTrackID5 = objc_opt_new();
            [musicSuggestionTrackID5 addObject:v9];
            musicSuggestionTrackID6 = [v9 musicSuggestionTrackID];
            [v4 setObject:musicSuggestionTrackID5 forKey:musicSuggestionTrackID6];
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v6);
  }

  v21 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v32 count];
    *buf = 134217984;
    v43 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Fetch content rating, track id set count: %lu", buf, 0xCu);
  }

  if ([v32 count])
  {
    v23 = [AMSBag bagForProfile:@"MomentsUIService" profileVersion:@"1"];
    v24 = [[AMSMediaTask alloc] initWithType:203 clientIdentifier:@"com.apple.PersonalizedSensingService" clientVersion:@"1" bag:v23];
    allObjects = [v32 allObjects];
    [v24 setItemIdentifiers:allObjects];
    perform = [v24 perform];
    v27 = dispatch_semaphore_create(0);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __78__MOBundleContentExtractor__addContentRatingForSongTitleAndArtistSuggestions___block_invoke;
    v33[3] = &unk_1000B4C08;
    v34 = v4;
    v28 = v27;
    v35 = v28;
    [perform addFinishBlock:v33];
    v29 = dispatch_time(0, 120000000000);
    if (dispatch_semaphore_wait(v28, v29))
    {
      v30 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [MOBundleContentExtractor _addContentRatingForSongTitleAndArtistSuggestions:];
      }
    }
  }
}

void __78__MOBundleContentExtractor__addContentRatingForSongTitleAndArtistSuggestions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __78__MOBundleContentExtractor__addContentRatingForSongTitleAndArtistSuggestions___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [a2 responseDataItems];
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetching music content rating", buf, 2u);
    }

    if ([v5 count])
    {
      v7 = 0;
      v20 = v5;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v7];
        v26 = [v8 objectForKey:@"id"];
        v9 = [v8 objectForKey:@"attributes"];
        if (v9)
        {
          v24 = v8;
          v10 = v9;
          v11 = [v9 objectForKey:@"contentRating"];
          v23 = v10;
          v25 = [v10 objectForKey:@"artistName"];
          v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v33 = v25;
            v34 = 2112;
            v35 = v26;
            v36 = 2112;
            v37 = v11;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Fetch content rating, artist name, %@, song ID, %@, contentRating, %@", buf, 0x20u);
          }

          if (([v11 isEqualToString:@"explicit"] & 1) == 0)
          {
            v22 = v11;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v13 = [*(a1 + 32) objectForKeyedSubscript:v26];
            v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v28;
              do
              {
                for (i = 0; i != v15; i = i + 1)
                {
                  if (*v28 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v27 + 1) + 8 * i);
                  [v18 setMusicSuggestionContentRating:@"not explicit"];
                  v19 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v33 = v18;
                    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Fetch content rating, successfully updated content rating for bundle content: %@", buf, 0xCu);
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
              }

              while (v15);
            }

            v5 = v20;
            v11 = v22;
          }

          v9 = v23;
          v8 = v24;
        }

        ++v7;
      }

      while ([v5 count]> v7);
      v4 = 0;
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __99__MOBundleContentExtractor_extractContentsFromBundlesWithBundlePredicate_contextPredicate_handler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __139__MOBundleContentExtractor__extractContentsFromBundleStartDate_endDate_daysPerFetch_significantLocationEnabled_partialResults_withHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __103__MOBundleContentExtractor__fetchEventBundlesWithStartDate_EndDate_SignificantLocationEnabled_Handler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_updateContextGoodnessScoreFromBundle:(void *)a1 forBundleContent:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = [a1 description];
  v4 = [a2 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_updateContextGoodnessScoreFromBundle:(void *)a1 forBundleContent:.cold.2(void *a1)
{
  [a1 contextGoodnessScore];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_updateContextGoodnessScoreFromBundle:(void *)a1 forBundleContent:.cold.3(void *a1)
{
  [a1 contextGoodnessScore];
  [a1 photoTrait];
  [a1 placeType];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_extractPersonsFromBundle:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 valueForKey:@"name"];
  v4 = [a2 suggestionID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_extractPersonsFromBundle:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 valueForKey:@"name"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_addContentRatingForSongTitleAndArtistSuggestions:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 musicSuggestionTrackID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Adding track ID to set, id: %@", a1, 0xCu);
}

void __78__MOBundleContentExtractor__addContentRatingForSongTitleAndArtistSuggestions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end