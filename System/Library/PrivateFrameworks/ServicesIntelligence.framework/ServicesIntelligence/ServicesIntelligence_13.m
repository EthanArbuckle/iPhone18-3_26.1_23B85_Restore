uint64_t sub_230E086A8(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(a2 + 16))
  {
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v14 = 0;
    LOBYTE(v19) = -1;
    LOBYTE(v16) = -1;
LABEL_20:
    sub_230D0F460(v15, v14, v16);
    v22 = v18;
    v23 = v17;
    v24 = v19;
    return sub_230D0F460(v22, v23, v24);
  }

  result = sub_230DA41A0(7955819, 0xE300000000000000);
  if (v8)
  {
    v9 = *(a2 + 56) + 24 * result;
    v10 = *(v9 + 16);
    v42 = *v9;
    v11 = *(v9 + 8);
    result = sub_230D0DCD8(*v9, v11, *(v9 + 16));
    if (*(a2 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:
    v14 = 0;
    v15 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 255;
    goto LABEL_18;
  }

  v42 = 0;
  v11 = 0;
  v10 = 255;
  if (!*(a2 + 16))
  {
    goto LABEL_9;
  }

LABEL_4:
  result = sub_230DA41A0(0x65756C6176, 0xE500000000000000);
  if (v12)
  {
    v13 = *(a2 + 56) + 24 * result;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    result = sub_230D0DCD8(*v13, v14, *(v13 + 16));
    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v16 = 255;
    if (!*(a2 + 16))
    {
LABEL_17:
      v18 = 0;
      v17 = 0;
LABEL_18:
      v19 = 255;
      if (v10 != 3)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }
  }

  result = sub_230DA41A0(0x6974617269707865, 0xEE00656D69546E6FLL);
  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

  v21 = *(a2 + 56) + 24 * result;
  v18 = *v21;
  v17 = *(v21 + 8);
  v19 = *(v21 + 16);
  result = sub_230D0DCD8(*v21, v17, *(v21 + 16));
  if (v10 != 3)
  {
LABEL_19:
    if (v10 == 255)
    {
      goto LABEL_20;
    }

    sub_230D0F460(v42, v11, v10);
    goto LABEL_23;
  }

LABEL_13:
  if (!v11)
  {
LABEL_23:
    sub_230D0F460(v15, v14, v16);
    return sub_230D0F460(v18, v17, v19);
  }

  if (v16)
  {
    if (v16 != 255)
    {
      sub_230D0F460(v15, v14, v16);
    }

    goto LABEL_25;
  }

  if (v14 >> 60 == 15)
  {
LABEL_25:
    v25 = v18;
    v26 = v17;
    v27 = v19;
LABEL_26:
    sub_230D0F460(v25, v26, v27);
    v22 = v42;
LABEL_27:
    v23 = v11;
    v24 = 3;
    return sub_230D0F460(v22, v23, v24);
  }

  if (v19 != 2)
  {
    if (v19 != 255)
    {
      sub_230D0F460(v18, v17, v19);
    }

    goto LABEL_31;
  }

  if (v17)
  {
    goto LABEL_37;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  if (v18 > a4)
  {
LABEL_37:
    v28 = sub_230E686C0();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_230D1D20C(v42, v11, 3);
    sub_230D1D20C(v18, v17, 2);
    sub_230E686B0();
    sub_230D2C420();
    sub_230E686A0();
    if (v43)
    {
      sub_230D0F460(v42, v11, 3);
      sub_230D0F460(v18, v17, 2);
      sub_230D0F460(v15, v14, 0);
      sub_230D0F460(v42, v11, 3);
    }

    else
    {

      if (v46 >> 60 == 15)
      {
        sub_230E1AB68(v42, v11, &v44);
        sub_230D0F460(v42, v11, 3);
        sub_230D0F494(v44, *(&v44 + 1));
        sub_230D0F460(v42, v11, 3);
        sub_230D0F460(v18, v17, 2);
        v22 = v15;
        v23 = v14;
        v24 = 0;
        return sub_230D0F460(v22, v23, v24);
      }

      v38 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v44 = *a1;
      sub_230E1C168(v45, v46, v42, v11, isUniquelyReferenced_nonNull_native);
      sub_230D0F460(v42, v11, 3);
      sub_230D0F460(v42, v11, 3);
      sub_230D0F460(v18, v17, 2);
      result = sub_230D0F460(v15, v14, 0);
      *a1 = v44;
    }

    return result;
  }

  if (!*(a3 + 16))
  {
LABEL_31:
    v25 = v15;
    v26 = v14;
    v27 = 0;
    goto LABEL_26;
  }

  sub_230D1D20C(v42, v11, 3);
  sub_230D1D20C(v18, v17, 2);
  v31 = sub_230DA41A0(v42, v11);
  if ((v32 & 1) == 0)
  {
    sub_230D0F460(v42, v11, 3);
    sub_230D0F460(v18, v17, 2);
    sub_230D0F460(v15, v14, 0);
    v22 = v42;
    goto LABEL_27;
  }

  v33 = (*(a3 + 56) + 16 * v31);
  v40 = v11;
  v34 = *v33;
  v35 = v33[1];
  sub_230D0DD0C(*v33, v35);
  v36 = *a1;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *a1;
  sub_230E1C168(v34, v35, v42, v40, v37);
  sub_230D0F460(v42, v40, 3);
  sub_230D0F460(v15, v14, 0);
  sub_230D0F460(v18, v17, 2);
  result = sub_230D0F460(v42, v40, 3);
  *a1 = v45;
  return result;
}

uint64_t sub_230E08C80(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(a2 + 16))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LOBYTE(v21) = -1;
    LOBYTE(v14) = -1;
LABEL_22:
    sub_230D0F460(v19, v20, v14);
    v26 = v18;
    v27 = v17;
    v28 = v21;
    return sub_230D0F460(v26, v27, v28);
  }

  result = sub_230DA41A0(7955819, 0xE300000000000000);
  if (v8)
  {
    v9 = *(a2 + 56) + 24 * result;
    v10 = *(v9 + 16);
    v49 = *v9;
    v11 = *(v9 + 8);
    result = sub_230D0DCD8(*v9, v11, *(v9 + 16));
    if (*(a2 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:
    v16 = 0;
    v15 = 0;
    v18 = 0;
    v17 = 0;
    v14 = 255;
    goto LABEL_18;
  }

  v49 = 0;
  v11 = 0;
  v10 = 255;
  if (!*(a2 + 16))
  {
    goto LABEL_9;
  }

LABEL_4:
  result = sub_230DA41A0(0x65756C6176, 0xE500000000000000);
  if (v12)
  {
    v13 = *(a2 + 56) + 24 * result;
    v14 = *(v13 + 16);
    v15 = *v13;
    v16 = *(v13 + 8);
    result = sub_230D0DCD8(*v13, v16, *(v13 + 16));
    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }

LABEL_11:
    result = sub_230DA41A0(0x6974617269707865, 0xEE00656D69546E6FLL);
    if (v22)
    {
      v23 = *(a2 + 56) + 24 * result;
      v21 = *(v23 + 16);
      v18 = *v23;
      v17 = *(v23 + 8);
      result = sub_230D0DCD8(*v23, v17, *(v23 + 16));
      if (v10 != 3)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v15 = 0;
  v16 = 0;
  v14 = 255;
  if (*(a2 + 16))
  {
    goto LABEL_11;
  }

LABEL_17:
  v18 = 0;
  v17 = 0;
LABEL_18:
  v21 = 255;
  if (v10 != 3)
  {
LABEL_19:
    if (v10 != 255)
    {
      sub_230D0F460(v49, v11, v10);
    }

    goto LABEL_21;
  }

LABEL_13:
  if (!v11)
  {
LABEL_21:
    v19 = v15;
    v20 = v16;
    goto LABEL_22;
  }

  v24 = v11;
  if (v14)
  {
    v25 = v49;
    if (v14 != 255)
    {
      sub_230D0F460(v15, v16, v14);
    }

    goto LABEL_25;
  }

  v25 = v49;
  if (v16 >> 60 == 15)
  {
LABEL_25:
    v29 = v18;
    v30 = v17;
    v31 = v21;
LABEL_26:
    sub_230D0F460(v29, v30, v31);
    v26 = v25;
    v27 = v24;
    v28 = 3;
    return sub_230D0F460(v26, v27, v28);
  }

  if (v21 != 2)
  {
    if (v21 == 255)
    {
LABEL_31:
      v29 = v15;
      v30 = v16;
      v31 = 0;
      goto LABEL_26;
    }

    v32 = v18;
    v33 = v17;
    v34 = v21;
LABEL_30:
    sub_230D0F460(v32, v33, v34);
    goto LABEL_31;
  }

  if (v17)
  {
    goto LABEL_37;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  if (v18 > a4)
  {
LABEL_37:
    v35 = sub_230E686C0();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_230D1D20C(v49, v24, 3);
    sub_230D1D20C(v18, v17, 2);
    sub_230E686B0();
    sub_230E1E098();
    sub_230E686A0();
    if (v4)
    {
      sub_230D0F460(v49, v24, 3);
      sub_230D0F460(v18, v17, 2);
      sub_230D0F460(v15, v16, 0);
      sub_230D0F460(v49, v24, 3);
    }

    else
    {

      if (!v51)
      {
        sub_230E1AC18(v49, v24, &v50);
        sub_230D0F460(v49, v24, 3);
        sub_230DE9FF0(v50);
        sub_230D0F460(v49, v24, 3);
        sub_230D0F460(v18, v17, 2);
        v26 = v15;
        v27 = v16;
        v28 = 0;
        return sub_230D0F460(v26, v27, v28);
      }

      v55 = v51;
      v56 = v52;
      v57 = v53;
      v58 = v54;
      v38 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v50 = *a1;
      sub_230E1C46C(&v55, v49, v24, isUniquelyReferenced_nonNull_native);
      sub_230D0F460(v49, v24, 3);
      sub_230D0F460(v49, v24, 3);
      sub_230D0F460(v18, v17, 2);
      result = sub_230D0F460(v15, v16, 0);
      *a1 = v50;
    }

    return result;
  }

  if (!*(a3 + 16))
  {
    goto LABEL_31;
  }

  sub_230D1D20C(v49, v24, 3);
  sub_230D1D20C(v18, v17, 2);
  v40 = sub_230DA41A0(v49, v24);
  if ((v41 & 1) == 0)
  {
    sub_230D0F460(v49, v24, 3);
    v32 = v18;
    v33 = v17;
    v34 = 2;
    goto LABEL_30;
  }

  v42 = (*(a3 + 56) + 48 * v40);
  v44 = v42[1];
  v43 = v42[2];
  v59[0] = *v42;
  v59[1] = v44;
  v59[2] = v43;
  sub_230E1E0EC(v59, &v51);
  v45 = *a1;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *a1;
  sub_230E1C46C(v59, v49, v24, v46);
  sub_230D0F460(v49, v24, 3);
  sub_230D0F460(v15, v16, 0);
  sub_230D0F460(v18, v17, 2);
  result = sub_230D0F460(v49, v24, 3);
  *a1 = v51;
  return result;
}

uint64_t sub_230E0920C()
{
  type metadata accessor for ServicesIntelligenceXPC.Server();
  inited = swift_initStaticObject();
  result = sub_230E68950();
  qword_281566880 = inited;
  return result;
}

uint64_t static ServicesIntelligenceXPC.Server.shared.getter()
{
  if (qword_281566860 != -1)
  {
    swift_once();
  }
}

uint64_t sub_230E092C4()
{
  v0 = sub_230E68E00();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  sub_230E68950();
  sub_230E68DF0();
  v3 = sub_230E68E50();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_230E68E40();

  return sub_230E68950();
}

uint64_t sub_230E0947C()
{
  v0 = sub_230E68E70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230E68E60();
  v6 = sub_230E68E30();
  (*(v1 + 8))(v5, v0);
  if (v6)
  {
    _s6ServerC14SessionHandlerCMa();
    sub_230E1E050(&qword_27DB5D7A0, v7, _s6ServerC14SessionHandlerCMa);
    return sub_230E68E10();
  }

  else
  {
    sub_230E68950();
    return sub_230E68E20();
  }
}

uint64_t sub_230E0962C@<X0>(uint64_t *a1@<X8>)
{
  sub_230E68950();
  _s6ServerC14SessionHandlerCMa();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

double sub_230E09684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v39 = sub_230E68EB0();
  v41 = *(v39 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v39, v4);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v37 - v8;
  v10 = sub_230E68940();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230E68930();
  v16 = sub_230E68920();
  v18 = v17;
  (*(v11 + 8))(v15, v10);
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_230E69540();

  strcpy(&v54, "[XPCServer][");
  BYTE13(v54) = 0;
  HIWORD(v54) = -5120;
  v43 = v16;
  v44 = v18;
  MEMORY[0x23191DA00](v16, v18);
  MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E847A0);
  sub_230E68950();

  sub_230E1A374();
  sub_230E68EA0();
  v59 = v51;
  v60 = v52;
  v61[0] = v53[0];
  *(v61 + 9) = *(v53 + 9);
  v56 = v48;
  v57 = v49;
  v58 = v50;
  v54 = v46;
  v55 = v47;
  v19 = sub_230E69310();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v21 = v40;
  v20 = v41;
  v22 = v39;
  (*(v41 + 16))(v40, a1, v39);
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = (v3 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v20;
  v26 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = v9;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v25 + 32))(v27 + v23, v21, v22);
  v28 = (v27 + v24);
  v29 = v44;
  *v28 = v43;
  v28[1] = v29;
  *(v27 + v26) = v42;
  v30 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  v31 = v61[0];
  v30[6] = v60;
  v30[7] = v31;
  *(v30 + 121) = *(v61 + 9);
  v32 = v57;
  v30[2] = v56;
  v30[3] = v32;
  v33 = v59;
  v30[4] = v58;
  v30[5] = v33;
  v34 = v55;
  *v30 = v54;
  v30[1] = v34;

  sub_230E19C6C(0, 0, v38, &unk_230E7F020, v27);

  v35 = v45;
  *(v45 + 32) = 0;
  result = 0.0;
  *v35 = 0u;
  v35[1] = 0u;
  return result;
}

uint64_t sub_230E09B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[152] = a8;
  v8[151] = a7;
  v8[150] = a6;
  v8[149] = a5;
  v8[148] = a4;
  return MEMORY[0x2822009F8](sub_230E09B50, 0, 0);
}

uint64_t sub_230E09B50()
{
  v1 = *(v0 + 1184);
  if (sub_230E68E80())
  {
    v2 = *(v0 + 1216);
    v3 = *(v0 + 1200);
    v4 = *(v0 + 1192);
    sub_230E69540();

    MEMORY[0x23191DA00](v4, v3);
    MEMORY[0x23191DA00](0xD000000000000014, 0x8000000230E847E0);
    sub_230E68950();

    *(v0 + 16) = *v2;
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[4];
    *(v0 + 64) = v2[3];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v2[5];
    v9 = v2[6];
    v10 = v2[7];
    *(v0 + 137) = *(v2 + 121);
    *(v0 + 112) = v9;
    *(v0 + 128) = v10;
    *(v0 + 96) = v8;
    v11 = swift_task_alloc();
    *(v0 + 1224) = v11;
    *v11 = v0;
    v11[1] = sub_230E09D00;

    return sub_230E0A394(v0 + 160, (v0 + 16));
  }

  else
  {
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_230E09D00()
{
  v2 = *(*v1 + 1224);
  v5 = *v1;
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v3 = sub_230E0A0B8;
  }

  else
  {
    v3 = sub_230E09E14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E09E14()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 240);
  *(v0 + 992) = *(v0 + 224);
  *(v0 + 1008) = v4;
  *(v0 + 1024) = *(v0 + 256);
  v5 = *(v0 + 176);
  *(v0 + 928) = *(v0 + 160);
  *(v0 + 944) = v5;
  v6 = *(v0 + 208);
  *(v0 + 960) = *(v0 + 192);
  *(v0 + 976) = v6;
  *(v0 + 1033) = *(v0 + 265);
  sub_230E69540();

  MEMORY[0x23191DA00](v2, v1);
  MEMORY[0x23191DA00](0xD00000000000001ALL, 0x8000000230E84840);
  sub_230E68950();

  v7 = *(v0 + 1008);
  *(v0 + 864) = *(v0 + 992);
  *(v0 + 880) = v7;
  *(v0 + 896) = *(v0 + 1024);
  *(v0 + 905) = *(v0 + 1033);
  v8 = *(v0 + 944);
  *(v0 + 800) = *(v0 + 928);
  *(v0 + 816) = v8;
  v9 = *(v0 + 976);
  *(v0 + 832) = *(v0 + 960);
  *(v0 + 848) = v9;
  sub_230DFABE0(v0 + 800);
  v10 = *(v0 + 880);
  *(v0 + 1120) = *(v0 + 864);
  *(v0 + 1136) = v10;
  *(v0 + 1152) = *(v0 + 896);
  *(v0 + 1161) = *(v0 + 905);
  v11 = *(v0 + 816);
  *(v0 + 1056) = *(v0 + 800);
  *(v0 + 1072) = v11;
  v12 = *(v0 + 848);
  *(v0 + 1088) = *(v0 + 832);
  *(v0 + 1104) = v12;
  sub_230E1DE8C();
  sub_230E68E90();
  v13 = *(v0 + 1136);
  *(v0 + 736) = *(v0 + 1120);
  *(v0 + 752) = v13;
  *(v0 + 768) = *(v0 + 1152);
  *(v0 + 777) = *(v0 + 1161);
  v14 = *(v0 + 1072);
  *(v0 + 672) = *(v0 + 1056);
  *(v0 + 688) = v14;
  v15 = *(v0 + 1104);
  *(v0 + 704) = *(v0 + 1088);
  *(v0 + 720) = v15;
  sub_230DFB3A0(v0 + 672);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v16 = qword_27DB5A438;
  *(v0 + 1240) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230E0A058, v16, 0);
}

uint64_t sub_230E0A058()
{
  v1 = *(v0 + 1240);
  sub_230D05278();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230E0A0B8()
{
  v1 = *(v0 + 1184);
  if (sub_230E68E80())
  {
    v17 = *(v0 + 1232);
    v2 = *(v0 + 1200);
    v3 = *(v0 + 1192);
    v16 = *(v0 + 1184);
    v4 = sub_230E1D98C(v17);
    v6 = v5;
    sub_230E69540();

    MEMORY[0x23191DA00](v3, v2);
    MEMORY[0x23191DA00](0xD000000000000014, 0x8000000230E84800);
    MEMORY[0x23191DA00](v4, v6);
    sub_230E68950();

    sub_230E69540();

    MEMORY[0x23191DA00](v3, v2);
    MEMORY[0x23191DA00](0xD00000000000001ALL, 0x8000000230E84820);
    sub_230E68950();

    *(v0 + 416) = v4;
    *(v0 + 424) = v6;
    sub_230DFAB18(v0 + 416);
    v7 = *(v0 + 496);
    *(v0 + 608) = *(v0 + 480);
    *(v0 + 624) = v7;
    *(v0 + 640) = *(v0 + 512);
    *(v0 + 649) = *(v0 + 521);
    v8 = *(v0 + 432);
    *(v0 + 544) = *(v0 + 416);
    *(v0 + 560) = v8;
    v9 = *(v0 + 464);
    *(v0 + 576) = *(v0 + 448);
    *(v0 + 592) = v9;
    sub_230E1DE8C();
    sub_230E68E90();
    MEMORY[0x23191E910](v17);
    v10 = *(v0 + 624);
    *(v0 + 352) = *(v0 + 608);
    *(v0 + 368) = v10;
    *(v0 + 384) = *(v0 + 640);
    *(v0 + 393) = *(v0 + 649);
    v11 = *(v0 + 560);
    *(v0 + 288) = *(v0 + 544);
    *(v0 + 304) = v11;
    v12 = *(v0 + 592);
    *(v0 + 320) = *(v0 + 576);
    *(v0 + 336) = v12;
    sub_230DFB3A0(v0 + 288);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v13 = qword_27DB5A438;
    *(v0 + 1240) = qword_27DB5A438;

    return MEMORY[0x2822009F8](sub_230E0A058, v13, 0);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 1232));
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_230E0A394(uint64_t a1, _OWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v2 + 8824) = a2;
  *(v2 + 8816) = a1;
  v4 = sub_230E68D80();
  *(v2 + 8832) = v4;
  v5 = *(v4 - 8);
  *(v2 + 8840) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 8848) = swift_task_alloc();
  *(v2 + 8856) = swift_task_alloc();
  *(v2 + 8864) = swift_task_alloc();
  *(v2 + 8872) = swift_task_alloc();
  *(v2 + 8880) = swift_task_alloc();
  *(v2 + 8888) = swift_task_alloc();
  *(v2 + 8896) = swift_task_alloc();
  *(v2 + 8904) = swift_task_alloc();
  v7 = a2[7];
  *(v2 + 112) = a2[6];
  *(v2 + 128) = v7;
  *(v2 + 137) = *(a2 + 121);
  v8 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v8;
  v9 = a2[5];
  *(v2 + 80) = a2[4];
  *(v2 + 96) = v9;
  v10 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v10;
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0A50C, 0, 0);
}

