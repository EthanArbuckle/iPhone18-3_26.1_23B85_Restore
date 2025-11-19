uint64_t sub_1BD93AE08(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD93AE8C()
{
  result = qword_1EBD59508;
  if (!qword_1EBD59508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A0);
    sub_1BD93AF44();
    sub_1BD0DE4F4(&qword_1EBD3E008, &qword_1EBD3E010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59508);
  }

  return result;
}

unint64_t sub_1BD93AF44()
{
  result = qword_1EBD59510;
  if (!qword_1EBD59510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59518);
    sub_1BD93AA74();
    sub_1BD0DE4F4(&qword_1EBD59520, &qword_1EBD59528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59510);
  }

  return result;
}

unint64_t sub_1BD93AFFC()
{
  result = qword_1EBD59530;
  if (!qword_1EBD59530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A8);
    sub_1BD93B0B4();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59530);
  }

  return result;
}

unint64_t sub_1BD93B0B4()
{
  result = qword_1EBD59538;
  if (!qword_1EBD59538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59540);
    sub_1BD93AA74();
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59538);
  }

  return result;
}

unint64_t sub_1BD93B16C()
{
  result = qword_1EBD59548;
  if (!qword_1EBD59548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59550);
    sub_1BD0DE4F4(&qword_1EBD59558, &qword_1EBD59560);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59548);
  }

  return result;
}

unint64_t sub_1BD93B250()
{
  result = qword_1EBD59578;
  if (!qword_1EBD59578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59478);
    sub_1BE04ED74();
    sub_1BD0DE4F4(&qword_1EBD59568, &qword_1EBD59478);
    sub_1BD93B55C(&qword_1EBD59570, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59578);
  }

  return result;
}

uint64_t sub_1BD93B3C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD93B430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD93B4A0()
{
  result = qword_1EBD59598;
  if (!qword_1EBD59598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD595A0);
    sub_1BD93B250();
    sub_1BD93B55C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59598);
  }

  return result;
}

uint64_t sub_1BD93B55C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AutoFillHeroAnimationView.init()(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___PKAutoFillHeroAnimationView_layerColorConfigurationSets;
  *(v2 + v3) = sub_1BD93C878(a1, a2);
  v4 = sub_1BDA81390(0xD000000000000015, 0x80000001BE140B90, 2);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 secondarySystemBackgroundColor];
  [v6 setBackgroundColor_];
  v101 = v6;

  v104 = sub_1BD93C024();
  v8 = [objc_opt_self() monospacedDigitSystemFontOfSize:40.0 weight:*MEMORY[0x1E69DB970]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40058);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001BE140BB0;
  *(inited + 48) = v8;
  v100 = v8;
  v10 = sub_1BD1AC2D0(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD40060);
  v11 = 0;
  while (1)
  {
    v102 = v11;
    v12 = &unk_1F3B8F8F0 + 16 * v11;
    v14 = *(v12 + 4);
    v13 = *(v12 + 5);
    sub_1BE048C84();
    sub_1BE053834();

    *&v109 = v14;
    *(&v109 + 1) = v13;
    MEMORY[0x1BFB3F610](0xD000000000000015, 0x80000001BE140BD0);
    v15 = sub_1BD93C2EC(v14, v13, 1);

    v105 = *(v15 + 2);
    if (v105)
    {
      break;
    }

LABEL_2:
    v11 = v102 + 1;

    if (v102 == 2)
    {
      sub_1BDA820BC(v10);

      v37 = sub_1BD1AACF8(MEMORY[0x1E69E7CC0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BE0B69E0;
      v39 = MEMORY[0x1E69E65A8];
      *(v38 + 56) = MEMORY[0x1E69E6530];
      *(v38 + 64) = v39;
      *(v38 + 32) = sub_1BD9489DC(0x2710uLL);
      v40 = sub_1BE052454();
      v42 = v41;
      *(&v110 + 1) = MEMORY[0x1E69E6158];
      *&v109 = v40;
      *(&v109 + 1) = v41;
      sub_1BD1B6140(&v109, &v107);
      sub_1BE048C84();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v106[0] = v37;
      sub_1BD1DAD20(&v107, 0xD000000000000014, 0x80000001BE140BB0, isUniquelyReferenced_nonNull_native);
      v44 = v37;
      v45 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v45 = v40 & 0xFFFFFFFFFFFFLL;
      }

      *&v109 = v40;
      *(&v109 + 1) = v42;
      *&v110 = 0;
      *(&v110 + 1) = v45;
      v46 = sub_1BE052594();
      if (v47)
      {
        v48 = v46;
        v49 = v47;
        v50 = 0;
        while (1)
        {
          if (__OFADD__(v50, 1))
          {
            goto LABEL_65;
          }

          *&v107 = 0;
          *(&v107 + 1) = 0xE000000000000000;
          sub_1BE053834();
          MEMORY[0x1BFB3F610](0xD000000000000030, 0x80000001BE140BF0);
          *&v106[0] = v50 + 1;
          v54 = sub_1BE053B24();
          MEMORY[0x1BFB3F610](v54);

          MEMORY[0x1BFB3F610](0x6C616E6946, 0xE500000000000000);
          v55 = v107;
          v108 = MEMORY[0x1E69E6158];
          *&v107 = v48;
          *(&v107 + 1) = v49;
          sub_1BD1B6140(&v107, v106);
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = sub_1BD148F70(v55, *(&v55 + 1));
          v59 = v44[2];
          v60 = (v58 & 1) == 0;
          v29 = __OFADD__(v59, v60);
          v61 = v59 + v60;
          if (v29)
          {
            goto LABEL_66;
          }

          v62 = v58;
          if (v44[3] < v61)
          {
            break;
          }

          if (v56)
          {
            goto LABEL_30;
          }

          v66 = v57;
          sub_1BD5060D0();
          v57 = v66;
          if (v62)
          {
LABEL_22:
            v51 = v57;

            v52 = (v44[7] + 32 * v51);
            __swift_destroy_boxed_opaque_existential_0(v52);
            sub_1BD1B6140(v106, v52);
            goto LABEL_23;
          }

LABEL_31:
          v44[(v57 >> 6) + 8] |= 1 << v57;
          *(v44[6] + 16 * v57) = v55;
          sub_1BD1B6140(v106, (v44[7] + 32 * v57));
          v64 = v44[2];
          v29 = __OFADD__(v64, 1);
          v65 = v64 + 1;
          if (v29)
          {
            goto LABEL_67;
          }

          v44[2] = v65;
LABEL_23:
          v48 = sub_1BE052594();
          v49 = v53;
          ++v50;
          if (!v53)
          {
            goto LABEL_35;
          }
        }

        sub_1BD5000BC(v61, v56);
        v57 = sub_1BD148F70(v55, *(&v55 + 1));
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_68;
        }

LABEL_30:
        if (v62)
        {
          goto LABEL_22;
        }

        goto LABEL_31;
      }

LABEL_35:

      v67 = 0;
      while (1)
      {
        v103 = v67;
        v68 = &unk_1F3B8F8F0 + 16 * v67;
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        *&v109 = 0;
        *(&v109 + 1) = 0xE000000000000000;
        sub_1BE048C84();
        sub_1BE053834();

        *&v109 = v70;
        *(&v109 + 1) = v69;
        MEMORY[0x1BFB3F610](0xD000000000000015, 0x80000001BE140BD0);
        v71 = sub_1BD93C2EC(v109, *(&v109 + 1), 1);

        v72 = *(v71 + 2);
        if (v72)
        {
          break;
        }

LABEL_36:

        v67 = v103 + 1;
        if (v103 == 2)
        {
          swift_arrayDestroy();
          sub_1BDA82510(v44);
          v96 = *&v101[OBJC_IVAR___PKAutoFillHeroAnimationView_layerColorConfigurationSets];
          *&v101[OBJC_IVAR___PKStyledMicaView_layerColorConfigurationSets] = v96;
          swift_bridgeObjectRetain_n();

          v97 = [v101 traitCollection];
          v98 = [v97 userInterfaceStyle];

          sub_1BDA81874(v96, v98);

          return v101;
        }
      }

      v73 = 0;
      while (2)
      {
        if (v73 >= *(v71 + 2))
        {
          goto LABEL_61;
        }

        v75 = &v71[16 * v73 + 32];
        v76 = *v75;
        v77 = v75[1];
        v78 = v44[2];
        sub_1BE048C84();
        if (v78)
        {
          v79 = sub_1BD148F70(v76, v77);
          if (v80)
          {
            sub_1BD038CD0(v44[7] + 32 * v79, &v109);

            sub_1BD0DE53C(&v109, &qword_1EBD3EC90);
LABEL_40:
            if (++v73 == v72)
            {
              goto LABEL_36;
            }

            continue;
          }
        }

        break;
      }

      v109 = 0u;
      v110 = 0u;
      sub_1BD0DE53C(&v109, &qword_1EBD3EC90);
      *&v107 = 0;
      MEMORY[0x1BFB45F40](&v107, 8);
      v81 = v107;
      if ((10 * v107) <= 5)
      {
        do
        {
          *&v107 = 0;
          MEMORY[0x1BFB45F40](&v107, 8);
          v81 = v107;
        }

        while ((10 * v107) < 6);
      }

      *&v107 = (v81 * 0xAuLL) >> 64;
      v82 = sub_1BE053B24();
      *(&v110 + 1) = MEMORY[0x1E69E6158];
      *&v109 = v82;
      *(&v109 + 1) = v83;
      sub_1BD1B6140(&v109, &v107);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      *&v106[0] = v44;
      v86 = sub_1BD148F70(v76, v77);
      v87 = v44[2];
      v88 = (v85 & 1) == 0;
      v89 = v87 + v88;
      if (__OFADD__(v87, v88))
      {
        goto LABEL_63;
      }

      v90 = v85;
      if (v44[3] < v89)
      {
        sub_1BD5000BC(v89, v84);
        v91 = sub_1BD148F70(v76, v77);
        if ((v90 & 1) != (v92 & 1))
        {
          goto LABEL_68;
        }

        v86 = v91;
        if ((v90 & 1) == 0)
        {
          goto LABEL_54;
        }

LABEL_39:

        v44 = *&v106[0];
        v74 = (*(*&v106[0] + 56) + 32 * v86);
        __swift_destroy_boxed_opaque_existential_0(v74);
        sub_1BD1B6140(&v107, v74);
        goto LABEL_40;
      }

      if (v84)
      {
        if (v85)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_1BD5060D0();
        if (v90)
        {
          goto LABEL_39;
        }
      }

LABEL_54:
      v44 = *&v106[0];
      *(*&v106[0] + 8 * (v86 >> 6) + 64) |= 1 << v86;
      v93 = (v44[6] + 16 * v86);
      *v93 = v76;
      v93[1] = v77;
      sub_1BD1B6140(&v107, (v44[7] + 32 * v86));
      v94 = v44[2];
      v29 = __OFADD__(v94, 1);
      v95 = v94 + 1;
      if (v29)
      {
        goto LABEL_64;
      }

      v44[2] = v95;
      goto LABEL_40;
    }
  }

  v16 = 0;
  v17 = (v15 + 40);
  while (v16 < *(v15 + 2))
  {
    v22 = *(v17 - 1);
    v21 = *v17;
    sub_1BE048C84();
    v23 = v104;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v109 = v10;
    v25 = sub_1BD148F70(v22, v21);
    v27 = v10[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_60;
    }

    v31 = v26;
    if (v10[3] < v30)
    {
      sub_1BD504148(v30, v24);
      v25 = sub_1BD148F70(v22, v21);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_68;
      }

LABEL_13:
      if (v31)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    if (v24)
    {
      goto LABEL_13;
    }

    v36 = v25;
    sub_1BD508430();
    v25 = v36;
    if (v31)
    {
LABEL_5:
      v18 = v25;

      v10 = v109;
      v19 = *(v109 + 56);
      v20 = *(v19 + 8 * v18);
      *(v19 + 8 * v18) = v23;

      goto LABEL_6;
    }

LABEL_14:
    v10 = v109;
    *(v109 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v33 = (v10[6] + 16 * v25);
    *v33 = v22;
    v33[1] = v21;
    *(v10[7] + 8 * v25) = v23;
    v34 = v10[2];
    v29 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v29)
    {
      goto LABEL_62;
    }

    v10[2] = v35;
LABEL_6:
    ++v16;
    v17 += 2;
    if (v105 == v16)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_1BE053C14();
  __break(1u);
  return result;
}

id sub_1BD93C024()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = [v0 fontDescriptorWithDesign_];

  if (v1)
  {
    v2 = [v1 fontDescriptorWithSize_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40068);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v4 = *MEMORY[0x1E69DB8F0];
    *(inited + 32) = *MEMORY[0x1E69DB8F0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40070);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1BE0B69E0;
    v6 = *MEMORY[0x1E69DB990];
    *(v5 + 32) = *MEMORY[0x1E69DB990];
    v7 = *MEMORY[0x1E69DB980];
    *(v5 + 40) = *MEMORY[0x1E69DB980];
    v8 = v4;
    v9 = v6;
    v10 = sub_1BD1ABFCC(v5);
    swift_setDeallocating();
    sub_1BD0DE53C(v5 + 32, &qword_1EBD40078);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40080);
    *(inited + 40) = v10;
    sub_1BD1AC0BC(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &qword_1EBD3BF50);
    type metadata accessor for AttributeName(0);
    sub_1BD948B20();
    v11 = sub_1BE052224();

    v12 = [v2 fontDescriptorByAddingAttributes_];

    if (v12)
    {
      v13 = [objc_opt_self() fontWithDescriptor:v12 size:15.0];

      return v13;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E69DB980];
  }

  v15 = [objc_opt_self() systemFontOfSize:15.0 weight:v7];

  return v15;
}

