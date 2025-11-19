uint64_t sub_1AFB9C5E0()
{
  v1 = *v0;
  v2 = 0x636E65756C666E69;
  v3 = 0x6556746F5278616DLL;
  if (v1 != 5)
  {
    v3 = 0x61657241776F6873;
  }

  v4 = 0x6C676E4177656976;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x737569646172;
  if (v1 != 1)
  {
    v5 = 0x65636E6174736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFB9C6C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA22FC();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB9C6F0(uint64_t a1)
{
  v2 = sub_1AFBAC554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB9C72C(uint64_t a1)
{
  v2 = sub_1AFBAC554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB9C768@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFBA3784(a1, v5);
  if (!v2)
  {
    *a2 = *v5;
    result = *&v5[9];
    *(a2 + 9) = *&v5[9];
  }

  return result;
}

double sub_1AFB9C7E4@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFEA0680;
  result = 5.62950066e15;
  *(a1 + 16) = 0x4334000042F00000;
  *(a1 + 24) = 1;
  return result;
}

uint64_t sub_1AFB9C844()
{
  *v0 = 0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  v1 = (v0 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    return sub_1AF64E8C0(0, *(v3 + 16));
  }

  v5 = sub_1AFC86168(0, *(v3 + 24) >> 1);

  *v1 = v5;
  return result;
}

uint64_t sub_1AFB9C8C4()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = sub_1AF427CB4(0, 0x1000000, 0, v1);
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0x1000000;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  return v0;
}

uint64_t sub_1AFB9C924()
{

  return swift_deallocClassInstance();
}

void sub_1AFB9C988(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *a1;
  v315 = *(a1 + 12);
  v413 = *(a1 + 13);
  v414 = *(a1 + 15);
  v318 = *(a1 + 16);
  v309 = *(a1 + 24);
  v10 = *(a1 + 25);
  v11 = *(a1 + 40);
  v316 = *(a1 + 32);
  v317 = v9;
  v12 = *(a1 + 56);
  v305 = *(a1 + 48);
  v311 = *(a1 + 64);
  v330 = *(a1 + 72);
  v13 = *(a1 + 80);
  v304 = *(a1 + 88);
  *(v412 + 3) = *(a1 + 28);
  v412[0] = v10;
  v312 = v13;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = (a1 + 8);
  v322 = *(a1 + 8);
  sub_1AFB9C844();
  v16 = (v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1AF64E984(0, *(v18 + 16));
  }

  else
  {
    *v16 = sub_1AFC86210(0, *(v18 + 24) >> 1);
  }

  v308 = v5;
  v19 = *v16;
  v20 = *(*v16 + 3) >> 1;
  v325 = v12;
  if (v20 < v14)
  {
    v21 = 4 * v14 / 3;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v19;
    if (!v22 || v20 < v21)
    {
      if (*(v19 + 2) <= v21)
      {
        v23 = 4 * v14 / 3;
      }

      else
      {
        v23 = *(v19 + 2);
      }

      v19 = sub_1AF427DB8(v22, v23, 0, v19);
    }

    *v16 = v19;
    v12 = v325;
  }

  v324 = v11;
  if (a4)
  {
    v24 = -1;
  }

  else
  {
    v24 = 0;
  }

  v25 = v317;
  if (v14 >= 1)
  {
    v26.i64[0] = a2;
    v26.i64[1] = a3;
    __asm { FMOV            V2.4S, #1.0 }

    v313 = _Q2;
    v306 = vbslq_s8(vdupq_n_s32(v24), _Q2, v26);
    if (v312 < 1)
    {
      v36 = 0;
      v31 = v330;
      v32 = v316;
      v33 = v318;
      v34 = v322;
    }

    else
    {
      v31 = v330;
      v32 = v316;
      v33 = v318;
      v34 = v322;
      if (v12)
      {
        v35 = 0;
        v36 = 0;
        v37 = *(v330 + 32);
        v320 = *(v311 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v377 = v317;
        v38 = v15[1];
        v378 = *v15;
        v379 = v38;
        __asm { FMOV            V8.2S, #1.0 }

        v314 = v37;
        while (1)
        {
          v326 = v36;
          v319 = v35;
          v40 = (v11 + 48 * v35);
          v41 = *v40;
          v42 = v40[1];
          v43 = v40[2];
          v44 = *(v40 + 2);
          v45 = *(v40 + 4);
          v46 = *(v40 + 5);
          if (v320)
          {
            v47 = *(v46 + 376);

            os_unfair_lock_lock(v47);
            os_unfair_lock_lock(*(v46 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v37);
          v48 = *(v330 + 64);
          v410[0] = *(v330 + 48);
          v410[1] = v48;
          v411 = *(v330 + 80);
          v49 = *(*(*(*(v46 + 40) + 16) + 32) + 16) + 1;
          *(v330 + 48) = ecs_stack_allocator_allocate(*(v330 + 32), 48 * v49, 8);
          *(v330 + 56) = v49;
          *(v330 + 72) = 0;
          *(v330 + 80) = 0;
          *(v330 + 64) = 0;
          if (v44)
          {
            if (v45)
            {
              v50 = v313;
              v50.i32[3] = v338;
              v339 = v50;
              v51 = *v16;
              v52 = 112 * v43;
              do
              {
                v54 = *v44++;
                v53 = v54;
                v55 = swift_isUniquelyReferenced_nonNull_native();
                *v16 = v51;
                if ((v55 & 1) == 0)
                {
                  v51 = sub_1AF427DB8(0, *(v51 + 2) + 1, 1, v51);
                  *v16 = v51;
                }

                v57 = *(v51 + 2);
                v56 = *(v51 + 3);
                if (v57 >= v56 >> 1)
                {
                  v51 = sub_1AF427DB8(v56 > 1, v57 + 1, 1, v51);
                }

                *(v51 + 2) = v57 + 1;
                v58 = &v51[112 * v57];
                *(v58 + 4) = 0;
                *(v58 + 3) = 0u;
                *(v58 + 4) = 0u;
                *(v58 + 5) = xmmword_1AFE201A0;
                *(v58 + 6) = v339;
                *(v58 + 14) = _D8;
                *(v58 + 30) = 0;
                *(v58 + 16) = -1;
                *v16 = v51;
                v59 = *(v46 + 64);
                v394 = *(v46 + 48);
                v395 = v59;
                LOBYTE(v398) = *(v46 + 112);
                v60 = *(v46 + 64);
                v61 = *(v46 + 96);
                v396 = *(v46 + 80);
                v397 = v61;
                v62 = *(v46 + 96);
                v388 = v396;
                v389 = v62;
                LOBYTE(v390) = *(v46 + 112);
                v386 = *(v46 + 48);
                v387 = v60;
                v63 = sub_1AF64FB24(&type metadata for Position);
                v65 = v64;
                v404 = v388;
                v405 = v389;
                LOBYTE(v406) = v390;
                v402 = v386;
                v403 = v387;

                sub_1AF5DD36C(&v394, &v372);
                sub_1AF5DD3C8(&v402);
                if (v65)
                {

                  v66 = 0;
                }

                else
                {
                  v67 = *(v46 + 128);

                  v66 = (v67 + v63 + 16 * v53);
                }

                v68 = *(v46 + 64);
                v69 = *(v46 + 96);
                v374 = *(v46 + 80);
                v375 = v69;
                v376 = *(v46 + 112);
                v372 = *(v46 + 48);
                v373 = v68;
                v70 = *(v46 + 96);
                v369 = v374;
                v370 = v70;
                v371 = *(v46 + 112);
                v71 = *(v46 + 64);
                v367 = *(v46 + 48);
                v368 = v71;
                v72 = sub_1AF64FB24(&type metadata for Velocity);
                v74 = v73;
                v388 = v369;
                v389 = v370;
                LOBYTE(v390) = v371;
                v386 = v367;
                v387 = v368;

                sub_1AF5DD36C(&v372, &v364);
                sub_1AF5DD3C8(&v386);
                if (v74)
                {

                  v75 = 0;
                }

                else
                {
                  v76 = *(v46 + 128);

                  v75 = (v76 + v72 + 16 * v53);
                }

                v51 = *v16;
                v77 = swift_isUniquelyReferenced_nonNull_native();
                *v16 = v51;
                if ((v77 & 1) == 0)
                {
                  v51 = sub_1AFC0DCC4(v51);
                }

                v78 = &v51[v52];
                *(v78 + 4) = v66;
                v79 = *v66;
                HIDWORD(v79) = v354;
                *(v78 + 3) = v79;
                v80 = *v75;
                HIDWORD(v80) = v363;
                *(v78 + 4) = v80;
                *v16 = v51;
                v52 += 112;
                --v45;
              }

              while (v45);
              v338 = v339.i32[3];
LABEL_59:
              v11 = v324;
            }
          }

          else if (v41 != v42)
          {
            v81 = v313;
            v81.i32[3] = v310;
            v340 = v81;
            v82 = *v16;
            v83 = 16 * v41;
            v84 = 112 * v43;
            v85 = v42 - v41;
            do
            {
              v86 = swift_isUniquelyReferenced_nonNull_native();
              *v16 = v82;
              if ((v86 & 1) == 0)
              {
                v82 = sub_1AF427DB8(0, *(v82 + 2) + 1, 1, v82);
                *v16 = v82;
              }

              v88 = *(v82 + 2);
              v87 = *(v82 + 3);
              if (v88 >= v87 >> 1)
              {
                v82 = sub_1AF427DB8(v87 > 1, v88 + 1, 1, v82);
              }

              *(v82 + 2) = v88 + 1;
              v89 = &v82[112 * v88];
              *(v89 + 4) = 0;
              *(v89 + 3) = 0u;
              *(v89 + 4) = 0u;
              *(v89 + 5) = xmmword_1AFE201A0;
              *(v89 + 6) = v340;
              *(v89 + 14) = _D8;
              *(v89 + 30) = 0;
              *(v89 + 16) = -1;
              *v16 = v82;
              v90 = *(v46 + 64);
              v394 = *(v46 + 48);
              v395 = v90;
              LOBYTE(v398) = *(v46 + 112);
              v91 = *(v46 + 64);
              v92 = *(v46 + 96);
              v396 = *(v46 + 80);
              v397 = v92;
              v93 = *(v46 + 96);
              v388 = v396;
              v389 = v93;
              LOBYTE(v390) = *(v46 + 112);
              v386 = *(v46 + 48);
              v387 = v91;
              v94 = sub_1AF64FB24(&type metadata for Position);
              v96 = v95;
              v404 = v388;
              v405 = v389;
              LOBYTE(v406) = v390;
              v402 = v386;
              v403 = v387;

              sub_1AF5DD36C(&v394, &v372);
              sub_1AF5DD3C8(&v402);
              if (v96)
              {

                v97 = 0;
              }

              else
              {
                v98 = *(v46 + 128);

                v97 = (v83 + v98 + v94);
              }

              v99 = *(v46 + 64);
              v100 = *(v46 + 96);
              v374 = *(v46 + 80);
              v375 = v100;
              v376 = *(v46 + 112);
              v372 = *(v46 + 48);
              v373 = v99;
              v101 = *(v46 + 96);
              v369 = v374;
              v370 = v101;
              v371 = *(v46 + 112);
              v102 = *(v46 + 64);
              v367 = *(v46 + 48);
              v368 = v102;
              v103 = sub_1AF64FB24(&type metadata for Velocity);
              v105 = v104;
              v388 = v369;
              v389 = v370;
              LOBYTE(v390) = v371;
              v386 = v367;
              v387 = v368;

              sub_1AF5DD36C(&v372, &v364);
              sub_1AF5DD3C8(&v386);
              if (v105)
              {

                v106 = 0;
              }

              else
              {
                v107 = *(v46 + 128);

                v106 = (v107 + v83 + v103);
              }

              v82 = *v16;
              v108 = swift_isUniquelyReferenced_nonNull_native();
              *v16 = v82;
              if ((v108 & 1) == 0)
              {
                v82 = sub_1AFC0DCC4(v82);
              }

              v109 = &v82[v84];
              *(v109 + 4) = v97;
              v110 = *v97;
              HIDWORD(v110) = v332;
              *(v109 + 3) = v110;
              v111 = *v106;
              HIDWORD(v111) = v334;
              v83 += 16;
              *(v109 + 4) = v111;
              *v16 = v82;
              v84 += 112;
              --v85;
            }

            while (v85);
            v310 = v340.i32[3];
            goto LABEL_59;
          }

          v36 = v326;
          v31 = v330;
          sub_1AF630994(v330, &v377, v410);
          sub_1AF62D29C(v46);
          v37 = v314;
          ecs_stack_allocator_pop_snapshot(v314);
          v32 = v316;
          v25 = v317;
          v33 = v318;
          if (v320)
          {
            os_unfair_lock_unlock(*(v46 + 344));
            os_unfair_lock_unlock(*(v46 + 376));
          }

          v35 = v319 + 1;
          v12 = v325;
          v34 = v322;
          if (v319 + 1 == v325)
          {
            goto LABEL_64;
          }
        }
      }

      v36 = 0;
    }

LABEL_64:
    v112 = v306;
    v112.i32[3] = 0;
    v307 = v112;
    *&v402 = v25;
    DWORD2(v402) = v34;
    BYTE12(v402) = v315;
    *&v403 = v33;
    BYTE8(v403) = v309;
    *&v404 = v32;
    *(&v404 + 1) = v11;
    *&v405 = v305;
    *(&v405 + 1) = v12;
    v406 = v311;
    v407 = v31;
    v408 = v312;
    v409 = v304;
    v113 = sub_1AF6BA3C8(&type metadata for Orientation, &off_1F252C8A8, 0);
    if (v312 >= 1 && v113)
    {
      v114 = v315;
      v115 = v322;
      if (v12)
      {
        v116 = 0;
        v349 = *(v31 + 32);
        v117 = *(v311 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        *&v367 = v25;
        DWORD2(v367) = v322;
        BYTE12(v367) = v315;
        *&v368 = v318;
        BYTE8(v368) = v309;
        *&v369 = v32;
        v335 = v117;
        do
        {
          v327 = v36;
          v343 = v116;
          v118 = (v324 + 48 * v116);
          v119 = *v118;
          v120 = v118[1];
          v121 = v118[2];
          v122 = *(v118 + 2);
          v123 = *(v118 + 4);
          v124 = *(v118 + 5);
          if (v117)
          {
            v125 = *(v124 + 376);

            os_unfair_lock_lock(v125);
            os_unfair_lock_lock(*(v124 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v349);
          v126 = *(v330 + 64);
          v372 = *(v330 + 48);
          v373 = v126;
          *&v374 = *(v330 + 80);
          v127 = *(*(*(*(v124 + 40) + 16) + 32) + 16) + 1;
          *(v330 + 48) = ecs_stack_allocator_allocate(*(v330 + 32), 48 * v127, 8);
          *(v330 + 56) = v127;
          *(v330 + 72) = 0;
          *(v330 + 80) = 0;
          *(v330 + 64) = 0;
          if (v122)
          {
            if (v123)
            {
              v128 = 0;
              v114 = v315;
              do
              {
                v129 = (*(v124 + 48) + 32);
                do
                {
                  v130 = *v129;
                  v129 += 5;
                }

                while (v130 != &type metadata for Orientation);
                v357 = *(&(*(v129 - 2))[*(v122 + 8 * v128)] + *(v124 + 128));
                v131 = *v16;
                v132 = swift_isUniquelyReferenced_nonNull_native();
                *v16 = v131;
                if ((v132 & 1) == 0)
                {
                  v131 = sub_1AFC0DCC4(v131);
                }

                *&v131[112 * v128 + 80 + 112 * v121] = v357;
                *v16 = v131;
                ++v128;
              }

              while (v128 != v123);
              goto LABEL_83;
            }
          }

          else if (v119 != v120)
          {
            v133 = v121 - v119;
            v114 = v315;
            do
            {
              v134 = v119++;
              v135 = (*(v124 + 48) + 32);
              do
              {
                v136 = *v135;
                v135 += 5;
              }

              while (v136 != &type metadata for Orientation);
              v358 = *(&(*(v135 - 2))[v134] + *(v124 + 128));
              v137 = *v16;
              v138 = swift_isUniquelyReferenced_nonNull_native();
              *v16 = v137;
              if ((v138 & 1) == 0)
              {
                v137 = sub_1AFC0DCC4(v137);
              }

              *&v137[112 * v133 + 80 + 112 * v134] = v358;
              *v16 = v137;
            }

            while (v119 != v120);
            goto LABEL_83;
          }

          v114 = v315;
LABEL_83:
          v36 = v327;
          v31 = v330;
          sub_1AF630994(v330, &v367, &v372);
          sub_1AF62D29C(v124);
          ecs_stack_allocator_pop_snapshot(v349);
          v117 = v335;
          if (v335)
          {
            os_unfair_lock_unlock(*(v124 + 344));
            os_unfair_lock_unlock(*(v124 + 376));
          }

          v116 = v343 + 1;
          v12 = v325;
          v115 = v322;
        }

        while (v343 + 1 != v325);
      }
    }

    else
    {
      v114 = v315;
      v115 = v322;
    }

    v359 = vmaxnmq_f32(v307, xmmword_1AFEA0690);
    *&v394 = v317;
    DWORD2(v394) = v115;
    BYTE12(v394) = v114;
    *&v395 = v318;
    BYTE8(v395) = v309;
    *&v396 = v316;
    *(&v396 + 1) = v324;
    *&v397 = v305;
    *(&v397 + 1) = v12;
    v398 = v311;
    v399 = v31;
    v400 = v312;
    v401 = v304;
    if (sub_1AF6BA3C8(&type metadata for Scale1, &off_1F252F788, 0))
    {
      if (v312 >= 1 && v12)
      {
        v139 = 0;
        v140 = *(v311 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v141 = *(v330 + 32);
        *&v364 = v317;
        DWORD2(v364) = v322;
        BYTE12(v364) = v315;
        *&v365 = v318;
        BYTE8(v365) = v309;
        v366 = v316;
        v341 = v140;
        v336 = v141;
        do
        {
          v328 = v36;
          v350 = v139;
          v142 = (v324 + 48 * v139);
          v143 = *v142;
          v344 = v142[1];
          v144 = v142[2];
          v145 = *(v142 + 2);
          v147 = *(v142 + 4);
          v146 = *(v142 + 5);
          if (v140)
          {
            v148 = *(v146 + 376);

            os_unfair_lock_lock(v148);
            os_unfair_lock_lock(*(v146 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v141);
          v149 = *(v330 + 64);
          v386 = *(v330 + 48);
          v387 = v149;
          *&v388 = *(v330 + 80);
          v150 = *(*(*(*(v146 + 40) + 16) + 32) + 16) + 1;
          *(v330 + 48) = ecs_stack_allocator_allocate(*(v330 + 32), 48 * v150, 8);
          *(v330 + 56) = v150;
          *(v330 + 72) = 0;
          *(v330 + 80) = 0;
          *(v330 + 64) = 0;
          if (v145)
          {
            if (v147)
            {
              for (i = 0; i != v147; ++i)
              {
                v152 = *(v145 + 8 * i);
                v153 = (*(v146 + 48) + 32);
                do
                {
                  v154 = *v153;
                  v153 += 5;
                }

                while (v154 != &type metadata for Scale1);
                v155 = *(v153 - 2) + *(v146 + 128);
                if (*&v155[4 * v152] > 0.000001)
                {
                  v156 = *&v155[4 * v152];
                }

                else
                {
                  v156 = 0.000001;
                }

                v157 = *v16;
                v158 = swift_isUniquelyReferenced_nonNull_native();
                *v16 = v157;
                if ((v158 & 1) == 0)
                {
                  v157 = sub_1AFC0DCC4(v157);
                }

                *&v159 = v359.f32[0] * v156;
                *(&v159 + 1) = v359.f32[1] * v156;
                *(&v159 + 1) = COERCE_UNSIGNED_INT(v359.f32[2] * v156);
                v160 = &v157[112 * i + 112 * v144];
                *(v160 + 6) = v159;
                v161 = ((v359.f32[2] * v156) + ((v359.f32[0] * v156) + (v359.f32[1] * v156))) * 0.33333;
                v162 = 0.000001;
                if (v161 <= 0.000001)
                {
                  v161 = 0.000001;
                }

                if (((v161 * (v161 * v161)) * 0.5236) > 0.000001)
                {
                  v162 = (v161 * (v161 * v161)) * 0.5236;
                }

                *(v160 + 28) = v161;
                *(v160 + 29) = v162;
                *v16 = v157;
              }
            }
          }

          else if (v143 != v344)
          {
            v163 = v144 - v143;
            do
            {
              v164 = v143++;
              v165 = (*(v146 + 48) + 32);
              do
              {
                v166 = *v165;
                v165 += 5;
              }

              while (v166 != &type metadata for Scale1);
              v167 = *(v165 - 2) + *(v146 + 128);
              if (*&v167[4 * v164] > 0.000001)
              {
                v168 = *&v167[4 * v164];
              }

              else
              {
                v168 = 0.000001;
              }

              v169 = *v16;
              v170 = swift_isUniquelyReferenced_nonNull_native();
              *v16 = v169;
              if ((v170 & 1) == 0)
              {
                v169 = sub_1AFC0DCC4(v169);
              }

              *&v171 = v359.f32[0] * v168;
              *(&v171 + 1) = v359.f32[1] * v168;
              *(&v171 + 1) = COERCE_UNSIGNED_INT(v359.f32[2] * v168);
              v172 = &v169[112 * v163 + 112 * v164];
              *(v172 + 6) = v171;
              v173 = ((v359.f32[2] * v168) + ((v359.f32[0] * v168) + (v359.f32[1] * v168))) * 0.33333;
              v174 = 0.000001;
              if (v173 <= 0.000001)
              {
                v173 = 0.000001;
              }

              if (((v173 * (v173 * v173)) * 0.5236) > 0.000001)
              {
                v174 = (v173 * (v173 * v173)) * 0.5236;
              }

              *(v172 + 28) = v173;
              *(v172 + 29) = v174;
              *v16 = v169;
            }

            while (v143 != v344);
          }

          v36 = v328;
          sub_1AF630994(v330, &v364, &v386);
          sub_1AF62D29C(v146);
          v141 = v336;
          ecs_stack_allocator_pop_snapshot(v336);
          v140 = v341;
          if (v341)
          {
            os_unfair_lock_unlock(*(v146 + 344));
            os_unfair_lock_unlock(*(v146 + 376));
          }

          v139 = v350 + 1;
        }

        while (v350 + 1 != v325);
      }
    }

    else
    {
      *(&v386 + 13) = v413;
      HIBYTE(v386) = v414;
      *(&v387 + 9) = v412[0];
      HIDWORD(v387) = *(v412 + 3);
      *&v386 = v317;
      DWORD2(v386) = v322;
      BYTE12(v386) = v114;
      *&v387 = v318;
      BYTE8(v387) = v309;
      *&v388 = v316;
      *(&v388 + 1) = v324;
      *&v389 = v305;
      *(&v389 + 1) = v12;
      v390 = v311;
      v391 = v31;
      v392 = v312;
      v393 = v304;
      if (sub_1AF6BA3C8(&type metadata for Scale3, &off_1F252F998, 0) && v312 >= 1 && v12)
      {
        v175 = 0;
        v176 = *(v311 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v337 = *(v330 + 32);
        v380 = v317;
        v381 = v322;
        v382 = v315;
        v383 = v318;
        v384 = v309;
        v385 = v316;
        v331 = v176;
        do
        {
          v329 = v36;
          v333 = v175;
          v177 = (v324 + 48 * v175);
          v179 = *v177;
          v178 = v177[1];
          v180 = v177[2];
          v181 = *(v177 + 2);
          v183 = *(v177 + 4);
          v182 = *(v177 + 5);
          if (v176)
          {
            v184 = *(v182 + 376);

            os_unfair_lock_lock(v184);
            os_unfair_lock_lock(*(v182 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v337);
          v185 = *(v330 + 64);
          v364 = *(v330 + 48);
          v365 = v185;
          v366 = *(v330 + 80);
          v186 = *(*(*(*(v182 + 40) + 16) + 32) + 16) + 1;
          *(v330 + 48) = ecs_stack_allocator_allocate(*(v330 + 32), 48 * v186, 8);
          *(v330 + 56) = v186;
          *(v330 + 72) = 0;
          *(v330 + 80) = 0;
          *(v330 + 64) = 0;
          if (v181)
          {
            v187 = v333;
            v176 = v331;
            v188.i32[3] = v323;
            if (v183)
            {
              for (j = 0; j != v183; ++j)
              {
                v355 = v188.i32[3];
                v190 = (*(v182 + 48) + 32);
                do
                {
                  v191 = *v190;
                  v190 += 5;
                }

                while (v191 != &type metadata for Scale3);
                v345 = *(&(*(v190 - 2))[*(v181 + 8 * j)] + *(v182 + 128));
                v192 = *v16;
                v193 = swift_isUniquelyReferenced_nonNull_native();
                *v16 = v192;
                if ((v193 & 1) == 0)
                {
                  v192 = sub_1AFC0DCC4(v192);
                }

                v194 = vmulq_f32(v359, v345);
                v194.i32[3] = 0;
                v195 = vmaxnmq_f32(v194, xmmword_1AFEA0690);
                v188 = v195;
                v188.i32[3] = v355;
                v196 = &v192[112 * j + 112 * v180];
                *(v196 + 6) = v188;
                v197 = (v195.f32[2] + vaddv_f32(*v195.f32)) * 0.33333;
                v198 = 0.000001;
                if (v197 <= 0.000001)
                {
                  v197 = 0.000001;
                }

                if (((v197 * (v197 * v197)) * 0.5236) > 0.000001)
                {
                  v198 = (v197 * (v197 * v197)) * 0.5236;
                }

                *(v196 + 28) = v197;
                *(v196 + 29) = v198;
                *v16 = v192;
              }

              v323 = v355;
            }

            v199 = v325;
          }

          else
          {
            v199 = v325;
            v176 = v331;
            if (v179 != v178)
            {
              v200 = v180 - v179;
              v201.i32[3] = v321;
              do
              {
                v356 = v201.i32[3];
                v202 = v179++;
                v203 = (*(v182 + 48) + 32);
                do
                {
                  v204 = *v203;
                  v203 += 5;
                }

                while (v204 != &type metadata for Scale3);
                v346 = *(&(*(v203 - 2))[v202] + *(v182 + 128));
                v205 = *v16;
                v206 = swift_isUniquelyReferenced_nonNull_native();
                *v16 = v205;
                if ((v206 & 1) == 0)
                {
                  v205 = sub_1AFC0DCC4(v205);
                }

                v207 = vmulq_f32(v359, v346);
                v207.i32[3] = 0;
                v208 = vmaxnmq_f32(v207, xmmword_1AFEA0690);
                v201 = v208;
                v201.i32[3] = v356;
                v209 = &v205[112 * v200 + 112 * v202];
                *(v209 + 6) = v201;
                v210 = (v208.f32[2] + vaddv_f32(*v208.f32)) * 0.33333;
                v211 = 0.000001;
                if (v210 <= 0.000001)
                {
                  v210 = 0.000001;
                }

                if (((v210 * (v210 * v210)) * 0.5236) > 0.000001)
                {
                  v211 = (v210 * (v210 * v210)) * 0.5236;
                }

                *(v209 + 28) = v210;
                *(v209 + 29) = v211;
                *v16 = v205;
              }

              while (v179 != v178);
              v321 = v356;
            }

            v187 = v333;
          }

          v36 = v329;
          sub_1AF630994(v330, &v380, &v364);
          sub_1AF62D29C(v182);
          ecs_stack_allocator_pop_snapshot(v337);
          if (v176)
          {
            os_unfair_lock_unlock(*(v182 + 344));
            os_unfair_lock_unlock(*(v182 + 376));
          }

          v175 = v187 + 1;
        }

        while (v175 != v199);
      }
    }
  }

  v212 = *v16;
  v213 = *(*v16 + 2);
  v214 = v308;
  if (v213)
  {
    v215 = xmmword_1AFEA06A0;
    v216 = xmmword_1AFEA06B0;
    *(v308 + 112) = xmmword_1AFEA06A0;
    *(v308 + 128) = xmmword_1AFEA06B0;
    v217 = (v212 + 48);
    do
    {
      v218 = v215.n128_u32[3];
      v219 = v216.i32[3];
      v220 = *v217;
      v217 += 7;
      v221 = v220;
      v215.n128_u32[3] = 0;
      v221.i32[3] = 0;
      v222 = vminnmq_f32(v215, v221);
      v215 = v222;
      v215.n128_u32[3] = v218;
      v216.i32[3] = 0;
      v223 = vmaxnmq_f32(v216, v221);
      v216 = v223;
      v216.i32[3] = v219;
      --v213;
    }

    while (v213);
    *(v308 + 112) = v215;
    *(v308 + 128) = v216;
    v215.n128_u64[0] = vsub_f32(*v223.f32, *v222.f32);
    v351 = *v223.f32;
    v360 = *v222.f32;
    v224 = v223.f32[2];
    v225 = v222.f32[2];
    v226 = v223.f32[2] - v222.f32[2];
    if ((v215.n128_u32[1] & 0x7FFFFF) != 0)
    {
      v227 = v215.n128_f32[0];
    }

    else
    {
      v227 = v215.n128_f32[1];
    }

    if ((~v215.n128_u32[1] & 0x7F800000) != 0)
    {
      v227 = v215.n128_f32[1];
    }

    if (v215.n128_f32[0] <= v215.n128_f32[1])
    {
      v228 = v215.n128_f32[0];
    }

    else
    {
      v228 = v227;
    }

    v215.n128_f32[2] = v223.f32[2] - v222.f32[2];
    v215.n128_u32[3] = 0;
    if ((LODWORD(v226) & 0x7FFFFF) != 0)
    {
      v229 = v228;
    }

    else
    {
      v229 = v223.f32[2] - v222.f32[2];
    }

    if ((~LODWORD(v226) & 0x7F800000) != 0)
    {
      v229 = v223.f32[2] - v222.f32[2];
    }

    if (v228 > v226)
    {
      v230 = v229;
    }

    else
    {
      v230 = v228;
    }

    *(v308 + 32) = v230 >= 0.0;
    v231 = sub_1AFA2D838(v215);
    if (v230 < 0.0)
    {
      *(v308 + 32) = 0;
    }

    else
    {
      *(v308 + 32) = v231 > 0.001;
      if (v231 > 0.001)
      {
        v232 = vadd_f32(v360, vdup_n_s32(0xBA83126F));
        v233 = (v224 + 0.001) - (v225 + -0.001);
        v234 = vsub_f32(vadd_f32(v351, vdup_n_s32(0x3A83126Fu)), v232);
        v235.n128_u64[0] = v234;
        v235.n128_u64[1] = LODWORD(v233);
        v236 = vadd_f32(v232, vmul_f32(v234, 0x3F0000003F000000));
        v237 = (v225 + -0.001) + (v233 * 0.5);
        if ((v234.i32[1] & 0x7FFFFF) != 0)
        {
          v238 = v234.f32[0];
        }

        else
        {
          v238 = v234.f32[1];
        }

        if ((~v234.i32[1] & 0x7F800000) != 0)
        {
          v238 = v234.f32[1];
        }

        v352 = v234;
        v361 = v233;
        if (v234.f32[0] <= v234.f32[1])
        {
          v239 = v234.f32[0];
        }

        else
        {
          v239 = v238;
        }

        if ((LODWORD(v233) & 0x7FFFFF) != 0)
        {
          v240 = v239;
        }

        else
        {
          v240 = v233;
        }

        if ((~LODWORD(v233) & 0x7F800000) != 0)
        {
          v240 = v233;
        }

        if (v239 > v233)
        {
          v241 = v240;
        }

        else
        {
          v241 = v239;
        }

        v347 = v235;
        v242 = sub_1AFA2D838(v235);
        v243.n128_u64[0] = v352;
        v244 = v361;
        if (v241 < (v242 * 0.01))
        {
          v243 = v347;
          do
          {
            if (v243.n128_f32[0] > v243.n128_f32[1] || v243.n128_f32[0] > v243.n128_f32[2])
            {
              v246 = v243;
            }

            else
            {
              if (v243.n128_f32[1] > v243.n128_f32[2])
              {
                v247 = v243.n128_f32[1];
              }

              else
              {
                v247 = v243.n128_f32[2];
              }

              v246 = v243;
              v246.n128_f32[0] = v247 * 0.01;
              v243.n128_f32[0] = v247 * 0.01;
            }

            if (v243.n128_f32[1] <= v243.n128_f32[0] && v243.n128_f32[1] <= v246.n128_f32[2])
            {
              if (v243.n128_f32[0] > v246.n128_f32[2])
              {
                v249 = v243.n128_f32[0];
              }

              else
              {
                v249 = v246.n128_f32[2];
              }

              v243.n128_u32[0] = v246.n128_u32[0];
              v246.n128_f32[1] = v249 * 0.01;
            }

            v250 = v246.n128_f32[1];
            if (v246.n128_f32[2] > v243.n128_f32[0] || v246.n128_f32[2] > v246.n128_f32[1])
            {
              v252 = v243.n128_f32[0];
              v243 = v246;
            }

            else
            {
              if (v243.n128_f32[0] > v246.n128_f32[1])
              {
                v250 = v243.n128_f32[0];
              }

              v243 = v246;
              v243.n128_f32[2] = v250 * 0.01;
              v252 = v246.n128_f32[0];
            }

            if ((v243.n128_u32[1] & 0x7FFFFF) != 0)
            {
              v253 = v252;
            }

            else
            {
              v253 = v243.n128_f32[1];
            }

            if ((~v243.n128_u32[1] & 0x7F800000) != 0)
            {
              v253 = v243.n128_f32[1];
            }

            if (v252 <= v243.n128_f32[1])
            {
              v253 = v252;
            }

            v244 = v243.n128_f32[2];
            if ((v243.n128_u32[2] & 0x7FFFFF) != 0)
            {
              v254 = v253;
            }

            else
            {
              v254 = v243.n128_f32[2];
            }

            if ((~v243.n128_u32[2] & 0x7F800000) != 0)
            {
              v254 = v243.n128_f32[2];
            }

            if (v253 > v243.n128_f32[2])
            {
              v253 = v254;
            }

            v255 = v252;
            if (v243.n128_f32[1] >= v252)
            {
              v255 = (v243.n128_u32[1] & 0x7FFFFF) != 0 ? v252 : v243.n128_f32[1];
              if ((~v243.n128_u32[1] & 0x7F800000) != 0)
              {
                v255 = v243.n128_f32[1];
              }
            }

            if (v243.n128_f32[2] >= v255)
            {
              if ((v243.n128_u32[2] & 0x7FFFFF) != 0)
              {
                v256 = v255;
              }

              else
              {
                v256 = v243.n128_f32[2];
              }

              if ((~v243.n128_u32[2] & 0x7F800000) != 0)
              {
                v255 = v243.n128_f32[2];
              }

              else
              {
                v255 = v256;
              }
            }
          }

          while (v253 < (v255 * 0.01));
          v243.n128_f32[0] = v252;
        }

        v257 = vmul_f32(v243.n128_u64[0], 0x3F0000003F000000);
        *&v258 = vsub_f32(v236, v257);
        *(&v258 + 2) = v237 - (v244 * 0.5);
        HIDWORD(v258) = 0;
        v259.n128_u64[0] = vadd_f32(v236, v257);
        v353 = *(&v258 + 2);
        v362 = v258;
        v259.n128_f32[2] = v237 + (v244 * 0.5);
        v259.n128_u32[3] = 0;
        *(v308 + 112) = v258;
        *(v308 + 128) = v259;
        v348 = vsub_f32(v259.n128_u64[0], *&v258);
        v259.n128_u64[0] = v348;
        v259.n128_f32[2] = v259.n128_f32[2] - *(&v258 + 2);
        v342 = v259.n128_f32[2];
        v259.n128_u32[3] = 0;
        v260 = v259.n128_f32[2] * vmul_lane_f32(v348, v348, 1).f32[0];
        v261 = sub_1AFA2D838(v259);
        v262 = *(v212 + 2);
        if (v262 < 0x41)
        {
          v263 = v261 * 0.25;
        }

        else
        {
          v263 = powf(v260 / v262, 0.333);
        }

        v264 = powf(*(v308 + 48), 0.333);
        v265 = powf(v264 + -1.0, 3.0);
        *v266.i32 = powf(v260 / v265, 0.333) * 1.0001;
        if (*v266.i32 <= v263)
        {
          *v266.i32 = v263;
        }

        *(v308 + 104) = v266.i32[0];
        v267 = vcvtq_s64_f64(vcvtq_f64_f32(vdiv_f32(v348, vdup_lane_s32(v266, 0))));
        v268 = vaddq_s64(v267, vdupq_n_s64(1uLL));
        *(v308 + 56) = v268;
        v269 = (v342 / *v266.i32);
        *(v308 + 72) = v269 + 1;
        *(v308 + 80) = v267;
        *(v308 + 96) = v269;
        *v267.i32 = v353 + (v342 * 0.5);
        v270 = (*v266.i32 * 0.5) * (v269 + 1);
        v271 = vadd_f32(v362, vmul_f32(v348, 0x3F0000003F000000));
        v272 = vmul_n_f32(vcvt_f32_f64(vcvtq_f64_s64(v268)), *v266.i32 * 0.5);
        *&v273 = vsub_f32(v271, v272);
        *(&v273 + 2) = *v267.i32 - v270;
        HIDWORD(v273) = 0;
        *&v274 = vadd_f32(v271, v272);
        *(&v274 + 1) = COERCE_UNSIGNED_INT(*v267.i32 + v270);
        *(v308 + 112) = v273;
        *(v308 + 128) = v274;
        v275 = v268.i64[0] * v268.i64[1];
        v276 = v268.i64[0] * v268.i64[1] * (v269 + 1);
        if (v276)
        {
          v277 = *(v308 + 40);
          v278 = swift_isUniquelyReferenced_nonNull_native();
          *(v308 + 40) = v277;
          if ((v278 & 1) == 0)
          {
            v277 = sub_1AF427CB4(0, *(v277 + 2) + 1, 1, v277);
          }

          do
          {
            *(v308 + 40) = v277;
            v280 = *(v277 + 2);
            v279 = *(v277 + 3);
            if (v280 >= v279 >> 1)
            {
              v277 = sub_1AF427CB4(v279 > 1, v280 + 1, 1, v277);
            }

            *(v277 + 2) = v280 + 1;
            v281 = &v277[16 * v280];
            *(v281 + 4) = -1;
            *(v281 + 5) = -1;
            *(v308 + 40) = v277;
            --v276;
          }

          while (v276);
          v266.i32[0] = *(v308 + 104);
          v275 = *(v308 + 64) * *(v308 + 56);
        }

        v282 = *(*v16 + 2);
        if (v282)
        {
          v283 = 0;
          v284 = 48;
          v285 = 1.0 / *v266.i32;
          do
          {
            v287 = v214[1].i64[0];
            v288 = vsubq_f32(*&v287[v284], v214[7]);
            v289 = v285 * v288.f32[0];
            if ((~COERCE_INT(v285 * v288.f32[0]) & 0x7F800000) != 0 || (COERCE_UNSIGNED_INT(v285 * v288.f32[0]) & 0x7FFFFF) == 0)
            {
              v291 = vmuls_lane_f32(v285, *v288.f32, 1);
              if ((~LODWORD(v291) & 0x7F800000) != 0 || (LODWORD(v291) & 0x7FFFFF) == 0)
              {
                v293 = vmuls_lane_f32(v285, v288, 2);
                if ((~LODWORD(v293) & 0x7F800000) != 0 || (LODWORD(v293) & 0x7FFFFF) == 0)
                {
                  v295 = v289 + v275 * v293 + v214[3].i64[1] * v291;
                  v296 = v214[2].i64[1];
                  v297 = &v296[16 * v295];
                  v299 = *(v297 + 4);
                  v298 = v297 + 32;
                  if (v299 < 0)
                  {
                    v303 = swift_isUniquelyReferenced_nonNull_native();
                    v214[2].i64[1] = v296;
                    if ((v303 & 1) == 0)
                    {
                      v296 = sub_1AFC0DCD8(v296);
                    }

                    v286 = &v296[16 * v295];
                    *(v286 + 4) = v283;
                  }

                  else
                  {
                    v300 = *(v298 + 1);
                    v301 = swift_isUniquelyReferenced_nonNull_native();
                    *v16 = v287;
                    if ((v301 & 1) == 0)
                    {
                      v287 = sub_1AFC0DCC4(v287);
                    }

                    *&v287[112 * v300 + 128] = v283;
                    *(v308 + 16) = v287;
                    v296 = *(v308 + 40);
                    v302 = swift_isUniquelyReferenced_nonNull_native();
                    *(v308 + 40) = v296;
                    if ((v302 & 1) == 0)
                    {
                      v296 = sub_1AFC0DCD8(v296);
                    }

                    v286 = &v296[16 * v295];
                  }

                  *(v286 + 5) = v283;
                  v214 = v308;
                  *(v308 + 40) = v296;
                }
              }
            }

            ++v283;
            v284 += 112;
          }

          while (v282 != v283);
        }
      }
    }
  }
}

uint64_t sub_1AFB9E3C0(uint64_t result, float a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v9 = a9;
  v14 = a2 * a2;
  v15 = 1.0 / a4[6].f32[2];
  v16 = a4[3].i64[1];
  v504 = result;
  v17 = vsubq_f32(*a5, a4[7]);
  v503 = a4[4].i64[0] * v16;
  v474 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_n_f32(*&vextq_s8(v17, v17, 4uLL), v15)));
  v477 = (v15 * *v17.i32);
  v18 = *(result + 16 * v503 * v474.i64[1] + 16 * v16 * v474.i64[0] + 16 * v477);
  for (i = -112; (v18 & 0x8000000000000000) == 0; v18 = v19[6].i64[0])
  {
    v19 = (a6 + 112 * v18);
    if (v19->i64[0])
    {
      v20 = v19->i64[0] == a5;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v45 = *a8;
      if (*(*a8 + 16) == v9)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = sub_1AFC0DCC4(v45);
          *a8 = v45;
        }

        --*(v45 + 2);
        *a8 = v45;
      }

      v47 = v19[5];
      v549[4] = v19[4];
      v549[5] = v47;
      v550 = v19[6].i64[0];
      v48 = v19[1];
      v549[0] = *v19;
      v549[1] = v48;
      v49 = v19[2];
      v549[3] = v19[3];
      v549[2] = v49;
      sub_1AF64B948(0, 0, v549);
      v50 = *a8;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v50;
      if ((result & 1) == 0)
      {
        result = sub_1AFC0DCC4(v50);
        v50 = result;
        *a8 = result;
      }

      *(v50 + 120) = 0;
    }

    else
    {
      v21 = *a5;
      v21.i32[3] = v511;
      v22 = vsubq_f32(v21, v19[1]);
      v23 = vmulq_f32(v22, v22);
      v24 = v23.f32[2] + vaddv_f32(*v23.f32);
      if (v24 < v14)
      {
        v25 = *a8;
        v26 = *(*a8 + 16);
        v27 = sqrtf(v24);
        if (v26)
        {
          v28 = i + 112 * v26;
          if (*&v25[v28 + 120] <= v27)
          {
            if (v26 < v9)
            {
              v62 = v19[5];
              v546 = v19[4];
              v547 = v62;
              v548 = v19[6].i64[0];
              v63 = v19[1];
              v542 = *v19;
              v543 = v63;
              v64 = v19[2];
              v545 = v19[3];
              v544 = v64;
              v65 = swift_isUniquelyReferenced_nonNull_native();
              *a8 = v25;
              if ((v65 & 1) == 0)
              {
                v25 = sub_1AF427DB8(0, *(v25 + 2) + 1, 1, v25);
                *a8 = v25;
              }

              v67 = *(v25 + 2);
              v66 = *(v25 + 3);
              if (v67 >= v66 >> 1)
              {
                v25 = sub_1AF427DB8(v66 > 1, v67 + 1, 1, v25);
                *a8 = v25;
              }

              *(v25 + 2) = v67 + 1;
              v68 = &v25[112 * v67];
              v69 = v542;
              v70 = v544;
              *(v68 + 3) = v543;
              *(v68 + 4) = v70;
              *(v68 + 2) = v69;
              v71 = v545;
              v72 = v546;
              v73 = v547;
              *(v68 + 16) = v548;
              *(v68 + 6) = v72;
              *(v68 + 7) = v73;
              *(v68 + 5) = v71;
              v74 = *a8;
              v75 = *(*a8 + 16);
              result = swift_isUniquelyReferenced_nonNull_native();
              *a8 = v74;
              if ((result & 1) == 0)
              {
                result = sub_1AFC0DCC4(v74);
                v74 = result;
                *a8 = result;
              }

              *(v74 + 112 * v75 + 8) = v27;
            }
          }

          else
          {
            if (v26 == v9)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              *a8 = v25;
              if ((result & 1) == 0)
              {
                result = sub_1AFC0DCC4(v25);
                v25 = result;
                *a8 = result;
              }

              *&v25[v28 + 120] = v27 + 999.99;
              v25 = *a8;
              v26 = *(*a8 + 16);
              v21.i32[3] = v511;
            }

            v29 = 0;
            v30 = 1;
            do
            {
              if (v26 + v30 == 1)
              {
                v511 = v21.i32[3];
                v9 = a9;
                goto LABEL_3;
              }

              v31 = *&v25[v29 + 120];
              --v30;
              v29 += 112;
            }

            while (v27 >= v31);
            if (v26 == a9)
            {
              sub_1AF449D1C(v25);
              sub_1AFBA21D8(v512);
              if (v512[104])
              {
                v32 = sub_1AF449D1C(*a8);
                sub_1AF6210AC(v32 - 1, &v542);
              }

              v25 = *a8;
              v26 = *(*a8 + 16);
            }

            if (v30 + v26)
            {
              v76 = v19[5];
              v551[4] = v19[4];
              v551[5] = v76;
              v552 = v19[6].i64[0];
              v77 = v19[1];
              v551[0] = *v19;
              v551[1] = v77;
              v78 = v19[3];
              v551[2] = v19[2];
              v551[3] = v78;
              sub_1AF64B948(-v30, -v30, v551);
            }

            else
            {
              v33 = v19[5];
              v546 = v19[4];
              v547 = v33;
              v548 = v19[6].i64[0];
              v34 = v19[1];
              v542 = *v19;
              v543 = v34;
              v35 = v19[2];
              v545 = v19[3];
              v544 = v35;
              v36 = swift_isUniquelyReferenced_nonNull_native();
              *a8 = v25;
              if ((v36 & 1) == 0)
              {
                v25 = sub_1AF427DB8(0, *(v25 + 2) + 1, 1, v25);
                *a8 = v25;
              }

              v38 = *(v25 + 2);
              v37 = *(v25 + 3);
              if (v38 >= v37 >> 1)
              {
                v25 = sub_1AF427DB8(v37 > 1, v38 + 1, 1, v25);
                *a8 = v25;
              }

              *(v25 + 2) = v38 + 1;
              v39 = &v25[112 * v38];
              v40 = v542;
              v41 = v544;
              *(v39 + 3) = v543;
              *(v39 + 4) = v41;
              *(v39 + 2) = v40;
              v42 = v545;
              v43 = v546;
              v44 = v547;
              *(v39 + 16) = v548;
              *(v39 + 6) = v43;
              *(v39 + 7) = v44;
              *(v39 + 5) = v42;
            }

            v79 = *a8;
            result = swift_isUniquelyReferenced_nonNull_native();
            *a8 = v79;
            if ((result & 1) == 0)
            {
              result = sub_1AFC0DCC4(v79);
              v79 = result;
              *a8 = result;
            }

            *(v79 + v29 + 8) = v27;
            v9 = a9;
          }
        }

        else
        {
          v51 = v19[5];
          v546 = v19[4];
          v547 = v51;
          v548 = v19[6].i64[0];
          v52 = v19[1];
          v542 = *v19;
          v543 = v52;
          v53 = v19[2];
          v545 = v19[3];
          v544 = v53;
          result = swift_isUniquelyReferenced_nonNull_native();
          *a8 = v25;
          if ((result & 1) == 0)
          {
            result = sub_1AF427DB8(0, *(v25 + 2) + 1, 1, v25);
            v25 = result;
            *a8 = result;
          }

          v55 = *(v25 + 2);
          v54 = *(v25 + 3);
          if (v55 >= v54 >> 1)
          {
            result = sub_1AF427DB8(v54 > 1, v55 + 1, 1, v25);
            v25 = result;
            *a8 = result;
          }

          *(v25 + 2) = v55 + 1;
          v56 = &v25[112 * v55];
          v57 = v542;
          v58 = v544;
          *(v56 + 3) = v543;
          *(v56 + 4) = v58;
          *(v56 + 2) = v57;
          v59 = v545;
          v60 = v546;
          v61 = v547;
          *(v56 + 16) = v548;
          *(v56 + 6) = v60;
          *(v56 + 7) = v61;
          *(v56 + 5) = v59;
          *(*a8 + 120) = v27;
        }
      }
    }

LABEL_3:
    ;
  }

  v471 = 112 * v9;
  v80 = 0.0;
  v81 = 1;
  v82 = a4;
  while (1)
  {
    v83 = vsubq_s64(v474, vdupq_n_s64(v81));
    v488 = v83.i64[0];
    v84 = v82[5].i64[1];
    v489 = v81 + v474.i64[0];
    v490 = v83.i64[0] & ~(v83.i64[0] >> 63);
    if ((v81 + v474.i64[0]) < v84)
    {
      v84 = v81 + v474.i64[0];
    }

    v484 = v84;
    v475 = v83;
    v476 = v83.i64[1];
    v85 = v81 + v474.i64[1];
    v478 = v81 + v474.i64[1];
    v479 = v81;
    if ((v81 + v474.i64[1]) >= v82[6].i64[0])
    {
      v85 = v82[6].u64[0];
    }

    v499 = v85;
    v493 = v83.i64[0] & ~(v83.i64[0] >> 63);
    v480 = v477 - v81;
    v482 = v83.i64[1] & ~(v83.i64[1] >> 63);
    if ((v477 - v81) >= 0)
    {
      do
      {
        v90 = v482;
        do
        {
          for (j = *(v504 + 16 * v90 * v503 + 16 * v82[3].i64[1] * v493 + 16 * v480); (j & 0x8000000000000000) == 0; j = v92[6].i64[0])
          {
            v92 = (a6 + 112 * j);
            if (v92->i64[0])
            {
              v93 = v92->i64[0] == a5;
            }

            else
            {
              v93 = 0;
            }

            if (v93)
            {
              v118 = *a8;
              if (*(*a8 + 16) == v9)
              {
                v119 = swift_isUniquelyReferenced_nonNull_native();
                *a8 = v118;
                if ((v119 & 1) == 0)
                {
                  v118 = sub_1AFC0DCC4(v118);
                  *a8 = v118;
                }

                --*(v118 + 16);
                *a8 = v118;
              }

              v120 = v92[5];
              v540[4] = v92[4];
              v540[5] = v120;
              v541 = v92[6].i64[0];
              v121 = v92[1];
              v540[0] = *v92;
              v540[1] = v121;
              v122 = v92[2];
              v540[3] = v92[3];
              v540[2] = v122;
              sub_1AF64B948(0, 0, v540);
              v123 = *a8;
              result = swift_isUniquelyReferenced_nonNull_native();
              *a8 = v123;
              if ((result & 1) == 0)
              {
                result = sub_1AFC0DCC4(v123);
                v123 = result;
                *a8 = result;
              }

              *(v123 + 120) = 0;
            }

            else
            {
              v94 = *a5;
              v94.i32[3] = v511;
              v95 = vsubq_f32(v94, v92[1]);
              v96 = vmulq_f32(v95, v95);
              v97 = v96.f32[2] + vaddv_f32(*v96.f32);
              if (v97 < v14)
              {
                v98 = *a8;
                v99 = *(*a8 + 16);
                v100 = sqrtf(v97);
                if (v99)
                {
                  v101 = i + 112 * v99;
                  if (*(v98 + v101 + 120) <= v100)
                  {
                    if (v99 < v9)
                    {
                      v135 = v92[5];
                      v517 = v92[4];
                      v518 = v135;
                      v519 = v92[6].i64[0];
                      v136 = v92[1];
                      v513 = *v92;
                      v514 = v136;
                      v137 = v92[3];
                      v515 = v92[2];
                      v516 = v137;
                      v138 = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v98;
                      if ((v138 & 1) == 0)
                      {
                        v98 = sub_1AF427DB8(0, *(v98 + 16) + 1, 1, v98);
                        *a8 = v98;
                      }

                      v140 = *(v98 + 16);
                      v139 = *(v98 + 24);
                      if (v140 >= v139 >> 1)
                      {
                        v98 = sub_1AF427DB8(v139 > 1, v140 + 1, 1, v98);
                        *a8 = v98;
                      }

                      *(v98 + 16) = v140 + 1;
                      v141 = v98 + 112 * v140;
                      v142 = v513;
                      v143 = v515;
                      *(v141 + 48) = v514;
                      *(v141 + 64) = v143;
                      *(v141 + 32) = v142;
                      v144 = v516;
                      v145 = v517;
                      v146 = v518;
                      *(v141 + 128) = v519;
                      *(v141 + 96) = v145;
                      *(v141 + 112) = v146;
                      *(v141 + 80) = v144;
                      v147 = *a8;
                      v148 = *(*a8 + 16);
                      result = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v147;
                      if ((result & 1) == 0)
                      {
                        result = sub_1AFC0DCC4(v147);
                        v147 = result;
                        *a8 = result;
                      }

                      *(v147 + 112 * v148 + 8) = v100;
                    }
                  }

                  else
                  {
                    if (v99 == v9)
                    {
                      result = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v98;
                      if ((result & 1) == 0)
                      {
                        result = sub_1AFC0DCC4(v98);
                        v98 = result;
                        *a8 = result;
                      }

                      *(v98 + v101 + 120) = v100 + 999.99;
                      v98 = *a8;
                      v99 = *(*a8 + 16);
                      v94.i32[3] = v511;
                    }

                    v102 = 0;
                    v103 = 1;
                    do
                    {
                      if (v99 + v103 == 1)
                      {
                        v511 = v94.i32[3];
                        goto LABEL_69;
                      }

                      v104 = *(v98 + v102 + 120);
                      --v103;
                      v102 += 112;
                    }

                    while (v100 >= v104);
                    if (v99 == v9)
                    {
                      v105 = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v98;
                      if ((v105 & 1) == 0)
                      {
                        v98 = sub_1AFC0DCC4(v98);
                        *a8 = v98;
                      }

                      --*(v98 + 16);
                      *a8 = v98;
                      v99 = *(v98 + 16);
                    }

                    if (v103 + v99)
                    {
                      v149 = v92[5];
                      v546 = v92[4];
                      v547 = v149;
                      v548 = v92[6].i64[0];
                      v150 = v92[1];
                      v542 = *v92;
                      v543 = v150;
                      v151 = v92[2];
                      v545 = v92[3];
                      v544 = v151;
                      sub_1AF64B948(-v103, -v103, &v542);
                    }

                    else
                    {
                      v106 = v92[5];
                      v517 = v92[4];
                      v518 = v106;
                      v519 = v92[6].i64[0];
                      v107 = v92[1];
                      v513 = *v92;
                      v514 = v107;
                      v108 = v92[3];
                      v515 = v92[2];
                      v516 = v108;
                      v109 = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v98;
                      if ((v109 & 1) == 0)
                      {
                        v98 = sub_1AF427DB8(0, *(v98 + 16) + 1, 1, v98);
                        *a8 = v98;
                      }

                      v111 = *(v98 + 16);
                      v110 = *(v98 + 24);
                      if (v111 >= v110 >> 1)
                      {
                        v98 = sub_1AF427DB8(v110 > 1, v111 + 1, 1, v98);
                        *a8 = v98;
                      }

                      *(v98 + 16) = v111 + 1;
                      v112 = v98 + 112 * v111;
                      v113 = v513;
                      v114 = v515;
                      *(v112 + 48) = v514;
                      *(v112 + 64) = v114;
                      *(v112 + 32) = v113;
                      v115 = v516;
                      v116 = v517;
                      v117 = v518;
                      *(v112 + 128) = v519;
                      *(v112 + 96) = v116;
                      *(v112 + 112) = v117;
                      *(v112 + 80) = v115;
                      v9 = a9;
                    }

                    v152 = *a8;
                    result = swift_isUniquelyReferenced_nonNull_native();
                    *a8 = v152;
                    if ((result & 1) == 0)
                    {
                      result = sub_1AFC0DCC4(v152);
                      v152 = result;
                      *a8 = result;
                    }

                    *(v152 + v102 + 8) = v100;
                  }
                }

                else
                {
                  v124 = v92[5];
                  v517 = v92[4];
                  v518 = v124;
                  v519 = v92[6].i64[0];
                  v125 = v92[1];
                  v513 = *v92;
                  v514 = v125;
                  v126 = v92[3];
                  v515 = v92[2];
                  v516 = v126;
                  result = swift_isUniquelyReferenced_nonNull_native();
                  *a8 = v98;
                  if ((result & 1) == 0)
                  {
                    result = sub_1AF427DB8(0, *(v98 + 16) + 1, 1, v98);
                    v98 = result;
                    *a8 = result;
                  }

                  v128 = *(v98 + 16);
                  v127 = *(v98 + 24);
                  if (v128 >= v127 >> 1)
                  {
                    result = sub_1AF427DB8(v127 > 1, v128 + 1, 1, v98);
                    v98 = result;
                    *a8 = result;
                  }

                  *(v98 + 16) = v128 + 1;
                  v129 = v98 + 112 * v128;
                  v130 = v513;
                  v131 = v515;
                  *(v129 + 48) = v514;
                  *(v129 + 64) = v131;
                  *(v129 + 32) = v130;
                  v132 = v516;
                  v133 = v517;
                  v134 = v518;
                  *(v129 + 128) = v519;
                  *(v129 + 96) = v133;
                  *(v129 + 112) = v134;
                  *(v129 + 80) = v132;
                  *(*a8 + 120) = v100;
                }
              }
            }

LABEL_69:
            ;
          }

          v20 = v90++ == v499;
          v82 = a4;
        }

        while (!v20);
        v20 = v493++ == v484;
      }

      while (!v20);
    }

    v86 = v479;
    v494 = v479 + v477;
    if ((v479 + v477) >= v82[3].i64[1])
    {
      v87 = v480 >= 0;
      v492 = v480 + 1;
      if (v480 + 1 < 0)
      {
        v88 = 0;
        v89 = 1;
        goto LABEL_178;
      }

      goto LABEL_176;
    }

    do
    {
      v153 = v482;
      do
      {
        for (k = *(v504 + 16 * v153 * v503 + 16 * v82[3].i64[1] * v490 + 16 * v494); (k & 0x8000000000000000) == 0; k = v155[6].i64[0])
        {
          v155 = (a6 + 112 * k);
          if (v155->i64[0])
          {
            v156 = v155->i64[0] == a5;
          }

          else
          {
            v156 = 0;
          }

          if (v156)
          {
            v181 = *a8;
            if (*(*a8 + 16) == v9)
            {
              v182 = swift_isUniquelyReferenced_nonNull_native();
              *a8 = v181;
              if ((v182 & 1) == 0)
              {
                v181 = sub_1AFC0DCC4(v181);
                *a8 = v181;
              }

              --*(v181 + 16);
              *a8 = v181;
            }

            v183 = v155[5];
            v536[4] = v155[4];
            v536[5] = v183;
            v537 = v155[6].i64[0];
            v184 = v155[1];
            v536[0] = *v155;
            v536[1] = v184;
            v185 = v155[2];
            v536[3] = v155[3];
            v536[2] = v185;
            sub_1AF64B948(0, 0, v536);
            v186 = *a8;
            result = swift_isUniquelyReferenced_nonNull_native();
            *a8 = v186;
            if ((result & 1) == 0)
            {
              result = sub_1AFC0DCC4(v186);
              v186 = result;
              *a8 = result;
            }

            *(v186 + 120) = 0;
          }

          else
          {
            v157 = *a5;
            v157.i32[3] = v510;
            v158 = vsubq_f32(v157, v155[1]);
            v159 = vmulq_f32(v158, v158);
            v160 = v159.f32[2] + vaddv_f32(*v159.f32);
            if (v160 < v14)
            {
              v161 = *a8;
              v162 = *(*a8 + 16);
              v163 = sqrtf(v160);
              if (v162)
              {
                v164 = i + 112 * v162;
                if (*(v161 + v164 + 120) <= v163)
                {
                  if (v162 < v9)
                  {
                    v198 = v155[5];
                    v517 = v155[4];
                    v518 = v198;
                    v519 = v155[6].i64[0];
                    v199 = v155[1];
                    v513 = *v155;
                    v514 = v199;
                    v200 = v155[3];
                    v515 = v155[2];
                    v516 = v200;
                    v201 = swift_isUniquelyReferenced_nonNull_native();
                    *a8 = v161;
                    if ((v201 & 1) == 0)
                    {
                      v161 = sub_1AF427DB8(0, *(v161 + 16) + 1, 1, v161);
                      *a8 = v161;
                    }

                    v203 = *(v161 + 16);
                    v202 = *(v161 + 24);
                    if (v203 >= v202 >> 1)
                    {
                      v161 = sub_1AF427DB8(v202 > 1, v203 + 1, 1, v161);
                      *a8 = v161;
                    }

                    *(v161 + 16) = v203 + 1;
                    v204 = v161 + 112 * v203;
                    v205 = v513;
                    v206 = v515;
                    *(v204 + 48) = v514;
                    *(v204 + 64) = v206;
                    *(v204 + 32) = v205;
                    v207 = v516;
                    v208 = v517;
                    v209 = v518;
                    *(v204 + 128) = v519;
                    *(v204 + 96) = v208;
                    *(v204 + 112) = v209;
                    *(v204 + 80) = v207;
                    v210 = *a8;
                    v211 = *(*a8 + 16);
                    result = swift_isUniquelyReferenced_nonNull_native();
                    *a8 = v210;
                    if ((result & 1) == 0)
                    {
                      result = sub_1AFC0DCC4(v210);
                      v210 = result;
                      *a8 = result;
                    }

                    *(v210 + 112 * v211 + 8) = v163;
                  }
                }

                else
                {
                  if (v162 == v9)
                  {
                    result = swift_isUniquelyReferenced_nonNull_native();
                    *a8 = v161;
                    if ((result & 1) == 0)
                    {
                      result = sub_1AFC0DCC4(v161);
                      v161 = result;
                      *a8 = result;
                    }

                    *(v161 + v164 + 120) = v163 + 999.99;
                    v161 = *a8;
                    v162 = *(*a8 + 16);
                    v157.i32[3] = v510;
                  }

                  v165 = 0;
                  v166 = 1;
                  do
                  {
                    if (v162 + v166 == 1)
                    {
                      v510 = v157.i32[3];
                      goto LABEL_124;
                    }

                    v167 = *(v161 + v165 + 120);
                    --v166;
                    v165 += 112;
                  }

                  while (v163 >= v167);
                  if (v162 == v9)
                  {
                    v168 = swift_isUniquelyReferenced_nonNull_native();
                    *a8 = v161;
                    if ((v168 & 1) == 0)
                    {
                      v161 = sub_1AFC0DCC4(v161);
                      *a8 = v161;
                    }

                    --*(v161 + 16);
                    *a8 = v161;
                    v162 = *(v161 + 16);
                  }

                  if (v166 + v162)
                  {
                    v212 = v155[5];
                    v538[4] = v155[4];
                    v538[5] = v212;
                    v539 = v155[6].i64[0];
                    v213 = v155[1];
                    v538[0] = *v155;
                    v538[1] = v213;
                    v214 = v155[2];
                    v538[3] = v155[3];
                    v538[2] = v214;
                    sub_1AF64B948(-v166, -v166, v538);
                  }

                  else
                  {
                    v169 = v155[5];
                    v517 = v155[4];
                    v518 = v169;
                    v519 = v155[6].i64[0];
                    v170 = v155[1];
                    v513 = *v155;
                    v514 = v170;
                    v171 = v155[3];
                    v515 = v155[2];
                    v516 = v171;
                    v172 = swift_isUniquelyReferenced_nonNull_native();
                    *a8 = v161;
                    if ((v172 & 1) == 0)
                    {
                      v161 = sub_1AF427DB8(0, *(v161 + 16) + 1, 1, v161);
                      *a8 = v161;
                    }

                    v174 = *(v161 + 16);
                    v173 = *(v161 + 24);
                    if (v174 >= v173 >> 1)
                    {
                      v161 = sub_1AF427DB8(v173 > 1, v174 + 1, 1, v161);
                      *a8 = v161;
                    }

                    *(v161 + 16) = v174 + 1;
                    v175 = v161 + 112 * v174;
                    v176 = v513;
                    v177 = v515;
                    *(v175 + 48) = v514;
                    *(v175 + 64) = v177;
                    *(v175 + 32) = v176;
                    v178 = v516;
                    v179 = v517;
                    v180 = v518;
                    *(v175 + 128) = v519;
                    *(v175 + 96) = v179;
                    *(v175 + 112) = v180;
                    *(v175 + 80) = v178;
                    v9 = a9;
                  }

                  v215 = *a8;
                  result = swift_isUniquelyReferenced_nonNull_native();
                  *a8 = v215;
                  if ((result & 1) == 0)
                  {
                    result = sub_1AFC0DCC4(v215);
                    v215 = result;
                    *a8 = result;
                  }

                  *(v215 + v165 + 8) = v163;
                }
              }

              else
              {
                v187 = v155[5];
                v517 = v155[4];
                v518 = v187;
                v519 = v155[6].i64[0];
                v188 = v155[1];
                v513 = *v155;
                v514 = v188;
                v189 = v155[3];
                v515 = v155[2];
                v516 = v189;
                result = swift_isUniquelyReferenced_nonNull_native();
                *a8 = v161;
                if ((result & 1) == 0)
                {
                  result = sub_1AF427DB8(0, *(v161 + 16) + 1, 1, v161);
                  v161 = result;
                  *a8 = result;
                }

                v191 = *(v161 + 16);
                v190 = *(v161 + 24);
                if (v191 >= v190 >> 1)
                {
                  result = sub_1AF427DB8(v190 > 1, v191 + 1, 1, v161);
                  v161 = result;
                  *a8 = result;
                }

                *(v161 + 16) = v191 + 1;
                v192 = v161 + 112 * v191;
                v193 = v513;
                v194 = v515;
                *(v192 + 48) = v514;
                *(v192 + 64) = v194;
                *(v192 + 32) = v193;
                v195 = v516;
                v196 = v517;
                v197 = v518;
                *(v192 + 128) = v519;
                *(v192 + 96) = v196;
                *(v192 + 112) = v197;
                *(v192 + 80) = v195;
                *(*a8 + 120) = v163;
              }
            }
          }

LABEL_124:
          ;
        }

        v20 = v153++ == v499;
        v82 = a4;
      }

      while (!v20);
      v20 = v490++ == v484;
    }

    while (!v20);
    v87 = 1;
    v492 = v480 + 1;
    if (v480 + 1 >= 0)
    {
      v86 = v479;
LABEL_176:
      v89 = 0;
      v88 = v492;
      goto LABEL_178;
    }

    v88 = 0;
    v89 = 1;
    v86 = v479;
LABEL_178:
    v216 = v82[5].i64[0];
    v217 = v494 - 1;
    if ((v494 - 1) >= v216)
    {
      v218 = v82[5].i64[0];
    }

    else
    {
      v218 = v494 - 1;
    }

    v491 = v218;
    if (v218 >= v88)
    {
      v219 = vmovn_s64(vcltzq_s64(v475));
      v220 = v82[5].i64[1];
      if (v219.i8[0])
      {
        if (v489 >= v220)
        {
          if (v219.i8[4])
          {
            if (v478 >= v82[4].i64[1])
            {
              goto LABEL_182;
            }

            v473 = v89;
            v472 = v494 - 1;
            v483 = 0;
            goto LABEL_264;
          }

          v473 = v89;
          v472 = v494 - 1;
          v483 = 0;
        }

        else
        {
          if (v219.i8[4])
          {
            if (v478 >= v82[4].i64[1])
            {
              goto LABEL_182;
            }

            v473 = v89;
            v472 = v494 - 1;
            v483 = 0;
            v220 = v489;
            goto LABEL_264;
          }

          v473 = v89;
          v472 = v494 - 1;
          v483 = 0;
          v220 = v489;
        }
      }

      else
      {
        if (v489 < v220)
        {
          v220 = v489;
        }

        if (v219.i8[4])
        {
          if (v478 >= v82[4].i64[1])
          {
            goto LABEL_182;
          }

          v473 = v89;
          v472 = v494 - 1;
          v483 = v488;
          goto LABEL_264;
        }

        v473 = v89;
        v472 = v494 - 1;
        v483 = v488;
      }

      v485 = v88;
      v500 = v220;
      do
      {
        v481 = v88;
        v495 = v504 + 16 * v476 * v503 + 16 * v88;
        v221 = v483;
        do
        {
          for (m = *(v495 + 16 * v82[3].i64[1] * v221); (m & 0x8000000000000000) == 0; m = v223[6].i64[0])
          {
            v223 = (a6 + 112 * m);
            if (v223->i64[0])
            {
              v224 = v223->i64[0] == a5;
            }

            else
            {
              v224 = 0;
            }

            if (v224)
            {
              v248 = *a8;
              if (*(*a8 + 16) == v9)
              {
                v249 = swift_isUniquelyReferenced_nonNull_native();
                *a8 = v248;
                if ((v249 & 1) == 0)
                {
                  v248 = sub_1AFC0DCC4(v248);
                  *a8 = v248;
                }

                --*(v248 + 16);
                *a8 = v248;
              }

              v250 = v223[5];
              v532[4] = v223[4];
              v532[5] = v250;
              v533 = v223[6].i64[0];
              v251 = v223[1];
              v532[0] = *v223;
              v532[1] = v251;
              v252 = v223[2];
              v532[3] = v223[3];
              v532[2] = v252;
              sub_1AF64B948(0, 0, v532);
              v253 = *a8;
              result = swift_isUniquelyReferenced_nonNull_native();
              *a8 = v253;
              if ((result & 1) == 0)
              {
                result = sub_1AFC0DCC4(v253);
                v253 = result;
                *a8 = result;
              }

              *(v253 + 120) = 0;
            }

            else
            {
              v225 = *a5;
              v225.i32[3] = v509;
              v226 = vsubq_f32(v225, v223[1]);
              v227 = vmulq_f32(v226, v226);
              v228 = v227.f32[2] + vaddv_f32(*v227.f32);
              if (v228 < v14)
              {
                v229 = *a8;
                v230 = *(*a8 + 16);
                v231 = sqrtf(v228);
                if (v230)
                {
                  v232 = i + 112 * v230;
                  if (*(v229 + v232 + 120) <= v231)
                  {
                    if (v230 < v9)
                    {
                      v265 = v223[5];
                      v517 = v223[4];
                      v518 = v265;
                      v519 = v223[6].i64[0];
                      v266 = v223[1];
                      v513 = *v223;
                      v514 = v266;
                      v267 = v223[3];
                      v515 = v223[2];
                      v516 = v267;
                      v268 = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v229;
                      if ((v268 & 1) == 0)
                      {
                        v229 = sub_1AF427DB8(0, *(v229 + 16) + 1, 1, v229);
                        *a8 = v229;
                      }

                      v270 = *(v229 + 16);
                      v269 = *(v229 + 24);
                      if (v270 >= v269 >> 1)
                      {
                        v229 = sub_1AF427DB8(v269 > 1, v270 + 1, 1, v229);
                        *a8 = v229;
                      }

                      *(v229 + 16) = v270 + 1;
                      v271 = v229 + 112 * v270;
                      v272 = v513;
                      v273 = v515;
                      *(v271 + 48) = v514;
                      *(v271 + 64) = v273;
                      *(v271 + 32) = v272;
                      v274 = v516;
                      v275 = v517;
                      v276 = v518;
                      *(v271 + 128) = v519;
                      *(v271 + 96) = v275;
                      *(v271 + 112) = v276;
                      *(v271 + 80) = v274;
                      v277 = *a8;
                      v278 = *(*a8 + 16);
                      result = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v277;
                      if ((result & 1) == 0)
                      {
                        result = sub_1AFC0DCC4(v277);
                        v277 = result;
                        *a8 = result;
                      }

                      *(v277 + 112 * v278 + 8) = v231;
                    }
                  }

                  else
                  {
                    if (v230 == v9)
                    {
                      result = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v229;
                      if ((result & 1) == 0)
                      {
                        result = sub_1AFC0DCC4(v229);
                        v229 = result;
                        *a8 = result;
                      }

                      *(v229 + v232 + 120) = v231 + 999.99;
                      v229 = *a8;
                      v230 = *(*a8 + 16);
                      v225.i32[3] = v509;
                    }

                    v233 = 0;
                    v234 = 1;
                    do
                    {
                      if (v230 + v234 == 1)
                      {
                        v509 = v225.i32[3];
                        goto LABEL_212;
                      }

                      v235 = *(v229 + v233 + 120);
                      --v234;
                      v233 += 112;
                    }

                    while (v231 >= v235);
                    if (v230 == v9)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v229 = sub_1AFC0DCC4(v229);
                      }

                      --*(v229 + 16);
                      *a8 = v229;
                      v230 = *(v229 + 16);
                    }

                    if (v234 + v230)
                    {
                      v279 = v223[5];
                      v534[4] = v223[4];
                      v534[5] = v279;
                      v535 = v223[6].i64[0];
                      v280 = v223[1];
                      v534[0] = *v223;
                      v534[1] = v280;
                      v281 = v223[2];
                      v534[3] = v223[3];
                      v534[2] = v281;
                      sub_1AF64B948(-v234, -v234, v534);
                    }

                    else
                    {
                      v236 = v223[5];
                      v517 = v223[4];
                      v518 = v236;
                      v519 = v223[6].i64[0];
                      v237 = v223[1];
                      v513 = *v223;
                      v514 = v237;
                      v238 = v223[3];
                      v515 = v223[2];
                      v516 = v238;
                      v239 = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v229;
                      if ((v239 & 1) == 0)
                      {
                        v229 = sub_1AF427DB8(0, *(v229 + 16) + 1, 1, v229);
                        *a8 = v229;
                      }

                      v241 = *(v229 + 16);
                      v240 = *(v229 + 24);
                      if (v241 >= v240 >> 1)
                      {
                        v229 = sub_1AF427DB8(v240 > 1, v241 + 1, 1, v229);
                        *a8 = v229;
                      }

                      *(v229 + 16) = v241 + 1;
                      v242 = v229 + 112 * v241;
                      v243 = v513;
                      v244 = v515;
                      *(v242 + 48) = v514;
                      *(v242 + 64) = v244;
                      *(v242 + 32) = v243;
                      v245 = v516;
                      v246 = v517;
                      v247 = v518;
                      *(v242 + 128) = v519;
                      *(v242 + 96) = v246;
                      *(v242 + 112) = v247;
                      *(v242 + 80) = v245;
                      v9 = a9;
                    }

                    v282 = *a8;
                    result = swift_isUniquelyReferenced_nonNull_native();
                    *a8 = v282;
                    if ((result & 1) == 0)
                    {
                      result = sub_1AFC0DCC4(v282);
                      v282 = result;
                      *a8 = result;
                    }

                    *(v282 + v233 + 8) = v231;
                  }
                }

                else
                {
                  v254 = v223[5];
                  v517 = v223[4];
                  v518 = v254;
                  v519 = v223[6].i64[0];
                  v255 = v223[1];
                  v513 = *v223;
                  v514 = v255;
                  v256 = v223[3];
                  v515 = v223[2];
                  v516 = v256;
                  result = swift_isUniquelyReferenced_nonNull_native();
                  *a8 = v229;
                  if ((result & 1) == 0)
                  {
                    result = sub_1AF427DB8(0, *(v229 + 16) + 1, 1, v229);
                    v229 = result;
                    *a8 = result;
                  }

                  v258 = *(v229 + 16);
                  v257 = *(v229 + 24);
                  if (v258 >= v257 >> 1)
                  {
                    result = sub_1AF427DB8(v257 > 1, v258 + 1, 1, v229);
                    v229 = result;
                    *a8 = result;
                  }

                  *(v229 + 16) = v258 + 1;
                  v259 = v229 + 112 * v258;
                  v260 = v513;
                  v261 = v515;
                  *(v259 + 48) = v514;
                  *(v259 + 64) = v261;
                  *(v259 + 32) = v260;
                  v262 = v516;
                  v263 = v517;
                  v264 = v518;
                  *(v259 + 128) = v519;
                  *(v259 + 96) = v263;
                  *(v259 + 112) = v264;
                  *(v259 + 80) = v262;
                  *(*a8 + 120) = v231;
                }
              }
            }

LABEL_212:
            ;
          }

          v220 = v500;
          v20 = v221++ == v500;
          v82 = a4;
        }

        while (!v20);
        v88 = v481 + 1;
      }

      while (v481 != v491);
      if (v478 >= a4[4].i64[1])
      {
LABEL_320:
        v216 = v82[5].i64[0];
        if (v473)
        {
          v345 = v472;
          v86 = v479;
          if (v472 < v216)
          {
            if (v472 < 0)
            {
              goto LABEL_397;
            }

            v492 = 0;
LABEL_326:
            v87 = 1;
            v216 = v345;
            goto LABEL_331;
          }

          if (v216 < 0)
          {
            goto LABEL_397;
          }

          v492 = 0;
        }

        else
        {
          v345 = v472;
          v86 = v479;
          if (v472 < v216)
          {
            if (v472 < v492)
            {
              goto LABEL_397;
            }

            goto LABEL_326;
          }

          if (v216 < v492)
          {
            goto LABEL_397;
          }
        }

        v87 = 1;
        goto LABEL_331;
      }

      v88 = v485;
LABEL_264:
      v501 = v220;
      do
      {
        v486 = v88;
        v283 = v483;
        v496 = v504 + 16 * v478 * v503 + 16 * v88;
        do
        {
          for (n = *(v496 + 16 * v82[3].i64[1] * v283); (n & 0x8000000000000000) == 0; n = v285[6].i64[0])
          {
            v285 = (a6 + 112 * n);
            if (v285->i64[0])
            {
              v286 = v285->i64[0] == a5;
            }

            else
            {
              v286 = 0;
            }

            if (v286)
            {
              v310 = *a8;
              if (*(*a8 + 16) == v9)
              {
                v311 = swift_isUniquelyReferenced_nonNull_native();
                *a8 = v310;
                if ((v311 & 1) == 0)
                {
                  v310 = sub_1AFC0DCC4(v310);
                  *a8 = v310;
                }

                --*(v310 + 16);
                *a8 = v310;
              }

              v312 = v285[5];
              v528[4] = v285[4];
              v528[5] = v312;
              v529 = v285[6].i64[0];
              v313 = v285[1];
              v528[0] = *v285;
              v528[1] = v313;
              v314 = v285[2];
              v528[3] = v285[3];
              v528[2] = v314;
              sub_1AF64B948(0, 0, v528);
              v315 = *a8;
              result = swift_isUniquelyReferenced_nonNull_native();
              *a8 = v315;
              if ((result & 1) == 0)
              {
                result = sub_1AFC0DCC4(v315);
                v315 = result;
                *a8 = result;
              }

              *(v315 + 120) = 0;
            }

            else
            {
              v287 = *a5;
              v287.i32[3] = v508;
              v288 = vsubq_f32(v287, v285[1]);
              v289 = vmulq_f32(v288, v288);
              v290 = v289.f32[2] + vaddv_f32(*v289.f32);
              if (v290 < v14)
              {
                v291 = *a8;
                v292 = *(*a8 + 16);
                v293 = sqrtf(v290);
                if (v292)
                {
                  v294 = i + 112 * v292;
                  if (*(v291 + v294 + 120) <= v293)
                  {
                    if (v292 < v9)
                    {
                      v327 = v285[5];
                      v517 = v285[4];
                      v518 = v327;
                      v519 = v285[6].i64[0];
                      v328 = v285[1];
                      v513 = *v285;
                      v514 = v328;
                      v329 = v285[3];
                      v515 = v285[2];
                      v516 = v329;
                      v330 = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v291;
                      if ((v330 & 1) == 0)
                      {
                        v291 = sub_1AF427DB8(0, *(v291 + 16) + 1, 1, v291);
                        *a8 = v291;
                      }

                      v332 = *(v291 + 16);
                      v331 = *(v291 + 24);
                      if (v332 >= v331 >> 1)
                      {
                        v291 = sub_1AF427DB8(v331 > 1, v332 + 1, 1, v291);
                        *a8 = v291;
                      }

                      *(v291 + 16) = v332 + 1;
                      v333 = v291 + 112 * v332;
                      v334 = v513;
                      v335 = v515;
                      *(v333 + 48) = v514;
                      *(v333 + 64) = v335;
                      *(v333 + 32) = v334;
                      v336 = v516;
                      v337 = v517;
                      v338 = v518;
                      *(v333 + 128) = v519;
                      *(v333 + 96) = v337;
                      *(v333 + 112) = v338;
                      *(v333 + 80) = v336;
                      v339 = *a8;
                      v340 = *(*a8 + 16);
                      result = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v339;
                      if ((result & 1) == 0)
                      {
                        result = sub_1AFC0DCC4(v339);
                        v339 = result;
                        *a8 = result;
                      }

                      *(v339 + 112 * v340 + 8) = v293;
                    }
                  }

                  else
                  {
                    if (v292 == v9)
                    {
                      result = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v291;
                      if ((result & 1) == 0)
                      {
                        result = sub_1AFC0DCC4(v291);
                        v291 = result;
                        *a8 = result;
                      }

                      *(v291 + v294 + 120) = v293 + 999.99;
                      v291 = *a8;
                      v292 = *(*a8 + 16);
                      v287.i32[3] = v508;
                    }

                    v295 = 0;
                    v296 = 1;
                    do
                    {
                      if (v292 + v296 == 1)
                      {
                        v508 = v287.i32[3];
                        goto LABEL_270;
                      }

                      v297 = *(v291 + v295 + 120);
                      --v296;
                      v295 += 112;
                    }

                    while (v293 >= v297);
                    if (v292 == v9)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v291 = sub_1AFC0DCC4(v291);
                      }

                      --*(v291 + 16);
                      *a8 = v291;
                      v292 = *(v291 + 16);
                    }

                    if (v296 + v292)
                    {
                      v341 = v285[5];
                      v530[4] = v285[4];
                      v530[5] = v341;
                      v531 = v285[6].i64[0];
                      v342 = v285[1];
                      v530[0] = *v285;
                      v530[1] = v342;
                      v343 = v285[2];
                      v530[3] = v285[3];
                      v530[2] = v343;
                      sub_1AF64B948(-v296, -v296, v530);
                    }

                    else
                    {
                      v298 = v285[5];
                      v517 = v285[4];
                      v518 = v298;
                      v519 = v285[6].i64[0];
                      v299 = v285[1];
                      v513 = *v285;
                      v514 = v299;
                      v300 = v285[3];
                      v515 = v285[2];
                      v516 = v300;
                      v301 = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v291;
                      if ((v301 & 1) == 0)
                      {
                        v291 = sub_1AF427DB8(0, *(v291 + 16) + 1, 1, v291);
                        *a8 = v291;
                      }

                      v303 = *(v291 + 16);
                      v302 = *(v291 + 24);
                      if (v303 >= v302 >> 1)
                      {
                        v291 = sub_1AF427DB8(v302 > 1, v303 + 1, 1, v291);
                        *a8 = v291;
                      }

                      *(v291 + 16) = v303 + 1;
                      v304 = v291 + 112 * v303;
                      v305 = v513;
                      v306 = v515;
                      *(v304 + 48) = v514;
                      *(v304 + 64) = v306;
                      *(v304 + 32) = v305;
                      v307 = v516;
                      v308 = v517;
                      v309 = v518;
                      *(v304 + 128) = v519;
                      *(v304 + 96) = v308;
                      *(v304 + 112) = v309;
                      *(v304 + 80) = v307;
                      v9 = a9;
                    }

                    v344 = *a8;
                    result = swift_isUniquelyReferenced_nonNull_native();
                    *a8 = v344;
                    if ((result & 1) == 0)
                    {
                      result = sub_1AFC0DCC4(v344);
                      v344 = result;
                      *a8 = result;
                    }

                    *(v344 + v295 + 8) = v293;
                  }
                }

                else
                {
                  v316 = v285[5];
                  v517 = v285[4];
                  v518 = v316;
                  v519 = v285[6].i64[0];
                  v317 = v285[1];
                  v513 = *v285;
                  v514 = v317;
                  v318 = v285[3];
                  v515 = v285[2];
                  v516 = v318;
                  result = swift_isUniquelyReferenced_nonNull_native();
                  *a8 = v291;
                  if ((result & 1) == 0)
                  {
                    result = sub_1AF427DB8(0, *(v291 + 16) + 1, 1, v291);
                    v291 = result;
                    *a8 = result;
                  }

                  v320 = *(v291 + 16);
                  v319 = *(v291 + 24);
                  if (v320 >= v319 >> 1)
                  {
                    result = sub_1AF427DB8(v319 > 1, v320 + 1, 1, v291);
                    v291 = result;
                    *a8 = result;
                  }

                  *(v291 + 16) = v320 + 1;
                  v321 = v291 + 112 * v320;
                  v322 = v513;
                  v323 = v515;
                  *(v321 + 48) = v514;
                  *(v321 + 64) = v323;
                  *(v321 + 32) = v322;
                  v324 = v516;
                  v325 = v517;
                  v326 = v518;
                  *(v321 + 128) = v519;
                  *(v321 + 96) = v325;
                  *(v321 + 112) = v326;
                  *(v321 + 80) = v324;
                  *(*a8 + 120) = v293;
                }
              }
            }

LABEL_270:
            ;
          }

          v20 = v283++ == v501;
          v82 = a4;
        }

        while (!v20);
        v88 = v486 + 1;
      }

      while (v486 != v491);
      goto LABEL_320;
    }

LABEL_182:
    if (v89)
    {
      if (v217 >= v216)
      {
        if (v216 < 0)
        {
          goto LABEL_334;
        }

        v492 = 0;
      }

      else
      {
        if (v217 < 0)
        {
          goto LABEL_334;
        }

        v492 = 0;
        v216 = v494 - 1;
      }
    }

    else
    {
      v216 = v218;
      if (v218 < v492)
      {
        goto LABEL_334;
      }
    }

LABEL_331:
    v346 = v82[6].i64[0];
    if (v478 - 1 < v346)
    {
      v346 = v478 - 1;
    }

    v502 = v346;
    if (v346 >= ((v476 + 1) & ~((v476 + 1) >> 63)))
    {
      v487 = v216;
      if ((vmovn_s64(vcltzq_s64(v475)).u32[0] & 1) == 0)
      {
        v497 = v492;
        do
        {
          v347 = (v476 + 1) & ~((v476 + 1) >> 63);
          do
          {
            for (ii = *(v504 + 16 * v347 * v503 + 16 * v82[3].i64[1] * v488 + 16 * v497); (ii & 0x8000000000000000) == 0; ii = v349[6].i64[0])
            {
              v349 = (a6 + 112 * ii);
              if (v349->i64[0])
              {
                v350 = v349->i64[0] == a5;
              }

              else
              {
                v350 = 0;
              }

              if (v350)
              {
                v374 = *a8;
                if (*(*a8 + 16) == v9)
                {
                  v375 = swift_isUniquelyReferenced_nonNull_native();
                  *a8 = v374;
                  if ((v375 & 1) == 0)
                  {
                    v374 = sub_1AFC0DCC4(v374);
                    *a8 = v374;
                  }

                  --*(v374 + 16);
                  *a8 = v374;
                }

                v376 = v349[5];
                v524[4] = v349[4];
                v524[5] = v376;
                v525 = v349[6].i64[0];
                v377 = v349[1];
                v524[0] = *v349;
                v524[1] = v377;
                v378 = v349[3];
                v524[2] = v349[2];
                v524[3] = v378;
                sub_1AF64B948(0, 0, v524);
                v379 = *a8;
                result = swift_isUniquelyReferenced_nonNull_native();
                *a8 = v379;
                if ((result & 1) == 0)
                {
                  result = sub_1AFC0DCC4(v379);
                  v379 = result;
                  *a8 = result;
                }

                *(v379 + 120) = 0;
              }

              else
              {
                v351 = *a5;
                v351.i32[3] = v507;
                v352 = vsubq_f32(v351, v349[1]);
                v353 = vmulq_f32(v352, v352);
                v354 = v353.f32[2] + vaddv_f32(*v353.f32);
                if (v354 < v14)
                {
                  v355 = *a8;
                  v356 = *(*a8 + 16);
                  v357 = sqrtf(v354);
                  if (v356)
                  {
                    v358 = i + 112 * v356;
                    if (*(v355 + v358 + 120) <= v357)
                    {
                      if (v356 < v9)
                      {
                        v391 = v349[5];
                        v517 = v349[4];
                        v518 = v391;
                        v519 = v349[6].i64[0];
                        v392 = v349[1];
                        v513 = *v349;
                        v514 = v392;
                        v393 = v349[3];
                        v515 = v349[2];
                        v516 = v393;
                        v394 = swift_isUniquelyReferenced_nonNull_native();
                        *a8 = v355;
                        if ((v394 & 1) == 0)
                        {
                          v355 = sub_1AF427DB8(0, *(v355 + 16) + 1, 1, v355);
                          *a8 = v355;
                        }

                        v396 = *(v355 + 16);
                        v395 = *(v355 + 24);
                        if (v396 >= v395 >> 1)
                        {
                          v355 = sub_1AF427DB8(v395 > 1, v396 + 1, 1, v355);
                          *a8 = v355;
                        }

                        *(v355 + 16) = v396 + 1;
                        v397 = v355 + 112 * v396;
                        v398 = v513;
                        v399 = v515;
                        *(v397 + 48) = v514;
                        *(v397 + 64) = v399;
                        *(v397 + 32) = v398;
                        v400 = v516;
                        v401 = v517;
                        v402 = v518;
                        *(v397 + 128) = v519;
                        *(v397 + 96) = v401;
                        *(v397 + 112) = v402;
                        *(v397 + 80) = v400;
                        v403 = *a8;
                        v404 = *(*a8 + 16);
                        result = swift_isUniquelyReferenced_nonNull_native();
                        *a8 = v403;
                        if ((result & 1) == 0)
                        {
                          result = sub_1AFC0DCC4(v403);
                          v403 = result;
                          *a8 = result;
                        }

                        *(v403 + 112 * v404 + 8) = v357;
                      }
                    }

                    else
                    {
                      if (v356 == v9)
                      {
                        result = swift_isUniquelyReferenced_nonNull_native();
                        *a8 = v355;
                        if ((result & 1) == 0)
                        {
                          result = sub_1AFC0DCC4(v355);
                          v355 = result;
                          *a8 = result;
                        }

                        *(v355 + v358 + 120) = v357 + 999.99;
                        v355 = *a8;
                        v356 = *(*a8 + 16);
                        v351.i32[3] = v507;
                      }

                      v359 = 0;
                      v360 = 1;
                      do
                      {
                        if (v356 + v360 == 1)
                        {
                          v507 = v351.i32[3];
                          goto LABEL_345;
                        }

                        v361 = *(v355 + v359 + 120);
                        --v360;
                        v359 += 112;
                      }

                      while (v357 >= v361);
                      if (v356 == v9)
                      {
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v355 = sub_1AFC0DCC4(v355);
                        }

                        --*(v355 + 16);
                        *a8 = v355;
                        v356 = *(v355 + 16);
                      }

                      if (v360 + v356)
                      {
                        v405 = v349[5];
                        v526[4] = v349[4];
                        v526[5] = v405;
                        v527 = v349[6].i64[0];
                        v406 = v349[1];
                        v526[0] = *v349;
                        v526[1] = v406;
                        v407 = v349[3];
                        v526[2] = v349[2];
                        v526[3] = v407;
                        sub_1AF64B948(-v360, -v360, v526);
                      }

                      else
                      {
                        v362 = v349[5];
                        v517 = v349[4];
                        v518 = v362;
                        v519 = v349[6].i64[0];
                        v363 = v349[1];
                        v513 = *v349;
                        v514 = v363;
                        v364 = v349[3];
                        v515 = v349[2];
                        v516 = v364;
                        v365 = swift_isUniquelyReferenced_nonNull_native();
                        *a8 = v355;
                        if ((v365 & 1) == 0)
                        {
                          v355 = sub_1AF427DB8(0, *(v355 + 16) + 1, 1, v355);
                          *a8 = v355;
                        }

                        v367 = *(v355 + 16);
                        v366 = *(v355 + 24);
                        if (v367 >= v366 >> 1)
                        {
                          v355 = sub_1AF427DB8(v366 > 1, v367 + 1, 1, v355);
                          *a8 = v355;
                        }

                        *(v355 + 16) = v367 + 1;
                        v368 = v355 + 112 * v367;
                        v369 = v513;
                        v370 = v515;
                        *(v368 + 48) = v514;
                        *(v368 + 64) = v370;
                        *(v368 + 32) = v369;
                        v371 = v516;
                        v372 = v517;
                        v373 = v518;
                        *(v368 + 128) = v519;
                        *(v368 + 96) = v372;
                        *(v368 + 112) = v373;
                        *(v368 + 80) = v371;
                        v9 = a9;
                      }

                      v408 = *a8;
                      result = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v408;
                      if ((result & 1) == 0)
                      {
                        result = sub_1AFC0DCC4(v408);
                        v408 = result;
                        *a8 = result;
                      }

                      *(v408 + v359 + 8) = v357;
                    }
                  }

                  else
                  {
                    v380 = v349[5];
                    v517 = v349[4];
                    v518 = v380;
                    v519 = v349[6].i64[0];
                    v381 = v349[1];
                    v513 = *v349;
                    v514 = v381;
                    v382 = v349[3];
                    v515 = v349[2];
                    v516 = v382;
                    result = swift_isUniquelyReferenced_nonNull_native();
                    *a8 = v355;
                    if ((result & 1) == 0)
                    {
                      result = sub_1AF427DB8(0, *(v355 + 16) + 1, 1, v355);
                      v355 = result;
                      *a8 = result;
                    }

                    v384 = *(v355 + 16);
                    v383 = *(v355 + 24);
                    if (v384 >= v383 >> 1)
                    {
                      result = sub_1AF427DB8(v383 > 1, v384 + 1, 1, v355);
                      v355 = result;
                      *a8 = result;
                    }

                    *(v355 + 16) = v384 + 1;
                    v385 = v355 + 112 * v384;
                    v386 = v513;
                    v387 = v515;
                    *(v385 + 48) = v514;
                    *(v385 + 64) = v387;
                    *(v385 + 32) = v386;
                    v388 = v516;
                    v389 = v517;
                    v390 = v518;
                    *(v385 + 128) = v519;
                    *(v385 + 96) = v389;
                    *(v385 + 112) = v390;
                    *(v385 + 80) = v388;
                    *(*a8 + 120) = v357;
                  }
                }
              }

LABEL_345:
              ;
            }

            v20 = v347++ == v502;
            v82 = a4;
          }

          while (!v20);
          v20 = v497++ == v487;
        }

        while (!v20);
        if (v489 < a4[4].i64[0])
        {
          do
          {
LABEL_403:
            v409 = (v476 + 1) & ~((v476 + 1) >> 63);
            do
            {
              for (jj = *(v504 + 16 * v409 * v503 + 16 * v82[3].i64[1] * v489 + 16 * v492); (jj & 0x8000000000000000) == 0; jj = v411[6].i64[0])
              {
                v411 = (a6 + 112 * jj);
                if (v411->i64[0])
                {
                  v412 = v411->i64[0] == a5;
                }

                else
                {
                  v412 = 0;
                }

                if (v412)
                {
                  v436 = *a8;
                  if (*(*a8 + 16) == v9)
                  {
                    v437 = swift_isUniquelyReferenced_nonNull_native();
                    *a8 = v436;
                    if ((v437 & 1) == 0)
                    {
                      v436 = sub_1AFC0DCC4(v436);
                      *a8 = v436;
                    }

                    --*(v436 + 16);
                    *a8 = v436;
                  }

                  v438 = v411[5];
                  v520[4] = v411[4];
                  v520[5] = v438;
                  v521 = v411[6].i64[0];
                  v439 = v411[1];
                  v520[0] = *v411;
                  v520[1] = v439;
                  v440 = v411[3];
                  v520[2] = v411[2];
                  v520[3] = v440;
                  sub_1AF64B948(0, 0, v520);
                  v441 = *a8;
                  result = swift_isUniquelyReferenced_nonNull_native();
                  *a8 = v441;
                  if ((result & 1) == 0)
                  {
                    result = sub_1AFC0DCC4(v441);
                    v441 = result;
                    *a8 = result;
                  }

                  *(v441 + 120) = 0;
                }

                else
                {
                  v413 = *a5;
                  v413.i32[3] = v506;
                  v414 = vsubq_f32(v413, v411[1]);
                  v415 = vmulq_f32(v414, v414);
                  v416 = v415.f32[2] + vaddv_f32(*v415.f32);
                  if (v416 < v14)
                  {
                    v417 = *a8;
                    v418 = *(*a8 + 16);
                    v419 = sqrtf(v416);
                    if (v418)
                    {
                      v420 = i + 112 * v418;
                      if (*(v417 + v420 + 120) <= v419)
                      {
                        if (v418 < v9)
                        {
                          v453 = v411[5];
                          v517 = v411[4];
                          v518 = v453;
                          v519 = v411[6].i64[0];
                          v454 = v411[1];
                          v513 = *v411;
                          v514 = v454;
                          v455 = v411[3];
                          v515 = v411[2];
                          v516 = v455;
                          v456 = swift_isUniquelyReferenced_nonNull_native();
                          *a8 = v417;
                          if ((v456 & 1) == 0)
                          {
                            v417 = sub_1AF427DB8(0, *(v417 + 16) + 1, 1, v417);
                            *a8 = v417;
                          }

                          v458 = *(v417 + 16);
                          v457 = *(v417 + 24);
                          if (v458 >= v457 >> 1)
                          {
                            v417 = sub_1AF427DB8(v457 > 1, v458 + 1, 1, v417);
                            *a8 = v417;
                          }

                          *(v417 + 16) = v458 + 1;
                          v459 = v417 + 112 * v458;
                          v460 = v513;
                          v461 = v515;
                          *(v459 + 48) = v514;
                          *(v459 + 64) = v461;
                          *(v459 + 32) = v460;
                          v462 = v516;
                          v463 = v517;
                          v464 = v518;
                          *(v459 + 128) = v519;
                          *(v459 + 96) = v463;
                          *(v459 + 112) = v464;
                          *(v459 + 80) = v462;
                          v465 = *a8;
                          v466 = *(*a8 + 16);
                          result = swift_isUniquelyReferenced_nonNull_native();
                          *a8 = v465;
                          if ((result & 1) == 0)
                          {
                            result = sub_1AFC0DCC4(v465);
                            v465 = result;
                            *a8 = result;
                          }

                          *(v465 + 112 * v466 + 8) = v419;
                        }
                      }

                      else
                      {
                        if (v418 == v9)
                        {
                          result = swift_isUniquelyReferenced_nonNull_native();
                          *a8 = v417;
                          if ((result & 1) == 0)
                          {
                            result = sub_1AFC0DCC4(v417);
                            v417 = result;
                            *a8 = result;
                          }

                          *(v417 + v420 + 120) = v419 + 999.99;
                          v417 = *a8;
                          v418 = *(*a8 + 16);
                          v413.i32[3] = v506;
                        }

                        v421 = 0;
                        v422 = 1;
                        do
                        {
                          if (v418 + v422 == 1)
                          {
                            v506 = v413.i32[3];
                            goto LABEL_407;
                          }

                          v423 = *(v417 + v421 + 120);
                          --v422;
                          v421 += 112;
                        }

                        while (v419 >= v423);
                        if (v418 == v9)
                        {
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v417 = sub_1AFC0DCC4(v417);
                          }

                          --*(v417 + 16);
                          *a8 = v417;
                          v418 = *(v417 + 16);
                        }

                        if (v422 + v418)
                        {
                          v467 = v411[5];
                          v522[4] = v411[4];
                          v522[5] = v467;
                          v523 = v411[6].i64[0];
                          v468 = v411[1];
                          v522[0] = *v411;
                          v522[1] = v468;
                          v469 = v411[3];
                          v522[2] = v411[2];
                          v522[3] = v469;
                          sub_1AF64B948(-v422, -v422, v522);
                        }

                        else
                        {
                          v424 = v411[5];
                          v517 = v411[4];
                          v518 = v424;
                          v519 = v411[6].i64[0];
                          v425 = v411[1];
                          v513 = *v411;
                          v514 = v425;
                          v426 = v411[3];
                          v515 = v411[2];
                          v516 = v426;
                          v427 = swift_isUniquelyReferenced_nonNull_native();
                          *a8 = v417;
                          if ((v427 & 1) == 0)
                          {
                            v417 = sub_1AF427DB8(0, *(v417 + 16) + 1, 1, v417);
                            *a8 = v417;
                          }

                          v429 = *(v417 + 16);
                          v428 = *(v417 + 24);
                          if (v429 >= v428 >> 1)
                          {
                            v417 = sub_1AF427DB8(v428 > 1, v429 + 1, 1, v417);
                            *a8 = v417;
                          }

                          *(v417 + 16) = v429 + 1;
                          v430 = v417 + 112 * v429;
                          v431 = v513;
                          v432 = v515;
                          *(v430 + 48) = v514;
                          *(v430 + 64) = v432;
                          *(v430 + 32) = v431;
                          v433 = v516;
                          v434 = v517;
                          v435 = v518;
                          *(v430 + 128) = v519;
                          *(v430 + 96) = v434;
                          *(v430 + 112) = v435;
                          *(v430 + 80) = v433;
                          v9 = a9;
                        }

                        v470 = *a8;
                        result = swift_isUniquelyReferenced_nonNull_native();
                        *a8 = v470;
                        if ((result & 1) == 0)
                        {
                          result = sub_1AFC0DCC4(v470);
                          v470 = result;
                          *a8 = result;
                        }

                        *(v470 + v421 + 8) = v419;
                      }
                    }

                    else
                    {
                      v442 = v411[5];
                      v517 = v411[4];
                      v518 = v442;
                      v519 = v411[6].i64[0];
                      v443 = v411[1];
                      v513 = *v411;
                      v514 = v443;
                      v444 = v411[3];
                      v515 = v411[2];
                      v516 = v444;
                      result = swift_isUniquelyReferenced_nonNull_native();
                      *a8 = v417;
                      if ((result & 1) == 0)
                      {
                        result = sub_1AF427DB8(0, *(v417 + 16) + 1, 1, v417);
                        v417 = result;
                        *a8 = result;
                      }

                      v446 = *(v417 + 16);
                      v445 = *(v417 + 24);
                      if (v446 >= v445 >> 1)
                      {
                        result = sub_1AF427DB8(v445 > 1, v446 + 1, 1, v417);
                        v417 = result;
                        *a8 = result;
                      }

                      *(v417 + 16) = v446 + 1;
                      v447 = v417 + 112 * v446;
                      v448 = v513;
                      v449 = v515;
                      *(v447 + 48) = v514;
                      *(v447 + 64) = v449;
                      *(v447 + 32) = v448;
                      v450 = v516;
                      v451 = v517;
                      v452 = v518;
                      *(v447 + 128) = v519;
                      *(v447 + 96) = v451;
                      *(v447 + 112) = v452;
                      *(v447 + 80) = v450;
                      *(*a8 + 120) = v419;
                    }
                  }
                }

LABEL_407:
                ;
              }

              v20 = v409++ == v502;
              v82 = a4;
            }

            while (!v20);
            v20 = v492++ == v487;
          }

          while (!v20);
        }

        v86 = v479;
        goto LABEL_397;
      }

      if (v489 < v82[4].i64[0])
      {
        goto LABEL_403;
      }
    }

LABEL_334:
    if (!v87)
    {
      return result;
    }

LABEL_397:
    v80 = v80 + v82[6].f32[2];
    if (v80 >= a2)
    {
      return result;
    }

    if (*(*a8 + 16) == v9)
    {
      break;
    }

LABEL_55:
    v81 = v86 + 1;
  }

  if (!v9)
  {
    if (v80 >= 0.0)
    {
      return result;
    }

    goto LABEL_55;
  }

  if (*(*a8 + v471 + 8) > v80)
  {
    goto LABEL_55;
  }

  return result;
}

unint64_t sub_1AFBA0DA8(char a1)
{
  result = 0x636E65756C666E69;
  switch(a1)
  {
    case 1:
      result = 0x7473694477656976;
      break;
    case 2:
      result = 0x6C676E4177656976;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65646F4D657A6973;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x756C6F56646E696DLL;
      break;
    case 8:
      result = 0x4464657269736564;
      break;
    case 9:
    case 13:
      result = 0xD000000000000012;
      break;
    case 10:
    case 12:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x64697247776F6873;
      break;
    case 15:
      result = 0x6C6C6543776F6873;
      break;
    case 16:
      result = 0x6F666E49676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AFBA0F74(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AFBA0DA8(*a1);
  v5 = v4;
  if (v3 == sub_1AFBA0DA8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFBA0FFC()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFBA0DA8(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBA1060()
{
  sub_1AFBA0DA8(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AFBA10B4()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFBA0DA8(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBA1114@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA225C();
  *a1 = result;
  return result;
}

unint64_t sub_1AFBA1144@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AFBA0DA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFBA118C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA225C();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBA11B4(uint64_t a1)
{
  v2 = sub_1AFBAC5A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBA11F0(uint64_t a1)
{
  v2 = sub_1AFBAC5A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBA122C(void *a1)
{
  v3 = v1;
  sub_1AFBAC650(0, &qword_1EB6430C8, sub_1AFBAC5A8, &type metadata for ParticleFlockingSolver.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC5A8();
  sub_1AFDFF3F8();
  LOBYTE(v13) = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 3;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 4;
    sub_1AFDFE8F8();
    LOBYTE(v13) = *(v3 + 32);
    v15 = 5;
    sub_1AF51CED4();
    sub_1AFDFE918();
    v13 = *(v3 + 48);
    v14 = *(v3 + 64);
    v15 = 6;
    v12 = MEMORY[0x1E69E7450];
    sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFBAC3F4(&qword_1ED72F758, &qword_1ED72F740, v12);
    sub_1AFDFE8A8();
    LOBYTE(v13) = 7;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 8;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 9;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 10;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 11;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 12;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 13;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 14;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 15;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 16;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

__n128 sub_1AFBA168C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBA242C(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 95) = *(v8 + 15);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

double sub_1AFBA1718@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1AFE957F0;
  *(a1 + 24) = 8;
  *(a1 + 32) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 68) = xmmword_1AFE95800;
  result = 4294968350.0;
  *(a1 + 84) = 0x41F0000041A00000;
  *(a1 + 92) = 1065353216;
  *(a1 + 96) = 0;
  *(a1 + 98) = 0;
  return result;
}

uint64_t sub_1AFBA17B4(void *a1)
{
  v3 = v1;
  sub_1AFBAC650(0, &qword_1EB6430E0, sub_1AFBAC5FC, &type metadata for ParticleFlockingSpeedControl.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC5FC();
  sub_1AFDFF3F8();
  v20 = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    v19 = 1;
    sub_1AFDFE8E8();
    v13[1] = *(v3 + 8);
    v18 = 2;
    v12 = MEMORY[0x1E69E7428];
    sub_1AFBAC650(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AFBAC3F4(&qword_1ED72F798, &unk_1ED72F770, v12);
    sub_1AFDFE918();
    v17 = 3;
    sub_1AFDFE8E8();
    v16 = 4;
    sub_1AFDFE8E8();
    v15 = *(v3 + 24);
    v14 = 5;
    sub_1AF51CFA8();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFBA1A8C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFBA1BA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA22B0();
  *a1 = result;
  return result;
}

void sub_1AFBA1BD8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465657053;
  v4 = 0x676E697369757263;
  v5 = 0xEF6563726F466761;
  v6 = 0x7244656C706D6973;
  v7 = 0x80000001AFF245E0;
  if (v2 != 4)
  {
    v7 = 0x80000001AFF24600;
  }

  if (v2 != 3)
  {
    v6 = 0xD000000000000012;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x657053706D616C63;
    v3 = 0xEA00000000006465;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001AFF245A0;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1AFBA1CBC()
{
  v1 = *v0;
  v2 = 0x676E697369757263;
  v3 = 0x7244656C706D6973;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 1)
  {
    v2 = 0x657053706D616C63;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFBA1D9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA22B0();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBA1DC4(uint64_t a1)
{
  v2 = sub_1AFBAC5FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBA1E00(uint64_t a1)
{
  v2 = sub_1AFBAC5FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFBA1E3C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFBA3410(a1, v5);
  if (!v2)
  {
    *a2 = v5[0];
    result = *(v5 + 9);
    *(a2 + 9) = *(v5 + 9);
  }

  return result;
}

double sub_1AFBA1EB8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x412000003E99999ALL;
  *(a1 + 8) = 0x41A0000000000000;
  result = 5.2386907e-11;
  *(a1 + 16) = 0x3DCCCCCD3D4CCCCDLL;
  *(a1 + 24) = 0;
  return result;
}

uint64_t initializeWithCopy for ParticleFlockingSolverData.Grid(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;

  return a1;
}

uint64_t assignWithCopy for ParticleFlockingSolverData.Grid(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithTake for ParticleFlockingSolverData.Grid(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v5;
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleFlockingSolverData.Grid(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleFlockingSolverData.Grid(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeWithCopy for FlockingParticle(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FlockingParticle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlockingParticle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 104) = v3;
  return result;
}

__n128 sub_1AFBA21D8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0DCC4(v3);
  }

  v4 = *(v3 + 2);
  v5 = v4 - 1;
  v6 = &v3[112 * v4];
  v7 = *v6;
  *(a1 + 64) = *(v6 - 1);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(v6 + 2);
  v8 = *(v6 - 4);
  *a1 = *(v6 - 5);
  *(a1 + 16) = v8;
  result = *(v6 - 2);
  *(a1 + 32) = *(v6 - 3);
  *(a1 + 48) = result;
  *(v3 + 2) = v5;
  *v1 = v3;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_1AFBA225C()
{
  v0 = sub_1AFDFF118();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBA22B0()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBA22FC()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBA2348()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBA2394()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBA23E0()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBA242C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBAC650(0, &qword_1EB6430B8, sub_1AFBAC5A8, &type metadata for ParticleFlockingSolver.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v39 - v9;
  v67 = 1;
  v11 = a1[3];
  v69 = a1;
  sub_1AF441150(a1, v11);
  sub_1AFBAC5A8();
  sub_1AFDFF3B8();
  if (v2)
  {
    v53 = 0;
    v54 = xmmword_1AFE957F0;
    v55 = 8;
    v56 = 2;
    v57 = 0;
    v58 = 0;
    v59 = v67;
    v60 = xmmword_1AFE95800;
    v61 = 0x41F0000041A00000;
    v62 = 1065353216;
    v63 = 0;
    v64 = 0;
    sub_1AF597500(&v53);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v69);
  }

  else
  {
    LOBYTE(v49) = 0;
    sub_1AFDFE738();
    v13 = v12;
    LOBYTE(v49) = 1;
    sub_1AFDFE738();
    v15 = v14;
    LOBYTE(v49) = 2;
    sub_1AFDFE738();
    v18 = v17;
    LOBYTE(v49) = 3;
    sub_1AFDFE738();
    v20 = v19;
    LOBYTE(v49) = 4;
    v21 = sub_1AFDFE748();
    v52 = 5;
    sub_1AF51CE80();
    sub_1AFDFE768();
    v47 = v21;
    v48 = v49;
    v67 = 1;
    v22 = MEMORY[0x1E69E7450];
    sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v52 = 6;
    sub_1AFBAC3F4(&qword_1ED72F748, &qword_1ED72F740, v22);
    sub_1AFDFE6E8();
    v23 = v48;
    if (v51 == 1)
    {
      v46 = 0;
      v45 = 0;
    }

    else
    {
      v46 = v50;
      v45 = v49;
      v67 = 0;
    }

    LOBYTE(v49) = 7;
    sub_1AFDFE738();
    v25 = v24;
    LOBYTE(v49) = 8;
    sub_1AFDFE738();
    v27 = v26;
    LOBYTE(v49) = 9;
    sub_1AFDFE738();
    v29 = v28;
    LOBYTE(v49) = 10;
    sub_1AFDFE738();
    v31 = v30;
    LOBYTE(v49) = 11;
    sub_1AFDFE738();
    v44 = v32;
    LOBYTE(v49) = 12;
    sub_1AFDFE738();
    v43 = v33;
    LOBYTE(v49) = 13;
    sub_1AFDFE738();
    v42 = v34;
    LOBYTE(v49) = 14;
    LOBYTE(v41) = sub_1AFDFE718() & 1;
    v41 = v41;
    LOBYTE(v49) = 15;
    LOBYTE(v40) = sub_1AFDFE718() & 1;
    v40 = v40;
    LOBYTE(v49) = 16;
    v35 = sub_1AFDFE718();
    (*(v7 + 8))(v10, v6);
    v36 = v67;
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v69);
    *a2 = 0;
    *(a2 + 8) = v13;
    *(a2 + 12) = v15;
    *(a2 + 16) = v18;
    *(a2 + 20) = v20;
    *(a2 + 24) = v47;
    *(a2 + 32) = v23;
    *(a2 + 33) = v68[0];
    v37 = v45;
    *(a2 + 40) = *(v68 + 7);
    *(a2 + 48) = v37;
    *(a2 + 56) = v46;
    *(a2 + 64) = v36;
    *(a2 + 65) = v65;
    *(a2 + 67) = v66;
    *(a2 + 68) = v25;
    *(a2 + 72) = v27;
    *(a2 + 76) = v29;
    *(a2 + 80) = v31;
    v38 = v43;
    *(a2 + 84) = v44;
    *(a2 + 88) = v38;
    *(a2 + 92) = v42;
    *(a2 + 96) = v41;
    *(a2 + 97) = v40;
    *(a2 + 98) = v35 & 1;
  }

  return result;
}

uint64_t sub_1AFBA3410@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBAC650(0, &qword_1EB6430D0, sub_1AFBAC5FC, &type metadata for ParticleFlockingSpeedControl.CodingKeys, MEMORY[0x1E69E6F48]);
  v24 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC5FC();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v32 = 0;
  sub_1AFDFE738();
  v11 = v10;
  v31 = 1;
  sub_1AFDFE738();
  v12 = v6;
  v14 = v13;
  v15 = MEMORY[0x1E69E7428];
  sub_1AFBAC650(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v29 = 2;
  v16 = v24;
  sub_1AFBAC3F4(&qword_1ED72F780, &unk_1ED72F770, v15);
  sub_1AFDFE768();
  v17 = v30;
  v28 = 3;
  sub_1AFDFE738();
  v19 = v18;
  v27 = 4;
  sub_1AFDFE738();
  v21 = v20;
  v25 = 5;
  sub_1AF51CF54();
  sub_1AFDFE768();
  (*(v12 + 8))(v9, v16);
  v22 = v26;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  *(a2 + 4) = v14;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19;
  *(a2 + 20) = v21;
  *(a2 + 24) = v22;
  return result;
}

uint64_t sub_1AFBA3784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1AFBAC650(0, &qword_1EB6430A0, sub_1AFBAC554, &type metadata for ParticleFlockingFlyTowardsArea.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC554();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v26;
  v33 = 0;
  sub_1AFDFE738();
  v12 = v11;
  v32 = 1;
  sub_1AFDFE738();
  v14 = v13;
  v31 = 2;
  sub_1AFDFE738();
  v16 = v15;
  v30 = 3;
  sub_1AFDFE738();
  v18 = v17;
  v29 = 4;
  sub_1AFDFE738();
  v20 = v19;
  v28 = 5;
  sub_1AFDFE738();
  v22 = v21;
  v27 = 6;
  v23 = sub_1AFDFE718();
  (*(v6 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v12;
  *(v10 + 4) = v14;
  *(v10 + 8) = v16;
  *(v10 + 12) = v18;
  *(v10 + 16) = v20;
  *(v10 + 20) = v22;
  *(v10 + 24) = v23 & 1;
  return result;
}

uint64_t sub_1AFBA3A54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1AFBAC650(0, &qword_1EB643040, sub_1AFBAC3A0, &type metadata for ParticleFlockingAlignOrientation.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v21 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC3A0();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  v11 = v25;
  v28 = 0;
  sub_1AF51CF54();
  v12 = v5;
  sub_1AFDFE768();
  v13 = v26;
  LOBYTE(v26) = 1;
  sub_1AFDFE738();
  v15 = v14;
  v28 = 2;
  sub_1AFDFE768();
  v27 = v13;
  v24 = v26;
  v16 = MEMORY[0x1E69E7450];
  sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v28 = 3;
  sub_1AFBAC3F4(&qword_1ED72F748, &qword_1ED72F740, v16);
  sub_1AFDFE768();
  LOBYTE(v16) = v24;
  v23 = v26;
  LOBYTE(v26) = 4;
  v17 = sub_1AFDFE718();
  LOBYTE(v13) = v27;
  v22 = v17;
  LOBYTE(v26) = 5;
  sub_1AFDFE738();
  v19 = v18;
  (*(v10 + 8))(v9, v12);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v11 = v13;
  *(v11 + 4) = v15;
  *(v11 + 8) = v16;
  *(v11 + 16) = v23;
  *(v11 + 32) = v22 & 1;
  *(v11 + 36) = v19;
  return result;
}

float sub_1AFBA3DEC(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  sub_1AFBAC650(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v20 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v19 - v12;
  sub_1AF441150(a1, a1[3]);
  a5();
  sub_1AFDFF3B8();
  if (!v5)
  {
    v14 = v10;
    LOBYTE(v22) = 0;
    v15 = v20;
    sub_1AFDFE738();
    v6 = v16;
    v17 = MEMORY[0x1E69E7450];
    sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v21 = 1;
    sub_1AFBAC3F4(&qword_1ED72F748, &qword_1ED72F740, v17);
    sub_1AFDFE768();
    v19[1] = v22;
    v21 = 2;
    sub_1AFDFE768();
    v19[0] = v22;
    LOBYTE(v22) = 3;
    sub_1AFDFE718();
    (*(v14 + 8))(v13, v15);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v6;
}

float sub_1AFBA40B0(void *a1)
{
  sub_1AFBAC650(0, &qword_1EB643058, sub_1AFBAC458, &type metadata for ParticleFlockingAlignVelocityOnPlane.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC458();
  sub_1AFDFF3B8();
  if (!v1)
  {
    LOBYTE(v15) = 0;
    sub_1AFDFE738();
    v2 = v10;
    v11 = MEMORY[0x1E69E7450];
    sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v14 = 1;
    sub_1AFBAC3F4(&qword_1ED72F748, &qword_1ED72F740, v11);
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    v13 = v15;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AFBA431C(uint64_t a1, char a2, char a3, char a4)
{
  v5 = v4;

  sub_1AF5FCA80();
  v11 = v10;

  if (v11 == 2)
  {
    return result;
  }

  v14 = *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v13) + 8);
  sub_1AF9D7EF0(0, &qword_1ED72F7D0, sub_1AF47BC54);
  inited = swift_initStackObject();
  v16 = inited;
  if (v11)
  {
    v17 = &type metadata for DebugInfoA;
  }

  else
  {
    v17 = &type metadata for DebugInfoB;
  }

  v18 = &off_1F2560448;
  *(inited + 16) = xmmword_1AFE431C0;
  if (v11)
  {
    v18 = &off_1F2560428;
  }

  v146 = v18;
  v147 = v17;
  *(inited + 32) = v17;
  *(inited + 40) = v18;
  if (v5[2].i8[0] != 1)
  {
    goto LABEL_85;
  }

  v145 = sub_1AF57EFBC(xmmword_1AFEA06F0);
  if (a2)
  {
    v20 = sub_1AF57EFBC(xmmword_1AFEA0700);
    v21 = v5[7];
    v22 = v5[8];
    v21.i32[3] = 1.0;
    v22.i32[3] = 1.0;
    v23.i64[0] = 0x3F0000003F000000;
    v23.i64[1] = 0x3F0000003F000000;
    v24 = vmulq_f32(vaddq_f32(v21, v22), v23);
    v25 = vmulq_f32(vsubq_f32(v22, v21), v23);
    v22.f32[0] = v5[6].f32[2] * 0.1;
    v26 = vdupq_lane_s32(*v22.f32, 0);
    v26.i32[3] = 0;
    v157[0] = v24;
    v157[1] = vaddq_f32(v25, v26);
    v158 = 6;
    ecs_stack_allocator_push_snapshot(*(v14 + 32));
    v27 = ecs_stack_allocator_allocate(*(v14 + 32), 48, 8);
    *v27 = &type metadata for DebugInfoWireframePrimitive;
    v27[1] = &off_1F25604A8;
    v27[2] = &type metadata for DebugInfoColor;
    v27[3] = &off_1F2560488;
    *(v27 + 2) = *(v16 + 32);
    sub_1AF63C898(v27, 3, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v14, v157, v20);
    ecs_stack_allocator_pop_snapshot(*(v14 + 32));
  }

  if ((a3 & 1) == 0 || (v138 = v5[4].i64[1]) == 0)
  {
LABEL_85:

    if ((a4 & 1) == 0)
    {
      return result;
    }

    goto LABEL_86;
  }

  v137 = a4;
  v28 = 0;
  v139 = 0;
  v29 = v5[7];
  v143 = v14;
  v144 = v5;
  while (1)
  {
    v29.i32[1] = v5[7].i32[1];
    v140 = v5[4].i64[0];
    if (v140)
    {
      break;
    }

    v19.i32[0] = v5[6].i32[2];
LABEL_14:
    v29.f32[2] = v29.f32[2] + *v19.i32;
    if (++v139 == v138)
    {

      if ((v137 & 1) == 0)
      {
        return result;
      }

LABEL_86:
      if (v5[2].i8[0] == 1)
      {
        v103 = v5[1].i64[0];
        v104 = *(v103 + 16);
        if (v104)
        {
          v105 = 0;
          v106 = 0;
          v107 = (v103 + 48);
          do
          {
            v108 = *v107;
            v109 = *v107;
            v110 = ~v109 & 0x7F800000;
            v111 = v109 & 0x7FFFFF;
            if (v110)
            {
              v112 = 1;
            }

            else
            {
              v112 = v111 == 0;
            }

            if (!v112 || ((~DWORD1(v108) & 0x7F800000) == 0 ? (v113 = (DWORD1(v108) & 0x7FFFFF) == 0) : (v113 = 1), !v113 || ((~DWORD2(v108) & 0x7F800000) == 0 ? (v114 = (DWORD2(v108) & 0x7FFFFF) == 0) : (v114 = 1), !v114)))
            {
              v105 = ++v106;
            }

            v107 += 7;
            --v104;
          }

          while (v104);
          v117 = 0xE000000000000000;
          if (v105 < 1)
          {
            v151 = 0;
          }

          else
          {
            sub_1AFDFE218();

            v118 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v118);

            v117 = 0x80000001AFF4A270;
            v151 = 0xD00000000000001DLL;
          }
        }

        else
        {
          v151 = 0;
          v117 = 0xE000000000000000;
        }

        sub_1AF6EFB60();
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_1AFE431C0;
        v120 = MEMORY[0x1E69E64A8];
        v121 = *(v5[1].i64[0] + 16) / *(v5[2].i64[1] + 16);
        *(v119 + 56) = MEMORY[0x1E69E6448];
        *(v119 + 64) = v120;
        *(v119 + 32) = v121;
        v156 = sub_1AFDFCF38();
        v154 = v122;
        sub_1AFBABEC0(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_1AFE431C0;
        v124 = MEMORY[0x1E69E6158];
        *(v123 + 56) = MEMORY[0x1E69E6158];
        *(v123 + 32) = 0xD000000000000018;
        *(v123 + 40) = 0x80000001AFF4A190;
        sub_1AFDFF258();

        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_1AFE431C0;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4A1B0);
        v126 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v126);

        MEMORY[0x1B2718AE0](2127904, 0xE300000000000000);
        v127 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v127);

        MEMORY[0x1B2718AE0](2127904, 0xE300000000000000);
        v128 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v128);

        MEMORY[0x1B2718AE0](0x61746F7428202020, 0xEB00000000203A6CLL);
        v129 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v129);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        *(v125 + 56) = v124;
        *(v125 + 32) = 0;
        *(v125 + 40) = 0xE000000000000000;
        sub_1AFDFF258();

        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1AFE431C0;
        sub_1AFDFE218();

        v131 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v131);

        MEMORY[0x1B2718AE0](2105376, 0xE300000000000000);
        MEMORY[0x1B2718AE0](v151, v117);

        *(v130 + 56) = v124;
        *(v130 + 32) = 0xD00000000000001CLL;
        *(v130 + 40) = 0x80000001AFF4A1D0;
        sub_1AFDFF258();

        v132 = swift_allocObject();
        *(v132 + 16) = xmmword_1AFE431C0;
        sub_1AFDFE218();

        v133 = MEMORY[0x1E69E7450];
        sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        sub_1AFBAC3F4(&qword_1EB63ED90, &qword_1ED72F740, v133);
        v134 = sub_1AFDFF178();
        MEMORY[0x1B2718AE0](v134);

        *(v132 + 56) = v124;
        *(v132 + 32) = 0xD00000000000001CLL;
        *(v132 + 40) = 0x80000001AFF4A1F0;
        sub_1AFDFF258();

        v135 = swift_allocObject();
        *(v135 + 16) = xmmword_1AFE431C0;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4A210);
        sub_1AFDFD748();
        *(v135 + 56) = v124;
        *(v135 + 32) = 0;
        *(v135 + 40) = 0xE000000000000000;
        sub_1AFDFF258();

        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_1AFE431C0;
        sub_1AFDFE218();

        MEMORY[0x1B2718AE0](v156, v154);

        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4A250);
        *(v136 + 56) = v124;
        *(v136 + 32) = 0xD00000000000001CLL;
        *(v136 + 40) = 0x80000001AFF4A230;
        sub_1AFDFF258();

        v115 = swift_allocObject();
        *(v115 + 16) = xmmword_1AFE431C0;
        *(v115 + 56) = v124;
        *(v115 + 32) = 0x4E494B434F4C465BLL;
        v116 = 0xEC0000007D205D47;
      }

      else
      {
        sub_1AFBABEC0(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
        v115 = swift_allocObject();
        *(v115 + 16) = xmmword_1AFE431C0;
        v116 = 0x80000001AFF4A150;
        *(v115 + 56) = MEMORY[0x1E69E6158];
        *(v115 + 32) = 0xD000000000000032;
      }

      *(v115 + 40) = v116;
      sub_1AFDFF258();
    }
  }

  v30 = 0;
  while (1)
  {
    v29.i32[0] = v5[7].i32[0];
    v31 = v5[3].i64[1];
    if (v31)
    {
      break;
    }

    v19.i32[0] = v5[6].i32[2];
LABEL_18:
    ++v30;
    v29.f32[1] = v29.f32[1] + *v19.i32;
    if (v30 == v140)
    {
      goto LABEL_14;
    }
  }

  v32 = 0;
  v141 = v28 + v31;
  v142 = v30;
  v19.i32[0] = v5[6].i32[2];
  v148 = v5[3].i64[1];
  while ((*(v5[2].i64[1] + 16 * v28 + 32) & 0x8000000000000000) != 0)
  {
LABEL_21:
    ++v32;
    ++v28;
    v29.f32[0] = v29.f32[0] + *v19.i32;
    if (v32 == v31)
    {
      v28 = v141;
      v30 = v142;
      goto LABEL_18;
    }
  }

  v152 = v19;
  v155 = v29;
  ecs_stack_allocator_push_snapshot(*(v14 + 32));
  v33 = ecs_stack_allocator_allocate(*(v14 + 32), 48, 8);
  *v33 = &type metadata for DebugInfoWireframePrimitive;
  v33[1] = &off_1F25604A8;
  v33[2] = &type metadata for DebugInfoColor;
  v33[3] = &off_1F2560488;
  v33[4] = v147;
  v33[5] = v146;
  v34 = *(v14 + 16);
  v35 = v34 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v36 = *(v34 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v36);
  v37 = sub_1AF66F020(v33, 3, MEMORY[0x1E69E7CC0]);
  v38 = v37;
  v40 = v39;
  v41 = *(v34 + 80);
  v42 = *(v41 + 16);
  if (!v42)
  {
    goto LABEL_29;
  }

  v43 = 0;
  v44 = v41 + 32;
  while (*(*(v44 + 8 * v43) + 144) != v37)
  {
    if (v42 == ++v43)
    {
      goto LABEL_29;
    }
  }

  v45 = sub_1AF65D418(v40, v43);
  v46 = v45;
  if ((v45 & 0x100000000) != 0)
  {
LABEL_29:
    sub_1AFC0EF2C(v33, 3);
    v46 = sub_1AF65D480(v38, v40, v47, MEMORY[0x1E69E7CC0]);
  }

  v48 = *(*(v34 + 88) + 8 * v46 + 32);
  v49 = *(v35 + 24);

  os_unfair_lock_unlock(v49);

  v50 = *(v14 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v51 = *v50;

  if (v51)
  {
    vfx_counters.add(_:_:)(*(v50 + 40), 1);
  }

  v52 = *(v14 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v53 = *v52;

  if (v53)
  {
    vfx_counters.add(_:_:)(*(v52 + 48), 1);
  }

  v54 = *(v48 + 204);
  if (*(v48 + 208))
  {
    v55 = -1;
  }

  else
  {

    v55 = sub_1AF65B2E4();
  }

  v56 = *(v14 + 16);
  v57 = *(*(*(v56 + 88) + 8 * v54 + 32) + 200);

  if (v57 == 1)
  {
    *(v56 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v58 = *(v56 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v58);
  if (!sub_1AF62173C(v54))
  {
    sub_1AF6AFD3C(v54);
  }

  v59 = *(*(v56 + 104) + 40 * v54 + 64);
  if (v59 != -1)
  {
    v60 = *(*(v56 + 144) + 8 * v59 + 32);
    if ((*(v60 + 32) & 1) != 0 && os_unfair_lock_trylock(*(v60 + 376)))
    {
      os_unfair_lock_lock(*(v60 + 344));
      os_unfair_lock_unlock(*(v60 + 376));
      if ((*(v60 + 121) & 1) != 0 || *(v60 + 240) < *(v60 + 88))
      {
        v61 = sub_1AF622B60(v55);
        v62 = v61;
        v63 = *(v60 + 188);
        if ((*(v48 + 208) & 1) == 0)
        {
          v64 = *(*(v14 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55;
          *v64 = v63;
          *(v64 + 4) = v61;
          *(v64 + 6) = v54;
        }

        if (*(v48 + 212) == 1)
        {
          v65 = *(v60 + 192);
          if (v65)
          {
            v66 = *(v60 + 208);
            *(v65 + 8 * (v61 >> 6)) |= 1 << v61;
            *(v66 + 8 * (v61 >> 6)) &= ~(1 << v61);
          }

          sub_1AF705804(v61);
        }

        os_unfair_lock_unlock(*(v60 + 344));
        os_unfair_lock_unlock(*(v56 + 136));
        goto LABEL_79;
      }

      os_unfair_lock_unlock(*(v60 + 344));
    }
  }

  os_unfair_lock_unlock(*(v56 + 136));
  v67 = sub_1AF624654();
  v149 = v55;
  if ((v67 & 0x100000000) != 0)
  {
    v68 = *(*(v56 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v70 = sub_1AF64BF6C(v74, 0x100000000, v54, 1, v68);

    _swift_stdlib_immortalize();

    v71 = *(v56 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 144) = v71;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v71 + 2) + 1, 1);
      v71 = *(v56 + 144);
    }

    v77 = *(v71 + 2);
    v76 = *(v71 + 3);
    if (v77 >= v76 >> 1)
    {
      sub_1AFC05EFC(v76 > 1, v77 + 1, 1);
      v71 = *(v56 + 144);
    }

    *(v71 + 2) = v77 + 1;
    v73 = &v71[8 * v77];
  }

  else
  {
    v68 = v67;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v70 = sub_1AF64BF6C(v69, 0x100000000, v54, 1, v68);

    _swift_stdlib_immortalize();

    v71 = *(v56 + 144);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 144) = v71;
    if ((v72 & 1) == 0)
    {
      v71 = sub_1AF6247B0(v71);
    }

    v73 = &v71[8 * v68];
  }

  *(v73 + 4) = v70;
  *(v56 + 144) = v71;
  v78 = *(v56 + 104);
  v79 = swift_isUniquelyReferenced_nonNull_native();
  *(v56 + 104) = v78;
  if ((v79 & 1) == 0)
  {
    v78 = sub_1AFC0D9B8(v78);
    *(v56 + 104) = v78;
  }

  v80 = &v78[40 * v54];
  v83 = *(v80 + 4);
  v82 = v80 + 32;
  v81 = v83;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *v82 = v83;
  if ((v84 & 1) == 0)
  {
    v81 = sub_1AF420E8C(0, *(v81 + 2) + 1, 1, v81);
    *v82 = v81;
  }

  v86 = *(v81 + 2);
  v85 = *(v81 + 3);
  if (v86 >= v85 >> 1)
  {
    v81 = sub_1AF420E8C(v85 > 1, v86 + 1, 1, v81);
    *v82 = v81;
  }

  *(v81 + 2) = v86 + 1;
  *&v81[4 * v86 + 32] = v68;
  *(v82 + 8) = v68;
  v82[24] = 1;
  v87 = *(*(v56 + 144) + 8 * v68 + 32);
  v88 = *(v87 + 376);

  if (!os_unfair_lock_trylock(v88))
  {
    goto LABEL_119;
  }

  os_unfair_lock_lock(*(v87 + 344));
  os_unfair_lock_unlock(*(v87 + 376));
  v14 = v143;
  if ((*(v87 + 121) & 1) == 0 && *(v87 + 240) >= *(v87 + 88))
  {
    goto LABEL_118;
  }

  v89 = sub_1AF622B60(v149);
  v62 = v89;
  v63 = *(v87 + 188);
  if ((*(v48 + 208) & 1) == 0)
  {
    v90 = *(*(v143 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v149;
    *v90 = v63;
    *(v90 + 4) = v89;
    *(v90 + 6) = v54;
  }

  if (*(v48 + 212) == 1)
  {
    v91 = *(v87 + 192);
    if (v91)
    {
      v92 = *(v87 + 208);
      *(v91 + 8 * (v89 >> 6)) |= 1 << v89;
      *(v92 + 8 * (v89 >> 6)) &= ~(1 << v89);
    }

    sub_1AF705804(v89);
  }

  os_unfair_lock_unlock(*(v87 + 344));

LABEL_79:

  v87 = *(*(*(v14 + 16) + 144) + 8 * v63 + 32);

  v93 = sub_1AF64B03C(&type metadata for DebugInfoWireframePrimitive);
  v95 = v94;

  v96 = sub_1AF64B03C(&type metadata for DebugInfoColor);
  if ((v97 & 1) == 0)
  {
    v98 = v96;
    v99 = v155;
    v99.i32[3] = 1.0;
    v100.i64[0] = vaddq_f32(v155, vdupq_lane_s32(v152, 0)).u64[0];
    v100.f32[2] = v155.f32[2] + *v152.i32;
    v100.i32[3] = 1.0;
    v101.i64[0] = 0x3F0000003F000000;
    v101.i64[1] = 0x3F0000003F000000;
    v150 = vmulq_f32(vsubq_f32(v100, v99), v101);
    v153 = vmulq_f32(vaddq_f32(v99, v100), v101);
    if (v95)
    {
      v102 = 0;
    }

    else
    {
      v102 = (v93 + 112 * v62);
    }

    *v102 = v153;
    v102[1] = v150;
    v102[6].i8[0] = 6;
    *(v98 + 4 * v62) = v145;

    ecs_stack_allocator_pop_snapshot(*(v14 + 32));
    v29 = v155;
    v5 = v144;
    v19.i32[0] = v144[6].i32[2];
    v31 = v148;
    goto LABEL_21;
  }

  __break(1u);
LABEL_118:
  os_unfair_lock_unlock(*(v87 + 344));
LABEL_119:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

float sub_1AFBA5644(simd_float4x4 a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float a6)
{
  v14 = 0.0;
  if (a6 >= 0.000001)
  {
    v29 = a1.columns[1];
    v30 = a1.columns[0];
    v28 = a1.columns[2];
    v31 = a1.columns[3];
    v36 = __invert_f4(a1);
    v15 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v36.columns[3], v36.columns[2], a5, 2), v36.columns[1], *a5.f32, 1), v36.columns[0], a5.f32[0]);
    v36.columns[0] = vmulq_f32(v15, v15);
    v16 = v36.columns[0].f32[2] + vaddv_f32(*v36.columns[0].f32);
    if (v16 > 1.0)
    {
      v27 = v15;
      v37.columns[1] = a3;
      v37.columns[0] = a2;
      v37.columns[2] = a4;
      v37.columns[3] = a5;
      v38 = __invert_f4(v37);
      v17 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v38.columns[3], v38.columns[2], v31, 2), v38.columns[1], *v31.f32, 1), v38.columns[0], v31.f32[0]);
      v38.columns[0] = vmulq_f32(v17, v17);
      v18 = v38.columns[0].f32[2] + vaddv_f32(*v38.columns[0].f32);
      if (v18 > 1.0)
      {
        v19 = sqrtf(v16);
        v20 = vsubq_f32(v31, vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v31, v28, v27.f32[2] / v19), v29, v27.f32[1] / v19), v30, v27.f32[0] / v19));
        v21 = vmulq_f32(v20, v20);
        v22 = sqrtf(v18);
        v23 = vsubq_f32(a5, vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(a5, a4, v17.f32[2] / v22), a3, v17.f32[1] / v22), a2, v17.f32[0] / v22));
        v24 = vmulq_f32(v23, v23);
        v25 = (a6 - sqrtf(v21.f32[2] + vaddv_f32(*v21.f32))) - sqrtf(v24.f32[2] + vaddv_f32(*v24.f32));
        if (v25 >= 0.0)
        {
          return v25;
        }
      }
    }
  }

  return v14;
}

uint64_t sub_1AFBA57BC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;

  sub_1AFA3F2F8(&v274);
  v286 = v274;
  v289 = v277;
  v290 = v278;
  *v291 = *v279;
  *&v291[15] = *&v279[15];
  v287 = v275;
  v288 = v276;
  v213 = v274;
  if (!v274)
  {
    sub_1AF6814C8(*(a1 + 8), v4);
  }

  v5 = *(a1 + 104);
  v263 = *(a1 + 88);
  v264 = v5;
  v265 = *(a1 + 120);
  sub_1AF5C9174(v250);
  v261[0] = v250[0];
  v261[1] = v250[1];
  v262 = v251;
  sub_1AF6B06C0(v4, v261, 0x200000000, &v252);
  v204 = v252;
  if (v252)
  {
    if (v213)
    {
      v6 = *(&v252 + 1);
      v7 = v253;
      v199 = HIDWORD(*(&v252 + 1));
      v8 = v254;
      v9 = v255;
      v10 = v256;
      v11 = v257;
      v12 = v258;
      v13 = v259;
      v14 = v260;
      v200 = v254;
      v201 = DWORD2(v252);
      goto LABEL_8;
    }

LABEL_14:
    sub_1AFBAA2F8(&v252, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
LABEL_15:
    sub_1AFBABE60(v250, sub_1AFA0D2A0);

    return sub_1AF597500(&v286);
  }

  if (!v213)
  {
    goto LABEL_14;
  }

  v7 = 0;
  v9 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v200 = 0;
  v201 = 0;
  LOBYTE(v199) = 0;
  v6 = 0;
  v8 = 0;
  v10 = 0uLL;
  v14 = 0uLL;
LABEL_8:
  v280[0] = v252;
  v280[1] = v6;
  v280[2] = v7;
  v280[3] = v8;
  v243 = v10;
  v281 = v10;
  v280[4] = v9;
  v202 = v13;
  v203 = v11;
  v282 = v11;
  v283 = v12;
  v284 = v13;
  v247 = v14;
  v285 = v14;
  v15 = v289;
  v16 = v290;
  sub_1AF443184(&v286, &v274);
  sub_1AF5D15C0(&v252, &v274);
  sub_1AFB9C988(v280, v15, *(&v15 + 1), v16);
  sub_1AFBAA2F8(&v252, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
  sub_1AFBA431C(a2, v291[16], v291[17], v291[18]);
  sub_1AF597500(&v286);
  sub_1AF443184(&v286, &v274);
  sub_1AFB93E58();
  v18 = *(&v286 + 2);
  v19 = v12;
  if (*(&v286 + 2) >= 0.0)
  {
    v24 = 1.0 - *(&v286 + 2);
    v20 = *(&v286 + 3);
    v25 = 360.0;
    if (*&v287 <= 360.0)
    {
      v25 = *&v287;
    }

    if (*&v287 <= 0.0)
    {
      v25 = 0.0;
    }

    v26 = 360.0;
    if (*&v287 <= 360.0)
    {
      v26 = *&v287;
    }

    if (*&v287 > 0.0)
    {
      v22 = v26;
    }

    else
    {
      v22 = 0.0;
    }

    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    else
    {
      v22 = v25;
    }

    v212 = v24;
  }

  else
  {
    v20 = *(&v286 + 3);
    v212 = 1.0;
    v18 = 0.0;
    v21 = 360.0;
    if (*&v287 <= 360.0)
    {
      v21 = *&v287;
    }

    if (*&v287 <= 0.0)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v21;
    }
  }

  v27 = (v22 * 3.1416) / 180.0;
  if (*(&v287 + 1) <= 180.0)
  {
    v28 = *(&v287 + 1);
  }

  else
  {
    v28 = 180.0;
  }

  v29 = (v28 * 3.1416) / 180.0;
  v30 = 0.0;
  if (*(&v287 + 1) <= 0.0)
  {
    v29 = 0.0;
  }

  if (v29 >= v27)
  {
    v29 = v27;
  }

  v31 = v27 - v29;
  v32 = v202;
  v241 = v27;
  if ((v27 - v29) >= v27)
  {
    v34 = *(&v287 + 1);
    if (*(&v287 + 1) > 15)
    {
      v35 = v288;
      v44 = *(&v290 + 1);
      v38 = 1.0;
      if (*(&v290 + 1) >= 1.0)
      {
        v248 = 0.0;
        v34 = 16;
        v217 = 0.0;
        goto LABEL_54;
      }

      v217 = 0.0;
      if (*(&v290 + 1) < 0.0)
      {
        v248 = 1.0;
        v34 = 16;
        v38 = 0.0;
        goto LABEL_54;
      }

      v248 = 1.0 - *(&v290 + 1);
      v34 = 16;
    }

    else
    {
      v35 = v288;
      v44 = *(&v290 + 1);
      if (*(&v287 + 1) > 1)
      {
        v248 = 0.0;
        v38 = 1.0;
        if (*(&v290 + 1) >= 1.0)
        {
          v217 = 0.0;
          goto LABEL_54;
        }

        v248 = 1.0;
        v217 = 0.0;
        if (*(&v290 + 1) < 0.0)
        {
          v38 = 0.0;
          goto LABEL_54;
        }

        v248 = 1.0 - *(&v290 + 1);
      }

      else
      {
        v38 = 1.0;
        if (*(&v290 + 1) >= 1.0)
        {
          v248 = 0.0;
          v34 = 2;
          v217 = 0.0;
          goto LABEL_54;
        }

        v217 = 0.0;
        if (*(&v290 + 1) < 0.0)
        {
          v248 = 1.0;
          v34 = 2;
          v38 = 0.0;
          goto LABEL_54;
        }

        v248 = 1.0 - *(&v290 + 1);
        v34 = 2;
      }
    }

    v38 = v44;
  }

  else
  {
    v217 = 1.0 / (v27 - v31);
    v33 = *(&v287 + 1);
    if (*(&v287 + 1) >= 16)
    {
      v33 = 16;
    }

    if (v33 <= 2)
    {
      v34 = 2;
    }

    else
    {
      v34 = v33;
    }

    v35 = v288;
    v36 = 1.0 - *(&v290 + 1);
    if (*(&v290 + 1) >= 0.0)
    {
      v37 = *(&v290 + 1);
    }

    else
    {
      v37 = 0.0;
    }

    if (*(&v290 + 1) < 0.0)
    {
      v36 = 1.0;
    }

    if (*(&v290 + 1) < 1.0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 1.0;
    }

    if (*(&v290 + 1) < 1.0)
    {
      v30 = v36;
    }

    v248 = v30;
  }

LABEL_54:
  v39 = v17 * fabsf(*(&v290 + 3));
  if (v39 >= 1.0)
  {
    v40 = v17 * *v291;
    if ((v17 * *v291) >= 1.0)
    {
      v41 = v17 * *&v291[4];
      if ((v17 * *&v291[4]) < 1.0)
      {
        v42 = v17 * *&v291[8];
        v40 = 1.0;
        if (v41 < 0.0)
        {
          if (v42 < 1.0)
          {
            if (v42 >= 0.0)
            {
              v43 = *&v291[12];
              if (v18 <= 0.0 && v42 <= 0.0 || v20 <= 0.0)
              {
                goto LABEL_480;
              }
            }

            else
            {
              if (v18 <= 0.0 || v20 <= 0.0)
              {
                goto LABEL_475;
              }

              v43 = *&v291[12];
              v42 = 0.0;
            }

            v41 = 0.0;
            v39 = 1.0;
            goto LABEL_355;
          }

          v41 = 0.0;
          v43 = *&v291[12];
          v42 = 1.0;
          goto LABEL_275;
        }

        if (v42 >= 1.0)
        {
          if (v20 > 0.0)
          {
            v43 = *&v291[12];
            v42 = 1.0;
            v39 = 1.0;
            goto LABEL_355;
          }

          goto LABEL_475;
        }

        if (v42 < 0.0)
        {
          if (v18 <= 0.0 || v20 <= 0.0)
          {
            goto LABEL_475;
          }

          v43 = *&v291[12];
LABEL_168:
          v42 = 0.0;
          v39 = 1.0;
          goto LABEL_355;
        }

        v43 = *&v291[12];
        if (v18 > 0.0)
        {
          goto LABEL_293;
        }

        goto LABEL_292;
      }

      v42 = v17 * *&v291[8];
      if ((v17 * *&v291[8]) < 1.0)
      {
        if (v42 < 0.0)
        {
          if (v18 > 0.0 && v20 > 0.0)
          {
            v43 = *&v291[12];
            v41 = 1.0;
            v42 = 0.0;
            v40 = 1.0;
            v39 = 1.0;
            goto LABEL_355;
          }

          goto LABEL_480;
        }

        v43 = *&v291[12];
        v41 = 1.0;
        if (v18 > 0.0)
        {
          v40 = 1.0;
          goto LABEL_275;
        }

        if (v42 <= 0.0)
        {
          goto LABEL_475;
        }

        v46 = v20 <= 0.0;
        v40 = 1.0;
LABEL_294:
        v39 = 1.0;
        if (!v46)
        {
          goto LABEL_355;
        }

        goto LABEL_475;
      }

      v41 = 1.0;
      v45 = v20 <= 0.0;
      v40 = 1.0;
    }

    else
    {
      v41 = v17 * *&v291[4];
      if (v40 < 0.0)
      {
        if (v41 >= 1.0)
        {
          v42 = v17 * *&v291[8];
          if ((v17 * *&v291[8]) >= 1.0)
          {
            if (v20 <= 0.0)
            {
              goto LABEL_475;
            }

            v40 = 0.0;
            v41 = 1.0;
            v39 = 1.0;
            goto LABEL_291;
          }

          if (v42 >= 0.0)
          {
            v43 = *&v291[12];
            v40 = 0.0;
            v41 = 1.0;
            if (v18 > 0.0)
            {
              v39 = 1.0;
            }

            else
            {
              v39 = 1.0;
              if (v42 <= 0.0)
              {
                goto LABEL_475;
              }
            }

            goto LABEL_354;
          }

          if (v18 <= 0.0 || v20 <= 0.0)
          {
            goto LABEL_475;
          }

          v40 = 0.0;
          v41 = 1.0;
          v39 = 1.0;
LABEL_268:
          v42 = 0.0;
          v43 = *&v291[12];
          goto LABEL_355;
        }

        v42 = v17 * *&v291[8];
        v39 = 1.0;
        if (v41 < 0.0)
        {
          if (v42 < 1.0)
          {
            if (v42 < 0.0)
            {
LABEL_85:
              if (v18 > 0.0 && v20 > 0.0)
              {
                v43 = *&v291[12];
                v42 = 0.0;
                v41 = 0.0;
                v40 = 0.0;
                goto LABEL_355;
              }

              goto LABEL_480;
            }

            v43 = *&v291[12];
            if (v18 <= 0.0 && v42 <= 0.0)
            {
              goto LABEL_480;
            }

LABEL_337:
            v41 = 0.0;
            v40 = 0.0;
            if (v20 <= 0.0)
            {
              goto LABEL_475;
            }

            goto LABEL_355;
          }

LABEL_231:
          if (v20 > 0.0)
          {
            v43 = *&v291[12];
            v41 = 0.0;
            v42 = 1.0;
            v40 = 0.0;
            goto LABEL_355;
          }

          goto LABEL_475;
        }

        if (v42 < 1.0)
        {
          if (v42 >= 0.0)
          {
            v43 = *&v291[12];
            if ((v18 > 0.0 || v42 > 0.0) && v20 > 0.0)
            {
              v40 = 0.0;
              goto LABEL_355;
            }

            goto LABEL_475;
          }

          goto LABEL_245;
        }

        v40 = 0.0;
        goto LABEL_290;
      }

      if (v41 < 1.0)
      {
        v42 = v17 * *&v291[8];
        v39 = 1.0;
        if (v41 < 0.0)
        {
          if (v42 >= 1.0)
          {
            if (v20 > 0.0)
            {
              v43 = *&v291[12];
              v41 = 0.0;
              v42 = 1.0;
              goto LABEL_355;
            }

            goto LABEL_475;
          }

          if (v42 >= 0.0)
          {
            v43 = *&v291[12];
            if (v18 <= 0.0 && v42 <= 0.0)
            {
              goto LABEL_480;
            }

            v41 = 0.0;
            if (v20 <= 0.0)
            {
              goto LABEL_480;
            }

            goto LABEL_355;
          }

          if (v18 <= 0.0 || v20 <= 0.0)
          {
            goto LABEL_480;
          }

LABEL_150:
          v43 = *&v291[12];
          v42 = 0.0;
          v41 = 0.0;
          goto LABEL_355;
        }

        if (v42 < 1.0)
        {
LABEL_265:
          if (v42 < 0.0)
          {
            if (v18 <= 0.0)
            {
              goto LABEL_475;
            }

LABEL_267:
            if (v20 <= 0.0)
            {
              goto LABEL_475;
            }

            goto LABEL_268;
          }

          goto LABEL_269;
        }

LABEL_290:
        if (v20 <= 0.0)
        {
          goto LABEL_475;
        }

        goto LABEL_291;
      }

      v42 = v17 * *&v291[8];
      if ((v17 * *&v291[8]) < 1.0)
      {
        if (v42 < 0.0)
        {
          if (v18 <= 0.0 || v20 <= 0.0)
          {
            goto LABEL_480;
          }

          v43 = *&v291[12];
          v41 = 1.0;
          goto LABEL_168;
        }

        v43 = *&v291[12];
        v41 = 1.0;
        if (v18 > 0.0)
        {
LABEL_275:
          v39 = 1.0;
          if (v20 > 0.0)
          {
            goto LABEL_355;
          }

          goto LABEL_475;
        }

LABEL_292:
        if (v42 <= 0.0)
        {
          goto LABEL_475;
        }

LABEL_293:
        v46 = v20 <= 0.0;
        goto LABEL_294;
      }

      v41 = 1.0;
      v45 = v20 <= 0.0;
    }

    v39 = 1.0;
    if (v45)
    {
      goto LABEL_475;
    }

    goto LABEL_291;
  }

  v40 = v17 * *v291;
  if (v39 >= 0.0)
  {
    if (v40 >= 1.0)
    {
      v41 = v17 * *&v291[4];
      if ((v17 * *&v291[4]) >= 1.0)
      {
        v42 = v17 * *&v291[8];
        v41 = 1.0;
        if ((v17 * *&v291[8]) < 1.0)
        {
          if (v42 < 0.0)
          {
            if (v18 <= 0.0)
            {
              goto LABEL_475;
            }

            v40 = 1.0;
            if (v20 <= 0.0)
            {
              goto LABEL_475;
            }

            goto LABEL_268;
          }

          v43 = *&v291[12];
          if (v18 <= 0.0)
          {
            if (v42 <= 0.0)
            {
              goto LABEL_475;
            }

            v40 = 1.0;
            if (v20 <= 0.0)
            {
              goto LABEL_475;
            }

            goto LABEL_355;
          }

LABEL_278:
          v40 = 1.0;
          if (v20 > 0.0)
          {
            goto LABEL_355;
          }

          goto LABEL_475;
        }

LABEL_225:
        v40 = 1.0;
        if (v20 <= 0.0)
        {
          goto LABEL_475;
        }

        goto LABEL_291;
      }

      v42 = v17 * *&v291[8];
      v40 = 1.0;
      if (v41 < 0.0)
      {
        if (v42 < 1.0)
        {
          if (v42 >= 0.0)
          {
            v43 = *&v291[12];
            if ((v18 > 0.0 || v42 > 0.0) && v20 > 0.0)
            {
              v41 = 0.0;
              goto LABEL_355;
            }

            goto LABEL_475;
          }

          goto LABEL_148;
        }

LABEL_233:
        v43 = *&v291[12];
        v41 = 0.0;
        if (v18 <= 0.0)
        {
          if (v20 > 0.0)
          {
            v42 = 1.0;
            goto LABEL_355;
          }
        }

        else
        {
          v42 = 1.0;
          if (v20 > 0.0)
          {
            goto LABEL_355;
          }
        }

        goto LABEL_475;
      }

      if (v42 >= 1.0)
      {
        goto LABEL_290;
      }

      if (v42 < 0.0)
      {
        if (v18 > 0.0 && v20 > 0.0)
        {
          v43 = *&v291[12];
          v42 = 0.0;
          goto LABEL_355;
        }

        goto LABEL_475;
      }

LABEL_269:
      v43 = *&v291[12];
LABEL_317:
      if (v18 <= 0.0 && v42 <= 0.0)
      {
        goto LABEL_475;
      }

LABEL_354:
      if (v20 > 0.0)
      {
        goto LABEL_355;
      }

      goto LABEL_475;
    }

    v41 = v17 * *&v291[4];
    if (v40 < 0.0)
    {
      if (v41 < 1.0)
      {
        v42 = v17 * *&v291[8];
        if (v41 < 0.0)
        {
          if (v42 < 1.0)
          {
            if (v42 < 0.0)
            {
              goto LABEL_85;
            }

            v43 = *&v291[12];
            if (v18 <= 0.0 && v42 <= 0.0)
            {
              goto LABEL_475;
            }

            goto LABEL_337;
          }

          goto LABEL_231;
        }

        if (v42 >= 1.0)
        {
          if (v20 > 0.0)
          {
            v43 = *&v291[12];
            v40 = 0.0;
            v42 = 1.0;
            goto LABEL_355;
          }

          goto LABEL_475;
        }

        if (v42 >= 0.0)
        {
          v43 = *&v291[12];
          if (v18 <= 0.0 && v42 <= 0.0)
          {
            goto LABEL_475;
          }

          v40 = 0.0;
          if (v20 <= 0.0)
          {
            goto LABEL_475;
          }

          goto LABEL_355;
        }

LABEL_245:
        if (v18 <= 0.0 || v20 <= 0.0)
        {
          goto LABEL_480;
        }

        v43 = *&v291[12];
        v42 = 0.0;
        v40 = 0.0;
        goto LABEL_355;
      }

      v42 = v17 * *&v291[8];
      if ((v17 * *&v291[8]) >= 1.0)
      {
        if (v20 <= 0.0)
        {
          goto LABEL_475;
        }

        v40 = 0.0;
        v41 = 1.0;
        goto LABEL_291;
      }

      if (v42 < 0.0)
      {
        if (v18 <= 0.0 || v20 <= 0.0)
        {
          goto LABEL_475;
        }

        v40 = 0.0;
        v41 = 1.0;
        goto LABEL_268;
      }

      v43 = *&v291[12];
      v40 = 0.0;
LABEL_316:
      v41 = 1.0;
      goto LABEL_317;
    }

    if (v41 >= 1.0)
    {
      v42 = v17 * *&v291[8];
      if ((v17 * *&v291[8]) < 1.0)
      {
        if (v42 < 0.0)
        {
          if (v18 > 0.0 && v20 > 0.0)
          {
            v43 = *&v291[12];
            v41 = 1.0;
            v42 = 0.0;
            goto LABEL_355;
          }

          goto LABEL_475;
        }

        v43 = *&v291[12];
        goto LABEL_316;
      }

      v41 = 1.0;
    }

    else
    {
      v42 = v17 * *&v291[8];
      if (v41 < 0.0)
      {
        if (v42 < 1.0)
        {
          if (v42 >= 0.0)
          {
            v43 = *&v291[12];
            if (v18 <= 0.0 && v42 <= 0.0)
            {
              goto LABEL_475;
            }

            v41 = 0.0;
            if (v20 <= 0.0)
            {
              goto LABEL_475;
            }

            goto LABEL_355;
          }

LABEL_148:
          if (v18 <= 0.0 || v20 <= 0.0)
          {
            goto LABEL_475;
          }

          goto LABEL_150;
        }

        goto LABEL_233;
      }

      if (v42 < 1.0)
      {
        goto LABEL_265;
      }
    }

    goto LABEL_290;
  }

  if (v40 >= 1.0)
  {
    v41 = v17 * *&v291[4];
    if ((v17 * *&v291[4]) < 1.0)
    {
      v42 = v17 * *&v291[8];
      v40 = 1.0;
      if (v41 < 0.0)
      {
        if (v42 < 1.0)
        {
          if (v42 >= 0.0)
          {
            v43 = *&v291[12];
            if (v18 <= 0.0 && v42 <= 0.0 || v20 <= 0.0)
            {
              goto LABEL_480;
            }

            goto LABEL_137;
          }

LABEL_134:
          if (v18 <= 0.0 || v20 <= 0.0)
          {
            goto LABEL_480;
          }

          v43 = *&v291[12];
          v42 = 0.0;
LABEL_137:
          v41 = 0.0;
          v39 = 0.0;
          goto LABEL_355;
        }

        v43 = *&v291[12];
        v41 = 0.0;
        if (v18 > 0.0)
        {
          v42 = 1.0;
          goto LABEL_301;
        }

        if (v20 <= 0.0)
        {
          goto LABEL_475;
        }

LABEL_325:
        v42 = 1.0;
        v39 = 0.0;
        goto LABEL_355;
      }

      if (v42 >= 1.0)
      {
LABEL_260:
        v39 = 0.0;
        goto LABEL_290;
      }

      if (v42 >= 0.0)
      {
LABEL_299:
        v43 = *&v291[12];
        v39 = 0.0;
        goto LABEL_317;
      }

      if (v18 <= 0.0 || v20 <= 0.0)
      {
        goto LABEL_475;
      }

      v43 = *&v291[12];
LABEL_214:
      v42 = 0.0;
      v39 = 0.0;
      goto LABEL_355;
    }

    v42 = v17 * *&v291[8];
    v41 = 1.0;
    if ((v17 * *&v291[8]) < 1.0)
    {
      if (v42 < 0.0)
      {
        if (v18 > 0.0 && v20 > 0.0)
        {
          v43 = *&v291[12];
          v42 = 0.0;
          v40 = 1.0;
          v39 = 0.0;
          goto LABEL_355;
        }

        goto LABEL_475;
      }

      v43 = *&v291[12];
      if (v18 <= 0.0)
      {
        if (v42 <= 0.0 || v20 <= 0.0)
        {
          goto LABEL_475;
        }

        v39 = 0.0;
        v40 = 1.0;
        goto LABEL_355;
      }

      v39 = 0.0;
      goto LABEL_278;
    }

    v39 = 0.0;
    goto LABEL_225;
  }

  v41 = v17 * *&v291[4];
  if (v40 >= 0.0)
  {
    if (v41 < 1.0)
    {
      v42 = v17 * *&v291[8];
      if (v41 < 0.0)
      {
        if (v42 < 1.0)
        {
          if (v42 >= 0.0)
          {
            v43 = *&v291[12];
            if (v18 <= 0.0 && v42 <= 0.0)
            {
              goto LABEL_480;
            }

            v41 = 0.0;
            v47 = v20 <= 0.0;
LABEL_478:
            v39 = 0.0;
            if (v47)
            {
              goto LABEL_480;
            }

            goto LABEL_355;
          }

          goto LABEL_134;
        }

        if (v20 <= 0.0)
        {
          goto LABEL_475;
        }

        v43 = *&v291[12];
        v41 = 0.0;
        goto LABEL_325;
      }

      if (v42 < 1.0)
      {
        if (v42 < 0.0)
        {
          if (v18 <= 0.0)
          {
            goto LABEL_475;
          }

          v39 = 0.0;
          goto LABEL_267;
        }

        goto LABEL_299;
      }

      goto LABEL_260;
    }

    v42 = v17 * *&v291[8];
    if ((v17 * *&v291[8]) >= 1.0)
    {
      if (v20 <= 0.0)
      {
        goto LABEL_475;
      }

      v39 = 0.0;
      v41 = 1.0;
      goto LABEL_291;
    }

    if (v42 < 0.0)
    {
      if (v18 <= 0.0 || v20 <= 0.0)
      {
        goto LABEL_480;
      }

      v43 = *&v291[12];
      v41 = 1.0;
      goto LABEL_214;
    }

    v43 = *&v291[12];
    if (v18 <= 0.0)
    {
      if (v42 <= 0.0 || v20 <= 0.0)
      {
        goto LABEL_475;
      }

      v39 = 0.0;
      v41 = 1.0;
      goto LABEL_355;
    }

    v39 = 0.0;
    v41 = 1.0;
    if (v20 > 0.0)
    {
      goto LABEL_355;
    }

LABEL_475:
    sub_1AFBAA2F8(&v252, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
    sub_1AF597500(&v286);
    sub_1AF597500(&v286);

    return sub_1AFBABE60(v250, sub_1AFA0D2A0);
  }

  if (v41 >= 1.0)
  {
    v42 = v17 * *&v291[8];
    if ((v17 * *&v291[8]) < 1.0)
    {
      if (v42 < 0.0)
      {
        if (v18 <= 0.0 || v20 <= 0.0)
        {
          goto LABEL_475;
        }

        v43 = *&v291[12];
        v41 = 1.0;
        goto LABEL_241;
      }

      v43 = *&v291[12];
      v40 = 0.0;
      v41 = 1.0;
      if (v18 <= 0.0)
      {
        goto LABEL_347;
      }

      goto LABEL_301;
    }

    if (v20 <= 0.0)
    {
      goto LABEL_475;
    }

    v40 = 0.0;
    v41 = 1.0;
    v39 = 0.0;
LABEL_291:
    v42 = 1.0;
    v43 = *&v291[12];
    goto LABEL_355;
  }

  v42 = v17 * *&v291[8];
  if (v41 >= 0.0)
  {
    if (v42 < 1.0)
    {
      if (v42 < 0.0)
      {
        if (v18 <= 0.0 || v20 <= 0.0)
        {
          goto LABEL_475;
        }

        v43 = *&v291[12];
LABEL_241:
        v42 = 0.0;
        goto LABEL_242;
      }

      v43 = *&v291[12];
      v40 = 0.0;
      if (v18 <= 0.0)
      {
LABEL_347:
        v39 = 0.0;
        if (v42 <= 0.0)
        {
          goto LABEL_475;
        }

        goto LABEL_354;
      }

LABEL_301:
      v39 = 0.0;
      if (v20 > 0.0)
      {
        goto LABEL_355;
      }

      goto LABEL_475;
    }

    v40 = 0.0;
    v39 = 0.0;
    if (v20 <= 0.0)
    {
      goto LABEL_475;
    }

    goto LABEL_291;
  }

  if (v42 >= 1.0)
  {
    v41 = 0.0;
    v43 = *&v291[12];
    v42 = 1.0;
    v40 = 0.0;
    goto LABEL_301;
  }

  if (v42 < 0.0)
  {
    if (v18 > 0.0 && v20 > 0.0)
    {
      v43 = *&v291[12];
      v42 = 0.0;
      v41 = 0.0;
LABEL_242:
      v40 = 0.0;
      v39 = 0.0;
      goto LABEL_355;
    }

LABEL_480:
    sub_1AF597500(&v286);

    sub_1AFBABE60(v250, sub_1AFA0D2A0);
    sub_1AFBAA2F8(&v252, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
    return sub_1AF597500(&v286);
  }

  v43 = *&v291[12];
  if (v18 <= 0.0)
  {
    if (v42 <= 0.0)
    {
      goto LABEL_480;
    }

    v41 = 0.0;
    v47 = v20 <= 0.0;
    v40 = 0.0;
    goto LABEL_478;
  }

  v41 = 0.0;
  v40 = 0.0;
  v39 = 0.0;
  if (v20 <= 0.0)
  {
    goto LABEL_475;
  }

LABEL_355:
  if (!v204)
  {
    sub_1AF597500(&v286);
    goto LABEL_15;
  }

  if (v247.i64[0] <= 0)
  {
    sub_1AF5D15C0(&v252, &v274);
    sub_1AFBABE60(v250, sub_1AFA0D2A0);

    v190 = MEMORY[0x1E69E6720];
    sub_1AFBAA2F8(&v252, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
    sub_1AFBAA2F8(&v252, &qword_1ED725EA0, &type metadata for QueryResult, v190, sub_1AFBABEC0);
    sub_1AF597500(&v286);
    return sub_1AF597500(&v286);
  }

  if (!v203)
  {
    sub_1AF5D15C0(&v252, &v274);
    sub_1AF597500(&v286);
    goto LABEL_471;
  }

  v245 = 0;
  v242 = v39;
  v206 = v40;
  v207 = v41;
  v208 = v34;
  v225 = v31;
  v223 = v18;
  v48 = fmaxf(*(&v290 + 2), 0.001);
  v197 = v243;
  v49 = v202[4];
  v50 = *(v19 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5D15C0(&v252, &v274);
  sub_1AF5D15C0(&v252, &v274);
  v51 = 0;
  v224 = v20 - v48;
  v52 = v248 * 0.5;
  __asm { FMOV            V0.4S, #1.0 }

  v194 = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  v193 = _Q0;
  v195 = v50;
  v198 = v7;
  v210 = v42;
  v211 = v20;
  v209 = v43;
  v196 = v49;
  while (2)
  {
    v205 = v51;
    v56 = (v197 + 48 * v51);
    v57 = *v56;
    v229 = v56[1];
    v58 = *(v56 + 2);
    v59 = *(v56 + 3);
    v61 = *(v56 + 4);
    v60 = *(v56 + 5);
    if (v50)
    {
      v62 = *(v60 + 376);

      os_unfair_lock_lock(v62);
      os_unfair_lock_lock(*(v60 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v49);
    v63 = *(v32 + 4);
    v272[0] = *(v32 + 3);
    v272[1] = v63;
    v273 = v32[10];
    v64 = *(*(*(*(v60 + 40) + 16) + 32) + 16) + 1;
    v32[6] = ecs_stack_allocator_allocate(v32[4], 48 * v64, 8);
    v32[7] = v64;
    v32[9] = 0;
    v32[10] = 0;
    v32[8] = 0;
    v65 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v58, v59, v61, v32);
    v66 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v58, v59, v61, v32);
    v67 = v32;
    v68 = v66;
    v69 = sub_1AF64B110(&type metadata for NeighborCount, &off_1F252DA08, v58, v59, v61, v67);
    *&v274 = 0;
    v226 = v70;
    if (v70)
    {
      v71 = 0;
    }

    else
    {
      v71 = v69;
    }

    v218 = v71;
    v275 = 0u;
    v276 = 0u;
    v277 = xmmword_1AFE201A0;
    v278 = v194;
    *v279 = v193;
    *&v279[8] = 0;
    *&v279[16] = -1;
    sub_1AFA9ECE4(&v274, v208);
    v249 = v72;
    v73 = v60;
    if (v57 == v229)
    {

      v74 = v245;
      goto LABEL_465;
    }

    v192 = v60;
    v75 = v213;
    v74 = v245;
    v221 = v68;
    v76.i32[3] = v219;
    while (2)
    {
      v77 = 16 * v57;
      v78 = *(v68 + 16 * v57);
      v240 = v76.i32[3];
      v79 = v78;
      v79.i32[3] = v247.i32[3];
      v80 = vmulq_f32(v78, v78);
      v80.f32[0] = sqrtf(v80.f32[2] + vaddv_f32(*v80.f32));
      v247 = v79;
      if (v80.f32[0] > 0.000001)
      {
        v79.i64[0] = vdivq_f32(v78, vdupq_lane_s32(*v80.f32, 0)).u64[0];
        v79.f32[2] = v78.f32[2] / v80.f32[0];
        v79.i32[3] = 0;
      }

      v230 = *(v68 + 16 * v57);
      v244 = *(v65 + 16 * v57);
      v246 = v79;
      v81 = v249;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_1AF64E984(0, *(v81 + 16));
      }

      else
      {
        v85 = MEMORY[0x1E69E7CC0];
        if (*(v81 + 24) >= 2uLL)
        {
          sub_1AFBABEC0(0, &qword_1EB638510, &type metadata for FlockingParticle, MEMORY[0x1E69E6F90]);
          v68 = v221;
          v85 = swift_allocObject();
          v86 = j__malloc_size_0(v85);
          v85[2] = 0;
          v85[3] = 2 * ((v86 - 32) / 112);
        }

        v249 = v85;
      }

      v87 = v35;
      v88 = v242;
      v89 = 1.0;
      if (v75[2].i8[0] == 1)
      {
        v90 = *(v65 + 16 * v57);
        if (((~v90 & 0x7F800000) != 0 || (v90 & 0x7FFFFF) == 0) && ((~DWORD1(v90) & 0x7F800000) != 0 || (DWORD1(v90) & 0x7FFFFF) == 0) && ((~DWORD2(v90) & 0x7F800000) != 0 || (DWORD2(v90) & 0x7FFFFF) == 0))
        {
          v93 = v75[1].i64[0];
          v94 = *(v93 + 16);
          v95 = v213[2].i64[1];
          v96 = *(v95 + 16);

          v97 = v96;
          v68 = v221;
          sub_1AFB9E3C0(v95 + 32, v20, v97, v213, (v65 + v77), v93 + 32, v94, &v249, v208);

          v75 = v213;

          v89 = 1.0;
          v88 = v242;
          v87 = v35;
        }
      }

      v76 = v244;
      v76.i32[3] = v240;
      v98 = v249;
      v99 = *(v249 + 2);
      if (v99 < 2)
      {
        v108 = 0.0;
        if ((v226 & 1) == 0)
        {
          goto LABEL_369;
        }

        goto LABEL_370;
      }

      if (v223 <= 0.0)
      {
        goto LABEL_449;
      }

      v100 = v249[29];
      v101 = v99 - 1;
      v102 = v249 + 58;
      v103 = 0uLL;
      LODWORD(v83) = 1.0;
      v104 = 0.0;
      v220 = v240;
      v105 = v76;
      v106 = v246;
      v107 = v247;
      do
      {
        *&v84 = *v102;
        if (*v102 <= 0.000001)
        {
          goto LABEL_401;
        }

        v118 = *(v102 - 18);
        v119 = *(v98 + 48);
        v120 = *(v102 - 1);
        v121 = 0.0;
        if (*&v84 >= 0.000001)
        {
          v122 = *(v98 + 112);
          v123 = *(v102 - 2);
          if (v87 == 1)
          {
            goto LABEL_408;
          }

          v121 = *v102;
          if (!v87)
          {
            goto LABEL_416;
          }

          v125 = *(v98 + 80);
          v124 = *(v98 + 96);
          v126 = *(v102 - 10);
          v127 = *(v102 - 6);
          v128 = vceq_f32(v124.n128_u64[0], *&vextq_s8(v124, v124, 4uLL));
          if (v128.i32[0] & v128.i32[1] & 1) != 0 && (v129 = vceq_f32(*v127.f32, *&vextq_s8(v127, v127, 4uLL)), (v129.i32[0] & v129.i32[1]))
          {
LABEL_408:
            if (((*&v84 - v122) - v123) < 0.0)
            {
              v121 = 0.0;
            }

            else
            {
              v121 = (*&v84 - v122) - v123;
            }
          }

          else
          {
            v232 = v107;
            v234 = v105;
            v236 = v83;
            v238 = v103;
            v227 = *(v102 - 18);
            v228 = v84;
            v231 = *(v98 + 48);
            if (v87 == 2 && (v215 = *(v98 + 80), v216 = *(v102 - 10), v222 = *(v102 - 6), v214 = *(v98 + 96), v130 = sub_1AFA2D838(v124), v131 = sub_1AFA2D838(v222), v124 = v214, v125 = v215, v127 = v222, v126 = v216, v119 = v231, v118 = v227, v84 = v228, v89 = 1.0, (v130 + v131) <= *&v228))
            {
              v121 = (*&v228 - v122) - v123;
            }

            else
            {
              v292.columns[3] = v231;
              v292.columns[3].f32[3] = v89;
              v132 = vabsq_f32(v124);
              v132.i32[3] = 0;
              v133.i64[0] = 0x8000000080000000;
              v133.i64[1] = 0x8000000080000000;
              v134 = vorrq_s8(vandq_s8(v124, v133), vabsq_f32(vmaxnmq_f32(v132, xmmword_1AFE20A30)));
              v135 = vmulq_f32(v125, v125);
              v136 = vmulq_laneq_f32(v125, v125, 3);
              v137 = vmuls_lane_f32(v125.f32[0], *v125.f32, 1);
              v138 = vmuls_lane_f32(v125.f32[1], v125, 2);
              v139 = vmuls_lane_f32(v125.f32[0], v125, 2);
              v140 = vaddq_f32(v134, v134);
              v141 = v135.f32[1];
              v142.i32[3] = 0;
              v142.f32[0] = (0.5 - v135.f32[1]) - v135.f32[2];
              v142.f32[1] = v137 + v136.f32[2];
              v142.f32[2] = v139 - v136.f32[1];
              v292.columns[0] = vmulq_n_f32(v142, v140.f32[0]);
              v143 = 0.5 - v135.f32[0];
              v144.i32[3] = 0;
              v144.f32[0] = v137 - v136.f32[2];
              v144.f32[1] = (0.5 - v135.f32[0]) - v135.f32[2];
              v144.f32[2] = v138 + v136.f32[0];
              v292.columns[1] = vmulq_lane_f32(v144, *v140.f32, 1);
              v136.f32[0] = v138 - v136.f32[0];
              v145.i32[3] = 0;
              v145.f32[0] = v139 + v136.f32[1];
              v145.i32[1] = v136.i32[0];
              v145.f32[2] = v143 - v141;
              v146 = v118;
              v146.f32[3] = v89;
              v292.columns[2] = vmulq_laneq_f32(v145, v140, 2);
              v147 = vabsq_f32(v127);
              v147.i32[3] = 0;
              v148 = vorrq_s8(vandq_s8(v127, v133), vabsq_f32(vmaxnmq_f32(v147, xmmword_1AFE20A30)));
              v149 = vmulq_f32(v126, v126);
              v150 = vmulq_laneq_f32(v126, v126, 3);
              v151 = vmuls_lane_f32(v126.f32[0], *v126.f32, 1);
              v140.f32[0] = vmuls_lane_f32(v126.f32[1], v126, 2);
              v152 = vmuls_lane_f32(v126.f32[0], v126, 2);
              v153 = vaddq_f32(v148, v148);
              v154.i32[3] = 0;
              v154.f32[0] = (0.5 - v149.f32[1]) - v149.f32[2];
              v154.f32[1] = v151 + v150.f32[2];
              v154.f32[2] = v152 - v150.f32[1];
              v142.i32[3] = 0;
              v142.f32[0] = v151 - v150.f32[2];
              v142.f32[1] = (0.5 - v149.f32[0]) - v149.f32[2];
              v142.f32[2] = v140.f32[0] + v150.f32[0];
              v150.f32[0] = v140.f32[0] - v150.f32[0];
              v140.i32[3] = 0;
              v140.f32[0] = v152 + v150.f32[1];
              v140.i32[1] = v150.i32[0];
              v140.f32[2] = (0.5 - v149.f32[0]) - v149.f32[1];
              v155 = sub_1AFBA5644(v292, vmulq_n_f32(v154, v153.f32[0]), vmulq_lane_f32(v142, *v153.f32, 1), vmulq_laneq_f32(v140, v153, 2), v146, *&v84);
              v119 = v231;
              v118 = v227;
              v84 = v228;
              v89 = 1.0;
              v121 = v155;
            }

            v87 = v35;
            v88 = v242;
            v106 = v246;
            v83 = v236;
            v103 = v238;
            v107 = v232;
            v105 = v234;
          }
        }

LABEL_416:
        v156 = vsubq_f32(v118, v119);
        v157 = v248 + (v38 * (v89 - (v100 / (v100 + v120))));
        if (v88 != 0.0 && v121 < v48)
        {
          v158 = (((1.0 / (v48 * 0.2)) * v121) * ((1.0 / (v48 * 0.2)) * v121)) + ((v89 - (((1.0 / (v48 * 0.2)) * v121) * ((1.0 / (v48 * 0.2)) * v121))) * 10.0);
          if ((v48 * 0.2) < v121)
          {
            v158 = ((1.0 / (v48 - (v48 * 0.2))) * (v48 - v121)) * ((1.0 / (v48 - (v48 * 0.2))) * (v48 - v121));
          }

          if (v157 < v89)
          {
            v158 = v157 * v158;
          }

          v159 = 1.0;
          if (v158 < 1.0)
          {
            v159 = v158;
          }

          if (v104 <= v159)
          {
            v104 = v159;
          }

          v160 = (v156.f32[2] * v158) / *&v84;
          *v161.f32 = vsub_f32(*v103.f32, vdiv_f32(vmul_n_f32(*v156.f32, v158), vdup_lane_s32(*&v84, 0)));
          v161.i64[1] = COERCE_UNSIGNED_INT(v103.f32[2] - v160);
          v103 = v161;
        }

        if (v104 < v89 && v48 < v121)
        {
          *v156.f32 = vdiv_f32(*v156.f32, vdup_lane_s32(*&v84, 0));
          v156.f32[2] = v156.f32[2] / *&v84;
          v162 = vmulq_f32(v106, v156);
          v163 = v162.f32[2] + vaddv_f32(*v162.f32);
          if (v163 <= v89)
          {
            if (v163 >= -1.0)
            {
              v233 = v107;
              v235 = v105;
              v237 = v83;
              v239 = v103;
              v165 = acosf(v163);
              v164 = v241;
              if (v165 >= v241)
              {
                v87 = v35;
                v88 = v242;
                v89 = 1.0;
                v106 = v246;
                v83 = v237;
                v103 = v239;
                v107 = v233;
                v105 = v235;
                goto LABEL_401;
              }

              v109 = 1.0;
              v87 = v35;
              v88 = v242;
              v89 = 1.0;
              v106 = v246;
              v83 = v237;
              v103 = v239;
              v107 = v233;
              v105 = v235;
              if (v165 <= v225)
              {
                goto LABEL_398;
              }
            }

            else
            {
              v164 = v241;
              if (v241 <= 3.1416)
              {
                goto LABEL_401;
              }

              v109 = 1.0;
              v165 = 3.1416;
              if (v225 >= 3.1416)
              {
                goto LABEL_398;
              }
            }
          }

          else
          {
            v164 = v241;
            if (v241 <= 0.0)
            {
              goto LABEL_401;
            }

            v109 = 1.0;
            v165 = 0.0;
            if (v225 >= 0.0)
            {
              goto LABEL_398;
            }
          }

          v109 = v217 * (v164 - v165);
LABEL_398:
          v110 = (v121 - v48) / v224;
          _NF = v110 < 0.5;
          v111 = sqrtf(v110 + v110);
          v112 = ((v89 - v110) + (v89 - v110)) * ((v89 - v110) + (v89 - v110));
          if (_NF)
          {
            v112 = v111;
          }

          v113 = v112 * ((v109 * (fminf(v157, v89) * v109)) * v112);
          v114 = *(v102 - 14);
          v115 = vmuls_lane_f32(v113, v114, 2);
          v114.i64[0] = vaddq_f32(v107, vmulq_n_f32(v114, v113)).u64[0];
          v114.f32[2] = v107.f32[2] + v115;
          v114.i32[3] = 0;
          v116 = *(v102 - 18);
          v117 = vmuls_lane_f32(v113, v116, 2);
          v116.i64[0] = vaddq_f32(v105, vmulq_n_f32(v116, v113)).u64[0];
          v116.i64[1] = COERCE_UNSIGNED_INT(v105.f32[2] + v117);
          *&v83 = *&v83 + v113;
          v105 = v116;
          v107 = v114;
        }

LABEL_401:
        v102 += 28;
        --v101;
      }

      while (v101);
      v166 = v247;
      v42 = v210;
      v20 = v211;
      v52 = v248 * 0.5;
      v43 = v209;
      v68 = v221;
      v76.i32[3] = v220;
      if (*&v83 > v89)
      {
        v167 = vdiv_f32(*v107.f32, vdup_lane_s32(*&v83, 0));
        v168 = v107.f32[2] / *&v83;
        v169 = v206 * (v89 - v104);
        if (v169 >= v89)
        {
          *v170.f32 = vmul_n_f32(v167, v169);
          v171 = v169 * v168;
        }

        else
        {
          *v170.f32 = vadd_f32(vmul_n_f32(*v230.f32, v89 - v169), vmul_n_f32(v167, v169));
          v171 = vmuls_lane_f32(v89 - v169, v230, 2) + (v169 * v168);
        }

        v170.i64[1] = LODWORD(v171);
        v172 = v207 * (v89 - v104);
        v173 = v172 * ((v105.f32[2] / *&v83) - v244.f32[2]);
        *v82.f32 = vdup_lane_s32(*&v83, 0);
        v166.i64[0] = vaddq_f32(vmulq_n_f32(vsubq_f32(vdivq_f32(v105, v82), v244), v172), v170).u64[0];
        v166.f32[2] = v173 + v170.f32[2];
        v166.i32[3] = 0;
      }

      if (v104 > 0.0)
      {
        v166.i64[0] = vaddq_f32(vmulq_n_f32(v103, v88 * v104), v166).u64[0];
        v166.f32[2] = vmuls_lane_f32(v88 * v104, v103, 2) + v166.f32[2];
        v166.i32[3] = 0;
      }

      *&v174 = vmuls_lane_f32(v212, v230, 2) + vmuls_lane_f32(v223, v166, 2);
      *&v175 = vaddq_f32(vmulq_n_f32(v230, v212), vmulq_n_f32(v166, v223)).u64[0];
      *(&v175 + 1) = v174;
      *(v221 + 16 * v57) = v175;
LABEL_449:
      if (v42 > 0.0)
      {
        v176 = *(v98 + 16) - 1;
        if (*(v98 + 16) != 1)
        {
          v180 = *(v98 + 116);
          v181 = v43 * *(v98 + 112);
          v182 = (v98 + 232);
          do
          {
            v183 = v181 + (v43 * *(v182 - 2));
            v184 = *v182;
            _NF = *v182 >= 0.000001 && v184 < v183;
            if (_NF)
            {
              v186 = vsubq_f32(*(v182 - 18), *(v98 + 48));
              v187 = (v42 * ((v183 - v184) / v184)) * (v52 + (v38 * (v89 - (v180 / (v180 + *(v182 - 1))))));
              *&v188 = COERCE_FLOAT(*(v65 + v77 + 8)) - vmuls_lane_f32(v187, v186, 2);
              *&v189 = vsubq_f32(*(v65 + 16 * v57), vmulq_n_f32(v186, v187)).u64[0];
              *(&v189 + 1) = __PAIR64__(LODWORD(v89), v188);
              *(v65 + 16 * v57) = v189;
            }

            v182 += 28;
            --v176;
          }

          while (v176);
        }
      }

      if ((v226 & 1) == 0)
      {
        v108 = 0.0;
        v177 = *(v98 + 16) - 1;
        if (*(v98 + 16) != 1)
        {
          v178 = (v98 + 232);
          do
          {
            v179 = *v178;
            v178 += 28;
            v108 = v108 + (v89 - (v179 / v20));
            --v177;
          }

          while (v177);
        }

LABEL_369:
        *(v218 + 4 * v57) = v108;
      }

LABEL_370:
      if (++v57 != v229)
      {
        continue;
      }

      break;
    }

    v219 = v76.i32[3];

    v73 = v192;
LABEL_465:
    v266 = v204;
    v32 = v202;
    v267 = v201;
    v268 = v199;
    v269 = v198;
    v270 = v200;
    v271 = v9;
    sub_1AF630994(v202, &v266, v272);
    v245 = v74;
    sub_1AF62D29C(v73);
    v49 = v196;
    ecs_stack_allocator_pop_snapshot(v196);
    v50 = v195;
    if (v195)
    {
      os_unfair_lock_unlock(*(v73 + 344));
      os_unfair_lock_unlock(*(v73 + 376));
    }

    v51 = v205 + 1;
    if (v205 + 1 != v203)
    {
      continue;
    }

    break;
  }

  sub_1AF597500(&v286);
  sub_1AFBAA2F8(&v252, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
LABEL_471:

  sub_1AFBABE60(v250, sub_1AFA0D2A0);
  v191 = MEMORY[0x1E69E6720];
  sub_1AFBAA2F8(&v252, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
  sub_1AF597500(&v286);
  return sub_1AFBAA2F8(&v252, &qword_1ED725EA0, &type metadata for QueryResult, v191, sub_1AFBABEC0);
}

uint64_t sub_1AFBA7794(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  swift_retain_n();
  v4 = sub_1AF3D0564(v2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v9;

  v12 = 134217728.0;
  v13 = v6;
  if (v11 == 6)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  if (v11 == 6)
  {
    v15 = 0.1;
  }

  else
  {
    v15 = *(&v8 + 1);
  }

  if (v11 == 6)
  {
    v16 = 0.05;
  }

  else
  {
    v16 = *&v8;
  }

  if (v11 != 6)
  {
    v12 = v13;
  }

  v98 = v12;
  if (v11 == 6)
  {
    v17 = 10.0;
  }

  else
  {
    v17 = *(&v4 + 1);
  }

  if (v11 == 6)
  {
    v18 = 0.3;
  }

  else
  {
    v18 = *&v4;
  }

  v19 = *(a1 + 104);
  v117 = *(a1 + 88);
  v118 = v19;
  v119 = *(a1 + 120);
  sub_1AF82917C(v109);
  sub_1AFB93E58();
  if ((v18 * v20) < 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v18 * v20;
  }

  if ((v18 * v20) >= 1.0)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = v21;
  }

  if ((HIDWORD(v98) & 0x7FFFFF) != 0)
  {
    v23 = *&v98;
  }

  else
  {
    v23 = *(&v98 + 1);
  }

  if ((~HIDWORD(v98) & 0x7F800000) != 0)
  {
    v23 = *(&v98 + 1);
  }

  if (*&v98 > *(&v98 + 1))
  {
    v24 = v23;
  }

  else
  {
    v24 = *&v98;
  }

  if ((HIDWORD(v98) & 0x7FFFFF) != 0)
  {
    v25 = *&v98;
  }

  else
  {
    v25 = *(&v98 + 1);
  }

  if ((~HIDWORD(v98) & 0x7F800000) != 0)
  {
    v25 = *(&v98 + 1);
  }

  if (*(&v98 + 1) >= *&v98)
  {
    v26 = v25;
  }

  else
  {
    v26 = *&v98;
  }

  v27 = v16 * v20;
  if (v27 < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v27;
  }

  v29 = 1.0 - v28;
  if (v27 >= 1.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v29;
  }

  *v31.i64 = sub_1AFB98F44(v14);
  v92 = v31;
  v115[0] = v109[0];
  v115[1] = v109[1];
  v116 = v110;
  sub_1AF6B06C0(v3, v115, 0x200000000, v111);
  if (*v111)
  {
    if (v114 <= 0)
    {
      v105 = *&v111[32];
      v106 = v112;
      v107 = v113;
      v108 = v114;
      v103 = *v111;
      v104 = *&v111[16];
      sub_1AF5DD298(&v103, &v100);
      sub_1AFBAA2F8(v109, &unk_1EB643038, &type metadata for Velocity, &off_1F2530AF8, sub_1AF5DD590);

      v87 = MEMORY[0x1E69E6720];
      sub_1AFBAA2F8(v111, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
      v88 = v87;
    }

    else
    {
      v96 = *(&v112 + 1);
      if (*(&v112 + 1))
      {
        v32 = 0;
        v33 = 0;
        v34 = 1.0 - v22;
        v35 = v17 * v22;
        v95 = *&v111[40];
        v36 = *(&v113 + 1);
        v37 = *(*(&v113 + 1) + 32);
        v38 = *(v113 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v100 = *v111;
        v101 = *&v111[8];
        v102 = *&v111[24];
        v89 = vdupq_laneq_s32(v92, 2);
        v90 = vdupq_lane_s32(*v92.i8, 0);
        v93 = v38;
        v94 = v37;
        while (1)
        {
          v97 = v33;
          v99 = v32;
          v39 = (v95 + 48 * v32);
          v41 = *v39;
          v40 = v39[1];
          v43 = *(v39 + 2);
          v42 = *(v39 + 3);
          v44 = *(v39 + 4);
          v45 = *(v39 + 5);
          if (v38)
          {
            v46 = *(v45 + 376);

            os_unfair_lock_lock(v46);
            os_unfair_lock_lock(*(v45 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v37);
          v47 = *(v36 + 64);
          v103 = *(v36 + 48);
          v104 = v47;
          *&v105 = *(v36 + 80);
          v48 = *(*(*(*(v45 + 40) + 16) + 32) + 16) + 1;
          *(v36 + 48) = ecs_stack_allocator_allocate(*(v36 + 32), 48 * v48, 8);
          *(v36 + 56) = v48;
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          *(v36 + 64) = 0;
          v49 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v43, v42, v44, v36);
          v51 = *(*(v45 + 40) + 16);
          v52 = *(v51 + 128);
          if (!*(v52 + 16) || (v53 = sub_1AF449CB8(&type metadata for Orientation), (v54 & 1) == 0) || *(*(v51 + 24) + 16 * *(*(v52 + 56) + 8 * v53) + 32) != &type metadata for Orientation)
          {
            if (v41 == v40)
            {
              goto LABEL_58;
            }

            v55 = v40 - v41;
            v56 = (v49 + 16 * v41);
            v33 = v97;
            v37 = v94;
            while (1)
            {
              v57 = *v56;
              v58 = vmulq_f32(v57, v57);
              *v50.i32 = sqrtf(v58.f32[2] + vaddv_f32(*v58.f32));
              if (*v50.i32 > 0.00000011921 && *v50.i32 >= v15)
              {
                break;
              }

              if (v15 > 0.00000011921)
              {
                v60 = v92;
                v61 = v15 * 1.05;
                if (*v50.i32 > 0.001)
                {
                  v60.i64[0] = vdivq_f32(v57, vdupq_lane_s32(v50, 0)).u64[0];
                  v60.f32[2] = v57.f32[2] / *v50.i32;
                  v60.i32[3] = 0;
                  v61 = v15 * 1.05;
                }

                goto LABEL_71;
              }

LABEL_62:
              ++v56;
              if (!--v55)
              {
                goto LABEL_59;
              }
            }

            v60.i64[0] = vdivq_f32(v57, vdupq_lane_s32(v50, 0)).u64[0];
            v60.f32[2] = v57.f32[2] / *v50.i32;
            v60.i32[3] = 0;
            v61 = *v50.i32;
LABEL_71:
            if (v61 > 0.00000011921)
            {
              v62 = v30 * (v35 + (v34 * v61));
              if (v62 >= v26)
              {
                v62 = v26;
              }

              if (v24 > v62)
              {
                v62 = v24;
              }

              *&v63 = vmuls_lane_f32(v62, v60, 2);
              v64.i64[0] = vmulq_n_f32(v60, v62).u64[0];
              v64.i64[1] = v63;
              *v56 = v64;
            }

            goto LABEL_62;
          }

          v65 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v43, v42, v44, v36);
          if (v41 != v40)
          {
            break;
          }

LABEL_58:
          v33 = v97;
          v37 = v94;
LABEL_59:
          sub_1AF630994(v36, &v100, &v103);
          sub_1AF62D29C(v45);
          ecs_stack_allocator_pop_snapshot(v37);
          v38 = v93;
          if (v93)
          {
            os_unfair_lock_unlock(*(v45 + 344));
            os_unfair_lock_unlock(*(v45 + 376));
          }

          v32 = v99 + 1;
          if (v99 + 1 == v96)
          {
            goto LABEL_101;
          }
        }

        v67 = v40 - v41;
        v68 = (v65 + 16 * v41);
        v69 = (v49 + 16 * v41);
        v33 = v97;
        v37 = v94;
        while (1)
        {
          v73 = *v69;
          v74 = vmulq_f32(v73, v73);
          *v66.i32 = sqrtf(v74.f32[2] + vaddv_f32(*v74.f32));
          if (*v66.i32 <= 0.00000011921 || *v66.i32 < v15)
          {
            if (v15 > 0.00000011921)
            {
              if (*v66.i32 <= 0.001)
              {
                v77 = vmulq_f32(*v68, xmmword_1AFE21390);
                v78 = vnegq_f32(v77);
                v79 = vtrn2q_s32(v77, vtrn1q_s32(v77, v78));
                v80 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v77, v78, 8uLL), *v92.i8, 1), vextq_s8(v79, v79, 8uLL), v90);
                v81 = vrev64q_s32(v77);
                v81.i32[0] = v78.i32[1];
                v81.i32[3] = v78.i32[2];
                v82 = vmlaq_f32(v80, v81, v89);
                v66 = vnegq_f32(v82);
                v83 = vtrn2q_s32(v82, vtrn1q_s32(v82, v66));
                v84 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v82, v66, 8uLL), *v68->f32, 1), vextq_s8(v83, v83, 8uLL), COERCE_FLOAT(*v68));
                v85 = vrev64q_s32(v82);
                v85.i32[0] = v66.i32[1];
                v85.i32[3] = v66.i32[2];
                v76 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v82, *v68, 3), v85, *v68, 2), v84);
                v66.i32[1] = v91.i32[1];
                v76.i32[3] = v91.i32[3];
                v91 = v76;
              }

              else
              {
                v76.i64[0] = vdivq_f32(v73, vdupq_lane_s32(*v66.i8, 0)).u64[0];
                v76.f32[2] = v73.f32[2] / *v66.i32;
                v76.i32[3] = 0;
              }

              *v66.i32 = v15 * 1.05;
              if ((v15 * 1.05) > 0.00000011921)
              {
LABEL_79:
                v70 = v30 * (v35 + (v34 * *v66.i32));
                if (v70 >= v26)
                {
                  v70 = v26;
                }

                if (v24 > v70)
                {
                  v70 = v24;
                }

                *&v71 = vmuls_lane_f32(v70, v76, 2);
                v72.i64[0] = vmulq_n_f32(v76, v70).u64[0];
                v72.i64[1] = v71;
                *v69 = v72;
              }
            }
          }

          else
          {
            v76.i64[0] = vdivq_f32(v73, vdupq_lane_s32(*v66.i8, 0)).u64[0];
            v76.f32[2] = v73.f32[2] / *v66.i32;
            v76.i32[3] = 0;
            if (*v66.i32 > 0.00000011921)
            {
              goto LABEL_79;
            }
          }

          ++v68;
          ++v69;
          if (!--v67)
          {
            goto LABEL_59;
          }
        }
      }

LABEL_101:

      sub_1AFBAA2F8(v109, &unk_1EB643038, &type metadata for Velocity, &off_1F2530AF8, sub_1AF5DD590);
      v88 = MEMORY[0x1E69E6720];
    }

    return sub_1AFBAA2F8(v111, &qword_1ED725EA0, &type metadata for QueryResult, v88, sub_1AFBABEC0);
  }

  else
  {
    sub_1AFBAA2F8(v109, &unk_1EB643038, &type metadata for Velocity, &off_1F2530AF8, sub_1AF5DD590);
  }
}

uint64_t sub_1AFBA7FB8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *a1;

  v6 = *(a1 + 8);

  sub_1AF3D0744(v6, &v172);

  v7 = v175;
  if (v175 == 2)
  {
    v7 = 1;
    v8 = 5.0;
    v9 = 1.0;
    v10 = 180.0;
    v11 = 120.0;
    v12 = 270.0;
    v13 = 60.0;
  }

  else
  {
    v8 = v172.n128_f32[1];
    v9 = v172.n128_f32[0];
    v12 = v172.n128_f32[3];
    v13 = v172.n128_f32[2];
    v11 = v173;
    v10 = v174;
  }

  sub_1AF3C9244(v6, v176);
  if (v177)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  v15 = vdupq_n_s32(v14);
  v158 = vbslq_s8(v15, xmmword_1AFE20150, v176[0]);
  v161 = vbslq_s8(v15, xmmword_1AFE201A0, v176[3]);
  v16 = vmulq_f32(v158, v158);
  v152 = vbslq_s8(v15, xmmword_1AFE20180, v176[2]);
  v156 = vbslq_s8(v15, xmmword_1AFE20160, v176[1]);
  v17 = vmulq_f32(v156, v156);
  v16.n128_u64[0] = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vadd_f32(vzip1_s32(v16.n128_u64[0], *v17.i8), vzip2_s32(v16.n128_u64[0], *v17.i8))));
  v18 = vmulq_f32(v152, v152);
  v16.n128_u64[1] = COERCE_UNSIGNED_INT(sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)));
  v162 = v8 * sub_1AFA2D838(v16);
  if (v7)
  {
    v19 = sub_1AFB371F8(a2);
    if (v19)
    {
      v21 = v19;
      v22 = v20;
      memset(v191, 0, 96);
      v191[96] = 12;
      ecs_stack_allocator_push_snapshot(*(v19 + 32));
      v23 = *(v22 + 16);
      v24 = 2 * v23;
      v25 = ecs_stack_allocator_allocate(*(v21 + 32), 16 * v23 + 48, 8);
      *v25 = &type metadata for DebugInfoWireframePrimitive;
      v25[1] = &off_1F25604A8;
      v25[2] = &type metadata for WorldTransform;
      v25[3] = &off_1F2529FC0;
      v25[4] = &type metadata for Beamed;
      v25[5] = &off_1F2529FA0;
      if (!v23)
      {
        v28 = 3;
        v26 = v161;
        goto LABEL_16;
      }

      v26 = v161;
      if (v23 <= 0x13)
      {
        goto LABEL_11;
      }

      v27 = 0;
      v130 = 2 * (v23 - 1);
      v28 = 3;
      if (&v25[v130 + 6] < v25 + 6 || &v25[v130 + 7] < v25 + 7 || (v23 - 1) >> 60)
      {
        goto LABEL_12;
      }

      if ((v25 + 6) < v22 + v24 * 8 + 32 && v22 + 32 < &v25[v24 + 6])
      {
LABEL_11:
        v27 = 0;
        v28 = 3;
      }

      else
      {
        v27 = v23 & 0x1FFFFFFFFFFFFFFCLL;
        v28 = v23 | 3;
        v131 = v25 + 10;
        v132 = (v22 + 64);
        v133 = v23 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v135 = *(v132 - 2);
          v134 = *(v132 - 1);
          v137 = *v132;
          v136 = v132[1];
          v132 += 4;
          *(v131 - 2) = v135;
          *(v131 - 1) = v134;
          *v131 = v137;
          v131[1] = v136;
          v131 += 4;
          v133 -= 4;
        }

        while (v133);
        if (v23 == v27)
        {
LABEL_16:
          v189[0].n128_u8[0] = 1;
          sub_1AF63D0A0(v25, v28, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v21, v191, v158, v156, v152, v26);
          ecs_stack_allocator_pop_snapshot(*(v21 + 32));
          v32 = v161;
          v32.n128_f32[3] = v162;
          v158 = v32;
          v33 = sub_1AF57EFBC(xmmword_1AFE9AAC0);
          v189[0] = v158;
          v190 = 3;
          ecs_stack_allocator_push_snapshot(*(v21 + 32));
          v34 = *(v22 + 16);
          v35 = 2 * v34;
          v36 = ecs_stack_allocator_allocate(*(v21 + 32), 16 * v34 + 32, 8);
          *v36 = &type metadata for DebugInfoWireframePrimitive;
          v36[1] = &off_1F25604A8;
          v36[2] = &type metadata for DebugInfoColor;
          v36[3] = &off_1F2560488;
          if (v34)
          {
            if (v34 > 5 && ((v36 + 4) >= v22 + v35 * 8 + 32 || v22 + 32 >= &v36[v35 + 4]))
            {
              v37 = v34 & 0x7FFFFFFFFFFFFFFCLL;
              v38 = v34 & 0x7FFFFFFFFFFFFFFCLL | 2;
              v138 = v36 + 8;
              v139 = (v22 + 64);
              v140 = v34 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v142 = *(v139 - 2);
                v141 = *(v139 - 1);
                v144 = *v139;
                v143 = v139[1];
                v139 += 4;
                *(v138 - 2) = v142;
                *(v138 - 1) = v141;
                *v138 = v144;
                v138[1] = v143;
                v138 += 4;
                v140 -= 4;
              }

              while (v140);
              if (v34 == v37)
              {
                goto LABEL_25;
              }
            }

            else
            {
              v37 = 0;
              v38 = 2;
            }

            v39 = v34 - v37;
            v40 = (v22 + 16 * v37 + 32);
            do
            {
              v41 = *v40++;
              *&v36[2 * v38++] = v41;
              --v39;
            }

            while (v39);
          }

          else
          {
            v38 = 2;
          }

LABEL_25:
          v180[0] = 1;
          sub_1AF63C898(v36, v38, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v21, v189, v33);
          ecs_stack_allocator_pop_snapshot(*(v21 + 32));
          sub_1AFB3CAB4(v21);
          goto LABEL_26;
        }
      }

LABEL_12:
      v29 = v23 - v27;
      v30 = (v22 + 16 * v27 + 32);
      do
      {
        v31 = *v30++;
        *&v25[2 * v28++] = v31;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

LABEL_26:
  v42 = *(a1 + 104);
  v186 = *(a1 + 88);
  v187 = v42;
  v188 = *(a1 + 120);
  sub_1AF5C9174(v178);
  sub_1AFB93E58();
  v44 = 0.0;
  v45 = 360.0;
  if (v12 <= 360.0)
  {
    v45 = v12;
  }

  if (v12 <= 0.0)
  {
    v45 = 0.0;
  }

  v46 = 360.0;
  if (v12 <= 360.0)
  {
    v46 = v12;
  }

  if (v12 <= 0.0)
  {
    v46 = 0.0;
  }

  if (v13 > 0.0)
  {
    v47 = 1.0 / v13;
  }

  else
  {
    v45 = v46;
    v47 = 1.0;
  }

  v48 = (v45 * 3.1416) / 180.0;
  if (v11 <= 180.0)
  {
    v49 = v11;
  }

  else
  {
    v49 = 180.0;
  }

  v50 = (v49 * 3.1416) / 180.0;
  if (v11 <= 0.0)
  {
    v50 = 0.0;
  }

  if (v50 >= v48)
  {
    v50 = v48;
  }

  v51 = v48 - v50;
  v52 = 0.0;
  if ((v48 - v50) < v48)
  {
    v52 = 1.0 / (v48 - v51);
  }

  if (v10 >= 0.0)
  {
    v44 = v10;
  }

  if (v9 > 0.0 && v162 > 0.0 && v13 > 0.0 && v48 > 0.0 && (v53 = (v44 * 3.1416) / 180.0, v53 > 0.0) && (v54 = v43, v184[0] = v178[0], v184[1] = v178[1], v185 = v179, sub_1AF6B06C0(v5, v184, 0x200000000, v180), *v180))
  {
    if (v183 <= 0)
    {
      v168 = *&v180[32];
      v169 = v181;
      v170 = v182;
      v171 = v183;
      v166 = *v180;
      v167 = *&v180[16];
      sub_1AF5DD298(&v166, &v163);
      sub_1AFBABE60(v178, sub_1AFA0D2A0);

      v145 = MEMORY[0x1E69E6720];
      sub_1AFBAA2F8(v180, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
      return sub_1AFBAA2F8(v180, &qword_1ED725EA0, &type metadata for QueryResult, v145, sub_1AFBABEC0);
    }

    else
    {
      v151 = *(&v181 + 1);
      if (*(&v181 + 1))
      {
        v55 = 0;
        v150 = *&v180[40];
        v56 = *(&v182 + 1);
        v57 = *(*(&v182 + 1) + 32);
        v58 = *(v182 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v163 = *v180;
        v164 = *&v180[8];
        v165 = *&v180[24];
        v146 = v9 * v54;
        v149 = v58;
        while (1)
        {
          v157 = v55;
          v60 = (v150 + 48 * v55);
          v61 = *v60;
          v62 = v60[1];
          v63 = *(v60 + 2);
          v64 = *(v60 + 3);
          v65 = *(v60 + 4);
          v66 = *(v60 + 5);
          v153 = v4;
          if (v58)
          {
            v67 = *(v66 + 376);

            os_unfair_lock_lock(v67);
            os_unfair_lock_lock(*(v66 + 344));
          }

          else
          {
          }

          v68 = v57;
          ecs_stack_allocator_push_snapshot(v57);
          v69 = *(v56 + 64);
          v166 = *(v56 + 48);
          v167 = v69;
          *&v168 = *(v56 + 80);
          v70 = *(*(*(*(v66 + 40) + 16) + 32) + 16) + 1;
          *(v56 + 48) = ecs_stack_allocator_allocate(*(v56 + 32), 48 * v70, 8);
          *(v56 + 56) = v70;
          *(v56 + 72) = 0;
          *(v56 + 80) = 0;
          *(v56 + 64) = 0;
          v71 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v63, v64, v65, v56);
          v72 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v63, v64, v65, v56);
          if (v61 != v62)
          {
            break;
          }

          v57 = v68;
          v4 = v153;
          v77 = v158;
LABEL_64:
          v158 = v77;
          sub_1AF630994(v56, &v163, &v166);
          sub_1AF62D29C(v66);
          ecs_stack_allocator_pop_snapshot(v57);
          v58 = v149;
          if (v149)
          {
            os_unfair_lock_unlock(*(v66 + 344));
            os_unfair_lock_unlock(*(v66 + 376));
          }

          v55 = v157 + 1;
          if (v157 + 1 == v151)
          {
            goto LABEL_109;
          }
        }

        v78 = v62 - v61;
        v79 = (v72 + 16 * v61);
        v80 = (v71 + 16 * v61);
        v77.i32[3] = v158.n128_i32[3];
        v81 = v161;
        v57 = v68;
        v4 = v153;
        v82 = 1.0;
        while (1)
        {
          v89 = v77.i32[3];
          v90 = *v80;
          v77 = *v80;
          v77.i32[3] = v89;
          v91 = *v79;
          v92 = vmulq_f32(v91, v91);
          v92.f32[0] = sqrtf(v92.f32[2] + vaddv_f32(*v92.f32));
          if (v92.f32[0] > 0.00000011921)
          {
            v93 = vdiv_f32(*v91.f32, vdup_lane_s32(*v92.f32, 0));
            v73.f32[0] = v91.f32[2] / v92.f32[0];
            *v94.f32 = v93;
            v94.i64[1] = v73.u32[0];
            *v75.f32 = vsub_f32(*v81.f32, *v90.f32);
            v95 = v75;
            v95.f32[2] = *&v161.i32[2] - v90.f32[2];
            v96 = vmulq_f32(v95, v95);
            *v76.i32 = sqrtf(v96.f32[2] + vaddv_f32(*v96.f32));
            v83 = v81;
            if (*v76.i32 <= 0.00000011921)
            {
              goto LABEL_68;
            }

            *v75.f32 = vdiv_f32(vsub_f32(0, *v75.f32), vdup_lane_s32(v76, 0));
            v75.f32[2] = (0.0 - (*&v161.i32[2] - v90.f32[2])) / *v76.i32;
            v97 = vmulq_f32(v94, v75);
            v98 = v97.f32[2] + vaddv_f32(*v97.f32);
            if (fabsf(v98) > 0.00000011921)
            {
              break;
            }
          }

LABEL_75:
          ++v79;
          ++v80;
          if (!--v78)
          {
            goto LABEL_64;
          }
        }

        v75.i32[3] = 0;
        v99 = vmulq_f32(v81, v75);
        v100 = vmulq_f32(v77, v75);
        v76 = vadd_f32(vzip1_s32(*v99.i8, *v100.i8), vzip2_s32(*v99.i8, *v100.i8));
        v75 = vextq_s8(v100, v100, 8uLL);
        *v75.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v99, v99, 8uLL), *v75.f32), v76);
        v75.f32[0] = vsub_f32(*v75.f32, vdup_lane_s32(*v75.f32, 1)).f32[0] / v98;
        v83 = v81;
        if (v75.f32[0] > 0.0)
        {
          v101 = vmul_n_f32(v93, v75.f32[0]);
          v102 = v90.f32[2] + (v73.f32[0] * v75.f32[0]);
          *v83.f32 = vadd_f32(*v90.f32, v101);
          *v73.f32 = vsub_f32(*v83.f32, *v81.f32);
          v74.f32[0] = v102 - *&v161.i32[2];
          v103 = v73;
          v103.f32[2] = v102 - *&v161.i32[2];
          v75 = vmulq_f32(v103, v103);
          v75.f32[0] = v75.f32[2] + vaddv_f32(*v75.f32);
          if (v75.f32[0] > (v162 * v162))
          {
            v104 = vmul_n_f32(*v73.f32, v162);
            v105 = v162 * v74.f32[0];
            v74.f32[0] = sqrtf(v75.f32[0]);
            v106 = v105 / v74.f32[0];
            *v74.f32 = vdup_lane_s32(*v74.f32, 0);
            *v83.f32 = vadd_f32(*v81.f32, vdiv_f32(v104, *v74.f32));
            v102 = *&v161.i32[2] + v106;
          }

          v83.i64[1] = LODWORD(v102);
        }

LABEL_68:
        v84 = vsubq_f32(v83, v90);
        v85 = vmulq_f32(v84, v84);
        v85.f32[0] = sqrtf(v85.f32[2] + vaddv_f32(*v85.f32));
        v86 = v85.f32[0] > 0.00000011921 && v13 > v85.f32[0];
        v87 = v82 - (v47 * v85.f32[0]);
        if (v86 && v87 > 0.00000011921)
        {
          *v73.f32 = vdiv_f32(*v84.f32, vdup_lane_s32(*v85.f32, 0));
          v73.f32[2] = v84.f32[2] / v85.f32[0];
          v107 = vmulq_f32(v94, v73);
          v108 = v107.f32[2] + vaddv_f32(*v107.f32);
          if (v108 <= v82)
          {
            if (v108 >= -1.0)
            {
              v159 = v77;
              v154 = *v79;
              v147 = v84;
              v109 = acosf(v108);
              v84 = v147;
              v91 = v154;
              v77 = v159;
              v81 = v161;
              v82 = 1.0;
            }

            else
            {
              v109 = 3.1416;
            }

            if (v109 >= 0.001 && v109 < v48)
            {
              v110 = 1.0;
              if (v109 <= v51 || (v110 = v52 * (v48 - v109), v110 > 0.00000011921))
              {
                v111 = (v146 * v87) * v110;
                if (v111 > 0.001)
                {
                  v84.i32[3] = 0;
                  v112 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL), vnegq_f32(v91)), v84, vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL));
                  v113 = vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL);
                  v114 = vmulq_f32(v112, v112);
                  *&v115 = v114.f32[1] + (v114.f32[2] + v114.f32[0]);
                  *v114.f32 = vrsqrte_f32(v115);
                  *v114.f32 = vmul_f32(*v114.f32, vrsqrts_f32(v115, vmul_f32(*v114.f32, *v114.f32)));
                  v148 = vmulq_n_f32(v113, vmul_f32(*v114.f32, vrsqrts_f32(v115, vmul_f32(*v114.f32, *v114.f32))).f32[0]);
                  v116 = v53;
                  if (v109 < v53)
                  {
                    v116 = v109;
                  }

                  v117 = v116 * v111;
                  if (v109 >= v117)
                  {
                    v109 = v117;
                  }

                  v160 = v77;
                  v155 = v91;
                  v118 = __sincosf_stret(v109 * 0.5);
                  v77 = v160;
                  v81 = v161;
                  v82 = 1.0;
                  v119 = vmulq_n_f32(v148, v118.__sinval);
                  v120 = v119;
                  v120.i32[3] = LODWORD(v118.__cosval);
                  v121 = vmulq_f32(v120, xmmword_1AFE21390);
                  v122 = vnegq_f32(v121);
                  v123 = vtrn2q_s32(v121, vtrn1q_s32(v121, v122));
                  v124 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v121, v122, 8uLL), *v155.f32, 1), vextq_s8(v123, v123, 8uLL), v155.f32[0]);
                  v125 = vrev64q_s32(v121);
                  v125.i32[0] = v122.i32[1];
                  v125.i32[3] = v122.i32[2];
                  v126 = vmlaq_laneq_f32(v124, v125, v155, 2);
                  v127 = vnegq_f32(v126);
                  v128 = vtrn2q_s32(v126, vtrn1q_s32(v126, v127));
                  v73 = vextq_s8(v128, v128, 8uLL);
                  v75 = vrev64q_s32(v126);
                  v75.i32[0] = v127.i32[1];
                  v75.i32[3] = v127.i32[2];
                  v74 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v126, v127, 8uLL), *v119.f32, 1), v73, v119.f32[0]);
                  v129 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v126, v120, 3), v75, v119, 2), v74);
                  v129.i32[3] = 0;
                  *v79 = v129;
                }
              }
            }
          }
        }

        goto LABEL_75;
      }

