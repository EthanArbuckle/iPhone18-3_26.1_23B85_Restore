double sub_26CD232E4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26CD23474(a1, &v9);
  if (v10)
  {
    sub_26CC2524C(&v9, v11);
    sub_26CC19A84(v11, v12 + 8);
    v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = sub_26CD235D0(*v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v12[0] = v5;
    v6 = v12[1];
    *a2 = v12[0];
    a2[1] = v6;
    result = *&v13;
    a2[2] = v13;
  }

  else
  {
    sub_26CD23E70(&v9);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v8 + 64) = sub_26CC2E6E8();
    *(v8 + 32) = &unk_287DF9850;
    sub_26CD3A3DC();

    __swift_destroy_boxed_opaque_existential_1(a1);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_26CD23474@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_26CD22BF8();
  if (v4 && (v5 = sub_26CCF5278(v4), , v5))
  {
    v6 = sub_26CCC7B60(v5);

    *(a2 + 24) = &type metadata for UTSRequiredParameterSource;
    *(a2 + 32) = &off_287E06110;
    *a2 = v6;
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v8 + 64) = sub_26CC2E6E8();
    *(v8 + 32) = &unk_287DF97F0;
    sub_26CD3A3DC();

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26CD235D0(uint64_t *a1)
{
  v69 = *a1;
  v70 = &off_287E05310;
  v68[0] = a1;
  v1 = *__swift_project_boxed_opaque_existential_1(v68, v69);

  v2 = sub_26CD22B40();
  v3 = &off_26CD3C000;
  if (!v2)
  {
    if (qword_280BB9C20 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v4 = v2;
  v5 = 0;
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v60 = MEMORY[0x277D84F98];
  while (v9)
  {
    v11 = v5;
LABEL_15:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v4 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_26CC168C0(*(v4 + 56) + 32 * v15, v65);
    *&v61 = v18;
    *(&v61 + 1) = v17;
    sub_26CC331CC(v65, &v62);

LABEL_16:
    v66 = v61;
    v67[0] = v62;
    v67[1] = v63;
    v19 = *(&v61 + 1);
    if (!*(&v61 + 1))
    {

      v50 = v60;
      goto LABEL_55;
    }

    v20 = v66;
    sub_26CC331CC(v67, &v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    if (swift_dynamicCast())
    {
      v21 = *&v65[0];
      if (!*(*&v65[0] + 16))
      {
        goto LABEL_38;
      }

      v22 = sub_26CC181C4(1752457584, 0xE400000000000000);
      if ((v23 & 1) == 0)
      {
        goto LABEL_38;
      }

      sub_26CC168C0(*(v21 + 56) + 32 * v22, &v61);
      if (!swift_dynamicCast())
      {
        goto LABEL_38;
      }

      v3 = *(&v65[0] + 1);
      if (!*(v21 + 16))
      {
        goto LABEL_37;
      }

      v24 = *&v65[0];
      v25 = sub_26CC181C4(0xD000000000000012, 0x800000026CD53040);
      if ((v26 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_26CC168C0(*(v21 + 56) + 32 * v25, &v61);
      if (!swift_dynamicCast())
      {
        goto LABEL_37;
      }

      if (!*(v21 + 16))
      {
        goto LABEL_36;
      }

      v59 = v65[0];
      v27 = sub_26CC181C4(0x636F4C736465656ELL, 0xED00006E6F697461);
      if ((v28 & 1) == 0 || (sub_26CC168C0(*(v21 + 56) + 32 * v27, &v61), !swift_dynamicCast()) || !*(v21 + 16) || (v58 = v65[0], v29 = sub_26CC181C4(0x73654D736465656ELL, 0xEB000000006C6163), (v30 & 1) == 0) || (sub_26CC168C0(*(v21 + 56) + 32 * v29, &v61), !swift_dynamicCast()) || !*(v21 + 16) || (v57 = v65[0], v31 = sub_26CC181C4(1953722216, 0xE400000000000000), (v32 & 1) == 0))
      {
LABEL_36:

LABEL_37:

LABEL_38:

        goto LABEL_39;
      }

      sub_26CC168C0(*(v21 + 56) + 32 * v31, &v61);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_37;
      }

      v54 = v65[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v65[0] = v60;
      v56 = sub_26CC181C4(v20, v19);
      v35 = v60[2];
      v55 = v36;
      v37 = (v36 & 1) == 0;
      v38 = v35 + v37;
      if (__OFADD__(v35, v37))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }

      if (v60[3] >= v38)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_47;
        }

        sub_26CD36410();
        if ((v55 & 1) == 0)
        {
          goto LABEL_50;
        }

LABEL_48:

        v60 = *&v65[0];
        v40 = *(*&v65[0] + 56) + 56 * v56;
        v41 = *(v40 + 48);
        v42 = *v40;
        v43 = *(v40 + 32);
        v62 = *(v40 + 16);
        v63 = v43;
        v61 = v42;
        v64 = v41;
        *v40 = v54;
        *(v40 + 16) = v24;
        *(v40 + 24) = v3;
        *(v40 + 32) = v59;
        *(v40 + 48) = v58;
        *(v40 + 49) = v57;
        sub_26CD23ED8(&v61);
      }

      else
      {
        sub_26CD33828(v38, isUniquelyReferenced_nonNull_native);
        v56 = sub_26CC181C4(v20, v19);
        if ((v55 & 1) != (v39 & 1))
        {
          goto LABEL_60;
        }

LABEL_47:
        if (v55)
        {
          goto LABEL_48;
        }

LABEL_50:
        v44 = *&v65[0];
        *(*&v65[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
        v45 = (v44[6] + 16 * v56);
        *v45 = v20;
        v45[1] = v19;
        v46 = v44[7] + 56 * v56;
        *v46 = v54;
        *(v46 + 16) = v24;
        *(v46 + 24) = v3;
        *(v46 + 32) = v59;
        *(v46 + 48) = v58;
        *(v46 + 49) = v57;
        v60 = v44;
        v47 = v44[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_59;
        }

        v44[2] = v49;
      }
    }

    else
    {
LABEL_39:
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v3 = swift_allocObject();
      *(v3 + 1) = xmmword_26CD3C1E0;
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD53000);
      MEMORY[0x26D6AD060](v20, v19);

      v33 = *(&v61 + 1);
      *(v3 + 4) = v61;
      *(v3 + 5) = v33;
      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_26CD3C1E0;
      *(v34 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v34 + 64) = sub_26CC2E6E8();
      *(v34 + 32) = v3;
      sub_26CD3A3DC();
    }
  }

  if (v10 <= v5 + 1)
  {
    v12 = v5 + 1;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      v9 = 0;
      v62 = 0u;
      v63 = 0u;
      v5 = v13;
      v61 = 0u;
      goto LABEL_16;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_54:
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v51 = swift_allocObject();
  *(v51 + 16) = *(v3 + 30);
  *(v51 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v51 + 64) = sub_26CC2E6E8();
  *(v51 + 32) = &unk_287DF9820;
  sub_26CD3A3DC();

  v50 = MEMORY[0x277D84F98];
LABEL_55:
  __swift_destroy_boxed_opaque_existential_1(v68);
  return v50;
}

uint64_t sub_26CD23DE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26CD23E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD28, "ȿ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CD23F08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_26CD23F50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26CD23FB4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_2804BBAB0 != -1)
  {
    swift_once();
  }

  v2 = qword_2804BDD30;
  v3 = sub_26CD3A59C();
  [v2 setBool:v1 forKey:v3];
}

void static PreferencesStore.sportsScoreSpoilersAllowed.setter(char a1)
{
  if (qword_2804BBAB0 != -1)
  {
    swift_once();
  }

  v2 = qword_2804BDD30;
  v3 = sub_26CD3A59C();
  [v2 setBool:a1 & 1 forKey:v3];
}

id sub_26CD24154()
{
  result = sub_26CD24174();
  qword_2804BDD30 = result;
  return result;
}

id sub_26CD24174()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD390A4(1, 0xD00000000000001ALL, 0x800000026CD53060, isUniquelyReferenced_nonNull_native);
  sub_26CCC8340(v1);

  v3 = sub_26CD3A4DC();

  [v0 registerDefaults_];

  return v0;
}

uint64_t _s13TVAppServices16PreferencesStoreV26sportsScoreSpoilersAllowedSbvgZ_0()
{
  if (qword_2804BBAB0 != -1)
  {
    swift_once();
  }

  v0 = qword_2804BDD30;
  v1 = sub_26CD3A59C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_26CC548D4(v7);
    return 0;
  }

  return result;
}

uint64_t sub_26CD24384(uint64_t a1)
{
  v4 = sub_26CD39D0C();
  *(v2 + 216) = v4;
  v5 = *(v4 - 8);
  *(v2 + 224) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v7 = *(a1 + 16);
  *(v2 + 256) = *a1;
  *(v2 + 272) = v7;
  *(v2 + 400) = *(a1 + 32);
  v8 = v1[1];
  *(v2 + 288) = *v1;
  *(v2 + 304) = v8;

  return MEMORY[0x2822009F8](sub_26CD2447C, 0, 0);
}

uint64_t sub_26CD2447C()
{
  v1 = *(v0 + 264);
  if (*(v0 + 400) == 1)
  {
    v3 = *(v0 + 272);
    v2 = *(v0 + 280);
    v4 = *(v0 + 256);
    v5 = *(v0 + 304);
    *(v0 + 152) = *(v0 + 288);
    *(v0 + 168) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD38, &qword_26CD4A3C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26CD48010;
    *(inited + 32) = 2;
    *(inited + 40) = v4;
    *(inited + 48) = v1;
    *(inited + 56) = 1;
    *(inited + 64) = v3;
    *(inited + 72) = v2;

    v7 = sub_26CC322A0(inited);
    *(v0 + 320) = v7;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD40, &qword_26CD4A3C8);
    swift_arrayDestroy();
    v8 = swift_task_alloc();
    *(v0 + 328) = v8;
    *v8 = v0;
    v8[1] = sub_26CD248B4;
    v9 = *(v0 + 232);
    v10 = 0xD00000000000002BLL;
    v11 = 0x800000026CD53160;
    v12 = v7;
    goto LABEL_18;
  }

  v13 = qword_280BBACD8;
  v14 = *(v0 + 264);

  if (v13 != -1)
  {
    swift_once();
  }

  if (!*(&xmmword_280BBACE0 + 1) || !qword_280BBAD00)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v16 = 0x2E6C6F632E737475;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26CD3C1E0;
    *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v18 + 64) = sub_26CC2E6E8();
    *(v18 + 32) = &unk_287DFA580;
    sub_26CD3A3DC();

    goto LABEL_16;
  }

  v15 = qword_280BBACF8 == 0x746F6D65722D7674 && qword_280BBAD00 == 0xE900000000000065;
  if (!v15 && (sub_26CD3AFDC() & 1) == 0)
  {
    v16 = 0x2E6C6F632E737475;
LABEL_16:
    v17 = 0xEE007478654E7055;
    goto LABEL_17;
  }

  v16 = 0xD000000000000011;
  v17 = 0x800000026CD53190;
LABEL_17:
  v20 = *(v0 + 256);
  v19 = *(v0 + 264);
  v21 = *(v0 + 304);
  *(v0 + 184) = *(v0 + 288);
  *(v0 + 200) = v21;
  MEMORY[0x26D6AD060](v16, v17);

  *(v0 + 344) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD38, &qword_26CD4A3C0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_26CD3C1E0;
  *(v22 + 32) = 1;
  v23 = v22 + 32;
  *(v22 + 40) = v20;
  *(v22 + 48) = v19;
  v24 = sub_26CC322A0(v22);
  *(v0 + 352) = v24;
  swift_setDeallocating();
  sub_26CC1B544(v23, &qword_2804BDD40, &qword_26CD4A3C8);
  v25 = swift_task_alloc();
  *(v0 + 360) = v25;
  *v25 = v0;
  v25[1] = sub_26CD249D0;
  v9 = *(v0 + 240);
  v10 = 0x2F7365766C656873;
  v11 = 0xE800000000000000;
  v12 = v24;
