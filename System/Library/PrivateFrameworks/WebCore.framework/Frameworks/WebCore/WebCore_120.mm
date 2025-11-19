uint64_t vpx_highbd_8_sub_pixel_variance16x32_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v405 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v167 = 0;
      v168 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v339 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v340 = v168;
      v169 = 2 * a2;
      v170 = v7 + v169;
      v341 = vrhaddq_u16(*v170, *(v170 + 2));
      v342 = vrhaddq_u16(*(v170 + 16), *(v170 + 18));
      v171 = v170 + v169;
      v343 = vrhaddq_u16(*v171, *(v171 + 2));
      v344 = vrhaddq_u16(*(v171 + 16), *(v171 + 18));
      v172 = v171 + v169;
      v345 = vrhaddq_u16(*v172, *(v172 + 2));
      v346 = vrhaddq_u16(*(v172 + 16), *(v172 + 18));
      v173 = v172 + v169;
      v347 = vrhaddq_u16(*v173, *(v173 + 2));
      v348 = vrhaddq_u16(*(v173 + 16), *(v173 + 18));
      v174 = v173 + v169;
      v349 = vrhaddq_u16(*v174, *(v174 + 2));
      v350 = vrhaddq_u16(*(v174 + 16), *(v174 + 18));
      v175 = v174 + v169;
      v351 = vrhaddq_u16(*v175, *(v175 + 2));
      v352 = vrhaddq_u16(*(v175 + 16), *(v175 + 18));
      v176 = v175 + v169;
      v353 = vrhaddq_u16(*v176, *(v176 + 2));
      v354 = vrhaddq_u16(*(v176 + 16), *(v176 + 18));
      v177 = v176 + v169;
      v355 = vrhaddq_u16(*v177, *(v177 + 2));
      v356 = vrhaddq_u16(*(v177 + 16), *(v177 + 18));
      v178 = v177 + v169;
      v357 = vrhaddq_u16(*v178, *(v178 + 2));
      v358 = vrhaddq_u16(*(v178 + 16), *(v178 + 18));
      v179 = v178 + v169;
      v359 = vrhaddq_u16(*v179, *(v179 + 2));
      v360 = vrhaddq_u16(*(v179 + 16), *(v179 + 18));
      v180 = v179 + v169;
      v361 = vrhaddq_u16(*v180, *(v180 + 2));
      v362 = vrhaddq_u16(*(v180 + 16), *(v180 + 18));
      v181 = v180 + v169;
      v363 = vrhaddq_u16(*v181, *(v181 + 2));
      v364 = vrhaddq_u16(*(v181 + 16), *(v181 + 18));
      v182 = v181 + v169;
      v365 = vrhaddq_u16(*v182, *(v182 + 2));
      v366 = vrhaddq_u16(*(v182 + 16), *(v182 + 18));
      v183 = v182 + v169;
      v367 = vrhaddq_u16(*v183, *(v183 + 2));
      v368 = vrhaddq_u16(*(v183 + 16), *(v183 + 18));
      v184 = v183 + v169;
      v369 = vrhaddq_u16(*v184, *(v184 + 2));
      v370 = vrhaddq_u16(*(v184 + 16), *(v184 + 18));
      v185 = v184 + v169;
      v371 = vrhaddq_u16(*v185, *(v185 + 2));
      v372 = vrhaddq_u16(*(v185 + 16), *(v185 + 18));
      v186 = v185 + v169;
      v373 = vrhaddq_u16(*v186, *(v186 + 2));
      v374 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
      v187 = v186 + v169;
      v375 = vrhaddq_u16(*v187, *(v187 + 2));
      v376 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
      v188 = v187 + v169;
      v377 = vrhaddq_u16(*v188, *(v188 + 2));
      v378 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
      v189 = v188 + v169;
      v379 = vrhaddq_u16(*v189, *(v189 + 2));
      v380 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
      v190 = v189 + v169;
      v381 = vrhaddq_u16(*v190, *(v190 + 2));
      v382 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
      v191 = v190 + v169;
      v383 = vrhaddq_u16(*v191, *(v191 + 2));
      v384 = vrhaddq_u16(*(v191 + 16), *(v191 + 18));
      v192 = v191 + v169;
      v385 = vrhaddq_u16(*v192, *(v192 + 2));
      v386 = vrhaddq_u16(*(v192 + 16), *(v192 + 18));
      v193 = v192 + v169;
      v387 = vrhaddq_u16(*v193, *(v193 + 2));
      v388 = vrhaddq_u16(*(v193 + 16), *(v193 + 18));
      v194 = v193 + v169;
      v389 = vrhaddq_u16(*v194, *(v194 + 2));
      v390 = vrhaddq_u16(*(v194 + 16), *(v194 + 18));
      v195 = v194 + v169;
      v391 = vrhaddq_u16(*v195, *(v195 + 2));
      v392 = vrhaddq_u16(*(v195 + 16), *(v195 + 18));
      v196 = v195 + v169;
      v393 = vrhaddq_u16(*v196, *(v196 + 2));
      v394 = vrhaddq_u16(*(v196 + 16), *(v196 + 18));
      v197 = v196 + v169;
      v395 = vrhaddq_u16(*v197, *(v197 + 2));
      v396 = vrhaddq_u16(*(v197 + 16), *(v197 + 18));
      v198 = v197 + v169;
      v397 = vrhaddq_u16(*v198, *(v198 + 2));
      v398 = vrhaddq_u16(*(v198 + 16), *(v198 + 18));
      v199 = v198 + v169;
      v399 = vrhaddq_u16(*v199, *(v199 + 2));
      v400 = vrhaddq_u16(*(v199 + 16), *(v199 + 18));
      v200 = v199 + v169;
      v401 = vrhaddq_u16(*v200, *(v200 + 2));
      v201 = v200 + v169;
      v402 = vrhaddq_u16(*(v200 + 16), *(v200 + 18));
      v403 = vrhaddq_u16(*v201, *(v201 + 2));
      v404 = vrhaddq_u16(*(v201 + 16), *(v201 + 18));
      v275 = vrhaddq_u16(v339, v341);
      v276 = vrhaddq_u16(v168, v342);
      v277 = vrhaddq_u16(v341, v343);
      v278 = vrhaddq_u16(v342, v344);
      v279 = vrhaddq_u16(v343, v345);
      v280 = vrhaddq_u16(v344, v346);
      v281 = vrhaddq_u16(v345, v347);
      v282 = vrhaddq_u16(v346, v348);
      v283 = vrhaddq_u16(v347, v349);
      v284 = vrhaddq_u16(v348, v350);
      v285 = vrhaddq_u16(v349, v351);
      v286 = vrhaddq_u16(v350, v352);
      v287 = vrhaddq_u16(v351, v353);
      v288 = vrhaddq_u16(v352, v354);
      v289 = vrhaddq_u16(v353, v355);
      v290 = vrhaddq_u16(v354, v356);
      v291 = vrhaddq_u16(v355, v357);
      v292 = vrhaddq_u16(v356, v358);
      v293 = vrhaddq_u16(v357, v359);
      v294 = vrhaddq_u16(v358, v360);
      v295 = vrhaddq_u16(v359, v361);
      v296 = vrhaddq_u16(v360, v362);
      v297 = vrhaddq_u16(v361, v363);
      v298 = vrhaddq_u16(v362, v364);
      v299 = vrhaddq_u16(v363, v365);
      v300 = vrhaddq_u16(v364, v366);
      v301 = vrhaddq_u16(v365, v367);
      v302 = vrhaddq_u16(v366, v368);
      v303 = vrhaddq_u16(v367, v369);
      v304 = vrhaddq_u16(v368, v370);
      v305 = vrhaddq_u16(v369, v371);
      v306 = vrhaddq_u16(v370, v372);
      v307 = vrhaddq_u16(v371, v373);
      v308 = vrhaddq_u16(v372, v374);
      v309 = vrhaddq_u16(v373, v375);
      v310 = vrhaddq_u16(v374, v376);
      v311 = vrhaddq_u16(v375, v377);
      v312 = vrhaddq_u16(v376, v378);
      v313 = vrhaddq_u16(v377, v379);
      v314 = vrhaddq_u16(v378, v380);
      v315 = vrhaddq_u16(v379, v381);
      v316 = vrhaddq_u16(v380, v382);
      v317 = vrhaddq_u16(v381, v383);
      v318 = vrhaddq_u16(v382, v384);
      v319 = vrhaddq_u16(v383, v385);
      v320 = vrhaddq_u16(v384, v386);
      v321 = vrhaddq_u16(v385, v387);
      v322 = vrhaddq_u16(v386, v388);
      v323 = vrhaddq_u16(v387, v389);
      v324 = vrhaddq_u16(v388, v390);
      v325 = vrhaddq_u16(v389, v391);
      v326 = vrhaddq_u16(v390, v392);
      v327 = vrhaddq_u16(v391, v393);
      v328 = vrhaddq_u16(v392, v394);
      v329 = vrhaddq_u16(v393, v395);
      v330 = vrhaddq_u16(v394, v396);
      v331 = vrhaddq_u16(v395, v397);
      v332 = vrhaddq_u16(v396, v398);
      v333 = vrhaddq_u16(v397, v399);
      v334 = vrhaddq_u16(v398, v400);
      v335 = vrhaddq_u16(v399, v401);
      v336 = vrhaddq_u16(v400, v402);
      v337 = vrhaddq_u16(v401, v403);
      v338 = vrhaddq_u16(v402, v404);
      v202 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v203 = vsubq_s16(*(&v275 + v167), v202[-1]);
        v204 = vpadalq_s16(v13, v203);
        v205 = vmlal_s16(v10, *v203.i8, *v203.i8);
        v206 = vmlal_high_s16(v12, v203, v203);
        v207 = vsubq_s16(*(&v275 + v167 + 16), *v202);
        v13 = vpadalq_s16(v204, v207);
        v10 = vmlal_s16(v205, *v207.i8, *v207.i8);
        v12 = vmlal_high_s16(v206, v207, v207);
        v167 += 32;
        v202 = (v202 + 2 * a6);
      }

      while (v167 != 1024);
    }

    else if (a4)
    {
      v222 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v339 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v340 = v222;
      v223 = 2 * a2;
      v224 = v7 + v223;
      v341 = vrhaddq_u16(*v224, *(v224 + 2));
      v225 = &v342;
      v342 = vrhaddq_u16(*(v224 + 16), *(v224 + 18));
      v226 = v224 + v223;
      v343 = vrhaddq_u16(*v226, *(v226 + 2));
      v344 = vrhaddq_u16(*(v226 + 16), *(v226 + 18));
      v227 = v226 + v223;
      v345 = vrhaddq_u16(*v227, *(v227 + 2));
      v346 = vrhaddq_u16(*(v227 + 16), *(v227 + 18));
      v228 = v227 + v223;
      v347 = vrhaddq_u16(*v228, *(v228 + 2));
      v348 = vrhaddq_u16(*(v228 + 16), *(v228 + 18));
      v229 = v228 + v223;
      v349 = vrhaddq_u16(*v229, *(v229 + 2));
      v350 = vrhaddq_u16(*(v229 + 16), *(v229 + 18));
      v230 = v229 + v223;
      v351 = vrhaddq_u16(*v230, *(v230 + 2));
      v352 = vrhaddq_u16(*(v230 + 16), *(v230 + 18));
      v231 = v230 + v223;
      v353 = vrhaddq_u16(*v231, *(v231 + 2));
      v354 = vrhaddq_u16(*(v231 + 16), *(v231 + 18));
      v232 = v231 + v223;
      v355 = vrhaddq_u16(*v232, *(v232 + 2));
      v356 = vrhaddq_u16(*(v232 + 16), *(v232 + 18));
      v233 = v232 + v223;
      v357 = vrhaddq_u16(*v233, *(v233 + 2));
      v358 = vrhaddq_u16(*(v233 + 16), *(v233 + 18));
      v234 = v233 + v223;
      v359 = vrhaddq_u16(*v234, *(v234 + 2));
      v360 = vrhaddq_u16(*(v234 + 16), *(v234 + 18));
      v235 = v234 + v223;
      v361 = vrhaddq_u16(*v235, *(v235 + 2));
      v362 = vrhaddq_u16(*(v235 + 16), *(v235 + 18));
      v236 = v235 + v223;
      v363 = vrhaddq_u16(*v236, *(v236 + 2));
      v364 = vrhaddq_u16(*(v236 + 16), *(v236 + 18));
      v237 = v236 + v223;
      v365 = vrhaddq_u16(*v237, *(v237 + 2));
      v366 = vrhaddq_u16(*(v237 + 16), *(v237 + 18));
      v238 = v237 + v223;
      v367 = vrhaddq_u16(*v238, *(v238 + 2));
      v368 = vrhaddq_u16(*(v238 + 16), *(v238 + 18));
      v239 = v238 + v223;
      v369 = vrhaddq_u16(*v239, *(v239 + 2));
      v370 = vrhaddq_u16(*(v239 + 16), *(v239 + 18));
      v240 = v239 + v223;
      v371 = vrhaddq_u16(*v240, *(v240 + 2));
      v372 = vrhaddq_u16(*(v240 + 16), *(v240 + 18));
      v241 = v240 + v223;
      v373 = vrhaddq_u16(*v241, *(v241 + 2));
      v374 = vrhaddq_u16(*(v241 + 16), *(v241 + 18));
      v242 = v241 + v223;
      v375 = vrhaddq_u16(*v242, *(v242 + 2));
      v376 = vrhaddq_u16(*(v242 + 16), *(v242 + 18));
      v243 = v242 + v223;
      v377 = vrhaddq_u16(*v243, *(v243 + 2));
      v378 = vrhaddq_u16(*(v243 + 16), *(v243 + 18));
      v244 = v243 + v223;
      v379 = vrhaddq_u16(*v244, *(v244 + 2));
      v380 = vrhaddq_u16(*(v244 + 16), *(v244 + 18));
      v245 = v244 + v223;
      v381 = vrhaddq_u16(*v245, *(v245 + 2));
      v382 = vrhaddq_u16(*(v245 + 16), *(v245 + 18));
      v246 = v245 + v223;
      v383 = vrhaddq_u16(*v246, *(v246 + 2));
      v384 = vrhaddq_u16(*(v246 + 16), *(v246 + 18));
      v247 = v246 + v223;
      v385 = vrhaddq_u16(*v247, *(v247 + 2));
      v386 = vrhaddq_u16(*(v247 + 16), *(v247 + 18));
      v248 = v247 + v223;
      v387 = vrhaddq_u16(*v248, *(v248 + 2));
      v388 = vrhaddq_u16(*(v248 + 16), *(v248 + 18));
      v249 = v248 + v223;
      v389 = vrhaddq_u16(*v249, *(v249 + 2));
      v390 = vrhaddq_u16(*(v249 + 16), *(v249 + 18));
      v250 = v249 + v223;
      v391 = vrhaddq_u16(*v250, *(v250 + 2));
      v392 = vrhaddq_u16(*(v250 + 16), *(v250 + 18));
      v251 = v250 + v223;
      v393 = vrhaddq_u16(*v251, *(v251 + 2));
      v394 = vrhaddq_u16(*(v251 + 16), *(v251 + 18));
      v252 = v251 + v223;
      v395 = vrhaddq_u16(*v252, *(v252 + 2));
      v396 = vrhaddq_u16(*(v252 + 16), *(v252 + 18));
      v253 = v252 + v223;
      v397 = vrhaddq_u16(*v253, *(v253 + 2));
      v398 = vrhaddq_u16(*(v253 + 16), *(v253 + 18));
      v254 = v253 + v223;
      v399 = vrhaddq_u16(*v254, *(v254 + 2));
      v400 = vrhaddq_u16(*(v254 + 16), *(v254 + 18));
      v255 = v254 + v223;
      v401 = vrhaddq_u16(*v255, *(v255 + 2));
      v402 = vrhaddq_u16(*(v255 + 16), *(v255 + 18));
      v256 = v255 + v223;
      v403 = vrhaddq_u16(*v256, *(v256 + 2));
      v257 = vdupq_n_s16(8 - a4);
      v404 = vrhaddq_u16(*(v256 + 16), *(v256 + 18));
      v258 = vdupq_n_s16(a4);
      v259 = v339;
      v260 = 32;
      do
      {
        v262 = v225[-2];
        v261 = v225[-1];
        v263 = *v225;
        v225 += 2;
        v264 = (&v275 + v260);
        v264[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v259, v257), v261, v258), 3uLL);
        v264[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v262, v257), v263, v258), 3uLL);
        v260 += 32;
        v259 = v261;
      }

      while (v260 != 1056);
      v265 = 0;
      v266 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v267 = vsubq_s16(*(&v275 + v265), v266[-1]);
        v268 = vpadalq_s16(v13, v267);
        v269 = vmlal_s16(v10, *v267.i8, *v267.i8);
        v270 = vmlal_high_s16(v12, v267, v267);
        v271 = vsubq_s16(*(&v275 + v265 + 16), *v266);
        v13 = vpadalq_s16(v268, v271);
        v10 = vmlal_s16(v269, *v271.i8, *v271.i8);
        v12 = vmlal_high_s16(v270, v271, v271);
        v265 += 32;
        v266 = (v266 + 2 * a6);
      }

      while (v265 != 1024);
    }

    else
    {
      v20 = 0;
      v21 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v339 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v340 = v21;
      v22 = 2 * a2;
      v23 = v7 + v22;
      v341 = vrhaddq_u16(*v23, *(v23 + 2));
      v342 = vrhaddq_u16(*(v23 + 16), *(v23 + 18));
      v24 = v23 + v22;
      v343 = vrhaddq_u16(*v24, *(v24 + 2));
      v344 = vrhaddq_u16(*(v24 + 16), *(v24 + 18));
      v25 = v24 + v22;
      v345 = vrhaddq_u16(*v25, *(v25 + 2));
      v346 = vrhaddq_u16(*(v25 + 16), *(v25 + 18));
      v26 = v25 + v22;
      v347 = vrhaddq_u16(*v26, *(v26 + 2));
      v348 = vrhaddq_u16(*(v26 + 16), *(v26 + 18));
      v27 = v26 + v22;
      v349 = vrhaddq_u16(*v27, *(v27 + 2));
      v350 = vrhaddq_u16(*(v27 + 16), *(v27 + 18));
      v28 = v27 + v22;
      v351 = vrhaddq_u16(*v28, *(v28 + 2));
      v352 = vrhaddq_u16(*(v28 + 16), *(v28 + 18));
      v29 = v28 + v22;
      v353 = vrhaddq_u16(*v29, *(v29 + 2));
      v354 = vrhaddq_u16(*(v29 + 16), *(v29 + 18));
      v30 = v29 + v22;
      v355 = vrhaddq_u16(*v30, *(v30 + 2));
      v356 = vrhaddq_u16(*(v30 + 16), *(v30 + 18));
      v31 = v30 + v22;
      v357 = vrhaddq_u16(*v31, *(v31 + 2));
      v358 = vrhaddq_u16(*(v31 + 16), *(v31 + 18));
      v32 = v31 + v22;
      v359 = vrhaddq_u16(*v32, *(v32 + 2));
      v360 = vrhaddq_u16(*(v32 + 16), *(v32 + 18));
      v33 = v32 + v22;
      v361 = vrhaddq_u16(*v33, *(v33 + 2));
      v362 = vrhaddq_u16(*(v33 + 16), *(v33 + 18));
      v34 = v33 + v22;
      v363 = vrhaddq_u16(*v34, *(v34 + 2));
      v364 = vrhaddq_u16(*(v34 + 16), *(v34 + 18));
      v35 = v34 + v22;
      v365 = vrhaddq_u16(*v35, *(v35 + 2));
      v366 = vrhaddq_u16(*(v35 + 16), *(v35 + 18));
      v36 = v35 + v22;
      v367 = vrhaddq_u16(*v36, *(v36 + 2));
      v368 = vrhaddq_u16(*(v36 + 16), *(v36 + 18));
      v37 = v36 + v22;
      v369 = vrhaddq_u16(*v37, *(v37 + 2));
      v370 = vrhaddq_u16(*(v37 + 16), *(v37 + 18));
      v38 = v37 + v22;
      v371 = vrhaddq_u16(*v38, *(v38 + 2));
      v372 = vrhaddq_u16(*(v38 + 16), *(v38 + 18));
      v39 = v38 + v22;
      v373 = vrhaddq_u16(*v39, *(v39 + 2));
      v374 = vrhaddq_u16(*(v39 + 16), *(v39 + 18));
      v40 = v39 + v22;
      v375 = vrhaddq_u16(*v40, *(v40 + 2));
      v376 = vrhaddq_u16(*(v40 + 16), *(v40 + 18));
      v41 = v40 + v22;
      v377 = vrhaddq_u16(*v41, *(v41 + 2));
      v378 = vrhaddq_u16(*(v41 + 16), *(v41 + 18));
      v42 = v41 + v22;
      v379 = vrhaddq_u16(*v42, *(v42 + 2));
      v380 = vrhaddq_u16(*(v42 + 16), *(v42 + 18));
      v43 = v42 + v22;
      v381 = vrhaddq_u16(*v43, *(v43 + 2));
      v382 = vrhaddq_u16(*(v43 + 16), *(v43 + 18));
      v44 = v43 + v22;
      v383 = vrhaddq_u16(*v44, *(v44 + 2));
      v384 = vrhaddq_u16(*(v44 + 16), *(v44 + 18));
      v45 = v44 + v22;
      v385 = vrhaddq_u16(*v45, *(v45 + 2));
      v386 = vrhaddq_u16(*(v45 + 16), *(v45 + 18));
      v46 = v45 + v22;
      v387 = vrhaddq_u16(*v46, *(v46 + 2));
      v388 = vrhaddq_u16(*(v46 + 16), *(v46 + 18));
      v47 = v46 + v22;
      v389 = vrhaddq_u16(*v47, *(v47 + 2));
      v390 = vrhaddq_u16(*(v47 + 16), *(v47 + 18));
      v48 = v47 + v22;
      v391 = vrhaddq_u16(*v48, *(v48 + 2));
      v392 = vrhaddq_u16(*(v48 + 16), *(v48 + 18));
      v49 = v48 + v22;
      v393 = vrhaddq_u16(*v49, *(v49 + 2));
      v394 = vrhaddq_u16(*(v49 + 16), *(v49 + 18));
      v50 = v49 + v22;
      v395 = vrhaddq_u16(*v50, *(v50 + 2));
      v396 = vrhaddq_u16(*(v50 + 16), *(v50 + 18));
      v51 = v50 + v22;
      v397 = vrhaddq_u16(*v51, *(v51 + 2));
      v398 = vrhaddq_u16(*(v51 + 16), *(v51 + 18));
      v52 = v51 + v22;
      v399 = vrhaddq_u16(*v52, *(v52 + 2));
      v53 = v52 + v22;
      v400 = vrhaddq_u16(*(v52 + 16), *(v52 + 18));
      v401 = vrhaddq_u16(*v53, *(v53 + 2));
      v402 = vrhaddq_u16(*(v53 + 16), *(v53 + 18));
      v54 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v55 = vsubq_s16(*(&v339 + v20), v54[-1]);
        v56 = vpadalq_s16(v13, v55);
        v57 = vmlal_s16(v10, *v55.i8, *v55.i8);
        v58 = vmlal_high_s16(v12, v55, v55);
        v59 = vsubq_s16(*(&v339 + v20 + 16), *v54);
        v13 = vpadalq_s16(v56, v59);
        v10 = vmlal_s16(v57, *v59.i8, *v59.i8);
        v12 = vmlal_high_s16(v58, v59, v59);
        v20 += 32;
        v54 = (v54 + 2 * a6);
      }

      while (v20 != 1024);
    }
  }

  else if (a3)
  {
    v60 = 0;
    v61 = vdupq_n_s16(8 - a3);
    v62 = vdupq_n_s16(a3);
    v63 = (v7 + 18);
    v64 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v73 = (&v339 + v60);
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 18), v61), v63[-1], v62), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 2), v61), *v63, v62), 3uLL);
        v60 += 32;
        v63 = (v63 + v64);
      }

      while (v60 != 1056);
      v74 = 0;
      v275 = vrhaddq_u16(v339, v341);
      v276 = vrhaddq_u16(v340, v342);
      v277 = vrhaddq_u16(v341, v343);
      v278 = vrhaddq_u16(v342, v344);
      v279 = vrhaddq_u16(v343, v345);
      v280 = vrhaddq_u16(v344, v346);
      v281 = vrhaddq_u16(v345, v347);
      v282 = vrhaddq_u16(v346, v348);
      v283 = vrhaddq_u16(v347, v349);
      v284 = vrhaddq_u16(v348, v350);
      v285 = vrhaddq_u16(v349, v351);
      v286 = vrhaddq_u16(v350, v352);
      v287 = vrhaddq_u16(v351, v353);
      v288 = vrhaddq_u16(v352, v354);
      v289 = vrhaddq_u16(v353, v355);
      v290 = vrhaddq_u16(v354, v356);
      v291 = vrhaddq_u16(v355, v357);
      v292 = vrhaddq_u16(v356, v358);
      v293 = vrhaddq_u16(v357, v359);
      v294 = vrhaddq_u16(v358, v360);
      v295 = vrhaddq_u16(v359, v361);
      v296 = vrhaddq_u16(v360, v362);
      v297 = vrhaddq_u16(v361, v363);
      v298 = vrhaddq_u16(v362, v364);
      v299 = vrhaddq_u16(v363, v365);
      v300 = vrhaddq_u16(v364, v366);
      v301 = vrhaddq_u16(v365, v367);
      v302 = vrhaddq_u16(v366, v368);
      v303 = vrhaddq_u16(v367, v369);
      v304 = vrhaddq_u16(v368, v370);
      v305 = vrhaddq_u16(v369, v371);
      v306 = vrhaddq_u16(v370, v372);
      v307 = vrhaddq_u16(v371, v373);
      v308 = vrhaddq_u16(v372, v374);
      v309 = vrhaddq_u16(v373, v375);
      v310 = vrhaddq_u16(v374, v376);
      v311 = vrhaddq_u16(v375, v377);
      v312 = vrhaddq_u16(v376, v378);
      v313 = vrhaddq_u16(v377, v379);
      v314 = vrhaddq_u16(v378, v380);
      v315 = vrhaddq_u16(v379, v381);
      v316 = vrhaddq_u16(v380, v382);
      v317 = vrhaddq_u16(v381, v383);
      v318 = vrhaddq_u16(v382, v384);
      v319 = vrhaddq_u16(v383, v385);
      v320 = vrhaddq_u16(v384, v386);
      v321 = vrhaddq_u16(v385, v387);
      v322 = vrhaddq_u16(v386, v388);
      v323 = vrhaddq_u16(v387, v389);
      v324 = vrhaddq_u16(v388, v390);
      v325 = vrhaddq_u16(v389, v391);
      v326 = vrhaddq_u16(v390, v392);
      v327 = vrhaddq_u16(v391, v393);
      v328 = vrhaddq_u16(v392, v394);
      v329 = vrhaddq_u16(v393, v395);
      v330 = vrhaddq_u16(v394, v396);
      v331 = vrhaddq_u16(v395, v397);
      v332 = vrhaddq_u16(v396, v398);
      v333 = vrhaddq_u16(v397, v399);
      v334 = vrhaddq_u16(v398, v400);
      v335 = vrhaddq_u16(v399, v401);
      v336 = vrhaddq_u16(v400, v402);
      v75 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v337 = vrhaddq_u16(v401, v403);
      v338 = vrhaddq_u16(v402, v404);
      v13 = 0uLL;
      do
      {
        v76 = vsubq_s16(*(&v275 + v74), v75[-1]);
        v77 = vpadalq_s16(v13, v76);
        v78 = vmlal_s16(v10, *v76.i8, *v76.i8);
        v79 = vmlal_high_s16(v12, v76, v76);
        v80 = vsubq_s16(*(&v275 + v74 + 16), *v75);
        v13 = vpadalq_s16(v77, v80);
        v10 = vmlal_s16(v78, *v80.i8, *v80.i8);
        v12 = vmlal_high_s16(v79, v80, v80);
        v74 += 32;
        v75 = (v75 + 2 * a6);
      }

      while (v74 != 1024);
    }

    else if (a4)
    {
      do
      {
        v81 = (&v339 + v60);
        *v81 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 18), v61), v63[-1], v62), 3uLL);
        v81[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 2), v61), *v63, v62), 3uLL);
        v60 += 32;
        v63 = (v63 + v64);
      }

      while (v60 != 1056);
      v82 = vdupq_n_s16(8 - a4);
      v83 = vdupq_n_s16(a4);
      v84 = v339;
      v85 = &v342;
      v86 = 32;
      do
      {
        v88 = v85[-2];
        v87 = v85[-1];
        v89 = *v85;
        v85 += 2;
        v90 = (&v275 + v86);
        v90[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84, v82), v87, v83), 3uLL);
        v90[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v88, v82), v89, v83), 3uLL);
        v86 += 32;
        v84 = v87;
      }

      while (v86 != 1056);
      v91 = 0;
      v92 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v93 = vsubq_s16(*(&v275 + v91), v92[-1]);
        v94 = vpadalq_s16(v13, v93);
        v95 = vmlal_s16(v10, *v93.i8, *v93.i8);
        v96 = vmlal_high_s16(v12, v93, v93);
        v97 = vsubq_s16(*(&v275 + v91 + 16), *v92);
        v13 = vpadalq_s16(v94, v97);
        v10 = vmlal_s16(v95, *v97.i8, *v97.i8);
        v12 = vmlal_high_s16(v96, v97, v97);
        v91 += 32;
        v92 = (v92 + 2 * a6);
      }

      while (v91 != 1024);
    }

    else
    {
      do
      {
        v65 = (&v339 + v60);
        *v65 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 18), v61), v63[-1], v62), 3uLL);
        v65[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 2), v61), *v63, v62), 3uLL);
        v60 += 32;
        v63 = (v63 + v64);
      }

      while (v60 != 1024);
      v66 = 0;
      v67 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v68 = vsubq_s16(*(&v339 + v66), v67[-1]);
        v69 = vpadalq_s16(v13, v68);
        v70 = vmlal_s16(v10, *v68.i8, *v68.i8);
        v71 = vmlal_high_s16(v12, v68, v68);
        v72 = vsubq_s16(*(&v339 + v66 + 16), *v67);
        v13 = vpadalq_s16(v69, v72);
        v10 = vmlal_s16(v70, *v72.i8, *v72.i8);
        v12 = vmlal_high_s16(v71, v72, v72);
        v66 += 32;
        v67 = (v67 + 2 * a6);
      }

      while (v66 != 1024);
    }
  }

  else if (a4 == 4)
  {
    v98 = 0;
    v99 = 2 * a2;
    v100 = (v7 + v99);
    v101 = *(v7 + v99);
    v339 = vrhaddq_u16(*v7, v101);
    v340 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x10 + v99));
    v102 = (v7 + v99 + v99);
    v103 = *v102;
    v341 = vrhaddq_u16(v101, *v102);
    v342 = vrhaddq_u16(v100[1], *(v100 + v99 + 16));
    v104 = (v102 + v99);
    v105 = *(v102 + v99);
    v343 = vrhaddq_u16(v103, v105);
    v344 = vrhaddq_u16(v102[1], *(v102 + v99 + 16));
    v106 = (v102 + v99 + v99);
    v107 = *v106;
    v345 = vrhaddq_u16(v105, *v106);
    v346 = vrhaddq_u16(v104[1], *(v104 + v99 + 16));
    v108 = (v106 + v99);
    v109 = *(v106 + v99);
    v347 = vrhaddq_u16(v107, v109);
    v348 = vrhaddq_u16(v106[1], *(v106 + v99 + 16));
    v110 = (v106 + v99 + v99);
    v111 = *v110;
    v349 = vrhaddq_u16(v109, *v110);
    v350 = vrhaddq_u16(v108[1], *(v108 + v99 + 16));
    v112 = (v110 + v99);
    v113 = *(v110 + v99);
    v351 = vrhaddq_u16(v111, v113);
    v352 = vrhaddq_u16(v110[1], *(v110 + v99 + 16));
    v114 = (v110 + v99 + v99);
    v115 = *v114;
    v353 = vrhaddq_u16(v113, *v114);
    v354 = vrhaddq_u16(v112[1], *(v112 + v99 + 16));
    v116 = (v114 + v99);
    v117 = *(v114 + v99);
    v355 = vrhaddq_u16(v115, v117);
    v356 = vrhaddq_u16(v114[1], *(v114 + v99 + 16));
    v118 = (v114 + v99 + v99);
    v119 = *v118;
    v357 = vrhaddq_u16(v117, *v118);
    v358 = vrhaddq_u16(v116[1], *(v116 + v99 + 16));
    v120 = (v118 + v99);
    v121 = *(v118 + v99);
    v359 = vrhaddq_u16(v119, v121);
    v360 = vrhaddq_u16(v118[1], *(v118 + v99 + 16));
    v122 = (v118 + v99 + v99);
    v123 = *v122;
    v361 = vrhaddq_u16(v121, *v122);
    v362 = vrhaddq_u16(v120[1], *(v120 + v99 + 16));
    v124 = (v122 + v99);
    v125 = *(v122 + v99);
    v363 = vrhaddq_u16(v123, v125);
    v364 = vrhaddq_u16(v122[1], *(v122 + v99 + 16));
    v126 = (v122 + v99 + v99);
    v127 = *v126;
    v365 = vrhaddq_u16(v125, *v126);
    v366 = vrhaddq_u16(v124[1], *(v124 + v99 + 16));
    v128 = (v126 + v99);
    v129 = *(v126 + v99);
    v367 = vrhaddq_u16(v127, v129);
    v368 = vrhaddq_u16(v126[1], *(v126 + v99 + 16));
    v130 = (v126 + v99 + v99);
    v131 = *v130;
    v369 = vrhaddq_u16(v129, *v130);
    v370 = vrhaddq_u16(v128[1], *(v128 + v99 + 16));
    v132 = (v130 + v99);
    v133 = *(v130 + v99);
    v371 = vrhaddq_u16(v131, v133);
    v372 = vrhaddq_u16(v130[1], *(v130 + v99 + 16));
    v134 = (v130 + v99 + v99);
    v135 = *v134;
    v373 = vrhaddq_u16(v133, *v134);
    v374 = vrhaddq_u16(v132[1], *(v132 + v99 + 16));
    v136 = (v134 + v99);
    v137 = *(v134 + v99);
    v375 = vrhaddq_u16(v135, v137);
    v376 = vrhaddq_u16(v134[1], *(v134 + v99 + 16));
    v138 = (v134 + v99 + v99);
    v139 = *v138;
    v377 = vrhaddq_u16(v137, *v138);
    v378 = vrhaddq_u16(v136[1], *(v136 + v99 + 16));
    v140 = (v138 + v99);
    v141 = *(v138 + v99);
    v379 = vrhaddq_u16(v139, v141);
    v380 = vrhaddq_u16(v138[1], *(v138 + v99 + 16));
    v142 = (v138 + v99 + v99);
    v143 = *v142;
    v381 = vrhaddq_u16(v141, *v142);
    v382 = vrhaddq_u16(v140[1], *(v140 + v99 + 16));
    v144 = (v142 + v99);
    v145 = *(v142 + v99);
    v383 = vrhaddq_u16(v143, v145);
    v384 = vrhaddq_u16(v142[1], *(v142 + v99 + 16));
    v146 = (v142 + v99 + v99);
    v147 = *v146;
    v385 = vrhaddq_u16(v145, *v146);
    v386 = vrhaddq_u16(v144[1], *(v144 + v99 + 16));
    v148 = (v146 + v99);
    v149 = *(v146 + v99);
    v387 = vrhaddq_u16(v147, v149);
    v388 = vrhaddq_u16(v146[1], *(v146 + v99 + 16));
    v150 = (v146 + v99 + v99);
    v151 = *v150;
    v389 = vrhaddq_u16(v149, *v150);
    v390 = vrhaddq_u16(v148[1], *(v148 + v99 + 16));
    v152 = (v150 + v99);
    v153 = *(v150 + v99);
    v391 = vrhaddq_u16(v151, v153);
    v392 = vrhaddq_u16(v150[1], *(v150 + v99 + 16));
    v154 = (v150 + v99 + v99);
    v155 = *v154;
    v393 = vrhaddq_u16(v153, *v154);
    v394 = vrhaddq_u16(v152[1], *(v152 + v99 + 16));
    v156 = (v154 + v99);
    v157 = *(v154 + v99);
    v395 = vrhaddq_u16(v155, v157);
    v396 = vrhaddq_u16(v154[1], *(v154 + v99 + 16));
    v158 = (v154 + v99 + v99);
    v159 = *v158;
    v397 = vrhaddq_u16(v157, *v158);
    v398 = vrhaddq_u16(v156[1], *(v156 + v99 + 16));
    v160 = *(v158 + v99);
    v399 = vrhaddq_u16(v159, v160);
    v400 = vrhaddq_u16(v158[1], *(v158 + v99 + 16));
    v401 = vrhaddq_u16(v160, *(v158 + v99 + v99));
    v402 = vrhaddq_u16(*(&v158[1] + v99), *(&v158[1] + v99 + v99));
    v161 = (2 * a5 + 16);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v162 = vsubq_s16(*(&v339 + v98), v161[-1]);
      v163 = vpadalq_s16(v13, v162);
      v164 = vmlal_s16(v10, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v12, v162, v162);
      v166 = vsubq_s16(*(&v339 + v98 + 16), *v161);
      v13 = vpadalq_s16(v163, v166);
      v10 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v12 = vmlal_high_s16(v165, v166, v166);
      v98 += 32;
      v161 = (v161 + 2 * a6);
    }

    while (v98 != 1024);
  }

  else if (a4)
  {
    v208 = 0;
    v209 = vdupq_n_s16(8 - a4);
    v210 = vdupq_n_s16(a4);
    v211 = *v7;
    v212 = 2 * a2;
    do
    {
      v213 = (&v339 + v208);
      v214 = *(v7 + 2 * a2);
      *v213 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v211, v209), v214, v210), 3uLL);
      v213[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v209), *(v7 + v212 + 16), v210), 3uLL);
      v208 += 32;
      v7 += v212;
      v211 = v214;
    }

    while (v208 != 1024);
    v215 = 0;
    v216 = (2 * a5 + 16);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v217 = vsubq_s16(*(&v339 + v215), v216[-1]);
      v218 = vpadalq_s16(v13, v217);
      v219 = vmlal_s16(v10, *v217.i8, *v217.i8);
      v220 = vmlal_high_s16(v12, v217, v217);
      v221 = vsubq_s16(*(&v339 + v215 + 16), *v216);
      v13 = vpadalq_s16(v218, v221);
      v10 = vmlal_s16(v219, *v221.i8, *v221.i8);
      v12 = vmlal_high_s16(v220, v221, v221);
      v215 += 32;
      v216 = (v216 + 2 * a6);
    }

    while (v215 != 1024);
  }

  else
  {
    v8 = (2 * a5 + 16);
    v9 = (v7 + 16);
    v10 = 0uLL;
    v11 = -32;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = vsubq_s16(v9[-1], v8[-1]);
      v15 = vpadalq_s16(v13, v14);
      v16 = vmlal_s16(v10, *v14.i8, *v14.i8);
      v17 = vmlal_high_s16(v12, v14, v14);
      v18 = vsubq_s16(*v9, *v8);
      v13 = vpadalq_s16(v15, v18);
      v10 = vmlal_s16(v16, *v18.i8, *v18.i8);
      v12 = vmlal_high_s16(v17, v18, v18);
      v8 = (v8 + 2 * a6);
      v9 = (v9 + 2 * a2);
    }

    while (!__CFADD__(v11++, 1));
  }

  v272 = vaddvq_s32(v13);
  v273 = vaddlvq_u32(vaddq_s32(v12, v10));
  *a7 = v273;
  return v273 - ((v272 * v272) >> 9);
}

uint64_t vpx_highbd_8_sub_pixel_variance32x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v387 = *MEMORY[0x277D85DE8];
  v7 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v148 = 0;
      v149 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v319 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v320 = v149;
      v150 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v321 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v322 = v150;
      v151 = 2 * a2;
      v152 = v7 + v151;
      v323 = vrhaddq_u16(*v152, *(v152 + 2));
      v324 = vrhaddq_u16(*(v152 + 1), *(v152 + 18));
      v325 = vrhaddq_u16(*(v152 + 2), *(v152 + 34));
      v326 = vrhaddq_u16(*(v152 + 3), *(v152 + 50));
      v153 = &v152[v151];
      v327 = vrhaddq_u16(*v153, *(v153 + 2));
      v328 = vrhaddq_u16(*(v153 + 1), *(v153 + 18));
      v329 = vrhaddq_u16(*(v153 + 2), *(v153 + 34));
      v330 = vrhaddq_u16(*(v153 + 3), *(v153 + 50));
      v154 = &v153[v151];
      v331 = vrhaddq_u16(*v154, *(v154 + 2));
      v332 = vrhaddq_u16(*(v154 + 1), *(v154 + 18));
      v333 = vrhaddq_u16(*(v154 + 2), *(v154 + 34));
      v334 = vrhaddq_u16(*(v154 + 3), *(v154 + 50));
      v155 = &v154[v151];
      v335 = vrhaddq_u16(*v155, *(v155 + 2));
      v336 = vrhaddq_u16(*(v155 + 1), *(v155 + 18));
      v337 = vrhaddq_u16(*(v155 + 2), *(v155 + 34));
      v338 = vrhaddq_u16(*(v155 + 3), *(v155 + 50));
      v156 = &v155[v151];
      v339 = vrhaddq_u16(*v156, *(v156 + 2));
      v340 = vrhaddq_u16(*(v156 + 1), *(v156 + 18));
      v341 = vrhaddq_u16(*(v156 + 2), *(v156 + 34));
      v342 = vrhaddq_u16(*(v156 + 3), *(v156 + 50));
      v157 = &v156[v151];
      v343 = vrhaddq_u16(*v157, *(v157 + 2));
      v344 = vrhaddq_u16(*(v157 + 1), *(v157 + 18));
      v345 = vrhaddq_u16(*(v157 + 2), *(v157 + 34));
      v346 = vrhaddq_u16(*(v157 + 3), *(v157 + 50));
      v158 = &v157[v151];
      v347 = vrhaddq_u16(*v158, *(v158 + 2));
      v348 = vrhaddq_u16(*(v158 + 1), *(v158 + 18));
      v349 = vrhaddq_u16(*(v158 + 2), *(v158 + 34));
      v350 = vrhaddq_u16(*(v158 + 3), *(v158 + 50));
      v159 = &v158[v151];
      v351 = vrhaddq_u16(*v159, *(v159 + 2));
      v352 = vrhaddq_u16(*(v159 + 1), *(v159 + 18));
      v353 = vrhaddq_u16(*(v159 + 2), *(v159 + 34));
      v354 = vrhaddq_u16(*(v159 + 3), *(v159 + 50));
      v160 = &v159[v151];
      v355 = vrhaddq_u16(*v160, *(v160 + 2));
      v356 = vrhaddq_u16(*(v160 + 16), *(v160 + 18));
      v357 = vrhaddq_u16(*(v160 + 32), *(v160 + 34));
      v358 = vrhaddq_u16(*(v160 + 48), *(v160 + 50));
      v161 = v160 + v151;
      v359 = vrhaddq_u16(*v161, *(v161 + 2));
      v360 = vrhaddq_u16(*(v161 + 16), *(v161 + 18));
      v361 = vrhaddq_u16(*(v161 + 32), *(v161 + 34));
      v362 = vrhaddq_u16(*(v161 + 48), *(v161 + 50));
      v162 = v161 + v151;
      v363 = vrhaddq_u16(*v162, *(v162 + 2));
      v364 = vrhaddq_u16(*(v162 + 16), *(v162 + 18));
      v365 = vrhaddq_u16(*(v162 + 32), *(v162 + 34));
      v366 = vrhaddq_u16(*(v162 + 48), *(v162 + 50));
      v163 = v162 + v151;
      v367 = vrhaddq_u16(*v163, *(v163 + 2));
      v368 = vrhaddq_u16(*(v163 + 16), *(v163 + 18));
      v369 = vrhaddq_u16(*(v163 + 32), *(v163 + 34));
      v370 = vrhaddq_u16(*(v163 + 48), *(v163 + 50));
      v164 = v163 + v151;
      v371 = vrhaddq_u16(*v164, *(v164 + 2));
      v372 = vrhaddq_u16(*(v164 + 16), *(v164 + 18));
      v373 = vrhaddq_u16(*(v164 + 32), *(v164 + 34));
      v374 = vrhaddq_u16(*(v164 + 48), *(v164 + 50));
      v165 = v164 + v151;
      v375 = vrhaddq_u16(*v165, *(v165 + 2));
      v376 = vrhaddq_u16(*(v165 + 16), *(v165 + 18));
      v377 = vrhaddq_u16(*(v165 + 32), *(v165 + 34));
      v378 = vrhaddq_u16(*(v165 + 48), *(v165 + 50));
      v166 = v165 + v151;
      v379 = vrhaddq_u16(*v166, *(v166 + 2));
      v380 = vrhaddq_u16(*(v166 + 16), *(v166 + 18));
      v381 = vrhaddq_u16(*(v166 + 32), *(v166 + 34));
      v167 = v166 + v151;
      v382 = vrhaddq_u16(*(v166 + 48), *(v166 + 50));
      v383 = vrhaddq_u16(*v167, *(v167 + 2));
      v384 = vrhaddq_u16(*(v167 + 16), *(v167 + 18));
      v385 = vrhaddq_u16(*(v167 + 32), *(v167 + 34));
      v386 = vrhaddq_u16(*(v167 + 48), *(v167 + 50));
      v255 = vrhaddq_u16(v319, v323);
      v256 = vrhaddq_u16(v320, v324);
      v257 = vrhaddq_u16(v321, v325);
      v258 = vrhaddq_u16(v150, v326);
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
      v318 = vrhaddq_u16(v382, v386);
      v168 = (2 * a5 + 32);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v169 = vsubq_s16(*(&v255 + v148), v168[-2]);
        v170 = vpadalq_s16(v13, v169);
        v171 = vmlal_s16(v10, *v169.i8, *v169.i8);
        v172 = vmlal_high_s16(v12, v169, v169);
        v173 = vsubq_s16(*(&v255 + v148 + 16), v168[-1]);
        v174 = vpadalq_s16(v170, v173);
        v175 = vmlal_s16(v171, *v173.i8, *v173.i8);
        v176 = vmlal_high_s16(v172, v173, v173);
        v177 = vsubq_s16(*(&v257 + v148), *v168);
        v178 = vpadalq_s16(v174, v177);
        v179 = vmlal_s16(v175, *v177.i8, *v177.i8);
        v180 = vmlal_high_s16(v176, v177, v177);
        v181 = vsubq_s16(*(&v258 + v148), v168[1]);
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
      v319 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v320 = v206;
      v207 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v321 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v322 = v207;
      v208 = 2 * a2;
      v209 = v7 + v208;
      v210 = &v323;
      v323 = vrhaddq_u16(*v209, *(v209 + 2));
      v324 = vrhaddq_u16(*(v209 + 1), *(v209 + 18));
      v325 = vrhaddq_u16(*(v209 + 2), *(v209 + 34));
      v326 = vrhaddq_u16(*(v209 + 3), *(v209 + 50));
      v211 = &v209[v208];
      v327 = vrhaddq_u16(*v211, *(v211 + 2));
      v328 = vrhaddq_u16(*(v211 + 1), *(v211 + 18));
      v329 = vrhaddq_u16(*(v211 + 2), *(v211 + 34));
      v330 = vrhaddq_u16(*(v211 + 3), *(v211 + 50));
      v212 = &v211[v208];
      v331 = vrhaddq_u16(*v212, *(v212 + 2));
      v332 = vrhaddq_u16(*(v212 + 1), *(v212 + 18));
      v333 = vrhaddq_u16(*(v212 + 2), *(v212 + 34));
      v334 = vrhaddq_u16(*(v212 + 3), *(v212 + 50));
      v213 = &v212[v208];
      v335 = vrhaddq_u16(*v213, *(v213 + 2));
      v336 = vrhaddq_u16(*(v213 + 1), *(v213 + 18));
      v337 = vrhaddq_u16(*(v213 + 2), *(v213 + 34));
      v338 = vrhaddq_u16(*(v213 + 3), *(v213 + 50));
      v214 = &v213[v208];
      v339 = vrhaddq_u16(*v214, *(v214 + 2));
      v340 = vrhaddq_u16(*(v214 + 1), *(v214 + 18));
      v341 = vrhaddq_u16(*(v214 + 2), *(v214 + 34));
      v342 = vrhaddq_u16(*(v214 + 3), *(v214 + 50));
      v215 = &v214[v208];
      v343 = vrhaddq_u16(*v215, *(v215 + 2));
      v344 = vrhaddq_u16(*(v215 + 1), *(v215 + 18));
      v345 = vrhaddq_u16(*(v215 + 2), *(v215 + 34));
      v346 = vrhaddq_u16(*(v215 + 3), *(v215 + 50));
      v216 = &v215[v208];
      v347 = vrhaddq_u16(*v216, *(v216 + 2));
      v348 = vrhaddq_u16(*(v216 + 1), *(v216 + 18));
      v349 = vrhaddq_u16(*(v216 + 2), *(v216 + 34));
      v350 = vrhaddq_u16(*(v216 + 3), *(v216 + 50));
      v217 = &v216[v208];
      v351 = vrhaddq_u16(*v217, *(v217 + 2));
      v352 = vrhaddq_u16(*(v217 + 1), *(v217 + 18));
      v353 = vrhaddq_u16(*(v217 + 2), *(v217 + 34));
      v354 = vrhaddq_u16(*(v217 + 3), *(v217 + 50));
      v218 = &v217[v208];
      v355 = vrhaddq_u16(*v218, *(v218 + 2));
      v356 = vrhaddq_u16(*(v218 + 16), *(v218 + 18));
      v357 = vrhaddq_u16(*(v218 + 32), *(v218 + 34));
      v358 = vrhaddq_u16(*(v218 + 48), *(v218 + 50));
      v219 = v218 + v208;
      v359 = vrhaddq_u16(*v219, *(v219 + 2));
      v360 = vrhaddq_u16(*(v219 + 16), *(v219 + 18));
      v361 = vrhaddq_u16(*(v219 + 32), *(v219 + 34));
      v362 = vrhaddq_u16(*(v219 + 48), *(v219 + 50));
      v220 = v219 + v208;
      v363 = vrhaddq_u16(*v220, *(v220 + 2));
      v364 = vrhaddq_u16(*(v220 + 16), *(v220 + 18));
      v365 = vrhaddq_u16(*(v220 + 32), *(v220 + 34));
      v366 = vrhaddq_u16(*(v220 + 48), *(v220 + 50));
      v221 = v220 + v208;
      v367 = vrhaddq_u16(*v221, *(v221 + 2));
      v368 = vrhaddq_u16(*(v221 + 16), *(v221 + 18));
      v369 = vrhaddq_u16(*(v221 + 32), *(v221 + 34));
      v370 = vrhaddq_u16(*(v221 + 48), *(v221 + 50));
      v222 = v221 + v208;
      v371 = vrhaddq_u16(*v222, *(v222 + 2));
      v372 = vrhaddq_u16(*(v222 + 16), *(v222 + 18));
      v373 = vrhaddq_u16(*(v222 + 32), *(v222 + 34));
      v374 = vrhaddq_u16(*(v222 + 48), *(v222 + 50));
      v223 = v222 + v208;
      v375 = vrhaddq_u16(*v223, *(v223 + 2));
      v376 = vrhaddq_u16(*(v223 + 16), *(v223 + 18));
      v377 = vrhaddq_u16(*(v223 + 32), *(v223 + 34));
      v378 = vrhaddq_u16(*(v223 + 48), *(v223 + 50));
      v224 = v223 + v208;
      v379 = vrhaddq_u16(*v224, *(v224 + 2));
      v380 = vrhaddq_u16(*(v224 + 16), *(v224 + 18));
      v381 = vrhaddq_u16(*(v224 + 32), *(v224 + 34));
      v382 = vrhaddq_u16(*(v224 + 48), *(v224 + 50));
      v225 = v224 + v208;
      v383 = vrhaddq_u16(*v225, *(v225 + 2));
      v384 = vrhaddq_u16(*(v225 + 16), *(v225 + 18));
      v385 = vrhaddq_u16(*(v225 + 32), *(v225 + 34));
      v226 = vdupq_n_s16(8 - a4);
      v386 = vrhaddq_u16(*(v225 + 48), *(v225 + 50));
      v227 = vdupq_n_s16(a4);
      v228 = v319;
      v229 = 112;
      do
      {
        v230 = (&v255 + v229);
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
        v239 = vsubq_s16(*(&v255 + v237), v238[-2]);
        v240 = vpadalq_s16(v13, v239);
        v241 = vmlal_s16(v10, *v239.i8, *v239.i8);
        v242 = vmlal_high_s16(v12, v239, v239);
        v243 = vsubq_s16(*(&v255 + v237 + 16), v238[-1]);
        v244 = vpadalq_s16(v240, v243);
        v245 = vmlal_s16(v241, *v243.i8, *v243.i8);
        v246 = vmlal_high_s16(v242, v243, v243);
        v247 = vsubq_s16(*(&v257 + v237), *v238);
        v248 = vpadalq_s16(v244, v247);
        v249 = vmlal_s16(v245, *v247.i8, *v247.i8);
        v250 = vmlal_high_s16(v246, v247, v247);
        v251 = vsubq_s16(*(&v258 + v237), v238[1]);
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
      v319 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v320 = v29;
      v30 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v321 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v322 = v30;
      v31 = 2 * a2;
      v32 = v7 + v31;
      v323 = vrhaddq_u16(*v32, *(v32 + 2));
      v324 = vrhaddq_u16(*(v32 + 1), *(v32 + 18));
      v325 = vrhaddq_u16(*(v32 + 2), *(v32 + 34));
      v326 = vrhaddq_u16(*(v32 + 3), *(v32 + 50));
      v33 = &v32[v31];
      v327 = vrhaddq_u16(*v33, *(v33 + 2));
      v328 = vrhaddq_u16(*(v33 + 1), *(v33 + 18));
      v329 = vrhaddq_u16(*(v33 + 2), *(v33 + 34));
      v330 = vrhaddq_u16(*(v33 + 3), *(v33 + 50));
      v34 = &v33[v31];
      v331 = vrhaddq_u16(*v34, *(v34 + 2));
      v332 = vrhaddq_u16(*(v34 + 1), *(v34 + 18));
      v333 = vrhaddq_u16(*(v34 + 2), *(v34 + 34));
      v334 = vrhaddq_u16(*(v34 + 3), *(v34 + 50));
      v35 = &v34[v31];
      v335 = vrhaddq_u16(*v35, *(v35 + 2));
      v336 = vrhaddq_u16(*(v35 + 1), *(v35 + 18));
      v337 = vrhaddq_u16(*(v35 + 2), *(v35 + 34));
      v338 = vrhaddq_u16(*(v35 + 3), *(v35 + 50));
      v36 = &v35[v31];
      v339 = vrhaddq_u16(*v36, *(v36 + 2));
      v340 = vrhaddq_u16(*(v36 + 1), *(v36 + 18));
      v341 = vrhaddq_u16(*(v36 + 2), *(v36 + 34));
      v342 = vrhaddq_u16(*(v36 + 3), *(v36 + 50));
      v37 = &v36[v31];
      v343 = vrhaddq_u16(*v37, *(v37 + 2));
      v344 = vrhaddq_u16(*(v37 + 1), *(v37 + 18));
      v345 = vrhaddq_u16(*(v37 + 2), *(v37 + 34));
      v346 = vrhaddq_u16(*(v37 + 3), *(v37 + 50));
      v38 = &v37[v31];
      v347 = vrhaddq_u16(*v38, *(v38 + 2));
      v348 = vrhaddq_u16(*(v38 + 1), *(v38 + 18));
      v349 = vrhaddq_u16(*(v38 + 2), *(v38 + 34));
      v350 = vrhaddq_u16(*(v38 + 3), *(v38 + 50));
      v39 = &v38[v31];
      v351 = vrhaddq_u16(*v39, *(v39 + 2));
      v352 = vrhaddq_u16(*(v39 + 1), *(v39 + 18));
      v353 = vrhaddq_u16(*(v39 + 2), *(v39 + 34));
      v354 = vrhaddq_u16(*(v39 + 3), *(v39 + 50));
      v40 = &v39[v31];
      v355 = vrhaddq_u16(*v40, *(v40 + 2));
      v356 = vrhaddq_u16(*(v40 + 16), *(v40 + 18));
      v357 = vrhaddq_u16(*(v40 + 32), *(v40 + 34));
      v358 = vrhaddq_u16(*(v40 + 48), *(v40 + 50));
      v41 = v40 + v31;
      v359 = vrhaddq_u16(*v41, *(v41 + 2));
      v360 = vrhaddq_u16(*(v41 + 16), *(v41 + 18));
      v361 = vrhaddq_u16(*(v41 + 32), *(v41 + 34));
      v362 = vrhaddq_u16(*(v41 + 48), *(v41 + 50));
      v42 = v41 + v31;
      v363 = vrhaddq_u16(*v42, *(v42 + 2));
      v364 = vrhaddq_u16(*(v42 + 16), *(v42 + 18));
      v365 = vrhaddq_u16(*(v42 + 32), *(v42 + 34));
      v366 = vrhaddq_u16(*(v42 + 48), *(v42 + 50));
      v43 = v42 + v31;
      v367 = vrhaddq_u16(*v43, *(v43 + 2));
      v368 = vrhaddq_u16(*(v43 + 16), *(v43 + 18));
      v369 = vrhaddq_u16(*(v43 + 32), *(v43 + 34));
      v370 = vrhaddq_u16(*(v43 + 48), *(v43 + 50));
      v44 = v43 + v31;
      v371 = vrhaddq_u16(*v44, *(v44 + 2));
      v372 = vrhaddq_u16(*(v44 + 16), *(v44 + 18));
      v373 = vrhaddq_u16(*(v44 + 32), *(v44 + 34));
      v374 = vrhaddq_u16(*(v44 + 48), *(v44 + 50));
      v45 = v44 + v31;
      v375 = vrhaddq_u16(*v45, *(v45 + 2));
      v376 = vrhaddq_u16(*(v45 + 16), *(v45 + 18));
      v377 = vrhaddq_u16(*(v45 + 32), *(v45 + 34));
      v46 = v45 + v31;
      v378 = vrhaddq_u16(*(v45 + 48), *(v45 + 50));
      v379 = vrhaddq_u16(*v46, *(v46 + 2));
      v380 = vrhaddq_u16(*(v46 + 16), *(v46 + 18));
      v381 = vrhaddq_u16(*(v46 + 32), *(v46 + 34));
      v382 = vrhaddq_u16(*(v46 + 48), *(v46 + 50));
      v47 = (2 * a5 + 32);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v48 = vsubq_s16(*(&v319 + v28), v47[-2]);
        v49 = vpadalq_s16(v13, v48);
        v50 = vmlal_s16(v10, *v48.i8, *v48.i8);
        v51 = vmlal_high_s16(v12, v48, v48);
        v52 = vsubq_s16(*(&v319 + v28 + 16), v47[-1]);
        v53 = vpadalq_s16(v49, v52);
        v54 = vmlal_s16(v50, *v52.i8, *v52.i8);
        v55 = vmlal_high_s16(v51, v52, v52);
        v56 = vsubq_s16(*(&v321 + v28), *v47);
        v57 = vpadalq_s16(v53, v56);
        v58 = vmlal_s16(v54, *v56.i8, *v56.i8);
        v59 = vmlal_high_s16(v55, v56, v56);
        v60 = vsubq_s16(*(&v322 + v28), v47[1]);
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
        v82 = (&v319 + v61);
        *v82 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 - 2), v62), *(v64 - 30), v63), 3uLL);
        v82[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 - 1), v62), *(v64 - 14), v63), 3uLL);
        v82[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v64, v62), *(v64 + 2), v63), 3uLL);
        v82[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v64 + 1), v62), *(v64 + 18), v63), 3uLL);
        v61 += 64;
        v64 = (v64 + v65);
      }

      while (v61 != 1088);
      v83 = 0;
      v255 = vrhaddq_u16(v319, v323);
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
      v84 = (2 * a5 + 32);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v317 = vrhaddq_u16(v381, v385);
      v318 = vrhaddq_u16(v382, v386);
      do
      {
        v85 = vsubq_s16(*(&v255 + v83), v84[-2]);
        v86 = vpadalq_s16(v13, v85);
        v87 = vmlal_s16(v10, *v85.i8, *v85.i8);
        v88 = vmlal_high_s16(v12, v85, v85);
        v89 = vsubq_s16(*(&v255 + v83 + 16), v84[-1]);
        v90 = vpadalq_s16(v86, v89);
        v91 = vmlal_s16(v87, *v89.i8, *v89.i8);
        v92 = vmlal_high_s16(v88, v89, v89);
        v93 = vsubq_s16(*(&v257 + v83), *v84);
        v94 = vpadalq_s16(v90, v93);
        v95 = vmlal_s16(v91, *v93.i8, *v93.i8);
        v96 = vmlal_high_s16(v92, v93, v93);
        v97 = vsubq_s16(*(&v258 + v83), v84[1]);
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
        v98 = (&v319 + v61);
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
      v101 = v319;
      v102 = &v323;
      v103 = 112;
      do
      {
        v104 = (&v255 + v103);
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
        v113 = vsubq_s16(*(&v255 + v111), v112[-2]);
        v114 = vpadalq_s16(v13, v113);
        v115 = vmlal_s16(v10, *v113.i8, *v113.i8);
        v116 = vmlal_high_s16(v12, v113, v113);
        v117 = vsubq_s16(*(&v255 + v111 + 16), v112[-1]);
        v118 = vpadalq_s16(v114, v117);
        v119 = vmlal_s16(v115, *v117.i8, *v117.i8);
        v120 = vmlal_high_s16(v116, v117, v117);
        v121 = vsubq_s16(*(&v257 + v111), *v112);
        v122 = vpadalq_s16(v118, v121);
        v123 = vmlal_s16(v119, *v121.i8, *v121.i8);
        v124 = vmlal_high_s16(v120, v121, v121);
        v125 = vsubq_s16(*(&v258 + v111), v112[1]);
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
        v66 = (&v319 + v61);
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
        v69 = vsubq_s16(*(&v319 + v67), v68[-2]);
        v70 = vpadalq_s16(v13, v69);
        v71 = vmlal_s16(v10, *v69.i8, *v69.i8);
        v72 = vmlal_high_s16(v12, v69, v69);
        v73 = vsubq_s16(*(&v319 + v67 + 16), v68[-1]);
        v74 = vpadalq_s16(v70, v73);
        v75 = vmlal_s16(v71, *v73.i8, *v73.i8);
        v76 = vmlal_high_s16(v72, v73, v73);
        v77 = vsubq_s16(*(&v321 + v67), *v68);
        v78 = vpadalq_s16(v74, v77);
        v79 = vmlal_s16(v75, *v77.i8, *v77.i8);
        v80 = vmlal_high_s16(v76, v77, v77);
        v81 = vsubq_s16(*(&v322 + v67), v68[1]);
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
      v131 = (&v319 + v126);
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
      v135 = vsubq_s16(*(&v319 + v133), v134[-2]);
      v136 = vpadalq_s16(v13, v135);
      v137 = vmlal_s16(v10, *v135.i8, *v135.i8);
      v138 = vmlal_high_s16(v12, v135, v135);
      v139 = vsubq_s16(*(&v319 + v133 + 16), v134[-1]);
      v140 = vpadalq_s16(v136, v139);
      v141 = vmlal_s16(v137, *v139.i8, *v139.i8);
      v142 = vmlal_high_s16(v138, v139, v139);
      v143 = vsubq_s16(*(&v321 + v133), *v134);
      v144 = vpadalq_s16(v140, v143);
      v145 = vmlal_s16(v141, *v143.i8, *v143.i8);
      v146 = vmlal_high_s16(v142, v143, v143);
      v147 = vsubq_s16(*(&v322 + v133), v134[1]);
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
      v189 = (&v319 + v182);
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
      v193 = vsubq_s16(*(&v319 + v191), v192[-2]);
      v194 = vpadalq_s16(v13, v193);
      v195 = vmlal_s16(v10, *v193.i8, *v193.i8);
      v196 = vmlal_high_s16(v12, v193, v193);
      v197 = vsubq_s16(*(&v319 + v191 + 16), v192[-1]);
      v198 = vpadalq_s16(v194, v197);
      v199 = vmlal_s16(v195, *v197.i8, *v197.i8);
      v200 = vmlal_high_s16(v196, v197, v197);
      v201 = vsubq_s16(*(&v321 + v191), *v192);
      v202 = vpadalq_s16(v198, v201);
      v203 = vmlal_s16(v199, *v201.i8, *v201.i8);
      v204 = vmlal_high_s16(v200, v201, v201);
      v205 = vsubq_s16(*(&v322 + v191), v192[1]);
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
  *a7 = v253;
  return v253 - ((v252 * v252) >> 9);
}

uint64_t vpx_highbd_8_sub_pixel_variance32x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v232[257] = *MEMORY[0x277D85DE8];
  v10 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v175 = 0;
      v176 = v10 + 2;
      do
      {
        v177 = &v231[v175];
        *v177 = vrhaddq_u16(*(v176 - 2), *(v176 - 30));
        v177[1] = vrhaddq_u16(*(v176 - 1), *(v176 - 14));
        v177[2] = vrhaddq_u16(*v176, *(v176 + 2));
        v177[3] = vrhaddq_u16(*(v176 + 1), *(v176 + 18));
        v175 += 4;
        v176 = (v176 + 2 * v4);
      }

      while ((v175 * 16) != 2112);
      v178 = v231[0];
      v179 = v232;
      v180 = 112;
      do
      {
        v181 = &v230[v180];
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
        v190 = vsubq_s16(*&v230[v188], v189[-2]);
        v191 = vpadalq_s16(v16, v190);
        v192 = vmlal_s16(v13, *v190.i8, *v190.i8);
        v193 = vmlal_high_s16(v15, v190, v190);
        v194 = vsubq_s16(*&v230[v188 + 16], v189[-1]);
        v195 = vpadalq_s16(v191, v194);
        v196 = vmlal_s16(v192, *v194.i8, *v194.i8);
        v197 = vmlal_high_s16(v193, v194, v194);
        v198 = vsubq_s16(*&v230[v188 + 32], *v189);
        v199 = vpadalq_s16(v195, v198);
        v200 = vmlal_s16(v196, *v198.i8, *v198.i8);
        v201 = vmlal_high_s16(v197, v198, v198);
        v202 = vsubq_s16(*&v230[v188 + 48], v189[1]);
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
          v50 = &v231[v31];
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
        v53 = v231[0];
        v54 = v232;
        v55 = 112;
        do
        {
          v56 = &v230[v55];
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
          v65 = vsubq_s16(*&v230[v63], v64[-2]);
          v66 = vpadalq_s16(v16, v65);
          v67 = vmlal_s16(v13, *v65.i8, *v65.i8);
          v68 = vmlal_high_s16(v15, v65, v65);
          v69 = vsubq_s16(*&v230[v63 + 16], v64[-1]);
          v70 = vpadalq_s16(v66, v69);
          v71 = vmlal_s16(v67, *v69.i8, *v69.i8);
          v72 = vmlal_high_s16(v68, v69, v69);
          v73 = vsubq_s16(*&v230[v63 + 32], *v64);
          v74 = vpadalq_s16(v70, v73);
          v75 = vmlal_s16(v71, *v73.i8, *v73.i8);
          v76 = vmlal_high_s16(v72, v73, v73);
          v77 = vsubq_s16(*&v230[v63 + 48], v64[1]);
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
          v34 = &v231[v31];
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
          v37 = vsubq_s16(v231[v35], v36[-2]);
          v38 = vpadalq_s16(v16, v37);
          v39 = vmlal_s16(v13, *v37.i8, *v37.i8);
          v40 = vmlal_high_s16(v15, v37, v37);
          v41 = vsubq_s16(v231[v35 + 1], v36[-1]);
          v42 = vpadalq_s16(v38, v41);
          v43 = vmlal_s16(v39, *v41.i8, *v41.i8);
          v44 = vmlal_high_s16(v40, v41, v41);
          v45 = vsubq_s16(v231[v35 + 2], *v36);
          v46 = vpadalq_s16(v42, v45);
          v47 = vmlal_s16(v43, *v45.i8, *v45.i8);
          v48 = vmlal_high_s16(v44, v45, v45);
          v49 = vsubq_s16(v231[v35 + 3], v36[1]);
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
        v99 = &v231[v78];
        *v99 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 - 2), v79), *(v81 - 30), v80), 3uLL);
        v99[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 - 1), v79), *(v81 - 14), v80), 3uLL);
        v99[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v81, v79), *(v81 + 2), v80), 3uLL);
        v99[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v81 + 1), v79), *(v81 + 18), v80), 3uLL);
        v78 += 4;
        v81 = (v81 + v82);
      }

      while ((v78 * 16) != 2112);
      v100 = v231[0];
      v101 = v232;
      v102 = 112;
      do
      {
        v103 = &v230[v102];
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
        v112 = vsubq_s16(*&v230[v110], v111[-2]);
        v113 = vpadalq_s16(v16, v112);
        v114 = vmlal_s16(v13, *v112.i8, *v112.i8);
        v115 = vmlal_high_s16(v15, v112, v112);
        v116 = vsubq_s16(*&v230[v110 + 16], v111[-1]);
        v117 = vpadalq_s16(v113, v116);
        v118 = vmlal_s16(v114, *v116.i8, *v116.i8);
        v119 = vmlal_high_s16(v115, v116, v116);
        v120 = vsubq_s16(*&v230[v110 + 32], *v111);
        v121 = vpadalq_s16(v117, v120);
        v122 = vmlal_s16(v118, *v120.i8, *v120.i8);
        v123 = vmlal_high_s16(v119, v120, v120);
        v124 = vsubq_s16(*&v230[v110 + 48], v111[1]);
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
        v125 = &v231[v78];
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
      v128 = v231[0];
      v129 = v232;
      v130 = 112;
      do
      {
        v131 = &v230[v130];
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
        v140 = vsubq_s16(*&v230[v138], v139[-2]);
        v141 = vpadalq_s16(v16, v140);
        v142 = vmlal_s16(v13, *v140.i8, *v140.i8);
        v143 = vmlal_high_s16(v15, v140, v140);
        v144 = vsubq_s16(*&v230[v138 + 16], v139[-1]);
        v145 = vpadalq_s16(v141, v144);
        v146 = vmlal_s16(v142, *v144.i8, *v144.i8);
        v147 = vmlal_high_s16(v143, v144, v144);
        v148 = vsubq_s16(*&v230[v138 + 32], *v139);
        v149 = vpadalq_s16(v145, v148);
        v150 = vmlal_s16(v146, *v148.i8, *v148.i8);
        v151 = vmlal_high_s16(v147, v148, v148);
        v152 = vsubq_s16(*&v230[v138 + 48], v139[1]);
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
        v83 = &v231[v78];
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
        v86 = vsubq_s16(v231[v84], v85[-2]);
        v87 = vpadalq_s16(v16, v86);
        v88 = vmlal_s16(v13, *v86.i8, *v86.i8);
        v89 = vmlal_high_s16(v15, v86, v86);
        v90 = vsubq_s16(v231[v84 + 1], v85[-1]);
        v91 = vpadalq_s16(v87, v90);
        v92 = vmlal_s16(v88, *v90.i8, *v90.i8);
        v93 = vmlal_high_s16(v89, v90, v90);
        v94 = vsubq_s16(v231[v84 + 2], *v85);
        v95 = vpadalq_s16(v91, v94);
        v96 = vmlal_s16(v92, *v94.i8, *v94.i8);
        v97 = vmlal_high_s16(v93, v94, v94);
        v98 = vsubq_s16(v231[v84 + 3], v85[1]);
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
      v158 = &v231[v153];
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
      v162 = vsubq_s16(v231[v160], v161[-2]);
      v163 = vpadalq_s16(v16, v162);
      v164 = vmlal_s16(v13, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v15, v162, v162);
      v166 = vsubq_s16(v231[v160 + 1], v161[-1]);
      v167 = vpadalq_s16(v163, v166);
      v168 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v169 = vmlal_high_s16(v165, v166, v166);
      v170 = vsubq_s16(v231[v160 + 2], *v161);
      v171 = vpadalq_s16(v167, v170);
      v172 = vmlal_s16(v168, *v170.i8, *v170.i8);
      v173 = vmlal_high_s16(v169, v170, v170);
      v174 = vsubq_s16(v231[v160 + 3], v161[1]);
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
      v210 = &v231[v203];
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
      v214 = vsubq_s16(v231[v212], v213[-2]);
      v215 = vpadalq_s16(v16, v214);
      v216 = vmlal_s16(v13, *v214.i8, *v214.i8);
      v217 = vmlal_high_s16(v15, v214, v214);
      v218 = vsubq_s16(v231[v212 + 1], v213[-1]);
      v219 = vpadalq_s16(v215, v218);
      v220 = vmlal_s16(v216, *v218.i8, *v218.i8);
      v221 = vmlal_high_s16(v217, v218, v218);
      v222 = vsubq_s16(v231[v212 + 2], *v213);
      v223 = vpadalq_s16(v219, v222);
      v224 = vmlal_s16(v220, *v222.i8, *v222.i8);
      v225 = vmlal_high_s16(v221, v222, v222);
      v226 = vsubq_s16(v231[v212 + 3], v213[1]);
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
  *v9 = v228;
  return v228 - ((v227 * v227) >> 10);
}

uint64_t vpx_highbd_8_sub_pixel_variance32x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v240[513] = *MEMORY[0x277D85DE8];
  v10 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v91 = v10 + 2;
      v92 = v239;
      v93 = -65;
      do
      {
        *v92 = vrhaddq_u16(*(v91 - 2), *(v91 - 30));
        v92[1] = vrhaddq_u16(*(v91 - 1), *(v91 - 14));
        v92[2] = vrhaddq_u16(*v91, *(v91 + 2));
        v92[3] = vrhaddq_u16(*(v91 + 1), *(v91 + 18));
        v92 += 4;
        v91 = (v91 + 2 * v4);
        v30 = __CFADD__(v93++, 1);
      }

      while (!v30);
      v94 = v239[0];
      v95 = v240;
      v96 = 112;
      do
      {
        v97 = (&v238 + v96);
        v98 = v95[-2];
        v99 = v95[2];
        v100 = vrhaddq_u16(v95[-3], v95[1]);
        v102 = v95[-1];
        v101 = *v95;
        v97[-7] = vrhaddq_u16(v94, *v95);
        v97[-6] = v100;
        v103 = vrhaddq_u16(v102, v95[3]);
        v97[-5] = vrhaddq_u16(v98, v99);
        v97[-4] = v103;
        v96 += 64;
        v95 += 4;
        v94 = v101;
      }

      while (v96 != 4208);
      v104 = 0;
      v105 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v106 = vsubq_s16(*(&v238 + v104), v105[-2]);
        v107 = vpadalq_s16(v16, v106);
        v108 = vmlal_s16(v13, *v106.i8, *v106.i8);
        v109 = vmlal_high_s16(v15, v106, v106);
        v110 = vsubq_s16(*(&v238 + v104 + 16), v105[-1]);
        v111 = vpadalq_s16(v107, v110);
        v112 = vmlal_s16(v108, *v110.i8, *v110.i8);
        v113 = vmlal_high_s16(v109, v110, v110);
        v114 = vsubq_s16(*(&v238 + v104 + 32), *v105);
        v115 = vpadalq_s16(v111, v114);
        v116 = vmlal_s16(v112, *v114.i8, *v114.i8);
        v117 = vmlal_high_s16(v113, v114, v114);
        v118 = vsubq_s16(*(&v238 + v104 + 48), v105[1]);
        v16 = vpadalq_s16(v115, v118);
        v13 = vmlal_s16(v116, *v118.i8, *v118.i8);
        v15 = vmlal_high_s16(v117, v118, v118);
        v104 += 64;
        v105 = (v105 + 2 * v8);
      }

      while (v104 != 4096);
    }

    else if (v6)
    {
      v143 = v10 + 2;
      v144 = v239;
      v145 = -65;
      do
      {
        *v144 = vrhaddq_u16(*(v143 - 2), *(v143 - 30));
        v144[1] = vrhaddq_u16(*(v143 - 1), *(v143 - 14));
        v144[2] = vrhaddq_u16(*v143, *(v143 + 2));
        v144[3] = vrhaddq_u16(*(v143 + 1), *(v143 + 18));
        v144 += 4;
        v143 = (v143 + 2 * v4);
        v30 = __CFADD__(v145++, 1);
      }

      while (!v30);
      v146 = vdupq_n_s16(8 - v6);
      v147 = vdupq_n_s16(v6);
      v148 = v239[0];
      v149 = v240;
      v150 = 112;
      do
      {
        v151 = (&v238 + v150);
        v152 = v149[-2];
        v153 = v149[2];
        v155 = v149[-1];
        v154 = *v149;
        v156 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v149[-3], v146), v149[1], v147), 3uLL);
        v151[-7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v148, v146), *v149, v147), 3uLL);
        v151[-6] = v156;
        v157 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v155, v146), v149[3], v147), 3uLL);
        v151[-5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v152, v146), v153, v147), 3uLL);
        v151[-4] = v157;
        v150 += 64;
        v149 += 4;
        v148 = v154;
      }

      while (v150 != 4208);
      v158 = 0;
      v159 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v160 = vsubq_s16(*(&v238 + v158), v159[-2]);
        v161 = vpadalq_s16(v16, v160);
        v162 = vmlal_s16(v13, *v160.i8, *v160.i8);
        v163 = vmlal_high_s16(v15, v160, v160);
        v164 = vsubq_s16(*(&v238 + v158 + 16), v159[-1]);
        v165 = vpadalq_s16(v161, v164);
        v166 = vmlal_s16(v162, *v164.i8, *v164.i8);
        v167 = vmlal_high_s16(v163, v164, v164);
        v168 = vsubq_s16(*(&v238 + v158 + 32), *v159);
        v169 = vpadalq_s16(v165, v168);
        v170 = vmlal_s16(v166, *v168.i8, *v168.i8);
        v171 = vmlal_high_s16(v167, v168, v168);
        v172 = vsubq_s16(*(&v238 + v158 + 48), v159[1]);
        v16 = vpadalq_s16(v169, v172);
        v13 = vmlal_s16(v170, *v172.i8, *v172.i8);
        v15 = vmlal_high_s16(v171, v172, v172);
        v158 += 64;
        v159 = (v159 + 2 * v8);
      }

      while (v158 != 4096);
    }

    else
    {
      v31 = 0;
      v32 = v10 + 2;
      do
      {
        v33 = &v239[v31];
        *v33 = vrhaddq_u16(*(v32 - 2), *(v32 - 30));
        v33[1] = vrhaddq_u16(*(v32 - 1), *(v32 - 14));
        v33[2] = vrhaddq_u16(*v32, *(v32 + 2));
        v33[3] = vrhaddq_u16(*(v32 + 1), *(v32 + 18));
        v31 += 4;
        v32 = (v32 + 2 * v4);
      }

      while ((v31 * 16) != 4096);
      v34 = 0;
      v35 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v36 = vsubq_s16(v239[v34], v35[-2]);
        v37 = vpadalq_s16(v16, v36);
        v38 = vmlal_s16(v13, *v36.i8, *v36.i8);
        v39 = vmlal_high_s16(v15, v36, v36);
        v40 = vsubq_s16(v239[v34 + 1], v35[-1]);
        v41 = vpadalq_s16(v37, v40);
        v42 = vmlal_s16(v38, *v40.i8, *v40.i8);
        v43 = vmlal_high_s16(v39, v40, v40);
        v44 = vsubq_s16(v239[v34 + 2], *v35);
        v45 = vpadalq_s16(v41, v44);
        v46 = vmlal_s16(v42, *v44.i8, *v44.i8);
        v47 = vmlal_high_s16(v43, v44, v44);
        v48 = vsubq_s16(v239[v34 + 3], v35[1]);
        v16 = vpadalq_s16(v45, v48);
        v13 = vmlal_s16(v46, *v48.i8, *v48.i8);
        v15 = vmlal_high_s16(v47, v48, v48);
        v34 += 4;
        v35 = (v35 + 2 * v8);
      }

      while ((v34 * 16) != 4096);
    }
  }

  else if (v5)
  {
    if (v6 == 4)
    {
      v173 = vdupq_n_s16(8 - v5);
      v174 = vdupq_n_s16(v5);
      v175 = v10 + 2;
      v176 = v239;
      v177 = -65;
      do
      {
        *v176 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v175 - 2), v173), *(v175 - 30), v174), 3uLL);
        v176[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v175 - 1), v173), *(v175 - 14), v174), 3uLL);
        v176[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v175, v173), *(v175 + 2), v174), 3uLL);
        v176[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v175 + 1), v173), *(v175 + 18), v174), 3uLL);
        v176 += 4;
        v175 = (v175 + 2 * v4);
        v30 = __CFADD__(v177++, 1);
      }

      while (!v30);
      v178 = v239[0];
      v179 = v240;
      v180 = 112;
      do
      {
        v181 = (&v238 + v180);
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

      while (v180 != 4208);
      v188 = 0;
      v189 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v190 = vsubq_s16(*(&v238 + v188), v189[-2]);
        v191 = vpadalq_s16(v16, v190);
        v192 = vmlal_s16(v13, *v190.i8, *v190.i8);
        v193 = vmlal_high_s16(v15, v190, v190);
        v194 = vsubq_s16(*(&v238 + v188 + 16), v189[-1]);
        v195 = vpadalq_s16(v191, v194);
        v196 = vmlal_s16(v192, *v194.i8, *v194.i8);
        v197 = vmlal_high_s16(v193, v194, v194);
        v198 = vsubq_s16(*(&v238 + v188 + 32), *v189);
        v199 = vpadalq_s16(v195, v198);
        v200 = vmlal_s16(v196, *v198.i8, *v198.i8);
        v201 = vmlal_high_s16(v197, v198, v198);
        v202 = vsubq_s16(*(&v238 + v188 + 48), v189[1]);
        v16 = vpadalq_s16(v199, v202);
        v13 = vmlal_s16(v200, *v202.i8, *v202.i8);
        v15 = vmlal_high_s16(v201, v202, v202);
        v188 += 64;
        v189 = (v189 + 2 * v8);
      }

      while (v188 != 4096);
    }

    else if (v6)
    {
      v203 = vdupq_n_s16(8 - v5);
      v204 = vdupq_n_s16(v5);
      v205 = v10 + 2;
      v206 = v239;
      v207 = -65;
      do
      {
        *v206 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v205 - 2), v203), *(v205 - 30), v204), 3uLL);
        v206[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v205 - 1), v203), *(v205 - 14), v204), 3uLL);
        v206[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v205, v203), *(v205 + 2), v204), 3uLL);
        v206[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v205 + 1), v203), *(v205 + 18), v204), 3uLL);
        v206 += 4;
        v205 = (v205 + 2 * v4);
        v30 = __CFADD__(v207++, 1);
      }

      while (!v30);
      v208 = vdupq_n_s16(8 - v6);
      v209 = vdupq_n_s16(v6);
      v210 = v239[0];
      v211 = v240;
      v212 = 112;
      do
      {
        v213 = (&v238 + v212);
        v214 = v211[-2];
        v215 = v211[2];
        v217 = v211[-1];
        v216 = *v211;
        v218 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v211[-3], v208), v211[1], v209), 3uLL);
        v213[-7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v210, v208), *v211, v209), 3uLL);
        v213[-6] = v218;
        v219 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v217, v208), v211[3], v209), 3uLL);
        v213[-5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v214, v208), v215, v209), 3uLL);
        v213[-4] = v219;
        v212 += 64;
        v211 += 4;
        v210 = v216;
      }

      while (v212 != 4208);
      v220 = 0;
      v221 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v222 = vsubq_s16(*(&v238 + v220), v221[-2]);
        v223 = vpadalq_s16(v16, v222);
        v224 = vmlal_s16(v13, *v222.i8, *v222.i8);
        v225 = vmlal_high_s16(v15, v222, v222);
        v226 = vsubq_s16(*(&v238 + v220 + 16), v221[-1]);
        v227 = vpadalq_s16(v223, v226);
        v228 = vmlal_s16(v224, *v226.i8, *v226.i8);
        v229 = vmlal_high_s16(v225, v226, v226);
        v230 = vsubq_s16(*(&v238 + v220 + 32), *v221);
        v231 = vpadalq_s16(v227, v230);
        v232 = vmlal_s16(v228, *v230.i8, *v230.i8);
        v233 = vmlal_high_s16(v229, v230, v230);
        v234 = vsubq_s16(*(&v238 + v220 + 48), v221[1]);
        v16 = vpadalq_s16(v231, v234);
        v13 = vmlal_s16(v232, *v234.i8, *v234.i8);
        v15 = vmlal_high_s16(v233, v234, v234);
        v220 += 64;
        v221 = (v221 + 2 * v8);
      }

      while (v220 != 4096);
    }

    else
    {
      v49 = 0;
      v50 = vdupq_n_s16(8 - v5);
      v51 = vdupq_n_s16(v5);
      v52 = v10 + 2;
      do
      {
        v53 = &v239[v49];
        *v53 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 - 2), v50), *(v52 - 30), v51), 3uLL);
        v53[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 - 1), v50), *(v52 - 14), v51), 3uLL);
        v53[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v52, v50), *(v52 + 2), v51), 3uLL);
        v53[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 + 1), v50), *(v52 + 18), v51), 3uLL);
        v49 += 4;
        v52 = (v52 + 2 * v4);
      }

      while ((v49 * 16) != 4096);
      v54 = 0;
      v55 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v56 = vsubq_s16(v239[v54], v55[-2]);
        v57 = vpadalq_s16(v16, v56);
        v58 = vmlal_s16(v13, *v56.i8, *v56.i8);
        v59 = vmlal_high_s16(v15, v56, v56);
        v60 = vsubq_s16(v239[v54 + 1], v55[-1]);
        v61 = vpadalq_s16(v57, v60);
        v62 = vmlal_s16(v58, *v60.i8, *v60.i8);
        v63 = vmlal_high_s16(v59, v60, v60);
        v64 = vsubq_s16(v239[v54 + 2], *v55);
        v65 = vpadalq_s16(v61, v64);
        v66 = vmlal_s16(v62, *v64.i8, *v64.i8);
        v67 = vmlal_high_s16(v63, v64, v64);
        v68 = vsubq_s16(v239[v54 + 3], v55[1]);
        v16 = vpadalq_s16(v65, v68);
        v13 = vmlal_s16(v66, *v68.i8, *v68.i8);
        v15 = vmlal_high_s16(v67, v68, v68);
        v54 += 4;
        v55 = (v55 + 2 * v8);
      }

      while ((v54 * 16) != 4096);
    }
  }

  else if (v6 == 4)
  {
    v69 = 0;
    v71 = *v10;
    v70 = (v10 + 2);
    v72 = v71;
    v73 = 2 * v4;
    do
    {
      v74 = &v239[v69];
      v75 = *(&v70[-2] + v73);
      *v74 = vrhaddq_u16(v72, v75);
      v74[1] = vrhaddq_u16(v70[-1], *(&v70[-1] + v73));
      v74[2] = vrhaddq_u16(*v70, *(v70 + 2 * v4));
      v74[3] = vrhaddq_u16(v70[1], *(&v70[1] + v73));
      v69 += 4;
      v70 = (v70 + v73);
      v72 = v75;
    }

    while ((v69 * 16) != 4096);
    v76 = 0;
    v77 = (2 * v7 + 32);
    v13 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v78 = vsubq_s16(v239[v76], v77[-2]);
      v79 = vpadalq_s16(v16, v78);
      v80 = vmlal_s16(v13, *v78.i8, *v78.i8);
      v81 = vmlal_high_s16(v15, v78, v78);
      v82 = vsubq_s16(v239[v76 + 1], v77[-1]);
      v83 = vpadalq_s16(v79, v82);
      v84 = vmlal_s16(v80, *v82.i8, *v82.i8);
      v85 = vmlal_high_s16(v81, v82, v82);
      v86 = vsubq_s16(v239[v76 + 2], *v77);
      v87 = vpadalq_s16(v83, v86);
      v88 = vmlal_s16(v84, *v86.i8, *v86.i8);
      v89 = vmlal_high_s16(v85, v86, v86);
      v90 = vsubq_s16(v239[v76 + 3], v77[1]);
      v16 = vpadalq_s16(v87, v90);
      v13 = vmlal_s16(v88, *v90.i8, *v90.i8);
      v15 = vmlal_high_s16(v89, v90, v90);
      v76 += 4;
      v77 = (v77 + 2 * v8);
    }

    while ((v76 * 16) != 4096);
  }

  else if (v6)
  {
    v119 = 0;
    v120 = vdupq_n_s16(8 - v6);
    v121 = vdupq_n_s16(v6);
    v123 = *v10;
    v122 = (v10 + 2);
    v124 = v123;
    v125 = 2 * v4;
    do
    {
      v126 = &v239[v119];
      v127 = *(&v122[-2] + v125);
      *v126 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v124, v120), v127, v121), 3uLL);
      v126[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122[-1], v120), *(&v122[-1] + v125), v121), 3uLL);
      v126[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v122, v120), *(v122 + 2 * v4), v121), 3uLL);
      v126[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122[1], v120), *(&v122[1] + v125), v121), 3uLL);
      v119 += 4;
      v122 = (v122 + v125);
      v124 = v127;
    }

    while ((v119 * 16) != 4096);
    v128 = 0;
    v129 = (2 * v7 + 32);
    v13 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v130 = vsubq_s16(v239[v128], v129[-2]);
      v131 = vpadalq_s16(v16, v130);
      v132 = vmlal_s16(v13, *v130.i8, *v130.i8);
      v133 = vmlal_high_s16(v15, v130, v130);
      v134 = vsubq_s16(v239[v128 + 1], v129[-1]);
      v135 = vpadalq_s16(v131, v134);
      v136 = vmlal_s16(v132, *v134.i8, *v134.i8);
      v137 = vmlal_high_s16(v133, v134, v134);
      v138 = vsubq_s16(v239[v128 + 2], *v129);
      v139 = vpadalq_s16(v135, v138);
      v140 = vmlal_s16(v136, *v138.i8, *v138.i8);
      v141 = vmlal_high_s16(v137, v138, v138);
      v142 = vsubq_s16(v239[v128 + 3], v129[1]);
      v16 = vpadalq_s16(v139, v142);
      v13 = vmlal_s16(v140, *v142.i8, *v142.i8);
      v15 = vmlal_high_s16(v141, v142, v142);
      v128 += 4;
      v129 = (v129 + 2 * v8);
    }

    while ((v128 * 16) != 4096);
  }

  else
  {
    v11 = (v10 + 2);
    v12 = (2 * v7 + 32);
    v13 = 0uLL;
    v14 = -64;
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
      v30 = __CFADD__(v14++, 1);
    }

    while (!v30);
  }

  v235 = vaddvq_s32(v16);
  v236 = vaddlvq_u32(vaddq_s32(v15, v13));
  *v9 = v236;
  return v236 - ((v235 * v235) >> 11);
}

uint64_t vpx_highbd_8_sub_pixel_variance64x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return vpx_highbd_8_variance64x32_neon(v59 >> 1, 64, v7, v8, v9);
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
    return vpx_highbd_8_variance64x32_neon(v59 >> 1, 64, v7, v8, v9);
  }

  v11 = v3 & 0x7FFFFFFFFFFFFFFFLL;

  return vpx_highbd_8_variance64x32_neon(v11, v4, v7, v8, v9);
}

uint64_t vpx_highbd_8_sub_pixel_variance64x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return vpx_highbd_8_variance64x64_neon(v59 >> 1, 64, v7, v8, v9);
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
    return vpx_highbd_8_variance64x64_neon(v59 >> 1, 64, v7, v8, v9);
  }

  v11 = v3 & 0x7FFFFFFFFFFFFFFFLL;

  return vpx_highbd_8_variance64x64_neon(v11, v4, v7, v8, v9);
}

uint64_t vpx_highbd_10_sub_pixel_variance4x4_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = vdup_n_s16(8 - a3);
  v8 = vdup_n_s16(a3);
  v9 = vrshr_n_u16(vmla_s16(vmul_s16(*(2 * a1), v7), *(2 * a1 + 2), v8), 3uLL);
  v10 = 2 * a2;
  v11 = 2 * a1 + v10;
  v12 = vrshr_n_u16(vmla_s16(vmul_s16(*v11, v7), *(v11 + 2), v8), 3uLL);
  v13 = v11 + v10;
  v14 = vrshr_n_u16(vmla_s16(vmul_s16(*v13, v7), *(v13 + 2), v8), 3uLL);
  v15 = v13 + v10;
  v16 = vrshr_n_u16(vmla_s16(vmul_s16(*v15, v7), *(v15 + 2), v8), 3uLL);
  v17 = vmla_s16(vmul_s16(*(v15 + v10), v7), *(v15 + v10 + 2), v8);
  v18 = vdup_n_s16(8 - a4);
  v19 = vdup_n_s16(a4);
  *v20.i8 = vrshr_n_u16(vmla_s16(vmul_s16(v9, v18), v12, v19), 3uLL);
  v21 = vrshr_n_u16(vmla_s16(vmul_s16(v12, v18), v14, v19), 3uLL);
  *v22.i8 = vrshr_n_u16(vmla_s16(vmul_s16(v14, v18), v16, v19), 3uLL);
  v23 = vrshr_n_u16(vmla_s16(vmul_s16(v16, v18), vrshr_n_u16(v17, 3uLL), v19), 3uLL);
  v20.u64[1] = v21;
  v24 = 2 * a6;
  v25.i64[0] = *(2 * a5);
  v25.i64[1] = *(2 * a5 + v24);
  v26 = vsubq_s16(v20, v25);
  v27 = (2 * a5 + 4 * a6);
  v22.u64[1] = v23;
  v28.i64[0] = *v27;
  v28.i64[1] = *(v27 + v24);
  v29 = vsubq_s16(v22, v28);
  LODWORD(v27) = vaddlvq_s16(vaddq_s16(v29, v26));
  v30 = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v26.i8, *v26.i8), v26, v26), *v29.i8, *v29.i8), v29, v29)) + 8;
  *a7 = v30 >> 4;
  v31 = (v30 >> 4) - (((((v27 << 30) + 0x80000000) >> 32) * (((v27 << 30) + 0x80000000) >> 32)) >> 4);
  return v31 & ~(v31 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_variance4x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v7 = vdup_n_s16(8 - a3);
  v8 = vdup_n_s16(a3);
  v9 = vrshr_n_u16(vmla_s16(vmul_s16(*(2 * a1), v7), *(2 * a1 + 2), v8), 3uLL);
  v10 = 2 * a2;
  v11 = 2 * a1 + v10;
  v12 = vrshr_n_u16(vmla_s16(vmul_s16(*v11, v7), *(v11 + 2), v8), 3uLL);
  v13 = v11 + v10;
  v14 = vrshr_n_u16(vmla_s16(vmul_s16(*v13, v7), *(v13 + 2), v8), 3uLL);
  v15 = v13 + v10;
  v16 = vrshr_n_u16(vmla_s16(vmul_s16(*v15, v7), *(v15 + 2), v8), 3uLL);
  v17 = v15 + v10;
  v18 = vrshr_n_u16(vmla_s16(vmul_s16(*v17, v7), *(v17 + 2), v8), 3uLL);
  v19 = v17 + v10;
  v20 = vrshr_n_u16(vmla_s16(vmul_s16(*v19, v7), *(v19 + 2), v8), 3uLL);
  v21 = v19 + v10;
  v22 = vrshr_n_u16(vmla_s16(vmul_s16(*v21, v7), *(v21 + 2), v8), 3uLL);
  v23 = v21 + v10;
  v24 = vrshr_n_u16(vmla_s16(vmul_s16(*v23, v7), *(v23 + 2), v8), 3uLL);
  v25 = vrshr_n_u16(vmla_s16(vmul_s16(*(v23 + v10), v7), *(v23 + v10 + 2), v8), 3uLL);
  v26 = vdup_n_s16(8 - a4);
  v27 = vdup_n_s16(a4);
  v29[0] = vrshr_n_u16(vmla_s16(vmul_s16(v9, v26), v12, v27), 3uLL);
  v29[1] = vrshr_n_u16(vmla_s16(vmul_s16(v12, v26), v14, v27), 3uLL);
  v29[2] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v26), v16, v27), 3uLL);
  v29[3] = vrshr_n_u16(vmla_s16(vmul_s16(v16, v26), v18, v27), 3uLL);
  v29[4] = vrshr_n_u16(vmla_s16(vmul_s16(v18, v26), v20, v27), 3uLL);
  v29[5] = vrshr_n_u16(vmla_s16(vmul_s16(v20, v26), v22, v27), 3uLL);
  v29[6] = vrshr_n_u16(vmla_s16(vmul_s16(v22, v26), v24, v27), 3uLL);
  v29[7] = vrshr_n_u16(vmla_s16(vmul_s16(v24, v26), v25, v27), 3uLL);
  return vpx_highbd_10_variance4x8_neon(v29 >> 1, 4, a5, a6, a7);
}

uint64_t vpx_highbd_10_sub_pixel_variance8x4_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = vdupq_n_s16(8 - a3);
  v8 = vdupq_n_s16(a3);
  v9 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v7), *(2 * a1 + 2), v8), 3uLL);
  v10 = 2 * a2;
  v11 = 2 * a1 + v10;
  v12 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v11, v7), *(v11 + 2), v8), 3uLL);
  v13 = v11 + v10;
  v14 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v13, v7), *(v13 + 2), v8), 3uLL);
  v15 = v13 + v10;
  v16 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v15, v7), *(v15 + 2), v8), 3uLL);
  v17 = vmlaq_s16(vmulq_s16(*(v15 + v10), v7), *(v15 + v10 + 2), v8);
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v9, v18), v12, v19), 3uLL);
  v21 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v12, v18), v14, v19), 3uLL);
  v22 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v18), v16, v19), 3uLL);
  v23 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v18), vrshrq_n_u16(v17, 3uLL), v19), 3uLL);
  v24 = vsubq_s16(v20, *(2 * a5));
  v25 = 2 * a6;
  v26 = (2 * a5 + v25);
  v27 = vsubq_s16(v21, *v26);
  v28 = (v26 + v25);
  v29 = vsubq_s16(v22, *v28);
  v30 = vsubq_s16(v23, *(v28 + v25));
  v16.i32[0] = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v27), v24), v29), v30));
  v30.i64[0] = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v24.i8, *v24.i8), v24, v24), *v27.i8, *v27.i8), v27, v27), *v29.i8, *v29.i8), v29, v29), *v30.i8, *v30.i8), v30, v30));
  *a7 = (v30.i64[0] + 8) >> 4;
  v31 = ((v30.i64[0] + 8) >> 4) - (((((v16.i32[0] << 30) + 0x80000000) >> 32) * (((v16.i32[0] << 30) + 0x80000000) >> 32)) >> 5);
  return v31 & ~(v31 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_variance8x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = vdupq_n_s16(8 - a3);
  v8 = vdupq_n_s16(a3);
  v9 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v7), *(2 * a1 + 2), v8), 3uLL);
  v10 = 2 * a2;
  v11 = 2 * a1 + v10;
  v12 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v11, v7), *(v11 + 2), v8), 3uLL);
  v13 = v11 + v10;
  v14 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v13, v7), *(v13 + 2), v8), 3uLL);
  v15 = v13 + v10;
  v16 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v15, v7), *(v15 + 2), v8), 3uLL);
  v17 = v15 + v10;
  v18 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v17, v7), *(v17 + 2), v8), 3uLL);
  v19 = v17 + v10;
  v20 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v19, v7), *(v19 + 2), v8), 3uLL);
  v21 = v19 + v10;
  v22 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v21, v7), *(v21 + 2), v8), 3uLL);
  v23 = v21 + v10;
  v24 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v23, v7), *(v23 + 2), v8), 3uLL);
  v25 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v23 + v10), v7), *(v23 + v10 + 2), v8), 3uLL);
  v26 = vdupq_n_s16(8 - a4);
  v27 = vdupq_n_s16(a4);
  v29[0] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v9, v26), v12, v27), 3uLL);
  v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v12, v26), v14, v27), 3uLL);
  v29[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v26), v16, v27), 3uLL);
  v29[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v26), v18, v27), 3uLL);
  v29[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v18, v26), v20, v27), 3uLL);
  v29[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v26), v22, v27), 3uLL);
  v29[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v22, v26), v24, v27), 3uLL);
  v29[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v24, v26), v25, v27), 3uLL);
  return vpx_highbd_10_variance8x8_neon(v29 >> 1, 8, a5, a6, a7);
}

uint64_t vpx_highbd_10_sub_pixel_variance8x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = vdupq_n_s16(8 - a3);
  v8 = vdupq_n_s16(a3);
  v9 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v7), *(2 * a1 + 2), v8), 3uLL);
  v10 = 2 * a2;
  v11 = 2 * a1 + v10;
  v12 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v11, v7), *(v11 + 2), v8), 3uLL);
  v13 = v11 + v10;
  v14 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v13, v7), *(v13 + 2), v8), 3uLL);
  v15 = v13 + v10;
  v16 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v15, v7), *(v15 + 2), v8), 3uLL);
  v17 = v15 + v10;
  v18 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v17, v7), *(v17 + 2), v8), 3uLL);
  v19 = v17 + v10;
  v20 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v19, v7), *(v19 + 2), v8), 3uLL);
  v21 = v19 + v10;
  v22 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v21, v7), *(v21 + 2), v8), 3uLL);
  v23 = v21 + v10;
  v24 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v23, v7), *(v23 + 2), v8), 3uLL);
  v25 = v23 + v10;
  v26 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v25, v7), *(v25 + 2), v8), 3uLL);
  v27 = v25 + v10;
  v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v27, v7), *(v27 + 2), v8), 3uLL);
  v29 = v27 + v10;
  v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v29, v7), *(v29 + 2), v8), 3uLL);
  v31 = v29 + v10;
  v32 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v31, v7), *(v31 + 2), v8), 3uLL);
  v33 = v31 + v10;
  v34 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v33, v7), *(v33 + 2), v8), 3uLL);
  v35 = v33 + v10;
  v36 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v35, v7), *(v35 + 2), v8), 3uLL);
  v37 = v35 + v10;
  v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v37, v7), *(v37 + 2), v8), 3uLL);
  v39 = v37 + v10;
  v40 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v39, v7), *(v39 + 2), v8), 3uLL);
  v41 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v39 + v10), v7), *(v39 + v10 + 2), v8), 3uLL);
  v42 = vdupq_n_s16(8 - a4);
  v43 = vdupq_n_s16(a4);
  v45[0] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v9, v42), v12, v43), 3uLL);
  v45[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v12, v42), v14, v43), 3uLL);
  v45[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v42), v16, v43), 3uLL);
  v45[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v42), v18, v43), 3uLL);
  v45[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v18, v42), v20, v43), 3uLL);
  v45[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v42), v22, v43), 3uLL);
  v45[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v22, v42), v24, v43), 3uLL);
  v45[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v24, v42), v26, v43), 3uLL);
  v45[8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v26, v42), v28, v43), 3uLL);
  v45[9] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v42), v30, v43), 3uLL);
  v45[10] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v30, v42), v32, v43), 3uLL);
  v45[11] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v32, v42), v34, v43), 3uLL);
  v45[12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v34, v42), v36, v43), 3uLL);
  v45[13] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v36, v42), v38, v43), 3uLL);
  v45[14] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v38, v42), v40, v43), 3uLL);
  v45[15] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v40, v42), v41, v43), 3uLL);
  return vpx_highbd_10_variance8x16_neon(v45 >> 1, 8, a5, a6, a7);
}

uint64_t vpx_highbd_10_sub_pixel_variance16x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v164 = *MEMORY[0x277D85DE8];
  v7 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v54 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v146 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v147 = v54;
      v55 = 2 * a2;
      v56 = &v7->i8[v55];
      v148 = vrhaddq_u16(*v56, *(v56 + 2));
      v149 = vrhaddq_u16(*(v56 + 1), *(v56 + 18));
      v57 = &v56[v55];
      v150 = vrhaddq_u16(*v57, *(v57 + 2));
      v151 = vrhaddq_u16(*(v57 + 1), *(v57 + 18));
      v58 = &v57[v55];
      v152 = vrhaddq_u16(*v58, *(v58 + 2));
      v153 = vrhaddq_u16(*(v58 + 1), *(v58 + 18));
      v59 = &v58[v55];
      v154 = vrhaddq_u16(*v59, *(v59 + 2));
      v155 = vrhaddq_u16(*(v59 + 1), *(v59 + 18));
      v60 = &v59[v55];
      v156 = vrhaddq_u16(*v60, *(v60 + 2));
      v157 = vrhaddq_u16(*(v60 + 1), *(v60 + 18));
      v61 = &v60[v55];
      v158 = vrhaddq_u16(*v61, *(v61 + 2));
      v159 = vrhaddq_u16(*(v61 + 1), *(v61 + 18));
      v62 = &v61[v55];
      v160 = vrhaddq_u16(*v62, *(v62 + 2));
      v161 = vrhaddq_u16(*(v62 + 1), *(v62 + 18));
      v63 = &v62[v55];
      v162 = vrhaddq_u16(*v63, *(v63 + 2));
      v163 = vrhaddq_u16(*(v63 + 1), *(v63 + 18));
      v130 = vrhaddq_u16(v146, v148);
      v131 = vrhaddq_u16(v54, v149);
      v132 = vrhaddq_u16(v148, v150);
      v133 = vrhaddq_u16(v149, v151);
      v134 = vrhaddq_u16(v150, v152);
      v135 = vrhaddq_u16(v151, v153);
      v136 = vrhaddq_u16(v152, v154);
      v137 = vrhaddq_u16(v153, v155);
      v138 = vrhaddq_u16(v154, v156);
      v139 = vrhaddq_u16(v155, v157);
      v140 = vrhaddq_u16(v156, v158);
      v141 = vrhaddq_u16(v157, v159);
      v142 = vrhaddq_u16(v158, v160);
      v143 = vrhaddq_u16(v159, v161);
      v144 = vrhaddq_u16(v160, v162);
      v145 = vrhaddq_u16(v161, v163);
LABEL_23:
      v88 = &v130;
      return vpx_highbd_10_variance16x8_neon(v88 >> 1, 16, a5, a6, a7);
    }

    if (!a4)
    {
      v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v146 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v147 = v10;
      v11 = 2 * a2;
      v12 = &v7->i8[v11];
      v148 = vrhaddq_u16(*v12, *(v12 + 2));
      v149 = vrhaddq_u16(*(v12 + 1), *(v12 + 18));
      v13 = &v12[v11];
      v150 = vrhaddq_u16(*v13, *(v13 + 2));
      v151 = vrhaddq_u16(*(v13 + 1), *(v13 + 18));
      v14 = &v13[v11];
      v152 = vrhaddq_u16(*v14, *(v14 + 2));
      v153 = vrhaddq_u16(*(v14 + 1), *(v14 + 18));
      v15 = &v14[v11];
      v154 = vrhaddq_u16(*v15, *(v15 + 2));
      v155 = vrhaddq_u16(*(v15 + 1), *(v15 + 18));
      v16 = &v15[v11];
      v156 = vrhaddq_u16(*v16, *(v16 + 2));
      v157 = vrhaddq_u16(*(v16 + 1), *(v16 + 18));
      v17 = &v16[v11];
      v158 = vrhaddq_u16(*v17, *(v17 + 2));
      v159 = vrhaddq_u16(*(v17 + 1), *(v17 + 18));
      v18 = &v17[v11];
      v160 = vrhaddq_u16(*v18, *(v18 + 2));
      v19 = vrhaddq_u16(*(v18 + 1), *(v18 + 18));
LABEL_18:
      v161 = v19;
      v88 = &v146;
      return vpx_highbd_10_variance16x8_neon(v88 >> 1, 16, a5, a6, a7);
    }

    v89 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
    v146 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
    v147 = v89;
    v90 = 2 * a2;
    v91 = &v7->i8[v90];
    v148 = vrhaddq_u16(*v91, *(v91 + 2));
    v149 = vrhaddq_u16(*(v91 + 1), *(v91 + 18));
    v92 = &v91[v90];
    v150 = vrhaddq_u16(*v92, *(v92 + 2));
    v151 = vrhaddq_u16(*(v92 + 1), *(v92 + 18));
    v93 = &v92[v90];
    v152 = vrhaddq_u16(*v93, *(v93 + 2));
    v153 = vrhaddq_u16(*(v93 + 1), *(v93 + 18));
    v94 = &v93[v90];
    v154 = vrhaddq_u16(*v94, *(v94 + 2));
    v155 = vrhaddq_u16(*(v94 + 1), *(v94 + 18));
    v95 = &v94[v90];
    v156 = vrhaddq_u16(*v95, *(v95 + 2));
    v157 = vrhaddq_u16(*(v95 + 1), *(v95 + 18));
    v96 = &v95[v90];
    v158 = vrhaddq_u16(*v96, *(v96 + 2));
    v159 = vrhaddq_u16(*(v96 + 1), *(v96 + 18));
    v97 = &v96[v90];
    v160 = vrhaddq_u16(*v97, *(v97 + 2));
    v161 = vrhaddq_u16(*(v97 + 1), *(v97 + 18));
    v98 = &v97[v90];
    v162 = vrhaddq_u16(*v98, *(v98 + 2));
    v99 = vdupq_n_s16(8 - a4);
    v100 = vdupq_n_s16(a4);
    v163 = vrhaddq_u16(*(v98 + 1), *(v98 + 18));
    v130 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v146, v99), v148, v100), 3uLL);
    v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v89, v99), v149, v100), 3uLL);
    v132 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v148, v99), v150, v100), 3uLL);
    v133 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v149, v99), v151, v100), 3uLL);
    v134 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v150, v99), v152, v100), 3uLL);
    v135 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v151, v99), v153, v100), 3uLL);
    v136 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v152, v99), v154, v100), 3uLL);
    v137 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v153, v99), v155, v100), 3uLL);
    v138 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154, v99), v156, v100), 3uLL);
    v139 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v155, v99), v157, v100), 3uLL);
    v140 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v156, v99), v158, v100), 3uLL);
    v141 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v157, v99), v159, v100), 3uLL);
    v142 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v158, v99), v160, v100), 3uLL);
    v143 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v159, v99), v161, v100), 3uLL);
    v101 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v160, v99), v162, v100), 3uLL);
    v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v161, v99), v163, v100), 3uLL);
LABEL_22:
    v144 = v101;
    v145 = v102;
    goto LABEL_23;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v103 = vdupq_n_s16(8 - a3);
      v104 = vdupq_n_s16(a3);
      v105 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v103), *(2 * a1 + 0x12), v104), 3uLL);
      v146 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v103), *(2 * a1 + 2), v104), 3uLL);
      v147 = v105;
      v106 = 2 * a2;
      v107 = &v7->i8[v106];
      v148 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v107, v103), *(v107 + 2), v104), 3uLL);
      v149 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v107 + 1), v103), *(v107 + 18), v104), 3uLL);
      v108 = &v107[v106];
      v150 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v108, v103), *(v108 + 2), v104), 3uLL);
      v151 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 + 1), v103), *(v108 + 18), v104), 3uLL);
      v109 = &v108[v106];
      v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v109, v103), *(v109 + 2), v104), 3uLL);
      v153 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v109 + 1), v103), *(v109 + 18), v104), 3uLL);
      v110 = &v109[v106];
      v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v110, v103), *(v110 + 2), v104), 3uLL);
      v155 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v110 + 1), v103), *(v110 + 18), v104), 3uLL);
      v111 = &v110[v106];
      v156 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v111, v103), *(v111 + 2), v104), 3uLL);
      v157 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v111 + 1), v103), *(v111 + 18), v104), 3uLL);
      v112 = &v111[v106];
      v158 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v112, v103), *(v112 + 2), v104), 3uLL);
      v159 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v112 + 1), v103), *(v112 + 18), v104), 3uLL);
      v113 = &v112[v106];
      v160 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v113, v103), *(v113 + 2), v104), 3uLL);
      v161 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v113 + 1), v103), *(v113 + 18), v104), 3uLL);
      v114 = &v113[v106];
      v162 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v114, v103), *(v114 + 2), v104), 3uLL);
      v163 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v114 + 1), v103), *(v114 + 18), v104), 3uLL);
      v130 = vrhaddq_u16(v146, v148);
      v131 = vrhaddq_u16(v105, v149);
      v132 = vrhaddq_u16(v148, v150);
      v133 = vrhaddq_u16(v149, v151);
      v134 = vrhaddq_u16(v150, v152);
      v135 = vrhaddq_u16(v151, v153);
      v136 = vrhaddq_u16(v152, v154);
      v137 = vrhaddq_u16(v153, v155);
      v138 = vrhaddq_u16(v154, v156);
      v139 = vrhaddq_u16(v155, v157);
      v140 = vrhaddq_u16(v156, v158);
      v141 = vrhaddq_u16(v157, v159);
      v142 = vrhaddq_u16(v158, v160);
      v143 = vrhaddq_u16(v159, v161);
      v101 = vrhaddq_u16(v160, v162);
      v102 = vrhaddq_u16(v161, v163);
    }

    else
    {
      if (!a4)
      {
        v20 = vdupq_n_s16(8 - a3);
        v21 = vdupq_n_s16(a3);
        v22 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v20), *(2 * a1 + 0x12), v21), 3uLL);
        v146 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v20), *(2 * a1 + 2), v21), 3uLL);
        v147 = v22;
        v23 = 2 * a2;
        v24 = &v7->i8[v23];
        v148 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v24, v20), *(v24 + 2), v21), 3uLL);
        v149 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 1), v20), *(v24 + 18), v21), 3uLL);
        v25 = &v24[v23];
        v150 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v25, v20), *(v25 + 2), v21), 3uLL);
        v151 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + 1), v20), *(v25 + 18), v21), 3uLL);
        v26 = &v25[v23];
        v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v26, v20), *(v26 + 2), v21), 3uLL);
        v153 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 + 1), v20), *(v26 + 18), v21), 3uLL);
        v27 = &v26[v23];
        v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v27, v20), *(v27 + 2), v21), 3uLL);
        v155 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 + 1), v20), *(v27 + 18), v21), 3uLL);
        v28 = &v27[v23];
        v156 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v28, v20), *(v28 + 2), v21), 3uLL);
        v157 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v28 + 1), v20), *(v28 + 18), v21), 3uLL);
        v29 = &v28[v23];
        v158 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v29, v20), *(v29 + 2), v21), 3uLL);
        v159 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v29 + 1), v20), *(v29 + 18), v21), 3uLL);
        v30 = &v29[v23];
        v160 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v30, v20), *(v30 + 2), v21), 3uLL);
        v31 = vmlaq_s16(vmulq_s16(*(v30 + 1), v20), *(v30 + 18), v21);
LABEL_17:
        v19 = vrshrq_n_u16(v31, 3uLL);
        goto LABEL_18;
      }

      v115 = vdupq_n_s16(8 - a3);
      v116 = vdupq_n_s16(a3);
      v117 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v115), *(2 * a1 + 0x12), v116), 3uLL);
      v146 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v115), *(2 * a1 + 2), v116), 3uLL);
      v147 = v117;
      v118 = 2 * a2;
      v119 = &v7->i8[v118];
      v148 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v119, v115), *(v119 + 2), v116), 3uLL);
      v149 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v119 + 1), v115), *(v119 + 18), v116), 3uLL);
      v120 = &v119[v118];
      v150 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v120, v115), *(v120 + 2), v116), 3uLL);
      v151 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v120 + 1), v115), *(v120 + 18), v116), 3uLL);
      v121 = &v120[v118];
      v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v121, v115), *(v121 + 2), v116), 3uLL);
      v153 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v121 + 1), v115), *(v121 + 18), v116), 3uLL);
      v122 = &v121[v118];
      v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v122, v115), *(v122 + 2), v116), 3uLL);
      v155 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v122 + 1), v115), *(v122 + 18), v116), 3uLL);
      v123 = &v122[v118];
      v156 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v123, v115), *(v123 + 2), v116), 3uLL);
      v157 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v123 + 1), v115), *(v123 + 18), v116), 3uLL);
      v124 = &v123[v118];
      v158 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v124, v115), *(v124 + 2), v116), 3uLL);
      v159 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v124 + 1), v115), *(v124 + 18), v116), 3uLL);
      v125 = &v124[v118];
      v160 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v125, v115), *(v125 + 2), v116), 3uLL);
      v161 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v125 + 1), v115), *(v125 + 18), v116), 3uLL);
      v126 = &v125[v118];
      v162 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v126, v115), *(v126 + 2), v116), 3uLL);
      v127 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v126 + 1), v115), *(v126 + 18), v116), 3uLL);
      v128 = vdupq_n_s16(8 - a4);
      v129 = vdupq_n_s16(a4);
      v163 = v127;
      v130 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v146, v128), v148, v129), 3uLL);
      v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v117, v128), v149, v129), 3uLL);
      v132 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v148, v128), v150, v129), 3uLL);
      v133 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v149, v128), v151, v129), 3uLL);
      v134 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v150, v128), v152, v129), 3uLL);
      v135 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v151, v128), v153, v129), 3uLL);
      v136 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v152, v128), v154, v129), 3uLL);
      v137 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v153, v128), v155, v129), 3uLL);
      v138 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154, v128), v156, v129), 3uLL);
      v139 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v155, v128), v157, v129), 3uLL);
      v140 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v156, v128), v158, v129), 3uLL);
      v141 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v157, v128), v159, v129), 3uLL);
      v142 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v158, v128), v160, v129), 3uLL);
      v143 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v159, v128), v161, v129), 3uLL);
      v101 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v160, v128), v162, v129), 3uLL);
      v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v161, v128), v127, v129), 3uLL);
    }

    goto LABEL_22;
  }

  if (a4 == 4)
  {
    v32 = 2 * a2;
    v33 = *(v7 + v32);
    v146 = vrhaddq_u16(*v7, v33);
    v34 = *(&v7[1] + v32);
    v147 = vrhaddq_u16(*(2 * a1 + 0x10), v34);
    v35 = &v7->i8[v32 + v32];
    v36 = *v35;
    v148 = vrhaddq_u16(v33, *v35);
    v37 = v35[1];
    v149 = vrhaddq_u16(v34, v37);
    v38 = (v35 + v32);
    v39 = *v38;
    v150 = vrhaddq_u16(v36, *v38);
    v40 = v38[1];
    v151 = vrhaddq_u16(v37, v40);
    v41 = (v38 + v32);
    v42 = *v41;
    v152 = vrhaddq_u16(v39, *v41);
    v43 = v41[1];
    v153 = vrhaddq_u16(v40, v43);
    v44 = (v41 + v32);
    v45 = *v44;
    v154 = vrhaddq_u16(v42, *v44);
    v46 = v44[1];
    v155 = vrhaddq_u16(v43, v46);
    v47 = (v44 + v32);
    v48 = *v47;
    v156 = vrhaddq_u16(v45, *v47);
    v49 = v47[1];
    v157 = vrhaddq_u16(v46, v49);
    v50 = (v47 + v32);
    v51 = *v50;
    v158 = vrhaddq_u16(v48, *v50);
    v52 = v50[1];
    v159 = vrhaddq_u16(v49, v52);
    v53 = (v50 + v32);
    v160 = vrhaddq_u16(v51, *v53);
    v19 = vrhaddq_u16(v52, v53[1]);
    goto LABEL_18;
  }

  if (a4)
  {
    v64 = vdupq_n_s16(8 - a4);
    v65 = vdupq_n_s16(a4);
    v66 = 2 * a2;
    v67 = *(v7 + v66);
    v146 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v64), v67, v65), 3uLL);
    v68 = *(v7 + v66 + 16);
    v147 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v64), v68, v65), 3uLL);
    v69 = (v7 + v66 + v66);
    v70 = *v69;
    v148 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v64), *v69, v65), 3uLL);
    v71 = v69[1];
    v149 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68, v64), v71, v65), 3uLL);
    v72 = (v69 + v66);
    v73 = *v72;
    v150 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v70, v64), *v72, v65), 3uLL);
    v74 = v72[1];
    v151 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v64), v74, v65), 3uLL);
    v75 = (v72 + v66);
    v76 = *v75;
    v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v73, v64), *v75, v65), 3uLL);
    v77 = v75[1];
    v153 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v74, v64), v77, v65), 3uLL);
    v78 = (v75 + v66);
    v79 = *v78;
    v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v76, v64), *v78, v65), 3uLL);
    v80 = v78[1];
    v155 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v77, v64), v80, v65), 3uLL);
    v81 = (v78 + v66);
    v82 = *v81;
    v156 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v79, v64), *v81, v65), 3uLL);
    v83 = v81[1];
    v157 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v80, v64), v83, v65), 3uLL);
    v84 = (v81 + v66);
    v85 = *v84;
    v158 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v82, v64), *v84, v65), 3uLL);
    v86 = v84[1];
    v159 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v83, v64), v86, v65), 3uLL);
    v87 = (v84 + v66);
    v160 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v85, v64), *v87, v65), 3uLL);
    v31 = vmlaq_s16(vmulq_s16(v86, v64), v87[1], v65);
    goto LABEL_17;
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return vpx_highbd_10_variance16x8_neon(v8, a2, a5, a6, a7);
}

uint64_t vpx_highbd_10_sub_pixel_variance16x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v352 = *MEMORY[0x277D85DE8];
  v7 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v121 = 0;
      v283 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v318 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v319 = v283;
      v122 = 2 * a2;
      v320 = vrhaddq_u16(*(v7 + v122), *(v7 + v122 + 2));
      v321 = vrhaddq_u16(*(&v7[1] + v122), *(&v7[1] + v122 + 2));
      v123 = &v7->i8[v122 + v122];
      v322 = vrhaddq_u16(*v123, *(v123 + 2));
      v323 = vrhaddq_u16(*(v123 + 1), *(v123 + 18));
      v124 = &v123[v122];
      v324 = vrhaddq_u16(*v124, *(v124 + 2));
      v325 = vrhaddq_u16(*(v124 + 1), *(v124 + 18));
      v125 = &v124[v122];
      v326 = vrhaddq_u16(*v125, *(v125 + 2));
      v327 = vrhaddq_u16(*(v125 + 1), *(v125 + 18));
      v126 = &v125[v122];
      v328 = vrhaddq_u16(*v126, *(v126 + 2));
      v329 = vrhaddq_u16(*(v126 + 1), *(v126 + 18));
      v127 = &v126[v122];
      v330 = vrhaddq_u16(*v127, *(v127 + 2));
      v331 = vrhaddq_u16(*(v127 + 1), *(v127 + 18));
      v128 = &v127[v122];
      v332 = vrhaddq_u16(*v128, *(v128 + 2));
      v333 = vrhaddq_u16(*(v128 + 1), *(v128 + 18));
      v129 = &v128[v122];
      v334 = vrhaddq_u16(*v129, *(v129 + 2));
      v335 = vrhaddq_u16(*(v129 + 1), *(v129 + 18));
      v130 = &v129[v122];
      v336 = vrhaddq_u16(*v130, *(v130 + 2));
      v337 = vrhaddq_u16(*(v130 + 1), *(v130 + 18));
      v131 = &v130[v122];
      v338 = vrhaddq_u16(*v131, *(v131 + 2));
      v339 = vrhaddq_u16(*(v131 + 16), *(v131 + 18));
      v132 = v131 + v122;
      v340 = vrhaddq_u16(*v132, *(v132 + 2));
      v341 = vrhaddq_u16(*(v132 + 16), *(v132 + 18));
      v133 = v132 + v122;
      v342 = vrhaddq_u16(*v133, *(v133 + 2));
      v343 = vrhaddq_u16(*(v133 + 16), *(v133 + 18));
      v134 = v133 + v122;
      v344 = vrhaddq_u16(*v134, *(v134 + 2));
      v345 = vrhaddq_u16(*(v134 + 16), *(v134 + 18));
      v135 = v134 + v122;
      v346 = vrhaddq_u16(*v135, *(v135 + 2));
      v347 = vrhaddq_u16(*(v135 + 16), *(v135 + 18));
      v136 = v135 + v122;
      v348 = vrhaddq_u16(*v136, *(v136 + 2));
      v137 = v136 + v122;
      v349 = vrhaddq_u16(*(v136 + 16), *(v136 + 18));
      v350 = vrhaddq_u16(*v137, *(v137 + 2));
      v138 = vrhaddq_u16(*(v137 + 16), *(v137 + 18));
      v286 = vrhaddq_u16(v318, v320);
      v287 = vrhaddq_u16(v283, v321);
      v288 = vrhaddq_u16(v320, v322);
      v289 = vrhaddq_u16(v321, v323);
      v290 = vrhaddq_u16(v322, v324);
      v291 = vrhaddq_u16(v323, v325);
      v292 = vrhaddq_u16(v324, v326);
      v293 = vrhaddq_u16(v325, v327);
      v294 = vrhaddq_u16(v326, v328);
      v295 = vrhaddq_u16(v327, v329);
      v296 = vrhaddq_u16(v328, v330);
      v297 = vrhaddq_u16(v329, v331);
      v298 = vrhaddq_u16(v330, v332);
      v299 = vrhaddq_u16(v331, v333);
      v300 = vrhaddq_u16(v332, v334);
      v301 = vrhaddq_u16(v333, v335);
      v302 = vrhaddq_u16(v334, v336);
      v303 = vrhaddq_u16(v335, v337);
      v304 = vrhaddq_u16(v336, v338);
      v305 = vrhaddq_u16(v337, v339);
      v306 = vrhaddq_u16(v338, v340);
      v307 = vrhaddq_u16(v339, v341);
      v308 = vrhaddq_u16(v340, v342);
      v309 = vrhaddq_u16(v341, v343);
      v310 = vrhaddq_u16(v342, v344);
      v311 = vrhaddq_u16(v343, v345);
      v312 = vrhaddq_u16(v344, v346);
      v313 = vrhaddq_u16(v345, v347);
      v314 = vrhaddq_u16(v346, v348);
      v315 = vrhaddq_u16(v347, v349);
      v351 = v138;
      v316 = vrhaddq_u16(v348, v350);
      v317 = vrhaddq_u16(v349, v138);
      v139 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v140 = vsubq_s16(*(&v286 + v121), v139[-1]);
        v141 = vpadalq_s16(v13, v140);
        v142 = vmlal_s16(v10, *v140.i8, *v140.i8);
        v143 = vmlal_high_s16(v12, v140, v140);
        v144 = vsubq_s16(*(&v286 + v121 + 16), *v139);
        v13 = vpadalq_s16(v141, v144);
        v10 = vmlal_s16(v142, *v144.i8, *v144.i8);
        v12 = vmlal_high_s16(v143, v144, v144);
        v121 += 32;
        v139 = (v139 + 2 * a6);
      }

      while (v121 != 512);
    }

    else
    {
      v20 = 0;
      if (a4)
      {
        v284 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
        v318 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
        v319 = v284;
        v201 = 2 * a2;
        v320 = vrhaddq_u16(*(v7 + v201), *(v7 + v201 + 2));
        v321 = vrhaddq_u16(*(&v7[1] + v201), *(&v7[1] + v201 + 2));
        v202 = &v7->i8[v201 + v201];
        v322 = vrhaddq_u16(*v202, *(v202 + 2));
        v323 = vrhaddq_u16(*(v202 + 1), *(v202 + 18));
        v203 = &v202[v201];
        v324 = vrhaddq_u16(*v203, *(v203 + 2));
        v325 = vrhaddq_u16(*(v203 + 1), *(v203 + 18));
        v204 = &v203[v201];
        v326 = vrhaddq_u16(*v204, *(v204 + 2));
        v327 = vrhaddq_u16(*(v204 + 1), *(v204 + 18));
        v205 = &v204[v201];
        v328 = vrhaddq_u16(*v205, *(v205 + 2));
        v329 = vrhaddq_u16(*(v205 + 1), *(v205 + 18));
        v206 = &v205[v201];
        v330 = vrhaddq_u16(*v206, *(v206 + 2));
        v331 = vrhaddq_u16(*(v206 + 1), *(v206 + 18));
        v207 = &v206[v201];
        v332 = vrhaddq_u16(*v207, *(v207 + 2));
        v333 = vrhaddq_u16(*(v207 + 1), *(v207 + 18));
        v208 = &v207[v201];
        v334 = vrhaddq_u16(*v208, *(v208 + 2));
        v335 = vrhaddq_u16(*(v208 + 1), *(v208 + 18));
        v209 = &v208[v201];
        v336 = vrhaddq_u16(*v209, *(v209 + 2));
        v337 = vrhaddq_u16(*(v209 + 1), *(v209 + 18));
        v210 = &v209[v201];
        v338 = vrhaddq_u16(*v210, *(v210 + 2));
        v339 = vrhaddq_u16(*(v210 + 16), *(v210 + 18));
        v211 = v210 + v201;
        v340 = vrhaddq_u16(*v211, *(v211 + 2));
        v341 = vrhaddq_u16(*(v211 + 16), *(v211 + 18));
        v212 = v211 + v201;
        v342 = vrhaddq_u16(*v212, *(v212 + 2));
        v343 = vrhaddq_u16(*(v212 + 16), *(v212 + 18));
        v213 = v212 + v201;
        v344 = vrhaddq_u16(*v213, *(v213 + 2));
        v345 = vrhaddq_u16(*(v213 + 16), *(v213 + 18));
        v214 = v213 + v201;
        v346 = vrhaddq_u16(*v214, *(v214 + 2));
        v347 = vrhaddq_u16(*(v214 + 16), *(v214 + 18));
        v215 = v214 + v201;
        v348 = vrhaddq_u16(*v215, *(v215 + 2));
        v216 = v215 + v201;
        v349 = vrhaddq_u16(*(v215 + 16), *(v215 + 18));
        v350 = vrhaddq_u16(*v216, *(v216 + 2));
        v217 = vdupq_n_s16(8 - a4);
        v218 = vdupq_n_s16(a4);
        v351 = vrhaddq_u16(*(v216 + 16), *(v216 + 18));
        v286 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v318, v217), v320, v218), 3uLL);
        v287 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v284, v217), v321, v218), 3uLL);
        v288 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v320, v217), v322, v218), 3uLL);
        v289 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v321, v217), v323, v218), 3uLL);
        v290 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v322, v217), v324, v218), 3uLL);
        v291 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v323, v217), v325, v218), 3uLL);
        v292 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v324, v217), v326, v218), 3uLL);
        v293 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v325, v217), v327, v218), 3uLL);
        v294 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v326, v217), v328, v218), 3uLL);
        v295 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v327, v217), v329, v218), 3uLL);
        v296 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v328, v217), v330, v218), 3uLL);
        v297 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v329, v217), v331, v218), 3uLL);
        v298 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v330, v217), v332, v218), 3uLL);
        v299 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v331, v217), v333, v218), 3uLL);
        v300 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v332, v217), v334, v218), 3uLL);
        v301 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v333, v217), v335, v218), 3uLL);
        v302 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v334, v217), v336, v218), 3uLL);
        v303 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v335, v217), v337, v218), 3uLL);
        v304 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v336, v217), v338, v218), 3uLL);
        v305 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v337, v217), v339, v218), 3uLL);
        v306 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v338, v217), v340, v218), 3uLL);
        v307 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v339, v217), v341, v218), 3uLL);
        v308 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v340, v217), v342, v218), 3uLL);
        v309 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v341, v217), v343, v218), 3uLL);
        v310 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v342, v217), v344, v218), 3uLL);
        v311 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v343, v217), v345, v218), 3uLL);
        v312 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v344, v217), v346, v218), 3uLL);
        v313 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v345, v217), v347, v218), 3uLL);
        v314 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v346, v217), v348, v218), 3uLL);
        v315 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v347, v217), v349, v218), 3uLL);
        v316 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v348, v217), v350, v218), 3uLL);
        v317 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v349, v217), v351, v218), 3uLL);
        v219 = (2 * a5 + 16);
        v10 = 0uLL;
        v12 = 0uLL;
        v13 = 0uLL;
        do
        {
          v220 = vsubq_s16(*(&v286 + v20), v219[-1]);
          v221 = vpadalq_s16(v13, v220);
          v222 = vmlal_s16(v10, *v220.i8, *v220.i8);
          v223 = vmlal_high_s16(v12, v220, v220);
          v224 = vsubq_s16(*(&v286 + v20 + 16), *v219);
          v13 = vpadalq_s16(v221, v224);
          v10 = vmlal_s16(v222, *v224.i8, *v224.i8);
          v12 = vmlal_high_s16(v223, v224, v224);
          v20 += 32;
          v219 = (v219 + 2 * a6);
        }

        while (v20 != 512);
      }

      else
      {
        v21 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
        v318 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
        v319 = v21;
        v22 = 2 * a2;
        v320 = vrhaddq_u16(*(v7 + v22), *(v7 + v22 + 2));
        v321 = vrhaddq_u16(*(&v7[1] + v22), *(&v7[1] + v22 + 2));
        v23 = &v7->i8[v22 + v22];
        v322 = vrhaddq_u16(*v23, *(v23 + 2));
        v323 = vrhaddq_u16(*(v23 + 1), *(v23 + 18));
        v24 = &v23[v22];
        v324 = vrhaddq_u16(*v24, *(v24 + 2));
        v325 = vrhaddq_u16(*(v24 + 1), *(v24 + 18));
        v25 = &v24[v22];
        v326 = vrhaddq_u16(*v25, *(v25 + 2));
        v327 = vrhaddq_u16(*(v25 + 1), *(v25 + 18));
        v26 = &v25[v22];
        v328 = vrhaddq_u16(*v26, *(v26 + 2));
        v329 = vrhaddq_u16(*(v26 + 1), *(v26 + 18));
        v27 = &v26[v22];
        v330 = vrhaddq_u16(*v27, *(v27 + 2));
        v331 = vrhaddq_u16(*(v27 + 1), *(v27 + 18));
        v28 = &v27[v22];
        v332 = vrhaddq_u16(*v28, *(v28 + 2));
        v333 = vrhaddq_u16(*(v28 + 1), *(v28 + 18));
        v29 = &v28[v22];
        v334 = vrhaddq_u16(*v29, *(v29 + 2));
        v335 = vrhaddq_u16(*(v29 + 1), *(v29 + 18));
        v30 = &v29[v22];
        v336 = vrhaddq_u16(*v30, *(v30 + 2));
        v337 = vrhaddq_u16(*(v30 + 1), *(v30 + 18));
        v31 = &v30[v22];
        v338 = vrhaddq_u16(*v31, *(v31 + 2));
        v339 = vrhaddq_u16(*(v31 + 16), *(v31 + 18));
        v32 = v31 + v22;
        v340 = vrhaddq_u16(*v32, *(v32 + 2));
        v341 = vrhaddq_u16(*(v32 + 16), *(v32 + 18));
        v33 = v32 + v22;
        v342 = vrhaddq_u16(*v33, *(v33 + 2));
        v343 = vrhaddq_u16(*(v33 + 16), *(v33 + 18));
        v34 = v33 + v22;
        v344 = vrhaddq_u16(*v34, *(v34 + 2));
        v345 = vrhaddq_u16(*(v34 + 16), *(v34 + 18));
        v35 = v34 + v22;
        v346 = vrhaddq_u16(*v35, *(v35 + 2));
        v36 = v35 + v22;
        v347 = vrhaddq_u16(*(v35 + 16), *(v35 + 18));
        v348 = vrhaddq_u16(*v36, *(v36 + 2));
        v349 = vrhaddq_u16(*(v36 + 16), *(v36 + 18));
        v37 = (2 * a5 + 16);
        v10 = 0uLL;
        v12 = 0uLL;
        v13 = 0uLL;
        do
        {
          v38 = vsubq_s16(*(&v318 + v20), v37[-1]);
          v39 = vpadalq_s16(v13, v38);
          v40 = vmlal_s16(v10, *v38.i8, *v38.i8);
          v41 = vmlal_high_s16(v12, v38, v38);
          v42 = vsubq_s16(*(&v318 + v20 + 16), *v37);
          v13 = vpadalq_s16(v39, v42);
          v10 = vmlal_s16(v40, *v42.i8, *v42.i8);
          v12 = vmlal_high_s16(v41, v42, v42);
          v20 += 32;
          v37 = (v37 + 2 * a6);
        }

        while (v20 != 512);
      }
    }
  }

  else if (a3)
  {
    v43 = 0;
    if (a4 == 4)
    {
      v225 = vdupq_n_s16(8 - a3);
      v226 = vdupq_n_s16(a3);
      v285 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v225), *(2 * a1 + 0x12), v226), 3uLL);
      v318 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v225), *(2 * a1 + 2), v226), 3uLL);
      v319 = v285;
      v227 = 2 * a2;
      v320 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v227), v225), *(v7 + v227 + 2), v226), 3uLL);
      v321 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v7[1] + v227), v225), *(&v7[1] + v227 + 2), v226), 3uLL);
      v228 = &v7->i8[v227 + v227];
      v322 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v228, v225), *(v228 + 2), v226), 3uLL);
      v323 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v228 + 1), v225), *(v228 + 18), v226), 3uLL);
      v229 = &v228[v227];
      v324 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v229, v225), *(v229 + 2), v226), 3uLL);
      v325 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v229 + 1), v225), *(v229 + 18), v226), 3uLL);
      v230 = &v229[v227];
      v326 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v230, v225), *(v230 + 2), v226), 3uLL);
      v327 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v230 + 1), v225), *(v230 + 18), v226), 3uLL);
      v231 = &v230[v227];
      v328 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v231, v225), *(v231 + 2), v226), 3uLL);
      v329 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v231 + 1), v225), *(v231 + 18), v226), 3uLL);
      v232 = &v231[v227];
      v330 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v232, v225), *(v232 + 2), v226), 3uLL);
      v331 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v232 + 1), v225), *(v232 + 18), v226), 3uLL);
      v233 = &v232[v227];
      v332 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v233, v225), *(v233 + 2), v226), 3uLL);
      v333 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v233 + 1), v225), *(v233 + 18), v226), 3uLL);
      v234 = &v233[v227];
      v334 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v234, v225), *(v234 + 2), v226), 3uLL);
      v335 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v234 + 1), v225), *(v234 + 18), v226), 3uLL);
      v235 = &v234[v227];
      v336 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v235, v225), *(v235 + 2), v226), 3uLL);
      v337 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 + 1), v225), *(v235 + 18), v226), 3uLL);
      v236 = &v235[v227];
      v338 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v236, v225), *(v236 + 2), v226), 3uLL);
      v339 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v236 + 16), v225), *(v236 + 18), v226), 3uLL);
      v237 = v236 + v227;
      v340 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v237, v225), *(v237 + 2), v226), 3uLL);
      v341 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v237 + 16), v225), *(v237 + 18), v226), 3uLL);
      v238 = v237 + v227;
      v342 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v238, v225), *(v238 + 2), v226), 3uLL);
      v343 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v238 + 16), v225), *(v238 + 18), v226), 3uLL);
      v239 = v238 + v227;
      v344 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v239, v225), *(v239 + 2), v226), 3uLL);
      v345 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v239 + 16), v225), *(v239 + 18), v226), 3uLL);
      v240 = v239 + v227;
      v346 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v240, v225), *(v240 + 2), v226), 3uLL);
      v347 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v240 + 16), v225), *(v240 + 18), v226), 3uLL);
      v241 = v240 + v227;
      v348 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v241, v225), *(v241 + 2), v226), 3uLL);
      v349 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v241 + 16), v225), *(v241 + 18), v226), 3uLL);
      v242 = v241 + v227;
      v350 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v242, v225), *(v242 + 2), v226), 3uLL);
      v243 = vmlaq_s16(vmulq_s16(*(v242 + 16), v225), *(v242 + 18), v226);
      v286 = vrhaddq_u16(v318, v320);
      v287 = vrhaddq_u16(v285, v321);
      v288 = vrhaddq_u16(v320, v322);
      v289 = vrhaddq_u16(v321, v323);
      v290 = vrhaddq_u16(v322, v324);
      v291 = vrhaddq_u16(v323, v325);
      v292 = vrhaddq_u16(v324, v326);
      v293 = vrhaddq_u16(v325, v327);
      v294 = vrhaddq_u16(v326, v328);
      v295 = vrhaddq_u16(v327, v329);
      v296 = vrhaddq_u16(v328, v330);
      v297 = vrhaddq_u16(v329, v331);
      v298 = vrhaddq_u16(v330, v332);
      v299 = vrhaddq_u16(v331, v333);
      v300 = vrhaddq_u16(v332, v334);
      v301 = vrhaddq_u16(v333, v335);
      v302 = vrhaddq_u16(v334, v336);
      v303 = vrhaddq_u16(v335, v337);
      v304 = vrhaddq_u16(v336, v338);
      v305 = vrhaddq_u16(v337, v339);
      v306 = vrhaddq_u16(v338, v340);
      v307 = vrhaddq_u16(v339, v341);
      v308 = vrhaddq_u16(v340, v342);
      v309 = vrhaddq_u16(v341, v343);
      v310 = vrhaddq_u16(v342, v344);
      v311 = vrhaddq_u16(v343, v345);
      v312 = vrhaddq_u16(v344, v346);
      v313 = vrhaddq_u16(v345, v347);
      v314 = vrhaddq_u16(v346, v348);
      v315 = vrhaddq_u16(v347, v349);
      v351 = vrshrq_n_u16(v243, 3uLL);
      v316 = vrhaddq_u16(v348, v350);
      v317 = vrhaddq_u16(v349, v351);
      v244 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v245 = vsubq_s16(*(&v286 + v43), v244[-1]);
        v246 = vpadalq_s16(v13, v245);
        v247 = vmlal_s16(v10, *v245.i8, *v245.i8);
        v248 = vmlal_high_s16(v12, v245, v245);
        v249 = vsubq_s16(*(&v286 + v43 + 16), *v244);
        v13 = vpadalq_s16(v246, v249);
        v10 = vmlal_s16(v247, *v249.i8, *v249.i8);
        v12 = vmlal_high_s16(v248, v249, v249);
        v43 += 32;
        v244 = (v244 + 2 * a6);
      }

      while (v43 != 512);
    }

    else if (a4)
    {
      v250 = vdupq_n_s16(8 - a3);
      v251 = vdupq_n_s16(a3);
      v252 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v250), *(2 * a1 + 0x12), v251), 3uLL);
      v318 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v250), *(2 * a1 + 2), v251), 3uLL);
      v319 = v252;
      v253 = 2 * a2;
      v254 = &v7->i8[v253];
      v320 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v254, v250), *(v254 + 2), v251), 3uLL);
      v321 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v254 + 1), v250), *(v254 + 18), v251), 3uLL);
      v255 = &v254[v253];
      v322 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v255, v250), *(v255 + 2), v251), 3uLL);
      v323 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v255 + 1), v250), *(v255 + 18), v251), 3uLL);
      v256 = &v255[v253];
      v324 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v256, v250), *(v256 + 2), v251), 3uLL);
      v325 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v256 + 1), v250), *(v256 + 18), v251), 3uLL);
      v257 = &v256[v253];
      v326 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v257, v250), *(v257 + 2), v251), 3uLL);
      v327 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v257 + 1), v250), *(v257 + 18), v251), 3uLL);
      v258 = &v257[v253];
      v328 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v258, v250), *(v258 + 2), v251), 3uLL);
      v329 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v258 + 1), v250), *(v258 + 18), v251), 3uLL);
      v259 = &v258[v253];
      v330 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v259, v250), *(v259 + 2), v251), 3uLL);
      v331 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v259 + 1), v250), *(v259 + 18), v251), 3uLL);
      v260 = &v259[v253];
      v332 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v260, v250), *(v260 + 2), v251), 3uLL);
      v333 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v260 + 1), v250), *(v260 + 18), v251), 3uLL);
      v261 = &v260[v253];
      v334 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v261, v250), *(v261 + 2), v251), 3uLL);
      v335 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v261 + 1), v250), *(v261 + 18), v251), 3uLL);
      v262 = &v261[v253];
      v336 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v262, v250), *(v262 + 2), v251), 3uLL);
      v337 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v262 + 16), v250), *(v262 + 18), v251), 3uLL);
      v263 = v262 + v253;
      v338 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v263, v250), *(v263 + 2), v251), 3uLL);
      v339 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v263 + 16), v250), *(v263 + 18), v251), 3uLL);
      v264 = v263 + v253;
      v340 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v264, v250), *(v264 + 2), v251), 3uLL);
      v341 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v264 + 16), v250), *(v264 + 18), v251), 3uLL);
      v265 = v264 + v253;
      v342 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v265, v250), *(v265 + 2), v251), 3uLL);
      v343 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v265 + 16), v250), *(v265 + 18), v251), 3uLL);
      v266 = v265 + v253;
      v344 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v266, v250), *(v266 + 2), v251), 3uLL);
      v345 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v266 + 16), v250), *(v266 + 18), v251), 3uLL);
      v267 = v266 + v253;
      v346 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v267, v250), *(v267 + 2), v251), 3uLL);
      v347 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v267 + 16), v250), *(v267 + 18), v251), 3uLL);
      v268 = v267 + v253;
      v348 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v268, v250), *(v268 + 2), v251), 3uLL);
      v349 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v268 + 16), v250), *(v268 + 18), v251), 3uLL);
      v269 = v268 + v253;
      v350 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v269, v250), *(v269 + 2), v251), 3uLL);
      v270 = vmlaq_s16(vmulq_s16(*(v269 + 16), v250), *(v269 + 18), v251);
      v271 = vdupq_n_s16(8 - a4);
      v272 = vdupq_n_s16(a4);
      v351 = vrshrq_n_u16(v270, 3uLL);
      v286 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v318, v271), v320, v272), 3uLL);
      v287 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v252, v271), v321, v272), 3uLL);
      v288 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v320, v271), v322, v272), 3uLL);
      v289 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v321, v271), v323, v272), 3uLL);
      v290 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v322, v271), v324, v272), 3uLL);
      v291 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v323, v271), v325, v272), 3uLL);
      v292 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v324, v271), v326, v272), 3uLL);
      v293 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v325, v271), v327, v272), 3uLL);
      v294 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v326, v271), v328, v272), 3uLL);
      v295 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v327, v271), v329, v272), 3uLL);
      v296 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v328, v271), v330, v272), 3uLL);
      v297 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v329, v271), v331, v272), 3uLL);
      v298 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v330, v271), v332, v272), 3uLL);
      v299 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v331, v271), v333, v272), 3uLL);
      v300 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v332, v271), v334, v272), 3uLL);
      v301 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v333, v271), v335, v272), 3uLL);
      v302 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v334, v271), v336, v272), 3uLL);
      v303 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v335, v271), v337, v272), 3uLL);
      v304 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v336, v271), v338, v272), 3uLL);
      v305 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v337, v271), v339, v272), 3uLL);
      v306 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v338, v271), v340, v272), 3uLL);
      v307 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v339, v271), v341, v272), 3uLL);
      v308 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v340, v271), v342, v272), 3uLL);
      v309 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v341, v271), v343, v272), 3uLL);
      v310 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v342, v271), v344, v272), 3uLL);
      v311 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v343, v271), v345, v272), 3uLL);
      v312 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v344, v271), v346, v272), 3uLL);
      v313 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v345, v271), v347, v272), 3uLL);
      v314 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v346, v271), v348, v272), 3uLL);
      v315 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v347, v271), v349, v272), 3uLL);
      v316 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v348, v271), v350, v272), 3uLL);
      v317 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v349, v271), v351, v272), 3uLL);
      v273 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v274 = vsubq_s16(*(&v286 + v43), v273[-1]);
        v275 = vpadalq_s16(v13, v274);
        v276 = vmlal_s16(v10, *v274.i8, *v274.i8);
        v277 = vmlal_high_s16(v12, v274, v274);
        v278 = vsubq_s16(*(&v286 + v43 + 16), *v273);
        v13 = vpadalq_s16(v275, v278);
        v10 = vmlal_s16(v276, *v278.i8, *v278.i8);
        v12 = vmlal_high_s16(v277, v278, v278);
        v43 += 32;
        v273 = (v273 + 2 * a6);
      }

      while (v43 != 512);
    }

    else
    {
      v44 = vdupq_n_s16(8 - a3);
      v45 = vdupq_n_s16(a3);
      v46 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v44), *(2 * a1 + 0x12), v45), 3uLL);
      v318 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v44), *(2 * a1 + 2), v45), 3uLL);
      v319 = v46;
      v47 = 2 * a2;
      v320 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v47), v44), *(v7 + v47 + 2), v45), 3uLL);
      v321 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v7[1] + v47), v44), *(&v7[1] + v47 + 2), v45), 3uLL);
      v48 = &v7->i8[v47 + v47];
      v322 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v48, v44), *(v48 + 2), v45), 3uLL);
      v323 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 + 1), v44), *(v48 + 18), v45), 3uLL);
      v49 = &v48[v47];
      v324 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v49, v44), *(v49 + 2), v45), 3uLL);
      v325 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v49 + 1), v44), *(v49 + 18), v45), 3uLL);
      v50 = &v49[v47];
      v326 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v50, v44), *(v50 + 2), v45), 3uLL);
      v327 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v50 + 1), v44), *(v50 + 18), v45), 3uLL);
      v51 = &v50[v47];
      v328 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v51, v44), *(v51 + 2), v45), 3uLL);
      v329 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v51 + 1), v44), *(v51 + 18), v45), 3uLL);
      v52 = &v51[v47];
      v330 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v52, v44), *(v52 + 2), v45), 3uLL);
      v331 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 + 1), v44), *(v52 + 18), v45), 3uLL);
      v53 = &v52[v47];
      v332 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v44), *(v53 + 2), v45), 3uLL);
      v333 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v53 + 1), v44), *(v53 + 18), v45), 3uLL);
      v54 = &v53[v47];
      v334 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v54, v44), *(v54 + 2), v45), 3uLL);
      v335 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v54 + 1), v44), *(v54 + 18), v45), 3uLL);
      v55 = &v54[v47];
      v336 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v55, v44), *(v55 + 2), v45), 3uLL);
      v337 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v55 + 1), v44), *(v55 + 18), v45), 3uLL);
      v56 = &v55[v47];
      v338 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v56, v44), *(v56 + 2), v45), 3uLL);
      v339 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v56 + 16), v44), *(v56 + 18), v45), 3uLL);
      v57 = v56 + v47;
      v340 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v57, v44), *(v57 + 2), v45), 3uLL);
      v341 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v57 + 16), v44), *(v57 + 18), v45), 3uLL);
      v58 = v57 + v47;
      v342 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v58, v44), *(v58 + 2), v45), 3uLL);
      v343 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v58 + 16), v44), *(v58 + 18), v45), 3uLL);
      v59 = v58 + v47;
      v344 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v59, v44), *(v59 + 2), v45), 3uLL);
      v345 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 + 16), v44), *(v59 + 18), v45), 3uLL);
      v60 = v59 + v47;
      v346 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v60, v44), *(v60 + 2), v45), 3uLL);
      v347 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v60 + 16), v44), *(v60 + 18), v45), 3uLL);
      v61 = v60 + v47;
      v348 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v61, v44), *(v61 + 2), v45), 3uLL);
      v349 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 + 16), v44), *(v61 + 18), v45), 3uLL);
      v62 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v63 = vsubq_s16(*(&v318 + v43), v62[-1]);
        v64 = vpadalq_s16(v13, v63);
        v65 = vmlal_s16(v10, *v63.i8, *v63.i8);
        v66 = vmlal_high_s16(v12, v63, v63);
        v67 = vsubq_s16(*(&v318 + v43 + 16), *v62);
        v13 = vpadalq_s16(v64, v67);
        v10 = vmlal_s16(v65, *v67.i8, *v67.i8);
        v12 = vmlal_high_s16(v66, v67, v67);
        v43 += 32;
        v62 = (v62 + 2 * a6);
      }

      while (v43 != 512);
    }
  }

  else if (a4 == 4)
  {
    v68 = 0;
    v69 = 2 * a2;
    v70 = *(v7 + v69);
    v318 = vrhaddq_u16(*v7, v70);
    v71 = *(&v7[1] + v69);
    v319 = vrhaddq_u16(*(2 * a1 + 0x10), v71);
    v72 = &v7->i8[v69 + v69];
    v73 = *v72;
    v320 = vrhaddq_u16(v70, *v72);
    v74 = v72[1];
    v321 = vrhaddq_u16(v71, v74);
    v75 = (v72 + v69);
    v76 = *v75;
    v322 = vrhaddq_u16(v73, *v75);
    v77 = v75[1];
    v323 = vrhaddq_u16(v74, v77);
    v78 = (v75 + v69);
    v79 = *v78;
    v324 = vrhaddq_u16(v76, *v78);
    v80 = v78[1];
    v325 = vrhaddq_u16(v77, v80);
    v81 = (v78 + v69);
    v82 = *v81;
    v326 = vrhaddq_u16(v79, *v81);
    v83 = v81[1];
    v327 = vrhaddq_u16(v80, v83);
    v84 = (v81 + v69);
    v85 = *v84;
    v328 = vrhaddq_u16(v82, *v84);
    v86 = v84[1];
    v329 = vrhaddq_u16(v83, v86);
    v87 = (v84 + v69);
    v88 = *v87;
    v330 = vrhaddq_u16(v85, *v87);
    v89 = v87[1];
    v331 = vrhaddq_u16(v86, v89);
    v90 = (v87 + v69);
    v91 = *v90;
    v332 = vrhaddq_u16(v88, *v90);
    v92 = v90[1];
    v333 = vrhaddq_u16(v89, v92);
    v93 = (v90 + v69);
    v94 = *v93;
    v334 = vrhaddq_u16(v91, *v93);
    v95 = v93[1];
    v335 = vrhaddq_u16(v92, v95);
    v96 = (v93 + v69);
    v97 = *v96;
    v336 = vrhaddq_u16(v94, *v96);
    v98 = v96[1];
    v337 = vrhaddq_u16(v95, v98);
    v99 = (v96 + v69);
    v100 = *v99;
    v338 = vrhaddq_u16(v97, *v99);
    v101 = v99[1];
    v339 = vrhaddq_u16(v98, v101);
    v102 = (v99 + v69);
    v103 = *v102;
    v340 = vrhaddq_u16(v100, *v102);
    v104 = v102[1];
    v341 = vrhaddq_u16(v101, v104);
    v105 = (v102 + v69);
    v106 = *v105;
    v342 = vrhaddq_u16(v103, *v105);
    v107 = v105[1];
    v343 = vrhaddq_u16(v104, v107);
    v108 = (v105 + v69);
    v109 = *v108;
    v344 = vrhaddq_u16(v106, *v108);
    v110 = v108[1];
    v345 = vrhaddq_u16(v107, v110);
    v111 = (v108 + v69);
    v112 = *v111;
    v346 = vrhaddq_u16(v109, *v111);
    v113 = v111[1];
    v347 = vrhaddq_u16(v110, v113);
    v114 = (v111 + v69);
    v348 = vrhaddq_u16(v112, *v114);
    v349 = vrhaddq_u16(v113, v114[1]);
    v115 = (2 * a5 + 16);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v116 = vsubq_s16(*(&v318 + v68), v115[-1]);
      v117 = vpadalq_s16(v13, v116);
      v118 = vmlal_s16(v10, *v116.i8, *v116.i8);
      v119 = vmlal_high_s16(v12, v116, v116);
      v120 = vsubq_s16(*(&v318 + v68 + 16), *v115);
      v13 = vpadalq_s16(v117, v120);
      v10 = vmlal_s16(v118, *v120.i8, *v120.i8);
      v12 = vmlal_high_s16(v119, v120, v120);
      v68 += 32;
      v115 = (v115 + 2 * a6);
    }

    while (v68 != 512);
  }

  else if (a4)
  {
    v145 = 0;
    v146 = vdupq_n_s16(8 - a4);
    v147 = vdupq_n_s16(a4);
    v148 = 2 * a2;
    v149 = *(v7 + v148);
    v150 = *(2 * a1 + 0x10);
    v318 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v146), v149, v147), 3uLL);
    v151 = *(v7 + v148 + 16);
    v319 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v150, v146), v151, v147), 3uLL);
    v152 = (v7 + v148 + v148);
    v153 = *v152;
    v320 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v149, v146), *v152, v147), 3uLL);
    v154 = v152[1];
    v321 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v151, v146), v154, v147), 3uLL);
    v155 = (v152 + v148);
    v156 = *v155;
    v322 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v153, v146), *v155, v147), 3uLL);
    v157 = v155[1];
    v323 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154, v146), v157, v147), 3uLL);
    v158 = (v155 + v148);
    v159 = *v158;
    v324 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v156, v146), *v158, v147), 3uLL);
    v160 = v158[1];
    v325 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v157, v146), v160, v147), 3uLL);
    v161 = (v158 + v148);
    v162 = *v161;
    v326 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v159, v146), *v161, v147), 3uLL);
    v163 = v161[1];
    v327 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v160, v146), v163, v147), 3uLL);
    v164 = (v161 + v148);
    v165 = *v164;
    v328 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v162, v146), *v164, v147), 3uLL);
    v166 = v164[1];
    v329 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v163, v146), v166, v147), 3uLL);
    v167 = (v164 + v148);
    v168 = *v167;
    v330 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v165, v146), *v167, v147), 3uLL);
    v169 = v167[1];
    v331 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v166, v146), v169, v147), 3uLL);
    v170 = (v167 + v148);
    v171 = *v170;
    v332 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v168, v146), *v170, v147), 3uLL);
    v172 = v170[1];
    v333 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v169, v146), v172, v147), 3uLL);
    v173 = (v170 + v148);
    v174 = *v173;
    v334 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v171, v146), *v173, v147), 3uLL);
    v175 = v173[1];
    v335 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v172, v146), v175, v147), 3uLL);
    v176 = (v173 + v148);
    v177 = *v176;
    v336 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v174, v146), *v176, v147), 3uLL);
    v178 = v176[1];
    v337 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v175, v146), v178, v147), 3uLL);
    v179 = (v176 + v148);
    v180 = *v179;
    v338 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v177, v146), *v179, v147), 3uLL);
    v181 = v179[1];
    v339 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v178, v146), v181, v147), 3uLL);
    v182 = (v179 + v148);
    v183 = *v182;
    v340 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v180, v146), *v182, v147), 3uLL);
    v184 = v182[1];
    v341 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v181, v146), v184, v147), 3uLL);
    v185 = (v182 + v148);
    v186 = *v185;
    v342 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v183, v146), *v185, v147), 3uLL);
    v187 = v185[1];
    v343 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v184, v146), v187, v147), 3uLL);
    v188 = (v185 + v148);
    v189 = *v188;
    v344 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v186, v146), *v188, v147), 3uLL);
    v190 = v188[1];
    v345 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v187, v146), v190, v147), 3uLL);
    v191 = (v188 + v148);
    v192 = *v191;
    v346 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v189, v146), *v191, v147), 3uLL);
    v193 = v191[1];
    v347 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v190, v146), v193, v147), 3uLL);
    v194 = (v191 + v148);
    v348 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v192, v146), *v194, v147), 3uLL);
    v349 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v193, v146), v194[1], v147), 3uLL);
    v195 = (2 * a5 + 16);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v196 = vsubq_s16(*(&v318 + v145), v195[-1]);
      v197 = vpadalq_s16(v13, v196);
      v198 = vmlal_s16(v10, *v196.i8, *v196.i8);
      v199 = vmlal_high_s16(v12, v196, v196);
      v200 = vsubq_s16(*(&v318 + v145 + 16), *v195);
      v13 = vpadalq_s16(v197, v200);
      v10 = vmlal_s16(v198, *v200.i8, *v200.i8);
      v12 = vmlal_high_s16(v199, v200, v200);
      v145 += 32;
      v195 = (v195 + 2 * a6);
    }

    while (v145 != 512);
  }

  else
  {
    v8 = (2 * a5 + 16);
    v9 = v7 + 1;
    v10 = 0uLL;
    v11 = -16;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = vsubq_s16(v9[-1], v8[-1]);
      v15 = vpadalq_s16(v13, v14);
      v16 = vmlal_s16(v10, *v14.i8, *v14.i8);
      v17 = vmlal_high_s16(v12, v14, v14);
      v18 = vsubq_s16(*v9, *v8);
      v13 = vpadalq_s16(v15, v18);
      v10 = vmlal_s16(v16, *v18.i8, *v18.i8);
      v12 = vmlal_high_s16(v17, v18, v18);
      v8 = (v8 + 2 * a6);
      v9 = (v9 + 2 * a2);
    }

    while (!__CFADD__(v11++, 1));
  }

  v279 = vaddvq_s32(v13);
  v280 = vaddlvq_u32(vaddq_s32(v12, v10));
  *a7 = (v280 + 8) >> 4;
  v281 = ((v280 + 8) >> 4) - (((((v279 << 30) + 0x80000000) >> 32) * (((v279 << 30) + 0x80000000) >> 32)) >> 8);
  return v281 & ~(v281 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_variance16x32_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v406 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v167 = 0;
      v168 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v340 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v341 = v168;
      v169 = 2 * a2;
      v170 = v7 + v169;
      v342 = vrhaddq_u16(*v170, *(v170 + 2));
      v343 = vrhaddq_u16(*(v170 + 16), *(v170 + 18));
      v171 = v170 + v169;
      v344 = vrhaddq_u16(*v171, *(v171 + 2));
      v345 = vrhaddq_u16(*(v171 + 16), *(v171 + 18));
      v172 = v171 + v169;
      v346 = vrhaddq_u16(*v172, *(v172 + 2));
      v347 = vrhaddq_u16(*(v172 + 16), *(v172 + 18));
      v173 = v172 + v169;
      v348 = vrhaddq_u16(*v173, *(v173 + 2));
      v349 = vrhaddq_u16(*(v173 + 16), *(v173 + 18));
      v174 = v173 + v169;
      v350 = vrhaddq_u16(*v174, *(v174 + 2));
      v351 = vrhaddq_u16(*(v174 + 16), *(v174 + 18));
      v175 = v174 + v169;
      v352 = vrhaddq_u16(*v175, *(v175 + 2));
      v353 = vrhaddq_u16(*(v175 + 16), *(v175 + 18));
      v176 = v175 + v169;
      v354 = vrhaddq_u16(*v176, *(v176 + 2));
      v355 = vrhaddq_u16(*(v176 + 16), *(v176 + 18));
      v177 = v176 + v169;
      v356 = vrhaddq_u16(*v177, *(v177 + 2));
      v357 = vrhaddq_u16(*(v177 + 16), *(v177 + 18));
      v178 = v177 + v169;
      v358 = vrhaddq_u16(*v178, *(v178 + 2));
      v359 = vrhaddq_u16(*(v178 + 16), *(v178 + 18));
      v179 = v178 + v169;
      v360 = vrhaddq_u16(*v179, *(v179 + 2));
      v361 = vrhaddq_u16(*(v179 + 16), *(v179 + 18));
      v180 = v179 + v169;
      v362 = vrhaddq_u16(*v180, *(v180 + 2));
      v363 = vrhaddq_u16(*(v180 + 16), *(v180 + 18));
      v181 = v180 + v169;
      v364 = vrhaddq_u16(*v181, *(v181 + 2));
      v365 = vrhaddq_u16(*(v181 + 16), *(v181 + 18));
      v182 = v181 + v169;
      v366 = vrhaddq_u16(*v182, *(v182 + 2));
      v367 = vrhaddq_u16(*(v182 + 16), *(v182 + 18));
      v183 = v182 + v169;
      v368 = vrhaddq_u16(*v183, *(v183 + 2));
      v369 = vrhaddq_u16(*(v183 + 16), *(v183 + 18));
      v184 = v183 + v169;
      v370 = vrhaddq_u16(*v184, *(v184 + 2));
      v371 = vrhaddq_u16(*(v184 + 16), *(v184 + 18));
      v185 = v184 + v169;
      v372 = vrhaddq_u16(*v185, *(v185 + 2));
      v373 = vrhaddq_u16(*(v185 + 16), *(v185 + 18));
      v186 = v185 + v169;
      v374 = vrhaddq_u16(*v186, *(v186 + 2));
      v375 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
      v187 = v186 + v169;
      v376 = vrhaddq_u16(*v187, *(v187 + 2));
      v377 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
      v188 = v187 + v169;
      v378 = vrhaddq_u16(*v188, *(v188 + 2));
      v379 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
      v189 = v188 + v169;
      v380 = vrhaddq_u16(*v189, *(v189 + 2));
      v381 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
      v190 = v189 + v169;
      v382 = vrhaddq_u16(*v190, *(v190 + 2));
      v383 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
      v191 = v190 + v169;
      v384 = vrhaddq_u16(*v191, *(v191 + 2));
      v385 = vrhaddq_u16(*(v191 + 16), *(v191 + 18));
      v192 = v191 + v169;
      v386 = vrhaddq_u16(*v192, *(v192 + 2));
      v387 = vrhaddq_u16(*(v192 + 16), *(v192 + 18));
      v193 = v192 + v169;
      v388 = vrhaddq_u16(*v193, *(v193 + 2));
      v389 = vrhaddq_u16(*(v193 + 16), *(v193 + 18));
      v194 = v193 + v169;
      v390 = vrhaddq_u16(*v194, *(v194 + 2));
      v391 = vrhaddq_u16(*(v194 + 16), *(v194 + 18));
      v195 = v194 + v169;
      v392 = vrhaddq_u16(*v195, *(v195 + 2));
      v393 = vrhaddq_u16(*(v195 + 16), *(v195 + 18));
      v196 = v195 + v169;
      v394 = vrhaddq_u16(*v196, *(v196 + 2));
      v395 = vrhaddq_u16(*(v196 + 16), *(v196 + 18));
      v197 = v196 + v169;
      v396 = vrhaddq_u16(*v197, *(v197 + 2));
      v397 = vrhaddq_u16(*(v197 + 16), *(v197 + 18));
      v198 = v197 + v169;
      v398 = vrhaddq_u16(*v198, *(v198 + 2));
      v399 = vrhaddq_u16(*(v198 + 16), *(v198 + 18));
      v199 = v198 + v169;
      v400 = vrhaddq_u16(*v199, *(v199 + 2));
      v401 = vrhaddq_u16(*(v199 + 16), *(v199 + 18));
      v200 = v199 + v169;
      v402 = vrhaddq_u16(*v200, *(v200 + 2));
      v201 = v200 + v169;
      v403 = vrhaddq_u16(*(v200 + 16), *(v200 + 18));
      v404 = vrhaddq_u16(*v201, *(v201 + 2));
      v405 = vrhaddq_u16(*(v201 + 16), *(v201 + 18));
      v276 = vrhaddq_u16(v340, v342);
      v277 = vrhaddq_u16(v168, v343);
      v278 = vrhaddq_u16(v342, v344);
      v279 = vrhaddq_u16(v343, v345);
      v280 = vrhaddq_u16(v344, v346);
      v281 = vrhaddq_u16(v345, v347);
      v282 = vrhaddq_u16(v346, v348);
      v283 = vrhaddq_u16(v347, v349);
      v284 = vrhaddq_u16(v348, v350);
      v285 = vrhaddq_u16(v349, v351);
      v286 = vrhaddq_u16(v350, v352);
      v287 = vrhaddq_u16(v351, v353);
      v288 = vrhaddq_u16(v352, v354);
      v289 = vrhaddq_u16(v353, v355);
      v290 = vrhaddq_u16(v354, v356);
      v291 = vrhaddq_u16(v355, v357);
      v292 = vrhaddq_u16(v356, v358);
      v293 = vrhaddq_u16(v357, v359);
      v294 = vrhaddq_u16(v358, v360);
      v295 = vrhaddq_u16(v359, v361);
      v296 = vrhaddq_u16(v360, v362);
      v297 = vrhaddq_u16(v361, v363);
      v298 = vrhaddq_u16(v362, v364);
      v299 = vrhaddq_u16(v363, v365);
      v300 = vrhaddq_u16(v364, v366);
      v301 = vrhaddq_u16(v365, v367);
      v302 = vrhaddq_u16(v366, v368);
      v303 = vrhaddq_u16(v367, v369);
      v304 = vrhaddq_u16(v368, v370);
      v305 = vrhaddq_u16(v369, v371);
      v306 = vrhaddq_u16(v370, v372);
      v307 = vrhaddq_u16(v371, v373);
      v308 = vrhaddq_u16(v372, v374);
      v309 = vrhaddq_u16(v373, v375);
      v310 = vrhaddq_u16(v374, v376);
      v311 = vrhaddq_u16(v375, v377);
      v312 = vrhaddq_u16(v376, v378);
      v313 = vrhaddq_u16(v377, v379);
      v314 = vrhaddq_u16(v378, v380);
      v315 = vrhaddq_u16(v379, v381);
      v316 = vrhaddq_u16(v380, v382);
      v317 = vrhaddq_u16(v381, v383);
      v318 = vrhaddq_u16(v382, v384);
      v319 = vrhaddq_u16(v383, v385);
      v320 = vrhaddq_u16(v384, v386);
      v321 = vrhaddq_u16(v385, v387);
      v322 = vrhaddq_u16(v386, v388);
      v323 = vrhaddq_u16(v387, v389);
      v324 = vrhaddq_u16(v388, v390);
      v325 = vrhaddq_u16(v389, v391);
      v326 = vrhaddq_u16(v390, v392);
      v327 = vrhaddq_u16(v391, v393);
      v328 = vrhaddq_u16(v392, v394);
      v329 = vrhaddq_u16(v393, v395);
      v330 = vrhaddq_u16(v394, v396);
      v331 = vrhaddq_u16(v395, v397);
      v332 = vrhaddq_u16(v396, v398);
      v333 = vrhaddq_u16(v397, v399);
      v334 = vrhaddq_u16(v398, v400);
      v335 = vrhaddq_u16(v399, v401);
      v336 = vrhaddq_u16(v400, v402);
      v337 = vrhaddq_u16(v401, v403);
      v338 = vrhaddq_u16(v402, v404);
      v339 = vrhaddq_u16(v403, v405);
      v202 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v203 = vsubq_s16(*(&v276 + v167), v202[-1]);
        v204 = vpadalq_s16(v13, v203);
        v205 = vmlal_s16(v10, *v203.i8, *v203.i8);
        v206 = vmlal_high_s16(v12, v203, v203);
        v207 = vsubq_s16(*(&v276 + v167 + 16), *v202);
        v13 = vpadalq_s16(v204, v207);
        v10 = vmlal_s16(v205, *v207.i8, *v207.i8);
        v12 = vmlal_high_s16(v206, v207, v207);
        v167 += 32;
        v202 = (v202 + 2 * a6);
      }

      while (v167 != 1024);
    }

    else if (a4)
    {
      v222 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v340 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v341 = v222;
      v223 = 2 * a2;
      v224 = v7 + v223;
      v342 = vrhaddq_u16(*v224, *(v224 + 2));
      v225 = &v343;
      v343 = vrhaddq_u16(*(v224 + 16), *(v224 + 18));
      v226 = v224 + v223;
      v344 = vrhaddq_u16(*v226, *(v226 + 2));
      v345 = vrhaddq_u16(*(v226 + 16), *(v226 + 18));
      v227 = v226 + v223;
      v346 = vrhaddq_u16(*v227, *(v227 + 2));
      v347 = vrhaddq_u16(*(v227 + 16), *(v227 + 18));
      v228 = v227 + v223;
      v348 = vrhaddq_u16(*v228, *(v228 + 2));
      v349 = vrhaddq_u16(*(v228 + 16), *(v228 + 18));
      v229 = v228 + v223;
      v350 = vrhaddq_u16(*v229, *(v229 + 2));
      v351 = vrhaddq_u16(*(v229 + 16), *(v229 + 18));
      v230 = v229 + v223;
      v352 = vrhaddq_u16(*v230, *(v230 + 2));
      v353 = vrhaddq_u16(*(v230 + 16), *(v230 + 18));
      v231 = v230 + v223;
      v354 = vrhaddq_u16(*v231, *(v231 + 2));
      v355 = vrhaddq_u16(*(v231 + 16), *(v231 + 18));
      v232 = v231 + v223;
      v356 = vrhaddq_u16(*v232, *(v232 + 2));
      v357 = vrhaddq_u16(*(v232 + 16), *(v232 + 18));
      v233 = v232 + v223;
      v358 = vrhaddq_u16(*v233, *(v233 + 2));
      v359 = vrhaddq_u16(*(v233 + 16), *(v233 + 18));
      v234 = v233 + v223;
      v360 = vrhaddq_u16(*v234, *(v234 + 2));
      v361 = vrhaddq_u16(*(v234 + 16), *(v234 + 18));
      v235 = v234 + v223;
      v362 = vrhaddq_u16(*v235, *(v235 + 2));
      v363 = vrhaddq_u16(*(v235 + 16), *(v235 + 18));
      v236 = v235 + v223;
      v364 = vrhaddq_u16(*v236, *(v236 + 2));
      v365 = vrhaddq_u16(*(v236 + 16), *(v236 + 18));
      v237 = v236 + v223;
      v366 = vrhaddq_u16(*v237, *(v237 + 2));
      v367 = vrhaddq_u16(*(v237 + 16), *(v237 + 18));
      v238 = v237 + v223;
      v368 = vrhaddq_u16(*v238, *(v238 + 2));
      v369 = vrhaddq_u16(*(v238 + 16), *(v238 + 18));
      v239 = v238 + v223;
      v370 = vrhaddq_u16(*v239, *(v239 + 2));
      v371 = vrhaddq_u16(*(v239 + 16), *(v239 + 18));
      v240 = v239 + v223;
      v372 = vrhaddq_u16(*v240, *(v240 + 2));
      v373 = vrhaddq_u16(*(v240 + 16), *(v240 + 18));
      v241 = v240 + v223;
      v374 = vrhaddq_u16(*v241, *(v241 + 2));
      v375 = vrhaddq_u16(*(v241 + 16), *(v241 + 18));
      v242 = v241 + v223;
      v376 = vrhaddq_u16(*v242, *(v242 + 2));
      v377 = vrhaddq_u16(*(v242 + 16), *(v242 + 18));
      v243 = v242 + v223;
      v378 = vrhaddq_u16(*v243, *(v243 + 2));
      v379 = vrhaddq_u16(*(v243 + 16), *(v243 + 18));
      v244 = v243 + v223;
      v380 = vrhaddq_u16(*v244, *(v244 + 2));
      v381 = vrhaddq_u16(*(v244 + 16), *(v244 + 18));
      v245 = v244 + v223;
      v382 = vrhaddq_u16(*v245, *(v245 + 2));
      v383 = vrhaddq_u16(*(v245 + 16), *(v245 + 18));
      v246 = v245 + v223;
      v384 = vrhaddq_u16(*v246, *(v246 + 2));
      v385 = vrhaddq_u16(*(v246 + 16), *(v246 + 18));
      v247 = v246 + v223;
      v386 = vrhaddq_u16(*v247, *(v247 + 2));
      v387 = vrhaddq_u16(*(v247 + 16), *(v247 + 18));
      v248 = v247 + v223;
      v388 = vrhaddq_u16(*v248, *(v248 + 2));
      v389 = vrhaddq_u16(*(v248 + 16), *(v248 + 18));
      v249 = v248 + v223;
      v390 = vrhaddq_u16(*v249, *(v249 + 2));
      v391 = vrhaddq_u16(*(v249 + 16), *(v249 + 18));
      v250 = v249 + v223;
      v392 = vrhaddq_u16(*v250, *(v250 + 2));
      v393 = vrhaddq_u16(*(v250 + 16), *(v250 + 18));
      v251 = v250 + v223;
      v394 = vrhaddq_u16(*v251, *(v251 + 2));
      v395 = vrhaddq_u16(*(v251 + 16), *(v251 + 18));
      v252 = v251 + v223;
      v396 = vrhaddq_u16(*v252, *(v252 + 2));
      v397 = vrhaddq_u16(*(v252 + 16), *(v252 + 18));
      v253 = v252 + v223;
      v398 = vrhaddq_u16(*v253, *(v253 + 2));
      v399 = vrhaddq_u16(*(v253 + 16), *(v253 + 18));
      v254 = v253 + v223;
      v400 = vrhaddq_u16(*v254, *(v254 + 2));
      v401 = vrhaddq_u16(*(v254 + 16), *(v254 + 18));
      v255 = v254 + v223;
      v402 = vrhaddq_u16(*v255, *(v255 + 2));
      v403 = vrhaddq_u16(*(v255 + 16), *(v255 + 18));
      v256 = v255 + v223;
      v404 = vrhaddq_u16(*v256, *(v256 + 2));
      v257 = vdupq_n_s16(8 - a4);
      v405 = vrhaddq_u16(*(v256 + 16), *(v256 + 18));
      v258 = vdupq_n_s16(a4);
      v259 = v340;
      v260 = 32;
      do
      {
        v262 = v225[-2];
        v261 = v225[-1];
        v263 = *v225;
        v225 += 2;
        v264 = (&v276 + v260);
        v264[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v259, v257), v261, v258), 3uLL);
        v264[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v262, v257), v263, v258), 3uLL);
        v260 += 32;
        v259 = v261;
      }

      while (v260 != 1056);
      v265 = 0;
      v266 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v267 = vsubq_s16(*(&v276 + v265), v266[-1]);
        v268 = vpadalq_s16(v13, v267);
        v269 = vmlal_s16(v10, *v267.i8, *v267.i8);
        v270 = vmlal_high_s16(v12, v267, v267);
        v271 = vsubq_s16(*(&v276 + v265 + 16), *v266);
        v13 = vpadalq_s16(v268, v271);
        v10 = vmlal_s16(v269, *v271.i8, *v271.i8);
        v12 = vmlal_high_s16(v270, v271, v271);
        v265 += 32;
        v266 = (v266 + 2 * a6);
      }

      while (v265 != 1024);
    }

    else
    {
      v20 = 0;
      v21 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v340 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v341 = v21;
      v22 = 2 * a2;
      v23 = v7 + v22;
      v342 = vrhaddq_u16(*v23, *(v23 + 2));
      v343 = vrhaddq_u16(*(v23 + 16), *(v23 + 18));
      v24 = v23 + v22;
      v344 = vrhaddq_u16(*v24, *(v24 + 2));
      v345 = vrhaddq_u16(*(v24 + 16), *(v24 + 18));
      v25 = v24 + v22;
      v346 = vrhaddq_u16(*v25, *(v25 + 2));
      v347 = vrhaddq_u16(*(v25 + 16), *(v25 + 18));
      v26 = v25 + v22;
      v348 = vrhaddq_u16(*v26, *(v26 + 2));
      v349 = vrhaddq_u16(*(v26 + 16), *(v26 + 18));
      v27 = v26 + v22;
      v350 = vrhaddq_u16(*v27, *(v27 + 2));
      v351 = vrhaddq_u16(*(v27 + 16), *(v27 + 18));
      v28 = v27 + v22;
      v352 = vrhaddq_u16(*v28, *(v28 + 2));
      v353 = vrhaddq_u16(*(v28 + 16), *(v28 + 18));
      v29 = v28 + v22;
      v354 = vrhaddq_u16(*v29, *(v29 + 2));
      v355 = vrhaddq_u16(*(v29 + 16), *(v29 + 18));
      v30 = v29 + v22;
      v356 = vrhaddq_u16(*v30, *(v30 + 2));
      v357 = vrhaddq_u16(*(v30 + 16), *(v30 + 18));
      v31 = v30 + v22;
      v358 = vrhaddq_u16(*v31, *(v31 + 2));
      v359 = vrhaddq_u16(*(v31 + 16), *(v31 + 18));
      v32 = v31 + v22;
      v360 = vrhaddq_u16(*v32, *(v32 + 2));
      v361 = vrhaddq_u16(*(v32 + 16), *(v32 + 18));
      v33 = v32 + v22;
      v362 = vrhaddq_u16(*v33, *(v33 + 2));
      v363 = vrhaddq_u16(*(v33 + 16), *(v33 + 18));
      v34 = v33 + v22;
      v364 = vrhaddq_u16(*v34, *(v34 + 2));
      v365 = vrhaddq_u16(*(v34 + 16), *(v34 + 18));
      v35 = v34 + v22;
      v366 = vrhaddq_u16(*v35, *(v35 + 2));
      v367 = vrhaddq_u16(*(v35 + 16), *(v35 + 18));
      v36 = v35 + v22;
      v368 = vrhaddq_u16(*v36, *(v36 + 2));
      v369 = vrhaddq_u16(*(v36 + 16), *(v36 + 18));
      v37 = v36 + v22;
      v370 = vrhaddq_u16(*v37, *(v37 + 2));
      v371 = vrhaddq_u16(*(v37 + 16), *(v37 + 18));
      v38 = v37 + v22;
      v372 = vrhaddq_u16(*v38, *(v38 + 2));
      v373 = vrhaddq_u16(*(v38 + 16), *(v38 + 18));
      v39 = v38 + v22;
      v374 = vrhaddq_u16(*v39, *(v39 + 2));
      v375 = vrhaddq_u16(*(v39 + 16), *(v39 + 18));
      v40 = v39 + v22;
      v376 = vrhaddq_u16(*v40, *(v40 + 2));
      v377 = vrhaddq_u16(*(v40 + 16), *(v40 + 18));
      v41 = v40 + v22;
      v378 = vrhaddq_u16(*v41, *(v41 + 2));
      v379 = vrhaddq_u16(*(v41 + 16), *(v41 + 18));
      v42 = v41 + v22;
      v380 = vrhaddq_u16(*v42, *(v42 + 2));
      v381 = vrhaddq_u16(*(v42 + 16), *(v42 + 18));
      v43 = v42 + v22;
      v382 = vrhaddq_u16(*v43, *(v43 + 2));
      v383 = vrhaddq_u16(*(v43 + 16), *(v43 + 18));
      v44 = v43 + v22;
      v384 = vrhaddq_u16(*v44, *(v44 + 2));
      v385 = vrhaddq_u16(*(v44 + 16), *(v44 + 18));
      v45 = v44 + v22;
      v386 = vrhaddq_u16(*v45, *(v45 + 2));
      v387 = vrhaddq_u16(*(v45 + 16), *(v45 + 18));
      v46 = v45 + v22;
      v388 = vrhaddq_u16(*v46, *(v46 + 2));
      v389 = vrhaddq_u16(*(v46 + 16), *(v46 + 18));
      v47 = v46 + v22;
      v390 = vrhaddq_u16(*v47, *(v47 + 2));
      v391 = vrhaddq_u16(*(v47 + 16), *(v47 + 18));
      v48 = v47 + v22;
      v392 = vrhaddq_u16(*v48, *(v48 + 2));
      v393 = vrhaddq_u16(*(v48 + 16), *(v48 + 18));
      v49 = v48 + v22;
      v394 = vrhaddq_u16(*v49, *(v49 + 2));
      v395 = vrhaddq_u16(*(v49 + 16), *(v49 + 18));
      v50 = v49 + v22;
      v396 = vrhaddq_u16(*v50, *(v50 + 2));
      v397 = vrhaddq_u16(*(v50 + 16), *(v50 + 18));
      v51 = v50 + v22;
      v398 = vrhaddq_u16(*v51, *(v51 + 2));
      v399 = vrhaddq_u16(*(v51 + 16), *(v51 + 18));
      v52 = v51 + v22;
      v400 = vrhaddq_u16(*v52, *(v52 + 2));
      v53 = v52 + v22;
      v401 = vrhaddq_u16(*(v52 + 16), *(v52 + 18));
      v402 = vrhaddq_u16(*v53, *(v53 + 2));
      v403 = vrhaddq_u16(*(v53 + 16), *(v53 + 18));
      v54 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v55 = vsubq_s16(*(&v340 + v20), v54[-1]);
        v56 = vpadalq_s16(v13, v55);
        v57 = vmlal_s16(v10, *v55.i8, *v55.i8);
        v58 = vmlal_high_s16(v12, v55, v55);
        v59 = vsubq_s16(*(&v340 + v20 + 16), *v54);
        v13 = vpadalq_s16(v56, v59);
        v10 = vmlal_s16(v57, *v59.i8, *v59.i8);
        v12 = vmlal_high_s16(v58, v59, v59);
        v20 += 32;
        v54 = (v54 + 2 * a6);
      }

      while (v20 != 1024);
    }
  }

  else if (a3)
  {
    v60 = 0;
    v61 = vdupq_n_s16(8 - a3);
    v62 = vdupq_n_s16(a3);
    v63 = (v7 + 18);
    v64 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v73 = (&v340 + v60);
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 18), v61), v63[-1], v62), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 2), v61), *v63, v62), 3uLL);
        v60 += 32;
        v63 = (v63 + v64);
      }

      while (v60 != 1056);
      v74 = 0;
      v276 = vrhaddq_u16(v340, v342);
      v277 = vrhaddq_u16(v341, v343);
      v278 = vrhaddq_u16(v342, v344);
      v279 = vrhaddq_u16(v343, v345);
      v280 = vrhaddq_u16(v344, v346);
      v281 = vrhaddq_u16(v345, v347);
      v282 = vrhaddq_u16(v346, v348);
      v283 = vrhaddq_u16(v347, v349);
      v284 = vrhaddq_u16(v348, v350);
      v285 = vrhaddq_u16(v349, v351);
      v286 = vrhaddq_u16(v350, v352);
      v287 = vrhaddq_u16(v351, v353);
      v288 = vrhaddq_u16(v352, v354);
      v289 = vrhaddq_u16(v353, v355);
      v290 = vrhaddq_u16(v354, v356);
      v291 = vrhaddq_u16(v355, v357);
      v292 = vrhaddq_u16(v356, v358);
      v293 = vrhaddq_u16(v357, v359);
      v294 = vrhaddq_u16(v358, v360);
      v295 = vrhaddq_u16(v359, v361);
      v296 = vrhaddq_u16(v360, v362);
      v297 = vrhaddq_u16(v361, v363);
      v298 = vrhaddq_u16(v362, v364);
      v299 = vrhaddq_u16(v363, v365);
      v300 = vrhaddq_u16(v364, v366);
      v301 = vrhaddq_u16(v365, v367);
      v302 = vrhaddq_u16(v366, v368);
      v303 = vrhaddq_u16(v367, v369);
      v304 = vrhaddq_u16(v368, v370);
      v305 = vrhaddq_u16(v369, v371);
      v306 = vrhaddq_u16(v370, v372);
      v307 = vrhaddq_u16(v371, v373);
      v308 = vrhaddq_u16(v372, v374);
      v309 = vrhaddq_u16(v373, v375);
      v310 = vrhaddq_u16(v374, v376);
      v311 = vrhaddq_u16(v375, v377);
      v312 = vrhaddq_u16(v376, v378);
      v313 = vrhaddq_u16(v377, v379);
      v314 = vrhaddq_u16(v378, v380);
      v315 = vrhaddq_u16(v379, v381);
      v316 = vrhaddq_u16(v380, v382);
      v317 = vrhaddq_u16(v381, v383);
      v318 = vrhaddq_u16(v382, v384);
      v319 = vrhaddq_u16(v383, v385);
      v320 = vrhaddq_u16(v384, v386);
      v321 = vrhaddq_u16(v385, v387);
      v322 = vrhaddq_u16(v386, v388);
      v323 = vrhaddq_u16(v387, v389);
      v324 = vrhaddq_u16(v388, v390);
      v325 = vrhaddq_u16(v389, v391);
      v326 = vrhaddq_u16(v390, v392);
      v327 = vrhaddq_u16(v391, v393);
      v328 = vrhaddq_u16(v392, v394);
      v329 = vrhaddq_u16(v393, v395);
      v330 = vrhaddq_u16(v394, v396);
      v331 = vrhaddq_u16(v395, v397);
      v332 = vrhaddq_u16(v396, v398);
      v333 = vrhaddq_u16(v397, v399);
      v334 = vrhaddq_u16(v398, v400);
      v335 = vrhaddq_u16(v399, v401);
      v336 = vrhaddq_u16(v400, v402);
      v337 = vrhaddq_u16(v401, v403);
      v75 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v338 = vrhaddq_u16(v402, v404);
      v339 = vrhaddq_u16(v403, v405);
      v13 = 0uLL;
      do
      {
        v76 = vsubq_s16(*(&v276 + v74), v75[-1]);
        v77 = vpadalq_s16(v13, v76);
        v78 = vmlal_s16(v10, *v76.i8, *v76.i8);
        v79 = vmlal_high_s16(v12, v76, v76);
        v80 = vsubq_s16(*(&v276 + v74 + 16), *v75);
        v13 = vpadalq_s16(v77, v80);
        v10 = vmlal_s16(v78, *v80.i8, *v80.i8);
        v12 = vmlal_high_s16(v79, v80, v80);
        v74 += 32;
        v75 = (v75 + 2 * a6);
      }

      while (v74 != 1024);
    }

    else if (a4)
    {
      do
      {
        v81 = (&v340 + v60);
        *v81 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 18), v61), v63[-1], v62), 3uLL);
        v81[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 2), v61), *v63, v62), 3uLL);
        v60 += 32;
        v63 = (v63 + v64);
      }

      while (v60 != 1056);
      v82 = vdupq_n_s16(8 - a4);
      v83 = vdupq_n_s16(a4);
      v84 = v340;
      v85 = &v343;
      v86 = 32;
      do
      {
        v88 = v85[-2];
        v87 = v85[-1];
        v89 = *v85;
        v85 += 2;
        v90 = (&v276 + v86);
        v90[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84, v82), v87, v83), 3uLL);
        v90[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v88, v82), v89, v83), 3uLL);
        v86 += 32;
        v84 = v87;
      }

      while (v86 != 1056);
      v91 = 0;
      v92 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v93 = vsubq_s16(*(&v276 + v91), v92[-1]);
        v94 = vpadalq_s16(v13, v93);
        v95 = vmlal_s16(v10, *v93.i8, *v93.i8);
        v96 = vmlal_high_s16(v12, v93, v93);
        v97 = vsubq_s16(*(&v276 + v91 + 16), *v92);
        v13 = vpadalq_s16(v94, v97);
        v10 = vmlal_s16(v95, *v97.i8, *v97.i8);
        v12 = vmlal_high_s16(v96, v97, v97);
        v91 += 32;
        v92 = (v92 + 2 * a6);
      }

      while (v91 != 1024);
    }

    else
    {
      do
      {
        v65 = (&v340 + v60);
        *v65 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 18), v61), v63[-1], v62), 3uLL);
        v65[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 2), v61), *v63, v62), 3uLL);
        v60 += 32;
        v63 = (v63 + v64);
      }

      while (v60 != 1024);
      v66 = 0;
      v67 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v68 = vsubq_s16(*(&v340 + v66), v67[-1]);
        v69 = vpadalq_s16(v13, v68);
        v70 = vmlal_s16(v10, *v68.i8, *v68.i8);
        v71 = vmlal_high_s16(v12, v68, v68);
        v72 = vsubq_s16(*(&v340 + v66 + 16), *v67);
        v13 = vpadalq_s16(v69, v72);
        v10 = vmlal_s16(v70, *v72.i8, *v72.i8);
        v12 = vmlal_high_s16(v71, v72, v72);
        v66 += 32;
        v67 = (v67 + 2 * a6);
      }

      while (v66 != 1024);
    }
  }

  else if (a4 == 4)
  {
    v98 = 0;
    v99 = 2 * a2;
    v100 = (v7 + v99);
    v101 = *(v7 + v99);
    v340 = vrhaddq_u16(*v7, v101);
    v341 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x10 + v99));
    v102 = (v7 + v99 + v99);
    v103 = *v102;
    v342 = vrhaddq_u16(v101, *v102);
    v343 = vrhaddq_u16(v100[1], *(v100 + v99 + 16));
    v104 = (v102 + v99);
    v105 = *(v102 + v99);
    v344 = vrhaddq_u16(v103, v105);
    v345 = vrhaddq_u16(v102[1], *(v102 + v99 + 16));
    v106 = (v102 + v99 + v99);
    v107 = *v106;
    v346 = vrhaddq_u16(v105, *v106);
    v347 = vrhaddq_u16(v104[1], *(v104 + v99 + 16));
    v108 = (v106 + v99);
    v109 = *(v106 + v99);
    v348 = vrhaddq_u16(v107, v109);
    v349 = vrhaddq_u16(v106[1], *(v106 + v99 + 16));
    v110 = (v106 + v99 + v99);
    v111 = *v110;
    v350 = vrhaddq_u16(v109, *v110);
    v351 = vrhaddq_u16(v108[1], *(v108 + v99 + 16));
    v112 = (v110 + v99);
    v113 = *(v110 + v99);
    v352 = vrhaddq_u16(v111, v113);
    v353 = vrhaddq_u16(v110[1], *(v110 + v99 + 16));
    v114 = (v110 + v99 + v99);
    v115 = *v114;
    v354 = vrhaddq_u16(v113, *v114);
    v355 = vrhaddq_u16(v112[1], *(v112 + v99 + 16));
    v116 = (v114 + v99);
    v117 = *(v114 + v99);
    v356 = vrhaddq_u16(v115, v117);
    v357 = vrhaddq_u16(v114[1], *(v114 + v99 + 16));
    v118 = (v114 + v99 + v99);
    v119 = *v118;
    v358 = vrhaddq_u16(v117, *v118);
    v359 = vrhaddq_u16(v116[1], *(v116 + v99 + 16));
    v120 = (v118 + v99);
    v121 = *(v118 + v99);
    v360 = vrhaddq_u16(v119, v121);
    v361 = vrhaddq_u16(v118[1], *(v118 + v99 + 16));
    v122 = (v118 + v99 + v99);
    v123 = *v122;
    v362 = vrhaddq_u16(v121, *v122);
    v363 = vrhaddq_u16(v120[1], *(v120 + v99 + 16));
    v124 = (v122 + v99);
    v125 = *(v122 + v99);
    v364 = vrhaddq_u16(v123, v125);
    v365 = vrhaddq_u16(v122[1], *(v122 + v99 + 16));
    v126 = (v122 + v99 + v99);
    v127 = *v126;
    v366 = vrhaddq_u16(v125, *v126);
    v367 = vrhaddq_u16(v124[1], *(v124 + v99 + 16));
    v128 = (v126 + v99);
    v129 = *(v126 + v99);
    v368 = vrhaddq_u16(v127, v129);
    v369 = vrhaddq_u16(v126[1], *(v126 + v99 + 16));
    v130 = (v126 + v99 + v99);
    v131 = *v130;
    v370 = vrhaddq_u16(v129, *v130);
    v371 = vrhaddq_u16(v128[1], *(v128 + v99 + 16));
    v132 = (v130 + v99);
    v133 = *(v130 + v99);
    v372 = vrhaddq_u16(v131, v133);
    v373 = vrhaddq_u16(v130[1], *(v130 + v99 + 16));
    v134 = (v130 + v99 + v99);
    v135 = *v134;
    v374 = vrhaddq_u16(v133, *v134);
    v375 = vrhaddq_u16(v132[1], *(v132 + v99 + 16));
    v136 = (v134 + v99);
    v137 = *(v134 + v99);
    v376 = vrhaddq_u16(v135, v137);
    v377 = vrhaddq_u16(v134[1], *(v134 + v99 + 16));
    v138 = (v134 + v99 + v99);
    v139 = *v138;
    v378 = vrhaddq_u16(v137, *v138);
    v379 = vrhaddq_u16(v136[1], *(v136 + v99 + 16));
    v140 = (v138 + v99);
    v141 = *(v138 + v99);
    v380 = vrhaddq_u16(v139, v141);
    v381 = vrhaddq_u16(v138[1], *(v138 + v99 + 16));
    v142 = (v138 + v99 + v99);
    v143 = *v142;
    v382 = vrhaddq_u16(v141, *v142);
    v383 = vrhaddq_u16(v140[1], *(v140 + v99 + 16));
    v144 = (v142 + v99);
    v145 = *(v142 + v99);
    v384 = vrhaddq_u16(v143, v145);
    v385 = vrhaddq_u16(v142[1], *(v142 + v99 + 16));
    v146 = (v142 + v99 + v99);
    v147 = *v146;
    v386 = vrhaddq_u16(v145, *v146);
    v387 = vrhaddq_u16(v144[1], *(v144 + v99 + 16));
    v148 = (v146 + v99);
    v149 = *(v146 + v99);
    v388 = vrhaddq_u16(v147, v149);
    v389 = vrhaddq_u16(v146[1], *(v146 + v99 + 16));
    v150 = (v146 + v99 + v99);
    v151 = *v150;
    v390 = vrhaddq_u16(v149, *v150);
    v391 = vrhaddq_u16(v148[1], *(v148 + v99 + 16));
    v152 = (v150 + v99);
    v153 = *(v150 + v99);
    v392 = vrhaddq_u16(v151, v153);
    v393 = vrhaddq_u16(v150[1], *(v150 + v99 + 16));
    v154 = (v150 + v99 + v99);
    v155 = *v154;
    v394 = vrhaddq_u16(v153, *v154);
    v395 = vrhaddq_u16(v152[1], *(v152 + v99 + 16));
    v156 = (v154 + v99);
    v157 = *(v154 + v99);
    v396 = vrhaddq_u16(v155, v157);
    v397 = vrhaddq_u16(v154[1], *(v154 + v99 + 16));
    v158 = (v154 + v99 + v99);
    v159 = *v158;
    v398 = vrhaddq_u16(v157, *v158);
    v399 = vrhaddq_u16(v156[1], *(v156 + v99 + 16));
    v160 = *(v158 + v99);
    v400 = vrhaddq_u16(v159, v160);
    v401 = vrhaddq_u16(v158[1], *(v158 + v99 + 16));
    v402 = vrhaddq_u16(v160, *(v158 + v99 + v99));
    v403 = vrhaddq_u16(*(&v158[1] + v99), *(&v158[1] + v99 + v99));
    v161 = (2 * a5 + 16);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v162 = vsubq_s16(*(&v340 + v98), v161[-1]);
      v163 = vpadalq_s16(v13, v162);
      v164 = vmlal_s16(v10, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v12, v162, v162);
      v166 = vsubq_s16(*(&v340 + v98 + 16), *v161);
      v13 = vpadalq_s16(v163, v166);
      v10 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v12 = vmlal_high_s16(v165, v166, v166);
      v98 += 32;
      v161 = (v161 + 2 * a6);
    }

    while (v98 != 1024);
  }

  else if (a4)
  {
    v208 = 0;
    v209 = vdupq_n_s16(8 - a4);
    v210 = vdupq_n_s16(a4);
    v211 = *v7;
    v212 = 2 * a2;
    do
    {
      v213 = (&v340 + v208);
      v214 = *(v7 + 2 * a2);
      *v213 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v211, v209), v214, v210), 3uLL);
      v213[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v209), *(v7 + v212 + 16), v210), 3uLL);
      v208 += 32;
      v7 += v212;
      v211 = v214;
    }

    while (v208 != 1024);
    v215 = 0;
    v216 = (2 * a5 + 16);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v217 = vsubq_s16(*(&v340 + v215), v216[-1]);
      v218 = vpadalq_s16(v13, v217);
      v219 = vmlal_s16(v10, *v217.i8, *v217.i8);
      v220 = vmlal_high_s16(v12, v217, v217);
      v221 = vsubq_s16(*(&v340 + v215 + 16), *v216);
      v13 = vpadalq_s16(v218, v221);
      v10 = vmlal_s16(v219, *v221.i8, *v221.i8);
      v12 = vmlal_high_s16(v220, v221, v221);
      v215 += 32;
      v216 = (v216 + 2 * a6);
    }

    while (v215 != 1024);
  }

  else
  {
    v8 = (2 * a5 + 16);
    v9 = (v7 + 16);
    v10 = 0uLL;
    v11 = -32;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = vsubq_s16(v9[-1], v8[-1]);
      v15 = vpadalq_s16(v13, v14);
      v16 = vmlal_s16(v10, *v14.i8, *v14.i8);
      v17 = vmlal_high_s16(v12, v14, v14);
      v18 = vsubq_s16(*v9, *v8);
      v13 = vpadalq_s16(v15, v18);
      v10 = vmlal_s16(v16, *v18.i8, *v18.i8);
      v12 = vmlal_high_s16(v17, v18, v18);
      v8 = (v8 + 2 * a6);
      v9 = (v9 + 2 * a2);
    }

    while (!__CFADD__(v11++, 1));
  }

  v272 = vaddvq_s32(v13);
  v273 = vaddlvq_u32(vaddq_s32(v12, v10));
  *a7 = (v273 + 8) >> 4;
  v274 = ((v273 + 8) >> 4) - (((((v272 << 30) + 0x80000000) >> 32) * (((v272 << 30) + 0x80000000) >> 32)) >> 9);
  return v274 & ~(v274 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_variance32x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
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
  *a7 = (v253 + 8) >> 4;
  v254 = ((v253 + 8) >> 4) - (((((v252 << 30) + 0x80000000) >> 32) * (((v252 << 30) + 0x80000000) >> 32)) >> 9);
  return v254 & ~(v254 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_variance32x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v9 = (v228 + 8) >> 4;
  v229 = ((v228 + 8) >> 4) - (((((v227 << 30) + 0x80000000) >> 32) * (((v227 << 30) + 0x80000000) >> 32)) >> 10);
  return v229 & ~(v229 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_variance32x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v241[513] = *MEMORY[0x277D85DE8];
  v10 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v91 = v10 + 2;
      v92 = v240;
      v93 = -65;
      do
      {
        *v92 = vrhaddq_u16(*(v91 - 2), *(v91 - 30));
        v92[1] = vrhaddq_u16(*(v91 - 1), *(v91 - 14));
        v92[2] = vrhaddq_u16(*v91, *(v91 + 2));
        v92[3] = vrhaddq_u16(*(v91 + 1), *(v91 + 18));
        v92 += 4;
        v91 = (v91 + 2 * v4);
        v30 = __CFADD__(v93++, 1);
      }

      while (!v30);
      v94 = v240[0];
      v95 = v241;
      v96 = 112;
      do
      {
        v97 = (&v239 + v96);
        v98 = v95[-2];
        v99 = v95[2];
        v100 = vrhaddq_u16(v95[-3], v95[1]);
        v102 = v95[-1];
        v101 = *v95;
        v97[-7] = vrhaddq_u16(v94, *v95);
        v97[-6] = v100;
        v103 = vrhaddq_u16(v102, v95[3]);
        v97[-5] = vrhaddq_u16(v98, v99);
        v97[-4] = v103;
        v96 += 64;
        v95 += 4;
        v94 = v101;
      }

      while (v96 != 4208);
      v104 = 0;
      v105 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v106 = vsubq_s16(*(&v239 + v104), v105[-2]);
        v107 = vpadalq_s16(v16, v106);
        v108 = vmlal_s16(v13, *v106.i8, *v106.i8);
        v109 = vmlal_high_s16(v15, v106, v106);
        v110 = vsubq_s16(*(&v239 + v104 + 16), v105[-1]);
        v111 = vpadalq_s16(v107, v110);
        v112 = vmlal_s16(v108, *v110.i8, *v110.i8);
        v113 = vmlal_high_s16(v109, v110, v110);
        v114 = vsubq_s16(*(&v239 + v104 + 32), *v105);
        v115 = vpadalq_s16(v111, v114);
        v116 = vmlal_s16(v112, *v114.i8, *v114.i8);
        v117 = vmlal_high_s16(v113, v114, v114);
        v118 = vsubq_s16(*(&v239 + v104 + 48), v105[1]);
        v16 = vpadalq_s16(v115, v118);
        v13 = vmlal_s16(v116, *v118.i8, *v118.i8);
        v15 = vmlal_high_s16(v117, v118, v118);
        v104 += 64;
        v105 = (v105 + 2 * v8);
      }

      while (v104 != 4096);
    }

    else if (v6)
    {
      v143 = v10 + 2;
      v144 = v240;
      v145 = -65;
      do
      {
        *v144 = vrhaddq_u16(*(v143 - 2), *(v143 - 30));
        v144[1] = vrhaddq_u16(*(v143 - 1), *(v143 - 14));
        v144[2] = vrhaddq_u16(*v143, *(v143 + 2));
        v144[3] = vrhaddq_u16(*(v143 + 1), *(v143 + 18));
        v144 += 4;
        v143 = (v143 + 2 * v4);
        v30 = __CFADD__(v145++, 1);
      }

      while (!v30);
      v146 = vdupq_n_s16(8 - v6);
      v147 = vdupq_n_s16(v6);
      v148 = v240[0];
      v149 = v241;
      v150 = 112;
      do
      {
        v151 = (&v239 + v150);
        v152 = v149[-2];
        v153 = v149[2];
        v155 = v149[-1];
        v154 = *v149;
        v156 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v149[-3], v146), v149[1], v147), 3uLL);
        v151[-7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v148, v146), *v149, v147), 3uLL);
        v151[-6] = v156;
        v157 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v155, v146), v149[3], v147), 3uLL);
        v151[-5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v152, v146), v153, v147), 3uLL);
        v151[-4] = v157;
        v150 += 64;
        v149 += 4;
        v148 = v154;
      }

      while (v150 != 4208);
      v158 = 0;
      v159 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v160 = vsubq_s16(*(&v239 + v158), v159[-2]);
        v161 = vpadalq_s16(v16, v160);
        v162 = vmlal_s16(v13, *v160.i8, *v160.i8);
        v163 = vmlal_high_s16(v15, v160, v160);
        v164 = vsubq_s16(*(&v239 + v158 + 16), v159[-1]);
        v165 = vpadalq_s16(v161, v164);
        v166 = vmlal_s16(v162, *v164.i8, *v164.i8);
        v167 = vmlal_high_s16(v163, v164, v164);
        v168 = vsubq_s16(*(&v239 + v158 + 32), *v159);
        v169 = vpadalq_s16(v165, v168);
        v170 = vmlal_s16(v166, *v168.i8, *v168.i8);
        v171 = vmlal_high_s16(v167, v168, v168);
        v172 = vsubq_s16(*(&v239 + v158 + 48), v159[1]);
        v16 = vpadalq_s16(v169, v172);
        v13 = vmlal_s16(v170, *v172.i8, *v172.i8);
        v15 = vmlal_high_s16(v171, v172, v172);
        v158 += 64;
        v159 = (v159 + 2 * v8);
      }

      while (v158 != 4096);
    }

    else
    {
      v31 = 0;
      v32 = v10 + 2;
      do
      {
        v33 = &v240[v31];
        *v33 = vrhaddq_u16(*(v32 - 2), *(v32 - 30));
        v33[1] = vrhaddq_u16(*(v32 - 1), *(v32 - 14));
        v33[2] = vrhaddq_u16(*v32, *(v32 + 2));
        v33[3] = vrhaddq_u16(*(v32 + 1), *(v32 + 18));
        v31 += 4;
        v32 = (v32 + 2 * v4);
      }

      while ((v31 * 16) != 4096);
      v34 = 0;
      v35 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v36 = vsubq_s16(v240[v34], v35[-2]);
        v37 = vpadalq_s16(v16, v36);
        v38 = vmlal_s16(v13, *v36.i8, *v36.i8);
        v39 = vmlal_high_s16(v15, v36, v36);
        v40 = vsubq_s16(v240[v34 + 1], v35[-1]);
        v41 = vpadalq_s16(v37, v40);
        v42 = vmlal_s16(v38, *v40.i8, *v40.i8);
        v43 = vmlal_high_s16(v39, v40, v40);
        v44 = vsubq_s16(v240[v34 + 2], *v35);
        v45 = vpadalq_s16(v41, v44);
        v46 = vmlal_s16(v42, *v44.i8, *v44.i8);
        v47 = vmlal_high_s16(v43, v44, v44);
        v48 = vsubq_s16(v240[v34 + 3], v35[1]);
        v16 = vpadalq_s16(v45, v48);
        v13 = vmlal_s16(v46, *v48.i8, *v48.i8);
        v15 = vmlal_high_s16(v47, v48, v48);
        v34 += 4;
        v35 = (v35 + 2 * v8);
      }

      while ((v34 * 16) != 4096);
    }
  }

  else if (v5)
  {
    if (v6 == 4)
    {
      v173 = vdupq_n_s16(8 - v5);
      v174 = vdupq_n_s16(v5);
      v175 = v10 + 2;
      v176 = v240;
      v177 = -65;
      do
      {
        *v176 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v175 - 2), v173), *(v175 - 30), v174), 3uLL);
        v176[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v175 - 1), v173), *(v175 - 14), v174), 3uLL);
        v176[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v175, v173), *(v175 + 2), v174), 3uLL);
        v176[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v175 + 1), v173), *(v175 + 18), v174), 3uLL);
        v176 += 4;
        v175 = (v175 + 2 * v4);
        v30 = __CFADD__(v177++, 1);
      }

      while (!v30);
      v178 = v240[0];
      v179 = v241;
      v180 = 112;
      do
      {
        v181 = (&v239 + v180);
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

      while (v180 != 4208);
      v188 = 0;
      v189 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v190 = vsubq_s16(*(&v239 + v188), v189[-2]);
        v191 = vpadalq_s16(v16, v190);
        v192 = vmlal_s16(v13, *v190.i8, *v190.i8);
        v193 = vmlal_high_s16(v15, v190, v190);
        v194 = vsubq_s16(*(&v239 + v188 + 16), v189[-1]);
        v195 = vpadalq_s16(v191, v194);
        v196 = vmlal_s16(v192, *v194.i8, *v194.i8);
        v197 = vmlal_high_s16(v193, v194, v194);
        v198 = vsubq_s16(*(&v239 + v188 + 32), *v189);
        v199 = vpadalq_s16(v195, v198);
        v200 = vmlal_s16(v196, *v198.i8, *v198.i8);
        v201 = vmlal_high_s16(v197, v198, v198);
        v202 = vsubq_s16(*(&v239 + v188 + 48), v189[1]);
        v16 = vpadalq_s16(v199, v202);
        v13 = vmlal_s16(v200, *v202.i8, *v202.i8);
        v15 = vmlal_high_s16(v201, v202, v202);
        v188 += 64;
        v189 = (v189 + 2 * v8);
      }

      while (v188 != 4096);
    }

    else if (v6)
    {
      v203 = vdupq_n_s16(8 - v5);
      v204 = vdupq_n_s16(v5);
      v205 = v10 + 2;
      v206 = v240;
      v207 = -65;
      do
      {
        *v206 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v205 - 2), v203), *(v205 - 30), v204), 3uLL);
        v206[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v205 - 1), v203), *(v205 - 14), v204), 3uLL);
        v206[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v205, v203), *(v205 + 2), v204), 3uLL);
        v206[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v205 + 1), v203), *(v205 + 18), v204), 3uLL);
        v206 += 4;
        v205 = (v205 + 2 * v4);
        v30 = __CFADD__(v207++, 1);
      }

      while (!v30);
      v208 = vdupq_n_s16(8 - v6);
      v209 = vdupq_n_s16(v6);
      v210 = v240[0];
      v211 = v241;
      v212 = 112;
      do
      {
        v213 = (&v239 + v212);
        v214 = v211[-2];
        v215 = v211[2];
        v217 = v211[-1];
        v216 = *v211;
        v218 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v211[-3], v208), v211[1], v209), 3uLL);
        v213[-7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v210, v208), *v211, v209), 3uLL);
        v213[-6] = v218;
        v219 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v217, v208), v211[3], v209), 3uLL);
        v213[-5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v214, v208), v215, v209), 3uLL);
        v213[-4] = v219;
        v212 += 64;
        v211 += 4;
        v210 = v216;
      }

      while (v212 != 4208);
      v220 = 0;
      v221 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v222 = vsubq_s16(*(&v239 + v220), v221[-2]);
        v223 = vpadalq_s16(v16, v222);
        v224 = vmlal_s16(v13, *v222.i8, *v222.i8);
        v225 = vmlal_high_s16(v15, v222, v222);
        v226 = vsubq_s16(*(&v239 + v220 + 16), v221[-1]);
        v227 = vpadalq_s16(v223, v226);
        v228 = vmlal_s16(v224, *v226.i8, *v226.i8);
        v229 = vmlal_high_s16(v225, v226, v226);
        v230 = vsubq_s16(*(&v239 + v220 + 32), *v221);
        v231 = vpadalq_s16(v227, v230);
        v232 = vmlal_s16(v228, *v230.i8, *v230.i8);
        v233 = vmlal_high_s16(v229, v230, v230);
        v234 = vsubq_s16(*(&v239 + v220 + 48), v221[1]);
        v16 = vpadalq_s16(v231, v234);
        v13 = vmlal_s16(v232, *v234.i8, *v234.i8);
        v15 = vmlal_high_s16(v233, v234, v234);
        v220 += 64;
        v221 = (v221 + 2 * v8);
      }

      while (v220 != 4096);
    }

    else
    {
      v49 = 0;
      v50 = vdupq_n_s16(8 - v5);
      v51 = vdupq_n_s16(v5);
      v52 = v10 + 2;
      do
      {
        v53 = &v240[v49];
        *v53 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 - 2), v50), *(v52 - 30), v51), 3uLL);
        v53[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 - 1), v50), *(v52 - 14), v51), 3uLL);
        v53[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v52, v50), *(v52 + 2), v51), 3uLL);
        v53[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 + 1), v50), *(v52 + 18), v51), 3uLL);
        v49 += 4;
        v52 = (v52 + 2 * v4);
      }

      while ((v49 * 16) != 4096);
      v54 = 0;
      v55 = (2 * v7 + 32);
      v13 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v56 = vsubq_s16(v240[v54], v55[-2]);
        v57 = vpadalq_s16(v16, v56);
        v58 = vmlal_s16(v13, *v56.i8, *v56.i8);
        v59 = vmlal_high_s16(v15, v56, v56);
        v60 = vsubq_s16(v240[v54 + 1], v55[-1]);
        v61 = vpadalq_s16(v57, v60);
        v62 = vmlal_s16(v58, *v60.i8, *v60.i8);
        v63 = vmlal_high_s16(v59, v60, v60);
        v64 = vsubq_s16(v240[v54 + 2], *v55);
        v65 = vpadalq_s16(v61, v64);
        v66 = vmlal_s16(v62, *v64.i8, *v64.i8);
        v67 = vmlal_high_s16(v63, v64, v64);
        v68 = vsubq_s16(v240[v54 + 3], v55[1]);
        v16 = vpadalq_s16(v65, v68);
        v13 = vmlal_s16(v66, *v68.i8, *v68.i8);
        v15 = vmlal_high_s16(v67, v68, v68);
        v54 += 4;
        v55 = (v55 + 2 * v8);
      }

      while ((v54 * 16) != 4096);
    }
  }

  else if (v6 == 4)
  {
    v69 = 0;
    v71 = *v10;
    v70 = (v10 + 2);
    v72 = v71;
    v73 = 2 * v4;
    do
    {
      v74 = &v240[v69];
      v75 = *(&v70[-2] + v73);
      *v74 = vrhaddq_u16(v72, v75);
      v74[1] = vrhaddq_u16(v70[-1], *(&v70[-1] + v73));
      v74[2] = vrhaddq_u16(*v70, *(v70 + 2 * v4));
      v74[3] = vrhaddq_u16(v70[1], *(&v70[1] + v73));
      v69 += 4;
      v70 = (v70 + v73);
      v72 = v75;
    }

    while ((v69 * 16) != 4096);
    v76 = 0;
    v77 = (2 * v7 + 32);
    v13 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v78 = vsubq_s16(v240[v76], v77[-2]);
      v79 = vpadalq_s16(v16, v78);
      v80 = vmlal_s16(v13, *v78.i8, *v78.i8);
      v81 = vmlal_high_s16(v15, v78, v78);
      v82 = vsubq_s16(v240[v76 + 1], v77[-1]);
      v83 = vpadalq_s16(v79, v82);
      v84 = vmlal_s16(v80, *v82.i8, *v82.i8);
      v85 = vmlal_high_s16(v81, v82, v82);
      v86 = vsubq_s16(v240[v76 + 2], *v77);
      v87 = vpadalq_s16(v83, v86);
      v88 = vmlal_s16(v84, *v86.i8, *v86.i8);
      v89 = vmlal_high_s16(v85, v86, v86);
      v90 = vsubq_s16(v240[v76 + 3], v77[1]);
      v16 = vpadalq_s16(v87, v90);
      v13 = vmlal_s16(v88, *v90.i8, *v90.i8);
      v15 = vmlal_high_s16(v89, v90, v90);
      v76 += 4;
      v77 = (v77 + 2 * v8);
    }

    while ((v76 * 16) != 4096);
  }

  else if (v6)
  {
    v119 = 0;
    v120 = vdupq_n_s16(8 - v6);
    v121 = vdupq_n_s16(v6);
    v123 = *v10;
    v122 = (v10 + 2);
    v124 = v123;
    v125 = 2 * v4;
    do
    {
      v126 = &v240[v119];
      v127 = *(&v122[-2] + v125);
      *v126 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v124, v120), v127, v121), 3uLL);
      v126[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122[-1], v120), *(&v122[-1] + v125), v121), 3uLL);
      v126[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v122, v120), *(v122 + 2 * v4), v121), 3uLL);
      v126[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122[1], v120), *(&v122[1] + v125), v121), 3uLL);
      v119 += 4;
      v122 = (v122 + v125);
      v124 = v127;
    }

    while ((v119 * 16) != 4096);
    v128 = 0;
    v129 = (2 * v7 + 32);
    v13 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v130 = vsubq_s16(v240[v128], v129[-2]);
      v131 = vpadalq_s16(v16, v130);
      v132 = vmlal_s16(v13, *v130.i8, *v130.i8);
      v133 = vmlal_high_s16(v15, v130, v130);
      v134 = vsubq_s16(v240[v128 + 1], v129[-1]);
      v135 = vpadalq_s16(v131, v134);
      v136 = vmlal_s16(v132, *v134.i8, *v134.i8);
      v137 = vmlal_high_s16(v133, v134, v134);
      v138 = vsubq_s16(v240[v128 + 2], *v129);
      v139 = vpadalq_s16(v135, v138);
      v140 = vmlal_s16(v136, *v138.i8, *v138.i8);
      v141 = vmlal_high_s16(v137, v138, v138);
      v142 = vsubq_s16(v240[v128 + 3], v129[1]);
      v16 = vpadalq_s16(v139, v142);
      v13 = vmlal_s16(v140, *v142.i8, *v142.i8);
      v15 = vmlal_high_s16(v141, v142, v142);
      v128 += 4;
      v129 = (v129 + 2 * v8);
    }

    while ((v128 * 16) != 4096);
  }

  else
  {
    v11 = (v10 + 2);
    v12 = (2 * v7 + 32);
    v13 = 0uLL;
    v14 = -64;
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
      v30 = __CFADD__(v14++, 1);
    }

    while (!v30);
  }

  v235 = vaddvq_s32(v16);
  v236 = vaddlvq_u32(vaddq_s32(v15, v13));
  *v9 = (v236 + 8) >> 4;
  v237 = ((v236 + 8) >> 4) - (((((v235 << 30) + 0x80000000) >> 32) * (((v235 << 30) + 0x80000000) >> 32)) >> 11);
  return v237 & ~(v237 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_variance64x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return vpx_highbd_10_variance64x32_neon(v59 >> 1, 64, v7, v8, v9);
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
    return vpx_highbd_10_variance64x32_neon(v59 >> 1, 64, v7, v8, v9);
  }

  v11 = v3 & 0x7FFFFFFFFFFFFFFFLL;

  return vpx_highbd_10_variance64x32_neon(v11, v4, v7, v8, v9);
}

uint64_t vpx_highbd_10_sub_pixel_variance64x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return vpx_highbd_10_variance64x64_neon(v59 >> 1, 64, v7, v8, v9);
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
    return vpx_highbd_10_variance64x64_neon(v59 >> 1, 64, v7, v8, v9);
  }

  v11 = v3 & 0x7FFFFFFFFFFFFFFFLL;

  return vpx_highbd_10_variance64x64_neon(v11, v4, v7, v8, v9);
}

uint64_t vpx_highbd_12_sub_pixel_variance4x4_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = vdup_n_s16(8 - a3);
  v8 = vdup_n_s16(a3);
  v9 = vrshr_n_u16(vmla_s16(vmul_s16(*(2 * a1), v7), *(2 * a1 + 2), v8), 3uLL);
  v10 = 2 * a2;
  v11 = 2 * a1 + v10;
  v12 = vrshr_n_u16(vmla_s16(vmul_s16(*v11, v7), *(v11 + 2), v8), 3uLL);
  v13 = v11 + v10;
  v14 = vrshr_n_u16(vmla_s16(vmul_s16(*v13, v7), *(v13 + 2), v8), 3uLL);
  v15 = v13 + v10;
  v16 = vrshr_n_u16(vmla_s16(vmul_s16(*v15, v7), *(v15 + 2), v8), 3uLL);
  v17 = vmla_s16(vmul_s16(*(v15 + v10), v7), *(v15 + v10 + 2), v8);
  v18 = vdup_n_s16(8 - a4);
  v19 = vdup_n_s16(a4);
  *v20.i8 = vrshr_n_u16(vmla_s16(vmul_s16(v9, v18), v12, v19), 3uLL);
  v21 = vrshr_n_u16(vmla_s16(vmul_s16(v12, v18), v14, v19), 3uLL);
  *v22.i8 = vrshr_n_u16(vmla_s16(vmul_s16(v14, v18), v16, v19), 3uLL);
  v23 = vrshr_n_u16(vmla_s16(vmul_s16(v16, v18), vrshr_n_u16(v17, 3uLL), v19), 3uLL);
  v20.u64[1] = v21;
  v24 = 2 * a6;
  v25.i64[0] = *(2 * a5);
  v25.i64[1] = *(2 * a5 + v24);
  v26 = vsubq_s16(v20, v25);
  v27 = (2 * a5 + 4 * a6);
  v22.u64[1] = v23;
  v28.i64[0] = *v27;
  v28.i64[1] = *(v27 + v24);
  v29 = vsubq_s16(v22, v28);
  LODWORD(v27) = vaddlvq_s16(vaddq_s16(v29, v26));
  v30 = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v26.i8, *v26.i8), v26, v26), *v29.i8, *v29.i8), v29, v29)) + 128;
  *a7 = v30 >> 8;
  v31 = (v30 >> 8) - (((((v27 << 28) + 0x80000000) >> 32) * (((v27 << 28) + 0x80000000) >> 32)) >> 4);
  return v31 & ~(v31 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_variance4x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v7 = vdup_n_s16(8 - a3);
  v8 = vdup_n_s16(a3);
  v9 = vrshr_n_u16(vmla_s16(vmul_s16(*(2 * a1), v7), *(2 * a1 + 2), v8), 3uLL);
  v10 = 2 * a2;
  v11 = 2 * a1 + v10;
  v12 = vrshr_n_u16(vmla_s16(vmul_s16(*v11, v7), *(v11 + 2), v8), 3uLL);
  v13 = v11 + v10;
  v14 = vrshr_n_u16(vmla_s16(vmul_s16(*v13, v7), *(v13 + 2), v8), 3uLL);
  v15 = v13 + v10;
  v16 = vrshr_n_u16(vmla_s16(vmul_s16(*v15, v7), *(v15 + 2), v8), 3uLL);
  v17 = v15 + v10;
  v18 = vrshr_n_u16(vmla_s16(vmul_s16(*v17, v7), *(v17 + 2), v8), 3uLL);
  v19 = v17 + v10;
  v20 = vrshr_n_u16(vmla_s16(vmul_s16(*v19, v7), *(v19 + 2), v8), 3uLL);
  v21 = v19 + v10;
  v22 = vrshr_n_u16(vmla_s16(vmul_s16(*v21, v7), *(v21 + 2), v8), 3uLL);
  v23 = v21 + v10;
  v24 = vrshr_n_u16(vmla_s16(vmul_s16(*v23, v7), *(v23 + 2), v8), 3uLL);
  v25 = vrshr_n_u16(vmla_s16(vmul_s16(*(v23 + v10), v7), *(v23 + v10 + 2), v8), 3uLL);
  v26 = vdup_n_s16(8 - a4);
  v27 = vdup_n_s16(a4);
  v29[0] = vrshr_n_u16(vmla_s16(vmul_s16(v9, v26), v12, v27), 3uLL);
  v29[1] = vrshr_n_u16(vmla_s16(vmul_s16(v12, v26), v14, v27), 3uLL);
  v29[2] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v26), v16, v27), 3uLL);
  v29[3] = vrshr_n_u16(vmla_s16(vmul_s16(v16, v26), v18, v27), 3uLL);
  v29[4] = vrshr_n_u16(vmla_s16(vmul_s16(v18, v26), v20, v27), 3uLL);
  v29[5] = vrshr_n_u16(vmla_s16(vmul_s16(v20, v26), v22, v27), 3uLL);
  v29[6] = vrshr_n_u16(vmla_s16(vmul_s16(v22, v26), v24, v27), 3uLL);
  v29[7] = vrshr_n_u16(vmla_s16(vmul_s16(v24, v26), v25, v27), 3uLL);
  return vpx_highbd_12_variance4x8_neon(v29 >> 1, 4, a5, a6, a7);
}

uint64_t vpx_highbd_12_sub_pixel_variance8x4_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = vdupq_n_s16(8 - a3);
  v8 = vdupq_n_s16(a3);
  v9 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v7), *(2 * a1 + 2), v8), 3uLL);
  v10 = 2 * a2;
  v11 = 2 * a1 + v10;
  v12 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v11, v7), *(v11 + 2), v8), 3uLL);
  v13 = v11 + v10;
  v14 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v13, v7), *(v13 + 2), v8), 3uLL);
  v15 = v13 + v10;
  v16 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v15, v7), *(v15 + 2), v8), 3uLL);
  v17 = vmlaq_s16(vmulq_s16(*(v15 + v10), v7), *(v15 + v10 + 2), v8);
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v9, v18), v12, v19), 3uLL);
  v21 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v12, v18), v14, v19), 3uLL);
  v22 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v18), v16, v19), 3uLL);
  v23 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v18), vrshrq_n_u16(v17, 3uLL), v19), 3uLL);
  v24 = vsubq_s16(v20, *(2 * a5));
  v25 = 2 * a6;
  v26 = (2 * a5 + v25);
  v27 = vsubq_s16(v21, *v26);
  v28 = (v26 + v25);
  v29 = vsubq_s16(v22, *v28);
  v30 = vsubq_s16(v23, *(v28 + v25));
  v16.i32[0] = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v27), v24), v29), v30));
  v30.i64[0] = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v24.i8, *v24.i8), v24, v24), *v27.i8, *v27.i8), v27, v27), *v29.i8, *v29.i8), v29, v29), *v30.i8, *v30.i8), v30, v30));
  *a7 = (v30.i64[0] + 128) >> 8;
  v31 = ((v30.i64[0] + 128) >> 8) - (((((v16.i32[0] << 28) + 0x80000000) >> 32) * (((v16.i32[0] << 28) + 0x80000000) >> 32)) >> 5);
  return v31 & ~(v31 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_variance8x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = vdupq_n_s16(8 - a3);
  v8 = vdupq_n_s16(a3);
  v9 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v7), *(2 * a1 + 2), v8), 3uLL);
  v10 = 2 * a2;
  v11 = 2 * a1 + v10;
  v12 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v11, v7), *(v11 + 2), v8), 3uLL);
  v13 = v11 + v10;
  v14 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v13, v7), *(v13 + 2), v8), 3uLL);
  v15 = v13 + v10;
  v16 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v15, v7), *(v15 + 2), v8), 3uLL);
  v17 = v15 + v10;
  v18 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v17, v7), *(v17 + 2), v8), 3uLL);
  v19 = v17 + v10;
  v20 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v19, v7), *(v19 + 2), v8), 3uLL);
  v21 = v19 + v10;
  v22 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v21, v7), *(v21 + 2), v8), 3uLL);
  v23 = v21 + v10;
  v24 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v23, v7), *(v23 + 2), v8), 3uLL);
  v25 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v23 + v10), v7), *(v23 + v10 + 2), v8), 3uLL);
  v26 = vdupq_n_s16(8 - a4);
  v27 = vdupq_n_s16(a4);
  v29[0] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v9, v26), v12, v27), 3uLL);
  v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v12, v26), v14, v27), 3uLL);
  v29[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v26), v16, v27), 3uLL);
  v29[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v26), v18, v27), 3uLL);
  v29[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v18, v26), v20, v27), 3uLL);
  v29[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v26), v22, v27), 3uLL);
  v29[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v22, v26), v24, v27), 3uLL);
  v29[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v24, v26), v25, v27), 3uLL);
  return vpx_highbd_12_variance8x8_neon(v29 >> 1, 8, a5, a6, a7);
}

uint64_t vpx_highbd_12_sub_pixel_variance8x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = vdupq_n_s16(8 - a3);
  v8 = vdupq_n_s16(a3);
  v9 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v7), *(2 * a1 + 2), v8), 3uLL);
  v10 = 2 * a2;
  v11 = 2 * a1 + v10;
  v12 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v11, v7), *(v11 + 2), v8), 3uLL);
  v13 = v11 + v10;
  v14 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v13, v7), *(v13 + 2), v8), 3uLL);
  v15 = v13 + v10;
  v16 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v15, v7), *(v15 + 2), v8), 3uLL);
  v17 = v15 + v10;
  v18 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v17, v7), *(v17 + 2), v8), 3uLL);
  v19 = v17 + v10;
  v20 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v19, v7), *(v19 + 2), v8), 3uLL);
  v21 = v19 + v10;
  v22 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v21, v7), *(v21 + 2), v8), 3uLL);
  v23 = v21 + v10;
  v24 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v23, v7), *(v23 + 2), v8), 3uLL);
  v25 = v23 + v10;
  v26 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v25, v7), *(v25 + 2), v8), 3uLL);
  v27 = v25 + v10;
  v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v27, v7), *(v27 + 2), v8), 3uLL);
  v29 = v27 + v10;
  v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v29, v7), *(v29 + 2), v8), 3uLL);
  v31 = v29 + v10;
  v32 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v31, v7), *(v31 + 2), v8), 3uLL);
  v33 = v31 + v10;
  v34 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v33, v7), *(v33 + 2), v8), 3uLL);
  v35 = v33 + v10;
  v36 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v35, v7), *(v35 + 2), v8), 3uLL);
  v37 = v35 + v10;
  v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v37, v7), *(v37 + 2), v8), 3uLL);
  v39 = v37 + v10;
  v40 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v39, v7), *(v39 + 2), v8), 3uLL);
  v41 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v39 + v10), v7), *(v39 + v10 + 2), v8), 3uLL);
  v42 = vdupq_n_s16(8 - a4);
  v43 = vdupq_n_s16(a4);
  v45[0] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v9, v42), v12, v43), 3uLL);
  v45[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v12, v42), v14, v43), 3uLL);
  v45[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v42), v16, v43), 3uLL);
  v45[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v42), v18, v43), 3uLL);
  v45[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v18, v42), v20, v43), 3uLL);
  v45[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v42), v22, v43), 3uLL);
  v45[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v22, v42), v24, v43), 3uLL);
  v45[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v24, v42), v26, v43), 3uLL);
  v45[8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v26, v42), v28, v43), 3uLL);
  v45[9] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v42), v30, v43), 3uLL);
  v45[10] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v30, v42), v32, v43), 3uLL);
  v45[11] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v32, v42), v34, v43), 3uLL);
  v45[12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v34, v42), v36, v43), 3uLL);
  v45[13] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v36, v42), v38, v43), 3uLL);
  v45[14] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v38, v42), v40, v43), 3uLL);
  v45[15] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v40, v42), v41, v43), 3uLL);
  return vpx_highbd_12_variance8x16_neon(v45 >> 1, 8, a5, a6, a7);
}

uint64_t vpx_highbd_12_sub_pixel_variance16x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v164 = *MEMORY[0x277D85DE8];
  v7 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v54 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v146 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v147 = v54;
      v55 = 2 * a2;
      v56 = &v7->i8[v55];
      v148 = vrhaddq_u16(*v56, *(v56 + 2));
      v149 = vrhaddq_u16(*(v56 + 1), *(v56 + 18));
      v57 = &v56[v55];
      v150 = vrhaddq_u16(*v57, *(v57 + 2));
      v151 = vrhaddq_u16(*(v57 + 1), *(v57 + 18));
      v58 = &v57[v55];
      v152 = vrhaddq_u16(*v58, *(v58 + 2));
      v153 = vrhaddq_u16(*(v58 + 1), *(v58 + 18));
      v59 = &v58[v55];
      v154 = vrhaddq_u16(*v59, *(v59 + 2));
      v155 = vrhaddq_u16(*(v59 + 1), *(v59 + 18));
      v60 = &v59[v55];
      v156 = vrhaddq_u16(*v60, *(v60 + 2));
      v157 = vrhaddq_u16(*(v60 + 1), *(v60 + 18));
      v61 = &v60[v55];
      v158 = vrhaddq_u16(*v61, *(v61 + 2));
      v159 = vrhaddq_u16(*(v61 + 1), *(v61 + 18));
      v62 = &v61[v55];
      v160 = vrhaddq_u16(*v62, *(v62 + 2));
      v161 = vrhaddq_u16(*(v62 + 1), *(v62 + 18));
      v63 = &v62[v55];
      v162 = vrhaddq_u16(*v63, *(v63 + 2));
      v163 = vrhaddq_u16(*(v63 + 1), *(v63 + 18));
      v130 = vrhaddq_u16(v146, v148);
      v131 = vrhaddq_u16(v54, v149);
      v132 = vrhaddq_u16(v148, v150);
      v133 = vrhaddq_u16(v149, v151);
      v134 = vrhaddq_u16(v150, v152);
      v135 = vrhaddq_u16(v151, v153);
      v136 = vrhaddq_u16(v152, v154);
      v137 = vrhaddq_u16(v153, v155);
      v138 = vrhaddq_u16(v154, v156);
      v139 = vrhaddq_u16(v155, v157);
      v140 = vrhaddq_u16(v156, v158);
      v141 = vrhaddq_u16(v157, v159);
      v142 = vrhaddq_u16(v158, v160);
      v143 = vrhaddq_u16(v159, v161);
      v144 = vrhaddq_u16(v160, v162);
      v145 = vrhaddq_u16(v161, v163);
LABEL_23:
      v88 = &v130;
      return vpx_highbd_12_variance16x8_neon(v88 >> 1, 16, a5, a6, a7);
    }

    if (!a4)
    {
      v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v146 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v147 = v10;
      v11 = 2 * a2;
      v12 = &v7->i8[v11];
      v148 = vrhaddq_u16(*v12, *(v12 + 2));
      v149 = vrhaddq_u16(*(v12 + 1), *(v12 + 18));
      v13 = &v12[v11];
      v150 = vrhaddq_u16(*v13, *(v13 + 2));
      v151 = vrhaddq_u16(*(v13 + 1), *(v13 + 18));
      v14 = &v13[v11];
      v152 = vrhaddq_u16(*v14, *(v14 + 2));
      v153 = vrhaddq_u16(*(v14 + 1), *(v14 + 18));
      v15 = &v14[v11];
      v154 = vrhaddq_u16(*v15, *(v15 + 2));
      v155 = vrhaddq_u16(*(v15 + 1), *(v15 + 18));
      v16 = &v15[v11];
      v156 = vrhaddq_u16(*v16, *(v16 + 2));
      v157 = vrhaddq_u16(*(v16 + 1), *(v16 + 18));
      v17 = &v16[v11];
      v158 = vrhaddq_u16(*v17, *(v17 + 2));
      v159 = vrhaddq_u16(*(v17 + 1), *(v17 + 18));
      v18 = &v17[v11];
      v160 = vrhaddq_u16(*v18, *(v18 + 2));
      v19 = vrhaddq_u16(*(v18 + 1), *(v18 + 18));
LABEL_18:
      v161 = v19;
      v88 = &v146;
      return vpx_highbd_12_variance16x8_neon(v88 >> 1, 16, a5, a6, a7);
    }

    v89 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
    v146 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
    v147 = v89;
    v90 = 2 * a2;
    v91 = &v7->i8[v90];
    v148 = vrhaddq_u16(*v91, *(v91 + 2));
    v149 = vrhaddq_u16(*(v91 + 1), *(v91 + 18));
    v92 = &v91[v90];
    v150 = vrhaddq_u16(*v92, *(v92 + 2));
    v151 = vrhaddq_u16(*(v92 + 1), *(v92 + 18));
    v93 = &v92[v90];
    v152 = vrhaddq_u16(*v93, *(v93 + 2));
    v153 = vrhaddq_u16(*(v93 + 1), *(v93 + 18));
    v94 = &v93[v90];
    v154 = vrhaddq_u16(*v94, *(v94 + 2));
    v155 = vrhaddq_u16(*(v94 + 1), *(v94 + 18));
    v95 = &v94[v90];
    v156 = vrhaddq_u16(*v95, *(v95 + 2));
    v157 = vrhaddq_u16(*(v95 + 1), *(v95 + 18));
    v96 = &v95[v90];
    v158 = vrhaddq_u16(*v96, *(v96 + 2));
    v159 = vrhaddq_u16(*(v96 + 1), *(v96 + 18));
    v97 = &v96[v90];
    v160 = vrhaddq_u16(*v97, *(v97 + 2));
    v161 = vrhaddq_u16(*(v97 + 1), *(v97 + 18));
    v98 = &v97[v90];
    v162 = vrhaddq_u16(*v98, *(v98 + 2));
    v99 = vdupq_n_s16(8 - a4);
    v100 = vdupq_n_s16(a4);
    v163 = vrhaddq_u16(*(v98 + 1), *(v98 + 18));
    v130 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v146, v99), v148, v100), 3uLL);
    v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v89, v99), v149, v100), 3uLL);
    v132 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v148, v99), v150, v100), 3uLL);
    v133 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v149, v99), v151, v100), 3uLL);
    v134 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v150, v99), v152, v100), 3uLL);
    v135 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v151, v99), v153, v100), 3uLL);
    v136 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v152, v99), v154, v100), 3uLL);
    v137 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v153, v99), v155, v100), 3uLL);
    v138 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154, v99), v156, v100), 3uLL);
    v139 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v155, v99), v157, v100), 3uLL);
    v140 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v156, v99), v158, v100), 3uLL);
    v141 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v157, v99), v159, v100), 3uLL);
    v142 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v158, v99), v160, v100), 3uLL);
    v143 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v159, v99), v161, v100), 3uLL);
    v101 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v160, v99), v162, v100), 3uLL);
    v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v161, v99), v163, v100), 3uLL);
LABEL_22:
    v144 = v101;
    v145 = v102;
    goto LABEL_23;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v103 = vdupq_n_s16(8 - a3);
      v104 = vdupq_n_s16(a3);
      v105 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v103), *(2 * a1 + 0x12), v104), 3uLL);
      v146 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v103), *(2 * a1 + 2), v104), 3uLL);
      v147 = v105;
      v106 = 2 * a2;
      v107 = &v7->i8[v106];
      v148 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v107, v103), *(v107 + 2), v104), 3uLL);
      v149 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v107 + 1), v103), *(v107 + 18), v104), 3uLL);
      v108 = &v107[v106];
      v150 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v108, v103), *(v108 + 2), v104), 3uLL);
      v151 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v108 + 1), v103), *(v108 + 18), v104), 3uLL);
      v109 = &v108[v106];
      v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v109, v103), *(v109 + 2), v104), 3uLL);
      v153 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v109 + 1), v103), *(v109 + 18), v104), 3uLL);
      v110 = &v109[v106];
      v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v110, v103), *(v110 + 2), v104), 3uLL);
      v155 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v110 + 1), v103), *(v110 + 18), v104), 3uLL);
      v111 = &v110[v106];
      v156 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v111, v103), *(v111 + 2), v104), 3uLL);
      v157 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v111 + 1), v103), *(v111 + 18), v104), 3uLL);
      v112 = &v111[v106];
      v158 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v112, v103), *(v112 + 2), v104), 3uLL);
      v159 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v112 + 1), v103), *(v112 + 18), v104), 3uLL);
      v113 = &v112[v106];
      v160 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v113, v103), *(v113 + 2), v104), 3uLL);
      v161 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v113 + 1), v103), *(v113 + 18), v104), 3uLL);
      v114 = &v113[v106];
      v162 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v114, v103), *(v114 + 2), v104), 3uLL);
      v163 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v114 + 1), v103), *(v114 + 18), v104), 3uLL);
      v130 = vrhaddq_u16(v146, v148);
      v131 = vrhaddq_u16(v105, v149);
      v132 = vrhaddq_u16(v148, v150);
      v133 = vrhaddq_u16(v149, v151);
      v134 = vrhaddq_u16(v150, v152);
      v135 = vrhaddq_u16(v151, v153);
      v136 = vrhaddq_u16(v152, v154);
      v137 = vrhaddq_u16(v153, v155);
      v138 = vrhaddq_u16(v154, v156);
      v139 = vrhaddq_u16(v155, v157);
      v140 = vrhaddq_u16(v156, v158);
      v141 = vrhaddq_u16(v157, v159);
      v142 = vrhaddq_u16(v158, v160);
      v143 = vrhaddq_u16(v159, v161);
      v101 = vrhaddq_u16(v160, v162);
      v102 = vrhaddq_u16(v161, v163);
    }

    else
    {
      if (!a4)
      {
        v20 = vdupq_n_s16(8 - a3);
        v21 = vdupq_n_s16(a3);
        v22 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v20), *(2 * a1 + 0x12), v21), 3uLL);
        v146 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v20), *(2 * a1 + 2), v21), 3uLL);
        v147 = v22;
        v23 = 2 * a2;
        v24 = &v7->i8[v23];
        v148 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v24, v20), *(v24 + 2), v21), 3uLL);
        v149 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 1), v20), *(v24 + 18), v21), 3uLL);
        v25 = &v24[v23];
        v150 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v25, v20), *(v25 + 2), v21), 3uLL);
        v151 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + 1), v20), *(v25 + 18), v21), 3uLL);
        v26 = &v25[v23];
        v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v26, v20), *(v26 + 2), v21), 3uLL);
        v153 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 + 1), v20), *(v26 + 18), v21), 3uLL);
        v27 = &v26[v23];
        v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v27, v20), *(v27 + 2), v21), 3uLL);
        v155 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 + 1), v20), *(v27 + 18), v21), 3uLL);
        v28 = &v27[v23];
        v156 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v28, v20), *(v28 + 2), v21), 3uLL);
        v157 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v28 + 1), v20), *(v28 + 18), v21), 3uLL);
        v29 = &v28[v23];
        v158 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v29, v20), *(v29 + 2), v21), 3uLL);
        v159 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v29 + 1), v20), *(v29 + 18), v21), 3uLL);
        v30 = &v29[v23];
        v160 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v30, v20), *(v30 + 2), v21), 3uLL);
        v31 = vmlaq_s16(vmulq_s16(*(v30 + 1), v20), *(v30 + 18), v21);
LABEL_17:
        v19 = vrshrq_n_u16(v31, 3uLL);
        goto LABEL_18;
      }

      v115 = vdupq_n_s16(8 - a3);
      v116 = vdupq_n_s16(a3);
      v117 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v115), *(2 * a1 + 0x12), v116), 3uLL);
      v146 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v115), *(2 * a1 + 2), v116), 3uLL);
      v147 = v117;
      v118 = 2 * a2;
      v119 = &v7->i8[v118];
      v148 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v119, v115), *(v119 + 2), v116), 3uLL);
      v149 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v119 + 1), v115), *(v119 + 18), v116), 3uLL);
      v120 = &v119[v118];
      v150 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v120, v115), *(v120 + 2), v116), 3uLL);
      v151 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v120 + 1), v115), *(v120 + 18), v116), 3uLL);
      v121 = &v120[v118];
      v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v121, v115), *(v121 + 2), v116), 3uLL);
      v153 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v121 + 1), v115), *(v121 + 18), v116), 3uLL);
      v122 = &v121[v118];
      v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v122, v115), *(v122 + 2), v116), 3uLL);
      v155 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v122 + 1), v115), *(v122 + 18), v116), 3uLL);
      v123 = &v122[v118];
      v156 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v123, v115), *(v123 + 2), v116), 3uLL);
      v157 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v123 + 1), v115), *(v123 + 18), v116), 3uLL);
      v124 = &v123[v118];
      v158 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v124, v115), *(v124 + 2), v116), 3uLL);
      v159 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v124 + 1), v115), *(v124 + 18), v116), 3uLL);
      v125 = &v124[v118];
      v160 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v125, v115), *(v125 + 2), v116), 3uLL);
      v161 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v125 + 1), v115), *(v125 + 18), v116), 3uLL);
      v126 = &v125[v118];
      v162 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v126, v115), *(v126 + 2), v116), 3uLL);
      v127 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v126 + 1), v115), *(v126 + 18), v116), 3uLL);
      v128 = vdupq_n_s16(8 - a4);
      v129 = vdupq_n_s16(a4);
      v163 = v127;
      v130 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v146, v128), v148, v129), 3uLL);
      v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v117, v128), v149, v129), 3uLL);
      v132 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v148, v128), v150, v129), 3uLL);
      v133 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v149, v128), v151, v129), 3uLL);
      v134 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v150, v128), v152, v129), 3uLL);
      v135 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v151, v128), v153, v129), 3uLL);
      v136 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v152, v128), v154, v129), 3uLL);
      v137 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v153, v128), v155, v129), 3uLL);
      v138 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154, v128), v156, v129), 3uLL);
      v139 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v155, v128), v157, v129), 3uLL);
      v140 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v156, v128), v158, v129), 3uLL);
      v141 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v157, v128), v159, v129), 3uLL);
      v142 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v158, v128), v160, v129), 3uLL);
      v143 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v159, v128), v161, v129), 3uLL);
      v101 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v160, v128), v162, v129), 3uLL);
      v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v161, v128), v127, v129), 3uLL);
    }

    goto LABEL_22;
  }

  if (a4 == 4)
  {
    v32 = 2 * a2;
    v33 = *(v7 + v32);
    v146 = vrhaddq_u16(*v7, v33);
    v34 = *(&v7[1] + v32);
    v147 = vrhaddq_u16(*(2 * a1 + 0x10), v34);
    v35 = &v7->i8[v32 + v32];
    v36 = *v35;
    v148 = vrhaddq_u16(v33, *v35);
    v37 = v35[1];
    v149 = vrhaddq_u16(v34, v37);
    v38 = (v35 + v32);
    v39 = *v38;
    v150 = vrhaddq_u16(v36, *v38);
    v40 = v38[1];
    v151 = vrhaddq_u16(v37, v40);
    v41 = (v38 + v32);
    v42 = *v41;
    v152 = vrhaddq_u16(v39, *v41);
    v43 = v41[1];
    v153 = vrhaddq_u16(v40, v43);
    v44 = (v41 + v32);
    v45 = *v44;
    v154 = vrhaddq_u16(v42, *v44);
    v46 = v44[1];
    v155 = vrhaddq_u16(v43, v46);
    v47 = (v44 + v32);
    v48 = *v47;
    v156 = vrhaddq_u16(v45, *v47);
    v49 = v47[1];
    v157 = vrhaddq_u16(v46, v49);
    v50 = (v47 + v32);
    v51 = *v50;
    v158 = vrhaddq_u16(v48, *v50);
    v52 = v50[1];
    v159 = vrhaddq_u16(v49, v52);
    v53 = (v50 + v32);
    v160 = vrhaddq_u16(v51, *v53);
    v19 = vrhaddq_u16(v52, v53[1]);
    goto LABEL_18;
  }

  if (a4)
  {
    v64 = vdupq_n_s16(8 - a4);
    v65 = vdupq_n_s16(a4);
    v66 = 2 * a2;
    v67 = *(v7 + v66);
    v146 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v64), v67, v65), 3uLL);
    v68 = *(v7 + v66 + 16);
    v147 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v64), v68, v65), 3uLL);
    v69 = (v7 + v66 + v66);
    v70 = *v69;
    v148 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v64), *v69, v65), 3uLL);
    v71 = v69[1];
    v149 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68, v64), v71, v65), 3uLL);
    v72 = (v69 + v66);
    v73 = *v72;
    v150 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v70, v64), *v72, v65), 3uLL);
    v74 = v72[1];
    v151 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v64), v74, v65), 3uLL);
    v75 = (v72 + v66);
    v76 = *v75;
    v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v73, v64), *v75, v65), 3uLL);
    v77 = v75[1];
    v153 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v74, v64), v77, v65), 3uLL);
    v78 = (v75 + v66);
    v79 = *v78;
    v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v76, v64), *v78, v65), 3uLL);
    v80 = v78[1];
    v155 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v77, v64), v80, v65), 3uLL);
    v81 = (v78 + v66);
    v82 = *v81;
    v156 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v79, v64), *v81, v65), 3uLL);
    v83 = v81[1];
    v157 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v80, v64), v83, v65), 3uLL);
    v84 = (v81 + v66);
    v85 = *v84;
    v158 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v82, v64), *v84, v65), 3uLL);
    v86 = v84[1];
    v159 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v83, v64), v86, v65), 3uLL);
    v87 = (v84 + v66);
    v160 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v85, v64), *v87, v65), 3uLL);
    v31 = vmlaq_s16(vmulq_s16(v86, v64), v87[1], v65);
    goto LABEL_17;
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return vpx_highbd_12_variance16x8_neon(v8, a2, a5, a6, a7);
}

uint64_t vpx_highbd_12_sub_pixel_variance16x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v352 = *MEMORY[0x277D85DE8];
  v7 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v121 = 0;
      v283 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v318 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v319 = v283;
      v122 = 2 * a2;
      v320 = vrhaddq_u16(*(v7 + v122), *(v7 + v122 + 2));
      v321 = vrhaddq_u16(*(&v7[1] + v122), *(&v7[1] + v122 + 2));
      v123 = &v7->i8[v122 + v122];
      v322 = vrhaddq_u16(*v123, *(v123 + 2));
      v323 = vrhaddq_u16(*(v123 + 1), *(v123 + 18));
      v124 = &v123[v122];
      v324 = vrhaddq_u16(*v124, *(v124 + 2));
      v325 = vrhaddq_u16(*(v124 + 1), *(v124 + 18));
      v125 = &v124[v122];
      v326 = vrhaddq_u16(*v125, *(v125 + 2));
      v327 = vrhaddq_u16(*(v125 + 1), *(v125 + 18));
      v126 = &v125[v122];
      v328 = vrhaddq_u16(*v126, *(v126 + 2));
      v329 = vrhaddq_u16(*(v126 + 1), *(v126 + 18));
      v127 = &v126[v122];
      v330 = vrhaddq_u16(*v127, *(v127 + 2));
      v331 = vrhaddq_u16(*(v127 + 1), *(v127 + 18));
      v128 = &v127[v122];
      v332 = vrhaddq_u16(*v128, *(v128 + 2));
      v333 = vrhaddq_u16(*(v128 + 1), *(v128 + 18));
      v129 = &v128[v122];
      v334 = vrhaddq_u16(*v129, *(v129 + 2));
      v335 = vrhaddq_u16(*(v129 + 1), *(v129 + 18));
      v130 = &v129[v122];
      v336 = vrhaddq_u16(*v130, *(v130 + 2));
      v337 = vrhaddq_u16(*(v130 + 1), *(v130 + 18));
      v131 = &v130[v122];
      v338 = vrhaddq_u16(*v131, *(v131 + 2));
      v339 = vrhaddq_u16(*(v131 + 16), *(v131 + 18));
      v132 = v131 + v122;
      v340 = vrhaddq_u16(*v132, *(v132 + 2));
      v341 = vrhaddq_u16(*(v132 + 16), *(v132 + 18));
      v133 = v132 + v122;
      v342 = vrhaddq_u16(*v133, *(v133 + 2));
      v343 = vrhaddq_u16(*(v133 + 16), *(v133 + 18));
      v134 = v133 + v122;
      v344 = vrhaddq_u16(*v134, *(v134 + 2));
      v345 = vrhaddq_u16(*(v134 + 16), *(v134 + 18));
      v135 = v134 + v122;
      v346 = vrhaddq_u16(*v135, *(v135 + 2));
      v347 = vrhaddq_u16(*(v135 + 16), *(v135 + 18));
      v136 = v135 + v122;
      v348 = vrhaddq_u16(*v136, *(v136 + 2));
      v137 = v136 + v122;
      v349 = vrhaddq_u16(*(v136 + 16), *(v136 + 18));
      v350 = vrhaddq_u16(*v137, *(v137 + 2));
      v138 = vrhaddq_u16(*(v137 + 16), *(v137 + 18));
      v286 = vrhaddq_u16(v318, v320);
      v287 = vrhaddq_u16(v283, v321);
      v288 = vrhaddq_u16(v320, v322);
      v289 = vrhaddq_u16(v321, v323);
      v290 = vrhaddq_u16(v322, v324);
      v291 = vrhaddq_u16(v323, v325);
      v292 = vrhaddq_u16(v324, v326);
      v293 = vrhaddq_u16(v325, v327);
      v294 = vrhaddq_u16(v326, v328);
      v295 = vrhaddq_u16(v327, v329);
      v296 = vrhaddq_u16(v328, v330);
      v297 = vrhaddq_u16(v329, v331);
      v298 = vrhaddq_u16(v330, v332);
      v299 = vrhaddq_u16(v331, v333);
      v300 = vrhaddq_u16(v332, v334);
      v301 = vrhaddq_u16(v333, v335);
      v302 = vrhaddq_u16(v334, v336);
      v303 = vrhaddq_u16(v335, v337);
      v304 = vrhaddq_u16(v336, v338);
      v305 = vrhaddq_u16(v337, v339);
      v306 = vrhaddq_u16(v338, v340);
      v307 = vrhaddq_u16(v339, v341);
      v308 = vrhaddq_u16(v340, v342);
      v309 = vrhaddq_u16(v341, v343);
      v310 = vrhaddq_u16(v342, v344);
      v311 = vrhaddq_u16(v343, v345);
      v312 = vrhaddq_u16(v344, v346);
      v313 = vrhaddq_u16(v345, v347);
      v314 = vrhaddq_u16(v346, v348);
      v315 = vrhaddq_u16(v347, v349);
      v351 = v138;
      v316 = vrhaddq_u16(v348, v350);
      v317 = vrhaddq_u16(v349, v138);
      v139 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v140 = vsubq_s16(*(&v286 + v121), v139[-1]);
        v141 = vpadalq_s16(v13, v140);
        v142 = vmlal_s16(v10, *v140.i8, *v140.i8);
        v143 = vmlal_high_s16(v12, v140, v140);
        v144 = vsubq_s16(*(&v286 + v121 + 16), *v139);
        v13 = vpadalq_s16(v141, v144);
        v10 = vmlal_s16(v142, *v144.i8, *v144.i8);
        v12 = vmlal_high_s16(v143, v144, v144);
        v121 += 32;
        v139 = (v139 + 2 * a6);
      }

      while (v121 != 512);
    }

    else
    {
      v20 = 0;
      if (a4)
      {
        v284 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
        v318 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
        v319 = v284;
        v201 = 2 * a2;
        v320 = vrhaddq_u16(*(v7 + v201), *(v7 + v201 + 2));
        v321 = vrhaddq_u16(*(&v7[1] + v201), *(&v7[1] + v201 + 2));
        v202 = &v7->i8[v201 + v201];
        v322 = vrhaddq_u16(*v202, *(v202 + 2));
        v323 = vrhaddq_u16(*(v202 + 1), *(v202 + 18));
        v203 = &v202[v201];
        v324 = vrhaddq_u16(*v203, *(v203 + 2));
        v325 = vrhaddq_u16(*(v203 + 1), *(v203 + 18));
        v204 = &v203[v201];
        v326 = vrhaddq_u16(*v204, *(v204 + 2));
        v327 = vrhaddq_u16(*(v204 + 1), *(v204 + 18));
        v205 = &v204[v201];
        v328 = vrhaddq_u16(*v205, *(v205 + 2));
        v329 = vrhaddq_u16(*(v205 + 1), *(v205 + 18));
        v206 = &v205[v201];
        v330 = vrhaddq_u16(*v206, *(v206 + 2));
        v331 = vrhaddq_u16(*(v206 + 1), *(v206 + 18));
        v207 = &v206[v201];
        v332 = vrhaddq_u16(*v207, *(v207 + 2));
        v333 = vrhaddq_u16(*(v207 + 1), *(v207 + 18));
        v208 = &v207[v201];
        v334 = vrhaddq_u16(*v208, *(v208 + 2));
        v335 = vrhaddq_u16(*(v208 + 1), *(v208 + 18));
        v209 = &v208[v201];
        v336 = vrhaddq_u16(*v209, *(v209 + 2));
        v337 = vrhaddq_u16(*(v209 + 1), *(v209 + 18));
        v210 = &v209[v201];
        v338 = vrhaddq_u16(*v210, *(v210 + 2));
        v339 = vrhaddq_u16(*(v210 + 16), *(v210 + 18));
        v211 = v210 + v201;
        v340 = vrhaddq_u16(*v211, *(v211 + 2));
        v341 = vrhaddq_u16(*(v211 + 16), *(v211 + 18));
        v212 = v211 + v201;
        v342 = vrhaddq_u16(*v212, *(v212 + 2));
        v343 = vrhaddq_u16(*(v212 + 16), *(v212 + 18));
        v213 = v212 + v201;
        v344 = vrhaddq_u16(*v213, *(v213 + 2));
        v345 = vrhaddq_u16(*(v213 + 16), *(v213 + 18));
        v214 = v213 + v201;
        v346 = vrhaddq_u16(*v214, *(v214 + 2));
        v347 = vrhaddq_u16(*(v214 + 16), *(v214 + 18));
        v215 = v214 + v201;
        v348 = vrhaddq_u16(*v215, *(v215 + 2));
        v216 = v215 + v201;
        v349 = vrhaddq_u16(*(v215 + 16), *(v215 + 18));
        v350 = vrhaddq_u16(*v216, *(v216 + 2));
        v217 = vdupq_n_s16(8 - a4);
        v218 = vdupq_n_s16(a4);
        v351 = vrhaddq_u16(*(v216 + 16), *(v216 + 18));
        v286 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v318, v217), v320, v218), 3uLL);
        v287 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v284, v217), v321, v218), 3uLL);
        v288 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v320, v217), v322, v218), 3uLL);
        v289 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v321, v217), v323, v218), 3uLL);
        v290 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v322, v217), v324, v218), 3uLL);
        v291 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v323, v217), v325, v218), 3uLL);
        v292 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v324, v217), v326, v218), 3uLL);
        v293 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v325, v217), v327, v218), 3uLL);
        v294 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v326, v217), v328, v218), 3uLL);
        v295 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v327, v217), v329, v218), 3uLL);
        v296 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v328, v217), v330, v218), 3uLL);
        v297 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v329, v217), v331, v218), 3uLL);
        v298 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v330, v217), v332, v218), 3uLL);
        v299 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v331, v217), v333, v218), 3uLL);
        v300 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v332, v217), v334, v218), 3uLL);
        v301 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v333, v217), v335, v218), 3uLL);
        v302 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v334, v217), v336, v218), 3uLL);
        v303 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v335, v217), v337, v218), 3uLL);
        v304 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v336, v217), v338, v218), 3uLL);
        v305 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v337, v217), v339, v218), 3uLL);
        v306 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v338, v217), v340, v218), 3uLL);
        v307 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v339, v217), v341, v218), 3uLL);
        v308 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v340, v217), v342, v218), 3uLL);
        v309 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v341, v217), v343, v218), 3uLL);
        v310 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v342, v217), v344, v218), 3uLL);
        v311 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v343, v217), v345, v218), 3uLL);
        v312 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v344, v217), v346, v218), 3uLL);
        v313 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v345, v217), v347, v218), 3uLL);
        v314 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v346, v217), v348, v218), 3uLL);
        v315 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v347, v217), v349, v218), 3uLL);
        v316 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v348, v217), v350, v218), 3uLL);
        v317 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v349, v217), v351, v218), 3uLL);
        v219 = (2 * a5 + 16);
        v10 = 0uLL;
        v12 = 0uLL;
        v13 = 0uLL;
        do
        {
          v220 = vsubq_s16(*(&v286 + v20), v219[-1]);
          v221 = vpadalq_s16(v13, v220);
          v222 = vmlal_s16(v10, *v220.i8, *v220.i8);
          v223 = vmlal_high_s16(v12, v220, v220);
          v224 = vsubq_s16(*(&v286 + v20 + 16), *v219);
          v13 = vpadalq_s16(v221, v224);
          v10 = vmlal_s16(v222, *v224.i8, *v224.i8);
          v12 = vmlal_high_s16(v223, v224, v224);
          v20 += 32;
          v219 = (v219 + 2 * a6);
        }

        while (v20 != 512);
      }

      else
      {
        v21 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
        v318 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
        v319 = v21;
        v22 = 2 * a2;
        v320 = vrhaddq_u16(*(v7 + v22), *(v7 + v22 + 2));
        v321 = vrhaddq_u16(*(&v7[1] + v22), *(&v7[1] + v22 + 2));
        v23 = &v7->i8[v22 + v22];
        v322 = vrhaddq_u16(*v23, *(v23 + 2));
        v323 = vrhaddq_u16(*(v23 + 1), *(v23 + 18));
        v24 = &v23[v22];
        v324 = vrhaddq_u16(*v24, *(v24 + 2));
        v325 = vrhaddq_u16(*(v24 + 1), *(v24 + 18));
        v25 = &v24[v22];
        v326 = vrhaddq_u16(*v25, *(v25 + 2));
        v327 = vrhaddq_u16(*(v25 + 1), *(v25 + 18));
        v26 = &v25[v22];
        v328 = vrhaddq_u16(*v26, *(v26 + 2));
        v329 = vrhaddq_u16(*(v26 + 1), *(v26 + 18));
        v27 = &v26[v22];
        v330 = vrhaddq_u16(*v27, *(v27 + 2));
        v331 = vrhaddq_u16(*(v27 + 1), *(v27 + 18));
        v28 = &v27[v22];
        v332 = vrhaddq_u16(*v28, *(v28 + 2));
        v333 = vrhaddq_u16(*(v28 + 1), *(v28 + 18));
        v29 = &v28[v22];
        v334 = vrhaddq_u16(*v29, *(v29 + 2));
        v335 = vrhaddq_u16(*(v29 + 1), *(v29 + 18));
        v30 = &v29[v22];
        v336 = vrhaddq_u16(*v30, *(v30 + 2));
        v337 = vrhaddq_u16(*(v30 + 1), *(v30 + 18));
        v31 = &v30[v22];
        v338 = vrhaddq_u16(*v31, *(v31 + 2));
        v339 = vrhaddq_u16(*(v31 + 16), *(v31 + 18));
        v32 = v31 + v22;
        v340 = vrhaddq_u16(*v32, *(v32 + 2));
        v341 = vrhaddq_u16(*(v32 + 16), *(v32 + 18));
        v33 = v32 + v22;
        v342 = vrhaddq_u16(*v33, *(v33 + 2));
        v343 = vrhaddq_u16(*(v33 + 16), *(v33 + 18));
        v34 = v33 + v22;
        v344 = vrhaddq_u16(*v34, *(v34 + 2));
        v345 = vrhaddq_u16(*(v34 + 16), *(v34 + 18));
        v35 = v34 + v22;
        v346 = vrhaddq_u16(*v35, *(v35 + 2));
        v36 = v35 + v22;
        v347 = vrhaddq_u16(*(v35 + 16), *(v35 + 18));
        v348 = vrhaddq_u16(*v36, *(v36 + 2));
        v349 = vrhaddq_u16(*(v36 + 16), *(v36 + 18));
        v37 = (2 * a5 + 16);
        v10 = 0uLL;
        v12 = 0uLL;
        v13 = 0uLL;
        do
        {
          v38 = vsubq_s16(*(&v318 + v20), v37[-1]);
          v39 = vpadalq_s16(v13, v38);
          v40 = vmlal_s16(v10, *v38.i8, *v38.i8);
          v41 = vmlal_high_s16(v12, v38, v38);
          v42 = vsubq_s16(*(&v318 + v20 + 16), *v37);
          v13 = vpadalq_s16(v39, v42);
          v10 = vmlal_s16(v40, *v42.i8, *v42.i8);
          v12 = vmlal_high_s16(v41, v42, v42);
          v20 += 32;
          v37 = (v37 + 2 * a6);
        }

        while (v20 != 512);
      }
    }
  }

  else if (a3)
  {
    v43 = 0;
    if (a4 == 4)
    {
      v225 = vdupq_n_s16(8 - a3);
      v226 = vdupq_n_s16(a3);
      v285 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v225), *(2 * a1 + 0x12), v226), 3uLL);
      v318 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v225), *(2 * a1 + 2), v226), 3uLL);
      v319 = v285;
      v227 = 2 * a2;
      v320 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v227), v225), *(v7 + v227 + 2), v226), 3uLL);
      v321 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v7[1] + v227), v225), *(&v7[1] + v227 + 2), v226), 3uLL);
      v228 = &v7->i8[v227 + v227];
      v322 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v228, v225), *(v228 + 2), v226), 3uLL);
      v323 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v228 + 1), v225), *(v228 + 18), v226), 3uLL);
      v229 = &v228[v227];
      v324 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v229, v225), *(v229 + 2), v226), 3uLL);
      v325 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v229 + 1), v225), *(v229 + 18), v226), 3uLL);
      v230 = &v229[v227];
      v326 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v230, v225), *(v230 + 2), v226), 3uLL);
      v327 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v230 + 1), v225), *(v230 + 18), v226), 3uLL);
      v231 = &v230[v227];
      v328 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v231, v225), *(v231 + 2), v226), 3uLL);
      v329 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v231 + 1), v225), *(v231 + 18), v226), 3uLL);
      v232 = &v231[v227];
      v330 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v232, v225), *(v232 + 2), v226), 3uLL);
      v331 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v232 + 1), v225), *(v232 + 18), v226), 3uLL);
      v233 = &v232[v227];
      v332 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v233, v225), *(v233 + 2), v226), 3uLL);
      v333 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v233 + 1), v225), *(v233 + 18), v226), 3uLL);
      v234 = &v233[v227];
      v334 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v234, v225), *(v234 + 2), v226), 3uLL);
      v335 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v234 + 1), v225), *(v234 + 18), v226), 3uLL);
      v235 = &v234[v227];
      v336 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v235, v225), *(v235 + 2), v226), 3uLL);
      v337 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 + 1), v225), *(v235 + 18), v226), 3uLL);
      v236 = &v235[v227];
      v338 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v236, v225), *(v236 + 2), v226), 3uLL);
      v339 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v236 + 16), v225), *(v236 + 18), v226), 3uLL);
      v237 = v236 + v227;
      v340 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v237, v225), *(v237 + 2), v226), 3uLL);
      v341 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v237 + 16), v225), *(v237 + 18), v226), 3uLL);
      v238 = v237 + v227;
      v342 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v238, v225), *(v238 + 2), v226), 3uLL);
      v343 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v238 + 16), v225), *(v238 + 18), v226), 3uLL);
      v239 = v238 + v227;
      v344 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v239, v225), *(v239 + 2), v226), 3uLL);
      v345 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v239 + 16), v225), *(v239 + 18), v226), 3uLL);
      v240 = v239 + v227;
      v346 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v240, v225), *(v240 + 2), v226), 3uLL);
      v347 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v240 + 16), v225), *(v240 + 18), v226), 3uLL);
      v241 = v240 + v227;
      v348 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v241, v225), *(v241 + 2), v226), 3uLL);
      v349 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v241 + 16), v225), *(v241 + 18), v226), 3uLL);
      v242 = v241 + v227;
      v350 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v242, v225), *(v242 + 2), v226), 3uLL);
      v243 = vmlaq_s16(vmulq_s16(*(v242 + 16), v225), *(v242 + 18), v226);
      v286 = vrhaddq_u16(v318, v320);
      v287 = vrhaddq_u16(v285, v321);
      v288 = vrhaddq_u16(v320, v322);
      v289 = vrhaddq_u16(v321, v323);
      v290 = vrhaddq_u16(v322, v324);
      v291 = vrhaddq_u16(v323, v325);
      v292 = vrhaddq_u16(v324, v326);
      v293 = vrhaddq_u16(v325, v327);
      v294 = vrhaddq_u16(v326, v328);
      v295 = vrhaddq_u16(v327, v329);
      v296 = vrhaddq_u16(v328, v330);
      v297 = vrhaddq_u16(v329, v331);
      v298 = vrhaddq_u16(v330, v332);
      v299 = vrhaddq_u16(v331, v333);
      v300 = vrhaddq_u16(v332, v334);
      v301 = vrhaddq_u16(v333, v335);
      v302 = vrhaddq_u16(v334, v336);
      v303 = vrhaddq_u16(v335, v337);
      v304 = vrhaddq_u16(v336, v338);
      v305 = vrhaddq_u16(v337, v339);
      v306 = vrhaddq_u16(v338, v340);
      v307 = vrhaddq_u16(v339, v341);
      v308 = vrhaddq_u16(v340, v342);
      v309 = vrhaddq_u16(v341, v343);
      v310 = vrhaddq_u16(v342, v344);
      v311 = vrhaddq_u16(v343, v345);
      v312 = vrhaddq_u16(v344, v346);
      v313 = vrhaddq_u16(v345, v347);
      v314 = vrhaddq_u16(v346, v348);
      v315 = vrhaddq_u16(v347, v349);
      v351 = vrshrq_n_u16(v243, 3uLL);
      v316 = vrhaddq_u16(v348, v350);
      v317 = vrhaddq_u16(v349, v351);
      v244 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v245 = vsubq_s16(*(&v286 + v43), v244[-1]);
        v246 = vpadalq_s16(v13, v245);
        v247 = vmlal_s16(v10, *v245.i8, *v245.i8);
        v248 = vmlal_high_s16(v12, v245, v245);
        v249 = vsubq_s16(*(&v286 + v43 + 16), *v244);
        v13 = vpadalq_s16(v246, v249);
        v10 = vmlal_s16(v247, *v249.i8, *v249.i8);
        v12 = vmlal_high_s16(v248, v249, v249);
        v43 += 32;
        v244 = (v244 + 2 * a6);
      }

      while (v43 != 512);
    }

    else if (a4)
    {
      v250 = vdupq_n_s16(8 - a3);
      v251 = vdupq_n_s16(a3);
      v252 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v250), *(2 * a1 + 0x12), v251), 3uLL);
      v318 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v250), *(2 * a1 + 2), v251), 3uLL);
      v319 = v252;
      v253 = 2 * a2;
      v254 = &v7->i8[v253];
      v320 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v254, v250), *(v254 + 2), v251), 3uLL);
      v321 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v254 + 1), v250), *(v254 + 18), v251), 3uLL);
      v255 = &v254[v253];
      v322 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v255, v250), *(v255 + 2), v251), 3uLL);
      v323 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v255 + 1), v250), *(v255 + 18), v251), 3uLL);
      v256 = &v255[v253];
      v324 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v256, v250), *(v256 + 2), v251), 3uLL);
      v325 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v256 + 1), v250), *(v256 + 18), v251), 3uLL);
      v257 = &v256[v253];
      v326 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v257, v250), *(v257 + 2), v251), 3uLL);
      v327 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v257 + 1), v250), *(v257 + 18), v251), 3uLL);
      v258 = &v257[v253];
      v328 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v258, v250), *(v258 + 2), v251), 3uLL);
      v329 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v258 + 1), v250), *(v258 + 18), v251), 3uLL);
      v259 = &v258[v253];
      v330 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v259, v250), *(v259 + 2), v251), 3uLL);
      v331 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v259 + 1), v250), *(v259 + 18), v251), 3uLL);
      v260 = &v259[v253];
      v332 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v260, v250), *(v260 + 2), v251), 3uLL);
      v333 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v260 + 1), v250), *(v260 + 18), v251), 3uLL);
      v261 = &v260[v253];
      v334 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v261, v250), *(v261 + 2), v251), 3uLL);
      v335 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v261 + 1), v250), *(v261 + 18), v251), 3uLL);
      v262 = &v261[v253];
      v336 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v262, v250), *(v262 + 2), v251), 3uLL);
      v337 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v262 + 16), v250), *(v262 + 18), v251), 3uLL);
      v263 = v262 + v253;
      v338 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v263, v250), *(v263 + 2), v251), 3uLL);
      v339 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v263 + 16), v250), *(v263 + 18), v251), 3uLL);
      v264 = v263 + v253;
      v340 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v264, v250), *(v264 + 2), v251), 3uLL);
      v341 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v264 + 16), v250), *(v264 + 18), v251), 3uLL);
      v265 = v264 + v253;
      v342 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v265, v250), *(v265 + 2), v251), 3uLL);
      v343 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v265 + 16), v250), *(v265 + 18), v251), 3uLL);
      v266 = v265 + v253;
      v344 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v266, v250), *(v266 + 2), v251), 3uLL);
      v345 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v266 + 16), v250), *(v266 + 18), v251), 3uLL);
      v267 = v266 + v253;
      v346 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v267, v250), *(v267 + 2), v251), 3uLL);
      v347 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v267 + 16), v250), *(v267 + 18), v251), 3uLL);
      v268 = v267 + v253;
      v348 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v268, v250), *(v268 + 2), v251), 3uLL);
      v349 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v268 + 16), v250), *(v268 + 18), v251), 3uLL);
      v269 = v268 + v253;
      v350 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v269, v250), *(v269 + 2), v251), 3uLL);
      v270 = vmlaq_s16(vmulq_s16(*(v269 + 16), v250), *(v269 + 18), v251);
      v271 = vdupq_n_s16(8 - a4);
      v272 = vdupq_n_s16(a4);
      v351 = vrshrq_n_u16(v270, 3uLL);
      v286 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v318, v271), v320, v272), 3uLL);
      v287 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v252, v271), v321, v272), 3uLL);
      v288 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v320, v271), v322, v272), 3uLL);
      v289 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v321, v271), v323, v272), 3uLL);
      v290 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v322, v271), v324, v272), 3uLL);
      v291 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v323, v271), v325, v272), 3uLL);
      v292 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v324, v271), v326, v272), 3uLL);
      v293 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v325, v271), v327, v272), 3uLL);
      v294 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v326, v271), v328, v272), 3uLL);
      v295 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v327, v271), v329, v272), 3uLL);
      v296 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v328, v271), v330, v272), 3uLL);
      v297 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v329, v271), v331, v272), 3uLL);
      v298 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v330, v271), v332, v272), 3uLL);
      v299 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v331, v271), v333, v272), 3uLL);
      v300 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v332, v271), v334, v272), 3uLL);
      v301 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v333, v271), v335, v272), 3uLL);
      v302 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v334, v271), v336, v272), 3uLL);
      v303 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v335, v271), v337, v272), 3uLL);
      v304 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v336, v271), v338, v272), 3uLL);
      v305 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v337, v271), v339, v272), 3uLL);
      v306 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v338, v271), v340, v272), 3uLL);
      v307 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v339, v271), v341, v272), 3uLL);
      v308 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v340, v271), v342, v272), 3uLL);
      v309 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v341, v271), v343, v272), 3uLL);
      v310 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v342, v271), v344, v272), 3uLL);
      v311 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v343, v271), v345, v272), 3uLL);
      v312 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v344, v271), v346, v272), 3uLL);
      v313 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v345, v271), v347, v272), 3uLL);
      v314 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v346, v271), v348, v272), 3uLL);
      v315 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v347, v271), v349, v272), 3uLL);
      v316 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v348, v271), v350, v272), 3uLL);
      v317 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v349, v271), v351, v272), 3uLL);
      v273 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v274 = vsubq_s16(*(&v286 + v43), v273[-1]);
        v275 = vpadalq_s16(v13, v274);
        v276 = vmlal_s16(v10, *v274.i8, *v274.i8);
        v277 = vmlal_high_s16(v12, v274, v274);
        v278 = vsubq_s16(*(&v286 + v43 + 16), *v273);
        v13 = vpadalq_s16(v275, v278);
        v10 = vmlal_s16(v276, *v278.i8, *v278.i8);
        v12 = vmlal_high_s16(v277, v278, v278);
        v43 += 32;
        v273 = (v273 + 2 * a6);
      }

      while (v43 != 512);
    }

    else
    {
      v44 = vdupq_n_s16(8 - a3);
      v45 = vdupq_n_s16(a3);
      v46 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v44), *(2 * a1 + 0x12), v45), 3uLL);
      v318 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v44), *(2 * a1 + 2), v45), 3uLL);
      v319 = v46;
      v47 = 2 * a2;
      v320 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v47), v44), *(v7 + v47 + 2), v45), 3uLL);
      v321 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v7[1] + v47), v44), *(&v7[1] + v47 + 2), v45), 3uLL);
      v48 = &v7->i8[v47 + v47];
      v322 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v48, v44), *(v48 + 2), v45), 3uLL);
      v323 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 + 1), v44), *(v48 + 18), v45), 3uLL);
      v49 = &v48[v47];
      v324 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v49, v44), *(v49 + 2), v45), 3uLL);
      v325 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v49 + 1), v44), *(v49 + 18), v45), 3uLL);
      v50 = &v49[v47];
      v326 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v50, v44), *(v50 + 2), v45), 3uLL);
      v327 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v50 + 1), v44), *(v50 + 18), v45), 3uLL);
      v51 = &v50[v47];
      v328 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v51, v44), *(v51 + 2), v45), 3uLL);
      v329 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v51 + 1), v44), *(v51 + 18), v45), 3uLL);
      v52 = &v51[v47];
      v330 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v52, v44), *(v52 + 2), v45), 3uLL);
      v331 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 + 1), v44), *(v52 + 18), v45), 3uLL);
      v53 = &v52[v47];
      v332 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v44), *(v53 + 2), v45), 3uLL);
      v333 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v53 + 1), v44), *(v53 + 18), v45), 3uLL);
      v54 = &v53[v47];
      v334 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v54, v44), *(v54 + 2), v45), 3uLL);
      v335 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v54 + 1), v44), *(v54 + 18), v45), 3uLL);
      v55 = &v54[v47];
      v336 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v55, v44), *(v55 + 2), v45), 3uLL);
      v337 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v55 + 1), v44), *(v55 + 18), v45), 3uLL);
      v56 = &v55[v47];
      v338 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v56, v44), *(v56 + 2), v45), 3uLL);
      v339 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v56 + 16), v44), *(v56 + 18), v45), 3uLL);
      v57 = v56 + v47;
      v340 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v57, v44), *(v57 + 2), v45), 3uLL);
      v341 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v57 + 16), v44), *(v57 + 18), v45), 3uLL);
      v58 = v57 + v47;
      v342 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v58, v44), *(v58 + 2), v45), 3uLL);
      v343 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v58 + 16), v44), *(v58 + 18), v45), 3uLL);
      v59 = v58 + v47;
      v344 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v59, v44), *(v59 + 2), v45), 3uLL);
      v345 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 + 16), v44), *(v59 + 18), v45), 3uLL);
      v60 = v59 + v47;
      v346 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v60, v44), *(v60 + 2), v45), 3uLL);
      v347 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v60 + 16), v44), *(v60 + 18), v45), 3uLL);
      v61 = v60 + v47;
      v348 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v61, v44), *(v61 + 2), v45), 3uLL);
      v349 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 + 16), v44), *(v61 + 18), v45), 3uLL);
      v62 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v63 = vsubq_s16(*(&v318 + v43), v62[-1]);
        v64 = vpadalq_s16(v13, v63);
        v65 = vmlal_s16(v10, *v63.i8, *v63.i8);
        v66 = vmlal_high_s16(v12, v63, v63);
        v67 = vsubq_s16(*(&v318 + v43 + 16), *v62);
        v13 = vpadalq_s16(v64, v67);
        v10 = vmlal_s16(v65, *v67.i8, *v67.i8);
        v12 = vmlal_high_s16(v66, v67, v67);
        v43 += 32;
        v62 = (v62 + 2 * a6);
      }

      while (v43 != 512);
    }
  }

  else if (a4 == 4)
  {
    v68 = 0;
    v69 = 2 * a2;
    v70 = *(v7 + v69);
    v318 = vrhaddq_u16(*v7, v70);
    v71 = *(&v7[1] + v69);
    v319 = vrhaddq_u16(*(2 * a1 + 0x10), v71);
    v72 = &v7->i8[v69 + v69];
    v73 = *v72;
    v320 = vrhaddq_u16(v70, *v72);
    v74 = v72[1];
    v321 = vrhaddq_u16(v71, v74);
    v75 = (v72 + v69);
    v76 = *v75;
    v322 = vrhaddq_u16(v73, *v75);
    v77 = v75[1];
    v323 = vrhaddq_u16(v74, v77);
    v78 = (v75 + v69);
    v79 = *v78;
    v324 = vrhaddq_u16(v76, *v78);
    v80 = v78[1];
    v325 = vrhaddq_u16(v77, v80);
    v81 = (v78 + v69);
    v82 = *v81;
    v326 = vrhaddq_u16(v79, *v81);
    v83 = v81[1];
    v327 = vrhaddq_u16(v80, v83);
    v84 = (v81 + v69);
    v85 = *v84;
    v328 = vrhaddq_u16(v82, *v84);
    v86 = v84[1];
    v329 = vrhaddq_u16(v83, v86);
    v87 = (v84 + v69);
    v88 = *v87;
    v330 = vrhaddq_u16(v85, *v87);
    v89 = v87[1];
    v331 = vrhaddq_u16(v86, v89);
    v90 = (v87 + v69);
    v91 = *v90;
    v332 = vrhaddq_u16(v88, *v90);
    v92 = v90[1];
    v333 = vrhaddq_u16(v89, v92);
    v93 = (v90 + v69);
    v94 = *v93;
    v334 = vrhaddq_u16(v91, *v93);
    v95 = v93[1];
    v335 = vrhaddq_u16(v92, v95);
    v96 = (v93 + v69);
    v97 = *v96;
    v336 = vrhaddq_u16(v94, *v96);
    v98 = v96[1];
    v337 = vrhaddq_u16(v95, v98);
    v99 = (v96 + v69);
    v100 = *v99;
    v338 = vrhaddq_u16(v97, *v99);
    v101 = v99[1];
    v339 = vrhaddq_u16(v98, v101);
    v102 = (v99 + v69);
    v103 = *v102;
    v340 = vrhaddq_u16(v100, *v102);
    v104 = v102[1];
    v341 = vrhaddq_u16(v101, v104);
    v105 = (v102 + v69);
    v106 = *v105;
    v342 = vrhaddq_u16(v103, *v105);
    v107 = v105[1];
    v343 = vrhaddq_u16(v104, v107);
    v108 = (v105 + v69);
    v109 = *v108;
    v344 = vrhaddq_u16(v106, *v108);
    v110 = v108[1];
    v345 = vrhaddq_u16(v107, v110);
    v111 = (v108 + v69);
    v112 = *v111;
    v346 = vrhaddq_u16(v109, *v111);
    v113 = v111[1];
    v347 = vrhaddq_u16(v110, v113);
    v114 = (v111 + v69);
    v348 = vrhaddq_u16(v112, *v114);
    v349 = vrhaddq_u16(v113, v114[1]);
    v115 = (2 * a5 + 16);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v116 = vsubq_s16(*(&v318 + v68), v115[-1]);
      v117 = vpadalq_s16(v13, v116);
      v118 = vmlal_s16(v10, *v116.i8, *v116.i8);
      v119 = vmlal_high_s16(v12, v116, v116);
      v120 = vsubq_s16(*(&v318 + v68 + 16), *v115);
      v13 = vpadalq_s16(v117, v120);
      v10 = vmlal_s16(v118, *v120.i8, *v120.i8);
      v12 = vmlal_high_s16(v119, v120, v120);
      v68 += 32;
      v115 = (v115 + 2 * a6);
    }

    while (v68 != 512);
  }

  else if (a4)
  {
    v145 = 0;
    v146 = vdupq_n_s16(8 - a4);
    v147 = vdupq_n_s16(a4);
    v148 = 2 * a2;
    v149 = *(v7 + v148);
    v150 = *(2 * a1 + 0x10);
    v318 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v7, v146), v149, v147), 3uLL);
    v151 = *(v7 + v148 + 16);
    v319 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v150, v146), v151, v147), 3uLL);
    v152 = (v7 + v148 + v148);
    v153 = *v152;
    v320 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v149, v146), *v152, v147), 3uLL);
    v154 = v152[1];
    v321 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v151, v146), v154, v147), 3uLL);
    v155 = (v152 + v148);
    v156 = *v155;
    v322 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v153, v146), *v155, v147), 3uLL);
    v157 = v155[1];
    v323 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154, v146), v157, v147), 3uLL);
    v158 = (v155 + v148);
    v159 = *v158;
    v324 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v156, v146), *v158, v147), 3uLL);
    v160 = v158[1];
    v325 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v157, v146), v160, v147), 3uLL);
    v161 = (v158 + v148);
    v162 = *v161;
    v326 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v159, v146), *v161, v147), 3uLL);
    v163 = v161[1];
    v327 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v160, v146), v163, v147), 3uLL);
    v164 = (v161 + v148);
    v165 = *v164;
    v328 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v162, v146), *v164, v147), 3uLL);
    v166 = v164[1];
    v329 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v163, v146), v166, v147), 3uLL);
    v167 = (v164 + v148);
    v168 = *v167;
    v330 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v165, v146), *v167, v147), 3uLL);
    v169 = v167[1];
    v331 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v166, v146), v169, v147), 3uLL);
    v170 = (v167 + v148);
    v171 = *v170;
    v332 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v168, v146), *v170, v147), 3uLL);
    v172 = v170[1];
    v333 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v169, v146), v172, v147), 3uLL);
    v173 = (v170 + v148);
    v174 = *v173;
    v334 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v171, v146), *v173, v147), 3uLL);
    v175 = v173[1];
    v335 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v172, v146), v175, v147), 3uLL);
    v176 = (v173 + v148);
    v177 = *v176;
    v336 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v174, v146), *v176, v147), 3uLL);
    v178 = v176[1];
    v337 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v175, v146), v178, v147), 3uLL);
    v179 = (v176 + v148);
    v180 = *v179;
    v338 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v177, v146), *v179, v147), 3uLL);
    v181 = v179[1];
    v339 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v178, v146), v181, v147), 3uLL);
    v182 = (v179 + v148);
    v183 = *v182;
    v340 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v180, v146), *v182, v147), 3uLL);
    v184 = v182[1];
    v341 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v181, v146), v184, v147), 3uLL);
    v185 = (v182 + v148);
    v186 = *v185;
    v342 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v183, v146), *v185, v147), 3uLL);
    v187 = v185[1];
    v343 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v184, v146), v187, v147), 3uLL);
    v188 = (v185 + v148);
    v189 = *v188;
    v344 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v186, v146), *v188, v147), 3uLL);
    v190 = v188[1];
    v345 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v187, v146), v190, v147), 3uLL);
    v191 = (v188 + v148);
    v192 = *v191;
    v346 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v189, v146), *v191, v147), 3uLL);
    v193 = v191[1];
    v347 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v190, v146), v193, v147), 3uLL);
    v194 = (v191 + v148);
    v348 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v192, v146), *v194, v147), 3uLL);
    v349 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v193, v146), v194[1], v147), 3uLL);
    v195 = (2 * a5 + 16);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v196 = vsubq_s16(*(&v318 + v145), v195[-1]);
      v197 = vpadalq_s16(v13, v196);
      v198 = vmlal_s16(v10, *v196.i8, *v196.i8);
      v199 = vmlal_high_s16(v12, v196, v196);
      v200 = vsubq_s16(*(&v318 + v145 + 16), *v195);
      v13 = vpadalq_s16(v197, v200);
      v10 = vmlal_s16(v198, *v200.i8, *v200.i8);
      v12 = vmlal_high_s16(v199, v200, v200);
      v145 += 32;
      v195 = (v195 + 2 * a6);
    }

    while (v145 != 512);
  }

  else
  {
    v8 = (2 * a5 + 16);
    v9 = v7 + 1;
    v10 = 0uLL;
    v11 = -16;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = vsubq_s16(v9[-1], v8[-1]);
      v15 = vpadalq_s16(v13, v14);
      v16 = vmlal_s16(v10, *v14.i8, *v14.i8);
      v17 = vmlal_high_s16(v12, v14, v14);
      v18 = vsubq_s16(*v9, *v8);
      v13 = vpadalq_s16(v15, v18);
      v10 = vmlal_s16(v16, *v18.i8, *v18.i8);
      v12 = vmlal_high_s16(v17, v18, v18);
      v8 = (v8 + 2 * a6);
      v9 = (v9 + 2 * a2);
    }

    while (!__CFADD__(v11++, 1));
  }

  v279 = vaddvq_s32(v13);
  v280 = vaddlvq_u32(vaddq_s32(v12, v10));
  *a7 = (v280 + 128) >> 8;
  v281 = ((v280 + 128) >> 8) - (((((v279 << 28) + 0x80000000) >> 32) * (((v279 << 28) + 0x80000000) >> 32)) >> 8);
  return v281 & ~(v281 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_variance16x32_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v406 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v167 = 0;
      v168 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v340 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v341 = v168;
      v169 = 2 * a2;
      v170 = v7 + v169;
      v342 = vrhaddq_u16(*v170, *(v170 + 2));
      v343 = vrhaddq_u16(*(v170 + 16), *(v170 + 18));
      v171 = v170 + v169;
      v344 = vrhaddq_u16(*v171, *(v171 + 2));
      v345 = vrhaddq_u16(*(v171 + 16), *(v171 + 18));
      v172 = v171 + v169;
      v346 = vrhaddq_u16(*v172, *(v172 + 2));
      v347 = vrhaddq_u16(*(v172 + 16), *(v172 + 18));
      v173 = v172 + v169;
      v348 = vrhaddq_u16(*v173, *(v173 + 2));
      v349 = vrhaddq_u16(*(v173 + 16), *(v173 + 18));
      v174 = v173 + v169;
      v350 = vrhaddq_u16(*v174, *(v174 + 2));
      v351 = vrhaddq_u16(*(v174 + 16), *(v174 + 18));
      v175 = v174 + v169;
      v352 = vrhaddq_u16(*v175, *(v175 + 2));
      v353 = vrhaddq_u16(*(v175 + 16), *(v175 + 18));
      v176 = v175 + v169;
      v354 = vrhaddq_u16(*v176, *(v176 + 2));
      v355 = vrhaddq_u16(*(v176 + 16), *(v176 + 18));
      v177 = v176 + v169;
      v356 = vrhaddq_u16(*v177, *(v177 + 2));
      v357 = vrhaddq_u16(*(v177 + 16), *(v177 + 18));
      v178 = v177 + v169;
      v358 = vrhaddq_u16(*v178, *(v178 + 2));
      v359 = vrhaddq_u16(*(v178 + 16), *(v178 + 18));
      v179 = v178 + v169;
      v360 = vrhaddq_u16(*v179, *(v179 + 2));
      v361 = vrhaddq_u16(*(v179 + 16), *(v179 + 18));
      v180 = v179 + v169;
      v362 = vrhaddq_u16(*v180, *(v180 + 2));
      v363 = vrhaddq_u16(*(v180 + 16), *(v180 + 18));
      v181 = v180 + v169;
      v364 = vrhaddq_u16(*v181, *(v181 + 2));
      v365 = vrhaddq_u16(*(v181 + 16), *(v181 + 18));
      v182 = v181 + v169;
      v366 = vrhaddq_u16(*v182, *(v182 + 2));
      v367 = vrhaddq_u16(*(v182 + 16), *(v182 + 18));
      v183 = v182 + v169;
      v368 = vrhaddq_u16(*v183, *(v183 + 2));
      v369 = vrhaddq_u16(*(v183 + 16), *(v183 + 18));
      v184 = v183 + v169;
      v370 = vrhaddq_u16(*v184, *(v184 + 2));
      v371 = vrhaddq_u16(*(v184 + 16), *(v184 + 18));
      v185 = v184 + v169;
      v372 = vrhaddq_u16(*v185, *(v185 + 2));
      v373 = vrhaddq_u16(*(v185 + 16), *(v185 + 18));
      v186 = v185 + v169;
      v374 = vrhaddq_u16(*v186, *(v186 + 2));
      v375 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
      v187 = v186 + v169;
      v376 = vrhaddq_u16(*v187, *(v187 + 2));
      v377 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
      v188 = v187 + v169;
      v378 = vrhaddq_u16(*v188, *(v188 + 2));
      v379 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
      v189 = v188 + v169;
      v380 = vrhaddq_u16(*v189, *(v189 + 2));
      v381 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
      v190 = v189 + v169;
      v382 = vrhaddq_u16(*v190, *(v190 + 2));
      v383 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
      v191 = v190 + v169;
      v384 = vrhaddq_u16(*v191, *(v191 + 2));
      v385 = vrhaddq_u16(*(v191 + 16), *(v191 + 18));
      v192 = v191 + v169;
      v386 = vrhaddq_u16(*v192, *(v192 + 2));
      v387 = vrhaddq_u16(*(v192 + 16), *(v192 + 18));
      v193 = v192 + v169;
      v388 = vrhaddq_u16(*v193, *(v193 + 2));
      v389 = vrhaddq_u16(*(v193 + 16), *(v193 + 18));
      v194 = v193 + v169;
      v390 = vrhaddq_u16(*v194, *(v194 + 2));
      v391 = vrhaddq_u16(*(v194 + 16), *(v194 + 18));
      v195 = v194 + v169;
      v392 = vrhaddq_u16(*v195, *(v195 + 2));
      v393 = vrhaddq_u16(*(v195 + 16), *(v195 + 18));
      v196 = v195 + v169;
      v394 = vrhaddq_u16(*v196, *(v196 + 2));
      v395 = vrhaddq_u16(*(v196 + 16), *(v196 + 18));
      v197 = v196 + v169;
      v396 = vrhaddq_u16(*v197, *(v197 + 2));
      v397 = vrhaddq_u16(*(v197 + 16), *(v197 + 18));
      v198 = v197 + v169;
      v398 = vrhaddq_u16(*v198, *(v198 + 2));
      v399 = vrhaddq_u16(*(v198 + 16), *(v198 + 18));
      v199 = v198 + v169;
      v400 = vrhaddq_u16(*v199, *(v199 + 2));
      v401 = vrhaddq_u16(*(v199 + 16), *(v199 + 18));
      v200 = v199 + v169;
      v402 = vrhaddq_u16(*v200, *(v200 + 2));
      v201 = v200 + v169;
      v403 = vrhaddq_u16(*(v200 + 16), *(v200 + 18));
      v404 = vrhaddq_u16(*v201, *(v201 + 2));
      v405 = vrhaddq_u16(*(v201 + 16), *(v201 + 18));
      v276 = vrhaddq_u16(v340, v342);
      v277 = vrhaddq_u16(v168, v343);
      v278 = vrhaddq_u16(v342, v344);
      v279 = vrhaddq_u16(v343, v345);
      v280 = vrhaddq_u16(v344, v346);
      v281 = vrhaddq_u16(v345, v347);
      v282 = vrhaddq_u16(v346, v348);
      v283 = vrhaddq_u16(v347, v349);
      v284 = vrhaddq_u16(v348, v350);
      v285 = vrhaddq_u16(v349, v351);
      v286 = vrhaddq_u16(v350, v352);
      v287 = vrhaddq_u16(v351, v353);
      v288 = vrhaddq_u16(v352, v354);
      v289 = vrhaddq_u16(v353, v355);
      v290 = vrhaddq_u16(v354, v356);
      v291 = vrhaddq_u16(v355, v357);
      v292 = vrhaddq_u16(v356, v358);
      v293 = vrhaddq_u16(v357, v359);
      v294 = vrhaddq_u16(v358, v360);
      v295 = vrhaddq_u16(v359, v361);
      v296 = vrhaddq_u16(v360, v362);
      v297 = vrhaddq_u16(v361, v363);
      v298 = vrhaddq_u16(v362, v364);
      v299 = vrhaddq_u16(v363, v365);
      v300 = vrhaddq_u16(v364, v366);
      v301 = vrhaddq_u16(v365, v367);
      v302 = vrhaddq_u16(v366, v368);
      v303 = vrhaddq_u16(v367, v369);
      v304 = vrhaddq_u16(v368, v370);
      v305 = vrhaddq_u16(v369, v371);
      v306 = vrhaddq_u16(v370, v372);
      v307 = vrhaddq_u16(v371, v373);
      v308 = vrhaddq_u16(v372, v374);
      v309 = vrhaddq_u16(v373, v375);
      v310 = vrhaddq_u16(v374, v376);
      v311 = vrhaddq_u16(v375, v377);
      v312 = vrhaddq_u16(v376, v378);
      v313 = vrhaddq_u16(v377, v379);
      v314 = vrhaddq_u16(v378, v380);
      v315 = vrhaddq_u16(v379, v381);
      v316 = vrhaddq_u16(v380, v382);
      v317 = vrhaddq_u16(v381, v383);
      v318 = vrhaddq_u16(v382, v384);
      v319 = vrhaddq_u16(v383, v385);
      v320 = vrhaddq_u16(v384, v386);
      v321 = vrhaddq_u16(v385, v387);
      v322 = vrhaddq_u16(v386, v388);
      v323 = vrhaddq_u16(v387, v389);
      v324 = vrhaddq_u16(v388, v390);
      v325 = vrhaddq_u16(v389, v391);
      v326 = vrhaddq_u16(v390, v392);
      v327 = vrhaddq_u16(v391, v393);
      v328 = vrhaddq_u16(v392, v394);
      v329 = vrhaddq_u16(v393, v395);
      v330 = vrhaddq_u16(v394, v396);
      v331 = vrhaddq_u16(v395, v397);
      v332 = vrhaddq_u16(v396, v398);
      v333 = vrhaddq_u16(v397, v399);
      v334 = vrhaddq_u16(v398, v400);
      v335 = vrhaddq_u16(v399, v401);
      v336 = vrhaddq_u16(v400, v402);
      v337 = vrhaddq_u16(v401, v403);
      v338 = vrhaddq_u16(v402, v404);
      v339 = vrhaddq_u16(v403, v405);
      v202 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v203 = vsubq_s16(*(&v276 + v167), v202[-1]);
        v204 = vpadalq_s16(v13, v203);
        v205 = vmlal_s16(v10, *v203.i8, *v203.i8);
        v206 = vmlal_high_s16(v12, v203, v203);
        v207 = vsubq_s16(*(&v276 + v167 + 16), *v202);
        v13 = vpadalq_s16(v204, v207);
        v10 = vmlal_s16(v205, *v207.i8, *v207.i8);
        v12 = vmlal_high_s16(v206, v207, v207);
        v167 += 32;
        v202 = (v202 + 2 * a6);
      }

      while (v167 != 1024);
    }

    else if (a4)
    {
      v222 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v340 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v341 = v222;
      v223 = 2 * a2;
      v224 = v7 + v223;
      v342 = vrhaddq_u16(*v224, *(v224 + 2));
      v225 = &v343;
      v343 = vrhaddq_u16(*(v224 + 16), *(v224 + 18));
      v226 = v224 + v223;
      v344 = vrhaddq_u16(*v226, *(v226 + 2));
      v345 = vrhaddq_u16(*(v226 + 16), *(v226 + 18));
      v227 = v226 + v223;
      v346 = vrhaddq_u16(*v227, *(v227 + 2));
      v347 = vrhaddq_u16(*(v227 + 16), *(v227 + 18));
      v228 = v227 + v223;
      v348 = vrhaddq_u16(*v228, *(v228 + 2));
      v349 = vrhaddq_u16(*(v228 + 16), *(v228 + 18));
      v229 = v228 + v223;
      v350 = vrhaddq_u16(*v229, *(v229 + 2));
      v351 = vrhaddq_u16(*(v229 + 16), *(v229 + 18));
      v230 = v229 + v223;
      v352 = vrhaddq_u16(*v230, *(v230 + 2));
      v353 = vrhaddq_u16(*(v230 + 16), *(v230 + 18));
      v231 = v230 + v223;
      v354 = vrhaddq_u16(*v231, *(v231 + 2));
      v355 = vrhaddq_u16(*(v231 + 16), *(v231 + 18));
      v232 = v231 + v223;
      v356 = vrhaddq_u16(*v232, *(v232 + 2));
      v357 = vrhaddq_u16(*(v232 + 16), *(v232 + 18));
      v233 = v232 + v223;
      v358 = vrhaddq_u16(*v233, *(v233 + 2));
      v359 = vrhaddq_u16(*(v233 + 16), *(v233 + 18));
      v234 = v233 + v223;
      v360 = vrhaddq_u16(*v234, *(v234 + 2));
      v361 = vrhaddq_u16(*(v234 + 16), *(v234 + 18));
      v235 = v234 + v223;
      v362 = vrhaddq_u16(*v235, *(v235 + 2));
      v363 = vrhaddq_u16(*(v235 + 16), *(v235 + 18));
      v236 = v235 + v223;
      v364 = vrhaddq_u16(*v236, *(v236 + 2));
      v365 = vrhaddq_u16(*(v236 + 16), *(v236 + 18));
      v237 = v236 + v223;
      v366 = vrhaddq_u16(*v237, *(v237 + 2));
      v367 = vrhaddq_u16(*(v237 + 16), *(v237 + 18));
      v238 = v237 + v223;
      v368 = vrhaddq_u16(*v238, *(v238 + 2));
      v369 = vrhaddq_u16(*(v238 + 16), *(v238 + 18));
      v239 = v238 + v223;
      v370 = vrhaddq_u16(*v239, *(v239 + 2));
      v371 = vrhaddq_u16(*(v239 + 16), *(v239 + 18));
      v240 = v239 + v223;
      v372 = vrhaddq_u16(*v240, *(v240 + 2));
      v373 = vrhaddq_u16(*(v240 + 16), *(v240 + 18));
      v241 = v240 + v223;
      v374 = vrhaddq_u16(*v241, *(v241 + 2));
      v375 = vrhaddq_u16(*(v241 + 16), *(v241 + 18));
      v242 = v241 + v223;
      v376 = vrhaddq_u16(*v242, *(v242 + 2));
      v377 = vrhaddq_u16(*(v242 + 16), *(v242 + 18));
      v243 = v242 + v223;
      v378 = vrhaddq_u16(*v243, *(v243 + 2));
      v379 = vrhaddq_u16(*(v243 + 16), *(v243 + 18));
      v244 = v243 + v223;
      v380 = vrhaddq_u16(*v244, *(v244 + 2));
      v381 = vrhaddq_u16(*(v244 + 16), *(v244 + 18));
      v245 = v244 + v223;
      v382 = vrhaddq_u16(*v245, *(v245 + 2));
      v383 = vrhaddq_u16(*(v245 + 16), *(v245 + 18));
      v246 = v245 + v223;
      v384 = vrhaddq_u16(*v246, *(v246 + 2));
      v385 = vrhaddq_u16(*(v246 + 16), *(v246 + 18));
      v247 = v246 + v223;
      v386 = vrhaddq_u16(*v247, *(v247 + 2));
      v387 = vrhaddq_u16(*(v247 + 16), *(v247 + 18));
      v248 = v247 + v223;
      v388 = vrhaddq_u16(*v248, *(v248 + 2));
      v389 = vrhaddq_u16(*(v248 + 16), *(v248 + 18));
      v249 = v248 + v223;
      v390 = vrhaddq_u16(*v249, *(v249 + 2));
      v391 = vrhaddq_u16(*(v249 + 16), *(v249 + 18));
      v250 = v249 + v223;
      v392 = vrhaddq_u16(*v250, *(v250 + 2));
      v393 = vrhaddq_u16(*(v250 + 16), *(v250 + 18));
      v251 = v250 + v223;
      v394 = vrhaddq_u16(*v251, *(v251 + 2));
      v395 = vrhaddq_u16(*(v251 + 16), *(v251 + 18));
      v252 = v251 + v223;
      v396 = vrhaddq_u16(*v252, *(v252 + 2));
      v397 = vrhaddq_u16(*(v252 + 16), *(v252 + 18));
      v253 = v252 + v223;
      v398 = vrhaddq_u16(*v253, *(v253 + 2));
      v399 = vrhaddq_u16(*(v253 + 16), *(v253 + 18));
      v254 = v253 + v223;
      v400 = vrhaddq_u16(*v254, *(v254 + 2));
      v401 = vrhaddq_u16(*(v254 + 16), *(v254 + 18));
      v255 = v254 + v223;
      v402 = vrhaddq_u16(*v255, *(v255 + 2));
      v403 = vrhaddq_u16(*(v255 + 16), *(v255 + 18));
      v256 = v255 + v223;
      v404 = vrhaddq_u16(*v256, *(v256 + 2));
      v257 = vdupq_n_s16(8 - a4);
      v405 = vrhaddq_u16(*(v256 + 16), *(v256 + 18));
      v258 = vdupq_n_s16(a4);
      v259 = v340;
      v260 = 32;
      do
      {
        v262 = v225[-2];
        v261 = v225[-1];
        v263 = *v225;
        v225 += 2;
        v264 = (&v276 + v260);
        v264[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v259, v257), v261, v258), 3uLL);
        v264[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v262, v257), v263, v258), 3uLL);
        v260 += 32;
        v259 = v261;
      }

      while (v260 != 1056);
      v265 = 0;
      v266 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v267 = vsubq_s16(*(&v276 + v265), v266[-1]);
        v268 = vpadalq_s16(v13, v267);
        v269 = vmlal_s16(v10, *v267.i8, *v267.i8);
        v270 = vmlal_high_s16(v12, v267, v267);
        v271 = vsubq_s16(*(&v276 + v265 + 16), *v266);
        v13 = vpadalq_s16(v268, v271);
        v10 = vmlal_s16(v269, *v271.i8, *v271.i8);
        v12 = vmlal_high_s16(v270, v271, v271);
        v265 += 32;
        v266 = (v266 + 2 * a6);
      }

      while (v265 != 1024);
    }

    else
    {
      v20 = 0;
      v21 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v340 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v341 = v21;
      v22 = 2 * a2;
      v23 = v7 + v22;
      v342 = vrhaddq_u16(*v23, *(v23 + 2));
      v343 = vrhaddq_u16(*(v23 + 16), *(v23 + 18));
      v24 = v23 + v22;
      v344 = vrhaddq_u16(*v24, *(v24 + 2));
      v345 = vrhaddq_u16(*(v24 + 16), *(v24 + 18));
      v25 = v24 + v22;
      v346 = vrhaddq_u16(*v25, *(v25 + 2));
      v347 = vrhaddq_u16(*(v25 + 16), *(v25 + 18));
      v26 = v25 + v22;
      v348 = vrhaddq_u16(*v26, *(v26 + 2));
      v349 = vrhaddq_u16(*(v26 + 16), *(v26 + 18));
      v27 = v26 + v22;
      v350 = vrhaddq_u16(*v27, *(v27 + 2));
      v351 = vrhaddq_u16(*(v27 + 16), *(v27 + 18));
      v28 = v27 + v22;
      v352 = vrhaddq_u16(*v28, *(v28 + 2));
      v353 = vrhaddq_u16(*(v28 + 16), *(v28 + 18));
      v29 = v28 + v22;
      v354 = vrhaddq_u16(*v29, *(v29 + 2));
      v355 = vrhaddq_u16(*(v29 + 16), *(v29 + 18));
      v30 = v29 + v22;
      v356 = vrhaddq_u16(*v30, *(v30 + 2));
      v357 = vrhaddq_u16(*(v30 + 16), *(v30 + 18));
      v31 = v30 + v22;
      v358 = vrhaddq_u16(*v31, *(v31 + 2));
      v359 = vrhaddq_u16(*(v31 + 16), *(v31 + 18));
      v32 = v31 + v22;
      v360 = vrhaddq_u16(*v32, *(v32 + 2));
      v361 = vrhaddq_u16(*(v32 + 16), *(v32 + 18));
      v33 = v32 + v22;
      v362 = vrhaddq_u16(*v33, *(v33 + 2));
      v363 = vrhaddq_u16(*(v33 + 16), *(v33 + 18));
      v34 = v33 + v22;
      v364 = vrhaddq_u16(*v34, *(v34 + 2));
      v365 = vrhaddq_u16(*(v34 + 16), *(v34 + 18));
      v35 = v34 + v22;
      v366 = vrhaddq_u16(*v35, *(v35 + 2));
      v367 = vrhaddq_u16(*(v35 + 16), *(v35 + 18));
      v36 = v35 + v22;
      v368 = vrhaddq_u16(*v36, *(v36 + 2));
      v369 = vrhaddq_u16(*(v36 + 16), *(v36 + 18));
      v37 = v36 + v22;
      v370 = vrhaddq_u16(*v37, *(v37 + 2));
      v371 = vrhaddq_u16(*(v37 + 16), *(v37 + 18));
      v38 = v37 + v22;
      v372 = vrhaddq_u16(*v38, *(v38 + 2));
      v373 = vrhaddq_u16(*(v38 + 16), *(v38 + 18));
      v39 = v38 + v22;
      v374 = vrhaddq_u16(*v39, *(v39 + 2));
      v375 = vrhaddq_u16(*(v39 + 16), *(v39 + 18));
      v40 = v39 + v22;
      v376 = vrhaddq_u16(*v40, *(v40 + 2));
      v377 = vrhaddq_u16(*(v40 + 16), *(v40 + 18));
      v41 = v40 + v22;
      v378 = vrhaddq_u16(*v41, *(v41 + 2));
      v379 = vrhaddq_u16(*(v41 + 16), *(v41 + 18));
      v42 = v41 + v22;
      v380 = vrhaddq_u16(*v42, *(v42 + 2));
      v381 = vrhaddq_u16(*(v42 + 16), *(v42 + 18));
      v43 = v42 + v22;
      v382 = vrhaddq_u16(*v43, *(v43 + 2));
      v383 = vrhaddq_u16(*(v43 + 16), *(v43 + 18));
      v44 = v43 + v22;
      v384 = vrhaddq_u16(*v44, *(v44 + 2));
      v385 = vrhaddq_u16(*(v44 + 16), *(v44 + 18));
      v45 = v44 + v22;
      v386 = vrhaddq_u16(*v45, *(v45 + 2));
      v387 = vrhaddq_u16(*(v45 + 16), *(v45 + 18));
      v46 = v45 + v22;
      v388 = vrhaddq_u16(*v46, *(v46 + 2));
      v389 = vrhaddq_u16(*(v46 + 16), *(v46 + 18));
      v47 = v46 + v22;
      v390 = vrhaddq_u16(*v47, *(v47 + 2));
      v391 = vrhaddq_u16(*(v47 + 16), *(v47 + 18));
      v48 = v47 + v22;
      v392 = vrhaddq_u16(*v48, *(v48 + 2));
      v393 = vrhaddq_u16(*(v48 + 16), *(v48 + 18));
      v49 = v48 + v22;
      v394 = vrhaddq_u16(*v49, *(v49 + 2));
      v395 = vrhaddq_u16(*(v49 + 16), *(v49 + 18));
      v50 = v49 + v22;
      v396 = vrhaddq_u16(*v50, *(v50 + 2));
      v397 = vrhaddq_u16(*(v50 + 16), *(v50 + 18));
      v51 = v50 + v22;
      v398 = vrhaddq_u16(*v51, *(v51 + 2));
      v399 = vrhaddq_u16(*(v51 + 16), *(v51 + 18));
      v52 = v51 + v22;
      v400 = vrhaddq_u16(*v52, *(v52 + 2));
      v53 = v52 + v22;
      v401 = vrhaddq_u16(*(v52 + 16), *(v52 + 18));
      v402 = vrhaddq_u16(*v53, *(v53 + 2));
      v403 = vrhaddq_u16(*(v53 + 16), *(v53 + 18));
      v54 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v55 = vsubq_s16(*(&v340 + v20), v54[-1]);
        v56 = vpadalq_s16(v13, v55);
        v57 = vmlal_s16(v10, *v55.i8, *v55.i8);
        v58 = vmlal_high_s16(v12, v55, v55);
        v59 = vsubq_s16(*(&v340 + v20 + 16), *v54);
        v13 = vpadalq_s16(v56, v59);
        v10 = vmlal_s16(v57, *v59.i8, *v59.i8);
        v12 = vmlal_high_s16(v58, v59, v59);
        v20 += 32;
        v54 = (v54 + 2 * a6);
      }

      while (v20 != 1024);
    }
  }

  else if (a3)
  {
    v60 = 0;
    v61 = vdupq_n_s16(8 - a3);
    v62 = vdupq_n_s16(a3);
    v63 = (v7 + 18);
    v64 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v73 = (&v340 + v60);
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 18), v61), v63[-1], v62), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 2), v61), *v63, v62), 3uLL);
        v60 += 32;
        v63 = (v63 + v64);
      }

      while (v60 != 1056);
      v74 = 0;
      v276 = vrhaddq_u16(v340, v342);
      v277 = vrhaddq_u16(v341, v343);
      v278 = vrhaddq_u16(v342, v344);
      v279 = vrhaddq_u16(v343, v345);
      v280 = vrhaddq_u16(v344, v346);
      v281 = vrhaddq_u16(v345, v347);
      v282 = vrhaddq_u16(v346, v348);
      v283 = vrhaddq_u16(v347, v349);
      v284 = vrhaddq_u16(v348, v350);
      v285 = vrhaddq_u16(v349, v351);
      v286 = vrhaddq_u16(v350, v352);
      v287 = vrhaddq_u16(v351, v353);
      v288 = vrhaddq_u16(v352, v354);
      v289 = vrhaddq_u16(v353, v355);
      v290 = vrhaddq_u16(v354, v356);
      v291 = vrhaddq_u16(v355, v357);
      v292 = vrhaddq_u16(v356, v358);
      v293 = vrhaddq_u16(v357, v359);
      v294 = vrhaddq_u16(v358, v360);
      v295 = vrhaddq_u16(v359, v361);
      v296 = vrhaddq_u16(v360, v362);
      v297 = vrhaddq_u16(v361, v363);
      v298 = vrhaddq_u16(v362, v364);
      v299 = vrhaddq_u16(v363, v365);
      v300 = vrhaddq_u16(v364, v366);
      v301 = vrhaddq_u16(v365, v367);
      v302 = vrhaddq_u16(v366, v368);
      v303 = vrhaddq_u16(v367, v369);
      v304 = vrhaddq_u16(v368, v370);
      v305 = vrhaddq_u16(v369, v371);
      v306 = vrhaddq_u16(v370, v372);
      v307 = vrhaddq_u16(v371, v373);
      v308 = vrhaddq_u16(v372, v374);
      v309 = vrhaddq_u16(v373, v375);
      v310 = vrhaddq_u16(v374, v376);
      v311 = vrhaddq_u16(v375, v377);
      v312 = vrhaddq_u16(v376, v378);
      v313 = vrhaddq_u16(v377, v379);
      v314 = vrhaddq_u16(v378, v380);
      v315 = vrhaddq_u16(v379, v381);
      v316 = vrhaddq_u16(v380, v382);
      v317 = vrhaddq_u16(v381, v383);
      v318 = vrhaddq_u16(v382, v384);
      v319 = vrhaddq_u16(v383, v385);
      v320 = vrhaddq_u16(v384, v386);
      v321 = vrhaddq_u16(v385, v387);
      v322 = vrhaddq_u16(v386, v388);
      v323 = vrhaddq_u16(v387, v389);
      v324 = vrhaddq_u16(v388, v390);
      v325 = vrhaddq_u16(v389, v391);
      v326 = vrhaddq_u16(v390, v392);
      v327 = vrhaddq_u16(v391, v393);
      v328 = vrhaddq_u16(v392, v394);
      v329 = vrhaddq_u16(v393, v395);
      v330 = vrhaddq_u16(v394, v396);
      v331 = vrhaddq_u16(v395, v397);
      v332 = vrhaddq_u16(v396, v398);
      v333 = vrhaddq_u16(v397, v399);
      v334 = vrhaddq_u16(v398, v400);
      v335 = vrhaddq_u16(v399, v401);
      v336 = vrhaddq_u16(v400, v402);
      v337 = vrhaddq_u16(v401, v403);
      v75 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v338 = vrhaddq_u16(v402, v404);
      v339 = vrhaddq_u16(v403, v405);
      v13 = 0uLL;
      do
      {
        v76 = vsubq_s16(*(&v276 + v74), v75[-1]);
        v77 = vpadalq_s16(v13, v76);
        v78 = vmlal_s16(v10, *v76.i8, *v76.i8);
        v79 = vmlal_high_s16(v12, v76, v76);
        v80 = vsubq_s16(*(&v276 + v74 + 16), *v75);
        v13 = vpadalq_s16(v77, v80);
        v10 = vmlal_s16(v78, *v80.i8, *v80.i8);
        v12 = vmlal_high_s16(v79, v80, v80);
        v74 += 32;
        v75 = (v75 + 2 * a6);
      }

      while (v74 != 1024);
    }

    else if (a4)
    {
      do
      {
        v81 = (&v340 + v60);
        *v81 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 18), v61), v63[-1], v62), 3uLL);
        v81[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 2), v61), *v63, v62), 3uLL);
        v60 += 32;
        v63 = (v63 + v64);
      }

      while (v60 != 1056);
      v82 = vdupq_n_s16(8 - a4);
      v83 = vdupq_n_s16(a4);
      v84 = v340;
      v85 = &v343;
      v86 = 32;
      do
      {
        v88 = v85[-2];
        v87 = v85[-1];
        v89 = *v85;
        v85 += 2;
        v90 = (&v276 + v86);
        v90[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84, v82), v87, v83), 3uLL);
        v90[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v88, v82), v89, v83), 3uLL);
        v86 += 32;
        v84 = v87;
      }

      while (v86 != 1056);
      v91 = 0;
      v92 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v93 = vsubq_s16(*(&v276 + v91), v92[-1]);
        v94 = vpadalq_s16(v13, v93);
        v95 = vmlal_s16(v10, *v93.i8, *v93.i8);
        v96 = vmlal_high_s16(v12, v93, v93);
        v97 = vsubq_s16(*(&v276 + v91 + 16), *v92);
        v13 = vpadalq_s16(v94, v97);
        v10 = vmlal_s16(v95, *v97.i8, *v97.i8);
        v12 = vmlal_high_s16(v96, v97, v97);
        v91 += 32;
        v92 = (v92 + 2 * a6);
      }

      while (v91 != 1024);
    }

    else
    {
      do
      {
        v65 = (&v340 + v60);
        *v65 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 18), v61), v63[-1], v62), 3uLL);
        v65[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v63 - 2), v61), *v63, v62), 3uLL);
        v60 += 32;
        v63 = (v63 + v64);
      }

      while (v60 != 1024);
      v66 = 0;
      v67 = (2 * a5 + 16);
      v10 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v68 = vsubq_s16(*(&v340 + v66), v67[-1]);
        v69 = vpadalq_s16(v13, v68);
        v70 = vmlal_s16(v10, *v68.i8, *v68.i8);
        v71 = vmlal_high_s16(v12, v68, v68);
        v72 = vsubq_s16(*(&v340 + v66 + 16), *v67);
        v13 = vpadalq_s16(v69, v72);
        v10 = vmlal_s16(v70, *v72.i8, *v72.i8);
        v12 = vmlal_high_s16(v71, v72, v72);
        v66 += 32;
        v67 = (v67 + 2 * a6);
      }

      while (v66 != 1024);
    }
  }

  else if (a4 == 4)
  {
    v98 = 0;
    v99 = 2 * a2;
    v100 = (v7 + v99);
    v101 = *(v7 + v99);
    v340 = vrhaddq_u16(*v7, v101);
    v341 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x10 + v99));
    v102 = (v7 + v99 + v99);
    v103 = *v102;
    v342 = vrhaddq_u16(v101, *v102);
    v343 = vrhaddq_u16(v100[1], *(v100 + v99 + 16));
    v104 = (v102 + v99);
    v105 = *(v102 + v99);
    v344 = vrhaddq_u16(v103, v105);
    v345 = vrhaddq_u16(v102[1], *(v102 + v99 + 16));
    v106 = (v102 + v99 + v99);
    v107 = *v106;
    v346 = vrhaddq_u16(v105, *v106);
    v347 = vrhaddq_u16(v104[1], *(v104 + v99 + 16));
    v108 = (v106 + v99);
    v109 = *(v106 + v99);
    v348 = vrhaddq_u16(v107, v109);
    v349 = vrhaddq_u16(v106[1], *(v106 + v99 + 16));
    v110 = (v106 + v99 + v99);
    v111 = *v110;
    v350 = vrhaddq_u16(v109, *v110);
    v351 = vrhaddq_u16(v108[1], *(v108 + v99 + 16));
    v112 = (v110 + v99);
    v113 = *(v110 + v99);
    v352 = vrhaddq_u16(v111, v113);
    v353 = vrhaddq_u16(v110[1], *(v110 + v99 + 16));
    v114 = (v110 + v99 + v99);
    v115 = *v114;
    v354 = vrhaddq_u16(v113, *v114);
    v355 = vrhaddq_u16(v112[1], *(v112 + v99 + 16));
    v116 = (v114 + v99);
    v117 = *(v114 + v99);
    v356 = vrhaddq_u16(v115, v117);
    v357 = vrhaddq_u16(v114[1], *(v114 + v99 + 16));
    v118 = (v114 + v99 + v99);
    v119 = *v118;
    v358 = vrhaddq_u16(v117, *v118);
    v359 = vrhaddq_u16(v116[1], *(v116 + v99 + 16));
    v120 = (v118 + v99);
    v121 = *(v118 + v99);
    v360 = vrhaddq_u16(v119, v121);
    v361 = vrhaddq_u16(v118[1], *(v118 + v99 + 16));
    v122 = (v118 + v99 + v99);
    v123 = *v122;
    v362 = vrhaddq_u16(v121, *v122);
    v363 = vrhaddq_u16(v120[1], *(v120 + v99 + 16));
    v124 = (v122 + v99);
    v125 = *(v122 + v99);
    v364 = vrhaddq_u16(v123, v125);
    v365 = vrhaddq_u16(v122[1], *(v122 + v99 + 16));
    v126 = (v122 + v99 + v99);
    v127 = *v126;
    v366 = vrhaddq_u16(v125, *v126);
    v367 = vrhaddq_u16(v124[1], *(v124 + v99 + 16));
    v128 = (v126 + v99);
    v129 = *(v126 + v99);
    v368 = vrhaddq_u16(v127, v129);
    v369 = vrhaddq_u16(v126[1], *(v126 + v99 + 16));
    v130 = (v126 + v99 + v99);
    v131 = *v130;
    v370 = vrhaddq_u16(v129, *v130);
    v371 = vrhaddq_u16(v128[1], *(v128 + v99 + 16));
    v132 = (v130 + v99);
    v133 = *(v130 + v99);
    v372 = vrhaddq_u16(v131, v133);
    v373 = vrhaddq_u16(v130[1], *(v130 + v99 + 16));
    v134 = (v130 + v99 + v99);
    v135 = *v134;
    v374 = vrhaddq_u16(v133, *v134);
    v375 = vrhaddq_u16(v132[1], *(v132 + v99 + 16));
    v136 = (v134 + v99);
    v137 = *(v134 + v99);
    v376 = vrhaddq_u16(v135, v137);
    v377 = vrhaddq_u16(v134[1], *(v134 + v99 + 16));
    v138 = (v134 + v99 + v99);
    v139 = *v138;
    v378 = vrhaddq_u16(v137, *v138);
    v379 = vrhaddq_u16(v136[1], *(v136 + v99 + 16));
    v140 = (v138 + v99);
    v141 = *(v138 + v99);
    v380 = vrhaddq_u16(v139, v141);
    v381 = vrhaddq_u16(v138[1], *(v138 + v99 + 16));
    v142 = (v138 + v99 + v99);
    v143 = *v142;
    v382 = vrhaddq_u16(v141, *v142);
    v383 = vrhaddq_u16(v140[1], *(v140 + v99 + 16));
    v144 = (v142 + v99);
    v145 = *(v142 + v99);
    v384 = vrhaddq_u16(v143, v145);
    v385 = vrhaddq_u16(v142[1], *(v142 + v99 + 16));
    v146 = (v142 + v99 + v99);
    v147 = *v146;
    v386 = vrhaddq_u16(v145, *v146);
    v387 = vrhaddq_u16(v144[1], *(v144 + v99 + 16));
    v148 = (v146 + v99);
    v149 = *(v146 + v99);
    v388 = vrhaddq_u16(v147, v149);
    v389 = vrhaddq_u16(v146[1], *(v146 + v99 + 16));
    v150 = (v146 + v99 + v99);
    v151 = *v150;
    v390 = vrhaddq_u16(v149, *v150);
    v391 = vrhaddq_u16(v148[1], *(v148 + v99 + 16));
    v152 = (v150 + v99);
    v153 = *(v150 + v99);
    v392 = vrhaddq_u16(v151, v153);
    v393 = vrhaddq_u16(v150[1], *(v150 + v99 + 16));
    v154 = (v150 + v99 + v99);
    v155 = *v154;
    v394 = vrhaddq_u16(v153, *v154);
    v395 = vrhaddq_u16(v152[1], *(v152 + v99 + 16));
    v156 = (v154 + v99);
    v157 = *(v154 + v99);
    v396 = vrhaddq_u16(v155, v157);
    v397 = vrhaddq_u16(v154[1], *(v154 + v99 + 16));
    v158 = (v154 + v99 + v99);
    v159 = *v158;
    v398 = vrhaddq_u16(v157, *v158);
    v399 = vrhaddq_u16(v156[1], *(v156 + v99 + 16));
    v160 = *(v158 + v99);
    v400 = vrhaddq_u16(v159, v160);
    v401 = vrhaddq_u16(v158[1], *(v158 + v99 + 16));
    v402 = vrhaddq_u16(v160, *(v158 + v99 + v99));
    v403 = vrhaddq_u16(*(&v158[1] + v99), *(&v158[1] + v99 + v99));
    v161 = (2 * a5 + 16);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v162 = vsubq_s16(*(&v340 + v98), v161[-1]);
      v163 = vpadalq_s16(v13, v162);
      v164 = vmlal_s16(v10, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v12, v162, v162);
      v166 = vsubq_s16(*(&v340 + v98 + 16), *v161);
      v13 = vpadalq_s16(v163, v166);
      v10 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v12 = vmlal_high_s16(v165, v166, v166);
      v98 += 32;
      v161 = (v161 + 2 * a6);
    }

    while (v98 != 1024);
  }

  else if (a4)
  {
    v208 = 0;
    v209 = vdupq_n_s16(8 - a4);
    v210 = vdupq_n_s16(a4);
    v211 = *v7;
    v212 = 2 * a2;
    do
    {
      v213 = (&v340 + v208);
      v214 = *(v7 + 2 * a2);
      *v213 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v211, v209), v214, v210), 3uLL);
      v213[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v209), *(v7 + v212 + 16), v210), 3uLL);
      v208 += 32;
      v7 += v212;
      v211 = v214;
    }

    while (v208 != 1024);
    v215 = 0;
    v216 = (2 * a5 + 16);
    v10 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v217 = vsubq_s16(*(&v340 + v215), v216[-1]);
      v218 = vpadalq_s16(v13, v217);
      v219 = vmlal_s16(v10, *v217.i8, *v217.i8);
      v220 = vmlal_high_s16(v12, v217, v217);
      v221 = vsubq_s16(*(&v340 + v215 + 16), *v216);
      v13 = vpadalq_s16(v218, v221);
      v10 = vmlal_s16(v219, *v221.i8, *v221.i8);
      v12 = vmlal_high_s16(v220, v221, v221);
      v215 += 32;
      v216 = (v216 + 2 * a6);
    }

    while (v215 != 1024);
  }

  else
  {
    v8 = (2 * a5 + 16);
    v9 = (v7 + 16);
    v10 = 0uLL;
    v11 = -32;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = vsubq_s16(v9[-1], v8[-1]);
      v15 = vpadalq_s16(v13, v14);
      v16 = vmlal_s16(v10, *v14.i8, *v14.i8);
      v17 = vmlal_high_s16(v12, v14, v14);
      v18 = vsubq_s16(*v9, *v8);
      v13 = vpadalq_s16(v15, v18);
      v10 = vmlal_s16(v16, *v18.i8, *v18.i8);
      v12 = vmlal_high_s16(v17, v18, v18);
      v8 = (v8 + 2 * a6);
      v9 = (v9 + 2 * a2);
    }

    while (!__CFADD__(v11++, 1));
  }

  v272 = vaddvq_s32(v13);
  v273 = vaddlvq_u32(vaddq_s32(v12, v10));
  *a7 = (v273 + 128) >> 8;
  v274 = ((v273 + 128) >> 8) - (((((v272 << 28) + 0x80000000) >> 32) * (((v272 << 28) + 0x80000000) >> 32)) >> 9);
  return v274 & ~(v274 >> 63);
}