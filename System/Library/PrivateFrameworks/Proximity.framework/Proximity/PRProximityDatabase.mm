@interface PRProximityDatabase
+ (BOOL)getProximityDeviceParameters:(id *)a3 forDeviceModel:(id)a4 withError:(id *)a5;
+ (id)getDeviceData;
+ (int64_t)getPRDeviceModelFromModelId:(id)a3;
+ (int64_t)getScannerDeviceModel;
- (PRProximityDatabase)init;
@end

@implementation PRProximityDatabase

- (PRProximityDatabase)init
{
  [(PRProximityDatabase *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)getDeviceData
{
  if (+[PRProximityDatabase getDeviceData]::createOnce != -1)
  {
    +[PRProximityDatabase getDeviceData];
  }

  v3 = +[PRProximityDatabase getDeviceData]::proxDeviceData;

  return v3;
}

void __36__PRProximityDatabase_getDeviceData__block_invoke()
{
  v416[5] = *MEMORY[0x277D85DE8];
  v306 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v415[0] = v306;
  v304 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v413[0] = v304;
  v411[0] = @"rssiImmediate";
  v303 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v412[0] = v303;
  v411[1] = @"rssiNear";
  v302 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v412[1] = v302;
  v411[2] = @"sampSize";
  v301 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v412[2] = v301;
  v411[3] = @"Algo";
  v300 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v412[3] = v300;
  v299 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v412 forKeys:v411 count:4];
  v414[0] = v299;
  v298 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v413[1] = v298;
  v409[0] = @"rssiImmediate";
  v297 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v410[0] = v297;
  v409[1] = @"rssiNear";
  v296 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v410[1] = v296;
  v409[2] = @"sampSize";
  v295 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v410[2] = v295;
  v409[3] = @"Algo";
  v294 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v410[3] = v294;
  v293 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v410 forKeys:v409 count:4];
  v414[1] = v293;
  v292 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v413[2] = v292;
  v407[0] = @"rssiImmediate";
  v291 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v408[0] = v291;
  v407[1] = @"rssiNear";
  v290 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v408[1] = v290;
  v407[2] = @"sampSize";
  v289 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v408[2] = v289;
  v407[3] = @"Algo";
  v288 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v408[3] = v288;
  v287 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v408 forKeys:v407 count:4];
  v414[2] = v287;
  v286 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v413[3] = v286;
  v405[0] = @"rssiImmediate";
  v285 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v406[0] = v285;
  v405[1] = @"rssiNear";
  v284 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v406[1] = v284;
  v405[2] = @"sampSize";
  v283 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v406[2] = v283;
  v405[3] = @"Algo";
  v282 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v406[3] = v282;
  v281 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v406 forKeys:v405 count:4];
  v414[3] = v281;
  v280 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v413[4] = v280;
  v403[0] = @"rssiImmediate";
  v279 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v404[0] = v279;
  v403[1] = @"rssiNear";
  v278 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v404[1] = v278;
  v403[2] = @"sampSize";
  v277 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v404[2] = v277;
  v403[3] = @"Algo";
  v276 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v404[3] = v276;
  v275 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v404 forKeys:v403 count:4];
  v414[4] = v275;
  v274 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v413[5] = v274;
  v401[0] = @"rssiImmediate";
  v273 = [MEMORY[0x277CCABB0] numberWithInteger:-44];
  v402[0] = v273;
  v401[1] = @"rssiNear";
  v272 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v402[1] = v272;
  v401[2] = @"sampSize";
  v271 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v402[2] = v271;
  v401[3] = @"Algo";
  v270 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v402[3] = v270;
  v269 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v402 forKeys:v401 count:4];
  v414[5] = v269;
  v268 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v414 forKeys:v413 count:6];
  v416[0] = v268;
  v267 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v415[1] = v267;
  v266 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v399[0] = v266;
  v397[0] = @"rssiImmediate";
  v265 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v398[0] = v265;
  v397[1] = @"rssiNear";
  v264 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v398[1] = v264;
  v397[2] = @"sampSize";
  v263 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v398[2] = v263;
  v397[3] = @"Algo";
  v262 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v398[3] = v262;
  v261 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v398 forKeys:v397 count:4];
  v400[0] = v261;
  v260 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v399[1] = v260;
  v395[0] = @"rssiImmediate";
  v259 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v396[0] = v259;
  v395[1] = @"rssiNear";
  v258 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v396[1] = v258;
  v395[2] = @"sampSize";
  v257 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v396[2] = v257;
  v395[3] = @"Algo";
  v256 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v396[3] = v256;
  v255 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v396 forKeys:v395 count:4];
  v400[1] = v255;
  v254 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v399[2] = v254;
  v393[0] = @"rssiImmediate";
  v253 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v394[0] = v253;
  v393[1] = @"rssiNear";
  v252 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v394[1] = v252;
  v393[2] = @"sampSize";
  v251 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v394[2] = v251;
  v393[3] = @"Algo";
  v250 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v394[3] = v250;
  v249 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v394 forKeys:v393 count:4];
  v400[2] = v249;
  v248 = [MEMORY[0x277CCABB0] numberWithInteger:15];
  v399[3] = v248;
  v391[0] = @"rssiImmediate";
  v247 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v392[0] = v247;
  v391[1] = @"rssiNear";
  v246 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v392[1] = v246;
  v391[2] = @"sampSize";
  v245 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v392[2] = v245;
  v391[3] = @"Algo";
  v244 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v392[3] = v244;
  v243 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v392 forKeys:v391 count:4];
  v400[3] = v243;
  v242 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v399[4] = v242;
  v389[0] = @"rssiImmediate";
  v241 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v390[0] = v241;
  v389[1] = @"rssiNear";
  v240 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v390[1] = v240;
  v389[2] = @"sampSize";
  v239 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v390[2] = v239;
  v389[3] = @"Algo";
  v238 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v390[3] = v238;
  v237 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v390 forKeys:v389 count:4];
  v400[4] = v237;
  v236 = [MEMORY[0x277CCABB0] numberWithInteger:14];
  v399[5] = v236;
  v387[0] = @"rssiImmediate";
  v235 = [MEMORY[0x277CCABB0] numberWithInteger:-41];
  v388[0] = v235;
  v387[1] = @"rssiNear";
  v234 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v388[1] = v234;
  v387[2] = @"sampSize";
  v233 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v388[2] = v233;
  v387[3] = @"Algo";
  v232 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v388[3] = v232;
  v231 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v388 forKeys:v387 count:4];
  v400[5] = v231;
  v230 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v399[6] = v230;
  v385[0] = @"rssiImmediate";
  v229 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v386[0] = v229;
  v385[1] = @"rssiNear";
  v228 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v386[1] = v228;
  v385[2] = @"sampSize";
  v227 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v386[2] = v227;
  v385[3] = @"Algo";
  v226 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v386[3] = v226;
  v225 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v386 forKeys:v385 count:4];
  v400[6] = v225;
  v224 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  v399[7] = v224;
  v383[0] = @"rssiImmediate";
  v223 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v384[0] = v223;
  v383[1] = @"rssiNear";
  v222 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v384[1] = v222;
  v383[2] = @"sampSize";
  v221 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v384[2] = v221;
  v383[3] = @"Algo";
  v220 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v384[3] = v220;
  v219 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v384 forKeys:v383 count:4];
  v400[7] = v219;
  v218 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v399[8] = v218;
  v381[0] = @"rssiImmediate";
  v217 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v382[0] = v217;
  v381[1] = @"rssiNear";
  v216 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v382[1] = v216;
  v381[2] = @"sampSize";
  v215 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v382[2] = v215;
  v381[3] = @"Algo";
  v214 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v382[3] = v214;
  v213 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v382 forKeys:v381 count:4];
  v400[8] = v213;
  v212 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v399[9] = v212;
  v379[0] = @"rssiImmediate";
  v211 = [MEMORY[0x277CCABB0] numberWithInteger:-39];
  v380[0] = v211;
  v379[1] = @"rssiNear";
  v210 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v380[1] = v210;
  v379[2] = @"sampSize";
  v209 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v380[2] = v209;
  v379[3] = @"Algo";
  v208 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v380[3] = v208;
  v207 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v380 forKeys:v379 count:4];
  v400[9] = v207;
  v206 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v399[10] = v206;
  v377[0] = @"rssiImmediate";
  v205 = [MEMORY[0x277CCABB0] numberWithInteger:-42];
  v378[0] = v205;
  v377[1] = @"rssiNear";
  v204 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v378[1] = v204;
  v377[2] = @"sampSize";
  v203 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v378[2] = v203;
  v377[3] = @"Algo";
  v202 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v378[3] = v202;
  v201 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v378 forKeys:v377 count:4];
  v400[10] = v201;
  v200 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v400 forKeys:v399 count:11];
  v416[1] = v200;
  v199 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v415[2] = v199;
  v198 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v375[0] = v198;
  v373[0] = @"rssiImmediate";
  v197 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v374[0] = v197;
  v373[1] = @"rssiNear";
  v196 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v374[1] = v196;
  v373[2] = @"sampSize";
  v195 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v374[2] = v195;
  v373[3] = @"Algo";
  v194 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v374[3] = v194;
  v193 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v374 forKeys:v373 count:4];
  v376[0] = v193;
  v192 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v375[1] = v192;
  v371[0] = @"rssiImmediate";
  v191 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v372[0] = v191;
  v371[1] = @"rssiNear";
  v190 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v372[1] = v190;
  v371[2] = @"sampSize";
  v189 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v372[2] = v189;
  v371[3] = @"Algo";
  v188 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v372[3] = v188;
  v187 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v372 forKeys:v371 count:4];
  v376[1] = v187;
  v186 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v375[2] = v186;
  v369[0] = @"rssiImmediate";
  v185 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v370[0] = v185;
  v369[1] = @"rssiNear";
  v184 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v370[1] = v184;
  v369[2] = @"sampSize";
  v183 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v370[2] = v183;
  v369[3] = @"Algo";
  v182 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v370[3] = v182;
  v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v370 forKeys:v369 count:4];
  v376[2] = v181;
  v180 = [MEMORY[0x277CCABB0] numberWithInteger:15];
  v375[3] = v180;
  v367[0] = @"rssiImmediate";
  v179 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v368[0] = v179;
  v367[1] = @"rssiNear";
  v178 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v368[1] = v178;
  v367[2] = @"sampSize";
  v177 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v368[2] = v177;
  v367[3] = @"Algo";
  v176 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v368[3] = v176;
  v175 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v368 forKeys:v367 count:4];
  v376[3] = v175;
  v174 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v375[4] = v174;
  v365[0] = @"rssiImmediate";
  v173 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v366[0] = v173;
  v365[1] = @"rssiNear";
  v172 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v366[1] = v172;
  v365[2] = @"sampSize";
  v171 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v366[2] = v171;
  v365[3] = @"Algo";
  v170 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v366[3] = v170;
  v169 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v366 forKeys:v365 count:4];
  v376[4] = v169;
  v168 = [MEMORY[0x277CCABB0] numberWithInteger:14];
  v375[5] = v168;
  v363[0] = @"rssiImmediate";
  v167 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v364[0] = v167;
  v363[1] = @"rssiNear";
  v166 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v364[1] = v166;
  v363[2] = @"sampSize";
  v165 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v364[2] = v165;
  v363[3] = @"Algo";
  v164 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v364[3] = v164;
  v163 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v364 forKeys:v363 count:4];
  v376[5] = v163;
  v162 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v375[6] = v162;
  v361[0] = @"rssiImmediate";
  v161 = [MEMORY[0x277CCABB0] numberWithInteger:-37];
  v362[0] = v161;
  v361[1] = @"rssiNear";
  v160 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v362[1] = v160;
  v361[2] = @"sampSize";
  v159 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v362[2] = v159;
  v361[3] = @"Algo";
  v158 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v362[3] = v158;
  v157 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v362 forKeys:v361 count:4];
  v376[6] = v157;
  v156 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  v375[7] = v156;
  v359[0] = @"rssiImmediate";
  v155 = [MEMORY[0x277CCABB0] numberWithInteger:-37];
  v360[0] = v155;
  v359[1] = @"rssiNear";
  v154 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v360[1] = v154;
  v359[2] = @"sampSize";
  v153 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v360[2] = v153;
  v359[3] = @"Algo";
  v152 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v360[3] = v152;
  v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v360 forKeys:v359 count:4];
  v376[7] = v151;
  v150 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v375[8] = v150;
  v357[0] = @"rssiImmediate";
  v149 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v358[0] = v149;
  v357[1] = @"rssiNear";
  v148 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v358[1] = v148;
  v357[2] = @"sampSize";
  v147 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v358[2] = v147;
  v357[3] = @"Algo";
  v146 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v358[3] = v146;
  v145 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v358 forKeys:v357 count:4];
  v376[8] = v145;
  v144 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v375[9] = v144;
  v355[0] = @"rssiImmediate";
  v143 = [MEMORY[0x277CCABB0] numberWithInteger:-36];
  v356[0] = v143;
  v355[1] = @"rssiNear";
  v142 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v356[1] = v142;
  v355[2] = @"sampSize";
  v141 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v356[2] = v141;
  v355[3] = @"Algo";
  v140 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v356[3] = v140;
  v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v356 forKeys:v355 count:4];
  v376[9] = v100;
  v99 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v375[10] = v99;
  v353[0] = @"rssiImmediate";
  v98 = [MEMORY[0x277CCABB0] numberWithInteger:-39];
  v354[0] = v98;
  v353[1] = @"rssiNear";
  v97 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v354[1] = v97;
  v353[2] = @"sampSize";
  v96 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v354[2] = v96;
  v353[3] = @"Algo";
  v95 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v354[3] = v95;
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v354 forKeys:v353 count:4];
  v376[10] = v94;
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v376 forKeys:v375 count:11];
  v416[2] = v93;
  v92 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  v415[3] = v92;
  v91 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v351[0] = v91;
  v349[0] = @"rssiImmediate";
  v90 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v350[0] = v90;
  v349[1] = @"rssiNear";
  v89 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v350[1] = v89;
  v349[2] = @"sampSize";
  v88 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v350[2] = v88;
  v349[3] = @"Algo";
  v87 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v350[3] = v87;
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v350 forKeys:v349 count:4];
  v352[0] = v86;
  v85 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v351[1] = v85;
  v347[0] = @"rssiImmediate";
  v84 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v348[0] = v84;
  v347[1] = @"rssiNear";
  v83 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v348[1] = v83;
  v347[2] = @"sampSize";
  v82 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v348[2] = v82;
  v347[3] = @"Algo";
  v81 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v348[3] = v81;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v348 forKeys:v347 count:4];
  v352[1] = v80;
  v79 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v351[2] = v79;
  v345[0] = @"rssiImmediate";
  v78 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v346[0] = v78;
  v345[1] = @"rssiNear";
  v305 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v346[1] = v305;
  v345[2] = @"sampSize";
  v77 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v346[2] = v77;
  v345[3] = @"Algo";
  v76 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v346[3] = v76;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v346 forKeys:v345 count:4];
  v352[2] = v75;
  v74 = [MEMORY[0x277CCABB0] numberWithInteger:15];
  v351[3] = v74;
  v343[0] = @"rssiImmediate";
  v73 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v344[0] = v73;
  v343[1] = @"rssiNear";
  v72 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v344[1] = v72;
  v343[2] = @"sampSize";
  v71 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v344[2] = v71;
  v343[3] = @"Algo";
  v70 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v344[3] = v70;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v344 forKeys:v343 count:4];
  v352[3] = v69;
  v68 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v351[4] = v68;
  v341[0] = @"rssiImmediate";
  v67 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v342[0] = v67;
  v341[1] = @"rssiNear";
  v66 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v342[1] = v66;
  v341[2] = @"sampSize";
  v65 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v342[2] = v65;
  v341[3] = @"Algo";
  v64 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v342[3] = v64;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v342 forKeys:v341 count:4];
  v352[4] = v63;
  v62 = [MEMORY[0x277CCABB0] numberWithInteger:14];
  v351[5] = v62;
  v339[0] = @"rssiImmediate";
  v61 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v340[0] = v61;
  v339[1] = @"rssiNear";
  v60 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v340[1] = v60;
  v339[2] = @"sampSize";
  v59 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v340[2] = v59;
  v339[3] = @"Algo";
  v58 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v340[3] = v58;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v340 forKeys:v339 count:4];
  v352[5] = v57;
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v351[6] = v56;
  v337[0] = @"rssiImmediate";
  v55 = [MEMORY[0x277CCABB0] numberWithInteger:-37];
  v338[0] = v55;
  v337[1] = @"rssiNear";
  v54 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v338[1] = v54;
  v337[2] = @"sampSize";
  v53 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v338[2] = v53;
  v337[3] = @"Algo";
  v52 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v338[3] = v52;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v338 forKeys:v337 count:4];
  v352[6] = v51;
  v50 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  v351[7] = v50;
  v335[0] = @"rssiImmediate";
  v49 = [MEMORY[0x277CCABB0] numberWithInteger:-37];
  v336[0] = v49;
  v335[1] = @"rssiNear";
  v48 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v336[1] = v48;
  v335[2] = @"sampSize";
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v336[2] = v47;
  v335[3] = @"Algo";
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v336[3] = v46;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v336 forKeys:v335 count:4];
  v352[7] = v45;
  v44 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v351[8] = v44;
  v333[0] = @"rssiImmediate";
  v43 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v334[0] = v43;
  v333[1] = @"rssiNear";
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v334[1] = v42;
  v333[2] = @"sampSize";
  v41 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v334[2] = v41;
  v333[3] = @"Algo";
  v40 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v334[3] = v40;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v334 forKeys:v333 count:4];
  v352[8] = v39;
  v38 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v351[9] = v38;
  v331[0] = @"rssiImmediate";
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:-36];
  v332[0] = v37;
  v331[1] = @"rssiNear";
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v332[1] = v36;
  v331[2] = @"sampSize";
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v332[2] = v35;
  v331[3] = @"Algo";
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v332[3] = v34;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v332 forKeys:v331 count:4];
  v352[9] = v33;
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v351[10] = v32;
  v329[0] = @"rssiImmediate";
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:-39];
  v330[0] = v31;
  v329[1] = @"rssiNear";
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v330[1] = v30;
  v329[2] = @"sampSize";
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v330[2] = v29;
  v329[3] = @"Algo";
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v330[3] = v28;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v330 forKeys:v329 count:4];
  v352[10] = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v352 forKeys:v351 count:11];
  v416[3] = v26;
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:14];
  v415[4] = v25;
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v327[0] = v24;
  v325[0] = @"rssiImmediate";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v326[0] = v23;
  v325[1] = @"rssiNear";
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v326[1] = v22;
  v325[2] = @"sampSize";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v326[2] = v21;
  v325[3] = @"Algo";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v326[3] = v20;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v326 forKeys:v325 count:4];
  v328[0] = v19;
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v327[1] = v18;
  v323[0] = @"rssiImmediate";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v324[0] = v17;
  v323[1] = @"rssiNear";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v324[1] = v16;
  v323[2] = @"sampSize";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v324[2] = v15;
  v323[3] = @"Algo";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v324[3] = v14;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v324 forKeys:v323 count:4];
  v328[1] = v13;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v327[2] = v12;
  v321[0] = @"rssiImmediate";
  v139 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v322[0] = v139;
  v321[1] = @"rssiNear";
  v138 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v322[1] = v138;
  v321[2] = @"sampSize";
  v137 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v322[2] = v137;
  v321[3] = @"Algo";
  v136 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v322[3] = v136;
  v135 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v322 forKeys:v321 count:4];
  v328[2] = v135;
  v134 = [MEMORY[0x277CCABB0] numberWithInteger:15];
  v327[3] = v134;
  v319[0] = @"rssiImmediate";
  v133 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v320[0] = v133;
  v319[1] = @"rssiNear";
  v132 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v320[1] = v132;
  v319[2] = @"sampSize";
  v131 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v320[2] = v131;
  v319[3] = @"Algo";
  v130 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v320[3] = v130;
  v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v320 forKeys:v319 count:4];
  v328[3] = v129;
  v128 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v327[4] = v128;
  v317[0] = @"rssiImmediate";
  v127 = [MEMORY[0x277CCABB0] numberWithInteger:-41];
  v318[0] = v127;
  v317[1] = @"rssiNear";
  v126 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v318[1] = v126;
  v317[2] = @"sampSize";
  v125 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v318[2] = v125;
  v317[3] = @"Algo";
  v124 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v318[3] = v124;
  v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v318 forKeys:v317 count:4];
  v328[4] = v123;
  v122 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v327[5] = v122;
  v315[0] = @"rssiImmediate";
  v121 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v316[0] = v121;
  v315[1] = @"rssiNear";
  v120 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v316[1] = v120;
  v315[2] = @"sampSize";
  v119 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v316[2] = v119;
  v315[3] = @"Algo";
  v118 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v316[3] = v118;
  v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v316 forKeys:v315 count:4];
  v328[5] = v117;
  v116 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  v327[6] = v116;
  v313[0] = @"rssiImmediate";
  v115 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v314[0] = v115;
  v313[1] = @"rssiNear";
  v114 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v314[1] = v114;
  v313[2] = @"sampSize";
  v113 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v314[2] = v113;
  v313[3] = @"Algo";
  v112 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v314[3] = v112;
  v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v314 forKeys:v313 count:4];
  v328[6] = v111;
  v110 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v327[7] = v110;
  v311[0] = @"rssiImmediate";
  v109 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v312[0] = v109;
  v311[1] = @"rssiNear";
  v108 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v312[1] = v108;
  v311[2] = @"sampSize";
  v107 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v312[2] = v107;
  v311[3] = @"Algo";
  v106 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v312[3] = v106;
  v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v312 forKeys:v311 count:4];
  v328[7] = v105;
  v104 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v327[8] = v104;
  v309[0] = @"rssiImmediate";
  v103 = [MEMORY[0x277CCABB0] numberWithInteger:-39];
  v310[0] = v103;
  v309[1] = @"rssiNear";
  v102 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v310[1] = v102;
  v309[2] = @"sampSize";
  v101 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v310[2] = v101;
  v309[3] = @"Algo";
  v0 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v310[3] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v310 forKeys:v309 count:4];
  v328[8] = v1;
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v327[9] = v2;
  v307[0] = @"rssiImmediate";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:-42];
  v308[0] = v3;
  v307[1] = @"rssiNear";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v308[1] = v4;
  v307[2] = @"sampSize";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v308[2] = v5;
  v307[3] = @"Algo";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v308[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v308 forKeys:v307 count:4];
  v328[9] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v328 forKeys:v327 count:10];
  v416[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v416 forKeys:v415 count:5];
  v10 = +[PRProximityDatabase getDeviceData]::proxDeviceData;
  +[PRProximityDatabase getDeviceData]::proxDeviceData = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (BOOL)getProximityDeviceParameters:(id *)a3 forDeviceModel:(id)a4 withError:(id *)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = +[PRProximityDatabase getScannerDeviceModel];
  v9 = [PRProximityDatabase getPRDeviceModelFromModelId:v7];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (v8)
    {
      if (v9)
      {
        v12 = 0;
        v13 = 0;
        if (!a5)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v22 = @"Unknown Peer model";
    }

    else
    {
      v22 = @"Unknown Scanning device - Proximity Estimation not supported on this device";
    }

    [MEMORY[0x277CCACA8] stringWithFormat:v22];
    v12 = v13 = 0;
    if (!a5)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (!v13)
    {
      v23 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      v32[0] = v12;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *a5 = [v23 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:999 userInfo:v24];
    }

    goto LABEL_23;
  }

  v30 = +[PRProximityDatabase getDeviceData];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v15 = [v30 objectForKeyedSubscript:v14];

  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v17 = [v15 objectForKeyedSubscript:v16];

    v13 = v17 != 0;
    if (v17)
    {
      v28 = [PRProximityDeviceParameters alloc];
      v29 = [v17 objectForKeyedSubscript:@"Algo"];
      v18 = *(&btFilters + [v29 intValue]);
      v27 = [v17 objectForKeyedSubscript:@"sampSize"];
      v19 = [v27 unsignedIntegerValue];
      v20 = [v17 objectForKeyedSubscript:@"rssiImmediate"];
      v21 = [v17 objectForKeyedSubscript:@"rssiNear"];
      *a3 = [(PRProximityDeviceParameters *)v28 initWithFilter:v18 sampleSize:v19 rssiImmediate:v20 rssiNear:v21];

      v12 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Proximity Estimation to Peer not supported"];
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Proximity Estimation not supported on this device"];
    v13 = 0;
  }

  if (a5)
  {
    goto LABEL_21;
  }

