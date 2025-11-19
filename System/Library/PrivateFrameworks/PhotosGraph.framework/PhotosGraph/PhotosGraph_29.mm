void sub_22F31DF48(void *a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6)
{
  if ([a1 isHome])
  {
    v11 = [a1 collection];
    v39 = [v11 preciseAddressNodes];

    v12 = [v39 momentNodes];
    v13 = [v12 count];

    v14 = v13 / a3;
    if (v14 > 0.0)
    {
      v15 = *a4;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_22F13FB00(0, *(v15 + 2) + 1, 1, v15);
        *a4 = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      v19 = v39;
      if (v18 >= v17 >> 1)
      {
        *a4 = sub_22F13FB00((v17 > 1), v18 + 1, 1, v15);
        v19 = v39;
      }

      v20 = *a4;
      *(v20 + 2) = v18 + 1;
      v21 = &v20[64 * v18];
      v21[32] = 15;
      *(v21 + 5) = 1701670728;
      *(v21 + 6) = 0xE400000000000000;
LABEL_15:
      *(v21 + 7) = 0;
      *(v21 + 8) = 0;
      *(v21 + 9) = v14;
      *(v21 + 10) = a5;
      *(v21 + 11) = a6;
      return;
    }
  }

  else
  {
    v22 = [a1 localizedName];
    if (v22)
    {
      v23 = v22;
      v24 = sub_22F740E20();
      v26 = v25;

      v27 = [a1 collection];
      v39 = [v27 preciseAddressNodes];

      v28 = [v39 momentNodes];
      v29 = [v28 count];

      v14 = v29 / a3;
      if (v14 > 0.0)
      {
        v30 = *a4;

        v31 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v30;
        if ((v31 & 1) == 0)
        {
          v30 = sub_22F13FB00(0, *(v30 + 2) + 1, 1, v30);
          *a4 = v30;
        }

        v33 = *(v30 + 2);
        v32 = *(v30 + 3);
        v34 = v39;
        if (v33 >= v32 >> 1)
        {
          *a4 = sub_22F13FB00((v32 > 1), v33 + 1, 1, v30);
          v34 = v39;
        }

        v35 = *a4;
        *(v35 + 2) = v33 + 1;
        v21 = &v35[64 * v33];
        v21[32] = 16;
        *(v21 + 5) = v24;
        *(v21 + 6) = v26;
        goto LABEL_15;
      }
    }

    else
    {
      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v36 = sub_22F740B90();
      __swift_project_value_buffer(v36, qword_2810B4CE0);
      v39 = sub_22F740B70();
      v37 = sub_22F7415E0();
      if (os_log_type_enabled(v39, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_22F0FC000, v39, v37, "GraphEntityRanker: Work node does not have a localized name", v38, 2u);
        MEMORY[0x2319033A0](v38, -1, -1);
      }
    }
  }
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22F31E338(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = a1 + 32;
  v37 = a1 + 32;
  do
  {
    v42 = v8;
    v10 = (v9 + 32 * v7);
    for (i = v7; ; ++i)
    {
      if (i >= v6)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_30;
      }

      sub_22F13A100(v10, v46);
      if (!swift_dynamicCast())
      {
        if (qword_2810A9400 != -1)
        {
          swift_once();
        }

        v16 = sub_22F740B90();
        __swift_project_value_buffer(v16, qword_2810B4CE0);
        v17 = sub_22F740B70();
        v18 = sub_22F7415E0();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_5;
        }

        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = v18;
        v21 = v17;
        v22 = "GraphEntityRanker: Unexpectedly encountered nil localization key.";
        goto LABEL_4;
      }

      v12 = *a2;
      if (!*(*a2 + 16))
      {

        goto LABEL_17;
      }

      v13 = sub_22F1229E8(v44, v45);
      v15 = v14;

      if (v15)
      {
        break;
      }

LABEL_17:
      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v23 = sub_22F740B90();
      __swift_project_value_buffer(v23, qword_2810B4CE0);
      v17 = sub_22F740B70();
      v24 = sub_22F7415E0();
      if (!os_log_type_enabled(v17, v24))
      {
        goto LABEL_5;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = v24;
      v21 = v17;
      v22 = "GraphEntityRanker: Unexpectedly encountered nil meaning label or identifier.";
LABEL_4:
      _os_log_impl(&dword_22F0FC000, v21, v20, v22, v19, 2u);
      MEMORY[0x2319033A0](v19, -1, -1);
LABEL_5:

      v10 += 4;
      if (v7 == v6)
      {
        return;
      }
    }

    v25 = (*(v12 + 56) + 32 * v13);
    v26 = v25[1];
    v36 = *v25;
    v28 = v25[2];
    v27 = v25[3];
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);

    v29 = [a3 countForObject_];
    swift_unknownObjectRelease();
    v30 = *a4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_22F13FB00(0, *(v42 + 2) + 1, 1, v42);
    }

    v33 = *(v42 + 2);
    v32 = *(v42 + 3);
    if (v33 >= v32 >> 1)
    {
      v42 = sub_22F13FB00((v32 > 1), v33 + 1, 1, v42);
    }

    v8 = v42;
    *(v42 + 2) = v33 + 1;
    v34 = &v42[64 * v33];
    v34[32] = 6;
    v35 = *(v46 + 3);
    *(v34 + 33) = v46[0];
    *(v34 + 9) = v35;
    *(v34 + 5) = v36;
    *(v34 + 6) = v26;
    *(v34 + 7) = v28;
    *(v34 + 8) = v27;
    *(v34 + 9) = v29 / v30;
    *(v34 + 10) = a5;
    *(v34 + 11) = a6;
    v9 = v37;
  }

  while (v7 != v6);
}

uint64_t sub_22F31E70C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = *(a1 + 80);
    v50 = *(a1 + 64);
    v51 = v4;
    v5 = *(a1 + 48);
    v49[0] = *(a1 + 32);
    v49[1] = v5;
    v7 = *(&v51 + 1);
    v6 = v51;
    v8 = *(&v50 + 1);
    v9 = *(&v5 + 1);
    v10 = v50;
    v11 = *(&v49[0] + 1);
    v12 = v5;
    v13 = v49[0];
    result = sub_22F3229A4(v49, v43);
    v43[0] = v13;
    v44 = v11;
    v45 = __PAIR128__(v9, v12);
    v46 = v10;
    v47 = v8;
    v48 = __PAIR128__(v7, v6);
    v36 = a1;
    if (v1 == 1)
    {
LABEL_3:
      v16 = v8;
    }

    else
    {
      v27 = a1 + 32;
      v28 = 1;
      while (2)
      {
        v29 = (v27 + (v28 << 6));
        while (1)
        {
          if (v28 >= v1)
          {
            __break(1u);
LABEL_22:
            __break(1u);
            return result;
          }

          v30 = v29[1];
          v39 = *v29;
          v40 = v30;
          v31 = v29[3];
          v41 = v29[2];
          v42 = v31;
          v32 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_22;
          }

          v16 = *(&v41 + 1);
          if (v8 < *(&v41 + 1))
          {
            break;
          }

          v43[0] = v13;
          v44 = v11;
          *&v45 = v12;
          *(&v45 + 1) = v9;
          v46 = v10;
          v47 = v8;
          ++v28;
          v29 += 4;
          *&v48 = v6;
          *(&v48 + 1) = v7;
          if (v32 == v1)
          {
            goto LABEL_3;
          }
        }

        v33 = v27;
        sub_22F3229A4(&v39, v38);
        result = sub_22F322A00(v43);
        v27 = v33;
        v7 = *(&v42 + 1);
        v6 = v42;
        v9 = *(&v40 + 1);
        v10 = v41;
        v11 = *(&v39 + 1);
        v12 = v40;
        v13 = v39;
        v43[0] = v39;
        v44 = *(&v39 + 1);
        v45 = v40;
        v46 = v41;
        v47 = v16;
        v8 = v16;
        v28 = v32;
        v48 = v42;
        if (v32 != v1)
        {
          continue;
        }

        break;
      }
    }

    sub_22F322A00(v43);
    if (v16 <= 0.0)
    {
      return MEMORY[0x277D84F90];
    }

    else
    {
      *&v39 = v3;
      sub_22F146C14(0, v1, 0);
      v2 = v39;
      v17 = (v36 + 48);
      do
      {
        v18 = *(v17 - 16);
        v19 = *v17;
        v20 = v17[2];
        v34 = v17[1];
        v35 = *(v17 - 1);
        v21 = *(v17 + 3);
        v22 = v17[5];
        v37 = v17[4];
        v24 = *(v2 + 16);
        v23 = *(v2 + 24);
        *&v39 = v2;

        if (v24 >= v23 >> 1)
        {
          sub_22F146C14((v23 > 1), v24 + 1, 1);
          v2 = v39;
        }

        *(v2 + 16) = v24 + 1;
        v25 = v2 + (v24 << 6);
        *(v25 + 32) = v18;
        v26 = *(v38 + 3);
        *(v25 + 33) = v38[0];
        *(v25 + 36) = v26;
        *(v25 + 40) = v35;
        *(v25 + 48) = v19;
        *(v25 + 56) = v34;
        *(v25 + 64) = v20;
        *(v25 + 72) = v21 / v16;
        v17 += 8;
        *(v25 + 80) = v37;
        *(v25 + 88) = v22;
        --v1;
      }

      while (v1);
    }
  }

  return v2;
}

