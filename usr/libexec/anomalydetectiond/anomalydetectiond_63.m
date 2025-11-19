uint64_t CMMsl::VIOEstimation::VIOEstimation(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422750;
  *(a1 + 336) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 200) = 0u;
  v6 = a1 + 200;
  *(a1 + 248) = 0u;
  v7 = a1 + 248;
  *(a1 + 152) = 0u;
  v8 = a1 + 152;
  *(a1 + 104) = 0u;
  v9 = a1 + 104;
  *(a1 + 340) = *(a2 + 340);
  *(a2 + 340) = 0;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  sub_1002A2DD0(a1 + 176, (a2 + 176));
  sub_1002A2DD0(v9, (a2 + 104));
  sub_1002A2DD0(a1 + 272, (a2 + 272));
  sub_1002A2DD0(v4, (a2 + 8));
  sub_1002A2DD0(a1 + 224, (a2 + 224));
  sub_1002A2DD0(v8, (a2 + 152));
  sub_1002A2DD0(a1 + 128, (a2 + 128));
  sub_1002A2DD0(v7, (a2 + 248));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v6, (a2 + 200));
  sub_1002A2DD0(a1 + 80, (a2 + 80));
  sub_1002A2DD0(v5, (a2 + 56));
  *(a1 + 332) = *(a2 + 332);
  *(a1 + 328) = *(a2 + 328);
  return a1;
}

CMMsl *CMMsl::VIOEstimation::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOEstimation::VIOEstimation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VIOEstimation::~VIOEstimation(v5);
  }

  return a1;
}