LABEL_18:

  return sub_26CD25040(v9, v10, v11, v12);
}

uint64_t sub_26CD248B4()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_26CD24F20;
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = sub_26CD24BDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD249D0()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v8 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_26CD24E90;
  }

  else
  {
    v6 = *(v2 + 344);
    v5 = *(v2 + 352);

    v4 = sub_26CD24AF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD24AF4()
{
  (*(v0[28] + 32))(v0[31], v0[30], v0[27]);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_26CD24CC8;
  v2 = v0[31];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CD24BDC()
{
  (*(v0[28] + 32))(v0[31], v0[29], v0[27]);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_26CD24CC8;
  v2 = v0[31];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CD24CC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v7 = sub_26CD24FA8;
  }

  else
  {
    *(v4 + 392) = a1;
    v7 = sub_26CD24DF0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CD24DF0()
{
  v1 = v0[30];
  v2 = v0[29];
  (*(v0[28] + 8))(v0[31], v0[27]);

  v3 = v0[1];
  v4 = v0[49];

  return v3(v4);
}

uint64_t sub_26CD24E90()
{
  v2 = v0[43];
  v1 = v0[44];

  v3 = v0[46];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26CD24F20()
{
  v1 = v0[40];

  v2 = v0[42];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26CD24FA8()
{
  (*(v0[28] + 8))(v0[31], v0[27]);
  v1 = v0[48];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CD25040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = sub_26CD3A07C();
  v4[4] = v7;
  v8 = *(v7 - 8);
  v4[5] = v8;
  v9 = *(v8 + 64) + 15;
  v4[6] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v11 = sub_26CD39E2C();
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();
  v14 = sub_26CD39D0C();
  v4[12] = v14;
  v15 = *(v14 - 8);
  v4[13] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v4[14] = v17;
  type metadata accessor for UTSURLRequestFactory();
  v18 = swift_task_alloc();
  v4[15] = v18;
  *v18 = v4;
  v18[1] = sub_26CD2526C;

  return sub_26CD027F0(v17, a2, a3, 0, 0xE000000000000000, 0, 0);
}

uint64_t sub_26CD2526C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_26CD277E8;
  }

  else
  {
    v3 = sub_26CD277EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t static UTSRequest.fetchJSON(_:)(uint64_t *a1)
{
  v3 = sub_26CD39D0C();
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v5 = *(v4 + 64) + 15;
  v1[15] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  v1[16] = v6;
  v1[17] = v7;
  v1[18] = v8;

  return MEMORY[0x2822009F8](sub_26CD25454, 0, 0);
}

uint64_t sub_26CD25454()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD000000000000010, 0x800000026CD53080);
  v0[11] = v2;
  v0[12] = v1;
  sub_26CD3AD1C();
  v4 = v0[10];
  *(v3 + 32) = v0[9];
  *(v3 + 40) = v4;
  sub_26CD3A97C();
  sub_26CC57EC8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD38, &qword_26CD4A3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26CD3C1E0;
  *(inited + 32) = 0;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = sub_26CC322A0(inited);
  v0[19] = v6;
  swift_setDeallocating();
  sub_26CC1B544(inited + 32, &qword_2804BDD40, &qword_26CD4A3C8);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_26CD256B0;
  v8 = v0[15];

  return sub_26CD25D90(v8, 0xD000000000000016, 0x800000026CD53120, v6);
}

uint64_t sub_26CD256B0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_26CD25C98;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_26CD257CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD257CC()
{
  (*(v0[14] + 32))(v0[16], v0[15], v0[13]);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_26CD258B4;
  v2 = v0[16];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CD258B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[23] = a1;
  v4[24] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26CD25D0C, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[25] = v7;
    *v7 = v6;
    v7[1] = sub_26CD25A34;

    return sub_26CD274F8(a1);
  }
}

uint64_t sub_26CD25A34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = sub_26CD25BFC;
  }

  else
  {
    *(v4 + 216) = a1;
    v7 = sub_26CD25B5C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CD25B5C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);
  v6 = *(v0 + 216);

  return v5(v6);
}

uint64_t sub_26CD25BFC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 208);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26CD25C98()
{
  v1 = v0[19];

  v2 = v0[21];
  v4 = v0[15];
  v3 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CD25D0C()
{
  (*(v0[14] + 8))(v0[16], v0[13]);
  v1 = v0[24];
  v3 = v0[15];
  v2 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CD25D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = sub_26CD3A07C();
  v4[4] = v7;
  v8 = *(v7 - 8);
  v4[5] = v8;
  v9 = *(v8 + 64) + 15;
  v4[6] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v11 = sub_26CD39E2C();
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();
  v14 = sub_26CD39D0C();
  v4[12] = v14;
  v15 = *(v14 - 8);
  v4[13] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v4[14] = v17;
  type metadata accessor for UTSURLRequestFactory();
  v18 = swift_task_alloc();
  v4[15] = v18;
  *v18 = v4;
  v18[1] = sub_26CD25FBC;

  return sub_26CD027F0(v17, a2, a3, 0, 0xE000000000000000, 0, 0);
}

uint64_t sub_26CD25FBC()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_26CD26494;
  }

  else
  {
    v3 = sub_26CD260D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CD260D0()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[10];
    v3 = -1;
    v4 = -1 << *(v1 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v1 + 64);
    v6 = (63 - v4) >> 6;
    v7 = v2 + 32;
    v8 = v0[3];

    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (v5)
    {
LABEL_5:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v10 << 6);
      v14 = (*(v1 + 56) + 16 * v13);
      if (v14[1])
      {
        v42 = *v14;
        v43 = v7;
        v16 = *(*(v1 + 48) + v13);
        v41 = v0[11];

        sub_26CD39DFC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_26CCBE394(0, v11[2] + 1, 1, v11);
        }

        v18 = v11[2];
        v17 = v11[3];
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          v23 = sub_26CCBE394(v17 > 1, v18 + 1, 1, v11);
          v19 = v18 + 1;
          v11 = v23;
        }

        v20 = v0[11];
        v21 = v0[9];
        v11[2] = v19;
        v22 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18;
        v7 = v43;
        (*(v2 + 32))(v22, v20, v21);
      }
    }

    while (1)
    {
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v15 >= v6)
      {

        goto LABEL_17;
      }

      v5 = *(v1 + 64 + 8 * v15);
      ++v10;
      if (v5)
      {
        v10 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v24 = v0[14];
    v25 = v0[7];
    v26 = v0[4];
    v27 = v0[5];
    sub_26CD39C9C();
    if ((*(v27 + 48))(v25, 1, v26))
    {
      sub_26CC1B544(v0[7], &qword_2804BCA30, &qword_26CD3DA70);
      v28 = 1;
    }

    else
    {
      v29 = v0[7];
      v31 = v0[5];
      v30 = v0[6];
      v32 = v0[4];
      (*(v31 + 16))(v30, v29, v32);
      sub_26CC1B544(v29, &qword_2804BCA30, &qword_26CD3DA70);
      sub_26CD3A05C();
      (*(v31 + 8))(v30, v32);
      v28 = 0;
    }

    v34 = v0[13];
    v33 = v0[14];
    v36 = v0[11];
    v35 = v0[12];
    v37 = v0[7];
    v38 = v0[6];
    v39 = v0[2];
    (*(v0[5] + 56))(v0[8], v28, 1, v0[4]);
    sub_26CD39CAC();
    (*(v34 + 32))(v39, v33, v35);

    v40 = v0[1];

    return v40();
  }

  return result;
}

uint64_t sub_26CD26494()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  v6 = v0[1];
  v7 = v0[16];

  return v6();
}

uint64_t static UTSRequest.fetchJSON(_:)(uint64_t a1)
{
  v3 = sub_26CD39D0C();
  *(v1 + 208) = v3;
  v4 = *(v3 - 8);
  *(v1 + 216) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  v6 = *(a1 + 16);
  *(v1 + 248) = *a1;
  *(v1 + 264) = v6;
  *(v1 + 185) = *(a1 + 32);

  return MEMORY[0x2822009F8](sub_26CD2661C, 0, 0);
}

uint64_t sub_26CD2661C()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = 0xD000000000000011;
  v2 = *(v0 + 185);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  v26 = *(v0 + 264);
  v27 = *(v0 + 248);
  sub_26CD3AC6C();
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD53140);
  *(v0 + 152) = v27;
  *(v0 + 168) = v26;
  *(v0 + 184) = v2;
  sub_26CD3AD1C();
  v4 = *(v0 + 200);
  *(v3 + 32) = *(v0 + 192);
  *(v3 + 40) = v4;
  sub_26CD3A97C();
  sub_26CC57EC8();

  if (v2 == 1)
  {
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD38, &qword_26CD4A3C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26CD48010;
    *(inited + 32) = 2;
    *(inited + 40) = v8;
    *(inited + 48) = v7;
    *(inited + 56) = 1;
    *(inited + 64) = v6;
    *(inited + 72) = v5;

    v10 = sub_26CC322A0(inited);
    *(v0 + 280) = v10;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD40, &qword_26CD4A3C8);
    swift_arrayDestroy();
    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    v11[1] = sub_26CD26B30;
    v12 = *(v0 + 224);
    v13 = 0xD00000000000002BLL;
    v14 = 0x800000026CD53160;
    v15 = v10;
    goto LABEL_16;
  }

  v16 = qword_280BBACD8;

  if (v16 != -1)
  {
    swift_once();
  }

  if (!*(&xmmword_280BBACE0 + 1) || !qword_280BBAD00)
  {
    v1 = 0x2E6C6F632E737475;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26CD3C1E0;
    *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v18 + 64) = sub_26CC2E6E8();
    *(v18 + 32) = &unk_287DFA580;
    sub_26CD3A3DC();

LABEL_14:
    v17 = 0xEE007478654E7055;
    goto LABEL_15;
  }

  if ((qword_280BBACF8 != 0x746F6D65722D7674 || qword_280BBAD00 != 0xE900000000000065) && (sub_26CD3AFDC() & 1) == 0)
  {
    v1 = 0x2E6C6F632E737475;
    goto LABEL_14;
  }

  v17 = 0x800000026CD53190;
LABEL_15:
  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  MEMORY[0x26D6AD060](v1, v17);

  *(v0 + 304) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD38, &qword_26CD4A3C0);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_26CD3C1E0;
  *(v21 + 32) = 1;
  v22 = v21 + 32;
  *(v21 + 40) = v20;
  *(v21 + 48) = v19;
  v23 = sub_26CC322A0(v21);
  *(v0 + 312) = v23;
  swift_setDeallocating();
  sub_26CC1B544(v22, &qword_2804BDD40, &qword_26CD4A3C8);
  v24 = swift_task_alloc();
  *(v0 + 320) = v24;
  *v24 = v0;
  v24[1] = sub_26CD26C4C;
  v12 = *(v0 + 232);
  v13 = 0x2F7365766C656873;
  v14 = 0xE800000000000000;
  v15 = v23;
LABEL_16:

  return sub_26CD25D90(v12, v13, v14, v15);
}

uint64_t sub_26CD26B30()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_26CD273D8;
  }

  else
  {
    v5 = *(v2 + 280);

    v4 = sub_26CD26E58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD26C4C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v8 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_26CD27348;
  }

  else
  {
    v6 = *(v2 + 304);
    v5 = *(v2 + 312);

    v4 = sub_26CD26D70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD26D70()
{
  (*(v0[27] + 32))(v0[30], v0[29], v0[26]);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_26CD26F44;
  v2 = v0[30];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CD26E58()
{
  (*(v0[27] + 32))(v0[30], v0[28], v0[26]);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_26CD26F44;
  v2 = v0[30];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CD26F44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  v4[43] = a1;
  v4[44] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26CD27460, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[45] = v7;
    *v7 = v6;
    v7[1] = sub_26CD270C4;

    return sub_26CD274F8(a1);
  }
}

uint64_t sub_26CD270C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v7 = sub_26CD272A0;
  }

  else
  {
    *(v4 + 376) = a1;
    v7 = sub_26CD271EC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CD271EC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);

  (*(v4 + 8))(v2, v5);

  v6 = *(v0 + 8);
  v7 = *(v0 + 376);

  return v6(v7);
}

