uint64_t sub_1AF6C2CC8(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1AF5C5358(0, &qword_1ED722510);
  swift_dynamicCast();
  v6 = v15;
  v7 = v16;
  sub_1AF441150(v14, v15);
  v8 = *(v7 + 8);
  v12 = v6;
  v13 = v7;
  sub_1AF585714(&v11);
  v8(a2, &off_1F2535DF0, v6, v7);
  sub_1AF0FBA54(&v11, v17);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
  return swift_dynamicCast();
}

uint64_t sub_1AF6C2E58@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1AF6C1CC0(a1, a2, *v4, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_1AF6C2E90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 44);
  type metadata accessor for DefaultRemapper();

  sub_1AF6C0D8C(v5 + v13, v14, v8, &off_1F2535DF0, v11);
  sub_1AF67C738(v11, a1, *v5, *(a5 + 32));

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AF6C2FB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E6CE8];
  *a3 = a1;
  v7 = *(v5 + *v6 + 8);
  v8 = type metadata accessor for ComponentValueWriter();
  v9 = *(*(v7 - 8) + 32);
  v10 = a3 + *(v8 + 44);

  return v9(v10, a2, v7);
}

uint64_t sub_1AF6C3070()
{
  sub_1AF0E15DC();
}

uint64_t sub_1AF6C30AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v12 + 24);
  v14 = *(v13 + 8);

  if (sub_1AF6411A4(v8) < 1)
  {
    if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v18 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
      if (HIDWORD(a1) == 0xFFFFFFFF || v18[2] == HIDWORD(a1))
      {
        v19 = *(v18 + 2);
        v20 = *(*(a2 + 144) + 8 * *v18 + 32);
        if (*(v20 + 232) <= v19 && *(v20 + 240) > v19)
        {
          v21 = **(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v22 = *(v20 + 344);

          os_unfair_lock_lock(v22);
          ecs_stack_allocator_push_snapshot(*(v21 + 32));

          sub_1AF682880(v21, v20, v19, v8, v13, a2);

          ecs_stack_allocator_pop_snapshot(*(v21 + 32));
          os_unfair_lock_unlock(*(v20 + 344));
        }
      }
    }
  }

  else
  {
    (*(v9 + 16))(v11, v5, v8);
    sub_1AF6C98C4();
    (*(v14 + 96))();

    MEMORY[0x1EEE9AC00](v15, v16);
    *&v23[-32] = v8;
    *&v23[-24] = v13;
    *&v23[-16] = v11;
    if ((sub_1AF67FBFC(v8, a1, sub_1AF6CC3B4, &v23[-48], v8, v13) & 1) == 0)
    {
      sub_1AF6823F8(v11, a1, v8, v13);
    }

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1AF6C33D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v7 = sub_1AF585714(v9);
  (*(*(a3 - 8) + 16))(v7, a2, a3);
  (*(*(a4 + 8) + 104))(v9, a3);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
}

uint64_t sub_1AF6C34A0(unint64_t a1, uint64_t a2)
{
  v3 = v2;

  sub_1AF441194(v2, v25);
  sub_1AF441150(v25, v26);
  DynamicType = swift_getDynamicType();
  v7 = v27;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v16 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v16[2] == HIDWORD(a1))
    {
      v17 = *(v16 + 2);
      v18 = *(*(a2 + 144) + 8 * *v16 + 32);
      if (*(v18 + 232) <= v17 && *(v18 + 240) > v17)
      {
        v21 = **(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v20 = *(v18 + 344);

        os_unfair_lock_lock(v20);
        ecs_stack_allocator_push_snapshot(*(v21 + 32));

        sub_1AF682880(v21, v18, v17, DynamicType, v7, a2);

        ecs_stack_allocator_pop_snapshot(*(v21 + 32));
        os_unfair_lock_unlock(*(v18 + 344));
      }
    }
  }

  sub_1AF441194(v3, v25);
  sub_1AF441150(v25, v26);
  v8 = swift_getDynamicType();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
  if (sub_1AF6411A4(v8) <= 0)
  {
  }

  sub_1AF441194(v3, v25);
  v9 = sub_1AF6C98C4();
  v10 = v26;
  v11 = v27;
  sub_1AF448018(v25, v26);
  (*(*(v11 + 8) + 96))(v9, &off_1F2532090, v10);

  sub_1AF441194(v3, v22);
  sub_1AF441150(v22, v23);
  v12 = swift_getDynamicType();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
  if (sub_1AF6411A4(v12) >= 1)
  {
    sub_1AF441194(v3, v22);
    sub_1AF441150(v22, v23);
    v13 = swift_getDynamicType();
    v14 = v24;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
    sub_1AF683C1C(v13, v14, a1, a2, v25);
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
}

uint64_t sub_1AF6C37A0()
{
  sub_1AF441194(v0, v3);
  sub_1AF441150(v3, v3[3]);
  DynamicType = swift_getDynamicType();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
  return DynamicType;
}

uint64_t sub_1AF6C3810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = v11;
  *(a5 + 4) = v12;
  *(a5 + 8) = v13;
  (*(v8 + 16))(v10, v15, v14);
  v16 = type metadata accessor for ComponentWriter();
  *(a5 + 40) = v16;
  *(a5 + 48) = &off_1F2536170;
  v17 = sub_1AF585714((a5 + 16));
  result = (*(v8 + 32))(v17, v10, a4);
  *(v17 + *(v16 + 36)) = a3;
  *(a5 + 56) = 12;
  return result;
}

uint64_t sub_1AF6C3948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  v6 = &v13 - v5;
  *a3 = v7;
  *(a3 + 4) = v8;
  *(a3 + 8) = v9;
  (*(v10 + 16))(&v13 - v5);
  *(a3 + 40) = type metadata accessor for ComponentValueWriter();
  *(a3 + 48) = &off_1F2536190;
  v11 = sub_1AF585714((a3 + 16));
  sub_1AF6C2FB4(a2, v6, v11);
  *(a3 + 56) = 11;
}