uint64_t sub_230E0A50C()
{
  v101 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8824);
  *(v0 + 1040) = *v1;
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  *(v0 + 1056) = v1[1];
  *(v0 + 1104) = v3;
  *(v0 + 1088) = v2;
  *(v0 + 1072) = v4;
  v6 = v1[6];
  v5 = v1[7];
  v7 = *(v1 + 121);
  *(v0 + 1120) = v1[5];
  *(v0 + 1161) = v7;
  *(v0 + 1152) = v5;
  *(v0 + 1136) = v6;
  switch(sub_230DEE4B8(v0 + 1040))
  {
    case 1u:
      v64 = sub_230D04BB0(v0 + 1040);
      v66 = *(v64 + 16);
      v65 = *(v64 + 32);
      *(v0 + 6192) = *v64;
      *(v0 + 6208) = v66;
      *(v0 + 6224) = v65;
      v68 = *(v64 + 64);
      v67 = *(v64 + 80);
      v69 = *(v64 + 48);
      *(v0 + 6288) = *(v64 + 96);
      *(v0 + 6256) = v68;
      *(v0 + 6272) = v67;
      *(v0 + 6240) = v69;
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 9072) = qword_27DB5A438;
      *(v0 + 1177) = 33;
      v70 = swift_task_alloc();
      *(v0 + 9080) = v70;
      *v70 = v0;
      v70[1] = sub_230E0CE04;
      v71 = *MEMORY[0x277D85DE8];
      v11 = v0 + 6944;
      v12 = (v0 + 1177);
      goto LABEL_65;
    case 2u:
      v34 = sub_230D04BB0(v0 + 1040);
      v35 = *v34;
      v36 = *(v34 + 8);
      v37 = *(v34 + 16);
      v38 = *(v34 + 24);
      v39 = *(v34 + 32);
      if (qword_27DB5A430 != -1)
      {
        v100 = *(v34 + 32);
        swift_once();
        v39 = v100;
      }

      *(v0 + 6296) = v35;
      *(v0 + 6304) = v36;
      *(v0 + 6312) = v37;
      *(v0 + 6320) = v38;
      *(v0 + 6328) = v39;
      v40 = swift_task_alloc();
      *(v0 + 9160) = v40;
      *v40 = v0;
      v40[1] = sub_230E0DD78;
      v41 = *MEMORY[0x277D85DE8];

      return ServicesIntelligenceProvider.logOperationMetrics(_:amsBag:)(v0 + 8504, (v0 + 6296), 0);
    case 3u:
      v56 = sub_230D04BB0(v0 + 1040);
      v58 = *v56;
      v57 = v56[1];
      v59 = swift_task_alloc();
      *(v0 + 9176) = v59;
      *v59 = v0;
      v59[1] = sub_230E0E114;
      v60 = *MEMORY[0x277D85DE8];

      return sub_230DFCD00(v58, v57);
    case 4u:
      v26 = sub_230D04BB0(v0 + 1040);
      *(v0 + 4282) = *v26;
      *(v0 + 9192) = *(v26 + 8);
      *(v0 + 9200) = *(v26 + 16);
      *(v0 + 9208) = *(v26 + 24);
      *(v0 + 9216) = *(v26 + 32);
      *(v0 + 9224) = *(v26 + 40);
      *(v0 + 9232) = *(v26 + 48);
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 9240) = qword_27DB5A438;
      *(v0 + 1178) = 16;
      v27 = swift_task_alloc();
      *(v0 + 9248) = v27;
      *v27 = v0;
      v27[1] = sub_230E0E468;
      v28 = *MEMORY[0x277D85DE8];
      v11 = v0 + 7544;
      v12 = (v0 + 1178);
      goto LABEL_65;
    case 5u:
      v74 = sub_230D04BB0(v0 + 1040);
      *(v0 + 9368) = v74;
      *(v0 + 4283) = *v74;
      *(v0 + 9376) = *(v74 + 8);
      *(v0 + 9384) = *(v74 + 16);
      v75 = *(v74 + 88);
      v76 = *(v74 + 104);
      v77 = *(v74 + 120);
      *(v0 + 6064) = *(v74 + 136);
      *(v0 + 6032) = v76;
      *(v0 + 6048) = v77;
      *(v0 + 6016) = v75;
      v78 = *(v74 + 24);
      v79 = *(v74 + 40);
      v80 = *(v74 + 72);
      *(v0 + 5984) = *(v74 + 56);
      *(v0 + 6000) = v80;
      *(v0 + 5952) = v78;
      *(v0 + 5968) = v79;
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 9392) = qword_27DB5A438;
      *(v0 + 1674) = 16;
      v81 = swift_task_alloc();
      *(v0 + 9400) = v81;
      *v81 = v0;
      v81[1] = sub_230E0F960;
      v82 = *MEMORY[0x277D85DE8];
      v11 = v0 + 7944;
      v12 = (v0 + 1674);
      goto LABEL_65;
    case 6u:
      v85 = sub_230D04BB0(v0 + 1040);
      *(v0 + 4409) = *v85;
      *(v0 + 9520) = *(v85 + 8);
      *(v0 + 9528) = *(v85 + 16);
      *(v0 + 9536) = *(v85 + 24);
      *(v0 + 9544) = *(v85 + 32);
      *(v0 + 9552) = *(v85 + 40);
      *(v0 + 9560) = *(v85 + 48);
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 9568) = qword_27DB5A438;
      *(v0 + 154) = 16;
      v86 = (v0 + 154);
      v87 = swift_task_alloc();
      *(v0 + 9576) = v87;
      *v87 = v0;
      v87[1] = sub_230E10E44;
      v88 = *MEMORY[0x277D85DE8];
      v89 = 8384;
      goto LABEL_55;
    case 7u:
      v61 = sub_230D04BB0(v0 + 1040);
      *(v0 + 4411) = *v61;
      *(v0 + 9896) = *(v61 + 8);
      *(v0 + 9904) = *(v61 + 16);
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 9912) = qword_27DB5A438;
      *(v0 + 3659) = 15;
      v62 = swift_task_alloc();
      *(v0 + 9920) = v62;
      *v62 = v0;
      v62[1] = sub_230E13ADC;
      v63 = *MEMORY[0x277D85DE8];
      v11 = v0 + 7744;
      v12 = (v0 + 3659);
      goto LABEL_65;
    case 8u:
      v95 = sub_230D04BB0(v0 + 1040);
      *(v0 + 4537) = *v95;
      *(v0 + 9992) = *(v95 + 8);
      *(v0 + 10000) = *(v95 + 16);
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 10008) = qword_27DB5A438;
      *(v0 + 4153) = 15;
      v96 = swift_task_alloc();
      *(v0 + 10016) = v96;
      *v96 = v0;
      v96[1] = sub_230E1469C;
      v97 = *MEMORY[0x277D85DE8];
      v11 = v0 + 7304;
      v12 = (v0 + 4153);
      goto LABEL_65;
    case 9u:
      v31 = sub_230D04BB0(v0 + 1040);
      *(v0 + 4538) = *v31;
      *(v0 + 10136) = *(v31 + 8);
      *(v0 + 10144) = *(v31 + 16);
      *(v0 + 10152) = *(v31 + 24);
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 10160) = qword_27DB5A438;
      *(v0 + 667) = 17;
      v32 = swift_task_alloc();
      *(v0 + 10168) = v32;
      *v32 = v0;
      v32[1] = sub_230E15BA8;
      v33 = *MEMORY[0x277D85DE8];
      v11 = v0 + 6904;
      v12 = (v0 + 667);
      goto LABEL_65;
    case 0xAu:
      v92 = sub_230D04BB0(v0 + 1040);
      *(v0 + 4539) = *v92;
      *(v0 + 10288) = *(v92 + 8);
      *(v0 + 10296) = *(v92 + 16);
      *(v0 + 10304) = *(v92 + 24);
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 10312) = qword_27DB5A438;
      *(v0 + 2667) = 17;
      v93 = swift_task_alloc();
      *(v0 + 10320) = v93;
      *v93 = v0;
      v93[1] = sub_230E1708C;
      v94 = *MEMORY[0x277D85DE8];
      v11 = v0 + 6504;
      v12 = (v0 + 2667);
      goto LABEL_65;
    case 0xBu:
      v23 = sub_230D04BB0(v0 + 1040);
      *(v0 + 4665) = *v23;
      *(v0 + 10440) = *(v23 + 8);
      *(v0 + 10448) = *(v23 + 16);
      *(v0 + 10456) = *(v23 + 24);
      *(v0 + 10464) = *(v23 + 32);
      *(v0 + 10472) = *(v23 + 40);
      *(v0 + 4666) = *(v23 + 48);
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 10480) = qword_27DB5A438;
      *(v0 + 2171) = 17;
      v24 = swift_task_alloc();
      *(v0 + 10488) = v24;
      *v24 = v0;
      v24[1] = sub_230E1855C;
      v25 = *MEMORY[0x277D85DE8];
      v11 = v0 + 8304;
      v12 = (v0 + 2171);
      goto LABEL_65;
    case 0xCu:
      *(v0 + 9824) = *sub_230D04BB0(v0 + 1040);
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 9832) = qword_27DB5A438;
      *(v0 + 2665) = 39;
      v29 = swift_task_alloc();
      *(v0 + 9840) = v29;
      *v29 = v0;
      v29[1] = sub_230E13360;
      v30 = *MEMORY[0x277D85DE8];
      v11 = v0 + 7984;
      v12 = (v0 + 2665);
      goto LABEL_65;
    case 0xDu:
      *(v0 + 4410) = *sub_230D04BB0(v0 + 1040);
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 9760) = qword_27DB5A438;
      *(v0 + 3163) = 39;
      v83 = swift_task_alloc();
      *(v0 + 9768) = v83;
      *v83 = v0;
      v83[1] = sub_230E12AC4;
      v84 = *MEMORY[0x277D85DE8];
      v11 = v0 + 8144;
      v12 = (v0 + 3163);
      goto LABEL_65;
    case 0xEu:
      v15 = *(v0 + 8816);
      *(v0 + 5312) = 0xD000000000000015;
      *(v0 + 5320) = 0x8000000230E84A00;
      sub_230DF8DCC(v0 + 5312);
      v16 = *(v0 + 5312);
      v17 = *(v0 + 5328);
      v18 = *(v0 + 5360);
      v15[2] = *(v0 + 5344);
      v15[3] = v18;
      *v15 = v16;
      v15[1] = v17;
      v19 = *(v0 + 5417);
      v20 = *(v0 + 5376);
      v21 = *(v0 + 5392);
      v22 = *(v0 + 5408);
      goto LABEL_28;
    case 0xFu:
      v15 = *(v0 + 8816);
      *(v0 + 5440) = 49;
      *(v0 + 5448) = 0xE100000000000000;
      sub_230DF8D8C(v0 + 5440);
      v43 = *(v0 + 5440);
      v44 = *(v0 + 5456);
      v45 = *(v0 + 5488);
      v15[2] = *(v0 + 5472);
      v15[3] = v45;
      *v15 = v43;
      v15[1] = v44;
      v19 = *(v0 + 5545);
      v20 = *(v0 + 5504);
      v21 = *(v0 + 5520);
      v22 = *(v0 + 5536);
LABEL_28:
      *(v15 + 105) = v19;
      v15[5] = v21;
      v15[6] = v22;
      v15[4] = v20;
      v46 = *(v0 + 8904);
      v47 = *(v0 + 8896);
      v48 = *(v0 + 8888);
      v49 = *(v0 + 8880);
      v50 = *(v0 + 8872);
      v51 = *(v0 + 8864);
      v52 = *(v0 + 8856);
      v53 = *(v0 + 8848);

      v54 = *(v0 + 8);
      v55 = *MEMORY[0x277D85DE8];

      return v54();
    case 0x10u:
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 8912) = qword_27DB5A438;
      *(v0 + 3657) = 19;
      v13 = swift_task_alloc();
      *(v0 + 8920) = v13;
      *v13 = v0;
      v13[1] = sub_230E0B680;
      v14 = *MEMORY[0x277D85DE8];
      v11 = v0 + 6424;
      v12 = (v0 + 3657);
      goto LABEL_65;
    case 0x11u:
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 8952) = qword_27DB5A438;
      *(v0 + 3162) = 28;
      v72 = swift_task_alloc();
      *(v0 + 8960) = v72;
      *v72 = v0;
      v72[1] = sub_230E0BC8C;
      v73 = *MEMORY[0x277D85DE8];
      v11 = v0 + 6464;
      v12 = (v0 + 3162);
      goto LABEL_65;
    case 0x12u:
      if (qword_27DB5A430 != -1)
      {
        swift_once();
      }

      *(v0 + 9696) = qword_27DB5A438;
      *(v0 + 153) = 39;
      v86 = (v0 + 153);
      v90 = swift_task_alloc();
      *(v0 + 9704) = v90;
      *v90 = v0;
      v90[1] = sub_230E1234C;
      v91 = *MEMORY[0x277D85DE8];
      v89 = 8344;
LABEL_55:
      v11 = v0 + v89;
      v12 = v86;
      goto LABEL_65;
    default:
      v8 = *sub_230D04BB0(v0 + 1040);
      *(v0 + 4281) = v8;
      if (v8 == 10)
      {
        if (qword_27DB5A430 != -1)
        {
          swift_once();
        }

        *(v0 + 9032) = qword_27DB5A438;
        *(v0 + 2170) = 27;
        v9 = swift_task_alloc();
        *(v0 + 9040) = v9;
        *v9 = v0;
        v9[1] = sub_230E0C800;
        v10 = *MEMORY[0x277D85DE8];
        v11 = v0 + 6704;
        v12 = (v0 + 2170);
      }

      else
      {
        if (qword_27DB5A430 != -1)
        {
          swift_once();
        }

        *(v0 + 8992) = qword_27DB5A438;
        *(v0 + 2666) = 26;
        v98 = swift_task_alloc();
        *(v0 + 9000) = v98;
        *v98 = v0;
        v98[1] = sub_230E0C1F8;
        v99 = *MEMORY[0x277D85DE8];
        v11 = v0 + 6584;
        v12 = (v0 + 2666);
      }

LABEL_65:

      return static RequestContext.from(_:correlationID:)(v11, v12, 0, 0);
  }
}

uint64_t sub_230E0B680()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 8920);
  v2 = *(*v0 + 8912);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0B7BC, v2, 0);
}

uint64_t sub_230E0B7BC()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8912);
  v2 = *(v0 + 6424);
  v3 = *(v0 + 6432);
  v4 = *(v0 + 6440);
  *(v0 + 8928) = v4;
  v5 = *(v0 + 6448);
  v6 = *(v0 + 6449);
  v7 = *(v0 + 6456);
  *(v0 + 8936) = v7;
  *(v0 + 6384) = v2;
  *(v0 + 6392) = v3;
  *(v0 + 6400) = v4;
  *(v0 + 6408) = v5;
  *(v0 + 6409) = v6;
  *(v0 + 6416) = v7;

  v8 = swift_task_alloc();
  *(v0 + 8944) = v8;
  *v8 = v0;
  v8[1] = sub_230E0B908;
  v9 = *(v0 + 8912);
  v10 = *MEMORY[0x277D85DE8];

  return sub_230D78530(19, v0 + 6384, v9, v9, v0 + 6384);
}

uint64_t sub_230E0B908(char a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 8944);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 8936);
    v8 = *(v4 + 8928);

    v9 = *(v4 + 8904);
    v10 = *(v4 + 8896);
    v11 = *(v4 + 8888);
    v12 = *(v4 + 8880);
    v13 = *(v4 + 8872);
    v14 = *(v4 + 8864);
    v15 = *(v4 + 8856);
    v16 = *(v4 + 8848);

    v17 = *(v6 + 8);
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    v20 = *(v4 + 8936);
    v21 = *(v4 + 8928);
    *(v4 + 4154) = a1 & 1;

    v22 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E0BB40, 0, 0);
  }
}

uint64_t sub_230E0BB40()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8816);
  *(v0 + 4032) = *(v0 + 4154);
  sub_230DF8DAC(v0 + 4032);
  v2 = *(v0 + 4032);
  v3 = *(v0 + 4048);
  v4 = *(v0 + 4080);
  v1[2] = *(v0 + 4064);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 4096);
  v6 = *(v0 + 4112);
  v7 = *(v0 + 4128);
  *(v1 + 105) = *(v0 + 4137);
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v5;
  v8 = *(v0 + 8904);
  v9 = *(v0 + 8896);
  v10 = *(v0 + 8888);
  v11 = *(v0 + 8880);
  v12 = *(v0 + 8872);
  v13 = *(v0 + 8864);
  v14 = *(v0 + 8856);
  v15 = *(v0 + 8848);

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_230E0BC8C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 8960);
  v2 = *(*v0 + 8952);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0BDC8, v2, 0);
}

uint64_t sub_230E0BDC8()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8952);
  v2 = *(v0 + 6464);
  v3 = *(v0 + 6472);
  v4 = *(v0 + 6480);
  *(v0 + 8968) = v4;
  v5 = *(v0 + 6488);
  v6 = *(v0 + 6489);
  v7 = *(v0 + 6496);
  *(v0 + 8976) = v7;
  *(v0 + 8104) = v2;
  *(v0 + 8112) = v3;
  *(v0 + 8120) = v4;
  *(v0 + 8128) = v5;
  *(v0 + 8129) = v6;
  *(v0 + 8136) = v7;

  v8 = swift_task_alloc();
  *(v0 + 8984) = v8;
  *v8 = v0;
  v8[1] = sub_230E0BF14;
  v9 = *(v0 + 8952);
  v10 = *MEMORY[0x277D85DE8];

  return sub_230D81D90(28, v0 + 8104, v9, v9, v0 + 8104);
}

uint64_t sub_230E0BF14(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 8984);
  v3 = *(*v1 + 8976);
  v4 = *(*v1 + 8968);
  v5 = *(*v1 + 8952);
  v9 = *v1;
  *(*v1 + 4155) = a1;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0C0AC, 0, 0);
}

uint64_t sub_230E0C0AC()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8816);
  *(v0 + 2544) = *(v0 + 4155);
  sub_230DF8D6C(v0 + 2544);
  v2 = *(v0 + 2544);
  v3 = *(v0 + 2560);
  v4 = *(v0 + 2592);
  v1[2] = *(v0 + 2576);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 2608);
  v6 = *(v0 + 2624);
  v7 = *(v0 + 2640);
  *(v1 + 105) = *(v0 + 2649);
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v5;
  v8 = *(v0 + 8904);
  v9 = *(v0 + 8896);
  v10 = *(v0 + 8888);
  v11 = *(v0 + 8880);
  v12 = *(v0 + 8872);
  v13 = *(v0 + 8864);
  v14 = *(v0 + 8856);
  v15 = *(v0 + 8848);

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_230E0C1F8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9000);
  v2 = *(*v0 + 8992);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0C334, v2, 0);
}

uint64_t sub_230E0C334()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8992);
  v2 = *(v0 + 6584);
  v3 = *(v0 + 6592);
  v4 = *(v0 + 6600);
  *(v0 + 9008) = v4;
  v5 = *(v0 + 6608);
  v6 = *(v0 + 6609);
  v7 = *(v0 + 6616);
  *(v0 + 9016) = v7;
  *(v0 + 7704) = v2;
  *(v0 + 7712) = v3;
  *(v0 + 7720) = v4;
  *(v0 + 7728) = v5;
  *(v0 + 7729) = v6;
  *(v0 + 7736) = v7;

  v8 = swift_task_alloc();
  *(v0 + 9024) = v8;
  *v8 = v0;
  v8[1] = sub_230E0C484;
  v9 = *(v0 + 8992);
  v10 = *(v0 + 4281);
  v11 = *MEMORY[0x277D85DE8];

  return sub_230D771C0(26, v0 + 7704, v9, v10, v9, v0 + 7704);
}

uint64_t sub_230E0C484(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v4[1066] = v2;
  v4[1067] = a1;
  v4[1068] = v1;
  v5 = v3[1128];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[1127];
    v8 = v4[1126];

    v9 = v4[1113];
    v10 = v4[1112];
    v11 = v4[1111];
    v12 = v4[1110];
    v13 = v4[1109];
    v14 = v4[1108];
    v15 = v4[1107];
    v16 = v4[1106];

    v17 = v6[1];
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    v20 = v4[1127];
    v21 = v4[1126];

    v22 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E0C6B8, 0, 0);
  }
}

uint64_t sub_230E0C6B8()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8816);
  *(v0 + 3536) = *(v0 + 8536);
  sub_230DF8D4C(v0 + 3536);
  v2 = *(v0 + 3536);
  v3 = *(v0 + 3552);
  v4 = *(v0 + 3584);
  v1[2] = *(v0 + 3568);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 3600);
  v6 = *(v0 + 3616);
  v7 = *(v0 + 3632);
  *(v1 + 105) = *(v0 + 3641);
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v5;
  v8 = *(v0 + 8904);
  v9 = *(v0 + 8896);
  v10 = *(v0 + 8888);
  v11 = *(v0 + 8880);
  v12 = *(v0 + 8872);
  v13 = *(v0 + 8864);
  v14 = *(v0 + 8856);
  v15 = *(v0 + 8848);

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_230E0C800()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9040);
  v2 = *(*v0 + 9032);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0C93C, v2, 0);
}

uint64_t sub_230E0C93C()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9032);
  v2 = *(v0 + 6704);
  v3 = *(v0 + 6712);
  v4 = *(v0 + 6720);
  *(v0 + 9048) = v4;
  v5 = *(v0 + 6728);
  v6 = *(v0 + 6729);
  v7 = *(v0 + 6736);
  *(v0 + 9056) = v7;
  *(v0 + 7664) = v2;
  *(v0 + 7672) = v3;
  *(v0 + 7680) = v4;
  *(v0 + 7688) = v5;
  *(v0 + 7689) = v6;
  *(v0 + 7696) = v7;

  v8 = swift_task_alloc();
  *(v0 + 9064) = v8;
  *v8 = v0;
  v8[1] = sub_230E0CA88;
  v9 = *(v0 + 9032);
  v10 = *MEMORY[0x277D85DE8];

  return sub_230D76A40(27, v0 + 7664, v9, v9, v0 + 7664);
}

uint64_t sub_230E0CA88(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v4[1069] = v2;
  v4[1070] = a1;
  v4[1071] = v1;
  v5 = v3[1133];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[1132];
    v8 = v4[1131];

    v9 = v4[1113];
    v10 = v4[1112];
    v11 = v4[1111];
    v12 = v4[1110];
    v13 = v4[1109];
    v14 = v4[1108];
    v15 = v4[1107];
    v16 = v4[1106];

    v17 = v6[1];
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    v20 = v4[1132];
    v21 = v4[1131];

    v22 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E0CCBC, 0, 0);
  }
}

