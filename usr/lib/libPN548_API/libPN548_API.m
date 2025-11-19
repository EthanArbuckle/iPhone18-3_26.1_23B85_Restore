void sub_297F979E8(double a1, double a2, uint64_t a3, uint64_t a4, int a5, unsigned int *a6)
{
  v8 = a4;
  v316 = *MEMORY[0x29EDCA608];
  if (a5 > 121)
  {
    if (a5 > 154)
    {
      if (a5 > 208)
      {
        if (a5 != 209)
        {
          if (a5 == 216)
          {
            v179 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              Logger(6, "%s:%i eSE Restricted Event %d %d", "_Callback_NFDriverNotifyGeneral", 2396, *a6, a6[1]);
            }

            dispatch_get_specific(*v179);
            v181 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_356;
            }

            v182 = *a6;
            v183 = a6[1];
            *buf = 136446978;
            *&buf[4] = "_Callback_NFDriverNotifyGeneral";
            *&buf[12] = 1024;
            *&buf[14] = 2396;
            *&buf[18] = 1024;
            *&buf[20] = v182;
            *&buf[24] = 1024;
            *&buf[26] = v183;
            v30 = "%{public}s:%i eSE Restricted Event %d %d";
            v46 = v181;
            v47 = OS_LOG_TYPE_DEFAULT;
            v118 = 30;
LABEL_322:
            _os_log_impl(&dword_297F97000, v46, v47, v30, buf, v118);
            goto LABEL_356;
          }

          if (a5 == 304)
          {
            v17 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v18 = NFLogGetLogger();
            if (v18)
            {
              v18(3, "%s:%i MW requested VEN reset.", "_Callback_NFDriverNotifyGeneral", 2374);
            }

            dispatch_get_specific(*v17);
            v19 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2374;
              _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i MW requested VEN reset.", buf, 0x12u);
            }

            v20 = *(*(v8 + 24) + 576);
            v21 = phTmlNfc_IoCtl();
            if (v21 || (v22 = *(*(v8 + 24) + 576), (v21 = phTmlNfc_IoCtl()) != 0))
            {
              v23 = v21;
              dispatch_get_specific(*v17);
              v24 = NFLogGetLogger();
              if (v24)
              {
                v24(3, "%s:%i Failed to VEN reset !!!!! : 0x%04X", "_Callback_NFDriverNotifyGeneral", 2387, v23);
              }

              dispatch_get_specific(*v17);
              v25 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "_Callback_NFDriverNotifyGeneral";
                *&buf[12] = 1024;
                *&buf[14] = 2387;
                *&buf[18] = 1024;
                *&buf[20] = v23;
                _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to VEN reset !!!!! : 0x%04X", buf, 0x18u);
              }
            }

            else
            {
              dispatch_get_specific(*v17);
              v270 = NFLogGetLogger();
              if (v270)
              {
                v270(6, "%s:%i Success!", "_Callback_NFDriverNotifyGeneral", 2385);
              }

              dispatch_get_specific(*v17);
              v271 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "_Callback_NFDriverNotifyGeneral";
                *&buf[12] = 1024;
                *&buf[14] = 2385;
                _os_log_impl(&dword_297F97000, v271, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Success!", buf, 0x12u);
              }
            }

            v26 = *(*(v8 + 24) + 576);
            phLibNfc_Mgt_VenResetStatus();
            goto LABEL_356;
          }

          goto LABEL_51;
        }

        v184 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v185 = NFLogGetLogger();
        if (v185)
        {
          v185(6, "%s:%i ==== NFCC/SE TEMPERATURE CONDITION EXITED ====", "_Callback_NFDriverNotifyGeneral", 2200);
        }

        dispatch_get_specific(*v184);
        v186 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2200;
          _os_log_impl(&dword_297F97000, v186, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ==== NFCC/SE TEMPERATURE CONDITION EXITED ====", buf, 0x12u);
        }

        v187 = *(v8 + 24);
        v188 = 0x6BE24Fu >> sub_297FA01E8(*(v187 + 620), *(v187 + 624));
        v15 = *(v187 + 568);
        v287[0] = MEMORY[0x29EDCA5F8];
        v287[1] = 0x40000000;
        v287[2] = sub_297FBD86C;
        v287[3] = &unk_29EE882F8;
        v287[4] = v8;
        v288 = v188 & 1;
        v16 = v287;
LABEL_355:
        dispatch_async(v15, v16);
        goto LABEL_356;
      }

      if (a5 != 155)
      {
        if (a5 == 159)
        {
          if (*(a4 + 57) == 1)
          {
            LODWORD(a1) = a6[2];
            v33 = *&a1 * 0.07374;
            v34 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v35 = NFLogGetLogger();
            if (v35)
            {
              v35(6, "%s:%i Response time : %f us (%d), PICC Response: 0x%04X, PCD response = 0x%04X", "_Callback_NFDriverNotifyGeneral", 2343, v33, a6[2], a6[1], *a6);
            }

            dispatch_get_specific(*v34);
            v36 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v38 = a6[1];
              v37 = a6[2];
              v39 = *a6;
              *buf = 136447490;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2343;
              *&buf[18] = 2048;
              *&buf[20] = v33;
              *&buf[28] = 1024;
              *&buf[30] = v37;
              *&buf[34] = 1024;
              *&buf[36] = v38;
              *&buf[40] = 1024;
              *&buf[42] = v39;
              _os_log_impl(&dword_297F97000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Response time : %f us (%d), PICC Response: 0x%04X, PCD response = 0x%04X", buf, 0x2Eu);
            }

            v40 = NFSharedSignpostLog();
            if (os_signpost_enabled(v40))
            {
              *buf = 134217984;
              *&buf[4] = v33;
              _os_signpost_emit_with_name_impl(&dword_297F97000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ANTI_RELAY", "%f", buf, 0xCu);
            }
          }

          goto LABEL_356;
        }

        goto LABEL_51;
      }

      if (a6)
      {
        v279 = malloc_type_calloc(1uLL, 0x300uLL, 0x1080040DD2123E5uLL);
        v189 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v190 = NFLogGetLogger();
        if (v190)
        {
          v190(6, "%s:%i Num Tags Added=%d, Detected=%d, Removed=%d, Not Interested=%d", "_Callback_NFDriverNotifyGeneral", 2255, *a6, *(a6 + 32), *(a6 + 16), *(a6 + 48));
        }

        v278 = v8;
        dispatch_get_specific(*v189);
        v191 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
        {
          v192 = *a6;
          v193 = *(a6 + 32);
          v194 = *(a6 + 16);
          v195 = *(a6 + 48);
          *buf = 136447490;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2255;
          *&buf[18] = 1024;
          *&buf[20] = v192;
          *&buf[24] = 1024;
          *&buf[26] = v193;
          *&buf[30] = 1024;
          *&buf[32] = v194;
          *&buf[36] = 1024;
          *&buf[38] = v195;
          _os_log_impl(&dword_297F97000, v191, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Num Tags Added=%d, Detected=%d, Removed=%d, Not Interested=%d", buf, 0x2Au);
        }

        if (*a6)
        {
          v196 = 0;
          v197 = 0;
          v198 = v279 + 72;
          do
          {
            dispatch_get_specific(*v189);
            v199 = NFLogGetLogger();
            if (v199)
            {
              v200 = (*(a6 + 1) + v196);
              v199(6, "%s:%i Added Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", "_Callback_NFDriverNotifyGeneral", 2265, v197, *v200, v200[1], v200[2], v200[3], v200[4]);
            }

            dispatch_get_specific(*v189);
            v201 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
            {
              v202 = (*(a6 + 1) + v196);
              v203 = *v202;
              v204 = v202[1];
              v205 = v202[2];
              v206 = v202[3];
              LODWORD(v202) = v202[4];
              *buf = 136448002;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2265;
              *&buf[18] = 1024;
              *&buf[20] = v197;
              *&buf[24] = 1024;
              *&buf[26] = v203;
              *&buf[30] = 1024;
              *&buf[32] = v204;
              *&buf[36] = 1024;
              *&buf[38] = v205;
              *&buf[42] = 1024;
              *&buf[44] = v206;
              *&buf[48] = 1024;
              *&buf[50] = v202;
              _os_log_impl(&dword_297F97000, v201, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Added Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", buf, 0x36u);
            }

            if (v197 <= 1)
            {
              v207 = (*(a6 + 1) + v196);
              *(v198 - 16) = sub_297FBD8FC(*v207);
              v198[16] = 4;
              *v198 = *(v207 + 1);
            }

            ++v197;
            v198 += 96;
            v196 += 5;
          }

          while (v197 < *a6);
        }

        if (*(a6 + 32))
        {
          v208 = 0;
          v209 = 0;
          v210 = v279 + 280;
          do
          {
            dispatch_get_specific(*v189);
            v211 = NFLogGetLogger();
            if (v211)
            {
              v212 = (*(a6 + 5) + v208);
              v211(6, "%s:%i Detected Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", "_Callback_NFDriverNotifyGeneral", 2279, v209, *v212, v212[1], v212[2], v212[3], v212[4]);
            }

            dispatch_get_specific(*v189);
            v213 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
            {
              v214 = (*(a6 + 5) + v208);
              v215 = *v214;
              v216 = v214[1];
              v217 = v214[2];
              v218 = v214[3];
              LODWORD(v214) = v214[4];
              *buf = 136448002;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2279;
              *&buf[18] = 1024;
              *&buf[20] = v209;
              *&buf[24] = 1024;
              *&buf[26] = v215;
              *&buf[30] = 1024;
              *&buf[32] = v216;
              *&buf[36] = 1024;
              *&buf[38] = v217;
              *&buf[42] = 1024;
              *&buf[44] = v218;
              *&buf[48] = 1024;
              *&buf[50] = v214;
              _os_log_impl(&dword_297F97000, v213, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Detected Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", buf, 0x36u);
            }

            if (v209 <= 1)
            {
              v219 = (*(a6 + 5) + v208);
              *(v210 - 20) = sub_297FBD8FC(*v219);
              *v210 = 4;
              *(v210 - 4) = *(v219 + 1);
            }

            ++v209;
            v208 += 5;
            v210 += 96;
          }

          while (v209 < *(a6 + 32));
        }

        if (*(a6 + 16))
        {
          v220 = 0;
          v221 = 0;
          v222 = v279 + 472;
          do
          {
            dispatch_get_specific(*v189);
            v223 = NFLogGetLogger();
            if (v223)
            {
              v224 = (*(a6 + 3) + v220);
              v223(6, "%s:%i Removed Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", "_Callback_NFDriverNotifyGeneral", 2293, v221, *v224, v224[1], v224[2], v224[3], v224[4]);
            }

            dispatch_get_specific(*v189);
            v225 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
            {
              v226 = (*(a6 + 3) + v220);
              v227 = *v226;
              v228 = v226[1];
              v229 = v226[2];
              v230 = v226[3];
              LODWORD(v226) = v226[4];
              *buf = 136448002;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2293;
              *&buf[18] = 1024;
              *&buf[20] = v221;
              *&buf[24] = 1024;
              *&buf[26] = v227;
              *&buf[30] = 1024;
              *&buf[32] = v228;
              *&buf[36] = 1024;
              *&buf[38] = v229;
              *&buf[42] = 1024;
              *&buf[44] = v230;
              *&buf[48] = 1024;
              *&buf[50] = v226;
              _os_log_impl(&dword_297F97000, v225, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Removed Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", buf, 0x36u);
            }

            if (v221 <= 1)
            {
              v231 = (*(a6 + 3) + v220);
              *(v222 - 20) = sub_297FBD8FC(*v231);
              *v222 = 4;
              *(v222 - 4) = *(v231 + 1);
            }

            ++v221;
            v220 += 5;
            v222 += 96;
          }

          while (v221 < *(a6 + 16));
        }

        if (*(a6 + 48))
        {
          v232 = 0;
          v233 = 0;
          v234 = 0;
          v235 = v279 + 584;
          do
          {
            dispatch_get_specific(*v189);
            v236 = NFLogGetLogger();
            if (v236)
            {
              v236(6, "%s:%i Not interested Tag (%d) rfTech = %d, rfError = %d, numTagsDet = %d", "_Callback_NFDriverNotifyGeneral", 2305, v233, *(*(a6 + 7) + v232), *(*(a6 + 7) + v232 + 1), *(*(a6 + 7) + v232 + 2));
            }

            dispatch_get_specific(*v189);
            v237 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
            {
              v238 = (*(a6 + 7) + v232);
              v239 = *v238;
              v240 = v238[1];
              LODWORD(v238) = v238[2];
              *buf = 136447490;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2305;
              *&buf[18] = 1024;
              *&buf[20] = v233;
              *&buf[24] = 1024;
              *&buf[26] = v239;
              *&buf[30] = 1024;
              *&buf[32] = v240;
              *&buf[36] = 1024;
              *&buf[38] = v238;
              _os_log_impl(&dword_297F97000, v237, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Not interested Tag (%d) rfTech = %d, rfError = %d, numTagsDet = %d", buf, 0x2Au);
            }

            v241 = *(a6 + 7);
            v242 = *(v241 + v232 + 1) != 0;
            if (v233 <= 1)
            {
              *v235 = sub_297FBD8FC(*(v241 + v232));
            }

            v234 |= v242;
            ++v233;
            v232 += 3;
            v235 += 24;
          }

          while (v233 < *(a6 + 48));
        }

        else
        {
          v234 = 0;
        }

        v257 = *(*(v278 + 24) + 568);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 0x40000000;
        block[2] = sub_297FBDAA0;
        block[3] = &unk_29EE88338;
        block[4] = v278;
        block[5] = v279;
        v285 = v234 & 1;
        dispatch_async(v257, block);
      }

      else
      {
        v251 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v252 = NFLogGetLogger();
        if (v252)
        {
          v252(3, "%s:%i Multitag structure is missing", "_Callback_NFDriverNotifyGeneral", 2328);
        }

        dispatch_get_specific(*v251);
        v253 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2328;
          _os_log_impl(&dword_297F97000, v253, OS_LOG_TYPE_ERROR, "%{public}s:%i Multitag structure is missing", buf, 0x12u);
        }
      }

      v258 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v259 = NFLogGetLogger();
      if (v259)
      {
        v259(6, "%s:%i Multi tag status notification received", "_Callback_NFDriverNotifyGeneral", 2330);
      }

      dispatch_get_specific(*v258);
      v101 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_356;
      }

      *buf = 136446466;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2330;
      v30 = "%{public}s:%i Multi tag status notification received";
LABEL_320:
      v46 = v101;
      v47 = OS_LOG_TYPE_DEFAULT;
LABEL_321:
      v118 = 18;
      goto LABEL_322;
    }

    if (a5 <= 132)
    {
      if (a5 == 122)
      {
        if (!a6)
        {
          goto LABEL_356;
        }

        v168 = *a6;
        v169 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v170 = NFLogGetLogger();
        if (v168)
        {
          if (v170)
          {
            v170(5, "%s:%i No compensation applied due to underflow, poll phase duration (ms): %d", "_Callback_NFDriverNotifyGeneral", 2458, *(a6 + 1));
          }

          dispatch_get_specific(*v169);
          v171 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_356;
          }

          v172 = *(a6 + 1);
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2458;
          *&buf[18] = 1024;
          *&buf[20] = v172;
          v30 = "%{public}s:%i No compensation applied due to underflow, poll phase duration (ms): %d";
        }

        else
        {
          if (v170)
          {
            v170(5, "%s:%i Compensation applied, poll phase duration (ms): %d", "_Callback_NFDriverNotifyGeneral", 2456, *(a6 + 1));
          }

          dispatch_get_specific(*v169);
          v171 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_356;
          }

          v256 = *(a6 + 1);
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2456;
          *&buf[18] = 1024;
          *&buf[20] = v256;
          v30 = "%{public}s:%i Compensation applied, poll phase duration (ms): %d";
        }

        v46 = v171;
        v47 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_313;
      }

      if (a5 == 123)
      {
        v27 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v28 = NFLogGetLogger();
        if (v28)
        {
          v28(4, "%s:%i EMVCO field collision detected", "_Callback_NFDriverNotifyGeneral", 2465);
        }

        dispatch_get_specific(*v27);
        v29 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_356;
        }

        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2465;
        v30 = "%{public}s:%i EMVCO field collision detected";
LABEL_296:
        v46 = v29;
        v47 = OS_LOG_TYPE_ERROR;
        goto LABEL_321;
      }

LABEL_51:
      v43 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v44(3, "%s:%i Unknown notification: 0x%x", "_Callback_NFDriverNotifyGeneral", 2522, a5);
      }

      dispatch_get_specific(*v43);
      v45 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_356;
      }

      *buf = 136446722;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2522;
      *&buf[18] = 1024;
      *&buf[20] = a5;
      v30 = "%{public}s:%i Unknown notification: 0x%x";
      v46 = v45;
      v47 = OS_LOG_TYPE_ERROR;
LABEL_313:
      v118 = 24;
      goto LABEL_322;
    }

    if (a5 == 133)
    {
      v173 = *a6;
      v174 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v175 = NFLogGetLogger();
      if (v175)
      {
        v175(3, "%s:%i Generic error : 0x%04X", "_Callback_NFDriverNotifyGeneral", 2123, v173);
      }

      dispatch_get_specific(*v174);
      v176 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2123;
        *&buf[18] = 1024;
        *&buf[20] = v173;
        _os_log_impl(&dword_297F97000, v176, OS_LOG_TYPE_ERROR, "%{public}s:%i Generic error : 0x%04X", buf, 0x18u);
      }

      if (v173 > 226)
      {
        if (v173 <= 234)
        {
          if (v173 == 227)
          {
            dispatch_get_specific(*v174);
            v272 = NFLogGetLogger();
            if (v272)
            {
              v272(3, "%s:%i TxLDO OverCurrent Error", "_Callback_NFDriverNotifyGeneral", 2169);
            }

            dispatch_get_specific(*v174);
            v273 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2169;
              _os_log_impl(&dword_297F97000, v273, OS_LOG_TYPE_ERROR, "%{public}s:%i TxLDO OverCurrent Error", buf, 0x12u);
            }

            if (*(*(v8 + 24) + 764) == 1)
            {
              postAnalyticsTxLdoOverCurrentErrorEvent();
            }

            goto LABEL_356;
          }

          if (v173 != 234)
          {
            goto LABEL_356;
          }

          v15 = *(*(v8 + 24) + 568);
          v294[0] = MEMORY[0x29EDCA5F8];
          v294[1] = 0x40000000;
          v294[2] = sub_297FBD6D8;
          v294[3] = &unk_29EE88298;
          v294[4] = v8;
          v295 = 234;
          v16 = v294;
          goto LABEL_355;
        }

        if (v173 == 235)
        {
          v177 = 1;
          v178 = "ADC LOW";
        }

        else
        {
          if (v173 != 250)
          {
            goto LABEL_356;
          }

          v177 = 2;
          v178 = "ADC HIGH";
        }
      }

      else if ((v173 - 204) < 2)
      {
        if (v173 == 205)
        {
          v178 = "ESE LOW";
        }

        else
        {
          v178 = "ESE HIGH";
        }

        if (v173 == 205)
        {
          v177 = 6;
        }

        else
        {
          v177 = 7;
        }
      }

      else if (v173 == 202)
      {
        v177 = 5;
        v178 = "NFCC HIGH";
      }

      else
      {
        if (v173 != 203)
        {
          goto LABEL_356;
        }

        v177 = 4;
        v178 = "NFCC LOW";
      }

      v274 = *(v8 + 24);
      v275 = sub_297FA01E8(*(v274 + 620), *(v274 + 624));
      v32 = *(v274 + 568);
      v291[0] = MEMORY[0x29EDCA5F8];
      v291[1] = 0x40000000;
      v291[2] = sub_297FBD708;
      v291[3] = &unk_29EE882B8;
      v291[4] = v178;
      v291[5] = v8;
      v292 = v177;
      v293 = (0x6BE24Fu >> v275) & 1;
      v16 = v291;
    }

    else
    {
      if (a5 != 134)
      {
        goto LABEL_51;
      }

      if (!a6 || !*a6 || !a6[2])
      {
        v243 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v244 = NFLogGetLogger();
        if (v244)
        {
          v244(3, "%s:%i Chipscope buffer empty", "_Callback_NFDriverNotifyGeneral", 2240);
        }

        dispatch_get_specific(*v243);
        v29 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_356;
        }

        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2240;
        v30 = "%{public}s:%i Chipscope buffer empty";
        goto LABEL_296;
      }

      v31 = NFDataCreateWithBytes();
      v32 = *(*(v8 + 24) + 568);
      v286[0] = MEMORY[0x29EDCA5F8];
      v286[1] = 0x40000000;
      v286[2] = sub_297FBD8A0;
      v286[3] = &unk_29EE88318;
      v286[4] = v8;
      v286[5] = v31;
      v16 = v286;
    }

    v15 = v32;
    goto LABEL_355;
  }

  switch(a5)
  {
    case '""':
      v119 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v120 = NFLogGetLogger();
      if (v120)
      {
        v120(3, "%s:%i CRC error", "_Callback_NFDriverNotifyGeneral", 2110);
      }

      dispatch_get_specific(*v119);
      v121 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2110;
        _os_log_impl(&dword_297F97000, v121, OS_LOG_TYPE_ERROR, "%{public}s:%i CRC error", buf, 0x12u);
      }

      v15 = *(*(v8 + 24) + 568);
      v296[0] = MEMORY[0x29EDCA5F8];
      v296[1] = 0x40000000;
      v296[2] = sub_297FBD628;
      v296[3] = &unk_29EE88278;
      v296[4] = v8;
      v16 = v296;
      goto LABEL_355;
    case '#':
    case '$':
    case '%':
    case '&':
    case '\'':
    case '(':
    case ')':
    case '*':
    case '+':
    case ',':
    case '-':
    case '.':
    case '/':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case ':':
    case ';':
    case '<':
    case '=':
    case '@':
    case 'A':
    case 'B':
    case 'C':
    case 'J':
    case 'M':
    case 'Q':
    case 'R':
    case 'T':
    case 'U':
      goto LABEL_51;
    case '0':
      v122 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v123 = NFLogGetLogger();
      if (v123)
      {
        v123(3, "%s:%i ==== HARDWARE RESET ====", "_Callback_NFDriverNotifyGeneral", 1959);
      }

      dispatch_get_specific(*v122);
      v124 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 1959;
        _os_log_impl(&dword_297F97000, v124, OS_LOG_TYPE_ERROR, "%{public}s:%i ==== HARDWARE RESET ====", buf, 0x12u);
      }

      if (a6)
      {
        sub_297FB908C(a6);
        if (*(*(v8 + 24) + 764) == 1)
        {
          sub_297FBA53C(v8);
          v125 = *a6;
          v126 = *(a6 + 26);
          v127 = a6[54];
          postAnalyticsHardwareExceptionEvent();
        }
      }

      v15 = *(*(v8 + 24) + 568);
      v307[0] = MEMORY[0x29EDCA5F8];
      v307[1] = 0x40000000;
      v307[2] = sub_297FBD15C;
      v307[3] = &unk_29EE881D0;
      v307[4] = v8;
      v16 = v307;
      goto LABEL_355;
    case '>':
      if (!a6)
      {
        break;
      }

      v105 = *(a6 + 1);
      v106 = *MEMORY[0x29EDCA608];

      sub_297FBBE78(v105, a1);
      return;
    case '?':
      if (!a6)
      {
        break;
      }

      v128 = *(a6 + 1);
      v129 = *MEMORY[0x29EDCA608];

      sub_297FBC5D4(v128, a1, a2);
      return;
    case 'D':
    case 'G':
    case 'H':
    case 'I':
      v9 = *a6;
      v10 = a6[2];
      v11 = NFDataCreateWithBytes();
      v12 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(6, "%s:%i MFW Notification received", "_Callback_NFDriverNotifyGeneral", 2510);
      }

      dispatch_get_specific(*v12);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2510;
        _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%i MFW Notification received", buf, 0x12u);
      }

      v15 = *(*(v8 + 24) + 568);
      v281[0] = MEMORY[0x29EDCA5F8];
      v281[1] = 0x40000000;
      v281[2] = sub_297FBDB60;
      v281[3] = &unk_29EE88398;
      v281[4] = v8;
      v281[5] = v11;
      v16 = v281;
      goto LABEL_355;
    case 'E':
      if (a6)
      {
        *&buf[16] = 0x3800000000;
        *&v308[16] = 0x2000000000;
        v138 = *(a6 + 1);
        *&buf[24] = *a6;
        *buf = 0;
        *&buf[8] = buf;
        *v308 = 0;
        *&v308[8] = v308;
        *&v308[24] = 0;
        *&buf[40] = v138;
        *&buf[32] = 0;
        *&buf[40] = 0;
        v139 = a6[4];
        if (v139)
        {
          v140 = malloc_type_calloc(1uLL, v139, 0x50F08A60uLL);
          v141 = *&buf[8];
          *(*&buf[8] + 32) = v140;
          if (v140)
          {
            v142 = a6[4];
            *(v141 + 40) = v142;
            memcpy(v140, *(a6 + 1), v142);
          }

          else
          {
            v266 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v267 = NFLogGetLogger();
            if (v267)
            {
              v267(3, "%s:%i No memory available", "_Callback_NFDriverNotifyGeneral", 2012);
            }

            dispatch_get_specific(*v266);
            v268 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v268, OS_LOG_TYPE_ERROR))
            {
              *v311 = 136446466;
              v312 = "_Callback_NFDriverNotifyGeneral";
              v313 = 1024;
              v314 = 2012;
              _os_log_impl(&dword_297F97000, v268, OS_LOG_TYPE_ERROR, "%{public}s:%i No memory available", v311, 0x12u);
            }
          }
        }

        v269 = *(*(v8 + 24) + 568);
        v306[0] = MEMORY[0x29EDCA5F8];
        v306[1] = 0x40000000;
        v306[2] = sub_297FBD20C;
        v306[3] = &unk_29EE881F8;
        v306[6] = v8;
        v306[4] = v308;
        v306[5] = buf;
        dispatch_async(v269, v306);
        _Block_object_dispose(v308, 8);
        _Block_object_dispose(buf, 8);
      }

      break;
    case 'F':
      v102 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v103 = NFLogGetLogger();
      if (v103)
      {
        v103(3, "%s:%i ==== PLL UNLOCKED ====", "_Callback_NFDriverNotifyGeneral", 2050);
      }

      dispatch_get_specific(*v102);
      v104 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2050;
        _os_log_impl(&dword_297F97000, v104, OS_LOG_TYPE_ERROR, "%{public}s:%i ==== PLL UNLOCKED ====", buf, 0x12u);
      }

      v15 = *(*(v8 + 24) + 568);
      v305[0] = MEMORY[0x29EDCA5F8];
      v305[1] = 0x40000000;
      v305[2] = sub_297FBD354;
      v305[3] = &unk_29EE88218;
      v305[4] = v8;
      v16 = v305;
      goto LABEL_355;
    case 'K':
      if (!a6)
      {
        break;
      }

      v67 = *MEMORY[0x29EDCA608];

      sub_297FBD3E8(a6);
      return;
    case 'L':
      if (*(a4 + 57) == 1)
      {
        if (!a6)
        {
          break;
        }

        LOWORD(a1) = *(a6 + 2);
        v146 = *&a1 / 1000.0;
        if (*a6 == 2)
        {
          v147 = v146 * -69.25 + 150.2;
          v148 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v149 = NFLogGetLogger();
          if (v149)
          {
            v149(6, "%s:%i Got temperature notification SWIO2 / AIO2: %d, 0x%x -> %lf", "_Callback_NFDriverNotifyGeneral", 2357, *a6, *(a6 + 2), *&v147);
          }

          dispatch_get_specific(*v148);
          v150 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_334;
          }

          v151 = *a6;
          v152 = *(a6 + 2);
          *buf = 136447234;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2357;
          *&buf[18] = 1024;
          *&buf[20] = v151;
          *&buf[24] = 1024;
          *&buf[26] = v152;
          *&buf[30] = 2048;
          *&buf[32] = v147;
          v153 = "%{public}s:%i Got temperature notification SWIO2 / AIO2: %d, 0x%x -> %lf";
        }

        else
        {
          v147 = 4250.0 / (log(v146 * 2838800000.0 / (v146 * -107400.0 + 108720.0)) + 2.7416) + -273.15;
          v260 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v261 = NFLogGetLogger();
          if (v261)
          {
            v261(6, "%s:%i Got temperature notification SWIO1 / AIO3: %d, 0x%x -> %lf", "_Callback_NFDriverNotifyGeneral", 2361, *a6, *(a6 + 2), *&v147);
          }

          dispatch_get_specific(*v260);
          v150 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_334;
          }

          v262 = *a6;
          v263 = *(a6 + 2);
          *buf = 136447234;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2361;
          *&buf[18] = 1024;
          *&buf[20] = v262;
          *&buf[24] = 1024;
          *&buf[26] = v263;
          *&buf[30] = 2048;
          *&buf[32] = v147;
          v153 = "%{public}s:%i Got temperature notification SWIO1 / AIO3: %d, 0x%x -> %lf";
        }

        _os_log_impl(&dword_297F97000, v150, OS_LOG_TYPE_DEFAULT, v153, buf, 0x28u);