uint64_t sub_26CD272A0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 368);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 224);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26CD27348()
{
  v2 = v0[38];
  v1 = v0[39];

  v3 = v0[41];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26CD273D8()
{
  v1 = v0[35];

  v2 = v0[37];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26CD27460()
{
  (*(v0[27] + 8))(v0[30], v0[26]);
  v1 = v0[44];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CD27518()
{
  v1 = [*(v0 + 16) data];
  v2 = sub_26CD3A0BC();
  v4 = v3;

  v5 = Data.asDictionary()();
  sub_26CC18C50(v2, v4);
  if (v5)
  {
    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v8 + 64) = sub_26CC2E6E8();
    *(v8 + 32) = &unk_287DFC910;
    sub_26CD3A3DC();

    sub_26CC2E794();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26CD2772C(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26CD27774(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26CD277F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26CC181C4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a3 + 56) + 32 * v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26CD278B0()
{
  result = qword_2804BDD48;
  if (!qword_2804BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDD48);
  }

  return result;
}

const char *sub_26CD27918()
{
  if (*v0)
  {
    return "plato";
  }

  else
  {
    return "timbuktu";
  }
}

uint64_t sub_26CD27948()
{
  sub_26CC1B544(v0 + 16, &qword_2804BDB98, &unk_26CD48D80);

  return swift_deallocClassInstance();
}

unint64_t sub_26CD279B4()
{
  sub_26CD3A60C();
  sub_26CC16DCC();
  v0 = sub_26CD3AB2C();

  if ((v0 & 1) == 0)
  {
    sub_26CD3A60C();
    v1 = sub_26CD3AB2C();

    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  v2 = sub_26CC31D94(&unk_287DFC188);
  sub_26CC1B544(&unk_287DFC1A8, &qword_2804BBB68, &qword_26CD3C678);
  return v2;
}

uint64_t sub_26CD27AD8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];

  v5 = *(v4 + 112);
  *(v4 + 112) = 0;

  swift_willThrow();

  v6 = v0[1];
  v7 = v0[12];

  return v6();
}

uint64_t sub_26CD27B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26CD28B28(a3, v24 - v10);
  v12 = sub_26CD3A86C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26CC1ED18(v11);
  }

  else
  {
    sub_26CD3A85C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26CD3A80C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_26CD3A61C() + 32;
      sub_26CD28B98();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_26CC1ED18(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26CC1ED18(a3);
  sub_26CD28B98();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26CD27DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26CD28B28(a3, v24 - v10);
  v12 = sub_26CD3A86C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26CC1ED18(v11);
  }

  else
  {
    sub_26CD3A85C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26CD3A80C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26CD3A61C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCA0, &qword_26CD45DA0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_26CC1ED18(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26CC1ED18(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCA0, &qword_26CD45DA0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26CD2806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26CD28B28(a3, v24 - v10);
  v12 = sub_26CD3A86C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26CC1ED18(v11);
  }

  else
  {
    sub_26CD3A85C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26CD3A80C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26CD3A61C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_26CC1ED18(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26CC1ED18(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26CD282EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v28[0] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v28 - v14;
  sub_26CD28B28(a3, v28 - v14);
  v16 = sub_26CD3A86C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    sub_26CC1ED18(v15);
  }

  else
  {
    sub_26CD3A85C();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  v20 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v21 = sub_26CD3A80C();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = sub_26CD3A61C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      v25 = (v23 | v21);
      if (v23 | v21)
      {
        v29[0] = 0;
        v29[1] = 0;
        v25 = v29;
        v29[2] = v21;
        v29[3] = v23;
      }

      v28[1] = 7;
      v28[2] = v25;
      v28[3] = v24;
      v26 = swift_task_create();

      sub_26CC1ED18(a3);

      return v26;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26CC1ED18(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v23 | v21)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v21;
    v29[7] = v23;
  }

  return swift_task_create();
}

uint64_t static TVBagService.shared.getter()
{
  if (qword_280BBB5E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CD285C8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[19];
  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[8];
  v12 = v0[4];
  v11 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t TVBagService.prewarm(with:)(double a1)
{
  *(v2 + 88) = v1;
  *(v2 + 80) = a1;
  return MEMORY[0x2822009F8](sub_26CD286E8, v1, 0);
}

uint64_t sub_26CD286E8()
{
  *(v0[11] + 120) = v0[10];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_26CD2878C;
  v2 = v0[11];

  return TVBagService.bag.getter((v0 + 2));
}

uint64_t sub_26CD2878C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_26CD288B4;
  }

  else
  {
    v6 = *(v2 + 88);
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v5 = sub_26CC24940;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26CD288B4()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD53230);
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  sub_26CD3AD1C();
  v3 = v0[8];
  *(v2 + 32) = v0[7];
  *(v2 + 40) = v3;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v4 + 64) = sub_26CC2E6E8();
  *(v4 + 32) = v2;
  sub_26CD3A3DC();

  v5 = v0[1];

  return v5();
}

uint64_t TVBagService.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TVBagService.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26CD28B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CD28B98()
{
  result = qword_280BB9BD8;
  if (!qword_280BB9BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BB9BD8);
  }

  return result;
}

uint64_t sub_26CD28C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_26CC246B8;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t static WidgetCacheService.shouldInvalidate()()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26CD3C1E0;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v0 + 64) = sub_26CC2E6E8();
  *(v0 + 32) = &unk_287DFC970;
  sub_26CD3A3DC();

  return 0;
}

uint64_t sub_26CD28EF4(uint64_t a1)
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v2 + 64) = sub_26CC2E6E8();
  *(v2 + 32) = a1;
  sub_26CD3A3DC();
}

uint64_t UTSNetworkRequest.init(urlRequest:isRequestAnonymous:protocolVersion:networkRequestMetricsOverlay:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for UTSNetworkRequest(0);
  v11 = a5 + v10[5];
  sub_26CD3A1FC();
  *(a5 + v10[6]) = a2;
  *(a5 + v10[8]) = a3;
  v12 = v10[7];
  v13 = sub_26CD39D0C();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a1, v13);
  *a5 = a4;
  return result;
}

uint64_t NetworkRequest.init(urlRequest:isRequestAnonymous:networkRequestMetricsOverlay:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for NetworkRequest(0);
  v9 = a4 + *(v8 + 28);
  sub_26CD3A1FC();
  v10 = *(v8 + 24);
  v11 = sub_26CD39D0C();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a1, v11);
  *(a4 + 8) = a2;
  *a4 = a3;
  return result;
}

uint64_t URLRequestError.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t NetworkRequest.urlRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NetworkRequest(0) + 24);
  v4 = sub_26CD39D0C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26CD292B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26CD39D0C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t UTSNetworkRequest.networkRequestMetricsOverlay.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t UTSNetworkRequest.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UTSNetworkRequest(0) + 20);
  v4 = sub_26CD3A20C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26CD2945C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_26CD29524@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 28);
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_26CD2959C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_26CD3A20C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26CD2961C()
{
  type metadata accessor for NetworkManager();
  swift_allocObject();
  result = sub_26CD2B170();
  qword_280BBB0C8 = result;
  return result;
}

uint64_t static NetworkManager.shared.getter()
{
  if (qword_280BBB0C0 != -1)
  {
    swift_once();
  }
}

uint64_t NetworkManager.executeRequest(from:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_26CD39D0C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD58, &qword_26CD4A7A8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD297B8, v1, 0);
}

uint64_t sub_26CD297B8()
{
  v1 = v0[13];
  sub_26CC19A84(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD60, &qword_26CD4A7B0);
  v2 = type metadata accessor for UTSNetworkRequest(0);
  v3 = swift_dynamicCast();
  v4 = *(*(v2 - 8) + 56);
  v5 = v0[13];
  if (v3)
  {
    v4(v0[13], 0, 1, v2);
    sub_26CD29F0C(v5);
    if (qword_280BBAA78 != -1)
    {
      swift_once();
    }

    v6 = v0[12];
    v7 = v0[7];
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v9 + 8))(v8, v9);
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_26CD29A54;
    v11 = v0[12];

    return UTSNetworkManager.execute(request:)(v11);
  }

  else
  {
    v13 = v0[11];
    v14 = v0[7];
    v4(v0[13], 1, 1, v2);
    sub_26CD29F0C(v5);
    v15 = v14[3];
    v16 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v16 + 8))(v15, v16);
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_26CD29C30;
    v18 = v0[11];
    v19 = v0[8];

    return sub_26CD2BB90(v18);
  }
}

uint64_t sub_26CD29A54(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 80);
  v8 = *(*v2 + 72);
  v9 = *v2;
  *(*v2 + 120) = v1;

  (*(v7 + 8))(v6, v8);
  if (v1)
  {
    v10 = v4[8];

    return MEMORY[0x2822009F8](sub_26CD29E8C, v10, 0);
  }

  else
  {
    v12 = v4[12];
    v11 = v4[13];
    v13 = v4[11];

    v14 = *(v9 + 8);

    return v14(a1);
  }
}

uint64_t sub_26CD29C30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  v8 = *(*v2 + 72);
  v9 = *v2;
  *(*v2 + 136) = v1;

  (*(v7 + 8))(v6, v8);
  if (v1)
  {
    v10 = v4[8];

    return MEMORY[0x2822009F8](sub_26CD29E0C, v10, 0);
  }

  else
  {
    v12 = v4[12];
    v11 = v4[13];
    v13 = v4[11];

    v14 = *(v9 + 8);

    return v14(a1);
  }
}

uint64_t sub_26CD29E0C()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CD29E8C()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CD29F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD58, &qword_26CD4A7A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NetworkManager.cancel(fom:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_26CD39D0C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD58, &qword_26CD4A7A8) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2A06C, v1, 0);
}

uint64_t sub_26CD2A06C()
{
  v35 = v0;
  v1 = v0[12];
  sub_26CC19A84(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD60, &qword_26CD4A7B0);
  v2 = type metadata accessor for UTSNetworkRequest(0);
  v3 = swift_dynamicCast();
  v4 = *(*(v2 - 8) + 56);
  v5 = v0[12];
  if (v3)
  {
    v4(v0[12], 0, 1, v2);
    sub_26CD29F0C(v5);
    if (qword_280BBAA78 != -1)
    {
      swift_once();
    }

    v6 = v0[11];
    v7 = v0[7];
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v9 + 8))(v8, v9);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_26CD2A4B8;
    v11 = v0[11];

    return UTSNetworkManager.cancel(request:)(v11);
  }

  else
  {
    v14 = v0[10];
    v13 = v0[11];
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];
    v4(v0[12], 1, 1, v2);
    sub_26CD29F0C(v5);
    v18 = *(v16 + 120);
    sub_26CD3AC6C();

    v33 = 0x3A74736575716552;
    v34 = 0xE900000000000020;
    v19 = v17[3];
    v20 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v19);
    (*(v20 + 8))(v19, v20);
    v21 = sub_26CD39C2C();
    v23 = v22;
    (*(v14 + 8))(v13, v15);
    MEMORY[0x26D6AD060](v21, v23);

    MEMORY[0x26D6AD060](0xD000000000000016, 0x800000026CD532C0);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26CD3C1E0;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_26CC19E10();
    *(v24 + 32) = 0x3A74736575716552;
    *(v24 + 40) = 0xE900000000000020;
    sub_26CD3A3DC();

    v25 = *(v16 + 112);
    *(swift_task_alloc() + 16) = v17;

    os_unfair_lock_lock(v25 + 6);
    sub_26CD2C080(&v33);
    os_unfair_lock_unlock(v25 + 6);
    v26 = v33;
    v27 = v34;

    if (v26)
    {
      ObjectType = swift_getObjectType();
      v29 = *(v27 + 32);
      swift_unknownObjectRetain();
      v29(ObjectType, v27);
      swift_unknownObjectRelease_n();
    }

    v31 = v0[11];
    v30 = v0[12];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_26CD2A4B8()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *v0;

  (*(v4 + 8))(v3, v5);
  v7 = *(v1 + 96);
  v8 = *(v1 + 88);

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_26CD2A634@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_26CD39D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 8))(v9, v10);
  v11 = sub_26CD39CFC();
  (*(v5 + 8))(v8, v4);
  result = sub_26CD2BA48(v11);
  *a2 = result;
  a2[1] = v13;
  return result;
}