uint64_t sub_230E0CCBC()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8816);
  *(v0 + 3536) = *(v0 + 8560);
  sub_230DF8D4C(v0 + 3536);
  v2 = *(v0 + 3536);
  v3 = *(v0 + 3552);
  v4 = *(v0 + 3584);
  v1[2] = *(v0 + 3568);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 3600);
  v6 = *(v0 + 3616);
  v7 = *(v0 + 3632);
  *(v1 + 105) = *(v0 + 3641);
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v5;
  v8 = *(v0 + 8904);
  v9 = *(v0 + 8896);
  v10 = *(v0 + 8888);
  v11 = *(v0 + 8880);
  v12 = *(v0 + 8872);
  v13 = *(v0 + 8864);
  v14 = *(v0 + 8856);
  v15 = *(v0 + 8848);

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_230E0CE04()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9080);
  v2 = *(*v0 + 9072);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0CF40, v2, 0);
}

uint64_t sub_230E0CF40()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9072);
  v2 = *(v0 + 8904);
  v3 = *(v0 + 6944);
  v4 = *(v0 + 6952);
  v5 = *(v0 + 6960);
  *(v0 + 9088) = v5;
  v6 = *(v0 + 6968);
  v7 = *(v0 + 6969);
  v8 = *(v0 + 6976);
  *(v0 + 9096) = v8;
  v29 = v6;
  *(v0 + 7344) = v3;
  *(v0 + 7352) = v4;
  *(v0 + 7360) = v5;
  *(v0 + 7368) = v6;
  *(v0 + 7369) = v7;
  *(v0 + 7376) = v8;
  sub_230E1DEE0(v0 + 16, v0 + 528);

  sub_230E68D70();

  v9 = sub_230E68D60();
  v10 = sub_230E693E0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_230D7E620(0x666B726F576E7572, 0xEB00000000776F6CLL, v30);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_230D7E620(v4, v5, v30);
    *(v11 + 22) = 2080;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v11 + 24) = v14;
    _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191EAE0](v11, -1, -1);

    if (!v29)
    {
LABEL_3:
      v15 = swift_task_alloc();
      *(v0 + 9112) = v15;
      *v15 = v0;
      v16 = sub_230E0D3B8;
      goto LABEL_9;
    }
  }

  else
  {

    if (!v29)
    {
      goto LABEL_3;
    }
  }

  v17 = RequestType.rawValue.getter();
  v19 = v18;

  sub_230D33FDC(v17, v19, v8);

  sub_230E68950();
  *(v0 + 9104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 668) = 0u;
  *(v0 + 684) = 0u;
  *(v0 + 700) = 0u;
  *(v0 + 716) = 0u;
  *(v0 + 732) = 0u;
  *(v0 + 748) = 0u;
  *(v0 + 764) = 0u;
  *(v0 + 780) = 0u;
  *(v0 + 796) = 0u;
  *(v0 + 812) = 0u;
  *(v0 + 828) = 0u;
  *(v0 + 844) = 0u;
  *(v0 + 860) = 0u;
  *(v0 + 876) = 0u;
  *(v0 + 892) = 0u;
  *(v0 + 908) = 0u;
  *(v0 + 924) = 0u;
  *(v0 + 940) = 0u;
  *(v0 + 956) = 0u;
  *(v0 + 972) = 0u;
  *(v0 + 988) = 0u;
  *(v0 + 1004) = 0u;
  *(v0 + 1020) = 0u;
  *(v0 + 1036) = 0;
  *(v0 + 4540) = 93;
  v20 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 668), (v0 + 4540));
  *(v0 + 5180) = v20;
  v21 = 0.0;
  if (!v20)
  {
    v22 = *(v0 + 716);
    v23 = *(v0 + 788);
    v24 = __CFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      __break(1u);
    }

    v21 = vcvtd_n_f64_u64(v25, 0x14uLL);
  }

  *(v0 + 9128) = v21;
  *(v0 + 8720) = 0;
  v15 = swift_task_alloc();
  *(v0 + 9136) = v15;
  *v15 = v0;
  v16 = sub_230E0D510;
LABEL_9:
  v15[1] = v16;
  v26 = *(v0 + 9072);
  v27 = *MEMORY[0x277D85DE8];

  return sub_230DDDB14(v0 + 4288, v0 + 6192, v26, v0 + 7344);
}

uint64_t sub_230E0D3B8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9112);
  v4 = *v1;
  *(*v1 + 9120) = v0;

  v5 = *(v2 + 9072);
  if (v0)
  {
    v6 = sub_230E0DC8C;
  }

  else
  {
    v6 = sub_230E0DB9C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E0D510()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9136);
  v4 = *v1;
  *(*v1 + 9144) = v0;

  v5 = *(v2 + 9072);
  if (v0)
  {
    v6 = sub_230E0D79C;
  }

  else
  {
    v6 = sub_230E0D668;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E0D668()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9096);
  v2 = *(v0 + 9088);
  v3 = *(v0 + 9072);
  v4 = *(v0 + 8904);
  v5 = *(v0 + 8840);
  v6 = *(v0 + 8832);
  sub_230D39FD4(33, *(v0 + 9128), *(v0 + 5180) != 0, v0 + 7344, (v0 + 8720), *(v0 + 9104));
  (*(v5 + 8))(v4, v6);
  sub_230DFC328(v0 + 16);

  v7 = *(v0 + 9096);
  v8 = *(v0 + 9088);

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0D90C, 0, 0);
}

uint64_t sub_230E0D79C()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9144);
  v2 = *(v0 + 9128);
  v3 = *(v0 + 9104);
  v13 = *(v0 + 9096);
  v4 = *(v0 + 9088);
  v5 = *(v0 + 9072);
  v6 = *(v0 + 8904);
  v7 = *(v0 + 8840);
  v8 = *(v0 + 8832);
  v9 = *(v0 + 5180) != 0;
  *(v0 + 8720) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D39FD4(33, v2, v9, v0 + 7344, (v0 + 8720), v3);
  MEMORY[0x23191E910](v1);
  (*(v7 + 8))(v6, v8);
  sub_230DFC328(v0 + 16);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v0 + 9152) = *(v0 + 9144);
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0DA98, 0, 0);
}

uint64_t sub_230E0D90C()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8816);
  *(v0 + 4224) = *(v0 + 4352);
  *(v0 + 4240) = *(v0 + 4368);
  *(v0 + 4256) = *(v0 + 4384);
  *(v0 + 4160) = *(v0 + 4288);
  *(v0 + 4176) = *(v0 + 4304);
  *(v0 + 4192) = *(v0 + 4320);
  *(v0 + 4208) = *(v0 + 4336);
  *(v0 + 4265) = *(v0 + 4393);
  sub_230DF8C60(v0 + 4160);
  v2 = *(v0 + 4160);
  v3 = *(v0 + 4176);
  v4 = *(v0 + 4208);
  v1[2] = *(v0 + 4192);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 4224);
  v6 = *(v0 + 4240);
  v7 = *(v0 + 4256);
  *(v1 + 105) = *(v0 + 4265);
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v5;
  v8 = *(v0 + 8904);
  v9 = *(v0 + 8896);
  v10 = *(v0 + 8888);
  v11 = *(v0 + 8880);
  v12 = *(v0 + 8872);
  v13 = *(v0 + 8864);
  v14 = *(v0 + 8856);
  v15 = *(v0 + 8848);

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_230E0DA98()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[1144];
  v2 = v0[1113];
  v3 = v0[1112];
  v4 = v0[1111];
  v5 = v0[1110];
  v6 = v0[1109];
  v7 = v0[1108];
  v8 = v0[1107];
  v9 = v0[1106];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_230E0DB9C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[1137];
  v2 = v0[1136];
  v3 = v0[1134];
  (*(v0[1105] + 8))(v0[1113], v0[1104]);
  sub_230DFC328((v0 + 2));

  v4 = v0[1137];
  v5 = v0[1136];

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0D90C, 0, 0);
}

uint64_t sub_230E0DC8C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[1137];
  v2 = v0[1136];
  v3 = v0[1134];
  (*(v0[1105] + 8))(v0[1113], v0[1104]);
  sub_230DFC328((v0 + 2));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[1144] = v0[1140];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0DA98, 0, 0);
}

uint64_t sub_230E0DD78()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 9160);
  v7 = *v1;
  *(*v1 + 9168) = v0;

  if (v0)
  {
    v3 = sub_230E0E010;
  }

  else
  {
    v3 = sub_230E0DEB8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E0DEB8()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8816);
  v2 = *(v0 + 8520);
  *(v0 + 4416) = *(v0 + 8504);
  *(v0 + 4432) = v2;
  sub_230DF8C40(v0 + 4416);
  v3 = *(v0 + 4416);
  v4 = *(v0 + 4432);
  v5 = *(v0 + 4464);
  v1[2] = *(v0 + 4448);
  v1[3] = v5;
  *v1 = v3;
  v1[1] = v4;
  v6 = *(v0 + 4480);
  v7 = *(v0 + 4496);
  v8 = *(v0 + 4512);
  *(v1 + 105) = *(v0 + 4521);
  v1[5] = v7;
  v1[6] = v8;
  v1[4] = v6;
  v9 = *(v0 + 8904);
  v10 = *(v0 + 8896);
  v11 = *(v0 + 8888);
  v12 = *(v0 + 8880);
  v13 = *(v0 + 8872);
  v14 = *(v0 + 8864);
  v15 = *(v0 + 8856);
  v16 = *(v0 + 8848);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_230E0E010()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[1146];
  v2 = v0[1113];
  v3 = v0[1112];
  v4 = v0[1111];
  v5 = v0[1110];
  v6 = v0[1109];
  v7 = v0[1108];
  v8 = v0[1107];
  v9 = v0[1106];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_230E0E114(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 9176);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[1113];
    v8 = v4[1112];
    v9 = v4[1111];
    v10 = v4[1110];
    v11 = v4[1109];
    v12 = v4[1108];
    v13 = v4[1107];
    v14 = v4[1106];

    v15 = *(v6 + 8);
    v16 = *MEMORY[0x277D85DE8];

    return v15();
  }

  else
  {
    v4[1148] = a1;
    v18 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E0E31C, 0, 0);
  }
}

uint64_t sub_230E0E31C()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8816);
  *(v0 + 4544) = *(v0 + 9184);
  sub_230DF8BCC(v0 + 4544);
  v2 = *(v0 + 4544);
  v3 = *(v0 + 4560);
  v4 = *(v0 + 4592);
  v1[2] = *(v0 + 4576);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 4608);
  v6 = *(v0 + 4624);
  v7 = *(v0 + 4640);
  *(v1 + 105) = *(v0 + 4649);
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v5;
  v8 = *(v0 + 8904);
  v9 = *(v0 + 8896);
  v10 = *(v0 + 8888);
  v11 = *(v0 + 8880);
  v12 = *(v0 + 8872);
  v13 = *(v0 + 8864);
  v14 = *(v0 + 8856);
  v15 = *(v0 + 8848);

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_230E0E468()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9248);
  v2 = *(*v0 + 9240);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0E5A4, v2, 0);
}

uint64_t sub_230E0E5A4()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9240);
  v2 = *(v0 + 9200);
  v3 = *(v0 + 8896);
  v4 = *(v0 + 7544);
  v5 = *(v0 + 7552);
  v6 = *(v0 + 7560);
  *(v0 + 9256) = v6;
  v7 = *(v0 + 7568);
  v8 = *(v0 + 7569);
  v9 = *(v0 + 7576);
  *(v0 + 9264) = v9;
  v32 = v7;
  *(v0 + 7104) = v4;
  *(v0 + 7112) = v5;
  *(v0 + 7120) = v6;
  *(v0 + 7128) = v7;
  v31 = v8;
  *(v0 + 7129) = v8;
  *(v0 + 7136) = v9;

  sub_230E68D70();

  v10 = sub_230E68D60();
  v11 = sub_230E693E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_230D7E620(0xD000000000000014, 0x8000000230E805F0, v33);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_230D7E620(v5, v6, v33);
    *(v12 + 22) = 2080;
    v14 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v14);

    v15 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v12 + 24) = v15;
    _os_log_impl(&dword_230D02000, v10, v11, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v13, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);
  }

  else
  {
  }

  v16 = (v0 + 1228);
  if (v32 && ((v17 = RequestType.rawValue.getter(), v19 = v18, , LOBYTE(v17) = sub_230D33FDC(v17, v19, v9), , , (v17 & 1) != 0) || v31 >= 2))
  {
    sub_230E68950();
    *(v0 + 9272) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1180) = 0u;
    *(v0 + 1196) = 0u;
    *(v0 + 1212) = 0u;
    *(v0 + 1228) = 0u;
    *(v0 + 1244) = 0u;
    *(v0 + 1260) = 0u;
    *(v0 + 1276) = 0u;
    *(v0 + 1292) = 0u;
    *(v0 + 1308) = 0u;
    *(v0 + 1324) = 0u;
    *(v0 + 1340) = 0u;
    *(v0 + 1356) = 0u;
    *(v0 + 1372) = 0u;
    *(v0 + 1388) = 0u;
    *(v0 + 1404) = 0u;
    *(v0 + 1420) = 0u;
    *(v0 + 1436) = 0u;
    *(v0 + 1452) = 0u;
    *(v0 + 1468) = 0u;
    *(v0 + 1484) = 0u;
    *(v0 + 1500) = 0u;
    *(v0 + 1516) = 0u;
    *(v0 + 1532) = 0u;
    *(v0 + 1548) = 0;
    *(v0 + 4924) = 93;
    v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1180), (v0 + 4924));
    *(v0 + 5308) = v22;
    v23 = 0.0;
    if (!v22)
    {
      v24 = *(v0 + 1300);
      if (__CFADD__(*v16, v24))
      {
        __break(1u);
      }

      v23 = vcvtd_n_f64_u64(*v16 + v24, 0x14uLL);
    }

    *(v0 + 9296) = v23;
    *(v0 + 8760) = 0;
    v20 = swift_task_alloc();
    *(v0 + 9304) = v20;
    *v20 = v0;
    v21 = sub_230E0EB8C;
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 9280) = v20;
    *v20 = v0;
    v21 = sub_230E0EA34;
  }

  v20[1] = v21;
  v25 = *(v0 + 9240);
  v26 = *(v0 + 9200);
  v27 = *(v0 + 9192);
  v28 = *(v0 + 4282);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230D2FFF0(v0 + 8656, v28, v27, v26, v25, v0 + 7104);
}

uint64_t sub_230E0EA34()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9280);
  v4 = *v1;
  *(*v1 + 9288) = v0;

  v5 = *(v2 + 9240);
  if (v0)
  {
    v6 = sub_230E0F5A8;
  }

  else
  {
    v6 = sub_230E0F454;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E0EB8C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9304);
  v4 = *v1;
  *(*v1 + 9312) = v0;

  v5 = *(v2 + 9240);
  if (v0)
  {
    v6 = sub_230E0EE74;
  }

  else
  {
    v6 = sub_230E0ECE4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E0ECE4()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9264);
  v2 = *(v0 + 9256);
  v3 = *(v0 + 9240);
  v4 = *(v0 + 9200);
  v5 = *(v0 + 8896);
  v6 = *(v0 + 8840);
  v7 = *(v0 + 8832);
  sub_230D34594(16, *(v0 + 9296), *(v0 + 5308) != 0, v0 + 7104, (v0 + 8760), *(v0 + 9272));
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 9264);
  v9 = *(v0 + 9256);
  *(v0 + 9320) = *(v0 + 8656);

  *(v0 + 665) = 1;
  v10 = swift_task_alloc();
  *(v0 + 9328) = v10;
  *v10 = v0;
  v10[1] = sub_230E0F038;
  v11 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 7424, (v0 + 665), 0, 0);
}

uint64_t sub_230E0EE74()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9312);
  v2 = *(v0 + 9296);
  v3 = *(v0 + 9272);
  v4 = *(v0 + 9256);
  v24 = *(v0 + 9264);
  v5 = *(v0 + 9240);
  v6 = *(v0 + 9200);
  v7 = *(v0 + 8896);
  v8 = *(v0 + 8840);
  v9 = *(v0 + 8832);
  v10 = *(v0 + 5308) != 0;
  *(v0 + 8760) = v1;
  swift_willThrow();
  v11 = v1;
  sub_230D34594(16, v2, v10, v0 + 7104, (v0 + 8760), v3);
  MEMORY[0x23191E910](v1);
  (*(v8 + 8))(v7, v9);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v12 = *(v0 + 9312);
  v13 = *(v0 + 8904);
  v14 = *(v0 + 8896);
  v15 = *(v0 + 8888);
  v16 = *(v0 + 8880);
  v17 = *(v0 + 8872);
  v18 = *(v0 + 8864);
  v19 = *(v0 + 8856);
  v20 = *(v0 + 8848);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_230E0F038()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9328);
  v2 = *(*v0 + 9320);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0F174, v2, 0);
}

void sub_230E0F174()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9320);
  v2 = *(v0 + 9232);
  v3 = *(v0 + 9216);
  v4 = *(v0 + 7424);
  v5 = *(v0 + 7432);
  v6 = *(v0 + 7440);
  *(v0 + 9336) = v6;
  v7 = *(v0 + 7448);
  v8 = *(v0 + 7449);
  v9 = *(v0 + 7456);
  *(v0 + 9344) = v9;
  *(v0 + 7224) = v4;
  *(v0 + 7232) = v5;
  *(v0 + 7240) = v6;
  *(v0 + 7248) = v7;
  *(v0 + 7249) = v8;
  *(v0 + 7256) = v9;

  v10 = swift_task_alloc();
  *(v0 + 9352) = v10;
  *v10 = v0;
  v10[1] = sub_230E0F2E4;
  v11 = *(v0 + 9232);
  v12 = *(v0 + 9224);
  v13 = *(v0 + 9216);
  v14 = *(v0 + 9208);
  v15 = *MEMORY[0x277D85DE8];
  v18 = *(v0 + 9320);

  JUMPOUT(0x230D71ACCLL);
}

uint64_t sub_230E0F2E4()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9352);
  v12 = *v1;
  *(*v1 + 9360) = v0;

  if (v0)
  {
    v4 = *(v2 + 9344);
    v5 = *(v2 + 9336);

    v6 = sub_230E0F854;
  }

  else
  {
    v7 = *(v2 + 9344);
    v8 = *(v2 + 9336);

    v6 = sub_230E0F700;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E0F454()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9264);
  v2 = *(v0 + 9256);
  v3 = *(v0 + 9240);
  v4 = *(v0 + 9200);
  (*(*(v0 + 8840) + 8))(*(v0 + 8896), *(v0 + 8832));

  v5 = *(v0 + 9264);
  v6 = *(v0 + 9256);
  *(v0 + 9320) = *(v0 + 8656);

  *(v0 + 665) = 1;
  v7 = swift_task_alloc();
  *(v0 + 9328) = v7;
  *v7 = v0;
  v7[1] = sub_230E0F038;
  v8 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 7424, (v0 + 665), 0, 0);
}

uint64_t sub_230E0F5A8()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[1158];
  v2 = v0[1157];
  v3 = v0[1155];
  v4 = v0[1150];
  (*(v0[1105] + 8))(v0[1112], v0[1104]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[1161];
  v6 = v0[1113];
  v7 = v0[1112];
  v8 = v0[1111];
  v9 = v0[1110];
  v10 = v0[1109];
  v11 = v0[1108];
  v12 = v0[1107];
  v13 = v0[1106];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_230E0F700()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9320);
  v2 = *(v0 + 8816);

  *(v0 + 4672) = *(v0 + 8784);
  sub_230DF8BAC(v0 + 4672);
  v3 = *(v0 + 4672);
  v4 = *(v0 + 4688);
  v5 = *(v0 + 4720);
  v2[2] = *(v0 + 4704);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 4736);
  v7 = *(v0 + 4752);
  v8 = *(v0 + 4768);
  *(v2 + 105) = *(v0 + 4777);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8904);
  v10 = *(v0 + 8896);
  v11 = *(v0 + 8888);
  v12 = *(v0 + 8880);
  v13 = *(v0 + 8872);
  v14 = *(v0 + 8864);
  v15 = *(v0 + 8856);
  v16 = *(v0 + 8848);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_230E0F854()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[1165];

  v2 = v0[1170];
  v3 = v0[1113];
  v4 = v0[1112];
  v5 = v0[1111];
  v6 = v0[1110];
  v7 = v0[1109];
  v8 = v0[1108];
  v9 = v0[1107];
  v10 = v0[1106];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E0F960()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9400);
  v2 = *(*v0 + 9392);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E0FA9C, v2, 0);
}