LABEL_334:
        v264 = *(v8 + 24);
        v265 = *(v264 + 176);
        if (v265)
        {
          v265(*(v264 + 440), v147);
        }

        break;
      }

      v245 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v246 = NFLogGetLogger();
      if (v246)
      {
        v246(6, "%s:%i Dropping temperature notification", "_Callback_NFDriverNotifyGeneral", 2369);
      }

      dispatch_get_specific(*v245);
      v101 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2369;
        v30 = "%{public}s:%i Dropping temperature notification";
        goto LABEL_320;
      }

      break;
    case 'N':
      v99 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v100 = NFLogGetLogger();
      if (v100)
      {
        v100(6, "%s:%i CW detected!", "_Callback_NFDriverNotifyGeneral", 2402);
      }

      dispatch_get_specific(*v99);
      v101 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      *buf = 136446466;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2402;
      v30 = "%{public}s:%i CW detected!";
      goto LABEL_320;
    case 'O':
      v107 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v108 = NFLogGetLogger();
      if (v108)
      {
        v108(5, "%s:%i LPCD assist completed successfully", "_Callback_NFDriverNotifyGeneral", 2449);
      }

      dispatch_get_specific(*v107);
      v101 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      *buf = 136446466;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2449;
      v30 = "%{public}s:%i LPCD assist completed successfully";
      goto LABEL_320;
    case 'P':
      if (*(a4 + 32))
      {
        break;
      }

      v80 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v81 = NFLogGetLogger();
      if (v81)
      {
        v81(3, "%s:%i ==== UART ERROR ====", "_Callback_NFDriverNotifyGeneral", 2065);
      }

      dispatch_get_specific(*v80);
      v82 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2065;
        _os_log_impl(&dword_297F97000, v82, OS_LOG_TYPE_ERROR, "%{public}s:%i ==== UART ERROR ====", buf, 0x12u);
      }

      v15 = *(*(v8 + 24) + 568);
      v304[0] = MEMORY[0x29EDCA5F8];
      v304[1] = 0x40000000;
      v304[2] = sub_297FBD37C;
      v304[3] = &unk_29EE88238;
      v304[4] = v8;
      v16 = v304;
      goto LABEL_355;
    case 'S':
      if (!a6)
      {
        break;
      }

      v130 = *a6;
      if (*a6)
      {
        v131 = *(a6 + 1);
        v132 = a6[1];
        v133 = *(a6 + 4);
        v134 = *(a6 + 5);
        v135 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v136 = NFLogGetLogger();
        if (v136)
        {
          v136(6, "%s:%i RSSI stats count %d, min=%d, max=%d, average=%d", "_Callback_NFDriverNotifyGeneral", 2087, v130, v134, v133, v132 / v130);
        }

        dispatch_get_specific(*v135);
        v137 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2087;
          *&buf[18] = 1024;
          *&buf[20] = v130;
          *&buf[24] = 1024;
          *&buf[26] = v134;
          *&buf[30] = 1024;
          *&buf[32] = v133;
          *&buf[36] = 1024;
          *&buf[38] = v132 / v130;
          _os_log_impl(&dword_297F97000, v137, OS_LOG_TYPE_DEFAULT, "%{public}s:%i RSSI stats count %d, min=%d, max=%d, average=%d", buf, 0x2Au);
        }

        v15 = *(*(v8 + 24) + 568);
        v297[0] = MEMORY[0x29EDCA5F8];
        v297[1] = 0x40000000;
        v297[2] = sub_297FBD3AC;
        v297[3] = &unk_29EE88258;
        v297[4] = v8;
        v298 = v130;
        v299 = v131;
        v300 = v132;
        v301 = v133;
        v302 = v134;
        v303 = v132 / v130;
        v16 = v297;
        goto LABEL_355;
      }

      v254 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v255 = NFLogGetLogger();
      if (v255)
      {
        v255(6, "%s:%i RSSI stats with no sample", "_Callback_NFDriverNotifyGeneral", 2095);
      }

      dispatch_get_specific(*v254);
      v101 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2095;
        v30 = "%{public}s:%i RSSI stats with no sample";
        goto LABEL_320;
      }

      break;
    case 'V':
      v143 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v144 = NFLogGetLogger();
      if (v144)
      {
        v144(3, "%s:%i Flash counter exceeded notification. This is NOT expected unless you live in the 22nd century or later. File a radar and get a new device.", "_Callback_NFDriverNotifyGeneral", 2430);
      }

      dispatch_get_specific(*v143);
      v145 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2430;
        _os_log_impl(&dword_297F97000, v145, OS_LOG_TYPE_ERROR, "%{public}s:%i Flash counter exceeded notification. This is NOT expected unless you live in the 22nd century or later. File a radar and get a new device.", buf, 0x12u);
      }

      v15 = *(*(v8 + 24) + 568);
      v282[0] = MEMORY[0x29EDCA5F8];
      v282[1] = 0x40000000;
      v282[2] = sub_297FBDB38;
      v282[3] = &unk_29EE88378;
      v282[4] = v8;
      v16 = v282;
      goto LABEL_355;
    case 'W':
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v83 = NFLogGetLogger();
      if (v83)
      {
        v83(3, "%s:%i TXLDO error!", "_Callback_NFDriverNotifyGeneral", 2406);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v84 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2406;
        _os_log_impl(&dword_297F97000, v84, OS_LOG_TYPE_ERROR, "%{public}s:%i TXLDO error!", buf, 0x12u);
      }

      if (a6)
      {
        v85 = a6[2];
        if (v85)
        {
          memset(buf, 0, 48);
          v86 = *a6;
          v87 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v88 = NFLogGetLogger();
          dispatch_get_specific(*v87);
          v89 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            v90 = a6[2];
            *v308 = 136315906;
            *&v308[4] = "_Callback_NFDriverNotifyGeneral";
            *&v308[12] = 1024;
            *&v308[14] = 2410;
            *&v308[18] = 2082;
            *&v308[20] = "[TXLDO]";
            v309 = 2048;
            v310 = v90;
            _os_log_impl(&dword_297F97000, v89, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v308, 0x26u);
          }

          v277 = v8;
          if (v88)
          {
            v88(5, "%s:%i %s %lu bytes :", "_Callback_NFDriverNotifyGeneral", 2410, "[TXLDO]", a6[2]);
          }

          v91 = 0;
          do
          {
            v92 = 0;
            v93 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v91)];
            do
            {
              v94 = *(v86 + v91++);
              v95 = sprintf(v93, "0x%02X ", v94);
              if (v92 > 6)
              {
                break;
              }

              v93 += v95;
              ++v92;
            }

            while (v91 < v85);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v96 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              *v308 = 136446210;
              *&v308[4] = buf;
              _os_log_impl(&dword_297F97000, v96, OS_LOG_TYPE_DEFAULT, "%{public}s", v308, 0xCu);
            }

            if (v88)
            {
              v88(5, "%s", buf);
            }
          }

          while (v91 < v85);
          v8 = v277;
          if (*(*(v277 + 24) + 764) == 1)
          {
            v97 = *a6;
            v98 = a6[2];
            postAnalyticsTxLdoErrorEvent();
          }
        }
      }

      v15 = *(*(v8 + 24) + 568);
      v283[0] = MEMORY[0x29EDCA5F8];
      v283[1] = 0x40000000;
      v283[2] = sub_297FBDB10;
      v283[3] = &unk_29EE88358;
      v283[4] = v8;
      v16 = v283;
      goto LABEL_355;
    case 'X':
      v62 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v63(6, "%s:%i ==== GPADC TEMPERATURE CONDITION NORMAL ====", "_Callback_NFDriverNotifyGeneral", 2183);
      }

      dispatch_get_specific(*v62);
      v64 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2183;
        _os_log_impl(&dword_297F97000, v64, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ==== GPADC TEMPERATURE CONDITION NORMAL ====", buf, 0x12u);
      }

      v65 = *(v8 + 24);
      v66 = 0x6BE24Fu >> sub_297FA01E8(*(v65 + 620), *(v65 + 624));
      v15 = *(v65 + 568);
      v289[0] = MEMORY[0x29EDCA5F8];
      v289[1] = 0x40000000;
      v289[2] = sub_297FBD838;
      v289[3] = &unk_29EE882D8;
      v289[4] = v8;
      v290 = v66 & 1;
      v16 = v289;
      goto LABEL_355;
    case 'Y':
      if (a6)
      {
        v154 = a6[2];
        if (v154)
        {
          memset(buf, 0, 48);
          v155 = *a6;
          v156 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v157 = NFLogGetLogger();
          dispatch_get_specific(*v156);
          v158 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
          {
            v159 = a6[2];
            *v308 = 136315906;
            *&v308[4] = "_Callback_NFDriverNotifyGeneral";
            *&v308[12] = 1024;
            *&v308[14] = 2443;
            *&v308[18] = 2082;
            *&v308[20] = "[FLC_TRIMMING failed]";
            v309 = 2048;
            v310 = v159;
            _os_log_impl(&dword_297F97000, v158, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v308, 0x26u);
          }

          if (v157)
          {
            v157(5, "%s:%i %s %lu bytes :", "_Callback_NFDriverNotifyGeneral", 2443, "[FLC_TRIMMING failed]", a6[2]);
          }

          v160 = 0;
          do
          {
            v161 = 0;
            v162 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v160)];
            do
            {
              v163 = *(v155 + v160++);
              v164 = sprintf(v162, "0x%02X ", v163);
              if (v161 > 6)
              {
                break;
              }

              v162 += v164;
              ++v161;
            }

            while (v160 < v154);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v165 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
            {
              *v308 = 136446210;
              *&v308[4] = buf;
              _os_log_impl(&dword_297F97000, v165, OS_LOG_TYPE_DEFAULT, "%{public}s", v308, 0xCu);
            }

            if (v157)
            {
              v157(5, "%s", buf);
            }
          }

          while (v160 < v154);
          v166 = *a6;
          v167 = a6[2];
          postAnalyticsFlcTrimmingErrorEvent();
        }
      }

      break;
    case 'Z':
      v60 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v61(3, "%s:%i XTAL start error received", "_Callback_NFDriverNotifyGeneral", 2426);
      }

      dispatch_get_specific(*v60);
      v29 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        break;
      }

      *buf = 136446466;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2426;
      v30 = "%{public}s:%i XTAL start error received";
      goto LABEL_296;
    case '[':
      v109 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v110 = NFLogGetLogger();
      if (a6)
      {
        if (v110)
        {
          v110(4, "%s:%i Received Spmi Error Register Info notification: 0x%02x, 0x%02x, 0x%02x , 0x%02x, 0x%02x ,0x%02x", "_Callback_NFDriverNotifyGeneral", 2475, *a6, *(a6 + 1), *(a6 + 2), *(a6 + 3), *(a6 + 4), *(a6 + 5));
        }

        dispatch_get_specific(*v109);
        v111 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          v112 = *a6;
          v113 = *(a6 + 1);
          v114 = *(a6 + 2);
          v115 = *(a6 + 3);
          v116 = *(a6 + 4);
          v117 = *(a6 + 5);
          *buf = 136448002;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2475;
          *&buf[18] = 1024;
          *&buf[20] = v112;
          *&buf[24] = 1024;
          *&buf[26] = v113;
          *&buf[30] = 1024;
          *&buf[32] = v114;
          *&buf[36] = 1024;
          *&buf[38] = v115;
          *&buf[42] = 1024;
          *&buf[44] = v116;
          *&buf[48] = 1024;
          *&buf[50] = v117;
          v30 = "%{public}s:%i Received Spmi Error Register Info notification: 0x%02x, 0x%02x, 0x%02x , 0x%02x, 0x%02x ,0x%02x";
          v46 = v111;
          v47 = OS_LOG_TYPE_ERROR;
          v118 = 54;
          goto LABEL_322;
        }
      }

      else
      {
        if (v110)
        {
          v110(4, "%s:%i Received Spmi Error Register Info notification", "_Callback_NFDriverNotifyGeneral", 2477);
        }

        dispatch_get_specific(*v109);
        v29 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2477;
          v30 = "%{public}s:%i Received Spmi Error Register Info notification";
          goto LABEL_296;
        }
      }

      break;
    case '\\':
      if (a6)
      {
        memset(buf, 0, 48);
        v48 = a6[2];
        v49 = *a6;
        v50 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v51 = NFLogGetLogger();
        dispatch_get_specific(*v50);
        v52 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = a6[2];
          *v308 = 136315906;
          *&v308[4] = "_Callback_NFDriverNotifyGeneral";
          *&v308[12] = 1024;
          *&v308[14] = 2485;
          *&v308[18] = 2082;
          *&v308[20] = "received core dump debug info from NFCC";
          v309 = 2048;
          v310 = v53;
          _os_log_impl(&dword_297F97000, v52, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v308, 0x26u);
        }

        if (v51)
        {
          v51(4, "%s:%i %s %lu bytes :", "_Callback_NFDriverNotifyGeneral", 2485, "received core dump debug info from NFCC", a6[2]);
        }

        if (v48)
        {
          v54 = 0;
          do
          {
            v55 = 0;
            v56 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v54)];
            do
            {
              v57 = *(v49 + v54++);
              v58 = sprintf(v56, "0x%02X ", v57);
              if (v55 > 6)
              {
                break;
              }

              v56 += v58;
              ++v55;
            }

            while (v54 < v48);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v59 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              *v308 = 136446210;
              *&v308[4] = buf;
              _os_log_impl(&dword_297F97000, v59, OS_LOG_TYPE_ERROR, "%{public}s", v308, 0xCu);
            }

            if (v51)
            {
              v51(4, "%s", buf);
            }
          }

          while (v54 < v48);
        }
      }

      else
      {
        v247 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v248 = NFLogGetLogger();
        if (v248)
        {
          v248(4, "%s:%i Received empty core dump debug info from NFCC", "_Callback_NFDriverNotifyGeneral", 2487);
        }

        dispatch_get_specific(*v247);
        v29 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2487;
          v30 = "%{public}s:%i Received empty core dump debug info from NFCC";
          goto LABEL_296;
        }
      }

      break;
    case ']':
      if (a6)
      {
        memset(buf, 0, 48);
        v68 = a6[2];
        v280 = *a6;
        v69 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v70 = NFLogGetLogger();
        dispatch_get_specific(*v69);
        v71 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v72 = a6[2];
          *v308 = 136315906;
          *&v308[4] = "_Callback_NFDriverNotifyGeneral";
          *&v308[12] = 1024;
          *&v308[14] = 2495;
          *&v308[18] = 2082;
          *&v308[20] = "received SPMI debug info from NFCC";
          v309 = 2048;
          v310 = v72;
          _os_log_impl(&dword_297F97000, v71, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v308, 0x26u);
        }

        if (v70)
        {
          v70(4, "%s:%i %s %lu bytes :", "_Callback_NFDriverNotifyGeneral", 2495, "received SPMI debug info from NFCC", a6[2]);
        }

        if (v68)
        {
          v73 = 0;
          do
          {
            v74 = 0;
            v75 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v73)];
            do
            {
              v76 = v74 + 1;
              v77 = v74 + 1 + v73;
              v78 = sprintf(v75, "0x%02X ", *(v280 + v73 + v74));
              if (v74 > 6)
              {
                break;
              }

              v75 += v78;
              ++v74;
            }

            while (v77 < v68);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v79 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *v308 = 136446210;
              *&v308[4] = buf;
              _os_log_impl(&dword_297F97000, v79, OS_LOG_TYPE_ERROR, "%{public}s", v308, 0xCu);
            }

            if (v70)
            {
              v70(4, "%s", buf);
            }

            v73 += v76;
          }

          while (v77 < v68);
        }
      }

      else
      {
        v249 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v250 = NFLogGetLogger();
        if (v250)
        {
          v250(4, "%s:%i Received empty SPMI Debug Data RAM from NFCC", "_Callback_NFDriverNotifyGeneral", 2497);
        }

        dispatch_get_specific(*v249);
        v29 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2497;
          v30 = "%{public}s:%i Received empty SPMI Debug Data RAM from NFCC";
          goto LABEL_296;
        }
      }

      break;
    default:
      if (a5 != 15)
      {
        goto LABEL_51;
      }

      v41 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v42(3, "%s:%i ==== COMM ERROR ====", "_Callback_NFDriverNotifyGeneral", 2045);
      }

      dispatch_get_specific(*v41);
      v29 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        break;
      }

      *buf = 136446466;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2045;
      v30 = "%{public}s:%i ==== COMM ERROR ====";
      goto LABEL_296;
  }

LABEL_356:
  v276 = *MEMORY[0x29EDCA608];
}

void sub_297F9ADAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, int a6)
{
  v142 = *MEMORY[0x29EDCA608];
  if (!a6 || a3 == 16 || a3 == 27)
  {
    switch(a3)
    {
      case 2:
        if (a5[6] != 2)
        {
          goto LABEL_150;
        }

        v11 = *(a5 + 2);
        if (!v11)
        {
          goto LABEL_150;
        }

        v12 = *v11;
        v13 = v11[1];
        v14 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (v12 == 3)
        {
          if (v13 == 11)
          {
            if (Logger)
            {
              Logger(5, "%s:%i ProhibitTimer.Host.Start", "_NFDriverLogHostProhibitTimerSignpost", 2869);
            }

            dispatch_get_specific(*v14);
            v16 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_150;
            }

            *buf = 136446466;
            *&buf[4] = "_NFDriverLogHostProhibitTimerSignpost";
            *&buf[12] = 1024;
            *&buf[14] = 2869;
            v17 = "%{public}s:%i ProhibitTimer.Host.Start";
          }

          else
          {
            if (Logger)
            {
              Logger(5, "%s:%i ProhibitTimer.SE.Start", "_NFDriverLogHostProhibitTimerSignpost", 2871);
            }

            dispatch_get_specific(*v14);
            v16 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_150;
            }

            *buf = 136446466;
            *&buf[4] = "_NFDriverLogHostProhibitTimerSignpost";
            *&buf[12] = 1024;
            *&buf[14] = 2871;
            v17 = "%{public}s:%i ProhibitTimer.SE.Start";
          }
        }

        else if (v13 == 11)
        {
          if (Logger)
          {
            Logger(5, "%s:%i ProhibitTimer.Host.End", "_NFDriverLogHostProhibitTimerSignpost", 2875);
          }

          dispatch_get_specific(*v14);
          v16 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_150;
          }

          *buf = 136446466;
          *&buf[4] = "_NFDriverLogHostProhibitTimerSignpost";
          *&buf[12] = 1024;
          *&buf[14] = 2875;
          v17 = "%{public}s:%i ProhibitTimer.Host.End";
        }

        else
        {
          if (Logger)
          {
            Logger(5, "%s:%i ProhibitTimer.SE.End", "_NFDriverLogHostProhibitTimerSignpost", 2877);
          }

          dispatch_get_specific(*v14);
          v16 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_150;
          }

          *buf = 136446466;
          *&buf[4] = "_NFDriverLogHostProhibitTimerSignpost";
          *&buf[12] = 1024;
          *&buf[14] = 2877;
          v17 = "%{public}s:%i ProhibitTimer.SE.End";
        }

        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x12u);
LABEL_150:
        if (a5[2])
        {
          v97 = *a5;
          v98 = NFDataCreateWithBytes();
        }

        else
        {
          v98 = 0;
        }

        if (a5[6])
        {
          v99 = *(a5 + 2);
          v100 = NFDataCreateWithBytes();
        }

        else
        {
          v100 = 0;
        }

        v36 = *(*(a2 + 24) + 568);
        v132[0] = MEMORY[0x29EDCA5F8];
        v132[1] = 0x40000000;
        v132[2] = sub_297FBEC1C;
        v132[3] = &unk_29EE88478;
        v132[4] = a2;
        v132[5] = v98;
        v132[6] = v100;
        v29 = v132;
        goto LABEL_157;
      case 4:
        v30 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v31 = NFLogGetLogger();
        if (v31)
        {
          v31(6, "%s:%i SE Restricted Mode Enable! OS_ID = %d", "_Callback_NFDriverNotifySE", 2957, a5[8]);
        }

        dispatch_get_specific(*v30);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = a5[8];
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifySE";
          *&buf[12] = 1024;
          *&buf[14] = 2957;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE Restricted Mode Enable! OS_ID = %d", buf, 0x18u);
        }

        v28 = *(*(a2 + 24) + 568);
        v131[0] = MEMORY[0x29EDCA5F8];
        v131[1] = 0x40000000;
        v131[2] = sub_297FBEC80;
        v131[3] = &unk_29EE88498;
        v131[4] = a2;
        v131[5] = a4;
        v131[6] = a5;
        v29 = v131;
        goto LABEL_158;
      case 5:
        kdebug_trace();
        v37 = NFSharedSignpostLog();
        if (os_signpost_enabled(v37))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_297F97000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FIELD_ON", &unk_297FE9C47, buf, 2u);
        }

        v28 = *(*(a2 + 24) + 568);
        v135[0] = MEMORY[0x29EDCA5F8];
        v135[1] = 0x40000000;
        v135[2] = sub_297F9C410;
        v135[3] = &unk_29EE88418;
        v135[4] = a2;
        v29 = v135;
        goto LABEL_158;
      case 6:
        kdebug_trace();
        v41 = NFSharedSignpostLog();
        if (os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_297F97000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FIELD_OFF", &unk_297FE9C47, buf, 2u);
        }

        v28 = *(*(a2 + 24) + 568);
        v134[0] = MEMORY[0x29EDCA5F8];
        v134[1] = 0x40000000;
        v134[2] = sub_297FBEB94;
        v134[3] = &unk_29EE88438;
        v134[4] = a2;
        v29 = v134;
        goto LABEL_158;
      case 10:
      case 11:
      case 15:
        goto LABEL_159;
      case 14:
        if (a5[2])
        {
          v42 = *a5;
          v43 = NFDataCreateWithBytes();
        }

        else
        {
          v43 = 0;
        }

        v36 = *(*(a2 + 24) + 568);
        v133[0] = MEMORY[0x29EDCA5F8];
        v133[1] = 0x40000000;
        v133[2] = sub_297FBEBC0;
        v133[3] = &unk_29EE88458;
        v133[4] = a2;
        v133[5] = v43;
        v29 = v133;
        goto LABEL_157;
      case 16:
        if (a5)
        {
          v49 = *a5;
          v50 = *(a5 + 4);
        }

        else
        {
          v49 = 0;
          v50 = 0;
        }

        v77 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v78 = NFLogGetLogger();
        if (v78)
        {
          v78(6, "%s:%i Got SE Removed with status %d", "_Callback_NFDriverNotifySE", 3012, a6);
        }

        dispatch_get_specific(*v77);
        v79 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifySE";
          *&buf[12] = 1024;
          *&buf[14] = 3012;
          *&buf[18] = 1024;
          *&buf[20] = a6;
          _os_log_impl(&dword_297F97000, v79, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Got SE Removed with status %d", buf, 0x18u);
        }

        v80 = *(*(a2 + 24) + 528);
        if (v80)
        {
          v81 = *(v80 + 8);
        }

        else
        {
          v81 = 0;
        }

        dispatch_get_specific(*v77);
        v82 = NFLogGetLogger();
        if (v81 == a4)
        {
          if (v82)
          {
            v82(3, "%s:%i Embedded SE removed: reason=0x%02x, other=0x%02x", "_Callback_NFDriverNotifySE", 3017, v49, v50);
          }

          dispatch_get_specific(*v77);
          v85 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            *&buf[4] = "_Callback_NFDriverNotifySE";
            *&buf[12] = 1024;
            *&buf[14] = 3017;
            *&buf[18] = 1024;
            *&buf[20] = v49;
            *v141 = 1024;
            *&v141[2] = v50;
            _os_log_impl(&dword_297F97000, v85, OS_LOG_TYPE_ERROR, "%{public}s:%i Embedded SE removed: reason=0x%02x, other=0x%02x", buf, 0x1Eu);
          }

          v84 = 1;
        }

        else
        {
          if (v82)
          {
            v82(3, "%s:%i Unknown SE removed: reason=0x%02x, other=0x%02x", "_Callback_NFDriverNotifySE", 3020, v49, v50);
          }

          dispatch_get_specific(*v77);
          v83 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            *&buf[4] = "_Callback_NFDriverNotifySE";
            *&buf[12] = 1024;
            *&buf[14] = 3020;
            *&buf[18] = 1024;
            *&buf[20] = v49;
            *v141 = 1024;
            *&v141[2] = v50;
            _os_log_impl(&dword_297F97000, v83, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown SE removed: reason=0x%02x, other=0x%02x", buf, 0x1Eu);
          }

          v84 = 0;
        }

        if (a6 > 130)
        {
          if (a6 != 255)
          {
            if (a6 == 131)
            {
              v86 = *(a2 + 24);
              *(v86 + 763) = 1;
              if (*(a2 + 44) != 2)
              {
                v87 = *(a2 + 48);
              }

              if (*(v86 + 764) == 1)
              {
                sub_297FBA53C(a2);
                postAnalyticsMainSERemovedEvent();
              }

              goto LABEL_159;
            }

            goto LABEL_163;
          }
        }

        else
        {
          if (!a6)
          {
            if (*(*(a2 + 24) + 764) == 1)
            {
              if (*(a2 + 44) != 2)
              {
                v102 = *(a2 + 48);
              }

              sub_297FBA53C(a2);
              postAnalyticsMainSERemovedEvent();
            }

LABEL_163:
            NFDriverDumpUART(a2);
            v28 = *(*(a2 + 24) + 568);
            v125[0] = MEMORY[0x29EDCA5F8];
            v125[1] = 0x40000000;
            v125[2] = sub_297FBEF18;
            v125[3] = &unk_29EE88518;
            v125[4] = a2;
            v126 = v84;
            v127 = v49;
            v29 = v125;
LABEL_158:
            dispatch_async(v28, v29);
            goto LABEL_159;
          }

          if (a6 != 66)
          {
            goto LABEL_163;
          }
        }

        NFDriverDumpUART(a2);
        NFDriverSimulateCrash(a2, 57005, "SE Recovery Failed");
        goto LABEL_159;
      case 17:
        v28 = *(*(a2 + 24) + 568);
        v129[0] = MEMORY[0x29EDCA5F8];
        v129[1] = 0x40000000;
        v129[2] = sub_297FBEE5C;
        v129[3] = &unk_29EE884D8;
        v129[4] = a2;
        v29 = v129;
        goto LABEL_158;
      case 18:
        v28 = *(*(a2 + 24) + 568);
        v128[0] = MEMORY[0x29EDCA5F8];
        v128[1] = 0x40000000;
        v128[2] = sub_297FBEE84;
        v128[3] = &unk_29EE884F8;
        v128[4] = a2;
        v29 = v128;
        goto LABEL_158;
      case 19:
        v38 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v39(6, "%s:%i NFCEE powered off", "_Callback_NFDriverNotifySE", 3005);
        }

        dispatch_get_specific(*v38);
        v40 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_159;
        }

        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifySE";
        *&buf[12] = 1024;
        *&buf[14] = 3005;
        v21 = "%{public}s:%i NFCEE powered off";
        v22 = v40;
        v23 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_69;
      case 20:
        if (!a5[2])
        {
          goto LABEL_159;
        }

        v34 = *a5;
        v35 = NFDataCreateWithBytes();
        if (!v35)
        {
          goto LABEL_159;
        }

        v36 = *(*(a2 + 24) + 568);
        v120[0] = MEMORY[0x29EDCA5F8];
        v120[1] = 0x40000000;
        v120[2] = sub_297FBF164;
        v120[3] = &unk_29EE88578;
        v120[4] = a2;
        v120[5] = v35;
        v29 = v120;
