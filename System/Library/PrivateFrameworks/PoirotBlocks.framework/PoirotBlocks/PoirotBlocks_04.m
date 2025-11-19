void *sub_21B1C7940(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_21B1C7A9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s12PoirotBlocks10AnyCodableO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_21B1A7C90(*a1, v3, 3u);
        sub_21B1A7C90(v5, v6, 3u);
        v13 = v2 == v5;
        return v13 & 1;
      }
    }

    else
    {
      if (v4 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_21;
        }

        sub_21B1A7C90(*a1, v3, 5u);
        sub_21B1A7C90(v5, v6, 5u);
        v13 = v5 ^ v2 ^ 1;
        return v13 & 1;
      }

      if (v7 == 4)
      {
        v12 = *a2;
        sub_21B1A7C90(*a1, v3, 4u);
        sub_21B1A7C90(v5, v6, 4u);
        v13 = *&v2 == *&v5;
        return v13 & 1;
      }
    }

LABEL_21:
    sub_21B1A7C74(v5, v6, v7);
    sub_21B1A7C90(v2, v3, v4);
    sub_21B1A7C90(v5, v6, v7);
    v13 = 0;
    return v13 & 1;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_21B1A7C74(*a2, *(a2 + 8), 0);
      sub_21B1A7C74(v2, v3, 0);
      v8 = sub_21B1B76AC(v2, v5);
      sub_21B1A7C90(v2, v3, 0);
      v9 = v5;
      v10 = v6;
      v11 = 0;
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (v4 != 1)
  {
    v15 = *(a1 + 8);
    if (v7 != 2)
    {
      goto LABEL_18;
    }

    if (v2 != v5 || v3 != v6)
    {
      LOBYTE(v8) = sub_21B20DB28();
      sub_21B1A7C74(v5, v6, 2u);
      sub_21B1A7C74(v2, v3, 2u);
      sub_21B1A7C90(v2, v3, 2u);
      v9 = v5;
      v10 = v6;
      v11 = 2;
      goto LABEL_25;
    }

    sub_21B1A7C74(v2, v3, 2u);
    sub_21B1A7C74(v2, v3, 2u);
    sub_21B1A7C90(v2, v3, 2u);
    sub_21B1A7C90(v2, v3, 2u);
    v13 = 1;
    return v13 & 1;
  }

  if (v7 != 1)
  {
LABEL_11:
    v14 = *a1;
LABEL_18:

    goto LABEL_21;
  }

  sub_21B1A7C74(*a2, *(a2 + 8), 1u);
  sub_21B1A7C74(v2, v3, 1u);
  LOBYTE(v8) = sub_21B1A6CB8(v2, v5);
  sub_21B1A7C90(v2, v3, 1u);
  v9 = v5;
  v10 = v6;
  v11 = 1;
LABEL_25:
  sub_21B1A7C90(v9, v10, v11);
  return v8 & 1;
}

unint64_t sub_21B1C7EBC()
{
  result = qword_27CD6F8D8;
  if (!qword_27CD6F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F8D8);
  }

  return result;
}

uint64_t sub_21B1C7F30(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(result + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (result + 40);
    do
    {
      v9 = v7;
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = *(a3 + 16);

      if (v12 && (v13 = sub_21B1B9778(v11, v10), (v14 & 1) != 0))
      {
        v15 = *(a3 + 56) + 24 * v13;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_21B1A7C74(*v15, v17, v18);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = -1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8E8, &qword_21B215DB0);
      sub_21B1ACF78();
      sub_21B20D9D8();
      sub_21B1C8418(v16, v17, v18);

      if (v4)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 2;
    }

    while (v9);
  }

  return result;
}

unint64_t sub_21B1C8080()
{
  result = qword_27CD6F900;
  if (!qword_27CD6F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F900);
  }

  return result;
}

unint64_t sub_21B1C80FC()
{
  result = qword_27CD6F908;
  if (!qword_27CD6F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F908);
  }

  return result;
}

unint64_t sub_21B1C8160()
{
  result = qword_27CD6F910;
  if (!qword_27CD6F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F910);
  }

  return result;
}

uint64_t sub_21B1C81D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B1C8220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B1C8274(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21B1C82BC(uint64_t result, int a2, int a3)
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

unint64_t sub_21B1C8314()
{
  result = qword_27CD6F918;
  if (!qword_27CD6F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F918);
  }

  return result;
}

unint64_t sub_21B1C836C()
{
  result = qword_27CD6F920;
  if (!qword_27CD6F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F920);
  }

  return result;
}

unint64_t sub_21B1C83C0()
{
  result = qword_27CD6F928;
  if (!qword_27CD6F928)
  {
    sub_21B20CAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F928);
  }

  return result;
}

uint64_t sub_21B1C8418(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21B1A7C90(a1, a2, a3);
  }

  return a1;
}

uint64_t static Archiver.archive(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21B20C678();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B1C867C(a1, v8);
  if (!v1)
  {
    v2 = sub_21B20C688();
    sub_21B1C9218();
    (*(v5 + 8))(v8, v4);
  }

  return v2;
}

void sub_21B1C8580(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21B20C5A8();
  v9[0] = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:v9];

  v3 = v9[0];
  if (a1)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_21B20C508();

    swift_willThrow();
    v8 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_21B1C867C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v78 = a2;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F958, &qword_21B216210) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v83 = &v74 - v3;
  v87 = sub_21B20CC18();
  v96 = *(v87 - 8);
  v4 = *(v96 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v74 - v7;
  v8 = sub_21B20CC08();
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](v8);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B20D228();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v79 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v88 = &v74 - v15;
  v91 = sub_21B20C548();
  v16 = *(v91 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v91);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21B20C768();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21B20C678();
  v93 = *(v99 - 8);
  v25 = *(v93 + 64);
  v26 = MEMORY[0x28223BE20](v99);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v74 - v29;
  v90 = [objc_opt_self() defaultManager];
  v31 = [v90 temporaryDirectory];
  sub_21B20C5E8();

  _s12PoirotBlocks0A18ToolTaskParametersV16recipeFolderPath07loggingH011executionId07runtimeE011userDefinedACSS_SSSg10Foundation4UUIDVAA07RuntimeE0VSgSDySSAA10AnyCodableOGSgtcfcfA1__0();
  v32 = sub_21B20C738();
  v34 = v33;
  (*(v21 + 8))(v24, v20);
  v35 = v95;
  v97 = v32;
  v98 = v34;
  v36 = v91;
  (*(v16 + 104))(v19, *MEMORY[0x277CC91D8], v91);
  sub_21B17FBB0();
  sub_21B20C668();
  (*(v16 + 8))(v19, v36);
  v37 = v99;

  v38 = (v93 + 8);
  v89 = *(v93 + 8);
  v89(v28, v37);
  sub_21B20CBE8();
  v91 = v30;
  v39 = sub_21B20C618();
  v40 = v88;
  MEMORY[0x21CEEBA50](v39);
  v41 = sub_21B20CBC8();
  v43 = v94 + 8;
  v42 = *(v94 + 8);
  v42(v40, v35);
  if (!v41)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v67 = 0xD000000000000011;
    *(v67 + 8) = 0x800000021B20FA60;
    *(v67 + 16) = 0;
    swift_willThrow();

    v65 = v91;
    return (v89)(v65, v37);
  }

  v74 = v43;
  v75 = v42;
  v88 = v38;
  v44 = v84;
  sub_21B20CBF8();
  v97 = MEMORY[0x277D84F90];
  v45 = sub_21B1CA190();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F940, &qword_21B216200);
  v47 = sub_21B1CA1E8();
  v48 = v92;
  v76 = v46;
  v49 = v87;
  v77 = v45;
  sub_21B20D638();
  v50 = sub_21B20CBA8();
  v51 = v96 + 8;
  v52 = *(v96 + 8);
  v52(v48, v49);
  (*(v85 + 8))(v44, v86);
  if (!v50)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v68 = 0xD000000000000018;
    *(v68 + 8) = 0x800000021B20FB20;
    *(v68 + 16) = 0;
    swift_willThrow();
    sub_21B20CBD8();
    v65 = v91;

    v37 = v99;
    return (v89)(v65, v37);
  }

  v86 = v41;
  sub_21B20CCA8();
  v53 = MEMORY[0x277D84F90];
  v54 = v92;
  v85 = v47;
  v96 = v51;
  v97 = MEMORY[0x277D84F90];
  sub_21B20D638();
  v55 = sub_21B20CC58();
  v52(v54, v49);
  if (!v55)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v69 = 0xD000000000000013;
    *(v69 + 8) = 0x800000021B20FB40;
    *(v69 + 16) = 0;
    swift_willThrow();
    sub_21B20CBD8();
    v65 = v91;
    v37 = v99;

    sub_21B20CBD8();

    return (v89)(v65, v37);
  }

  v92 = v50;
  v56 = sub_21B20CC28();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  if (!sub_21B20CC38())
  {
    sub_21B1CA13C();
    swift_allocError();
    *v71 = 0xD000000000000015;
    *(v71 + 8) = 0x800000021B20FB90;
    *(v71 + 16) = 0;
    swift_willThrow();
    sub_21B20CC88();
    goto LABEL_7;
  }

  v84 = v52;
  v59 = sub_21B20C618();
  v60 = v79;
  MEMORY[0x21CEEBA50](v59);
  v61 = v83;
  (*(v94 + 56))(v83, 1, 1, v95);
  v97 = v53;
  v62 = v87;
  v63 = v81;
  sub_21B20D638();
  v64 = v82;
  sub_21B20CC78();
  if (v64)
  {

    (v84)(v63, v62);
    sub_21B1CA24C(v61);
    v75(v60, v95);
    sub_21B20CC88();
LABEL_7:
    v65 = v91;

    sub_21B20CBD8();
    v66 = v99;

    sub_21B20CBD8();

    v37 = v66;
    return (v89)(v65, v37);
  }

  (v84)(v63, v62);
  sub_21B1CA24C(v61);
  v75(v60, v95);
  v72 = v91;
  (*(v93 + 16))(v78, v91, v99);
  sub_21B20CC88();

  sub_21B20CBD8();
  v73 = v99;

  sub_21B20CBD8();

  return (v89)(v72, v73);
}

void sub_21B1C9218()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_21B20C5A8();
  v9[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_21B20C508();

    swift_willThrow();
    v8 = *MEMORY[0x277D85DE8];
  }
}

void sub_21B1C9338(void (*a1)(char *, uint64_t), char *a2, uint64_t a3)
{
  v107 = a2;
  v98 = a3;
  v106 = a1;
  v114 = *MEMORY[0x277D85DE8];
  v100 = sub_21B20CC18();
  v103 = *(v100 - 8);
  v3 = *(v103 + 64);
  v4 = MEMORY[0x28223BE20](v100);
  v96 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v99 = v94 - v6;
  v102 = sub_21B20D228();
  v104 = *(v102 - 8);
  v7 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21B20C548();
  v9 = *(v105 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v105);
  v12 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B20C768();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21B20C678();
  v19 = *(v18 - 8);
  v110 = v18;
  v111 = v19;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v94 - v24;
  v97 = objc_opt_self();
  v109 = [v97 defaultManager];
  v26 = [v109 temporaryDirectory];
  sub_21B20C5E8();

  _s12PoirotBlocks0A18ToolTaskParametersV16recipeFolderPath07loggingH011executionId07runtimeE011userDefinedACSS_SSSg10Foundation4UUIDVAA07RuntimeE0VSgSDySSAA10AnyCodableOGSgtcfcfA1__0();
  v27 = sub_21B20C738();
  v29 = v28;
  (*(v14 + 8))(v17, v13);
  v112 = v27;
  v113 = v29;
  v30 = v105;
  (*(v9 + 104))(v12, *MEMORY[0x277CC91D8], v105);
  sub_21B17FBB0();
  sub_21B20C668();
  v31 = v12;
  v32 = v110;
  (*(v9 + 8))(v31, v30);
  v33 = v111;
  v34 = v25;

  v37 = *(v33 + 8);
  v35 = v33 + 8;
  v36 = v37;
  v37(v23, v32);
  v38 = v108;
  sub_21B20C6C8();
  if (v38)
  {
    v36(v34, v32);

    goto LABEL_19;
  }

  v95 = 0;
  v39 = v103;
  sub_21B20CBE8();
  v40 = sub_21B20C618();
  v41 = v101;
  MEMORY[0x21CEEBA50](v40);
  v42 = sub_21B20CBC8();
  v43 = v104 + 8;
  v105 = *(v104 + 8);
  (v105)(v41, v102);
  if (!v42)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v73 = 0xD000000000000011;
    *(v73 + 8) = 0x800000021B20FA60;
    *(v73 + 16) = 1;
    swift_willThrow();
    v74 = v109;
    sub_21B1C8580(v109);

    v75 = v34;
    v76 = v32;
LABEL_18:
    v36(v75, v76);
    goto LABEL_19;
  }

  v104 = v43;
  v106 = v36;
  v107 = v34;
  v111 = v35;
  v112 = MEMORY[0x277D84F90];
  v44 = sub_21B1CA190();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F940, &qword_21B216200);
  v46 = sub_21B1CA1E8();
  v47 = v99;
  v94[4] = v45;
  v48 = v100;
  sub_21B20D638();
  v49 = sub_21B20CBB8();
  v52 = *(v39 + 8);
  v50 = v39 + 8;
  v51 = v52;
  (v52)(v47, v48);
  v108 = v49;
  if (!v49)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v77 = 0xD00000000000001ALL;
    *(v77 + 8) = 0x800000021B20FA80;
    *(v77 + 16) = 1;
    swift_willThrow();
    sub_21B20CBD8();

    v78 = v109;
    v79 = v107;
    sub_21B1C8580(v109);

    v106(v79, v110);
    goto LABEL_19;
  }

  v94[3] = v42;
  sub_21B20CCA8();
  v112 = MEMORY[0x277D84F90];
  v94[0] = v46;
  v94[1] = v44;
  sub_21B20D638();
  v53 = sub_21B20CC48();
  (v51)(v47, v48);
  v94[2] = v53;
  if (!v53)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v80 = 0xD000000000000013;
    *(v80 + 8) = 0x800000021B20FAA0;
    *(v80 + 16) = 1;
    swift_willThrow();
    sub_21B20CBD8();
    v81 = v110;
    v36 = v106;
    v82 = v107;

    sub_21B20CBD8();