uint64_t sub_230E0FA9C()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9392);
  v2 = *(v0 + 9384);
  v3 = *(v0 + 8888);
  v4 = *(v0 + 7944);
  v5 = *(v0 + 7952);
  v6 = *(v0 + 7960);
  *(v0 + 9408) = v6;
  v7 = *(v0 + 7968);
  v8 = *(v0 + 7969);
  v9 = *(v0 + 7976);
  *(v0 + 9416) = v9;
  v32 = v7;
  *(v0 + 6984) = v4;
  *(v0 + 6992) = v5;
  *(v0 + 7000) = v6;
  *(v0 + 7008) = v7;
  v31 = v8;
  *(v0 + 7009) = v8;
  *(v0 + 7016) = v9;

  sub_230E68D70();

  v10 = sub_230E68D60();
  v11 = sub_230E693E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_230D7E620(0xD000000000000014, 0x8000000230E805F0, v33);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_230D7E620(v5, v6, v33);
    *(v12 + 22) = 2080;
    v14 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v14);

    v15 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v12 + 24) = v15;
    _os_log_impl(&dword_230D02000, v10, v11, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v13, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);
  }

  else
  {
  }

  v16 = (v0 + 1724);
  if (v32 && ((v17 = RequestType.rawValue.getter(), v19 = v18, , LOBYTE(v17) = sub_230D33FDC(v17, v19, v9), , , (v17 & 1) != 0) || v31 >= 2))
  {
    sub_230E68950();
    *(v0 + 9424) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1676) = 0u;
    *(v0 + 1692) = 0u;
    *(v0 + 1708) = 0u;
    *(v0 + 1724) = 0u;
    *(v0 + 1740) = 0u;
    *(v0 + 1756) = 0u;
    *(v0 + 1772) = 0u;
    *(v0 + 1788) = 0u;
    *(v0 + 1804) = 0u;
    *(v0 + 1820) = 0u;
    *(v0 + 1836) = 0u;
    *(v0 + 1852) = 0u;
    *(v0 + 1868) = 0u;
    *(v0 + 1884) = 0u;
    *(v0 + 1900) = 0u;
    *(v0 + 1916) = 0u;
    *(v0 + 1932) = 0u;
    *(v0 + 1948) = 0u;
    *(v0 + 1964) = 0u;
    *(v0 + 1980) = 0u;
    *(v0 + 1996) = 0u;
    *(v0 + 2012) = 0u;
    *(v0 + 2028) = 0u;
    *(v0 + 2044) = 0;
    *(v0 + 4284) = 93;
    v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1676), (v0 + 4284));
    *(v0 + 5436) = v22;
    v23 = 0.0;
    if (!v22)
    {
      v24 = *(v0 + 1796);
      if (__CFADD__(*v16, v24))
      {
        __break(1u);
      }

      v23 = vcvtd_n_f64_u64(*v16 + v24, 0x14uLL);
    }

    *(v0 + 9448) = v23;
    *(v0 + 8792) = 0;
    v20 = swift_task_alloc();
    *(v0 + 9456) = v20;
    *v20 = v0;
    v21 = sub_230E10084;
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 9432) = v20;
    *v20 = v0;
    v21 = sub_230E0FF2C;
  }

  v20[1] = v21;
  v25 = *(v0 + 9392);
  v26 = *(v0 + 9384);
  v27 = *(v0 + 9376);
  v28 = *(v0 + 4283);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230D2FFF0(v0 + 8736, v28, v27, v26, v25, v0 + 6984);
}

uint64_t sub_230E0FF2C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9432);
  v4 = *v1;
  *(*v1 + 9440) = v0;

  v5 = *(v2 + 9392);
  if (v0)
  {
    v6 = sub_230E10A8C;
  }

  else
  {
    v6 = sub_230E10938;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E10084()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9456);
  v4 = *v1;
  *(*v1 + 9464) = v0;

  v5 = *(v2 + 9392);
  if (v0)
  {
    v6 = sub_230E1036C;
  }

  else
  {
    v6 = sub_230E101DC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E101DC()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9416);
  v2 = *(v0 + 9408);
  v3 = *(v0 + 9392);
  v4 = *(v0 + 9384);
  v5 = *(v0 + 8888);
  v6 = *(v0 + 8840);
  v7 = *(v0 + 8832);
  sub_230D34594(16, *(v0 + 9448), *(v0 + 5436) != 0, v0 + 6984, (v0 + 8792), *(v0 + 9424));
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 9416);
  v9 = *(v0 + 9408);
  *(v0 + 9472) = *(v0 + 8736);

  *(v0 + 1179) = 2;
  v10 = swift_task_alloc();
  *(v0 + 9480) = v10;
  *v10 = v0;
  v10[1] = sub_230E10530;
  v11 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 7784, (v0 + 1179), 0, 0);
}

uint64_t sub_230E1036C()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9464);
  v2 = *(v0 + 9448);
  v3 = *(v0 + 9424);
  v4 = *(v0 + 9408);
  v24 = *(v0 + 9416);
  v5 = *(v0 + 9392);
  v6 = *(v0 + 9384);
  v7 = *(v0 + 8888);
  v8 = *(v0 + 8840);
  v9 = *(v0 + 8832);
  v10 = *(v0 + 5436) != 0;
  *(v0 + 8792) = v1;
  swift_willThrow();
  v11 = v1;
  sub_230D34594(16, v2, v10, v0 + 6984, (v0 + 8792), v3);
  MEMORY[0x23191E910](v1);
  (*(v8 + 8))(v7, v9);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v12 = *(v0 + 9464);
  v13 = *(v0 + 8904);
  v14 = *(v0 + 8896);
  v15 = *(v0 + 8888);
  v16 = *(v0 + 8880);
  v17 = *(v0 + 8872);
  v18 = *(v0 + 8864);
  v19 = *(v0 + 8856);
  v20 = *(v0 + 8848);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_230E10530()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9480);
  v2 = *(*v0 + 9472);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E1066C, v2, 0);
}

uint64_t sub_230E1066C()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9472);
  v2 = *(v0 + 9368);
  v3 = *(v0 + 7784);
  v4 = *(v0 + 7792);
  v5 = *(v0 + 7800);
  *(v0 + 9488) = v5;
  v6 = *(v0 + 7808);
  v7 = *(v0 + 7809);
  v8 = *(v0 + 7816);
  *(v0 + 9496) = v8;
  *(v0 + 7024) = v3;
  *(v0 + 7032) = v4;
  *(v0 + 7040) = v5;
  *(v0 + 7048) = v6;
  *(v0 + 7049) = v7;
  *(v0 + 7056) = v8;
  sub_230D1D0EC(v2 + 24, v0 + 6072);

  v9 = swift_task_alloc();
  *(v0 + 9504) = v9;
  *v9 = v0;
  v9[1] = sub_230E107C8;
  v10 = *(v0 + 9472);
  v11 = *MEMORY[0x277D85DE8];

  return sub_230D70F74(v0 + 8744, 2, v0 + 7024, v10, v0 + 5952, v10);
}

uint64_t sub_230E107C8()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9504);
  v12 = *v1;
  *(*v1 + 9512) = v0;

  if (v0)
  {
    v4 = *(v2 + 9496);
    v5 = *(v2 + 9488);

    v6 = sub_230E10D38;
  }

  else
  {
    v7 = *(v2 + 9496);
    v8 = *(v2 + 9488);

    v6 = sub_230E10BE4;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E10938()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9416);
  v2 = *(v0 + 9408);
  v3 = *(v0 + 9392);
  v4 = *(v0 + 9384);
  (*(*(v0 + 8840) + 8))(*(v0 + 8888), *(v0 + 8832));

  v5 = *(v0 + 9416);
  v6 = *(v0 + 9408);
  *(v0 + 9472) = *(v0 + 8736);

  *(v0 + 1179) = 2;
  v7 = swift_task_alloc();
  *(v0 + 9480) = v7;
  *v7 = v0;
  v7[1] = sub_230E10530;
  v8 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 7784, (v0 + 1179), 0, 0);
}

uint64_t sub_230E10A8C()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[1177];
  v2 = v0[1176];
  v3 = v0[1174];
  v4 = v0[1173];
  (*(v0[1105] + 8))(v0[1111], v0[1104]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[1180];
  v6 = v0[1113];
  v7 = v0[1112];
  v8 = v0[1111];
  v9 = v0[1110];
  v10 = v0[1109];
  v11 = v0[1108];
  v12 = v0[1107];
  v13 = v0[1106];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_230E10BE4()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9472);
  v2 = *(v0 + 8816);

  *(v0 + 4800) = *(v0 + 8744);
  sub_230DF8B38(v0 + 4800);
  v3 = *(v0 + 4800);
  v4 = *(v0 + 4816);
  v5 = *(v0 + 4848);
  v2[2] = *(v0 + 4832);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 4864);
  v7 = *(v0 + 4880);
  v8 = *(v0 + 4896);
  *(v2 + 105) = *(v0 + 4905);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8904);
  v10 = *(v0 + 8896);
  v11 = *(v0 + 8888);
  v12 = *(v0 + 8880);
  v13 = *(v0 + 8872);
  v14 = *(v0 + 8864);
  v15 = *(v0 + 8856);
  v16 = *(v0 + 8848);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_230E10D38()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[1184];

  v2 = v0[1189];
  v3 = v0[1113];
  v4 = v0[1112];
  v5 = v0[1111];
  v6 = v0[1110];
  v7 = v0[1109];
  v8 = v0[1108];
  v9 = v0[1107];
  v10 = v0[1106];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E10E44()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9576);
  v2 = *(*v0 + 9568);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E10F80, v2, 0);
}

uint64_t sub_230E10F80()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9568);
  v2 = *(v0 + 9528);
  v3 = *(v0 + 8880);
  v4 = *(v0 + 8384);
  v5 = *(v0 + 8392);
  v6 = *(v0 + 8400);
  *(v0 + 9584) = v6;
  v7 = *(v0 + 8408);
  v8 = *(v0 + 8409);
  v9 = *(v0 + 8416);
  *(v0 + 9592) = v9;
  v32 = v7;
  *(v0 + 6744) = v4;
  *(v0 + 6752) = v5;
  *(v0 + 6760) = v6;
  *(v0 + 6768) = v7;
  v31 = v8;
  *(v0 + 6769) = v8;
  *(v0 + 6776) = v9;

  sub_230E68D70();

  v10 = sub_230E68D60();
  v11 = sub_230E693E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_230D7E620(0xD000000000000014, 0x8000000230E805F0, v33);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_230D7E620(v5, v6, v33);
    *(v12 + 22) = 2080;
    v14 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v14);

    v15 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v12 + 24) = v15;
    _os_log_impl(&dword_230D02000, v10, v11, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v13, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);
  }

  else
  {
  }

  v16 = (v0 + 2220);
  if (v32 && ((v17 = RequestType.rawValue.getter(), v19 = v18, , LOBYTE(v17) = sub_230D33FDC(v17, v19, v9), , , (v17 & 1) != 0) || v31 >= 2))
  {
    sub_230E68950();
    *(v0 + 9600) = CFAbsoluteTimeGetCurrent();
    *(v0 + 2172) = 0u;
    *(v0 + 2188) = 0u;
    *(v0 + 2204) = 0u;
    *(v0 + 2220) = 0u;
    *(v0 + 2236) = 0u;
    *(v0 + 2252) = 0u;
    *(v0 + 2268) = 0u;
    *(v0 + 2284) = 0u;
    *(v0 + 2300) = 0u;
    *(v0 + 2316) = 0u;
    *(v0 + 2332) = 0u;
    *(v0 + 2348) = 0u;
    *(v0 + 2364) = 0u;
    *(v0 + 2380) = 0u;
    *(v0 + 2396) = 0u;
    *(v0 + 2412) = 0u;
    *(v0 + 2428) = 0u;
    *(v0 + 2444) = 0u;
    *(v0 + 2460) = 0u;
    *(v0 + 2476) = 0u;
    *(v0 + 2492) = 0u;
    *(v0 + 2508) = 0u;
    *(v0 + 2524) = 0u;
    *(v0 + 2540) = 0;
    *(v0 + 4668) = 93;
    v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 2172), (v0 + 4668));
    *(v0 + 5564) = v22;
    v23 = 0.0;
    if (!v22)
    {
      v24 = *(v0 + 2292);
      if (__CFADD__(*v16, v24))
      {
        __break(1u);
      }

      v23 = vcvtd_n_f64_u64(*v16 + v24, 0x14uLL);
    }

    *(v0 + 9624) = v23;
    *(v0 + 8712) = 0;
    v20 = swift_task_alloc();
    *(v0 + 9632) = v20;
    *v20 = v0;
    v21 = sub_230E11568;
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 9608) = v20;
    *v20 = v0;
    v21 = sub_230E11410;
  }

  v20[1] = v21;
  v25 = *(v0 + 9568);
  v26 = *(v0 + 9528);
  v27 = *(v0 + 9520);
  v28 = *(v0 + 4409);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230D2FFF0(v0 + 8664, v28, v27, v26, v25, v0 + 6744);
}

uint64_t sub_230E11410()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9608);
  v4 = *v1;
  *(*v1 + 9616) = v0;

  v5 = *(v2 + 9568);
  if (v0)
  {
    v6 = sub_230E11F94;
  }

  else
  {
    v6 = sub_230E11E40;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E11568()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9632);
  v4 = *v1;
  *(*v1 + 9640) = v0;

  v5 = *(v2 + 9568);
  if (v0)
  {
    v6 = sub_230E11850;
  }

  else
  {
    v6 = sub_230E116C0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E116C0()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9592);
  v2 = *(v0 + 9584);
  v3 = *(v0 + 9568);
  v4 = *(v0 + 9528);
  v5 = *(v0 + 8880);
  v6 = *(v0 + 8840);
  v7 = *(v0 + 8832);
  sub_230D34594(16, *(v0 + 9624), *(v0 + 5564) != 0, v0 + 6744, (v0 + 8712), *(v0 + 9600));
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 9592);
  v9 = *(v0 + 9584);
  *(v0 + 9648) = *(v0 + 8664);

  *(v0 + 3161) = 3;
  v10 = swift_task_alloc();
  *(v0 + 9656) = v10;
  *v10 = v0;
  v10[1] = sub_230E11A14;
  v11 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 8184, (v0 + 3161), 0, 0);
}

uint64_t sub_230E11850()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9640);
  v2 = *(v0 + 9624);
  v3 = *(v0 + 9600);
  v4 = *(v0 + 9584);
  v24 = *(v0 + 9592);
  v5 = *(v0 + 9568);
  v6 = *(v0 + 9528);
  v7 = *(v0 + 8880);
  v8 = *(v0 + 8840);
  v9 = *(v0 + 8832);
  v10 = *(v0 + 5564) != 0;
  *(v0 + 8712) = v1;
  swift_willThrow();
  v11 = v1;
  sub_230D34594(16, v2, v10, v0 + 6744, (v0 + 8712), v3);
  MEMORY[0x23191E910](v1);
  (*(v8 + 8))(v7, v9);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v12 = *(v0 + 9640);
  v13 = *(v0 + 8904);
  v14 = *(v0 + 8896);
  v15 = *(v0 + 8888);
  v16 = *(v0 + 8880);
  v17 = *(v0 + 8872);
  v18 = *(v0 + 8864);
  v19 = *(v0 + 8856);
  v20 = *(v0 + 8848);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_230E11A14()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9656);
  v2 = *(*v0 + 9648);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E11B50, v2, 0);
}

void sub_230E11B50()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9648);
  v2 = *(v0 + 9560);
  v3 = *(v0 + 9552);
  v4 = *(v0 + 9544);
  v5 = *(v0 + 8184);
  v6 = *(v0 + 0x2000);
  v7 = *(v0 + 8200);
  *(v0 + 9664) = v7;
  v8 = *(v0 + 8208);
  v9 = *(v0 + 8209);
  v10 = *(v0 + 8216);
  *(v0 + 9672) = v10;
  *(v0 + 6824) = v5;
  *(v0 + 6832) = v6;
  *(v0 + 6840) = v7;
  *(v0 + 6848) = v8;
  *(v0 + 6849) = v9;
  *(v0 + 6856) = v10;

  v11 = swift_task_alloc();
  *(v0 + 9680) = v11;
  *v11 = v0;
  v11[1] = sub_230E11CD0;
  v12 = *(v0 + 9560);
  v13 = *(v0 + 9552);
  v14 = *(v0 + 9544);
  v15 = *(v0 + 9536);
  v16 = *MEMORY[0x277D85DE8];
  v19 = *(v0 + 9648);

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E11CD0()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9680);
  v12 = *v1;
  *(*v1 + 9688) = v0;

  if (v0)
  {
    v4 = *(v2 + 9672);
    v5 = *(v2 + 9664);

    v6 = sub_230E12240;
  }

  else
  {
    v7 = *(v2 + 9672);
    v8 = *(v2 + 9664);

    v6 = sub_230E120EC;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E11E40()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9592);
  v2 = *(v0 + 9584);
  v3 = *(v0 + 9568);
  v4 = *(v0 + 9528);
  (*(*(v0 + 8840) + 8))(*(v0 + 8880), *(v0 + 8832));

  v5 = *(v0 + 9592);
  v6 = *(v0 + 9584);
  *(v0 + 9648) = *(v0 + 8664);

  *(v0 + 3161) = 3;
  v7 = swift_task_alloc();
  *(v0 + 9656) = v7;
  *v7 = v0;
  v7[1] = sub_230E11A14;
  v8 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 8184, (v0 + 3161), 0, 0);
}

uint64_t sub_230E11F94()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[1199];
  v2 = v0[1198];
  v3 = v0[1196];
  v4 = v0[1191];
  (*(v0[1105] + 8))(v0[1110], v0[1104]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[1202];
  v6 = v0[1113];
  v7 = v0[1112];
  v8 = v0[1111];
  v9 = v0[1110];
  v10 = v0[1109];
  v11 = v0[1108];
  v12 = v0[1107];
  v13 = v0[1106];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_230E120EC()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9648);
  v2 = *(v0 + 8816);

  *(v0 + 4928) = *(v0 + 8672);
  sub_230DF8AC4(v0 + 4928);
  v3 = *(v0 + 4928);
  v4 = *(v0 + 4944);
  v5 = *(v0 + 4976);
  v2[2] = *(v0 + 4960);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 4992);
  v7 = *(v0 + 5008);
  v8 = *(v0 + 5024);
  *(v2 + 105) = *(v0 + 5033);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8904);
  v10 = *(v0 + 8896);
  v11 = *(v0 + 8888);
  v12 = *(v0 + 8880);
  v13 = *(v0 + 8872);
  v14 = *(v0 + 8864);
  v15 = *(v0 + 8856);
  v16 = *(v0 + 8848);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_230E12240()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[1206];

  v2 = v0[1211];
  v3 = v0[1113];
  v4 = v0[1112];
  v5 = v0[1111];
  v6 = v0[1110];
  v7 = v0[1109];
  v8 = v0[1108];
  v9 = v0[1107];
  v10 = v0[1106];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E1234C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9704);
  v2 = *(*v0 + 9696);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E12488, v2, 0);
}

uint64_t sub_230E12488()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9696);
  v2 = *(v0 + 8344);
  v3 = *(v0 + 8352);
  v4 = *(v0 + 8360);
  *(v0 + 9712) = v4;
  v5 = *(v0 + 8368);
  v6 = *(v0 + 8369);
  v7 = *(v0 + 8376);
  *(v0 + 9720) = v7;
  *(v0 + 6624) = v2;
  *(v0 + 6632) = v3;
  *(v0 + 6640) = v4;
  *(v0 + 6648) = v5;
  *(v0 + 6649) = v6;
  *(v0 + 6656) = v7;

  v8 = swift_task_alloc();
  *(v0 + 9728) = v8;
  *v8 = v0;
  v8[1] = sub_230E125BC;
  v9 = *(v0 + 9696);
  v10 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v0 + 6624, v9, v9);
}

uint64_t sub_230E125BC(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(*v2 + 9728);
  v5 = *v2;
  *(v5 + 9736) = a1;

  if (v1)
  {
    v6 = *(v5 + 9720);
    v7 = *(v5 + 9712);

    v8 = *(v5 + 8904);
    v9 = *(v5 + 8896);
    v10 = *(v5 + 8888);
    v11 = *(v5 + 8880);
    v12 = *(v5 + 8872);
    v13 = *(v5 + 8864);
    v14 = *(v5 + 8856);
    v15 = *(v5 + 8848);

    v16 = *(v5 + 8);
    v17 = *MEMORY[0x277D85DE8];

    return v16();
  }

  else
  {
    v19 = *(v5 + 9720);
    v20 = *(v5 + 9712);

    *(v5 + 8456) = 0;
    *(v5 + 8424) = 0u;
    *(v5 + 8440) = 0u;
    v21 = swift_task_alloc();
    *(v5 + 9744) = v21;
    *v21 = v5;
    v21[1] = sub_230E12838;
    v22 = *MEMORY[0x277D85DE8];

    return static SystemDatabase.initialize(using:requestContext:)(a1, v5 + 8424);
  }
}

uint64_t sub_230E12838()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 9744);
  v7 = *v1;
  *(*v1 + 9752) = v0;

  if (v0)
  {
    v3 = sub_230E19A54;
  }

  else
  {
    v3 = sub_230E12978;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E12978()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9736);
  v2 = *(v0 + 8816);

  sub_230DF8A4C(v0 + 5056);
  v3 = *(v0 + 5056);
  v4 = *(v0 + 5072);
  v5 = *(v0 + 5104);
  v2[2] = *(v0 + 5088);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 5120);
  v7 = *(v0 + 5136);
  v8 = *(v0 + 5152);
  *(v2 + 105) = *(v0 + 5161);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8904);
  v10 = *(v0 + 8896);
  v11 = *(v0 + 8888);
  v12 = *(v0 + 8880);
  v13 = *(v0 + 8872);
  v14 = *(v0 + 8864);
  v15 = *(v0 + 8856);
  v16 = *(v0 + 8848);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_230E12AC4()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9768);
  v2 = *(*v0 + 9760);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E12C00, v2, 0);
}

uint64_t sub_230E12C00()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9760);
  v2 = *(v0 + 8144);
  v3 = *(v0 + 8152);
  v4 = *(v0 + 8160);
  *(v0 + 9776) = v4;
  v5 = *(v0 + 8168);
  v6 = *(v0 + 8169);
  v7 = *(v0 + 8176);
  *(v0 + 9784) = v7;
  *(v0 + 6344) = v2;
  *(v0 + 6352) = v3;
  *(v0 + 6360) = v4;
  *(v0 + 6368) = v5;
  *(v0 + 6369) = v6;
  *(v0 + 6376) = v7;

  v8 = swift_task_alloc();
  *(v0 + 9792) = v8;
  *v8 = v0;
  v8[1] = sub_230E12D30;
  v9 = *(v0 + 9760);
  v10 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v0 + 6344, v9, v9);
}

uint64_t sub_230E12D30(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(*v2 + 9792);
  v5 = *v2;
  *(v5 + 9800) = a1;

  if (v1)
  {
    v6 = *(v5 + 9784);
    v7 = *(v5 + 9776);

    v8 = *(v5 + 8904);
    v9 = *(v5 + 8896);
    v10 = *(v5 + 8888);
    v11 = *(v5 + 8880);
    v12 = *(v5 + 8872);
    v13 = *(v5 + 8864);
    v14 = *(v5 + 8856);
    v15 = *(v5 + 8848);

    v16 = *(v5 + 8);
    v17 = *MEMORY[0x277D85DE8];

    return v16();
  }

  else
  {
    v19 = *(v5 + 9784);
    v20 = *(v5 + 9776);
    v21 = *(v5 + 4410);

    *(v5 + 3658) = v21;
    *(v5 + 8264) = 0u;
    *(v5 + 8280) = 0u;
    *(v5 + 8296) = 0;
    v22 = swift_task_alloc();
    *(v5 + 9808) = v22;
    *v22 = v5;
    v22[1] = sub_230E12FC8;
    v23 = *MEMORY[0x277D85DE8];

    return sub_230E46438((v5 + 3658), a1, v5 + 8264);
  }
}