LABEL_109:

      sub_1AFBABE60(v178, sub_1AFA0D2A0);
      return sub_1AFBAA2F8(v180, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
    }
  }

  else
  {
    sub_1AFBABE60(v178, sub_1AFA0D2A0);
  }
}

uint64_t sub_1AFBA8CB4(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  swift_retain_n();
  sub_1AF3D0824(v2, v139);
  v4 = *v139;
  v6 = v139[2];
  v5 = v139[3];
  v8 = v139[4];
  v7 = v139[5];

  if (v140 == 2)
  {
    v124 = xmmword_1AFEA0660;
    v121 = xmmword_1AFEA0670;
    v9 = 2.0;
  }

  else
  {
    v9 = v4;
    *&v10 = v6;
    *(&v10 + 1) = v5;
    v124 = v10;
    *&v10 = v8;
    *(&v10 + 1) = v7;
    v121 = v10;
  }

  sub_1AF3C9244(v2, v141);
  if (v142)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v12 = vdupq_n_s32(v11);
  v119 = vbslq_s8(v12, xmmword_1AFE20150, v141[0]);
  v117 = vbslq_s8(v12, xmmword_1AFE20160, v141[1]);
  v116 = vbslq_s8(v12, xmmword_1AFE20180, v141[2]);
  v127 = vbslq_s8(v12, 0, v141[3]);
  v13 = *(a1 + 104);
  v151 = *(a1 + 88);
  v152 = v13;
  v153 = *(a1 + 120);
  sub_1AF5C9174(v143);
  sub_1AFB93E58();
  v14 = v124;
  v16 = v15;
  v14.i32[3] = 0;
  v17 = v121;
  v17.i32[3] = 0;
  v18 = vminnmq_f32(v14, v17);
  v19 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v127, v116, v18, 2), v117, *v18.f32, 1), v119, v18.f32[0]);
  v20 = vmaxnmq_f32(v14, v17);
  v21 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v127, v116, v20, 2), v117, *v20.f32, 1), v119, v20.f32[0]);
  v22 = vsubq_f32(v21, v19);
  if (v22.f32[0] > v22.f32[1])
  {
    if ((v22.i32[1] & 0x7FFFFF) == 0)
    {
      v22.f32[0] = v22.f32[1];
    }

    if ((~v22.i32[1] & 0x7F800000) != 0)
    {
      v22.f32[0] = v22.f32[1];
    }
  }

  if (v22.f32[0] > v22.f32[2])
  {
    if ((v22.i32[2] & 0x7FFFFF) == 0)
    {
      v22.f32[0] = v22.f32[2];
    }

    if ((~v22.i32[2] & 0x7F800000) != 0)
    {
      v22.f32[0] = v22.f32[2];
    }
  }

  v23 = v22.f32[0] * 0.25;
  if (v23 >= v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = v23;
  }

  v25 = 0;
  v26 = 1.0;
  if (v24 >= 0.0)
  {
    v25 = LODWORD(v24) | 0x3400000000000000;
    if (v24 > 0.00000011921)
    {
      v26 = 1.0 / v24;
    }
  }

  v19.i32[3] = 1.0;
  v21.i32[3] = 1.0;
  v27.i64[0] = 0x3F0000003F000000;
  v27.i64[1] = 0x3F0000003F000000;
  *&v25 = -*&v25;
  v28 = vaddq_f32(vmulq_f32(vsubq_f32(v21, v19), v27), vdupq_lane_s32(v25, 0));
  if (v28.f32[0] <= v28.f32[1])
  {
    v29 = v28.f32[0];
  }

  else
  {
    if ((v28.i32[1] & 0x7FFFFF) != 0)
    {
      v29 = v28.f32[0];
    }

    else
    {
      v29 = v28.f32[1];
    }

    if ((~v28.i32[1] & 0x7F800000) != 0)
    {
      v29 = v28.f32[1];
    }
  }

  if (v29 > v28.f32[2])
  {
    if ((v28.i32[2] & 0x7FFFFF) == 0)
    {
      v29 = v28.f32[2];
    }

    if ((~v28.i32[2] & 0x7F800000) != 0)
    {
      v29 = v28.f32[2];
    }
  }

  if (v29 >= 0.001 && (v125 = v19, v128 = v21, v110 = v29, v120 = v28, v149[0] = v143[0], v149[1] = v143[1], v150 = v144, sub_1AF6B06C0(v3, v149, 0x200000000, v145), *v145))
  {
    if (v148 <= 0)
    {
      v135 = *&v145[32];
      v136 = v146;
      v137 = v147;
      v138 = v148;
      v133 = *v145;
      v134 = *&v145[16];
      sub_1AF5DD298(&v133, &v130);
      sub_1AFBABE60(v143, sub_1AFA0D2A0);

      v108 = MEMORY[0x1E69E6720];
      sub_1AFBAA2F8(v145, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
      v109 = v108;
    }

    else
    {
      v113 = *(&v146 + 1);
      if (*(&v146 + 1))
      {
        v30 = 0;
        v31 = 0;
        v32.i64[0] = 0x3F0000003F000000;
        v32.i64[1] = 0x3F0000003F000000;
        v112 = *&v145[40];
        v33 = *(&v147 + 1);
        v34 = *(*(&v147 + 1) + 32);
        v35 = *(v147 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v130 = *v145;
        v131 = *&v145[8];
        v132 = *&v145[24];
        v118 = vmulq_f32(vaddq_f32(v125, v128), v32);
        v111 = v35;
        while (1)
        {
          v126 = v30;
          v36 = (v112 + 48 * v30);
          v38 = *v36;
          v37 = v36[1];
          v39 = *(v36 + 2);
          v40 = *(v36 + 3);
          v41 = *(v36 + 4);
          v42 = *(v36 + 5);
          v122 = v31;
          if (v35)
          {
            v43 = *(v42 + 376);

            os_unfair_lock_lock(v43);
            os_unfair_lock_lock(*(v42 + 344));
          }

          else
          {
          }

          v44 = v34;
          ecs_stack_allocator_push_snapshot(v34);
          v45 = *(v33 + 64);
          v133 = *(v33 + 48);
          v134 = v45;
          *&v135 = *(v33 + 80);
          v46 = *(*(*(*(v42 + 40) + 16) + 32) + 16) + 1;
          *(v33 + 48) = ecs_stack_allocator_allocate(*(v33 + 32), 48 * v46, 8);
          *(v33 + 56) = v46;
          *(v33 + 72) = 0;
          *(v33 + 80) = 0;
          *(v33 + 64) = 0;
          v47 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v39, v40, v41, v33);
          v48 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v39, v40, v41, v33);
          if (v38 != v37)
          {
            break;
          }

          v34 = v44;
          v53 = v128;
          v54 = v42;
          v31 = v122;
LABEL_47:
          v128 = v53;
          sub_1AF630994(v33, &v130, &v133);
          sub_1AF62D29C(v54);
          ecs_stack_allocator_pop_snapshot(v34);
          v35 = v111;
          if (v111)
          {
            os_unfair_lock_unlock(*(v54 + 344));
            os_unfair_lock_unlock(*(v54 + 376));
          }

          v30 = v126 + 1;
          if (v126 + 1 == v113)
          {
            goto LABEL_75;
          }
        }

        v55 = v37 - v38;
        v56 = (v48 + 16 * v38);
        v57 = (v47 + 16 * v38);
        v59 = v118;
        v58 = v120;
        v34 = v44;
        v60 = 0uLL;
        v53.i32[3] = v128.i32[3];
        v54 = v42;
        v31 = v122;
        while (1)
        {
          v79 = v53.i32[3];
          v80 = *v57;
          v53 = *v57;
          v53.i32[3] = v79;
          v81 = *v56;
          v82 = vsubq_f32(vabdq_f32(*v57, v59), v58);
          v82.i32[3] = 0;
          v83 = vmaxnmq_f32(v82, v60);
          v84 = vmulq_f32(v83, v83);
          v85 = sqrtf(v84.f32[2] + vaddv_f32(*v84.f32));
          v86 = vmulq_f32(v81, v81);
          v86.f32[0] = sqrtf(v86.f32[2] + vaddv_f32(*v86.f32));
          if (v85 <= 0.00000011921 || v86.f32[0] <= 0.00000011921)
          {
            goto LABEL_55;
          }

          v88 = vdiv_f32(*v81.f32, vdup_lane_s32(*v86.f32, 0));
          v49.f32[0] = v81.f32[2] / v86.f32[0];
          *v89.f32 = v88;
          v89.i64[1] = v49.u32[0];
          *v51.f32 = vsub_f32(*v59.f32, *v80.f32);
          v90 = v51;
          v90.f32[2] = v118.f32[2] - v80.f32[2];
          v91 = vmulq_f32(v90, v90);
          *v52.i32 = sqrtf(v91.f32[2] + vaddv_f32(*v91.f32));
          v92 = v59;
          if (*v52.i32 > 0.00000011921)
          {
            *v51.f32 = vdiv_f32(vsub_f32(0, *v51.f32), vdup_lane_s32(v52, 0));
            v51.f32[2] = (0.0 - (v118.f32[2] - v80.f32[2])) / *v52.i32;
            v93 = vmulq_f32(v89, v51);
            v94 = v93.f32[2] + vaddv_f32(*v93.f32);
            if (fabsf(v94) <= 0.00000011921)
            {
              goto LABEL_55;
            }

            v51.i32[3] = 0;
            v95 = vmulq_f32(v59, v51);
            v96 = vmulq_f32(v53, v51);
            v52 = vadd_f32(vzip1_s32(*v95.i8, *v96.i8), vzip2_s32(*v95.i8, *v96.i8));
            v51 = vextq_s8(v96, v96, 8uLL);
            *v51.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v95, v95, 8uLL), *v51.f32), v52);
            v51.f32[0] = vsub_f32(*v51.f32, vdup_lane_s32(*v51.f32, 1)).f32[0] / v94;
            v92 = v59;
            if (v51.f32[0] > 0.0)
            {
              v97 = vmul_n_f32(v88, v51.f32[0]);
              v98 = v80.f32[2] + (v49.f32[0] * v51.f32[0]);
              *v92.f32 = vadd_f32(*v80.f32, v97);
              *v49.f32 = vsub_f32(*v92.f32, *v59.f32);
              v50.f32[0] = v98 - v118.f32[2];
              v99 = v49;
              v99.f32[2] = v98 - v118.f32[2];
              v51 = vmulq_f32(v99, v99);
              v51.f32[0] = v51.f32[2] + vaddv_f32(*v51.f32);
              if (v51.f32[0] > (v110 * v110))
              {
                v100 = vmul_n_f32(*v49.f32, v110);
                v101 = v110 * v50.f32[0];
                v50.f32[0] = sqrtf(v51.f32[0]);
                v102 = v101 / v50.f32[0];
                *v50.f32 = vdup_lane_s32(*v50.f32, 0);
                *v92.f32 = vadd_f32(*v59.f32, vdiv_f32(v100, *v50.f32));
                v98 = v118.f32[2] + v102;
              }

              v92.i64[1] = LODWORD(v98);
            }
          }

          v103 = vsubq_f32(v92, v80);
          v104 = vmulq_f32(v103, v103);
          v104.f32[0] = sqrtf(v104.f32[2] + vaddv_f32(*v104.f32));
          if (v104.f32[0] <= 0.00000011921)
          {
            goto LABEL_55;
          }

          *v49.f32 = vdiv_f32(*v103.f32, vdup_lane_s32(*v104.f32, 0));
          v49.f32[2] = v103.f32[2] / v104.f32[0];
          v105 = vmulq_f32(v89, v49);
          v106 = v105.f32[2] + vaddv_f32(*v105.f32);
          if (v106 > 1.0)
          {
            goto LABEL_55;
          }

          v129 = v53;
          v123 = *v56;
          if (v106 < -1.0)
          {
            break;
          }

          v115 = v103;
          v61 = acosf(v106);
          v103 = v115;
          v81 = v123;
          if (v61 >= 0.001)
          {
            goto LABEL_51;
          }

LABEL_54:
          v59 = v118;
          v58 = v120;
          v60 = 0uLL;
          v53 = v129;
LABEL_55:
          ++v56;
          ++v57;
          if (!--v55)
          {
            goto LABEL_47;
          }
        }

        v61 = 3.1416;
