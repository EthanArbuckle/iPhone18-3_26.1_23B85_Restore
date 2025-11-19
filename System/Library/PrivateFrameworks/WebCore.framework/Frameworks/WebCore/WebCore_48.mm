void std::__introsort<std::_ClassicAlgPolicy,webrtc::RTCVideoFrameReorderQueue::append(RTCVideoFrame *,unsigned char)::$_0 &,std::__deque_iterator<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>*,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>&,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>**,long,512l>,false>(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6)
{
  if (a4 == a2)
  {
    return;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  while (1)
  {
    v10 = *v7;
    v11 = (v6 - *v7) >> 3;
    v12 = *a1;
    v13 = v8 - *a1;
    v14 = v13 >> 3;
    v15 = v11 + ((v7 - a1) << 6) - (v13 >> 3);
    v16 = v15 - 2;
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          v133 = *(a1 - 8 * ((510 - v14) >> 9)) + 8 * (~(510 - v14) & 0x1FF);
        }

        else
        {
          v133 = *(a1 + (((v14 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + 1) & 0x1FF);
        }

        if (v6 == v10)
        {
          v6 = (*(v7 - 1) + 512);
        }

        v225 = *v133;
        v226 = *v8;
        v227 = *(*v133 + 8);
        v228 = *(*v8 + 8);
        v229 = *(v6 - 1);
        v230 = *(v229 + 8);
        if (v227 < v228)
        {
          if (v230 >= v227)
          {
            *v8 = v225;
            *v133 = v226;
            v243 = *(v6 - 1);
            if (*(v243 + 8) < v228)
            {
              *v133 = v243;
              *(v6 - 1) = v226;
            }
          }

          else
          {
            *v8 = v229;
            *(v6 - 1) = v226;
          }

          return;
        }

        if (v230 >= v227)
        {
          return;
        }

        *v133 = v229;
        *(v6 - 1) = v225;
LABEL_415:
        v246 = *v8;
        if (*(*v133 + 8) < *(*v8 + 8))
        {
          *v8 = *v133;
          *v133 = v246;
        }

        return;
      }

      if (v15 != 4)
      {
        if (v15 != 5)
        {
          goto LABEL_11;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          a3 = (a1 - 8 * ((510 - v14) >> 9));
          a4 = (*a3 + 8 * (~(510 - v14) & 0x1FF));
          if (v13 != -8)
          {
            a5 = (a1 - 8 * ((509 - v14) >> 9));
            a6 = *a5 + 8 * (~(509 - v14) & 0x1FF);
            if (v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              goto LABEL_446;
            }

            v239 = 1;
LABEL_403:
            v240 = (a1 + 8 * (v239 >> 9));
            v241 = (*v240 + 8 * (v239 & 0x1FF));
            if (v6 == v10)
            {
              goto LABEL_404;
            }

            goto LABEL_405;
          }

          v137 = 1;
        }

        else
        {
          a3 = (a1 + 8 * ((v14 + 1) >> 9));
          a4 = (*a3 + 8 * ((v14 + 1) & 0x1FF));
          v137 = v14 + 2;
        }

        a5 = (a1 + 8 * (v137 >> 9));
        a6 = *a5 + 8 * (v137 & 0x1FF);
        v239 = v14 + 3;
        goto LABEL_403;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        v133 = *(a1 - 8 * ((510 - v14) >> 9)) + 8 * (~(510 - v14) & 0x1FF);
        if (v13 != -8)
        {
          v231 = *(a1 - 8 * ((509 - v14) >> 9)) + 8 * (~(509 - v14) & 0x1FF);
          if (v6 != v10)
          {
LABEL_394:
            v232 = *v133;
            v233 = *v8;
            v234 = *(*v133 + 8);
            v235 = *(*v8 + 8);
            v236 = *v231;
            v237 = *(*v231 + 8);
            if (v234 >= v235)
            {
              if (v237 >= v234)
              {
                v232 = *v231;
              }

              else
              {
                *v133 = v236;
                *v231 = v232;
                v238 = *v8;
                if (*(*v133 + 8) < *(*v8 + 8))
                {
                  *v8 = *v133;
                  *v133 = v238;
                  v232 = *v231;
                }
              }

              goto LABEL_412;
            }

            if (v237 >= v234)
            {
              *v8 = v232;
              *v133 = v233;
              v232 = *v231;
              if (*(*v231 + 8) >= v235)
              {
                goto LABEL_412;
              }

              *v133 = v232;
            }

            else
            {
              *v8 = v236;
            }

            *v231 = v233;
            v232 = v233;
LABEL_412:
            v244 = *(v6 - 1);
            if (*(v244 + 8) >= *(v232 + 8))
            {
              return;
            }

            *v231 = v244;
            *(v6 - 1) = v232;
            v245 = *v133;
            if (*(*v231 + 8) >= *(*v133 + 8))
            {
              return;
            }

            *v133 = *v231;
            *v231 = v245;
            goto LABEL_415;
          }

LABEL_393:
          v6 = (*(v7 - 1) + 512);
          goto LABEL_394;
        }

        v136 = 1;
      }

      else
      {
        v133 = *(a1 + (((v14 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + 1) & 0x1FF);
        v136 = v14 + 2;
      }

      v231 = *(a1 + ((v136 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v136 & 0x1FF);
      if (v6 != v10)
      {
        goto LABEL_394;
      }

      goto LABEL_393;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      if (v6 == v10)
      {
        v6 = (*(v7 - 1) + 512);
      }

      v134 = *(v6 - 1);
      v135 = *v8;
      if (*(v134 + 8) < *(*v8 + 8))
      {
        *v8 = v134;
        *(v6 - 1) = v135;
      }

      return;
    }

LABEL_11:
    if (v15 <= 23)
    {
      if (a6)
      {
        if (v8 == v6)
        {
          return;
        }

        v138 = (v8 + 8);
        if (v8 + 8 - v12 == 4096)
        {
          v139 = *(a1 + 8);
          a1 += 8;
          v12 = v139;
          v138 = v139;
        }

        if (v138 == v6)
        {
          return;
        }

        while (1)
        {
          v140 = a1;
          if (v138 == v12)
          {
            v140 = (a1 - 8);
            v141 = *(a1 - 8) + 4088;
            v142 = *v138;
            if (*(*v138 + 8) >= *(*v141 + 8))
            {
LABEL_264:
              if (++v138 - v12 == 4096)
              {
                goto LABEL_265;
              }

              goto LABEL_245;
            }
          }

          else
          {
            v141 = (v138 - 1);
            v142 = *v138;
            if (*(*v138 + 8) >= *(*(v138 - 1) + 8))
            {
              goto LABEL_264;
            }
          }

          *v138 = 0;
          v143 = *v141;
          v144 = v138;
          while (1)
          {
            v146 = v141;
            *v141 = 0;
            v147 = *v144;
            *v144 = v143;
            if (v147)
            {
              v148 = *v147;
              if (*v147)
              {
                *v147 = 0;
              }

              MEMORY[0x2743DA540](v147, 0x1080C40468F112ELL);
            }

            if (v146 == v8)
            {
              break;
            }

            if (v146 == *v140)
            {
              v145 = *--v140;
              v141 = v145 + 4088;
              v143 = *(v145 + 4088);
              v144 = v146;
              if (*(v142 + 8) >= *(v143 + 8))
              {
                break;
              }
            }

            else
            {
              v141 = (v146 - 1);
              v143 = *(v146 - 1);
              v144 = v146;
              if (*(v142 + 8) >= *(v143 + 8))
              {
                break;
              }
            }
          }

          v149 = *v146;
          *v146 = v142;
          if (v149)
          {
            v150 = *v149;
            if (*v149)
            {
              *v149 = 0;
            }

            MEMORY[0x2743DA540](v149, 0x1080C40468F112ELL);
          }

          v12 = *a1;
          if ((++v138 - *a1) == 4096)
          {
LABEL_265:
            v151 = *(a1 + 8);
            a1 += 8;
            v12 = v151;
            v138 = v151;
          }

LABEL_245:
          if (v138 == v6)
          {
            return;
          }
        }
      }

      if (v8 == v6)
      {
        return;
      }

      if (v14 < 2)
      {
        v224 = *(a1 - 8 * ((512 - v14) >> 9)) + 8 * (~(512 - v14) & 0x1FF);
        if ((v14 & 0x8000000000000000) != 0)
        {
          v247 = (a1 - 8 * ((510 - v14) >> 9));
          v248 = *v247;
          v249 = *v247 + 8 * (~(510 - v14) & 0x1FF);
          if (v249 == v6)
          {
            return;
          }

LABEL_423:
          v8 = 0x1080C40468F112ELL;
          while (1)
          {
            v250 = (v249 - v248) >> 3;
            if (v250 < 2)
            {
              v255 = 512 - v250;
              v252 = &v247[-(v255 >> 9)];
              v253 = &(*v252)[~v255 & 0x1FF];
              v254 = *v249;
              if (*(*v249 + 8) >= *(*v253 + 8))
              {
                goto LABEL_443;
              }
            }

            else
            {
              v251 = v250 - 1;
              v252 = &v247[v251 >> 9];
              v253 = &(*v252)[v251 & 0x1FF];
              v254 = *v249;
              if (*(*v249 + 8) >= *(*v253 + 8))
              {
                goto LABEL_443;
              }
            }

            *v249 = 0;
            v10 = *v253;
            v14 = v249;
            do
            {
              while (1)
              {
                v7 = v253;
                *v253 = 0;
                a1 = *v14;
                *v14 = v10;
                if (a1)
                {
                  v257 = *a1;
                  if (*a1)
                  {
                    *a1 = 0;
                  }

                  MEMORY[0x2743DA540](a1, 0x1080C40468F112ELL);
                }

                if (v7 == v224)
                {
                  goto LABEL_445;
                }

                if (v7 != *v252)
                {
                  break;
                }

                v256 = *--v252;
                v253 = v256 + 4088;
                v10 = *(v256 + 4088);
                v14 = v7;
                if (*(v254 + 8) >= v10[1])
                {
                  goto LABEL_438;
                }
              }

              v253 = (v7 - 1);
              v10 = *(v7 - 1);
              v14 = v7;
            }

            while (*(v254 + 8) < v10[1]);
LABEL_438:
            v258 = *v7;
            *v7 = v254;
            if (v258)
            {
              v259 = *v258;
              if (*v258)
              {
                *v258 = 0;
              }

              MEMORY[0x2743DA540](v258, 0x1080C40468F112ELL);
            }

            v248 = *v247;
LABEL_443:
            v249 += 8;
            if (v249 - v248 == 4096)
            {
              v260 = v247[1];
              ++v247;
              v248 = v260;
              v249 = v260;
            }

            if (v249 == v6)
            {
              return;
            }
          }
        }
      }

      else
      {
        v224 = *(a1 + (((v14 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 - 1) & 0x1FF);
      }

      v247 = (a1 + 8 * ((v14 + 1) >> 9));
      v248 = *v247;
      v249 = *v247 + 8 * ((v14 + 1) & 0x1FF);
      if (v249 == v6)
      {
        return;
      }

      goto LABEL_423;
    }

    if (!a5)
    {
      break;
    }

    v17 = v15 >> 1;
    v18 = (v15 >> 1) + v14;
    if (v15 >= 0x81)
    {
      if (v18 < 1)
      {
        v19 = *(a1 - 8 * ((511 - v18) >> 9)) + 8 * (~(511 - v18) & 0x1FF);
        v20 = a5;
        v21 = v11 - 2;
        if (v11 < 2)
        {
          goto LABEL_21;
        }

LABEL_16:
        v22 = &(*(v7 + (((v11 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)))[(v11 - 1) & 0x1FF];
      }

      else
      {
        v19 = *(a1 + ((v18 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v18 & 0x1FF);
        v20 = a5;
        v21 = v11 - 2;
        if (v11 >= 2)
        {
          goto LABEL_16;
        }

LABEL_21:
        v22 = &v7[-((512 - v11) >> 9)][~(512 - v11) & 0x1FF];
      }

      v25 = *v19;
      v26 = *v8;
      v27 = *(*v19 + 8);
      v28 = *(*v8 + 8);
      v29 = *v22;
      v30 = *(*v22 + 8);
      if (v27 >= v28)
      {
        if (v30 < v27)
        {
          *v19 = v29;
          *v22 = v25;
          v31 = *v8;
          if (*(*v19 + 8) < *(*v8 + 8))
          {
            *v8 = *v19;
            *v19 = v31;
          }
        }
      }

      else
      {
        if (v30 < v27)
        {
          *v8 = v29;
          goto LABEL_39;
        }

        *v8 = v25;
        *v19 = v26;
        if (*(*v22 + 8) < v28)
        {
          *v19 = *v22;
LABEL_39:
          *v22 = v26;
        }
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        v39 = *(a1 - 8 * ((510 - v14) >> 9)) + 8 * (~(510 - v14) & 0x1FF);
        v40 = v14 + v17 - 1;
        v41 = v40 >> 6;
        if (v40 < 1)
        {
          goto LABEL_45;
        }

LABEL_42:
        v42 = *(a1 + (v41 & 0x3FFFFFFFFFFFFF8)) + 8 * (v40 & 0x1FF);
        v43 = v11 - 3;
        if (v11 >= 3)
        {
          goto LABEL_43;
        }

LABEL_46:
        v44 = &v7[-((513 - v11) >> 9)][~(513 - v11) & 0x1FF];
      }

      else
      {
        v39 = *(a1 + (((v14 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + 1) & 0x1FF);
        v40 = v14 + v17 - 1;
        v41 = v40 >> 6;
        if (v40 >= 1)
        {
          goto LABEL_42;
        }

LABEL_45:
        v42 = *(a1 - 8 * ((511 - v40) >> 9)) + 8 * (~(511 - v40) & 0x1FF);
        v43 = v11 - 3;
        if (v11 < 3)
        {
          goto LABEL_46;
        }

LABEL_43:
        v44 = &(*(v7 + ((v21 >> 6) & 0x3FFFFFFFFFFFFF8)))[v21 & 0x1FF];
      }

      v45 = *v42;
      v46 = *v39;
      v47 = *(*v42 + 8);
      v48 = *(*v39 + 8);
      v49 = *v44;
      v50 = *(*v44 + 8);
      if (v47 >= v48)
      {
        if (v50 < v47)
        {
          *v42 = v49;
          *v44 = v45;
          v51 = *v39;
          if (*(*v42 + 8) < *(*v39 + 8))
          {
            *v39 = *v42;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v50 < v47)
        {
          *v39 = v49;
          goto LABEL_125;
        }

        *v39 = v45;
        *v42 = v46;
        if (*(*v44 + 8) < v48)
        {
          *v42 = *v44;
LABEL_125:
          *v44 = v46;
        }
      }

      if (v14 < -1)
      {
        v84 = *(a1 - 8 * ((509 - v14) >> 9)) + 8 * (~(509 - v14) & 0x1FF);
        v85 = v14 + v17 + 1;
        v86 = v85 >> 6;
        if (v85 >= 1)
        {
          goto LABEL_131;
        }

LABEL_128:
        v87 = *(a1 - 8 * ((511 - v85) >> 9)) + 8 * (~(511 - v85) & 0x1FF);
        if (v11 < 4)
        {
          goto LABEL_129;
        }

LABEL_132:
        v88 = &(*(v7 + ((v43 >> 6) & 0x3FFFFFFFFFFFFF8)))[v43 & 0x1FF];
      }

      else
      {
        v84 = *(a1 + (((v14 + 2) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + 2) & 0x1FF);
        v85 = v14 + v17 + 1;
        v86 = v85 >> 6;
        if (v85 < 1)
        {
          goto LABEL_128;
        }

LABEL_131:
        v87 = *(a1 + (v86 & 0x3FFFFFFFFFFFFF8)) + 8 * (v85 & 0x1FF);
        if (v11 >= 4)
        {
          goto LABEL_132;
        }

LABEL_129:
        v88 = &v7[-((514 - v11) >> 9)][~(514 - v11) & 0x1FF];
      }

      v89 = *v87;
      v90 = *v84;
      v91 = *(*v87 + 8);
      v92 = *(*v84 + 8);
      v93 = *v88;
      v94 = *(*v88 + 8);
      if (v91 >= v92)
      {
        if (v94 < v91)
        {
          *v87 = v93;
          *v88 = v89;
          v95 = *v84;
          if (*(*v87 + 8) < *(*v84 + 8))
          {
            *v84 = *v87;
            *v87 = v95;
          }
        }
      }

      else
      {
        if (v94 < v91)
        {
          *v84 = v93;
          goto LABEL_141;
        }

        *v84 = v89;
        *v87 = v90;
        if (*(*v88 + 8) < v92)
        {
          *v87 = *v88;
LABEL_141:
          *v88 = v90;
        }
      }

      if (v40 < 1)
      {
        v96 = *(a1 - 8 * ((511 - v40) >> 9)) + 8 * (~(511 - v40) & 0x1FF);
        v97 = v20;
        if (v18 < 1)
        {
          goto LABEL_147;
        }

LABEL_144:
        v98 = *(a1 + ((v18 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v18 & 0x1FF);
        if (v85 >= 1)
        {
          goto LABEL_145;
        }

LABEL_148:
        v99 = *(a1 - 8 * ((511 - v85) >> 9)) + 8 * (~(511 - v85) & 0x1FF);
      }

      else
      {
        v96 = *(a1 + (v41 & 0x3FFFFFFFFFFFFF8)) + 8 * (v40 & 0x1FF);
        v97 = v20;
        if (v18 >= 1)
        {
          goto LABEL_144;
        }

LABEL_147:
        v98 = *(a1 - 8 * ((511 - v18) >> 9)) + 8 * (~(511 - v18) & 0x1FF);
        if (v85 < 1)
        {
          goto LABEL_148;
        }

LABEL_145:
        v99 = *(a1 + (v86 & 0x3FFFFFFFFFFFFF8)) + 8 * (v85 & 0x1FF);
      }

      v100 = *v98;
      v101 = *v96;
      a3 = *(*v98 + 8);
      v102 = *(*v96 + 8);
      v103 = *v99;
      a4 = *(*v99 + 8);
      if (a3 >= v102)
      {
        if (a4 < a3)
        {
          *v98 = v103;
          *v99 = v100;
          v104 = *v96;
          if (*(*v98 + 8) < *(*v96 + 8))
          {
            *v96 = *v98;
            *v98 = v104;
          }
        }
      }

      else
      {
        if (a4 < a3)
        {
          *v96 = v103;
          goto LABEL_157;
        }

        *v96 = v100;
        *v98 = v101;
        if (*(*v99 + 8) < v102)
        {
          *v98 = *v99;
LABEL_157:
          *v99 = v101;
        }
      }

      if (v18 < 1)
      {
        v107 = (*(a1 - 8 * ((511 - v18) >> 9)) + 8 * (~(511 - v18) & 0x1FF));
        v108 = *v8;
        *v8 = *v107;
        *v107 = v108;
        a5 = (v97 - 1);
        if (a6)
        {
LABEL_57:
          v52 = *v8;
          goto LABEL_58;
        }
      }

      else
      {
        v105 = (*(a1 + ((v18 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v18 & 0x1FF));
        v106 = *v8;
        *v8 = *v105;
        *v105 = v106;
        a5 = (v97 - 1);
        if (a6)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_162;
    }

    if (v18 < 1)
    {
      v23 = *(a1 - 8 * ((511 - v18) >> 9)) + 8 * (~(511 - v18) & 0x1FF);
      if (v11 >= 2)
      {
LABEL_19:
        v24 = &(*(v7 + (((v11 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)))[(v11 - 1) & 0x1FF];
        goto LABEL_30;
      }
    }

    else
    {
      v23 = *(a1 + ((v18 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v18 & 0x1FF);
      if (v11 >= 2)
      {
        goto LABEL_19;
      }
    }

    v24 = &v7[-((512 - v11) >> 9)][~(512 - v11) & 0x1FF];
LABEL_30:
    v32 = *v8;
    v33 = *v23;
    v34 = *(*v8 + 8);
    v35 = *(*v23 + 8);
    v36 = *v24;
    v37 = *(*v24 + 8);
    if (v34 < v35)
    {
      if (v37 < v34)
      {
        *v23 = v36;
        goto LABEL_55;
      }

      *v23 = v32;
      *v8 = v33;
      if (*(*v24 + 8) < v35)
      {
        *v8 = *v24;
LABEL_55:
        *v24 = v33;
      }

LABEL_56:
      a5 = (a5 - 1);
      if (a6)
      {
        goto LABEL_57;
      }

      goto LABEL_162;
    }

    if (v37 >= v34)
    {
      goto LABEL_56;
    }

    *v8 = v36;
    *v24 = v32;
    v38 = *v23;
    if (*(*v8 + 8) >= *(*v23 + 8))
    {
      goto LABEL_56;
    }

    *v23 = *v8;
    *v8 = v38;
    a5 = (a5 - 1);
    if (a6)
    {
      goto LABEL_57;
    }

LABEL_162:
    if (v14 < 2)
    {
      v52 = *v8;
      v110 = *(*(*(a1 - 8 * ((512 - v14) >> 9)) + 8 * (~(512 - v14) & 0x1FF)) + 8);
      v14 = *(*v8 + 8);
      if (v110 >= v14)
      {
        goto LABEL_166;
      }

LABEL_58:
      *v8 = 0;
      v53 = (v8 + 8);
      v14 = a1;
      if (v8 + 8 - v12 == 4096)
      {
        v14 = a1 + 8;
        v12 = *(a1 + 8);
        v53 = v12;
      }

      if (v53 == v6)
      {
        goto LABEL_445;
      }

      v54 = *v53;
      v55 = *(v52 + 8);
      if (*(*v53 + 8) < v55)
      {
        while (1)
        {
          if (++v53 - v12 == 4096)
          {
            v56 = *(v14 + 8);
            v14 += 8;
            v12 = v56;
            v53 = v56;
          }

          if (v53 == v6)
          {
            break;
          }

          v54 = *v53;
          if (*(*v53 + 8) >= v55)
          {
            goto LABEL_66;
          }
        }

LABEL_445:
        __break(1u);
LABEL_446:
        v240 = (a1 - 8 * ((508 - v14) >> 9));
        v241 = (*v240 + 8 * (~(508 - v14) & 0x1FF));
        if (v6 == v10)
        {
LABEL_404:
          v242 = *--v7;
          v6 = (v242 + 4096);
        }

LABEL_405:
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RTCVideoFrameReorderQueue::append(RTCVideoFrame *,unsigned char)::$_0 &,std::__deque_iterator<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>*,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>&,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>**,long,512l>,0>(a1, v8, a3, a4, a5, a6, v240, v241, v7, v6 - 1);
        return;
      }

LABEL_66:
      v57 = v53 - v12;
      if (v57 < 2)
      {
        if (*(v14 - 8 * ((512 - v57) >> 9)) + 8 * (~(512 - v57) & 0x1FF) != v8)
        {
LABEL_68:
          v58 = v7;
          v59 = v6;
          while (v59 != v8)
          {
            if (v59 == v10)
            {
              v61 = *--v58;
              v10 = v61;
              v59 = (v61 + 4096);
            }

            v60 = *--v59;
            if (*(v60 + 8) < v55)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_445;
        }
      }

      else if (*(v14 + (((v57 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v57 - 1) & 0x1FF) != v8)
      {
        goto LABEL_68;
      }

      v58 = v7;
      v59 = v6;
      while (v14 < v58 || v14 == v58 && v53 < v59)
      {
        if (v59 == v10)
        {
          v63 = *--v58;
          v10 = v63;
          v59 = (v63 + 4088);
          if (*(*(v63 + 4088) + 8) < v55)
          {
            break;
          }
        }

        else
        {
          v62 = *--v59;
          if (*(v62 + 8) < v55)
          {
            break;
          }
        }
      }

LABEL_82:
      v65 = v14 != v58 || v53 >= v59;
      v66 = v14 >= v58 && v65;
LABEL_91:
      if (v14 < v58 || v14 == v58 && v53 < v59)
      {
        *v53++ = *v59;
        *v59 = v54;
        if (v53 - v12 != 4096)
        {
          goto LABEL_98;
        }

LABEL_97:
        v67 = *(v14 + 8);
        v14 += 8;
        v12 = v67;
        v53 = v67;
LABEL_98:
        while (v53 != v6)
        {
          v54 = *v53;
          if (*(*v53 + 8) >= v55)
          {
            while (v59 != v8)
            {
              if (v59 == v10)
              {
                v69 = *--v58;
                v10 = v69;
                v59 = (v69 + 4096);
              }

              v68 = *--v59;
              if (*(v68 + 8) < v55)
              {
                goto LABEL_91;
              }
            }

            goto LABEL_445;
          }

          if (++v53 - v12 == 4096)
          {
            goto LABEL_97;
          }
        }

        goto LABEL_445;
      }

      v70 = a5;
      v71 = v53 - v12;
      v262 = v7;
      if (v71 < 2)
      {
        v76 = 512 - v71;
        v73 = v14 - 8 * (v76 >> 9);
        v74 = (*v73 + 8 * (~v76 & 0x1FF));
        v75 = a6;
        if (v74 != v8)
        {
LABEL_109:
          v77 = *v74;
          *v74 = 0;
          v78 = *v8;
          *v8 = v77;
          if (v78)
          {
            v79 = *v78;
            if (*v78)
            {
              *v78 = 0;
            }

            MEMORY[0x2743DA540](v78, 0x1080C40468F112ELL);
            LOBYTE(a6) = v75;
          }
        }
      }

      else
      {
        v72 = v71 - 1;
        v73 = v14 + 8 * (v72 >> 9);
        v74 = (*v73 + 8 * (v72 & 0x1FF));
        v75 = a6;
        if (v74 != v8)
        {
          goto LABEL_109;
        }
      }

      v80 = *v74;
      *v74 = v52;
      if (v80)
      {
        v81 = *v80;
        if (*v80)
        {
          *v80 = 0;
        }

        MEMORY[0x2743DA540](v80, 0x1080C40468F112ELL);
        LOBYTE(a6) = v75;
      }

      if (!v66)
      {
        goto LABEL_210;
      }

      v82 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RTCVideoFrameReorderQueue::append(RTCVideoFrame *,unsigned char)::$_0 &,std::__deque_iterator<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>*,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>&,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>**,long,512l>>(a1, v8, v73, v74);
      v83 = (v74 - *v73) >> 3;
      if (v83 < 0)
      {
        if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RTCVideoFrameReorderQueue::append(RTCVideoFrame *,unsigned char)::$_0 &,std::__deque_iterator<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>*,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>&,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>**,long,512l>>((v73 - 8 * ((510 - v83) >> 9)), (*(v73 - 8 * ((510 - v83) >> 9)) + 8 * (~(510 - v83) & 0x1FF)), v262, v6))
        {
          goto LABEL_207;
        }

LABEL_120:
        v6 = v74;
        a6 = v75;
        v7 = v73;
        a5 = v70;
        if (v82 || v74 == v8)
        {
          return;
        }
      }

      else
      {
        if (std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RTCVideoFrameReorderQueue::append(RTCVideoFrame *,unsigned char)::$_0 &,std::__deque_iterator<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>*,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>&,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>**,long,512l>>((v73 + 8 * ((v83 + 1) >> 9)), (*(v73 + 8 * ((v83 + 1) >> 9)) + 8 * ((v83 + 1) & 0x1FF)), v262, v6))
        {
          goto LABEL_120;
        }

LABEL_207:
        a6 = v75;
        if (v82)
        {
          v124 = v74 + 1;
          if ((v124 - *v73) != 4096)
          {
            goto LABEL_214;
          }

          goto LABEL_212;
        }

LABEL_210:
        std::__introsort<std::_ClassicAlgPolicy,webrtc::RTCVideoFrameReorderQueue::append(RTCVideoFrame *,unsigned char)::$_0 &,std::__deque_iterator<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>*,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>&,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>**,long,512l>,false>(a1, v8, v73, v74, v70, a6 & 1);
        v124 = v74 + 1;
        if ((v124 - *v73) != 4096)
        {
          a6 = 0;
          goto LABEL_214;
        }

        a6 = 0;
LABEL_212:
        v125 = *(v73 + 8);
        v73 += 8;
        v124 = v125;
LABEL_214:
        a1 = v73;
        v7 = v262;
        a5 = v70;
        v8 = v124;
        if (v6 == v124)
        {
          return;
        }
      }
    }

    else
    {
      v52 = *v8;
      v109 = *(*(*(a1 + (((v14 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 - 1) & 0x1FF)) + 8);
      v14 = *(*v8 + 8);
      if (v109 < v14)
      {
        goto LABEL_58;
      }

LABEL_166:
      *v8 = 0;
      if (v11 < 2)
      {
        v111 = v8;
        if (v14 < *(v7[-((512 - v11) >> 9)][~(512 - v11) & 0x1FF] + 1))
        {
          while (1)
          {
LABEL_170:
            if (++v111 - v12 == 4096)
            {
              v112 = *(a1 + 8);
              a1 += 8;
              v12 = v112;
              v111 = v112;
            }

            if (v111 == v6)
            {
              goto LABEL_445;
            }

            if (v14 < *(*v111 + 8))
            {
              goto LABEL_174;
            }
          }
        }
      }

      else
      {
        v111 = v8;
        if (v14 < *((*(v7 + (((v11 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)))[(v11 - 1) & 0x1FF] + 1))
        {
          goto LABEL_170;
        }
      }

      do
      {
        if (++v111 - v12 == 4096)
        {
          v117 = *(a1 + 8);
          a1 += 8;
          v12 = v117;
          v111 = v117;
        }
      }

      while ((a1 < v7 || a1 == v7 && v111 < v6) && v14 >= *(*v111 + 8));
LABEL_174:
      if (a1 < v7 || a1 == v7 && v111 < v6)
      {
        v113 = v7;
        v114 = v6;
        while (v114 != v8)
        {
          if (v114 == v10)
          {
            v116 = *--v113;
            v10 = v116;
            v114 = (v116 + 4096);
          }

          v115 = *--v114;
          if (v14 >= *(v115 + 8))
          {
            goto LABEL_190;
          }
        }

        goto LABEL_445;
      }

      v113 = v7;
      v114 = v6;
LABEL_190:
      if (a1 < v113 || a1 == v113 && v111 < v114)
      {
        v118 = *v111;
        *v111++ = *v114;
        *v114 = v118;
        if (v111 - v12 != 4096)
        {
          goto LABEL_197;
        }

LABEL_196:
        v119 = *(a1 + 8);
        a1 += 8;
        v12 = v119;
        v111 = v119;
LABEL_197:
        while (v111 != v6)
        {
          if (v14 < *(*v111 + 8))
          {
            while (v114 != v8)
            {
              if (v114 == v10)
              {
                v121 = *--v113;
                v10 = v121;
                v114 = (v121 + 4096);
              }

              v120 = *--v114;
              if (v14 >= *(v120 + 8))
              {
                goto LABEL_190;
              }
            }

            goto LABEL_445;
          }

          if (++v111 - v12 == 4096)
          {
            goto LABEL_196;
          }
        }

        goto LABEL_445;
      }

      v122 = v111 - v12;
      if (v122 < 2)
      {
        v123 = (*(a1 - 8 * ((512 - v122) >> 9)) + 8 * (~(512 - v122) & 0x1FF));
      }

      else
      {
        v123 = (*(a1 + (((v122 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v122 - 1) & 0x1FF));
      }

      if (v123 != v8)
      {
        v126 = *v123;
        *v123 = 0;
        v127 = *v8;
        *v8 = v126;
        if (v127)
        {
          v128 = a5;
          v129 = *v127;
          if (*v127)
          {
            *v127 = 0;
          }

          MEMORY[0x2743DA540](v127, 0x1080C40468F112ELL);
          a5 = v128;
        }
      }

      v130 = *v123;
      *v123 = v52;
      if (v130)
      {
        v131 = a5;
        v132 = *v130;
        if (*v130)
        {
          *v130 = 0;
        }

        MEMORY[0x2743DA540](v130, 0x1080C40468F112ELL);
        a6 = 0;
        a5 = v131;
        v8 = v111;
        if (v6 == v111)
        {
          return;
        }
      }

      else
      {
        a6 = 0;
        v8 = v111;
        if (v6 == v111)
        {
          return;
        }
      }
    }
  }

  if (v8 == v6)
  {
    return;
  }

  v261 = (v7 - a1) << 6;
  v263 = v7;
  v152 = v16 >> 1;
  v153 = v16 >> 1;
  while (2)
  {
    v155 = (v8 - *a1) >> 3;
    if (!v153)
    {
      v160 = 0;
      v159 = v8;
      v161 = 1;
      v162 = v155 + 1;
      if (v162 < 1)
      {
        goto LABEL_282;
      }

      goto LABEL_275;
    }

    v156 = v155 + v153;
    if (v155 + v153 < 1)
    {
      v157 = (a1 - 8 * ((511 - v156) >> 9));
      v158 = *v157;
      v159 = *v157 + 8 * (~(511 - v156) & 0x1FF);
      if (v159 == v8)
      {
        goto LABEL_307;
      }

LABEL_273:
      v160 = ((v157 - a1) << 6) - v155 + ((v159 - v158) >> 3);
      if (v152 < v160)
      {
        goto LABEL_269;
      }

      v161 = (2 * v160) | 1;
      v162 = v155 + v161;
      if (v162 >= 1)
      {
        goto LABEL_275;
      }

LABEL_282:
      v169 = 511 - v162;
      v163 = (a1 - 8 * (v169 >> 9));
      v164 = *v163;
      v165 = *v163 + 8 * (~v169 & 0x1FFLL);
      v166 = 2 * v160 + 2;
      if (v166 < v15)
      {
        goto LABEL_276;
      }

      goto LABEL_283;
    }

    v157 = (a1 + 8 * (v156 >> 9));
    v158 = *v157;
    v159 = *v157 + 8 * (v156 & 0x1FF);
    if (v159 != v8)
    {
      goto LABEL_273;
    }

LABEL_307:
    v160 = 0;
    v161 = 1;
    v162 = v155 + 1;
    if (v162 < 1)
    {
      goto LABEL_282;
    }

LABEL_275:
    v163 = (a1 + 8 * (v162 >> 9));
    v164 = *v163;
    v165 = *v163 + 8 * (v162 & 0x1FF);
    v166 = 2 * v160 + 2;
    if (v166 >= v15)
    {
LABEL_283:
      v166 = v161;
LABEL_284:
      v168 = *v159;
      if (*(*v165 + 8) < *(*v159 + 8))
      {
        goto LABEL_269;
      }

      goto LABEL_285;
    }

LABEL_276:
    v167 = (v165 - v164) >> 3;
    if (v167 < 0)
    {
      if (*(*v165 + 8) >= *(*(v163[-((510 - v167) >> 9)] + 8 * (~(510 - v167) & 0x1FF)) + 8))
      {
        goto LABEL_310;
      }

LABEL_278:
      v165 += 8;
      if (v165 - v164 == 4096)
      {
        v165 = v163[1];
        v168 = *v159;
        if (*(*v165 + 8) < *(*v159 + 8))
        {
          goto LABEL_269;
        }

        goto LABEL_285;
      }

      goto LABEL_284;
    }

    if (*(*v165 + 8) < *(*(*(v163 + (((v167 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v167 + 1) & 0x1FF)) + 8))
    {
      goto LABEL_278;
    }

LABEL_310:
    v166 = v161;
    v168 = *v159;
    if (*(*v165 + 8) < *(*v159 + 8))
    {
      goto LABEL_269;
    }

LABEL_285:
    *v159 = 0;
    v170 = *v165;
    while (2)
    {
      v171 = v159;
      v159 = v165;
      *v165 = 0;
      v172 = *v171;
      *v171 = v170;
      if (v172)
      {
        v173 = *v172;
        if (*v172)
        {
          *v172 = 0;
        }

        MEMORY[0x2743DA540](v172, 0x1080C40468F112ELL);
      }

      if (v152 >= v166)
      {
        v174 = (2 * v166) | 1;
        v175 = v174 + ((v8 - *a1) >> 3);
        if (v175 >= 1)
        {
          v176 = (a1 + 8 * (v175 >> 9));
          v177 = *v176;
          v165 = *v176 + 8 * (v175 & 0x1FF);
          v166 = 2 * v166 + 2;
          if (v166 >= v15)
          {
            goto LABEL_286;
          }

LABEL_297:
          v179 = (v165 - v177) >> 3;
          if (v179 < 0)
          {
            if (*(*v165 + 8) >= *(*(v176[-((510 - v179) >> 9)] + 8 * (~(510 - v179) & 0x1FF)) + 8))
            {
              goto LABEL_286;
            }

LABEL_301:
            v165 += 8;
            if (v165 - v177 == 4096)
            {
              v165 = v176[1];
            }
          }

          else
          {
            if (*(*v165 + 8) < *(*(*(v176 + (((v179 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v179 + 1) & 0x1FF)) + 8))
            {
              goto LABEL_301;
            }

LABEL_286:
            v166 = v174;
          }

          v170 = *v165;
          if (*(*v165 + 8) < *(v168 + 8))
          {
            break;
          }

          continue;
        }

        v178 = 511 - v175;
        v176 = (a1 - 8 * (v178 >> 9));
        v177 = *v176;
        v165 = *v176 + 8 * (~v178 & 0x1FF);
        v166 = 2 * v166 + 2;
        if (v166 < v15)
        {
          goto LABEL_297;
        }

        goto LABEL_286;
      }

      break;
    }

    v180 = *v159;
    *v159 = v168;
    if (v180)
    {
      v181 = *v180;
      if (*v180)
      {
        *v180 = 0;
      }

      MEMORY[0x2743DA540](v180, 0x1080C40468F112ELL);
    }

LABEL_269:
    v154 = v153-- <= 0;
    if (!v154)
    {
      continue;
    }

    break;
  }

  v182 = v263;
  v183 = v261 + v6 - *v263 - ((v8 - *a1) >> 3);
  if (v183 >= 2)
  {
LABEL_315:
    v184 = 0;
    v264 = *v8;
    *v8 = 0;
    v185 = v8;
    v186 = a1;
    while (1)
    {
      if (v184 == -1)
      {
        v187 = v185;
        v188 = -1;
        v184 = 0;
        if (v183 <= 0)
        {
          goto LABEL_327;
        }
      }

      else
      {
        v193 = v184 + 1 + ((v185 - *v186) >> 3);
        if (v193 < 1)
        {
          v197 = 511 - v193;
          v186 -= v197 >> 9;
          v187 = *v186 + 8 * (~v197 & 0x1FF);
          v188 = (2 * v184) | 1;
          v184 = 2 * v184 + 2;
          if (v184 >= v183)
          {
LABEL_327:
            v184 = v188;
LABEL_328:
            v194 = *v187;
            *v187 = 0;
            v192 = *v185;
            *v185 = v194;
            if (v192)
            {
              goto LABEL_329;
            }

            goto LABEL_317;
          }
        }

        else
        {
          v186 += v193 >> 9;
          v187 = *v186 + 8 * (v193 & 0x1FF);
          v188 = (2 * v184) | 1;
          v184 = 2 * v184 + 2;
          if (v184 >= v183)
          {
            goto LABEL_327;
          }
        }
      }

      v189 = (v187 - *v186) >> 3;
      if (v189 < 0)
      {
        if (*(*v187 + 8) < *(*(v186[-((510 - v189) >> 9)] + 8 * (~(510 - v189) & 0x1FF)) + 8))
        {
LABEL_322:
          v187 += 8;
          if (v187 - *v186 == 4096)
          {
            v190 = v186[1];
            ++v186;
            v187 = v190;
            v191 = *v190;
            *v190 = 0;
            v192 = *v185;
            *v185 = v191;
            if (v192)
            {
              goto LABEL_329;
            }

            goto LABEL_317;
          }

          goto LABEL_328;
        }
      }

      else if (*(*v187 + 8) < *(*(*(v186 + (((v189 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v189 + 1) & 0x1FF)) + 8))
      {
        goto LABEL_322;
      }

      v184 = v188;
      v196 = *v187;
      *v187 = 0;
      v192 = *v185;
      *v185 = v196;
      if (v192)
      {
LABEL_329:
        v195 = *v192;
        if (*v192)
        {
          *v192 = 0;
        }

        MEMORY[0x2743DA540](v192, 0x1080C40468F112ELL);
      }

LABEL_317:
      v185 = v187;
      if (v184 > ((v183 - 2) >> 1))
      {
        if (*v182 != v6)
        {
          v198 = v6 - 1;
          if (v187 != v6 - 1)
          {
            goto LABEL_338;
          }

LABEL_355:
          v215 = *v187;
          *v187 = v264;
          if (!v215)
          {
            goto LABEL_375;
          }

LABEL_372:
          v222 = *v215;
          if (*v215)
          {
            *v215 = 0;
          }

          MEMORY[0x2743DA540](v215, 0x1080C40468F112ELL);
          goto LABEL_375;
        }

        v198 = *(v182 - 1) + 511;
        if (v187 == v198)
        {
          goto LABEL_355;
        }

LABEL_338:
        v199 = *v198;
        *v198 = 0;
        v200 = *v187;
        *v187 = v199;
        if (v200)
        {
          v201 = *v200;
          if (*v200)
          {
            *v200 = 0;
          }

          MEMORY[0x2743DA540](v200, 0x1080C40468F112ELL);
        }

        v202 = v187 + 8;
        if (v202 - *v186 == 4096)
        {
          v203 = v186[1];
          ++v186;
          v202 = v203;
        }

        v204 = *v198;
        *v198 = v264;
        if (v204)
        {
          v205 = *v204;
          if (*v204)
          {
            *v204 = 0;
          }

          MEMORY[0x2743DA540](v204, 0x1080C40468F112ELL);
        }

        if (v202 != v8)
        {
          v206 = *v186;
          v207 = (v8 - *a1) >> 3;
          v208 = ((v202 - *v186) >> 3) + ((v186 - a1) << 6) - v207;
          v209 = v208 - 2;
          if (v208 >= 2)
          {
            v210 = v209 >> 1;
            v211 = v8;
            if (v209 >= 2)
            {
              v216 = v210 + v207;
              if ((v210 + v207) < 1)
              {
                v211 = *(a1 - 8 * ((511 - v216) >> 9)) + 8 * (~(511 - v216) & 0x1FF);
                if (v206 != v202)
                {
                  goto LABEL_352;
                }
              }

              else
              {
                v211 = *(a1 + ((v216 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v216 & 0x1FF);
                if (v206 != v202)
                {
                  goto LABEL_352;
                }
              }
            }

            else if (v206 != v202)
            {
LABEL_352:
              v214 = *(v202 - 8);
              v213 = v202 - 8;
              v212 = v214;
              if (*(*v211 + 8) >= *(v214 + 8))
              {
                goto LABEL_375;
              }

LABEL_360:
              *v213 = 0;
              v217 = *v211;
              do
              {
                v218 = v211;
                *v211 = 0;
                v219 = *v213;
                *v213 = v217;
                if (v219)
                {
                  v220 = *v219;
                  if (*v219)
                  {
                    *v219 = 0;
                  }

                  MEMORY[0x2743DA540](v219, 0x1080C40468F112ELL);
                }

                if (!v210)
                {
                  break;
                }

                v211 = v8;
                if (v210 >= 3)
                {
                  v221 = ((v210 - 1) >> 1) + ((v8 - *a1) >> 3);
                  if (v221 < 1)
                  {
                    v211 = *(a1 - 8 * ((511 - v221) >> 9)) + 8 * (~(511 - v221) & 0x1FF);
                  }

                  else
                  {
                    v211 = *(a1 + ((v221 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v221 & 0x1FF);
                  }
                }

                v217 = *v211;
                v213 = v218;
                v210 = (v210 - 1) >> 1;
              }

              while (*(*v211 + 8) < v212[1]);
              v215 = *v218;
              *v218 = v212;
              if (!v215)
              {
                goto LABEL_375;
              }

              goto LABEL_372;
            }

            v213 = *(v186 - 1) + 4088;
            v212 = *v213;
            if (*(*v211 + 8) >= *(*v213 + 8))
            {
              goto LABEL_375;
            }

            goto LABEL_360;
          }
        }

LABEL_375:
        if (v6 == *v182)
        {
          v223 = *--v182;
          v6 = (v223 + 4096);
        }

        --v6;
        v154 = v183-- <= 2;
        if (v154)
        {
          return;
        }

        goto LABEL_315;
      }
    }
  }
}

void std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RTCVideoFrameReorderQueue::append(RTCVideoFrame *,unsigned char)::$_0 &,std::__deque_iterator<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>*,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>&,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>**,long,512l>,0>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10)
{
  v10 = *a4;
  v11 = *a2;
  v12 = *(*a4 + 8);
  v13 = *(*a2 + 8);
  v14 = *a6;
  v15 = *(*a6 + 8);
  if (v12 < v13)
  {
    if (v15 >= v12)
    {
      *a2 = v10;
      *a4 = v11;
      v10 = *a6;
      if (*(*a6 + 8) >= v13)
      {
        goto LABEL_11;
      }

      *a4 = v10;
    }

    else
    {
      *a2 = v14;
    }

    *a6 = v11;
    v10 = v11;
LABEL_11:
    v17 = *a8;
    if (*(*a8 + 8) >= *(v10 + 8))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v15 >= v12)
  {
    v10 = *a6;
    v17 = *a8;
    if (*(*a8 + 8) >= *(v14 + 8))
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a4 = v14;
    *a6 = v10;
    v16 = *a2;
    if (*(*a4 + 8) >= *(*a2 + 8))
    {
      goto LABEL_11;
    }

    *a2 = *a4;
    *a4 = v16;
    v10 = *a6;
    v17 = *a8;
    if (*(*a8 + 8) >= *(*a6 + 8))
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a6 = v17;
  *a8 = v10;
  v18 = *a4;
  if (*(*a6 + 8) < *(*a4 + 8))
  {
    *a4 = *a6;
    *a6 = v18;
    v19 = *a2;
    if (*(*a4 + 8) < *(*a2 + 8))
    {
      *a2 = *a4;
      *a4 = v19;
    }
  }

LABEL_16:
  v20 = *a8;
  if (*(*a10 + 8) < *(*a8 + 8))
  {
    *a8 = *a10;
    *a10 = v20;
    v21 = *a6;
    if (*(*a8 + 8) < *(*a6 + 8))
    {
      *a6 = *a8;
      *a8 = v21;
      v22 = *a4;
      if (*(*a6 + 8) < *(*a4 + 8))
      {
        *a4 = *a6;
        *a6 = v22;
        v23 = *a2;
        if (*(*a4 + 8) < *(*a2 + 8))
        {
          *a2 = *a4;
          *a4 = v23;
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RTCVideoFrameReorderQueue::append(RTCVideoFrame *,unsigned char)::$_0 &,std::__deque_iterator<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>*,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>&,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>**,long,512l>>(char *a1, uint64_t *a2, char *a3, uint64_t *a4)
{
  if (a4 == a2)
  {
    return 1;
  }

  v5 = a4;
  v7 = *a3;
  v8 = a2 - *a1;
  v9 = v8 >> 3;
  v10 = ((a4 - *a3) >> 3) + ((a3 - a1) << 6) - (v8 >> 3);
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        if (v10 != 5)
        {
          goto LABEL_21;
        }

        if (v9 < 0)
        {
          v13 = &a1[-8 * ((510 - v9) >> 9)];
          v14 = (*v13 + 8 * (~(510 - v9) & 0x1FF));
          if (v8 != -8)
          {
            v30 = &a1[-8 * ((509 - v9) >> 9)];
            v31 = (*v30 + 8 * (~(509 - v9) & 0x1FF));
            if (v9 < 0xFFFFFFFFFFFFFFFELL)
            {
              v76 = 508 - v9;
              v33 = &a1[-8 * (v76 >> 9)];
              v34 = (*v33 + 8 * (~v76 & 0x1FF));
              if (v7 != v5)
              {
                goto LABEL_38;
              }

              goto LABEL_37;
            }

            v32 = 1;
LABEL_36:
            v33 = &a1[8 * (v32 >> 9)];
            v34 = (*v33 + 8 * (v32 & 0x1FF));
            if (v7 != v5)
            {
LABEL_38:
              std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RTCVideoFrameReorderQueue::append(RTCVideoFrame *,unsigned char)::$_0 &,std::__deque_iterator<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>*,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>&,std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>**,long,512l>,0>(a1, a2, v13, v14, v30, v31, v33, v34, a3, (v5 - 8));
              return 1;
            }

LABEL_37:
            v35 = *(a3 - 1);
            a3 -= 8;
            v5 = v35 + 4096;
            goto LABEL_38;
          }

          v15 = 1;
        }

        else
        {
          v13 = &a1[8 * ((v9 + 1) >> 9)];
          v14 = (*v13 + 8 * ((v9 + 1) & 0x1FF));
          v15 = v9 + 2;
        }

        v30 = &a1[8 * (v15 >> 9)];
        v31 = (*v30 + 8 * (v15 & 0x1FF));
        v32 = v9 + 3;
        goto LABEL_36;
      }

      if (v9 < 0)
      {
        v16 = *&a1[-8 * ((510 - v9) >> 9)] + 8 * (~(510 - v9) & 0x1FF);
        if (v8 != -8)
        {
          v36 = *&a1[-8 * ((509 - v9) >> 9)] + 8 * (~(509 - v9) & 0x1FF);
          if (v7 != a4)
          {
LABEL_43:
            v37 = *v16;
            v38 = *a2;
            v39 = *(*v16 + 8);
            v40 = *(*a2 + 8);
            v41 = *v36;
            v42 = *(*v36 + 8);
            if (v39 >= v40)
            {
              if (v42 >= v39)
              {
                v37 = *v36;
              }

              else
              {
                *v16 = v41;
                *v36 = v37;
                v43 = *a2;
                if (*(*v16 + 8) < *(*a2 + 8))
                {
                  *a2 = *v16;
                  *v16 = v43;
                  v37 = *v36;
                }
              }

              goto LABEL_88;
            }

            if (v42 >= v39)
            {
              *a2 = v37;
              *v16 = v38;
              v37 = *v36;
              if (*(*v36 + 8) >= v40)
              {
                goto LABEL_88;
              }

              *v16 = v37;
            }

            else
            {
              *a2 = v41;
            }

            *v36 = v38;
            v37 = v38;
LABEL_88:
            v72 = *(v5 - 8);
            if (*(v72 + 8) >= *(v37 + 8))
            {
              return 1;
            }

            *v36 = v72;
            *(v5 - 8) = v37;
            v73 = *v16;
            if (*(*v36 + 8) >= *(*v16 + 8))
            {
              return 1;
            }

            *v16 = *v36;
            *v36 = v73;
            goto LABEL_91;
          }

LABEL_42:
          v5 = *(a3 - 1) + 4096;
          goto LABEL_43;
        }

        v29 = 1;
      }

      else
      {
        v16 = *&a1[((v9 + 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v9 + 1) & 0x1FF);
        v29 = v9 + 2;
      }

      v36 = *&a1[(v29 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v29 & 0x1FF);
      if (v7 != a4)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v9 < 0)
    {
      v16 = *&a1[-8 * ((510 - v9) >> 9)] + 8 * (~(510 - v9) & 0x1FF);
      if (v7 != a4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v16 = *&a1[((v9 + 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v9 + 1) & 0x1FF);
      if (v7 != a4)
      {
LABEL_18:
        v17 = *v16;
        v18 = *a2;
        v19 = *(*v16 + 8);
        v20 = *(*a2 + 8);
        v21 = *(v5 - 8);
        v22 = *(v21 + 8);
        if (v19 < v20)
        {
          if (v22 >= v19)
          {
            *a2 = v17;
            *v16 = v18;
            v44 = *(v5 - 8);
            if (*(v44 + 8) < v20)
            {
              *v16 = v44;
              *(v5 - 8) = v18;
            }
          }

          else
          {
            *a2 = v21;
            *(v5 - 8) = v18;
          }

          return 1;
        }

        if (v22 >= v19)
        {
          return 1;
        }

        *v16 = v21;
        *(v5 - 8) = v17;
LABEL_91:
        v74 = *a2;
        if (*(*v16 + 8) < *(*a2 + 8))
        {
          *a2 = *v16;
          *v16 = v74;
        }

        return 1;
      }
    }

    v5 = *(a3 - 1) + 4096;
    goto LABEL_18;
  }

  if (v10 < 2)
  {
    return 1;
  }

  if (v10 == 2)
  {
    if (v7 == a4)
    {
      v5 = *(a3 - 1) + 4096;
    }

    v11 = *(v5 - 8);
    v12 = *a2;
    if (*(v11 + 8) < *(*a2 + 8))
    {
      *a2 = v11;
      *(v5 - 8) = v12;
    }

    return 1;
  }

LABEL_21:
  if (v9 <= -2)
  {
    v23 = &a1[-8 * ((509 - v9) >> 9)];
    v24 = *v23;
    v25 = *v23 + 8 * (~(509 - v9) & 0x1FF);
    v28 = 510 - v9;
  }

  else
  {
    v23 = &a1[8 * ((v9 + 2) >> 9)];
    v24 = *v23;
    v25 = *v23 + 8 * ((v9 + 2) & 0x1FF);
    v26 = __CFADD__(v9, 1);
    v27 = v9 + 1;
    if (!v26)
    {
      v45 = *&a1[(v27 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v27 & 0x1FF);
      goto LABEL_51;
    }

    v28 = 511;
  }

  v45 = *&a1[-8 * (v28 >> 9)] + 8 * (~v28 & 0x1FF);
LABEL_51:
  v46 = *v45;
  v47 = *a2;
  v48 = *(*v45 + 8);
  v49 = *(*a2 + 8);
  v50 = *v25;
  v51 = *(*v25 + 8);
  if (v48 >= v49)
  {
    if (v51 < v48)
    {
      *v45 = v50;
      *v25 = v46;
      v52 = *a2;
      if (*(*v45 + 8) < *(*a2 + 8))
      {
        *a2 = *v45;
        *v45 = v52;
      }
    }
  }

  else
  {
    if (v51 >= v48)
    {
      *a2 = v46;
      *v45 = v47;
      if (*(*v25 + 8) >= v49)
      {
        goto LABEL_60;
      }

      *v45 = *v25;
    }

    else
    {
      *a2 = v50;
    }

    *v25 = v47;
  }

LABEL_60:
  v53 = (v25 - v24) >> 3;
  if ((v53 & 0x8000000000000000) == 0)
  {
    v54 = v53 + 1;
    v55 = &v23[8 * ((v53 + 1) >> 9)];
    v56 = *v55;
    v57 = *v55 + 8 * (v54 & 0x1FF);
    if (v57 == a4)
    {
      return 1;
    }

    goto LABEL_64;
  }

  v58 = 510 - v53;
  v59 = ~v58;
  v55 = &v23[-8 * (v58 >> 9)];
  v56 = *v55;
  v57 = *v55 + 8 * (v59 & 0x1FF);
  if (v57 == a4)
  {
    return 1;
  }

LABEL_64:
  v60 = 0;
  while (1)
  {
    v61 = v57;
    v62 = v55;
    v63 = *v57;
    if (*(*v57 + 8) < *(*v25 + 8))
    {
      break;
    }

LABEL_82:
    v57 = v61 + 8;
    v55 = v62;
    if (v61 + 8 - v56 == 4096)
    {
      v55 = v62 + 1;
      v56 = v62[1];
      v57 = v56;
    }

    result = 1;
    v23 = v62;
    v25 = v61;
    if (v57 == v5)
    {
      return result;
    }
  }

  *v57 = 0;
  v64 = *v25;
  v65 = v57;
  while (1)
  {
    v67 = v25;
    *v25 = 0;
    v68 = *v65;
    *v65 = v64;
    if (v68)
    {
      v69 = *v68;
      if (*v68)
      {
        *v68 = 0;
      }

      MEMORY[0x2743DA540](v68, 0x1080C40468F112ELL);
    }

    if (v67 == a2)
    {
      break;
    }

    if (v67 == *v23)
    {
      v66 = *(v23 - 1);
      v23 -= 8;
      v25 = v66 + 4088;
      v64 = *(v66 + 4088);
      v65 = v67;
      if (*(v63 + 8) >= *(v64 + 8))
      {
        break;
      }
    }

    else
    {
      v25 = (v67 - 1);
      v64 = *(v67 - 1);
      v65 = v67;
      if (*(v63 + 8) >= *(v64 + 8))
      {
        break;
      }
    }
  }

  v70 = *v67;
  *v67 = v63;
  if (v70)
  {
    v71 = *v70;
    if (*v70)
    {
      *v70 = 0;
    }

    MEMORY[0x2743DA540](v70, 0x1080C40468F112ELL);
  }

  if (++v60 != 8)
  {
    v56 = *v62;
    goto LABEL_82;
  }

  v75 = v61 + 8;
  if (v61 + 8 - *v62 == 4096)
  {
    v75 = v62[1];
  }

  return v75 == v5;
}

webrtc::RtpConfig *webrtc::RtpConfig::RtpConfig(webrtc::RtpConfig *this, const webrtc::RtpConfig *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_29;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v7 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v7;
  }

  v8 = *(a2 + 72);
  *(this + 88) = *(a2 + 88);
  *(this + 72) = v8;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  v9 = *(a2 + 12);
  v10 = *(a2 + 13);
  if (v10 != v9)
  {
    if (((v10 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v11 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v11;
  }

  v12 = *(a2 + 36);
  *(this + 148) = *(a2 + 148);
  *(this + 36) = v12;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  v13 = *(a2 + 19);
  v14 = *(a2 + 20);
  if (v14 != v13)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v14 - v13) >> 4) < 0x333333333333334)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v15 = *(a2 + 11);
  *(this + 48) = *(a2 + 48);
  *(this + 11) = v15;
  v16 = *(a2 + 25);
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 25) = v16;
  *(this + 26) = 0;
  v18 = *(a2 + 26);
  v17 = *(a2 + 27);
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_29;
  }

  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  v20 = *(a2 + 29);
  v19 = *(a2 + 30);
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_29:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 64) = *(a2 + 64);
  v21 = (this + 264);
  if (*(a2 + 287) < 0)
  {
    std::string::__init_copy_ctor_external(v21, *(a2 + 33), *(a2 + 34));
  }

  else
  {
    v22 = *(a2 + 264);
    *(this + 35) = *(a2 + 35);
    *&v21->__r_.__value_.__l.__data_ = v22;
  }

  *(this + 288) = *(a2 + 288);
  return this;
}

void webrtc::RtpConfig::~RtpConfig(void **this)
{
  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  v2 = this[29];
  if (v2)
  {
    this[30] = v2;
    operator delete(v2);
  }

  v3 = this[26];
  if (v3)
  {
    this[27] = v3;
    operator delete(v3);
  }

  v4 = this[19];
  if (v4)
  {
    v5 = this[20];
    v6 = this[19];
    if (v5 == v4)
    {
LABEL_17:
      this[20] = v4;
      operator delete(v6);
      goto LABEL_18;
    }

    while (1)
    {
      if (*(v5 - 25) < 0)
      {
        operator delete(*(v5 - 6));
        if (*(v5 - 49) < 0)
        {
LABEL_15:
          operator delete(*(v5 - 9));
        }
      }

      else if (*(v5 - 49) < 0)
      {
        goto LABEL_15;
      }

      v5 -= 10;
      if (v5 == v4)
      {
        v6 = this[19];
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  v7 = this[12];
  if (v7)
  {
    v8 = this[13];
    v9 = this[12];
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 9);
        v8 -= 4;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = this[12];
    }

    this[13] = v7;
    operator delete(v9);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v11 = this[3];
  if (v11)
  {
    v12 = this[4];
    v13 = this[3];
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = this[3];
    }

    this[4] = v11;
    operator delete(v13);
  }

  v15 = *this;
  if (*this)
  {
    this[1] = v15;
    operator delete(v15);
  }
}

unint64_t webrtc::RtpConfig::ToString(webrtc::RtpConfig *this, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](this, a2, a3);
  v5 = v4;
  v175 = *MEMORY[0x277D85DE8];
  v6 = v170;
  v162 = v170;
  strcpy(v170, "{ssrcs: [");
  v163 = xmmword_273BA3440;
  v7 = *v3;
  if (*(v3 + 8) == *v3)
  {
    v12 = 2048;
    v11 = 9;
  }

  else
  {
    v8 = 0;
    do
    {
      webrtc::SimpleStringBuilder::AppendFormat(&v162, "%u", *(v7 + 4 * v8));
      v7 = *v3;
      v9 = (*(v3 + 8) - *v3) >> 2;
      if (v8 != v9 - 1)
      {
        if (v163 + ~*(&v163 + 1) >= 2uLL)
        {
          v10 = 2;
        }

        else
        {
          v10 = v163 + ~*(&v163 + 1);
        }

        memcpy(&v162[*(&v163 + 1)], ", ", v10);
        *(&v163 + 1) += v10;
        v162[*(&v163 + 1)] = 0;
        v7 = *v3;
        v9 = (*(v3 + 8) - *v3) >> 2;
      }

      ++v8;
    }

    while (v8 < v9);
    v11 = *(&v163 + 1);
    v12 = v163;
    v6 = v162;
  }

  v13 = v12 + ~v11;
  if (v13 >= 0xA)
  {
    v14 = 10;
  }

  else
  {
    v14 = v13;
  }

  memcpy(&v6[v11], "], rids: [", v14);
  *(&v163 + 1) += v14;
  v162[*(&v163 + 1)] = 0;
  v15 = *(v3 + 24);
  if (*(v3 + 32) != v15)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = (v15 + v16);
      v19 = *(v15 + v16 + 23);
      if ((v19 & 0x8000000000000000) != 0)
      {
        v20 = *v18;
        v19 = v18[1];
      }

      else
      {
        v20 = v18;
      }

      if (v19 >= v163 + ~*(&v163 + 1))
      {
        v21 = v163 + ~*(&v163 + 1);
      }

      else
      {
        v21 = v19;
      }

      memcpy(&v162[*(&v163 + 1)], v20, v21);
      *(&v163 + 1) += v21;
      v162[*(&v163 + 1)] = 0;
      v15 = *(v3 + 24);
      v22 = 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 32) - v15) >> 3);
      if (v17 != v22 - 1)
      {
        if (v163 + ~*(&v163 + 1) >= 2uLL)
        {
          v23 = 2;
        }

        else
        {
          v23 = v163 + ~*(&v163 + 1);
        }

        memcpy(&v162[*(&v163 + 1)], ", ", v23);
        *(&v163 + 1) += v23;
        v162[*(&v163 + 1)] = 0;
        v15 = *(v3 + 24);
        v22 = 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 32) - v15) >> 3);
      }

      ++v17;
      v16 += 24;
    }

    while (v17 < v22);
  }

  if (v163 + ~*(&v163 + 1) >= 9uLL)
  {
    v24 = 9;
  }

  else
  {
    v24 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], "], mid: '", v24);
  *(&v163 + 1) += v24;
  v162[*(&v163 + 1)] = 0;
  v25 = *(v3 + 71);
  if ((v25 & 0x8000000000000000) != 0)
  {
    v26 = *(v3 + 48);
    v25 = *(v3 + 56);
  }

  else
  {
    v26 = (v3 + 48);
  }

  if (v25 >= v163 + ~*(&v163 + 1))
  {
    v27 = v163 + ~*(&v163 + 1);
  }

  else
  {
    v27 = v25;
  }

  memcpy(&v162[*(&v163 + 1)], v26, v27);
  *(&v163 + 1) += v27;
  v162[*(&v163 + 1)] = 0;
  v28 = v163;
  v29 = *(&v163 + 1) + 1;
  memcpy(&v162[*(&v163 + 1)], "'", v163 != *(&v163 + 1) + 1);
  v30 = *(&v163 + 1);
  if (v28 != v29)
  {
    v30 = *(&v163 + 1) + 1;
  }

  *(&v163 + 1) = v30;
  v162[v30] = 0;
  if (v163 + ~*(&v163 + 1) >= 0xDuLL)
  {
    v31 = 13;
  }

  else
  {
    v31 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", rtcp_mode: ", v31);
  *(&v163 + 1) += v31;
  v162[*(&v163 + 1)] = 0;
  if (*(v3 + 72) == 1)
  {
    v32 = "RtcpMode::kCompound";
  }

  else
  {
    v32 = "RtcpMode::kReducedSize";
  }

  if (*(v3 + 72) == 1)
  {
    v33 = 19;
  }

  else
  {
    v33 = 22;
  }

  if (v33 >= v163 + ~*(&v163 + 1))
  {
    v34 = v163 + ~*(&v163 + 1);
  }

  else
  {
    v34 = v33;
  }

  memcpy(&v162[*(&v163 + 1)], v32, v34);
  *(&v163 + 1) += v34;
  v162[*(&v163 + 1)] = 0;
  if (v163 + ~*(&v163 + 1) >= 0x13uLL)
  {
    v35 = 19;
  }

  else
  {
    v35 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", max_packet_size: ", v35);
  *(&v163 + 1) += v35;
  v162[*(&v163 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v162, "%lu", *(v3 + 80));
  if (v163 + ~*(&v163 + 1) >= 0x16uLL)
  {
    v36 = 22;
  }

  else
  {
    v36 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", extmap-allow-mixed: ", v36);
  *(&v163 + 1) += v36;
  v162[*(&v163 + 1)] = 0;
  v37 = 4;
  if (*(v3 + 88))
  {
    v38 = "true";
  }

  else
  {
    v37 = 5;
    v38 = "false";
  }

  if (v37 >= v163 + ~*(&v163 + 1))
  {
    v39 = v163 + ~*(&v163 + 1);
  }

  else
  {
    v39 = v37;
  }

  memcpy(&v162[*(&v163 + 1)], v38, v39);
  *(&v163 + 1) += v39;
  v162[*(&v163 + 1)] = 0;
  if (v163 + ~*(&v163 + 1) >= 0xFuLL)
  {
    v40 = 15;
  }

  else
  {
    v40 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", extensions: [", v40);
  *(&v163 + 1) += v40;
  v162[*(&v163 + 1)] = 0;
  v41 = *(v3 + 96);
  if (*(v3 + 104) != v41)
  {
    v42 = 0;
    for (i = 0; i < v47; ++i)
    {
      webrtc::RtpExtension::ToString((v41 + v42), __p);
      v44 = v174;
      if ((v174 & 0x80u) == 0)
      {
        v45 = __p;
      }

      else
      {
        v45 = *__p;
      }

      if ((v174 & 0x80u) != 0)
      {
        v44 = *&__p[8];
      }

      if (v44 >= v163 + ~*(&v163 + 1))
      {
        v46 = v163 + ~*(&v163 + 1);
      }

      else
      {
        v46 = v44;
      }

      memcpy(&v162[*(&v163 + 1)], v45, v46);
      *(&v163 + 1) += v46;
      v162[*(&v163 + 1)] = 0;
      if (v174 < 0)
      {
        operator delete(*__p);
        v41 = *(v3 + 96);
        v47 = (*(v3 + 104) - v41) >> 5;
        if (i != v47 - 1)
        {
LABEL_81:
          if (v163 + ~*(&v163 + 1) >= 2uLL)
          {
            v48 = 2;
          }

          else
          {
            v48 = v163 + ~*(&v163 + 1);
          }

          memcpy(&v162[*(&v163 + 1)], ", ", v48);
          *(&v163 + 1) += v48;
          v162[*(&v163 + 1)] = 0;
          v41 = *(v3 + 96);
          v47 = (*(v3 + 104) - v41) >> 5;
        }
      }

      else
      {
        v41 = *(v3 + 96);
        v47 = (*(v3 + 104) - v41) >> 5;
        if (i != v47 - 1)
        {
          goto LABEL_81;
        }
      }

      v42 += 32;
    }
  }

  __p[0] = 93;
  v49 = v163;
  v50 = *(&v163 + 1) + 1;
  memcpy(&v162[*(&v163 + 1)], __p, v163 != *(&v163 + 1) + 1);
  v51 = *(&v163 + 1);
  if (v49 != v50)
  {
    v51 = *(&v163 + 1) + 1;
  }

  *(&v163 + 1) = v51;
  v162[v51] = 0;
  if (v163 + ~*(&v163 + 1) >= 8uLL)
  {
    v52 = 8;
  }

  else
  {
    v52 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", lntf: ", v52);
  *(&v163 + 1) += v52;
  v162[*(&v163 + 1)] = 0;
  if (*(v3 + 176))
  {
    v53 = "{enabled: true}";
  }

  else
  {
    v53 = "{enabled: false}";
  }

  if (*(v3 + 176))
  {
    v54 = 15;
  }

  else
  {
    v54 = 16;
  }

  v174 = v54;
  v55 = &__p[v54];
  if (v53 >= __p && v55 > v53)
  {
    goto LABEL_331;
  }

  memcpy(__p, v53, v54);
  *v55 = 0;
  v56 = v174;
  if ((v174 & 0x80u) == 0)
  {
    v57 = __p;
  }

  else
  {
    v57 = *__p;
  }

  if ((v174 & 0x80u) != 0)
  {
    v56 = *&__p[8];
  }

  if (v56 >= v163 + ~*(&v163 + 1))
  {
    v58 = v163 + ~*(&v163 + 1);
  }

  else
  {
    v58 = v56;
  }

  memcpy(&v162[*(&v163 + 1)], v57, v58);
  *(&v163 + 1) += v58;
  v162[*(&v163 + 1)] = 0;
  if (v174 < 0)
  {
    operator delete(*__p);
  }

  if (v163 + ~*(&v163 + 1) >= 0x19uLL)
  {
    v59 = 25;
  }

  else
  {
    v59 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", nack: {rtp_history_ms: ", v59);
  *(&v163 + 1) += v59;
  v162[*(&v163 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v162, "%d", *(v3 + 180));
  __p[0] = 125;
  v60 = v163;
  v61 = *(&v163 + 1) + 1;
  memcpy(&v162[*(&v163 + 1)], __p, v163 != *(&v163 + 1) + 1);
  v62 = *(&v163 + 1);
  if (v60 != v61)
  {
    v62 = *(&v163 + 1) + 1;
  }

  *(&v163 + 1) = v62;
  v162[v62] = 0;
  if (v163 + ~*(&v163 + 1) >= 0xAuLL)
  {
    v63 = 10;
  }

  else
  {
    v63 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", ulpfec: ", v63);
  *(&v163 + 1) += v63;
  v162[*(&v163 + 1)] = 0;
  __s = __p;
  strcpy(__p, "{ulpfec_payload_type: ");
  v172 = xmmword_273BA3450;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v3 + 184));
  if (v172 + ~*(&v172 + 1) >= 0x14uLL)
  {
    v64 = 20;
  }

  else
  {
    v64 = v172 + ~*(&v172 + 1);
  }

  memcpy(&__s[*(&v172 + 1)], ", red_payload_type: ", v64);
  *(&v172 + 1) += v64;
  __s[*(&v172 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v3 + 188));
  if (v172 + ~*(&v172 + 1) >= 0x18uLL)
  {
    v65 = 24;
  }

  else
  {
    v65 = v172 + ~*(&v172 + 1);
  }

  memcpy(&__s[*(&v172 + 1)], ", red_rtx_payload_type: ", v65);
  *(&v172 + 1) += v65;
  __s[*(&v172 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v3 + 192));
  LOBYTE(__src) = 125;
  v66 = *(&v172 + 1) + 1;
  v67 = v172;
  memcpy(&__s[*(&v172 + 1)], &__src, v172 != *(&v172 + 1) + 1);
  v68 = *(&v172 + 1);
  if (v67 != v66)
  {
    v68 = *(&v172 + 1) + 1;
  }

  *(&v172 + 1) = v68;
  __s[v68] = 0;
  if (!__s)
  {
    goto LABEL_331;
  }

  v69 = strlen(__s);
  if (v69 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_332;
  }

  if (v69 > 0x16)
  {
    operator new();
  }

  HIBYTE(v169) = v69;
  v70 = &__src + v69;
  if (&__src <= __s && v70 > __s)
  {
    goto LABEL_331;
  }

  if (v69)
  {
    memmove(&__src, __s, v69);
  }

  *v70 = 0;
  v71 = HIBYTE(v169);
  if (v169 >= 0)
  {
    p_src = &__src;
  }

  else
  {
    p_src = __src;
  }

  if (v169 < 0)
  {
    v71 = v169;
  }

  if (v71 >= v163 + ~*(&v163 + 1))
  {
    v73 = v163 + ~*(&v163 + 1);
  }

  else
  {
    v73 = v71;
  }

  memcpy(&v162[*(&v163 + 1)], p_src, v73);
  *(&v163 + 1) += v73;
  v162[*(&v163 + 1)] = 0;
  if (SHIBYTE(v169) < 0)
  {
    operator delete(__src);
  }

  if (v163 + ~*(&v163 + 1) >= 0x10uLL)
  {
    v74 = 16;
  }

  else
  {
    v74 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", payload_name: ", v74);
  *(&v163 + 1) += v74;
  v162[*(&v163 + 1)] = 0;
  v75 = *(v3 + 143);
  if ((v75 & 0x8000000000000000) != 0)
  {
    v76 = *(v3 + 120);
    v75 = *(v3 + 128);
  }

  else
  {
    v76 = (v3 + 120);
  }

  if (v75 >= v163 + ~*(&v163 + 1))
  {
    v77 = v163 + ~*(&v163 + 1);
  }

  else
  {
    v77 = v75;
  }

  memcpy(&v162[*(&v163 + 1)], v76, v77);
  *(&v163 + 1) += v77;
  v162[*(&v163 + 1)] = 0;
  if (v163 + ~*(&v163 + 1) >= 0x10uLL)
  {
    v78 = 16;
  }

  else
  {
    v78 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", payload_type: ", v78);
  *(&v163 + 1) += v78;
  v162[*(&v163 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v162, "%d", *(v3 + 144));
  if (v163 + ~*(&v163 + 1) >= 0xFuLL)
  {
    v79 = 15;
  }

  else
  {
    v79 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", raw_payload: ", v79);
  *(&v163 + 1) += v79;
  v162[*(&v163 + 1)] = 0;
  v80 = 4;
  if (*(v3 + 148))
  {
    v81 = "true";
  }

  else
  {
    v80 = 5;
    v81 = "false";
  }

  if (v80 >= v163 + ~*(&v163 + 1))
  {
    v82 = v163 + ~*(&v163 + 1);
  }

  else
  {
    v82 = v80;
  }

  memcpy(&v162[*(&v163 + 1)], v81, v82);
  *(&v163 + 1) += v82;
  v162[*(&v163 + 1)] = 0;
  if (v163 + ~*(&v163 + 1) >= 0x13uLL)
  {
    v83 = 19;
  }

  else
  {
    v83 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", stream_configs: [", v83);
  *(&v163 + 1) += v83;
  v162[*(&v163 + 1)] = 0;
  v84 = *(v3 + 152);
  if (*(v3 + 160) != v84)
  {
    v85 = 0;
    v86 = 40;
    do
    {
      v87 = v84 + v86;
      p_s = &__s;
      strcpy(&__s, "{ssrc: ");
      v167 = xmmword_273B8EBA0;
      webrtc::SimpleStringBuilder::AppendFormat(&p_s, "%u", *(v84 + v86 - 40));
      if (v167 + ~*(&v167 + 1) >= 7uLL)
      {
        v88 = 7;
      }

      else
      {
        v88 = v167 + ~*(&v167 + 1);
      }

      memcpy(&p_s[*(&v167 + 1)], ", rid: ", v88);
      *(&v167 + 1) += v88;
      p_s[*(&v167 + 1)] = 0;
      v89 = (v87 - 32);
      v90 = *(v87 - 9);
      if ((v90 & 0x8000000000000000) != 0)
      {
        v89 = *v89;
        v90 = *(v87 - 24);
      }

      if (v90 >= v167 + ~*(&v167 + 1))
      {
        v91 = v167 + ~*(&v167 + 1);
      }

      else
      {
        v91 = v90;
      }

      memcpy(&p_s[*(&v167 + 1)], v89, v91);
      *(&v167 + 1) += v91;
      p_s[*(&v167 + 1)] = 0;
      if (v167 + ~*(&v167 + 1) >= 0x10uLL)
      {
        v92 = 16;
      }

      else
      {
        v92 = v167 + ~*(&v167 + 1);
      }

      memcpy(&p_s[*(&v167 + 1)], ", payload_name: ", v92);
      *(&v167 + 1) += v92;
      p_s[*(&v167 + 1)] = 0;
      v93 = (v84 + v86 - 8);
      v94 = *(v84 + v86 + 15);
      if ((v94 & 0x8000000000000000) != 0)
      {
        v93 = *v93;
        v94 = *(v84 + v86);
      }

      if (v94 >= v167 + ~*(&v167 + 1))
      {
        v95 = v167 + ~*(&v167 + 1);
      }

      else
      {
        v95 = v94;
      }

      memcpy(&p_s[*(&v167 + 1)], v93, v95);
      *(&v167 + 1) += v95;
      p_s[*(&v167 + 1)] = 0;
      if (v167 + ~*(&v167 + 1) >= 0x10uLL)
      {
        v96 = 16;
      }

      else
      {
        v96 = v167 + ~*(&v167 + 1);
      }

      memcpy(&p_s[*(&v167 + 1)], ", payload_type: ", v96);
      *(&v167 + 1) += v96;
      p_s[*(&v167 + 1)] = 0;
      v97 = v84 + v86;
      webrtc::SimpleStringBuilder::AppendFormat(&p_s, "%d", *(v84 + v86 + 16));
      if (v167 + ~*(&v167 + 1) >= 0xFuLL)
      {
        v98 = 15;
      }

      else
      {
        v98 = v167 + ~*(&v167 + 1);
      }

      memcpy(&p_s[*(&v167 + 1)], ", raw_payload: ", v98);
      *(&v167 + 1) += v98;
      p_s[*(&v167 + 1)] = 0;
      v99 = 4;
      if (*(v97 + 20))
      {
        v100 = "true";
      }

      else
      {
        v99 = 5;
        v100 = "false";
      }

      if (v99 >= v167 + ~*(&v167 + 1))
      {
        v101 = v167 + ~*(&v167 + 1);
      }

      else
      {
        v101 = v99;
      }

      memcpy(&p_s[*(&v167 + 1)], v100, v101);
      *(&v167 + 1) += v101;
      p_s[*(&v167 + 1)] = 0;
      if (*(v97 + 32) == 1)
      {
        if (v167 + ~*(&v167 + 1) >= 7uLL)
        {
          v102 = 7;
        }

        else
        {
          v102 = v167 + ~*(&v167 + 1);
        }

        memcpy(&p_s[*(&v167 + 1)], ", rtx: ", v102);
        *(&v167 + 1) += v102;
        p_s[*(&v167 + 1)] = 0;
        if ((*(v97 + 32) & 1) == 0)
        {
          goto LABEL_331;
        }

        __src = __p;
        strcpy(__p, "{ssrc: ");
        v169 = xmmword_273B8EBA0;
        webrtc::SimpleStringBuilder::AppendFormat(&__src, "%u", *(v97 + 24));
        if (v169 + ~*(&v169 + 1) >= 0x10uLL)
        {
          v103 = 16;
        }

        else
        {
          v103 = v169 + ~*(&v169 + 1);
        }

        memcpy(__src + *(&v169 + 1), ", payload_type: ", v103);
        *(&v169 + 1) += v103;
        *(__src + *(&v169 + 1)) = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__src, "%d", *(v84 + v86 + 28));
        LOBYTE(v164[0]) = 125;
        v104 = v169;
        v105 = *(&v169 + 1) + 1;
        memcpy(__src + *(&v169 + 1), v164, v169 != *(&v169 + 1) + 1);
        v106 = *(&v169 + 1);
        if (v104 != v105)
        {
          v106 = *(&v169 + 1) + 1;
        }

        *(&v169 + 1) = v106;
        *(__src + v106) = 0;
        if (!__src)
        {
          goto LABEL_331;
        }

        v107 = strlen(__src);
        if (v107 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_332;
        }

        if (v107 > 0x16)
        {
          operator new();
        }

        v165 = v107;
        v108 = (v164 + v107);
        if (v164 <= __src && v108 > __src)
        {
          goto LABEL_331;
        }

        if (v107)
        {
          memmove(v164, __src, v107);
        }

        *v108 = 0;
        v109 = v165;
        if ((v165 & 0x80u) == 0)
        {
          v110 = v164;
        }

        else
        {
          v109 = v164[1];
          v110 = v164[0];
        }

        if (v109 >= v167 + ~*(&v167 + 1))
        {
          v111 = v167 + ~*(&v167 + 1);
        }

        else
        {
          v111 = v109;
        }

        memcpy(&p_s[*(&v167 + 1)], v110, v111);
        *(&v167 + 1) += v111;
        p_s[*(&v167 + 1)] = 0;
        if (v165 < 0)
        {
          operator delete(v164[0]);
        }
      }

      __p[0] = 125;
      v112 = v167;
      v113 = *(&v167 + 1) + 1;
      memcpy(&p_s[*(&v167 + 1)], __p, v167 != *(&v167 + 1) + 1);
      v114 = *(&v167 + 1);
      if (v112 != v113)
      {
        v114 = *(&v167 + 1) + 1;
      }

      *(&v167 + 1) = v114;
      p_s[v114] = 0;
      if (!p_s)
      {
        goto LABEL_331;
      }

      v115 = strlen(p_s);
      if (v115 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_332;
      }

      if (v115 > 0x16)
      {
        operator new();
      }

      v174 = v115;
      v116 = &__p[v115];
      if (__p <= p_s && v116 > p_s)
      {
        goto LABEL_331;
      }

      if (v115)
      {
        memmove(__p, p_s, v115);
      }

      *v116 = 0;
      v117 = v174;
      if ((v174 & 0x80u) == 0)
      {
        v118 = __p;
      }

      else
      {
        v117 = *&__p[8];
        v118 = *__p;
      }

      if (v117 >= v163 + ~*(&v163 + 1))
      {
        v119 = v163 + ~*(&v163 + 1);
      }

      else
      {
        v119 = v117;
      }

      memcpy(&v162[*(&v163 + 1)], v118, v119);
      *(&v163 + 1) += v119;
      v162[*(&v163 + 1)] = 0;
      if (v174 < 0)
      {
        operator delete(*__p);
      }

      v84 = *(v3 + 152);
      v120 = 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 160) - v84) >> 4);
      if (v85 != v120 - 1)
      {
        if (v163 + ~*(&v163 + 1) >= 2uLL)
        {
          v121 = 2;
        }

        else
        {
          v121 = v163 + ~*(&v163 + 1);
        }

        memcpy(&v162[*(&v163 + 1)], ", ", v121);
        *(&v163 + 1) += v121;
        v162[*(&v163 + 1)] = 0;
        v84 = *(v3 + 152);
        v120 = 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 160) - v84) >> 4);
      }

      ++v85;
      v86 += 80;
    }

    while (v85 < v120);
  }

  __p[0] = 93;
  v122 = v163;
  v123 = *(&v163 + 1) + 1;
  v124 = __p;
  memcpy(&v162[*(&v163 + 1)], __p, v163 != *(&v163 + 1) + 1);
  v125 = *(&v163 + 1);
  if (v122 != v123)
  {
    v125 = *(&v163 + 1) + 1;
  }

  *(&v163 + 1) = v125;
  v162[v125] = 0;
  if (v163 + ~*(&v163 + 1) >= 0x1AuLL)
  {
    v126 = 26;
  }

  else
  {
    v126 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", flexfec: {payload_type: ", v126);
  *(&v163 + 1) += v126;
  v162[*(&v163 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v162, "%d", *(v3 + 200));
  if (v163 + ~*(&v163 + 1) >= 8uLL)
  {
    v127 = 8;
  }

  else
  {
    v127 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", ssrc: ", v127);
  *(&v163 + 1) += v127;
  v162[*(&v163 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v162, "%u", *(v3 + 204));
  if (v163 + ~*(&v163 + 1) >= 0x1AuLL)
  {
    v128 = 26;
  }

  else
  {
    v128 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", protected_media_ssrcs: [", v128);
  *(&v163 + 1) += v128;
  v162[*(&v163 + 1)] = 0;
  v129 = *(v3 + 208);
  if (*(v3 + 216) != v129)
  {
    v130 = 0;
    do
    {
      webrtc::SimpleStringBuilder::AppendFormat(&v162, "%u", *(v129 + 4 * v130));
      v129 = *(v3 + 208);
      v131 = (*(v3 + 216) - v129) >> 2;
      if (v130 != v131 - 1)
      {
        if (v163 + ~*(&v163 + 1) >= 2uLL)
        {
          v132 = 2;
        }

        else
        {
          v132 = v163 + ~*(&v163 + 1);
        }

        memcpy(&v162[*(&v163 + 1)], ", ", v132);
        *(&v163 + 1) += v132;
        v162[*(&v163 + 1)] = 0;
        v129 = *(v3 + 208);
        v131 = (*(v3 + 216) - v129) >> 2;
      }

      ++v130;
    }

    while (v130 < v131);
  }

  if (v163 + ~*(&v163 + 1) >= 2uLL)
  {
    v133 = 2;
  }

  else
  {
    v133 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], "]}", v133);
  *(&v163 + 1) += v133;
  v162[*(&v163 + 1)] = 0;
  if (v163 + ~*(&v163 + 1) >= 7uLL)
  {
    v134 = 7;
  }

  else
  {
    v134 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", rtx: ", v134);
  *(&v163 + 1) += v134;
  v162[*(&v163 + 1)] = 0;
  __s = __p;
  strcpy(__p, "{ssrcs: [");
  v172 = xmmword_273BA3460;
  v135 = *(v3 + 232);
  if (*(v3 + 240) == v135)
  {
    v140 = 1024;
    v139 = 9;
  }

  else
  {
    v136 = 0;
    do
    {
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(v135 + 4 * v136));
      v135 = *(v3 + 232);
      v137 = (*(v3 + 240) - v135) >> 2;
      if (v136 != v137 - 1)
      {
        if (v172 + ~*(&v172 + 1) >= 2uLL)
        {
          v138 = 2;
        }

        else
        {
          v138 = v172 + ~*(&v172 + 1);
        }

        memcpy(&__s[*(&v172 + 1)], ", ", v138);
        *(&v172 + 1) += v138;
        __s[*(&v172 + 1)] = 0;
        v135 = *(v3 + 232);
        v137 = (*(v3 + 240) - v135) >> 2;
      }

      ++v136;
    }

    while (v136 < v137);
    v139 = *(&v172 + 1);
    v140 = v172;
    v124 = __s;
  }

  LOBYTE(__src) = 93;
  v141 = v139 + 1;
  memcpy(&v124[v139], &__src, v140 != v139 + 1);
  v142 = *(&v172 + 1);
  if (v140 != v141)
  {
    v142 = *(&v172 + 1) + 1;
  }

  *(&v172 + 1) = v142;
  __s[v142] = 0;
  if (v172 + ~*(&v172 + 1) >= 0x10uLL)
  {
    v143 = 16;
  }

  else
  {
    v143 = v172 + ~*(&v172 + 1);
  }

  memcpy(&__s[*(&v172 + 1)], ", payload_type: ", v143);
  *(&v172 + 1) += v143;
  __s[*(&v172 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v3 + 256));
  LOBYTE(__src) = 125;
  v144 = *(&v172 + 1) + 1;
  v145 = v172;
  memcpy(&__s[*(&v172 + 1)], &__src, v172 != *(&v172 + 1) + 1);
  v146 = *(&v172 + 1);
  if (v145 != v144)
  {
    v146 = *(&v172 + 1) + 1;
  }

  *(&v172 + 1) = v146;
  __s[v146] = 0;
  if (!__s)
  {
    goto LABEL_331;
  }

  v147 = strlen(__s);
  if (v147 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_332;
  }

  if (v147 > 0x16)
  {
    operator new();
  }

  HIBYTE(v169) = v147;
  v148 = &__src + v147;
  if (&__src <= __s && v148 > __s)
  {
    goto LABEL_331;
  }

  if (v147)
  {
    memmove(&__src, __s, v147);
  }

  *v148 = 0;
  v149 = HIBYTE(v169);
  if (v169 >= 0)
  {
    v150 = &__src;
  }

  else
  {
    v150 = __src;
  }

  if (v169 < 0)
  {
    v149 = v169;
  }

  if (v149 >= v163 + ~*(&v163 + 1))
  {
    v151 = v163 + ~*(&v163 + 1);
  }

  else
  {
    v151 = v149;
  }

  memcpy(&v162[*(&v163 + 1)], v150, v151);
  *(&v163 + 1) += v151;
  v162[*(&v163 + 1)] = 0;
  if (SHIBYTE(v169) < 0)
  {
    operator delete(__src);
  }

  if (v163 + ~*(&v163 + 1) >= 0xAuLL)
  {
    v152 = 10;
  }

  else
  {
    v152 = v163 + ~*(&v163 + 1);
  }

  memcpy(&v162[*(&v163 + 1)], ", c_name: ", v152);
  *(&v163 + 1) += v152;
  v162[*(&v163 + 1)] = 0;
  v153 = *(v3 + 287);
  if ((v153 & 0x8000000000000000) != 0)
  {
    v154 = *(v3 + 264);
    v153 = *(v3 + 272);
  }

  else
  {
    v154 = (v3 + 264);
  }

  if (v153 >= v163 + ~*(&v163 + 1))
  {
    v155 = v163 + ~*(&v163 + 1);
  }

  else
  {
    v155 = v153;
  }

  memcpy(&v162[*(&v163 + 1)], v154, v155);
  *(&v163 + 1) += v155;
  v162[*(&v163 + 1)] = 0;
  __p[0] = 125;
  v156 = v163;
  v157 = *(&v163 + 1) + 1;
  memcpy(&v162[*(&v163 + 1)], __p, v163 != *(&v163 + 1) + 1);
  v158 = *(&v163 + 1);
  if (v156 != v157)
  {
    v158 = *(&v163 + 1) + 1;
  }

  *(&v163 + 1) = v158;
  v162[v158] = 0;
  v159 = v162;
  if (!v162)
  {
    goto LABEL_331;
  }

  result = strlen(v162);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_332;
  }

  if (result > 0x16)
  {
    operator new();
  }

  v5[23] = result;
  v161 = &v5[result];
  if (v5 <= v159 && v161 > v159)
  {
LABEL_331:
    __break(1u);
LABEL_332:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(v5, v159, result);
  }

  *v161 = 0;
  return result;
}

void webrtc::RtpConfig::GetStreamConfig(webrtc::RtpConfig *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 19);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 20) - v4) >> 4) > a2)
  {
    v5 = v4 + 80 * a2;
    *a3 = *v5;
    v6 = (a3 + 8);
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v6, *(v5 + 8), *(v5 + 16));
      if ((*(v5 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *&v6->__r_.__value_.__l.__data_ = v7;
      if ((*(v5 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v8 = *(v5 + 32);
        *(a3 + 48) = *(v5 + 48);
        *(a3 + 32) = v8;
LABEL_18:
        v17 = *(v5 + 56);
        *(a3 + 72) = *(v5 + 72);
        *(a3 + 56) = v17;
        return;
      }
    }

    std::string::__init_copy_ctor_external((a3 + 32), *(v5 + 32), *(v5 + 40));
    goto LABEL_18;
  }

  *(a3 + 8) = 0u;
  v9 = (a3 + 8);
  *a3 = 0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = -1;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  if (a2 >= (*(this + 1) - *this) >> 2)
  {
LABEL_31:
    __break(1u);
    return;
  }

  *a3 = *(*this + 4 * a2);
  v10 = *(this + 3);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - v10) >> 3) > a2;
  v12 = (v10 + 24 * a2);
  if (v11 && v9 != v12)
  {
    if (*(v12 + 23) < 0)
    {
      v24 = this;
      v25 = a2;
      std::string::__assign_no_alias<true>((a3 + 8), *v12, *(v12 + 1));
      this = v24;
      a2 = v25;
      v15 = v24 + 120;
      v16 = (a3 + 32);
      if ((a3 + 32) == (v24 + 120))
      {
        goto LABEL_26;
      }

      goto LABEL_13;
    }

    v14 = *v12;
    *(a3 + 24) = *(v12 + 2);
    *v9 = v14;
  }

  v15 = this + 120;
  v16 = (a3 + 32);
  if ((a3 + 32) == (this + 120))
  {
    goto LABEL_26;
  }

LABEL_13:
  if (*(a3 + 55) < 0)
  {
    if (*(this + 143) >= 0)
    {
      v18 = *(this + 143);
    }

    else
    {
      v15 = *(this + 15);
      v18 = *(this + 16);
    }

    v19 = this;
    v20 = a2;
    std::string::__assign_no_alias<false>(v16, v15, v18);
  }

  else
  {
    if ((*(this + 143) & 0x80) == 0)
    {
      *&v16->__r_.__value_.__l.__data_ = *v15;
      v16->__r_.__value_.__r.__words[2] = *(v15 + 2);
      goto LABEL_26;
    }

    v19 = this;
    v20 = a2;
    std::string::__assign_no_alias<true>(v16, *(this + 15), *(this + 16));
  }

  this = v19;
  a2 = v20;
LABEL_26:
  *(a3 + 56) = *(this + 36);
  *(a3 + 60) = *(this + 148);
  v21 = *(this + 29);
  v22 = *(this + 30);
  if (v21 != v22)
  {
    *(a3 + 64) = 0xFFFFFFFF00000000;
    *(a3 + 72) = 1;
    if (a2 < (v22 - v21) >> 2)
    {
      v23 = *(this + 64);
      *(a3 + 64) = *(v21 + 4 * a2);
      *(a3 + 68) = v23;
      return;
    }

    goto LABEL_31;
  }
}

unint64_t webrtc::RtpDemuxerCriteria::RtpDemuxerCriteria(unint64_t a1, _BYTE *a2, size_t a3, _BYTE *__src, size_t __len)
{
  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  *(a1 + 23) = a3;
  v8 = (a1 + a3);
  if (a1 <= a2 && v8 > a2)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    memmove(a1, a2, a3);
  }

  *v8 = 0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  *(a1 + 47) = __len;
  v9 = (a1 + 24 + __len);
  if (a1 + 24 <= __src && v9 > __src)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__len)
  {
    memmove((a1 + 24), __src, __len);
  }

  *v9 = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  return a1;
}

void webrtc::RtpDemuxerCriteria::ToString(webrtc::RtpDemuxerCriteria *this@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  memset(&v64, 0, sizeof(v64));
  if (&v64 <= "{mid: " && v64.__r_.__value_.__r.__words + 6 > "{mid: ")
  {
    goto LABEL_190;
  }

  qmemcpy(&v64, "{mid: ", 6);
  *(&v64.__r_.__value_.__s + 23) = 6;
  if (*(this + 23) < 0)
  {
    a2 = *(this + 1);
    if (a2)
    {
      std::string::__init_copy_ctor_external(&v63, *this, a2);
      goto LABEL_13;
    }
  }

  else if (*(this + 23))
  {
    v63 = *this;
    goto LABEL_13;
  }

  *(&v63.__r_.__value_.__s + 23) = 7;
  if (&v63 <= "<empty>" && v63.__r_.__value_.__r.__words + 7 > "<empty>")
  {
    goto LABEL_190;
  }

  strcpy(&v63, "<empty>");
LABEL_13:
  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v63;
  }

  else
  {
    v6 = v63.__r_.__value_.__r.__words[0];
  }

  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v63.__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = size == 0;
  }

  if (!v8)
  {
    goto LABEL_190;
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v64.__r_.__value_.__l.__size_;
  }

  if (v9 - v10 >= size)
  {
    if (size)
    {
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v64;
      }

      else
      {
        v11 = v64.__r_.__value_.__r.__words[0];
      }

      if ((size & 0x8000000000000000) != 0)
      {
        goto LABEL_190;
      }

      v12 = v11 + v10;
      if ((v11 + v10) <= v6 && &v12[size] > v6)
      {
        goto LABEL_190;
      }

      v13 = size;
      memmove(v12, v6, size);
      v14 = v10 + v13;
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        v64.__r_.__value_.__l.__size_ = v10 + v13;
      }

      else
      {
        *(&v64.__r_.__value_.__s + 23) = v14 & 0x7F;
      }

      v11->__r_.__value_.__s.__data_[v14] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v64, v9, v10 + size - v9, v10, v10, 0, size, v6);
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v64.__r_.__value_.__l.__size_;
  }

  if (v15 - v16 >= 8)
  {
    v18 = &v64;
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v64.__r_.__value_.__r.__words[0];
    }

    v19 = (v18->__r_.__value_.__r.__words + v16);
    if (v18 + v16 <= ", rsid: " && v19 + 1 > ", rsid: ")
    {
      goto LABEL_190;
    }

    *v19 = 0x203A64697372202CLL;
    v20 = v16 + 8;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      v64.__r_.__value_.__l.__size_ = v16 + 8;
      v18->__r_.__value_.__s.__data_[v20] = 0;
      v17 = *(this + 47);
      if (v17 < 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      *(&v64.__r_.__value_.__s + 23) = v20 & 0x7F;
      v18->__r_.__value_.__s.__data_[v20] = 0;
      v17 = *(this + 47);
      if (v17 < 0)
      {
        goto LABEL_59;
      }
    }

LABEL_51:
    if (v17)
    {
      __p = *(this + 1);
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  std::string::__grow_by_and_replace(&v64, v15, v16 - v15 + 8, v16, v16, 0, 8uLL, ", rsid: ");
  v17 = *(this + 47);
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_59:
  a2 = *(this + 4);
  if (a2)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 3), a2);
    goto LABEL_64;
  }

LABEL_61:
  *(&__p.__r_.__value_.__s + 23) = 7;
  if (&__p <= "<empty>" && __p.__r_.__value_.__r.__words + 7 > "<empty>")
  {
    goto LABEL_190;
  }

  strcpy(&__p, "<empty>");
LABEL_64:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  if (p_p || !v22)
  {
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = 22;
    }

    else
    {
      v23 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v64.__r_.__value_.__l.__size_;
    }

    if (v23 - v24 < v22)
    {
      std::string::__grow_by_and_replace(&v64, v23, v24 + v22 - v23, v24, v24, 0, v22, p_p);
      goto LABEL_93;
    }

    if (!v22)
    {
LABEL_93:
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = 22;
      }

      else
      {
        v29 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v64.__r_.__value_.__l.__size_;
      }

      if (v29 - v30 < 0xA)
      {
        std::string::__grow_by_and_replace(&v64, v29, v30 - v29 + 10, v30, v30, 0, 0xAuLL, ", ssrcs: [");
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_101;
        }

LABEL_112:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_102:
          v31 = *(this + 6);
          i = *(this + 7);
          if (v31 != i)
          {
            goto LABEL_117;
          }

          goto LABEL_135;
        }

LABEL_113:
        operator delete(v63.__r_.__value_.__l.__data_);
        v31 = *(this + 6);
        for (i = *(this + 7); v31 != i; ++v31)
        {
LABEL_117:
          v36 = webrtc::StringBuilder::operator<<(&v64, *v31, a2);
          v37 = SHIBYTE(v36->__r_.__value_.__r.__words[2]);
          if (v37 >= 0)
          {
            v38 = 22;
          }

          else
          {
            v38 = (v36->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if (v37 >= 0)
          {
            v39 = HIBYTE(v36->__r_.__value_.__r.__words[2]);
          }

          else
          {
            v39 = v36->__r_.__value_.__l.__size_;
          }

          if (v38 - v39 < 2)
          {
            std::string::__grow_by_and_replace(v36, v38, v39 - v38 + 2, v39, v39, 0, 2uLL, ", ");
          }

          else
          {
            if (v37 >= 0)
            {
              v40 = v36;
            }

            else
            {
              v40 = v36->__r_.__value_.__r.__words[0];
            }

            if (v40 + v39 <= ", " && &v40->__r_.__value_.__s.__data_[v39 + 2] > ", ")
            {
              goto LABEL_190;
            }

            *(&v40->__r_.__value_.__l.__data_ + v39) = 8236;
            v42 = v39 + 2;
            if (SHIBYTE(v36->__r_.__value_.__r.__words[2]) < 0)
            {
              v36->__r_.__value_.__l.__size_ = v42;
            }

            else
            {
              *(&v36->__r_.__value_.__s + 23) = v42 & 0x7F;
            }

            v40->__r_.__value_.__s.__data_[v42] = 0;
          }
        }

LABEL_135:
        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = 22;
        }

        else
        {
          v43 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44 = v64.__r_.__value_.__l.__size_;
        }

        if (v43 - v44 >= 0x14)
        {
          v47 = &v64;
          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v47 = v64.__r_.__value_.__r.__words[0];
          }

          v48 = v47 + v44;
          if (v47 + v44 <= "], payload_types = [" && v48 + 20 > "], payload_types = [")
          {
            goto LABEL_190;
          }

          *(v48 + 4) = 1528839456;
          *v48 = *"], payload_types = [";
          v49 = v44 + 20;
          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            v64.__r_.__value_.__l.__size_ = v44 + 20;
            v47->__r_.__value_.__s.__data_[v49] = 0;
            v45 = *(this + 9);
            for (j = *(this + 10); v45 != j; ++v45)
            {
LABEL_155:
              v50 = webrtc::StringBuilder::operator<<(&v64, *v45, a2);
              v51 = SHIBYTE(v50->__r_.__value_.__r.__words[2]);
              if (v51 >= 0)
              {
                v52 = 22;
              }

              else
              {
                v52 = (v50->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if (v51 >= 0)
              {
                v53 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
              }

              else
              {
                v53 = v50->__r_.__value_.__l.__size_;
              }

              if (v52 - v53 < 2)
              {
                std::string::__grow_by_and_replace(v50, v52, v53 - v52 + 2, v53, v53, 0, 2uLL, ", ");
              }

              else
              {
                if (v51 >= 0)
                {
                  v54 = v50;
                }

                else
                {
                  v54 = v50->__r_.__value_.__r.__words[0];
                }

                if (v54 + v53 <= ", " && &v54->__r_.__value_.__s.__data_[v53 + 2] > ", ")
                {
                  goto LABEL_190;
                }

                *(&v54->__r_.__value_.__l.__data_ + v53) = 8236;
                v56 = v53 + 2;
                if (SHIBYTE(v50->__r_.__value_.__r.__words[2]) < 0)
                {
                  v50->__r_.__value_.__l.__size_ = v56;
                }

                else
                {
                  *(&v50->__r_.__value_.__s + 23) = v56 & 0x7F;
                }

                v54->__r_.__value_.__s.__data_[v56] = 0;
              }
            }
          }

          else
          {
            *(&v64.__r_.__value_.__s + 23) = v49 & 0x7F;
            v47->__r_.__value_.__s.__data_[v49] = 0;
            v45 = *(this + 9);
            j = *(this + 10);
            if (v45 != j)
            {
              goto LABEL_155;
            }
          }
        }

        else
        {
          std::string::__grow_by_and_replace(&v64, v43, v44 - v43 + 20, v44, v44, 0, 0x14uLL, "], payload_types = [");
          v45 = *(this + 9);
          j = *(this + 10);
          if (v45 != j)
          {
            goto LABEL_155;
          }
        }

        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = 22;
        }

        else
        {
          v57 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v58 = v64.__r_.__value_.__l.__size_;
        }

        if (v57 - v58 >= 2)
        {
          v59 = &v64;
          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v59 = v64.__r_.__value_.__r.__words[0];
          }

          v60 = (v59 + v58);
          if (v59 + v58 <= "]}" && v60 + 1 > "]}")
          {
            goto LABEL_190;
          }

          *v60 = 32093;
          v61 = v58 + 2;
          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            v64.__r_.__value_.__l.__size_ = v58 + 2;
          }

          else
          {
            *(&v64.__r_.__value_.__s + 23) = v61 & 0x7F;
          }

          v59->__r_.__value_.__s.__data_[v61] = 0;
        }

        else
        {
          std::string::__grow_by_and_replace(&v64, v57, v58 - v57 + 2, v58, v58, 0, 2uLL, "]}");
        }

        *a3 = v64;
        return;
      }

      v33 = &v64;
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = v64.__r_.__value_.__r.__words[0];
      }

      v34 = v33 + v30;
      if (v33 + v30 <= ", ssrcs: [" && v34 + 10 > ", ssrcs: [")
      {
        goto LABEL_190;
      }

      *(v34 + 4) = 23328;
      *v34 = *", ssrcs: [";
      v35 = v30 + 10;
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        v64.__r_.__value_.__l.__size_ = v30 + 10;
        v33->__r_.__value_.__s.__data_[v35] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_112;
        }
      }

      else
      {
        *(&v64.__r_.__value_.__s + 23) = v35 & 0x7F;
        v33->__r_.__value_.__s.__data_[v35] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_112;
        }
      }

LABEL_101:
      if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_113;
    }

    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v64;
    }

    else
    {
      v25 = v64.__r_.__value_.__r.__words[0];
    }

    if ((v22 & 0x8000000000000000) == 0)
    {
      v26 = v25 + v24;
      if ((v25 + v24) > p_p || &v26[v22] <= p_p)
      {
        v27 = v22;
        memmove(v26, p_p, v22);
        v28 = v24 + v27;
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          v64.__r_.__value_.__l.__size_ = v24 + v27;
        }

        else
        {
          *(&v64.__r_.__value_.__s + 23) = v28 & 0x7F;
        }

        v25->__r_.__value_.__s.__data_[v28] = 0;
        goto LABEL_93;
      }
    }
  }

LABEL_190:
  __break(1u);
}

void webrtc::RtpDemuxer::DescribePacket(uint64_t a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  memset(&v81, 0, sizeof(v81));
  if (&v81 <= "PT=" && v81.__r_.__value_.__r.__words + 3 > "PT=")
  {
    goto LABEL_189;
  }

  qmemcpy(&v81, "PT=", 3);
  *(&v81.__r_.__value_.__s + 23) = 3;
  v6 = webrtc::StringBuilder::operator<<(&v81, *(a1 + 1), a2);
  v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  if (v8 >= 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = (v6->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v8 >= 0)
  {
    size = HIBYTE(v6->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v6->__r_.__value_.__l.__size_;
  }

  if (v9 - size >= 6)
  {
    if (v8 >= 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = v6->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (v14 + size <= " SSRC=" && v14->__r_.__value_.__r.__words + size + 6 > " SSRC=")
    {
      goto LABEL_189;
    }

    *(v15 + 4) = 15683;
    *v15 = 1381192480;
    v17 = size + 6;
    if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
    {
      v6->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&v6->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v14->__r_.__value_.__s.__data_[v17] = 0;
    webrtc::StringBuilder::operator<<(v6, *(a1 + 12), v7);
    memset(&v80, 0, sizeof(v80));
    v13 = *(a1 + 48);
    if (!*(a1 + 48))
    {
      goto LABEL_28;
    }
  }

  else
  {
    v11 = v6;
    std::string::__grow_by_and_replace(v6, v9, size - v9 + 6, size, size, 0, 6uLL, " SSRC=");
    webrtc::StringBuilder::operator<<(v11, *(a1 + 12), v12);
    memset(&v80, 0, sizeof(v80));
    v13 = *(a1 + 48);
    if (!*(a1 + 48))
    {
      goto LABEL_28;
    }
  }

  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  if (v18 != v19)
  {
    while (*v18 != v13)
    {
      v18 += 4;
      if (v18 == v19)
      {
        goto LABEL_28;
      }
    }

    v24 = *(a1 + 88);
    if (v24)
    {
      v25 = *(v24 + 16) + *(a1 + 96);
      v26 = v18[1];
      if (!v18[1])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v25 = 0;
      v26 = v18[1];
      if (!v18[1])
      {
        goto LABEL_28;
      }
    }

    v33 = *(v18 + 1);
    if (*(v25 + v33))
    {
      v34 = strnlen((v25 + v33), v26);
      std::string::__assign_external(&v80, (v25 + v33), v34);
      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = 22;
      }

      else
      {
        v35 = (v81.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v81.__r_.__value_.__l.__size_;
      }

      if (v35 - v36 >= 5)
      {
        v45 = &v81;
        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v45 = v81.__r_.__value_.__r.__words[0];
        }

        v46 = v45 + v36;
        if (v45 + v36 <= " MID=" && v46 + 5 > " MID=")
        {
          goto LABEL_189;
        }

        v46[4] = 61;
        *v46 = 1145654560;
        v47 = v36 + 5;
        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          v81.__r_.__value_.__l.__size_ = v36 + 5;
        }

        else
        {
          *(&v81.__r_.__value_.__s + 23) = v47 & 0x7F;
        }

        v45->__r_.__value_.__s.__data_[v47] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v81, v35, v36 - v35 + 5, v36, v36, 0, 5uLL, " MID=");
      }

      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v80;
      }

      else
      {
        v54 = v80.__r_.__value_.__r.__words[0];
      }

      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v55 = v80.__r_.__value_.__l.__size_;
      }

      if (!v54 && v55)
      {
        goto LABEL_189;
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = 22;
      }

      else
      {
        v56 = (v81.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = v81.__r_.__value_.__l.__size_;
      }

      if (v56 - v57 >= v55)
      {
        if (v55)
        {
          if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = &v81;
          }

          else
          {
            v58 = v81.__r_.__value_.__r.__words[0];
          }

          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_189;
          }

          v59 = v58 + v57;
          if ((v58 + v57) <= v54 && &v59[v55] > v54)
          {
            goto LABEL_189;
          }

          v60 = v55;
          memmove(v59, v54, v55);
          v61 = v57 + v60;
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            v81.__r_.__value_.__l.__size_ = v57 + v60;
          }

          else
          {
            *(&v81.__r_.__value_.__s + 23) = v61 & 0x7F;
          }

          v58->__r_.__value_.__s.__data_[v61] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v81, v56, v57 + v55 - v56, v57, v57, 0, v55, v54);
      }
    }
  }

LABEL_28:
  memset(&v79, 0, sizeof(v79));
  if (*(a1 + 46))
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    if (v20 != v21)
    {
      while (*v20 != *(a1 + 46))
      {
        v20 += 4;
        if (v20 == v21)
        {
          goto LABEL_32;
        }
      }

      v27 = *(a1 + 88);
      if (v27)
      {
        v28 = *(v27 + 16) + *(a1 + 96);
        v29 = v20[1];
        if (!v20[1])
        {
          goto LABEL_32;
        }
      }

      else
      {
        v28 = 0;
        v29 = v20[1];
        if (!v20[1])
        {
          goto LABEL_32;
        }
      }

      v37 = *(v20 + 1);
      if (*(v28 + v37))
      {
        v38 = strnlen((v28 + v37), v29);
        std::string::__assign_external(&v79, (v28 + v37), v38);
        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = 22;
        }

        else
        {
          v39 = (v81.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v40 = v81.__r_.__value_.__l.__size_;
        }

        if (v39 - v40 >= 6)
        {
          v48 = &v81;
          if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v48 = v81.__r_.__value_.__r.__words[0];
          }

          v49 = v48 + v40;
          if (v48 + v40 <= " RSID=" && v49 + 6 > " RSID=")
          {
            goto LABEL_189;
          }

          *(v49 + 2) = 15684;
          *v49 = 1230197280;
          v50 = v40 + 6;
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            v81.__r_.__value_.__l.__size_ = v40 + 6;
          }

          else
          {
            *(&v81.__r_.__value_.__s + 23) = v50 & 0x7F;
          }

          v48->__r_.__value_.__s.__data_[v50] = 0;
        }

        else
        {
          std::string::__grow_by_and_replace(&v81, v39, v40 - v39 + 6, v40, v40, 0, 6uLL, " RSID=");
        }

        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v79;
        }

        else
        {
          v62 = v79.__r_.__value_.__r.__words[0];
        }

        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v79.__r_.__value_.__l.__size_;
        }

        if (!v62 && v63)
        {
          goto LABEL_189;
        }

        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = 22;
        }

        else
        {
          v64 = (v81.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v65 = v81.__r_.__value_.__l.__size_;
        }

        if (v64 - v65 >= v63)
        {
          if (v63)
          {
            if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v66 = &v81;
            }

            else
            {
              v66 = v81.__r_.__value_.__r.__words[0];
            }

            if ((v63 & 0x8000000000000000) != 0)
            {
              goto LABEL_189;
            }

            v67 = v66 + v65;
            if ((v66 + v65) <= v62 && &v67[v63] > v62)
            {
              goto LABEL_189;
            }

            v68 = v63;
            memmove(v67, v62, v63);
            v69 = v65 + v68;
            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              v81.__r_.__value_.__l.__size_ = v65 + v68;
            }

            else
            {
              *(&v81.__r_.__value_.__s + 23) = v69 & 0x7F;
            }

            v66->__r_.__value_.__s.__data_[v69] = 0;
          }
        }

        else
        {
          std::string::__grow_by_and_replace(&v81, v64, v65 + v63 - v64, v65, v65, 0, v63, v62);
        }
      }
    }
  }