uint64_t sub_230E12FC8()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 9808);
  v7 = *v1;
  *(*v1 + 9816) = v0;

  if (v0)
  {
    v3 = sub_230E13254;
  }

  else
  {
    v3 = sub_230E13108;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E13108()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9800);
  v2 = *(v0 + 8816);

  sub_230DF89E4(v0 + 5184);
  v3 = *(v0 + 5184);
  v4 = *(v0 + 5200);
  v5 = *(v0 + 5232);
  v2[2] = *(v0 + 5216);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 5248);
  v7 = *(v0 + 5264);
  v8 = *(v0 + 5280);
  *(v2 + 105) = *(v0 + 5289);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8904);
  v10 = *(v0 + 8896);
  v11 = *(v0 + 8888);
  v12 = *(v0 + 8880);
  v13 = *(v0 + 8872);
  v14 = *(v0 + 8864);
  v15 = *(v0 + 8856);
  v16 = *(v0 + 8848);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_230E13254()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[1225];

  v2 = v0[1227];
  v3 = v0[1113];
  v4 = v0[1112];
  v5 = v0[1111];
  v6 = v0[1110];
  v7 = v0[1109];
  v8 = v0[1108];
  v9 = v0[1107];
  v10 = v0[1106];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E13360()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9840);
  v2 = *(*v0 + 9832);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E1349C, v2, 0);
}

uint64_t sub_230E1349C()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9832);
  v2 = *(v0 + 7984);
  v3 = *(v0 + 7992);
  v4 = *(v0 + 8000);
  *(v0 + 9848) = v4;
  v5 = *(v0 + 8008);
  v6 = *(v0 + 8009);
  v7 = *(v0 + 8016);
  *(v0 + 9856) = v7;
  *(v0 + 6544) = v2;
  *(v0 + 6552) = v3;
  *(v0 + 6560) = v4;
  *(v0 + 6568) = v5;
  *(v0 + 6569) = v6;
  *(v0 + 6576) = v7;

  v8 = swift_task_alloc();
  *(v0 + 9864) = v8;
  *v8 = v0;
  v8[1] = sub_230E135CC;
  v9 = *(v0 + 9832);
  v10 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v0 + 6544, v9, v9);
}

uint64_t sub_230E135CC(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 9864);
  v6 = *v2;
  *(*v2 + 9872) = a1;

  if (v1)
  {
    v7 = *(v4 + 9856);
    v8 = *(v4 + 9848);

    v9 = *(v4 + 8904);
    v10 = *(v4 + 8896);
    v11 = *(v4 + 8888);
    v12 = *(v4 + 8880);
    v13 = *(v4 + 8872);
    v14 = *(v4 + 8864);
    v15 = *(v4 + 8856);
    v16 = *(v4 + 8848);

    v17 = *(v6 + 8);
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    v20 = *(v4 + 9856);
    v21 = *(v4 + 9848);

    *(v4 + 8496) = 0;
    *(v4 + 8480) = 0u;
    *(v4 + 8464) = 0u;
    v22 = swift_task_alloc();
    *(v4 + 9880) = v22;
    *v22 = v6;
    v22[1] = sub_230E13854;
    v23 = *MEMORY[0x277D85DE8];
    v24 = *(v4 + 9824);

    return static SystemDatabase.updateConfigurationVersion(_:using:requestContext:)(v24, a1, v4 + 8464);
  }
}

uint64_t sub_230E13854()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 9880);
  v7 = *v1;
  *(*v1 + 9888) = v0;

  if (v0)
  {
    v3 = sub_230E19B60;
  }

  else
  {
    v3 = sub_230E13994;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E13994()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9872);
  v2 = *(v0 + 8816);

  sub_230DF8A18(v0 + 3040);
  v3 = *(v0 + 3040);
  v4 = *(v0 + 3056);
  v5 = *(v0 + 3088);
  v2[2] = *(v0 + 3072);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 3104);
  v7 = *(v0 + 3120);
  v8 = *(v0 + 3136);
  *(v2 + 105) = *(v0 + 3145);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8904);
  v10 = *(v0 + 8896);
  v11 = *(v0 + 8888);
  v12 = *(v0 + 8880);
  v13 = *(v0 + 8872);
  v14 = *(v0 + 8864);
  v15 = *(v0 + 8856);
  v16 = *(v0 + 8848);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_230E13ADC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9920);
  v2 = *(*v0 + 9912);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E13C18, v2, 0);
}

uint64_t sub_230E13C18()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9912);
  v2 = *(v0 + 7744);
  v3 = *(v0 + 7752);
  v4 = *(v0 + 7760);
  *(v0 + 9928) = v4;
  v5 = *(v0 + 7768);
  v6 = *(v0 + 7769);
  v7 = *(v0 + 7776);
  *(v0 + 9936) = v7;
  *(v0 + 8224) = v2;
  *(v0 + 8232) = v3;
  *(v0 + 8240) = v4;
  *(v0 + 8248) = v5;
  *(v0 + 8249) = v6;
  *(v0 + 8256) = v7;

  v8 = swift_task_alloc();
  *(v0 + 9944) = v8;
  *v8 = v0;
  v8[1] = sub_230E13D50;
  v9 = *(v0 + 9912);
  v10 = *(v0 + 4411);
  v11 = *MEMORY[0x277D85DE8];

  return sub_230D72678(15, v0 + 8224, v9, v10, v9);
}

uint64_t sub_230E13D50(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 9944);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[1242];
    v8 = v4[1241];

    v9 = v4[1113];
    v10 = v4[1112];
    v11 = v4[1111];
    v12 = v4[1110];
    v13 = v4[1109];
    v14 = v4[1108];
    v15 = v4[1107];
    v16 = v4[1106];

    v17 = *(v6 + 8);
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    v20 = v4[1242];
    v21 = v4[1241];
    v4[1244] = a1;

    v22 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E13F80, 0, 0);
  }
}

uint64_t sub_230E13F80()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9896);
  *(v0 + 7888) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
  *(v0 + 7896) = sub_230D1D1C4(&qword_27DB5A6B8, &qword_27DB5A6B0, &qword_230E72AC0);
  *(v0 + 7864) = v1;

  *(v0 + 1675) = 8;
  v2 = swift_task_alloc();
  *(v0 + 9960) = v2;
  *v2 = v0;
  v2[1] = sub_230E140C0;
  v3 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 7904, (v0 + 1675), 0, 0);
}

uint64_t sub_230E140C0()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 9960);
  v2 = *(*v0 + 9952);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E141FC, v2, 0);
}

uint64_t sub_230E141FC()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9952);
  v2 = *(v0 + 9904);
  v3 = *(v0 + 7920);
  *(v0 + 8024) = *(v0 + 7904);
  *(v0 + 8040) = v3;
  *(v0 + 8056) = *(v0 + 7936);
  v4 = swift_task_alloc();
  *(v0 + 9968) = v4;
  v4[2] = v0 + 7864;
  v4[3] = v1;
  v4[4] = v0 + 8024;
  v4[5] = v2;
  v5 = swift_task_alloc();
  *(v0 + 9976) = v5;
  *v5 = v0;
  v5[1] = sub_230E14338;
  v6 = *(v0 + 9952);
  v7 = *MEMORY[0x277D85DE8];

  return sub_230D18BFC(8, v0 + 8024, &unk_230E7ADF0, v4);
}

uint64_t sub_230E14338(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 9976);
  v4 = *(*v1 + 9968);
  v5 = *(*v1 + 9952);
  v9 = *v1;
  *(v2 + 9984) = a1;

  sub_230D1CE3C(v2 + 8024);

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E144B4, v5, 0);
}

uint64_t sub_230E144B4()
{
  v3 = *MEMORY[0x277D85DE8];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7864));
  v1 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E1454C, 0, 0);
}

uint64_t sub_230E1454C()
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 9984);
  v2 = *(v0 + 9952);
  v3 = *(v0 + 8816);

  *(v0 + 1552) = v1;
  sub_230DF89C4(v0 + 1552);
  v4 = *(v0 + 1552);
  v5 = *(v0 + 1568);
  v6 = *(v0 + 1600);
  v3[2] = *(v0 + 1584);
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = *(v0 + 1616);
  v8 = *(v0 + 1632);
  v9 = *(v0 + 1648);
  *(v3 + 105) = *(v0 + 1657);
  v3[5] = v8;
  v3[6] = v9;
  v3[4] = v7;
  v10 = *(v0 + 8904);
  v11 = *(v0 + 8896);
  v12 = *(v0 + 8888);
  v13 = *(v0 + 8880);
  v14 = *(v0 + 8872);
  v15 = *(v0 + 8864);
  v16 = *(v0 + 8856);
  v17 = *(v0 + 8848);

  v18 = *(v0 + 8);
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

uint64_t sub_230E1469C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 10016);
  v2 = *(*v0 + 10008);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E147D8, v2, 0);
}

uint64_t sub_230E147D8()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10008);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7312);
  v4 = *(v0 + 7320);
  *(v0 + 10024) = v4;
  v5 = *(v0 + 7328);
  v6 = *(v0 + 7329);
  v7 = *(v0 + 7336);
  *(v0 + 10032) = v7;
  *(v0 + 7184) = v2;
  *(v0 + 7192) = v3;
  *(v0 + 7200) = v4;
  *(v0 + 7208) = v5;
  *(v0 + 7209) = v6;
  *(v0 + 7216) = v7;

  v8 = swift_task_alloc();
  *(v0 + 10040) = v8;
  *v8 = v0;
  v8[1] = sub_230E1490C;
  v9 = *(v0 + 10008);
  v10 = *(v0 + 4537);
  v11 = *MEMORY[0x277D85DE8];

  return sub_230D72678(15, v0 + 7184, v9, v10, v9);
}

uint64_t sub_230E1490C(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 10040);
  v4 = *v2;
  v4[1256] = a1;

  if (v1)
  {
    v5 = v4[1254];
    v6 = v4[1253];

    v7 = v4[1113];
    v8 = v4[1112];
    v9 = v4[1111];
    v10 = v4[1110];
    v11 = v4[1109];
    v12 = v4[1108];
    v13 = v4[1107];
    v14 = v4[1106];

    v15 = v4[1];
    v16 = *MEMORY[0x277D85DE8];

    return v15();
  }

  else
  {
    v18 = v4[1254];
    v19 = v4[1253];

    v20 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E14B38, 0, 0);
  }
}

uint64_t sub_230E14B38()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v0 + 10056) = sub_230E19F6C(*(v0 + 9992));
  *(v0 + 666) = 9;
  v1 = swift_task_alloc();
  *(v0 + 10064) = v1;
  *v1 = v0;
  v1[1] = sub_230E14C20;
  v2 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 7384, (v0 + 666), 0, 0);
}

uint64_t sub_230E14C20()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 10064);
  v2 = *(*v0 + 10048);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E14D5C, v2, 0);
}

uint64_t sub_230E14D5C()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 7400);
  *(v0 + 6784) = *(v0 + 7384);
  v2 = (v0 + 8624);
  v3 = *(v0 + 10056);
  v4 = *(v0 + 10048);
  v5 = *(v0 + 10000);
  v6 = *(v0 + 8872);
  *(v0 + 6816) = *(v0 + 7416);
  *(v0 + 6800) = v1;

  sub_230D1CDE0(v0 + 6784, v0 + 7464);
  sub_230E68D70();
  sub_230D1CDE0(v0 + 6784, v0 + 7504);
  v7 = sub_230E68D60();
  v8 = sub_230E693E0();
  sub_230D1CE3C(v0 + 6784);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0x44564B6E49746573, 0xEF65736162617461, v33);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(*(v0 + 6792), *(v0 + 6800), v33);
    v11 = *(v0 + 6784);
    *(v9 + 22) = 2080;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v9 + 24) = v13;
    _os_log_impl(&dword_230D02000, v7, v8, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  *v2 = *(v0 + 6808);
  if ((*v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = *(v0 + 8632);
  v32 = *(v0 + 6784);
  v15 = RequestType.rawValue.getter();
  v17 = v16;
  sub_230D1CE90(v0 + 8624, v0 + 8640);
  LOBYTE(v15) = sub_230D33FDC(v15, v17, v14);

  if ((v15 & 1) == 0)
  {
    v18 = *(v0 + 8625);
    sub_230D1F9CC(v0 + 8624);
    if (v18 >= 2)
    {
      goto LABEL_8;
    }

LABEL_7:
    v19 = swift_task_alloc();
    *(v0 + 10080) = v19;
    *v19 = v0;
    v20 = sub_230E151D4;
    goto LABEL_12;
  }

  sub_230D1F9CC(v0 + 8624);
LABEL_8:
  sub_230E68950();
  *(v0 + 10072) = CFAbsoluteTimeGetCurrent();
  *(v0 + 2668) = 0u;
  *(v0 + 2684) = 0u;
  *(v0 + 2700) = 0u;
  *(v0 + 2716) = 0u;
  *(v0 + 2732) = 0u;
  *(v0 + 2748) = 0u;
  *(v0 + 2764) = 0u;
  *(v0 + 2780) = 0u;
  *(v0 + 2796) = 0u;
  *(v0 + 2812) = 0u;
  *(v0 + 2828) = 0u;
  *(v0 + 2844) = 0u;
  *(v0 + 2860) = 0u;
  *(v0 + 2876) = 0u;
  *(v0 + 2892) = 0u;
  *(v0 + 2908) = 0u;
  *(v0 + 2924) = 0u;
  *(v0 + 2940) = 0u;
  *(v0 + 2956) = 0u;
  *(v0 + 2972) = 0u;
  *(v0 + 2988) = 0u;
  *(v0 + 3004) = 0u;
  *(v0 + 3020) = 0u;
  *(v0 + 3036) = 0;
  *(v0 + 4412) = 93;
  v21 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 2668), (v0 + 4412));
  *(v0 + 5692) = v21;
  v22 = 0.0;
  if (!v21)
  {
    v23 = *(v0 + 2716);
    v24 = *(v0 + 2788);
    v25 = __CFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      __break(1u);
    }

    v22 = vcvtd_n_f64_u64(v26, 0x14uLL);
  }

  *(v0 + 10096) = v22;
  *(v0 + 8768) = 0;
  v19 = swift_task_alloc();
  *(v0 + 10104) = v19;
  *v19 = v0;
  v20 = sub_230E15338;
LABEL_12:
  v19[1] = v20;
  v27 = *(v0 + 10056);
  v28 = *(v0 + 10048);
  v29 = *(v0 + 10000);
  v30 = *MEMORY[0x277D85DE8];

  return sub_230E046FC(v27, v29, v28, v0 + 6784);
}

uint64_t sub_230E151D4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v4[1072] = v2;
  v4[1073] = a1;
  v4[1074] = v1;
  v5 = v3[1260];
  v6 = *v2;
  v4[1261] = v1;

  v7 = v3[1256];
  if (v1)
  {
    v8 = sub_230E15AA8;
  }

  else
  {
    v8 = sub_230E159B0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_230E15338(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v4[1075] = v2;
  v4[1076] = a1;
  v4[1077] = v1;
  v5 = v3[1263];
  v6 = *v2;
  v4[1264] = v1;

  v7 = v3[1256];
  if (v1)
  {
    v8 = sub_230E155D4;
  }

  else
  {
    v8 = sub_230E1549C;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_230E1549C()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10056);
  v2 = *(v0 + 10000);
  v3 = *(v0 + 8872);
  v4 = *(v0 + 8840);
  v5 = *(v0 + 8832);
  sub_230D34F14(9, *(v0 + 10096), *(v0 + 5692) != 0, v0 + 6784, (v0 + 8768), *(v0 + 10072));
  (*(v4 + 8))(v3, v5);

  sub_230D1CE3C(v0 + 6784);
  v6 = *(v0 + 10056);
  v7 = *(v0 + 10048);
  *(v0 + 10120) = *(v0 + 8608);

  sub_230D1CE3C(v0 + 6784);
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E15750, 0, 0);
}

uint64_t sub_230E155D4()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10112);
  v2 = *(v0 + 10096);
  v3 = *(v0 + 10072);
  v4 = *(v0 + 10056);
  v13 = *(v0 + 10048);
  v5 = *(v0 + 10000);
  v6 = *(v0 + 8872);
  v7 = *(v0 + 8840);
  v8 = *(v0 + 8832);
  v9 = *(v0 + 5692) != 0;
  *(v0 + 8768) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D34F14(9, v2, v9, v0 + 6784, (v0 + 8768), v3);
  MEMORY[0x23191E910](v1);
  (*(v7 + 8))(v6, v8);

  sub_230D1CE3C(v0 + 6784);

  *(v0 + 10128) = *(v0 + 10112);
  sub_230D1CE3C(v0 + 6784);
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E158A4, 0, 0);
}

uint64_t sub_230E15750()
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10120);
  v2 = *(v0 + 10048);
  v3 = *(v0 + 8816);

  *(v0 + 5568) = v1;
  sub_230DF8954(v0 + 5568);
  v4 = *(v0 + 5568);
  v5 = *(v0 + 5584);
  v6 = *(v0 + 5616);
  v3[2] = *(v0 + 5600);
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = *(v0 + 5632);
  v8 = *(v0 + 5648);
  v9 = *(v0 + 5664);
  *(v3 + 105) = *(v0 + 5673);
  v3[5] = v8;
  v3[6] = v9;
  v3[4] = v7;
  v10 = *(v0 + 8904);
  v11 = *(v0 + 8896);
  v12 = *(v0 + 8888);
  v13 = *(v0 + 8880);
  v14 = *(v0 + 8872);
  v15 = *(v0 + 8864);
  v16 = *(v0 + 8856);
  v17 = *(v0 + 8848);

  v18 = *(v0 + 8);
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

uint64_t sub_230E158A4()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[1256];

  v2 = v0[1266];
  v3 = v0[1113];
  v4 = v0[1112];
  v5 = v0[1111];
  v6 = v0[1110];
  v7 = v0[1109];
  v8 = v0[1108];
  v9 = v0[1107];
  v10 = v0[1106];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E159B0()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[1257];
  v2 = v0[1250];
  (*(v0[1105] + 8))(v0[1109], v0[1104]);

  sub_230D1CE3C((v0 + 848));
  v3 = v0[1257];
  v4 = v0[1256];
  v0[1265] = v0[1073];

  sub_230D1CE3C((v0 + 848));
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E15750, 0, 0);
}

uint64_t sub_230E15AA8()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[1257];
  v2 = v0[1256];
  v3 = v0[1250];
  (*(v0[1105] + 8))(v0[1109], v0[1104]);

  sub_230D1CE3C((v0 + 848));

  v0[1266] = v0[1261];
  sub_230D1CE3C((v0 + 848));
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E158A4, 0, 0);
}

uint64_t sub_230E15BA8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 10168);
  v2 = *(*v0 + 10160);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E15CE4, v2, 0);
}

uint64_t sub_230E15CE4()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10160);
  v2 = v0 + 7824;
  v3 = *(v0 + 10144);
  v4 = *(v0 + 8864);
  v5 = *(v0 + 6904);
  v6 = *(v0 + 6912);
  v7 = *(v0 + 6920);
  *(v0 + 10176) = v7;
  v8 = *(v0 + 6928);
  v34 = (v0 + 3212);
  v9 = *(v0 + 6929);
  v10 = *(v0 + 6936);
  *(v0 + 10184) = v10;
  *(v0 + 7824) = v5;
  *(v0 + 7832) = v6;
  *(v0 + 7840) = v7;
  v32 = v9;
  v33 = v8;
  *(v0 + 7848) = v8;
  *(v0 + 7849) = v9;
  *(v0 + 7856) = v10;

  sub_230E68D70();

  v11 = sub_230E68D60();
  v12 = sub_230E693E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_230D7E620(0xD000000000000017, 0x8000000230E80610, v35);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_230D7E620(v6, v7, v35);
    *(v13 + 22) = 2080;
    v15 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v15);

    v16 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v35);

    *(v13 + 24) = v16;
    _os_log_impl(&dword_230D02000, v11, v12, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v14, -1, -1);
    v17 = v13;
    v2 = v0 + 7824;
    MEMORY[0x23191EAE0](v17, -1, -1);
  }

  if (v33 && ((v18 = RequestType.rawValue.getter(), v20 = v19, , LOBYTE(v18) = sub_230D33FDC(v18, v20, v10), , , (v18 & 1) != 0) || v32 >= 2))
  {
    sub_230E68950();
    *(v0 + 10192) = CFAbsoluteTimeGetCurrent();
    *(v0 + 3164) = 0u;
    *(v0 + 3180) = 0u;
    *(v0 + 3196) = 0u;
    *(v0 + 3212) = 0u;
    *(v0 + 3228) = 0u;
    *(v0 + 3244) = 0u;
    *(v0 + 3260) = 0u;
    *(v0 + 3276) = 0u;
    *(v0 + 3292) = 0u;
    *(v0 + 3308) = 0u;
    *(v0 + 3324) = 0u;
    *(v0 + 3340) = 0u;
    *(v0 + 3356) = 0u;
    *(v0 + 3372) = 0u;
    *(v0 + 3388) = 0u;
    *(v0 + 3404) = 0u;
    *(v0 + 3420) = 0u;
    *(v0 + 3436) = 0u;
    *(v0 + 3452) = 0u;
    *(v0 + 3468) = 0u;
    *(v0 + 3484) = 0u;
    *(v0 + 3500) = 0u;
    *(v0 + 3516) = 0u;
    *(v0 + 3532) = 0;
    *(v0 + 5052) = 93;
    v26 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 3164), (v0 + 5052));
    *(v0 + 5820) = v26;
    v27 = 0.0;
    if (!v26)
    {
      v28 = *(v0 + 3284);
      if (__CFADD__(*v34, v28))
      {
        __break(1u);
      }

      v27 = vcvtd_n_f64_u64(*v34 + v28, 0x14uLL);
    }

    *(v0 + 10216) = v27;
    *(v0 + 8680) = 0;
    v29 = swift_task_alloc();
    *(v0 + 10224) = v29;
    *v29 = v0;
    v29[1] = sub_230E162D4;
    v22 = *(v0 + 10160);
    v23 = *(v0 + 10144);
    v24 = *(v0 + 10136);
    v25 = *(v0 + 4538);
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 10200) = v21;
    *v21 = v0;
    v21[1] = sub_230E1617C;
    v22 = *(v0 + 10160);
    v23 = *(v0 + 10144);
    v24 = *(v0 + 10136);
    v25 = *(v0 + 4538);
  }

  v30 = *MEMORY[0x277D85DE8];

  return sub_230D4EE84(v0 + 8776, v25, v24, v23, v22, v2);
}