uint64_t CMMsl::VIOEstimation::formatText(CMMsl::VIOEstimation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "accelBias", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "accelBiasCov", v10);
  }

  v11 = *(this + 340);
  if ((v11 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "cameraImageResolutionHeight", *(this + 82));
    v11 = *(this + 340);
  }

  if ((v11 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "cameraImageResolutionWidth", *(this + 83));
  }

  v12 = *(this + 7);
  v13 = *(this + 8);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::TextFormatter::format(a2, "cameraIntrinsics", v14);
  }

  v15 = *(this + 10);
  v16 = *(this + 11);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(a2, "cameraPose", v17);
  }

  v18 = *(this + 13);
  v19 = *(this + 14);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(a2, "gyroBias", v20);
  }

  v21 = *(this + 16);
  v22 = *(this + 17);
  while (v21 != v22)
  {
    v23 = *v21++;
    PB::TextFormatter::format(a2, "gyroBiasCov", v23);
  }

  v24 = *(this + 340);
  if (v24)
  {
    PB::TextFormatter::format(a2, "machContinuousOriginTimestamp", *(this + 37));
    v24 = *(this + 340);
  }

  if ((v24 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "machContinuousTimestamp", *(this + 38));
  }

  v25 = *(this + 22);
  v26 = *(this + 23);
  while (v25 != v26)
  {
    v27 = *v25++;
    PB::TextFormatter::format(a2, "orientation", v27);
  }

  v28 = *(this + 19);
  v29 = *(this + 20);
  while (v28 != v29)
  {
    v30 = *v28++;
    PB::TextFormatter::format(a2, "orientationCov", v30);
  }

  if ((*(this + 340) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "originTimestamp", *(this + 39));
  }

  v31 = *(this + 28);
  v32 = *(this + 29);
  while (v31 != v32)
  {
    v33 = *v31++;
    PB::TextFormatter::format(a2, "position", v33);
  }

  v34 = *(this + 25);
  v35 = *(this + 26);
  while (v34 != v35)
  {
    v36 = *v34++;
    PB::TextFormatter::format(a2, "positionCov", v36);
  }

  v37 = *(this + 340);
  if ((v37 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 40));
    v37 = *(this + 340);
  }

  if ((v37 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "trackingState", *(this + 84));
  }

  v38 = *(this + 34);
  v39 = *(this + 35);
  while (v38 != v39)
  {
    v40 = *v38++;
    PB::TextFormatter::format(a2, "velocity", v40);
  }

  v41 = *(this + 31);
  v42 = *(this + 32);
  while (v41 != v42)
  {
    v43 = *v41++;
    PB::TextFormatter::format(a2, "velocityCov", v43);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::VIOEstimation::readFrom(CMMsl::VIOEstimation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_471;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 340) |= 0x40u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_424;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_312:
            LODWORD(v28) = 0;
            goto LABEL_424;
          }

          v244 = 0;
          v245 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v246 = v23 - v24;
          if (!v17)
          {
            v246 = 0;
          }

          v247 = (v25 + v24);
          v248 = v24 + 1;
          while (2)
          {
            if (v246)
            {
              v249 = *v247;
              *(a2 + 1) = v248;
              v28 |= (v249 & 0x7F) << v244;
              if (v249 < 0)
              {
                v244 += 7;
                --v246;
                ++v247;
                ++v248;
                v14 = v245++ > 8;
                if (v14)
                {
                  goto LABEL_312;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_424:
          *(this + 84) = v28;
          goto LABEL_467;
        case 2u:
          *(this + 340) |= 4u;
          v147 = *(a2 + 1);
          if (v147 > 0xFFFFFFFFFFFFFFF7 || v147 + 8 > *(a2 + 2))
          {
            goto LABEL_463;
          }

          *(this + 39) = *(*a2 + v147);
          goto LABEL_465;
        case 3u:
          *(this + 340) |= 1u;
          v113 = *(a2 + 1);
          if (v113 > 0xFFFFFFFFFFFFFFF7 || v113 + 8 > *(a2 + 2))
          {
            goto LABEL_463;
          }

          *(this + 37) = *(*a2 + v113);
          goto LABEL_465;
        case 4u:
          *(this + 340) |= 8u;
          v130 = *(a2 + 1);
          if (v130 > 0xFFFFFFFFFFFFFFF7 || v130 + 8 > *(a2 + 2))
          {
            goto LABEL_463;
          }

          *(this + 40) = *(*a2 + v130);
          goto LABEL_465;
        case 5u:
          *(this + 340) |= 2u;
          v80 = *(a2 + 1);
          if (v80 > 0xFFFFFFFFFFFFFFF7 || v80 + 8 > *(a2 + 2))
          {
            goto LABEL_463;
          }

          *(this + 38) = *(*a2 + v80);
          goto LABEL_465;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v149 = *(a2 + 1);
            v150 = *(a2 + 2);
            while (v149 < v150 && (*(a2 + 24) & 1) == 0)
            {
              v152 = *(this + 23);
              v151 = *(this + 24);
              if (v152 >= v151)
              {
                v154 = *(this + 22);
                v155 = v152 - v154;
                v156 = (v152 - v154) >> 3;
                v157 = v156 + 1;
                if ((v156 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v158 = v151 - v154;
                if (v158 >> 2 > v157)
                {
                  v157 = v158 >> 2;
                }

                if (v158 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v159 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v159 = v157;
                }

                if (v159)
                {
                  sub_10000CDCC(this + 176, v159);
                }

                v160 = (v152 - v154) >> 3;
                v161 = (8 * v156);
                v162 = (8 * v156 - 8 * v160);
                *v161 = 0;
                v153 = v161 + 1;
                memcpy(v162, v154, v155);
                v163 = *(this + 22);
                *(this + 22) = v162;
                *(this + 23) = v153;
                *(this + 24) = 0;
                if (v163)
                {
                  operator delete(v163);
                }
              }

              else
              {
                *v152 = 0;
                v153 = v152 + 8;
              }

              *(this + 23) = v153;
              v164 = *(a2 + 1);
              if (v164 > 0xFFFFFFFFFFFFFFF7 || v164 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v153 - 1) = *(*a2 + v164);
              v150 = *(a2 + 2);
              v149 = *(a2 + 1) + 8;
              *(a2 + 1) = v149;
            }

            goto LABEL_290;
          }

          v253 = *(this + 23);
          v252 = *(this + 24);
          if (v253 >= v252)
          {
            v304 = *(this + 22);
            v305 = v253 - v304;
            v306 = (v253 - v304) >> 3;
            v307 = v306 + 1;
            if ((v306 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v308 = v252 - v304;
            if (v308 >> 2 > v307)
            {
              v307 = v308 >> 2;
            }

            if (v308 >= 0x7FFFFFFFFFFFFFF8)
            {
              v309 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v309 = v307;
            }

            if (v309)
            {
              sub_10000CDCC(this + 176, v309);
            }

            v362 = (v253 - v304) >> 3;
            v363 = (8 * v306);
            v364 = (8 * v306 - 8 * v362);
            *v363 = 0;
            v233 = v363 + 1;
            memcpy(v364, v304, v305);
            v365 = *(this + 22);
            *(this + 22) = v364;
            *(this + 23) = v233;
            *(this + 24) = 0;
            if (v365)
            {
              operator delete(v365);
            }
          }

          else
          {
            *v253 = 0;
            v233 = v253 + 8;
          }

          *(this + 23) = v233;
          goto LABEL_461;
        case 7u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v181 = *(a2 + 1);
            v182 = *(a2 + 2);
            while (v181 < v182 && (*(a2 + 24) & 1) == 0)
            {
              v184 = *(this + 14);
              v183 = *(this + 15);
              if (v184 >= v183)
              {
                v186 = *(this + 13);
                v187 = v184 - v186;
                v188 = (v184 - v186) >> 3;
                v189 = v188 + 1;
                if ((v188 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v190 = v183 - v186;
                if (v190 >> 2 > v189)
                {
                  v189 = v190 >> 2;
                }

                if (v190 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v191 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v191 = v189;
                }

                if (v191)
                {
                  sub_10000CDCC(this + 104, v191);
                }

                v192 = (v184 - v186) >> 3;
                v193 = (8 * v188);
                v194 = (8 * v188 - 8 * v192);
                *v193 = 0;
                v185 = v193 + 1;
                memcpy(v194, v186, v187);
                v195 = *(this + 13);
                *(this + 13) = v194;
                *(this + 14) = v185;
                *(this + 15) = 0;
                if (v195)
                {
                  operator delete(v195);
                }
              }

              else
              {
                *v184 = 0;
                v185 = v184 + 8;
              }

              *(this + 14) = v185;
              v196 = *(a2 + 1);
              if (v196 > 0xFFFFFFFFFFFFFFF7 || v196 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v185 - 1) = *(*a2 + v196);
              v182 = *(a2 + 2);
              v181 = *(a2 + 1) + 8;
              *(a2 + 1) = v181;
            }

            goto LABEL_290;
          }

          v257 = *(this + 14);
          v256 = *(this + 15);
          if (v257 >= v256)
          {
            v316 = *(this + 13);
            v317 = v257 - v316;
            v318 = (v257 - v316) >> 3;
            v319 = v318 + 1;
            if ((v318 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v320 = v256 - v316;
            if (v320 >> 2 > v319)
            {
              v319 = v320 >> 2;
            }

            if (v320 >= 0x7FFFFFFFFFFFFFF8)
            {
              v321 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v321 = v319;
            }

            if (v321)
            {
              sub_10000CDCC(this + 104, v321);
            }

            v370 = (v257 - v316) >> 3;
            v371 = (8 * v318);
            v372 = (8 * v318 - 8 * v370);
            *v371 = 0;
            v233 = v371 + 1;
            memcpy(v372, v316, v317);
            v373 = *(this + 13);
            *(this + 13) = v372;
            *(this + 14) = v233;
            *(this + 15) = 0;
            if (v373)
            {
              operator delete(v373);
            }
          }

          else
          {
            *v257 = 0;
            v233 = v257 + 8;
          }

          *(this + 14) = v233;
          goto LABEL_461;
        case 8u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v131 = *(a2 + 1);
            v132 = *(a2 + 2);
            while (v131 < v132 && (*(a2 + 24) & 1) == 0)
            {
              v134 = *(this + 35);
              v133 = *(this + 36);
              if (v134 >= v133)
              {
                v136 = *(this + 34);
                v137 = v134 - v136;
                v138 = (v134 - v136) >> 3;
                v139 = v138 + 1;
                if ((v138 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v140 = v133 - v136;
                if (v140 >> 2 > v139)
                {
                  v139 = v140 >> 2;
                }

                if (v140 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v141 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v141 = v139;
                }

                if (v141)
                {
                  sub_10000CDCC(this + 272, v141);
                }

                v142 = (v134 - v136) >> 3;
                v143 = (8 * v138);
                v144 = (8 * v138 - 8 * v142);
                *v143 = 0;
                v135 = v143 + 1;
                memcpy(v144, v136, v137);
                v145 = *(this + 34);
                *(this + 34) = v144;
                *(this + 35) = v135;
                *(this + 36) = 0;
                if (v145)
                {
                  operator delete(v145);
                }
              }

              else
              {
                *v134 = 0;
                v135 = v134 + 8;
              }

              *(this + 35) = v135;
              v146 = *(a2 + 1);
              if (v146 > 0xFFFFFFFFFFFFFFF7 || v146 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v135 - 1) = *(*a2 + v146);
              v132 = *(a2 + 2);
              v131 = *(a2 + 1) + 8;
              *(a2 + 1) = v131;
            }

            goto LABEL_290;
          }

          v251 = *(this + 35);
          v250 = *(this + 36);
          if (v251 >= v250)
          {
            v298 = *(this + 34);
            v299 = v251 - v298;
            v300 = (v251 - v298) >> 3;
            v301 = v300 + 1;
            if ((v300 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v302 = v250 - v298;
            if (v302 >> 2 > v301)
            {
              v301 = v302 >> 2;
            }

            if (v302 >= 0x7FFFFFFFFFFFFFF8)
            {
              v303 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v303 = v301;
            }

            if (v303)
            {
              sub_10000CDCC(this + 272, v303);
            }

            v358 = (v251 - v298) >> 3;
            v359 = (8 * v300);
            v360 = (8 * v300 - 8 * v358);
            *v359 = 0;
            v233 = v359 + 1;
            memcpy(v360, v298, v299);
            v361 = *(this + 34);
            *(this + 34) = v360;
            *(this + 35) = v233;
            *(this + 36) = 0;
            if (v361)
            {
              operator delete(v361);
            }
          }

          else
          {
            *v251 = 0;
            v233 = v251 + 8;
          }

          *(this + 35) = v233;
          goto LABEL_461;
        case 9u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_473:
              v383 = 0;
              return v383 & 1;
            }

            v215 = *(a2 + 1);
            v216 = *(a2 + 2);
            while (v215 < v216 && (*(a2 + 24) & 1) == 0)
            {
              v218 = *(this + 2);
              v217 = *(this + 3);
              if (v218 >= v217)
              {
                v220 = *(this + 1);
                v221 = v218 - v220;
                v222 = (v218 - v220) >> 3;
                v223 = v222 + 1;
                if ((v222 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v224 = v217 - v220;
                if (v224 >> 2 > v223)
                {
                  v223 = v224 >> 2;
                }

                if (v224 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v225 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v225 = v223;
                }

                if (v225)
                {
                  sub_10000CDCC(this + 8, v225);
                }

                v226 = (v218 - v220) >> 3;
                v227 = (8 * v222);
                v228 = (8 * v222 - 8 * v226);
                *v227 = 0;
                v219 = v227 + 1;
                memcpy(v228, v220, v221);
                v229 = *(this + 1);
                *(this + 1) = v228;
                *(this + 2) = v219;
                *(this + 3) = 0;
                if (v229)
                {
                  operator delete(v229);
                }
              }

              else
              {
                *v218 = 0;
                v219 = v218 + 8;
              }

              *(this + 2) = v219;
              v230 = *(a2 + 1);
              if (v230 > 0xFFFFFFFFFFFFFFF7 || v230 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v219 - 1) = *(*a2 + v230);
              v216 = *(a2 + 2);
              v215 = *(a2 + 1) + 8;
              *(a2 + 1) = v215;
            }

LABEL_290:
            PB::Reader::recallMark();
          }

          else
          {
            v261 = *(this + 2);
            v260 = *(this + 3);
            if (v261 >= v260)
            {
              v328 = *(this + 1);
              v329 = v261 - v328;
              v330 = (v261 - v328) >> 3;
              v331 = v330 + 1;
              if ((v330 + 1) >> 61)
              {
LABEL_474:
                sub_10000CD24();
              }

              v332 = v260 - v328;
              if (v332 >> 2 > v331)
              {
                v331 = v332 >> 2;
              }

              if (v332 >= 0x7FFFFFFFFFFFFFF8)
              {
                v333 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v333 = v331;
              }

              if (v333)
              {
                sub_10000CDCC(this + 8, v333);
              }

              v378 = (v261 - v328) >> 3;
              v379 = (8 * v330);
              v380 = (8 * v330 - 8 * v378);
              *v379 = 0;
              v233 = v379 + 1;
              memcpy(v380, v328, v329);
              v381 = *(this + 1);
              *(this + 1) = v380;
              *(this + 2) = v233;
              *(this + 3) = 0;
              if (v381)
              {
                operator delete(v381);
              }
            }

            else
            {
              *v261 = 0;
              v233 = v261 + 8;
            }

            *(this + 2) = v233;
LABEL_461:
            v382 = *(a2 + 1);
            if (v382 <= 0xFFFFFFFFFFFFFFF7 && v382 + 8 <= *(a2 + 2))
            {
              *(v233 - 1) = *(*a2 + v382);
LABEL_465:
              v198 = *(a2 + 1) + 8;
LABEL_466:
              *(a2 + 1) = v198;
            }

            else
            {
LABEL_463:
              *(a2 + 24) = 1;
            }
          }

LABEL_467:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_471;
          }

          break;
        case 0xAu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v97 = *(a2 + 1);
            v98 = *(a2 + 2);
            while (v97 < v98 && (*(a2 + 24) & 1) == 0)
            {
              v100 = *(this + 29);
              v99 = *(this + 30);
              if (v100 >= v99)
              {
                v102 = *(this + 28);
                v103 = v100 - v102;
                v104 = (v100 - v102) >> 3;
                v105 = v104 + 1;
                if ((v104 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v106 = v99 - v102;
                if (v106 >> 2 > v105)
                {
                  v105 = v106 >> 2;
                }

                if (v106 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v107 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v107 = v105;
                }

                if (v107)
                {
                  sub_10000CDCC(this + 224, v107);
                }

                v108 = (v100 - v102) >> 3;
                v109 = (8 * v104);
                v110 = (8 * v104 - 8 * v108);
                *v109 = 0;
                v101 = v109 + 1;
                memcpy(v110, v102, v103);
                v111 = *(this + 28);
                *(this + 28) = v110;
                *(this + 29) = v101;
                *(this + 30) = 0;
                if (v111)
                {
                  operator delete(v111);
                }
              }

              else
              {
                *v100 = 0;
                v101 = v100 + 8;
              }

              *(this + 29) = v101;
              v112 = *(a2 + 1);
              if (v112 > 0xFFFFFFFFFFFFFFF7 || v112 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v101 - 1) = *(*a2 + v112);
              v98 = *(a2 + 2);
              v97 = *(a2 + 1) + 8;
              *(a2 + 1) = v97;
            }

            goto LABEL_290;
          }

          v241 = *(this + 29);
          v240 = *(this + 30);
          if (v241 >= v240)
          {
            v286 = *(this + 28);
            v287 = v241 - v286;
            v288 = (v241 - v286) >> 3;
            v289 = v288 + 1;
            if ((v288 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v290 = v240 - v286;
            if (v290 >> 2 > v289)
            {
              v289 = v290 >> 2;
            }

            if (v290 >= 0x7FFFFFFFFFFFFFF8)
            {
              v291 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v291 = v289;
            }

            if (v291)
            {
              sub_10000CDCC(this + 224, v291);
            }

            v350 = (v241 - v286) >> 3;
            v351 = (8 * v288);
            v352 = (8 * v288 - 8 * v350);
            *v351 = 0;
            v233 = v351 + 1;
            memcpy(v352, v286, v287);
            v353 = *(this + 28);
            *(this + 28) = v352;
            *(this + 29) = v233;
            *(this + 30) = 0;
            if (v353)
            {
              operator delete(v353);
            }
          }

          else
          {
            *v241 = 0;
            v233 = v241 + 8;
          }

          *(this + 29) = v233;
          goto LABEL_461;
        case 0xBu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v199 = *(a2 + 1);
            v200 = *(a2 + 2);
            while (v199 < v200 && (*(a2 + 24) & 1) == 0)
            {
              v202 = *(this + 20);
              v201 = *(this + 21);
              if (v202 >= v201)
              {
                v204 = *(this + 19);
                v205 = v202 - v204;
                v206 = (v202 - v204) >> 3;
                v207 = v206 + 1;
                if ((v206 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v208 = v201 - v204;
                if (v208 >> 2 > v207)
                {
                  v207 = v208 >> 2;
                }

                if (v208 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v209 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v209 = v207;
                }

                if (v209)
                {
                  sub_10000CDCC(this + 152, v209);
                }

                v210 = (v202 - v204) >> 3;
                v211 = (8 * v206);
                v212 = (8 * v206 - 8 * v210);
                *v211 = 0;
                v203 = v211 + 1;
                memcpy(v212, v204, v205);
                v213 = *(this + 19);
                *(this + 19) = v212;
                *(this + 20) = v203;
                *(this + 21) = 0;
                if (v213)
                {
                  operator delete(v213);
                }
              }

              else
              {
                *v202 = 0;
                v203 = v202 + 8;
              }

              *(this + 20) = v203;
              v214 = *(a2 + 1);
              if (v214 > 0xFFFFFFFFFFFFFFF7 || v214 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v203 - 1) = *(*a2 + v214);
              v200 = *(a2 + 2);
              v199 = *(a2 + 1) + 8;
              *(a2 + 1) = v199;
            }

            goto LABEL_290;
          }

          v259 = *(this + 20);
          v258 = *(this + 21);
          if (v259 >= v258)
          {
            v322 = *(this + 19);
            v323 = v259 - v322;
            v324 = (v259 - v322) >> 3;
            v325 = v324 + 1;
            if ((v324 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v326 = v258 - v322;
            if (v326 >> 2 > v325)
            {
              v325 = v326 >> 2;
            }

            if (v326 >= 0x7FFFFFFFFFFFFFF8)
            {
              v327 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v327 = v325;
            }

            if (v327)
            {
              sub_10000CDCC(this + 152, v327);
            }

            v374 = (v259 - v322) >> 3;
            v375 = (8 * v324);
            v376 = (8 * v324 - 8 * v374);
            *v375 = 0;
            v233 = v375 + 1;
            memcpy(v376, v322, v323);
            v377 = *(this + 19);
            *(this + 19) = v376;
            *(this + 20) = v233;
            *(this + 21) = 0;
            if (v377)
            {
              operator delete(v377);
            }
          }

          else
          {
            *v259 = 0;
            v233 = v259 + 8;
          }

          *(this + 20) = v233;
          goto LABEL_461;
        case 0xCu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v64 = *(a2 + 1);
            v65 = *(a2 + 2);
            while (v64 < v65 && (*(a2 + 24) & 1) == 0)
            {
              v67 = *(this + 17);
              v66 = *(this + 18);
              if (v67 >= v66)
              {
                v69 = *(this + 16);
                v70 = v67 - v69;
                v71 = (v67 - v69) >> 3;
                v72 = v71 + 1;
                if ((v71 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v73 = v66 - v69;
                if (v73 >> 2 > v72)
                {
                  v72 = v73 >> 2;
                }

                if (v73 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v74 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v74 = v72;
                }

                if (v74)
                {
                  sub_10000CDCC(this + 128, v74);
                }

                v75 = (v67 - v69) >> 3;
                v76 = (8 * v71);
                v77 = (8 * v71 - 8 * v75);
                *v76 = 0;
                v68 = v76 + 1;
                memcpy(v77, v69, v70);
                v78 = *(this + 16);
                *(this + 16) = v77;
                *(this + 17) = v68;
                *(this + 18) = 0;
                if (v78)
                {
                  operator delete(v78);
                }
              }

              else
              {
                *v67 = 0;
                v68 = v67 + 8;
              }

              *(this + 17) = v68;
              v79 = *(a2 + 1);
              if (v79 > 0xFFFFFFFFFFFFFFF7 || v79 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v68 - 1) = *(*a2 + v79);
              v65 = *(a2 + 2);
              v64 = *(a2 + 1) + 8;
              *(a2 + 1) = v64;
            }

            goto LABEL_290;
          }

          v237 = *(this + 17);
          v236 = *(this + 18);
          if (v237 >= v236)
          {
            v274 = *(this + 16);
            v275 = v237 - v274;
            v276 = (v237 - v274) >> 3;
            v277 = v276 + 1;
            if ((v276 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v278 = v236 - v274;
            if (v278 >> 2 > v277)
            {
              v277 = v278 >> 2;
            }

            if (v278 >= 0x7FFFFFFFFFFFFFF8)
            {
              v279 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v279 = v277;
            }

            if (v279)
            {
              sub_10000CDCC(this + 128, v279);
            }

            v342 = (v237 - v274) >> 3;
            v343 = (8 * v276);
            v344 = (8 * v276 - 8 * v342);
            *v343 = 0;
            v233 = v343 + 1;
            memcpy(v344, v274, v275);
            v345 = *(this + 16);
            *(this + 16) = v344;
            *(this + 17) = v233;
            *(this + 18) = 0;
            if (v345)
            {
              operator delete(v345);
            }
          }

          else
          {
            *v237 = 0;
            v233 = v237 + 8;
          }

          *(this + 17) = v233;
          goto LABEL_461;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v81 = *(a2 + 1);
            v82 = *(a2 + 2);
            while (v81 < v82 && (*(a2 + 24) & 1) == 0)
            {
              v84 = *(this + 32);
              v83 = *(this + 33);
              if (v84 >= v83)
              {
                v86 = *(this + 31);
                v87 = v84 - v86;
                v88 = (v84 - v86) >> 3;
                v89 = v88 + 1;
                if ((v88 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v90 = v83 - v86;
                if (v90 >> 2 > v89)
                {
                  v89 = v90 >> 2;
                }

                if (v90 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v91 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v91 = v89;
                }

                if (v91)
                {
                  sub_10000CDCC(this + 248, v91);
                }

                v92 = (v84 - v86) >> 3;
                v93 = (8 * v88);
                v94 = (8 * v88 - 8 * v92);
                *v93 = 0;
                v85 = v93 + 1;
                memcpy(v94, v86, v87);
                v95 = *(this + 31);
                *(this + 31) = v94;
                *(this + 32) = v85;
                *(this + 33) = 0;
                if (v95)
                {
                  operator delete(v95);
                }
              }

              else
              {
                *v84 = 0;
                v85 = v84 + 8;
              }

              *(this + 32) = v85;
              v96 = *(a2 + 1);
              if (v96 > 0xFFFFFFFFFFFFFFF7 || v96 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v85 - 1) = *(*a2 + v96);
              v82 = *(a2 + 2);
              v81 = *(a2 + 1) + 8;
              *(a2 + 1) = v81;
            }

            goto LABEL_290;
          }

          v239 = *(this + 32);
          v238 = *(this + 33);
          if (v239 >= v238)
          {
            v280 = *(this + 31);
            v281 = v239 - v280;
            v282 = (v239 - v280) >> 3;
            v283 = v282 + 1;
            if ((v282 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v284 = v238 - v280;
            if (v284 >> 2 > v283)
            {
              v283 = v284 >> 2;
            }

            if (v284 >= 0x7FFFFFFFFFFFFFF8)
            {
              v285 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v285 = v283;
            }

            if (v285)
            {
              sub_10000CDCC(this + 248, v285);
            }

            v346 = (v239 - v280) >> 3;
            v347 = (8 * v282);
            v348 = (8 * v282 - 8 * v346);
            *v347 = 0;
            v233 = v347 + 1;
            memcpy(v348, v280, v281);
            v349 = *(this + 31);
            *(this + 31) = v348;
            *(this + 32) = v233;
            *(this + 33) = 0;
            if (v349)
            {
              operator delete(v349);
            }
          }

          else
          {
            *v239 = 0;
            v233 = v239 + 8;
          }

          *(this + 32) = v233;
          goto LABEL_461;
        case 0xEu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v165 = *(a2 + 1);
            v166 = *(a2 + 2);
            while (v165 < v166 && (*(a2 + 24) & 1) == 0)
            {
              v168 = *(this + 5);
              v167 = *(this + 6);
              if (v168 >= v167)
              {
                v170 = *(this + 4);
                v171 = v168 - v170;
                v172 = (v168 - v170) >> 3;
                v173 = v172 + 1;
                if ((v172 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v174 = v167 - v170;
                if (v174 >> 2 > v173)
                {
                  v173 = v174 >> 2;
                }

                if (v174 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v175 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v175 = v173;
                }

                if (v175)
                {
                  sub_10000CDCC(this + 32, v175);
                }

                v176 = (v168 - v170) >> 3;
                v177 = (8 * v172);
                v178 = (8 * v172 - 8 * v176);
                *v177 = 0;
                v169 = v177 + 1;
                memcpy(v178, v170, v171);
                v179 = *(this + 4);
                *(this + 4) = v178;
                *(this + 5) = v169;
                *(this + 6) = 0;
                if (v179)
                {
                  operator delete(v179);
                }
              }

              else
              {
                *v168 = 0;
                v169 = v168 + 8;
              }

              *(this + 5) = v169;
              v180 = *(a2 + 1);
              if (v180 > 0xFFFFFFFFFFFFFFF7 || v180 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v169 - 1) = *(*a2 + v180);
              v166 = *(a2 + 2);
              v165 = *(a2 + 1) + 8;
              *(a2 + 1) = v165;
            }

            goto LABEL_290;
          }

          v255 = *(this + 5);
          v254 = *(this + 6);
          if (v255 >= v254)
          {
            v310 = *(this + 4);
            v311 = v255 - v310;
            v312 = (v255 - v310) >> 3;
            v313 = v312 + 1;
            if ((v312 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v314 = v254 - v310;
            if (v314 >> 2 > v313)
            {
              v313 = v314 >> 2;
            }

            if (v314 >= 0x7FFFFFFFFFFFFFF8)
            {
              v315 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v315 = v313;
            }

            if (v315)
            {
              sub_10000CDCC(this + 32, v315);
            }

            v366 = (v255 - v310) >> 3;
            v367 = (8 * v312);
            v368 = (8 * v312 - 8 * v366);
            *v367 = 0;
            v233 = v367 + 1;
            memcpy(v368, v310, v311);
            v369 = *(this + 4);
            *(this + 4) = v368;
            *(this + 5) = v233;
            *(this + 6) = 0;
            if (v369)
            {
              operator delete(v369);
            }
          }

          else
          {
            *v255 = 0;
            v233 = v255 + 8;
          }

          *(this + 5) = v233;
          goto LABEL_461;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v48 = *(a2 + 1);
            v49 = *(a2 + 2);
            while (v48 < v49 && (*(a2 + 24) & 1) == 0)
            {
              v51 = *(this + 26);
              v50 = *(this + 27);
              if (v51 >= v50)
              {
                v53 = *(this + 25);
                v54 = v51 - v53;
                v55 = (v51 - v53) >> 3;
                v56 = v55 + 1;
                if ((v55 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v57 = v50 - v53;
                if (v57 >> 2 > v56)
                {
                  v56 = v57 >> 2;
                }

                if (v57 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v58 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v58 = v56;
                }

                if (v58)
                {
                  sub_10000CDCC(this + 200, v58);
                }

                v59 = (v51 - v53) >> 3;
                v60 = (8 * v55);
                v61 = (8 * v55 - 8 * v59);
                *v60 = 0;
                v52 = v60 + 1;
                memcpy(v61, v53, v54);
                v62 = *(this + 25);
                *(this + 25) = v61;
                *(this + 26) = v52;
                *(this + 27) = 0;
                if (v62)
                {
                  operator delete(v62);
                }
              }

              else
              {
                *v51 = 0;
                v52 = v51 + 8;
              }

              *(this + 26) = v52;
              v63 = *(a2 + 1);
              if (v63 > 0xFFFFFFFFFFFFFFF7 || v63 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v52 - 1) = *(*a2 + v63);
              v49 = *(a2 + 2);
              v48 = *(a2 + 1) + 8;
              *(a2 + 1) = v48;
            }

            goto LABEL_290;
          }

          v235 = *(this + 26);
          v234 = *(this + 27);
          if (v235 >= v234)
          {
            v268 = *(this + 25);
            v269 = v235 - v268;
            v270 = (v235 - v268) >> 3;
            v271 = v270 + 1;
            if ((v270 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v272 = v234 - v268;
            if (v272 >> 2 > v271)
            {
              v271 = v272 >> 2;
            }

            if (v272 >= 0x7FFFFFFFFFFFFFF8)
            {
              v273 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v273 = v271;
            }

            if (v273)
            {
              sub_10000CDCC(this + 200, v273);
            }

            v338 = (v235 - v268) >> 3;
            v339 = (8 * v270);
            v340 = (8 * v270 - 8 * v338);
            *v339 = 0;
            v233 = v339 + 1;
            memcpy(v340, v268, v269);
            v341 = *(this + 25);
            *(this + 25) = v340;
            *(this + 26) = v233;
            *(this + 27) = 0;
            if (v341)
            {
              operator delete(v341);
            }
          }

          else
          {
            *v235 = 0;
            v233 = v235 + 8;
          }

          *(this + 26) = v233;
          goto LABEL_461;
        case 0x10u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v114 = *(a2 + 1);
            v115 = *(a2 + 2);
            while (v114 < v115 && (*(a2 + 24) & 1) == 0)
            {
              v117 = *(this + 11);
              v116 = *(this + 12);
              if (v117 >= v116)
              {
                v119 = *(this + 10);
                v120 = v117 - v119;
                v121 = (v117 - v119) >> 3;
                v122 = v121 + 1;
                if ((v121 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v123 = v116 - v119;
                if (v123 >> 2 > v122)
                {
                  v122 = v123 >> 2;
                }

                if (v123 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v124 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v124 = v122;
                }

                if (v124)
                {
                  sub_10000CDCC(this + 80, v124);
                }

                v125 = (v117 - v119) >> 3;
                v126 = (8 * v121);
                v127 = (8 * v121 - 8 * v125);
                *v126 = 0;
                v118 = v126 + 1;
                memcpy(v127, v119, v120);
                v128 = *(this + 10);
                *(this + 10) = v127;
                *(this + 11) = v118;
                *(this + 12) = 0;
                if (v128)
                {
                  operator delete(v128);
                }
              }

              else
              {
                *v117 = 0;
                v118 = v117 + 8;
              }

              *(this + 11) = v118;
              v129 = *(a2 + 1);
              if (v129 > 0xFFFFFFFFFFFFFFF7 || v129 + 8 > *(a2 + 2))
              {
                goto LABEL_289;
              }

              *(v118 - 1) = *(*a2 + v129);
              v115 = *(a2 + 2);
              v114 = *(a2 + 1) + 8;
              *(a2 + 1) = v114;
            }

            goto LABEL_290;
          }

          v243 = *(this + 11);
          v242 = *(this + 12);
          if (v243 >= v242)
          {
            v292 = *(this + 10);
            v293 = v243 - v292;
            v294 = (v243 - v292) >> 3;
            v295 = v294 + 1;
            if ((v294 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v296 = v242 - v292;
            if (v296 >> 2 > v295)
            {
              v295 = v296 >> 2;
            }

            if (v296 >= 0x7FFFFFFFFFFFFFF8)
            {
              v297 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v297 = v295;
            }

            if (v297)
            {
              sub_10000CDCC(this + 80, v297);
            }

            v354 = (v243 - v292) >> 3;
            v355 = (8 * v294);
            v356 = (8 * v294 - 8 * v354);
            *v355 = 0;
            v233 = v355 + 1;
            memcpy(v356, v292, v293);
            v357 = *(this + 10);
            *(this + 10) = v356;
            *(this + 11) = v233;
            *(this + 12) = 0;
            if (v357)
            {
              operator delete(v357);
            }
          }

          else
          {
            *v243 = 0;
            v233 = v243 + 8;
          }

          *(this + 11) = v233;
          goto LABEL_461;
        case 0x11u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v32 = *(a2 + 1);
            v33 = *(a2 + 2);
            while (v32 < v33 && (*(a2 + 24) & 1) == 0)
            {
              v35 = *(this + 8);
              v34 = *(this + 9);
              if (v35 >= v34)
              {
                v37 = *(this + 7);
                v38 = v35 - v37;
                v39 = (v35 - v37) >> 3;
                v40 = v39 + 1;
                if ((v39 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v41 = v34 - v37;
                if (v41 >> 2 > v40)
                {
                  v40 = v41 >> 2;
                }

                if (v41 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v42 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v42 = v40;
                }

                if (v42)
                {
                  sub_10000CDCC(this + 56, v42);
                }

                v43 = (v35 - v37) >> 3;
                v44 = (8 * v39);
                v45 = (8 * v39 - 8 * v43);
                *v44 = 0;
                v36 = v44 + 1;
                memcpy(v45, v37, v38);
                v46 = *(this + 7);
                *(this + 7) = v45;
                *(this + 8) = v36;
                *(this + 9) = 0;
                if (v46)
                {
                  operator delete(v46);
                }
              }

              else
              {
                *v35 = 0;
                v36 = v35 + 8;
              }

              *(this + 8) = v36;
              v47 = *(a2 + 1);
              if (v47 > 0xFFFFFFFFFFFFFFF7 || v47 + 8 > *(a2 + 2))
              {
LABEL_289:
                *(a2 + 24) = 1;
                goto LABEL_290;
              }

              *(v36 - 1) = *(*a2 + v47);
              v33 = *(a2 + 2);
              v32 = *(a2 + 1) + 8;
              *(a2 + 1) = v32;
            }

            goto LABEL_290;
          }

          v232 = *(this + 8);
          v231 = *(this + 9);
          if (v232 >= v231)
          {
            v262 = *(this + 7);
            v263 = v232 - v262;
            v264 = (v232 - v262) >> 3;
            v265 = v264 + 1;
            if ((v264 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v266 = v231 - v262;
            if (v266 >> 2 > v265)
            {
              v265 = v266 >> 2;
            }

            if (v266 >= 0x7FFFFFFFFFFFFFF8)
            {
              v267 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v267 = v265;
            }

            if (v267)
            {
              sub_10000CDCC(this + 56, v267);
            }

            v334 = (v232 - v262) >> 3;
            v335 = (8 * v264);
            v336 = (8 * v264 - 8 * v334);
            *v335 = 0;
            v233 = v335 + 1;
            memcpy(v336, v262, v263);
            v337 = *(this + 7);
            *(this + 7) = v336;
            *(this + 8) = v233;
            *(this + 9) = 0;
            if (v337)
            {
              operator delete(v337);
            }
          }

          else
          {
            *v232 = 0;
            v233 = v232 + 8;
          }

          *(this + 8) = v233;
          goto LABEL_461;
        case 0x12u:
          *(this + 340) |= 0x20u;
          v148 = *(a2 + 1);
          if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(a2 + 2))
          {
            goto LABEL_463;
          }

          *(this + 83) = *(*a2 + v148);
          goto LABEL_248;
        case 0x13u:
          *(this + 340) |= 0x10u;
          v197 = *(a2 + 1);
          if (v197 > 0xFFFFFFFFFFFFFFFBLL || v197 + 4 > *(a2 + 2))
          {
            goto LABEL_463;
          }

          *(this + 82) = *(*a2 + v197);
LABEL_248:
          v198 = *(a2 + 1) + 4;
          goto LABEL_466;
        default:
          if ((PB::Reader::skip(a2, v10 >> 3, v22, 0) & 1) == 0)
          {
            goto LABEL_473;
          }

          goto LABEL_467;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_471:
  v383 = v4 ^ 1;
  return v383 & 1;
}

uint64_t CMMsl::VIOEstimation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 340);
  if ((v4 & 0x40) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 336), 1u);
    v4 = *(v3 + 340);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((*(this + 340) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 312), 2u);
  v4 = *(v3 + 340);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_50:
    this = PB::Writer::write(a2, *(v3 + 320), 4u);
    if ((*(v3 + 340) & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 296), 3u);
  v4 = *(v3 + 340);
  if ((v4 & 8) != 0)
  {
    goto LABEL_50;
  }

LABEL_5:
  if ((v4 & 2) != 0)
  {
LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 304), 5u);
  }

LABEL_7:
  v5 = *(v3 + 176);
  v6 = *(v3 + 184);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 6u);
  }

  v8 = *(v3 + 104);
  v9 = *(v3 + 112);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::write(a2, v10, 7u);
  }

  v11 = *(v3 + 272);
  v12 = *(v3 + 280);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::write(a2, v13, 8u);
  }

  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::write(a2, v16, 9u);
  }

  v17 = *(v3 + 224);
  v18 = *(v3 + 232);
  while (v17 != v18)
  {
    v19 = *v17++;
    this = PB::Writer::write(a2, v19, 0xAu);
  }

  v20 = *(v3 + 152);
  v21 = *(v3 + 160);
  while (v20 != v21)
  {
    v22 = *v20++;
    this = PB::Writer::write(a2, v22, 0xBu);
  }

  v23 = *(v3 + 128);
  v24 = *(v3 + 136);
  while (v23 != v24)
  {
    v25 = *v23++;
    this = PB::Writer::write(a2, v25, 0xCu);
  }

  v26 = *(v3 + 248);
  v27 = *(v3 + 256);
  while (v26 != v27)
  {
    v28 = *v26++;
    this = PB::Writer::write(a2, v28, 0xDu);
  }

  v29 = *(v3 + 32);
  v30 = *(v3 + 40);
  while (v29 != v30)
  {
    v31 = *v29++;
    this = PB::Writer::write(a2, v31, 0xEu);
  }

  v32 = *(v3 + 200);
  v33 = *(v3 + 208);
  while (v32 != v33)
  {
    v34 = *v32++;
    this = PB::Writer::write(a2, v34, 0xFu);
  }

  v35 = *(v3 + 80);
  v36 = *(v3 + 88);
  while (v35 != v36)
  {
    v37 = *v35++;
    this = PB::Writer::write(a2, v37, 0x10u);
  }

  v38 = *(v3 + 56);
  v39 = *(v3 + 64);
  while (v38 != v39)
  {
    v40 = *v38++;
    this = PB::Writer::write(a2, v40, 0x11u);
  }

  v41 = *(v3 + 340);
  if ((v41 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 332), 0x12u);
    v41 = *(v3 + 340);
  }

  if ((v41 & 0x10) != 0)
  {
    v42 = *(v3 + 328);

    return PB::Writer::write(a2, v42, 0x13u);
  }

  return this;
}

uint64_t CMMsl::VIOEstimation::hash_value(CMMsl::VIOEstimation *this)
{
  if ((*(this + 340) & 0x40) == 0)
  {
    v51 = 0;
    if ((*(this + 340) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v50 = 0.0;
    if (*(this + 340))
    {
      goto LABEL_6;
    }

LABEL_17:
    v49 = 0.0;
    if ((*(this + 340) & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v51 = *(this + 84);
  if ((*(this + 340) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 39);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  v50 = v2;
  if ((*(this + 340) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v3 = *(this + 37);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v49 = v3;
  if ((*(this + 340) & 8) != 0)
  {
LABEL_9:
    v4 = *(this + 40);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    v48 = v4;
    if ((*(this + 340) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v47 = 0.0;
    goto LABEL_20;
  }

LABEL_18:
  v48 = 0.0;
  if ((*(this + 340) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v5 = *(this + 38);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  v47 = v5;
LABEL_20:
  v6 = *(this + 22);
  v7 = *(this + 23);
  v46 = PBHashBytes();
  v8 = *(this + 13);
  v9 = *(this + 14);
  v45 = PBHashBytes();
  v10 = *(this + 34);
  v11 = *(this + 35);
  v12 = PBHashBytes();
  v13 = *(this + 1);
  v14 = *(this + 2);
  v15 = PBHashBytes();
  v16 = *(this + 28);
  v17 = *(this + 29);
  v18 = PBHashBytes();
  v19 = *(this + 19);
  v20 = *(this + 20);
  v21 = PBHashBytes();
  v22 = *(this + 16);
  v23 = *(this + 17);
  v24 = PBHashBytes();
  v25 = *(this + 31);
  v26 = *(this + 32);
  v27 = PBHashBytes();
  v28 = *(this + 4);
  v29 = *(this + 5);
  v30 = PBHashBytes();
  v31 = *(this + 25);
  v32 = *(this + 26);
  v33 = PBHashBytes();
  v34 = *(this + 10);
  v35 = *(this + 11);
  v36 = PBHashBytes();
  v37 = *(this + 7);
  v38 = *(this + 8);
  v39 = PBHashBytes();
  if ((*(this + 340) & 0x20) != 0)
  {
    v43 = *(this + 83);
    v40 = LODWORD(v43);
    if (v43 == 0.0)
    {
      v40 = 0;
    }

    if ((*(this + 340) & 0x10) != 0)
    {
      goto LABEL_22;
    }

LABEL_28:
    v42 = 0;
    return *&v50 ^ v51 ^ *&v49 ^ *&v48 ^ *&v47 ^ v46 ^ v45 ^ v12 ^ v15 ^ v18 ^ v21 ^ v24 ^ v27 ^ v30 ^ v33 ^ v36 ^ v39 ^ v40 ^ v42;
  }

  v40 = 0;
  if ((*(this + 340) & 0x10) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  v41 = *(this + 82);
  v42 = LODWORD(v41);
  if (v41 == 0.0)
  {
    v42 = 0;
  }

  return *&v50 ^ v51 ^ *&v49 ^ *&v48 ^ *&v47 ^ v46 ^ v45 ^ v12 ^ v15 ^ v18 ^ v21 ^ v24 ^ v27 ^ v30 ^ v33 ^ v36 ^ v39 ^ v40 ^ v42;
}

void CMMsl::VIOPose::~VIOPose(CMMsl::VIOPose *this)
{
  *this = off_100422788;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::VIOPose::~VIOPose(this);

  operator delete();
}

CMMsl::VIOPose *CMMsl::VIOPose::VIOPose(CMMsl::VIOPose *this, const CMMsl::VIOPose *a2)
{
  *this = off_100422788;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 56);
  if (v5)
  {
    v7 = *(a2 + 4);
    v6 = 1;
    *(this + 56) = 1;
    *(this + 4) = v7;
    v5 = *(a2 + 56);
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((*(a2 + 56) & 0x200) != 0)
  {
LABEL_5:
    v8 = *(a2 + 13);
    v6 |= 0x200u;
    *(this + 56) = v6;
    *(this + 13) = v8;
    v5 = *(a2 + 56);
  }

LABEL_6:
  if ((v5 & 2) != 0)
  {
    v9 = *(a2 + 5);
    *(this + 56) = v6 | 2;
    *(this + 5) = v9;
  }

  if (this != a2)
  {
    sub_100035BF0(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v10 = *(a2 + 56);
  if ((v10 & 8) != 0)
  {
    v13 = *(a2 + 7);
    *(this + 56) |= 8u;
    *(this + 7) = v13;
    v10 = *(a2 + 56);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v14 = *(a2 + 8);
  *(this + 56) |= 0x10u;
  *(this + 8) = v14;
  v10 = *(a2 + 56);
  if ((v10 & 0x20) == 0)
  {
LABEL_13:
    if ((v10 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = *(a2 + 9);
  *(this + 56) |= 0x20u;
  *(this + 9) = v15;
  v10 = *(a2 + 56);
  if ((v10 & 4) == 0)
  {
LABEL_14:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = *(a2 + 6);
  *(this + 56) |= 4u;
  *(this + 6) = v16;
  v10 = *(a2 + 56);
  if ((v10 & 0x80) == 0)
  {
LABEL_15:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    v18 = *(a2 + 12);
    *(this + 56) |= 0x100u;
    *(this + 12) = v18;
    if ((*(a2 + 56) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_23:
  v17 = *(a2 + 11);
  *(this + 56) |= 0x80u;
  *(this + 11) = v17;
  v10 = *(a2 + 56);
  if ((v10 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v10 & 0x40) != 0)
  {
LABEL_17:
    v11 = *(a2 + 10);
    *(this + 56) |= 0x40u;
    *(this + 10) = v11;
  }

  return this;
}

CMMsl *CMMsl::VIOPose::operator=(CMMsl *a1, const CMMsl::VIOPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOPose::VIOPose(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VIOPose::~VIOPose(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VIOPose *a2, CMMsl::VIOPose *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v12;
  v13 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v13;
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  v15 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v15;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  return result;
}

uint64_t CMMsl::VIOPose::VIOPose(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422788;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 40) = *(a2 + 40);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

CMMsl *CMMsl::VIOPose::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOPose::VIOPose(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::VIOPose::~VIOPose(v5);
  }

  return a1;
}

uint64_t CMMsl::VIOPose::formatText(CMMsl::VIOPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 56);
  if (v5)
  {
    PB::TextFormatter::format(a2, "currentTimestamp", *(this + 4));
    v5 = *(this + 56);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "latestInertialTimestamp", *(this + 5));
  v5 = *(this + 56);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "latestInertialTimestampMeta", *(this + 6));
  v5 = *(this + 56);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "positionX", *(this + 7));
  v5 = *(this + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "positionY", *(this + 8));
  v5 = *(this + 56);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "positionZ", *(this + 9));
  v5 = *(this + 56);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "predictionComputeTimeMeta", *(this + 10));
  v5 = *(this + 56);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "predictionTimeMeta", *(this + 11));
  if ((*(this + 56) & 0x100) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "propagationTimeMeta", *(this + 12));
  }

LABEL_11:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "rotationMatrixElement", v8);
  }

  if ((*(this + 56) & 0x200) != 0)
  {
    PB::TextFormatter::format(a2, "targetTimestamp", *(this + 13));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::VIOPose::readFrom(CMMsl::VIOPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_111;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_111;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        if (v23 > 8)
        {
          switch(v23)
          {
            case 9:
              *(this + 56) |= 0x80u;
              v49 = *(a2 + 1);
              if (v49 > 0xFFFFFFFFFFFFFFF7 || v49 + 8 > *(a2 + 2))
              {
                goto LABEL_104;
              }

              *(this + 11) = *(*a2 + v49);
              goto LABEL_106;
            case 0xA:
              *(this + 56) |= 0x100u;
              v46 = *(a2 + 1);
              if (v46 > 0xFFFFFFFFFFFFFFF7 || v46 + 8 > *(a2 + 2))
              {
                goto LABEL_104;
              }

              *(this + 12) = *(*a2 + v46);
              goto LABEL_106;
            case 0xB:
              *(this + 56) |= 0x40u;
              v26 = *(a2 + 1);
              if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(a2 + 2))
              {
                goto LABEL_104;
              }

              *(this + 10) = *(*a2 + v26);
              goto LABEL_106;
          }
        }

        else
        {
          switch(v23)
          {
            case 6:
              *(this + 56) |= 0x10u;
              v48 = *(a2 + 1);
              if (v48 > 0xFFFFFFFFFFFFFFF7 || v48 + 8 > *(a2 + 2))
              {
                goto LABEL_104;
              }

              *(this + 8) = *(*a2 + v48);
              goto LABEL_106;
            case 7:
              *(this + 56) |= 0x20u;
              v45 = *(a2 + 1);
              if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(a2 + 2))
              {
                goto LABEL_104;
              }

              *(this + 9) = *(*a2 + v45);
              goto LABEL_106;
            case 8:
              *(this + 56) |= 4u;
              v24 = *(a2 + 1);
              if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
              {
                goto LABEL_104;
              }

              *(this + 6) = *(*a2 + v24);
LABEL_106:
              *(a2 + 1) += 8;
              goto LABEL_107;
          }
        }

        goto LABEL_86;
      }

      if (v23 <= 2)
      {
        break;
      }

      if (v23 == 3)
      {
        *(this + 56) |= 2u;
        v47 = *(a2 + 1);
        if (v47 > 0xFFFFFFFFFFFFFFF7 || v47 + 8 > *(a2 + 2))
        {
          goto LABEL_104;
        }

        *(this + 5) = *(*a2 + v47);
        goto LABEL_106;
      }

      if (v23 != 4)
      {
        if (v23 == 5)
        {
          *(this + 56) |= 8u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(a2 + 2))
          {
            goto LABEL_104;
          }

          *(this + 7) = *(*a2 + v25);
          goto LABEL_106;
        }

        goto LABEL_86;
      }

      if (v22 != 2)
      {
        v51 = *(this + 2);
        v50 = *(this + 3);
        if (v51 >= v50)
        {
          v53 = *(this + 1);
          v54 = v51 - v53;
          v55 = (v51 - v53) >> 3;
          v56 = v55 + 1;
          if ((v55 + 1) >> 61)
          {
LABEL_114:
            sub_10000CD24();
          }

          v57 = v50 - v53;
          if (v57 >> 2 > v56)
          {
            v56 = v57 >> 2;
          }

          if (v57 >= 0x7FFFFFFFFFFFFFF8)
          {
            v58 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v58 = v56;
          }

          if (v58)
          {
            sub_10000CDCC(this + 8, v58);
          }

          v59 = (v51 - v53) >> 3;
          v60 = (8 * v55);
          v61 = (8 * v55 - 8 * v59);
          *v60 = 0;
          v52 = v60 + 1;
          memcpy(v61, v53, v54);
          v62 = *(this + 1);
          *(this + 1) = v61;
          *(this + 2) = v52;
          *(this + 3) = 0;
          if (v62)
          {
            operator delete(v62);
          }
        }

        else
        {
          *v51 = 0;
          v52 = v51 + 8;
        }

        *(this + 2) = v52;
        v63 = *(a2 + 1);
        if (v63 > 0xFFFFFFFFFFFFFFF7 || v63 + 8 > *(a2 + 2))
        {
LABEL_104:
          *(a2 + 24) = 1;
          goto LABEL_107;
        }

        *(v52 - 1) = *(*a2 + v63);
        goto LABEL_106;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_113;
      }

      v29 = *(a2 + 1);
      v30 = *(a2 + 2);
      while (v29 < v30 && (*(a2 + 24) & 1) == 0)
      {
        v32 = *(this + 2);
        v31 = *(this + 3);
        if (v32 >= v31)
        {
          v34 = *(this + 1);
          v35 = v32 - v34;
          v36 = (v32 - v34) >> 3;
          v37 = v36 + 1;
          if ((v36 + 1) >> 61)
          {
            goto LABEL_114;
          }

          v38 = v31 - v34;
          if (v38 >> 2 > v37)
          {
            v37 = v38 >> 2;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v37;
          }

          if (v39)
          {
            sub_10000CDCC(this + 8, v39);
          }

          v40 = (v32 - v34) >> 3;
          v41 = (8 * v36);
          v42 = (8 * v36 - 8 * v40);
          *v41 = 0;
          v33 = v41 + 1;
          memcpy(v42, v34, v35);
          v43 = *(this + 1);
          *(this + 1) = v42;
          *(this + 2) = v33;
          *(this + 3) = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          *v32 = 0;
          v33 = v32 + 8;
        }

        *(this + 2) = v33;
        v44 = *(a2 + 1);
        if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v33 - 1) = *(*a2 + v44);
        v30 = *(a2 + 2);
        v29 = *(a2 + 1) + 8;
        *(a2 + 1) = v29;
      }

      PB::Reader::recallMark();
LABEL_107:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_111;
      }
    }

    if (v23 == 1)
    {
      *(this + 56) |= 1u;
      v28 = *(a2 + 1);
      if (v28 > 0xFFFFFFFFFFFFFFF7 || v28 + 8 > *(a2 + 2))
      {
        goto LABEL_104;
      }

      *(this + 4) = *(*a2 + v28);
      goto LABEL_106;
    }

    if (v23 == 2)
    {
      *(this + 56) |= 0x200u;
      v27 = *(a2 + 1);
      if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
      {
        goto LABEL_104;
      }

      *(this + 13) = *(*a2 + v27);
      goto LABEL_106;
    }

LABEL_86:
    if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
    {
LABEL_113:
      v64 = 0;
      return v64 & 1;
    }

    goto LABEL_107;
  }

LABEL_111:
  v64 = v4 ^ 1;
  return v64 & 1;
}

uint64_t CMMsl::VIOPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 112);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 112) & 0x200) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    this = PB::Writer::write(a2, *(v3 + 104), 2u);
    if ((*(v3 + 112) & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = PB::Writer::write(a2, *(this + 32), 1u);
  v4 = *(v3 + 112);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v4 & 2) != 0)
  {
LABEL_4:
    this = PB::Writer::write(a2, *(v3 + 40), 3u);
  }

LABEL_5:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 4u);
  }

  v8 = *(v3 + 112);
  if ((v8 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 56), 5u);
    v8 = *(v3 + 112);
    if ((v8 & 0x10) == 0)
    {
LABEL_10:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  this = PB::Writer::write(a2, *(v3 + 64), 6u);
  v8 = *(v3 + 112);
  if ((v8 & 0x20) == 0)
  {
LABEL_11:
    if ((v8 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 72), 7u);
  v8 = *(v3 + 112);
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 48), 8u);
  v8 = *(v3 + 112);
  if ((v8 & 0x80) == 0)
  {
LABEL_13:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 96), 0xAu);
    if ((*(v3 + 112) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 88), 9u);
  v8 = *(v3 + 112);
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v8 & 0x40) == 0)
  {
    return this;
  }

LABEL_25:
  v9 = *(v3 + 80);

  return PB::Writer::write(a2, v9, 0xBu);
}

uint64_t CMMsl::VIOPose::hash_value(CMMsl::VIOPose *this)
{
  v2 = *(this + 56);
  if (v2)
  {
    if (*(this + 4) == 0.0)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this + 4);
    }

    if ((*(this + 56) & 0x200) != 0)
    {
LABEL_3:
      if (*(this + 13) == 0.0)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(this + 13);
      }

      if ((v2 & 2) != 0)
      {
        goto LABEL_7;
      }

LABEL_15:
      v5 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 56) & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (*(this + 5) == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 5);
  }

LABEL_16:
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = PBHashBytes();
  v9 = *(this + 56);
  if ((v9 & 8) == 0)
  {
    v10 = 0.0;
    if ((v9 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_39:
    v11 = 0.0;
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_40:
    v12 = 0.0;
    if ((v9 & 4) != 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    v13 = 0.0;
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_27;
    }

LABEL_42:
    v14 = 0.0;
    if ((*(this + 56) & 0x100) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  v10 = *(this + 7);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v9 & 0x10) == 0)
  {
    goto LABEL_39;
  }

LABEL_18:
  v11 = *(this + 8);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v9 & 0x20) == 0)
  {
    goto LABEL_40;
  }

LABEL_21:
  v12 = *(this + 9);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v9 & 4) == 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  v13 = *(this + 6);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v9 & 0x80) == 0)
  {
    goto LABEL_42;
  }

LABEL_27:
  v14 = *(this + 11);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((*(this + 56) & 0x100) != 0)
  {
LABEL_30:
    v15 = *(this + 12);
    if (v15 == 0.0)
    {
      v15 = 0.0;
    }

    if ((v9 & 0x40) != 0)
    {
      goto LABEL_33;
    }

LABEL_44:
    v16 = 0.0;
    return v4 ^ v3 ^ v5 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ v8 ^ *&v14 ^ *&v15 ^ *&v16;
  }

LABEL_43:
  v15 = 0.0;
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_44;
  }

LABEL_33:
  v16 = *(this + 10);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  return v4 ^ v3 ^ v5 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ v8 ^ *&v14 ^ *&v15 ^ *&v16;
}

void CMMsl::VIOReplayPose::~VIOReplayPose(CMMsl::VIOReplayPose *this)
{
  *this = off_1004227C0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::VIOReplayPose::~VIOReplayPose(this);

  operator delete();
}

CMMsl::VIOReplayPose *CMMsl::VIOReplayPose::VIOReplayPose(CMMsl::VIOReplayPose *this, const CMMsl::VIOReplayPose *a2)
{
  *this = off_1004227C0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 16) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 64))
  {
    v5 = *(a2 + 7);
    *(this + 64) = 1;
    *(this + 7) = v5;
  }

  if (this != a2)
  {
    sub_100035BF0(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_100035BF0(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  }

  return this;
}

uint64_t CMMsl::VIOReplayPose::operator=(uint64_t a1, const CMMsl::VIOReplayPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOReplayPose::VIOReplayPose(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    CMMsl::VIOReplayPose::~VIOReplayPose(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VIOReplayPose *a2, CMMsl::VIOReplayPose *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  return result;
}

uint64_t CMMsl::VIOReplayPose::VIOReplayPose(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004227C0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 56) = *(a2 + 56);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  return a1;
}

uint64_t CMMsl::VIOReplayPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VIOReplayPose::VIOReplayPose(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    CMMsl::VIOReplayPose::~VIOReplayPose(v10);
  }

  return a1;
}

uint64_t CMMsl::VIOReplayPose::formatText(CMMsl::VIOReplayPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "so3", v7);
  }

  if (*(this + 64))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "translation", v10);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::VIOReplayPose::readFrom(CMMsl::VIOReplayPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (v18)
        {
          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_107;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_107;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_109;
          }

          v25 = *(a2 + 1);
          v26 = *(a2 + 2);
          while (v25 < v26 && (*(a2 + 24) & 1) == 0)
          {
            v28 = *(this + 2);
            v27 = *(this + 3);
            if (v28 >= v27)
            {
              v30 = *(this + 1);
              v31 = v28 - v30;
              v32 = (v28 - v30) >> 3;
              v33 = v32 + 1;
              if ((v32 + 1) >> 61)
              {
                goto LABEL_110;
              }

              v34 = v27 - v30;
              if (v34 >> 2 > v33)
              {
                v33 = v34 >> 2;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF8)
              {
                v35 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = v33;
              }

              if (v35)
              {
                sub_10000CDCC(this + 8, v35);
              }

              v36 = (v28 - v30) >> 3;
              v37 = (8 * v32);
              v38 = (8 * v32 - 8 * v36);
              *v37 = 0;
              v29 = v37 + 1;
              memcpy(v38, v30, v31);
              v39 = *(this + 1);
              *(this + 1) = v38;
              *(this + 2) = v29;
              *(this + 3) = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v28 = 0;
              v29 = v28 + 8;
            }

            *(this + 2) = v29;
            v40 = *(a2 + 1);
            if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(v29 - 1) = *(*a2 + v40);
            v26 = *(a2 + 2);
            v25 = *(a2 + 1) + 8;
            *(a2 + 1) = v25;
          }

LABEL_75:
          PB::Reader::recallMark();
          goto LABEL_103;
        }

        v58 = *(this + 2);
        v57 = *(this + 3);
        if (v58 >= v57)
        {
          v62 = *(this + 1);
          v63 = v58 - v62;
          v64 = (v58 - v62) >> 3;
          v65 = v64 + 1;
          if ((v64 + 1) >> 61)
          {
            goto LABEL_110;
          }

          v66 = v57 - v62;
          if (v66 >> 2 > v65)
          {
            v65 = v66 >> 2;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFF8)
          {
            v67 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            sub_10000CDCC(this + 8, v67);
          }

          v74 = (v58 - v62) >> 3;
          v75 = (8 * v64);
          v76 = (8 * v64 - 8 * v74);
          *v75 = 0;
          v59 = v75 + 1;
          memcpy(v76, v62, v63);
          v77 = *(this + 1);
          *(this + 1) = v76;
          *(this + 2) = v59;
          *(this + 3) = 0;
          if (v77)
          {
            operator delete(v77);
          }
        }

        else
        {
          *v58 = 0;
          v59 = v58 + 8;
        }

        *(this + 2) = v59;
LABEL_98:
        v82 = *(a2 + 1);
        if (v82 > 0xFFFFFFFFFFFFFFF7 || v82 + 8 > *(a2 + 2))
        {
LABEL_100:
          *(a2 + 24) = 1;
          goto LABEL_103;
        }

        *(v59 - 1) = *(*a2 + v82);
        goto LABEL_102;
      }

      if (v23 == 1)
      {
        *(this + 64) |= 1u;
        v24 = *(a2 + 1);
        if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
        {
          goto LABEL_100;
        }

        *(this + 7) = *(*a2 + v24);
LABEL_102:
        *(a2 + 1) += 8;
        goto LABEL_103;
      }

      if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_109:
        v83 = 0;
        return v83 & 1;
      }

LABEL_103:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    if (v22 == 2)
    {
      if (PB::Reader::placeMark())
      {
        goto LABEL_109;
      }

      v41 = *(a2 + 1);
      v42 = *(a2 + 2);
      while (v41 < v42 && (*(a2 + 24) & 1) == 0)
      {
        v44 = *(this + 5);
        v43 = *(this + 6);
        if (v44 >= v43)
        {
          v46 = *(this + 4);
          v47 = v44 - v46;
          v48 = (v44 - v46) >> 3;
          v49 = v48 + 1;
          if ((v48 + 1) >> 61)
          {
            goto LABEL_110;
          }

          v50 = v43 - v46;
          if (v50 >> 2 > v49)
          {
            v49 = v50 >> 2;
          }

          if (v50 >= 0x7FFFFFFFFFFFFFF8)
          {
            v51 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v49;
          }

          if (v51)
          {
            sub_10000CDCC(this + 32, v51);
          }

          v52 = (v44 - v46) >> 3;
          v53 = (8 * v48);
          v54 = (8 * v48 - 8 * v52);
          *v53 = 0;
          v45 = v53 + 1;
          memcpy(v54, v46, v47);
          v55 = *(this + 4);
          *(this + 4) = v54;
          *(this + 5) = v45;
          *(this + 6) = 0;
          if (v55)
          {
            operator delete(v55);
          }
        }

        else
        {
          *v44 = 0;
          v45 = v44 + 8;
        }

        *(this + 5) = v45;
        v56 = *(a2 + 1);
        if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(a2 + 2))
        {
LABEL_74:
          *(a2 + 24) = 1;
          goto LABEL_75;
        }

        *(v45 - 1) = *(*a2 + v56);
        v42 = *(a2 + 2);
        v41 = *(a2 + 1) + 8;
        *(a2 + 1) = v41;
      }

      goto LABEL_75;
    }

    v61 = *(this + 5);
    v60 = *(this + 6);
    if (v61 >= v60)
    {
      v68 = *(this + 4);
      v69 = v61 - v68;
      v70 = (v61 - v68) >> 3;
      v71 = v70 + 1;
      if ((v70 + 1) >> 61)
      {
LABEL_110:
        sub_10000CD24();
      }

      v72 = v60 - v68;
      if (v72 >> 2 > v71)
      {
        v71 = v72 >> 2;
      }

      if (v72 >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (v73)
      {
        sub_10000CDCC(this + 32, v73);
      }

      v78 = (v61 - v68) >> 3;
      v79 = (8 * v70);
      v80 = (8 * v70 - 8 * v78);
      *v79 = 0;
      v59 = v79 + 1;
      memcpy(v80, v68, v69);
      v81 = *(this + 4);
      *(this + 4) = v80;
      *(this + 5) = v59;
      *(this + 6) = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }

    else
    {
      *v61 = 0;
      v59 = v61 + 8;
    }

    *(this + 5) = v59;
    goto LABEL_98;
  }

LABEL_107:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t CMMsl::VIOReplayPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 64))
  {
    this = PB::Writer::write(a2, *(this + 56), 1u);
  }

  v4 = v3[1];
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v8 = v3[4];
  v7 = v3[5];
  while (v8 != v7)
  {
    v9 = *v8++;
    this = PB::Writer::write(a2, v9, 3u);
  }

  return this;
}

uint64_t CMMsl::VIOReplayPose::hash_value(CMMsl::VIOReplayPose *this)
{
  if (*(this + 64))
  {
    if (*(this + 7) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 7);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = PBHashBytes() ^ v2;
  v6 = *(this + 4);
  v7 = *(this + 5);
  return v5 ^ PBHashBytes();
}

void CMMsl::VO2MaxInput::~VO2MaxInput(CMMsl::VO2MaxInput *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::VO2MaxInput::VO2MaxInput(CMMsl::VO2MaxInput *this, const CMMsl::VO2MaxInput *a2)
{
  *this = off_1004227F8;
  *(this + 22) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 0x80) != 0)
  {
    result = *(a2 + 8);
    v3 = 128;
    *(this + 44) = 128;
    *(this + 8) = result;
    v2 = *(a2 + 44);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    result = *(a2 + 6);
    v3 |= 0x20u;
    *(this + 44) = v3;
    *(this + 6) = result;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v5 = *(a2 + 19);
    v3 |= 0x200u;
    *(this + 44) = v3;
    *(this + 19) = v5;
    v2 = *(a2 + 44);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 44) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 44);
  if ((v2 & 2) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 44) = v3;
  *(this + 2) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v6 = *(a2 + 18);
  v3 |= 0x100u;
  *(this + 44) = v3;
  *(this + 18) = v6;
  v2 = *(a2 + 44);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 44) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x800) == 0)
  {
LABEL_14:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(a2 + 84);
  v3 |= 0x800u;
  *(this + 44) = v3;
  *(this + 84) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 0x1000) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(a2 + 85);
  v3 |= 0x1000u;
  *(this + 44) = v3;
  *(this + 85) = v8;
  v2 = *(a2 + 44);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(a2 + 20);
  v3 |= 0x400u;
  *(this + 44) = v3;
  *(this + 20) = v9;
  v2 = *(a2 + 44);
  if ((v2 & 0x2000) == 0)
  {
LABEL_17:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_30:
    result = *(a2 + 5);
    *(this + 44) = v3 | 0x10;
    *(this + 5) = result;
    return result;
  }

LABEL_29:
  v10 = *(a2 + 86);
  v3 |= 0x2000u;
  *(this + 44) = v3;
  *(this + 86) = v10;
  if ((*(a2 + 44) & 0x10) != 0)
  {
    goto LABEL_30;
  }

  return result;
}

CMMsl *CMMsl::VO2MaxInput::operator=(CMMsl *a1, const CMMsl::VO2MaxInput *a2)
{
  if (a1 != a2)
  {
    CMMsl::VO2MaxInput::VO2MaxInput(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VO2MaxInput *a2, CMMsl::VO2MaxInput *a3)
{
  v3 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v10;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v12;
  LOBYTE(v10) = *(this + 84);
  *(this + 84) = *(a2 + 84);
  *(a2 + 84) = v10;
  LOBYTE(v10) = *(this + 85);
  *(this + 85) = *(a2 + 85);
  *(a2 + 85) = v10;
  v13 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v13;
  LOBYTE(v13) = *(this + 86);
  *(this + 86) = *(a2 + 86);
  *(a2 + 86) = v13;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

double CMMsl::VO2MaxInput::VO2MaxInput(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004227F8;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 86) = *(a2 + 86);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

CMMsl *CMMsl::VO2MaxInput::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VO2MaxInput::VO2MaxInput(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::VO2MaxInput::formatText(CMMsl::VO2MaxInput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "cadence", *(this + 1));
    v5 = *(this + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "grade", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "gradeType", *(this + 18));
  v5 = *(this + 44);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "hasGps", *(this + 84));
  v5 = *(this + 44);
  if ((v5 & 0x1000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "hasStrideCal", *(this + 85));
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "heartRate", *(this + 3));
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "heartRateConfidence", *(this + 4));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "hrTime", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "isStroller", *(this + 86));
  v5 = *(this + 44);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "metSource", *(this + 19));
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "mets", *(this + 6));
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "pace", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "startDate", *(this + 8));
  if ((*(this + 44) & 0x400) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(a2, "workoutType", *(this + 20));
  }

LABEL_16:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::VO2MaxInput::readFrom(CMMsl::VO2MaxInput *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_127;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 44) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_107;
        case 2u:
          *(this + 44) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_107;
        case 3u:
          *(this + 44) |= 0x200u;
          v34 = *(a2 + 1);
          v2 = *(a2 + 2);
          v35 = *a2;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v59 = 0;
            v60 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(a2 + 1);
            }

            v61 = v2 - v34;
            v62 = (v35 + v34);
            v63 = v34 + 1;
            while (1)
            {
              if (!v61)
              {
                LODWORD(v38) = 0;
                *(a2 + 24) = 1;
                goto LABEL_118;
              }

              v64 = v63;
              v65 = *v62;
              *(a2 + 1) = v64;
              v38 |= (v65 & 0x7F) << v59;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              --v61;
              ++v62;
              v63 = v64 + 1;
              v14 = v60++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_117:
                v2 = v64;
                goto LABEL_118;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_117;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(a2 + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_118;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_118:
          *(this + 19) = v38;
          goto LABEL_123;
        case 4u:
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_107;
        case 5u:
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_107;
        case 6u:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_107;
        case 7u:
          *(this + 44) |= 0x100u;
          v42 = *(a2 + 1);
          v2 = *(a2 + 2);
          v43 = *a2;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v2 = *(a2 + 1);
            }

            v68 = v2 - v42;
            v69 = (v43 + v42);
            v70 = v42 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v46) = 0;
                *(a2 + 24) = 1;
                goto LABEL_122;
              }

              v71 = v70;
              v72 = *v69;
              *(a2 + 1) = v71;
              v46 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v68;
              ++v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v46) = 0;