void sub_1AF6C3AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v311 = a4;
  v309 = a3;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v6 = v4;
  v8 = 0;
  v308 = 0;
  v306 = (v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v313 = a1 + 32;
  v307 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v312 = v5;
  while (2)
  {
    v13 = v313 + (v8++ << 6);
    sub_1AF6CAF24(v13, &v326);
    switch(v330)
    {
      case 1:
        *&v305 = *(&v326 + 1);
        v68 = v327;
        v69 = BYTE4(v327);
        v70 = v6;
        v71 = sub_1AF8A07C8(a2, v309, v326);

        v72 = MEMORY[0x1E69E7CC0];
        v73 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
        type metadata accessor for RemapContext();
        v74 = swift_allocObject();
        *(v74 + 16) = 0;
        *(v74 + 24) = sub_1AF42B4D0(v72);
        v75 = sub_1AF42B590(v72);
        *(v74 + 24) = v73;
        *(v74 + 32) = v75;

        *(v74 + 16) = 1;
        v76 = **(v70 + v307);
        v77 = *(v71 + 16);
        if (v77)
        {
          v78 = (v71 + 32);
          v79 = v310;
          do
          {
            v80 = *v78++;
            sub_1AF65B02C(v80, v74);
            --v77;
          }

          while (v77);
        }

        else
        {
          v79 = v310;
        }

        LOBYTE(v318) = v69;
        sub_1AF630BA4(v74, v79, v68 | (v69 << 32), 0, v76);
        v223 = *(v71 + 16);
        if (v223)
        {
          *&v318 = MEMORY[0x1E69E7CC0];
          sub_1AFB8C2C4(v223);
          for (i = 0; i != v223; ++i)
          {
            v225 = *(v74 + 24);
            v226 = 0xFFFFFFFFLL;
            if (*(v225 + 16))
            {
              v227 = sub_1AF449D3C(*(v71 + 8 * i + 32));
              if (v228)
              {
                v226 = *(*(v225 + 56) + 8 * v227);
              }
            }

            v229 = v318;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1AFC07194(0, *(v229 + 16) + 1, 1);
              v229 = v318;
            }

            v231 = *(v229 + 16);
            v230 = *(v229 + 24);
            if (v231 >= v230 >> 1)
            {
              sub_1AFC07194(v230 > 1, v231 + 1, 1);
              v229 = v318;
            }

            *(v229 + 16) = v231 + 1;
            *(v229 + 8 * v231 + 32) = v226;
          }

          *&v318 = MEMORY[0x1E69E7CC0];
          sub_1AFB8C2C4(v223);
          v232 = 32;
          do
          {
            v233 = *(v74 + 24);
            v234 = 0xFFFFFFFFLL;
            if (*(v233 + 16))
            {
              v235 = sub_1AF449D3C(*(v71 + v232));
              if (v236)
              {
                v234 = *(*(v233 + 56) + 8 * v235);
              }
            }

            v237 = v318;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1AFC07194(0, *(v237 + 16) + 1, 1);
              v237 = v318;
            }

            v239 = *(v237 + 16);
            v238 = *(v237 + 24);
            if (v239 >= v238 >> 1)
            {
              sub_1AFC07194(v238 > 1, v239 + 1, 1);
              v237 = v318;
            }

            *(v237 + 16) = v239 + 1;
            *(v237 + 8 * v239 + 32) = v234;
            v232 += 8;
            --v223;
          }

          while (v223);
        }

        else
        {

          v237 = MEMORY[0x1E69E7CC0];
        }

        sub_1AF6C9424(v305, v237);

        goto LABEL_239;
      case 2:
        *&v305 = v326;
        v81 = v327;
        LODWORD(v304) = v328;
        v82 = v6;
        v83 = HIDWORD(v328);
        v84 = v329;
        v85 = **(v82 + v307);
        v86 = *(v85 + 16);
        v87 = v86 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
        v88 = *(v86 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

        os_unfair_lock_lock(v88);
        LODWORD(v88) = sub_1AF633818(v81, *(&v81 + 1));

        v89 = *(*(v86 + 88) + 8 * v88 + 32);
        v90 = *(v87 + 24);

        os_unfair_lock_unlock(v90);

        v91 = *(v85 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
        v92 = *v91;

        if (v92)
        {
          vfx_counters.add(_:_:)(*(v91 + 40), 1);
        }

        v93 = *(v85 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
        v94 = *v93;

        if (v94)
        {
          vfx_counters.add(_:_:)(*(v93 + 48), 1);
        }

        v95 = *(v89 + 204);
        if (*(v89 + 208))
        {
          v96 = 0;
          LODWORD(v97) = -1;
        }

        else
        {

          v97 = sub_1AF65B2E4();

          v96 = v97 & 0xFFFFFFFF00000000;
        }

        LODWORD(v315) = -1;
        *&v318 = 0;
        v196 = *(v85 + 16);

        LOBYTE(v323) = v84;
        sub_1AF624DB0(v95, v83 | (v84 << 32), v304, v196, &v318, v97, &v315, v89, v85, v95, SWORD1(v95), 1);

        sub_1AF6C92C8(v305, v96 | v97);
        goto LABEL_239;
      case 3:
        v32 = *(&v326 + 1);
        *&v305 = v326;
        v33 = v327;
        LODWORD(v304) = BYTE8(v327);
        v302 = HIDWORD(v327);
        v301 = v328;
        v303 = v329;
        v323 = sub_1AFA9EC34(0xFFFFFFFFLL, v329);
        v34 = *(v33 + 16);
        if (v34)
        {
          v300 = v32;
          v314 = MEMORY[0x1E69E7CC0];
          sub_1AFB8C2DC(v34);
          v35 = OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed;
          v299 = v33;
          v36 = v33 + 32;
          do
          {
            sub_1AF441194(v36, &v315);
            sub_1AF441194(&v315, &v318);
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v38 = *(a2 + v35);
              v39 = Strong;
              [*(Strong + 16) lock];
              v40 = *(v39 + 16);
              v41 = 32;
              if (!v38)
              {
                v41 = 24;
              }

              v42 = *(v39 + v41);

              [v40 unlock];
            }

            else
            {
              v42 = MEMORY[0x1E69E7CC8];
            }

            type metadata accessor for RemapContext();
            v43 = swift_allocObject();
            *(v43 + 16) = 0;
            v44 = MEMORY[0x1E69E7CC0];
            *(v43 + 24) = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
            v45 = sub_1AF42B590(v44);
            *(v43 + 24) = v42;
            *(v43 + 32) = v45;

            *(v43 + 16) = 0;
            v46 = *(&v319 + 1);
            v47 = v320;
            sub_1AF448018(&v318, *(&v319 + 1));
            (*(v47[1] + 12))(v43, &off_1F2532090, v46);

            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v315);
            v48 = v314;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1AFC07050(0, *(v48 + 16) + 1, 1);
              v48 = v314;
            }

            v50 = *(v48 + 16);
            v49 = *(v48 + 24);
            if (v50 >= v49 >> 1)
            {
              sub_1AFC07050(v49 > 1, v50 + 1, 1);
              v48 = v314;
            }

            *(v48 + 16) = v50 + 1;
            sub_1AF0FBA54(&v318, v48 + 40 * v50 + 32);
            v36 += 40;
            --v34;
          }

          while (v34);

          v6 = v310;
          v32 = v300;
        }

        else
        {

          v48 = MEMORY[0x1E69E7CC0];
        }

        v207 = *(v6 + v307);
        *&v318 = 0;
        v208 = *v207;
        v209 = *(*v207 + 16);
        v210 = v209 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
        v211 = *(v209 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

        os_unfair_lock_lock(v211);
        LODWORD(v211) = sub_1AF633818(v32, v48);

        v212 = *(*(v209 + 88) + 8 * v211 + 32);
        v213 = *(v210 + 24);

        os_unfair_lock_unlock(v213);

        LOBYTE(v315) = v301;
        v214 = v208;
        v215 = v308;
        sub_1AF631D00(0, v212, v304, v302 | (v301 << 32), v303, v214, &v323, &v318);
        v308 = v215;

        v216 = v323;
        v217 = swift_weakLoadStrong();
        v5 = v312;
        if (v217)
        {
          v218 = v217;
          v219 = *(a2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
          [*(v217 + 16) lock];
          if (v219)
          {
            v221 = v218 + 32;
            v222 = (v218 + 24);
          }

          else
          {
            v221 = v218 + 24;
            v222 = (v218 + 32);
          }

          sub_1AF6C94E4(v221, v222, v305, v216, v220);
          [*(v218 + 16) unlock];
        }

        else
        {
        }

        goto LABEL_5;
      case 4:
        v126 = v326;
        v127 = DWORD1(v326);
        *(&v319 + 1) = &type metadata for Entity;
        v320 = &off_1F2535EA8;
        *&v318 = v326;
        v128 = sub_1AF441150(&v318, &type metadata for Entity);
        *(&v316 + 1) = &type metadata for Entity;
        *&v317[0] = &off_1F2535EA8;
        v129 = sub_1AF585714(&v315);
        *v129 = sub_1AF6C97E0(*v128);
        sub_1AF5C5358(0, &qword_1ED722510);
        swift_dynamicCast();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v318);
        v131 = v323;
        v130 = HIDWORD(v323);
        if (v311)
        {
          sub_1AFADF970(v323 | (HIDWORD(v323) << 32));
        }

        v132 = swift_weakLoadStrong();
        if (v132)
        {
          v133 = *(a2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
          v134 = v132;
          [*(v132 + 16) lock];
          v135 = 32;
          if (v133)
          {
            v136 = 32;
          }

          else
          {
            v136 = 24;
          }

          if (v133)
          {
            v135 = 24;
          }

          sub_1AF6C9764((v134 + v136), v134 + v135, v126 | (v127 << 32));
          [*(v134 + 16) unlock];
        }

        if (v131 == -1 && !v130)
        {
          goto LABEL_5;
        }

        if (v131 < 0)
        {
          goto LABEL_5;
        }

        if (v306[1] <= v131)
        {
          goto LABEL_5;
        }

        v137 = (*v306 + 12 * v131);
        if (v130 != -1 && v137[2] != v130)
        {
          goto LABEL_5;
        }

        v138 = *(v137 + 2);
        v139 = *(*(v6 + 144) + 8 * *v137 + 32);
        if (*(v139 + 29) > v138 || *(v139 + 30) <= v138)
        {
          goto LABEL_5;
        }

        v141 = **(v6 + v307);
        v142 = *(v139 + 43);

        os_unfair_lock_lock(v142);
        ecs_stack_allocator_push_snapshot(*(v141 + 32));

        v143 = v138;
        v144 = v308;
        sub_1AF65CFA0(v141, v139, v143);
        v145 = &v327 + 1;
        v308 = v144;
        if (v144)
        {
          goto LABEL_245;
        }

        ecs_stack_allocator_pop_snapshot(*(v141 + 32));
        os_unfair_lock_unlock(*(v139 + 43));

        goto LABEL_5;
      case 5:
        v160 = v326;
        v161 = swift_weakLoadStrong();
        if (v161)
        {
          v162 = *(a2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
          v163 = v161;
          [*(v161 + 16) lock];
          v164 = *(v163 + 16);
          v165 = 32;
          if (!v162)
          {
            v165 = 24;
          }

          v166 = *(v163 + v165);

          [v164 unlock];
        }

        else
        {
          v166 = MEMORY[0x1E69E7CC8];
        }

        type metadata accessor for RemapContext();
        v240 = swift_allocObject();
        v241 = MEMORY[0x1E69E7CC0];
        sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
        v242 = sub_1AF42B590(v241);

        *(v240 + 24) = v166;
        *(v240 + 32) = v242;
        *(v240 + 16) = 0;
        if (*(v166 + 16) && (v243 = sub_1AF449D3C(*(v160 + 84)), (v244 & 1) != 0))
        {
          v245 = (*(v166 + 56) + 8 * v243);
          v247 = *v245;
          v246 = v245[1];
        }

        else
        {
          v246 = 0;
          v247 = -1;
        }

        if ((v247 != -1 || v246) && (v247 & 0x80000000) == 0 && v306[1] > v247)
        {
          v248 = *v306 + 12 * v247;
          if (v246 == -1 || *(v248 + 8) == v246)
          {
            v249 = *(v248 + 4);

            v250 = sub_1AF6A31C4(v240);
            sub_1AF64A684(v249, v250);

            v251 = sub_1AF6C97E0(*(&v160 + 1));
            swift_unownedRetainStrong();

            if (v311)
            {
              sub_1AFADFA74(v251);
            }

LABEL_240:
            v5 = v312;
LABEL_5:
            if (v8 == v5)
            {
              return;
            }

            continue;
          }
        }

        *&v318 = 0;
        *(&v318 + 1) = 0xE000000000000000;
        v139 = &v318;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000031, 0x80000001AFF2F190);
        v296 = sub_1AF656F38();
        MEMORY[0x1B2718AE0](v296);

        LODWORD(v298) = 0;
        v297 = 81;
        sub_1AFDFE518();
        __break(1u);
LABEL_245:

        os_unfair_lock_unlock(*(v139 + 43));
        __break(1u);
        return;
      case 6:
        v98 = BYTE8(v326);
        *(&v319 + 1) = &type metadata for Entity;
        v320 = &off_1F2535EA8;
        *&v318 = v326;
        v99 = sub_1AF441150(&v318, &type metadata for Entity);
        *(&v316 + 1) = &type metadata for Entity;
        *&v317[0] = &off_1F2535EA8;
        v100 = sub_1AF585714(&v315);
        *v100 = sub_1AF6C97E0(*v99);
        sub_1AF5C5358(0, &qword_1ED722510);
        swift_dynamicCast();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v318);
        v102 = v323;
        v101 = HIDWORD(v323);
        v103 = v323;
        if (v98 == 1)
        {
          if (v311)
          {
            sub_1AFADF970(v323 | (HIDWORD(v323) << 32));
          }

          if ((v103 != -1 || v101) && (v102 & 0x80000000) == 0 && v306[1] > v102)
          {
            v104 = (*v306 + 12 * v103);
            if (v101 == -1 || v104[2] == v101)
            {
              v105 = *(v104 + 2);
              v106 = *(*(v6 + 144) + 8 * *v104 + 32);
              if (*(v106 + 232) <= v105 && *(v106 + 240) > v105)
              {
                v108 = *(v6 + v307);
                v109 = *v108;
                v110 = *(v106 + 344);

                os_unfair_lock_lock(v110);
                ecs_stack_allocator_push_snapshot(*(v109 + 32));
                v111 = *(*(v106 + 40) + 16);
                v112 = *(v111 + 128);
                if (!*(v112 + 16) || (v113 = sub_1AF449CB8(&type metadata for Tombstone), (v114 & 1) == 0) || *(*(v111 + 24) + 16 * *(*(v112 + 56) + 8 * v113) + 32) != &type metadata for Tombstone)
                {
                  *&v305 = v109;
                  v115 = *(v109 + 32);

                  v116 = ecs_stack_allocator_allocate(v115, 8, 8);
                  v117 = v116;
                  *v116 = v105;
                  v118 = *v108;
                  v119 = *(v106 + 192);
                  if (v119)
                  {
                    v120 = *(v106 + 216);
                    v121 = *(v106 + 200);
                    v297 = *(v106 + 208);
                    v298 = v120;
                    sub_1AF5C3A64(v116, 1, 1, &type metadata for Tombstone, &off_1F2532330, 1, v119, v121, v297);
                  }

                  v122 = *(v106 + 40);
                  v123 = v118;
                  v304 = v118;
                  v124 = v308;
                  sub_1AF5C3B0C(v122, v106, v117, 1, 1, v123);
                  v308 = v124;
                  LODWORD(v124) = *(v106 + 24);

                  v320 = 0;
                  v319 = 0u;
                  v318 = 0u;
                  *&v317[0] = 0;
                  v316 = 0u;
                  v315 = 0u;
                  v125 = sub_1AF65A4B4(v124, &type metadata for Tombstone, &off_1F2532330, 0, 0, &v318, &v315);

                  sub_1AF63A7E8(&v315, &qword_1ED72C1C0, &qword_1ED72C1D0);
                  sub_1AF63A7E8(&v318, &qword_1ED72C1C0, &qword_1ED72C1D0);
                  sub_1AF64A824(v117, 1, 1, v125, v304);

                  v109 = v305;
                }

                ecs_stack_allocator_pop_snapshot(*(v109 + 32));
                os_unfair_lock_unlock(*(v106 + 344));
              }
            }
          }
        }

        else if (v323 != 0xFFFFFFFFLL && (v323 & 0x80000000) == 0 && v306[1] > v323)
        {
          v197 = (*v306 + 12 * v323);
          if (HIDWORD(v323) == -1 || v197[2] == HIDWORD(v323))
          {
            v198 = *(v197 + 2);
            v199 = *(*(v6 + 144) + 8 * *v197 + 32);
            if (*(v199 + 232) <= v198 && *(v199 + 240) > v198)
            {
              v201 = **(v6 + v307);
              v202 = *(v199 + 344);

              os_unfair_lock_lock(v202);
              ecs_stack_allocator_push_snapshot(*(v201 + 32));
              v203 = *(*(v199 + 40) + 16);
              v204 = *(v203 + 128);
              if (*(v204 + 16) && (v205 = sub_1AF449CB8(&type metadata for Tombstone), (v206 & 1) != 0) && *(*(v203 + 24) + 16 * *(*(v204 + 56) + 8 * v205) + 32) == &type metadata for Tombstone)
              {
                *&v318 = &type metadata for Tombstone;
                *(&v318 + 1) = &off_1F2532330;
                v321 = 1;

                sub_1AF6304E8(v201 + 104, &v318, v198, 0, v199, v201);
                sub_1AF635250(&v318);
              }

              else
              {
              }

              sub_1AF62D29C(v199);

              ecs_stack_allocator_pop_snapshot(*(v201 + 32));
              os_unfair_lock_unlock(*(v199 + 344));
            }
          }
        }

        goto LABEL_5;
      case 7:
        v178 = v327;
        v320 = &off_1F2535E98;
        v318 = v326;
        *(&v319 + 1) = &type metadata for EntityInstance;
        v179 = sub_1AF441150(&v318, &type metadata for EntityInstance);
        *(&v316 + 1) = &type metadata for EntityInstance;
        *&v317[0] = &off_1F2535E98;
        v180 = sub_1AF585714(&v315);
        v181 = sub_1AF6C97E0(*v179);
        LODWORD(v179) = v181;
        v182 = HIDWORD(v181);
        v183 = *(a2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager);
        swift_unownedRetainStrong();

        *v180 = v179;
        *(v180 + 1) = v182;
        v180[1] = v183;
        sub_1AF5C5358(0, &qword_1ED722510);
        swift_dynamicCast();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v318);
        v184 = HIDWORD(v323);
        v185 = v323;
        if (v323 != 0xFFFFFFFFLL && (v323 & 0x80000000) == 0 && v306[1] > v323)
        {
          v186 = (*v306 + 12 * v323);
          if (HIDWORD(v323) == -1 || v186[2] == HIDWORD(v323))
          {
            v187 = *(*(v310 + 144) + 8 * *v186 + 32);
            v188 = *(v187 + 344);

            os_unfair_lock_lock(v188);
            if (v306[1] > v185)
            {
              v189 = (*v306 + 12 * v185);
              v190 = *(v189 + 2);
              if (v184 == -1 || v189[2] == v184)
              {
                v191 = *(*(v310 + 144) + 8 * *v189 + 32);
                if (v178 != *(v191 + 120))
                {
                  if ((*(v191 + 240) - *(v191 + 232)) < 2)
                  {
                    v294 = *(v191 + 188);
                    v295 = *(v191 + 24);

                    sub_1AF62320C(v294, v178, v295);

                    *(v191 + 120) = v178;
                  }

                  else
                  {
                    v304 = **(v310 + v307);
                    v192 = *(v191 + 28);
                    LODWORD(v305) = *(v191 + 24);
                    v193 = *(v191 + 32);

                    LOBYTE(v318) = v193;
                    v297 = v304;
                    sub_1AFBEA3FC(v190, v305, v178, v192 | (v193 << 32), 0, 0, 0, 0);
                  }
                }

                sub_1AF678B44(v185 | (v184 << 32));
              }
            }

            os_unfair_lock_unlock(*(v187 + 344));
          }
        }

        goto LABEL_239;
      case 8:
        v64 = v327;
        v65 = v328;
        v66 = sub_1AF6C97E0(v326);
        swift_unownedRetainStrong();

        v67 = sub_1AF6C97E0(v65);
        swift_unownedRetainStrong();

        sub_1AF6937A8(v66, v64, *(&v64 + 1), v67);
        goto LABEL_5;
      case 9:
        v167 = v327;
        v168 = v328;
        v169 = sub_1AF6C97E0(v326);
        swift_unownedRetainStrong();

        v170 = sub_1AF6C97E0(v168);
        swift_unownedRetainStrong();

        v172 = sub_1AF6B0A44(&v318, v167);
        if (*v171)
        {
          v173 = v171;
          v174 = v171;
          v175 = v169;
          v176 = v308;
          v177 = sub_1AF6CA8DC(v174, v175, v170);
          v308 = v176;
          sub_1AF64C464(v177, *(*v173 + 2));
        }

        (v172)(&v318, 0);
        goto LABEL_5;
      case 10:
        v25 = v326;
        v26 = DWORD1(v326);
        v27 = v326 == -1 && DWORD1(v326) == 0;
        if (v27 || (v28 = swift_weakLoadStrong()) == 0)
        {
          v194 = 0;
          v195 = -1;
          goto LABEL_224;
        }

        v29 = v28;
        v30 = *(a2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
        [*(v28 + 16) lock];
        if (v30 == 1)
        {
          v31 = *(v29 + 32);
          if (!*(v31 + 16))
          {
            goto LABEL_222;
          }
        }

        else
        {
          v31 = *(v29 + 24);
          if (!*(v31 + 16))
          {
            goto LABEL_222;
          }
        }

        v286 = sub_1AF449D3C(v25 | (v26 << 32));
        if (v287)
        {
          v288 = (*(v31 + 56) + 8 * v286);
          v195 = *v288;
          v194 = v288[1];
          goto LABEL_223;
        }

LABEL_222:
        v194 = 0;
        v195 = -1;
LABEL_223:
        [*(v29 + 16) unlock];

LABEL_224:
        swift_unownedRetainStrong();

        if ((v195 != -1 || v194) && (v195 & 0x80000000) == 0 && v306[1] > v195)
        {
          v289 = (*v306 + 12 * v195);
          if (v194 == -1 || v289[2] == v194)
          {
            v290 = *(*(v6 + 144) + 8 * *v289 + 32);
            thread_worker_index();
            v292 = *(v290 + 192);
            if (v292)
            {
              v293 = *(v290 + 208);
              *(v292 + 8 * (v291 >> 6)) |= 1 << v291;
              *(v293 + 8 * (v291 >> 6)) &= ~(1 << v291);
            }

            sub_1AF705804(v291);
          }
        }

        goto LABEL_5;
      case 11:
        v51 = v326;
        sub_1AF0FBA54(&v327, &v318);
        v52 = sub_1AF6C97E0(v51);
        v53 = *(a2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager);
        swift_unownedRetainStrong();

        v54 = *(&v319 + 1);
        v55 = v320;
        sub_1AF441150(&v318, *(&v319 + 1));
        if (v311)
        {
          (v55[1])(v54, v55);

          v56 = *(&v319 + 1);
          v57 = v320;
          sub_1AF441150(&v318, *(&v319 + 1));
          (v57[2])(v56, v57);
          v58 = *(&v319 + 1);
          v59 = v320;
          sub_1AF441150(&v318, *(&v319 + 1));
          (v59[3])(v52, v53, a2, v309, v58, v59);
          v60 = *(&v319 + 1);
          v61 = v320;
          sub_1AF441150(&v318, *(&v319 + 1));
          (v61[1])(v60, v61);

          v62 = *(&v319 + 1);
          v63 = v320;
          sub_1AF441150(&v318, *(&v319 + 1));
          (v63[2])(v62, v63);
        }

        else
        {
          (v55[3])(v52, v53, a2, v309, v54, v55);
        }

        goto LABEL_4;
      case 12:
        v146 = v326;
        sub_1AF0FBA54(&v327, &v318);
        v147 = sub_1AF6C97E0(v146);
        v148 = *(a2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager);
        swift_unownedRetainStrong();

        v149 = *(&v319 + 1);
        v150 = v320;
        sub_1AF441150(&v318, *(&v319 + 1));
        (v150[3])(v147, v148, a2, v309, v149, v150);
        if (v311)
        {
          v151 = *(&v319 + 1);
          v152 = v320;
          sub_1AF441150(&v318, *(&v319 + 1));
          v153 = (v152[1])(v151, v152);
          v155 = v154;
          v156 = *(&v319 + 1);
          v157 = v320;
          sub_1AF441150(&v318, *(&v319 + 1));
          (v157[2])(v156, v157);
          if ((*(v155 + 24))(v153, v155))
          {
            v158 = v311 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
            v159 = type metadata accessor for ScriptingConfiguration();
            ++*(v158 + *(v159 + 36));
          }
        }

        goto LABEL_4;
      case 13:
        v15 = v326;
        v16 = DWORD1(v326);
        v17 = *(&v327 + 1);
        v18 = v327;
        *&v14 = 0xFFFFFFFFLL;
        v305 = v14;
        if (v326 != -1 || DWORD1(v326) != 0)
        {
          v20 = swift_weakLoadStrong();
          if (v20)
          {
            v21 = v20;
            v22 = *(a2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
            [*(v20 + 16) lock];
            if (v22 == 1)
            {
              v24 = *(v21 + 32);
            }

            else
            {
              v24 = *(v21 + 24);
            }

            v252 = *(v24 + 16);
            *&v23 = 0xFFFFFFFFLL;
            v305 = v23;
            if (v252)
            {
              v253 = sub_1AF449D3C(v15 | (v16 << 32));
              if (v255)
              {
                *&v254 = *(*(v24 + 56) + 8 * v253);
                v305 = v254;
              }
            }

            [*(v21 + 16) unlock];
          }
        }

        v256 = *(a2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager);
        swift_unownedRetainStrong();

        v257 = v305;
        v258 = DWORD1(v305);
        if (v305 == 0xFFFFFFFFLL)
        {
          goto LABEL_216;
        }

        v304 = v18;
        v259 = *(v256 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v259)
        {
          v260 = *(v259 + 80);
          swift_unknownObjectWeakLoadStrong();
          v259 = *(v259 + 56);
        }

        else
        {
          v260 = 0;
        }

        v324 = 0;
        swift_unknownObjectUnownedInit();
        v323 = v256;
        v324 = v259;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v325 = v260;
        if (v257 != -1)
        {
          swift_unownedRetainStrong();

          swift_unownedRetainStrong();
          if ((v257 & 0x80000000) == 0 && *(v256 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v257)
          {
            v261 = (*(v256 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v257);
            if (v258 == -1 || v261[2] == v258)
            {
              v262 = *(v261 + 2);
              v263 = *(*(v256 + 144) + 8 * *v261 + 32);
              if (*(v263 + 232) <= v262 && *(v263 + 240) > v262)
              {
                v264 = **(v256 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
                v303 = *(v263 + 344);

                os_unfair_lock_lock(v303);
                v303 = v264;
                ecs_stack_allocator_push_snapshot(*(v264 + 32));
                v265 = *(*(*(v263 + 40) + 16) + 128);
                if (*(v265 + 16) && (v302 = *(*(v263 + 40) + 16), v266 = sub_1AF449CB8(v304), (v267 & 1) != 0) && *(*(v302 + 24) + 16 * *(*(v265 + 56) + 8 * v266) + 32) == v304)
                {
                  v302 = &v299;
                  *&v318 = v304;
                  *(&v318 + 1) = v17;
                  v321 = 1;
                  MEMORY[0x1EEE9AC00](v266, v267);
                  *(&v299 - 6) = &v318;
                  *(&v299 - 5) = v262;
                  *(&v299 - 32) = 0;
                  v268 = v303;
                  *(&v299 - 3) = v263;
                  v297 = v268;

                  sub_1AF63023C(0, v263, sub_1AF6897B4);
                  sub_1AF635250(&v318);
                }

                else
                {

                  v268 = v303;
                }

                sub_1AF62D29C(v263);

                ecs_stack_allocator_pop_snapshot(*&v268[8]._os_unfair_lock_opaque);
                os_unfair_lock_unlock(*(v263 + 344));
              }
            }
          }

          goto LABEL_197;
        }

        if (v258)
        {
          swift_unownedRetainStrong();

          swift_unownedRetainStrong();
LABEL_197:

          v269 = swift_unknownObjectUnownedLoadStrong();
          v18 = v304;
          if (v269)
          {
            v270 = v269;
            if ((*(v17 + 24))(v304, v17))
            {
              v271 = v270 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
              v272 = type metadata accessor for ScriptingConfiguration();
              ++*(v271 + *(v272 + 36));
            }

            swift_unknownObjectRelease();
          }

          if (!v260)
          {
            sub_1AF579490(&v323);
            goto LABEL_215;
          }

          swift_unownedRetainStrong();
          *&v318 = v305;
          *(&v318 + 1) = v256;
          *&v319 = v18;
          *(&v319 + 1) = v17;
          v322 = 13;
          v273 = *(v256 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
          if (v273 && (*(v273 + 81) & 1) != 0 && *(v273 + 24) && swift_weakLoadStrong())
          {

            swift_unknownObjectRetain();

            sub_1AF6CAF24(&v318, &v315);
            v274 = *(v273 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v273 + 16) = v274;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v274 = sub_1AF4221C8(0, *(v274 + 2) + 1, 1, v274);
              *(v273 + 16) = v274;
            }

            v277 = *(v274 + 2);
            v276 = *(v274 + 3);
            if (v277 >= v276 >> 1)
            {
              *(v273 + 16) = sub_1AF4221C8(v276 > 1, v277 + 1, 1, v274);
            }

            swift_unknownObjectRelease();
            sub_1AF57955C(&v318);
            v278 = *(v273 + 16);
            *(v278 + 16) = v277 + 1;
            v279 = (v278 + (v277 << 6));
            v280 = v315;
            v281 = v316;
            v282 = v317[0];
            *(v279 + 73) = *(v317 + 9);
            v279[3] = v281;
            v279[4] = v282;
            v279[2] = v280;
            *(v273 + 16) = v278;
          }

          else
          {

            sub_1AF57955C(&v318);
          }

          sub_1AF579490(&v323);
LABEL_214:
          v283 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v283 ^ 1);
          goto LABEL_215;
        }

        sub_1AF579490(&v323);
        v18 = v304;
        if (v260)
        {
          goto LABEL_214;
        }

LABEL_215:

LABEL_216:
        if (v311 && ((*(v17 + 24))(v18, v17) & 1) != 0)
        {
          v284 = v311 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
          v285 = type metadata accessor for ScriptingConfiguration();
          ++*(v284 + *(v285 + 36));
        }

LABEL_239:
        v6 = v310;
        goto LABEL_240;
      case 14:
        v9 = v329;
        sub_1AF0FBA54(&v326, &v318);
        v10 = *(&v319 + 1);
        v11 = v320;
        sub_1AF441150(&v318, *(&v319 + 1));
        v12 = v11[1];
        *(&v316 + 1) = v10;
        *&v317[0] = v11;
        sub_1AF585714(&v315);
        v12(a2, v309, v10, v11);
        v5 = v312;
        (v9)(&v315);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v315);
LABEL_4:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v318);
        goto LABEL_5;
      case 15:
        goto LABEL_5;
      default:
        sub_1AF57955C(&v326);
        goto LABEL_5;
    }
  }
}

uint64_t sub_1AF6C5D04(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 48);
  v4 = *(result + 56);
  if (v3 != v4)
  {
    v7 = *(result + 8);
    v8 = *a3;
    while (1)
    {

      if (*(v7 + 184))
      {
        break;
      }

      v10 = *(*(v7 + 168) + 4 * v3);
      v11 = *(*(v9 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v10 + 8);

      v12 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v12;
      if ((result & 1) == 0)
      {
        result = sub_1AFC0DA44(v12);
        v12 = result;
        *a2 = result;
      }

      ++v3;
      v13 = v12 + 8 * v8;
      *(v13 + 32) = v10;
      *(v13 + 36) = v11;
      v8 = *a3 + 1;
      *a3 = v8;
      if (v4 == v3)
      {
        return result;
      }
    }

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void sub_1AF6C5E30(char a1)
{
  v3 = sub_1AFDFCA88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AFDFCAC8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (!v13)
  {
    return;
  }

  if (!*(v13[2] + 16))
  {
    return;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v50 = v9;
  v15 = v13[3];
  if (!v15)
  {
    goto LABEL_11;
  }

  v44 = v8;
  v45 = v3;
  v46 = v4;
  v16 = Strong;
  v17 = v13[4];
  v18 = swift_unknownObjectWeakLoadStrong();
  v19 = v13[9];
  v20 = v13[2];
  v13[2] = MEMORY[0x1E69E7CC0];
  v21 = swift_allocObject();
  v22 = v16;
  v21[2] = v16;
  v21[3] = v20;
  v48 = v17;
  v49 = v20;
  v21[4] = v15;
  v21[5] = v17;
  v21[6] = v18;
  v21[7] = v19;
  v51 = v21;
  v47 = v19;
  if ((a1 & 1) == 0)
  {
    v25 = *(v16 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated);
    v26 = *(v16 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated + 8);
    v27 = v22;
    swift_unknownObjectRetain_n();

    swift_unknownObjectRetain();
    v28 = v49;

    v29 = v26;
    [v29 lock];
    [v29 unlock];

    if ((v25 & 1) == 0)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      sub_1AF660748(v27, v27, v28, v15, v48, v18, v47, v30);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_11:

    return;
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    swift_unknownObjectRetain_n();

    swift_unknownObjectRetain();
  }

  else
  {
    if (*(v16 + 56) == 1)
    {
      sub_1AF615168();
      v43[1] = v15;
      swift_unknownObjectRetain_n();

      v43[0] = v18;
      swift_unknownObjectRetain();
      v49 = sub_1AFDFDB08();
      v31 = swift_allocObject();
      v32 = v51;
      *(v31 + 16) = sub_1AF6CB234;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1AF6CC3F0;
      *(v33 + 24) = v31;
      v57 = sub_1AF6CB2D8;
      v58 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_1AFCDA044;
      v56 = &unk_1F2535FF8;
      v34 = _Block_copy(&aBlock);

      sub_1AFDFCAA8();
      v52 = MEMORY[0x1E69E7CC0];
      sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
      sub_1AF6CB2E0();
      sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0);
      v35 = v45;
      sub_1AFDFE058();
      v36 = v49;
      MEMORY[0x1B2719530](0, v12, v7, v34);
      _Block_release(v34);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v46 + 8))(v7, v35);
      (*(v50 + 8))(v12, v44);

      return;
    }

    swift_unknownObjectRetain_n();

    swift_unknownObjectRetain();
  }

  v37 = swift_unknownObjectWeakLoadStrong();
  v38 = objc_opt_self();
  v39 = swift_allocObject();
  v40 = v51;
  *(v39 + 16) = sub_1AF6CB234;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1AF6CB244;
  *(v41 + 24) = v39;
  v57 = sub_1AF6CB24C;
  v58 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1AFCDA98C;
  v56 = &unk_1F24E5F10;
  v42 = _Block_copy(&aBlock);

  [v38 postCommandAvoidingImmediateModeWithWorldRef:v37 applyBlock:v42];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v42);
}