uint64_t sub_22F31E980(void *a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v6 = qword_2810B4DF0;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphMeaningEntities", 24, 2u, v7, 0, v6, v28);
  sub_22F741690();
  if (v2)
  {
    sub_22F1B2BBC(0);

    return v3;
  }

  v25 = v5;
  v8 = [a1 localeIdentifier];
  v24 = sub_22F740E20();
  v10 = v9;

  v11 = [objc_opt_self() momentNodesInGraph_];
  v12 = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
  v29 = 0;
  v27 = sub_22F14FEE8(MEMORY[0x277D84F90]);
  v13 = swift_allocObject();
  v13[2] = &v27;
  v13[3] = v12;
  v13[4] = &v29;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22F322BA4;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22F15A3B8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107F34;
  aBlock[3] = &block_descriptor_151;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [v11 enumerateIdentifiersAsCollectionsWithBlock_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v19 = [v16 allObjects];
    v20 = sub_22F741180();

    v21 = v16;

    sub_22F31E338(v20, &v27, v21, &v29, v24, v10);
    v3 = v22;

    swift_bridgeObjectRelease_n();
    if ((v25 & 1) == 0)
    {
      v23 = sub_22F31E70C(v3);

      v3 = v23;
    }

    sub_22F7416A0();

    sub_22F1B2BBC(0);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F31ED48(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  v228 = *(a2 + 16);
  LOBYTE(v7) = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    goto LABEL_164;
  }

  while (1)
  {
    v8 = qword_2810B4DF0;
    *&v9 = CACurrentMediaTime();
    sub_22F1B560C("rankGraphSceneEntities", 22, 2u, v9, 0, v8, v242);
    sub_22F741690();
    if (v3)
    {
      sub_22F1B2BBC(0);
    }

    v231 = v6;
    v204 = v7;
    v10 = [a1 localeIdentifier];
    v196 = sub_22F740E20();
    v205 = v11;

    v12 = swift_allocObject();
    v13 = MEMORY[0x277D84F98];
    v14 = v12;
    *(v12 + 16) = MEMORY[0x277D84F98];
    v212 = v12;
    v213 = v12 + 16;
    v211 = swift_allocObject();
    *(v211 + 16) = v13;
    v225 = v211 + 16;
    v210 = swift_allocObject();
    *(v210 + 16) = v13;
    v216 = v210 + 16;
    v209 = swift_allocObject();
    *(v209 + 16) = v13;
    v197 = v209 + 16;
    v15 = [objc_allocWithZone(MEMORY[0x277D3B4C8]) init];
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    v206 = v16 + 16;
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    v200 = v17 + 16;
    v18 = [objc_opt_self() momentNodesInGraph_];
    sub_22F120634(0, &qword_2810A8FE8, off_27887B390);
    v222 = v18;
    v203 = [swift_getObjCClassFromMetadata() nodesInGraph_];
    v208 = [objc_opt_self() edgesFromNodes:v18 toNodes:v203];
    v19 = swift_allocObject();
    v19[2] = v15;
    v19[3] = v16;
    v19[4] = v17;
    v19[5] = v209;
    v19[6] = v14;
    v19[7] = v211;
    v19[8] = v210;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_22F322B24;
    *(v20 + 24) = v19;
    v239 = sub_22F250854;
    v240 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v236 = 1107296256;
    v237 = sub_22F107E24;
    v238 = &block_descriptor_133;
    v21 = _Block_copy(&aBlock);
    v219 = v15;

    [v208 enumerateUsingBlock_];
    _Block_release(v21);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    sub_22F120634(0, &qword_2810A8F40, off_27887AD68);
    v202 = [swift_getObjCClassFromMetadata() nodesInGraph_];
    v207 = [objc_opt_self() edgesFromNodes:v18 toNodes:v202];
    v22 = swift_allocObject();
    v22[2] = v219;
    v22[3] = v16;
    v22[4] = v17;
    v22[5] = v209;
    v22[6] = v212;
    v22[7] = v211;
    v22[8] = v210;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_22F322D70;
    *(v23 + 24) = v22;
    v239 = sub_22F26B650;
    v240 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v236 = 1107296256;
    v237 = sub_22F322D74;
    v238 = &block_descriptor_142;
    v24 = _Block_copy(&aBlock);
    v201 = v219;

    [v207 enumerateUsingBlock_];
    _Block_release(v24);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if (v24)
    {
      goto LABEL_166;
    }

    v25 = MEMORY[0x277D84F90];
    v220 = sub_22F150008(MEMORY[0x277D84F90]);
    v3 = v210 + 16;
    swift_beginAccess();
    a1 = (*v216 + 64);
    v26 = 1 << *(*v216 + 32);
    v27 = v26 < 64 ? ~(-1 << v26) : -1;
    v7 = v27 & *(*v216 + 64);
    v28 = (v26 + 63) >> 6;

    v30 = 0;
    v6 = 0;
LABEL_11:
    if (v7)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v34 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_158;
      }

      if (v34 >= v28)
      {
        break;
      }

      v7 = *(a1 + v34);
      ++v6;
      if (v7)
      {
        v6 = v34;
LABEL_10:
        v31 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v32 = v31 | (v6 << 6);
        v33 = *(*(v29 + 56) + 8 * v32);
        if (v33 >= v231)
        {
          v188 = v30 + 1;
          if (!__OFADD__(v30, 1))
          {
            v186 = v29;
            v35 = (*(v29 + 48) + 16 * v32);
            v36 = v35[1];
            v192 = *v35;

            v189 = sub_22F14E214(v25);
            swift_beginAccess();
            v37 = *v197;
            v187 = v36;
            if (*(*v197 + 16) && (v38 = sub_22F1229E8(v192, v36), (v39 & 1) != 0))
            {
              v40 = *(*(v37 + 56) + 8 * v38);
            }

            else
            {
              v40 = sub_22F14F1C0(v25);
            }

            swift_endAccess();
            v41 = 0;
            v42 = v40 + 64;
            v43 = 1 << *(v40 + 32);
            if (v43 < 64)
            {
              v44 = ~(-1 << v43);
            }

            else
            {
              v44 = -1;
            }

            v3 = v44 & *(v40 + 64);
            v45 = (v43 + 63) >> 6;
            v46 = v33;
            v217 = v40 + 64;
            v195 = v45;
            v223 = v40;
            if (!v3)
            {
LABEL_25:
              while (1)
              {
                v47 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
                  goto LABEL_163;
                }

                if (v47 >= v45)
                {

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  aBlock = v220;
                  v3 = v187;
                  sub_22F132720(v189, v192, v187, isUniquelyReferenced_nonNull_native);

                  v220 = aBlock;
                  v25 = MEMORY[0x277D84F90];
                  v30 = v188;
                  v29 = v186;
                  goto LABEL_11;
                }

                v3 = *(v42 + 8 * v47);
                ++v41;
                if (v3)
                {
                  v41 = v47;
                  break;
                }
              }
            }

            while (2)
            {
              v48 = __clz(__rbit64(v3));
              v3 &= v3 - 1;
              v49 = v48 | (v41 << 6);
              v50 = (*(v40 + 48) + 16 * v49);
              v52 = *v50;
              v51 = v50[1];
              v193 = *(*(v40 + 56) + 8 * v49);
              swift_beginAccess();
              v53 = *v225;
              v54 = *(*v225 + 16);

              v194 = v52;
              if (v54 && (v55 = sub_22F1229E8(v52, v51), (v56 & 1) != 0))
              {
                v57 = *(*(v53 + 56) + 8 * v55);
                swift_endAccess();
                if (v57 >= v228)
                {
LABEL_32:
                  v185 = swift_isUniquelyReferenced_nonNull_native();
                  aBlock = v189;
                  v59 = sub_22F1229E8(v52, v51);
                  v60 = *(v189 + 16);
                  v61 = (v58 & 1) == 0;
                  v62 = v60 + v61;
                  if (__OFADD__(v60, v61))
                  {
                    goto LABEL_172;
                  }

                  if (*(v189 + 24) >= v62)
                  {
                    v40 = v223;
                    if ((v185 & 1) == 0)
                    {
                      v191 = v58;
                      sub_22F1341D8();
                      v58 = v191;
                      v40 = v223;
                    }
                  }

                  else
                  {
                    v190 = v58;
                    sub_22F12572C(v62, v185);
                    v63 = sub_22F1229E8(v194, v51);
                    v65 = v64 & 1;
                    v58 = v190;
                    if ((v190 & 1) != v65)
                    {
                      goto LABEL_174;
                    }

                    v59 = v63;
                    v40 = v223;
                  }

                  v66 = v193 / v46;
                  if (v58)
                  {

                    v189 = aBlock;
                    *(aBlock[7] + 8 * v59) = v66;
                  }

                  else
                  {
                    v67 = aBlock;
                    aBlock[(v59 >> 6) + 8] |= 1 << v59;
                    v68 = (v67[6] + 16 * v59);
                    *v68 = v194;
                    v68[1] = v51;
                    *(v67[7] + 8 * v59) = v66;
                    v69 = v67[2];
                    v70 = __OFADD__(v69, 1);
                    v71 = v69 + 1;
                    if (v70)
                    {
                      goto LABEL_173;
                    }

                    v189 = v67;
                    v67[2] = v71;
                  }

                  goto LABEL_38;
                }
              }

              else
              {
                swift_endAccess();
                if (v228 <= 0)
                {
                  goto LABEL_32;
                }
              }

              v40 = v223;
LABEL_38:
              v42 = v217;
              v45 = v195;
              if (!v3)
              {
                goto LABEL_25;
              }

              continue;
            }
          }

LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        goto LABEL_11;
      }
    }

    v73 = sub_22F14E214(MEMORY[0x277D84F90]);
    v3 = v213;
    swift_beginAccess();
    v74 = *v213;
    v6 = *v213 + 64;
    v75 = 1 << *(*v213 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & *(*v213 + 64);
    v78 = (v75 + 63) >> 6;
    v79 = v30;
    v80 = v73;

    v81 = 0;
LABEL_50:
    v232 = v80;
    while (v77)
    {
LABEL_58:
      v83 = __clz(__rbit64(v77));
      v77 &= v77 - 1;
      v84 = v83 | (v81 << 6);
      v85 = (*(v74 + 48) + 16 * v84);
      v3 = *v85;
      a1 = v85[1];
      v7 = *(*(v74 + 56) + 8 * v84);
      swift_beginAccess();
      v86 = *v225;
      v87 = *(*v225 + 16);

      if (v87 && (v88 = sub_22F1229E8(v3, a1), (v89 & 1) != 0))
      {
        v90 = *(*(v86 + 56) + 8 * v88);
        swift_endAccess();
        if (v90 >= v228)
        {
LABEL_61:
          v91 = log(v79 / v7);
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v232;
          v92 = sub_22F1229E8(v3, a1);
          v94 = v232[2];
          v95 = (v93 & 1) == 0;
          v70 = __OFADD__(v94, v95);
          v96 = v94 + v95;
          if (v70)
          {
            goto LABEL_170;
          }

          if (v232[3] < v96)
          {
            v233 = v93;
            sub_22F12572C(v96, v7);
            v92 = sub_22F1229E8(v3, a1);
            v98 = v97 & 1;
            v93 = v233;
            if ((v233 & 1) != v98)
            {
LABEL_174:
              result = sub_22F7420C0();
              __break(1u);
              return result;
            }

LABEL_66:
            if (v93)
            {
              goto LABEL_67;
            }

LABEL_69:
            v80 = aBlock;
            aBlock[(v92 >> 6) + 8] |= 1 << v92;
            v99 = (v80[6] + 16 * v92);
            *v99 = v3;
            v99[1] = a1;
            *(v80[7] + 8 * v92) = v91;
            v100 = v80[2];
            v70 = __OFADD__(v100, 1);
            v101 = v100 + 1;
            if (!v70)
            {
              v80[2] = v101;
              goto LABEL_50;
            }

LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          if (v7)
          {
            goto LABEL_66;
          }

          v234 = v92;
          LOBYTE(v7) = v93;
          sub_22F1341D8();
          v92 = v234;
          if ((v7 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_67:
          v3 = v92;

          v80 = aBlock;
          *(aBlock[7] + 8 * v3) = v91;
          goto LABEL_50;
        }
      }

      else
      {
        swift_endAccess();
        if (v228 <= 0)
        {
          goto LABEL_61;
        }
      }

      v80 = v232;
    }

    while (1)
    {
      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_159;
      }

      if (v82 >= v78)
      {
        break;
      }

      v77 = *(v6 + 8 * v82);
      ++v81;
      if (v77)
      {
        v81 = v82;
        goto LABEL_58;
      }
    }

    v228 = sub_22F14E214(MEMORY[0x277D84F90]);
    v102 = 0;
    v103 = v220 + 64;
    v104 = 1 << *(v220 + 32);
    v105 = v104 < 64 ? ~(-1 << v104) : -1;
    v106 = v105 & *(v220 + 64);
    v107 = (v104 + 63) >> 6;
    v214 = v107;
LABEL_76:
    v108 = v222;
    if (!v106)
    {
      break;
    }

    v7 = v102;
LABEL_81:
    v109 = *(*(v220 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v106)))));
    v106 &= v106 - 1;
    v110 = v109 + 64;
    v111 = 1 << *(v109 + 32);
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    else
    {
      v112 = -1;
    }

    v6 = v112 & *(v109 + 64);
    v113 = (v111 + 63) >> 6;
    v224 = v109;

    v114 = 0;
    while (v6)
    {
LABEL_92:
      v116 = __clz(__rbit64(v6)) | (v114 << 6);
      v117 = (*(v224 + 48) + 16 * v116);
      v118 = *v117;
      a1 = v117[1];
      v119 = *(*(v224 + 56) + 8 * v116);
      v120 = v80[2];

      v121 = 0.0;
      v226 = v118;
      if (v120)
      {
        v122 = sub_22F1229E8(v118, a1);
        v80 = v232;
        if (v123)
        {
          v121 = *(v232[7] + 8 * v122);
        }
      }

      v3 = v80;
      v6 &= v6 - 1;
      v124 = v119 * v121;
      if (*(v228 + 16) && (v125 = sub_22F1229E8(v226, a1), v3 = v232, (v126 & 1) != 0))
      {
        if (*(*(v228 + 56) + 8 * v125) < v124)
        {
          goto LABEL_98;
        }

LABEL_86:

        v80 = v3;
      }

      else
      {
        if (v124 <= 0.0)
        {
          goto LABEL_86;
        }

LABEL_98:
        v198 = swift_isUniquelyReferenced_nonNull_native();
        v3 = v226;
        aBlock = v228;
        v127 = sub_22F1229E8(v226, a1);
        v129 = *(v228 + 16);
        v130 = (v128 & 1) == 0;
        v70 = __OFADD__(v129, v130);
        v131 = v129 + v130;
        if (v70)
        {
          goto LABEL_167;
        }

        if (*(v228 + 24) >= v131)
        {
          v80 = v232;
          if (v198)
          {
            if ((v128 & 1) == 0)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v199 = v127;
            v230 = v128;
            sub_22F1341D8();
            v80 = v232;
            v127 = v199;
            if ((v230 & 1) == 0)
            {
              goto LABEL_102;
            }
          }

LABEL_106:
          v3 = v127;

          v228 = aBlock;
          *(aBlock[7] + 8 * v3) = v124;
        }

        else
        {
          v229 = v128;
          sub_22F12572C(v131, v198);
          v127 = sub_22F1229E8(v226, a1);
          if ((v229 & 1) != (v132 & 1))
          {
            goto LABEL_174;
          }

          v80 = v232;
          if (v229)
          {
            goto LABEL_106;
          }

LABEL_102:
          v133 = aBlock;
          aBlock[(v127 >> 6) + 8] |= 1 << v127;
          v134 = (v133[6] + 16 * v127);
          *v134 = v226;
          v134[1] = a1;
          *(v133[7] + 8 * v127) = v124;
          v135 = v133[2];
          v70 = __OFADD__(v135, 1);
          v136 = v135 + 1;
          if (v70)
          {
            goto LABEL_168;
          }

          v228 = v133;
          v133[2] = v136;
        }
      }
    }

    while (1)
    {
      v115 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      if (v115 >= v113)
      {

        v102 = v7;
        v107 = v214;
        v103 = v220 + 64;
        goto LABEL_76;
      }

      v6 = *(v110 + 8 * v115);
      ++v114;
      if (v6)
      {
        v114 = v115;
        goto LABEL_92;
      }
    }

    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_once();
  }

  while (1)
  {
    v7 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      goto LABEL_160;
    }

    if (v7 >= v107)
    {
      break;
    }

    v106 = *(v103 + 8 * v7);
    ++v102;
    if (v106)
    {
      goto LABEL_81;
    }
  }

  v137 = [objc_opt_self() suggestableSceneNames];
  v3 = sub_22F741420();

  v138 = 0;
  v241 = MEMORY[0x277D84FA0];
  v139 = 1 << *(v3 + 32);
  v140 = -1;
  if (v139 < 64)
  {
    v140 = ~(-1 << v139);
  }

  v6 = v3 + 56;
  v7 = v140 & *(v3 + 56);
  v141 = (v139 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v142 = v138;
LABEL_117:
      v143 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v144 = (*(v3 + 48) + ((v142 << 10) | (16 * v143)));
      v145 = *v144;
      v146 = v144[1];
      v147 = sub_22F740EA0();
      sub_22F10BBDC(&aBlock, v147, v148);

      if (!v7)
      {
        goto LABEL_113;
      }
    }
  }

  while (1)
  {
LABEL_113:
    v142 = v138 + 1;
    if (__OFADD__(v138, 1))
    {
      goto LABEL_161;
    }

    if (v142 >= v141)
    {
      break;
    }

    v7 = *(v6 + 8 * v142);
    ++v138;
    if (v7)
    {
      v138 = v142;
      goto LABEL_117;
    }
  }

  v7 = v228 + 64;
  v149 = 1 << *(v228 + 32);
  if (v149 < 64)
  {
    v150 = ~(-1 << v149);
  }

  else
  {
    v150 = -1;
  }

  v6 = v150 & *(v228 + 64);
  v151 = (v149 + 63) >> 6;

  v3 = 0;
  v227 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v6)
    {
LABEL_128:
      v154 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v155 = v154 | (v3 << 6);
      v156 = *(*(v152 + 56) + 8 * v155);
      if (v156 <= 0.0)
      {
        continue;
      }

      v157 = *(v152 + 48) + 16 * v155;
      a1 = *v157;
      v158 = *(v157 + 8);
      swift_beginAccess();
      v159 = *v206;
      v160 = *(*v206 + 16);

      if (!v160 || (v161 = sub_22F1229E8(a1, v158), (v162 & 1) == 0))
      {
        swift_endAccess();
        goto LABEL_135;
      }

      v163 = *(*(v159 + 56) + 8 * v161);
      swift_endAccess();
      swift_beginAccess();
      v164 = *v200;
      if (!*(*v200 + 16) || (v165 = sub_22F1229E8(a1, v158), (v166 & 1) == 0))
      {
        swift_endAccess();
        v108 = v222;
LABEL_135:

        v152 = v228;
        continue;
      }

      v167 = (*(v164 + 56) + 16 * v165);
      v168 = v167[1];
      v218 = *v167;
      swift_endAccess();
      v169 = v241;
      v215 = v168;
      if (*(v241 + 16))
      {
        v170 = *(v241 + 40);
        sub_22F742170();

        sub_22F740D60();
        v171 = sub_22F7421D0();
        v172 = -1 << *(v169 + 32);
        v173 = v171 & ~v172;
        if ((*(v169 + 56 + ((v173 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v173))
        {
          v221 = ~v172;
          while (1)
          {
            v174 = (*(v169 + 48) + 16 * v173);
            v175 = *v174 == a1 && v174[1] == v158;
            if (v175 || (sub_22F742040() & 1) != 0)
            {
              break;
            }

            v173 = (v173 + 1) & v221;
            if (((*(v169 + 56 + ((v173 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v173) & 1) == 0)
            {
              goto LABEL_147;
            }
          }

          v156 = v5 + v156;
          goto LABEL_149;
        }
      }

      else
      {
      }

LABEL_147:

LABEL_149:
      aBlock = v163;
      v176 = sub_22F742010();
      v178 = v177;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v227 = sub_22F13FB00(0, *(v227 + 2) + 1, 1, v227);
      }

      v108 = v222;
      v152 = v228;
      v180 = *(v227 + 2);
      v179 = *(v227 + 3);
      a1 = (v180 + 1);
      if (v180 >= v179 >> 1)
      {
        v227 = sub_22F13FB00((v179 > 1), v180 + 1, 1, v227);
        v152 = v228;
      }

      *(v227 + 2) = a1;
      v181 = &v227[64 * v180];
      v181[32] = 5;
      v182 = *(&aBlock + 3);
      *(v181 + 33) = aBlock;
      *(v181 + 9) = v182;
      *(v181 + 5) = v218;
      *(v181 + 6) = v215;
      *(v181 + 7) = v176;
      *(v181 + 8) = v178;
      *(v181 + 9) = v156;
      *(v181 + 10) = v196;
      *(v181 + 11) = v205;
      continue;
    }

    break;
  }

  while (1)
  {
    v153 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_162;
    }

    if (v153 >= v151)
    {
      break;
    }

    v6 = *(v7 + 8 * v153);
    ++v3;
    if (v6)
    {
      v3 = v153;
      goto LABEL_128;
    }
  }

  if ((v204 & 1) == 0)
  {
    v183 = sub_22F31E70C(v227);

    v227 = v183;
  }

  sub_22F7416A0();

  sub_22F1B2BBC(0);

  return v227;
}

uint64_t sub_22F320284(void *a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v6 = qword_2810B4DF0;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphPublicEventEntities", 28, 2u, v7, 0, v6, v34);
  sub_22F741690();
  if (v2)
  {
    sub_22F1B2BBC(0);

    return v3;
  }

  v8 = [a1 localeIdentifier];
  v9 = sub_22F740E20();
  v11 = v10;

  sub_22F120634(0, &qword_2810A8F80, off_27887B300);
  v12 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v35 = 0;
  v13 = MEMORY[0x277D84F90];
  v33 = sub_22F14F1C0(MEMORY[0x277D84F90]);
  v32 = sub_22F14F1C0(v13);
  v31 = sub_22F14F1C0(v13);
  v14 = swift_allocObject();
  v14[2] = &v35;
  v14[3] = &v33;
  v14[4] = &v32;
  v14[5] = &v31;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22F322A98;
  *(v15 + 24) = v14;
  aBlock[4] = sub_22F250854;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_80;
  v16 = _Block_copy(aBlock);

  [v12 enumerateUsingBlock_];
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    LOBYTE(aBlock[0]) = 8;
    v18 = v35;

    v20 = sub_22F31D2D0(v19, aBlock, v18, v9, v11);

    LOBYTE(aBlock[0]) = 9;
    v21 = v35;

    v23 = sub_22F31D2D0(v22, aBlock, v21, v9, v11);

    LOBYTE(aBlock[0]) = 10;
    v24 = v35;

    v26 = sub_22F31D2D0(v25, aBlock, v24, v9, v11);

    if ((v5 & 1) == 0)
    {
      v27 = sub_22F31E70C(v20);

      v28 = sub_22F31E70C(v23);

      v29 = sub_22F31E70C(v26);

      v26 = v29;
      v23 = v28;
      v20 = v27;
    }

    sub_22F7416A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB36F8, &unk_22F785BE0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_22F7707D0;
    *(v3 + 32) = v20;
    *(v3 + 40) = v23;
    *(v3 + 48) = v26;

    sub_22F1B2BBC(0);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F32071C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v76 = a4;
  v82 = a3;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v77 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3700, &qword_22F785BF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v64 - v17;
  v19 = sub_22F73F760();
  v83 = *(v19 - 8);
  v20 = *(v83 + 64);
  MEMORY[0x28223BE20](v19);
  v79 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22F73F7C0();
  v80 = *(v22 - 8);
  v81 = v22;
  v23 = *(v80 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v26 = qword_2810B4DF0;
  *&v27 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphHolidayEntities", 24, 2u, v27, 0, v26, v92);
  sub_22F741690();
  if (v5)
  {
    sub_22F1B2BBC(0);

LABEL_14:

    return v18;
  }

  v74 = a5;
  v28 = [a1 localeIdentifier];
  v73 = sub_22F740E20();
  v30 = v29;

  v31 = [objc_opt_self() currentLocale];
  sub_22F73F740();

  sub_22F73F770();
  v32 = v83;
  if ((*(v83 + 48))(v18, 1, v19) == 1)
  {

    sub_22F120ADC(v18, &qword_27DAB3700, &qword_22F785BF0);
    (*(v80 + 8))(v25, v81);
    sub_22F1B2BBC(0);

    v18 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v67 = v30;
  v68 = v10;
  v69 = v9;
  v33 = *(v32 + 32);
  v65 = v19;
  v33(v79, v18, v19);
  result = sub_22F73F700();
  v70 = result;
  v71 = v35;
  v66 = 10 * v82;
  if ((v82 * 10) >> 64 != (10 * v82) >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  v36 = objc_allocWithZone(MEMORY[0x277D276D8]);
  v37 = sub_22F73F730();
  v72 = [v36 initWithLocale_];

  sub_22F120634(0, &qword_2810A8FA8, off_27887AE20);
  v38 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v39 = objc_opt_self();
  v40 = sub_22F73F5B0();
  v41 = [v39 dateByAddingWeeksOfYear:-1 toDate:v40];

  sub_22F73F640();
  v42 = sub_22F73F5B0();
  v43 = [v39 dateByAddingWeeksOfYear:4 toDate:v42];

  sub_22F73F640();
  v93 = MEMORY[0x277D84FA0];
  v76 = v38;
  v44 = [v38 holidayNames];
  sub_22F741420();

  v45 = sub_22F741410();

  v46 = sub_22F73F5B0();
  v47 = sub_22F73F5B0();
  v48 = sub_22F740DF0();

  v49 = swift_allocObject();
  *(v49 + 16) = &v93;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_22F322A54;
  *(v50 + 24) = v49;
  v71 = v49;
  v90 = sub_22F322A5C;
  v91 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_22F31D50C;
  v89 = &block_descriptor_62_0;
  v51 = _Block_copy(&aBlock);

  [v72 enumerateEventRulesWithNames:v45 betweenLocalDate:v46 andLocalDate:v47 supportedCountryCode:v48 usingBlock:v51];

  _Block_release(v51);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = 1.0 / v66;
  v85 = MEMORY[0x277D84F90];
  v84 = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = &v93;
  *(v53 + 32) = v82;
  *(v53 + 40) = &v84;
  v54 = v67;
  *(v53 + 48) = v73;
  *(v53 + 56) = v54;
  *(v53 + 64) = &v85;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_22F322A84;
  *(v55 + 24) = v53;
  v90 = sub_22F26B650;
  v91 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_22F322D74;
  v89 = &block_descriptor_71;
  v56 = _Block_copy(&aBlock);

  v57 = v76;
  [v76 enumerateUsingBlock_];
  _Block_release(v56);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  v58 = v69;
  v59 = v68;
  if ((v56 & 1) == 0)
  {
    v60 = v65;
    if ((v75 & 1) == 0 && v84 == 1)
    {

      v62 = sub_22F31E70C(v61);
      v57 = v76;

      v85 = v62;
    }

    sub_22F7416A0();

    v63 = *(v59 + 8);
    v63(v77, v58);
    v63(v78, v58);
    (*(v83 + 8))(v79, v60);
    (*(v80 + 8))(v25, v81);
    v18 = v85;

    sub_22F1B2BBC(0);

    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_22F3211F0(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  LOBYTE(v7) = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
LABEL_52:
    swift_once();
  }

  v8 = qword_2810B4DF0;
  *&v9 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphTripEntities", 21, 2u, v9, 0, v8, v104);
  sub_22F741690();
  if (v4)
  {
    sub_22F1B2BBC(0);
  }

  v83 = v5;
  v11 = [a1 localeIdentifier];
  v82 = sub_22F740E20();
  v86 = v12;

  sub_22F120634(0, &qword_2810A8F38, off_27887ADC8);
  v13 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v103 = 0;
  v102 = sub_22F14F1C0(MEMORY[0x277D84F90]);
  v14 = [objc_allocWithZone(PGGraphLocationHelper) initWithGraph_];
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &v103;
  v15[4] = &v102;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22F322998;
  *(v16 + 24) = v15;
  *&v100 = sub_22F26B650;
  *(&v100 + 1) = v16;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v99 = sub_22F322D74;
  *(&v99 + 1) = &block_descriptor_53;
  v17 = _Block_copy(&aBlock);
  v84 = v14;

  v85 = v13;
  [v13 enumerateUsingBlock_];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_54;
  }

  v4 = v103;
  if (v103 < 1)
  {

    if (qword_2810A9400 == -1)
    {
LABEL_25:
      v49 = sub_22F740B90();
      __swift_project_value_buffer(v49, qword_2810B4CE0);
      v50 = sub_22F740B70();
      v51 = sub_22F7415E0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_22F0FC000, v50, v51, "GraphEntityRanker: totalNumberOfMomentAssets is 0 when ranking trip entities", v52, 2u);
        MEMORY[0x2319033A0](v52, -1, -1);
      }

      sub_22F1B2BBC(0);

      return MEMORY[0x277D84F90];
    }

LABEL_54:
    swift_once();
    goto LABEL_25;
  }

  v19 = v102;
  v20 = v102 + 64;
  v21 = 1 << *(v102 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  a1 = v22 & *(v102 + 64);
  v23 = (v21 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v5 = 0;
  v24 = MEMORY[0x277D84F90];
  while (a1)
  {
LABEL_9:
    v25 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v26 = v25 | (v5 << 6);
    v27 = *(*(v19 + 56) + 8 * v26) / v4;
    if (v27 > 0.0)
    {
      v29 = (*(v19 + 48) + 16 * v26);
      v80 = *v29;
      v30 = v29[1];

      v31 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_22F13FB00(0, *(v24 + 16) + 1, 1, v24);
      }

      v24 = v31;
      v32 = *(v31 + 2);
      v33 = *(v24 + 24);
      v34 = v32 + 1;
      if (v32 >= v33 >> 1)
      {
        v37 = sub_22F13FB00((v33 > 1), v32 + 1, 1, v24);
        v34 = v32 + 1;
        v24 = v37;
      }

      *(v24 + 16) = v34;
      v35 = v24 + (v32 << 6);
      *(v35 + 32) = 12;
      v36 = aBlock;
      *(v35 + 36) = *(&aBlock + 3);
      *(v35 + 33) = v36;
      *(v35 + 40) = v80;
      *(v35 + 48) = v30;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      *(v35 + 72) = v27;
      *(v35 + 80) = v82;
      *(v35 + 88) = v86;
      v4 = v103;
    }
  }

  while (1)
  {
    v28 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v28 >= v23)
    {
      break;
    }

    a1 = *(v20 + 8 * v28);
    ++v5;
    if (a1)
    {
      v5 = v28;
      goto LABEL_9;
    }
  }

  if (v7)
  {
    v38 = *(v24 + 16);
    if (v38)
    {
      goto LABEL_22;
    }

LABEL_29:

    sub_22F7416A0();

    sub_22F1B2BBC(0);

    return v24;
  }

  v53 = sub_22F31E70C(v24);

  v24 = v53;
  v38 = *(v53 + 16);
  if (!v38)
  {
    goto LABEL_29;
  }

LABEL_22:
  v39 = *(v24 + 32);
  v40 = *(v24 + 48);
  v41 = *(v24 + 80);
  v100 = *(v24 + 64);
  v101 = v41;
  aBlock = v39;
  v99 = v40;
  v5 = *(&v41 + 1);
  a1 = v41;
  v42 = *(&v100 + 1);
  v43 = *(&v40 + 1);
  v44 = v100;
  v7 = *(&v39 + 1);
  v4 = v40;
  v45 = v39;
  v81 = v38;

  sub_22F3229A4(&aBlock, v92);
  v46 = v81;
  v92[0] = v45;
  v93 = v7;
  v94 = __PAIR128__(v43, v4);
  v95 = v44;
  v96 = v42;
  v97 = __PAIR128__(v5, a1);
  v47 = v81 - 1;
  if (v81 != 1)
  {
    v54 = v24 + 32;
    v55 = 1;
    v48 = v24;
LABEL_31:
    v56 = v42;
    v57 = (v54 + (v55 << 6));
    v58 = v55;
    while (v58 < *(v48 + 16))
    {
      v59 = *v57;
      v60 = v57[1];
      v61 = v57[3];
      v90 = v57[2];
      v91 = v61;
      v88 = v59;
      v89 = v60;
      v55 = v58 + 1;
      v42 = *(&v90 + 1);
      if (v56 < *(&v90 + 1))
      {
        v62 = v48;
        v63 = v47;
        v64 = v54;
        sub_22F3229A4(&v88, v87);
        sub_22F322A00(v92);
        v54 = v64;
        v47 = v63;
        v46 = v81;
        v48 = v62;
        v5 = *(&v91 + 1);
        a1 = v91;
        v43 = *(&v89 + 1);
        v44 = v90;
        v7 = *(&v88 + 1);
        v4 = v89;
        v45 = v88;
        v92[0] = v88;
        v93 = *(&v88 + 1);
        v94 = v89;
        v95 = v90;
        v96 = v42;
        v97 = v91;
        if (v47 != v58)
        {
          goto LABEL_31;
        }

        goto LABEL_37;
      }

      v92[0] = v45;
      v93 = v7;
      *&v94 = v4;
      *(&v94 + 1) = v43;
      v95 = v44;
      v96 = v56;
      v57 += 4;
      ++v58;
      *&v97 = a1;
      *(&v97 + 1) = v5;
      if (v46 == v55)
      {
        v42 = v56;
        goto LABEL_37;
      }
    }

    goto LABEL_51;
  }

  v48 = v24;
LABEL_37:
  v65 = v48;

  sub_22F322A00(v92);
  v66 = *(v83 + OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_bundle);
  v67 = sub_22F740DF0();
  v68 = sub_22F740DF0();
  v69 = sub_22F740DF0();
  v70 = [v66 localizedStringForKey:v67 value:v68 table:v69];

  v71 = sub_22F740E20();
  v73 = v72;

  v74 = v71 == 0x6E756F6620746F4ELL && v73 == 0xE900000000000064;
  if (v74 || (sub_22F742040() & 1) != 0)
  {
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_22F13FB00(0, *(v65 + 2) + 1, 1, v65);
    }

    v75 = v65;
    v77 = *(v65 + 2);
    v76 = *(v65 + 3);
    if (v77 >= v76 >> 1)
    {
      v75 = sub_22F13FB00((v76 > 1), v77 + 1, 1, v65);
    }

    *(v75 + 2) = v77 + 1;
    v65 = v75;
    v78 = &v75[64 * v77];
    v78[32] = 12;
    v79 = *(&v88 + 3);
    *(v78 + 33) = v88;
    *(v78 + 9) = v79;
    *(v78 + 5) = v71;
    *(v78 + 6) = v73;
    *(v78 + 7) = 0;
    *(v78 + 8) = 0;
    *(v78 + 9) = v42;
    *(v78 + 10) = v82;
    *(v78 + 11) = v86;
  }

  sub_22F7416A0();

  sub_22F1B2BBC(0);

  return v65;
}

unint64_t sub_22F321BD8(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v6 = qword_2810B4DF0;
    *&v7 = CACurrentMediaTime();
    sub_22F1B560C("rankGraphBusinessEntities", 25, 2u, v7, 0, v6, v77);
    sub_22F741690();
    if (v3)
    {
      sub_22F1B2BBC(0);

      goto LABEL_42;
    }

    v8 = [a1 localeIdentifier];
    v9 = sub_22F740E20();
    v11 = v10;

    sub_22F120634(0, &qword_2810A8F98, off_27887AC80);
    v12 = [swift_getObjCClassFromMetadata() nodesInGraph_];
    v76 = 0;
    v13 = MEMORY[0x277D84F90];
    v75 = sub_22F14F1C0(MEMORY[0x277D84F90]);
    v74 = sub_22F14F1C0(v13);
    a1 = swift_allocObject();
    a1[2] = &v76;
    a1[3] = &v75;
    a1[4] = &v74;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_22F32298C;
    *(v14 + 24) = a1;
    aBlock[4] = sub_22F26B650;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F322D74;
    aBlock[3] = &block_descriptor_44;
    v15 = _Block_copy(aBlock);

    [v12 enumerateUsingBlock_];
    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
      goto LABEL_47;
    }

    v16 = v76;
    if (v76 < 1)
    {
      break;
    }

    v68 = v9;
    v72 = v11;
    v69 = v5;
    v70 = v12;
    v17 = v75;
    v18 = v75 + 64;
    v19 = 1 << *(v75 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v5 = v20 & *(v75 + 64);
    v21 = (v19 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v22 = 0;
    v71 = MEMORY[0x277D84F90];
    while (v5)
    {
LABEL_9:
      v23 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v24 = v23 | (v22 << 6);
      v25 = *(*(v17 + 56) + 8 * v24) / v16;
      if (v25 > 0.0)
      {
        v27 = (*(v17 + 48) + 16 * v24);
        v65 = v27[1];
        v66 = *v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_22F13FB00(0, *(v71 + 2) + 1, 1, v71);
        }

        v29 = *(v71 + 2);
        v28 = *(v71 + 3);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v33 = sub_22F13FB00((v28 > 1), v29 + 1, 1, v71);
          v30 = v29 + 1;
          v71 = v33;
        }

        *(v71 + 2) = v30;
        v31 = &v71[64 * v29];
        v31[32] = 13;
        v32 = aBlock[0];
        *(v31 + 9) = *(aBlock + 3);
        *(v31 + 33) = v32;
        *(v31 + 5) = v66;
        *(v31 + 6) = v65;
        *(v31 + 7) = 0;
        *(v31 + 8) = 0;
        *(v31 + 9) = v25;
        *(v31 + 10) = v68;
        *(v31 + 11) = v72;
        v16 = v76;
      }
    }

    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v26 >= v21)
      {
        break;
      }

      v5 = *(v18 + 8 * v26);
      ++v22;
      if (v5)
      {
        v22 = v26;
        goto LABEL_9;
      }
    }

    v34 = v74;
    v35 = v74 + 64;
    v36 = 1 << *(v74 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v74 + 64);
    v39 = (v36 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v5 = 0;
    v40 = MEMORY[0x277D84F90];
    while (v38)
    {
LABEL_23:
      v41 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v42 = v41 | (v5 << 6);
      v43 = *(*(v34 + 56) + 8 * v42) / v76;
      if (v43 > 0.0)
      {
        v45 = (*(v34 + 48) + 16 * v42);
        v46 = v45[1];
        v67 = *v45;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_22F13FB00(0, *(v40 + 2) + 1, 1, v40);
        }

        v48 = *(v40 + 2);
        v47 = *(v40 + 3);
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v64 = v48 + 1;
          v52 = v40;
          v53 = *(v40 + 2);
          v54 = sub_22F13FB00((v47 > 1), v48 + 1, 1, v52);
          v49 = v64;
          v48 = v53;
          v40 = v54;
        }

        *(v40 + 2) = v49;
        v50 = &v40[64 * v48];
        v50[32] = 14;
        v51 = *(aBlock + 3);
        *(v50 + 33) = aBlock[0];
        *(v50 + 9) = v51;
        *(v50 + 5) = v67;
        *(v50 + 6) = v46;
        *(v50 + 7) = 0;
        *(v50 + 8) = 0;
        *(v50 + 9) = v43;
        *(v50 + 10) = v68;
        *(v50 + 11) = v72;
      }
    }

    while (1)
    {
      v44 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v44 >= v39)
      {

        if (v69)
        {
          v55 = v70;
          v56 = v71;
        }

        else
        {
          v61 = sub_22F31E70C(v71);

          v62 = sub_22F31E70C(v40);

          v40 = v62;
          v56 = v61;
          v55 = v70;
        }

        sub_22F7416A0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB36F8, &unk_22F785BE0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_22F770DF0;
        *(v5 + 32) = v56;
        *(v5 + 40) = v40;

        sub_22F1B2BBC(0);

        goto LABEL_42;
      }

      v38 = *(v35 + 8 * v44);
      ++v5;
      if (v38)
      {
        v5 = v44;
        goto LABEL_23;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  if (qword_2810A9400 == -1)
  {
    goto LABEL_37;
  }

LABEL_47:
  swift_once();
LABEL_37:
  v57 = sub_22F740B90();
  __swift_project_value_buffer(v57, qword_2810B4CE0);
  v58 = sub_22F740B70();
  v59 = sub_22F7415E0();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_22F0FC000, v58, v59, "GraphEntityRanker: totalNumberOfMomentAssets is 0 when ranking business entities", v60, 2u);
    MEMORY[0x2319033A0](v60, -1, -1);
  }

  sub_22F1B2BBC(0);

  v5 = MEMORY[0x277D84F90];
