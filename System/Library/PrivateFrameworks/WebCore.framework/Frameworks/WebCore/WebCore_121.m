uint64_t vpx_highbd_12_sub_pixel_variance32x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v388 = *MEMORY[0x277D85DE8];
  v7 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v148 = 0;
      v149 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v320 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v321 = v149;
      v150 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v322 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v323 = v150;
      v151 = 2 * a2;
      v152 = v7 + v151;
      v324 = vrhaddq_u16(*v152, *(v152 + 2));
      v325 = vrhaddq_u16(*(v152 + 1), *(v152 + 18));
      v326 = vrhaddq_u16(*(v152 + 2), *(v152 + 34));
      v327 = vrhaddq_u16(*(v152 + 3), *(v152 + 50));
      v153 = &v152[v151];
      v328 = vrhaddq_u16(*v153, *(v153 + 2));
      v329 = vrhaddq_u16(*(v153 + 1), *(v153 + 18));
      v330 = vrhaddq_u16(*(v153 + 2), *(v153 + 34));
      v331 = vrhaddq_u16(*(v153 + 3), *(v153 + 50));
      v154 = &v153[v151];
      v332 = vrhaddq_u16(*v154, *(v154 + 2));
      v333 = vrhaddq_u16(*(v154 + 1), *(v154 + 18));
      v334 = vrhaddq_u16(*(v154 + 2), *(v154 + 34));
      v335 = vrhaddq_u16(*(v154 + 3), *(v154 + 50));
      v155 = &v154[v151];
      v336 = vrhaddq_u16(*v155, *(v155 + 2));
      v337 = vrhaddq_u16(*(v155 + 1), *(v155 + 18));
      v338 = vrhaddq_u16(*(v155 + 2), *(v155 + 34));
      v339 = vrhaddq_u16(*(v155 + 3), *(v155 + 50));
      v156 = &v155[v151];
      v340 = vrhaddq_u16(*v156, *(v156 + 2));
      v341 = vrhaddq_u16(*(v156 + 1), *(v156 + 18));
      v342 = vrhaddq_u16(*(v156 + 2), *(v156 + 34));
      v343 = vrhaddq_u16(*(v156 + 3), *(v156 + 50));
      v157 = &v156[v151];
      v344 = vrhaddq_u16(*v157, *(v157 + 2));
      v345 = vrhaddq_u16(*(v157 + 1), *(v157 + 18));
      v346 = vrhaddq_u16(*(v157 + 2), *(v157 + 34));
      v347 = vrhaddq_u16(*(v157 + 3), *(v157 + 50));
      v158 = &v157[v151];
      v348 = vrhaddq_u16(*v158, *(v158 + 2));
      v349 = vrhaddq_u16(*(v158 + 1), *(v158 + 18));
      v350 = vrhaddq_u16(*(v158 + 2), *(v158 + 34));
      v351 = vrhaddq_u16(*(v158 + 3), *(v158 + 50));
      v159 = &v158[v151];
      v352 = vrhaddq_u16(*v159, *(v159 + 2));
      v353 = vrhaddq_u16(*(v159 + 1), *(v159 + 18));
      v354 = vrhaddq_u16(*(v159 + 2), *(v159 + 34));
      v355 = vrhaddq_u16(*(v159 + 3), *(v159 + 50));
      v160 = &v159[v151];
      v356 = vrhaddq_u16(*v160, *(v160 + 2));
      v357 = vrhaddq_u16(*(v160 + 16), *(v160 + 18));
      v358 = vrhaddq_u16(*(v160 + 32), *(v160 + 34));
      v359 = vrhaddq_u16(*(v160 + 48), *(v160 + 50));
      v161 = v160 + v151;
      v360 = vrhaddq_u16(*v161, *(v161 + 2));
      v361 = vrhaddq_u16(*(v161 + 16), *(v161 + 18));
      v362 = vrhaddq_u16(*(v161 + 32), *(v161 + 34));
      v363 = vrhaddq_u16(*(v161 + 48), *(v161 + 50));
      v162 = v161 + v151;
      v364 = vrhaddq_u16(*v162, *(v162 + 2));
      v365 = vrhaddq_u16(*(v162 + 16), *(v162 + 18));
      v366 = vrhaddq_u16(*(v162 + 32), *(v162 + 34));
      v367 = vrhaddq_u16(*(v162 + 48), *(v162 + 50));
      v163 = v162 + v151;
      v368 = vrhaddq_u16(*v163, *(v163 + 2));
      v369 = vrhaddq_u16(*(v163 + 16), *(v163 + 18));
      v370 = vrhaddq_u16(*(v163 + 32), *(v163 + 34));
      v371 = vrhaddq_u16(*(v163 + 48), *(v163 + 50));
      v164 = v163 + v151;
      v372 = vrhaddq_u16(*v164, *(v164 + 2));
      v373 = vrhaddq_u16(*(v164 + 16), *(v164 + 18));
      v374 = vrhaddq_u16(*(v164 + 32), *(v164 + 34));
      v375 = vrhaddq_u16(*(v164 + 48), *(v164 + 50));
      v165 = v164 + v151;
      v376 = vrhaddq_u16(*v165, *(v165 + 2));
      v377 = vrhaddq_u16(*(v165 + 16), *(v165 + 18));
      v378 = vrhaddq_u16(*(v165 + 32), *(v165 + 34));
      v379 = vrhaddq_u16(*(v165 + 48), *(v165 + 50));
      v166 = v165 + v151;
      v380 = vrhaddq_u16(*v166, *(v166 + 2));
      v381 = vrhaddq_u16(*(v166 + 16), *(v166 + 18));
      v382 = vrhaddq_u16(*(v166 + 32), *(v166 + 34));
      v167 = v166 + v151;
      v383 = vrhaddq_u16(*(v166 + 48), *(v166 + 50));
      v384 = vrhaddq_u16(*v167, *(v167 + 2));
      v385 = vrhaddq_u16(*(v167 + 16), *(v167 + 18));
      v386 = vrhaddq_u16(*(v167 + 32), *(v167 + 34));
      v387 = vrhaddq_u16(*(v167 + 48), *(v167 + 50));
      v256 = vrhaddq_u16(v320, v324);
      v257 = vrhaddq_u16(v321, v325);
      v258 = vrhaddq_u16(v322, v326);
      v259 = vrhaddq_u16(v150, v327);
      v260 = vrhaddq_u16(v324, v328);
      v261 = vrhaddq_u16(v325, v329);
      v262 = vrhaddq_u16(v326, v330);
      v263 = vrhaddq_u16(v327, v331);
      v264 = vrhaddq_u16(v328, v332);
      v265 = vrhaddq_u16(v329, v333);
      v266 = vrhaddq_u16(v330, v334);
      v267 = vrhaddq_u16(v331, v335);
      v268 = vrhaddq_u16(v332, v336);
      v269 = vrhaddq_u16(v333, v337);
      v270 = vrhaddq_u16(v334, v338);
      v271 = vrhaddq_u16(v335, v339);
      v272 = vrhaddq_u16(v336, v340);
      v273 = vrhaddq_u16(v337, v341);
      v274 = vrhaddq_u16(v338, v342);
      v275 = vrhaddq_u16(v339, v343);
      v276 = vrhaddq_u16(v340, v344);
      v277 = vrhaddq_u16(v341, v345);
      v278 = vrhaddq_u16(v342, v346);
      v279 = vrhaddq_u16(v343, v347);
      v280 = vrhaddq_u16(v344, v348);
      v281 = vrhaddq_u16(v345, v349);
      v282 = vrhaddq_u16(v346, v350);
      v283 = vrhaddq_u16(v347, v351);
      v284 = vrhaddq_u16(v348, v352);
      v285 = vrhaddq_u16(v349, v353);
      v286 = vrhaddq_u16(v350, v354);
      v287 = vrhaddq_u16(v351, v355);
      v288 = vrhaddq_u16(v352, v356);
      v289 = vrhaddq_u16(v353, v357);
      v290 = vrhaddq_u16(v354, v358);
      v291 = vrhaddq_u16(v355, v359);
      v292 = vrhaddq_u16(v356, v360);
      v293 = vrhaddq_u16(v357, v361);
      v294 = vrhaddq_u16(v358, v362);
      v295 = vrhaddq_u16(v359, v363);
      v296 = vrhaddq_u16(v360, v364);
      v297 = vrhaddq_u16(v361, v365);
      v298 = vrhaddq_u16(v362, v366);
      v299 = vrhaddq_u16(v363, v367);
      v300 = vrhaddq_u16(v364, v368);
      v301 = vrhaddq_u16(v365, v369);
      v302 = vrhaddq_u16(v366, v370);
      v303 = vrhaddq_u16(v367, v371);
      v304 = vrhaddq_u16(v368, v372);
      v305 = vrhaddq_u16(v369, v373);
      v306 = vrhaddq_u16(v370, v374);
      v307 = vrhaddq_u16(v371, v375);
      v308 = vrhaddq_u16(v372, v376);
      v309 = vrhaddq_u16(v373, v377);
      v310 = vrhaddq_u16(v374, v378);
      v311 = vrhaddq_u16(v375, v379);
      v312 = vrhaddq_u16(v376, v380);
      v313 = vrhaddq_u16(v377, v381);
      v314 = vrhaddq_u16(v378, v382);
      v315 = vrhaddq_u16(v379, v383);
      v316 = vrhaddq_u16(v380, v384);
      v317 = vrhaddq_u16(v381, v385);
      v318 = vrhaddq_u16(v382, v386);
      v319 = vrhaddq_u16(v383, v387);
      v168 = (2 * a5 + 32);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v169 = vsubq_s16(*(&v256 + v148), v168[-2]);
        v170 = vpadalq_s16(v13, v169);
        v171 = vmlal_s16(v10, *v169.i8, *v169.i8);
        v172 = vmlal_high_s16(v12, v169, v169);
        v173 = vsubq_s16(*(&v256 + v148 + 16), v168[-1]);
        v174 = vpadalq_s16(v170, v173);
        v175 = vmlal_s16(v171, *v173.i8, *v173.i8);
        v176 = vmlal_high_s16(v172, v173, v173);
        v177 = vsubq_s16(*(&v258 + v148), *v168);
        v178 = vpadalq_s16(v174, v177);
        v179 = vmlal_s16(v175, *v177.i8, *v177.i8);
        v180 = vmlal_high_s16(v176, v177, v177);
        v181 = vsubq_s16(*(&v259 + v148), v168[1]);
        v13 = vpadalq_s16(v178, v181);
        v10 = vmlal_s16(v179, *v181.i8, *v181.i8);
        v12 = vmlal_high_s16(v180, v181, v181);
        v148 += 64;
        v168 = (v168 + 2 * a6);
      }

      while (v148 != 1024);
    }

    else if (a4)
    {
      v206 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v320 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v321 = v206;
      v207 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v322 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v323 = v207;
      v208 = 2 * a2;
      v209 = v7 + v208;
      v210 = &v324;
      v324 = vrhaddq_u16(*v209, *(v209 + 2));
      v325 = vrhaddq_u16(*(v209 + 1), *(v209 + 18));
      v326 = vrhaddq_u16(*(v209 + 2), *(v209 + 34));
      v327 = vrhaddq_u16(*(v209 + 3), *(v209 + 50));
      v211 = &v209[v208];
      v328 = vrhaddq_u16(*v211, *(v211 + 2));
      v329 = vrhaddq_u16(*(v211 + 1), *(v211 + 18));
      v330 = vrhaddq_u16(*(v211 + 2), *(v211 + 34));
      v331 = vrhaddq_u16(*(v211 + 3), *(v211 + 50));
      v212 = &v211[v208];
      v332 = vrhaddq_u16(*v212, *(v212 + 2));
      v333 = vrhaddq_u16(*(v212 + 1), *(v212 + 18));
      v334 = vrhaddq_u16(*(v212 + 2), *(v212 + 34));
      v335 = vrhaddq_u16(*(v212 + 3), *(v212 + 50));
      v213 = &v212[v208];
      v336 = vrhaddq_u16(*v213, *(v213 + 2));
      v337 = vrhaddq_u16(*(v213 + 1), *(v213 + 18));
      v338 = vrhaddq_u16(*(v213 + 2), *(v213 + 34));
      v339 = vrhaddq_u16(*(v213 + 3), *(v213 + 50));
      v214 = &v213[v208];
      v340 = vrhaddq_u16(*v214, *(v214 + 2));
      v341 = vrhaddq_u16(*(v214 + 1), *(v214 + 18));
      v342 = vrhaddq_u16(*(v214 + 2), *(v214 + 34));
      v343 = vrhaddq_u16(*(v214 + 3), *(v214 + 50));
      v215 = &v214[v208];
      v344 = vrhaddq_u16(*v215, *(v215 + 2));
      v345 = vrhaddq_u16(*(v215 + 1), *(v215 + 18));
      v346 = vrhaddq_u16(*(v215 + 2), *(v215 + 34));
      v347 = vrhaddq_u16(*(v215 + 3), *(v215 + 50));
      v216 = &v215[v208];
      v348 = vrhaddq_u16(*v216, *(v216 + 2));
      v349 = vrhaddq_u16(*(v216 + 1), *(v216 + 18));
      v350 = vrhaddq_u16(*(v216 + 2), *(v216 + 34));
      v351 = vrhaddq_u16(*(v216 + 3), *(v216 + 50));
      v217 = &v216[v208];
      v352 = vrhaddq_u16(*v217, *(v217 + 2));
      v353 = vrhaddq_u16(*(v217 + 1), *(v217 + 18));
      v354 = vrhaddq_u16(*(v217 + 2), *(v217 + 34));
      v355 = vrhaddq_u16(*(v217 + 3), *(v217 + 50));
      v218 = &v217[v208];
      v356 = vrhaddq_u16(*v218, *(v218 + 2));
      v357 = vrhaddq_u16(*(v218 + 16), *(v218 + 18));
      v358 = vrhaddq_u16(*(v218 + 32), *(v218 + 34));
      v359 = vrhaddq_u16(*(v218 + 48), *(v218 + 50));
      v219 = v218 + v208;
      v360 = vrhaddq_u16(*v219, *(v219 + 2));
      v361 = vrhaddq_u16(*(v219 + 16), *(v219 + 18));
      v362 = vrhaddq_u16(*(v219 + 32), *(v219 + 34));
      v363 = vrhaddq_u16(*(v219 + 48), *(v219 + 50));
      v220 = v219 + v208;
      v364 = vrhaddq_u16(*v220, *(v220 + 2));
      v365 = vrhaddq_u16(*(v220 + 16), *(v220 + 18));
      v366 = vrhaddq_u16(*(v220 + 32), *(v220 + 34));
      v367 = vrhaddq_u16(*(v220 + 48), *(v220 + 50));
      v221 = v220 + v208;
      v368 = vrhaddq_u16(*v221, *(v221 + 2));
      v369 = vrhaddq_u16(*(v221 + 16), *(v221 + 18));
      v370 = vrhaddq_u16(*(v221 + 32), *(v221 + 34));
      v371 = vrhaddq_u16(*(v221 + 48), *(v221 + 50));
      v222 = v221 + v208;
      v372 = vrhaddq_u16(*v222, *(v222 + 2));
      v373 = vrhaddq_u16(*(v222 + 16), *(v222 + 18));
      v374 = vrhaddq_u16(*(v222 + 32), *(v222 + 34));
      v375 = vrhaddq_u16(*(v222 + 48), *(v222 + 50));
      v223 = v222 + v208;
      v376 = vrhaddq_u16(*v223, *(v223 + 2));
      v377 = vrhaddq_u16(*(v223 + 16), *(v223 + 18));
      v378 = vrhaddq_u16(*(v223 + 32), *(v223 + 34));
      v379 = vrhaddq_u16(*(v223 + 48), *(v223 + 50));
      v224 = v223 + v208;
      v380 = vrhaddq_u16(*v224, *(v224 + 2));
      v381 = vrhaddq_u16(*(v224 + 16), *(v224 + 18));
      v382 = vrhaddq_u16(*(v224 + 32), *(v224 + 34));
      v383 = vrhaddq_u16(*(v224 + 48), *(v224 + 50));
      v225 = v224 + v208;
      v384 = vrhaddq_u16(*v225, *(v225 + 2));
      v385 = vrhaddq_u16(*(v225 + 16), *(v225 + 18));
      v386 = vrhaddq_u16(*(v225 + 32), *(v225 + 34));
      v226 = vdupq_n_s16(8 - a4);
      v387 = vrhaddq_u16(*(v225 + 48), *(v225 + 50));
      v227 = vdupq_n_s16(a4);
      v228 = v320;
      v229 = 112;
      do
      {
        v230 = (&v256 + v229);
        v231 = v210[-2];
        v232 = v210[2];
        v234 = v210[-1];
        v233 = *v210;
        v235 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v210[-3], v226), v210[1], v227), 3uLL);
        v230[-7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v228, v226), *v210, v227), 3uLL);
        v230[-6] = v235;
        v236 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v234, v226), v210[3], v227), 3uLL);
        v230[-5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v231, v226), v232, v227), 3uLL);
        v230[-4] = v236;
        v229 += 64;
        v210 += 4;
        v228 = v233;
      }

      while (v229 != 1136);
      v237 = 0;
      v238 = (2 * a5 + 32);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v239 = vsubq_s16(*(&v256 + v237), v238[-2]);
        v240 = vpadalq_s16(v13, v239);
        v241 = vmlal_s16(v10, *v239.i8, *v239.i8);
        v242 = vmlal_high_s16(v12, v239, v239);
        v243 = vsubq_s16(*(&v256 + v237 + 16), v238[-1]);
        v244 = vpadalq_s16(v240, v243);
        v245 = vmlal_s16(v241, *v243.i8, *v243.i8);
        v246 = vmlal_high_s16(v242, v243, v243);
        v247 = vsubq_s16(*(&v258 + v237), *v238);
        v248 = vpadalq_s16(v244, v247);
        v249 = vmlal_s16(v245, *v247.i8, *v247.i8);
        v250 = vmlal_high_s16(v246, v247, v247);
        v251 = vsubq_s16(*(&v259 + v237), v238[1]);
        v13 = vpadalq_s16(v248, v251);
        v10 = vmlal_s16(v249, *v251.i8, *v251.i8);
        v12 = vmlal_high_s16(v250, v251, v251);
        v237 += 64;
        v238 = (v238 + 2 * a6);
      }

      while (v237 != 1024);
    }

    else
    {
      v28 = 0;
      v29 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v320 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v321 = v29;
      v30 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v322 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v323 = v30;
      v31 = 2 * a2;
      v32 = v7 + v31;
      v324 = vrhaddq_u16(*v32, *(v32 + 2));
      v325 = vrhaddq_u16(*(v32 + 1), *(v32 + 18));
      v326 = vrhaddq_u16(*(v32 + 2), *(v32 + 34));
      v327 = vrhaddq_u16(*(v32 + 3), *(v32 + 50));
      v33 = &v32[v31];
      v328 = vrhaddq_u16(*v33, *(v33 + 2));
      v329 = vrhaddq_u16(*(v33 + 1), *(v33 + 18));
      v330 = vrhaddq_u16(*(v33 + 2), *(v33 + 34));
      v331 = vrhaddq_u16(*(v33 + 3), *(v33 + 50));
      v34 = &v33[v31];
      v332 = vrhaddq_u16(*v34, *(v34 + 2));
      v333 = vrhaddq_u16(*(v34 + 1), *(v34 + 18));
      v334 = vrhaddq_u16(*(v34 + 2), *(v34 + 34));
      v335 = vrhaddq_u16(*(v34 + 3), *(v34 + 50));
      v35 = &v34[v31];
      v336 = vrhaddq_u16(*v35, *(v35 + 2));
      v337 = vrhaddq_u16(*(v35 + 1), *(v35 + 18));
      v338 = vrhaddq_u16(*(v35 + 2), *(v35 + 34));
      v339 = vrhaddq_u16(*(v35 + 3), *(v35 + 50));
      v36 = &v35[v31];
      v340 = vrhaddq_u16(*v36, *(v36 + 2));
      v341 = vrhaddq_u16(*(v36 + 1), *(v36 + 18));
      v342 = vrhaddq_u16(*(v36 + 2), *(v36 + 34));
      v343 = vrhaddq_u16(*(v36 + 3), *(v36 + 50));
      v37 = &v36[v31];
      v344 = vrhaddq_u16(*v37, *(v37 + 2));
      v345 = vrhaddq_u16(*(v37 + 1), *(v37 + 18));
      v346 = vrhaddq_u16(*(v37 + 2), *(v37 + 34));
      v347 = vrhaddq_u16(*(v37 + 3), *(v37 + 50));
      v38 = &v37[v31];
      v348 = vrhaddq_u16(*v38, *(v38 + 2));
      v349 = vrhaddq_u16(*(v38 + 1), *(v38 + 18));
      v350 = vrhaddq_u16(*(v38 + 2), *(v38 + 34));
      v351 = vrhaddq_u16(*(v38 + 3), *(v38 + 50));
      v39 = &v38[v31];
      v352 = vrhaddq_u16(*v39, *(v39 + 2));
      v353 = vrhaddq_u16(*(v39 + 1), *(v39 + 18));
      v354 = vrhaddq_u16(*(v39 + 2), *(v39 + 34));
      v355 = vrhaddq_u16(*(v39 + 3), *(v39 + 50));
      v40 = &v39[v31];
      v356 = vrhaddq_u16(*v40, *(v40 + 2));
      v357 = vrhaddq_u16(*(v40 + 16), *(v40 + 18));
      v358 = vrhaddq_u16(*(v40 + 32), *(v40 + 34));
      v359 = vrhaddq_u16(*(v40 + 48), *(v40 + 50));
      v41 = v40 + v31;
      v360 = vrhaddq_u16(*v41, *(v41 + 2));
      v361 = vrhaddq_u16(*(v41 + 16), *(v41 + 18));
      v362 = vrhaddq_u16(*(v41 + 32), *(v41 + 34));
      v363 = vrhaddq_u16(*(v41 + 48), *(v41 + 50));
      v42 = v41 + v31;
      v364 = vrhaddq_u16(*v42, *(v42 + 2));
      v365 = vrhaddq_u16(*(v42 + 16), *(v42 + 18));
      v366 = vrhaddq_u16(*(v42 + 32), *(v42 + 34));
      v367 = vrhaddq_u16(*(v42 + 48), *(v42 + 50));
      v43 = v42 + v31;
      v368 = vrhaddq_u16(*v43, *(v43 + 2));
      v369 = vrhaddq_u16(*(v43 + 16), *(v43 + 18));
      v370 = vrhaddq_u16(*(v43 + 32), *(v43 + 34));
      v371 = vrhaddq_u16(*(v43 + 48), *(v43 + 50));
      v44 = v43 + v31;
      v372 = vrhaddq_u16(*v44, *(v44 + 2));
      v373 = vrhaddq_u16(*(v44 + 16), *(v44 + 18));
      v374 = vrhaddq_u16(*(v44 + 32), *(v44 + 34));
      v375 = vrhaddq_u16(*(v44 + 48), *(v44 + 50));
      v45 = v44 + v31;
      v376 = vrhaddq_u16(*v45, *(v45 + 2));
      v377 = vrhaddq_u16(*(v45 + 16), *(v45 + 18));
      v378 = vrhaddq_u16(*(v45 + 32), *(v45 + 34));
      v46 = v45 + v31;
      v379 = vrhaddq_u16(*(v45 + 48), *(v45 + 50));
      v380 = vrhaddq_u16(*v46, *(v46 + 2));
      v381 = vrhaddq_u16(*(v46 + 16), *(v46 + 18));
      v382 = vrhaddq_u16(*(v46 + 32), *(v46 + 34));
      v383 = vrhaddq_u16(*(v46 + 48), *(v46 + 50));
      v47 = (2 * a5 + 32);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v48 = vsubq_s16(*(&v320 + v28), v47[-2]);
        v49 = vpadalq_s16(v13, v48);
        v50 = vmlal_s16(v10, *v48.i8, *v48.i8);
        v51 = vmlal_high_s16(v12, v48, v48);
        v52 = vsubq_s16(*(&v320 + v28 + 16), v47[-1]);
        v53 = vpadalq_s16(v49, v52);
        v54 = vmlal_s16(v50, *v52.i8, *v52.i8);
        v55 = vmlal_high_s16(v51, v52, v52);
        v56 = vsubq_s16(*(&v322 + v28), *v47);
        v57 = vpadalq_s16(v53, v56);
        v58 = vmlal_s16(v54, *v56.i8, *v56.i8);
        v59 = vmlal_high_s16(v55, v56, v56);
        v60 = vsubq_s16(*(&v323 + v28), v47[1]);
        v13 = vpadalq_s16(v57, v60);
        v10 = vmlal_s16(v58, *v60.i8, *v60.i8);
        v12 = vmlal_high_s16(v59, v60, v60);
        v28 += 64;
        v47 = (v47 + 2 * a6);
      }

      while (v28 != 1024);
    }
  }

  else if (a3)
  {
    v61 = 0;
    v62 = vdupq_n_s16(8 - a3);
    v63 = vdupq_n_s16(a3);
    v64 = v7 + 2;
    v65 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v82 = (&v320 + v61);
        *v82 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 - 2), v62), *(v64 - 30), v63), 3uLL);
        v82[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 - 1), v62), *(v64 - 14), v63), 3uLL);
        v82[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v64, v62), *(v64 + 2), v63), 3uLL);
        v82[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 + 1), v62), *(v64 + 18), v63), 3uLL);
        v61 += 64;
        v64 = (v64 + v65);
      }

      while (v61 != 1088);
      v83 = 0;
      v256 = vrhaddq_u16(v320, v324);
      v257 = vrhaddq_u16(v321, v325);
      v258 = vrhaddq_u16(v322, v326);
      v259 = vrhaddq_u16(v323, v327);
      v260 = vrhaddq_u16(v324, v328);
      v261 = vrhaddq_u16(v325, v329);
      v262 = vrhaddq_u16(v326, v330);
      v263 = vrhaddq_u16(v327, v331);
      v264 = vrhaddq_u16(v328, v332);
      v265 = vrhaddq_u16(v329, v333);
      v266 = vrhaddq_u16(v330, v334);
      v267 = vrhaddq_u16(v331, v335);
      v268 = vrhaddq_u16(v332, v336);
      v269 = vrhaddq_u16(v333, v337);
      v270 = vrhaddq_u16(v334, v338);
      v271 = vrhaddq_u16(v335, v339);
      v272 = vrhaddq_u16(v336, v340);
      v273 = vrhaddq_u16(v337, v341);
      v274 = vrhaddq_u16(v338, v342);
      v275 = vrhaddq_u16(v339, v343);
      v276 = vrhaddq_u16(v340, v344);
      v277 = vrhaddq_u16(v341, v345);
      v278 = vrhaddq_u16(v342, v346);
      v279 = vrhaddq_u16(v343, v347);
      v280 = vrhaddq_u16(v344, v348);
      v281 = vrhaddq_u16(v345, v349);
      v282 = vrhaddq_u16(v346, v350);
      v283 = vrhaddq_u16(v347, v351);
      v284 = vrhaddq_u16(v348, v352);
      v285 = vrhaddq_u16(v349, v353);
      v286 = vrhaddq_u16(v350, v354);
      v287 = vrhaddq_u16(v351, v355);
      v288 = vrhaddq_u16(v352, v356);
      v289 = vrhaddq_u16(v353, v357);
      v290 = vrhaddq_u16(v354, v358);
      v291 = vrhaddq_u16(v355, v359);
      v292 = vrhaddq_u16(v356, v360);
      v293 = vrhaddq_u16(v357, v361);
      v294 = vrhaddq_u16(v358, v362);
      v295 = vrhaddq_u16(v359, v363);
      v296 = vrhaddq_u16(v360, v364);
      v297 = vrhaddq_u16(v361, v365);
      v298 = vrhaddq_u16(v362, v366);
      v299 = vrhaddq_u16(v363, v367);
      v300 = vrhaddq_u16(v364, v368);
      v301 = vrhaddq_u16(v365, v369);
      v302 = vrhaddq_u16(v366, v370);
      v303 = vrhaddq_u16(v367, v371);
      v304 = vrhaddq_u16(v368, v372);
      v305 = vrhaddq_u16(v369, v373);
      v306 = vrhaddq_u16(v370, v374);
      v307 = vrhaddq_u16(v371, v375);
      v308 = vrhaddq_u16(v372, v376);
      v309 = vrhaddq_u16(v373, v377);
      v310 = vrhaddq_u16(v374, v378);
      v311 = vrhaddq_u16(v375, v379);
      v312 = vrhaddq_u16(v376, v380);
      v313 = vrhaddq_u16(v377, v381);
      v314 = vrhaddq_u16(v378, v382);
      v315 = vrhaddq_u16(v379, v383);
      v316 = vrhaddq_u16(v380, v384);
      v317 = vrhaddq_u16(v381, v385);
      v84 = (2 * a5 + 32);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v318 = vrhaddq_u16(v382, v386);
      v319 = vrhaddq_u16(v383, v387);
      do
      {
        v85 = vsubq_s16(*(&v256 + v83), v84[-2]);
        v86 = vpadalq_s16(v13, v85);
        v87 = vmlal_s16(v10, *v85.i8, *v85.i8);
        v88 = vmlal_high_s16(v12, v85, v85);
        v89 = vsubq_s16(*(&v256 + v83 + 16), v84[-1]);
        v90 = vpadalq_s16(v86, v89);
        v91 = vmlal_s16(v87, *v89.i8, *v89.i8);
        v92 = vmlal_high_s16(v88, v89, v89);
        v93 = vsubq_s16(*(&v258 + v83), *v84);
        v94 = vpadalq_s16(v90, v93);
        v95 = vmlal_s16(v91, *v93.i8, *v93.i8);
        v96 = vmlal_high_s16(v92, v93, v93);
        v97 = vsubq_s16(*(&v259 + v83), v84[1]);
        v13 = vpadalq_s16(v94, v97);
        v10 = vmlal_s16(v95, *v97.i8, *v97.i8);
        v12 = vmlal_high_s16(v96, v97, v97);
        v83 += 64;
        v84 = (v84 + 2 * a6);
      }

      while (v83 != 1024);
    }

    else if (a4)
    {
      do
      {
        v98 = (&v320 + v61);
        *v98 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 - 2), v62), *(v64 - 30), v63), 3uLL);
        v98[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 - 1), v62), *(v64 - 14), v63), 3uLL);
        v98[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v64, v62), *(v64 + 2), v63), 3uLL);
        v98[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 + 1), v62), *(v64 + 18), v63), 3uLL);
        v61 += 64;
        v64 = (v64 + v65);
      }

      while (v61 != 1088);
      v99 = vdupq_n_s16(8 - a4);
      v100 = vdupq_n_s16(a4);
      v101 = v320;
      v102 = &v324;
      v103 = 112;
      do
      {
        v104 = (&v256 + v103);
        v105 = v102[-2];
        v106 = v102[2];
        v108 = v102[-1];
        v107 = *v102;
        v109 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v102[-3], v99), v102[1], v100), 3uLL);
        v104[-7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v101, v99), *v102, v100), 3uLL);
        v104[-6] = v109;
        v110 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v108, v99), v102[3], v100), 3uLL);
        v104[-5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v105, v99), v106, v100), 3uLL);
        v104[-4] = v110;
        v103 += 64;
        v102 += 4;
        v101 = v107;
      }

      while (v103 != 1136);
      v111 = 0;
      v112 = (2 * a5 + 32);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v113 = vsubq_s16(*(&v256 + v111), v112[-2]);
        v114 = vpadalq_s16(v13, v113);
        v115 = vmlal_s16(v10, *v113.i8, *v113.i8);
        v116 = vmlal_high_s16(v12, v113, v113);
        v117 = vsubq_s16(*(&v256 + v111 + 16), v112[-1]);
        v118 = vpadalq_s16(v114, v117);
        v119 = vmlal_s16(v115, *v117.i8, *v117.i8);
        v120 = vmlal_high_s16(v116, v117, v117);
        v121 = vsubq_s16(*(&v258 + v111), *v112);
        v122 = vpadalq_s16(v118, v121);
        v123 = vmlal_s16(v119, *v121.i8, *v121.i8);
        v124 = vmlal_high_s16(v120, v121, v121);
        v125 = vsubq_s16(*(&v259 + v111), v112[1]);
        v13 = vpadalq_s16(v122, v125);
        v10 = vmlal_s16(v123, *v125.i8, *v125.i8);
        v12 = vmlal_high_s16(v124, v125, v125);
        v111 += 64;
        v112 = (v112 + 2 * a6);
      }

      while (v111 != 1024);
    }

    else
    {
      do
      {
        v66 = (&v320 + v61);
        *v66 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 - 2), v62), *(v64 - 30), v63), 3uLL);
        v66[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 - 1), v62), *(v64 - 14), v63), 3uLL);
        v66[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v64, v62), *(v64 + 2), v63), 3uLL);
        v66[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 + 1), v62), *(v64 + 18), v63), 3uLL);
        v61 += 64;
        v64 = (v64 + v65);
      }

      while (v61 != 1024);
      v67 = 0;
      v68 = (2 * a5 + 32);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v69 = vsubq_s16(*(&v320 + v67), v68[-2]);
        v70 = vpadalq_s16(v13, v69);
        v71 = vmlal_s16(v10, *v69.i8, *v69.i8);
        v72 = vmlal_high_s16(v12, v69, v69);
        v73 = vsubq_s16(*(&v320 + v67 + 16), v68[-1]);
        v74 = vpadalq_s16(v70, v73);
        v75 = vmlal_s16(v71, *v73.i8, *v73.i8);
        v76 = vmlal_high_s16(v72, v73, v73);
        v77 = vsubq_s16(*(&v322 + v67), *v68);
        v78 = vpadalq_s16(v74, v77);
        v79 = vmlal_s16(v75, *v77.i8, *v77.i8);
        v80 = vmlal_high_s16(v76, v77, v77);
        v81 = vsubq_s16(*(&v323 + v67), v68[1]);
        v13 = vpadalq_s16(v78, v81);
        v10 = vmlal_s16(v79, *v81.i8, *v81.i8);
        v12 = vmlal_high_s16(v80, v81, v81);
        v67 += 64;
        v68 = (v68 + 2 * a6);
      }

      while (v67 != 1024);
    }
  }

  else if (a4 == 4)
  {
    v126 = 0;
    v128 = *v7;
    v127 = (v7 + 2);
    v129 = v128;
    v130 = 2 * a2;
    do
    {
      v131 = (&v320 + v126);
      v132 = *(&v127[-2] + v130);
      *v131 = vrhaddq_u16(v129, v132);
      v131[1] = vrhaddq_u16(v127[-1], *(&v127[-1] + v130));
      v131[2] = vrhaddq_u16(*v127, *(v127 + 2 * a2));
      v131[3] = vrhaddq_u16(v127[1], *(&v127[1] + v130));
      v126 += 64;
      v127 = (v127 + v130);
      v129 = v132;
    }

    while (v126 != 1024);
    v133 = 0;
    v134 = (2 * a5 + 32);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v135 = vsubq_s16(*(&v320 + v133), v134[-2]);
      v136 = vpadalq_s16(v13, v135);
      v137 = vmlal_s16(v10, *v135.i8, *v135.i8);
      v138 = vmlal_high_s16(v12, v135, v135);
      v139 = vsubq_s16(*(&v320 + v133 + 16), v134[-1]);
      v140 = vpadalq_s16(v136, v139);
      v141 = vmlal_s16(v137, *v139.i8, *v139.i8);
      v142 = vmlal_high_s16(v138, v139, v139);
      v143 = vsubq_s16(*(&v322 + v133), *v134);
      v144 = vpadalq_s16(v140, v143);
      v145 = vmlal_s16(v141, *v143.i8, *v143.i8);
      v146 = vmlal_high_s16(v142, v143, v143);
      v147 = vsubq_s16(*(&v323 + v133), v134[1]);
      v13 = vpadalq_s16(v144, v147);
      v10 = vmlal_s16(v145, *v147.i8, *v147.i8);
      v12 = vmlal_high_s16(v146, v147, v147);
      v133 += 64;
      v134 = (v134 + 2 * a6);
    }

    while (v133 != 1024);
  }

  else if (a4)
  {
    v182 = 0;
    v183 = vdupq_n_s16(8 - a4);
    v184 = vdupq_n_s16(a4);
    v186 = *v7;
    v185 = (v7 + 2);
    v187 = v186;
    v188 = 2 * a2;
    do
    {
      v189 = (&v320 + v182);
      v190 = *(&v185[-2] + v188);
      *v189 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v187, v183), v190, v184), 3uLL);
      v189[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v185[-1], v183), *(&v185[-1] + v188), v184), 3uLL);
      v189[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v185, v183), *(v185 + 2 * a2), v184), 3uLL);
      v189[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v185[1], v183), *(&v185[1] + v188), v184), 3uLL);
      v182 += 64;
      v185 = (v185 + v188);
      v187 = v190;
    }

    while (v182 != 1024);
    v191 = 0;
    v192 = (2 * a5 + 32);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v193 = vsubq_s16(*(&v320 + v191), v192[-2]);
      v194 = vpadalq_s16(v13, v193);
      v195 = vmlal_s16(v10, *v193.i8, *v193.i8);
      v196 = vmlal_high_s16(v12, v193, v193);
      v197 = vsubq_s16(*(&v320 + v191 + 16), v192[-1]);
      v198 = vpadalq_s16(v194, v197);
      v199 = vmlal_s16(v195, *v197.i8, *v197.i8);
      v200 = vmlal_high_s16(v196, v197, v197);
      v201 = vsubq_s16(*(&v322 + v191), *v192);
      v202 = vpadalq_s16(v198, v201);
      v203 = vmlal_s16(v199, *v201.i8, *v201.i8);
      v204 = vmlal_high_s16(v200, v201, v201);
      v205 = vsubq_s16(*(&v323 + v191), v192[1]);
      v13 = vpadalq_s16(v202, v205);
      v10 = vmlal_s16(v203, *v205.i8, *v205.i8);
      v12 = vmlal_high_s16(v204, v205, v205);
      v191 += 64;
      v192 = (v192 + 2 * a6);
    }

    while (v191 != 1024);
  }

  else
  {
    v8 = (v7 + 2);
    v9 = (2 * a5 + 32);
    v10 = 0uLL;
    v11 = -16;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = vsubq_s16(v8[-2], v9[-2]);
      v15 = vpadalq_s16(v13, v14);
      v16 = vmlal_s16(v10, *v14.i8, *v14.i8);
      v17 = vmlal_high_s16(v12, v14, v14);
      v18 = vsubq_s16(v8[-1], v9[-1]);
      v19 = vpadalq_s16(v15, v18);
      v20 = vmlal_s16(v16, *v18.i8, *v18.i8);
      v21 = vmlal_high_s16(v17, v18, v18);
      v22 = vsubq_s16(*v8, *v9);
      v23 = vpadalq_s16(v19, v22);
      v24 = vmlal_s16(v20, *v22.i8, *v22.i8);
      v25 = vmlal_high_s16(v21, v22, v22);
      v26 = vsubq_s16(v8[1], v9[1]);
      v13 = vpadalq_s16(v23, v26);
      v10 = vmlal_s16(v24, *v26.i8, *v26.i8);
      v12 = vmlal_high_s16(v25, v26, v26);
      v8 = (v8 + 2 * a2);
      v9 = (v9 + 2 * a6);
    }

    while (!__CFADD__(v11++, 1));
  }

  v252 = vaddvq_s32(v13);
  v253 = vaddlvq_u32(vaddq_s32(v12, v10));
  *a7 = (v253 + 128) >> 8;
  v254 = ((v253 + 128) >> 8) - (((((v252 << 28) + 0x80000000) >> 32) * (((v252 << 28) + 0x80000000) >> 32)) >> 9);
  return v254 & ~(v254 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_variance32x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v233[257] = *MEMORY[0x277D85DE8];
  v10 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v175 = 0;
      v176 = v10 + 2;
      do
      {
        v177 = &v232[v175];
        *v177 = vrhaddq_u16(*(v176 - 2), *(v176 - 30));
        v177[1] = vrhaddq_u16(*(v176 - 1), *(v176 - 14));
        v177[2] = vrhaddq_u16(*v176, *(v176 + 2));
        v177[3] = vrhaddq_u16(*(v176 + 1), *(v176 + 18));
        v175 += 4;
        v176 = (v176 + 2 * v4);
      }

      while ((v175 * 16) != 2112);
      v178 = v232[0];
      v179 = v233;
      v180 = 112;
      do
      {
        v181 = &v231[v180];
        v182 = v179[-2];
        v183 = v179[2];
        v184 = vrhaddq_u16(v179[-3], v179[1]);
        v186 = v179[-1];
        v185 = *v179;
        v181[-7] = vrhaddq_u16(v178, *v179);
        v181[-6] = v184;
        v187 = vrhaddq_u16(v186, v179[3]);
        v181[-5] = vrhaddq_u16(v182, v183);
        v181[-4] = v187;
        v180 += 64;
        v179 += 4;
        v178 = v185;
      }

      while (v180 != 2160);
      v188 = 0;
      v189 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v190 = vsubq_s16(*&v231[v188], v189[-2]);
        v191 = vpadalq_s16(v16, v190);
        v192 = vmlal_s16(v13, *v190.i8, *v190.i8);
        v193 = vmlal_high_s16(v15, v190, v190);
        v194 = vsubq_s16(*&v231[v188 + 16], v189[-1]);
        v195 = vpadalq_s16(v191, v194);
        v196 = vmlal_s16(v192, *v194.i8, *v194.i8);
        v197 = vmlal_high_s16(v193, v194, v194);
        v198 = vsubq_s16(*&v231[v188 + 32], *v189);
        v199 = vpadalq_s16(v195, v198);
        v200 = vmlal_s16(v196, *v198.i8, *v198.i8);
        v201 = vmlal_high_s16(v197, v198, v198);
        v202 = vsubq_s16(*&v231[v188 + 48], v189[1]);
        v16 = vpadalq_s16(v199, v202);
        v13 = vmlal_s16(v200, *v202.i8, *v202.i8);
        v15 = vmlal_high_s16(v201, v202, v202);
        v188 += 64;
        v189 = (v189 + 2 * v8);
      }

      while (v188 != 2048);
    }

    else
    {
      v31 = 0;
      v32 = v10 + 2;
      v33 = 2 * v4;
      if (v6)
      {
        do
        {
          v50 = &v232[v31];
          *v50 = vrhaddq_u16(*(v32 - 2), *(v32 - 30));
          v50[1] = vrhaddq_u16(*(v32 - 1), *(v32 - 14));
          v50[2] = vrhaddq_u16(*v32, *(v32 + 2));
          v50[3] = vrhaddq_u16(*(v32 + 1), *(v32 + 18));
          v31 += 4;
          v32 = (v32 + v33);
        }

        while ((v31 * 16) != 2112);
        v51 = vdupq_n_s16(8 - v6);
        v52 = vdupq_n_s16(v6);
        v53 = v232[0];
        v54 = v233;
        v55 = 112;
        do
        {
          v56 = &v231[v55];
          v57 = v54[-2];
          v58 = v54[2];
          v60 = v54[-1];
          v59 = *v54;
          v61 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v54[-3], v51), v54[1], v52), 3uLL);
          v56[-7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53, v51), *v54, v52), 3uLL);
          v56[-6] = v61;
          v62 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60, v51), v54[3], v52), 3uLL);
          v56[-5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v57, v51), v58, v52), 3uLL);
          v56[-4] = v62;
          v55 += 64;
          v54 += 4;
          v53 = v59;
        }

        while (v55 != 2160);
        v63 = 0;
        v64 = (2 * v7 + 32);
        v13 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        do
        {
          v65 = vsubq_s16(*&v231[v63], v64[-2]);
          v66 = vpadalq_s16(v16, v65);
          v67 = vmlal_s16(v13, *v65.i8, *v65.i8);
          v68 = vmlal_high_s16(v15, v65, v65);
          v69 = vsubq_s16(*&v231[v63 + 16], v64[-1]);
          v70 = vpadalq_s16(v66, v69);
          v71 = vmlal_s16(v67, *v69.i8, *v69.i8);
          v72 = vmlal_high_s16(v68, v69, v69);
          v73 = vsubq_s16(*&v231[v63 + 32], *v64);
          v74 = vpadalq_s16(v70, v73);
          v75 = vmlal_s16(v71, *v73.i8, *v73.i8);
          v76 = vmlal_high_s16(v72, v73, v73);
          v77 = vsubq_s16(*&v231[v63 + 48], v64[1]);
          v16 = vpadalq_s16(v74, v77);
          v13 = vmlal_s16(v75, *v77.i8, *v77.i8);
          v15 = vmlal_high_s16(v76, v77, v77);
          v63 += 64;
          v64 = (v64 + 2 * v8);
        }

        while (v63 != 2048);
      }

      else
      {
        do
        {
          v34 = &v232[v31];
          *v34 = vrhaddq_u16(*(v32 - 2), *(v32 - 30));
          v34[1] = vrhaddq_u16(*(v32 - 1), *(v32 - 14));
          v34[2] = vrhaddq_u16(*v32, *(v32 + 2));
          v34[3] = vrhaddq_u16(*(v32 + 1), *(v32 + 18));
          v31 += 4;
          v32 = (v32 + v33);
        }

        while ((v31 * 16) != 2048);
        v35 = 0;
        v36 = (2 * v7 + 32);
        v13 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        do
        {
          v37 = vsubq_s16(v232[v35], v36[-2]);
          v38 = vpadalq_s16(v16, v37);
          v39 = vmlal_s16(v13, *v37.i8, *v37.i8);
          v40 = vmlal_high_s16(v15, v37, v37);
          v41 = vsubq_s16(v232[v35 + 1], v36[-1]);
          v42 = vpadalq_s16(v38, v41);
          v43 = vmlal_s16(v39, *v41.i8, *v41.i8);
          v44 = vmlal_high_s16(v40, v41, v41);
          v45 = vsubq_s16(v232[v35 + 2], *v36);
          v46 = vpadalq_s16(v42, v45);
          v47 = vmlal_s16(v43, *v45.i8, *v45.i8);
          v48 = vmlal_high_s16(v44, v45, v45);
          v49 = vsubq_s16(v232[v35 + 3], v36[1]);
          v16 = vpadalq_s16(v46, v49);
          v13 = vmlal_s16(v47, *v49.i8, *v49.i8);
          v15 = vmlal_high_s16(v48, v49, v49);
          v35 += 4;
          v36 = (v36 + 2 * v8);
        }

        while ((v35 * 16) != 2048);
      }
    }
  }

  else if (v5)
  {
    v78 = 0;
    v79 = vdupq_n_s16(8 - v5);
    v80 = vdupq_n_s16(v5);
    v81 = v10 + 2;
    v82 = 2 * v4;
    if (v6 == 4)
    {
      do
      {
        v99 = &v232[v78];
        *v99 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 - 2), v79), *(v81 - 30), v80), 3uLL);
        v99[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 - 1), v79), *(v81 - 14), v80), 3uLL);
        v99[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v81, v79), *(v81 + 2), v80), 3uLL);
        v99[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 + 1), v79), *(v81 + 18), v80), 3uLL);
        v78 += 4;
        v81 = (v81 + v82);
      }

      while ((v78 * 16) != 2112);
      v100 = v232[0];
      v101 = v233;
      v102 = 112;
      do
      {
        v103 = &v231[v102];
        v104 = v101[-2];
        v105 = v101[2];
        v106 = vrhaddq_u16(v101[-3], v101[1]);
        v108 = v101[-1];
        v107 = *v101;
        v103[-7] = vrhaddq_u16(v100, *v101);
        v103[-6] = v106;
        v109 = vrhaddq_u16(v108, v101[3]);
        v103[-5] = vrhaddq_u16(v104, v105);
        v103[-4] = v109;
        v102 += 64;
        v101 += 4;
        v100 = v107;
      }

      while (v102 != 2160);
      v110 = 0;
      v111 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v112 = vsubq_s16(*&v231[v110], v111[-2]);
        v113 = vpadalq_s16(v16, v112);
        v114 = vmlal_s16(v13, *v112.i8, *v112.i8);
        v115 = vmlal_high_s16(v15, v112, v112);
        v116 = vsubq_s16(*&v231[v110 + 16], v111[-1]);
        v117 = vpadalq_s16(v113, v116);
        v118 = vmlal_s16(v114, *v116.i8, *v116.i8);
        v119 = vmlal_high_s16(v115, v116, v116);
        v120 = vsubq_s16(*&v231[v110 + 32], *v111);
        v121 = vpadalq_s16(v117, v120);
        v122 = vmlal_s16(v118, *v120.i8, *v120.i8);
        v123 = vmlal_high_s16(v119, v120, v120);
        v124 = vsubq_s16(*&v231[v110 + 48], v111[1]);
        v16 = vpadalq_s16(v121, v124);
        v13 = vmlal_s16(v122, *v124.i8, *v124.i8);
        v15 = vmlal_high_s16(v123, v124, v124);
        v110 += 64;
        v111 = (v111 + 2 * v8);
      }

      while (v110 != 2048);
    }

    else if (v6)
    {
      do
      {
        v125 = &v232[v78];
        *v125 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 - 2), v79), *(v81 - 30), v80), 3uLL);
        v125[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 - 1), v79), *(v81 - 14), v80), 3uLL);
        v125[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v81, v79), *(v81 + 2), v80), 3uLL);
        v125[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 + 1), v79), *(v81 + 18), v80), 3uLL);
        v78 += 4;
        v81 = (v81 + v82);
      }

      while ((v78 * 16) != 2112);
      v126 = vdupq_n_s16(8 - v6);
      v127 = vdupq_n_s16(v6);
      v128 = v232[0];
      v129 = v233;
      v130 = 112;
      do
      {
        v131 = &v231[v130];
        v132 = v129[-2];
        v133 = v129[2];
        v135 = v129[-1];
        v134 = *v129;
        v136 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v129[-3], v126), v129[1], v127), 3uLL);
        v131[-7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v128, v126), *v129, v127), 3uLL);
        v131[-6] = v136;
        v137 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v135, v126), v129[3], v127), 3uLL);
        v131[-5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v132, v126), v133, v127), 3uLL);
        v131[-4] = v137;
        v130 += 64;
        v129 += 4;
        v128 = v134;
      }

      while (v130 != 2160);
      v138 = 0;
      v139 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v140 = vsubq_s16(*&v231[v138], v139[-2]);
        v141 = vpadalq_s16(v16, v140);
        v142 = vmlal_s16(v13, *v140.i8, *v140.i8);
        v143 = vmlal_high_s16(v15, v140, v140);
        v144 = vsubq_s16(*&v231[v138 + 16], v139[-1]);
        v145 = vpadalq_s16(v141, v144);
        v146 = vmlal_s16(v142, *v144.i8, *v144.i8);
        v147 = vmlal_high_s16(v143, v144, v144);
        v148 = vsubq_s16(*&v231[v138 + 32], *v139);
        v149 = vpadalq_s16(v145, v148);
        v150 = vmlal_s16(v146, *v148.i8, *v148.i8);
        v151 = vmlal_high_s16(v147, v148, v148);
        v152 = vsubq_s16(*&v231[v138 + 48], v139[1]);
        v16 = vpadalq_s16(v149, v152);
        v13 = vmlal_s16(v150, *v152.i8, *v152.i8);
        v15 = vmlal_high_s16(v151, v152, v152);
        v138 += 64;
        v139 = (v139 + 2 * v8);
      }

      while (v138 != 2048);
    }

    else
    {
      do
      {
        v83 = &v232[v78];
        *v83 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 - 2), v79), *(v81 - 30), v80), 3uLL);
        v83[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 - 1), v79), *(v81 - 14), v80), 3uLL);
        v83[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v81, v79), *(v81 + 2), v80), 3uLL);
        v83[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 + 1), v79), *(v81 + 18), v80), 3uLL);
        v78 += 4;
        v81 = (v81 + v82);
      }

      while ((v78 * 16) != 2048);
      v84 = 0;
      v85 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v86 = vsubq_s16(v232[v84], v85[-2]);
        v87 = vpadalq_s16(v16, v86);
        v88 = vmlal_s16(v13, *v86.i8, *v86.i8);
        v89 = vmlal_high_s16(v15, v86, v86);
        v90 = vsubq_s16(v232[v84 + 1], v85[-1]);
        v91 = vpadalq_s16(v87, v90);
        v92 = vmlal_s16(v88, *v90.i8, *v90.i8);
        v93 = vmlal_high_s16(v89, v90, v90);
        v94 = vsubq_s16(v232[v84 + 2], *v85);
        v95 = vpadalq_s16(v91, v94);
        v96 = vmlal_s16(v92, *v94.i8, *v94.i8);
        v97 = vmlal_high_s16(v93, v94, v94);
        v98 = vsubq_s16(v232[v84 + 3], v85[1]);
        v16 = vpadalq_s16(v95, v98);
        v13 = vmlal_s16(v96, *v98.i8, *v98.i8);
        v15 = vmlal_high_s16(v97, v98, v98);
        v84 += 4;
        v85 = (v85 + 2 * v8);
      }

      while ((v84 * 16) != 2048);
    }
  }

  else if (v6 == 4)
  {
    v153 = 0;
    v155 = *v10;
    v154 = (v10 + 2);
    v156 = v155;
    v157 = 2 * v4;
    do
    {
      v158 = &v232[v153];
      v159 = *(&v154[-2] + v157);
      *v158 = vrhaddq_u16(v156, v159);
      v158[1] = vrhaddq_u16(v154[-1], *(&v154[-1] + v157));
      v158[2] = vrhaddq_u16(*v154, *(v154 + 2 * v4));
      v158[3] = vrhaddq_u16(v154[1], *(&v154[1] + v157));
      v153 += 4;
      v154 = (v154 + v157);
      v156 = v159;
    }

    while ((v153 * 16) != 2048);
    v160 = 0;
    v161 = (2 * v7 + 32);
    v13 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v162 = vsubq_s16(v232[v160], v161[-2]);
      v163 = vpadalq_s16(v16, v162);
      v164 = vmlal_s16(v13, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v15, v162, v162);
      v166 = vsubq_s16(v232[v160 + 1], v161[-1]);
      v167 = vpadalq_s16(v163, v166);
      v168 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v169 = vmlal_high_s16(v165, v166, v166);
      v170 = vsubq_s16(v232[v160 + 2], *v161);
      v171 = vpadalq_s16(v167, v170);
      v172 = vmlal_s16(v168, *v170.i8, *v170.i8);
      v173 = vmlal_high_s16(v169, v170, v170);
      v174 = vsubq_s16(v232[v160 + 3], v161[1]);
      v16 = vpadalq_s16(v171, v174);
      v13 = vmlal_s16(v172, *v174.i8, *v174.i8);
      v15 = vmlal_high_s16(v173, v174, v174);
      v160 += 4;
      v161 = (v161 + 2 * v8);
    }

    while ((v160 * 16) != 2048);
  }

  else if (v6)
  {
    v203 = 0;
    v204 = vdupq_n_s16(8 - v6);
    v205 = vdupq_n_s16(v6);
    v207 = *v10;
    v206 = (v10 + 2);
    v208 = v207;
    v209 = 2 * v4;
    do
    {
      v210 = &v232[v203];
      v211 = *(&v206[-2] + v209);
      *v210 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v208, v204), v211, v205), 3uLL);
      v210[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v206[-1], v204), *(&v206[-1] + v209), v205), 3uLL);
      v210[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v206, v204), *(v206 + 2 * v4), v205), 3uLL);
      v210[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v206[1], v204), *(&v206[1] + v209), v205), 3uLL);
      v203 += 4;
      v206 = (v206 + v209);
      v208 = v211;
    }

    while ((v203 * 16) != 2048);
    v212 = 0;
    v213 = (2 * v7 + 32);
    v13 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v214 = vsubq_s16(v232[v212], v213[-2]);
      v215 = vpadalq_s16(v16, v214);
      v216 = vmlal_s16(v13, *v214.i8, *v214.i8);
      v217 = vmlal_high_s16(v15, v214, v214);
      v218 = vsubq_s16(v232[v212 + 1], v213[-1]);
      v219 = vpadalq_s16(v215, v218);
      v220 = vmlal_s16(v216, *v218.i8, *v218.i8);
      v221 = vmlal_high_s16(v217, v218, v218);
      v222 = vsubq_s16(v232[v212 + 2], *v213);
      v223 = vpadalq_s16(v219, v222);
      v224 = vmlal_s16(v220, *v222.i8, *v222.i8);
      v225 = vmlal_high_s16(v221, v222, v222);
      v226 = vsubq_s16(v232[v212 + 3], v213[1]);
      v16 = vpadalq_s16(v223, v226);
      v13 = vmlal_s16(v224, *v226.i8, *v226.i8);
      v15 = vmlal_high_s16(v225, v226, v226);
      v212 += 4;
      v213 = (v213 + 2 * v8);
    }

    while ((v212 * 16) != 2048);
  }

  else
  {
    v11 = (v10 + 2);
    v12 = (2 * v7 + 32);
    v13 = 0uLL;
    v14 = -32;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = vsubq_s16(v11[-2], v12[-2]);
      v18 = vpadalq_s16(v16, v17);
      v19 = vmlal_s16(v13, *v17.i8, *v17.i8);
      v20 = vmlal_high_s16(v15, v17, v17);
      v21 = vsubq_s16(v11[-1], v12[-1]);
      v22 = vpadalq_s16(v18, v21);
      v23 = vmlal_s16(v19, *v21.i8, *v21.i8);
      v24 = vmlal_high_s16(v20, v21, v21);
      v25 = vsubq_s16(*v11, *v12);
      v26 = vpadalq_s16(v22, v25);
      v27 = vmlal_s16(v23, *v25.i8, *v25.i8);
      v28 = vmlal_high_s16(v24, v25, v25);
      v29 = vsubq_s16(v11[1], v12[1]);
      v16 = vpadalq_s16(v26, v29);
      v13 = vmlal_s16(v27, *v29.i8, *v29.i8);
      v15 = vmlal_high_s16(v28, v29, v29);
      v11 = (v11 + 2 * v4);
      v12 = (v12 + 2 * v8);
    }

    while (!__CFADD__(v14++, 1));
  }

  v227 = vaddvq_s32(v16);
  v228 = vaddlvq_u32(vaddq_s32(v15, v13));
  *v9 = (v228 + 128) >> 8;
  v229 = ((v228 + 128) >> 8) - (((((v227 << 28) + 0x80000000) >> 32) * (((v227 << 28) + 0x80000000) >> 32)) >> 10);
  return v229 & ~(v229 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_variance32x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v101[513] = *MEMORY[0x277D85DE8];
  v10 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v28 = v10 + 2;
      v29 = v100;
      v30 = -65;
      do
      {
        *v29 = vrhaddq_u16(*(v28 - 2), *(v28 - 30));
        v29[1] = vrhaddq_u16(*(v28 - 1), *(v28 - 14));
        v29[2] = vrhaddq_u16(*v28, *(v28 + 2));
        v29[3] = vrhaddq_u16(*(v28 + 1), *(v28 + 18));
        v29 += 4;
        v28 = (v28 + 2 * v4);
        v31 = __CFADD__(v30++, 1);
      }

      while (!v31);
      v32 = v100[0];
      v33 = v101;
      v34 = 112;
      do
      {
        v35 = (&v99 + v34);
        v36 = v33[-2];
        v37 = v33[2];
        v38 = vrhaddq_u16(v33[-3], v33[1]);
        v40 = v33[-1];
        v39 = *v33;
        v35[-7] = vrhaddq_u16(v32, *v33);
        v35[-6] = v38;
        v41 = vrhaddq_u16(v40, v33[3]);
        v35[-5] = vrhaddq_u16(v36, v37);
        v35[-4] = v41;
        v34 += 64;
        v33 += 4;
        v32 = v39;
      }

      while (v34 != 4208);
    }

    else
    {
      if (!v6)
      {
        v13 = 0;
        v14 = v10 + 2;
        do
        {
          v15 = &v100[v13];
          *v15 = vrhaddq_u16(*(v14 - 2), *(v14 - 30));
          v15[1] = vrhaddq_u16(*(v14 - 1), *(v14 - 14));
          v15[2] = vrhaddq_u16(*v14, *(v14 + 2));
          v15[3] = vrhaddq_u16(*(v14 + 1), *(v14 + 18));
          v13 += 4;
          v14 = (v14 + 2 * v4);
        }

        while ((v13 * 16) != 4096);
        goto LABEL_29;
      }

      v52 = v10 + 2;
      v53 = v100;
      v54 = -65;
      do
      {
        *v53 = vrhaddq_u16(*(v52 - 2), *(v52 - 30));
        v53[1] = vrhaddq_u16(*(v52 - 1), *(v52 - 14));
        v53[2] = vrhaddq_u16(*v52, *(v52 + 2));
        v53[3] = vrhaddq_u16(*(v52 + 1), *(v52 + 18));
        v53 += 4;
        v52 = (v52 + 2 * v4);
        v31 = __CFADD__(v54++, 1);
      }

      while (!v31);
      v55 = vdupq_n_s16(8 - v6);
      v56 = vdupq_n_s16(v6);
      v57 = v100[0];
      v58 = v101;
      v59 = 112;
      do
      {
        v60 = (&v99 + v59);
        v61 = v58[-2];
        v62 = v58[2];
        v64 = v58[-1];
        v63 = *v58;
        v65 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v58[-3], v55), v58[1], v56), 3uLL);
        v60[-7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v57, v55), *v58, v56), 3uLL);
        v60[-6] = v65;
        v66 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v64, v55), v58[3], v56), 3uLL);
        v60[-5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v61, v55), v62, v56), 3uLL);
        v60[-4] = v66;
        v59 += 64;
        v58 += 4;
        v57 = v63;
      }

      while (v59 != 4208);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    if (v6 == 4)
    {
      v67 = vdupq_n_s16(8 - v5);
      v68 = vdupq_n_s16(v5);
      v69 = v10 + 2;
      v70 = v100;
      v71 = -65;
      do
      {
        *v70 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v69 - 2), v67), *(v69 - 30), v68), 3uLL);
        v70[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v69 - 1), v67), *(v69 - 14), v68), 3uLL);
        v70[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v69, v67), *(v69 + 2), v68), 3uLL);
        v70[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v69 + 1), v67), *(v69 + 18), v68), 3uLL);
        v70 += 4;
        v69 = (v69 + 2 * v4);
        v31 = __CFADD__(v71++, 1);
      }

      while (!v31);
      v72 = v100[0];
      v73 = v101;
      v74 = 112;
      do
      {
        v75 = (&v99 + v74);
        v76 = v73[-2];
        v77 = v73[2];
        v78 = vrhaddq_u16(v73[-3], v73[1]);
        v80 = v73[-1];
        v79 = *v73;
        v75[-7] = vrhaddq_u16(v72, *v73);
        v75[-6] = v78;
        v81 = vrhaddq_u16(v80, v73[3]);
        v75[-5] = vrhaddq_u16(v76, v77);
        v75[-4] = v81;
        v74 += 64;
        v73 += 4;
        v72 = v79;
      }

      while (v74 != 4208);
    }

    else
    {
      if (!v6)
      {
        v16 = 0;
        v17 = vdupq_n_s16(8 - v5);
        v18 = vdupq_n_s16(v5);
        v19 = v10 + 2;
        do
        {
          v20 = &v100[v16];
          *v20 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 - 2), v17), *(v19 - 30), v18), 3uLL);
          v20[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 - 1), v17), *(v19 - 14), v18), 3uLL);
          v20[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v19, v17), *(v19 + 2), v18), 3uLL);
          v20[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 + 1), v17), *(v19 + 18), v18), 3uLL);
          v16 += 4;
          v19 = (v19 + 2 * v4);
        }

        while ((v16 * 16) != 4096);
        goto LABEL_29;
      }

      v82 = vdupq_n_s16(8 - v5);
      v83 = vdupq_n_s16(v5);
      v84 = v10 + 2;
      v85 = v100;
      v86 = -65;
      do
      {
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *(v84 - 30), v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 1), v82), *(v84 - 14), v83), 3uLL);
        v85[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v84, v82), *(v84 + 2), v83), 3uLL);
        v85[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 + 1), v82), *(v84 + 18), v83), 3uLL);
        v85 += 4;
        v84 = (v84 + 2 * v4);
        v31 = __CFADD__(v86++, 1);
      }

      while (!v31);
      v87 = vdupq_n_s16(8 - v6);
      v88 = vdupq_n_s16(v6);
      v89 = v100[0];
      v90 = v101;
      v91 = 112;
      do
      {
        v92 = (&v99 + v91);
        v93 = v90[-2];
        v94 = v90[2];
        v96 = v90[-1];
        v95 = *v90;
        v97 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v90[-3], v87), v90[1], v88), 3uLL);
        v92[-7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v89, v87), *v90, v88), 3uLL);
        v92[-6] = v97;
        v98 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v96, v87), v90[3], v88), 3uLL);
        v92[-5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v93, v87), v94, v88), 3uLL);
        v92[-4] = v98;
        v91 += 64;
        v90 += 4;
        v89 = v95;
      }

      while (v91 != 4208);
    }

LABEL_47:
    v51 = &v99;
    return vpx_highbd_12_variance32x64_neon(v51 >> 1, 32, v7, v8, v9);
  }

  if (v6 == 4)
  {
    v21 = 0;
    v23 = *v10;
    v22 = (v10 + 2);
    v24 = v23;
    v25 = 2 * v4;
    do
    {
      v26 = &v100[v21];
      v27 = *(&v22[-2] + v25);
      *v26 = vrhaddq_u16(v24, v27);
      v26[1] = vrhaddq_u16(v22[-1], *(&v22[-1] + v25));
      v26[2] = vrhaddq_u16(*v22, *(v22 + 2 * v4));
      v26[3] = vrhaddq_u16(v22[1], *(&v22[1] + v25));
      v21 += 4;
      v22 = (v22 + v25);
      v24 = v27;
    }

    while ((v21 * 16) != 4096);
    goto LABEL_29;
  }

  if (v6)
  {
    v42 = 0;
    v43 = vdupq_n_s16(8 - v6);
    v44 = vdupq_n_s16(v6);
    v46 = *v10;
    v45 = (v10 + 2);
    v47 = v46;
    v48 = 2 * v4;
    do
    {
      v49 = &v100[v42];
      v50 = *(&v45[-2] + v48);
      *v49 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v47, v43), v50, v44), 3uLL);
      v49[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45[-1], v43), *(&v45[-1] + v48), v44), 3uLL);
      v49[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v45, v43), *(v45 + 2 * v4), v44), 3uLL);
      v49[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45[1], v43), *(&v45[1] + v48), v44), 3uLL);
      v42 += 4;
      v45 = (v45 + v48);
      v47 = v50;
    }

    while ((v42 * 16) != 4096);
LABEL_29:
    v51 = v100;
    return vpx_highbd_12_variance32x64_neon(v51 >> 1, 32, v7, v8, v9);
  }

  v11 = v3 & 0x7FFFFFFFFFFFFFFFLL;

  return vpx_highbd_12_variance32x64_neon(v11, v4, v7, v8, v9);
}

uint64_t vpx_highbd_12_sub_pixel_variance64x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v133[513] = *MEMORY[0x277D85DE8];
  v10 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v28 = v10 + 4;
      v29 = v132;
      v30 = -33;
      do
      {
        *v29 = vrhaddq_u16(*(v28 - 4), *(v28 - 62));
        v29[1] = vrhaddq_u16(*(v28 - 3), *(v28 - 46));
        v29[2] = vrhaddq_u16(*(v28 - 2), *(v28 - 30));
        v29[3] = vrhaddq_u16(*(v28 - 1), *(v28 - 14));
        v29[4] = vrhaddq_u16(*v28, *(v28 + 2));
        v29[5] = vrhaddq_u16(*(v28 + 1), *(v28 + 18));
        v29[6] = vrhaddq_u16(*(v28 + 2), *(v28 + 34));
        v29[7] = vrhaddq_u16(*(v28 + 3), *(v28 + 50));
        v29 += 8;
        v28 = (v28 + 2 * v4);
        v31 = __CFADD__(v30++, 1);
      }

      while (!v31);
      v32 = v132[0];
      v33 = v133;
      v34 = 240;
      do
      {
        v35 = (&v131 + v34);
        v37 = v33[-1];
        v36 = *v33;
        v38 = v33[-6];
        v39 = v33[2];
        v40 = vrhaddq_u16(v33[-7], v33[1]);
        v35[-15] = vrhaddq_u16(v32, *v33);
        v35[-14] = v40;
        v41 = vrhaddq_u16(v38, v39);
        v42 = v33[-4];
        v43 = v33[4];
        v44 = vrhaddq_u16(v33[-5], v33[3]);
        v35[-13] = v41;
        v35[-12] = v44;
        v45 = vrhaddq_u16(v42, v43);
        v46 = v33[-2];
        v47 = v33[6];
        v48 = vrhaddq_u16(v33[-3], v33[5]);
        v35[-11] = v45;
        v35[-10] = v48;
        v49 = vrhaddq_u16(v37, v33[7]);
        v34 += 128;
        v33 += 8;
        v32 = v36;
        v35[-9] = vrhaddq_u16(v46, v47);
        v35[-8] = v49;
      }

      while (v34 != 4336);
    }

    else
    {
      if (!v6)
      {
        v13 = 0;
        v14 = v10 + 4;
        do
        {
          v15 = &v132[v13];
          *v15 = vrhaddq_u16(*(v14 - 4), *(v14 - 62));
          v15[1] = vrhaddq_u16(*(v14 - 3), *(v14 - 46));
          v15[2] = vrhaddq_u16(*(v14 - 2), *(v14 - 30));
          v15[3] = vrhaddq_u16(*(v14 - 1), *(v14 - 14));
          v15[4] = vrhaddq_u16(*v14, *(v14 + 2));
          v15[5] = vrhaddq_u16(*(v14 + 1), *(v14 + 18));
          v15[6] = vrhaddq_u16(*(v14 + 2), *(v14 + 34));
          v15[7] = vrhaddq_u16(*(v14 + 3), *(v14 + 50));
          v13 += 8;
          v14 = (v14 + 2 * v4);
        }

        while ((v13 * 16) != 4096);
        goto LABEL_29;
      }

      v60 = v10 + 4;
      v61 = v132;
      v62 = -33;
      do
      {
        *v61 = vrhaddq_u16(*(v60 - 4), *(v60 - 62));
        v61[1] = vrhaddq_u16(*(v60 - 3), *(v60 - 46));
        v61[2] = vrhaddq_u16(*(v60 - 2), *(v60 - 30));
        v61[3] = vrhaddq_u16(*(v60 - 1), *(v60 - 14));
        v61[4] = vrhaddq_u16(*v60, *(v60 + 2));
        v61[5] = vrhaddq_u16(*(v60 + 1), *(v60 + 18));
        v61[6] = vrhaddq_u16(*(v60 + 2), *(v60 + 34));
        v61[7] = vrhaddq_u16(*(v60 + 3), *(v60 + 50));
        v61 += 8;
        v60 = (v60 + 2 * v4);
        v31 = __CFADD__(v62++, 1);
      }

      while (!v31);
      v63 = vdupq_n_s16(8 - v6);
      v64 = vdupq_n_s16(v6);
      v65 = v132[0];
      v66 = v133;
      v67 = 240;
      do
      {
        v68 = (&v131 + v67);
        v69 = vmulq_s16(v65, v63);
        v70 = v66[-1];
        v65 = *v66;
        v71 = v66[-6];
        v72 = v66[2];
        v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66[-7], v63), v66[1], v64), 3uLL);
        v68[-15] = vrshrq_n_u16(vmlaq_s16(v69, *v66, v64), 3uLL);
        v68[-14] = v73;
        v74 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v63), v72, v64), 3uLL);
        v75 = v66[-4];
        v76 = v66[4];
        v77 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66[-5], v63), v66[3], v64), 3uLL);
        v68[-13] = v74;
        v68[-12] = v77;
        v78 = vmlaq_s16(vmulq_s16(v75, v63), v76, v64);
        v79 = v66[-2];
        v80 = v66[6];
        v81 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66[-3], v63), v66[5], v64), 3uLL);
        v68[-11] = vrshrq_n_u16(v78, 3uLL);
        v68[-10] = v81;
        v82 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v70, v63), v66[7], v64), 3uLL);
        v68[-9] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v79, v63), v80, v64), 3uLL);
        v68[-8] = v82;
        v67 += 128;
        v66 += 8;
      }

      while (v67 != 4336);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    if (v6 == 4)
    {
      v83 = vdupq_n_s16(8 - v5);
      v84 = vdupq_n_s16(v5);
      v85 = v10 + 4;
      v86 = v132;
      v87 = -33;
      do
      {
        *v86 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 - 4), v83), *(v85 - 62), v84), 3uLL);
        v86[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 - 3), v83), *(v85 - 46), v84), 3uLL);
        v86[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 - 2), v83), *(v85 - 30), v84), 3uLL);
        v86[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 - 1), v83), *(v85 - 14), v84), 3uLL);
        v86[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v85, v83), *(v85 + 2), v84), 3uLL);
        v86[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 + 1), v83), *(v85 + 18), v84), 3uLL);
        v86[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 + 2), v83), *(v85 + 34), v84), 3uLL);
        v86[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 + 3), v83), *(v85 + 50), v84), 3uLL);
        v86 += 8;
        v85 = (v85 + 2 * v4);
        v31 = __CFADD__(v87++, 1);
      }

      while (!v31);
      v88 = v132[0];
      v89 = v133;
      v90 = 240;
      do
      {
        v91 = (&v131 + v90);
        v93 = v89[-1];
        v92 = *v89;
        v94 = v89[-6];
        v95 = v89[2];
        v96 = vrhaddq_u16(v89[-7], v89[1]);
        v91[-15] = vrhaddq_u16(v88, *v89);
        v91[-14] = v96;
        v97 = vrhaddq_u16(v94, v95);
        v98 = v89[-4];
        v99 = v89[4];
        v100 = vrhaddq_u16(v89[-5], v89[3]);
        v91[-13] = v97;
        v91[-12] = v100;
        v101 = vrhaddq_u16(v98, v99);
        v102 = v89[-2];
        v103 = v89[6];
        v104 = vrhaddq_u16(v89[-3], v89[5]);
        v91[-11] = v101;
        v91[-10] = v104;
        v105 = vrhaddq_u16(v93, v89[7]);
        v90 += 128;
        v89 += 8;
        v88 = v92;
        v91[-9] = vrhaddq_u16(v102, v103);
        v91[-8] = v105;
      }

      while (v90 != 4336);
    }

    else
    {
      if (!v6)
      {
        v16 = 0;
        v17 = vdupq_n_s16(8 - v5);
        v18 = vdupq_n_s16(v5);
        v19 = v10 + 4;
        do
        {
          v20 = &v132[v16];
          *v20 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 - 4), v17), *(v19 - 62), v18), 3uLL);
          v20[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 - 3), v17), *(v19 - 46), v18), 3uLL);
          v20[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 - 2), v17), *(v19 - 30), v18), 3uLL);
          v20[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 - 1), v17), *(v19 - 14), v18), 3uLL);
          v20[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v19, v17), *(v19 + 2), v18), 3uLL);
          v20[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 + 1), v17), *(v19 + 18), v18), 3uLL);
          v20[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 + 2), v17), *(v19 + 34), v18), 3uLL);
          v20[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 + 3), v17), *(v19 + 50), v18), 3uLL);
          v16 += 8;
          v19 = (v19 + 2 * v4);
        }

        while ((v16 * 16) != 4096);
        goto LABEL_29;
      }

      v106 = vdupq_n_s16(8 - v5);
      v107 = vdupq_n_s16(v5);
      v108 = v10 + 4;
      v109 = v132;
      v110 = -33;
      do
      {
        *v109 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 - 4), v106), *(v108 - 62), v107), 3uLL);
        v109[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 - 3), v106), *(v108 - 46), v107), 3uLL);
        v109[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 - 2), v106), *(v108 - 30), v107), 3uLL);
        v109[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 - 1), v106), *(v108 - 14), v107), 3uLL);
        v109[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v108, v106), *(v108 + 2), v107), 3uLL);
        v109[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 + 1), v106), *(v108 + 18), v107), 3uLL);
        v109[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 + 2), v106), *(v108 + 34), v107), 3uLL);
        v109[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 + 3), v106), *(v108 + 50), v107), 3uLL);
        v109 += 8;
        v108 = (v108 + 2 * v4);
        v31 = __CFADD__(v110++, 1);
      }

      while (!v31);
      v111 = vdupq_n_s16(8 - v6);
      v112 = vdupq_n_s16(v6);
      v113 = v132[0];
      v114 = v133;
      v115 = 240;
      do
      {
        v116 = (&v131 + v115);
        v117 = vmulq_s16(v113, v111);
        v118 = v114[-1];
        v113 = *v114;
        v119 = v114[-6];
        v120 = v114[2];
        v121 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[-7], v111), v114[1], v112), 3uLL);
        v116[-15] = vrshrq_n_u16(vmlaq_s16(v117, *v114, v112), 3uLL);
        v116[-14] = v121;
        v122 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v119, v111), v120, v112), 3uLL);
        v123 = v114[-4];
        v124 = v114[4];
        v125 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[-5], v111), v114[3], v112), 3uLL);
        v116[-13] = v122;
        v116[-12] = v125;
        v126 = vmlaq_s16(vmulq_s16(v123, v111), v124, v112);
        v127 = v114[-2];
        v128 = v114[6];
        v129 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[-3], v111), v114[5], v112), 3uLL);
        v116[-11] = vrshrq_n_u16(v126, 3uLL);
        v116[-10] = v129;
        v130 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v118, v111), v114[7], v112), 3uLL);
        v116[-9] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v127, v111), v128, v112), 3uLL);
        v116[-8] = v130;
        v115 += 128;
        v114 += 8;
      }

      while (v115 != 4336);
    }

LABEL_47:
    v59 = &v131;
    return vpx_highbd_12_variance64x32_neon(v59 >> 1, 64, v7, v8, v9);
  }

  if (v6 == 4)
  {
    v21 = 0;
    v23 = *v10;
    v22 = (v10 + 4);
    v24 = v23;
    v25 = 2 * v4;
    do
    {
      v26 = &v132[v21];
      v27 = *(&v22[-4] + v25);
      *v26 = vrhaddq_u16(v24, v27);
      v26[1] = vrhaddq_u16(v22[-3], *(&v22[-3] + v25));
      v26[2] = vrhaddq_u16(v22[-2], *(&v22[-2] + v25));
      v26[3] = vrhaddq_u16(v22[-1], *(&v22[-1] + v25));
      v26[4] = vrhaddq_u16(*v22, *(v22 + 2 * v4));
      v26[5] = vrhaddq_u16(v22[1], *(&v22[1] + v25));
      v26[6] = vrhaddq_u16(v22[2], *(&v22[2] + v25));
      v26[7] = vrhaddq_u16(v22[3], *(&v22[3] + v25));
      v21 += 8;
      v22 = (v22 + v25);
      v24 = v27;
    }

    while ((v21 * 16) != 4096);
    goto LABEL_29;
  }

  if (v6)
  {
    v50 = 0;
    v51 = vdupq_n_s16(8 - v6);
    v52 = vdupq_n_s16(v6);
    v54 = *v10;
    v53 = (v10 + 4);
    v55 = v54;
    v56 = 2 * v4;
    do
    {
      v57 = &v132[v50];
      v58 = *(&v53[-4] + v56);
      *v57 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v55, v51), v58, v52), 3uLL);
      v57[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-3], v51), *(&v53[-3] + v56), v52), 3uLL);
      v57[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-2], v51), *(&v53[-2] + v56), v52), 3uLL);
      v57[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-1], v51), *(&v53[-1] + v56), v52), 3uLL);
      v57[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v51), *(v53 + 2 * v4), v52), 3uLL);
      v57[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[1], v51), *(&v53[1] + v56), v52), 3uLL);
      v57[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[2], v51), *(&v53[2] + v56), v52), 3uLL);
      v57[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[3], v51), *(&v53[3] + v56), v52), 3uLL);
      v50 += 8;
      v53 = (v53 + v56);
      v55 = v58;
    }

    while ((v50 * 16) != 4096);
LABEL_29:
    v59 = v132;
    return vpx_highbd_12_variance64x32_neon(v59 >> 1, 64, v7, v8, v9);
  }

  v11 = v3 & 0x7FFFFFFFFFFFFFFFLL;

  return vpx_highbd_12_variance64x32_neon(v11, v4, v7, v8, v9);
}

uint64_t vpx_highbd_12_sub_pixel_variance64x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v133[1025] = *MEMORY[0x277D85DE8];
  v10 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v28 = v10 + 4;
      v29 = v132;
      v30 = -65;
      do
      {
        *v29 = vrhaddq_u16(*(v28 - 4), *(v28 - 62));
        v29[1] = vrhaddq_u16(*(v28 - 3), *(v28 - 46));
        v29[2] = vrhaddq_u16(*(v28 - 2), *(v28 - 30));
        v29[3] = vrhaddq_u16(*(v28 - 1), *(v28 - 14));
        v29[4] = vrhaddq_u16(*v28, *(v28 + 2));
        v29[5] = vrhaddq_u16(*(v28 + 1), *(v28 + 18));
        v29[6] = vrhaddq_u16(*(v28 + 2), *(v28 + 34));
        v29[7] = vrhaddq_u16(*(v28 + 3), *(v28 + 50));
        v29 += 8;
        v28 = (v28 + 2 * v4);
        v31 = __CFADD__(v30++, 1);
      }

      while (!v31);
      v32 = v132[0];
      v33 = v133;
      v34 = 240;
      do
      {
        v35 = &v131[v34];
        v37 = v33[-1];
        v36 = *v33;
        v38 = v33[-6];
        v39 = v33[2];
        v40 = vrhaddq_u16(v33[-7], v33[1]);
        v35[-15] = vrhaddq_u16(v32, *v33);
        v35[-14] = v40;
        v41 = vrhaddq_u16(v38, v39);
        v42 = v33[-4];
        v43 = v33[4];
        v44 = vrhaddq_u16(v33[-5], v33[3]);
        v35[-13] = v41;
        v35[-12] = v44;
        v45 = vrhaddq_u16(v42, v43);
        v46 = v33[-2];
        v47 = v33[6];
        v48 = vrhaddq_u16(v33[-3], v33[5]);
        v35[-11] = v45;
        v35[-10] = v48;
        v49 = vrhaddq_u16(v37, v33[7]);
        v34 += 128;
        v33 += 8;
        v32 = v36;
        v35[-9] = vrhaddq_u16(v46, v47);
        v35[-8] = v49;
      }

      while (v34 != 8432);
    }

    else
    {
      if (!v6)
      {
        v13 = 0;
        v14 = v10 + 4;
        do
        {
          v15 = &v132[v13];
          *v15 = vrhaddq_u16(*(v14 - 4), *(v14 - 62));
          v15[1] = vrhaddq_u16(*(v14 - 3), *(v14 - 46));
          v15[2] = vrhaddq_u16(*(v14 - 2), *(v14 - 30));
          v15[3] = vrhaddq_u16(*(v14 - 1), *(v14 - 14));
          v15[4] = vrhaddq_u16(*v14, *(v14 + 2));
          v15[5] = vrhaddq_u16(*(v14 + 1), *(v14 + 18));
          v15[6] = vrhaddq_u16(*(v14 + 2), *(v14 + 34));
          v15[7] = vrhaddq_u16(*(v14 + 3), *(v14 + 50));
          v13 += 8;
          v14 = (v14 + 2 * v4);
        }

        while ((v13 * 16) != 0x2000);
        goto LABEL_29;
      }

      v60 = v10 + 4;
      v61 = v132;
      v62 = -65;
      do
      {
        *v61 = vrhaddq_u16(*(v60 - 4), *(v60 - 62));
        v61[1] = vrhaddq_u16(*(v60 - 3), *(v60 - 46));
        v61[2] = vrhaddq_u16(*(v60 - 2), *(v60 - 30));
        v61[3] = vrhaddq_u16(*(v60 - 1), *(v60 - 14));
        v61[4] = vrhaddq_u16(*v60, *(v60 + 2));
        v61[5] = vrhaddq_u16(*(v60 + 1), *(v60 + 18));
        v61[6] = vrhaddq_u16(*(v60 + 2), *(v60 + 34));
        v61[7] = vrhaddq_u16(*(v60 + 3), *(v60 + 50));
        v61 += 8;
        v60 = (v60 + 2 * v4);
        v31 = __CFADD__(v62++, 1);
      }

      while (!v31);
      v63 = vdupq_n_s16(8 - v6);
      v64 = vdupq_n_s16(v6);
      v65 = v132[0];
      v66 = v133;
      v67 = 240;
      do
      {
        v68 = &v131[v67];
        v69 = vmulq_s16(v65, v63);
        v70 = v66[-1];
        v65 = *v66;
        v71 = v66[-6];
        v72 = v66[2];
        v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66[-7], v63), v66[1], v64), 3uLL);
        v68[-15] = vrshrq_n_u16(vmlaq_s16(v69, *v66, v64), 3uLL);
        v68[-14] = v73;
        v74 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v63), v72, v64), 3uLL);
        v75 = v66[-4];
        v76 = v66[4];
        v77 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66[-5], v63), v66[3], v64), 3uLL);
        v68[-13] = v74;
        v68[-12] = v77;
        v78 = vmlaq_s16(vmulq_s16(v75, v63), v76, v64);
        v79 = v66[-2];
        v80 = v66[6];
        v81 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66[-3], v63), v66[5], v64), 3uLL);
        v68[-11] = vrshrq_n_u16(v78, 3uLL);
        v68[-10] = v81;
        v82 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v70, v63), v66[7], v64), 3uLL);
        v68[-9] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v79, v63), v80, v64), 3uLL);
        v68[-8] = v82;
        v67 += 128;
        v66 += 8;
      }

      while (v67 != 8432);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    if (v6 == 4)
    {
      v83 = vdupq_n_s16(8 - v5);
      v84 = vdupq_n_s16(v5);
      v85 = v10 + 4;
      v86 = v132;
      v87 = -65;
      do
      {
        *v86 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 - 4), v83), *(v85 - 62), v84), 3uLL);
        v86[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 - 3), v83), *(v85 - 46), v84), 3uLL);
        v86[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 - 2), v83), *(v85 - 30), v84), 3uLL);
        v86[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 - 1), v83), *(v85 - 14), v84), 3uLL);
        v86[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v85, v83), *(v85 + 2), v84), 3uLL);
        v86[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 + 1), v83), *(v85 + 18), v84), 3uLL);
        v86[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 + 2), v83), *(v85 + 34), v84), 3uLL);
        v86[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v85 + 3), v83), *(v85 + 50), v84), 3uLL);
        v86 += 8;
        v85 = (v85 + 2 * v4);
        v31 = __CFADD__(v87++, 1);
      }

      while (!v31);
      v88 = v132[0];
      v89 = v133;
      v90 = 240;
      do
      {
        v91 = &v131[v90];
        v93 = v89[-1];
        v92 = *v89;
        v94 = v89[-6];
        v95 = v89[2];
        v96 = vrhaddq_u16(v89[-7], v89[1]);
        v91[-15] = vrhaddq_u16(v88, *v89);
        v91[-14] = v96;
        v97 = vrhaddq_u16(v94, v95);
        v98 = v89[-4];
        v99 = v89[4];
        v100 = vrhaddq_u16(v89[-5], v89[3]);
        v91[-13] = v97;
        v91[-12] = v100;
        v101 = vrhaddq_u16(v98, v99);
        v102 = v89[-2];
        v103 = v89[6];
        v104 = vrhaddq_u16(v89[-3], v89[5]);
        v91[-11] = v101;
        v91[-10] = v104;
        v105 = vrhaddq_u16(v93, v89[7]);
        v90 += 128;
        v89 += 8;
        v88 = v92;
        v91[-9] = vrhaddq_u16(v102, v103);
        v91[-8] = v105;
      }

      while (v90 != 8432);
    }

    else
    {
      if (!v6)
      {
        v16 = 0;
        v17 = vdupq_n_s16(8 - v5);
        v18 = vdupq_n_s16(v5);
        v19 = v10 + 4;
        do
        {
          v20 = &v132[v16];
          *v20 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 - 4), v17), *(v19 - 62), v18), 3uLL);
          v20[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 - 3), v17), *(v19 - 46), v18), 3uLL);
          v20[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 - 2), v17), *(v19 - 30), v18), 3uLL);
          v20[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 - 1), v17), *(v19 - 14), v18), 3uLL);
          v20[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v19, v17), *(v19 + 2), v18), 3uLL);
          v20[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 + 1), v17), *(v19 + 18), v18), 3uLL);
          v20[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 + 2), v17), *(v19 + 34), v18), 3uLL);
          v20[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v19 + 3), v17), *(v19 + 50), v18), 3uLL);
          v16 += 8;
          v19 = (v19 + 2 * v4);
        }

        while ((v16 * 16) != 0x2000);
        goto LABEL_29;
      }

      v106 = vdupq_n_s16(8 - v5);
      v107 = vdupq_n_s16(v5);
      v108 = v10 + 4;
      v109 = v132;
      v110 = -65;
      do
      {
        *v109 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 - 4), v106), *(v108 - 62), v107), 3uLL);
        v109[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 - 3), v106), *(v108 - 46), v107), 3uLL);
        v109[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 - 2), v106), *(v108 - 30), v107), 3uLL);
        v109[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 - 1), v106), *(v108 - 14), v107), 3uLL);
        v109[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v108, v106), *(v108 + 2), v107), 3uLL);
        v109[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 + 1), v106), *(v108 + 18), v107), 3uLL);
        v109[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 + 2), v106), *(v108 + 34), v107), 3uLL);
        v109[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 + 3), v106), *(v108 + 50), v107), 3uLL);
        v109 += 8;
        v108 = (v108 + 2 * v4);
        v31 = __CFADD__(v110++, 1);
      }

      while (!v31);
      v111 = vdupq_n_s16(8 - v6);
      v112 = vdupq_n_s16(v6);
      v113 = v132[0];
      v114 = v133;
      v115 = 240;
      do
      {
        v116 = &v131[v115];
        v117 = vmulq_s16(v113, v111);
        v118 = v114[-1];
        v113 = *v114;
        v119 = v114[-6];
        v120 = v114[2];
        v121 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[-7], v111), v114[1], v112), 3uLL);
        v116[-15] = vrshrq_n_u16(vmlaq_s16(v117, *v114, v112), 3uLL);
        v116[-14] = v121;
        v122 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v119, v111), v120, v112), 3uLL);
        v123 = v114[-4];
        v124 = v114[4];
        v125 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[-5], v111), v114[3], v112), 3uLL);
        v116[-13] = v122;
        v116[-12] = v125;
        v126 = vmlaq_s16(vmulq_s16(v123, v111), v124, v112);
        v127 = v114[-2];
        v128 = v114[6];
        v129 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[-3], v111), v114[5], v112), 3uLL);
        v116[-11] = vrshrq_n_u16(v126, 3uLL);
        v116[-10] = v129;
        v130 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v118, v111), v114[7], v112), 3uLL);
        v116[-9] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v127, v111), v128, v112), 3uLL);
        v116[-8] = v130;
        v115 += 128;
        v114 += 8;
      }

      while (v115 != 8432);
    }

LABEL_47:
    v59 = v131;
    return vpx_highbd_12_variance64x64_neon(v59 >> 1, 64, v7, v8, v9);
  }

  if (v6 == 4)
  {
    v21 = 0;
    v23 = *v10;
    v22 = (v10 + 4);
    v24 = v23;
    v25 = 2 * v4;
    do
    {
      v26 = &v132[v21];
      v27 = *(&v22[-4] + v25);
      *v26 = vrhaddq_u16(v24, v27);
      v26[1] = vrhaddq_u16(v22[-3], *(&v22[-3] + v25));
      v26[2] = vrhaddq_u16(v22[-2], *(&v22[-2] + v25));
      v26[3] = vrhaddq_u16(v22[-1], *(&v22[-1] + v25));
      v26[4] = vrhaddq_u16(*v22, *(v22 + 2 * v4));
      v26[5] = vrhaddq_u16(v22[1], *(&v22[1] + v25));
      v26[6] = vrhaddq_u16(v22[2], *(&v22[2] + v25));
      v26[7] = vrhaddq_u16(v22[3], *(&v22[3] + v25));
      v21 += 8;
      v22 = (v22 + v25);
      v24 = v27;
    }

    while ((v21 * 16) != 0x2000);
    goto LABEL_29;
  }

  if (v6)
  {
    v50 = 0;
    v51 = vdupq_n_s16(8 - v6);
    v52 = vdupq_n_s16(v6);
    v54 = *v10;
    v53 = (v10 + 4);
    v55 = v54;
    v56 = 2 * v4;
    do
    {
      v57 = &v132[v50];
      v58 = *(&v53[-4] + v56);
      *v57 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v55, v51), v58, v52), 3uLL);
      v57[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-3], v51), *(&v53[-3] + v56), v52), 3uLL);
      v57[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-2], v51), *(&v53[-2] + v56), v52), 3uLL);
      v57[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-1], v51), *(&v53[-1] + v56), v52), 3uLL);
      v57[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v51), *(v53 + 2 * v4), v52), 3uLL);
      v57[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[1], v51), *(&v53[1] + v56), v52), 3uLL);
      v57[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[2], v51), *(&v53[2] + v56), v52), 3uLL);
      v57[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[3], v51), *(&v53[3] + v56), v52), 3uLL);
      v50 += 8;
      v53 = (v53 + v56);
      v55 = v58;
    }

    while ((v50 * 16) != 0x2000);
LABEL_29:
    v59 = v132;
    return vpx_highbd_12_variance64x64_neon(v59 >> 1, 64, v7, v8, v9);
  }

  v11 = v3 & 0x7FFFFFFFFFFFFFFFLL;

  return vpx_highbd_12_variance64x64_neon(v11, v4, v7, v8, v9);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance4x4_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = vrshr_n_u16(vmla_s16(vmul_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshr_n_u16(vmla_s16(vmul_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vrshr_n_u16(vmla_s16(vmul_s16(*v14, v8), *(v14 + 2), v9), 3uLL);
  v16 = v14 + v11;
  v17 = vrshr_n_u16(vmla_s16(vmul_s16(*v16, v8), *(v16 + 2), v9), 3uLL);
  v18 = vrshr_n_u16(vmla_s16(vmul_s16(*(v16 + v11), v8), *(v16 + v11 + 2), v9), 3uLL);
  v19 = vdup_n_s16(8 - a4);
  v20 = vdup_n_s16(a4);
  *v21.i8 = vrshr_n_u16(vmla_s16(vmul_s16(v10, v19), v13, v20), 3uLL);
  v22.i64[0] = *(2 * a8);
  v23 = vrshr_n_u16(vmla_s16(vmul_s16(v13, v19), v15, v20), 3uLL);
  *v24.i8 = vrshr_n_u16(vmla_s16(vmul_s16(v15, v19), v17, v20), 3uLL);
  v25.i64[0] = *(2 * a8 + 0x10);
  v26 = vrshr_n_u16(vmla_s16(vmul_s16(v17, v19), v18, v20), 3uLL);
  v27 = 2 * a6;
  v21.u64[1] = v23;
  v22.i64[1] = *(2 * a8 + 8);
  v28 = vrhaddq_u16(v21, v22);
  v21.i64[0] = *(2 * a5);
  v21.i64[1] = *(2 * a5 + v27);
  v29 = vsubq_s16(v28, v21);
  v30 = (2 * a5 + 4 * a6);
  v24.u64[1] = v26;
  v25.i64[1] = *(2 * a8 + 0x18);
  v31.i64[0] = *v30;
  v31.i64[1] = *(v30 + v27);
  v32 = vsubq_s16(vrhaddq_u16(v24, v25), v31);
  LODWORD(v30) = vaddlvq_s16(vaddq_s16(v32, v29));
  v32.i32[0] = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v29.i8, *v29.i8), v29, v29), *v32.i8, *v32.i8), v32, v32));
  *a7 = v32.i32[0];
  return v32.i32[0] - ((v30 * v30) >> 4);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance4x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = vrshr_n_u16(vmla_s16(vmul_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshr_n_u16(vmla_s16(vmul_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vmla_s16(vmul_s16(*v14, v8), *(v14 + 2), v9);
  v16 = v14 + v11;
  v17 = vmla_s16(vmul_s16(*v16, v8), *(v16 + 2), v9);
  v18 = v16 + v11;
  v19 = vmla_s16(vmul_s16(*v18, v8), *(v18 + 2), v9);
  v20 = v18 + v11;
  v21 = vmla_s16(vmul_s16(*v20, v8), *(v20 + 2), v9);
  v22 = v20 + v11;
  v23 = vmla_s16(vmul_s16(*v22, v8), *(v22 + 2), v9);
  v24 = v22 + v11;
  v25 = vmla_s16(vmul_s16(*v24, v8), *(v24 + 2), v9);
  v26 = vmla_s16(vmul_s16(*(v24 + v11), v8), *(v24 + v11 + 2), v9);
  v27 = vdup_n_s16(8 - a4);
  v28 = vdup_n_s16(a4);
  v29 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v10, v27), v13, v28), 3uLL), *(2 * a8));
  v30 = vrshr_n_u16(v15, 3uLL);
  v31 = vrshr_n_u16(v17, 3uLL);
  v32 = vrshr_n_u16(v19, 3uLL);
  v33 = vrshr_n_u16(v21, 3uLL);
  v34 = vrshr_n_u16(v23, 3uLL);
  v35 = vrshr_n_u16(v25, 3uLL);
  v36 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v13, v27), v30, v28), 3uLL), *(2 * a8 + 8));
  v42[0] = v29;
  v42[1] = v36;
  v37 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v31, v27), v32, v28), 3uLL), *(2 * a8 + 0x18));
  v42[2] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v30, v27), v31, v28), 3uLL), *(2 * a8 + 0x10));
  v42[3] = v37;
  v38 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v33, v27), v34, v28), 3uLL), *(2 * a8 + 0x28));
  v42[4] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v32, v27), v33, v28), 3uLL), *(2 * a8 + 0x20));
  v42[5] = v38;
  v39 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v34, v27), v35, v28), 3uLL), *(2 * a8 + 0x30));
  v40 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v35, v27), vrshr_n_u16(v26, 3uLL), v28), 3uLL), *(2 * a8 + 0x38));
  v42[6] = v39;
  v42[7] = v40;
  return vpx_highbd_8_variance4x8_neon(v42 >> 1, 4, a5, a6, a7);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance8x4_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v14, v8), *(v14 + 2), v9), 3uLL);
  v16 = v14 + v11;
  v17 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v16, v8), *(v16 + 2), v9), 3uLL);
  v18 = vmlaq_s16(vmulq_s16(*(v16 + v11), v8), *(v16 + v11 + 2), v9);
  v19 = vdupq_n_s16(8 - a4);
  v20 = vdupq_n_s16(a4);
  v21 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v10, v19), v13, v20), 3uLL), *(2 * a8));
  v22 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v13, v19), v15, v20), 3uLL), *(2 * a8 + 0x10));
  v23 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v19), v17, v20), 3uLL), *(2 * a8 + 0x20));
  v24 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v19), vrshrq_n_u16(v18, 3uLL), v20), 3uLL), *(2 * a8 + 0x30));
  v25 = vsubq_s16(v21, *(2 * a5));
  v26 = 2 * a6;
  v27 = (2 * a5 + v26);
  v28 = vsubq_s16(v22, *v27);
  v29 = (v27 + v26);
  v30 = vsubq_s16(v23, *v29);
  v31 = vsubq_s16(v24, *(v29 + v26));
  v17.i32[0] = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v28), v25), v30), v31));
  v31.i32[0] = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v25.i8, *v25.i8), v25, v25), *v28.i8, *v28.i8), v28, v28), *v30.i8, *v30.i8), v30, v30), *v31.i8, *v31.i8), v31, v31));
  *a7 = v31.i32[0];
  return v31.i32[0] - ((v17.i32[0] * v17.i32[0]) >> 5);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance8x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vmlaq_s16(vmulq_s16(*v14, v8), *(v14 + 2), v9);
  v16 = v14 + v11;
  v17 = vmlaq_s16(vmulq_s16(*v16, v8), *(v16 + 2), v9);
  v18 = v16 + v11;
  v19 = vmlaq_s16(vmulq_s16(*v18, v8), *(v18 + 2), v9);
  v20 = v18 + v11;
  v21 = vmlaq_s16(vmulq_s16(*v20, v8), *(v20 + 2), v9);
  v22 = v20 + v11;
  v23 = vmlaq_s16(vmulq_s16(*v22, v8), *(v22 + 2), v9);
  v24 = v22 + v11;
  v25 = vmlaq_s16(vmulq_s16(*v24, v8), *(v24 + 2), v9);
  v26 = vmlaq_s16(vmulq_s16(*(v24 + v11), v8), *(v24 + v11 + 2), v9);
  v27 = vdupq_n_s16(8 - a4);
  v28 = vdupq_n_s16(a4);
  v29 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v10, v27), v13, v28), 3uLL), *(2 * a8));
  v30 = vrshrq_n_u16(v15, 3uLL);
  v31 = vrshrq_n_u16(v17, 3uLL);
  v32 = vrshrq_n_u16(v19, 3uLL);
  v33 = vrshrq_n_u16(v21, 3uLL);
  v34 = vrshrq_n_u16(v23, 3uLL);
  v35 = vrshrq_n_u16(v25, 3uLL);
  v36 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v13, v27), v30, v28), 3uLL), *(2 * a8 + 0x10));
  v42[0] = v29;
  v42[1] = v36;
  v37 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v31, v27), v32, v28), 3uLL), *(2 * a8 + 0x30));
  v42[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v30, v27), v31, v28), 3uLL), *(2 * a8 + 0x20));
  v42[3] = v37;
  v38 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v33, v27), v34, v28), 3uLL), *(2 * a8 + 0x50));
  v42[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v32, v27), v33, v28), 3uLL), *(2 * a8 + 0x40));
  v42[5] = v38;
  v39 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v34, v27), v35, v28), 3uLL), *(2 * a8 + 0x60));
  v40 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v35, v27), vrshrq_n_u16(v26, 3uLL), v28), 3uLL), *(2 * a8 + 0x70));
  v42[6] = v39;
  v42[7] = v40;
  return vpx_highbd_8_variance8x8_neon(v42 >> 1, 8, a5, a6, a7);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance8x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v14, v8), *(v14 + 2), v9), 3uLL);
  v16 = v14 + v11;
  v17 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v16, v8), *(v16 + 2), v9), 3uLL);
  v18 = v16 + v11;
  v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v18, v8), *(v18 + 2), v9), 3uLL);
  v20 = v18 + v11;
  v21 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v20, v8), *(v20 + 2), v9), 3uLL);
  v22 = v20 + v11;
  v23 = vmlaq_s16(vmulq_s16(*v22, v8), *(v22 + 2), v9);
  v24 = v22 + v11;
  v25 = vmlaq_s16(vmulq_s16(*v24, v8), *(v24 + 2), v9);
  v26 = v24 + v11;
  v27 = vmlaq_s16(vmulq_s16(*v26, v8), *(v26 + 2), v9);
  v28 = v26 + v11;
  v29 = vmlaq_s16(vmulq_s16(*v28, v8), *(v28 + 2), v9);
  v30 = v28 + v11;
  v31 = vmlaq_s16(vmulq_s16(*v30, v8), *(v30 + 2), v9);
  v32 = v30 + v11;
  v33 = vmlaq_s16(vmulq_s16(*v32, v8), *(v32 + 2), v9);
  v34 = v32 + v11;
  v35 = vmlaq_s16(vmulq_s16(*v34, v8), *(v34 + 2), v9);
  v36 = v34 + v11;
  v37 = vmlaq_s16(vmulq_s16(*v36, v8), *(v36 + 2), v9);
  v38 = v36 + v11;
  v39 = vmlaq_s16(vmulq_s16(*v38, v8), *(v38 + 2), v9);
  v40 = v38 + v11;
  v41 = vmlaq_s16(vmulq_s16(*v40, v8), *(v40 + 2), v9);
  v42 = vmlaq_s16(vmulq_s16(*(v40 + v11), v8), *(v40 + v11 + 2), v9);
  v43 = vdupq_n_s16(8 - a4);
  v44 = vdupq_n_s16(a4);
  v45 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v10, v43), v13, v44), 3uLL), *(2 * a8));
  v46 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v13, v43), v15, v44), 3uLL), *(2 * a8 + 0x10));
  v47 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v43), v17, v44), 3uLL), *(2 * a8 + 0x20));
  v48 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v43), v19, v44), 3uLL), *(2 * a8 + 0x30));
  v49 = *(2 * a8 + 0x50);
  v50 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v19, v43), v21, v44), 3uLL), *(2 * a8 + 0x40));
  v51 = vrshrq_n_u16(v23, 3uLL);
  v52 = vrshrq_n_u16(v25, 3uLL);
  v53 = vrshrq_n_u16(v27, 3uLL);
  v54 = vrshrq_n_u16(v29, 3uLL);
  v55 = vrshrq_n_u16(v31, 3uLL);
  v56 = vrshrq_n_u16(v33, 3uLL);
  v57 = vrshrq_n_u16(v35, 3uLL);
  v58 = vrshrq_n_u16(v37, 3uLL);
  v59 = vrshrq_n_u16(v39, 3uLL);
  v60 = vrshrq_n_u16(v41, 3uLL);
  v69[0] = v45;
  v69[1] = v46;
  v69[2] = v47;
  v69[3] = v48;
  v69[4] = v50;
  v69[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v43), v51, v44), 3uLL), v49);
  v61 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v52, v43), v53, v44), 3uLL), *(2 * a8 + 0x70));
  v69[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v51, v43), v52, v44), 3uLL), *(2 * a8 + 0x60));
  v69[7] = v61;
  v62 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v54, v43), v55, v44), 3uLL), *(2 * a8 + 0x90));
  v69[8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53, v43), v54, v44), 3uLL), *(2 * a8 + 0x80));
  v69[9] = v62;
  v63 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v56, v43), v57, v44), 3uLL), *(2 * a8 + 0xB0));
  v69[10] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v55, v43), v56, v44), 3uLL), *(2 * a8 + 0xA0));
  v69[11] = v63;
  v64 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v57, v43), v58, v44), 3uLL), *(2 * a8 + 0xC0));
  v65 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v58, v43), v59, v44), 3uLL), *(2 * a8 + 0xD0));
  v69[12] = v64;
  v69[13] = v65;
  v66 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v59, v43), v60, v44), 3uLL), *(2 * a8 + 0xE0));
  v67 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60, v43), vrshrq_n_u16(v42, 3uLL), v44), 3uLL), *(2 * a8 + 0xF0));
  v69[14] = v66;
  v69[15] = v67;
  return vpx_highbd_8_variance8x16_neon(v69 >> 1, 8, a5, a6, a7);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance16x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v244 = *MEMORY[0x277D85DE8];
  v8 = (2 * a1);
  if (a3 != 4)
  {
    if (!a3)
    {
      v9 = (2 * a8);
      if (a4 == 4)
      {
        v61 = 2 * a2;
        v62 = *(v8 + v61);
        v63 = *(2 * a8 + 0x10);
        v226 = vrhaddq_u16(vrhaddq_u16(*v8, v62), *v9);
        v64 = *(v8 + v61 + 16);
        v227 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), v64), v63);
        v65 = (v8 + v61 + v61);
        v66 = *v65;
        v67 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(vrhaddq_u16(v62, *v65), *(2 * a8 + 0x20));
        v68 = v65[1];
        v229 = vrhaddq_u16(vrhaddq_u16(v64, v68), v67);
        v69 = (v65 + v61);
        v70 = *v69;
        v71 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(vrhaddq_u16(v66, *v69), *(2 * a8 + 0x40));
        v72 = v69[1];
        v231 = vrhaddq_u16(vrhaddq_u16(v68, v72), v71);
        v73 = (v69 + v61);
        v74 = *v73;
        v75 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(vrhaddq_u16(v70, *v73), *(2 * a8 + 0x60));
        v76 = v73[1];
        v233 = vrhaddq_u16(vrhaddq_u16(v72, v76), v75);
        v77 = (v73 + v61);
        v78 = *v77;
        v79 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(vrhaddq_u16(v74, *v77), *(2 * a8 + 0x80));
        v80 = v77[1];
        v235 = vrhaddq_u16(vrhaddq_u16(v76, v80), v79);
        v81 = (v77 + v61);
        v82 = *v81;
        v83 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(vrhaddq_u16(v78, *v81), *(2 * a8 + 0xA0));
        v84 = v81[1];
        v237 = vrhaddq_u16(vrhaddq_u16(v80, v84), v83);
        v85 = (v81 + v61);
        v86 = *v85;
        v87 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(vrhaddq_u16(v82, *v85), *(2 * a8 + 0xC0));
        v88 = v85[1];
        v239 = vrhaddq_u16(vrhaddq_u16(v84, v88), v87);
        v89 = (v85 + v61);
        v90 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(vrhaddq_u16(v86, *v89), *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(vrhaddq_u16(v88, v89[1]), v90);
      }

      else if (a4)
      {
        v111 = vdupq_n_s16(8 - a4);
        v112 = vdupq_n_s16(a4);
        v113 = 2 * a2;
        v114 = *(v8 + v113);
        v115 = *(2 * a8 + 0x10);
        v226 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v111), v114, v112), 3uLL), *v9);
        v116 = *(&v8[1] + v113);
        v227 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v111), v116, v112), 3uLL), v115);
        v117 = &v8->i8[v113 + v113];
        v118 = *v117;
        v119 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114, v111), *v117, v112), 3uLL), *(2 * a8 + 0x20));
        v120 = v117[1];
        v229 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v116, v111), v120, v112), 3uLL), v119);
        v121 = (v117 + v113);
        v122 = *v121;
        v123 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v118, v111), *v121, v112), 3uLL), *(2 * a8 + 0x40));
        v124 = v121[1];
        v231 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v120, v111), v124, v112), 3uLL), v123);
        v125 = (v121 + v113);
        v126 = *v125;
        v127 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122, v111), *v125, v112), 3uLL), *(2 * a8 + 0x60));
        v128 = v125[1];
        v233 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v124, v111), v128, v112), 3uLL), v127);
        v129 = (v125 + v113);
        v130 = *v129;
        v131 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v126, v111), *v129, v112), 3uLL), *(2 * a8 + 0x80));
        v132 = v129[1];
        v235 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v128, v111), v132, v112), 3uLL), v131);
        v133 = (v129 + v113);
        v134 = *v133;
        v135 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v130, v111), *v133, v112), 3uLL), *(2 * a8 + 0xA0));
        v136 = v133[1];
        v237 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v132, v111), v136, v112), 3uLL), v135);
        v137 = (v133 + v113);
        v138 = *v137;
        v139 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v134, v111), *v137, v112), 3uLL), *(2 * a8 + 0xC0));
        v140 = v137[1];
        v239 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v136, v111), v140, v112), 3uLL), v139);
        v141 = (v137 + v113);
        v142 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v138, v111), *v141, v112), 3uLL), *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v140, v111), v141[1], v112), 3uLL), v142);
      }

      else
      {
        v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
        v226 = vrhaddq_u16(*v8, *v9);
        v227 = v10;
        v11 = 2 * a2;
        v12 = (v8 + v11);
        v13 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(*v12, *(2 * a8 + 0x20));
        v229 = vrhaddq_u16(v12[1], v13);
        v14 = (v12 + v11);
        v15 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(*v14, *(2 * a8 + 0x40));
        v231 = vrhaddq_u16(v14[1], v15);
        v16 = (v14 + v11);
        v17 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(*v16, *(2 * a8 + 0x60));
        v233 = vrhaddq_u16(v16[1], v17);
        v18 = (v16 + v11);
        v19 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(*v18, *(2 * a8 + 0x80));
        v235 = vrhaddq_u16(v18[1], v19);
        v20 = (v18 + v11);
        v21 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(*v20, *(2 * a8 + 0xA0));
        v237 = vrhaddq_u16(v20[1], v21);
        v22 = (v20 + v11);
        v23 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(*v22, *(2 * a8 + 0xC0));
        v239 = vrhaddq_u16(v22[1], v23);
        v24 = (v22 + v11);
        v25 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(*v24, *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(v24[1], v25);
      }

      goto LABEL_15;
    }

    if (a4 == 4)
    {
      v166 = vdupq_n_s16(8 - a3);
      v167 = vdupq_n_s16(a3);
      v168 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v166), *(2 * a1 + 0x12), v167), 3uLL);
      v226 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v166), *(2 * a1 + 2), v167), 3uLL);
      v227 = v168;
      v169 = 2 * a2;
      v170 = &v8->i8[v169];
      v228 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v170, v166), *(v170 + 2), v167), 3uLL);
      v229 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v170 + 1), v166), *(v170 + 18), v167), 3uLL);
      v171 = &v170[v169];
      v230 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v171, v166), *(v171 + 2), v167), 3uLL);
      v231 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v171 + 1), v166), *(v171 + 18), v167), 3uLL);
      v172 = &v171[v169];
      v232 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v172, v166), *(v172 + 2), v167), 3uLL);
      v233 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v172 + 1), v166), *(v172 + 18), v167), 3uLL);
      v173 = &v172[v169];
      v234 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v173, v166), *(v173 + 2), v167), 3uLL);
      v235 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v173 + 1), v166), *(v173 + 18), v167), 3uLL);
      v174 = &v173[v169];
      v236 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v174, v166), *(v174 + 2), v167), 3uLL);
      v237 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v174 + 1), v166), *(v174 + 18), v167), 3uLL);
      v175 = &v174[v169];
      v238 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v175, v166), *(v175 + 2), v167), 3uLL);
      v239 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v175 + 1), v166), *(v175 + 18), v167), 3uLL);
      v176 = &v175[v169];
      v240 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v176, v166), *(v176 + 2), v167), 3uLL);
      v241 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v176 + 1), v166), *(v176 + 18), v167), 3uLL);
      v177 = &v176[v169];
      v242 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v177, v166), *(v177 + 2), v167), 3uLL);
      v243 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v177 + 1), v166), *(v177 + 18), v167), 3uLL);
      v178 = vrhaddq_u16(vrhaddq_u16(v168, v229), *(2 * a8 + 0x10));
      v210 = vrhaddq_u16(vrhaddq_u16(v226, v228), *(2 * a8));
      v211 = v178;
      v179 = vrhaddq_u16(vrhaddq_u16(v229, v231), *(2 * a8 + 0x30));
      v212 = vrhaddq_u16(vrhaddq_u16(v228, v230), *(2 * a8 + 0x20));
      v213 = v179;
      v180 = vrhaddq_u16(vrhaddq_u16(v231, v233), *(2 * a8 + 0x50));
      v214 = vrhaddq_u16(vrhaddq_u16(v230, v232), *(2 * a8 + 0x40));
      v215 = v180;
      v181 = vrhaddq_u16(vrhaddq_u16(v233, v235), *(2 * a8 + 0x70));
      v216 = vrhaddq_u16(vrhaddq_u16(v232, v234), *(2 * a8 + 0x60));
      v217 = v181;
      v182 = vrhaddq_u16(vrhaddq_u16(v235, v237), *(2 * a8 + 0x90));
      v218 = vrhaddq_u16(vrhaddq_u16(v234, v236), *(2 * a8 + 0x80));
      v219 = v182;
      v183 = vrhaddq_u16(vrhaddq_u16(v237, v239), *(2 * a8 + 0xB0));
      v220 = vrhaddq_u16(vrhaddq_u16(v236, v238), *(2 * a8 + 0xA0));
      v221 = v183;
      v184 = vrhaddq_u16(vrhaddq_u16(v239, v241), *(2 * a8 + 0xD0));
      v222 = vrhaddq_u16(vrhaddq_u16(v238, v240), *(2 * a8 + 0xC0));
      v223 = v184;
      v108 = *(2 * a8 + 0xF0);
      v109 = vrhaddq_u16(vrhaddq_u16(v240, v242), *(2 * a8 + 0xE0));
      v110 = vrhaddq_u16(v241, v243);
    }

    else
    {
      if (!a4)
      {
        v43 = vdupq_n_s16(8 - a3);
        v44 = vdupq_n_s16(a3);
        v45 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v43), *(2 * a1 + 0x12), v44), 3uLL), *(2 * a8 + 0x10));
        v226 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v43), *(2 * a1 + 2), v44), 3uLL), *(2 * a8));
        v227 = v45;
        v46 = 2 * a2;
        v47 = &v8->i8[v46];
        v48 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v47, v43), *(v47 + 2), v44), 3uLL), *(2 * a8 + 0x20));
        v229 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v47 + 1), v43), *(v47 + 18), v44), 3uLL), v48);
        v49 = &v47[v46];
        v50 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v49, v43), *(v49 + 2), v44), 3uLL), *(2 * a8 + 0x40));
        v231 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v49 + 1), v43), *(v49 + 18), v44), 3uLL), v50);
        v51 = &v49[v46];
        v52 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v51, v43), *(v51 + 2), v44), 3uLL), *(2 * a8 + 0x60));
        v233 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v51 + 1), v43), *(v51 + 18), v44), 3uLL), v52);
        v53 = &v51[v46];
        v54 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v43), *(v53 + 2), v44), 3uLL), *(2 * a8 + 0x80));
        v235 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v53 + 1), v43), *(v53 + 18), v44), 3uLL), v54);
        v55 = &v53[v46];
        v56 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v55, v43), *(v55 + 2), v44), 3uLL), *(2 * a8 + 0xA0));
        v237 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v55 + 1), v43), *(v55 + 18), v44), 3uLL), v56);
        v57 = &v55[v46];
        v58 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v57, v43), *(v57 + 2), v44), 3uLL), *(2 * a8 + 0xC0));
        v239 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v57 + 1), v43), *(v57 + 18), v44), 3uLL), v58);
        v59 = &v57[v46];
        v60 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v59, v43), *(v59 + 2), v44), 3uLL), *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 + 1), v43), *(v59 + 18), v44), 3uLL), v60);
        goto LABEL_15;
      }

      v185 = vdupq_n_s16(8 - a3);
      v186 = vdupq_n_s16(a3);
      v187 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v185), *(2 * a1 + 0x12), v186), 3uLL);
      v226 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v185), *(2 * a1 + 2), v186), 3uLL);
      v227 = v187;
      v188 = 2 * a2;
      v189 = &v8->i8[v188];
      v228 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v189, v185), *(v189 + 2), v186), 3uLL);
      v229 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v189 + 1), v185), *(v189 + 18), v186), 3uLL);
      v190 = &v189[v188];
      v230 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v190, v185), *(v190 + 2), v186), 3uLL);
      v231 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v190 + 1), v185), *(v190 + 18), v186), 3uLL);
      v191 = &v190[v188];
      v232 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v191, v185), *(v191 + 2), v186), 3uLL);
      v233 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v191 + 1), v185), *(v191 + 18), v186), 3uLL);
      v192 = &v191[v188];
      v234 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v192, v185), *(v192 + 2), v186), 3uLL);
      v235 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v192 + 1), v185), *(v192 + 18), v186), 3uLL);
      v193 = &v192[v188];
      v236 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v193, v185), *(v193 + 2), v186), 3uLL);
      v237 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v193 + 1), v185), *(v193 + 18), v186), 3uLL);
      v194 = &v193[v188];
      v238 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v194, v185), *(v194 + 2), v186), 3uLL);
      v239 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v194 + 1), v185), *(v194 + 18), v186), 3uLL);
      v195 = &v194[v188];
      v240 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v195, v185), *(v195 + 2), v186), 3uLL);
      v241 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v195 + 1), v185), *(v195 + 18), v186), 3uLL);
      v196 = &v195[v188];
      v242 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v196, v185), *(v196 + 2), v186), 3uLL);
      v197 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v196 + 1), v185), *(v196 + 18), v186), 3uLL);
      v198 = vdupq_n_s16(8 - a4);
      v199 = vdupq_n_s16(a4);
      v243 = v197;
      v200 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v187, v198), v229, v199), 3uLL), *(2 * a8 + 0x10));
      v201 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v228, v198), v230, v199), 3uLL), *(2 * a8 + 0x20));
      v202 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v229, v198), v231, v199), 3uLL), *(2 * a8 + 0x30));
      v203 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v230, v198), v232, v199), 3uLL), *(2 * a8 + 0x40));
      v204 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v231, v198), v233, v199), 3uLL), *(2 * a8 + 0x50));
      v210 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v226, v198), v228, v199), 3uLL), *(2 * a8));
      v211 = v200;
      v212 = v201;
      v213 = v202;
      v214 = v203;
      v215 = v204;
      v205 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v233, v198), v235, v199), 3uLL), *(2 * a8 + 0x70));
      v216 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v232, v198), v234, v199), 3uLL), *(2 * a8 + 0x60));
      v217 = v205;
      v206 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v235, v198), v237, v199), 3uLL), *(2 * a8 + 0x90));
      v218 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v234, v198), v236, v199), 3uLL), *(2 * a8 + 0x80));
      v219 = v206;
      v207 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v237, v198), v239, v199), 3uLL), *(2 * a8 + 0xB0));
      v220 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v236, v198), v238, v199), 3uLL), *(2 * a8 + 0xA0));
      v221 = v207;
      v208 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v239, v198), v241, v199), 3uLL), *(2 * a8 + 0xD0));
      v222 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v238, v198), v240, v199), 3uLL), *(2 * a8 + 0xC0));
      v223 = v208;
      v108 = *(2 * a8 + 0xF0);
      v109 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v240, v198), v242, v199), 3uLL), *(2 * a8 + 0xE0));
      v110 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v241, v198), v197, v199), 3uLL);
    }

    goto LABEL_19;
  }

  if (a4 == 4)
  {
    v91 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
    v226 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
    v227 = v91;
    v92 = 2 * a2;
    v93 = &v8->i8[v92];
    v228 = vrhaddq_u16(*v93, *(v93 + 2));
    v229 = vrhaddq_u16(*(v93 + 1), *(v93 + 18));
    v94 = &v93[v92];
    v230 = vrhaddq_u16(*v94, *(v94 + 2));
    v231 = vrhaddq_u16(*(v94 + 1), *(v94 + 18));
    v95 = &v94[v92];
    v232 = vrhaddq_u16(*v95, *(v95 + 2));
    v233 = vrhaddq_u16(*(v95 + 1), *(v95 + 18));
    v96 = &v95[v92];
    v234 = vrhaddq_u16(*v96, *(v96 + 2));
    v235 = vrhaddq_u16(*(v96 + 1), *(v96 + 18));
    v97 = &v96[v92];
    v236 = vrhaddq_u16(*v97, *(v97 + 2));
    v237 = vrhaddq_u16(*(v97 + 1), *(v97 + 18));
    v98 = &v97[v92];
    v238 = vrhaddq_u16(*v98, *(v98 + 2));
    v239 = vrhaddq_u16(*(v98 + 1), *(v98 + 18));
    v99 = &v98[v92];
    v240 = vrhaddq_u16(*v99, *(v99 + 2));
    v241 = vrhaddq_u16(*(v99 + 1), *(v99 + 18));
    v100 = &v99[v92];
    v242 = vrhaddq_u16(*v100, *(v100 + 2));
    v243 = vrhaddq_u16(*(v100 + 1), *(v100 + 18));
    v101 = vrhaddq_u16(vrhaddq_u16(v91, v229), *(2 * a8 + 0x10));
    v210 = vrhaddq_u16(vrhaddq_u16(v226, v228), *(2 * a8));
    v211 = v101;
    v102 = vrhaddq_u16(vrhaddq_u16(v229, v231), *(2 * a8 + 0x30));
    v212 = vrhaddq_u16(vrhaddq_u16(v228, v230), *(2 * a8 + 0x20));
    v213 = v102;
    v103 = vrhaddq_u16(vrhaddq_u16(v231, v233), *(2 * a8 + 0x50));
    v214 = vrhaddq_u16(vrhaddq_u16(v230, v232), *(2 * a8 + 0x40));
    v215 = v103;
    v104 = vrhaddq_u16(vrhaddq_u16(v233, v235), *(2 * a8 + 0x70));
    v216 = vrhaddq_u16(vrhaddq_u16(v232, v234), *(2 * a8 + 0x60));
    v217 = v104;
    v105 = vrhaddq_u16(vrhaddq_u16(v235, v237), *(2 * a8 + 0x90));
    v218 = vrhaddq_u16(vrhaddq_u16(v234, v236), *(2 * a8 + 0x80));
    v219 = v105;
    v106 = vrhaddq_u16(vrhaddq_u16(v237, v239), *(2 * a8 + 0xB0));
    v220 = vrhaddq_u16(vrhaddq_u16(v236, v238), *(2 * a8 + 0xA0));
    v221 = v106;
    v107 = vrhaddq_u16(vrhaddq_u16(v239, v241), *(2 * a8 + 0xD0));
    v222 = vrhaddq_u16(vrhaddq_u16(v238, v240), *(2 * a8 + 0xC0));
    v223 = v107;
    v108 = *(2 * a8 + 0xF0);
    v109 = vrhaddq_u16(vrhaddq_u16(v240, v242), *(2 * a8 + 0xE0));
    v110 = vrhaddq_u16(v241, v243);
LABEL_19:
    v165 = vrhaddq_u16(v110, v108);
    goto LABEL_20;
  }

  if (a4)
  {
    v144 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
    v226 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
    v227 = v144;
    v145 = 2 * a2;
    v146 = &v8->i8[v145];
    v228 = vrhaddq_u16(*v146, *(v146 + 2));
    v229 = vrhaddq_u16(*(v146 + 1), *(v146 + 18));
    v147 = &v146[v145];
    v230 = vrhaddq_u16(*v147, *(v147 + 2));
    v231 = vrhaddq_u16(*(v147 + 1), *(v147 + 18));
    v148 = &v147[v145];
    v232 = vrhaddq_u16(*v148, *(v148 + 2));
    v233 = vrhaddq_u16(*(v148 + 1), *(v148 + 18));
    v149 = &v148[v145];
    v234 = vrhaddq_u16(*v149, *(v149 + 2));
    v235 = vrhaddq_u16(*(v149 + 1), *(v149 + 18));
    v150 = &v149[v145];
    v236 = vrhaddq_u16(*v150, *(v150 + 2));
    v237 = vrhaddq_u16(*(v150 + 1), *(v150 + 18));
    v151 = &v150[v145];
    v238 = vrhaddq_u16(*v151, *(v151 + 2));
    v239 = vrhaddq_u16(*(v151 + 1), *(v151 + 18));
    v152 = &v151[v145];
    v240 = vrhaddq_u16(*v152, *(v152 + 2));
    v241 = vrhaddq_u16(*(v152 + 1), *(v152 + 18));
    v153 = &v152[v145];
    v242 = vrhaddq_u16(*v153, *(v153 + 2));
    v154 = vdupq_n_s16(8 - a4);
    v155 = vdupq_n_s16(a4);
    v243 = vrhaddq_u16(*(v153 + 1), *(v153 + 18));
    v156 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v144, v154), v229, v155), 3uLL), *(2 * a8 + 0x10));
    v157 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v228, v154), v230, v155), 3uLL), *(2 * a8 + 0x20));
    v158 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v229, v154), v231, v155), 3uLL), *(2 * a8 + 0x30));
    v159 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v230, v154), v232, v155), 3uLL), *(2 * a8 + 0x40));
    v160 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v231, v154), v233, v155), 3uLL), *(2 * a8 + 0x50));
    v210 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v226, v154), v228, v155), 3uLL), *(2 * a8));
    v211 = v156;
    v212 = v157;
    v213 = v158;
    v214 = v159;
    v215 = v160;
    v161 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v233, v154), v235, v155), 3uLL), *(2 * a8 + 0x70));
    v216 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v232, v154), v234, v155), 3uLL), *(2 * a8 + 0x60));
    v217 = v161;
    v162 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v235, v154), v237, v155), 3uLL), *(2 * a8 + 0x90));
    v218 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v234, v154), v236, v155), 3uLL), *(2 * a8 + 0x80));
    v219 = v162;
    v163 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v237, v154), v239, v155), 3uLL), *(2 * a8 + 0xB0));
    v220 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v236, v154), v238, v155), 3uLL), *(2 * a8 + 0xA0));
    v221 = v163;
    v164 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v239, v154), v241, v155), 3uLL), *(2 * a8 + 0xD0));
    v222 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v238, v154), v240, v155), 3uLL), *(2 * a8 + 0xC0));
    v223 = v164;
    v109 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v240, v154), v242, v155), 3uLL), *(2 * a8 + 0xE0));
    v165 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v241, v154), v243, v155), 3uLL), *(2 * a8 + 0xF0));
LABEL_20:
    v224 = v109;
    v225 = v165;
    v143 = &v210;
    return vpx_highbd_8_variance16x8_neon(v143 >> 1, 16, a5, a6, a7);
  }

  v27 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12)), *(2 * a8 + 0x10));
  v226 = vrhaddq_u16(vrhaddq_u16(*(2 * a1), *(2 * a1 + 2)), *(2 * a8));
  v227 = v27;
  v28 = 2 * a2;
  v29 = &v8->i8[v28];
  v30 = *(2 * a8 + 0x30);
  v228 = vrhaddq_u16(vrhaddq_u16(*v29, *(v29 + 2)), *(2 * a8 + 0x20));
  v229 = vrhaddq_u16(vrhaddq_u16(*(v29 + 1), *(v29 + 18)), v30);
  v31 = &v29[v28];
  v32 = *(2 * a8 + 0x50);
  v230 = vrhaddq_u16(vrhaddq_u16(*v31, *(v31 + 2)), *(2 * a8 + 0x40));
  v231 = vrhaddq_u16(vrhaddq_u16(*(v31 + 1), *(v31 + 18)), v32);
  v33 = &v31[v28];
  v34 = *(2 * a8 + 0x70);
  v232 = vrhaddq_u16(vrhaddq_u16(*v33, *(v33 + 2)), *(2 * a8 + 0x60));
  v233 = vrhaddq_u16(vrhaddq_u16(*(v33 + 1), *(v33 + 18)), v34);
  v35 = &v33[v28];
  v36 = *(2 * a8 + 0x90);
  v234 = vrhaddq_u16(vrhaddq_u16(*v35, *(v35 + 2)), *(2 * a8 + 0x80));
  v235 = vrhaddq_u16(vrhaddq_u16(*(v35 + 1), *(v35 + 18)), v36);
  v37 = &v35[v28];
  v38 = *(2 * a8 + 0xB0);
  v236 = vrhaddq_u16(vrhaddq_u16(*v37, *(v37 + 2)), *(2 * a8 + 0xA0));
  v237 = vrhaddq_u16(vrhaddq_u16(*(v37 + 1), *(v37 + 18)), v38);
  v39 = &v37[v28];
  v40 = *(2 * a8 + 0xD0);
  v238 = vrhaddq_u16(vrhaddq_u16(*v39, *(v39 + 2)), *(2 * a8 + 0xC0));
  v239 = vrhaddq_u16(vrhaddq_u16(*(v39 + 1), *(v39 + 18)), v40);
  v41 = &v39[v28];
  v42 = *(2 * a8 + 0xF0);
  v240 = vrhaddq_u16(vrhaddq_u16(*v41, *(v41 + 2)), *(2 * a8 + 0xE0));
  v26 = vrhaddq_u16(vrhaddq_u16(*(v41 + 1), *(v41 + 18)), v42);
LABEL_15:
  v241 = v26;
  v143 = &v226;
  return vpx_highbd_8_variance16x8_neon(v143 >> 1, 16, a5, a6, a7);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance16x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v383 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v133 = 0;
      v315 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v349 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v350 = v315;
      v134 = 2 * a2;
      v351 = vrhaddq_u16(*(v8 + v134), *(v8 + v134 + 2));
      v352 = vrhaddq_u16(*(v8 + v134 + 16), *(v8 + v134 + 18));
      v135 = v8 + v134 + v134;
      v353 = vrhaddq_u16(*v135, *(v135 + 2));
      v354 = vrhaddq_u16(*(v135 + 16), *(v135 + 18));
      v136 = v135 + v134;
      v355 = vrhaddq_u16(*v136, *(v136 + 2));
      v356 = vrhaddq_u16(*(v136 + 16), *(v136 + 18));
      v137 = v136 + v134;
      v357 = vrhaddq_u16(*v137, *(v137 + 2));
      v358 = vrhaddq_u16(*(v137 + 16), *(v137 + 18));
      v138 = v137 + v134;
      v359 = vrhaddq_u16(*v138, *(v138 + 2));
      v360 = vrhaddq_u16(*(v138 + 16), *(v138 + 18));
      v139 = v138 + v134;
      v361 = vrhaddq_u16(*v139, *(v139 + 2));
      v362 = vrhaddq_u16(*(v139 + 16), *(v139 + 18));
      v140 = v139 + v134;
      v363 = vrhaddq_u16(*v140, *(v140 + 2));
      v364 = vrhaddq_u16(*(v140 + 16), *(v140 + 18));
      v141 = v140 + v134;
      v365 = vrhaddq_u16(*v141, *(v141 + 2));
      v366 = vrhaddq_u16(*(v141 + 16), *(v141 + 18));
      v142 = v141 + v134;
      v367 = vrhaddq_u16(*v142, *(v142 + 2));
      v368 = vrhaddq_u16(*(v142 + 16), *(v142 + 18));
      v143 = v142 + v134;
      v369 = vrhaddq_u16(*v143, *(v143 + 2));
      v370 = vrhaddq_u16(*(v143 + 16), *(v143 + 18));
      v144 = v143 + v134;
      v371 = vrhaddq_u16(*v144, *(v144 + 2));
      v372 = vrhaddq_u16(*(v144 + 16), *(v144 + 18));
      v145 = v144 + v134;
      v373 = vrhaddq_u16(*v145, *(v145 + 2));
      v374 = vrhaddq_u16(*(v145 + 16), *(v145 + 18));
      v146 = v145 + v134;
      v375 = vrhaddq_u16(*v146, *(v146 + 2));
      v376 = vrhaddq_u16(*(v146 + 16), *(v146 + 18));
      v147 = v146 + v134;
      v377 = vrhaddq_u16(*v147, *(v147 + 2));
      v378 = vrhaddq_u16(*(v147 + 16), *(v147 + 18));
      v148 = v147 + v134;
      v379 = vrhaddq_u16(*v148, *(v148 + 2));
      v149 = v148 + v134;
      v380 = vrhaddq_u16(*(v148 + 16), *(v148 + 18));
      v381 = vrhaddq_u16(*v149, *(v149 + 2));
      v382 = vrhaddq_u16(*(v149 + 16), *(v149 + 18));
      v150 = vrhaddq_u16(vrhaddq_u16(v315, v352), *(2 * a8 + 0x10));
      v317 = vrhaddq_u16(vrhaddq_u16(v349, v351), *(2 * a8));
      v318 = v150;
      v151 = vrhaddq_u16(vrhaddq_u16(v352, v354), *(2 * a8 + 0x30));
      v319 = vrhaddq_u16(vrhaddq_u16(v351, v353), *(2 * a8 + 0x20));
      v320 = v151;
      v152 = vrhaddq_u16(vrhaddq_u16(v354, v356), *(2 * a8 + 0x50));
      v321 = vrhaddq_u16(vrhaddq_u16(v353, v355), *(2 * a8 + 0x40));
      v322 = v152;
      v153 = vrhaddq_u16(vrhaddq_u16(v356, v358), *(2 * a8 + 0x70));
      v323 = vrhaddq_u16(vrhaddq_u16(v355, v357), *(2 * a8 + 0x60));
      v324 = v153;
      v154 = vrhaddq_u16(vrhaddq_u16(v358, v360), *(2 * a8 + 0x90));
      v325 = vrhaddq_u16(vrhaddq_u16(v357, v359), *(2 * a8 + 0x80));
      v326 = v154;
      v155 = vrhaddq_u16(vrhaddq_u16(v360, v362), *(2 * a8 + 0xB0));
      v327 = vrhaddq_u16(vrhaddq_u16(v359, v361), *(2 * a8 + 0xA0));
      v328 = v155;
      v156 = vrhaddq_u16(vrhaddq_u16(v362, v364), *(2 * a8 + 0xD0));
      v329 = vrhaddq_u16(vrhaddq_u16(v361, v363), *(2 * a8 + 0xC0));
      v330 = v156;
      v157 = vrhaddq_u16(vrhaddq_u16(v364, v366), *(2 * a8 + 0xF0));
      v331 = vrhaddq_u16(vrhaddq_u16(v363, v365), *(2 * a8 + 0xE0));
      v332 = v157;
      v158 = vrhaddq_u16(vrhaddq_u16(v366, v368), *(2 * a8 + 0x110));
      v333 = vrhaddq_u16(vrhaddq_u16(v365, v367), *(2 * a8 + 0x100));
      v334 = v158;
      v159 = vrhaddq_u16(vrhaddq_u16(v368, v370), *(2 * a8 + 0x130));
      v335 = vrhaddq_u16(vrhaddq_u16(v367, v369), *(2 * a8 + 0x120));
      v336 = v159;
      v160 = vrhaddq_u16(vrhaddq_u16(v370, v372), *(2 * a8 + 0x150));
      v337 = vrhaddq_u16(vrhaddq_u16(v369, v371), *(2 * a8 + 0x140));
      v338 = v160;
      v161 = vrhaddq_u16(vrhaddq_u16(v372, v374), *(2 * a8 + 0x170));
      v339 = vrhaddq_u16(vrhaddq_u16(v371, v373), *(2 * a8 + 0x160));
      v340 = v161;
      v162 = vrhaddq_u16(vrhaddq_u16(v374, v376), *(2 * a8 + 0x190));
      v341 = vrhaddq_u16(vrhaddq_u16(v373, v375), *(2 * a8 + 0x180));
      v342 = v162;
      v163 = vrhaddq_u16(vrhaddq_u16(v376, v378), *(2 * a8 + 0x1B0));
      v343 = vrhaddq_u16(vrhaddq_u16(v375, v377), *(2 * a8 + 0x1A0));
      v344 = v163;
      v164 = vrhaddq_u16(vrhaddq_u16(v378, v380), *(2 * a8 + 0x1D0));
      v345 = vrhaddq_u16(vrhaddq_u16(v377, v379), *(2 * a8 + 0x1C0));
      v346 = v164;
      v165 = vrhaddq_u16(vrhaddq_u16(v380, v382), *(2 * a8 + 0x1F0));
      v347 = vrhaddq_u16(vrhaddq_u16(v379, v381), *(2 * a8 + 0x1E0));
      v348 = v165;
      v166 = (2 * a5 + 16);
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v167 = vsubq_s16(*(&v317 + v133), v166[-1]);
        v168 = vpadalq_s16(v77, v167);
        v169 = vmlal_s16(v75, *v167.i8, *v167.i8);
        v170 = vmlal_high_s16(v76, v167, v167);
        v171 = vsubq_s16(*(&v317 + v133 + 16), *v166);
        v77 = vpadalq_s16(v168, v171);
        v75 = vmlal_s16(v169, *v171.i8, *v171.i8);
        v76 = vmlal_high_s16(v170, v171, v171);
        v133 += 32;
        v166 = (v166 + 2 * a6);
      }

      while (v133 != 512);
    }

    else
    {
      v41 = 0;
      if (a4)
      {
        v184 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
        v349 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
        v350 = v184;
        v185 = 2 * a2;
        v351 = vrhaddq_u16(*(v8 + v185), *(v8 + v185 + 2));
        v352 = vrhaddq_u16(*(v8 + v185 + 16), *(v8 + v185 + 18));
        v186 = v8 + v185 + v185;
        v353 = vrhaddq_u16(*v186, *(v186 + 2));
        v354 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
        v187 = v186 + v185;
        v355 = vrhaddq_u16(*v187, *(v187 + 2));
        v356 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
        v188 = v187 + v185;
        v357 = vrhaddq_u16(*v188, *(v188 + 2));
        v358 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
        v189 = v188 + v185;
        v359 = vrhaddq_u16(*v189, *(v189 + 2));
        v360 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
        v190 = v189 + v185;
        v361 = vrhaddq_u16(*v190, *(v190 + 2));
        v362 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
        v191 = v190 + v185;
        v363 = vrhaddq_u16(*v191, *(v191 + 2));
        v364 = vrhaddq_u16(*(v191 + 16), *(v191 + 18));
        v192 = v191 + v185;
        v365 = vrhaddq_u16(*v192, *(v192 + 2));
        v366 = vrhaddq_u16(*(v192 + 16), *(v192 + 18));
        v193 = v192 + v185;
        v367 = vrhaddq_u16(*v193, *(v193 + 2));
        v368 = vrhaddq_u16(*(v193 + 16), *(v193 + 18));
        v194 = v193 + v185;
        v369 = vrhaddq_u16(*v194, *(v194 + 2));
        v370 = vrhaddq_u16(*(v194 + 16), *(v194 + 18));
        v195 = v194 + v185;
        v371 = vrhaddq_u16(*v195, *(v195 + 2));
        v372 = vrhaddq_u16(*(v195 + 16), *(v195 + 18));
        v196 = v195 + v185;
        v373 = vrhaddq_u16(*v196, *(v196 + 2));
        v374 = vrhaddq_u16(*(v196 + 16), *(v196 + 18));
        v197 = v196 + v185;
        v375 = vrhaddq_u16(*v197, *(v197 + 2));
        v376 = vrhaddq_u16(*(v197 + 16), *(v197 + 18));
        v198 = v197 + v185;
        v377 = vrhaddq_u16(*v198, *(v198 + 2));
        v378 = vrhaddq_u16(*(v198 + 16), *(v198 + 18));
        v199 = v198 + v185;
        v379 = vrhaddq_u16(*v199, *(v199 + 2));
        v200 = v199 + v185;
        v380 = vrhaddq_u16(*(v199 + 16), *(v199 + 18));
        v381 = vrhaddq_u16(*v200, *(v200 + 2));
        v382 = vrhaddq_u16(*(v200 + 16), *(v200 + 18));
        v201 = vdupq_n_s16(8 - a4);
        v202 = vdupq_n_s16(a4);
        v203 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v350, v201), v352, v202), 3uLL), *(2 * a8 + 0x10));
        v317 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v349, v201), v351, v202), 3uLL), *(2 * a8));
        v318 = v203;
        v204 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v352, v201), v354, v202), 3uLL), *(2 * a8 + 0x30));
        v319 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v351, v201), v353, v202), 3uLL), *(2 * a8 + 0x20));
        v320 = v204;
        v205 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v354, v201), v356, v202), 3uLL), *(2 * a8 + 0x50));
        v321 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v353, v201), v355, v202), 3uLL), *(2 * a8 + 0x40));
        v322 = v205;
        v206 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v356, v201), v358, v202), 3uLL), *(2 * a8 + 0x70));
        v323 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v355, v201), v357, v202), 3uLL), *(2 * a8 + 0x60));
        v324 = v206;
        v207 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v358, v201), v360, v202), 3uLL), *(2 * a8 + 0x90));
        v325 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v357, v201), v359, v202), 3uLL), *(2 * a8 + 0x80));
        v326 = v207;
        v208 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v360, v201), v362, v202), 3uLL), *(2 * a8 + 0xB0));
        v327 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v359, v201), v361, v202), 3uLL), *(2 * a8 + 0xA0));
        v328 = v208;
        v209 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v362, v201), v364, v202), 3uLL), *(2 * a8 + 0xD0));
        v329 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v361, v201), v363, v202), 3uLL), *(2 * a8 + 0xC0));
        v330 = v209;
        v210 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v364, v201), v366, v202), 3uLL), *(2 * a8 + 0xF0));
        v331 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v363, v201), v365, v202), 3uLL), *(2 * a8 + 0xE0));
        v332 = v210;
        v211 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v366, v201), v368, v202), 3uLL), *(2 * a8 + 0x110));
        v333 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v365, v201), v367, v202), 3uLL), *(2 * a8 + 0x100));
        v334 = v211;
        v212 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v368, v201), v370, v202), 3uLL), *(2 * a8 + 0x130));
        v335 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v367, v201), v369, v202), 3uLL), *(2 * a8 + 0x120));
        v336 = v212;
        v213 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v370, v201), v372, v202), 3uLL), *(2 * a8 + 0x150));
        v337 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v369, v201), v371, v202), 3uLL), *(2 * a8 + 0x140));
        v338 = v213;
        v214 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v372, v201), v374, v202), 3uLL), *(2 * a8 + 0x170));
        v339 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v371, v201), v373, v202), 3uLL), *(2 * a8 + 0x160));
        v340 = v214;
        v215 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v374, v201), v376, v202), 3uLL), *(2 * a8 + 0x190));
        v341 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v373, v201), v375, v202), 3uLL), *(2 * a8 + 0x180));
        v342 = v215;
        v216 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v376, v201), v378, v202), 3uLL), *(2 * a8 + 0x1B0));
        v343 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v375, v201), v377, v202), 3uLL), *(2 * a8 + 0x1A0));
        v344 = v216;
        v217 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v378, v201), v380, v202), 3uLL), *(2 * a8 + 0x1D0));
        v345 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v377, v201), v379, v202), 3uLL), *(2 * a8 + 0x1C0));
        v346 = v217;
        v218 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v379, v201), v381, v202), 3uLL), *(2 * a8 + 0x1E0));
        v219 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v380, v201), v382, v202), 3uLL), *(2 * a8 + 0x1F0));
        v347 = v218;
        v348 = v219;
        v220 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v221 = vsubq_s16(*(&v317 + v41), v220[-1]);
          v222 = vpadalq_s16(v77, v221);
          v223 = vmlal_s16(v75, *v221.i8, *v221.i8);
          v224 = vmlal_high_s16(v76, v221, v221);
          v225 = vsubq_s16(*(&v317 + v41 + 16), *v220);
          v77 = vpadalq_s16(v222, v225);
          v75 = vmlal_s16(v223, *v225.i8, *v225.i8);
          v76 = vmlal_high_s16(v224, v225, v225);
          v41 += 32;
          v220 = (v220 + 2 * a6);
        }

        while (v41 != 512);
      }

      else
      {
        v42 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12)), *(2 * a8 + 0x10));
        v349 = vrhaddq_u16(vrhaddq_u16(*(2 * a1), *(2 * a1 + 2)), *(2 * a8));
        v350 = v42;
        v43 = 2 * a2;
        v44 = v8 + v43;
        v45 = *(2 * a8 + 0x30);
        v351 = vrhaddq_u16(vrhaddq_u16(*v44, *(v44 + 2)), *(2 * a8 + 0x20));
        v352 = vrhaddq_u16(vrhaddq_u16(*(v44 + 16), *(v44 + 18)), v45);
        v46 = v44 + v43;
        v47 = *(2 * a8 + 0x50);
        v353 = vrhaddq_u16(vrhaddq_u16(*v46, *(v46 + 2)), *(2 * a8 + 0x40));
        v354 = vrhaddq_u16(vrhaddq_u16(*(v46 + 16), *(v46 + 18)), v47);
        v48 = v46 + v43;
        v49 = *(2 * a8 + 0x70);
        v355 = vrhaddq_u16(vrhaddq_u16(*v48, *(v48 + 2)), *(2 * a8 + 0x60));
        v356 = vrhaddq_u16(vrhaddq_u16(*(v48 + 16), *(v48 + 18)), v49);
        v50 = v48 + v43;
        v51 = *(2 * a8 + 0x90);
        v357 = vrhaddq_u16(vrhaddq_u16(*v50, *(v50 + 2)), *(2 * a8 + 0x80));
        v358 = vrhaddq_u16(vrhaddq_u16(*(v50 + 16), *(v50 + 18)), v51);
        v52 = v50 + v43;
        v53 = *(2 * a8 + 0xB0);
        v359 = vrhaddq_u16(vrhaddq_u16(*v52, *(v52 + 2)), *(2 * a8 + 0xA0));
        v360 = vrhaddq_u16(vrhaddq_u16(*(v52 + 16), *(v52 + 18)), v53);
        v54 = v52 + v43;
        v55 = *(2 * a8 + 0xD0);
        v361 = vrhaddq_u16(vrhaddq_u16(*v54, *(v54 + 2)), *(2 * a8 + 0xC0));
        v362 = vrhaddq_u16(vrhaddq_u16(*(v54 + 16), *(v54 + 18)), v55);
        v56 = v54 + v43;
        v57 = *(2 * a8 + 0xF0);
        v363 = vrhaddq_u16(vrhaddq_u16(*v56, *(v56 + 2)), *(2 * a8 + 0xE0));
        v364 = vrhaddq_u16(vrhaddq_u16(*(v56 + 16), *(v56 + 18)), v57);
        v58 = v56 + v43;
        v59 = *(2 * a8 + 0x110);
        v365 = vrhaddq_u16(vrhaddq_u16(*v58, *(v58 + 2)), *(2 * a8 + 0x100));
        v366 = vrhaddq_u16(vrhaddq_u16(*(v58 + 16), *(v58 + 18)), v59);
        v60 = v58 + v43;
        v61 = *(2 * a8 + 0x130);
        v367 = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2)), *(2 * a8 + 0x120));
        v368 = vrhaddq_u16(vrhaddq_u16(*(v60 + 16), *(v60 + 18)), v61);
        v62 = v60 + v43;
        v63 = *(2 * a8 + 0x150);
        v369 = vrhaddq_u16(vrhaddq_u16(*v62, *(v62 + 2)), *(2 * a8 + 0x140));
        v370 = vrhaddq_u16(vrhaddq_u16(*(v62 + 16), *(v62 + 18)), v63);
        v64 = v62 + v43;
        v65 = *(2 * a8 + 0x170);
        v371 = vrhaddq_u16(vrhaddq_u16(*v64, *(v64 + 2)), *(2 * a8 + 0x160));
        v372 = vrhaddq_u16(vrhaddq_u16(*(v64 + 16), *(v64 + 18)), v65);
        v66 = v64 + v43;
        v67 = *(2 * a8 + 0x190);
        v373 = vrhaddq_u16(vrhaddq_u16(*v66, *(v66 + 2)), *(2 * a8 + 0x180));
        v374 = vrhaddq_u16(vrhaddq_u16(*(v66 + 16), *(v66 + 18)), v67);
        v68 = v66 + v43;
        v69 = *(2 * a8 + 0x1B0);
        v375 = vrhaddq_u16(vrhaddq_u16(*v68, *(v68 + 2)), *(2 * a8 + 0x1A0));
        v376 = vrhaddq_u16(vrhaddq_u16(*(v68 + 16), *(v68 + 18)), v69);
        v70 = v68 + v43;
        v71 = *(2 * a8 + 0x1D0);
        v377 = vrhaddq_u16(vrhaddq_u16(*v70, *(v70 + 2)), *(2 * a8 + 0x1C0));
        v72 = v70 + v43;
        v378 = vrhaddq_u16(vrhaddq_u16(*(v70 + 16), *(v70 + 18)), v71);
        v73 = *(2 * a8 + 0x1F0);
        v379 = vrhaddq_u16(vrhaddq_u16(*v72, *(v72 + 2)), *(2 * a8 + 0x1E0));
        v380 = vrhaddq_u16(vrhaddq_u16(*(v72 + 16), *(v72 + 18)), v73);
        v74 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v78 = vsubq_s16(*(&v349 + v41), v74[-1]);
          v79 = vpadalq_s16(v77, v78);
          v80 = vmlal_s16(v75, *v78.i8, *v78.i8);
          v81 = vmlal_high_s16(v76, v78, v78);
          v82 = vsubq_s16(*(&v349 + v41 + 16), *v74);
          v77 = vpadalq_s16(v79, v82);
          v75 = vmlal_s16(v80, *v82.i8, *v82.i8);
          v76 = vmlal_high_s16(v81, v82, v82);
          v41 += 32;
          v74 = (v74 + 2 * a6);
        }

        while (v41 != 512);
      }
    }
  }

  else
  {
    if (!a3)
    {
      v9 = (2 * a8);
      if (a4 == 4)
      {
        v96 = 2 * a2;
        v97 = (v8 + v96);
        v98 = *(2 * a8 + 0x10);
        v349 = vrhaddq_u16(vrhaddq_u16(*v8, *(v8 + v96)), *v9);
        v350 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x10 + v96)), v98);
        v99 = *(v8 + v96);
        v100 = (v8 + v96 + v96);
        v101 = *(2 * a8 + 0x30);
        v351 = vrhaddq_u16(vrhaddq_u16(v99, *v100), *(2 * a8 + 0x20));
        v352 = vrhaddq_u16(vrhaddq_u16(v97[1], *(v97 + v96 + 16)), v101);
        v102 = (v100 + v96);
        v103 = *(2 * a8 + 0x50);
        v353 = vrhaddq_u16(vrhaddq_u16(*v100, *(v100 + v96)), *(2 * a8 + 0x40));
        v354 = vrhaddq_u16(vrhaddq_u16(v100[1], *(v100 + v96 + 16)), v103);
        v104 = *(v100 + v96);
        v105 = (v100 + v96 + v96);
        v106 = *(2 * a8 + 0x70);
        v355 = vrhaddq_u16(vrhaddq_u16(v104, *v105), *(2 * a8 + 0x60));
        v356 = vrhaddq_u16(vrhaddq_u16(v102[1], *(v102 + v96 + 16)), v106);
        v107 = (v105 + v96);
        v108 = *(2 * a8 + 0x90);
        v357 = vrhaddq_u16(vrhaddq_u16(*v105, *(v105 + v96)), *(2 * a8 + 0x80));
        v358 = vrhaddq_u16(vrhaddq_u16(v105[1], *(v105 + v96 + 16)), v108);
        v109 = *(v105 + v96);
        v110 = (v105 + v96 + v96);
        v111 = *(2 * a8 + 0xB0);
        v359 = vrhaddq_u16(vrhaddq_u16(v109, *v110), *(2 * a8 + 0xA0));
        v360 = vrhaddq_u16(vrhaddq_u16(v107[1], *(v107 + v96 + 16)), v111);
        v112 = (v110 + v96);
        v113 = *(2 * a8 + 0xD0);
        v361 = vrhaddq_u16(vrhaddq_u16(*v110, *(v110 + v96)), *(2 * a8 + 0xC0));
        v362 = vrhaddq_u16(vrhaddq_u16(v110[1], *(v110 + v96 + 16)), v113);
        v114 = *(v110 + v96);
        v115 = (v110 + v96 + v96);
        v116 = *(2 * a8 + 0xF0);
        v363 = vrhaddq_u16(vrhaddq_u16(v114, *v115), *(2 * a8 + 0xE0));
        v364 = vrhaddq_u16(vrhaddq_u16(v112[1], *(v112 + v96 + 16)), v116);
        v117 = (v115 + v96);
        v118 = *(2 * a8 + 0x110);
        v365 = vrhaddq_u16(vrhaddq_u16(*v115, *(v115 + v96)), *(2 * a8 + 0x100));
        v366 = vrhaddq_u16(vrhaddq_u16(v115[1], *(v115 + v96 + 16)), v118);
        v119 = *(v115 + v96);
        v120 = (v115 + v96 + v96);
        v121 = *(2 * a8 + 0x130);
        v367 = vrhaddq_u16(vrhaddq_u16(v119, *v120), *(2 * a8 + 0x120));
        v368 = vrhaddq_u16(vrhaddq_u16(v117[1], *(v117 + v96 + 16)), v121);
        v122 = (v120 + v96);
        v123 = *(2 * a8 + 0x150);
        v369 = vrhaddq_u16(vrhaddq_u16(*v120, *(v120 + v96)), *(2 * a8 + 0x140));
        v370 = vrhaddq_u16(vrhaddq_u16(v120[1], *(v120 + v96 + 16)), v123);
        v124 = *(v120 + v96);
        v125 = (v120 + v96 + v96);
        v126 = *(2 * a8 + 0x170);
        v371 = vrhaddq_u16(vrhaddq_u16(v124, *v125), *(2 * a8 + 0x160));
        v372 = vrhaddq_u16(vrhaddq_u16(v122[1], *(v122 + v96 + 16)), v126);
        v127 = (v125 + v96);
        v128 = *(2 * a8 + 0x190);
        v373 = vrhaddq_u16(vrhaddq_u16(*v125, *(v125 + v96)), *(2 * a8 + 0x180));
        v374 = vrhaddq_u16(vrhaddq_u16(v125[1], *(v125 + v96 + 16)), v128);
        v129 = *(v125 + v96);
        v130 = (v125 + v96 + v96);
        v131 = *(2 * a8 + 0x1B0);
        v375 = vrhaddq_u16(vrhaddq_u16(v129, *v130), *(2 * a8 + 0x1A0));
        v376 = vrhaddq_u16(vrhaddq_u16(v127[1], *(v127 + v96 + 16)), v131);
        v132 = *(2 * a8 + 0x1D0);
        v377 = vrhaddq_u16(vrhaddq_u16(*v130, *(v130 + v96)), *(2 * a8 + 0x1C0));
        v378 = vrhaddq_u16(vrhaddq_u16(v130[1], *(v130 + v96 + 16)), v132);
        v379 = vrhaddq_u16(vrhaddq_u16(*(v130 + v96), *(v130 + v96 + v96)), *(2 * a8 + 0x1E0));
        v40 = vrhaddq_u16(*(&v130[1] + v96), *(&v130[1] + v96 + v96));
      }

      else
      {
        if (a4)
        {
          v172 = 0;
          v173 = vdupq_n_s16(8 - a4);
          v174 = vdupq_n_s16(a4);
          v175 = 2 * a2;
          do
          {
            v176 = (&v349 + v172 * 16);
            *v176 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v173), *(v8 + 2 * a2), v174), 3uLL), v9[v172]);
            v176[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 16), v173), *(v8 + v175 + 16), v174), 3uLL), v9[v172 + 1]);
            v172 += 2;
            v8 += v175;
          }

          while ((v172 * 16) != 512);
          goto LABEL_25;
        }

        v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
        v349 = vrhaddq_u16(*v8, *v9);
        v350 = v10;
        v11 = 2 * a2;
        v12 = *(2 * a8 + 0x30);
        v351 = vrhaddq_u16(*(v8 + v11), *(2 * a8 + 0x20));
        v352 = vrhaddq_u16(*(v8 + v11 + 16), v12);
        v13 = (v8 + v11 + v11);
        v14 = *(2 * a8 + 0x50);
        v353 = vrhaddq_u16(*v13, *(2 * a8 + 0x40));
        v354 = vrhaddq_u16(v13[1], v14);
        v15 = (v13 + v11);
        v16 = *(2 * a8 + 0x70);
        v355 = vrhaddq_u16(*v15, *(2 * a8 + 0x60));
        v356 = vrhaddq_u16(v15[1], v16);
        v17 = (v15 + v11);
        v18 = *(2 * a8 + 0x90);
        v357 = vrhaddq_u16(*v17, *(2 * a8 + 0x80));
        v358 = vrhaddq_u16(v17[1], v18);
        v19 = (v17 + v11);
        v20 = *(2 * a8 + 0xB0);
        v359 = vrhaddq_u16(*v19, *(2 * a8 + 0xA0));
        v360 = vrhaddq_u16(v19[1], v20);
        v21 = (v19 + v11);
        v22 = *(2 * a8 + 0xD0);
        v361 = vrhaddq_u16(*v21, *(2 * a8 + 0xC0));
        v362 = vrhaddq_u16(v21[1], v22);
        v23 = (v21 + v11);
        v24 = *(2 * a8 + 0xF0);
        v363 = vrhaddq_u16(*v23, *(2 * a8 + 0xE0));
        v364 = vrhaddq_u16(v23[1], v24);
        v25 = (v23 + v11);
        v26 = *(2 * a8 + 0x110);
        v365 = vrhaddq_u16(*v25, *(2 * a8 + 0x100));
        v366 = vrhaddq_u16(v25[1], v26);
        v27 = (v25 + v11);
        v28 = *(2 * a8 + 0x130);
        v367 = vrhaddq_u16(*v27, *(2 * a8 + 0x120));
        v368 = vrhaddq_u16(v27[1], v28);
        v29 = (v27 + v11);
        v30 = *(2 * a8 + 0x150);
        v369 = vrhaddq_u16(*v29, *(2 * a8 + 0x140));
        v370 = vrhaddq_u16(v29[1], v30);
        v31 = (v29 + v11);
        v32 = *(2 * a8 + 0x170);
        v371 = vrhaddq_u16(*v31, *(2 * a8 + 0x160));
        v372 = vrhaddq_u16(v31[1], v32);
        v33 = (v31 + v11);
        v34 = *(2 * a8 + 0x190);
        v373 = vrhaddq_u16(*v33, *(2 * a8 + 0x180));
        v374 = vrhaddq_u16(v33[1], v34);
        v35 = (v33 + v11);
        v36 = *(2 * a8 + 0x1B0);
        v375 = vrhaddq_u16(*v35, *(2 * a8 + 0x1A0));
        v376 = vrhaddq_u16(v35[1], v36);
        v37 = (v35 + v11);
        v38 = *(2 * a8 + 0x1D0);
        v377 = vrhaddq_u16(*v37, *(2 * a8 + 0x1C0));
        v378 = vrhaddq_u16(v37[1], v38);
        v39 = (v37 + v11);
        v379 = vrhaddq_u16(*v39, *(2 * a8 + 0x1E0));
        v40 = v39[1];
      }

      v380 = vrhaddq_u16(v40, *(2 * a8 + 0x1F0));
LABEL_25:
      v177 = 0;
      v178 = (2 * a5 + 16);
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v179 = vsubq_s16(*(&v349 + v177), v178[-1]);
        v180 = vpadalq_s16(v77, v179);
        v181 = vmlal_s16(v75, *v179.i8, *v179.i8);
        v182 = vmlal_high_s16(v76, v179, v179);
        v183 = vsubq_s16(*(&v349 + v177 + 16), *v178);
        v77 = vpadalq_s16(v180, v183);
        v75 = vmlal_s16(v181, *v183.i8, *v183.i8);
        v76 = vmlal_high_s16(v182, v183, v183);
        v177 += 32;
        v178 = (v178 + 2 * a6);
      }

      while (v177 != 512);
      goto LABEL_36;
    }

    if (a4 == 4)
    {
      v226 = 0;
      v227 = vdupq_n_s16(8 - a3);
      v228 = vdupq_n_s16(a3);
      v316 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v227), *(2 * a1 + 0x12), v228), 3uLL);
      v349 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v227), *(2 * a1 + 2), v228), 3uLL);
      v350 = v316;
      v229 = 2 * a2;
      v351 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v229), v227), *(v8 + v229 + 2), v228), 3uLL);
      v352 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v229 + 16), v227), *(v8 + v229 + 18), v228), 3uLL);
      v230 = v8 + v229 + v229;
      v353 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v230, v227), *(v230 + 2), v228), 3uLL);
      v354 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v230 + 16), v227), *(v230 + 18), v228), 3uLL);
      v231 = v230 + v229;
      v355 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v231, v227), *(v231 + 2), v228), 3uLL);
      v356 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v231 + 16), v227), *(v231 + 18), v228), 3uLL);
      v232 = v231 + v229;
      v357 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v232, v227), *(v232 + 2), v228), 3uLL);
      v358 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v232 + 16), v227), *(v232 + 18), v228), 3uLL);
      v233 = v232 + v229;
      v359 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v233, v227), *(v233 + 2), v228), 3uLL);
      v360 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v233 + 16), v227), *(v233 + 18), v228), 3uLL);
      v234 = v233 + v229;
      v361 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v234, v227), *(v234 + 2), v228), 3uLL);
      v362 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v234 + 16), v227), *(v234 + 18), v228), 3uLL);
      v235 = v234 + v229;
      v363 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v235, v227), *(v235 + 2), v228), 3uLL);
      v364 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 + 16), v227), *(v235 + 18), v228), 3uLL);
      v236 = v235 + v229;
      v365 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v236, v227), *(v236 + 2), v228), 3uLL);
      v366 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v236 + 16), v227), *(v236 + 18), v228), 3uLL);
      v237 = v236 + v229;
      v367 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v237, v227), *(v237 + 2), v228), 3uLL);
      v368 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v237 + 16), v227), *(v237 + 18), v228), 3uLL);
      v238 = v237 + v229;
      v369 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v238, v227), *(v238 + 2), v228), 3uLL);
      v370 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v238 + 16), v227), *(v238 + 18), v228), 3uLL);
      v239 = v238 + v229;
      v371 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v239, v227), *(v239 + 2), v228), 3uLL);
      v372 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v239 + 16), v227), *(v239 + 18), v228), 3uLL);
      v240 = v239 + v229;
      v373 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v240, v227), *(v240 + 2), v228), 3uLL);
      v374 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v240 + 16), v227), *(v240 + 18), v228), 3uLL);
      v241 = v240 + v229;
      v375 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v241, v227), *(v241 + 2), v228), 3uLL);
      v376 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v241 + 16), v227), *(v241 + 18), v228), 3uLL);
      v242 = v241 + v229;
      v377 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v242, v227), *(v242 + 2), v228), 3uLL);
      v378 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v242 + 16), v227), *(v242 + 18), v228), 3uLL);
      v243 = v242 + v229;
      v379 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v243, v227), *(v243 + 2), v228), 3uLL);
      v380 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v243 + 16), v227), *(v243 + 18), v228), 3uLL);
      v244 = v243 + v229;
      v381 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v244, v227), *(v244 + 2), v228), 3uLL);
      v382 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v244 + 16), v227), *(v244 + 18), v228), 3uLL);
      v245 = vrhaddq_u16(vrhaddq_u16(v316, v352), *(2 * a8 + 0x10));
      v317 = vrhaddq_u16(vrhaddq_u16(v349, v351), *(2 * a8));
      v318 = v245;
      v246 = vrhaddq_u16(vrhaddq_u16(v352, v354), *(2 * a8 + 0x30));
      v319 = vrhaddq_u16(vrhaddq_u16(v351, v353), *(2 * a8 + 0x20));
      v320 = v246;
      v247 = vrhaddq_u16(vrhaddq_u16(v354, v356), *(2 * a8 + 0x50));
      v321 = vrhaddq_u16(vrhaddq_u16(v353, v355), *(2 * a8 + 0x40));
      v322 = v247;
      v248 = vrhaddq_u16(vrhaddq_u16(v356, v358), *(2 * a8 + 0x70));
      v323 = vrhaddq_u16(vrhaddq_u16(v355, v357), *(2 * a8 + 0x60));
      v324 = v248;
      v249 = vrhaddq_u16(vrhaddq_u16(v358, v360), *(2 * a8 + 0x90));
      v325 = vrhaddq_u16(vrhaddq_u16(v357, v359), *(2 * a8 + 0x80));
      v326 = v249;
      v250 = vrhaddq_u16(vrhaddq_u16(v360, v362), *(2 * a8 + 0xB0));
      v327 = vrhaddq_u16(vrhaddq_u16(v359, v361), *(2 * a8 + 0xA0));
      v328 = v250;
      v251 = vrhaddq_u16(vrhaddq_u16(v362, v364), *(2 * a8 + 0xD0));
      v329 = vrhaddq_u16(vrhaddq_u16(v361, v363), *(2 * a8 + 0xC0));
      v330 = v251;
      v252 = vrhaddq_u16(vrhaddq_u16(v364, v366), *(2 * a8 + 0xF0));
      v331 = vrhaddq_u16(vrhaddq_u16(v363, v365), *(2 * a8 + 0xE0));
      v332 = v252;
      v253 = vrhaddq_u16(vrhaddq_u16(v366, v368), *(2 * a8 + 0x110));
      v333 = vrhaddq_u16(vrhaddq_u16(v365, v367), *(2 * a8 + 0x100));
      v334 = v253;
      v254 = vrhaddq_u16(vrhaddq_u16(v368, v370), *(2 * a8 + 0x130));
      v335 = vrhaddq_u16(vrhaddq_u16(v367, v369), *(2 * a8 + 0x120));
      v336 = v254;
      v255 = vrhaddq_u16(vrhaddq_u16(v370, v372), *(2 * a8 + 0x150));
      v337 = vrhaddq_u16(vrhaddq_u16(v369, v371), *(2 * a8 + 0x140));
      v338 = v255;
      v256 = vrhaddq_u16(vrhaddq_u16(v372, v374), *(2 * a8 + 0x170));
      v339 = vrhaddq_u16(vrhaddq_u16(v371, v373), *(2 * a8 + 0x160));
      v340 = v256;
      v257 = vrhaddq_u16(vrhaddq_u16(v374, v376), *(2 * a8 + 0x190));
      v341 = vrhaddq_u16(vrhaddq_u16(v373, v375), *(2 * a8 + 0x180));
      v342 = v257;
      v258 = vrhaddq_u16(vrhaddq_u16(v376, v378), *(2 * a8 + 0x1B0));
      v343 = vrhaddq_u16(vrhaddq_u16(v375, v377), *(2 * a8 + 0x1A0));
      v344 = v258;
      v259 = vrhaddq_u16(vrhaddq_u16(v378, v380), *(2 * a8 + 0x1D0));
      v345 = vrhaddq_u16(vrhaddq_u16(v377, v379), *(2 * a8 + 0x1C0));
      v346 = v259;
      v260 = vrhaddq_u16(vrhaddq_u16(v380, v382), *(2 * a8 + 0x1F0));
      v347 = vrhaddq_u16(vrhaddq_u16(v379, v381), *(2 * a8 + 0x1E0));
      v348 = v260;
      v261 = (2 * a5 + 16);
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v262 = vsubq_s16(*(&v317 + v226), v261[-1]);
        v263 = vpadalq_s16(v77, v262);
        v264 = vmlal_s16(v75, *v262.i8, *v262.i8);
        v265 = vmlal_high_s16(v76, v262, v262);
        v266 = vsubq_s16(*(&v317 + v226 + 16), *v261);
        v77 = vpadalq_s16(v263, v266);
        v75 = vmlal_s16(v264, *v266.i8, *v266.i8);
        v76 = vmlal_high_s16(v265, v266, v266);
        v226 += 32;
        v261 = (v261 + 2 * a6);
      }

      while (v226 != 512);
    }

    else
    {
      v83 = 0;
      if (a4)
      {
        v267 = vdupq_n_s16(8 - a3);
        v268 = vdupq_n_s16(a3);
        v269 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v267), *(2 * a1 + 0x12), v268), 3uLL);
        v349 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v267), *(2 * a1 + 2), v268), 3uLL);
        v350 = v269;
        v270 = 2 * a2;
        v271 = v8 + v270;
        v351 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v271, v267), *(v271 + 2), v268), 3uLL);
        v352 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v271 + 16), v267), *(v271 + 18), v268), 3uLL);
        v272 = v271 + v270;
        v353 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v272, v267), *(v272 + 2), v268), 3uLL);
        v354 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v272 + 16), v267), *(v272 + 18), v268), 3uLL);
        v273 = v272 + v270;
        v355 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v273, v267), *(v273 + 2), v268), 3uLL);
        v356 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v273 + 16), v267), *(v273 + 18), v268), 3uLL);
        v274 = v273 + v270;
        v357 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v274, v267), *(v274 + 2), v268), 3uLL);
        v358 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v274 + 16), v267), *(v274 + 18), v268), 3uLL);
        v275 = v274 + v270;
        v359 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v275, v267), *(v275 + 2), v268), 3uLL);
        v360 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v275 + 16), v267), *(v275 + 18), v268), 3uLL);
        v276 = v275 + v270;
        v361 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v276, v267), *(v276 + 2), v268), 3uLL);
        v362 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v276 + 16), v267), *(v276 + 18), v268), 3uLL);
        v277 = v276 + v270;
        v363 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v277, v267), *(v277 + 2), v268), 3uLL);
        v364 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v277 + 16), v267), *(v277 + 18), v268), 3uLL);
        v278 = v277 + v270;
        v365 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v278, v267), *(v278 + 2), v268), 3uLL);
        v366 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v278 + 16), v267), *(v278 + 18), v268), 3uLL);
        v279 = v278 + v270;
        v367 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v279, v267), *(v279 + 2), v268), 3uLL);
        v368 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v279 + 16), v267), *(v279 + 18), v268), 3uLL);
        v280 = v279 + v270;
        v369 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v280, v267), *(v280 + 2), v268), 3uLL);
        v370 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v280 + 16), v267), *(v280 + 18), v268), 3uLL);
        v281 = v280 + v270;
        v371 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v281, v267), *(v281 + 2), v268), 3uLL);
        v372 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v281 + 16), v267), *(v281 + 18), v268), 3uLL);
        v282 = v281 + v270;
        v373 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v282, v267), *(v282 + 2), v268), 3uLL);
        v374 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v282 + 16), v267), *(v282 + 18), v268), 3uLL);
        v283 = v282 + v270;
        v375 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v283, v267), *(v283 + 2), v268), 3uLL);
        v376 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v283 + 16), v267), *(v283 + 18), v268), 3uLL);
        v284 = v283 + v270;
        v377 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v284, v267), *(v284 + 2), v268), 3uLL);
        v378 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v284 + 16), v267), *(v284 + 18), v268), 3uLL);
        v285 = v284 + v270;
        v379 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v285, v267), *(v285 + 2), v268), 3uLL);
        v380 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v285 + 16), v267), *(v285 + 18), v268), 3uLL);
        v286 = v285 + v270;
        v381 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v286, v267), *(v286 + 2), v268), 3uLL);
        v382 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v286 + 16), v267), *(v286 + 18), v268), 3uLL);
        v287 = vdupq_n_s16(8 - a4);
        v288 = vdupq_n_s16(a4);
        v289 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v269, v287), v352, v288), 3uLL), *(2 * a8 + 0x10));
        v317 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v349, v287), v351, v288), 3uLL), *(2 * a8));
        v318 = v289;
        v290 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v352, v287), v354, v288), 3uLL), *(2 * a8 + 0x30));
        v319 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v351, v287), v353, v288), 3uLL), *(2 * a8 + 0x20));
        v320 = v290;
        v291 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v354, v287), v356, v288), 3uLL), *(2 * a8 + 0x50));
        v321 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v353, v287), v355, v288), 3uLL), *(2 * a8 + 0x40));
        v322 = v291;
        v292 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v356, v287), v358, v288), 3uLL), *(2 * a8 + 0x70));
        v323 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v355, v287), v357, v288), 3uLL), *(2 * a8 + 0x60));
        v324 = v292;
        v293 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v358, v287), v360, v288), 3uLL), *(2 * a8 + 0x90));
        v325 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v357, v287), v359, v288), 3uLL), *(2 * a8 + 0x80));
        v326 = v293;
        v294 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v360, v287), v362, v288), 3uLL), *(2 * a8 + 0xB0));
        v327 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v359, v287), v361, v288), 3uLL), *(2 * a8 + 0xA0));
        v328 = v294;
        v295 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v362, v287), v364, v288), 3uLL), *(2 * a8 + 0xD0));
        v329 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v361, v287), v363, v288), 3uLL), *(2 * a8 + 0xC0));
        v330 = v295;
        v296 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v364, v287), v366, v288), 3uLL), *(2 * a8 + 0xF0));
        v331 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v363, v287), v365, v288), 3uLL), *(2 * a8 + 0xE0));
        v332 = v296;
        v297 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v366, v287), v368, v288), 3uLL), *(2 * a8 + 0x110));
        v333 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v365, v287), v367, v288), 3uLL), *(2 * a8 + 0x100));
        v334 = v297;
        v298 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v368, v287), v370, v288), 3uLL), *(2 * a8 + 0x130));
        v335 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v367, v287), v369, v288), 3uLL), *(2 * a8 + 0x120));
        v336 = v298;
        v299 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v370, v287), v372, v288), 3uLL), *(2 * a8 + 0x150));
        v337 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v369, v287), v371, v288), 3uLL), *(2 * a8 + 0x140));
        v338 = v299;
        v300 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v372, v287), v374, v288), 3uLL), *(2 * a8 + 0x170));
        v339 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v371, v287), v373, v288), 3uLL), *(2 * a8 + 0x160));
        v340 = v300;
        v301 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v374, v287), v376, v288), 3uLL), *(2 * a8 + 0x190));
        v341 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v373, v287), v375, v288), 3uLL), *(2 * a8 + 0x180));
        v342 = v301;
        v302 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v376, v287), v378, v288), 3uLL), *(2 * a8 + 0x1B0));
        v343 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v375, v287), v377, v288), 3uLL), *(2 * a8 + 0x1A0));
        v344 = v302;
        v303 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v378, v287), v380, v288), 3uLL), *(2 * a8 + 0x1D0));
        v345 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v377, v287), v379, v288), 3uLL), *(2 * a8 + 0x1C0));
        v346 = v303;
        v304 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v379, v287), v381, v288), 3uLL), *(2 * a8 + 0x1E0));
        v305 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v380, v287), v382, v288), 3uLL), *(2 * a8 + 0x1F0));
        v347 = v304;
        v348 = v305;
        v306 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v307 = vsubq_s16(*(&v317 + v83), v306[-1]);
          v308 = vpadalq_s16(v77, v307);
          v309 = vmlal_s16(v75, *v307.i8, *v307.i8);
          v310 = vmlal_high_s16(v76, v307, v307);
          v311 = vsubq_s16(*(&v317 + v83 + 16), *v306);
          v77 = vpadalq_s16(v308, v311);
          v75 = vmlal_s16(v309, *v311.i8, *v311.i8);
          v76 = vmlal_high_s16(v310, v311, v311);
          v83 += 32;
          v306 = (v306 + 2 * a6);
        }

        while (v83 != 512);
      }

      else
      {
        v84 = 2 * a8;
        v85 = vdupq_n_s16(8 - a3);
        v86 = vdupq_n_s16(a3);
        v87 = (v8 + 18);
        do
        {
          v88 = (&v349 + v83);
          *v88 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v87 - 18), v85), v87[-1], v86), 3uLL), *(v84 + v83));
          v88[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v87 - 2), v85), *v87, v86), 3uLL), *(v84 + v83 + 16));
          v83 += 32;
          v87 = (v87 + 2 * a2);
        }

        while (v83 != 512);
        v89 = 0;
        v90 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v91 = vsubq_s16(*(&v349 + v89), v90[-1]);
          v92 = vpadalq_s16(v77, v91);
          v93 = vmlal_s16(v75, *v91.i8, *v91.i8);
          v94 = vmlal_high_s16(v76, v91, v91);
          v95 = vsubq_s16(*(&v349 + v89 + 16), *v90);
          v77 = vpadalq_s16(v92, v95);
          v75 = vmlal_s16(v93, *v95.i8, *v95.i8);
          v76 = vmlal_high_s16(v94, v95, v95);
          v89 += 32;
          v90 = (v90 + 2 * a6);
        }

        while (v89 != 512);
      }
    }
  }

LABEL_36:
  v312 = vaddvq_s32(v77);
  v313 = vaddlvq_u32(vaddq_s32(v76, v75));
  *a7 = v313;
  return v313 - ((v312 * v312) >> 8);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance16x32_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v322 = *MEMORY[0x277D85DE8];
  v8 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v106 = 0;
      v107 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v256 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v257 = v107;
      v108 = 2 * a2;
      v109 = &v8->i8[v108];
      v258 = vrhaddq_u16(*v109, *(v109 + 2));
      v259 = vrhaddq_u16(*(v109 + 1), *(v109 + 18));
      v110 = &v109[v108];
      v260 = vrhaddq_u16(*v110, *(v110 + 2));
      v261 = vrhaddq_u16(*(v110 + 1), *(v110 + 18));
      v111 = &v110[v108];
      v262 = vrhaddq_u16(*v111, *(v111 + 2));
      v263 = vrhaddq_u16(*(v111 + 1), *(v111 + 18));
      v112 = &v111[v108];
      v264 = vrhaddq_u16(*v112, *(v112 + 2));
      v265 = vrhaddq_u16(*(v112 + 1), *(v112 + 18));
      v113 = &v112[v108];
      v266 = vrhaddq_u16(*v113, *(v113 + 2));
      v267 = vrhaddq_u16(*(v113 + 1), *(v113 + 18));
      v114 = &v113[v108];
      v268 = vrhaddq_u16(*v114, *(v114 + 2));
      v269 = vrhaddq_u16(*(v114 + 1), *(v114 + 18));
      v115 = &v114[v108];
      v270 = vrhaddq_u16(*v115, *(v115 + 2));
      v271 = vrhaddq_u16(*(v115 + 1), *(v115 + 18));
      v116 = &v115[v108];
      v272 = vrhaddq_u16(*v116, *(v116 + 2));
      v273 = vrhaddq_u16(*(v116 + 1), *(v116 + 18));
      v117 = &v116[v108];
      v274 = vrhaddq_u16(*v117, *(v117 + 2));
      v275 = vrhaddq_u16(*(v117 + 16), *(v117 + 18));
      v118 = v117 + v108;
      v276 = vrhaddq_u16(*v118, *(v118 + 2));
      v277 = vrhaddq_u16(*(v118 + 16), *(v118 + 18));
      v119 = v118 + v108;
      v278 = vrhaddq_u16(*v119, *(v119 + 2));
      v279 = vrhaddq_u16(*(v119 + 16), *(v119 + 18));
      v120 = v119 + v108;
      v280 = vrhaddq_u16(*v120, *(v120 + 2));
      v281 = vrhaddq_u16(*(v120 + 16), *(v120 + 18));
      v121 = v120 + v108;
      v282 = vrhaddq_u16(*v121, *(v121 + 2));
      v283 = vrhaddq_u16(*(v121 + 16), *(v121 + 18));
      v122 = v121 + v108;
      v284 = vrhaddq_u16(*v122, *(v122 + 2));
      v285 = vrhaddq_u16(*(v122 + 16), *(v122 + 18));
      v123 = v122 + v108;
      v286 = vrhaddq_u16(*v123, *(v123 + 2));
      v287 = vrhaddq_u16(*(v123 + 16), *(v123 + 18));
      v124 = v123 + v108;
      v288 = vrhaddq_u16(*v124, *(v124 + 2));
      v289 = vrhaddq_u16(*(v124 + 16), *(v124 + 18));
      v125 = v124 + v108;
      v290 = vrhaddq_u16(*v125, *(v125 + 2));
      v291 = vrhaddq_u16(*(v125 + 16), *(v125 + 18));
      v126 = v125 + v108;
      v292 = vrhaddq_u16(*v126, *(v126 + 2));
      v293 = vrhaddq_u16(*(v126 + 16), *(v126 + 18));
      v127 = v126 + v108;
      v294 = vrhaddq_u16(*v127, *(v127 + 2));
      v295 = vrhaddq_u16(*(v127 + 16), *(v127 + 18));
      v128 = v127 + v108;
      v296 = vrhaddq_u16(*v128, *(v128 + 2));
      v297 = vrhaddq_u16(*(v128 + 16), *(v128 + 18));
      v129 = v128 + v108;
      v298 = vrhaddq_u16(*v129, *(v129 + 2));
      v299 = vrhaddq_u16(*(v129 + 16), *(v129 + 18));
      v130 = v129 + v108;
      v300 = vrhaddq_u16(*v130, *(v130 + 2));
      v301 = vrhaddq_u16(*(v130 + 16), *(v130 + 18));
      v131 = v130 + v108;
      v302 = vrhaddq_u16(*v131, *(v131 + 2));
      v303 = vrhaddq_u16(*(v131 + 16), *(v131 + 18));
      v132 = v131 + v108;
      v304 = vrhaddq_u16(*v132, *(v132 + 2));
      v305 = vrhaddq_u16(*(v132 + 16), *(v132 + 18));
      v133 = v132 + v108;
      v306 = vrhaddq_u16(*v133, *(v133 + 2));
      v307 = vrhaddq_u16(*(v133 + 16), *(v133 + 18));
      v134 = v133 + v108;
      v308 = vrhaddq_u16(*v134, *(v134 + 2));
      v309 = vrhaddq_u16(*(v134 + 16), *(v134 + 18));
      v135 = v134 + v108;
      v310 = vrhaddq_u16(*v135, *(v135 + 2));
      v311 = vrhaddq_u16(*(v135 + 16), *(v135 + 18));
      v136 = v135 + v108;
      v312 = vrhaddq_u16(*v136, *(v136 + 2));
      v313 = vrhaddq_u16(*(v136 + 16), *(v136 + 18));
      v137 = v136 + v108;
      v314 = vrhaddq_u16(*v137, *(v137 + 2));
      v315 = vrhaddq_u16(*(v137 + 16), *(v137 + 18));
      v138 = v137 + v108;
      v316 = vrhaddq_u16(*v138, *(v138 + 2));
      v317 = vrhaddq_u16(*(v138 + 16), *(v138 + 18));
      v139 = v138 + v108;
      v318 = vrhaddq_u16(*v139, *(v139 + 2));
      v319 = vrhaddq_u16(*(v139 + 16), *(v139 + 18));
      v140 = v139 + v108;
      v320 = vrhaddq_u16(*v140, *(v140 + 2));
      v321 = vrhaddq_u16(*(v140 + 16), *(v140 + 18));
      v141 = 2 * a8;
      v142 = v256;
      do
      {
        v143 = *(&v258 + v106);
        v144 = vrhaddq_u16(vrhaddq_u16(*(&v256 + v106 + 16), *(&v259 + v106)), *(v141 + v106 + 16));
        v145 = &v255[v106];
        *v145 = vrhaddq_u16(vrhaddq_u16(v142, v143), *(v141 + v106));
        v145[1] = v144;
        v106 += 32;
        v142 = v143;
      }

      while (v106 != 1024);
      v146 = 0;
      v147 = (2 * a5 + 16);
      v80 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      do
      {
        v148 = vsubq_s16(*&v255[v146], v147[-1]);
        v149 = vpadalq_s16(v82, v148);
        v150 = vmlal_s16(v80, *v148.i8, *v148.i8);
        v151 = vmlal_high_s16(v81, v148, v148);
        v152 = vsubq_s16(*&v255[v146 + 16], *v147);
        v82 = vpadalq_s16(v149, v152);
        v80 = vmlal_s16(v150, *v152.i8, *v152.i8);
        v81 = vmlal_high_s16(v151, v152, v152);
        v146 += 32;
        v147 = (v147 + 2 * a6);
      }

      while (v146 != 1024);
    }

    else
    {
      v74 = 0;
      if (a4)
      {
        v167 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
        v256 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
        v257 = v167;
        v168 = 2 * a2;
        v169 = &v8->i8[v168];
        v258 = vrhaddq_u16(*v169, *(v169 + 2));
        v259 = vrhaddq_u16(*(v169 + 1), *(v169 + 18));
        v170 = &v169[v168];
        v260 = vrhaddq_u16(*v170, *(v170 + 2));
        v261 = vrhaddq_u16(*(v170 + 1), *(v170 + 18));
        v171 = &v170[v168];
        v262 = vrhaddq_u16(*v171, *(v171 + 2));
        v263 = vrhaddq_u16(*(v171 + 1), *(v171 + 18));
        v172 = &v171[v168];
        v264 = vrhaddq_u16(*v172, *(v172 + 2));
        v265 = vrhaddq_u16(*(v172 + 1), *(v172 + 18));
        v173 = &v172[v168];
        v266 = vrhaddq_u16(*v173, *(v173 + 2));
        v267 = vrhaddq_u16(*(v173 + 1), *(v173 + 18));
        v174 = &v173[v168];
        v268 = vrhaddq_u16(*v174, *(v174 + 2));
        v269 = vrhaddq_u16(*(v174 + 1), *(v174 + 18));
        v175 = &v174[v168];
        v270 = vrhaddq_u16(*v175, *(v175 + 2));
        v271 = vrhaddq_u16(*(v175 + 1), *(v175 + 18));
        v176 = &v175[v168];
        v272 = vrhaddq_u16(*v176, *(v176 + 2));
        v273 = vrhaddq_u16(*(v176 + 1), *(v176 + 18));
        v177 = &v176[v168];
        v274 = vrhaddq_u16(*v177, *(v177 + 2));
        v275 = vrhaddq_u16(*(v177 + 16), *(v177 + 18));
        v178 = v177 + v168;
        v276 = vrhaddq_u16(*v178, *(v178 + 2));
        v277 = vrhaddq_u16(*(v178 + 16), *(v178 + 18));
        v179 = v178 + v168;
        v278 = vrhaddq_u16(*v179, *(v179 + 2));
        v279 = vrhaddq_u16(*(v179 + 16), *(v179 + 18));
        v180 = v179 + v168;
        v280 = vrhaddq_u16(*v180, *(v180 + 2));
        v281 = vrhaddq_u16(*(v180 + 16), *(v180 + 18));
        v181 = v180 + v168;
        v282 = vrhaddq_u16(*v181, *(v181 + 2));
        v283 = vrhaddq_u16(*(v181 + 16), *(v181 + 18));
        v182 = v181 + v168;
        v284 = vrhaddq_u16(*v182, *(v182 + 2));
        v285 = vrhaddq_u16(*(v182 + 16), *(v182 + 18));
        v183 = v182 + v168;
        v286 = vrhaddq_u16(*v183, *(v183 + 2));
        v287 = vrhaddq_u16(*(v183 + 16), *(v183 + 18));
        v184 = v183 + v168;
        v288 = vrhaddq_u16(*v184, *(v184 + 2));
        v289 = vrhaddq_u16(*(v184 + 16), *(v184 + 18));
        v185 = v184 + v168;
        v290 = vrhaddq_u16(*v185, *(v185 + 2));
        v291 = vrhaddq_u16(*(v185 + 16), *(v185 + 18));
        v186 = v185 + v168;
        v292 = vrhaddq_u16(*v186, *(v186 + 2));
        v293 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
        v187 = v186 + v168;
        v294 = vrhaddq_u16(*v187, *(v187 + 2));
        v295 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
        v188 = v187 + v168;
        v296 = vrhaddq_u16(*v188, *(v188 + 2));
        v297 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
        v189 = v188 + v168;
        v298 = vrhaddq_u16(*v189, *(v189 + 2));
        v299 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
        v190 = v189 + v168;
        v300 = vrhaddq_u16(*v190, *(v190 + 2));
        v301 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
        v191 = v190 + v168;
        v302 = vrhaddq_u16(*v191, *(v191 + 2));
        v303 = vrhaddq_u16(*(v191 + 16), *(v191 + 18));
        v192 = v191 + v168;
        v304 = vrhaddq_u16(*v192, *(v192 + 2));
        v305 = vrhaddq_u16(*(v192 + 16), *(v192 + 18));
        v193 = v192 + v168;
        v306 = vrhaddq_u16(*v193, *(v193 + 2));
        v307 = vrhaddq_u16(*(v193 + 16), *(v193 + 18));
        v194 = v193 + v168;
        v308 = vrhaddq_u16(*v194, *(v194 + 2));
        v309 = vrhaddq_u16(*(v194 + 16), *(v194 + 18));
        v195 = v194 + v168;
        v310 = vrhaddq_u16(*v195, *(v195 + 2));
        v311 = vrhaddq_u16(*(v195 + 16), *(v195 + 18));
        v196 = v195 + v168;
        v312 = vrhaddq_u16(*v196, *(v196 + 2));
        v313 = vrhaddq_u16(*(v196 + 16), *(v196 + 18));
        v197 = v196 + v168;
        v314 = vrhaddq_u16(*v197, *(v197 + 2));
        v315 = vrhaddq_u16(*(v197 + 16), *(v197 + 18));
        v198 = v197 + v168;
        v316 = vrhaddq_u16(*v198, *(v198 + 2));
        v317 = vrhaddq_u16(*(v198 + 16), *(v198 + 18));
        v199 = v198 + v168;
        v318 = vrhaddq_u16(*v199, *(v199 + 2));
        v200 = v199 + v168;
        v319 = vrhaddq_u16(*(v199 + 16), *(v199 + 18));
        v320 = vrhaddq_u16(*v200, *(v200 + 2));
        v321 = vrhaddq_u16(*(v200 + 16), *(v200 + 18));
        v201 = vdupq_n_s16(8 - a4);
        v202 = 2 * a8;
        v203 = vdupq_n_s16(a4);
        v204 = v256;
        do
        {
          v205 = *(&v258 + v74);
          v206 = &v255[v74];
          v207 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v256 + v74 + 16), v201), *(&v259 + v74), v203), 3uLL), *(v202 + v74 + 16));
          *v206 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v204, v201), v205, v203), 3uLL), *(v202 + v74));
          v206[1] = v207;
          v74 += 32;
          v204 = v205;
        }

        while (v74 != 1024);
        v208 = 0;
        v209 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v210 = vsubq_s16(*&v255[v208], v209[-1]);
          v211 = vpadalq_s16(v82, v210);
          v212 = vmlal_s16(v80, *v210.i8, *v210.i8);
          v213 = vmlal_high_s16(v81, v210, v210);
          v214 = vsubq_s16(*&v255[v208 + 16], *v209);
          v82 = vpadalq_s16(v211, v214);
          v80 = vmlal_s16(v212, *v214.i8, *v214.i8);
          v81 = vmlal_high_s16(v213, v214, v214);
          v208 += 32;
          v209 = (v209 + 2 * a6);
        }

        while (v208 != 1024);
      }

      else
      {
        v75 = 2 * a8;
        v76 = (v8 + 18);
        do
        {
          v77 = (&v256 + v74);
          *v77 = vrhaddq_u16(vrhaddq_u16(*(v76 - 18), v76[-1]), *(v75 + v74));
          v77[1] = vrhaddq_u16(vrhaddq_u16(*(v76 - 2), *v76), *(v75 + v74 + 16));
          v74 += 32;
          v76 = (v76 + 2 * a2);
        }

        while (v74 != 1024);
        v78 = 0;
        v79 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v83 = vsubq_s16(*(&v256 + v78), v79[-1]);
          v84 = vpadalq_s16(v82, v83);
          v85 = vmlal_s16(v80, *v83.i8, *v83.i8);
          v86 = vmlal_high_s16(v81, v83, v83);
          v87 = vsubq_s16(*(&v256 + v78 + 16), *v79);
          v82 = vpadalq_s16(v84, v87);
          v80 = vmlal_s16(v85, *v87.i8, *v87.i8);
          v81 = vmlal_high_s16(v86, v87, v87);
          v78 += 32;
          v79 = (v79 + 2 * a6);
        }

        while (v78 != 1024);
      }
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v215 = 0;
      v216 = vdupq_n_s16(8 - a3);
      v217 = vdupq_n_s16(a3);
      v218 = &v8[1].i16[1];
      do
      {
        v219 = (&v256 + v215);
        *v219 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v218 - 18), v216), v218[-1], v217), 3uLL);
        v219[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v218 - 2), v216), *v218, v217), 3uLL);
        v215 += 32;
        v218 = (v218 + 2 * a2);
      }

      while (v215 != 1056);
      v220 = 0;
      v221 = 2 * a8;
      v222 = v256;
      do
      {
        v223 = *(&v258 + v220);
        v224 = vrhaddq_u16(vrhaddq_u16(*(&v256 + v220 + 16), *(&v259 + v220)), *(v221 + v220 + 16));
        v225 = &v255[v220];
        *v225 = vrhaddq_u16(vrhaddq_u16(v222, v223), *(v221 + v220));
        v225[1] = v224;
        v220 += 32;
        v222 = v223;
      }

      while (v220 != 1024);
      v226 = 0;
      v227 = (2 * a5 + 16);
      v80 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      do
      {
        v228 = vsubq_s16(*&v255[v226], v227[-1]);
        v229 = vpadalq_s16(v82, v228);
        v230 = vmlal_s16(v80, *v228.i8, *v228.i8);
        v231 = vmlal_high_s16(v81, v228, v228);
        v232 = vsubq_s16(*&v255[v226 + 16], *v227);
        v82 = vpadalq_s16(v229, v232);
        v80 = vmlal_s16(v230, *v232.i8, *v232.i8);
        v81 = vmlal_high_s16(v231, v232, v232);
        v226 += 32;
        v227 = (v227 + 2 * a6);
      }

      while (v226 != 1024);
    }

    else
    {
      v88 = 0;
      if (a4)
      {
        v233 = vdupq_n_s16(8 - a3);
        v234 = vdupq_n_s16(a3);
        v235 = &v8[1].i16[1];
        do
        {
          v236 = (&v256 + v88);
          *v236 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 - 18), v233), v235[-1], v234), 3uLL);
          v236[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 - 2), v233), *v235, v234), 3uLL);
          v88 += 32;
          v235 = (v235 + 2 * a2);
        }

        while (v88 != 1056);
        v237 = 0;
        v238 = vdupq_n_s16(8 - a4);
        v239 = 2 * a8;
        v240 = vdupq_n_s16(a4);
        v241 = v256;
        do
        {
          v242 = *(&v258 + v237);
          v243 = &v255[v237];
          v244 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v256 + v237 + 16), v238), *(&v259 + v237), v240), 3uLL), *(v239 + v237 + 16));
          *v243 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v241, v238), v242, v240), 3uLL), *(v239 + v237));
          v243[1] = v244;
          v237 += 32;
          v241 = v242;
        }

        while (v237 != 1024);
        v245 = 0;
        v246 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v247 = vsubq_s16(*&v255[v245], v246[-1]);
          v248 = vpadalq_s16(v82, v247);
          v249 = vmlal_s16(v80, *v247.i8, *v247.i8);
          v250 = vmlal_high_s16(v81, v247, v247);
          v251 = vsubq_s16(*&v255[v245 + 16], *v246);
          v82 = vpadalq_s16(v248, v251);
          v80 = vmlal_s16(v249, *v251.i8, *v251.i8);
          v81 = vmlal_high_s16(v250, v251, v251);
          v245 += 32;
          v246 = (v246 + 2 * a6);
        }

        while (v245 != 1024);
      }

      else
      {
        v89 = 2 * a8;
        v90 = vdupq_n_s16(8 - a3);
        v91 = vdupq_n_s16(a3);
        v92 = &v8[1].i16[1];
        do
        {
          v93 = (&v256 + v88);
          *v93 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v92 - 18), v90), v92[-1], v91), 3uLL), *(v89 + v88));
          v93[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v92 - 2), v90), *v92, v91), 3uLL), *(v89 + v88 + 16));
          v88 += 32;
          v92 = (v92 + 2 * a2);
        }

        while (v88 != 1024);
        v94 = 0;
        v95 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v96 = vsubq_s16(*(&v256 + v94), v95[-1]);
          v97 = vpadalq_s16(v82, v96);
          v98 = vmlal_s16(v80, *v96.i8, *v96.i8);
          v99 = vmlal_high_s16(v81, v96, v96);
          v100 = vsubq_s16(*(&v256 + v94 + 16), *v95);
          v82 = vpadalq_s16(v97, v100);
          v80 = vmlal_s16(v98, *v100.i8, *v100.i8);
          v81 = vmlal_high_s16(v99, v100, v100);
          v94 += 32;
          v95 = (v95 + 2 * a6);
        }

        while (v94 != 1024);
      }
    }
  }

  else
  {
    v9 = (2 * a8);
    if (a4 == 4)
    {
      v101 = 0;
      v102 = *v8;
      v103 = 2 * a2;
      do
      {
        v104 = (&v256 + v101 * 16);
        v105 = *(v8 + 2 * a2);
        *v104 = vrhaddq_u16(vrhaddq_u16(v102, v105), v9[v101]);
        v104[1] = vrhaddq_u16(vrhaddq_u16(v8[1], *(&v8[1] + v103)), v9[v101 + 1]);
        v101 += 2;
        v8 = (v8 + v103);
        v102 = v105;
      }

      while ((v101 * 16) != 1024);
    }

    else if (a4)
    {
      v153 = 0;
      v154 = vdupq_n_s16(8 - a4);
      v155 = vdupq_n_s16(a4);
      v156 = *v8;
      v157 = 2 * a2;
      do
      {
        v158 = (&v256 + v153 * 16);
        v159 = *(v8 + 2 * a2);
        *v158 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v156, v154), v159, v155), 3uLL), v9[v153]);
        v158[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v8[1], v154), *(&v8[1] + v157), v155), 3uLL), v9[v153 + 1]);
        v153 += 2;
        v8 = (v8 + v157);
        v156 = v159;
      }

      while ((v153 * 16) != 1024);
    }

    else
    {
      v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
      v256 = vrhaddq_u16(*v8, *v9);
      v257 = v10;
      v11 = 2 * a2;
      v12 = (v8 + v11);
      v13 = *(2 * a8 + 0x30);
      v258 = vrhaddq_u16(*v12, *(2 * a8 + 0x20));
      v259 = vrhaddq_u16(v12[1], v13);
      v14 = (v12 + v11);
      v15 = *(2 * a8 + 0x50);
      v260 = vrhaddq_u16(*v14, *(2 * a8 + 0x40));
      v261 = vrhaddq_u16(v14[1], v15);
      v16 = (v14 + v11);
      v17 = *(2 * a8 + 0x70);
      v262 = vrhaddq_u16(*v16, *(2 * a8 + 0x60));
      v263 = vrhaddq_u16(v16[1], v17);
      v18 = (v16 + v11);
      v19 = *(2 * a8 + 0x90);
      v264 = vrhaddq_u16(*v18, *(2 * a8 + 0x80));
      v265 = vrhaddq_u16(v18[1], v19);
      v20 = (v18 + v11);
      v21 = *(2 * a8 + 0xB0);
      v266 = vrhaddq_u16(*v20, *(2 * a8 + 0xA0));
      v267 = vrhaddq_u16(v20[1], v21);
      v22 = (v20 + v11);
      v23 = *(2 * a8 + 0xD0);
      v268 = vrhaddq_u16(*v22, *(2 * a8 + 0xC0));
      v269 = vrhaddq_u16(v22[1], v23);
      v24 = (v22 + v11);
      v25 = *(2 * a8 + 0xF0);
      v270 = vrhaddq_u16(*v24, *(2 * a8 + 0xE0));
      v271 = vrhaddq_u16(v24[1], v25);
      v26 = (v24 + v11);
      v27 = *(2 * a8 + 0x110);
      v272 = vrhaddq_u16(*v26, *(2 * a8 + 0x100));
      v273 = vrhaddq_u16(v26[1], v27);
      v28 = (v26 + v11);
      v29 = *(2 * a8 + 0x130);
      v274 = vrhaddq_u16(*v28, *(2 * a8 + 0x120));
      v275 = vrhaddq_u16(v28[1], v29);
      v30 = (v28 + v11);
      v31 = *(2 * a8 + 0x150);
      v276 = vrhaddq_u16(*v30, *(2 * a8 + 0x140));
      v277 = vrhaddq_u16(v30[1], v31);
      v32 = (v30 + v11);
      v33 = *(2 * a8 + 0x170);
      v278 = vrhaddq_u16(*v32, *(2 * a8 + 0x160));
      v279 = vrhaddq_u16(v32[1], v33);
      v34 = (v32 + v11);
      v35 = *(2 * a8 + 0x190);
      v280 = vrhaddq_u16(*v34, *(2 * a8 + 0x180));
      v281 = vrhaddq_u16(v34[1], v35);
      v36 = (v34 + v11);
      v37 = *(2 * a8 + 0x1B0);
      v282 = vrhaddq_u16(*v36, *(2 * a8 + 0x1A0));
      v283 = vrhaddq_u16(v36[1], v37);
      v38 = (v36 + v11);
      v39 = *(2 * a8 + 0x1D0);
      v284 = vrhaddq_u16(*v38, *(2 * a8 + 0x1C0));
      v285 = vrhaddq_u16(v38[1], v39);
      v40 = (v38 + v11);
      v41 = *(2 * a8 + 0x1F0);
      v286 = vrhaddq_u16(*v40, *(2 * a8 + 0x1E0));
      v287 = vrhaddq_u16(v40[1], v41);
      v42 = (v40 + v11);
      v43 = *(2 * a8 + 0x210);
      v288 = vrhaddq_u16(*v42, *(2 * a8 + 0x200));
      v289 = vrhaddq_u16(v42[1], v43);
      v44 = (v42 + v11);
      v45 = *(2 * a8 + 0x230);
      v290 = vrhaddq_u16(*v44, *(2 * a8 + 0x220));
      v291 = vrhaddq_u16(v44[1], v45);
      v46 = (v44 + v11);
      v47 = *(2 * a8 + 0x250);
      v292 = vrhaddq_u16(*v46, *(2 * a8 + 0x240));
      v293 = vrhaddq_u16(v46[1], v47);
      v48 = (v46 + v11);
      v49 = *(2 * a8 + 0x270);
      v294 = vrhaddq_u16(*v48, *(2 * a8 + 0x260));
      v295 = vrhaddq_u16(v48[1], v49);
      v50 = (v48 + v11);
      v51 = *(2 * a8 + 0x290);
      v296 = vrhaddq_u16(*v50, *(2 * a8 + 0x280));
      v297 = vrhaddq_u16(v50[1], v51);
      v52 = (v50 + v11);
      v53 = *(2 * a8 + 0x2B0);
      v298 = vrhaddq_u16(*v52, *(2 * a8 + 0x2A0));
      v299 = vrhaddq_u16(v52[1], v53);
      v54 = (v52 + v11);
      v55 = *(2 * a8 + 0x2D0);
      v300 = vrhaddq_u16(*v54, *(2 * a8 + 0x2C0));
      v301 = vrhaddq_u16(v54[1], v55);
      v56 = (v54 + v11);
      v57 = *(2 * a8 + 0x2F0);
      v302 = vrhaddq_u16(*v56, *(2 * a8 + 0x2E0));
      v303 = vrhaddq_u16(v56[1], v57);
      v58 = (v56 + v11);
      v59 = *(2 * a8 + 0x310);
      v304 = vrhaddq_u16(*v58, *(2 * a8 + 0x300));
      v305 = vrhaddq_u16(v58[1], v59);
      v60 = (v58 + v11);
      v61 = *(2 * a8 + 0x330);
      v306 = vrhaddq_u16(*v60, *(2 * a8 + 0x320));
      v307 = vrhaddq_u16(v60[1], v61);
      v62 = (v60 + v11);
      v63 = *(2 * a8 + 0x350);
      v308 = vrhaddq_u16(*v62, *(2 * a8 + 0x340));
      v309 = vrhaddq_u16(v62[1], v63);
      v64 = (v62 + v11);
      v65 = *(2 * a8 + 0x370);
      v310 = vrhaddq_u16(*v64, *(2 * a8 + 0x360));
      v311 = vrhaddq_u16(v64[1], v65);
      v66 = (v64 + v11);
      v67 = *(2 * a8 + 0x390);
      v312 = vrhaddq_u16(*v66, *(2 * a8 + 0x380));
      v313 = vrhaddq_u16(v66[1], v67);
      v68 = (v66 + v11);
      v69 = *(2 * a8 + 0x3B0);
      v314 = vrhaddq_u16(*v68, *(2 * a8 + 0x3A0));
      v315 = vrhaddq_u16(v68[1], v69);
      v70 = (v68 + v11);
      v71 = *(2 * a8 + 0x3D0);
      v316 = vrhaddq_u16(*v70, *(2 * a8 + 0x3C0));
      v317 = vrhaddq_u16(v70[1], v71);
      v72 = (v70 + v11);
      v73 = *(2 * a8 + 0x3F0);
      v318 = vrhaddq_u16(*v72, *(2 * a8 + 0x3E0));
      v319 = vrhaddq_u16(v72[1], v73);
    }

    v160 = 0;
    v161 = (2 * a5 + 16);
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    do
    {
      v162 = vsubq_s16(*(&v256 + v160), v161[-1]);
      v163 = vpadalq_s16(v82, v162);
      v164 = vmlal_s16(v80, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v81, v162, v162);
      v166 = vsubq_s16(*(&v256 + v160 + 16), *v161);
      v82 = vpadalq_s16(v163, v166);
      v80 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v81 = vmlal_high_s16(v165, v166, v166);
      v160 += 32;
      v161 = (v161 + 2 * a6);
    }

    while (v160 != 1024);
  }

  v252 = vaddvq_s32(v82);
  v253 = vaddlvq_u32(vaddq_s32(v81, v80));
  *a7 = v253;
  return v253 - ((v252 * v252) >> 9);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance32x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v353 = *MEMORY[0x277D85DE8];
  v8 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v105 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v285 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v286 = v105;
      v106 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v287 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v288 = v106;
      v107 = 2 * a2;
      v108 = &v8->i8[v107];
      v109 = &v289;
      v289 = vrhaddq_u16(*v108, *(v108 + 2));
      v290 = vrhaddq_u16(*(v108 + 1), *(v108 + 18));
      v291 = vrhaddq_u16(*(v108 + 2), *(v108 + 34));
      v292 = vrhaddq_u16(*(v108 + 3), *(v108 + 50));
      v110 = &v108[v107];
      v293 = vrhaddq_u16(*v110, *(v110 + 2));
      v294 = vrhaddq_u16(*(v110 + 1), *(v110 + 18));
      v295 = vrhaddq_u16(*(v110 + 2), *(v110 + 34));
      v296 = vrhaddq_u16(*(v110 + 3), *(v110 + 50));
      v111 = &v110[v107];
      v297 = vrhaddq_u16(*v111, *(v111 + 2));
      v298 = vrhaddq_u16(*(v111 + 1), *(v111 + 18));
      v299 = vrhaddq_u16(*(v111 + 2), *(v111 + 34));
      v300 = vrhaddq_u16(*(v111 + 3), *(v111 + 50));
      v112 = &v111[v107];
      v301 = vrhaddq_u16(*v112, *(v112 + 2));
      v302 = vrhaddq_u16(*(v112 + 1), *(v112 + 18));
      v303 = vrhaddq_u16(*(v112 + 2), *(v112 + 34));
      v304 = vrhaddq_u16(*(v112 + 3), *(v112 + 50));
      v113 = &v112[v107];
      v305 = vrhaddq_u16(*v113, *(v113 + 2));
      v306 = vrhaddq_u16(*(v113 + 1), *(v113 + 18));
      v307 = vrhaddq_u16(*(v113 + 2), *(v113 + 34));
      v308 = vrhaddq_u16(*(v113 + 3), *(v113 + 50));
      v114 = &v113[v107];
      v309 = vrhaddq_u16(*v114, *(v114 + 2));
      v310 = vrhaddq_u16(*(v114 + 1), *(v114 + 18));
      v311 = vrhaddq_u16(*(v114 + 2), *(v114 + 34));
      v312 = vrhaddq_u16(*(v114 + 3), *(v114 + 50));
      v115 = &v114[v107];
      v313 = vrhaddq_u16(*v115, *(v115 + 2));
      v314 = vrhaddq_u16(*(v115 + 1), *(v115 + 18));
      v315 = vrhaddq_u16(*(v115 + 2), *(v115 + 34));
      v316 = vrhaddq_u16(*(v115 + 3), *(v115 + 50));
      v116 = &v115[v107];
      v317 = vrhaddq_u16(*v116, *(v116 + 2));
      v318 = vrhaddq_u16(*(v116 + 1), *(v116 + 18));
      v319 = vrhaddq_u16(*(v116 + 2), *(v116 + 34));
      v320 = vrhaddq_u16(*(v116 + 3), *(v116 + 50));
      v117 = &v116[v107];
      v321 = vrhaddq_u16(*v117, *(v117 + 2));
      v322 = vrhaddq_u16(*(v117 + 16), *(v117 + 18));
      v323 = vrhaddq_u16(*(v117 + 32), *(v117 + 34));
      v324 = vrhaddq_u16(*(v117 + 48), *(v117 + 50));
      v118 = v117 + v107;
      v325 = vrhaddq_u16(*v118, *(v118 + 2));
      v326 = vrhaddq_u16(*(v118 + 16), *(v118 + 18));
      v327 = vrhaddq_u16(*(v118 + 32), *(v118 + 34));
      v328 = vrhaddq_u16(*(v118 + 48), *(v118 + 50));
      v119 = v118 + v107;
      v329 = vrhaddq_u16(*v119, *(v119 + 2));
      v330 = vrhaddq_u16(*(v119 + 16), *(v119 + 18));
      v331 = vrhaddq_u16(*(v119 + 32), *(v119 + 34));
      v332 = vrhaddq_u16(*(v119 + 48), *(v119 + 50));
      v120 = v119 + v107;
      v333 = vrhaddq_u16(*v120, *(v120 + 2));
      v334 = vrhaddq_u16(*(v120 + 16), *(v120 + 18));
      v335 = vrhaddq_u16(*(v120 + 32), *(v120 + 34));
      v336 = vrhaddq_u16(*(v120 + 48), *(v120 + 50));
      v121 = v120 + v107;
      v337 = vrhaddq_u16(*v121, *(v121 + 2));
      v338 = vrhaddq_u16(*(v121 + 16), *(v121 + 18));
      v339 = vrhaddq_u16(*(v121 + 32), *(v121 + 34));
      v340 = vrhaddq_u16(*(v121 + 48), *(v121 + 50));
      v122 = v121 + v107;
      v341 = vrhaddq_u16(*v122, *(v122 + 2));
      v342 = vrhaddq_u16(*(v122 + 16), *(v122 + 18));
      v343 = vrhaddq_u16(*(v122 + 32), *(v122 + 34));
      v344 = vrhaddq_u16(*(v122 + 48), *(v122 + 50));
      v123 = v122 + v107;
      v345 = vrhaddq_u16(*v123, *(v123 + 2));
      v346 = vrhaddq_u16(*(v123 + 16), *(v123 + 18));
      v347 = vrhaddq_u16(*(v123 + 32), *(v123 + 34));
      v348 = vrhaddq_u16(*(v123 + 48), *(v123 + 50));
      v124 = v123 + v107;
      v349 = vrhaddq_u16(*v124, *(v124 + 2));
      v350 = vrhaddq_u16(*(v124 + 16), *(v124 + 18));
      v351 = vrhaddq_u16(*(v124 + 32), *(v124 + 34));
      v352 = vrhaddq_u16(*(v124 + 48), *(v124 + 50));
      v125 = 2 * a8;
      v126 = v285;
      v127 = 112;
      do
      {
        v129 = v109[-1];
        v128 = *v109;
        v130 = v109[-2];
        v131 = v109[2];
        v132 = vrhaddq_u16(vrhaddq_u16(v109[-3], v109[1]), *(v125 + v127 - 96));
        v133 = &v284[v127];
        v133[-7] = vrhaddq_u16(vrhaddq_u16(v126, *v109), *(v125 + v127 - 112));
        v133[-6] = v132;
        v134 = vrhaddq_u16(vrhaddq_u16(v129, v109[3]), *(v125 + v127 - 64));
        v133[-5] = vrhaddq_u16(vrhaddq_u16(v130, v131), *(v125 + v127 - 80));
        v133[-4] = v134;
        v127 += 64;
        v109 += 4;
        v126 = v128;
      }

      while (v127 != 1136);
      v135 = 0;
      v136 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v137 = vsubq_s16(*&v284[v135], v136[-2]);
        v138 = vpadalq_s16(v66, v137);
        v139 = vmlal_s16(v64, *v137.i8, *v137.i8);
        v140 = vmlal_high_s16(v65, v137, v137);
        v141 = vsubq_s16(*&v284[v135 + 16], v136[-1]);
        v142 = vpadalq_s16(v138, v141);
        v143 = vmlal_s16(v139, *v141.i8, *v141.i8);
        v144 = vmlal_high_s16(v140, v141, v141);
        v145 = vsubq_s16(*&v284[v135 + 32], *v136);
        v146 = vpadalq_s16(v142, v145);
        v147 = vmlal_s16(v143, *v145.i8, *v145.i8);
        v148 = vmlal_high_s16(v144, v145, v145);
        v149 = vsubq_s16(*&v284[v135 + 48], v136[1]);
        v66 = vpadalq_s16(v146, v149);
        v64 = vmlal_s16(v147, *v149.i8, *v149.i8);
        v65 = vmlal_high_s16(v148, v149, v149);
        v135 += 64;
        v136 = (v136 + 2 * a6);
      }

      while (v135 != 1024);
    }

    else if (a4)
    {
      v171 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v285 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v286 = v171;
      v172 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v287 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v288 = v172;
      v173 = 2 * a2;
      v174 = &v8->i8[v173];
      v175 = &v289;
      v289 = vrhaddq_u16(*v174, *(v174 + 2));
      v290 = vrhaddq_u16(*(v174 + 1), *(v174 + 18));
      v291 = vrhaddq_u16(*(v174 + 2), *(v174 + 34));
      v292 = vrhaddq_u16(*(v174 + 3), *(v174 + 50));
      v176 = &v174[v173];
      v293 = vrhaddq_u16(*v176, *(v176 + 2));
      v294 = vrhaddq_u16(*(v176 + 1), *(v176 + 18));
      v295 = vrhaddq_u16(*(v176 + 2), *(v176 + 34));
      v296 = vrhaddq_u16(*(v176 + 3), *(v176 + 50));
      v177 = &v176[v173];
      v297 = vrhaddq_u16(*v177, *(v177 + 2));
      v298 = vrhaddq_u16(*(v177 + 1), *(v177 + 18));
      v299 = vrhaddq_u16(*(v177 + 2), *(v177 + 34));
      v300 = vrhaddq_u16(*(v177 + 3), *(v177 + 50));
      v178 = &v177[v173];
      v301 = vrhaddq_u16(*v178, *(v178 + 2));
      v302 = vrhaddq_u16(*(v178 + 1), *(v178 + 18));
      v303 = vrhaddq_u16(*(v178 + 2), *(v178 + 34));
      v304 = vrhaddq_u16(*(v178 + 3), *(v178 + 50));
      v179 = &v178[v173];
      v305 = vrhaddq_u16(*v179, *(v179 + 2));
      v306 = vrhaddq_u16(*(v179 + 1), *(v179 + 18));
      v307 = vrhaddq_u16(*(v179 + 2), *(v179 + 34));
      v308 = vrhaddq_u16(*(v179 + 3), *(v179 + 50));
      v180 = &v179[v173];
      v309 = vrhaddq_u16(*v180, *(v180 + 2));
      v310 = vrhaddq_u16(*(v180 + 1), *(v180 + 18));
      v311 = vrhaddq_u16(*(v180 + 2), *(v180 + 34));
      v312 = vrhaddq_u16(*(v180 + 3), *(v180 + 50));
      v181 = &v180[v173];
      v313 = vrhaddq_u16(*v181, *(v181 + 2));
      v314 = vrhaddq_u16(*(v181 + 1), *(v181 + 18));
      v315 = vrhaddq_u16(*(v181 + 2), *(v181 + 34));
      v316 = vrhaddq_u16(*(v181 + 3), *(v181 + 50));
      v182 = &v181[v173];
      v317 = vrhaddq_u16(*v182, *(v182 + 2));
      v318 = vrhaddq_u16(*(v182 + 1), *(v182 + 18));
      v319 = vrhaddq_u16(*(v182 + 2), *(v182 + 34));
      v320 = vrhaddq_u16(*(v182 + 3), *(v182 + 50));
      v183 = &v182[v173];
      v321 = vrhaddq_u16(*v183, *(v183 + 2));
      v322 = vrhaddq_u16(*(v183 + 16), *(v183 + 18));
      v323 = vrhaddq_u16(*(v183 + 32), *(v183 + 34));
      v324 = vrhaddq_u16(*(v183 + 48), *(v183 + 50));
      v184 = v183 + v173;
      v325 = vrhaddq_u16(*v184, *(v184 + 2));
      v326 = vrhaddq_u16(*(v184 + 16), *(v184 + 18));
      v327 = vrhaddq_u16(*(v184 + 32), *(v184 + 34));
      v328 = vrhaddq_u16(*(v184 + 48), *(v184 + 50));
      v185 = v184 + v173;
      v329 = vrhaddq_u16(*v185, *(v185 + 2));
      v330 = vrhaddq_u16(*(v185 + 16), *(v185 + 18));
      v331 = vrhaddq_u16(*(v185 + 32), *(v185 + 34));
      v332 = vrhaddq_u16(*(v185 + 48), *(v185 + 50));
      v186 = v185 + v173;
      v333 = vrhaddq_u16(*v186, *(v186 + 2));
      v334 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
      v335 = vrhaddq_u16(*(v186 + 32), *(v186 + 34));
      v336 = vrhaddq_u16(*(v186 + 48), *(v186 + 50));
      v187 = v186 + v173;
      v337 = vrhaddq_u16(*v187, *(v187 + 2));
      v338 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
      v339 = vrhaddq_u16(*(v187 + 32), *(v187 + 34));
      v340 = vrhaddq_u16(*(v187 + 48), *(v187 + 50));
      v188 = v187 + v173;
      v341 = vrhaddq_u16(*v188, *(v188 + 2));
      v342 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
      v343 = vrhaddq_u16(*(v188 + 32), *(v188 + 34));
      v344 = vrhaddq_u16(*(v188 + 48), *(v188 + 50));
      v189 = v188 + v173;
      v345 = vrhaddq_u16(*v189, *(v189 + 2));
      v346 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
      v347 = vrhaddq_u16(*(v189 + 32), *(v189 + 34));
      v348 = vrhaddq_u16(*(v189 + 48), *(v189 + 50));
      v190 = v189 + v173;
      v349 = vrhaddq_u16(*v190, *(v190 + 2));
      v350 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
      v351 = vrhaddq_u16(*(v190 + 32), *(v190 + 34));
      v352 = vrhaddq_u16(*(v190 + 48), *(v190 + 50));
      v191 = vdupq_n_s16(8 - a4);
      v192 = 2 * a8;
      v193 = vdupq_n_s16(a4);
      v194 = v285;
      v195 = 112;
      do
      {
        v197 = v175[-1];
        v196 = *v175;
        v198 = v175[-2];
        v199 = v175[2];
        v200 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v175[-3], v191), v175[1], v193), 3uLL), *(v192 + v195 - 96));
        v201 = &v284[v195];
        v201[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v194, v191), *v175, v193), 3uLL), *(v192 + v195 - 112));
        v201[-6] = v200;
        v202 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v197, v191), v175[3], v193), 3uLL), *(v192 + v195 - 64));
        v201[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v198, v191), v199, v193), 3uLL), *(v192 + v195 - 80));
        v201[-4] = v202;
        v195 += 64;
        v175 += 4;
        v194 = v196;
      }

      while (v195 != 1136);
      v203 = 0;
      v204 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v205 = vsubq_s16(*&v284[v203], v204[-2]);
        v206 = vpadalq_s16(v66, v205);
        v207 = vmlal_s16(v64, *v205.i8, *v205.i8);
        v208 = vmlal_high_s16(v65, v205, v205);
        v209 = vsubq_s16(*&v284[v203 + 16], v204[-1]);
        v210 = vpadalq_s16(v206, v209);
        v211 = vmlal_s16(v207, *v209.i8, *v209.i8);
        v212 = vmlal_high_s16(v208, v209, v209);
        v213 = vsubq_s16(*&v284[v203 + 32], *v204);
        v214 = vpadalq_s16(v210, v213);
        v215 = vmlal_s16(v211, *v213.i8, *v213.i8);
        v216 = vmlal_high_s16(v212, v213, v213);
        v217 = vsubq_s16(*&v284[v203 + 48], v204[1]);
        v66 = vpadalq_s16(v214, v217);
        v64 = vmlal_s16(v215, *v217.i8, *v217.i8);
        v65 = vmlal_high_s16(v216, v217, v217);
        v203 += 64;
        v204 = (v204 + 2 * a6);
      }

      while (v203 != 1024);
    }

    else
    {
      v58 = 0;
      v59 = 2 * a8;
      v60 = v8 + 2;
      do
      {
        v61 = (&v285 + v58);
        *v61 = vrhaddq_u16(vrhaddq_u16(v60[-2], *(v60 - 30)), *(v59 + v58));
        v61[1] = vrhaddq_u16(vrhaddq_u16(v60[-1], *(v60 - 14)), *(v59 + v58 + 16));
        v61[2] = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2)), *(v59 + v58 + 32));
        v61[3] = vrhaddq_u16(vrhaddq_u16(v60[1], *(v60 + 18)), *(v59 + v58 + 48));
        v58 += 64;
        v60 = (v60 + 2 * a2);
      }

      while (v58 != 1024);
      v62 = 0;
      v63 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v67 = vsubq_s16(*(&v285 + v62), v63[-2]);
        v68 = vpadalq_s16(v66, v67);
        v69 = vmlal_s16(v64, *v67.i8, *v67.i8);
        v70 = vmlal_high_s16(v65, v67, v67);
        v71 = vsubq_s16(*(&v285 + v62 + 16), v63[-1]);
        v72 = vpadalq_s16(v68, v71);
        v73 = vmlal_s16(v69, *v71.i8, *v71.i8);
        v74 = vmlal_high_s16(v70, v71, v71);
        v75 = vsubq_s16(*(&v287 + v62), *v63);
        v76 = vpadalq_s16(v72, v75);
        v77 = vmlal_s16(v73, *v75.i8, *v75.i8);
        v78 = vmlal_high_s16(v74, v75, v75);
        v79 = vsubq_s16(*(&v288 + v62), v63[1]);
        v66 = vpadalq_s16(v76, v79);
        v64 = vmlal_s16(v77, *v79.i8, *v79.i8);
        v65 = vmlal_high_s16(v78, v79, v79);
        v62 += 64;
        v63 = (v63 + 2 * a6);
      }

      while (v62 != 1024);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v218 = 0;
      v219 = vdupq_n_s16(8 - a3);
      v220 = vdupq_n_s16(a3);
      v221 = v8 + 2;
      do
      {
        v222 = (&v285 + v218);
        *v222 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v221[-2], v219), *(&v221[-2] + 2), v220), 3uLL);
        v222[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v221[-1], v219), *(&v221[-1] + 2), v220), 3uLL);
        v222[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v221, v219), *(v221 + 2), v220), 3uLL);
        v222[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v221[1], v219), *(&v221[1] + 2), v220), 3uLL);
        v218 += 64;
        v221 = (v221 + 2 * a2);
      }

      while (v218 != 1088);
      v223 = 2 * a8;
      v224 = v285;
      v225 = &v289;
      v226 = 112;
      do
      {
        v228 = v225[-1];
        v227 = *v225;
        v229 = v225[-2];
        v230 = v225[2];
        v231 = vrhaddq_u16(vrhaddq_u16(v225[-3], v225[1]), *(v223 + v226 - 96));
        v232 = &v284[v226];
        v232[-7] = vrhaddq_u16(vrhaddq_u16(v224, *v225), *(v223 + v226 - 112));
        v232[-6] = v231;
        v233 = vrhaddq_u16(vrhaddq_u16(v228, v225[3]), *(v223 + v226 - 64));
        v232[-5] = vrhaddq_u16(vrhaddq_u16(v229, v230), *(v223 + v226 - 80));
        v232[-4] = v233;
        v226 += 64;
        v225 += 4;
        v224 = v227;
      }

      while (v226 != 1136);
      v234 = 0;
      v235 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v236 = vsubq_s16(*&v284[v234], v235[-2]);
        v237 = vpadalq_s16(v66, v236);
        v238 = vmlal_s16(v64, *v236.i8, *v236.i8);
        v239 = vmlal_high_s16(v65, v236, v236);
        v240 = vsubq_s16(*&v284[v234 + 16], v235[-1]);
        v241 = vpadalq_s16(v237, v240);
        v242 = vmlal_s16(v238, *v240.i8, *v240.i8);
        v243 = vmlal_high_s16(v239, v240, v240);
        v244 = vsubq_s16(*&v284[v234 + 32], *v235);
        v245 = vpadalq_s16(v241, v244);
        v246 = vmlal_s16(v242, *v244.i8, *v244.i8);
        v247 = vmlal_high_s16(v243, v244, v244);
        v248 = vsubq_s16(*&v284[v234 + 48], v235[1]);
        v66 = vpadalq_s16(v245, v248);
        v64 = vmlal_s16(v246, *v248.i8, *v248.i8);
        v65 = vmlal_high_s16(v247, v248, v248);
        v234 += 64;
        v235 = (v235 + 2 * a6);
      }

      while (v234 != 1024);
    }

    else
    {
      v80 = 0;
      if (a4)
      {
        v249 = vdupq_n_s16(8 - a3);
        v250 = vdupq_n_s16(a3);
        v251 = v8 + 2;
        do
        {
          v252 = (&v285 + v80);
          *v252 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v251[-2], v249), *(&v251[-2] + 2), v250), 3uLL);
          v252[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v251[-1], v249), *(&v251[-1] + 2), v250), 3uLL);
          v252[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v251, v249), *(v251 + 2), v250), 3uLL);
          v252[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v251[1], v249), *(&v251[1] + 2), v250), 3uLL);
          v80 += 64;
          v251 = (v251 + 2 * a2);
        }

        while (v80 != 1088);
        v253 = vdupq_n_s16(8 - a4);
        v254 = vdupq_n_s16(a4);
        v255 = 2 * a8;
        v256 = v285;
        v257 = &v289;
        v258 = 112;
        do
        {
          v260 = v257[-1];
          v259 = *v257;
          v261 = v257[-2];
          v262 = v257[2];
          v263 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v257[-3], v253), v257[1], v254), 3uLL), *(v255 + v258 - 96));
          v264 = &v284[v258];
          v264[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v256, v253), *v257, v254), 3uLL), *(v255 + v258 - 112));
          v264[-6] = v263;
          v265 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v260, v253), v257[3], v254), 3uLL), *(v255 + v258 - 64));
          v264[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v261, v253), v262, v254), 3uLL), *(v255 + v258 - 80));
          v264[-4] = v265;
          v258 += 64;
          v257 += 4;
          v256 = v259;
        }

        while (v258 != 1136);
        v266 = 0;
        v267 = (2 * a5 + 32);
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        do
        {
          v268 = vsubq_s16(*&v284[v266], v267[-2]);
          v269 = vpadalq_s16(v66, v268);
          v270 = vmlal_s16(v64, *v268.i8, *v268.i8);
          v271 = vmlal_high_s16(v65, v268, v268);
          v272 = vsubq_s16(*&v284[v266 + 16], v267[-1]);
          v273 = vpadalq_s16(v269, v272);
          v274 = vmlal_s16(v270, *v272.i8, *v272.i8);
          v275 = vmlal_high_s16(v271, v272, v272);
          v276 = vsubq_s16(*&v284[v266 + 32], *v267);
          v277 = vpadalq_s16(v273, v276);
          v278 = vmlal_s16(v274, *v276.i8, *v276.i8);
          v279 = vmlal_high_s16(v275, v276, v276);
          v280 = vsubq_s16(*&v284[v266 + 48], v267[1]);
          v66 = vpadalq_s16(v277, v280);
          v64 = vmlal_s16(v278, *v280.i8, *v280.i8);
          v65 = vmlal_high_s16(v279, v280, v280);
          v266 += 64;
          v267 = (v267 + 2 * a6);
        }

        while (v266 != 1024);
      }

      else
      {
        v81 = 2 * a8;
        v82 = vdupq_n_s16(8 - a3);
        v83 = vdupq_n_s16(a3);
        v84 = v8 + 2;
        do
        {
          v85 = (&v285 + v80);
          *v85 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84[-2], v82), *(&v84[-2] + 2), v83), 3uLL), *(v81 + v80));
          v85[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84[-1], v82), *(&v84[-1] + 2), v83), 3uLL), *(v81 + v80 + 16));
          v85[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v84, v82), *(v84 + 2), v83), 3uLL), *(v81 + v80 + 32));
          v85[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84[1], v82), *(&v84[1] + 2), v83), 3uLL), *(v81 + v80 + 48));
          v80 += 64;
          v84 = (v84 + 2 * a2);
        }

        while (v80 != 1024);
        v86 = 0;
        v87 = (2 * a5 + 32);
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        do
        {
          v88 = vsubq_s16(*(&v285 + v86), v87[-2]);
          v89 = vpadalq_s16(v66, v88);
          v90 = vmlal_s16(v64, *v88.i8, *v88.i8);
          v91 = vmlal_high_s16(v65, v88, v88);
          v92 = vsubq_s16(*(&v285 + v86 + 16), v87[-1]);
          v93 = vpadalq_s16(v89, v92);
          v94 = vmlal_s16(v90, *v92.i8, *v92.i8);
          v95 = vmlal_high_s16(v91, v92, v92);
          v96 = vsubq_s16(*(&v287 + v86), *v87);
          v97 = vpadalq_s16(v93, v96);
          v98 = vmlal_s16(v94, *v96.i8, *v96.i8);
          v99 = vmlal_high_s16(v95, v96, v96);
          v100 = vsubq_s16(*(&v288 + v86), v87[1]);
          v66 = vpadalq_s16(v97, v100);
          v64 = vmlal_s16(v98, *v100.i8, *v100.i8);
          v65 = vmlal_high_s16(v99, v100, v100);
          v86 += 64;
          v87 = (v87 + 2 * a6);
        }

        while (v86 != 1024);
      }
    }
  }

  else
  {
    v9 = (2 * a8);
    if (a4 == 4)
    {
      v101 = 0;
      v102 = 2 * a2;
      v103 = v8 + 2;
      do
      {
        v104 = (&v285 + v101 * 16);
        *v104 = vrhaddq_u16(vrhaddq_u16(v103[-2], *(&v103[-2] + v102)), v9[v101]);
        v104[1] = vrhaddq_u16(vrhaddq_u16(v103[-1], *(&v103[-1] + v102)), v9[v101 + 1]);
        v104[2] = vrhaddq_u16(vrhaddq_u16(*v103, *(v103 + 2 * a2)), v9[v101 + 2]);
        v104[3] = vrhaddq_u16(vrhaddq_u16(v103[1], *(&v103[1] + v102)), v9[v101 + 3]);
        v101 += 4;
        v103 = (v103 + v102);
      }

      while ((v101 * 16) != 1024);
    }

    else if (a4)
    {
      v150 = 0;
      v151 = vdupq_n_s16(8 - a4);
      v152 = vdupq_n_s16(a4);
      v153 = 2 * a2;
      v154 = &v8[2];
      do
      {
        v155 = (&v285 + v150 * 16);
        *v155 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154[-2], v151), *(&v154[-2] + v153), v152), 3uLL), v9[v150]);
        v155[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154[-1], v151), *(&v154[-1] + v153), v152), 3uLL), v9[v150 + 1]);
        v155[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v154, v151), *(v154 + 2 * a2), v152), 3uLL), v9[v150 + 2]);
        v155[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154[1], v151), *(&v154[1] + v153), v152), 3uLL), v9[v150 + 3]);
        v150 += 4;
        v154 = (v154 + v153);
      }

      while ((v150 * 16) != 1024);
    }

    else
    {
      v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
      v285 = vrhaddq_u16(*v8, *v9);
      v286 = v10;
      v11 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a8 + 0x30));
      v287 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a8 + 0x20));
      v288 = v11;
      v12 = 2 * a2;
      v13 = (v8 + v12);
      v14 = *(2 * a8 + 0x50);
      v289 = vrhaddq_u16(*v13, *(2 * a8 + 0x40));
      v290 = vrhaddq_u16(v13[1], v14);
      v15 = *(2 * a8 + 0x70);
      v291 = vrhaddq_u16(v13[2], *(2 * a8 + 0x60));
      v292 = vrhaddq_u16(v13[3], v15);
      v16 = (v13 + v12);
      v17 = *(2 * a8 + 0x90);
      v293 = vrhaddq_u16(*v16, *(2 * a8 + 0x80));
      v294 = vrhaddq_u16(v16[1], v17);
      v18 = *(2 * a8 + 0xB0);
      v295 = vrhaddq_u16(v16[2], *(2 * a8 + 0xA0));
      v296 = vrhaddq_u16(v16[3], v18);
      v19 = (v16 + v12);
      v20 = *(2 * a8 + 0xD0);
      v297 = vrhaddq_u16(*v19, *(2 * a8 + 0xC0));
      v298 = vrhaddq_u16(v19[1], v20);
      v21 = *(2 * a8 + 0xF0);
      v299 = vrhaddq_u16(v19[2], *(2 * a8 + 0xE0));
      v300 = vrhaddq_u16(v19[3], v21);
      v22 = (v19 + v12);
      v23 = *(2 * a8 + 0x110);
      v301 = vrhaddq_u16(*v22, *(2 * a8 + 0x100));
      v302 = vrhaddq_u16(v22[1], v23);
      v24 = *(2 * a8 + 0x130);
      v303 = vrhaddq_u16(v22[2], *(2 * a8 + 0x120));
      v304 = vrhaddq_u16(v22[3], v24);
      v25 = (v22 + v12);
      v26 = *(2 * a8 + 0x150);
      v305 = vrhaddq_u16(*v25, *(2 * a8 + 0x140));
      v306 = vrhaddq_u16(v25[1], v26);
      v27 = *(2 * a8 + 0x170);
      v307 = vrhaddq_u16(v25[2], *(2 * a8 + 0x160));
      v308 = vrhaddq_u16(v25[3], v27);
      v28 = (v25 + v12);
      v29 = *(2 * a8 + 0x190);
      v309 = vrhaddq_u16(*v28, *(2 * a8 + 0x180));
      v310 = vrhaddq_u16(v28[1], v29);
      v30 = *(2 * a8 + 0x1B0);
      v311 = vrhaddq_u16(v28[2], *(2 * a8 + 0x1A0));
      v312 = vrhaddq_u16(v28[3], v30);
      v31 = (v28 + v12);
      v32 = *(2 * a8 + 0x1D0);
      v313 = vrhaddq_u16(*v31, *(2 * a8 + 0x1C0));
      v314 = vrhaddq_u16(v31[1], v32);
      v33 = *(2 * a8 + 0x1F0);
      v315 = vrhaddq_u16(v31[2], *(2 * a8 + 0x1E0));
      v316 = vrhaddq_u16(v31[3], v33);
      v34 = (v31 + v12);
      v35 = *(2 * a8 + 0x210);
      v317 = vrhaddq_u16(*v34, *(2 * a8 + 0x200));
      v318 = vrhaddq_u16(v34[1], v35);
      v36 = *(2 * a8 + 0x230);
      v319 = vrhaddq_u16(v34[2], *(2 * a8 + 0x220));
      v320 = vrhaddq_u16(v34[3], v36);
      v37 = (v34 + v12);
      v38 = *(2 * a8 + 0x250);
      v321 = vrhaddq_u16(*v37, *(2 * a8 + 0x240));
      v322 = vrhaddq_u16(v37[1], v38);
      v39 = *(2 * a8 + 0x270);
      v323 = vrhaddq_u16(v37[2], *(2 * a8 + 0x260));
      v324 = vrhaddq_u16(v37[3], v39);
      v40 = (v37 + v12);
      v41 = *(2 * a8 + 0x290);
      v325 = vrhaddq_u16(*v40, *(2 * a8 + 0x280));
      v326 = vrhaddq_u16(v40[1], v41);
      v42 = *(2 * a8 + 0x2B0);
      v327 = vrhaddq_u16(v40[2], *(2 * a8 + 0x2A0));
      v328 = vrhaddq_u16(v40[3], v42);
      v43 = (v40 + v12);
      v44 = *(2 * a8 + 0x2D0);
      v329 = vrhaddq_u16(*v43, *(2 * a8 + 0x2C0));
      v330 = vrhaddq_u16(v43[1], v44);
      v45 = *(2 * a8 + 0x2F0);
      v331 = vrhaddq_u16(v43[2], *(2 * a8 + 0x2E0));
      v332 = vrhaddq_u16(v43[3], v45);
      v46 = (v43 + v12);
      v47 = *(2 * a8 + 0x310);
      v333 = vrhaddq_u16(*v46, *(2 * a8 + 0x300));
      v334 = vrhaddq_u16(v46[1], v47);
      v48 = *(2 * a8 + 0x330);
      v335 = vrhaddq_u16(v46[2], *(2 * a8 + 0x320));
      v336 = vrhaddq_u16(v46[3], v48);
      v49 = (v46 + v12);
      v50 = *(2 * a8 + 0x350);
      v337 = vrhaddq_u16(*v49, *(2 * a8 + 0x340));
      v338 = vrhaddq_u16(v49[1], v50);
      v51 = *(2 * a8 + 0x370);
      v339 = vrhaddq_u16(v49[2], *(2 * a8 + 0x360));
      v340 = vrhaddq_u16(v49[3], v51);
      v52 = (v49 + v12);
      v53 = *(2 * a8 + 0x390);
      v341 = vrhaddq_u16(*v52, *(2 * a8 + 0x380));
      v342 = vrhaddq_u16(v52[1], v53);
      v54 = *(2 * a8 + 0x3B0);
      v343 = vrhaddq_u16(v52[2], *(2 * a8 + 0x3A0));
      v344 = vrhaddq_u16(v52[3], v54);
      v55 = (v52 + v12);
      v56 = *(2 * a8 + 0x3D0);
      v345 = vrhaddq_u16(*v55, *(2 * a8 + 0x3C0));
      v346 = vrhaddq_u16(v55[1], v56);
      v57 = *(2 * a8 + 0x3F0);
      v347 = vrhaddq_u16(v55[2], *(2 * a8 + 0x3E0));
      v348 = vrhaddq_u16(v55[3], v57);
    }

    v156 = 0;
    v157 = (2 * a5 + 32);
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    do
    {
      v158 = vsubq_s16(*(&v285 + v156), v157[-2]);
      v159 = vpadalq_s16(v66, v158);
      v160 = vmlal_s16(v64, *v158.i8, *v158.i8);
      v161 = vmlal_high_s16(v65, v158, v158);
      v162 = vsubq_s16(*(&v285 + v156 + 16), v157[-1]);
      v163 = vpadalq_s16(v159, v162);
      v164 = vmlal_s16(v160, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v161, v162, v162);
      v166 = vsubq_s16(*(&v287 + v156), *v157);
      v167 = vpadalq_s16(v163, v166);
      v168 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v169 = vmlal_high_s16(v165, v166, v166);
      v170 = vsubq_s16(*(&v288 + v156), v157[1]);
      v66 = vpadalq_s16(v167, v170);
      v64 = vmlal_s16(v168, *v170.i8, *v170.i8);
      v65 = vmlal_high_s16(v169, v170, v170);
      v156 += 64;
      v157 = (v157 + 2 * a6);
    }

    while (v156 != 1024);
  }

  v281 = vaddvq_s32(v66);
  v282 = vaddlvq_u32(vaddq_s32(v65, v64));
  *a7 = v282;
  return v282 - ((v281 * v281) >> 9);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance32x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v216[257] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v66 = 0;
      v67 = v11 + 2;
      do
      {
        v68 = &v215[v66];
        *v68 = vrhaddq_u16(*(v67 - 2), *(v67 - 30));
        v68[1] = vrhaddq_u16(*(v67 - 1), *(v67 - 14));
        v68[2] = vrhaddq_u16(*v67, *(v67 + 2));
        v68[3] = vrhaddq_u16(*(v67 + 1), *(v67 + 18));
        v66 += 4;
        v67 = (v67 + 2 * v4);
      }

      while ((v66 * 16) != 2112);
      v69 = 2 * v10;
      v70 = v215[0];
      v71 = v216;
      v72 = 112;
      do
      {
        v74 = v71[-1];
        v73 = *v71;
        v75 = v71[-2];
        v76 = v71[2];
        v77 = vrhaddq_u16(vrhaddq_u16(v71[-3], v71[1]), *(v69 + v72 - 96));
        v78 = &v214[v72];
        v78[-7] = vrhaddq_u16(vrhaddq_u16(v70, *v71), *(v69 + v72 - 112));
        v78[-6] = v77;
        v79 = vrhaddq_u16(vrhaddq_u16(v74, v71[3]), *(v69 + v72 - 64));
        v78[-5] = vrhaddq_u16(vrhaddq_u16(v75, v76), *(v69 + v72 - 80));
        v78[-4] = v79;
        v72 += 64;
        v71 += 4;
        v70 = v73;
      }

      while (v72 != 2160);
      v80 = 0;
      v81 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v82 = vsubq_s16(*&v214[v80], v81[-2]);
        v83 = vpadalq_s16(v24, v82);
        v84 = vmlal_s16(v22, *v82.i8, *v82.i8);
        v85 = vmlal_high_s16(v23, v82, v82);
        v86 = vsubq_s16(*&v214[v80 + 16], v81[-1]);
        v87 = vpadalq_s16(v83, v86);
        v88 = vmlal_s16(v84, *v86.i8, *v86.i8);
        v89 = vmlal_high_s16(v85, v86, v86);
        v90 = vsubq_s16(*&v214[v80 + 32], *v81);
        v91 = vpadalq_s16(v87, v90);
        v92 = vmlal_s16(v88, *v90.i8, *v90.i8);
        v93 = vmlal_high_s16(v89, v90, v90);
        v94 = vsubq_s16(*&v214[v80 + 48], v81[1]);
        v24 = vpadalq_s16(v91, v94);
        v22 = vmlal_s16(v92, *v94.i8, *v94.i8);
        v23 = vmlal_high_s16(v93, v94, v94);
        v80 += 64;
        v81 = (v81 + 2 * v8);
      }

      while (v80 != 2048);
    }

    else
    {
      v16 = 0;
      if (v6)
      {
        v118 = v11 + 2;
        do
        {
          v119 = &v215[v16 / 0x10];
          *v119 = vrhaddq_u16(*(v118 - 2), *(v118 - 30));
          v119[1] = vrhaddq_u16(*(v118 - 1), *(v118 - 14));
          v119[2] = vrhaddq_u16(*v118, *(v118 + 2));
          v119[3] = vrhaddq_u16(*(v118 + 1), *(v118 + 18));
          v16 += 64;
          v118 = (v118 + 2 * v4);
        }

        while (v16 != 2112);
        v120 = vdupq_n_s16(8 - v6);
        v121 = vdupq_n_s16(v6);
        v122 = 2 * v10;
        v123 = v215[0];
        v124 = v216;
        v125 = 112;
        do
        {
          v127 = v124[-1];
          v126 = *v124;
          v128 = v124[-2];
          v129 = v124[2];
          v130 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v124[-3], v120), v124[1], v121), 3uLL), *(v122 + v125 - 96));
          v131 = &v214[v125];
          v131[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v123, v120), *v124, v121), 3uLL), *(v122 + v125 - 112));
          v131[-6] = v130;
          v132 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v127, v120), v124[3], v121), 3uLL), *(v122 + v125 - 64));
          v131[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v128, v120), v129, v121), 3uLL), *(v122 + v125 - 80));
          v131[-4] = v132;
          v125 += 64;
          v124 += 4;
          v123 = v126;
        }

        while (v125 != 2160);
        v133 = 0;
        v134 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v135 = vsubq_s16(*&v214[v133], v134[-2]);
          v136 = vpadalq_s16(v24, v135);
          v137 = vmlal_s16(v22, *v135.i8, *v135.i8);
          v138 = vmlal_high_s16(v23, v135, v135);
          v139 = vsubq_s16(*&v214[v133 + 16], v134[-1]);
          v140 = vpadalq_s16(v136, v139);
          v141 = vmlal_s16(v137, *v139.i8, *v139.i8);
          v142 = vmlal_high_s16(v138, v139, v139);
          v143 = vsubq_s16(*&v214[v133 + 32], *v134);
          v144 = vpadalq_s16(v140, v143);
          v145 = vmlal_s16(v141, *v143.i8, *v143.i8);
          v146 = vmlal_high_s16(v142, v143, v143);
          v147 = vsubq_s16(*&v214[v133 + 48], v134[1]);
          v24 = vpadalq_s16(v144, v147);
          v22 = vmlal_s16(v145, *v147.i8, *v147.i8);
          v23 = vmlal_high_s16(v146, v147, v147);
          v133 += 64;
          v134 = (v134 + 2 * v8);
        }

        while (v133 != 2048);
      }

      else
      {
        v17 = 2 * v10;
        v18 = v11 + 2;
        do
        {
          v19 = &v215[v16 / 0x10];
          *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16));
          v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 16));
          v19[2] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 32));
          v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 48));
          v16 += 64;
          v18 = (v18 + 2 * v4);
        }

        while (v16 != 2048);
        v20 = 0;
        v21 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v25 = vsubq_s16(v215[v20], v21[-2]);
          v26 = vpadalq_s16(v24, v25);
          v27 = vmlal_s16(v22, *v25.i8, *v25.i8);
          v28 = vmlal_high_s16(v23, v25, v25);
          v29 = vsubq_s16(v215[v20 + 1], v21[-1]);
          v30 = vpadalq_s16(v26, v29);
          v31 = vmlal_s16(v27, *v29.i8, *v29.i8);
          v32 = vmlal_high_s16(v28, v29, v29);
          v33 = vsubq_s16(v215[v20 + 2], *v21);
          v34 = vpadalq_s16(v30, v33);
          v35 = vmlal_s16(v31, *v33.i8, *v33.i8);
          v36 = vmlal_high_s16(v32, v33, v33);
          v37 = vsubq_s16(v215[v20 + 3], v21[1]);
          v24 = vpadalq_s16(v34, v37);
          v22 = vmlal_s16(v35, *v37.i8, *v37.i8);
          v23 = vmlal_high_s16(v36, v37, v37);
          v20 += 4;
          v21 = (v21 + 2 * v8);
        }

        while ((v20 * 16) != 2048);
      }
    }
  }

  else if (v5)
  {
    if (v6 == 4)
    {
      v148 = 0;
      v149 = vdupq_n_s16(8 - v5);
      v150 = vdupq_n_s16(v5);
      v151 = v11 + 2;
      do
      {
        v152 = &v215[v148];
        *v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v151 - 2), v149), *(v151 - 30), v150), 3uLL);
        v152[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v151 - 1), v149), *(v151 - 14), v150), 3uLL);
        v152[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v151, v149), *(v151 + 2), v150), 3uLL);
        v152[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v151 + 1), v149), *(v151 + 18), v150), 3uLL);
        v148 += 4;
        v151 = (v151 + 2 * v4);
      }

      while ((v148 * 16) != 2112);
      v153 = 2 * v10;
      v154 = v215[0];
      v155 = v216;
      v156 = 112;
      do
      {
        v158 = v155[-1];
        v157 = *v155;
        v159 = v155[-2];
        v160 = v155[2];
        v161 = vrhaddq_u16(vrhaddq_u16(v155[-3], v155[1]), *(v153 + v156 - 96));
        v162 = &v214[v156];
        v162[-7] = vrhaddq_u16(vrhaddq_u16(v154, *v155), *(v153 + v156 - 112));
        v162[-6] = v161;
        v163 = vrhaddq_u16(vrhaddq_u16(v158, v155[3]), *(v153 + v156 - 64));
        v162[-5] = vrhaddq_u16(vrhaddq_u16(v159, v160), *(v153 + v156 - 80));
        v162[-4] = v163;
        v156 += 64;
        v155 += 4;
        v154 = v157;
      }

      while (v156 != 2160);
      v164 = 0;
      v165 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v166 = vsubq_s16(*&v214[v164], v165[-2]);
        v167 = vpadalq_s16(v24, v166);
        v168 = vmlal_s16(v22, *v166.i8, *v166.i8);
        v169 = vmlal_high_s16(v23, v166, v166);
        v170 = vsubq_s16(*&v214[v164 + 16], v165[-1]);
        v171 = vpadalq_s16(v167, v170);
        v172 = vmlal_s16(v168, *v170.i8, *v170.i8);
        v173 = vmlal_high_s16(v169, v170, v170);
        v174 = vsubq_s16(*&v214[v164 + 32], *v165);
        v175 = vpadalq_s16(v171, v174);
        v176 = vmlal_s16(v172, *v174.i8, *v174.i8);
        v177 = vmlal_high_s16(v173, v174, v174);
        v178 = vsubq_s16(*&v214[v164 + 48], v165[1]);
        v24 = vpadalq_s16(v175, v178);
        v22 = vmlal_s16(v176, *v178.i8, *v178.i8);
        v23 = vmlal_high_s16(v177, v178, v178);
        v164 += 64;
        v165 = (v165 + 2 * v8);
      }

      while (v164 != 2048);
    }

    else
    {
      v38 = 0;
      if (v6)
      {
        v179 = vdupq_n_s16(8 - v5);
        v180 = vdupq_n_s16(v5);
        v181 = v11 + 2;
        do
        {
          v182 = &v215[v38 / 0x10];
          *v182 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v181 - 2), v179), *(v181 - 30), v180), 3uLL);
          v182[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v181 - 1), v179), *(v181 - 14), v180), 3uLL);
          v182[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v181, v179), *(v181 + 2), v180), 3uLL);
          v182[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v181 + 1), v179), *(v181 + 18), v180), 3uLL);
          v38 += 64;
          v181 = (v181 + 2 * v4);
        }

        while (v38 != 2112);
        v183 = vdupq_n_s16(8 - v6);
        v184 = vdupq_n_s16(v6);
        v185 = 2 * v10;
        v186 = v215[0];
        v187 = v216;
        v188 = 112;
        do
        {
          v190 = v187[-1];
          v189 = *v187;
          v191 = v187[-2];
          v192 = v187[2];
          v193 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v187[-3], v183), v187[1], v184), 3uLL), *(v185 + v188 - 96));
          v194 = &v214[v188];
          v194[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v186, v183), *v187, v184), 3uLL), *(v185 + v188 - 112));
          v194[-6] = v193;
          v195 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v190, v183), v187[3], v184), 3uLL), *(v185 + v188 - 64));
          v194[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v191, v183), v192, v184), 3uLL), *(v185 + v188 - 80));
          v194[-4] = v195;
          v188 += 64;
          v187 += 4;
          v186 = v189;
        }

        while (v188 != 2160);
        v196 = 0;
        v197 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v198 = vsubq_s16(*&v214[v196], v197[-2]);
          v199 = vpadalq_s16(v24, v198);
          v200 = vmlal_s16(v22, *v198.i8, *v198.i8);
          v201 = vmlal_high_s16(v23, v198, v198);
          v202 = vsubq_s16(*&v214[v196 + 16], v197[-1]);
          v203 = vpadalq_s16(v199, v202);
          v204 = vmlal_s16(v200, *v202.i8, *v202.i8);
          v205 = vmlal_high_s16(v201, v202, v202);
          v206 = vsubq_s16(*&v214[v196 + 32], *v197);
          v207 = vpadalq_s16(v203, v206);
          v208 = vmlal_s16(v204, *v206.i8, *v206.i8);
          v209 = vmlal_high_s16(v205, v206, v206);
          v210 = vsubq_s16(*&v214[v196 + 48], v197[1]);
          v24 = vpadalq_s16(v207, v210);
          v22 = vmlal_s16(v208, *v210.i8, *v210.i8);
          v23 = vmlal_high_s16(v209, v210, v210);
          v196 += 64;
          v197 = (v197 + 2 * v8);
        }

        while (v196 != 2048);
      }

      else
      {
        v39 = 2 * v10;
        v40 = vdupq_n_s16(8 - v5);
        v41 = vdupq_n_s16(v5);
        v42 = v11 + 2;
        do
        {
          v43 = &v215[v38 / 0x10];
          *v43 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 - 2), v40), *(v42 - 30), v41), 3uLL), *(v39 + v38));
          v43[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 - 1), v40), *(v42 - 14), v41), 3uLL), *(v39 + v38 + 16));
          v43[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v42, v40), *(v42 + 2), v41), 3uLL), *(v39 + v38 + 32));
          v43[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 + 1), v40), *(v42 + 18), v41), 3uLL), *(v39 + v38 + 48));
          v38 += 64;
          v42 = (v42 + 2 * v4);
        }

        while (v38 != 2048);
        v44 = 0;
        v45 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v46 = vsubq_s16(v215[v44], v45[-2]);
          v47 = vpadalq_s16(v24, v46);
          v48 = vmlal_s16(v22, *v46.i8, *v46.i8);
          v49 = vmlal_high_s16(v23, v46, v46);
          v50 = vsubq_s16(v215[v44 + 1], v45[-1]);
          v51 = vpadalq_s16(v47, v50);
          v52 = vmlal_s16(v48, *v50.i8, *v50.i8);
          v53 = vmlal_high_s16(v49, v50, v50);
          v54 = vsubq_s16(v215[v44 + 2], *v45);
          v55 = vpadalq_s16(v51, v54);
          v56 = vmlal_s16(v52, *v54.i8, *v54.i8);
          v57 = vmlal_high_s16(v53, v54, v54);
          v58 = vsubq_s16(v215[v44 + 3], v45[1]);
          v24 = vpadalq_s16(v55, v58);
          v22 = vmlal_s16(v56, *v58.i8, *v58.i8);
          v23 = vmlal_high_s16(v57, v58, v58);
          v44 += 4;
          v45 = (v45 + 2 * v8);
        }

        while ((v44 * 16) != 2048);
      }
    }
  }

  else
  {
    v12 = 2 * v10;
    if (v6 == 4)
    {
      v59 = 0;
      v61 = *v11;
      v60 = (v11 + 2);
      v62 = v61;
      v63 = 2 * v4;
      do
      {
        v64 = &v215[v59 / 0x10];
        v65 = *(&v60[-2] + v63);
        *v64 = vrhaddq_u16(vrhaddq_u16(v62, v65), *(v12 + v59));
        v64[1] = vrhaddq_u16(vrhaddq_u16(v60[-1], *(&v60[-1] + v63)), *(v12 + v59 + 16));
        v64[2] = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2 * v4)), *(v12 + v59 + 32));
        v64[3] = vrhaddq_u16(vrhaddq_u16(v60[1], *(&v60[1] + v63)), *(v12 + v59 + 48));
        v59 += 64;
        v60 = (v60 + v63);
        v62 = v65;
      }

      while (v59 != 2048);
    }

    else
    {
      v13 = 0;
      if (v6)
      {
        v95 = vdupq_n_s16(8 - v6);
        v96 = vdupq_n_s16(v6);
        v98 = *v11;
        v97 = (v11 + 2);
        v99 = v98;
        v100 = 2 * v4;
        do
        {
          v101 = &v215[v13 / 0x10];
          v102 = *(&v97[-2] + v100);
          *v101 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v99, v95), v102, v96), 3uLL), *(v12 + v13));
          v101[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v97[-1], v95), *(&v97[-1] + v100), v96), 3uLL), *(v12 + v13 + 16));
          v101[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v97, v95), *(v97 + 2 * v4), v96), 3uLL), *(v12 + v13 + 32));
          v101[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v97[1], v95), *(&v97[1] + v100), v96), 3uLL), *(v12 + v13 + 48));
          v13 += 64;
          v97 = (v97 + v100);
          v99 = v102;
        }

        while (v13 != 2048);
      }

      else
      {
        v14 = (v11 + 2);
        do
        {
          v15 = &v215[v13 / 0x10];
          *v15 = vrhaddq_u16(v14[-2], *(v12 + v13));
          v15[1] = vrhaddq_u16(v14[-1], *(v12 + v13 + 16));
          v15[2] = vrhaddq_u16(*v14, *(v12 + v13 + 32));
          v15[3] = vrhaddq_u16(v14[1], *(v12 + v13 + 48));
          v13 += 64;
          v14 = (v14 + 2 * v4);
        }

        while (v13 != 2048);
      }
    }

    v103 = 0;
    v104 = (2 * v7 + 32);
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v105 = vsubq_s16(v215[v103], v104[-2]);
      v106 = vpadalq_s16(v24, v105);
      v107 = vmlal_s16(v22, *v105.i8, *v105.i8);
      v108 = vmlal_high_s16(v23, v105, v105);
      v109 = vsubq_s16(v215[v103 + 1], v104[-1]);
      v110 = vpadalq_s16(v106, v109);
      v111 = vmlal_s16(v107, *v109.i8, *v109.i8);
      v112 = vmlal_high_s16(v108, v109, v109);
      v113 = vsubq_s16(v215[v103 + 2], *v104);
      v114 = vpadalq_s16(v110, v113);
      v115 = vmlal_s16(v111, *v113.i8, *v113.i8);
      v116 = vmlal_high_s16(v112, v113, v113);
      v117 = vsubq_s16(v215[v103 + 3], v104[1]);
      v24 = vpadalq_s16(v114, v117);
      v22 = vmlal_s16(v115, *v117.i8, *v117.i8);
      v23 = vmlal_high_s16(v116, v117, v117);
      v103 += 4;
      v104 = (v104 + 2 * v8);
    }

    while ((v103 * 16) != 2048);
  }

  v211 = vaddvq_s32(v24);
  v212 = vaddlvq_u32(vaddq_s32(v23, v22));
  *v9 = v212;
  return v212 - ((v211 * v211) >> 10);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance32x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v219[513] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v66 = v11 + 2;
      v67 = v218;
      v68 = -65;
      do
      {
        *v67 = vrhaddq_u16(*(v66 - 2), *(v66 - 30));
        v67[1] = vrhaddq_u16(*(v66 - 1), *(v66 - 14));
        v67[2] = vrhaddq_u16(*v66, *(v66 + 2));
        v67[3] = vrhaddq_u16(*(v66 + 1), *(v66 + 18));
        v67 += 4;
        v66 = (v66 + 2 * v4);
        v69 = __CFADD__(v68++, 1);
      }

      while (!v69);
      v70 = 2 * v10;
      v71 = v218[0];
      v72 = v219;
      v73 = 112;
      do
      {
        v75 = v72[-1];
        v74 = *v72;
        v76 = v72[-2];
        v77 = v72[2];
        v78 = vrhaddq_u16(vrhaddq_u16(v72[-3], v72[1]), *(v70 + v73 - 96));
        v79 = (&v217 + v73);
        v79[-7] = vrhaddq_u16(vrhaddq_u16(v71, *v72), *(v70 + v73 - 112));
        v79[-6] = v78;
        v80 = vrhaddq_u16(vrhaddq_u16(v75, v72[3]), *(v70 + v73 - 64));
        v79[-5] = vrhaddq_u16(vrhaddq_u16(v76, v77), *(v70 + v73 - 80));
        v79[-4] = v80;
        v73 += 64;
        v72 += 4;
        v71 = v74;
      }

      while (v73 != 4208);
      v81 = 0;
      v82 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v83 = vsubq_s16(*(&v217 + v81), v82[-2]);
        v84 = vpadalq_s16(v24, v83);
        v85 = vmlal_s16(v22, *v83.i8, *v83.i8);
        v86 = vmlal_high_s16(v23, v83, v83);
        v87 = vsubq_s16(*(&v217 + v81 + 16), v82[-1]);
        v88 = vpadalq_s16(v84, v87);
        v89 = vmlal_s16(v85, *v87.i8, *v87.i8);
        v90 = vmlal_high_s16(v86, v87, v87);
        v91 = vsubq_s16(*(&v217 + v81 + 32), *v82);
        v92 = vpadalq_s16(v88, v91);
        v93 = vmlal_s16(v89, *v91.i8, *v91.i8);
        v94 = vmlal_high_s16(v90, v91, v91);
        v95 = vsubq_s16(*(&v217 + v81 + 48), v82[1]);
        v24 = vpadalq_s16(v92, v95);
        v22 = vmlal_s16(v93, *v95.i8, *v95.i8);
        v23 = vmlal_high_s16(v94, v95, v95);
        v81 += 64;
        v82 = (v82 + 2 * v8);
      }

      while (v81 != 4096);
    }

    else if (v6)
    {
      v119 = v11 + 2;
      v120 = v218;
      v121 = -65;
      do
      {
        *v120 = vrhaddq_u16(*(v119 - 2), *(v119 - 30));
        v120[1] = vrhaddq_u16(*(v119 - 1), *(v119 - 14));
        v120[2] = vrhaddq_u16(*v119, *(v119 + 2));
        v120[3] = vrhaddq_u16(*(v119 + 1), *(v119 + 18));
        v120 += 4;
        v119 = (v119 + 2 * v4);
        v69 = __CFADD__(v121++, 1);
      }

      while (!v69);
      v122 = 2 * v10;
      v123 = vdupq_n_s16(8 - v6);
      v124 = vdupq_n_s16(v6);
      v125 = v218[0];
      v126 = v219;
      v127 = 112;
      do
      {
        v129 = v126[-1];
        v128 = *v126;
        v130 = v126[-2];
        v131 = v126[2];
        v132 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v126[-3], v123), v126[1], v124), 3uLL), *(v122 + v127 - 96));
        v133 = (&v217 + v127);
        v133[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v125, v123), *v126, v124), 3uLL), *(v122 + v127 - 112));
        v133[-6] = v132;
        v134 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v129, v123), v126[3], v124), 3uLL), *(v122 + v127 - 64));
        v133[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v130, v123), v131, v124), 3uLL), *(v122 + v127 - 80));
        v133[-4] = v134;
        v127 += 64;
        v126 += 4;
        v125 = v128;
      }

      while (v127 != 4208);
      v135 = 0;
      v136 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v137 = vsubq_s16(*(&v217 + v135), v136[-2]);
        v138 = vpadalq_s16(v24, v137);
        v139 = vmlal_s16(v22, *v137.i8, *v137.i8);
        v140 = vmlal_high_s16(v23, v137, v137);
        v141 = vsubq_s16(*(&v217 + v135 + 16), v136[-1]);
        v142 = vpadalq_s16(v138, v141);
        v143 = vmlal_s16(v139, *v141.i8, *v141.i8);
        v144 = vmlal_high_s16(v140, v141, v141);
        v145 = vsubq_s16(*(&v217 + v135 + 32), *v136);
        v146 = vpadalq_s16(v142, v145);
        v147 = vmlal_s16(v143, *v145.i8, *v145.i8);
        v148 = vmlal_high_s16(v144, v145, v145);
        v149 = vsubq_s16(*(&v217 + v135 + 48), v136[1]);
        v24 = vpadalq_s16(v146, v149);
        v22 = vmlal_s16(v147, *v149.i8, *v149.i8);
        v23 = vmlal_high_s16(v148, v149, v149);
        v135 += 64;
        v136 = (v136 + 2 * v8);
      }

      while (v135 != 4096);
    }

    else
    {
      v16 = 0;
      v17 = 2 * v10;
      v18 = v11 + 2;
      do
      {
        v19 = &v218[v16 / 0x10];
        *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16));
        v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 16));
        v19[2] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 32));
        v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 48));
        v16 += 64;
        v18 = (v18 + 2 * v4);
      }

      while (v16 != 4096);
      v20 = 0;
      v21 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = vsubq_s16(v218[v20], v21[-2]);
        v26 = vpadalq_s16(v24, v25);
        v27 = vmlal_s16(v22, *v25.i8, *v25.i8);
        v28 = vmlal_high_s16(v23, v25, v25);
        v29 = vsubq_s16(v218[v20 + 1], v21[-1]);
        v30 = vpadalq_s16(v26, v29);
        v31 = vmlal_s16(v27, *v29.i8, *v29.i8);
        v32 = vmlal_high_s16(v28, v29, v29);
        v33 = vsubq_s16(v218[v20 + 2], *v21);
        v34 = vpadalq_s16(v30, v33);
        v35 = vmlal_s16(v31, *v33.i8, *v33.i8);
        v36 = vmlal_high_s16(v32, v33, v33);
        v37 = vsubq_s16(v218[v20 + 3], v21[1]);
        v24 = vpadalq_s16(v34, v37);
        v22 = vmlal_s16(v35, *v37.i8, *v37.i8);
        v23 = vmlal_high_s16(v36, v37, v37);
        v20 += 4;
        v21 = (v21 + 2 * v8);
      }

      while ((v20 * 16) != 4096);
    }
  }

  else if (v5)
  {
    if (v6 == 4)
    {
      v150 = vdupq_n_s16(8 - v5);
      v151 = vdupq_n_s16(v5);
      v152 = v11 + 2;
      v153 = v218;
      v154 = -65;
      do
      {
        *v153 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v152 - 2), v150), *(v152 - 30), v151), 3uLL);
        v153[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v152 - 1), v150), *(v152 - 14), v151), 3uLL);
        v153[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v152, v150), *(v152 + 2), v151), 3uLL);
        v153[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v152 + 1), v150), *(v152 + 18), v151), 3uLL);
        v153 += 4;
        v152 = (v152 + 2 * v4);
        v69 = __CFADD__(v154++, 1);
      }

      while (!v69);
      v155 = 2 * v10;
      v156 = v218[0];
      v157 = v219;
      v158 = 112;
      do
      {
        v160 = v157[-1];
        v159 = *v157;
        v161 = v157[-2];
        v162 = v157[2];
        v163 = vrhaddq_u16(vrhaddq_u16(v157[-3], v157[1]), *(v155 + v158 - 96));
        v164 = (&v217 + v158);
        v164[-7] = vrhaddq_u16(vrhaddq_u16(v156, *v157), *(v155 + v158 - 112));
        v164[-6] = v163;
        v165 = vrhaddq_u16(vrhaddq_u16(v160, v157[3]), *(v155 + v158 - 64));
        v164[-5] = vrhaddq_u16(vrhaddq_u16(v161, v162), *(v155 + v158 - 80));
        v164[-4] = v165;
        v158 += 64;
        v157 += 4;
        v156 = v159;
      }

      while (v158 != 4208);
      v166 = 0;
      v167 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v168 = vsubq_s16(*(&v217 + v166), v167[-2]);
        v169 = vpadalq_s16(v24, v168);
        v170 = vmlal_s16(v22, *v168.i8, *v168.i8);
        v171 = vmlal_high_s16(v23, v168, v168);
        v172 = vsubq_s16(*(&v217 + v166 + 16), v167[-1]);
        v173 = vpadalq_s16(v169, v172);
        v174 = vmlal_s16(v170, *v172.i8, *v172.i8);
        v175 = vmlal_high_s16(v171, v172, v172);
        v176 = vsubq_s16(*(&v217 + v166 + 32), *v167);
        v177 = vpadalq_s16(v173, v176);
        v178 = vmlal_s16(v174, *v176.i8, *v176.i8);
        v179 = vmlal_high_s16(v175, v176, v176);
        v180 = vsubq_s16(*(&v217 + v166 + 48), v167[1]);
        v24 = vpadalq_s16(v177, v180);
        v22 = vmlal_s16(v178, *v180.i8, *v180.i8);
        v23 = vmlal_high_s16(v179, v180, v180);
        v166 += 64;
        v167 = (v167 + 2 * v8);
      }

      while (v166 != 4096);
    }

    else if (v6)
    {
      v181 = vdupq_n_s16(8 - v5);
      v182 = vdupq_n_s16(v5);
      v183 = v11 + 2;
      v184 = v218;
      v185 = -65;
      do
      {
        *v184 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v183 - 2), v181), *(v183 - 30), v182), 3uLL);
        v184[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v183 - 1), v181), *(v183 - 14), v182), 3uLL);
        v184[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v183, v181), *(v183 + 2), v182), 3uLL);
        v184[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v183 + 1), v181), *(v183 + 18), v182), 3uLL);
        v184 += 4;
        v183 = (v183 + 2 * v4);
        v69 = __CFADD__(v185++, 1);
      }

      while (!v69);
      v186 = 2 * v10;
      v187 = vdupq_n_s16(8 - v6);
      v188 = vdupq_n_s16(v6);
      v189 = v218[0];
      v190 = v219;
      v191 = 112;
      do
      {
        v193 = v190[-1];
        v192 = *v190;
        v194 = v190[-2];
        v195 = v190[2];
        v196 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v190[-3], v187), v190[1], v188), 3uLL), *(v186 + v191 - 96));
        v197 = (&v217 + v191);
        v197[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v189, v187), *v190, v188), 3uLL), *(v186 + v191 - 112));
        v197[-6] = v196;
        v198 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v193, v187), v190[3], v188), 3uLL), *(v186 + v191 - 64));
        v197[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v194, v187), v195, v188), 3uLL), *(v186 + v191 - 80));
        v197[-4] = v198;
        v191 += 64;
        v190 += 4;
        v189 = v192;
      }

      while (v191 != 4208);
      v199 = 0;
      v200 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v201 = vsubq_s16(*(&v217 + v199), v200[-2]);
        v202 = vpadalq_s16(v24, v201);
        v203 = vmlal_s16(v22, *v201.i8, *v201.i8);
        v204 = vmlal_high_s16(v23, v201, v201);
        v205 = vsubq_s16(*(&v217 + v199 + 16), v200[-1]);
        v206 = vpadalq_s16(v202, v205);
        v207 = vmlal_s16(v203, *v205.i8, *v205.i8);
        v208 = vmlal_high_s16(v204, v205, v205);
        v209 = vsubq_s16(*(&v217 + v199 + 32), *v200);
        v210 = vpadalq_s16(v206, v209);
        v211 = vmlal_s16(v207, *v209.i8, *v209.i8);
        v212 = vmlal_high_s16(v208, v209, v209);
        v213 = vsubq_s16(*(&v217 + v199 + 48), v200[1]);
        v24 = vpadalq_s16(v210, v213);
        v22 = vmlal_s16(v211, *v213.i8, *v213.i8);
        v23 = vmlal_high_s16(v212, v213, v213);
        v199 += 64;
        v200 = (v200 + 2 * v8);
      }

      while (v199 != 4096);
    }

    else
    {
      v38 = 0;
      v39 = 2 * v10;
      v40 = vdupq_n_s16(8 - v5);
      v41 = vdupq_n_s16(v5);
      v42 = v11 + 2;
      do
      {
        v43 = &v218[v38 / 0x10];
        *v43 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 - 2), v40), *(v42 - 30), v41), 3uLL), *(v39 + v38));
        v43[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 - 1), v40), *(v42 - 14), v41), 3uLL), *(v39 + v38 + 16));
        v43[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v42, v40), *(v42 + 2), v41), 3uLL), *(v39 + v38 + 32));
        v43[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 + 1), v40), *(v42 + 18), v41), 3uLL), *(v39 + v38 + 48));
        v38 += 64;
        v42 = (v42 + 2 * v4);
      }

      while (v38 != 4096);
      v44 = 0;
      v45 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v46 = vsubq_s16(v218[v44], v45[-2]);
        v47 = vpadalq_s16(v24, v46);
        v48 = vmlal_s16(v22, *v46.i8, *v46.i8);
        v49 = vmlal_high_s16(v23, v46, v46);
        v50 = vsubq_s16(v218[v44 + 1], v45[-1]);
        v51 = vpadalq_s16(v47, v50);
        v52 = vmlal_s16(v48, *v50.i8, *v50.i8);
        v53 = vmlal_high_s16(v49, v50, v50);
        v54 = vsubq_s16(v218[v44 + 2], *v45);
        v55 = vpadalq_s16(v51, v54);
        v56 = vmlal_s16(v52, *v54.i8, *v54.i8);
        v57 = vmlal_high_s16(v53, v54, v54);
        v58 = vsubq_s16(v218[v44 + 3], v45[1]);
        v24 = vpadalq_s16(v55, v58);
        v22 = vmlal_s16(v56, *v58.i8, *v58.i8);
        v23 = vmlal_high_s16(v57, v58, v58);
        v44 += 4;
        v45 = (v45 + 2 * v8);
      }

      while ((v44 * 16) != 4096);
    }
  }

  else
  {
    v12 = 2 * v10;
    if (v6 == 4)
    {
      v59 = 0;
      v61 = *v11;
      v60 = (v11 + 2);
      v62 = v61;
      v63 = 2 * v4;
      do
      {
        v64 = &v218[v59 / 0x10];
        v65 = *(&v60[-2] + v63);
        *v64 = vrhaddq_u16(vrhaddq_u16(v62, v65), *(v12 + v59));
        v64[1] = vrhaddq_u16(vrhaddq_u16(v60[-1], *(&v60[-1] + v63)), *(v12 + v59 + 16));
        v64[2] = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2 * v4)), *(v12 + v59 + 32));
        v64[3] = vrhaddq_u16(vrhaddq_u16(v60[1], *(&v60[1] + v63)), *(v12 + v59 + 48));
        v59 += 64;
        v60 = (v60 + v63);
        v62 = v65;
      }

      while (v59 != 4096);
    }

    else
    {
      v13 = 0;
      if (v6)
      {
        v96 = vdupq_n_s16(8 - v6);
        v97 = vdupq_n_s16(v6);
        v99 = *v11;
        v98 = (v11 + 2);
        v100 = v99;
        v101 = 2 * v4;
        do
        {
          v102 = &v218[v13 / 0x10];
          v103 = *(&v98[-2] + v101);
          *v102 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v100, v96), v103, v97), 3uLL), *(v12 + v13));
          v102[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v98[-1], v96), *(&v98[-1] + v101), v97), 3uLL), *(v12 + v13 + 16));
          v102[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v98, v96), *(v98 + 2 * v4), v97), 3uLL), *(v12 + v13 + 32));
          v102[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v98[1], v96), *(&v98[1] + v101), v97), 3uLL), *(v12 + v13 + 48));
          v13 += 64;
          v98 = (v98 + v101);
          v100 = v103;
        }

        while (v13 != 4096);
      }

      else
      {
        v14 = (v11 + 2);
        do
        {
          v15 = &v218[v13 / 0x10];
          *v15 = vrhaddq_u16(v14[-2], *(v12 + v13));
          v15[1] = vrhaddq_u16(v14[-1], *(v12 + v13 + 16));
          v15[2] = vrhaddq_u16(*v14, *(v12 + v13 + 32));
          v15[3] = vrhaddq_u16(v14[1], *(v12 + v13 + 48));
          v13 += 64;
          v14 = (v14 + 2 * v4);
        }

        while (v13 != 4096);
      }
    }

    v104 = 0;
    v105 = (2 * v7 + 32);
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v106 = vsubq_s16(v218[v104], v105[-2]);
      v107 = vpadalq_s16(v24, v106);
      v108 = vmlal_s16(v22, *v106.i8, *v106.i8);
      v109 = vmlal_high_s16(v23, v106, v106);
      v110 = vsubq_s16(v218[v104 + 1], v105[-1]);
      v111 = vpadalq_s16(v107, v110);
      v112 = vmlal_s16(v108, *v110.i8, *v110.i8);
      v113 = vmlal_high_s16(v109, v110, v110);
      v114 = vsubq_s16(v218[v104 + 2], *v105);
      v115 = vpadalq_s16(v111, v114);
      v116 = vmlal_s16(v112, *v114.i8, *v114.i8);
      v117 = vmlal_high_s16(v113, v114, v114);
      v118 = vsubq_s16(v218[v104 + 3], v105[1]);
      v24 = vpadalq_s16(v115, v118);
      v22 = vmlal_s16(v116, *v118.i8, *v118.i8);
      v23 = vmlal_high_s16(v117, v118, v118);
      v104 += 4;
      v105 = (v105 + 2 * v8);
    }

    while ((v104 * 16) != 4096);
  }

  v214 = vaddvq_s32(v24);
  v215 = vaddlvq_u32(vaddq_s32(v23, v22));
  *v9 = v215;
  return v215 - ((v214 * v214) >> 11);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance64x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v115[513] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v33 = v11 + 4;
      v34 = v114;
      v35 = -33;
      do
      {
        *v34 = vrhaddq_u16(*(v33 - 4), *(v33 - 62));
        v34[1] = vrhaddq_u16(*(v33 - 3), *(v33 - 46));
        v34[2] = vrhaddq_u16(*(v33 - 2), *(v33 - 30));
        v34[3] = vrhaddq_u16(*(v33 - 1), *(v33 - 14));
        v34[4] = vrhaddq_u16(*v33, *(v33 + 2));
        v34[5] = vrhaddq_u16(*(v33 + 1), *(v33 + 18));
        v34[6] = vrhaddq_u16(*(v33 + 2), *(v33 + 34));
        v34[7] = vrhaddq_u16(*(v33 + 3), *(v33 + 50));
        v34 += 8;
        v33 = (v33 + 2 * v4);
        v36 = __CFADD__(v35++, 1);
      }

      while (!v36);
      v37 = 2 * v10;
      v38 = v114[0];
      v39 = v115;
      v40 = 240;
      do
      {
        v41 = (&v113 + v40);
        v43 = v39[-1];
        v42 = *v39;
        v41[-15] = vrhaddq_u16(vrhaddq_u16(v38, *v39), *(v37 + v40 - 240));
        v44 = v39[2];
        v45 = v39[-6];
        v41[-14] = vrhaddq_u16(vrhaddq_u16(v39[-7], v39[1]), *(v37 + v40 - 224));
        v41[-13] = vrhaddq_u16(vrhaddq_u16(v45, v44), *(v37 + v40 - 208));
        v46 = v39[4];
        v47 = v39[-4];
        v41[-12] = vrhaddq_u16(vrhaddq_u16(v39[-5], v39[3]), *(v37 + v40 - 192));
        v41[-11] = vrhaddq_u16(vrhaddq_u16(v47, v46), *(v37 + v40 - 176));
        v48 = v39[6];
        v49 = v39[-2];
        v41[-10] = vrhaddq_u16(vrhaddq_u16(v39[-3], v39[5]), *(v37 + v40 - 160));
        v41[-9] = vrhaddq_u16(vrhaddq_u16(v49, v48), *(v37 + v40 - 144));
        v41[-8] = vrhaddq_u16(vrhaddq_u16(v43, v39[7]), *(v37 + v40 - 128));
        v40 += 128;
        v39 += 8;
        v38 = v42;
      }

      while (v40 != 4336);
    }

    else
    {
      if (!v6)
      {
        v16 = 0;
        v17 = 2 * v10;
        v18 = v11 + 4;
        do
        {
          v19 = &v114[v16 / 0x10];
          *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 4), *(v18 - 62)), *(v17 + v16));
          v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 3), *(v18 - 46)), *(v17 + v16 + 16));
          v19[2] = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16 + 32));
          v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 48));
          v19[4] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 64));
          v19[5] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 80));
          v19[6] = vrhaddq_u16(vrhaddq_u16(*(v18 + 2), *(v18 + 34)), *(v17 + v16 + 96));
          v19[7] = vrhaddq_u16(vrhaddq_u16(*(v18 + 3), *(v18 + 50)), *(v17 + v16 + 112));
          v16 += 128;
          v18 = (v18 + 2 * v4);
        }

        while (v16 != 4096);
        goto LABEL_29;
      }

      v56 = v11 + 4;
      v57 = v114;
      v58 = -33;
      do
      {
        *v57 = vrhaddq_u16(*(v56 - 4), *(v56 - 62));
        v57[1] = vrhaddq_u16(*(v56 - 3), *(v56 - 46));
        v57[2] = vrhaddq_u16(*(v56 - 2), *(v56 - 30));
        v57[3] = vrhaddq_u16(*(v56 - 1), *(v56 - 14));
        v57[4] = vrhaddq_u16(*v56, *(v56 + 2));
        v57[5] = vrhaddq_u16(*(v56 + 1), *(v56 + 18));
        v57[6] = vrhaddq_u16(*(v56 + 2), *(v56 + 34));
        v57[7] = vrhaddq_u16(*(v56 + 3), *(v56 + 50));
        v57 += 8;
        v56 = (v56 + 2 * v4);
        v36 = __CFADD__(v58++, 1);
      }

      while (!v36);
      v59 = 0;
      v60 = 2 * v10;
      v61 = vdupq_n_s16(8 - v6);
      v62 = vdupq_n_s16(v6);
      do
      {
        v63 = (&v113 + v59);
        v64 = v114[v59 / 0x10 + 1];
        v65 = *&v115[v59 / 8 + 2];
        *v63 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10], v61), v114[v59 / 0x10 + 8], v62), 3uLL), *(v60 + v59));
        v63[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v64, v61), v65, v62), 3uLL), *(v60 + v59 + 16));
        v66 = v114[v59 / 0x10 + 3];
        v67 = *&v115[v59 / 8 + 6];
        v63[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 2], v61), *&v115[v59 / 8 + 4], v62), 3uLL), *(v60 + v59 + 32));
        v63[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v61), v67, v62), 3uLL), *(v60 + v59 + 48));
        v68 = v114[v59 / 0x10 + 5];
        v69 = *&v115[v59 / 8 + 10];
        v63[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 4], v61), *&v115[v59 / 8 + 8], v62), 3uLL), *(v60 + v59 + 64));
        v70 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68, v61), v69, v62), 3uLL), *(v60 + v59 + 80));
        v71 = v114[v59 / 0x10 + 7];
        v72 = *&v115[v59 / 8 + 14];
        v73 = vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 6], v61), *&v115[v59 / 8 + 12], v62);
        v63[5] = v70;
        v63[6] = vrhaddq_u16(vrshrq_n_u16(v73, 3uLL), *(v60 + v59 + 96));
        v63[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v61), v72, v62), 3uLL), *(v60 + v59 + 112));
        v59 += 128;
      }

      while (v59 != 4096);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    if (v6 == 4)
    {
      v74 = vdupq_n_s16(8 - v5);
      v75 = vdupq_n_s16(v5);
      v76 = v11 + 4;
      v77 = v114;
      v78 = -33;
      do
      {
        *v77 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 4), v74), *(v76 - 62), v75), 3uLL);
        v77[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 3), v74), *(v76 - 46), v75), 3uLL);
        v77[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 2), v74), *(v76 - 30), v75), 3uLL);
        v77[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 1), v74), *(v76 - 14), v75), 3uLL);
        v77[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v76, v74), *(v76 + 2), v75), 3uLL);
        v77[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 1), v74), *(v76 + 18), v75), 3uLL);
        v77[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 2), v74), *(v76 + 34), v75), 3uLL);
        v77[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 3), v74), *(v76 + 50), v75), 3uLL);
        v77 += 8;
        v76 = (v76 + 2 * v4);
        v36 = __CFADD__(v78++, 1);
      }

      while (!v36);
      v79 = 2 * v10;
      v80 = v114[0];
      v81 = v115;
      v82 = 240;
      do
      {
        v83 = (&v113 + v82);
        v85 = v81[-1];
        v84 = *v81;
        v83[-15] = vrhaddq_u16(vrhaddq_u16(v80, *v81), *(v79 + v82 - 240));
        v86 = v81[2];
        v87 = v81[-6];
        v83[-14] = vrhaddq_u16(vrhaddq_u16(v81[-7], v81[1]), *(v79 + v82 - 224));
        v83[-13] = vrhaddq_u16(vrhaddq_u16(v87, v86), *(v79 + v82 - 208));
        v88 = v81[4];
        v89 = v81[-4];
        v83[-12] = vrhaddq_u16(vrhaddq_u16(v81[-5], v81[3]), *(v79 + v82 - 192));
        v83[-11] = vrhaddq_u16(vrhaddq_u16(v89, v88), *(v79 + v82 - 176));
        v90 = v81[6];
        v91 = v81[-2];
        v83[-10] = vrhaddq_u16(vrhaddq_u16(v81[-3], v81[5]), *(v79 + v82 - 160));
        v83[-9] = vrhaddq_u16(vrhaddq_u16(v91, v90), *(v79 + v82 - 144));
        v83[-8] = vrhaddq_u16(vrhaddq_u16(v85, v81[7]), *(v79 + v82 - 128));
        v82 += 128;
        v81 += 8;
        v80 = v84;
      }

      while (v82 != 4336);
    }

    else
    {
      if (!v6)
      {
        v20 = 0;
        v21 = 2 * v10;
        v22 = vdupq_n_s16(8 - v5);
        v23 = vdupq_n_s16(v5);
        v24 = v11 + 4;
        do
        {
          v25 = &v114[v20 / 0x10];
          *v25 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 4), v22), *(v24 - 62), v23), 3uLL), *(v21 + v20));
          v25[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 3), v22), *(v24 - 46), v23), 3uLL), *(v21 + v20 + 16));
          v25[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 2), v22), *(v24 - 30), v23), 3uLL), *(v21 + v20 + 32));
          v25[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 1), v22), *(v24 - 14), v23), 3uLL), *(v21 + v20 + 48));
          v25[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v24, v22), *(v24 + 2), v23), 3uLL), *(v21 + v20 + 64));
          v25[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 1), v22), *(v24 + 18), v23), 3uLL), *(v21 + v20 + 80));
          v25[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 2), v22), *(v24 + 34), v23), 3uLL), *(v21 + v20 + 96));
          v25[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 3), v22), *(v24 + 50), v23), 3uLL), *(v21 + v20 + 112));
          v20 += 128;
          v24 = (v24 + 2 * v4);
        }

        while (v20 != 4096);
        goto LABEL_29;
      }

      v92 = vdupq_n_s16(8 - v5);
      v93 = vdupq_n_s16(v5);
      v94 = v11 + 4;
      v95 = v114;
      v96 = -33;
      do
      {
        *v95 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 4), v92), *(v94 - 62), v93), 3uLL);
        v95[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 3), v92), *(v94 - 46), v93), 3uLL);
        v95[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 2), v92), *(v94 - 30), v93), 3uLL);
        v95[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 1), v92), *(v94 - 14), v93), 3uLL);
        v95[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v94, v92), *(v94 + 2), v93), 3uLL);
        v95[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 1), v92), *(v94 + 18), v93), 3uLL);
        v95[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 2), v92), *(v94 + 34), v93), 3uLL);
        v95[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 3), v92), *(v94 + 50), v93), 3uLL);
        v95 += 8;
        v94 = (v94 + 2 * v4);
        v36 = __CFADD__(v96++, 1);
      }

      while (!v36);
      v97 = 0;
      v98 = 2 * v10;
      v99 = vdupq_n_s16(8 - v6);
      v100 = vdupq_n_s16(v6);
      do
      {
        v101 = (&v113 + v97);
        v102 = v114[v97 / 0x10 + 1];
        v103 = *&v115[v97 / 8 + 2];
        *v101 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10], v99), v114[v97 / 0x10 + 8], v100), 3uLL), *(v98 + v97));
        v101[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v102, v99), v103, v100), 3uLL), *(v98 + v97 + 16));
        v104 = v114[v97 / 0x10 + 3];
        v105 = *&v115[v97 / 8 + 6];
        v101[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 2], v99), *&v115[v97 / 8 + 4], v100), 3uLL), *(v98 + v97 + 32));
        v101[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v104, v99), v105, v100), 3uLL), *(v98 + v97 + 48));
        v106 = v114[v97 / 0x10 + 5];
        v107 = *&v115[v97 / 8 + 10];
        v101[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 4], v99), *&v115[v97 / 8 + 8], v100), 3uLL), *(v98 + v97 + 64));
        v108 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v106, v99), v107, v100), 3uLL), *(v98 + v97 + 80));
        v109 = v114[v97 / 0x10 + 7];
        v110 = *&v115[v97 / 8 + 14];
        v111 = vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 6], v99), *&v115[v97 / 8 + 12], v100);
        v101[5] = v108;
        v101[6] = vrhaddq_u16(vrshrq_n_u16(v111, 3uLL), *(v98 + v97 + 96));
        v101[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v109, v99), v110, v100), 3uLL), *(v98 + v97 + 112));
        v97 += 128;
      }

      while (v97 != 4096);
    }

LABEL_47:
    v55 = &v113;
    return vpx_highbd_8_variance64x32_neon(v55 >> 1, 64, v7, v8, v9);
  }

  v12 = 2 * v10;
  if (v6 == 4)
  {
    v26 = 0;
    v28 = *v11;
    v27 = (v11 + 4);
    v29 = v28;
    v30 = 2 * v4;
    do
    {
      v31 = &v114[v26 / 0x10];
      v32 = *(&v27[-4] + v30);
      *v31 = vrhaddq_u16(vrhaddq_u16(v29, v32), *(v12 + v26));
      v31[1] = vrhaddq_u16(vrhaddq_u16(v27[-3], *(&v27[-3] + v30)), *(v12 + v26 + 16));
      v31[2] = vrhaddq_u16(vrhaddq_u16(v27[-2], *(&v27[-2] + v30)), *(v12 + v26 + 32));
      v31[3] = vrhaddq_u16(vrhaddq_u16(v27[-1], *(&v27[-1] + v30)), *(v12 + v26 + 48));
      v31[4] = vrhaddq_u16(vrhaddq_u16(*v27, *(v27 + 2 * v4)), *(v12 + v26 + 64));
      v31[5] = vrhaddq_u16(vrhaddq_u16(v27[1], *(&v27[1] + v30)), *(v12 + v26 + 80));
      v31[6] = vrhaddq_u16(vrhaddq_u16(v27[2], *(&v27[2] + v30)), *(v12 + v26 + 96));
      v31[7] = vrhaddq_u16(vrhaddq_u16(v27[3], *(&v27[3] + v30)), *(v12 + v26 + 112));
      v26 += 128;
      v27 = (v27 + v30);
      v29 = v32;
    }

    while (v26 != 4096);
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      v50 = vdupq_n_s16(8 - v6);
      v51 = vdupq_n_s16(v6);
      v52 = 2 * v4;
      v53 = (v11 + 4);
      do
      {
        v54 = &v114[v13 / 0x10];
        *v54 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-4], v50), *(&v53[-4] + v52), v51), 3uLL), *(v12 + v13));
        v54[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-3], v50), *(&v53[-3] + v52), v51), 3uLL), *(v12 + v13 + 16));
        v54[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-2], v50), *(&v53[-2] + v52), v51), 3uLL), *(v12 + v13 + 32));
        v54[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-1], v50), *(&v53[-1] + v52), v51), 3uLL), *(v12 + v13 + 48));
        v54[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v50), *(v53 + 2 * v4), v51), 3uLL), *(v12 + v13 + 64));
        v54[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[1], v50), *(&v53[1] + v52), v51), 3uLL), *(v12 + v13 + 80));
        v54[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[2], v50), *(&v53[2] + v52), v51), 3uLL), *(v12 + v13 + 96));
        v54[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[3], v50), *(&v53[3] + v52), v51), 3uLL), *(v12 + v13 + 112));
        v13 += 128;
        v53 = (v53 + v52);
      }

      while (v13 != 4096);
    }

    else
    {
      v14 = (v11 + 4);
      do
      {
        v15 = &v114[v13 / 0x10];
        *v15 = vrhaddq_u16(v14[-4], *(v12 + v13));
        v15[1] = vrhaddq_u16(v14[-3], *(v12 + v13 + 16));
        v15[2] = vrhaddq_u16(v14[-2], *(v12 + v13 + 32));
        v15[3] = vrhaddq_u16(v14[-1], *(v12 + v13 + 48));
        v15[4] = vrhaddq_u16(*v14, *(v12 + v13 + 64));
        v15[5] = vrhaddq_u16(v14[1], *(v12 + v13 + 80));
        v15[6] = vrhaddq_u16(v14[2], *(v12 + v13 + 96));
        v15[7] = vrhaddq_u16(v14[3], *(v12 + v13 + 112));
        v13 += 128;
        v14 = (v14 + 2 * v4);
      }

      while (v13 != 4096);
    }
  }

LABEL_29:
  v55 = v114;
  return vpx_highbd_8_variance64x32_neon(v55 >> 1, 64, v7, v8, v9);
}

uint64_t vpx_highbd_8_sub_pixel_avg_variance64x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v115[1025] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v33 = v11 + 4;
      v34 = v114;
      v35 = -65;
      do
      {
        *v34 = vrhaddq_u16(*(v33 - 4), *(v33 - 62));
        v34[1] = vrhaddq_u16(*(v33 - 3), *(v33 - 46));
        v34[2] = vrhaddq_u16(*(v33 - 2), *(v33 - 30));
        v34[3] = vrhaddq_u16(*(v33 - 1), *(v33 - 14));
        v34[4] = vrhaddq_u16(*v33, *(v33 + 2));
        v34[5] = vrhaddq_u16(*(v33 + 1), *(v33 + 18));
        v34[6] = vrhaddq_u16(*(v33 + 2), *(v33 + 34));
        v34[7] = vrhaddq_u16(*(v33 + 3), *(v33 + 50));
        v34 += 8;
        v33 = (v33 + 2 * v4);
        v36 = __CFADD__(v35++, 1);
      }

      while (!v36);
      v37 = 2 * v10;
      v38 = v114[0];
      v39 = v115;
      v40 = 240;
      do
      {
        v41 = &v113[v40];
        v43 = v39[-1];
        v42 = *v39;
        v41[-15] = vrhaddq_u16(vrhaddq_u16(v38, *v39), *(v37 + v40 - 240));
        v44 = v39[2];
        v45 = v39[-6];
        v41[-14] = vrhaddq_u16(vrhaddq_u16(v39[-7], v39[1]), *(v37 + v40 - 224));
        v41[-13] = vrhaddq_u16(vrhaddq_u16(v45, v44), *(v37 + v40 - 208));
        v46 = v39[4];
        v47 = v39[-4];
        v41[-12] = vrhaddq_u16(vrhaddq_u16(v39[-5], v39[3]), *(v37 + v40 - 192));
        v41[-11] = vrhaddq_u16(vrhaddq_u16(v47, v46), *(v37 + v40 - 176));
        v48 = v39[6];
        v49 = v39[-2];
        v41[-10] = vrhaddq_u16(vrhaddq_u16(v39[-3], v39[5]), *(v37 + v40 - 160));
        v41[-9] = vrhaddq_u16(vrhaddq_u16(v49, v48), *(v37 + v40 - 144));
        v41[-8] = vrhaddq_u16(vrhaddq_u16(v43, v39[7]), *(v37 + v40 - 128));
        v40 += 128;
        v39 += 8;
        v38 = v42;
      }

      while (v40 != 8432);
    }

    else
    {
      if (!v6)
      {
        v16 = 0;
        v17 = 2 * v10;
        v18 = v11 + 4;
        do
        {
          v19 = &v114[v16 / 0x10];
          *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 4), *(v18 - 62)), *(v17 + v16));
          v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 3), *(v18 - 46)), *(v17 + v16 + 16));
          v19[2] = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16 + 32));
          v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 48));
          v19[4] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 64));
          v19[5] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 80));
          v19[6] = vrhaddq_u16(vrhaddq_u16(*(v18 + 2), *(v18 + 34)), *(v17 + v16 + 96));
          v19[7] = vrhaddq_u16(vrhaddq_u16(*(v18 + 3), *(v18 + 50)), *(v17 + v16 + 112));
          v16 += 128;
          v18 = (v18 + 2 * v4);
        }

        while (v16 != 0x2000);
        goto LABEL_29;
      }

      v56 = v11 + 4;
      v57 = v114;
      v58 = -65;
      do
      {
        *v57 = vrhaddq_u16(*(v56 - 4), *(v56 - 62));
        v57[1] = vrhaddq_u16(*(v56 - 3), *(v56 - 46));
        v57[2] = vrhaddq_u16(*(v56 - 2), *(v56 - 30));
        v57[3] = vrhaddq_u16(*(v56 - 1), *(v56 - 14));
        v57[4] = vrhaddq_u16(*v56, *(v56 + 2));
        v57[5] = vrhaddq_u16(*(v56 + 1), *(v56 + 18));
        v57[6] = vrhaddq_u16(*(v56 + 2), *(v56 + 34));
        v57[7] = vrhaddq_u16(*(v56 + 3), *(v56 + 50));
        v57 += 8;
        v56 = (v56 + 2 * v4);
        v36 = __CFADD__(v58++, 1);
      }

      while (!v36);
      v59 = 0;
      v60 = 2 * v10;
      v61 = vdupq_n_s16(8 - v6);
      v62 = vdupq_n_s16(v6);
      do
      {
        v63 = &v113[v59];
        v64 = v114[v59 / 0x10 + 1];
        v65 = *&v115[v59 / 8 + 2];
        *v63 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10], v61), v114[v59 / 0x10 + 8], v62), 3uLL), *(v60 + v59));
        v63[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v64, v61), v65, v62), 3uLL), *(v60 + v59 + 16));
        v66 = v114[v59 / 0x10 + 3];
        v67 = *&v115[v59 / 8 + 6];
        v63[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 2], v61), *&v115[v59 / 8 + 4], v62), 3uLL), *(v60 + v59 + 32));
        v63[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v61), v67, v62), 3uLL), *(v60 + v59 + 48));
        v68 = v114[v59 / 0x10 + 5];
        v69 = *&v115[v59 / 8 + 10];
        v63[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 4], v61), *&v115[v59 / 8 + 8], v62), 3uLL), *(v60 + v59 + 64));
        v70 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68, v61), v69, v62), 3uLL), *(v60 + v59 + 80));
        v71 = v114[v59 / 0x10 + 7];
        v72 = *&v115[v59 / 8 + 14];
        v73 = vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 6], v61), *&v115[v59 / 8 + 12], v62);
        v63[5] = v70;
        v63[6] = vrhaddq_u16(vrshrq_n_u16(v73, 3uLL), *(v60 + v59 + 96));
        v63[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v61), v72, v62), 3uLL), *(v60 + v59 + 112));
        v59 += 128;
      }

      while (v59 != 0x2000);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    if (v6 == 4)
    {
      v74 = vdupq_n_s16(8 - v5);
      v75 = vdupq_n_s16(v5);
      v76 = v11 + 4;
      v77 = v114;
      v78 = -65;
      do
      {
        *v77 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 4), v74), *(v76 - 62), v75), 3uLL);
        v77[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 3), v74), *(v76 - 46), v75), 3uLL);
        v77[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 2), v74), *(v76 - 30), v75), 3uLL);
        v77[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 1), v74), *(v76 - 14), v75), 3uLL);
        v77[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v76, v74), *(v76 + 2), v75), 3uLL);
        v77[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 1), v74), *(v76 + 18), v75), 3uLL);
        v77[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 2), v74), *(v76 + 34), v75), 3uLL);
        v77[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 3), v74), *(v76 + 50), v75), 3uLL);
        v77 += 8;
        v76 = (v76 + 2 * v4);
        v36 = __CFADD__(v78++, 1);
      }

      while (!v36);
      v79 = 2 * v10;
      v80 = v114[0];
      v81 = v115;
      v82 = 240;
      do
      {
        v83 = &v113[v82];
        v85 = v81[-1];
        v84 = *v81;
        v83[-15] = vrhaddq_u16(vrhaddq_u16(v80, *v81), *(v79 + v82 - 240));
        v86 = v81[2];
        v87 = v81[-6];
        v83[-14] = vrhaddq_u16(vrhaddq_u16(v81[-7], v81[1]), *(v79 + v82 - 224));
        v83[-13] = vrhaddq_u16(vrhaddq_u16(v87, v86), *(v79 + v82 - 208));
        v88 = v81[4];
        v89 = v81[-4];
        v83[-12] = vrhaddq_u16(vrhaddq_u16(v81[-5], v81[3]), *(v79 + v82 - 192));
        v83[-11] = vrhaddq_u16(vrhaddq_u16(v89, v88), *(v79 + v82 - 176));
        v90 = v81[6];
        v91 = v81[-2];
        v83[-10] = vrhaddq_u16(vrhaddq_u16(v81[-3], v81[5]), *(v79 + v82 - 160));
        v83[-9] = vrhaddq_u16(vrhaddq_u16(v91, v90), *(v79 + v82 - 144));
        v83[-8] = vrhaddq_u16(vrhaddq_u16(v85, v81[7]), *(v79 + v82 - 128));
        v82 += 128;
        v81 += 8;
        v80 = v84;
      }

      while (v82 != 8432);
    }

    else
    {
      if (!v6)
      {
        v20 = 0;
        v21 = 2 * v10;
        v22 = vdupq_n_s16(8 - v5);
        v23 = vdupq_n_s16(v5);
        v24 = v11 + 4;
        do
        {
          v25 = &v114[v20 / 0x10];
          *v25 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 4), v22), *(v24 - 62), v23), 3uLL), *(v21 + v20));
          v25[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 3), v22), *(v24 - 46), v23), 3uLL), *(v21 + v20 + 16));
          v25[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 2), v22), *(v24 - 30), v23), 3uLL), *(v21 + v20 + 32));
          v25[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 1), v22), *(v24 - 14), v23), 3uLL), *(v21 + v20 + 48));
          v25[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v24, v22), *(v24 + 2), v23), 3uLL), *(v21 + v20 + 64));
          v25[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 1), v22), *(v24 + 18), v23), 3uLL), *(v21 + v20 + 80));
          v25[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 2), v22), *(v24 + 34), v23), 3uLL), *(v21 + v20 + 96));
          v25[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 3), v22), *(v24 + 50), v23), 3uLL), *(v21 + v20 + 112));
          v20 += 128;
          v24 = (v24 + 2 * v4);
        }

        while (v20 != 0x2000);
        goto LABEL_29;
      }

      v92 = vdupq_n_s16(8 - v5);
      v93 = vdupq_n_s16(v5);
      v94 = v11 + 4;
      v95 = v114;
      v96 = -65;
      do
      {
        *v95 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 4), v92), *(v94 - 62), v93), 3uLL);
        v95[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 3), v92), *(v94 - 46), v93), 3uLL);
        v95[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 2), v92), *(v94 - 30), v93), 3uLL);
        v95[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 1), v92), *(v94 - 14), v93), 3uLL);
        v95[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v94, v92), *(v94 + 2), v93), 3uLL);
        v95[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 1), v92), *(v94 + 18), v93), 3uLL);
        v95[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 2), v92), *(v94 + 34), v93), 3uLL);
        v95[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 3), v92), *(v94 + 50), v93), 3uLL);
        v95 += 8;
        v94 = (v94 + 2 * v4);
        v36 = __CFADD__(v96++, 1);
      }

      while (!v36);
      v97 = 0;
      v98 = 2 * v10;
      v99 = vdupq_n_s16(8 - v6);
      v100 = vdupq_n_s16(v6);
      do
      {
        v101 = &v113[v97];
        v102 = v114[v97 / 0x10 + 1];
        v103 = *&v115[v97 / 8 + 2];
        *v101 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10], v99), v114[v97 / 0x10 + 8], v100), 3uLL), *(v98 + v97));
        v101[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v102, v99), v103, v100), 3uLL), *(v98 + v97 + 16));
        v104 = v114[v97 / 0x10 + 3];
        v105 = *&v115[v97 / 8 + 6];
        v101[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 2], v99), *&v115[v97 / 8 + 4], v100), 3uLL), *(v98 + v97 + 32));
        v101[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v104, v99), v105, v100), 3uLL), *(v98 + v97 + 48));
        v106 = v114[v97 / 0x10 + 5];
        v107 = *&v115[v97 / 8 + 10];
        v101[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 4], v99), *&v115[v97 / 8 + 8], v100), 3uLL), *(v98 + v97 + 64));
        v108 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v106, v99), v107, v100), 3uLL), *(v98 + v97 + 80));
        v109 = v114[v97 / 0x10 + 7];
        v110 = *&v115[v97 / 8 + 14];
        v111 = vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 6], v99), *&v115[v97 / 8 + 12], v100);
        v101[5] = v108;
        v101[6] = vrhaddq_u16(vrshrq_n_u16(v111, 3uLL), *(v98 + v97 + 96));
        v101[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v109, v99), v110, v100), 3uLL), *(v98 + v97 + 112));
        v97 += 128;
      }

      while (v97 != 0x2000);
    }

LABEL_47:
    v55 = v113;
    return vpx_highbd_8_variance64x64_neon(v55 >> 1, 64, v7, v8, v9);
  }

  v12 = 2 * v10;
  if (v6 == 4)
  {
    v26 = 0;
    v28 = *v11;
    v27 = (v11 + 4);
    v29 = v28;
    v30 = 2 * v4;
    do
    {
      v31 = &v114[v26 / 0x10];
      v32 = *(&v27[-4] + v30);
      *v31 = vrhaddq_u16(vrhaddq_u16(v29, v32), *(v12 + v26));
      v31[1] = vrhaddq_u16(vrhaddq_u16(v27[-3], *(&v27[-3] + v30)), *(v12 + v26 + 16));
      v31[2] = vrhaddq_u16(vrhaddq_u16(v27[-2], *(&v27[-2] + v30)), *(v12 + v26 + 32));
      v31[3] = vrhaddq_u16(vrhaddq_u16(v27[-1], *(&v27[-1] + v30)), *(v12 + v26 + 48));
      v31[4] = vrhaddq_u16(vrhaddq_u16(*v27, *(v27 + 2 * v4)), *(v12 + v26 + 64));
      v31[5] = vrhaddq_u16(vrhaddq_u16(v27[1], *(&v27[1] + v30)), *(v12 + v26 + 80));
      v31[6] = vrhaddq_u16(vrhaddq_u16(v27[2], *(&v27[2] + v30)), *(v12 + v26 + 96));
      v31[7] = vrhaddq_u16(vrhaddq_u16(v27[3], *(&v27[3] + v30)), *(v12 + v26 + 112));
      v26 += 128;
      v27 = (v27 + v30);
      v29 = v32;
    }

    while (v26 != 0x2000);
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      v50 = vdupq_n_s16(8 - v6);
      v51 = vdupq_n_s16(v6);
      v52 = 2 * v4;
      v53 = (v11 + 4);
      do
      {
        v54 = &v114[v13 / 0x10];
        *v54 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-4], v50), *(&v53[-4] + v52), v51), 3uLL), *(v12 + v13));
        v54[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-3], v50), *(&v53[-3] + v52), v51), 3uLL), *(v12 + v13 + 16));
        v54[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-2], v50), *(&v53[-2] + v52), v51), 3uLL), *(v12 + v13 + 32));
        v54[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-1], v50), *(&v53[-1] + v52), v51), 3uLL), *(v12 + v13 + 48));
        v54[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v50), *(v53 + 2 * v4), v51), 3uLL), *(v12 + v13 + 64));
        v54[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[1], v50), *(&v53[1] + v52), v51), 3uLL), *(v12 + v13 + 80));
        v54[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[2], v50), *(&v53[2] + v52), v51), 3uLL), *(v12 + v13 + 96));
        v54[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[3], v50), *(&v53[3] + v52), v51), 3uLL), *(v12 + v13 + 112));
        v13 += 128;
        v53 = (v53 + v52);
      }

      while (v13 != 0x2000);
    }

    else
    {
      v14 = (v11 + 4);
      do
      {
        v15 = &v114[v13 / 0x10];
        *v15 = vrhaddq_u16(v14[-4], *(v12 + v13));
        v15[1] = vrhaddq_u16(v14[-3], *(v12 + v13 + 16));
        v15[2] = vrhaddq_u16(v14[-2], *(v12 + v13 + 32));
        v15[3] = vrhaddq_u16(v14[-1], *(v12 + v13 + 48));
        v15[4] = vrhaddq_u16(*v14, *(v12 + v13 + 64));
        v15[5] = vrhaddq_u16(v14[1], *(v12 + v13 + 80));
        v15[6] = vrhaddq_u16(v14[2], *(v12 + v13 + 96));
        v15[7] = vrhaddq_u16(v14[3], *(v12 + v13 + 112));
        v13 += 128;
        v14 = (v14 + 2 * v4);
      }

      while (v13 != 0x2000);
    }
  }

LABEL_29:
  v55 = v114;
  return vpx_highbd_8_variance64x64_neon(v55 >> 1, 64, v7, v8, v9);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance4x4_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = vrshr_n_u16(vmla_s16(vmul_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshr_n_u16(vmla_s16(vmul_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vrshr_n_u16(vmla_s16(vmul_s16(*v14, v8), *(v14 + 2), v9), 3uLL);
  v16 = v14 + v11;
  v17 = vrshr_n_u16(vmla_s16(vmul_s16(*v16, v8), *(v16 + 2), v9), 3uLL);
  v18 = vrshr_n_u16(vmla_s16(vmul_s16(*(v16 + v11), v8), *(v16 + v11 + 2), v9), 3uLL);
  v19 = vdup_n_s16(8 - a4);
  v20 = vdup_n_s16(a4);
  *v21.i8 = vrshr_n_u16(vmla_s16(vmul_s16(v10, v19), v13, v20), 3uLL);
  v22.i64[0] = *(2 * a8);
  v23 = vrshr_n_u16(vmla_s16(vmul_s16(v13, v19), v15, v20), 3uLL);
  *v24.i8 = vrshr_n_u16(vmla_s16(vmul_s16(v15, v19), v17, v20), 3uLL);
  v25.i64[0] = *(2 * a8 + 0x10);
  v26 = vrshr_n_u16(vmla_s16(vmul_s16(v17, v19), v18, v20), 3uLL);
  v21.u64[1] = v23;
  v27 = 2 * a6;
  v22.i64[1] = *(2 * a8 + 8);
  v28 = vrhaddq_u16(v21, v22);
  v21.i64[0] = *(2 * a5);
  v21.i64[1] = *(2 * a5 + v27);
  v29 = vsubq_s16(v28, v21);
  v30 = (2 * a5 + 4 * a6);
  v24.u64[1] = v26;
  v25.i64[1] = *(2 * a8 + 0x18);
  v31.i64[0] = *v30;
  v31.i64[1] = *(v30 + v27);
  v32 = vsubq_s16(vrhaddq_u16(v24, v25), v31);
  LODWORD(v30) = vaddlvq_s16(vaddq_s16(v32, v29));
  v33 = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v29.i8, *v29.i8), v29, v29), *v32.i8, *v32.i8), v32, v32)) + 8;
  *a7 = v33 >> 4;
  v34 = (v33 >> 4) - (((((v30 << 30) + 0x80000000) >> 32) * (((v30 << 30) + 0x80000000) >> 32)) >> 4);
  return v34 & ~(v34 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance4x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = vrshr_n_u16(vmla_s16(vmul_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshr_n_u16(vmla_s16(vmul_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vmla_s16(vmul_s16(*v14, v8), *(v14 + 2), v9);
  v16 = v14 + v11;
  v17 = vmla_s16(vmul_s16(*v16, v8), *(v16 + 2), v9);
  v18 = v16 + v11;
  v19 = vmla_s16(vmul_s16(*v18, v8), *(v18 + 2), v9);
  v20 = v18 + v11;
  v21 = vmla_s16(vmul_s16(*v20, v8), *(v20 + 2), v9);
  v22 = v20 + v11;
  v23 = vmla_s16(vmul_s16(*v22, v8), *(v22 + 2), v9);
  v24 = v22 + v11;
  v25 = vmla_s16(vmul_s16(*v24, v8), *(v24 + 2), v9);
  v26 = vmla_s16(vmul_s16(*(v24 + v11), v8), *(v24 + v11 + 2), v9);
  v27 = vdup_n_s16(8 - a4);
  v28 = vdup_n_s16(a4);
  v29 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v10, v27), v13, v28), 3uLL), *(2 * a8));
  v30 = vrshr_n_u16(v15, 3uLL);
  v31 = vrshr_n_u16(v17, 3uLL);
  v32 = vrshr_n_u16(v19, 3uLL);
  v33 = vrshr_n_u16(v21, 3uLL);
  v34 = vrshr_n_u16(v23, 3uLL);
  v35 = vrshr_n_u16(v25, 3uLL);
  v36 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v13, v27), v30, v28), 3uLL), *(2 * a8 + 8));
  v42[0] = v29;
  v42[1] = v36;
  v37 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v31, v27), v32, v28), 3uLL), *(2 * a8 + 0x18));
  v42[2] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v30, v27), v31, v28), 3uLL), *(2 * a8 + 0x10));
  v42[3] = v37;
  v38 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v33, v27), v34, v28), 3uLL), *(2 * a8 + 0x28));
  v42[4] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v32, v27), v33, v28), 3uLL), *(2 * a8 + 0x20));
  v42[5] = v38;
  v39 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v34, v27), v35, v28), 3uLL), *(2 * a8 + 0x30));
  v40 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v35, v27), vrshr_n_u16(v26, 3uLL), v28), 3uLL), *(2 * a8 + 0x38));
  v42[6] = v39;
  v42[7] = v40;
  return vpx_highbd_10_variance4x8_neon(v42 >> 1, 4, a5, a6, a7);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance8x4_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v14, v8), *(v14 + 2), v9), 3uLL);
  v16 = v14 + v11;
  v17 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v16, v8), *(v16 + 2), v9), 3uLL);
  v18 = vmlaq_s16(vmulq_s16(*(v16 + v11), v8), *(v16 + v11 + 2), v9);
  v19 = vdupq_n_s16(8 - a4);
  v20 = vdupq_n_s16(a4);
  v21 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v10, v19), v13, v20), 3uLL), *(2 * a8));
  v22 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v13, v19), v15, v20), 3uLL), *(2 * a8 + 0x10));
  v23 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v19), v17, v20), 3uLL), *(2 * a8 + 0x20));
  v24 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v19), vrshrq_n_u16(v18, 3uLL), v20), 3uLL), *(2 * a8 + 0x30));
  v25 = vsubq_s16(v21, *(2 * a5));
  v26 = 2 * a6;
  v27 = (2 * a5 + v26);
  v28 = vsubq_s16(v22, *v27);
  v29 = (v27 + v26);
  v30 = vsubq_s16(v23, *v29);
  v31 = vsubq_s16(v24, *(v29 + v26));
  v17.i32[0] = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v28), v25), v30), v31));
  v31.i64[0] = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v25.i8, *v25.i8), v25, v25), *v28.i8, *v28.i8), v28, v28), *v30.i8, *v30.i8), v30, v30), *v31.i8, *v31.i8), v31, v31));
  *a7 = (v31.i64[0] + 8) >> 4;
  v32 = ((v31.i64[0] + 8) >> 4) - (((((v17.i32[0] << 30) + 0x80000000) >> 32) * (((v17.i32[0] << 30) + 0x80000000) >> 32)) >> 5);
  return v32 & ~(v32 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance8x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vmlaq_s16(vmulq_s16(*v14, v8), *(v14 + 2), v9);
  v16 = v14 + v11;
  v17 = vmlaq_s16(vmulq_s16(*v16, v8), *(v16 + 2), v9);
  v18 = v16 + v11;
  v19 = vmlaq_s16(vmulq_s16(*v18, v8), *(v18 + 2), v9);
  v20 = v18 + v11;
  v21 = vmlaq_s16(vmulq_s16(*v20, v8), *(v20 + 2), v9);
  v22 = v20 + v11;
  v23 = vmlaq_s16(vmulq_s16(*v22, v8), *(v22 + 2), v9);
  v24 = v22 + v11;
  v25 = vmlaq_s16(vmulq_s16(*v24, v8), *(v24 + 2), v9);
  v26 = vmlaq_s16(vmulq_s16(*(v24 + v11), v8), *(v24 + v11 + 2), v9);
  v27 = vdupq_n_s16(8 - a4);
  v28 = vdupq_n_s16(a4);
  v29 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v10, v27), v13, v28), 3uLL), *(2 * a8));
  v30 = vrshrq_n_u16(v15, 3uLL);
  v31 = vrshrq_n_u16(v17, 3uLL);
  v32 = vrshrq_n_u16(v19, 3uLL);
  v33 = vrshrq_n_u16(v21, 3uLL);
  v34 = vrshrq_n_u16(v23, 3uLL);
  v35 = vrshrq_n_u16(v25, 3uLL);
  v36 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v13, v27), v30, v28), 3uLL), *(2 * a8 + 0x10));
  v42[0] = v29;
  v42[1] = v36;
  v37 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v31, v27), v32, v28), 3uLL), *(2 * a8 + 0x30));
  v42[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v30, v27), v31, v28), 3uLL), *(2 * a8 + 0x20));
  v42[3] = v37;
  v38 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v33, v27), v34, v28), 3uLL), *(2 * a8 + 0x50));
  v42[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v32, v27), v33, v28), 3uLL), *(2 * a8 + 0x40));
  v42[5] = v38;
  v39 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v34, v27), v35, v28), 3uLL), *(2 * a8 + 0x60));
  v40 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v35, v27), vrshrq_n_u16(v26, 3uLL), v28), 3uLL), *(2 * a8 + 0x70));
  v42[6] = v39;
  v42[7] = v40;
  return vpx_highbd_10_variance8x8_neon(v42 >> 1, 8, a5, a6, a7);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance8x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v14, v8), *(v14 + 2), v9), 3uLL);
  v16 = v14 + v11;
  v17 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v16, v8), *(v16 + 2), v9), 3uLL);
  v18 = v16 + v11;
  v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v18, v8), *(v18 + 2), v9), 3uLL);
  v20 = v18 + v11;
  v21 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v20, v8), *(v20 + 2), v9), 3uLL);
  v22 = v20 + v11;
  v23 = vmlaq_s16(vmulq_s16(*v22, v8), *(v22 + 2), v9);
  v24 = v22 + v11;
  v25 = vmlaq_s16(vmulq_s16(*v24, v8), *(v24 + 2), v9);
  v26 = v24 + v11;
  v27 = vmlaq_s16(vmulq_s16(*v26, v8), *(v26 + 2), v9);
  v28 = v26 + v11;
  v29 = vmlaq_s16(vmulq_s16(*v28, v8), *(v28 + 2), v9);
  v30 = v28 + v11;
  v31 = vmlaq_s16(vmulq_s16(*v30, v8), *(v30 + 2), v9);
  v32 = v30 + v11;
  v33 = vmlaq_s16(vmulq_s16(*v32, v8), *(v32 + 2), v9);
  v34 = v32 + v11;
  v35 = vmlaq_s16(vmulq_s16(*v34, v8), *(v34 + 2), v9);
  v36 = v34 + v11;
  v37 = vmlaq_s16(vmulq_s16(*v36, v8), *(v36 + 2), v9);
  v38 = v36 + v11;
  v39 = vmlaq_s16(vmulq_s16(*v38, v8), *(v38 + 2), v9);
  v40 = v38 + v11;
  v41 = vmlaq_s16(vmulq_s16(*v40, v8), *(v40 + 2), v9);
  v42 = vmlaq_s16(vmulq_s16(*(v40 + v11), v8), *(v40 + v11 + 2), v9);
  v43 = vdupq_n_s16(8 - a4);
  v44 = vdupq_n_s16(a4);
  v45 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v10, v43), v13, v44), 3uLL), *(2 * a8));
  v46 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v13, v43), v15, v44), 3uLL), *(2 * a8 + 0x10));
  v47 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v43), v17, v44), 3uLL), *(2 * a8 + 0x20));
  v48 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v43), v19, v44), 3uLL), *(2 * a8 + 0x30));
  v49 = *(2 * a8 + 0x50);
  v50 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v19, v43), v21, v44), 3uLL), *(2 * a8 + 0x40));
  v51 = vrshrq_n_u16(v23, 3uLL);
  v52 = vrshrq_n_u16(v25, 3uLL);
  v53 = vrshrq_n_u16(v27, 3uLL);
  v54 = vrshrq_n_u16(v29, 3uLL);
  v55 = vrshrq_n_u16(v31, 3uLL);
  v56 = vrshrq_n_u16(v33, 3uLL);
  v57 = vrshrq_n_u16(v35, 3uLL);
  v58 = vrshrq_n_u16(v37, 3uLL);
  v59 = vrshrq_n_u16(v39, 3uLL);
  v60 = vrshrq_n_u16(v41, 3uLL);
  v69[0] = v45;
  v69[1] = v46;
  v69[2] = v47;
  v69[3] = v48;
  v69[4] = v50;
  v69[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v43), v51, v44), 3uLL), v49);
  v61 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v52, v43), v53, v44), 3uLL), *(2 * a8 + 0x70));
  v69[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v51, v43), v52, v44), 3uLL), *(2 * a8 + 0x60));
  v69[7] = v61;
  v62 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v54, v43), v55, v44), 3uLL), *(2 * a8 + 0x90));
  v69[8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53, v43), v54, v44), 3uLL), *(2 * a8 + 0x80));
  v69[9] = v62;
  v63 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v56, v43), v57, v44), 3uLL), *(2 * a8 + 0xB0));
  v69[10] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v55, v43), v56, v44), 3uLL), *(2 * a8 + 0xA0));
  v69[11] = v63;
  v64 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v57, v43), v58, v44), 3uLL), *(2 * a8 + 0xC0));
  v65 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v58, v43), v59, v44), 3uLL), *(2 * a8 + 0xD0));
  v69[12] = v64;
  v69[13] = v65;
  v66 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v59, v43), v60, v44), 3uLL), *(2 * a8 + 0xE0));
  v67 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60, v43), vrshrq_n_u16(v42, 3uLL), v44), 3uLL), *(2 * a8 + 0xF0));
  v69[14] = v66;
  v69[15] = v67;
  return vpx_highbd_10_variance8x16_neon(v69 >> 1, 8, a5, a6, a7);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance16x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v244 = *MEMORY[0x277D85DE8];
  v8 = (2 * a1);
  if (a3 != 4)
  {
    if (!a3)
    {
      v9 = (2 * a8);
      if (a4 == 4)
      {
        v61 = 2 * a2;
        v62 = *(v8 + v61);
        v63 = *(2 * a8 + 0x10);
        v226 = vrhaddq_u16(vrhaddq_u16(*v8, v62), *v9);
        v64 = *(v8 + v61 + 16);
        v227 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), v64), v63);
        v65 = (v8 + v61 + v61);
        v66 = *v65;
        v67 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(vrhaddq_u16(v62, *v65), *(2 * a8 + 0x20));
        v68 = v65[1];
        v229 = vrhaddq_u16(vrhaddq_u16(v64, v68), v67);
        v69 = (v65 + v61);
        v70 = *v69;
        v71 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(vrhaddq_u16(v66, *v69), *(2 * a8 + 0x40));
        v72 = v69[1];
        v231 = vrhaddq_u16(vrhaddq_u16(v68, v72), v71);
        v73 = (v69 + v61);
        v74 = *v73;
        v75 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(vrhaddq_u16(v70, *v73), *(2 * a8 + 0x60));
        v76 = v73[1];
        v233 = vrhaddq_u16(vrhaddq_u16(v72, v76), v75);
        v77 = (v73 + v61);
        v78 = *v77;
        v79 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(vrhaddq_u16(v74, *v77), *(2 * a8 + 0x80));
        v80 = v77[1];
        v235 = vrhaddq_u16(vrhaddq_u16(v76, v80), v79);
        v81 = (v77 + v61);
        v82 = *v81;
        v83 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(vrhaddq_u16(v78, *v81), *(2 * a8 + 0xA0));
        v84 = v81[1];
        v237 = vrhaddq_u16(vrhaddq_u16(v80, v84), v83);
        v85 = (v81 + v61);
        v86 = *v85;
        v87 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(vrhaddq_u16(v82, *v85), *(2 * a8 + 0xC0));
        v88 = v85[1];
        v239 = vrhaddq_u16(vrhaddq_u16(v84, v88), v87);
        v89 = (v85 + v61);
        v90 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(vrhaddq_u16(v86, *v89), *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(vrhaddq_u16(v88, v89[1]), v90);
      }

      else if (a4)
      {
        v111 = vdupq_n_s16(8 - a4);
        v112 = vdupq_n_s16(a4);
        v113 = 2 * a2;
        v114 = *(v8 + v113);
        v115 = *(2 * a8 + 0x10);
        v226 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v111), v114, v112), 3uLL), *v9);
        v116 = *(&v8[1] + v113);
        v227 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v111), v116, v112), 3uLL), v115);
        v117 = &v8->i8[v113 + v113];
        v118 = *v117;
        v119 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114, v111), *v117, v112), 3uLL), *(2 * a8 + 0x20));
        v120 = v117[1];
        v229 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v116, v111), v120, v112), 3uLL), v119);
        v121 = (v117 + v113);
        v122 = *v121;
        v123 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v118, v111), *v121, v112), 3uLL), *(2 * a8 + 0x40));
        v124 = v121[1];
        v231 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v120, v111), v124, v112), 3uLL), v123);
        v125 = (v121 + v113);
        v126 = *v125;
        v127 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122, v111), *v125, v112), 3uLL), *(2 * a8 + 0x60));
        v128 = v125[1];
        v233 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v124, v111), v128, v112), 3uLL), v127);
        v129 = (v125 + v113);
        v130 = *v129;
        v131 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v126, v111), *v129, v112), 3uLL), *(2 * a8 + 0x80));
        v132 = v129[1];
        v235 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v128, v111), v132, v112), 3uLL), v131);
        v133 = (v129 + v113);
        v134 = *v133;
        v135 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v130, v111), *v133, v112), 3uLL), *(2 * a8 + 0xA0));
        v136 = v133[1];
        v237 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v132, v111), v136, v112), 3uLL), v135);
        v137 = (v133 + v113);
        v138 = *v137;
        v139 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v134, v111), *v137, v112), 3uLL), *(2 * a8 + 0xC0));
        v140 = v137[1];
        v239 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v136, v111), v140, v112), 3uLL), v139);
        v141 = (v137 + v113);
        v142 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v138, v111), *v141, v112), 3uLL), *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v140, v111), v141[1], v112), 3uLL), v142);
      }

      else
      {
        v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
        v226 = vrhaddq_u16(*v8, *v9);
        v227 = v10;
        v11 = 2 * a2;
        v12 = (v8 + v11);
        v13 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(*v12, *(2 * a8 + 0x20));
        v229 = vrhaddq_u16(v12[1], v13);
        v14 = (v12 + v11);
        v15 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(*v14, *(2 * a8 + 0x40));
        v231 = vrhaddq_u16(v14[1], v15);
        v16 = (v14 + v11);
        v17 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(*v16, *(2 * a8 + 0x60));
        v233 = vrhaddq_u16(v16[1], v17);
        v18 = (v16 + v11);
        v19 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(*v18, *(2 * a8 + 0x80));
        v235 = vrhaddq_u16(v18[1], v19);
        v20 = (v18 + v11);
        v21 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(*v20, *(2 * a8 + 0xA0));
        v237 = vrhaddq_u16(v20[1], v21);
        v22 = (v20 + v11);
        v23 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(*v22, *(2 * a8 + 0xC0));
        v239 = vrhaddq_u16(v22[1], v23);
        v24 = (v22 + v11);
        v25 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(*v24, *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(v24[1], v25);
      }

      goto LABEL_15;
    }

    if (a4 == 4)
    {
      v166 = vdupq_n_s16(8 - a3);
      v167 = vdupq_n_s16(a3);
      v168 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v166), *(2 * a1 + 0x12), v167), 3uLL);
      v226 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v166), *(2 * a1 + 2), v167), 3uLL);
      v227 = v168;
      v169 = 2 * a2;
      v170 = &v8->i8[v169];
      v228 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v170, v166), *(v170 + 2), v167), 3uLL);
      v229 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v170 + 1), v166), *(v170 + 18), v167), 3uLL);
      v171 = &v170[v169];
      v230 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v171, v166), *(v171 + 2), v167), 3uLL);
      v231 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v171 + 1), v166), *(v171 + 18), v167), 3uLL);
      v172 = &v171[v169];
      v232 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v172, v166), *(v172 + 2), v167), 3uLL);
      v233 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v172 + 1), v166), *(v172 + 18), v167), 3uLL);
      v173 = &v172[v169];
      v234 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v173, v166), *(v173 + 2), v167), 3uLL);
      v235 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v173 + 1), v166), *(v173 + 18), v167), 3uLL);
      v174 = &v173[v169];
      v236 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v174, v166), *(v174 + 2), v167), 3uLL);
      v237 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v174 + 1), v166), *(v174 + 18), v167), 3uLL);
      v175 = &v174[v169];
      v238 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v175, v166), *(v175 + 2), v167), 3uLL);
      v239 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v175 + 1), v166), *(v175 + 18), v167), 3uLL);
      v176 = &v175[v169];
      v240 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v176, v166), *(v176 + 2), v167), 3uLL);
      v241 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v176 + 1), v166), *(v176 + 18), v167), 3uLL);
      v177 = &v176[v169];
      v242 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v177, v166), *(v177 + 2), v167), 3uLL);
      v243 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v177 + 1), v166), *(v177 + 18), v167), 3uLL);
      v178 = vrhaddq_u16(vrhaddq_u16(v168, v229), *(2 * a8 + 0x10));
      v210 = vrhaddq_u16(vrhaddq_u16(v226, v228), *(2 * a8));
      v211 = v178;
      v179 = vrhaddq_u16(vrhaddq_u16(v229, v231), *(2 * a8 + 0x30));
      v212 = vrhaddq_u16(vrhaddq_u16(v228, v230), *(2 * a8 + 0x20));
      v213 = v179;
      v180 = vrhaddq_u16(vrhaddq_u16(v231, v233), *(2 * a8 + 0x50));
      v214 = vrhaddq_u16(vrhaddq_u16(v230, v232), *(2 * a8 + 0x40));
      v215 = v180;
      v181 = vrhaddq_u16(vrhaddq_u16(v233, v235), *(2 * a8 + 0x70));
      v216 = vrhaddq_u16(vrhaddq_u16(v232, v234), *(2 * a8 + 0x60));
      v217 = v181;
      v182 = vrhaddq_u16(vrhaddq_u16(v235, v237), *(2 * a8 + 0x90));
      v218 = vrhaddq_u16(vrhaddq_u16(v234, v236), *(2 * a8 + 0x80));
      v219 = v182;
      v183 = vrhaddq_u16(vrhaddq_u16(v237, v239), *(2 * a8 + 0xB0));
      v220 = vrhaddq_u16(vrhaddq_u16(v236, v238), *(2 * a8 + 0xA0));
      v221 = v183;
      v184 = vrhaddq_u16(vrhaddq_u16(v239, v241), *(2 * a8 + 0xD0));
      v222 = vrhaddq_u16(vrhaddq_u16(v238, v240), *(2 * a8 + 0xC0));
      v223 = v184;
      v108 = *(2 * a8 + 0xF0);
      v109 = vrhaddq_u16(vrhaddq_u16(v240, v242), *(2 * a8 + 0xE0));
      v110 = vrhaddq_u16(v241, v243);
    }

    else
    {
      if (!a4)
      {
        v43 = vdupq_n_s16(8 - a3);
        v44 = vdupq_n_s16(a3);
        v45 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v43), *(2 * a1 + 0x12), v44), 3uLL), *(2 * a8 + 0x10));
        v226 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v43), *(2 * a1 + 2), v44), 3uLL), *(2 * a8));
        v227 = v45;
        v46 = 2 * a2;
        v47 = &v8->i8[v46];
        v48 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v47, v43), *(v47 + 2), v44), 3uLL), *(2 * a8 + 0x20));
        v229 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v47 + 1), v43), *(v47 + 18), v44), 3uLL), v48);
        v49 = &v47[v46];
        v50 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v49, v43), *(v49 + 2), v44), 3uLL), *(2 * a8 + 0x40));
        v231 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v49 + 1), v43), *(v49 + 18), v44), 3uLL), v50);
        v51 = &v49[v46];
        v52 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v51, v43), *(v51 + 2), v44), 3uLL), *(2 * a8 + 0x60));
        v233 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v51 + 1), v43), *(v51 + 18), v44), 3uLL), v52);
        v53 = &v51[v46];
        v54 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v43), *(v53 + 2), v44), 3uLL), *(2 * a8 + 0x80));
        v235 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v53 + 1), v43), *(v53 + 18), v44), 3uLL), v54);
        v55 = &v53[v46];
        v56 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v55, v43), *(v55 + 2), v44), 3uLL), *(2 * a8 + 0xA0));
        v237 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v55 + 1), v43), *(v55 + 18), v44), 3uLL), v56);
        v57 = &v55[v46];
        v58 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v57, v43), *(v57 + 2), v44), 3uLL), *(2 * a8 + 0xC0));
        v239 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v57 + 1), v43), *(v57 + 18), v44), 3uLL), v58);
        v59 = &v57[v46];
        v60 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v59, v43), *(v59 + 2), v44), 3uLL), *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 + 1), v43), *(v59 + 18), v44), 3uLL), v60);
        goto LABEL_15;
      }

      v185 = vdupq_n_s16(8 - a3);
      v186 = vdupq_n_s16(a3);
      v187 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v185), *(2 * a1 + 0x12), v186), 3uLL);
      v226 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v185), *(2 * a1 + 2), v186), 3uLL);
      v227 = v187;
      v188 = 2 * a2;
      v189 = &v8->i8[v188];
      v228 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v189, v185), *(v189 + 2), v186), 3uLL);
      v229 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v189 + 1), v185), *(v189 + 18), v186), 3uLL);
      v190 = &v189[v188];
      v230 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v190, v185), *(v190 + 2), v186), 3uLL);
      v231 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v190 + 1), v185), *(v190 + 18), v186), 3uLL);
      v191 = &v190[v188];
      v232 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v191, v185), *(v191 + 2), v186), 3uLL);
      v233 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v191 + 1), v185), *(v191 + 18), v186), 3uLL);
      v192 = &v191[v188];
      v234 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v192, v185), *(v192 + 2), v186), 3uLL);
      v235 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v192 + 1), v185), *(v192 + 18), v186), 3uLL);
      v193 = &v192[v188];
      v236 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v193, v185), *(v193 + 2), v186), 3uLL);
      v237 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v193 + 1), v185), *(v193 + 18), v186), 3uLL);
      v194 = &v193[v188];
      v238 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v194, v185), *(v194 + 2), v186), 3uLL);
      v239 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v194 + 1), v185), *(v194 + 18), v186), 3uLL);
      v195 = &v194[v188];
      v240 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v195, v185), *(v195 + 2), v186), 3uLL);
      v241 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v195 + 1), v185), *(v195 + 18), v186), 3uLL);
      v196 = &v195[v188];
      v242 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v196, v185), *(v196 + 2), v186), 3uLL);
      v197 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v196 + 1), v185), *(v196 + 18), v186), 3uLL);
      v198 = vdupq_n_s16(8 - a4);
      v199 = vdupq_n_s16(a4);
      v243 = v197;
      v200 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v187, v198), v229, v199), 3uLL), *(2 * a8 + 0x10));
      v201 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v228, v198), v230, v199), 3uLL), *(2 * a8 + 0x20));
      v202 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v229, v198), v231, v199), 3uLL), *(2 * a8 + 0x30));
      v203 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v230, v198), v232, v199), 3uLL), *(2 * a8 + 0x40));
      v204 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v231, v198), v233, v199), 3uLL), *(2 * a8 + 0x50));
      v210 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v226, v198), v228, v199), 3uLL), *(2 * a8));
      v211 = v200;
      v212 = v201;
      v213 = v202;
      v214 = v203;
      v215 = v204;
      v205 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v233, v198), v235, v199), 3uLL), *(2 * a8 + 0x70));
      v216 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v232, v198), v234, v199), 3uLL), *(2 * a8 + 0x60));
      v217 = v205;
      v206 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v235, v198), v237, v199), 3uLL), *(2 * a8 + 0x90));
      v218 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v234, v198), v236, v199), 3uLL), *(2 * a8 + 0x80));
      v219 = v206;
      v207 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v237, v198), v239, v199), 3uLL), *(2 * a8 + 0xB0));
      v220 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v236, v198), v238, v199), 3uLL), *(2 * a8 + 0xA0));
      v221 = v207;
      v208 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v239, v198), v241, v199), 3uLL), *(2 * a8 + 0xD0));
      v222 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v238, v198), v240, v199), 3uLL), *(2 * a8 + 0xC0));
      v223 = v208;
      v108 = *(2 * a8 + 0xF0);
      v109 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v240, v198), v242, v199), 3uLL), *(2 * a8 + 0xE0));
      v110 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v241, v198), v197, v199), 3uLL);
    }

    goto LABEL_19;
  }

  if (a4 == 4)
  {
    v91 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
    v226 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
    v227 = v91;
    v92 = 2 * a2;
    v93 = &v8->i8[v92];
    v228 = vrhaddq_u16(*v93, *(v93 + 2));
    v229 = vrhaddq_u16(*(v93 + 1), *(v93 + 18));
    v94 = &v93[v92];
    v230 = vrhaddq_u16(*v94, *(v94 + 2));
    v231 = vrhaddq_u16(*(v94 + 1), *(v94 + 18));
    v95 = &v94[v92];
    v232 = vrhaddq_u16(*v95, *(v95 + 2));
    v233 = vrhaddq_u16(*(v95 + 1), *(v95 + 18));
    v96 = &v95[v92];
    v234 = vrhaddq_u16(*v96, *(v96 + 2));
    v235 = vrhaddq_u16(*(v96 + 1), *(v96 + 18));
    v97 = &v96[v92];
    v236 = vrhaddq_u16(*v97, *(v97 + 2));
    v237 = vrhaddq_u16(*(v97 + 1), *(v97 + 18));
    v98 = &v97[v92];
    v238 = vrhaddq_u16(*v98, *(v98 + 2));
    v239 = vrhaddq_u16(*(v98 + 1), *(v98 + 18));
    v99 = &v98[v92];
    v240 = vrhaddq_u16(*v99, *(v99 + 2));
    v241 = vrhaddq_u16(*(v99 + 1), *(v99 + 18));
    v100 = &v99[v92];
    v242 = vrhaddq_u16(*v100, *(v100 + 2));
    v243 = vrhaddq_u16(*(v100 + 1), *(v100 + 18));
    v101 = vrhaddq_u16(vrhaddq_u16(v91, v229), *(2 * a8 + 0x10));
    v210 = vrhaddq_u16(vrhaddq_u16(v226, v228), *(2 * a8));
    v211 = v101;
    v102 = vrhaddq_u16(vrhaddq_u16(v229, v231), *(2 * a8 + 0x30));
    v212 = vrhaddq_u16(vrhaddq_u16(v228, v230), *(2 * a8 + 0x20));
    v213 = v102;
    v103 = vrhaddq_u16(vrhaddq_u16(v231, v233), *(2 * a8 + 0x50));
    v214 = vrhaddq_u16(vrhaddq_u16(v230, v232), *(2 * a8 + 0x40));
    v215 = v103;
    v104 = vrhaddq_u16(vrhaddq_u16(v233, v235), *(2 * a8 + 0x70));
    v216 = vrhaddq_u16(vrhaddq_u16(v232, v234), *(2 * a8 + 0x60));
    v217 = v104;
    v105 = vrhaddq_u16(vrhaddq_u16(v235, v237), *(2 * a8 + 0x90));
    v218 = vrhaddq_u16(vrhaddq_u16(v234, v236), *(2 * a8 + 0x80));
    v219 = v105;
    v106 = vrhaddq_u16(vrhaddq_u16(v237, v239), *(2 * a8 + 0xB0));
    v220 = vrhaddq_u16(vrhaddq_u16(v236, v238), *(2 * a8 + 0xA0));
    v221 = v106;
    v107 = vrhaddq_u16(vrhaddq_u16(v239, v241), *(2 * a8 + 0xD0));
    v222 = vrhaddq_u16(vrhaddq_u16(v238, v240), *(2 * a8 + 0xC0));
    v223 = v107;
    v108 = *(2 * a8 + 0xF0);
    v109 = vrhaddq_u16(vrhaddq_u16(v240, v242), *(2 * a8 + 0xE0));
    v110 = vrhaddq_u16(v241, v243);
LABEL_19:
    v165 = vrhaddq_u16(v110, v108);
    goto LABEL_20;
  }

  if (a4)
  {
    v144 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
    v226 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
    v227 = v144;
    v145 = 2 * a2;
    v146 = &v8->i8[v145];
    v228 = vrhaddq_u16(*v146, *(v146 + 2));
    v229 = vrhaddq_u16(*(v146 + 1), *(v146 + 18));
    v147 = &v146[v145];
    v230 = vrhaddq_u16(*v147, *(v147 + 2));
    v231 = vrhaddq_u16(*(v147 + 1), *(v147 + 18));
    v148 = &v147[v145];
    v232 = vrhaddq_u16(*v148, *(v148 + 2));
    v233 = vrhaddq_u16(*(v148 + 1), *(v148 + 18));
    v149 = &v148[v145];
    v234 = vrhaddq_u16(*v149, *(v149 + 2));
    v235 = vrhaddq_u16(*(v149 + 1), *(v149 + 18));
    v150 = &v149[v145];
    v236 = vrhaddq_u16(*v150, *(v150 + 2));
    v237 = vrhaddq_u16(*(v150 + 1), *(v150 + 18));
    v151 = &v150[v145];
    v238 = vrhaddq_u16(*v151, *(v151 + 2));
    v239 = vrhaddq_u16(*(v151 + 1), *(v151 + 18));
    v152 = &v151[v145];
    v240 = vrhaddq_u16(*v152, *(v152 + 2));
    v241 = vrhaddq_u16(*(v152 + 1), *(v152 + 18));
    v153 = &v152[v145];
    v242 = vrhaddq_u16(*v153, *(v153 + 2));
    v154 = vdupq_n_s16(8 - a4);
    v155 = vdupq_n_s16(a4);
    v243 = vrhaddq_u16(*(v153 + 1), *(v153 + 18));
    v156 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v144, v154), v229, v155), 3uLL), *(2 * a8 + 0x10));
    v157 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v228, v154), v230, v155), 3uLL), *(2 * a8 + 0x20));
    v158 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v229, v154), v231, v155), 3uLL), *(2 * a8 + 0x30));
    v159 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v230, v154), v232, v155), 3uLL), *(2 * a8 + 0x40));
    v160 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v231, v154), v233, v155), 3uLL), *(2 * a8 + 0x50));
    v210 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v226, v154), v228, v155), 3uLL), *(2 * a8));
    v211 = v156;
    v212 = v157;
    v213 = v158;
    v214 = v159;
    v215 = v160;
    v161 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v233, v154), v235, v155), 3uLL), *(2 * a8 + 0x70));
    v216 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v232, v154), v234, v155), 3uLL), *(2 * a8 + 0x60));
    v217 = v161;
    v162 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v235, v154), v237, v155), 3uLL), *(2 * a8 + 0x90));
    v218 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v234, v154), v236, v155), 3uLL), *(2 * a8 + 0x80));
    v219 = v162;
    v163 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v237, v154), v239, v155), 3uLL), *(2 * a8 + 0xB0));
    v220 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v236, v154), v238, v155), 3uLL), *(2 * a8 + 0xA0));
    v221 = v163;
    v164 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v239, v154), v241, v155), 3uLL), *(2 * a8 + 0xD0));
    v222 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v238, v154), v240, v155), 3uLL), *(2 * a8 + 0xC0));
    v223 = v164;
    v109 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v240, v154), v242, v155), 3uLL), *(2 * a8 + 0xE0));
    v165 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v241, v154), v243, v155), 3uLL), *(2 * a8 + 0xF0));
LABEL_20:
    v224 = v109;
    v225 = v165;
    v143 = &v210;
    return vpx_highbd_10_variance16x8_neon(v143 >> 1, 16, a5, a6, a7);
  }

  v27 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12)), *(2 * a8 + 0x10));
  v226 = vrhaddq_u16(vrhaddq_u16(*(2 * a1), *(2 * a1 + 2)), *(2 * a8));
  v227 = v27;
  v28 = 2 * a2;
  v29 = &v8->i8[v28];
  v30 = *(2 * a8 + 0x30);
  v228 = vrhaddq_u16(vrhaddq_u16(*v29, *(v29 + 2)), *(2 * a8 + 0x20));
  v229 = vrhaddq_u16(vrhaddq_u16(*(v29 + 1), *(v29 + 18)), v30);
  v31 = &v29[v28];
  v32 = *(2 * a8 + 0x50);
  v230 = vrhaddq_u16(vrhaddq_u16(*v31, *(v31 + 2)), *(2 * a8 + 0x40));
  v231 = vrhaddq_u16(vrhaddq_u16(*(v31 + 1), *(v31 + 18)), v32);
  v33 = &v31[v28];
  v34 = *(2 * a8 + 0x70);
  v232 = vrhaddq_u16(vrhaddq_u16(*v33, *(v33 + 2)), *(2 * a8 + 0x60));
  v233 = vrhaddq_u16(vrhaddq_u16(*(v33 + 1), *(v33 + 18)), v34);
  v35 = &v33[v28];
  v36 = *(2 * a8 + 0x90);
  v234 = vrhaddq_u16(vrhaddq_u16(*v35, *(v35 + 2)), *(2 * a8 + 0x80));
  v235 = vrhaddq_u16(vrhaddq_u16(*(v35 + 1), *(v35 + 18)), v36);
  v37 = &v35[v28];
  v38 = *(2 * a8 + 0xB0);
  v236 = vrhaddq_u16(vrhaddq_u16(*v37, *(v37 + 2)), *(2 * a8 + 0xA0));
  v237 = vrhaddq_u16(vrhaddq_u16(*(v37 + 1), *(v37 + 18)), v38);
  v39 = &v37[v28];
  v40 = *(2 * a8 + 0xD0);
  v238 = vrhaddq_u16(vrhaddq_u16(*v39, *(v39 + 2)), *(2 * a8 + 0xC0));
  v239 = vrhaddq_u16(vrhaddq_u16(*(v39 + 1), *(v39 + 18)), v40);
  v41 = &v39[v28];
  v42 = *(2 * a8 + 0xF0);
  v240 = vrhaddq_u16(vrhaddq_u16(*v41, *(v41 + 2)), *(2 * a8 + 0xE0));
  v26 = vrhaddq_u16(vrhaddq_u16(*(v41 + 1), *(v41 + 18)), v42);
LABEL_15:
  v241 = v26;
  v143 = &v226;
  return vpx_highbd_10_variance16x8_neon(v143 >> 1, 16, a5, a6, a7);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance16x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v384 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v133 = 0;
      v316 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v350 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v351 = v316;
      v134 = 2 * a2;
      v352 = vrhaddq_u16(*(v8 + v134), *(v8 + v134 + 2));
      v353 = vrhaddq_u16(*(v8 + v134 + 16), *(v8 + v134 + 18));
      v135 = v8 + v134 + v134;
      v354 = vrhaddq_u16(*v135, *(v135 + 2));
      v355 = vrhaddq_u16(*(v135 + 16), *(v135 + 18));
      v136 = v135 + v134;
      v356 = vrhaddq_u16(*v136, *(v136 + 2));
      v357 = vrhaddq_u16(*(v136 + 16), *(v136 + 18));
      v137 = v136 + v134;
      v358 = vrhaddq_u16(*v137, *(v137 + 2));
      v359 = vrhaddq_u16(*(v137 + 16), *(v137 + 18));
      v138 = v137 + v134;
      v360 = vrhaddq_u16(*v138, *(v138 + 2));
      v361 = vrhaddq_u16(*(v138 + 16), *(v138 + 18));
      v139 = v138 + v134;
      v362 = vrhaddq_u16(*v139, *(v139 + 2));
      v363 = vrhaddq_u16(*(v139 + 16), *(v139 + 18));
      v140 = v139 + v134;
      v364 = vrhaddq_u16(*v140, *(v140 + 2));
      v365 = vrhaddq_u16(*(v140 + 16), *(v140 + 18));
      v141 = v140 + v134;
      v366 = vrhaddq_u16(*v141, *(v141 + 2));
      v367 = vrhaddq_u16(*(v141 + 16), *(v141 + 18));
      v142 = v141 + v134;
      v368 = vrhaddq_u16(*v142, *(v142 + 2));
      v369 = vrhaddq_u16(*(v142 + 16), *(v142 + 18));
      v143 = v142 + v134;
      v370 = vrhaddq_u16(*v143, *(v143 + 2));
      v371 = vrhaddq_u16(*(v143 + 16), *(v143 + 18));
      v144 = v143 + v134;
      v372 = vrhaddq_u16(*v144, *(v144 + 2));
      v373 = vrhaddq_u16(*(v144 + 16), *(v144 + 18));
      v145 = v144 + v134;
      v374 = vrhaddq_u16(*v145, *(v145 + 2));
      v375 = vrhaddq_u16(*(v145 + 16), *(v145 + 18));
      v146 = v145 + v134;
      v376 = vrhaddq_u16(*v146, *(v146 + 2));
      v377 = vrhaddq_u16(*(v146 + 16), *(v146 + 18));
      v147 = v146 + v134;
      v378 = vrhaddq_u16(*v147, *(v147 + 2));
      v379 = vrhaddq_u16(*(v147 + 16), *(v147 + 18));
      v148 = v147 + v134;
      v380 = vrhaddq_u16(*v148, *(v148 + 2));
      v149 = v148 + v134;
      v381 = vrhaddq_u16(*(v148 + 16), *(v148 + 18));
      v382 = vrhaddq_u16(*v149, *(v149 + 2));
      v383 = vrhaddq_u16(*(v149 + 16), *(v149 + 18));
      v150 = vrhaddq_u16(vrhaddq_u16(v316, v353), *(2 * a8 + 0x10));
      v318 = vrhaddq_u16(vrhaddq_u16(v350, v352), *(2 * a8));
      v319 = v150;
      v151 = vrhaddq_u16(vrhaddq_u16(v353, v355), *(2 * a8 + 0x30));
      v320 = vrhaddq_u16(vrhaddq_u16(v352, v354), *(2 * a8 + 0x20));
      v321 = v151;
      v152 = vrhaddq_u16(vrhaddq_u16(v355, v357), *(2 * a8 + 0x50));
      v322 = vrhaddq_u16(vrhaddq_u16(v354, v356), *(2 * a8 + 0x40));
      v323 = v152;
      v153 = vrhaddq_u16(vrhaddq_u16(v357, v359), *(2 * a8 + 0x70));
      v324 = vrhaddq_u16(vrhaddq_u16(v356, v358), *(2 * a8 + 0x60));
      v325 = v153;
      v154 = vrhaddq_u16(vrhaddq_u16(v359, v361), *(2 * a8 + 0x90));
      v326 = vrhaddq_u16(vrhaddq_u16(v358, v360), *(2 * a8 + 0x80));
      v327 = v154;
      v155 = vrhaddq_u16(vrhaddq_u16(v361, v363), *(2 * a8 + 0xB0));
      v328 = vrhaddq_u16(vrhaddq_u16(v360, v362), *(2 * a8 + 0xA0));
      v329 = v155;
      v156 = vrhaddq_u16(vrhaddq_u16(v363, v365), *(2 * a8 + 0xD0));
      v330 = vrhaddq_u16(vrhaddq_u16(v362, v364), *(2 * a8 + 0xC0));
      v331 = v156;
      v157 = vrhaddq_u16(vrhaddq_u16(v365, v367), *(2 * a8 + 0xF0));
      v332 = vrhaddq_u16(vrhaddq_u16(v364, v366), *(2 * a8 + 0xE0));
      v333 = v157;
      v158 = vrhaddq_u16(vrhaddq_u16(v367, v369), *(2 * a8 + 0x110));
      v334 = vrhaddq_u16(vrhaddq_u16(v366, v368), *(2 * a8 + 0x100));
      v335 = v158;
      v159 = vrhaddq_u16(vrhaddq_u16(v369, v371), *(2 * a8 + 0x130));
      v336 = vrhaddq_u16(vrhaddq_u16(v368, v370), *(2 * a8 + 0x120));
      v337 = v159;
      v160 = vrhaddq_u16(vrhaddq_u16(v371, v373), *(2 * a8 + 0x150));
      v338 = vrhaddq_u16(vrhaddq_u16(v370, v372), *(2 * a8 + 0x140));
      v339 = v160;
      v161 = vrhaddq_u16(vrhaddq_u16(v373, v375), *(2 * a8 + 0x170));
      v340 = vrhaddq_u16(vrhaddq_u16(v372, v374), *(2 * a8 + 0x160));
      v341 = v161;
      v162 = vrhaddq_u16(vrhaddq_u16(v375, v377), *(2 * a8 + 0x190));
      v342 = vrhaddq_u16(vrhaddq_u16(v374, v376), *(2 * a8 + 0x180));
      v343 = v162;
      v163 = vrhaddq_u16(vrhaddq_u16(v377, v379), *(2 * a8 + 0x1B0));
      v344 = vrhaddq_u16(vrhaddq_u16(v376, v378), *(2 * a8 + 0x1A0));
      v345 = v163;
      v164 = vrhaddq_u16(vrhaddq_u16(v379, v381), *(2 * a8 + 0x1D0));
      v346 = vrhaddq_u16(vrhaddq_u16(v378, v380), *(2 * a8 + 0x1C0));
      v347 = v164;
      v165 = vrhaddq_u16(vrhaddq_u16(v381, v383), *(2 * a8 + 0x1F0));
      v348 = vrhaddq_u16(vrhaddq_u16(v380, v382), *(2 * a8 + 0x1E0));
      v349 = v165;
      v166 = (2 * a5 + 16);
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v167 = vsubq_s16(*(&v318 + v133), v166[-1]);
        v168 = vpadalq_s16(v77, v167);
        v169 = vmlal_s16(v75, *v167.i8, *v167.i8);
        v170 = vmlal_high_s16(v76, v167, v167);
        v171 = vsubq_s16(*(&v318 + v133 + 16), *v166);
        v77 = vpadalq_s16(v168, v171);
        v75 = vmlal_s16(v169, *v171.i8, *v171.i8);
        v76 = vmlal_high_s16(v170, v171, v171);
        v133 += 32;
        v166 = (v166 + 2 * a6);
      }

      while (v133 != 512);
    }

    else
    {
      v41 = 0;
      if (a4)
      {
        v184 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
        v350 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
        v351 = v184;
        v185 = 2 * a2;
        v352 = vrhaddq_u16(*(v8 + v185), *(v8 + v185 + 2));
        v353 = vrhaddq_u16(*(v8 + v185 + 16), *(v8 + v185 + 18));
        v186 = v8 + v185 + v185;
        v354 = vrhaddq_u16(*v186, *(v186 + 2));
        v355 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
        v187 = v186 + v185;
        v356 = vrhaddq_u16(*v187, *(v187 + 2));
        v357 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
        v188 = v187 + v185;
        v358 = vrhaddq_u16(*v188, *(v188 + 2));
        v359 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
        v189 = v188 + v185;
        v360 = vrhaddq_u16(*v189, *(v189 + 2));
        v361 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
        v190 = v189 + v185;
        v362 = vrhaddq_u16(*v190, *(v190 + 2));
        v363 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
        v191 = v190 + v185;
        v364 = vrhaddq_u16(*v191, *(v191 + 2));
        v365 = vrhaddq_u16(*(v191 + 16), *(v191 + 18));
        v192 = v191 + v185;
        v366 = vrhaddq_u16(*v192, *(v192 + 2));
        v367 = vrhaddq_u16(*(v192 + 16), *(v192 + 18));
        v193 = v192 + v185;
        v368 = vrhaddq_u16(*v193, *(v193 + 2));
        v369 = vrhaddq_u16(*(v193 + 16), *(v193 + 18));
        v194 = v193 + v185;
        v370 = vrhaddq_u16(*v194, *(v194 + 2));
        v371 = vrhaddq_u16(*(v194 + 16), *(v194 + 18));
        v195 = v194 + v185;
        v372 = vrhaddq_u16(*v195, *(v195 + 2));
        v373 = vrhaddq_u16(*(v195 + 16), *(v195 + 18));
        v196 = v195 + v185;
        v374 = vrhaddq_u16(*v196, *(v196 + 2));
        v375 = vrhaddq_u16(*(v196 + 16), *(v196 + 18));
        v197 = v196 + v185;
        v376 = vrhaddq_u16(*v197, *(v197 + 2));
        v377 = vrhaddq_u16(*(v197 + 16), *(v197 + 18));
        v198 = v197 + v185;
        v378 = vrhaddq_u16(*v198, *(v198 + 2));
        v379 = vrhaddq_u16(*(v198 + 16), *(v198 + 18));
        v199 = v198 + v185;
        v380 = vrhaddq_u16(*v199, *(v199 + 2));
        v200 = v199 + v185;
        v381 = vrhaddq_u16(*(v199 + 16), *(v199 + 18));
        v382 = vrhaddq_u16(*v200, *(v200 + 2));
        v383 = vrhaddq_u16(*(v200 + 16), *(v200 + 18));
        v201 = vdupq_n_s16(8 - a4);
        v202 = vdupq_n_s16(a4);
        v203 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v351, v201), v353, v202), 3uLL), *(2 * a8 + 0x10));
        v318 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v350, v201), v352, v202), 3uLL), *(2 * a8));
        v319 = v203;
        v204 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v353, v201), v355, v202), 3uLL), *(2 * a8 + 0x30));
        v320 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v352, v201), v354, v202), 3uLL), *(2 * a8 + 0x20));
        v321 = v204;
        v205 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v355, v201), v357, v202), 3uLL), *(2 * a8 + 0x50));
        v322 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v354, v201), v356, v202), 3uLL), *(2 * a8 + 0x40));
        v323 = v205;
        v206 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v357, v201), v359, v202), 3uLL), *(2 * a8 + 0x70));
        v324 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v356, v201), v358, v202), 3uLL), *(2 * a8 + 0x60));
        v325 = v206;
        v207 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v359, v201), v361, v202), 3uLL), *(2 * a8 + 0x90));
        v326 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v358, v201), v360, v202), 3uLL), *(2 * a8 + 0x80));
        v327 = v207;
        v208 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v361, v201), v363, v202), 3uLL), *(2 * a8 + 0xB0));
        v328 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v360, v201), v362, v202), 3uLL), *(2 * a8 + 0xA0));
        v329 = v208;
        v209 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v363, v201), v365, v202), 3uLL), *(2 * a8 + 0xD0));
        v330 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v362, v201), v364, v202), 3uLL), *(2 * a8 + 0xC0));
        v331 = v209;
        v210 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v365, v201), v367, v202), 3uLL), *(2 * a8 + 0xF0));
        v332 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v364, v201), v366, v202), 3uLL), *(2 * a8 + 0xE0));
        v333 = v210;
        v211 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v367, v201), v369, v202), 3uLL), *(2 * a8 + 0x110));
        v334 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v366, v201), v368, v202), 3uLL), *(2 * a8 + 0x100));
        v335 = v211;
        v212 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v369, v201), v371, v202), 3uLL), *(2 * a8 + 0x130));
        v336 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v368, v201), v370, v202), 3uLL), *(2 * a8 + 0x120));
        v337 = v212;
        v213 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v371, v201), v373, v202), 3uLL), *(2 * a8 + 0x150));
        v338 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v370, v201), v372, v202), 3uLL), *(2 * a8 + 0x140));
        v339 = v213;
        v214 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v373, v201), v375, v202), 3uLL), *(2 * a8 + 0x170));
        v340 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v372, v201), v374, v202), 3uLL), *(2 * a8 + 0x160));
        v341 = v214;
        v215 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v375, v201), v377, v202), 3uLL), *(2 * a8 + 0x190));
        v342 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v374, v201), v376, v202), 3uLL), *(2 * a8 + 0x180));
        v343 = v215;
        v216 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v377, v201), v379, v202), 3uLL), *(2 * a8 + 0x1B0));
        v344 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v376, v201), v378, v202), 3uLL), *(2 * a8 + 0x1A0));
        v345 = v216;
        v217 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v379, v201), v381, v202), 3uLL), *(2 * a8 + 0x1D0));
        v346 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v378, v201), v380, v202), 3uLL), *(2 * a8 + 0x1C0));
        v347 = v217;
        v218 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v380, v201), v382, v202), 3uLL), *(2 * a8 + 0x1E0));
        v219 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v381, v201), v383, v202), 3uLL), *(2 * a8 + 0x1F0));
        v348 = v218;
        v349 = v219;
        v220 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v221 = vsubq_s16(*(&v318 + v41), v220[-1]);
          v222 = vpadalq_s16(v77, v221);
          v223 = vmlal_s16(v75, *v221.i8, *v221.i8);
          v224 = vmlal_high_s16(v76, v221, v221);
          v225 = vsubq_s16(*(&v318 + v41 + 16), *v220);
          v77 = vpadalq_s16(v222, v225);
          v75 = vmlal_s16(v223, *v225.i8, *v225.i8);
          v76 = vmlal_high_s16(v224, v225, v225);
          v41 += 32;
          v220 = (v220 + 2 * a6);
        }

        while (v41 != 512);
      }

      else
      {
        v42 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12)), *(2 * a8 + 0x10));
        v350 = vrhaddq_u16(vrhaddq_u16(*(2 * a1), *(2 * a1 + 2)), *(2 * a8));
        v351 = v42;
        v43 = 2 * a2;
        v44 = v8 + v43;
        v45 = *(2 * a8 + 0x30);
        v352 = vrhaddq_u16(vrhaddq_u16(*v44, *(v44 + 2)), *(2 * a8 + 0x20));
        v353 = vrhaddq_u16(vrhaddq_u16(*(v44 + 16), *(v44 + 18)), v45);
        v46 = v44 + v43;
        v47 = *(2 * a8 + 0x50);
        v354 = vrhaddq_u16(vrhaddq_u16(*v46, *(v46 + 2)), *(2 * a8 + 0x40));
        v355 = vrhaddq_u16(vrhaddq_u16(*(v46 + 16), *(v46 + 18)), v47);
        v48 = v46 + v43;
        v49 = *(2 * a8 + 0x70);
        v356 = vrhaddq_u16(vrhaddq_u16(*v48, *(v48 + 2)), *(2 * a8 + 0x60));
        v357 = vrhaddq_u16(vrhaddq_u16(*(v48 + 16), *(v48 + 18)), v49);
        v50 = v48 + v43;
        v51 = *(2 * a8 + 0x90);
        v358 = vrhaddq_u16(vrhaddq_u16(*v50, *(v50 + 2)), *(2 * a8 + 0x80));
        v359 = vrhaddq_u16(vrhaddq_u16(*(v50 + 16), *(v50 + 18)), v51);
        v52 = v50 + v43;
        v53 = *(2 * a8 + 0xB0);
        v360 = vrhaddq_u16(vrhaddq_u16(*v52, *(v52 + 2)), *(2 * a8 + 0xA0));
        v361 = vrhaddq_u16(vrhaddq_u16(*(v52 + 16), *(v52 + 18)), v53);
        v54 = v52 + v43;
        v55 = *(2 * a8 + 0xD0);
        v362 = vrhaddq_u16(vrhaddq_u16(*v54, *(v54 + 2)), *(2 * a8 + 0xC0));
        v363 = vrhaddq_u16(vrhaddq_u16(*(v54 + 16), *(v54 + 18)), v55);
        v56 = v54 + v43;
        v57 = *(2 * a8 + 0xF0);
        v364 = vrhaddq_u16(vrhaddq_u16(*v56, *(v56 + 2)), *(2 * a8 + 0xE0));
        v365 = vrhaddq_u16(vrhaddq_u16(*(v56 + 16), *(v56 + 18)), v57);
        v58 = v56 + v43;
        v59 = *(2 * a8 + 0x110);
        v366 = vrhaddq_u16(vrhaddq_u16(*v58, *(v58 + 2)), *(2 * a8 + 0x100));
        v367 = vrhaddq_u16(vrhaddq_u16(*(v58 + 16), *(v58 + 18)), v59);
        v60 = v58 + v43;
        v61 = *(2 * a8 + 0x130);
        v368 = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2)), *(2 * a8 + 0x120));
        v369 = vrhaddq_u16(vrhaddq_u16(*(v60 + 16), *(v60 + 18)), v61);
        v62 = v60 + v43;
        v63 = *(2 * a8 + 0x150);
        v370 = vrhaddq_u16(vrhaddq_u16(*v62, *(v62 + 2)), *(2 * a8 + 0x140));
        v371 = vrhaddq_u16(vrhaddq_u16(*(v62 + 16), *(v62 + 18)), v63);
        v64 = v62 + v43;
        v65 = *(2 * a8 + 0x170);
        v372 = vrhaddq_u16(vrhaddq_u16(*v64, *(v64 + 2)), *(2 * a8 + 0x160));
        v373 = vrhaddq_u16(vrhaddq_u16(*(v64 + 16), *(v64 + 18)), v65);
        v66 = v64 + v43;
        v67 = *(2 * a8 + 0x190);
        v374 = vrhaddq_u16(vrhaddq_u16(*v66, *(v66 + 2)), *(2 * a8 + 0x180));
        v375 = vrhaddq_u16(vrhaddq_u16(*(v66 + 16), *(v66 + 18)), v67);
        v68 = v66 + v43;
        v69 = *(2 * a8 + 0x1B0);
        v376 = vrhaddq_u16(vrhaddq_u16(*v68, *(v68 + 2)), *(2 * a8 + 0x1A0));
        v377 = vrhaddq_u16(vrhaddq_u16(*(v68 + 16), *(v68 + 18)), v69);
        v70 = v68 + v43;
        v71 = *(2 * a8 + 0x1D0);
        v378 = vrhaddq_u16(vrhaddq_u16(*v70, *(v70 + 2)), *(2 * a8 + 0x1C0));
        v72 = v70 + v43;
        v379 = vrhaddq_u16(vrhaddq_u16(*(v70 + 16), *(v70 + 18)), v71);
        v73 = *(2 * a8 + 0x1F0);
        v380 = vrhaddq_u16(vrhaddq_u16(*v72, *(v72 + 2)), *(2 * a8 + 0x1E0));
        v381 = vrhaddq_u16(vrhaddq_u16(*(v72 + 16), *(v72 + 18)), v73);
        v74 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v78 = vsubq_s16(*(&v350 + v41), v74[-1]);
          v79 = vpadalq_s16(v77, v78);
          v80 = vmlal_s16(v75, *v78.i8, *v78.i8);
          v81 = vmlal_high_s16(v76, v78, v78);
          v82 = vsubq_s16(*(&v350 + v41 + 16), *v74);
          v77 = vpadalq_s16(v79, v82);
          v75 = vmlal_s16(v80, *v82.i8, *v82.i8);
          v76 = vmlal_high_s16(v81, v82, v82);
          v41 += 32;
          v74 = (v74 + 2 * a6);
        }

        while (v41 != 512);
      }
    }
  }

  else
  {
    if (!a3)
    {
      v9 = (2 * a8);
      if (a4 == 4)
      {
        v96 = 2 * a2;
        v97 = (v8 + v96);
        v98 = *(2 * a8 + 0x10);
        v350 = vrhaddq_u16(vrhaddq_u16(*v8, *(v8 + v96)), *v9);
        v351 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x10 + v96)), v98);
        v99 = *(v8 + v96);
        v100 = (v8 + v96 + v96);
        v101 = *(2 * a8 + 0x30);
        v352 = vrhaddq_u16(vrhaddq_u16(v99, *v100), *(2 * a8 + 0x20));
        v353 = vrhaddq_u16(vrhaddq_u16(v97[1], *(v97 + v96 + 16)), v101);
        v102 = (v100 + v96);
        v103 = *(2 * a8 + 0x50);
        v354 = vrhaddq_u16(vrhaddq_u16(*v100, *(v100 + v96)), *(2 * a8 + 0x40));
        v355 = vrhaddq_u16(vrhaddq_u16(v100[1], *(v100 + v96 + 16)), v103);
        v104 = *(v100 + v96);
        v105 = (v100 + v96 + v96);
        v106 = *(2 * a8 + 0x70);
        v356 = vrhaddq_u16(vrhaddq_u16(v104, *v105), *(2 * a8 + 0x60));
        v357 = vrhaddq_u16(vrhaddq_u16(v102[1], *(v102 + v96 + 16)), v106);
        v107 = (v105 + v96);
        v108 = *(2 * a8 + 0x90);
        v358 = vrhaddq_u16(vrhaddq_u16(*v105, *(v105 + v96)), *(2 * a8 + 0x80));
        v359 = vrhaddq_u16(vrhaddq_u16(v105[1], *(v105 + v96 + 16)), v108);
        v109 = *(v105 + v96);
        v110 = (v105 + v96 + v96);
        v111 = *(2 * a8 + 0xB0);
        v360 = vrhaddq_u16(vrhaddq_u16(v109, *v110), *(2 * a8 + 0xA0));
        v361 = vrhaddq_u16(vrhaddq_u16(v107[1], *(v107 + v96 + 16)), v111);
        v112 = (v110 + v96);
        v113 = *(2 * a8 + 0xD0);
        v362 = vrhaddq_u16(vrhaddq_u16(*v110, *(v110 + v96)), *(2 * a8 + 0xC0));
        v363 = vrhaddq_u16(vrhaddq_u16(v110[1], *(v110 + v96 + 16)), v113);
        v114 = *(v110 + v96);
        v115 = (v110 + v96 + v96);
        v116 = *(2 * a8 + 0xF0);
        v364 = vrhaddq_u16(vrhaddq_u16(v114, *v115), *(2 * a8 + 0xE0));
        v365 = vrhaddq_u16(vrhaddq_u16(v112[1], *(v112 + v96 + 16)), v116);
        v117 = (v115 + v96);
        v118 = *(2 * a8 + 0x110);
        v366 = vrhaddq_u16(vrhaddq_u16(*v115, *(v115 + v96)), *(2 * a8 + 0x100));
        v367 = vrhaddq_u16(vrhaddq_u16(v115[1], *(v115 + v96 + 16)), v118);
        v119 = *(v115 + v96);
        v120 = (v115 + v96 + v96);
        v121 = *(2 * a8 + 0x130);
        v368 = vrhaddq_u16(vrhaddq_u16(v119, *v120), *(2 * a8 + 0x120));
        v369 = vrhaddq_u16(vrhaddq_u16(v117[1], *(v117 + v96 + 16)), v121);
        v122 = (v120 + v96);
        v123 = *(2 * a8 + 0x150);
        v370 = vrhaddq_u16(vrhaddq_u16(*v120, *(v120 + v96)), *(2 * a8 + 0x140));
        v371 = vrhaddq_u16(vrhaddq_u16(v120[1], *(v120 + v96 + 16)), v123);
        v124 = *(v120 + v96);
        v125 = (v120 + v96 + v96);
        v126 = *(2 * a8 + 0x170);
        v372 = vrhaddq_u16(vrhaddq_u16(v124, *v125), *(2 * a8 + 0x160));
        v373 = vrhaddq_u16(vrhaddq_u16(v122[1], *(v122 + v96 + 16)), v126);
        v127 = (v125 + v96);
        v128 = *(2 * a8 + 0x190);
        v374 = vrhaddq_u16(vrhaddq_u16(*v125, *(v125 + v96)), *(2 * a8 + 0x180));
        v375 = vrhaddq_u16(vrhaddq_u16(v125[1], *(v125 + v96 + 16)), v128);
        v129 = *(v125 + v96);
        v130 = (v125 + v96 + v96);
        v131 = *(2 * a8 + 0x1B0);
        v376 = vrhaddq_u16(vrhaddq_u16(v129, *v130), *(2 * a8 + 0x1A0));
        v377 = vrhaddq_u16(vrhaddq_u16(v127[1], *(v127 + v96 + 16)), v131);
        v132 = *(2 * a8 + 0x1D0);
        v378 = vrhaddq_u16(vrhaddq_u16(*v130, *(v130 + v96)), *(2 * a8 + 0x1C0));
        v379 = vrhaddq_u16(vrhaddq_u16(v130[1], *(v130 + v96 + 16)), v132);
        v380 = vrhaddq_u16(vrhaddq_u16(*(v130 + v96), *(v130 + v96 + v96)), *(2 * a8 + 0x1E0));
        v40 = vrhaddq_u16(*(&v130[1] + v96), *(&v130[1] + v96 + v96));
      }

      else
      {
        if (a4)
        {
          v172 = 0;
          v173 = vdupq_n_s16(8 - a4);
          v174 = vdupq_n_s16(a4);
          v175 = 2 * a2;
          do
          {
            v176 = (&v350 + v172 * 16);
            *v176 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v173), *(v8 + 2 * a2), v174), 3uLL), v9[v172]);
            v176[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 16), v173), *(v8 + v175 + 16), v174), 3uLL), v9[v172 + 1]);
            v172 += 2;
            v8 += v175;
          }

          while ((v172 * 16) != 512);
          goto LABEL_25;
        }

        v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
        v350 = vrhaddq_u16(*v8, *v9);
        v351 = v10;
        v11 = 2 * a2;
        v12 = *(2 * a8 + 0x30);
        v352 = vrhaddq_u16(*(v8 + v11), *(2 * a8 + 0x20));
        v353 = vrhaddq_u16(*(v8 + v11 + 16), v12);
        v13 = (v8 + v11 + v11);
        v14 = *(2 * a8 + 0x50);
        v354 = vrhaddq_u16(*v13, *(2 * a8 + 0x40));
        v355 = vrhaddq_u16(v13[1], v14);
        v15 = (v13 + v11);
        v16 = *(2 * a8 + 0x70);
        v356 = vrhaddq_u16(*v15, *(2 * a8 + 0x60));
        v357 = vrhaddq_u16(v15[1], v16);
        v17 = (v15 + v11);
        v18 = *(2 * a8 + 0x90);
        v358 = vrhaddq_u16(*v17, *(2 * a8 + 0x80));
        v359 = vrhaddq_u16(v17[1], v18);
        v19 = (v17 + v11);
        v20 = *(2 * a8 + 0xB0);
        v360 = vrhaddq_u16(*v19, *(2 * a8 + 0xA0));
        v361 = vrhaddq_u16(v19[1], v20);
        v21 = (v19 + v11);
        v22 = *(2 * a8 + 0xD0);
        v362 = vrhaddq_u16(*v21, *(2 * a8 + 0xC0));
        v363 = vrhaddq_u16(v21[1], v22);
        v23 = (v21 + v11);
        v24 = *(2 * a8 + 0xF0);
        v364 = vrhaddq_u16(*v23, *(2 * a8 + 0xE0));
        v365 = vrhaddq_u16(v23[1], v24);
        v25 = (v23 + v11);
        v26 = *(2 * a8 + 0x110);
        v366 = vrhaddq_u16(*v25, *(2 * a8 + 0x100));
        v367 = vrhaddq_u16(v25[1], v26);
        v27 = (v25 + v11);
        v28 = *(2 * a8 + 0x130);
        v368 = vrhaddq_u16(*v27, *(2 * a8 + 0x120));
        v369 = vrhaddq_u16(v27[1], v28);
        v29 = (v27 + v11);
        v30 = *(2 * a8 + 0x150);
        v370 = vrhaddq_u16(*v29, *(2 * a8 + 0x140));
        v371 = vrhaddq_u16(v29[1], v30);
        v31 = (v29 + v11);
        v32 = *(2 * a8 + 0x170);
        v372 = vrhaddq_u16(*v31, *(2 * a8 + 0x160));
        v373 = vrhaddq_u16(v31[1], v32);
        v33 = (v31 + v11);
        v34 = *(2 * a8 + 0x190);
        v374 = vrhaddq_u16(*v33, *(2 * a8 + 0x180));
        v375 = vrhaddq_u16(v33[1], v34);
        v35 = (v33 + v11);
        v36 = *(2 * a8 + 0x1B0);
        v376 = vrhaddq_u16(*v35, *(2 * a8 + 0x1A0));
        v377 = vrhaddq_u16(v35[1], v36);
        v37 = (v35 + v11);
        v38 = *(2 * a8 + 0x1D0);
        v378 = vrhaddq_u16(*v37, *(2 * a8 + 0x1C0));
        v379 = vrhaddq_u16(v37[1], v38);
        v39 = (v37 + v11);
        v380 = vrhaddq_u16(*v39, *(2 * a8 + 0x1E0));
        v40 = v39[1];
      }

      v381 = vrhaddq_u16(v40, *(2 * a8 + 0x1F0));
LABEL_25:
      v177 = 0;
      v178 = (2 * a5 + 16);
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v179 = vsubq_s16(*(&v350 + v177), v178[-1]);
        v180 = vpadalq_s16(v77, v179);
        v181 = vmlal_s16(v75, *v179.i8, *v179.i8);
        v182 = vmlal_high_s16(v76, v179, v179);
        v183 = vsubq_s16(*(&v350 + v177 + 16), *v178);
        v77 = vpadalq_s16(v180, v183);
        v75 = vmlal_s16(v181, *v183.i8, *v183.i8);
        v76 = vmlal_high_s16(v182, v183, v183);
        v177 += 32;
        v178 = (v178 + 2 * a6);
      }

      while (v177 != 512);
      goto LABEL_36;
    }

    if (a4 == 4)
    {
      v226 = 0;
      v227 = vdupq_n_s16(8 - a3);
      v228 = vdupq_n_s16(a3);
      v317 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v227), *(2 * a1 + 0x12), v228), 3uLL);
      v350 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v227), *(2 * a1 + 2), v228), 3uLL);
      v351 = v317;
      v229 = 2 * a2;
      v352 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v229), v227), *(v8 + v229 + 2), v228), 3uLL);
      v353 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v229 + 16), v227), *(v8 + v229 + 18), v228), 3uLL);
      v230 = v8 + v229 + v229;
      v354 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v230, v227), *(v230 + 2), v228), 3uLL);
      v355 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v230 + 16), v227), *(v230 + 18), v228), 3uLL);
      v231 = v230 + v229;
      v356 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v231, v227), *(v231 + 2), v228), 3uLL);
      v357 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v231 + 16), v227), *(v231 + 18), v228), 3uLL);
      v232 = v231 + v229;
      v358 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v232, v227), *(v232 + 2), v228), 3uLL);
      v359 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v232 + 16), v227), *(v232 + 18), v228), 3uLL);
      v233 = v232 + v229;
      v360 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v233, v227), *(v233 + 2), v228), 3uLL);
      v361 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v233 + 16), v227), *(v233 + 18), v228), 3uLL);
      v234 = v233 + v229;
      v362 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v234, v227), *(v234 + 2), v228), 3uLL);
      v363 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v234 + 16), v227), *(v234 + 18), v228), 3uLL);
      v235 = v234 + v229;
      v364 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v235, v227), *(v235 + 2), v228), 3uLL);
      v365 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 + 16), v227), *(v235 + 18), v228), 3uLL);
      v236 = v235 + v229;
      v366 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v236, v227), *(v236 + 2), v228), 3uLL);
      v367 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v236 + 16), v227), *(v236 + 18), v228), 3uLL);
      v237 = v236 + v229;
      v368 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v237, v227), *(v237 + 2), v228), 3uLL);
      v369 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v237 + 16), v227), *(v237 + 18), v228), 3uLL);
      v238 = v237 + v229;
      v370 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v238, v227), *(v238 + 2), v228), 3uLL);
      v371 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v238 + 16), v227), *(v238 + 18), v228), 3uLL);
      v239 = v238 + v229;
      v372 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v239, v227), *(v239 + 2), v228), 3uLL);
      v373 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v239 + 16), v227), *(v239 + 18), v228), 3uLL);
      v240 = v239 + v229;
      v374 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v240, v227), *(v240 + 2), v228), 3uLL);
      v375 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v240 + 16), v227), *(v240 + 18), v228), 3uLL);
      v241 = v240 + v229;
      v376 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v241, v227), *(v241 + 2), v228), 3uLL);
      v377 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v241 + 16), v227), *(v241 + 18), v228), 3uLL);
      v242 = v241 + v229;
      v378 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v242, v227), *(v242 + 2), v228), 3uLL);
      v379 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v242 + 16), v227), *(v242 + 18), v228), 3uLL);
      v243 = v242 + v229;
      v380 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v243, v227), *(v243 + 2), v228), 3uLL);
      v381 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v243 + 16), v227), *(v243 + 18), v228), 3uLL);
      v244 = v243 + v229;
      v382 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v244, v227), *(v244 + 2), v228), 3uLL);
      v383 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v244 + 16), v227), *(v244 + 18), v228), 3uLL);
      v245 = vrhaddq_u16(vrhaddq_u16(v317, v353), *(2 * a8 + 0x10));
      v318 = vrhaddq_u16(vrhaddq_u16(v350, v352), *(2 * a8));
      v319 = v245;
      v246 = vrhaddq_u16(vrhaddq_u16(v353, v355), *(2 * a8 + 0x30));
      v320 = vrhaddq_u16(vrhaddq_u16(v352, v354), *(2 * a8 + 0x20));
      v321 = v246;
      v247 = vrhaddq_u16(vrhaddq_u16(v355, v357), *(2 * a8 + 0x50));
      v322 = vrhaddq_u16(vrhaddq_u16(v354, v356), *(2 * a8 + 0x40));
      v323 = v247;
      v248 = vrhaddq_u16(vrhaddq_u16(v357, v359), *(2 * a8 + 0x70));
      v324 = vrhaddq_u16(vrhaddq_u16(v356, v358), *(2 * a8 + 0x60));
      v325 = v248;
      v249 = vrhaddq_u16(vrhaddq_u16(v359, v361), *(2 * a8 + 0x90));
      v326 = vrhaddq_u16(vrhaddq_u16(v358, v360), *(2 * a8 + 0x80));
      v327 = v249;
      v250 = vrhaddq_u16(vrhaddq_u16(v361, v363), *(2 * a8 + 0xB0));
      v328 = vrhaddq_u16(vrhaddq_u16(v360, v362), *(2 * a8 + 0xA0));
      v329 = v250;
      v251 = vrhaddq_u16(vrhaddq_u16(v363, v365), *(2 * a8 + 0xD0));
      v330 = vrhaddq_u16(vrhaddq_u16(v362, v364), *(2 * a8 + 0xC0));
      v331 = v251;
      v252 = vrhaddq_u16(vrhaddq_u16(v365, v367), *(2 * a8 + 0xF0));
      v332 = vrhaddq_u16(vrhaddq_u16(v364, v366), *(2 * a8 + 0xE0));
      v333 = v252;
      v253 = vrhaddq_u16(vrhaddq_u16(v367, v369), *(2 * a8 + 0x110));
      v334 = vrhaddq_u16(vrhaddq_u16(v366, v368), *(2 * a8 + 0x100));
      v335 = v253;
      v254 = vrhaddq_u16(vrhaddq_u16(v369, v371), *(2 * a8 + 0x130));
      v336 = vrhaddq_u16(vrhaddq_u16(v368, v370), *(2 * a8 + 0x120));
      v337 = v254;
      v255 = vrhaddq_u16(vrhaddq_u16(v371, v373), *(2 * a8 + 0x150));
      v338 = vrhaddq_u16(vrhaddq_u16(v370, v372), *(2 * a8 + 0x140));
      v339 = v255;
      v256 = vrhaddq_u16(vrhaddq_u16(v373, v375), *(2 * a8 + 0x170));
      v340 = vrhaddq_u16(vrhaddq_u16(v372, v374), *(2 * a8 + 0x160));
      v341 = v256;
      v257 = vrhaddq_u16(vrhaddq_u16(v375, v377), *(2 * a8 + 0x190));
      v342 = vrhaddq_u16(vrhaddq_u16(v374, v376), *(2 * a8 + 0x180));
      v343 = v257;
      v258 = vrhaddq_u16(vrhaddq_u16(v377, v379), *(2 * a8 + 0x1B0));
      v344 = vrhaddq_u16(vrhaddq_u16(v376, v378), *(2 * a8 + 0x1A0));
      v345 = v258;
      v259 = vrhaddq_u16(vrhaddq_u16(v379, v381), *(2 * a8 + 0x1D0));
      v346 = vrhaddq_u16(vrhaddq_u16(v378, v380), *(2 * a8 + 0x1C0));
      v347 = v259;
      v260 = vrhaddq_u16(vrhaddq_u16(v381, v383), *(2 * a8 + 0x1F0));
      v348 = vrhaddq_u16(vrhaddq_u16(v380, v382), *(2 * a8 + 0x1E0));
      v349 = v260;
      v261 = (2 * a5 + 16);
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v262 = vsubq_s16(*(&v318 + v226), v261[-1]);
        v263 = vpadalq_s16(v77, v262);
        v264 = vmlal_s16(v75, *v262.i8, *v262.i8);
        v265 = vmlal_high_s16(v76, v262, v262);
        v266 = vsubq_s16(*(&v318 + v226 + 16), *v261);
        v77 = vpadalq_s16(v263, v266);
        v75 = vmlal_s16(v264, *v266.i8, *v266.i8);
        v76 = vmlal_high_s16(v265, v266, v266);
        v226 += 32;
        v261 = (v261 + 2 * a6);
      }

      while (v226 != 512);
    }

    else
    {
      v83 = 0;
      if (a4)
      {
        v267 = vdupq_n_s16(8 - a3);
        v268 = vdupq_n_s16(a3);
        v269 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v267), *(2 * a1 + 0x12), v268), 3uLL);
        v350 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v267), *(2 * a1 + 2), v268), 3uLL);
        v351 = v269;
        v270 = 2 * a2;
        v271 = v8 + v270;
        v352 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v271, v267), *(v271 + 2), v268), 3uLL);
        v353 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v271 + 16), v267), *(v271 + 18), v268), 3uLL);
        v272 = v271 + v270;
        v354 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v272, v267), *(v272 + 2), v268), 3uLL);
        v355 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v272 + 16), v267), *(v272 + 18), v268), 3uLL);
        v273 = v272 + v270;
        v356 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v273, v267), *(v273 + 2), v268), 3uLL);
        v357 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v273 + 16), v267), *(v273 + 18), v268), 3uLL);
        v274 = v273 + v270;
        v358 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v274, v267), *(v274 + 2), v268), 3uLL);
        v359 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v274 + 16), v267), *(v274 + 18), v268), 3uLL);
        v275 = v274 + v270;
        v360 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v275, v267), *(v275 + 2), v268), 3uLL);
        v361 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v275 + 16), v267), *(v275 + 18), v268), 3uLL);
        v276 = v275 + v270;
        v362 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v276, v267), *(v276 + 2), v268), 3uLL);
        v363 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v276 + 16), v267), *(v276 + 18), v268), 3uLL);
        v277 = v276 + v270;
        v364 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v277, v267), *(v277 + 2), v268), 3uLL);
        v365 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v277 + 16), v267), *(v277 + 18), v268), 3uLL);
        v278 = v277 + v270;
        v366 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v278, v267), *(v278 + 2), v268), 3uLL);
        v367 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v278 + 16), v267), *(v278 + 18), v268), 3uLL);
        v279 = v278 + v270;
        v368 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v279, v267), *(v279 + 2), v268), 3uLL);
        v369 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v279 + 16), v267), *(v279 + 18), v268), 3uLL);
        v280 = v279 + v270;
        v370 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v280, v267), *(v280 + 2), v268), 3uLL);
        v371 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v280 + 16), v267), *(v280 + 18), v268), 3uLL);
        v281 = v280 + v270;
        v372 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v281, v267), *(v281 + 2), v268), 3uLL);
        v373 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v281 + 16), v267), *(v281 + 18), v268), 3uLL);
        v282 = v281 + v270;
        v374 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v282, v267), *(v282 + 2), v268), 3uLL);
        v375 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v282 + 16), v267), *(v282 + 18), v268), 3uLL);
        v283 = v282 + v270;
        v376 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v283, v267), *(v283 + 2), v268), 3uLL);
        v377 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v283 + 16), v267), *(v283 + 18), v268), 3uLL);
        v284 = v283 + v270;
        v378 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v284, v267), *(v284 + 2), v268), 3uLL);
        v379 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v284 + 16), v267), *(v284 + 18), v268), 3uLL);
        v285 = v284 + v270;
        v380 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v285, v267), *(v285 + 2), v268), 3uLL);
        v381 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v285 + 16), v267), *(v285 + 18), v268), 3uLL);
        v286 = v285 + v270;
        v382 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v286, v267), *(v286 + 2), v268), 3uLL);
        v383 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v286 + 16), v267), *(v286 + 18), v268), 3uLL);
        v287 = vdupq_n_s16(8 - a4);
        v288 = vdupq_n_s16(a4);
        v289 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v269, v287), v353, v288), 3uLL), *(2 * a8 + 0x10));
        v318 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v350, v287), v352, v288), 3uLL), *(2 * a8));
        v319 = v289;
        v290 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v353, v287), v355, v288), 3uLL), *(2 * a8 + 0x30));
        v320 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v352, v287), v354, v288), 3uLL), *(2 * a8 + 0x20));
        v321 = v290;
        v291 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v355, v287), v357, v288), 3uLL), *(2 * a8 + 0x50));
        v322 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v354, v287), v356, v288), 3uLL), *(2 * a8 + 0x40));
        v323 = v291;
        v292 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v357, v287), v359, v288), 3uLL), *(2 * a8 + 0x70));
        v324 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v356, v287), v358, v288), 3uLL), *(2 * a8 + 0x60));
        v325 = v292;
        v293 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v359, v287), v361, v288), 3uLL), *(2 * a8 + 0x90));
        v326 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v358, v287), v360, v288), 3uLL), *(2 * a8 + 0x80));
        v327 = v293;
        v294 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v361, v287), v363, v288), 3uLL), *(2 * a8 + 0xB0));
        v328 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v360, v287), v362, v288), 3uLL), *(2 * a8 + 0xA0));
        v329 = v294;
        v295 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v363, v287), v365, v288), 3uLL), *(2 * a8 + 0xD0));
        v330 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v362, v287), v364, v288), 3uLL), *(2 * a8 + 0xC0));
        v331 = v295;
        v296 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v365, v287), v367, v288), 3uLL), *(2 * a8 + 0xF0));
        v332 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v364, v287), v366, v288), 3uLL), *(2 * a8 + 0xE0));
        v333 = v296;
        v297 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v367, v287), v369, v288), 3uLL), *(2 * a8 + 0x110));
        v334 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v366, v287), v368, v288), 3uLL), *(2 * a8 + 0x100));
        v335 = v297;
        v298 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v369, v287), v371, v288), 3uLL), *(2 * a8 + 0x130));
        v336 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v368, v287), v370, v288), 3uLL), *(2 * a8 + 0x120));
        v337 = v298;
        v299 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v371, v287), v373, v288), 3uLL), *(2 * a8 + 0x150));
        v338 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v370, v287), v372, v288), 3uLL), *(2 * a8 + 0x140));
        v339 = v299;
        v300 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v373, v287), v375, v288), 3uLL), *(2 * a8 + 0x170));
        v340 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v372, v287), v374, v288), 3uLL), *(2 * a8 + 0x160));
        v341 = v300;
        v301 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v375, v287), v377, v288), 3uLL), *(2 * a8 + 0x190));
        v342 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v374, v287), v376, v288), 3uLL), *(2 * a8 + 0x180));
        v343 = v301;
        v302 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v377, v287), v379, v288), 3uLL), *(2 * a8 + 0x1B0));
        v344 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v376, v287), v378, v288), 3uLL), *(2 * a8 + 0x1A0));
        v345 = v302;
        v303 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v379, v287), v381, v288), 3uLL), *(2 * a8 + 0x1D0));
        v346 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v378, v287), v380, v288), 3uLL), *(2 * a8 + 0x1C0));
        v347 = v303;
        v304 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v380, v287), v382, v288), 3uLL), *(2 * a8 + 0x1E0));
        v305 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v381, v287), v383, v288), 3uLL), *(2 * a8 + 0x1F0));
        v348 = v304;
        v349 = v305;
        v306 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v307 = vsubq_s16(*(&v318 + v83), v306[-1]);
          v308 = vpadalq_s16(v77, v307);
          v309 = vmlal_s16(v75, *v307.i8, *v307.i8);
          v310 = vmlal_high_s16(v76, v307, v307);
          v311 = vsubq_s16(*(&v318 + v83 + 16), *v306);
          v77 = vpadalq_s16(v308, v311);
          v75 = vmlal_s16(v309, *v311.i8, *v311.i8);
          v76 = vmlal_high_s16(v310, v311, v311);
          v83 += 32;
          v306 = (v306 + 2 * a6);
        }

        while (v83 != 512);
      }

      else
      {
        v84 = 2 * a8;
        v85 = vdupq_n_s16(8 - a3);
        v86 = vdupq_n_s16(a3);
        v87 = (v8 + 18);
        do
        {
          v88 = (&v350 + v83);
          *v88 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v87 - 18), v85), v87[-1], v86), 3uLL), *(v84 + v83));
          v88[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v87 - 2), v85), *v87, v86), 3uLL), *(v84 + v83 + 16));
          v83 += 32;
          v87 = (v87 + 2 * a2);
        }

        while (v83 != 512);
        v89 = 0;
        v90 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v91 = vsubq_s16(*(&v350 + v89), v90[-1]);
          v92 = vpadalq_s16(v77, v91);
          v93 = vmlal_s16(v75, *v91.i8, *v91.i8);
          v94 = vmlal_high_s16(v76, v91, v91);
          v95 = vsubq_s16(*(&v350 + v89 + 16), *v90);
          v77 = vpadalq_s16(v92, v95);
          v75 = vmlal_s16(v93, *v95.i8, *v95.i8);
          v76 = vmlal_high_s16(v94, v95, v95);
          v89 += 32;
          v90 = (v90 + 2 * a6);
        }

        while (v89 != 512);
      }
    }
  }

LABEL_36:
  v312 = vaddvq_s32(v77);
  v313 = vaddlvq_u32(vaddq_s32(v76, v75));
  *a7 = (v313 + 8) >> 4;
  v314 = ((v313 + 8) >> 4) - (((((v312 << 30) + 0x80000000) >> 32) * (((v312 << 30) + 0x80000000) >> 32)) >> 8);
  return v314 & ~(v314 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance16x32_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v323 = *MEMORY[0x277D85DE8];
  v8 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v106 = 0;
      v107 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v257 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v258 = v107;
      v108 = 2 * a2;
      v109 = &v8->i8[v108];
      v259 = vrhaddq_u16(*v109, *(v109 + 2));
      v260 = vrhaddq_u16(*(v109 + 1), *(v109 + 18));
      v110 = &v109[v108];
      v261 = vrhaddq_u16(*v110, *(v110 + 2));
      v262 = vrhaddq_u16(*(v110 + 1), *(v110 + 18));
      v111 = &v110[v108];
      v263 = vrhaddq_u16(*v111, *(v111 + 2));
      v264 = vrhaddq_u16(*(v111 + 1), *(v111 + 18));
      v112 = &v111[v108];
      v265 = vrhaddq_u16(*v112, *(v112 + 2));
      v266 = vrhaddq_u16(*(v112 + 1), *(v112 + 18));
      v113 = &v112[v108];
      v267 = vrhaddq_u16(*v113, *(v113 + 2));
      v268 = vrhaddq_u16(*(v113 + 1), *(v113 + 18));
      v114 = &v113[v108];
      v269 = vrhaddq_u16(*v114, *(v114 + 2));
      v270 = vrhaddq_u16(*(v114 + 1), *(v114 + 18));
      v115 = &v114[v108];
      v271 = vrhaddq_u16(*v115, *(v115 + 2));
      v272 = vrhaddq_u16(*(v115 + 1), *(v115 + 18));
      v116 = &v115[v108];
      v273 = vrhaddq_u16(*v116, *(v116 + 2));
      v274 = vrhaddq_u16(*(v116 + 1), *(v116 + 18));
      v117 = &v116[v108];
      v275 = vrhaddq_u16(*v117, *(v117 + 2));
      v276 = vrhaddq_u16(*(v117 + 16), *(v117 + 18));
      v118 = v117 + v108;
      v277 = vrhaddq_u16(*v118, *(v118 + 2));
      v278 = vrhaddq_u16(*(v118 + 16), *(v118 + 18));
      v119 = v118 + v108;
      v279 = vrhaddq_u16(*v119, *(v119 + 2));
      v280 = vrhaddq_u16(*(v119 + 16), *(v119 + 18));
      v120 = v119 + v108;
      v281 = vrhaddq_u16(*v120, *(v120 + 2));
      v282 = vrhaddq_u16(*(v120 + 16), *(v120 + 18));
      v121 = v120 + v108;
      v283 = vrhaddq_u16(*v121, *(v121 + 2));
      v284 = vrhaddq_u16(*(v121 + 16), *(v121 + 18));
      v122 = v121 + v108;
      v285 = vrhaddq_u16(*v122, *(v122 + 2));
      v286 = vrhaddq_u16(*(v122 + 16), *(v122 + 18));
      v123 = v122 + v108;
      v287 = vrhaddq_u16(*v123, *(v123 + 2));
      v288 = vrhaddq_u16(*(v123 + 16), *(v123 + 18));
      v124 = v123 + v108;
      v289 = vrhaddq_u16(*v124, *(v124 + 2));
      v290 = vrhaddq_u16(*(v124 + 16), *(v124 + 18));
      v125 = v124 + v108;
      v291 = vrhaddq_u16(*v125, *(v125 + 2));
      v292 = vrhaddq_u16(*(v125 + 16), *(v125 + 18));
      v126 = v125 + v108;
      v293 = vrhaddq_u16(*v126, *(v126 + 2));
      v294 = vrhaddq_u16(*(v126 + 16), *(v126 + 18));
      v127 = v126 + v108;
      v295 = vrhaddq_u16(*v127, *(v127 + 2));
      v296 = vrhaddq_u16(*(v127 + 16), *(v127 + 18));
      v128 = v127 + v108;
      v297 = vrhaddq_u16(*v128, *(v128 + 2));
      v298 = vrhaddq_u16(*(v128 + 16), *(v128 + 18));
      v129 = v128 + v108;
      v299 = vrhaddq_u16(*v129, *(v129 + 2));
      v300 = vrhaddq_u16(*(v129 + 16), *(v129 + 18));
      v130 = v129 + v108;
      v301 = vrhaddq_u16(*v130, *(v130 + 2));
      v302 = vrhaddq_u16(*(v130 + 16), *(v130 + 18));
      v131 = v130 + v108;
      v303 = vrhaddq_u16(*v131, *(v131 + 2));
      v304 = vrhaddq_u16(*(v131 + 16), *(v131 + 18));
      v132 = v131 + v108;
      v305 = vrhaddq_u16(*v132, *(v132 + 2));
      v306 = vrhaddq_u16(*(v132 + 16), *(v132 + 18));
      v133 = v132 + v108;
      v307 = vrhaddq_u16(*v133, *(v133 + 2));
      v308 = vrhaddq_u16(*(v133 + 16), *(v133 + 18));
      v134 = v133 + v108;
      v309 = vrhaddq_u16(*v134, *(v134 + 2));
      v310 = vrhaddq_u16(*(v134 + 16), *(v134 + 18));
      v135 = v134 + v108;
      v311 = vrhaddq_u16(*v135, *(v135 + 2));
      v312 = vrhaddq_u16(*(v135 + 16), *(v135 + 18));
      v136 = v135 + v108;
      v313 = vrhaddq_u16(*v136, *(v136 + 2));
      v314 = vrhaddq_u16(*(v136 + 16), *(v136 + 18));
      v137 = v136 + v108;
      v315 = vrhaddq_u16(*v137, *(v137 + 2));
      v316 = vrhaddq_u16(*(v137 + 16), *(v137 + 18));
      v138 = v137 + v108;
      v317 = vrhaddq_u16(*v138, *(v138 + 2));
      v318 = vrhaddq_u16(*(v138 + 16), *(v138 + 18));
      v139 = v138 + v108;
      v319 = vrhaddq_u16(*v139, *(v139 + 2));
      v320 = vrhaddq_u16(*(v139 + 16), *(v139 + 18));
      v140 = v139 + v108;
      v321 = vrhaddq_u16(*v140, *(v140 + 2));
      v322 = vrhaddq_u16(*(v140 + 16), *(v140 + 18));
      v141 = 2 * a8;
      v142 = v257;
      do
      {
        v143 = *(&v259 + v106);
        v144 = vrhaddq_u16(vrhaddq_u16(*(&v257 + v106 + 16), *(&v260 + v106)), *(v141 + v106 + 16));
        v145 = &v256[v106];
        *v145 = vrhaddq_u16(vrhaddq_u16(v142, v143), *(v141 + v106));
        v145[1] = v144;
        v106 += 32;
        v142 = v143;
      }

      while (v106 != 1024);
      v146 = 0;
      v147 = (2 * a5 + 16);
      v80 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      do
      {
        v148 = vsubq_s16(*&v256[v146], v147[-1]);
        v149 = vpadalq_s16(v82, v148);
        v150 = vmlal_s16(v80, *v148.i8, *v148.i8);
        v151 = vmlal_high_s16(v81, v148, v148);
        v152 = vsubq_s16(*&v256[v146 + 16], *v147);
        v82 = vpadalq_s16(v149, v152);
        v80 = vmlal_s16(v150, *v152.i8, *v152.i8);
        v81 = vmlal_high_s16(v151, v152, v152);
        v146 += 32;
        v147 = (v147 + 2 * a6);
      }

      while (v146 != 1024);
    }

    else
    {
      v74 = 0;
      if (a4)
      {
        v167 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
        v257 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
        v258 = v167;
        v168 = 2 * a2;
        v169 = &v8->i8[v168];
        v259 = vrhaddq_u16(*v169, *(v169 + 2));
        v260 = vrhaddq_u16(*(v169 + 1), *(v169 + 18));
        v170 = &v169[v168];
        v261 = vrhaddq_u16(*v170, *(v170 + 2));
        v262 = vrhaddq_u16(*(v170 + 1), *(v170 + 18));
        v171 = &v170[v168];
        v263 = vrhaddq_u16(*v171, *(v171 + 2));
        v264 = vrhaddq_u16(*(v171 + 1), *(v171 + 18));
        v172 = &v171[v168];
        v265 = vrhaddq_u16(*v172, *(v172 + 2));
        v266 = vrhaddq_u16(*(v172 + 1), *(v172 + 18));
        v173 = &v172[v168];
        v267 = vrhaddq_u16(*v173, *(v173 + 2));
        v268 = vrhaddq_u16(*(v173 + 1), *(v173 + 18));
        v174 = &v173[v168];
        v269 = vrhaddq_u16(*v174, *(v174 + 2));
        v270 = vrhaddq_u16(*(v174 + 1), *(v174 + 18));
        v175 = &v174[v168];
        v271 = vrhaddq_u16(*v175, *(v175 + 2));
        v272 = vrhaddq_u16(*(v175 + 1), *(v175 + 18));
        v176 = &v175[v168];
        v273 = vrhaddq_u16(*v176, *(v176 + 2));
        v274 = vrhaddq_u16(*(v176 + 1), *(v176 + 18));
        v177 = &v176[v168];
        v275 = vrhaddq_u16(*v177, *(v177 + 2));
        v276 = vrhaddq_u16(*(v177 + 16), *(v177 + 18));
        v178 = v177 + v168;
        v277 = vrhaddq_u16(*v178, *(v178 + 2));
        v278 = vrhaddq_u16(*(v178 + 16), *(v178 + 18));
        v179 = v178 + v168;
        v279 = vrhaddq_u16(*v179, *(v179 + 2));
        v280 = vrhaddq_u16(*(v179 + 16), *(v179 + 18));
        v180 = v179 + v168;
        v281 = vrhaddq_u16(*v180, *(v180 + 2));
        v282 = vrhaddq_u16(*(v180 + 16), *(v180 + 18));
        v181 = v180 + v168;
        v283 = vrhaddq_u16(*v181, *(v181 + 2));
        v284 = vrhaddq_u16(*(v181 + 16), *(v181 + 18));
        v182 = v181 + v168;
        v285 = vrhaddq_u16(*v182, *(v182 + 2));
        v286 = vrhaddq_u16(*(v182 + 16), *(v182 + 18));
        v183 = v182 + v168;
        v287 = vrhaddq_u16(*v183, *(v183 + 2));
        v288 = vrhaddq_u16(*(v183 + 16), *(v183 + 18));
        v184 = v183 + v168;
        v289 = vrhaddq_u16(*v184, *(v184 + 2));
        v290 = vrhaddq_u16(*(v184 + 16), *(v184 + 18));
        v185 = v184 + v168;
        v291 = vrhaddq_u16(*v185, *(v185 + 2));
        v292 = vrhaddq_u16(*(v185 + 16), *(v185 + 18));
        v186 = v185 + v168;
        v293 = vrhaddq_u16(*v186, *(v186 + 2));
        v294 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
        v187 = v186 + v168;
        v295 = vrhaddq_u16(*v187, *(v187 + 2));
        v296 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
        v188 = v187 + v168;
        v297 = vrhaddq_u16(*v188, *(v188 + 2));
        v298 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
        v189 = v188 + v168;
        v299 = vrhaddq_u16(*v189, *(v189 + 2));
        v300 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
        v190 = v189 + v168;
        v301 = vrhaddq_u16(*v190, *(v190 + 2));
        v302 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
        v191 = v190 + v168;
        v303 = vrhaddq_u16(*v191, *(v191 + 2));
        v304 = vrhaddq_u16(*(v191 + 16), *(v191 + 18));
        v192 = v191 + v168;
        v305 = vrhaddq_u16(*v192, *(v192 + 2));
        v306 = vrhaddq_u16(*(v192 + 16), *(v192 + 18));
        v193 = v192 + v168;
        v307 = vrhaddq_u16(*v193, *(v193 + 2));
        v308 = vrhaddq_u16(*(v193 + 16), *(v193 + 18));
        v194 = v193 + v168;
        v309 = vrhaddq_u16(*v194, *(v194 + 2));
        v310 = vrhaddq_u16(*(v194 + 16), *(v194 + 18));
        v195 = v194 + v168;
        v311 = vrhaddq_u16(*v195, *(v195 + 2));
        v312 = vrhaddq_u16(*(v195 + 16), *(v195 + 18));
        v196 = v195 + v168;
        v313 = vrhaddq_u16(*v196, *(v196 + 2));
        v314 = vrhaddq_u16(*(v196 + 16), *(v196 + 18));
        v197 = v196 + v168;
        v315 = vrhaddq_u16(*v197, *(v197 + 2));
        v316 = vrhaddq_u16(*(v197 + 16), *(v197 + 18));
        v198 = v197 + v168;
        v317 = vrhaddq_u16(*v198, *(v198 + 2));
        v318 = vrhaddq_u16(*(v198 + 16), *(v198 + 18));
        v199 = v198 + v168;
        v319 = vrhaddq_u16(*v199, *(v199 + 2));
        v200 = v199 + v168;
        v320 = vrhaddq_u16(*(v199 + 16), *(v199 + 18));
        v321 = vrhaddq_u16(*v200, *(v200 + 2));
        v322 = vrhaddq_u16(*(v200 + 16), *(v200 + 18));
        v201 = vdupq_n_s16(8 - a4);
        v202 = 2 * a8;
        v203 = vdupq_n_s16(a4);
        v204 = v257;
        do
        {
          v205 = *(&v259 + v74);
          v206 = &v256[v74];
          v207 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v257 + v74 + 16), v201), *(&v260 + v74), v203), 3uLL), *(v202 + v74 + 16));
          *v206 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v204, v201), v205, v203), 3uLL), *(v202 + v74));
          v206[1] = v207;
          v74 += 32;
          v204 = v205;
        }

        while (v74 != 1024);
        v208 = 0;
        v209 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v210 = vsubq_s16(*&v256[v208], v209[-1]);
          v211 = vpadalq_s16(v82, v210);
          v212 = vmlal_s16(v80, *v210.i8, *v210.i8);
          v213 = vmlal_high_s16(v81, v210, v210);
          v214 = vsubq_s16(*&v256[v208 + 16], *v209);
          v82 = vpadalq_s16(v211, v214);
          v80 = vmlal_s16(v212, *v214.i8, *v214.i8);
          v81 = vmlal_high_s16(v213, v214, v214);
          v208 += 32;
          v209 = (v209 + 2 * a6);
        }

        while (v208 != 1024);
      }

      else
      {
        v75 = 2 * a8;
        v76 = (v8 + 18);
        do
        {
          v77 = (&v257 + v74);
          *v77 = vrhaddq_u16(vrhaddq_u16(*(v76 - 18), v76[-1]), *(v75 + v74));
          v77[1] = vrhaddq_u16(vrhaddq_u16(*(v76 - 2), *v76), *(v75 + v74 + 16));
          v74 += 32;
          v76 = (v76 + 2 * a2);
        }

        while (v74 != 1024);
        v78 = 0;
        v79 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v83 = vsubq_s16(*(&v257 + v78), v79[-1]);
          v84 = vpadalq_s16(v82, v83);
          v85 = vmlal_s16(v80, *v83.i8, *v83.i8);
          v86 = vmlal_high_s16(v81, v83, v83);
          v87 = vsubq_s16(*(&v257 + v78 + 16), *v79);
          v82 = vpadalq_s16(v84, v87);
          v80 = vmlal_s16(v85, *v87.i8, *v87.i8);
          v81 = vmlal_high_s16(v86, v87, v87);
          v78 += 32;
          v79 = (v79 + 2 * a6);
        }

        while (v78 != 1024);
      }
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v215 = 0;
      v216 = vdupq_n_s16(8 - a3);
      v217 = vdupq_n_s16(a3);
      v218 = &v8[1].i16[1];
      do
      {
        v219 = (&v257 + v215);
        *v219 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v218 - 18), v216), v218[-1], v217), 3uLL);
        v219[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v218 - 2), v216), *v218, v217), 3uLL);
        v215 += 32;
        v218 = (v218 + 2 * a2);
      }

      while (v215 != 1056);
      v220 = 0;
      v221 = 2 * a8;
      v222 = v257;
      do
      {
        v223 = *(&v259 + v220);
        v224 = vrhaddq_u16(vrhaddq_u16(*(&v257 + v220 + 16), *(&v260 + v220)), *(v221 + v220 + 16));
        v225 = &v256[v220];
        *v225 = vrhaddq_u16(vrhaddq_u16(v222, v223), *(v221 + v220));
        v225[1] = v224;
        v220 += 32;
        v222 = v223;
      }

      while (v220 != 1024);
      v226 = 0;
      v227 = (2 * a5 + 16);
      v80 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      do
      {
        v228 = vsubq_s16(*&v256[v226], v227[-1]);
        v229 = vpadalq_s16(v82, v228);
        v230 = vmlal_s16(v80, *v228.i8, *v228.i8);
        v231 = vmlal_high_s16(v81, v228, v228);
        v232 = vsubq_s16(*&v256[v226 + 16], *v227);
        v82 = vpadalq_s16(v229, v232);
        v80 = vmlal_s16(v230, *v232.i8, *v232.i8);
        v81 = vmlal_high_s16(v231, v232, v232);
        v226 += 32;
        v227 = (v227 + 2 * a6);
      }

      while (v226 != 1024);
    }

    else
    {
      v88 = 0;
      if (a4)
      {
        v233 = vdupq_n_s16(8 - a3);
        v234 = vdupq_n_s16(a3);
        v235 = &v8[1].i16[1];
        do
        {
          v236 = (&v257 + v88);
          *v236 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 - 18), v233), v235[-1], v234), 3uLL);
          v236[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 - 2), v233), *v235, v234), 3uLL);
          v88 += 32;
          v235 = (v235 + 2 * a2);
        }

        while (v88 != 1056);
        v237 = 0;
        v238 = vdupq_n_s16(8 - a4);
        v239 = 2 * a8;
        v240 = vdupq_n_s16(a4);
        v241 = v257;
        do
        {
          v242 = *(&v259 + v237);
          v243 = &v256[v237];
          v244 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v257 + v237 + 16), v238), *(&v260 + v237), v240), 3uLL), *(v239 + v237 + 16));
          *v243 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v241, v238), v242, v240), 3uLL), *(v239 + v237));
          v243[1] = v244;
          v237 += 32;
          v241 = v242;
        }

        while (v237 != 1024);
        v245 = 0;
        v246 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v247 = vsubq_s16(*&v256[v245], v246[-1]);
          v248 = vpadalq_s16(v82, v247);
          v249 = vmlal_s16(v80, *v247.i8, *v247.i8);
          v250 = vmlal_high_s16(v81, v247, v247);
          v251 = vsubq_s16(*&v256[v245 + 16], *v246);
          v82 = vpadalq_s16(v248, v251);
          v80 = vmlal_s16(v249, *v251.i8, *v251.i8);
          v81 = vmlal_high_s16(v250, v251, v251);
          v245 += 32;
          v246 = (v246 + 2 * a6);
        }

        while (v245 != 1024);
      }

      else
      {
        v89 = 2 * a8;
        v90 = vdupq_n_s16(8 - a3);
        v91 = vdupq_n_s16(a3);
        v92 = &v8[1].i16[1];
        do
        {
          v93 = (&v257 + v88);
          *v93 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v92 - 18), v90), v92[-1], v91), 3uLL), *(v89 + v88));
          v93[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v92 - 2), v90), *v92, v91), 3uLL), *(v89 + v88 + 16));
          v88 += 32;
          v92 = (v92 + 2 * a2);
        }

        while (v88 != 1024);
        v94 = 0;
        v95 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v96 = vsubq_s16(*(&v257 + v94), v95[-1]);
          v97 = vpadalq_s16(v82, v96);
          v98 = vmlal_s16(v80, *v96.i8, *v96.i8);
          v99 = vmlal_high_s16(v81, v96, v96);
          v100 = vsubq_s16(*(&v257 + v94 + 16), *v95);
          v82 = vpadalq_s16(v97, v100);
          v80 = vmlal_s16(v98, *v100.i8, *v100.i8);
          v81 = vmlal_high_s16(v99, v100, v100);
          v94 += 32;
          v95 = (v95 + 2 * a6);
        }

        while (v94 != 1024);
      }
    }
  }

  else
  {
    v9 = (2 * a8);
    if (a4 == 4)
    {
      v101 = 0;
      v102 = *v8;
      v103 = 2 * a2;
      do
      {
        v104 = (&v257 + v101 * 16);
        v105 = *(v8 + 2 * a2);
        *v104 = vrhaddq_u16(vrhaddq_u16(v102, v105), v9[v101]);
        v104[1] = vrhaddq_u16(vrhaddq_u16(v8[1], *(&v8[1] + v103)), v9[v101 + 1]);
        v101 += 2;
        v8 = (v8 + v103);
        v102 = v105;
      }

      while ((v101 * 16) != 1024);
    }

    else if (a4)
    {
      v153 = 0;
      v154 = vdupq_n_s16(8 - a4);
      v155 = vdupq_n_s16(a4);
      v156 = *v8;
      v157 = 2 * a2;
      do
      {
        v158 = (&v257 + v153 * 16);
        v159 = *(v8 + 2 * a2);
        *v158 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v156, v154), v159, v155), 3uLL), v9[v153]);
        v158[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v8[1], v154), *(&v8[1] + v157), v155), 3uLL), v9[v153 + 1]);
        v153 += 2;
        v8 = (v8 + v157);
        v156 = v159;
      }

      while ((v153 * 16) != 1024);
    }

    else
    {
      v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
      v257 = vrhaddq_u16(*v8, *v9);
      v258 = v10;
      v11 = 2 * a2;
      v12 = (v8 + v11);
      v13 = *(2 * a8 + 0x30);
      v259 = vrhaddq_u16(*v12, *(2 * a8 + 0x20));
      v260 = vrhaddq_u16(v12[1], v13);
      v14 = (v12 + v11);
      v15 = *(2 * a8 + 0x50);
      v261 = vrhaddq_u16(*v14, *(2 * a8 + 0x40));
      v262 = vrhaddq_u16(v14[1], v15);
      v16 = (v14 + v11);
      v17 = *(2 * a8 + 0x70);
      v263 = vrhaddq_u16(*v16, *(2 * a8 + 0x60));
      v264 = vrhaddq_u16(v16[1], v17);
      v18 = (v16 + v11);
      v19 = *(2 * a8 + 0x90);
      v265 = vrhaddq_u16(*v18, *(2 * a8 + 0x80));
      v266 = vrhaddq_u16(v18[1], v19);
      v20 = (v18 + v11);
      v21 = *(2 * a8 + 0xB0);
      v267 = vrhaddq_u16(*v20, *(2 * a8 + 0xA0));
      v268 = vrhaddq_u16(v20[1], v21);
      v22 = (v20 + v11);
      v23 = *(2 * a8 + 0xD0);
      v269 = vrhaddq_u16(*v22, *(2 * a8 + 0xC0));
      v270 = vrhaddq_u16(v22[1], v23);
      v24 = (v22 + v11);
      v25 = *(2 * a8 + 0xF0);
      v271 = vrhaddq_u16(*v24, *(2 * a8 + 0xE0));
      v272 = vrhaddq_u16(v24[1], v25);
      v26 = (v24 + v11);
      v27 = *(2 * a8 + 0x110);
      v273 = vrhaddq_u16(*v26, *(2 * a8 + 0x100));
      v274 = vrhaddq_u16(v26[1], v27);
      v28 = (v26 + v11);
      v29 = *(2 * a8 + 0x130);
      v275 = vrhaddq_u16(*v28, *(2 * a8 + 0x120));
      v276 = vrhaddq_u16(v28[1], v29);
      v30 = (v28 + v11);
      v31 = *(2 * a8 + 0x150);
      v277 = vrhaddq_u16(*v30, *(2 * a8 + 0x140));
      v278 = vrhaddq_u16(v30[1], v31);
      v32 = (v30 + v11);
      v33 = *(2 * a8 + 0x170);
      v279 = vrhaddq_u16(*v32, *(2 * a8 + 0x160));
      v280 = vrhaddq_u16(v32[1], v33);
      v34 = (v32 + v11);
      v35 = *(2 * a8 + 0x190);
      v281 = vrhaddq_u16(*v34, *(2 * a8 + 0x180));
      v282 = vrhaddq_u16(v34[1], v35);
      v36 = (v34 + v11);
      v37 = *(2 * a8 + 0x1B0);
      v283 = vrhaddq_u16(*v36, *(2 * a8 + 0x1A0));
      v284 = vrhaddq_u16(v36[1], v37);
      v38 = (v36 + v11);
      v39 = *(2 * a8 + 0x1D0);
      v285 = vrhaddq_u16(*v38, *(2 * a8 + 0x1C0));
      v286 = vrhaddq_u16(v38[1], v39);
      v40 = (v38 + v11);
      v41 = *(2 * a8 + 0x1F0);
      v287 = vrhaddq_u16(*v40, *(2 * a8 + 0x1E0));
      v288 = vrhaddq_u16(v40[1], v41);
      v42 = (v40 + v11);
      v43 = *(2 * a8 + 0x210);
      v289 = vrhaddq_u16(*v42, *(2 * a8 + 0x200));
      v290 = vrhaddq_u16(v42[1], v43);
      v44 = (v42 + v11);
      v45 = *(2 * a8 + 0x230);
      v291 = vrhaddq_u16(*v44, *(2 * a8 + 0x220));
      v292 = vrhaddq_u16(v44[1], v45);
      v46 = (v44 + v11);
      v47 = *(2 * a8 + 0x250);
      v293 = vrhaddq_u16(*v46, *(2 * a8 + 0x240));
      v294 = vrhaddq_u16(v46[1], v47);
      v48 = (v46 + v11);
      v49 = *(2 * a8 + 0x270);
      v295 = vrhaddq_u16(*v48, *(2 * a8 + 0x260));
      v296 = vrhaddq_u16(v48[1], v49);
      v50 = (v48 + v11);
      v51 = *(2 * a8 + 0x290);
      v297 = vrhaddq_u16(*v50, *(2 * a8 + 0x280));
      v298 = vrhaddq_u16(v50[1], v51);
      v52 = (v50 + v11);
      v53 = *(2 * a8 + 0x2B0);
      v299 = vrhaddq_u16(*v52, *(2 * a8 + 0x2A0));
      v300 = vrhaddq_u16(v52[1], v53);
      v54 = (v52 + v11);
      v55 = *(2 * a8 + 0x2D0);
      v301 = vrhaddq_u16(*v54, *(2 * a8 + 0x2C0));
      v302 = vrhaddq_u16(v54[1], v55);
      v56 = (v54 + v11);
      v57 = *(2 * a8 + 0x2F0);
      v303 = vrhaddq_u16(*v56, *(2 * a8 + 0x2E0));
      v304 = vrhaddq_u16(v56[1], v57);
      v58 = (v56 + v11);
      v59 = *(2 * a8 + 0x310);
      v305 = vrhaddq_u16(*v58, *(2 * a8 + 0x300));
      v306 = vrhaddq_u16(v58[1], v59);
      v60 = (v58 + v11);
      v61 = *(2 * a8 + 0x330);
      v307 = vrhaddq_u16(*v60, *(2 * a8 + 0x320));
      v308 = vrhaddq_u16(v60[1], v61);
      v62 = (v60 + v11);
      v63 = *(2 * a8 + 0x350);
      v309 = vrhaddq_u16(*v62, *(2 * a8 + 0x340));
      v310 = vrhaddq_u16(v62[1], v63);
      v64 = (v62 + v11);
      v65 = *(2 * a8 + 0x370);
      v311 = vrhaddq_u16(*v64, *(2 * a8 + 0x360));
      v312 = vrhaddq_u16(v64[1], v65);
      v66 = (v64 + v11);
      v67 = *(2 * a8 + 0x390);
      v313 = vrhaddq_u16(*v66, *(2 * a8 + 0x380));
      v314 = vrhaddq_u16(v66[1], v67);
      v68 = (v66 + v11);
      v69 = *(2 * a8 + 0x3B0);
      v315 = vrhaddq_u16(*v68, *(2 * a8 + 0x3A0));
      v316 = vrhaddq_u16(v68[1], v69);
      v70 = (v68 + v11);
      v71 = *(2 * a8 + 0x3D0);
      v317 = vrhaddq_u16(*v70, *(2 * a8 + 0x3C0));
      v318 = vrhaddq_u16(v70[1], v71);
      v72 = (v70 + v11);
      v73 = *(2 * a8 + 0x3F0);
      v319 = vrhaddq_u16(*v72, *(2 * a8 + 0x3E0));
      v320 = vrhaddq_u16(v72[1], v73);
    }

    v160 = 0;
    v161 = (2 * a5 + 16);
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    do
    {
      v162 = vsubq_s16(*(&v257 + v160), v161[-1]);
      v163 = vpadalq_s16(v82, v162);
      v164 = vmlal_s16(v80, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v81, v162, v162);
      v166 = vsubq_s16(*(&v257 + v160 + 16), *v161);
      v82 = vpadalq_s16(v163, v166);
      v80 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v81 = vmlal_high_s16(v165, v166, v166);
      v160 += 32;
      v161 = (v161 + 2 * a6);
    }

    while (v160 != 1024);
  }

  v252 = vaddvq_s32(v82);
  v253 = vaddlvq_u32(vaddq_s32(v81, v80));
  *a7 = (v253 + 8) >> 4;
  v254 = ((v253 + 8) >> 4) - (((((v252 << 30) + 0x80000000) >> 32) * (((v252 << 30) + 0x80000000) >> 32)) >> 9);
  return v254 & ~(v254 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance32x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v354 = *MEMORY[0x277D85DE8];
  v8 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v105 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v286 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v287 = v105;
      v106 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v288 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v289 = v106;
      v107 = 2 * a2;
      v108 = &v8->i8[v107];
      v109 = &v290;
      v290 = vrhaddq_u16(*v108, *(v108 + 2));
      v291 = vrhaddq_u16(*(v108 + 1), *(v108 + 18));
      v292 = vrhaddq_u16(*(v108 + 2), *(v108 + 34));
      v293 = vrhaddq_u16(*(v108 + 3), *(v108 + 50));
      v110 = &v108[v107];
      v294 = vrhaddq_u16(*v110, *(v110 + 2));
      v295 = vrhaddq_u16(*(v110 + 1), *(v110 + 18));
      v296 = vrhaddq_u16(*(v110 + 2), *(v110 + 34));
      v297 = vrhaddq_u16(*(v110 + 3), *(v110 + 50));
      v111 = &v110[v107];
      v298 = vrhaddq_u16(*v111, *(v111 + 2));
      v299 = vrhaddq_u16(*(v111 + 1), *(v111 + 18));
      v300 = vrhaddq_u16(*(v111 + 2), *(v111 + 34));
      v301 = vrhaddq_u16(*(v111 + 3), *(v111 + 50));
      v112 = &v111[v107];
      v302 = vrhaddq_u16(*v112, *(v112 + 2));
      v303 = vrhaddq_u16(*(v112 + 1), *(v112 + 18));
      v304 = vrhaddq_u16(*(v112 + 2), *(v112 + 34));
      v305 = vrhaddq_u16(*(v112 + 3), *(v112 + 50));
      v113 = &v112[v107];
      v306 = vrhaddq_u16(*v113, *(v113 + 2));
      v307 = vrhaddq_u16(*(v113 + 1), *(v113 + 18));
      v308 = vrhaddq_u16(*(v113 + 2), *(v113 + 34));
      v309 = vrhaddq_u16(*(v113 + 3), *(v113 + 50));
      v114 = &v113[v107];
      v310 = vrhaddq_u16(*v114, *(v114 + 2));
      v311 = vrhaddq_u16(*(v114 + 1), *(v114 + 18));
      v312 = vrhaddq_u16(*(v114 + 2), *(v114 + 34));
      v313 = vrhaddq_u16(*(v114 + 3), *(v114 + 50));
      v115 = &v114[v107];
      v314 = vrhaddq_u16(*v115, *(v115 + 2));
      v315 = vrhaddq_u16(*(v115 + 1), *(v115 + 18));
      v316 = vrhaddq_u16(*(v115 + 2), *(v115 + 34));
      v317 = vrhaddq_u16(*(v115 + 3), *(v115 + 50));
      v116 = &v115[v107];
      v318 = vrhaddq_u16(*v116, *(v116 + 2));
      v319 = vrhaddq_u16(*(v116 + 1), *(v116 + 18));
      v320 = vrhaddq_u16(*(v116 + 2), *(v116 + 34));
      v321 = vrhaddq_u16(*(v116 + 3), *(v116 + 50));
      v117 = &v116[v107];
      v322 = vrhaddq_u16(*v117, *(v117 + 2));
      v323 = vrhaddq_u16(*(v117 + 16), *(v117 + 18));
      v324 = vrhaddq_u16(*(v117 + 32), *(v117 + 34));
      v325 = vrhaddq_u16(*(v117 + 48), *(v117 + 50));
      v118 = v117 + v107;
      v326 = vrhaddq_u16(*v118, *(v118 + 2));
      v327 = vrhaddq_u16(*(v118 + 16), *(v118 + 18));
      v328 = vrhaddq_u16(*(v118 + 32), *(v118 + 34));
      v329 = vrhaddq_u16(*(v118 + 48), *(v118 + 50));
      v119 = v118 + v107;
      v330 = vrhaddq_u16(*v119, *(v119 + 2));
      v331 = vrhaddq_u16(*(v119 + 16), *(v119 + 18));
      v332 = vrhaddq_u16(*(v119 + 32), *(v119 + 34));
      v333 = vrhaddq_u16(*(v119 + 48), *(v119 + 50));
      v120 = v119 + v107;
      v334 = vrhaddq_u16(*v120, *(v120 + 2));
      v335 = vrhaddq_u16(*(v120 + 16), *(v120 + 18));
      v336 = vrhaddq_u16(*(v120 + 32), *(v120 + 34));
      v337 = vrhaddq_u16(*(v120 + 48), *(v120 + 50));
      v121 = v120 + v107;
      v338 = vrhaddq_u16(*v121, *(v121 + 2));
      v339 = vrhaddq_u16(*(v121 + 16), *(v121 + 18));
      v340 = vrhaddq_u16(*(v121 + 32), *(v121 + 34));
      v341 = vrhaddq_u16(*(v121 + 48), *(v121 + 50));
      v122 = v121 + v107;
      v342 = vrhaddq_u16(*v122, *(v122 + 2));
      v343 = vrhaddq_u16(*(v122 + 16), *(v122 + 18));
      v344 = vrhaddq_u16(*(v122 + 32), *(v122 + 34));
      v345 = vrhaddq_u16(*(v122 + 48), *(v122 + 50));
      v123 = v122 + v107;
      v346 = vrhaddq_u16(*v123, *(v123 + 2));
      v347 = vrhaddq_u16(*(v123 + 16), *(v123 + 18));
      v348 = vrhaddq_u16(*(v123 + 32), *(v123 + 34));
      v349 = vrhaddq_u16(*(v123 + 48), *(v123 + 50));
      v124 = v123 + v107;
      v350 = vrhaddq_u16(*v124, *(v124 + 2));
      v351 = vrhaddq_u16(*(v124 + 16), *(v124 + 18));
      v352 = vrhaddq_u16(*(v124 + 32), *(v124 + 34));
      v353 = vrhaddq_u16(*(v124 + 48), *(v124 + 50));
      v125 = 2 * a8;
      v126 = v286;
      v127 = 112;
      do
      {
        v129 = v109[-1];
        v128 = *v109;
        v130 = v109[-2];
        v131 = v109[2];
        v132 = vrhaddq_u16(vrhaddq_u16(v109[-3], v109[1]), *(v125 + v127 - 96));
        v133 = &v285[v127];
        v133[-7] = vrhaddq_u16(vrhaddq_u16(v126, *v109), *(v125 + v127 - 112));
        v133[-6] = v132;
        v134 = vrhaddq_u16(vrhaddq_u16(v129, v109[3]), *(v125 + v127 - 64));
        v133[-5] = vrhaddq_u16(vrhaddq_u16(v130, v131), *(v125 + v127 - 80));
        v133[-4] = v134;
        v127 += 64;
        v109 += 4;
        v126 = v128;
      }

      while (v127 != 1136);
      v135 = 0;
      v136 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v137 = vsubq_s16(*&v285[v135], v136[-2]);
        v138 = vpadalq_s16(v66, v137);
        v139 = vmlal_s16(v64, *v137.i8, *v137.i8);
        v140 = vmlal_high_s16(v65, v137, v137);
        v141 = vsubq_s16(*&v285[v135 + 16], v136[-1]);
        v142 = vpadalq_s16(v138, v141);
        v143 = vmlal_s16(v139, *v141.i8, *v141.i8);
        v144 = vmlal_high_s16(v140, v141, v141);
        v145 = vsubq_s16(*&v285[v135 + 32], *v136);
        v146 = vpadalq_s16(v142, v145);
        v147 = vmlal_s16(v143, *v145.i8, *v145.i8);
        v148 = vmlal_high_s16(v144, v145, v145);
        v149 = vsubq_s16(*&v285[v135 + 48], v136[1]);
        v66 = vpadalq_s16(v146, v149);
        v64 = vmlal_s16(v147, *v149.i8, *v149.i8);
        v65 = vmlal_high_s16(v148, v149, v149);
        v135 += 64;
        v136 = (v136 + 2 * a6);
      }

      while (v135 != 1024);
    }

    else if (a4)
    {
      v171 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v286 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v287 = v171;
      v172 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v288 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v289 = v172;
      v173 = 2 * a2;
      v174 = &v8->i8[v173];
      v175 = &v290;
      v290 = vrhaddq_u16(*v174, *(v174 + 2));
      v291 = vrhaddq_u16(*(v174 + 1), *(v174 + 18));
      v292 = vrhaddq_u16(*(v174 + 2), *(v174 + 34));
      v293 = vrhaddq_u16(*(v174 + 3), *(v174 + 50));
      v176 = &v174[v173];
      v294 = vrhaddq_u16(*v176, *(v176 + 2));
      v295 = vrhaddq_u16(*(v176 + 1), *(v176 + 18));
      v296 = vrhaddq_u16(*(v176 + 2), *(v176 + 34));
      v297 = vrhaddq_u16(*(v176 + 3), *(v176 + 50));
      v177 = &v176[v173];
      v298 = vrhaddq_u16(*v177, *(v177 + 2));
      v299 = vrhaddq_u16(*(v177 + 1), *(v177 + 18));
      v300 = vrhaddq_u16(*(v177 + 2), *(v177 + 34));
      v301 = vrhaddq_u16(*(v177 + 3), *(v177 + 50));
      v178 = &v177[v173];
      v302 = vrhaddq_u16(*v178, *(v178 + 2));
      v303 = vrhaddq_u16(*(v178 + 1), *(v178 + 18));
      v304 = vrhaddq_u16(*(v178 + 2), *(v178 + 34));
      v305 = vrhaddq_u16(*(v178 + 3), *(v178 + 50));
      v179 = &v178[v173];
      v306 = vrhaddq_u16(*v179, *(v179 + 2));
      v307 = vrhaddq_u16(*(v179 + 1), *(v179 + 18));
      v308 = vrhaddq_u16(*(v179 + 2), *(v179 + 34));
      v309 = vrhaddq_u16(*(v179 + 3), *(v179 + 50));
      v180 = &v179[v173];
      v310 = vrhaddq_u16(*v180, *(v180 + 2));
      v311 = vrhaddq_u16(*(v180 + 1), *(v180 + 18));
      v312 = vrhaddq_u16(*(v180 + 2), *(v180 + 34));
      v313 = vrhaddq_u16(*(v180 + 3), *(v180 + 50));
      v181 = &v180[v173];
      v314 = vrhaddq_u16(*v181, *(v181 + 2));
      v315 = vrhaddq_u16(*(v181 + 1), *(v181 + 18));
      v316 = vrhaddq_u16(*(v181 + 2), *(v181 + 34));
      v317 = vrhaddq_u16(*(v181 + 3), *(v181 + 50));
      v182 = &v181[v173];
      v318 = vrhaddq_u16(*v182, *(v182 + 2));
      v319 = vrhaddq_u16(*(v182 + 1), *(v182 + 18));
      v320 = vrhaddq_u16(*(v182 + 2), *(v182 + 34));
      v321 = vrhaddq_u16(*(v182 + 3), *(v182 + 50));
      v183 = &v182[v173];
      v322 = vrhaddq_u16(*v183, *(v183 + 2));
      v323 = vrhaddq_u16(*(v183 + 16), *(v183 + 18));
      v324 = vrhaddq_u16(*(v183 + 32), *(v183 + 34));
      v325 = vrhaddq_u16(*(v183 + 48), *(v183 + 50));
      v184 = v183 + v173;
      v326 = vrhaddq_u16(*v184, *(v184 + 2));
      v327 = vrhaddq_u16(*(v184 + 16), *(v184 + 18));
      v328 = vrhaddq_u16(*(v184 + 32), *(v184 + 34));
      v329 = vrhaddq_u16(*(v184 + 48), *(v184 + 50));
      v185 = v184 + v173;
      v330 = vrhaddq_u16(*v185, *(v185 + 2));
      v331 = vrhaddq_u16(*(v185 + 16), *(v185 + 18));
      v332 = vrhaddq_u16(*(v185 + 32), *(v185 + 34));
      v333 = vrhaddq_u16(*(v185 + 48), *(v185 + 50));
      v186 = v185 + v173;
      v334 = vrhaddq_u16(*v186, *(v186 + 2));
      v335 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
      v336 = vrhaddq_u16(*(v186 + 32), *(v186 + 34));
      v337 = vrhaddq_u16(*(v186 + 48), *(v186 + 50));
      v187 = v186 + v173;
      v338 = vrhaddq_u16(*v187, *(v187 + 2));
      v339 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
      v340 = vrhaddq_u16(*(v187 + 32), *(v187 + 34));
      v341 = vrhaddq_u16(*(v187 + 48), *(v187 + 50));
      v188 = v187 + v173;
      v342 = vrhaddq_u16(*v188, *(v188 + 2));
      v343 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
      v344 = vrhaddq_u16(*(v188 + 32), *(v188 + 34));
      v345 = vrhaddq_u16(*(v188 + 48), *(v188 + 50));
      v189 = v188 + v173;
      v346 = vrhaddq_u16(*v189, *(v189 + 2));
      v347 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
      v348 = vrhaddq_u16(*(v189 + 32), *(v189 + 34));
      v349 = vrhaddq_u16(*(v189 + 48), *(v189 + 50));
      v190 = v189 + v173;
      v350 = vrhaddq_u16(*v190, *(v190 + 2));
      v351 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
      v352 = vrhaddq_u16(*(v190 + 32), *(v190 + 34));
      v353 = vrhaddq_u16(*(v190 + 48), *(v190 + 50));
      v191 = vdupq_n_s16(8 - a4);
      v192 = 2 * a8;
      v193 = vdupq_n_s16(a4);
      v194 = v286;
      v195 = 112;
      do
      {
        v197 = v175[-1];
        v196 = *v175;
        v198 = v175[-2];
        v199 = v175[2];
        v200 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v175[-3], v191), v175[1], v193), 3uLL), *(v192 + v195 - 96));
        v201 = &v285[v195];
        v201[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v194, v191), *v175, v193), 3uLL), *(v192 + v195 - 112));
        v201[-6] = v200;
        v202 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v197, v191), v175[3], v193), 3uLL), *(v192 + v195 - 64));
        v201[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v198, v191), v199, v193), 3uLL), *(v192 + v195 - 80));
        v201[-4] = v202;
        v195 += 64;
        v175 += 4;
        v194 = v196;
      }

      while (v195 != 1136);
      v203 = 0;
      v204 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v205 = vsubq_s16(*&v285[v203], v204[-2]);
        v206 = vpadalq_s16(v66, v205);
        v207 = vmlal_s16(v64, *v205.i8, *v205.i8);
        v208 = vmlal_high_s16(v65, v205, v205);
        v209 = vsubq_s16(*&v285[v203 + 16], v204[-1]);
        v210 = vpadalq_s16(v206, v209);
        v211 = vmlal_s16(v207, *v209.i8, *v209.i8);
        v212 = vmlal_high_s16(v208, v209, v209);
        v213 = vsubq_s16(*&v285[v203 + 32], *v204);
        v214 = vpadalq_s16(v210, v213);
        v215 = vmlal_s16(v211, *v213.i8, *v213.i8);
        v216 = vmlal_high_s16(v212, v213, v213);
        v217 = vsubq_s16(*&v285[v203 + 48], v204[1]);
        v66 = vpadalq_s16(v214, v217);
        v64 = vmlal_s16(v215, *v217.i8, *v217.i8);
        v65 = vmlal_high_s16(v216, v217, v217);
        v203 += 64;
        v204 = (v204 + 2 * a6);
      }

      while (v203 != 1024);
    }

    else
    {
      v58 = 0;
      v59 = 2 * a8;
      v60 = v8 + 2;
      do
      {
        v61 = (&v286 + v58);
        *v61 = vrhaddq_u16(vrhaddq_u16(v60[-2], *(v60 - 30)), *(v59 + v58));
        v61[1] = vrhaddq_u16(vrhaddq_u16(v60[-1], *(v60 - 14)), *(v59 + v58 + 16));
        v61[2] = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2)), *(v59 + v58 + 32));
        v61[3] = vrhaddq_u16(vrhaddq_u16(v60[1], *(v60 + 18)), *(v59 + v58 + 48));
        v58 += 64;
        v60 = (v60 + 2 * a2);
      }

      while (v58 != 1024);
      v62 = 0;
      v63 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v67 = vsubq_s16(*(&v286 + v62), v63[-2]);
        v68 = vpadalq_s16(v66, v67);
        v69 = vmlal_s16(v64, *v67.i8, *v67.i8);
        v70 = vmlal_high_s16(v65, v67, v67);
        v71 = vsubq_s16(*(&v286 + v62 + 16), v63[-1]);
        v72 = vpadalq_s16(v68, v71);
        v73 = vmlal_s16(v69, *v71.i8, *v71.i8);
        v74 = vmlal_high_s16(v70, v71, v71);
        v75 = vsubq_s16(*(&v288 + v62), *v63);
        v76 = vpadalq_s16(v72, v75);
        v77 = vmlal_s16(v73, *v75.i8, *v75.i8);
        v78 = vmlal_high_s16(v74, v75, v75);
        v79 = vsubq_s16(*(&v289 + v62), v63[1]);
        v66 = vpadalq_s16(v76, v79);
        v64 = vmlal_s16(v77, *v79.i8, *v79.i8);
        v65 = vmlal_high_s16(v78, v79, v79);
        v62 += 64;
        v63 = (v63 + 2 * a6);
      }

      while (v62 != 1024);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v218 = 0;
      v219 = vdupq_n_s16(8 - a3);
      v220 = vdupq_n_s16(a3);
      v221 = v8 + 2;
      do
      {
        v222 = (&v286 + v218);
        *v222 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v221[-2], v219), *(&v221[-2] + 2), v220), 3uLL);
        v222[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v221[-1], v219), *(&v221[-1] + 2), v220), 3uLL);
        v222[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v221, v219), *(v221 + 2), v220), 3uLL);
        v222[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v221[1], v219), *(&v221[1] + 2), v220), 3uLL);
        v218 += 64;
        v221 = (v221 + 2 * a2);
      }

      while (v218 != 1088);
      v223 = 2 * a8;
      v224 = v286;
      v225 = &v290;
      v226 = 112;
      do
      {
        v228 = v225[-1];
        v227 = *v225;
        v229 = v225[-2];
        v230 = v225[2];
        v231 = vrhaddq_u16(vrhaddq_u16(v225[-3], v225[1]), *(v223 + v226 - 96));
        v232 = &v285[v226];
        v232[-7] = vrhaddq_u16(vrhaddq_u16(v224, *v225), *(v223 + v226 - 112));
        v232[-6] = v231;
        v233 = vrhaddq_u16(vrhaddq_u16(v228, v225[3]), *(v223 + v226 - 64));
        v232[-5] = vrhaddq_u16(vrhaddq_u16(v229, v230), *(v223 + v226 - 80));
        v232[-4] = v233;
        v226 += 64;
        v225 += 4;
        v224 = v227;
      }

      while (v226 != 1136);
      v234 = 0;
      v235 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v236 = vsubq_s16(*&v285[v234], v235[-2]);
        v237 = vpadalq_s16(v66, v236);
        v238 = vmlal_s16(v64, *v236.i8, *v236.i8);
        v239 = vmlal_high_s16(v65, v236, v236);
        v240 = vsubq_s16(*&v285[v234 + 16], v235[-1]);
        v241 = vpadalq_s16(v237, v240);
        v242 = vmlal_s16(v238, *v240.i8, *v240.i8);
        v243 = vmlal_high_s16(v239, v240, v240);
        v244 = vsubq_s16(*&v285[v234 + 32], *v235);
        v245 = vpadalq_s16(v241, v244);
        v246 = vmlal_s16(v242, *v244.i8, *v244.i8);
        v247 = vmlal_high_s16(v243, v244, v244);
        v248 = vsubq_s16(*&v285[v234 + 48], v235[1]);
        v66 = vpadalq_s16(v245, v248);
        v64 = vmlal_s16(v246, *v248.i8, *v248.i8);
        v65 = vmlal_high_s16(v247, v248, v248);
        v234 += 64;
        v235 = (v235 + 2 * a6);
      }

      while (v234 != 1024);
    }

    else
    {
      v80 = 0;
      if (a4)
      {
        v249 = vdupq_n_s16(8 - a3);
        v250 = vdupq_n_s16(a3);
        v251 = v8 + 2;
        do
        {
          v252 = (&v286 + v80);
          *v252 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v251[-2], v249), *(&v251[-2] + 2), v250), 3uLL);
          v252[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v251[-1], v249), *(&v251[-1] + 2), v250), 3uLL);
          v252[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v251, v249), *(v251 + 2), v250), 3uLL);
          v252[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v251[1], v249), *(&v251[1] + 2), v250), 3uLL);
          v80 += 64;
          v251 = (v251 + 2 * a2);
        }

        while (v80 != 1088);
        v253 = vdupq_n_s16(8 - a4);
        v254 = vdupq_n_s16(a4);
        v255 = 2 * a8;
        v256 = v286;
        v257 = &v290;
        v258 = 112;
        do
        {
          v260 = v257[-1];
          v259 = *v257;
          v261 = v257[-2];
          v262 = v257[2];
          v263 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v257[-3], v253), v257[1], v254), 3uLL), *(v255 + v258 - 96));
          v264 = &v285[v258];
          v264[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v256, v253), *v257, v254), 3uLL), *(v255 + v258 - 112));
          v264[-6] = v263;
          v265 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v260, v253), v257[3], v254), 3uLL), *(v255 + v258 - 64));
          v264[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v261, v253), v262, v254), 3uLL), *(v255 + v258 - 80));
          v264[-4] = v265;
          v258 += 64;
          v257 += 4;
          v256 = v259;
        }

        while (v258 != 1136);
        v266 = 0;
        v267 = (2 * a5 + 32);
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        do
        {
          v268 = vsubq_s16(*&v285[v266], v267[-2]);
          v269 = vpadalq_s16(v66, v268);
          v270 = vmlal_s16(v64, *v268.i8, *v268.i8);
          v271 = vmlal_high_s16(v65, v268, v268);
          v272 = vsubq_s16(*&v285[v266 + 16], v267[-1]);
          v273 = vpadalq_s16(v269, v272);
          v274 = vmlal_s16(v270, *v272.i8, *v272.i8);
          v275 = vmlal_high_s16(v271, v272, v272);
          v276 = vsubq_s16(*&v285[v266 + 32], *v267);
          v277 = vpadalq_s16(v273, v276);
          v278 = vmlal_s16(v274, *v276.i8, *v276.i8);
          v279 = vmlal_high_s16(v275, v276, v276);
          v280 = vsubq_s16(*&v285[v266 + 48], v267[1]);
          v66 = vpadalq_s16(v277, v280);
          v64 = vmlal_s16(v278, *v280.i8, *v280.i8);
          v65 = vmlal_high_s16(v279, v280, v280);
          v266 += 64;
          v267 = (v267 + 2 * a6);
        }

        while (v266 != 1024);
      }

      else
      {
        v81 = 2 * a8;
        v82 = vdupq_n_s16(8 - a3);
        v83 = vdupq_n_s16(a3);
        v84 = v8 + 2;
        do
        {
          v85 = (&v286 + v80);
          *v85 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84[-2], v82), *(&v84[-2] + 2), v83), 3uLL), *(v81 + v80));
          v85[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84[-1], v82), *(&v84[-1] + 2), v83), 3uLL), *(v81 + v80 + 16));
          v85[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v84, v82), *(v84 + 2), v83), 3uLL), *(v81 + v80 + 32));
          v85[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84[1], v82), *(&v84[1] + 2), v83), 3uLL), *(v81 + v80 + 48));
          v80 += 64;
          v84 = (v84 + 2 * a2);
        }

        while (v80 != 1024);
        v86 = 0;
        v87 = (2 * a5 + 32);
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        do
        {
          v88 = vsubq_s16(*(&v286 + v86), v87[-2]);
          v89 = vpadalq_s16(v66, v88);
          v90 = vmlal_s16(v64, *v88.i8, *v88.i8);
          v91 = vmlal_high_s16(v65, v88, v88);
          v92 = vsubq_s16(*(&v286 + v86 + 16), v87[-1]);
          v93 = vpadalq_s16(v89, v92);
          v94 = vmlal_s16(v90, *v92.i8, *v92.i8);
          v95 = vmlal_high_s16(v91, v92, v92);
          v96 = vsubq_s16(*(&v288 + v86), *v87);
          v97 = vpadalq_s16(v93, v96);
          v98 = vmlal_s16(v94, *v96.i8, *v96.i8);
          v99 = vmlal_high_s16(v95, v96, v96);
          v100 = vsubq_s16(*(&v289 + v86), v87[1]);
          v66 = vpadalq_s16(v97, v100);
          v64 = vmlal_s16(v98, *v100.i8, *v100.i8);
          v65 = vmlal_high_s16(v99, v100, v100);
          v86 += 64;
          v87 = (v87 + 2 * a6);
        }

        while (v86 != 1024);
      }
    }
  }

  else
  {
    v9 = (2 * a8);
    if (a4 == 4)
    {
      v101 = 0;
      v102 = 2 * a2;
      v103 = v8 + 2;
      do
      {
        v104 = (&v286 + v101 * 16);
        *v104 = vrhaddq_u16(vrhaddq_u16(v103[-2], *(&v103[-2] + v102)), v9[v101]);
        v104[1] = vrhaddq_u16(vrhaddq_u16(v103[-1], *(&v103[-1] + v102)), v9[v101 + 1]);
        v104[2] = vrhaddq_u16(vrhaddq_u16(*v103, *(v103 + 2 * a2)), v9[v101 + 2]);
        v104[3] = vrhaddq_u16(vrhaddq_u16(v103[1], *(&v103[1] + v102)), v9[v101 + 3]);
        v101 += 4;
        v103 = (v103 + v102);
      }

      while ((v101 * 16) != 1024);
    }

    else if (a4)
    {
      v150 = 0;
      v151 = vdupq_n_s16(8 - a4);
      v152 = vdupq_n_s16(a4);
      v153 = 2 * a2;
      v154 = &v8[2];
      do
      {
        v155 = (&v286 + v150 * 16);
        *v155 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154[-2], v151), *(&v154[-2] + v153), v152), 3uLL), v9[v150]);
        v155[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154[-1], v151), *(&v154[-1] + v153), v152), 3uLL), v9[v150 + 1]);
        v155[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v154, v151), *(v154 + 2 * a2), v152), 3uLL), v9[v150 + 2]);
        v155[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154[1], v151), *(&v154[1] + v153), v152), 3uLL), v9[v150 + 3]);
        v150 += 4;
        v154 = (v154 + v153);
      }

      while ((v150 * 16) != 1024);
    }

    else
    {
      v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
      v286 = vrhaddq_u16(*v8, *v9);
      v287 = v10;
      v11 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a8 + 0x30));
      v288 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a8 + 0x20));
      v289 = v11;
      v12 = 2 * a2;
      v13 = (v8 + v12);
      v14 = *(2 * a8 + 0x50);
      v290 = vrhaddq_u16(*v13, *(2 * a8 + 0x40));
      v291 = vrhaddq_u16(v13[1], v14);
      v15 = *(2 * a8 + 0x70);
      v292 = vrhaddq_u16(v13[2], *(2 * a8 + 0x60));
      v293 = vrhaddq_u16(v13[3], v15);
      v16 = (v13 + v12);
      v17 = *(2 * a8 + 0x90);
      v294 = vrhaddq_u16(*v16, *(2 * a8 + 0x80));
      v295 = vrhaddq_u16(v16[1], v17);
      v18 = *(2 * a8 + 0xB0);
      v296 = vrhaddq_u16(v16[2], *(2 * a8 + 0xA0));
      v297 = vrhaddq_u16(v16[3], v18);
      v19 = (v16 + v12);
      v20 = *(2 * a8 + 0xD0);
      v298 = vrhaddq_u16(*v19, *(2 * a8 + 0xC0));
      v299 = vrhaddq_u16(v19[1], v20);
      v21 = *(2 * a8 + 0xF0);
      v300 = vrhaddq_u16(v19[2], *(2 * a8 + 0xE0));
      v301 = vrhaddq_u16(v19[3], v21);
      v22 = (v19 + v12);
      v23 = *(2 * a8 + 0x110);
      v302 = vrhaddq_u16(*v22, *(2 * a8 + 0x100));
      v303 = vrhaddq_u16(v22[1], v23);
      v24 = *(2 * a8 + 0x130);
      v304 = vrhaddq_u16(v22[2], *(2 * a8 + 0x120));
      v305 = vrhaddq_u16(v22[3], v24);
      v25 = (v22 + v12);
      v26 = *(2 * a8 + 0x150);
      v306 = vrhaddq_u16(*v25, *(2 * a8 + 0x140));
      v307 = vrhaddq_u16(v25[1], v26);
      v27 = *(2 * a8 + 0x170);
      v308 = vrhaddq_u16(v25[2], *(2 * a8 + 0x160));
      v309 = vrhaddq_u16(v25[3], v27);
      v28 = (v25 + v12);
      v29 = *(2 * a8 + 0x190);
      v310 = vrhaddq_u16(*v28, *(2 * a8 + 0x180));
      v311 = vrhaddq_u16(v28[1], v29);
      v30 = *(2 * a8 + 0x1B0);
      v312 = vrhaddq_u16(v28[2], *(2 * a8 + 0x1A0));
      v313 = vrhaddq_u16(v28[3], v30);
      v31 = (v28 + v12);
      v32 = *(2 * a8 + 0x1D0);
      v314 = vrhaddq_u16(*v31, *(2 * a8 + 0x1C0));
      v315 = vrhaddq_u16(v31[1], v32);
      v33 = *(2 * a8 + 0x1F0);
      v316 = vrhaddq_u16(v31[2], *(2 * a8 + 0x1E0));
      v317 = vrhaddq_u16(v31[3], v33);
      v34 = (v31 + v12);
      v35 = *(2 * a8 + 0x210);
      v318 = vrhaddq_u16(*v34, *(2 * a8 + 0x200));
      v319 = vrhaddq_u16(v34[1], v35);
      v36 = *(2 * a8 + 0x230);
      v320 = vrhaddq_u16(v34[2], *(2 * a8 + 0x220));
      v321 = vrhaddq_u16(v34[3], v36);
      v37 = (v34 + v12);
      v38 = *(2 * a8 + 0x250);
      v322 = vrhaddq_u16(*v37, *(2 * a8 + 0x240));
      v323 = vrhaddq_u16(v37[1], v38);
      v39 = *(2 * a8 + 0x270);
      v324 = vrhaddq_u16(v37[2], *(2 * a8 + 0x260));
      v325 = vrhaddq_u16(v37[3], v39);
      v40 = (v37 + v12);
      v41 = *(2 * a8 + 0x290);
      v326 = vrhaddq_u16(*v40, *(2 * a8 + 0x280));
      v327 = vrhaddq_u16(v40[1], v41);
      v42 = *(2 * a8 + 0x2B0);
      v328 = vrhaddq_u16(v40[2], *(2 * a8 + 0x2A0));
      v329 = vrhaddq_u16(v40[3], v42);
      v43 = (v40 + v12);
      v44 = *(2 * a8 + 0x2D0);
      v330 = vrhaddq_u16(*v43, *(2 * a8 + 0x2C0));
      v331 = vrhaddq_u16(v43[1], v44);
      v45 = *(2 * a8 + 0x2F0);
      v332 = vrhaddq_u16(v43[2], *(2 * a8 + 0x2E0));
      v333 = vrhaddq_u16(v43[3], v45);
      v46 = (v43 + v12);
      v47 = *(2 * a8 + 0x310);
      v334 = vrhaddq_u16(*v46, *(2 * a8 + 0x300));
      v335 = vrhaddq_u16(v46[1], v47);
      v48 = *(2 * a8 + 0x330);
      v336 = vrhaddq_u16(v46[2], *(2 * a8 + 0x320));
      v337 = vrhaddq_u16(v46[3], v48);
      v49 = (v46 + v12);
      v50 = *(2 * a8 + 0x350);
      v338 = vrhaddq_u16(*v49, *(2 * a8 + 0x340));
      v339 = vrhaddq_u16(v49[1], v50);
      v51 = *(2 * a8 + 0x370);
      v340 = vrhaddq_u16(v49[2], *(2 * a8 + 0x360));
      v341 = vrhaddq_u16(v49[3], v51);
      v52 = (v49 + v12);
      v53 = *(2 * a8 + 0x390);
      v342 = vrhaddq_u16(*v52, *(2 * a8 + 0x380));
      v343 = vrhaddq_u16(v52[1], v53);
      v54 = *(2 * a8 + 0x3B0);
      v344 = vrhaddq_u16(v52[2], *(2 * a8 + 0x3A0));
      v345 = vrhaddq_u16(v52[3], v54);
      v55 = (v52 + v12);
      v56 = *(2 * a8 + 0x3D0);
      v346 = vrhaddq_u16(*v55, *(2 * a8 + 0x3C0));
      v347 = vrhaddq_u16(v55[1], v56);
      v57 = *(2 * a8 + 0x3F0);
      v348 = vrhaddq_u16(v55[2], *(2 * a8 + 0x3E0));
      v349 = vrhaddq_u16(v55[3], v57);
    }

    v156 = 0;
    v157 = (2 * a5 + 32);
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    do
    {
      v158 = vsubq_s16(*(&v286 + v156), v157[-2]);
      v159 = vpadalq_s16(v66, v158);
      v160 = vmlal_s16(v64, *v158.i8, *v158.i8);
      v161 = vmlal_high_s16(v65, v158, v158);
      v162 = vsubq_s16(*(&v286 + v156 + 16), v157[-1]);
      v163 = vpadalq_s16(v159, v162);
      v164 = vmlal_s16(v160, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v161, v162, v162);
      v166 = vsubq_s16(*(&v288 + v156), *v157);
      v167 = vpadalq_s16(v163, v166);
      v168 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v169 = vmlal_high_s16(v165, v166, v166);
      v170 = vsubq_s16(*(&v289 + v156), v157[1]);
      v66 = vpadalq_s16(v167, v170);
      v64 = vmlal_s16(v168, *v170.i8, *v170.i8);
      v65 = vmlal_high_s16(v169, v170, v170);
      v156 += 64;
      v157 = (v157 + 2 * a6);
    }

    while (v156 != 1024);
  }

  v281 = vaddvq_s32(v66);
  v282 = vaddlvq_u32(vaddq_s32(v65, v64));
  *a7 = (v282 + 8) >> 4;
  v283 = ((v282 + 8) >> 4) - (((((v281 << 30) + 0x80000000) >> 32) * (((v281 << 30) + 0x80000000) >> 32)) >> 9);
  return v283 & ~(v283 >> 63);
}