void sub_1AF6C6518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated);
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated + 8);
  [v13 lock];
  [v13 unlock];

  if ((v12 & 1) == 0)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1AF660748(a1, a1, a2, a3, a4, a5, a6, v14);
  }
}

uint64_t sub_1AF6C65F0(void (*a1)(_BYTE *))
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1(v3);
}

uint64_t sub_1AF6C66FC()
{
  type metadata accessor for ReplicationStreamSystem();
  result = swift_allocObject();
  *(result + 16) = "ModificationStream";
  *(result + 24) = 18;
  *(result + 32) = 2;
  return result;
}

uint64_t sub_1AF6C674C()
{

  swift_unknownObjectRelease();
  swift_weakDestroy();
  sub_1AF0FBDE0(v0 + 48);
  sub_1AF0FBDE0(v0 + 64);
  MEMORY[0x1B271E060](v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6C67D0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v2)
  {
    if (*(v2 + 81) == 1)
    {
      if (*(v2 + 24))
      {
        v3 = result;
        result = swift_weakLoadStrong();
        if (result)
        {

          swift_unknownObjectRetain();

          sub_1AF6CAF24(v3, v13);
          v4 = *(v2 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 16) = v4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v4 = sub_1AF4221C8(0, *(v4 + 2) + 1, 1, v4);
            *(v2 + 16) = v4;
          }

          v7 = *(v4 + 2);
          v6 = *(v4 + 3);
          if (v7 >= v6 >> 1)
          {
            *(v2 + 16) = sub_1AF4221C8(v6 > 1, v7 + 1, 1, v4);
          }

          swift_unknownObjectRelease();
          v8 = *(v2 + 16);
          *(v8 + 16) = v7 + 1;
          v9 = (v8 + (v7 << 6));
          v10 = v13[0];
          v11 = v13[1];
          v12 = v14[0];
          *(v9 + 73) = *(v14 + 9);
          v9[3] = v11;
          v9[4] = v12;
          v9[2] = v10;
          *(v2 + 16) = v8;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF6C690C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for RemapContext();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = sub_1AF42B4D0(v6);
  v9 = sub_1AF42B590(v6);
  *(v8 + 24) = v7;
  *(v8 + 32) = v9;

  *(v8 + 16) = 1;
  v10 = *v3;
  swift_unownedRetainStrong();
  v11 = **(v10 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

  swift_unownedRetainStrong();
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (a1 + 32);
    do
    {
      v15 = v14[v13++];
      sub_1AF65B02C(v15, v8);
    }

    while (v12 != v13);
    sub_1AF630BA4(v8, v10, a2 | ((HIDWORD(a2) & 1) << 32), 0, v11);
    v30[0] = v6;
    sub_1AFC07194(0, v12, 0);
    do
    {
      v16 = *(v8 + 24);
      v17 = 0xFFFFFFFFLL;
      if (*(v16 + 16))
      {
        v18 = sub_1AF449D3C(*v14);
        if (v19)
        {
          v17 = *(*(v16 + 56) + 8 * v18);
        }
      }

      v30[0] = v6;
      v21 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AFC07194(v20 > 1, v21 + 1, 1);
        v6 = v30[0];
      }

      *(v6 + 16) = v21 + 1;
      *(v6 + 8 * v21 + 32) = v17;
      ++v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    sub_1AF630BA4(v8, v10, a2 | ((HIDWORD(a2) & 1) << 32), 0, v11);
  }

  v22 = *(v8 + 24);
  v23 = *(v22 + 16);
  if (v23)
  {
    v29 = v3;
    v24 = sub_1AFC859F8(v23, 0);
    sub_1AFC870D0(v30, v24 + 4, v23, v22);

    sub_1AF0FBB14();
    v25 = *(v8 + 24);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = sub_1AFC859F8(*(v25 + 16), 0);
      sub_1AFC892B4(v30, v27 + 4, v26, v25);

      sub_1AF0FBB14();
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    v3 = v29;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC0];
  }

  if (*(v3 + 24) == 1)
  {
    swift_unownedRetainStrong();
    v30[0] = v24;
    v30[1] = v27;
    v31 = a2;
    v32 = BYTE4(a2) & 1;
    v33 = 1;
    sub_1AF6C67D0(v30);

    sub_1AF57955C(v30);
  }

  else
  {
  }

  if (swift_unknownObjectUnownedLoadStrong())
  {
    swift_unknownObjectRelease();
    swift_unownedRetainStrong();
  }

  return v6;
}

void sub_1AF6C6C58(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  v11 = *v5;
  swift_unownedRetainStrong();

  if (v11 != a2)
  {
    v12 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
    v63 = a2;
    if (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream) && swift_weakLoadStrong())
    {
      v60 = v12;
      v61 = a4;

      v13 = MEMORY[0x1E69E7CC0];
      v14 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
      type metadata accessor for RemapContext();
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = sub_1AF42B4D0(v13);
      v16 = sub_1AF42B590(v13);
      *(v15 + 24) = v14;
      *(v15 + 32) = v16;

      *(v15 + 16) = a3 & 1;
      swift_unownedRetainStrong();
      v62 = a1;
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = (a1 + 32);
        v19 = *(a1 + 16);
        v64 = v11;
        do
        {
          if (a5)
          {
            sub_1AF65B02C(*v18, v15);
          }

          else
          {
            v20 = a5;
            v65 = *v18;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v66[0] = *(v15 + 24);
            v22 = v66[0];
            *(v15 + 24) = 0x8000000000000000;
            v23 = (v65 | (HIDWORD(v65) << 32));
            v24 = sub_1AF449D3C(v23);
            v26 = v25;
            v27 = *(v22 + 16) + ((v25 & 1) == 0);
            if (*(v22 + 24) >= v27)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1AF8489C0();
              }
            }

            else
            {
              sub_1AF833F28(v27, isUniquelyReferenced_nonNull_native);
              v28 = sub_1AF449D3C(v23);
              if ((v26 & 1) != (v29 & 1))
              {
                sub_1AFDFF1A8();
                __break(1u);

                sub_1AF579490(v66);
                v59 = [objc_opt_self() immediateMode];
                sub_1AF6C5E30(v59 ^ 1);
                __break(1u);
                return;
              }

              v24 = v28;
            }

            v30 = v66[0];
            if (v26)
            {
              *(*(v66[0] + 56) + 8 * v24) = 0xFFFFFFFFLL;
            }

            else
            {
              *(v66[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
              *(v30[6] + 8 * v24) = v65;
              *(v30[7] + 8 * v24) = 0xFFFFFFFFLL;
              ++v30[2];
            }

            *(v15 + 24) = v30;

            a5 = v20;
            v11 = v64;
          }

          ++v18;
          --v19;
        }

        while (v19);
      }

      v48 = *(v63 + v60);
      if (v48)
      {
        v49 = *(v48 + 80);
        swift_unknownObjectWeakLoadStrong();
        v48 = *(v48 + 56);
      }

      else
      {
        v49 = 0;
      }

      swift_unknownObjectUnownedInit();
      v66[0] = v63;
      v66[2] = v48;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v67 = v49;
      sub_1AF6C7278(v66, v15, v11, v61 | ((HIDWORD(v61) & 1) << 32));
      sub_1AF579490(v66);
      if (v49)
      {
        v50 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v50 ^ 1);
      }

      if (v17)
      {
        v66[0] = MEMORY[0x1E69E7CC0];
        sub_1AFC07194(0, v17, 0);
        v51 = v66[0];
        v52 = (v62 + 32);
        do
        {
          v53 = *(v15 + 24);
          v54 = 0xFFFFFFFFLL;
          if (*(v53 + 16))
          {
            v55 = sub_1AF449D3C(*v52);
            if (v56)
            {
              v54 = *(*(v53 + 56) + 8 * v55);
            }
          }

          v66[0] = v51;
          v58 = *(v51 + 16);
          v57 = *(v51 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_1AFC07194(v57 > 1, v58 + 1, 1);
            v51 = v66[0];
          }

          *(v51 + 16) = v58 + 1;
          *(v51 + 8 * v58 + 32) = v54;
          ++v52;
          --v17;
        }

        while (v17);
      }
    }

    else
    {
      v31 = a3 & 1;
      v32 = MEMORY[0x1E69E7CC0];
      v33 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
      type metadata accessor for RemapContext();
      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      *(v34 + 24) = sub_1AF42B4D0(v32);
      v35 = sub_1AF42B590(v32);
      *(v34 + 24) = v33;
      *(v34 + 32) = v35;

      *(v34 + 16) = v31;
      v36 = **(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      swift_unownedRetainStrong();
      v37 = *(a1 + 16);
      if (v37)
      {
        v38 = 0;
        v39 = (a1 + 32);
        do
        {
          v40 = v39[v38++];
          sub_1AF65B02C(v40, v34);
        }

        while (v37 != v38);
        sub_1AF630BA4(v34, v11, 0x100000000uLL, 0, v36);
        v66[0] = v32;
        sub_1AFC07194(0, v37, 0);
        v41 = v32;
        do
        {
          v42 = *(v34 + 24);
          v43 = 0xFFFFFFFFLL;
          if (*(v42 + 16))
          {
            v44 = sub_1AF449D3C(*v39);
            if (v45)
            {
              v43 = *(*(v42 + 56) + 8 * v44);
            }
          }

          v66[0] = v41;
          v47 = *(v41 + 16);
          v46 = *(v41 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1AFC07194(v46 > 1, v47 + 1, 1);
            v41 = v66[0];
          }

          *(v41 + 16) = v47 + 1;
          *(v41 + 8 * v47 + 32) = v43;
          ++v39;
          --v37;
        }

        while (v37);
      }

      else
      {
        LOBYTE(v66[0]) = 1;
        sub_1AF630BA4(v34, v11, 0x100000000uLL, 0, v36);
      }
    }

    return;
  }

  sub_1AF6C690C(a1, a4 | ((HIDWORD(a4) & 1) << 32));
}