LABEL_42:

  return v5;
}

uint64_t sub_22F3223D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v7 = qword_2810B4DF0;
  *&v8 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphLocationEntities", 25, 2u, v8, 0, v7, v29);
  sub_22F741690();
  if (v3)
  {
    sub_22F1B2BBC(0);

    return a3;
  }

  v9 = [a1 localeIdentifier];
  v10 = sub_22F740E20();
  v12 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB36F0, &qword_22F785BD8);
  v13 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v27 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = &v28;
  v14[6] = &v27;
  v14[7] = &v26;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22F32297C;
  *(v15 + 24) = v14;
  v25[4] = sub_22F250854;
  v25[5] = v15;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_22F107E24;
  v25[3] = &block_descriptor_35_0;
  v16 = _Block_copy(v25);

  [v13 enumerateNodesUsingBlock_];
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    if ((v6 & 1) == 0)
    {

      v19 = sub_22F31E70C(v18);

      v28 = v19;

      v21 = sub_22F31E70C(v20);

      v27 = v21;

      v23 = sub_22F31E70C(v22);

      v26 = v23;
    }

    sub_22F7416A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB36F8, &unk_22F785BE0);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_22F7707D0;
    v24 = v27;
    *(a3 + 32) = v28;
    *(a3 + 40) = v24;
    *(a3 + 48) = v26;

    sub_22F1B2BBC(0);

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for GraphEntityRanker()
{
  result = qword_2810AC450;
  if (!qword_2810AC450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F322808()
{
  result = sub_22F73F9B0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22F3228D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22F322924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22F322A5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_85Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_126Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F322BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3728, &qword_22F785C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F322C2C(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = *(sub_22F73F690() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22F31A8E0(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_22F322D7C()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_2810B4F18);
  v1 = __swift_project_value_buffer(v0, qword_2810B4F18);
  if (qword_2810A9BB0 != -1)
  {
    swift_once();
  }

  sub_22F1B3158(v1);
}

uint64_t sub_22F322F98()
{
  v1 = OBJC_IVAR___PGSocialGroupPersistenceActions_socialGroupsSkippedBecauseNoCommonAssets;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

uint64_t sub_22F32302C()
{
  v1 = OBJC_IVAR___PGSocialGroupPersistenceActions_newAutomaticSocialGroupMembersAndOrders;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

void sub_22F3230C0()
{
  v1 = OBJC_IVAR___PGSocialGroupPersistenceActions_currentAutomaticSocialGroupsToModifyAndOrders;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = (v5 + 16 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *v7;
        v4 = v8 + 1;
        v10 = *(v7 - 1);
        if ([v10 automaticOrder] != v9)
        {
          break;
        }

        v7 += 2;
        ++v8;
        if (v3 == v4)
        {
          goto LABEL_15;
        }
      }

      v15 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22F146C34(0, *(v6 + 16) + 1, 1);
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22F146C34((v11 > 1), v12 + 1, 1);
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v5 = v15;
    }

    while (v3 - 1 != v8);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v14 = *(v6 + 16);
}

uint64_t sub_22F323270()
{
  v1 = *(v0 + OBJC_IVAR___PGSocialGroupPersistenceActions_outdatedAutomaticSocialGroupsToDelete);
  if ((v1 & 0xC000000000000001) == 0)
  {
    return *(v1 + 16);
  }

  if (v1 < 0)
  {
    v2 = *(v0 + OBJC_IVAR___PGSocialGroupPersistenceActions_outdatedAutomaticSocialGroupsToDelete);
  }

  return sub_22F741A00();
}

id SocialGroupsPromoter.SocialGroupPersistenceActions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SocialGroupsPromoter.SocialGroupPersistenceActions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialGroupsPromoter.SocialGroupPersistenceActions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *static SocialGroupsPromoter.promoteSocialGroups(in:photoLibrary:maxNumberOfElectedSocialGroups:progressReporter:persistGroups:)(void *a1, void *a2, char **a3, uint64_t a4, char a5)
{
  v10 = sub_22F7416B0();
  v39 = v11;
  sub_22F741690();
  if (v5)
  {
  }

  else
  {
    v35 = a3;
    if (qword_2810A9BB0 != -1)
    {
      swift_once();
    }

    v34 = a5;
    v12 = qword_2810B4E80;
    *&v13 = CACurrentMediaTime();
    sub_22F1B560C("SocialGroupPromotion", 20, 2u, v13, 0, v12, v38);
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v14 = sub_22F740B90();
    __swift_project_value_buffer(v14, qword_2810B4F18);
    v15 = sub_22F740B70();
    v16 = sub_22F7415D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22F0FC000, v15, v16, "Starting social group promotion...", v17, 2u);
      MEMORY[0x2319033A0](v17, -1, -1);
    }

    v18 = type metadata accessor for SocialGroupsElector();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR___PGSocialGroupsElector_graph] = a1;
    *&v19[OBJC_IVAR___PGSocialGroupsElector_photoLibrary] = a2;
    v37.receiver = v19;
    v37.super_class = v18;
    v20 = a1;
    v21 = a2;
    v22 = objc_msgSendSuper2(&v37, sel_init);
    v23 = SocialGroupsElector.electSocialGroups(maxNumberOfElectedSocialGroups:progressReporter:)(v35, v10);

    v24 = sub_22F740B70();
    v25 = sub_22F7415D0();
    if (os_log_type_enabled(v24, v25))
    {
      v36 = v21;
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      if (v23 >> 62)
      {
        v27 = sub_22F741A00();
      }

      else
      {
        v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v26 + 4) = v27;

      _os_log_impl(&dword_22F0FC000, v24, v25, "Elected %ld groups to promote into Photos database", v26, 0xCu);
      MEMORY[0x2319033A0](v26, -1, -1);

      v21 = v36;
    }

    else
    {
    }

    sub_22F741690();
    static SocialGroupsPromoter.promote(_:in:photoLibrary:progressReporter:persistGroups:)(v23, v20, v21, v39, v34 & 1);
    a1 = v29;

    v30 = sub_22F740B70();
    v31 = sub_22F7415D0();
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22F0FC000, v30, v31, "Finished social group promotion", v33, 2u);
      MEMORY[0x2319033A0](v33, -1, -1);
    }

    sub_22F741690();
    sub_22F1B2BBC(0);
  }

  return a1;
}

void static SocialGroupsPromoter.promote(_:in:photoLibrary:progressReporter:persistGroups:)(unint64_t a1, void *a2, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a4, char a5)
{
  v9 = a1;
  v10 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= 1)
    {
      goto LABEL_3;
    }

LABEL_55:
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v79 = sub_22F740B90();
    __swift_project_value_buffer(v79, qword_2810B4F18);
    v80 = sub_22F740B70();
    v81 = sub_22F7415E0();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_22F0FC000, v80, v81, "No elected social groups passed into promote method, returning...", v82, 2u);
      MEMORY[0x2319033A0](v82, -1, -1);
    }

    sub_22F741690();
    if (!v6)
    {
      v83 = type metadata accessor for SocialGroupsPromoter.SocialGroupPersistenceActions();
      v84 = objc_allocWithZone(v83);
      v85 = MEMORY[0x277D84F90];
      *&v84[OBJC_IVAR___PGSocialGroupPersistenceActions_socialGroupsSkippedBecauseNoCommonAssets] = MEMORY[0x277D84F90];
      *&v84[OBJC_IVAR___PGSocialGroupPersistenceActions_newAutomaticSocialGroupMembersAndOrders] = v85;
      *&v84[OBJC_IVAR___PGSocialGroupPersistenceActions_currentAutomaticSocialGroupsToModifyAndOrders] = v85;
      *&v84[OBJC_IVAR___PGSocialGroupPersistenceActions_outdatedAutomaticSocialGroupsToDelete] = MEMORY[0x277D84FA0];
      v110.receiver = v84;
      v110.super_class = v83;
      objc_msgSendSuper2(&v110, sel_init);
    }

    return;
  }

  while (2)
  {
    v77 = a5;
    v78 = sub_22F741A00();
    a5 = v77;
    v11 = v78;
    if (v78 < 1)
    {
      goto LABEL_55;
    }

LABEL_3:
    v96 = a5;
    v97 = v5;
    sub_22F741690();
    if (!v6)
    {
      v95 = a2;
      v102 = isUniquelyReferenced_nonNull_native;
      *v109 = MEMORY[0x277D84F90];
      sub_22F741BD0();
      v12 = &OBJC_IVAR___PGElectedSocialGroup_socialGroup;
      v104 = v9 & 0xC000000000000001;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = 0;
        do
        {
          v14 = v13 + 1;
          v15 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGElectedSocialGroup_socialGroup);
          swift_unknownObjectRelease();
          sub_22F741BA0();
          v16 = *(*v109 + 16);
          sub_22F741BE0();
          sub_22F741BF0();
          sub_22F741BB0();
          v13 = v14;
        }

        while (v11 != v14);
      }

      else
      {
        v17 = (v9 + 32);
        do
        {
          v18 = *v17++;
          v19 = *(v18 + OBJC_IVAR___PGElectedSocialGroup_socialGroup);
          sub_22F741BA0();
          v20 = *(*v109 + 16);
          sub_22F741BE0();
          sub_22F741BF0();
          sub_22F741BB0();
          --v11;
        }

        while (v11);
      }

      v21 = sub_22F32B11C(v109[0], a2);

      v6 = 0;
      sub_22F741690();
      v101 = v21;
      if (v10)
      {
        v22 = sub_22F741A00();
        v23 = v21;
        v24 = v102;
        if (v22)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v23 = v21;
        v24 = v102;
        if (v22)
        {
LABEL_12:
          if (v22 < 1)
          {
            __break(1u);
            goto LABEL_71;
          }

          a2 = 0;
          v25 = MEMORY[0x277D84F90];
          v26 = MEMORY[0x277D84F98];
          v103 = v9;
          v100 = v22;
          while (1)
          {
            v27 = v104 ? MEMORY[0x2319016F0](a2, v9) : *(v9 + 8 * a2 + 32);
            v28 = v27;
            v108 = objc_autoreleasePoolPush();
            v107 = *&v28[OBJC_IVAR___PGElectedSocialGroup_socialGroup];
            v29 = sub_22F32B718(v107, v23, v24);
            if (v29)
            {
              break;
            }

            v9 = v103;
LABEL_15:
            a2 = a2 + 1;
            objc_autoreleasePoolPop(v108);

            if (v22 == a2)
            {
              goto LABEL_44;
            }
          }

          v9 = v29;
          v31 = v30;
          v106 = v26;
          if (qword_2810AA918 != -1)
          {
            swift_once();
          }

          v32 = sub_22F740B90();
          __swift_project_value_buffer(v32, qword_2810B4F18);

          v33 = sub_22F740B70();
          v34 = sub_22F7415C0();

          if (os_log_type_enabled(v33, v34))
          {
            v98 = v28;
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *v109 = v36;
            *v35 = 134218242;
            v99 = v25;
            if (v9 >> 62)
            {
              v37 = sub_22F741A00();
            }

            else
            {
              v37 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v35 + 4) = v37;

            *(v35 + 12) = 2080;
            v38 = MEMORY[0x231900D40](v31, MEMORY[0x277D837D0]);
            v40 = v39;

            v41 = sub_22F145F20(v38, v40, v109);

            *(v35 + 14) = v41;
            _os_log_impl(&dword_22F0FC000, v33, v34, "Elected group to persist has %ld members in it: %s", v35, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v36);
            MEMORY[0x2319033A0](v36, -1, -1);
            MEMORY[0x2319033A0](v35, -1, -1);

            v28 = v98;
            v25 = v99;
          }

          else
          {
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_22F13FE74(0, v25[2] + 1, 1, v25);
          }

          v43 = v25[2];
          v42 = v25[3];
          v44 = v28;
          if (v43 >= v42 >> 1)
          {
            v25 = sub_22F13FE74((v42 > 1), v43 + 1, 1, v25);
          }

          v25[2] = v43 + 1;
          v45 = v25;
          v25[v43 + 4] = v9;
          v10 = sub_22F152B5C(v9);

          v46 = v107;
          v5 = v106;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v109 = v106;
          v47 = sub_22F123618(v10);
          v49 = *(v106 + 16);
          v50 = (v48 & 1) == 0;
          v51 = __OFADD__(v49, v50);
          v52 = v49 + v50;
          if (v51)
          {
            __break(1u);
            continue;
          }

          v53 = v48;
          if (*(v106 + 24) >= v52)
          {
            v9 = v103;
            v23 = v101;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v58 = v47;
              sub_22F137E84();
              v23 = v101;
              v47 = v58;
            }

            v25 = v45;
            v26 = *v109;
            if ((v53 & 1) == 0)
            {
LABEL_35:
              sub_22F1534C8(v47, v10, v46, v26);
LABEL_40:
              v22 = v100;
              v28 = v44;
              v24 = v102;
              goto LABEL_15;
            }
          }

          else
          {
            sub_22F12C32C(v52, isUniquelyReferenced_nonNull_native);
            v54 = *v109;
            v47 = sub_22F123618(v10);
            v9 = v103;
            if ((v53 & 1) != (v55 & 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3760, &unk_22F785C30);
              sub_22F7420C0();
              __break(1u);
              objc_autoreleasePoolPop(v54);
              __break(1u);
              return;
            }

            v25 = v45;
            v23 = v101;
            v26 = *v109;
            if ((v53 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v56 = *(v26 + 56);
          v57 = *(v56 + 8 * v47);
          *(v56 + 8 * v47) = v46;

          goto LABEL_40;
        }
      }

      v26 = MEMORY[0x277D84F98];
      v25 = MEMORY[0x277D84F90];
LABEL_44:
      v106 = v26;

      sub_22F741690();
      v59 = sub_22F7416E0();
      v61 = v60;
      v63 = v62;
      v12 = v64;

      sub_22F3246DC(v25, v24);
      v9 = v65;
      v108 = v61;
      sub_22F741690();
      if (v96)
      {
        v107 = v63;
        if (qword_2810AA918 != -1)
        {
          goto LABEL_72;
        }

        while (1)
        {
          v66 = sub_22F740B90();
          __swift_project_value_buffer(v66, qword_2810B4F18);
          v67 = sub_22F740B70();
          v68 = sub_22F7415C0();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_22F0FC000, v67, v68, "Updating the social group nodes of currently persisted groups...", v69, 2u);
            MEMORY[0x2319033A0](v69, -1, -1);
          }

          sub_22F741690();
          v105 = v12;
          v12 = sub_22F32AFB4(v24);
          v70 = OBJC_IVAR___PGSocialGroupPersistenceActions_currentAutomaticSocialGroupsToModifyAndOrders;
          swift_beginAccess();
          v71 = *(v9 + v70);
          v24 = *(v71 + 16);

          if (!v24)
          {
            break;
          }

          v72 = 0;
          v73 = 0.0;
          v74 = 32;
          while (v72 < *(v71 + 16))
          {
            v75 = *(v71 + v74);
            v76 = objc_autoreleasePoolPush();
            sub_22F326E4C(v75, v12, v97, v106, v95);
            objc_autoreleasePoolPop(v76);
            v73 = 1.0 / v24 + v73;
            sub_22F741690();
            ++v72;

            v74 += 16;
            if (v24 == v72)
            {
              goto LABEL_52;
            }
          }

LABEL_71:
          __break(1u);
LABEL_72:
          swift_once();
        }

LABEL_52:

        sub_22F741690();

        v86 = sub_22F740B70();
        v87 = sub_22F7415C0();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_22F0FC000, v86, v87, "Updated social group nodes of currently persisted groups!", v88, 2u);
          MEMORY[0x2319033A0](v88, -1, -1);
        }

        sub_22F741690();
        v89 = sub_22F740B70();
        v90 = sub_22F7415C0();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&dword_22F0FC000, v89, v90, "Persisting groups into database...", v91, 2u);
          MEMORY[0x2319033A0](v91, -1, -1);
        }

        sub_22F325394(v9, v102, v95, v106, v105);
        v92 = sub_22F740B70();
        v93 = sub_22F7415C0();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&dword_22F0FC000, v92, v93, "Persisted groups!", v94, 2u);
          MEMORY[0x2319033A0](v94, -1, -1);
        }

        v12 = v105;
        v63 = v107;
      }

      sub_22F741690();
    }

    break;
  }
}

void sub_22F3246DC(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  if (qword_2810AA918 == -1)
  {
    goto LABEL_2;
  }

LABEL_78:
  swift_once();
LABEL_2:
  v8 = sub_22F740B90();
  __swift_project_value_buffer(v8, qword_2810B4F18);
  v9 = sub_22F740B70();
  v10 = sub_22F7415C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22F0FC000, v9, v10, "Generating persistence actions...", v11, 2u);
    MEMORY[0x2319033A0](v11, -1, -1);
  }

  sub_22F741690();
  if (v4)
  {
    return;
  }

  v4 = 0;
  v12 = [a2 librarySpecificFetchOptions];
  v13 = [objc_opt_self() fetchSocialGroupsWithOptions_];
  sub_22F741690();
  v100 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F98];
  v15 = sub_22F32AFB4(a2);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v5;
  v16[4] = v14;
  aBlock[4] = sub_22F2A081C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F1D4AD0;
  aBlock[3] = &block_descriptor_63;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  v99 = v13;
  [v13 enumerateObjectsUsingBlock_];

  _Block_release(v17);
  swift_beginAccess();
  v5 = *(v14 + 16);

  v121 = MEMORY[0x277D84FA0];
  v19 = v5 + 64;
  v20 = 1 << v5[32];
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v5 + 8);
  a2 = ((v20 + 63) >> 6);
  v112 = v5;

  v23 = 0;
  if (v22)
  {
    while (2)
    {
      v24 = v23;
LABEL_14:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v5 = *(*(v112 + 7) + ((v24 << 9) | (8 * v25)));
      if ([v5 socialGroupVerifiedType] == 2)
      {
        sub_22F10F1E0(&v119, v5);

        v23 = v24;
        if (v22)
        {
          continue;
        }
      }

      else
      {

        v23 = v24;
        if (v22)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    if (v24 >= a2)
    {
      break;
    }

    v22 = *&v19[8 * v24];
    ++v23;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  v26 = v112;

  sub_22F741690();
  v111 = *(a1 + 16);
  if (!v111)
  {

    v103 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
LABEL_72:
    sub_22F741690();
    v92 = v121;
    v93 = type metadata accessor for SocialGroupsPromoter.SocialGroupPersistenceActions();
    v94 = objc_allocWithZone(v93);
    *&v94[OBJC_IVAR___PGSocialGroupPersistenceActions_socialGroupsSkippedBecauseNoCommonAssets] = MEMORY[0x277D84F90];
    *&v94[OBJC_IVAR___PGSocialGroupPersistenceActions_newAutomaticSocialGroupMembersAndOrders] = v115;
    *&v94[OBJC_IVAR___PGSocialGroupPersistenceActions_currentAutomaticSocialGroupsToModifyAndOrders] = v103;
    *&v94[OBJC_IVAR___PGSocialGroupPersistenceActions_outdatedAutomaticSocialGroupsToDelete] = v92;
    v118.receiver = v94;
    v118.super_class = v93;
    objc_msgSendSuper2(&v118, sel_init);
    sub_22F741690();
    v95 = sub_22F740B70();
    v96 = sub_22F7415C0();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_22F0FC000, v95, v96, "Finished generating persistence actions", v97, 2u);
      MEMORY[0x2319033A0](v97, -1, -1);
    }

    return;
  }

  v27 = 0;
  v110 = a1 + 32;
  v28 = 1;
  v103 = MEMORY[0x277D84F90];
  v115 = MEMORY[0x277D84F90];
  while (2)
  {
    v114 = v27;
    v31 = *(v110 + 8 * v27);

    v33 = _s11PhotosGraph20SocialGroupsPromoterC15socialGroupHash3forSSSaySo8PHPersonCG_tFZ_0(v32);
    if (*(v26 + 2))
    {
      v35 = sub_22F1229E8(v33, v34);
      v37 = v36;

      if (v37)
      {
        v38 = *(*(v26 + 7) + 8 * v35);
        if ([v38 socialGroupVerifiedType] == 2)
        {
          v39 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_22F13FD40(0, v103[2] + 1, 1, v103);
          }

          v41 = v103[2];
          v40 = v103[3];
          if (v41 >= v40 >> 1)
          {
            v103 = sub_22F13FD40((v40 > 1), v41 + 1, 1, v103);
          }

          v103[2] = v41 + 1;
          v42 = &v103[2 * v41];
          v42[4] = v39;
          v42[5] = v28;
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_81;
          }

          v43 = v39;
          v44 = sub_22F740B70();
          v45 = sub_22F7415C0();

          if (os_log_type_enabled(v44, v45))
          {
            buf = v45;
            v108 = v44;
            v46 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v119 = v101;
            *v46 = 136315650;
            v47 = [v43 localIdentifier];
            v48 = sub_22F740E20();
            v50 = v49;

            v51 = sub_22F145F20(v48, v50, &v119);

            *(v46 + 4) = v51;
            v104 = v46;
            *(v46 + 12) = 2080;
            if (v31 >> 62)
            {
              v52 = sub_22F741A00();
              if (!v52)
              {
                goto LABEL_66;
              }

LABEL_33:
              v98 = v43;
              v116 = MEMORY[0x277D84F90];
              sub_22F146454(0, v52 & ~(v52 >> 63), 0);
              if (v52 < 0)
              {
                goto LABEL_82;
              }

              v53 = 0;
              v54 = v116;
              v55 = v28;
              v56 = v52;
              do
              {
                if ((v31 & 0xC000000000000001) != 0)
                {
                  v57 = MEMORY[0x2319016F0](v53, v31);
                }

                else
                {
                  v57 = *(v31 + 8 * v53 + 32);
                }

                v58 = v57;
                v59 = [v57 localIdentifier];
                v60 = sub_22F740E20();
                v62 = v61;

                v64 = *(v116 + 16);
                v63 = *(v116 + 24);
                if (v64 >= v63 >> 1)
                {
                  sub_22F146454((v63 > 1), v64 + 1, 1);
                }

                ++v53;
                *(v116 + 16) = v64 + 1;
                v65 = v116 + 16 * v64;
                *(v65 + 32) = v60;
                *(v65 + 40) = v62;
              }

              while (v56 != v53);
              v28 = v55;

              v26 = v112;
              v43 = v98;
            }

            else
            {
              v52 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v52)
              {
                goto LABEL_33;
              }

LABEL_66:

              v54 = MEMORY[0x277D84F90];
            }

            v88 = MEMORY[0x231900D40](v54, MEMORY[0x277D837D0]);
            v90 = v89;

            v91 = sub_22F145F20(v88, v90, &v119);

            *(v104 + 14) = v91;
            *(v104 + 11) = 2048;
            *(v104 + 3) = v28;
            v44 = v108;
            _os_log_impl(&dword_22F0FC000, v108, buf, "Current social group %s with members %s will have automatic order %ld", v104, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v101, -1, -1);
            MEMORY[0x2319033A0](v104, -1, -1);
          }

          else
          {
          }

          v38 = sub_22F164DE0(v43);
        }

        else
        {
        }

        v29 = v114;
LABEL_21:
        v27 = v29 + 1;
        if (v27 == v111)
        {

          goto LABEL_72;
        }

        continue;
      }
    }

    else
    {
    }

    break;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v115 = sub_22F13FC0C(0, v115[2] + 1, 1, v115);
  }

  v67 = v115[2];
  v66 = v115[3];
  if (v67 >= v66 >> 1)
  {
    v115 = sub_22F13FC0C((v66 > 1), v67 + 1, 1, v115);
  }

  v115[2] = v67 + 1;
  v68 = &v115[2 * v67];
  v68[4] = v31;
  v68[5] = v28;

  v69 = sub_22F740B70();
  v70 = sub_22F7415C0();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    bufa = v71;
    v119 = v105;
    *v71 = 136315394;
    if (v31 >> 62)
    {
      v72 = sub_22F741A00();
    }

    else
    {
      v72 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v109 = v70;
    log = v69;
    if (v72)
    {
      v102 = v28;
      v117 = MEMORY[0x277D84F90];
      sub_22F146454(0, v72 & ~(v72 >> 63), 0);
      if (v72 < 0)
      {
        goto LABEL_80;
      }

      v73 = 0;
      v74 = v117;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v75 = MEMORY[0x2319016F0](v73, v31);
        }

        else
        {
          v75 = *(v31 + 8 * v73 + 32);
        }

        v76 = v75;
        v77 = [v75 localIdentifier];
        v78 = sub_22F740E20();
        v80 = v79;

        v82 = *(v117 + 16);
        v81 = *(v117 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_22F146454((v81 > 1), v82 + 1, 1);
        }

        ++v73;
        *(v117 + 16) = v82 + 1;
        v83 = v117 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v80;
      }

      while (v72 != v73);

      v28 = v102;
    }

    else
    {

      v74 = MEMORY[0x277D84F90];
    }

    v84 = MEMORY[0x231900D40](v74, MEMORY[0x277D837D0]);
    v86 = v85;

    v87 = sub_22F145F20(v84, v86, &v119);

    *(bufa + 4) = v87;
    *(bufa + 6) = 2048;
    *(bufa + 14) = v28;
    _os_log_impl(&dword_22F0FC000, log, v109, "New social group with members %s will have automatic order %ld", bufa, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x2319033A0](v105, -1, -1);
    MEMORY[0x2319033A0](bufa, -1, -1);

    v26 = v112;
  }

  else
  {
  }

  v29 = v114;
  v30 = __OFADD__(v28++, 1);
  if (!v30)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

