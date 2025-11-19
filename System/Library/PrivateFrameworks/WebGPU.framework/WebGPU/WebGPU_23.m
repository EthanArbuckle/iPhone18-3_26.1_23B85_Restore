WTF *WGSL::parse<WGSL::Lexer<char16_t>>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl *a2@<X1>, uint64_t a3@<X8>)
{
  v259 = 0;
  v258 = 0u;
  v257 = 0u;
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 + 8);
    v7 = *(v5 + 4);
    *&v257 = v6;
    *(&v257 + 1) = v7;
    if (v7)
    {
      v8 = *v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v257 = 0uLL;
  }

  v256 = v8;
  *&v258 = 1;
  DWORD2(v258) = 0;
  v245[0] = a1;
  v245[1] = a1 + 38;
  v245[2] = &v256;
  WGSL::Lexer<char16_t>::lex(&v256, a2, &v246);
  v249 = 0;
  v250 = 0;
  if (!v248)
  {
    __break(0xC471u);
    JUMPOUT(0x22576BD80);
  }

  v251 = *v246;
  v252 = *(v246 + 4);
  v12 = *v246;
  if (*v246 <= 8u)
  {
    if (((1 << v12) & 0x38) != 0)
    {
      v253 = *(v246 + 3);
    }

    else if (((1 << v12) & 0xC4) != 0)
    {
      v253 = *(v246 + 3);
    }

    else if (v12 == 8)
    {
      v253 = 0;
      v192 = *(v246 + 3);
      if (v192)
      {
        atomic_fetch_add_explicit(v192, 2u, memory_order_relaxed);
        v193 = v253;
        v253 = v192;
        if (v193)
        {
          if (atomic_fetch_add_explicit(v193, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v193, v9);
          }
        }
      }
    }
  }

  v238 = a3;
  v254 = v252;
  v231 = DWORD2(v252);
  v255 = DWORD2(v252);
  v13 = v252;
  *v265 = 0u;
  *&v265[16] = v267;
  v266 = 16;
  v14 = 16;
  v15 = v248 - 1;
  if (v248 == 1)
  {
    v68 = 0;
    v67 = 0;
  }

  else
  {
    v3 = 0;
    v16 = 0;
    while (2)
    {
      v17 = v248;
      if (v16 >= v248)
      {
        __break(0xC471u);
        JUMPOUT(0x22576BD30);
      }

      v18 = v246;
      v19 = (v246 + 32 * v16);
      switch(*v19)
      {
        case 8:
        case 0x22:
          v28 = v16 + 1;
          if (v16 + 1 >= v248)
          {
            __break(0xC471u);
            JUMPOUT(0x22576BD60);
          }

          v29 = (v246 + 32 * v28);
          if (*v29 != 55)
          {
            goto LABEL_15;
          }

          v30 = *v265;
          v31 = *&v265[8];
          if (*v265)
          {
            v32 = v266;
            if (*&v265[8] + 1 != *v265)
            {
              v33 = v266;
              v34 = *&v265[8];
              goto LABEL_115;
            }
          }

          else
          {
            v33 = v266;
            if (*&v265[8])
            {
              v32 = v266;
              if (*&v265[8] != v266 - 1)
              {
                v34 = *&v265[8];
                goto LABEL_115;
              }
            }

            else
            {
              v32 = 0;
              v34 = 0;
              if (v266)
              {
                goto LABEL_115;
              }
            }
          }

          v43 = *&v265[16];
          v44 = v32 + (v32 >> 2);
          if (v44 < 0x10)
          {
            *&v265[16] = v267;
            LODWORD(v266) = 16;
            v47 = v267;
            v48 = 16;
            v49 = *&v265[8] - *v265;
            if (*&v265[8] >= *v265)
            {
              goto LABEL_88;
            }
          }

          else
          {
            if (v44 >= 0xFFFFFFF)
            {
              __break(0xC471u);
              JUMPOUT(0x22576BD78);
            }

            v45 = v13;
            v46 = v44 + 1;
            v47 = WTF::fastMalloc((16 * (v44 + 1)));
            v48 = v46;
            LODWORD(v266) = v46;
            *&v265[16] = v47;
            v30 = *v265;
            v31 = *&v265[8];
            v13 = v45;
            v49 = *&v265[8] - *v265;
            if (*&v265[8] >= *v265)
            {
LABEL_88:
              v21 = __OFSUB__(v32, v30);
              v50 = v32 - v30;
              if (v32 < v30)
              {
                goto LABEL_474;
              }

              if (v49 == -1)
              {
                v49 = v32 - v30;
                v21 = __OFSUB__(v30, v48);
                if (v30 > v48)
                {
                  goto LABEL_474;
                }
              }

              else
              {
                v21 = __OFSUB__(v50, v49);
                if (v50 < v49)
                {
                  goto LABEL_474;
                }

                v21 = __OFSUB__(v30, v48);
                if (v30 > v48)
                {
                  goto LABEL_474;
                }
              }

              if (v49)
              {
                v61 = (v43 + 16 * v30);
                v62 = 16 * v49;
                v63 = &v47[v30];
                do
                {
                  v64 = *v61++;
                  *v63++ = v64;
                  v62 -= 16;
                }

                while (v62);
              }

              goto LABEL_109;
            }
          }

          v21 = __OFSUB__(v31, v32);
          if (v31 > v32)
          {
            goto LABEL_474;
          }

          if (v31)
          {
            v51 = 16 * v31;
            v52 = v43;
            do
            {
              v53 = *v52;
              v52 = (v52 + 16);
              *v47++ = v53;
              v51 -= 16;
            }

            while (v51);
            v48 = v266;
            v30 = *v265;
          }

          v54 = v32 - v30;
          v21 = __OFSUB__(v32, v30);
          v55 = v32 - v30;
          if (v32 < v30)
          {
            goto LABEL_474;
          }

          v21 = __OFSUB__(v48, v55);
          if (v48 < v55)
          {
            goto LABEL_474;
          }

          if (v32 != v30)
          {
            v56 = 16 * v30;
            v57 = (v43 + 16 * v30);
            v58 = *&v265[16] + 16 * v48;
            v59 = v56 - 16 * v32;
            do
            {
              v60 = *v57++;
              *(v58 + v59) = v60;
              v59 += 16;
            }

            while (v59);
          }

          *v265 = v48 - v54;
LABEL_109:
          if (v267 != v43 && v43)
          {
            if (*&v265[16] == v43)
            {
              *&v265[16] = 0;
              LODWORD(v266) = 0;
            }

            WTF::fastFree(v43, v9);
          }

          v34 = *&v265[8];
          v33 = v266;
LABEL_115:
          v21 = __OFSUB__(v34, v33);
          if (v34 >= v33)
          {
            goto LABEL_474;
          }

          v65 = *&v265[16] + 16 * v34;
          *v65 = v29;
          *(v65 + 8) = v3;
          if (v34 == v266 - 1)
          {
            v66 = 0;
          }

          else
          {
            v66 = v34 + 1;
          }

          *&v265[8] = v66;
          v16 = v28;
LABEL_15:
          if (++v16 < v15)
          {
            continue;
          }

          v14 = v266;
          v67 = *v265;
          v68 = *&v265[8];
          if (*v265 > *&v265[8])
          {
            v21 = __OFSUB__(*&v265[8], v266);
            if (*&v265[8] > v266)
            {
              goto LABEL_474;
            }

            v21 = __OFSUB__(*v265, v266);
            if (*v265 > v266)
            {
              goto LABEL_474;
            }

            goto LABEL_133;
          }

          v21 = __OFSUB__(*v265, v266);
          if (*v265 > v266)
          {
LABEL_474:
            __break(1u);
            goto LABEL_475;
          }

          break;
        case 0x25:
        case 0x41:
          v26 = *&v265[8];
          if (v266)
          {
            while (*v265 != v26)
            {
              v27 = *&v265[16] + 16 * v266 - 16;
              if (v26)
              {
                v21 = __OFSUB__(v26 - 1, v266);
                if (v26 - 1 >= v266)
                {
                  goto LABEL_474;
                }

                v27 = *&v265[16] + 16 * (v26 - 1);
              }

              if (*(v27 + 8) != v3)
              {
                break;
              }

              if (!v26)
              {
                v26 = v266;
              }

              *&v265[8] = --v26;
              v21 = __OFSUB__(v26, v266);
              if (v26 > v266 || v26 == v266)
              {
                goto LABEL_474;
              }
            }
          }

          else
          {
            v21 = __OFSUB__(*v265, *&v265[8]);
            if (*v265 != *&v265[8])
            {
              goto LABEL_474;
            }
          }

          goto LABEL_15;
        case 0x2B:
        case 0x2F:
        case 0x31:
        case 0x49:
          v20 = *&v265[8] - *v265;
          if (*&v265[8] >= *v265)
          {
            v21 = __OFSUB__(v266, *v265);
            v35 = v266 - *v265;
            if (v266 < *v265)
            {
              goto LABEL_474;
            }

            if (v20 == -1)
            {
              v21 = 0;
              v36 = 1;
            }

            else
            {
              v21 = __OFSUB__(v35, v20);
              v36 = v35 >= v20;
            }

            if (!v36)
            {
              goto LABEL_474;
            }
          }

          else
          {
            v21 = __OFSUB__(*&v265[8], v266);
            if (*&v265[8] > v266)
            {
              goto LABEL_474;
            }

            v21 = __OFSUB__(v266, *v265);
            if (v266 < *v265)
            {
              goto LABEL_474;
            }
          }

          v3 = 0;
          *v265 = 0;
          *&v265[8] = 0;
          v37 = *&v265[16];
          if (v267 != *&v265[16] && *&v265[16])
          {
            *&v265[16] = 0;
            LODWORD(v266) = 0;
            WTF::fastFree(v37, v9);
            v3 = 0;
          }

          goto LABEL_15;
        case 0x2D:
        case 0x43:
          v3 = (v3 + 1);
          goto LABEL_15;
        case 0x2E:
        case 0x44:
          v24 = *&v265[8];
          while (1)
          {
            v21 = __OFSUB__(*v265, v24);
            if (*v265 == v24)
            {
              break;
            }

            if (v24)
            {
              v21 = __OFSUB__(v24 - 1, v266);
              if (v24 - 1 >= v266)
              {
                goto LABEL_474;
              }

              v25 = *&v265[16] + 16 * (v24 - 1);
            }

            else
            {
              v25 = *&v265[16] + 16 * v266 - 16;
              if (!v266)
              {
                goto LABEL_474;
              }
            }

            if (*(v25 + 8) != v3)
            {
              break;
            }

            if (!v24)
            {
              v24 = v266;
            }

            *&v265[8] = --v24;
            v21 = __OFSUB__(v24, v266);
            if (v24 > v266 || v24 == v266)
            {
              goto LABEL_474;
            }
          }

          if (v3)
          {
            v3 = (v3 - 1);
          }

          else
          {
            v3 = 0;
          }

          goto LABEL_15;
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
          v22 = *&v265[8];
          v21 = __OFSUB__(*v265, *&v265[8]);
          if (*v265 == *&v265[8])
          {
            goto LABEL_15;
          }

          v23 = v266;
          if (*&v265[8])
          {
            v21 = __OFSUB__(*&v265[8] - 1, v266);
            if (*&v265[8] - 1 >= v266)
            {
              goto LABEL_474;
            }

            if (*(*&v265[16] + 16 * (*&v265[8] - 1) + 8) != v3)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (!v266)
            {
              goto LABEL_474;
            }

            if (*(*&v265[16] + 16 * v266 - 8) != v3)
            {
              goto LABEL_15;
            }
          }

          if (v248 <= v16)
          {
            __break(0xC471u);
            JUMPOUT(0x22576BD68);
          }

          v38 = *v19 - 52;
          v21 = __OFSUB__(v38, 2);
          if (v38 <= 2)
          {
            v39 = dword_225882770[v38];
            *v19 = 51;
            v21 = __OFSUB__(v17, v16 + 1);
            if (v17 <= v16 + 1)
            {
              __break(0xC471u);
              JUMPOUT(0x22576BD70);
            }

            *(v18 + 8 * (v16 + 1)) = v39;
          }

          if (v22)
          {
            v40 = v22 - 1;
            v21 = __OFSUB__(v22 - 1, v23);
            if (v22 - 1 >= v23)
            {
              goto LABEL_474;
            }

            v41 = *(*&v265[16] + 16 * v40);
            *&v265[8] = v22 - 1;
            v21 = __OFSUB__(v40, v23);
            v42 = v40 == v23;
            if (v40 > v23)
            {
              goto LABEL_474;
            }
          }

          else
          {
            if (!v23)
            {
              goto LABEL_474;
            }

            v41 = *(*&v265[16] + 16 * v23 - 16);
            *&v265[8] = v23 - 1;
            v21 = (v23 - 1) >= v23;
            v42 = 0;
          }

          if (v42)
          {
            goto LABEL_474;
          }

          *v41 = 83;
          *v19 = 84;
          goto LABEL_15;
        default:
          goto LABEL_15;
      }

      break;
    }
  }

  v69 = v68 - v67;
  v70 = v14 - v67;
  if (v69 == -1)
  {
    v21 = 0;
    v71 = 1;
  }

  else
  {
    v21 = __OFSUB__(v70, v69);
    v71 = v70 >= v69;
  }

  if (!v71)
  {
    goto LABEL_474;
  }

LABEL_133:
  v72 = *&v265[16];
  if (v267 != *&v265[16] && *&v265[16])
  {
    *&v265[16] = 0;
    LODWORD(v266) = 0;
    WTF::fastFree(v72, v9);
  }

  while (1)
  {
LABEL_138:
    v73 = v251;
    if (v251 == 29)
    {
      v3 = v254;
      v15 = v255;
      while (1)
      {
        v75 = (v249 + 1);
        LODWORD(v249) = v75;
        if (v248 <= v75)
        {
          __break(0xC471u);
          JUMPOUT(0x22576BD08);
        }

        v76 = v246 + 32 * v75;
        v74 = *v76;
        v251 = *v76;
        v252 = *(v76 + 4);
        v77 = *v76;
        if (*v76 > 8u)
        {
          goto LABEL_142;
        }

        if (((1 << v77) & 0x38) != 0)
        {
          v253 = *(v76 + 3);
        }

        else if (((1 << v77) & 0xC4) != 0)
        {
          v253 = *(v76 + 3);
        }

        else
        {
          if (v77 != 8)
          {
            goto LABEL_142;
          }

          v253 = 0;
          v78 = *(v76 + 3);
          if (v78)
          {
            atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
            v79 = v253;
            v253 = v78;
            if (v79)
            {
              if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v79, v9);
              }
            }
          }
        }

        v74 = v251;
LABEL_142:
        v254 = v252;
        v255 = DWORD2(v252);
        if (v74 != 82)
        {
          v80 = 0;
          while (1)
          {
            if (v74 != 8)
            {
              *v265 = v74;
              LOBYTE(v267[0]) = 1;
              goto LABEL_173;
            }

            *v265 = 8;
            *&v265[4] = v252;
            v266 = 0;
            v81 = v253;
            if (v253)
            {
              atomic_fetch_add_explicit(v253, 2u, memory_order_relaxed);
              v266 = v81;
            }

            LOBYTE(v267[0]) = 0;
            do
            {
              v83 = (v249 + 1);
              LODWORD(v249) = v83;
              if (v248 <= v83)
              {
                __break(0xC471u);
                JUMPOUT(0x22576BCF8);
              }

              v84 = v246 + 32 * v83;
              v82 = *v84;
              v251 = *v84;
              v252 = *(v84 + 4);
              v85 = *v84;
              if (*v84 <= 8u)
              {
                if (((1 << v85) & 0x38) != 0)
                {
                  v253 = *(v84 + 3);
LABEL_159:
                  v82 = v251;
                  goto LABEL_160;
                }

                if (((1 << v85) & 0xC4) != 0)
                {
                  v253 = *(v84 + 3);
                  goto LABEL_159;
                }

                if (v85 == 8)
                {
                  v253 = 0;
                  v86 = *(v84 + 3);
                  if (v86)
                  {
                    atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
                    v87 = v253;
                    v253 = v86;
                    if (v87)
                    {
                      if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v87, v9);
                      }
                    }
                  }

                  goto LABEL_159;
                }
              }

LABEL_160:
              v254 = v252;
              v255 = DWORD2(v252);
            }

            while (v82 == 82);
            if (!LOBYTE(v267[0]))
            {
              if (!WGSL::parseLanguageFeature(&v266))
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v14 = v260;
                goto LABEL_221;
              }

              if (v251 != 48)
              {
                v99 = 4;
                v100 = LOBYTE(v267[0]);
                if (LOBYTE(v267[0]) == 255)
                {
                  goto LABEL_227;
                }

                goto LABEL_222;
              }

              while (2)
              {
                v102 = (v249 + 1);
                LODWORD(v249) = v102;
                if (v248 <= v102)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22576BD10);
                }

                v103 = v246 + 32 * v102;
                v101 = *v103;
                v251 = *v103;
                v252 = *(v103 + 4);
                v104 = *v103;
                if (*v103 <= 8u)
                {
                  if (((1 << v104) & 0x38) != 0)
                  {
                    v253 = *(v103 + 3);
                    goto LABEL_201;
                  }

                  if (((1 << v104) & 0xC4) != 0)
                  {
                    v253 = *(v103 + 3);
                    goto LABEL_201;
                  }

                  if (v104 == 8)
                  {
                    v253 = 0;
                    v105 = *(v103 + 3);
                    if (v105)
                    {
                      atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
                      v106 = v253;
                      v253 = v105;
                      if (v106)
                      {
                        if (atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v106, v9);
                        }
                      }
                    }

LABEL_201:
                    v101 = v251;
                  }
                }

                v254 = v252;
                v255 = DWORD2(v252);
                if (v101 != 82)
                {
                  v99 = 0;
                  v100 = LOBYTE(v267[0]);
                  if (LOBYTE(v267[0]) == 255)
                  {
                    goto LABEL_227;
                  }

                  goto LABEL_222;
                }

                continue;
              }
            }

LABEL_173:
            v88 = WGSL::toString();
            if (LOBYTE(v267[0]) != 1)
            {
              goto LABEL_578;
            }

            WGSL::toString();
            if (v274)
            {
              v90 = *(v274 + 1);
              v91 = v273;
              if (v273)
              {
LABEL_176:
                v92 = *(v91 + 4);
                if (v92 < 0)
                {
                  goto LABEL_581;
                }

                v21 = __OFADD__(v92, 12);
                v93 = v92 + 12;
                v94 = v21;
                if (v90 < 0)
                {
                  goto LABEL_581;
                }

                goto LABEL_187;
              }
            }

            else
            {
              v90 = 0;
              v91 = v273;
              if (v273)
              {
                goto LABEL_176;
              }
            }

            v93 = 12;
            if (v89)
            {
              v94 = 1;
            }

            else
            {
              v94 = 0;
            }

            if (v90 < 0)
            {
LABEL_581:
              __break(0xC471u);
              JUMPOUT(0x22576BD00);
            }

LABEL_187:
            if (v94)
            {
              goto LABEL_581;
            }

            v21 = __OFADD__(v90, v93);
            v95 = v90 + v93;
            if (v21)
            {
              goto LABEL_581;
            }

            v96 = (v95 + 11);
            if (__OFADD__(v95, 11))
            {
              goto LABEL_581;
            }

            if (!v274)
            {
              if (!v91)
              {
                v98 = 1;
                goto LABEL_214;
              }

LABEL_195:
              v98 = (*(v91 + 16) >> 2) & 1;
              goto LABEL_214;
            }

            v97 = *(v274 + 4);
            v98 = (v97 >> 2) & 1;
            if (v91 && (v97 & 4) != 0)
            {
              goto LABEL_195;
            }

LABEL_214:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v96, v98, "Expected a ", 0xBuLL, v274, ", but got a ", 0xCuLL, v91, &v260);
            v14 = v260;
            if (!v260)
            {
              goto LABEL_581;
            }

            v107 = v273;
            v273 = 0;
            if (v107 && atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v107, v9);
            }

            v108 = v274;
            v274 = 0;
            if (v108 && atomic_fetch_add_explicit(v108, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v108, v9);
            }

LABEL_221:
            v243 = v3;
            v244 = v15 | ((v255 - v15) << 32);
            v80 = 1;
            v99 = 1;
            v100 = LOBYTE(v267[0]);
            if (LOBYTE(v267[0]) == 255)
            {
              goto LABEL_227;
            }

LABEL_222:
            if (!v100 && *v265 == 8)
            {
              v109 = v266;
              v266 = 0;
              if (v109)
              {
                if (atomic_fetch_add_explicit(v109, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v109, v9);
                }
              }
            }

LABEL_227:
            if (v99)
            {
              if (v99 == 4)
              {
                if (v251 == 73)
                {
                  goto LABEL_239;
                }

                WGSL::toString();
                WGSL::toString();
                v11 = v271;
                v10 = v272;
                if (v272)
                {
                  v194 = *(v272 + 4);
                  if (!v271)
                  {
                    goto LABEL_476;
                  }

                  goto LABEL_458;
                }

LABEL_475:
                v194 = 0;
                if (!v11)
                {
LABEL_476:
                  v196 = 12;
                  v197 = v21;
                  if (v194 < 0)
                  {
                    goto LABEL_599;
                  }

                  goto LABEL_480;
                }

LABEL_458:
                v195 = *(v11 + 4);
                if (v195 < 0)
                {
                  goto LABEL_599;
                }

                v21 = __OFADD__(v195, 12);
                v196 = v195 + 12;
                v197 = v21;
                if (v194 < 0)
                {
                  goto LABEL_599;
                }

LABEL_480:
                if (v197)
                {
                  goto LABEL_599;
                }

                v21 = __OFADD__(v194, v196);
                v203 = v194 + v196;
                if (v21)
                {
                  goto LABEL_599;
                }

                v204 = (v203 + 11);
                if (__OFADD__(v203, 11))
                {
                  goto LABEL_599;
                }

                if (v10)
                {
                  v205 = *(v10 + 16);
                  v206 = (v205 >> 2) & 1;
                  if (!v11 || (v205 & 4) == 0)
                  {
LABEL_504:
                    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v204, v206, "Expected a ", 0xBuLL, v10, ", but got a ", 0xCuLL, v11, v265);
                    v14 = *v265;
                    if (*v265)
                    {
                      v211 = v271;
                      v271 = 0;
                      if (v211 && atomic_fetch_add_explicit(v211, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v211, v9);
                      }

                      v212 = v272;
                      v272 = 0;
                      if (v212 && atomic_fetch_add_explicit(v212, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v212, v9);
                      }

                      v213 = v15 | ((v255 - v15) << 32);
LABEL_512:
                      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
                      v242 = v213;
                      v191 = v3;
                      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
                      {
                        goto LABEL_525;
                      }

                      goto LABEL_524;
                    }

LABEL_599:
                    __break(0xC471u);
                    JUMPOUT(0x22576BD98);
                  }
                }

                else if (!v11)
                {
                  v206 = 1;
                  goto LABEL_504;
                }

                v206 = (*(v11 + 16) >> 2) & 1;
                goto LABEL_504;
              }

              if ((v80 & 1) == 0)
              {
                goto LABEL_138;
              }

              if (v14)
              {
                v3 = v243;
                v213 = v244;
                goto LABEL_512;
              }

              v191 = v243;
              v242 = v244;