LABEL_17:

    v85 = v109;
    sub_21B1C8580(v109);

    v75 = v82;
    v76 = v81;
    goto LABEL_18;
  }

  v103 = v50;
  v54 = [v97 defaultManager];
  v55 = sub_21B20C5A8();
  v112 = 0;
  v56 = [v54 createDirectoryAtURL:v55 withIntermediateDirectories:1 attributes:0 error:&v112];

  if (!v56)
  {
    v83 = v112;
    sub_21B20C508();

LABEL_16:
    swift_willThrow();
    sub_21B20CC88();
    v81 = v110;
    v36 = v106;
    v82 = v107;

    sub_21B20CBD8();

    sub_21B20CBD8();
    goto LABEL_17;
  }

  v57 = v112;
  v58 = sub_21B20C618();
  v59 = v101;
  MEMORY[0x21CEEBA50](v58);
  v112 = MEMORY[0x277D84F90];
  v60 = v99;
  v61 = v100;
  sub_21B20D638();
  v62 = sub_21B20CC68();
  v99 = v51;
  (v51)(v60, v61);
  (v105)(v59, v102);
  if (!v62)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v84 = 0xD000000000000014;
    *(v84 + 8) = 0x800000021B20FAC0;
    *(v84 + 16) = 1;
    goto LABEL_16;
  }

  v112 = MEMORY[0x277D84F90];
  v63 = v96;
  sub_21B20D638();
  v64 = v95;
  v65 = sub_21B20CC98();
  if (v64)
  {
    (v99)(v63, v61);
  }

  else
  {
    v87 = v65;
    (v99)(v63, v61);
    if (v87)
    {
      sub_21B20CC88();
      v88 = v110;
      v90 = v106;
      v89 = v107;

      sub_21B20CC88();

      sub_21B20CBD8();

      sub_21B20CBD8();
      v91 = v109;

      sub_21B1C8580(v91);

      v90(v89, v88);
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_21B2110C0;
    *(v92 + 56) = MEMORY[0x277D837D0];
    *(v92 + 32) = 0xD00000000000001CLL;
    *(v92 + 40) = 0x800000021B20FAE0;
    sub_21B20DC68();

    sub_21B1CA13C();
    swift_allocError();
    *v93 = 0xD000000000000015;
    *(v93 + 8) = 0x800000021B20FB00;
    *(v93 + 16) = 1;
    swift_willThrow();
  }

  v66 = v110;
  v67 = v106;
  v68 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_21B2110C0;
  v112 = 0;
  v113 = 0xE000000000000000;
  MEMORY[0x21CEEBBB0](0x203A726F727245, 0xE700000000000000);
  swift_getErrorValue();
  sub_21B20DB08();
  v70 = v112;
  v71 = v113;
  *(v69 + 56) = MEMORY[0x277D837D0];
  *(v69 + 32) = v70;
  *(v69 + 40) = v71;
  sub_21B20DC68();

  swift_willThrow();
  sub_21B20CC88();

  sub_21B20CC88();

  sub_21B20CBD8();

  sub_21B20CBD8();

  v72 = v109;
  sub_21B1C8580(v109);

  v67(v68, v66);
LABEL_19:
  v86 = *MEMORY[0x277D85DE8];
}

unint64_t sub_21B1CA13C()
{
  result = qword_27CD6F930;
  if (!qword_27CD6F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F930);
  }

  return result;
}

unint64_t sub_21B1CA190()
{
  result = qword_27CD6F938;
  if (!qword_27CD6F938)
  {
    sub_21B20CC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F938);
  }

  return result;
}

unint64_t sub_21B1CA1E8()
{
  result = qword_27CD6F948;
  if (!qword_27CD6F948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6F940, &qword_21B216200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F948);
  }

  return result;
}