LABEL_157:
        v28 = v36;
        goto LABEL_158;
      case 21:
        v28 = *(*(a2 + 24) + 568);
        v121[0] = MEMORY[0x29EDCA5F8];
        v121[1] = 0x40000000;
        v121[2] = sub_297FBF13C;
        v121[3] = &unk_29EE88558;
        v121[4] = a2;
        v29 = v121;
        goto LABEL_158;
      case 23:
        v44 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v45 = NFLogGetLogger();
        if (v45)
        {
          v45(6, "%s:%i SE Restricted Mode Exit! OS_ID = %d", "_Callback_NFDriverNotifySE", 2973, a5[8]);
        }

        dispatch_get_specific(*v44);
        v46 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = a5[8];
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifySE";
          *&buf[12] = 1024;
          *&buf[14] = 2973;
          *&buf[18] = 1024;
          *&buf[20] = v47;
          _os_log_impl(&dword_297F97000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE Restricted Mode Exit! OS_ID = %d", buf, 0x18u);
        }

        v28 = *(*(a2 + 24) + 568);
        v130[0] = MEMORY[0x29EDCA5F8];
        v130[1] = 0x40000000;
        v130[2] = sub_297FBEDF8;
        v130[3] = &unk_29EE884B8;
        v130[4] = a2;
        v130[5] = a5;
        v29 = v130;
        goto LABEL_158;
      case 24:
        v116 = 0;
        v117 = &v116;
        v118 = 0x2000000000;
        v119 = 0;
        v48 = *a5;
        if (*a5 > 3)
        {
          if (v48 != 4 && v48 != 5)
          {
            if (v48 == 6)
            {
              v63 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v64 = NFLogGetLogger();
              if (v64)
              {
                v64(6, "%s:%i unknown express mode type (%d)", "_Callback_NFDriverNotifySE", 3197, *a5);
              }

              dispatch_get_specific(*v63);
              v65 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                v66 = *a5;
                *buf = 136446722;
                *&buf[4] = "_Callback_NFDriverNotifySE";
                *&buf[12] = 1024;
                *&buf[14] = 3197;
                *&buf[18] = 1024;
                *&buf[20] = v66;
                _os_log_impl(&dword_297F97000, v65, OS_LOG_TYPE_DEFAULT, "%{public}s:%i unknown express mode type (%d)", buf, 0x18u);
              }

              *(v117 + 6) = 0;
            }

LABEL_93:
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3800000000;
            v112 = 0;
            v113 = &v112;
            v114 = 0x2000000000;
            v115 = 0;
            *v141 = *(a5 + 2);
            *&v141[16] = *(a5 + 6);
            *&v141[8] = 0;
            *&v141[16] = 0;
            v73 = a5[6];
            if (v73)
            {
              v74 = malloc_type_calloc(1uLL, v73, 0x347C4493uLL);
              v75 = *&buf[8];
              *(*&buf[8] + 32) = v74;
              if (v74)
              {
                v76 = a5[6];
                *(v75 + 40) = v76;
                memcpy(v74, *(a5 + 2), v76);
              }

              else
              {
                v88 = MEMORY[0x29EDC9730];
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v89 = NFLogGetLogger();
                if (v89)
                {
                  v89(3, "%s:%i No memory available", "_Callback_NFDriverNotifySE", 3224);
                }

                dispatch_get_specific(*v88);
                v90 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                {
                  *v136 = 136446466;
                  v137 = "_Callback_NFDriverNotifySE";
                  v138 = 1024;
                  v139 = 3224;
                  _os_log_impl(&dword_297F97000, v90, OS_LOG_TYPE_ERROR, "%{public}s:%i No memory available", v136, 0x12u);
                }
              }
            }

            v91 = *&buf[8];
            v92 = v113;
            v93 = v113[3] & 0xFE | (*(*&buf[8] + 24) >> 1) & 1;
            *(v113 + 24) = v93;
            v94 = v93 & 0xFFFFFFFD | (2 * ((*(v91 + 24) >> 2) & 1));
            *(v92 + 24) = v94;
            v95 = v94 & 0xFFFFFFFB | (4 * ((*(v91 + 24) >> 3) & 1));
            *(v92 + 24) = v95;
            LOBYTE(v95) = v95 & 0xF7 | (8 * (*(v91 + 24) & 1));
            *(v92 + 24) = v95;
            *(v92 + 24) = v95 & 0xEF | (*(v91 + 24) >> 4) & 0x10;
            *(v92 + 13) = *(v91 + 48);
            v96 = *(*(a2 + 24) + 568);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 0x40000000;
            block[2] = sub_297FBF1C8;
            block[3] = &unk_29EE885A0;
            block[4] = &v116;
            block[5] = &v112;
            block[6] = buf;
            block[7] = a2;
            dispatch_async(v96, block);
            _Block_object_dispose(&v112, 8);
            _Block_object_dispose(buf, 8);
            _Block_object_dispose(&v116, 8);
            goto LABEL_159;
          }
        }

        else
        {
          if (v48 == 1)
          {
LABEL_92:
            v119 = v48;
            goto LABEL_93;
          }

          if (v48 != 2)
          {
            if (v48 != 3)
            {
              goto LABEL_93;
            }

            if ((*(*(a2 + 24) + 692) & 8) != 0)
            {
              v48 = 32;
            }

            else
            {
              v48 = 4;
            }

            goto LABEL_92;
          }
        }

        v48 = 2;
        goto LABEL_92;
      case 25:
        v56 = *a5;
        v57 = *(a5 + 4);
        LOWORD(v116) = *(a5 + 5);
        BYTE2(v116) = *(a5 + 7);
        if (v56 != 255)
        {
          v68 = a5[2];
          v67 = a5[3];
          if (v68 == 1)
          {
            v69 = 2;
          }

          else
          {
            v69 = v68 == 0;
          }

          v70 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v71 = NFLogGetLogger();
          if (v71)
          {
            v71(6, "%s:%i SE reader mode event : {se=0x%x, startEnd=%d, poll=0x%x, protocol=0x%x}", "_Callback_NFDriverNotifySE", 3265, v57, v56, v68, v67);
          }

          dispatch_get_specific(*v70);
          v72 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            *&buf[4] = "_Callback_NFDriverNotifySE";
            *&buf[12] = 1024;
            *&buf[14] = 3265;
            *&buf[18] = 1024;
            *&buf[20] = v57;
            *v141 = 1024;
            *&v141[2] = v56;
            *&v141[6] = 1024;
            *&v141[8] = v68;
            *&v141[12] = 1024;
            *&v141[14] = v67;
            _os_log_impl(&dword_297F97000, v72, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE reader mode event : {se=0x%x, startEnd=%d, poll=0x%x, protocol=0x%x}", buf, 0x2Au);
          }

          v28 = *(*(a2 + 24) + 568);
          v103[0] = MEMORY[0x29EDCA5F8];
          v103[1] = 0x40000000;
          v103[2] = sub_297FBF250;
          v103[3] = &unk_29EE885C0;
          v103[4] = a2;
          v104 = v56;
          v105 = v57;
          v106 = v116;
          v107 = BYTE2(v116);
          v108 = v68;
          v109 = v67;
          v110 = v69;
          v29 = v103;
          goto LABEL_158;
        }

        v58 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v59 = NFLogGetLogger();
        if (v59)
        {
          v59(3, "%s:%i Error : invalid reader event", "_Callback_NFDriverNotifySE", 3259);
        }

        dispatch_get_specific(*v58);
        v27 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_159;
        }

        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifySE";
        *&buf[12] = 1024;
        *&buf[14] = 3259;
        v21 = "%{public}s:%i Error : invalid reader event";
LABEL_68:
        v22 = v27;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_69:
        v24 = 18;
        goto LABEL_74;
      case 27:
        v51 = *a5;
        v52 = *(a5 + 4);
        v53 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v54 = NFLogGetLogger();
        if (v54)
        {
          v54(3, "%s:%i OS %d removed for reason 0x%x", "_Callback_NFDriverNotifySE", 3080, v51, v52);
        }

        dispatch_get_specific(*v53);
        v55 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "_Callback_NFDriverNotifySE";
          *&buf[12] = 1024;
          *&buf[14] = 3080;
          *&buf[18] = 1024;
          *&buf[20] = v51;
          *v141 = 1024;
          *&v141[2] = v52;
          _os_log_impl(&dword_297F97000, v55, OS_LOG_TYPE_ERROR, "%{public}s:%i OS %d removed for reason 0x%x", buf, 0x1Eu);
        }

        if (v51 > 2)
        {
          goto LABEL_159;
        }

        v28 = *(*(a2 + 24) + 568);
        v122[0] = MEMORY[0x29EDCA5F8];
        v122[1] = 0x40000000;
        v122[2] = sub_297FBF108;
        v122[3] = &unk_29EE88538;
        v122[4] = a2;
        v123 = v51;
        v124 = v52;
        v29 = v122;
        goto LABEL_158;
      case 28:
        v25 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v26(3, "%s:%i SMB Tx Blocked!", "_Callback_NFDriverNotifySE", 3103);
        }

        dispatch_get_specific(*v25);
        v27 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_159;
        }

        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifySE";
        *&buf[12] = 1024;
        *&buf[14] = 3103;
        v21 = "%{public}s:%i SMB Tx Blocked!";
        goto LABEL_68;
      default:
        v60 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v61 = NFLogGetLogger();
        if (v61)
        {
          v61(5, "%s:%i Unexpected event: %x", "_Callback_NFDriverNotifySE", 3283, a3);
        }

        dispatch_get_specific(*v60);
        v62 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_159;
        }

        *buf = 136446722;
        *&buf[4] = "_Callback_NFDriverNotifySE";
        *&buf[12] = 1024;
        *&buf[14] = 3283;
        *&buf[18] = 1024;
        *&buf[20] = a3;
        v21 = "%{public}s:%i Unexpected event: %x";
        v22 = v62;
        v23 = OS_LOG_TYPE_DEFAULT;
        v24 = 24;
        goto LABEL_74;
    }
  }

  v18 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(5, "%s:%i status=0x%04X for event %d", "_Callback_NFDriverNotifySE", 2887, a6, a3);
  }

  dispatch_get_specific(*v18);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    *&buf[4] = "_Callback_NFDriverNotifySE";
    *&buf[12] = 1024;
    *&buf[14] = 2887;
    *&buf[18] = 1024;
    *&buf[20] = a6;
    *v141 = 1024;
    *&v141[2] = a3;
    v21 = "%{public}s:%i status=0x%04X for event %d";
    v22 = v20;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 30;
LABEL_74:
    _os_log_impl(&dword_297F97000, v22, v23, v21, buf, v24);
  }

LABEL_159:
  v101 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297F9C410(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return v2(*(v1 + 272), 1);
    }
  }

  return result;
}

void NFDriverSetTemporaryPollingPeriod(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Setting polling period to %u", "NFDriverSetTemporaryPollingPeriod", 10085, a2);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v9 = "NFDriverSetTemporaryPollingPeriod";
      v10 = 1024;
      v11 = 10085;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Setting polling period to %u", buf, 0x18u);
    }

    *(*(a1 + 24) + 736) = a2;
  }

  v7 = *MEMORY[0x29EDCA608];
}

BOOL NFDriverSetConfiguration(uint64_t a1, char *a2, unint64_t *a3)
{
  v129 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = a2[8];
  v8 = a2[16];
  v9 = *(a2 + 3);
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  if (a3)
  {
    v10 = *a3;
    v107 = v10;
    v108 = *(a3 + 2);
    v11 = HIDWORD(v10);
  }

  else
  {
    LODWORD(v11) = 0;
    LODWORD(v10) = 0;
  }

  v13 = v10 == 2 || v11 == 2;
  if (v6 - 1 >= 2)
  {
    if (v6)
    {
      v106 = 0;
      goto LABEL_16;
    }

    v14 = *(a1 + 32) != 0;
  }

  else
  {
    v14 = 1;
  }

  v106 = v14;
LABEL_16:
  if (*(a1 + 57))
  {
    if (v13)
    {
      v104 = *(a2 + 3);
      if (!v104)
      {
        v27 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Missing CE interface type", "NFDriverSetConfiguration", 5529);
        }

        dispatch_get_specific(*v27);
        v17 = NFSharedLogGetLogger();
        result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverSetConfiguration";
          *&buf[12] = 1024;
          *&buf[14] = 5529;
          v19 = "%{public}s:%i Missing CE interface type";
          goto LABEL_33;
        }

        goto LABEL_197;
      }

      if (v8)
      {
        v15 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v16 = NFLogGetLogger();
        if (v16)
        {
          v16(3, "%s:%i CE and Reader not allowed at the same time", "NFDriverSetConfiguration", 5541);
        }

        dispatch_get_specific(*v15);
        v17 = NFSharedLogGetLogger();
        result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverSetConfiguration";
          *&buf[12] = 1024;
          *&buf[14] = 5541;
          v19 = "%{public}s:%i CE and Reader not allowed at the same time";
LABEL_33:
          _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x12u);
LABEL_34:
          result = 0;
          goto LABEL_197;
        }

        goto LABEL_197;
      }

      v97 = v9;
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v97 = v9;
      v104 = 0;
      v7 &= v8 ^ 1;
      if (v8)
      {
        v6 = 1;
      }

      v25 = (v8 ^ 1) & v5;
      v26 = v8;
    }

    v103 = (v7 | v25) & 1;
    v29 = *(a1 + 60) != v103;
    v30 = *(a1 + 32);
    if (v30 != v6)
    {
      if (v6 == 2)
      {
        v31 = NFSharedSignpostLog();
        if (os_signpost_enabled(v31))
        {
          *buf = 0;
          v29 = 1;
          _os_signpost_emit_with_name_impl(&dword_297F97000, v31, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LPCDPolling", &unk_297FE9C47, buf, 2u);
          goto LABEL_56;
        }
      }

      else if (v30 == 2)
      {
        v32 = NFSharedSignpostLog();
        if (os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_297F97000, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LPCDPolling", &unk_297FE9C47, buf, 2u);
        }
      }

      v29 = 1;
    }

LABEL_56:
    v102 = v7 & 1;
    v34 = *(a1 + 61) != v102 || *(a1 + 36) != v13;
    v101 = v8 & 1;
    v99 = v7;
    if (*(a1 + 62) == v101)
    {
      v35 = 0;
      v36 = v34 || v29;
    }

    else
    {
      v37 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v38 = NFLogGetLogger();
      if (v38)
      {
        v38(6, "%s:%i ESE reader discovery change requested %d -> %d!", "NFDriverSetConfiguration", 5580, *(a1 + 62), v101);
      }

      dispatch_get_specific(*v37);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 62);
        *buf = 136446978;
        *&buf[4] = "NFDriverSetConfiguration";
        *&buf[12] = 1024;
        *&buf[14] = 5580;
        *&buf[18] = 1024;
        *&buf[20] = v40;
        *&buf[24] = 1024;
        *&buf[26] = v8 & 1;
        _os_log_impl(&dword_297F97000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ESE reader discovery change requested %d -> %d!", buf, 0x1Eu);
      }

      v35 = v26 ^ 1;
      v36 = 1;
    }

    v41 = *(a1 + 44);
    v100 = (a1 + 44);
    v98 = v26;
    if (v41 == v10 && *(a1 + 48) == v11)
    {
      v42 = 0;
    }

    else
    {
      if (v41 == 2)
      {
        v43 = 1;
      }

      else
      {
        v43 = v13;
      }

      if ((v43 & 1) != 0 || *(a1 + 48) == 2)
      {
        v42 = 1;
        v36 = 1;
      }

      else
      {
        v42 = 1;
      }
    }

    v44 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v45(6, "%s:%i wantsFieldDetect=%d wantsPolling=%d wantsExpress=%d eSE=%d host=%d ceType=%d, hasDiscoveryChanges=%d hasRoutingChanges=%d fullHCE=%d", "NFDriverSetConfiguration", 5604, v103, v6, v102, v10, v11, v104, v36 & 1, v42, BYTE1(v108));
    }

    dispatch_get_specific(*v44);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136448770;
      *&buf[4] = "NFDriverSetConfiguration";
      *&buf[12] = 1024;
      *&buf[14] = 5604;
      *&buf[18] = 1024;
      *&buf[20] = v103;
      *&buf[24] = 1024;
      *&buf[26] = v6;
      *&buf[30] = 1024;
      LODWORD(v120) = v102;
      WORD2(v120) = 1024;
      *(&v120 + 6) = v10;
      WORD5(v120) = 1024;
      HIDWORD(v120) = v11;
      v121 = 1024;
      v122 = v104;
      v123 = 1024;
      v124 = v36 & 1;
      v125 = 1024;
      v126 = v42;
      v127 = 1024;
      v128 = BYTE1(v108);
      _os_log_impl(&dword_297F97000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s:%i wantsFieldDetect=%d wantsPolling=%d wantsExpress=%d eSE=%d host=%d ceType=%d, hasDiscoveryChanges=%d hasRoutingChanges=%d fullHCE=%d", buf, 0x48u);
    }

    if ((v35 | v42 | v106))
    {
      if ((*(a1 + 60) & 1) != 0 || *(a1 + 32) || (*(a1 + 62) & 1) != 0 || *v100 == 2 || (v35 | v106) & 1 | (*(a1 + 48) == 2))
      {
        if (sub_297F9D8BC(a1, 0, 0, 0, 0, 0, 0))
        {
          if (*(a1 + 62) == 1)
          {
            dispatch_get_specific(*v44);
            v47 = NFLogGetLogger();
            if (v47)
            {
              v47(6, "%s:%i ESE Reader config %d -> %d", "NFDriverSetConfiguration", 5618, *(a1 + 62), 0);
            }

            dispatch_get_specific(*v44);
            v48 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = *(a1 + 62);
              *buf = 136446978;
              *&buf[4] = "NFDriverSetConfiguration";
              *&buf[12] = 1024;
              *&buf[14] = 5618;
              *&buf[18] = 1024;
              *&buf[20] = v49;
              *&buf[24] = 1024;
              *&buf[26] = 0;
              _os_log_impl(&dword_297F97000, v48, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ESE Reader config %d -> %d", buf, 0x1Eu);
            }

            *(a1 + 62) = 0;
          }

          if ((NFProductHasNFCRadio() & v106) == 1)
          {
            if (v6 && v97)
            {
              v120 = 0u;
              memset(buf, 0, sizeof(buf));
              v51 = *v97;
              v50 = *(v97 + 8);
              dispatch_get_specific(*v44);
              v52 = NFLogGetLogger();
              dispatch_get_specific(*v44);
              v53 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = *(v97 + 8);
                *v111 = 136315906;
                v112 = "NFDriverSetConfiguration";
                v113 = 1024;
                v114 = 5634;
                v115 = 2082;
                v116 = "ECP Frame";
                v117 = 2048;
                v118 = v54;
                _os_log_impl(&dword_297F97000, v53, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v111, 0x26u);
              }

              if (v52)
              {
                v52(6, "%s:%i %s %lu bytes :", "NFDriverSetConfiguration", 5634, "ECP Frame", *(v97 + 8));
              }

              if (v50)
              {
                v55 = 0;
                do
                {
                  v56 = 0;
                  v57 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v55)];
                  do
                  {
                    v58 = *(v51 + v55++);
                    v59 = sprintf(v57, "0x%02X ", v58);
                    if (v56 > 6)
                    {
                      break;
                    }

                    v57 += v59;
                    ++v56;
                  }

                  while (v55 < v50);
                  dispatch_get_specific(*MEMORY[0x29EDC9730]);
                  v60 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *v111 = 136446210;
                    v112 = buf;
                    _os_log_impl(&dword_297F97000, v60, OS_LOG_TYPE_DEFAULT, "%{public}s", v111, 0xCu);
                  }

                  if (v52)
                  {
                    v52(6, "%s", buf);
                  }
                }

                while (v55 < v50);
              }

              v61 = NFDriverConfigureVASPolling(a1, *v97, *(v97 + 8));
              v44 = MEMORY[0x29EDC9730];
              if (!v61)
              {
LABEL_176:
                dispatch_get_specific(*v44);
                v89 = NFLogGetLogger();
                if (v89)
                {
                  v89(3, "%s:%i Failed to set ECP Frame", "NFDriverSetConfiguration", 5638);
                }

                dispatch_get_specific(*v44);
                v85 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  *&buf[4] = "NFDriverSetConfiguration";
                  *&buf[12] = 1024;
                  *&buf[14] = 5638;
                  v86 = "%{public}s:%i Failed to set ECP Frame";
                  goto LABEL_180;
                }

                goto LABEL_181;
              }
            }

            else if (!NFDriverConfigureVASPolling(a1, 0, 0))
            {
              goto LABEL_176;
            }
          }
        }

        else
        {
          dispatch_get_specific(*v44);
          v63 = NFLogGetLogger();
          if (v63)
          {
            v63(4, "%s:%i Failed to stop discovery", "NFDriverSetConfiguration", 5615);
          }

          dispatch_get_specific(*v44);
          v64 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "NFDriverSetConfiguration";
            *&buf[12] = 1024;
            *&buf[14] = 5615;
            _os_log_impl(&dword_297F97000, v64, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to stop discovery", buf, 0x12u);
          }
        }

        v36 = 1;
      }

      if (v13 && BYTE1(v108) == 1)
      {
        if (v99)
        {
          dispatch_get_specific(*v44);
          v65 = NFLogGetLogger();
          if (v65)
          {
            v65(4, "%s:%i ***WARNING*** Express mode is requested; express won't work under this config!!!", "NFDriverSetConfiguration", 5648);
          }

          dispatch_get_specific(*v44);
          v66 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "NFDriverSetConfiguration";
            *&buf[12] = 1024;
            *&buf[14] = 5648;
            _os_log_impl(&dword_297F97000, v66, OS_LOG_TYPE_ERROR, "%{public}s:%i ***WARNING*** Express mode is requested; express won't work under this config!!!", buf, 0x12u);
          }

          if (NFIsInternalBuild())
          {
            __assert_rtn("NFDriverSetConfiguration", "NFDriver.c", 5653, "false");
          }
        }

        dispatch_get_specific(*v44);
        v67 = NFLogGetLogger();
        if (v67)
        {
          v67(6, "%s:%i Enabling full HCE routing", "NFDriverSetConfiguration", 5656);
        }

        dispatch_get_specific(*v44);
        v68 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverSetConfiguration";
          *&buf[12] = 1024;
          *&buf[14] = 5656;
          _os_log_impl(&dword_297F97000, v68, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling full HCE routing", buf, 0x12u);
        }

        v62 = 1;
      }

      else
      {
        v62 = 0;
      }

      if (!sub_297FA075C(a1, &v107))
      {
        dispatch_get_specific(*v44);
        v84 = NFLogGetLogger();
        if (v84)
        {
          v84(3, "%s:%i Failed to set routing", "NFDriverSetConfiguration", 5661);
        }

        dispatch_get_specific(*v44);
        v85 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverSetConfiguration";
          *&buf[12] = 1024;
          *&buf[14] = 5661;
          v86 = "%{public}s:%i Failed to set routing";
LABEL_180:
          _os_log_impl(&dword_297F97000, v85, OS_LOG_TYPE_ERROR, v86, buf, 0x12u);
        }