LABEL_525:
              v190 = v242;
              goto LABEL_526;
            }

            v74 = v251;
            if (v251 == 73)
            {
              while (1)
              {
LABEL_239:
                v111 = (v249 + 1);
                LODWORD(v249) = v111;
                if (v248 <= v111)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22576BD18);
                }

                v112 = v246 + 32 * v111;
                v110 = *v112;
                v251 = *v112;
                v252 = *(v112 + 4);
                v113 = *v112;
                if (*v112 > 8u)
                {
                  goto LABEL_238;
                }

                if (((1 << v113) & 0x38) != 0)
                {
                  v253 = *(v112 + 3);
                }

                else if (((1 << v113) & 0xC4) != 0)
                {
                  v253 = *(v112 + 3);
                }

                else
                {
                  if (v113 != 8)
                  {
                    goto LABEL_238;
                  }

                  v253 = 0;
                  v114 = *(v112 + 3);
                  if (v114)
                  {
                    atomic_fetch_add_explicit(v114, 2u, memory_order_relaxed);
                    v115 = v253;
                    v253 = v114;
                    if (v115)
                    {
                      if (atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v115, v9);
                      }
                    }
                  }
                }

                v110 = v251;
LABEL_238:
                v254 = v252;
                v255 = DWORD2(v252);
                if (v110 != 82)
                {
                  v14 &= 0xFFFFFFFFFFFFFF00;
                  goto LABEL_138;
                }
              }
            }
          }
        }
      }
    }

    if (v251 == 18)
    {
      break;
    }

    if (v251 != 21)
    {
      v175 = v234;
      v174 = v236;
      v176 = v232;
LABEL_417:
      while (v73 != 73)
      {
        if (v73 == 1)
        {
          *v238 = 0;
          *(v238 + 32) = 0;
          goto LABEL_533;
        }

        WGSL::Parser<WGSL::Lexer<char16_t>>::parseDeclaration(v265, v245);
        v177 = v266;
        if (!v266)
        {
          v184 = v245[0];
          v185 = *(v245[0] + 76);
          if (v185 == *(v245[0] + 72))
          {
            v186 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v245[0] + 64, v185 + 1, v265);
            v185 = *(v184 + 76);
            v187 = *(v184 + 64);
            v188 = *v186;
          }

          else
          {
            v187 = *(v245[0] + 64);
            v188 = *v265;
          }

          *(v187 + 8 * v185) = v188;
          ++*(v184 + 76);
          v178 = v266;
          if (!v266)
          {
            goto LABEL_446;
          }

LABEL_442:
          if (v178 != 255)
          {
            v189 = *v265;
            *v265 = 0;
            if (v189)
            {
              if (atomic_fetch_add_explicit(v189, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v189, v9);
              }
            }
          }

          goto LABEL_446;
        }

        if (v266 != 1)
        {
          goto LABEL_578;
        }

        v174 = *v265;
        if (*v265)
        {
          atomic_fetch_add_explicit(*v265, 2u, memory_order_relaxed);
        }

        v176 = *&v265[8];
        v175 = *&v265[16];
        v178 = v266;
        if (v266)
        {
          goto LABEL_442;
        }

LABEL_446:
        if (v177)
        {
          v233 = v176;
          v235 = v175;
          v237 = v174;
          goto LABEL_450;
        }

        v73 = v251;
      }

      while (1)
      {
        v179 = (v249 + 1);
        LODWORD(v249) = v179;
        if (v248 <= v179)
        {
          __break(0xC471u);
          JUMPOUT(0x22576BD20);
        }

        v180 = v246 + 32 * v179;
        v73 = *v180;
        v251 = *v180;
        v252 = *(v180 + 4);
        v181 = *v180;
        if (*v180 > 8u)
        {
          goto LABEL_427;
        }

        if (((1 << v181) & 0x38) != 0)
        {
          v253 = *(v180 + 3);
        }

        else if (((1 << v181) & 0xC4) != 0)
        {
          v253 = *(v180 + 3);
        }

        else
        {
          if (v181 != 8)
          {
            goto LABEL_427;
          }

          v253 = 0;
          v182 = *(v180 + 3);
          if (v182)
          {
            atomic_fetch_add_explicit(v182, 2u, memory_order_relaxed);
            v183 = v253;
            v253 = v182;
            if (v183)
            {
              if (atomic_fetch_add_explicit(v183, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v183, v9);
              }
            }
          }
        }

        v73 = v251;
LABEL_427:
        v254 = v252;
        v255 = DWORD2(v252);
        if (v73 != 82)
        {
          goto LABEL_417;
        }
      }
    }

    v3 = v254;
    v116 = v255;
    do
    {
      v118 = (v249 + 1);
      LODWORD(v249) = v118;
      if (v248 <= v118)
      {
        __break(0xC471u);
        JUMPOUT(0x22576BD48);
      }

      v119 = v246 + 32 * v118;
      v117 = *v119;
      v251 = *v119;
      v252 = *(v119 + 4);
      v120 = *v119;
      if (*v119 <= 8u)
      {
        if (((1 << v120) & 0x38) != 0)
        {
          v253 = *(v119 + 3);
LABEL_255:
          v117 = v251;
          goto LABEL_256;
        }

        if (((1 << v120) & 0xC4) != 0)
        {
          v253 = *(v119 + 3);
          goto LABEL_255;
        }

        if (v120 == 8)
        {
          v253 = 0;
          v121 = *(v119 + 3);
          if (v121)
          {
            atomic_fetch_add_explicit(v121, 2u, memory_order_relaxed);
            v122 = v253;
            v253 = v121;
            if (v122)
            {
              if (atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v122, v9);
              }
            }
          }

          goto LABEL_255;
        }
      }

LABEL_256:
      v254 = v252;
      v255 = DWORD2(v252);
    }

    while (v117 == 82);
    v241 = 0;
    while (1)
    {
      if (v117 != 8)
      {
        WGSL::toString();
        WGSL::toString();
        if (v260)
        {
          v199 = *(v260 + 1);
          if (v274)
          {
LABEL_468:
            v200 = *(v274 + 1);
            if (v200 < 0)
            {
              goto LABEL_600;
            }

            v21 = __OFADD__(v200, 12);
            v201 = v200 + 12;
            v202 = v21;
            if (v199 < 0)
            {
              goto LABEL_600;
            }

            goto LABEL_494;
          }
        }

        else
        {
          v199 = 0;
          if (v274)
          {
            goto LABEL_468;
          }
        }

        v201 = 12;
        if (v198)
        {
          v202 = 1;
        }

        else
        {
          v202 = 0;
        }

        if (v199 < 0)
        {
          goto LABEL_600;
        }

LABEL_494:
        if (v202)
        {
          goto LABEL_600;
        }

        v21 = __OFADD__(v199, v201);
        v207 = v199 + v201;
        if (v21)
        {
          goto LABEL_600;
        }

        v208 = (v207 + 11);
        if (__OFADD__(v207, 11))
        {
          goto LABEL_600;
        }

        if (v260)
        {
          v209 = *(v260 + 4);
          v210 = (v209 >> 2) & 1;
          if (!v274 || (v209 & 4) == 0)
          {
LABEL_515:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v208, v210, "Expected a ", 0xBuLL, v260, ", but got a ", 0xCuLL, v274, v265);
            v14 = *v265;
            if (*v265)
            {
              v214 = v274;
              v274 = 0;
              if (v214 && atomic_fetch_add_explicit(v214, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v214, v9);
              }

              v215 = v260;
              v260 = 0;
              if (!v215)
              {
                goto LABEL_522;
              }

LABEL_520:
              if (atomic_fetch_add_explicit(v215, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v215, v9);
              }

LABEL_522:
              v242 = v116 | ((v255 - v116) << 32);
              v191 = v3;
              goto LABEL_523;
            }

LABEL_600:
            __break(0xC471u);
            JUMPOUT(0x22576BDA0);
          }
        }

        else if (!v274)
        {
          v210 = 1;
          goto LABEL_515;
        }

        v210 = (*(v274 + 16) >> 2) & 1;
        goto LABEL_515;
      }

      v129 = v253;
      if (v253)
      {
        atomic_fetch_add_explicit(v253, 2u, memory_order_relaxed);
      }

      do
      {
        v131 = (v249 + 1);
        LODWORD(v249) = v131;
        if (v248 <= v131)
        {
          __break(0xC471u);
          JUMPOUT(0x22576BD28);
        }

        v132 = v246 + 32 * v131;
        v130 = *v132;
        v251 = *v132;
        v252 = *(v132 + 4);
        v133 = *v132;
        if (*v132 <= 8u)
        {
          if (((1 << v133) & 0x38) != 0)
          {
            v253 = *(v132 + 3);
LABEL_285:
            v130 = v251;
            goto LABEL_286;
          }

          if (((1 << v133) & 0xC4) != 0)
          {
            v253 = *(v132 + 3);
            goto LABEL_285;
          }

          if (v133 == 8)
          {
            v253 = 0;
            v134 = *(v132 + 3);
            if (v134)
            {
              atomic_fetch_add_explicit(v134, 2u, memory_order_relaxed);
              v135 = v253;
              v253 = v134;
              if (v135)
              {
                if (atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v135, v9);
                }
              }
            }

            goto LABEL_285;
          }
        }

LABEL_286:
        v254 = v252;
        v255 = DWORD2(v252);
      }

      while (v130 == 82);
      if (!v129)
      {
        goto LABEL_326;
      }

      v136 = *(v129 + 1);
      v137 = *(v129 + 1);
      if (v136 == "f16" || v137 != 3)
      {
        if (v137 == 3 && v136 == "f16")
        {
          goto LABEL_309;
        }

LABEL_326:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v239 = v3;
        v240 = *v265;
        v242 = v116 | ((v255 - v116) << 32);
        v241 = 1;
        v139 = 1;
        if (v129)
        {
          goto LABEL_327;
        }

        goto LABEL_330;
      }

      if ((*(v129 + 16) & 4) != 0)
      {
        if (*v136 == 102 && *(v136 + 1) == 13873)
        {
          goto LABEL_309;
        }

        goto LABEL_326;
      }

      if (*v136 != 102 || *(v136 + 2) != 3538993)
      {
        goto LABEL_326;
      }

LABEL_309:
      *(v245[0] + 34) |= 1u;
      if (v130 == 48)
      {
        while (1)
        {
          v141 = (v249 + 1);
          LODWORD(v249) = v141;
          if (v248 <= v141)
          {
            __break(0xC471u);
            JUMPOUT(0x22576BD38);
          }

          v142 = v246 + 32 * v141;
          v140 = *v142;
          v251 = *v142;
          v252 = *(v142 + 4);
          v143 = *v142;
          if (*v142 > 8u)
          {
            goto LABEL_313;
          }

          if (((1 << v143) & 0x38) != 0)
          {
            v253 = *(v142 + 3);
          }

          else if (((1 << v143) & 0xC4) != 0)
          {
            v253 = *(v142 + 3);
          }

          else
          {
            if (v143 != 8)
            {
              goto LABEL_313;
            }

            v253 = 0;
            v144 = *(v142 + 3);
            if (v144)
            {
              atomic_fetch_add_explicit(v144, 2u, memory_order_relaxed);
              v145 = v253;
              v253 = v144;
              if (v145)
              {
                if (atomic_fetch_add_explicit(v145, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v145, v9);
                }
              }
            }
          }

          v140 = v251;
LABEL_313:
          v254 = v252;
          v255 = DWORD2(v252);
          if (v140 != 82)
          {
            v139 = 0;
            goto LABEL_327;
          }
        }
      }

      v139 = 4;
LABEL_327:
      if (atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v129, v9);
      }

LABEL_330:
      if (v139)
      {
        break;
      }

      v117 = v251;
      if (v251 == 73)
      {
        goto LABEL_359;
      }
    }

    if (v139 == 4)
    {
      if (v251 == 73)
      {
        while (1)
        {
LABEL_359:
          v155 = (v249 + 1);
          LODWORD(v249) = v155;
          if (v248 <= v155)
          {
            __break(0xC471u);
            JUMPOUT(0x22576BD50);
          }

          v156 = v246 + 32 * v155;
          v154 = *v156;
          v251 = *v156;
          v252 = *(v156 + 4);
          v157 = *v156;
          if (*v156 > 8u)
          {
            goto LABEL_358;
          }

          if (((1 << v157) & 0x38) != 0)
          {
            v253 = *(v156 + 3);
          }

          else if (((1 << v157) & 0xC4) != 0)
          {
            v253 = *(v156 + 3);
          }

          else
          {
            if (v157 != 8)
            {
              goto LABEL_358;
            }

            v253 = 0;
            v158 = *(v156 + 3);
            if (v158)
            {
              atomic_fetch_add_explicit(v158, 2u, memory_order_relaxed);
              v159 = v253;
              v253 = v158;
              if (v159)
              {
                if (atomic_fetch_add_explicit(v159, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v159, v9);
                }
              }
            }
          }

          v154 = v251;
LABEL_358:
          v254 = v252;
          v255 = DWORD2(v252);
          if (v154 != 82)
          {
            v240 &= 0xFFFFFFFFFFFFFF00;
            goto LABEL_138;
          }
        }
      }

      WGSL::toString();
      WGSL::toString();
      if (v273)
      {
        v222 = *(v273 + 1);
      }

      else
      {
        v222 = 0;
      }

      if (v272)
      {
        v223 = *(v272 + 4);
        if (v223 < 0)
        {
          goto LABEL_602;
        }
      }

      else
      {
        v223 = 0;
      }

      v21 = __OFADD__(v223, 12);
      v224 = v223 + 12;
      v225 = v21;
      if (v222 < 0)
      {
        goto LABEL_602;
      }

      if (v225)
      {
        goto LABEL_602;
      }

      v21 = __OFADD__(v222, v224);
      v226 = v222 + v224;
      if (v21)
      {
        goto LABEL_602;
      }

      v227 = (v226 + 11);
      if (__OFADD__(v226, 11))
      {
        goto LABEL_602;
      }

      if (v273)
      {
        v228 = *(v273 + 4);
        v229 = (v228 >> 2) & 1;
        if (!v272 || (v228 & 4) == 0)
        {
LABEL_571:
          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v227, v229, "Expected a ", 0xBuLL, v273, ", but got a ", 0xCuLL, v272, v265);
          v14 = *v265;
          if (*v265)
          {
            v230 = v272;
            v272 = 0;
            if (v230 && atomic_fetch_add_explicit(v230, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v230, v9);
            }

            v215 = v273;
            v273 = 0;
            if (!v215)
            {
              goto LABEL_522;
            }

            goto LABEL_520;
          }

LABEL_602:
          __break(0xC471u);
          JUMPOUT(0x22576BDB0);
        }
      }

      else if (!v272)
      {
        v229 = 1;
        goto LABEL_571;
      }

      v229 = (*(v272 + 16) >> 2) & 1;
      goto LABEL_571;
    }

    if (v241)
    {
      v14 = v240;
      if (!v240)
      {
        v191 = v239;
        goto LABEL_525;
      }

      v191 = v239;
      v3 = v239;
LABEL_523:
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
LABEL_524:
        WTF::StringImpl::destroy(v14, v9);
        v191 = v3;
        goto LABEL_525;
      }

      goto LABEL_525;
    }
  }

  do
  {
    v124 = (v249 + 1);
    LODWORD(v249) = v124;
    if (v248 <= v124)
    {
      __break(0xC471u);
      JUMPOUT(0x22576BD40);
    }

    v125 = v246 + 32 * v124;
    v123 = *v125;
    v251 = *v125;
    v252 = *(v125 + 4);
    v126 = *v125;
    if (*v125 <= 8u)
    {
      if (((1 << v126) & 0x38) != 0)
      {
        v253 = *(v125 + 3);
LABEL_268:
        v123 = v251;
        goto LABEL_269;
      }

      if (((1 << v126) & 0xC4) != 0)
      {
        v253 = *(v125 + 3);
        goto LABEL_268;
      }

      if (v126 == 8)
      {
        v253 = 0;
        v127 = *(v125 + 3);
        if (v127)
        {
          atomic_fetch_add_explicit(v127, 2u, memory_order_relaxed);
          v128 = v253;
          v253 = v127;
          if (v128)
          {
            if (atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v128, v9);
            }
          }
        }

        goto LABEL_268;
      }
    }

LABEL_269:
    v254 = v252;
    v255 = DWORD2(v252);
  }

  while (v123 == 82);
  WGSL::Parser<WGSL::Lexer<unsigned char>>::parseDiagnostic(v265, v245);
  if (!v270)
  {
    if (v251 == 73)
    {
      while (1)
      {
        v149 = (v249 + 1);
        LODWORD(v249) = v149;
        if (v248 <= v149)
        {
          __break(0xC471u);
          JUMPOUT(0x22576BD58);
        }

        v150 = v246 + 32 * v149;
        v148 = *v150;
        v251 = *v150;
        v252 = *(v150 + 4);
        v151 = *v150;
        if (*v150 <= 8u)
        {
          if (((1 << v151) & 0x38) != 0)
          {
            v253 = *(v150 + 3);
          }

          else if (((1 << v151) & 0xC4) != 0)
          {
            v253 = *(v150 + 3);
          }

          else
          {
            if (v151 != 8)
            {
              goto LABEL_342;
            }

            v253 = 0;
            v152 = *(v150 + 3);
            if (v152)
            {
              atomic_fetch_add_explicit(v152, 2u, memory_order_relaxed);
              v153 = v253;
              v253 = v152;
              if (v153)
              {
                if (atomic_fetch_add_explicit(v153, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v153, v146);
                }
              }
            }
          }

          v148 = v251;
        }

LABEL_342:
        v254 = v252;
        v255 = DWORD2(v252);
        if (v148 != 82)
        {
          v260 = v13;
          v261 = v231;
          v262 = DWORD2(v252) - v231;
          WGSL::AST::Builder::construct<WGSL::AST::DiagnosticDirective,WGSL::SourceSpan,WGSL::AST::Diagnostic,void>();
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v264)
    {
      v161 = *(v264 + 1);
      v162 = v263;
      if (v263)
      {
LABEL_372:
        v163 = *(v162 + 1);
        if (v163 < 0)
        {
          goto LABEL_598;
        }

        v21 = __OFADD__(v163, 12);
        v164 = v163 + 12;
        v165 = v21;
        if (v161 < 0)
        {
          goto LABEL_598;
        }

        goto LABEL_386;
      }
    }

    else
    {
      v161 = 0;
      v162 = v263;
      if (v263)
      {
        goto LABEL_372;
      }
    }

    v164 = 12;
    if (v160)
    {
      v165 = 1;
    }

    else
    {
      v165 = 0;
    }

    if (v161 < 0)
    {
      goto LABEL_598;
    }

LABEL_386:
    if (v165)
    {
      goto LABEL_598;
    }

    v21 = __OFADD__(v161, v164);
    v166 = v161 + v164;
    if (v21)
    {
      goto LABEL_598;
    }

    v167 = (v166 + 11);
    if (__OFADD__(v166, 11))
    {
      goto LABEL_598;
    }

    if (v264)
    {
      v168 = *(v264 + 4);
      v169 = (v168 >> 2) & 1;
      if (!v162 || (v168 & 4) == 0)
      {
LABEL_396:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v167, v169, "Expected a ", 0xBuLL, v264, ", but got a ", 0xCuLL, v162, &v260);
        v147 = v260;
        if (v260)
        {
          v170 = v263;
          v263 = 0;
          if (v170 && atomic_fetch_add_explicit(v170, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v170, v146);
          }

          v171 = v264;
          v264 = 0;
          if (v171 && atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v171, v146);
          }

          v233 = v13;
          v235 = v231 | ((v255 - v231) << 32);
          goto LABEL_404;
        }

LABEL_598:
        __break(0xC471u);
        JUMPOUT(0x22576BD90);
      }
    }

    else if (!v162)
    {
      v169 = 1;
      goto LABEL_396;
    }

    v169 = (*(v162 + 16) >> 2) & 1;
    goto LABEL_396;
  }

  if (v270 != 1)
  {
LABEL_578:
    mpark::throw_bad_variant_access(v88);
  }

  v147 = *v265;
  if (*v265)
  {
    atomic_fetch_add_explicit(*v265, 2u, memory_order_relaxed);
  }

  v233 = *&v265[8];
  v235 = *&v265[16];
LABEL_404:
  if (v270 != 255)
  {
    if (v270)
    {
      v173 = *v265;
      *v265 = 0;
      if (!v173)
      {
        goto LABEL_415;
      }
    }

    else
    {
      if (v269 == 1)
      {
        v172 = v268;
        v267[1] = off_2838D37C0;
        v268 = 0;
        if (v172)
        {
          if (atomic_fetch_add_explicit(v172, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v172, v146);
          }
        }
      }

      v173 = v267[0];
      *&v265[8] = off_2838D37C0;
      v267[0] = 0;
      if (!v173)
      {
        goto LABEL_415;
      }
    }

    if (atomic_fetch_add_explicit(v173, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v173, v146);
    }
  }

LABEL_415:
  v237 = v147;
LABEL_450:
  v190 = v235;
  v14 = v237;
  v191 = v233;
LABEL_526:
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    v216 = WTF::fastMalloc(0x18);
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  else
  {
    v216 = WTF::fastMalloc(0x18);
  }

  *v216 = v14;
  v216[1] = v191;
  v216[2] = v190;
  *v238 = v216;
  *(v238 + 8) = 0x100000001;
  *(v238 + 16) = 0;
  *(v238 + 24) = 0;
  *(v238 + 32) = 1;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }

    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }
  }

LABEL_533:
  if (v251 == 8)
  {
    v217 = v253;
    v253 = 0;
    if (v217)
    {
      if (atomic_fetch_add_explicit(v217, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v217, v9);
      }
    }
  }

  result = v246;
  if (v248)
  {
    v219 = 32 * v248;
    v220 = (v246 + 24);
    do
    {
      if (*(v220 - 6) == 8)
      {
        v221 = *v220;
        *v220 = 0;
        if (v221)
        {
          if (atomic_fetch_add_explicit(v221, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v221, v9);
          }
        }
      }

      v220 += 4;
      v219 -= 32;
    }

    while (v219);
    result = v246;
  }

  if (result)
  {
    v246 = 0;
    v247 = 0;
    return WTF::fastFree(result, v9);
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  v2 = result;
  while (1)
  {
    v5 = *(v2 + 9);
    v6 = (*(v2 + 10) + 1);
    *(v2 + 10) = v6;
    if (v5 <= v6)
    {
      break;
    }

    v7 = *(v2 + 3) + 32 * v6;
    v3 = *v7;
    *(v2 + 14) = *v7;
    *(v2 + 60) = *(v7 + 4);
    v8 = *v7;
    if (*v7 <= 8u)
    {
      if (((1 << v8) & 0x38) != 0)
      {
        *(v2 + 10) = *(v7 + 24);
      }

      else if (((1 << v8) & 0xC4) != 0)
      {
        *(v2 + 10) = *(v7 + 24);
      }

      else
      {
        if (v8 != 8)
        {
          goto LABEL_4;
        }

        *(v2 + 10) = 0;
        v9 = *(v7 + 24);
        if (v9)
        {
          atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
          result = *(v2 + 10);
          *(v2 + 10) = v9;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }
      }

      v3 = *(v2 + 14);
    }

LABEL_4:
    v4 = *(v2 + 17);
    *(v2 + 11) = *(v2 + 60);
    *(v2 + 24) = v4;
    if (v3 != 82)
    {
      return result;
    }
  }

  __break(0xC471u);
  return result;
}