uint64_t sub_22F325394(char *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v236 = a1;
  v260 = *MEMORY[0x277D85DE8];
  v13 = sub_22F73F470();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v223 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741690();
  v238 = v6;
  if (v6)
  {
    goto LABEL_141;
  }

  v247 = a3;
  v231 = a4;
  v248 = v8;
  v223 = a5;
  v226 = v14;
  v224 = v13;
  v18 = OBJC_IVAR___PGSocialGroupPersistenceActions_socialGroupsSkippedBecauseNoCommonAssets;
  v19 = v236;
  swift_beginAccess();
  v228 = v18;
  v20 = *&v19[v18];

  v22 = sub_22F152AC0(v21);

  v253 = v22;
  v23 = [objc_opt_self() graphServicesURLWithPhotoLibrary_];
  sub_22F73F430();

  v24 = objc_allocWithZone(PGCurationManager);
  v225 = v17;
  p_aBlock = sub_22F73F3F0();
  v246 = [v24 initWithPhotoLibrary:a2 cacheURL:p_aBlock];

  v245 = [objc_allocWithZone(MEMORY[0x277D3C790]) initWithPhotoLibrary_];
  v26 = OBJC_IVAR___PGSocialGroupPersistenceActions_newAutomaticSocialGroupMembersAndOrders;
  swift_beginAccess();
  v227 = v26;
  v27 = *&v19[v26];
  v28 = *(v27 + 16);
  v232 = a2;
  v243 = v28;
  if (v28)
  {
    v242 = (v27 + 32);
    v241 = &v256;

    v30 = 0;
    v239 = MEMORY[0x277D84F98];
    v7 = 1107296256;
    *&v31 = 136315394;
    v237 = v31;
    v32 = v247;
    v33 = v238;
    v240 = v29;
    while (1)
    {
      if (v30 >= v29[2].isa)
      {
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v250 = v30;
      v42 = &v242[2 * v30];
      v43 = *v42;
      v44 = v42[1];

      sub_22F32C610(v45, v32, a2);
      v47 = _s11PhotosGraph19SocialGroupCurationC14selectKeyAsset3for15containedAssets15curationManager0L7ContextSo7PHAssetCSgSaySo8PHPersonCG_SayAJGSo010PGCurationM0CSo011CLSCurationN0CtFZ_0(v43, v46, v246, v245);

      v48 = swift_allocObject();
      *(v48 + 16) = 0;
      v49 = (v48 + 16);
      v50 = swift_allocObject();
      v50[2] = v43;
      v50[3] = v48;
      v244 = v44;
      v50[4] = v44;
      v50[5] = v47;
      v50[6] = v248;
      v258 = sub_22F32CBF0;
      v259 = v50;
      aBlock = MEMORY[0x277D85DD0];
      v255 = 1107296256;
      v256 = sub_22F327D80;
      v257 = &block_descriptor_42;
      v14 = _Block_copy(&aBlock);
      v249 = v47;

      aBlock = 0;
      v51 = [a2 performChangesAndWait:v14 error:&aBlock];
      _Block_release(v14);
      v52 = aBlock;
      if (v51)
      {
        swift_beginAccess();
        if (*v49)
        {
          v14 = *v49;
          v53 = v52;
          v54 = v239;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v54;
          p_aBlock = &aBlock;
          sub_22F132B10(v14, v43, isUniquelyReferenced_nonNull_native);

          v239 = aBlock;
        }

        else
        {
          v74 = qword_2810AA918;
          v75 = v52;
          if (v74 != -1)
          {
            swift_once();
          }

          v76 = sub_22F740B90();
          __swift_project_value_buffer(v76, qword_2810B4F18);

          p_aBlock = sub_22F740B70();
          v77 = sub_22F7415E0();

          if (os_log_type_enabled(p_aBlock, v77))
          {
            LODWORD(v234) = v77;
            v78 = swift_slowAlloc();
            v230 = swift_slowAlloc();
            aBlock = v230;
            v233 = v78;
            *v78 = v237;
            if (v43 >> 62)
            {
              v79 = sub_22F741A00();
            }

            else
            {
              v79 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *&v235 = p_aBlock;
            if (v79)
            {
              v252 = MEMORY[0x277D84F90];
              p_aBlock = &v252;
              sub_22F146454(0, v79 & ~(v79 >> 63), 0);
              if (v79 < 0)
              {
                goto LABEL_148;
              }

              *&v229 = v48;
              v238 = v33;
              v80 = 0;
              v81 = v252;
              do
              {
                if ((v43 & 0xC000000000000001) != 0)
                {
                  v82 = MEMORY[0x2319016F0](v80, v43);
                }

                else
                {
                  v82 = *(v43 + 8 * v80 + 32);
                }

                v83 = v82;
                v84 = [v83 localIdentifier];
                v85 = sub_22F740E20();
                v14 = v86;

                v252 = v81;
                v88 = v81[2];
                v87 = v81[3];
                if (v88 >= v87 >> 1)
                {
                  sub_22F146454((v87 > 1), v88 + 1, 1);
                  v81 = v252;
                }

                ++v80;
                v81[2] = v88 + 1;
                v89 = &v81[2 * v88];
                v89[4] = v85;
                v89[5] = v14;
              }

              while (v79 != v80);

              a2 = v232;
              v33 = v238;
            }

            else
            {

              v81 = MEMORY[0x277D84F90];
            }

            v90 = MEMORY[0x231900D40](v81, MEMORY[0x277D837D0]);
            v92 = v91;

            v93 = sub_22F145F20(v90, v92, &aBlock);

            p_aBlock = v233;
            *(v233 + 1) = v93;
            *(p_aBlock + 12) = 2048;
            *(p_aBlock + 14) = v244;
            v94 = v235;
            _os_log_impl(&dword_22F0FC000, v235, v234, "Couldn't get social group placeholder after persisting social group with members %s and automatic order %ld", p_aBlock, 0x16u);
            v95 = v230;
            __swift_destroy_boxed_opaque_existential_0(v230);
            MEMORY[0x2319033A0](v95, -1, -1);
            MEMORY[0x2319033A0](p_aBlock, -1, -1);
          }

          else
          {
          }
        }

        goto LABEL_6;
      }

      v56 = aBlock;
      v14 = sub_22F73F370();

      swift_willThrow();

      if (qword_2810AA918 != -1)
      {
        swift_once();
      }

      v57 = sub_22F740B90();
      __swift_project_value_buffer(v57, qword_2810B4F18);

      v58 = v14;
      v59 = sub_22F740B70();
      v60 = sub_22F7415E0();

      if (os_log_type_enabled(v59, v60))
      {
        break;
      }

LABEL_5:

      p_aBlock = &v253;
      sub_22F10F204(&aBlock, v43);

      v33 = 0;
LABEL_6:
      v32 = v247;
      v29 = v240;
      v30 = v250 + 1;
      if ((v250 + 1) == v243)
      {
        v238 = v33;

        v22 = v253;
        goto LABEL_49;
      }
    }

    v61 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    aBlock = v244;
    *v61 = v237;
    if (v43 >> 62)
    {
      v62 = sub_22F741A00();
      if (v62)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v62 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v62)
      {
LABEL_16:
        v252 = MEMORY[0x277D84F90];
        p_aBlock = &v252;
        sub_22F146454(0, v62 & ~(v62 >> 63), 0);
        if (v62 < 0)
        {
          goto LABEL_147;
        }

        v233 = v61;
        LODWORD(v234) = v60;
        *&v235 = v59;
        v238 = v14;
        v63 = 0;
        v64 = v252;
        do
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x2319016F0](v63, v43);
          }

          else
          {
            v65 = *(v43 + 8 * v63 + 32);
          }

          v66 = v65;
          v67 = [v66 localIdentifier];
          v68 = sub_22F740E20();
          v70 = v69;

          v252 = v64;
          v72 = v64[2];
          v71 = v64[3];
          if (v72 >= v71 >> 1)
          {
            sub_22F146454((v71 > 1), v72 + 1, 1);
            v64 = v252;
          }

          ++v63;
          v64[2] = v72 + 1;
          v73 = &v64[2 * v72];
          v73[4] = v68;
          v73[5] = v70;
        }

        while (v62 != v63);
        a2 = v232;
        v14 = v238;
        v59 = v235;
        LOBYTE(v60) = v234;
        v61 = v233;
        goto LABEL_4;
      }
    }

    v64 = MEMORY[0x277D84F90];
LABEL_4:
    v34 = MEMORY[0x231900D40](v64, MEMORY[0x277D837D0]);
    v36 = v35;

    v37 = sub_22F145F20(v34, v36, &aBlock);

    *(v61 + 4) = v37;
    *(v61 + 12) = 2080;
    swift_getErrorValue();
    v38 = sub_22F7420F0();
    v40 = sub_22F145F20(v38, v39, &aBlock);

    *(v61 + 14) = v40;
    _os_log_impl(&dword_22F0FC000, v59, v60, "Error persisting social group with members %s: %s", v61, 0x16u);
    v41 = v244;
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v41, -1, -1);
    MEMORY[0x2319033A0](v61, -1, -1);
    goto LABEL_5;
  }

  v239 = MEMORY[0x277D84F98];
LABEL_49:
  p_aBlock = *(v22 + 16);
  v96 = MEMORY[0x277D84F90];
  v243 = v22;
  if (p_aBlock)
  {
    v97 = sub_22F10B59C(p_aBlock, 0);
    v98 = sub_22F11C3E0(&aBlock, v97 + 4, p_aBlock, v22);
    v14 = v255;

    sub_22F0FF590();
    if (v98 != p_aBlock)
    {
      goto LABEL_149;
    }

    v99 = v228;
    v100 = v238;
    v96 = MEMORY[0x277D84F90];
  }

  else
  {
    v97 = MEMORY[0x277D84F90];
    v99 = v228;
    v100 = v238;
  }

  v101 = v236;
  v102 = *&v236[v99];
  *&v236[v99] = v97;

  v103 = v227;
  v104 = *&v101[v227];

  v106 = v100;
  v107 = sub_22F32ADA8(v105, &v253);

  v108 = *&v101[v103];
  *&v101[v103] = v107;

  v109 = swift_allocObject();
  v110 = v248;
  *(v109 + 16) = v101;
  *(v109 + 24) = v110;
  v258 = sub_22F32CC00;
  v259 = v109;
  aBlock = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v255 = 1107296256;
  v256 = sub_22F327D80;
  v257 = &block_descriptor_48_0;
  v111 = _Block_copy(&aBlock);
  v112 = v101;

  aBlock = 0;
  LODWORD(v107) = [a2 performChangesAndWait:v111 error:&aBlock];
  _Block_release(v111);
  if (!v107)
  {
    v172 = aBlock;

    v173 = sub_22F73F370();

    v238 = v173;
    swift_willThrow();

    (v226[1])(v225, v224);
LABEL_140:

    goto LABEL_141;
  }

  v234 = v112;
  v233 = v106;
  v14 = v239 + 8;
  v113 = 1 << *(v239 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & v239[8];
  p_aBlock = (v113 + 63) >> 6;
  v116 = aBlock;
  v117 = 0;
  *&v118 = 136315394;
  v235 = v118;
  *&v118 = 138412546;
  v229 = v118;
  v242 = v14;
  v244 = p_aBlock;
  while (1)
  {
    if (!v115)
    {
      while (1)
      {
        v119 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
          goto LABEL_145;
        }

        if (v119 >= p_aBlock)
        {
          break;
        }

        v115 = v14[v119];
        ++v117;
        if (v115)
        {
          v117 = v119;
          goto LABEL_64;
        }
      }

      p_aBlock = *&v234[OBJC_IVAR___PGSocialGroupPersistenceActions_outdatedAutomaticSocialGroupsToDelete];
      if ((p_aBlock & 0xC000000000000001) == 0)
      {
        v192 = *(p_aBlock + 32);
        v193 = v192 & 0x3F;
        v250 = ((1 << v192) + 63) >> 6;
        v14 = (8 * v250);

        if (v193 <= 0xD)
        {
          goto LABEL_115;
        }

        goto LABEL_151;
      }

      v174 = MEMORY[0x277D84FA0];
      aBlock = MEMORY[0x277D84FA0];

      sub_22F7419C0();
      v175 = sub_22F741A40();
      if (v175)
      {
        v176 = v175;
        v14 = sub_22F120634(0, &unk_2810A91B0, 0x277CD99D0);
        v177 = v176;
        v174 = MEMORY[0x277D84FA0];
        do
        {
          v251 = v177;
          swift_dynamicCast();
          v178 = [v252 socialGroupVerifiedType];
          v179 = v252;
          if (v178 == 2)
          {
            v180 = *(v174 + 16);
            if (*(v174 + 24) <= v180)
            {
              sub_22F112518(v180 + 1);
            }

            v174 = aBlock;
            v181 = aBlock[5];
            p_aBlock = v179;
            v182 = sub_22F741800();
            v183 = v174 + 56;
            v184 = -1 << *(v174 + 32);
            v185 = v182 & ~v184;
            v186 = v185 >> 6;
            if (((-1 << v185) & ~*(v174 + 56 + 8 * (v185 >> 6))) != 0)
            {
              v187 = __clz(__rbit64((-1 << v185) & ~*(v174 + 56 + 8 * (v185 >> 6)))) | v185 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v188 = 0;
              v189 = (63 - v184) >> 6;
              do
              {
                if (++v186 == v189 && (v188 & 1) != 0)
                {
                  goto LABEL_144;
                }

                v190 = v186 == v189;
                if (v186 == v189)
                {
                  v186 = 0;
                }

                v188 |= v190;
                v191 = *(v183 + 8 * v186);
              }

              while (v191 == -1);
              v187 = __clz(__rbit64(~v191)) + (v186 << 6);
            }

            *(v183 + ((v187 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v187;
            *(*(v174 + 48) + 8 * v187) = v179;
            ++*(v174 + 16);
          }

          else
          {
          }

          v177 = sub_22F741A40();
        }

        while (v177);
      }

      goto LABEL_130;
    }

LABEL_64:
    v249 = ((v115 - 1) & v115);
    v120 = (v117 << 9) | (8 * __clz(__rbit64(v115)));
    v121 = *(v239[6] + v120);
    v122 = *(v239[7] + v120);
    swift_bridgeObjectRetain_n();
    v123 = v122;
    v124 = sub_22F152B5C(v121);

    if (*(v231 + 16))
    {
      v125 = sub_22F123618(v124);
      v127 = v126;

      if (v127)
      {

        v128 = *(*(v231 + 56) + 8 * v125);
        [v128 updatePropertiesWithPersistedSocialGroup:v123 graph:v247];
        if (qword_2810AA918 != -1)
        {
          swift_once();
        }

        v129 = sub_22F740B90();
        __swift_project_value_buffer(v129, qword_2810B4F18);
        v130 = v128;
        v131 = sub_22F740B70();
        v132 = sub_22F7415D0();

        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v241 = swift_slowAlloc();
          aBlock = v241;
          *v133 = v229;
          *(v133 + 4) = v130;
          v240 = v134;
          v134->isa = v130;
          *(v133 + 12) = 2080;
          v250 = v130;
          v135 = [v250 persistedUUID];
          if (v135)
          {
            v136 = v135;
            v137 = sub_22F740E20();
            v139 = v138;
          }

          else
          {
            v137 = 0;
            v139 = 0xE000000000000000;
          }

          v163 = sub_22F145F20(v137, v139, &aBlock);

          *(v133 + 14) = v163;
          _os_log_impl(&dword_22F0FC000, v131, v132, "Social group node %@ has persisted UUID %s", v133, 0x16u);
          v164 = v240;
          sub_22F2A87F0(v240);
          MEMORY[0x2319033A0](v164, -1, -1);
          v165 = v241;
          __swift_destroy_boxed_opaque_existential_0(v241);
          MEMORY[0x2319033A0](v165, -1, -1);
          MEMORY[0x2319033A0](v133, -1, -1);

          v96 = MEMORY[0x277D84F90];
        }

        else
        {
        }

        goto LABEL_92;
      }
    }

    else
    {
    }

    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v140 = sub_22F740B90();
    __swift_project_value_buffer(v140, qword_2810B4F18);

    v141 = v123;
    v142 = sub_22F740B70();
    v143 = sub_22F7415E0();

    if (!os_log_type_enabled(v142, v143))
    {

      goto LABEL_58;
    }

    LODWORD(v238) = v143;
    v240 = v142;
    v14 = swift_slowAlloc();
    *&v237 = swift_slowAlloc();
    aBlock = v237;
    *v14 = v235;
    v241 = v141;
    v144 = [v141 localIdentifier];
    v145 = sub_22F740E20();
    v147 = v146;

    v148 = sub_22F145F20(v145, v147, &aBlock);

    *(v14 + 4) = v148;
    *(v14 + 6) = 2080;
    if (v121 >> 62)
    {
      break;
    }

    v149 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v149)
    {
      goto LABEL_77;
    }

LABEL_90:

    v151 = v96;
LABEL_91:
    v166 = MEMORY[0x231900D40](v151, MEMORY[0x277D837D0]);
    v168 = v167;

    v169 = sub_22F145F20(v166, v168, &aBlock);

    *(v14 + 14) = v169;
    v170 = v240;
    _os_log_impl(&dword_22F0FC000, v240, v238, "Couldn't find social group node for persisted social group %s with members %s", v14, 0x16u);
    v171 = v237;
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v171, -1, -1);
    MEMORY[0x2319033A0](v14, -1, -1);

LABEL_92:
    v14 = v242;
LABEL_58:
    p_aBlock = v244;
    v115 = v249;
  }

  v149 = sub_22F741A00();
  if (!v149)
  {
    goto LABEL_90;
  }