uint64_t sub_1AF6C7278(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v11 = (v7 + 63) >> 6;
  v167 = a4;

  v12 = 0;
  v183 = a1;
  v178 = v6;
  v169 = v10;
  v170 = v5;
  v168 = v11;
LABEL_5:
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (v12 + 1 >= v11)
    {
      break;
    }

    v9 = *(v5 + 8 * v12++ + 72);
    if (v9)
    {
      v12 = v13;
LABEL_9:
      v14 = (*(v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      v15 = *v14;
      v16 = v14[1];
      v17 = v15 == -1 && v16 == 0;
      if (v17 || v15 < 0 || v10[1] <= v15 || ((v18 = *v10 + 12 * v15, v16 != -1) ? (v19 = *(v18 + 8) == v16) : (v19 = 1), !v19))
      {
LABEL_164:
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v20 = *(v18 + 6);
      v173 = v15 | (v16 << 32);
      v187 = sub_1AF65AE88(v173);
      v21 = *(*(a3 + 88) + 8 * v20 + 32);
      v22 = v21[11];
      v23 = v21[8];
      v24 = v21[9];
      v203 = v21[10];
      v204 = v22;
      v25 = v21[6];
      v26 = v21[8];
      v201 = v21[7];
      v202[0] = v26;
      v202[1] = v24;
      v196 = v23;
      v197 = v24;
      v27 = v21[6];
      v198 = v203;
      v199 = v21[11];
      v200 = v27;
      v194 = v25;
      v195 = v201;
      v182 = v21;

      sub_1AF63529C(&v200, &v205);
      v28 = sub_1AF627868();
      v207 = v196;
      v208 = v197;
      v209 = v198;
      v210 = v199;
      v205 = v194;
      v206 = v195;
      sub_1AF6352F8(&v205);
      v29 = v28[2];
      if (v29)
      {
        v193 = MEMORY[0x1E69E7CC0];
        sub_1AFC07050(0, v29, 0);
        v30 = v193;
        v31 = (v28 + 4);
        do
        {
          sub_1AF441194(v31, v192);
          sub_1AF441194(v192, &v194);
          v32 = *(&v195 + 1);
          v33 = v196;
          sub_1AF448018(&v194, *(&v195 + 1));
          (*(*(v33 + 8) + 96))(a2, &off_1F2532090, v32);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v192);
          v193 = v30;
          v35 = *(v30 + 16);
          v34 = *(v30 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_1AFC07050(v34 > 1, v35 + 1, 1);
            v30 = v193;
          }

          *(v30 + 16) = v35 + 1;
          sub_1AF0FBA54(&v194, v30 + 40 * v35 + 32);
          v31 += 40;
          --v29;
        }

        while (v29);

        a1 = v183;
      }

      else
      {

        v30 = MEMORY[0x1E69E7CC0];
      }

      v36 = *(*(v182 + 2) + 32);
      v37 = *a1;
      swift_unownedRetainStrong();
      v38 = **(v37 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

      v185 = v38;
      v39 = *(v38 + 16);
      v40 = v39 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
      v41 = *(v39 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

      os_unfair_lock_lock(v41);

      v176 = v36;
      v42 = sub_1AF66ED9C(v36, v30);
      v44 = v43;

      v45 = *(v39 + 80);
      v46 = *(v45 + 16);
      if (!v46)
      {
        goto LABEL_33;
      }

      v47 = 0;
      v48 = v45 + 32;
      while (*(*(v48 + 8 * v47) + 144) != v42)
      {
        if (v46 == ++v47)
        {
          goto LABEL_33;
        }
      }

      v49 = sub_1AF65D418(v44, v47);
      if ((v49 & 0x100000000) != 0)
      {
LABEL_33:
        LODWORD(v49) = sub_1AF65D480(v42, v44, v176, v30);
      }

      v50 = *(v40 + 24);
      v188 = *(*(v39 + 88) + 8 * v49 + 32);

      os_unfair_lock_unlock(v50);

      v51 = *(v185 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
      v52 = *v51;

      if (v52)
      {
        vfx_counters.add(_:_:)(*(v51 + 40), 1);
      }

      v53 = *(v185 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
      v54 = *v53;

      a1 = v183;
      if (v54)
      {
        vfx_counters.add(_:_:)(*(v53 + 48), 1);
      }

      v55 = *(v188 + 204);
      v180 = v55;
      if (*(v188 + 208))
      {
        v172 = 0;
        v184 = -1;
      }

      else
      {

        v56 = sub_1AF65B2E4();

        v184 = v56;
        v57 = HIDWORD(v56);
        v55 = v180;
        v172 = v57;
      }

      v58 = *(v185 + 16);
      v59 = *(*(*(v58 + 88) + 8 * v55 + 32) + 200);

      if (v59 == 1)
      {
        *(v58 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
      }

      v60 = *(v58 + 136);
      swift_retain_n();
      os_unfair_lock_lock(v60);
      if (!sub_1AF62173C(v55))
      {
        sub_1AF6AFD3C(v55);
      }

      v61 = 36;
      if (v187)
      {
        v61 = 32;
      }

      v62 = *(*(v58 + 104) + 40 * v55 + v61 + 32);
      if (v62 == -1)
      {
        goto LABEL_64;
      }

      v63 = *(*(v58 + 144) + 8 * v62 + 32);
      if ((*(v63 + 32) & 1) == 0)
      {
        if ((a4 & 0x100000000) == 0 && *(v63 + 28) == a4)
        {
          goto LABEL_53;
        }

LABEL_64:
        v171 = v37;
        os_unfair_lock_unlock(*(v58 + 136));
        v68 = sub_1AF624654();
        if ((v68 & 0x100000000) != 0)
        {
          v69 = *(*(v58 + 144) + 16);
          type metadata accessor for ComponentsDataChunk();
          swift_allocObject();

          v75 = sub_1AF64BF6C(v74, v167 | ((HIDWORD(a4) & 1) << 32), v55, v187 & 1, v69);

          _swift_stdlib_immortalize();

          v72 = *(v58 + 144);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v58 + 144) = v72;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AFC05EFC(0, *(v72 + 2) + 1, 1);
            v72 = *(v58 + 144);
          }

          v78 = *(v72 + 2);
          v77 = *(v72 + 3);
          if (v78 >= v77 >> 1)
          {
            sub_1AFC05EFC(v77 > 1, v78 + 1, 1);
            v72 = *(v58 + 144);
          }

          *(v72 + 2) = v78 + 1;
          *&v72[8 * v78 + 32] = v75;
        }

        else
        {
          v69 = v68;
          type metadata accessor for ComponentsDataChunk();
          swift_allocObject();

          v71 = sub_1AF64BF6C(v70, v167 | ((HIDWORD(a4) & 1) << 32), v55, v187 & 1, v69);

          _swift_stdlib_immortalize();

          v72 = *(v58 + 144);
          v73 = swift_isUniquelyReferenced_nonNull_native();
          *(v58 + 144) = v72;
          if ((v73 & 1) == 0)
          {
            v72 = sub_1AF6247B0(v72);
          }

          *&v72[8 * v69 + 32] = v71;
        }

        *(v58 + 144) = v72;
        v79 = *(v58 + 104);
        v80 = swift_isUniquelyReferenced_nonNull_native();
        *(v58 + 104) = v79;
        if ((v80 & 1) == 0)
        {
          v79 = sub_1AFC0D9B8(v79);
          *(v58 + 104) = v79;
        }

        v81 = &v79[40 * v180];
        if (v187)
        {
          v82 = *(v81 + 4);
          v83 = swift_isUniquelyReferenced_nonNull_native();
          *(v81 + 4) = v82;
          if ((v83 & 1) == 0)
          {
            v82 = sub_1AF420E8C(0, *(v82 + 2) + 1, 1, v82);
            *(v81 + 4) = v82;
          }

          v85 = *(v82 + 2);
          v84 = *(v82 + 3);
          if (v85 >= v84 >> 1)
          {
            v82 = sub_1AF420E8C(v84 > 1, v85 + 1, 1, v82);
            *(v81 + 4) = v82;
          }

          *(v82 + 2) = v85 + 1;
          *&v82[4 * v85 + 32] = v69;
          *(v81 + 16) = v69;
        }

        else
        {
          v86 = *(v81 + 5);
          sub_1AF64B7B0(v86, v86, v69);
          *(v81 + 5) = v86 + 1;
          *(v81 + 17) = v69;
        }

        v81[56] = 1;
        v87 = *(*(v58 + 144) + 8 * v69 + 32);
        v88 = *(v87 + 376);

        if (os_unfair_lock_trylock(v88))
        {
          os_unfair_lock_lock(*(v87 + 344));
          os_unfair_lock_unlock(*(v87 + 376));
          a1 = v183;
          v37 = v171;
          if ((*(v87 + 121) & 1) != 0 || *(v87 + 240) < *(v87 + 88))
          {
            v89 = sub_1AF622B60(v184);
            if ((*(v188 + 208) & 1) == 0)
            {
              v90 = *(*(v185 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v184;
              *v90 = *(v87 + 188);
              *(v90 + 4) = v89;
              *(v90 + 6) = v180;
            }

            if (*(v188 + 212) == 1)
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

            goto LABEL_92;
          }

          os_unfair_lock_unlock(*(v87 + 344));
        }

        goto LABEL_164;
      }

      if ((a4 & 0x100000000) == 0)
      {
        goto LABEL_64;
      }

LABEL_53:
      if (!os_unfair_lock_trylock(*(v63 + 376)))
      {
        goto LABEL_64;
      }

      os_unfair_lock_lock(*(v63 + 344));
      os_unfair_lock_unlock(*(v63 + 376));
      if ((*(v63 + 121) & 1) == 0 && *(v63 + 240) >= *(v63 + 88))
      {
        os_unfair_lock_unlock(*(v63 + 344));
        goto LABEL_64;
      }

      v64 = sub_1AF622B60(v184);
      if ((*(v188 + 208) & 1) == 0)
      {
        v65 = *(*(v185 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v184;
        *v65 = *(v63 + 188);
        *(v65 + 4) = v64;
        *(v65 + 6) = v180;
      }

      if (*(v188 + 212) == 1)
      {
        v66 = *(v63 + 192);
        if (v66)
        {
          v67 = *(v63 + 208);
          *(v66 + 8 * (v64 >> 6)) |= 1 << v64;
          *(v67 + 8 * (v64 >> 6)) &= ~(1 << v64);
        }

        sub_1AF705804(v64);
      }

      os_unfair_lock_unlock(*(v63 + 344));
      os_unfair_lock_unlock(*(v58 + 136));
LABEL_92:

      swift_unownedRetainStrong();

      if (a1[3])
      {
        swift_unownedRetainStrong();
        v192[0] = BYTE4(a4) & 1;
        *&v194 = __PAIR64__(v172, v184);
        v93 = v172;
        *(&v194 + 1) = v37;
        *&v195 = v176;
        *(&v195 + 1) = v30;
        LOBYTE(v196) = v187 & 1;
        DWORD1(v196) = a4;
        BYTE8(v196) = BYTE4(a4) & 1;
        BYTE8(v197) = 2;
        sub_1AF6C67D0(&v194);

        sub_1AF57955C(&v194);
        v5 = v170;
        v11 = v168;
      }

      else
      {

        v5 = v170;
        v11 = v168;
        v93 = v172;
      }

      if (swift_unknownObjectUnownedLoadStrong())
      {
        swift_unknownObjectRelease();
      }

      v9 &= v9 - 1;
      sub_1AF634024(v184 | (v93 << 32), v173);

      v10 = v169;
      goto LABEL_5;
    }
  }

  v94 = *(a2 + 24);
  v95 = 1 << *(v94 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  v97 = v96 & *(v94 + 64);
  v98 = (v95 + 63) >> 6;

  v99 = 0;
  while (v97)
  {
    v100 = v99;
LABEL_106:
    v101 = sub_1AF6A37F4(*(*(v94 + 48) + ((v100 << 9) | (8 * __clz(__rbit64(v97))))));
    v102 = *a1;
    swift_unownedRetainStrong();
    v103 = sub_1AF6A39AC(v101, a2);

    v105 = *(v103 + 84);
    v104 = *(v103 + 88);
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      sub_1AFADFA74(v105 | (v104 << 32));
      swift_unknownObjectRelease();
    }

    v97 &= v97 - 1;
    if (*(v183 + 24) == 1)
    {
      swift_unownedRetainStrong();
      *&v205 = v103;
      *(&v205 + 1) = __PAIR64__(v104, v105);
      *&v206 = v102;
      BYTE8(v208) = 5;

      sub_1AF6C67D0(&v205);

      sub_1AF57955C(&v205);
    }

    else
    {
    }

    v99 = v100;
    a1 = v183;
  }

  while (1)
  {
    v100 = v99 + 1;
    if (v99 + 1 >= v98)
    {
      break;
    }

    v97 = *(v94 + 8 * v99++ + 72);
    if (v97)
    {
      goto LABEL_106;
    }
  }

  v107 = sub_1AF62B8A4(v106);

  v177 = *(v107 + 16);
  if (v177)
  {
    v108 = 0;
    v175 = v107 + 32;
    do
    {
      v109 = *(v175 + 16 * v108);
      v110 = *(a3 + 216);
      v186 = v109;
      v181 = v108;
      if (*(v110 + 16) && (v111 = sub_1AF449CB8(v109), (v112 & 1) != 0))
      {
        v113 = *(*(v110 + 56) + 24 * v111);
      }

      else
      {
        v113 = MEMORY[0x1E69E7CC0];
      }

      v114 = *(v113 + 16);
      if (v114)
      {
        v115 = (v113 + 40);
        v116 = MEMORY[0x1E69E7CC0];
        do
        {
          v118 = *v178;
          if (*(*v178 + 16))
          {
            v119 = *v115;
            v120 = sub_1AF449D3C(*(v115 - 1));
            if (v121)
            {
              v122 = *v178;
              if (*(*v178 + 16))
              {
                v123 = *(*(v118 + 56) + 8 * v120);
                v124 = sub_1AF449D3C(v119);
                if (v125)
                {
                  v126 = *(*(v122 + 56) + 8 * v124);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v116 = sub_1AF4230FC(0, *(v116 + 2) + 1, 1, v116);
                  }

                  v128 = *(v116 + 2);
                  v127 = *(v116 + 3);
                  if (v128 >= v127 >> 1)
                  {
                    v116 = sub_1AF4230FC(v127 > 1, v128 + 1, 1, v116);
                  }

                  *(v116 + 2) = v128 + 1;
                  v117 = &v116[16 * v128];
                  *(v117 + 4) = v123;
                  *(v117 + 5) = v126;
                }
              }
            }
          }

          v115 += 2;
          --v114;
        }

        while (v114);
      }

      else
      {
        v116 = MEMORY[0x1E69E7CC0];
      }

      v129 = *(v116 + 2);
      if (v129)
      {
        v130 = (v116 + 32);
        v131 = v186;
        do
        {
          v132 = vceq_s32(*v130, 0xFFFFFFFFLL);
          if ((v132.i32[0] & v132.i32[1] & 1) == 0)
          {
            v189 = vextq_s8(*v130->i8, *v130->i8, 8uLL).u64[0];
            v133 = vceq_s32(v189, 0xFFFFFFFFLL);
            if ((v133.i32[0] & v133.i32[1] & 1) == 0)
            {
              v191 = *v130->i8;
              v134 = *a1;
              swift_unownedRetainStrong();
              v135 = swift_allocObject();
              *(v135 + 16) = v186;
              v136 = swift_allocObject();
              *(v136 + 16) = sub_1AF63534C;
              *(v136 + 24) = v135;
              v137 = swift_isUniquelyReferenced_nonNull_native();
              *&v205 = *(v134 + 216);
              v138 = v205;
              *(v134 + 216) = 0x8000000000000000;
              v139 = sub_1AF449CB8(v131);
              v140 = v131;
              v142 = v141;
              v143 = *(v138 + 16) + ((v141 & 1) == 0);
              if (*(v138 + 24) >= v143)
              {
                if ((v137 & 1) == 0)
                {
                  sub_1AF848B00();
                  v138 = v205;
                }
              }

              else
              {
                sub_1AF834194(v143, v137);
                v138 = v205;
                v144 = sub_1AF449CB8(v140);
                if ((v142 & 1) != (v145 & 1))
                {
                  sub_1AFDFF1A8();
                  __break(1u);
                  goto LABEL_164;
                }

                v139 = v144;
              }

              *(v134 + 216) = v138;

              v146 = *(v134 + 216);
              if ((v142 & 1) == 0)
              {
                sub_1AF6338E8(*(v136 + 16), &v205);
                v147 = v206;
                v146[(v139 >> 6) + 8] |= 1 << v139;
                *(v146[6] + 8 * v139) = v186;
                v148 = v146[7] + 24 * v139;
                *v148 = v205;
                *(v148 + 16) = v147;
                ++v146[2];
              }

              v149 = (v146[7] + 24 * v139);
              v150 = *v149;
              v151 = swift_isUniquelyReferenced_nonNull_native();
              *v149 = v150;
              if ((v151 & 1) == 0)
              {
                v150 = sub_1AF4230FC(0, *(v150 + 2) + 1, 1, v150);
                *v149 = v150;
              }

              v153 = *(v150 + 2);
              v152 = *(v150 + 3);
              v154 = v191;
              if (v153 >= v152 >> 1)
              {
                v165 = sub_1AF4230FC(v152 > 1, v153 + 1, 1, v150);
                v154 = v191;
                v150 = v165;
                *v149 = v165;
              }

              *(v150 + 2) = v153 + 1;
              *&v150[16 * v153 + 32] = v154;

              swift_unownedRetainStrong();

              swift_unownedRetainStrong();

              a1 = v183;
              if (swift_unknownObjectUnownedLoadStrong())
              {
                swift_unknownObjectRelease();
              }

              v131 = v186;
              if (*(v183 + 24) == 1)
              {
                swift_unownedRetainStrong();
                *&v205 = v191;
                *(&v205 + 1) = v134;
                v206 = v186;
                *&v207 = v189;
                *(&v207 + 1) = v134;
                BYTE8(v208) = 8;
                v155 = *(v134 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
                if (v155 && (*(v155 + 81) & 1) != 0 && *(v155 + 24) && swift_weakLoadStrong())
                {

                  swift_unknownObjectRetain();

                  sub_1AF6CAF24(&v205, &v200);
                  v156 = *(v155 + 16);
                  v157 = swift_isUniquelyReferenced_nonNull_native();
                  *(v155 + 16) = v156;
                  if ((v157 & 1) == 0)
                  {
                    v156 = sub_1AF4221C8(0, *(v156 + 2) + 1, 1, v156);
                    *(v155 + 16) = v156;
                  }

                  v159 = *(v156 + 2);
                  v158 = *(v156 + 3);
                  if (v159 >= v158 >> 1)
                  {
                    *(v155 + 16) = sub_1AF4221C8(v158 > 1, v159 + 1, 1, v156);
                  }

                  swift_unknownObjectRelease();
                  sub_1AF57955C(&v205);
                  v160 = *(v155 + 16);
                  *(v160 + 16) = v159 + 1;
                  v161 = (v160 + (v159 << 6));
                  v162 = v200;
                  v163 = v201;
                  v164 = v202[0];
                  *(v161 + 73) = *(v202 + 9);
                  v161[3] = v163;
                  v161[4] = v164;
                  v161[2] = v162;
                  *(v155 + 16) = v160;

                  v131 = v186;
                }

                else
                {

                  sub_1AF57955C(&v205);
                }
              }
            }
          }

          v130 += 2;
          --v129;
        }

        while (v129);
      }

      v108 = v181 + 1;
    }

    while (v181 + 1 != v177);
  }
}

unint64_t sub_1AF6C8594(unint64_t result)
{
  v2 = result;
  v3 = HIDWORD(result);
  if (HIDWORD(result) || result != -1)
  {
    v4 = *v1;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      sub_1AFADF970(v2);
      swift_unknownObjectRelease();
    }

    swift_unownedRetainStrong();
    if ((v2 & 0x80000000) == 0 && v2 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v2);
      if (v3 == 0xFFFFFFFF || v5[2] == v3)
      {
        v6 = *(v5 + 2);
        v7 = *(*(v4 + 144) + 8 * *v5 + 32);
        if (*(v7 + 232) <= v6 && *(v7 + 240) > v6)
        {
          v8 = **(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v9 = *(v7 + 344);

          os_unfair_lock_lock(v9);
          ecs_stack_allocator_push_snapshot(*(v8 + 32));

          sub_1AF65CFA0(v8, v7, v6);

          ecs_stack_allocator_pop_snapshot(*(v8 + 32));
          os_unfair_lock_unlock(*(v7 + 344));
        }
      }
    }

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v1 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v10[0] = v2;
      v10[1] = v3;
      v11 = 4;
      sub_1AF6C67D0(v10);

      return sub_1AF57955C(v10);
    }
  }

  return result;
}

unint64_t sub_1AF6C8780(unint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = HIDWORD(result);
  if (HIDWORD(result) || result != -1)
  {
    v5 = *v1;
    swift_unownedRetainStrong();
    sub_1AF678B44(v3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v2 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v6[0] = v3;
      v6[1] = v4;
      v7 = v5;
      v8 = 10;
      sub_1AF6C67D0(v6);

      return sub_1AF57955C(v6);
    }
  }

  return result;
}

uint64_t sub_1AF6C8850(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 != 0xFFFFFFFF)
  {
    v4 = v3;
    v7 = result;
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v21 = 0;
    v8 = swift_unownedRetainStrong();
    MEMORY[0x1EEE9AC00](v8, v9);
    if (sub_1AF6411A4(v7) >= 1)
    {
      v10 = sub_1AF6824B0(v7, a2, a3);
      if (v10)
      {
        sub_1AF683850(v7, a2, a3, v10, sub_1AF6CB128);
      }
    }

    swift_unownedRetainStrong();

    if (v21 == 1)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        if ((*(a2 + 24))(v7, a2))
        {
          v13 = v12 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
          v14 = type metadata accessor for ScriptingConfiguration();
          ++*(v13 + *(v14 + 36));
        }

        swift_unknownObjectRelease();
      }

      if (*(v4 + 24) == 1)
      {
        sub_1AF6CB1B8(v22, &v17);
        if (v18)
        {
          sub_1AF0FBA54(&v17, v19);
          swift_unownedRetainStrong();
          v15 = v20;
          v16 = sub_1AF441150(v19, v20);
          sub_1AF6C3810(v16, a3, 0, v15, &v17);
          sub_1AF6C67D0(&v17);

          sub_1AF57955C(&v17);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
        }

        else
        {
          sub_1AF63A7E8(&v17, &qword_1EB634220, &qword_1ED72FFF0);
        }
      }
    }

    return sub_1AF63A7E8(v22, &qword_1EB634220, &qword_1ED72FFF0);
  }

  return result;
}

void *sub_1AF6C8AC0(void *result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    sub_1AF441150(result, result[3]);
    DynamicType = swift_getDynamicType();
    v8 = *(v5 + 32);
    v9 = *v2;
    swift_unownedRetainStrong();
    v21 = sub_1AF67CACC(DynamicType, *(v8 + 8), a2);

    swift_unownedRetainStrong();

    swift_unownedRetainStrong();
    if ((a2 & 0x80000000) == 0 && a2 < *(v9 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v10 = (*(v9 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
      if (v6 == 0xFFFFFFFF || v10[2] == v6)
      {
        v11 = *(v10 + 2);
        v12 = *(*(v9 + 144) + 8 * *v10 + 32);
        if (*(v12 + 232) <= v11 && *(v12 + 240) > v11)
        {
          v19 = *(v10 + 2);
          v20 = **(v9 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v18 = *(v12 + 344);

          os_unfair_lock_lock(v18);
          ecs_stack_allocator_push_snapshot(*(v20 + 32));

          sub_1AF682880(v20, v12, v19, DynamicType, v8, v9);

          ecs_stack_allocator_pop_snapshot(*(v20 + 32));
          os_unfair_lock_unlock(*(v12 + 344));
        }
      }
    }

    if (sub_1AF6411A4(DynamicType) > 0)
    {
      v13 = swift_unownedRetainStrong();
      MEMORY[0x1EEE9AC00](v13, v14);
      sub_1AF683E8C(DynamicType, v8, a2, sub_1AF6CAE14);
    }

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      v15 = result;
      if ((*(v8 + 24))(DynamicType, v8))
      {
        v16 = v15 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
        v17 = type metadata accessor for ScriptingConfiguration();
        ++*&v16[*(v17 + 36)];
      }

      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v22[0] = a2;
      v22[1] = v6;
      v23 = v9;
      v25 = &type metadata for ExistentialComponentWriter;
      v26 = &off_1F2536150;
      v24 = swift_allocObject();
      sub_1AF441194(v5, v24 + 16);
      *(v24 + 56) = !v21;
      v27 = 12;
      sub_1AF6C67D0(v22);

      return sub_1AF57955C(v22);
    }
  }

  return result;
}

uint64_t sub_1AF6C8E08(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_1AF85462C(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 24) = v8;

  v6 = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  sub_1AF85462C(a1, a2, v6);
  *(v2 + 32) = v9;
}

id sub_1AF6C8EC8(uint64_t a1)
{
  v2 = v1;
  v29 = v1[2];
  [v29 lock];
  if (*(v1[3] + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v31 = v1[3];
    v1[3] = 0x8000000000000000;
    sub_1AF6CAEA0();
    sub_1AFDFE4B8();
    v1[3] = v31;
  }

  if (*(v1[4] + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v32 = v1[4];
    v1[4] = 0x8000000000000000;
    sub_1AF6CAEA0();
    sub_1AFDFE4B8();
    v1[4] = v32;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_14:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
    v11 = *(*(a1 + 48) + v10);
    v30 = *(*(a1 + 56) + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v2[3];
    v2[3] = 0x8000000000000000;
    v14 = sub_1AF449D3C(v11);
    v16 = v15;
    v17 = v13[2] + ((v15 & 1) == 0);
    if (v13[3] >= v17)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = v14;
        sub_1AF8489C0();
        v14 = v26;
      }
    }

    else
    {
      sub_1AF833F28(v17, isUniquelyReferenced_nonNull_native);
      v14 = sub_1AF449D3C(v11);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_32;
      }
    }

    if (v16)
    {
      *(v13[7] + 8 * v14) = v30;
    }

    else
    {
      v13[(v14 >> 6) + 8] |= 1 << v14;
      *(v13[6] + 8 * v14) = v11;
      *(v13[7] + 8 * v14) = v30;
      ++v13[2];
    }

    v2[3] = v13;

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = v2[4];
    v2[4] = 0x8000000000000000;
    v21 = sub_1AF449D3C(v30 | (HIDWORD(v30) << 32));
    v23 = v22;
    v24 = v20[2] + ((v22 & 1) == 0);
    if (v20[3] >= v24)
    {
      if ((v19 & 1) == 0)
      {
        v27 = v21;
        sub_1AF8489C0();
        v21 = v27;
      }
    }

    else
    {
      sub_1AF833F28(v24, v19);
      v21 = sub_1AF449D3C(v30 | (HIDWORD(v30) << 32));
      if ((v23 & 1) != (v25 & 1))
      {
LABEL_32:
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    if (v23)
    {
      *(v20[7] + 8 * v21) = v11;
    }

    else
    {
      v20[(v21 >> 6) + 8] |= 1 << v21;
      *(v20[6] + 8 * v21) = v30;
      *(v20[7] + 8 * v21) = v11;
      ++v20[2];
    }

    v6 &= v6 - 1;
    v2[4] = v20;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      break;
    }

    v6 = *(a1 + 8 * v8++ + 72);
    if (v6)
    {
      v8 = v9;
      goto LABEL_14;
    }
  }

  return [v29 unlock];
}

uint64_t sub_1AF6C925C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6C92C8(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(v2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
    [*(result + 16) lock];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v7 == 1)
    {
      v11 = *(v6 + 32);
      sub_1AF85462C(a2, a1, isUniquelyReferenced_nonNull_native);
      *(v6 + 32) = v11;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v6 + 24);
      sub_1AF85462C(a1, a2, v9);
      *(v6 + 24) = v12;
    }

    else
    {
      v13 = *(v6 + 24);
      sub_1AF85462C(a2, a1, isUniquelyReferenced_nonNull_native);
      *(v6 + 24) = v13;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v6 + 32);
      sub_1AF85462C(a1, a2, v10);
      *(v6 + 32) = v14;
    }

    [*(v6 + 16) unlock];
  }

  return result;
}

uint64_t sub_1AF6C9424(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(v2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
    v7 = result;
    [*(result + 16) lock];
    v9 = 24;
    if (v6)
    {
      v10 = 32;
    }

    else
    {
      v10 = 24;
    }

    if (!v6)
    {
      v9 = 32;
    }

    sub_1AF6C94E4(v7 + v10, (v7 + v9), a1, a2, v8);
    [*(v7 + 16) unlock];
  }

  return result;
}

unint64_t sub_1AF6C94E4(unint64_t result, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v8 = result;
    v9 = 0;
    v27 = a3 + 32;
    v10 = a4 + 32;
    while (1)
    {
      if (v9 == *(a4 + 16))
      {
        return result;
      }

      a5.n128_u64[0] = *(v27 + 8 * v9);
      v28 = a5;
      v29 = *(v10 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v8;
      v30 = *v8;
      v13 = sub_1AF449D3C(v28.n128_u32[0] | (v28.n128_u32[1] << 32));
      v15 = v14;
      v16 = v12[2] + ((v14 & 1) == 0);
      if (v12[3] < v16)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v19 = v13;
      sub_1AF8489C0();
      v13 = v19;
      v18 = v30;
      if (v15)
      {
LABEL_11:
        *(v18[7] + 8 * v13) = v29;
        goto LABEL_14;
      }

LABEL_13:
      v18[(v13 >> 6) + 8] |= 1 << v13;
      *(v18[6] + 8 * v13) = v28.n128_u64[0];
      *(v18[7] + 8 * v13) = v29;
      ++v18[2];
LABEL_14:
      *v8 = v18;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a2;
      v31 = *a2;
      result = sub_1AF449D3C(v29 | (HIDWORD(v29) << 32));
      v23 = v22;
      v24 = v21[2] + ((v22 & 1) == 0);
      if (v21[3] >= v24)
      {
        if ((v20 & 1) == 0)
        {
          v26 = result;
          sub_1AF8489C0();
          result = v26;
        }
      }

      else
      {
        sub_1AF833F28(v24, v20);
        result = sub_1AF449D3C(v29 | (HIDWORD(v29) << 32));
        if ((v23 & 1) != (v25 & 1))
        {
LABEL_22:
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }
      }

      if (v23)
      {
        a5.n128_u64[1] = v28.n128_u64[1];
        *(v31[7] + 8 * result) = v28.n128_u64[0];
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        *(v31[6] + 8 * result) = v29;
        a5.n128_u64[1] = v28.n128_u64[1];
        *(v31[7] + 8 * result) = v28.n128_u64[0];
        ++v31[2];
      }

      ++v9;
      *a2 = v31;
      if (v5 == v9)
      {
        return result;
      }
    }

    sub_1AF833F28(v16, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AF449D3C(v28.n128_u32[0] | (v28.n128_u32[1] << 32));
    if ((v15 & 1) != (v17 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    v18 = v30;
    if (v15)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1AF6C9764(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_1AF449D3C(a3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    sub_1AF850D3C(a3);
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  return sub_1AF850D3C(v8);
}

unint64_t sub_1AF6C97E0(uint64_t a1)
{
  v2 = 0xFFFFFFFFLL;
  if (a1 != 0xFFFFFFFFLL)
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      v3 = 0;
      v2 = 0xFFFFFFFFLL;
      return v3 | v2;
    }

    v6 = Strong;
    v7 = *(v1 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
    [*(Strong + 16) lock];
    if (v7 == 1)
    {
      v8 = *(v6 + 32);
      if (!*(v8 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = *(v6 + 24);
      if (!*(v8 + 16))
      {
        goto LABEL_11;
      }
    }

    v9 = sub_1AF449D3C(a1);
    if (v10)
    {
      v11 = (*(v8 + 56) + 8 * v9);
      v2 = *v11;
      v3 = v11[1] << 32;
LABEL_12:
      [*(v6 + 16) unlock];

      return v3 | v2;
    }

LABEL_11:
    v3 = 0;
    v2 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v3 = 0;
  return v3 | v2;
}

uint64_t sub_1AF6C98C4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
    v3 = Strong;
    [*(Strong + 16) lock];
    v4 = *(v3 + 16);
    v5 = 24;
    if (v2)
    {
      v5 = 32;
    }

    v6 = *(v3 + v5);

    [v4 unlock];
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for RemapContext();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  v9 = sub_1AF42B590(v8);

  *(v7 + 24) = v6;
  *(v7 + 32) = v9;
  *(v7 + 16) = 0;
  return v7;
}

id sub_1AF6C99E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultRemapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t destroy for ReplicationEvent(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 >= 0xF)
  {
    v1 = *result + 15;
  }

  if (v1 <= 4)
  {
    if (v1 > 1)
    {
      if (v1 != 2)
      {
        if (v1 != 3)
        {
          return result;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (!v1)
      {
        goto LABEL_25;
      }

      if (v1 != 1)
      {
        return result;
      }
    }

LABEL_25:
  }

  if (v1 > 11)
  {
    if (v1 == 12)
    {
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result + 16);
    }

    if (v1 != 14)
    {
      return result;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result);
  }

  else if (v1 != 5)
  {
    if (v1 != 11)
    {
      return result;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result + 16);
  }
}

uint64_t initializeWithCopy for ReplicationEvent(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2 >= 0xF)
  {
    v2 = *a2 + 15;
  }

  switch(v2)
  {
    case 0u:
      v3 = *(a2 + 8);
      *result = *a2;
      *(result + 8) = v3;
      *(result + 56) = 0;
      v4 = result;

      goto LABEL_18;
    case 1u:
      v19 = *(a2 + 8);
      *result = *a2;
      *(result + 8) = v19;
      *(result + 16) = *(a2 + 16);
      *(result + 20) = *(a2 + 20);
      v15 = 1;
      goto LABEL_15;
    case 2u:
      *result = *a2;
      v14 = *(a2 + 24);
      *(result + 16) = *(a2 + 16);
      *(result + 24) = v14;
      *(result + 32) = *(a2 + 32);
      *(result + 36) = *(a2 + 36);
      *(result + 40) = *(a2 + 40);
      v15 = 2;
LABEL_15:
      *(result + 56) = v15;
      v20 = result;

      return v20;
    case 3u:
      v17 = *(a2 + 8);
      *result = *a2;
      *(result + 8) = v17;
      *(result + 16) = *(a2 + 16);
      *(result + 24) = *(a2 + 24);
      *(result + 28) = *(a2 + 28);
      *(result + 32) = *(a2 + 32);
      *(result + 40) = *(a2 + 40);
      *(result + 56) = 3;
      v18 = result;

      return v18;
    case 4u:
      *result = *a2;
      v10 = 4;
      goto LABEL_23;
    case 5u:
      *result = *a2;
      *(result + 8) = *(a2 + 8);
      *(result + 56) = 5;
      v4 = result;
      goto LABEL_17;
    case 6u:
      *result = *a2;
      *(result + 8) = *(a2 + 8);
      v10 = 6;
      goto LABEL_23;
    case 7u:
      *result = *a2;
      *(result + 16) = *(a2 + 16);
      v10 = 7;
      goto LABEL_23;
    case 8u:
      v22 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v22;
      *(result + 32) = *(a2 + 32);
      v10 = 8;
      goto LABEL_23;
    case 9u:
      v13 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v13;
      *(result + 32) = *(a2 + 32);
      v10 = 9;
      goto LABEL_23;
    case 0xAu:
      *result = *a2;
      v10 = 10;
      goto LABEL_23;
    case 0xBu:
      *result = *a2;
      v8 = *(a2 + 40);
      *(result + 40) = v8;
      v9 = result;
      (**(v8 - 8))(result + 16, a2 + 16);
      result = v9;
      *(v9 + 56) = 11;
      return result;
    case 0xCu:
      *result = *a2;
      v11 = *(a2 + 40);
      *(result + 40) = v11;
      v12 = result;
      (**(v11 - 8))(result + 16, a2 + 16);
      result = v12;
      *(v12 + 56) = 12;
      return result;
    case 0xDu:
      v21 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v21;
      v10 = 13;
LABEL_23:
      *(result + 56) = v10;
      break;
    case 0xEu:
      v5 = *(a2 + 24);
      *(result + 24) = v5;
      v4 = result;
      (**(v5 - 8))();
      v7 = *(a2 + 48);
      *(v4 + 40) = *(a2 + 40);
      *(v4 + 48) = v7;
      *(v4 + 56) = 14;
LABEL_17:

LABEL_18:
      result = v4;
      break;
    default:
      v16 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v16;
      *(result + 32) = *(a2 + 32);
      *(result + 41) = *(a2 + 41);
      break;
  }

  return result;
}

uint64_t assignWithCopy for ReplicationEvent(uint64_t a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 56);
  if (v4 >= 0xF)
  {
    v4 = *a1 + 15;
  }

  if (v4 > 4)
  {
    if (v4 > 11)
    {
      if (v4 == 12)
      {
LABEL_20:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1 + 16);
        goto LABEL_24;
      }

      if (v4 != 14)
      {
        goto LABEL_24;
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    }

    else if (v4 != 5)
    {
      if (v4 != 11)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_24;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (!v4)
  {
    goto LABEL_23;
  }

  if (v4 == 1)
  {

    goto LABEL_23;
  }

LABEL_24:
  v5 = *(a2 + 56);
  if (v5 >= 0xF)
  {
    v5 = *a2 + 15;
  }

  switch(v5)
  {
    case 0u:
      *a1 = *a2;
      *(a1 + 8) = a2[1];
      *(a1 + 56) = 0;

      return a1;
    case 1u:
      *a1 = *a2;
      *(a1 + 8) = a2[1];
      v21 = *(a2 + 4);
      *(a1 + 20) = *(a2 + 20);
      *(a1 + 16) = v21;
      v15 = 1;
      goto LABEL_38;
    case 2u:
      *a1 = *a2;
      *(a1 + 16) = a2[2];
      *(a1 + 24) = a2[3];
      *(a1 + 32) = *(a2 + 32);
      v14 = *(a2 + 9);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 36) = v14;
      v15 = 2;
LABEL_38:
      *(a1 + 56) = v15;

      return a1;
    case 3u:
      *a1 = *a2;
      *(a1 + 8) = a2[1];
      *(a1 + 16) = a2[2];
      *(a1 + 24) = *(a2 + 24);
      v19 = *(a2 + 7);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 28) = v19;
      *(a1 + 40) = a2[5];
      *(a1 + 56) = 3;

      return a1;
    case 4u:
      *a1 = *a2;
      v10 = 4;
      goto LABEL_45;
    case 5u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v8 = 5;
      goto LABEL_40;
    case 6u:
      v23 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v23;
      v10 = 6;
      goto LABEL_45;
    case 7u:
      v20 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v20;
      v10 = 7;
      goto LABEL_45;
    case 8u:
      v24 = *a2;
      v25 = *(a2 + 2);
      *(a1 + 16) = *(a2 + 1);
      *(a1 + 32) = v25;
      *a1 = v24;
      v10 = 8;
      goto LABEL_45;
    case 9u:
      v12 = *a2;
      v13 = *(a2 + 2);
      *(a1 + 16) = *(a2 + 1);
      *(a1 + 32) = v13;
      *a1 = v12;
      v10 = 9;
      goto LABEL_45;
    case 0xAu:
      *a1 = *a2;
      v10 = 10;
      goto LABEL_45;
    case 0xBu:
      *a1 = *a2;
      v9 = a2[5];
      *(a1 + 40) = v9;
      *(a1 + 48) = a2[6];
      (**(v9 - 8))(a1 + 16, (a2 + 2));
      v10 = 11;
      goto LABEL_45;
    case 0xCu:
      *a1 = *a2;
      v11 = a2[5];
      *(a1 + 40) = v11;
      *(a1 + 48) = a2[6];
      (**(v11 - 8))(a1 + 16, (a2 + 2));
      v10 = 12;
      goto LABEL_45;
    case 0xDu:
      v22 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v22;
      v10 = 13;
LABEL_45:
      *(a1 + 56) = v10;
      break;
    case 0xEu:
      v6 = a2[3];
      *(a1 + 24) = v6;
      *(a1 + 32) = a2[4];
      (**(v6 - 8))(a1, a2);
      v7 = a2[6];
      *(a1 + 40) = a2[5];
      *(a1 + 48) = v7;
      v8 = 14;
LABEL_40:
      *(a1 + 56) = v8;

      break;
    default:
      v16 = *a2;
      v17 = *(a2 + 1);
      v18 = *(a2 + 2);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v17;
      *(a1 + 32) = v18;
      *a1 = v16;
      break;
  }

  return a1;
}

__n128 initializeWithTake for ReplicationEvent(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for ReplicationEvent(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(result + 56);
  if (v3 >= 0xF)
  {
    v3 = *result + 15;
  }

  if (v3 > 4)
  {
    if (v3 > 11)
    {
      if (v3 == 12)
      {
LABEL_19:
        v4 = result;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result + 16);
LABEL_25:
        result = v4;
        goto LABEL_26;
      }

      if (v3 != 14)
      {
        goto LABEL_26;
      }

      v4 = result;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result);
    }

    else
    {
      if (v3 != 5)
      {
        if (v3 != 11)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v4 = result;
    }

    goto LABEL_25;
  }

  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    v4 = result;
LABEL_24:

    goto LABEL_25;
  }

  if (v3 == 2)
  {
LABEL_23:
    v4 = result;

    goto LABEL_24;
  }

  if (v3 == 3)
  {
    v4 = result;

    goto LABEL_24;
  }

LABEL_26:
  v5 = *(a2 + 56);
  if (v5 >= 0xF)
  {
    v5 = *a2 + 15;
  }

  switch(v5)
  {
    case 0u:
      *result = *a2;
      *(result + 56) = 0;
      return result;
    case 1u:
      *result = *a2;
      *(result + 13) = *(a2 + 13);
      v7 = 1;
      goto LABEL_45;
    case 2u:
      v11 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v11;
      *(result + 25) = *(a2 + 25);
      v7 = 2;
      goto LABEL_45;
    case 3u:
      v13 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v13;
      *(result + 32) = *(a2 + 32);
      v7 = 3;
      goto LABEL_45;
    case 4u:
      *result = *a2;
      v7 = 4;
      goto LABEL_45;
    case 5u:
      *result = *a2;
      *(result + 16) = *(a2 + 16);
      v7 = 5;
      goto LABEL_45;
    case 6u:
      *result = *a2;
      *(result + 8) = *(a2 + 8);
      v7 = 6;
      goto LABEL_45;
    case 7u:
      *result = *a2;
      *(result + 16) = *(a2 + 16);
      v7 = 7;
      goto LABEL_45;
    case 8u:
      v15 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v15;
      *(result + 32) = *(a2 + 32);
      v7 = 8;
      goto LABEL_45;
    case 9u:
      v10 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v10;
      *(result + 32) = *(a2 + 32);
      v7 = 9;
      goto LABEL_45;
    case 0xAu:
      *result = *a2;
      v7 = 10;
      goto LABEL_45;
    case 0xBu:
      v8 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v8;
      *(result + 32) = *(a2 + 32);
      *(result + 48) = *(a2 + 48);
      v7 = 11;
      goto LABEL_45;
    case 0xCu:
      v9 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v9;
      *(result + 32) = *(a2 + 32);
      *(result + 48) = *(a2 + 48);
      v7 = 12;
      goto LABEL_45;
    case 0xDu:
      v14 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v14;
      v7 = 13;
      goto LABEL_45;
    case 0xEu:
      v6 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v6;
      *(result + 32) = *(a2 + 32);
      *(result + 48) = *(a2 + 48);
      v7 = 14;
LABEL_45:
      *(result + 56) = v7;
      break;
    default:
      v12 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v12;
      *(result + 32) = *(a2 + 32);
      *(result + 41) = *(a2 + 41);
      break;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicationEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 57))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0x10)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReplicationEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF6CA648(uint64_t a1)
{
  result = *(a1 + 56);
  if (result >= 0xF)
  {
    return (*a1 + 15);
  }

  return result;
}

uint64_t sub_1AF6CA664(uint64_t result, unsigned int a2)
{
  if (a2 > 0xE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 15;
    LOBYTE(a2) = 15;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t destroy for ReplicationStreamBuilder()
{
  swift_unownedRelease();

  return swift_unknownObjectUnownedDestroy();
}

uint64_t initializeWithCopy for ReplicationStreamBuilder(uint64_t a1, uint64_t a2)
{
  *a1 = swift_unownedRetain();
  swift_unknownObjectUnownedCopyInit();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for ReplicationStreamBuilder(uint64_t a1, uint64_t a2)
{
  *a1 = swift_unownedRetain();
  swift_unownedRelease();
  swift_unknownObjectUnownedCopyAssign();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t initializeWithTake for ReplicationStreamBuilder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectUnownedTakeInit();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for ReplicationStreamBuilder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unownedRelease();
  swift_unknownObjectUnownedTakeAssign();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ReplicationStreamBuilder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 16) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 8) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicationStreamBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = 1;
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF6CA8DC(char **a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  result = *(*a1 + 2);
  if (result)
  {
    v6 = 0;
    v7 = 0;
    v8 = HIDWORD(a2);
    v9 = HIDWORD(a3);
    while (1)
    {
      v10 = *&v4[v6 + 32] == a2 && *&v4[v6 + 36] == HIDWORD(a2);
      v11 = v10 && *&v4[v6 + 40] == a3;
      if (v11 && *&v4[v6 + 44] == HIDWORD(a3))
      {
        break;
      }

      ++v7;
      v6 += 16;
      if (result == v7)
      {
        return result;
      }
    }

    v13 = a2;
    v14 = a3;
    v15 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AFC0DAA8(v4);
    }

    v16 = *(v4 + 2);
    if (v16 - 1 != v7)
    {
      v17 = v7 + 1;
      v18 = &v4[v6 + 48];
      do
      {
        v19 = *(v18 + 1);
        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (*v18 != v13 || v19 != v8 || v21 != v14 || v20 != v9)
        {
          if (v17 != v7)
          {
            v25 = &v4[16 * v7 + 32];
            v26 = *v25;
            *v25 = *v18;
            *(v25 + 4) = v19;
            *(v25 + 8) = v21;
            *(v25 + 12) = v20;
            *v18 = v26;
            v16 = *(v4 + 2);
          }

          ++v7;
        }

        ++v17;
        v18 += 16;
      }

      while (v17 != v16);
    }

    *v15 = v4;
    return v7;
  }

  return result;
}

uint64_t sub_1AF6CAA30(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v11 = *a3;
    swift_unownedRetainStrong();
    v12 = sub_1AF6824B0(&type metadata for Children, &off_1F252A4A0, a2);
    if (v12)
    {
      v28 = *v12;

      swift_getAtKeyPath();

      v13 = v35;
      v14 = v35[2];
      if (v14)
      {
        v15 = 0;
        v16 = &v35[4] + 1;
        while (*(v16 - 1) != a4 || *v16 != HIDWORD(a4))
        {
          v16 += 2;
          if (*&v14 == ++v15)
          {
            goto LABEL_11;
          }
        }

        v22 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1AFC0DA44(v35);
        }

        v23 = v22[2];
        v24 = (*&v23 - 1);
        memmove(&v22[v15 + 4], &v22[v15 + 5], 8 * (*&v23 - v15) - 8);
        v22[2] = v24;
      }

      else
      {
LABEL_11:
        v18 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

        sub_1AFDFE218();

        v29 = 0xE700000000000000;
        v19 = sub_1AF656F38();
        MEMORY[0x1B2718AE0](v19);

        MEMORY[0x1B2718AE0](0x6F6E2073656F6420, 0xEF20657661682074);
        v20 = sub_1AF656F38();
        MEMORY[0x1B2718AE0](v20);

        MEMORY[0x1B2718AE0](0x6C69686320736120, 0xE900000000000064);
        v21 = sub_1AFDFDA08();
        v28 = 0;
        (*(*v18 + 88))(v21, &v28, 0x20797469746E45, 0xE700000000000000);

        v22 = v13;
      }

      if (sub_1AFB7BCF0(v13, v22))
      {
        goto LABEL_25;
      }

      swift_unownedRetainStrong();

      if (swift_unknownObjectUnownedLoadStrong())
      {
        swift_unknownObjectRelease();
      }

      v25 = swift_unownedRetainStrong();
      v28 = v22;
      MEMORY[0x1EEE9AC00](v25, v26);
      sub_1AFC3E260(a2, sub_1AF6CADF8);

      if (swift_unknownObjectUnownedLoadStrong())
      {
        swift_unknownObjectRelease();
      }

      if (*(a3 + 24) != 1)
      {
LABEL_25:
      }

      else
      {
        swift_unownedRetainStrong();
        v28 = __PAIR64__(v10, a2);
        v29 = v11;
        sub_1AF57C264();
        v32 = v27;
        v33 = &off_1F2536190;
        v30 = v9;
        v31 = v22;
        v34 = 11;

        sub_1AF6C67D0(&v28);

        sub_1AF57955C(&v28);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF6CAE14(uint64_t a1)
{
  v3 = *(v1 + 16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF441194(v3, a1);
}

void sub_1AF6CAEA0()
{
  if (!qword_1EB63D630)
  {
    sub_1AF43B694();
    v0 = sub_1AFDFE4C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D630);
    }
  }
}

uint64_t sub_1AF6CAF5C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v10 = 0;
    v9 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if ((a1 & 2) != 0)
    {
      v10 = v9 != 0;
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    if (v9)
    {
      v10 = *(v9 + 80);
LABEL_8:
      swift_unknownObjectWeakLoadStrong();
      v9 = *(v9 + 56);
      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_10:
  swift_unknownObjectUnownedInit();
  v14[0] = a2;
  v14[2] = v9;
  swift_unknownObjectUnownedAssign();
  swift_unownedRetain();
  swift_unknownObjectRelease();
  v15 = v10;
  sub_1AFCE0DEC(a3, a4, &v16);
  if (v4)
  {
    sub_1AF579490(v14);
    if (v10)
    {
      if ((a1 & 8) != 0)
      {
        v11 = 1;
      }

      else if ((a1 & 4) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = [objc_opt_self() immediateMode] ^ 1;
      }

      sub_1AF6C5E30(v11);
    }
  }

  else
  {
    sub_1AF579490(v14);
    if (v10)
    {
      if ((a1 & 8) != 0)
      {
        v12 = 1;
      }

      else if ((a1 & 4) != 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = [objc_opt_self() immediateMode] ^ 1;
      }

      sub_1AF6C5E30(v12);
    }

    return v16;
  }
}

uint64_t sub_1AF6CB128(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  result = (*(v1 + 16))();
  *v3 = 1;
  if (*(v4 + 24) == 1)
  {
    sub_1AF63A7E8(v5, &qword_1EB634220, &qword_1ED72FFF0);
    return sub_1AF441194(a1, v5);
  }

  return result;
}

uint64_t sub_1AF6CB1B8(uint64_t a1, uint64_t a2)
{
  sub_1AF63A5E4(0, &qword_1EB634220, &qword_1ED72FFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF6CB280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF6CB298()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1AF6CB2E0()
{
  if (!qword_1ED72F9A0)
  {
    sub_1AFDFCA88();
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72F9A0);
    }
  }
}

uint64_t sub_1AF6CB338(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithCopy for ExistentialComponentWriter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for ExistentialComponentWriter(uint64_t a1, uint64_t a2)
{
  sub_1AF6156AC(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ExistentialComponentWriter(uint64_t a1, uint64_t a2)
{
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for ExistentialComponentWriter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ExistentialComponentWriter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF6CB500()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1AF6CB598(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 1) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t sub_1AF6CB668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *(*(v5 + 48) + a1) = *(*(v5 + 48) + a2);
  return a1;
}

uint64_t sub_1AF6CB6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *(*(v5 + 40) + a1) = *(*(v5 + 40) + a2);
  return a1;
}

uint64_t sub_1AF6CB738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *(*(v5 + 32) + a1) = *(*(v5 + 32) + a2);
  return a1;
}

uint64_t sub_1AF6CB7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *(*(v5 + 24) + a1) = *(*(v5 + 24) + a2);
  return a1;
}

uint64_t sub_1AF6CB808(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_1AF6CB97C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_1AF6CBBA8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1AF6CBC48(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v10 = a2 + v6 + 8;
    v11 = *(v5 + 16);

    v11((v3 + v6 + 8) & ~v6, v10 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t sub_1AF6CBD54(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 24) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

void *sub_1AF6CBDC8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(*(v4 - 8) + 80);
  v7 = a2 + v6 + 8;

  v5((a1 + v6 + 8) & ~v6, v7 & ~v6, v4);
  return a1;
}

void *sub_1AF6CBE58(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 24) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void *sub_1AF6CBEE8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *sub_1AF6CBF58(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 24) - 8);
  (*(v6 + 40))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t sub_1AF6CBFE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1AF6CC164(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

id sub_1AF6CC3F8(uint64_t a1, uint64_t a2)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(v2 + 120) == 1)
  {

    return os_unfair_recursive_lock_unlock();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = *(v2 + 72);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 72) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1AF4221DC(0, v7[2] + 1, 1, v7);
      *(v2 + 72) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_1AF4221DC(v9 > 1, v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = sub_1AF6D25EC;
    v11[5] = v6;
    *(v2 + 72) = v7;
    os_unfair_recursive_lock_unlock();

    return sub_1AF6CF09C();
  }
}

uint64_t sub_1AF6CC530(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AF65FDC4(a2, a3);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v8 = v6(&runtime_thread_is_locked);
  --*v8;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CC618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v7 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v9 = objc_autoreleasePoolPush();
  sub_1AF6F843C(a2, a3);
  if (v3)
  {
    objc_autoreleasePoolPop(v9);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v9);
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v10 = v7(&runtime_thread_is_locked);
    --*v10;
    pthread_mutex_unlock(*(a1 + 64));
  }
}

uint64_t sub_1AF6CC728(uint64_t a1)
{
  pthread_mutex_lock(*(a1 + 64));
  v2 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  if (qword_1ED72E180 != -1)
  {
    swift_once();
  }

  sub_1AF707598();
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v4 = v2(&runtime_thread_is_locked);
  --*v4;
  return pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CC818(uint64_t a1, char a2, void *a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC78638(a2 & 1, a3);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v8 = v6(&runtime_thread_is_locked);
  --*v8;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CC8FC(uint64_t a1, _BYTE *a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC7C4B8();
  if (a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4])
  {
    v6 = 0x200000000;
  }

  else
  {
    v6 = *&a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | ((*&a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] == 0) << 33);
  }

  sub_1AF6F92A4(v6);

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v7 = v4(&runtime_thread_is_locked);
  --*v7;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CCA00(uint64_t a1, _BYTE *a2, char a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v8 = sub_1AFC7BFF8();
  if (v9)
  {
    sub_1AF5AADE8((a3 & 1) == 0, v8, v9);
  }

  else
  {
    v10 = a3 & 1;
    a2[OBJC_IVAR____TtC3VFX9VFXEffect__enabled] = v10;
    if (a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4] != 1)
    {
      v11 = *&a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID];
      sub_1AFC7C4B8();

      sub_1AF662AEC(v12, v10, v12, v11);
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v13 = v6(&runtime_thread_is_locked);
  --*v13;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CCB58(uint64_t a1, _BYTE *a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC7C4B8();
  sub_1AF6FE0E4(*&a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | (a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4] << 32), *&a2[OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity], a2[OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity + 8], a2[OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned]);

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v6 = v4(&runtime_thread_is_locked);
  --*v6;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CCC7C(uint64_t a1, void *a2, char a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC894C8(a2, a3 & 1);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v8 = v6(&runtime_thread_is_locked);
  --*v8;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CCDA0(uint64_t a1, void *a2, char *a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AF65F5E0(*&a3[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer]);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v8 = v6(&runtime_thread_is_locked);
  --*v8;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CCF54(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, uint64_t), void (*a5)(uint64_t))
{
  pthread_mutex_lock(*(a1 + 64));
  v9 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  a4(a2, a3);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v9(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  a5(a3);
}

void sub_1AF6CD05C(uint64_t a1, void *a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFCCACC0(a2);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v6 = v4(&runtime_thread_is_locked);
  --*v6;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CD148(uint64_t a1, void *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, __n128 a6)
{
  pthread_mutex_lock(*(a1 + 64));
  v8 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFCCB5C0(a2, a3, a4, a5, a6);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v10 = v8(&runtime_thread_is_locked);
  --*v10;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CD23C(uint64_t a1, char *a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1AF65E3F4();
  }

  v8 = *(*&a2[OBJC_IVAR___VFXREScene_scene] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  MEMORY[0x1EEE9AC00](Strong, v7);
  v9 = *(v8 + 184);

  sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v9, sub_1AF678174);

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v10 = v4(&runtime_thread_is_locked);
  --*v10;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CD3C0(uint64_t a1, char *a2, double a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v8 = *&a2[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer];

  sub_1AF65F134(0, 1, v8, a3);

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v9 = v6(&runtime_thread_is_locked);
  --*v9;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CD4D4(uint64_t a1, void *a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AF6F92A4(0x200000000);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v6 = v4(&runtime_thread_is_locked);
  --*v6;
  pthread_mutex_unlock(*(a1 + 64));
}

uint64_t sub_1AF6CD5D4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 64);

  pthread_mutex_lock(v9);
  v10 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFCD348C(a2, a3, a4);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v12 = v10(&runtime_thread_is_locked);
  --*v12;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CD700(uint64_t a1, char *a2, char *a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AF6FF6AC(*&a3[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | (a3[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4] << 32), 0, 1);
  v8 = OBJC_IVAR____TtC3VFX8VFXScene_effects;
  v9 = a3;
  v10 = sub_1AF670384(&a2[v8], v9);

  v11 = *&a2[v8];
  if (v11 >> 62)
  {
    v12 = sub_1AFDFE108();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF64D4C0(v10, v12);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v13 = v6(&runtime_thread_is_locked);
  --*v13;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CD8D4(uint64_t a1, void *a2, void (*a3)(void *))
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  a3(a2);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v8 = v6(&runtime_thread_is_locked);
  --*v8;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CD9B8(uint64_t a1, char *a2, char *a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC8BF5C(*&a3[OBJC_IVAR____TtC3VFX8VFXScene_entityManager]);
  sub_1AFCDD50C(a2);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v8 = v6(&runtime_thread_is_locked);
  --*v8;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CDAA8(uint64_t a1, char *a2, void *a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (*&a2[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v9 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v17 = v9;
        swift_once();
        v9 = v17;
      }

      v18 = 0;
      sub_1AF0D4F18(v9, &v18, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v10 = Strong;

  v11 = a2;
  v12 = sub_1AF670BD0(v10, v11);
  v14 = v13;

  if (v14)
  {
    sub_1AF8267DC(0, v12, v14);
    [v11 removeFromScene];
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v15 = sub_1AFDFDA08();
    v18 = 1;
    sub_1AF75A4B4(v15, 0xD000000000000021, 0x80000001AFF2E760, &v18);
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v16 = v6(&runtime_thread_is_locked);
  --*v16;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CDD60(uint64_t a1, void *a2, uint64_t a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AF6F7F40(a3);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v8 = v6(&runtime_thread_is_locked);
  --*v8;
  pthread_mutex_unlock(*(a1 + 64));
  swift_unknownObjectRelease();
}

void sub_1AF6CDE48(uint64_t a1, char *a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *&a2[OBJC_IVAR____TtC3VFX8VFXScene_entityManager] + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  v7 = type metadata accessor for ScriptingConfiguration();
  ++*(v6 + *(v7 + 36));
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v8 = v4(&runtime_thread_is_locked);
  --*v8;
  pthread_mutex_unlock(*(a1 + 64));
}

uint64_t sub_1AF6CDF3C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  pthread_mutex_lock(*(a1 + 64));
  v8 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AF5AADE8((a4 & 1) == 0, a2, a3);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v10 = v8(&runtime_thread_is_locked);
  --*v10;
  return pthread_mutex_unlock(*(a1 + 64));
}

uint64_t sub_1AF6CE018(uint64_t a1, unint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1AF65E3F4();
  }

  MEMORY[0x1EEE9AC00](Strong, v9);
  if (a2 != 0xFFFFFFFF)
  {
    v10 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v10)
    {
      v11 = *(v10 + 80);
      swift_unknownObjectWeakLoadStrong();
      v10 = *(v10 + 56);
    }

    else
    {
      v11 = 0;
    }

    swift_unknownObjectUnownedInit();
    v15[0] = a3;
    v15[2] = v10;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v16 = v11;
    sub_1AFCDA270(a2);
    sub_1AF579490(v15);
    if (v11)
    {
      v12 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v12 ^ 1);
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v13 = v6(&runtime_thread_is_locked);
  --*v13;
  return pthread_mutex_unlock(*(a1 + 64));
}

uint64_t sub_1AF6CE214(uint64_t a1, void (*a2)(uint64_t))
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1AF65E3F4();
  }

  a2(Strong);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v7 = v4(&runtime_thread_is_locked);
  --*v7;
  pthread_mutex_unlock(*(a1 + 64));
}

void sub_1AF6CE2EC(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  pthread_mutex_lock(*(a1 + 64));
  v10 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AF7013D0(a3, a4, 0x100000000uLL, a5, v12);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v13 = v10(&runtime_thread_is_locked);
  --*v13;
  pthread_mutex_unlock(*(a1 + 64));
}

BOOL sub_1AF6CE3FC(uint64_t a1, unint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, a2);

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v7 = v4(&runtime_thread_is_locked);
  --*v7;
  pthread_mutex_unlock(*(a1 + 64));
  return !v6;
}

id sub_1AF6CE4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(v3 + 120) == 1 || *(*(v3 + 40) + 16) && (sub_1AF449CB8(a1), (v7 & 1) != 0))
  {

    return os_unfair_recursive_lock_unlock();
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    sub_1AF855560(sub_1AF464154, v9, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + 40) = v11;
    os_unfair_recursive_lock_unlock();

    return sub_1AF6CF09C();
  }
}

uint64_t sub_1AF6CE628(uint64_t a1)
{
  pthread_setname_np("com.apple.vfx.runtime-thread");
  *(a1 + 144) = pthread_self();
  prof_flag_main();
  v2 = objc_autoreleasePoolPush();
  sub_1AF6CE6E8(a1);
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);

  [v4 lock];
  *(v3 + 24) = 1;
  [*(v3 + 16) signal];
  [*(v3 + 16) unlock];

  return 0;
}

uint64_t sub_1AF6CE6E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 48);
  v5 = *(v4 + 16);

  v6 = &selRef_initWithDelegate_;
  [v5 lock];
  *(v4 + 24) = 1;
  [*(v4 + 16) signal];
  [*(v4 + 16) unlock];

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = OBJC_IVAR____TtC3VFX13EntityManager_syncLock;
  v9 = result;
  [*(result + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) lock];
  [*(v9 + v8) unlock];

  Strong = swift_weakLoadStrong();
  v81 = v2;
  if (Strong && (v11 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2), , (v11 & 1) != 0))
  {
    v12 = 0;
    v13 = *(a1 + 64);
  }

  else
  {
    v13 = 0;
    v12 = *(a1 + 64);
  }

  v14 = MEMORY[0x1E69E7CC8];
  v15 = &selRef_shadingModel;
  v82 = v13;
  v83 = v12;
  while (1)
  {
    if (*(a1 + 120) == 1)
    {
      os_unfair_recursive_lock_lock_with_options();
      v16 = *(*(a1 + 72) + 16);
      os_unfair_recursive_lock_unlock();
      if (!v16)
      {
      }
    }

    prof_collectProfilers();
    v17 = *(a1 + 16);
    [*(v17 + 16) v6[280]];
    while ((*(v17 + 24) & 1) == 0)
    {
      [*(v17 + 16) wait];
    }

    *(v17 + 24) = 0;
    [*(v17 + 16) v15[268]];
    os_unfair_recursive_lock_lock_with_options();
    *(a1 + 72) = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v18 = *(a1 + 40);
    *(a1 + 40) = v14;
    os_unfair_recursive_lock_unlock();
    if (v12)
    {
      pthread_mutex_lock(v12);
    }

    v19 = *(a1 + 24);
    [*(v19 + 16) v6[280]];
    *(v19 + 24) = 1;
    [*(v19 + 16) signal];
    [*(v19 + 16) v15[268]];
    v20 = swift_weakLoadStrong();
    if (!v20)
    {
      break;
    }

    v21 = v20;
    v22 = OBJC_IVAR____TtC3VFX13EntityManager_syncLock;
    [*(v20 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) v6[280]];
    v23 = CACurrentMediaTime();
    v89 = v21;
    v84 = v22;
    if (!*(*(a1 + 80) + 16))
    {
      goto LABEL_65;
    }

    if (v13)
    {
      pthread_mutex_lock(v13);
    }

    v24 = v21 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v25 = *(v21 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v87 = v24;
    if (v25)
    {
      v26 = *(v24 + 8);
      if (v26)
      {
        v27 = 8 * v26;
        do
        {
          v28 = *v25++;
          ecs_stack_allocator_push_snapshot(*(v28 + 32));
          v27 -= 8;
        }

        while (v27);
      }
    }

    v29 = *(v89 + 224);
    *(v89 + 224) = v29 + 1;
    if (!v29)
    {
      sub_1AF65DAB0();
    }

    v85 = v18;
    v30 = *(a1 + 80);
    v31 = v30[2];
    if (v31)
    {
      v32 = 0;
      v33 = MEMORY[0x1E69E7CC0];
      do
      {
        v34 = v30[4];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 80) = v30;
        if (!isUniquelyReferenced_nonNull_native || (v31 - 1) > v30[3] >> 1)
        {
          v30 = sub_1AF4221DC(isUniquelyReferenced_nonNull_native, v31, 1, v30);
          *(a1 + 80) = v30;
        }

        sub_1AF43FD98();
        swift_arrayDestroy();
        v36 = v30[2];
        memmove(v30 + 4, v30 + 6, 16 * v36 - 16);
        v30[2] = v36 - 1;
        *(a1 + 80) = v30;
        v37 = objc_autoreleasePoolPush();
        v34();
        sub_1AF0FB8EC(v34);
        objc_autoreleasePoolPop(v37);
        os_unfair_recursive_lock_lock_with_options();
        if (*(a1 + 152) == 1)
        {
          v38 = *(a1 + 72);
          v39 = *(*(a1 + 80) + 16);
          v40 = v38[2];
          v41 = v40 + v39;

          v42 = swift_isUniquelyReferenced_nonNull_native();
          *(a1 + 72) = v38;
          if (!v42 || v41 > v38[3] >> 1)
          {
            if (v40 <= v41)
            {
              v43 = v40 + v39;
            }

            else
            {
              v43 = v40;
            }

            v38 = sub_1AF4221DC(v42, v43, 1, v38);
            *(a1 + 72) = v38;
          }

          swift_arrayDestroy();
          if (v39)
          {
            memmove(&v38[2 * v39 + 4], v38 + 4, 16 * v38[2]);
            v38[2] += v39;
            swift_arrayInitWithCopy();
          }

          *(a1 + 72) = v38;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v45 = *(a1 + 80);
          if (v44)
          {
            v46 = v45[2];
            v47 = swift_isUniquelyReferenced_nonNull_native();
            *(a1 + 80) = v45;
            if ((v47 & 1) == 0)
            {
              v45 = sub_1AF4221DC(0, v46, 1, v45);
              *(a1 + 80) = v45;
            }

            swift_arrayDestroy();
            if (v46)
            {
              v48 = v45[2] - v46;
              memmove(v45 + 4, &v45[2 * v46 + 4], 16 * v48);
              v45[2] = v48;
            }

            *(a1 + 80) = v45;
          }

          else
          {
            v49 = v33;
            if (v45[3] >= 2uLL)
            {
              sub_1AF6D2544();
              v49 = swift_allocObject();
              v50 = j__malloc_size_0(v49);
              v51 = v50 - 32;
              if (v50 < 32)
              {
                v51 = v50 - 17;
              }

              v49[2] = 0;
              v49[3] = 2 * (v51 >> 4);
            }

            *(a1 + 80) = v49;
          }

          v32 = 1;
        }

        os_unfair_recursive_lock_unlock();
        v30 = *(a1 + 80);
        v31 = v30[2];
      }

      while (v31);
      v6 = &selRef_initWithDelegate_;
      v13 = v82;
      v12 = v83;
      if (*(v89 + 224) != 1)
      {
        goto LABEL_53;
      }

LABEL_52:
      sub_1AF65DCF4(1);
      goto LABEL_53;
    }

    v32 = 0;
    if (*(v89 + 224) == 1)
    {
      goto LABEL_52;
    }

LABEL_53:
    v52 = *v87;
    if (*v87)
    {
      v53 = *(v87 + 8);
      if (v53)
      {
        v54 = 8 * v53;
        do
        {
          v55 = *v52++;
          ecs_stack_allocator_pop_snapshot(*(v55 + 32));
          v54 -= 8;
        }

        while (v54);
      }
    }

    v21 = v89;
    --*(v89 + 224);
    if (v13)
    {
      pthread_mutex_unlock(v13);
    }

    if (v32)
    {
      v56 = (v89 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
      v57 = *(v89 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 8);
      v58 = CACurrentMediaTime();
      if (*v56)
      {
        vfx_counters_update(*v56, v57, v58 - v23);
      }

      v15 = &selRef_shadingModel;
      [*(v89 + v84) unlock];

      v59 = v85;
      v14 = v85;
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = v85;
LABEL_65:
      v60 = 1 << *(v18 + 32);
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      else
      {
        v61 = -1;
      }

      v62 = v61 & *(v18 + 64);
      v88 = OBJC_IVAR____TtC3VFX13EntityManager_isVFX2;
      v86 = v21 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v63 = (v60 + 63) >> 6;

      v64 = 0;
      while (v62)
      {
LABEL_75:
        v66 = *(*(v18 + 56) + ((v64 << 10) | (16 * __clz(__rbit64(v62)))));
        if (*(v89 + v88))
        {

          v68 = 0;
        }

        else
        {
          v69 = *v86;
          if (*v86)
          {
            v70 = *(v86 + 8);
            swift_retain_n();

            if (v70)
            {
              v71 = 8 * v70;
              do
              {
                v72 = *v69++;
                ecs_stack_allocator_push_snapshot(*(v72 + 32));
                v71 -= 8;
              }

              while (v71);
            }
          }

          else
          {
            swift_retain_n();
          }

          v68 = v89;
          v73 = *(v89 + 224);
          *(v89 + 224) = v73 + 1;
          if (!v73)
          {
            sub_1AF65DAB0();
          }
        }

        v62 &= v62 - 1;
        v66(v67);

        if (v68)
        {
          if (*(v68 + 224) == 1)
          {
            sub_1AF65DCF4(1);
          }

          v74 = *(v68 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          if (v74)
          {
            v75 = *(v68 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
            if (v75)
            {
              v76 = 8 * v75;
              do
              {
                v77 = *v74++;
                ecs_stack_allocator_pop_snapshot(*(v77 + 32));
                v76 -= 8;
              }

              while (v76);
            }
          }

          --*(v68 + 224);
        }
      }

      v12 = v83;
      while (1)
      {
        v65 = v64 + 1;
        if (v64 + 1 >= v63)
        {
          break;
        }

        v62 = *(v18 + 8 * v64++ + 72);
        if (v62)
        {
          v64 = v65;
          goto LABEL_75;
        }
      }

      if (*(v18 + 16))
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1AF6D24DC();
        sub_1AFDFE4B8();
      }

      v14 = v18;
      v6 = &selRef_initWithDelegate_;
      v13 = v82;
      v78 = (v89 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
      v79 = *(v89 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 8);
      v80 = CACurrentMediaTime();
      if (*v78)
      {
        vfx_counters_update(*v78, v79, v80 - v23);
      }

      v15 = &selRef_shadingModel;
      [*(v89 + v84) unlock];

      v59 = v18;
      if (v83)
      {
LABEL_7:
        pthread_mutex_unlock(v12);
        v14 = v59;
      }
    }
  }

  if (v12)
  {
    return pthread_mutex_unlock(v12);
  }

  return result;
}

uint64_t sub_1AF6CEFAC()
{
  MEMORY[0x1B271DEA0](*(v0 + 112), -1, -1);
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 64);
    pthread_mutex_destroy(v1);
    MEMORY[0x1B271DEA0](v1, -1, -1);
  }

  swift_weakDestroy();

  return v0;
}

uint64_t sub_1AF6CF044()
{
  sub_1AF6CEFAC();

  return swift_deallocClassInstance();
}

id sub_1AF6CF09C()
{
  os_unfair_recursive_lock_lock_with_options();
  v1 = *(v0 + 152);
  result = os_unfair_recursive_lock_unlock();
  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 16);
    [*(v3 + 16) lock];
    *(v3 + 24) = 1;
    [*(v3 + 16) signal];
    v4 = *(v3 + 16);

    return [v4 unlock];
  }

  return result;
}

uint64_t sub_1AF6CF128()
{
  pthread_mutex_lock(*(v0 + 64));
  v1 = *(v0 + 24);
  [*(v1 + 16) lock];
  *(v1 + 24) = 0;
  [*(v1 + 16) unlock];
  v2 = *(v0 + 16);
  [*(v2 + 16) lock];
  *(v2 + 24) = 1;
  [*(v2 + 16) signal];
  [*(v2 + 16) unlock];
  pthread_mutex_unlock(*(v0 + 64));
  [*(v1 + 16) lock];
  while ((*(v1 + 24) & 1) == 0)
  {
    [*(v1 + 16) wait];
  }

  *(v1 + 24) = 0;
  [*(v1 + 16) unlock];
  pthread_mutex_lock(*(v0 + 64));
  v3 = *(v0 + 64);

  return pthread_mutex_unlock(v3);
}

uint64_t sub_1AF6CF218(char a1)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(v1 + 152) == 1)
  {
    v3 = *(v1 + 16);
    [*(v3 + 16) lock];
    *(v3 + 24) = 0;
    [*(v3 + 16) unlock];

    return os_unfair_recursive_lock_unlock();
  }

  else
  {
    *(v1 + 152) = 1;
    v5 = *(v1 + 16);
    [*(v5 + 16) lock];
    *(v5 + 24) = 0;
    [*(v5 + 16) unlock];
    result = os_unfair_recursive_lock_unlock();
    if (a1)
    {

      return sub_1AF6CF128();
    }
  }

  return result;
}

uint64_t sub_1AF6CF300()
{
  os_unfair_recursive_lock_lock_with_options();
  *(v0 + 152) = 0;
  os_unfair_recursive_lock_lock_with_options();
  v1 = *(v0 + 152);
  os_unfair_recursive_lock_unlock();
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 16);
    [*(v2 + 16) lock];
    *(v2 + 24) = 1;
    [*(v2 + 16) signal];
    [*(v2 + 16) unlock];
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1AF6CF398(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v24 = a5;
  pthread_mutex_lock(*(a1 + 64));
  v9 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v11 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v11)
  {
    v12 = *(v11 + 80);
    swift_unknownObjectWeakLoadStrong();
    v13 = *(v11 + 56);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  swift_unknownObjectUnownedInit();
  v22[0] = a2;
  v22[2] = v13;
  swift_unknownObjectUnownedAssign();
  v14 = a3;

  swift_unownedRetain();
  swift_unknownObjectRelease();
  v23 = v12;
  sub_1AF6D259C(0, &unk_1ED7269B0, &type metadata for Entity, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  v16 = OBJC_IVAR____TtC3VFX15VFXEntityObject_entity;
  *(inited + 32) = *&v14[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
  v25 = 1;
  sub_1AF6C6C58(inited, a4, 0, 0x100000000uLL, 1);
  v18 = v17;
  swift_setDeallocating();
  if (*(v18 + 16))
  {
    v19 = *(v18 + 32);
  }

  else
  {
    v19 = 0;
  }

  if ((v24 & 1) == 0)
  {
    sub_1AF6C8594(*&v14[v16]);
  }

  sub_1AF579490(v22);
  if (v12)
  {
    sub_1AF6C5E30(1);
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v20 = v9(&runtime_thread_is_locked);
  --*v20;
  pthread_mutex_unlock(*(a1 + 64));
  return v19;
}

uint64_t sub_1AF6CF5D8(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  if (!swift_weakLoadStrong())
  {
    if (*(a2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager))
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v7 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v14 = v7;
        swift_once();
        v7 = v14;
      }

      v15 = 0;
      sub_1AF0D4F18(v7, &v15, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v8 = sub_1AF3CB7C4(v6);
  v10 = v9;

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v4(&runtime_thread_is_locked);
  --*v12;
  pthread_mutex_unlock(*(a1 + 64));
  return v11;
}

uint64_t sub_1AF6CF7F4(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  if (v6 == -1 && v7 == 0)
  {
    v10 = 0;
  }

  else
  {
    v9 = v6 | (v7 << 32);

    v10 = sub_1AF3C9078(v9);
    v12 = v11;

    if (!v12)
    {
      v10 = 0;
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v13 = v4(&runtime_thread_is_locked);
  --*v13;
  pthread_mutex_unlock(*(a1 + 64));
  return v10;
}

uint64_t sub_1AF6CF918(uint64_t a1, uint64_t a2, unint64_t a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFCEC81C(a3, &v11);
  if (v3)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v8 = v6(&runtime_thread_is_locked);
    --*v8;
    return pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v10 = v6(&runtime_thread_is_locked);
    --*v10;
    pthread_mutex_unlock(*(a1 + 64));
    return v11;
  }
}

BOOL sub_1AF6CFA44(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  if (v6 == -1 && v7 == 0)
  {
    v10 = 0;
  }

  else
  {
    v9 = v6 | (v7 << 32);

    v10 = sub_1AF67CACC(&type metadata for OrthographicCamera, &off_1F2511C70, v9);
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v4(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v10;
}

uint64_t sub_1AF6CFB5C(uint64_t a1, char *a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v5 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC7ADF0(a2, &v11);
  if (v2)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v7 = v5(&runtime_thread_is_locked);
    --*v7;
    pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v9 = v5(&runtime_thread_is_locked);
    --*v9;
    pthread_mutex_unlock(*(a1 + 64));
    v8 = v11;
  }

  return v8 & 1;
}

uint64_t sub_1AF6CFC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  pthread_mutex_lock(*(a1 + 64));
  v9 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v11 = sub_1AF6AC0F4(a3, a4, a5 & 0xFFFFFFFFFFLL, 1);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1AF65AE88(v11);
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v14 = v9(&runtime_thread_is_locked);
  --*v14;
  pthread_mutex_unlock(*(a1 + 64));
  return v13 & 1;
}

uint64_t sub_1AF6CFD7C(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = sub_1AFC7BFF8();
  if (v7)
  {
    v8 = v6;

    v9 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, v8);

    v10 = !v9;
  }

  else
  {
    v10 = *(a2 + OBJC_IVAR____TtC3VFX9VFXEffect__enabled);
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v4(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v10 & 1;
}

uint64_t sub_1AF6CFE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v5 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v7 = *(a3 + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = (v7 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
  if (*(v8 + 4) == 1)
  {
    v7 = 0;
LABEL_6:
    v9 = 0x200000000;
    goto LABEL_8;
  }

  v7 = *v8;
  v9 = (v7 == 0) << 33;
LABEL_8:
  v10 = sub_1AF6F6ACC(v9 | v7);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v5(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v10 & 1;
}

BOOL sub_1AF6CFFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v7 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFCECEA8(a2, a3, &v13);
  if (v3)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v9 = v7(&runtime_thread_is_locked);
    --*v9;
    pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v11 = v7(&runtime_thread_is_locked);
    --*v11;
    pthread_mutex_unlock(*(a1 + 64));
    return v13;
  }

  return v10;
}

__n128 sub_1AF6D00E0(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v15 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v5 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v7 = v5 == -1 && v6 == 0;
  if (v7 || (v8 = v5 | (v6 << 32), , sub_1AF3C9244(v8, v16), , (v17 & 1) != 0))
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = v16[0];
    v10 = v16[1];
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v11;
  v12 = v15(&runtime_thread_is_locked);
  --*v12;
  pthread_mutex_unlock(*(a1 + 64));
  return v14;
}

__n128 sub_1AF6D02D0(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v8 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v9 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v14 = xmmword_1AFE20150;
  if (v8 != -1 || v9 != 0)
  {
    v11 = v8 | (v9 << 32);

    a3(&v15, v11);

    if ((v16 & 1) == 0)
    {
      v14 = v15;
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v12 = v6(&runtime_thread_is_locked);
  --*v12;
  pthread_mutex_unlock(*(a1 + 64));
  return v14;
}

__n128 sub_1AF6D0434(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v18 = 0u;
  if (v6 != -1 || v7 != 0)
  {
    v9 = v6 | (v7 << 32);

    v10 = sub_1AF3C9FF4(v9);
    v12 = v11;
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      *&v15 = v10;
      *(&v15 + 1) = v12;
      v18 = v15;
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v16 = v4(&runtime_thread_is_locked);
  --*v16;
  pthread_mutex_unlock(*(a1 + 64));
  return v18;
}

__n128 sub_1AF6D0568(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v18 = xmmword_1AFE201A0;
  if (v6 != -1 || v7 != 0)
  {
    v9 = v6 | (v7 << 32);

    v10 = sub_1AF3CA0E0(v9);
    v12 = v11;
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      *&v15 = v10;
      *(&v15 + 1) = v12;
      v18 = v15;
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v16 = v4(&runtime_thread_is_locked);
  --*v16;
  pthread_mutex_unlock(*(a1 + 64));
  return v18;
}

float sub_1AF6D06A0(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v8 = 0.0;
  if (v6 != -1 || v7 != 0)
  {
    v10 = v6 | (v7 << 32);

    sub_1AF3CEE78(v10, v13);

    if (v14 != 2)
    {
      v8 = (v13[0] * 180.0) / 3.1416;
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v4(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v8;
}

float sub_1AF6D07E0(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v8 = 0.0;
  if (v6 != -1 || v7 != 0)
  {
    v10 = v6 | (v7 << 32);

    sub_1AF3CEE78(v10, v13);

    if (v14 == 2)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v13[1];
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v4(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v8;
}

float sub_1AF6D0908(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v8 = 0.0;
  if (v6 != -1 || v7 != 0)
  {
    v10 = v6 | (v7 << 32);

    sub_1AF3CEE78(v10, v13);

    if (v14 == 2)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v13[2];
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v4(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v8;
}

float sub_1AF6D0A30(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v8 = 0.0;
  if (v6 != -1 || v7 != 0)
  {
    v10 = v6 | (v7 << 32);

    sub_1AF3CEE78(v10, v13);

    if (v14 == 2)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v13[3];
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v4(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v8;
}

float sub_1AF6D0B58(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v8 = 0.0;
  if (v6 != -1 || v7 != 0)
  {
    v10 = v6 | (v7 << 32);

    sub_1AF3CEE78(v10, v13);

    if (v14 == 2)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v13[4];
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v4(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v8;
}

float sub_1AF6D0C80(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v8 = 0.0;
  if (v6 != -1 || v7 != 0)
  {
    v10 = v6 | (v7 << 32);

    sub_1AF3CEE78(v10, v13);

    if (v14 == 2)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v13[5];
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v4(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v8;
}

float sub_1AF6D0DA8(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v8 = 0.0;
  if (v6 != -1 || v7 != 0)
  {
    v10 = v6 | (v7 << 32);

    sub_1AF3CEE78(v10, v13);

    if (v14 != 2)
    {
      v8 = v13[3] / v13[4];
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v4(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v8;
}

float sub_1AF6D0ED0(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v8 = 1.0;
  if (v6 != -1 || v7 != 0)
  {
    v10 = v6 | (v7 << 32);

    v11 = sub_1AF3CEF50(v10);

    if ((v11 & 0xFF00000000) != 0x200000000)
    {
      v8 = *&v11;
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v12 = v4(&runtime_thread_is_locked);
  --*v12;
  pthread_mutex_unlock(*(a1 + 64));
  return v8;
}

float sub_1AF6D104C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  pthread_mutex_lock(*(a1 + 64));
  v7 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  a3(&v12, a2);
  if (v3)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v9 = v7(&runtime_thread_is_locked);
    --*v9;
    pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v11 = v7(&runtime_thread_is_locked);
    --*v11;
    pthread_mutex_unlock(*(a1 + 64));
    return *&v12;
  }

  return result;
}

double sub_1AF6D1168(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v8 = 0.0;
  if (v6 != -1 || v7 != 0)
  {
    v10 = v6 | (v7 << 32);

    sub_1AF3CEE78(v10, v13);

    v8 = COERCE_DOUBLE(vbic_s8(v14, vceqd_s64(v13[32], 2)));
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v11 = v4(&runtime_thread_is_locked);
  --*v11;
  pthread_mutex_unlock(*(a1 + 64));
  return v8;
}

uint64_t sub_1AF6D1298(uint64_t a1, char *a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v5 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC7AFFC(a2, &v10);
  if (v2)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v7 = v5(&runtime_thread_is_locked);
    --*v7;
    return pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v9 = v5(&runtime_thread_is_locked);
    --*v9;
    pthread_mutex_unlock(*(a1 + 64));
    return v10;
  }
}

uint64_t sub_1AF6D13AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  pthread_mutex_lock(*(a1 + 64));
  v12 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC7C4B8();
  if (*(a2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v14 = 0x200000000;
  }

  else
  {
    v14 = *(a2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) | ((*(a2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) == 0) << 33);
  }

  v15 = sub_1AFC7E36C(a3, a4, a5, a6, v14);

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v16 = v12(&runtime_thread_is_locked);
  --*v16;
  pthread_mutex_unlock(*(a1 + 64));
  return v15;
}

uint64_t sub_1AF6D14E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  pthread_mutex_lock(*(a1 + 64));
  v6 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC7E5E4(a3, &v11);
  if (v3)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v8 = v6(&runtime_thread_is_locked);
    --*v8;
    return pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v10 = v6(&runtime_thread_is_locked);
    --*v10;
    pthread_mutex_unlock(*(a1 + 64));
    return v11;
  }
}

uint64_t sub_1AF6D1618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_mutex_lock(*(a1 + 64));
  v8 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC7C4B8();
  if (*(a2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v10 = 0x200000000;
  }

  else
  {
    v10 = *(a2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) | ((*(a2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) == 0) << 33);
  }

  v11 = sub_1AF9075D4(a3, a4, v10);

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  if (v11 == 0xFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8(&runtime_thread_is_locked);
  --*v13;
  pthread_mutex_unlock(*(a1 + 64));
  return v12;
}

uint64_t sub_1AF6D1744(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v5 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC81904(a2, &v10);
  if (v2)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v7 = v5(&runtime_thread_is_locked);
    --*v7;
    return pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v9 = v5(&runtime_thread_is_locked);
    --*v9;
    pthread_mutex_unlock(*(a1 + 64));
    return v10;
  }
}

uint64_t sub_1AF6D1858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_mutex_lock(*(a1 + 64));
  v9 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC820BC(a2, a3, a4, &v14);
  if (v4)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v11 = v9(&runtime_thread_is_locked);
    --*v11;
    return pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v13 = v9(&runtime_thread_is_locked);
    --*v13;
    pthread_mutex_unlock(*(a1 + 64));
    return v14;
  }
}

uint64_t sub_1AF6D1984(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v4 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v6 = *(a2 + OBJC_IVAR___VFXREScene_externalDrawCallQuery + 16);
  v13[0] = *(a2 + OBJC_IVAR___VFXREScene_externalDrawCallQuery);
  v13[1] = v6;
  v14 = *(a2 + OBJC_IVAR___VFXREScene_externalDrawCallQuery + 32);

  sub_1AF6B06C0(v7, v13, 0x200000000, v11);

  if (*&v11[0])
  {
    v8 = v12;
    sub_1AF5D1564(v11);
  }

  else
  {
    v8 = 0;
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v9 = v4(&runtime_thread_is_locked);
  --*v9;
  pthread_mutex_unlock(*(a1 + 64));
  return v8;
}

double sub_1AF6D1AD8(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v5 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFCC871C(a2, &v10);
  if (v2)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v7 = v5(&runtime_thread_is_locked);
    --*v7;
    pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v9 = v5(&runtime_thread_is_locked);
    --*v9;
    pthread_mutex_unlock(*(a1 + 64));
    return *v10.i64;
  }

  return result;
}

uint64_t sub_1AF6D1BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_mutex_lock(*(a1 + 64));
  v9 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFCE08B4(a2, a3, a4, &v14);
  if (v4)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v11 = v9(&runtime_thread_is_locked);
    --*v11;
    return pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v13 = v9(&runtime_thread_is_locked);
    --*v13;
    pthread_mutex_unlock(*(a1 + 64));
    return v14;
  }
}

uint64_t sub_1AF6D1D24(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 64));
  v5 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFCEA338(a2, &v10);
  if (v2)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v7 = v5(&runtime_thread_is_locked);
    --*v7;
    return pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v9 = v5(&runtime_thread_is_locked);
    --*v9;
    pthread_mutex_unlock(*(a1 + 64));
    return v10;
  }
}

uint64_t sub_1AF6D1E38(uint64_t a1, pthread_mutex_t *a2, uint64_t a3)
{
  v4 = v3;
  v37 = *MEMORY[0x1E69E9840];
  type metadata accessor for WakeUpEvent();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AB30]) init];
  *(v7 + 16) = v8;
  v9 = v8;
  v10 = sub_1AFDFCEC8();
  [v9 setName_];

  *(v4 + 16) = v7;
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AB30]) init];
  *(v11 + 16) = v12;
  v13 = v12;
  v14 = sub_1AFDFCEC8();
  [v13 setName_];

  *(v4 + 32) = 0;
  *(v4 + 24) = v11;
  *(v4 + 40) = MEMORY[0x1E69E7CC8];
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  v16 = [objc_allocWithZone(MEMORY[0x1E696AB30]) init];
  *(v15 + 16) = v16;
  v17 = v16;
  v18 = sub_1AFDFCEC8();
  [v17 setName_];

  *(v4 + 48) = v15;
  v19 = MEMORY[0x1E69E7CC0];
  *(v4 + 72) = MEMORY[0x1E69E7CC0];
  *(v4 + 80) = v19;
  v20 = swift_slowAlloc();
  *v20 = 0;
  *(v4 + 88) = "RuntimeThread work queue lock";
  *(v4 + 96) = 29;
  *(v4 + 104) = 2;
  *(v4 + 112) = v20;
  *(v4 + 120) = 0;
  swift_weakInit();
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  swift_weakAssign();
  *(v4 + 136) = a3;

  if (a2)
  {
    *(v4 + 56) = 0;
  }

  else
  {
    *(v4 + 56) = 1;
    v36.__sig = 0;
    *v36.__opaque = 0;
    pthread_mutexattr_init(&v36);
    pthread_mutexattr_settype(&v36, 2);
    pthread_mutexattr_setpolicy_np(&v36, 1);
    a2 = swift_slowAlloc();
    pthread_mutex_init(a2, &v36);
  }

  *(v4 + 64) = a2;
  memset(&v36, 0, sizeof(v36));
  pthread_attr_init(&v36);
  pthread_attr_setdetachstate(&v36, 2);
  pthread_attr_setschedpolicy(&v36, 2);
  v35 = 45;
  pthread_attr_setschedparam(&v36, &v35);
  pthread_create((v4 + 32), &v36, sub_1AF6CEFA0, 0);

  v21 = pthread_create((v4 + 32), &v36, sub_1AF6CEFA8, v4);
  if (v21 > 21)
  {
    if (v21 == 22)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v22 = "reation failed: unknown error ";
      v23 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v33 = v23;
        swift_once();
        v23 = v33;
      }

      v34[0] = 0;
      v24 = 0xD000000000000049;
      goto LABEL_29;
    }

    if (v21 == 35)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v22 = "arameters or scheduling policy";
      v23 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v32 = v23;
        swift_once();
        v23 = v32;
      }

      v34[0] = 0;
      v24 = 0xD0000000000000ABLL;
      goto LABEL_29;
    }
  }

  else
  {
    if (!v21)
    {
      goto LABEL_30;
    }

    if (v21 == 1)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v22 = "alue specified is invalid";
      v23 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v31 = v23;
        swift_once();
        v23 = v31;
      }

      v34[0] = 0;
      v24 = 0xD00000000000008ELL;
LABEL_29:
      sub_1AF0D4F18(v23, v34, v24, v22 | 0x8000000000000000);
      goto LABEL_30;
    }
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  sub_1AFDFE218();

  v34[1] = 0x80000001AFF2FA70;
  v25 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v25);

  v26 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v30 = v26;
    swift_once();
    v26 = v30;
  }

  v34[0] = 0;
  sub_1AF0D4F18(v26, v34, 0xD00000000000002ELL, 0x80000001AFF2FA70);

LABEL_30:
  v27 = *(v4 + 48);
  v28 = *(v27 + 16);

  [v28 lock];
  while ((*(v27 + 24) & 1) == 0)
  {
    [*(v27 + 16) wait];
  }

  *(v27 + 24) = 0;
  [*(v27 + 16) unlock];

  pthread_attr_destroy(&v36);
  return v4;
}

void sub_1AF6D24DC()
{
  if (!qword_1ED723098)
  {
    sub_1AF43FD98();
    v0 = sub_1AFDFE4C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723098);
    }
  }
}

void sub_1AF6D2544()
{
  if (!qword_1ED7268E8)
  {
    sub_1AF43FD98();
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7268E8);
    }
  }
}

void sub_1AF6D259C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AF6D25F0()
{
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 128) = "SceneComponentStorage";
  *(v0 + 136) = 21;
  *(v0 + 144) = 2;
  *(v0 + 152) = v1;
  v2 = swift_slowAlloc();
  *(v0 + 16) = v2;
  *(v0 + 24) = v2 + 4096;
  v3 = 0;
  *(v0 + 32) = swift_slowAlloc();
  *(v0 + 40) = 64;
  do
  {
    v4 = *(v0 + 32) + v3;
    v5 = swift_slowAlloc();
    *v5 = 0;
    *v4 = "SceneComponent lock";
    *(v4 + 8) = 19;
    *(v4 + 16) = 2;
    v3 += 32;
    *(v4 + 24) = v5;
  }

  while (v3 != 2048);
  sub_1AF64F3CC(MEMORY[0x1E69E7CC0], 0, 256, 0, v9);
  v6 = v9[3];
  *(v0 + 80) = v9[2];
  *(v0 + 96) = v6;
  *(v0 + 112) = v10;
  v7 = v9[1];
  *(v0 + 48) = v9[0];
  *(v0 + 64) = v7;
  *(v0 + 120) = 0;
  return v0;
}

uint64_t sub_1AF6D26FC(uint64_t a1)
{
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v1 + 128) = "SceneComponentStorage";
  *(v1 + 136) = 21;
  *(v1 + 144) = 2;
  *(v1 + 152) = v3;
  v4 = sub_1AF3C4344(a1);

  v5 = sub_1AF64FB70(v4);

  v6 = swift_slowAlloc();
  *(v1 + 16) = v6;
  *(v1 + 24) = v6 + v5 + 512;
  v7 = 0;
  *(v1 + 32) = swift_slowAlloc();
  *(v1 + 40) = 64;
  do
  {
    v8 = *(v1 + 32) + v7;
    v9 = swift_slowAlloc();
    *v9 = 0;
    *v8 = "SceneComponent lock";
    *(v8 + 8) = 19;
    *(v8 + 16) = 2;
    v7 += 32;
    *(v8 + 24) = v9;
  }

  while (v7 != 2048);
  sub_1AF64F3CC(MEMORY[0x1E69E7CC0], 0, 256, 0, v13);
  v10 = v13[3];
  *(v1 + 80) = v13[2];
  *(v1 + 96) = v10;
  *(v1 + 112) = v14;
  v11 = v13[1];
  *(v1 + 48) = v13[0];
  *(v1 + 64) = v11;
  *(v1 + 120) = 0;
  return v1;
}

uint64_t sub_1AF6D2844()
{
  v1 = v0;
  v2 = v0[6];
  v3 = *(v2 + 16);
  if (v3)
  {
    v23 = v0[2];
    v4 = v2 + 32;

    v5 = 0;
    while (1)
    {
      v6 = (v4 + 40 * v5);
      v7 = *v6;
      v8 = v6[3];
      result = swift_conformsToProtocol2();
      if (!result)
      {
        break;
      }

      v10 = result;
      ++v5;
      os_unfair_recursive_lock_lock_with_options();
      v11 = v1[6];
      v12 = (v11 + 32);
      v13 = -*(v11 + 16);
      v14 = -1;
      do
      {
        if (v13 + v14 == -1)
        {
          os_unfair_recursive_lock_unlock();
          goto LABEL_4;
        }

        v15 = *v12;
        v12 += 5;
        ++v14;
      }

      while (v15 != v7);
      v16 = v14 - 65;
      if (v14 >= 0x40)
      {
        v17 = 0;
      }

      else
      {
        v17 = 1 << v14;
      }

      if (v16 < 0xFFFFFFFFFFFFFF7FLL)
      {
        v17 = 0;
      }

      v18 = v17 & v1[15];
      os_unfair_recursive_lock_unlock();
      if (v18)
      {
        sub_1AF641020(v23 + v8, 1, v7, v10);
      }

LABEL_4:
      if (v5 == v3)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v19 = v1[5];
    if (v19)
    {
      v20 = 24;
      do
      {
        MEMORY[0x1B271DEA0](*(v1[4] + v20), -1, -1);
        v20 += 32;
        --v19;
      }

      while (v19);
    }

    MEMORY[0x1B271DEA0](v1[19], -1, -1);
    v21 = v1[2];
    if (v21)
    {
      MEMORY[0x1B271DEA0](v21, -1, -1);
    }

    v22 = v1[4];
    if (v22)
    {
      MEMORY[0x1B271DEA0](v22, -1, -1);
    }

    return v1;
  }

  return result;
}

uint64_t sub_1AF6D2A14()
{
  sub_1AF6D2844();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6D2A6C(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = -v3;
  for (i = -1; v5 + i != -1; ++i)
  {
    v7 = *v4;
    v4 += 5;
    if (v7 == a1)
    {
      return *(v4 - 2);
    }
  }

  return 0;
}

void sub_1AF6D2ADC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  os_unfair_recursive_lock_lock_with_options();
  v7 = sub_1AF6D2A6C(a1);
  if (v8 != 2)
  {
    v16 = v7;
    v17 = v9;
    v18 = a3[2];
    if (v8)
    {
      v20 = a3[4];
      v19 = a3 + 4;
      v21 = v20 + 32 * v9;
    }

    else
    {
      sub_1AF6412CC(v18 + v7, 1, a1);
      v22 = 1 << v17;
      if (v17 >= 0x40)
      {
        v22 = 0;
      }

      v24 = a3[4];
      v19 = a3 + 4;
      v23 = v24;
      if (v17 > 0x40)
      {
        v22 = 0;
      }

      v19[11] |= v22;
      v21 = v23 + 32 * v17;
    }

    os_unfair_lock_lock(*(v21 + 24));
    os_unfair_recursive_lock_unlock();
    a4(v18 + v16);
    v15 = *v19 + 32 * v17;
    goto LABEL_16;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v28);
  v10 = v31;
  if (v31 + v30 <= 4096)
  {
    v11 = v28;
    v12 = a3[2];
    sub_1AF6412CC(v12 + v31, 1, v29);
    v13 = 1 << v11;
    if (v11 >= 0x40)
    {
      v13 = 0;
    }

    if (v11 > 0x40)
    {
      v13 = 0;
    }

    a3[15] |= v13;
    v14 = 32 * v11;
    os_unfair_lock_lock(*(a3[4] + v14 + 24));
    os_unfair_recursive_lock_unlock();
    a4(v12 + v10);
    v15 = a3[4] + v14;
LABEL_16:
    os_unfair_lock_unlock(*(v15 + 24));
    return;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v25 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v25);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v32 = 4096;
  v26 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v26);

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AF6D2D90(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    if (v7)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v9 + 24));
      os_unfair_recursive_lock_unlock();
      os_unfair_lock_unlock(*(a3[4] + 32 * v9 + 24));
      return;
    }

    sub_1AF6412CC(a3[2] + v6, 1, a1);
    v10 = 1 << v9;
    if (v9 == 64)
    {
      v10 = 0;
    }

    if (v9 > 0x40)
    {
      v10 = 0;
    }

LABEL_13:
    a3[15] |= v10;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v13);
  if (v16 + v15 <= 4096)
  {
    v9 = v13;
    sub_1AF6412CC(a3[2] + v16, 1, v14);
    v10 = 1 << v9;
    if (v9 == 64)
    {
      v10 = 0;
    }

    if (v9 >= 0x41)
    {
      v10 = 0;
    }

    goto LABEL_13;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v11 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v11);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v12 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v12);

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AF6D2FBC(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v15 = v6;
    v16 = v8;
    v17 = a3[2];
    if (v7)
    {
      v19 = a3[4];
      v18 = a3 + 4;
      v20 = v19 + 32 * v8;
    }

    else
    {
      sub_1AF6412CC(v17 + v6, 1, a1);
      v21 = 1 << v16;
      if (v16 >= 0x40)
      {
        v21 = 0;
      }

      v23 = a3[4];
      v18 = a3 + 4;
      v22 = v23;
      if (v16 > 0x40)
      {
        v21 = 0;
      }

      v18[11] |= v21;
      v20 = v22 + 32 * v16;
    }

    os_unfair_lock_lock(*(v20 + 24));
    os_unfair_recursive_lock_unlock();
    sub_1AF6A4A6C((v17 + v15));
    v14 = *v18 + 32 * v16;
    goto LABEL_16;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v26);
  v9 = v29;
  if (v29 + v28 <= 4096)
  {
    v10 = v26;
    v11 = a3[2];
    sub_1AF6412CC(v11 + v29, 1, v27);
    v12 = 1 << v10;
    if (v10 >= 0x40)
    {
      v12 = 0;
    }

    if (v10 > 0x40)
    {
      v12 = 0;
    }

    a3[15] |= v12;
    v13 = 32 * v10;
    os_unfair_lock_lock(*(a3[4] + v13 + 24));
    os_unfair_recursive_lock_unlock();
    sub_1AF6A4A6C((v11 + v9));
    v14 = a3[4] + v13;
LABEL_16:
    os_unfair_lock_unlock(*(v14 + 24));
    return;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v24 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v24);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v30 = 4096;
  v25 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v25);

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AF6D325C(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    if (v7)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v9 + 24));
      os_unfair_recursive_lock_unlock();
      sub_1AFB611E0(5);
      os_unfair_lock_unlock(*(a3[4] + 32 * v9 + 24));
      return;
    }

    sub_1AF6412CC(a3[2] + v6, 1, a1);
    v10 = 1 << v9;
    if (v9 == 64)
    {
      v10 = 0;
    }

    if (v9 > 0x40)
    {
      v10 = 0;
    }