LABEL_32:
  memset(&__p, 0, sizeof(__p));
  if (!*(a1 + 47))
  {
    goto LABEL_36;
  }

  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  if (v22 == v23)
  {
    goto LABEL_36;
  }

  while (*v22 != *(a1 + 47))
  {
    v22 += 4;
    if (v22 == v23)
    {
      goto LABEL_36;
    }
  }

  v30 = *(a1 + 88);
  if (v30)
  {
    v31 = *(v30 + 16) + *(a1 + 96);
    v32 = v22[1];
    if (!v22[1])
    {
      goto LABEL_36;
    }
  }

  else
  {
    v31 = 0;
    v32 = v22[1];
    if (!v22[1])
    {
      goto LABEL_36;
    }
  }

  v41 = *(v22 + 1);
  if (!*(v31 + v41))
  {
    goto LABEL_36;
  }

  v42 = strnlen((v31 + v41), v32);
  std::string::__assign_external(&__p, (v31 + v41), v42);
  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = 22;
  }

  else
  {
    v43 = (v81.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v81.__r_.__value_.__l.__size_;
  }

  if (v43 - v44 >= 7)
  {
    v51 = &v81;
    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = v81.__r_.__value_.__r.__words[0];
    }

    v52 = (v51 + v44);
    if (v51 + v44 <= " RRSID=" && v52 + 7 > " RRSID=")
    {
      goto LABEL_189;
    }

    *(v52 + 3) = 1027885395;
    *v52 = 1397903904;
    v53 = v44 + 7;
    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      v81.__r_.__value_.__l.__size_ = v44 + 7;
    }

    else
    {
      *(&v81.__r_.__value_.__s + 23) = v53 & 0x7F;
    }

    v51->__r_.__value_.__s.__data_[v53] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v81, v43, v44 - v43 + 7, v44, v44, 0, 7uLL, " RRSID=");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v71 = __p.__r_.__value_.__l.__size_;
  }

  if (!p_p && v71)
  {
LABEL_189:
    __break(1u);
    return;
  }

  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = 22;
  }

  else
  {
    v72 = (v81.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v73 = v81.__r_.__value_.__l.__size_;
  }

  if (v72 - v73 < v71)
  {
    std::string::__grow_by_and_replace(&v81, v72, v73 + v71 - v72, v73, v73, 0, v71, p_p);
    goto LABEL_36;
  }

  if (v71)
  {
    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v81;
    }

    else
    {
      v74 = v81.__r_.__value_.__r.__words[0];
    }

    if ((v71 & 0x8000000000000000) == 0)
    {
      v75 = v74 + v73;
      if ((v74 + v73) > p_p || &v75[v71] <= p_p)
      {
        v76 = v71;
        memmove(v75, p_p, v71);
        v77 = v73 + v76;
        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          v81.__r_.__value_.__l.__size_ = v73 + v76;
        }

        else
        {
          *(&v81.__r_.__value_.__s + 23) = v77 & 0x7F;
        }

        v74->__r_.__value_.__s.__data_[v77] = 0;
        goto LABEL_36;
      }
    }

    goto LABEL_189;
  }