LABEL_23:

  v25 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (int64_t)getPRDeviceModelFromModelId:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 containsString:@"AirPods"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:{@"BeatsSolo3, 1"}])
    {
      v5 = 6;
    }

    else if ([v4 isEqualToString:{@"Device1, 8201"}])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:@"SiriRemote"])
    {
      v5 = 9;
    }

    else if ([v4 containsString:@"iPad"])
    {
      v5 = 10;
    }

    else if ([v4 containsString:@"iPhone"])
    {
      if (([v4 isEqualToString:{@"iPhone10, 1"}] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"iPhone10,4"))
      {
        v5 = 12;
      }

      else
      {
        v5 = 11;
      }

      if (([v4 isEqualToString:{@"iPhone10, 2"}] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"iPhone10,5"))
      {
        v5 = 13;
      }

      if (([v4 isEqualToString:{@"iPhone10, 3"}] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"iPhone10,6") & 1) != 0 || objc_msgSend(v4, "containsString:", @"iPhone11"))
      {
        v5 = 14;
      }
    }

    else if ([v4 containsString:@"Watch"])
    {
      v5 = 15;
    }

    else if ([v4 containsString:@"AppleTV"])
    {
      v5 = 16;
    }

    else if ([v4 containsString:@"MacPro"])
    {
      v5 = 20;
    }

    else if ([v4 containsString:@"iMac"])
    {
      v5 = 19;
    }

    else if ([v4 containsString:@"Mac"])
    {
      v5 = 18;
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

+ (int64_t)getScannerDeviceModel
{
  v2 = PRGetDeviceModelName();
  v3 = [PRProximityDatabase getPRDeviceModelFromModelId:v2];

  return v3;
}

@end