LABEL_121:
                v2 = v71;
                goto LABEL_122;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v46) = 0;
            }

            goto LABEL_121;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = (v43 + v42);
          v48 = v42 + 1;
          do
          {
            v2 = v48;
            *(a2 + 1) = v48;
            v49 = *v47++;
            v46 |= (v49 & 0x7F) << v44;
            if ((v49 & 0x80) == 0)
            {
              goto LABEL_122;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
          }

          while (!v14);
          LODWORD(v46) = 0;
LABEL_122:
          *(this + 18) = v46;
          goto LABEL_123;
        case 8u:
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_107;
        case 9u:
          *(this + 44) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_107;
        case 0xAu:
          *(this + 44) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v33 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v32 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v33 = v32 != 0;
          }

          *(this + 84) = v33;
          goto LABEL_123;
        case 0xBu:
          *(this + 44) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v51 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v50 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v51 = v50 != 0;
          }

          *(this + 85) = v51;
          goto LABEL_123;
        case 0xCu:
          *(this + 44) |= 0x400u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v52 = 0;
            v53 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v54 = v2 - v22;
            v55 = (v23 + v22);
            v56 = v22 + 1;
            while (1)
            {
              if (!v54)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_114;
              }

              v57 = v56;
              v58 = *v55;
              *(a2 + 1) = v57;
              v26 |= (v58 & 0x7F) << v52;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              --v54;
              ++v55;
              v56 = v57 + 1;
              v14 = v53++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_113:
                v2 = v57;
                goto LABEL_114;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_113;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_114;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_114:
          *(this + 20) = v26;
          goto LABEL_123;
        case 0xDu:
          *(this + 44) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v31 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v30 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v31 = v30 != 0;
          }

          *(this + 86) = v31;
          goto LABEL_123;
        case 0xEu:
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_73:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 5) = *(*a2 + v2);
LABEL_107:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          goto LABEL_123;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v73 = 0;
            return v73 & 1;
          }

          v2 = *(a2 + 1);