LABEL_36:
  *a3 = v81;
  memset(&v81, 0, sizeof(v81));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_38:
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(v79.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_39:
    if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_44:
    operator delete(v81.__r_.__value_.__l.__data_);
    return;
  }

LABEL_43:
  operator delete(v80.__r_.__value_.__l.__data_);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_44;
  }
}

void webrtc::RtpDemuxer::~RtpDemuxer(webrtc::RtpDemuxer *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    v3 = *(this + 22);
    v4 = *(this + 21);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 21);
    }

    *(this + 22) = v2;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    v6 = *(this + 19);
    v7 = *(this + 18);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = *(this + 18);
    }

    *(this + 19) = v5;
    operator delete(v7);
  }

  v8 = *(this + 15);
  if (v8)
  {
    v9 = *(this + 16);
    v10 = *(this + 15);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *(this + 15);
    }

    *(this + 16) = v8;
    operator delete(v10);
  }

  v12 = *(this + 12);
  if (v12)
  {
    v13 = *(this + 13);
    v14 = *(this + 12);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 9);
        v13 -= 4;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(this + 12);
    }

    *(this + 13) = v12;
    operator delete(v14);
  }

  v16 = *(this + 9);
  if (v16)
  {
    v17 = *(this + 10);
    v18 = *(this + 9);
    if (v17 == v16)
    {
LABEL_43:
      *(this + 10) = v16;
      operator delete(v18);
      goto LABEL_44;
    }

    while (1)
    {
      if (*(v17 - 9) < 0)
      {
        operator delete(*(v17 - 4));
        v19 = v17 - 7;
        if (*(v17 - 33) < 0)
        {
LABEL_41:
          operator delete(*v19);
        }
      }

      else
      {
        v19 = v17 - 7;
        if (*(v17 - 33) < 0)
        {
          goto LABEL_41;
        }
      }

      v17 = v19;
      if (v19 == v16)
      {
        v18 = *(this + 9);
        goto LABEL_43;
      }
    }
  }