LABEL_51:
        v103.i32[3] = 0;
        v62 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL), vnegq_f32(v81)), v103, vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL));
        v63 = vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL);
        v64 = vmulq_f32(v62, v62);
        *&v65 = v64.f32[1] + (v64.f32[2] + v64.f32[0]);
        *v64.f32 = vrsqrte_f32(v65);
        *v64.f32 = vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32)));
        v114 = vmulq_n_f32(v63, vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32))).f32[0]);
        v66 = (v16 * fminf(v26 * v85, 2.0)) * fminf(v61, 1.5708);
        if (v61 >= v66)
        {
          v61 = v66;
        }

        v67 = __sincosf_stret(v61 * 0.5);
        v68 = vmulq_n_f32(v114, v67.__sinval);
        v69 = v68;
        v69.i32[3] = LODWORD(v67.__cosval);
        v70 = vmulq_f32(v69, xmmword_1AFE21390);
        v71 = vnegq_f32(v70);
        v72 = vtrn2q_s32(v70, vtrn1q_s32(v70, v71));
        v73 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v70, v71, 8uLL), *v123.f32, 1), vextq_s8(v72, v72, 8uLL), v123.f32[0]);
        v74 = vrev64q_s32(v70);
        v74.i32[0] = v71.i32[1];
        v74.i32[3] = v71.i32[2];
        v75 = vmlaq_laneq_f32(v73, v74, v123, 2);
        v76 = vnegq_f32(v75);
        v77 = vtrn2q_s32(v75, vtrn1q_s32(v75, v76));
        v49 = vextq_s8(v77, v77, 8uLL);
        v51 = vrev64q_s32(v75);
        v51.i32[0] = v76.i32[1];
        v51.i32[3] = v76.i32[2];
        v50 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v75, v76, 8uLL), *v68.f32, 1), v49, v68.f32[0]);
        v78 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v75, v69, 3), v51, v68, 2), v50);
        v78.i32[3] = 0;
        *v56 = v78;
        goto LABEL_54;
      }