uint64_t sub_26CD2A788()
{
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC30618;
  v2 = *(v0 + 24);

  return UTSNetworkManager.fetchConfiguration(forceConfig:)(v2);
}

uint64_t NetworkManager.execute(request:metrics:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CD2C734;

  return sub_26CD2BB90(a1);
}

uint64_t sub_26CD2A904(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_26CD39D0C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2A9C8, v2, 0);
}

uint64_t sub_26CD2A9C8()
{
  v1 = *(*(v0 + 56) + 112);
  *(swift_task_alloc() + 16) = *(v0 + 40);

  os_unfair_lock_lock((v1 + 24));
  sub_26CD2C690((v1 + 16));
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v20 = *(v0 + 48);
  os_unfair_lock_unlock((v1 + 24));

  v7 = *(v4 + 120);
  sub_26CD3AC6C();

  ObjectType = swift_getObjectType();
  (*(v20 + 24))();
  v9 = sub_26CD39C2C();
  v11 = v10;
  (*(v3 + 8))(v2, v5);
  MEMORY[0x26D6AD060](v9, v11);

  MEMORY[0x26D6AD060](46, 0xE100000000000000);
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_26CC19E10();
  *(v12 + 32) = 0xD00000000000001FLL;
  *(v12 + 40) = 0x800000026CD53330;
  sub_26CD3A3DC();

  v13 = *(v20 + 40);
  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = sub_26CD2ACC4;
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);

  return v19(ObjectType, v16);
}

uint64_t sub_26CD2ACC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[11];
  v6 = *v2;
  v4[12] = v1;

  if (v1)
  {
    v7 = v4[10];

    v8 = v6[1];

    return v8();
  }

  else
  {
    v10 = v4[7];

    return MEMORY[0x2822009F8](sub_26CD2AE1C, v10, 0);
  }
}

void sub_26CD2AE1C()
{
  v7 = v0;
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 56) + 112);
  *(swift_task_alloc() + 16) = *(v0 + 40);

  os_unfair_lock_lock(v2 + 6);
  sub_26CD2C6AC(v6);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 6);
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 80);
    os_unfair_lock_unlock(v2 + 6);

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);

    v5(v3);
  }
}

uint64_t NetworkManager.cancel(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26CD2AF4C, v1, 0);
}

uint64_t sub_26CD2AF4C()
{
  v15 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 120);
  sub_26CD3AC6C();

  v13 = 0x3A74736575716552;
  v14 = 0xE900000000000020;
  v4 = sub_26CD39C2C();
  MEMORY[0x26D6AD060](v4);

  MEMORY[0x26D6AD060](0xD000000000000016, 0x800000026CD532C0);
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_26CC19E10();
  *(v5 + 32) = 0x3A74736575716552;
  *(v5 + 40) = 0xE900000000000020;
  sub_26CD3A3DC();

  v6 = *(v2 + 112);
  *(swift_task_alloc() + 16) = v1;

  os_unfair_lock_lock(v6 + 6);
  sub_26CD2C09C(&v13);
  os_unfair_lock_unlock(v6 + 6);
  v7 = v13;
  v8 = v14;

  if (v7)
  {
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 32);
    swift_unknownObjectRetain();
    v10(ObjectType, v8);
    swift_unknownObjectRelease_n();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_26CD2B170()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = sub_26CC31EA8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDA0, &qword_26CD4AA98);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 112) = v3;
  sub_26CC1964C();
  *(v1 + 120) = sub_26CD3AACC();
  *(v1 + 128) = 512;
  return v1;
}

uint64_t NetworkManager.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t NetworkManager.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26CD2B2A0()
{
  if (qword_280BBB0C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CD2B304(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_26CD2B3B8;

  return sub_26CD2BB90(a2);
}

uint64_t sub_26CD2B3B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_26CD2B4C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26CD39D0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a3 + 24))(ObjectType, a3);
  v12 = sub_26CD39CFC();
  (*(v7 + 8))(v10, v6);
  swift_unknownObjectRetain();
  v13 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *a1;
  result = sub_26CD39584(a2, a3, v12, isUniquelyReferenced_nonNull_native);
  *a1 = v17;
  return result;
}

uint64_t sub_26CD2B618@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_26CD39D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a1 + 24))(ObjectType, a1);
  v10 = sub_26CD39CFC();
  (*(v5 + 8))(v8, v4);
  result = sub_26CD2BA48(v10);
  *a2 = result;
  a2[1] = v12;
  return result;
}

uint64_t sub_26CD2B738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26CC181C4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26CD37000();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
    v22 = *(v15 - 8);
    sub_26CD2C6C8(v14 + *(v22 + 72) * v9, a3);
    sub_26CD380DC(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_26CD2B890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26CCCA7E8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26CD373D8();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_26CD3A20C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_26CD38484(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_26CD2BA48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_26CCCA6D8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26CD37A94();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_26CD38790(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_26CD2BADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_26CCCA6D8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v17 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26CD37BF8();
    v9 = v17;
  }

  v10 = v6;
  v11 = *(v9 + 56) + 32 * v6;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  sub_26CD38900(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_26CD2BB90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UTSNetworkRequest(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2BC3C, v1, 0);
}

uint64_t sub_26CD2BC3C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v4[7];
  v7 = sub_26CD39D0C();
  (*(*(v7 - 8) + 16))(&v2[v6], v5, v7);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_26CD3A59C();
  v10 = [v8 integerForKey_];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 91;
  }

  v12 = &v2[v4[5]];
  sub_26CD3A1FC();
  v2[v4[6]] = 0;
  *&v2[v4[8]] = v11;
  *v2 = 0;
  sub_26CCC2438(v2, v1);
  v13 = type metadata accessor for AMSRequestHandler();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  sub_26CCC2438(v1, v3);
  v17 = sub_26CD32DB4(v3, v16);
  v0[8] = v17;
  sub_26CCC249C(v1);
  v18 = swift_task_alloc();
  v0[9] = v18;
  *v18 = v0;
  v18[1] = sub_26CD2BE20;
  v19 = v0[3];

  return sub_26CD2A904(v17, &off_287E05C08);
}

uint64_t sub_26CD2BE20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = v1;

  v7 = v4[3];
  if (v1)
  {
    v8 = sub_26CD2BFF0;
  }

  else
  {
    v4[11] = a1;
    v8 = sub_26CD2BF5C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26CD2BF5C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  sub_26CCC249C(v2);

  v5 = v0[1];
  v6 = v0[11];

  return v5(v6);
}

uint64_t sub_26CD2BFF0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  sub_26CCC249C(v2);

  v5 = v0[1];
  v6 = v0[10];

  return v5();
}

uint64_t sub_26CD2C09C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_26CD39CFC();
  result = sub_26CD2BA48(v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

unint64_t sub_26CD2C0E8()
{
  result = qword_2804BDD68;
  if (!qword_2804BDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDD68);
  }

  return result;
}

unint64_t sub_26CD2C140()
{
  result = qword_2804BDD70;
  if (!qword_2804BDD70)
  {
    type metadata accessor for NetworkManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDD70);
  }

  return result;
}

uint64_t sub_26CD2C1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_26CC246B8;

  return v13(a1, a2, a3, a4);
}

void sub_26CD2C374()
{
  sub_26CD2C418();
  if (v0 <= 0x3F)
  {
    sub_26CD39D0C();
    if (v1 <= 0x3F)
    {
      sub_26CD3A20C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26CD2C418()
{
  if (!qword_2804BDD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCC30, &qword_26CD46430);
    v0 = sub_26CD3AADC();
    if (!v1)
    {
      atomic_store(v0, &qword_2804BDD88);
    }
  }
}

void sub_26CD2C4A4()
{
  sub_26CD2C418();
  if (v0 <= 0x3F)
  {
    sub_26CD3A20C();
    if (v1 <= 0x3F)
    {
      sub_26CD39D0C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26CD2C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26CC246B8;

  return v11(a1, a2, a3);
}

uint64_t sub_26CD2C6C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CD2C738(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for UTSNetworkRequest(0);
  v2[12] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = sub_26CD39D0C();
  v2[16] = v5;
  v6 = *(v5 - 8);
  v2[17] = v6;
  v7 = *(v6 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2C840, v1, 0);
}

uint64_t sub_26CD2C840()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[10];
  v5 = *(v2 + 16);
  v0[19] = v5;
  v0[20] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  if (qword_2804BBA20 != -1)
  {
    swift_once();
  }

  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v9 = off_2804BC780;
  v0[21] = off_2804BC780;
  v10 = type metadata accessor for LocationService();
  v0[22] = v10;
  v11 = type metadata accessor for UTSNetworkRequestDecorator();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v0[23] = v14;
  (*(v7 + 32))(v14 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v6, v8);
  v15 = (v14 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient);
  *v15 = v9;
  v15[3] = v10;
  v15[4] = &off_287DFFFE0;

  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_26CD2C9C8;

  return sub_26CD04640();
}

uint64_t sub_26CD2C9C8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_26CD2CEAC;
  }

  else
  {
    v5 = sub_26CD2CAE4;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26CD2CAE4()
{
  v1 = v0[23];
  v2 = v0[11];
  v0[26] = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();

  return MEMORY[0x2822009F8](sub_26CD2CB70, v2, 0);
}

uint64_t sub_26CD2CB70()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  (*(v0 + 152))(&v4[v7[7]], *(v0 + 184) + *(v0 + 208), *(v0 + 128));
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_26CD3A59C();
  v10 = [v8 integerForKey_];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 91;
  }

  v12 = &v4[v7[5]];
  sub_26CD3A1FC();
  v4[v7[6]] = 0;
  *&v4[v7[8]] = v11;
  *v4 = 0;
  sub_26CCC2438(v4, v5);
  v13 = type metadata accessor for AMSRequestHandler();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  sub_26CCC2438(v5, v6);
  v17 = sub_26CD32DB4(v6, v16);
  *(v0 + 216) = v17;
  sub_26CCC249C(v5);
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_287DFFFE0;
  *(v0 + 16) = v3;

  v18 = swift_task_alloc();
  *(v0 + 224) = v18;
  *v18 = v0;
  v18[1] = sub_26CD2CD5C;
  v19 = *(v0 + 80);
  v20 = *(v0 + 88);

  return sub_26CD2E0E4(v19, v17, &off_287E05C08);
}

uint64_t sub_26CD2CD5C(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[28];
  v6 = *v2;
  v4[29] = v1;

  v7 = v4[11];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v8 = sub_26CD2D078;
  }

  else
  {
    v4[30] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v8 = sub_26CD2CF40;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26CD2CEAC()
{
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26CD2CF40()
{
  v1 = v0[27];
  v2 = v0[23];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[14];

  swift_setDeallocating();
  (*(v4 + 8))(v2 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v5);
  sub_26CC1B544(v2 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  v9 = *(*v2 + 48);
  v10 = *(*v2 + 52);
  swift_deallocClassInstance();
  sub_26CCC249C(v6);

  v11 = v0[1];
  v12 = v0[30];

  return v11(v12);
}

uint64_t sub_26CD2D078()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[15];

  sub_26CCC249C(v3);
  v4 = v0[29];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t UTSNetworkManager.execute(request:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for UTSNetworkRequest(0);
  v2[19] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v5 = sub_26CD39D0C();
  v2[23] = v5;
  v6 = *(v5 - 8);
  v2[24] = v6;
  v7 = *(v6 + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2D22C, v1, 0);
}

uint64_t sub_26CD2D22C()
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1) && (v1 = qword_280BBAD00) != 0)
  {
    v2 = qword_280BBACF8;
    *(v0 + 40) = &type metadata for FeatureFlagManager;
    *(v0 + 48) = sub_26CC30530();
    *(v0 + 16) = 0;

    v3 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v3 & 1) != 0 || (sub_26CC2016C(v2, v1, *(*(v0 + 144) + 144)))
    {
      v5 = *(v0 + 192);
      v4 = *(v0 + 200);
      v6 = *(v0 + 184);
      v7 = *(v0 + 136);

      v8 = *(v5 + 16);
      *(v0 + 208) = v8;
      *(v0 + 216) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v8(v4, v7, v6);
      if (qword_2804BBA20 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 192);
      v9 = *(v0 + 200);
      v11 = *(v0 + 184);
      v12 = off_2804BC780;
      *(v0 + 224) = off_2804BC780;
      v13 = type metadata accessor for LocationService();
      *(v0 + 232) = v13;
      v14 = type metadata accessor for UTSNetworkRequestDecorator();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      v17 = swift_allocObject();
      *(v0 + 240) = v17;
      (*(v10 + 32))(v17 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v9, v11);
      v18 = v17 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient;
      *v18 = v12;
      *(v18 + 8) = *(v0 + 120);
      *(v18 + 24) = v13;
      *(v18 + 32) = &off_287DFFFE0;

      v19 = swift_task_alloc();
      *(v0 + 248) = v19;
      *v19 = v0;
      v19[1] = sub_26CD2D794;

      return sub_26CD04640();
    }

    else
    {
      return sub_26CD3AD2C();
    }
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 136);
    v22 = *(v0 + 144);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26CD3C1E0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v23 + 56) = v24;
    v25 = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v23 + 64) = v25;
    *(v23 + 32) = &unk_287DFA580;
    sub_26CD3A3DC();

    v26 = *(v22 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    v28 = sub_26CD39C2C();
    MEMORY[0x26D6AD060](v28);

    MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD53350);
    *(v27 + 32) = 0x2074736575716552;
    *(v27 + 40) = 0xE800000000000000;
    sub_26CD3A98C();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26CD3C1E0;
    *(v29 + 56) = v24;
    *(v29 + 64) = v25;
    *(v29 + 32) = v27;
    sub_26CD3A3DC();

    sub_26CD044E0();
    swift_allocError();
    *v30 = 6;
    swift_willThrow();
    v31 = *(v0 + 200);
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);
    v34 = *(v0 + 160);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_26CD2D794()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_26CD2DC78;
  }

  else
  {
    v5 = sub_26CD2D8B0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26CD2D8B0()
{
  v1 = v0[30];
  v2 = v0[18];
  v0[33] = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();

  return MEMORY[0x2822009F8](sub_26CD2D93C, v2, 0);
}

uint64_t sub_26CD2D93C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  (*(v0 + 208))(&v4[v7[7]], *(v0 + 240) + *(v0 + 264), *(v0 + 184));
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_26CD3A59C();
  v10 = [v8 integerForKey_];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 91;
  }

  v12 = &v4[v7[5]];
  sub_26CD3A1FC();
  v4[v7[6]] = 0;
  *&v4[v7[8]] = v11;
  *v4 = 0;
  sub_26CCC2438(v4, v5);
  v13 = type metadata accessor for AMSRequestHandler();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  sub_26CCC2438(v5, v6);
  v17 = sub_26CD32DB4(v6, v16);
  *(v0 + 272) = v17;
  sub_26CCC249C(v5);
  *(v0 + 80) = v1;
  *(v0 + 88) = &off_287DFFFE0;
  *(v0 + 56) = v3;

  v18 = swift_task_alloc();
  *(v0 + 280) = v18;
  *v18 = v0;
  v18[1] = sub_26CD2DB28;
  v19 = *(v0 + 136);
  v20 = *(v0 + 144);

  return sub_26CD2E0E4(v19, v17, &off_287E05C08);
}