uint64_t sub_230E1617C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 10200);
  v4 = *v1;
  *(*v1 + 10208) = v0;

  v5 = *(v2 + 10160);
  if (v0)
  {
    v6 = sub_230E16CD4;
  }

  else
  {
    v6 = sub_230E16B7C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E162D4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 10224);
  v4 = *v1;
  *(*v1 + 10232) = v0;

  v5 = *(v2 + 10160);
  if (v0)
  {
    v6 = sub_230E165C0;
  }

  else
  {
    v6 = sub_230E1642C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E1642C()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10184);
  v2 = *(v0 + 10176);
  v3 = *(v0 + 10160);
  v4 = *(v0 + 10144);
  v5 = *(v0 + 8864);
  v6 = *(v0 + 8840);
  v7 = *(v0 + 8832);
  sub_230D37054(17, *(v0 + 10216), *(v0 + 5820) != 0, v0 + 7824, (v0 + 8680), *(v0 + 10192));
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 10184);
  v9 = *(v0 + 10176);
  *(v0 + 10240) = *(v0 + 8776);

  *(v0 + 155) = 11;
  v10 = swift_task_alloc();
  *(v0 + 10248) = v10;
  *v10 = v0;
  v10[1] = sub_230E16784;
  v11 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 7064, (v0 + 155), 0, 0);
}

uint64_t sub_230E165C0()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10232);
  v2 = *(v0 + 10216);
  v3 = *(v0 + 10192);
  v4 = *(v0 + 10176);
  v24 = *(v0 + 10184);
  v5 = *(v0 + 10160);
  v6 = *(v0 + 10144);
  v7 = *(v0 + 8864);
  v8 = *(v0 + 8840);
  v9 = *(v0 + 8832);
  v10 = *(v0 + 5820) != 0;
  *(v0 + 8680) = v1;
  swift_willThrow();
  v11 = v1;
  sub_230D37054(17, v2, v10, v0 + 7824, (v0 + 8680), v3);
  MEMORY[0x23191E910](v1);
  (*(v8 + 8))(v7, v9);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v12 = *(v0 + 10232);
  v13 = *(v0 + 8904);
  v14 = *(v0 + 8896);
  v15 = *(v0 + 8888);
  v16 = *(v0 + 8880);
  v17 = *(v0 + 8872);
  v18 = *(v0 + 8864);
  v19 = *(v0 + 8856);
  v20 = *(v0 + 8848);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_230E16784()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 10248);
  v2 = *(*v0 + 10240);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E168C0, v2, 0);
}

uint64_t sub_230E168C0()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10240);
  v2 = *(v0 + 10152);
  v3 = *(v0 + 7064);
  v4 = *(v0 + 7072);
  v5 = *(v0 + 7080);
  *(v0 + 10256) = v5;
  v6 = *(v0 + 7088);
  v7 = *(v0 + 7089);
  v8 = *(v0 + 7096);
  *(v0 + 10264) = v8;
  *(v0 + 7624) = v3;
  *(v0 + 7632) = v4;
  *(v0 + 7640) = v5;
  *(v0 + 7648) = v6;
  *(v0 + 7649) = v7;
  *(v0 + 7656) = v8;

  v9 = swift_task_alloc();
  *(v0 + 10272) = v9;
  *v9 = v0;
  v9[1] = sub_230E16A0C;
  v10 = *(v0 + 10240);
  v11 = *(v0 + 10152);
  v12 = *MEMORY[0x277D85DE8];

  return sub_230D73C94(v0 + 8728, 11, v0 + 7624, v10, v10, v11);
}

uint64_t sub_230E16A0C()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 10272);
  v12 = *v1;
  *(*v1 + 10280) = v0;

  if (v0)
  {
    v4 = *(v2 + 10264);
    v5 = *(v2 + 10256);

    v6 = sub_230E16F80;
  }

  else
  {
    v7 = *(v2 + 10264);
    v8 = *(v2 + 10256);

    v6 = sub_230E16E2C;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E16B7C()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10184);
  v2 = *(v0 + 10176);
  v3 = *(v0 + 10160);
  v4 = *(v0 + 10144);
  (*(*(v0 + 8840) + 8))(*(v0 + 8864), *(v0 + 8832));

  v5 = *(v0 + 10184);
  v6 = *(v0 + 10176);
  *(v0 + 10240) = *(v0 + 8776);

  *(v0 + 155) = 11;
  v7 = swift_task_alloc();
  *(v0 + 10248) = v7;
  *v7 = v0;
  v7[1] = sub_230E16784;
  v8 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 7064, (v0 + 155), 0, 0);
}

uint64_t sub_230E16CD4()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[1273];
  v2 = v0[1272];
  v3 = v0[1270];
  v4 = v0[1268];
  (*(v0[1105] + 8))(v0[1108], v0[1104]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[1276];
  v6 = v0[1113];
  v7 = v0[1112];
  v8 = v0[1111];
  v9 = v0[1110];
  v10 = v0[1109];
  v11 = v0[1108];
  v12 = v0[1107];
  v13 = v0[1106];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_230E16E2C()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10240);
  v2 = *(v0 + 8816);

  *(v0 + 5696) = *(v0 + 8728);
  sub_230DF88E0(v0 + 5696);
  v3 = *(v0 + 5696);
  v4 = *(v0 + 5712);
  v5 = *(v0 + 5744);
  v2[2] = *(v0 + 5728);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 5760);
  v7 = *(v0 + 5776);
  v8 = *(v0 + 5792);
  *(v2 + 105) = *(v0 + 5801);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8904);
  v10 = *(v0 + 8896);
  v11 = *(v0 + 8888);
  v12 = *(v0 + 8880);
  v13 = *(v0 + 8872);
  v14 = *(v0 + 8864);
  v15 = *(v0 + 8856);
  v16 = *(v0 + 8848);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_230E16F80()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[1280];

  v2 = v0[1285];
  v3 = v0[1113];
  v4 = v0[1112];
  v5 = v0[1111];
  v6 = v0[1110];
  v7 = v0[1109];
  v8 = v0[1108];
  v9 = v0[1107];
  v10 = v0[1106];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E1708C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 10320);
  v2 = *(*v0 + 10312);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E171C8, v2, 0);
}

uint64_t sub_230E171C8()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = (v0 + 3708);
  v2 = *(v0 + 10312);
  v3 = *(v0 + 10296);
  v4 = *(v0 + 8856);
  v5 = *(v0 + 6504);
  v6 = *(v0 + 6512);
  v7 = *(v0 + 6520);
  *(v0 + 10328) = v7;
  v8 = *(v0 + 6528);
  v9 = *(v0 + 6529);
  v10 = *(v0 + 6536);
  *(v0 + 10336) = v10;
  v32 = v8;
  *(v0 + 7584) = v5;
  *(v0 + 7592) = v6;
  *(v0 + 7600) = v7;
  *(v0 + 7608) = v8;
  v31 = v9;
  *(v0 + 7609) = v9;
  *(v0 + 7616) = v10;

  sub_230E68D70();

  v11 = sub_230E68D60();
  v12 = sub_230E693E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_230D7E620(0xD000000000000017, 0x8000000230E80610, v33);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_230D7E620(v6, v7, v33);
    *(v13 + 22) = 2080;
    v15 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v15);

    v16 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v13 + 24) = v16;
    _os_log_impl(&dword_230D02000, v11, v12, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v13, -1, -1);

    if (!v32)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v32)
    {
LABEL_7:
      v20 = swift_task_alloc();
      *(v0 + 10352) = v20;
      *v20 = v0;
      v21 = sub_230E17654;
      goto LABEL_12;
    }
  }

  v17 = RequestType.rawValue.getter();
  v19 = v18;

  LOBYTE(v17) = sub_230D33FDC(v17, v19, v10);

  if ((v17 & 1) == 0 && v31 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v0 + 10344) = CFAbsoluteTimeGetCurrent();
  *(v0 + 3660) = 0u;
  *(v0 + 3676) = 0u;
  *(v0 + 3692) = 0u;
  *(v0 + 3708) = 0u;
  *(v0 + 3724) = 0u;
  *(v0 + 3740) = 0u;
  *(v0 + 3756) = 0u;
  *(v0 + 3772) = 0u;
  *(v0 + 3788) = 0u;
  *(v0 + 3804) = 0u;
  *(v0 + 3820) = 0u;
  *(v0 + 3836) = 0u;
  *(v0 + 3852) = 0u;
  *(v0 + 3868) = 0u;
  *(v0 + 3884) = 0u;
  *(v0 + 3900) = 0u;
  *(v0 + 3916) = 0u;
  *(v0 + 3932) = 0u;
  *(v0 + 3948) = 0u;
  *(v0 + 3964) = 0u;
  *(v0 + 3980) = 0u;
  *(v0 + 3996) = 0u;
  *(v0 + 4012) = 0u;
  *(v0 + 4028) = 0;
  *(v0 + 4156) = 93;
  v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 3660), (v0 + 4156));
  *(v0 + 5948) = v22;
  v23 = 0.0;
  if (!v22)
  {
    v24 = *(v0 + 3780);
    if (__CFADD__(*v1, v24))
    {
      __break(1u);
    }

    v23 = vcvtd_n_f64_u64(*v1 + v24, 0x14uLL);
  }

  *(v0 + 10368) = v23;
  *(v0 + 8808) = 0;
  v20 = swift_task_alloc();
  *(v0 + 10376) = v20;
  *v20 = v0;
  v21 = sub_230E177AC;
LABEL_12:
  v20[1] = v21;
  v25 = *(v0 + 10312);
  v26 = *(v0 + 10296);
  v27 = *(v0 + 10288);
  v28 = *(v0 + 4539);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230D4EE84(v0 + 8696, v28, v27, v26, v25, v0 + 7584);
}

uint64_t sub_230E17654()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 10352);
  v4 = *v1;
  *(*v1 + 10360) = v0;

  v5 = *(v2 + 10312);
  if (v0)
  {
    v6 = sub_230E181A4;
  }

  else
  {
    v6 = sub_230E18050;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E177AC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 10376);
  v4 = *v1;
  *(*v1 + 10384) = v0;

  v5 = *(v2 + 10312);
  if (v0)
  {
    v6 = sub_230E17A94;
  }

  else
  {
    v6 = sub_230E17904;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E17904()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10336);
  v2 = *(v0 + 10328);
  v3 = *(v0 + 10312);
  v4 = *(v0 + 10296);
  v5 = *(v0 + 8856);
  v6 = *(v0 + 8840);
  v7 = *(v0 + 8832);
  sub_230D37054(17, *(v0 + 10368), *(v0 + 5948) != 0, v0 + 7584, (v0 + 8808), *(v0 + 10344));
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 10336);
  v9 = *(v0 + 10328);
  *(v0 + 10392) = *(v0 + 8696);

  *(v0 + 2169) = 12;
  v10 = swift_task_alloc();
  *(v0 + 10400) = v10;
  *v10 = v0;
  v10[1] = sub_230E17C58;
  v11 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 6664, (v0 + 2169), 0, 0);
}

uint64_t sub_230E17A94()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10384);
  v2 = *(v0 + 10368);
  v3 = *(v0 + 10344);
  v4 = *(v0 + 10328);
  v24 = *(v0 + 10336);
  v5 = *(v0 + 10312);
  v6 = *(v0 + 10296);
  v7 = *(v0 + 8856);
  v8 = *(v0 + 8840);
  v9 = *(v0 + 8832);
  v10 = *(v0 + 5948) != 0;
  *(v0 + 8808) = v1;
  swift_willThrow();
  v11 = v1;
  sub_230D37054(17, v2, v10, v0 + 7584, (v0 + 8808), v3);
  MEMORY[0x23191E910](v1);
  (*(v8 + 8))(v7, v9);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v12 = *(v0 + 10384);
  v13 = *(v0 + 8904);
  v14 = *(v0 + 8896);
  v15 = *(v0 + 8888);
  v16 = *(v0 + 8880);
  v17 = *(v0 + 8872);
  v18 = *(v0 + 8864);
  v19 = *(v0 + 8856);
  v20 = *(v0 + 8848);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_230E17C58()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 10400);
  v2 = *(*v0 + 10392);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E17D94, v2, 0);
}

uint64_t sub_230E17D94()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10392);
  v2 = *(v0 + 10304);
  v3 = *(v0 + 6664);
  v4 = *(v0 + 6672);
  v5 = *(v0 + 6680);
  *(v0 + 10408) = v5;
  v6 = *(v0 + 6688);
  v7 = *(v0 + 6689);
  v8 = *(v0 + 6696);
  *(v0 + 10416) = v8;
  *(v0 + 8064) = v3;
  *(v0 + 8072) = v4;
  *(v0 + 8080) = v5;
  *(v0 + 8088) = v6;
  *(v0 + 8089) = v7;
  *(v0 + 8096) = v8;

  v9 = swift_task_alloc();
  *(v0 + 10424) = v9;
  *v9 = v0;
  v9[1] = sub_230E17EE0;
  v10 = *(v0 + 10392);
  v11 = *(v0 + 10304);
  v12 = *MEMORY[0x277D85DE8];

  return sub_230D747EC(v0 + 8704, 12, v0 + 8064, v10, v11, v10);
}

uint64_t sub_230E17EE0()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 10424);
  v12 = *v1;
  *(*v1 + 10432) = v0;

  if (v0)
  {
    v4 = *(v2 + 10416);
    v5 = *(v2 + 10408);

    v6 = sub_230E18450;
  }

  else
  {
    v7 = *(v2 + 10416);
    v8 = *(v2 + 10408);

    v6 = sub_230E182FC;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E18050()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10336);
  v2 = *(v0 + 10328);
  v3 = *(v0 + 10312);
  v4 = *(v0 + 10296);
  (*(*(v0 + 8840) + 8))(*(v0 + 8856), *(v0 + 8832));

  v5 = *(v0 + 10336);
  v6 = *(v0 + 10328);
  *(v0 + 10392) = *(v0 + 8696);

  *(v0 + 2169) = 12;
  v7 = swift_task_alloc();
  *(v0 + 10400) = v7;
  *v7 = v0;
  v7[1] = sub_230E17C58;
  v8 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 6664, (v0 + 2169), 0, 0);
}

uint64_t sub_230E181A4()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[1292];
  v2 = v0[1291];
  v3 = v0[1289];
  v4 = v0[1287];
  (*(v0[1105] + 8))(v0[1107], v0[1104]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[1295];
  v6 = v0[1113];
  v7 = v0[1112];
  v8 = v0[1111];
  v9 = v0[1110];
  v10 = v0[1109];
  v11 = v0[1108];
  v12 = v0[1107];
  v13 = v0[1106];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_230E182FC()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10392);
  v2 = *(v0 + 8816);

  *(v0 + 5824) = *(v0 + 8704);
  sub_230DF886C(v0 + 5824);
  v3 = *(v0 + 5824);
  v4 = *(v0 + 5840);
  v5 = *(v0 + 5872);
  v2[2] = *(v0 + 5856);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 5888);
  v7 = *(v0 + 5904);
  v8 = *(v0 + 5920);
  *(v2 + 105) = *(v0 + 5929);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8904);
  v10 = *(v0 + 8896);
  v11 = *(v0 + 8888);
  v12 = *(v0 + 8880);
  v13 = *(v0 + 8872);
  v14 = *(v0 + 8864);
  v15 = *(v0 + 8856);
  v16 = *(v0 + 8848);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_230E18450()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[1299];

  v2 = v0[1304];
  v3 = v0[1113];
  v4 = v0[1112];
  v5 = v0[1111];
  v6 = v0[1110];
  v7 = v0[1109];
  v8 = v0[1108];
  v9 = v0[1107];
  v10 = v0[1106];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E1855C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 10488);
  v2 = *(*v0 + 10480);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E18698, v2, 0);
}

uint64_t sub_230E18698()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10480);
  v2 = *(v0 + 10448);
  v3 = *(v0 + 8848);
  v4 = *(v0 + 8304);
  v5 = *(v0 + 8312);
  v6 = *(v0 + 8320);
  *(v0 + 10496) = v6;
  v7 = *(v0 + 8328);
  v8 = *(v0 + 8329);
  v9 = *(v0 + 8336);
  *(v0 + 10504) = v9;
  v34 = v7;
  *(v0 + 6864) = v4;
  *(v0 + 6872) = v5;
  *(v0 + 6880) = v6;
  *(v0 + 6888) = v7;
  v33 = v8;
  *(v0 + 6889) = v8;
  *(v0 + 6896) = v9;

  sub_230E68D70();

  v10 = sub_230E68D60();
  v11 = sub_230E693E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_230D7E620(0xD000000000000017, 0x8000000230E80610, v35);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_230D7E620(v5, v6, v35);
    *(v12 + 22) = 2080;
    v14 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v14);

    v15 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v35);

    *(v12 + 24) = v15;
    _os_log_impl(&dword_230D02000, v10, v11, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v13, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);

    if (!v34)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v34)
    {
LABEL_7:
      v19 = swift_task_alloc();
      *(v0 + 10520) = v19;
      *v19 = v0;
      v20 = sub_230E18B2C;
      goto LABEL_12;
    }
  }

  v16 = RequestType.rawValue.getter();
  v18 = v17;

  LOBYTE(v16) = sub_230D33FDC(v16, v18, v9);

  if ((v16 & 1) == 0 && v33 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v0 + 10512) = CFAbsoluteTimeGetCurrent();
  *(v0 + 156) = 0u;
  *(v0 + 172) = 0u;
  *(v0 + 188) = 0u;
  *(v0 + 204) = 0u;
  *(v0 + 220) = 0u;
  *(v0 + 236) = 0u;
  *(v0 + 252) = 0u;
  *(v0 + 268) = 0u;
  *(v0 + 284) = 0u;
  *(v0 + 300) = 0u;
  *(v0 + 316) = 0u;
  *(v0 + 332) = 0u;
  *(v0 + 348) = 0u;
  *(v0 + 364) = 0u;
  *(v0 + 380) = 0u;
  *(v0 + 396) = 0u;
  *(v0 + 412) = 0u;
  *(v0 + 428) = 0u;
  *(v0 + 444) = 0u;
  *(v0 + 460) = 0u;
  *(v0 + 476) = 0u;
  *(v0 + 492) = 0u;
  *(v0 + 508) = 0u;
  *(v0 + 524) = 0;
  *(v0 + 4796) = 93;
  v21 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 156), (v0 + 4796));
  *(v0 + 6068) = v21;
  v22 = 0.0;
  if (!v21)
  {
    v23 = *(v0 + 204);
    v24 = *(v0 + 276);
    v25 = __CFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      __break(1u);
    }

    v22 = vcvtd_n_f64_u64(v26, 0x14uLL);
  }

  *(v0 + 10536) = v22;
  *(v0 + 8688) = 0;
  v19 = swift_task_alloc();
  *(v0 + 10544) = v19;
  *v19 = v0;
  v20 = sub_230E18C84;
LABEL_12:
  v19[1] = v20;
  v27 = *(v0 + 10480);
  v28 = *(v0 + 10448);
  v29 = *(v0 + 10440);
  v30 = *(v0 + 4665);
  v31 = *MEMORY[0x277D85DE8];

  return sub_230D4EE84(v0 + 8752, v30, v29, v28, v27, v0 + 6864);
}

uint64_t sub_230E18B2C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 10520);
  v4 = *v1;
  *(*v1 + 10528) = v0;

  v5 = *(v2 + 10480);
  if (v0)
  {
    v6 = sub_230E196A0;
  }

  else
  {
    v6 = sub_230E1954C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E18C84()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 10544);
  v4 = *v1;
  *(*v1 + 10552) = v0;

  v5 = *(v2 + 10480);
  if (v0)
  {
    v6 = sub_230E18F6C;
  }

  else
  {
    v6 = sub_230E18DDC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E18DDC()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10504);
  v2 = *(v0 + 10496);
  v3 = *(v0 + 10480);
  v4 = *(v0 + 10448);
  v5 = *(v0 + 8848);
  v6 = *(v0 + 8840);
  v7 = *(v0 + 8832);
  sub_230D37054(17, *(v0 + 10536), *(v0 + 6068) != 0, v0 + 6864, (v0 + 8688), *(v0 + 10512));
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 10504);
  v9 = *(v0 + 10496);
  *(v0 + 10560) = *(v0 + 8752);

  *(v0 + 1673) = 13;
  v10 = swift_task_alloc();
  *(v0 + 10568) = v10;
  *v10 = v0;
  v10[1] = sub_230E19130;
  v11 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 7144, (v0 + 1673), 0, 0);
}