LABEL_75:

      sub_1AFBABE60(v143, sub_1AFA0D2A0);
      v109 = MEMORY[0x1E69E6720];
    }

    return sub_1AFBAA2F8(v145, &qword_1ED725EA0, &type metadata for QueryResult, v109, sub_1AFBABEC0);
  }

  else
  {
    sub_1AFBABE60(v143, sub_1AFA0D2A0);
  }
}

uint64_t sub_1AFBA96A0(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  swift_retain_n();
  sub_1AF3D0944(v2, &v190);
  v4 = v190;
  v5 = v191;
  v6 = v192;
  v7 = v193;
  v8 = v194;

  if (v8 == 2)
  {
    LOBYTE(v4) = 0;
    v178 = xmmword_1AFE20160;
    LOBYTE(v8) = 1;
    v9 = 135.0;
    v5 = 1;
    v10 = 135.0;
  }

  else
  {
    v10 = *(&v4 + 1);
    v9 = *(&v8 + 1);
    v11.i64[0] = v6;
    v11.i64[1] = v7;
    v178 = v11;
  }

  v12 = *(a1 + 104);
  v203 = *(a1 + 88);
  v204 = v12;
  v205 = *(a1 + 120);
  sub_1AF5C94D4(v195);
  sub_1AFB93E58();
  v14 = v13;
  *v15.i64 = sub_1AFB98F44(v4);
  v157 = v15;
  v16 = v14 * 3.1416;
  v17 = v10 * (v14 * 3.1416);
  *v18.i64 = sub_1AFB98F44(v5);
  v180 = v18;
  v19 = vabsq_f32(v178);
  v20 = 0uLL;
  if (v19.f32[0] > 0.00000011921 || v19.f32[1] > 0.00000011921 || v19.f32[2] > 0.00000011921)
  {
    v23 = vmulq_f32(v178, v178);
    *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
    *v23.f32 = vrsqrte_f32(v24);
    *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
    v20 = vmulq_n_f32(v178, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  }

  v25 = v17 / 180.0;
  v150 = v20;
  if (sub_1AF6DD6CC(v20))
  {
    v26 = 0.0;
    if (v25 > 0.0)
    {
      goto LABEL_19;
    }

LABEL_18:

    return sub_1AFBABE60(v195, sub_1AFBAA27C);
  }

  v26 = (v9 * v16) / 180.0;
  if (v25 <= 0.0 && v26 <= 0.0)
  {
    goto LABEL_18;
  }

LABEL_19:
  v201[0] = v195[0];
  v201[1] = v195[1];
  v202 = v196;
  sub_1AF6B06C0(v3, v201, 0x200000000, v197);
  if (*v197)
  {
    if (v200 <= 0)
    {
      v186 = *&v197[32];
      v187 = v198;
      v188 = v199;
      v189 = v200;
      v184 = *v197;
      v185 = *&v197[16];
      sub_1AF5DD298(&v184, &v181);
      sub_1AFBABE60(v195, sub_1AFBAA27C);

      v139 = MEMORY[0x1E69E6720];
      sub_1AFBAA2F8(v197, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
      v140 = v139;
    }

    else
    {
      v144 = *(&v198 + 1);
      if (*(&v198 + 1))
      {
        v28 = 0;
        v29 = 0;
        v143 = *&v197[40];
        v30 = *(&v199 + 1);
        v31 = *(v199 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v32 = *(*(&v199 + 1) + 32);
        v181 = *v197;
        v182 = *&v197[8];
        v183 = *&v197[24];
        v151 = vdupq_laneq_s32(v157, 2);
        v152 = vdupq_lane_s32(*v157.i8, 0);
        v177 = vdupq_laneq_s32(v180, 2);
        v179 = vdupq_lane_s32(*v180.i8, 0);
        v175 = vnegq_f32(v150);
        v176 = vextq_s8(vuzp1q_s32(v150, v150), v150, 0xCuLL);
        v142 = v31;
        v141 = v8;
        while (1)
        {
          v166 = v29;
          v149 = v28;
          v33 = (v143 + 48 * v28);
          v34 = *v33;
          v35 = v33[1];
          v36 = *(v33 + 2);
          v37 = *(v33 + 3);
          v39 = *(v33 + 4);
          v38 = *(v33 + 5);
          if (v31)
          {
            v40 = *(v38 + 376);

            os_unfair_lock_lock(v40);
            os_unfair_lock_lock(*(v38 + 344));
          }

          else
          {
          }

          v41 = v32;
          ecs_stack_allocator_push_snapshot(v32);
          v42 = *(v30 + 64);
          v184 = *(v30 + 48);
          v185 = v42;
          *&v186 = *(v30 + 80);
          v43 = *(*(*(*(v38 + 40) + 16) + 32) + 16) + 1;
          *(v30 + 48) = ecs_stack_allocator_allocate(*(v30 + 32), 48 * v43, 8);
          *(v30 + 56) = v43;
          *(v30 + 72) = 0;
          *(v30 + 80) = 0;
          *(v30 + 64) = 0;
          v44 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v36, v37, v39, v30);
          v148 = v38;
          v45 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v36, v37, v39, v30);
          if (v34 != v35)
          {
            break;
          }

          v32 = v41;
          v29 = v166;
          v46 = v170;
          v47 = v158;
          v48 = v162;
LABEL_29:
          v158 = v47;
          v162 = v48;
          v170 = v46;
          sub_1AF630994(v30, &v181, &v184);
          sub_1AF62D29C(v148);
          ecs_stack_allocator_pop_snapshot(v32);
          v31 = v142;
          if (v142)
          {
            os_unfair_lock_unlock(*(v148 + 344));
            os_unfair_lock_unlock(*(v148 + 376));
          }

          v28 = v149 + 1;
          if (v149 + 1 == v144)
          {
            goto LABEL_88;
          }
        }

        v49 = v35 - v34;
        v50 = (v44 + 16 * v34);
        v51 = (v45 + 16 * v34);
        v52 = v158;
        v53 = v162;
        v54 = *v157.i8;
        v32 = v41;
        v29 = v166;
        v56 = v151;
        v55 = v152;
        v46 = v170;
        while (1)
        {
          v57 = *v51;
          if (v25 <= 0.0)
          {
            goto LABEL_54;
          }

          v58 = *v50;
          v59 = vmulq_f32(v58, v58);
          v59.f32[0] = sqrtf(v59.f32[2] + vaddv_f32(*v59.f32));
          if (v59.f32[0] <= 0.00000011921)
          {
            goto LABEL_54;
          }

          v60 = vmulq_f32(v57, xmmword_1AFE21390);
          v61 = vnegq_f32(v60);
          v62 = vtrn2q_s32(v60, vtrn1q_s32(v60, v61));
          v63 = vmulq_lane_f32(vextq_s8(v60, v61, 8uLL), v54, 1);
          v64 = vrev64q_s32(v60);
          v64.i32[0] = v61.i32[1];
          v64.i32[3] = v61.i32[2];
          v65 = vmlaq_f32(vmlaq_f32(v63, vextq_s8(v62, v62, 8uLL), v55), v64, v56);
          v66 = vnegq_f32(v65);
          v67 = vtrn2q_s32(v65, vtrn1q_s32(v65, v66));
          v68 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v65, v66, 8uLL), *v57.f32, 1), vextq_s8(v67, v67, 8uLL), v57.f32[0]);
          v69 = vrev64q_s32(v65);
          v69.i32[0] = v66.i32[1];
          v69.i32[3] = v66.i32[2];
          v70 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v65, v57, 3), v69, v57, 2), v68);
          v71 = vdivq_f32(v58, vdupq_lane_s32(*v59.f32, 0));
          v71.f32[2] = v58.f32[2] / v59.f32[0];
          v72 = vmulq_f32(v70, v71);
          v73 = v72.f32[2] + vaddv_f32(*v72.f32);
          v74 = 0.0;
          if (v73 <= 1.0)
          {
            if (v73 >= -1.0)
            {
              v167 = *v51;
              v173 = v46.i32[3];
              v159 = v53;
              v163 = v52;
              v153 = v70;
              v146 = v71;
              v74 = acosf(v73);
              v71 = v146;
              v55 = v152;
              v70 = v153;
              v53 = v159;
              v52 = v163;
              v57 = v167;
              v46.i32[3] = v173;
              v56 = v151;
              v54 = *v157.i8;
            }

            else
            {
              v74 = 3.1416;
            }
          }

          v71.i32[3] = 0;
          v75 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL), vnegq_f32(v70)), v71, vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL));
          v76 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
          v77 = vabsq_f32(v76);
          v78 = 0uLL;
          if (v77.f32[0] > 0.00000011921 || v77.f32[1] > 0.00000011921 || v77.f32[2] > 0.00000011921)
          {
            v81 = vmulq_f32(v75, v75);
            *&v82 = v81.f32[1] + (v81.f32[2] + v81.f32[0]);
            *v81.f32 = vrsqrte_f32(v82);
            *v81.f32 = vmul_f32(*v81.f32, vrsqrts_f32(v82, vmul_f32(*v81.f32, *v81.f32)));
            v78 = vmulq_n_f32(v76, vmul_f32(*v81.f32, vrsqrts_f32(v82, vmul_f32(*v81.f32, *v81.f32))).f32[0]);
            v78.i32[3] = v156;
          }

          v70.i32[3] = v46.i32[3];
          if (v74 < 0.001)
          {
            break;
          }

          v83 = vceqz_s32((v78.i64[0] & 0x7FFFFFFF7FFFFFFFLL));
          if ((v83.i8[0] & 1) != 0 && (v83.i8[4] & 1) != 0 && (v78.i32[2] & 0x7FFFFFFF) == 0)
          {
            break;
          }

          if (v74 >= v25)
          {
            v74 = v25;
          }

          v165 = v52;
          v169 = v57;
          v161 = v53;
          v155 = v70;
          v172 = v78;
          v119 = __sincosf_stret(v74 * 0.5);
          v53 = v161;
          v52 = v165;
          v56 = v151;
          v55 = v152;
          v54 = *v157.i8;
          v120 = vmulq_n_f32(v172, v119.__sinval);
          v121 = vnegq_f32(v169);
          v122 = vtrn2q_s32(v169, vtrn1q_s32(v169, v121));
          v123 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v169, v121, 8uLL), *v120.f32, 1), vextq_s8(v122, v122, 8uLL), v120.f32[0]);
          v124 = vrev64q_s32(v169);
          v124.i32[0] = v121.i32[1];
          v124.i32[3] = v121.i32[2];
          v57 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v169, v119.__cosval), v124, v120, 2), v123);
          v46 = v155;
          if (v26 <= 0.0)
          {
LABEL_32:
            v47 = v52;
            v48 = v53;
            goto LABEL_33;
          }