uint64_t sub_21B1CA24C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F958, &qword_21B216210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1CA2D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F968, &qword_21B2162D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v29 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v29 - v9;
  v10 = sub_21B20C518();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F978, &qword_21B2162E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B2110C0;
  v16 = *MEMORY[0x277CBE868];
  *(v15 + 32) = *MEMORY[0x277CBE868];
  v17 = v16;
  v18 = sub_21B20D588();

  if (v18)
  {
    v30 = v18;
    v31 = v11;
    sub_21B20D578();
    sub_21B1CBDEC();
    sub_21B20D5E8();
    if (v37)
    {
      v19 = (v34 + 48);
      v20 = MEMORY[0x277D84F90];
      v32 = v5;
      while (1)
      {
        sub_21B17C304(&v36, v35);
        sub_21B1CA7A8(v35, v4);
        if (v0)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(v35);
        if ((*v19)(v4, 1, v5) == 1)
        {
          sub_21B186488(v4, &qword_27CD6F968, &qword_21B2162D0);
        }

        else
        {
          v21 = v33;
          sub_21B1CBE44(v4, v33);
          sub_21B1CBE44(v21, v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_21B1D32BC(0, v20[2] + 1, 1, v20);
          }

          v23 = v20[2];
          v22 = v20[3];
          if (v23 >= v22 >> 1)
          {
            v20 = sub_21B1D32BC(v22 > 1, v23 + 1, 1, v20);
          }

          v20[2] = v23 + 1;
          sub_21B1CBE44(v38, v20 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v23);
          v5 = v32;
        }

        sub_21B20D5E8();
        if (!v37)
        {
          goto LABEL_15;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
      (*(v31 + 8))(v14, v10);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
LABEL_15:
      (*(v31 + 8))(v14, v10);
      if (v20[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F988, &qword_21B2162E8);
        v26 = sub_21B20D808();
      }

      else
      {
        v26 = MEMORY[0x277D84F98];
      }

      v27 = v30;
      *&v36 = v26;

      sub_21B1CB400(v28, 1, &v36);
      if (v0)
      {
        result = swift_unexpectedError();
        __break(1u);
      }

      else
      {

        return v36;
      }
    }
  }

  else
  {
    sub_21B1CBD98();
    swift_allocError();
    *v24 = 0xD00000000000001DLL;
    *(v24 + 8) = 0x800000021B20FBB0;
    *(v24 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21B1CA7A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = sub_21B20C4E8();
  v42 = *(v44 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - v10;
  v12 = sub_21B20C678();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  sub_21B19DB00(a1, v43);
  v20 = swift_dynamicCast();
  v21 = *(v13 + 56);
  if ((v20 & 1) == 0)
  {
    v21(v11, 1, 1, v12);
    sub_21B186488(v11, &qword_27CD6F550, &qword_21B2162F0);
    sub_21B1CBD98();
    swift_allocError();
    *v26 = 0xD000000000000021;
    *(v26 + 8) = 0x800000021B20FBD0;
    *(v26 + 16) = 0;
    return swift_willThrow();
  }

  v41 = a2;
  v21(v11, 0, 1, v12);
  (*(v13 + 32))(v19, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F978, &qword_21B2162E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B2110C0;
  v23 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v24 = v23;
  sub_21B1CBF24(inited);
  swift_setDeallocating();
  sub_21B1CC118(inited + 32);
  sub_21B20C578();
  if (v2)
  {
    (*(v13 + 8))(v19, v12);
  }

  v27 = sub_21B20C4D8();
  if (v27 == 2 || (v27 & 1) != 0)
  {
    goto LABEL_7;
  }

  sub_21B20C558();
  v29 = sub_21B20D368();
  v31 = v30;

  if (v29 == 7106931 && v31 == 0xE300000000000000)
  {
  }

  else
  {
    v32 = sub_21B20DB28();

    if ((v32 & 1) == 0)
    {
LABEL_7:
      (*(v42 + 8))(v7, v44);
      (*(v13 + 8))(v19, v12);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
      return (*(*(v28 - 8) + 56))(v41, 1, 1, v28);
    }
  }

  sub_21B20C5B8();
  sub_21B20C598();
  v40 = *(v13 + 8);
  v40(v17, v12);
  v39 = sub_21B20D368();
  v34 = v33;

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
  v36 = *(v35 + 48);
  v37 = v41;
  *v41 = v39;
  v37[1] = v34;
  sub_21B20C528();
  (*(v42 + 8))(v7, v44);
  v40(v19, v12);
  return (*(*(v35 - 8) + 56))(v37, 0, 1, v35);
}

uint64_t sub_21B1CACF0()
{
  v2 = sub_21B20C3D8();
  v72 = *(v2 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B20D348();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B20C678();
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  v17 = sub_21B1CA2D0();
  if (v1)
  {
    return v0;
  }

  v18 = v17;
  v65 = v14;
  v59 = v5;
  v60 = v2;
  v75 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF78, &unk_21B212530);
  result = sub_21B20D7E8();
  v0 = result;
  v20 = 0;
  v21 = *(v18 + 64);
  v54 = v18 + 64;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v26 = v68;
  v62 = v68 + 16;
  v63 = v68 + 8;
  v57 = result + 64;
  v58 = (v72 + 8);
  v55 = v25;
  v56 = v9;
  v61 = v18;
  v64 = result;
  v27 = v65;
  if (v24)
  {
    while (1)
    {
      v28 = __clz(__rbit64(v24));
      v69 = (v24 - 1) & v24;
LABEL_11:
      v31 = v28 | (v20 << 6);
      v32 = *(v18 + 56);
      v33 = (*(v18 + 48) + 16 * v31);
      v34 = v33[1];
      v70 = *v33;
      v71 = v31;
      (*(v26 + 16))(v16, v32 + *(v26 + 72) * v31, v10);
      v72 = v34;

      sub_21B20C5B8();
      sub_21B20C598();
      v35 = *(v26 + 8);
      v35(v27, v10);
      v36 = sub_21B20D368();
      v0 = v37;

      sub_21B20D338();
      v38 = v75;
      v39 = sub_21B20D2B8();
      v75 = v38;
      if (v38)
      {
        break;
      }

      v73 = v39;
      v74 = v40;
      v41 = v10;
      v42 = v59;
      sub_21B20C3C8();
      sub_21B17FBB0();
      v67 = v0;
      v43 = sub_21B20D618();
      v66 = v44;
      v45 = v42;
      v10 = v41;
      (*v58)(v45, v60);

      v35(v16, v41);
      type metadata accessor for Query();
      result = swift_allocObject();
      *(result + 48) = 0;
      v46 = v66;
      v47 = v67;
      *(result + 16) = v36;
      *(result + 24) = v47;
      *(result + 32) = v43;
      *(result + 40) = v46;
      v48 = v71;
      *(v57 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
      v0 = v64;
      v49 = (*(v64 + 48) + 16 * v48);
      v50 = v72;
      *v49 = v70;
      v49[1] = v50;
      *(*(v0 + 56) + 8 * v48) = result;
      v51 = *(v0 + 16);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_19;
      }

      *(v0 + 16) = v53;
      v25 = v55;
      v26 = v68;
      v24 = v69;
      v18 = v61;
      v27 = v65;
      if (!v69)
      {
        goto LABEL_6;
      }
    }

    v35(v16, v10);
    return v0;
  }

LABEL_6:
  v29 = v20;
  while (1)
  {
    v20 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v20 >= v25)
    {

      return v0;
    }

    v30 = *(v54 + 8 * v20);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v69 = (v30 - 1) & v30;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_21B1CB1B4(void *a1, void *a2)
{
  v21 = a1;
  v3 = sub_21B20C548();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20C678();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[1];
  v22[0] = *a2;
  v22[1] = v13;
  (*(v4 + 104))(v7, *MEMORY[0x277CC91D8], v3);
  sub_21B17FBB0();
  sub_21B20C668();
  (*(v4 + 8))(v7, v3);
  v14 = v22[3];
  v15 = sub_21B1CACF0();
  if (v14)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v16 = v15;
    (*(v9 + 8))(v12, v8);
    v17 = v21;
    v18 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *v17;
    sub_21B1CB94C(v16, sub_21B1CBD50, 0, isUniquelyReferenced_nonNull_native, v22);
    *v17 = v22[0];
  }
}

void sub_21B1CB400(uint64_t a1, char a2, void *a3)
{
  v63 = sub_21B20C678();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v54 - v12);
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_24;
  }

  v54 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v60 + 80);
  v59 = a1;
  v16 = (v61 + 32);
  v56 = a1 + ((v15 + 32) & ~v15);
  sub_21B1CBEB4(v56, v13);
  v17 = v13[1];
  v66 = *v13;
  v18 = v66;
  v67 = v17;
  v19 = *v16;
  v57 = v14;
  v55 = v19;
  v19(v62, v13 + v14, v63);
  v20 = *a3;
  v22 = sub_21B1B9778(v18, v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21B20468C();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_21B20290C(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_21B1B9778(v18, v17);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v33 = (v32[6] + 16 * v22);
      *v33 = v18;
      v33[1] = v17;
      v55((v32[7] + *(v61 + 72) * v22), v62, v63);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v36;
      if (v58 != 1)
      {
        v37 = 1;
        while (v37 < *(v59 + 16))
        {
          sub_21B1CBEB4(v56 + *(v60 + 72) * v37, v13);
          v38 = v13[1];
          v66 = *v13;
          v39 = v66;
          v67 = v38;
          v40 = *v16;
          (*v16)(v62, v13 + v57, v63);
          v41 = *a3;
          v42 = sub_21B1B9778(v39, v38);
          v44 = v41[2];
          v45 = (v43 & 1) == 0;
          v35 = __OFADD__(v44, v45);
          v46 = v44 + v45;
          if (v35)
          {
            goto LABEL_26;
          }

          v47 = v43;
          if (v41[3] < v46)
          {
            sub_21B20290C(v46, 1);
            v48 = *a3;
            v42 = sub_21B1B9778(v39, v38);
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v47)
          {
            goto LABEL_11;
          }

          v50 = *a3;
          *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v51 = (v50[6] + 16 * v42);
          *v51 = v39;
          v51[1] = v38;
          v40((v50[7] + *(v61 + 72) * v42), v62, v63);
          v52 = v50[2];
          v35 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v35)
          {
            goto LABEL_27;
          }

          ++v37;
          v50[2] = v53;
          if (v58 == v37)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = swift_allocError();
    swift_willThrow();
    v68 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v61 + 8))(v62, v63);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_21B20DBF8();
  __break(1u);
LABEL_29:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

void sub_21B1CB94C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v43 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v42 = (63 - v6) >> 6;

  v9 = 0;
  v10 = 0;
  v11 = v8;
  if (v8)
  {
LABEL_9:
    while (1)
    {
      v13 = __clz(__rbit64(v11)) | (v10 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(a1 + 56) + 8 * v13);
      v50 = *v14;
      v51 = v15;
      v52 = v16;

      a2(&v47, &v50);

      v18 = v47;
      v17 = v48;
      v19 = v49;
      v50 = v47;
      v51 = v48;
      v20 = *a5;
      v22 = sub_21B1B9778(v47, v48);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((a4 & 1) == 0)
        {
          sub_21B203648();
        }
      }

      else
      {
        sub_21B200B1C(v25, a4 & 1);
        v27 = *a5;
        v28 = sub_21B1B9778(v18, v17);
        if ((v26 & 1) != (v29 & 1))
        {
          goto LABEL_25;
        }

        v22 = v28;
      }

      v30 = *a5;
      if (v26)
      {
        v35 = *(v30[7] + 8 * v22);
        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        sub_21B1CBD98();
        v38 = swift_allocError();
        *v39 = v37;
        *(v39 + 8) = v36;
        *(v39 + 16) = 1;
        swift_willThrow();
        v53 = v38;

        v40 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
        if (swift_dynamicCast())
        {
          goto LABEL_26;
        }

        sub_21B17AB4C();

        return;
      }

      v30[(v22 >> 6) + 8] |= 1 << v22;
      v31 = (v30[6] + 16 * v22);
      *v31 = v18;
      v31[1] = v17;
      *(v30[7] + 8 * v22) = v19;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_24;
      }

      v30[2] = v34;
      a4 = 1;
      v9 = v10;
      v11 &= v11 - 1;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v9;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v42)
      {
        sub_21B17AB4C();

        return;
      }

      v11 = *(v43 + 8 * v10);
      ++v12;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_21B20DBF8();
  __break(1u);
LABEL_26:
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B1CBD50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t sub_21B1CBD98()
{
  result = qword_27CD6F960;
  if (!qword_27CD6F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F960);
  }

  return result;
}

unint64_t sub_21B1CBDEC()
{
  result = qword_27CD6F980;
  if (!qword_27CD6F980)
  {
    sub_21B20C518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F980);
  }

  return result;
}

uint64_t sub_21B1CBE44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1CBEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1CBF24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F990, &qword_21B2162F8);
    v3 = sub_21B20D688();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_21B20D2F8();
      sub_21B20DC88();
      v29 = v7;
      sub_21B20D388();
      v9 = sub_21B20DCA8();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_21B20D2F8();
        v20 = v19;
        if (v18 == sub_21B20D2F8() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_21B20DB28();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21B1CC118(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1CC190@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v38 = a4;
  v37 = type metadata accessor for InferredProtobufType();
  v5 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20CCE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DatasetColumnType();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21B20CFD8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DatasetColumnDescription();
  sub_21B1CC84C(a1 + *(v22 + 24), v16);
  (*(v9 + 32))(v12, v16, v8);
  v23 = (*(v9 + 88))(v12, v8);
  if (v23 != *MEMORY[0x277D3E1C0])
  {
    if (v23 != *MEMORY[0x277D3E1B0])
    {
      if (v23 == *MEMORY[0x277D3E1D0])
      {
        v29 = MEMORY[0x277D3E508];
        goto LABEL_18;
      }

      if (v23 == *MEMORY[0x277D3E1D8])
      {
        v29 = MEMORY[0x277D3E510];
        goto LABEL_18;
      }

      if (v23 == *MEMORY[0x277D3E1E8])
      {
        v29 = MEMORY[0x277D3E538];
        goto LABEL_18;
      }

      if (v23 == *MEMORY[0x277D3E1F0])
      {
        v29 = MEMORY[0x277D3E540];
        goto LABEL_18;
      }

      if (v23 == *MEMORY[0x277D3E1C8])
      {
        v29 = MEMORY[0x277D3E500];
        goto LABEL_18;
      }

      v29 = MEMORY[0x277D3E518];
      if (v23 == *MEMORY[0x277D3E1E0] || v23 == *MEMORY[0x277D3E1F8])
      {
        goto LABEL_18;
      }

      if (v23 == *MEMORY[0x277D3E1B8])
      {
        v29 = MEMORY[0x277D3E4E8];
        goto LABEL_18;
      }

      if (v23 != *MEMORY[0x277D3E1A8])
      {
        result = sub_21B20D7C8();
        __break(1u);
        return result;
      }
    }

    v29 = MEMORY[0x277D3E4F8];
LABEL_18:
    sub_21B17FDE8(a1);

    (*(v18 + 104))(v21, *v29, v17);
    v33 = v38;
    result = (*(v18 + 32))(v38, v21, v17);
    v34 = (v33 + *(v37 + 20));
    *v34 = 0;
    v34[1] = 0;
    return result;
  }

  v24 = a1[1];
  if (*(a1 + *(v22 + 28)) == 1)
  {
    v25 = *a1;
    (*(v18 + 104))(v7, *MEMORY[0x277D3E4F0], v17);
    v39 = v35;
    v40 = v36;

    MEMORY[0x21CEEBBB0](0x5F6D756E652ELL, 0xE600000000000000);
    MEMORY[0x21CEEBBB0](v25, v24);

    v26 = v39;
    v27 = v40;
    sub_21B17FDE8(a1);
    v28 = &v7[*(v37 + 20)];
    *v28 = v26;
    *(v28 + 1) = v27;
  }

  else
  {
    v30 = a1[1];

    sub_21B17FDE8(a1);

    (*(v18 + 104))(v7, *MEMORY[0x277D3E530], v17);
    v31 = &v7[*(v37 + 20)];
    *v31 = 0;
    *(v31 + 1) = 0;
  }

  return sub_21B1CC8B0(v7, v38);
}

uint64_t sub_21B1CC688()
{
  v1 = (v0 + *(type metadata accessor for InferredProtobufType() + 20));
  if (v1[1])
  {
    MEMORY[0x21CEEBBB0](*v1);
    MEMORY[0x21CEEBBB0](10272, 0xE200000000000000);
    sub_21B20CFD8();
    sub_21B20D768();
    v2 = 0x657079742029;
    v3 = 0xE600000000000000;
  }

  else
  {
    sub_21B20CFD8();
    sub_21B20D768();
    v2 = 0x6570797420;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x21CEEBBB0](v2, v3);
  return 0;
}

uint64_t sub_21B1CC778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_21B20CFC8())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_21B20DB28() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for InferredProtobufType()
{
  result = qword_27CD6F998;
  if (!qword_27CD6F998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B1CC84C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1CC8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferredProtobufType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21B1CC93C()
{
  sub_21B20CFD8();
  if (v0 <= 0x3F)
  {
    sub_21B1CC9C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B1CC9C0()
{
  if (!qword_2811F9F58)
  {
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2811F9F58);
    }
  }
}

uint64_t sub_21B1CCA10@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v107 = a8;
  v125 = a7;
  v112 = a6;
  v111 = a5;
  v127 = a1;
  v119 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F898, qword_21B215D38);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v118 = &v105[-v14];
  v117 = sub_21B20D118();
  v116 = *(v117 - 8);
  v15 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v115 = &v105[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = sub_21B20D018();
  v121 = *(v122 - 8);
  v17 = v121[8];
  v18 = MEMORY[0x28223BE20](v122);
  v109 = &v105[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v123 = &v105[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v108 = &v105[-v23];
  MEMORY[0x28223BE20](v22);
  v110 = &v105[-v24];
  v25 = sub_21B20CCE8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v105[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = sub_21B20CFD8();
  v124 = *(v128 - 8);
  v30 = *(v124 + 64);
  v31 = MEMORY[0x28223BE20](v128);
  v114 = &v105[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v113 = &v105[-v34];
  MEMORY[0x28223BE20](v33);
  v36 = &v105[-v35];
  v136 = type metadata accessor for InferredProtobufType();
  v37 = *(*(v136 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v136);
  v120 = &v105[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v105[-v41];
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v105[-v44];
  MEMORY[0x28223BE20](v43);
  v129 = &v105[-v46];
  v47 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v47 >= *(a3 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v106 = *v127;
  v48 = a3 + 56 * v47;
  sub_21B1CD894(v48 + 32, &v133);
  v126 = v133;
  v127 = v134;
  __swift_destroy_boxed_opaque_existential_1(&v135);
  sub_21B1CD894(v48 + 32, &v133);

  sub_21B17C284(&v135, v132);
  sub_21B17FB4C(v132, &v133);
  __swift_project_boxed_opaque_existential_1(&v133, *(&v135 + 1));
  swift_getDynamicType();
  sub_21B20CDD8();
  v49 = (*(v26 + 88))(v29, v25);
  if (v49 != *MEMORY[0x277D3E1C0])
  {
    v50 = v128;
    v51 = v125;
    v53 = v123;
    if (v49 == *MEMORY[0x277D3E1B0])
    {
      v57 = MEMORY[0x277D3E4F8];
      v58 = v129;
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1(&v133);
      v60 = *v57;
      v61 = v124;
      (*(v124 + 104))(v36, v60, v50);
      (*(v61 + 32))(v45, v36, v50);
      v62 = &v45[*(v136 + 20)];
      *v62 = 0;
      v62[1] = 0;
      goto LABEL_21;
    }

    v58 = v129;
    if (v49 == *MEMORY[0x277D3E1D0])
    {
      v57 = MEMORY[0x277D3E508];
      goto LABEL_20;
    }

    if (v49 == *MEMORY[0x277D3E1D8])
    {
      v57 = MEMORY[0x277D3E510];
      goto LABEL_20;
    }

    if (v49 == *MEMORY[0x277D3E1E8])
    {
      v57 = MEMORY[0x277D3E538];
      goto LABEL_20;
    }

    if (v49 == *MEMORY[0x277D3E1F0])
    {
      v57 = MEMORY[0x277D3E540];
      goto LABEL_20;
    }

    if (v49 == *MEMORY[0x277D3E1C8])
    {
      v57 = MEMORY[0x277D3E500];
      goto LABEL_20;
    }

    v57 = MEMORY[0x277D3E518];
    if (v49 == *MEMORY[0x277D3E1E0] || v49 == *MEMORY[0x277D3E1F8])
    {
      goto LABEL_20;
    }

    if (v49 == *MEMORY[0x277D3E1B8])
    {
      v57 = MEMORY[0x277D3E4E8];
      goto LABEL_20;
    }

    if (v49 == *MEMORY[0x277D3E1A8])
    {
      v57 = MEMORY[0x277D3E4F8];
      goto LABEL_20;
    }

LABEL_50:
    result = sub_21B20D7C8();
    __break(1u);
    return result;
  }

  v50 = v128;
  v51 = v125;
  v52 = a4;
  v53 = v123;
  if (v52)
  {
    (*(v124 + 104))(v42, *MEMORY[0x277D3E4F0], v128);
    v130 = v111;
    v131 = v112;

    MEMORY[0x21CEEBBB0](0x5F6D756E652ELL, 0xE600000000000000);
    MEMORY[0x21CEEBBB0](v126, v127);
    v54 = v130;
    v55 = v131;
    __swift_destroy_boxed_opaque_existential_1(&v133);
    v56 = &v42[*(v136 + 20)];
    *v56 = v54;
    v56[1] = v55;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v133);
    (*(v124 + 104))(v42, *MEMORY[0x277D3E530], v50);
    v59 = &v42[*(v136 + 20)];
    *v59 = 0;
    v59[1] = 0;
  }

  sub_21B1CC8B0(v42, v45);
  v58 = v129;
LABEL_21:
  sub_21B1CC8B0(v45, v58);
  v63 = sub_21B20D108();
  if (*(v63 + 16) && (v64 = sub_21B1B9778(v126, v127), (v65 & 1) != 0))
  {
    v66 = v121;
    v67 = v121[2];
    v68 = v108;
    v69 = v122;
    v67(v108, *(v63 + 56) + v121[9] * v64, v122);

    v70 = v110;
    (v66[4])(v110, v68, v69);
    v71 = v109;
    v67(v109, v70, v69);
    v72 = v120;
    sub_21B20CFF8();
    v73 = sub_21B20D008();
    v75 = v74;
    v76 = v66[1];
    v76(v71, v69);
    v77 = &v72[*(v136 + 20)];
    *v77 = v73;
    v77[1] = v75;
    if (sub_21B20CFC8())
    {
      v78 = &v58[*(v136 + 20)];
      v79 = v78[1];
      if (v75)
      {
        if (v79 && (v73 == *v78 && v75 == v79 || (sub_21B20DB28() & 1) != 0))
        {
          goto LABEL_29;
        }
      }

      else if (!v79)
      {
LABEL_29:

        v76(v70, v69);
        __swift_destroy_boxed_opaque_existential_1(v132);
        sub_21B1C416C(v120);
        result = sub_21B1C416C(v58);
        *v119 = v106;
        return result;
      }
    }

    v133 = 0;
    v134 = 0xE000000000000000;
    sub_21B20D6A8();
    v96 = v112;

    v133 = v111;
    v134 = v96;
    MEMORY[0x21CEEBBB0](46, 0xE100000000000000);
    MEMORY[0x21CEEBBB0](v126, v127);

    MEMORY[0x21CEEBBB0](0x2073616820, 0xE500000000000000);
    v130 = 0;
    v131 = 0xE000000000000000;
    if (v75)
    {
      MEMORY[0x21CEEBBB0](v73, v75);
      MEMORY[0x21CEEBBB0](10272, 0xE200000000000000);
      sub_21B20D768();
      MEMORY[0x21CEEBBB0](0x657079742029, 0xE600000000000000);
    }

    else
    {
      sub_21B20D768();
      MEMORY[0x21CEEBBB0](0x6570797420, 0xE500000000000000);
    }

    MEMORY[0x21CEEBBB0](v130, v131);

    MEMORY[0x21CEEBBB0](0x20656C696877202CLL, 0xE800000000000000);
    v97 = v129;
    v98 = &v129[*(v136 + 20)];
    if (v98[1])
    {
      v99 = *v98;
      v130 = 0;
      v131 = 0xE000000000000000;
      MEMORY[0x21CEEBBB0](v99);
      MEMORY[0x21CEEBBB0](10272, 0xE200000000000000);
      sub_21B20D768();
      v100 = 0x657079742029;
      v101 = 0xE600000000000000;
    }

    else
    {
      v130 = 0;
      v131 = 0xE000000000000000;
      sub_21B20D768();
      v100 = 0x6570797420;
      v101 = 0xE500000000000000;
    }

    MEMORY[0x21CEEBBB0](v100, v101);
    MEMORY[0x21CEEBBB0](v130, v131);

    MEMORY[0x21CEEBBB0](0x65666E6920736920, 0xEC00000064657272);
    v102 = v133;
    v103 = v134;
    sub_21B186430();
    swift_allocError();
    *v104 = v102;
    *(v104 + 8) = v103;
    *(v104 + 16) = 5;
    swift_willThrow();
    v76(v70, v69);
    __swift_destroy_boxed_opaque_existential_1(v132);
    sub_21B1C416C(v120);
    return sub_21B1C416C(v97);
  }

  else
  {

    v81 = v124;
    (*(v124 + 16))(v113, v58, v50);
    v82 = &v58[*(v136 + 20)];
    v83 = *v82;
    v84 = v82[1];
    v85 = v116;
    v86 = v115;
    v87 = v117;
    (*(v116 + 16))(v115, v51, v117);

    sub_21B20D0D8();
    (*(v85 + 8))(v86, v87);
    LOBYTE(v133) = 1;
    sub_21B20CFE8();
    v88 = v114;
    sub_21B20CFF8();
    v89 = v128;
    LODWORD(v83) = (*(v81 + 88))(v88, v128);
    LODWORD(v86) = *MEMORY[0x277D3E4F0];
    (*(v81 + 8))(v88, v89);
    if (v83 == v86)
    {
      v90 = sub_21B20D008();
      if (v91)
      {
        sub_21B1B9C24(&v133, v90, v91);
      }
    }

    v92 = v121;
    v93 = v118;
    v94 = v122;
    (v121[2])(v118, v53, v122);
    (v92[7])(v93, 0, 1, v94);
    v95 = sub_21B20D0F8();
    sub_21B1DF808(v93, v126, v127);
    v95(&v133, 0);
    (v92[1])(v53, v94);
    __swift_destroy_boxed_opaque_existential_1(v132);
    result = sub_21B1C416C(v129);
    *v119 = 1;
  }

  return result;
}

uint64_t sub_21B1CD894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC40, &qword_21B212500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1CD904(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21B20D118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v56 = MEMORY[0x277D84FA0];
  v16 = *(a2 + 16);

  v49 = v15;
  v50 = v9;
  if (v16)
  {
    v17 = sub_21B1B9778(v14, v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      v14 = *v19;
      v20 = v19[1];

      v13 = v20;
    }
  }

  v47 = v4;
  v48 = sub_21B20D088();
  v22 = v21;
  v23 = *v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v22;
  v25 = v54;
  *v22 = 0x8000000000000000;
  v27 = sub_21B1B9778(v14, v13);
  v28 = *(v25 + 16);
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v9) = v26;
  if (*(v25 + 24) >= v30)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

LABEL_21:
    sub_21B2044CC();
    goto LABEL_9;
  }

  sub_21B202604(v30, isUniquelyReferenced_nonNull_native);
  v31 = sub_21B1B9778(v14, v13);
  if ((v9 & 1) != (v32 & 1))
  {
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

  v27 = v31;
LABEL_9:
  v33 = *v22;
  *v22 = v54;

  v34 = *v22;
  if ((v9 & 1) == 0)
  {
    sub_21B20D0E8();
    sub_21B2051DC(v27, v14, v13, v12, v34);
  }

  v35 = v34[7];
  v36 = *(v50 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
  v37 = sub_21B20D268();
  v38 = *(v37 + 16);
  v53 = 0;
  if (v38)
  {
    v39 = 0;
    v40 = v35 + v36 * v27;
    v41 = v51;
    while (1)
    {
      v54 = v39;
      sub_21B1CCA10(&v53, &v54, v37, a3 & 1, v14, v13, v40, &v56, &v52);
      if (v41)
      {
        break;
      }

      ++v39;
      v42 = v52;
      v53 = v52;
      if (v38 == v39)
      {
        v51 = 0;
        goto LABEL_17;
      }
    }

    v48(v55, 1);
  }

  else
  {
    v42 = 0;
LABEL_17:

    v48(v55, 0);
    v43 = sub_21B1C2650(0, v56, v47);

    v44 = v43 | v42;
  }

  return v44 & 1;
}

uint64_t sub_21B1CDC80(uint64_t *a1, uint64_t a2)
{
  v4 = sub_21B20D118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - v10;
  v13 = *a1;
  v12 = a1[1];
  v30[0] = a1[2];
  v14 = *(a2 + 16);

  v15 = v13;
  v16 = v12;
  if (v14)
  {
    v17 = sub_21B1B9778(v13, v12);
    v15 = v13;
    v16 = v12;
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      v15 = *v19;
      v16 = v19[1];
    }
  }

  v20 = sub_21B20D098();
  if (*(v20 + 16) && (v21 = sub_21B1B9778(v15, v16), (v22 & 1) != 0))
  {
    (*(v5 + 16))(v9, *(v20 + 56) + *(v5 + 72) * v21, v4);

    (*(v5 + 32))(v11, v9, v4);
    v23 = v11;
    v24 = sub_21B20D108();

    v25 = v30[0];

    v26 = v25;
    v27 = v30[1];
    v28 = sub_21B1CEAB4(0, v24, v13, v12, v26, v15, v16, v30[3]);
    if (!v27)
    {
      v23 = v28;
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {

    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_21B1CDF40@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>)
{
  v87 = a6;
  v83 = a5;
  v82 = a4;
  v92 = a3;
  v91 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F890, &qword_21B215D30);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v79 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v81 = &v76 - v14;
  MEMORY[0x28223BE20](v13);
  v80 = &v76 - v15;
  v86 = sub_21B20CFB8();
  v85 = *(v86 - 1);
  v16 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21B20CFD8();
  v88 = *(v18 - 8);
  v89 = v18;
  v19 = *(v88 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21B20D018();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F9A8, &qword_21B216438);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v76 - v30);
  LODWORD(v90) = *a1;
  sub_21B1CECE8(a2, &v76 - v30);
  v33 = *v31;
  v32 = v31[1];
  v34 = *(v23 + 8);
  v35 = v31 + *(v28 + 56);
  v97[7] = v23 + 8;
  v93 = v34;
  v34(v35, v22);
  sub_21B1CECE8(a2, v31);
  v36 = v31[1];

  v37 = v31 + *(v28 + 56);
  v38 = v22;
  v39 = v92;
  (*(v23 + 32))(v26, v37, v22);
  if (*(v39 + 16) && (v40 = sub_21B1B9778(v33, v32), (v41 & 1) != 0))
  {
    sub_21B17FB4C(*(v39 + 56) + 40 * v40, v96);
    sub_21B17C284(v96, v97);
    sub_21B20CFF8();
    v43 = v88;
    v42 = v89;
    if ((*(v88 + 88))(v21, v89) != *MEMORY[0x277D3E4F0])
    {

      __swift_destroy_boxed_opaque_existential_1(v97);
      v93(v26, v38);
      result = (*(v43 + 8))(v21, v42);
      goto LABEL_11;
    }

    (*(v43 + 8))(v21, v42);
    v44 = sub_21B20D008();
    if (!v45)
    {

      __swift_destroy_boxed_opaque_existential_1(v97);
      result = (v93)(v26, v38);
      goto LABEL_11;
    }

    v46 = v44;
    v47 = v45;
    sub_21B17FB4C(v97, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      *&v96[0] = 0;
      *(&v96[0] + 1) = 0xE000000000000000;
      sub_21B20D6A8();
      MEMORY[0x21CEEBBB0](0x6465727265666E49, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v97, v97[3]);
      swift_getDynamicType();
      v58 = sub_21B20DD38();
      MEMORY[0x21CEEBBB0](v58);

      MEMORY[0x21CEEBBB0](0xD000000000000015, 0x800000021B20FC30);
      MEMORY[0x21CEEBBB0](v33, v32);

      MEMORY[0x21CEEBBB0](543584032, 0xE400000000000000);
      MEMORY[0x21CEEBBB0](v82, v83);
      MEMORY[0x21CEEBBB0](0xD00000000000002BLL, 0x800000021B20FC50);
      v59 = v96[0];
      sub_21B186430();
      swift_allocError();
      *v60 = v59;
      *(v60 + 16) = 5;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v97);
      return (v93)(v26, v38);
    }

    v92 = v94;
    v88 = v95;
    v48 = sub_21B20D078();
    v49 = *(v48 + 16);
    v89 = v47;
    v77 = v46;
    if (v49)
    {
      v50 = sub_21B1B9778(v46, v47);
      v51 = v86;
      v52 = v85;
      v53 = v81;
      v54 = v80;
      if (v55)
      {
        (*(v85 + 16))(v80, *(v48 + 56) + *(v85 + 72) * v50, v86);
        v56 = 0;
      }

      else
      {
        v56 = 1;
      }
    }

    else
    {
      v56 = 1;
      v51 = v86;
      v52 = v85;
      v53 = v81;
      v54 = v80;
    }

    v86 = *(v52 + 56);
    (v86)(v54, v56, 1, v51);
    sub_21B1CED58(v54, v53);
    v61 = (*(v52 + 48))(v53, 1, v51);
    v78 = v26;
    if (v61 == 1)
    {
      v62 = v53;
      v63 = MEMORY[0x277D84F90];
      sub_21B197E38(MEMORY[0x277D84F90]);
      sub_21B1CE9A8(v63);
      v64 = v84;
      sub_21B20CF88();

      sub_21B186488(v62, &qword_27CD6F890, &qword_21B215D30);
    }

    else
    {

      v64 = v84;
      (*(v52 + 32))(v84, v53, v51);
    }

    v65 = v88;
    if (!*(sub_21B20CFA8() + 16) || (sub_21B1B9778(v92, v65), (v66 & 1) == 0))
    {

      v67 = sub_21B20CF78();
      v68 = sub_21B20CF98();
      v90 = v38;
      v70 = v69;
      v71 = *v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = *v70;
      *v70 = 0x8000000000000000;
      sub_21B1BBC7C(v67, v92, v65, isUniquelyReferenced_nonNull_native);

      v73 = *v70;
      *v70 = v94;

      v68(v96, 0);
      v74 = v79;
      (*(v52 + 16))(v79, v64, v51);
      (v86)(v74, 0, 1, v51);
      v75 = sub_21B20D068();
      sub_21B1DF9E0(v74, v77, v89);
      v75(v96, 0);
      (*(v52 + 8))(v64, v51);
      __swift_destroy_boxed_opaque_existential_1(v97);
      result = (v93)(v78, v90);
      *v91 = 1;
      return result;
    }

    (*(v52 + 8))(v64, v51);
    __swift_destroy_boxed_opaque_existential_1(v97);
    v93(v78, v38);
  }

  else
  {
    v93(v26, v22);
  }

LABEL_11:
  *v91 = v90;
  return result;
}

unint64_t sub_21B1CE8F8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_21B20DC78();

  return sub_21B1CE93C(a1, v4);
}

unint64_t sub_21B1CE93C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B1CE9A8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD6F9B0, qword_21B216440);
  v3 = sub_21B20D808();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_21B1CE8F8(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_21B17CEA8(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_21B1CE8F8(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1CEAB4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F9A8, &qword_21B216438);
  v12 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v14 = &v30 - v13;
  v42 = a1;
  v15 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;
  v38 = a2;

  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v40 = a1;
      v39 = v9;
      v22 = v21;
LABEL_9:
      v23 = __clz(__rbit64(v18)) | (v22 << 6);
      v24 = *(v38 + 56);
      v25 = (*(v38 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = sub_21B20D018();
      (*(*(v28 - 8) + 16))(&v14[*(v31 + 48)], v24 + *(*(v28 - 8) + 72) * v23, v28);
      *v14 = v26;
      *(v14 + 1) = v27;

      v29 = v39;
      sub_21B1CDF40(&v42, v14, v34, v35, v36, v37, &v41);
      v9 = v29;
      if (v29)
      {
        break;
      }

      v18 &= v18 - 1;
      result = sub_21B186488(v14, &qword_27CD6F9A8, &qword_21B216438);
      a1 = v41;
      v42 = v41;
      v21 = v22;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    sub_21B186488(v14, &qword_27CD6F9A8, &qword_21B216438);

    LOBYTE(a1) = v40;
    return a1 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        return a1 & 1;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        v40 = a1;
        v39 = v9;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B1CECE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F9A8, &qword_21B216438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1CED58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F890, &qword_21B215D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MessageManifestProviding<>.makeMessageRelatedManifest()@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = *(a1 + 8);
  sub_21B20D138();
  v5 = sub_21B20D0C8();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t static MessageToColumnMapping<>.makeDefaultColumns(with:)()
{
  swift_getAssociatedTypeWitness();
  return sub_21B20C9F8();
}

{
  swift_getAssociatedTypeWitness();
  return sub_21B20C9B8();
}

uint64_t MessageToColumnMapping<>.getValue(forColumnIndex:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B1CF0F8(a1, a2, a3, a4, a5, MEMORY[0x277D3E630]);
}

{
  return sub_21B1CF0F8(a1, a2, a3, a4, a5, MEMORY[0x277D3E620]);
}

uint64_t sub_21B1CF0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v17 = a6;
  v16 = a5;
  v9 = sub_21B20CF68();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 24))(a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17(a1, v13, AssociatedTypeWitness, v16);
  return (*(v10 + 8))(v13, v9);
}

id sub_21B1CF328()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = v0;
    v4 = (*(*(v0 + 40) + 16))(*(v0 + 16), *(v0 + 24), **(v0 + 32));
    v5 = *(v0 + 48);
    *(v3 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_21B1CF468@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;

  sub_21B20D6A8();
  v13 = v10;
  MEMORY[0x21CEEBBB0](0xD000000000000018, 0x800000021B20FD00);
  MEMORY[0x21CEEBBB0](v3, v4);
  MEMORY[0x21CEEBBB0](572537383, 0xE400000000000000);
  v11 = *(v1 + 56);
  v12 = *(v1 + 72);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](34, 0xE100000000000000);
  v5 = *(v1 + 32);
  v6 = sub_21B20C948();
  v7 = *(type metadata accessor for DataSourceModel() + 32);
  v8 = sub_21B20D0C8();
  result = (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v13;
  *(a1 + 32) = 1;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_21B1CF5CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_21B1BDE44();

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

uint64_t sub_21B1CF668@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 72);
  *a1 = *(*v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v3 | 0x8000000000000000;
  *(a1 + 40) = 0;
  return sub_21B1BDBF0();
}

uint64_t sub_21B1CF68C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);
}

__n128 sub_21B1CF6DC(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  _s12TableFactoryCMa();
  v12 = swift_allocObject();
  v13 = a3[1].n128_u8[0];
  *(v12 + 40) = a7;
  *(v12 + 48) = 0;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  result = *a3;
  *(v12 + 56) = *a3;
  *(v12 + 72) = v13;
  *(v12 + 32) = a4;
  return result;
}

void BiomeTableConfig.init(tableName:schemaProvider:publisherFactory:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *a5;
  v12 = *(a5 + 8);
  v13 = *(a5 + 16);
  v14 = _s12TableFactoryCMa();
  v16.n128_u64[0] = v11;
  v16.n128_u64[1] = v12;
  v17 = v13;
  sub_21B1CF6DC(a1, a2, &v16, a3, v14, *a3, *(a4 + 8));
  a6[3] = v14;
  a6[4] = &off_282CA2DE0;
  *a6 = v15;
}

uint64_t RawPayload.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks10RawPayload_data);
  sub_21B17CEA8(v1, *(v0 + OBJC_IVAR____TtC12PoirotBlocks10RawPayload_data + 8));
  return v1;
}

id static RawPayload.event(with:dataVersion:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12PoirotBlocks10RawPayload_dataVersion] = 1;
  v6 = &v5[OBJC_IVAR____TtC12PoirotBlocks10RawPayload_data];
  *v6 = a1;
  v6[1] = a2;
  sub_21B17CEA8(a1, a2);
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id RawPayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RawPayload.__allocating_init(jsonDictionary:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(v0);
  v2 = sub_21B20D258();

  v8[0] = 0;
  v3 = [v1 initWithJSONDictionary:v2 error:v8];

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_21B20C508();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

id RawPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B1CFC84(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x3233746E69;
    v6 = 0x3436746E69;
    if (a1 != 2)
    {
      v6 = 0x3436746E6975;
    }

    if (a1)
    {
      v5 = 0x3233746E6975;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1819242338;
    v2 = 0x676E69727473;
    if (a1 != 7)
    {
      v2 = 1635017060;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x74616F6C66;
    if (a1 != 4)
    {
      v3 = 0x656C62756F64;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21B1CFD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1D1254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1CFDA0(uint64_t a1)
{
  v2 = sub_21B1D0580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1CFDDC(uint64_t a1)
{
  v2 = sub_21B1D0580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnyDatasetValue.any.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v4);
  a1[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v4 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v4);
}

uint64_t AnyDatasetValue.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B19DB00(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21B17C284(v9, v12);
    return sub_21B17C284(v12, a2);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_21B1CFFB8(v9);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v5 = sub_21B20DD38();
    v7 = v6;
    sub_21B186430();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_21B1CFFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA40, &qword_21B216D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnyDatasetValue.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x277D3E338];
  a3[3] = MEMORY[0x277D837D0];
  a3[4] = v3;
  *a3 = result;
  a3[1] = a2;
  return result;
}

void AnyDatasetValue.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = MEMORY[0x277D3E350];
  *(a1 + 24) = MEMORY[0x277D839F8];
  *(a1 + 32) = v2;
  *a1 = a2;
}

uint64_t AnyDatasetValue.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D3E348];
  *(a2 + 24) = MEMORY[0x277D839B0];
  *(a2 + 32) = v2;
  *a2 = result;
  return result;
}

uint64_t AnyDatasetValue.init(integerLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D3E370];
  a2[3] = MEMORY[0x277D83B88];
  a2[4] = v2;
  *a2 = result;
  return result;
}

uint64_t AnyDatasetValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA48, &qword_21B216550);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1D0580();
  sub_21B20DCD8();
  if (!v2)
  {
    v11 = sub_21B20D968();
    if (*(v11 + 16) == 1)
    {
      v12 = *(v11 + 32);

      if (v12 <= 3)
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v35 = 2;
            v23 = sub_21B20D938();
            v24 = MEMORY[0x277D84A28];
            v25 = MEMORY[0x277D3E388];
          }

          else
          {
            v35 = 3;
            v23 = sub_21B20D958();
            v24 = MEMORY[0x277D84D38];
            v25 = MEMORY[0x277D3E398];
          }

          v31 = v24;
          v32 = v25;
          *&v30 = v23;
        }

        else
        {
          if (v12)
          {
            v35 = 1;
            v20 = sub_21B20D948();
            v21 = MEMORY[0x277D84CC0];
            v22 = MEMORY[0x277D3E390];
          }

          else
          {
            v35 = 0;
            v20 = sub_21B20D928();
            v21 = MEMORY[0x277D849A8];
            v22 = MEMORY[0x277D3E380];
          }

          v31 = v21;
          v32 = v22;
          LODWORD(v30) = v20;
        }
      }

      else if (v12 <= 5)
      {
        if (v12 == 4)
        {
          v35 = 4;
          sub_21B20D8F8();
          v31 = MEMORY[0x277D83A90];
          v32 = MEMORY[0x277D3E368];
          LODWORD(v30) = v26;
        }

        else
        {
          v35 = 5;
          sub_21B20D8E8();
          v31 = MEMORY[0x277D839F8];
          v32 = MEMORY[0x277D3E350];
          *&v30 = v28;
        }
      }

      else if (v12 == 6)
      {
        v35 = 6;
        v27 = sub_21B20D8D8();
        v31 = MEMORY[0x277D839B0];
        v32 = MEMORY[0x277D3E348];
        LOBYTE(v30) = v27 & 1;
      }

      else if (v12 == 7)
      {
        v35 = 7;
        v13 = sub_21B20D8C8();
        v31 = MEMORY[0x277D837D0];
        v32 = MEMORY[0x277D3E338];
        *&v30 = v13;
        *(&v30 + 1) = v14;
      }

      else
      {
        v35 = 8;
        v31 = MEMORY[0x277CC9318];
        v32 = sub_21B1D05D4();
        sub_21B17DCC8();
        sub_21B20D918();
      }

      (*(v6 + 8))(v9, v5);
      sub_21B17C284(&v30, v33);
      v29 = v33[1];
      *a2 = v33[0];
      *(a2 + 16) = v29;
      *(a2 + 32) = v34;
    }

    else
    {

      v15 = sub_21B20D6E8();
      swift_allocError();
      v17 = v16;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA58, &qword_21B2173D0) + 48);
      *v17 = &type metadata for AnyDatasetValue;
      sub_21B20D848();
      sub_21B20D6D8();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84160], v15);
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21B1D0580()
{
  result = qword_27CD6FA50;
  if (!qword_27CD6FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA50);
  }

  return result;
}