char *sub_1BD93C2EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 1;
  do
  {
    for (i = 1; i != 4; ++i)
    {
      sub_1BE053834();
      sub_1BE048C84();

      MEMORY[0x1BFB3F610](0x6967694473746F44, 0xEA00000000003074);
      v9 = sub_1BE053B24();
      MEMORY[0x1BFB3F610](v9);

      MEMORY[0x1BFB3F610](0x6575716553657250, 0xEC0000003065636ELL);
      v10 = sub_1BE053B24();
      MEMORY[0x1BFB3F610](v10);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1BD03B038(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1BD03B038((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v13 = &v4[16 * v12];
      *(v13 + 4) = a1;
      *(v13 + 5) = a2;
    }

    for (j = 1; j != 4; ++j)
    {
      sub_1BE053834();
      sub_1BE048C84();

      MEMORY[0x1BFB3F610](0xD000000000000011, 0x80000001BE140C80);
      v15 = sub_1BE053B24();
      MEMORY[0x1BFB3F610](v15);

      MEMORY[0x1BFB3F610](0x6575716553657250, 0xEC0000003065636ELL);
      v16 = sub_1BE053B24();
      MEMORY[0x1BFB3F610](v16);

      v18 = *(v4 + 2);
      v17 = *(v4 + 3);
      if (v18 >= v17 >> 1)
      {
        v4 = sub_1BD03B038((v17 > 1), v18 + 1, 1, v4);
      }

      *(v4 + 2) = v18 + 1;
      v19 = &v4[16 * v18];
      *(v19 + 4) = a1;
      *(v19 + 5) = a2;
    }

    if (a3)
    {
      sub_1BE053834();
      sub_1BE048C84();

      MEMORY[0x1BFB3F610](0xD000000000000011, 0x80000001BE140C80);
      v20 = sub_1BE053B24();
      MEMORY[0x1BFB3F610](v20);

      MEMORY[0x1BFB3F610](0x6C616E6946, 0xE500000000000000);
      v22 = *(v4 + 2);
      v21 = *(v4 + 3);
      if (v22 >= v21 >> 1)
      {
        v4 = sub_1BD03B038((v21 > 1), v22 + 1, 1, v4);
      }

      *(v4 + 2) = v22 + 1;
      v6 = &v4[16 * v22];
      *(v6 + 4) = a1;
      *(v6 + 5) = a2;
    }
  }

  while (v5++ != 4);
  return v4;
}

CGSize __swiftcall AutoFillHeroAnimationView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetHeight(v15);
  PKFloatRoundToPixel();
  v12 = v11;
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

unint64_t sub_1BD93C878(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v3 = [v2 CGColor];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v5 = [v4 &selRef__disclosureChevronImage_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v609 = [v6 &selRef__disclosureChevronImage_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.62 green:0.62 blue:0.69 alpha:0.0];
  v602 = [v7 &selRef__disclosureChevronImage_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.62 green:0.62 blue:0.69 alpha:1.0];
  v553 = [v8 &selRef__disclosureChevronImage_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.86 green:0.86 blue:0.86 alpha:0.0];
  v606 = [v9 &selRef__disclosureChevronImage_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.86 green:0.86 blue:0.86 alpha:1.0];
  v603 = [v10 &selRef__disclosureChevronImage_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.03 green:0.64 blue:0.93 alpha:1.0];
  v620 = [v11 &selRef__disclosureChevronImage_];

  v12 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.03 green:0.64 blue:0.93 alpha:0.5];
  v611 = [v12 &selRef__disclosureChevronImage_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.03 green:0.64 blue:0.93 alpha:0.0];
  v607 = [v13 &selRef__disclosureChevronImage_];

  v14 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.31 green:0.67 blue:0.95 alpha:1.0];
  v15 = [v14 &selRef__disclosureChevronImage_];

  v16 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.2 green:0.55 blue:0.8 alpha:1.0];
  v17 = [v16 &selRef__disclosureChevronImage_];

  v18 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.82 green:0.93 blue:1.0 alpha:0.5];
  v629 = [v18 &selRef__disclosureChevronImage_];

  v19 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.49 blue:0.94 alpha:0.12];
  v627 = [v19 &selRef__disclosureChevronImage_];

  v20 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.33 green:0.75 blue:0.95 alpha:1.0];
  v612 = [v20 &selRef__disclosureChevronImage_];

  v21 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.38 green:0.76 blue:0.95 alpha:1.0];
  v605 = [v21 &selRef__disclosureChevronImage_];

  v22 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.18 green:0.63 blue:0.88 alpha:1.0];
  v559 = [v22 &selRef__disclosureChevronImage_];

  v23 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.73 green:0.73 blue:0.73 alpha:1.0];
  v615 = [v23 &selRef__disclosureChevronImage_];

  v24 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.99 green:0.99 blue:1.0 alpha:1.0];
  v621 = [v24 &selRef__disclosureChevronImage_];

  v25 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.96 green:0.96 blue:0.98 alpha:1.0];
  v625 = [v25 &selRef__disclosureChevronImage_];

  v26 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.21 green:0.21 blue:0.22 alpha:1.0];
  v623 = [v26 &selRef__disclosureChevronImage_];

  v27 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.16 green:0.16 blue:0.17 alpha:1.0];
  v622 = [v27 &selRef__disclosureChevronImage_];

  v28 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.65 blue:0.99 alpha:1.0];
  v567 = [v28 &selRef__disclosureChevronImage_];

  v29 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.1];
  v616 = [v29 &selRef__disclosureChevronImage_];

  v30 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.07];
  v604 = [v30 &selRef__disclosureChevronImage_];

  v31 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.79 blue:0.02 alpha:1.0];
  v572 = [v31 &selRef__disclosureChevronImage_];

  v32 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.84 blue:? alpha:?];
  v600 = [v32 &selRef__disclosureChevronImage_];

  v33 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.86 blue:0.38 alpha:1.0];
  v565 = [v33 &selRef__disclosureChevronImage_];

  v34 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.89 green:0.74 blue:0.31 alpha:1.0];
  v563 = [v34 &selRef__disclosureChevronImage_];

  v35 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.36 blue:0.28 alpha:1.0];
  v597 = [v35 &selRef__disclosureChevronImage_];

  v36 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.99 green:0.5 blue:0.44 alpha:1.0];
  v599 = [v36 &selRef__disclosureChevronImage_];

  v37 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.59 blue:0.54 alpha:1.0];
  v575 = [v37 &selRef__disclosureChevronImage_];

  v38 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.87 green:0.41 blue:0.4 alpha:1.0];
  v574 = [v38 &selRef__disclosureChevronImage_];

  v39 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.99 green:0.99 blue:1.0 alpha:0.06];
  v619 = [v39 &selRef__disclosureChevronImage_];

  v40 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.96 green:0.96 blue:0.98 alpha:0.4];
  v618 = [v40 &selRef__disclosureChevronImage_];

  v41 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v42 = [v41 &selRef__disclosureChevronImage_];

  v43 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.2];
  v617 = [v43 &selRef__disclosureChevronImage_];

  v44 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.25];
  v598 = [v44 &selRef__disclosureChevronImage_];

  v45 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.3];
  v46 = [v45 &selRef__disclosureChevronImage_];

  v47 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
  v613 = [v47 &selRef__disclosureChevronImage_];

  v48 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.6];
  v614 = [v48 &selRef__disclosureChevronImage_];

  v49 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
  v555 = [v49 &selRef__disclosureChevronImage_];

  v50 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.5 green:0.5 blue:0.5 alpha:0.0];
  v554 = [v50 &selRef__disclosureChevronImage_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40098);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BE106E30;
  *(v51 + 32) = 0x79614C20746F6F52;
  *(v51 + 40) = 0xEA00000000007265;
  v596 = v3;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *v631 = v3;
  memset(&v631[8], 0, 48);
  *&v631[56] = v3;
  v632 = 0u;
  v633 = 0u;
  v634 = 0u;
  v636 = 0u;
  v637 = 0u;
  v638 = 0u;
  v635 = v3;
  v639 = v3;
  v640 = 0u;
  v641 = 0u;
  v642 = 0u;
  sub_1BD289374(v631, v2604);
  sub_1BD2893D0(&v635);
  v52 = v633;
  *(v51 + 112) = v632;
  *(v51 + 128) = v52;
  *(v51 + 144) = v634;
  v53 = *&v631[16];
  *(v51 + 48) = *v631;
  *(v51 + 64) = v53;
  v54 = *&v631[48];
  *(v51 + 80) = *&v631[32];
  *(v51 + 96) = v54;
  *(v51 + 160) = 0xD000000000000018;
  *(v51 + 168) = 0x80000001BE140CA0;
  v595 = v5;
  v594 = v15;
  v593 = v17;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v643 = v15;
  memset(&v644[8], 0, 32);
  *v644 = v5;
  *&v644[40] = v17;
  *&v645 = 0;
  *(&v645 + 1) = v5;
  v646 = 0u;
  v647 = 0u;
  v648[0] = v15;
  v648[1] = 0;
  v649 = 0u;
  v650 = 0u;
  v648[2] = v5;
  v651 = v17;
  v652 = 0;
  v653 = v5;
  v655 = 0u;
  v654 = 0u;
  sub_1BD289374(&v643, v2604);
  sub_1BD2893D0(v648);
  v55 = v646;
  *(v51 + 240) = v645;
  *(v51 + 256) = v55;
  *(v51 + 272) = v647;
  v56 = *v644;
  *(v51 + 176) = v643;
  *(v51 + 192) = v56;
  v57 = *&v644[32];
  *(v51 + 208) = *&v644[16];
  *(v51 + 224) = v57;
  *(v51 + 288) = 0xD000000000000022;
  *(v51 + 296) = 0x80000001BE140CC0;
  v592 = v629;
  v591 = v627;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v656 = v629;
  memset(&v657[8], 0, 32);
  *v657 = v5;
  *&v657[40] = v627;
  *&v658 = 0;
  *(&v658 + 1) = v5;
  v659 = 0u;
  v660 = 0u;
  v661[0] = v629;
  v661[1] = 0;
  v662 = 0u;
  v663 = 0u;
  v661[2] = v5;
  v664 = v627;
  v665 = 0;
  v666 = v5;
  v668 = 0u;
  v667 = 0u;
  sub_1BD289374(&v656, v2604);
  sub_1BD2893D0(v661);
  v58 = v659;
  *(v51 + 368) = v658;
  *(v51 + 384) = v58;
  *(v51 + 400) = v660;
  v59 = *v657;
  *(v51 + 304) = v656;
  *(v51 + 320) = v59;
  v60 = *&v657[32];
  *(v51 + 336) = *&v657[16];
  *(v51 + 352) = v60;
  *(v51 + 416) = 0xD000000000000020;
  *(v51 + 424) = 0x80000001BE140CF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD400A0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1BE0B6CA0;
  *(v61 + 32) = v46;
  *(v61 + 40) = v42;
  v62 = v46;
  v63 = v42;
  v64 = v62;
  v65 = v63;
  v66 = v64;
  v67 = v65;
  v590 = v66;
  v68 = v67;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1BE0B6CA0;
  *(v69 + 32) = v614;
  *(v69 + 40) = v42;
  v589 = v614;
  v588 = v68;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  memset(&v672[8], 0, 48);
  *v672 = v61;
  *&v672[56] = v69;
  memset(v673, 0, sizeof(v673));
  v675 = 0u;
  v676 = 0u;
  v677 = 0u;
  v674 = v61;
  v678 = v69;
  sub_1BD289374(&v669, v2604);
  sub_1BD2893D0(v673);
  v70 = *&v672[32];
  *(v51 + 496) = *&v672[16];
  *(v51 + 512) = v70;
  *(v51 + 528) = *&v672[48];
  v71 = v670;
  *(v51 + 432) = v669;
  *(v51 + 448) = v71;
  v72 = *v672;
  *(v51 + 464) = v671;
  *(v51 + 480) = v72;
  *(v51 + 544) = 0x6C6C69466F747561;
  *(v51 + 552) = 0xEA00000000003130;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v679 = v3;
  memset(&v680[8], 0, 32);
  *v680 = v5;
  *&v680[40] = v3;
  *&v681 = 0;
  *(&v681 + 1) = v5;
  v682 = 0u;
  v683 = 0u;
  v684[0] = v3;
  v684[1] = 0;
  v685 = 0u;
  v686 = 0u;
  v684[2] = v5;
  v687 = v3;
  v688 = 0;
  v689 = v5;
  v691 = 0u;
  v690 = 0u;
  sub_1BD289374(&v679, v2604);
  sub_1BD2893D0(v684);
  v73 = v682;
  *(v51 + 624) = v681;
  *(v51 + 640) = v73;
  *(v51 + 656) = v683;
  v74 = *v680;
  *(v51 + 560) = v679;
  *(v51 + 576) = v74;
  v75 = *&v680[32];
  *(v51 + 592) = *&v680[16];
  *(v51 + 608) = v75;
  *(v51 + 672) = 0xD00000000000001BLL;
  *(v51 + 680) = 0x80000001BE140D20;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v628 = v3;
  v692 = v3;
  memset(&v693[8], 0, 32);
  *v693 = v5;
  *&v693[40] = v3;
  *&v694 = 0;
  *(&v694 + 1) = v5;
  v695 = 0u;
  v696 = 0u;
  v697[0] = v3;
  v697[1] = 0;
  v698 = 0u;
  v699 = 0u;
  v697[2] = v5;
  v700 = v3;
  v701 = 0;
  v702 = v5;
  v704 = 0u;
  v703 = 0u;
  sub_1BD289374(&v692, v2604);
  sub_1BD2893D0(v697);
  v76 = v695;
  *(v51 + 752) = v694;
  *(v51 + 768) = v76;
  *(v51 + 784) = v696;
  v77 = *v693;
  *(v51 + 688) = v692;
  *(v51 + 704) = v77;
  v78 = *&v693[32];
  *(v51 + 720) = *&v693[16];
  *(v51 + 736) = v78;
  *(v51 + 800) = 0xD000000000000019;
  *(v51 + 808) = 0x80000001BE140D40;
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1BE0B6CA0;
  *(v79 + 32) = v621;
  *(v79 + 40) = v625;
  v80 = v621;
  v81 = v625;
  v82 = v80;
  v83 = v81;
  v587 = v82;
  v586 = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1BE0B6CA0;
  *(v84 + 32) = v623;
  *(v84 + 40) = v622;
  v85 = v623;
  v86 = v622;
  v87 = v85;
  v88 = v86;
  v585 = v87;
  v584 = v88;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  memset(&v708[8], 0, 48);
  *v708 = v79;
  *&v708[56] = v84;
  memset(v709, 0, sizeof(v709));
  v711 = 0u;
  v712 = 0u;
  v713 = 0u;
  v710 = v79;
  v714 = v84;
  sub_1BD289374(&v705, v2604);
  sub_1BD2893D0(v709);
  v89 = *&v708[32];
  *(v51 + 880) = *&v708[16];
  *(v51 + 896) = v89;
  *(v51 + 912) = *&v708[48];
  v90 = v706;
  *(v51 + 816) = v705;
  *(v51 + 832) = v90;
  v91 = *v708;
  *(v51 + 848) = v707;
  *(v51 + 864) = v91;
  *(v51 + 928) = 0xD00000000000001BLL;
  *(v51 + 936) = 0x80000001BE140D60;
  v583 = v616;
  v582 = v605;
  v581 = v612;
  v580 = v604;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v715 = v605;
  *(&v715 + 1) = v616;
  memset(&v716[8], 0, 32);
  *v716 = v5;
  *&v716[40] = v612;
  *&v717 = v604;
  *(&v717 + 1) = v5;
  v718 = 0u;
  v719 = 0u;
  v720[0] = v605;
  v720[1] = v616;
  v721 = 0u;
  v722 = 0u;
  v720[2] = v5;
  v723 = v612;
  v724 = v604;
  v725 = v5;
  v727 = 0u;
  v726 = 0u;
  sub_1BD289374(&v715, v2604);
  sub_1BD2893D0(v720);
  v92 = v718;
  *(v51 + 1008) = v717;
  *(v51 + 1024) = v92;
  *(v51 + 1040) = v719;
  v93 = *v716;
  *(v51 + 944) = v715;
  *(v51 + 960) = v93;
  v94 = *&v716[32];
  *(v51 + 976) = *&v716[16];
  *(v51 + 992) = v94;
  *(v51 + 1056) = 0xD000000000000023;
  *(v51 + 1064) = 0x80000001BE140D80;
  v579 = v615;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v728 = v615;
  memset(&v729[8], 0, 32);
  *v729 = v5;
  *&v729[40] = v615;
  *&v730 = 0;
  *(&v730 + 1) = v5;
  v731 = 0u;
  v732 = 0u;
  v733[0] = v615;
  v733[1] = 0;
  v734 = 0u;
  v735 = 0u;
  v733[2] = v5;
  v736 = v615;
  v737 = 0;
  v738 = v5;
  v740 = 0u;
  v739 = 0u;
  sub_1BD289374(&v728, v2604);
  sub_1BD2893D0(v733);
  v95 = *&v729[16];
  *(v51 + 1120) = *&v729[32];
  v96 = v731;
  *(v51 + 1136) = v730;
  *(v51 + 1152) = v96;
  *(v51 + 1168) = v732;
  v97 = *v729;
  *(v51 + 1072) = v728;
  *(v51 + 1088) = v97;
  *(v51 + 1104) = v95;
  *(v51 + 1184) = 0xD000000000000037;
  *(v51 + 1192) = 0x80000001BE140DB0;
  v98 = v553;
  v99 = v602;
  v100 = v98;
  v101 = v99;
  v102 = v100;
  v103 = v101;
  v104 = v102;
  v105 = v103;
  v106 = v104;
  v107 = v105;
  v108 = v106;
  v109 = v107;
  v578 = v108;
  v577 = v109;
  v110 = v603;
  v111 = v606;
  v112 = v110;
  v113 = v111;
  v114 = v112;
  v115 = v113;
  v116 = v114;
  v117 = v115;
  v118 = v116;
  v119 = v117;
  v120 = v118;
  v121 = v119;
  v576 = v120;
  v573 = v121;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v741[8], 0, 32);
  *v741 = v602;
  *&v741[40] = v553;
  *&v742 = 0;
  *(&v742 + 1) = v606;
  v743 = 0u;
  v744 = 0u;
  v745 = v603;
  v747 = 0u;
  v748 = 0u;
  v746 = v602;
  v749 = v553;
  v750 = 0;
  v751 = v606;
  v752 = 0u;
  v753 = 0u;
  v754 = v603;
  v755 = 0;
  sub_1BD289374(v741, v2604);
  sub_1BD2893D0(&v746);
  v122 = *&v741[32];
  *(v51 + 1248) = v742;
  v123 = v744;
  *(v51 + 1264) = v743;
  *(v51 + 1280) = v123;
  *(v51 + 1296) = v745;
  v124 = *&v741[16];
  *(v51 + 1200) = *v741;
  *(v51 + 1216) = v124;
  *(v51 + 1232) = v122;
  *(v51 + 1312) = 0xD000000000000037;
  *(v51 + 1320) = 0x80000001BE140DF0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v756[8], 0, 32);
  *v756 = v602;
  *&v756[40] = v553;
  *&v757 = 0;
  *(&v757 + 1) = v606;
  v758 = 0u;
  v759 = 0u;
  v760 = v603;
  v762 = 0u;
  v763 = 0u;
  v761 = v602;
  v764 = v553;
  v765 = 0;
  v766 = v606;
  v767 = 0u;
  v768 = 0u;
  v769 = v603;
  v770 = 0;
  sub_1BD289374(v756, v2604);
  sub_1BD2893D0(&v761);
  v125 = *&v756[32];
  *(v51 + 1376) = v757;
  v126 = v759;
  *(v51 + 1392) = v758;
  *(v51 + 1408) = v126;
  *(v51 + 1424) = v760;
  v127 = *&v756[16];
  *(v51 + 1328) = *v756;
  *(v51 + 1344) = v127;
  *(v51 + 1360) = v125;
  *(v51 + 1440) = 0xD000000000000037;
  *(v51 + 1448) = 0x80000001BE140E30;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v771[8], 0, 32);
  *v771 = v602;
  *&v771[40] = v553;
  *&v772 = 0;
  *(&v772 + 1) = v606;
  v773 = 0u;
  v774 = 0u;
  v775 = v603;
  v777 = 0u;
  v778 = 0u;
  v776 = v602;
  v779 = v553;
  v780 = 0;
  v781 = v606;
  v782 = 0u;
  v783 = 0u;
  v784 = v603;
  v785 = 0;
  sub_1BD289374(v771, v2604);
  sub_1BD2893D0(&v776);
  v128 = *&v771[32];
  *(v51 + 1504) = v772;
  v129 = v774;
  *(v51 + 1520) = v773;
  *(v51 + 1536) = v129;
  *(v51 + 1552) = v775;
  v130 = *&v771[16];
  *(v51 + 1456) = *v771;
  *(v51 + 1472) = v130;
  *(v51 + 1488) = v128;
  *(v51 + 1568) = 0xD00000000000002FLL;
  *(v51 + 1576) = 0x80000001BE140E70;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v786 = v553;
  memset(&v787[8], 0, 32);
  *v787 = v5;
  *&v787[40] = v603;
  *&v788 = 0;
  *(&v788 + 1) = v5;
  v789 = 0u;
  v790 = 0u;
  v791[0] = v553;
  v791[1] = 0;
  v792 = 0u;
  v793 = 0u;
  v791[2] = v5;
  v794 = v603;
  v795 = 0;
  v796 = v5;
  v798 = 0u;
  v797 = 0u;
  sub_1BD289374(&v786, v2604);
  sub_1BD2893D0(v791);
  v131 = *&v787[16];
  *(v51 + 1632) = *&v787[32];
  v132 = v789;
  *(v51 + 1648) = v788;
  *(v51 + 1664) = v132;
  *(v51 + 1680) = v790;
  v133 = *v787;
  *(v51 + 1584) = v786;
  *(v51 + 1600) = v133;
  *(v51 + 1616) = v131;
  *(v51 + 1696) = 0xD000000000000037;
  *(v51 + 1704) = 0x80000001BE140EA0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v799[8], 0, 32);
  *v799 = v602;
  *&v799[40] = v553;
  *&v800 = 0;
  *(&v800 + 1) = v606;
  v801 = 0u;
  v802 = 0u;
  v803 = v603;
  v805 = 0u;
  v806 = 0u;
  v804 = v602;
  v807 = v553;
  v808 = 0;
  v809 = v606;
  v810 = 0u;
  v811 = 0u;
  v812 = v603;
  v813 = 0;
  sub_1BD289374(v799, v2604);
  sub_1BD2893D0(&v804);
  v134 = *&v799[32];
  *(v51 + 1760) = v800;
  v135 = v802;
  *(v51 + 1776) = v801;
  *(v51 + 1792) = v135;
  *(v51 + 1808) = v803;
  v136 = *&v799[16];
  *(v51 + 1712) = *v799;
  *(v51 + 1728) = v136;
  *(v51 + 1744) = v134;
  *(v51 + 1824) = 0xD000000000000037;
  *(v51 + 1832) = 0x80000001BE140EE0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v814[8], 0, 32);
  *v814 = v602;
  *&v814[40] = v553;
  *&v815 = 0;
  *(&v815 + 1) = v606;
  v816 = 0u;
  v817 = 0u;
  v818 = v603;
  v820 = 0u;
  v821 = 0u;
  v819 = v602;
  v822 = v553;
  v823 = 0;
  v824 = v606;
  v825 = 0u;
  v826 = 0u;
  v827 = v603;
  v828 = 0;
  sub_1BD289374(v814, v2604);
  sub_1BD2893D0(&v819);
  v137 = *&v814[32];
  *(v51 + 1888) = v815;
  v138 = v817;
  *(v51 + 1904) = v816;
  *(v51 + 1920) = v138;
  *(v51 + 1936) = v818;
  v139 = *&v814[16];
  *(v51 + 1840) = *v814;
  *(v51 + 1856) = v139;
  *(v51 + 1872) = v137;
  *(v51 + 1952) = 0xD000000000000037;
  *(v51 + 1960) = 0x80000001BE140F20;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v829[8], 0, 32);
  *v829 = v602;
  *&v829[40] = v553;
  *&v830 = 0;
  *(&v830 + 1) = v606;
  v831 = 0u;
  v832 = 0u;
  v833 = v603;
  v835 = 0u;
  v836 = 0u;
  v834 = v602;
  v837 = v553;
  v838 = 0;
  v839 = v606;
  v840 = 0u;
  v841 = 0u;
  v842 = v603;
  v843 = 0;
  sub_1BD289374(v829, v2604);
  sub_1BD2893D0(&v834);
  v140 = *&v829[32];
  *(v51 + 2016) = v830;
  v141 = v832;
  *(v51 + 2032) = v831;
  *(v51 + 2048) = v141;
  *(v51 + 2064) = v833;
  v142 = *&v829[16];
  *(v51 + 1968) = *v829;
  *(v51 + 1984) = v142;
  *(v51 + 2000) = v140;
  *(v51 + 2080) = 0xD00000000000002FLL;
  *(v51 + 2088) = 0x80000001BE140F60;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v844 = v553;
  memset(&v845[8], 0, 32);
  *v845 = v5;
  *&v845[40] = v603;
  *&v846 = 0;
  *(&v846 + 1) = v5;
  v847 = 0u;
  v848 = 0u;
  v849[0] = v553;
  v849[1] = 0;
  v850 = 0u;
  v851 = 0u;
  v849[2] = v5;
  v852 = v603;
  v853 = 0;
  v854 = v5;
  v856 = 0u;
  v855 = 0u;
  sub_1BD289374(&v844, v2604);
  sub_1BD2893D0(v849);
  v143 = *&v845[16];
  *(v51 + 2144) = *&v845[32];
  v144 = v847;
  *(v51 + 2160) = v846;
  *(v51 + 2176) = v144;
  *(v51 + 2192) = v848;
  v145 = *v845;
  *(v51 + 2096) = v844;
  *(v51 + 2112) = v145;
  *(v51 + 2128) = v143;
  *(v51 + 2208) = 0xD000000000000037;
  *(v51 + 2216) = 0x80000001BE140F90;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v857[8], 0, 32);
  *v857 = v602;
  *&v857[40] = v553;
  *&v858 = 0;
  *(&v858 + 1) = v606;
  v859 = 0u;
  v860 = 0u;
  v861 = v603;
  v863 = 0u;
  v864 = 0u;
  v862 = v602;
  v865 = v553;
  v866 = 0;
  v867 = v606;
  v868 = 0u;
  v869 = 0u;
  v870 = v603;
  v871 = 0;
  sub_1BD289374(v857, v2604);
  sub_1BD2893D0(&v862);
  v146 = *&v857[32];
  *(v51 + 2272) = v858;
  v147 = v860;
  *(v51 + 2288) = v859;
  *(v51 + 2304) = v147;
  *(v51 + 2320) = v861;
  v148 = *&v857[16];
  *(v51 + 2224) = *v857;
  *(v51 + 2240) = v148;
  *(v51 + 2256) = v146;
  *(v51 + 2336) = 0xD000000000000037;
  *(v51 + 2344) = 0x80000001BE140FD0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v872[8], 0, 32);
  *v872 = v602;
  *&v872[40] = v553;
  *&v873 = 0;
  *(&v873 + 1) = v606;
  v874 = 0u;
  v875 = 0u;
  v876 = v603;
  v878 = 0u;
  v879 = 0u;
  v877 = v602;
  v880 = v553;
  v881 = 0;
  v882 = v606;
  v883 = 0u;
  v884 = 0u;
  v885 = v603;
  v886 = 0;
  sub_1BD289374(v872, v2604);
  sub_1BD2893D0(&v877);
  v149 = *&v872[32];
  *(v51 + 2400) = v873;
  v150 = v875;
  *(v51 + 2416) = v874;
  *(v51 + 2432) = v150;
  *(v51 + 2448) = v876;
  v151 = *&v872[16];
  *(v51 + 2352) = *v872;
  *(v51 + 2368) = v151;
  *(v51 + 2384) = v149;
  *(v51 + 2464) = 0xD000000000000037;
  *(v51 + 2472) = 0x80000001BE141010;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v887[8], 0, 32);
  *v887 = v602;
  *&v887[40] = v553;
  *&v888 = 0;
  *(&v888 + 1) = v606;
  v889 = 0u;
  v890 = 0u;
  v891 = v603;
  v893 = 0u;
  v894 = 0u;
  v892 = v602;
  v895 = v553;
  v896 = 0;
  v897 = v606;
  v898 = 0u;
  v899 = 0u;
  v900 = v603;
  v901 = 0;
  sub_1BD289374(v887, v2604);
  sub_1BD2893D0(&v892);
  v152 = *&v887[32];
  *(v51 + 2528) = v888;
  v153 = v890;
  *(v51 + 2544) = v889;
  *(v51 + 2560) = v153;
  *(v51 + 2576) = v891;
  v154 = *&v887[16];
  *(v51 + 2480) = *v887;
  *(v51 + 2496) = v154;
  *(v51 + 2512) = v152;
  *(v51 + 2592) = 0xD00000000000002FLL;
  *(v51 + 2600) = 0x80000001BE141050;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v902 = v553;
  memset(&v903[8], 0, 32);
  *v903 = v5;
  *&v903[40] = v603;
  *&v904 = 0;
  *(&v904 + 1) = v5;
  v905 = 0u;
  v906 = 0u;
  v907[0] = v553;
  v907[1] = 0;
  v908 = 0u;
  v909 = 0u;
  v907[2] = v5;
  v910 = v603;
  v911 = 0;
  v912 = v5;
  v914 = 0u;
  v913 = 0u;
  sub_1BD289374(&v902, v2604);
  sub_1BD2893D0(v907);
  v155 = *&v903[16];
  *(v51 + 2656) = *&v903[32];
  v156 = v905;
  *(v51 + 2672) = v904;
  *(v51 + 2688) = v156;
  *(v51 + 2704) = v906;
  v157 = *v903;
  *(v51 + 2608) = v902;
  *(v51 + 2624) = v157;
  *(v51 + 2640) = v155;
  *(v51 + 2720) = 0xD000000000000037;
  *(v51 + 2728) = 0x80000001BE141080;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v915[8], 0, 32);
  *v915 = v602;
  *&v915[40] = v553;
  *&v916 = 0;
  *(&v916 + 1) = v606;
  v917 = 0u;
  v918 = 0u;
  v919 = v603;
  v921 = 0u;
  v922 = 0u;
  v920 = v602;
  v923 = v553;
  v924 = 0;
  v925 = v606;
  v926 = 0u;
  v927 = 0u;
  v928 = v603;
  v929 = 0;
  sub_1BD289374(v915, v2604);
  sub_1BD2893D0(&v920);
  v158 = *&v915[32];
  *(v51 + 2784) = v916;
  v159 = v918;
  *(v51 + 2800) = v917;
  *(v51 + 2816) = v159;
  *(v51 + 2832) = v919;
  v160 = *&v915[16];
  *(v51 + 2736) = *v915;
  *(v51 + 2752) = v160;
  *(v51 + 2768) = v158;
  *(v51 + 2848) = 0xD000000000000037;
  *(v51 + 2856) = 0x80000001BE1410C0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v930[8], 0, 32);
  *v930 = v602;
  *&v930[40] = v553;
  *&v931 = 0;
  *(&v931 + 1) = v606;
  v932 = 0u;
  v933 = 0u;
  v934 = v603;
  v936 = 0u;
  v937 = 0u;
  v935 = v602;
  v938 = v553;
  v939 = 0;
  v940 = v606;
  v941 = 0u;
  v942 = 0u;
  v943 = v603;
  v944 = 0;
  sub_1BD289374(v930, v2604);
  sub_1BD2893D0(&v935);
  v161 = *&v930[32];
  *(v51 + 2912) = v931;
  v162 = v933;
  *(v51 + 2928) = v932;
  *(v51 + 2944) = v162;
  *(v51 + 2960) = v934;
  v163 = *&v930[16];
  *(v51 + 2864) = *v930;
  *(v51 + 2880) = v163;
  *(v51 + 2896) = v161;
  *(v51 + 2976) = 0xD000000000000037;
  *(v51 + 2984) = 0x80000001BE141100;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v945[8], 0, 32);
  *v945 = v602;
  *&v945[40] = v553;
  *&v946 = 0;
  *(&v946 + 1) = v606;
  v947 = 0u;
  v948 = 0u;
  v949 = v603;
  v951 = 0u;
  v952 = 0u;
  v950 = v602;
  v953 = v553;
  v954 = 0;
  v955 = v606;
  v956 = 0u;
  v957 = 0u;
  v958 = v603;
  v959 = 0;
  sub_1BD289374(v945, v2604);
  sub_1BD2893D0(&v950);
  v164 = *&v945[32];
  *(v51 + 3040) = v946;
  v165 = v948;
  *(v51 + 3056) = v947;
  *(v51 + 3072) = v165;
  *(v51 + 3088) = v949;
  v166 = *&v945[16];
  *(v51 + 2992) = *v945;
  *(v51 + 3008) = v166;
  *(v51 + 3024) = v164;
  *(v51 + 3104) = 0xD00000000000002FLL;
  *(v51 + 3112) = 0x80000001BE141140;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v960 = v553;
  memset(&v961[8], 0, 32);
  *v961 = v5;
  *&v961[40] = v603;
  *&v962 = 0;
  *(&v962 + 1) = v5;
  v963 = 0u;
  v964 = 0u;
  v965[0] = v553;
  v965[1] = 0;
  v966 = 0u;
  v967 = 0u;
  v965[2] = v5;
  v968 = v603;
  v969 = 0;
  v970 = v5;
  v972 = 0u;
  v971 = 0u;
  sub_1BD289374(&v960, v2604);
  sub_1BD2893D0(v965);
  v167 = *&v961[16];
  *(v51 + 3168) = *&v961[32];
  v168 = v963;
  *(v51 + 3184) = v962;
  *(v51 + 3200) = v168;
  *(v51 + 3216) = v964;
  v169 = *v961;
  *(v51 + 3120) = v960;
  *(v51 + 3136) = v169;
  *(v51 + 3152) = v167;
  *(v51 + 3232) = 0xD00000000000003ELL;
  *(v51 + 3240) = 0x80000001BE141170;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v973[8], 0, 32);
  *v973 = v602;
  *&v973[40] = v553;
  *&v974 = 0;
  *(&v974 + 1) = v606;
  v975 = 0u;
  v976 = 0u;
  v977 = v603;
  v979 = 0u;
  v980 = 0u;
  v978 = v602;
  v981 = v553;
  v982 = 0;
  v983 = v606;
  v984 = 0u;
  v985 = 0u;
  v986 = v603;
  v987 = 0;
  sub_1BD289374(v973, v2604);
  sub_1BD2893D0(&v978);
  v170 = *&v973[32];
  *(v51 + 3296) = v974;
  v171 = v976;
  *(v51 + 3312) = v975;
  *(v51 + 3328) = v171;
  *(v51 + 3344) = v977;
  v172 = *&v973[16];
  *(v51 + 3248) = *v973;
  *(v51 + 3264) = v172;
  *(v51 + 3280) = v170;
  *(v51 + 3360) = 0xD00000000000003ELL;
  *(v51 + 3368) = 0x80000001BE1411B0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v988[8], 0, 32);
  *v988 = v602;
  *&v988[40] = v553;
  *&v989 = 0;
  *(&v989 + 1) = v606;
  v990 = 0u;
  v991 = 0u;
  v992 = v603;
  v994 = 0u;
  v995 = 0u;
  v993 = v602;
  v996 = v553;
  v997 = 0;
  v998 = v606;
  v999 = 0u;
  v1000 = 0u;
  v1001 = v603;
  v1002 = 0;
  sub_1BD289374(v988, v2604);
  sub_1BD2893D0(&v993);
  v173 = *&v988[32];
  *(v51 + 3424) = v989;
  v174 = v991;
  *(v51 + 3440) = v990;
  *(v51 + 3456) = v174;
  *(v51 + 3472) = v992;
  v175 = *&v988[16];
  *(v51 + 3376) = *v988;
  *(v51 + 3392) = v175;
  *(v51 + 3408) = v173;
  *(v51 + 3488) = 0xD00000000000003ELL;
  *(v51 + 3496) = 0x80000001BE1411F0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1003[8], 0, 32);
  *v1003 = v602;
  *&v1003[40] = v553;
  *&v1004 = 0;
  *(&v1004 + 1) = v606;
  v1005 = 0u;
  v1006 = 0u;
  v1007 = v603;
  v1009 = 0u;
  v1010 = 0u;
  v1008 = v602;
  v1011 = v553;
  v1012 = 0;
  v1013 = v606;
  v1014 = 0u;
  v1015 = 0u;
  v1016 = v603;
  v1017 = 0;
  sub_1BD289374(v1003, v2604);
  sub_1BD2893D0(&v1008);
  v176 = *&v1003[32];
  *(v51 + 3552) = v1004;
  v177 = v1006;
  *(v51 + 3568) = v1005;
  *(v51 + 3584) = v177;
  *(v51 + 3600) = v1007;
  v178 = *&v1003[16];
  *(v51 + 3504) = *v1003;
  *(v51 + 3520) = v178;
  *(v51 + 3536) = v176;
  *(v51 + 3616) = 0xD000000000000036;
  *(v51 + 3624) = 0x80000001BE141230;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1018[8], 0, 32);
  *v1018 = v602;
  *&v1018[40] = v553;
  *&v1019 = 0;
  *(&v1019 + 1) = v606;
  v1020 = 0u;
  v1021 = 0u;
  v1022 = v603;
  v1024 = 0u;
  v1025 = 0u;
  v1023 = v602;
  v1026 = v553;
  v1027 = 0;
  v1028 = v606;
  v1029 = 0u;
  v1030 = 0u;
  v1031 = v603;
  v1032 = 0;
  sub_1BD289374(v1018, v2604);
  sub_1BD2893D0(&v1023);
  v179 = *&v1018[32];
  *(v51 + 3680) = v1019;
  v180 = v1021;
  *(v51 + 3696) = v1020;
  *(v51 + 3712) = v180;
  *(v51 + 3728) = v1022;
  v181 = *&v1018[16];
  *(v51 + 3632) = *v1018;
  *(v51 + 3648) = v181;
  *(v51 + 3664) = v179;
  *(v51 + 3744) = 0xD00000000000003ELL;
  *(v51 + 3752) = 0x80000001BE141270;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1033[8], 0, 32);
  *v1033 = v602;
  *&v1033[40] = v553;
  *&v1034 = 0;
  *(&v1034 + 1) = v606;
  v1035 = 0u;
  v1036 = 0u;
  v1037 = v603;
  v1039 = 0u;
  v1040 = 0u;
  v1038 = v602;
  v1041 = v553;
  v1042 = 0;
  v1043 = v606;
  v1044 = 0u;
  v1045 = 0u;
  v1046 = v603;
  v1047 = 0;
  sub_1BD289374(v1033, v2604);
  sub_1BD2893D0(&v1038);
  v182 = *&v1033[32];
  *(v51 + 3808) = v1034;
  v183 = v1036;
  *(v51 + 3824) = v1035;
  *(v51 + 3840) = v183;
  *(v51 + 3856) = v1037;
  v184 = *&v1033[16];
  *(v51 + 3760) = *v1033;
  *(v51 + 3776) = v184;
  *(v51 + 3792) = v182;
  *(v51 + 3872) = 0xD00000000000003ELL;
  *(v51 + 3880) = 0x80000001BE1412B0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1048[8], 0, 32);
  *v1048 = v602;
  *&v1048[40] = v553;
  *&v1049 = 0;
  *(&v1049 + 1) = v606;
  v1050 = 0u;
  v1051 = 0u;
  v1052 = v603;
  v1054 = 0u;
  v1055 = 0u;
  v1053 = v602;
  v1056 = v553;
  v1057 = 0;
  v1058 = v606;
  v1059 = 0u;
  v1060 = 0u;
  v1061 = v603;
  v1062 = 0;
  sub_1BD289374(v1048, v2604);
  sub_1BD2893D0(&v1053);
  v185 = *&v1048[32];
  *(v51 + 3936) = v1049;
  v186 = v1051;
  *(v51 + 3952) = v1050;
  *(v51 + 3968) = v186;
  *(v51 + 3984) = v1052;
  v187 = *&v1048[16];
  *(v51 + 3888) = *v1048;
  *(v51 + 3904) = v187;
  *(v51 + 3920) = v185;
  *(v51 + 4000) = 0xD00000000000003ELL;
  *(v51 + 4008) = 0x80000001BE1412F0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1063[8], 0, 32);
  *v1063 = v602;
  *&v1063[40] = v553;
  *&v1064 = 0;
  *(&v1064 + 1) = v606;
  v1065 = 0u;
  v1066 = 0u;
  v1067 = v603;
  v1069 = 0u;
  v1070 = 0u;
  v1068 = v602;
  v1071 = v553;
  v1072 = 0;
  v1073 = v606;
  v1074 = 0u;
  v1075 = 0u;
  v1076 = v603;
  v1077 = 0;
  sub_1BD289374(v1063, v2604);
  sub_1BD2893D0(&v1068);
  v188 = *&v1063[32];
  *(v51 + 4064) = v1064;
  v189 = v1066;
  *(v51 + 4080) = v1065;
  *(v51 + 4096) = v189;
  *(v51 + 4112) = v1067;
  v190 = *&v1063[16];
  *(v51 + 4016) = *v1063;
  *(v51 + 4032) = v190;
  *(v51 + 4048) = v188;
  *(v51 + 4128) = 0xD000000000000036;
  *(v51 + 4136) = 0x80000001BE141330;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1078[8], 0, 32);
  *v1078 = v602;
  *&v1078[40] = v553;
  *&v1079 = 0;
  *(&v1079 + 1) = v606;
  v1080 = 0u;
  v1081 = 0u;
  v1082 = v603;
  v1084 = 0u;
  v1085 = 0u;
  v1083 = v602;
  v1086 = v553;
  v1087 = 0;
  v1088 = v606;
  v1089 = 0u;
  v1090 = 0u;
  v1091 = v603;
  v1092 = 0;
  sub_1BD289374(v1078, v2604);
  sub_1BD2893D0(&v1083);
  v191 = *&v1078[32];
  *(v51 + 4192) = v1079;
  v192 = v1081;
  *(v51 + 4208) = v1080;
  *(v51 + 4224) = v192;
  *(v51 + 4240) = v1082;
  v193 = *&v1078[16];
  *(v51 + 4144) = *v1078;
  *(v51 + 4160) = v193;
  *(v51 + 4176) = v191;
  *(v51 + 4256) = 0xD00000000000003ELL;
  *(v51 + 4264) = 0x80000001BE141370;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1093[8], 0, 32);
  *v1093 = v602;
  *&v1093[40] = v553;
  *&v1094 = 0;
  *(&v1094 + 1) = v606;
  v1095 = 0u;
  v1096 = 0u;
  v1097 = v603;
  v1099 = 0u;
  v1100 = 0u;
  v1098 = v602;
  v1101 = v553;
  v1102 = 0;
  v1103 = v606;
  v1104 = 0u;
  v1105 = 0u;
  v1106 = v603;
  v1107 = 0;
  sub_1BD289374(v1093, v2604);
  sub_1BD2893D0(&v1098);
  v194 = *&v1093[32];
  *(v51 + 4320) = v1094;
  v195 = v1096;
  *(v51 + 4336) = v1095;
  *(v51 + 4352) = v195;
  *(v51 + 4368) = v1097;
  v196 = *&v1093[16];
  *(v51 + 4272) = *v1093;
  *(v51 + 4288) = v196;
  *(v51 + 4304) = v194;
  *(v51 + 4384) = 0xD00000000000003ELL;
  *(v51 + 4392) = 0x80000001BE1413B0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1108[8], 0, 32);
  *v1108 = v602;
  *&v1108[40] = v553;
  *&v1109 = 0;
  *(&v1109 + 1) = v606;
  v1110 = 0u;
  v1111 = 0u;
  v1112 = v603;
  v1114 = 0u;
  v1115 = 0u;
  v1113 = v602;
  v1116 = v553;
  v1117 = 0;
  v1118 = v606;
  v1119 = 0u;
  v1120 = 0u;
  v1121 = v603;
  v1122 = 0;
  sub_1BD289374(v1108, v2604);
  sub_1BD2893D0(&v1113);
  v197 = *&v1108[32];
  *(v51 + 4448) = v1109;
  v198 = v1111;
  *(v51 + 4464) = v1110;
  *(v51 + 4480) = v198;
  *(v51 + 4496) = v1112;
  v199 = *&v1108[16];
  *(v51 + 4400) = *v1108;
  *(v51 + 4416) = v199;
  *(v51 + 4432) = v197;
  *(v51 + 4512) = 0xD00000000000003ELL;
  *(v51 + 4520) = 0x80000001BE1413F0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1123[8], 0, 32);
  *v1123 = v602;
  *&v1123[40] = v553;
  *&v1124 = 0;
  *(&v1124 + 1) = v606;
  v1125 = 0u;
  v1126 = 0u;
  v1127 = v603;
  v1129 = 0u;
  v1130 = 0u;
  v1128 = v602;
  v1131 = v553;
  v1132 = 0;
  v1133 = v606;
  v1134 = 0u;
  v1135 = 0u;
  v1136 = v603;
  v1137 = 0;
  sub_1BD289374(v1123, v2604);
  sub_1BD2893D0(&v1128);
  v200 = *&v1123[32];
  *(v51 + 4576) = v1124;
  v201 = v1126;
  *(v51 + 4592) = v1125;
  *(v51 + 4608) = v201;
  *(v51 + 4624) = v1127;
  v202 = *&v1123[16];
  *(v51 + 4528) = *v1123;
  *(v51 + 4544) = v202;
  *(v51 + 4560) = v200;
  *(v51 + 4640) = 0xD000000000000036;
  *(v51 + 4648) = 0x80000001BE141430;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1138[8], 0, 32);
  *v1138 = v602;
  *&v1138[40] = v553;
  *&v1139 = 0;
  *(&v1139 + 1) = v606;
  v1140 = 0u;
  v1141 = 0u;
  v1142 = v603;
  v1144 = 0u;
  v1145 = 0u;
  v1143 = v602;
  v1146 = v553;
  v1147 = 0;
  v1148 = v606;
  v1149 = 0u;
  v1150 = 0u;
  v1151 = v603;
  v1152 = 0;
  sub_1BD289374(v1138, v2604);
  sub_1BD2893D0(&v1143);
  v203 = *&v1138[32];
  *(v51 + 4704) = v1139;
  v204 = v1141;
  *(v51 + 4720) = v1140;
  *(v51 + 4736) = v204;
  *(v51 + 4752) = v1142;
  v205 = *&v1138[16];
  *(v51 + 4656) = *v1138;
  *(v51 + 4672) = v205;
  *(v51 + 4688) = v203;
  *(v51 + 4768) = 0xD00000000000003ELL;
  *(v51 + 4776) = 0x80000001BE141470;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1153[8], 0, 32);
  *v1153 = v602;
  *&v1153[40] = v553;
  *&v1154 = 0;
  *(&v1154 + 1) = v606;
  v1155 = 0u;
  v1156 = 0u;
  v1157 = v603;
  v1159 = 0u;
  v1160 = 0u;
  v1158 = v602;
  v1161 = v553;
  v1162 = 0;
  v1163 = v606;
  v1164 = 0u;
  v1165 = 0u;
  v1166 = v603;
  v1167 = 0;
  sub_1BD289374(v1153, v2604);
  sub_1BD2893D0(&v1158);
  v206 = *&v1153[32];
  *(v51 + 4832) = v1154;
  v207 = v1156;
  *(v51 + 4848) = v1155;
  *(v51 + 4864) = v207;
  *(v51 + 4880) = v1157;
  v208 = *&v1153[16];
  *(v51 + 4784) = *v1153;
  *(v51 + 4800) = v208;
  *(v51 + 4816) = v206;
  *(v51 + 4896) = 0xD00000000000003ELL;
  *(v51 + 4904) = 0x80000001BE1414B0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1168[8], 0, 32);
  *v1168 = v602;
  *&v1168[40] = v553;
  *&v1169 = 0;
  *(&v1169 + 1) = v606;
  v1170 = 0u;
  v1171 = 0u;
  v1172 = v603;
  v1174 = 0u;
  v1175 = 0u;
  v1173 = v602;
  v1176 = v553;
  v1177 = 0;
  v1178 = v606;
  v1179 = 0u;
  v1180 = 0u;
  v1181 = v603;
  v1182 = 0;
  sub_1BD289374(v1168, v2604);
  sub_1BD2893D0(&v1173);
  v209 = *&v1168[32];
  *(v51 + 4960) = v1169;
  v210 = v1171;
  *(v51 + 4976) = v1170;
  *(v51 + 4992) = v210;
  *(v51 + 5008) = v1172;
  v211 = *&v1168[16];
  *(v51 + 4912) = *v1168;
  *(v51 + 4928) = v211;
  *(v51 + 4944) = v209;
  *(v51 + 5024) = 0xD00000000000003ELL;
  *(v51 + 5032) = 0x80000001BE1414F0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1183[8], 0, 32);
  *v1183 = v602;
  *&v1183[40] = v553;
  *&v1184 = 0;
  *(&v1184 + 1) = v606;
  v1185 = 0u;
  v1186 = 0u;
  v1187 = v603;
  v1189 = 0u;
  v1190 = 0u;
  v1188 = v602;
  v1191 = v553;
  v1192 = 0;
  v1193 = v606;
  v1194 = 0u;
  v1195 = 0u;
  v1196 = v603;
  v1197 = 0;
  sub_1BD289374(v1183, v2604);
  sub_1BD2893D0(&v1188);
  v212 = *&v1183[32];
  *(v51 + 5088) = v1184;
  v213 = v1186;
  *(v51 + 5104) = v1185;
  *(v51 + 5120) = v213;
  *(v51 + 5136) = v1187;
  v214 = *&v1183[16];
  *(v51 + 5040) = *v1183;
  *(v51 + 5056) = v214;
  *(v51 + 5072) = v212;
  *(v51 + 5152) = 0xD000000000000036;
  *(v51 + 5160) = 0x80000001BE141530;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1198[8], 0, 32);
  *v1198 = v602;
  *&v1198[40] = v553;
  *&v1199 = 0;
  *(&v1199 + 1) = v606;
  v1200 = 0u;
  v1201 = 0u;
  v1202 = v603;
  v1204 = 0u;
  v1205 = 0u;
  v1203 = v602;
  v1206 = v553;
  v1207 = 0;
  v1208 = v606;
  v1209 = 0u;
  v1210 = 0u;
  v1211 = v603;
  v1212 = 0;
  sub_1BD289374(v1198, v2604);
  sub_1BD2893D0(&v1203);
  v215 = *&v1198[32];
  *(v51 + 5216) = v1199;
  v216 = v1201;
  *(v51 + 5232) = v1200;
  *(v51 + 5248) = v216;
  *(v51 + 5264) = v1202;
  v217 = *&v1198[16];
  *(v51 + 5168) = *v1198;
  *(v51 + 5184) = v217;
  *(v51 + 5200) = v215;
  *(v51 + 5280) = 0xD000000000000015;
  *(v51 + 5288) = 0x80000001BE141570;
  v571 = v611;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1213[8], 0, 48);
  *v1213 = v611;
  *&v1213[56] = v611;
  v1214 = 0u;
  v1215 = 0u;
  v1216 = 0u;
  v1218 = 0u;
  v1219 = 0u;
  v1220 = 0u;
  v1217 = v611;
  v1221 = v611;
  v1222 = 0u;
  v1223 = 0u;
  v1224 = 0u;
  sub_1BD289374(v1213, v2604);
  sub_1BD2893D0(&v1217);
  v218 = *&v1213[32];
  *(v51 + 5344) = *&v1213[48];
  v219 = v1215;
  *(v51 + 5360) = v1214;
  *(v51 + 5376) = v219;
  *(v51 + 5392) = v1216;
  v220 = *&v1213[16];
  *(v51 + 5296) = *v1213;
  *(v51 + 5312) = v220;
  *(v51 + 5328) = v218;
  *(v51 + 5408) = 0xD000000000000014;
  *(v51 + 5416) = 0x80000001BE141590;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1225 = v5;
  memset(&v1226[8], 0, 32);
  *v1226 = v5;
  *&v1226[40] = v5;
  *&v1227 = 0;
  *(&v1227 + 1) = v5;
  v1228 = 0u;
  v1229 = 0u;
  v1230[0] = v5;
  v1230[1] = 0;
  v1231 = 0u;
  v1232 = 0u;
  v1230[2] = v5;
  v1233 = v5;
  v1234 = 0;
  v1235 = v5;
  v1237 = 0u;
  v1236 = 0u;
  sub_1BD289374(&v1225, v2604);
  sub_1BD2893D0(v1230);
  v221 = *&v1226[16];
  *(v51 + 5472) = *&v1226[32];
  v222 = v1228;
  *(v51 + 5488) = v1227;
  *(v51 + 5504) = v222;
  *(v51 + 5520) = v1229;
  v223 = *v1226;
  *(v51 + 5424) = v1225;
  *(v51 + 5440) = v223;
  *(v51 + 5456) = v221;
  *(v51 + 5536) = 0xD000000000000020;
  *(v51 + 5544) = 0x80000001BE1415B0;
  v570 = v620;
  v569 = v567;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1238 = v620;
  memset(&v1239[8], 0, 32);
  *v1239 = v5;
  *&v1239[40] = v567;
  *&v1240 = 0;
  *(&v1240 + 1) = v5;
  v1241 = 0u;
  v1242 = 0u;
  v1243[0] = v620;
  v1243[1] = 0;
  v1244 = 0u;
  v1245 = 0u;
  v1243[2] = v5;
  v1246 = v567;
  v1247 = 0;
  v1248 = v5;
  v1250 = 0u;
  v1249 = 0u;
  sub_1BD289374(&v1238, v2604);
  sub_1BD2893D0(v1243);
  v224 = *&v1239[16];
  *(v51 + 5600) = *&v1239[32];
  v225 = v1241;
  *(v51 + 5616) = v1240;
  *(v51 + 5632) = v225;
  *(v51 + 5648) = v1242;
  v226 = *v1239;
  *(v51 + 5552) = v1238;
  *(v51 + 5568) = v226;
  *(v51 + 5584) = v224;
  *(v51 + 5664) = 0xD00000000000001ELL;
  *(v51 + 5672) = 0x80000001BE1415E0;
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_1BE0B6CA0;
  *(v227 + 32) = v619;
  *(v227 + 40) = v618;
  v228 = v619;
  v229 = v618;
  v230 = v228;
  v231 = v229;
  v568 = v230;
  v566 = v231;
  v232 = swift_allocObject();
  *(v232 + 16) = xmmword_1BE0B6CA0;
  *(v232 + 32) = v42;
  *(v232 + 40) = v617;
  v564 = v617;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1253 = 0u;
  v1252 = 0u;
  v1251 = 0u;
  memset(&v1254[8], 0, 48);
  *v1254 = v227;
  *&v1254[56] = v232;
  memset(v1255, 0, sizeof(v1255));
  v1257 = 0u;
  v1258 = 0u;
  v1259 = 0u;
  v1256 = v227;
  v1260 = v232;
  sub_1BD289374(&v1251, v2604);
  sub_1BD2893D0(v1255);
  v233 = v1253;
  *(v51 + 5728) = *v1254;
  v234 = *&v1254[32];
  *(v51 + 5744) = *&v1254[16];
  *(v51 + 5760) = v234;
  *(v51 + 5776) = *&v1254[48];
  v235 = v1252;
  *(v51 + 5680) = v1251;
  *(v51 + 5696) = v235;
  *(v51 + 5712) = v233;
  *(v51 + 5792) = 0xD000000000000017;
  *(v51 + 5800) = 0x80000001BE141600;
  v562 = v613;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v1261 = v628;
  *(&v1261 + 1) = v613;
  memset(&v1262[8], 0, 32);
  *v1262 = v5;
  *&v1262[40] = v628;
  *&v1263 = v46;
  *(&v1263 + 1) = v5;
  v1264 = 0u;
  v1265 = 0u;
  v1266[0] = v628;
  v1266[1] = v613;
  v1267 = 0u;
  v1268 = 0u;
  v1266[2] = v5;
  v1269 = v628;
  v1270 = v46;
  v1271 = v5;
  v1273 = 0u;
  v1272 = 0u;
  sub_1BD289374(&v1261, v2604);
  sub_1BD2893D0(v1266);
  v236 = *&v1262[16];
  *(v51 + 5856) = *&v1262[32];
  v237 = v1264;
  *(v51 + 5872) = v1263;
  *(v51 + 5888) = v237;
  *(v51 + 5904) = v1265;
  v238 = *v1262;
  *(v51 + 5808) = v1261;
  *(v51 + 5824) = v238;
  *(v51 + 5840) = v236;
  *(v51 + 5920) = 0x6143746964657263;
  *(v51 + 5928) = 0xEA00000000006472;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1274 = v628;
  memset(&v1275[8], 0, 32);
  *v1275 = v5;
  *&v1275[40] = v628;
  *&v1276 = 0;
  *(&v1276 + 1) = v5;
  v1277 = 0u;
  v1278 = 0u;
  v1279[0] = v628;
  v1279[1] = 0;
  v1280 = 0u;
  v1281 = 0u;
  v1279[2] = v5;
  v1282 = v628;
  v1283 = 0;
  v1284 = v5;
  v1286 = 0u;
  v1285 = 0u;
  sub_1BD289374(&v1274, v2604);
  sub_1BD2893D0(v1279);
  v239 = *&v1275[16];
  *(v51 + 5984) = *&v1275[32];
  v240 = v1277;
  *(v51 + 6000) = v1276;
  *(v51 + 6016) = v240;
  *(v51 + 6032) = v1278;
  v241 = *v1275;
  *(v51 + 5936) = v1274;
  *(v51 + 5952) = v241;
  *(v51 + 5968) = v239;
  *(v51 + 6048) = 0xD000000000000014;
  *(v51 + 6056) = 0x80000001BE141620;
  v561 = v559;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1287 = v559;
  memset(&v1288[8], 0, 32);
  *v1288 = v5;
  *&v1288[40] = v559;
  *&v1289 = 0;
  *(&v1289 + 1) = v5;
  v1290 = 0u;
  v1291 = 0u;
  v1292[0] = v559;
  v1292[1] = 0;
  v1293 = 0u;
  v1294 = 0u;
  v1292[2] = v5;
  v1295 = v559;
  v1296 = 0;
  v1297 = v5;
  v1299 = 0u;
  v1298 = 0u;
  sub_1BD289374(&v1287, v2604);
  sub_1BD2893D0(v1292);
  v242 = *&v1288[16];
  *(v51 + 6112) = *&v1288[32];
  v243 = v1290;
  *(v51 + 6128) = v1289;
  *(v51 + 6144) = v243;
  *(v51 + 6160) = v1291;
  v244 = *v1288;
  *(v51 + 6064) = v1287;
  *(v51 + 6080) = v244;
  *(v51 + 6096) = v242;
  *(v51 + 6176) = 0xD000000000000019;
  *(v51 + 6184) = 0x80000001BE141640;
  v245 = swift_allocObject();
  *(v245 + 16) = xmmword_1BE0B6CA0;
  *(v245 + 32) = v5;
  *(v245 + 40) = v609;
  v246 = v609;
  v247 = swift_allocObject();
  *(v247 + 16) = xmmword_1BE0B6CA0;
  *(v247 + 32) = v5;
  *(v247 + 40) = v609;
  v560 = v246;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1302 = 0u;
  v1301 = 0u;
  v1300 = 0u;
  memset(&v1303[8], 0, 48);
  *v1303 = v245;
  *&v1303[56] = v247;
  memset(v1304, 0, sizeof(v1304));
  v1306 = 0u;
  v1307 = 0u;
  v1308 = 0u;
  v1305 = v245;
  v1309 = v247;
  sub_1BD289374(&v1300, v2604);
  sub_1BD2893D0(v1304);
  v248 = v1302;
  *(v51 + 6240) = *v1303;
  v249 = *&v1303[32];
  *(v51 + 6256) = *&v1303[16];
  *(v51 + 6272) = v249;
  *(v51 + 6288) = *&v1303[48];
  v250 = v1301;
  *(v51 + 6192) = v1300;
  *(v51 + 6208) = v250;
  *(v51 + 6224) = v248;
  *(v51 + 6304) = 0xD000000000000018;
  *(v51 + 6312) = 0x80000001BE141660;
  v558 = v607;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1310 = v607;
  memset(&v1311[8], 0, 32);
  *v1311 = v609;
  *&v1311[40] = v607;
  *&v1312 = 0;
  *(&v1312 + 1) = v609;
  v1313 = 0u;
  v1314 = 0u;
  v1315[0] = v607;
  v1315[1] = 0;
  v1316 = 0u;
  v1317 = 0u;
  v1315[2] = v609;
  v1318 = v607;
  v1319 = 0;
  v1320 = v609;
  v1322 = 0u;
  v1321 = 0u;
  sub_1BD289374(&v1310, v2604);
  sub_1BD2893D0(v1315);
  v251 = *&v1311[16];
  *(v51 + 6368) = *&v1311[32];
  v252 = v1313;
  *(v51 + 6384) = v1312;
  *(v51 + 6400) = v252;
  *(v51 + 6416) = v1314;
  v253 = *v1311;
  *(v51 + 6320) = v1310;
  *(v51 + 6336) = v253;
  *(v51 + 6352) = v251;
  *(v51 + 6432) = 0xD000000000000015;
  *(v51 + 6440) = 0x80000001BE141680;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1323 = v607;
  memset(&v1324[8], 0, 32);
  *v1324 = v5;
  *&v1324[40] = v607;
  *&v1325 = 0;
  *(&v1325 + 1) = v5;
  v1326 = 0u;
  v1327 = 0u;
  v1328[0] = v607;
  v1328[1] = 0;
  v1329 = 0u;
  v1330 = 0u;
  v1328[2] = v5;
  v1331 = v607;
  v1332 = 0;
  v1333 = v5;
  v1335 = 0u;
  v1334 = 0u;
  sub_1BD289374(&v1323, v2604);
  sub_1BD2893D0(v1328);
  v254 = *&v1324[16];
  *(v51 + 6496) = *&v1324[32];
  v255 = v1326;
  *(v51 + 6512) = v1325;
  *(v51 + 6528) = v255;
  *(v51 + 6544) = v1327;
  v256 = *v1324;
  *(v51 + 6448) = v1323;
  *(v51 + 6464) = v256;
  *(v51 + 6480) = v254;
  *(v51 + 6560) = 0xD00000000000001ELL;
  *(v51 + 6568) = 0x80000001BE1416A0;
  v257 = swift_allocObject();
  *(v257 + 16) = xmmword_1BE0B6CA0;
  *(v257 + 32) = v5;
  *(v257 + 40) = v555;
  v557 = v555;
  v258 = swift_allocObject();
  *(v258 + 16) = xmmword_1BE0B6CA0;
  *(v258 + 32) = v5;
  *(v258 + 40) = v555;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1338 = 0u;
  v1337 = 0u;
  v1336 = 0u;
  memset(&v1339[8], 0, 48);
  *v1339 = v257;
  *&v1339[56] = v258;
  memset(v1340, 0, sizeof(v1340));
  v1342 = 0u;
  v1343 = 0u;
  v1344 = 0u;
  v1341 = v257;
  v1345 = v258;
  sub_1BD289374(&v1336, v2604);
  sub_1BD2893D0(v1340);
  v259 = v1338;
  *(v51 + 6624) = *v1339;
  v260 = *&v1339[32];
  *(v51 + 6640) = *&v1339[16];
  *(v51 + 6656) = v260;
  *(v51 + 6672) = *&v1339[48];
  v261 = v1337;
  *(v51 + 6576) = v1336;
  *(v51 + 6592) = v261;
  *(v51 + 6608) = v259;
  *(v51 + 6688) = 0xD000000000000014;
  *(v51 + 6696) = 0x80000001BE1416C0;
  v556 = v554;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1346 = v554;
  memset(&v1347[8], 0, 32);
  *v1347 = v5;
  *&v1347[40] = v554;
  *&v1348 = 0;
  *(&v1348 + 1) = v5;
  v1349 = 0u;
  v1350 = 0u;
  v1351[0] = v554;
  v1351[1] = 0;
  v1352 = 0u;
  v1353 = 0u;
  v1351[2] = v5;
  v1354 = v554;
  v1355 = 0;
  v1356 = v5;
  v1358 = 0u;
  v1357 = 0u;
  sub_1BD289374(&v1346, v2604);
  sub_1BD2893D0(v1351);
  v262 = *&v1347[16];
  *(v51 + 6752) = *&v1347[32];
  v263 = v1349;
  *(v51 + 6768) = v1348;
  *(v51 + 6784) = v263;
  *(v51 + 6800) = v1350;
  v264 = *v1347;
  *(v51 + 6704) = v1346;
  *(v51 + 6720) = v264;
  *(v51 + 6736) = v262;
  *(v51 + 6816) = 0xD00000000000001CLL;
  *(v51 + 6824) = 0x80000001BE1416E0;
  v265 = swift_allocObject();
  *(v265 + 16) = xmmword_1BE0B98E0;
  *(v265 + 32) = v42;
  *(v265 + 40) = v609;
  *(v265 + 48) = v42;
  *(v265 + 56) = v42;
  v266 = swift_allocObject();
  *(v266 + 16) = xmmword_1BE0B98E0;
  *(v266 + 32) = v42;
  *(v266 + 40) = v609;
  *(v266 + 48) = v42;
  *(v266 + 56) = v42;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1361 = 0u;
  v1360 = 0u;
  v1359 = 0u;
  memset(&v1362[8], 0, 48);
  *v1362 = v265;
  *&v1362[56] = v266;
  memset(v1363, 0, sizeof(v1363));
  v1365 = 0u;
  v1366 = 0u;
  v1367 = 0u;
  v1364 = v265;
  v1368 = v266;
  sub_1BD289374(&v1359, v2604);
  sub_1BD2893D0(v1363);
  v267 = v1361;
  *(v51 + 6880) = *v1362;
  v268 = *&v1362[32];
  *(v51 + 6896) = *&v1362[16];
  *(v51 + 6912) = v268;
  *(v51 + 6928) = *&v1362[48];
  v269 = v1360;
  *(v51 + 6832) = v1359;
  *(v51 + 6848) = v269;
  *(v51 + 6864) = v267;
  *(v51 + 6944) = 0xD000000000000010;
  *(v51 + 6952) = 0x80000001BE141700;
  v270 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.65 green:0.65 blue:0.65 alpha:1.0];
  v271 = [v270 CGColor];

  v272 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.65 green:0.65 blue:0.65 alpha:1.0];
  v273 = [v272 CGColor];

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v1369 = v607;
  *(&v1369 + 1) = v271;
  memset(&v1370[8], 0, 32);
  *v1370 = v5;
  *&v1370[40] = v607;
  *&v1371 = v273;
  *(&v1371 + 1) = v5;
  v1372 = 0u;
  v1373 = 0u;
  v1374[0] = v607;
  v1374[1] = v271;
  v1374[2] = v5;
  v1375 = 0u;
  v1376 = 0u;
  v1377 = v607;
  v1378 = v273;
  v1379 = v5;
  v1381 = 0u;
  v1380 = 0u;
  sub_1BD289374(&v1369, v2604);
  sub_1BD2893D0(v1374);
  v274 = *&v1370[16];
  *(v51 + 7008) = *&v1370[32];
  v275 = v1372;
  *(v51 + 7024) = v1371;
  *(v51 + 7040) = v275;
  *(v51 + 7056) = v1373;
  v276 = *v1370;
  *(v51 + 6960) = v1369;
  *(v51 + 6976) = v276;
  *(v51 + 6992) = v274;
  *(v51 + 7072) = 0xD000000000000010;
  *(v51 + 7080) = 0x80000001BE141720;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1388 = 0u;
  v1387 = 0u;
  v1386 = 0u;
  v1385 = 0u;
  v1384 = 0u;
  v1383 = 0u;
  v1382 = 0u;
  memset(v1389, 0, sizeof(v1389));
  sub_1BD289374(&v1382, v2604);
  sub_1BD2893D0(v1389);
  v277 = v1384;
  *(v51 + 7136) = v1385;
  v278 = v1387;
  *(v51 + 7152) = v1386;
  *(v51 + 7168) = v278;
  *(v51 + 7184) = v1388;
  v279 = v1383;
  *(v51 + 7088) = v1382;
  *(v51 + 7104) = v279;
  *(v51 + 7120) = v277;
  *(v51 + 7200) = 0xD000000000000014;
  *(v51 + 7208) = 0x80000001BE140BB0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1391 = 0u;
  v1390 = 0u;
  *&v1392 = 0;
  *(&v1392 + 1) = v609;
  v1393 = 0u;
  v1394 = 0u;
  v1395 = 0u;
  v1396 = v609;
  memset(v1397, 0, sizeof(v1397));
  v1398 = 0;
  v1399 = v609;
  v1400 = 0u;
  v1401 = 0u;
  v1402 = 0u;
  v1403 = v609;
  v1404 = 0;
  sub_1BD289374(&v1390, v2604);
  sub_1BD2893D0(v1397);
  v280 = v1392;
  *(v51 + 7264) = v1393;
  v281 = v1395;
  *(v51 + 7280) = v1394;
  *(v51 + 7296) = v281;
  *(v51 + 7312) = v1396;
  v282 = v1391;
  *(v51 + 7216) = v1390;
  *(v51 + 7232) = v282;
  *(v51 + 7248) = v280;
  *(v51 + 7328) = 0xD000000000000015;
  *(v51 + 7336) = 0x80000001BE141740;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1405 = v609;
  memset(&v1406[8], 0, 32);
  *v1406 = v5;
  *&v1406[40] = v609;
  *&v1407 = 0;
  *(&v1407 + 1) = v5;
  v1408 = 0u;
  v1409 = 0u;
  v1410[0] = v609;
  v1410[1] = 0;
  v1411 = 0u;
  v1412 = 0u;
  v1410[2] = v5;
  v1413 = v609;
  v1414 = 0;
  v1415 = v5;
  v1417 = 0u;
  v1416 = 0u;
  sub_1BD289374(&v1405, v2604);
  sub_1BD2893D0(v1410);
  v283 = *&v1406[16];
  *(v51 + 7392) = *&v1406[32];
  v284 = v1408;
  *(v51 + 7408) = v1407;
  *(v51 + 7424) = v284;
  *(v51 + 7440) = v1409;
  v285 = *v1406;
  *(v51 + 7344) = v1405;
  *(v51 + 7360) = v285;
  *(v51 + 7376) = v283;
  *(v51 + 7456) = 0xD000000000000015;
  *(v51 + 7464) = 0x80000001BE141760;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1418 = v609;
  memset(&v1419[8], 0, 32);
  *v1419 = v5;
  *&v1419[40] = v609;
  *&v1420 = 0;
  *(&v1420 + 1) = v5;
  v1421 = 0u;
  v1422 = 0u;
  v1423[0] = v609;
  v1423[1] = 0;
  v1424 = 0u;
  v1425 = 0u;
  v1423[2] = v5;
  v1426 = v609;
  v1427 = 0;
  v1428 = v5;
  v1430 = 0u;
  v1429 = 0u;
  sub_1BD289374(&v1418, v2604);
  sub_1BD2893D0(v1423);
  v286 = *&v1419[16];
  *(v51 + 7520) = *&v1419[32];
  v287 = v1421;
  *(v51 + 7536) = v1420;
  *(v51 + 7552) = v287;
  *(v51 + 7568) = v1422;
  v288 = *v1419;
  *(v51 + 7472) = v1418;
  *(v51 + 7488) = v288;
  *(v51 + 7504) = v286;
  *(v51 + 7584) = 0xD000000000000015;
  *(v51 + 7592) = 0x80000001BE141780;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1431 = v609;
  memset(&v1432[8], 0, 32);
  *v1432 = v5;
  *&v1432[40] = v609;
  *&v1433 = 0;
  *(&v1433 + 1) = v5;
  v1434 = 0u;
  v1435 = 0u;
  v1436[0] = v609;
  v1436[1] = 0;
  v1437 = 0u;
  v1438 = 0u;
  v1436[2] = v5;
  v1439 = v609;
  v1440 = 0;
  v1441 = v5;
  v1443 = 0u;
  v1442 = 0u;
  sub_1BD289374(&v1431, v2604);
  sub_1BD2893D0(v1436);
  v289 = *&v1432[16];
  *(v51 + 7648) = *&v1432[32];
  v290 = v1434;
  *(v51 + 7664) = v1433;
  *(v51 + 7680) = v290;
  *(v51 + 7696) = v1435;
  v291 = *v1432;
  *(v51 + 7600) = v1431;
  *(v51 + 7616) = v291;
  *(v51 + 7632) = v289;
  *(v51 + 7712) = 0xD000000000000015;
  *(v51 + 7720) = 0x80000001BE1417A0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1444 = v609;
  memset(&v1445[8], 0, 32);
  *v1445 = v5;
  *&v1445[40] = v609;
  *&v1446 = 0;
  *(&v1446 + 1) = v5;
  v1447 = 0u;
  v1448 = 0u;
  v1449[0] = v609;
  v1449[1] = 0;
  v1450 = 0u;
  v1451 = 0u;
  v1449[2] = v5;
  v1452 = v609;
  v1453 = 0;
  v1454 = v5;
  v1456 = 0u;
  v1455 = 0u;
  sub_1BD289374(&v1444, v2604);
  sub_1BD2893D0(v1449);
  v292 = *&v1445[16];
  *(v51 + 7776) = *&v1445[32];
  v293 = v1447;
  *(v51 + 7792) = v1446;
  *(v51 + 7808) = v293;
  *(v51 + 7824) = v1448;
  v294 = *v1445;
  *(v51 + 7728) = v1444;
  *(v51 + 7744) = v294;
  *(v51 + 7760) = v292;
  *(v51 + 7840) = 0x6C6C69466F747561;
  *(v51 + 7848) = 0xEA00000000003230;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1457 = v628;
  memset(&v1458[8], 0, 32);
  *v1458 = v5;
  *&v1458[40] = v628;
  *&v1459 = 0;
  *(&v1459 + 1) = v5;
  v1460 = 0u;
  v1461 = 0u;
  v1462[0] = v628;
  v1462[1] = 0;
  v1463 = 0u;
  v1464 = 0u;
  v1462[2] = v5;
  v1465 = v628;
  v1466 = 0;
  v1467 = v5;
  v1469 = 0u;
  v1468 = 0u;
  sub_1BD289374(&v1457, v2604);
  sub_1BD2893D0(v1462);
  v295 = *&v1458[16];
  *(v51 + 7904) = *&v1458[32];
  v296 = v1460;
  *(v51 + 7920) = v1459;
  *(v51 + 7936) = v296;
  *(v51 + 7952) = v1461;
  v297 = *v1458;
  *(v51 + 7856) = v1457;
  *(v51 + 7872) = v297;
  *(v51 + 7888) = v295;
  *(v51 + 7968) = 0xD00000000000001BLL;
  *(v51 + 7976) = 0x80000001BE1417C0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1470 = v628;
  memset(&v1471[8], 0, 32);
  *v1471 = v5;
  *&v1471[40] = v628;
  *&v1472 = 0;
  *(&v1472 + 1) = v5;
  v1473 = 0u;
  v1474 = 0u;
  v1475[0] = v628;
  v1475[1] = 0;
  v1476 = 0u;
  v1477 = 0u;
  v1475[2] = v5;
  v1478 = v628;
  v1479 = 0;
  v1480 = v5;
  v1482 = 0u;
  v1481 = 0u;
  sub_1BD289374(&v1470, v2604);
  sub_1BD2893D0(v1475);
  v298 = *&v1471[16];
  *(v51 + 8032) = *&v1471[32];
  v299 = v1473;
  *(v51 + 8048) = v1472;
  *(v51 + 8064) = v299;
  *(v51 + 8080) = v1474;
  v300 = *v1471;
  *(v51 + 7984) = v1470;
  *(v51 + 8000) = v300;
  *(v51 + 8016) = v298;
  *(v51 + 8096) = 0xD000000000000019;
  *(v51 + 8104) = 0x80000001BE1417E0;
  v301 = swift_allocObject();
  *(v301 + 16) = xmmword_1BE0B6CA0;
  *(v301 + 32) = v621;
  *(v301 + 40) = v625;
  v302 = swift_allocObject();
  *(v302 + 16) = xmmword_1BE0B6CA0;
  *(v302 + 32) = v623;
  *(v302 + 40) = v622;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1485 = 0u;
  v1484 = 0u;
  v1483 = 0u;
  memset(&v1486[8], 0, 48);
  *v1486 = v301;
  *&v1486[56] = v302;
  memset(v1487, 0, sizeof(v1487));
  v1489 = 0u;
  v1490 = 0u;
  v1491 = 0u;
  v1488 = v301;
  v1492 = v302;
  sub_1BD289374(&v1483, v2604);
  sub_1BD2893D0(v1487);
  v303 = v1485;
  *(v51 + 8160) = *v1486;
  v304 = *&v1486[32];
  *(v51 + 8176) = *&v1486[16];
  *(v51 + 0x2000) = v304;
  *(v51 + 8208) = *&v1486[48];
  v305 = v1484;
  *(v51 + 8112) = v1483;
  *(v51 + 8128) = v305;
  *(v51 + 8144) = v303;
  *(v51 + 8224) = 0xD00000000000001BLL;
  *(v51 + 8232) = 0x80000001BE141800;
  v610 = v565;
  v608 = v563;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v1493 = v565;
  *(&v1493 + 1) = v616;
  memset(&v1494[8], 0, 32);
  *v1494 = v5;
  *&v1494[40] = v563;
  *&v1495 = v616;
  *(&v1495 + 1) = v5;
  v1496 = 0u;
  v1497 = 0u;
  v1498[0] = v565;
  v1498[1] = v616;
  v1499 = 0u;
  v1500 = 0u;
  v1498[2] = v5;
  v1501 = v563;
  v1502 = v616;
  v1503 = v5;
  v1505 = 0u;
  v1504 = 0u;
  sub_1BD289374(&v1493, v2604);
  sub_1BD2893D0(v1498);
  v306 = *&v1494[16];
  *(v51 + 8288) = *&v1494[32];
  v307 = v1496;
  *(v51 + 8304) = v1495;
  *(v51 + 8320) = v307;
  *(v51 + 8336) = v1497;
  v308 = *v1494;
  *(v51 + 8240) = v1493;
  *(v51 + 8256) = v308;
  *(v51 + 8272) = v306;
  *(v51 + 8352) = 0xD000000000000023;
  *(v51 + 8360) = 0x80000001BE141820;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1506 = v615;
  memset(&v1507[8], 0, 32);
  *v1507 = v5;
  *&v1507[40] = v615;
  *&v1508 = 0;
  *(&v1508 + 1) = v5;
  v1509 = 0u;
  v1510 = 0u;
  v1511[0] = v615;
  v1511[1] = 0;
  v1512 = 0u;
  v1513 = 0u;
  v1511[2] = v5;
  v1514 = v615;
  v1515 = 0;
  v1516 = v5;
  v1518 = 0u;
  v1517 = 0u;
  sub_1BD289374(&v1506, v2604);
  sub_1BD2893D0(v1511);
  v309 = *&v1507[16];
  *(v51 + 8416) = *&v1507[32];
  v310 = v1509;
  *(v51 + 8432) = v1508;
  *(v51 + 8448) = v310;
  *(v51 + 8464) = v1510;
  v311 = *v1507;
  *(v51 + 8368) = v1506;
  *(v51 + 8384) = v311;
  *(v51 + 8400) = v309;
  *(v51 + 8480) = 0xD000000000000037;
  *(v51 + 8488) = 0x80000001BE141850;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1519[8], 0, 32);
  *v1519 = v602;
  *&v1519[40] = v553;
  *&v1520 = 0;
  *(&v1520 + 1) = v606;
  v1521 = 0u;
  v1522 = 0u;
  v1523 = v603;
  v1525 = 0u;
  v1526 = 0u;
  v1524 = v602;
  v1527 = v553;
  v1528 = 0;
  v1529 = v606;
  v1530 = 0u;
  v1531 = 0u;
  v1532 = v603;
  v1533 = 0;
  sub_1BD289374(v1519, v2604);
  sub_1BD2893D0(&v1524);
  v312 = *&v1519[32];
  *(v51 + 8544) = v1520;
  v313 = v1522;
  *(v51 + 8560) = v1521;
  *(v51 + 8576) = v313;
  *(v51 + 8592) = v1523;
  v314 = *&v1519[16];
  *(v51 + 8496) = *v1519;
  *(v51 + 8512) = v314;
  *(v51 + 8528) = v312;
  *(v51 + 8608) = 0xD000000000000037;
  *(v51 + 8616) = 0x80000001BE141890;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1534[8], 0, 32);
  *v1534 = v602;
  *&v1534[40] = v553;
  *&v1535 = 0;
  *(&v1535 + 1) = v606;
  v1536 = 0u;
  v1537 = 0u;
  v1538 = v603;
  v1540 = 0u;
  v1541 = 0u;
  v1539 = v602;
  v1542 = v553;
  v1543 = 0;
  v1544 = v606;
  v1545 = 0u;
  v1546 = 0u;
  v1547 = v603;
  v1548 = 0;
  sub_1BD289374(v1534, v2604);
  sub_1BD2893D0(&v1539);
  v315 = *&v1534[32];
  *(v51 + 8672) = v1535;
  v316 = v1537;
  *(v51 + 8688) = v1536;
  *(v51 + 8704) = v316;
  *(v51 + 8720) = v1538;
  v317 = *&v1534[16];
  *(v51 + 8624) = *v1534;
  *(v51 + 8640) = v317;
  *(v51 + 8656) = v315;
  *(v51 + 8736) = 0xD000000000000037;
  *(v51 + 8744) = 0x80000001BE1418D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1549[8], 0, 32);
  *v1549 = v602;
  *&v1549[40] = v553;
  *&v1550 = 0;
  *(&v1550 + 1) = v606;
  v1551 = 0u;
  v1552 = 0u;
  v1553 = v603;
  v1555 = 0u;
  v1556 = 0u;
  v1554 = v602;
  v1557 = v553;
  v1558 = 0;
  v1559 = v606;
  v1560 = 0u;
  v1561 = 0u;
  v1562 = v603;
  v1563 = 0;
  sub_1BD289374(v1549, v2604);
  sub_1BD2893D0(&v1554);
  v318 = *&v1549[32];
  *(v51 + 8800) = v1550;
  v319 = v1552;
  *(v51 + 8816) = v1551;
  *(v51 + 8832) = v319;
  *(v51 + 8848) = v1553;
  v320 = *&v1549[16];
  *(v51 + 8752) = *v1549;
  *(v51 + 8768) = v320;
  *(v51 + 8784) = v318;
  *(v51 + 8864) = 0xD00000000000002FLL;
  *(v51 + 8872) = 0x80000001BE141910;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1564 = v553;
  memset(&v1565[8], 0, 32);
  *v1565 = v5;
  *&v1565[40] = v603;
  *&v1566 = 0;
  *(&v1566 + 1) = v5;
  v1567 = 0u;
  v1568 = 0u;
  v1569[0] = v553;
  v1569[1] = 0;
  v1570 = 0u;
  v1571 = 0u;
  v1569[2] = v5;
  v1572 = v603;
  v1573 = 0;
  v1574 = v5;
  v1576 = 0u;
  v1575 = 0u;
  sub_1BD289374(&v1564, v2604);
  sub_1BD2893D0(v1569);
  v321 = *&v1565[16];
  *(v51 + 8928) = *&v1565[32];
  v322 = v1567;
  *(v51 + 8944) = v1566;
  *(v51 + 8960) = v322;
  *(v51 + 8976) = v1568;
  v323 = *v1565;
  *(v51 + 8880) = v1564;
  *(v51 + 8896) = v323;
  *(v51 + 8912) = v321;
  *(v51 + 8992) = 0xD000000000000037;
  *(v51 + 9000) = 0x80000001BE141940;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1577[8], 0, 32);
  *v1577 = v602;
  *&v1577[40] = v553;
  *&v1578 = 0;
  *(&v1578 + 1) = v606;
  v1579 = 0u;
  v1580 = 0u;
  v1581 = v603;
  v1583 = 0u;
  v1584 = 0u;
  v1582 = v602;
  v1585 = v553;
  v1586 = 0;
  v1587 = v606;
  v1588 = 0u;
  v1589 = 0u;
  v1590 = v603;
  v1591 = 0;
  sub_1BD289374(v1577, v2604);
  sub_1BD2893D0(&v1582);
  v324 = *&v1577[32];
  *(v51 + 9056) = v1578;
  v325 = v1580;
  *(v51 + 9072) = v1579;
  *(v51 + 9088) = v325;
  *(v51 + 9104) = v1581;
  v326 = *&v1577[16];
  *(v51 + 9008) = *v1577;
  *(v51 + 9024) = v326;
  *(v51 + 9040) = v324;
  *(v51 + 9120) = 0xD000000000000037;
  *(v51 + 9128) = 0x80000001BE141980;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1592[8], 0, 32);
  *v1592 = v602;
  *&v1592[40] = v553;
  *&v1593 = 0;
  *(&v1593 + 1) = v606;
  v1594 = 0u;
  v1595 = 0u;
  v1596 = v603;
  v1598 = 0u;
  v1599 = 0u;
  v1597 = v602;
  v1600 = v553;
  v1601 = 0;
  v1602 = v606;
  v1603 = 0u;
  v1604 = 0u;
  v1605 = v603;
  v1606 = 0;
  sub_1BD289374(v1592, v2604);
  sub_1BD2893D0(&v1597);
  v327 = *&v1592[32];
  *(v51 + 9184) = v1593;
  v328 = v1595;
  *(v51 + 9200) = v1594;
  *(v51 + 9216) = v328;
  *(v51 + 9232) = v1596;
  v329 = *&v1592[16];
  *(v51 + 9136) = *v1592;
  *(v51 + 9152) = v329;
  *(v51 + 9168) = v327;
  *(v51 + 9248) = 0xD000000000000037;
  *(v51 + 9256) = 0x80000001BE1419C0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1607[8], 0, 32);
  *v1607 = v602;
  *&v1607[40] = v553;
  *&v1608 = 0;
  *(&v1608 + 1) = v606;
  v1609 = 0u;
  v1610 = 0u;
  v1611 = v603;
  v1613 = 0u;
  v1614 = 0u;
  v1612 = v602;
  v1615 = v553;
  v1616 = 0;
  v1617 = v606;
  v1618 = 0u;
  v1619 = 0u;
  v1620 = v603;
  v1621 = 0;
  sub_1BD289374(v1607, v2604);
  sub_1BD2893D0(&v1612);
  v330 = *&v1607[32];
  *(v51 + 9312) = v1608;
  v331 = v1610;
  *(v51 + 9328) = v1609;
  *(v51 + 9344) = v331;
  *(v51 + 9360) = v1611;
  v332 = *&v1607[16];
  *(v51 + 9264) = *v1607;
  *(v51 + 9280) = v332;
  *(v51 + 9296) = v330;
  *(v51 + 9376) = 0xD00000000000002FLL;
  *(v51 + 9384) = 0x80000001BE141A00;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1622 = v553;
  memset(&v1623[8], 0, 32);
  *v1623 = v5;
  *&v1623[40] = v603;
  *&v1624 = 0;
  *(&v1624 + 1) = v5;
  v1625 = 0u;
  v1626 = 0u;
  v1627[0] = v553;
  v1627[1] = 0;
  v1628 = 0u;
  v1629 = 0u;
  v1627[2] = v5;
  v1630 = v603;
  v1631 = 0;
  v1632 = v5;
  v1634 = 0u;
  v1633 = 0u;
  sub_1BD289374(&v1622, v2604);
  sub_1BD2893D0(v1627);
  v333 = *&v1623[16];
  *(v51 + 9440) = *&v1623[32];
  v334 = v1625;
  *(v51 + 9456) = v1624;
  *(v51 + 9472) = v334;
  *(v51 + 9488) = v1626;
  v335 = *v1623;
  *(v51 + 9392) = v1622;
  *(v51 + 9408) = v335;
  *(v51 + 9424) = v333;
  *(v51 + 9504) = 0xD000000000000037;
  *(v51 + 9512) = 0x80000001BE141A30;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1635[8], 0, 32);
  *v1635 = v602;
  *&v1635[40] = v553;
  *&v1636 = 0;
  *(&v1636 + 1) = v606;
  v1637 = 0u;
  v1638 = 0u;
  v1639 = v603;
  v1641 = 0u;
  v1642 = 0u;
  v1640 = v602;
  v1643 = v553;
  v1644 = 0;
  v1645 = v606;
  v1646 = 0u;
  v1647 = 0u;
  v1648 = v603;
  v1649 = 0;
  sub_1BD289374(v1635, v2604);
  sub_1BD2893D0(&v1640);
  v336 = *&v1635[32];
  *(v51 + 9568) = v1636;
  v337 = v1638;
  *(v51 + 9584) = v1637;
  *(v51 + 9600) = v337;
  *(v51 + 9616) = v1639;
  v338 = *&v1635[16];
  *(v51 + 9520) = *v1635;
  *(v51 + 9536) = v338;
  *(v51 + 9552) = v336;
  *(v51 + 9632) = 0xD000000000000037;
  *(v51 + 9640) = 0x80000001BE141A70;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1650[8], 0, 32);
  *v1650 = v602;
  *&v1650[40] = v553;
  *&v1651 = 0;
  *(&v1651 + 1) = v606;
  v1652 = 0u;
  v1653 = 0u;
  v1654 = v603;
  v1656 = 0u;
  v1657 = 0u;
  v1655 = v602;
  v1658 = v553;
  v1659 = 0;
  v1660 = v606;
  v1661 = 0u;
  v1662 = 0u;
  v1663 = v603;
  v1664 = 0;
  sub_1BD289374(v1650, v2604);
  sub_1BD2893D0(&v1655);
  v339 = *&v1650[32];
  *(v51 + 9696) = v1651;
  v340 = v1653;
  *(v51 + 9712) = v1652;
  *(v51 + 9728) = v340;
  *(v51 + 9744) = v1654;
  v341 = *&v1650[16];
  *(v51 + 9648) = *v1650;
  *(v51 + 9664) = v341;
  *(v51 + 9680) = v339;
  *(v51 + 9760) = 0xD000000000000037;
  *(v51 + 9768) = 0x80000001BE141AB0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1665[8], 0, 32);
  *v1665 = v602;
  *&v1665[40] = v553;
  *&v1666 = 0;
  *(&v1666 + 1) = v606;
  v1667 = 0u;
  v1668 = 0u;
  v1669 = v603;
  v1671 = 0u;
  v1672 = 0u;
  v1670 = v602;
  v1673 = v553;
  v1674 = 0;
  v1675 = v606;
  v1676 = 0u;
  v1677 = 0u;
  v1678 = v603;
  v1679 = 0;
  sub_1BD289374(v1665, v2604);
  sub_1BD2893D0(&v1670);
  v342 = *&v1665[32];
  *(v51 + 9824) = v1666;
  v343 = v1668;
  *(v51 + 9840) = v1667;
  *(v51 + 9856) = v343;
  *(v51 + 9872) = v1669;
  v344 = *&v1665[16];
  *(v51 + 9776) = *v1665;
  *(v51 + 9792) = v344;
  *(v51 + 9808) = v342;
  *(v51 + 9888) = 0xD00000000000002FLL;
  *(v51 + 9896) = 0x80000001BE141AF0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1680 = v553;
  memset(&v1681[8], 0, 32);
  *v1681 = v5;
  *&v1681[40] = v603;
  *&v1682 = 0;
  *(&v1682 + 1) = v5;
  v1683 = 0u;
  v1684 = 0u;
  v1685[0] = v553;
  v1685[1] = 0;
  v1686 = 0u;
  v1687 = 0u;
  v1685[2] = v5;
  v1688 = v603;
  v1689 = 0;
  v1690 = v5;
  v1692 = 0u;
  v1691 = 0u;
  sub_1BD289374(&v1680, v2604);
  sub_1BD2893D0(v1685);
  v345 = *&v1681[16];
  *(v51 + 9952) = *&v1681[32];
  v346 = v1683;
  *(v51 + 9968) = v1682;
  *(v51 + 9984) = v346;
  *(v51 + 10000) = v1684;
  v347 = *v1681;
  *(v51 + 9904) = v1680;
  *(v51 + 9920) = v347;
  *(v51 + 9936) = v345;
  *(v51 + 10016) = 0xD000000000000037;
  *(v51 + 10024) = 0x80000001BE141B20;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1693[8], 0, 32);
  *v1693 = v602;
  *&v1693[40] = v553;
  *&v1694 = 0;
  *(&v1694 + 1) = v606;
  v1695 = 0u;
  v1696 = 0u;
  v1697 = v603;
  v1699 = 0u;
  v1700 = 0u;
  v1698 = v602;
  v1701 = v553;
  v1702 = 0;
  v1703 = v606;
  v1704 = 0u;
  v1705 = 0u;
  v1706 = v603;
  v1707 = 0;
  sub_1BD289374(v1693, v2604);
  sub_1BD2893D0(&v1698);
  v348 = *&v1693[32];
  *(v51 + 10080) = v1694;
  v349 = v1696;
  *(v51 + 10096) = v1695;
  *(v51 + 10112) = v349;
  *(v51 + 10128) = v1697;
  v350 = *&v1693[16];
  *(v51 + 10032) = *v1693;
  *(v51 + 10048) = v350;
  *(v51 + 10064) = v348;
  *(v51 + 10144) = 0xD000000000000037;
  *(v51 + 10152) = 0x80000001BE141B60;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1708[8], 0, 32);
  *v1708 = v602;
  *&v1708[40] = v553;
  *&v1709 = 0;
  *(&v1709 + 1) = v606;
  v1710 = 0u;
  v1711 = 0u;
  v1712 = v603;
  v1714 = 0u;
  v1715 = 0u;
  v1713 = v602;
  v1716 = v553;
  v1717 = 0;
  v1718 = v606;
  v1719 = 0u;
  v1720 = 0u;
  v1721 = v603;
  v1722 = 0;
  sub_1BD289374(v1708, v2604);
  sub_1BD2893D0(&v1713);
  v351 = *&v1708[32];
  *(v51 + 10208) = v1709;
  v352 = v1711;
  *(v51 + 10224) = v1710;
  *(v51 + 10240) = v352;
  *(v51 + 10256) = v1712;
  v353 = *&v1708[16];
  *(v51 + 10160) = *v1708;
  *(v51 + 10176) = v353;
  *(v51 + 10192) = v351;
  *(v51 + 10272) = 0xD000000000000037;
  *(v51 + 10280) = 0x80000001BE141BA0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1723[8], 0, 32);
  *v1723 = v602;
  *&v1723[40] = v553;
  *&v1724 = 0;
  *(&v1724 + 1) = v606;
  v1725 = 0u;
  v1726 = 0u;
  v1727 = v603;
  v1729 = 0u;
  v1730 = 0u;
  v1728 = v602;
  v1731 = v553;
  v1732 = 0;
  v1733 = v606;
  v1734 = 0u;
  v1735 = 0u;
  v1736 = v603;
  v1737 = 0;
  sub_1BD289374(v1723, v2604);
  sub_1BD2893D0(&v1728);
  v354 = *&v1723[32];
  *(v51 + 10336) = v1724;
  v355 = v1726;
  *(v51 + 10352) = v1725;
  *(v51 + 10368) = v355;
  *(v51 + 10384) = v1727;
  v356 = *&v1723[16];
  *(v51 + 10288) = *v1723;
  *(v51 + 10304) = v356;
  *(v51 + 10320) = v354;
  *(v51 + 10400) = 0xD00000000000002FLL;
  *(v51 + 10408) = 0x80000001BE141BE0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1738 = v553;
  memset(&v1739[8], 0, 32);
  *v1739 = v5;
  *&v1739[40] = v603;
  *&v1740 = 0;
  *(&v1740 + 1) = v5;
  v1741 = 0u;
  v1742 = 0u;
  v1743[0] = v553;
  v1743[1] = 0;
  v1744 = 0u;
  v1745 = 0u;
  v1743[2] = v5;
  v1746 = v603;
  v1747 = 0;
  v1748 = v5;
  v1750 = 0u;
  v1749 = 0u;
  sub_1BD289374(&v1738, v2604);
  sub_1BD2893D0(v1743);
  v357 = *&v1739[16];
  *(v51 + 10464) = *&v1739[32];
  v358 = v1741;
  *(v51 + 10480) = v1740;
  *(v51 + 10496) = v358;
  *(v51 + 10512) = v1742;
  v359 = *v1739;
  *(v51 + 10416) = v1738;
  *(v51 + 10432) = v359;
  *(v51 + 10448) = v357;
  *(v51 + 10528) = 0xD00000000000003ELL;
  *(v51 + 10536) = 0x80000001BE141C10;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1751[8], 0, 32);
  *v1751 = v602;
  *&v1751[40] = v553;
  *&v1752 = 0;
  *(&v1752 + 1) = v606;
  v1753 = 0u;
  v1754 = 0u;
  v1755 = v603;
  v1757 = 0u;
  v1758 = 0u;
  v1756 = v602;
  v1759 = v553;
  v1760 = 0;
  v1761 = v606;
  v1762 = 0u;
  v1763 = 0u;
  v1764 = v603;
  v1765 = 0;
  sub_1BD289374(v1751, v2604);
  sub_1BD2893D0(&v1756);
  v360 = *&v1751[32];
  *(v51 + 10592) = v1752;
  v361 = v1754;
  *(v51 + 10608) = v1753;
  *(v51 + 10624) = v361;
  *(v51 + 10640) = v1755;
  v362 = *&v1751[16];
  *(v51 + 10544) = *v1751;
  *(v51 + 10560) = v362;
  *(v51 + 10576) = v360;
  *(v51 + 10656) = 0xD00000000000003ELL;
  *(v51 + 10664) = 0x80000001BE141C50;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1766[8], 0, 32);
  *v1766 = v602;
  *&v1766[40] = v553;
  *&v1767 = 0;
  *(&v1767 + 1) = v606;
  v1768 = 0u;
  v1769 = 0u;
  v1770 = v603;
  v1772 = 0u;
  v1773 = 0u;
  v1771 = v602;
  v1774 = v553;
  v1775 = 0;
  v1776 = v606;
  v1777 = 0u;
  v1778 = 0u;
  v1779 = v603;
  v1780 = 0;
  sub_1BD289374(v1766, v2604);
  sub_1BD2893D0(&v1771);
  v363 = *&v1766[32];
  *(v51 + 10720) = v1767;
  v364 = v1769;
  *(v51 + 10736) = v1768;
  *(v51 + 10752) = v364;
  *(v51 + 10768) = v1770;
  v365 = *&v1766[16];
  *(v51 + 10672) = *v1766;
  *(v51 + 10688) = v365;
  *(v51 + 10704) = v363;
  *(v51 + 10784) = 0xD00000000000003ELL;
  *(v51 + 10792) = 0x80000001BE141C90;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1781[8], 0, 32);
  *v1781 = v602;
  *&v1781[40] = v553;
  *&v1782 = 0;
  *(&v1782 + 1) = v606;
  v1783 = 0u;
  v1784 = 0u;
  v1785 = v603;
  v1787 = 0u;
  v1788 = 0u;
  v1786 = v602;
  v1789 = v553;
  v1790 = 0;
  v1791 = v606;
  v1792 = 0u;
  v1793 = 0u;
  v1794 = v603;
  v1795 = 0;
  sub_1BD289374(v1781, v2604);
  sub_1BD2893D0(&v1786);
  v366 = *&v1781[32];
  *(v51 + 10848) = v1782;
  v367 = v1784;
  *(v51 + 10864) = v1783;
  *(v51 + 10880) = v367;
  *(v51 + 10896) = v1785;
  v368 = *&v1781[16];
  *(v51 + 10800) = *v1781;
  *(v51 + 10816) = v368;
  *(v51 + 10832) = v366;
  *(v51 + 10912) = 0xD000000000000036;
  *(v51 + 10920) = 0x80000001BE141CD0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1796[8], 0, 32);
  *v1796 = v602;
  *&v1796[40] = v553;
  *&v1797 = 0;
  *(&v1797 + 1) = v606;
  v1798 = 0u;
  v1799 = 0u;
  v1800 = v603;
  v1802 = 0u;
  v1803 = 0u;
  v1801 = v602;
  v1804 = v553;
  v1805 = 0;
  v1806 = v606;
  v1807 = 0u;
  v1808 = 0u;
  v1809 = v603;
  v1810 = 0;
  sub_1BD289374(v1796, v2604);
  sub_1BD2893D0(&v1801);
  v369 = *&v1796[32];
  *(v51 + 10976) = v1797;
  v370 = v1799;
  *(v51 + 10992) = v1798;
  *(v51 + 11008) = v370;
  *(v51 + 11024) = v1800;
  v371 = *&v1796[16];
  *(v51 + 10928) = *v1796;
  *(v51 + 10944) = v371;
  *(v51 + 10960) = v369;
  *(v51 + 11040) = 0xD00000000000003ELL;
  *(v51 + 11048) = 0x80000001BE141D10;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1811[8], 0, 32);
  *v1811 = v602;
  *&v1811[40] = v553;
  *&v1812 = 0;
  *(&v1812 + 1) = v606;
  v1813 = 0u;
  v1814 = 0u;
  v1815 = v603;
  v1817 = 0u;
  v1818 = 0u;
  v1816 = v602;
  v1819 = v553;
  v1820 = 0;
  v1821 = v606;
  v1822 = 0u;
  v1823 = 0u;
  v1824 = v603;
  v1825 = 0;
  sub_1BD289374(v1811, v2604);
  sub_1BD2893D0(&v1816);
  v372 = *&v1811[32];
  *(v51 + 11104) = v1812;
  v373 = v1814;
  *(v51 + 11120) = v1813;
  *(v51 + 11136) = v373;
  *(v51 + 11152) = v1815;
  v374 = *&v1811[16];
  *(v51 + 11056) = *v1811;
  *(v51 + 11072) = v374;
  *(v51 + 11088) = v372;
  *(v51 + 11168) = 0xD00000000000003ELL;
  *(v51 + 11176) = 0x80000001BE141D50;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1826[8], 0, 32);
  *v1826 = v602;
  *&v1826[40] = v553;
  *&v1827 = 0;
  *(&v1827 + 1) = v606;
  v1828 = 0u;
  v1829 = 0u;
  v1830 = v603;
  v1832 = 0u;
  v1833 = 0u;
  v1831 = v602;
  v1834 = v553;
  v1835 = 0;
  v1836 = v606;
  v1837 = 0u;
  v1838 = 0u;
  v1839 = v603;
  v1840 = 0;
  sub_1BD289374(v1826, v2604);
  sub_1BD2893D0(&v1831);
  v375 = *&v1826[32];
  *(v51 + 11232) = v1827;
  v376 = v1829;
  *(v51 + 11248) = v1828;
  *(v51 + 11264) = v376;
  *(v51 + 11280) = v1830;
  v377 = *&v1826[16];
  *(v51 + 11184) = *v1826;
  *(v51 + 11200) = v377;
  *(v51 + 11216) = v375;
  *(v51 + 11296) = 0xD00000000000003ELL;
  *(v51 + 11304) = 0x80000001BE141D90;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1841[8], 0, 32);
  *v1841 = v602;
  *&v1841[40] = v553;
  *&v1842 = 0;
  *(&v1842 + 1) = v606;
  v1843 = 0u;
  v1844 = 0u;
  v1845 = v603;
  v1847 = 0u;
  v1848 = 0u;
  v1846 = v602;
  v1849 = v553;
  v1850 = 0;
  v1851 = v606;
  v1852 = 0u;
  v1853 = 0u;
  v1854 = v603;
  v1855 = 0;
  sub_1BD289374(v1841, v2604);
  sub_1BD2893D0(&v1846);
  v378 = *&v1841[32];
  *(v51 + 11360) = v1842;
  v379 = v1844;
  *(v51 + 11376) = v1843;
  *(v51 + 11392) = v379;
  *(v51 + 11408) = v1845;
  v380 = *&v1841[16];
  *(v51 + 11312) = *v1841;
  *(v51 + 11328) = v380;
  *(v51 + 11344) = v378;
  *(v51 + 11424) = 0xD000000000000036;
  *(v51 + 11432) = 0x80000001BE141DD0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1856[8], 0, 32);
  *v1856 = v602;
  *&v1856[40] = v553;
  *&v1857 = 0;
  *(&v1857 + 1) = v606;
  v1858 = 0u;
  v1859 = 0u;
  v1860 = v603;
  v1862 = 0u;
  v1863 = 0u;
  v1861 = v602;
  v1864 = v553;
  v1865 = 0;
  v1866 = v606;
  v1867 = 0u;
  v1868 = 0u;
  v1869 = v603;
  v1870 = 0;
  sub_1BD289374(v1856, v2604);
  sub_1BD2893D0(&v1861);
  v381 = *&v1856[32];
  *(v51 + 11488) = v1857;
  v382 = v1859;
  *(v51 + 11504) = v1858;
  *(v51 + 11520) = v382;
  *(v51 + 11536) = v1860;
  v383 = *&v1856[16];
  *(v51 + 11440) = *v1856;
  *(v51 + 11456) = v383;
  *(v51 + 11472) = v381;
  *(v51 + 11552) = 0xD00000000000003ELL;
  *(v51 + 11560) = 0x80000001BE141E10;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1871[8], 0, 32);
  *v1871 = v602;
  *&v1871[40] = v553;
  *&v1872 = 0;
  *(&v1872 + 1) = v606;
  v1873 = 0u;
  v1874 = 0u;
  v1875 = v603;
  v1877 = 0u;
  v1878 = 0u;
  v1876 = v602;
  v1879 = v553;
  v1880 = 0;
  v1881 = v606;
  v1882 = 0u;
  v1883 = 0u;
  v1884 = v603;
  v1885 = 0;
  sub_1BD289374(v1871, v2604);
  sub_1BD2893D0(&v1876);
  v384 = *&v1871[32];
  *(v51 + 11616) = v1872;
  v385 = v1874;
  *(v51 + 11632) = v1873;
  *(v51 + 11648) = v385;
  *(v51 + 11664) = v1875;
  v386 = *&v1871[16];
  *(v51 + 11568) = *v1871;
  *(v51 + 11584) = v386;
  *(v51 + 11600) = v384;
  *(v51 + 11680) = 0xD00000000000003ELL;
  *(v51 + 11688) = 0x80000001BE141E50;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1886[8], 0, 32);
  *v1886 = v602;
  *&v1886[40] = v553;
  *&v1887 = 0;
  *(&v1887 + 1) = v606;
  v1888 = 0u;
  v1889 = 0u;
  v1890 = v603;
  v1892 = 0u;
  v1893 = 0u;
  v1891 = v602;
  v1894 = v553;
  v1895 = 0;
  v1896 = v606;
  v1897 = 0u;
  v1898 = 0u;
  v1899 = v603;
  v1900 = 0;
  sub_1BD289374(v1886, v2604);
  sub_1BD2893D0(&v1891);
  v387 = *&v1886[32];
  *(v51 + 11744) = v1887;
  v388 = v1889;
  *(v51 + 11760) = v1888;
  *(v51 + 11776) = v388;
  *(v51 + 11792) = v1890;
  v389 = *&v1886[16];
  *(v51 + 11696) = *v1886;
  *(v51 + 11712) = v389;
  *(v51 + 11728) = v387;
  *(v51 + 11808) = 0xD00000000000003ELL;
  *(v51 + 11816) = 0x80000001BE141E90;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1901[8], 0, 32);
  *v1901 = v602;
  *&v1901[40] = v553;
  *&v1902 = 0;
  *(&v1902 + 1) = v606;
  v1903 = 0u;
  v1904 = 0u;
  v1905 = v603;
  v1907 = 0u;
  v1908 = 0u;
  v1906 = v602;
  v1909 = v553;
  v1910 = 0;
  v1911 = v606;
  v1912 = 0u;
  v1913 = 0u;
  v1914 = v603;
  v1915 = 0;
  sub_1BD289374(v1901, v2604);
  sub_1BD2893D0(&v1906);
  v390 = *&v1901[32];
  *(v51 + 11872) = v1902;
  v391 = v1904;
  *(v51 + 11888) = v1903;
  *(v51 + 11904) = v391;
  *(v51 + 11920) = v1905;
  v392 = *&v1901[16];
  *(v51 + 11824) = *v1901;
  *(v51 + 11840) = v392;
  *(v51 + 11856) = v390;
  *(v51 + 11936) = 0xD000000000000036;
  *(v51 + 11944) = 0x80000001BE141ED0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1916[8], 0, 32);
  *v1916 = v602;
  *&v1916[40] = v553;
  *&v1917 = 0;
  *(&v1917 + 1) = v606;
  v1918 = 0u;
  v1919 = 0u;
  v1920 = v603;
  v1922 = 0u;
  v1923 = 0u;
  v1921 = v602;
  v1924 = v553;
  v1925 = 0;
  v1926 = v606;
  v1927 = 0u;
  v1928 = 0u;
  v1929 = v603;
  v1930 = 0;
  sub_1BD289374(v1916, v2604);
  sub_1BD2893D0(&v1921);
  v393 = *&v1916[32];
  *(v51 + 12000) = v1917;
  v394 = v1919;
  *(v51 + 12016) = v1918;
  *(v51 + 12032) = v394;
  *(v51 + 12048) = v1920;
  v395 = *&v1916[16];
  *(v51 + 11952) = *v1916;
  *(v51 + 11968) = v395;
  *(v51 + 11984) = v393;
  *(v51 + 12064) = 0xD00000000000003ELL;
  *(v51 + 12072) = 0x80000001BE141F10;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1931[8], 0, 32);
  *v1931 = v602;
  *&v1931[40] = v553;
  *&v1932 = 0;
  *(&v1932 + 1) = v606;
  v1933 = 0u;
  v1934 = 0u;
  v1935 = v603;
  v1937 = 0u;
  v1938 = 0u;
  v1936 = v602;
  v1939 = v553;
  v1940 = 0;
  v1941 = v606;
  v1942 = 0u;
  v1943 = 0u;
  v1944 = v603;
  v1945 = 0;
  sub_1BD289374(v1931, v2604);
  sub_1BD2893D0(&v1936);
  v396 = *&v1931[32];
  *(v51 + 12128) = v1932;
  v397 = v1934;
  *(v51 + 12144) = v1933;
  *(v51 + 12160) = v397;
  *(v51 + 12176) = v1935;
  v398 = *&v1931[16];
  *(v51 + 12080) = *v1931;
  *(v51 + 12096) = v398;
  *(v51 + 12112) = v396;
  *(v51 + 12192) = 0xD00000000000003ELL;
  *(v51 + 12200) = 0x80000001BE141F50;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1946[8], 0, 32);
  *v1946 = v602;
  *&v1946[40] = v553;
  *&v1947 = 0;
  *(&v1947 + 1) = v606;
  v1948 = 0u;
  v1949 = 0u;
  v1950 = v603;
  v1952 = 0u;
  v1953 = 0u;
  v1951 = v602;
  v1954 = v553;
  v1955 = 0;
  v1956 = v606;
  v1957 = 0u;
  v1958 = 0u;
  v1959 = v603;
  v1960 = 0;
  sub_1BD289374(v1946, v2604);
  sub_1BD2893D0(&v1951);
  v399 = *&v1946[32];
  *(v51 + 12256) = v1947;
  v400 = v1949;
  *(v51 + 12272) = v1948;
  *(v51 + 12288) = v400;
  *(v51 + 12304) = v1950;
  v401 = *&v1946[16];
  *(v51 + 12208) = *v1946;
  *(v51 + 12224) = v401;
  *(v51 + 12240) = v399;
  *(v51 + 12320) = 0xD00000000000003ELL;
  *(v51 + 12328) = 0x80000001BE141F90;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1961[8], 0, 32);
  *v1961 = v602;
  *&v1961[40] = v553;
  *&v1962 = 0;
  *(&v1962 + 1) = v606;
  v1963 = 0u;
  v1964 = 0u;
  v1965 = v603;
  v1967 = 0u;
  v1968 = 0u;
  v1966 = v602;
  v1969 = v553;
  v1970 = 0;
  v1971 = v606;
  v1972 = 0u;
  v1973 = 0u;
  v1974 = v603;
  v1975 = 0;
  sub_1BD289374(v1961, v2604);
  sub_1BD2893D0(&v1966);
  v402 = *&v1961[32];
  *(v51 + 12384) = v1962;
  v403 = v1964;
  *(v51 + 12400) = v1963;
  *(v51 + 12416) = v403;
  *(v51 + 12432) = v1965;
  v404 = *&v1961[16];
  *(v51 + 12336) = *v1961;
  *(v51 + 12352) = v404;
  *(v51 + 12368) = v402;
  *(v51 + 12448) = 0xD000000000000036;
  *(v51 + 12456) = 0x80000001BE141FD0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v1976[8], 0, 32);
  *v1976 = v602;
  *&v1976[40] = v553;
  *&v1977 = 0;
  *(&v1977 + 1) = v606;
  v1978 = 0u;
  v1979 = 0u;
  v1980 = v603;
  v1982 = 0u;
  v1983 = 0u;
  v1981 = v602;
  v1984 = v553;
  v1985 = 0;
  v1986 = v606;
  v1987 = 0u;
  v1988 = 0u;
  v1989 = v603;
  v1990 = 0;
  sub_1BD289374(v1976, v2604);
  sub_1BD2893D0(&v1981);
  v405 = *&v1976[32];
  *(v51 + 12512) = v1977;
  v406 = v1979;
  *(v51 + 12528) = v1978;
  *(v51 + 12544) = v406;
  *(v51 + 12560) = v1980;
  v407 = *&v1976[16];
  *(v51 + 12464) = *v1976;
  *(v51 + 12480) = v407;
  *(v51 + 12496) = v405;
  *(v51 + 12576) = 0xD000000000000020;
  *(v51 + 12584) = 0x80000001BE142010;
  v601 = v572;

  v408 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.99 green:0.73 blue:0.04 alpha:1.0];
  v409 = [v408 CGColor];

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v1991 = v572;
  memset(&v1992[8], 0, 32);
  *v1992 = v5;
  *&v1992[40] = v409;
  *&v1993 = 0;
  *(&v1993 + 1) = v5;
  v1994 = 0u;
  v1995 = 0u;
  v1996[0] = v572;
  v1996[1] = 0;
  v1997 = 0u;
  v1998 = 0u;
  v1996[2] = v5;
  v1999 = v409;
  v2000 = 0;
  v2001 = v5;
  v2003 = 0u;
  v2002 = 0u;
  sub_1BD289374(&v1991, v2604);
  sub_1BD2893D0(v1996);
  v410 = *&v1992[16];
  *(v51 + 12640) = *&v1992[32];
  v411 = v1994;
  *(v51 + 12656) = v1993;
  *(v51 + 12672) = v411;
  *(v51 + 12688) = v1995;
  v412 = *v1992;
  *(v51 + 12592) = v1991;
  *(v51 + 12608) = v412;
  *(v51 + 12624) = v410;
  *(v51 + 12704) = 0xD00000000000001ELL;
  *(v51 + 12712) = 0x80000001BE142040;
  v413 = swift_allocObject();
  *(v413 + 16) = xmmword_1BE0B6CA0;
  *(v413 + 32) = v619;
  *(v413 + 40) = v618;
  v414 = swift_allocObject();
  *(v414 + 16) = xmmword_1BE0B6CA0;
  *(v414 + 32) = v42;
  *(v414 + 40) = v617;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2006 = 0u;
  v2005 = 0u;
  v2004 = 0u;
  memset(&v2007[8], 0, 48);
  *v2007 = v413;
  *&v2007[56] = v414;
  memset(v2008, 0, sizeof(v2008));
  v2010 = 0u;
  v2011 = 0u;
  v2012 = 0u;
  v2009 = v413;
  v2013 = v414;
  sub_1BD289374(&v2004, v2604);
  sub_1BD2893D0(v2008);
  v415 = v2006;
  *(v51 + 12768) = *v2007;
  v416 = *&v2007[32];
  *(v51 + 12784) = *&v2007[16];
  *(v51 + 12800) = v416;
  *(v51 + 12816) = *&v2007[48];
  v417 = v2005;
  *(v51 + 12720) = v2004;
  *(v51 + 12736) = v417;
  *(v51 + 12752) = v415;
  *(v51 + 12832) = 0xD000000000000017;
  *(v51 + 12840) = 0x80000001BE142060;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v2014 = v628;
  *(&v2014 + 1) = v613;
  memset(&v2015[8], 0, 32);
  *v2015 = v5;
  *&v2015[40] = v628;
  *&v2016 = v46;
  *(&v2016 + 1) = v5;
  v2017 = 0u;
  v2018 = 0u;
  v2019[0] = v628;
  v2019[1] = v613;
  v2020 = 0u;
  v2021 = 0u;
  v2019[2] = v5;
  v2022 = v628;
  v2023 = v46;
  v2024 = v5;
  v2026 = 0u;
  v2025 = 0u;
  sub_1BD289374(&v2014, v2604);
  sub_1BD2893D0(v2019);
  v418 = *&v2015[16];
  *(v51 + 12896) = *&v2015[32];
  v419 = v2017;
  *(v51 + 12912) = v2016;
  *(v51 + 12928) = v419;
  *(v51 + 12944) = v2018;
  v420 = *v2015;
  *(v51 + 12848) = v2014;
  *(v51 + 12864) = v420;
  *(v51 + 12880) = v418;
  *(v51 + 12960) = 0x6C6C69466F747561;
  *(v51 + 12968) = 0xEA00000000003330;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2027 = v628;
  memset(&v2028[8], 0, 32);
  *v2028 = v5;
  *&v2028[40] = v628;
  *&v2029 = 0;
  *(&v2029 + 1) = v5;
  v2030 = 0u;
  v2031 = 0u;
  v2032[0] = v628;
  v2032[1] = 0;
  v2033 = 0u;
  v2034 = 0u;
  v2032[2] = v5;
  v2035 = v628;
  v2036 = 0;
  v2037 = v5;
  v2039 = 0u;
  v2038 = 0u;
  sub_1BD289374(&v2027, v2604);
  sub_1BD2893D0(v2032);
  v421 = *&v2028[16];
  *(v51 + 13024) = *&v2028[32];
  v422 = v2030;
  *(v51 + 13040) = v2029;
  *(v51 + 13056) = v422;
  *(v51 + 13072) = v2031;
  v423 = *v2028;
  *(v51 + 12976) = v2027;
  *(v51 + 12992) = v423;
  *(v51 + 13008) = v421;
  *(v51 + 13088) = 0xD00000000000001BLL;
  *(v51 + 13096) = 0x80000001BE142080;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2040 = v628;
  memset(&v2041[8], 0, 32);
  *v2041 = v5;
  *&v2041[40] = v628;
  *&v2042 = 0;
  *(&v2042 + 1) = v5;
  v2043 = 0u;
  v2044 = 0u;
  v2045[0] = v628;
  v2045[1] = 0;
  v2046 = 0u;
  v2047 = 0u;
  v2045[2] = v5;
  v2048 = v628;
  v2049 = 0;
  v2050 = v5;
  v2052 = 0u;
  v2051 = 0u;
  sub_1BD289374(&v2040, v2604);
  sub_1BD2893D0(v2045);
  v424 = *&v2041[16];
  *(v51 + 13152) = *&v2041[32];
  v425 = v2043;
  *(v51 + 13168) = v2042;
  *(v51 + 13184) = v425;
  *(v51 + 13200) = v2044;
  v426 = *v2041;
  *(v51 + 13104) = v2040;
  *(v51 + 13120) = v426;
  *(v51 + 13136) = v424;
  *(v51 + 13216) = 0xD000000000000019;
  *(v51 + 13224) = 0x80000001BE1420A0;
  v427 = swift_allocObject();
  *(v427 + 16) = xmmword_1BE0B6CA0;
  *(v427 + 32) = v621;
  *(v427 + 40) = v625;
  v428 = swift_allocObject();
  *(v428 + 16) = xmmword_1BE0B6CA0;
  *(v428 + 32) = v623;
  *(v428 + 40) = v622;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2055 = 0u;
  v2054 = 0u;
  v2053 = 0u;
  memset(&v2056[8], 0, 48);
  *v2056 = v427;
  *&v2056[56] = v428;
  memset(v2057, 0, sizeof(v2057));
  v2059 = 0u;
  v2060 = 0u;
  v2061 = 0u;
  v2058 = v427;
  v2062 = v428;
  sub_1BD289374(&v2053, v2604);
  sub_1BD2893D0(v2057);
  v429 = v2055;
  *(v51 + 13280) = *v2056;
  v430 = *&v2056[32];
  *(v51 + 13296) = *&v2056[16];
  *(v51 + 13312) = v430;
  *(v51 + 13328) = *&v2056[48];
  v431 = v2054;
  *(v51 + 13232) = v2053;
  *(v51 + 13248) = v431;
  *(v51 + 13264) = v429;
  *(v51 + 13344) = 0xD00000000000001BLL;
  *(v51 + 13352) = 0x80000001BE1420C0;
  v626 = v575;
  v624 = v574;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v2063 = v575;
  *(&v2063 + 1) = v616;
  memset(&v2064[8], 0, 32);
  *v2064 = v5;
  *&v2064[40] = v574;
  *&v2065 = v616;
  *(&v2065 + 1) = v5;
  v2066 = 0u;
  v2067 = 0u;
  v2068[0] = v575;
  v2068[1] = v616;
  v2069 = 0u;
  v2070 = 0u;
  v2068[2] = v5;
  v2071 = v574;
  v2072 = v616;
  v2073 = v5;
  v2075 = 0u;
  v2074 = 0u;
  sub_1BD289374(&v2063, v2604);
  sub_1BD2893D0(v2068);
  v432 = *&v2064[16];
  *(v51 + 13408) = *&v2064[32];
  v433 = v2066;
  *(v51 + 13424) = v2065;
  *(v51 + 13440) = v433;
  *(v51 + 13456) = v2067;
  v434 = *v2064;
  *(v51 + 13360) = v2063;
  *(v51 + 13376) = v434;
  *(v51 + 13392) = v432;
  *(v51 + 13472) = 0xD000000000000023;
  *(v51 + 13480) = 0x80000001BE1420E0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2076 = v615;
  memset(&v2077[8], 0, 32);
  *v2077 = v5;
  *&v2077[40] = v615;
  *&v2078 = 0;
  *(&v2078 + 1) = v5;
  v2079 = 0u;
  v2080 = 0u;
  v2081[0] = v615;
  v2081[1] = 0;
  v2082 = 0u;
  v2083 = 0u;
  v2081[2] = v5;
  v2084 = v615;
  v2085 = 0;
  v2086 = v5;
  v2088 = 0u;
  v2087 = 0u;
  sub_1BD289374(&v2076, v2604);
  sub_1BD2893D0(v2081);
  v435 = *&v2077[16];
  *(v51 + 13536) = *&v2077[32];
  v436 = v2079;
  *(v51 + 13552) = v2078;
  *(v51 + 13568) = v436;
  *(v51 + 13584) = v2080;
  v437 = *v2077;
  *(v51 + 13488) = v2076;
  *(v51 + 13504) = v437;
  *(v51 + 13520) = v435;
  *(v51 + 13600) = 0xD000000000000037;
  *(v51 + 13608) = 0x80000001BE142110;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2089[8], 0, 32);
  *v2089 = v602;
  *&v2089[40] = v553;
  *&v2090 = 0;
  *(&v2090 + 1) = v606;
  v2091 = 0u;
  v2092 = 0u;
  v2093 = v603;
  v2095 = 0u;
  v2096 = 0u;
  v2094 = v602;
  v2097 = v553;
  v2098 = 0;
  v2099 = v606;
  v2100 = 0u;
  v2101 = 0u;
  v2102 = v603;
  v2103 = 0;
  sub_1BD289374(v2089, v2604);
  sub_1BD2893D0(&v2094);
  v438 = *&v2089[32];
  *(v51 + 13664) = v2090;
  v439 = v2092;
  *(v51 + 13680) = v2091;
  *(v51 + 13696) = v439;
  *(v51 + 13712) = v2093;
  v440 = *&v2089[16];
  *(v51 + 13616) = *v2089;
  *(v51 + 13632) = v440;
  *(v51 + 13648) = v438;
  *(v51 + 13728) = 0xD000000000000037;
  *(v51 + 13736) = 0x80000001BE142150;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2104[8], 0, 32);
  *v2104 = v602;
  *&v2104[40] = v553;
  *&v2105 = 0;
  *(&v2105 + 1) = v606;
  v2106 = 0u;
  v2107 = 0u;
  v2108 = v603;
  v2110 = 0u;
  v2111 = 0u;
  v2109 = v602;
  v2112 = v553;
  v2113 = 0;
  v2114 = v606;
  v2115 = 0u;
  v2116 = 0u;
  v2117 = v603;
  v2118 = 0;
  sub_1BD289374(v2104, v2604);
  sub_1BD2893D0(&v2109);
  v441 = *&v2104[32];
  *(v51 + 13792) = v2105;
  v442 = v2107;
  *(v51 + 13808) = v2106;
  *(v51 + 13824) = v442;
  *(v51 + 13840) = v2108;
  v443 = *&v2104[16];
  *(v51 + 13744) = *v2104;
  *(v51 + 13760) = v443;
  *(v51 + 13776) = v441;
  *(v51 + 13856) = 0xD000000000000037;
  *(v51 + 13864) = 0x80000001BE142190;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2119[8], 0, 32);
  *v2119 = v602;
  *&v2119[40] = v553;
  *&v2120 = 0;
  *(&v2120 + 1) = v606;
  v2121 = 0u;
  v2122 = 0u;
  v2123 = v603;
  v2125 = 0u;
  v2126 = 0u;
  v2124 = v602;
  v2127 = v553;
  v2128 = 0;
  v2129 = v606;
  v2130 = 0u;
  v2131 = 0u;
  v2132 = v603;
  v2133 = 0;
  sub_1BD289374(v2119, v2604);
  sub_1BD2893D0(&v2124);
  v444 = *&v2119[32];
  *(v51 + 13920) = v2120;
  v445 = v2122;
  *(v51 + 13936) = v2121;
  *(v51 + 13952) = v445;
  *(v51 + 13968) = v2123;
  v446 = *&v2119[16];
  *(v51 + 13872) = *v2119;
  *(v51 + 13888) = v446;
  *(v51 + 13904) = v444;
  *(v51 + 13984) = 0xD00000000000002FLL;
  *(v51 + 13992) = 0x80000001BE1421D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2134 = v553;
  memset(&v2135[8], 0, 32);
  *v2135 = v5;
  *&v2135[40] = v603;
  *&v2136 = 0;
  *(&v2136 + 1) = v5;
  v2137 = 0u;
  v2138 = 0u;
  v2139[0] = v553;
  v2139[1] = 0;
  v2140 = 0u;
  v2141 = 0u;
  v2139[2] = v5;
  v2142 = v603;
  v2143 = 0;
  v2144 = v5;
  v2146 = 0u;
  v2145 = 0u;
  sub_1BD289374(&v2134, v2604);
  sub_1BD2893D0(v2139);
  v447 = *&v2135[16];
  *(v51 + 14048) = *&v2135[32];
  v448 = v2137;
  *(v51 + 14064) = v2136;
  *(v51 + 14080) = v448;
  *(v51 + 14096) = v2138;
  v449 = *v2135;
  *(v51 + 14000) = v2134;
  *(v51 + 14016) = v449;
  *(v51 + 14032) = v447;
  *(v51 + 14112) = 0xD000000000000037;
  *(v51 + 14120) = 0x80000001BE142200;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2147[8], 0, 32);
  *v2147 = v602;
  *&v2147[40] = v553;
  *&v2148 = 0;
  *(&v2148 + 1) = v606;
  v2149 = 0u;
  v2150 = 0u;
  v2151 = v603;
  v2153 = 0u;
  v2154 = 0u;
  v2152 = v602;
  v2155 = v553;
  v2156 = 0;
  v2157 = v606;
  v2158 = 0u;
  v2159 = 0u;
  v2160 = v603;
  v2161 = 0;
  sub_1BD289374(v2147, v2604);
  sub_1BD2893D0(&v2152);
  v450 = *&v2147[32];
  *(v51 + 14176) = v2148;
  v451 = v2150;
  *(v51 + 14192) = v2149;
  *(v51 + 14208) = v451;
  *(v51 + 14224) = v2151;
  v452 = *&v2147[16];
  *(v51 + 14128) = *v2147;
  *(v51 + 14144) = v452;
  *(v51 + 14160) = v450;
  *(v51 + 14240) = 0xD000000000000037;
  *(v51 + 14248) = 0x80000001BE142240;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2162[8], 0, 32);
  *v2162 = v602;
  *&v2162[40] = v553;
  *&v2163 = 0;
  *(&v2163 + 1) = v606;
  v2164 = 0u;
  v2165 = 0u;
  v2166 = v603;
  v2168 = 0u;
  v2169 = 0u;
  v2167 = v602;
  v2170 = v553;
  v2171 = 0;
  v2172 = v606;
  v2173 = 0u;
  v2174 = 0u;
  v2175 = v603;
  v2176 = 0;
  sub_1BD289374(v2162, v2604);
  sub_1BD2893D0(&v2167);
  v453 = *&v2162[32];
  *(v51 + 14304) = v2163;
  v454 = v2165;
  *(v51 + 14320) = v2164;
  *(v51 + 14336) = v454;
  *(v51 + 14352) = v2166;
  v455 = *&v2162[16];
  *(v51 + 14256) = *v2162;
  *(v51 + 14272) = v455;
  *(v51 + 14288) = v453;
  *(v51 + 14368) = 0xD000000000000037;
  *(v51 + 14376) = 0x80000001BE142280;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2177[8], 0, 32);
  *v2177 = v602;
  *&v2177[40] = v553;
  *&v2178 = 0;
  *(&v2178 + 1) = v606;
  v2179 = 0u;
  v2180 = 0u;
  v2181 = v603;
  v2183 = 0u;
  v2184 = 0u;
  v2182 = v602;
  v2185 = v553;
  v2186 = 0;
  v2187 = v606;
  v2188 = 0u;
  v2189 = 0u;
  v2190 = v603;
  v2191 = 0;
  sub_1BD289374(v2177, v2604);
  sub_1BD2893D0(&v2182);
  v456 = *&v2177[32];
  *(v51 + 14432) = v2178;
  v457 = v2180;
  *(v51 + 14448) = v2179;
  *(v51 + 14464) = v457;
  *(v51 + 14480) = v2181;
  v458 = *&v2177[16];
  *(v51 + 14384) = *v2177;
  *(v51 + 14400) = v458;
  *(v51 + 14416) = v456;
  *(v51 + 14496) = 0xD00000000000002FLL;
  *(v51 + 14504) = 0x80000001BE1422C0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2192 = v553;
  memset(&v2193[8], 0, 32);
  *v2193 = v5;
  *&v2193[40] = v603;
  *&v2194 = 0;
  *(&v2194 + 1) = v5;
  v2195 = 0u;
  v2196 = 0u;
  v2197[0] = v553;
  v2197[1] = 0;
  v2198 = 0u;
  v2199 = 0u;
  v2197[2] = v5;
  v2200 = v603;
  v2201 = 0;
  v2202 = v5;
  v2204 = 0u;
  v2203 = 0u;
  sub_1BD289374(&v2192, v2604);
  sub_1BD2893D0(v2197);
  v459 = *&v2193[16];
  *(v51 + 14560) = *&v2193[32];
  v460 = v2195;
  *(v51 + 14576) = v2194;
  *(v51 + 14592) = v460;
  *(v51 + 14608) = v2196;
  v461 = *v2193;
  *(v51 + 14512) = v2192;
  *(v51 + 14528) = v461;
  *(v51 + 14544) = v459;
  *(v51 + 14624) = 0xD000000000000037;
  *(v51 + 14632) = 0x80000001BE1422F0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2205[8], 0, 32);
  *v2205 = v602;
  *&v2205[40] = v553;
  *&v2206 = 0;
  *(&v2206 + 1) = v606;
  v2207 = 0u;
  v2208 = 0u;
  v2209 = v603;
  v2211 = 0u;
  v2212 = 0u;
  v2210 = v602;
  v2213 = v553;
  v2214 = 0;
  v2215 = v606;
  v2216 = 0u;
  v2217 = 0u;
  v2218 = v603;
  v2219 = 0;
  sub_1BD289374(v2205, v2604);
  sub_1BD2893D0(&v2210);
  v462 = *&v2205[32];
  *(v51 + 14688) = v2206;
  v463 = v2208;
  *(v51 + 14704) = v2207;
  *(v51 + 14720) = v463;
  *(v51 + 14736) = v2209;
  v464 = *&v2205[16];
  *(v51 + 14640) = *v2205;
  *(v51 + 14656) = v464;
  *(v51 + 14672) = v462;
  *(v51 + 14752) = 0xD000000000000037;
  *(v51 + 14760) = 0x80000001BE142330;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2220[8], 0, 32);
  *v2220 = v602;
  *&v2220[40] = v553;
  *&v2221 = 0;
  *(&v2221 + 1) = v606;
  v2222 = 0u;
  v2223 = 0u;
  v2224 = v603;
  v2226 = 0u;
  v2227 = 0u;
  v2225 = v602;
  v2228 = v553;
  v2229 = 0;
  v2230 = v606;
  v2231 = 0u;
  v2232 = 0u;
  v2233 = v603;
  v2234 = 0;
  sub_1BD289374(v2220, v2604);
  sub_1BD2893D0(&v2225);
  v465 = *&v2220[32];
  *(v51 + 14816) = v2221;
  v466 = v2223;
  *(v51 + 14832) = v2222;
  *(v51 + 14848) = v466;
  *(v51 + 14864) = v2224;
  v467 = *&v2220[16];
  *(v51 + 14768) = *v2220;
  *(v51 + 14784) = v467;
  *(v51 + 14800) = v465;
  *(v51 + 14880) = 0xD000000000000037;
  *(v51 + 14888) = 0x80000001BE142370;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2235[8], 0, 32);
  *v2235 = v602;
  *&v2235[40] = v553;
  *&v2236 = 0;
  *(&v2236 + 1) = v606;
  v2237 = 0u;
  v2238 = 0u;
  v2239 = v603;
  v2241 = 0u;
  v2242 = 0u;
  v2240 = v602;
  v2243 = v553;
  v2244 = 0;
  v2245 = v606;
  v2246 = 0u;
  v2247 = 0u;
  v2248 = v603;
  v2249 = 0;
  sub_1BD289374(v2235, v2604);
  sub_1BD2893D0(&v2240);
  v468 = *&v2235[32];
  *(v51 + 14944) = v2236;
  v469 = v2238;
  *(v51 + 14960) = v2237;
  *(v51 + 14976) = v469;
  *(v51 + 14992) = v2239;
  v470 = *&v2235[16];
  *(v51 + 14896) = *v2235;
  *(v51 + 14912) = v470;
  *(v51 + 14928) = v468;
  *(v51 + 15008) = 0xD00000000000002FLL;
  *(v51 + 15016) = 0x80000001BE1423B0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2250 = v553;
  memset(&v2251[8], 0, 32);
  *v2251 = v5;
  *&v2251[40] = v603;
  *&v2252 = 0;
  *(&v2252 + 1) = v5;
  v2253 = 0u;
  v2254 = 0u;
  v2255[0] = v553;
  v2255[1] = 0;
  v2256 = 0u;
  v2257 = 0u;
  v2255[2] = v5;
  v2258 = v603;
  v2259 = 0;
  v2260 = v5;
  v2262 = 0u;
  v2261 = 0u;
  sub_1BD289374(&v2250, v2604);
  sub_1BD2893D0(v2255);
  v471 = *&v2251[16];
  *(v51 + 15072) = *&v2251[32];
  v472 = v2253;
  *(v51 + 15088) = v2252;
  *(v51 + 15104) = v472;
  *(v51 + 15120) = v2254;
  v473 = *v2251;
  *(v51 + 15024) = v2250;
  *(v51 + 15040) = v473;
  *(v51 + 15056) = v471;
  *(v51 + 15136) = 0xD000000000000037;
  *(v51 + 15144) = 0x80000001BE1423E0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2263[8], 0, 32);
  *v2263 = v602;
  *&v2263[40] = v553;
  *&v2264 = 0;
  *(&v2264 + 1) = v606;
  v2265 = 0u;
  v2266 = 0u;
  v2267 = v603;
  v2269 = 0u;
  v2270 = 0u;
  v2268 = v602;
  v2271 = v553;
  v2272 = 0;
  v2273 = v606;
  v2274 = 0u;
  v2275 = 0u;
  v2276 = v603;
  v2277 = 0;
  sub_1BD289374(v2263, v2604);
  sub_1BD2893D0(&v2268);
  v474 = *&v2263[32];
  *(v51 + 15200) = v2264;
  v475 = v2266;
  *(v51 + 15216) = v2265;
  *(v51 + 15232) = v475;
  *(v51 + 15248) = v2267;
  v476 = *&v2263[16];
  *(v51 + 15152) = *v2263;
  *(v51 + 15168) = v476;
  *(v51 + 15184) = v474;
  *(v51 + 15264) = 0xD000000000000037;
  *(v51 + 15272) = 0x80000001BE142420;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2278[8], 0, 32);
  *v2278 = v602;
  *&v2278[40] = v553;
  *&v2279 = 0;
  *(&v2279 + 1) = v606;
  v2280 = 0u;
  v2281 = 0u;
  v2282 = v603;
  v2284 = 0u;
  v2285 = 0u;
  v2283 = v602;
  v2286 = v553;
  v2287 = 0;
  v2288 = v606;
  v2289 = 0u;
  v2290 = 0u;
  v2291 = v603;
  v2292 = 0;
  sub_1BD289374(v2278, v2604);
  sub_1BD2893D0(&v2283);
  v477 = *&v2278[32];
  *(v51 + 15328) = v2279;
  v478 = v2281;
  *(v51 + 15344) = v2280;
  *(v51 + 15360) = v478;
  *(v51 + 15376) = v2282;
  v479 = *&v2278[16];
  *(v51 + 15280) = *v2278;
  *(v51 + 15296) = v479;
  *(v51 + 15312) = v477;
  *(v51 + 15392) = 0xD000000000000037;
  *(v51 + 15400) = 0x80000001BE142460;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2293[8], 0, 32);
  *v2293 = v602;
  *&v2293[40] = v553;
  *&v2294 = 0;
  *(&v2294 + 1) = v606;
  v2295 = 0u;
  v2296 = 0u;
  v2297 = v603;
  v2299 = 0u;
  v2300 = 0u;
  v2298 = v602;
  v2301 = v553;
  v2302 = 0;
  v2303 = v606;
  v2304 = 0u;
  v2305 = 0u;
  v2306 = v603;
  v2307 = 0;
  sub_1BD289374(v2293, v2604);
  sub_1BD2893D0(&v2298);
  v480 = *&v2293[32];
  *(v51 + 15456) = v2294;
  v481 = v2296;
  *(v51 + 15472) = v2295;
  *(v51 + 15488) = v481;
  *(v51 + 15504) = v2297;
  v482 = *&v2293[16];
  *(v51 + 15408) = *v2293;
  *(v51 + 15424) = v482;
  *(v51 + 15440) = v480;
  *(v51 + 15520) = 0xD00000000000002FLL;
  *(v51 + 15528) = 0x80000001BE1424A0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2308 = v553;
  memset(&v2309[8], 0, 32);
  *v2309 = v5;
  *&v2309[40] = v603;
  *&v2310 = 0;
  *(&v2310 + 1) = v5;
  v2311 = 0u;
  v2312 = 0u;
  v2313[0] = v553;
  v2313[1] = 0;
  v2314 = 0u;
  v2315 = 0u;
  v2313[2] = v5;
  v2316 = v603;
  v2317 = 0;
  v2318 = v5;
  v2320 = 0u;
  v2319 = 0u;
  sub_1BD289374(&v2308, v2604);
  sub_1BD2893D0(v2313);
  v483 = *&v2309[16];
  *(v51 + 15584) = *&v2309[32];
  v484 = v2311;
  *(v51 + 15600) = v2310;
  *(v51 + 15616) = v484;
  *(v51 + 15632) = v2312;
  v485 = *v2309;
  *(v51 + 15536) = v2308;
  *(v51 + 15552) = v485;
  *(v51 + 15568) = v483;
  *(v51 + 15648) = 0xD00000000000003ELL;
  *(v51 + 15656) = 0x80000001BE1424D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2321[8], 0, 32);
  *v2321 = v602;
  *&v2321[40] = v553;
  *&v2322 = 0;
  *(&v2322 + 1) = v606;
  v2323 = 0u;
  v2324 = 0u;
  v2325 = v603;
  v2327 = 0u;
  v2328 = 0u;
  v2326 = v602;
  v2329 = v553;
  v2330 = 0;
  v2331 = v606;
  v2332 = 0u;
  v2333 = 0u;
  v2334 = v603;
  v2335 = 0;
  sub_1BD289374(v2321, v2604);
  sub_1BD2893D0(&v2326);
  v486 = *&v2321[32];
  *(v51 + 15712) = v2322;
  v487 = v2324;
  *(v51 + 15728) = v2323;
  *(v51 + 15744) = v487;
  *(v51 + 15760) = v2325;
  v488 = *&v2321[16];
  *(v51 + 15664) = *v2321;
  *(v51 + 15680) = v488;
  *(v51 + 15696) = v486;
  *(v51 + 15776) = 0xD00000000000003ELL;
  *(v51 + 15784) = 0x80000001BE142510;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2336[8], 0, 32);
  *v2336 = v602;
  *&v2336[40] = v553;
  *&v2337 = 0;
  *(&v2337 + 1) = v606;
  v2338 = 0u;
  v2339 = 0u;
  v2340 = v603;
  v2342 = 0u;
  v2343 = 0u;
  v2341 = v602;
  v2344 = v553;
  v2345 = 0;
  v2346 = v606;
  v2347 = 0u;
  v2348 = 0u;
  v2349 = v603;
  v2350 = 0;
  sub_1BD289374(v2336, v2604);
  sub_1BD2893D0(&v2341);
  v489 = *&v2336[32];
  *(v51 + 15840) = v2337;
  v490 = v2339;
  *(v51 + 15856) = v2338;
  *(v51 + 15872) = v490;
  *(v51 + 15888) = v2340;
  v491 = *&v2336[16];
  *(v51 + 15792) = *v2336;
  *(v51 + 15808) = v491;
  *(v51 + 15824) = v489;
  *(v51 + 15904) = 0xD00000000000003ELL;
  *(v51 + 15912) = 0x80000001BE142550;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2351[8], 0, 32);
  *v2351 = v602;
  *&v2351[40] = v553;
  *&v2352 = 0;
  *(&v2352 + 1) = v606;
  v2353 = 0u;
  v2354 = 0u;
  v2355 = v603;
  v2357 = 0u;
  v2358 = 0u;
  v2356 = v602;
  v2359 = v553;
  v2360 = 0;
  v2361 = v606;
  v2362 = 0u;
  v2363 = 0u;
  v2364 = v603;
  v2365 = 0;
  sub_1BD289374(v2351, v2604);
  sub_1BD2893D0(&v2356);
  v492 = *&v2351[32];
  *(v51 + 15968) = v2352;
  v493 = v2354;
  *(v51 + 15984) = v2353;
  *(v51 + 16000) = v493;
  *(v51 + 16016) = v2355;
  v494 = *&v2351[16];
  *(v51 + 15920) = *v2351;
  *(v51 + 15936) = v494;
  *(v51 + 15952) = v492;
  *(v51 + 16032) = 0xD000000000000036;
  *(v51 + 16040) = 0x80000001BE142590;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2366[8], 0, 32);
  *v2366 = v602;
  *&v2366[40] = v553;
  *&v2367 = 0;
  *(&v2367 + 1) = v606;
  v2368 = 0u;
  v2369 = 0u;
  v2370 = v603;
  v2372 = 0u;
  v2373 = 0u;
  v2371 = v602;
  v2374 = v553;
  v2375 = 0;
  v2376 = v606;
  v2377 = 0u;
  v2378 = 0u;
  v2379 = v603;
  v2380 = 0;
  sub_1BD289374(v2366, v2604);
  sub_1BD2893D0(&v2371);
  v495 = *&v2366[32];
  *(v51 + 16096) = v2367;
  v496 = v2369;
  *(v51 + 16112) = v2368;
  *(v51 + 16128) = v496;
  *(v51 + 16144) = v2370;
  v497 = *&v2366[16];
  *(v51 + 16048) = *v2366;
  *(v51 + 16064) = v497;
  *(v51 + 16080) = v495;
  *(v51 + 16160) = 0xD00000000000003ELL;
  *(v51 + 16168) = 0x80000001BE1425D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2381[8], 0, 32);
  *v2381 = v602;
  *&v2381[40] = v553;
  *&v2382 = 0;
  *(&v2382 + 1) = v606;
  v2383 = 0u;
  v2384 = 0u;
  v2385 = v603;
  v2387 = 0u;
  v2388 = 0u;
  v2386 = v602;
  v2389 = v553;
  v2390 = 0;
  v2391 = v606;
  v2392 = 0u;
  v2393 = 0u;
  v2394 = v603;
  v2395 = 0;
  sub_1BD289374(v2381, v2604);
  sub_1BD2893D0(&v2386);
  v498 = *&v2381[32];
  *(v51 + 16224) = v2382;
  v499 = v2384;
  *(v51 + 16240) = v2383;
  *(v51 + 16256) = v499;
  *(v51 + 16272) = v2385;
  v500 = *&v2381[16];
  *(v51 + 16176) = *v2381;
  *(v51 + 16192) = v500;
  *(v51 + 16208) = v498;
  *(v51 + 16288) = 0xD00000000000003ELL;
  *(v51 + 16296) = 0x80000001BE142610;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2396[8], 0, 32);
  *v2396 = v602;
  *&v2396[40] = v553;
  *&v2397 = 0;
  *(&v2397 + 1) = v606;
  v2398 = 0u;
  v2399 = 0u;
  v2400 = v603;
  v2402 = 0u;
  v2403 = 0u;
  v2401 = v602;
  v2404 = v553;
  v2405 = 0;
  v2406 = v606;
  v2407 = 0u;
  v2408 = 0u;
  v2409 = v603;
  v2410 = 0;
  sub_1BD289374(v2396, v2604);
  sub_1BD2893D0(&v2401);
  v501 = *&v2396[32];
  *(v51 + 16352) = v2397;
  v502 = v2399;
  *(v51 + 16368) = v2398;
  *(v51 + 0x4000) = v502;
  *(v51 + 16400) = v2400;
  v503 = *&v2396[16];
  *(v51 + 16304) = *v2396;
  *(v51 + 16320) = v503;
  *(v51 + 16336) = v501;
  *(v51 + 16416) = 0xD00000000000003ELL;
  *(v51 + 16424) = 0x80000001BE142650;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2411[8], 0, 32);
  *v2411 = v602;
  *&v2411[40] = v553;
  *&v2412 = 0;
  *(&v2412 + 1) = v606;
  v2413 = 0u;
  v2414 = 0u;
  v2415 = v603;
  v2417 = 0u;
  v2418 = 0u;
  v2416 = v602;
  v2419 = v553;
  v2420 = 0;
  v2421 = v606;
  v2422 = 0u;
  v2423 = 0u;
  v2424 = v603;
  v2425 = 0;
  sub_1BD289374(v2411, v2604);
  sub_1BD2893D0(&v2416);
  v504 = *&v2411[32];
  *(v51 + 16480) = v2412;
  v505 = v2414;
  *(v51 + 16496) = v2413;
  *(v51 + 16512) = v505;
  *(v51 + 16528) = v2415;
  v506 = *&v2411[16];
  *(v51 + 16432) = *v2411;
  *(v51 + 16448) = v506;
  *(v51 + 16464) = v504;
  *(v51 + 16544) = 0xD000000000000036;
  *(v51 + 16552) = 0x80000001BE142690;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2426[8], 0, 32);
  *v2426 = v602;
  *&v2426[40] = v553;
  *&v2427 = 0;
  *(&v2427 + 1) = v606;
  v2428 = 0u;
  v2429 = 0u;
  v2430 = v603;
  v2432 = 0u;
  v2433 = 0u;
  v2431 = v602;
  v2434 = v553;
  v2435 = 0;
  v2436 = v606;
  v2437 = 0u;
  v2438 = 0u;
  v2439 = v603;
  v2440 = 0;
  sub_1BD289374(v2426, v2604);
  sub_1BD2893D0(&v2431);
  v507 = *&v2426[32];
  *(v51 + 16608) = v2427;
  v508 = v2429;
  *(v51 + 16624) = v2428;
  *(v51 + 16640) = v508;
  *(v51 + 16656) = v2430;
  v509 = *&v2426[16];
  *(v51 + 16560) = *v2426;
  *(v51 + 16576) = v509;
  *(v51 + 16592) = v507;
  *(v51 + 16672) = 0xD00000000000003ELL;
  *(v51 + 16680) = 0x80000001BE1426D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2441[8], 0, 32);
  *v2441 = v602;
  *&v2441[40] = v553;
  *&v2442 = 0;
  *(&v2442 + 1) = v606;
  v2443 = 0u;
  v2444 = 0u;
  v2445 = v603;
  v2447 = 0u;
  v2448 = 0u;
  v2446 = v602;
  v2449 = v553;
  v2450 = 0;
  v2451 = v606;
  v2452 = 0u;
  v2453 = 0u;
  v2454 = v603;
  v2455 = 0;
  sub_1BD289374(v2441, v2604);
  sub_1BD2893D0(&v2446);
  v510 = *&v2441[32];
  *(v51 + 16736) = v2442;
  v511 = v2444;
  *(v51 + 16752) = v2443;
  *(v51 + 16768) = v511;
  *(v51 + 16784) = v2445;
  v512 = *&v2441[16];
  *(v51 + 16688) = *v2441;
  *(v51 + 16704) = v512;
  *(v51 + 16720) = v510;
  *(v51 + 16800) = 0xD00000000000003ELL;
  *(v51 + 16808) = 0x80000001BE142710;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2456[8], 0, 32);
  *v2456 = v602;
  *&v2456[40] = v553;
  *&v2457 = 0;
  *(&v2457 + 1) = v606;
  v2458 = 0u;
  v2459 = 0u;
  v2460 = v603;
  v2462 = 0u;
  v2463 = 0u;
  v2461 = v602;
  v2464 = v553;
  v2465 = 0;
  v2466 = v606;
  v2467 = 0u;
  v2468 = 0u;
  v2469 = v603;
  v2470 = 0;
  sub_1BD289374(v2456, v2604);
  sub_1BD2893D0(&v2461);
  v513 = *&v2456[32];
  *(v51 + 16864) = v2457;
  v514 = v2459;
  *(v51 + 16880) = v2458;
  *(v51 + 16896) = v514;
  *(v51 + 16912) = v2460;
  v515 = *&v2456[16];
  *(v51 + 16816) = *v2456;
  *(v51 + 16832) = v515;
  *(v51 + 16848) = v513;
  *(v51 + 16928) = 0xD00000000000003ELL;
  *(v51 + 16936) = 0x80000001BE142750;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2471[8], 0, 32);
  *v2471 = v602;
  *&v2471[40] = v553;
  *&v2472 = 0;
  *(&v2472 + 1) = v606;
  v2473 = 0u;
  v2474 = 0u;
  v2475 = v603;
  v2477 = 0u;
  v2478 = 0u;
  v2476 = v602;
  v2479 = v553;
  v2480 = 0;
  v2481 = v606;
  v2482 = 0u;
  v2483 = 0u;
  v2484 = v603;
  v2485 = 0;
  sub_1BD289374(v2471, v2604);
  sub_1BD2893D0(&v2476);
  v516 = *&v2471[32];
  *(v51 + 16992) = v2472;
  v517 = v2474;
  *(v51 + 17008) = v2473;
  *(v51 + 17024) = v517;
  *(v51 + 17040) = v2475;
  v518 = *&v2471[16];
  *(v51 + 16944) = *v2471;
  *(v51 + 16960) = v518;
  *(v51 + 16976) = v516;
  *(v51 + 17056) = 0xD000000000000036;
  *(v51 + 17064) = 0x80000001BE142790;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2486[8], 0, 32);
  *v2486 = v602;
  *&v2486[40] = v553;
  *&v2487 = 0;
  *(&v2487 + 1) = v606;
  v2488 = 0u;
  v2489 = 0u;
  v2490 = v603;
  v2492 = 0u;
  v2493 = 0u;
  v2491 = v602;
  v2494 = v553;
  v2495 = 0;
  v2496 = v606;
  v2497 = 0u;
  v2498 = 0u;
  v2499 = v603;
  v2500 = 0;
  sub_1BD289374(v2486, v2604);
  sub_1BD2893D0(&v2491);
  v519 = *&v2486[32];
  *(v51 + 17120) = v2487;
  v520 = v2489;
  *(v51 + 17136) = v2488;
  *(v51 + 17152) = v520;
  *(v51 + 17168) = v2490;
  v521 = *&v2486[16];
  *(v51 + 17072) = *v2486;
  *(v51 + 17088) = v521;
  *(v51 + 17104) = v519;
  *(v51 + 17184) = 0xD00000000000003ELL;
  *(v51 + 17192) = 0x80000001BE1427D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2501[8], 0, 32);
  *v2501 = v602;
  *&v2501[40] = v553;
  *&v2502 = 0;
  *(&v2502 + 1) = v606;
  v2503 = 0u;
  v2504 = 0u;
  v2505 = v603;
  v2507 = 0u;
  v2508 = 0u;
  v2506 = v602;
  v2509 = v553;
  v2510 = 0;
  v2511 = v606;
  v2512 = 0u;
  v2513 = 0u;
  v2514 = v603;
  v2515 = 0;
  sub_1BD289374(v2501, v2604);
  sub_1BD2893D0(&v2506);
  v522 = *&v2501[32];
  *(v51 + 17248) = v2502;
  v523 = v2504;
  *(v51 + 17264) = v2503;
  *(v51 + 17280) = v523;
  *(v51 + 17296) = v2505;
  v524 = *&v2501[16];
  *(v51 + 17200) = *v2501;
  *(v51 + 17216) = v524;
  *(v51 + 17232) = v522;
  *(v51 + 17312) = 0xD00000000000003ELL;
  *(v51 + 17320) = 0x80000001BE142810;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2516[8], 0, 32);
  *v2516 = v602;
  *&v2516[40] = v553;
  *&v2517 = 0;
  *(&v2517 + 1) = v606;
  v2518 = 0u;
  v2519 = 0u;
  v2520 = v603;
  v2522 = 0u;
  v2523 = 0u;
  v2521 = v602;
  v2524 = v553;
  v2525 = 0;
  v2526 = v606;
  v2527 = 0u;
  v2528 = 0u;
  v2529 = v603;
  v2530 = 0;
  sub_1BD289374(v2516, v2604);
  sub_1BD2893D0(&v2521);
  v525 = *&v2516[32];
  *(v51 + 17376) = v2517;
  v526 = v2519;
  *(v51 + 17392) = v2518;
  *(v51 + 17408) = v526;
  *(v51 + 17424) = v2520;
  v527 = *&v2516[16];
  *(v51 + 17328) = *v2516;
  *(v51 + 17344) = v527;
  *(v51 + 17360) = v525;
  *(v51 + 17440) = 0xD00000000000003ELL;
  *(v51 + 17448) = 0x80000001BE142850;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2531[8], 0, 32);
  *v2531 = v602;
  *&v2531[40] = v553;
  *&v2532 = 0;
  *(&v2532 + 1) = v606;
  v2533 = 0u;
  v2534 = 0u;
  v2535 = v603;
  v2537 = 0u;
  v2538 = 0u;
  v2536 = v602;
  v2539 = v553;
  v2540 = 0;
  v2541 = v606;
  v2542 = 0u;
  v2543 = 0u;
  v2544 = v603;
  v2545 = 0;
  sub_1BD289374(v2531, v2604);
  sub_1BD2893D0(&v2536);
  v528 = *&v2531[32];
  *(v51 + 17504) = v2532;
  v529 = v2534;
  *(v51 + 17520) = v2533;
  *(v51 + 17536) = v529;
  *(v51 + 17552) = v2535;
  v530 = *&v2531[16];
  *(v51 + 17456) = *v2531;
  *(v51 + 17472) = v530;
  *(v51 + 17488) = v528;
  *(v51 + 17568) = 0xD000000000000036;
  *(v51 + 17576) = 0x80000001BE142890;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  memset(&v2546[8], 0, 32);
  *v2546 = v602;
  *&v2546[40] = v553;
  *&v2547 = 0;
  *(&v2547 + 1) = v606;
  v2548 = 0u;
  v2549 = 0u;
  v2550 = v603;
  v2552 = 0u;
  v2553 = 0u;
  v2551 = v602;
  v2554 = v553;
  v2555 = 0;
  v2556 = v606;
  v2557 = 0u;
  v2558 = 0u;
  v2559 = v603;
  v2560 = 0;
  sub_1BD289374(v2546, v2604);
  sub_1BD2893D0(&v2551);
  v531 = *&v2546[32];
  *(v51 + 17632) = v2547;
  v532 = v2549;
  *(v51 + 17648) = v2548;
  *(v51 + 17664) = v532;
  *(v51 + 17680) = v2550;
  v533 = *&v2546[16];
  *(v51 + 17584) = *v2546;
  *(v51 + 17600) = v533;
  *(v51 + 17616) = v531;
  *(v51 + 17696) = 0xD000000000000020;
  *(v51 + 17704) = 0x80000001BE1428D0;
  v534 = v597;

  v535 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.96 green:0.29 blue:0.24 alpha:1.0];
  v536 = [v535 CGColor];

  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2561 = v597;
  memset(&v2562[8], 0, 32);
  *v2562 = v5;
  *&v2562[40] = v536;
  *&v2563 = 0;
  *(&v2563 + 1) = v5;
  v2564 = 0u;
  v2565 = 0u;
  v2566[0] = v597;
  v2566[1] = 0;
  v2567 = 0u;
  v2568 = 0u;
  v2566[2] = v5;
  v2569 = v536;
  v2570 = 0;
  v2571 = v5;
  v2573 = 0u;
  v2572 = 0u;
  sub_1BD289374(&v2561, v2604);
  sub_1BD2893D0(v2566);
  v537 = *&v2562[16];
  *(v51 + 17760) = *&v2562[32];
  v538 = v2564;
  *(v51 + 17776) = v2563;
  *(v51 + 17792) = v538;
  *(v51 + 17808) = v2565;
  v539 = *v2562;
  *(v51 + 17712) = v2561;
  *(v51 + 17728) = v539;
  *(v51 + 17744) = v537;
  *(v51 + 17824) = 0xD00000000000001ELL;
  *(v51 + 17832) = 0x80000001BE142900;
  v540 = swift_allocObject();
  *(v540 + 16) = xmmword_1BE0B6CA0;
  *(v540 + 32) = v619;
  *(v540 + 40) = v618;
  v541 = swift_allocObject();
  *(v541 + 16) = xmmword_1BE0B6CA0;
  *(v541 + 32) = v42;
  *(v541 + 40) = v617;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2576 = 0u;
  v2575 = 0u;
  v2574 = 0u;
  memset(&v2577[8], 0, 48);
  *v2577 = v540;
  *&v2577[56] = v541;
  memset(v2578, 0, sizeof(v2578));
  v2580 = 0u;
  v2581 = 0u;
  v2582 = 0u;
  v2579 = v540;
  v2583 = v541;
  sub_1BD289374(&v2574, v2604);
  sub_1BD2893D0(v2578);
  v542 = v2576;
  *(v51 + 17888) = *v2577;
  v543 = *&v2577[32];
  *(v51 + 17904) = *&v2577[16];
  *(v51 + 17920) = v543;
  *(v51 + 17936) = *&v2577[48];
  v544 = v2575;
  *(v51 + 17840) = v2574;
  *(v51 + 17856) = v544;
  *(v51 + 17872) = v542;
  *(v51 + 17952) = 0xD000000000000017;
  *(v51 + 17960) = 0x80000001BE142920;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  *&v2584 = v628;
  *(&v2584 + 1) = v613;
  memset(&v2585[8], 0, 32);
  *v2585 = v5;
  *&v2585[40] = v628;
  *&v2586 = v46;
  *(&v2586 + 1) = v5;
  v2587 = 0u;
  v2588 = 0u;
  v2589[0] = v628;
  v2589[1] = v613;
  v2590 = 0u;
  v2591 = 0u;
  v2589[2] = v5;
  v2592 = v628;
  v2593 = v46;
  v2594 = v5;
  v2596 = 0u;
  v2595 = 0u;
  sub_1BD289374(&v2584, v2604);
  sub_1BD2893D0(v2589);
  v545 = *&v2585[16];
  *(v51 + 18016) = *&v2585[32];
  v546 = v2587;
  *(v51 + 18032) = v2586;
  *(v51 + 18048) = v546;
  *(v51 + 18064) = v2588;
  v547 = *v2585;
  *(v51 + 17968) = v2584;
  *(v51 + 17984) = v547;
  *(v51 + 18000) = v545;
  *(v51 + 18080) = 0xD000000000000011;
  *(v51 + 18088) = 0x80000001BE142940;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0);
  v2597 = 0uLL;
  *&v2598 = 0;
  *(&v2598 + 1) = v5;
  v2599 = 0u;
  v2600 = 0u;
  v2601 = 0u;
  v2602 = v5;
  v2603 = 0uLL;
  memset(v2604, 0, 24);
  v2604[3] = v5;
  v2605 = 0u;
  v2606 = 0u;
  v2607 = 0u;
  v2611 = 0;
  v2610 = 0;
  v2608 = v5;
  v2609 = 0;
  sub_1BD289374(&v2597, v630);
  sub_1BD2893D0(v2604);
  v548 = v2599;
  *(v51 + 18144) = v2600;
  v549 = v2602;
  *(v51 + 18160) = v2601;
  *(v51 + 18176) = v549;
  *(v51 + 18192) = v2603;
  v550 = v2598;
  *(v51 + 18096) = v2597;
  *(v51 + 18112) = v550;
  *(v51 + 18128) = v548;
  v551 = sub_1BD1ABCFC(v51);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE60);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return v551;
}

id AutoFillHeroAnimationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *sub_1BD9483BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BD1B6140(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1BD948428(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_1BD948470(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1BD1B6140(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1BD9484EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BE0492B4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1BD9485A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1BD9485F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1BD948680(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 25) = *(a4 + 25);
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

unint64_t sub_1BD9486DC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1BD948720(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_1BD948790(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_1BD948AB8(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1BD948854(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1BD948908(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1BD1B6150(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1BD948974(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1BD1B6140(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1BD9489DC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1BFB45F40](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1BFB45F40](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD948AB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD948B20()
{
  result = qword_1EBD38278;
  if (!qword_1EBD38278)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38278);
  }

  return result;
}

void sub_1BD948C74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v37 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v38 = sub_1BE04BAC4();
  v36 = *(v38 - 1);
  MEMORY[0x1EEE9AC00](v38, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B944();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BD9491D8();
  sub_1BE052434();
  v12 = sub_1BE04BB74();

  v13 = sub_1BE04BBD4();
  sub_1BE04BB04();
  v14 = sub_1BE04B8E4();
  (*(v8 + 8))(v11, v7);
  sub_1BE04BC34();
  v15 = sub_1BE04B9A4();
  (v36)[1](v6, v38);
  v16 = *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_credential];
  v17 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_product];
  v18 = v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_allowManualEntry];
  v19 = objc_allocWithZone(PKNewPaymentCredentialProvisioningViewController);
  v38 = v12;
  v34 = v12;
  v20 = v35;
  v36 = v16;
  v21 = [v19 initWithProvisioningController:v13 webService:v14 context:v15 paymentCredential:v16 setupProduct:v17 allowsManualEntry:v18 reporter:v34];

  [v21 setFlowItemDelegate_];
  KeyPath = swift_getKeyPath();
  LOBYTE(v17) = sub_1BD1882F8(v3, KeyPath);

  [v21 setHasRemainingCredentialsToProvision_];
  v23 = swift_getKeyPath();
  LOBYTE(v17) = sub_1BD188324(v3, v23);

  [v21 setShowSkipButton_];
  [v21 setCoordinator_];
  v24 = [v21 fieldsModel];
  if (!v24)
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  }

  swift_unknownObjectWeakAssign();
  v25 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
  v26 = objc_allocWithZone(v25);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v41.receiver = v26;
  v41.super_class = v25;
  v27 = v21;
  v28 = objc_msgSendSuper2(&v41, sel_init);
  LOBYTE(key[0]) = 0;
  objc_setAssociatedObject(v27, key, v28, 1);

  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = &off_1F3BC1D90;
  swift_unknownObjectWeakAssign();
  v29 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_viewController];
  *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_viewController] = v21;

  if ([v36 isPrecursorCredential])
  {
    key[4] = v37;
    key[5] = v39;
    key[0] = MEMORY[0x1E69E9820];
    key[1] = 1107296256;
    key[2] = sub_1BD976224;
    key[3] = &block_descriptor_11_0;
    v30 = _Block_copy(key);
    sub_1BE048964();

    [v27 preflightWithCompletion_];

    _Block_release(v30);
  }

  else
  {
    v31 = swift_allocObject();
    v32 = v37;
    v31[2] = v27;
    v31[3] = v32;
    v31[4] = v39;
    v33 = v27;
    sub_1BE048964();
    sub_1BD814B5C(v24, 10, sub_1BD949C38, v31);
  }
}

char *sub_1BD9491D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v1 = sub_1BE04C384();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B69E0;
  v5 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_credential);
  *(v4 + v3) = v5;
  (*(v2 + 104))(v4 + v3, *MEMORY[0x1E69B82A8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0);
  sub_1BE04B944();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_context);
  v7 = v5;
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  v8 = sub_1BE04C394();
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_previouslyAcceptedTerms);
  v10 = type metadata accessor for ProvisioningUICoordinator();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v6;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v8;
  swift_unknownObjectWeakAssign();
  *(v12 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = v9;
  sub_1BE048964();
  sub_1BE048964();
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v15.receiver = v11;
  v15.super_class = v10;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  *&v13[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BC6980;
  swift_unknownObjectWeakAssign();
  return v13;
}

void sub_1BD949570(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BD976224;
  v6[3] = &block_descriptor_14_4;
  v5 = _Block_copy(v6);
  sub_1BE048964();

  [a2 preflightWithCompletion_];
  _Block_release(v5);
}

uint64_t sub_1BD949628(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(a1, &off_1F3BC6990, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD9496B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9496EC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD94973C()
{
  v0 = sub_1BD949878();
  sub_1BD28B498(v0);
  return v0;
}

uint64_t sub_1BD949878()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;
  v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_isShowingViewController] = 1;
  if (*&v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_provisionedPasses])
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v29 = v3;
    v30 = v6;
    v27 = sub_1BE052D54();
    sub_1BE051FB4();
    sub_1BE051FF4();
    v28 = *(v12 + 8);
    v28(v15, v11);
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    aBlock[4] = sub_1BD949C30;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_214;
    v21 = _Block_copy(aBlock);
    v22 = v1;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    v26 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v23 = v31;
    sub_1BE053664();
    v24 = v27;
    MEMORY[0x1BFB3FD90](v19, v10, v23, v21);
    _Block_release(v21);

    (*(v29 + 8))(v23, v2);
    (*(v7 + 8))(v10, v30);
    v28(v19, v26);
  }

  return *&v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_viewController];
}