void WGSL::Parser<WGSL::Lexer<unsigned char>>::parseDiagnostic(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  if (*(a2 + 56) != 67)
  {
    WGSL::toString();
    WGSL::toString();
    if (v99)
    {
      v15 = *(v99 + 1);
      if (v98)
      {
LABEL_18:
        v16 = *(v98 + 4);
        if (v16 < 0)
        {
          goto LABEL_176;
        }

        v14 = __OFADD__(v16, 12);
        v17 = v16 + 12;
        v18 = v14;
        if (v15 < 0)
        {
          goto LABEL_176;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v15 = 0;
      if (v98)
      {
        goto LABEL_18;
      }
    }

    v17 = 12;
    v18 = v14;
    if (v15 < 0)
    {
      goto LABEL_176;
    }

LABEL_50:
    if (v18)
    {
      goto LABEL_176;
    }

    v14 = __OFADD__(v15, v17);
    v33 = v15 + v17;
    if (v14)
    {
      goto LABEL_176;
    }

    v34 = (v33 + 11);
    if (__OFADD__(v33, 11))
    {
      goto LABEL_176;
    }

    if (v99)
    {
      v35 = *(v99 + 4);
      v36 = (v35 >> 2) & 1;
      if (!v98 || (v35 & 4) == 0)
      {
LABEL_70:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v34, v36, "Expected a ", 0xBuLL, v99, ", but got a ", 0xCuLL, v98, v82);
        v42 = *v82;
        if (*v82)
        {
          v43 = v98;
          v98 = 0;
          if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v43, v41);
          }

          v44 = v99;
          v99 = 0;
          if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v44, v41);
          }

          v45 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v42;
          *(a1 + 8) = v4;
          *(a1 + 16) = v45;
          *(a1 + 80) = 1;
          return;
        }

LABEL_176:
        __break(0xC471u);
        JUMPOUT(0x22576C848);
      }
    }

    else if (!v98)
    {
      v36 = 1;
      goto LABEL_70;
    }

    v36 = (*(v98 + 16) >> 2) & 1;
    goto LABEL_70;
  }

  do
  {
    v8 = *(a2 + 36);
    v9 = (*(a2 + 40) + 1);
    *(a2 + 40) = v9;
    if (v8 <= v9)
    {
      __break(0xC471u);
      goto LABEL_181;
    }

    v10 = *(a2 + 24) + 32 * v9;
    v6 = *v10;
    *(a2 + 56) = *v10;
    *(a2 + 60) = *(v10 + 4);
    v11 = *v10;
    if (*v10 <= 8u)
    {
      if (((1 << v11) & 0x38) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
LABEL_4:
        v6 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v11) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
        goto LABEL_4;
      }

      if (v11 == 8)
      {
        *(a2 + 80) = 0;
        v12 = *(v10 + 24);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          v13 = *(a2 + 80);
          *(a2 + 80) = v12;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, a2);
            }
          }
        }

        goto LABEL_4;
      }
    }

LABEL_5:
    v7 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v7;
  }

  while (v6 == 82);
  v19 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v94, a2);
  if (v97)
  {
    if (v97 != 1)
    {
      goto LABEL_174;
    }

    v21 = v94;
    if (v94)
    {
      atomic_fetch_add_explicit(v94, 2u, memory_order_relaxed);
    }

    *(a1 + 8) = v95;
    *a1 = v21;
    goto LABEL_109;
  }

  v22 = WGSL::parseSeverityControl(&v96);
  if (!v22)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v37 = v5 | ((*(a2 + 96) - v5) << 32);
LABEL_108:
    *(a1 + 8) = v4;
    *(a1 + 16) = v37;
LABEL_109:
    *(a1 + 80) = 1;
    goto LABEL_110;
  }

  if (*(a2 + 56) != 48)
  {
    WGSL::toString();
    WGSL::toString();
    if (v93)
    {
      v38 = *(v93 + 1);
      if (v92)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v38 = 0;
      if (v92)
      {
LABEL_62:
        v39 = *(v92 + 1);
        if (v39 < 0)
        {
          goto LABEL_179;
        }

LABEL_86:
        v14 = __OFADD__(v39, 12);
        v49 = v39 + 12;
        v50 = v14;
        if (v38 < 0)
        {
          goto LABEL_179;
        }

        if (v50)
        {
          goto LABEL_179;
        }

        v14 = __OFADD__(v38, v49);
        v51 = v38 + v49;
        if (v14)
        {
          goto LABEL_179;
        }

        v52 = (v51 + 11);
        if (__OFADD__(v51, 11))
        {
          goto LABEL_179;
        }

        if (v93)
        {
          v53 = *(v93 + 4);
          v54 = (v53 >> 2) & 1;
          if (!v92 || (v53 & 4) == 0)
          {
LABEL_100:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v52, v54, "Expected a ", 0xBuLL, v93, ", but got a ", 0xCuLL, v92, v82);
            v55 = *v82;
            if (*v82)
            {
              v56 = v92;
              v92 = 0;
              if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v56, v20);
              }

              v57 = v93;
              v93 = 0;
              if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v57, v20);
              }

              v37 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v55;
              goto LABEL_108;
            }

LABEL_179:
            __break(0xC471u);
            JUMPOUT(0x22576C860);
          }
        }

        else if (!v92)
        {
          v54 = 1;
          goto LABEL_100;
        }

        v54 = (*(v92 + 16) >> 2) & 1;
        goto LABEL_100;
      }
    }

    v39 = 0;
    goto LABEL_86;
  }

  v24 = v22;
  do
  {
    v27 = *(a2 + 36);
    v28 = (*(a2 + 40) + 1);
    *(a2 + 40) = v28;
    if (v27 <= v28)
    {
      __break(0xC471u);
      JUMPOUT(0x22576C850);
    }

    v29 = *(a2 + 24) + 32 * v28;
    v25 = *v29;
    *(a2 + 56) = *v29;
    *(a2 + 60) = *(v29 + 4);
    v30 = *v29;
    if (*v29 <= 8u)
    {
      if (((1 << v30) & 0x38) != 0)
      {
        *(a2 + 80) = *(v29 + 24);
LABEL_33:
        v25 = *(a2 + 56);
        goto LABEL_34;
      }

      if (((1 << v30) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v29 + 24);
        goto LABEL_33;
      }

      if (v30 == 8)
      {
        *(a2 + 80) = 0;
        v31 = *(v29 + 24);
        if (v31)
        {
          atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          v32 = *(a2 + 80);
          *(a2 + 80) = v31;
          if (v32)
          {
            if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v23);
            }
          }
        }

        goto LABEL_33;
      }
    }

LABEL_34:
    v26 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v26;
  }

  while (v25 == 82);
  v19 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v88, a2);
  if (v91)
  {
    if (v91 == 1)
    {
      v40 = v88;
      if (v88)
      {
        atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v89;
      *a1 = v40;
      goto LABEL_166;
    }

LABEL_174:
    mpark::throw_bad_variant_access(v19);
  }

  v46 = *(a2 + 56);
  if (v46 != 69)
  {
LABEL_119:
    if (v46 == 48)
    {
      WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v20);
      v46 = *(a2 + 56);
    }

    if (v46 == 68)
    {
      *v82 = 68;
      *&v82[4] = *(a2 + 60);
      LOBYTE(v83) = 0;
      while (1)
      {
        v61 = *(a2 + 36);
        v62 = (*(a2 + 40) + 1);
        *(a2 + 40) = v62;
        if (v61 <= v62)
        {
          __break(0xC471u);
          JUMPOUT(0x22576C858);
        }

        v63 = *(a2 + 24) + 32 * v62;
        v59 = *v63;
        *(a2 + 56) = *v63;
        *(a2 + 60) = *(v63 + 4);
        v64 = *v63;
        if (*v63 > 8u)
        {
          goto LABEL_125;
        }

        if (((1 << v64) & 0x38) != 0)
        {
          *(a2 + 80) = *(v63 + 24);
        }

        else if (((1 << v64) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v63 + 24);
        }

        else
        {
          if (v64 != 8)
          {
            goto LABEL_125;
          }

          *(a2 + 80) = 0;
          v65 = *(v63 + 24);
          if (v65)
          {
            atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
            v66 = *(a2 + 80);
            *(a2 + 80) = v65;
            if (v66)
            {
              if (atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v66, v20);
              }
            }
          }
        }

        v59 = *(a2 + 56);
LABEL_125:
        v60 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v60;
        if (v59 != 82)
        {
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v82, v20);
          v82[0] = *v24;
          *&v82[16] = v89;
          v68 = v90;
          v90 = 0;
          *&v82[8] = off_2838D37C0;
          v83 = v68;
          v84 = 0;
          v85 = 0;
          std::experimental::fundamentals_v3::expected<WGSL::AST::Diagnostic,WGSL::CompilationMessage>::expected(a1, v82);
          WGSL::AST::Diagnostic::~Diagnostic(v82, v69);
          goto LABEL_167;
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v87)
    {
      v67 = *(v87 + 1);
    }

    else
    {
      v67 = 0;
    }

    if (v86)
    {
      v70 = *(v86 + 1);
      if (v70 < 0)
      {
LABEL_180:
        __break(0xC471u);
LABEL_181:
        JUMPOUT(0x22576C840);
      }
    }

    else
    {
      v70 = 0;
    }

    v14 = __OFADD__(v70, 12);
    v71 = v70 + 12;
    v72 = v14;
    if (v67 < 0)
    {
      goto LABEL_180;
    }

    if (v72)
    {
      goto LABEL_180;
    }

    v14 = __OFADD__(v67, v71);
    v73 = v67 + v71;
    if (v14)
    {
      goto LABEL_180;
    }

    v74 = (v73 + 11);
    if (__OFADD__(v73, 11))
    {
      goto LABEL_180;
    }

    if (v87)
    {
      v75 = *(v87 + 4);
      v76 = (v75 >> 2) & 1;
      if (!v86 || (v75 & 4) == 0)
      {
LABEL_158:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v74, v76, "Expected a ", 0xBuLL, v87, ", but got a ", 0xCuLL, v86, &v100);
        v77 = v100;
        if (v100)
        {
          v78 = v86;
          v86 = 0;
          if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v78, v20);
          }

          v79 = v87;
          v87 = 0;
          if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v79, v20);
          }

          v80 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v77;
          *(a1 + 8) = v4;
          *(a1 + 16) = v80;
LABEL_166:
          *(a1 + 80) = 1;
          goto LABEL_167;
        }

        goto LABEL_180;
      }
    }

    else if (!v86)
    {
      v76 = 1;
      goto LABEL_158;
    }

    v76 = (*(v86 + 16) >> 2) & 1;
    goto LABEL_158;
  }

  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v20);
  v19 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v82, a2);
  if (!v83)
  {
    std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(v82, v47);
    v46 = *(a2 + 56);
    goto LABEL_119;
  }

  if (v83 != 1)
  {
    goto LABEL_174;
  }

  v48 = *v82;
  if (*v82)
  {
    atomic_fetch_add_explicit(*v82, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = *&v82[8];
  *a1 = v48;
  *(a1 + 80) = 1;
  std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(v82, v47);
LABEL_167:
  if (v91 != 255)
  {
    if (v91)
    {
      v81 = v88;
      v88 = 0;
      if (!v81)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v81 = v90;
      v88 = off_2838D37C0;
      v90 = 0;
      if (!v81)
      {
        goto LABEL_110;
      }
    }

    if (atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v81, v20);
    }
  }

LABEL_110:
  if (v97 != 255)
  {
    if (v97)
    {
      v58 = v94;
      v94 = 0;
      if (v58)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v58 = v96;
      v94 = off_2838D37C0;
      v96 = 0;
      if (!v58)
      {
        return;
      }

LABEL_115:
      if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v20);
      }
    }
  }
}

uint64_t WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 56);
  if (v3 == a3)
  {
    *result = a3;
    *(result + 4) = *(a2 + 60);
    *(result + 32) = 0;
    while (1)
    {
      v7 = *(a2 + 36);
      v8 = (*(a2 + 40) + 1);
      *(a2 + 40) = v8;
      if (v7 <= v8)
      {
        __break(0xC471u);
        return result;
      }

      v9 = *(a2 + 24) + 32 * v8;
      v5 = *v9;
      *(a2 + 56) = *v9;
      *(a2 + 60) = *(v9 + 4);
      v10 = *v9;
      if (*v9 <= 8u)
      {
        if (((1 << v10) & 0x38) != 0)
        {
          *(a2 + 80) = *(v9 + 24);
        }

        else if (((1 << v10) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v9 + 24);
        }

        else
        {
          if (v10 != 8)
          {
            goto LABEL_5;
          }

          *(a2 + 80) = 0;
          v11 = *(v9 + 24);
          if (v11)
          {
            atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
            result = *(a2 + 80);
            *(a2 + 80) = v11;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }
            }
          }
        }

        v5 = *(a2 + 56);
      }

LABEL_5:
      v6 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v6;
      if (v5 != 82)
      {
        return result;
      }
    }
  }

  *result = v3;
  *(result + 32) = 1;
  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  if (a2)
  {
    v9 = a2 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22576CAACLL);
  }

  if (a5)
  {
    v10 = a5 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >> 31)
  {
    __break(0xC471u);
LABEL_35:
    JUMPOUT(0x22576CA8CLL);
  }

  v12 = *a3;
  v13 = *a6;
  if (*a3)
  {
    v14 = *(v12 + 4);
    if (v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
    if (v13)
    {
LABEL_11:
      v15 = *(v13 + 4);
      if (((v15 | v10) & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_15;
    }
  }

  v15 = 0;
  if ((v10 & 0x80000000) != 0)
  {
LABEL_31:
    *a7 = 0;
    goto LABEL_32;
  }

LABEL_15:
  v16 = __OFADD__(v10, v15);
  v17 = v10 + v15;
  v18 = v16;
  if (v14 < 0)
  {
    goto LABEL_31;
  }

  if (v18)
  {
    goto LABEL_31;
  }

  v16 = __OFADD__(v14, v17);
  v19 = v14 + v17;
  if (v16)
  {
    goto LABEL_31;
  }

  v20 = (v9 + v19);
  if (__OFADD__(v9, v19))
  {
    goto LABEL_31;
  }

  if (!v12)
  {
    if (!v13)
    {
      v22 = 1;
      goto LABEL_29;
    }

LABEL_27:
    v22 = (*(v13 + 16) >> 2) & 1;
    goto LABEL_29;
  }

  v21 = *(v12 + 16);
  v22 = (v21 >> 2) & 1;
  if (v13 && (v21 & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v20, v22, a1, v9, v12, a4, v10, v13, &v25);
  v24 = v25;
  *a7 = v25;
  if (!v24)
  {
LABEL_32:
    __break(0xC471u);
    goto LABEL_35;
  }

  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 32) != 255)
  {
    if (*(result + 32))
    {
      v2 = 0;
    }

    else
    {
      v2 = *result == 8;
    }

    if (v2)
    {
      v3 = *(result + 24);
      *(result + 24) = 0;
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v4 = result;
          WTF::StringImpl::destroy(v3, a2);
          result = v4;
        }
      }
    }
  }

  *(result + 32) = -1;
  return result;
}

void WGSL::Parser<WGSL::Lexer<unsigned char>>::parseDeclaration(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  v7 = *(a2 + 56);
  if (v7 != 10)
  {
    if (v7 == 14)
    {
      v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseConstAssert(v350, a2);
      if (!v351)
      {
LABEL_58:
        *a1 = *v350;
        *(a1 + 24) = 0;
        return;
      }

      if (v351 != 1)
      {
        goto LABEL_789;
      }

      v10 = *v350;
      if (*v350)
      {
        atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
        *a1 = v10;
        *(a1 + 8) = *&v350[8];
        goto LABEL_12;
      }

      *a1 = 0;
      *(a1 + 8) = *&v350[8];
LABEL_250:
      *(a1 + 24) = 1;
      return;
    }

    if (v7 == 13)
    {
      v343 = 0;
      *&v344 = 0;
      WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableWithAttributes(v350, a2);
      v9 = 0;
      if (v351)
      {
        if (v351 != 1)
        {
          goto LABEL_789;
        }

        v10 = *v350;
        if (*v350)
        {
          atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
          *(a1 + 8) = *&v350[8];
          *a1 = v10;
LABEL_12:
          *(a1 + 24) = 1;
          goto LABEL_36;
        }

        *(a1 + 8) = *&v350[8];
        *a1 = 0;
        goto LABEL_250;
      }

      if (*(a2 + 56) == 73)
      {
        while (1)
        {
          v24 = *(a2 + 36);
          v25 = (*(a2 + 40) + 1);
          *(a2 + 40) = v25;
          if (v24 <= v25)
          {
            __break(0xC471u);
            JUMPOUT(0x22576F524);
          }

          v26 = *(a2 + 24) + 32 * v25;
          v22 = *v26;
          *(a2 + 56) = *v26;
          *(a2 + 60) = *(v26 + 4);
          v27 = *v26;
          if (*v26 > 8u)
          {
            goto LABEL_47;
          }

          if (((1 << v27) & 0x38) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else if (((1 << v27) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else
          {
            if (v27 != 8)
            {
              goto LABEL_47;
            }

            *(a2 + 80) = 0;
            v28 = *(v26 + 24);
            if (v28)
            {
              atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
              v29 = *(a2 + 80);
              *(a2 + 80) = v28;
              if (v29)
              {
                if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v8);
                }
              }
            }
          }

          v22 = *(a2 + 56);
LABEL_47:
          v23 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v23;
          if (v22 != 82)
          {
            goto LABEL_58;
          }
        }
      }

      WGSL::toString();
      WGSL::toString();
      if (v325)
      {
        v39 = *(v325 + 1);
        if (v324)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v39 = 0;
        if (v324)
        {
LABEL_80:
          v40 = *(v324 + 1);
          if (v40 < 0)
          {
            goto LABEL_800;
          }

LABEL_171:
          v83 = __OFADD__(v40, 12);
          v84 = v40 + 12;
          v85 = v83;
          if (v39 < 0)
          {
            goto LABEL_800;
          }

          if (v85)
          {
            goto LABEL_800;
          }

          v83 = __OFADD__(v39, v84);
          v86 = v39 + v84;
          if (v83)
          {
            goto LABEL_800;
          }

          v87 = (v86 + 11);
          if (__OFADD__(v86, 11))
          {
            goto LABEL_800;
          }

          if (v325)
          {
            v88 = *(v325 + 4);
            v89 = (v88 >> 2) & 1;
            if (!v324 || (v88 & 4) == 0)
            {
LABEL_242:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v87, v89, "Expected a ", 0xBuLL, v325, ", but got a ", 0xCuLL, v324, &v343);
              v120 = v343;
              if (v343)
              {
                v121 = v324;
                v324 = 0;
                if (v121 && atomic_fetch_add_explicit(v121, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v121, v119);
                }

                v122 = v325;
                v325 = 0;
                if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v122, v119);
                }

                v123 = v6 | ((*(a2 + 96) - v6) << 32);
                *a1 = v120;
                *(a1 + 8) = v5;
                *(a1 + 16) = v123;
                goto LABEL_250;
              }

LABEL_800:
              __break(0xC471u);
              JUMPOUT(0x22576F55CLL);
            }
          }

          else if (!v324)
          {
            v89 = 1;
            goto LABEL_242;
          }

          v89 = (*(v324 + 16) >> 2) & 1;
          goto LABEL_242;
        }
      }

      v40 = 0;
      goto LABEL_171;
    }

    WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(&v321, a2);
    if (v323)
    {
      if (v323 == 1)
      {
        v19 = v321;
        if (v321)
        {
          atomic_fetch_add_explicit(v321, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = v322;
        *a1 = v19;
        goto LABEL_32;
      }

      goto LABEL_789;
    }

    v30 = *(a2 + 56);
    if (v30 <= 30)
    {
      if (v30 != 23)
      {
        if (v30 != 28)
        {
          goto LABEL_129;
        }

        goto LABEL_107;
      }

      v63 = *(a2 + 88);
      v64 = *(a2 + 96);
      while (1)
      {
        v67 = *(a2 + 36);
        v68 = (*(a2 + 40) + 1);
        *(a2 + 40) = v68;
        if (v67 <= v68)
        {
          __break(0xC471u);
          JUMPOUT(0x22576F53CLL);
        }

        v69 = *(a2 + 24) + 32 * v68;
        v65 = *v69;
        *(a2 + 56) = *v69;
        *(a2 + 60) = *(v69 + 4);
        v70 = *v69;
        if (*v69 > 8u)
        {
          goto LABEL_133;
        }

        if (((1 << v70) & 0x38) != 0)
        {
          *(a2 + 80) = *(v69 + 24);
        }

        else if (((1 << v70) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v69 + 24);
        }

        else
        {
          if (v70 != 8)
          {
            goto LABEL_133;
          }

          *(a2 + 80) = 0;
          v71 = *(v69 + 24);
          if (v71)
          {
            atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
            v72 = *(a2 + 80);
            *(a2 + 80) = v71;
            if (v72)
            {
              if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v72, v8);
              }
            }
          }
        }

        v65 = *(a2 + 56);
LABEL_133:
        v66 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v66;
        if (v65 != 82)
        {
          v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v343, a2);
          if (v346)
          {
            if (v346 == 1)
            {
              v74 = v343;
              if (v343)
              {
                atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
              }

              v2 = *(&v344 + 1);
              v63 = v344;
              goto LABEL_772;
            }

            goto LABEL_789;
          }

          if (*(a2 + 56) == 67)
          {
            v74 = 1;
            while (1)
            {
              v113 = *(a2 + 36);
              v114 = (*(a2 + 40) + 1);
              *(a2 + 40) = v114;
              if (v113 <= v114)
              {
                __break(0xC471u);
                JUMPOUT(0x22576F58CLL);
              }

              v115 = *(a2 + 24) + 32 * v114;
              v111 = *v115;
              *(a2 + 56) = *v115;
              *(a2 + 60) = *(v115 + 4);
              v116 = *v115;
              if (*v115 > 8u)
              {
                goto LABEL_230;
              }

              if (((1 << v116) & 0x38) != 0)
              {
                *(a2 + 80) = *(v115 + 24);
              }

              else if (((1 << v116) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v115 + 24);
              }

              else
              {
                if (v116 != 8)
                {
                  goto LABEL_230;
                }

                *(a2 + 80) = 0;
                v117 = *(v115 + 24);
                if (v117)
                {
                  atomic_fetch_add_explicit(v117, 2u, memory_order_relaxed);
                  v118 = *(a2 + 80);
                  *(a2 + 80) = v117;
                  if (v118)
                  {
                    if (atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v118, v8);
                    }
                  }
                }
              }

              v111 = *(a2 + 56);
LABEL_230:
              v112 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v112;
              if (v111 != 82)
              {
                v309 = v63;
                v311 = v64;
                v170 = 0;
                v171 = 0;
                v327 = 0;
                *&v328 = 0;
                while (1)
                {
                  if (*(a2 + 56) == 68)
                  {
                    goto LABEL_534;
                  }

                  v172 = *(a2 + 88);
                  v173 = *(a2 + 96);
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(&v353, a2);
                  if (v355)
                  {
                    if (v355 != 1)
                    {
                      goto LABEL_789;
                    }

                    v9 = v353;
                    if (v353)
                    {
                      atomic_fetch_add_explicit(v353, 2u, memory_order_relaxed);
                    }

                    v341 = v354;
                    v340 = v9;
                    v342 = 1;
LABEL_467:
                    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }

                    goto LABEL_470;
                  }

                  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v350, a2);
                  if (v352)
                  {
                    if (v352 != 1)
                    {
                      goto LABEL_789;
                    }

                    v174 = *v350;
                    if (*v350)
                    {
                      atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
                    }

                    v341 = *&v350[8];
                    v340 = v174;
                    v342 = 1;
                    goto LABEL_458;
                  }

                  v313 = v74;
                  v175 = v170;
                  v176 = v2;
                  if (*(a2 + 56) != 47)
                  {
                    WGSL::toString();
                    WGSL::toString();
                    if (v330)
                    {
                      v185 = *(v330 + 1);
                    }

                    else
                    {
                      v185 = 0;
                    }

                    if (v318)
                    {
                      v188 = *(v318 + 1);
                      if (v188 < 0)
                      {
                        goto LABEL_811;
                      }
                    }

                    else
                    {
                      v188 = 0;
                    }

                    v83 = __OFADD__(v188, 12);
                    v189 = v188 + 12;
                    v190 = v83;
                    if ((v185 & 0x80000000) == 0 && (v190 & 1) == 0)
                    {
                      v83 = __OFADD__(v185, v189);
                      v191 = v185 + v189;
                      if (!v83)
                      {
                        v192 = (v191 + 11);
                        if (!__OFADD__(v191, 11))
                        {
                          if (v330)
                          {
                            v193 = *(v330 + 4);
                            v194 = (v193 >> 2) & 1;
                            if (!v318 || (v193 & 4) == 0)
                            {
                              goto LABEL_450;
                            }

LABEL_448:
                            v194 = (*(v318 + 16) >> 2) & 1;
                          }

                          else
                          {
                            if (v318)
                            {
                              goto LABEL_448;
                            }

                            v194 = 1;
                          }

LABEL_450:
                          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v192, v194, "Expected a ", 0xBuLL, v330, ", but got a ", 0xCuLL, v318, &v347);
                          v195 = v347;
                          if (v347)
                          {
                            v196 = v318;
                            v318 = 0;
                            if (v196 && atomic_fetch_add_explicit(v196, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v196, v8);
                            }

                            v9 = v330;
                            v330 = 0;
                            if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              v9 = WTF::StringImpl::destroy(v9, v8);
                            }

                            v197 = v173 | ((*(a2 + 96) - v173) << 32);
                            v340 = v195;
                            *&v341 = v172;
                            *(&v341 + 1) = v197;
                            v342 = 1;
                            v2 = v176;
                            v170 = v175;
                            v74 = v313;
                            goto LABEL_458;
                          }
                        }
                      }
                    }

LABEL_811:
                    __break(0xC471u);
                    JUMPOUT(0x22576F5B4);
                  }

                  v170 = v175;
                  v74 = v313;
                  do
                  {
                    v179 = *(a2 + 36);
                    v180 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v180;
                    if (v179 <= v180)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x22576F57CLL);
                    }

                    v181 = *(a2 + 24) + 32 * v180;
                    v177 = *v181;
                    *(a2 + 56) = *v181;
                    *(a2 + 60) = *(v181 + 4);
                    v182 = *v181;
                    if (*v181 <= 8u)
                    {
                      if (((1 << v182) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v181 + 24);
LABEL_406:
                        v177 = *(a2 + 56);
                        goto LABEL_407;
                      }

                      if (((1 << v182) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v181 + 24);
                        goto LABEL_406;
                      }

                      if (v182 == 8)
                      {
                        *(a2 + 80) = 0;
                        v183 = *(v181 + 24);
                        if (v183)
                        {
                          atomic_fetch_add_explicit(v183, 2u, memory_order_relaxed);
                          v184 = *(a2 + 80);
                          *(a2 + 80) = v183;
                          if (v184)
                          {
                            if (atomic_fetch_add_explicit(v184, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v184, v8);
                            }
                          }
                        }

                        goto LABEL_406;
                      }
                    }