LABEL_123:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_127;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_127:
  v73 = v4 ^ 1;
  return v73 & 1;
}

uint64_t CMMsl::VO2MaxInput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 88);
  if ((v4 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64), 1u);
    v4 = *(v3 + 88);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 48), 2u);
  v4 = *(v3 + 88);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::writeVarInt(a2, *(v3 + 76), 3u);
  v4 = *(v3 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 24), 4u);
  v4 = *(v3 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 32), 5u);
  v4 = *(v3 + 88);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 16), 6u);
  v4 = *(v3 + 88);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::writeVarInt(a2, *(v3 + 72), 7u);
  v4 = *(v3 + 88);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 8), 8u);
  v4 = *(v3 + 88);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 56), 9u);
  v4 = *(v3 + 88);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 84), 0xAu);
  v4 = *(v3 + 88);
  if ((v4 & 0x1000) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 85), 0xBu);
  v4 = *(v3 + 88);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = PB::Writer::write(a2, *(v3 + 86), 0xDu);
    if ((*(v3 + 88) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = PB::Writer::writeVarInt(a2, *(v3 + 80), 0xCu);
  v4 = *(v3 + 88);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_29:
  v5 = *(v3 + 40);

  return PB::Writer::write(a2, v5, 0xEu);
}

uint64_t CMMsl::VO2MaxInput::hash_value(CMMsl::VO2MaxInput *this)
{
  v1 = *(this + 44);
  if ((v1 & 0x80) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    v3 = 0.0;
    if ((*(this + 44) & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

  v2 = *(this + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = *(this + 6);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 44) & 0x200) != 0)
  {
LABEL_6:
    v4 = *(this + 19);
    if ((v1 & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_35:
    v5 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_36:
    v6 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_13;
    }

LABEL_37:
    v7 = 0.0;
    if ((*(this + 44) & 0x100) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_34:
  v4 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_35;
  }

LABEL_7:
  v5 = *(this + 3);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_36;
  }

LABEL_10:
  v6 = *(this + 4);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_37;
  }

LABEL_13:
  v7 = *(this + 2);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((*(this + 44) & 0x100) != 0)
  {
LABEL_16:
    v8 = *(this + 18);
    if (v1)
    {
      goto LABEL_17;
    }

LABEL_39:
    v9 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    v10 = 0.0;
    if ((*(this + 44) & 0x800) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_38:
  v8 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_17:
  v9 = *(this + 1);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  v10 = *(this + 7);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((*(this + 44) & 0x800) != 0)
  {
LABEL_23:
    v11 = *(this + 84);
    if ((*(this + 44) & 0x1000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

LABEL_41:
  v11 = 0;
  if ((*(this + 44) & 0x1000) != 0)
  {
LABEL_24:
    v12 = *(this + 85);
    if ((*(this + 44) & 0x400) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_42:
  v12 = 0;
  if ((*(this + 44) & 0x400) != 0)
  {
LABEL_25:
    v13 = *(this + 20);
    if ((*(this + 44) & 0x2000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_43:
  v13 = 0;
  if ((*(this + 44) & 0x2000) != 0)
  {
LABEL_26:
    v14 = *(this + 86);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_27;
    }

LABEL_45:
    v15 = 0.0;
    return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ *&v9 ^ *&v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ *&v15;
  }

LABEL_44:
  v14 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_45;
  }

LABEL_27:
  v15 = *(this + 5);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ *&v9 ^ *&v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ *&v15;
}

void CMMsl::VO2MaxModelInput::~VO2MaxModelInput(CMMsl::VO2MaxModelInput *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::VO2MaxModelInput::VO2MaxModelInput(CMMsl::VO2MaxModelInput *this, const CMMsl::VO2MaxModelInput *a2)
{
  *this = off_100422830;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 = 4;
    *(this + 40) = 4;
    *(this + 3) = result;
    v2 = *(a2 + 40);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 40) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 1) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 4);
    *(this + 40) = v3 | 8;
    *(this + 4) = result;
    return result;
  }

  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 40) = v3;
  *(this + 1) = result;
  if ((*(a2 + 40) & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::VO2MaxModelInput::operator=(uint64_t a1, const CMMsl::VO2MaxModelInput *a2)
{
  if (a1 != a2)
  {
    CMMsl::VO2MaxModelInput::VO2MaxModelInput(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VO2MaxModelInput *a2, CMMsl::VO2MaxModelInput *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

double CMMsl::VO2MaxModelInput::VO2MaxModelInput(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422830;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

{
  *a1 = off_100422830;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t CMMsl::VO2MaxModelInput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_100422830;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v11 = *(a1 + 40);
    v4 = *(a2 + 8);
    v9 = *(a1 + 8);
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    *(a1 + 40) = v3;
    *(a1 + 8) = v4;
    *(a1 + 24) = v6;
    v10 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::VO2MaxModelInput::formatText(CMMsl::VO2MaxModelInput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "hr", *(this + 1));
    v5 = *(this + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "hrTime", *(this + 2));
  v5 = *(this + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "time", *(this + 3));
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "vo2", *(this + 4));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::VO2MaxModelInput::readFrom(CMMsl::VO2MaxModelInput *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_47;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(this + 40) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_40:
            *(a2 + 24) = 1;
            goto LABEL_43;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_42;
        }

        if (v22 == 4)
        {
          *(this + 40) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 40) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(this + 40) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_42:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_43:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_47:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::VO2MaxModelInput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 40);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 8), 3u);
      if ((*(v3 + 40) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 40);
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 32);

  return PB::Writer::write(a2, v5, 4u);
}

uint64_t CMMsl::VO2MaxModelInput::hash_value(CMMsl::VO2MaxModelInput *this)
{
  if ((*(this + 40) & 4) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v2 = 0.0;
    if (*(this + 40))
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if (*(this + 40))
  {
LABEL_6:
    v3 = *(this + 1);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v4 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
  }

LABEL_16:
  v3 = 0.0;
  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v4 = *(this + 4);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
}

void CMMsl::VO2MaxOutput::~VO2MaxOutput(CMMsl::VO2MaxOutput *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::VO2MaxOutput::VO2MaxOutput(uint64_t this, const CMMsl::VO2MaxOutput *a2)
{
  *this = off_100422868;
  *(this + 72) = 0;
  v2 = *(a2 + 36);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 32;
    *(this + 72) = 32;
    *(this + 48) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 72) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 0x100) != 0)
  {
    v6 = *(a2 + 17);
    v3 |= 0x100u;
    *(this + 72) = v3;
    *(this + 68) = v6;
    v2 = *(a2 + 36);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 72) = v3;
  *(this + 8) = v7;
  v2 = *(a2 + 36);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 4);
  v3 |= 8u;
  *(this + 72) = v3;
  *(this + 32) = v8;
  v2 = *(a2 + 36);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 72) = v3;
  *(this + 40) = v9;
  v2 = *(a2 + 36);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 72) = v3;
  *(this + 56) = v10;
  v2 = *(a2 + 36);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 16);
    *(this + 72) = v3 | 0x80;
    *(this + 64) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 3);
  v3 |= 4u;
  *(this + 72) = v3;
  *(this + 24) = v11;
  if ((*(a2 + 36) & 0x80) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::VO2MaxOutput::operator=(uint64_t a1, const CMMsl::VO2MaxOutput *a2)
{
  if (a1 != a2)
  {
    CMMsl::VO2MaxOutput::VO2MaxOutput(&v10, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v5;
    *&v5 = v15;
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    *(a1 + 56) = v14;
    *(a1 + 64) = v5;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v14 = v6;
    v15 = v7;
    PB::Base::~Base(&v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VO2MaxOutput *a2, CMMsl::VO2MaxOutput *a3)
{
  v3 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v12 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v12;
  return result;
}

double CMMsl::VO2MaxOutput::VO2MaxOutput(uint64_t a1, uint64_t a2)
{
  *a1 = off_100422868;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

uint64_t CMMsl::VO2MaxOutput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VO2MaxOutput::VO2MaxOutput(&v10, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v5;
    *&v5 = v15;
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    *(a1 + 56) = v14;
    *(a1 + 64) = v5;
    v8 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v8;
    v14 = v6;
    v15 = v7;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::VO2MaxOutput::formatText(CMMsl::VO2MaxOutput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if (v5)
  {
    PB::TextFormatter::format(a2, "durationInSeconds", *(this + 1));
    v5 = *(this + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "estimatedVo2Max", *(this + 2));
  v5 = *(this + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "filteredVo2Max", *(this + 3));
  v5 = *(this + 36);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "hrMax", *(this + 4));
  v5 = *(this + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "hrMin", *(this + 5));
  v5 = *(this + 36);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "sessionType", *(this + 16));
  v5 = *(this + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "startTime", *(this + 6));
  v5 = *(this + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "variance", *(this + 7));
  if ((*(this + 36) & 0x100) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "workoutType", *(this + 17));
  }

LABEL_11:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::VO2MaxOutput::readFrom(CMMsl::VO2MaxOutput *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_103;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(this + 36) |= 0x100u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v39 = 0;
              v40 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v41 = v2 - v31;
              v42 = (v32 + v31);
              v43 = v31 + 1;
              while (1)
              {
                if (!v41)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_94;
                }

                v44 = v43;
                v45 = *v42;
                *(a2 + 1) = v44;
                v35 |= (v45 & 0x7F) << v39;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                --v41;
                ++v42;
                v43 = v44 + 1;
                v14 = v40++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_93;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_93:
              v2 = v44;
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = (v32 + v31);
              v37 = v31 + 1;
              while (1)
              {
                v2 = v37;
                *(a2 + 1) = v37;
                v38 = *v36++;
                v35 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  break;
                }
              }
            }

LABEL_94:
            *(this + 17) = v35;
            goto LABEL_99;
          }

          if (v22 == 4)
          {
            *(this + 36) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_68:
              *(a2 + 24) = 1;
              goto LABEL_99;
            }

            *(this + 1) = *(*a2 + v2);
            goto LABEL_88;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(this + 36) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_68;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_88;
          }

          if (v22 == 2)
          {
            *(this + 36) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_68;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_88;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(this + 36) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_88;
        }

        if (v22 == 6)
        {
          *(this + 36) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_88;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(this + 36) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_68;
            }

            *(this + 7) = *(*a2 + v2);
            goto LABEL_88;
          case 8:
            *(this + 36) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_68;
            }

            *(this + 3) = *(*a2 + v2);
LABEL_88:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
            goto LABEL_99;
          case 9:
            *(this + 36) |= 0x80u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v46 = 0;
              v47 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v48 = v2 - v23;
              v49 = (v24 + v23);
              v50 = v23 + 1;
              while (1)
              {
                if (!v48)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_98;
                }

                v51 = v50;
                v52 = *v49;
                *(a2 + 1) = v51;
                v27 |= (v52 & 0x7F) << v46;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                --v48;
                ++v49;
                v50 = v51 + 1;
                v14 = v47++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_97;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_97:
              v2 = v51;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_98:
            *(this + 16) = v27;
            goto LABEL_99;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(a2 + 1);
LABEL_99:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_103:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::VO2MaxOutput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 48), 1u);
    v4 = *(v3 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 72);
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2, *(v3 + 68), 3u);
  v4 = *(v3 + 72);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 8), 4u);
  v4 = *(v3 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 32), 5u);
  v4 = *(v3 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 40), 6u);
  v4 = *(v3 + 72);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::write(a2, *(v3 + 24), 8u);
    if ((*(v3 + 72) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 56), 7u);
  v4 = *(v3 + 72);
  if ((v4 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v5 = *(v3 + 64);

  return PB::Writer::writeVarInt(a2, v5, 9u);
}

uint64_t CMMsl::VO2MaxOutput::hash_value(CMMsl::VO2MaxOutput *this)
{
  v1 = *(this + 36);
  if ((v1 & 0x20) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    v3 = 0.0;
    if ((*(this + 36) & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

  v2 = *(this + 6);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 36) & 0x100) != 0)
  {
LABEL_6:
    v4 = *(this + 17);
    if (v1)
    {
      goto LABEL_7;
    }

LABEL_28:
    v5 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    v6 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_13;
    }

LABEL_30:
    v7 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v8 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_27:
  v4 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  v6 = *(this + 4);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  v7 = *(this + 5);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v8 = *(this + 7);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_19:
    v9 = *(this + 3);
    if (v9 == 0.0)
    {
      v9 = 0.0;
    }

    if ((v1 & 0x80) != 0)
    {
      goto LABEL_22;
    }

LABEL_33:
    v10 = 0;
    return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ v10;
  }

LABEL_32:
  v9 = 0.0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  v10 = *(this + 16);
  return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ v10;
}