LABEL_181:
        if (sub_297F9D8BC(a1, 0, 0, 0, 0, 0, 0))
        {
          *(a1 + 60) = 0;
          *(a1 + 32) = 0;
          *(a1 + 65) = 0;
          dispatch_get_specific(*v44);
          v90 = NFLogGetLogger();
          if (v90)
          {
            v90(6, "%s:%i ESE reader config %d -> %d", "NFDriverSetConfiguration", 5718, *(a1 + 62), 0);
          }

          dispatch_get_specific(*v44);
          v91 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v92 = *(a1 + 62);
            *buf = 136446978;
            *&buf[4] = "NFDriverSetConfiguration";
            *&buf[12] = 1024;
            *&buf[14] = 5718;
            *&buf[18] = 1024;
            *&buf[20] = v92;
            *&buf[24] = 1024;
            *&buf[26] = 0;
            _os_log_impl(&dword_297F97000, v91, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ESE reader config %d -> %d", buf, 0x1Eu);
          }

          *(a1 + 62) = 0;
        }

        else
        {
          dispatch_get_specific(*v44);
          v93 = NFLogGetLogger();
          if (v93)
          {
            v93(4, "%s:%i Failed to stop discovery", "NFDriverSetConfiguration", 5711);
          }

          dispatch_get_specific(*v44);
          v94 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "NFDriverSetConfiguration";
            *&buf[12] = 1024;
            *&buf[14] = 5711;
            _os_log_impl(&dword_297F97000, v94, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to stop discovery", buf, 0x12u);
          }
        }

        if (sub_297FA075C(a1, v100))
        {
          result = 0;
          *v100 = v109;
          *(a1 + 52) = v110;
          goto LABEL_197;
        }

        dispatch_get_specific(*v44);
        v95 = NFLogGetLogger();
        if (v95)
        {
          v95(4, "%s:%i Failed to stop routing", "NFDriverSetConfiguration", 5724);
        }

        dispatch_get_specific(*v44);
        v17 = NFSharedLogGetLogger();
        result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverSetConfiguration";
          *&buf[12] = 1024;
          *&buf[14] = 5724;
          v19 = "%{public}s:%i Failed to stop routing";
          goto LABEL_33;
        }

        goto LABEL_197;
      }

      *v100 = v107;
      *(a1 + 52) = v108;
      if ((v36 & 1) == 0)
      {
LABEL_151:
        v74 = *(a1 + 24);
        v75 = v74[88];
        if (*(a1 + 60) == 1)
        {
          if (v75)
          {
            goto LABEL_157;
          }

          v76 = mach_continuous_time();
          v74 = *(a1 + 24);
        }

        else
        {
          if (!v75)
          {
            goto LABEL_157;
          }

          mach_continuous_time();
          v77 = *(*(a1 + 24) + 704);
          ElapsedTimeInMillisecondsFromMachTime = GetElapsedTimeInMillisecondsFromMachTime();
          v76 = 0;
          v74 = *(a1 + 24);
          v74[89] += ElapsedTimeInMillisecondsFromMachTime;
        }

        v74[88] = v76;
LABEL_157:
        v79 = v74[90];
        if (*(a1 + 61) == 1)
        {
          if (!v79)
          {
            v80 = mach_continuous_time();
            v81 = *(a1 + 24);
LABEL_162:
            *(v81 + 720) = v80;
          }
        }

        else if (v79)
        {
          mach_continuous_time();
          v82 = *(*(a1 + 24) + 720);
          v83 = GetElapsedTimeInMillisecondsFromMachTime();
          v80 = 0;
          v81 = *(a1 + 24);
          *(v81 + 728) += v83;
          goto LABEL_162;
        }

LABEL_163:
        result = 1;
        goto LABEL_197;
      }
    }

    else
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_151;
      }

      v62 = 0;
    }

    if (v98)
    {
      v69 = 1;
    }

    else
    {
      v69 = 2;
    }

    *(a1 + 65) = v62;
    if ((*(*(a1 + 24) + 584) & 0x20000000) != 0)
    {
      v70 = 0;
    }

    else
    {
      v70 = v103;
    }

    if (!sub_297F9D8BC(a1, v6, v104, v70, 0, v99 & 1, v69))
    {
      dispatch_get_specific(*v44);
      v87 = NFLogGetLogger();
      if (v87)
      {
        v87(3, "%s:%i Failed to update discovery", "NFDriverSetConfiguration", 5686);
      }

      dispatch_get_specific(*v44);
      v88 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverSetConfiguration";
        *&buf[12] = 1024;
        *&buf[14] = 5686;
        _os_log_impl(&dword_297F97000, v88, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to update discovery", buf, 0x12u);
      }

      if (!((v6 != 0) | v13 & 1) && (v103 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_181;
    }

    *(a1 + 60) = v103;
    *(a1 + 32) = v6;
    *(a1 + 36) = v104;
    *(a1 + 61) = v102;
    if (*(a1 + 62) != v101)
    {
      dispatch_get_specific(*v44);
      v71 = NFLogGetLogger();
      if (v71)
      {
        v71(6, "%s:%i ESE reader config %d -> %d", "NFDriverSetConfiguration", 5697, *(a1 + 62), v101);
      }

      dispatch_get_specific(*v44);
      v72 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = *(a1 + 62);
        *buf = 136446978;
        *&buf[4] = "NFDriverSetConfiguration";
        *&buf[12] = 1024;
        *&buf[14] = 5697;
        *&buf[18] = 1024;
        *&buf[20] = v73;
        *&buf[24] = 1024;
        *&buf[26] = v101;
        _os_log_impl(&dword_297F97000, v72, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ESE reader config %d -> %d", buf, 0x1Eu);
      }

      *(a1 + 62) = v101;
    }

    goto LABEL_151;
  }

  v20 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v21(6, "%s:%i wantsFieldDetect=%d wantsPolling=%d wantsExpress=%d eSE=%d host=%d wantsEcpUpdate=%d", "NFDriverSetConfiguration", 5514, v5 & 1, v6, v7 & 1, v10, v11, v106);
  }

  v22 = v7;
  dispatch_get_specific(*v20);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448002;
    *&buf[4] = "NFDriverSetConfiguration";
    *&buf[12] = 1024;
    *&buf[14] = 5514;
    *&buf[18] = 1024;
    *&buf[20] = v5 & 1;
    *&buf[24] = 1024;
    *&buf[26] = v6;
    *&buf[30] = 1024;
    LODWORD(v120) = v22 & 1;
    WORD2(v120) = 1024;
    *(&v120 + 6) = v10;
    WORD5(v120) = 1024;
    HIDWORD(v120) = v11;
    v121 = 1024;
    v122 = v106;
    _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i wantsFieldDetect=%d wantsPolling=%d wantsExpress=%d eSE=%d host=%d wantsEcpUpdate=%d", buf, 0x36u);
  }

  if ((v13 & 1) == 0 && (v5 & 1) == 0 && (v8 & 1) == 0 && !v6 && (v22 & 1) == 0)
  {
    *(a1 + 44) = *a3;
    goto LABEL_163;
  }

  dispatch_get_specific(*v20);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v24(3, "%s:%i Unable to do any RF operations. Returning false.", "NFDriverSetConfiguration", 5517);
  }

  dispatch_get_specific(*v20);
  v17 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    *&buf[4] = "NFDriverSetConfiguration";
    *&buf[12] = 1024;
    *&buf[14] = 5517;
    v19 = "%{public}s:%i Unable to do any RF operations. Returning false.";
    goto LABEL_33;
  }

LABEL_197:
  v96 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_297F9D8BC(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6, int a7)
{
  v35 = *MEMORY[0x29EDCA608];
  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i polling=%d emulation=%d field=%d express=%d resume=%d reader config=%d", "_Async_NFDriverConfigureDiscovery", 1001, a2, a3, a4, a6, a5, a7);
  }

  dispatch_get_specific(*v14);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448002;
    *&buf[4] = "_Async_NFDriverConfigureDiscovery";
    *&buf[12] = 1024;
    *&buf[14] = 1001;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    *&buf[24] = 1024;
    *&buf[26] = a3;
    *&buf[30] = 1024;
    LODWORD(v29) = a4;
    WORD2(v29) = 1024;
    *(&v29 + 6) = a6;
    WORD5(v29) = 1024;
    HIDWORD(v29) = a5;
    LOWORD(v30) = 1024;
    *(&v30 + 2) = a7;
    _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i polling=%d emulation=%d field=%d express=%d resume=%d reader config=%d", buf, 0x36u);
  }

  v17 = sub_297F9DC04();
  pthread_mutex_lock((v17[3] + 8));
  v18 = v17[3];
  ++*v18;
  pthread_mutex_unlock((v18 + 8));
  v19 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297F9DF54;
  *&buf[24] = &unk_29EE88AA8;
  *&v29 = a1;
  *(&v29 + 1) = v17;
  v30 = __PAIR64__(a3, a2);
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v31 = a7;
  dispatch_async_and_wait(v19, buf);
  v20 = sub_297F9F694(v17);
  if (v20)
  {
    dispatch_get_specific(*v14);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i status=0x%04llX", "_NFDriverConfigureDiscovery", 4156, *v17);
    }

    dispatch_get_specific(*v14);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *v17;
      *buf = 136446722;
      *&buf[4] = "_NFDriverConfigureDiscovery";
      *&buf[12] = 1024;
      *&buf[14] = 4156;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
    }

    v24 = *(v17 + 6);
    v25 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FB7B1C;
    *&buf[24] = &unk_29EE880F8;
    *&v29 = a1;
    dispatch_async(v25, buf);
    if (v24 == 44 || v24 == 34)
    {
      NFDriverSimulateCrash(a1, 57005, "_NFDriverConfigureDiscovery: CRC error or response timeout");
    }
  }

  sub_297F9FBDC(v17);
  v26 = *MEMORY[0x29EDCA608];
  return v20 == 0;
}

void *sub_297F9DC04()
{
  v26 = *MEMORY[0x29EDCA608];
  v0 = malloc_type_calloc(1uLL, 0x20uLL, 0x10800402A1AAB09uLL);
  if (v0)
  {
    v1 = malloc_type_calloc(1uLL, 0xC8uLL, 0x1000040BEF03554uLL);
    if (!v1)
    {
      free(v0);
LABEL_20:
      v0 = 0;
      goto LABEL_21;
    }

    v2 = v1;
    *v0 = 0xBADCAFEF00DLL;
    *(v0 + 2) = -1;
    *(v0 + 6) = -1;
    v0[3] = v1;
    *v1 = 1;
    v3 = (v1 + 136);
    v4 = pthread_mutex_init((v1 + 136), 0);
    if (v4)
    {
      v5 = v4;
      free(v2);
      free(v0);
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Mutex init failed : %d", "NFCallbackMutexCreate", 67, v5);
      }

      dispatch_get_specific(*v6);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 136446722;
      v21 = "NFCallbackMutexCreate";
      v22 = 1024;
      v23 = 67;
      v24 = 1024;
      v25 = v5;
      v9 = "%{public}s:%i Mutex init failed : %d";
      goto LABEL_19;
    }

    v10 = pthread_mutex_init((v2 + 8), 0);
    if (v10)
    {
      v11 = v10;
      pthread_mutex_destroy(v3);
      free(v2);
      free(v0);
      v12 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(3, "%s:%i Mutex init failed : %d", "NFCallbackMutexCreate", 75, v11);
      }

      dispatch_get_specific(*v12);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 136446722;
      v21 = "NFCallbackMutexCreate";
      v22 = 1024;
      v23 = 75;
      v24 = 1024;
      v25 = v11;
      v9 = "%{public}s:%i Mutex init failed : %d";
      goto LABEL_19;
    }

    v14 = pthread_cond_init((v2 + 72), 0);
    if (v14)
    {
      v15 = v14;
      pthread_mutex_destroy((v2 + 8));
      pthread_mutex_destroy(v3);
      free(v2);
      free(v0);
      v16 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v17(3, "%s:%i Cond init failed : %d", "NFCallbackMutexCreate", 84, v15);
      }

      dispatch_get_specific(*v16);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 136446722;
      v21 = "NFCallbackMutexCreate";
      v22 = 1024;
      v23 = 84;
      v24 = 1024;
      v25 = v15;
      v9 = "%{public}s:%i Cond init failed : %d";
LABEL_19:
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x18u);
      goto LABEL_20;
    }
  }

LABEL_21:
  v18 = *MEMORY[0x29EDCA608];
  return v0;
}

void sub_297F9DF54(uint64_t a1)
{
  v137 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v116 = *(a1 + 60);
  v117 = *(a1 + 52);
  v4 = *(a1 + 61);
  v114 = *(a1 + 62);
  v5 = *(a1 + 56);
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  memset(v136, 0, sizeof(v136));
  if (!NF_isFeatureSupported())
  {
    goto LABEL_10;
  }

  if (!v5 && (*(v1 + 62) & 1) != 0)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Marking ESE reader as disabled!", "_Dispatched_NFDriverConfigureDiscovery", 706);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v119 = "_Dispatched_NFDriverConfigureDiscovery";
      *v120 = 1024;
      *&v120[2] = 706;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Marking ESE reader as disabled!", buf, 0x12u);
    }

    v9 = 1;
    goto LABEL_11;
  }

  if ((v5 | 2) == 2)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v32 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v33 = NFLogGetLogger();
  if (v33)
  {
    v33(6, "%s:%i Marking ESE reader as enabled!", "_Dispatched_NFDriverConfigureDiscovery", 712);
  }

  dispatch_get_specific(*v32);
  v34 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v119 = "_Dispatched_NFDriverConfigureDiscovery";
    *v120 = 1024;
    *&v120[2] = 712;
    _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Marking ESE reader as enabled!", buf, 0x12u);
  }

  v9 = 2;
LABEL_11:
  if (*(v1 + 56))
  {
LABEL_12:
    v10 = 0;
    goto LABEL_15;
  }

  if (*(*(v1 + 24) + 586))
  {
    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(6, "%s:%i LPCD force always OFF", "_Dispatched_NFDriverConfigureDiscovery", 727);
    }

    dispatch_get_specific(*v21);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v119 = "_Dispatched_NFDriverConfigureDiscovery";
      *v120 = 1024;
      *&v120[2] = 727;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i LPCD force always OFF", buf, 0x12u);
    }

    goto LABEL_12;
  }

  v10 = 1;
LABEL_15:
  if (v3 == 3)
  {
    v113 = v10;
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(6, "%s:%i Enabling multi tag polling!", "_Dispatched_NFDriverConfigureDiscovery", 734);
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v119 = "_Dispatched_NFDriverConfigureDiscovery";
      *v120 = 1024;
      *&v120[2] = 734;
      _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling multi tag polling!", buf, 0x12u);
    }

    v14 = *(v1 + 24);
    v15 = *(v14 + 688) & 0x1821;
    v115 = *(v14 + 740);
    if (v115 != 300)
    {
      dispatch_get_specific(*v11);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(6, "%s:%i Non-default polling period: %u", "_Dispatched_NFDriverConfigureDiscovery", 747, v115);
      }

      dispatch_get_specific(*v11);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v119 = "_Dispatched_NFDriverConfigureDiscovery";
        *v120 = 1024;
        *&v120[2] = 747;
        *&v120[6] = 1024;
        *&v120[8] = v115;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Non-default polling period: %u", buf, 0x18u);
      }
    }

    v18 = v15 | 0x40000;
    dispatch_get_specific(*v11);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(6, "%s:%i Enabling automatic multi-tag polling", "_Dispatched_NFDriverConfigureDiscovery", 751);
    }

    dispatch_get_specific(*v11);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v119 = "_Dispatched_NFDriverConfigureDiscovery";
      *v120 = 1024;
      *&v120[2] = 751;
      _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling automatic multi-tag polling", buf, 0x12u);
    }

    v112 = 1;
  }

  else if (v3)
  {
    if ((*(*(v1 + 24) + 585) & 0x10) != 0)
    {
      v24 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v25(6, "%s:%i LPCD force always ON", "_Dispatched_NFDriverConfigureDiscovery", 760);
      }

      dispatch_get_specific(*v24);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v119 = "_Dispatched_NFDriverConfigureDiscovery";
        *v120 = 1024;
        *&v120[2] = 760;
        _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s:%i LPCD force always ON", buf, 0x12u);
      }

      v10 = 1;
    }

    else if (v3 == 1)
    {
      v10 = 0;
    }

    if (v5 == 1 || v5 == 2 && (*(v1 + 62) & 1) != 0)
    {
      v27 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v28(6, "%s:%i ESE reader as config set (%d / %d)!", "_Dispatched_NFDriverConfigureDiscovery", 769, *(v1 + 62), v5);
      }

      dispatch_get_specific(*v27);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(v1 + 62);
        *buf = 136446978;
        v119 = "_Dispatched_NFDriverConfigureDiscovery";
        *v120 = 1024;
        *&v120[2] = 769;
        *&v120[6] = 1024;
        *&v120[8] = v30;
        *&v120[12] = 1024;
        *&v120[14] = v5;
        _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ESE reader as config set (%d / %d)!", buf, 0x1Eu);
      }

      BYTE4(v112) = 0;
      v113 = 0;
      v31 = *(v1 + 24);
      v115 = *(v31 + 740);
      v18 = 262179;
    }

    else
    {
      v113 = v10;
      v35 = *(v1 + 24);
      v36 = *(v35 + 688) & 0x3983F;
      HIDWORD(v112) = *(v35 + 765);
      if (HIDWORD(v112) == 1)
      {
        v37 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v38 = NFLogGetLogger();
        if (v38)
        {
          v38(6, "%s:%i Frame RF INTF activated", "_Dispatched_NFDriverConfigureDiscovery", 802);
        }

        dispatch_get_specific(*v37);
        v39 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v119 = "_Dispatched_NFDriverConfigureDiscovery";
          *v120 = 1024;
          *&v120[2] = 802;
          _os_log_impl(&dword_297F97000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Frame RF INTF activated", buf, 0x12u);
        }

        v18 = v36 | 0x40002;
        v35 = *(v1 + 24);
      }

      else
      {
        v18 = v36 | 0x40000;
      }

      v40 = *(v35 + 736);
      if (!v40)
      {
        LOWORD(v40) = *(v35 + 740);
      }

      LOWORD(v115) = v40;
      v41 = v40;
      if (v40 != 300)
      {
        v42 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v43 = NFLogGetLogger();
        if (v43)
        {
          v43(6, "%s:%i Non-default polling period: %u", "_Dispatched_NFDriverConfigureDiscovery", 813, v41);
        }

        dispatch_get_specific(*v42);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v119 = "_Dispatched_NFDriverConfigureDiscovery";
          *v120 = 1024;
          *&v120[2] = 813;
          *&v120[6] = 1024;
          *&v120[8] = v41;
          _os_log_impl(&dword_297F97000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Non-default polling period: %u", buf, 0x18u);
        }
      }

      v31 = *(v1 + 24);
      v45 = *(v31 + 600);
    }

    v46 = *(v31 + 576);
    v47 = phLibNfc_RemoteDev_NtfRegister();
    if (v47)
    {
      v48 = v47;
      v49 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v50(3, "%s:%i status=0x%04X", "_Dispatched_NFDriverConfigureDiscovery", 838, v48);
      }

      dispatch_get_specific(*v49);
      v51 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v119 = "_Dispatched_NFDriverConfigureDiscovery";
        *v120 = 1024;
        *&v120[2] = 838;
        *&v120[6] = 1024;
        *&v120[8] = v48;
        _os_log_impl(&dword_297F97000, v51, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
      }

      sub_297FBE498(*(*(v1 + 24) + 576), 0, (v2 + 12), (v2 + 8));
      sub_297F9FB20(v2, v48);
    }

    LOBYTE(v112) = 0;
  }

  else
  {
    v113 = v10;
    v112 = 0;
    LOWORD(v115) = 0;
    v18 = 0x40000;
  }

  if (v117)
  {
    v18 &= 0x3FFFFu;
    v52 = *(*(v1 + 24) + 584);
    v53 = (v52 >> 5) & 0xB;
    if (v53 > 7)
    {
      v58 = MEMORY[0x29EDC9730];
      if (((v52 >> 5) & 0xB) > 9)
      {
        if (v53 == 10)
        {
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v65 = NFLogGetLogger();
          if (v65)
          {
            v65(4, "%s:%i Types-BF only", "_Dispatched_NFDriverConfigureDiscovery", 870);
          }

          dispatch_get_specific(*v58);
          v66 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v119 = "_Dispatched_NFDriverConfigureDiscovery";
            *v120 = 1024;
            *&v120[2] = 870;
            _os_log_impl(&dword_297F97000, v66, OS_LOG_TYPE_ERROR, "%{public}s:%i Types-BF only", buf, 0x12u);
          }

          v61 = 6;
        }

        else
        {
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v74 = NFLogGetLogger();
          if (v74)
          {
            v74(4, "%s:%i Types-ABF only", "_Dispatched_NFDriverConfigureDiscovery", 874);
          }

          dispatch_get_specific(*v58);
          v75 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v119 = "_Dispatched_NFDriverConfigureDiscovery";
            *v120 = 1024;
            *&v120[2] = 874;
            _os_log_impl(&dword_297F97000, v75, OS_LOG_TYPE_ERROR, "%{public}s:%i Types-ABF only", buf, 0x12u);
          }

          v61 = 15;
        }
      }

      else if (v53 == 8)
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v59 = NFLogGetLogger();
        if (v59)
        {
          v59(4, "%s:%i Type-F only", "_Dispatched_NFDriverConfigureDiscovery", 858);
        }

        dispatch_get_specific(*v58);
        v60 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v119 = "_Dispatched_NFDriverConfigureDiscovery";
          *v120 = 1024;
          *&v120[2] = 858;
          _os_log_impl(&dword_297F97000, v60, OS_LOG_TYPE_ERROR, "%{public}s:%i Type-F only", buf, 0x12u);
        }

        v61 = 4;
      }

      else
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v70 = NFLogGetLogger();
        if (v70)
        {
          v70(4, "%s:%i Types-AF only", "_Dispatched_NFDriverConfigureDiscovery", 866);
        }

        dispatch_get_specific(*v58);
        v71 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v119 = "_Dispatched_NFDriverConfigureDiscovery";
          *v120 = 1024;
          *&v120[2] = 866;
          _os_log_impl(&dword_297F97000, v71, OS_LOG_TYPE_ERROR, "%{public}s:%i Types-AF only", buf, 0x12u);
        }

        v61 = 5;
      }
    }

    else if (((v52 >> 5) & 0xB) > 1)
    {
      v62 = MEMORY[0x29EDC9730];
      if (v53 == 2)
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v63 = NFLogGetLogger();
        if (v63)
        {
          v63(4, "%s:%i Type-B only", "_Dispatched_NFDriverConfigureDiscovery", 854);
        }

        dispatch_get_specific(*v62);
        v64 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v119 = "_Dispatched_NFDriverConfigureDiscovery";
          *v120 = 1024;
          *&v120[2] = 854;
          _os_log_impl(&dword_297F97000, v64, OS_LOG_TYPE_ERROR, "%{public}s:%i Type-B only", buf, 0x12u);
        }

        v61 = 2;
      }

      else
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v72 = NFLogGetLogger();
        if (v72)
        {
          v72(4, "%s:%i Types-AB only", "_Dispatched_NFDriverConfigureDiscovery", 862);
        }

        dispatch_get_specific(*v62);
        v73 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v119 = "_Dispatched_NFDriverConfigureDiscovery";
          *v120 = 1024;
          *&v120[2] = 862;
          _os_log_impl(&dword_297F97000, v73, OS_LOG_TYPE_ERROR, "%{public}s:%i Types-AB only", buf, 0x12u);
        }

        v61 = 3;
      }
    }

    else if (v53)
    {
      v67 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v68 = NFLogGetLogger();
      if (v68)
      {
        v68(4, "%s:%i Type-A only", "_Dispatched_NFDriverConfigureDiscovery", 850);
      }

      dispatch_get_specific(*v67);
      v69 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v119 = "_Dispatched_NFDriverConfigureDiscovery";
        *v120 = 1024;
        *&v120[2] = 850;
        _os_log_impl(&dword_297F97000, v69, OS_LOG_TYPE_ERROR, "%{public}s:%i Type-A only", buf, 0x12u);
      }

      v61 = 1;
    }

    else
    {
      v54 = v117 & 1;
      if ((v117 & 2) != 0)
      {
        if ((v52 & 0x100000000) != 0 || (*(v1 + 59) & 1) == 0)
        {
          v54 |= 2u;
        }

        else
        {
          v55 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v56 = NFLogGetLogger();
          if (v56)
          {
            v56(6, "%s:%i Type-B disabled", "_Dispatched_NFDriverConfigureDiscovery", 884);
          }

          dispatch_get_specific(*v55);
          v57 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v119 = "_Dispatched_NFDriverConfigureDiscovery";
            *v120 = 1024;
            *&v120[2] = 884;
            _os_log_impl(&dword_297F97000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Type-B disabled", buf, 0x12u);
          }
        }
      }

      v61 = v54 | v117 & 4;
    }

    v111 = v61;
  }

  else
  {
    v111 = 0;
  }

  if (v116)
  {
    v18 |= 0x80000u;
  }

  v76 = v3;
  if (NF_isFeatureSupported() && v114)
  {
    v77 = *(*(v1 + 24) + 692);
    if (*(v1 + 63) == 1)
    {
      if ((*(*(v1 + 24) + 692) & 8) != 0)
      {
        v80 = v18 & 0x7FFFF;
        v81 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v82 = NFLogGetLogger();
        if (v82)
        {
          v82(5, "%s:%i Disabling field detection for Single Poll express", "_Dispatched_NFDriverConfigureDiscovery", 912);
        }

        v109 = v80;
        dispatch_get_specific(*v81);
        v83 = NFSharedLogGetLogger();
        v78 = v2;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v119 = "_Dispatched_NFDriverConfigureDiscovery";
          *v120 = 1024;
          *&v120[2] = 912;
          _os_log_impl(&dword_297F97000, v83, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Disabling field detection for Single Poll express", buf, 0x12u);
        }

        v79 = 8;
      }

      else
      {
        v109 = v18;
        v78 = v2;
        v79 = v77 & 0xF;
      }
    }

    else
    {
      v109 = v18;
      v78 = v2;
      v79 = v77 & 7;
    }

    v84 = *(v1 + 24);
    if ((*(v84 + 584) & 0x400) != 0)
    {
      v85 = 16;
    }

    else
    {
      v85 = *(v84 + 692) & 0x10;
    }

    v110 = v85 | v79;
    v86 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v87 = NFLogGetLogger();
    v88 = v85 >> 4;
    if (v87)
    {
      v87(6, "%s:%i Enabling express: transit=%d vas=%d generic-a=%d single_poll=%d debug=%d block=%d ", "_Dispatched_NFDriverConfigureDiscovery", 932, v79 & 1, (v79 >> 1) & 1, (v79 >> 2) & 1, v79 >> 3, v88, 0);
    }

    dispatch_get_specific(*v86);
    v89 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136448002;
      v119 = "_Dispatched_NFDriverConfigureDiscovery";
      *v120 = 1024;
      *&v120[2] = 932;
      *&v120[6] = 1024;
      *&v120[8] = v79 & 1;
      *&v120[12] = 1024;
      *&v120[14] = (v79 >> 1) & 1;
      *&v120[18] = 1024;
      *&v120[20] = (v79 >> 2) & 1;
      *&v120[24] = 1024;
      *&v120[26] = v79 >> 3;
      *&v120[30] = 1024;
      *&v120[32] = v88;
      *&v120[36] = 1024;
      *&v120[38] = 0;
      _os_log_impl(&dword_297F97000, v89, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling express: transit=%d vas=%d generic-a=%d single_poll=%d debug=%d block=%d ", buf, 0x36u);
    }

    v2 = v78;
    v18 = v109;
  }

  else
  {
    v110 = 0;
  }

  if (NF_isFeatureSupported())
  {
    if (!v117 && (v114 & 1) == 0 && (v116 & 1) == 0)
    {
      goto LABEL_165;
    }
  }

  else if (!v117 && !v116)
  {
    goto LABEL_165;
  }

  v90 = *(v1 + 24);
  if (*(v90 + 596))
  {
    v91 = (*(v90 + 587) & 2) == 0;
    goto LABEL_166;
  }