LABEL_407:
                    v178 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v178;
                  }

                  while (v177 == 82);
                  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v347, a2);
                  if (!v349)
                  {
                    v187 = *(a2 + 96) - v173;
                    v330 = v172;
                    *&v331 = __PAIR64__(v187, v173);
                    LOBYTE(v318) = 0;
                    WGSL::AST::Builder::construct<WGSL::AST::Parameter,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::AST::ParameterRole,void>();
                  }

                  if (v349 != 1)
                  {
                    goto LABEL_789;
                  }

                  v186 = v347;
                  if (v347)
                  {
                    atomic_fetch_add_explicit(v347, 2u, memory_order_relaxed);
                  }

                  v341 = v348;
                  v340 = v186;
                  v342 = 1;
                  if (v349)
                  {
                    if (v349 != 255)
                    {
                      v9 = v347;
                      v347 = 0;
                      if (v9)
                      {
                        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          v9 = WTF::StringImpl::destroy(v9, v8);
                        }
                      }
                    }
                  }

LABEL_458:
                  if (v352 != 255)
                  {
                    if (v352)
                    {
                      v9 = *v350;
                      *v350 = 0;
                      if (!v9)
                      {
                        goto LABEL_465;
                      }
                    }

                    else
                    {
                      v9 = v351;
                      *v350 = off_2838D37C0;
                      v351 = 0;
                      if (!v9)
                      {
                        goto LABEL_465;
                      }
                    }

                    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }
                  }

LABEL_465:
                  if (v355 != 255)
                  {
                    v9 = v353;
                    if (v355)
                    {
                      goto LABEL_467;
                    }

                    if (v353)
                    {
                      v9 = WTF::fastFree(v353, v8);
                    }
                  }

LABEL_470:
                  if (v342)
                  {
                    if (v342 != 1)
                    {
                      goto LABEL_789;
                    }

                    v74 = v340;
                    if (v340)
                    {
                      atomic_fetch_add_explicit(v340, 2u, memory_order_relaxed);
                    }

                    v198 = 1;
                    v2 = *(&v341 + 1);
                    v314 = v341;
                    v199 = v342;
                    if (!v342)
                    {
                      goto LABEL_391;
                    }

LABEL_497:
                    if (v199 != 255)
                    {
                      v210 = v340;
                      v340 = 0;
                      if (v210)
                      {
                        if (atomic_fetch_add_explicit(v210, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v210, v8);
                        }
                      }
                    }

                    goto LABEL_391;
                  }

                  if (v171 == v328)
                  {
                    v200 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v327, v171 + 1, &v340);
                    v201 = DWORD1(v328);
                    v170 = v327;
                    v327[DWORD1(v328)] = *v200;
                  }

                  else
                  {
                    v170[v171] = v340;
                    v201 = DWORD1(v328);
                  }

                  v171 = v201 + 1;
                  DWORD1(v328) = v201 + 1;
                  if ((v201 + 1) >= 0x100)
                  {
                    WTF::String::number(0xFF);
                    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("function cannot have more than ", 32, &v336, " parameters", 12, v350);
                    v211 = *(a2 + 96);
                    v74 = *v350;
                    *v350 = 0;
                    v212 = v336;
                    v336 = 0;
                    if (v212 && atomic_fetch_add_explicit(v212, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v212, v8);
                    }

                    v2 = v311 | ((v211 - v311) << 32);
                    v198 = 1;
                    v314 = v309;
                    v199 = v342;
                    if (!v342)
                    {
                      goto LABEL_391;
                    }

                    goto LABEL_497;
                  }

                  if (*(a2 + 56) != 48)
                  {
                    v198 = 7;
                    v199 = v342;
                    if (v342)
                    {
                      goto LABEL_497;
                    }

                    goto LABEL_391;
                  }

                  while (2)
                  {
                    v204 = *(a2 + 36);
                    v205 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v205;
                    if (v204 <= v205)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x22576F544);
                    }

                    v206 = *(a2 + 24) + 32 * v205;
                    v202 = *v206;
                    *(a2 + 56) = *v206;
                    *(a2 + 60) = *(v206 + 4);
                    v207 = *v206;
                    if (*v206 <= 8u)
                    {
                      if (((1 << v207) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v206 + 24);
                        goto LABEL_484;
                      }

                      if (((1 << v207) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v206 + 24);
                        goto LABEL_484;
                      }

                      if (v207 == 8)
                      {
                        *(a2 + 80) = 0;
                        v208 = *(v206 + 24);
                        if (v208)
                        {
                          atomic_fetch_add_explicit(v208, 2u, memory_order_relaxed);
                          v209 = *(a2 + 80);
                          *(a2 + 80) = v208;
                          if (v209)
                          {
                            if (atomic_fetch_add_explicit(v209, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v209, v8);
                            }
                          }
                        }

LABEL_484:
                        v202 = *(a2 + 56);
                      }
                    }

                    v203 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v203;
                    if (v202 == 82)
                    {
                      continue;
                    }

                    break;
                  }

                  v198 = 0;
                  v199 = v342;
                  if (v342)
                  {
                    goto LABEL_497;
                  }

LABEL_391:
                  if (v198)
                  {
                    if (v198 != 7)
                    {
                      v264 = v170;
                      v63 = v314;
                      goto LABEL_770;
                    }

                    if (*(a2 + 56) == 68)
                    {
                      while (1)
                      {
LABEL_534:
                        v224 = *(a2 + 36);
                        v225 = (*(a2 + 40) + 1);
                        *(a2 + 40) = v225;
                        if (v224 <= v225)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x22576F594);
                        }

                        v226 = *(a2 + 24) + 32 * v225;
                        v222 = *v226;
                        *(a2 + 56) = *v226;
                        *(a2 + 60) = *(v226 + 4);
                        v227 = *v226;
                        if (*v226 > 8u)
                        {
                          goto LABEL_533;
                        }

                        if (((1 << v227) & 0x38) != 0)
                        {
                          *(a2 + 80) = *(v226 + 24);
                        }

                        else if (((1 << v227) & 0xC4) != 0)
                        {
                          *(a2 + 80) = *(v226 + 24);
                        }

                        else
                        {
                          if (v227 != 8)
                          {
                            goto LABEL_533;
                          }

                          *(a2 + 80) = 0;
                          v228 = *(v226 + 24);
                          if (v228)
                          {
                            atomic_fetch_add_explicit(v228, 2u, memory_order_relaxed);
                            v229 = *(a2 + 80);
                            *(a2 + 80) = v228;
                            if (v229)
                            {
                              if (atomic_fetch_add_explicit(v229, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v229, v8);
                              }
                            }
                          }
                        }

                        v222 = *(a2 + 56);
LABEL_533:
                        v223 = *(a2 + 68);
                        *(a2 + 88) = *(a2 + 60);
                        *(a2 + 96) = v223;
                        if (v222 != 82)
                        {
                          v347 = 0;
                          *&v348 = 0;
                          v340 = 0;
                          if (v222 != 39)
                          {
                            v265 = 0;
                            v266 = v309;
                            goto LABEL_640;
                          }

                          while (2)
                          {
                            v232 = *(a2 + 36);
                            v233 = (*(a2 + 40) + 1);
                            *(a2 + 40) = v233;
                            if (v232 <= v233)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x22576F5A4);
                            }

                            v234 = *(a2 + 24) + 32 * v233;
                            v230 = *v234;
                            *(a2 + 56) = *v234;
                            *(a2 + 60) = *(v234 + 4);
                            v235 = *v234;
                            if (*v234 <= 8u)
                            {
                              if (((1 << v235) & 0x38) != 0)
                              {
                                *(a2 + 80) = *(v234 + 24);
                                goto LABEL_547;
                              }

                              if (((1 << v235) & 0xC4) != 0)
                              {
                                *(a2 + 80) = *(v234 + 24);
                                goto LABEL_547;
                              }

                              if (v235 == 8)
                              {
                                *(a2 + 80) = 0;
                                v236 = *(v234 + 24);
                                if (v236)
                                {
                                  atomic_fetch_add_explicit(v236, 2u, memory_order_relaxed);
                                  v237 = *(a2 + 80);
                                  *(a2 + 80) = v236;
                                  if (v237)
                                  {
                                    if (atomic_fetch_add_explicit(v237, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v237, v8);
                                    }
                                  }
                                }

LABEL_547:
                                v230 = *(a2 + 56);
                              }
                            }

                            v231 = *(a2 + 68);
                            *(a2 + 88) = *(a2 + 60);
                            *(a2 + 96) = v231;
                            if (v230 != 82)
                            {
                              WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(v350, a2);
                              if (v351)
                              {
                                if (v351 == 1)
                                {
                                  v74 = *v350;
                                  if (*v350)
                                  {
                                    atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
                                  }

                                  v63 = *&v350[8];
                                  v2 = *&v350[16];
                                  std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(v350, v267);
LABEL_739:
                                  v264 = v327;
LABEL_770:
                                  if (v264)
                                  {
                                    v327 = 0;
                                    LODWORD(v328) = 0;
                                    WTF::fastFree(v264, v8);
                                  }

LABEL_772:
                                  if (v346 != 255)
                                  {
                                    if (v346)
                                    {
                                      v307 = v343;
                                      v343 = 0;
                                      if (!v307)
                                      {
                                        goto LABEL_779;
                                      }
                                    }

                                    else
                                    {
                                      v307 = v345;
                                      v343 = off_2838D37C0;
                                      v345 = 0;
                                      if (!v307)
                                      {
                                        goto LABEL_779;
                                      }
                                    }

                                    if (atomic_fetch_add_explicit(v307, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v307, v8);
                                    }
                                  }

LABEL_779:
                                  if (v74)
                                  {
                                    atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
                                    *(a1 + 8) = v63;
                                    *(a1 + 16) = v2;
                                    *a1 = v74;
                                    *(a1 + 24) = 1;
                                    if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v74, v8);
                                    }

                                    goto LABEL_33;
                                  }

                                  *(a1 + 8) = v63;
                                  *(a1 + 16) = v2;
                                  *a1 = 0;
LABEL_32:
                                  *(a1 + 24) = 1;
                                  goto LABEL_33;
                                }

LABEL_789:
                                mpark::throw_bad_variant_access(v9);
                              }

                              v265 = *v350;
                              v347 = *v350;
                              v280 = *&v350[8];
                              *v350 = 0;
                              *&v350[8] = 0;
                              *&v348 = v280;
                              v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v353, a2);
                              v282 = v355;
                              if (v355)
                              {
                                v266 = v309;
                                if (v355 != 1)
                                {
                                  goto LABEL_789;
                                }

                                v74 = v353;
                                if (v353)
                                {
                                  atomic_fetch_add_explicit(v353, 2u, memory_order_relaxed);
                                }

                                v2 = *(&v354 + 1);
                                v314 = v354;
                              }

                              else
                              {
                                v340 = v353;
                                v266 = v309;
                              }

                              std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v353, v281);
                              std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(v350, v297);
                              if (v282)
                              {
                                v63 = v314;
                                goto LABEL_737;
                              }

LABEL_640:
                              v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(v350, a2);
                              if (!v351)
                              {
                                v272 = *(a2 + 96) - v311;
                                v353 = v266;
                                *&v354 = __PAIR64__(v272, v311);
                                WGSL::AST::Builder::construct<WGSL::AST::Function,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::Parameter,0ul>,WGSL::AST::Expression *,std::reference_wrapper<WGSL::AST::CompoundStatement>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>();
                              }

                              if (v351 != 1)
                              {
                                goto LABEL_789;
                              }

                              v74 = *v350;
                              if (*v350)
                              {
                                atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
                                v63 = *&v350[8];
                                v2 = *&v350[16];
                                if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v74, v8);
                                  if (!v265)
                                  {
                                    goto LABEL_739;
                                  }
                                }

                                else
                                {
LABEL_737:
                                  if (!v265)
                                  {
                                    goto LABEL_739;
                                  }
                                }
                              }

                              else
                              {
                                v63 = *&v350[8];
                                v2 = *&v350[16];
                                if (!v265)
                                {
                                  goto LABEL_739;
                                }
                              }

                              v347 = 0;
                              LODWORD(v348) = 0;
                              WTF::fastFree(v265, v8);
                              goto LABEL_739;
                            }

                            continue;
                          }
                        }
                      }
                    }

                    v270 = v170;
                    WGSL::toString();
                    WGSL::toString();
                    if (v353)
                    {
                      v271 = v353[1];
                    }

                    else
                    {
                      v271 = 0;
                    }

                    v63 = v309;
                    if (v347)
                    {
                      v290 = v347[1];
                      if (v290 < 0)
                      {
                        goto LABEL_816;
                      }
                    }

                    else
                    {
                      v290 = 0;
                    }

                    v83 = __OFADD__(v290, 12);
                    v291 = v290 + 12;
                    v292 = v83;
                    if ((v271 & 0x80000000) == 0 && (v292 & 1) == 0)
                    {
                      v83 = __OFADD__(v271, v291);
                      v293 = v271 + v291;
                      if (!v83)
                      {
                        v294 = (v293 + 11);
                        if (!__OFADD__(v293, 11))
                        {
                          if (v353)
                          {
                            v295 = v353[4];
                            v296 = (v295 >> 2) & 1;
                            if (!v347 || (v295 & 4) == 0)
                            {
                              goto LABEL_762;
                            }

LABEL_733:
                            v296 = (*(v347 + 16) >> 2) & 1;
                          }

                          else
                          {
                            if (v347)
                            {
                              goto LABEL_733;
                            }

                            v296 = 1;
                          }

LABEL_762:
                          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v294, v296, "Expected a ", 0xBuLL, v353, ", but got a ", 0xCuLL, v347, v350);
                          v74 = *v350;
                          if (*v350)
                          {
                            v305 = v347;
                            v347 = 0;
                            if (v305 && atomic_fetch_add_explicit(v305, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v305, v8);
                            }

                            v306 = v353;
                            v353 = 0;
                            if (v306 && atomic_fetch_add_explicit(v306, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v306, v8);
                            }

                            v2 = v311 | ((*(a2 + 96) - v311) << 32);
                            v264 = v270;
                            goto LABEL_770;
                          }
                        }
                      }
                    }

LABEL_816:
                    __break(0xC471u);
LABEL_817:
                    JUMPOUT(0x22576F51CLL);
                  }
                }
              }
            }
          }

          WGSL::toString();
          WGSL::toString();
          if (v353)
          {
            v127 = v353[1];
          }

          else
          {
            v127 = 0;
          }

          if (v347)
          {
            v245 = v347[1];
            if (v245 < 0)
            {
              goto LABEL_814;
            }
          }

          else
          {
            v245 = 0;
          }

          v83 = __OFADD__(v245, 12);
          v246 = v245 + 12;
          v247 = v83;
          if ((v127 & 0x80000000) == 0 && (v247 & 1) == 0)
          {
            v83 = __OFADD__(v127, v246);
            v248 = v127 + v246;
            if (!v83)
            {
              v249 = (v248 + 11);
              if (!__OFADD__(v248, 11))
              {
                if (v353)
                {
                  v250 = v353[4];
                  v251 = (v250 >> 2) & 1;
                  if (!v347 || (v250 & 4) == 0)
                  {
                    goto LABEL_685;
                  }

LABEL_594:
                  v251 = (*(v347 + 16) >> 2) & 1;
                }

                else
                {
                  if (v347)
                  {
                    goto LABEL_594;
                  }

                  v251 = 1;
                }

LABEL_685:
                WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v249, v251, "Expected a ", 0xBuLL, v353, ", but got a ", 0xCuLL, v347, v350);
                v74 = *v350;
                if (*v350)
                {
                  v278 = v347;
                  v347 = 0;
                  if (v278 && atomic_fetch_add_explicit(v278, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v278, v8);
                  }

                  v279 = v353;
                  v353 = 0;
                  if (v279 && atomic_fetch_add_explicit(v279, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v279, v8);
                  }

                  v2 = v64 | ((*(a2 + 96) - v64) << 32);
                  goto LABEL_772;
                }
              }
            }
          }

LABEL_814:
          __break(0xC471u);
          JUMPOUT(0x22576F5CCLL);
        }
      }
    }

    if (v30 == 34)
    {
LABEL_107:
      WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableWithAttributes(&v343, a2);
      if (v345)
      {
        if (v345 != 1)
        {
          goto LABEL_789;
        }

        v53 = v343;
        if (!v343)
        {
          *(a1 + 8) = v344;
          *a1 = 0;
          goto LABEL_32;
        }

        atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
        *(a1 + 8) = v344;
        *a1 = v53;
        *(a1 + 24) = 1;
        if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_33;
        }

        goto LABEL_111;
      }

      if (*(a2 + 56) != 73)
      {
        *v350 = *(a2 + 56);
        v352 = 1;
        v9 = WGSL::toString();
        if (v352 == 1)
        {
          WGSL::toString();
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v317, ", but got a ", 13, &v316, &v353);
          v98 = v316;
          v316 = 0;
          if (v98 && atomic_fetch_add_explicit(v98, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v98, v97);
          }

          v99 = v317;
          v317 = 0;
          if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v99, v97);
          }

          v100 = v6 | ((*(a2 + 96) - v6) << 32);
          *a1 = v353;
          *(a1 + 8) = v5;
          *(a1 + 16) = v100;
          *(a1 + 24) = 1;
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v350, v97);
          goto LABEL_33;
        }

        goto LABEL_789;
      }

      *v350 = 73;
      *&v350[4] = *(a2 + 60);
      v352 = 0;
      while (1)
      {
        v77 = *(a2 + 36);
        v78 = (*(a2 + 40) + 1);
        *(a2 + 40) = v78;
        if (v77 <= v78)
        {
          __break(0xC471u);
          JUMPOUT(0x22576F554);
        }

        v79 = *(a2 + 24) + 32 * v78;
        v75 = *v79;
        *(a2 + 56) = *v79;
        *(a2 + 60) = *(v79 + 4);
        v80 = *v79;
        if (*v79 > 8u)
        {
          goto LABEL_158;
        }

        if (((1 << v80) & 0x38) != 0)
        {
          *(a2 + 80) = *(v79 + 24);
        }

        else if (((1 << v80) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v79 + 24);
        }

        else
        {
          if (v80 != 8)
          {
            goto LABEL_158;
          }

          *(a2 + 80) = 0;
          v81 = *(v79 + 24);
          if (v81)
          {
            atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
            v82 = *(a2 + 80);
            *(a2 + 80) = v81;
            if (v82)
            {
              if (atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v82, v8);
              }
            }
          }
        }

        v75 = *(a2 + 56);
LABEL_158:
        v76 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v76;
        if (v75 != 82)
        {
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v350, v8);
          v110 = v343;
          goto LABEL_683;
        }
      }
    }

    if (v30 != 31)
    {
LABEL_129:
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v62 = v6 | ((*(a2 + 96) - v6) << 32);
      *a1 = *v350;
      *(a1 + 8) = v5;
      *(a1 + 16) = v62;
      goto LABEL_32;
    }

    v41 = *(a2 + 88);
    v42 = *(a2 + 96);
    while (1)
    {
      v45 = *(a2 + 36);
      v46 = (*(a2 + 40) + 1);
      *(a2 + 40) = v46;
      if (v45 <= v46)
      {
        __break(0xC471u);
        JUMPOUT(0x22576F534);
      }

      v47 = *(a2 + 24) + 32 * v46;
      v43 = *v47;
      *(a2 + 56) = *v47;
      *(a2 + 60) = *(v47 + 4);
      v48 = *v47;
      if (*v47 > 8u)
      {
        goto LABEL_87;
      }

      if (((1 << v48) & 0x38) != 0)
      {
        *(a2 + 80) = *(v47 + 24);
      }

      else if (((1 << v48) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v47 + 24);
      }

      else
      {
        if (v48 != 8)
        {
          goto LABEL_87;
        }

        *(a2 + 80) = 0;
        v49 = *(v47 + 24);
        if (v49)
        {
          atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
          v50 = *(a2 + 80);
          *(a2 + 80) = v49;
          if (v50)
          {
            if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v50, v8);
            }
          }
        }
      }

      v43 = *(a2 + 56);