void CMMsl::VehicularFlagsData::~VehicularFlagsData(CMMsl::VehicularFlagsData *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::VehicularFlagsData::VehicularFlagsData(uint64_t this, const CMMsl::VehicularFlagsData *a2)
{
  *this = off_1004228A0;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 15);
    v3 = 16;
    *(this + 20) = 16;
    *(this + 15) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 20) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 14);
    v3 |= 8u;
    *(this + 20) = v3;
    *(this + 14) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 12);
    v3 |= 2u;
    *(this + 20) = v3;
    *(this + 12) = v6;
    v2 = *(a2 + 20);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  v3 |= 0x20u;
  *(this + 20) = v3;
  *(this + 16) = v7;
  v2 = *(a2 + 20);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return this;
    }

LABEL_14:
    v9 = *(a2 + 2);
    *(this + 20) = v3 | 1;
    *(this + 8) = v9;
    return this;
  }

LABEL_13:
  v8 = *(a2 + 13);
  v3 |= 4u;
  *(this + 20) = v3;
  *(this + 13) = v8;
  if (*(a2 + 20))
  {
    goto LABEL_14;
  }

  return this;
}

uint64_t CMMsl::VehicularFlagsData::operator=(uint64_t a1, const CMMsl::VehicularFlagsData *a2)
{
  if (a1 != a2)
  {
    CMMsl::VehicularFlagsData::VehicularFlagsData(v8, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v12;
    v12 = v3;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 12);
    v6 = v10;
    *(a1 + 8) = v9;
    *(a1 + 12) = v6;
    v9 = v5;
    v10 = v4;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::VehicularFlagsData *a2, CMMsl::VehicularFlagsData *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  LOBYTE(v3) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  LOBYTE(v3) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  LOBYTE(v3) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  LOBYTE(v3) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::VehicularFlagsData::VehicularFlagsData(uint64_t result, uint64_t a2)
{
  *result = off_1004228A0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 15) = *(a2 + 15);
  *(result + 14) = *(a2 + 14);
  *(result + 12) = *(a2 + 12);
  *(result + 16) = *(a2 + 16);
  *(result + 13) = *(a2 + 13);
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = off_1004228A0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 15) = *(a2 + 15);
  *(result + 14) = *(a2 + 14);
  *(result + 12) = *(a2 + 12);
  *(result + 16) = *(a2 + 16);
  *(result + 13) = *(a2 + 13);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::VehicularFlagsData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10 = off_1004228A0;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 16);
    v14 = *(a1 + 20);
    v13 = *(a1 + 16);
    v5 = *(a2 + 8);
    v6 = *(a2 + 12);
    *(a1 + 20) = v3;
    *(a1 + 16) = v4;
    v8 = *(a1 + 8);
    v7 = *(a1 + 12);
    *(a1 + 8) = v5;
    *(a1 + 12) = v6;
    v11 = v8;
    v12 = v7;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::VehicularFlagsData::formatText(CMMsl::VehicularFlagsData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "basebandHint", *(this + 12));
    v5 = *(this + 20);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "btHint", *(this + 13));
  v5 = *(this + 20);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "gpsHint", *(this + 14));
  v5 = *(this + 20);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "motionHint", *(this + 15));
  v5 = *(this + 20);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "vehicularData", *(this + 2));
  if ((*(this + 20) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "wifiHint", *(this + 16));
  }