uint64_t sub_230E18F6C()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10552);
  v2 = *(v0 + 10536);
  v3 = *(v0 + 10512);
  v4 = *(v0 + 10496);
  v24 = *(v0 + 10504);
  v5 = *(v0 + 10480);
  v6 = *(v0 + 10448);
  v7 = *(v0 + 8848);
  v8 = *(v0 + 8840);
  v9 = *(v0 + 8832);
  v10 = *(v0 + 6068) != 0;
  *(v0 + 8688) = v1;
  swift_willThrow();
  v11 = v1;
  sub_230D37054(17, v2, v10, v0 + 6864, (v0 + 8688), v3);
  MEMORY[0x23191E910](v1);
  (*(v8 + 8))(v7, v9);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v12 = *(v0 + 10552);
  v13 = *(v0 + 8904);
  v14 = *(v0 + 8896);
  v15 = *(v0 + 8888);
  v16 = *(v0 + 8880);
  v17 = *(v0 + 8872);
  v18 = *(v0 + 8864);
  v19 = *(v0 + 8856);
  v20 = *(v0 + 8848);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_230E19130()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 10568);
  v2 = *(*v0 + 10560);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E1926C, v2, 0);
}

void sub_230E1926C()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10560);
  v2 = *(v0 + 4666);
  v3 = *(v0 + 10464);
  v4 = *(v0 + 10456);
  v5 = *(v0 + 7144);
  v6 = *(v0 + 7152);
  v7 = *(v0 + 7160);
  *(v0 + 10576) = v7;
  v8 = *(v0 + 7168);
  v9 = *(v0 + 7169);
  v10 = *(v0 + 7176);
  *(v0 + 10584) = v10;
  *(v0 + 7264) = v5;
  *(v0 + 7272) = v6;
  *(v0 + 7280) = v7;
  *(v0 + 7288) = v8;
  *(v0 + 7289) = v9;
  *(v0 + 7296) = v10;
  sub_230D0DD0C(v4, v3);

  v11 = swift_task_alloc();
  *(v0 + 10592) = v11;
  *v11 = v0;
  v11[1] = sub_230E193DC;
  v12 = *(v0 + 10472);
  v13 = *(v0 + 10464);
  v14 = *(v0 + 10456);
  v15 = *MEMORY[0x277D85DE8];
  v18 = *(v0 + 10560);

  JUMPOUT(0x230D75344);
}

uint64_t sub_230E193DC()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 10592);
  v12 = *v1;
  *(*v1 + 10600) = v0;

  if (v0)
  {
    v4 = *(v2 + 10584);
    v5 = *(v2 + 10576);

    v6 = sub_230E19948;
  }

  else
  {
    v7 = *(v2 + 10584);
    v8 = *(v2 + 10576);

    v6 = sub_230E197F8;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E1954C()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10504);
  v2 = *(v0 + 10496);
  v3 = *(v0 + 10480);
  v4 = *(v0 + 10448);
  (*(*(v0 + 8840) + 8))(*(v0 + 8848), *(v0 + 8832));

  v5 = *(v0 + 10504);
  v6 = *(v0 + 10496);
  *(v0 + 10560) = *(v0 + 8752);

  *(v0 + 1673) = 13;
  v7 = swift_task_alloc();
  *(v0 + 10568) = v7;
  *v7 = v0;
  v7[1] = sub_230E19130;
  v8 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 7144, (v0 + 1673), 0, 0);
}

uint64_t sub_230E196A0()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[1313];
  v2 = v0[1312];
  v3 = v0[1310];
  v4 = v0[1306];
  (*(v0[1105] + 8))(v0[1106], v0[1104]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[1316];
  v6 = v0[1113];
  v7 = v0[1112];
  v8 = v0[1111];
  v9 = v0[1110];
  v10 = v0[1109];
  v11 = v0[1108];
  v12 = v0[1107];
  v13 = v0[1106];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_230E197F8()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 10560);
  v2 = *(v0 + 8816);

  *(v0 + 2048) = *(v0 + 8800);
  sub_230DF87F8(v0 + 2048);
  v3 = *(v0 + 2048);
  v4 = *(v0 + 2064);
  v5 = *(v0 + 2096);
  v2[2] = *(v0 + 2080);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 2112);
  v7 = *(v0 + 2128);
  v8 = *(v0 + 2144);
  *(v2 + 105) = *(v0 + 2153);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8904);
  v10 = *(v0 + 8896);
  v11 = *(v0 + 8888);
  v12 = *(v0 + 8880);
  v13 = *(v0 + 8872);
  v14 = *(v0 + 8864);
  v15 = *(v0 + 8856);
  v16 = *(v0 + 8848);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_230E19948()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[1320];

  v2 = v0[1325];
  v3 = v0[1113];
  v4 = v0[1112];
  v5 = v0[1111];
  v6 = v0[1110];
  v7 = v0[1109];
  v8 = v0[1108];
  v9 = v0[1107];
  v10 = v0[1106];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E19A54()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[1217];

  v2 = v0[1219];
  v3 = v0[1113];
  v4 = v0[1112];
  v5 = v0[1111];
  v6 = v0[1110];
  v7 = v0[1109];
  v8 = v0[1108];
  v9 = v0[1107];
  v10 = v0[1106];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E19B60()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[1234];

  v2 = v0[1236];
  v3 = v0[1113];
  v4 = v0[1112];
  v5 = v0[1111];
  v6 = v0[1110];
  v7 = v0[1109];
  v8 = v0[1108];
  v9 = v0[1107];
  v10 = v0[1106];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E19C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_230D0FA64(a3, v28 - v12, &qword_27DB5B010, &unk_230E733F0);
  v14 = sub_230E69310();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_230D2D9F8(v13, &qword_27DB5B010, &unk_230E733F0);
  }

  else
  {
    sub_230E69300();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_230E692D0();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_230E690F0() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_230D2D9F8(a3, &qword_27DB5B010, &unk_230E733F0);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_230D2D9F8(a3, &qword_27DB5B010, &unk_230E733F0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

unint64_t sub_230E19F6C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A988, &qword_230E6BA28);
    v2 = sub_230E69640();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v28 = v1;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v16);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v18 = (v16 << 10) | (16 * v17);
        v19 = (*(v1 + 48) + v18);
        v21 = *v19;
        v20 = v19[1];
        v29 = *(*(v1 + 56) + v18);

        sub_230D0DD0C(v29, *(&v29 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D768, &qword_230E7F060);
        swift_dynamicCast();
        result = sub_230DA41A0(v21, v20);
        if (v22)
        {
          v10 = 16 * result;
          v11 = (v2[6] + 16 * result);
          v12 = v11[1];
          *v11 = v21;
          v11[1] = v20;

          v13 = (v2[7] + v10);
          v1 = v28;
          v14 = *v13;
          v15 = v13[1];
          *v13 = v30;
          v13[1] = v31;
          result = sub_230D0F494(v14, v15);
          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v2[6] + 16 * result);
          *v23 = v21;
          v23[1] = v20;
          v24 = (v2[7] + 16 * result);
          *v24 = v30;
          v24[1] = v31;
          v25 = v2[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_21;
          }

          v2[2] = v27;
          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v16 = v9;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t ServicesIntelligenceXPC.ServerError.hashValue.getter()
{
  sub_230E699B0();
  MEMORY[0x23191E2B0](0);
  return sub_230E699D0();
}

unint64_t sub_230E1A28C()
{
  result = qword_27DB5D750;
  if (!qword_27DB5D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D750);
  }

  return result;
}

unint64_t sub_230E1A374()
{
  result = qword_27DB5D758;
  if (!qword_27DB5D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D758);
  }

  return result;
}

void sub_230E1A3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18)
{
  v19 = a18 >> 4;
  if (v19 <= 5)
  {
    if (a18 >> 4 <= 2u)
    {
      if (v19 == 1)
      {
LABEL_25:

        goto LABEL_26;
      }

      if (v19 != 2)
      {
        return;
      }
    }

    else
    {
      if (v19 == 3)
      {
        goto LABEL_27;
      }

      if (v19 != 4)
      {
        if (v19 != 5)
        {
          return;
        }

        goto LABEL_26;
      }
    }

LABEL_26:

LABEL_27:

    return;
  }

  if (a18 >> 4 <= 8u)
  {
    if (v19 != 6)
    {
      if (v19 != 7 && v19 != 8)
      {
        return;
      }

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v19 == 9 || v19 == 10)
  {
    goto LABEL_26;
  }

  if (v19 == 11)
  {

    sub_230D0F4A8(a4, a5);
  }
}

uint64_t sub_230E1A5C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_230E68EB0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_230D1BF00;

  return sub_230E09B20(a1, v10, v11, v1 + v6, v13, v14, v15, v1 + v9);
}

uint64_t sub_230E1A718(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_230D1D2F8;

  return sub_230D8EB34(a1, v5);
}

uint64_t sub_230E1A7D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_230D1BF00;

  return sub_230D8EB34(a1, v5);
}

double sub_230E1A888@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_230DA41A0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    *&v21[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DB9FA0();
      v12 = *&v21[0];
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    memmove(a3, (*(v12 + 56) + (v9 << 7)), 0x79uLL);
    sub_230E1ACCC(v9, v12);
    *v4 = v12;
    nullsub_1(a3, v14, v15, v16);
  }

  else
  {
    sub_230D65C88(v21);
    v18 = v25;
    a3[4] = v24;
    a3[5] = v18;
    a3[6] = v26[0];
    *(a3 + 105) = *(v26 + 9);
    v19 = v21[1];
    *a3 = v21[0];
    a3[1] = v19;
    result = *&v22;
    v20 = v23;
    a3[2] = v22;
    a3[3] = v20;
  }

  return result;
}

double sub_230E1A960@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_230DA41A0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DBA17C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_230D0E394((*(v12 + 56) + 32 * v9), a3);
    sub_230E1AE88(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_230E1AA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_230DA41A0(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DBA810();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 24 * v9;
    *a3 = *v14;
    *(a3 + 8) = *(v14 + 8);
    result = sub_230E1B038(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

unint64_t sub_230E1AAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  result = sub_230DB4E78(a1, a2, a3, a4);
  if (v10)
  {
    v11 = result;
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    v18 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DBAF54();
      v14 = v18;
    }

    v15 = *(v14 + 48) + 32 * v11;
    v16 = *(v15 + 8);
    v17 = *(v15 + 24);

    *a5 = *(*(v14 + 56) + v11);
    result = sub_230E1B3A4(v11, v14);
    *v6 = v14;
  }

  else
  {
    *a5 = 3;
  }

  return result;
}

double sub_230E1AB68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_230DA41A0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DB9E1C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    *a3 = *(*(v12 + 56) + 16 * v9);
    sub_230E1B1F4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_230E6E750;
  }

  return result;
}

double sub_230E1AC18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_230DA41A0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DBB23C();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 48 * v9);
    v15 = v14[1];
    *a3 = *v14;
    a3[1] = v15;
    a3[2] = v14[2];
    sub_230E1B57C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