unint64_t sub_21B1D05D4()
{
  result = qword_27CD6FA60;
  if (!qword_27CD6FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA60);
  }

  return result;
}

uint64_t AnyDatasetValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA68, &qword_21B216558);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1D0580();
  sub_21B20DD08();
  sub_21B17FB4C(v2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
  if (swift_dynamicCast())
  {
    LOBYTE(v18) = 0;
    sub_21B20DA58();
LABEL_15:
    (*(v5 + 8))(v8, v4);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v18) = 1;
    sub_21B20DA78();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v18) = 2;
    sub_21B20DA68();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v18) = 3;
    sub_21B20DA88();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v18) = 4;
    sub_21B20DA18();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v18) = 5;
    sub_21B20DA08();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v18) = 6;
    sub_21B20D9F8();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v18) = 7;
    sub_21B20D9E8();
    (*(v5 + 8))(v8, v4);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  if (swift_dynamicCast())
  {
    v11 = v15;
    v12 = v16;
    v18 = v15;
    v19 = v16;
    v14[15] = 8;
    sub_21B17DBE4();
    sub_21B20DA48();
    (*(v5 + 8))(v8, v4);
    sub_21B17DAF8(v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_21B20D6A8();

  v18 = 0xD000000000000012;
  v19 = 0x800000021B20FEA0;
  sub_21B17FB4C(v2, &v15);
  __swift_project_boxed_opaque_existential_1(&v15, v17);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v13 = sub_21B20DD38();
  MEMORY[0x21CEEBBB0](v13);

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t static AnyDatasetValue.== infix(_:_:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_21B20CE18() & 1;
}

uint64_t sub_21B1D0B84(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_21B20CE18() & 1;
}

double sub_21B1D0BD4@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = MEMORY[0x277D3E350];
  *(a2 + 24) = MEMORY[0x277D839F8];
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

char *sub_21B1D0BF4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = MEMORY[0x277D3E348];
  *(a2 + 24) = MEMORY[0x277D839B0];
  *(a2 + 32) = v3;
  *a2 = v2;
  return result;
}

uint64_t *sub_21B1D0C14@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = MEMORY[0x277D3E370];
  a2[3] = MEMORY[0x277D83B88];
  a2[4] = v3;
  *a2 = v2;
  return result;
}