LABEL_8:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::VehicularFlagsData::readFrom(CMMsl::VehicularFlagsData *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_77;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        switch(v23)
        {
          case 4:
            *(this + 20) |= 0x20u;
            v3 = *(a2 + 1);
            v2 = *(a2 + 2);
            if (v3 >= v2)
            {
              v37 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v36 = *(*a2 + v3++);
              *(a2 + 1) = v3;
              v37 = v36 != 0;
            }

            *(this + 16) = v37;
            goto LABEL_73;
          case 5:
            *(this + 20) |= 4u;
            v3 = *(a2 + 1);
            v2 = *(a2 + 2);
            if (v3 >= v2)
            {
              v41 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v40 = *(*a2 + v3++);
              *(a2 + 1) = v3;
              v41 = v40 != 0;
            }

            *(this + 13) = v41;
            goto LABEL_73;
          case 6:
            *(this + 20) |= 1u;
            v26 = *(a2 + 1);
            v2 = *(a2 + 2);
            v27 = *a2;
            if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v2)
            {
              v42 = 0;
              v43 = 0;
              v30 = 0;
              if (v2 <= v26)
              {
                v3 = *(a2 + 1);
              }

              else
              {
                v3 = *(a2 + 2);
              }

              v44 = v3 - v26;
              v45 = (v27 + v26);
              v46 = v26 + 1;
              while (1)
              {
                if (!v44)
                {
                  LODWORD(v30) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_72;
                }

                v47 = v46;
                v48 = *v45;
                *(a2 + 1) = v47;
                v30 |= (v48 & 0x7F) << v42;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                --v44;
                ++v45;
                v46 = v47 + 1;
                v14 = v43++ > 8;
                if (v14)
                {
                  LODWORD(v30) = 0;
                  goto LABEL_71;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v30) = 0;
              }

LABEL_71:
              v3 = v47;
            }

            else
            {
              v28 = 0;
              v29 = 0;
              v30 = 0;
              v31 = (v27 + v26);
              v32 = v26 + 1;
              while (1)
              {
                v3 = v32;
                *(a2 + 1) = v32;
                v33 = *v31++;
                v30 |= (v33 & 0x7F) << v28;
                if ((v33 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                ++v32;
                v14 = v29++ > 8;
                if (v14)
                {
                  LODWORD(v30) = 0;
                  break;
                }
              }
            }

LABEL_72:
            *(this + 2) = v30;
            goto LABEL_73;
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            *(this + 20) |= 0x10u;
            v3 = *(a2 + 1);
            v2 = *(a2 + 2);
            if (v3 >= v2)
            {
              v35 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v34 = *(*a2 + v3++);
              *(a2 + 1) = v3;
              v35 = v34 != 0;
            }

            *(this + 15) = v35;
            goto LABEL_73;
          case 2:
            *(this + 20) |= 8u;
            v3 = *(a2 + 1);
            v2 = *(a2 + 2);
            if (v3 >= v2)
            {
              v39 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v38 = *(*a2 + v3++);
              *(a2 + 1) = v3;
              v39 = v38 != 0;
            }

            *(this + 14) = v39;
            goto LABEL_73;
          case 3:
            *(this + 20) |= 2u;
            v3 = *(a2 + 1);
            v2 = *(a2 + 2);
            if (v3 >= v2)
            {
              v25 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v24 = *(*a2 + v3++);
              *(a2 + 1) = v3;
              v25 = v24 != 0;
            }

            *(this + 12) = v25;
            goto LABEL_73;
        }
      }

      if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
      {
        v49 = 0;
        return v49 & 1;
      }

      v3 = *(a2 + 1);
      v2 = *(a2 + 2);
LABEL_73:
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_77:
  v49 = v4 ^ 1;
  return v49 & 1;
}