char *sub_230E1ACCC(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_230E699B0();

      sub_230E69100();
      v13 = sub_230E699D0();

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
        result = (v18 + (v3 << 7));
        v19 = (v18 + (v6 << 7));
        if (v3 << 7 != v6 << 7 || (v3 = v6, result >= v19 + 128))
        {
          result = memmove(result, v19, 0x80uLL);
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t sub_230E1AE88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_230E699B0();

      sub_230E69100();
      v14 = sub_230E699D0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_230E1B038(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_230E699B0();

      sub_230E69100();
      v14 = sub_230E699D0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_230E1B1F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_230E699B0();

      sub_230E69100();
      v13 = sub_230E699D0();

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

uint64_t sub_230E1B3A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      sub_230E699B0();

      sub_230E69100();
      sub_230E69100();
      v15 = sub_230E699D0();

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
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v20 = v19[1];
          *v18 = *v19;
          v18[1] = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + v3);
        v23 = (v21 + v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

uint64_t sub_230E1B57C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_230E699B0();

      sub_230E69100();
      v15 = sub_230E699D0();

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
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
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

unint64_t sub_230E1B738(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  result = sub_230DA41A0(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_230DB5A54(v22, a7 & 1);
      v26 = *v8;
      result = sub_230DA41A0(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_16:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      sub_230DB9644();
      result = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = v28[7] + 32 * result;
    *v29 = a1;
    *(v29 + 8) = a2 & 1;
    *(v29 + 16) = a3;
    *(v29 + 24) = a4 & 1;
    return result;
  }

  v28[(result >> 6) + 8] |= 1 << result;
  v30 = (v28[6] + 16 * result);
  *v30 = a5;
  v30[1] = a6;
  v31 = v28[7] + 32 * result;
  *v31 = a1;
  *(v31 + 8) = a2 & 1;
  *(v31 + 16) = a3;
  *(v31 + 24) = a4 & 1;
  v32 = v28[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28[2] = v33;
}

uint64_t sub_230E1B948(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_230DA41A0(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_230DB602C(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_230DA41A0(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_230DB9990();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    v30 = *(v27 + 16);
    *(v27 + 16) = a3;

    return sub_230D0F474(v28, v29, v30);
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v32 = (v26[6] + 16 * v15);
  *v32 = a4;
  v32[1] = a5;
  v33 = v26[7] + 24 * v15;
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = a3;
  v34 = v26[2];
  v19 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v35;
}

uint64_t sub_230E1BB1C(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, char a5, char a6, void (*a7)(void), void (*a8)(uint64_t, void))
{
  v10 = v8;
  v17 = *v8;
  v18 = sub_230DB4B4C(a2, a3, a4, a5);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a6 & 1) == 0)
  {
    if (v25 < v23 || (a6 & 1) != 0)
    {
      a8(v23, a6 & 1);
      v27 = *v10;
      v18 = sub_230DB4B4C(a2, a3, a4, a5);
      if ((v24 & 1) != (v28 & 1))
      {
LABEL_18:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      a7();
      v18 = v26;
    }
  }

  v29 = *v10;
  if (v24)
  {
    v30 = v29[7];
    v31 = *(v30 + 8 * v18);
    *(v30 + 8 * v18) = a1;
  }

  v29[(v18 >> 6) + 8] |= 1 << v18;
  v33 = v29[6] + 32 * v18;
  *v33 = a2;
  *(v33 + 8) = a3;
  *(v33 + 16) = a4;
  *(v33 + 24) = a5;
  *(v29[7] + 8 * v18) = a1;
  v34 = v29[2];
  v22 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29[2] = v35;
}

uint64_t sub_230E1BCE4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230DA41A0(a2, a3);
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
      sub_230DB6CB0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_230DA41A0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_230DB9FA0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + (v11 << 7);

    return sub_230E1DF64(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + (v11 << 7));
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[3];
  v26[2] = a1[2];
  v26[3] = v29;
  *v26 = v27;
  v26[1] = v28;
  v30 = a1[4];
  v31 = a1[5];
  v32 = a1[6];
  *(v26 + 105) = *(a1 + 105);
  v26[5] = v31;
  v26[6] = v32;
  v26[4] = v30;
  v33 = v22[2];
  v15 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v34;
}

_OWORD *sub_230E1BE84(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230DA41A0(a2, a3);
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
      sub_230DBA17C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_230DB7074(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_230DA41A0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_230E69950();
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

    return sub_230D0E394(a1, v23);
  }

  else
  {
    sub_230E1C5FC(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_230E1BFD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_230DB4E78(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_230DB89E8(v20, a6 & 1);
      v24 = *v7;
      result = sub_230DB4E78(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_230DBAF54();
      result = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    *(v26[7] + result) = a1;
    return result;
  }

  v26[(result >> 6) + 8] |= 1 << result;
  v27 = (v26[6] + 32 * result);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  *(v26[7] + result) = a1;
  v28 = v26[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26[2] = v29;
}

uint64_t sub_230E1C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_230DA41A0(a3, a4);
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
      sub_230DB69F4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_230DA41A0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_230DB9E1C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_230D0F4A8(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

uint64_t sub_230E1C2F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230DA41A0(a2, a3);
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
      sub_230DB8CBC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_230DA41A0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_230E69950();
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      v19 = v11;
      sub_230DBB0CC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

LABEL_19:
    JUMPOUT(0x23191E910);
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

uint64_t sub_230E1C46C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230DA41A0(a2, a3);
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
      sub_230DB8F64(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_230DA41A0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_230DBB23C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 48 * v11;

    return sub_230E1E148(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 48 * v11);
  v27 = *a1;
  v28 = a1[2];
  v26[1] = a1[1];
  v26[2] = v28;
  *v26 = v27;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

_OWORD *sub_230E1C5FC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_230D0E394(a4, (a5[7] + 32 * a1));
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

unint64_t sub_230E1C668(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_230E1C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_230D65D5C;

  return sub_230E06B74(a2, a3, a4, a5);
}

uint64_t sub_230E1C768(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *))
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v40 = MEMORY[0x277D84F90];
  sub_230D48E68(0, v4, 0);
  v5 = v40;
  v7 = v6 + 64;
  v8 = -1 << *(v6 + 32);
  result = sub_230E694B0();
  v10 = result;
  v11 = 0;
  v38 = *(v6 + 36);
  v32 = v6 + 72;
  v33 = v4;
  v34 = v6 + 64;
  v35 = v6;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v6 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v7 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_24;
    }

    if (v38 != *(v6 + 36))
    {
      goto LABEL_25;
    }

    v37 = v11;
    v15 = v5;
    v16 = (*(v6 + 48) + 16 * v10);
    v17 = *v16;
    v5 = v16[1];
    v18 = (*(v6 + 56) + 16 * v10);
    v19 = *v18;
    v20 = v18[1];
    swift_bridgeObjectRetain_n();
    sub_230D0DCF8(v19, v20);
    sub_230D0DCF8(v19, v20);

    sub_230D0F494(v19, v20);
    v39[0] = v19;
    v39[1] = v20;
    v21 = a2(v17, v5, v39);
    if (v3)
    {

      sub_230D0F494(v19, v20);

      return v5;
    }

    v22 = v21;

    result = sub_230D0F494(v19, v20);
    v5 = v15;
    v40 = v15;
    v24 = *(v15 + 16);
    v23 = *(v15 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_230D48E68((v23 > 1), v24 + 1, 1);
      v5 = v40;
    }

    *(v5 + 16) = v24 + 1;
    *(v5 + 8 * v24 + 32) = v22;
    v7 = v34;
    v6 = v35;
    v12 = 1 << *(v35 + 32);
    if (v10 >= v12)
    {
      goto LABEL_26;
    }

    v25 = *(v34 + 8 * v14);
    if ((v25 & (1 << v10)) == 0)
    {
      goto LABEL_27;
    }

    if (v38 != *(v35 + 36))
    {
      goto LABEL_28;
    }

    v26 = v25 & (-2 << (v10 & 0x3F));
    if (v26)
    {
      v12 = __clz(__rbit64(v26)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v3 = 0;
      v13 = v33;
    }

    else
    {
      v27 = v14 << 6;
      v28 = v14 + 1;
      v13 = v33;
      v29 = (v32 + 8 * v14);
      v3 = 0;
      while (v28 < (v12 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_230D52C58(v10, v38, 0);
          v12 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_230D52C58(v10, v38, 0);
    }

LABEL_4:
    v11 = v37 + 1;
    v10 = v12;
    if (v37 + 1 == v13)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_230E1CA68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BD40, &qword_230E734E8);
    v3 = sub_230E69520();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_230E699B0();

      sub_230E69100();
      result = sub_230E699D0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_230E698C0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_230E1CBD0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *))
{
  v3 = v2;
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v77 = MEMORY[0x277D84F90];
    sub_230D48E68(0, v5, 0);
    v7 = -1 << *(a1 + 32);
    v78 = a1 + 64;
    result = sub_230E694B0();
    v8 = result;
    if (result < 0 || result >= 1 << *(a1 + 32))
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      result = v77;
      v9 = *(a1 + 36);
      v43 = v5;
      v10 = 1;
      v44 = v9;
      while (1)
      {
        v11 = v8 >> 6;
        if ((*(v78 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          break;
        }

        if (v9 != *(a1 + 36))
        {
          goto LABEL_28;
        }

        v46 = v10;
        v47 = result;
        v12 = (*(a1 + 48) + 16 * v8);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*(a1 + 56) + (v8 << 7));
        v16 = v15[3];
        v18 = *v15;
        v17 = v15[1];
        v58[2] = v15[2];
        v58[3] = v16;
        v58[0] = v18;
        v58[1] = v17;
        v20 = v15[5];
        v19 = v15[6];
        v21 = v15[4];
        *(v59 + 9) = *(v15 + 105);
        v58[5] = v20;
        v59[0] = v19;
        v58[4] = v21;
        v22 = *v15;
        v23 = v15[1];
        v24 = v15[3];
        v53 = v15[2];
        v54 = v24;
        v51 = v22;
        v52 = v23;
        v25 = v15[4];
        v26 = v15[5];
        v27 = v15[6];
        *(v57 + 9) = *(v15 + 105);
        v56 = v26;
        v57[0] = v27;
        v55 = v25;
        memmove(&__dst, v15, 0x79uLL);
        v67[0] = v13;
        v67[1] = v14;
        v72 = v55;
        v73 = v56;
        v74[0] = v57[0];
        *(v74 + 9) = *(v57 + 9);
        v68 = v51;
        v69 = v52;
        v70 = v53;
        v71 = v54;
        swift_bridgeObjectRetain_n();
        sub_230D0FA64(v58, &v48, &qword_27DB5B8E0, &qword_230E71DD8);
        sub_230D0FA64(&__dst, &v48, &qword_27DB5B8E0, &qword_230E71DD8);
        sub_230D2D9F8(v67, &qword_27DB5D7B8, &qword_230E7F0B0);
        v75[3] = v62;
        v75[4] = v63;
        v75[1] = __dst;
        v75[2] = v61;
        *(v76 + 9) = *(v66 + 9);
        v75[6] = v65;
        v76[0] = v66[0];
        v75[5] = v64;
        *&v75[0] = v13;
        *(&v75[0] + 1) = v14;
        v49[5] = v65;
        v50[0] = v66[0];
        *(v50 + 9) = *(v76 + 9);
        v49[3] = v63;
        v49[4] = v64;
        v48 = v75[0];
        v49[0] = __dst;
        v49[1] = v61;
        v49[2] = v62;
        v28 = a2(v13, v14, v49);
        if (v3)
        {
          sub_230D2D9F8(v75, &qword_27DB5D7B8, &qword_230E7F0B0);
        }

        v29 = v28;
        sub_230D2D9F8(v75, &qword_27DB5D7B8, &qword_230E7F0B0);
        result = v47;
        v77 = v47;
        v31 = *(v47 + 16);
        v30 = *(v47 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_230D48E68((v30 > 1), v31 + 1, 1);
          result = v77;
        }

        *(result + 16) = v31 + 1;
        *(result + 8 * v31 + 32) = v29;
        v32 = 1 << *(a1 + 32);
        if (v8 >= v32)
        {
          goto LABEL_29;
        }

        v33 = *(v78 + 8 * v11);
        if ((v33 & (1 << v8)) == 0)
        {
          goto LABEL_30;
        }

        v9 = v44;
        if (v44 != *(a1 + 36))
        {
          goto LABEL_31;
        }

        v34 = v33 & (-2 << (v8 & 0x3F));
        if (v34)
        {
          v8 = __clz(__rbit64(v34)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v3 = 0;
          v35 = v43;
        }

        else
        {
          v36 = v11 << 6;
          v37 = v11 + 1;
          v38 = (a1 + 72 + 8 * v11);
          v3 = 0;
          v35 = v43;
          while (v37 < (v32 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              v41 = result;
              sub_230D52C58(v8, v44, 0);
              result = v41;
              v8 = __clz(__rbit64(v39)) + v36;
              goto LABEL_20;
            }
          }

          v42 = result;
          sub_230D52C58(v8, v44, 0);
          result = v42;
          v8 = v32;
        }

LABEL_20:
        if (v46 == v35)
        {
          return result;
        }

        if ((v8 & 0x8000000000000000) == 0)
        {
          v10 = v46 + 1;
          if (v8 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_230E1D028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v46 = MEMORY[0x277D84F90];
  sub_230D48E68(0, v4, 0);
  v5 = v46;
  v7 = v6 + 64;
  v8 = -1 << *(v6 + 32);
  result = sub_230E694B0();
  if (result < 0 || result >= 1 << *(v6 + 32))
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v10 = *(v6 + 36);
    v32 = v6 + 72;
    v33 = v4;
    v11 = 1;
    v35 = v10;
    v36 = v6;
    v34 = v6 + 64;
    while ((*(v7 + 8 * (result >> 6)) & (1 << result)) != 0)
    {
      if (v10 != *(v6 + 36))
      {
        goto LABEL_28;
      }

      v39 = 1 << result;
      v40 = result >> 6;
      v38 = v11;
      v47 = v5;
      v12 = (*(v6 + 48) + 16 * result);
      v13 = v12[1];
      v41 = result;
      v42 = *v12;
      v14 = (*(v6 + 56) + 48 * result);
      v15 = *v14;
      v16 = v14[1];
      v18 = v14[2];
      v17 = v14[3];
      v43 = v3;
      v5 = v14[4];
      v19 = v14[5];
      v44[0] = v42;
      v44[1] = v13;
      v44[2] = v15;
      v44[3] = v16;
      v44[4] = v18;
      v44[5] = v17;
      v44[6] = v5;
      v44[7] = v19;
      swift_bridgeObjectRetain_n();
      sub_230D0F898(v15);
      sub_230D0F898(v15);
      sub_230D2D9F8(v44, &qword_27DB5D790, &qword_230E7F088);
      v45[0] = v42;
      v45[1] = v13;
      v45[2] = v15;
      v45[3] = v16;
      v45[4] = v18;
      v45[5] = v17;
      v45[6] = v5;
      v45[7] = v19;
      v20 = a2();
      v3 = v43;
      if (v43)
      {
        sub_230D2D9F8(v45, &qword_27DB5D790, &qword_230E7F088);

        return v5;
      }

      v21 = v20;
      sub_230D2D9F8(v45, &qword_27DB5D790, &qword_230E7F088);
      v5 = v47;
      v46 = v47;
      v23 = *(v47 + 16);
      v22 = *(v47 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_230D48E68((v22 > 1), v23 + 1, 1);
        v5 = v46;
      }

      *(v5 + 16) = v23 + 1;
      *(v5 + 8 * v23 + 32) = v21;
      v10 = v35;
      v6 = v36;
      v24 = 1 << *(v36 + 32);
      result = v41;
      if (v41 >= v24)
      {
        goto LABEL_29;
      }

      v7 = v34;
      v25 = *(v34 + 8 * v40);
      if ((v25 & v39) == 0)
      {
        goto LABEL_30;
      }

      if (v35 != *(v36 + 36))
      {
        goto LABEL_31;
      }

      v26 = v25 & (-2 << (v41 & 0x3F));
      if (v26)
      {
        result = __clz(__rbit64(v26)) | v41 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v40 << 6;
        v28 = v40 + 1;
        v29 = (v32 + 8 * v40);
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_230D52C58(v41, v35, 0);
            result = __clz(__rbit64(v30)) + v27;
            goto LABEL_20;
          }
        }

        sub_230D52C58(v41, v35, 0);
        result = v24;
      }

LABEL_20:
      if (v38 == v33)
      {
        return v5;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v11 = v38 + 1;
        if (result < 1 << *(v36 + 32))
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_230E1D398(uint64_t a1)
{
  v2 = sub_230E689B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D778, &qword_230E7F070);
    v12 = sub_230E69520();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_230E1E050(&qword_27DB5D780, 255, MEMORY[0x277CC99D0]);
      v20 = sub_230E68FE0();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_230E1E050(&qword_27DB5D788, 255, MEMORY[0x277CC99D0]);
          v27 = sub_230E69020();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_230E1D6C0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_230E69610())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7B0, &qword_230E7F0A0);
      v3 = sub_230E69520();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_230E69610();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x23191DE50](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_230E69420();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_230DC2854();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_230E69430();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_230E69420();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_230DC2854();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_230E69430();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_230E1D98C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if (swift_dynamicCast())
  {
    v2 = v19;
    if (v22 > 3u)
    {
      if (v22 > 5u)
      {
        if (v22 != 6)
        {
          return 0xD000000000000048;
        }

        sub_230E69540();

        v20 = 0xD000000000000021;
        if (v21)
        {
          v11 = v2;
        }

        else
        {
          v11 = 0xD00000000000001DLL;
        }

        if (v21)
        {
          v12 = v21;
        }

        else
        {
          v12 = 0x8000000230E84890;
        }

        MEMORY[0x23191DA00](v11, v12);

        sub_230DC29B0(v2, v21, 6u);
      }

      else if (v22 == 4)
      {

        sub_230E69540();

        v20 = 0xD000000000000020;
        if (v21)
        {
          v7 = v2;
        }

        else
        {
          v7 = 0xD000000000000024;
        }

        if (v21)
        {
          v8 = v21;
        }

        else
        {
          v8 = 0x8000000230E81F10;
        }

        MEMORY[0x23191DA00](v7, v8);

        sub_230DC29B0(v2, v21, 4u);
      }

      else
      {

        sub_230E69540();

        v20 = 0xD000000000000023;
        if (v21)
        {
          v15 = v2;
        }

        else
        {
          v15 = 0xD000000000000022;
        }

        if (v21)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0x8000000230E81EC0;
        }

        MEMORY[0x23191DA00](v15, v16);

        sub_230DC29B0(v2, v21, 5u);
      }
    }

    else if (v22 > 1u)
    {
      if (v22 == 2)
      {

        sub_230E69540();

        v20 = 0xD000000000000020;
        if (v21)
        {
          v9 = v2;
        }

        else
        {
          v9 = 0xD00000000000002DLL;
        }

        if (v21)
        {
          v10 = v21;
        }

        else
        {
          v10 = 0x8000000230E81FC0;
        }

        MEMORY[0x23191DA00](v9, v10);

        sub_230DC29B0(v2, v21, 2u);
      }

      else
      {

        sub_230E69540();

        v20 = 0xD000000000000024;
        if (v21)
        {
          v17 = v2;
        }

        else
        {
          v17 = 0xD000000000000020;
        }

        if (v21)
        {
          v18 = v21;
        }

        else
        {
          v18 = 0x8000000230E81F70;
        }

        MEMORY[0x23191DA00](v17, v18);

        sub_230DC29B0(v2, v21, 3u);
      }
    }

    else if (v22)
    {

      sub_230E69540();

      v20 = 0xD000000000000018;
      if (v21)
      {
        v13 = v2;
      }

      else
      {
        v13 = 0xD00000000000001CLL;
      }

      if (v21)
      {
        v14 = v21;
      }

      else
      {
        v14 = 0x8000000230E82060;
      }

      MEMORY[0x23191DA00](v13, v14);

      sub_230DC29B0(v2, v21, 1u);
    }

    else
    {

      sub_230E69540();

      v20 = 0xD00000000000001DLL;
      if (v21)
      {
        v3 = v2;
      }

      else
      {
        v3 = 0xD000000000000028;
      }

      if (v21)
      {
        v4 = v21;
      }

      else
      {
        v4 = 0x8000000230E820A0;
      }

      MEMORY[0x23191DA00](v3, v4);

      sub_230DC29B0(v2, v21, 0);
    }
  }

  else
  {
    swift_getErrorValue();
    swift_getDynamicType();
    v20 = sub_230E69A80();
    MEMORY[0x23191DA00](8250, 0xE200000000000000);
    swift_getErrorValue();
    v5 = sub_230E69960();
    MEMORY[0x23191DA00](v5);
  }

  return v20;
}

unint64_t sub_230E1DE8C()
{
  result = qword_27DB5D760;
  if (!qword_27DB5D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D760);
  }

  return result;
}

uint64_t sub_230E1DFC0(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  v8[2] = a3[2];
  return sub_230E059E8(a1, a2, v8, v4, v5);
}

unint64_t sub_230E1DFFC()
{
  result = qword_281566778;
  if (!qword_281566778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566778);
  }

  return result;
}

uint64_t sub_230E1E050(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230E1E098()
{
  result = qword_27DB5D7A8;
  if (!qword_27DB5D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D7A8);
  }

  return result;
}

uint64_t sub_230E1E1A4(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = a3[5];
  v10[4] = a3[4];
  v10[5] = v6;
  v11[0] = a3[6];
  *(v11 + 9) = *(a3 + 105);
  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  v8 = a3[3];
  v10[2] = a3[2];
  v10[3] = v8;
  return sub_230E053B0(a1, a2, v10, v4, v5);
}

uint64_t sub_230E1E1F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230E1E274()
{
  result = qword_27DB5D7C8;
  if (!qword_27DB5D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D7C8);
  }

  return result;
}

uint64_t sub_230E1E2D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 58) = a6;
  *(v7 + 57) = a5;
  *(v7 + 32) = a4;
  *(v7 + 40) = a7;
  *(v7 + 56) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x2822009F8](sub_230E1E304, 0, 0);
}

uint64_t sub_230E1E304()
{
  *(*(v0 + 16) + 24) = &type metadata for LogMetricsResponse;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_230E1E3CC;
  v2 = *(v0 + 58);
  v3 = *(v0 + 57);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 56);

  return sub_230D86654(v6, v8, v4, v3, v2, v5);
}

uint64_t sub_230E1E3CC()
{
  v2 = *(*v1 + 48);
  v5 = *v1;

  if (v0)
  {
    MEMORY[0x23191E910](v0);
    v3 = sub_230E1E4E4;
  }

  else
  {
    v3 = sub_230D8F184;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E1E4E4()
{
  v1 = *(v0 + 16);
  __swift_deallocate_boxed_opaque_existential_0(v1);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ServicesIntelligenceProvider.getConfiguration(requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = *(a2 + 16);
  *(v3 + 112) = *a2;
  *(v3 + 128) = v4;
  *(v3 + 144) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E1E580, v2, 0);
}

uint64_t sub_230E1E580()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    *(v0 + 160) = v1;
    *(v0 + 168) = v2;
    v6 = *(v0 + 104);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_230E1E990;
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);

    return (sub_230D7CC14)(v8, 18, v0 + 16);
  }

  else
  {
    *(v0 + 184) = 18;
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_230E1E744;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 184), 0, 0);
  }
}

uint64_t sub_230E1E744()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230E1E854, v2, 0);
}

uint64_t sub_230E1E854()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 160) = v3;
  *(v0 + 168) = v6;
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  *(v0 + 16) = v1;
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v12, v10, v9);
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *v13 = v0;
  v13[1] = sub_230E1E990;
  v14 = *(v0 + 96);
  v15 = *(v0 + 104);

  return (sub_230D7CC14)(v14, 18, v0 + 16);
}

uint64_t sub_230E1E990()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t ServicesIntelligenceProvider.refreshConfiguration(requestContext:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v3 = *(a1 + 16);
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230E1EAF0, v1, 0);
}

uint64_t sub_230E1EAF0()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    v6 = *(v0 + 96);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_230E1EEF8;
    v8 = *(v0 + 96);

    return (sub_230D78530)(19, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 19;
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_230E1ECB0;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230E1ECB0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230E1EDC0, v2, 0);
}

uint64_t sub_230E1EDC0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  *(v0 + 152) = v3;
  *(v0 + 160) = v7;
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  *(v0 + 16) = v1;
  v12 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v7;

  sub_230D0585C(v12, v11, v10);
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_230E1EEF8;
  v14 = *(v0 + 96);

  return (sub_230D78530)(19, v0 + 16);
}

uint64_t sub_230E1EEF8(char a1)
{
  v4 = *(*v2 + 168);
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  v10 = *v2;

  v7 = *(v10 + 8);
  if (v1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1 & 1;
  }

  return v7(v8);
}

uint64_t sub_230E1F040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[41] = a2;
  v3[42] = a3;
  v3[40] = a1;
  return MEMORY[0x2822009F8](sub_230E1F060, a2, 0);
}

uint64_t sub_230E1F060()
{
  sub_230E68950();
  if (sub_230DA3484())
  {
    v1 = *(v0 + 336);
    sub_230D1CDE0(v1, v0 + 160);
    sub_230D1CDE0(v1, v0 + 200);
    v2 = swift_task_alloc();
    *(v0 + 344) = v2;
    *v2 = v0;
    v2[1] = sub_230E1F1BC;
    v4 = *(v0 + 328);
    v3 = *(v0 + 336);

    return sub_230D790A4(v0 + 64, 20, v3, v4);
  }

  else
  {
    sub_230E68950();
    **(v0 + 320) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_230E1F1BC()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v8 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 328);
    v5 = sub_230E1F6CC;
  }

  else
  {
    v6 = *(v2 + 328);
    sub_230D1CE3C(*(v2 + 336));
    v5 = sub_230E1F2E0;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E1F2E0()
{
  v1 = *(v0 + 336);
  sub_230D1CE3C(v1);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 96);
  sub_230D1CDE0(v1, v0 + 240);
  sub_230D1CDE0(v1, v0 + 280);

  sub_230E1E0EC(v0 + 16, v0 + 112);
  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = sub_230E1F3E0;
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);

  return (sub_230D80950)(21);
}

uint64_t sub_230E1F3E0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(v4 + 368) = v1;

  v7 = *(v4 + 336);
  v8 = *(v4 + 328);
  if (v1)
  {
    sub_230D1CE3C(v7);
    v9 = sub_230E1F660;
  }

  else
  {
    *(v4 + 376) = a1 & 1;
    sub_230D1CE3C(v7);
    v9 = sub_230E1F540;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230E1F540()
{
  v1 = *(v0 + 376);
  sub_230D1CE3C(*(v0 + 336));
  sub_230D814C8(v0 + 16);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000035, 0x8000000230E84BB0);
  if (v1)
  {
    v2 = 0x6564656563637553;
  }

  else
  {
    v2 = 0x64656C696146;
  }

  if (v1)
  {
    v3 = 0xE900000000000064;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  MEMORY[0x23191DA00](v2, v3);

  sub_230E68950();

  **(v0 + 320) = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230E1F660()
{
  sub_230D1CE3C(v0[42]);
  sub_230D814C8((v0 + 2));
  v1 = v0[46];
  v2 = v0[1];

  return v2();
}

uint64_t sub_230E1F6CC()
{
  v1 = v0[42];
  sub_230D1CE3C(v1);
  sub_230D1CE3C(v1);
  v2 = v0[44];
  v3 = v0[1];

  return v3();
}

uint64_t sub_230E1F73C(uint64_t a1)
{
  v1[49] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C0, &qword_230E6C210) - 8) + 64) + 15;
  v1[50] = swift_task_alloc();
  v3 = sub_230E68860();
  v1[51] = v3;
  v4 = *(v3 - 8);
  v1[52] = v4;
  v5 = *(v4 + 64) + 15;
  v1[53] = swift_task_alloc();
  v6 = sub_230E68910();
  v1[54] = v6;
  v7 = *(v6 - 8);
  v1[55] = v7;
  v8 = *(v7 + 64) + 15;
  v1[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E1F890, 0, 0);
}

uint64_t sub_230E1F890()
{
  v1 = v0[56];
  v2 = sub_230E69030();
  v3 = sub_230E69030();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];
  v0[57] = v4;

  sub_230E68900();
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v0[58] = v5;
  [v5 setFormatOptions_];
  v6 = sub_230E688B0();
  v7 = [v5 stringFromDate_];

  if (!v7)
  {
    sub_230E69060();
    v7 = sub_230E69030();
  }

  v0[59] = v7;
  v8 = sub_230E69030();
  v9 = [v4 dictionaryForKey_];
  v0[60] = v9;

  v0[2] = v0;
  v0[7] = v0 + 46;
  v0[3] = sub_230E1FAEC;
  v10 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C8, &qword_230E7F228);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_230E20654;
  v0[21] = &block_descriptor_1;
  v0[22] = v10;
  [v9 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_230E1FAEC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 488) = v3;
  if (v3)
  {

    v4 = sub_230E20468;
  }

  else
  {
    v4 = sub_230E1FC04;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E1FC04()
{
  v1 = *(v0 + 368);
  v2 = sub_230E69030();
  v3 = [v1 valueForKeyPath_];

  if (v3)
  {
    sub_230E694A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  *(v0 + 320) = v42;
  *(v0 + 336) = v43;
  if (!*(v0 + 344))
  {
    v41 = v1;

    v10 = &unk_27DB5D8D0;
    v11 = &qword_230E756A0;
    v12 = v0 + 320;
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = v1;

    goto LABEL_11;
  }

  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  v6 = *(v0 + 400);
  v7 = *(v0 + 352);
  v8 = *(v0 + 360);
  sub_230E68830();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v41 = v1;
    v9 = *(v0 + 400);

    v10 = &qword_27DB5D8C0;
    v11 = &qword_230E6C210;
    v12 = v9;
LABEL_9:
    sub_230D2D9F8(v12, v10, v11);
LABEL_11:
    v13 = *(v0 + 480);
    v15 = *(v0 + 456);
    v14 = *(v0 + 464);
    v17 = *(v0 + 440);
    v16 = *(v0 + 448);
    v18 = *(v0 + 432);
    sub_230D07E18();
    swift_allocError();
    *v19 = 0xD00000000000001ELL;
    *(v19 + 8) = 0x8000000230E84DC0;
    *(v19 + 16) = 0;
    swift_willThrow();

    (*(v17 + 8))(v16, v18);
    v20 = *(v0 + 448);
    v21 = *(v0 + 424);
    v22 = *(v0 + 400);

    v23 = *(v0 + 8);

    return v23();
  }

  v25 = *(v0 + 472);
  v26 = *(v0 + 456);
  v28 = *(v0 + 416);
  v27 = *(v0 + 424);
  v30 = *(v0 + 400);
  v29 = *(v0 + 408);

  (*(v28 + 32))(v27, v30, v29);
  v31 = objc_allocWithZone(MEMORY[0x277CEE6D0]);
  v32 = sub_230E68800();
  v33 = [v31 initWithURL_];
  *(v0 + 496) = v33;

  v34 = sub_230E69030();
  [v33 addValue:v25 forHTTPHeaderField:v34];

  v35 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  *(v0 + 504) = v35;
  v36 = [v35 requestByEncodingRequest:v33 parameters:0];
  *(v0 + 512) = v36;
  v37 = [objc_opt_self() defaultSessionConfiguration];
  v38 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];
  *(v0 + 520) = v38;

  v39 = [v38 dataTaskPromiseWithRequestPromise_];
  *(v0 + 528) = v39;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 384;
  *(v0 + 88) = sub_230E200E4;
  v40 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8E0, &qword_230E7F230);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_230DC1810;
  *(v0 + 232) = &block_descriptor_100;
  *(v0 + 240) = v40;
  [v39 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_230E200E4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 536) = v2;
  if (v2)
  {
    v3 = sub_230E20534;
  }

  else
  {
    v3 = sub_230E201F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E201F4()
{
  v1 = *(v0 + 384);

  v2 = sub_230E686C0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_230E686B0();
  v5 = [v1 data];
  v6 = sub_230E68890();
  v8 = v7;

  sub_230E1E098();
  sub_230E686A0();
  v9 = *(v0 + 520);
  v10 = *(v0 + 512);
  v20 = *(v0 + 504);
  v21 = *(v0 + 496);
  v11 = *(v0 + 456);
  v12 = *(v0 + 440);
  v23 = v11;
  v24 = *(v0 + 432);
  v13 = *(v0 + 416);
  v25 = *(v0 + 424);
  v26 = *(v0 + 448);
  v22 = *(v0 + 408);
  v14 = *(v0 + 392);
  v19 = *(v0 + 400);

  sub_230D0F4A8(v6, v8);

  (*(v13 + 8))(v25, v22);
  (*(v12 + 8))(v26, v24);
  v16 = *(v0 + 288);
  v15 = *(v0 + 304);
  *v14 = *(v0 + 272);
  v14[1] = v16;
  v14[2] = v15;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_230E20468()
{
  v2 = v0[60];
  v1 = v0[61];
  v4 = v0[57];
  v3 = v0[58];
  v6 = v0[55];
  v5 = v0[56];
  v7 = v0[54];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  v8 = v0[61];
  v9 = v0[56];
  v10 = v0[53];
  v11 = v0[50];

  v12 = v0[1];

  return v12();
}