void sub_1BD949C44(void *a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    sub_1BD0E5E8C(0, qword_1EBD45AD0);
    sub_1BD412688();
    swift_willThrowTypedImpl();
    v3 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_provisionedPasses);
  *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_provisionedPasses) = v3;

  if (*(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_isShowingViewController) == 1)
  {
    v6 = v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v2, &off_1F3BC6990, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1BD949D28()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_product);
  if (v2)
  {
    v3 = type metadata accessor for PaymentSetupProductManualEntryFlowSection();
    v4 = objc_allocWithZone(v3);
    v5 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod;
    *&v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod] = 0;
    *&v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v6 = &v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_identifier];
    *v6 = 0xD00000000000001DLL;
    v6[1] = 0x80000001BE12CB20;
    v7 = v2;
    *&v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context] = sub_1BE04BC14();
    *&v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product] = v7;
    v8 = *&v4[v5];
    *&v4[v5] = 0;
    v9 = v7;

    v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_allowSecondaryManualEntry] = 0;
    v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedTransferCard] = 0;
    v18.receiver = v4;
    v18.super_class = v3;
    v10 = objc_msgSendSuper2(&v18, sel_init);

    v11 = &off_1F3B9F388;
  }

  else
  {
    v12 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
    v13 = sub_1BE048964();
    v10 = sub_1BD87126C(v13, 0, 0);
    v11 = &off_1F3BC0AB0;
  }

  v14 = v1 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v1, &off_1F3BC6990, v10, v11, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD949F0C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1, a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_1BE04E644();
  sub_1BE050884();
}