LABEL_44:
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 7));
  v20 = *(this + 3);
  if (v20)
  {
    *(this + 4) = v20;
    operator delete(v20);
  }

  v21 = *this;
  if (*this)
  {
    v22 = *(this + 1);
    v23 = *this;
    if (v22 != v21)
    {
      do
      {
        v24 = *(v22 - 9);
        v22 -= 4;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = *this;
    }

    *(this + 1) = v21;
    operator delete(v23);
  }
}

uint64_t webrtc::RtpDemuxer::AddSink(uint64_t a1, uint64_t a2, std::string::size_type a3)
{
  v162[2] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    goto LABEL_83;
  }

  v8 = *(a2 + 47);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 32);
  }

  if (!v8)
  {
    v39 = *(a1 + 128);
    v40 = webrtc::flat_containers_internal::flat_tree<std::string,std::identity,std::less<void>,std::vector<std::string>>::equal_range<std::string>(*(a1 + 120), v39, a2);
    if (v40 == v41 || v39 == v40)
    {
      goto LABEL_83;
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_115;
    }

    webrtc::RtpDemuxerCriteria::ToString(a2, v43, &v158);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_demuxer.cc");
LABEL_113:
    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }

    goto LABEL_115;
  }

  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external(&v158, *a2, *(a2 + 8));
    if ((*(a2 + 47) & 0x80) == 0)
    {
LABEL_9:
      __p = *(a2 + 24);
      v11 = *(a1 + 72);
      v10 = *(a1 + 80);
      v12 = v10 - v11;
      if (v10 != v11)
      {
        goto LABEL_10;
      }

LABEL_60:
      v11 = v10;
      v16 = v10;
      goto LABEL_20;
    }
  }

  else
  {
    v158 = *a2;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(a2 + 24), *(a2 + 32));
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = v10 - v11;
  if (v10 == v11)
  {
    goto LABEL_60;
  }