Swift::String __swiftcall AnyDatasetValue.toString()()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = sub_21B1D0C74(v2);
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_21B1D0C74(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B20CDF8();
  if (v11)
  {
    sub_21B17C284(&v10, v12);
    (*(v3 + 16))(v6, v1, a1);
    if (swift_dynamicCast())
    {
      v7 = v10;
      v8 = sub_21B20C6A8();
      sub_21B17DAF8(v7, *(&v7 + 1));
    }

    else
    {
      *&v10 = 0;
      *(&v10 + 1) = 0xE000000000000000;
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      sub_21B20DB08();
      v8 = v10;
    }

    (*(v3 + 8))(v6, a1);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_21B1CFFB8(&v10);
    return 0;
  }

  return v8;
}

uint64_t castAny(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B19DB00(a1, v12);
  sub_21B19DB00(v12, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_21B17C284(v8, v11);
    return sub_21B17C284(v11, a2);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_21B1CFFB8(v8);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    swift_getDynamicType();
    v4 = sub_21B20DD38();
    v6 = v5;
    sub_21B186430();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    *(v7 + 16) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }
}

unint64_t sub_21B1D0F34()
{
  result = qword_27CD6FA70;
  if (!qword_27CD6FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA70);
  }

  return result;
}

unint64_t sub_21B1D0F98()
{
  result = qword_27CD6FA78;
  if (!qword_27CD6FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyDatasetValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyDatasetValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B1D1150()
{
  result = qword_27CD6FA80;
  if (!qword_27CD6FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA80);
  }

  return result;
}

unint64_t sub_21B1D11A8()
{
  result = qword_27CD6FA88;
  if (!qword_27CD6FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA88);
  }

  return result;
}