uint64_t sub_26CD2DB28(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[35];
  v6 = *v2;
  v4[36] = v1;

  v7 = v4[18];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 7);
    v8 = sub_26CD2DEC4;
  }

  else
  {
    v4[37] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 7);
    v8 = sub_26CD2DD8C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26CD2DC78()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[24];
  swift_setDeallocating();
  (*(v3 + 8))(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v2);
  sub_26CC1B544(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);
  swift_deallocClassInstance();
  v6 = v0[32];
  v7 = v0[25];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26CD2DD8C()
{
  v1 = v0[34];
  v2 = v0[30];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v8 = v0[21];

  swift_setDeallocating();
  (*(v4 + 8))(v2 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v5);
  sub_26CC1B544(v2 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  v9 = *(*v2 + 48);
  v10 = *(*v2 + 52);
  swift_deallocClassInstance();
  sub_26CCC249C(v6);

  v11 = v0[1];
  v12 = v0[37];

  return v11(v12);
}

uint64_t sub_26CD2DEC4()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];

  swift_setDeallocating();
  (*(v4 + 8))(v2 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v3);
  sub_26CC1B544(v2 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 52);
  swift_deallocClassInstance();
  sub_26CCC249C(v5);
  v8 = v0[36];
  v9 = v0[25];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[20];

  v13 = v0[1];

  return v13();
}

uint64_t sub_26CD2DFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_26CD3B0FC();
  sub_26CD3A54C();
  v7 = sub_26CD3B13C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_26CD3AFDC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26CD2E0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_26CD39D0C();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2E1E8, v3, 0);
}

uint64_t sub_26CD2E1E8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v24 = v1;
  v25 = v0[7];
  v8 = v0[5];
  v26 = v8;
  v9 = sub_26CD3A86C();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  (*(v4 + 16))(v2, v8, v6);
  v10 = sub_26CD33038();
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 2) = v5;
  *(v13 + 3) = v10;
  *(v13 + 4) = v5;
  (*(v4 + 32))(&v13[v11], v2, v6);
  v14 = &v13[v12];
  *v14 = v7;
  *(v14 + 1) = v25;
  swift_retain_n();
  swift_unknownObjectRetain();
  v15 = sub_26CD27B78(0, 0, v24, &unk_26CD4ACD8, v13);
  v0[14] = v15;
  v16 = *(v5 + 112);
  v17 = swift_task_alloc();
  v17[2] = v26;
  v17[3] = v7;
  v17[4] = v25;
  v17[5] = v15;

  os_unfair_lock_lock((v16 + 24));
  sub_26CD33294((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));

  v18 = *(MEMORY[0x277D857C8] + 4);
  v19 = swift_task_alloc();
  v0[15] = v19;
  v20 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  v0[16] = v21;
  *v19 = v0;
  v19[1] = sub_26CD2E49C;
  v22 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v15, v20, v21, v22);
}

uint64_t sub_26CD2E49C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_26CD2E650;
  }

  else
  {
    v6 = sub_26CD2E5C8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD2E5C8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_26CD2E650()
{
  v14 = v0;
  v1 = *(v0 + 136);
  *(v0 + 24) = v1;
  v2 = *(v0 + 128);
  v3 = v1;
  sub_26CC18080(0, &qword_280BB9BA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 40);

    v6 = *(v0 + 32);
    v7 = *(v4 + 112);
    *(swift_task_alloc() + 16) = v5;

    os_unfair_lock_lock(v7 + 6);
    sub_26CD33318(&v13);
    os_unfair_lock_unlock(v7 + 6);
    sub_26CD330D8(v13);

    swift_willThrow();
  }

  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v10 = *(v0 + 96);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26CD2E7BC(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for UTSNetworkRequest(0);
  v2[12] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = sub_26CD39D0C();
  v2[16] = v5;
  v6 = *(v5 - 8);
  v2[17] = v6;
  v7 = *(v6 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2E8D0, v1, 0);
}

uint64_t sub_26CD2E8D0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[10];
  v5 = *(v3 + 16);
  v0[20] = v5;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_2804BBA20 != -1)
  {
    swift_once();
  }

  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = off_2804BC780;
  v0[22] = off_2804BC780;
  v10 = type metadata accessor for LocationService();
  v0[23] = v10;
  v11 = type metadata accessor for UTSNetworkRequestDecorator();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v0[24] = v14;
  (*(v8 + 32))(v14 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v6, v7);
  v15 = (v14 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient);
  *v15 = v9;
  v15[3] = v10;
  v15[4] = &off_287DFFFE0;

  v16 = swift_task_alloc();
  v0[25] = v16;
  *v16 = v0;
  v16[1] = sub_26CD2EA58;

  return sub_26CD04640();
}

uint64_t sub_26CD2EA58()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_26CD2EF68;
  }

  else
  {
    v5 = sub_26CD2EB74;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26CD2EB74()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[11];
  v7 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();
  v3(v4, v1 + v7, v5);

  return MEMORY[0x2822009F8](sub_26CD2EC30, v6, 0);
}

uint64_t sub_26CD2EC30()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  (*(v0 + 160))(&v4[v7[7]], *(v0 + 144), *(v0 + 128));
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_26CD3A59C();
  v10 = [v8 integerForKey_];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 91;
  }

  v12 = &v4[v7[5]];
  sub_26CD3A1FC();
  v4[v7[6]] = 0;
  *&v4[v7[8]] = v11;
  *v4 = 0;
  sub_26CCC2438(v4, v5);
  v13 = type metadata accessor for AMSRequestHandler();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  sub_26CCC2438(v5, v6);
  v17 = sub_26CD32DB4(v6, v16);
  *(v0 + 216) = v17;
  sub_26CCC249C(v5);
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_287DFFFE0;
  *(v0 + 16) = v1;

  v18 = swift_task_alloc();
  *(v0 + 224) = v18;
  *v18 = v0;
  v18[1] = sub_26CD2EE18;
  v19 = *(v0 + 144);
  v20 = *(v0 + 88);

  return sub_26CD2E0E4(v19, v17, &off_287E05C08);
}

uint64_t sub_26CD2EE18(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[28];
  v6 = *v2;
  v4[29] = v1;

  v7 = v4[11];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v8 = sub_26CD2F16C;
  }

  else
  {
    v4[30] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v8 = sub_26CD2F00C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26CD2EF68()
{
  v1 = v0[24];

  v2 = v0[26];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CD2F00C()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[13];

  swift_setDeallocating();
  v10 = *(v6 + 8);
  v10(v2 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v5);
  sub_26CC1B544(v2 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  v11 = *(*v2 + 48);
  v12 = *(*v2 + 52);
  swift_deallocClassInstance();
  v10(v3, v5);
  sub_26CCC249C(v8);

  v13 = v0[1];
  v14 = v0[30];

  return v13(v14);
}

uint64_t sub_26CD2F16C()
{
  v1 = v0[27];
  v2 = v0[24];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];

  (*(v4 + 8))(v3, v5);
  sub_26CCC249C(v6);
  v7 = v0[29];
  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];

  v13 = v0[1];

  return v13();
}

uint64_t UTSNetworkManager.cancel(request:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_26CD2F264, v1, 0);
}

uint64_t sub_26CD2F264()
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1) && (v1 = qword_280BBAD00) != 0)
  {
    v2 = qword_280BBACF8;
    v0[5] = &type metadata for FeatureFlagManager;
    v0[6] = sub_26CC30530();
    *(v0 + 16) = 0;

    v3 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v3 & 1) == 0 && (sub_26CC2016C(v2, v1, *(v0[8] + 144)) & 1) == 0)
    {
      return sub_26CD3AD2C();
    }

    v4 = v0[7];
    v5 = v0[8];

    v6 = *(v5 + 128);
    sub_26CD3AC6C();

    v7 = sub_26CD39C2C();
    MEMORY[0x26D6AD060](v7);

    MEMORY[0x26D6AD060](0xD000000000000016, 0x800000026CD532C0);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_26CC19E10();
    *(v8 + 32) = 0x3A74736575716552;
    *(v8 + 40) = 0xE900000000000020;
    sub_26CD3A3DC();

    v9 = *(v5 + 112);
    *(swift_task_alloc() + 16) = v4;

    os_unfair_lock_lock((v9 + 24));
    sub_26CD32F18((v9 + 16));
    os_unfair_lock_unlock((v9 + 24));
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v10 = v0[8];
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v11 + 56) = v12;
    v13 = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v11 + 64) = v13;
    *(v11 + 32) = &unk_287DFA580;
    sub_26CD3A3DC();

    v14 = *(v10 + 128);
    sub_26CD3A98C();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = v12;
    *(v15 + 64) = v13;
    *(v15 + 32) = &unk_287DFC9D0;
    sub_26CD3A3DC();
  }

  v16 = v0[1];

  return v16();
}