uint64_t CMMsl::VehicularFlagsData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 15), 1u);
    v4 = *(v3 + 20);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 20) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 14), 2u);
  v4 = *(v3 + 20);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 12), 3u);
  v4 = *(v3 + 20);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 13), 5u);
    if ((*(v3 + 20) & 1) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 16), 4u);
  v4 = *(v3 + 20);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_13:
  v5 = *(v3 + 8);

  return PB::Writer::writeVarInt(a2, v5, 6u);
}

uint64_t CMMsl::VehicularFlagsData::hash_value(CMMsl::VehicularFlagsData *this)
{
  if ((*(this + 20) & 0x10) != 0)
  {
    v1 = *(this + 15);
    if ((*(this + 20) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 14);
      if ((*(this + 20) & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 20) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 20) & 2) != 0)
  {
LABEL_4:
    v3 = *(this + 12);
    if ((*(this + 20) & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v3 = 0;
  if ((*(this + 20) & 0x20) != 0)
  {
LABEL_5:
    v4 = *(this + 16);
    if ((*(this + 20) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v5 = 0;
    if (*(this + 20))
    {
      goto LABEL_7;
    }

LABEL_13:
    v6 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6;
  }

LABEL_11:
  v4 = 0;
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v5 = *(this + 13);
  if ((*(this + 20) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v6 = *(this + 2);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6;
}

void CMMsl::VelocityEstimatorFusionState::~VelocityEstimatorFusionState(CMMsl::VelocityEstimatorFusionState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::VelocityEstimatorFusionState::VelocityEstimatorFusionState(CMMsl::VelocityEstimatorFusionState *this, const CMMsl::VelocityEstimatorFusionState *a2)
{
  *this = off_1004228D8;
  *(this + 15) = 0;
  v2 = *(a2 + 30);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 30) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 30);
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 30) & 0x100) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 12);
    v3 |= 0x100u;
    *(this + 30) = v3;
    *(this + 12) = LODWORD(result);
    v2 = *(a2 + 30);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    LODWORD(result) = *(a2 + 13);
    v3 |= 0x200u;
    *(this + 30) = v3;
    *(this + 13) = LODWORD(result);
    v2 = *(a2 + 30);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 14);
  v3 |= 0x400u;
  *(this + 30) = v3;
  *(this + 14) = LODWORD(result);
  v2 = *(a2 + 30);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  LODWORD(result) = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 30) = v3;
  *(this + 9) = LODWORD(result);
  v2 = *(a2 + 30);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  LODWORD(result) = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 30) = v3;
  *(this + 10) = LODWORD(result);
  v2 = *(a2 + 30);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  LODWORD(result) = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 30) = v3;
  *(this + 11) = LODWORD(result);
  v2 = *(a2 + 30);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v5 = *(a2 + 6);
  v3 |= 4u;
  *(this + 30) = v3;
  *(this + 6) = v5;
  v2 = *(a2 + 30);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = *(a2 + 7);
  v3 |= 8u;
  *(this + 30) = v3;
  *(this + 7) = v6;
  v2 = *(a2 + 30);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 2);
    *(this + 30) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_23:
  v7 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 30) = v3;
  *(this + 8) = v7;
  if ((*(a2 + 30) & 2) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

CMMsl *CMMsl::VelocityEstimatorFusionState::operator=(CMMsl *a1, const CMMsl::VelocityEstimatorFusionState *a2)
{
  if (a1 != a2)
  {
    CMMsl::VelocityEstimatorFusionState::VelocityEstimatorFusionState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::VelocityEstimatorFusionState *a2, CMMsl::VelocityEstimatorFusionState *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::VelocityEstimatorFusionState::VelocityEstimatorFusionState(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004228D8;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

CMMsl *CMMsl::VelocityEstimatorFusionState::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::VelocityEstimatorFusionState::VelocityEstimatorFusionState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::VelocityEstimatorFusionState::formatText(CMMsl::VelocityEstimatorFusionState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 30);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "sourceX", *(this + 6));
    v5 = *(this + 30);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "sourceY", *(this + 7));
  v5 = *(this + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "sourceZ", *(this + 8));
  v5 = *(this + 30);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 30);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  v5 = *(this + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "velocityUncX", *(this + 9));
  v5 = *(this + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "velocityUncY", *(this + 10));
  v5 = *(this + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "velocityUncZ", *(this + 11));
  v5 = *(this + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "velocityX", *(this + 12));
  v5 = *(this + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "velocityY", *(this + 13));
  if ((*(this + 30) & 0x400) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "velocityZ", *(this + 14));
  }