unint64_t sub_21B1D1200()
{
  result = qword_27CD6FA90;
  if (!qword_27CD6FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA90);
  }

  return result;
}

uint64_t sub_21B1D1254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x3233746E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3436746E6975 && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_21B1D151C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_21B19734C(MEMORY[0x277D84F90]);
  }

  v5 = *v2;

  v7 = sub_21B1D3EC8(v6, a1, a2);

  v8 = v7[2];
  if (!v8)
  {

    sub_21B20D6A8();

    MEMORY[0x21CEEBBB0](a1, a2);
    v9 = 0xD00000000000001ALL;
    v12 = 0x800000021B20FEE0;
    sub_21B18722C();
    swift_allocError();
    v14 = 0;
LABEL_8:
    *v13 = v9;
    *(v13 + 8) = v12;
    *(v13 + 16) = v14;
    swift_willThrow();
    return v9;
  }

  if (v8 != 1)
  {
    sub_21B20D6A8();

    MEMORY[0x21CEEBBB0](a1, a2);
    MEMORY[0x21CEEBBB0](0x20646E756F460ALL, 0xE700000000000000);
    v15 = v7[2];

    v16 = sub_21B20DAB8();
    MEMORY[0x21CEEBBB0](v16);

    v9 = 0xD00000000000001DLL;
    v12 = 0x800000021B20FEC0;
    sub_21B18722C();
    swift_allocError();
    v14 = 1;
    goto LABEL_8;
  }

  v10 = v7[5];
  v9 = v7[6];

  return v9;
}

uint64_t Dataset.append(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *v1;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    result = sub_21B1D280C(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *v1 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_21B1D280C((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = (v5 + 24 * v8);
  v9[4] = v3;
  v9[5] = v2;
  v9[6] = v4;
  *v1 = v5;
  return result;
}

unint64_t Dataset.subscript.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = (*v2 + 24 * result);
  v4 = v3[5];
  v5 = v3[6];
  *a2 = v3[4];
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t Dataset.appending(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB90, &qword_21B2115B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B2110C0;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  *(inited + 48) = v6;

  result = sub_21B1D1DA0(inited);
  *a2 = v7;
  return result;
}

uint64_t Dataset.appending<A>(contentsOf:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA98, &qword_21B216888);
  sub_21B1D40D8(&qword_27CD6FAA0, &qword_27CD6FA98, &qword_21B216888);
  result = sub_21B20D568();
  *a1 = v5;
  return result;
}

uint64_t sub_21B1D1A20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = 0;
    v9 = (a3 + 48);
    v10 = MEMORY[0x277D84F90];
    v18 = *(a3 + 16);
    v19 = result;
    while (v8 < *(v5 + 16))
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      v22 = *(v9 - 2);
      *&v23 = v11;
      *(&v23 + 1) = v12;

      v13 = v7(&v22);
      if (v4)
      {

        goto LABEL_16;
      }

      if (v13)
      {
        v14 = v22;
        v21 = v23;
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v10;
        if ((result & 1) == 0)
        {
          result = sub_21B18FD38(0, *(v10 + 16) + 1, 1);
          v10 = v24;
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_21B18FD38((v15 > 1), v16 + 1, 1);
          v10 = v24;
        }

        *(v10 + 16) = v16 + 1;
        v17 = v10 + 24 * v16;
        *(v17 + 32) = v14;
        *(v17 + 40) = v21;
        v7 = v19;
        v5 = a3;
        v6 = v18;
      }

      else
      {
      }

      ++v8;
      v9 += 3;
      if (v6 == v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_16:

    return v10;
  }

  return result;
}

uint64_t Dataset.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;

  v9 = sub_21B1D3EC8(v8, a1, a2);

  *a3 = v9;
  return result;
}

uint64_t Dataset.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *v3;

  result = sub_21B1D1A20(a1, a2, v8);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Dataset.append<A>(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA98, &qword_21B216888);
  return sub_21B20D4A8();
}

uint64_t sub_21B1D1DA0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21B1D280C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21B1D1E98(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_21B1D280C(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_21B1C7598(v34, &v3[24 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v13 = *(v3 + 2);
    v14 = __OFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
LABEL_19:
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_45;
        }

        if (v17 >= ((v6 + 64) >> 6))
        {
          v20 = 0;
          goto LABEL_43;
        }

        v16 = *(v12 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_22;
        }
      }
    }

    *(v3 + 2) = v15;
  }

  if (result != v12)
  {
LABEL_13:
    result = sub_21B1868C8();
    *v1 = v3;
    return result;
  }

LABEL_16:
  v2 = *(v3 + 2);
  v12 = v34[1];
  v32 = v34[0];
  v6 = v34[2];
  v15 = v35;
  v16 = v36;
  if (!v36)
  {
    goto LABEL_19;
  }

  v17 = v35;
LABEL_22:
  v18 = (v16 - 1) & v16;
  v19 = (*(v32 + 56) + 24 * (__clz(__rbit64(v16)) | (v17 << 6)));
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];

  if (!v21)
  {
LABEL_43:
    sub_21B183364(v20, 0);
    goto LABEL_13;
  }

  v23 = (v6 + 64) >> 6;
  v33 = v17;
  while (1)
  {
    v24 = *(v3 + 3);
    v31 = v24 >> 1;
    if ((v24 >> 1) < v2 + 1)
    {
      v3 = sub_21B1D280C((v24 > 1), v2 + 1, 1, v3);
      v31 = *(v3 + 3) >> 1;
    }

    if (v2 < v31)
    {
      break;
    }

LABEL_24:
    *(v3 + 2) = v2;
    if (!v21)
    {
      goto LABEL_43;
    }
  }

  while (1)
  {

    result = sub_21B183364(v20, v21);
    v25 = &v3[24 * v2 + 32];
    *v25 = v20;
    v25[1] = v21;
    v25[2] = v22;
    ++v2;
    if (!v18)
    {
      break;
    }

    v26 = v33;
LABEL_35:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v29 = (*(v32 + 56) + 24 * (v28 | (v26 << 6)));
    v20 = *v29;
    v21 = v29[1];
    v22 = v29[2];

    if (v21)
    {
      v30 = v2 < v31;
    }

    else
    {
      v30 = 0;
    }

    if (!v30)
    {
      goto LABEL_24;
    }
  }

  v27 = v33;
  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v20 = 0;
      *(v3 + 2) = v2;
      goto LABEL_43;
    }

    v18 = *(v12 + 8 * v26);
    ++v27;
    if (v18)
    {
      v33 = v26;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_21B1D21C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21B1D2A60(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21B1D22F0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_21B20D7D8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_21B20D7D8();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_21B1D38F8(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21B1D2460(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_21B1D34D4(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

PoirotBlocks::Dataset __swiftcall Dataset.appending(contentsOf:)(PoirotBlocks::Dataset contentsOf)
{
  v3 = v1;
  v4 = *contentsOf.rows._rawValue;
  v6 = *v2;

  result.rows._rawValue = sub_21B1D1DA0(v4);
  *v3 = v6;
  return result;
}

Swift::Void __swiftcall Dataset.append(contentsOf:)(PoirotBlocks::Dataset contentsOf)
{
  v1 = *contentsOf.rows._rawValue;

  sub_21B1D1DA0(v2);
}

uint64_t sub_21B1D2674()
{
  v1 = sub_21B1D3998(*v0);

  return v1;
}

void *sub_21B1D26D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE60, &qword_21B212350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE68, &qword_21B212358);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D280C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB90, &qword_21B2115B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B1D292C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAB8, &qword_21B216960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAC0, &qword_21B216968);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D2A60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B1D2B80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAC8, &qword_21B216970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBC0, &qword_21B2115D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B1D2CC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE88, &qword_21B212378);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D2E10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF08, &qword_21B212400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D2F1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAF0, &qword_21B216998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D3044(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE20, &qword_21B212318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D31A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB08, &qword_21B2169A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21B1D32BC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB10, &qword_21B2169B0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_21B1D34D4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21B1D36B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAE0, &qword_21B216988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D37D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAD8, &qword_21B216980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21B1D38F8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_21B20D7D8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_21B20D6C8();
  *v1 = result;
  return result;
}

uint64_t sub_21B1D3998(uint64_t a1)
{
  v1 = *(a1 + 16);

  v3 = MEMORY[0x277D84F90];
  v4 = 0;
  if (v1)
  {
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (result + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      if (v4)
      {
        v10 = *(v6 - 1);

        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v12 = v3[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB90, &qword_21B2115B0);
        v15 = swift_allocObject();
        v16 = (_swift_stdlib_malloc_size(v15) - 32) / 24;
        v15[2] = v14;
        v15[3] = 2 * v16;
        v17 = v15 + 4;
        v18 = v3[3] >> 1;
        v5 = &v15[3 * v18 + 4];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (v3[2])
        {
          if (v15 != v3 || v17 >= &v3[3 * v18 + 4])
          {
            memmove(v17, v3 + 4, 24 * v18);
          }

          v3[2] = 0;
        }

        else
        {
        }

        v3 = v15;
        v11 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v11)
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }
      }

      *v5 = v7;
      v5[1] = v8;
      v5[2] = v9;
      v5 += 3;
      v6 += 3;
      --v1;
    }

    while (v1);
  }

  v21 = v3[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v11 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v11)
    {
      goto LABEL_28;
    }

    v3[2] = v23;
  }

  return v3;
}