uint64_t UTSNetworkManager.fetchConfiguration(forceConfig:)(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 89) = a1;
  return MEMORY[0x2822009F8](sub_26CD2F6D8, v1, 0);
}

uint64_t sub_26CD2F6D8()
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1) && (v1 = qword_280BBAD00) != 0)
  {
    v2 = qword_280BBACF8;
    *(v0 + 40) = &type metadata for FeatureFlagManager;
    *(v0 + 48) = sub_26CC30530();
    *(v0 + 16) = 0;

    v3 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v3 & 1) != 0 || (sub_26CC2016C(v2, v1, *(*(v0 + 56) + 144)))
    {
      v4 = *(v0 + 56);
      v5 = *(v0 + 89);

      *(v0 + 64) = *(v4 + 120);
      *(v0 + 88) = (v5 & 1) == 0;

      v6 = swift_task_alloc();
      *(v0 + 72) = v6;
      *v6 = v0;
      v6[1] = sub_26CD2FAAC;

      return sub_26CD15604((v0 + 88), 0.0);
    }

    else
    {
      return sub_26CD3AD2C();
    }
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 56);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 56) = v10;
    v11 = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 64) = v11;
    *(v9 + 32) = &unk_287DFA580;
    sub_26CD3A3DC();

    v12 = *(v8 + 128);
    sub_26CD3A98C();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = v10;
    *(v13 + 64) = v11;
    *(v13 + 32) = &unk_287DFCA00;
    sub_26CD3A3DC();

    sub_26CD044E0();
    swift_allocError();
    *v14 = 6;
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_26CD2FAAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = *(v4 + 56);
    v7 = *(v4 + 64);

    return MEMORY[0x2822009F8](sub_26CD2FC0C, v8, 0);
  }

  else
  {
    v9 = *(v4 + 64);

    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t sub_26CD2FC24()
{
  result = sub_26CD3A59C();
  qword_280BB9BC8 = result;
  return result;
}

uint64_t sub_26CD2FC80()
{
  result = sub_26CD3A59C();
  qword_2804BDDA8 = result;
  return result;
}

uint64_t QueryParamKey.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26CD3AD9C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26CD2FD54()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CD2FDA8()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CD2FDEC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26CD3AD9C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26CD2FE60()
{
  type metadata accessor for UTSNetworkManager();
  swift_allocObject();
  result = sub_26CD314B8();
  qword_280BBAA80 = result;
  return result;
}

uint64_t static UTSNetworkManager.shared.getter()
{
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }
}

uint64_t UTSNetworkManager.execute(from:)(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD58, &qword_26CD4A7A8) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for UTSNetworkRequest(0);
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = sub_26CD39D0C();
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v9 = *(v8 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD30088, v1, 0);
}

uint64_t sub_26CD30088()
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1) && (v1 = qword_280BBAD00) != 0)
  {
    v2 = qword_280BBACF8;
    *(v0 + 40) = &type metadata for FeatureFlagManager;
    *(v0 + 48) = sub_26CC30530();
    *(v0 + 16) = 0;

    v3 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v3 & 1) != 0 || (sub_26CC2016C(v2, v1, *(*(v0 + 184) + 144)))
    {
      v4 = *(v0 + 272);
      v5 = *(v0 + 176);

      v6 = v5[3];
      v7 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v7 + 8))(v6, v7);
      if (qword_2804BBA20 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 272);
      v9 = *(v0 + 248);
      v10 = *(v0 + 256);
      v11 = off_2804BC780;
      *(v0 + 288) = off_2804BC780;
      v12 = type metadata accessor for LocationService();
      *(v0 + 296) = v12;
      v13 = type metadata accessor for UTSNetworkRequestDecorator();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();
      *(v0 + 304) = v16;
      (*(v10 + 32))(v16 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v8, v9);
      v17 = v16 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient;
      *v17 = v11;
      *(v17 + 8) = *(v0 + 160);
      *(v17 + 24) = v12;
      *(v17 + 32) = &off_287DFFFE0;

      v18 = swift_task_alloc();
      *(v0 + 312) = v18;
      *v18 = v0;
      v18[1] = sub_26CD30688;

      return sub_26CD04640();
    }

    else
    {
      return sub_26CD3AD2C();
    }
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 256);
    v21 = *(v0 + 264);
    v44 = *(v0 + 248);
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26CD3C1E0;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v24 + 56) = v45;
    v25 = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v24 + 64) = v25;
    *(v24 + 32) = &unk_287DFA580;
    sub_26CD3A3DC();

    v26 = *(v22 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    v28 = v23[3];
    v29 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v28);
    (*(v29 + 8))(v28, v29);
    v30 = sub_26CD39C2C();
    v32 = v31;
    (*(v20 + 8))(v21, v44);
    MEMORY[0x26D6AD060](v30, v32);

    MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD53350);
    *(v27 + 32) = 0x2074736575716552;
    *(v27 + 40) = 0xE800000000000000;
    sub_26CD3A98C();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26CD3C1E0;
    *(v33 + 56) = v45;
    *(v33 + 64) = v25;
    *(v33 + 32) = v27;
    sub_26CD3A3DC();

    sub_26CD044E0();
    swift_allocError();
    *v34 = 6;
    swift_willThrow();
    v36 = *(v0 + 272);
    v35 = *(v0 + 280);
    v37 = *(v0 + 264);
    v39 = *(v0 + 232);
    v38 = *(v0 + 240);
    v41 = *(v0 + 216);
    v40 = *(v0 + 224);
    v42 = *(v0 + 192);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_26CD30688()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = sub_26CD30E54;
  }

  else
  {
    v5 = sub_26CD307A4;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26CD307A4()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[23];
  v6 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[41] = v7;
  v0[42] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1 + v6, v3);
  swift_setDeallocating();
  v8 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  v9 = *(v4 + 8);
  v0[43] = v9;
  v0[44] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1 + v8, v3);
  sub_26CC1B544(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  v10 = *(*v1 + 48);
  v11 = *(*v1 + 52);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_26CD308FC, v5, 0);
}

uint64_t sub_26CD308FC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  sub_26CC19A84(v0[22], (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD60, &qword_26CD4A7B0);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v6 = v0[41];
    v60 = v0[36];
    v7 = v0[35];
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[29];
    v54 = v0[42];
    v55 = v0[28];
    v11 = v0[27];
    v57 = v11;
    v59 = v0[37];
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[22];
    v5(v13, 0, 1, v12);
    sub_26CD32F34(v13, v9);
    v6(v10 + v12[7], v7, v8);
    v15 = v14[3];
    v16 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v15);
    LOBYTE(v15) = (*(v16 + 24))(v15, v16);
    v17 = *(v9 + v12[8]);
    v18 = v14[3];
    v19 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v18);
    v20 = (*(v19 + 32))(v18, v19);
    v21 = v10 + v12[5];
    sub_26CD3A1FC();
    *(v10 + v12[6]) = v15 & 1;
    *(v10 + v12[8]) = v17;
    *v10 = v20;
    sub_26CCC2438(v10, v55);
    v22 = type metadata accessor for AMSRequestHandler();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    sub_26CCC2438(v55, v57);
    v26 = sub_26CD32DB4(v57, v25);
    v0[45] = v26;
    sub_26CCC249C(v55);
    v0[15] = v59;
    v0[16] = &off_287DFFFE0;
    v0[12] = v60;

    v27 = swift_task_alloc();
    v0[46] = v27;
    *v27 = v0;
    v27[1] = sub_26CD30FA0;
    v28 = v0[35];
    v29 = v0[23];

    return sub_26CD2E0E4(v28, v26, &off_287E05C08);
  }

  else
  {
    v56 = v0[43];
    v58 = v0[44];
    v61 = v0[35];
    v31 = v0[33];
    v32 = v0[31];
    v33 = v0[24];
    v35 = v0[22];
    v34 = v0[23];
    v5(v33, 1, 1, v0[25]);
    sub_26CC1B544(v33, &qword_2804BDD58, &qword_26CD4A7A8);
    v36 = *(v34 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0x2074736575716552, 0xE800000000000000);
    v38 = v35[3];
    v39 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v38);
    (*(v39 + 8))(v38, v39);
    v40 = sub_26CD39C2C();
    v42 = v41;
    v56(v31, v32);
    MEMORY[0x26D6AD060](v40, v42);

    MEMORY[0x26D6AD060](0xD000000000000031, 0x800000026CD533B0);
    *(v37 + 32) = 0;
    *(v37 + 40) = 0xE000000000000000;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_26CD3C1E0;
    *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v43 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v43 + 32) = v37;
    sub_26CD3A3DC();

    sub_26CD044E0();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();
    v56(v61, v32);
    v46 = v0[34];
    v45 = v0[35];
    v47 = v0[33];
    v49 = v0[29];
    v48 = v0[30];
    v51 = v0[27];
    v50 = v0[28];
    v52 = v0[24];

    v53 = v0[1];

    return v53();
  }
}

uint64_t sub_26CD30E54()
{
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[32];
  swift_setDeallocating();
  (*(v3 + 8))(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v2);
  sub_26CC1B544(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);
  swift_deallocClassInstance();
  v6 = v0[40];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[33];
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[24];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26CD30FA0(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[46];
  v6 = *v2;
  v4[47] = v1;

  v7 = v4[23];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 12);
    v8 = sub_26CD311F4;
  }

  else
  {
    v4[48] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 12);
    v8 = sub_26CD310F0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26CD310F0()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v14 = v0[27];
  v15 = v0[24];

  sub_26CCC249C(v8);
  v3(v5, v7);
  sub_26CCC249C(v9);

  v11 = v0[1];
  v12 = v0[48];

  return v11(v12);
}

uint64_t sub_26CD311F4()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];

  sub_26CCC249C(v6);
  v3(v4, v5);
  sub_26CCC249C(v7);
  v8 = v0[47];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[24];

  v17 = v0[1];

  return v17();
}