LABEL_165:
  v91 = 0;
LABEL_166:
  if (*(v1 + 65) != 1)
  {
LABEL_172:
    if (v76 == 3)
    {
      v95 = v18;
      v96 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v97 = NFLogGetLogger();
      if (v97)
      {
        v97(6, "%s:%i Changing config mode to MULTI_TAG", "_Dispatched_NFDriverConfigureDiscovery", 974);
      }

      dispatch_get_specific(*v96);
      v98 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v119 = "_Dispatched_NFDriverConfigureDiscovery";
        *v120 = 1024;
        *&v120[2] = 974;
        _os_log_impl(&dword_297F97000, v98, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Changing config mode to MULTI_TAG", buf, 0x12u);
      }

      v99 = 0;
      v18 = v95;
    }

    else
    {
      v99 = 0;
    }

    goto LABEL_184;
  }

  v92 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v93 = NFLogGetLogger();
  if (v76)
  {
    if (v93)
    {
      v93(4, "%s:%i Full HCE can't be used with polling", "_Dispatched_NFDriverConfigureDiscovery", 968);
    }

    dispatch_get_specific(*v92);
    v94 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v119 = "_Dispatched_NFDriverConfigureDiscovery";
      *v120 = 1024;
      *&v120[2] = 968;
      _os_log_impl(&dword_297F97000, v94, OS_LOG_TYPE_ERROR, "%{public}s:%i Full HCE can't be used with polling", buf, 0x12u);
    }

    goto LABEL_172;
  }

  if (v93)
  {
    v93(6, "%s:%i Forcing full hce routing", "_Dispatched_NFDriverConfigureDiscovery", 964);
  }

  dispatch_get_specific(*v92);
  v100 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v119 = "_Dispatched_NFDriverConfigureDiscovery";
    *v120 = 1024;
    *&v120[2] = 964;
    _os_log_impl(&dword_297F97000, v100, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Forcing full hce routing", buf, 0x12u);
  }

  v99 = 1;
LABEL_184:
  v101 = *(v1 + 24);
  *&v120[17] = v134;
  *&v120[33] = v135;
  *v121 = *v136;
  v102 = *(v101 + 576);
  *buf = v18;
  LOWORD(v119) = v115;
  WORD1(v119) = 256;
  BYTE4(v119) = 0;
  BYTE5(v119) = v111;
  HIWORD(v119) = 0;
  v120[0] = v110;
  *&v121[15] = *&v136[15];
  *&v120[1] = v133;
  v122 = v113;
  v123 = 0;
  v124 = 0;
  v125 = v91;
  v126 = v91;
  v127 = v112;
  v128 = 0;
  v129 = v9;
  v130 = BYTE4(v112);
  v131 = v99;
  v132 = 0;
  v103 = phLibNfc_Mgt_ConfigureDiscovery();
  if (v103 != 13)
  {
    v104 = v103;
    v105 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v106 = NFLogGetLogger();
    if (v106)
    {
      v106(3, "%s:%i status=0x%04X", "_Dispatched_NFDriverConfigureDiscovery", 986, v104);
    }

    dispatch_get_specific(*v105);
    v107 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v119 = "_Dispatched_NFDriverConfigureDiscovery";
      *v120 = 1024;
      *&v120[2] = 986;
      *&v120[6] = 1024;
      *&v120[8] = v104;
      _os_log_impl(&dword_297F97000, v107, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297FBE498(*(*(v1 + 24) + 576), 0, (v2 + 12), (v2 + 8));
    sub_297F9FB20(v2, v104);
    sub_297F9FBDC(v2);
  }

  v108 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297F9F5F4(uint64_t a1, double a2)
{
  v4 = *(a1 + 24);
  pthread_mutex_lock((v4 + 136));
  clock_gettime(_CLOCK_MONOTONIC_RAW, (v4 + 120));
  v5 = *(v4 + 128);
  *(v4 + 120) += vcvtmd_s64_f64(a2);
  *(v4 + 128) = v5 + ((a2 - floor(a2)) * 1000.0 * 1000.0 * 1000.0);
  v6 = (*(a1 + 24) + 136);

  return pthread_mutex_unlock(v6);
}

uint64_t sub_297F9F694(uint64_t *a1)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = 0xBADCAFEF00DLL;
  sub_297F9F5F4(a1, 60.0);
  pthread_mutex_lock((a1[3] + 8));
  v3 = *a1;
  if (*a1 != 0xBADCAFEF00DLL)
  {
    goto LABEL_39;
  }

  v4 = MEMORY[0x29EDC9730];
  while (1)
  {
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    v25.tv_sec = 0;
    v25.tv_nsec = 0;
    pthread_mutex_lock((a1[3] + 136));
    clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
    v5 = a1[3];
    v7 = *(v5 + 120);
    v6 = *(v5 + 128);
    pthread_mutex_unlock((v5 + 136));
    v8 = v7 - __tp.tv_sec;
    v9 = v6 - __tp.tv_nsec;
    v25.tv_sec = v7 - __tp.tv_sec;
    v25.tv_nsec = v6 - __tp.tv_nsec;
    if (v6 - __tp.tv_nsec < 0)
    {
      --v8;
      v9 += 1000000000;
      v25.tv_sec = v8;
      v25.tv_nsec = v9;
      if (v8 < 0)
      {
        break;
      }
    }

    else if (v8 < 0)
    {
      break;
    }

    if (!(v8 | v9))
    {
      break;
    }

LABEL_21:
    v15 = pthread_cond_timedwait_relative_np((a1[3] + 72), (a1[3] + 8), &v25);
    if (v15 != 60)
    {
      if (v15 == 22)
      {
        dispatch_get_specific(*v4);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Invalid parameter", "NFCallbackMutexWait", 210);
        }

        dispatch_get_specific(*v4);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v28 = "NFCallbackMutexWait";
          v29 = 1024;
          v30 = 210;
          _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid parameter", buf, 0x12u);
        }

        goto LABEL_38;
      }

      if (*a1 != 0xBADCAFEF00DLL)
      {
        v2 = *a1;
        goto LABEL_38;
      }

      dispatch_get_specific(*v4);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i semaphore released without signal!", "NFCallbackMutexWait", 217);
      }

      dispatch_get_specific(*v4);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v28 = "NFCallbackMutexWait";
        v29 = 1024;
        v30 = 217;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i semaphore released without signal!", buf, 0x12u);
      }
    }
  }

  dispatch_get_specific(*v4);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(3, "%s:%i TIMEOUT!", "NFCallbackMutexWait", 171);
  }

  dispatch_get_specific(*v4);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v28 = "NFCallbackMutexWait";
    v29 = 1024;
    v30 = 171;
    _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i TIMEOUT!", buf, 0x12u);
  }

  if ((byte_2A13A5DC8 & 1) == 0)
  {
    MEMORY[0x29C27DA60]();
    byte_2A13A5DC8 = 1;
  }

  if (NFIsRestoreOS())
  {
    goto LABEL_38;
  }

  NFSimulateCrash();
  v12 = byte_2A18BD381;
  dispatch_get_specific(*v4);
  v13 = NFLogGetLogger();
  if (v12)
  {
    if (v13)
    {
      v13(4, "%s:%i Extending timeout 10 seconds. User has requested us to avoid crashing.", "NFCallbackMutexWait", 191);
    }

    dispatch_get_specific(*v4);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "NFCallbackMutexWait";
      v29 = 1024;
      v30 = 191;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Extending timeout 10 seconds. User has requested us to avoid crashing.", buf, 0x12u);
    }

    v25 = xmmword_297FDB550;
    goto LABEL_21;
  }

  if (v13)
  {
    v13(4, "%s:%i Queuing exit due to timeout", "NFCallbackMutexWait", 185);
  }

  dispatch_get_specific(*v4);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v28 = "NFCallbackMutexWait";
    v29 = 1024;
    v30 = 185;
    _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Queuing exit due to timeout", buf, 0x12u);
  }

  v19 = dispatch_time(0, 2000000000);
  global_queue = dispatch_get_global_queue(33, 0);
  dispatch_after(v19, global_queue, &unk_2A1E980A8);
LABEL_38:
  v3 = v2;
LABEL_39:
  pthread_mutex_unlock((a1[3] + 8));
  v23 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t sub_297F9FB20(void *a1, uint64_t a2)
{
  pthread_mutex_lock((a1[3] + 8));
  *a1 = a2;
  nfc_err = a2;
  pthread_cond_signal((a1[3] + 72));
  v4 = (a1[3] + 8);

  return pthread_mutex_unlock(v4);
}

void sub_297F9FB84(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    sub_297FBE498(a1, 0, (a2 + 12), (a2 + 8));
  }

  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297F9FBDC(void **a1)
{
  pthread_mutex_lock((a1[3] + 8));
  v2 = a1[3];
  v3 = *v2 - 1;
  *v2 = v3;
  pthread_mutex_unlock((v2 + 8));
  if (!v3)
  {
    pthread_cond_destroy((a1[3] + 72));
    pthread_mutex_destroy((a1[3] + 8));
    pthread_mutex_destroy((a1[3] + 136));
    free(a1[3]);

    free(a1);
  }
}

BOOL NFDriverConfigureVASPolling(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x29EDCA608];
  memset(v27, 0, 44);
  NFDriverGetControllerInfo(a1, v27);
  if (DWORD1(v27[0]) < 7)
  {
    v8 = 1;
  }

  else
  {
    v26 = 0;
    v25 = xmmword_297FDB668;
    v6 = MEMORY[0x29EDC9730];
    if (a3 <= 21 && a2 && a3)
    {
      BYTE3(v25) = a3;
      v7 = &v25;
      __memcpy_chk();
    }

    else
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i Use default ECP value", "NFDriverConfigureVASPolling", 4362);
      }

      dispatch_get_specific(*v6);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v20 = "NFDriverConfigureVASPolling";
        v21 = 1024;
        v22 = 4362;
        _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Use default ECP value", buf, 0x12u);
      }

      v7 = &unk_2A13A5D90;
    }

    v18 = sub_297FA02E4(0x18u, v7);
    v11 = sub_297FA0380(a1, 37025, v18, 0);
    v12 = sub_297F9F694(v11);
    v8 = v12 == 0;
    if (v12)
    {
      dispatch_get_specific(*v6);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(3, "%s:%i Failed to set ECP VAS polling: 0x%08llx", "NFDriverConfigureVASPolling", 4373, *v11);
      }

      dispatch_get_specific(*v6);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *v11;
        *buf = 136446722;
        v20 = "NFDriverConfigureVASPolling";
        v21 = 1024;
        v22 = 4373;
        v23 = 2048;
        v24 = v15;
        _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set ECP VAS polling: 0x%08llx", buf, 0x1Cu);
      }
    }

    sub_297F9FBDC(v11);
    sub_297FA0714(&v18);
  }

  v16 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t NFDriverGetControllerInfo(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 20) = 83952656;
  if (*(a1 + 57))
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 620);
    *a2 = v5;
    v6 = *(v4 + 624);
    *(a2 + 24) = v6;
    *(a2 + 4) = sub_297FA01E8(v5, v6);
    *(a2 + 8) = *(v4 + 657);
    *(a2 + 12) = *(v4 + 612);
    *(a1 + 63) = (*(v4 + 680) & 8) != 0;
    *(a1 + 64) = (*(v4 + 680) & 0x20) != 0;
LABEL_3:
    result = 1;
    goto LABEL_11;
  }

  result = malloc_type_calloc(1uLL, 0x18uLL, 0x1000040C460F39EuLL);
  if (!result)
  {
    goto LABEL_11;
  }

  v8 = result;
  v9 = sub_297F9DC04();
  pthread_mutex_lock((v9[3] + 8));
  v10 = v9[3];
  ++*v10;
  pthread_mutex_unlock((v10 + 8));
  v11 = *(*(a1 + 24) + 560);
  *block = MEMORY[0x29EDCA5F8];
  *&block[8] = 0x40000000;
  *&block[16] = sub_297FD75A8;
  *&block[24] = &unk_29EE88B68;
  v21 = a1;
  v22 = v8;
  v23 = v9;
  dispatch_async_and_wait(v11, block);
  if (!sub_297F9F694(v9))
  {
    v18 = *v8;
    *a2 = v18;
    v19 = v8[2];
    *(a2 + 24) = v19;
    *(a2 + 4) = sub_297FA01E8(v18, v19);
    *(a2 + 8) = v8[1];
    *(a2 + 12) = __rev16(*(v8 + 3));
    *(a2 + 16) = *(v8 + 1);
    *(a1 + 63) = 0;
    sub_297F9FBDC(v9);
    free(v8);
    goto LABEL_3;
  }

  v12 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i status=0x%04llX", "NFDriverGetControllerInfo", 5372, *v9);
  }

  dispatch_get_specific(*v12);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = *v9;
    *block = 136446722;
    *&block[4] = "NFDriverGetControllerInfo";
    *&block[12] = 1024;
    *&block[14] = 5372;
    *&block[18] = 2048;
    *&block[20] = v15;
    _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", block, 0x1Cu);
  }

  sub_297F9FBDC(v9);
  v16 = *(*(a1 + 24) + 560);
  *block = MEMORY[0x29EDCA5F8];
  *&block[8] = 0x40000000;
  *&block[16] = sub_297FB7B1C;
  *&block[24] = &unk_29EE880F8;
  v21 = a1;
  dispatch_async(v16, block);
  sub_297FB7E3C(a1);
  free(v8);
  result = 0;
LABEL_11:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FA01E8(int a1, int a2)
{
  if (a1 > 185)
  {
    if (a1 <= 209)
    {
      if (a1 == 186)
      {
        return 20;
      }

      if (a1 != 188)
      {
        if (a1 == 209)
        {
          return 14;
        }

        return 0;
      }
    }

    else
    {
      if (a1 <= 217)
      {
        if (a1 == 210)
        {
          return 15;
        }

        if (a1 == 211)
        {
          return 16;
        }

        return 0;
      }

      if (a1 == 218)
      {
        return 22;
      }

      if (a1 != 16800)
      {
        return 0;
      }
    }

    return 21;
  }

  if (a1 <= 163)
  {
    switch(a1)
    {
      case 66:
        return 5;
      case 96:
        return 18;
      case 163:
        return 7;
    }

    return 0;
  }

  if (a1 == 164)
  {
    return 8;
  }

  if (a1 == 177)
  {
    return 10;
  }

  if (a1 != 178)
  {
    return 0;
  }

  if (a2)
  {
    return 12;
  }

  else
  {
    return 11;
  }
}

unsigned int *sub_297FA02E4(unsigned int a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = a1;
    v6 = malloc_type_calloc(1uLL, a1, 0x100004077774924uLL);
    *v5 = v6;
    if (v6)
    {
      if (a2)
      {
        memcpy(v6, a2, v5[2]);
      }
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

void *sub_297FA0380(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_297F9DC04();
  pthread_mutex_lock((v8[3] + 8));
  v9 = v8[3];
  ++*v9;
  pthread_mutex_unlock((v9 + 8));
  v8[2] = a4;
  v10 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FA0454;
  block[3] = &unk_29EE88168;
  v13 = a2;
  block[4] = a1;
  block[5] = a3;
  block[6] = a4;
  block[7] = v8;
  dispatch_async_and_wait(v10, block);
  return v8;
}

void sub_297FA0454(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = phLibNfc_Mgt_IoCtl();
  if (v7 != 13)
  {
    v8 = v7;
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverIoCtl_block_invoke", 506, v8);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "_Async_NFDriverIoCtl_block_invoke";
      v15 = 1024;
      v16 = 506;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 56), v8);
    sub_297F9FBDC(*(a1 + 56));
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_297FA05A0(uint64_t a1, void **a2, uint64_t a3, unsigned int a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Callback_NFDriverIoCtl", 481, a4);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "_Callback_NFDriverIoCtl";
      v16 = 1024;
      v17 = 481;
      v18 = 1024;
      v19 = a4;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }

  else if (a3)
  {
    v10 = a2[2];
    if (v10)
    {
      if (*v10 != *a3)
      {
        free(*v10);
        v11 = *(a3 + 8);
        *(v10 + 2) = v11;
        v12 = malloc_type_calloc(1uLL, v11, 0xB8D80EABuLL);
        *v10 = v12;
        if (v12)
        {
          memcpy(v12, *a3, *(v10 + 2));
        }
      }
    }
  }

  sub_297F9FB20(a2, a4);
  sub_297F9FBDC(a2);
  v13 = *MEMORY[0x29EDCA608];
}

void sub_297FA0714(void ***a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2)
      {
        free(*v2);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

BOOL sub_297FA075C(uint64_t a1, int *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = *(a1 + 44);
  if (*a2)
  {
    goto LABEL_2;
  }

  if (v5)
  {
    v12 = v5 == 6;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (!sub_297FD7730(a1, 1, 1))
    {
      v21 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to power off eSE", "_NFDriverSetSecureElementRouting", 5420);
      }

      dispatch_get_specific(*v21);
      v9 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v27 = "_NFDriverSetSecureElementRouting";
        v28 = 1024;
        v29 = 5420;
        v11 = "%{public}s:%i Failed to power off eSE";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    v5 = *(a1 + 44);
    v4 = *a2;
LABEL_2:
    v6 = v4 != 6 || v5 == 6;
    if (!v6 && !sub_297FD7730(a1, 1, 3))
    {
      v7 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v8(3, "%s:%i Failed to fully power off eSE", "_NFDriverSetSecureElementRouting", 5429);
      }

      dispatch_get_specific(*v7);
      v9 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v27 = "_NFDriverSetSecureElementRouting";
        v28 = 1024;
        v29 = 5429;
        v11 = "%{public}s:%i Failed to fully power off eSE";
LABEL_52:
        _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
        result = 0;
        goto LABEL_53;
      }

      goto LABEL_53;
    }
  }

  if (*(a1 + 48))
  {
    v13 = a2[1] == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && !sub_297FD7730(a1, 4, 1))
  {
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Failed to power off Host", "_NFDriverSetSecureElementRouting", 5438);
    }

    dispatch_get_specific(*v16);
    v9 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v27 = "_NFDriverSetSecureElementRouting";
      v28 = 1024;
      v29 = 5438;
      v11 = "%{public}s:%i Failed to power off Host";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (!*(*(a1 + 24) + 528))
  {
    goto LABEL_37;
  }

  if (*a2 == 2)
  {
    if (!sub_297FD7730(a1, 1, 0))
    {
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i Failed to set eSE to virtual mode", "_NFDriverSetSecureElementRouting", 5456);
      }

      dispatch_get_specific(*v23);
      v9 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v27 = "_NFDriverSetSecureElementRouting";
        v28 = 1024;
        v29 = 5456;
        v11 = "%{public}s:%i Failed to set eSE to virtual mode";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    goto LABEL_37;
  }

  if (*a2 != 1 || sub_297FD7730(a1, 1, 2))
  {
LABEL_37:
    if (a2[1] == 2 && !sub_297FD7730(a1, 4, 0))
    {
      v19 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v20(3, "%s:%i Failed to set HOST to virtual mode", "_NFDriverSetSecureElementRouting", 5471);
      }

      dispatch_get_specific(*v19);
      v9 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v27 = "_NFDriverSetSecureElementRouting";
        v28 = 1024;
        v29 = 5471;
        v11 = "%{public}s:%i Failed to set HOST to virtual mode";
        goto LABEL_52;
      }
    }

    else
    {
      result = 1;
    }

    goto LABEL_53;
  }

  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(3, "%s:%i Failed to set eSE to wired mode", "_NFDriverSetSecureElementRouting", 5449);
  }

  dispatch_get_specific(*v14);
  v9 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v27 = "_NFDriverSetSecureElementRouting";
    v28 = 1024;
    v29 = 5449;
    v11 = "%{public}s:%i Failed to set eSE to wired mode";
    goto LABEL_52;
  }

LABEL_53:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFDriverGetPowerCounter(uint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Power state tracking query", "NFDriverGetPowerCounter", 8784);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "NFDriverGetPowerCounter";
    *&buf[12] = 1024;
    *&buf[14] = 8784;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Power state tracking query", buf, 0x12u);
  }

  if (a2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4000000000;
    v85 = 0u;
    v86 = 0u;
    v87 = 0;
    v78[0] = MEMORY[0x29EDCA5F8];
    v78[1] = 0x40000000;
    v78[2] = sub_297FA1C60;
    v78[3] = &unk_29EE888A8;
    v78[4] = buf;
    v78[5] = a1;
    v7 = sub_297FA1B10(a1, v78);
    v8 = sub_297F9F694(v7);
    if (v8)
    {
      v9 = v8;
      if (v8 == 51)
      {
        dispatch_get_specific(*v4);
        v10 = NFLogGetLogger();
        if (v10)
        {
          v10(3, "%s:%i Not supported", "NFDriverGetPowerCounter", 8806);
        }

        dispatch_get_specific(*v4);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *block = 136446466;
          *&block[4] = "NFDriverGetPowerCounter";
          *&block[12] = 1024;
          *&block[14] = 8806;
          _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported", block, 0x12u);
        }
      }

      else
      {
        dispatch_get_specific(*v4);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v17(3, "%s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", "NFDriverGetPowerCounter", 8809, v9);
        }

        dispatch_get_specific(*v4);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *block = 136446722;
          *&block[4] = "NFDriverGetPowerCounter";
          *&block[12] = 1024;
          *&block[14] = 8809;
          *&block[18] = 2048;
          *&block[20] = v9;
          _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", block, 0x1Cu);
        }

        v19 = *(v7 + 6);
        if (v19 == 44 || v19 == 34)
        {
          dispatch_get_specific(*v4);
          v20 = NFLogGetLogger();
          if (v20)
          {
            v20(3, "%s:%i CRC error or response timeout - 0x%04llx", "NFDriverGetPowerCounter", 8814, v9);
          }

          dispatch_get_specific(*v4);
          v21 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *block = 136446722;
            *&block[4] = "NFDriverGetPowerCounter";
            *&block[12] = 1024;
            *&block[14] = 8814;
            *&block[18] = 2048;
            *&block[20] = v9;
            _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i CRC error or response timeout - 0x%04llx", block, 0x1Cu);
          }

          v22 = *(*(a1 + 24) + 560);
          *block = MEMORY[0x29EDCA5F8];
          *&block[8] = 0x40000000;
          *&block[16] = sub_297FB7B1C;
          *&block[24] = &unk_29EE880F8;
          *v80 = a1;
          dispatch_async(v22, block);
          NFDriverSimulateCrash(a1, 57005, "NFDriverGetPowerCounter: CRC error or response timeout");
        }
      }

      v12 = 1;
LABEL_112:
      sub_297F9FBDC(v7);
      _Block_object_dispose(buf, 8);
      goto LABEL_113;
    }

    v13 = *(*&buf[8] + 24);
    dispatch_get_specific(*v4);
    v14 = NFLogGetLogger();
    if (v13 < 0x3FFFF)
    {
      if (v14)
      {
        v14(6, "%s:%i Idle=%d", "NFDriverGetPowerCounter", 8824, *(*&buf[8] + 24));
      }

      dispatch_get_specific(*v4);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(*&buf[8] + 24);
        *block = 136446722;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8824;
        *&block[18] = 1024;
        *&block[20] = v24;
        _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Idle=%d", block, 0x18u);
      }

      v12 = 0;
      v16 = 100 * *(*&buf[8] + 24);
    }

    else
    {
      if (v14)
      {
        v14(4, "%s:%i Idle counter overflown", "NFDriverGetPowerCounter", 8820);
      }

      dispatch_get_specific(*v4);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8820;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Idle counter overflown", block, 0x12u);
      }

      v12 = 15;
      v16 = -1;
    }

    *a2 = v16;
    v25 = *(*&buf[8] + 28);
    dispatch_get_specific(*v4);
    v26 = NFLogGetLogger();
    if (v25 < 0x3FFF)
    {
      if (v26)
      {
        v26(6, "%s:%i RF=%d", "NFDriverGetPowerCounter", 8833, *(*&buf[8] + 28));
      }

      dispatch_get_specific(*v4);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(*&buf[8] + 28);
        *block = 136446722;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8833;
        *&block[18] = 1024;
        *&block[20] = v30;
        _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i RF=%d", block, 0x18u);
      }

      v28 = 100 * *(*&buf[8] + 28);
    }

    else
    {
      if (v26)
      {
        v26(4, "%s:%i RF counter overflown", "NFDriverGetPowerCounter", 8829);
      }

      dispatch_get_specific(*v4);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8829;
        _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i RF counter overflown", block, 0x12u);
      }

      v12 = 15;
      v28 = -1;
    }

    *(a2 + 4) = v28;
    if (*(a1 + 56) == 1)
    {
      v31 = *(*&buf[8] + 32);
      dispatch_get_specific(*v4);
      v32 = NFLogGetLogger();
      if (v31 >= 0xFFFF)
      {
        if (v32)
        {
          v32(4, "%s:%i MultiTag false detect counter overflown", "NFDriverGetPowerCounter", 8840);
        }

        dispatch_get_specific(*v4);
        v33 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8840;
        v34 = "%{public}s:%i MultiTag false detect counter overflown";
LABEL_62:
        _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, v34, block, 0x12u);
LABEL_63:
        v43 = -1;
        v12 = 15;
        goto LABEL_74;
      }

      if (v32)
      {
        v32(6, "%s:%i MultiTag-FC=%d", "NFDriverGetPowerCounter", 8844, *(*&buf[8] + 32));
      }

      dispatch_get_specific(*v4);
      v44 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(*&buf[8] + 32);
        *block = 136446722;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8844;
        *&block[18] = 1024;
        *&block[20] = v45;
        v46 = "%{public}s:%i MultiTag-FC=%d";
LABEL_72:
        _os_log_impl(&dword_297F97000, v44, OS_LOG_TYPE_DEFAULT, v46, block, 0x18u);
      }
    }

    else
    {
      v35 = *(a1 + 24);
      if (*(v35 + 704))
      {
        mach_continuous_time();
        v36 = *(*(a1 + 24) + 704);
        *(*(a1 + 24) + 712) += GetElapsedTimeInMillisecondsFromMachTime();
        v37 = mach_continuous_time();
        v35 = *(a1 + 24);
        *(v35 + 704) = v37;
      }

      *(a2 + 40) = *(v35 + 712) / 0x3E8uLL;
      v38 = *(a1 + 24);
      v38[89] = 0;
      if (v38[90])
      {
        mach_continuous_time();
        v39 = *(*(a1 + 24) + 720);
        *(*(a1 + 24) + 728) += GetElapsedTimeInMillisecondsFromMachTime();
        v40 = mach_continuous_time();
        v38 = *(a1 + 24);
        v38[90] = v40;
      }

      *(a2 + 32) = v38[91] / 0x3E8uLL;
      *(*(a1 + 24) + 728) = 0;
      v41 = *(*&buf[8] + 32);
      dispatch_get_specific(*v4);
      v42 = NFLogGetLogger();
      if (v41 >= 0xFFFF)
      {
        if (v42)
        {
          v42(4, "%s:%i LPCD false detect counter overflown", "NFDriverGetPowerCounter", 8874);
        }

        dispatch_get_specific(*v4);
        v33 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8874;
        v34 = "%{public}s:%i LPCD false detect counter overflown";
        goto LABEL_62;
      }

      if (v42)
      {
        v42(6, "%s:%i LPCD-FC=%d", "NFDriverGetPowerCounter", 8878, *(*&buf[8] + 32));
      }

      dispatch_get_specific(*v4);
      v44 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(*&buf[8] + 32);
        *block = 136446722;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8878;
        *&block[18] = 1024;
        *&block[20] = v47;
        v46 = "%{public}s:%i LPCD-FC=%d";
        goto LABEL_72;
      }
    }

    v43 = *(*&buf[8] + 32);