uint64_t sub_21B1D3B60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21B20D7D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21B20D7D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21B1D40D8(&qword_27CD6FB20, &qword_27CD6FB18, &qword_21B2169B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB18, &qword_21B2169B8);
            v9 = sub_21B1BE360(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21B1D4090(0, &qword_27CD6EEE8, 0x277CF1B50);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1D3D14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21B20D7D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21B20D7D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21B1D40D8(&qword_27CD6FB00, &qword_27CD6FAF8, &qword_21B2169A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAF8, &qword_21B2169A0);
            v9 = sub_21B1BE3E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21B1D4090(0, qword_27CD6F6D8, 0x277CF1A80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1D3EC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(result + 16);
  v7 = result + 48;
  v21 = result + 48;
  v22 = MEMORY[0x277D84F90];
LABEL_2:
  v8 = (v7 + 24 * v5);
  while (1)
  {
    if (v6 == v5)
    {
      return v22;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_20;
    }

    v11 = *(v8 - 2);
    v10 = *(v8 - 1);
    v12 = *v8;
    if (v11 == a2 && v10 == a3)
    {
      v11 = a2;
LABEL_13:

      v16 = v22;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B18FD38(0, *(v22 + 16) + 1, 1);
        v16 = v22;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        result = sub_21B18FD38((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
        v16 = v22;
      }

      *(v16 + 16) = v19;
      v22 = v16;
      v20 = (v16 + 24 * v18);
      v20[4] = v11;
      v20[5] = v10;
      v20[6] = v12;
      v5 = v9;
      v7 = v21;
      goto LABEL_2;
    }

    v14 = *(v8 - 2);
    v15 = *(v8 - 1);
    result = sub_21B20DB28();
    ++v5;
    v8 += 3;
    if (result)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21B1D4090(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21B1D40D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*sub_21B1D4120(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B1D7F5C(v6, a2, a3);
  return sub_21B1D9C80;
}

uint64_t (*sub_21B1D41A8(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B1D8008(v6, a2, a3);
  return sub_21B1D4230;
}

uint64_t (*sub_21B1D4234(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B1D80B8(v6, a2, a3);
  return sub_21B1D9C80;
}

void sub_21B1D42BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_21B1D4308(uint64_t a1, uint64_t *a2)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE30, &qword_21B212328);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = (v33 - v6);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v33[1] = v2;
  v44 = MEMORY[0x277D84F90];
  sub_21B18FE38(0, v7, 0);
  v8 = v44;
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  result = sub_21B20D648();
  v12 = result;
  v13 = 0;
  v34 = a1 + 64;
  v35 = v7;
  v36 = a1;
  v37 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v42 = v13;
    v43 = v16;
    v17 = (*(a1 + 48) + 16 * v12);
    v18 = *v17;
    v19 = v17[1];
    v20 = v41;
    v21 = *(v40 + 48);
    v22 = v38;
    *v38 = v18;
    *(v22 + 8) = v19;
    v23 = *v20;
    swift_bridgeObjectRetain_n();
    sub_21B20CB48();
    v44 = v8;
    v25 = *(v8 + 16);
    v24 = *(v8 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_21B18FE38(v24 > 1, v25 + 1, 1);
      v8 = v44;
    }

    *(v8 + 16) = v25 + 1;
    result = sub_21B1D9B94(v22, v8 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, &qword_27CD6EE30, &qword_21B212328);
    a1 = v36;
    v9 = v37;
    v14 = 1 << *(v36 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v26 = *(v37 + 8 * v15);
    if ((v26 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(v36 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v12 & 0x3F));
    if (v27)
    {
      v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v15 << 6;
      v29 = v15 + 1;
      v30 = (v34 + 8 * v15);
      while (v29 < (v14 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_21B17C2EC(v12, v43, 0);
          v14 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_21B17C2EC(v12, v43, 0);
    }

LABEL_4:
    v13 = v42 + 1;
    v12 = v14;
    if (v42 + 1 == v35)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21B1D4610(uint64_t a1, uint64_t *a2)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE78, &qword_21B212368);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = (v33 - v6);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v33[1] = v2;
  v44 = MEMORY[0x277D84F90];
  sub_21B19008C(0, v7, 0);
  v8 = v44;
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  result = sub_21B20D648();
  v12 = result;
  v13 = 0;
  v34 = a1 + 64;
  v35 = v7;
  v36 = a1;
  v37 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v42 = v13;
    v43 = v16;
    v17 = (*(a1 + 48) + 16 * v12);
    v18 = *v17;
    v19 = v17[1];
    v20 = v41;
    v21 = *(v40 + 48);
    v22 = v38;
    *v38 = v18;
    *(v22 + 8) = v19;
    v23 = *v20;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
    sub_21B20CB48();
    v44 = v8;
    v25 = *(v8 + 16);
    v24 = *(v8 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_21B19008C(v24 > 1, v25 + 1, 1);
      v8 = v44;
    }

    *(v8 + 16) = v25 + 1;
    result = sub_21B1D9B94(v22, v8 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, &qword_27CD6EE78, &qword_21B212368);
    a1 = v36;
    v9 = v37;
    v14 = 1 << *(v36 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v26 = *(v37 + 8 * v15);
    if ((v26 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(v36 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v12 & 0x3F));
    if (v27)
    {
      v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v15 << 6;
      v29 = v15 + 1;
      v30 = (v34 + 8 * v15);
      while (v29 < (v14 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_21B17C2EC(v12, v43, 0);
          v14 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_21B17C2EC(v12, v43, 0);
    }

LABEL_4:
    v13 = v42 + 1;
    v12 = v14;
    if (v42 + 1 == v35)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_21B1D4928(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(sub_21B20CB98() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = MEMORY[0x277D84F90];
  v10 = *(v7 + 72);
  while (1)
  {
    a1(v18, v8);
    if (v3)
    {
      break;
    }

    if (*(&v18[0] + 1))
    {
      v15 = v18[0];
      v16 = v18[1];
      v17 = v18[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21B1D2B80(0, v9[2] + 1, 1, v9);
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_21B1D2B80((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      v13 = &v9[6 * v12];
      v13[3] = v16;
      v13[4] = v17;
      v13[2] = v15;
    }

    else
    {
      sub_21B186488(v18, &qword_27CD6EBB0, &qword_21B2115C8);
    }

    v8 += v10;
    if (!--v4)
    {
      return v9;
    }
  }

  return v9;
}

uint64_t sub_21B1D4AD4(void *a1, void *a2)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v4 = sub_21B1D0C74(v3);
  v6 = v5;
  v7 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  if (v4 == sub_21B1D0C74(v7) && v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_21B20DB28();
  }

  return v10 & 1;
}

uint64_t sub_21B1D4B98(void *a1, void *a2)
{
  v3 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v4 = sub_21B1D0C74(v3);
  v6 = v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  if (v4 == sub_21B1D0C74(v7) && v6 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = sub_21B20DB28();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_21B1D4C74(void *a1, void *a2)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v4 = sub_21B1D0C74(v3);
  v6 = v5;
  v7 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  if (v4 == sub_21B1D0C74(v7) && v6 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = sub_21B20DB28();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_21B1D4D4C(void *a1, void *a2)
{
  v3 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v4 = sub_21B1D0C74(v3);
  v6 = v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  if (v4 == sub_21B1D0C74(v7) && v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_21B20DB28();
  }

  return v10 & 1;
}

uint64_t sub_21B1D4E14()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return sub_21B1D0C74(v2);
}

uint64_t sub_21B1D4E54(void *a1, void *a2)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v4 = sub_21B1D0C74(v3);
  v6 = v5;
  v7 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  if (v4 == sub_21B1D0C74(v7) && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21B20DB28();
  }

  return v10 & 1;
}

uint64_t sub_21B1D4F40@<X0>(uint64_t a1@<X0>, int *a2@<X1>, void (*a3)(__int128 *__return_ptr, _OWORD *)@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a3;
  v90 = a4;
  v76[1] = a6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB28, &qword_21B2169C0);
  v9 = *(*(v87 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v87);
  v86 = (v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v85 = v76 - v12;
  v84 = sub_21B20CB98();
  v88 = *(v84 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x277D84FA0];
  v15 = *(a5 + 16);

  v16 = 0;
  v17 = 0;
  v18 = a5 + 48;
  v91 = a5 + 48;
  v92 = MEMORY[0x277D84F90];
LABEL_2:
  v19 = (v18 + 24 * v16);
  while (v15 != v16)
  {
    if (v16 >= v15)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_49;
    }

    v22 = *(v19 - 2);
    v21 = *(v19 - 1);
    v23 = *v19;
    if (v22 == a1 && v21 == a2)
    {
      v22 = a1;
LABEL_13:
      if (__OFADD__(v17++, 1))
      {
        goto LABEL_56;
      }

      swift_bridgeObjectRetain_n();
      sub_21B1D5E30(v23);
      v28 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_21B1D280C(0, *(v28 + 2) + 1, 1, v28);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      v92 = v28;
      if (v30 >= v29 >> 1)
      {
        v92 = sub_21B1D280C((v29 > 1), v30 + 1, 1, v92);
      }

      v31 = v92;
      *(v92 + 16) = v30 + 1;
      v32 = &v31[24 * v30];
      *(v32 + 4) = v22;
      *(v32 + 5) = v21;
      *(v32 + 6) = v23;
      v16 = v20;
      v18 = v91;
      goto LABEL_2;
    }

    v25 = *(v19 - 2);
    v26 = *(v19 - 1);
    ++v16;
    v19 += 3;
    if (sub_21B20DB28())
    {
      goto LABEL_13;
    }
  }

  v96 = v17;
  v33 = v95;
  a2 = 0;
  if (*(sub_21B1D4308(v95, &v96) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB30, &qword_21B2169C8);
    v34 = sub_21B20D808();
  }

  else
  {
    v34 = MEMORY[0x277D84F98];
  }

  v35 = v92;
  v94 = v34;

  sub_21B1D8F7C(v36, 1, &v94);
  v37 = v89;

  v38 = v94;
  v39 = *(v35 + 2);
  if (v39)
  {
    v40 = (v35 + 48);
    do
    {
      v42 = *(v40 - 1);
      v41 = *v40;
      v43 = *(v40 - 2);

      sub_21B1D94F0(v44, v43, v42, v41, &v94, v37);

      v40 += 3;
      --v39;
    }

    while (v39);
    v38 = v94;
  }

  v45 = *(v38 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v76[0] = v33;
    v93 = MEMORY[0x277D84F90];
    sub_21B18FDF4(0, v45, 0);
    v46 = v93;
    v47 = v38 + 64;
    v48 = -1 << *(v38 + 32);
    v49 = sub_21B20D648();
    v50 = 0;
    v51 = *(v38 + 36);
    v81 = v38;
    v82 = v88 + 32;
    v77 = v38 + 72;
    v78 = v45;
    v79 = v51;
    v80 = v38 + 64;
    while ((v49 & 0x8000000000000000) == 0 && v49 < 1 << *(v38 + 32))
    {
      if ((*(v47 + 8 * (v49 >> 6)) & (1 << v49)) == 0)
      {
        goto LABEL_51;
      }

      if (v51 != *(v38 + 36))
      {
        goto LABEL_52;
      }

      v91 = 1 << v49;
      v92 = v49 >> 6;
      v89 = v50;
      v90 = a2;
      a2 = v87;
      v55 = *(v87 + 48);
      v56 = *(v38 + 56);
      v57 = (*(v38 + 48) + 16 * v49);
      v58 = *v57;
      v59 = v57[1];
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F688, &unk_21B215610);
      v61 = v46;
      v62 = *(v60 - 8);
      v63 = v85;
      (*(v62 + 16))(&v85[v55], v56 + *(v62 + 72) * v49, v60);
      v64 = v86;
      *v86 = v58;
      *(v64 + 8) = v59;
      (*(v62 + 32))(v64 + a2[12], &v63[v55], v60);
      v46 = v61;

      v65 = v83;
      sub_21B20CB38();
      sub_21B186488(v64, &qword_27CD6FB28, &qword_21B2169C0);
      v93 = v61;
      v67 = v61[2];
      v66 = v61[3];
      if (v67 >= v66 >> 1)
      {
        sub_21B18FDF4(v66 > 1, v67 + 1, 1);
        v46 = v93;
      }

      v46[2] = v67 + 1;
      (*(v88 + 32))(v46 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v67, v65, v84);
      v38 = v81;
      v52 = 1 << *(v81 + 32);
      if (v49 >= v52)
      {
        goto LABEL_53;
      }

      v47 = v80;
      v68 = *(v80 + 8 * v92);
      if ((v68 & v91) == 0)
      {
        goto LABEL_54;
      }

      LODWORD(v51) = v79;
      if (v79 != *(v81 + 36))
      {
        goto LABEL_55;
      }

      v69 = v68 & (-2 << (v49 & 0x3F));
      if (v69)
      {
        v52 = __clz(__rbit64(v69)) | v49 & 0x7FFFFFFFFFFFFFC0;
        v53 = v89;
        a2 = v90;
        v54 = v78;
      }

      else
      {
        v70 = v92 << 6;
        v71 = (v92 + 1);
        v54 = v78;
        v72 = (v77 + 8 * v92);
        a2 = v90;
        while (v71 < (v52 + 63) >> 6)
        {
          v74 = *v72++;
          v73 = v74;
          v70 += 64;
          ++v71;
          if (v74)
          {
            sub_21B17C2EC(v49, v79, 0);
            v52 = __clz(__rbit64(v73)) + v70;
            goto LABEL_45;
          }
        }

        sub_21B17C2EC(v49, v79, 0);
LABEL_45:
        v53 = v89;
      }

      v50 = (v53 + 1);
      v49 = v52;
      if (v50 == v54)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_57;
  }

LABEL_46:
  v93 = v46;

  sub_21B1D66F8(&v93);
  if (!a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB38, &qword_21B2169D0);
    sub_21B1D97C0();
    sub_21B20CAD8();
  }

LABEL_57:

  __break(1u);
  return result;
}

uint64_t sub_21B1D56B8@<X0>(uint64_t a1@<X0>, int *a2@<X1>, void (*a3)(__int128 *__return_ptr, _OWORD *)@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a3;
  v90 = a4;
  v76[1] = a6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB70, &qword_21B216A00);
  v9 = *(*(v87 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v87);
  v86 = (v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v85 = v76 - v12;
  v84 = sub_21B20CB98();
  v88 = *(v84 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x277D84FA0];
  v15 = *(a5 + 16);

  v16 = 0;
  v17 = 0;
  v18 = a5 + 48;
  v91 = a5 + 48;
  v92 = MEMORY[0x277D84F90];
LABEL_2:
  v19 = (v18 + 24 * v16);
  while (v15 != v16)
  {
    if (v16 >= v15)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_49;
    }

    v22 = *(v19 - 2);
    v21 = *(v19 - 1);
    v23 = *v19;
    if (v22 == a1 && v21 == a2)
    {
      v22 = a1;
LABEL_13:
      if (__OFADD__(v17++, 1))
      {
        goto LABEL_56;
      }

      swift_bridgeObjectRetain_n();
      sub_21B1D5E30(v23);
      v28 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_21B1D280C(0, *(v28 + 2) + 1, 1, v28);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      v92 = v28;
      if (v30 >= v29 >> 1)
      {
        v92 = sub_21B1D280C((v29 > 1), v30 + 1, 1, v92);
      }

      v31 = v92;
      *(v92 + 16) = v30 + 1;
      v32 = &v31[24 * v30];
      *(v32 + 4) = v22;
      *(v32 + 5) = v21;
      *(v32 + 6) = v23;
      v16 = v20;
      v18 = v91;
      goto LABEL_2;
    }

    v25 = *(v19 - 2);
    v26 = *(v19 - 1);
    ++v16;
    v19 += 3;
    if (sub_21B20DB28())
    {
      goto LABEL_13;
    }
  }

  v96 = v17;
  v33 = v95;
  a2 = 0;
  if (*(sub_21B1D4610(v95, &v96) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB78, &qword_21B216A08);
    v34 = sub_21B20D808();
  }

  else
  {
    v34 = MEMORY[0x277D84F98];
  }

  v35 = v92;
  v94 = v34;

  sub_21B1DE7C0(v36, 1, &v94);
  v37 = v89;

  v38 = v94;
  v39 = *(v35 + 2);
  if (v39)
  {
    v40 = (v35 + 48);
    do
    {
      v42 = *(v40 - 1);
      v41 = *v40;
      v43 = *(v40 - 2);

      sub_21B1D98C4(v44, v43, v42, v41, &v94, v37);

      v40 += 3;
      --v39;
    }

    while (v39);
    v38 = v94;
  }

  v45 = *(v38 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v76[0] = v33;
    v93 = MEMORY[0x277D84F90];
    sub_21B18FDF4(0, v45, 0);
    v46 = v93;
    v47 = v38 + 64;
    v48 = -1 << *(v38 + 32);
    v49 = sub_21B20D648();
    v50 = 0;
    v51 = *(v38 + 36);
    v81 = v38;
    v82 = v88 + 32;
    v77 = v38 + 72;
    v78 = v45;
    v79 = v51;
    v80 = v38 + 64;
    while ((v49 & 0x8000000000000000) == 0 && v49 < 1 << *(v38 + 32))
    {
      if ((*(v47 + 8 * (v49 >> 6)) & (1 << v49)) == 0)
      {
        goto LABEL_51;
      }

      if (v51 != *(v38 + 36))
      {
        goto LABEL_52;
      }

      v91 = 1 << v49;
      v92 = v49 >> 6;
      v89 = v50;
      v90 = a2;
      a2 = v87;
      v55 = *(v87 + 48);
      v56 = *(v38 + 56);
      v57 = (*(v38 + 48) + 16 * v49);
      v58 = *v57;
      v59 = v57[1];
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
      v61 = v46;
      v62 = *(v60 - 8);
      v63 = v85;
      (*(v62 + 16))(&v85[v55], v56 + *(v62 + 72) * v49, v60);
      v64 = v86;
      *v86 = v58;
      *(v64 + 8) = v59;
      (*(v62 + 32))(v64 + a2[12], &v63[v55], v60);
      v46 = v61;

      v65 = v83;
      sub_21B20CB38();
      sub_21B186488(v64, &qword_27CD6FB70, &qword_21B216A00);
      v93 = v61;
      v67 = v61[2];
      v66 = v61[3];
      if (v67 >= v66 >> 1)
      {
        sub_21B18FDF4(v66 > 1, v67 + 1, 1);
        v46 = v93;
      }

      v46[2] = v67 + 1;
      (*(v88 + 32))(v46 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v67, v65, v84);
      v38 = v81;
      v52 = 1 << *(v81 + 32);
      if (v49 >= v52)
      {
        goto LABEL_53;
      }

      v47 = v80;
      v68 = *(v80 + 8 * v92);
      if ((v68 & v91) == 0)
      {
        goto LABEL_54;
      }

      LODWORD(v51) = v79;
      if (v79 != *(v81 + 36))
      {
        goto LABEL_55;
      }

      v69 = v68 & (-2 << (v49 & 0x3F));
      if (v69)
      {
        v52 = __clz(__rbit64(v69)) | v49 & 0x7FFFFFFFFFFFFFC0;
        v53 = v89;
        a2 = v90;
        v54 = v78;
      }

      else
      {
        v70 = v92 << 6;
        v71 = (v92 + 1);
        v54 = v78;
        v72 = (v77 + 8 * v92);
        a2 = v90;
        while (v71 < (v52 + 63) >> 6)
        {
          v74 = *v72++;
          v73 = v74;
          v70 += 64;
          ++v71;
          if (v74)
          {
            sub_21B17C2EC(v49, v79, 0);
            v52 = __clz(__rbit64(v73)) + v70;
            goto LABEL_45;
          }
        }

        sub_21B17C2EC(v49, v79, 0);
LABEL_45:
        v53 = v89;
      }

      v50 = (v53 + 1);
      v49 = v52;
      if (v50 == v54)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_57;
  }

LABEL_46:
  v93 = v46;

  sub_21B1D66F8(&v93);
  if (!a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB38, &qword_21B2169D0);
    sub_21B1D97C0();
    sub_21B20CAD8();
  }

LABEL_57:

  __break(1u);
  return result;
}

uint64_t sub_21B1D5E30(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_21B1B9C24(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t Dataset.append(_:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B20CAA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21B20CAB8();
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v12 = sub_21B1C5AB4(sub_21B1D61D8, v15);
  if (v3)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v14 = v12;
  (*(v8 + 8))(v11, v7);
  return sub_21B1D1DA0(v14);
}

uint64_t sub_21B1D6080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X8>)
{
  v11 = sub_21B20CAE8();
  v17[2] = a1;
  v12 = sub_21B1D4928(sub_21B1D98A8, v17, v11);

  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    if (v12[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBB8, &qword_21B2115D0);
      v14 = sub_21B20D808();
    }

    else
    {
      v14 = MEMORY[0x277D84F98];
    }

    v18 = v14;

    sub_21B1854A0(v15, 1, &v18);

    v16 = v18;

    return DatasetRow.init(name:_:)(a2, a3, v16, a5);
  }

  return result;
}

uint64_t sub_21B1D61FC@<X0>(uint64_t a1@<X8>)
{
  sub_21B20CB88();
  sub_21B20CA98();

  if (v16)
  {
    sub_21B17C304(&v15, v17);
    sub_21B19DB00(v17, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
    if (swift_dynamicCast())
    {
      sub_21B17C284(v12, &v15);
      *a1 = sub_21B20CB88();
      *(a1 + 8) = v2;
      v3 = v16;
      v4 = __swift_project_boxed_opaque_existential_1(&v15, v16);
      *(a1 + 40) = v3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 16));
      (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v6 = &v15;
    }

    else
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      sub_21B186488(v12, &qword_27CD6FA40, &qword_21B216D60);
      sub_21B20CB88();
      sub_21B20CA98();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB68, &qword_21B2169F8);
      v8 = sub_21B20D358();
      v10 = v9;
      sub_21B186430();
      swift_allocError();
      *v11 = v8;
      *(v11 + 8) = v10;
      *(v11 + 16) = 4;
      swift_willThrow();
      v6 = v17;
    }

    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    result = sub_21B186488(&v15, &qword_27CD6FB68, &qword_21B2169F8);
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t Dataset.appendReplacing(_:withName:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v7 = sub_21B20CAA8();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  result = MEMORY[0x28223BE20](v7);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = *(*v3 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v11 + 48;
    v35 = v12 - 1;
    v15 = MEMORY[0x277D84F90];
    v37 = v7;
    v38 = v4;
    v36 = v11 + 48;
    do
    {
      v39 = v15;
      v16 = (v14 + 24 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v16 - 2);
        v18 = *(v16 - 1);
        v20 = v19 == a2 && v18 == a3;
        if (!v20)
        {
          v21 = *v16;
          v22 = *(v16 - 2);
          v23 = *(v16 - 1);
          result = sub_21B20DB28();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v17;
        v16 += 3;
        if (v12 == v17)
        {
          v7 = v37;
          v4 = v38;
          v15 = v39;
          goto LABEL_20;
        }
      }

      v15 = v39;
      result = swift_isUniquelyReferenced_nonNull_native();
      v44 = v15;
      if ((result & 1) == 0)
      {
        result = sub_21B18FD38(0, *(v15 + 16) + 1, 1);
        v15 = v44;
      }

      v14 = v36;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v39 = v25 + 1;
        v34 = v25;
        result = sub_21B18FD38((v24 > 1), v25 + 1, 1);
        v26 = v39;
        v25 = v34;
        v14 = v36;
        v15 = v44;
      }

      v13 = v17 + 1;
      *(v15 + 16) = v26;
      v27 = (v15 + 24 * v25);
      v27[4] = v19;
      v27[5] = v18;
      v27[6] = v21;
      v20 = v35 == v17;
      v7 = v37;
      v4 = v38;
    }

    while (!v20);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_20:

  *v4 = v15;
  v28 = v40;
  v29 = v41;
  v30 = sub_21B20CAB8();
  MEMORY[0x28223BE20](v30);
  *(&v34 - 4) = a2;
  *(&v34 - 3) = a3;
  *(&v34 - 2) = v28;
  v31 = v42;
  v32 = sub_21B1C5AB4(sub_21B1D9C68, (&v34 - 6));
  if (v31)
  {
    return (*(v43 + 8))(v29, v7);
  }

  v33 = v32;
  (*(v43 + 8))(v29, v7);
  return sub_21B1D1DA0(v33);
}

uint64_t sub_21B1D66F8(void **a1)
{
  v2 = *(sub_21B20CB98() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21B1858D0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21B1D67A0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21B1D67A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_21B20DAA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21B20CB98();
        v6 = sub_21B20D488();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21B20CB98() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21B1D6BD8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21B1D68CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B1D68CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21B20CB98();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_21B20CB88();
      v28 = v27;
      if (v26 == sub_21B20CB88() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_21B20DB28();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B1D6BD8(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_21B20CB98();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_21B1D7794(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_21B185388(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_21B1852FC(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_21B185388(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_21B20CB88();
      v38 = v37;
      v39 = sub_21B20CB88();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_21B20DB28();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_21B20CB88();
        v53 = v52;
        if (v51 == sub_21B20CB88() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_21B20DB28();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B18539C(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_21B18539C((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_21B1D7794(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_21B185388(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_21B1852FC(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_21B20CB88();
    v70 = v69;
    if (v5 == sub_21B20CB88() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_21B20DB28();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_21B1D7794(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_21B20CB98();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_21B20CB88();
            v53 = v52;
            if (v51 != sub_21B20CB88())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_21B20DB28();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_21B20CB88();
        v33 = v32;
        if (v31 == sub_21B20CB88() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_21B20DB28();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_21B1D7E74(&v75, &v74, &v73, MEMORY[0x277CE1950]);
  return 1;
}

uint64_t sub_21B1D7E74(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t (*sub_21B1D7F5C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_21B1D8F20(v8);
  v8[9] = sub_21B1D81C4(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_21B1D9C84;
}

uint64_t (*sub_21B1D8008(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_21B1D8F48(v8);
  v8[9] = sub_21B1D8694(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_21B1D80B4;
}

uint64_t (*sub_21B1D80B8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_21B1D8F20(v8);
  v8[9] = sub_21B1D89B8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_21B1D9C84;
}

void sub_21B1D8164(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_21B1D81C4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for DatasetColumnDescription();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB58, &qword_21B2169E8) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_21B1B9778(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_21B1867B4(*(*v5 + 56) + *(v14 + 72) * v22, v19);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_21B1D848C;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_21B20398C();
      goto LABEL_16;
    }

    sub_21B2010D8(v25, a4 & 1);
    v29 = *v5;
    v30 = sub_21B1B9778(a2, a3);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      v11[11] = v30;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

void sub_21B1D848C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_21B18BFF8(v5, v6, &qword_27CD6FB58, &qword_21B2169E8);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_21B1867B4(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_21B1867B4(v13, v14);
        sub_21B204FFC(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_21B18BFF8(v5, v17, &qword_27CD6FB58, &qword_21B2169E8);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_21B1867B4(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_21B1867B4(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_21B186488(v9, &qword_27CD6FB58, &qword_21B2169E8);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_21B1D9854(*(v20 + 48) + 16 * v19);
    sub_21B1BADD8(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_21B186488(v23, &qword_27CD6FB58, &qword_21B2169E8);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_21B1D8694(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F688, &unk_21B215610);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB50, &qword_21B2169E0) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_21B1B9778(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        (*(v14 + 32))(v19, *(*v5 + 56) + *(v14 + 72) * v22, v12);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_21B1D897C;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_21B203BBC();
      goto LABEL_16;
    }

    sub_21B201414(v25, a4 & 1);
    v29 = *v5;
    v30 = sub_21B1B9778(a2, a3);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      v11[11] = v30;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

void (*sub_21B1D89B8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB60, &qword_21B2169F0) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_21B1B9778(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        (*(v14 + 32))(v19, *(*v5 + 56) + *(v14 + 72) * v22, v12);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_21B1D8CA0;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_21B204AF4();
      goto LABEL_16;
    }

    sub_21B202FA8(v25, a4 & 1);
    v29 = *v5;
    v30 = sub_21B1B9778(a2, a3);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      v11[11] = v30;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

void sub_21B1D8CDC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v10 = *a1;
  v11 = *(*a1 + 24);
  v12 = (*(*a1 + 32) + 48);
  v13 = *(*a1 + 80);
  if (a2)
  {
    v14 = v10[8];
    sub_21B18BFF8(v13, v14, a3, a4);
    v15 = (*v12)(v14, 1, v11);
    v16 = *(v10 + 96);
    v17 = v10[8];
    if (v15 != 1)
    {
      v18 = v10[2];
      v19 = *(v10[4] + 32);
      v19(v10[6], v17, v10[3]);
      v20 = *v18;
      v21 = v10[11];
      v22 = v10[6];
      if ((v16 & 1) == 0)
      {
LABEL_4:
        v23 = v10[5];
        v24 = v10[1];
        v36 = *v10;
        v19(v23, v22, v10[3]);
        a5(v21, v36, v24, v23, v20);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v25 = v10[9];
    sub_21B18BFF8(v13, v25, a3, a4);
    v26 = (*v12)(v25, 1, v11);
    v16 = *(v10 + 96);
    v17 = v10[9];
    if (v26 != 1)
    {
      v29 = v10[2];
      v19 = *(v10[4] + 32);
      v19(v10[7], v17, v10[3]);
      v20 = *v29;
      v21 = v10[11];
      v22 = v10[7];
      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v19(*(v20 + 56) + *(v10[4] + 72) * v21, v22, v10[3]);
      goto LABEL_10;
    }
  }

  sub_21B186488(v17, a3, a4);
  if (v16)
  {
    v27 = v10[11];
    v28 = *v10[2];
    sub_21B1D9854(*(v28 + 48) + 16 * v27);
    a6(v27, v28);
  }

LABEL_10:
  v30 = v10[9];
  v31 = v10[10];
  v33 = v10[7];
  v32 = v10[8];
  v35 = v10[5];
  v34 = v10[6];
  sub_21B186488(v31, a3, a4);
  free(v31);
  free(v30);
  free(v32);
  free(v33);
  free(v34);
  free(v35);

  free(v10);
}