LABEL_55:
          v84 = vmulq_f32(v57, xmmword_1AFE21390);
          v85 = vnegq_f32(v84);
          v86 = vtrn2q_s32(v84, vtrn1q_s32(v84, v85));
          v87 = vextq_s8(v86, v86, 8uLL);
          v88 = vextq_s8(v84, v85, 8uLL);
          v89 = vrev64q_s32(v84);
          v89.i32[0] = v85.i32[1];
          v89.i32[3] = v85.i32[2];
          v90 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v88, v54, 1), v87, v55), v89, v56);
          v91 = vnegq_f32(v90);
          v92 = vtrn2q_s32(v90, vtrn1q_s32(v90, v91));
          v93 = vrev64q_s32(v90);
          v93.i32[0] = v91.i32[1];
          v93.i32[3] = v91.i32[2];
          v94 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v90, v57, 3), v93, v57, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v90, v91, 8uLL), *v57.f32, 1), vextq_s8(v92, v92, 8uLL), v57.f32[0]));
          v95 = vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL);
          v96 = vmlaq_f32(vmulq_f32(v95, v175), v94, v176);
          v97 = vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL);
          v98 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL), vnegq_f32(v94)), v97, v95);
          v99 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
          v100 = vabsq_f32(v99);
          v101 = 0uLL;
          if (v100.f32[0] > 0.00000011921 || v100.f32[1] > 0.00000011921 || v100.f32[2] > 0.00000011921)
          {
            v104 = vmulq_f32(v98, v98);
            *&v105 = v104.f32[1] + (v104.f32[2] + v104.f32[0]);
            *v104.f32 = vrsqrte_f32(v105);
            *v104.f32 = vmul_f32(*v104.f32, vrsqrts_f32(v105, vmul_f32(*v104.f32, *v104.f32)));
            v101 = vmulq_n_f32(v99, vmul_f32(*v104.f32, vrsqrts_f32(v105, vmul_f32(*v104.f32, *v104.f32))).f32[0]);
            v101.i32[3] = v174;
          }

          v48 = v94;
          v48.i32[3] = v53.i32[3];
          v106 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v88, *v180.i8, 1), v87, v179), v89, v177);
          v107 = vnegq_f32(v106);
          v108 = vtrn2q_s32(v106, vtrn1q_s32(v106, v107));
          v109 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v106, v107, 8uLL), *v57.f32, 1), vextq_s8(v108, v108, 8uLL), v57.f32[0]);
          v110 = vrev64q_s32(v106);
          v110.i32[0] = v107.i32[1];
          v110.i32[3] = v107.i32[2];
          v111 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v106, v57, 3), v110, v57, 2), v109);
          v47 = v111;
          v47.i32[3] = v52.i32[3];
          v112 = vceqz_s32((v101.i64[0] & 0x7FFFFFFF7FFFFFFFLL));
          if ((v112.i8[0] & 1) != 0 && (v112.i8[4] & 1) != 0 && (v101.i32[2] & 0x7FFFFFFF) == 0)
          {
            goto LABEL_33;
          }

          v113 = 1.0;
          if (v141)
          {
            v114 = vmulq_f32(v150, v48);
            v115 = fabsf(v114.f32[2] + vaddv_f32(*v114.f32));
            if (v115 >= 0.9)
            {
              goto LABEL_33;
            }

            if (v115 > 0.1)
            {
              v113 = ((v115 + -0.1) / -0.8) + 1.0;
              if (v113 <= 0.0)
              {
                goto LABEL_33;
              }
            }
          }

          v116 = vmulq_f32(v47, v101);
          v117 = v116.f32[2] + vaddv_f32(*v116.f32);
          if (v117 > 1.0)
          {
            goto LABEL_33;
          }

          v154 = v94;
          v160 = v47;
          v164 = v48;
          v168 = v57;
          v171 = v46;
          if (v117 < -1.0)
          {
            v118 = 3.1416;
LABEL_80:
            v125 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL), vnegq_f32(v111)), v101, vextq_s8(vuzp1q_s32(v111, v111), v111, 0xCuLL));
            v126 = vextq_s8(vuzp1q_s32(v125, v125), v125, 0xCuLL);
            v127 = vmulq_f32(v125, v125);
            *&v128 = v127.f32[1] + (v127.f32[2] + v127.f32[0]);
            *v127.f32 = vrsqrte_f32(v128);
            *v127.f32 = vmul_f32(*v127.f32, vrsqrts_f32(v128, vmul_f32(*v127.f32, *v127.f32)));
            v129 = vmulq_f32(v48, vmulq_n_f32(v126, vmul_f32(*v127.f32, vrsqrts_f32(v128, vmul_f32(*v127.f32, *v127.f32))).f32[0]));
            v130 = v129.f32[2] + vaddv_f32(*v129.f32);
            if (v118 >= v26)
            {
              v118 = v26;
            }

            v131 = v113 * v118;
            v132 = -(v113 * v118);
            if (v130 >= 0.0)
            {
              v132 = v131;
            }

            v133 = __sincosf_stret(v132 * 0.5);
            v55 = v152;
            v134 = vmulq_n_f32(v154, v133.__sinval);
            v48 = v164;
            v135 = vnegq_f32(v168);
            v136 = vtrn2q_s32(v168, vtrn1q_s32(v168, v135));
            v137 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v168, v135, 8uLL), *v134.f32, 1), vextq_s8(v136, v136, 8uLL), v134.f32[0]);
            v138 = vrev64q_s32(v168);
            v138.i32[0] = v135.i32[1];
            v138.i32[3] = v135.i32[2];
            v57 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v168, v133.__cosval), v138, v134, 2), v137);
            v54 = *v157.i8;
            v47 = v160;
            v56 = v151;
            v46 = v171;
            goto LABEL_33;
          }

          v145 = v111;
          v147 = v101;
          v118 = acosf(v117);
          v111 = v145;
          v101 = v147;
          v48 = v164;
          if (v118 >= 0.001)
          {
            goto LABEL_80;
          }

          v54 = *v157.i8;
          v47 = v160;
          v56 = v151;
          v55 = v152;
          v57 = v168;
          v46 = v171;
LABEL_33:
          *v51++ = v57;
          ++v50;
          v52 = v47;
          v53 = v48;
          if (!--v49)
          {
            goto LABEL_29;
          }
        }

        v46 = v70;
LABEL_54:
        if (v26 <= 0.0)
        {
          goto LABEL_32;
        }

        goto LABEL_55;
      }

LABEL_88:

      sub_1AFBABE60(v195, sub_1AFBAA27C);
      v140 = MEMORY[0x1E69E6720];
    }

    return sub_1AFBAA2F8(v197, &qword_1ED725EA0, &type metadata for QueryResult, v140, sub_1AFBABEC0);
  }

  else
  {
    sub_1AFBABE60(v195, sub_1AFBAA27C);
  }
}