LABEL_10:
  v13 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
  do
  {
    v14 = &v11[56 * (v13 >> 1)];
    v15 = std::operator<=>[abi:sn200100]<std::string,std::string,std::string,std::string>(v14, &v158);
    if (v15 >= 0)
    {
      v13 >>= 1;
    }

    else
    {
      v13 += ~(v13 >> 1);
    }

    if (v15 < 0)
    {
      v11 = v14 + 56;
    }
  }

  while (v13);
  v16 = v11;
  if (*(a1 + 80) != v11)
  {
    v17 = std::operator<=>[abi:sn200100]<std::string,std::string,std::string,std::string>(&v158, v11);
    v16 = v11 + 56;
    if (v17 < 0)
    {
      v16 = v11;
    }
  }

LABEL_20:
  if (v11 == v16)
  {
    v11 = *(a1 + 80);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }
  }

  else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_22:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_23;
    }

LABEL_49:
    if (v11 == *(a1 + 80))
    {
      goto LABEL_24;
    }

LABEL_50:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_115;
    }

LABEL_51:
    webrtc::RtpDemuxerCriteria::ToString(a2, v31, &v158);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_demuxer.cc");
    goto LABEL_113;
  }

  if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_23:
  operator delete(v158.__r_.__value_.__l.__data_);
  if (v11 != *(a1 + 80))
  {
    goto LABEL_50;
  }