LABEL_77:
  v230 = v14;
  v252 = v96;
  p_aBlock = &v252;
  sub_22F146454(0, v149 & ~(v149 >> 63), 0);
  if ((v149 & 0x8000000000000000) == 0)
  {
    v150 = 0;
    v151 = v252;
    v250 = v121 & 0xC000000000000001;
    v152 = v121;
    v153 = v149;
    do
    {
      if (v250)
      {
        v154 = MEMORY[0x2319016F0](v150, v121);
      }

      else
      {
        v154 = *(v121 + 8 * v150 + 32);
      }

      v155 = v154;
      v156 = [v155 localIdentifier];
      v157 = sub_22F740E20();
      v159 = v158;

      v252 = v151;
      v161 = v151[2];
      v160 = v151[3];
      if (v161 >= v160 >> 1)
      {
        sub_22F146454((v160 > 1), v161 + 1, 1);
        v151 = v252;
      }

      ++v150;
      v151[2] = v161 + 1;
      v162 = &v151[2 * v161];
      v162[4] = v157;
      v162[5] = v159;
      v121 = v152;
    }

    while (v153 != v150);

    v96 = MEMORY[0x277D84F90];
    v14 = v230;
    goto LABEL_91;
  }

  while (1)
  {
    __break(1u);
LABEL_151:
    v219 = p_aBlock;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_115:
    v249 = &v223;
    MEMORY[0x28223BE20](v194);
    v195 = &v223 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v195, v14);
    v14 = 0;
    v196 = 0;
    v197 = 1 << *(p_aBlock + 32);
    v198 = -1;
    if (v197 < 64)
    {
      v198 = ~(-1 << v197);
    }

    v199 = v198 & *(p_aBlock + 56);
    v200 = (v197 + 63) >> 6;
    while (v199)
    {
      v201 = __clz(__rbit64(v199));
      v199 &= v199 - 1;
LABEL_125:
      v204 = v201 | (v196 << 6);
      if ([*(*(p_aBlock + 48) + 8 * v204) socialGroupVerifiedType] == 2)
      {
        *&v195[(v204 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v204;
        v205 = __OFADD__(v14, 1);
        v14 = (v14 + 1);
        if (v205)
        {
          __break(1u);
LABEL_129:
          v174 = sub_22F1B9878(v195, v250, v14, p_aBlock);
          goto LABEL_130;
        }
      }
    }

    v202 = v196;
    while (1)
    {
      v196 = v202 + 1;
      if (__OFADD__(v202, 1))
      {
        break;
      }

      if (v196 >= v200)
      {
        goto LABEL_129;
      }

      v203 = *(p_aBlock + 56 + 8 * v196);
      ++v202;
      if (v203)
      {
        v201 = __clz(__rbit64(v203));
        v199 = (v203 - 1) & v203;
        goto LABEL_125;
      }
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
  }

  v220 = swift_slowAlloc();
  v221 = v233;
  v222 = sub_22F329CE4(v220, v250, v219, sub_22F32826C, 0);
  v233 = v221;
  if (v221)
  {

    result = MEMORY[0x2319033A0](v220, -1, -1);
    __break(1u);
    return result;
  }

  v174 = v222;

  MEMORY[0x2319033A0](v220, -1, -1);
LABEL_130:
  v206 = v224;
  v207 = v232;
  v208 = v248;
  v209 = v233;
  if ((v174 & 0xC000000000000001) != 0)
  {
    if (sub_22F741A00() >= 1)
    {
      goto LABEL_132;
    }

LABEL_135:
  }

  else
  {
    if (*(v174 + 16) < 1)
    {
      goto LABEL_135;
    }

LABEL_132:
    v210 = swift_allocObject();
    *(v210 + 16) = v174;
    *(v210 + 24) = v208;
    v258 = sub_22F32CC08;
    v259 = v210;
    aBlock = MEMORY[0x277D85DD0];
    v255 = v7;
    v256 = sub_22F327D80;
    v257 = &block_descriptor_54_0;
    v211 = _Block_copy(&aBlock);

    aBlock = 0;
    v212 = [v207 performChangesAndWait:v211 error:&aBlock];
    _Block_release(v211);
    if (!v212)
    {
      v214 = aBlock;
      v215 = sub_22F73F370();

      v238 = v215;
      swift_willThrow();

      (v226[1])(v225, v206);
      goto LABEL_140;
    }

    v213 = aBlock;
  }

  sub_22F741690();
  if (v209)
  {
    v238 = v209;
    (v226[1])(v225, v206);
  }

  else
  {
    (v226[1])(v225, v206);
    v218 = v234;
  }

LABEL_141:
  v216 = *MEMORY[0x277D85DE8];
  return v236;
}

void sub_22F326E4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_opt_self() fetchPersonsInSocialGroup:a1 option:a2];
  v9 = [v8 fetchedObjects];

  if (!v9)
  {
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4F18);
    v37 = a1;
    v20 = sub_22F740B70();
    v38 = sub_22F7415E0();
    if (os_log_type_enabled(v20, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v77 = v40;
      *v39 = 136315138;
      v41 = [v37 uuid];

      if (!v41)
      {
        goto LABEL_41;
      }

      v42 = sub_22F740E20();
      v44 = v43;

      v45 = sub_22F145F20(v42, v44, &v77);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_22F0FC000, v20, v38, "Unable to fetch members for social group %s!", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x2319033A0](v40, -1, -1);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    else
    {
    }

LABEL_33:

    return;
  }

  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v10 = sub_22F741180();

  v12 = sub_22F152B5C(v11);

  if (!*(a4 + 16))
  {

LABEL_16:
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v46 = sub_22F740B90();
    __swift_project_value_buffer(v46, qword_2810B4F18);

    v47 = a1;
    v48 = sub_22F740B70();
    v49 = sub_22F7415E0();

    if (!os_log_type_enabled(v48, v49))
    {

LABEL_39:

      return;
    }

    v50 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v77 = v74;
    *v50 = 136315394;
    v51 = [v47 localIdentifier];
    v52 = sub_22F740E20();
    v54 = v53;

    v55 = sub_22F145F20(v52, v54, &v77);

    *(v50 + 4) = v55;
    buf = v50;
    *(v50 + 12) = 2080;
    if (v10 >> 62)
    {
      v56 = sub_22F741A00();
      if (v56)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v56 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v56)
      {
LABEL_21:
        v73 = v48;
        v76 = MEMORY[0x277D84F90];
        sub_22F146454(0, v56 & ~(v56 >> 63), 0);
        if ((v56 & 0x8000000000000000) == 0)
        {
          v57 = 0;
          v58 = v76;
          do
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v59 = MEMORY[0x2319016F0](v57, v10);
            }

            else
            {
              v59 = *(v10 + 8 * v57 + 32);
            }

            v60 = v59;
            v61 = [v60 localIdentifier];
            v62 = sub_22F740E20();
            v64 = v63;

            v66 = *(v76 + 16);
            v65 = *(v76 + 24);
            if (v66 >= v65 >> 1)
            {
              sub_22F146454((v65 > 1), v66 + 1, 1);
            }

            ++v57;
            *(v76 + 16) = v66 + 1;
            v67 = v76 + 16 * v66;
            *(v67 + 32) = v62;
            *(v67 + 40) = v64;
          }

          while (v56 != v57);

          v48 = v73;
          goto LABEL_38;
        }

        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    v58 = MEMORY[0x277D84F90];
LABEL_38:
    v69 = MEMORY[0x231900D40](v58, MEMORY[0x277D837D0]);
    v71 = v70;

    v72 = sub_22F145F20(v69, v71, &v77);

    *(buf + 14) = v72;
    _os_log_impl(&dword_22F0FC000, v48, v49, "Couldn't find social group node for persisted social group %s with members %s", buf, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v74, -1, -1);
    MEMORY[0x2319033A0](buf, -1, -1);
    goto LABEL_39;
  }

  v13 = sub_22F123618(v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(*(a4 + 56) + 8 * v13);
  [v16 updatePropertiesWithPersistedSocialGroup:a1 graph:a5];
  if (qword_2810AA918 != -1)
  {
    swift_once();
  }

  v17 = sub_22F740B90();
  __swift_project_value_buffer(v17, qword_2810B4F18);
  v18 = v16;
  v19 = a1;
  v20 = sub_22F740B70();
  v21 = sub_22F7415D0();

  if (!os_log_type_enabled(v20, v21))
  {

    goto LABEL_33;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v77 = v24;
  *v22 = 138412802;
  *(v22 + 4) = v18;
  *v23 = v18;
  *(v22 + 12) = 2080;
  v25 = v18;
  v26 = [v19 uuid];

  if (!v26)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v27 = sub_22F740E20();
  v29 = v28;

  v30 = sub_22F145F20(v27, v29, &v77);

  *(v22 + 14) = v30;
  *(v22 + 22) = 2080;
  v31 = [v25 persistedUUID];
  if (v31)
  {
    v32 = v31;
    v33 = sub_22F740E20();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v68 = sub_22F145F20(v33, v35, &v77);

  *(v22 + 24) = v68;
  _os_log_impl(&dword_22F0FC000, v20, v21, "Social group node %@ of current group %s has persisted UUID %s", v22, 0x20u);
  sub_22F2A87F0(v23);
  MEMORY[0x2319033A0](v23, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x2319033A0](v24, -1, -1);
  MEMORY[0x2319033A0](v22, -1, -1);
}

void sub_22F327618(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_opt_self();

  sub_22F152B5C(v9);

  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  sub_22F11FA28(&qword_2810A8E90, &qword_2810A8EA0, 0x277CD9938);
  v10 = sub_22F741410();

  v11 = [v8 creationRequestForSocialGroupWithMembers:v10 userAction:0];

  v12 = [v11 placeholderForCreatedSocialGroup];
  swift_beginAccess();
  v13 = *(a2 + 16);
  *(a2 + 16) = v12;

  [v11 setOrder_];
  if (a4)
  {
    v14 = a4;
    [v11 setKeyAsset_];
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v15 = sub_22F740B90();
    __swift_project_value_buffer(v15, qword_2810B4F18);

    v16 = sub_22F740B70();
    v17 = sub_22F7415D0();

    if (os_log_type_enabled(v16, v17))
    {
      v77 = v11;
      v79 = a3;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v83 = v19;
      *v18 = 136315394;
      if (a1 >> 62)
      {
        v20 = sub_22F741A00();
      }

      else
      {
        v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = MEMORY[0x277D84F90];
      v75 = v19;
      if (v20)
      {
        v81 = MEMORY[0x277D84F90];
        sub_22F146454(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          goto LABEL_45;
        }

        v71 = v17;
        v72 = v16;
        v21 = v81;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v22 = 0;
          do
          {
            MEMORY[0x2319016F0](v22, a1);
            v23 = [swift_unknownObjectRetain() localIdentifier];
            v24 = sub_22F740E20();
            v26 = v25;
            swift_unknownObjectRelease_n();

            v28 = *(v81 + 16);
            v27 = *(v81 + 24);
            if (v28 >= v27 >> 1)
            {
              sub_22F146454((v27 > 1), v28 + 1, 1);
            }

            ++v22;
            *(v81 + 16) = v28 + 1;
            v29 = v81 + 16 * v28;
            *(v29 + 32) = v24;
            *(v29 + 40) = v26;
          }

          while (v20 != v22);
        }

        else
        {
          v30 = (a1 + 32);
          do
          {
            v31 = *v30;
            v32 = [v31 localIdentifier];
            v33 = sub_22F740E20();
            v35 = v34;

            v37 = *(v81 + 16);
            v36 = *(v81 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_22F146454((v36 > 1), v37 + 1, 1);
            }

            *(v81 + 16) = v37 + 1;
            v38 = v81 + 16 * v37;
            *(v38 + 32) = v33;
            *(v38 + 40) = v35;
            ++v30;
            --v20;
          }

          while (v20);
        }

        v16 = v72;
        v17 = v71;
      }

      v39 = MEMORY[0x231900D40](v21, MEMORY[0x277D837D0]);
      v41 = v40;

      v42 = sub_22F145F20(v39, v41, &v83);

      *(v18 + 4) = v42;
      *(v18 + 12) = 2048;
      a3 = v79;
      *(v18 + 14) = v79;
      _os_log_impl(&dword_22F0FC000, v16, v17, "Key Asset set for social group with members %s and automatic order %ld", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x2319033A0](v75, -1, -1);
      MEMORY[0x2319033A0](v18, -1, -1);

      v11 = v77;
    }

    else
    {
    }
  }

  if (qword_2810AA918 != -1)
  {
    swift_once();
  }

  v43 = sub_22F740B90();
  __swift_project_value_buffer(v43, qword_2810B4F18);

  v44 = sub_22F740B70();
  v45 = sub_22F7415D0();

  if (!os_log_type_enabled(v44, v45))
  {
    goto LABEL_41;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v83 = v47;
  *v46 = 136315394;
  if (a1 >> 62)
  {
    v48 = sub_22F741A00();
  }

  else
  {
    v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = MEMORY[0x277D84F90];
  v76 = v47;
  if (!v48)
  {
LABEL_40:
    v67 = MEMORY[0x231900D40](v49, MEMORY[0x277D837D0]);
    v69 = v68;

    v70 = sub_22F145F20(v67, v69, &v83);

    *(v46 + 4) = v70;
    *(v46 + 12) = 2048;
    *(v46 + 14) = a3;
    _os_log_impl(&dword_22F0FC000, v44, v45, "Persisting social group with members %s and automatic order %ld", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x2319033A0](v76, -1, -1);
    MEMORY[0x2319033A0](v46, -1, -1);
LABEL_41:

    return;
  }

  v82 = MEMORY[0x277D84F90];
  sub_22F146454(0, v48 & ~(v48 >> 63), 0);
  if ((v48 & 0x8000000000000000) == 0)
  {
    v73 = v45;
    v74 = v44;
    v78 = v11;
    v80 = a3;
    v49 = v82;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = 0;
      do
      {
        MEMORY[0x2319016F0](v50, a1);
        v51 = [swift_unknownObjectRetain() localIdentifier];
        v52 = sub_22F740E20();
        v54 = v53;
        swift_unknownObjectRelease_n();

        v56 = *(v82 + 16);
        v55 = *(v82 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_22F146454((v55 > 1), v56 + 1, 1);
        }

        ++v50;
        *(v82 + 16) = v56 + 1;
        v57 = v82 + 16 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v54;
      }

      while (v48 != v50);
    }

    else
    {
      v58 = (a1 + 32);
      do
      {
        v59 = *v58;
        v60 = [v59 localIdentifier];
        v61 = sub_22F740E20();
        v63 = v62;

        v65 = *(v82 + 16);
        v64 = *(v82 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_22F146454((v64 > 1), v65 + 1, 1);
        }

        *(v82 + 16) = v65 + 1;
        v66 = v82 + 16 * v65;
        *(v66 + 32) = v61;
        *(v66 + 40) = v63;
        ++v58;
        --v48;
      }

      while (v48);
    }

    v11 = v78;
    a3 = v80;
    v44 = v74;
    v45 = v73;
    goto LABEL_40;
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_22F327D80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_22F327DC4(uint64_t a1)
{
  v2 = OBJC_IVAR___PGSocialGroupPersistenceActions_currentAutomaticSocialGroupsToModifyAndOrders;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(a1 + v2);

    v6 = 0;
    v7 = (v3 + 40);
    v40 = v3;
    v41 = v4;
    while (1)
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *v7;
      v9 = *(v7 - 1);
      if (v8 == [v9 automaticOrder])
      {
        if (qword_2810AA918 != -1)
        {
          swift_once();
        }

        v10 = sub_22F740B90();
        __swift_project_value_buffer(v10, qword_2810B4F18);
        v11 = v9;
        v12 = sub_22F740B70();
        v13 = sub_22F7415D0();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v42 = v15;
          *v14 = 134218242;
          *(v14 + 4) = v8;
          *(v14 + 12) = 2080;
          v16 = [v11 localIdentifier];
          v17 = sub_22F740E20();
          v19 = v18;

          v20 = sub_22F145F20(v17, v19, &v42);

          *(v14 + 14) = v20;
          v4 = v41;
          _os_log_impl(&dword_22F0FC000, v12, v13, "Skipping setting automatic order %ld for social group %s since its automatic order is already set to that", v14, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v15);
          MEMORY[0x2319033A0](v15, -1, -1);
          v21 = v14;
          v3 = v40;
          MEMORY[0x2319033A0](v21, -1, -1);
LABEL_22:

          goto LABEL_4;
        }
      }

      else
      {
        v22 = [objc_opt_self() changeRequestForSocialGroup:v9 userAction:0];
        if (!v22)
        {
          if (qword_2810AA918 != -1)
          {
            swift_once();
          }

          v34 = sub_22F740B90();
          __swift_project_value_buffer(v34, qword_2810B4F18);
          v35 = sub_22F740B70();
          v36 = sub_22F7415E0();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&dword_22F0FC000, v35, v36, "Couldn't create change request for current automatic social group!", v37, 2u);
            v38 = v37;
            v4 = v41;
            MEMORY[0x2319033A0](v38, -1, -1);
          }

          goto LABEL_4;
        }

        v11 = v22;
        [v22 setOrder_];
        if (qword_2810AA918 != -1)
        {
          swift_once();
        }

        v23 = sub_22F740B90();
        __swift_project_value_buffer(v23, qword_2810B4F18);
        v24 = v9;
        v12 = sub_22F740B70();
        v25 = sub_22F7415D0();

        if (!os_log_type_enabled(v12, v25))
        {

          goto LABEL_22;
        }

        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42 = v27;
        *v26 = 134218242;
        *(v26 + 4) = v8;
        *(v26 + 12) = 2080;
        v28 = [v24 localIdentifier];
        v39 = v24;
        v29 = sub_22F740E20();
        v31 = v30;

        v32 = sub_22F145F20(v29, v31, &v42);
        v4 = v41;

        *(v26 + 14) = v32;
        _os_log_impl(&dword_22F0FC000, v12, v25, "Setting automatic order %ld for social group %s", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x2319033A0](v27, -1, -1);
        v33 = v26;
        v3 = v40;
        MEMORY[0x2319033A0](v33, -1, -1);
      }

LABEL_4:
      ++v6;
      v7 += 2;
      if (v4 == v6)
      {

        return;
      }
    }
  }
}

void sub_22F3282A8(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_22F120634(0, &unk_2810A91B0, 0x277CD99D0);
  sub_22F11FA28(&qword_2810A91A8, &unk_2810A91B0, 0x277CD99D0);
  v3 = sub_22F741410();
  [v2 deleteSocialGroups_];

  if (qword_2810AA918 != -1)
  {
    swift_once();
  }

  v4 = sub_22F740B90();
  __swift_project_value_buffer(v4, qword_2810B4F18);

  oslog = sub_22F740B70();
  v5 = sub_22F7415D0();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_22F741A00();
    }

    else
    {
      v7 = *(a1 + 16);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&dword_22F0FC000, oslog, v5, "Deleted %ld outdated graph social groups", v6, 0xCu);
    MEMORY[0x2319033A0](v6, -1, -1);
  }

  else
  {
  }
}