LABEL_87:
      v44 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v44;
      if (v43 != 82)
      {
        v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v343, a2);
        if (v346)
        {
          if (v346 != 1)
          {
            goto LABEL_789;
          }

          v73 = v343;
          if (v343)
          {
            atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
          }

          v319 = v344;
          v318 = v73;
LABEL_667:
          v320 = 1;
LABEL_668:
          if (v346 != 255)
          {
            if (v346)
            {
              v9 = v343;
              v343 = 0;
              if (!v9)
              {
                goto LABEL_675;
              }
            }

            else
            {
              v9 = v345;
              v343 = off_2838D37C0;
              v345 = 0;
              if (!v9)
              {
                goto LABEL_675;
              }
            }

            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v9 = WTF::StringImpl::destroy(v9, v8);
            }
          }

LABEL_675:
          if (v320)
          {
            if (v320 != 1)
            {
              goto LABEL_789;
            }

            v276 = v318;
            if (v318)
            {
              atomic_fetch_add_explicit(v318, 2u, memory_order_relaxed);
              v277 = v320;
              *(a1 + 8) = v319;
              *a1 = v276;
              *(a1 + 24) = 1;
              if (v277 == 255)
              {
                goto LABEL_33;
              }

              v53 = v318;
              v318 = 0;
              if (!v53)
              {
                goto LABEL_33;
              }
            }

            else
            {
              *(a1 + 8) = v319;
              *a1 = 0;
              *(a1 + 24) = 1;
              v53 = v318;
              v318 = 0;
              if (!v53)
              {
                goto LABEL_33;
              }
            }

            if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_33;
            }

LABEL_111:
            WTF::StringImpl::destroy(v53, v8);
            goto LABEL_33;
          }

          v110 = v318;
LABEL_683:
          *a1 = v110;
          *(a1 + 24) = 0;
LABEL_33:
          if (v323 != 255)
          {
            v10 = v321;
            if (v323)
            {
              v321 = 0;
              if (v10)
              {
LABEL_36:
                if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) != 2)
                {
                  return;
                }

LABEL_619:
                WTF::StringImpl::destroy(v10, v8);
              }
            }

            else if (v321)
            {
              v321 = 0;
              LODWORD(v322) = 0;
              WTF::fastFree(v10, v8);
            }
          }

          return;
        }

        if (*(a2 + 56) == 43)
        {
          v101 = 2;
          while (1)
          {
            v104 = *(a2 + 36);
            v105 = (*(a2 + 40) + 1);
            *(a2 + 40) = v105;
            if (v104 <= v105)
            {
              __break(0xC471u);
              JUMPOUT(0x22576F584);
            }

            v106 = *(a2 + 24) + 32 * v105;
            v102 = *v106;
            *(a2 + 56) = *v106;
            *(a2 + 60) = *(v106 + 4);
            v107 = *v106;
            if (*v106 > 8u)
            {
              goto LABEL_214;
            }

            if (((1 << v107) & 0x38) != 0)
            {
              *(a2 + 80) = *(v106 + 24);
            }

            else if (((1 << v107) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v106 + 24);
            }

            else
            {
              if (v107 != 8)
              {
                goto LABEL_214;
              }

              *(a2 + 80) = 0;
              v108 = *(v106 + 24);
              if (v108)
              {
                atomic_fetch_add_explicit(v108, 2u, memory_order_relaxed);
                v109 = *(a2 + 80);
                *(a2 + 80) = v108;
                if (v109)
                {
                  if (atomic_fetch_add_explicit(v109, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v109, v8);
                  }
                }
              }
            }

            v102 = *(a2 + 56);
LABEL_214:
            v103 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v103;
            if (v102 != 82)
            {
              v310 = v41;
              v308 = 0;
              v312 = 0;
              v334 = 0;
              v335 = 0;
              v333 = 0;
              v315 = v320;
              while (2)
              {
                if (*(a2 + 56) == 44)
                {
                  v221 = v42;
                  v220 = v310;
                  goto LABEL_622;
                }

                v128 = *(a2 + 88);
                v129 = *(a2 + 96);
                WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(&v353, a2);
                if (v355)
                {
                  if (v355 != 1)
                  {
                    goto LABEL_789;
                  }

                  v9 = v353;
                  if (v353)
                  {
                    atomic_fetch_add_explicit(v353, 2u, memory_order_relaxed);
                  }

                  v341 = v354;
                  v340 = v9;
                  v342 = 1;
LABEL_341:
                  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v9 = WTF::StringImpl::destroy(v9, v8);
                  }

                  goto LABEL_344;
                }

                v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v350, a2);
                if (v352)
                {
                  if (v352 != 1)
                  {
                    goto LABEL_789;
                  }

                  v130 = *v350;
                  if (*v350)
                  {
                    atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
                  }

                  v341 = *&v350[8];
                  v340 = v130;
                  v342 = 1;
                  goto LABEL_332;
                }

                if (*(a2 + 56) != 47)
                {
                  WGSL::toString();
                  WGSL::toString();
                  if (v336)
                  {
                    v139 = *(v336 + 1);
                  }

                  else
                  {
                    v139 = 0;
                  }

                  if (v339)
                  {
                    v142 = *(v339 + 1);
                    if (v142 < 0)
                    {
                      goto LABEL_810;
                    }
                  }

                  else
                  {
                    v142 = 0;
                  }

                  v83 = __OFADD__(v142, 12);
                  v143 = v142 + 12;
                  v144 = v83;
                  if ((v139 & 0x80000000) == 0 && (v144 & 1) == 0)
                  {
                    v83 = __OFADD__(v139, v143);
                    v145 = v139 + v143;
                    if (!v83)
                    {
                      v146 = (v145 + 11);
                      if (!__OFADD__(v145, 11))
                      {
                        if (v336)
                        {
                          v147 = *(v336 + 4);
                          v148 = (v147 >> 2) & 1;
                          if (!v339 || (v147 & 4) == 0)
                          {
                            goto LABEL_324;
                          }

LABEL_322:
                          v148 = (*(v339 + 16) >> 2) & 1;
                        }

                        else
                        {
                          if (v339)
                          {
                            goto LABEL_322;
                          }

                          v148 = 1;
                        }

LABEL_324:
                        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v146, v148, "Expected a ", 0xBuLL, v336, ", but got a ", 0xCuLL, v339, &v347);
                        v149 = v347;
                        if (v347)
                        {
                          v150 = v339;
                          v339 = 0;
                          if (v150 && atomic_fetch_add_explicit(v150, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v150, v8);
                          }

                          v9 = v336;
                          v336 = 0;
                          if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            v9 = WTF::StringImpl::destroy(v9, v8);
                          }

                          v151 = v129 | ((*(a2 + 96) - v129) << 32);
                          v340 = v149;
                          *&v341 = v128;
                          *(&v341 + 1) = v151;
                          v342 = 1;
                          goto LABEL_332;
                        }
                      }
                    }
                  }

LABEL_810:
                  __break(0xC471u);
                  JUMPOUT(0x22576F5ACLL);
                }

LABEL_282:
                v133 = *(a2 + 36);
                v134 = (*(a2 + 40) + 1);
                *(a2 + 40) = v134;
                if (v133 <= v134)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22576F56CLL);
                }

                v135 = *(a2 + 24) + 32 * v134;
                v131 = *v135;
                *(a2 + 56) = *v135;
                *(a2 + 60) = *(v135 + 4);
                v136 = *v135;
                if (*v135 <= 8u)
                {
                  if (((1 << v136) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v135 + 24);
                    goto LABEL_280;
                  }

                  if (((1 << v136) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v135 + 24);
                    goto LABEL_280;
                  }

                  if (v136 == 8)
                  {
                    *(a2 + 80) = 0;
                    v137 = *(v135 + 24);
                    if (v137)
                    {
                      atomic_fetch_add_explicit(v137, 2u, memory_order_relaxed);
                      v138 = *(a2 + 80);
                      *(a2 + 80) = v137;
                      if (v138)
                      {
                        if (atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v138, v8);
                        }
                      }
                    }

LABEL_280:
                    v131 = *(a2 + 56);
                  }
                }

                v132 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v132;
                if (v131 != 82)
                {
                  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v347, a2);
                  if (!v349)
                  {
                    v141 = *(a2 + 96) - v129;
                    v336 = v128;
                    v337 = v129;
                    v338 = v141;
                    WGSL::AST::Builder::construct<WGSL::AST::StructureMember,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>();
                  }

                  if (v349 != 1)
                  {
                    goto LABEL_789;
                  }

                  v140 = v347;
                  if (v347)
                  {
                    atomic_fetch_add_explicit(v347, 2u, memory_order_relaxed);
                  }

                  v341 = v348;
                  v340 = v140;
                  v342 = 1;
                  if (v349)
                  {
                    if (v349 != 255)
                    {
                      v9 = v347;
                      v347 = 0;
                      if (v9)
                      {
                        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          v9 = WTF::StringImpl::destroy(v9, v8);
                        }
                      }
                    }
                  }

LABEL_332:
                  if (v352 != 255)
                  {
                    if (v352)
                    {
                      v9 = *v350;
                      *v350 = 0;
                      if (!v9)
                      {
                        goto LABEL_339;
                      }
                    }

                    else
                    {
                      v9 = v351;
                      *v350 = off_2838D37C0;
                      v351 = 0;
                      if (!v9)
                      {
                        goto LABEL_339;
                      }
                    }

                    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }
                  }

LABEL_339:
                  if (v355 != 255)
                  {
                    v9 = v353;
                    if (v355)
                    {
                      goto LABEL_341;
                    }

                    if (v353)
                    {
                      v9 = WTF::fastFree(v353, v8);
                    }
                  }

LABEL_344:
                  if (!v342)
                  {
                    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v350, &v333, v340 + 6);
                    if (v350[16])
                    {
                      if (v312 == v335)
                      {
                        v153 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v334, v312 + 1, &v340);
                        v154 = HIDWORD(v335);
                        v308 = v334;
                        *(v334 + HIDWORD(v335)) = *v153;
                      }

                      else
                      {
                        *(v308 + v312) = v340;
                        v154 = HIDWORD(v335);
                      }

                      HIDWORD(v335) = v154 + 1;
                      v312 = v154 + 1;
                      if ((v154 + 1) < 0x400)
                      {
                        if (*(a2 + 56) != 48)
                        {
                          v152 = 7;
                          goto LABEL_381;
                        }

                        while (2)
                        {
                          v162 = *(a2 + 36);
                          v163 = (*(a2 + 40) + 1);
                          *(a2 + 40) = v163;
                          if (v162 <= v163)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x22576F574);
                          }

                          v164 = *(a2 + 24) + 32 * v163;
                          v160 = *v164;
                          *(a2 + 56) = *v164;
                          *(a2 + 60) = *(v164 + 4);
                          v165 = *v164;
                          if (*v164 <= 8u)
                          {
                            if (((1 << v165) & 0x38) != 0)
                            {
                              *(a2 + 80) = *(v164 + 24);
                              goto LABEL_368;
                            }

                            if (((1 << v165) & 0xC4) != 0)
                            {
                              *(a2 + 80) = *(v164 + 24);
                              goto LABEL_368;
                            }

                            if (v165 == 8)
                            {
                              *(a2 + 80) = 0;
                              v166 = *(v164 + 24);
                              if (v166)
                              {
                                atomic_fetch_add_explicit(v166, 2u, memory_order_relaxed);
                                v167 = *(a2 + 80);
                                *(a2 + 80) = v166;
                                if (v167)
                                {
                                  if (atomic_fetch_add_explicit(v167, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v167, v8);
                                  }
                                }
                              }

LABEL_368:
                              v160 = *(a2 + 56);
                            }
                          }

                          v161 = *(a2 + 68);
                          *(a2 + 88) = *(a2 + 60);
                          *(a2 + 96) = v161;
                          if (v160 != 82)
                          {
                            v152 = 0;
                            goto LABEL_381;
                          }

                          continue;
                        }
                      }

                      WTF::String::number(0x3FF);
                      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("struct cannot have more than ", 30, &v326, " members", 9, &v353);
                      v169 = v42 | ((*(a2 + 96) - v42) << 32);
                      v101 = v353;
                      *&v319 = v310;
                      *(&v319 + 1) = v169;
                      v353 = 0;
                      v159 = v326;
                      v326 = 0;
                      if (!v159)
                      {
LABEL_362:
                        v315 = 1;
                        v152 = 1;
                        goto LABEL_381;
                      }
                    }

                    else
                    {
                      v331 = *(v340 + 2);
                      v330 = off_2838D37C0;
                      v155 = *(v340 + 6);
                      if (v155)
                      {
                        atomic_fetch_add_explicit(v155, 2u, memory_order_relaxed);
                      }

                      v332 = v155;
                      v328 = v344;
                      v327 = off_2838D37C0;
                      v156 = v345;
                      if (v345)
                      {
                        atomic_fetch_add_explicit(v345, 2u, memory_order_relaxed);
                        v155 = v332;
                      }

                      v329 = v156;
                      WTF::makeString<WTF::ASCIILiteral,WGSL::AST::Identifier,WTF::ASCIILiteral,WGSL::AST::Identifier,char>(&v353, v155, v156);
                      v157 = v42 | ((*(a2 + 96) - v42) << 32);
                      v101 = v353;
                      *&v319 = v310;
                      *(&v319 + 1) = v157;
                      v158 = v329;
                      v327 = off_2838D37C0;
                      v329 = 0;
                      if (v158 && atomic_fetch_add_explicit(v158, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v158, v8);
                      }

                      v159 = v332;
                      v330 = off_2838D37C0;
                      v332 = 0;
                      if (!v159)
                      {
                        goto LABEL_362;
                      }
                    }

                    if (atomic_fetch_add_explicit(v159, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v159, v8);
                    }

                    goto LABEL_362;
                  }

                  if (v342 != 1)
                  {
                    goto LABEL_789;
                  }

                  v101 = v340;
                  if (v340)
                  {
                    atomic_fetch_add_explicit(v340, 2u, memory_order_relaxed);
                  }

                  v319 = v341;
                  v315 = 1;
                  v152 = 1;
LABEL_381:
                  if (v342)
                  {
                    if (v342 != 255)
                    {
                      v168 = v340;
                      v340 = 0;
                      if (v168)
                      {
                        if (atomic_fetch_add_explicit(v168, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v168, v8);
                        }
                      }
                    }
                  }

                  if (v152)
                  {
                    v221 = v42;
                    v220 = v310;
                    if (v152 != 7)
                    {
                      v320 = v315;
                      v318 = v101;
                      goto LABEL_750;
                    }

LABEL_622:
                    v320 = v315;
                    v318 = v101;
                    if (!v312)
                    {
                      WTF::StringImpl::createWithoutCopyingNonEmpty();
                      v268 = v221 | ((*(a2 + 96) - v221) << 32);
                      goto LABEL_749;
                    }

                    if (*(a2 + 56) == 44)
                    {
                      while (1)
                      {
                        v258 = *(a2 + 36);
                        v259 = (*(a2 + 40) + 1);
                        *(a2 + 40) = v259;
                        if (v258 <= v259)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x22576F5BCLL);
                        }

                        v260 = *(a2 + 24) + 32 * v259;
                        v256 = *v260;
                        *(a2 + 56) = *v260;
                        *(a2 + 60) = *(v260 + 4);
                        v261 = *v260;
                        if (*v260 <= 8u)
                        {
                          if (((1 << v261) & 0x38) != 0)
                          {
                            *(a2 + 80) = *(v260 + 24);
                          }

                          else if (((1 << v261) & 0xC4) != 0)
                          {
                            *(a2 + 80) = *(v260 + 24);
                          }

                          else
                          {
                            if (v261 != 8)
                            {
                              goto LABEL_627;
                            }

                            *(a2 + 80) = 0;
                            v262 = *(v260 + 24);
                            if (v262)
                            {
                              atomic_fetch_add_explicit(v262, 2u, memory_order_relaxed);
                              v263 = *(a2 + 80);
                              *(a2 + 80) = v262;
                              if (v263)
                              {
                                if (atomic_fetch_add_explicit(v263, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v263, v8);
                                }
                              }
                            }
                          }

                          v256 = *(a2 + 56);
                        }

LABEL_627:
                        v257 = *(a2 + 68);
                        *(a2 + 88) = *(a2 + 60);
                        *(a2 + 96) = v257;
                        if (v256 != 82)
                        {
                          *v350 = v220;
                          *&v350[8] = v221;
                          *&v350[12] = v257 - v221;
                          LOBYTE(v353) = 0;
                          WGSL::AST::Builder::construct<WGSL::AST::Structure,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::StructureMember,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::AST::StructureRole,void>();
                        }
                      }
                    }

                    WGSL::toString();
                    WGSL::toString();
                    if (v353)
                    {
                      v269 = v353[1];
                    }

                    else
                    {
                      v269 = 0;
                    }

                    if (v347)
                    {
                      v283 = v347[1];
                      if (v283 < 0)
                      {
                        goto LABEL_815;
                      }
                    }

                    else
                    {
                      v283 = 0;
                    }

                    v83 = __OFADD__(v283, 12);
                    v284 = v283 + 12;
                    v285 = v83;
                    if ((v269 & 0x80000000) == 0 && (v285 & 1) == 0)
                    {
                      v83 = __OFADD__(v269, v284);
                      v286 = v269 + v284;
                      if (!v83)
                      {
                        v287 = (v286 + 11);
                        if (!__OFADD__(v286, 11))
                        {
                          if (v353)
                          {
                            v288 = v353[4];
                            v289 = (v288 >> 2) & 1;
                            if (!v347 || (v288 & 4) == 0)
                            {
LABEL_741:
                              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v287, v289, "Expected a ", 0xBuLL, v353, ", but got a ", 0xCuLL, v347, v350);
                              v298 = *v350;
                              if (*v350)
                              {
                                v299 = v347;
                                v347 = 0;
                                if (v299 && atomic_fetch_add_explicit(v299, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v299, v8);
                                }

                                v300 = v353;
                                v353 = 0;
                                if (v300 && atomic_fetch_add_explicit(v300, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v300, v8);
                                }

                                v268 = v221 | ((*(a2 + 96) - v221) << 32);
                                v318 = v298;
LABEL_749:
                                *&v319 = v220;
                                *(&v319 + 1) = v268;
                                v320 = 1;
LABEL_750:
                                v301 = v333;
                                if (v333)
                                {
                                  v302 = *(v333 - 1);
                                  if (v302)
                                  {
                                    v303 = v333;
                                    do
                                    {
                                      v304 = *v303;
                                      if (*v303 != -1)
                                      {
                                        *v303 = 0;
                                        if (v304)
                                        {
                                          if (atomic_fetch_add_explicit(v304, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                          {
                                            WTF::StringImpl::destroy(v304, v8);
                                          }
                                        }
                                      }

                                      ++v303;
                                      --v302;
                                    }

                                    while (v302);
                                  }

                                  WTF::fastFree((v301 - 16), v8);
                                }

                                v9 = v334;
                                if (v334)
                                {
                                  v334 = 0;
                                  LODWORD(v335) = 0;
                                  v9 = WTF::fastFree(v9, v8);
                                }

                                goto LABEL_668;
                              }

                              goto LABEL_815;
                            }
                          }

                          else if (!v347)
                          {
                            v289 = 1;
                            goto LABEL_741;
                          }

                          v289 = (*(v347 + 16) >> 2) & 1;
                          goto LABEL_741;
                        }
                      }
                    }

LABEL_815:
                    __break(0xC471u);
                    JUMPOUT(0x22576F5D4);
                  }

                  continue;
                }

                goto LABEL_282;
              }
            }
          }
        }

        WGSL::toString();
        WGSL::toString();
        if (v353)
        {
          v126 = v353[1];
        }

        else
        {
          v126 = 0;
        }

        if (v347)
        {
          v238 = v347[1];
          if (v238 < 0)
          {
            goto LABEL_813;
          }
        }

        else
        {
          v238 = 0;
        }

        v83 = __OFADD__(v238, 12);
        v239 = v238 + 12;
        v240 = v83;
        if ((v126 & 0x80000000) == 0 && (v240 & 1) == 0)
        {
          v83 = __OFADD__(v126, v239);
          v241 = v126 + v239;
          if (!v83)
          {
            v242 = (v241 + 11);
            if (!__OFADD__(v241, 11))
            {
              if (v353)
              {
                v243 = v353[4];
                v244 = (v243 >> 2) & 1;
                if (!v347 || (v243 & 4) == 0)
                {
                  goto LABEL_659;
                }

LABEL_592:
                v244 = (*(v347 + 16) >> 2) & 1;
              }

              else
              {
                if (v347)
                {
                  goto LABEL_592;
                }

                v244 = 1;
              }

LABEL_659:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v242, v244, "Expected a ", 0xBuLL, v353, ", but got a ", 0xCuLL, v347, v350);
              v273 = *v350;
              if (*v350)
              {
                v274 = v347;
                v347 = 0;
                if (v274 && atomic_fetch_add_explicit(v274, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v274, v8);
                }

                v9 = v353;
                v353 = 0;
                if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  v9 = WTF::StringImpl::destroy(v9, v8);
                }

                v275 = v42 | ((*(a2 + 96) - v42) << 32);
                v318 = v273;
                *&v319 = v41;
                *(&v319 + 1) = v275;
                goto LABEL_667;
              }
            }
          }
        }

LABEL_813:
        __break(0xC471u);
        JUMPOUT(0x22576F5C4);
      }
    }
  }

  do
  {
    v13 = *(a2 + 36);
    v14 = (*(a2 + 40) + 1);
    *(a2 + 40) = v14;
    if (v13 <= v14)
    {
      __break(0xC471u);
      goto LABEL_817;
    }

    v15 = *(a2 + 24) + 32 * v14;
    v11 = *v15;
    *(a2 + 56) = *v15;
    *(a2 + 60) = *(v15 + 4);
    v16 = *v15;
    if (*v15 <= 8u)
    {
      if (((1 << v16) & 0x38) != 0)
      {
        *(a2 + 80) = *(v15 + 24);
LABEL_15:
        v11 = *(a2 + 56);
        goto LABEL_16;
      }

      if (((1 << v16) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v15 + 24);
        goto LABEL_15;
      }

      if (v16 == 8)
      {
        *(a2 + 80) = 0;
        v17 = *(v15 + 24);
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          v18 = *(a2 + 80);
          *(a2 + 80) = v17;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, a2);
            }
          }
        }

        goto LABEL_15;
      }
    }