unint64_t sub_26CD312EC(uint64_t *a1)
{
  v2 = sub_26CD39CFC();
  v4 = sub_26CD313F4(v14, v2);
  if (*v3)
  {
    *(v3 + 16) = 1;
  }

  (v4)(v14, 0);
  result = sub_26CD39CFC();
  v6 = *a1;
  if (*(*a1 + 16))
  {
    result = sub_26CCCA6D8(result);
    if (v7)
    {
      v8 = *(v6 + 56) + 32 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      swift_unknownObjectRetain_n();

      sub_26CD330D8(v9);
      ObjectType = swift_getObjectType();
      (*(v10 + 32))(ObjectType, v10);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*sub_26CD313F4(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_26CD32A34(v4, a2);
  return sub_26CD3146C;
}

void sub_26CD3146C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26CD314B8()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = sub_26CC31FC0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDD0, &unk_26CD4ACC0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 112) = v3;
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  *(v1 + 120) = qword_280BBCC18;
  sub_26CC18080(0, &qword_280BBB710, 0x277D86200);

  *(v1 + 128) = sub_26CD3AACC();
  *(v1 + 136) = 512;
  v4 = sub_26CC78CF4(&unk_287DFA5B0);
  swift_arrayDestroy();
  *(v1 + 144) = v4;
  return v1;
}

uint64_t UTSNetworkManager.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t UTSNetworkManager.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26CD31694()
{
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CD316F0(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_26CD2B3B8;

  return UTSNetworkManager.execute(request:)(a2);
}

unint64_t sub_26CD3178C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_26CD39CFC();
  swift_unknownObjectRetain();

  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  result = sub_26CD396E4(a3, a4, 0, a5, v9, isUniquelyReferenced_nonNull_native);
  *a1 = v13;
  return result;
}

uint64_t sub_26CD3182C(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return MEMORY[0x2822009F8](sub_26CD3184C, v1, 0);
}

uint64_t sub_26CD3184C()
{
  v1 = *(v0 + 208);
  if (!v1)
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_26CC1B544(v0 + 96, &qword_2804BBDA8, &qword_26CD3D5F0);
    v6 = 0;
    v5 = 0;
    goto LABEL_18;
  }

  strcpy((v0 + 176), "x-apple-utsk");
  *(v0 + 189) = 0;
  *(v0 + 190) = -5120;
  sub_26CD3ABFC();
  if (*(v1 + 16) && (v2 = sub_26CCCA694(v0 + 56), (v3 & 1) != 0))
  {
    sub_26CC168C0(*(v1 + 56) + 32 * v2, v0 + 96);
    sub_26CC579C4(v0 + 56);
    if (*(v0 + 120))
    {
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = *(v0 + 192);
      }

      else
      {
        v5 = 0;
      }

      if (v4)
      {
        v6 = *(v0 + 200);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_26CC579C4(v0 + 56);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_26CC1B544(v0 + 96, &qword_2804BBDA8, &qword_26CD3D5F0);
  v6 = 0;
  v5 = 0;
LABEL_13:
  *(v0 + 160) = 0xD000000000000014;
  *(v0 + 168) = 0x800000026CD534C0;
  sub_26CD3ABFC();
  if (*(v1 + 16))
  {
    v7 = sub_26CCCA694(v0 + 16);
    if (v8)
    {
      sub_26CC168C0(*(v1 + 56) + 32 * v7, v0 + 128);
      sub_26CC579C4(v0 + 16);
      v9 = *(v0 + 152) != 0;
      goto LABEL_19;
    }
  }

  sub_26CC579C4(v0 + 16);
LABEL_18:
  v9 = 0;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
LABEL_19:
  *(v0 + 281) = v9;
  *(v0 + 224) = v6;
  *(v0 + 232) = v5;
  sub_26CC1B544(v0 + 128, &qword_2804BBDA8, &qword_26CD3D5F0);
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  v10 = qword_280BBCC18;
  *(v0 + 240) = qword_280BBCC18;

  return MEMORY[0x2822009F8](sub_26CD31AA4, v10, 0);
}

uint64_t sub_26CD31AA4()
{
  v1 = v0[27];
  v2 = *(v0[30] + 176);

  v4 = sub_26CD1B244(v3);
  v6 = v5;

  v0[31] = v4;
  v0[32] = v6;

  return MEMORY[0x2822009F8](sub_26CD31B38, v1, 0);
}

uint64_t sub_26CD31B38()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 256);
  if (!v1)
  {
LABEL_12:

    if (*(v0 + 281) == 1)
    {
      v9 = 0;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (!v2)
  {
    v10 = *(v0 + 224);

    v9 = 1;
    goto LABEL_14;
  }

  if (v1 == v2 && *(v0 + 232) == *(v0 + 248))
  {

    goto LABEL_12;
  }

  v4 = *(v0 + 281);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 224);
  v8 = sub_26CD3AFDC();

  v9 = (v8 & 1) == 0;
  if (v8 & 1) == 0 || (v4)
  {
LABEL_14:
    *(v0 + 282) = v9;
    *(v0 + 280) = 0;
    v11 = swift_task_alloc();
    *(v0 + 264) = v11;
    *v11 = v0;
    v11[1] = sub_26CD31CB8;
    v12 = *(v0 + 240);

    return sub_26CD15604((v0 + 280), 0.0);
  }

LABEL_17:
  v14 = *(v0 + 8);

  return v14(2);
}

uint64_t sub_26CD31CB8(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v7 = *(v4 + 216);

    return MEMORY[0x2822009F8](sub_26CD31E0C, v7, 0);
  }

  else
  {

    v8 = *(v6 + 8);
    v9 = *(v4 + 282);

    return v8(v9);
  }
}

uint64_t sub_26CD31E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_26CD31E4C, a4, 0);
}

uint64_t sub_26CD31E4C()
{
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = 1;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26CD31F24;

  return sub_26CD15604((v0 + 88), 0.0);
}

uint64_t sub_26CD31F24(void *a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  v5[8] = v1;

  if (v1)
  {
    v6 = v5[3];

    return MEMORY[0x2822009F8](sub_26CD3221C, v6, 0);
  }

  else
  {

    v7 = swift_task_alloc();
    v5[9] = v7;
    *v7 = v5;
    v7[1] = sub_26CD320AC;
    v8 = v5[5];
    v9 = v5[6];
    v10 = v5[3];
    v11 = v5[4];

    return sub_26CD32234(v11, v8, v9);
  }
}

uint64_t sub_26CD320AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 80) = a1;

    return MEMORY[0x2822009F8](sub_26CD321F8, v9, 0);
  }
}

uint64_t sub_26CD32234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26CD32258, v3, 0);
}

uint64_t sub_26CD32258()
{
  v14 = v0[4];
  v2 = v0[2];
  v1 = v0[3];
  v0[6] = *(v0[5] + 128);
  sub_26CD3AC6C();

  v3 = sub_26CD39C2C();
  MEMORY[0x26D6AD060](v3);

  MEMORY[0x26D6AD060](46, 0xE100000000000000);
  sub_26CD3A99C();
  v0[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  v5 = sub_26CC19E10();
  v0[8] = v5;
  *(v4 + 64) = v5;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x800000026CD53330;
  sub_26CD3A3DC();

  ObjectType = swift_getObjectType();
  v7 = *(v14 + 40);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_26CD32488;
  v11 = v0[3];
  v10 = v0[4];

  return v13(ObjectType, v10);
}

uint64_t sub_26CD32488(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = v3[5];

    return MEMORY[0x2822009F8](sub_26CD325D0, v8, 0);
  }
}

void sub_26CD325D0()
{
  v11 = v0;
  v1 = v0[11];
  v2 = v0[2];
  v3 = *(v0[5] + 112);
  *(swift_task_alloc() + 16) = v2;

  os_unfair_lock_lock(v3 + 6);
  sub_26CD332B4(&v10);
  os_unfair_lock_unlock(v3 + 6);
  if (!v1)
  {
    v4 = v0[10];
    sub_26CD330D8(v10);

    v5 = [v4 responseHeaders];
    if (v5)
    {
      v6 = v5;
      v7 = sub_26CD3A4FC();
    }

    else
    {
      v7 = 0;
    }

    v0[12] = v7;
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_26CD32748;
    v9 = v0[5];

    sub_26CD3182C(v7);
  }
}

uint64_t sub_26CD32748()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_26CD329C4;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 40);

    v5 = sub_26CD32870;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26CD32870()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  sub_26CD3AC6C();

  v5 = sub_26CD39C2C();
  MEMORY[0x26D6AD060](v5);

  MEMORY[0x26D6AD060](46, 0xE100000000000000);
  sub_26CD3A99C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = v2;
  *(v6 + 32) = 0xD000000000000020;
  *(v6 + 40) = 0x800000026CD53490;
  sub_26CD3A3DC();

  v7 = v0[1];
  v8 = v0[10];

  return v7(v8);
}

uint64_t sub_26CD329C4()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 112);
  v3 = *(v0 + 8);

  return v3();
}

void (*sub_26CD32A34(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_26CD32D80(v6);
  v6[9] = sub_26CD32B38(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_26CD32AD8;
}

void sub_26CD32AD8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_26CD32B38(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 32) = a2;
  *(v8 + 40) = v3;
  v10 = *v3;
  v11 = sub_26CCCA6D8(a2);
  *(v9 + 56) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_26CD37BF8();
      v11 = v19;
      goto LABEL_11;
    }

    sub_26CD36168(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_26CCCA6D8(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_26CD3B02C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 48) = v11;
  if (v17)
  {
    v22 = *(*v4 + 56) + 32 * v11;
    v23 = *v22;
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v23 = 0uLL;
  }

  *v9 = v23;
  *(v9 + 16) = v24;
  *(v9 + 24) = v25;
  return sub_26CD32C98;
}

void sub_26CD32C98(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = *(*a1 + 56);
  if (v2)
  {
    v7 = v1[6];
    v8 = *v1[5];
    if (v6)
    {
      v9 = v8[7] + 32 * v7;
      *v9 = v2;
      *(v9 + 8) = v3;
      *(v9 + 16) = v4 & 1;
      *(v9 + 24) = v5;
    }

    else
    {
      sub_26CD39A80(v7, v1[4], v2, v3, v4 & 1, v5, v8);
    }
  }

  else if ((*a1)[7])
  {
    sub_26CD38900(v1[6], *v1[5]);
  }

  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  sub_26CD33118(v2);
  sub_26CD330D8(v10);

  free(v1);
}

uint64_t (*sub_26CD32D80(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26CD32DA8;
}

uint64_t sub_26CD32DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTSNetworkRequest(0);
  v14[3] = v4;
  v14[4] = &protocol witness table for UTSNetworkRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_26CD32F34(a1, boxed_opaque_existential_1);
  *(a2 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_sessionTask) = 0;
  sub_26CC19A84(v14, a2 + 16);
  v6 = *(v4 + 28);
  v7 = OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request;
  v8 = sub_26CD39D0C();
  (*(*(v8 - 8) + 16))(a2 + v7, boxed_opaque_existential_1 + v6, v8);
  v9 = sub_26CD3A59C();
  v10 = sub_26CD3A59C();
  v11 = [objc_opt_self() bagForProfile:v9 profileVersion:v10];

  v12 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  *(a2 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_requestEncoder) = v12;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return a2;
}

uint64_t sub_26CD32F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTSNetworkRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CD32F9C()
{
  result = qword_2804BDDB0;
  if (!qword_2804BDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDDB0);
  }

  return result;
}

unint64_t sub_26CD33038()
{
  result = qword_2804BDDC8;
  if (!qword_2804BDDC8)
  {
    type metadata accessor for UTSNetworkManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDDC8);
  }

  return result;
}