void sub_22F328488(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_opt_self() fetchPersonsInSocialGroup:a1 option:a4];
  v11 = [v10 fetchedObjects];

  if (v11)
  {
    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v12 = sub_22F741180();

    v13 = _s11PhotosGraph20SocialGroupsPromoterC15socialGroupHash3forSSSaySo8PHPersonCG_tFZ_0(v12);
    v15 = v14;

    swift_beginAccess();
    v16 = a1;
    v17 = *(a6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(a6 + 16);
    *(a6 + 16) = 0x8000000000000000;
    sub_22F132CA8(v16, v13, v15, isUniquelyReferenced_nonNull_native);

    *(a6 + 16) = v30;
    swift_endAccess();
LABEL_10:
    objc_autoreleasePoolPop(v9);
    return;
  }

  if (qword_2810AA918 != -1)
  {
    swift_once();
  }

  v19 = sub_22F740B90();
  __swift_project_value_buffer(v19, qword_2810B4F18);
  v20 = a1;
  v21 = sub_22F740B70();
  v22 = sub_22F7415E0();
  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_9;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v31 = v24;
  *v23 = 136315138;
  v25 = [v20 uuid];

  if (v25)
  {
    v26 = sub_22F740E20();
    v28 = v27;

    v29 = sub_22F145F20(v26, v28, &v31);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_22F0FC000, v21, v22, "Unable to fetch members for social group %s!", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x2319033A0](v24, -1, -1);
    MEMORY[0x2319033A0](v23, -1, -1);
LABEL_9:

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t static SocialGroupsPromoter.ingestUserVerifiedSocialGroups(from:into:progressReporter:)(uint64_t a1, void *a2)
{
  sub_22F741690();
  if (v2)
  {
    return a1;
  }

  v53 = a2;
  v52 = sub_22F32AFB4(a1);
  v6 = [a1 librarySpecificFetchOptions];
  [v6 setSocialGroupContext_];
  v51 = v6;
  v7 = [objc_opt_self() fetchSocialGroupsWithOptions_];
  v8 = [v7 fetchedObjects];

  if (!v8)
  {
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v32 = sub_22F740B90();
    __swift_project_value_buffer(v32, qword_2810B4F18);
    v33 = sub_22F740B70();
    v34 = sub_22F7415E0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22F0FC000, v33, v34, "Unable to fetch user-verified social groups!", v35, 2u);
      MEMORY[0x2319033A0](v35, -1, -1);
    }

    sub_22F32C240();
    a1 = swift_allocError();
    *v36 = 0;
    swift_willThrow();

    return a1;
  }

  sub_22F120634(0, &unk_2810A91B0, 0x277CD99D0);
  v54 = sub_22F741180();

  v9 = [a2 socialGroupNodesSortedByImportance];
  sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
  v10 = sub_22F741180();

  if (v10 >> 62)
  {
LABEL_36:
    v11 = sub_22F741A00();
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_37:
    v13 = MEMORY[0x277D84F98];
LABEL_38:

    sub_22F1444CC(v37);
    v39 = v38;
    v64 = v38;
    a1 = v54;
    if (v54 >> 62)
    {
      goto LABEL_59;
    }

    for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {

      v41 = v52;
      v42 = v53;
      if (!i)
      {
        break;
      }

      v39 = 0;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v60 = a1 & 0xC000000000000001;
      a1 = MEMORY[0x277D84F90];
      v56 = v41;
      v53 = i;
      while (1)
      {
        if (v60)
        {
          v44 = MEMORY[0x2319016F0](v39, v54);
        }

        else
        {
          if (v39 >= *(v58 + 16))
          {
            goto LABEL_58;
          }

          v44 = *(v54 + 8 * v39 + 32);
        }

        v45 = v44;
        v46 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v63 = v44;
        sub_22F328E40(&v63, v41, v42, v13, &v61);

        v47 = v62;
        if (v62)
        {
          v48 = v61;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_22F13E1A8(0, *(a1 + 16) + 1, 1, a1);
          }

          v50 = *(a1 + 16);
          v49 = *(a1 + 24);
          if (v50 >= v49 >> 1)
          {
            a1 = sub_22F13E1A8((v49 > 1), v50 + 1, 1, a1);
          }

          *(a1 + 16) = v50 + 1;
          v43 = a1 + 16 * v50;
          *(v43 + 32) = v48;
          *(v43 + 40) = v47;
          v41 = v56;
          i = v53;
        }

        ++v39;
        if (v46 == i)
        {
          v39 = v64;
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }

    a1 = MEMORY[0x277D84F90];
LABEL_56:

    swift_bridgeObjectRelease_n();
    sub_22F329D74(v39, v42);
    sub_22F741690();

    return a1;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_37;
  }

LABEL_6:
  v12 = 0;
  v57 = v10 & 0xFFFFFFFFFFFFFF8;
  v59 = v10 & 0xC000000000000001;
  v13 = MEMORY[0x277D84F98];
  v55 = v10;
  while (1)
  {
    if (v59)
    {
      v16 = MEMORY[0x2319016F0](v12, v10);
    }

    else
    {
      if (v12 >= *(v57 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v12 + 32);
    }

    v17 = v16;
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v10 = [v16 sortedMemberNodes];
    if (!v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
      sub_22F741180();
      v10 = sub_22F741160();
    }

    v19 = [objc_opt_self() identifierForMemberNodes_];

    v20 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v13;
    v23 = sub_22F13A8F4(v19);
    v24 = v13[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_34;
    }

    v10 = v22;
    if (v13[3] < v26)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v13 = v61;
      if (v22)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_22F137FE8();
      v13 = v61;
      if (v10)
      {
LABEL_7:
        v14 = v13[7];
        v15 = *(v14 + 8 * v23);
        *(v14 + 8 * v23) = v20;

        goto LABEL_8;
      }
    }

LABEL_22:
    v13[(v23 >> 6) + 8] |= 1 << v23;
    *(v13[6] + 8 * v23) = v19;
    *(v13[7] + 8 * v23) = v20;

    v29 = v13[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_35;
    }

    v13[2] = v31;
LABEL_8:
    ++v12;
    v10 = v55;
    if (v18 == v11)
    {
      goto LABEL_38;
    }
  }

  sub_22F12C5C0(v26, isUniquelyReferenced_nonNull_native);
  v27 = sub_22F13A8F4(v19);
  if ((v10 & 1) == (v28 & 1))
  {
    v23 = v27;
    v13 = v61;
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F328E40(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = [objc_opt_self() fetchPersonsInSocialGroup:*a1 option:a2];
  v10 = [v9 fetchedObjects];

  if (!v10)
  {
    if (qword_2810AA918 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  v89 = a4;
  v87 = a5;
  v88 = v8;
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v8 = sub_22F741180();

  if (!(v8 >> 62))
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_20:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v11 = sub_22F741A00();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_4:
  v90 = MEMORY[0x277D84F90];
  sub_22F146454(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
LABEL_60:
    swift_once();
LABEL_14:
    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4F18);
    v24 = v8;
    v25 = sub_22F740B70();
    v26 = sub_22F7415E0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v90 = v28;
      *v27 = 136315138;
      v29 = [v24 uuid];

      if (!v29)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return;
      }

      v30 = sub_22F740E20();
      v32 = v31;

      v33 = sub_22F145F20(v30, v32, &v90);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_22F0FC000, v25, v26, "Unable to fetch members for social group %s!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x2319033A0](v28, -1, -1);
      MEMORY[0x2319033A0](v27, -1, -1);
    }

    else
    {
    }

    sub_22F32C240();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    return;
  }

  v86 = a3;
  v12 = 0;
  v13 = v90;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2319016F0](v12, v8);
    }

    else
    {
      v14 = *(v8 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = [v14 localIdentifier];
    v17 = sub_22F740E20();
    v19 = v18;

    v90 = v13;
    v21 = v13[2];
    v20 = v13[3];
    if (v21 >= v20 >> 1)
    {
      sub_22F146454((v20 > 1), v21 + 1, 1);
      v13 = v90;
    }

    ++v12;
    v13[2] = v21 + 1;
    v22 = &v13[2 * v21];
    v22[4] = v17;
    v22[5] = v19;
  }

  while (v11 != v12);

  a3 = v86;
LABEL_21:
  v35 = sub_22F1515F8(v13);

  v36 = objc_opt_self();
  v37 = sub_22F741410();
  v38 = [v36 memberNodesForLocalIdentifiers:v37 inGraph:a3];

  if ([v38 count] != v35[2])
  {
    v58 = [v38 localIdentifiers];
    v59 = sub_22F741420();

    if (*(v59 + 16) <= v35[2] >> 3)
    {
      v90 = v35;
      sub_22F3E7FB8(v59);

      v60 = v35;
    }

    else
    {
      v60 = sub_22F1E999C(v59, v35);
    }

    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v61 = sub_22F740B90();
    __swift_project_value_buffer(v61, qword_2810B4F18);

    v62 = sub_22F740B70();
    v63 = sub_22F7415E0();

    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_42;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v91 = v65;
    *v64 = 136315138;
    v66 = *(v60 + 16);
    if (v66)
    {
      v67 = sub_22F10B348(*(v60 + 16), 0);
      v68 = sub_22F11A438(&v90, v67 + 4, v66, v60);
      sub_22F0FF590();
      if (v68 != v66)
      {
        __break(1u);
LABEL_42:

LABEL_45:

        sub_22F32C240();
        swift_allocError();
        *v73 = 1;
        swift_willThrow();

        return;
      }
    }

    else
    {

      v67 = MEMORY[0x277D84F90];
    }

    v69 = MEMORY[0x231900D40](v67, MEMORY[0x277D837D0]);
    v71 = v70;

    v72 = sub_22F145F20(v69, v71, &v91);

    *(v64 + 4) = v72;
    _os_log_impl(&dword_22F0FC000, v62, v63, "Graph missing member nodes for localIdentifiers %s, skipping social group ingest", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x2319033A0](v65, -1, -1);
    MEMORY[0x2319033A0](v64, -1, -1);
    goto LABEL_45;
  }

  v39 = [v38 array];
  if (!v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
    sub_22F741180();
    v39 = sub_22F741160();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
  v40 = sub_22F741180();
  v41 = [objc_opt_self() identifierForMemberNodes_];

  if (*(v89 + 16))
  {
    v42 = sub_22F13A8F4(v41);
    if (v43)
    {
      v44 = a3;
      v45 = *(*(v89 + 56) + 8 * v42);
      if ([v45 isUserVerified])
      {

        if ([v88 automaticOrder])
        {
          if (qword_2810AA918 != -1)
          {
            swift_once();
          }

          v46 = sub_22F740B90();
          __swift_project_value_buffer(v46, qword_2810B4F18);
          v47 = v88;
          v48 = sub_22F740B70();
          v49 = sub_22F7415C0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v90 = v51;
            *v50 = 136315138;
            v52 = [v47 uuid];

            if (v52)
            {
              v53 = sub_22F740E20();
              v55 = v54;

              v56 = sub_22F145F20(v53, v55, &v90);

              *(v50 + 4) = v56;
              v57 = "Not Updating moments for the user-verified social group %s as it was a graph verified social group before.";
LABEL_56:
              _os_log_impl(&dword_22F0FC000, v48, v49, v57, v50, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v51);
              MEMORY[0x2319033A0](v51, -1, -1);
              MEMORY[0x2319033A0](v50, -1, -1);
LABEL_58:

              *v87 = 0;
              v87[1] = 0;
              return;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v79 = [objc_allocWithZone(MEMORY[0x277D22C50]) init];
          v90 = v79;
          sub_22F32A170(&v90, v45, v88, v44, 0);
          [v44 executeGraphChangeRequest_];

          if (qword_2810AA918 != -1)
          {
            swift_once();
          }

          v80 = sub_22F740B90();
          __swift_project_value_buffer(v80, qword_2810B4F18);
          v47 = v88;
          v48 = sub_22F740B70();
          v49 = sub_22F7415C0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v90 = v51;
            *v50 = 136315138;
            v81 = [v47 uuid];

            if (v81)
            {
              v82 = sub_22F740E20();
              v84 = v83;

              v85 = sub_22F145F20(v82, v84, &v90);

              *(v50 + 4) = v85;
              v57 = "Updating moments for already-ingested user-verified social group %s";
              goto LABEL_56;
            }

            goto LABEL_63;
          }
        }

        goto LABEL_58;
      }

      a3 = v44;
    }
  }

  sub_22F32AB90(v88, v40, a3);

  v74 = [v88 uuid];
  if (v74)
  {
    v75 = v74;
    v76 = sub_22F740E20();
    v78 = v77;
  }

  else
  {

    v76 = 0;
    v78 = 0;
  }

  *v87 = v76;
  v87[1] = v78;
}

uint64_t sub_22F329A08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 localIdentifier];
  v6 = sub_22F740E20();
  v8 = v7;

  swift_beginAccess();
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_22F13E1A8(0, *(v9 + 2) + 1, 1, v9);
    *(a4 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_22F13E1A8((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  *(a4 + 16) = v9;
  return swift_endAccess();
}

void sub_22F329AFC(uint64_t a1, int a2, id a3, uint64_t a4, id *a5)
{
  if (([a3 containsNode_] & 1) == 0)
  {
    v8 = [objc_allocWithZone(PGGraphSocialGroupEdge) initFromMomentNode:a1 toSocialGroupNode:a4];
    [*a5 addEdge_];
  }
}

void sub_22F329BAC(void *a1, uint64_t a2, id *a3)
{
  v5 = *a3;
  v6 = [v5 identifierSetByAddingIdentifier_];

  v7 = *a3;
  *a3 = v6;
}

id SocialGroupsPromoter.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SocialGroupsPromoter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_22F329CE4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_22F35F6E8(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_22F329D74(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB37E0, &qword_22F785D78);
  v36[3] = v4;
  v36[4] = sub_22F16BC6C(&qword_2810A9238, &unk_27DAB37E0, &qword_22F785D78);
  v36[0] = a1;
  v5 = objc_allocWithZone(MEMORY[0x277D22C50]);

  v6 = [v5 init];
  v7 = __swift_project_boxed_opaque_existential_1(v36, v4);
  v8 = *(*(v4 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v33[-1] - v10);
  (*(v12 + 16))(&v33[-1] - v10, v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v14 = *v11;
  if ((*v11 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v11;
    }

    sub_22F7419C0();
    sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
    sub_22F11FA28(&unk_2810A9040, &unk_2810A9050, off_27887B3D8);
    sub_22F741470();
    v14 = v36[5];
    v16 = v36[6];
    v18 = v36[7];
    v17 = v36[8];
    v19 = v36[9];
  }

  else
  {
    v17 = 0;
    v20 = -1;
    v21 = -1 << *(v14 + 32);
    v16 = v14 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v20 = ~(-1 << v22);
    }

    v19 = v20 & *(v14 + 56);
  }

  *boxed_opaque_existential_1 = v14;
  boxed_opaque_existential_1[1] = v16;
  boxed_opaque_existential_1[2] = v18;
  boxed_opaque_existential_1[3] = v17;
  boxed_opaque_existential_1[4] = v19;
  __swift_mutable_project_boxed_opaque_existential_1(v33, AssociatedTypeWitness);
  sub_22F7418A0();
  for (i = v32; v32; i = v32)
  {
    v24 = [i allEdges];
    sub_22F120634(0, &unk_27DAB0680, 0x277D22C10);
    v25 = a2;
    sub_22F11FA28(&unk_27DAB37F0, &unk_27DAB0680, 0x277D22C10);
    v26 = sub_22F741420();

    sub_22F10A440(v26);

    v27 = objc_allocWithZone(PGGraphEdgeCollection);
    v28 = sub_22F741410();

    v29 = v27;
    a2 = v25;
    v30 = [v29 initWithSet:v28 graph:v25];

    [v6 removeEdges_];
    [v6 removeNode_];

    __swift_mutable_project_boxed_opaque_existential_1(v33, AssociatedTypeWitness);
    sub_22F7418A0();
  }

  __swift_destroy_boxed_opaque_existential_0(v33);
  [a2 executeGraphChangeRequest_];

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

void sub_22F32A170(id *a1, id a2, void *a3, void *a4, char a5)
{
  v5 = a4;
  if (a5)
  {
    v8 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph_];
  }

  else
  {
    v9 = [a2 collection];
    v8 = [v9 momentNodes];
  }

  v73 = v8;
  v10 = [a3 photoLibrary];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 librarySpecificFetchOptions];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22F771340;
    v14 = *MEMORY[0x277CD9AA8];
    *(v13 + 32) = sub_22F740E20();
    *(v13 + 40) = v15;
    v16 = sub_22F741160();

    [v12 setFetchPropertySets_];

    v17 = objc_opt_self();
    v18 = v12;
    v19 = [v17 fetchExclusiveAssetsForSocialGroup:a3 options:v18];
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D84F90];
    *(v20 + 16) = MEMORY[0x277D84F90];
    v22 = (v20 + 16);
    if (v19)
    {
      v84 = sub_22F32C608;
      v85 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v82 = sub_22F334418;
      v83 = &block_descriptor_33;
      v23 = _Block_copy(&aBlock);
      v24 = v19;

      [v24 enumerateObjectsUsingBlock_];
      _Block_release(v23);
    }

    sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    swift_beginAccess();
    v26 = *v22;

    sub_22F161EB4(v27);

    v28 = sub_22F741160();

    v78 = ObjCClassFromMetadata;
    v29 = [ObjCClassFromMetadata fetchMomentsForAssetsWithLocalIdentifiers:v28 options:v18];

    if (!v29)
    {
      goto LABEL_40;
    }

    v30 = [v29 fetchedObjects];

    v75 = a1;
    v76 = v5;
    v72 = v18;
    v71 = v19;
    if (v30)
    {
      v31 = sub_22F741180();

      if (v31 >> 62)
      {
        goto LABEL_29;
      }

      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        while (1)
        {
          aBlock = v21;
          sub_22F146454(0, v32 & ~(v32 >> 63), 0);
          if (v32 < 0)
          {
            break;
          }

          a1 = 0;
          v33 = aBlock;
          v34 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
          while (1)
          {
            v35 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              break;
            }

            if ((v31 & 0xC000000000000001) != 0)
            {
              v36 = MEMORY[0x2319016F0](a1, v31);
            }

            else
            {
              if (a1 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v36 = *(v31 + 8 * a1 + 32);
              swift_unknownObjectRetain();
            }

            if ([v36 respondsToSelector_])
            {
              v37 = [v36 v34[339]];
              sub_22F740E20();

              v38 = sub_22F740DF0();
            }

            else
            {
              v38 = 0;
            }

            v39 = [v78 uuidFromLocalIdentifier_];

            if (!v39)
            {
              goto LABEL_38;
            }

            v40 = sub_22F740E20();
            v5 = v41;
            swift_unknownObjectRelease();

            aBlock = v33;
            v43 = *(v33 + 16);
            v42 = *(v33 + 24);
            v21 = v43 + 1;
            if (v43 >= v42 >> 1)
            {
              sub_22F146454((v42 > 1), v43 + 1, 1);
              v33 = aBlock;
            }

            *(v33 + 16) = v21;
            v44 = v33 + 16 * v43;
            *(v44 + 32) = v40;
            *(v44 + 40) = v5;
            a1 = (a1 + 1);
            v34 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
            if (v35 == v32)
            {

              a1 = v75;
              v5 = v76;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          v32 = sub_22F741A00();
          if (!v32)
          {
            goto LABEL_30;
          }
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_30:

      v33 = MEMORY[0x277D84F90];
LABEL_31:
      sub_22F1515F8(v33);
    }

    v45 = objc_opt_self();
    v46 = sub_22F741410();

    v47 = [v45 momentNodesForUUIDs:v46 inGraph:v5];

    v48 = swift_allocObject();
    v48[2] = v73;
    v48[3] = a2;
    v48[4] = a1;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_22F32C5DC;
    *(v49 + 24) = v48;
    v84 = sub_22F250854;
    v85 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v81 = 1107296256;
    v82 = sub_22F107E24;
    v83 = &block_descriptor_30;
    v50 = _Block_copy(&aBlock);
    v77 = v73;
    v51 = a2;

    [v47 enumerateUsingBlock_];
    _Block_release(v50);
    LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

    if (v50)
    {
      __break(1u);
    }

    else
    {
      v52 = [v77 collectionBySubtracting_];

      v79 = [objc_allocWithZone(MEMORY[0x277D22BB0]) init];
      v53 = swift_allocObject();
      *(v53 + 16) = &v79;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_22F32C600;
      *(v54 + 24) = v53;
      v84 = sub_22F2D4D54;
      v85 = v54;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v55 = v52;
      v82 = sub_22F107E24;
      v83 = &block_descriptor_30_1;
      v56 = _Block_copy(&aBlock);

      [v52 enumerateUsingBlock_];
      _Block_release(v56);
      LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

      if ((v56 & 1) == 0)
      {
        v57 = [v51 identifier];
        v58 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
        v59 = v79;
        v60 = objc_opt_self();
        v61 = v59;
        v62 = [v60 any];
        v63 = [v76 edgeIdentifiersOfType:1 betweenNodesForIdentifiers:v58 andNodesForIdentifiers:v61 matchingFilter:v62];

        v64 = [v76 edgesForIdentifiers_];
        sub_22F120634(0, &unk_27DAB0680, 0x277D22C10);
        sub_22F11FA28(&unk_27DAB37F0, &unk_27DAB0680, 0x277D22C10);
        v65 = sub_22F741420();

        v66 = *v75;
        sub_22F10A440(v65);

        v67 = objc_allocWithZone(PGGraphEdgeCollection);
        v68 = sub_22F741410();

        v69 = [v67 initWithSet:v68 graph:v76];

        [v66 removeEdges_];
        v70 = v79;

        return;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_22F32AB90(void *a1, unint64_t a2, void *a3)
{
  v16 = [objc_allocWithZone(MEMORY[0x277D22C50]) init];
  v4 = objc_opt_self();
  v5 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
  v6 = sub_22F741160();
  v7 = [v4 identifierForMemberNodes_];

  v15 = [objc_allocWithZone(PGGraphSocialGroupNode) initWithSocialGroupIdentifier:v7 importance:1 isUserVerified:1.0];
  [v5 addNode_];

  if (a2 >> 62)
  {
    v8 = sub_22F741A00();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v9 = 0;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2319016F0](v9, a2);
    }

    else
    {
      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    v12 = [objc_allocWithZone(PGGraphBelongsToEdge) initFromMemberNode:v10 toSocialGroupNode:v15 importance:1.0];
    [v5 addEdge_];
  }

  while (v8 != v9);
LABEL_10:
  sub_22F32A170(&v16, v15, a1, a3, 1);
  [a3 executeGraphChangeRequest_];
  [v15 updatePropertiesWithPersistedSocialGroup:a1 graph:a3];
}

uint64_t sub_22F32ADA8(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  v21 = result + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v3;
    v24 = v4;
    while (1)
    {
      if (v5 >= v2)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_25;
      }

      v6 = (v21 + 16 * v5);
      v7 = *v6;
      v8 = v6[1];
      v9 = *a2;
      if (!*(*a2 + 16))
      {
        break;
      }

      v23 = v6[1];
      v10 = *(v9 + 40);
      sub_22F742170();

      sub_22F2594CC(v25, v7);
      v11 = sub_22F7421D0();
      v12 = -1 << *(v9 + 32);
      v13 = v11 & ~v12;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
LABEL_14:

        v8 = v23;
        v4 = v24;
        goto LABEL_15;
      }

      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v9 + 48) + 8 * v13);

        v17 = sub_22F17B5C0(v16, v7);

        if (v17)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v5 = v3;
      v4 = v24;
      if (v3 == v2)
      {
        return v4;
      }
    }

LABEL_15:
    result = swift_isUniquelyReferenced_nonNull_native();
    v26 = v4;
    if ((result & 1) == 0)
    {
      result = sub_22F146C74(0, *(v4 + 16) + 1, 1);
      v4 = v26;
    }

    v19 = *(v4 + 16);
    v18 = *(v4 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_22F146C74((v18 > 1), v19 + 1, 1);
      v4 = v26;
    }

    *(v4 + 16) = v19 + 1;
    v20 = v4 + 16 * v19;
    *(v20 + 32) = v7;
    *(v20 + 40) = v8;
  }

  while (v3 != v2);
  return v4;
}

id sub_22F32AFB4(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F771350;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  *(v2 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v3 = sub_22F741160();

  [v1 setIncludedDetectionTypes_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771340;
  v5 = *MEMORY[0x277CD9C60];
  *(v4 + 32) = sub_22F740E20();
  *(v4 + 40) = v6;
  v7 = sub_22F741160();

  [v1 setFetchPropertySets_];

  return v1;
}

uint64_t sub_22F32B11C(int a1, id a2)
{
  v3 = [a2 meNodeWithFallbackInferredMeNode];
  if (v3 && (v4 = v3, v5 = [v3 localIdentifier], v4, v5))
  {
    v65 = sub_22F740E20();
    v7 = v6;
  }

  else
  {
    v65 = 0;
    v7 = 0;
  }

  sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
  v8 = sub_22F741160();
  v9 = [a2 fetchMemberNodesBySocialGroupNodeForSocialGroupNodes_];

  sub_22F120634(0, &qword_2810A8F18, off_27887B3D0);
  sub_22F11FA28(&unk_2810A9040, &unk_2810A9050, off_27887B3D8);
  v10 = sub_22F740CA0();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_22F741CA0();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v10 = v11 | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(v10 + 32);
    v12 = v10 + 64;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v10 + 64);
  }

  v66 = v7;
  v18 = 0;
  v19 = (v13 + 64) >> 6;
  v67 = MEMORY[0x277D84F98];
  while (1)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      v26 = sub_22F741D10();
      if (!v26 || (v28 = v27, v69 = v26, swift_dynamicCast(), v24 = v68, v69 = v28, swift_dynamicCast(), v25 = v68, !v24))
      {
LABEL_45:
        sub_22F0FF590();

        return v67;
      }

      goto LABEL_22;
    }

    v20 = v18;
    v21 = v14;
    if (!v14)
    {
      break;
    }

LABEL_18:
    v14 = (v21 - 1) & v21;
    v22 = (v18 << 9) | (8 * __clz(__rbit64(v21)));
    v23 = *(*(v10 + 56) + v22);
    v24 = *(*(v10 + 48) + v22);
    v25 = v23;
    if (!v24)
    {
      goto LABEL_45;
    }

LABEL_22:
    v29 = [v24 UUID];
    if (v29)
    {
      v34 = v29;
      v63 = sub_22F740E20();
      v64 = v35;

      v36 = [v25 localIdentifiers];
      v37 = sub_22F741420();

      v69 = v37;
      if (v66)
      {

        sub_22F10BBDC(&v68, v65, v66);

        v37 = v69;
      }

      v38 = *(v37 + 16);
      if (v38)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
        v39 = swift_allocObject();
        v40 = _swift_stdlib_malloc_size(v39);
        v41 = v40 - 32;
        if (v40 < 32)
        {
          v41 = v40 - 17;
        }

        v39[2] = v38;
        v39[3] = 2 * (v41 >> 4);
        v42 = sub_22F11A438(&v68, v39 + 4, v38, v37);
        sub_22F0FF590();
        if (v42 != v38)
        {
          goto LABEL_48;
        }

        v62 = v39;
      }

      else
      {

        v62 = MEMORY[0x277D84F90];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v67;
      v44 = sub_22F1229E8(v63, v64);
      v46 = *(v67 + 16);
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        goto LABEL_47;
      }

      v50 = v45;
      if (*(v67 + 24) >= v49)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_40;
        }

        v56 = v44;
        sub_22F135844();
        v44 = v56;
        v52 = v62;
        if ((v50 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_41:
        v53 = v44;

        v67 = v68;
        v54 = v68[7];
        v55 = *(v54 + 8 * v53);
        *(v54 + 8 * v53) = v52;
      }

      else
      {
        sub_22F127C90(v49, isUniquelyReferenced_nonNull_native);
        v44 = sub_22F1229E8(v63, v64);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_50;
        }

LABEL_40:
        v52 = v62;
        if (v50)
        {
          goto LABEL_41;
        }

LABEL_43:
        v57 = v68;
        v68[(v44 >> 6) + 8] |= 1 << v44;
        v58 = (v57[6] + 16 * v44);
        *v58 = v63;
        v58[1] = v64;
        *(v57[7] + 8 * v44) = v52;

        v59 = v57[2];
        v48 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v48)
        {
          goto LABEL_49;
        }

        v67 = v57;
        v57[2] = v60;
      }
    }

    else
    {
      if (qword_2810AA918 != -1)
      {
        swift_once();
      }

      v30 = sub_22F740B90();
      __swift_project_value_buffer(v30, qword_2810B4F18);
      v31 = sub_22F740B70();
      v32 = sub_22F7415E0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22F0FC000, v31, v32, "Unable to get UUID for social group node!", v33, 2u);
        MEMORY[0x2319033A0](v33, -1, -1);
      }
    }
  }

  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v19)
    {
      goto LABEL_45;
    }

    v21 = *(v12 + 8 * v18);
    ++v20;
    if (v21)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