LABEL_16:
    v12 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v12;
  }

  while (v11 == 82);
  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v350, a2);
  if (v352)
  {
    if (v352 != 1)
    {
      goto LABEL_789;
    }

    v20 = *v350;
    if (*v350)
    {
      atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
    }

    v5 = *&v350[8];
    v21 = *&v350[16];
    goto LABEL_609;
  }

  if (*(a2 + 56) != 49)
  {
    WGSL::toString();
    WGSL::toString();
    if (v353)
    {
      v51 = v353[1];
      if (v347)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v51 = 0;
      if (v347)
      {
LABEL_100:
        v52 = v347[1];
        if (v52 < 0)
        {
          goto LABEL_801;
        }

LABEL_186:
        v83 = __OFADD__(v52, 12);
        v90 = v52 + 12;
        v91 = v83;
        if (v51 < 0)
        {
          goto LABEL_801;
        }

        if (v91)
        {
          goto LABEL_801;
        }

        v83 = __OFADD__(v51, v90);
        v92 = v51 + v90;
        if (v83)
        {
          goto LABEL_801;
        }

        v93 = (v92 + 11);
        if (__OFADD__(v92, 11))
        {
          goto LABEL_801;
        }

        if (v353)
        {
          v94 = v353[4];
          v95 = (v94 >> 2) & 1;
          if (!v347 || (v94 & 4) == 0)
          {
LABEL_252:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v93, v95, "Expected a ", 0xBuLL, v353, ", but got a ", 0xCuLL, v347, &v343);
            v20 = v343;
            if (v343)
            {
              v124 = v347;
              v347 = 0;
              if (v124 && atomic_fetch_add_explicit(v124, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v124, v8);
              }

              v125 = v353;
              v353 = 0;
              if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v125, v8);
              }

              v21 = v6 | ((*(a2 + 96) - v6) << 32);
              goto LABEL_609;
            }

LABEL_801:
            __break(0xC471u);
            JUMPOUT(0x22576F564);
          }
        }

        else if (!v347)
        {
          v95 = 1;
          goto LABEL_252;
        }

        v95 = (*(v347 + 16) >> 2) & 1;
        goto LABEL_252;
      }
    }

    v52 = 0;
    goto LABEL_186;
  }

  while (2)
  {
    v33 = *(a2 + 36);
    v34 = (*(a2 + 40) + 1);
    *(a2 + 40) = v34;
    if (v33 <= v34)
    {
      __break(0xC471u);
      JUMPOUT(0x22576F52CLL);
    }

    v35 = *(a2 + 24) + 32 * v34;
    v31 = *v35;
    *(a2 + 56) = *v35;
    *(a2 + 60) = *(v35 + 4);
    v36 = *v35;
    if (*v35 <= 8u)
    {
      if (((1 << v36) & 0x38) != 0)
      {
        *(a2 + 80) = *(v35 + 24);
        goto LABEL_66;
      }

      if (((1 << v36) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v35 + 24);
        goto LABEL_66;
      }

      if (v36 == 8)
      {
        *(a2 + 80) = 0;
        v37 = *(v35 + 24);
        if (v37)
        {
          atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
          v38 = *(a2 + 80);
          *(a2 + 80) = v37;
          if (v38)
          {
            if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, v8);
            }
          }
        }

LABEL_66:
        v31 = *(a2 + 56);
      }
    }

    v32 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v32;
    if (v31 == 82)
    {
      continue;
    }

    break;
  }

  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v343, a2);
  if (!v345)
  {
    if (*(a2 + 56) == 73)
    {
      while (1)
      {
        v56 = *(a2 + 36);
        v57 = (*(a2 + 40) + 1);
        *(a2 + 40) = v57;
        if (v56 <= v57)
        {
          __break(0xC471u);
          JUMPOUT(0x22576F54CLL);
        }

        v58 = *(a2 + 24) + 32 * v57;
        v54 = *v58;
        *(a2 + 56) = *v58;
        *(a2 + 60) = *(v58 + 4);
        v59 = *v58;
        if (*v58 <= 8u)
        {
          if (((1 << v59) & 0x38) != 0)
          {
            *(a2 + 80) = *(v58 + 24);
          }

          else if (((1 << v59) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v58 + 24);
          }

          else
          {
            if (v59 != 8)
            {
              goto LABEL_118;
            }

            *(a2 + 80) = 0;
            v60 = *(v58 + 24);
            if (v60)
            {
              atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
              v61 = *(a2 + 80);
              *(a2 + 80) = v60;
              if (v61)
              {
                if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v61, v8);
                }
              }
            }
          }

          v54 = *(a2 + 56);
        }

LABEL_118:
        v55 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v55;
        if (v54 != 82)
        {
          v353 = v5;
          LODWORD(v354) = v6;
          DWORD1(v354) = v55 - v6;
          WGSL::AST::Builder::construct<WGSL::AST::TypeAlias,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,void>();
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v347)
    {
      v96 = v347[1];
    }

    else
    {
      v96 = 0;
    }

    if (v340)
    {
      v213 = *(v340 + 1);
      if (v213 < 0)
      {
        goto LABEL_808;
      }
    }

    else
    {
      v213 = 0;
    }

    v83 = __OFADD__(v213, 12);
    v214 = v213 + 12;
    v215 = v83;
    if (v96 < 0 || (v215 & 1) != 0 || (v83 = __OFADD__(v96, v214), v216 = v96 + v214, v83) || (v217 = (v216 + 11), __OFADD__(v216, 11)))
    {
LABEL_808:
      __break(0xC471u);
      JUMPOUT(0x22576F59CLL);
    }

    if (v347)
    {
      v218 = v347[4];
      v219 = (v218 >> 2) & 1;
      if (!v340 || (v218 & 4) == 0)
      {
LABEL_596:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v217, v219, "Expected a ", 0xBuLL, v347, ", but got a ", 0xCuLL, v340, &v353);
        v20 = v353;
        if (v353)
        {
          v252 = v340;
          v340 = 0;
          if (v252 && atomic_fetch_add_explicit(v252, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v252, v8);
          }

          v253 = v347;
          v347 = 0;
          if (v253 && atomic_fetch_add_explicit(v253, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v253, v8);
          }

          v21 = v6 | ((*(a2 + 96) - v6) << 32);
          goto LABEL_604;
        }

        goto LABEL_808;
      }
    }

    else if (!v340)
    {
      v219 = 1;
      goto LABEL_596;
    }

    v219 = (*(v340 + 16) >> 2) & 1;
    goto LABEL_596;
  }

  if (v345 != 1)
  {
    goto LABEL_789;
  }

  v20 = v343;
  if (v343)
  {
    atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
  }

  v21 = *(&v344 + 1);
  v5 = v344;
LABEL_604:
  if (v345)
  {
    if (v345 != 255)
    {
      v254 = v343;
      v343 = 0;
      if (v254)
      {
        if (atomic_fetch_add_explicit(v254, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v254, v8);
        }
      }
    }
  }

LABEL_609:
  if (v352 != 255)
  {
    if (v352)
    {
      v255 = *v350;
      *v350 = 0;
      if (!v255)
      {
        goto LABEL_616;
      }
    }

    else
    {
      v255 = v351;
      *v350 = off_2838D37C0;
      v351 = 0;
      if (!v255)
      {
        goto LABEL_616;
      }
    }

    if (atomic_fetch_add_explicit(v255, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v255, v8);
    }
  }

LABEL_616:
  if (!v20)
  {
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v21;
    goto LABEL_250;
  }

  atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  *a1 = v20;
  *(a1 + 8) = v5;
  *(a1 + 16) = v21;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v10 = v20;
    goto LABEL_619;
  }
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(WTF::StringImpl *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  if (*(a2 + 56) == 8)
  {
    v6 = *(a2 + 80);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    while (1)
    {
      v9 = *(a2 + 36);
      v10 = (*(a2 + 40) + 1);
      *(a2 + 40) = v10;
      if (v9 <= v10)
      {
        __break(0xC471u);
        goto LABEL_53;
      }

      v11 = *(a2 + 24) + 32 * v10;
      v7 = *v11;
      *(a2 + 56) = *v11;
      *(a2 + 60) = *(v11 + 4);
      v12 = *v11;
      if (*v11 <= 8u)
      {
        if (((1 << v12) & 0x38) != 0)
        {
          *(a2 + 80) = *(v11 + 24);
        }

        else if (((1 << v12) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v11 + 24);
        }

        else
        {
          if (v12 != 8)
          {
            goto LABEL_7;
          }

          *(a2 + 80) = 0;
          v13 = *(v11 + 24);
          if (v13)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
            result = *(a2 + 80);
            *(a2 + 80) = v13;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }
            }
          }
        }

        v7 = *(a2 + 56);
      }

LABEL_7:
      v8 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v8;
      if (v7 != 82)
      {
        v19 = 0;
        *(v3 + 1) = v4;
        *(v3 + 2) = v5 | ((v8 - v5) << 32);
        *v3 = off_2838D37C0;
        *(v3 + 3) = v6;
        goto LABEL_50;
      }
    }
  }

  WGSL::toString();
  WGSL::toString();
  if (!v28)
  {
    v15 = 0;
    if (v27)
    {
      goto LABEL_20;
    }

LABEL_28:
    v17 = 12;
    v18 = v14;
    if (v15 < 0)
    {
      goto LABEL_52;
    }

    goto LABEL_32;
  }

  v15 = *(v28 + 1);
  if (!v27)
  {
    goto LABEL_28;
  }

LABEL_20:
  v16 = *(v27 + 1);
  if (v16 < 0)
  {
    goto LABEL_52;
  }

  v14 = __OFADD__(v16, 12);
  v17 = v16 + 12;
  v18 = v14;
  if (v15 < 0)
  {
    goto LABEL_52;
  }

LABEL_32:
  if (v18)
  {
    goto LABEL_52;
  }

  v14 = __OFADD__(v15, v17);
  v20 = v15 + v17;
  if (v14)
  {
    goto LABEL_52;
  }

  v21 = (v20 + 11);
  if (__OFADD__(v20, 11))
  {
    goto LABEL_52;
  }

  if (!v28)
  {
    if (!v27)
    {
      v23 = 1;
      goto LABEL_42;
    }

LABEL_40:
    v23 = (*(v27 + 16) >> 2) & 1;
    goto LABEL_42;
  }

  v22 = *(v28 + 4);
  v23 = (v22 >> 2) & 1;
  if (v27 && (v22 & 4) != 0)
  {
    goto LABEL_40;
  }

LABEL_42:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v21, v23, "Expected a ", 0xBuLL, v28, ", but got a ", 0xCuLL, v27, &v29);
  v25 = v29;
  if (!v29)
  {
LABEL_52:
    __break(0xC471u);
LABEL_53:
    JUMPOUT(0x22576F86CLL);
  }

  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v24);
  }

  result = v28;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v28, v24);
  }

  v26 = v5 | ((*(a2 + 96) - v5) << 32);
  *v3 = v25;
  *(v3 + 1) = v4;
  *(v3 + 2) = v26;
  v19 = 1;
LABEL_50:
  *(v3 + 32) = v19;
  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 32) != 255)
  {
    if (*(result + 32))
    {
      v2 = *result;
      *result = 0;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *result = off_2838D37C0;
      v2 = *(result + 24);
      *(result + 24) = 0;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = result;
      WTF::StringImpl::destroy(v2, a2);
      result = v3;
    }
  }

LABEL_8:
  *(result + 32) = -1;
  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<WGSL::AST::Diagnostic,WGSL::CompilationMessage>::expected(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = &unk_2838D3EF8;
  *(result + 16) = *(a2 + 16);
  *(result + 8) = off_2838D37C0;
  v2 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 40) = 0;
  *(result + 32) = v2;
  *(result + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    *(result + 40) = &unk_2838D3EF8;
    *(result + 48) = *(a2 + 48);
    *(result + 40) = off_2838D37C0;
    v3 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(result + 64) = v3;
    *(result + 72) = 1;
  }

  *(result + 80) = 0;
  return result;
}

void WGSL::AST::Diagnostic::~Diagnostic(WGSL::AST::Diagnostic *this, WTF::StringImpl *a2)
{
  if (*(this + 72) == 1)
  {
    *(this + 5) = off_2838D37C0;
    v2 = *(this + 8);
    *(this + 8) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = this;
        WTF::StringImpl::destroy(v2, a2);
        this = v3;
      }
    }
  }

  *(this + 1) = off_2838D37C0;
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v9 = result;
  if (!a2)
  {
    if (!result)
    {
      goto LABEL_11;
    }

    if (result > 0x7FFFFFEF)
    {
      goto LABEL_10;
    }

    v24 = result;
    v31 = a9;
    result = WTF::tryFastCompactMalloc((2 * result + 20));
    v17 = v66;
    if (!v66)
    {
LABEL_31:
      a9 = v31;
      goto LABEL_36;
    }

    v32 = v66 + 20;
    *v66 = 2;
    *(v66 + 4) = v24;
    *(v66 + 8) = v66 + 20;
    *(v66 + 16) = 0;
    v33 = v66 + 20 + 2 * a4;
    if (a4 < 0x40)
    {
      v34 = v66 + 20;
      v37 = a8;
      v38 = a7;
      v39 = a6;
      v40 = a5;
      v41 = a3;
    }

    else
    {
      v34 = v32 + 2 * (a4 & 0x7FFFFFFFFFFFFFC0);
      v35 = 0uLL;
      v36 = (v66 + 20);
      v37 = a8;
      v38 = a7;
      v39 = a6;
      v40 = a5;
      v41 = a3;
      do
      {
        v67.val[0] = *v41;
        v42 = *(v41 + 16);
        v68.val[0] = *(v41 + 32);
        v43 = *(v41 + 48);
        v41 += 64;
        v44 = v43;
        v68.val[1] = 0uLL;
        v69.val[0] = v42;
        v67.val[1] = 0uLL;
        v45 = v36;
        vst2q_s8(v45, v67);
        v45 += 32;
        v69.val[1] = 0uLL;
        vst2q_s8(v45, v69);
        v46 = v36 + 64;
        vst2q_s8(v46, v68);
        v47 = v36 + 96;
        vst2q_s8(v47, *(&v35 - 1));
        v36 += 128;
      }

      while (v36 != v34);
    }

    if (v34 == v33)
    {
LABEL_29:
      if (v9 < a4)
      {
        goto LABEL_46;
      }

      result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>((v32 + 2 * a4), v9 - a4, v40, v39, v38, v37);
      goto LABEL_31;
    }

    v48 = v66 + 2 * a4 - v34 + 18;
    if (v48 < 0xE || (v34 < v41 + (v48 >> 1) + 1 ? (v49 = v41 >= (v48 & 0xFFFFFFFFFFFFFFFELL) + v34 + 2) : (v49 = 1), !v49))
    {
      v52 = v41;
      v53 = v34;
      goto LABEL_28;
    }

    v50 = (v48 >> 1) + 1;
    if (v48 >= 0x3E)
    {
      v51 = v50 & 0xFFFFFFFFFFFFFFE0;
      v55 = (v34 + 32);
      v56 = (v41 + 16);
      v57 = v50 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v58 = *v56[-2].i8;
        v59 = vmovl_u8(*v56);
        v60 = vmovl_high_u8(*v56->i8);
        v55[-2] = vmovl_u8(*v58.i8);
        v55[-1] = vmovl_high_u8(v58);
        *v55 = v59;
        v55[1] = v60;
        v55 += 4;
        v56 += 4;
        v57 -= 32;
      }

      while (v57);
      if (v50 == v51)
      {
        goto LABEL_29;
      }

      if ((v50 & 0x18) == 0)
      {
        v53 = (v34 + 2 * v51);
        v52 = (v41 + v51);
        do
        {
LABEL_28:
          v54 = *v52++;
          *v53++ = v54;
        }

        while (v53 != v33);
        goto LABEL_29;
      }
    }

    else
    {
      v51 = 0;
    }

    v52 = (v41 + (v50 & 0xFFFFFFFFFFFFFFF8));
    v53 = (v34 + 2 * (v50 & 0xFFFFFFFFFFFFFFF8));
    v61 = (v34 + 2 * v51);
    v62 = (v41 + v51);
    v63 = v51 - (v50 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v64 = *v62++;
      *v61++ = vmovl_u8(v64);
      v63 += 8;
    }

    while (v63);
    if (v50 == (v50 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (!result)
  {
LABEL_11:
    v17 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_36;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_10:
    v17 = 0;
LABEL_36:
    *a9 = v17;
    return result;
  }

  v10 = result;
  v65 = a9;
  result = WTF::tryFastCompactMalloc((result + 20));
  v17 = v66;
  if (!v66)
  {
LABEL_35:
    a9 = v65;
    goto LABEL_36;
  }

  v18 = (v66 + 20);
  *v66 = 2;
  *(v66 + 4) = v10;
  *(v66 + 8) = v66 + 20;
  *(v66 + 16) = 4;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      *v18 = *a3;
    }

    else
    {
      result = memcpy((v66 + 20), a3, a4);
      v23 = a4;
      v22 = a5;
      v21 = a6;
      v20 = a7;
      v19 = a8;
    }
  }

  if (v9 >= v23)
  {
    result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v18[v23], v9 - v23, v22, v21, v20, v19);
    goto LABEL_35;
  }

LABEL_46:
  __break(1u);
  return result;
}