LABEL_24:
  v18 = *(a1 + 8);
  v19 = *a1;
  if (v18 == *a1)
  {
    goto LABEL_83;
  }

  v154 = *(a1 + 8);
  v20 = (v18 - *a1) >> 5;
  v21 = *(a2 + 23);
  if (v21 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  if (v21 >= 0)
  {
    v23 = *(a2 + 23);
  }

  else
  {
    v23 = *(a2 + 8);
  }

  do
  {
    v24 = v20 >> 1;
    v25 = &v19[4 * (v20 >> 1)];
    v26 = *(v25 + 23);
    if (v26 >= 0)
    {
      v27 = &v19[4 * (v20 >> 1)];
    }

    else
    {
      v27 = *v25;
    }

    if (v26 >= 0)
    {
      v28 = *(v25 + 23);
    }

    else
    {
      v28 = v25[1];
    }

    if (v23 >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v23;
    }

    v30 = memcmp(v27, v22, v29);
    if (v30)
    {
      if (v30 < 0)
      {
        goto LABEL_31;
      }
    }

    else if (v28 < v23)
    {
LABEL_31:
      v19 = v25 + 4;
      v24 = v20 + ~v24;
    }

    v20 = v24;
  }

  while (v24);
  if (v154 == v19)
  {
    goto LABEL_83;
  }

  v51 = *(a2 + 23);
  if (v51 >= 0)
  {
    v52 = a2;
  }

  else
  {
    v52 = *a2;
  }

  if (v51 >= 0)
  {
    v53 = *(a2 + 23);
  }

  else
  {
    v53 = *(a2 + 8);
  }

  v54 = *(v19 + 23);
  if (v54 >= 0)
  {
    v55 = v19;
  }

  else
  {
    v55 = *v19;
  }

  if (v54 >= 0)
  {
    v56 = *(v19 + 23);
  }

  else
  {
    v56 = v19[1];
  }

  if (v56 >= v53)
  {
    v57 = v53;
  }

  else
  {
    v57 = v56;
  }

  v58 = memcmp(v52, v55, v57);
  v59 = v19;
  if (v58)
  {
    if ((v58 & 0x80000000) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v53 >= v56)
  {
LABEL_81:
    v59 = v19 + 4;
  }

  if (v19 != v59)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_115;
    }

    goto LABEL_51;
  }

LABEL_83:
  v60 = *(a2 + 48);
  v61 = *(a2 + 56);
  if (v60 == v61 || (v62 = *(a1 + 24), v63 = *(a1 + 32), v63 == v62))
  {
LABEL_98:
    v73 = *(a2 + 23);
    v74 = *(a2 + 8);
    if (v73 >= 0)
    {
      v75 = *(a2 + 23);
    }

    else
    {
      v75 = *(a2 + 8);
    }

    v76 = *(a2 + 47);
    v77 = *(a2 + 47);
    if (v75)
    {
      if ((v76 & 0x80u) != 0)
      {
        v76 = *(a2 + 32);
      }

      if (v76)
      {
        if (v73 < 0)
        {
          std::string::__init_copy_ctor_external(&v156, *a2, v74);
          if ((*(a2 + 47) & 0x80) == 0)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v156 = *a2;
          if ((v77 & 0x80) == 0)
          {
LABEL_107:
            v157 = *(a2 + 24);
            goto LABEL_123;
          }
        }

        std::string::__init_copy_ctor_external(&v157, *(a2 + 24), *(a2 + 32));
LABEL_123:
        v158 = v156;
        memset(&v156, 0, sizeof(v156));
        *&__p.__r_.__value_.__l.__data_ = *&v157.__r_.__value_.__l.__data_;
        v95 = v157.__r_.__value_.__r.__words[2];
        memset(&v157, 0, sizeof(v157));
        __p.__r_.__value_.__r.__words[2] = v95;
        v160 = a3;
        v97 = *(a1 + 72);
        v96 = *(a1 + 80);
        if (v96 == v97)
        {
          v101 = *(a1 + 80);
        }

        else
        {
          v98 = 0x6DB6DB6DB6DB6DB7 * ((v96 - v97) >> 3);
          do
          {
            v99 = &v97[7 * (v98 >> 1)];
            v100 = std::operator<=>[abi:sn200100]<std::string,std::string,std::string,std::string>(v99, &v158);
            if (v100 >= 0)
            {
              v98 >>= 1;
            }

            else
            {
              v98 += ~(v98 >> 1);
            }

            if (v100 < 0)
            {
              v97 = v99 + 7;
            }
          }

          while (v98);
          v101 = v97;
          v97 = *(a1 + 72);
          v96 = *(a1 + 80);
          if (v96 != v101)
          {
            if ((std::operator<=>[abi:sn200100]<std::string,std::string,std::string,std::string>(&v158, v101) & 0x80) == 0)
            {
              goto LABEL_179;
            }

            v97 = *(a1 + 72);
            v96 = *(a1 + 80);
            v102 = *(a1 + 88);
            if (v96 >= v102)
            {
              goto LABEL_134;
            }

            goto LABEL_145;
          }
        }

        v102 = *(a1 + 88);
        if (v96 >= v102)
        {
LABEL_134:
          v103 = 0x6DB6DB6DB6DB6DB7 * ((v96 - v97) >> 3) + 1;
          if (v103 > 0x492492492492492)
          {
            goto LABEL_217;
          }

          v104 = 0x6DB6DB6DB6DB6DB7 * ((v102 - v97) >> 3);
          if (2 * v104 > v103)
          {
            v103 = 2 * v104;
          }

          if (v104 >= 0x249249249249249)
          {
            v105 = 0x492492492492492;
          }

          else
          {
            v105 = v103;
          }

          if (v105)
          {
            if (v105 <= 0x492492492492492)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v124 = v101 - v97;
          v125 = 8 * (v101 - v97);
          if (!(0x6DB6DB6DB6DB6DB7 * (v101 - v97)))
          {
            if (v124 < 1)
            {
              operator new();
            }

            v125 -= 56 * ((0x6DB6DB6DB6DB6DB7 * (v124 >> 3) + 1) >> 1);
          }

          if (v125)
          {
            v126 = *&v158.__r_.__value_.__l.__data_;
            *(v125 + 16) = *(&v158.__r_.__value_.__l + 2);
            *v125 = v126;
            memset(&v158, 0, sizeof(v158));
            v127 = __p.__r_.__value_.__r.__words[2];
            *(v125 + 24) = *&__p.__r_.__value_.__l.__data_;
            *(v125 + 40) = v127;
            memset(&__p, 0, sizeof(__p));
            *(v125 + 48) = v160;
            memcpy((v125 + 56), v101, *(a1 + 80) - v101);
            v128 = *(a1 + 72);
            v129 = v125 + 56 + *(a1 + 80) - v101;
            *(a1 + 80) = v101;
            v130 = v101 - v128;
            v131 = (v125 - (v101 - v128));
            memcpy(v131, v128, v130);
            v132 = *(a1 + 72);
            *(a1 + 72) = v131;
            *(a1 + 80) = v129;
            *(a1 + 88) = 0;
            if (v132)
            {
              operator delete(v132);
            }

            goto LABEL_179;
          }

LABEL_216:
          __break(1u);
LABEL_217:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

LABEL_145:
        if (v101 != v96)
        {
          v162[0] = v158.__r_.__value_.__l.__size_;
          v152 = v158.__r_.__value_.__r.__words[0];
          *(v162 + 7) = *(&v158.__r_.__value_.__r.__words[1] + 7);
          v151 = HIBYTE(v158.__r_.__value_.__r.__words[2]);
          memset(&v158, 0, sizeof(v158));
          v161[0] = __p.__r_.__value_.__l.__size_;
          v155 = __p.__r_.__value_.__r.__words[0];
          *(v161 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
          v153 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          memset(&__p, 0, sizeof(__p));
          v106 = (v96 - 56);
          v107 = v96;
          v108 = v160;
          if (v96 >= 0x38)
          {
            v107 = v96 + 56;
            v109 = *v106;
            *(v96 + 16) = *(v96 - 40);
            *v96 = v109;
            *(v96 - 48) = 0;
            *(v96 - 40) = 0;
            *v106 = 0;
            v110 = *(v96 - 32);
            *(v96 + 40) = *(v96 - 16);
            *(v96 + 24) = v110;
            *(v96 - 24) = 0;
            *(v96 - 16) = 0;
            *(v96 - 32) = 0;
            *(v96 + 48) = *(v96 - 8);
          }

          *(a1 + 80) = v107;
          if (v96 != v101 + 7)
          {
            v111 = 0;
            do
            {
              v114 = v111 + v96;
              v115 = (v111 + v96 - 56);
              if (*(v111 + v96 - 33) < 0)
              {
                operator delete(*v115);
              }

              v116 = *(v114 - 112);
              *(v111 + v96 - 40) = *(v114 - 96);
              *v115 = v116;
              *(v114 - 89) = 0;
              *(v114 - 112) = 0;
              v117 = (v114 - 32);
              if (*(v114 - 9) < 0)
              {
                operator delete(*v117);
              }

              v112 = v111 + v96;
              v113 = *(v111 + v96 - 88);
              *(v114 - 16) = *(v111 + v96 - 72);
              *v117 = v113;
              *(v112 - 65) = 0;
              *(v112 - 88) = 0;
              *(v112 - 8) = *(v111 + v96 - 64);
              v111 -= 7;
            }

            while ((v101 - v96 + 56) != v111);
          }

          if (*(v101 + 23) < 0)
          {
            operator delete(*v101);
          }

          *v101 = v152;
          v120 = v162[0];
          *(v101 + 15) = *(v162 + 7);
          v101[1] = v120;
          *(v101 + 23) = v151;
          if (*(v101 + 47) < 0)
          {
            operator delete(v101[3]);
          }

          v101[3] = v155;
          v121 = v161[0];
          *(v101 + 39) = *(v161 + 7);
          v101[4] = v121;
          *(v101 + 47) = v153;
          v101[6] = v108;
LABEL_179:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_181:
              if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_182;
              }

              goto LABEL_186;
            }
          }

          else if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_181;
          }

          operator delete(v158.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_182:
            if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_187;
            }

            goto LABEL_189;
          }

LABEL_186:
          operator delete(v157.__r_.__value_.__l.__data_);
          if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_187:
            v119 = v156.__r_.__value_.__r.__words[0];
            goto LABEL_188;
          }

LABEL_189:
          v133 = *(a2 + 48);
          v134 = *(a2 + 56);
          while (1)
          {
            if (v133 == v134)
            {
              if (*(a2 + 72) != *(a2 + 80))
              {
                operator new();
              }

              v144 = *(a1 + 120);
              v145 = *(a1 + 128);
              v143 = (a1 + 120);
              while (v145 != v144)
              {
                v146 = *(v145 - 1);
                v145 -= 3;
                if (v146 < 0)
                {
                  operator delete(*v145);
                }
              }

              *(a1 + 128) = v144;
              v147 = *a1;
              v148 = *(a1 + 8);
              if (*a1 != v148)
              {
                do
                {
                  webrtc::flat_containers_internal::flat_tree<std::string,std::identity,std::less<void>,std::vector<std::string>>::emplace_key_args<std::string,std::string const&>((a1 + 120), v147, v147);
                  v147 += 4;
                }

                while (v147 != v148);
              }

              v149 = *(a1 + 72);
              for (i = *(a1 + 80); v149 != i; v149 += 7)
              {
                webrtc::flat_containers_internal::flat_tree<std::string,std::identity,std::less<void>,std::vector<std::string>>::emplace_key_args<std::string,std::string const&>(v143, v149, v149);
              }

              return 1;
            }

            v135 = *v133;
            LODWORD(v158.__r_.__value_.__l.__data_) = *v133;
            v158.__r_.__value_.__l.__size_ = a3;
            v136 = *(a1 + 24);
            v137 = *(a1 + 32);
            if (v137 == v136)
            {
              break;
            }

            v138 = (v137 - v136) >> 4;
            do
            {
              v139 = v138 >> 1;
              v140 = &v136[16 * (v138 >> 1)];
              v142 = *v140;
              v141 = v140 + 4;
              v138 += ~(v138 >> 1);
              if (v142 < v135)
              {
                v136 = v141;
              }

              else
              {
                v138 = v139;
              }
            }

            while (v138);
            if (v137 == v136 || v135 < *v136)
            {
              goto LABEL_190;
            }

LABEL_191:
            ++v133;
          }

          v136 = *(a1 + 32);
LABEL_190:
          std::vector<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>::emplace<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>((a1 + 24), v136, &v158);
          goto LABEL_191;
        }

        if (v97)
        {
          v122 = *&v158.__r_.__value_.__l.__data_;
          *(v96 + 16) = *(&v158.__r_.__value_.__l + 2);
          *v96 = v122;
          memset(&v158, 0, sizeof(v158));
          v123 = __p.__r_.__value_.__r.__words[2];
          *(v96 + 24) = *&__p.__r_.__value_.__l.__data_;
          *(v96 + 40) = v123;
          memset(&__p, 0, sizeof(__p));
          *(v96 + 48) = v160;
          *(a1 + 80) = v96 + 56;
          goto LABEL_179;
        }

        goto LABEL_216;
      }

      if (v73 < 0)
      {
        std::string::__init_copy_ctor_external(&v158, *a2, v74);
      }

      else
      {
        v158 = *a2;
      }

      __p.__r_.__value_.__r.__words[0] = a3;
      webrtc::flat_containers_internal::flat_tree<std::string,webrtc::flat_containers_internal::GetFirst,std::less<void>,std::vector<std::pair<std::string,webrtc::RtpPacketSinkInterface *>>>::emplace_key_args<std::string,std::pair<std::string,webrtc::RtpPacketSinkInterface *>>(a1, &v158.__r_.__value_.__l.__data_, &v158);
      if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_189;
      }
    }

    else
    {
      if (v76 < 0)
      {
        v118 = *(a2 + 32);
        if (!v118)
        {
          goto LABEL_189;
        }

        std::string::__init_copy_ctor_external(&v158, *(a2 + 24), v118);
      }

      else
      {
        if (!v76)
        {
          goto LABEL_189;
        }

        v158 = *(a2 + 24);
      }

      __p.__r_.__value_.__r.__words[0] = a3;
      webrtc::flat_containers_internal::flat_tree<std::string,webrtc::flat_containers_internal::GetFirst,std::less<void>,std::vector<std::pair<std::string,webrtc::RtpPacketSinkInterface *>>>::emplace_key_args<std::string,std::pair<std::string,webrtc::RtpPacketSinkInterface *>>((a1 + 96), &v158.__r_.__value_.__l.__data_, &v158);
      if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_189;
      }
    }

    v119 = v158.__r_.__value_.__r.__words[0];