uint64_t sub_1BD94A008()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59618);
  sub_1BE051694();
  return v1;
}

id sub_1BD94A050(uint64_t a1)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 92);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    v10 = v9;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v11 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD25D6D4(v9, 0);
    (*(v4 + 8))(v7, v3);
    v9 = v19;
    if (!v19)
    {
      goto LABEL_10;
    }
  }

  v12 = [v9 scene];

  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 screen];

      if (v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

LABEL_10:
  sub_1BD9550F0();
  sub_1BE048964();
  v14 = sub_1BE04CD74();

  if (!v14)
  {
    return v14;
  }

LABEL_11:
  v15 = v14;
  result = [v15 displayIdentity];
  if (result)
  {
    v17 = result;
    v14 = [result isMainDisplay];

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD94A28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59678);
  v99 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v3);
  v98 = &v79 - v4;
  v110 = *(a1 - 8);
  v106 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v103 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v97 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v8);
  v102 = &v79 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59688);
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59690);
  v96 = a1;
  v10 = *(a1 + 24);
  v108 = *(a1 + 16);
  v109 = v10;
  type metadata accessor for AppProtectionShieldView();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59698);
  v11 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596A0);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50060);
  v12 = sub_1BE04EBD4();
  v92 = sub_1BE04FCF4();
  WitnessTable = swift_getWitnessTable();
  v147 = MEMORY[0x1E697EBF8];
  v144 = swift_getWitnessTable();
  v145 = MEMORY[0x1E697EBE0];
  v13 = swift_getWitnessTable();
  v14 = sub_1BD0DE4F4(&qword_1EBD36750, &qword_1EBD59698);
  v142 = v13;
  v143 = v14;
  v91 = v11;
  v15 = swift_getWitnessTable();
  v94 = v15;
  v16 = sub_1BD0DE4F4(&qword_1EBD50058, &unk_1EBD596A0);
  v140 = v15;
  v141 = v16;
  v17 = swift_getWitnessTable();
  v93 = MEMORY[0x1E697DDB0];
  v18 = sub_1BD0DE4F4(&unk_1EBD596B0, &qword_1EBD50060);
  v138 = v17;
  v139 = v18;
  v90 = v12;
  v19 = swift_getWitnessTable();
  v20 = sub_1BD9548B0(&qword_1EBD50068, MEMORY[0x1E697FF20]);
  v21 = v92;
  v124 = v12;
  v125 = v92;
  v126 = v19;
  v127 = v20;
  swift_getOpaqueTypeMetadata2();
  v22 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596C0);
  sub_1BE04EBD4();
  type metadata accessor for AuthorizationSheet.SheetShape();
  swift_getWitnessTable();
  sub_1BE04E4C4();
  v23 = sub_1BE04EBD4();
  v124 = v90;
  v125 = v21;
  v126 = v19;
  v127 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v137 = MEMORY[0x1E697E070];
  v24 = v22;
  v25 = swift_getWitnessTable();
  v26 = sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0);
  v27 = v94;
  v134 = v94;
  v135 = v26;
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v132 = v28;
  v133 = v29;
  v30 = swift_getWitnessTable();
  v124 = v91;
  v125 = MEMORY[0x1E6981CD8];
  v126 = v24;
  v127 = v23;
  v128 = v27;
  v129 = MEMORY[0x1E6981CD0];
  v130 = v25;
  v131 = v30;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  v95 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596D0);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60);
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596E0);
  sub_1BE04EBD4();
  v31 = swift_getWitnessTable();
  v32 = sub_1BD0DE4F4(&qword_1EBD36768, &unk_1EBD596D0);
  v122 = v31;
  v123 = v32;
  v33 = swift_getWitnessTable();
  v120 = v33;
  v121 = MEMORY[0x1E697E8E8];
  v34 = swift_getWitnessTable();
  v35 = sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
  v118 = v34;
  v119 = v35;
  v116 = swift_getWitnessTable();
  v117 = v33;
  v36 = swift_getWitnessTable();
  v37 = sub_1BD0DE4F4(&qword_1EBD36718, &unk_1EBD596E0);
  v114 = v36;
  v115 = v37;
  swift_getWitnessTable();
  sub_1BE04E814();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD596F0);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596F8);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v38 = sub_1BE051874();
  v84 = v38;
  v93 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v80 = &v79 - v40;
  v41 = sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600);
  v86 = v41;
  v85 = swift_getWitnessTable();
  v124 = v105;
  v125 = v38;
  v126 = v41;
  v127 = v85;
  v42 = sub_1BE04EE14();
  v88 = v42;
  v95 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v43);
  v101 = &v79 - v44;
  v45 = sub_1BD0DE4F4(&qword_1EBD36948, &unk_1EBD59678);
  v90 = v45;
  v94 = MEMORY[0x1E697C278];
  v89 = swift_getWitnessTable();
  v124 = v107;
  v125 = v42;
  v126 = v45;
  v127 = v89;
  v46 = sub_1BE04EE14();
  v47 = *(v46 - 8);
  v91 = v46;
  v92 = v47;
  MEMORY[0x1EEE9AC00](v46, v48);
  v83 = &v79 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v87 = &v79 - v52;
  sub_1BE04F7B4();
  sub_1BE04F4F4();
  v54 = v108;
  v53 = v109;
  v111 = v108;
  v112 = v109;
  v55 = v104;
  v113 = v104;
  sub_1BE051864();
  v56 = v96;
  sub_1BD9550F0();
  sub_1BE048964();
  sub_1BE04CD04();

  v57 = v110;
  v82 = *(v110 + 16);
  v58 = v103;
  v82(v103, v55, v56);
  v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = v54;
  *(v60 + 24) = v53;
  v61 = *(v57 + 32);
  v110 = v57 + 32;
  v81 = v61;
  v61(v60 + v59, v58, v56);
  v62 = v102;
  v63 = v84;
  v64 = v105;
  v65 = v80;
  sub_1BE051154();

  (*(v97 + 8))(v62, v64);
  (*(v93 + 8))(v65, v63);
  v66 = v104;
  sub_1BD9550F0();
  sub_1BE048964();
  v67 = v98;
  sub_1BE04CD34();

  v68 = v103;
  v82(v103, v66, v56);
  v69 = swift_allocObject();
  v70 = v109;
  *(v69 + 16) = v108;
  *(v69 + 24) = v70;
  v81(v69 + v59, v68, v56);
  v71 = v83;
  v72 = v88;
  v73 = v107;
  v74 = v101;
  sub_1BE051154();

  (*(v99 + 8))(v67, v73);
  (*(v95 + 8))(v74, v72);
  v75 = v91;
  swift_getWitnessTable();
  v76 = v87;
  sub_1BD147308(v71);
  v77 = *(v92 + 8);
  v77(v71, v75);
  sub_1BD147308(v76);
  return (v77)(v76, v75);
}