int8x16_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(int8x16_t *__dst, unint64_t a2, uint64_t a3, _BYTE *__src, size_t __n, uint64_t a6)
{
  v8 = __dst;
  if (!a3)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v9 = *(a3 + 8);
  v10 = *(a3 + 4);
  if ((*(a3 + 16) & 4) == 0)
  {
    v11 = (__dst + v10);
    if (v10 < 0x10)
    {
      v12 = __dst;
      if (__dst == v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = __dst;
      do
      {
        v13 = vld2q_s8(v9);
        v9 += 32;
        *v12++ = v13;
      }

      while (v12 != &__dst->i8[v10 & 0xFFFFFFF0]);
      if (v12 == v11)
      {
        goto LABEL_25;
      }
    }

    v15 = &__dst->i8[v10];
    v16 = &__dst->i8[v10] - v12;
    if (v16 < 4 || (v12 < &v9[2 * v16] ? (v17 = v9 >= v15) : (v17 = 1), !v17))
    {
      v19 = v12;
      v20 = v9;
      goto LABEL_22;
    }

    if (v16 >= 0x20)
    {
      v18 = v16 & 0xFFFFFFFFFFFFFFE0;
      v39 = (v9 + 32);
      v40 = v12 + 1;
      v41 = v16 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v43 = v39[-2];
        v42 = v39[-1];
        v45 = *v39;
        v44 = v39[1];
        v39 += 4;
        v40[-1] = vuzp1q_s8(v43, v42);
        *v40 = vuzp1q_s8(v45, v44);
        v40 += 2;
        v41 -= 32;
      }

      while (v41);
      if (v16 == v18)
      {
        goto LABEL_25;
      }

      if ((v16 & 0x1C) == 0)
      {
        v20 = &v9[2 * v18];
        v19 = (v12 + v18);
        goto LABEL_22;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = (v12 + (v16 & 0xFFFFFFFFFFFFFFFCLL));
    v20 = &v9[2 * (v16 & 0xFFFFFFFFFFFFFFFCLL)];
    v46 = &v9[2 * v18];
    v47 = (v12->i32 + v18);
    v48 = v18 - (v16 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v49 = *v46++;
      *v47++ = vuzp1_s8(v49, v49).u32[0];
      v48 += 4;
    }

    while (v48);
    if (v16 == (v16 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v21 = *v20;
      v20 += 2;
      v19->i8[0] = v21;
      v19 = (v19 + 1);
    }

    while (v19 != v11);
    goto LABEL_25;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      __dst->i8[0] = *v9;
    }

    else
    {
      v22 = a2;
      v23 = a3;
      v24 = __src;
      __dst = memcpy(__dst, *(a3 + 8), *(a3 + 4));
      a3 = v23;
      a2 = v22;
      __src = v24;
    }
  }

LABEL_25:
  v14 = *(a3 + 4);
  if (a2 < v14)
  {
LABEL_72:
    __break(1u);
    return __dst;
  }

LABEL_26:
  v25 = a2 - v14;
  v26 = &v8->i8[v14];
  if (__n)
  {
    if (__n == 1)
    {
      *v26 = *__src;
    }

    else
    {
      __dst = memcpy(&v8->i8[v14], __src, __n);
    }
  }

  if (v25 < __n)
  {
    goto LABEL_72;
  }

  if (!a6)
  {
    return __dst;
  }

  __dst = &v26[__n];
  v27 = *(a6 + 8);
  v28 = *(a6 + 4);
  if ((*(a6 + 16) & 4) != 0)
  {
    if (v28)
    {
      if (v28 == 1)
      {
        __dst->i8[0] = v27->i8[0];
      }

      else
      {

        return memcpy(__dst, v27, v28);
      }
    }
  }

  else
  {
    v29 = (__dst + v28);
    if (v28 >= 0x10)
    {
      v30 = (__dst + (v28 & 0xFFFFFFF0));
      do
      {
        v31 = vld2q_s8(v27->i8);
        v27 += 2;
        *__dst++ = v31;
      }

      while (__dst != v30);
    }

    if (__dst != v29)
    {
      v32 = (v8 + v14 + v28 + __n);
      v33 = v32 - __dst;
      if ((v32 - __dst) < 4 || (__dst < (v27 + 2 * v33) ? (v34 = v27 >= v32) : (v34 = 1), !v34))
      {
        v36 = __dst;
        v37 = v27;
        goto LABEL_49;
      }

      if (v33 >= 0x20)
      {
        v35 = v33 & 0xFFFFFFFFFFFFFFE0;
        v50 = v27 + 2;
        v51 = __dst + 1;
        v52 = v33 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v54 = v50[-2];
          v53 = v50[-1];
          v56 = *v50;
          v55 = v50[1];
          v50 += 4;
          v51[-1] = vuzp1q_s8(v54, v53);
          *v51 = vuzp1q_s8(v56, v55);
          v51 += 2;
          v52 -= 32;
        }

        while (v52);
        if (v33 == v35)
        {
          return __dst;
        }

        if ((v33 & 0x1C) == 0)
        {
          v37 = (v27 + 2 * v35);
          v36 = (__dst + v35);
          do
          {
LABEL_49:
            v38 = v37->i8[0];
            v37 = (v37 + 2);
            v36->i8[0] = v38;
            v36 = (v36 + 1);
          }

          while (v36 != v29);
          return __dst;
        }
      }

      else
      {
        v35 = 0;
      }

      v36 = (__dst + (v33 & 0xFFFFFFFFFFFFFFFCLL));
      v37 = (v27 + 2 * (v33 & 0xFFFFFFFFFFFFFFFCLL));
      v57 = (v27 + 2 * v35);
      v58 = (__dst->i32 + v35);
      v59 = v35 - (v33 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v60 = *v57++;
        *v58++ = vuzp1_s8(v60, v60).u32[0];
        v59 += 4;
      }

      while (v59);
      if (v33 != (v33 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_49;
      }
    }
  }

  return __dst;
}

uint16x8_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(uint16x8_t *result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    v8 = 0;
    goto LABEL_26;
  }

  v6 = *(a3 + 8);
  v7 = *(a3 + 4);
  if ((*(a3 + 16) & 4) != 0)
  {
    v9 = (result + 2 * v7);
    if (v7 < 0x40)
    {
      v10 = result;
      if (result == v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = result + 2 * (v7 & 0xFFFFFFC0);
      v11 = 0uLL;
      v12 = result;
      do
      {
        v100.val[0] = *v6;
        v13 = *(v6 + 16);
        v103.val[0] = *(v6 + 32);
        v14 = *(v6 + 48);
        v6 += 64;
        v15 = v14;
        v103.val[1] = 0uLL;
        v106.val[0] = v13;
        v100.val[1] = 0uLL;
        v16 = v12;
        vst2q_s8(v16, v100);
        v16 += 32;
        v106.val[1] = 0uLL;
        vst2q_s8(v16, v106);
        v17 = v12 + 64;
        vst2q_s8(v17, v103);
        v18 = v12 + 96;
        vst2q_s8(v18, *(&v11 - 1));
        v12 += 128;
      }

      while (v12 != v10);
      if (v10 == v9)
      {
        goto LABEL_25;
      }
    }

    v19 = v9 - v10 - 2;
    if (v19 < 0xE || (v10 < v6 + (v19 >> 1) + 1 ? (v20 = v6 >= (v19 & 0xFFFFFFFFFFFFFFFELL) + v10 + 2) : (v20 = 1), !v20))
    {
      v23 = v6;
      v24 = v10;
      goto LABEL_22;
    }

    v21 = (v19 >> 1) + 1;
    if (v19 >= 0x3E)
    {
      v22 = v21 & 0xFFFFFFFFFFFFFFE0;
      v79 = (v10 + 32);
      v80 = (v6 + 16);
      v81 = v21 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v82 = *v80[-2].i8;
        v83 = vmovl_u8(*v80);
        v84 = vmovl_high_u8(*v80->i8);
        v79[-2] = vmovl_u8(*v82.i8);
        v79[-1] = vmovl_high_u8(v82);
        *v79 = v83;
        v79[1] = v84;
        v79 += 4;
        v80 += 4;
        v81 -= 32;
      }

      while (v81);
      if (v21 == v22)
      {
        goto LABEL_25;
      }

      if ((v21 & 0x18) == 0)
      {
        v24 = (v10 + 2 * v22);
        v23 = (v6 + v22);
        goto LABEL_22;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = (v6 + (v21 & 0xFFFFFFFFFFFFFFF8));
    v24 = (v10 + 2 * (v21 & 0xFFFFFFFFFFFFFFF8));
    v85 = (v10 + 2 * v22);
    v86 = (v6 + v22);
    v87 = v22 - (v21 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v88 = *v86++;
      *v85++ = vmovl_u8(v88);
      v87 += 8;
    }

    while (v87);
    if (v21 == (v21 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v25 = *v23++;
      v24->i16[0] = v25;
      v24 = (v24 + 2);
    }

    while (v24 != v9);
    goto LABEL_25;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      result->i16[0] = *v6;
    }

    else
    {
      v26 = result;
      v27 = a2;
      v28 = a3;
      v29 = a6;
      v30 = a5;
      v31 = a4;
      memcpy(result, *(a3 + 8), 2 * v7);
      a3 = v28;
      a2 = v27;
      result = v26;
      a4 = v31;
      a5 = v30;
      a6 = v29;
    }
  }

LABEL_25:
  v8 = *(a3 + 4);
  if (a2 < v8)
  {
LABEL_94:
    __break(1u);
    return result;
  }

LABEL_26:
  v32 = &result->i16[v8];
  v33 = &v32[a5];
  if (a5 < 0x40)
  {
    v34 = result + 2 * v8;
    v43 = a2 - v8;
    if (v32 == v33)
    {
      goto LABEL_42;
    }

LABEL_32:
    v44 = result->u64 + 2 * a5 + 2 * v8 - v34 - 2;
    if (v44 < 0xE || (v34 < a4 + (v44 >> 1) + 1 ? (v45 = a4 >= (v44 & 0xFFFFFFFFFFFFFFFELL) + v34 + 2) : (v45 = 1), !v45))
    {
      v48 = a4;
      v49 = v34;
      goto LABEL_41;
    }

    v46 = (v44 >> 1) + 1;
    if (v44 >= 0x3E)
    {
      v47 = v46 & 0xFFFFFFFFFFFFFFE0;
      v69 = (v34 + 32);
      v70 = (a4 + 16);
      v71 = v46 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v72 = *v70[-2].i8;
        v73 = vmovl_u8(*v70);
        v74 = vmovl_high_u8(*v70->i8);
        v69[-2] = vmovl_u8(*v72.i8);
        v69[-1] = vmovl_high_u8(v72);
        *v69 = v73;
        v69[1] = v74;
        v69 += 4;
        v70 += 4;
        v71 -= 32;
      }

      while (v71);
      if (v46 == v47)
      {
        goto LABEL_42;
      }

      if ((v46 & 0x18) == 0)
      {
        v49 = (v34 + 2 * v47);
        v48 = (a4 + v47);
        goto LABEL_41;
      }
    }

    else
    {
      v47 = 0;
    }

    v48 = (a4 + (v46 & 0xFFFFFFFFFFFFFFF8));
    v49 = (v34 + 2 * (v46 & 0xFFFFFFFFFFFFFFF8));
    v75 = (v34 + 2 * v47);
    v76 = (a4 + v47);
    v77 = v47 - (v46 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v78 = *v76++;
      *v75++ = vmovl_u8(v78);
      v77 += 8;
    }

    while (v77);
    if (v46 == (v46 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_42;
    }

    do
    {
LABEL_41:
      v50 = *v48++;
      *v49++ = v50;
    }

    while (v49 != v33);
    goto LABEL_42;
  }

  v34 = &v32[a5 & 0x7FFFFFFFFFFFFFC0];
  v35 = 0uLL;
  v36 = &result->i8[2 * v8];
  do
  {
    v101.val[0] = *a4;
    v37 = *(a4 + 16);
    v104.val[0] = *(a4 + 32);
    v38 = *(a4 + 48);
    a4 += 64;
    v39 = v38;
    v104.val[1] = 0uLL;
    v107.val[0] = v37;
    v101.val[1] = 0uLL;
    v40 = v36;
    vst2q_s8(v40, v101);
    v40 += 32;
    v107.val[1] = 0uLL;
    vst2q_s8(v40, v107);
    v41 = v36 + 64;
    vst2q_s8(v41, v104);
    v42 = v36 + 96;
    vst2q_s8(v42, *(&v35 - 1));
    v36 += 128;
  }

  while (v36 != v34);
  v43 = a2 - v8;
  if (v34 != v33)
  {
    goto LABEL_32;
  }

LABEL_42:
  if (v43 < a5)
  {
    goto LABEL_94;
  }

  if (!a6)
  {
    return result;
  }

  result = &v32[a5];
  v51 = *(a6 + 8);
  v52 = *(a6 + 4);
  if ((*(a6 + 16) & 4) == 0)
  {
    if (v52)
    {
      if (v52 == 1)
      {
        result->i16[0] = v51->i16[0];
      }

      else
      {

        return memcpy(result, v51, 2 * v52);
      }
    }

    return result;
  }

  v53 = (result + 2 * v52);
  if (v52 >= 0x40)
  {
    v54 = (result + 2 * (v52 & 0xFFFFFFC0));
    v55 = 0uLL;
    do
    {
      v102.val[0] = *v51;
      v56 = v51[1];
      v105.val[0] = v51[2];
      v57 = v51[3];
      v51 += 4;
      v58 = v57;
      v105.val[1] = 0uLL;
      v108.val[0] = v56;
      v102.val[1] = 0uLL;
      v59 = result;
      vst2q_s8(v59, v102);
      v59 += 32;
      v108.val[1] = 0uLL;
      vst2q_s8(v59, v108);
      i8 = result[4].i8;
      vst2q_s8(i8, v105);
      v61 = result[6].i8;
      vst2q_s8(v61, *(&v55 - 1));
      result += 8;
    }

    while (result != v54);
    result = v54;
  }

  if (result != v53)
  {
    v62 = &v32[v52 + a5] - result - 2;
    if (v62 < 0xE || (result < &v51->i8[(v62 >> 1) + 1] ? (v63 = v51 >= (&result->i16[1] + (v62 & 0xFFFFFFFFFFFFFFFELL))) : (v63 = 1), !v63))
    {
      v66 = v51;
      v67 = result;
      goto LABEL_62;
    }

    v64 = (v62 >> 1) + 1;
    if (v62 >= 0x3E)
    {
      v65 = v64 & 0xFFFFFFFFFFFFFFE0;
      v89 = result + 2;
      v90 = &v51[1];
      v91 = v64 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v92 = *v90[-2].i8;
        v93 = vmovl_u8(*v90);
        v94 = vmovl_high_u8(*v90->i8);
        v89[-2] = vmovl_u8(*v92.i8);
        v89[-1] = vmovl_high_u8(v92);
        *v89 = v93;
        v89[1] = v94;
        v89 += 4;
        v90 += 4;
        v91 -= 32;
      }

      while (v91);
      if (v64 == v65)
      {
        return result;
      }

      if ((v64 & 0x18) == 0)
      {
        v67 = (result + 2 * v65);
        v66 = (v51 + v65);
        goto LABEL_62;
      }
    }

    else
    {
      v65 = 0;
    }

    v66 = (v51 + (v64 & 0xFFFFFFFFFFFFFFF8));
    v67 = (result + 2 * (v64 & 0xFFFFFFFFFFFFFFF8));
    v95 = (result + 2 * v65);
    v96 = &v51->i8[v65];
    v97 = v65 - (v64 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v98 = *v96++;
      *v95++ = vmovl_u8(v98);
      v97 += 8;
    }

    while (v97);
    if (v64 == (v64 & 0xFFFFFFFFFFFFFFF8))
    {
      return result;
    }

    do
    {
LABEL_62:
      v68 = v66->u8[0];
      v66 = (v66 + 1);
      v67->i16[0] = v68;
      v67 = (v67 + 2);
    }

    while (v67 != v53);
  }

  return result;
}

void WGSL::AST::DiagnosticDirective::~DiagnosticDirective(WGSL::AST::DiagnosticDirective *this, WTF::StringImpl *a2)
{
  if (*(this + 96) == 1)
  {
    *(this + 8) = off_2838D37C0;
    v2 = *(this + 11);
    *(this + 11) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = this;
        WTF::StringImpl::destroy(v2, a2);
        this = v3;
      }
    }
  }

  *(this + 4) = off_2838D37C0;
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

{
  if (*(this + 96) == 1)
  {
    *(this + 8) = off_2838D37C0;
    v2 = *(this + 11);
    *(this + 11) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = this;
        WTF::StringImpl::destroy(v2, a2);
        this = v3;
      }
    }
  }

  *(this + 4) = off_2838D37C0;
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  JUMPOUT(0x22AA68560);
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseConstAssert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  if (*(a2 + 56) != 14)
  {
    WGSL::toString();
    WGSL::toString();
    if (v57)
    {
      v15 = *(v57 + 1);
      if (v56)
      {
LABEL_18:
        v16 = *(v56 + 1);
        if (v16 < 0)
        {
          goto LABEL_103;
        }

        v14 = __OFADD__(v16, 12);
        v17 = v16 + 12;
        v18 = v14;
        if (v15 < 0)
        {
          goto LABEL_103;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v15 = 0;
      if (v56)
      {
        goto LABEL_18;
      }
    }

    v17 = 12;
    v18 = v14;
    if (v15 < 0)
    {
      goto LABEL_103;
    }

LABEL_49:
    if (v18)
    {
      goto LABEL_103;
    }

    v14 = __OFADD__(v15, v17);
    v30 = v15 + v17;
    if (v14)
    {
      goto LABEL_103;
    }

    v31 = (v30 + 11);
    if (__OFADD__(v30, 11))
    {
      goto LABEL_103;
    }

    if (v57)
    {
      v32 = *(v57 + 4);
      v33 = (v32 >> 2) & 1;
      if (!v56 || (v32 & 4) == 0)
      {
LABEL_68:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v31, v33, "Expected a ", 0xBuLL, v57, ", but got a ", 0xCuLL, v56, &v53);
        v40 = v53;
        if (v53)
        {
          v41 = v56;
          v56 = 0;
          if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, v39);
          }

          result = v57;
          v57 = 0;
          if (!result)
          {
            goto LABEL_75;
          }

LABEL_73:
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v39);
          }

LABEL_75:
          v42 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v40;
          *(a1 + 8) = v4;
          *(a1 + 16) = v42;
LABEL_76:
          *(a1 + 24) = 1;
          return result;
        }

LABEL_103:
        __break(0xC471u);
        JUMPOUT(0x225770CC0);
      }
    }

    else if (!v56)
    {
      v33 = 1;
      goto LABEL_68;
    }

    v33 = (*(v56 + 16) >> 2) & 1;
    goto LABEL_68;
  }

  do
  {
    v8 = *(a2 + 36);
    v9 = (*(a2 + 40) + 1);
    *(a2 + 40) = v9;
    if (v8 <= v9)
    {
      __break(0xC471u);
      goto LABEL_105;
    }

    v10 = *(a2 + 24) + 32 * v9;
    v6 = *v10;
    *(a2 + 56) = *v10;
    *(a2 + 60) = *(v10 + 4);
    v11 = *v10;
    if (*v10 <= 8u)
    {
      if (((1 << v11) & 0x38) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
LABEL_4:
        v6 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v11) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
        goto LABEL_4;
      }

      if (v11 == 8)
      {
        *(a2 + 80) = 0;
        v12 = *(v10 + 24);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          v13 = *(a2 + 80);
          *(a2 + 80) = v12;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, a2);
            }
          }
        }

        goto LABEL_4;
      }
    }

LABEL_5:
    v7 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v7;
  }

  while (v6 == 82);
  v19 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v53, a2);
  if (!v55)
  {
    if (*(a2 + 56) == 73)
    {
      while (1)
      {
        v24 = *(a2 + 36);
        v25 = (*(a2 + 40) + 1);
        *(a2 + 40) = v25;
        if (v24 <= v25)
        {
          __break(0xC471u);
          JUMPOUT(0x225770CB8);
        }

        v26 = *(a2 + 24) + 32 * v25;
        v22 = *v26;
        *(a2 + 56) = *v26;
        *(a2 + 60) = *(v26 + 4);
        v27 = *v26;
        if (*v26 <= 8u)
        {
          if (((1 << v27) & 0x38) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else if (((1 << v27) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else
          {
            if (v27 != 8)
            {
              goto LABEL_33;
            }

            *(a2 + 80) = 0;
            v28 = *(v26 + 24);
            if (v28)
            {
              atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
              v29 = *(a2 + 80);
              *(a2 + 80) = v28;
              if (v29)
              {
                if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v20);
                }
              }
            }
          }

          v22 = *(a2 + 56);
        }

LABEL_33:
        v23 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v23;
        if (v22 != 82)
        {
          v48 = v4;
          v49 = v5;
          v50 = v23 - v5;
          WGSL::AST::Builder::construct<WGSL::AST::ConstAssert,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>();
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v52)
    {
      v35 = *(v52 + 1);
      if (v51)
      {
LABEL_60:
        v36 = *(v51 + 1);
        if (v36 < 0)
        {
          goto LABEL_104;
        }

        v14 = __OFADD__(v36, 12);
        v37 = v36 + 12;
        v38 = v14;
        if (v35 < 0)
        {
          goto LABEL_104;
        }

LABEL_83:
        if (v38)
        {
          goto LABEL_104;
        }

        v14 = __OFADD__(v35, v37);
        v43 = v35 + v37;
        if (v14)
        {
          goto LABEL_104;
        }

        v44 = (v43 + 11);
        if (__OFADD__(v43, 11))
        {
          goto LABEL_104;
        }

        if (v52)
        {
          v45 = *(v52 + 4);
          v46 = (v45 >> 2) & 1;
          if (!v51 || (v45 & 4) == 0)
          {
LABEL_93:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v44, v46, "Expected a ", 0xBuLL, v52, ", but got a ", 0xCuLL, v51, &v48);
            v40 = v48;
            if (v48)
            {
              v47 = v51;
              v51 = 0;
              if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v47, v39);
              }

              result = v52;
              v52 = 0;
              if (!result)
              {
                goto LABEL_75;
              }

              goto LABEL_73;
            }

LABEL_104:
            __break(0xC471u);
LABEL_105:
            JUMPOUT(0x225770CB0);
          }
        }

        else if (!v51)
        {
          v46 = 1;
          goto LABEL_93;
        }

        v46 = (*(v51 + 16) >> 2) & 1;
        goto LABEL_93;
      }
    }

    else
    {
      v35 = 0;
      if (v51)
      {
        goto LABEL_60;
      }
    }

    v37 = 12;
    if (v34)
    {
      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    if (v35 < 0)
    {
      goto LABEL_104;
    }

    goto LABEL_83;
  }

  if (v55 != 1)
  {
    mpark::throw_bad_variant_access(v19);
  }

  result = v53;
  if (!v53)
  {
    *(a1 + 8) = v54;
    *a1 = 0;
    goto LABEL_76;
  }

  atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
  *(a1 + 8) = v54;
  *a1 = result;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v20);
  }

  return result;
}

void WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v18 = 0;
  v19 = 0;
  v6 = *a1;
  v7 = *(a1 + 24);
  do
  {
    if (*(a2 + 56) != 40)
    {
      *a1 = v4;
      *(a1 + 8) = v19;
      *(a1 + 12) = v5;
      *(a1 + 24) = 0;
      return;
    }

    WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttribute(&v15, a2);
    v10 = v17;
    if (!v17)
    {
      if (v5 == v19)
      {
        v12 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v18, v5 + 1, &v15);
        v13 = HIDWORD(v19);
        v4 = v18;
        *(v18 + HIDWORD(v19)) = *v12;
        v5 = v13 + 1;
        HIDWORD(v19) = v13 + 1;
        v11 = v17;
        if (!v17)
        {
          continue;
        }
      }

      else
      {
        *(v4 + v5++) = v15;
        HIDWORD(v19) = v5;
        v11 = v17;
        if (!v17)
        {
          continue;
        }
      }

LABEL_14:
      if (v11 != 255)
      {
        v14 = v15;
        v15 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v9);
          }
        }
      }

      continue;
    }

    if (v17 != 1)
    {
      *(a1 + 24) = v7;
      *a1 = v6;
      mpark::throw_bad_variant_access(v8);
    }

    v6 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    *(a1 + 8) = v16;
    v7 = 1;
    v11 = v17;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  while (!v10);
  *(a1 + 24) = v7;
  *a1 = v6;
  if (v4)
  {
    v18 = 0;
    LODWORD(v19) = 0;
    WTF::fastFree(v4, v9);
  }
}

double WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableWithAttributes(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 56);
  if (v6 > 0x22)
  {
    goto LABEL_26;
  }

  if (((1 << v6) & 0x414002000) == 0)
  {
    if (v6 == 8)
    {
      v16 = *(a2 + 80);
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, a2);
        }
      }
    }

LABEL_26:
    memset(v167, 0, 20);
    v167[20] = 1;
    WTF::StringBuilder::append();
    WGSL::TemplateTypes<(WGSL::TokenType)13,(WGSL::TokenType)28,(WGSL::TokenType)26,(WGSL::TokenType)34>::appendNameTo(v167);
    WGSL::toString();
    v162 = "], but got a ";
    *&v163 = 13;
    v159 = v157;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>(v167, &v162, &v159);
    if (v157 && atomic_fetch_add_explicit(v157, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v157, v17);
    }

    v19 = *v167;
    if (*v167)
    {
      v20 = v5 | ((*(a2 + 96) - v5) << 32);
    }

    else
    {
      WTF::StringBuilder::shrinkToFit(v167);
      WTF::StringBuilder::reifyString(v167);
      v19 = *v167;
      v20 = v5 | ((*(a2 + 96) - v5) << 32);
      if (!*v167)
      {
LABEL_84:
        *a1 = v19;
        *(a1 + 8) = v4;
        *(a1 + 16) = v20;
        *(a1 + 24) = 1;
        v48 = *&v167[8];
        *&v167[8] = 0;
        if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v48, v17);
        }

LABEL_346:
        v116 = *v167;
        *v167 = 0;
        if (v116)
        {
          goto LABEL_347;
        }

        return result;
      }
    }

    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    goto LABEL_84;
  }

  do
  {
    v9 = *(a2 + 36);
    v10 = (*(a2 + 40) + 1);
    *(a2 + 40) = v10;
    if (v9 <= v10)
    {
      __break(0xC471u);
      goto LABEL_370;
    }

    v11 = *(a2 + 24) + 32 * v10;
    v7 = *v11;
    *(a2 + 56) = *v11;
    *(a2 + 60) = *(v11 + 4);
    v12 = *v11;
    if (*v11 <= 8u)
    {
      if (((1 << v12) & 0x38) != 0)
      {
        *(a2 + 80) = *(v11 + 24);
LABEL_5:
        v7 = *(a2 + 56);
        goto LABEL_6;
      }

      if (((1 << v12) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v11 + 24);
        goto LABEL_5;
      }

      if (v12 == 8)
      {
        *(a2 + 80) = 0;
        v13 = *(v11 + 24);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          v14 = *(a2 + 80);
          *(a2 + 80) = v13;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, a2);
            }
          }
        }

        goto LABEL_5;
      }
    }