LABEL_188:
    operator delete(v119);
    goto LABEL_189;
  }

  while (1)
  {
    v64 = *v60;
    v65 = *(a1 + 24);
    v66 = (v63 - v62) >> 4;
    do
    {
      v67 = v66 >> 1;
      v68 = &v65[16 * (v66 >> 1)];
      v70 = *v68;
      v69 = (v68 + 4);
      v66 += ~(v66 >> 1);
      if (v70 < v64)
      {
        v65 = v69;
      }

      else
      {
        v66 = v67;
      }
    }

    while (v66);
    v71 = v65;
    if (v63 != v65)
    {
      v71 = v65 + 16;
      if (v64 < *v65)
      {
        v71 = v65;
      }
    }

    v72 = v71 == v65 ? *(a1 + 32) : v65;
    if (v63 != v72)
    {
      break;
    }

    if (++v60 == v61)
    {
      goto LABEL_98;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::RtpDemuxerCriteria::ToString(a2, v78, &v158);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v79, v80, v81, v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_demuxer.cc");
    goto LABEL_113;
  }

LABEL_115:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::RtpDemuxerCriteria::ToString(a2, v86, &v158);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v87, v88, v89, v90, v91, v92, v93, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_demuxer.cc");
    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

uint64_t webrtc::RtpDemuxer::AddSink(uint64_t a1, int a2, std::string::size_type a3)
{
  v13 = a2;
  *__p = 0u;
  v12 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v7 = 0u;
  *v8 = 0u;
  std::vector<unsigned int>::emplace<unsigned int const&>(v10, 0, &v13);
  v5 = webrtc::RtpDemuxer::AddSink(a1, v7, a3);
  if (__p[1])
  {
    *&v12 = __p[1];
    operator delete(__p[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
    if ((SHIBYTE(v8[0]) & 0x80000000) == 0)
    {
      return v5;
    }
  }

  else if ((SHIBYTE(v8[0]) & 0x80000000) == 0)
  {
    return v5;
  }

  operator delete(v7[0]);
  return v5;
}

void webrtc::RtpDemuxer::RemoveSink(uint64_t a1, void *a2)
{
  v30 = a2;
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v5 != v4)
  {
    v6 = v5 + 16;
    while (*(v6 - 8) != a2)
    {
      v7 = v6 == v4;
      v6 += 16;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v5 = v6 - 16;
    if (v6 - 16 != v4)
    {
      while (v6 != v4)
      {
        v15 = *(v6 + 8);
        if (v15 != a2)
        {
          *v5 = *v6;
          *(v5 + 8) = v15;
          v5 += 16;
        }

        v6 += 16;
      }
    }
  }

  if (v4 < v5)
  {
    goto LABEL_68;
  }

  if (v5 != v4)
  {
    *(a1 + 32) = v5;
  }

LABEL_11:
  v8 = *(a1 + 48);
  if (v8 != (a1 + 56))
  {
    v9 = 0;
    do
    {
      v11 = v8[1];
      if (v8[5] == a2)
      {
        v14 = v8;
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v14[2];
            v7 = *v12 == v14;
            v14 = v12;
          }

          while (!v7);
        }

        if (*(a1 + 48) == v8)
        {
          *(a1 + 48) = v12;
        }

        v10 = *(a1 + 56);
        --*(a1 + 64);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v10, v8);
        operator delete(v8);
        ++v9;
      }

      else if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v8;
          v8 = v8[2];
        }

        while (*v8 != v13);
        v12 = v8;
      }

      v8 = v12;
    }

    while (v12 != (a1 + 56));
  }

  v17 = *(a1 + 72);
  v16 = *(a1 + 80);
  if (v17 != v16)
  {
    v18 = (v17 + 56);
    while (*(v18 - 1) != a2)
    {
      v7 = v18 == v16;
      v18 += 7;
      if (v7)
      {
        goto LABEL_53;
      }
    }

    v17 = (v18 - 7);
    if (v18 - 7 != v16 && v18 != v16)
    {
      do
      {
        if (v18[6] != v30)
        {
          if (*(v17 + 23) < 0)
          {
            operator delete(*v17);
          }

          v20 = *v18;
          *(v17 + 16) = v18[2];
          *v17 = v20;
          *(v18 + 23) = 0;
          *v18 = 0;
          if (*(v17 + 47) < 0)
          {
            operator delete(*(v17 + 24));
          }

          v19 = *(v18 + 3);
          *(v17 + 40) = v18[5];
          *(v17 + 24) = v19;
          *(v18 + 47) = 0;
          *(v18 + 24) = 0;
          *(v17 + 48) = v18[6];
          v17 += 56;
        }

        v18 += 7;
      }

      while (v18 != v16);
      v16 = *(a1 + 80);
    }
  }

  if (v17 > v16)
  {
LABEL_68:
    __break(1u);
  }

  else
  {
    if (v17 != v16)
    {
      v21 = v16;
      while (1)
      {
        if (*(v21 - 9) < 0)
        {
          operator delete(*(v21 - 4));
          v25 = v21 - 7;
          if (*(v21 - 33) < 0)
          {
LABEL_62:
            operator delete(*v25);
          }
        }

        else
        {
          v25 = v21 - 7;
          if (*(v21 - 33) < 0)
          {
            goto LABEL_62;
          }
        }

        v21 = v25;
        if (v25 == v17)
        {
          *(a1 + 80) = v17;
          break;
        }
      }
    }

LABEL_53:
    v22 = *(a1 + 120);
    v23 = *(a1 + 128);
    while (v23 != v22)
    {
      v24 = *(v23 - 1);
      v23 -= 3;
      if (v24 < 0)
      {
        operator delete(*v23);
      }
    }

    *(a1 + 128) = v22;
    v27 = *a1;
    v26 = *(a1 + 8);
    if (*a1 != v26)
    {
      do
      {
        webrtc::flat_containers_internal::flat_tree<std::string,std::identity,std::less<void>,std::vector<std::string>>::emplace_key_args<std::string,std::string const&>((a1 + 120), v27, v27);
        v27 += 4;
      }

      while (v27 != v26);
    }

    v29 = *(a1 + 72);
    for (i = *(a1 + 80); v29 != i; v29 += 7)
    {
      webrtc::flat_containers_internal::flat_tree<std::string,std::identity,std::less<void>,std::vector<std::string>>::emplace_key_args<std::string,std::string const&>((a1 + 120), v29, v29);
    }
  }
}