LABEL_13:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::VelocityEstimatorFusionState::readFrom(CMMsl::VelocityEstimatorFusionState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_130;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(this + 30) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_74:
              *(a2 + 24) = 1;
              goto LABEL_126;
            }

            *(this + 1) = *(*a2 + v2);
LABEL_55:
            v2 = *(a2 + 1) + 8;
            goto LABEL_110;
          }

          if (v22 == 2)
          {
            *(this + 30) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 12) = *(*a2 + v2);
LABEL_109:
            v2 = *(a2 + 1) + 4;
LABEL_110:
            *(a2 + 1) = v2;
            goto LABEL_126;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(this + 30) |= 0x200u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_74;
              }

              *(this + 13) = *(*a2 + v2);
              goto LABEL_109;
            case 4:
              *(this + 30) |= 0x400u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_74;
              }

              *(this + 14) = *(*a2 + v2);
              goto LABEL_109;
            case 5:
              *(this + 30) |= 0x20u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_74;
              }

              *(this + 9) = *(*a2 + v2);
              goto LABEL_109;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(this + 30) |= 8u;
            v39 = *(a2 + 1);
            v2 = *(a2 + 2);
            v40 = *a2;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(a2 + 1);
              }

              v63 = v2 - v39;
              v64 = (v40 + v39);
              v65 = v39 + 1;
              while (1)
              {
                if (!v63)
                {
                  LODWORD(v43) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_125;
                }

                v66 = v65;
                v67 = *v64;
                *(a2 + 1) = v66;
                v43 |= (v67 & 0x7F) << v61;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                --v63;
                ++v64;
                v65 = v66 + 1;
                v14 = v62++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_124;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_124:
              v2 = v66;
            }

            else
            {
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = (v40 + v39);
              v45 = v39 + 1;
              while (1)
              {
                v2 = v45;
                *(a2 + 1) = v45;
                v46 = *v44++;
                v43 |= (v46 & 0x7F) << v41;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                ++v45;
                v14 = v42++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  break;
                }
              }
            }

LABEL_125:
            *(this + 7) = v43;
            goto LABEL_126;
          case 0xA:
            *(this + 30) |= 0x10u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v47 = 0;
              v48 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v49 = v2 - v31;
              v50 = (v32 + v31);
              v51 = v31 + 1;
              while (1)
              {
                if (!v49)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_117;
                }

                v52 = v51;
                v53 = *v50;
                *(a2 + 1) = v52;
                v35 |= (v53 & 0x7F) << v47;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                --v49;
                ++v50;
                v51 = v52 + 1;
                v14 = v48++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_116;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_116:
              v2 = v52;
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = (v32 + v31);
              v37 = v31 + 1;
              while (1)
              {
                v2 = v37;
                *(a2 + 1) = v37;
                v38 = *v36++;
                v35 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  break;
                }
              }
            }

LABEL_117:
            *(this + 8) = v35;
            goto LABEL_126;
          case 0xB:
            *(this + 30) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_55;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(this + 30) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 10) = *(*a2 + v2);
            goto LABEL_109;
          case 7:
            *(this + 30) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 11) = *(*a2 + v2);
            goto LABEL_109;
          case 8:
            *(this + 30) |= 4u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v56 = v2 - v23;
              v57 = (v24 + v23);
              v58 = v23 + 1;
              while (1)
              {
                if (!v56)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_121;
                }

                v59 = v58;
                v60 = *v57;
                *(a2 + 1) = v59;
                v27 |= (v60 & 0x7F) << v54;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                --v56;
                ++v57;
                v58 = v59 + 1;
                v14 = v55++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_120;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_120:
              v2 = v59;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_121:
            *(this + 6) = v27;
            goto LABEL_126;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(a2 + 1);
LABEL_126:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_130:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t CMMsl::VelocityEstimatorFusionState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 60);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 60) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 48), 2u);
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 52), 3u);
  v4 = *(v3 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 56), 4u);
  v4 = *(v3 + 60);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 36), 5u);
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 40), 6u);
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 44), 7u);
  v4 = *(v3 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 8u);
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0xAu);
    if ((*(v3 + 60) & 2) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 9u);
  v4 = *(v3 + 60);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_23:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 0xBu);
}

uint64_t CMMsl::VelocityEstimatorFusionState::hash_value(CMMsl::VelocityEstimatorFusionState *this)
{
  v1 = *(this + 30);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((*(this + 30) & 0x100) != 0)
    {
      goto LABEL_3;
    }

LABEL_30:
    v4 = 0;
    if ((*(this + 30) & 0x200) != 0)
    {
      goto LABEL_6;
    }

LABEL_31:
    v6 = 0;
    if ((*(this + 30) & 0x400) != 0)
    {
      goto LABEL_9;
    }

LABEL_32:
    v8 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_33:
    v10 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_34:
    v12 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_18;
    }

LABEL_35:
    v14 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 30) & 0x100) == 0)
  {
    goto LABEL_30;
  }

LABEL_3:
  v3 = *(this + 12);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((*(this + 30) & 0x200) == 0)
  {
    goto LABEL_31;
  }

LABEL_6:
  v5 = *(this + 13);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((*(this + 30) & 0x400) == 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  v7 = *(this + 14);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  v9 = *(this + 9);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_15:
  v11 = *(this + 10);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  v13 = *(this + 11);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_21:
    v15 = *(this + 6);
    if ((v1 & 8) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_22:
    v16 = *(this + 7);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_23:
    v17 = *(this + 8);
    if ((v1 & 2) != 0)
    {
      goto LABEL_24;
    }

LABEL_39:
    v18 = 0.0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ *&v18;
  }

LABEL_38:
  v17 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_24:
  v18 = *(this + 2);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ *&v18;
}

void CMMsl::VibrationEvent::~VibrationEvent(CMMsl::VibrationEvent *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::VibrationEvent::VibrationEvent(uint64_t this, const CMMsl::VibrationEvent *a2)
{
  *this = off_100422910;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::VibrationEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = off_100422910;
    v3 = *(a2 + 8);
    v4 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12) & 1;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v7 = off_100422910;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 8);
    *(a1 + 8) = v4;
    v8 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::VibrationEvent *a2, CMMsl::VibrationEvent *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t CMMsl::VibrationEvent::formatText(CMMsl::VibrationEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "isDeviceVibrating", *(this + 8));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::VibrationEvent::readFrom(CMMsl::VibrationEvent *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_34;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 8) = v24;
      }

      else
      {
        if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_34:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::VibrationEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::write(a2, *(this + 8), 1u);
  }

  return this;
}

uint64_t CMMsl::VibrationEvent::hash_value(CMMsl::VibrationEvent *this)
{
  if (*(this + 12))
  {
    return *(this + 8);
  }

  else
  {
    return 0;
  }
}

void CMMsl::ViewObstructedMachineLearningDecision::~ViewObstructedMachineLearningDecision(CMMsl::ViewObstructedMachineLearningDecision *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::ViewObstructedMachineLearningDecision(uint64_t this, const CMMsl::ViewObstructedMachineLearningDecision *a2)
{
  *this = off_100422948;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 16);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::operator=(uint64_t a1, const CMMsl::ViewObstructedMachineLearningDecision *a2)
{
  if (a1 != a2)
  {
    CMMsl::ViewObstructedMachineLearningDecision::ViewObstructedMachineLearningDecision(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ViewObstructedMachineLearningDecision *a2, CMMsl::ViewObstructedMachineLearningDecision *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  return this;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::ViewObstructedMachineLearningDecision(uint64_t result, uint64_t a2)
{
  *result = off_100422948;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = off_100422948;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[0] = off_100422948;
    v9[1] = v7;
    LOBYTE(v7) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::formatText(CMMsl::ViewObstructedMachineLearningDecision *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "shouldSuppress", *(this + 16));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::readFrom(CMMsl::ViewObstructedMachineLearningDecision *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_56;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
        if (v3 >= v2)
        {
          v33 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v32 = *(*a2 + v3++);
          *(a2 + 1) = v3;
          v33 = v32 != 0;
        }

        *(this + 16) = v33;
      }

      else if (v23 == 1)
      {
        *(this + 20) |= 1u;
        v24 = *(a2 + 1);
        v2 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
        {
          v34 = 0;
          v35 = 0;
          v28 = 0;
          if (v2 <= v24)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v36 = v3 - v24;
          v37 = (v25 + v24);
          v38 = v24 + 1;
          while (1)
          {
            if (!v36)
            {
              v28 = 0;
              *(a2 + 24) = 1;
              goto LABEL_51;
            }

            v39 = v38;
            v40 = *v37;
            *(a2 + 1) = v39;
            v28 |= (v40 & 0x7F) << v34;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            --v36;
            ++v37;
            v38 = v39 + 1;
            v14 = v35++ > 8;
            if (v14)
            {
              v28 = 0;
              goto LABEL_50;
            }
          }

          if (*(a2 + 24))
          {
            v28 = 0;
          }

LABEL_50:
          v3 = v39;
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            v3 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              v28 = 0;
              break;
            }
          }
        }

LABEL_51:
        *(this + 1) = v28;
      }

      else
      {
        if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
        {
          v41 = 0;
          return v41 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_56:
  v41 = v4 ^ 1;
  return v41 & 1;
}