char *sub_22F32B718(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 UUID];
  if (!v5)
  {
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v29 = sub_22F740B90();
    __swift_project_value_buffer(v29, qword_2810B4F18);
    v24 = sub_22F740B70();
    v30 = sub_22F7415E0();
    if (!os_log_type_enabled(v24, v30))
    {
      goto LABEL_19;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_22F0FC000, v24, v30, "Unable to get UUID for social group node!", v26, 2u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = sub_22F740E20();
  v9 = v8;

  if (!*(a2 + 16) || (v10 = sub_22F1229E8(v7, v9), (v11 & 1) == 0))
  {
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4F18);

    v24 = sub_22F740B70();
    v25 = sub_22F7415E0();

    if (!os_log_type_enabled(v24, v25))
    {

      goto LABEL_19;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v74 = v27;
    *v26 = 136315138;
    v28 = sub_22F145F20(v7, v9, &v74);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_22F0FC000, v24, v25, "Unable to get person local identifiers for members in social group node %s!", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x2319033A0](v27, -1, -1);
LABEL_17:
    MEMORY[0x2319033A0](v26, -1, -1);
LABEL_19:

    return 0;
  }

  v12 = *(a2 + 56);
  v13 = *(v12 + 8 * v10);
  v14 = *(v13 + 16);
  if (v14 <= 1)
  {
    v15 = qword_2810AA918;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4F18);

    v17 = sub_22F740B70();
    v18 = sub_22F7415E0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v74 = v20;
      *v19 = 136315394;
      v21 = sub_22F145F20(v7, v9, &v74);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2048;
      v22 = *(v13 + 16);

      *(v19 + 14) = v22;

      _os_log_impl(&dword_22F0FC000, v17, v18, "Social group with UUID %s in the graph only has %ld members, skipping!", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x2319033A0](v20, -1, -1);
      MEMORY[0x2319033A0](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  v33 = *(v12 + 8 * v10);

  v34 = sub_22F32AFB4(a3);
  v35 = objc_opt_self();
  v36 = sub_22F741160();
  v37 = [v35 fetchPersonsWithLocalIdentifiers:v36 options:v34];

  v38 = [v37 fetchedObjects];
  if (!v38)
  {

    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v40 = sub_22F740B90();
    __swift_project_value_buffer(v40, qword_2810B4F18);

    v41 = sub_22F740B70();
    v42 = sub_22F7415E0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v74 = v44;
      *v43 = 136315138;
      v45 = sub_22F145F20(v7, v9, &v74);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_22F0FC000, v41, v42, "Couldn't fetch members for social group with UUID %s in the graph!", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x2319033A0](v44, -1, -1);
      MEMORY[0x2319033A0](v43, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v31 = sub_22F741180();

  if (v31 >> 62)
  {
    v39 = sub_22F741A00();
    if (v14 == v39)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v39 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 == v39)
    {
LABEL_25:

      return v31;
    }
  }

  if (qword_2810AA918 != -1)
  {
    swift_once();
  }

  v46 = sub_22F740B90();
  __swift_project_value_buffer(v46, qword_2810B4F18);

  v47 = sub_22F740B70();
  v48 = sub_22F7415E0();

  if (!os_log_type_enabled(v47, v48))
  {

LABEL_49:

    return v31;
  }

  v72 = v48;
  v49 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v74 = v70;
  *v49 = 136315650;
  v50 = sub_22F145F20(v7, v9, &v74);

  *(v49 + 4) = v50;
  *(v49 + 12) = 2080;
  v51 = MEMORY[0x231900D40](v13, MEMORY[0x277D837D0]);
  v53 = sub_22F145F20(v51, v52, &v74);

  *(v49 + 14) = v53;
  buf = v49;
  *(v49 + 22) = 2080;
  v54 = MEMORY[0x277D84F90];
  if (!v39)
  {
LABEL_48:
    v65 = MEMORY[0x231900D40](v54, MEMORY[0x277D837D0]);
    v67 = v66;

    v68 = sub_22F145F20(v65, v67, &v74);

    *(buf + 3) = v68;
    _os_log_impl(&dword_22F0FC000, v47, v72, "Social group with UUID %s in the graph has outdated person node localIdentifiers %s, vs fetched person UUIDs %s", buf, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v70, -1, -1);
    MEMORY[0x2319033A0](buf, -1, -1);
    goto LABEL_49;
  }

  v69 = v47;
  v73 = MEMORY[0x277D84F90];
  result = sub_22F146454(0, v39 & ~(v39 >> 63), 0);
  if ((v39 & 0x8000000000000000) == 0)
  {
    v55 = 0;
    v54 = v73;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x2319016F0](v55, v31);
      }

      else
      {
        v56 = *(v31 + 8 * v55 + 32);
      }

      v57 = v56;
      v58 = [v56 localIdentifier];
      v59 = sub_22F740E20();
      v61 = v60;

      v63 = *(v73 + 16);
      v62 = *(v73 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_22F146454((v62 > 1), v63 + 1, 1);
      }

      ++v55;
      *(v73 + 16) = v63 + 1;
      v64 = v73 + 16 * v63;
      *(v64 + 32) = v59;
      *(v64 + 40) = v61;
    }

    while (v39 != v55);
    v47 = v69;
    goto LABEL_48;
  }

  __break(1u);
  return result;
}

uint64_t _s11PhotosGraph20SocialGroupsPromoterC15socialGroupHash3forSSSaySo8PHPersonCG_tFZ_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_15:
      v18 = v3;

      sub_22F1AB0EC(&v18);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F16BC6C(&qword_2810A92E0, &qword_27DAB0E90, &qword_22F7714A0);
      v16 = sub_22F740DA0();

      return v16;
    }

    v18 = MEMORY[0x277D84F90];
    sub_22F146454(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v4 = 0;
    v3 = v18;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2319016F0](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 uuid];
      if (!v8)
      {
        goto LABEL_20;
      }

      v9 = v8;
      v10 = sub_22F740E20();
      v12 = v11;

      v18 = v3;
      v14 = *(v3 + 2);
      v13 = *(v3 + 3);
      if (v14 >= v13 >> 1)
      {
        sub_22F146454((v13 > 1), v14 + 1, 1);
        v3 = v18;
      }

      *(v3 + 2) = v14 + 1;
      v15 = &v3[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      ++v4;
      if (v5 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_22F32C240()
{
  result = qword_27DAB3768;
  if (!qword_27DAB3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3768);
  }

  return result;
}

unint64_t sub_22F32C588()
{
  result = qword_27DAB37D8;
  if (!qword_27DAB37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB37D8);
  }

  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22F32C610(unint64_t a1, uint64_t *a2, void *a3)
{
  v56 = a3;
  v57 = a2;
  v60[2] = *MEMORY[0x277D85DE8];
  v4 = sub_22F740B90();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_22:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v9 = sub_22F741A00();
  v52 = v8;
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_3:
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v10;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2319016F0](v12, a1, v7);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v15 = [v13 uuid];
      if (v15)
      {
        break;
      }

      ++v12;
      if (v10 == v9)
      {
        goto LABEL_23;
      }
    }

    v16 = v15;
    v17 = sub_22F740E20();
    v55 = v18;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_22F13E1A8(0, *(v11 + 2) + 1, 1, v11);
    }

    v8 = *(v11 + 2);
    v19 = *(v11 + 3);
    if (v8 >= v19 >> 1)
    {
      v11 = sub_22F13E1A8((v19 > 1), v8 + 1, 1, v11);
    }

    *(v11 + 2) = v8 + 1;
    v20 = &v11[16 * v8];
    v21 = v55;
    *(v20 + 4) = v17;
    *(v20 + 5) = v21;
  }

  while (v10 != v9);
LABEL_23:
  v22 = sub_22F1515F8(v11);

  v59 = v22;
  v23 = [v57 meNodeWithFallbackInferredMeNode];
  if (v23)
  {
    v24 = v23;
    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [v24 localIdentifier];
    v27 = [ObjCClassFromMetadata uuidFromLocalIdentifier_];

    if (!v27)
    {
      __break(1u);
      return;
    }

    v28 = sub_22F740E20();
    v30 = v29;

    sub_22F10BBDC(v60, v28, v30);

    v22 = v59;
  }

  if (*(v22 + 16) >= 2uLL)
  {
    v31 = [v56 librarySpecificFetchOptions];
    v32 = [objc_allocWithZone(MEMORY[0x277CD9888]) init];
    v33 = objc_opt_self();
    v34 = sub_22F741410();
    v60[0] = 0;
    v35 = [v33 fetchExclusiveSocialGroupAssetsForPersons:v34 options:v31 error:v60];

    if (v35)
    {
      v36 = v60[0];

      v32 = v35;
    }

    else
    {
      v37 = v60[0];
      v38 = sub_22F73F370();

      swift_willThrow();
      if (qword_2810A9BB0 != -1)
      {
        swift_once();
      }

      v39 = v52;
      sub_22F1B3158(v52);
      v40 = v38;
      v41 = sub_22F740B70();
      v42 = sub_22F7415E0();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = v38;
        v60[0] = v57;
        *v43 = 136315138;
        v44 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
        v45 = sub_22F740E90();
        v47 = sub_22F145F20(v45, v46, v60);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_22F0FC000, v41, v42, "SocialGroupPromoter: error fetching exclusive assets for social group %s", v43, 0xCu);
        v48 = v57;
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x2319033A0](v48, -1, -1);
        MEMORY[0x2319033A0](v43, -1, -1);
      }

      else
      {
      }

      (*(v53 + 8))(v39, v54);
    }

    v49 = [v32 fetchedObjects];
    if (v49)
    {
      v50 = v49;
      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
      sub_22F741180();

      v31 = v32;
      v32 = v50;
    }
  }

  else
  {
  }

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t FlexMusicSongKeywordProvider.init(flexMusicSongs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = -1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void *FlexMusicSongKeywordProvider.keywordsDataFrame.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 == 255)
  {
    v3 = sub_22F340010(*v0);
    *(v0 + 8) = v3;
    *(v0 + 16) = 0;
    v5 = v3;
  }

  else
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
  }

  sub_22F256018(v1, v2);
  return v3;
}

void FlexMusicSongKeywordProvider.keywordsDataFrame.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  sub_22F255F20(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = v4;
}

void (*FlexMusicSongKeywordProvider.keywordsDataFrame.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = FlexMusicSongKeywordProvider.keywordsDataFrame.getter();
  *(a1 + 8) = v3 & 1;
  return sub_22F32CD88;
}

void sub_22F32CD88(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (a2)
  {
    sub_22F256030(*a1);
    sub_22F255F20(v5, v6);
    *(v2 + 8) = v3;
    *(v2 + 16) = v4;

    sub_22F21173C(v3);
  }

  else
  {
    sub_22F255F20(*(v2 + 8), *(v2 + 16));
    *(v2 + 8) = v3;
    *(v2 + 16) = v4;
  }
}

uint64_t sub_22F32CE48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F32CE90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22F32CFEC(void *a1, void *a2, uint64_t a3)
{
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MusicCurator - extractMusicCurationFeaturesForEnrichedMemory", 60, 2u, 0, 1, qword_2810B4E90, v47);
  v7 = [a1 memoryMomentNodes];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = *(a3 + OBJC_IVAR___PGMusicFeatureExtractionContext_photoLibrary);
  v48 = [v9 librarySpecificFetchOptions];
  [v48 setWantsIncrementalChangeDetails_];
  v10 = [v8 localIdentifiers];
  v11 = sub_22F741420();

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_22F10B348(*(v11 + 16), 0);
    v14 = sub_22F11A438(&v46, v13 + 4, v12, v11);
    sub_22F1534EC();
    if (v14 != v12)
    {
      __break(1u);
LABEL_7:
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v15 = sub_22F740B90();
      __swift_project_value_buffer(v15, qword_2810B4D90);
      v16 = sub_22F740B70();
      v17 = sub_22F7415E0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_22F0FC000, v16, v17, "[MemoriesMusic] [FeatureExtraction] Extracted moments backing enriched memory: NO", v18, 2u);
        MEMORY[0x2319033A0](v18, -1, -1);
      }

      sub_22F32D788();
      swift_allocError();
      *v19 = a1;
      *(v19 + 8) = 0;
      swift_willThrow();
      swift_unknownObjectRetain();
      goto LABEL_30;
    }
  }

  else
  {
  }

  v20 = objc_opt_self();
  v21 = sub_22F741160();

  v22 = [v20 fetchAssetCollectionsWithType:3 localIdentifiers:v21 options:v48];

  v23 = [v22 fetchedObjects];
  if (!v23)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v35 = sub_22F740B90();
    __swift_project_value_buffer(v35, qword_2810B4D90);
    v36 = sub_22F740B70();
    v37 = sub_22F7415E0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22F0FC000, v36, v37, "[MemoriesMusic] [FeatureExtraction] Extracted moments backing enriched memory: NO", v38, 2u);
      MEMORY[0x2319033A0](v38, -1, -1);
    }

    sub_22F32D788();
    swift_allocError();
    *v39 = a1;
    *(v39 + 8) = 2;
    swift_willThrow();
    swift_unknownObjectRetain();

    goto LABEL_30;
  }

  sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
  v45 = sub_22F741180();

  v24 = [v9 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22F771340;
  v26 = *MEMORY[0x277CD9AA8];
  *(v25 + 32) = sub_22F740E20();
  *(v25 + 40) = v27;
  v28 = sub_22F741160();

  [v24 setFetchPropertySets_];

  [v24 setWantsIncrementalChangeDetails_];
  v29 = [a1 extendedCuratedAssetUUIDs];
  if (!v29)
  {
    sub_22F741180();
    v29 = sub_22F741160();
  }

  v30 = [objc_opt_self() fetchAssetsWithUUIDs:v29 options:v24];

  if (v30)
  {
    v31 = [v30 fetchedObjects];

    if (!v31)
    {

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v40 = sub_22F740B90();
      __swift_project_value_buffer(v40, qword_2810B4D90);
      v41 = sub_22F740B70();
      v42 = sub_22F7415E0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_22F0FC000, v41, v42, "[MemoriesMusic] [FeatureExtraction] Extracted assets backing enriched memory: NO", v43, 2u);
        MEMORY[0x2319033A0](v43, -1, -1);
      }

      sub_22F32D788();
      swift_allocError();
      *v44 = a1;
      *(v44 + 8) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();

      goto LABEL_30;
    }

    sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
    v32 = sub_22F741180();

    v33 = [a1 memoryCategory];
    v34 = v8;
    sub_22F3EC34C(v33, 0, a1, v8, a2, v45, v32, a3);
    if (v3)
    {

LABEL_30:

      return;
    }

    sub_22F1B2BBC(0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22F32D788()
{
  result = qword_27DAB3800;
  if (!qword_27DAB3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3800);
  }

  return result;
}