uint64_t sub_26CD330D8(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26CD33118(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_26CD33158(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26CD39D0C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26CC246B8;

  return sub_26CD31E24(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_26CD332CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_26CD39CFC();
  result = sub_26CD2BADC(v4);
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

uint64_t URL.queryParameters.getter()
{
  v0 = sub_26CD39E2C();
  v57 = *(v0 - 8);
  v1 = *(v57 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_26CD39EAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CD39E6C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26CD38BF8(v7);
    return 0;
  }

  (*(v9 + 32))(v12, v7, v8);
  v13 = sub_26CD39E4C();
  if (!v13)
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  v47 = v12;
  v48 = v9;
  v49 = v8;
  v14 = v13;
  v56 = *(v13 + 16);
  if (!v56)
  {
    v16 = MEMORY[0x277D84F98];
LABEL_29:

    (*(v48 + 8))(v47, v49);
    return v16;
  }

  v15 = 0;
  v55 = v13 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  v54 = v57 + 16;
  v52 = (v57 + 8);
  v16 = MEMORY[0x277D84F98];
  v53 = v3;
  v50 = v13;
  v51 = v0;
  while (v15 < *(v14 + 16))
  {
    (*(v57 + 16))(v3, v55 + *(v57 + 72) * v15, v0);
    v19 = sub_26CD39E0C();
    v21 = v20;
    v22 = sub_26CD39E1C();
    if (!v23)
    {
      v35 = sub_26CC181C4(v19, v21);
      v37 = v36;

      if (v37)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v16;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_26CD365C4();
          v16 = v58;
        }

        v17 = *(v16[6] + 16 * v35 + 8);

        v18 = *(v16[7] + 16 * v35 + 8);

        sub_26CD37D7C(v35, v16);
      }

      v3 = v53;
      (*v52)(v53, v0);
      goto LABEL_8;
    }

    v24 = v23;
    v25 = v22;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v16;
    v28 = sub_26CC181C4(v19, v21);
    v29 = v16[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_32;
    }

    v32 = v27;
    if (v16[3] >= v31)
    {
      if (v26)
      {
        v3 = v53;
        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_26CD365C4();
        v3 = v53;
        if ((v32 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_26CD33B94(v31, v26);
      v33 = sub_26CC181C4(v19, v21);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_34;
      }

      v28 = v33;
      v3 = v53;
      if ((v32 & 1) == 0)
      {
LABEL_23:
        v16 = v58;
        v58[(v28 >> 6) + 8] |= 1 << v28;
        v41 = (v16[6] + 16 * v28);
        *v41 = v19;
        v41[1] = v21;
        v42 = (v16[7] + 16 * v28);
        *v42 = v25;
        v42[1] = v24;
        v0 = v51;
        (*v52)(v3, v51);
        v43 = v16[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_33;
        }

        v16[2] = v45;
        goto LABEL_25;
      }
    }

    v16 = v58;
    v39 = (v58[7] + 16 * v28);
    v40 = v39[1];
    *v39 = v25;
    v39[1] = v24;

    v0 = v51;
    (*v52)(v3, v51);
LABEL_25:
    v14 = v50;
LABEL_8:
    if (v56 == ++v15)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_26CD3B02C();
  __break(1u);
  return result;
}

uint64_t sub_26CD33828(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BDE00, &qword_26CD4AD38);
  v40 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 56 * v22;
      if (v40)
      {
        v41 = *(v26 + 8);
        v42 = *(v26 + 24);
        v43 = *v26;
        v47 = *(v26 + 32);
        v44 = *(v26 + 40);
        v45 = *(v26 + 16);
        v46 = *(v26 + 48);
        v48 = *(v26 + 49);
      }

      else
      {
        v27 = *v26;
        v28 = *(v26 + 16);
        v29 = *(v26 + 32);
        v50 = *(v26 + 48);
        v49[1] = v28;
        v49[2] = v29;
        v49[0] = v27;
        v48 = HIBYTE(v50);
        v46 = v50;
        v44 = *(&v29 + 1);
        v47 = v29;
        v42 = *(&v28 + 1);
        v45 = v28;
        v41 = *(&v27 + 1);
        v43 = v27;

        sub_26CD23E38(v49, v51);
      }

      v30 = *(v8 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 56 * v16;
      *v18 = v43;
      *(v18 + 8) = v41;
      *(v18 + 16) = v45;
      *(v18 + 24) = v42;
      *(v18 + 32) = v47;
      *(v18 + 40) = v44;
      *(v18 + 48) = v46;
      *(v18 + 49) = v48;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD33B94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD0, &qword_26CD3CF90);
  v40 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD33E54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD48, &qword_26CD3D010);
  v36 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD3410C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDF8, &qword_26CD4AD30);
  v38 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD343B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDF0, &qword_26CD4AD28);
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_26CD3B0EC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD34624(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
  v36 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_26CC331CC(v25, v37);
      }

      else
      {
        sub_26CC168C0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26CC331CC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD348DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDD8, &qword_26CD4AD10);
  v39 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD34B80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCE0, &qword_26CD3CFA0);
  v38 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD34E20(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDE8, &qword_26CD4AD20);
  v44 = a2;
  result = sub_26CD3AD5C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_26CD2C6C8(v31, v45);
      }

      else
      {
        sub_26CD39B98(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_26CD2C6C8(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_26CD3515C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDE0, &qword_26CD4AD18);
  v36 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_26CC2524C(v25, v37);
      }

      else
      {
        sub_26CC19A84(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26CC2524C(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD35420(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_26CD3A20C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD28, &unk_26CD3CFF0);
  v52 = a2;
  result = sub_26CD3AD5C();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_26CD39B40();
      result = sub_26CD3A52C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_26CD358A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD8, &qword_26CD3CF98);
  v38 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD35B48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8F8, &unk_26CD477D8);
  v43 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 136 * v22;
      if (v43)
      {
        v58 = *(v26 + 80);
        v59 = *(v26 + 96);
        v60 = *(v26 + 112);
        v61 = *(v26 + 128);
        v54 = *(v26 + 16);
        v55 = *(v26 + 32);
        v56 = *(v26 + 48);
        v57 = *(v26 + 64);
        v53 = *v26;
      }

      else
      {
        v44 = *v26;
        v27 = *(v26 + 64);
        v29 = *(v26 + 16);
        v28 = *(v26 + 32);
        v47 = *(v26 + 48);
        v48 = v27;
        v45 = v29;
        v46 = v28;
        v31 = *(v26 + 96);
        v30 = *(v26 + 112);
        v32 = *(v26 + 80);
        v52 = *(v26 + 128);
        v50 = v31;
        v51 = v30;
        v49 = v32;

        sub_26CD39AD0(&v44, &v53);
        v59 = v50;
        v60 = v51;
        v61 = v52;
        v55 = v46;
        v56 = v47;
        v57 = v48;
        v58 = v49;
        v53 = v44;
        v54 = v45;
      }

      v33 = *(v8 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 136 * v16;
      *(v18 + 80) = v58;
      *(v18 + 96) = v59;
      *(v18 + 112) = v60;
      *(v18 + 128) = v61;
      *(v18 + 16) = v54;
      *(v18 + 32) = v55;
      *(v18 + 48) = v56;
      *(v18 + 64) = v57;
      *v18 = v53;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26CD35EF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD38, &qword_26CD3D000);
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v22 = *(v8 + 40);
      result = sub_26CD3B0EC();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_26CD36168(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD18, &qword_26CD3CFE0);
  v36 = a2;
  result = sub_26CD3AD5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 32 * v21;
      v37 = *v23;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      if ((v36 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v26 = *(v8 + 40);
      result = sub_26CD3B0EC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v37;
      *(v17 + 16) = v24;
      *(v17 + 24) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_26CD36410()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BDE00, &qword_26CD4AD38);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 56;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        v35 = *(v19 + v17 + 48);
        v33 = v24;
        v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        v28 = v32;
        v29 = v33;
        v30 = v34;
        *(v27 + 48) = v35;
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        *v27 = v28;

        result = sub_26CD23E38(&v32, v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26CD365C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD0, &qword_26CD3CF90);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26CD3673C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD48, &qword_26CD3D010);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26CD368BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDF8, &qword_26CD4AD30);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26CD36A2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDF0, &qword_26CD4AD28);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26CD36B88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26CC168C0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26CC331CC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_26CD36D2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDD8, &qword_26CD4AD10);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26CD36E98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCE0, &qword_26CD3CFA0);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26CD37000()
{
  v1 = v0;
  v2 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDE8, &qword_26CD4AD20);
  v5 = *v0;
  v6 = sub_26CD3AD4C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_26CD39B98(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_26CD2C6C8(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_26CD37230()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDE0, &qword_26CD4AD18);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_26CC19A84(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26CC2524C(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_26CD373D8()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_26CD3A20C();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD28, &unk_26CD3CFF0);
  v6 = *v0;
  v7 = sub_26CD3AD4C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_26CD37734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD8, &qword_26CD3CF98);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26CD378A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8F8, &unk_26CD477D8);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_26CD39AD0(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 136;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *(v21 + 64);
      v40 = *(v21 + 48);
      v41 = v24;
      v26 = *(v21 + 96);
      v25 = *(v21 + 112);
      v27 = *(v21 + 80);
      v45 = *(v21 + 128);
      v43 = v26;
      v44 = v25;
      v42 = v27;
      v37 = *v21;
      v38 = v23;
      v39 = v22;
      v28 = (*(v4 + 48) + v17);
      *v28 = v20;
      v28[1] = v19;
      v29 = *(v4 + 56) + v16;
      *v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = v41;
      *(v29 + 48) = v40;
      *(v29 + 64) = v32;
      *(v29 + 16) = v30;
      *(v29 + 32) = v31;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      *(v29 + 128) = v45;
      *(v29 + 96) = v34;
      *(v29 + 112) = v35;
      *(v29 + 80) = v33;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26CD37A94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD38, &qword_26CD3D000);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26CD37BF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD18, &qword_26CD3CFE0);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v21;
        *(v22 + 16) = v19;
        *(v22 + 24) = v20;
        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26CD37D7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v13 = sub_26CD3B13C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26CD37F2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v13 = sub_26CD3B13C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26CD380DC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v13 = sub_26CD3B13C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for UpNextDelta.ContinuationContentMetadata(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26CD382C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v15 = sub_26CD3B13C();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26CD38484(int64_t a1, uint64_t a2)
{
  v4 = sub_26CD3A20C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_26CD3AB7C();
    v15 = v13;
    v43 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v44 = *(v16 + 56);
    v41 = (v16 - 8);
    v42 = v17;
    do
    {
      v18 = v10;
      v19 = v44 * v12;
      v20 = v15;
      v21 = v16;
      v42(v9, *(a2 + 48) + v44 * v12, v4);
      v22 = *(a2 + 40);
      sub_26CD39B40();
      v23 = sub_26CD3A52C();
      result = (*v41)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v44 * a1;
          v29 = v27 + v19 + v44;
          v30 = v44 * a1 < v19 || v28 >= v29;
          v16 = v21;
          if (v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 = *(a2 + 56);
          v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400) - 8) + 72);
          v33 = v32 * a1;
          result = v31 + v32 * a1;
          v34 = v32 * v12;
          v35 = v31 + v32 * v12 + v32;
          if (v33 < v34 || result >= v35)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v18;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v37 = v33 == v34;
            v10 = v18;
            v15 = v20;
            if (!v37)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v38 = *(a2 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v40;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26CD38790(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_26CD3B0EC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26CD38900(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      v13 = *v12;
      result = sub_26CD3B0EC();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v11 + 8 * v3);
          if (v3 != v6 || v17 >= v12 + 1)
          {
            *v17 = *v12;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 32 * v3);
          v20 = (v18 + 32 * v6);
          if (v3 != v6 || v19 >= v20 + 2)
          {
            v9 = v20[1];
            *v19 = *v20;
            v19[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26CD38A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26CC181C4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_26CD33B94(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_26CC181C4(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_26CD365C4();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_26CD38BF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CD38C60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26CC181C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26CD3410C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26CC181C4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26CD368BC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_26CD38DDC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26CC181C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26CD36B88();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26CD34624(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26CC181C4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26CD3B02C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_26CC331CC(a1, v23);
  }

  else
  {
    sub_26CD3987C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_26CD38F2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26CC181C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26CD348DC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26CC181C4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_26CD3B02C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26CD36D2C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_26CD390A4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_26CC181C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26CD34B80(v16, a4 & 1);
      v20 = *v5;
      result = sub_26CC181C4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_26CD36E98();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_26CD39210(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26CC181C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_26CD37000();
      goto LABEL_7;
    }

    sub_26CD34E20(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_26CC181C4(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26CD3B02C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for UpNextDelta.ContinuationContentMetadata(0) - 8) + 72) * v12;

    return sub_26CC86C7C(a1, v20);
  }

LABEL_13:
  sub_26CD398E8(v12, a2, a3, a1, v18);
}

uint64_t sub_26CD39374(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26CD3A20C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26CCCA7E8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_26CD373D8();
      goto LABEL_7;
    }

    sub_26CD35420(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_26CCCA7E8(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_26CD39980(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_26CD3B02C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

unint64_t sub_26CD39584(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_26CCCA6D8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26CD35EF4(v16, a4 & 1);
      v20 = *v5;
      result = sub_26CCCA6D8(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_26CD37A94();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = *v23;
  *v23 = a1;
  v23[1] = a2;

  return swift_unknownObjectRelease();
}

unint64_t sub_26CD396E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_26CCCA6D8(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_26CD36168(v20, a6 & 1);
      v24 = *v7;
      result = sub_26CCCA6D8(a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_26CD37BF8();
      result = v23;
    }
  }

  v26 = *v7;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + 8 * result) = a5;
    v30 = v26[7] + 32 * result;
    *v30 = a1;
    *(v30 + 8) = a2;
    *(v30 + 16) = a3 & 1;
    *(v30 + 24) = a4;
    v31 = v26[2];
    v19 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v19)
    {
      v26[2] = v32;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7] + 32 * result;
  v28 = *v27;
  v29 = *(v27 + 24);
  *v27 = a1;
  *(v27 + 8) = a2;
  *(v27 + 16) = a3 & 1;
  *(v27 + 24) = a4;

  return swift_unknownObjectRelease();
}

_OWORD *sub_26CD3987C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26CC331CC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26CD398E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  result = sub_26CD2C6C8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_26CD39980(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26CD3A20C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_26CD39A80(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t sub_26CD39AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD918, &unk_26CD479A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CD39B40()
{
  result = qword_280BBB1C0;
  if (!qword_280BBB1C0)
  {
    sub_26CD3A20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB1C0);
  }

  return result;
}

uint64_t sub_26CD39B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}