uint64_t sub_1BD94B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v157 = a2;
  v158 = a3;
  v159 = a1;
  v151 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59708);
  v148 = *(v4 - 8);
  v149 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v126 = &v122 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59710);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v143 = &v122 - v9;
  v10 = sub_1BE04CA04();
  v144 = *(v10 - 8);
  v145 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v141 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596F8);
  MEMORY[0x1EEE9AC00](v146, v13);
  v150 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v147 = &v122 - v17;
  v155 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59688);
  v156 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59690);
  type metadata accessor for AppProtectionShieldView();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59698);
  v18 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596A0);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50060);
  v19 = sub_1BE04EBD4();
  v20 = sub_1BE04FCF4();
  WitnessTable = swift_getWitnessTable();
  v217 = MEMORY[0x1E697EBF8];
  v214 = swift_getWitnessTable();
  v215 = MEMORY[0x1E697EBE0];
  v21 = swift_getWitnessTable();
  v22 = sub_1BD0DE4F4(&qword_1EBD36750, &qword_1EBD59698);
  v212 = v21;
  v213 = v22;
  v152 = v18;
  v23 = swift_getWitnessTable();
  v154 = v23;
  v24 = sub_1BD0DE4F4(&qword_1EBD50058, &unk_1EBD596A0);
  v210 = v23;
  v211 = v24;
  v25 = swift_getWitnessTable();
  v153 = MEMORY[0x1E697DDB0];
  v26 = sub_1BD0DE4F4(&unk_1EBD596B0, &qword_1EBD50060);
  v208 = v25;
  v209 = v26;
  v142 = v19;
  v27 = swift_getWitnessTable();
  v28 = sub_1BD9548B0(&qword_1EBD50068, MEMORY[0x1E697FF20]);
  *&v167 = v19;
  *(&v167 + 1) = v20;
  *&v168 = v27;
  *(&v168 + 1) = v28;
  swift_getOpaqueTypeMetadata2();
  v29 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596C0);
  sub_1BE04EBD4();
  type metadata accessor for AuthorizationSheet.SheetShape();
  swift_getWitnessTable();
  sub_1BE04E4C4();
  v30 = sub_1BE04EBD4();
  *&v167 = v142;
  *(&v167 + 1) = v20;
  *&v168 = v27;
  *(&v168 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v207 = MEMORY[0x1E697E070];
  v31 = swift_getWitnessTable();
  v32 = sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0);
  v33 = v154;
  v204 = v154;
  v205 = v32;
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v202 = v34;
  v203 = v35;
  v36 = swift_getWitnessTable();
  *&v167 = v152;
  *(&v167 + 1) = MEMORY[0x1E6981CD8];
  *&v168 = v29;
  *(&v168 + 1) = v30;
  *&v169 = v33;
  *(&v169 + 1) = MEMORY[0x1E6981CD0];
  *&v170 = v31;
  *(&v170 + 1) = v36;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596D0);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60);
  sub_1BE04EBD4();
  v156 = sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596E0);
  v37 = sub_1BE04EBD4();
  v38 = swift_getWitnessTable();
  v39 = sub_1BD0DE4F4(&qword_1EBD36768, &unk_1EBD596D0);
  v200 = v38;
  v201 = v39;
  v40 = swift_getWitnessTable();
  v198 = v40;
  v199 = MEMORY[0x1E697E8E8];
  v41 = swift_getWitnessTable();
  v42 = sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
  v196 = v41;
  v197 = v42;
  v194 = swift_getWitnessTable();
  v195 = v40;
  v43 = swift_getWitnessTable();
  v44 = sub_1BD0DE4F4(&qword_1EBD36718, &unk_1EBD596E0);
  v192 = v43;
  v193 = v44;
  v45 = swift_getWitnessTable();
  v136 = v37;
  v131 = v45;
  v133 = sub_1BE04E814();
  v46 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD596F0);
  v135 = v46;
  v137 = sub_1BE04EBD4();
  v140 = sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  v47 = sub_1BE051E34();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v139 = &v122 - v50;
  v134 = sub_1BE04E8A4();
  v132 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v51);
  v53 = &v122 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for AuthorizationSheet();
  v130 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v55);
  v129 = &v122 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59718);
  v127 = *(v57 - 8);
  v128 = v57;
  MEMORY[0x1EEE9AC00](v57, v58);
  v125 = &v122 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v138 = &v122 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v122 - v65;
  v156 = sub_1BE0534B4();
  v67 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v68);
  v70 = &v122 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v122 - v73;
  v152 = v54;
  v75 = (v159 + *(v54 + 64));
  v76 = *v75;
  v77 = *(v75 + 1);
  LOBYTE(v167) = v76;
  *(&v167 + 1) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v142 = v70;
  v153 = v74;
  v154 = v67;
  if (v160 != 1)
  {
    (*(v48 + 56))(v70, 1, 1, v47);
    swift_getWitnessTable();
    sub_1BD13A694(v70, v74);
    v158 = *(v67 + 8);
    v158(v70, v156);
    goto LABEL_10;
  }

  v123 = v47;
  v124 = v48;
  sub_1BE048964();
  v78 = sub_1BE04CBB4();

  v122 = v66;
  if (v78 & 1) != 0 && (sub_1BD94A050(v152))
  {
    v79 = *(v159 + 8);
    sub_1BE048964();
    if (sub_1BE04CB74())
    {
    }

    else
    {
      v80 = *(v79 + qword_1EBD55570);

      if (v80 <= 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE048964();
        sub_1BE04D8B4();

        v171 = v164;
        v172 = v165;
        v173 = v166;
        v167 = v160;
        v168 = v161;
        v169 = v162;
        v170 = v163;
        *(&v161 + 1) = &_s5GlyphVN;
        *&v162 = sub_1BD955904();
        v116 = swift_allocObject();
        *&v160 = v116;
        v117 = v172;
        v116[5] = v171;
        v116[6] = v117;
        v116[7] = v173;
        v118 = v168;
        v116[1] = v167;
        v116[2] = v118;
        v119 = v170;
        v116[3] = v169;
        v116[4] = v119;
        v120 = v125;
        sub_1BE04C964();
        v121 = v128;
        *(v120 + *(v128 + 36)) = 0;
        sub_1BD0DE204(v120, v66, &qword_1EBD59718);
        (*(v127 + 56))(v66, 0, 1, v121);
        goto LABEL_9;
      }
    }
  }

  (*(v127 + 56))(v66, 1, 1, v128);