uint64_t sub_22F32D7E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F32D830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t MomentHasBirthdayFeatureExtractor.__allocating_init(prefetchFor:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 personInMoment];
  v7 = [objc_msgSend(v5 graph)];
  swift_unknownObjectRelease();
  v8 = [v7 concreteGraph];

  if (v8)
  {
    v9 = [v5 elementIdentifiers];
    v10 = [v8 adjacencyWithSources:v9 relation:v6];

    v11 = &v3[OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode];
    *v11 = v10;
    *(v11 + 1) = v8;
    v14.receiver = v3;
    v14.super_class = v1;
    v12 = objc_msgSendSuper2(&v14, sel_init);

    return v12;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t MomentHasBirthdayFeatureExtractor.__allocating_init(prefetchIn:)(void *a1)
{
  sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
  v3 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v4 = objc_allocWithZone(v1);
  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 personInMoment];
  v8 = [objc_msgSend(v6 graph)];
  swift_unknownObjectRelease();
  v9 = [v8 concreteGraph];

  if (v9)
  {
    v10 = [v6 elementIdentifiers];
    v11 = [v9 adjacencyWithSources:v10 relation:v7];

    v12 = &v4[OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode];
    *v12 = v11;
    *(v12 + 1) = v9;
    v15.receiver = v4;
    v15.super_class = v1;
    v13 = objc_msgSendSuper2(&v15, sel_init);

    return v13;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

id MomentHasBirthdayFeatureExtractor.init(prefetchFor:)(void *a1)
{
  v2 = sub_22F32F66C(a1);

  return v2;
}

void MomentHasBirthdayFeatureExtractor.floatVector(withEntity:)(void *a1)
{
  v199 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v176 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v193 = &v168 - v7;
  v226 = sub_22F73F690();
  *&v204 = *(v226 - 8);
  v8 = *(v204 + 64);
  MEMORY[0x28223BE20](v226);
  v174 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v175 = &v168 - v11;
  MEMORY[0x28223BE20](v12);
  v219 = &v168 - v13;
  v14 = sub_22F73F270();
  v15 = *(v14 - 8);
  v217 = v14;
  v218 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v200 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v195 = &v168 - v19;
  MEMORY[0x28223BE20](v20);
  v198 = &v168 - v21;
  v22 = sub_22F73F7D0();
  v23 = *(v22 - 8);
  v24 = v23[8];
  MEMORY[0x28223BE20](v22);
  v26 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_22F73F9B0();
  v209 = *(v197 - 8);
  v27 = *(v209 + 8);
  MEMORY[0x28223BE20](v197);
  v186 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = MEMORY[0x28223BE20](v29).n128_u64[0];
  v32 = &v168 - v31;
  v33 = [a1 identifier];
  v35 = *(v1 + OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode);
  v34 = *(v1 + OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode + 8);
  v36 = objc_allocWithZone(PGGraphMomentNodeCollection);
  v37 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v38 = [v36 initWithGraph:v34 elementIdentifiers:v37];

  v39 = [v38 elementIdentifiers];
  v40 = [v35 targetsForSources_];

  v41 = [objc_allocWithZone(PGGraphPersonNodeCollection) initWithGraph:v34 elementIdentifiers:v40];
  v42 = v218;

  v43 = v23[13];
  v185 = *MEMORY[0x277CC9830];
  v184 = v23 + 13;
  v183 = v43;
  v43(v26);
  sub_22F73F7E0();
  v44 = v23[1];
  v187 = v26;
  v189 = v22;
  v188 = v23 + 1;
  v182 = v44;
  v44(v26, v22);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
  v46 = sub_22F73F990();
  v47 = *(v46 - 8);
  v48 = *(v47 + 80);
  v49 = (v48 + 32) & ~v48;
  v215 = *(v47 + 72);
  v216 = v48;
  v224 = v45;
  v180 = v49 + v215;
  v50 = swift_allocObject();
  v179 = xmmword_22F771340;
  *(v50 + 16) = xmmword_22F771340;
  v51 = *(v47 + 104);
  v212 = *MEMORY[0x277CC9988];
  v201 = v47 + 104;
  v225 = v51;
  v51(v50 + v49);
  sub_22F3D97CC(v50);
  swift_setDeallocating();
  v52 = *(v47 + 8);
  v223 = v49;
  v53 = v219;
  v213 = v46;
  v181 = v47 + 8;
  v178 = v52;
  v52(v50 + v49, v46);
  v54 = v204;
  swift_deallocClassInstance();
  v55 = [v199 localStartDate];
  sub_22F73F640();

  v56 = v198;
  v214 = v32;
  sub_22F73F860();

  v221 = *(v54 + 8);
  v222 = v54 + 8;
  v221(v53, v226);
  v57 = v56;
  v211 = sub_22F73F1F0();
  v210 = v58;
  v59 = *(v42 + 8);
  v218 = v42 + 8;
  v59(v57, v217);
  v173 = v41;
  v60 = [v41 birthdays];
  v61 = sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v62 = sub_22F16C010();
  v63 = sub_22F741420();

  v194 = v61;
  v171 = v62;
  if ((v63 & 0xC000000000000001) != 0)
  {
    sub_22F7419C0();
    sub_22F741470();
    v63 = v228;
    v64 = v229;
    v65 = v230;
    v66 = v231;
    v67 = v232;
  }

  else
  {
    v66 = 0;
    v68 = -1 << *(v63 + 32);
    v64 = v63 + 56;
    v65 = ~v68;
    v69 = -v68;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    v67 = v70 & *(v63 + 56);
  }

  v170 = v65;
  v71 = (v65 + 64) >> 6;
  v208 = 2 * v215;
  v207 = 3 * v215;
  v206 = *MEMORY[0x277CC9998];
  v220 = *MEMORY[0x277CC9968];
  v205 = (v54 + 48);
  v177 = (v54 + 32);
  v172 = MEMORY[0x277D84F90];
  v196 = (v209 + 8);
  v204 = xmmword_22F7707D0;
  v72 = v213;
  v73 = v225;
  v209 = v59;
  v74 = v195;
  v192 = v63;
  v191 = v64;
  v190 = v71;
LABEL_8:
  v75 = v66;
  v76 = v67;
  if (v63 < 0)
  {
LABEL_17:
    v79 = v72;
    v81 = sub_22F741A40();
    if (v81)
    {
      v238 = v81;
      swift_dynamicCast();
      v80 = v233;
      v66 = v75;
      v203 = v76;
      v74 = v195;
      if (v233)
      {
        goto LABEL_19;
      }
    }

LABEL_28:
    sub_22F0FF590();
    v111 = [v173 potentialBirthdays];
    v112 = sub_22F741420();

    if ((v112 & 0xC000000000000001) != 0)
    {
      sub_22F7419C0();
      sub_22F741470();
      v112 = v233;
      v113 = v234;
      v114 = v235;
      v115 = v236;
      v116 = v237;
    }

    else
    {
      v115 = 0;
      v117 = -1 << *(v112 + 32);
      v113 = (v112 + 56);
      v114 = ~v117;
      v118 = -v117;
      if (v118 < 64)
      {
        v119 = ~(-1 << v118);
      }

      else
      {
        v119 = -1;
      }

      v116 = v119 & *(v112 + 56);
    }

    v120 = v216;
    v121 = v223;
    v191 = v114;
    v122 = (v114 + 64) >> 6;
    v192 = v122;
    v195 = v112;
    v193 = v113;
    while (1)
    {
      v203 = v115;
      if (v112 < 0)
      {
        v127 = sub_22F741A40();
        if (!v127 || (v227 = v127, swift_dynamicCast(), v126 = v238, v125 = v116, !v238))
        {
LABEL_54:
          sub_22F0FF590();
          v158 = *(v172 + 2);
          if (v158)
          {
            v159 = 32;
            v160 = &unk_2843DD548;
            v161 = v173;
            while (v158)
            {
              v162 = *&v172[v159];
              v159 += 8;
              --v158;
              if (v162 <= 7)
              {
                v160 = &unk_2843DD518;
                break;
              }
            }

            v163 = objc_allocWithZone(sub_22F73FBE0());
            v164 = MEMORY[0x2318FF780](v160);
            v165 = v161;
            v166 = v164;
          }

          else
          {

            v167 = objc_allocWithZone(sub_22F73FBE0());
            v164 = MEMORY[0x2318FF780](&unk_2843DD578);
            v165 = v164;
            v166 = v173;
          }

          [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];

          (*v196)(v214, v197);
          return;
        }
      }

      else
      {
        v123 = v115;
        for (i = v116; !i; ++v123)
        {
          v115 = v123 + 1;
          if (__OFADD__(v123, 1))
          {
            goto LABEL_63;
          }

          if (v115 >= v122)
          {
            goto LABEL_54;
          }

          i = *&v113[8 * v115];
        }

        v125 = (i - 1) & i;
        v126 = *(*(v112 + 48) + ((v115 << 9) | (8 * __clz(__rbit64(i)))));
        if (!v126)
        {
          goto LABEL_54;
        }
      }

      v203 = v125;
      v128 = v126;
      v129 = swift_allocObject();
      *(v129 + 16) = v204;
      v130 = v129 + v121;
      v131 = v129 + v121;
      v132 = v213;
      v133 = v225;
      v225(v131, v212, v213);
      v133(v130 + v215, v206, v132);
      v133(v130 + v208, v220, v132);
      sub_22F3D97CC(v129);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v202 = v128;
      [v128 doubleValue];
      v134 = v219;
      sub_22F73F610();
      v135 = v200;
      v136 = v120;
      v137 = v226;
      sub_22F73F860();

      v221(v134, v137);
      sub_22F73F200();
      v138 = v176;
      sub_22F73F920();
      if ((*v205)(v138, 1, v137) == 1)
      {
        break;
      }

      v139 = v174;
      (*v177)(v174, v138, v226);
      v140 = [v199 localStartDate];
      sub_22F73F640();

      v141 = v187;
      v142 = v189;
      v183(v187, v185, v189);
      v143 = v186;
      sub_22F73F7E0();
      v182(v141, v142);
      v144 = swift_allocObject();
      *(v144 + 16) = v179;
      v145 = v223;
      v146 = v213;
      v225(v144 + v223, v220, v213);
      sub_22F3D97CC(v144);
      swift_setDeallocating();
      v178(v144 + v145, v146);
      swift_deallocClassInstance();
      v147 = v198;
      sub_22F73F850();

      v148 = sub_22F73F1C0();
      v150 = v149;
      v151 = v217;
      v152 = v209;
      v209(v147, v217);
      (*v196)(v143, v197);
      v153 = v221;
      v221(v219, v226);
      if (v150)
      {

        v153(v139, v226);
        v152(v200, v151);
        v116 = v203;
        v121 = v223;
        v120 = v216;
LABEL_36:
        v112 = v195;
        v113 = v193;
        v122 = v192;
      }

      else
      {
        v154 = v172;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_22F13E69C(0, *(v154 + 2) + 1, 1, v154);
        }

        v120 = v216;
        v121 = v223;
        v172 = v154;
        v156 = *(v154 + 2);
        v155 = *(v154 + 3);
        if (v156 >= v155 >> 1)
        {
          v172 = sub_22F13E69C((v155 > 1), v156 + 1, 1, v172);
        }

        v113 = v193;

        v221(v174, v226);
        v152(v200, v217);
        v157 = v172;
        *(v172 + 2) = v156 + 1;
        *&v157[8 * v156 + 32] = v148;
        v112 = v195;
        v122 = v192;
        v116 = v203;
      }
    }

    v209(v135, v217);

    sub_22F15FCF0(v138);
    v116 = v203;
    v121 = v223;
    v120 = v136;
    goto LABEL_36;
  }

  while (1)
  {
    v77 = v75;
    v78 = v76;
    v66 = v75;
    if (!v76)
    {
      break;
    }

LABEL_15:
    v79 = v72;
    v203 = (v78 - 1) & v78;
    v80 = *(*(v63 + 48) + ((v66 << 9) | (8 * __clz(__rbit64(v78)))));
    if (!v80)
    {
      goto LABEL_28;
    }

LABEL_19:
    v82 = v223;
    v83 = v80;
    v84 = v74;
    v85 = swift_allocObject();
    *(v85 + 16) = v204;
    v86 = v85 + v82;
    v73(v86, v212, v79);
    v73(v86 + v215, v206, v79);
    v73(v86 + v208, v220, v79);
    sub_22F3D97CC(v85);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v202 = v83;
    [v83 doubleValue];
    v87 = v219;
    sub_22F73F610();
    sub_22F73F860();

    v88 = v226;
    v221(v87, v226);
    sub_22F73F200();
    v89 = v193;
    sub_22F73F920();
    if ((*v205)(v89, 1, v88) == 1)
    {
      v209(v84, v217);

      sub_22F15FCF0(v89);
      v75 = v66;
      v76 = v203;
      v73 = v225;
      v74 = v84;
      v63 = v192;
      v64 = v191;
      v71 = v190;
      v72 = v79;
      if (v192 < 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v90 = v175;
      (*v177)(v175, v89, v226);
      v91 = [v199 localStartDate];
      sub_22F73F640();

      v92 = v187;
      v93 = v189;
      v183(v187, v185, v189);
      v94 = v79;
      v95 = v87;
      v96 = v186;
      sub_22F73F7E0();
      v182(v92, v93);
      v97 = swift_allocObject();
      *(v97 + 16) = v179;
      v98 = v223;
      v225(v97 + v223, v220, v94);
      sub_22F3D97CC(v97);
      swift_setDeallocating();
      v178(v97 + v98, v94);
      swift_deallocClassInstance();
      v99 = v198;
      sub_22F73F850();

      v100 = sub_22F73F1C0();
      LOBYTE(v92) = v101;
      v102 = v99;
      v103 = v217;
      v104 = v209;
      v209(v102, v217);
      (*v196)(v96, v197);
      v105 = v221;
      v221(v95, v226);
      if ((v92 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_22F13E69C(0, *(v172 + 2) + 1, 1, v172);
        }

        v73 = v225;
        v64 = v191;
        v71 = v190;
        v107 = *(v172 + 2);
        v106 = *(v172 + 3);
        v108 = v175;
        v169 = v107 + 1;
        if (v107 >= v106 >> 1)
        {
          v172 = sub_22F13E69C((v106 > 1), v107 + 1, 1, v172);
        }

        v221(v108, v226);
        v109 = v195;
        v104(v195, v217);
        v110 = v172;
        *(v172 + 2) = v169;
        *&v110[8 * v107 + 32] = v100;
        v74 = v109;
        v63 = v192;
        v67 = v203;
        v72 = v213;
        goto LABEL_8;
      }

      v105(v90, v226);
      v74 = v195;
      v104(v195, v103);
      v75 = v66;
      v76 = v203;
      v72 = v213;
      v73 = v225;
      v63 = v192;
      v64 = v191;
      v71 = v190;
      if (v192 < 0)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
    v66 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v66 >= v71)
    {
      goto LABEL_28;
    }

    v78 = *(v64 + 8 * v66);
    ++v77;
    if (v78)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t MomentHasBirthdayFeatureExtractor.featureNames.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F7707D0;
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22F740E20();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_22F740E20();
  *(v0 + 72) = v3;
  return v0;
}

id MomentHasBirthdayFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MomentHasBirthdayFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F32F66C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 personInMoment];
  v7 = [objc_msgSend(v5 graph)];
  swift_unknownObjectRelease();
  v8 = [v7 concreteGraph];

  if (v8)
  {
    v9 = [v5 elementIdentifiers];
    v10 = [v8 adjacencyWithSources:v9 relation:v6];

    v11 = &v1[OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode];
    *v11 = v10;
    *(v11 + 1) = v8;
    v13.receiver = v1;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_22F32F894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F32F8DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F32F92C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (v3)
  {
    v5 = "Area of Interest";
  }

  else
  {
    v5 = "persistentChangeToken";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (*a2)
  {
    v8 = "persistentChangeToken";
  }

  else
  {
    v8 = "Area of Interest";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22F742040();
  }

  return v10 & 1;
}

uint64_t sub_22F32F9D8()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F32FA58()
{
  *v0;
  sub_22F740D60();
}

uint64_t sub_22F32FAC4()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F32FB40@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22F741E30();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_22F32FBA0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "persistentChangeToken";
  }

  else
  {
    v3 = "Area of Interest";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_22F32FBE0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_22F32FC1C@<X0>(char *a1@<X8>)
{
  v2 = sub_22F741E30();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_22F32FC80(uint64_t a1)
{
  v2 = sub_22F32FF94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F32FCBC(uint64_t a1)
{
  v2 = sub_22F32FF94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F32FCF8(void *a1, uint64_t a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3878, &qword_22F786030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F32FF94();
  sub_22F742210();
  LOBYTE(v21[0]) = 1;
  sub_22F741F90();
  if (!v2)
  {
    v12 = objc_opt_self();
    v21[0] = 0;
    v13 = [v12 archivedDataWithRootObject:a2 requiringSecureCoding:0 error:v21];
    v14 = v21[0];
    if (v13)
    {
      v15 = sub_22F73F510();
      v17 = v16;

      v21[0] = v15;
      v21[1] = v17;
      v20[7] = 0;
      sub_22F15C9A0();
      sub_22F741FE0();
      (*(v6 + 8))(v9, v5);
      result = sub_22F133BF0(v15, v17);
      goto LABEL_5;
    }

    v19 = v14;
    sub_22F73F370();

    swift_willThrow();
  }

  result = (*(v6 + 8))(v9, v5);
LABEL_5:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F32FF40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22F32FFE8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

unint64_t sub_22F32FF94()
{
  result = qword_27DAB3880;
  if (!qword_27DAB3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3880);
  }

  return result;
}

uint64_t sub_22F32FFE8(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3888, &qword_22F786038);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F32FF94();
  sub_22F742200();
  if (!v1)
  {
    v16 = 0;
    sub_22F15C370();
    sub_22F741F10();
    v11 = v15[0];
    v10 = v15[1];
    sub_22F120634(0, &qword_27DAB3890, 0x277CCAAC8);
    sub_22F120634(0, &qword_27DAB3898, 0x277CD9930);
    v12 = sub_22F741600();
    v2 = v12;
    v14 = (v5 + 8);
    if (v12)
    {
      LOBYTE(v15[0]) = 1;
      sub_22F741EC0();
      (*v14)(v8, v4);
      sub_22F133BF0(v11, v10);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v2;
    }

    sub_22F330280();
    swift_allocError();
    swift_willThrow();
    sub_22F133BF0(v11, v10);
    (*v14)(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

unint64_t sub_22F330280()
{
  result = qword_27DAB38A0;
  if (!qword_27DAB38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38A0);
  }

  return result;
}

unint64_t sub_22F3302F8()
{
  result = qword_27DAB38A8;
  if (!qword_27DAB38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38A8);
  }

  return result;
}

unint64_t sub_22F330350()
{
  result = qword_27DAB38B0;
  if (!qword_27DAB38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38B0);
  }

  return result;
}

unint64_t sub_22F3303A8()
{
  result = qword_27DAB38B8;
  if (!qword_27DAB38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38B8);
  }

  return result;
}

unint64_t sub_22F330400()
{
  result = qword_27DAB38C0;
  if (!qword_27DAB38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38C0);
  }

  return result;
}

uint64_t sub_22F330454(void (*a1)(char *, uint64_t), size_t a2)
{
  v3 = v2;
  v190 = a2;
  v189 = a1;
  v4 = 0;
  v201 = *MEMORY[0x277D85DE8];
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  v188 = *(v176 - 8);
  v5 = *(v188 + 64);
  MEMORY[0x28223BE20](v176);
  v184 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v173 = &v160 - v8;
  MEMORY[0x28223BE20](v9);
  v183 = &v160 - v10;
  MEMORY[0x28223BE20](v11);
  v179 = (&v160 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB38C8, &qword_22F7862D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v193 = &v160 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v192 = &v160 - v18;
  v187 = sub_22F73F690();
  v171 = *(v187 - 8);
  v19 = *(v171 + 64);
  MEMORY[0x28223BE20](v187);
  v178 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v160 - v23;
  v25 = sub_22F73F470();
  v165 = *(v25 - 8);
  v26 = v165;
  v27 = *(v165 + 64);
  MEMORY[0x28223BE20](v25);
  v170 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v161 = &v160 - v30;
  MEMORY[0x28223BE20](v31);
  v191 = &v160 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v160 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v160 - v37;
  *(v2 + 64) = sub_22F14E41C(MEMORY[0x277D84F90]);
  v39 = [objc_opt_self() systemPhotoLibraryURL];
  sub_22F73F430();

  v40 = objc_allocWithZone(MEMORY[0x277CD9948]);
  v41 = sub_22F73F3F0();
  v42 = [v40 initWithPhotoLibraryURL_];

  v44 = v26 + 8;
  v43 = *(v26 + 8);
  v43(v38, v25);
  *(v3 + 16) = v42;
  *(v3 + 48) = xmmword_22F782930;
  v45 = MEMORY[0x277D84F90];
  *(v3 + 40) = MEMORY[0x277D84F90];
  v46 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v168 = v3;
  *(v3 + 32) = v45;
  v166 = (v3 + 32);
  *(v3 + 24) = v45;
  v194 = v45;
  sub_22F73F3D0();

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB38D0, &qword_22F7862D8);
  v48 = swift_allocObject();
  v172 = xmmword_22F771340;
  *(v48 + 16) = xmmword_22F771340;
  v49 = *MEMORY[0x277CBE7C0];
  *(v48 + 32) = *MEMORY[0x277CBE7C0];
  v180 = v49;
  v162 = v46;
  v50 = sub_22F7415B0();

  v190 = v44;
  v189 = v43;
  v43(v38, v25);
  v51 = v165;
  v175 = v50;
  if (v50)
  {
    v186 = v165 + 56;
    v185 = (v165 + 48);
    v182 = (v165 + 32);
    v181 = v171 + 56;
    v177 = (v171 + 48);
    *&v169 = v171 + 32;
    v167 = (v165 + 16);
    v164 = (v171 + 16);
    v163 = (v171 + 8);
    v174 = MEMORY[0x277D84F90];
    v52 = v180;
    while (1)
    {
      if ([v175 nextObject])
      {
        sub_22F741920();
        swift_unknownObjectRelease();
      }

      else
      {
        v195 = 0u;
        v196 = 0u;
      }

      aBlock = v195;
      v198 = v196;
      if (!*(&v196 + 1))
      {
        v72 = v174;
        v73 = v176;
        v51 = v165;
        goto LABEL_18;
      }

      v53 = swift_dynamicCast();
      (*v186)(v24, v53 ^ 1u, 1, v25);
      if ((*v185)(v24, 1, v25) == 1)
      {
        break;
      }

      (*v182)(v35, v24, v25);
      v54 = objc_autoreleasePoolPush();
      inited = swift_initStackObject();
      *(inited + 16) = v172;
      *(inited + 32) = v52;
      v56 = v52;
      sub_22F3DBCA4(inited);
      swift_setDeallocating();
      v57 = v193;
      sub_22F334348(inited + 32);
      sub_22F73F3B0();
      v58 = v47;

      v59 = v57;
      v60 = sub_22F73F2D0();
      v61 = *(v60 - 8);
      (*(v61 + 56))(v59, 0, 1, v60);
      v62 = v192;
      sub_22F73F2C0();
      v63 = v59;
      v64 = v62;
      (*(v61 + 8))(v63, v60);
      v65 = v187;
      if ((*v177)(v62, 1, v187) == 1)
      {
        v47 = v58;
        v52 = v180;
        sub_22F120ADC(v64, &qword_27DAB0920, &qword_22F770B20);
      }

      else
      {
        v66 = v178;
        (*v169)(v178, v64, v65);
        v67 = *(v176 + 48);
        v68 = v179;
        (*v167)(v179, v35, v25);
        (*v164)(v68 + v67, v66, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v174 = sub_22F140014(0, v174[2] + 1, 1, v174);
        }

        v47 = v58;
        v70 = v174[2];
        v69 = v174[3];
        v52 = v180;
        if (v70 >= v69 >> 1)
        {
          v174 = sub_22F140014(v69 > 1, v70 + 1, 1, v174);
        }

        (*v163)(v178, v187);
        v71 = v174;
        v174[2] = v70 + 1;
        sub_22F3343A4(v179, v71 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v70);
      }

      objc_autoreleasePoolPop(v54);
      v189(v35, v25);
    }

    v72 = v174;
    v73 = v176;
    v51 = v165;
    v74 = v171;
  }

  else
  {
    aBlock = 0u;
    v198 = 0u;
    v72 = MEMORY[0x277D84F90];
    v73 = v176;
LABEL_18:
    v74 = v171;
    sub_22F120ADC(&aBlock, &qword_27DAB0C28, &qword_22F778980);
    (*(v51 + 56))(v24, 1, 1, v25);
  }

  sub_22F120ADC(v24, &qword_27DAB29A0, &unk_22F77BFC0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_21:
  v75 = v173;
  v76 = v187;
  v77 = *(v72 + 16);
  v182 = (v72 + ((*(v188 + 80) + 32) & ~*(v188 + 80)));
  *&aBlock = v182;
  *(&aBlock + 1) = v77;
  sub_22F333168(&aBlock);
  v177 = v4;
  v4 = v72;
  v79 = *(v72 + 16);
  if (v79)
  {
    v80 = 0;
    LODWORD(v163) = 0;
    v186 = 0;
    v181 = *(v73 + 48);
    v185 = (v51 + 32);
    v180 = (v74 + 32);
    v179 = (v74 + 8);
    v171 = v51 + 16;
    v178 = (v79 - 1);
    *&v78 = 136315138;
    v169 = v78;
    v160 = xmmword_22F771EB0;
    v167 = MEMORY[0x277D84F90];
    v164 = MEMORY[0x277D84F90];
    v174 = v72;
    while (1)
    {
      if (v80 >= v4[2])
      {
        __break(1u);
LABEL_81:
        v72 = sub_22F2F2CD0(v72);
        goto LABEL_21;
      }

      v81 = v4;
      v82 = *(v188 + 72);
      v192 = v80;
      v83 = v183;
      sub_22F3342D0(v182 + v82 * v80, v183);
      v84 = *(v73 + 48);
      v74 = *v185;
      (*v185)(v75, v83, v25);
      (*v180)(v75 + v84, v83 + v181, v76);
      v193 = objc_autoreleasePoolPush();
      v85 = v184;
      sub_22F3342D0(v75, v184);
      v86 = *(v73 + 48);
      v87 = v73;
      v88 = v191;
      (v74)(v191, v85, v25);
      (*v179)(v85 + v86, v76);
      sub_22F73F450();
      v51 = v89;
      v72 = sub_22F740FF0();

      if ((v72 & 1) == 0)
      {
        v189(v88, v25);
        v73 = v87;
        v4 = v81;
        goto LABEL_37;
      }

      v90 = v81;
      sub_22F73F450();
      v91 = objc_allocWithZone(MEMORY[0x277CBEA90]);
      v92 = sub_22F740DF0();

      *&aBlock = 0;
      v93 = [v91 initWithContentsOfFile:v92 options:2 error:&aBlock];

      v94 = aBlock;
      if (!v93)
      {
        break;
      }

      v95 = sub_22F73F510();
      v51 = v96;

      v72 = sub_22F120634(0, &qword_27DAB3890, 0x277CCAAC8);
      sub_22F120634(0, &unk_27DAB38D8, 0x277D3B3F8);
      v97 = v177;
      v98 = sub_22F741600();
      if (v97)
      {
        sub_22F133BF0(v95, v51);
        v99 = v97;
        v88 = v191;
LABEL_30:
        v74 = v170;
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v177 = 0;
        v101 = sub_22F740B90();
        __swift_project_value_buffer(v101, qword_27DAD0E10);
        v51 = v25;
        (*v171)(v74, v88, v25);
        v102 = sub_22F740B70();
        v103 = sub_22F7415E0();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          *&aBlock = v105;
          *v104 = v169;
          v106 = sub_22F73F450();
          v107 = v74;
          v74 = v108;
          v109 = v189;
          v189(v107, v25);
          v110 = sub_22F145F20(v106, v74, &aBlock);

          *(v104 + 4) = v110;
          _os_log_impl(&dword_22F0FC000, v102, v103, "[SharedLibrarySimulationEventFactory] Event factory could not parse metadata in the file %s.", v104, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v105);
          v111 = v176;
          MEMORY[0x2319033A0](v105, -1, -1);
          v112 = v104;
          v73 = v111;
          v72 = v174;
          MEMORY[0x2319033A0](v112, -1, -1);

          v109(v191, v25);
          v4 = v72;
          v75 = v173;
          v76 = v187;
          goto LABEL_37;
        }

        v72 = v190;
        v113 = v189;
        v189(v74, v25);
        v113(v88, v25);
        v75 = v173;
        v76 = v187;
        goto LABEL_35;
      }

      v114 = v98;
      v177 = 0;
      if (v98)
      {
        v115 = [v98 sharedLibraryDiagnostics];
        if (v115)
        {

          v116 = v167;
          v117 = v167[2];
          v118 = v176;
          if (v117 >= 0x19)
          {
            v124 = v168;
            v125 = *(v168 + 24);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v124 + 24) = v125;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v125 = sub_22F13FEBC(0, v125[2] + 1, 1, v125);
              *(v168 + 24) = v125;
            }

            v127 = v164;
            v129 = v125[2];
            v128 = v125[3];
            if (v129 >= v128 >> 1)
            {
              v125 = sub_22F13FEBC((v128 > 1), v129 + 1, 1, v125);
            }

            v125[2] = v129 + 1;
            v125[v129 + 4] = v116;
            v130 = v168;
            *(v168 + 24) = v125;
            swift_beginAccess();
            v131 = *(v130 + 32);

            v132 = swift_isUniquelyReferenced_nonNull_native();
            *(v130 + 32) = v131;
            if ((v132 & 1) == 0)
            {
              v131 = sub_22F13FE98(0, v131[2] + 1, 1, v131);
              *v166 = v131;
            }

            v134 = v131[2];
            v133 = v131[3];
            if (v134 >= v133 >> 1)
            {
              v131 = sub_22F13FE98((v133 > 1), v134 + 1, 1, v131);
            }

            v131[2] = v134 + 1;
            v131[v134 + 4] = v127;
            *v166 = v131;
            swift_endAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0D50, &qword_22F7710F0);
            v135 = v165;
            v136 = *(v165 + 72);
            v74 = ((*(v165 + 80) + 32) & ~*(v165 + 80));
            v72 = swift_allocObject();
            *(v72 + 16) = v172;
            (*(v135 + 16))(&v74[v72], v191, v25);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
            v123 = swift_allocObject();
            *(v123 + 16) = v160;
            *(v123 + 32) = v114;
            v137 = v114;

            v194 = v123;
            v116 = v72;
            v119 = &off_27888E000;
          }

          else
          {
            (*v171)(v161, v191, v25);
            v119 = &off_27888E000;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v116 = sub_22F140038(0, v117 + 1, 1, v116);
            }

            v121 = v116[2];
            v120 = v116[3];
            if (v121 >= v120 >> 1)
            {
              v116 = sub_22F140038(v120 > 1, v121 + 1, 1, v116);
            }

            v116[2] = v121 + 1;
            (v74)(v116 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v121, v161, v25);
            v122 = v114;
            v72 = &v194;
            MEMORY[0x231900D00]();
            if (*((v194 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v74 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22F7411C0();
            }

            sub_22F741220();
            v123 = v194;
          }

          v164 = v123;
          v167 = v116;
          ++v186;
          v138 = [v114 v119[279]];
          v4 = v174;
          if (v138 == 4)
          {
            v189(v191, v25);
            sub_22F133BF0(v95, v51);

            LODWORD(v163) = 1;
          }

          else
          {
            v72 = [v114 v119[279]];
            sub_22F133BF0(v95, v51);

            v189(v191, v25);
            LODWORD(v163) = (v72 == 5) | v163;
          }

          v75 = v173;
          v76 = v187;
          v73 = v118;
          goto LABEL_37;
        }

        v4 = v90;
        v189(v191, v25);
        sub_22F133BF0(v95, v51);

        v75 = v173;
        v76 = v187;
        goto LABEL_36;
      }

      v189(v191, v25);
      sub_22F133BF0(v95, v51);
      v75 = v173;
      v76 = v187;
LABEL_35:
      v4 = v90;
LABEL_36:
      v73 = v176;
LABEL_37:
      objc_autoreleasePoolPop(v193);
      sub_22F120ADC(v75, &unk_27DAB1080, &unk_22F7714C0);
      if (v178 != v192)
      {
        v80 = (v192 + 1);
        if (v186 <= 499)
        {
          continue;
        }
      }

      goto LABEL_66;
    }

    v100 = v94;
    v99 = sub_22F73F370();

    swift_willThrow();
    goto LABEL_30;
  }

  LODWORD(v163) = 0;
  v167 = MEMORY[0x277D84F90];
  v164 = MEMORY[0x277D84F90];
LABEL_66:
  v139 = v167;
  v140 = v168;
  v141 = v164;
  if (v167[2])
  {
    v142 = *(v168 + 24);

    v143 = swift_isUniquelyReferenced_nonNull_native();
    *(v140 + 24) = v142;
    if ((v143 & 1) == 0)
    {
      v142 = sub_22F13FEBC(0, v142[2] + 1, 1, v142);
      *(v140 + 24) = v142;
    }

    v145 = v142[2];
    v144 = v142[3];
    if (v145 >= v144 >> 1)
    {
      v142 = sub_22F13FEBC((v144 > 1), v145 + 1, 1, v142);
    }

    v142[2] = v145 + 1;
    v142[v145 + 4] = v139;
    *(v140 + 24) = v142;
    swift_beginAccess();
    v146 = *(v140 + 32);

    v147 = swift_isUniquelyReferenced_nonNull_native();
    *(v140 + 32) = v146;
    if ((v147 & 1) == 0)
    {
      v146 = sub_22F13FE98(0, v146[2] + 1, 1, v146);
      *v166 = v146;
    }

    v149 = v146[2];
    v148 = v146[3];
    if (v149 >= v148 >> 1)
    {
      v146 = sub_22F13FE98((v148 > 1), v149 + 1, 1, v146);
    }

    v146[2] = v149 + 1;
    v146[v149 + 4] = v141;
    *v166 = v146;
    swift_endAccess();
  }

  v150 = MEMORY[0x277D84F90];
  if (v163)
  {
    v151 = [*(v140 + 16) librarySpecificFetchOptions];
    [v151 setWantsIncrementalChangeDetails_];
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    *&aBlock = 0x203D3D2065707974;
    *(&aBlock + 1) = 0xE800000000000000;
    *&v195 = 23;
    v152 = sub_22F742010();
    MEMORY[0x231900B10](v152);

    v153 = sub_22F741560();

    [v151 setPredicate_];

    v154 = [objc_opt_self() fetchAnsweredYesOrNoQuestionsWithOptions:v151 validQuestionsOnly:1];
    v199 = sub_22F334340;
    v200 = v168;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v140 = v168;
    *&v198 = sub_22F334418;
    *(&v198 + 1) = &block_descriptor_25;
    v155 = _Block_copy(&aBlock);

    [v154 enumerateObjectsUsingBlock_];

    _Block_release(v155);
  }

  else
  {
    v156 = *(v140 + 24);
    *(v140 + 24) = MEMORY[0x277D84F90];

    swift_beginAccess();
    v157 = *(v140 + 32);
    *(v140 + 32) = v150;
  }

  v158 = *MEMORY[0x277D85DE8];
  return v140;
}