LABEL_13:
    a3[15] |= v10;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v13);
  if (v16 + v15 <= 4096)
  {
    v9 = v13;
    sub_1AF6412CC(a3[2] + v16, 1, v14);
    v10 = 1 << v9;
    if (v9 == 64)
    {
      v10 = 0;
    }

    if (v9 >= 0x41)
    {
      v10 = 0;
    }

    goto LABEL_13;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v11 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v11);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v17 = 4096;
  v12 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v12);

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AF6D34A4(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = v12 + v6;
    if (v7)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v9 + 24));
      os_unfair_recursive_lock_unlock();
      v13 = CFXMTLCreateSystemDefaultDevice();
      swift_unknownObjectRelease();
      *(v10 + 16) = v13;
      os_unfair_lock_unlock(*(a3[4] + 32 * v9 + 24));
      return;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v16);
  if (v19 + v18 <= 4096)
  {
    v9 = v16;
    v10 = a3[2] + v19;
    sub_1AF6412CC(v10, 1, v17);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v14 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v14);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v20 = 4096;
  v15 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v15);

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF6D36F4(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = (v12 + v6);
    if (v7)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v9 + 24));
      os_unfair_recursive_lock_unlock();
      v13 = *v10;
      v14 = *(a3[4] + 32 * v9 + 24);

      os_unfair_lock_unlock(v14);
      return v13;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v18);
  if (v21 + v20 <= 4096)
  {
    v9 = v18;
    v10 = (a3[2] + v21);
    sub_1AF6412CC(v10, 1, v19);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v16 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v22 = 4096;
  v17 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v17);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6D3944(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = (v12 + v6);
    if (v7)
    {
LABEL_14:
      v13 = 32 * v9;
      os_unfair_lock_lock(*(a3[4] + v13 + 24));
      os_unfair_recursive_lock_unlock();
      v14 = *v10;
      os_unfair_lock_unlock(*(a3[4] + v13 + 24));
      return v14;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v18);
  if (v21 + v20 <= 4096)
  {
    v9 = v18;
    v10 = (a3[2] + v21);
    sub_1AF6412CC(v10, 1, v19);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v16 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v22 = 4096;
  v17 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v17);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6D3B8C(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = v12 + v6;
    if (v7)
    {
LABEL_14:
      v13 = 32 * v9;
      os_unfair_lock_lock(*(a3[4] + v13 + 24));
      os_unfair_recursive_lock_unlock();
      v14 = *(v10 + 16);
      os_unfair_lock_unlock(*(a3[4] + v13 + 24));
      return v14;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v18);
  if (v21 + v20 <= 4096)
  {
    v9 = v18;
    v10 = a3[2] + v21;
    sub_1AF6412CC(v10, 1, v19);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v16 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v22 = 4096;
  v17 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v17);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF6D3DD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t *__return_ptr, uint64_t))
{
  os_unfair_recursive_lock_lock_with_options();
  v8 = sub_1AF6D2A6C(a1);
  if (v9 == 2)
  {
    sub_1AF64FC94(a1, *(a2 + 8), &v29);
    v11 = v32;
    if (v32 + v31 > 4096)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
      v26 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v26);

      MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
      v33 = 4096;
      v27 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v27);

      sub_1AFDFE518();
      __break(1u);
      return;
    }

    v12 = v29;
    v13 = *(a3 + 16);
    sub_1AF6412CC(v13 + v32, 1, v30);
    v14 = 1 << v12;
    if (v12 >= 0x40)
    {
      v14 = 0;
    }

    v17 = *(a3 + 32);
    v16 = (a3 + 32);
    v15 = v17;
    if (v12 > 0x40)
    {
      v14 = 0;
    }

    v16[11] |= v14;
    os_unfair_lock_lock(*(v15 + 32 * v12 + 24));
    os_unfair_recursive_lock_unlock();
    v18 = v13 + v11;
  }

  else
  {
    v19 = v8;
    v12 = v10;
    v20 = *(a3 + 16);
    if (v9)
    {
      v21 = *(a3 + 32);
      v16 = (a3 + 32);
      v22 = v21 + 32 * v10;
    }

    else
    {
      sub_1AF6412CC(v20 + v8, 1, a1);
      v23 = 1 << v12;
      if (v12 >= 0x40)
      {
        v23 = 0;
      }

      v25 = *(a3 + 32);
      v16 = (a3 + 32);
      v24 = v25;
      if (v12 > 0x40)
      {
        v23 = 0;
      }

      v16[11] |= v23;
      v22 = v24 + 32 * v12;
    }

    os_unfair_lock_lock(*(v22 + 24));
    os_unfair_recursive_lock_unlock();
    v18 = v20 + v19;
  }

  a4(&v29, v18);
  if (v4)
  {
    os_unfair_lock_unlock(*(*v16 + 32 * v12 + 24));
  }

  else
  {
    os_unfair_lock_unlock(*(*v16 + 32 * v12 + 24));
  }
}