void webrtc::anonymous namespace::RemoveFromMapByValue<webrtc::flat_map<std::string,webrtc::RtpPacketSinkInterface *,std::less<void>,std::vector<std::pair<std::string,webrtc::RtpPacketSinkInterface *>>>,webrtc::RtpPacketSinkInterface const*>(void ***a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    for (i = v4 + 4; *(i - 1) != *a2; i += 4)
    {
      if (i == v3)
      {
        return;
      }
    }

    v4 = i - 4;
    if (i - 4 != v3 && i != v3)
    {
      do
      {
        if (i[3] != *a2)
        {
          if (*(v4 + 23) < 0)
          {
            operator delete(*v4);
          }

          v8 = *i;
          v4[2] = i[2];
          *v4 = v8;
          *(i + 23) = 0;
          *i = 0;
          v4[3] = i[3];
          v4 += 4;
        }

        i += 4;
      }

      while (i != v3);
      v3 = a1[1];
    }
  }

  if (v3 < v4)
  {
    __break(1u);
  }

  else if (v4 != v3)
  {
    while (v3 != v4)
    {
      v9 = *(v3 - 9);
      v3 -= 4;
      if (v9 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v4;
  }
}

const void *webrtc::RtpDemuxer::ResolveSink(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  memset(&v213, 0, sizeof(v213));
  memset(&v212, 0, sizeof(v212));
  if (*(a1 + 192) != 1 || !*(a2 + 48) || (v4 = *(a2 + 56), v5 = *(a2 + 64), v4 == v5))
  {
LABEL_6:
    v6 = 0;
    v7 = *(a2 + 47);
    if (!*(a2 + 47))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  while (*v4 != *(a2 + 48))
  {
    v4 += 4;
    if (v4 == v5)
    {
      goto LABEL_6;
    }
  }

  v28 = *(a2 + 88);
  if (v28)
  {
    v29 = *(v28 + 16) + *(a2 + 96);
    v30 = v4[1];
    if (!v4[1])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v29 = 0;
    v30 = v4[1];
    if (!v4[1])
    {
      goto LABEL_6;
    }
  }

  v130 = *(v4 + 1);
  if (!*(v29 + v130))
  {
    goto LABEL_6;
  }

  v131 = strnlen((v29 + v130), v30);
  std::string::__assign_external(&v213, (v29 + v130), v131);
  v6 = 1;
  v7 = *(a2 + 47);
  if (!*(a2 + 47))
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  if (v8 != v9)
  {
    while (*v8 != v7)
    {
      v8 += 4;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    v24 = *(a2 + 88);
    if (v24)
    {
      v25 = *(v24 + 16) + *(a2 + 96);
      v26 = v8[1];
      if (!v8[1])
      {
        goto LABEL_10;
      }
    }

    else
    {
      v25 = 0;
      v26 = v8[1];
      if (!v8[1])
      {
        goto LABEL_10;
      }
    }

    v31 = *(v8 + 1);
    if (*(v25 + v31))
    {
      goto LABEL_39;
    }
  }

LABEL_10:
  if (*(a2 + 46))
  {
    v10 = *(a2 + 56);
    v11 = *(a2 + 64);
    if (v10 != v11)
    {
      while (*v10 != *(a2 + 46))
      {
        v10 += 4;
        if (v10 == v11)
        {
          goto LABEL_14;
        }
      }

      v27 = *(a2 + 88);
      if (v27)
      {
        v25 = *(v27 + 16) + *(a2 + 96);
        v26 = v10[1];
        if (!v10[1])
        {
          goto LABEL_14;
        }
      }

      else
      {
        v25 = 0;
        v26 = v10[1];
        if (!v10[1])
        {
          goto LABEL_14;
        }
      }

      v31 = *(v10 + 1);
      if (!*(v25 + v31))
      {
        goto LABEL_14;
      }

LABEL_39:
      v32 = strnlen((v25 + v31), v26);
      std::string::__assign_external(&v212, (v25 + v31), v32);
      v12 = 1;
      v13 = *(a2 + 12);
      v211 = v13;
      if (v6)
      {
        goto LABEL_15;
      }

      goto LABEL_40;
    }
  }

LABEL_14:
  v12 = 0;
  v13 = *(a2 + 12);
  v211 = v13;
  if (v6)
  {
LABEL_15:
    v14 = *(v3 + 128);
    v15 = webrtc::flat_containers_internal::flat_tree<std::string,std::identity,std::less<void>,std::vector<std::string>>::equal_range<std::string>(*(v3 + 120), v14, &v213.__r_.__value_.__l.__data_);
    if (v15 == v16 || v14 == v15)
    {
      goto LABEL_334;
    }

    v18 = *(v3 + 144);
    v17 = *(v3 + 152);
    if (v17 == v18)
    {
      v18 = *(v3 + 152);
    }

    else
    {
      v19 = (v17 - v18) >> 5;
      do
      {
        v20 = v19 >> 1;
        v21 = (v18 + 32 * (v19 >> 1));
        v23 = *v21;
        v22 = v21 + 8;
        v19 += ~(v19 >> 1);
        if (v23 < v13)
        {
          v18 = v22;
        }

        else
        {
          v19 = v20;
        }
      }

      while (v19);
      if (v17 != v18 && v13 >= *v18)
      {
LABEL_191:
        v128 = (v18 + 8);
        v41 = &v213;
        if ((v18 + 8) != &v213)
        {
          if (*(v18 + 31) < 0)
          {
            v41 = &v213;
            if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v132 = &v213;
            }

            else
            {
              v132 = v213.__r_.__value_.__r.__words[0];
            }

            if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v213.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v213.__r_.__value_.__l.__size_;
            }

            std::string::__assign_no_alias<false>(v128, v132, size);
          }

          else
          {
            if ((*(&v213.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(v128, v213.__r_.__value_.__l.__data_, v213.__r_.__value_.__l.__size_);
            }

            else
            {
              v129 = *&v213.__r_.__value_.__l.__data_;
              *(v18 + 24) = *(&v213.__r_.__value_.__l + 2);
              *&v128->__r_.__value_.__l.__data_ = v129;
            }

            v41 = &v213;
          }
        }

        goto LABEL_54;
      }
    }

    v218 = 0uLL;
    v219 = 0;
    v18 = std::vector<std::pair<unsigned int,std::string>>::emplace<unsigned int const&,std::string>((v3 + 144), v18, &v211, &v218);
    if (SHIBYTE(v219) < 0)
    {
      operator delete(v218);
    }

    goto LABEL_191;
  }

LABEL_40:
  v34 = *(v3 + 144);
  v33 = *(v3 + 152);
  if (v33 == v34)
  {
    v34 = *(v3 + 152);
    v40 = v34;
  }

  else
  {
    v35 = (v33 - v34) >> 5;
    do
    {
      v36 = v35 >> 1;
      v37 = &v34[8 * (v35 >> 1)];
      v39 = *v37;
      v38 = v37 + 8;
      v35 += ~(v35 >> 1);
      if (v39 < v13)
      {
        v34 = v38;
      }

      else
      {
        v35 = v36;
      }
    }

    while (v35);
    v40 = v34;
    if (v33 != v34)
    {
      v40 = v34 + 8;
      if (v13 < *v34)
      {
        v40 = v34;
      }
    }
  }

  if (v34 == v40)
  {
    v34 = *(v3 + 152);
  }

  if (v33 == v34)
  {
    v41 = 0;
  }

  else
  {
    v41 = (v34 + 2);
  }

LABEL_54:
  v43 = *(v3 + 168);
  v42 = *(v3 + 176);
  v44 = v42 - v43;
  if (v12)
  {
    if (v42 == v43)
    {
      v43 = *(v3 + 176);
    }

    else
    {
      v45 = v44 >> 5;
      do
      {
        v46 = v45 >> 1;
        v47 = (v43 + 32 * (v45 >> 1));
        v49 = *v47;
        v48 = v47 + 8;
        v45 += ~(v45 >> 1);
        if (v49 < v211)
        {
          v43 = v48;
        }

        else
        {
          v45 = v46;
        }
      }

      while (v45);
      if (v42 != v43 && v211 >= *v43)
      {
        goto LABEL_103;
      }
    }

    v218 = 0uLL;
    v219 = 0;
    v43 = std::vector<std::pair<unsigned int,std::string>>::emplace<unsigned int const&,std::string>((v3 + 168), v43, &v211, &v218);
    if (SHIBYTE(v219) < 0)
    {
      operator delete(v218);
      v73 = (v43 + 8);
      v57 = &v212;
      if ((v43 + 8) == &v212)
      {
LABEL_104:
        if (!v41)
        {
          goto LABEL_105;
        }

        goto LABEL_78;
      }

LABEL_150:
      if (*(v43 + 31) < 0)
      {
        v57 = &v212;
        if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v105 = &v212;
        }

        else
        {
          v105 = v212.__r_.__value_.__r.__words[0];
        }

        if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v106 = HIBYTE(v212.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v106 = v212.__r_.__value_.__l.__size_;
        }

        std::string::__assign_no_alias<false>(v73, v105, v106);
        if (!v41)
        {
          goto LABEL_105;
        }
      }

      else if ((*(&v212.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v73, v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
        v57 = &v212;
        if (!v41)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v104 = *&v212.__r_.__value_.__l.__data_;
        v73->__r_.__value_.__r.__words[2] = v212.__r_.__value_.__r.__words[2];
        *&v73->__r_.__value_.__l.__data_ = v104;
        v57 = &v212;
        if (!v41)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_78;
    }

LABEL_103:
    v73 = (v43 + 8);
    v57 = &v212;
    if ((v43 + 8) == &v212)
    {
      goto LABEL_104;
    }

    goto LABEL_150;
  }

  if (v42 == v43)
  {
    v43 = *(v3 + 176);
    v55 = v43;
  }

  else
  {
    v50 = v44 >> 5;
    do
    {
      v51 = v50 >> 1;
      v52 = (v43 + 32 * (v50 >> 1));
      v54 = *v52;
      v53 = v52 + 8;
      v50 += ~(v50 >> 1);
      if (v54 < v211)
      {
        v43 = v53;
      }

      else
      {
        v50 = v51;
      }
    }

    while (v50);
    v55 = v43;
    if (v42 != v43)
    {
      if (v211 >= *v43)
      {
        v55 = v43 + 32;
      }

      else
      {
        v55 = v43;
      }
    }
  }

  if (v43 == v55)
  {
    v56 = *(v3 + 176);
  }

  else
  {
    v56 = v43;
  }

  if (v42 == v56)
  {
    if (!v41)
    {
      goto LABEL_294;
    }

    v57 = 0;
    v58 = SHIBYTE(v41->__r_.__value_.__r.__words[2]);
    if ((v58 & 0x8000000000000000) == 0)
    {
LABEL_79:
      v59 = v41;
      v60 = v211;
      v61 = *(v3 + 8);
      v62 = *v3;
      v63 = v61 - *v3;
      if (v61 == *v3)
      {
        goto LABEL_224;
      }

LABEL_80:
      v208 = v41;
      v209 = v60;
      v64 = v3;
      v65 = v63 >> 5;
      while (1)
      {
        v66 = v65 >> 1;
        v67 = &v62[4 * (v65 >> 1)];
        v68 = *(v67 + 23);
        if (v68 >= 0)
        {
          v69 = &v62[4 * (v65 >> 1)];
        }

        else
        {
          v69 = *v67;
        }

        if (v68 >= 0)
        {
          v70 = *(v67 + 23);
        }

        else
        {
          v70 = v67[1];
        }

        if (v70 >= v58)
        {
          v71 = v58;
        }

        else
        {
          v71 = v70;
        }

        v72 = memcmp(v59, v69, v71);
        if (v72)
        {
          if (v72 < 0)
          {
            goto LABEL_82;
          }
        }

        else if (v70 >= v58)
        {
          goto LABEL_82;
        }

        v62 = v67 + 4;
        v66 = v65 + ~v66;
LABEL_82:
        v65 = v66;
        if (!v66)
        {
          v3 = v64;
          v41 = v208;
          v60 = v209;
          if (v61 == v62)
          {
            goto LABEL_224;
          }

          v87 = *(v62 + 23);
          if (v87 >= 0)
          {
            v88 = v62;
          }

          else
          {
            v88 = *v62;
          }

          if (v87 >= 0)
          {
            v89 = *(v62 + 23);
          }

          else
          {
            v89 = v62[1];
          }

          if (v89 >= v58)
          {
            v90 = v58;
          }

          else
          {
            v90 = v89;
          }

          v91 = memcmp(v59, v88, v90);
          v92 = v62;
          if (v91)
          {
            if ((v91 & 0x80000000) == 0)
            {
              goto LABEL_142;
            }
          }

          else if (v89 <= v58)
          {
LABEL_142:
            v92 = v62 + 4;
          }

          if (v62 == v92)
          {
            goto LABEL_224;
          }

          v93 = v62[3];
          v94 = *(v3 + 24);
          v95 = *(v3 + 32);
          v96 = (v95 - v94) >> 4;
          if (v96 < 0x3E8)
          {
            LODWORD(v218) = v209;
            *(&v218 + 1) = v93;
            if (v95 == v94)
            {
              v94 = v95;
            }

            else
            {
              do
              {
                v124 = v96 >> 1;
                v125 = &v94[4 * (v96 >> 1)];
                v127 = *v125;
                v126 = v125 + 4;
                v96 += ~(v96 >> 1);
                if (v127 < v209)
                {
                  v94 = v126;
                }

                else
                {
                  v96 = v124;
                }
              }

              while (v96);
              if (v95 != v94 && *v94 <= v209)
              {
                if (*(v94 + 1) != v93)
                {
                  *(v94 + 1) = v93;
                }

                goto LABEL_223;
              }
            }

            std::vector<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>::emplace<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>((v3 + 24), v94, &v218);
          }

          else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v97, v98, v99, v100, v101, v102, v103, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_demuxer.cc");
          }

LABEL_223:
          if (v93)
          {
            goto LABEL_335;
          }

LABEL_224:
          if (!v57)
          {
            goto LABEL_334;
          }

          v138 = SHIBYTE(v41->__r_.__value_.__r.__words[2]);
          if ((v138 & 0x8000000000000000) == 0)
          {
            v139 = v57[23];
            if ((v139 & 0x8000000000000000) == 0)
            {
              goto LABEL_227;
            }

LABEL_230:
            v141 = v57;
            v57 = *v57;
            v139 = *(v141 + 1);
            if (v138 <= 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_231;
            }

LABEL_356:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v140 = v41;
          v41 = v41->__r_.__value_.__r.__words[0];
          v138 = v140->__r_.__value_.__l.__size_;
          v139 = v57[23];
          if ((v139 & 0x8000000000000000) != 0)
          {
            goto LABEL_230;
          }

LABEL_227:
          if (v138 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_356;
          }

LABEL_231:
          if (v138 > 0x16)
          {
            operator new();
          }

          HIBYTE(v217) = v138;
          v142 = (v216 + v138);
          if (v216 <= v41 && v142 > v41)
          {
            goto LABEL_355;
          }

          if (v138)
          {
            memmove(v216, v41, v138);
          }

          v142->__r_.__value_.__s.__data_[0] = 0;
          if (v139 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_356;
          }

          if (v139 > 0x16)
          {
            operator new();
          }

          HIBYTE(v215) = v139;
          v143 = __p + v139;
          if (__p <= v57 && v143 > v57)
          {
LABEL_355:
            __break(1u);
            goto LABEL_356;
          }

          if (v139)
          {
            memmove(__p, v57, v139);
          }

          *v143 = 0;
          v218 = *v216;
          v219 = v217;
          v216[0] = 0;
          v216[1] = 0;
          v217 = 0;
          v220 = *__p;
          v221 = v215;
          __p[0] = 0;
          __p[1] = 0;
          v215 = 0;
          v145 = *(v3 + 72);
          v144 = *(v3 + 80);
          if (v144 == v145)
          {
            v145 = *(v3 + 80);
            v149 = v145;
          }

          else
          {
            v146 = 0x6DB6DB6DB6DB6DB7 * (v144 - v145);
            do
            {
              v147 = &v145[7 * (v146 >> 1)];
              v148 = std::operator<=>[abi:sn200100]<std::string,std::string,std::string,std::string>(v147, &v218);
              if (v148 >= 0)
              {
                v146 >>= 1;
              }

              else
              {
                v146 += ~(v146 >> 1);
              }

              if (v148 < 0)
              {
                v145 = v147 + 7;
              }
            }

            while (v146);
            v149 = v145;
            if (*(v3 + 80) != v145)
            {
              v150 = std::operator<=>[abi:sn200100]<std::string,std::string,std::string,std::string>(&v218, v145);
              v149 = v145 + 7;
              if (v150 < 0)
              {
                v149 = v145;
              }
            }
          }

          if (v145 == v149)
          {
            v145 = *(v3 + 80);
            if (SHIBYTE(v221) < 0)
            {
              goto LABEL_259;
            }

LABEL_265:
            if ((SHIBYTE(v219) & 0x80000000) == 0)
            {
              goto LABEL_266;
            }

LABEL_260:
            operator delete(v218);
            if (SHIBYTE(v215) < 0)
            {
              goto LABEL_261;
            }

LABEL_267:
            if ((SHIBYTE(v217) & 0x80000000) == 0)
            {
              goto LABEL_268;
            }

LABEL_262:
            operator delete(v216[0]);
            if (v145 == *(v3 + 80))
            {
              goto LABEL_334;
            }
          }

          else
          {
            if ((SHIBYTE(v221) & 0x80000000) == 0)
            {
              goto LABEL_265;
            }

LABEL_259:
            operator delete(v220);
            if (SHIBYTE(v219) < 0)
            {
              goto LABEL_260;
            }

LABEL_266:
            if ((SHIBYTE(v215) & 0x80000000) == 0)
            {
              goto LABEL_267;
            }

LABEL_261:
            operator delete(__p[0]);
            if (SHIBYTE(v217) < 0)
            {
              goto LABEL_262;
            }

LABEL_268:
            if (v145 == *(v3 + 80))
            {
              goto LABEL_334;
            }
          }

          v93 = v145[6];
          v151 = *(v3 + 24);
          v152 = *(v3 + 32);
          v153 = (v3 + 24);
          v154 = (v152 - v151) >> 4;
          if (v154 >= 0x3E8)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v155, v156, v157, v158, v159, v160, v161, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_demuxer.cc");
            }

            goto LABEL_285;
          }

          LODWORD(v218) = v60;
          *(&v218 + 1) = v93;
          if (v152 == v151)
          {
            v151 = v152;
          }

          else
          {
            do
            {
              v162 = v154 >> 1;
              v163 = &v151[4 * (v154 >> 1)];
              v165 = *v163;
              v164 = v163 + 4;
              v154 += ~(v154 >> 1);
              if (v165 < v60)
              {
                v151 = v164;
              }

              else
              {
                v154 = v162;
              }
            }

            while (v154);
            if (v152 != v151 && *v151 <= v60)
            {
              if (*(v151 + 1) != v93)
              {
                *(v151 + 1) = v93;
              }

LABEL_285:
              if (v93)
              {
                goto LABEL_335;
              }

              goto LABEL_334;
            }
          }

          std::vector<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>::emplace<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>(v153, v151, &v218);
          goto LABEL_285;
        }
      }
    }

LABEL_129:
    v59 = v41->__r_.__value_.__r.__words[0];
    v58 = v41->__r_.__value_.__l.__size_;
    v60 = v211;
    v61 = *(v3 + 8);
    v62 = *v3;
    v63 = v61 - *v3;
    if (v61 == *v3)
    {
      goto LABEL_224;
    }

    goto LABEL_80;
  }

  v57 = (v56 + 8);
  if (v41)
  {
LABEL_78:
    v58 = SHIBYTE(v41->__r_.__value_.__r.__words[2]);
    if ((v58 & 0x8000000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_129;
  }

LABEL_105:
  v74 = v57[23];
  if ((v74 & 0x8000000000000000) != 0)
  {
    v107 = v57;
    v57 = *v57;
    v74 = *(v107 + 1);
    v75 = v211;
    v76 = *(v3 + 104);
    v77 = *(v3 + 96);
    v78 = v76 - v77;
    if (v76 == v77)
    {
      goto LABEL_294;
    }
  }

  else
  {
    v75 = v211;
    v76 = *(v3 + 104);
    v77 = *(v3 + 96);
    v78 = v76 - v77;
    if (v76 == v77)
    {
      goto LABEL_294;
    }
  }

  v210 = v3;
  v79 = v78 >> 5;
  do
  {
    v80 = v79 >> 1;
    v81 = &v77[4 * (v79 >> 1)];
    v82 = *(v81 + 23);
    if (v82 >= 0)
    {
      v83 = &v77[4 * (v79 >> 1)];
    }

    else
    {
      v83 = *v81;
    }

    if (v82 >= 0)
    {
      v84 = *(v81 + 23);
    }

    else
    {
      v84 = v81[1];
    }

    if (v84 >= v74)
    {
      v85 = v74;
    }

    else
    {
      v85 = v84;
    }

    v86 = memcmp(v57, v83, v85);
    if (v86)
    {
      if ((v86 & 0x80000000) == 0)
      {
        goto LABEL_108;
      }
    }

    else if (v84 < v74)
    {
LABEL_108:
      v77 = v81 + 4;
      v80 = v79 + ~v80;
    }

    v79 = v80;
  }

  while (v80);
  v3 = v210;
  if (v76 == v77)
  {
    goto LABEL_294;
  }

  v108 = *(v77 + 23);
  if (v108 >= 0)
  {
    v109 = v77;
  }

  else
  {
    v109 = *v77;
  }

  if (v108 >= 0)
  {
    v110 = *(v77 + 23);
  }

  else
  {
    v110 = v77[1];
  }

  if (v110 >= v74)
  {
    v111 = v74;
  }

  else
  {
    v111 = v110;
  }

  v112 = memcmp(v57, v109, v111);
  v113 = v77;
  if (v112)
  {
    if ((v112 & 0x80000000) == 0)
    {
      goto LABEL_175;
    }
  }

  else if (v110 <= v74)
  {
LABEL_175:
    v113 = v77 + 4;
  }

  if (v77 == v113)
  {
    goto LABEL_294;
  }

  v93 = v77[3];
  v114 = *(v210 + 24);
  v115 = *(v210 + 32);
  v116 = (v115 - v114) >> 4;
  if (v116 < 0x3E8)
  {
    LODWORD(v218) = v75;
    *(&v218 + 1) = v93;
    if (v115 == v114)
    {
      v114 = v115;
    }

    else
    {
      do
      {
        v134 = v116 >> 1;
        v135 = &v114[4 * (v116 >> 1)];
        v137 = *v135;
        v136 = v135 + 4;
        v116 += ~(v116 >> 1);
        if (v137 < v75)
        {
          v114 = v136;
        }

        else
        {
          v116 = v134;
        }
      }

      while (v116);
    }

    if (v115 == v114 || *v114 > v75)
    {
      std::vector<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>::emplace<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>((v210 + 24), v114, &v218);
    }

    else if (*(v114 + 1) != v93)
    {
      *(v114 + 1) = v93;
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v117, v118, v119, v120, v121, v122, v123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_demuxer.cc");
  }

  if (!v93)
  {
LABEL_294:
    v167 = *(v3 + 24);
    v168 = *(v3 + 32);
    v166 = (v3 + 24);
    v169 = v168 - v167;
    if (v168 == v167)
    {
      v171 = *(v3 + 32);
      v176 = v171;
    }

    else
    {
      v170 = v169 >> 4;
      v171 = *(v3 + 24);
      do
      {
        v172 = v170 >> 1;
        v173 = &v171[4 * (v170 >> 1)];
        v175 = *v173;
        v174 = v173 + 4;
        v170 += ~(v170 >> 1);
        if (v175 < v211)
        {
          v171 = v174;
        }

        else
        {
          v170 = v172;
        }
      }

      while (v170);
      v176 = v171;
      if (v168 != v171)
      {
        if (v211 >= *v171)
        {
          v176 = v171 + 4;
        }

        else
        {
          v176 = v171;
        }
      }
    }

    if (v171 == v176)
    {
      v171 = *(v3 + 32);
    }

    if (v168 != v171)
    {
      v93 = *(v171 + 1);
      goto LABEL_335;
    }

    v179 = *(v3 + 56);
    v178 = (v3 + 56);
    v177 = v179;
    if (!v179)
    {
      goto LABEL_334;
    }

    v180 = *(a2 + 1);
    while (1)
    {
      while (1)
      {
        v181 = *(v177 + 32);
        if (v181 <= v180)
        {
          break;
        }

        v178 = v177;
        v177 = *v177;
        if (!v177)
        {
          goto LABEL_334;
        }
      }

      if (v181 >= v180)
      {
        break;
      }

      v177 = v177[1];
      if (!v177)
      {
        goto LABEL_334;
      }
    }

    v182 = *v177;
    v183 = v177;
    if (*v177)
    {
      v183 = v177;
      do
      {
        v184 = *(v182 + 32);
        v185 = v184 >= v180;
        v186 = v184 < v180;
        if (v185)
        {
          v183 = v182;
        }

        v182 = v182[v186];
      }

      while (v182);
    }

    for (i = v177[1]; i; i = *(i + 8 * v190))
    {
      v188 = *(i + 32);
      v189 = v188 > v180;
      v190 = v188 <= v180;
      if (v189)
      {
        v178 = i;
      }
    }

    if (v183 == v178)
    {
      goto LABEL_334;
    }

    v191 = v183[1];
    if (v191)
    {
      do
      {
        v192 = v191;
        v191 = *v191;
      }

      while (v191);
    }

    else
    {
      v193 = v183;
      do
      {
        v192 = v193[2];
        v194 = *v192 == v193;
        v193 = v192;
      }

      while (!v194);
    }

    if (v192 == v178)
    {
      v93 = v183[5];
      v196 = v169 >> 4;
      if (v196 < 0x3E8)
      {
        LODWORD(v218) = v211;
        *(&v218 + 1) = v93;
        if (v168 == v167)
        {
          v167 = v168;
        }

        else
        {
          do
          {
            v204 = v196 >> 1;
            v205 = &v167[4 * (v196 >> 1)];
            v207 = *v205;
            v206 = v205 + 4;
            v196 += ~(v196 >> 1);
            if (v207 < v211)
            {
              v167 = v206;
            }

            else
            {
              v196 = v204;
            }
          }

          while (v196);
        }

        if (v168 == v167 || *v167 > v211)
        {
          std::vector<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>::emplace<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>(v166, v167, &v218);
        }

        else if (*(v167 + 1) != v93)
        {
          *(v167 + 1) = v93;
        }
      }

      else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v197, v198, v199, v200, v201, v202, v203, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_demuxer.cc");
      }
    }

    else
    {
LABEL_334:
      v93 = 0;
    }
  }

LABEL_335:
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v213.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v93;
    }

LABEL_339:
    operator delete(v213.__r_.__value_.__l.__data_);
    return v93;
  }

  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_339;
  }

  return v93;
}

void webrtc::flat_containers_internal::flat_tree<std::string,webrtc::flat_containers_internal::GetFirst,std::less<void>,std::vector<std::pair<std::string,webrtc::RtpPacketSinkInterface *>>>::emplace_key_args<std::string,std::pair<std::string,webrtc::RtpPacketSinkInterface *>>(const void ***a1, const void **a2, __int128 *a3)
{
  v3 = a3;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 - *a1;
  if (v7 == *a1)
  {
    v13 = a1[1];
    goto LABEL_47;
  }

  v57 = *a1;
  v56 = v7 - *a1;
  v9 = v8 >> 5;
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = *a1;
  do
  {
    v14 = v9 >> 1;
    v15 = &v13[4 * (v9 >> 1)];
    v16 = *(v15 + 23);
    if (v16 >= 0)
    {
      v17 = &v13[4 * (v9 >> 1)];
    }

    else
    {
      v17 = *v15;
    }

    if (v16 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = v15[1];
    }

    if (v12 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v12;
    }

    v20 = memcmp(v17, v11, v19);
    if (v20)
    {
      if (v20 < 0)
      {
        goto LABEL_9;
      }
    }

    else if (v18 < v12)
    {
LABEL_9:
      v13 = v15 + 4;
      v14 = v9 + ~v14;
    }

    v9 = v14;
  }

  while (v14);
  v6 = v57;
  v3 = a3;
  v8 = v56;
  if (v7 == v13)
  {
    goto LABEL_47;
  }

  v21 = *(a2 + 23);
  if (v21 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  if (v21 >= 0)
  {
    v23 = *(a2 + 23);
  }

  else
  {
    v23 = a2[1];
  }

  v24 = *(v13 + 23);
  if (v24 >= 0)
  {
    v25 = v13;
  }

  else
  {
    v25 = *v13;
  }

  if (v24 >= 0)
  {
    v26 = *(v13 + 23);
  }

  else
  {
    v26 = v13[1];
  }

  if (v26 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v26;
  }

  v28 = memcmp(v22, v25, v27);
  if (v28)
  {
    if ((v28 & 0x80000000) == 0)
    {
      return;
    }

LABEL_47:
    v29 = a1[2];
    if (v7 < v29)
    {
      if (v13 != v7)
      {
        v30 = *v3;
        *v59 = *(v3 + 1);
        *&v59[7] = *(v3 + 15);
        v31 = *(v3 + 23);
        *(v3 + 1) = 0;
        *(v3 + 2) = 0;
        *v3 = 0;
        v32 = *(v3 + 3);
        v33 = a1[1];
        v34 = (v33 - 32);
        v35 = v33;
        if (v33 >= 0x20)
        {
          v35 = v33 + 32;
          v36 = *v34;
          *(v33 + 16) = *(v33 - 16);
          *v33 = v36;
          *(v33 - 24) = 0;
          *(v33 - 16) = 0;
          *v34 = 0;
          *(v33 + 24) = *(v33 - 8);
        }

        a1[1] = v35;
        if (v33 != v13 + 4)
        {
          v37 = 0;
          do
          {
            v39 = v37 + v33;
            v40 = (v37 + v33 - 32);
            if (*(v37 + v33 - 9) < 0)
            {
              operator delete(*v40);
            }

            v38 = *(v39 - 64);
            *(v37 + v33 - 16) = *(v39 - 48);
            *v40 = v38;
            *(v39 - 41) = 0;
            *(v39 - 64) = 0;
            *(v39 - 8) = *(v39 - 40);
            v37 -= 4;
          }

          while ((v13 - v33 + 32) != v37);
        }

        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        *v13 = v30;
        v13[1] = *v59;
        *(v13 + 15) = *&v59[7];
        *(v13 + 23) = v31;
        v13[3] = v32;
        return;
      }

      if (v6)
      {
        v44 = *v3;
        v7[2] = *(v3 + 2);
        *v7 = v44;
        *(v3 + 1) = 0;
        *(v3 + 2) = 0;
        *v3 = 0;
        v7[3] = *(v3 + 3);
        a1[1] = v7 + 4;
        return;
      }

LABEL_84:
      __break(1u);
    }

    v41 = (v8 >> 5) + 1;
    if (v41 >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v42 = v29 - v6;
    if (v42 >> 4 > v41)
    {
      v41 = v42 >> 4;
    }

    if (v42 >= 0x7FFFFFFFFFFFFFE0)
    {
      v43 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      if (!(v43 >> 59))
      {
        operator new();
      }

      goto LABEL_86;
    }

    v45 = v13 - v6;
    v46 = (v13 - v6) >> 5;
    v47 = 32 * v46;
    if (!v46)
    {
      if (v45 < 1)
      {
        v54 = v45 >> 4;
        if (v13 == v6)
        {
          v55 = 1;
        }

        else
        {
          v55 = v54;
        }

        if (!(v55 >> 59))
        {
          operator new();
        }

LABEL_86:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v47 -= ((v45 >> 1) + 16) & 0xFFFFFFFFFFFFFFE0;
    }

    if (!v47)
    {
      goto LABEL_84;
    }

    v48 = *v3;
    *(v47 + 16) = *(v3 + 2);
    *v47 = v48;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = 0;
    *(v47 + 24) = *(v3 + 3);
    memcpy((v47 + 32), v13, a1[1] - v13);
    v49 = *a1;
    v50 = v47 + 32 + a1[1] - v13;
    a1[1] = v13;
    v51 = v13 - v49;
    v52 = (v47 - (v13 - v49));
    memcpy(v52, v49, v51);
    v53 = *a1;
    *a1 = v52;
    a1[1] = v50;
    a1[2] = 0;
    if (v53)
    {

      operator delete(v53);
    }
  }

  else if (v23 < v26)
  {
    goto LABEL_47;
  }
}

uint64_t std::operator<=>[abi:sn200100]<std::string,std::string,std::string,std::string>(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = memcmp(a1, a2, v8);
  if (v9)
  {
    goto LABEL_11;
  }

  v11 = v5 >= v7;
  if (v5 == v7)
  {
    v14 = v3[3];
    v13 = v3 + 3;
    v12 = v14;
    v15 = *(v13 + 23);
    if (v15 >= 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    if (v15 >= 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v13[1];
    }

    v20 = v2[3];
    v19 = v2 + 3;
    v18 = v20;
    v21 = *(v19 + 23);
    if (v21 >= 0)
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    if (v21 >= 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v19[1];
    }

    if (v23 >= v17)
    {
      v24 = v17;
    }

    else
    {
      v24 = v23;
    }

    v9 = memcmp(v16, v22, v24);
    if (v9)
    {
LABEL_11:
      if ((v9 & 0x80000000) == 0)
      {
        return 1;
      }

      return 255;
    }

    v11 = v17 >= v23;
    if (v17 == v23)
    {
      return 0;
    }
  }

  if (v11)
  {
    return 1;
  }

  return 255;
}

void std::vector<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>::emplace<std::pair<unsigned int,webrtc::RtpPacketSinkInterface *>>(void **a1, _BYTE *a2, int *a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  if (v5 < v7)
  {
    if (a2 != v5)
    {
      v8 = *a3;
      v9 = *(a3 + 1);
      v10 = a1[1];
      if (v5 >= 0x10)
      {
        v10 = v5 + 1;
        *v5 = *(v5 - 1);
      }

      a1[1] = v10;
      if (v5 != (a2 + 16))
      {
        v11 = 0;
        do
        {
          v12 = &v5[v11 / 0x10];
          *(v12 - 4) = v5[v11 / 0x10 - 2];
          *(v12 - 1) = *(&v5[v11 / 0x10 - 1] - 1);
          v11 -= 16;
        }

        while (a2 - v5 + 16 != v11);
      }

      *a2 = v8;
      *(a2 + 1) = v9;
      return;
    }

    if (v6)
    {
      *v5 = *a3;
      a1[1] = v5 + 1;
      return;
    }

    goto LABEL_34;
  }

  v13 = ((v5 - v6) >> 4) + 1;
  if (v13 >> 60)
  {
    goto LABEL_35;
  }

  v14 = v7 - v6;
  if (v14 >> 3 > v13)
  {
    v13 = v14 >> 3;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF0)
  {
    v15 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    if (!(v15 >> 60))
    {
      operator new();
    }

    goto LABEL_36;
  }

  v16 = a2 - v6;
  v17 = (a2 - v6) >> 4;
  v18 = (16 * v17);
  if (!v17)
  {
    if (v16 < 1)
    {
      v19 = v16 >> 3;
      if (v6 == a2)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      if (!(v20 >> 60))
      {
        operator new();
      }

LABEL_36:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v18 = (v18 - (((v16 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
  }

  if (!v18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v18 = *a3;
  memcpy(v18 + 1, a2, a1[1] - a2);
  v21 = *a1;
  v22 = v18 + a1[1] - a2 + 16;
  a1[1] = a2;
  v23 = a2 - v21;
  v24 = v18 - (a2 - v21);
  memcpy(v24, v21, v23);
  v25 = *a1;
  *a1 = v24;
  a1[1] = v22;
  a1[2] = 0;
  if (v25)
  {

    operator delete(v25);
  }
}

const void **webrtc::flat_containers_internal::flat_tree<std::string,std::identity,std::less<void>,std::vector<std::string>>::equal_range<std::string>(const void **a1, const void **a2, const void **a3)
{
  if (a2 != a1)
  {
    v5 = a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
    v7 = *(a3 + 23);
    if (v7 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    if (v7 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = a3[1];
    }

    while (1)
    {
      v10 = v6 >> 1;
      v11 = &v5[3 * (v6 >> 1)];
      v12 = *(v11 + 23);
      if (v12 >= 0)
      {
        v13 = &v5[3 * (v6 >> 1)];
      }

      else
      {
        v13 = *v11;
      }

      if (v12 >= 0)
      {
        v14 = *(v11 + 23);
      }

      else
      {
        v14 = v11[1];
      }

      if (v9 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v9;
      }

      v16 = memcmp(v13, v8, v15);
      if (v16)
      {
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v14 >= v9)
      {
        goto LABEL_10;
      }

      v5 = v11 + 3;
      v10 = v6 + ~v10;
LABEL_10:
      v6 = v10;
      if (!v10)
      {
        goto LABEL_26;
      }
    }
  }

  v5 = a2;
LABEL_26:
  if (v5 != a2)
  {
    v17 = *(a3 + 23);
    if (v17 >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    if (v17 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = a3[1];
    }

    v20 = *(v5 + 23);
    if (v20 >= 0)
    {
      v21 = v5;
    }

    else
    {
      v21 = *v5;
    }

    if (v20 >= 0)
    {
      v22 = *(v5 + 23);
    }

    else
    {
      v22 = v5[1];
    }

    if (v22 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    memcmp(v18, v21, v23);
  }

  return v5;
}

void webrtc::flat_containers_internal::flat_tree<std::string,std::identity,std::less<void>,std::vector<std::string>>::emplace_key_args<std::string,std::string const&>(std::string **a1, const void **a2, __int128 *a3)
{
  v4 = a1;
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  v52 = *a1;
  if (v6 == *a1)
  {
    v5 = a1[1];
    goto LABEL_46;
  }

  v49 = (v6 - *a1);
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  do
  {
    v12 = v8 >> 1;
    v13 = &v5[v8 >> 1];
    v14 = SHIBYTE(v13->__r_.__value_.__r.__words[2]);
    if (v14 >= 0)
    {
      v15 = &v5[v8 >> 1];
    }

    else
    {
      v15 = v13->__r_.__value_.__r.__words[0];
    }

    if (v14 >= 0)
    {
      size = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13->__r_.__value_.__l.__size_;
    }

    if (v11 >= size)
    {
      v17 = size;
    }

    else
    {
      v17 = v11;
    }

    v18 = memcmp(v15, v10, v17);
    if (v18)
    {
      if (v18 < 0)
      {
        goto LABEL_8;
      }
    }

    else if (size < v11)
    {
LABEL_8:
      v5 = v13 + 1;
      v12 = v8 + ~v12;
    }

    v8 = v12;
  }

  while (v12);
  v7 = v49;
  v4 = a1;
  if (v6 == v5)
  {
    goto LABEL_46;
  }

  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = a2[1];
  }

  v22 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
  if (v22 >= 0)
  {
    v23 = v5;
  }

  else
  {
    v23 = v5->__r_.__value_.__r.__words[0];
  }

  if (v22 >= 0)
  {
    v24 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v5->__r_.__value_.__l.__size_;
  }

  if (v24 >= v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v24;
  }

  v26 = memcmp(v20, v23, v25);
  if (!v26)
  {
    if (v21 < v24)
    {
      goto LABEL_46;
    }

    return;
  }

  if ((v26 & 0x80000000) == 0)
  {
    return;
  }

LABEL_46:
  v27 = v4[2];
  if (v6 >= v27)
  {
    v37 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1;
    if (v37 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_89;
    }

    v38 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v52) >> 3);
    if (2 * v38 > v37)
    {
      v37 = 2 * v38;
    }

    if (v38 >= 0x555555555555555)
    {
      v39 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      if (v39 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v42 = v5 - v52;
    v43 = (8 * ((v5 - v52) >> 3));
    if (!(0xAAAAAAAAAAAAAAABLL * ((v5 - v52) >> 3)))
    {
      if (v42 < 1)
      {
        operator new();
      }

      v43 -= (1 - 0x5555555555555555 * (v42 >> 3)) >> 1;
    }

    if (v43)
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v43, *a3, *(a3 + 1));
      }

      else
      {
        *&v43->__r_.__value_.__l.__data_ = *a3;
        v43->__r_.__value_.__r.__words[2] = *(a3 + 2);
      }

      memcpy(&v43[1], v5, v4[1] - v5);
      v44 = *v4;
      v45 = &v43[1] + v4[1] - v5;
      v4[1] = v5;
      v46 = v5 - v44;
      v47 = (v43 - (v5 - v44));
      memcpy(v47, v44, v46);
      v48 = *v4;
      *v4 = v47;
      v4[1] = v45;
      v4[2] = 0;
      if (v48)
      {

        operator delete(v48);
      }

      return;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v5 == v6)
  {
    if (v52)
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v6, *a3, *(a3 + 1));
      }

      else
      {
        v41 = *a3;
        v6->__r_.__value_.__r.__words[2] = *(a3 + 2);
        *&v6->__r_.__value_.__l.__data_ = v41;
      }

      v4[1] = v6 + 1;
      return;
    }

    goto LABEL_88;
  }

  v54 = v4;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *a3, *(a3 + 1));
    v6 = v4[1];
    v28 = v5 + 1;
    v29 = v6 - 1;
    v30 = v6;
    if (&v6[-1] < v6)
    {
LABEL_50:
      v30 = v6 + 1;
      v31 = *&v29->__r_.__value_.__l.__data_;
      v6->__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v6->__r_.__value_.__l.__data_ = v31;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
    }
  }

  else
  {
    v53 = *a3;
    v28 = v5 + 1;
    v29 = v6 - 1;
    v30 = v6;
    if (v6 >= 0x18)
    {
      goto LABEL_50;
    }
  }

  v4[1] = v30;
  if (v6 != v28)
  {
    v32 = 0;
    do
    {
      v36 = &v6[v32 / 0x18 - 1];
      if (SHIBYTE(v6[v32 / 0x18 - 1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(*v36);
      }

      v33 = &v6[v32 / 0x18];
      v34 = &v6[v32 / 0x18 - 2];
      v32 -= 24;
      v35 = *v34;
      *(v36 + 16) = *(v34 + 16);
      *v36 = v35;
      *(&v33[-2].__r_.__value_.__s + 23) = 0;
      *v34 = 0;
    }

    while (v5 - v6 + 24 != v32);
  }

  if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5->__r_.__value_.__l.__data_);
  }

  v40 = *&v53.__r_.__value_.__l.__data_;
  v5->__r_.__value_.__r.__words[2] = v53.__r_.__value_.__r.__words[2];
  *&v5->__r_.__value_.__l.__data_ = v40;
}