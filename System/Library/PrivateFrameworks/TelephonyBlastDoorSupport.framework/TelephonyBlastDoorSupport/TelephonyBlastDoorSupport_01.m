uint64_t sub_26D1C5900(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x64692D707061;
    }

    else
    {
      v4 = 0x69766F72702D6469;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000726564;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1852076390;
    if (!*(a2 + 16))
    {
      goto LABEL_13;
    }
  }

  v6 = sub_26D1BDEEC(v4, v5);
  if (v7)
  {
    v8 = *(*(a2 + 56) + 8 * v6);

    return v8;
  }

LABEL_13:

  return 0;
}

uint64_t sub_26D1C59C8(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v4 = 0x544C5541464544) : (v4 = 0x524556524553), v5 = sub_26D1BDEEC(v4, v2), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);

    return v7;
  }

  else
  {

    return 0;
  }
}

void sub_26D1C5A6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26D1E5790(a1);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0x6574636172616863 && v7 == 0xEE00636974736972;
      if (v9 || (v10 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v11 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], v12 = v5, v13 = sub_26D22E964(), v5 = v12, (v13 & 1) != 0))
      {
        v14 = v5;
        sub_26D1C12A8(v14, a2);

        return;
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v16 = v8;
      *(v16 + 8) = v7;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      sub_26D1B7F48();
      v6 = swift_allocError();
      *v15 = xmmword_26D230440;
      *(v15 + 16) = 0;
      *(v15 + 24) = 1;
      swift_willThrow();
    }
  }

  v17 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {
    if (v22 == 7)
    {

      MEMORY[0x26D6B6C70]();

      sub_26D1B7F48();
      swift_allocError();
      *v18 = 0xD000000000000020;
      *(v18 + 8) = 0x800000026D23B070;
      *(v18 + 16) = v21;
      *(v18 + 24) = 7;
      swift_willThrow();

      return;
    }

    sub_26D1B7E60(v19, v20, v21, v22);
  }

  swift_willThrow();
}

void sub_26D1C5CD8(char a1, uint64_t a2)
{
  sub_26D1DFCC0(a1 & 1, a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0x6574636172616863 && v7 == 0xEE00636974736972;
      if (v9 || (v10 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v11 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], v12 = v5, v13 = sub_26D22E964(), v5 = v12, (v13 & 1) != 0))
      {
        v14 = v5;
        v15 = sub_26D1E1120();
        v16 = sub_26D1CBDF8(v15, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

        sub_26D1CC03C(v16);

        sub_26D22D5A4();

        return;
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v20 = v8;
      *(v20 + 8) = v7;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      if (a1)
      {
        v17 = 0x524556524553;
      }

      else
      {
        v17 = 0x544C5541464544;
      }

      if (a1)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v19 = v17;
      *(v19 + 8) = v18;
      *(v19 + 16) = 0;
      *(v19 + 24) = 1;
      swift_willThrow();
    }
  }

  v21 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (v28 != 7)
  {
    sub_26D1B7E60(v25, v26, v27, v28);
LABEL_27:

    swift_willThrow();
    return;
  }

  if (a1)
  {
    v22 = 0x524556524553;
  }

  else
  {
    v22 = 0x544C5541464544;
  }

  if (a1)
  {
    v23 = 0xE600000000000000;
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  MEMORY[0x26D6B6C70](v22, v23);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70]();

  sub_26D1B7F48();
  swift_allocError();
  *v24 = 0xD000000000000015;
  *(v24 + 8) = 0x800000026D23B050;
  *(v24 + 16) = v27;
  *(v24 + 24) = 7;
  swift_willThrow();
}

void sub_26D1C6094(uint64_t a1)
{
  sub_26D1E68AC(a1);
  v4 = v1;
  if (!v1)
  {
    if (v2)
    {
      v6 = *&v3[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v5 = *&v3[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v7 = v6 == 0x6574636172616863 && v5 == 0xEE00636974736972;
      if (v7 || (v8 = *&v3[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v9 = *&v3[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], v10 = v3, v11 = sub_26D22E964(), v3 = v10, (v11 & 1) != 0))
      {
        v12 = v3;
        sub_26D1EC370(v12);

        return;
      }

      sub_26D1B7F48();
      v4 = swift_allocError();
      *v14 = v6;
      *(v14 + 8) = v5;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      sub_26D1B7F48();
      v4 = swift_allocError();
      *v13 = xmmword_26D230450;
      *(v13 + 16) = 0;
      *(v13 + 24) = 1;
      swift_willThrow();
    }
  }

  v15 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {
    if (v20 == 7)
    {

      MEMORY[0x26D6B6C70]();

      sub_26D1B7F48();
      swift_allocError();
      *v16 = 0xD00000000000001FLL;
      *(v16 + 8) = 0x800000026D23B2A0;
      *(v16 + 16) = v19;
      *(v16 + 24) = 7;
      swift_willThrow();

      return;
    }

    sub_26D1B7E60(v17, v18, v19, v20);
  }

  swift_willThrow();
}

void sub_26D1C6300(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26D1E636C(a1);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0x6574636172616863 && v7 == 0xEE00636974736972;
      if (v9 || (v10 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v11 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], v12 = v5, v13 = sub_26D22E964(), v5 = v12, (v13 & 1) != 0))
      {
        v14 = v5;
        sub_26D1D9334(v14, a2);

        return;
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v16 = v8;
      *(v16 + 8) = v7;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      sub_26D1B7F48();
      v6 = swift_allocError();
      *v15 = xmmword_26D230460;
      *(v15 + 16) = 0;
      *(v15 + 24) = 1;
      swift_willThrow();
    }
  }

  v17 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {
    if (v22 == 7)
    {

      MEMORY[0x26D6B6C70]();

      sub_26D1B7F48();
      swift_allocError();
      *v18 = 0xD00000000000001CLL;
      *(v18 + 8) = 0x800000026D23B0A0;
      *(v18 + 16) = v21;
      *(v18 + 24) = 7;
      swift_willThrow();

      return;
    }

    sub_26D1B7E60(v19, v20, v21, v22);
  }

  swift_willThrow();
}

void sub_26D1C656C(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26D1D7E44(a1, a2);
  v7 = v3;
  if (!v3)
  {
    v9 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v8 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v10 = v9 == 0x6574636172616863 && v8 == 0xEE00636974736972;
    if (v10 || (v11 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v12 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], v13 = v6, v14 = sub_26D22E964(), v6 = v13, (v14 & 1) != 0))
    {
      v15 = v6;
      sub_26D1D7ED8(v15, a3);

      return;
    }

    sub_26D1B7F48();
    v7 = swift_allocError();
    *v16 = v9;
    *(v16 + 8) = v8;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    swift_willThrow();
  }

  v33 = v7;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_29;
  }

  if (v32 != 7)
  {
    sub_26D1B7E60(v29, v30, v31, v32);
LABEL_29:

    swift_willThrow();
    return;
  }

  v18 = 0xE600000000000000;
  v19 = 0x666552707041;
  v20 = 0xEE006F746F725074;
  v21 = 0x726F70736E617274;
  if (a1 != 5)
  {
    v21 = 0x6C61565F64697575;
    v20 = 0xEA00000000006575;
  }

  v22 = 0xE800000000000000;
  v23 = 0x656D614E72657355;
  if (a1 != 3)
  {
    v23 = 0x64775072657355;
    v22 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v21 = v23;
    v20 = v22;
  }

  v24 = 0xE800000000000000;
  v25 = 0x6570795468747541;
  if (a1 != 1)
  {
    v25 = 0x6D6C616552;
    v24 = 0xE500000000000000;
  }

  if (a1)
  {
    v19 = v25;
    v18 = v24;
  }

  if (a1 <= 2u)
  {
    v26 = v19;
  }

  else
  {
    v26 = v21;
  }

  if (a1 <= 2u)
  {
    v27 = v18;
  }

  else
  {
    v27 = v20;
  }

  MEMORY[0x26D6B6C70](v26, v27);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70]();

  sub_26D1B7F48();
  swift_allocError();
  *v28 = 0xD000000000000015;
  *(v28 + 8) = 0x800000026D23B050;
  *(v28 + 16) = v31;
  *(v28 + 24) = 7;
  swift_willThrow();
}

void sub_26D1C68BC(char a1, uint64_t a2)
{
  sub_26D1E75D0(a1, a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0x6574636172616863 && v7 == 0xEE00636974736972;
      if (v9 || (v10 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v11 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], v12 = v5, v13 = sub_26D22E964(), v5 = v12, (v13 & 1) != 0))
      {
        v14 = v5;
        sub_26D1C1EFC(v14);

        return;
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v19 = v8;
      *(v19 + 8) = v7;
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      v15 = sub_26D1D9FBC(a1);
      v17 = v16;
      sub_26D1B7F48();
      v6 = swift_allocError();
      *v18 = v15;
      *(v18 + 8) = v17;
      *(v18 + 16) = 0;
      *(v18 + 24) = 1;
      swift_willThrow();
    }
  }

  v20 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {
    if (v26 == 7)
    {

      v21 = sub_26D1D9FBC(a1);
      MEMORY[0x26D6B6C70](v21);

      MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

      MEMORY[0x26D6B6C70]();

      sub_26D1B7F48();
      swift_allocError();
      *v22 = 0xD000000000000015;
      *(v22 + 8) = 0x800000026D23B050;
      *(v22 + 16) = v25;
      *(v22 + 24) = 7;
      swift_willThrow();

      return;
    }

    sub_26D1B7E60(v23, v24, v25, v26);
  }

  swift_willThrow();
}