LABEL_9:
  v82 = v129;
  v81 = v130;
  v83 = v152;
  (*(v130 + 16))(v129, v159, v152);
  v84 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v85 = swift_allocObject();
  v86 = v158;
  *(v85 + 16) = v157;
  *(v85 + 24) = v86;
  (*(v81 + 32))(v85 + v84, v82, v83);
  *&v160 = sub_1BE04E804();
  *(&v160 + 1) = v87;
  sub_1BE051EA4();
  v88 = swift_getWitnessTable();
  sub_1BE050AB4();

  v187 = v167;
  v188 = v168;
  *&v189 = v169;
  sub_1BE04E894();
  v181[6] = v88;
  v181[7] = MEMORY[0x1E697E900];
  v89 = swift_getWitnessTable();
  sub_1BD9548B0(&unk_1EBD36878, MEMORY[0x1E697E410]);
  v90 = v134;
  sub_1BD949F0C(v53);
  (*(v132 + 8))(v53, v90);

  v187 = v160;
  v188 = v161;
  v189 = v162;
  v91 = sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
  v181[4] = v89;
  v181[5] = v91;
  v92 = swift_getWitnessTable();
  sub_1BE050F94();

  v160 = v167;
  v161 = v168;
  v162 = v169;
  v163 = v170;
  v181[2] = v92;
  v181[3] = MEMORY[0x1E697E270];
  v93 = v140;
  v94 = swift_getWitnessTable();
  sub_1BD147308(&v160);
  v186[0] = v160;
  v186[1] = v161;
  v186[2] = v162;
  v186[3] = v163;
  v95 = *(v93 - 8);
  v96 = *(v95 + 8);
  v96(v186, v93);
  v97 = v122;
  v98 = v138;
  sub_1BD0DE19C(v122, v138, &qword_1EBD59688);
  v187 = v182;
  v188 = v183;
  v189 = v184;
  v190 = v185;
  v177 = v182;
  v178 = v183;
  v179 = v184;
  v180 = v185;
  v181[0] = v98;
  v181[1] = &v177;
  (*(v95 + 16))(&v167, &v187, v93);
  v176[0] = v155;
  v176[1] = v93;
  v174 = sub_1BD9557CC(&qword_1EBD36840, &qword_1EBD59688, &unk_1BE107190, sub_1BD955848);
  v175 = v94;
  v99 = v139;
  sub_1BD13A4C4(v181, 2uLL, v176);
  v160 = v182;
  v161 = v183;
  v162 = v184;
  v163 = v185;
  v96(&v160, v93);
  sub_1BD0DE53C(v97, &qword_1EBD59688);
  v167 = v177;
  v168 = v178;
  v169 = v179;
  v170 = v180;
  v96(&v167, v93);
  sub_1BD0DE53C(v98, &qword_1EBD59688);
  v101 = v123;
  v100 = v124;
  v70 = v142;
  (*(v124 + 32))(v142, v99, v123);
  (*(v100 + 56))(v70, 0, 1, v101);
  swift_getWitnessTable();
  sub_1BD13A694(v70, v153);
  v158 = *(v154 + 8);
  v158(v70, v156);
LABEL_10:
  sub_1BE048964();
  v102 = v143;
  sub_1BE04CA14();

  v104 = v144;
  v103 = v145;
  v105 = (*(v144 + 48))(v102, 1, v145);
  v106 = v147;
  if (v105 == 1)
  {
    sub_1BD0DE53C(v102, &qword_1EBD59710);
    v107 = 1;
  }

  else
  {
    v108 = v141;
    (*(v104 + 32))(v141, v102, v103);
    if (sub_1BD94A050(v152))
    {
      v109 = v126;
      sub_1BD94DE94(v108, v126);
      (*(v104 + 8))(v108, v103);
      sub_1BD0DE204(v109, v106, &qword_1EBD59708);
      v107 = 0;
    }

    else
    {
      (*(v104 + 8))(v108, v103);
      v107 = 1;
    }

    v70 = v142;
  }

  v110 = v153;
  v111 = v154;
  (*(v148 + 56))(v106, v107, 1, v149);
  v112 = v156;
  (*(v111 + 16))(v70, v110, v156);
  *&v167 = v70;
  v113 = v150;
  sub_1BD0DE19C(v106, v150, &unk_1EBD596F8);
  *(&v167 + 1) = v113;
  *&v160 = v112;
  *(&v160 + 1) = v146;
  v191 = swift_getWitnessTable();
  *&v187 = swift_getWitnessTable();
  *(&v187 + 1) = sub_1BD9557CC(&qword_1EBD59720, &unk_1EBD596F8, &unk_1BE1071D0, sub_1BD9552A8);
  sub_1BD13A4C4(&v167, 2uLL, &v160);
  sub_1BD0DE53C(v106, &unk_1EBD596F8);
  v114 = v158;
  v158(v110, v112);
  sub_1BD0DE53C(v113, &unk_1EBD596F8);
  return v114(v70, v112);
}

uint64_t sub_1BD94C700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v64 = a3;
  v60 = a1;
  v61 = a2;
  v62 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD597A0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v59 = v53 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59690);
  type metadata accessor for AppProtectionShieldView();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59698);
  v8 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596A0);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50060);
  v9 = sub_1BE04EBD4();
  v10 = sub_1BE04FCF4();
  WitnessTable = swift_getWitnessTable();
  v98 = MEMORY[0x1E697EBF8];
  v95 = swift_getWitnessTable();
  v96 = MEMORY[0x1E697EBE0];
  v11 = swift_getWitnessTable();
  v12 = sub_1BD0DE4F4(&qword_1EBD36750, &qword_1EBD59698);
  v93 = v11;
  v94 = v12;
  v55 = v8;
  v13 = swift_getWitnessTable();
  v57 = v13;
  v14 = sub_1BD0DE4F4(&qword_1EBD50058, &unk_1EBD596A0);
  v91 = v13;
  v92 = v14;
  v15 = swift_getWitnessTable();
  v56 = MEMORY[0x1E697DDB0];
  v16 = sub_1BD0DE4F4(&unk_1EBD596B0, &qword_1EBD50060);
  v89 = v15;
  v90 = v16;
  v54 = v9;
  v17 = swift_getWitnessTable();
  v18 = sub_1BD9548B0(&qword_1EBD50068, MEMORY[0x1E697FF20]);
  v75 = v9;
  v76 = v10;
  v77 = v17;
  v78 = v18;
  swift_getOpaqueTypeMetadata2();
  v19 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596C0);
  sub_1BE04EBD4();
  type metadata accessor for AuthorizationSheet.SheetShape();
  swift_getWitnessTable();
  sub_1BE04E4C4();
  v20 = sub_1BE04EBD4();
  v75 = v54;
  v76 = v10;
  v77 = v17;
  v78 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = MEMORY[0x1E697E070];
  v21 = v19;
  v22 = swift_getWitnessTable();
  v23 = sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0);
  v24 = v57;
  v85 = v57;
  v86 = v23;
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v83 = v25;
  v84 = v26;
  v27 = swift_getWitnessTable();
  v75 = v55;
  v76 = MEMORY[0x1E6981CD8];
  v77 = v21;
  v78 = v20;
  v79 = v24;
  v80 = MEMORY[0x1E6981CD0];
  v81 = v22;
  v82 = v27;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v54 = sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596D0);
  v53[1] = sub_1BE04EBD4();
  v55 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60);
  v56 = sub_1BE04EBD4();
  v28 = sub_1BE04F9B4();
  v57 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v53 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596E0);
  v32 = sub_1BE04EBD4();
  v58 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v53 - v38;
  v40 = sub_1BE04E6A4();
  v41 = *(v40 - 8);
  v42 = v59;
  (*(v41 + 16))(v59, v60, v40);
  (*(v41 + 56))(v42, 0, 1, v40);
  v43 = type metadata accessor for AuthorizationSheet();
  sub_1BD94D038(v42, v43, v31);
  sub_1BD0DE53C(v42, &qword_1EBD597A0);
  v44 = swift_getWitnessTable();
  v45 = sub_1BD0DE4F4(&qword_1EBD36768, &unk_1EBD596D0);
  v73 = v44;
  v74 = v45;
  v46 = swift_getWitnessTable();
  v71 = v46;
  v72 = MEMORY[0x1E697E8E8];
  v47 = swift_getWitnessTable();
  v48 = sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
  v69 = v47;
  v70 = v48;
  v67 = swift_getWitnessTable();
  v68 = v46;
  v49 = swift_getWitnessTable();
  sub_1BE050FA4();
  (*(v57 + 8))(v31, v28);
  v50 = sub_1BD0DE4F4(&qword_1EBD36718, &unk_1EBD596E0);
  v65 = v49;
  v66 = v50;
  swift_getWitnessTable();
  sub_1BD147308(v35);
  v51 = *(v58 + 8);
  v51(v35, v32);
  sub_1BD147308(v39);
  return (v51)(v39, v32);
}

uint64_t sub_1BD94D038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a1;
  v111 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59690);
  v105 = a2;
  v5 = *(a2 + 24);
  v114 = *(a2 + 16);
  v115 = v4;
  v113 = v5;
  type metadata accessor for AppProtectionShieldView();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59698);
  v6 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596A0);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50060);
  v7 = sub_1BE04EBD4();
  sub_1BE04FCF4();
  WitnessTable = swift_getWitnessTable();
  v166 = MEMORY[0x1E697EBF8];
  v163 = swift_getWitnessTable();
  v164 = MEMORY[0x1E697EBE0];
  v161 = swift_getWitnessTable();
  v162 = sub_1BD0DE4F4(&qword_1EBD36750, &qword_1EBD59698);
  v109 = v6;
  v112 = swift_getWitnessTable();
  v159 = v112;
  v160 = sub_1BD0DE4F4(&qword_1EBD50058, &unk_1EBD596A0);
  v8 = swift_getWitnessTable();
  v110 = MEMORY[0x1E697DDB0];
  v157 = v8;
  v158 = sub_1BD0DE4F4(&unk_1EBD596B0, &qword_1EBD50060);
  v108 = v7;
  swift_getWitnessTable();
  sub_1BD9548B0(&qword_1EBD50068, MEMORY[0x1E697FF20]);
  swift_getOpaqueTypeMetadata2();
  v9 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596C0);
  sub_1BE04EBD4();
  type metadata accessor for AuthorizationSheet.SheetShape();
  swift_getWitnessTable();
  sub_1BE04E4C4();
  v10 = sub_1BE04EBD4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v156 = MEMORY[0x1E697E070];
  v11 = swift_getWitnessTable();
  v153 = v112;
  v154 = sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0);
  v151 = swift_getWitnessTable();
  v152 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v143 = v6;
  v144 = MEMORY[0x1E6981CD8];
  v145 = v9;
  v146 = v10;
  v147 = v112;
  v148 = MEMORY[0x1E6981CD0];
  v149 = v11;
  v150 = v12;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v13 = sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596D0);
  v14 = sub_1BE04EBD4();
  v15 = sub_1BE04EBD4();
  v98 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v96 = &v91 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60);
  v110 = v15;
  v18 = sub_1BE04EBD4();
  v101 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v18);
  v100 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v97 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v99 = &v91 - v25;
  v102 = v26;
  v27 = sub_1BE04F9B4();
  v108 = *(v27 - 8);
  v109 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v107 = &v91 - v29;
  v30 = v14;
  v104 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v95 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v91 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v112 = &v91 - v40;
  v115 = v13;
  v103 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v91 - v43;
  v45 = v105;
  v46 = v106;
  v47 = v116;
  sub_1BD94E580(v106, v105);
  v49 = v48;
  v51 = v50;
  v52 = sub_1BD94EB88(v46, v45);
  v93 = v53;
  v94 = v52;
  v55 = v54;
  v117 = v114;
  v118 = v113;
  v119 = v47;
  v120 = v49;
  v121 = v51;
  v122 = v46;
  sub_1BE04F7B4();
  v114 = v44;
  sub_1BE051844();
  sub_1BD9550F0();
  sub_1BE048964();
  v56 = sub_1BE04CCE4();

  if ((v56 & 1) == 0)
  {
    sub_1BD9550F0();
    sub_1BE048964();
    sub_1BE04CD44();
    v58 = v57;

    MEMORY[0x1BFB3EDF0](v59, v58, 0.825, 0.0);
  }

  v143 = v49;
  v144 = v51;
  type metadata accessor for CGSize(0);
  v60 = swift_getWitnessTable();
  sub_1BD9548B0(&qword_1EBD35DB8, type metadata accessor for CGSize);
  v61 = v112;
  sub_1BE0510E4();

  v62 = MEMORY[0x1E697E8E8];
  v113 = v60;
  if (v55)
  {
    v63 = sub_1BD0DE4F4(&qword_1EBD36768, &unk_1EBD596D0);
    v141 = v60;
    v142 = v63;
    v64 = swift_getWitnessTable();
    v92 = v37;
    sub_1BD147308(v61);
    v65 = v95;
    sub_1BD147308(v37);
    v139 = v64;
    v140 = v62;
    v66 = swift_getWitnessTable();
    v67 = sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    v137 = v66;
    v138 = v67;
    v68 = v102;
    swift_getWitnessTable();
    v69 = v107;
    sub_1BD13A7F8(v65, v68, v30);
    v70 = *(v104 + 8);
    v71 = v65;
    v72 = v113;
    v70(v71, v30);
    v70(v92, v30);
    v70(v61, v30);
  }

  else
  {
    v73 = sub_1BD0DE4F4(&qword_1EBD36768, &unk_1EBD596D0);
    v127 = v60;
    v128 = v73;
    v74 = swift_getWitnessTable();
    v75 = v96;
    v76 = sub_1BE051094();
    v77 = v110;
    if ((v56 & 1) == 0)
    {
      MEMORY[0x1BFB3EDF0](v76, 0.5, 1.0, 0.0);
    }

    LOBYTE(v143) = sub_1BD9526F8() & 1;
    v125 = v74;
    v126 = v62;
    v116 = v74;
    v78 = swift_getWitnessTable();
    v79 = v97;
    sub_1BE0510E4();

    (*(v98 + 8))(v75, v77);
    v80 = sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    v123 = v78;
    v124 = v80;
    v81 = v102;
    swift_getWitnessTable();
    v82 = v99;
    sub_1BD147308(v79);
    v83 = *(v101 + 8);
    v83(v79, v81);
    v84 = v100;
    sub_1BD147308(v82);
    v69 = v107;
    sub_1BD13A700(v84, v81);
    v83(v84, v81);
    v83(v82, v81);
    (*(v104 + 8))(v112, v30);
    v72 = v113;
  }

  (*(v103 + 8))(v114, v115);
  v85 = sub_1BD0DE4F4(&qword_1EBD36768, &unk_1EBD596D0);
  v135 = v72;
  v136 = v85;
  v86 = swift_getWitnessTable();
  v133 = v86;
  v134 = MEMORY[0x1E697E8E8];
  v87 = swift_getWitnessTable();
  v88 = sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
  v131 = v87;
  v132 = v88;
  v129 = swift_getWitnessTable();
  v130 = v86;
  v89 = v109;
  swift_getWitnessTable();
  sub_1BD147308(v69);
  return (*(v108 + 8))(v69, v89);
}

uint64_t sub_1BD94DE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_1BE04E8A4();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - v9;
  v11 = sub_1BE04CA04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59788);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v32 - v18;
  sub_1BE04C9F4();
  v19[*(v16 + 44)] = sub_1BE0501D4();
  (*(v12 + 16))(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  (*(v12 + 32))(v21 + v20, &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = 350;
  sub_1BD0DE19C(v19, a2, &unk_1EBD59788);
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59778) + 36));
  *v22 = sub_1BD9561EC;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
  v23 = *(v34 + 8);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59768) + 36)) = v23;
  sub_1BE048964();
  sub_1BE04E894();
  v24 = v35;
  (*(v4 + 16))(v33, v10, v35);
  sub_1BD9548B0(&unk_1EBD36878, MEMORY[0x1E697E410]);
  v25 = v24;
  v26 = sub_1BE04E644();
  (*(v4 + 8))(v10, v25);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59758) + 36)) = v26;
  v27 = sub_1BE051274();
  LOBYTE(v25) = sub_1BE0501D4();
  sub_1BD0DE53C(v19, &unk_1EBD59788);
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59748) + 36);
  *v28 = v27;
  *(v28 + 8) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = 0x3FD6666666666666;
  v30 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59738) + 36));
  *v30 = sub_1BD956278;
  v30[1] = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59708);
  *(a2 + *(result + 36)) = 0x4000000000000000;
  return result;
}

uint64_t sub_1BD94E2C0()
{
  type metadata accessor for AuthorizationSheet();
  sub_1BD9550F0();
  sub_1BE048964();
  sub_1BE04CD44();
  v1 = v0;

  MEMORY[0x1BFB3EDF0](v2, v1, 0.825, 0.0);
  sub_1BE04E7D4();
}

uint64_t sub_1BD94E398()
{
  type metadata accessor for AuthorizationSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

void sub_1BD94E424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  sub_1BE048964();
  sub_1BE04CAC4();
  v3 = *(v2 + qword_1EBDAADA8 + 16);
  v8[0] = *(v2 + qword_1EBDAADA8);
  v8[1] = v3;
  v9 = *(v2 + qword_1EBDAADA8 + 32);
  v4 = v9;
  v10 = *(&v8[0] + 1);
  v11 = *(&v3 + 1);
  sub_1BE048964();
  v5 = *&v8[0];
  sub_1BD0DE19C(&v10, v7, &qword_1EBD3D490);
  sub_1BD0DE19C(&v11, v7, &qword_1EBD40150);
  v6 = v4;
  sub_1BE048964();
  sub_1BDA74FEC(v8, v2, 0, 0);

  sub_1BD0DE53C(&v10, &qword_1EBD3D490);
  sub_1BD0DE53C(&v11, &qword_1EBD40150);
}

uint64_t sub_1BD94E580(uint64_t a1, int *a2)
{
  v3 = v2;
  v6 = sub_1BE04FB74();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04C884();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD597A0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v50 - v18;
  v20 = sub_1BE04E6A4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v19, &qword_1EBD597A0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_1BD0DE53C(v19, &qword_1EBD597A0);
  }

  (*(v21 + 32))(v24, v19, v20);
  sub_1BE04E684();
  v27 = v26;
  v29 = v28;
  v54 = v3;
  sub_1BD70A520(v15);
  v30 = sub_1BE04C874();
  v31 = *(v59 + 8);
  v31(v15, v60);
  if (v30)
  {
    return (*(v21 + 8))(v24, v20);
  }

  v51 = v24;
  v52 = v21;
  v53 = v20;
  v50 = a2;
  sub_1BD70A520(v15);
  v32 = v58;
  v33 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x1E69BC9B0], v60);
  sub_1BD9548B0(&qword_1EBD36A10, MEMORY[0x1E69BC9D0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v31(v32, v33);
  v31(v15, v33);
  if (v62 == v61)
  {
    return (*(v52 + 8))(v51, v53);
  }

  v34 = v55;
  sub_1BE04FD34();
  v35 = v57;
  v36 = v51;
  sub_1BE04E694();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  (*(v56 + 8))(v34, v35);
  v45 = v50;
  sub_1BD9550F0();
  sub_1BE048964();
  LOBYTE(v35) = sub_1BE04CD54();

  v47 = v52;
  v46 = v53;
  if ((v35 & 1) == 0 || (v63.origin.x = v38, v63.origin.y = v40, v63.size.width = v42, v63.size.height = v44, Width = CGRectGetWidth(v63), v64.origin.x = v38, v64.origin.y = v40, v64.size.width = v42, v64.size.height = v44, CGRectGetHeight(v64) > Width))
  {
    _UISolariumFeatureFlagEnabled();
    sub_1BE048964();
    v49 = sub_1BE04CBB4();

    if (v49)
    {
      sub_1BD9528A8(v45, v27, v29);
    }
  }

  return (*(v47 + 8))(v36, v46);
}

uint64_t sub_1BD94EB88(uint64_t a1, int *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v80 = &v78 - v8;
  v9 = sub_1BE04FB74();
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04F3D4();
  v81 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD597A0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v78 - v19;
  v21 = sub_1BE04E6A4();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v27 = v26;
  v29 = v28;
  sub_1BD0DE19C(v25, v20, &qword_1EBD597A0);
  v30 = *(v29 + 48);
  v84 = v27;
  if (v30(v20, 1, v27) == 1)
  {
    sub_1BD0DE53C(v20, &qword_1EBD597A0);
    return 0;
  }

  (*(v29 + 32))(v24, v20, v84);
  v32 = v3 + a2[22];
  v33 = *v32;
  LODWORD(v32) = *(v32 + 8);
  v79 = v29;
  if (v32 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v47 = v24;
    v48 = sub_1BE050174();
    sub_1BE04CF84();

    v24 = v47;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v33, 0);
    (*(v81 + 8))(v16, v13);
    if (v85 != 1)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_1BE04FD34();
    v49 = v83;
    sub_1BE04E694();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    (*(v82 + 8))(v12, v49);
    v91.origin.x = v51;
    v91.origin.y = v53;
    v91.size.width = v55;
    v91.size.height = v57;
    CGRectGetMidY(v91);
    type metadata accessor for KeyboardObserver();
    sub_1BD9548B0(&qword_1EBD36500, type metadata accessor for KeyboardObserver);
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((v86 & 1) == 0)
    {
      sub_1BE048964();
      v58 = v80;
      sub_1BE04CB14();

      v59 = sub_1BE04CB04();
      v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
      sub_1BD0DE53C(v58, &unk_1EBD52000);
      if (v60 != 1)
      {
        v61 = (v3 + a2[19]);
        v63 = v61[1];
        v85 = *v61;
        v62 = v85;
        v86 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
        sub_1BE0516A4();
        v92.origin.x = v51;
        v92.origin.y = v53;
        v92.size.width = v55;
        v92.size.height = v57;
        CGRectGetMaxY(v92);
        sub_1BE04E674();
        v93.origin.x = v51;
        v93.origin.y = v53;
        v93.size.width = v55;
        v93.size.height = v57;
        CGRectGetMaxY(v93);
        v85 = v62;
        v86 = v63;
        sub_1BE0516A4();
      }
    }

    v94.origin.x = v51;
    v94.origin.y = v53;
    v94.size.width = v55;
    v94.size.height = v57;
    MidX = CGRectGetMidX(v94);
    (*(v79 + 8))(v24, v84);
    return *&MidX;
  }

  if (v33)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_1BE04FD34();
  v34 = v83;
  sub_1BE04E694();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  (*(v82 + 8))(v12, v34);
  sub_1BD9550F0();
  sub_1BE048964();
  v43 = sub_1BE04CD54();

  v44 = v79;
  if ((v43 & 1) != 0 && (v87.origin.x = v36, v87.origin.y = v38, v87.size.width = v40, v87.size.height = v42, Width = CGRectGetWidth(v87), v88.origin.x = v36, v88.origin.y = v38, v88.size.width = v40, v88.size.height = v42, CGRectGetHeight(v88) <= Width))
  {
    if (sub_1BD9526F8())
    {
      v95.origin.x = v36;
      v95.origin.y = v38;
      v95.size.width = v40;
      v95.size.height = v42;
      v65 = CGRectGetMidX(v95);
      v96.origin.x = v36;
      v96.origin.y = v38;
      v96.size.width = v40;
      v96.size.height = v42;
      CGRectGetMidY(v96);
      (*(v44 + 8))(v24, v84);
    }

    else
    {
      sub_1BE04E684();
      v67 = v66;
      v68 = a2[24];
      v69 = ceil(*(v3 + a2[26]) - *(v3 + a2[25]));
      if (v69 > *(v3 + v68))
      {
        v70 = v69;
      }

      else
      {
        v70 = *(v3 + v68);
      }

      sub_1BD9550F0();
      sub_1BE048964();
      v71 = sub_1BE04CD24();

      v72 = v67 * 0.5;
      v73 = (v44 + 8);
      v74 = v36;
      v75 = v38;
      v76 = v40;
      v77 = v42;
      if (v71 == 1)
      {
        v65 = CGRectGetMaxX(*&v74) - v72 - v70;
      }

      else
      {
        v65 = v70 + v72 + CGRectGetMinX(*&v74);
      }

      v97.origin.x = v36;
      v97.origin.y = v38;
      v97.size.width = v40;
      v97.size.height = v42;
      CGRectGetMidY(v97);
      (*v73)(v24, v84);
    }

    return *&v65;
  }

  else
  {
    if (!_UISolariumFeatureFlagEnabled())
    {
      (*(v44 + 8))(v24, v84);
      return 0;
    }

    v89.origin.x = v36;
    v89.origin.y = v38;
    v89.size.width = v40;
    v89.size.height = v42;
    v46 = CGRectGetMidX(v89);
    v90.origin.x = v36;
    v90.origin.y = v38;
    v90.size.width = v40;
    v90.size.height = v42;
    CGRectGetMidY(v90);
    (*(v44 + 8))(v24, v84);
    return *&v46;
  }
}