LABEL_6:
    v8 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v8;
  }

  while (v7 == 82);
  if (v6 == 13)
  {
    v15 = 0;
    v154 = 1;
    if (v7 == 83)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

  if (v6 == 28)
  {
    v154 = 0;
    v15 = 2;
    if (v7 == 83)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

  if (v6 != 26)
  {
    v154 = 0;
    v15 = 3;
    if (v7 != 83)
    {
      goto LABEL_64;
    }

LABEL_32:
    v153 = *(a2 + 88);
    while (1)
    {
      v23 = *(a2 + 36);
      v24 = (*(a2 + 40) + 1);
      *(a2 + 40) = v24;
      if (v23 <= v24)
      {
        __break(0xC471u);
        JUMPOUT(0x2257721E8);
      }

      v25 = *(a2 + 24) + 32 * v24;
      v21 = *v25;
      *(a2 + 56) = *v25;
      *(a2 + 60) = *(v25 + 4);
      v26 = *v25;
      if (*v25 > 8u)
      {
        goto LABEL_35;
      }

      if (((1 << v26) & 0x38) != 0)
      {
        *(a2 + 80) = *(v25 + 24);
      }

      else if (((1 << v26) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v25 + 24);
      }

      else
      {
        if (v26 != 8)
        {
          goto LABEL_35;
        }

        *(a2 + 80) = 0;
        v27 = *(v25 + 24);
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          v28 = *(a2 + 80);
          *(a2 + 80) = v27;
          if (v28)
          {
            if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, a2);
            }
          }
        }
      }

      v21 = *(a2 + 56);
LABEL_35:
      v22 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v22;
      if (v21 != 82)
      {
        v29 = *(a2 + 88);
        if (v21 == 8)
        {
          *v167 = 8;
          *&v167[4] = *(a2 + 60);
          v168 = 0;
          v30 = *(a2 + 80);
          if (v30)
          {
            atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
            v168 = v30;
          }

          v169 = 0;
          while (2)
          {
            v33 = *(a2 + 36);
            v34 = (*(a2 + 40) + 1);
            *(a2 + 40) = v34;
            if (v33 <= v34)
            {
              __break(0xC471u);
              JUMPOUT(0x2257721F0);
            }

            v35 = *(a2 + 24) + 32 * v34;
            v31 = *v35;
            *(a2 + 56) = *v35;
            *(a2 + 60) = *(v35 + 4);
            v36 = *v35;
            if (*v35 <= 8u)
            {
              if (((1 << v36) & 0x38) != 0)
              {
                *(a2 + 80) = *(v35 + 24);
                goto LABEL_51;
              }

              if (((1 << v36) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v35 + 24);
                goto LABEL_51;
              }

              if (v36 == 8)
              {
                *(a2 + 80) = 0;
                v37 = *(v35 + 24);
                if (v37)
                {
                  atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
                  v38 = *(a2 + 80);
                  *(a2 + 80) = v37;
                  if (v38)
                  {
                    if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v38, a2);
                    }
                  }
                }

LABEL_51:
                v31 = *(a2 + 56);
              }
            }

            v32 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v32;
            if (v31 == 82)
            {
              continue;
            }

            break;
          }

          v39 = WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::AddressSpace> [6]>::tryGet<WTF::String>(WGSL::parseAddressSpace(WTF::String const&)::__map, &v168);
          if (v39 && *v39 != 1)
          {
            v47 = 0;
            LOBYTE(v162) = *v39;
          }

          else
          {
            v39 = WTF::StringImpl::createWithoutCopyingNonEmpty();
            v46 = v22 | ((*(a2 + 96) - v22) << 32);
            *&v163 = v29;
            *(&v163 + 1) = v46;
            v47 = 1;
          }

          v164 = v47;
          v53 = v169;
          if (v169 != 255)
          {
            goto LABEL_103;
          }

LABEL_171:
          if (v47)
          {
            goto LABEL_172;
          }

LABEL_109:
          v54 = *(a2 + 56);
          if (v54 == 48)
          {
            if (v162 != 3)
            {
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v72 = v8 | ((*(a2 + 96) - v8) << 32);
              goto LABEL_249;
            }

            while (2)
            {
              v57 = *(a2 + 36);
              v58 = (*(a2 + 40) + 1);
              *(a2 + 40) = v58;
              if (v57 <= v58)
              {
                __break(0xC471u);
                JUMPOUT(0x225772210);
              }

              v59 = *(a2 + 24) + 32 * v58;
              v55 = *v59;
              *(a2 + 56) = *v59;
              *(a2 + 60) = *(v59 + 4);
              v60 = *v59;
              if (*v59 <= 8u)
              {
                if (((1 << v60) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v59 + 24);
                  goto LABEL_113;
                }

                if (((1 << v60) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v59 + 24);
                  goto LABEL_113;
                }

                if (v60 == 8)
                {
                  *(a2 + 80) = 0;
                  v61 = *(v59 + 24);
                  if (v61)
                  {
                    atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
                    v62 = *(a2 + 80);
                    *(a2 + 80) = v61;
                    if (v62)
                    {
                      if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v62, v17);
                      }
                    }
                  }

LABEL_113:
                  v55 = *(a2 + 56);
                }
              }

              v56 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v56;
              if (v55 == 82)
              {
                continue;
              }

              break;
            }

            v73 = *(a2 + 88);
            if (v55 == 8)
            {
              *v167 = 8;
              *&v167[4] = *(a2 + 60);
              v168 = 0;
              v74 = *(a2 + 80);
              if (v74)
              {
                atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
                v168 = v74;
              }

              v169 = 0;
              while (1)
              {
                v77 = *(a2 + 36);
                v78 = (*(a2 + 40) + 1);
                *(a2 + 40) = v78;
                if (v77 <= v78)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225772220);
                }

                v79 = *(a2 + 24) + 32 * v78;
                v75 = *v79;
                *(a2 + 56) = *v79;
                *(a2 + 60) = *(v79 + 4);
                v80 = *v79;
                if (*v79 > 8u)
                {
                  goto LABEL_151;
                }

                if (((1 << v80) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v79 + 24);
                }

                else if (((1 << v80) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v79 + 24);
                }

                else
                {
                  if (v80 != 8)
                  {
                    goto LABEL_151;
                  }

                  *(a2 + 80) = 0;
                  v81 = *(v79 + 24);
                  if (v81)
                  {
                    atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
                    v82 = *(a2 + 80);
                    *(a2 + 80) = v81;
                    if (v82)
                    {
                      if (atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v82, v17);
                      }
                    }
                  }
                }

                v75 = *(a2 + 56);
LABEL_151:
                v76 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v76;
                if (v75 != 82)
                {
                  v88 = WGSL::parseAccessMode(&v168);
                  if (v88)
                  {
                    v89 = 0;
                    LOBYTE(v159) = *v88;
                  }

                  else
                  {
                    WTF::StringImpl::createWithoutCopyingNonEmpty();
                    v97 = v56 | ((*(a2 + 96) - v56) << 32);
                    *&v160 = v73;
                    *(&v160 + 1) = v97;
                    v89 = 1;
                  }

                  goto LABEL_208;
                }
              }
            }

            *v167 = v55;
            v169 = 1;
            WGSL::toString();
            WGSL::toString();
            if (v166)
            {
              v87 = *(v166 + 1);
            }

            else
            {
              v87 = 0;
            }

            if (v165)
            {
              v90 = *(v165 + 4);
              if (v90 < 0)
              {
                goto LABEL_365;
              }
            }

            else
            {
              v90 = 0;
            }

            v41 = __OFADD__(v90, 12);
            v91 = v90 + 12;
            v92 = v41;
            if ((v87 & 0x80000000) == 0 && (v92 & 1) == 0)
            {
              v41 = __OFADD__(v87, v91);
              v93 = v87 + v91;
              if (!v41)
              {
                v94 = (v93 + 11);
                if (!__OFADD__(v93, 11))
                {
                  if (v166)
                  {
                    v95 = *(v166 + 4);
                    v96 = (v95 >> 2) & 1;
                    if (!v165 || (v95 & 4) == 0)
                    {
LABEL_200:
                      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v94, v96, "Expected a ", 0xBuLL, v166, ", but got a ", 0xCuLL, v165, &v170);
                      v98 = v170;
                      if (v170)
                      {
                        v99 = v165;
                        v165 = 0;
                        if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v99, v17);
                        }

                        v100 = v166;
                        v166 = 0;
                        if (v100 && atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v100, v17);
                        }

                        v101 = v56 | ((*(a2 + 96) - v56) << 32);
                        v159 = v98;
                        *&v160 = v73;
                        *(&v160 + 1) = v101;
                        v89 = 1;
LABEL_208:
                        v161 = v89;
                        if (v169 != 255)
                        {
                          if (!v169 && *v167 == 8)
                          {
                            v102 = v168;
                            v168 = 0;
                            if (v102)
                            {
                              if (atomic_fetch_add_explicit(v102, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v102, v17);
                              }
                            }
                          }

                          v89 = v161;
                        }

                        if (v89)
                        {
                          if (v159)
                          {
                            atomic_fetch_add_explicit(v159, 2u, memory_order_relaxed);
                            v157 = v159;
                            v158 = v160;
                            if (v161)
                            {
                              v103 = v159;
                              v159 = 0;
                              if (atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v103, v17);
                              }
                            }
                          }

                          else
                          {
                            v157 = 0;
                            v158 = v160;
                          }

                          goto LABEL_250;
                        }

                        LOBYTE(v166) = v159;
                        if (*(a2 + 56) == 84)
                        {
                          goto LABEL_133;
                        }

LABEL_221:
                        WGSL::toString();
                        WGSL::toString();
                        if (v159)
                        {
                          v104 = *(v159 + 1);
                          if (v170)
                          {
                            goto LABEL_223;
                          }

LABEL_226:
                          v105 = 0;
                          goto LABEL_227;
                        }

                        v104 = 0;
                        if (!v170)
                        {
                          goto LABEL_226;
                        }

LABEL_223:
                        v105 = *(v170 + 4);
                        if (v105 < 0)
                        {
LABEL_363:
                          __break(0xC471u);
                          JUMPOUT(0x225772228);
                        }

LABEL_227:
                        v41 = __OFADD__(v105, 12);
                        v106 = v105 + 12;
                        v107 = v41;
                        if (v104 < 0)
                        {
                          goto LABEL_363;
                        }

                        if (v107)
                        {
                          goto LABEL_363;
                        }

                        v41 = __OFADD__(v104, v106);
                        v108 = v104 + v106;
                        if (v41)
                        {
                          goto LABEL_363;
                        }

                        v109 = (v108 + 11);
                        if (__OFADD__(v108, 11))
                        {
                          goto LABEL_363;
                        }

                        if (v159)
                        {
                          v110 = *(v159 + 4);
                          v111 = (v110 >> 2) & 1;
                          if (!v170 || (v110 & 4) == 0)
                          {
LABEL_241:
                            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v109, v111, "Expected a ", 0xBuLL, v159, ", but got a ", 0xCuLL, v170, v167);
                            v112 = *v167;
                            if (!*v167)
                            {
                              goto LABEL_363;
                            }

                            v113 = v170;
                            v170 = 0;
                            if (v113 && atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v113, v17);
                            }

                            v114 = v159;
                            v159 = 0;
                            if (v114 && atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v114, v17);
                            }

                            v72 = v8 | ((*(a2 + 96) - v8) << 32);
                            v157 = v112;
LABEL_249:
                            *&v158 = v153;
                            *(&v158 + 1) = v72;
LABEL_250:
                            if (v164)
                            {
                              if (v164 != 255)
                              {
                                v115 = v162;
                                v162 = 0;
                                if (v115)
                                {
                                  if (atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v115, v17);
                                  }
                                }
                              }
                            }

                            if (!v157)
                            {
                              *a1 = 0;
                              result = *&v158;
                              *(a1 + 8) = v158;
                              *(a1 + 24) = 1;
                              return result;
                            }

                            atomic_fetch_add_explicit(v157, 2u, memory_order_relaxed);
                            *a1 = v157;
                            result = *&v158;
                            *(a1 + 8) = v158;
                            *(a1 + 24) = 1;
                            v116 = v157;
                            goto LABEL_347;
                          }
                        }

                        else if (!v170)
                        {
                          v111 = 1;
                          goto LABEL_241;
                        }

                        v111 = (*(v170 + 16) >> 2) & 1;
                        goto LABEL_241;
                      }

                      goto LABEL_365;
                    }
                  }

                  else if (!v165)
                  {
                    v96 = 1;
                    goto LABEL_200;
                  }

                  v96 = (*(v165 + 16) >> 2) & 1;
                  goto LABEL_200;
                }
              }
            }

LABEL_365:
            __break(0xC471u);
            JUMPOUT(0x225772238);
          }

          if (v162 >= 5u)
          {
            v63 = 1;
          }

          else
          {
            v63 = 0x10001uLL >> (8 * v162);
          }

          LOBYTE(v166) = v63;
          if (v54 != 84)
          {
            goto LABEL_221;
          }

LABEL_133:
          while (2)
          {
            v66 = *(a2 + 36);
            v67 = (*(a2 + 40) + 1);
            *(a2 + 40) = v67;
            if (v66 <= v67)
            {
              __break(0xC471u);
              JUMPOUT(0x225772208);
            }

            v68 = *(a2 + 24) + 32 * v67;
            v64 = *v68;
            *(a2 + 56) = *v68;
            *(a2 + 60) = *(v68 + 4);
            v69 = *v68;
            if (*v68 <= 8u)
            {
              if (((1 << v69) & 0x38) != 0)
              {
                *(a2 + 80) = *(v68 + 24);
                goto LABEL_131;
              }

              if (((1 << v69) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v68 + 24);
                goto LABEL_131;
              }

              if (v69 == 8)
              {
                *(a2 + 80) = 0;
                v70 = *(v68 + 24);
                if (v70)
                {
                  atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
                  v71 = *(a2 + 80);
                  *(a2 + 80) = v70;
                  if (v71)
                  {
                    if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v71, v17);
                    }
                  }
                }

LABEL_131:
                v64 = *(a2 + 56);
              }
            }

            v65 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v65;
            if (v64 != 82)
            {
              *v167 = v153;
              *&v167[8] = v8;
              *&v167[12] = v65 - v8;
              WGSL::AST::Builder::construct<WGSL::AST::VariableQualifier,WGSL::SourceSpan,WGSL::AddressSpace &,WGSL::AccessMode &,void>();
            }

            continue;
          }
        }

        *v167 = v21;
        v169 = 1;
        WGSL::toString();
        WGSL::toString();
        if (v159)
        {
          v42 = *(v159 + 1);
          if (v170)
          {
LABEL_73:
            v43 = *(v170 + 4);
            if (v43 < 0)
            {
              goto LABEL_361;
            }

            v41 = __OFADD__(v43, 12);
            v44 = v43 + 12;
            v45 = v41;
            if (v42 < 0)
            {
              goto LABEL_361;
            }

LABEL_92:
            if (v45)
            {
              goto LABEL_361;
            }

            v41 = __OFADD__(v42, v44);
            v49 = v42 + v44;
            if (v41)
            {
              goto LABEL_361;
            }

            v50 = (v49 + 11);
            if (__OFADD__(v49, 11))
            {
              goto LABEL_361;
            }

            if (v159)
            {
              v51 = *(v159 + 4);
              v52 = (v51 >> 2) & 1;
              if (!v170 || (v51 & 4) == 0)
              {
                goto LABEL_163;
              }

LABEL_100:
              v52 = (*(v170 + 16) >> 2) & 1;
            }

            else
            {
              if (v170)
              {
                goto LABEL_100;
              }

              v52 = 1;
            }

LABEL_163:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v50, v52, "Expected a ", 0xBuLL, v159, ", but got a ", 0xCuLL, v170, &v162);
            v83 = v162;
            if (v162)
            {
              v84 = v170;
              v170 = 0;
              if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v84, v17);
              }

              v39 = v159;
              v159 = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                v39 = WTF::StringImpl::destroy(v39, v17);
              }

              v85 = v22 | ((*(a2 + 96) - v22) << 32);
              v162 = v83;
              *&v163 = v29;
              *(&v163 + 1) = v85;
              v47 = 1;
              v164 = 1;
              v53 = v169;
              if (v169 == 255)
              {
                goto LABEL_171;
              }

LABEL_103:
              if (!v53 && *v167 == 8)
              {
                v39 = v168;
                v168 = 0;
                if (v39)
                {
                  if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v39 = WTF::StringImpl::destroy(v39, v17);
                  }
                }
              }

              v47 = v164;
              if (!v164)
              {
                goto LABEL_109;
              }

LABEL_172:
              if (v47 != 1)
              {
                goto LABEL_353;
              }

              v86 = v162;
              if (v162)
              {
                atomic_fetch_add_explicit(v162, 2u, memory_order_relaxed);
              }

              v158 = v163;
              v157 = v86;
              goto LABEL_250;
            }

LABEL_361:
            __break(0xC471u);
            JUMPOUT(0x225772218);
          }
        }

        else
        {
          v42 = 0;
          if (v170)
          {
            goto LABEL_73;
          }
        }

        v44 = 12;
        v45 = v41;
        if ((v42 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        goto LABEL_361;
      }
    }
  }

  v154 = 1;
  v15 = 1;
  if (v7 == 83)
  {
    goto LABEL_32;
  }

LABEL_64:
  v39 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v167, a2);
  if (v169)
  {
    if (v169 == 1)
    {
      v40 = *v167;
      if (*v167)
      {
        atomic_fetch_add_explicit(*v167, 2u, memory_order_relaxed);
      }

      result = *&v167[8];
      *(a1 + 8) = *&v167[8];
      *a1 = v40;
      goto LABEL_341;
    }

    goto LABEL_353;
  }

  v159 = 0;
  v117 = *(a2 + 56);
  if (v117 != 47)
  {
    v126 = v15;
    v127 = 0;
    if ((v154 & 1) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_273;
  }

  while (2)
  {
    v120 = *(a2 + 36);
    v121 = (*(a2 + 40) + 1);
    *(a2 + 40) = v121;
    if (v120 <= v121)
    {
      __break(0xC471u);
      JUMPOUT(0x2257721F8);
    }

    v122 = *(a2 + 24) + 32 * v121;
    v118 = *v122;
    *(a2 + 56) = *v122;
    *(a2 + 60) = *(v122 + 4);
    v123 = *v122;
    if (*v122 <= 8u)
    {
      if (((1 << v123) & 0x38) != 0)
      {
        *(a2 + 80) = *(v122 + 24);
        goto LABEL_260;
      }

      if (((1 << v123) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v122 + 24);
        goto LABEL_260;
      }

      if (v123 == 8)
      {
        *(a2 + 80) = 0;
        v124 = *(v122 + 24);
        if (v124)
        {
          atomic_fetch_add_explicit(v124, 2u, memory_order_relaxed);
          v125 = *(a2 + 80);
          *(a2 + 80) = v124;
          if (v125)
          {
            if (atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v125, v17);
            }
          }
        }

LABEL_260:
        v118 = *(a2 + 56);
      }
    }

    v119 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v119;
    if (v118 == 82)
    {
      continue;
    }

    break;
  }

  v39 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v162, a2);
  if (!v164)
  {
    v126 = v15;
    v159 = v162;
    v127 = v162 != 0;
    v117 = *(a2 + 56);
    if ((v154 & 1) == 0)
    {
LABEL_287:
      if (v117 != 49)
      {
        if (!v127)
        {
          goto LABEL_310;
        }

        goto LABEL_308;
      }

      while (1)
      {
LABEL_292:
        v135 = *(a2 + 36);
        v136 = (*(a2 + 40) + 1);
        *(a2 + 40) = v136;
        if (v135 <= v136)
        {
          __break(0xC471u);
          JUMPOUT(0x225772200);
        }

        v137 = *(a2 + 24) + 32 * v136;
        v133 = *v137;
        *(a2 + 56) = *v137;
        *(a2 + 60) = *(v137 + 4);
        v138 = *v137;
        if (*v137 > 8u)
        {
          goto LABEL_291;
        }

        if (((1 << v138) & 0x38) != 0)
        {
          *(a2 + 80) = *(v137 + 24);
        }

        else if (((1 << v138) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v137 + 24);
        }

        else
        {
          if (v138 != 8)
          {
            goto LABEL_291;
          }

          *(a2 + 80) = 0;
          v139 = *(v137 + 24);
          if (v139)
          {
            atomic_fetch_add_explicit(v139, 2u, memory_order_relaxed);
            v140 = *(a2 + 80);
            *(a2 + 80) = v139;
            if (v140)
            {
              if (atomic_fetch_add_explicit(v140, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v140, v17);
              }
            }
          }
        }

        v133 = *(a2 + 56);
LABEL_291:
        v134 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v134;
        if (v133 != 82)
        {
          v39 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v162, a2);
          if (v164)
          {
            if (v164 == 1)
            {
              v132 = v162;
              if (v162)
              {
                atomic_fetch_add_explicit(v162, 2u, memory_order_relaxed);
                *a1 = v132;
                result = *&v163;
                *(a1 + 8) = v163;
                *(a1 + 24) = 1;
                if (atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  goto LABEL_306;
                }

                goto LABEL_342;
              }

LABEL_351:
              *a1 = 0;
              result = *&v163;
              *(a1 + 8) = v163;
LABEL_341:
              *(a1 + 24) = 1;
              goto LABEL_342;
            }

LABEL_353:
            mpark::throw_bad_variant_access(v39);
          }

          if (!v127 && v162 == 0)
          {
LABEL_310:
            if (v126 <= 2)
            {
              if (v126 == 2)
              {
                v142 = "override";
                v143 = 8;
                goto LABEL_314;
              }

              if (!v126)
              {
                __break(0xC471u);
                JUMPOUT(0x225772264);
              }

              __break(0xC471u);
LABEL_370:
              JUMPOUT(0x2257721E0);
            }

            v142 = "var";
            v143 = 3;
LABEL_314:
            WTF::tryFastCompactMalloc((v143 + 63));
            v144 = v162;
            if (!v162)
            {
              __break(0xC471u);
              JUMPOUT(0x225772240);
            }

            *v162 = 2;
            *(v144 + 1) = v143 + 43;
            *(v144 + 1) = v144 + 20;
            *(v144 + 4) = 4;
            memcpy(v144 + 20, v142, v143);
            qmemcpy(v144 + v143 + 20, " declaration requires a type or initializer", 43);
            result = *"e or initializer";
            v145 = v5 | ((*(a2 + 96) - v5) << 32);
            *a1 = v144;
LABEL_340:
            *(a1 + 8) = v4;
            *(a1 + 16) = v145;
            goto LABEL_341;
          }

LABEL_308:
          v141 = *(a2 + 96) - v5;
          v162 = v4;
          *&v163 = __PAIR64__(v141, v5);
          WGSL::AST::Builder::construct<WGSL::AST::Variable,WGSL::SourceSpan,WGSL::AST::VariableFlavor &,WGSL::AST::Identifier,WGSL::AST::VariableQualifier *,WGSL::AST::Expression *,WGSL::AST::Expression *,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>();
        }
      }
    }

LABEL_273:
    if (v117 == 49)
    {
      goto LABEL_292;
    }

    WGSL::toString();
    WGSL::toString();
    if (v156)
    {
      v128 = *(v156 + 1);
      if (v155)
      {
        goto LABEL_276;
      }
    }

    else
    {
      v128 = 0;
      if (v155)
      {
LABEL_276:
        v129 = *(v155 + 1);
        if (v129 < 0)
        {
          goto LABEL_364;
        }

LABEL_318:
        v41 = __OFADD__(v129, 12);
        v146 = v129 + 12;
        v147 = v41;
        if (v128 < 0)
        {
          goto LABEL_364;
        }

        if (v147)
        {
          goto LABEL_364;
        }

        v41 = __OFADD__(v128, v146);
        v148 = v128 + v146;
        if (v41)
        {
          goto LABEL_364;
        }

        v149 = (v148 + 11);
        if (__OFADD__(v148, 11))
        {
          goto LABEL_364;
        }

        if (v156)
        {
          v150 = *(v156 + 4);
          v151 = (v150 >> 2) & 1;
          if (!v155 || (v150 & 4) == 0)
          {
LABEL_332:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v149, v151, "Expected a ", 0xBuLL, v156, ", but got a ", 0xCuLL, v155, &v162);
            v152 = v162;
            if (v162)
            {
              if (v155 && atomic_fetch_add_explicit(v155, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v155, v17);
              }

              if (v156 && atomic_fetch_add_explicit(v156, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v156, v17);
              }

              v145 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v152;
              goto LABEL_340;
            }

LABEL_364:
            __break(0xC471u);
            JUMPOUT(0x225772230);
          }
        }

        else if (!v155)
        {
          v151 = 1;
          goto LABEL_332;
        }

        v151 = (*(v155 + 16) >> 2) & 1;
        goto LABEL_332;
      }
    }

    v129 = 0;
    goto LABEL_318;
  }

  if (v164 != 1)
  {
    goto LABEL_353;
  }

  v130 = v162;
  if (!v162)
  {
    goto LABEL_351;
  }

  atomic_fetch_add_explicit(v162, 2u, memory_order_relaxed);
  v131 = v164;
  *a1 = v130;
  result = *&v163;
  *(a1 + 8) = v163;
  *(a1 + 24) = 1;
  if (v131)
  {
    if (v131 != 255)
    {
      v132 = v162;
      v162 = 0;
      if (v132)
      {
        if (atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
LABEL_306:
          WTF::StringImpl::destroy(v132, v17);
        }
      }
    }
  }

LABEL_342:
  if (v169 == 255)
  {
    return result;
  }

  if (v169)
  {
    goto LABEL_346;
  }

  v116 = v168;
  *v167 = off_2838D37C0;
  v168 = 0;
  if (!v116)
  {
    return result;
  }

LABEL_347:
  if (atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v116, v17);
  }

  return result;
}