uint64_t sub_26D1C6B84(unint64_t a1, uint64_t a2)
{
  v5 = sub_26D22CCE4();
  v87 = *(v5 - 8);
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22D574();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  v17 = sub_26D1C59C8(a1 & 1, a2);
  if (v2)
  {
    return a1;
  }

  v76 = v16;
  v77 = v14;
  if (!v17)
  {
LABEL_34:
    if (a1)
    {
      v64 = 0x524556524553;
    }

    else
    {
      v64 = 0x544C5541464544;
    }

    if (a1)
    {
      a1 = 0xE600000000000000;
    }

    else
    {
      a1 = 0xE700000000000000;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v65 = v64;
    *(v65 + 8) = a1;
    *(v65 + 16) = 0;
    *(v65 + 24) = 1;
    swift_willThrow();
    return a1;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {

    goto LABEL_34;
  }

  v72 = v5;
  v82 = v8;
  v84 = 0;
  v93 = MEMORY[0x277D84F90];
  v19 = v17;
  sub_26D1E4904(0, v18, 0);
  v20 = 0;
  a1 = v93;
  v83 = v19;
  v75 = v19 + 32;
  v86 = xmmword_26D22F360;
  v88 = v10;
  v89 = v9;
  v74 = v18;
  v73 = (v10 + 32);
  while (1)
  {
    if (v20 >= *(v83 + 16))
    {
      goto LABEL_49;
    }

    v81 = a1;
    v21 = v75 + 24 * v20;
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
    v24 = &v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v25 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x6574636172616863 && *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xEE00636974736972;
    if (!v25 && (sub_26D22E964() & 1) == 0)
    {
      a1 = v22;

      v67 = *v24;
      v66 = *(v24 + 1);
      sub_26D1B7F48();
      swift_allocError();
      *v68 = v67;
      *(v68 + 8) = v66;
      *(v68 + 16) = 0;
      *(v68 + 24) = 0;
      swift_willThrow();

      goto LABEL_44;
    }

    v26 = v22;

    v80 = v26;
    v27 = v84;
    v28 = sub_26D1E1120();
    if (v27)
    {

      a1 = v80;

LABEL_44:

      return a1;
    }

    v78 = v20;
    v79 = v23;
    v84 = 0;
    v29 = MEMORY[0x277D84F98];
    v91 = *(v28 + 2);
    v92 = MEMORY[0x277D84F98];
    if (v91)
    {
      break;
    }

LABEL_28:

    v57 = v84;
    sub_26D1DB4B0(0, v29, v82);
    if (v57)
    {

      a1 = v80;

      goto LABEL_44;
    }

    sub_26D1CB948(1, v29);
    sub_26D1C76D8(2u, 0, v29);

    v58 = v77;
    sub_26D22D564();
    v84 = 0;
    v59 = v80;

    v60 = *v73;
    v61 = v76;
    (*v73)(v76, v58, v9);
    a1 = v81;
    v93 = v81;
    v63 = *(v81 + 16);
    v62 = *(v81 + 24);
    if (v63 >= v62 >> 1)
    {
      sub_26D1E4904(v62 > 1, v63 + 1, 1);
      a1 = v93;
    }

    v20 = v78 + 1;
    *(a1 + 16) = v63 + 1;
    v60((a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v63), v61, v9);
    if (v20 == v74)
    {
      goto LABEL_44;
    }
  }

  v30 = 0;
  v31 = (v28 + 48);
  v90 = v28;
  while (v30 < *(v28 + 2))
  {
    v33 = *(v31 - 2);
    v34 = *(v31 - 1);
    v35 = *v31;
    swift_bridgeObjectRetain_n();
    v36 = v35;
    v38 = sub_26D1BDEEC(v33, v34);
    v39 = v29[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_47;
    }

    v42 = v37;
    if (v29[3] < v41)
    {
      sub_26D1E31AC(v41, 1);
      v29 = v92;
      v43 = sub_26D1BDEEC(v33, v34);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_50;
      }

      v38 = v43;
    }

    if (v42)
    {

      v45 = v29[7];
      v46 = *(v45 + 8 * v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v45 + 8 * v38) = v46;
      v85 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = sub_26D22B9C4(0, *(v46 + 2) + 1, 1, v46);
        *(v45 + 8 * v38) = v46;
      }

      v49 = *(v46 + 2);
      v48 = *(v46 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v71 = v49 + 1;
        v51 = sub_26D22B9C4((v48 > 1), v49 + 1, 1, v46);
        v50 = v71;
        v46 = v51;
        *(v85 + 8 * v38) = v51;
      }

      v9 = v89;
      *(v46 + 2) = v50;
      v32 = &v46[24 * v49];
      *(v32 + 4) = v33;
      *(v32 + 5) = v34;
      *(v32 + 6) = v36;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07F0, &qword_26D230D00);
      v52 = swift_allocObject();
      *(v52 + 16) = v86;
      *(v52 + 32) = v33;
      *(v52 + 40) = v34;
      *(v52 + 48) = v36;
      v29[(v38 >> 6) + 8] |= 1 << v38;
      v53 = (v29[6] + 16 * v38);
      *v53 = v33;
      v53[1] = v34;
      *(v29[7] + 8 * v38) = v52;
      v54 = v29[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_48;
      }

      v29[2] = v56;
      v9 = v89;
    }

    ++v30;
    v31 += 3;
    v28 = v90;
    v10 = v88;
    if (v91 == v30)
    {
      goto LABEL_28;
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
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void sub_26D1C73A8(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1DE934(a1, a3);
  if (v4)
  {
    v10 = sub_26D1D9E4C(a1);
    MEMORY[0x26D6B6C70](v10);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v11 = 0x6D616E5B6D726170;
    *(v11 + 8) = 0xEB00000000273D65;
    *(v11 + 16) = v4;
    *(v11 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v12 = v9;
    sub_26D1C5478(1, a2 | 2, v12, &qword_2804E0890, &qword_26D230770, MEMORY[0x277CC9260], MEMORY[0x277CC9248], a4);
  }

  else
  {
    v13 = sub_26D22CCE4();
    (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_26D1C7558(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DE934(a1, a3);
  if (v3)
  {
    v8 = sub_26D1D9E4C(a1);
    MEMORY[0x26D6B6C70](v8);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v9 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v10 = 0x6D616E5B6D726170;
    *(v10 + 8) = 0xEB00000000273D65;
    *(v10 + 16) = v3;
    *(v10 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v12 = v7;
    v9 = sub_26D1C2B9C(1, a2 | 2u, v12);
  }

  else
  {
    return 2;
  }

  return v9;
}

uint64_t sub_26D1C76D8(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DEE5C(a1, a3);
  if (v3)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v8 = 0x64692D707061;
      }

      else
      {
        v8 = 0x69766F72702D6469;
      }

      if (a1 == 1)
      {
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xEB00000000726564;
      }
    }

    else
    {
      v9 = 0xE400000000000000;
      v8 = 1852076390;
    }

    MEMORY[0x26D6B6C70](v8, v9);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v13 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v11 = 0x6D616E5B6D726170;
    *(v11 + 8) = 0xEB00000000273D65;
    *(v11 + 16) = v3;
    *(v11 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v10 = v7;
    v13 = sub_26D1C2B9C(1, a2 | 2u, v10);
  }

  else
  {
    return 2;
  }

  return v13;
}

void sub_26D1C7860(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1DEF48(a1, a3);
  if (v4)
  {
    v10 = 0xEF746F6F524E4451;
    v11 = 0x466F666E69746F42;
    v12 = 0x800000026D23B220;
    v13 = 0xD000000000000018;
    v14 = 0xEE00656C62617369;
    v15 = 0x4479636176697250;
    if (a1 != 4)
    {
      v15 = 0x4D746F6274616843;
      v14 = 0xEE00686365546773;
    }

    if (a1 != 3)
    {
      v13 = v15;
      v12 = v14;
    }

    if (a1 != 1)
    {
      v11 = 0xD000000000000014;
      v10 = 0x800000026D23B240;
    }

    if (!a1)
    {
      v11 = 0xD000000000000010;
      v10 = 0x800000026D23B260;
    }

    if (a1 <= 2u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    if (a1 <= 2u)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v18 = 0x6D616E5B6D726170;
    *(v18 + 8) = 0xEB00000000273D65;
    *(v18 + 16) = v4;
    *(v18 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v19 = v9;
    sub_26D1C5478(1, a2 | 2, v19, &qword_2804E0890, &qword_26D230770, MEMORY[0x277CC9260], MEMORY[0x277CC9248], a4);
  }

  else
  {
    v20 = sub_26D22CCE4();
    (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
  }
}

uint64_t sub_26D1C7AF0(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DEF48(a1, a3);
  if (v3)
  {
    v8 = 0xEF746F6F524E4451;
    v9 = 0x466F666E69746F42;
    v10 = 0x800000026D23B220;
    v11 = 0xD000000000000018;
    v12 = 0xEE00656C62617369;
    v13 = 0x4479636176697250;
    if (a1 != 4)
    {
      v13 = 0x4D746F6274616843;
      v12 = 0xEE00686365546773;
    }

    if (a1 != 3)
    {
      v11 = v13;
      v10 = v12;
    }

    if (a1 != 1)
    {
      v9 = 0xD000000000000014;
      v8 = 0x800000026D23B240;
    }

    if (!a1)
    {
      v9 = 0xD000000000000010;
      v8 = 0x800000026D23B260;
    }

    if (a1 <= 2u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (a1 <= 2u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v16 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v17 = 0x6D616E5B6D726170;
    *(v17 + 8) = 0xEB00000000273D65;
    *(v17 + 16) = v3;
    *(v17 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v19 = v7;
    v16 = sub_26D1C2B9C(1, a2 | 2u, v19);
  }

  else
  {
    return 2;
  }

  return v16;
}

void sub_26D1C7D10(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1DEF48(a1, a3);
  if (v4)
  {
    v10 = 0xEF746F6F524E4451;
    v11 = 0x466F666E69746F42;
    v12 = 0x800000026D23B220;
    v13 = 0xD000000000000018;
    v14 = 0xEE00656C62617369;
    v15 = 0x4479636176697250;
    if (a1 != 4)
    {
      v15 = 0x4D746F6274616843;
      v14 = 0xEE00686365546773;
    }

    if (a1 != 3)
    {
      v13 = v15;
      v12 = v14;
    }

    if (a1 != 1)
    {
      v11 = 0xD000000000000014;
      v10 = 0x800000026D23B240;
    }

    if (!a1)
    {
      v11 = 0xD000000000000010;
      v10 = 0x800000026D23B260;
    }

    if (a1 <= 2u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    if (a1 <= 2u)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v18 = 0x6D616E5B6D726170;
    *(v18 + 8) = 0xEB00000000273D65;
    *(v18 + 16) = v4;
    *(v18 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v19 = v9;
    sub_26D1C2DB8(1, a2 | 2, v19, a4);
  }

  else
  {
    v20 = sub_26D22D584();
    (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
  }
}

uint64_t sub_26D1C7F68(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DF280(a1, a3);
  if (v3)
  {
    v8 = 0xED00007972697078;
    v9 = 0x456F666E49706163;
    v10 = 0xD00000000000001DLL;
    v11 = 0x800000026D23B120;
    v12 = 0x800000026D23B100;
    v13 = 0xD000000000000013;
    if (a1 != 4)
    {
      v13 = 0x44746C7561666564;
      v12 = 0xEB00000000637369;
    }

    if (a1 != 3)
    {
      v10 = v13;
      v11 = v12;
    }

    if (a1 != 1)
    {
      v9 = 0xD000000000000010;
      v8 = 0x800000026D23B140;
    }

    if (!a1)
    {
      v9 = 0xD00000000000001DLL;
      v8 = 0x800000026D23B160;
    }

    if (a1 <= 2u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    if (a1 <= 2u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v11;
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v16 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v17 = 0x6D616E5B6D726170;
    *(v17 + 8) = 0xEB00000000273D65;
    *(v17 + 16) = v3;
    *(v17 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v19 = v7;
    v16 = sub_26D1C2B9C(1, a2 | 2u, v19);
  }

  else
  {
    return 2;
  }

  return v16;
}

uint64_t sub_26D1C8174(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DF280(a1, a3);
  if (v3)
  {
    v8 = 0xED00007972697078;
    v9 = 0x456F666E49706163;
    v10 = 0xD00000000000001DLL;
    v11 = 0x800000026D23B120;
    v12 = 0x800000026D23B100;
    v13 = 0xD000000000000013;
    if (a1 != 4)
    {
      v13 = 0x44746C7561666564;
      v12 = 0xEB00000000637369;
    }

    if (a1 != 3)
    {
      v10 = v13;
      v11 = v12;
    }

    if (a1 != 1)
    {
      v9 = 0xD000000000000010;
      v8 = 0x800000026D23B140;
    }

    if (!a1)
    {
      v9 = 0xD00000000000001DLL;
      v8 = 0x800000026D23B160;
    }

    if (a1 <= 2u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    if (a1 <= 2u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v11;
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v16 = 0x6D616E5B6D726170;
    sub_26D1B7F48();
    swift_allocError();
    *v17 = 0x6D616E5B6D726170;
    *(v17 + 8) = 0xEB00000000273D65;
    *(v17 + 16) = v3;
    *(v17 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v18 = v7;
    v16 = sub_26D1C2CA4(1, a2 | 2u, v18);
  }

  else
  {
    return 0;
  }

  return v16;
}

void sub_26D1C838C(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1DF280(a1, a3);
  if (v4)
  {
    v10 = 0xED00007972697078;
    v11 = 0x456F666E49706163;
    v12 = 0xD00000000000001DLL;
    v13 = 0x800000026D23B120;
    v14 = 0x800000026D23B100;
    v15 = 0xD000000000000013;
    if (a1 != 4)
    {
      v15 = 0x44746C7561666564;
      v14 = 0xEB00000000637369;
    }

    if (a1 != 3)
    {
      v12 = v15;
      v13 = v14;
    }

    if (a1 != 1)
    {
      v11 = 0xD000000000000010;
      v10 = 0x800000026D23B140;
    }

    if (!a1)
    {
      v11 = 0xD00000000000001DLL;
      v10 = 0x800000026D23B160;
    }

    if (a1 <= 2u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v12;
    }

    if (a1 <= 2u)
    {
      v17 = v10;
    }

    else
    {
      v17 = v13;
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v18 = 0x6D616E5B6D726170;
    *(v18 + 8) = 0xEB00000000273D65;
    *(v18 + 16) = v4;
    *(v18 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v19 = v9;
    sub_26D1C30FC(1, a2 | 2, v19, a4);
  }

  else
  {
    v20 = sub_26D22D824();
    (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
  }
}

uint64_t sub_26D1C85D0(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DF3E8(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (a1 <= 3u)
    {
      v18 = 0xEA0000000000657ALL;
      v19 = 0x69536E7261577466;
      v20 = 0xEB00000000747065;
      v21 = 0x6363417475417466;
      if (a1 != 2)
      {
        v21 = 0x5343505454487466;
        v20 = 0xEB00000000495255;
      }

      if (a1)
      {
        v19 = 0x46657A695378614DLL;
        v18 = 0xED00007254656C69;
      }

      if (a1 <= 1u)
      {
        v15 = v19;
      }

      else
      {
        v15 = v21;
      }

      if (a1 <= 1u)
      {
        v16 = v18;
      }

      else
      {
        v16 = v20;
      }
    }

    else
    {
      v9 = 0xEB00000000647750;
      v10 = 0x5343505454487466;
      v11 = 0xEE006B6361626C6CLL;
      v12 = 0x6146505454487466;
      if (a1 != 7)
      {
        v12 = 0xD000000000000016;
        v11 = 0x800000026D23B280;
      }

      if (a1 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0x4C44505454487466;
      v14 = 0xEB00000000495255;
      if (a1 != 4)
      {
        v13 = 0x5343505454487466;
        v14 = 0xEC00000072657355;
      }

      if (a1 <= 5u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v10;
      }

      if (a1 <= 5u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v9;
      }
    }

    MEMORY[0x26D6B6C70](v15, v16);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0x6D616E5B6D726170;
    *(v22 + 8) = 0xEB00000000273D65;
    *(v22 + 16) = v3;
    *(v22 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v7;
    v8 = sub_26D1C2CA4(1, a2 | 2u, v17);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t sub_26D1C8878(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DF3E8(a1, a3);
  if (v3)
  {
    if (a1 <= 3u)
    {
      v17 = 0xEA0000000000657ALL;
      v18 = 0x69536E7261577466;
      v19 = 0xEB00000000747065;
      v20 = 0x6363417475417466;
      if (a1 != 2)
      {
        v20 = 0x5343505454487466;
        v19 = 0xEB00000000495255;
      }

      if (a1)
      {
        v18 = 0x46657A695378614DLL;
        v17 = 0xED00007254656C69;
      }

      if (a1 <= 1u)
      {
        v14 = v18;
      }

      else
      {
        v14 = v20;
      }

      if (a1 <= 1u)
      {
        v15 = v17;
      }

      else
      {
        v15 = v19;
      }
    }

    else
    {
      v8 = 0xEB00000000647750;
      v9 = 0x5343505454487466;
      v10 = 0xEE006B6361626C6CLL;
      v11 = 0x6146505454487466;
      if (a1 != 7)
      {
        v11 = 0xD000000000000016;
        v10 = 0x800000026D23B280;
      }

      if (a1 != 6)
      {
        v9 = v11;
        v8 = v10;
      }

      v12 = 0x4C44505454487466;
      v13 = 0xEB00000000495255;
      if (a1 != 4)
      {
        v12 = 0x5343505454487466;
        v13 = 0xEC00000072657355;
      }

      if (a1 <= 5u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v9;
      }

      if (a1 <= 5u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v23 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v21 = 0x6D616E5B6D726170;
    *(v21 + 8) = 0xEB00000000273D65;
    *(v21 + 16) = v3;
    *(v21 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v16 = v7;
    v23 = sub_26D1C2B9C(1, a2 | 2u, v16);
  }

  else
  {
    return 2;
  }

  return v23;
}

void sub_26D1C8B10(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1DF3E8(a1, a3);
  if (v4)
  {
    if (a1 <= 3u)
    {
      v19 = 0xEA0000000000657ALL;
      v20 = 0x69536E7261577466;
      v21 = 0xEB00000000747065;
      v22 = 0x6363417475417466;
      if (a1 != 2)
      {
        v22 = 0x5343505454487466;
        v21 = 0xEB00000000495255;
      }

      if (a1)
      {
        v20 = 0x46657A695378614DLL;
        v19 = 0xED00007254656C69;
      }

      if (a1 <= 1u)
      {
        v16 = v20;
      }

      else
      {
        v16 = v22;
      }

      if (a1 <= 1u)
      {
        v17 = v19;
      }

      else
      {
        v17 = v21;
      }
    }

    else
    {
      v10 = 0xEB00000000647750;
      v11 = 0x5343505454487466;
      v12 = 0xEE006B6361626C6CLL;
      v13 = 0x6146505454487466;
      if (a1 != 7)
      {
        v13 = 0xD000000000000016;
        v12 = 0x800000026D23B280;
      }

      if (a1 != 6)
      {
        v11 = v13;
        v10 = v12;
      }

      v14 = 0x4C44505454487466;
      v15 = 0xEB00000000495255;
      if (a1 != 4)
      {
        v14 = 0x5343505454487466;
        v15 = 0xEC00000072657355;
      }

      if (a1 <= 5u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v11;
      }

      if (a1 <= 5u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v10;
      }
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = 0x6D616E5B6D726170;
    *(v23 + 8) = 0xEB00000000273D65;
    *(v23 + 16) = v4;
    *(v23 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v18 = v9;
    sub_26D1C5478(1, a2 | 2, v18, &qword_2804E0890, &qword_26D230770, MEMORY[0x277CC9260], MEMORY[0x277CC9248], a4);
  }

  else
  {
    v24 = sub_26D22CCE4();
    (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }
}

uint64_t sub_26D1C8E18(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DF3E8(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (a1 <= 3u)
    {
      v18 = 0xEA0000000000657ALL;
      v19 = 0x69536E7261577466;
      v20 = 0xEB00000000747065;
      v21 = 0x6363417475417466;
      if (a1 != 2)
      {
        v21 = 0x5343505454487466;
        v20 = 0xEB00000000495255;
      }

      if (a1)
      {
        v19 = 0x46657A695378614DLL;
        v18 = 0xED00007254656C69;
      }

      if (a1 <= 1u)
      {
        v15 = v19;
      }

      else
      {
        v15 = v21;
      }

      if (a1 <= 1u)
      {
        v16 = v18;
      }

      else
      {
        v16 = v20;
      }
    }

    else
    {
      v9 = 0xEB00000000647750;
      v10 = 0x5343505454487466;
      v11 = 0xEE006B6361626C6CLL;
      v12 = 0x6146505454487466;
      if (a1 != 7)
      {
        v12 = 0xD000000000000016;
        v11 = 0x800000026D23B280;
      }

      if (a1 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0x4C44505454487466;
      v14 = 0xEB00000000495255;
      if (a1 != 4)
      {
        v13 = 0x5343505454487466;
        v14 = 0xEC00000072657355;
      }

      if (a1 <= 5u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v10;
      }

      if (a1 <= 5u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v9;
      }
    }

    MEMORY[0x26D6B6C70](v15, v16);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0x6D616E5B6D726170;
    *(v22 + 8) = 0xEB00000000273D65;
    *(v22 + 16) = v3;
    *(v22 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v7;
    v8 = sub_26D1C2A8C(1, a2 | 2u, v17);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t sub_26D1C90BC(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DF5E4(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (a1)
    {
      if (a1 == 1)
      {
        v9 = 0x766F686374697753;
      }

      else
      {
        v9 = 0x7265646F6C707865;
      }

      if (a1 == 1)
      {
        v10 = 0xEE00657A69537265;
      }

      else
      {
        v10 = 0xEC0000006972752DLL;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      v9 = 0x657A695378614DLL;
    }

    MEMORY[0x26D6B6C70](v9, v10);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v12 = 0x6D616E5B6D726170;
    *(v12 + 8) = 0xEB00000000273D65;
    *(v12 + 16) = v3;
    *(v12 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v11 = v7;
    v8 = sub_26D1C2CA4(1, a2 | 2u, v11);
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_26D1C926C(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1DF7A8(a1, a3);
  if (v4)
  {
    v10 = 0xEA00000000006666;
    v11 = 0x4F61746144736D6DLL;
    if (a1 != 2)
    {
      v11 = 0x61746144636E7973;
      v10 = 0xEB0000000066664FLL;
    }

    v12 = 0x800000026D23B2E0;
    if (a1)
    {
      v12 = 0x800000026D23B2C0;
    }

    if (a1 <= 1u)
    {
      v13 = 0xD000000000000013;
    }

    else
    {
      v13 = v11;
    }

    if (a1 <= 1u)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    MEMORY[0x26D6B6C70](v13, v14);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v15 = 0x6D616E5B6D726170;
    *(v15 + 8) = 0xEB00000000273D65;
    *(v15 + 16) = v4;
    *(v15 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v16 = v9;
    sub_26D1C3440(1, a2 | 2, v16, a4);
  }

  else
  {
    v17 = sub_26D22D934();
    (*(*(v17 - 8) + 56))(a4, 1, 1, v17);
  }
}

void sub_26D1C94E8(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, id)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  sub_26D1DF8C8(a1, a3);
  if (v6)
  {
    if (a1 <= 3u)
    {
      v23 = 0xEC000000676E696CLL;
      v24 = 0x6C616E6769537370;
      v25 = 0x6964654D54527370;
      v26 = 0xE900000000000061;
      if (a1 != 2)
      {
        v25 = 0xD000000000000013;
        v26 = 0x800000026D23B0E0;
      }

      if (a1)
      {
        v24 = 0x616964654D7370;
        v23 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        v20 = v24;
      }

      else
      {
        v20 = v25;
      }

      if (a1 <= 1u)
      {
        v21 = v23;
      }

      else
      {
        v21 = v26;
      }
    }

    else
    {
      v14 = 0xEE00676E696C6C61;
      v15 = 0x6E67695369666977;
      v16 = 0x6964654D69666977;
      v17 = 0xE900000000000061;
      if (a1 != 7)
      {
        v16 = 0x654D545269666977;
        v17 = 0xEB00000000616964;
      }

      if (a1 != 6)
      {
        v15 = v16;
        v14 = v17;
      }

      v18 = 0xEE00676E696D616FLL;
      v19 = 0x52616964654D7370;
      if (a1 != 4)
      {
        v19 = 0xD000000000000010;
        v18 = 0x800000026D23B0C0;
      }

      if (a1 <= 5u)
      {
        v20 = v19;
      }

      else
      {
        v20 = v15;
      }

      if (a1 <= 5u)
      {
        v21 = v18;
      }

      else
      {
        v21 = v14;
      }
    }

    MEMORY[0x26D6B6C70](v20, v21);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v27 = 0x6D616E5B6D726170;
    *(v27 + 8) = 0xEB00000000273D65;
    *(v27 + 16) = v6;
    *(v27 + 24) = 7;
    swift_willThrow();
  }

  else if (v12)
  {
    v22 = v13;
    a4(1, a2 | 2, v22);
  }

  else
  {
    v28 = a5(0);
    (*(*(v28 - 8) + 56))(a6, 1, 1, v28);
  }
}

uint64_t sub_26D1C98C4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (*(a2 + 16) && (v8 = sub_26D1BDEEC(0x4449707041, 0xE500000000000000), (v9 & 1) != 0) && (v10 = *(*(a2 + 56) + 8 * v8), v10[2]))
  {
    v11 = v10[5];
    v12 = v10[6];

    v13 = v12;
    sub_26D1C4ABC(1, a1 | 2, v13, a3);

    if (v4)
    {
      sub_26D1B7F48();
      swift_allocError();
      *v15 = 0xD000000000000012;
      *(v15 + 8) = 0x800000026D23B380;
      *(v15 + 16) = v4;
      *(v15 + 24) = 7;
      return swift_willThrow();
    }
  }

  else
  {
    v16 = sub_26D22D514();
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  return result;
}

uint64_t sub_26D1C9A0C(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DFFB0(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (a1 <= 3u)
    {
      v18 = 0xED000067734D656ELL;
      v19 = 0x6F6C61646E617453;
      v20 = 0x800000026D23B200;
      if (a1 == 2)
      {
        v21 = 0xD000000000000014;
      }

      else
      {
        v21 = 0xD000000000000013;
      }

      if (a1 != 2)
      {
        v20 = 0x800000026D23B1E0;
      }

      if (a1)
      {
        v19 = 1952540739;
        v18 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        v15 = v19;
      }

      else
      {
        v15 = v21;
      }

      if (a1 <= 1u)
      {
        v16 = v18;
      }

      else
      {
        v16 = v20;
      }
    }

    else
    {
      v9 = 0xEC00000072656673;
      v10 = 0x6E617254656C6946;
      v11 = 0xE700000000000000;
      v12 = 0x746F6274616843;
      if (a1 != 7)
      {
        v12 = 0xD00000000000001DLL;
        v11 = 0x800000026D23B180;
      }

      if (a1 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0x800000026D23B1C0;
      v14 = 0xD000000000000019;
      if (a1 != 4)
      {
        v14 = 0xD000000000000013;
        v13 = 0x800000026D23B1A0;
      }

      if (a1 <= 5u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      if (a1 <= 5u)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }
    }

    MEMORY[0x26D6B6C70](v15, v16);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0x6D616E5B6D726170;
    *(v22 + 8) = 0xEB00000000273D65;
    *(v22 + 16) = v3;
    *(v22 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v7;
    v8 = sub_26D1C2CA4(1, a2 | 2u, v17);
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_26D1C9C8C(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1DFFB0(a1, a3);
  if (v4)
  {
    if (a1 <= 3u)
    {
      v19 = 0xED000067734D656ELL;
      v20 = 0x6F6C61646E617453;
      v21 = 0x800000026D23B200;
      if (a1 == 2)
      {
        v22 = 0xD000000000000014;
      }

      else
      {
        v22 = 0xD000000000000013;
      }

      if (a1 != 2)
      {
        v21 = 0x800000026D23B1E0;
      }

      if (a1)
      {
        v20 = 1952540739;
        v19 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        v16 = v20;
      }

      else
      {
        v16 = v22;
      }

      if (a1 <= 1u)
      {
        v17 = v19;
      }

      else
      {
        v17 = v21;
      }
    }

    else
    {
      v10 = 0xEC00000072656673;
      v11 = 0x6E617254656C6946;
      v12 = 0xE700000000000000;
      v13 = 0x746F6274616843;
      if (a1 != 7)
      {
        v13 = 0xD00000000000001DLL;
        v12 = 0x800000026D23B180;
      }

      if (a1 != 6)
      {
        v11 = v13;
        v10 = v12;
      }

      v14 = 0x800000026D23B1C0;
      v15 = 0xD000000000000019;
      if (a1 != 4)
      {
        v15 = 0xD000000000000013;
        v14 = 0x800000026D23B1A0;
      }

      if (a1 <= 5u)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      if (a1 <= 5u)
      {
        v17 = v14;
      }

      else
      {
        v17 = v10;
      }
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = 0x6D616E5B6D726170;
    *(v23 + 8) = 0xEB00000000273D65;
    *(v23 + 16) = v4;
    *(v23 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v18 = v9;
    sub_26D1C4DF0(1, a2 | 2, v18, a4);
  }

  else
  {
    v24 = sub_26D22D6B4();
    (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }
}

uint64_t sub_26D1C9F34(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DFFB0(a1, a3);
  if (v3)
  {
    if (a1 <= 3u)
    {
      v17 = 0xED000067734D656ELL;
      v18 = 0x6F6C61646E617453;
      v19 = 0x800000026D23B200;
      if (a1 == 2)
      {
        v20 = 0xD000000000000014;
      }

      else
      {
        v20 = 0xD000000000000013;
      }

      if (a1 != 2)
      {
        v19 = 0x800000026D23B1E0;
      }

      if (a1)
      {
        v18 = 1952540739;
        v17 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        v14 = v18;
      }

      else
      {
        v14 = v20;
      }

      if (a1 <= 1u)
      {
        v15 = v17;
      }

      else
      {
        v15 = v19;
      }
    }

    else
    {
      v8 = 0xEC00000072656673;
      v9 = 0x6E617254656C6946;
      v10 = 0xE700000000000000;
      v11 = 0x746F6274616843;
      if (a1 != 7)
      {
        v11 = 0xD00000000000001DLL;
        v10 = 0x800000026D23B180;
      }

      if (a1 != 6)
      {
        v9 = v11;
        v8 = v10;
      }

      v12 = 0x800000026D23B1C0;
      v13 = 0xD000000000000019;
      if (a1 != 4)
      {
        v13 = 0xD000000000000013;
        v12 = 0x800000026D23B1A0;
      }

      if (a1 <= 5u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v9;
      }

      if (a1 <= 5u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v8;
      }
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v23 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v21 = 0x6D616E5B6D726170;
    *(v21 + 8) = 0xEB00000000273D65;
    *(v21 + 16) = v3;
    *(v21 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v16 = v7;
    v23 = sub_26D1C2B9C(1, a2 | 2u, v16);
  }

  else
  {
    return 2;
  }

  return v23;
}

uint64_t sub_26D1CA1A4(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1DFFB0(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (a1 <= 3u)
    {
      v18 = 0xED000067734D656ELL;
      v19 = 0x6F6C61646E617453;
      v20 = 0x800000026D23B200;
      if (a1 == 2)
      {
        v21 = 0xD000000000000014;
      }

      else
      {
        v21 = 0xD000000000000013;
      }

      if (a1 != 2)
      {
        v20 = 0x800000026D23B1E0;
      }

      if (a1)
      {
        v19 = 1952540739;
        v18 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        v15 = v19;
      }

      else
      {
        v15 = v21;
      }

      if (a1 <= 1u)
      {
        v16 = v18;
      }

      else
      {
        v16 = v20;
      }
    }

    else
    {
      v9 = 0xEC00000072656673;
      v10 = 0x6E617254656C6946;
      v11 = 0xE700000000000000;
      v12 = 0x746F6274616843;
      if (a1 != 7)
      {
        v12 = 0xD00000000000001DLL;
        v11 = 0x800000026D23B180;
      }

      if (a1 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0x800000026D23B1C0;
      v14 = 0xD000000000000019;
      if (a1 != 4)
      {
        v14 = 0xD000000000000013;
        v13 = 0x800000026D23B1A0;
      }

      if (a1 <= 5u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      if (a1 <= 5u)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }
    }

    MEMORY[0x26D6B6C70](v15, v16);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0x6D616E5B6D726170;
    *(v22 + 8) = 0xEB00000000273D65;
    *(v22 + 16) = v3;
    *(v22 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v7;
    v8 = sub_26D1C2A8C(1, a2 | 2u, v17);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t sub_26D1CA420(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1E019C(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (a1 <= 3u)
    {
      v18 = 0xE800000000000000;
      v19 = 0x6874754174616843;
      if (a1 != 2)
      {
        v19 = 0x61684370756F7247;
        v18 = 0xED00006874754174;
      }

      v20 = 0xD000000000000010;
      v21 = 0x800000026D23B360;
      if (a1)
      {
        v20 = 0xD00000000000001BLL;
        v21 = 0x800000026D23B340;
      }

      if (a1 <= 1u)
      {
        v15 = v20;
      }

      else
      {
        v15 = v19;
      }

      if (a1 <= 1u)
      {
        v16 = v21;
      }

      else
      {
        v16 = v18;
      }
    }

    else
    {
      v9 = 0xEE00687475416873;
      v10 = 0x7550636F6C6F6567;
      v11 = 0x800000026D23B300;
      v12 = 7632965;
      if (a1 == 7)
      {
        v12 = 0xD000000000000010;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      if (a1 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0xE600000000000000;
      v14 = 0xD000000000000011;
      if (a1 == 4)
      {
        v14 = 0x687475417466;
      }

      else
      {
        v13 = 0x800000026D23B320;
      }

      if (a1 <= 5u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      if (a1 <= 5u)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }
    }

    MEMORY[0x26D6B6C70](v15, v16);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0x6D616E5B6D726170;
    *(v22 + 8) = 0xEB00000000273D65;
    *(v22 + 16) = v3;
    *(v22 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v7;
    v8 = sub_26D1C2A8C(1, a2 | 2u, v17);
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_26D1CA694(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1E019C(a1, a3);
  if (v4)
  {
    if (a1 <= 3u)
    {
      v19 = 0xE800000000000000;
      v20 = 0x6874754174616843;
      if (a1 != 2)
      {
        v20 = 0x61684370756F7247;
        v19 = 0xED00006874754174;
      }

      v21 = 0xD000000000000010;
      v22 = 0x800000026D23B360;
      if (a1)
      {
        v21 = 0xD00000000000001BLL;
        v22 = 0x800000026D23B340;
      }

      if (a1 <= 1u)
      {
        v16 = v21;
      }

      else
      {
        v16 = v20;
      }

      if (a1 <= 1u)
      {
        v17 = v22;
      }

      else
      {
        v17 = v19;
      }
    }

    else
    {
      v10 = 0xEE00687475416873;
      v11 = 0x7550636F6C6F6567;
      v12 = 0x800000026D23B300;
      v13 = 7632965;
      if (a1 == 7)
      {
        v13 = 0xD000000000000010;
      }

      else
      {
        v12 = 0xE300000000000000;
      }

      if (a1 != 6)
      {
        v11 = v13;
        v10 = v12;
      }

      v14 = 0xE600000000000000;
      v15 = 0xD000000000000011;
      if (a1 == 4)
      {
        v15 = 0x687475417466;
      }

      else
      {
        v14 = 0x800000026D23B320;
      }

      if (a1 <= 5u)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      if (a1 <= 5u)
      {
        v17 = v14;
      }

      else
      {
        v17 = v10;
      }
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = 0x6D616E5B6D726170;
    *(v23 + 8) = 0xEB00000000273D65;
    *(v23 + 16) = v4;
    *(v23 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v18 = v9;
    sub_26D1C5134(1, a2 | 2, v18, a4);
  }

  else
  {
    v24 = sub_26D22D634();
    (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }
}

uint64_t sub_26D1CA934(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1E019C(a1, a3);
  if (v3)
  {
    if (a1 <= 3u)
    {
      v17 = 0xE800000000000000;
      v18 = 0x6874754174616843;
      if (a1 != 2)
      {
        v18 = 0x61684370756F7247;
        v17 = 0xED00006874754174;
      }

      v19 = 0xD000000000000010;
      v20 = 0x800000026D23B360;
      if (a1)
      {
        v19 = 0xD00000000000001BLL;
        v20 = 0x800000026D23B340;
      }

      if (a1 <= 1u)
      {
        v14 = v19;
      }

      else
      {
        v14 = v18;
      }

      if (a1 <= 1u)
      {
        v15 = v20;
      }

      else
      {
        v15 = v17;
      }
    }

    else
    {
      v8 = 0xEE00687475416873;
      v9 = 0x7550636F6C6F6567;
      v10 = 0x800000026D23B300;
      v11 = 7632965;
      if (a1 == 7)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v10 = 0xE300000000000000;
      }

      if (a1 != 6)
      {
        v9 = v11;
        v8 = v10;
      }

      v12 = 0xE600000000000000;
      v13 = 0xD000000000000011;
      if (a1 == 4)
      {
        v13 = 0x687475417466;
      }

      else
      {
        v12 = 0x800000026D23B320;
      }

      if (a1 <= 5u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v9;
      }

      if (a1 <= 5u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v8;
      }
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v23 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v21 = 0x6D616E5B6D726170;
    *(v21 + 8) = 0xEB00000000273D65;
    *(v21 + 16) = v3;
    *(v21 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v16 = v7;
    v23 = sub_26D1C2B9C(1, a2 | 2u, v16);
  }

  else
  {
    return 2;
  }

  return v23;
}

void sub_26D1CAB9C(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1E75B8(a1, a3);
  if (v4)
  {
    v10 = 0xE600000000000000;
    v11 = 0x666552707041;
    v12 = 0xEE006F746F725074;
    v13 = 0x726F70736E617274;
    if (a1 != 5)
    {
      v13 = 0x6C61565F64697575;
      v12 = 0xEA00000000006575;
    }

    v14 = 0xE800000000000000;
    v15 = 0x656D614E72657355;
    if (a1 != 3)
    {
      v15 = 0x64775072657355;
      v14 = 0xE700000000000000;
    }

    if (a1 <= 4u)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = 0xE800000000000000;
    v17 = 0x6570795468747541;
    if (a1 != 1)
    {
      v17 = 0x6D6C616552;
      v16 = 0xE500000000000000;
    }

    if (a1)
    {
      v11 = v17;
      v10 = v16;
    }

    if (a1 <= 2u)
    {
      v18 = v11;
    }

    else
    {
      v18 = v13;
    }

    if (a1 <= 2u)
    {
      v19 = v10;
    }

    else
    {
      v19 = v12;
    }

    MEMORY[0x26D6B6C70](v18, v19);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v20 = 0x6D616E5B6D726170;
    *(v20 + 8) = 0xEB00000000273D65;
    *(v20 + 16) = v4;
    *(v20 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v21 = v9;
    sub_26D1C5478(1, a2 | 2, v21, &qword_2804E0890, &qword_26D230770, MEMORY[0x277CC9260], MEMORY[0x277CC9248], a4);
  }

  else
  {
    v22 = sub_26D22CCE4();
    (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
  }
}

uint64_t sub_26D1CAE24(unsigned __int8 a1, char a2, uint64_t a3)
{
  sub_26D1E75B8(a1, a3);
  if (v3)
  {
    v8 = 0xE600000000000000;
    v9 = 0x666552707041;
    v10 = 0xEE006F746F725074;
    v11 = 0x726F70736E617274;
    if (a1 != 5)
    {
      v11 = 0x6C61565F64697575;
      v10 = 0xEA00000000006575;
    }

    v12 = 0xE800000000000000;
    v13 = 0x656D614E72657355;
    if (a1 != 3)
    {
      v13 = 0x64775072657355;
      v12 = 0xE700000000000000;
    }

    if (a1 <= 4u)
    {
      v11 = v13;
      v10 = v12;
    }

    v14 = 0xE800000000000000;
    v15 = 0x6570795468747541;
    if (a1 != 1)
    {
      v15 = 0x6D6C616552;
      v14 = 0xE500000000000000;
    }

    if (a1)
    {
      v9 = v15;
      v8 = v14;
    }

    if (a1 <= 2u)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    if (a1 <= 2u)
    {
      v17 = v8;
    }

    else
    {
      v17 = v10;
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v18 = 0x6D616E5B6D726170;
    sub_26D1B7F48();
    swift_allocError();
    *v19 = 0x6D616E5B6D726170;
    *(v19 + 8) = 0xEB00000000273D65;
    *(v19 + 16) = v3;
    *(v19 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v21 = v7;
    v18 = sub_26D1C2A8C(1, a2 | 2u, v21);
  }

  else
  {
    return 0;
  }

  return v18;
}

void sub_26D1CB048(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1E75B8(a1, a3);
  if (v4)
  {
    v10 = 0xE600000000000000;
    v11 = 0x666552707041;
    v12 = 0xEE006F746F725074;
    v13 = 0x726F70736E617274;
    if (a1 != 5)
    {
      v13 = 0x6C61565F64697575;
      v12 = 0xEA00000000006575;
    }

    v14 = 0xE800000000000000;
    v15 = 0x656D614E72657355;
    if (a1 != 3)
    {
      v15 = 0x64775072657355;
      v14 = 0xE700000000000000;
    }

    if (a1 <= 4u)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = 0xE800000000000000;
    v17 = 0x6570795468747541;
    if (a1 != 1)
    {
      v17 = 0x6D6C616552;
      v16 = 0xE500000000000000;
    }

    if (a1)
    {
      v11 = v17;
      v10 = v16;
    }

    if (a1 <= 2u)
    {
      v18 = v11;
    }

    else
    {
      v18 = v13;
    }

    if (a1 <= 2u)
    {
      v19 = v10;
    }

    else
    {
      v19 = v12;
    }

    MEMORY[0x26D6B6C70](v18, v19);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v20 = 0x6D616E5B6D726170;
    *(v20 + 8) = 0xEB00000000273D65;
    *(v20 + 16) = v4;
    *(v20 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v21 = v9;
    sub_26D1C5478(1, a2 | 2, v21, &qword_2804E0828, &qword_26D2304A0, MEMORY[0x277CC95F0], MEMORY[0x277CC95C8], a4);
  }

  else
  {
    v22 = sub_26D22CE74();
    (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
  }
}

void sub_26D1CB2D0(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26D1E75D0(a1, a3);
  if (v4)
  {
    v10 = sub_26D1D9FBC(a1);
    MEMORY[0x26D6B6C70](v10);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v11 = 0x6D616E5B6D726170;
    *(v11 + 8) = 0xEB00000000273D65;
    *(v11 + 16) = v4;
    *(v11 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v12 = v9;
    sub_26D1C4ABC(1, a2 | 2, v12, a4);
  }

  else
  {
    v13 = sub_26D22D514();
    (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_26D1CB488(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  a4(a1, a3);
  if (v5)
  {
    v11 = v5;
    v12 = a5(a1);
    MEMORY[0x26D6B6C70](v12);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v13 = 0x6D616E5B6D726170;
    *(v13 + 8) = 0xEB00000000273D65;
    *(v13 + 16) = v5;
    *(v13 + 24) = 7;
    swift_willThrow();
  }

  else if (v9)
  {
    v15 = v10;
    v11 = sub_26D1C2A8C(1, a2 | 2u, v15);
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t sub_26D1CB628(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  a4(a1, a3);
  if (v5)
  {
    v11 = v5;
    v12 = a5(a1);
    MEMORY[0x26D6B6C70](v12);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v13 = 0x6D616E5B6D726170;
    *(v13 + 8) = 0xEB00000000273D65;
    *(v13 + 16) = v5;
    *(v13 + 24) = 7;
    swift_willThrow();
  }

  else if (v9)
  {
    v14 = v10;
    v11 = sub_26D1C2CA4(1, a2 | 2u, v14);
  }

  else
  {
    return 0;
  }

  return v11;
}

void sub_26D1CB788(void *a1)
{
  v3 = sub_26D22D5B4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = a1;
  v6 = sub_26D1E25A8();
  if (!v1)
  {
    v7 = sub_26D1CBDF8(v6, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

    sub_26D1C5CD8(0, v7);
    sub_26D1C6B84(1uLL, v7);

    sub_26D22D864();
  }
}

size_t sub_26D1CB948(signed __int8 a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07C8, &qword_26D230178);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v38 - v7;
  v9 = sub_26D22D514();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26D1C5900(a1, a2);
  if (v2)
  {
    return v13;
  }

  v15 = v14;
  v45 = v8;
  if (!v14)
  {
LABEL_14:
    v33 = *&aFqdn[8 * a1];
    v34 = *&aIdProvi[8 * a1 + 8];
    sub_26D1B7F48();
    swift_allocError();
    *v35 = v33;
    *(v35 + 8) = v34;
    *(v35 + 16) = 0;
    *(v35 + 24) = 1;
    swift_willThrow();
    return v13;
  }

  v16 = *(v14 + 16);
  if (!v16)
  {

    goto LABEL_14;
  }

  v41 = v13;
  v38[1] = 0;
  v51 = MEMORY[0x277D84F90];
  result = sub_26D1E47E4(0, v16, 0);
  v18 = 0;
  v13 = v51;
  v42 = v10;
  v43 = (v10 + 48);
  v19 = (v15 + 48);
  v44 = v15;
  v39 = (v10 + 32);
  v40 = v16;
  while (v18 < *(v15 + 16))
  {
    v46 = v18;
    v48 = v13;
    v13 = *(v19 - 1);
    v20 = *(*v19 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
    v21 = *(v20 + 16);
    v22 = *v19;
    v47 = v13;

    if (!v21)
    {
      goto LABEL_16;
    }

    v23 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
    if ((v24 & 1) == 0)
    {

LABEL_16:

      sub_26D1B7F48();
      swift_allocError();
      *v36 = xmmword_26D230470;
      *(v36 + 16) = 0;
      *(v36 + 24) = 2;
      swift_willThrow();

LABEL_18:

      return v13;
    }

    v25 = (*(v20 + 56) + 16 * v23);
    v26 = *v25;
    v27 = v25[1];

    v49 = v26;
    v50 = v27;
    sub_26D1CC4AC(&qword_2804E0808, MEMORY[0x277CF2358]);
    swift_bridgeObjectRetain_n();
    v28 = v45;
    sub_26D22E554();
    if ((*v43)(v28, 1, v9) == 1)
    {

      sub_26D1B950C(v28, &qword_2804E07C8, &qword_26D230178);
      sub_26D1B7F48();
      swift_allocError();
      *v37 = v26;
      *(v37 + 8) = v27;
      *(v37 + 16) = 0;
      *(v37 + 24) = 3;
      swift_willThrow();

      goto LABEL_18;
    }

    swift_bridgeObjectRelease_n();

    v29 = *v39;
    v30 = v41;
    (*v39)(v41, v28, v9);
    v13 = v48;
    v51 = v48;
    v32 = *(v48 + 2);
    v31 = *(v48 + 3);
    if (v32 >= v31 >> 1)
    {
      sub_26D1E47E4(v31 > 1, v32 + 1, 1);
      v13 = v51;
    }

    v18 = v46 + 1;
    *(v13 + 2) = v32 + 1;
    result = v29(&v13[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32], v30, v9);
    v19 += 3;
    v15 = v44;
    if (v40 == v18)
    {

      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26D1CBDF8(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

size_t sub_26D1CC03C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07C8, &qword_26D230178);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v36 - v5;
  v6 = sub_26D22D514();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v10 = sub_26D1BDEEC(0x64692D707061, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(*(a1 + 56) + 8 * v10);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v36 = v1;
  v48 = MEMORY[0x277D84F90];

  result = sub_26D1E47E4(0, v13, 0);
  v16 = 0;
  v14 = v48;
  v39 = v12;
  v40 = (v42 + 48);
  v17 = (v12 + 48);
  v37 = (v42 + 32);
  v38 = v13;
  while (v16 < *(v12 + 16))
  {
    v45 = v16;
    v18 = v6;
    v19 = *(v17 - 1);
    v20 = *(*v17 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
    v21 = *(v20 + 16);
    v22 = *v17;

    if (!v21)
    {
      goto LABEL_16;
    }

    v23 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
    if ((v24 & 1) == 0)
    {

LABEL_16:

      sub_26D1B7F48();
      swift_allocError();
      *v34 = xmmword_26D230470;
      *(v34 + 16) = 0;
      *(v34 + 24) = 2;
      swift_willThrow();

LABEL_18:

      return v14;
    }

    v43 = v19;
    v44 = v14;
    v25 = v9;
    v26 = (*(v20 + 56) + 16 * v23);
    v27 = *v26;
    v14 = v26[1];

    v46 = v27;
    v47 = v14;
    sub_26D1CC4AC(&qword_2804E0808, MEMORY[0x277CF2358]);
    swift_bridgeObjectRetain_n();
    v28 = v41;
    v29 = v18;
    sub_26D22E554();
    if ((*v40)(v28, 1, v18) == 1)
    {

      sub_26D1B950C(v28, &qword_2804E07C8, &qword_26D230178);
      sub_26D1B7F48();
      swift_allocError();
      *v35 = v27;
      *(v35 + 8) = v14;
      *(v35 + 16) = 0;
      *(v35 + 24) = 3;
      swift_willThrow();

      goto LABEL_18;
    }

    swift_bridgeObjectRelease_n();

    v30 = *v37;
    v31 = v25;
    (*v37)(v25, v28, v29);
    v14 = v44;
    v48 = v44;
    v33 = *(v44 + 16);
    v32 = *(v44 + 24);
    v6 = v29;
    if (v33 >= v32 >> 1)
    {
      sub_26D1E47E4(v32 > 1, v33 + 1, 1);
      v14 = v48;
    }

    v16 = v45 + 1;
    *(v14 + 16) = v33 + 1;
    result = v30((v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v33), v31, v6);
    v17 += 3;
    v12 = v39;
    v9 = v31;
    if (v38 == v16)
    {

      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26D1CC4AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D1CC4F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v36 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A30, &qword_26D2306E0);
  v32 = *(v40 - 8);
  v4 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v40);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - v8;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v37 = a1;

  v15 = 0;
  v35 = v7;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = __clz(__rbit64(v12)) | (v16 << 6);
      v18 = *(v37 + 56);
      v19 = (*(v37 + 48) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      v22 = sub_26D22D1D4();
      v23 = *(v22 - 8);
      v24 = v18 + *(v23 + 72) * v17;
      v25 = v34;
      (*(v23 + 16))(&v34[*(v40 + 48)], v24, v22);
      *v25 = v21;
      v25[1] = v20;
      v26 = v35;
      sub_26D1D76D0(v25, v35, &qword_2804E0A30, &qword_26D2306E0);
      v27 = *v36;
      v28 = v36[1];
      v29 = v26[1];
      v38 = *v26;
      v39 = v29;

      MEMORY[0x26D6B6C70](46, 0xE100000000000000);
      LOBYTE(v27) = sub_26D1CE630();

      if (v27)
      {
        break;
      }

      v12 &= v12 - 1;
      result = sub_26D1B950C(v26, &qword_2804E0A30, &qword_26D2306E0);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v30 = v33;
    sub_26D1D76D0(v26, v33, &qword_2804E0A30, &qword_26D2306E0);
    return (*(v32 + 56))(v30, 0, 1, v40);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        return (*(v32 + 56))(v33, 1, 1, v40);
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26D1CC7EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_26D22D1D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

char *sub_26D1CC9C0(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A20, &qword_26D2306D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_26D22D174();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v29 = &v26 - v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v27 = v14;
  v30 = (v14 + 32);
  v31 = (v14 + 48);
  v17 = (a1 + 56);
  v35 = MEMORY[0x277D84F90];
  v26 = v13;
  v28 = a2;
  while (1)
  {
    v18 = *(v17 - 1);
    v19 = *v17;
    v32 = *(v17 - 3);
    v33 = v18;
    v34 = v19;

    sub_26D1CDB98(&v32, a2, v8);
    if (v2)
    {
      break;
    }

    if ((*v31)(v8, 1, v9) == 1)
    {
      sub_26D1B950C(v8, &qword_2804E0A20, &qword_26D2306D0);
    }

    else
    {
      v20 = v29;
      v21 = *v30;
      (*v30)(v29, v8, v9);
      v21(v13, v20, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_26D22BE38(0, *(v35 + 2) + 1, 1, v35);
      }

      v23 = *(v35 + 2);
      v22 = *(v35 + 3);
      if (v23 >= v22 >> 1)
      {
        v35 = sub_26D22BE38(v22 > 1, v23 + 1, 1, v35);
      }

      v24 = v35;
      *(v35 + 2) = v23 + 1;
      v13 = v26;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v26, v9);
      a2 = v28;
    }

    v17 += 4;
    if (!--v16)
    {
      return v35;
    }
  }

  return v35;
}

uint64_t sub_26D1CCCC0()
{
  v0 = sub_26D22E404();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D22E3F4();
  v5 = sub_26D22E3D4();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_2804E08E8 = v5;
    unk_2804E08F0 = v7;
  }

  return result;
}

uint64_t sub_26D1CCDC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0968, &qword_26D230628);
  __swift_allocate_value_buffer(v0, qword_2804E08F8);
  __swift_project_value_buffer(v0, qword_2804E08F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0990, &qword_26D230680);
  return sub_26D22CEB4();
}

uint64_t sub_26D1CCE54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A78, &qword_26D230710);
  __swift_allocate_value_buffer(v0, qword_2804E0910);
  __swift_project_value_buffer(v0, qword_2804E0910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A98, &qword_26D230768);
  return sub_26D22CEB4();
}

void CPIMMessageUnpacker.unpack(from:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CPIMMessageUnpacker.Error();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v19 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  sub_26D1BCB48(a1, a2);
  sub_26D1CD124(a1, a2, a3);
  if (v3)
  {
    v20 = v3;
    v17 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
    if (swift_dynamicCast())
    {

      sub_26D1CD52C(v16, v14);
      sub_26D1CD590(v14, v11);
      sub_26D22E2E4();
      sub_26D1D7614(&qword_2804E04E0, MEMORY[0x277CF30A0]);
      swift_allocError();
      sub_26D2029BC(v11, v18);
      swift_willThrow();
      sub_26D1CD5F4(v14);
    }

    else
    {

      swift_willThrow();
    }
  }
}

uint64_t type metadata accessor for CPIMMessageUnpacker.Error()
{
  result = qword_2804E0930;
  if (!qword_2804E0930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D1CD124@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v6 = sub_26D22D184();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D22D1E4();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataParser();
  inited = swift_initStackObject();
  v15 = 0;
  inited[2] = a1;
  inited[3] = a2;
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_7;
    }

    v15 = *(a1 + 16);
    v17 = *(a1 + 24);
  }

  else
  {
    if (!v16)
    {
      goto LABEL_7;
    }

    v15 = a1;
    v17 = a1 >> 32;
  }

  sub_26D1BCB48(a1, a2);
  if (v17 < v15)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  inited[4] = v15;
  if (qword_2804E0458 != -1)
  {
LABEL_18:
    swift_once();
  }

  v19 = qword_2804E08E8;
  v18 = unk_2804E08F0;
  v20 = sub_26D1D7B6C();
  if ((v22 & 1) != 0 || (v23 = sub_26D1BE908(v19, v18, v20, v21, 0, inited[2], inited[3]), !v24))
  {
    type metadata accessor for CPIMMessageUnpacker.Error();
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
    swift_allocError();
    *v28 = v10;
    v28[1] = 0x7320726564616548;
    v29 = 0xEE006E6F69746365;
    goto LABEL_14;
  }

  inited[4] = v25;
  v26 = sub_26D1D56B8(v23, v24);
  if (v3)
  {
LABEL_15:
    sub_26D1BCB9C(a1, a2);
    swift_setDeallocating();
    return sub_26D1BCB9C(inited[2], inited[3]);
  }

  v36[1] = v26;
  sub_26D1D7B6C();
  if (v27)
  {

    type metadata accessor for CPIMMessageUnpacker.Error();
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
    swift_allocError();
    *v28 = v10;
    v28[1] = 0x20746E65746E6F43;
    v29 = 0xEF6E6F6974636573;
LABEL_14:
    v28[2] = v29;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_15;
  }

  v31 = inited[2];
  v32 = inited[3];
  v33 = sub_26D22CD54();
  v35 = v34;
  sub_26D1BCB48(v33, v34);
  sub_26D1CF9A4(v33, v35, v9);
  sub_26D22D164();
  swift_setDeallocating();
  sub_26D1BCB9C(inited[2], inited[3]);
  sub_26D1BCB9C(v33, v35);
  sub_26D1BCB9C(a1, a2);
  return (*(v37 + 32))(v38, v13, v10);
}

uint64_t sub_26D1CD52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPIMMessageUnpacker.Error();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1CD590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPIMMessageUnpacker.Error();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1CD5F4(uint64_t a1)
{
  v2 = type metadata accessor for CPIMMessageUnpacker.Error();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26D1CD718()
{
  sub_26D1CD790();
  if (v0 <= 0x3F)
  {
    sub_26D1CD804();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26D1CD790()
{
  if (!qword_2804E0940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E0948, &qword_26D2305B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2804E0940);
    }
  }
}

void sub_26D1CD804()
{
  if (!qword_2804E0950)
  {
    sub_26D22D064();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E04D8, &unk_26D22F490);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2804E0950);
    }
  }
}

uint64_t sub_26D1CD890(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v4 = 0x2D746E65746E6F43;
  }

  if (v3)
  {
    v5 = 0xEC00000065707954;
  }

  else
  {
    v5 = 0x800000026D23A0B0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0x2D746E65746E6F43;
  }

  if (*a2)
  {
    v7 = 0x800000026D23A0B0;
  }

  else
  {
    v7 = 0xEC00000065707954;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1CD944()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1CD9D4()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1CDA50()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1CDADC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D22E854();

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

void sub_26D1CDB3C(unint64_t *a1@<X8>)
{
  v2 = 0x800000026D23A0B0;
  v3 = 0x2D746E65746E6F43;
  if (*v1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xEC00000065707954;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_26D1CDB98@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v114 = a3;
  v4 = sub_26D22D1D4();
  v118 = *(v4 - 8);
  v119 = v4;
  v5 = *(v118 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D22D024();
  v107 = *(v7 - 8);
  v108 = v7;
  v8 = *(v107 + 64);
  MEMORY[0x28223BE20](v7);
  v106 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A20, &qword_26D2306D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v116 = &v101 - v12;
  v13 = sub_26D22D174();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v109 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v111 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A28, &qword_26D2306D8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v101 - v21;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A30, &qword_26D2306E0);
  v23 = *(v123 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v123);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v101 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A38, &qword_26D2306E8);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v103 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v105 = &v101 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v115 = &v101 - v37;
  MEMORY[0x28223BE20](v36);
  v120 = &v101 - v38;
  v39 = *a1;
  v40 = a1[1];
  v42 = a1[2];
  v41 = a1[3];

  v43 = sub_26D1D4E58(v39, v40, v42);
  if (!v44)
  {
    return (*(v14 + 56))(v114, 1, 1, v13);
  }

  v47 = v43;
  v48 = v44;
  v102 = v13;
  v122[0] = v43;
  v122[1] = v44;
  v112 = v45;
  v113 = v46;
  v122[2] = v45;
  v122[3] = v46;
  v49 = *v117;

  v51 = v121;
  sub_26D1CC4F4(v50, v122, v22);
  v121 = v51;

  v52 = (*(v23 + 48))(v22, 1, v123);
  v110 = v14;
  if (v52 == 1)
  {
    sub_26D1B950C(v22, &qword_2804E0A28, &qword_26D2306D8);
    v53 = 1;
    v55 = v118;
    v54 = v119;
    v56 = v120;
  }

  else
  {
    sub_26D1D76D0(v22, v29, &qword_2804E0A30, &qword_26D2306E0);
    sub_26D1D7738(v29, v27, &qword_2804E0A30, &qword_26D2306E0);
    v59 = *v27;
    v58 = *(v27 + 1);
    v60 = *(v123 + 48);

    v61 = sub_26D22E464();

    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
      return result;
    }

    v55 = v118;
    v54 = v119;
    (*(v118 + 8))(&v27[v60], v119);
    v63 = sub_26D1D5088(v62, v47, v48);
    v65 = v64;
    v67 = v66;
    v69 = v68;

    v47 = MEMORY[0x26D6B6C10](v63, v65, v67, v69);
    v71 = v70;

    sub_26D1D76D0(v29, v27, &qword_2804E0A30, &qword_26D2306E0);
    v72 = *(v27 + 1);

    v56 = v120;
    (*(v55 + 32))(v120, &v27[*(v123 + 48)], v54);
    v53 = 0;
    v48 = v71;
  }

  v73 = *(v55 + 56);
  v73(v56, v53, 1, v54);
  v74 = v115;
  sub_26D1D7738(v56, v115, &qword_2804E0A38, &qword_26D2306E8);

  v75 = v113;

  v76 = v116;
  v77 = v121;
  sub_26D1CE78C(v47, v48, v112, v75, v74, v116);
  if (v77)
  {
    sub_26D1B950C(v56, &qword_2804E0A38, &qword_26D2306E8);
  }

  else
  {
    v123 = v48;
    v78 = v110;
    v79 = v102;
    if ((*(v110 + 48))(v76, 1, v102) == 1)
    {
      sub_26D1B950C(v56, &qword_2804E0A38, &qword_26D2306E8);
      sub_26D1B950C(v76, &qword_2804E0A20, &qword_26D2306D0);
      (*(v78 + 56))(v114, 1, 1, v79);
    }

    else
    {
      v80 = *(v78 + 32);
      v81 = v111;
      v116 = v80;
      (v80)(v111, v76, v79);
      v82 = v109;
      v83 = v110;
      (*(v110 + 16))(v109, v81, v79);
      if ((*(v83 + 88))(v82, v79) == *MEMORY[0x277CF1EA0])
      {
        v121 = 0;
        (*(v83 + 96))(v82, v79);
        v84 = v82;
        v85 = v106;
        v86 = v107;
        v87 = v108;
        (*(v107 + 32))(v106, v84, v108);
        v88 = sub_26D22CFF4();
        if (v89)
        {
          v112 = v88;
          v115 = v89;
          v90 = sub_26D22D1B4();
          MEMORY[0x28223BE20](v90);
          *(&v101 - 2) = v85;
          v91 = v105;
          v92 = v121;
          sub_26D1CC7EC(sub_26D1D76B0, v90, v105);
          v121 = v92;

          v94 = v118;
          v93 = v119;
          v95 = v85;
          if ((*(v118 + 48))(v91, 1, v119) == 1)
          {
            sub_26D1B950C(v120, &qword_2804E0A38, &qword_26D2306E8);
          }

          else
          {
            v96 = v104;
            (*(v94 + 32))(v104, v91, v93);
            v97 = v103;
            (*(v94 + 16))(v103, v96, v93);
            v73(v97, 0, 1, v93);
            sub_26D1CEF38(v97, v112, v115);
            (*(v94 + 8))(v96, v93);
            v91 = v120;
          }

          v99 = v107;
          v98 = v108;
          sub_26D1B950C(v91, &qword_2804E0A38, &qword_26D2306E8);
          (*(v99 + 8))(v95, v98);
          v79 = v102;
        }

        else
        {
          sub_26D1B950C(v120, &qword_2804E0A38, &qword_26D2306E8);
          (*(v86 + 8))(v85, v87);
        }

        v83 = v110;
      }

      else
      {
        sub_26D1B950C(v56, &qword_2804E0A38, &qword_26D2306E8);
        (*(v83 + 8))(v82, v79);
      }

      v100 = v114;
      (v116)(v114, v111, v79);
      (*(v83 + 56))(v100, 0, 1, v79);
    }
  }
}

uint64_t sub_26D1CE630()
{

  v0 = sub_26D22E4A4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_26D22E4A4();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_26D22E964();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_26D22E4A4();
      v3 = v5;
    }

    while (v5);
  }

  sub_26D22E4A4();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_26D1CE78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v65 = a3;
  v67 = a4;
  v63 = a1;
  v64 = a2;
  v62 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A20, &qword_26D2306D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v53 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v53 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A38, &qword_26D2306E8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v53 - v19;
  v21 = sub_26D22D1D4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v53 - v27;
  v29 = sub_26D22D174();
  v60 = *(v29 - 8);
  v61 = v29;
  v30 = *(v60 + 64);
  MEMORY[0x28223BE20](v29);
  v58 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D1D7738(a5, v20, &qword_2804E0A38, &qword_26D2306E8);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v37 = v28;
    v38 = v63;
    v39 = v64;
    v55 = a5;
    v40 = v65;
    v41 = v66;
    (*(v22 + 32))(v37, v20, v21);
    v42 = *(v22 + 16);
    v54 = v37;
    v42(v26, v37, v21);
    v43 = (*(v22 + 88))(v26, v21);
    if (v43 == *MEMORY[0x277CF1EE0])
    {
      v44 = v59;
      sub_26D1D0DBC(v39, v40, v67, v59);
      if (!v41)
      {
        sub_26D1B950C(v55, &qword_2804E0A38, &qword_26D2306E8);
        (*(v22 + 8))(v54, v21);
        v35 = v60;
        v34 = v61;
        if ((*(v60 + 48))(v44, 1, v61))
        {
          v36 = v44;
          goto LABEL_16;
        }

        v46 = v44;
LABEL_20:
        v49 = v62;
        v51 = *(v35 + 32);
        v52 = v58;
        v51(v58, v46, v34);
        v51(v49, v52, v34);
        v48 = 0;
        return (*(v35 + 56))(v49, v48, 1, v34);
      }

LABEL_11:
      v47 = v54;
      sub_26D1B950C(v55, &qword_2804E0A38, &qword_26D2306E8);
      return (*(v22 + 8))(v47, v21);
    }

    v45 = v39;
    if (v43 == *MEMORY[0x277CF1ED8])
    {
      v46 = v57;
      sub_26D1D1870(v38, v40, v57);
      if (v41)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v43 != *MEMORY[0x277CF1ED0])
      {

        sub_26D1B950C(v55, &qword_2804E0A38, &qword_26D2306E8);
        v50 = *(v22 + 8);
        v50(v54, v21);
        v50(v26, v21);
        v48 = 1;
        v34 = v61;
        v49 = v62;
        v35 = v60;
        return (*(v35 + 56))(v49, v48, 1, v34);
      }

      v46 = v56;
      sub_26D1D1B88(v38, v45, v40, v67, v56);
      if (v41)
      {
        goto LABEL_11;
      }
    }

    sub_26D1B950C(v55, &qword_2804E0A38, &qword_26D2306E8);
    (*(v22 + 8))(v54, v21);
    v35 = v60;
    v34 = v61;
    if ((*(v60 + 48))(v46, 1, v61))
    {
      v36 = v46;
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  sub_26D1B950C(v20, &qword_2804E0A38, &qword_26D2306E8);
  v32 = v66;
  sub_26D1D0074(v63, v64, v65, v67, v16);
  result = sub_26D1B950C(a5, &qword_2804E0A38, &qword_26D2306E8);
  if (v32)
  {
    return result;
  }

  v35 = v60;
  v34 = v61;
  if (!(*(v60 + 48))(v16, 1, v61))
  {
    v46 = v16;
    goto LABEL_20;
  }

  v36 = v16;
LABEL_16:
  sub_26D1B950C(v36, &qword_2804E0A20, &qword_26D2306D0);
  v48 = 1;
  v49 = v62;
  return (*(v35 + 56))(v49, v48, 1, v34);
}

uint64_t sub_26D1CEDF8()
{
  v0 = sub_26D22CCE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D22D004();
  v5 = sub_26D22CC64();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v5 == sub_26D22D1C4() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_26D22E964();
  }

  return v10 & 1;
}

uint64_t sub_26D1CEF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A38, &qword_26D2306E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_26D22D1D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_26D1B950C(a1, &qword_2804E0A38, &qword_26D2306E8);
    sub_26D1D4A64(a2, a3, v10);

    return sub_26D1B950C(v10, &qword_2804E0A38, &qword_26D2306E8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_26D203360(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_26D1CF110()
{
  sub_26D1B1F48();
  v0 = byte_287E99778;
  v1 = sub_26D22E6D4();

  if (v1 && (v0 = byte_287E99779, v2 = sub_26D22E6D4(), , v2))
  {

    return 2;
  }

  else
  {
  }

  return v0;
}

uint64_t sub_26D1CF24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v27 = a3;
  v3 = sub_26D22D064();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09B8, &qword_26D2306A8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v26 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v25 = &v24 - v12;
  sub_26D1D7614(&qword_2804E09F0, MEMORY[0x277CF1D40]);
  result = sub_26D22E764();
  v14 = v37;
  v15 = *(v37 + 16);
  if (v15)
  {
    v16 = 0;
    v28 = v4 + 16;
    while (v16 < *(v14 + 16))
    {
      (*(v4 + 16))(v7, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v3);
      sub_26D1D7614(&qword_2804E09F8, MEMORY[0x277CF1D40]);
      sub_26D22E544();
      v33 = v35;
      v34 = v36;
      v31 = v29;
      v32 = v30;
      sub_26D1B1F48();
      v17 = sub_26D22E6D4();

      if (!v17)
      {

        v19 = v25;
        (*(v4 + 32))(v25, v7, v3);
        v18 = 0;
        goto LABEL_8;
      }

      ++v16;
      result = (*(v4 + 8))(v7, v3);
      if (v15 == v16)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v18 = 1;
    v19 = v25;
LABEL_8:
    v20 = *(v4 + 56);
    v20(v19, v18, 1, v3);

    v21 = v26;
    sub_26D1D76D0(v19, v26, &qword_2804E09B8, &qword_26D2306A8);
    if ((*(v4 + 48))(v21, 1, v3) == 1)
    {
      sub_26D1B950C(v21, &qword_2804E09B8, &qword_26D2306A8);
      v22 = 1;
      v23 = v27;
    }

    else
    {
      v23 = v27;
      (*(v4 + 32))(v27, v21, v3);
      v22 = 0;
    }

    return (v20)(v23, v22, 1, v3);
  }

  return result;
}

uint64_t sub_26D1CF5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v27 = a3;
  v3 = sub_26D22D074();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0998, &qword_26D230688);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v26 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v25 = &v24 - v12;
  sub_26D1D7614(&qword_2804E09D0, MEMORY[0x277CF1D60]);
  result = sub_26D22E764();
  v14 = v37;
  v15 = *(v37 + 16);
  if (v15)
  {
    v16 = 0;
    v28 = v4 + 16;
    while (v16 < *(v14 + 16))
    {
      (*(v4 + 16))(v7, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v3);
      sub_26D1D7614(&qword_2804E09D8, MEMORY[0x277CF1D60]);
      sub_26D22E544();
      v33 = v35;
      v34 = v36;
      v31 = v29;
      v32 = v30;
      sub_26D1B1F48();
      v17 = sub_26D22E6D4();

      if (!v17)
      {

        v19 = v25;
        (*(v4 + 32))(v25, v7, v3);
        v18 = 0;
        goto LABEL_8;
      }

      ++v16;
      result = (*(v4 + 8))(v7, v3);
      if (v15 == v16)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v18 = 1;
    v19 = v25;
LABEL_8:
    v20 = *(v4 + 56);
    v20(v19, v18, 1, v3);

    v21 = v26;
    sub_26D1D76D0(v19, v26, &qword_2804E0998, &qword_26D230688);
    if ((*(v4 + 48))(v21, 1, v3) == 1)
    {
      sub_26D1B950C(v21, &qword_2804E0998, &qword_26D230688);
      v22 = 1;
      v23 = v27;
    }

    else
    {
      v23 = v27;
      (*(v4 + 32))(v27, v21, v3);
      v22 = 0;
    }

    return (v20)(v23, v22, 1, v3);
  }

  return result;
}

uint64_t sub_26D1CF9A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v78 = sub_26D22D0A4();
  v77 = *(v78 - 8);
  v6 = *(v77 + 64);
  v7 = MEMORY[0x28223BE20](v78);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  v12 = sub_26D22D184();
  v75 = *(v12 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0960, &qword_26D230620);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  sub_26D1BCB48(a1, a2);
  v23 = sub_26D1D5B80(a1, a2);
  if (v3)
  {
    v26 = a1;
    v27 = a2;
    return sub_26D1BCB9C(v26, v27);
  }

  v70 = v11;
  v71 = v12;
  v72 = v9;
  v73 = v20;
  v74 = a2;
  v28 = v78;
  v69 = v15;
  v29 = v25;
  v30 = v24;
  v31 = v23;

  sub_26D1BCB48(v30, v29);
  sub_26D1D37D4(v31, v30, v29, v22);
  v66 = v31;
  v67 = v30;
  v68 = v29;
  v33 = v77;
  v34 = *(v77 + 48);
  v35 = v28;
  v64 = v77 + 48;
  v65 = v34;
  if (v34(v22, 1, v28) == 1)
  {
    sub_26D1B950C(v22, &qword_2804E0960, &qword_26D230620);
    v36 = v66;

    v37 = v67;
    v38 = v68;
    sub_26D1BCB48(v67, v68);
    result = sub_26D1D65A0(v36, v37, v38);
    v39 = v71;
    if (!result)
    {
      v55 = v74;
      type metadata accessor for CPIMMessageUnpacker.Error();
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
      swift_allocError();
      *v56 = v39;
      v56[1] = 0xD000000000000014;
      v56[2] = 0x800000026D23B3A0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26D1BCB9C(a1, v55);

      v26 = v67;
      v27 = v68;
      return sub_26D1BCB9C(v26, v27);
    }

    v60 = a1;
    v62 = *(result + 16);
    if (v62)
    {
      v41 = 0;
      v61 = (v33 + 32);
      v42 = (result + 48);
      v63 = MEMORY[0x277D84F90];
      while (v41 < *(result + 16))
      {
        v43 = result;
        v44 = v41;
        v45 = *(v42 - 1);
        v46 = *v42;
        v47 = *(v42 - 2);

        sub_26D1BCB48(v45, v46);
        v48 = v73;
        sub_26D1D37D4(v47, v45, v46, v73);
        if (v65(v48, 1, v35) == 1)
        {
          sub_26D1B950C(v48, &qword_2804E0960, &qword_26D230620);
        }

        else
        {
          v49 = *v61;
          v50 = v70;
          (*v61)(v70, v48, v35);
          v49(v72, v50, v35);
          v51 = v63;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_26D22BFA8(0, v51[2] + 1, 1, v51);
          }

          v53 = v51[2];
          v52 = v51[3];
          if (v53 >= v52 >> 1)
          {
            v51 = sub_26D22BFA8(v52 > 1, v53 + 1, 1, v51);
          }

          v51[2] = v53 + 1;
          v54 = (*(v77 + 80) + 32) & ~*(v77 + 80);
          v63 = v51;
          (v49)(v51 + v54 + *(v77 + 72) * v53);
        }

        v41 = v44 + 1;
        v42 += 3;
        result = v43;
        if (v62 == v44 + 1)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
LABEL_22:

      sub_26D1BCB9C(v67, v68);
      sub_26D1BCB9C(v60, v74);
      v57 = v69;
      *v69 = v63;
      v58 = v75;
      v59 = v71;
      (*(v75 + 104))(v57, *MEMORY[0x277CF1EB0], v71);
      return (*(v58 + 32))(v76, v57, v59);
    }
  }

  else
  {

    sub_26D1BCB9C(v67, v68);
    sub_26D1BCB9C(a1, v74);
    v40 = v76;
    (*(v33 + 32))(v76, v22, v35);
    return (*(v75 + 104))(v40, *MEMORY[0x277CF1EC0], v71);
  }

  return result;
}

uint64_t sub_26D1D0074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v63 = a1;
  v64 = a4;
  v62 = a3;
  v59 = a5;
  v6 = sub_26D22CE34();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22CFD4();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D22CFB4();
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26D22D1A4();
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26D22D174();
  v57 = *(v20 - 8);
  v58 = v20;
  v21 = *(v57 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v51 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v51 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v51 - v32;
  MEMORY[0x28223BE20](v31);
  v55 = &v51 - v34;

  v35 = sub_26D1D4E0C();
  if (v35 <= 1)
  {
    v63 = v16;
    v40 = v60;
    v39 = v61;
    if (v35)
    {
      v45 = v65;
      sub_26D1D5138();

      if (v45)
      {
        return result;
      }

      sub_26D22CFA4();
      (*(v39 + 32))(v30, v15, v12);
      v38 = MEMORY[0x277CF1E88];
      v24 = v30;
    }

    else
    {
      v41 = v65;
      sub_26D1D5138();

      if (v41)
      {
        return result;
      }

      sub_26D22D194();
      (*(v40 + 32))(v33, v19, v63);
      v38 = MEMORY[0x277CF1E80];
      v24 = v33;
    }
  }

  else if (v35 == 2)
  {
    v42 = v64;

    v43 = v65;
    sub_26D1BCF54(v62, v42, v56);

    if (v43)
    {
      return result;
    }

    v44 = v54;
    sub_26D22CFC4();
    (*(v52 + 32))(v27, v44, v53);
    v38 = MEMORY[0x277CF1E90];
    v24 = v27;
  }

  else
  {
    if (v35 != 3)
    {

      return (*(v57 + 56))(v59, 1, 1, v58);
    }

    v36 = v65;
    result = sub_26D1D0614(a2, v24);
    if (v36)
    {
      return result;
    }

    v38 = MEMORY[0x277CF1EA0];
  }

  v47 = v57;
  v46 = v58;
  (*(v57 + 104))(v24, *v38, v58);
  v48 = *(v47 + 32);
  v49 = v55;
  v48(v55, v24, v46);
  v50 = v59;
  v48(v59, v49, v46);
  return (*(v47 + 56))(v50, 0, 1, v46);
}

uint64_t sub_26D1D0614@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a1;
  v39[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v39 - v4;
  v5 = sub_26D22CCE4();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39[0] = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0AA0, &qword_26D230778);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0AA8, &qword_26D230780);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0AB0, &qword_26D230788);
  v41 = *(v21 - 8);
  v42 = v21;
  v22 = *(v41 + 64);
  MEMORY[0x28223BE20](v21);
  v54 = v39 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0AB8, &qword_26D230790);
  sub_26D22CEB4();
  sub_26D22E534();
  sub_26D1D7A6C(&qword_2804E0AC0, &qword_2804E0AA0, &qword_26D230778);
  v43 = v16;
  sub_26D22CEA4();
  v24 = v45;
  sub_26D22CEC4();
  if (v24)
  {

    v25 = *(v44 + 8);
    v25(v14, v10);
    v25(v43, v10);
    v27 = v41;
    v26 = v42;
    (*(v41 + 56))(v20, 1, 1, v42);
  }

  else
  {

    v28 = *(v44 + 8);
    v28(v14, v10);
    v28(v43, v10);
    v27 = v41;
    v26 = v42;
  }

  v29 = (*(v27 + 48))(v20, 1, v26);
  v31 = v48;
  v30 = v49;
  v32 = v47;
  if (v29 == 1)
  {
    sub_26D1B950C(v20, &qword_2804E0AA8, &qword_26D230780);
    type metadata accessor for CPIMMessageUnpacker.Error();
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
    swift_allocError();
    v34 = v33;
    *v33 = sub_26D22D024();
    v34[1] = 0xD000000000000011;
    v34[2] = 0x800000026D23B570;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    (*(v27 + 32))(v54, v20, v26);
    swift_getKeyPath();
    sub_26D22CEE4();

    MEMORY[0x26D6B6C10](v50, v51, v52, v53);

    v36 = v40;
    sub_26D22CCD4();

    if ((*(v31 + 48))(v36, 1, v30) == 1)
    {
      sub_26D1B950C(v36, &qword_2804E0890, &qword_26D230770);
      type metadata accessor for CPIMMessageUnpacker.Error();
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
      swift_allocError();
      v38 = v37;
      *v37 = sub_26D22D024();
      v38[1] = 0xD000000000000018;
      v38[2] = 0x800000026D23B590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      (*(v31 + 32))(v32, v36, v30);
      swift_getKeyPath();
      sub_26D22CEE4();

      MEMORY[0x26D6B6C10](v50, v51, v52, v53);

      (*(v31 + 16))(v39[0], v32, v30);
      sub_26D22D014();
      (*(v31 + 8))(v32, v30);
    }

    return (*(v27 + 8))(v54, v26);
  }
}

uint64_t sub_26D1D0DBC@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A40, &qword_26D2306F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - v7;
  v9 = sub_26D22D0C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_26D22D174();
  v14 = *(v31 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v31);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;

  v21 = sub_26D22E854();

  if (v21)
  {
    if (v21 == 1)
    {
      v22 = v35;
      result = sub_26D1D1370(a1, v33, v34, v18);
      if (v22)
      {
        return result;
      }

      v35 = 0;
      v24 = v31;
      (*(v14 + 104))(v18, *MEMORY[0x277CF1E78], v31);
      v25 = *(v14 + 32);
      v25(v20, v18, v24);
      goto LABEL_11;
    }
  }

  else
  {
    v26 = v35;
    result = sub_26D1D1138(a1, v33, v34, v8);
    if (v26)
    {
      return result;
    }

    v35 = 0;
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v29 = *(v10 + 32);
      v29(v13, v8, v9);
      v29(v20, v13, v9);
      v24 = v31;
      (*(v14 + 104))(v20, *MEMORY[0x277CF1E50], v31);
      v25 = *(v14 + 32);
LABEL_11:
      v30 = v32;
      v25(v32, v20, v24);
      v28 = v30;
      v27 = 0;
      return (*(v14 + 56))(v28, v27, 1, v24);
    }

    sub_26D1B950C(v8, &qword_2804E0A40, &qword_26D2306F0);
  }

  v27 = 1;
  v24 = v31;
  v28 = v32;
  return (*(v14 + 56))(v28, v27, 1, v24);
}

uint64_t sub_26D1D1138@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a1;
  v26 = a4;
  v25 = sub_26D22D0C4();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D22CAD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v28 = a3;

  sub_26D22CAB4();
  sub_26D1B1F48();
  v16 = sub_26D22E6B4();
  v18 = v17;

  (*(v12 + 8))(v15, v11);

  if (sub_26D22C4CC(v16, v18))
  {
    result = sub_26D22D0B4();
    if (v4)
    {
      return result;
    }

    v21 = v25;
    v20 = v26;
    (*(v7 + 32))(v26, v10, v25);
    v22 = v21;
    v23 = v20;
    v24 = 0;
  }

  else
  {

    v24 = 1;
    v22 = v25;
    v23 = v26;
  }

  return (*(v7 + 56))(v23, v24, 1, v22);
}

uint64_t sub_26D1D1370@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v35 = a4;
  v47 = a1;
  v43 = sub_26D22CAD4();
  v39 = *(v43 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A48, &qword_26D2306F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - v10;
  v12 = sub_26D22D144();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v12);
  v41 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A50, &qword_26D230700);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  *&v44 = a2;
  *(&v44 + 1) = a3;

  sub_26D22CEB4();
  sub_26D1D77A0();
  sub_26D1D7A6C(&qword_2804E0A60, &qword_2804E0A50, &qword_26D230700);
  v20 = sub_26D22E384();

  (*(v16 + 8))(v19, v15);

  v40 = *(v20 + 16);
  if (v40)
  {
    v22 = 0;
    v38 = (v36 + 48);
    v39 += 8;
    v37 = (v36 + 32);
    v23 = (v20 + 56);
    v47 = MEMORY[0x277D84F90];
    while (v22 < *(v20 + 16))
    {
      v24 = v20;
      v25 = *(v23 - 1);
      v26 = *v23;
      v44 = *(v23 - 3);
      v45 = v25;
      v46 = v26;

      v27 = v12;
      v28 = v11;
      v29 = v42;
      sub_26D22CAB4();
      sub_26D1D756C();
      sub_26D22E6B4();
      v30 = v29;
      v11 = v28;
      v12 = v27;
      (*v39)(v30, v43);
      sub_26D22D134();

      if ((*v38)(v11, 1, v27) == 1)
      {
        result = sub_26D1B950C(v11, &qword_2804E0A48, &qword_26D2306F8);
        v20 = v24;
      }

      else
      {
        v31 = *v37;
        (*v37)(v41, v11, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_26D22BFD0(0, *(v47 + 2) + 1, 1, v47);
        }

        v20 = v24;
        v33 = *(v47 + 2);
        v32 = *(v47 + 3);
        if (v33 >= v32 >> 1)
        {
          v47 = sub_26D22BFD0(v32 > 1, v33 + 1, 1, v47);
        }

        v34 = v47;
        *(v47 + 2) = v33 + 1;
        result = v31(&v34[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33], v41, v12);
      }

      ++v22;
      v23 += 4;
      if (v40 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
LABEL_13:

    return sub_26D22D154();
  }

  return result;
}

uint64_t sub_26D1D1870@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a1;
  v30 = a3;
  v29 = sub_26D22D174();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A68, &qword_26D230708);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = sub_26D22D044();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  if (sub_26D22E854())
  {
  }

  else
  {
    v28 = v6;

    sub_26D22D034();

    if (!(*(v12 + 48))(v10, 1, v11))
    {
      v23 = *(v12 + 32);
      v23(v16, v10, v11);
      v23(v18, v16, v11);
      v24 = v28;
      v23(v28, v18, v11);
      v25 = v29;
      (*(v3 + 104))(v24, *MEMORY[0x277CF1E58], v29);
      v26 = v30;
      (*(v3 + 32))(v30, v24, v25);
      v21 = v25;
      v20 = v26;
      v19 = 0;
      return (*(v3 + 56))(v20, v19, 1, v21);
    }

    sub_26D1B950C(v10, &qword_2804E0A68, &qword_26D230708);
  }

  v19 = 1;
  v21 = v29;
  v20 = v30;
  return (*(v3 + 56))(v20, v19, 1, v21);
}

uint64_t sub_26D1D1B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v72 = a4;
  v71 = a3;
  v76 = a1;
  v68 = a5;
  v6 = sub_26D22D0E4();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v56 - v10;
  v11 = sub_26D22D104();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26D22CAD4();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26D22D124();
  v57 = *(v18 - 8);
  v19 = *(v57 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26D22D174();
  v66 = *(v22 - 8);
  v67 = v22;
  v23 = *(v66 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v56 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v56 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v56 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v56 - v37;
  MEMORY[0x28223BE20](v36);
  v65 = &v56 - v39;

  v76 = a2;
  v40 = sub_26D1D4DC0();
  if (v40 <= 2u)
  {
    if (v40)
    {
      if (v40 == 1)
      {
        v74 = v71;
        v75 = v72;

        sub_26D22CAB4();
        sub_26D1B1F48();
        sub_26D22E6B4();

        (*(v69 + 8))(v17, v70);

        v41 = v62;
        v42 = v73;
        result = sub_26D22D0F4();
        if (v42)
        {
          return result;
        }

        (*(v58 + 32))(v35, v41, v59);
        v44 = MEMORY[0x277CF1E68];
        v26 = v35;
      }

      else
      {
        v74 = v71;
        v75 = v72;

        sub_26D22CAB4();
        sub_26D1B1F48();
        sub_26D22E6B4();

        (*(v69 + 8))(v17, v70);

        v49 = v63;
        v50 = v73;
        result = sub_26D22D0D4();
        if (v50)
        {
          return result;
        }

        (*(v60 + 32))(v32, v49, v61);
        v44 = MEMORY[0x277CF1E60];
        v26 = v32;
      }
    }

    else
    {
      v74 = v71;
      v75 = v72;

      sub_26D22CAB4();
      sub_26D1B1F48();
      sub_26D22E6B4();

      (*(v69 + 8))(v17, v70);

      v46 = v73;
      result = sub_26D22D114();
      if (v46)
      {
        return result;
      }

      (*(v57 + 32))(v38, v21, v18);
      v44 = MEMORY[0x277CF1E70];
      v26 = v38;
    }

    goto LABEL_16;
  }

  if (v40 == 3)
  {
    v74 = v71;
    v75 = v72;

    sub_26D22CAB4();
    sub_26D1B1F48();
    sub_26D22E6B4();

    (*(v69 + 8))(v17, v70);

    v47 = v64;
    v48 = v73;
    result = sub_26D22D0D4();
    if (v48)
    {
      return result;
    }

    (*(v60 + 32))(v29, v47, v61);
    v44 = MEMORY[0x277CF1E60];
    v26 = v29;
    goto LABEL_16;
  }

  if (v40 == 4)
  {
    v45 = v73;
    result = sub_26D1D22FC(v40, v76, v71, v72);
    if (v45)
    {
      return result;
    }

    v44 = MEMORY[0x277CF1E98];
LABEL_16:
    v52 = v66;
    v51 = v67;
    (*(v66 + 104))(v26, *v44, v67);
    v53 = *(v52 + 32);
    v54 = v65;
    v53(v65, v26, v51);
    v55 = v68;
    v53(v68, v54, v51);
    return (*(v52 + 56))(v55, 0, 1, v51);
  }

  return (*(v66 + 56))(v68, 1, 1, v67);
}

unsigned __int8 *sub_26D1D22FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26D22CAD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a3;
  v45 = a4;

  sub_26D22CAB4();
  sub_26D1B1F48();
  v11 = sub_26D22E6B4();
  v13 = v12;

  (*(v7 + 8))(v10, v6);

  v15 = HIBYTE(v13) & 0xF;
  v16 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v17 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    goto LABEL_64;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v46 = 0;
    sub_26D1B9900(v11, v13, 10);
    v42 = v43;
    goto LABEL_63;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v44 = v11;
    v45 = v13 & 0xFFFFFFFFFFFFFFLL;
    if (v11 == 43)
    {
      if (v15)
      {
        if (--v15)
        {
          v31 = 0;
          v32 = &v44 + 1;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v15)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_72:
      __break(1u);
      return result;
    }

    if (v11 != 45)
    {
      if (v15)
      {
        v38 = 0;
        v39 = &v44;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            break;
          }

          v38 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          v39 = (v39 + 1);
          if (!--v15)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v15)
    {
      if (--v15)
      {
        v23 = 0;
        v24 = &v44 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_26D22E7A4();
  }

  v18 = *result;
  if (v18 == 43)
  {
    if (v16 < 1)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v15 = v16 - 1;
    if (v16 != 1)
    {
      v27 = 0;
      if (result)
      {
        v28 = result + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            goto LABEL_61;
          }

          v30 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            goto LABEL_61;
          }

          v27 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            goto LABEL_61;
          }

          ++v28;
          if (!--v15)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_53;
    }

LABEL_61:
    LOBYTE(v15) = 1;
    goto LABEL_62;
  }

  if (v18 != 45)
  {
    if (v16)
    {
      v35 = 0;
      if (result)
      {
        while (1)
        {
          v36 = *result - 48;
          if (v36 > 9)
          {
            goto LABEL_61;
          }

          v37 = 10 * v35;
          if ((v35 * 10) >> 64 != (10 * v35) >> 63)
          {
            goto LABEL_61;
          }

          v35 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            goto LABEL_61;
          }

          ++result;
          if (!--v16)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_53;
    }

    goto LABEL_61;
  }

  if (v16 < 1)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v15 = v16 - 1;
  if (v16 == 1)
  {
    goto LABEL_61;
  }

  v19 = 0;
  if (result)
  {
    v20 = result + 1;
    while (1)
    {
      v21 = *v20 - 48;
      if (v21 > 9)
      {
        goto LABEL_61;
      }

      v22 = 10 * v19;
      if ((v19 * 10) >> 64 != (10 * v19) >> 63)
      {
        goto LABEL_61;
      }

      v19 = v22 - v21;
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_61;
      }

      ++v20;
      if (!--v15)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_53:
  LOBYTE(v15) = 0;
LABEL_62:
  v46 = v15;
  v42 = v15;
LABEL_63:

  if (v42)
  {
LABEL_64:
    sub_26D1D77F4();
    swift_allocError();
    return swift_willThrow();
  }

  return sub_26D22CFE4();
}

void sub_26D1D2738(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v134 = a2;
  v135 = a3;
  v126 = a4;
  v133 = type metadata accessor for CPIMMessageUnpacker.Error();
  v5 = *(*(v133 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v133);
  v130 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v132 = &v109 - v8;
  v9 = sub_26D22DA84();
  v121 = *(v9 - 8);
  v122 = v9;
  v10 = *(v121 + 64);
  MEMORY[0x28223BE20](v9);
  v120 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D22DAC4();
  v123 = *(v12 - 8);
  v124 = v12;
  v13 = *(v123 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v118 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v119 = &v109 - v16;
  v127 = sub_26D22D094();
  v125 = *(v127 - 8);
  v17 = *(v125 + 64);
  v18 = MEMORY[0x28223BE20](v127);
  v110 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v111 = &v109 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v112 = &v109 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v113 = &v109 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v114 = &v109 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v115 = &v109 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v116 = &v109 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v117 = &v109 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v109 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v109 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v109 - v40;
  v42 = sub_26D22E404();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = sub_26D22D064();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v109 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v45 + 16);
  v137 = a1;
  v128 = v49;
  v129 = v45 + 16;
  v49(v48, a1, v44);
  v50 = *(v45 + 88);
  v136 = v44;
  v51 = v50(v48, v44);
  if (v51 == *MEMORY[0x277CF1D18])
  {
    sub_26D22E3F4();
    v52 = v134;
    v53 = v135;
    sub_26D22E3E4();
    if (v54)
    {

      v55 = v131;
      sub_26D1B3EB4();
      v56 = v55;
      v57 = v137;
      v58 = v45;
      if (v55)
      {
LABEL_4:
        v59 = v132;
        goto LABEL_12;
      }

      (*(v45 + 8))(v137, v136);
      sub_26D1BCB9C(v52, v53);
      v79 = MEMORY[0x277CF1DF0];
LABEL_24:
      v80 = v125;
      v81 = v127;
      (*(v125 + 104))(v41, *v79, v127);
      (*(v80 + 32))(v126, v41, v81);
      return;
    }

    goto LABEL_9;
  }

  v52 = v134;
  v60 = v135;
  if (v51 == *MEMORY[0x277CF1CE8])
  {
    sub_26D22E3F4();
    v53 = v60;
    sub_26D22E3E4();
    if (v61)
    {

      v62 = v131;
      sub_26D1B3154();
      v56 = v62;
      v57 = v137;
      if (!v62)
      {
        (*(v45 + 8))(v137, v136);
        sub_26D1BCB9C(v52, v60);
        v63 = v125;
        v64 = v127;
        (*(v125 + 104))(v39, *MEMORY[0x277CF1D98], v127);
        (*(v63 + 32))(v126, v39, v64);
        return;
      }

      goto LABEL_10;
    }

LABEL_9:
    sub_26D1D75C0();
    v56 = swift_allocError();
    swift_willThrow();
    v57 = v137;
LABEL_10:
    v58 = v45;
LABEL_11:
    v59 = v132;
    goto LABEL_12;
  }

  if (v51 == *MEMORY[0x277CF1D00])
  {
    sub_26D22E3F4();
    v53 = v60;
    sub_26D22E3E4();
    v58 = v45;
    if (v73)
    {

      (*(v121 + 104))(v120, *MEMORY[0x277CF2AB8], v122);
      v74 = v119;
      sub_26D22DA94();
      v75 = v131;
      ChatbotRootMessageUnpacker.unpack(from:with:)(v52, v60, v36);
      v56 = v75;
      v59 = v132;
      if (!v75)
      {
        sub_26D1BCB9C(v52, v60);
        (*(v45 + 8))(v137, v136);
        (*(v123 + 8))(v74, v124);
        v93 = v125;
        v94 = v127;
        (*(v125 + 104))(v36, *MEMORY[0x277CF1DC8], v127);
        (*(v93 + 32))(v126, v36, v94);
        return;
      }

      (*(v123 + 8))(v74, v124);
      v57 = v137;
      goto LABEL_12;
    }

    sub_26D1D75C0();
    v56 = swift_allocError();
    swift_willThrow();
    v57 = v137;
    goto LABEL_4;
  }

  v58 = v45;
  if (v51 == *MEMORY[0x277CF1CE0])
  {
    sub_26D22E3F4();
    v53 = v60;
    sub_26D22E3E4();
    v57 = v137;
    v59 = v132;
    if (v76)
    {

      (*(v121 + 104))(v120, *MEMORY[0x277CF2AB8], v122);
      v77 = v118;
      sub_26D22DA94();
      v41 = v117;
      v78 = v131;
      ChatbotRootMessageUnpacker.unpack(from:with:)(v52, v53, v117);
      v56 = v78;
      if (!v78)
      {
        sub_26D1BCB9C(v52, v53);
        (*(v45 + 8))(v57, v136);
        (*(v123 + 8))(v77, v124);
        v79 = MEMORY[0x277CF1D80];
        goto LABEL_24;
      }

      (*(v123 + 8))(v77, v124);
      goto LABEL_12;
    }

LABEL_39:
    sub_26D1D75C0();
    v56 = swift_allocError();
    swift_willThrow();
    goto LABEL_12;
  }

  v57 = v137;
  v59 = v132;
  if (v51 == *MEMORY[0x277CF1CF0])
  {
    sub_26D22E3F4();
    v82 = v52;
    v53 = v60;
    sub_26D22E3E4();
    if (v83)
    {

      v84 = v116;
      v85 = v131;
      sub_26D1B4668(v116);
      v56 = v85;
      if (!v85)
      {
        (*(v58 + 8))(v57, v136);
        sub_26D1BCB9C(v82, v60);
        v99 = v125;
        v100 = v127;
        (*(v125 + 104))(v84, *MEMORY[0x277CF1DA8], v127);
        (*(v99 + 32))(v126, v84, v100);
        return;
      }

      v52 = v82;
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  if (v51 == *MEMORY[0x277CF1D38])
  {
    sub_26D22E3F4();
    v53 = v60;
    v86 = sub_26D22E3E4();
    if (v87)
    {
      v88 = v86;
      v89 = v87;
      (*(v58 + 8))(v57, v136);
      sub_26D1BCB9C(v52, v60);
      v91 = v125;
      v90 = v126;
      *v126 = v88;
      v90[1] = v89;
      v92 = *MEMORY[0x277CF1E30];
      (*(v91 + 104))();
      return;
    }

    goto LABEL_39;
  }

  if (v51 == *MEMORY[0x277CF1D30])
  {
    sub_26D22E3F4();
    v53 = v60;
    sub_26D22E3E4();
    if (!v95)
    {
      goto LABEL_39;
    }

    v41 = v115;
    v96 = v131;
    sub_26D1B4D68(v115);
    v56 = v96;
    if (!v96)
    {
      (*(v45 + 8))(v57, v136);
      sub_26D1BCB9C(v52, v53);
      v79 = MEMORY[0x277CF1E00];
      goto LABEL_24;
    }
  }

  else
  {
    if (v51 == *MEMORY[0x277CF1D28])
    {
      sub_26D22E3F4();
      v53 = v60;
      sub_26D22E3E4();
      if (v97)
      {

        v41 = v114;
        v98 = v131;
        sub_26D1B546C(v114);
        v56 = v98;
        if (!v98)
        {
          (*(v45 + 8))(v57, v136);
          sub_26D1BCB9C(v52, v53);
          v79 = MEMORY[0x277CF1E20];
          goto LABEL_24;
        }

        goto LABEL_12;
      }

      goto LABEL_39;
    }

    if (v51 == *MEMORY[0x277CF1D08])
    {
      sub_26D22E3F4();
      v53 = v60;
      sub_26D22E3E4();
      if (v101)
      {

        v41 = v113;
        v102 = v131;
        sub_26D1B2A4C(v113);
        v56 = v102;
        if (!v102)
        {
          (*(v45 + 8))(v57, v136);
          sub_26D1BCB9C(v52, v53);
          v79 = MEMORY[0x277CF1DD8];
          goto LABEL_24;
        }

        goto LABEL_12;
      }

      goto LABEL_39;
    }

    if (v51 == *MEMORY[0x277CF1D20])
    {
      v53 = v135;
      sub_26D1BCB48(v134, v135);
      v41 = v112;
      v103 = v131;
      sub_26D22D274();
      v56 = v103;
      if (!v103)
      {
        (*(v45 + 8))(v57, v136);
        sub_26D1BCB9C(v52, v53);
        v79 = MEMORY[0x277CF1E10];
        goto LABEL_24;
      }
    }

    else
    {
      v104 = v131;
      if (v51 == *MEMORY[0x277CF1CF8])
      {
        v53 = v135;
        sub_26D1BCB48(v134, v135);
        v41 = v111;
        sub_26D22D544();
        v56 = v104;
        if (!v104)
        {
          (*(v58 + 8))(v57, v136);
          sub_26D1BCB9C(v52, v53);
          v79 = MEMORY[0x277CF1DB0];
          goto LABEL_24;
        }
      }

      else
      {
        if (v51 != *MEMORY[0x277CF1D10])
        {
          sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
          v56 = swift_allocError();
          v106 = v105;
          v107 = sub_26D22D054();
          *v106 = v127;
          v106[1] = v107;
          v106[2] = v108;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v58 + 8))(v48, v136);
          v53 = v60;
          goto LABEL_11;
        }

        v53 = v135;
        sub_26D1BCB48(v134, v135);
        v41 = v110;
        sub_26D22D2C4();
        v56 = v104;
        if (!v104)
        {
          (*(v58 + 8))(v57, v136);
          sub_26D1BCB9C(v52, v53);
          v79 = MEMORY[0x277CF1DE0];
          goto LABEL_24;
        }
      }
    }
  }

LABEL_12:
  v138 = v56;
  v65 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    v66 = v130;
    sub_26D1CD52C(v59, v130);
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
    swift_allocError();
    sub_26D1CD590(v66, v67);
    swift_willThrow();
    sub_26D1BCB9C(v52, v53);
    (*(v58 + 8))(v57, v136);
    sub_26D1CD5F4(v66);
  }

  else
  {

    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
    swift_allocError();
    v69 = v68;
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09E0, &unk_26D2306B0) + 48);
    v71 = v57;
    v72 = v136;
    v128(v69, v71, v136);
    *(v69 + v70) = v56;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_26D1BCB9C(v52, v53);
    (*(v58 + 8))(v137, v72);
  }
}

uint64_t sub_26D1D37D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v169 = a2;
  v168 = a3;
  v159 = a4;
  v178 = *MEMORY[0x277D85DE8];
  v5 = sub_26D22D094();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v154 = (&v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_26D22D0A4();
  v158 = *(v8 - 8);
  v9 = *(v158 + 64);
  MEMORY[0x28223BE20](v8);
  v152 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_26D22D074();
  v161 = *(v163 - 8);
  v11 = *(v161 + 64);
  MEMORY[0x28223BE20](v163);
  v148 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0998, &qword_26D230688);
  v162 = *(v156 - 8);
  v13 = *(v162 + 64);
  MEMORY[0x28223BE20](v156);
  v149 = &v144 - v14;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09A0, &qword_26D230690);
  v15 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v151 = &v144 - v16;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09A8, &qword_26D230698);
  v17 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v19 = &v144 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09B0, &qword_26D2306A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v153 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v160 = &v144 - v25;
  MEMORY[0x28223BE20](v24);
  v165 = &v144 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09B8, &qword_26D2306A8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v144 - v29;
  v166 = sub_26D22D064();
  v164 = *(v166 - 8);
  v31 = *(v164 + 64);
  v32 = MEMORY[0x28223BE20](v166);
  v34 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v157 = &v144 - v36;
  MEMORY[0x28223BE20](v35);
  v167 = &v144 - v37;
  v38 = sub_26D22CAD4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v43 = sub_26D1E30E4(0), (v44 & 1) == 0))
  {
    type metadata accessor for CPIMMessageUnpacker.Error();
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
    v67 = swift_allocError();
    *v68 = v8;
    v68[1] = 0xD00000000000001DLL;
    v68[2] = 0x800000026D23B3C0;
    swift_storeEnumTagMultiPayload();
    v170 = v67;
    swift_willThrow();

    result = sub_26D1BCB9C(v169, v168);
    goto LABEL_9;
  }

  v146 = v8;
  v45 = (*(a1 + 56) + 16 * v43);
  v47 = *v45;
  v46 = v45[1];

  sub_26D1D4974(59, 0xE100000000000000, v47, v46);
  v147 = a1;
  v145 = v34;
  if ((v48 & 1) == 0)
  {
    v49 = sub_26D22E534();
    v51 = v50;
    v53 = v52;
    v144 = v19;
    v55 = v54;

    v173 = v49;
    v174 = v51;
    v175 = v53;
    v176 = v55;
    a1 = v147;
    sub_26D22CAB4();
    sub_26D1D756C();
    v47 = sub_26D22E6B4();
    v46 = v56;
    (*(v39 + 8))(v42, v38);
    v19 = v144;
  }

  v57 = v167;
  sub_26D1CF24C(v47, v46, v30);
  v58 = v164;
  v59 = v166;
  v60 = (*(v164 + 48))(v30, 1, v166);
  v61 = v163;
  if (v60 != 1)
  {
    (*(v58 + 32))(v57, v30, v59);
    if (*(a1 + 16))
    {
      v70 = 1;
      v71 = sub_26D1E30E4(1);
      v72 = v162;
      if (v73)
      {
        v74 = (*(v147 + 56) + 16 * v71);
        v76 = *v74;
        v75 = v74[1];

        sub_26D1CF5F8(v76, v75, v165);
        v70 = 0;
      }
    }

    else
    {
      v70 = 1;
      v72 = v162;
    }

    v77 = *(v72 + 56);
    v78 = v165;
    v79 = v156;
    v77(v165, v70, 1, v156);
    v81 = v160;
    v80 = v161;
    (*(v161 + 104))(v160, *MEMORY[0x277CF1D58], v61);
    (*(v80 + 56))(v81, 0, 1, v61);
    v77(v81, 0, 1, v79);
    v82 = *(v155 + 48);
    v83 = v78;
    v84 = v162;
    sub_26D1D7738(v83, v19, &qword_2804E09B0, &qword_26D2306A0);
    sub_26D1D7738(v81, &v19[v82], &qword_2804E09B0, &qword_26D2306A0);
    v85 = *(v84 + 48);
    if (v85(v19, 1, v79) == 1)
    {
      sub_26D1B950C(v81, &qword_2804E09B0, &qword_26D2306A0);
      v86 = v85(&v19[v82], 1, v79);
      v87 = v157;
      v88 = v58;
      if (v86 == 1)
      {
LABEL_16:
        sub_26D1B950C(v19, &qword_2804E09B0, &qword_26D2306A0);
        goto LABEL_17;
      }
    }

    else
    {
      v95 = v153;
      sub_26D1D7738(v19, v153, &qword_2804E09B0, &qword_26D2306A0);
      v88 = v58;
      if (v85(&v19[v82], 1, v79) != 1)
      {
        v99 = *(v150 + 48);
        v100 = v95;
        v101 = v151;
        sub_26D1D76D0(v100, v151, &qword_2804E0998, &qword_26D230688);
        sub_26D1D76D0(&v19[v82], v101 + v99, &qword_2804E0998, &qword_26D230688);
        v102 = *(v161 + 48);
        if (v102(v101, 1, v61) == 1)
        {
          sub_26D1B950C(v160, &qword_2804E09B0, &qword_26D2306A0);
          v103 = v102(v101 + v99, 1, v61);
          v87 = v157;
          if (v103 == 1)
          {
            sub_26D1B950C(v101, &qword_2804E0998, &qword_26D230688);
            goto LABEL_16;
          }
        }

        else
        {
          v115 = v149;
          sub_26D1D7738(v101, v149, &qword_2804E0998, &qword_26D230688);
          if (v102(v101 + v99, 1, v61) != 1)
          {
            v140 = v161;
            v141 = v148;
            (*(v161 + 32))(v148, v101 + v99, v61);
            sub_26D1D7614(&qword_2804E09C0, MEMORY[0x277CF1D60]);
            v142 = sub_26D22E3A4();
            v143 = *(v140 + 8);
            v143(v141, v61);
            sub_26D1B950C(v160, &qword_2804E09B0, &qword_26D2306A0);
            v143(v115, v61);
            sub_26D1B950C(v101, &qword_2804E0998, &qword_26D230688);
            sub_26D1B950C(v19, &qword_2804E09B0, &qword_26D2306A0);
            v87 = v157;
            v88 = v58;
            if (v142)
            {
LABEL_17:
              v176 = MEMORY[0x277CC9318];
              v177 = MEMORY[0x277CC9300];
              v173 = v169;
              v174 = v168;
              v89 = __swift_project_boxed_opaque_existential_1(&v173, MEMORY[0x277CC9318]);
              v90 = *v89;
              v91 = v89[1];
              v92 = v91 >> 62;
              if ((v91 >> 62) > 1)
              {
                if (v92 != 2)
                {
                  memset(v171, 0, 14);
                  sub_26D1BCB48(v169, v168);
                  v93 = v171;
                  v94 = v171;
                  goto LABEL_54;
                }

                v104 = *(v90 + 16);
                v105 = *(v90 + 24);
                sub_26D1BCB48(v169, v168);
                v106 = sub_26D22CBB4();
                if (v106)
                {
                  v107 = sub_26D22CBE4();
                  if (__OFSUB__(v104, v107))
                  {
LABEL_65:
                    __break(1u);
                    goto LABEL_66;
                  }

                  v106 += v104 - v107;
                }

                v108 = __OFSUB__(v105, v104);
                v109 = v105 - v104;
                if (!v108)
                {
                  v110 = sub_26D22CBD4();
                  if (v110 >= v109)
                  {
                    v111 = v109;
                  }

                  else
                  {
                    v111 = v110;
                  }

                  v112 = &v106[v111];
                  if (v106)
                  {
                    v113 = v112;
                  }

                  else
                  {
                    v113 = 0;
                  }

                  v114 = v170;
                  sub_26D21DA50(v106, v113, v172);
                  v170 = v114;
                  v88 = v164;
                  goto LABEL_55;
                }
              }

              else
              {
                if (!v92)
                {
                  v171[0] = *v89;
                  LOWORD(v171[1]) = v91;
                  BYTE2(v171[1]) = BYTE2(v91);
                  BYTE3(v171[1]) = BYTE3(v91);
                  BYTE4(v171[1]) = BYTE4(v91);
                  BYTE5(v171[1]) = BYTE5(v91);
                  sub_26D1BCB48(v169, v168);
                  v93 = v171;
                  v94 = v171 + BYTE6(v91);
LABEL_54:
                  v124 = v170;
                  sub_26D21DA50(v93, v94, v172);
                  v170 = v124;
LABEL_55:
                  v125 = v172[0];
                  v126 = v172[1];
                  __swift_destroy_boxed_opaque_existential_1(&v173);
                  v98 = sub_26D22CD04();
                  v97 = v127;
                  sub_26D1BCB9C(v125, v126);
                  if (v97 >> 60 == 15)
                  {
                    type metadata accessor for CPIMMessageUnpacker.Error();
                    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
                    v128 = swift_allocError();
                    *v129 = v146;
                    v129[1] = 0xD00000000000002CLL;
                    v129[2] = 0x800000026D23B4A0;
                    swift_storeEnumTagMultiPayload();
                    v170 = v128;
                    swift_willThrow();

                    sub_26D1BCB9C(v169, v168);
                    sub_26D1B950C(v165, &qword_2804E09B0, &qword_26D2306A0);
                    result = (*(v88 + 8))(v167, v166);
                    goto LABEL_9;
                  }

                  v96 = v166;
                  goto LABEL_58;
                }

                v116 = v90;
                v117 = v90 >> 32;
                v118 = v117 - v116;
                if (v117 >= v116)
                {
                  sub_26D1BCB48(v169, v168);
                  v119 = sub_26D22CBB4();
                  if (!v119)
                  {
LABEL_46:
                    v88 = v164;
                    v121 = sub_26D22CBD4();
                    if (v121 >= v118)
                    {
                      v122 = v118;
                    }

                    else
                    {
                      v122 = v121;
                    }

                    v123 = (v122 + v119);
                    if (v119)
                    {
                      v94 = v123;
                    }

                    else
                    {
                      v94 = 0;
                    }

                    v93 = v119;
                    goto LABEL_54;
                  }

                  v120 = sub_26D22CBE4();
                  if (!__OFSUB__(v116, v120))
                  {
                    v119 += v116 - v120;
                    goto LABEL_46;
                  }

LABEL_66:
                  __break(1u);
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_65;
            }

LABEL_23:
            v96 = v166;
            v97 = v168;
            v98 = v169;
            sub_26D1BCB48(v169, v168);
LABEL_58:
            v130 = *(v88 + 16);
            v131 = v88;
            v132 = v167;
            v133 = v96;
            v130(v87, v167, v96);
            v134 = v145;
            v130(v145, v132, v133);
            sub_26D1BCB48(v98, v97);
            v135 = v170;
            sub_26D1D2738(v134, v98, v97, v154);
            v170 = v135;
            if (v135)
            {

              sub_26D1BCB9C(v169, v168);
              sub_26D1BCB9C(v98, v97);
              v136 = *(v131 + 8);
              v136(v87, v133);
              sub_26D1B950C(v165, &qword_2804E09B0, &qword_26D2306A0);
              result = (v136)(v132, v133);
              goto LABEL_9;
            }

            v137 = v152;
            sub_26D22D084();
            v170 = 0;

            sub_26D1BCB9C(v169, v168);
            sub_26D1BCB9C(v98, v97);
            sub_26D1B950C(v165, &qword_2804E09B0, &qword_26D2306A0);
            (*(v131 + 8))(v167, v133);
            v65 = v158;
            v138 = v159;
            v139 = v146;
            (*(v158 + 32))(v159, v137, v146);
            v64 = v138;
            v63 = v139;
            v62 = 0;
            goto LABEL_7;
          }

          sub_26D1B950C(v160, &qword_2804E09B0, &qword_26D2306A0);
          (*(v161 + 8))(v115, v61);
          v87 = v157;
        }

        sub_26D1B950C(v101, &qword_2804E09A0, &qword_26D230690);
        sub_26D1B950C(v19, &qword_2804E09B0, &qword_26D2306A0);
        v88 = v58;
        goto LABEL_23;
      }

      sub_26D1B950C(v81, &qword_2804E09B0, &qword_26D2306A0);
      sub_26D1B950C(v95, &qword_2804E0998, &qword_26D230688);
      v87 = v157;
    }

    sub_26D1B950C(v19, &qword_2804E09A8, &qword_26D230698);
    goto LABEL_23;
  }

  sub_26D1BCB9C(v169, v168);
  sub_26D1B950C(v30, &qword_2804E09B8, &qword_26D2306A8);
  v62 = 1;
  v63 = v146;
  v64 = v159;
  v65 = v158;
LABEL_7:
  result = (*(v65 + 56))(v64, v62, 1, v63);
LABEL_9:
  v69 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_26D1D4974(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_26D22E514() != a1 || v9 != a2)
  {
    v10 = sub_26D22E964();

    if (v10)
    {
      return v8;
    }

    v8 = sub_26D22E474();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_26D1D4A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26D1BDEEC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26D203870();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_26D22D1D4();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_26D1D4BD4(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_26D22D1D4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_26D1D4BD4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26D22E714() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26D22E9E4();

      sub_26D22E454();
      v13 = sub_26D22EA04();

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
      v19 = *(*(sub_26D22D1D4() - 8) + 72);
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

uint64_t sub_26D1D4DC0()
{
  v0 = sub_26D22E854();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1D4E0C()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1D4E58(unint64_t a1, unint64_t a2, char *a3)
{
  v6 = sub_26D22CAD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = 58;
  *(&v23 + 1) = 0xE100000000000000;
  v22 = &v23;
  v11 = sub_26D1ED4A0(1, 1, sub_26D1D7848, v21, a1, a2, a3, &v23);
  if (*(v11 + 2) == 2)
  {
    v12 = *(v11 + 6);
    v13 = *(v11 + 7);
    v23 = *(v11 + 2);
    v24 = v12;
    v25 = v13;
    v14 = v11;

    sub_26D22CAB4();
    sub_26D1D756C();
    v20 = sub_26D22E6B4();
    v15 = *(v7 + 8);
    v15(v10, v6);

    if (*(v14 + 2) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v19 = *(v14 + 4);
      v17 = *(v14 + 10);
      v18 = *(v14 + 11);

      v23 = v19;
      v24 = v17;
      v25 = v18;
      sub_26D22CAB4();
      sub_26D22E6B4();
      v15(v10, v6);

      return v20;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

unint64_t sub_26D1D5088(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_26D22E484();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_26D22E534();
}

char *sub_26D1D5138()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A78, &qword_26D230710);
  v19 = *(v0 - 8);
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A80, &qword_26D230718);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A88, &qword_26D230720);
  v20 = *(v25 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v25);
  v18[0] = v18 - v9;
  if (qword_2804E0468 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_2804E0910);
  sub_26D22E534();
  sub_26D1D7A6C(&qword_2804E0A90, &qword_2804E0A78, &qword_26D230710);
  sub_26D22CEA4();
  v10 = v18[1];
  sub_26D22CEC4();
  if (v10)
  {

    (*(v19 + 8))(v3, v0);
    (*(v20 + 56))(v7, 1, 1, v25);
LABEL_6:
    sub_26D1B950C(v7, &qword_2804E0A80, &qword_26D230718);
    type metadata accessor for CPIMMessageUnpacker.Error();
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
    swift_allocError();
    *v13 = &type metadata for CPIMMessageUnpacker.RawHeader;
    strcpy((v13 + 8), "Bad URI format");
    *(v13 + 23) = -18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v7;
  }

  (*(v19 + 8))(v3, v0);

  v11 = v20;
  v12 = v25;
  if ((*(v20 + 48))(v7, 1, v25) == 1)
  {
    goto LABEL_6;
  }

  v15 = v18[0];
  (*(v11 + 32))(v18[0], v7, v12);
  swift_getKeyPath();
  sub_26D22CEE4();

  v16 = v24;
  if (v24 || (swift_getKeyPath(), sub_26D22CEE4(), , (v16 = v24) != 0))
  {
    v7 = MEMORY[0x26D6B6C10](v21, v22, v23, v16);

    (*(v11 + 8))(v15, v12);
  }

  else
  {
    type metadata accessor for CPIMMessageUnpacker.Error();
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
    swift_allocError();
    *v17 = &type metadata for CPIMMessageUnpacker.RawHeader;
    v17[1] = 0xD000000000000011;
    v17[2] = 0x800000026D23B4D0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v11 + 8))(v15, v12);
  }

  return v7;
}

char *sub_26D1D56B8(uint64_t a1, uint64_t a2)
{
  v17[0] = a1;
  v17[1] = a2;
  sub_26D1D765C();
  v16 = sub_26D22E5D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A10, &unk_26D2306C0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A18, &unk_26D234350);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26D230530;
  v6 = (v5 + v4);
  v7 = *(v2 + 48);
  *v6 = 1852075369;
  *(v6 + 1) = 0xE400000000000000;
  v8 = *MEMORY[0x277CF1EE0];
  v9 = sub_26D22D1D4();
  v10 = *(*(v9 - 8) + 104);
  v10(&v6[v7], v8, v9);
  v11 = &v6[v3];
  v12 = *(v2 + 48);
  *v11 = 7562098;
  *(v11 + 1) = 0xE300000000000000;
  v10(&v6[v3 + v12], *MEMORY[0x277CF1ED8], v9);
  v13 = sub_26D203C5C(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v17[0] = v13;
  v14 = sub_26D1CC9C0(v16, v17);

  return v14;
}

unint64_t sub_26D1D58F8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v7 = *(result + 40);
  v8 = *(result + 48);
  v9 = *(result + 32);
  v10 = *a3;

  result = sub_26D1E30E4(v9);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_26D1E3A80(v15, i & 1);
    v17 = *a3;
    result = sub_26D1E30E4(v9);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_26D22E984();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v9;
    v27 = (v19[7] + 16 * result);
    *v27 = v7;
    v27[1] = v8;
    v28 = v19[2];
    v14 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v29;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v26 = result;
  sub_26D203708();
  result = v26;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 16 * result;
  v21 = (v19[7] + 16 * result);
  v23 = *v21;
  v22 = v21[1];

  v24 = (v19[7] + v20);
  v25 = v24[1];
  *v24 = v23;
  v24[1] = v22;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v7 = *(i - 1);
      v6 = *i;
      v8 = *(i - 16);
      v36 = *a3;

      result = sub_26D1E30E4(v8);
      v38 = v36[2];
      v39 = (v37 & 1) == 0;
      v14 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v14)
      {
        break;
      }

      v9 = v37;
      if (v36[3] < v40)
      {
        sub_26D1E3A80(v40, 1);
        v41 = *a3;
        result = sub_26D1E30E4(v8);
        if ((v9 & 1) != (v42 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v9)
      {
        v30 = 16 * result;
        v31 = (v3[7] + 16 * result);
        v33 = *v31;
        v32 = v31[1];

        v34 = (v3[7] + v30);
        v35 = v34[1];
        *v34 = v33;
        v34[1] = v32;
      }

      else
      {
        v3[(result >> 6) + 8] |= 1 << result;
        *(v3[6] + result) = v8;
        v43 = (v3[7] + 16 * result);
        *v43 = v7;
        v43[1] = v6;
        v44 = v3[2];
        v14 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v3[2] = v45;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_26D1D5B80(uint64_t a1, unint64_t a2)
{
  v4 = sub_26D22CAD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataParser();
  inited = swift_initStackObject();
  v10 = 0;
  v94 = a1;
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  v11 = a2 >> 62;
  v95 = v8;
  if ((a2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = inited;
      v13 = v94;
      v10 = *(v94 + 16);
      v14 = *(v94 + 24);
LABEL_6:
      sub_26D1BCB48(v13, a2);
      inited = v12;
      if (v14 < v10)
      {
        goto LABEL_66;
      }
    }
  }

  else if (v11)
  {
    v12 = inited;
    v13 = v94;
    v10 = v94;
    v14 = v94 >> 32;
    goto LABEL_6;
  }

  v93 = a2;
  *(inited + 32) = v10;
  if (qword_2804E0458 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v15 = qword_2804E08E8;
    v16 = unk_2804E08F0;
    v17 = inited;
    v18 = sub_26D1D7B6C();
    if ((v20 & 1) != 0 || (v21 = sub_26D1BE908(v15, v16, v18, v19, 0, v17[2], v17[3]), !v22))
    {
      type metadata accessor for CPIMMessageUnpacker.Error();
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
      swift_allocError();
      *v74 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMessage;
      strcpy((v74 + 8), "Header section");
      *(v74 + 23) = -18;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26D1BCB9C(v94, v93);
      swift_setDeallocating();
      sub_26D1BCB9C(v17[2], v17[3]);
      return v15;
    }

    v89 = v17;
    v17[4] = v23;
    *&v104 = v21;
    *(&v104 + 1) = v22;
    v107 = 2573;
    v108 = 0xE200000000000000;
    sub_26D1D765C();
    v24 = sub_26D22E5D4();

    inited = v24;
    v25 = *(v24 + 16);
    if (!v25)
    {
      break;
    }

    v26 = 0;
    v27 = v24 + 32;
    v92 = (v5 + 8);
    v90 = MEMORY[0x277D84F90];
    v100 = v24;
    v101 = v4;
    v98 = v24 + 32;
    v99 = v25;
    while (v26 < *(inited + 16))
    {
      v28 = (v27 + 32 * v26);
      v29 = *v28;
      v5 = v28[1];
      ++v26;
      v30 = v5 >> 14;
      if (v5 >> 14 == *v28 >> 14)
      {
LABEL_14:
        if (v26 == v25)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v102 = v26;
        v31 = v28[2];
        v32 = v28[3];
        inited = swift_bridgeObjectRetain_n();
        v33 = v29;
        v34 = MEMORY[0x277D84F90];
        do
        {
          v35 = v33 >> 14;
          if (v33 >> 14 == v30)
          {
            break;
          }

          v103 = v34;
          while (1)
          {
            v109 = v33;
            while (sub_26D22E684() != 58 || v36 != 0xE100000000000000)
            {
              v37 = sub_26D22E964();

              if (v37)
              {
                goto LABEL_27;
              }

              inited = sub_26D22E664();
              v35 = inited >> 14;
              if (inited >> 14 == v30)
              {
                v4 = v101;
                v34 = v103;
                v33 = v109;
                goto LABEL_36;
              }
            }

LABEL_27:
            if (v109 >> 14 != v35)
            {
              break;
            }

            inited = sub_26D22E664();
            v33 = inited;
            v35 = inited >> 14;
            if (inited >> 14 == v30)
            {
              v4 = v101;
              v34 = v103;
              goto LABEL_36;
            }
          }

          if (v35 < v109 >> 14)
          {
            __break(1u);
            goto LABEL_69;
          }

          v109 = sub_26D22E694();
          v97 = v38;
          *&v96 = v39;
          v88 = v40;
          v34 = v103;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_26D22BBBC(0, *(v34 + 2) + 1, 1, v34);
          }

          v42 = *(v34 + 2);
          v41 = *(v34 + 3);
          if (v42 >= v41 >> 1)
          {
            v34 = sub_26D22BBBC((v41 > 1), v42 + 1, 1, v34);
          }

          *(v34 + 2) = v42 + 1;
          v43 = &v34[32 * v42];
          v44 = v97;
          *(v43 + 4) = v109;
          *(v43 + 5) = v44;
          v45 = v88;
          *(v43 + 6) = v96;
          *(v43 + 7) = v45;
          inited = sub_26D22E664();
          v33 = inited;
          v4 = v101;
        }

        while (*(v34 + 2) != 1);
LABEL_36:
        if (v33 >> 14 == v30)
        {

          if (*(v34 + 2) != 2)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (v30 < v33 >> 14)
          {
            goto LABEL_64;
          }

          v5 = sub_26D22E694();
          v47 = v46;
          v49 = v48;
          v51 = v50;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_26D22BBBC(0, *(v34 + 2) + 1, 1, v34);
          }

          v53 = *(v34 + 2);
          v52 = *(v34 + 3);
          if (v53 >= v52 >> 1)
          {
            v34 = sub_26D22BBBC((v52 > 1), v53 + 1, 1, v34);
          }

          *(v34 + 2) = v53 + 1;
          v54 = &v34[32 * v53];
          *(v54 + 4) = v5;
          *(v54 + 5) = v47;
          *(v54 + 6) = v49;
          *(v54 + 7) = v51;
          if (v53 != 1)
          {
LABEL_12:

LABEL_13:

            v25 = v99;
            inited = v100;
            v26 = v102;
            v27 = v98;
            goto LABEL_14;
          }
        }

        v55 = *(v34 + 6);
        v56 = *(v34 + 7);
        v104 = *(v34 + 2);
        v105 = v55;
        v106 = v56;

        v5 = v4;
        v57 = v95;
        sub_26D22CAB4();
        v103 = sub_26D1D756C();
        v58 = sub_26D22E6B4();
        v109 = v59;
        v4 = v92;
        v60 = *v92;
        (*v92)(v57, v5);

        if (*(v34 + 2) < 2uLL)
        {
          goto LABEL_65;
        }

        v96 = *(v34 + 4);
        v97 = v58;
        v61 = *(v34 + 10);
        v62 = *(v34 + 11);

        v104 = v96;
        v105 = v61;
        v106 = v62;
        sub_26D22CAB4();
        v63 = sub_26D22E6B4();
        v5 = v64;
        v65 = v57;
        v66 = v101;
        v60(v65, v101);

        v67 = sub_26D1CF110();

        v4 = v66;
        if (v67 == 2)
        {
          goto LABEL_13;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v100;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v90 = sub_26D22BE60(0, v90[2] + 1, 1, v90);
        }

        v71 = v90[2];
        v70 = v90[3];
        if (v71 >= v70 >> 1)
        {
          v90 = sub_26D22BE60((v70 > 1), v71 + 1, 1, v90);
        }

        inited = v69;
        v72 = v90;
        v90[2] = v71 + 1;
        v73 = &v72[3 * v71];
        *(v73 + 32) = v67 & 1;
        v73[5] = v63;
        v73[6] = v5;
        v27 = v98;
        v25 = v99;
        v26 = v102;
        if (v102 == v99)
        {
          goto LABEL_56;
        }
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v87 = inited;
    swift_once();
    inited = v87;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_56:

  v76 = v90;
  if (v90[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A08, &qword_26D230E30);
    v77 = sub_26D22E844();
  }

  else
  {
    v77 = MEMORY[0x277D84F98];
  }

  *&v104 = v77;
  v78 = v91;
  sub_26D1D58F8(v76, 1, &v104);
  v5 = v78;
  if (!v78)
  {

    v15 = v104;
    v79 = v89;
    sub_26D1D7B6C();
    if (v80)
    {
      type metadata accessor for CPIMMessageUnpacker.Error();
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
      swift_allocError();
      *v81 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMessage;
      strcpy((v81 + 8), "Body section");
      *(v81 + 21) = 0;
      *(v81 + 22) = -5120;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26D1BCB9C(v94, v93);
      swift_setDeallocating();
      sub_26D1BCB9C(v79[2], v79[3]);
    }

    else
    {
      v82 = v79[2];
      v83 = v79[3];
      v84 = sub_26D22CD54();
      v86 = v85;
      swift_setDeallocating();
      sub_26D1BCB9C(v79[2], v79[3]);
      sub_26D1BCB9C(v94, v93);

      sub_26D1BCB48(v84, v86);

      sub_26D1BCB9C(v84, v86);
    }

    return v15;
  }

LABEL_69:

  __break(1u);
  return result;
}

uint64_t sub_26D1D65A0(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v95 = a2;
  v7 = sub_26D22E404();
  v8 = *(v7 - 8);
  v91 = v7;
  v92 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0968, &qword_26D230628);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0970, &qword_26D230630);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v79 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0978, &qword_26D230638);
  v21 = *(v94 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v79 - v23;
  if (!a1[2] || (v104 = a1, v24 = sub_26D1E30E4(0), a1 = v104, (v25 & 1) == 0))
  {
    type metadata accessor for CPIMMessageUnpacker.Error();
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
    swift_allocError();
    *v30 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMultipartMessage;
    v30[1] = 0xD00000000000001DLL;
    v30[2] = 0x800000026D23B3C0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_26D1BCB9C(v95, a3);
    return a1;
  }

  v89 = a3;
  v90 = v21;
  v26 = (v104[7] + 16 * v24);
  v28 = *v26;
  v27 = v26[1];
  v29 = qword_2804E0460;

  if (v29 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_2804E08F8);
  sub_26D1D7A6C(&qword_2804E0980, &qword_2804E0968, &qword_26D230628);
  sub_26D22CEA4();
  sub_26D22E534();
  sub_26D22CED4();
  if (v4)
  {

    sub_26D1BCB9C(v95, v89);
    (*(v13 + 8))(v16, v12);
    (*(v90 + 56))(v20, 1, 1, v94);
LABEL_10:
    sub_26D1B950C(v20, &qword_2804E0970, &qword_26D230630);
    return 0;
  }

  (*(v13 + 8))(v16, v12);

  v31 = v90;
  v32 = v94;
  if ((*(v90 + 48))(v20, 1, v94) == 1)
  {

    sub_26D1BCB9C(v95, v89);
    goto LABEL_10;
  }

  v34 = *(v31 + 32);
  a1 = v93;
  v34(v93, v20, v32);
  swift_getKeyPath();
  sub_26D22CEE4();

  v35 = v103;
  v36 = v89;
  if (v103)
  {
    v37 = v101;
    v38 = v102;
    v39 = v100;
    v40 = v92;
  }

  else
  {
    swift_getKeyPath();
    sub_26D22CEE4();

    v35 = v103;
    v40 = v92;
    if (!v103)
    {

      type metadata accessor for CPIMMessageUnpacker.Error();
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
      swift_allocError();
      *v76 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMultipartMessage;
      v76[1] = 0xD000000000000012;
      v76[2] = 0x800000026D23B3E0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_26D1BCB9C(v95, v36);
      (*(v90 + 8))(a1, v32);
      return a1;
    }

    v37 = v101;
    v38 = v102;
    v39 = v100;
  }

  v100 = 11565;
  v101 = 0xE200000000000000;
  v88 = v37;
  v92 = v38;
  v41 = MEMORY[0x26D6B6C10](v39);
  MEMORY[0x26D6B6C70](v41);

  MEMORY[0x26D6B6C70](2573, 0xE200000000000000);
  sub_26D22E3F4();
  v85 = sub_26D22E3D4();
  v43 = v42;

  v44 = v91;
  v87 = *(v40 + 8);
  result = v87(v11, v91);
  v86 = v43;
  if (v43 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v100 = 757926413;
  v101 = 0xE400000000000000;
  v45 = MEMORY[0x26D6B6C10](v39, v88, v92, v35);
  MEMORY[0x26D6B6C70](v45);

  MEMORY[0x26D6B6C70](2573, 0xE200000000000000);
  sub_26D22E3F4();
  v83 = sub_26D22E3D4();
  v47 = v46;

  result = v87(v11, v44);
  v84 = v47;
  if (v47 >> 60 == 15)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v100 = 757926413;
  v101 = 0xE400000000000000;
  v48 = MEMORY[0x26D6B6C10](v39, v88, v92, v35);
  v50 = v49;

  MEMORY[0x26D6B6C70](v48, v50);

  MEMORY[0x26D6B6C70](11565, 0xE200000000000000);
  sub_26D22E3F4();
  v92 = sub_26D22E3D4();
  v52 = v51;

  result = v87(v11, v44);
  if (v52 >> 60 != 15)
  {

    v53 = v95;
    v54 = v89;
    v98 = v95;
    v99 = v89;
    v56 = v85;
    v55 = v86;
    v96 = v85;
    v97 = v86;
    sub_26D1BCB48(v95, v89);
    sub_26D1BEAE4();
    sub_26D22CAF4();
    a1 = v94;
    if (v102 == 1)
    {
      type metadata accessor for CPIMMessageUnpacker.Error();
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
      swift_allocError();
      *v57 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMultipartMessage;
      v57[1] = 0xD00000000000001ALL;
      v57[2] = 0x800000026D23B400;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26D1BE640(v92, v52);
      sub_26D1BE640(v83, v84);
      sub_26D1BE640(v56, v55);
      sub_26D1BCB9C(v53, v54);

      sub_26D1BCB9C(v53, v54);
      (*(v90 + 8))(v93, a1);
      return a1;
    }

    v58 = v52;
    v59 = v101;
    v98 = v53;
    v99 = v54;
    v96 = v92;
    v97 = v58;
    a1 = &v98;
    result = sub_26D22CAF4();
    if (v102 == 1)
    {
      type metadata accessor for CPIMMessageUnpacker.Error();
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error);
      swift_allocError();
      *v60 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMultipartMessage;
      v60[1] = 0xD000000000000016;
      v60[2] = 0x800000026D23B420;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26D1BE640(v92, v58);
      sub_26D1BE640(v83, v84);
      sub_26D1BE640(v56, v55);
      sub_26D1BCB9C(v53, v54);

      sub_26D1BCB9C(v53, v54);
      (*(v90 + 8))(v93, v94);
      return a1;
    }

    v91 = v58;
    if (v100 >= v59)
    {
      v61 = sub_26D22CD54();
      v63 = v62;
      v100 = v61;
      v101 = v62;
      v64 = v83;
      v98 = v83;
      v99 = v84;
      sub_26D1D7518();
      v65 = sub_26D22E5D4();
      v66 = *(v65 + 16);
      if (!v66)
      {

        sub_26D1BE640(v92, v91);
        sub_26D1BE640(v64, v84);
        sub_26D1BE640(v85, v86);
        sub_26D1BCB9C(v61, v63);
        sub_26D1BCB9C(v53, v54);

        sub_26D1BCB9C(v53, v54);
        (*(v90 + 8))(v93, v94);
        return MEMORY[0x277D84F90];
      }

      v87 = v61;
      v88 = v63;
      v100 = MEMORY[0x277D84F90];
      result = sub_26D1E498C(0, v66, 0);
      v67 = 0;
      a1 = v100;
      v68 = (v65 + 40);
      while (v67 < *(v65 + 16))
      {
        v69 = *(v68 - 1);
        v70 = *v68;
        sub_26D1BCB48(v69, *v68);
        result = sub_26D1D5B80(v69, v70);
        v100 = a1;
        v74 = a1[2];
        v73 = a1[3];
        if (v74 >= v73 >> 1)
        {
          v82 = result;
          v81 = v71;
          v80 = v72;
          sub_26D1E498C((v73 > 1), v74 + 1, 1);
          v72 = v80;
          v71 = v81;
          result = v82;
          a1 = v100;
        }

        ++v67;
        a1[2] = v74 + 1;
        v75 = &a1[3 * v74];
        v75[4] = result;
        v75[5] = v71;
        v75[6] = v72;
        v68 += 2;
        if (v66 == v67)
        {
          (*(v90 + 8))(v93, v94);
          sub_26D1BE640(v92, v91);
          sub_26D1BE640(v83, v84);
          sub_26D1BE640(v85, v86);
          sub_26D1BCB9C(v87, v88);

          v77 = v95;
          v78 = v89;
          sub_26D1BCB9C(v95, v89);

          sub_26D1BCB9C(v77, v78);
          return a1;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_26D1D732C(uint64_t a1)
{
  v2 = sub_26D22D064();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CF1D18])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x277CF1CE8])
  {
    return 8;
  }

  if (v4 == *MEMORY[0x277CF1D00] || v4 == *MEMORY[0x277CF1CE0])
  {
    return 10;
  }

  if (v4 == *MEMORY[0x277CF1CF0])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277CF1D38])
  {
    return 16;
  }

  if (v4 == *MEMORY[0x277CF1D30])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277CF1D28])
  {
    return 5;
  }

  if (v4 == *MEMORY[0x277CF1D08])
  {
    return 7;
  }

  if (v4 == *MEMORY[0x277CF1D20])
  {
    return 13;
  }

  if (v4 == *MEMORY[0x277CF1CF8])
  {
    return 14;
  }

  if (v4 != *MEMORY[0x277CF1D10])
  {
    (*(v3 + 8))(a1, v2);
    return 16;
  }

  return 15;
}

unint64_t sub_26D1D7518()
{
  result = qword_2804E0988;
  if (!qword_2804E0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0988);
  }

  return result;
}

unint64_t sub_26D1D756C()
{
  result = qword_2804E09C8;
  if (!qword_2804E09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E09C8);
  }

  return result;
}

unint64_t sub_26D1D75C0()
{
  result = qword_2804E09E8;
  if (!qword_2804E09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E09E8);
  }

  return result;
}

uint64_t sub_26D1D7614(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26D1D765C()
{
  result = qword_2804E0A00;
  if (!qword_2804E0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0A00);
  }

  return result;
}

uint64_t sub_26D1D76D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26D1D7738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_26D1D77A0()
{
  result = qword_2804E0A58;
  if (!qword_2804E0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0A58);
  }

  return result;
}

unint64_t sub_26D1D77F4()
{
  result = qword_2804E0A70;
  if (!qword_2804E0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0A70);
  }

  return result;
}

uint64_t sub_26D1D7848(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D22E964() & 1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D1D78AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26D1D78F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_26D1D7980(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26D1D79C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26D1D7A6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26D1D7AB8()
{
  result = qword_2804E0AD8;
  if (!qword_2804E0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0AD8);
  }

  return result;
}

unint64_t sub_26D1D7B10()
{
  result = qword_2804E0AE0;
  if (!qword_2804E0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0AE0);
  }

  return result;
}

uint64_t sub_26D1D7B6C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      if (v1 < 0)
      {
        goto LABEL_12;
      }

      return 0;
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    if (!v4)
    {
      if (v1 < BYTE6(v2))
      {
        goto LABEL_12;
      }

      return 0;
    }

    v6 = v3;
    v5 = v3 >> 32;
  }

  if (v5 < v6)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (v1 >= v5)
  {
    return 0;
  }

LABEL_12:
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v8 = BYTE6(v2);
    v9 = v3;
    v10 = v3 >> 32;
    if (v4)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (v4)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v11 < v1)
  {
    goto LABEL_26;
  }

  result = v0[4];
  if (v11 < v12)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_26D1D7C38()
{
  sub_26D1BCB9C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_26D1D7C94(unsigned __int8 a1, uint64_t a2)
{
  result = sub_26D1E019C(a1, a2);
  if (!v2 && !v5)
  {
    if (a1 <= 3u)
    {
      v8 = 0xE800000000000000;
      v9 = 0x6874754174616843;
      if (a1 != 2)
      {
        v9 = 0x61684370756F7247;
        v8 = 0xED00006874754174;
      }

      v10 = 0xD000000000000010;
      v11 = 0x800000026D23B360;
      if (a1)
      {
        v10 = 0xD00000000000001BLL;
        v11 = 0x800000026D23B340;
      }

      if (a1 <= 1u)
      {
        v6 = v10;
      }

      else
      {
        v6 = v9;
      }

      if (a1 <= 1u)
      {
        v7 = v11;
      }

      else
      {
        v7 = v8;
      }
    }

    else if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v6 = 0x687475417466;
      }

      else
      {
        v6 = 0xD000000000000011;
      }

      if (a1 == 4)
      {
        v7 = 0xE600000000000000;
      }

      else
      {
        v7 = 0x800000026D23B320;
      }
    }

    else if (a1 == 6)
    {
      v7 = 0xEE00687475416873;
      v6 = 0x7550636F6C6F6567;
    }

    else if (a1 == 7)
    {
      v6 = 0xD000000000000010;
      v7 = 0x800000026D23B300;
    }

    else
    {
      v7 = 0xE300000000000000;
      v6 = 7632965;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v12 = v6;
    *(v12 + 8) = v7;
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26D1D7E44(signed __int8 a1, uint64_t a2)
{
  result = sub_26D1E75B8(a1, a2);
  if (!v2 && !v5)
  {
    v6 = *&aAppref[8 * a1];
    v7 = *&aTransporuuidVa[8 * a1 + 16];
    sub_26D1B7F48();
    swift_allocError();
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_26D1D7ED8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0830, &qword_26D2304A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v150 = &v125 - v6;
  v138 = sub_26D22D984();
  v137 = *(v138 - 8);
  v7 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v139 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0840, &qword_26D2304B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v140 = &v125 - v11;
  v149 = sub_26D22D9D4();
  v142 = *(v149 - 8);
  v12 = *(v142 + 64);
  MEMORY[0x28223BE20](v149);
  v141 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0850, &qword_26D2304B8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v145 = &v125 - v16;
  v17 = sub_26D22D9A4();
  v143 = *(v17 - 8);
  v144 = v17;
  v18 = *(v143 + 64);
  MEMORY[0x28223BE20](v17);
  v146 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0860, &qword_26D2304C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v148 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v156 = &v125 - v24;
  v155 = sub_26D22D9C4();
  v153 = *(v155 - 8);
  v25 = *(v153 + 64);
  v26 = MEMORY[0x28223BE20](v155);
  v147 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v154 = &v125 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0870, &qword_26D2304C8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v151 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v158 = (&v125 - v33);
  v157 = sub_26D22D9B4();
  v159 = *(v157 - 8);
  v34 = *(v159 + 64);
  v35 = MEMORY[0x28223BE20](v157);
  v152 = &v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v125 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0880, &qword_26D2304D0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v43 = &v125 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v160 = &v125 - v44;
  v45 = sub_26D22D994();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v125 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v52 = &v125 - v51;
  v53 = a1;
  v54 = sub_26D1E1120();
  if (v2)
  {

    return;
  }

  v129 = v43;
  v135 = v53;
  v130 = v50;
  v133 = v45;
  v131 = v46;
  v134 = v52;
  v132 = v38;
  v55 = sub_26D1D99E0(v54, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v56 = v160;
  sub_26D1C9468(0, 0, v55, v160);
  v57 = v131;
  v59 = v131 + 48;
  v58 = *(v131 + 48);
  v60 = v133;
  v61 = v58(v56, 1, v133);
  v128 = v58;
  if (v61 == 1)
  {
    (*(v57 + 104))(v134, *MEMORY[0x277CF29A8], v60);
    v62 = v58(v56, 1, v60);
    v63 = v132;
    v64 = v159;
    if (v62 != 1)
    {
      sub_26D1B950C(v56, &qword_2804E0880, &qword_26D2304D0);
    }
  }

  else
  {
    (*(v57 + 32))(v134, v56, v60);
    v63 = v132;
    v64 = v159;
  }

  v65 = v158;
  sub_26D1C94A8(1u, 0, v55, v158);
  v127 = v59;
  v160 = v55;
  v67 = *(v64 + 48);
  v68 = v157;
  if ((v67)(v65, 1, v157) == 1)
  {
    (*(v64 + 104))(v63, *MEMORY[0x277CF29D8], v68);
    if ((v67)(v65, 1, v68) != 1)
    {
      sub_26D1B950C(v65, &qword_2804E0870, &qword_26D2304C8);
    }
  }

  else
  {
    (*(v64 + 32))(v63, v65, v68);
  }

  v69 = v156;
  sub_26D1C97C4(2u, 0, v160, v156);
  v158 = v67;
  v70 = v153;
  v71 = v153 + 48;
  v72 = *(v153 + 48);
  v73 = v155;
  v74 = v72(v69, 1, v155);
  v126 = v72;
  if (v74 == 1)
  {
    (*(v70 + 104))(v154, *MEMORY[0x277CF29F0], v73);
    v75 = v72(v69, 1, v73);
    v76 = v71;
    if (v75 != 1)
    {
      sub_26D1B950C(v69, &qword_2804E0860, &qword_26D2304C0);
    }
  }

  else
  {
    (*(v70 + 32))(v154, v69, v73);
    v76 = v71;
  }

  v77 = v129;
  sub_26D1C9468(3u, 0, v160, v129);
  v78 = v130;
  v156 = v76;
  v79 = v133;
  v80 = v128;
  v81 = v77;
  if (v128(v77, 1, v133) == 1)
  {
    (*(v131 + 104))(v78, *MEMORY[0x277CF29A8], v79);
    v82 = v80(v77, 1, v79);
    v83 = v152;
    if (v82 != 1)
    {
      sub_26D1B950C(v81, &qword_2804E0880, &qword_26D2304D0);
    }
  }

  else
  {
    (*(v131 + 32))(v78, v77, v79);
    v83 = v152;
  }

  v84 = v151;
  sub_26D1C94A8(4u, 0, v160, v151);
  v85 = v157;
  v86 = v158;
  if ((v158)(v84, 1, v157) == 1)
  {
    (*(v159 + 104))(v83, *MEMORY[0x277CF29D8], v85);
    v87 = v86(v84, 1, v85);
    v88 = v149;
    v89 = v150;
    if (v87 != 1)
    {
      sub_26D1B950C(v84, &qword_2804E0870, &qword_26D2304C8);
    }
  }

  else
  {
    (*(v159 + 32))(v83, v84, v85);
    v88 = v149;
    v89 = v150;
  }

  v90 = v148;
  sub_26D1C97C4(5u, 0, v160, v148);
  v91 = v155;
  v92 = v126;
  if (v126(v90, 1, v155) == 1)
  {
    v93 = v90;
    (*(v153 + 104))(v147, *MEMORY[0x277CF29F0], v91);
    v94 = v92(v90, 1, v91);
    v95 = v146;
    if (v94 != 1)
    {
      sub_26D1B950C(v93, &qword_2804E0860, &qword_26D2304C0);
    }
  }

  else
  {
    (*(v153 + 32))(v147, v90, v91);
    v95 = v146;
  }

  v96 = v145;
  sub_26D1C9804(6u, 0, v160, v145);
  v158 = 0;
  v98 = v143;
  v97 = v144;
  v99 = *(v143 + 48);
  if (v99(v96, 1, v144) == 1)
  {
    (*(v98 + 104))(v95, *MEMORY[0x277CF29C0], v97);
    v100 = v99(v96, 1, v97);
    v101 = v157;
    v102 = v141;
    v103 = v142;
    v104 = v135;
    if (v100 != 1)
    {
      sub_26D1B950C(v96, &qword_2804E0850, &qword_26D2304B8);
    }
  }

  else
  {
    (*(v98 + 32))(v95, v96, v97);
    v101 = v157;
    v102 = v141;
    v103 = v142;
    v104 = v135;
  }

  v105 = v140;
  v106 = v158;
  sub_26D1C9844(7u, 0, v160, v140);
  v158 = v106;
  if (v106)
  {

    (*(v143 + 8))(v95, v144);
    v107 = *(v153 + 8);
    v108 = v155;
    v107(v147, v155);
    v109 = *(v159 + 8);
    v109(v152, v101);
    v110 = v101;
    v111 = *(v131 + 8);
    v112 = v133;
    v111(v130, v133);
    v107(v154, v108);
    v109(v132, v110);
    v113 = v134;
    v114 = v112;
LABEL_39:
    v111(v113, v114);
    return;
  }

  v115 = *(v103 + 48);
  if (v115(v105, 1, v88) == 1)
  {
    (*(v103 + 104))(v102, *MEMORY[0x277CF2A08], v88);
    if (v115(v105, 1, v88) != 1)
    {
      sub_26D1B950C(v140, &qword_2804E0840, &qword_26D2304B0);
    }
  }

  else
  {
    (*(v103 + 32))(v102, v105, v88);
  }

  v116 = v158;
  sub_26D1C9884(8u, 0, v160, v89);
  v158 = v116;
  if (v116)
  {

    v117 = v135;

    (*(v142 + 8))(v102, v88);
    (*(v143 + 8))(v95, v144);
    v118 = *(v153 + 8);
    v119 = v155;
    v118(v147, v155);
    v120 = *(v159 + 8);
    v121 = v157;
    v120(v152, v157);
    v111 = *(v131 + 8);
    v122 = v133;
    v111(v130, v133);
    v118(v154, v119);
    v120(v132, v121);
    v113 = v134;
    v114 = v122;
    goto LABEL_39;
  }

  v123 = *(v137 + 48);
  if (v123(v89, 1, v138) == 1)
  {
    v124 = v138;
    (*(v137 + 104))(v139, *MEMORY[0x277CF2990], v138);
    if (v123(v150, 1, v124) != 1)
    {
      sub_26D1B950C(v150, &qword_2804E0830, &qword_26D2304A8);
    }
  }

  else
  {
    (*(v137 + 32))(v139, v150, v138);
  }

  sub_26D22D9E4();
  v66 = v135;
}

void sub_26D1D9334(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0828, &qword_26D2304A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v38 - v5;
  v7 = sub_26D22D9F4();
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v38 - v13;
  v15 = sub_26D22D5F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = v48;
  v22 = sub_26D1E1120();
  if (v21)
  {

LABEL_4:
    return;
  }

  v39 = v6;
  v40 = v10;
  v38[4] = v7;
  v42 = v14;
  v43 = v15;
  v48 = v19;
  v41 = v16;
  v23 = sub_26D1D99E0(v22, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v24 = sub_26D1E25A8();

  v25 = sub_26D1D99E0(v24, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

  sub_26D1E6390(0, v23);
  v27 = v26;
  sub_26D1E75B8(1u, v23);
  if (!v28)
  {
    sub_26D1B7F48();
    v34 = swift_allocError();
    *v35 = xmmword_26D230AE0;
    *(v35 + 16) = 0;
    *(v35 + 24) = 1;
    swift_willThrow();
    v46 = 0x6D616E5B6D726170;
    v47 = 0xEB00000000273D65;
    MEMORY[0x26D6B6C70](0x6570795468747541, 0xE800000000000000);
    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v30 = v46;
    v31 = v47;
    sub_26D1B7F48();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = v31;
    *(v32 + 16) = v34;
    *(v32 + 24) = 7;
    swift_willThrow();

    goto LABEL_4;
  }

  v33 = v29;
  sub_26D1DA8D0(1, 1, v33);

  sub_26D1CAB9C(2u, 0, v23, v42);
  sub_26D1CAE24(3u, 0, v23);
  v38[3] = v36;
  v38[1] = sub_26D1CAE24(4u, 0, v23);
  v38[2] = v37;
  sub_26D1C656C(5u, v25, v40);
  v38[0] = v27;

  sub_26D1CB048(6u, 0, v23, v39);

  sub_26D22D5E4();
}

uint64_t sub_26D1D99E0(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}