LABEL_74:
    *(a2 + 24) = v43;
    if (*(*&buf[8] + 40) == -1)
    {
      dispatch_get_specific(*v4);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v52(4, "%s:%i SE uptime counter overflown", "NFDriverGetPowerCounter", 8887);
      }

      dispatch_get_specific(*v4);
      v53 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8887;
        _os_log_impl(&dword_297F97000, v53, OS_LOG_TYPE_ERROR, "%{public}s:%i SE uptime counter overflown", block, 0x12u);
      }

      *(a2 + 8) = -1;
      v12 = 15;
      goto LABEL_97;
    }

    if (*(*&buf[8] + 38))
    {
      dispatch_get_specific(*v4);
      v48 = NFLogGetLogger();
      if (v48)
      {
        v48(4, "%s:%i SE uptime failed to be queried, power=%d, mailbox=%d", "NFDriverGetPowerCounter", 8891, *(*&buf[8] + 36), *(*&buf[8] + 37));
      }

      dispatch_get_specific(*v4);
      v49 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = *(*&buf[8] + 36);
        v51 = *(*&buf[8] + 37);
        *block = 136446978;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8891;
        *&block[18] = 1024;
        *&block[20] = v50;
        *&block[24] = 1024;
        *&block[26] = v51;
        _os_log_impl(&dword_297F97000, v49, OS_LOG_TYPE_ERROR, "%{public}s:%i SE uptime failed to be queried, power=%d, mailbox=%d", block, 0x1Eu);
      }

      *(a2 + 8) = -1;
      v12 = 4;
      goto LABEL_97;
    }

    memset(v83, 0, 44);
    NFDriverGetControllerInfo(a1, v83);
    v54 = DWORD1(v83[0]) - 14;
    dispatch_get_specific(*v4);
    v55 = NFLogGetLogger();
    if (v54 > 4)
    {
      if (v55)
      {
        v55(6, "%s:%i SE=%d, power=%d, mailbox=%d", "NFDriverGetPowerCounter", 8910, *(*&buf[8] + 40), *(*&buf[8] + 36), *(*&buf[8] + 37));
      }

      dispatch_get_specific(*v4);
      v65 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      v66 = *(*&buf[8] + 40);
      v67 = *(*&buf[8] + 36);
      v68 = *(*&buf[8] + 37);
      *block = 136447234;
      *&block[4] = "NFDriverGetPowerCounter";
      *&block[12] = 1024;
      *&block[14] = 8910;
      *&block[18] = 1024;
      *&block[20] = v66;
      *&block[24] = 1024;
      *&block[26] = v67;
      *&block[30] = 1024;
      *v80 = v68;
      v62 = "%{public}s:%i SE=%d, power=%d, mailbox=%d";
      v63 = v65;
      v64 = 36;
    }

    else
    {
      if (v55)
      {
        v55(6, "%s:%i SE=%d, JCOP=%d eUICC=%d power=%d, mailbox=%d", "NFDriverGetPowerCounter", 8907, *(*&buf[8] + 40), *(*&buf[8] + 44), *(*&buf[8] + 48), *(*&buf[8] + 36), *(*&buf[8] + 37));
      }

      dispatch_get_specific(*v4);
      v56 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      v57 = *(*&buf[8] + 40);
      v58 = *(*&buf[8] + 44);
      v59 = *(*&buf[8] + 48);
      v60 = *(*&buf[8] + 36);
      v61 = *(*&buf[8] + 37);
      *block = 136447746;
      *&block[4] = "NFDriverGetPowerCounter";
      *&block[12] = 1024;
      *&block[14] = 8907;
      *&block[18] = 1024;
      *&block[20] = v57;
      *&block[24] = 1024;
      *&block[26] = v58;
      *&block[30] = 1024;
      *v80 = v59;
      *&v80[4] = 1024;
      *&v80[6] = v60;
      v81 = 1024;
      v82 = v61;
      v62 = "%{public}s:%i SE=%d, JCOP=%d eUICC=%d power=%d, mailbox=%d";
      v63 = v56;
      v64 = 48;
    }

    _os_log_impl(&dword_297F97000, v63, OS_LOG_TYPE_DEFAULT, v62, block, v64);
LABEL_96:
    *(a2 + 8) = 100 * *(*&buf[8] + 40);
LABEL_97:
    v69 = *&buf[8];
    v70 = *(*&buf[8] + 44);
    if (v70 == -1)
    {
      dispatch_get_specific(*v4);
      v71 = NFLogGetLogger();
      if (v71)
      {
        v71(4, "%s:%i JCOP uptime counter overflown", "NFDriverGetPowerCounter", 8917);
      }

      dispatch_get_specific(*v4);
      v72 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8917;
        _os_log_impl(&dword_297F97000, v72, OS_LOG_TYPE_ERROR, "%{public}s:%i JCOP uptime counter overflown", block, 0x12u);
      }

      *(a2 + 12) = -1;
      v12 = 15;
      v69 = *&buf[8];
    }

    else
    {
      *(a2 + 12) = 100 * v70;
    }

    v73 = *(v69 + 48);
    if (v73 == -1)
    {
      dispatch_get_specific(*v4);
      v74 = NFLogGetLogger();
      if (v74)
      {
        v74(4, "%s:%i JCOP uptime counter overflown", "NFDriverGetPowerCounter", 8925);
      }

      dispatch_get_specific(*v4);
      v75 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8925;
        _os_log_impl(&dword_297F97000, v75, OS_LOG_TYPE_ERROR, "%{public}s:%i JCOP uptime counter overflown", block, 0x12u);
      }

      *(a2 + 16) = -1;
      v12 = 15;
      v69 = *&buf[8];
    }

    else
    {
      *(a2 + 16) = 100 * v73;
    }

    *(a2 + 20) = *(v69 + 36) != 0;
    *(a2 + 21) = *(v69 + 37) != 0;
    goto LABEL_112;
  }

  v12 = 5;
LABEL_113:
  v76 = *MEMORY[0x29EDCA608];
  return v12;
}

void *sub_297FA1B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_297F9DC04();
  pthread_mutex_lock((v4[3] + 8));
  v5 = v4[3];
  ++*v5;
  pthread_mutex_unlock((v5 + 8));
  v6 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FA1BCC;
  block[3] = &unk_29EE886B8;
  block[4] = a2;
  block[5] = v4;
  block[6] = a1;
  dispatch_async_and_wait(v6, block);
  return v4;
}

void sub_297FA1BCC(void *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    v4 = 1;
LABEL_6:
    sub_297FBE498(*(*(a1[6] + 24) + 576), 0, (a1[5] + 12), (a1[5] + 8));
    goto LABEL_7;
  }

  v3 = (*(v2 + 16))(v2, a1[5]);
  v4 = v3;
  if (v3)
  {
    if (v3 == 13)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  sub_297F9FB20(a1[5], v4);
  v5 = a1[5];

  sub_297F9FBDC(v5);
}

uint64_t sub_297FA1C60(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(*(a1 + 32) + 8) + 24;
  v2 = *(*(*(a1 + 40) + 24) + 576);
  return phLibNfc_Mgt_GetNfccParams();
}

BOOL sub_297FA1DA4(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 32) = sub_297FA1E1C;
    *(a1 + 40) = sub_297FA1F0C;
    *(a1 + 48) = sub_297FA1FFC;
    *(a1 + 56) = sub_297FA2104;
    *(a1 + 64) = sub_297FA21F4;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0;
    *(a1 + 20) = 4;
  }

  return a1 != 0;
}

uint64_t sub_297FA1E1C()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for UICC!", "SetPower_UICC", 23);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v6 = "SetPower_UICC";
    v7 = 1024;
    v8 = 23;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for UICC!", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297FA1F0C()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for UICC!", "GetOSInfo_UICC", 29);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v6 = "GetOSInfo_UICC";
    v7 = 1024;
    v8 = 29;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for UICC!", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297FA1FFC(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for UICC!", "GetOSMode_UICC", 35);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v10 = "GetOSMode_UICC";
    v11 = 1024;
    v12 = 35;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for UICC!", buf, 0x12u);
  }

  *(a2 + 1224) = *(a1 + 20);
  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297FA2104()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for UICC!", "GetOSUpdateLog_UICC", 42);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v6 = "GetOSUpdateLog_UICC";
    v7 = 1024;
    v8 = 42;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for UICC!", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297FA21F4(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for UICC!", "GetAttackCounterLog_UICC", 48);
  }

  dispatch_get_specific(*v5);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v11 = "GetAttackCounterLog_UICC";
    v12 = 1024;
    v13 = 48;
    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for UICC!", buf, 0x12u);
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297FA2304(uint64_t a1, unsigned int a2, int a3, int a4, _WORD *a5)
{
  v34 = *MEMORY[0x29EDCA608];
  v10 = NFDataCreateWithBytes();
  v11 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), a2, 128, 202, SBYTE1(a3), a3, 0, v10);
  NFDataRelease();
  if (v11)
  {
    v12 = v11[1];
    if (v12 >= 2)
    {
      v13 = __rev16(*(*v11 + v12 - 2));
      if (!a5)
      {
LABEL_13:
        if (v13 == 36864)
        {
          v18 = *v11;
          v17 = NFDataCreateWithBytes();
          NFDataRelease();
          goto LABEL_21;
        }

        v19 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(4, "%s:%i Returned error: 0x%04x for (0x%x/0x%x)", "NFDriverSecureElementGetDataWithOS", 63, v13, a3, a4);
        }

        dispatch_get_specific(*v19);
        v21 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447234;
          v25 = "NFDriverSecureElementGetDataWithOS";
          v26 = 1024;
          v27 = 63;
          v28 = 1024;
          v29 = v13;
          v30 = 1024;
          v31 = a3;
          v32 = 1024;
          v33 = a4;
          _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x for (0x%x/0x%x)", buf, 0x24u);
        }

        NFDataRelease();
LABEL_20:
        v17 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    *a5 = v13;
    goto LABEL_13;
  }

  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(3, "%s:%i Failed to get data", "NFDriverSecureElementGetDataWithOS", 49);
  }

  dispatch_get_specific(*v14);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v25 = "NFDriverSecureElementGetDataWithOS";
    v26 = 1024;
    v27 = 49;
    _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get data", buf, 0x12u);
  }

  if (!a5)
  {
    goto LABEL_20;
  }

  v17 = 0;
  *a5 = 0;
LABEL_21:
  v22 = *MEMORY[0x29EDCA608];
  return v17;
}

unsigned __int8 **sub_297FA25B8(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  result = sub_297FA2304(a1, 2, 254, 57123, 0);
  if (result)
  {
    if (result[1] >= 4)
    {
      v4 = *result;
      v5 = **result << 24;
      *(a2 + 1236) = v5;
      v6 = v5 | (v4[1] << 16);
      *(a2 + 1236) = v6;
      v7 = v6 | (v4[2] << 8);
      *(a2 + 1236) = v7;
      v8 = v7 | v4[3];
      *(a2 + 1236) = v8;
      if (*(a2 + 1208))
      {
        v9 = *(a2 + 1252);
        if (v9 > 0xC7)
        {
          if (v9 != 210 && v9 != 200)
          {
            goto LABEL_30;
          }
        }

        else if (v9 != 100 && v9 != 115)
        {
          goto LABEL_30;
        }
      }

      v10 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i Resolve key type from config", "_NFDriverUpdateKeyWithConfigID", 91);
      }

      dispatch_get_specific(*v10);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v21 = "_NFDriverUpdateKeyWithConfigID";
        v22 = 1024;
        v23 = 91;
        _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Resolve key type from config", buf, 0x12u);
      }

      if (v8 >= 3)
      {
        v13 = v8 & 0xFFFFFF;
        if ((v8 & 0xFFFFFF) == 0x535443)
        {
LABEL_19:
          v16 = 1;
          *(a2 + 1208) = 1;
        }

        else
        {
          v14 = 4u;
          while (v14 != 32)
          {
            v15 = *&aCts[v14];
            v14 += 4;
            if (v13 == v15)
            {
              goto LABEL_19;
            }
          }

          v16 = 0;
        }

        for (i = 0; i != 4; ++i)
        {
          if (v13 == dword_297FDB2A4[i])
          {
            v18 = 2;
            goto LABEL_29;
          }
        }

        if (v16)
        {
          goto LABEL_30;
        }

        if (v5 < 0)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

LABEL_29:
        *(a2 + 1208) = v18;
      }
    }

LABEL_30:
    result = NFDataRelease();
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_297FA27E0(void *a1, uint64_t a2)
{
  v58 = *MEMORY[0x29EDCA608];
  v2 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 128, 202, 127, 33, 0, 0);
  v3 = MEMORY[0x29EDC9730];
  if (v2)
  {
    v6 = v2;
    v4 = *v2;
    v5 = v6[1];
    if (v5 >= 2)
    {
      v7 = bswap32(*(v4 + v5 - 2)) >> 16;
    }

    else
    {
      LOWORD(v7) = 0;
    }

    v11 = NFDataCreateWithBytes();
    NFDataRelease();
    v12 = 0;
    v13 = 0;
    while (1)
    {
      if (BYTE1(v7) == 97)
      {
        v14 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 128, 192, 0, 0, v7, 0);
      }

      else
      {
        if (v7 != 25360)
        {
          goto LABEL_15;
        }

        v14 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 128, 204, 127, 33, 0, 0);
      }

      v13 = v14;
LABEL_15:
      if (!v13)
      {
        dispatch_get_specific(*v3);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Transceive failure", "NFDriverSecureElementGetCertificates", 330);
        }

        dispatch_get_specific(*v3);
        v9 = NFSharedLogGetLogger();
        result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          v49 = "NFDriverSecureElementGetCertificates";
          v50 = 1024;
          v51 = 330;
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v15 = *(v13 + 8);
      if (v15 >= 2)
      {
        v17 = *(*v13 + v15 - 2);
        if (v15 != 2)
        {
          v18 = *(v11 + 8);
          v19 = NFDataCreateWithLength();
          if (v19)
          {
            v20 = v19;
            memcpy(*v19, *v11, *(v11 + 8));
            memcpy(*v20 + *(v11 + 8), *v13, *(v13 + 8) - 2);
            NFDataRelease();
            v11 = v20;
          }

          NFDataRelease();
          v13 = 0;
        }

        v7 = __rev16(v17);
        v16 = v7 == 25360;
        if (v7 != 36864 && v7 != 25360)
        {
          goto LABEL_50;
        }

        v22 = TLVCreateWithDataMixed();
        v47 = v22;
        if (v22)
        {
          v23 = v22;
          if (*(a1 + 5) != 6 || *(v22 + 32) != 32545 || (v23 = *(v22 + 16)) != 0)
          {
            do
            {
              v24 = sub_297FA2DC8(*(v23 + 16));
              if ((v24 - 1) <= 2)
              {
                v25 = *(v23 + 40);
                v26 = *(v25 + 8);
                if (v26 > 0x100)
                {
                  dispatch_get_specific(*v3);
                  v28 = NFLogGetLogger();
                  if (v28)
                  {
                    v28(4, "%s:%i Certificate too long: %zu", "NFDriverSecureElementGetCertificates", 371, *(*(v23 + 40) + 8));
                  }

                  dispatch_get_specific(*v3);
                  v29 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_44;
                  }

                  v30 = *(*(v23 + 40) + 8);
                  *buf = 136446722;
                  v49 = "NFDriverSecureElementGetCertificates";
                  v50 = 1024;
                  v51 = 371;
                  v52 = 2048;
                  *v53 = v30;
                  v31 = v29;
                  v32 = "%{public}s:%i Certificate too long: %zu";
                  v33 = 28;
LABEL_43:
                  _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, v32, buf, v33);
                  goto LABEL_44;
                }

                if (v12 > 2)
                {
                  dispatch_get_specific(*v3);
                  v34 = NFLogGetLogger();
                  if (v34)
                  {
                    v35 = v34;
                    v36 = *(*(v23 + 40) + 8);
                    v37 = *(v23 + 32);
                    v38 = sub_297FA2DC8(*(v23 + 16));
                    v35(3, "%s:%i Not enough storage for cert %d (tag 0x%x). Len = %lu, type = %d !", "NFDriverSecureElementGetCertificates", 368, v12, v37, v36, v38);
                  }

                  dispatch_get_specific(*v3);
                  v39 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_44;
                  }

                  v40 = *(v23 + 32);
                  v41 = *(*(v23 + 40) + 8);
                  v42 = sub_297FA2DC8(*(v23 + 16));
                  *buf = 136447490;
                  v49 = "NFDriverSecureElementGetCertificates";
                  v50 = 1024;
                  v51 = 368;
                  v52 = 1024;
                  *v53 = v12;
                  *&v53[4] = 1024;
                  *&v53[6] = v40;
                  v54 = 2048;
                  v55 = v41;
                  v56 = 1024;
                  v57 = v42;
                  v31 = v39;
                  v32 = "%{public}s:%i Not enough storage for cert %d (tag 0x%x). Len = %lu, type = %d !";
                  v33 = 46;
                  goto LABEL_43;
                }

                v27 = a2 + 272 * v12;
                *(v27 + 264) = v24;
                *(v27 + 256) = v26;
                memcpy(v27, *v25, v26);
                ++v12;
              }

LABEL_44:
              v23 = *(v23 + 24);
            }

            while (v23);
          }
        }

        else
        {
          NFDataPrintAsHexString();
        }

        if (v47)
        {
          TLVRelease();
        }

        NFDataRelease();
        v11 = NFDataCreateWithLength();
        goto LABEL_50;
      }

      v16 = 0;
      LOWORD(v7) = 0;
LABEL_50:
      if (!v16 && (v7 & 0xFF00) != 0x6100)
      {
        if (v11)
        {
          NFDataRelease();
        }

        result = 1;
        goto LABEL_60;
      }
    }
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(3, "%s:%i Transceive failure", "NFDriverSecureElementGetCertificates", 283);
  }

  dispatch_get_specific(*v3);
  v9 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v49 = "NFDriverSecureElementGetCertificates";
    v50 = 1024;
    v51 = 283;
LABEL_59:
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Transceive failure", buf, 0x12u);
    result = 0;
  }

LABEL_60:
  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FA2DC8(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v1 = MEMORY[0x29EDC9730];
  if (!a1)
  {
    v3 = 0;
    goto LABEL_39;
  }

  v2 = a1;
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(v2 + 32);
    if (v5 != 32585)
    {
      if (v5 == 149)
      {
        v6 = *(v2 + 40);
        v7 = v6[1];
        if (v7)
        {
          v8 = *v6;
          v3 = *v8;
          if (v7 != 1)
          {
            v3 = v8[1] | (v3 << 8);
          }
        }
      }

      goto LABEL_28;
    }

    v9 = *(v2 + 16);
    if (v9)
    {
      v23 = *(v2 + 16);
      goto LABEL_11;
    }

    *buf = 0xF000B07F49;
    v10 = *(v2 + 40);
    v9 = TLVCreateWithDataMixed();
    v23 = v9;
    if (!v9)
    {
      goto LABEL_22;
    }

    while (1)
    {
LABEL_11:
      if (*(v9 + 32) != 240)
      {
        goto LABEL_16;
      }

      v11 = *(v9 + 40);
      if (!v11 || !v11[1])
      {
        break;
      }

      v12 = **v11;
      if (!v12)
      {
        v4 = 1;
        goto LABEL_23;
      }

      if (v12 == 1)
      {
        v4 = 2;
        goto LABEL_23;
      }

LABEL_16:
      v9 = *(v9 + 24);
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    dispatch_get_specific(*v1);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i ERROR: no value !", "_getKeySize", 181);
    }

    dispatch_get_specific(*v1);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "_getKeySize";
      v25 = 1024;
      v26 = 181;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ERROR: no value !", buf, 0x12u);
    }

LABEL_22:
    v4 = 0;
LABEL_23:
    if (*(v2 + 16))
    {
      v15 = 1;
    }

    else
    {
      v15 = v23 == 0;
    }

    if (!v15)
    {
      TLVRelease();
    }

LABEL_28:
    if (v4 && v3)
    {
      break;
    }

    v2 = *(v2 + 24);
  }

  while (v2);
  if (v3 == 33280)
  {
    v16 = v4 == 2;
    v17 = 2;
    v18 = 4;
    goto LABEL_45;
  }

  if (v3 == 130)
  {
    result = 1;
    goto LABEL_48;
  }

  if (v3 != 128)
  {
LABEL_39:
    dispatch_get_specific(*v1);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i Unknow Key Usage 0x%x", "_getCertificateType", 259, v3);
    }

    dispatch_get_specific(*v1);
    v20 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446722;
      *&buf[4] = "_getCertificateType";
      v25 = 1024;
      v26 = 259;
      v27 = 1024;
      v28 = v3;
      _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknow Key Usage 0x%x", buf, 0x18u);
      result = 0;
    }

    goto LABEL_48;
  }

  v16 = v4 == 2;
  v17 = 3;
  v18 = 5;
LABEL_45:
  if (v16)
  {
    result = v18;
  }

  else
  {
    result = v17;
  }

LABEL_48:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297FA30D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = *MEMORY[0x29EDCA608];
  v4 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), a2, 128, 170, 3, 0, 0, 0);
  if (v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6 < 2)
    {
      v7 = 0;
LABEL_89:
      v68 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(4, "%s:%i Returned error: 0x%04x", "NFDriverSecureElementGetMigrationInfoJCOP", 423, v7);
      }

      dispatch_get_specific(*v68);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
        v81 = 1024;
        v82 = 423;
        v83 = 1024;
        *v84 = v7;
        _os_log_impl(&dword_297F97000, v70, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x", buf, 0x18u);
      }

      NFDataRelease();
      goto LABEL_94;
    }

    v12 = *v4;
    v7 = __rev16(*(*v5 + v6 - 2));
    if (v7 != 36864)
    {
      goto LABEL_89;
    }

    NFDataCreateWithBytes();
    NFDataRelease();
    v13 = TLVCreateWithData();
    NFDataRelease();
    if (v13)
    {
      if (*(v13 + 32) == 192)
      {
        v14 = *(v13 + 40);
        v15 = TLVCreateWithData();
        if (v15)
        {
          v16 = v15;
          v17 = MEMORY[0x29EDC9730];
          v18 = &dword_297F97000;
          v19 = "%{public}s:%i ISD sequence counter %d does not match migration update counter %d";
          v20 = "%s:%i ISD sequence counter %d does not match migration update counter %d";
          do
          {
            v21 = *(v16 + 32);
            if (v21 > 201)
            {
              if (v21 != 202)
              {
                if (v21 == 203)
                {
                  v25 = *(v16 + 40);
                  if (v25[1] != 2)
                  {
                    dispatch_get_specific(*v17);
                    v42 = NFLogGetLogger();
                    if (v42)
                    {
                      v42(4, "%s:%i Invalid length for 0xCB", "NFDriverSecureElementGetMigrationInfoJCOP", 488);
                    }

                    dispatch_get_specific(*v17);
                    v43 = NFSharedLogGetLogger();
                    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_87;
                    }

                    *buf = 136446466;
                    v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
                    v81 = 1024;
                    v82 = 488;
                    v31 = v18;
                    v32 = v43;
                    v33 = "%{public}s:%i Invalid length for 0xCB";
                    goto LABEL_57;
                  }

                  v26 = __rev16(**v25);
                  if (v26 <= 23129)
                  {
                    if (!v26)
                    {
                      v27 = 1;
                      goto LABEL_73;
                    }

                    if (v26 == 13260)
                    {
                      v27 = 4;
                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    switch(v26)
                    {
                      case 23130:
                        v27 = 3;
                        goto LABEL_73;
                      case 42405:
                        v27 = 2;
                        goto LABEL_73;
                      case 52275:
                        v27 = 5;
LABEL_73:
                        *(a3 + 1216) = v27;
                        goto LABEL_87;
                    }
                  }

                  dispatch_get_specific(*v17);
                  v51 = NFLogGetLogger();
                  if (v51)
                  {
                    v51(4, "%s:%i Invalid context 0x%02x", "NFDriverSecureElementGetMigrationInfoJCOP", 508, v26);
                  }

                  dispatch_get_specific(*v17);
                  v52 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_87;
                  }

                  *buf = 136446722;
                  v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
                  v81 = 1024;
                  v82 = 508;
                  v83 = 1024;
                  *v84 = v26;
                  v31 = v18;
                  v32 = v52;
                  v33 = "%{public}s:%i Invalid context 0x%02x";
LABEL_35:
                  v34 = 24;
LABEL_58:
                  _os_log_impl(v31, v32, OS_LOG_TYPE_ERROR, v33, buf, v34);
                  goto LABEL_87;
                }

LABEL_31:
                dispatch_get_specific(*v17);
                v28 = NFLogGetLogger();
                if (v28)
                {
                  v28(4, "%s:%i Unexpected element found in status container: 0x%04x", "NFDriverSecureElementGetMigrationInfoJCOP", 514, *(v16 + 32));
                }

                dispatch_get_specific(*v17);
                v29 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                v30 = *(v16 + 32);
                *buf = 136446722;
                v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
                v81 = 1024;
                v82 = 514;
                v83 = 1024;
                *v84 = v30;
                v31 = v18;
                v32 = v29;
                v33 = "%{public}s:%i Unexpected element found in status container: 0x%04x";
                goto LABEL_35;
              }

              v38 = *(v16 + 40);
              if (v38[1] != 4)
              {
                dispatch_get_specific(*v17);
                v46 = NFLogGetLogger();
                if (v46)
                {
                  v46(4, "%s:%i Invalid length for 0xCA", "NFDriverSecureElementGetMigrationInfoJCOP", 477);
                }

                dispatch_get_specific(*v17);
                v47 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                *buf = 136446466;
                v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
                v81 = 1024;
                v82 = 477;
                v31 = v18;
                v32 = v47;
                v33 = "%{public}s:%i Invalid length for 0xCA";
                goto LABEL_57;
              }

              v39 = *v38;
              *(a3 + 1246) = bswap32(*v39) >> 16;
              *(a3 + 1248) = bswap32(v39[1]) >> 16;
            }

            else
            {
              if (v21 != 200)
              {
                if (v21 == 201)
                {
                  v22 = *(v16 + 40);
                  if (v22[1] == 2)
                  {
                    v23 = __rev16(**v22);
                    if (v23 > 39834)
                    {
                      switch(v23)
                      {
                        case 39835:
                          v24 = 3;
                          goto LABEL_86;
                        case 42356:
                          v24 = 5;
                          goto LABEL_86;
                        case 47545:
                          v24 = 4;
                          goto LABEL_86;
                      }
                    }

                    else
                    {
                      switch(v23)
                      {
                        case 13107:
                          v24 = 6;
                          goto LABEL_86;
                        case 23130:
                          v24 = 1;
                          goto LABEL_86;
                        case 34695:
                          v24 = 2;
LABEL_86:
                          *(a3 + 1212) = v24;
                          goto LABEL_87;
                      }
                    }

                    dispatch_get_specific(*v17);
                    v53 = NFLogGetLogger();
                    if (v53)
                    {
                      v54 = v53;
                      v55 = __error();
                      v56 = v18;
                      v57 = v20;
                      v58 = v19;
                      v59 = strerror(*v55);
                      v60 = __error();
                      v78 = v59;
                      v19 = v58;
                      v20 = v57;
                      v18 = v56;
                      v54(3, "%s:%i %s errno=%d Unknown migration state: 0x%04x", "NFDriverSecureElementGetMigrationInfoJCOP", 470, v78, *v60, v23);
                    }

                    dispatch_get_specific(*v17);
                    v61 = NFSharedLogGetLogger();
                    if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_87;
                    }

                    v62 = __error();
                    v63 = v18;
                    v64 = v20;
                    v65 = v19;
                    v66 = strerror(*v62);
                    v67 = *__error();
                    *buf = 136447234;
                    v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
                    v81 = 1024;
                    v82 = 470;
                    v83 = 2080;
                    *v84 = v66;
                    v19 = v65;
                    v20 = v64;
                    v18 = v63;
                    *&v84[8] = 1024;
                    v85 = v67;
                    v86 = 1024;
                    v87 = v23;
                    v31 = v63;
                    v32 = v61;
                    v33 = "%{public}s:%i %s errno=%d Unknown migration state: 0x%04x";
                    v34 = 40;
                    goto LABEL_58;
                  }

                  dispatch_get_specific(*v17);
                  v40 = NFLogGetLogger();
                  if (v40)
                  {
                    v40(4, "%s:%i Invalid length for 0xC9", "NFDriverSecureElementGetMigrationInfoJCOP", 458);
                  }

                  dispatch_get_specific(*v17);
                  v41 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_87;
                  }

                  *buf = 136446466;
                  v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
                  v81 = 1024;
                  v82 = 458;
                  v31 = v18;
                  v32 = v41;
                  v33 = "%{public}s:%i Invalid length for 0xC9";
LABEL_57:
                  v34 = 18;
                  goto LABEL_58;
                }

                goto LABEL_31;
              }

              v35 = *(v16 + 40);
              if (v35[1] != 4)
              {
                dispatch_get_specific(*v17);
                v44 = NFLogGetLogger();
                if (v44)
                {
                  v44(4, "%s:%i Invalid length for 0xC8", "NFDriverSecureElementGetMigrationInfoJCOP", 441);
                }

                dispatch_get_specific(*v17);
                v45 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                *buf = 136446466;
                v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
                v81 = 1024;
                v82 = 441;
                v31 = v18;
                v32 = v45;
                v33 = "%{public}s:%i Invalid length for 0xC8";
                goto LABEL_57;
              }

              v36 = *v35;
              v37 = __rev16(*v36);
              if (v37 != *(a3 + 1242))
              {
                dispatch_get_specific(*v17);
                v48 = NFLogGetLogger();
                if (v48)
                {
                  v77 = *(a3 + 1242);
                  v48(4, v20);
                }

                dispatch_get_specific(*v17);
                v49 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                v50 = *(a3 + 1242);
                *buf = 136446978;
                v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
                v81 = 1024;
                v82 = 448;
                v83 = 1024;
                *v84 = v50;
                *&v84[4] = 1024;
                *&v84[6] = v37;
                v31 = v18;
                v32 = v49;
                v33 = v19;
                v34 = 30;
                goto LABEL_58;
              }

              *(a3 + 1244) = bswap32(v36[1]) >> 16;
            }

LABEL_87:
            v16 = *(v16 + 24);
          }

          while (v16);
        }

        TLVRelease();
      }

      else
      {
        v74 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v75 = NFLogGetLogger();
        if (v75)
        {
          v75(4, "%s:%i Could not find status container", "NFDriverSecureElementGetMigrationInfoJCOP", 523);
        }

        dispatch_get_specific(*v74);
        v76 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
          v81 = 1024;
          v82 = 523;
          _os_log_impl(&dword_297F97000, v76, OS_LOG_TYPE_ERROR, "%{public}s:%i Could not find status container", buf, 0x12u);
        }
      }

      TLVRelease();
      goto LABEL_94;
    }

    v72 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v73 = NFLogGetLogger();
    if (v73)
    {
      v73(3, "%s:%i Failed to parse TLV", "NFDriverSecureElementGetMigrationInfoJCOP", 528);
    }

    dispatch_get_specific(*v72);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
      v81 = 1024;
      v82 = 528;
      v11 = "%{public}s:%i Failed to parse TLV";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(4, "%s:%i Transceive failure", "NFDriverSecureElementGetMigrationInfoJCOP", 417);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v80 = "NFDriverSecureElementGetMigrationInfoJCOP";
      v81 = 1024;
      v82 = 417;
      v11 = "%{public}s:%i Transceive failure";