uint64_t sub_1BD94F474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<D0>, uint64_t a7@<D1>)
{
  v141 = a4;
  v142 = a1;
  v133 = a2;
  v135 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD597A0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v134 = &v107 - v12;
  v13 = sub_1BE04C884();
  v120 = *(v13 - 8);
  v121 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v118 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v117 = &v107 - v18;
  v137 = type metadata accessor for AuthorizationSheet();
  v113 = *(v137 - 1);
  v111 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v137, v19);
  v112 = &v107 - v20;
  v21 = type metadata accessor for AppProtectionShieldView();
  v22 = sub_1BE04EBD4();
  v23 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59698);
  v24 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596A0);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50060);
  v25 = sub_1BE04EBD4();
  v26 = sub_1BE04FCF4();
  v115 = v21;
  WitnessTable = swift_getWitnessTable();
  v252 = WitnessTable;
  v253 = MEMORY[0x1E697EBF8];
  v122 = v22;
  v116 = swift_getWitnessTable();
  v250 = v116;
  v251 = MEMORY[0x1E697EBE0];
  v132 = v23;
  v27 = swift_getWitnessTable();
  v28 = sub_1BD0DE4F4(&qword_1EBD36750, &qword_1EBD59698);
  v125 = v27;
  v248 = v27;
  v249 = v28;
  v139 = v24;
  v29 = swift_getWitnessTable();
  v138 = v29;
  v30 = sub_1BD0DE4F4(&qword_1EBD50058, &unk_1EBD596A0);
  v246 = v29;
  v247 = v30;
  v31 = swift_getWitnessTable();
  v136 = MEMORY[0x1E697DDB0];
  v32 = sub_1BD0DE4F4(&unk_1EBD596B0, &qword_1EBD50060);
  v244 = v31;
  v245 = v32;
  OpaqueTypeMetadata2 = v25;
  v33 = swift_getWitnessTable();
  v34 = sub_1BD9548B0(&qword_1EBD50068, MEMORY[0x1E697FF20]);
  *&v224 = v25;
  *(&v224 + 1) = v26;
  *&v225 = v33;
  *(&v225 + 1) = v34;
  swift_getOpaqueTypeMetadata2();
  v35 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596C0);
  sub_1BE04EBD4();
  v140 = a3;
  type metadata accessor for AuthorizationSheet.SheetShape();
  swift_getWitnessTable();
  sub_1BE04E4C4();
  v36 = sub_1BE04EBD4();
  *&v224 = OpaqueTypeMetadata2;
  *(&v224 + 1) = v26;
  *&v225 = v33;
  *(&v225 + 1) = v34;
  v37 = v137;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v243 = MEMORY[0x1E697E070];
  v38 = swift_getWitnessTable();
  v39 = sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0);
  v40 = v138;
  v240 = v138;
  v241 = v39;
  v41 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v238 = v41;
  v239 = v42;
  v43 = swift_getWitnessTable();
  *&v224 = v139;
  *(&v224 + 1) = MEMORY[0x1E6981CD8];
  v127 = v35;
  *&v225 = v35;
  v124 = v36;
  *(&v225 + 1) = v36;
  *&v226 = v40;
  *(&v226 + 1) = MEMORY[0x1E6981CD0];
  v130 = v38;
  *&v227 = v38;
  v136 = v43;
  *(&v227 + 1) = v43;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v126 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v44);
  v129 = &v107 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v123 = &v107 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v128 = &v107 - v51;
  v52 = sub_1BE04F3D4();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v107 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v142 + v37[22];
  v58 = *v57;
  if (*(v57 + 8) == 1)
  {
    if ((v58 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v109 = a7;
    v110 = a6;
    goto LABEL_7;
  }

  sub_1BE048964();
  sub_1BE052C44();
  v59 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();
  sub_1BD0D4604(v58, 0);
  (*(v53 + 8))(v56, v52);
  if (v224 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v109 = a7;
  v110 = a6;
  if (!sub_1BD950664(a6, a7, 0))
  {
    v119 = 0x100000000;
    goto LABEL_8;
  }

LABEL_7:
  v119 = 1;
LABEL_8:
  v60 = v37[15];
  LOBYTE(v224) = *(v142 + v37[14]);
  v61 = *(v142 + v60 + 8);
  v108 = *(v142 + v60);
  v62 = v113;
  v63 = v37;
  v64 = v112;
  (*(v113 + 16))(v112, v142, v63);
  v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v66 = swift_allocObject();
  v67 = v141;
  *(v66 + 16) = v140;
  *(v66 + 24) = v67;
  (*(v62 + 32))(v66 + v65, v64, v63);
  sub_1BE048964();
  AppProtectionShieldView.init(forceShieldState:shieldType:dismissAction:showAuthOnAppear:content:)(&v224, 1, v108, v61, 1, sub_1BD95596C, v66, &v198);
  v193 = v198;
  v194 = v199;
  v195 = v200;
  v196 = v201;
  v197 = v202;
  v113 = v63[20];
  v68 = v117;
  sub_1BD70A520(v117);
  LODWORD(v112) = *MEMORY[0x1E69BC9B0];
  v70 = v120;
  v69 = v121;
  v111 = *(v120 + 104);
  v71 = v118;
  v111(v118);
  sub_1BD9548B0(&qword_1EBD36A10, MEMORY[0x1E69BC9D0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v72 = *(v70 + 8);
  v72(v71, v69);
  v72(v68, v69);
  LODWORD(v120) = v224 == v165;
  sub_1BD70A520(v68);
  (v111)(v71, v112, v69);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v72(v71, v69);
  v72(v68, v69);
  sub_1BE051CD4();
  swift_checkMetadataState();
  sub_1BE050F54();
  v73 = v194;
  v74 = v196;

  sub_1BD0D4744(v73);
  sub_1BD0D4744(v74);
  v232 = v211;
  v233 = v212;
  *&v234 = v213;
  v228 = v207;
  v229 = v208;
  v231 = v210;
  v230 = v209;
  v224 = v203;
  v225 = v204;
  v227 = v206;
  v226 = v205;
  v75 = swift_checkMetadataState();
  sub_1BE051104();
  v191[8] = v232;
  v191[9] = v233;
  v192 = v234;
  v191[4] = v228;
  v191[5] = v229;
  v191[7] = v231;
  v191[6] = v230;
  v191[0] = v224;
  v191[1] = v225;
  v191[3] = v227;
  v191[2] = v226;
  (*(*(v75 - 8) + 8))(v191, v75);
  v189 = v222;
  v190[0] = v223[0];
  *(v190 + 10) = *(v223 + 10);
  v185 = v218;
  v186 = v219;
  v188 = v221;
  v187 = v220;
  v181 = v214;
  v182 = v215;
  v183 = v216;
  v184 = v217;
  v76 = v134;
  sub_1BD0DE19C(v133, v134, &qword_1EBD597A0);
  v77 = sub_1BE04E6A4();
  v78 = *(v77 - 8);
  v79 = (*(v78 + 48))(v76, 1, v77);
  if (v79 == 1)
  {
    sub_1BD0DE53C(v76, &qword_1EBD597A0);
    v80 = 0;
    v81 = 0;
  }

  else
  {
    sub_1BE04E684();
    v83 = v82;
    v85 = v84;
    (*(v78 + 8))(v76, v77);
    v80 = v83;
    v81 = v85;
  }

  sub_1BD9507D4(v80, v81, v79 == 1, v137, &v179);
  v86 = v179;
  v87 = v180;
  v165 = v179;
  LOBYTE(v166) = v180;
  sub_1BE051CD4();
  v88 = swift_checkMetadataState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD597A8);
  sub_1BD9557CC(&qword_1EBD36730, &qword_1EBD597A8, &unk_1BE1072C0, sub_1BD9559F8);
  sub_1BE050834();
  sub_1BD955AD8(v86, *(&v86 + 1), v87);
  v163[8] = v189;
  v164[0] = v190[0];
  *(v164 + 10) = *(v190 + 10);
  v163[4] = v185;
  v163[5] = v186;
  v163[6] = v187;
  v163[7] = v188;
  v163[0] = v181;
  v163[1] = v182;
  v163[2] = v183;
  v163[3] = v184;
  (*(*(v88 - 8) + 8))(v163, v88);
  v159 = v234;
  v160 = v235;
  v161 = v236;
  v162 = v237;
  v155 = v230;
  v156 = v231;
  v157 = v232;
  v158 = v233;
  v151 = v226;
  v152 = v227;
  v153 = v228;
  v154 = v229;
  v149 = v224;
  v150 = v225;
  v89 = sub_1BE051C64();
  v137 = &v107;
  MEMORY[0x1EEE9AC00](v89, v90);
  MEMORY[0x1EEE9AC00](v91, v92);
  v93 = swift_checkMetadataState();
  v94 = swift_checkMetadataState();
  v95 = swift_checkMetadataState();
  v96 = v130;
  v97 = v138;
  v98 = v123;
  v99 = MEMORY[0x1E6981CD8];
  sub_1BE0510B4();
  v175 = v159;
  v176 = v160;
  v177 = v161;
  v178 = v162;
  v171 = v155;
  v172 = v156;
  v173 = v157;
  v174 = v158;
  v167 = v151;
  v168 = v152;
  v169 = v153;
  v170 = v154;
  v165 = v149;
  v166 = v150;
  (*(*(v93 - 8) + 8))(&v165, v93);
  *&v149 = v93;
  *(&v149 + 1) = v99;
  *&v150 = v94;
  *(&v150 + 1) = v95;
  *&v151 = v97;
  *(&v151 + 1) = MEMORY[0x1E6981CD0];
  *&v152 = v96;
  *(&v152 + 1) = v136;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v128;
  v102 = OpaqueTypeMetadata2;
  sub_1BD147308(v98);
  v103 = v126;
  v104 = *(v126 + 8);
  v104(v98, v102);
  v146 = 0;
  v147 = BYTE4(v119);
  v148 = v119;
  *&v149 = &v146;
  v105 = v129;
  (*(v103 + 16))(v129, v101, v102);
  *(&v149 + 1) = v105;
  v145[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59690);
  v145[1] = v102;
  v143 = sub_1BD955B38();
  v144 = v100;
  sub_1BD13A4C4(&v149, 2uLL, v145);
  v104(v101, v102);
  return (v104)(v105, v102);
}

BOOL sub_1BD950664(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BD9550F0();
  sub_1BE048964();
  v6 = sub_1BE04CD54();

  v7 = *&a2 < *&a1;
  if (a3)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t sub_1BD9506DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AuthorizationSheet();
  sub_1BD147308(a1 + *(v7 + 44));
  sub_1BD147308(v6);
  return (*(v4 + 8))(v6, a2);
}

void sub_1BD9507D4(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v45 = a1;
  v46 = a2;
  v50 = a5;
  v9 = sub_1BE04F3D4();
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04C884();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v44 - v24;
  if ((a3 & 1) == 0)
  {
    sub_1BE04C794();
    (*(v17 + 104))(v20, *MEMORY[0x1E69BC9C0], v16);
    sub_1BD9548B0(&qword_1EBD36A10, MEMORY[0x1E69BC9D0]);
    v44 = a4;
    sub_1BE0526E4();
    a4 = v44;
    sub_1BE0526E4();
    v26 = *(v17 + 8);
    v26(v20, v16);
    v26(v25, v16);
    if (v54 == v51 && (sub_1BD94A050(a4) & 1) != 0 && (sub_1BD952B2C(a4) & 1) != 0 && !sub_1BD950664(v45, v46, 0))
    {
      v38 = v6;
      v39 = v49;
      (*(v12 + 16))(v49, v38, a4);
      v40 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = *(a4 + 16);
      (*(v12 + 32))(v41 + v40, v39, a4);
      v42 = (v41 + ((v13 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
      v43 = v46;
      *v42 = v45;
      v42[1] = v43;
      v51 = sub_1BD955C50;
      v52 = v41;
      v53 = 0;
      goto LABEL_11;
    }
  }

  v27 = v6 + *(a4 + 88);
  v28 = *v27;
  if (*(v27 + 8) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v31 = v6;
    v32 = sub_1BE050174();
    sub_1BE04CF84();

    v6 = v31;
    v33 = v47;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v28, 0);
    (*(v48 + 8))(v33, v9);
    if (v54 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if (v28)
  {
LABEL_10:
    v34 = v49;
    (*(v12 + 16))(v49, v6, a4, v23);
    v35 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = *(a4 + 16);
    (*(v12 + 32))(v36 + v35, v34, a4);
    v51 = sub_1BD955BB4;
    v52 = v36;
    v53 = 1;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD597C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD597D0);
    sub_1BD0DE4F4(&unk_1EBD36888, &unk_1EBD597C0);
    sub_1BD0DE4F4(&qword_1EBD36898, &unk_1EBD597D0);
    sub_1BE04F9A4();
    v29 = v54;
    v30 = v55;
    goto LABEL_12;
  }

LABEL_8:
  v29 = 0uLL;
  v30 = -1;
LABEL_12:
  v37 = v50;
  *v50 = v29;
  *(v37 + 16) = v30;
}

uint64_t sub_1BD950D88@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v101 = a3;
  v102 = a4;
  v128 = a2;
  v124 = a5;
  v123 = sub_1BE051B64();
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v10);
  v118 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1BE051B94();
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v12);
  v112 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v114 = &v92 - v16;
  v119 = sub_1BE051C44();
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v17);
  v113 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE0518C4();
  v115 = *(v19 - 8);
  v116 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v110 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v111 = &v92 - v24;
  v129 = sub_1BE04FCF4();
  MEMORY[0x1EEE9AC00](v129, v25);
  v93 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppProtectionShieldView();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59698);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596A0);
  v27 = sub_1BE04EBD4();
  v107 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v100 = &v92 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50060);
  v30 = sub_1BE04EBD4();
  v109 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v127 = &v92 - v32;
  WitnessTable = swift_getWitnessTable();
  v155 = MEMORY[0x1E697EBF8];
  v33 = MEMORY[0x1E697E858];
  v152 = swift_getWitnessTable();
  v153 = MEMORY[0x1E697EBE0];
  v34 = swift_getWitnessTable();
  v35 = sub_1BD0DE4F4(&qword_1EBD36750, &qword_1EBD59698);
  v150 = v34;
  v151 = v35;
  v108 = v33;
  v36 = swift_getWitnessTable();
  v94 = v36;
  v37 = sub_1BD0DE4F4(&qword_1EBD50058, &unk_1EBD596A0);
  v148 = v36;
  v149 = v37;
  v38 = swift_getWitnessTable();
  v92 = v38;
  v39 = sub_1BD0DE4F4(&unk_1EBD596B0, &qword_1EBD50060);
  v146 = v38;
  v147 = v39;
  v96 = v30;
  v40 = swift_getWitnessTable();
  v97 = v40;
  v125 = sub_1BD9548B0(&qword_1EBD50068, MEMORY[0x1E697FF20]);
  *&v156 = v30;
  v41 = v129;
  *(&v156 + 1) = v129;
  *&v157 = v40;
  *(&v157 + 1) = v125;
  v103 = MEMORY[0x1E6981208];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, OpaqueTypeMetadata2);
  v126 = &v92 - v42;
  v104 = sub_1BE04EBD4();
  v106 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v43);
  v95 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v98 = &v92 - v47;
  v48 = a1[11];
  v166 = a1[10];
  v167 = v48;
  v168 = a1[12];
  v169 = *(a1 + 26);
  v49 = a1[7];
  v162 = a1[6];
  v163 = v49;
  v50 = a1[9];
  v164 = a1[8];
  v165 = v50;
  v51 = a1[3];
  v158 = a1[2];
  v159 = v51;
  v52 = a1[5];
  v160 = a1[4];
  v161 = v52;
  v53 = a1[1];
  v156 = *a1;
  v157 = v53;
  v102 = type metadata accessor for AuthorizationSheet();
  sub_1BD95194C(v102, a6, a7);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v142 = v166;
  v143 = v167;
  v144 = v168;
  v145 = v169;
  v138 = v162;
  v139 = v163;
  v140 = v164;
  v141 = v165;
  v134 = v158;
  v135 = v159;
  v136 = v160;
  v137 = v161;
  v132 = v156;
  v133 = v157;
  sub_1BD6C8930();
  v62 = v100;
  sub_1BE050A94();
  v63 = *(v41 + 20);
  LODWORD(v101) = *MEMORY[0x1E697F468];
  v64 = v101;
  v65 = sub_1BE04F684();
  v94 = *(*(v65 - 8) + 104);
  v66 = v93;
  v94(&v93[v63], v64, v65);
  *v66 = v55;
  *(v66 + 1) = v57;
  *(v66 + 2) = v59;
  *(v66 + 3) = v61;
  v67 = v66;
  sub_1BE0510F4();
  sub_1BD6C8984(v66);
  (*(v107 + 8))(v62, v27);
  v68 = v112;
  sub_1BE051B84();
  v69 = v121;
  v70 = v118;
  v71 = v123;
  (*(v121 + 104))(v118, *MEMORY[0x1E697D780], v123);
  v72 = v114;
  sub_1BE051B74();
  (*(v69 + 8))(v70, v71);
  v73 = *(v120 + 8);
  v74 = v122;
  v73(v68, v122);
  v75 = v113;
  sub_1BE051BC4();
  v73(v72, v74);
  v76 = v110;
  sub_1BE0518A4();
  (*(v117 + 8))(v75, v119);
  v77 = v111;
  sub_1BE051884();
  v78 = v116;
  v79 = *(v115 + 8);
  v79(v76, v116);
  v94(&v67[*(v129 + 20)], v101, v65);
  *v67 = v55;
  *(v67 + 1) = v57;
  *(v67 + 2) = v59;
  *(v67 + 3) = v61;
  v80 = v125;
  v81 = v96;
  v82 = v97;
  v83 = v127;
  sub_1BE050994();
  sub_1BD6C8984(v67);
  v79(v77, v78);
  (*(v109 + 8))(v83, v81);
  sub_1BD951BF0(v102, a6, a7);
  sub_1BE051E94();
  *&v132 = v81;
  *(&v132 + 1) = v129;
  *&v133 = v82;
  *(&v133 + 1) = v80;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v95;
  v86 = OpaqueTypeMetadata2;
  v87 = v126;
  sub_1BE050964();
  (*(v105 + 8))(v87, v86);
  v130 = OpaqueTypeConformance2;
  v131 = MEMORY[0x1E697E070];
  v88 = v104;
  swift_getWitnessTable();
  v89 = v98;
  sub_1BD147308(v85);
  v90 = *(v106 + 8);
  v90(v85, v88);
  sub_1BD147308(v89);
  return (v90)(v89, v88);
}

uint64_t sub_1BD95194C(int *a1, double a2, double a3)
{
  v7 = sub_1BE04F3D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v3 + a1[21];
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    if (v13)
    {
      return sub_1BE04FA24();
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v13, 0);
    (*(v8 + 8))(v11, v7);
    if (v19[15])
    {
      return sub_1BE04FA24();
    }
  }

  v15 = v3 + a1[22];
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    if (v16)
    {
      return sub_1BE04FA24();
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v17 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v16, 0);
    (*(v8 + 8))(v11, v7);
    if (v19[14])
    {
      return sub_1BE04FA24();
    }
  }

  if (!sub_1BD950664(*&a2, *&a3, 0) && *(v3 + a1[26]) > 0.0)
  {
    sub_1BD951BF0(a1, a2, a3);
  }

  return sub_1BE04FA24();
}

void sub_1BD951BF0(uint64_t a1, double a2, double a3)
{
  v7 = sub_1BE04F3D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v3 + *(a1 + 84);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    if (v13)
    {
      return;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v13, 0);
    (*(v8 + 8))(v11, v7);
    if (v18[15])
    {
      return;
    }
  }

  v15 = v3 + *(a1 + 88);
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v17 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v16, 0);
    (*(v8 + 8))(v11, v7);
    if (v18[14])
    {
      return;
    }

    goto LABEL_9;
  }

  if ((v16 & 1) == 0)
  {
LABEL_9:
    sub_1BD950664(*&a2, *&a3, 0);
  }
}

uint64_t sub_1BD951E50@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<D0>, uint64_t a7@<D1>)
{
  v81 = a2;
  v90 = a5;
  v12 = sub_1BE04F3D4();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v67 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1BE04F684();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v15);
  v75 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AuthorizationSheet.SheetShape();
  v86 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v85 = (&v67 - v19);
  v20 = sub_1BE051C44();
  v21 = *(v20 - 8);
  v73 = v20;
  v74 = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppProtectionShieldView();
  v72 = sub_1BE04EBD4();
  v70 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59698);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596C0);
  v25 = sub_1BE04EBD4();
  v83 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v67 - v27;
  WitnessTable = swift_getWitnessTable();
  v87 = v17;
  v77 = WitnessTable;
  v30 = sub_1BE04E4C4();
  v71 = v25;
  v80 = v30;
  v31 = sub_1BE04EBD4();
  v84 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v79 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v82 = &v67 - v36;
  v37 = a1[11];
  v111 = a1[10];
  v112 = v37;
  v113 = a1[12];
  v114 = *(a1 + 26);
  v38 = a1[7];
  v107 = a1[6];
  v108 = v38;
  v39 = a1[9];
  v109 = a1[8];
  v110 = v39;
  v40 = a1[3];
  v103 = a1[2];
  v104 = v40;
  v41 = a1[5];
  v105 = a1[4];
  v106 = v41;
  v42 = a1[1];
  v101 = *a1;
  v102 = v42;
  v88 = a3;
  v89 = a4;
  v43 = type metadata accessor for AuthorizationSheet();
  sub_1BE051BB4();
  sub_1BE0501D4();
  v99 = swift_getWitnessTable();
  v100 = MEMORY[0x1E697EBF8];
  v97 = swift_getWitnessTable();
  v98 = MEMORY[0x1E697EBE0];
  v44 = swift_getWitnessTable();
  v45 = sub_1BD0DE4F4(&qword_1EBD36750, &qword_1EBD59698);
  v95 = v44;
  v96 = v45;
  v46 = swift_getWitnessTable();
  v72 = v28;
  v47 = v81;
  v48 = v73;
  sub_1BE050824();
  v49 = v24;
  v50 = v75;
  (*(v74 + 8))(v49, v48);
  (*(v76 + 104))(v50, *MEMORY[0x1E697F468], v78);
  v51 = v47 + *(v43 + 84);
  v52 = *v51;
  if (*(v51 + 8) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v54 = sub_1BE050174();
    sub_1BE04CF84();

    v55 = v67;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v52, 0);
    (*(v68 + 8))(v55, v69);
    if (v101)
    {
      goto LABEL_3;
    }

LABEL_5:
    v53 = sub_1BD950664(a6, a7, 0);
    goto LABEL_6;
  }

  if ((v52 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v53 = 1;
LABEL_6:
  v56 = v85;
  sub_1BD952660(v50, v53, v85, 10.0);
  v57 = sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0);
  v93 = v46;
  v94 = v57;
  v58 = v71;
  v59 = swift_getWitnessTable();
  v60 = v79;
  v61 = v87;
  v62 = v72;
  sub_1BE0510F4();
  (*(v86 + 8))(v56, v61);
  (*(v83 + 8))(v62, v58);
  v63 = swift_getWitnessTable();
  v91 = v59;
  v92 = v63;
  swift_getWitnessTable();
  v64 = v82;
  sub_1BD147308(v60);
  v65 = *(v84 + 8);
  v65(v60, v31);
  sub_1BD147308(v64);
  return (v65)(v64, v31);
}

uint64_t sub_1BD952660@<X0>(uint64_t a1@<X0>, char a2@<W1>, double *a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  v7 = type metadata accessor for AuthorizationSheet.SheetShape();
  v8 = *(v7 + 36);
  v9 = sub_1BE04F684();
  result = (*(*(v9 - 8) + 32))(a3 + v8, a1, v9);
  *(a3 + *(v7 + 40)) = a2;
  return result;
}

uint64_t sub_1BD9526F8()
{
  v0 = sub_1BE04C7B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - v7;
  sub_1BE048964();
  v9 = sub_1BE04CC34();

  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    (*(v1 + 104))(v4, *MEMORY[0x1E69BC980], v0);
    v10 = sub_1BE04C7A4();
    v11 = *(v1 + 8);
    v11(v4, v0);
    v11(v8, v0);
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

double sub_1BD9528A8(int *a1, double a2, double a3)
{
  v7 = sub_1BE04F3D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LAUIPhysicalButtonNormalizedFrame();
  v12 = *(v3 + a1[13] + 8) + (1.0 - CGRectGetMaxY(v23)) * a3 + -15.0;
  if (sub_1BE051C54())
  {
    v13 = v3 + a1[21];
    v14 = *v13;
    if (*(v13 + 8) == 1)
    {
      if (v14)
      {
        return v12;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v15 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0D4604(v14, 0);
      (*(v8 + 8))(v11, v7);
      if (v22[15])
      {
        return v12;
      }
    }

    v16 = v3 + a1[22];
    v17 = *v16;
    if (*(v16 + 8) == 1)
    {
      if (v17)
      {
        return v12;
      }

      goto LABEL_10;
    }

    sub_1BE048964();
    sub_1BE052C44();
    v18 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v17, 0);
    (*(v8 + 8))(v11, v7);
    if ((v22[14] & 1) == 0)
    {
LABEL_10:
      v19 = v12 - *(v3 + a1[24]);
      sub_1BD951BF0(a1, a2, a3);
      return v19 / v20;
    }
  }

  return v12;
}

uint64_t sub_1BD952B2C(uint64_t a1)
{
  result = PKUserIntentIsAvailable();
  if (result)
  {
    if (*(v1 + *(a1 + 48)) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8B4();

      v13 = v8;
      v14 = v9;
      v15 = v10;
      v11[0] = v4;
      v11[1] = v5;
      v11[2] = v6;
      v12 = v7;
      sub_1BD146D0C(v11);
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD952BFC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v44 = sub_1BE051F54();
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v3);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BE04CA04();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v36 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051F44();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1BE051FC4();
  v39 = v16;
  v48 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v37 = &v36 - v22;
  v23 = sub_1BE04C9C4();
  v23(1);

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v40 = sub_1BE052D54();
  sub_1BE051FB4();
  *v15 = v41;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E7F38], v11);
  MEMORY[0x1BFB3F070](v19, v15);
  (*(v12 + 8))(v15, v11);
  v24 = *(v48 + 8);
  v48 += 8;
  v24(v19, v16);
  v25 = v36;
  v26 = v38;
  (*(v8 + 16))(v36, a1, v38);
  v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = swift_allocObject();
  (*(v8 + 32))(v28 + v27, v25, v26);
  aBlock[4] = sub_1BD9562A8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_215;
  v29 = _Block_copy(aBlock);

  v30 = v42;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD9548B0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  v32 = v43;
  v31 = v44;
  sub_1BE053664();
  v33 = v37;
  v34 = v40;
  MEMORY[0x1BFB3FD90](v37, v30, v32, v29);
  _Block_release(v29);

  (*(v47 + 8))(v32, v31);
  (*(v45 + 8))(v30, v46);
  return (v24)(v33, v39);
}

void (*sub_1BD95319C())(void)
{
  result = sub_1BE04C9D4();
  if (result)
  {
    v1 = result;
    result();

    return sub_1BD0D4744(v1);
  }

  return result;
}

uint64_t sub_1BD9531F8()
{
  sub_1BE04CDA4();
  sub_1BD9548B0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);

  return sub_1BE04EEC4();
}

void sub_1BD95326C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, char *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>, uint64_t a11)
{
  v18 = *a5;
  sub_1BD9548B0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  *a8 = sub_1BE04E954();
  a8[1] = v19;
  a8[2] = a1;
  a8[3] = a2;
  sub_1BD0E5E8C(0, &qword_1EBD35E30);
  sub_1BD0EE33C();
  a8[4] = sub_1BE04EEC4();
  a8[5] = v20;
  v21 = type metadata accessor for AuthorizationSheet();
  (*(*(a11 - 8) + 32))(a8 + v21[11], a3, a11);
  *(a8 + v21[12]) = a4;
  v22 = (a8 + v21[13]);
  *v22 = a9;
  v22[1] = a10;
  *(a8 + v21[14]) = v18;
  v23 = (a8 + v21[15]);
  *v23 = a6;
  v23[1] = a7;
  v24 = a8 + v21[16];
  sub_1BE051694();
  *v24 = v40;
  *(v24 + 1) = v41;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BE053704())
  {
    sub_1BD1120F4(MEMORY[0x1E69E7CC0]);
  }

  v25 = (a8 + v21[17]);
  *v25 = sub_1BD94A008();
  v25[1] = v26;
  v27 = a8 + v21[18];
  *v27 = sub_1BD24B1AC;
  *(v27 + 1) = 0;
  v27[16] = 0;
  v28 = (a8 + v21[19]);
  sub_1BE051694();
  *v28 = v40;
  v28[1] = v41;
  v29 = v21[20];
  *(a8 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v30 = a8 + v21[21];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = a8 + v21[22];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = a8 + v21[23];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  *(a8 + v21[24]) = 0x4018000000000000;
  *(a8 + v21[25]) = 0x4043000000000000;
  v33 = MobileGestalt_get_current_device();
  if (v33)
  {
    v34 = v33;
    v35 = v21[26];
    MobileGestalt_get_deviceCornerRadius();
    v37 = v36;

    *(a8 + v35) = v37;
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD9535B8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v35 = a2;
  v36 = a3;
  v32 = a1;
  v10 = type metadata accessor for AuthorizationSheet();
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v29 - v14;
  sub_1BE04E684();
  v17 = v16;
  v34 = sub_1BE051404();
  v31 = *(v11 + 16);
  v31(v15, a1, v10);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v30 = v18;
  v33 = v18 + v12;
  v19 = (v18 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v36;
  *(v20 + 16) = v35;
  *(v20 + 24) = v21;
  v22 = *(v11 + 32);
  v23 = v20 + v18;
  v24 = v29;
  v22(v23, v15, v29);
  v25 = (v20 + v19);
  *v25 = a5;
  v25[1] = a6;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v31(v15, v32, v24);
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 16) = v35;
  *(v26 + 24) = v27;
  v22(v26 + v30, v15, v24);
  *a4 = v34;
  *(a4 + 8) = sub_1BD955D1C;
  *(a4 + 16) = v20;
  result = 0.0;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = sub_1BD955DDC;
  *(a4 + 64) = v26;
  return result;
}

void sub_1BD9537E4(uint64_t a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for AuthorizationSheet();
  if (sub_1BD9528A8(v8, a2, a3) <= a4)
  {
    if ((*(*(*(a1 + 8) + qword_1EBDAADC0) + 61) & 1) == 0)
    {
      sub_1BD9550F0();
      sub_1BE048964();
      sub_1BE04CD44();
    }

    sub_1BD9538A4(v8, v9);
  }
}

uint64_t sub_1BD9538A4(uint64_t a1, uint64_t a2)
{
  v68 = *(a1 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v52 = v4;
  v65 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD597F8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59800);
  v10 = *(v9 - 8);
  v66 = v9;
  v67 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - v12;
  v14 = v2;
  sub_1BE048964();
  sub_1BD83FFF8(1);

  sub_1BE048964();
  sub_1BE04CBD4();

  v62 = sub_1BD0E5E8C(0, &qword_1EBD59808);
  v64 = objc_opt_self();
  v15 = [v64 mainRunLoop];
  v61 = *MEMORY[0x1E695D918];
  v60 = sub_1BE053484();
  v16 = *(v60 - 8);
  v59 = *(v16 + 56);
  v63 = v16 + 56;
  v59(v8, 1, 1, v60);
  v17 = v8;
  v56 = v8;
  v18 = sub_1BE052FD4();

  sub_1BD0DE53C(v17, &qword_1EBD597F8);
  v72 = v18;
  v58 = sub_1BE052FC4();
  v57 = sub_1BD9548B0(&qword_1EBD59810, MEMORY[0x1E6969F70]);
  v19 = sub_1BE04D844();

  v72 = v19;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59818);
  v54 = sub_1BD0DE4F4(&qword_1EBD59820, &qword_1EBD59818);
  sub_1BE04D914();

  v20 = v68;
  v53 = *(v68 + 16);
  v21 = v65;
  v22 = v14;
  v53(v65, v14, a1);
  v23 = *(v20 + 80);
  v48 = (v23 + 32) & ~v23;
  v24 = swift_allocObject();
  v51 = *(a1 + 16);
  v50 = *(a1 + 24);
  v25 = v50;
  *(v24 + 16) = v51;
  *(v24 + 24) = v25;
  v26 = *(v20 + 32);
  v68 = v20 + 32;
  v49 = v26;
  v26(v24 + ((v23 + 32) & ~v23), v21, a1);
  v47 = sub_1BD0DE4F4(&qword_1EBD59828, &qword_1EBD59800);
  v27 = v66;
  v45 = v13;
  sub_1BE04D954();

  v28 = *(v67 + 8);
  v67 += 8;
  v46 = v28;
  v28(v13, v27);
  v29 = *(a1 + 68);
  v44 = v22;
  v30 = (v22 + v29);
  v32 = v30[1];
  v72 = *v30;
  v31 = v72;
  v73 = v32;
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD597E8);
  sub_1BE0516A4();
  sub_1BE04D7D4();

  v70 = v31;
  v71 = v32;
  v69 = v74;
  sub_1BE0516B4();
  sub_1BD9550F0();
  sub_1BE048964();
  sub_1BE04CD44();

  v33 = [v64 mainRunLoop];
  v34 = v56;
  v59(v56, 1, 1, v60);
  v35 = sub_1BE052FD4();

  sub_1BD0DE53C(v34, &qword_1EBD597F8);
  v72 = v35;
  v36 = sub_1BE04D844();

  v72 = v36;
  v37 = v45;
  sub_1BE04D914();

  v38 = v65;
  v53(v65, v44, a1);
  v39 = v48;
  v40 = swift_allocObject();
  v41 = v50;
  *(v40 + 16) = v51;
  *(v40 + 24) = v41;
  v49(v40 + v39, v38, a1);
  v42 = v66;
  sub_1BE04D954();

  v46(v37, v42);
  v72 = v31;
  v73 = v32;
  sub_1BE0516A4();
  sub_1BE04D7D4();

  v70 = v31;
  v71 = v32;
  v69 = v74;
  sub_1BE0516B4();
}

uint64_t sub_1BD954028(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v19 = *v2;
  v20 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD597E8);
  sub_1BE0516A4();
  if ((v18 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE04D7F4();
    sub_1BD9548B0(&qword_1EBD597F0, MEMORY[0x1E695BF10]);
    result = sub_1BE052A74();
    v5 = v19;
    v4 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v18 + 32);
    v4 = v18 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v18 + 56);
    result = sub_1BE048C84();
    v7 = 0;
    v5 = v18;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    sub_1BE048964();
    if (!v17)
    {
LABEL_18:
      sub_1BD0D45FC();

      sub_1BE048964();
      sub_1BE048C84();
      sub_1BE0516A4();

      sub_1BE0516B4();
    }

    while (1)
    {
      sub_1BE04D7E4();

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1BE053744())
      {
        sub_1BE04D7F4();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD9542C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v27 = a1;
  v6 = sub_1BE04E6A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AuthorizationSheet();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22 - v15;
  v23 = sub_1BE051404();
  (*(v12 + 16))(v16, v24, v11);
  (*(v7 + 16))(v10, v27, v6);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = (v13 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 16) = v25;
  *(v19 + 24) = v20;
  (*(v12 + 32))(v19 + v17, v16, v11);
  result = (*(v7 + 32))(v19 + v18, v10, v6);
  *a5 = v23;
  a5[1] = sub_1BD956104;
  a5[2] = v19;
  a5[3] = 0;
  a5[4] = 0;
  return result;
}

uint64_t sub_1BD9544F8()
{
  sub_1BE04E684();
  type metadata accessor for AuthorizationSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
  return sub_1BE0516B4();
}

double sub_1BD954590@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  if (*(v6 + *(a1 + 40)))
  {
    v8 = -1;
  }

  else
  {
    v8 = 3;
  }

  v9 = [objc_opt_self() bezierPathWithRoundedRect:v8 byRoundingCorners:a3 cornerRadii:{a4, a5, a6, *v6, *v6}];
  v10 = [v9 CGPath];
  sub_1BE050524();

  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  return result;
}

double sub_1BD954674@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_1BD954590(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

void (*sub_1BD9546CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BE04E0F4();
  return sub_1BD122AB4;
}

uint64_t sub_1BD954754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BD9547D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BD95484C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

uint64_t sub_1BD9548B0(unint64_t *a1, void (*a2)(uint64_t))
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