LABEL_8:
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
    }
  }

LABEL_94:
  v71 = *MEMORY[0x29EDCA608];
}

BOOL sub_297FA3B84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v94 = *MEMORY[0x29EDCA608];
  v85 = 0;
  v8 = NFDataCreateWithBytes();
  NFDriverSecureElementSelectWithOS(*a1, *(a1 + 16), 0, v8, &v85);
  NFDataRelease();
  switch(v85)
  {
    case 0x6614u:
      v13 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(5, "%s:%i JCOP OS Update Mode detected", "NFDriverSecureElementGetOSInfoJCOP", 587);
      }

      dispatch_get_specific(*v13);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v87 = "NFDriverSecureElementGetOSInfoJCOP";
        v88 = 1024;
        v89 = 587;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i JCOP OS Update Mode detected", buf, 0x12u);
      }

      *(a2 + 1256) = 1;
      v12 = (a2 + 1255);
      if (*(a2 + 1255))
      {
LABEL_24:
        if ((*v12 & 1) != 0 || *(a2 + 1256) == 1)
        {
          v20 = NFDataCreateWithBytes();
          if (!NFDriverSecureElementSelectWithOS(*a1, *(a1 + 16), 0, v20, &v85))
          {
            v26 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v27 = NFLogGetLogger();
            if (v27)
            {
              v27(3, "%s:%i Returned error: 0x%04x", "NFDriverSecureElementGetOSInfoJCOP", 618, v85);
            }

            dispatch_get_specific(*v26);
            v28 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            *buf = 136446722;
            v87 = "NFDriverSecureElementGetOSInfoJCOP";
            v88 = 1024;
            v89 = 618;
            v90 = 1024;
            *v91 = v85;
LABEL_38:
            _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x", buf, 0x18u);
LABEL_39:
            NFDataRelease();
            goto LABEL_40;
          }

          NFDataRelease();
          sub_297FA25B8(a1, a2);
        }

        v21 = sub_297FA2304(a1, 0, 254, 57120, 0);
        if (v21)
        {
          v22 = *(v21 + 8);
          if (v22 - 48 > 0xFFFFFFFFFFFFFFCELL)
          {
            memcpy((a2 + 1072), *v21, v22);
            *(a2 + 1072 + v22) = 0;
          }

          else
          {
            v23 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v24 = NFLogGetLogger();
            if (v24)
            {
              v24(4, "%s:%i Platform id too long: %ld", "NFDriverSecureElementGetOSInfoJCOP", 638, v22);
            }

            dispatch_get_specific(*v23);
            v25 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v87 = "NFDriverSecureElementGetOSInfoJCOP";
              v88 = 1024;
              v89 = 638;
              v90 = 2048;
              *v91 = v22;
              _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Platform id too long: %ld", buf, 0x1Cu);
            }
          }

          NFDataRelease();
        }

        else
        {
          v29 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v30 = NFLogGetLogger();
          if (v30)
          {
            v30(4, "%s:%i Failed to get platform identifier", "NFDriverSecureElementGetOSInfoJCOP", 633);
          }

          dispatch_get_specific(*v29);
          v31 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v87 = "NFDriverSecureElementGetOSInfoJCOP";
            v88 = 1024;
            v89 = 633;
            _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get platform identifier", buf, 0x12u);
          }
        }

        v32 = sub_297FA2304(a1, 0, 254, 57164, 0);
        if (!v32)
        {
          v46 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v47 = NFLogGetLogger();
          if (v47)
          {
            v47(4, "%s:%i Failed to get JCOP Version", "NFDriverSecureElementGetOSInfoJCOP", 654);
          }

          dispatch_get_specific(*v46);
          v48 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v87 = "NFDriverSecureElementGetOSInfoJCOP";
            v88 = 1024;
            v89 = 654;
            _os_log_impl(&dword_297F97000, v48, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get JCOP Version", buf, 0x12u);
          }

LABEL_62:
          v49 = sub_297FA2304(a1, 0, 254, 57121, 0);
          if (v49)
          {
            v50 = v49;
            v51 = *(v49 + 8);
            if (v51 < 0x19)
            {
              memcpy((a2 + 1152), *v49, v51);
              memcpy((a2 + 1176), *v50, v51);
            }

            else
            {
              v52 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v53 = NFLogGetLogger();
              if (v53)
              {
                v53(4, "%s:%i serial number too long: %ld", "NFDriverSecureElementGetOSInfoJCOP", 675, v51);
              }

              dispatch_get_specific(*v52);
              v54 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v87 = "NFDriverSecureElementGetOSInfoJCOP";
                v88 = 1024;
                v89 = 675;
                v90 = 2048;
                *v91 = v51;
                _os_log_impl(&dword_297F97000, v54, OS_LOG_TYPE_ERROR, "%{public}s:%i serial number too long: %ld", buf, 0x1Cu);
              }
            }

            NFDataRelease();
          }

          else
          {
            v55 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v56 = NFLogGetLogger();
            if (v56)
            {
              v56(4, "%s:%i Failed to get serial number", "NFDriverSecureElementGetOSInfoJCOP", 670);
            }

            dispatch_get_specific(*v55);
            v57 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v87 = "NFDriverSecureElementGetOSInfoJCOP";
              v88 = 1024;
              v89 = 670;
              _os_log_impl(&dword_297F97000, v57, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get serial number", buf, 0x12u);
            }
          }

          v58 = sub_297FA2304(a1, 0, 254, 57137, 0);
          if (!v58)
          {
            v63 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v64 = NFLogGetLogger();
            if (v64)
            {
              v64(4, "%s:%i Failed to get update info", "NFDriverSecureElementGetOSInfoJCOP", 690);
            }

            dispatch_get_specific(*v63);
            v65 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v87 = "NFDriverSecureElementGetOSInfoJCOP";
              v88 = 1024;
              v89 = 690;
              _os_log_impl(&dword_297F97000, v65, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get update info", buf, 0x12u);
            }

            goto LABEL_99;
          }

          v59 = v58;
          NFDataPrintAsHexString();
          v60 = v59[1];
          if (v60 < 2)
          {
            v66 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v67 = NFLogGetLogger();
            if (v67)
            {
              v67(3, "%s:%i Invalid update info length: %zu", "NFDriverSecureElementGetOSInfoJCOP", 715, v59[1]);
            }

            dispatch_get_specific(*v66);
            v68 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v69 = v59[1];
              *buf = 136446722;
              v87 = "NFDriverSecureElementGetOSInfoJCOP";
              v88 = 1024;
              v89 = 715;
              v90 = 2048;
              *v91 = v69;
              _os_log_impl(&dword_297F97000, v68, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid update info length: %zu", buf, 0x1Cu);
            }

            goto LABEL_98;
          }

          v61 = *v59;
          *(a2 + 1242) = bswap32(**v59) >> 16;
          if (v60 < 8)
          {
            if (v60 < 6)
            {
LABEL_98:
              NFDataRelease();
LABEL_99:
              if (*v12 & 1) != 0 || (*(a2 + 1256))
              {
LABEL_114:
                result = 1;
                goto LABEL_115;
              }

              v74 = NFDataCreateWithBytes();
              if (NFDriverSecureElementSelectWithOS(*a1, *(a1 + 16), 0, v74, &v85))
              {
                NFDataRelease();
                if (a4)
                {
                  a4(a1, a2);
                }

                else
                {
                  sub_297FA30D8(a1, 0, a2);
                }

                v83 = NFDataCreateWithBytes();
                NFDriverSecureElementSelectWithOS(*a1, *(a1 + 16), 0, v83, &v85);
                NFDataRelease();
                goto LABEL_114;
              }

              v75 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v76 = NFLogGetLogger();
              if (v76)
              {
                v76(3, "%s:%i Returned error: 0x%04x", "NFDriverSecureElementGetOSInfoJCOP", 727, v85);
              }

              dispatch_get_specific(*v75);
              v28 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_39;
              }

              *buf = 136446722;
              v87 = "NFDriverSecureElementGetOSInfoJCOP";
              v88 = 1024;
              v89 = 727;
              v90 = 1024;
              *v91 = v85;
              goto LABEL_38;
            }

            *(a2 + 1228) = __rev16(*(v61 + 2));
            *(a2 + 1232) = *(v61 + 4);
            v62 = *(v61 + 5);
          }

          else
          {
            *(a2 + 1228) = __rev16(*(v61 + 2));
            *(a2 + 1240) = bswap32(*(v61 + 4)) >> 16;
            *(a2 + 1232) = *(v61 + 6);
            v62 = *(v61 + 7);
          }

          *(a2 + 1252) = v62;
          goto LABEL_98;
        }

        v33 = v32[1];
        if (v33 < 2)
        {
LABEL_52:
          v39 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v40 = NFLogGetLogger();
          if (v40)
          {
            v40(3, "%s:%i Did not find version tag!", "NFDriverUpdateJCOPVersion", 546);
          }

          dispatch_get_specific(*v39);
          v41 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          *buf = 136446466;
          v87 = "NFDriverUpdateJCOPVersion";
          v88 = 1024;
          v89 = 546;
          v42 = "%{public}s:%i Did not find version tag!";
          v43 = v41;
          v44 = OS_LOG_TYPE_ERROR;
          v45 = 18;
        }

        else
        {
          v34 = 0;
          v35 = *v32;
          v36 = 1;
          while (1)
          {
            v37 = *(v35 + v36);
            v38 = v34 + v37 + 2;
            if (*(v35 + v34) == 133)
            {
              break;
            }

            v36 = v34 + v37 + 3;
            v34 += v37 + 2;
            if (v38 + 1 >= v33)
            {
              goto LABEL_52;
            }
          }

          if (v37 != 3 || v38 > v33)
          {
            v71 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v72 = NFLogGetLogger();
            if (v72)
            {
              v72(3, "%s:%i Invalid version tag length %d", "NFDriverUpdateJCOPVersion", 553, v37);
            }

            dispatch_get_specific(*v71);
            v73 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            *buf = 136446722;
            v87 = "NFDriverUpdateJCOPVersion";
            v88 = 1024;
            v89 = 553;
            v90 = 1024;
            *v91 = v37;
            v42 = "%{public}s:%i Invalid version tag length %d";
            v43 = v73;
            v44 = OS_LOG_TYPE_ERROR;
            v45 = 24;
          }

          else
          {
            *(a2 + 1200) = *(v35 + v34 + 2);
            *(a2 + 1201) = *(v35 + v34 + 3);
            *(a2 + 1202) = *(v35 + v34 + 4);
            v77 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v78 = NFLogGetLogger();
            if (v78)
            {
              v78(6, "%s:%i major = %d, minor %d, build = %d", "NFDriverUpdateJCOPVersion", 562, *(a2 + 1200), *(a2 + 1201), *(a2 + 1202));
            }

            dispatch_get_specific(*v77);
            v79 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_57;
            }

            v80 = *(a2 + 1200);
            v81 = *(a2 + 1201);
            v82 = *(a2 + 1202);
            *buf = 136447234;
            v87 = "NFDriverUpdateJCOPVersion";
            v88 = 1024;
            v89 = 562;
            v90 = 1024;
            *v91 = v80;
            *&v91[4] = 1024;
            *&v91[6] = v81;
            v92 = 1024;
            v93 = v82;
            v42 = "%{public}s:%i major = %d, minor %d, build = %d";
            v43 = v79;
            v44 = OS_LOG_TYPE_DEFAULT;
            v45 = 36;
          }
        }

        _os_log_impl(&dword_297F97000, v43, v44, v42, buf, v45);
LABEL_57:
        NFDataRelease();
        goto LABEL_62;
      }

LABEL_15:
      sub_297FA25B8(a1, a2);
      if ((*(a2 + 1255) & 1) == 0 && (*(a2 + 1256) & 1) == 0)
      {
        if (a3)
        {
          a3(a1, a2);
        }

        else
        {
          sub_297FA27E0(a1, a2);
        }
      }

      goto LABEL_24;
    case 0x9000u:
      v12 = (a2 + 1255);
      *(a2 + 1255) = 0;
      goto LABEL_15;
    case 0x66A5u:
      v9 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v10 = NFLogGetLogger();
      if (v10)
      {
        v10(5, "%s:%i Restricted Mode detected", "NFDriverSecureElementGetOSInfoJCOP", 583);
      }

      dispatch_get_specific(*v9);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v87 = "NFDriverSecureElementGetOSInfoJCOP";
        v88 = 1024;
        v89 = 583;
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Restricted Mode detected", buf, 0x12u);
      }

      v12 = (a2 + 1255);
      *(a2 + 1255) = 1;
      goto LABEL_24;
  }

  v16 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v17(3, "%s:%i Returned error: 0x%04x", "NFDriverSecureElementGetOSInfoJCOP", 591, v85);
  }

  dispatch_get_specific(*v16);
  v18 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    v87 = "NFDriverSecureElementGetOSInfoJCOP";
    v88 = 1024;
    v89 = 591;
    v90 = 1024;
    *v91 = v85;
    _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x", buf, 0x18u);
LABEL_40:
    result = 0;
  }

LABEL_115:
  v84 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FA4A00(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v8 = 0;
  result = sub_297FA2304(a1, 0, 254, 57129, &v8);
  if (v8 == 26277)
  {
    v3 = NFDataCreateWithBytes();
    if (NFDriverSecureElementSelectWithOS(*a1, *(a1 + 16), 0, v3, &v8))
    {
      NFDataRelease();
      result = sub_297FA2304(a1, 0, 254, 57129, &v8);
    }

    else
    {
      v4 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i SELECT returned error: 0x%04x", "NFDriverSecureElementGetOSUpdateLog", 766, v8);
      }

      dispatch_get_specific(*v4);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v10 = "NFDriverSecureElementGetOSUpdateLog";
        v11 = 1024;
        v12 = 766;
        v13 = 1024;
        v14 = v8;
        _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i SELECT returned error: 0x%04x", buf, 0x18u);
      }

      NFDataRelease();
      result = 0;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_297FA4B94(uint64_t a1, _BYTE *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v31 = -1;
  if (a2)
  {
    *a2 = 0;
  }

  v4 = NFDataCreateWithBytes();
  if (v4)
  {
    v5 = NFDriverSecureElementSelectWithOS(*a1, *(a1 + 16), 0, v4, &v31);
    NFDataRelease();
    if (v5)
    {
      v6 = sub_297FA2304(a1, 0, 254, 57148, 0);
      if (v6)
      {
        v7 = v6;
        if (*(v6 + 8) == 1)
        {
          if (**v6 != 90)
          {
LABEL_29:
            NFDataRelease();
            result = 1;
            goto LABEL_30;
          }

          if (a2)
          {
            *a2 = 1;
            goto LABEL_29;
          }

          v28 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(3, "%s:%i AC log exists, but supplied output parameter is NULL.", "GetPresenceOfAttackLog", 818);
          }

          dispatch_get_specific(*v28);
          v30 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          *buf = 136446466;
          v33 = "GetPresenceOfAttackLog";
          v34 = 1024;
          v35 = 818;
          v24 = "%{public}s:%i AC log exists, but supplied output parameter is NULL.";
          v25 = v30;
          v26 = 18;
        }

        else
        {
          v20 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v21 = NFLogGetLogger();
          if (v21)
          {
            v21(3, "%s:%i Bad response APDU length %d", "GetPresenceOfAttackLog", 824, *(v7 + 8));
          }

          dispatch_get_specific(*v20);
          v22 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          v23 = *(v7 + 8);
          *buf = 136446722;
          v33 = "GetPresenceOfAttackLog";
          v34 = 1024;
          v35 = 824;
          v36 = 1024;
          v37 = v23;
          v24 = "%{public}s:%i Bad response APDU length %d";
          v25 = v22;
          v26 = 24;
        }

        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
        goto LABEL_29;
      }

      v18 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v19(3, "%s:%i Unable to get presence of AC log", "GetPresenceOfAttackLog", 806);
      }

      dispatch_get_specific(*v18);
      v10 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v33 = "GetPresenceOfAttackLog";
        v34 = 1024;
        v35 = 806;
        v12 = "%{public}s:%i Unable to get presence of AC log";
        goto LABEL_22;
      }
    }

    else
    {
      v13 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v14(3, "%s:%i SELECT returned error: 0x%04x. Cannot query presence of attack log without selecting ISD", "GetPresenceOfAttackLog", 799, v31);
      }

      dispatch_get_specific(*v13);
      v15 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446722;
        v33 = "GetPresenceOfAttackLog";
        v34 = 1024;
        v35 = 799;
        v36 = 1024;
        v37 = v31;
        v12 = "%{public}s:%i SELECT returned error: 0x%04x. Cannot query presence of attack log without selecting ISD";
        v16 = v15;
        v17 = 24;
LABEL_23:
        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, v12, buf, v17);
        result = 0;
      }
    }
  }

  else
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i Unable to create aid needed for selecting ISD", "GetPresenceOfAttackLog", 792);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v33 = "GetPresenceOfAttackLog";
      v34 = 1024;
      v35 = 792;
      v12 = "%{public}s:%i Unable to create aid needed for selecting ISD";
LABEL_22:
      v16 = v10;
      v17 = 18;
      goto LABEL_23;
    }
  }

LABEL_30:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FA4FE8(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = NFDataCreateWithBytes();
  v5 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), a2, 128, 202, 0, 254, 0, v4);
  NFDataRelease();
  v6 = 0;
  v7 = v5[1];
  if (v7 < 2 || (v6 = __rev16(*(*v5 + v7 - 2)), v6 != 36864))
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Returned error: 0x%04x", "UnlockRequestInfo", 855, v6);
    }

    dispatch_get_specific(*v13);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136446722;
    v20 = "UnlockRequestInfo";
    v21 = 1024;
    v22 = 855;
    v23 = 1024;
    v24 = v6;
    v12 = "%{public}s:%i Returned error: 0x%04x";
    goto LABEL_12;
  }

  if (v7 > 6)
  {
    v18 = *v5 + 5;
    v15 = NFDataCreateWithBytes();
    goto LABEL_14;
  }

  v8 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v9 = NFLogGetLogger();
  if (v9)
  {
    v9(3, "%s:%i rapdu length too short %d", "UnlockRequestInfo", 863, *(v5 + 4));
  }

  dispatch_get_specific(*v8);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(v5 + 4);
    *buf = 136446722;
    v20 = "UnlockRequestInfo";
    v21 = 1024;
    v22 = 863;
    v23 = 1024;
    v24 = v11;
    v12 = "%{public}s:%i rapdu length too short %d";
LABEL_12:
    _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x18u);
  }

LABEL_13:
  v15 = 0;
LABEL_14:
  NFDataRelease();
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void NFDriverUnloadStackAndLeaveHWEnabled(uint64_t a1, uint8_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i isLoaded=%d", "NFDriverUnloadStackAndLeaveHWEnabled", 93, *(a1 + 57));
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 57);
    *buf = 136446722;
    *&buf[4] = "NFDriverUnloadStackAndLeaveHWEnabled";
    *&buf[12] = 1024;
    *&buf[14] = 93;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i isLoaded=%d", buf, 0x18u);
  }

  if ((*(a1 + 56) & 1) == 0 && (*(*(a1 + 24) + 592) & 6) != 0)
  {
    v31[0] = -16192608;
    *(v31 + 7) = -1;
    memset(buf, 0, 44);
    NFDriverGetControllerInfo(a1, buf);
    if (*&buf[4] <= 0xDu)
    {
      v24 = sub_297FA02E4(0xBu, v31);
      v8 = sub_297FA0380(a1, 37025, v24, 0);
      v9 = sub_297F9F694(v8);
      dispatch_get_specific(*v4);
      v10 = NFLogGetLogger();
      if (v10)
      {
        v10(6, "%s:%i Nuked SE gate info : %llu", "_NFDriverNukeSEGateInfo", 84, v9);
      }

      dispatch_get_specific(*v4);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 136446722;
        v26 = "_NFDriverNukeSEGateInfo";
        v27 = 1024;
        v28 = 84;
        v29 = 2048;
        v30 = v9;
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Nuked SE gate info : %llu", v25, 0x1Cu);
      }

      sub_297F9FBDC(v8);
      sub_297FA0714(&v24);
    }
  }

  sub_297FB8080(a1);
  if (*(a1 + 57))
  {
    *(a1 + 57) = 0;
    v12 = sub_297F9DC04();
    pthread_mutex_lock((v12[3] + 8));
    v13 = v12[3];
    ++*v13;
    pthread_mutex_unlock((v13 + 8));
    v14 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FA56B4;
    *&buf[24] = &unk_29EE876B0;
    buf[48] = a2;
    *&buf[32] = a1;
    *&buf[40] = v12;
    dispatch_async_and_wait(v14, buf);
    if (sub_297F9F694(v12))
    {
      dispatch_get_specific(*v4);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i status=0x%04llX", "NFDriverUnloadStackAndLeaveHWEnabled", 119, *v12);
      }

      dispatch_get_specific(*v4);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *v12;
        *buf = 136446722;
        *&buf[4] = "NFDriverUnloadStackAndLeaveHWEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 119;
        *&buf[18] = 2048;
        *&buf[20] = v17;
        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
      }

      v18 = *(*(a1 + 24) + 560);
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_297FB7B1C;
      *&buf[24] = &unk_29EE880F8;
      *&buf[32] = a1;
      dispatch_async(v18, buf);
    }

    sub_297F9FBDC(v12);
    dispatch_semaphore_signal(*(*(a1 + 24) + 552));
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    v19 = *(a1 + 24);
    *(v19 + 763) = 0;
    v20 = *(v19 + 528);
    if (v20)
    {
      free(v20);
      v19 = *(a1 + 24);
    }

    *(v19 + 528) = 0;
    v21 = *(v19 + 536);
    if (v21)
    {
      free(v21);
      v19 = *(a1 + 24);
    }

    *(v19 + 536) = 0;
    v22 = *(v19 + 544);
    if (v22)
    {
      free(v22);
      v19 = *(a1 + 24);
    }

    *(v19 + 544) = 0;
  }

  else
  {
    sub_297FA6EF4(a1, 0);
    dispatch_semaphore_signal(*(*(a1 + 24) + 552));
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_297FA56B4(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(*(*(a1 + 32) + 24) + 576);
  v3 = phLibNfc_RemoteDev_NtfUnregister();
  v4 = MEMORY[0x29EDC9730];
  if (v3)
  {
    v5 = v3;
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i status=0x%04X", "_Async_NFDriverUnloadStack_block_invoke", 44, v5);
    }

    dispatch_get_specific(*v4);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "_Async_NFDriverUnloadStack_block_invoke";
      v23 = 1024;
      v24 = 44;
      v25 = 1024;
      v26 = v5;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }

  v8 = *(*(*(a1 + 32) + 24) + 576);
  v9 = phLibNfc_SE_NtfUnregister();
  if (v9)
  {
    v10 = v9;
    dispatch_get_specific(*v4);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(4, "%s:%i status=0x%04X", "_Async_NFDriverUnloadStack_block_invoke", 48, v10);
    }

    dispatch_get_specific(*v4);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "_Async_NFDriverUnloadStack_block_invoke";
      v23 = 1024;
      v24 = 48;
      v25 = 1024;
      v26 = v10;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }

  v13 = *(a1 + 40);
  v14 = *(*(*(a1 + 32) + 24) + 576);
  v15 = *(a1 + 48);
  v16 = phLibNfc_Mgt_DeInitialize();
  if (v16 != 13)
  {
    v17 = v16;
    dispatch_get_specific(*v4);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v18(3, "%s:%i status=0x%04X", "_Async_NFDriverUnloadStack_block_invoke", 57, v17);
    }

    dispatch_get_specific(*v4);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "_Async_NFDriverUnloadStack_block_invoke";
      v23 = 1024;
      v24 = 57;
      v25 = 1024;
      v26 = v17;
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v17);
    sub_297F9FBDC(*(a1 + 40));
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_297FA5964(uint64_t a1, void **a2, unsigned int a3)
{
  phTmlNfc_IoCtl();
  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

uint64_t NFDriverLoadStack(uint64_t a1, unsigned int a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 56);
  v5 = NFProductAllowsWiredInDLMode();
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i isLoaded=%d flags = 0x%x", "NFDriverLoadStack", 407, *(a1 + 57), a2);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 57);
    *buf = 136446978;
    *&buf[4] = "NFDriverLoadStack";
    *&buf[12] = 1024;
    *&buf[14] = 407;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *&buf[24] = 1024;
    *&buf[26] = a2;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i isLoaded=%d flags = 0x%x", buf, 0x1Eu);
  }

  if (*(a1 + 57))
  {
    v10 = 0;
    goto LABEL_97;
  }

  if (qword_2A18BD378 != -1)
  {
    dispatch_once(&qword_2A18BD378, &unk_2A1E97DF8);
  }

  v11 = *(a1 + 24);
  *(v11 + 592) = a2;
  v12 = *(v11 + 584);
  v13 = *(v11 + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FA6514;
  block[3] = &unk_29EE876F0;
  block[4] = v12;
  block[5] = a1;
  dispatch_async_and_wait(v13, block);
  v14 = v5 & (a2 >> 4);
  if (v14 == 1)
  {
    dispatch_get_specific(*v6);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(6, "%s:%i Flags requested DL mode only.", "NFDriverLoadStack", 461);
    }

    dispatch_get_specific(*v6);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverLoadStack";
      *&buf[12] = 1024;
      *&buf[14] = 461;
      _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Flags requested DL mode only.", buf, 0x12u);
    }

    goto LABEL_14;
  }

  v18 = sub_297FA6688(a1);
  if (!v18)
  {
    v17 = 1;
    goto LABEL_28;
  }

  v19 = v18;
  if (!v5 || v18 != 14 && v18 != 2)
  {
    dispatch_get_specific(*v6);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Stack load failed with 0x%x", "NFDriverLoadStack", 471, v19);
    }

    dispatch_get_specific(*v6);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "NFDriverLoadStack";
      *&buf[12] = 1024;
      *&buf[14] = 471;
      *&buf[18] = 1024;
      *&buf[20] = v19;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Stack load failed with 0x%x", buf, 0x18u);
    }

    goto LABEL_87;
  }

  dispatch_get_specific(*v6);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v20(3, "%s:%i Stack load failed with 0x%x, continuing in DL mode.", "NFDriverLoadStack", 468, v19);
  }

  dispatch_get_specific(*v6);
  v21 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    v17 = 24;
LABEL_28:
    v56 = v17;
    goto LABEL_29;
  }

  *buf = 136446722;
  *&buf[4] = "NFDriverLoadStack";
  *&buf[12] = 1024;
  *&buf[14] = 468;
  *&buf[18] = 1024;
  *&buf[20] = v19;
  v56 = 24;
  _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Stack load failed with 0x%x, continuing in DL mode.", buf, 0x18u);
LABEL_29:
  v24 = 0;
  v25 = 0;
  v58 = *(a1 + 57);
  while (v24 < 7)
  {
    v26 = &unk_2A1E97E18 + 24 * v25;
    v27 = *v26;
    if ((*v26 & 1) != 0 && (*(a1 + 58) & 1) != 0 || (v27 & 8) != 0 && !NFProductHasNFCRadio() || (v27 & 0x10) != 0 && (*(*(a1 + 24) + 592) & 4) != 0 || (v27 & 0x20) != 0 && (*(*(a1 + 24) + 592) & 2) != 0 || (v27 & 0x100) == 0 && (v58 & 1) == 0)
    {
      dispatch_get_specific(*v6);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v28(6, "%s:%i Skipping step %d", "_NFDriverLoadStackSteps", 340, v25);
      }

      dispatch_get_specific(*v6);
      v29 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 136446722;
      *&buf[4] = "_NFDriverLoadStackSteps";
      *&buf[12] = 1024;
      *&buf[14] = 340;
      *&buf[18] = 1024;
      *&buf[20] = v25;
      v30 = v29;
      goto LABEL_45;
    }

    if ((v27 & 6) == 0)
    {
      dispatch_get_specific(*v6);
      v32 = NFLogGetLogger();
      if (v32)
      {
        v32(3, "%s:%i Error : function at index %d will never run", "_NFDriverLoadStackSteps", 344, v25);
      }

      dispatch_get_specific(*v6);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "_NFDriverLoadStackSteps";
        *&buf[12] = 1024;
        *&buf[14] = 344;
        *&buf[18] = 1024;
        *&buf[20] = v25;
        _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : function at index %d will never run", buf, 0x18u);
      }
    }

    if (*(a1 + 56) == 1)
    {
      if ((v27 & 4) == 0)
      {
        goto LABEL_62;
      }
    }

    else if ((v27 & 2) == 0)
    {
LABEL_62:
      dispatch_get_specific(*v6);
      v41 = NFLogGetLogger();
      if (v41)
      {
        v41(6, "%s:%i Skipping step %d", "_NFDriverLoadStackSteps", 349, v25);
      }

      dispatch_get_specific(*v6);
      v42 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 136446722;
      *&buf[4] = "_NFDriverLoadStackSteps";
      *&buf[12] = 1024;
      *&buf[14] = 349;
      *&buf[18] = 1024;
      *&buf[20] = v25;
      v30 = v42;
LABEL_45:
      _os_log_impl(&dword_297F97000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Skipping step %d", buf, 0x18u);
      goto LABEL_46;
    }

    v34 = (*(v26 + 1))(a1);
    if (!v34)
    {
      goto LABEL_46;
    }

    v19 = v34;
    v57 = v14;
    v35 = *(v26 + 2);
    dispatch_get_specific(*v6);
    v36 = NFLogGetLogger();
    if (v35)
    {
      if (v36)
      {
        v36(3, "%s:%i %s : 0x%x", "_NFDriverLoadStackSteps", 367, v35, v19);
      }

      dispatch_get_specific(*v6);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "_NFDriverLoadStackSteps";
        *&buf[12] = 1024;
        *&buf[14] = 367;
        *&buf[18] = 2080;
        *&buf[20] = v35;
        *&buf[28] = 1024;
        *&buf[30] = v19;
        v38 = v37;
        v39 = "%{public}s:%i %s : 0x%x";
        v40 = 34;
LABEL_70:
        _os_log_impl(&dword_297F97000, v38, OS_LOG_TYPE_ERROR, v39, buf, v40);
      }
    }

    else
    {
      if (v36)
      {
        v36(3, "%s:%i Step %d error : 0x%x", "_NFDriverLoadStackSteps", 369, v25, v19);
      }

      dispatch_get_specific(*v6);
      v43 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "_NFDriverLoadStackSteps";
        *&buf[12] = 1024;
        *&buf[14] = 369;
        *&buf[18] = 1024;
        *&buf[20] = v25;
        *&buf[24] = 1024;
        *&buf[26] = v19;
        v38 = v43;
        v39 = "%{public}s:%i Step %d error : 0x%x";
        v40 = 30;
        goto LABEL_70;
      }
    }

    if ((v27 & 0x80) != 0 && v19 == 13)
    {
      dispatch_get_specific(*v6);
      v44 = NFLogGetLogger();
      v14 = v57;
      if (v44)
      {
        v44(3, "%s:%i Error at step %d, re-initializing", "_NFDriverLoadStackSteps", 372, v25);
      }

      dispatch_get_specific(*v6);
      v45 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "_NFDriverLoadStackSteps";
        *&buf[12] = 1024;
        *&buf[14] = 372;
        *&buf[18] = 1024;
        *&buf[20] = v25;
        _os_log_impl(&dword_297F97000, v45, OS_LOG_TYPE_ERROR, "%{public}s:%i Error at step %d, re-initializing", buf, 0x18u);
      }

      NFDriverUnloadStackAndLeaveHWEnabled(a1, 0);
      v46 = sub_297FA6688(a1);
      if (v46)
      {
        v19 = v46;
        dispatch_get_specific(*v6);
        v55 = NFLogGetLogger();
        if (v55)
        {
          v55(3, "%s:%i Re-init failed. Bailing.", "_NFDriverLoadStackSteps", 376);
        }

        dispatch_get_specific(*v6);
        v48 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFDriverLoadStackSteps";
          *&buf[12] = 1024;
          *&buf[14] = 376;
          v49 = "%{public}s:%i Re-init failed. Bailing.";
          goto LABEL_85;
        }

        goto LABEL_86;
      }

      ++v24;
      v25 = -1;
    }

    else
    {
      v14 = v57;
      if ((v27 & 0x40) == 0)
      {
        goto LABEL_86;
      }
    }

LABEL_46:
    if (v25++ >= 23)
    {
      v10 = v56;
      if (*(a1 + 57))
      {
        v51 = 0;
      }

      else
      {
        v51 = v56;
      }

      if ((v14 | *(a1 + 57)))
      {
        v10 = v51;
      }

      else
      {
        v52 = *(*(a1 + 24) + 560);
        *buf = MEMORY[0x29EDCA5F8];
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_297FB7B1C;
        *&buf[24] = &unk_29EE880F8;
        *&buf[32] = a1;
        dispatch_async(v52, buf);
      }

      goto LABEL_97;
    }
  }

  dispatch_get_specific(*v6);
  v47 = NFLogGetLogger();
  if (v47)
  {
    v47(3, "%s:%i Max retries reached.", "_NFDriverLoadStackSteps", 328);
  }

  dispatch_get_specific(*v6);
  v48 = NFSharedLogGetLogger();
  v19 = 16;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "_NFDriverLoadStackSteps";
    *&buf[12] = 1024;
    *&buf[14] = 328;
    v49 = "%{public}s:%i Max retries reached.";
    v19 = 16;
LABEL_85:
    _os_log_impl(&dword_297F97000, v48, OS_LOG_TYPE_ERROR, v49, buf, 0x12u);
  }

LABEL_86:
  v10 = v19;
  if (v14)
  {
    goto LABEL_88;
  }

LABEL_87:
  v50 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FB7B1C;
  *&buf[24] = &unk_29EE880F8;
  *&buf[32] = a1;
  dispatch_async(v50, buf);
  v10 = v19;
LABEL_88:
  if (*(a1 + 56) == 1)
  {
    NFDriverNFCCPowerOff(a1);
  }

  NFDriverUnloadStackAndLeaveHWEnabled(a1, 0);
LABEL_97:
  v53 = *MEMORY[0x29EDCA608];
  return v10;
}

void sub_297FA6428()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Running build from (B&I) Stockholm_Base-361.6", "NFDriverLoadStack_block_invoke", 419);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "NFDriverLoadStack_block_invoke";
    v6 = 1024;
    v7 = 419;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Running build from (B&I) Stockholm_Base-361.6", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_297FA6514(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32((*(a1 + 32) & 0x40000000) == 0), 0x1FuLL)), 0x100000002, 0x400000004);
  v2 = *(*(*(a1 + 40) + 24) + 576);
  v3 = phLibNfc_Mgt_ConfigureMwLogging();
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Stack logging failed with 0x%x", "NFDriverLoadStack_block_invoke", 445, v4);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "NFDriverLoadStack_block_invoke";
      v11 = 1024;
      v12 = 445;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Stack logging failed with 0x%x", buf, 0x18u);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297FA6688(uint64_t a1)
{
  v44 = *MEMORY[0x29EDCA608];
  v2 = 1;
  while (1)
  {
    v3 = sub_297F9DC04();
    pthread_mutex_lock((v3[3] + 8));
    v4 = v3[3];
    ++*v4;
    pthread_mutex_unlock((v4 + 8));
    v5 = *(*(a1 + 24) + 560);
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 0x40000000;
    *&block[16] = sub_297FA7458;
    *&block[24] = &unk_29EE87730;
    v42 = a1;
    v43 = v3;
    dispatch_async_and_wait(v5, block);
    v6 = sub_297F9F694(v3);
    if (!v6)
    {
      v11 = 0;
      v19 = 0;
      goto LABEL_53;
    }

    if (*(*(a1 + 24) + 764) == 1)
    {
      v7 = *v3;
      NFDriverGetStackBreadcrumb(a1);
      postAnalyticsMiddlewareExceptionEvent();
    }

    v8 = *v3;
    if (*v3 != 67)
    {
      break;
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i eSE power-on failed! (%d/%d)", "_NFDriverLoadMW", 244, v2, 3);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *block = 136446978;
      *&block[4] = "_NFDriverLoadMW";
      *&block[12] = 1024;
      *&block[14] = 244;
      *&block[18] = 1024;
      *&block[20] = v2;
      *&block[24] = 1024;
      *&block[26] = 3;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i eSE power-on failed! (%d/%d)", block, 0x1Eu);
    }

    if (++v2 == 4)
    {
      v11 = 0;
LABEL_52:
      v19 = 1;
      goto LABEL_53;
    }
  }

  if (v8 <= 136)
  {
    if ((v8 - 128) < 2)
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v12(3, "%s:%i Incompatible firmware !", "_NFDriverLoadMW", 249);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 249;
        v14 = "%{public}s:%i Incompatible firmware !";
        v15 = v13;
        v16 = 18;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v8 == 136)
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v20(3, "%s:%i Error 0x%x using API %d - requires a new firmware !", "_NFDriverLoadMW", 271, *(v3 + 6), *(v3 + 2));
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *(v3 + 6);
        v23 = *(v3 + 2);
        *block = 136446978;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 271;
        *&block[18] = 1024;
        *&block[20] = v22;
        *&block[24] = 1024;
        *&block[26] = v23;
        v14 = "%{public}s:%i Error 0x%x using API %d - requires a new firmware !";
        v15 = v21;
        v16 = 30;
LABEL_33:
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, v14, block, v16);
      }

LABEL_34:
      v11 = 0;
      v19 = 2;
      goto LABEL_53;
    }

    goto LABEL_47;
  }

  switch(v8)
  {
    case 137:
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i Error 0x%x using API %d - requires a reboot !", "_NFDriverLoadMW", 275, *(v3 + 6), *(v3 + 2));
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *(v3 + 6);
        v27 = *(v3 + 2);
        *block = 136446978;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 275;
        *&block[18] = 1024;
        *&block[20] = v26;
        *&block[24] = 1024;
        *&block[26] = v27;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Error 0x%x using API %d - requires a reboot !", block, 0x1Eu);
      }

      v28 = *(*(a1 + 24) + 576);
      v29 = phTmlNfc_IoCtl();
      if (v29)
      {
        v38 = v29;
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v39(3, "%s:%i Error 0x%x powering off !", "_NFDriverLoadMW", 282, v38);
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v40 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *block = 136446722;
          *&block[4] = "_NFDriverLoadMW";
          *&block[12] = 1024;
          *&block[14] = 282;
          *&block[18] = 1024;
          *&block[20] = v38;
          _os_log_impl(&dword_297F97000, v40, OS_LOG_TYPE_ERROR, "%{public}s:%i Error 0x%x powering off !", block, 0x18u);
        }

        __assert_rtn("_NFDriverLoadMW", "NFDriverStackInit.c", 283, "NFCSTATUS_OK == ioctlStatus");
      }

      v11 = 0;
      v19 = 16;
      break;
    case 153:
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v30(3, "%s:%i DL session already open.", "_NFDriverLoadMW", 253);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 253;
        _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i DL session already open.", block, 0x12u);
      }

      v11 = 0;
      v19 = 14;
      break;
    case 180:
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v17(3, "%s:%i Follower ID unresponsive!", "_NFDriverLoadMW", 264);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 264;
        _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Follower ID unresponsive!", block, 0x12u);
      }

      if (NFIsInternalBuild() && (*(a1 + 56) & 1) == 0)
      {
        v19 = 17;
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
        {
          *block = 0;
          _os_log_fault_impl(&dword_297F97000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "Stockholm SPMI unresponsive", block, 2u);
        }

        v11 = 0;
      }

      else
      {
        v11 = 0;
        v19 = 17;
      }

      break;
    default:
LABEL_47:
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v32 = NFLogGetLogger();
      if (v32)
      {
        v32(3, "%s:%i status=0x%04llX", "_NFDriverLoadMW", 287, *v3);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *v3;
        *block = 136446722;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 287;
        *&block[18] = 2048;
        *&block[20] = v34;
        _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", block, 0x1Cu);
      }

      v11 = 1;
      goto LABEL_52;
  }

LABEL_53:
  sub_297F9FBDC(v3);
  if (*(*(a1 + 24) + 764) == 1)
  {
    resetCALoadStackExceptionCount();
  }

  if (!v11)
  {
    if (v6)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v35 = sub_297FB7E3C(a1);
  if (v35)
  {
    v19 = 16;
  }

  else
  {
    v19 = v19;
  }

  if (!v6 && !v35)
  {
LABEL_61:
    v19 = 0;
    *(a1 + 57) = 1;
  }

LABEL_62:
  v36 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t sub_297FA6EF4(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = sub_297F9DC04();
  pthread_mutex_lock((v4[3] + 8));
  v5 = v4[3];
  ++*v5;
  pthread_mutex_unlock((v5 + 8));
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    if (a2)
    {
      v8 = "Enabling";
    }

    else
    {
      v8 = "Deactivating";
    }

    Logger(6, "%s:%i %s SE in DL mode", "_NFDriverConfigureSEInDownload", 884, v8);
  }

  dispatch_get_specific(*v6);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v10 = "Enabling";
    }

    else
    {
      v10 = "Deactivating";
    }

    *buf = 136446722;
    v26 = "_NFDriverConfigureSEInDownload";
    v27 = 1024;
    v28 = 884;
    v29 = 2080;
    v30 = v10;
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s SE in DL mode", buf, 0x1Cu);
  }

  v11 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FA7248;
  block[3] = &unk_29EE87710;
  v24 = a2;
  block[4] = a1;
  block[5] = v4;
  dispatch_async_and_wait(v11, block);
  v12 = sub_297F9F694(v4);
  dispatch_get_specific(*v6);
  v13 = NFLogGetLogger();
  if (v12)
  {
    if (v13)
    {
      if (a2)
      {
        v14 = "enable";
      }

      else
      {
        v14 = "deactivate";
      }

      v13(3, "%s:%i Failed to %s SE in DL mode.", "_NFDriverConfigureSEInDownload", 904, v14);
    }

    dispatch_get_specific(*v6);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (a2)
      {
        v16 = "enable";
      }

      else
      {
        v16 = "deactivate";
      }

      *buf = 136446722;
      v26 = "_NFDriverConfigureSEInDownload";
      v27 = 1024;
      v28 = 904;
      v29 = 2080;
      v30 = v16;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to %s SE in DL mode.", buf, 0x1Cu);
    }

    v17 = 1;
  }

  else
  {
    if (v13)
    {
      if (a2)
      {
        v18 = "Enabled";
      }

      else
      {
        v18 = "deactivated";
      }

      v13(6, "%s:%i SE %s in download mode", "_NFDriverConfigureSEInDownload", 907, v18);
    }

    dispatch_get_specific(*v6);
    v19 = NFSharedLogGetLogger();
    v17 = 0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v20 = "Enabled";
      }

      else
      {
        v20 = "deactivated";
      }

      *buf = 136446722;
      v26 = "_NFDriverConfigureSEInDownload";
      v27 = 1024;
      v28 = 907;
      v29 = 2080;
      v30 = v20;
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE %s in download mode", buf, 0x1Cu);
      v17 = 0;
    }
  }

  sub_297F9FBDC(v4);
  v21 = *MEMORY[0x29EDCA608];
  return v17;
}

void sub_297FA7248(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  *(a1 + 48);
  v4 = phLibNfc_Mgt_eSeCfgDnldMode();
  if (v4 != 13)
  {
    v5 = v4;
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_NFDriverConfigureSEInDownload_block_invoke", 897, v5);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "_NFDriverConfigureSEInDownload_block_invoke";
      v12 = 1024;
      v13 = 897;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v5);
    sub_297F9FBDC(*(a1 + 40));
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_297FA73AC(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t sub_297FA73F4(uint64_t a1)
{
  v2[4] = xmmword_297FDB330;
  v2[5] = unk_297FDB340;
  v2[6] = xmmword_297FDB350;
  memset(&v2[7], 0, 80);
  v2[0] = *"\nOSE.VAS.01";
  v2[1] = unk_297FDB300;
  v2[2] = xmmword_297FDB310;
  v2[3] = unk_297FDB320;
  v3 = 6;
  return sub_297FC09CC(a1, v2);
}

void sub_297FA7458(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(*(*(a1 + 32) + 24) + 592);
  NFIsRestoreOS();
  *(*(a1 + 32) + 56);
  NFGetProductType();
  v3 = *(*(a1 + 32) + 24);
  *(v3 + 766);
  v4 = *(v3 + 576);
  v5 = *(a1 + 40);
  v6 = phLibNfc_Mgt_Initialize();
  if (v6 != 13)
  {
    v7 = v6;
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverLoadMW_block_invoke", 208, v7);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "_Async_NFDriverLoadMW_block_invoke";
      v14 = 1024;
      v15 = 208;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297FBE498(*(*(*(a1 + 32) + 24) + 576), 0, (*(a1 + 40) + 12), (*(a1 + 40) + 8));
    sub_297F9FB20(*(a1 + 40), v7);
    sub_297F9FBDC(*(a1 + 40));
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_297FA7644(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    sub_297FBE498(a1, 0, (a2 + 12), (a2 + 8));
  }

  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

BOOL sub_297FA769C(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  if (*(a1 + 57) == 1)
  {
    v2 = sub_297F9DC04();
    pthread_mutex_lock((v2[3] + 8));
    v3 = v2[3];
    ++*v3;
    pthread_mutex_unlock((v3 + 8));
    v4 = *(*(a1 + 24) + 560);
    block = MEMORY[0x29EDCA5F8];
    v20 = 0x40000000;
    v21 = sub_297FAA9A4;
    v22 = &unk_29EE87750;
    v23 = a1;
    v24 = v2;
    dispatch_async_and_wait(v4, &block);
    if (sub_297F9F694(v2))
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i failed to register for notifications: 0x%04llX", "_NFDriverRegisterNCINotifications", 858, *v2);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *v2;
        *buf = 136446722;
        v26 = "_NFDriverRegisterNCINotifications";
        v27 = 1024;
        v28 = 858;
        v29 = 2048;
        v30 = v8;
        _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to register for notifications: 0x%04llX", buf, 0x1Cu);
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    sub_297F9FBDC(v2);
  }

  else
  {
    v10 = sub_297F9DC04();
    pthread_mutex_lock((v10[3] + 8));
    v11 = v10[3];
    ++*v11;
    pthread_mutex_unlock((v11 + 8));
    v12 = *(*(a1 + 24) + 560);
    block = MEMORY[0x29EDCA5F8];
    v20 = 0x40000000;
    v21 = sub_297FAAD7C;
    v22 = &unk_29EE87770;
    v23 = a1;
    v24 = v10;
    dispatch_async_and_wait(v12, &block);
    if (sub_297F9F694(v10))
    {
      v13 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v14(3, "%s:%i failed to register for notifications: 0x%04llX", "_NFDriverRegisterFWDLNotifications", 939, *v10);
      }

      dispatch_get_specific(*v13);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *v10;
        *buf = 136446722;
        v26 = "_NFDriverRegisterFWDLNotifications";
        v27 = 1024;
        v28 = 939;
        v29 = 2048;
        v30 = v16;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to register for notifications: 0x%04llX", buf, 0x1Cu);
      }

      sub_297F9FBDC(v10);
      v9 = 1;
    }

    else
    {
      sub_297F9FBDC(v10);
      v9 = sub_297FA6EF4(a1, 1) != 0;
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_297FA79D0(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (*(a1 + 57) == 1)
  {
    v2 = *(*(a1 + 24) + 560);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FAAEBC;
    block[3] = &unk_29EE87798;
    block[4] = &v15;
    block[5] = a1;
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    memset(v23, 0, 44);
    if (NFDriverGetControllerInfo(a1, v23))
    {
      v3 = *(a1 + 24);
      v4 = BYTE8(v23[0]);
      *(v3 + 620) = v23[0];
      *(v3 + 624) = BYTE8(v23[1]);
      *(v3 + 657) = v4;
      *(v3 + 612) = *(v23 + 12);
    }

    else
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(4, "%s:%i failed to get stack info", "_NFDriverSetControllerInfo", 569);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v20 = "_NFDriverSetControllerInfo";
        v21 = 1024;
        v22 = 569;
        _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to get stack info", buf, 0x12u);
      }

      *(v16 + 6) = 1;
    }
  }

  v8 = *(a1 + 24);
  *(v8 + 756) = sub_297FA01E8(*(v8 + 620), *(v8 + 624));
  v9 = *(v8 + 684);
  if (v9 == 2)
  {
    LOBYTE(ControllerInfo) = 1;
  }

  else if (v9 == 1 || (memset(v23, 0, 44), (ControllerInfo = NFDriverGetControllerInfo(a1, v23)) != 0) && ((DWORD1(v23[0]) & 0xFFFFFFFE) != 4 || (BYTE12(v23[0]) & 0xE0u) - 160 > 0x3F))
  {
    LOBYTE(ControllerInfo) = 0;
  }

  *(a1 + 58) = ControllerInfo;
  sub_297FBA53C(a1);
  phOsalNfc_setHardwareType();
  v11 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}