void sub_27231D998(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882F38, &qword_2723856A0);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  v13 = (v12 + 176);
  *(v12 + 184) = 0;
  v14 = (v12 + 184);
  *(v12 + 192) = 0;
  v15 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v16 = *(a5 + 16);

  v17 = sub_272274C18(v16);
  if (v50)
  {

    v18 = *(v12 + 16);

    v19 = *(v12 + 32);

    v20 = *(v12 + 48);

    v21 = *(v12 + 144);

    v22 = *(v12 + 152);

    v23 = *(v12 + 160);

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v17;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v24 = a3[2];
  if (v24 <= 2)
  {
    if (v24 == 1)
    {

      goto LABEL_18;
    }

    if (v24 != 2)
    {
      goto LABEL_16;
    }

    v15 = a3[5];
    if (v15 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v25 = a3[5];
    v26 = sub_272377B5C();
    *(v26 + 16) = v15;
    bzero((v26 + 32), 8 * v15);
    if (a3[2])
    {
LABEL_24:
      v37 = a3[4];

      v38 = sub_272258594(v26, v37, &qword_280882F50, &qword_2723856B8);

      swift_beginAccess();
      v39 = *v13;
      *v13 = v38;

      return;
    }

    __break(1u);
  }

  if (v24 != 3)
  {
    if (v24 == 4)
    {
      v27 = v15;
      v28 = a3[7];
      if ((v28 & 0x8000000000000000) == 0)
      {
        if (v28)
        {
          v29 = a3[7];
          v30 = sub_272377B5C();
          *(v30 + 16) = v28;
          bzero((v30 + 32), 8 * v28);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
        }

        v40 = sub_272258594(v30, a3[6], &qword_280882F50, &qword_2723856B8);

        if (a3[2] >= 2uLL)
        {
          v41 = sub_272258594(v40, a3[5], &qword_280882F48, &qword_2723856B0);

          if (a3[2])
          {
            v42 = a3[4];

            v43 = sub_272258594(v41, v42, &qword_280882F40, &qword_2723856A8);

            swift_beginAccess();
            v44 = *v27;
            *v27 = v43;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v52, "Invalid rank: ");
    HIBYTE(v52[1]) = -18;
    v52[4] = v24;
    v31 = sub_27237862C();
    MEMORY[0x2743C4AD0](v31);

    v32 = v52[1];
    sub_2722032B4();
    swift_allocError();
    *v33 = v52[0];
    v33[1] = v32;
    swift_willThrow();

LABEL_18:

    return;
  }

  v34 = a3[6];
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (v34)
    {
      v35 = a3[6];
      v36 = sub_272377B5C();
      *(v36 + 16) = v34;
      bzero((v36 + 32), 8 * v34);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v26 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v45 = sub_272258594(v36, a3[5], &qword_280882F50, &qword_2723856B8);

    if (a3[2])
    {
      v46 = a3[4];

      v47 = sub_272258594(v45, v46, &qword_280882F48, &qword_2723856B0);

      swift_beginAccess();
      v48 = *v14;
      *v14 = v47;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_27231DEB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v14 = swift_allocObject();
  sub_272320954(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void sub_27231DF4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  v13 = (v12 + 184);
  *(v12 + 192) = 0;
  v14 = (v12 + 192);
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v15 = *(a5 + 16);

  v16 = sub_272274C18(v15);
  if (v47)
  {

    v17 = *(v12 + 16);

    v18 = *(v12 + 32);

    v19 = *(v12 + 48);

    v20 = *(v12 + 144);

    v21 = *(v12 + 152);

    v22 = *(v12 + 160);

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v16;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v23 = a3[2];
  if (v23 <= 2)
  {
    if (v23 == 1)
    {

      goto LABEL_18;
    }

    if (v23 != 2)
    {
      goto LABEL_16;
    }

    v24 = a3[5];
    if (v24 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v13 = (v12 + 176);
    if (!v24)
    {
      goto LABEL_23;
    }

    v25 = a3[5];
    v23 = sub_272377B5C();
    *(v23 + 16) = v24;
    bzero((v23 + 32), 4 * v24);
    if (a3[2])
    {
LABEL_24:
      v34 = a3[4];

      v35 = sub_272258594(v23, v34, &qword_280881858, &unk_27237C260);

      swift_beginAccess();
      v36 = *v13;
      *v13 = v35;

      return;
    }

    __break(1u);
  }

  if (v23 != 3)
  {
    if (v23 == 4)
    {
      v26 = a3;
      v27 = a3[7];
      if ((v27 & 0x8000000000000000) == 0)
      {
        if (v27)
        {
          v23 = sub_272377B5C();
          *(v23 + 16) = v27;
          bzero((v23 + 32), 4 * v27);
          if (v26[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v23 = MEMORY[0x277D84F90];
        }

        v37 = sub_272258594(v23, v26[6], &qword_280881858, &unk_27237C260);

        if (v26[2] >= 2uLL)
        {
          v38 = sub_272258594(v37, v26[5], &qword_280881F28, &unk_272381E80);

          if (v26[2])
          {
            v39 = v26[4];

            v40 = sub_272258594(v38, v39, &qword_280882E70, &qword_2723855D0);

            swift_beginAccess();
            v41 = *v14;
            *v14 = v40;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v49, "Invalid rank: ");
    HIBYTE(v49[1]) = -18;
    v49[4] = v23;
    v28 = sub_27237862C();
    MEMORY[0x2743C4AD0](v28);

    v29 = v49[1];
    sub_2722032B4();
    swift_allocError();
    *v30 = v49[0];
    v30[1] = v29;
    swift_willThrow();

LABEL_18:

    return;
  }

  v31 = a3[6];
  if ((v31 & 0x8000000000000000) == 0)
  {
    if (v31)
    {
      v32 = a3[6];
      v33 = sub_272377B5C();
      *(v33 + 16) = v31;
      bzero((v33 + 32), 4 * v31);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v23 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    v42 = sub_272258594(v33, a3[5], &qword_280881858, &unk_27237C260);

    if (a3[2])
    {
      v43 = a3[4];

      v44 = sub_272258594(v42, v43, &qword_280881F28, &unk_272381E80);

      swift_beginAccess();
      v45 = *v13;
      *v13 = v44;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_27231E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = swift_allocObject();
  sub_2723206C4(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_27231E4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  *(v16 + 80) = 0;
  *(v16 + 88) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 1;
  *(v16 + 112) = 0;
  *(v16 + 120) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 1;
  *(v16 + 152) = 0;
  *(v16 + 160) = 0;
  *(v16 + 144) = 0;
  *(v16 + 168) = 2;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  v17 = *(a5 + 16);

  v18 = sub_272274C18(v17);
  if (v8)
  {
    swift_bridgeObjectRelease_n();

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v18;

    *(v16 + 56) = v19;
    *(v16 + 64) = a6;
    *(v16 + 72) = a7;
  }

  return v16;
}

uint64_t sub_27231E638(uint64_t a1)
{
  v3 = *v1;
  v4 = (*(*v1 + 296))();
  v5 = *(*v1 + 600);
  v6 = *(v3 + 608);
  v7 = *(v3 + 616);

  return v5(a1, v4, v6, v7);
}

uint64_t sub_27231E724()
{
  v1 = *(*v0 + 608);
  sub_272377BAC();
  sub_272377BAC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  v2 = sub_272377BBC();
  (*(*v0 + 624))(v2);
}

uint64_t sub_27231E884()
{
  v1 = *(*v0 + 608);
  sub_272377BAC();
  sub_272377BAC();
  sub_272377BAC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  v2 = sub_272377BBC();
  (*(*v0 + 624))(v2);
}

uint64_t sub_27231EA58()
{
  v1 = *(*v0 + 608);
  sub_272377BAC();
  sub_272377BAC();
  sub_272377BAC();
  sub_272377BAC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  v2 = sub_272377BBC();
  (*(*v0 + 624))(v2);
}

void *sub_27231EC9C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[18];

  v6 = v0[19];

  v7 = v0[20];

  return v0;
}

uint64_t sub_27231ECEC()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_27231ED38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_27231EDC0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_27231EE00()
{
  v1 = sub_27237820C();
  v2 = (*(*v0 + 272))(v1);
  MEMORY[0x2743C4AD0](v2);

  v3 = MEMORY[0x2743C4AD0](8250, 0xE200000000000000);
  (*(*v0 + 200))(v3);
  v4 = MEMORY[0x2743C4C60]();
  v6 = v5;

  MEMORY[0x2743C4AD0](v4, v6);

  v7 = MEMORY[0x2743C4AD0](32, 0xE100000000000000);
  (*(*v0 + 224))(v7);
  v8 = sub_27237862C();
  MEMORY[0x2743C4AD0](v8);

  v9 = MEMORY[0x2743C4AD0](0xD000000000000012, 0x80000002723900A0);
  (*(*v0 + 320))(v9);
  sub_27237836C();
  v10 = MEMORY[0x2743C4AD0](0x2065646972747320, 0xE800000000000000);
  (*(*v0 + 344))(v10);
  v11 = MEMORY[0x2743C4C60]();
  v13 = v12;

  MEMORY[0x2743C4AD0](v11, v13);

  return 0;
}

uint64_t sub_27231F090()
{
  if (*(v0 + 88) != 1)
  {
    return *(v0 + 80);
  }

  result = (*(*v0 + 200))();
  v2 = *(result + 16);
  if (!v2)
  {
    v6 = 1;
LABEL_9:

    *(v0 + 80) = v6;
    *(v0 + 88) = 0;
    return v6;
  }

  v3 = (result + 32);
  v4 = 1;
  while (1)
  {
    v5 = *v3++;
    v6 = v4 * v5;
    if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
    {
      break;
    }

    v4 = v6;
    if (!--v2)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27231F130(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 88) = 0;
  return result;
}

void *(*sub_27231F13C(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_27231F090();
  return sub_27231F184;
}

void *sub_27231F184(void *result)
{
  v1 = result[1];
  *(v1 + 80) = *result;
  *(v1 + 88) = 0;
  return result;
}

uint64_t sub_27231F194()
{
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  v1 = (*(*v0 + 384))();
  v2 = (*(*v0 + 408))();
  result = v1 * v2;
  if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
  {
    *(v0 + 96) = result;
    *(v0 + 104) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27231F240(uint64_t result)
{
  *(v1 + 96) = result;
  *(v1 + 104) = 0;
  return result;
}

void *(*sub_27231F24C(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_27231F194();
  return sub_27231F294;
}

void *sub_27231F294(void *result)
{
  v1 = result[1];
  *(v1 + 96) = *result;
  *(v1 + 104) = 0;
  return result;
}

uint64_t sub_27231F2A4()
{
  if (*(v0 + 120) != 1)
  {
    return *(v0 + 112);
  }

  v1 = (*(*v0 + 384))();
  v2 = (*(*v0 + 416))();
  result = v1 * v2;
  if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
  {
    *(v0 + 112) = result;
    *(v0 + 120) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27231F350(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 120) = 0;
  return result;
}

void *(*sub_27231F35C(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_27231F2A4();
  return sub_27231F3A4;
}

void *sub_27231F3A4(void *result)
{
  v1 = result[1];
  *(v1 + 112) = *result;
  *(v1 + 120) = 0;
  return result;
}

uint64_t sub_27231F3B4()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 128);
  }

  result = (*(*v0 + 344))();
  if (*(result + 16))
  {
    v2 = *(result + 32);

    result = (*(*v0 + 200))(v3);
    if (*(result + 16))
    {
      v4 = *(result + 32);

      result = v2 * v4;
      if ((v2 * v4) >> 64 == (v2 * v4) >> 63)
      {
        *(v0 + 128) = result;
        *(v0 + 136) = 0;
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_27231F480(uint64_t result)
{
  *(v1 + 128) = result;
  *(v1 + 136) = 0;
  return result;
}

void *(*sub_27231F48C(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_27231F3B4();
  return sub_27231F4D4;
}

void *sub_27231F4D4(void *result)
{
  v1 = result[1];
  *(v1 + 128) = *result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t sub_27231F4E4()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[18];

    return v1;
  }

  v3 = (*(*v0 + 200))();
  v4 = v3;
  if (*(v3 + 16) > 3uLL)
  {
    v1 = v3;
LABEL_13:
    v11 = v0[18];
    v0[18] = v1;

    return v1;
  }

  while (1)
  {
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_27237AF80;
    *(v1 + 32) = 1;
    v5 = *(v4 + 16);
    if (!v5)
    {

      v6 = *(v1 + 16);
      goto LABEL_6;
    }

    v7 = sub_27220897C(1, v5 + 1, 1, v1);
    if (!*(v4 + 16))
    {
      goto LABEL_17;
    }

    v1 = v7;
    v8 = *(v7 + 2);
    if ((*(v7 + 3) >> 1) - v8 < v5)
    {
      break;
    }

    memcpy(&v7[8 * v8 + 32], (v4 + 32), 8 * v5);

    v9 = *(v1 + 16);
    v10 = __OFADD__(v9, v5);
    v6 = v9 + v5;
    if (v10)
    {
      goto LABEL_16;
    }

    *(v1 + 16) = v6;
LABEL_6:
    v4 = v1;
    if (v6 >= 4)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:

  __break(1u);
  return result;
}

uint64_t sub_27231F66C(uint64_t a1)
{
  v2 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t (*sub_27231F67C(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_27231F4E4();
  return sub_27231F6C4;
}

uint64_t sub_27231F6C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
}

uint64_t sub_27231F6D4()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[19];

    return v1;
  }

  v3 = (*(*v0 + 344))();
  v4 = v3;
  if (*(v3 + 16) > 3uLL)
  {
    v1 = v3;
LABEL_21:
    v15 = v0[19];
    v0[19] = v1;

    return v1;
  }

  v5 = *(*v0 + 472);
  while (1)
  {
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_27237AF80;
    result = v5();
    *(v1 + 32) = result;
    v8 = *(v4 + 16);
    v9 = *(v1 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    if (v10 > *(v1 + 24) >> 1)
    {
      if (v9 <= v10)
      {
        v14 = v9 + v8;
      }

      else
      {
        v14 = *(v1 + 16);
      }

      result = sub_27220897C(1, v14, 1, v1);
      v1 = result;
      v9 = *(result + 16);
      if (!*(v4 + 16))
      {
LABEL_5:

        if (v8)
        {
          goto LABEL_24;
        }

LABEL_6:
        v7 = *(v1 + 16);
        goto LABEL_7;
      }
    }

    else
    {
      v11 = *(v4 + 16);
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    if (((*(v1 + 24) >> 1) - v9) < v8)
    {
      goto LABEL_25;
    }

    memcpy((v1 + 8 * v9 + 32), (v4 + 32), 8 * v8);

    if (!v8)
    {
      goto LABEL_6;
    }

    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, v8);
    v7 = v12 + v8;
    if (v13)
    {
      goto LABEL_26;
    }

    *(v1 + 16) = v7;
LABEL_7:
    v4 = v1;
    if (v7 >= 4)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_27231F8B8(uint64_t a1)
{
  v2 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t (*sub_27231F8C8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_27231F6D4();
  return sub_27231F910;
}

uint64_t sub_27231F910(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 152);
  *(v1 + 152) = v2;
}

uint64_t sub_27231F920()
{
  if (v0[20])
  {
    v1 = v0[20];
LABEL_3:

    return v1;
  }

  result = (*(*v0 + 384))();
  if (result < 0)
  {
    goto LABEL_83;
  }

  if (result)
  {
    v3 = result;
    v1 = sub_272377B5C();
    *(v1 + 16) = v3;
    bzero((v1 + 32), 8 * v3);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v4 = (*v0 + 496);
  v5 = *v4;
  result = (*v4)();
  if (*(result + 16) < 4uLL)
  {
    goto LABEL_84;
  }

  v6 = *(result + 56);

  result = (v5)(v7);
  if (*(result + 16) < 3uLL)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v8 = *(result + 48);

  v9 = v6 * v8;
  if ((v6 * v8) >> 64 != (v6 * v8) >> 63)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  result = (v5)(result);
  if (*(result + 16) < 2uLL)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v10 = *(result + 40);

  v48 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  result = (v5)(result);
  if (!*(result + 16))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v11 = *(result + 32);

  if ((v11 & 0x8000000000000000) == 0)
  {
    if (!v11)
    {
LABEL_58:
      v38 = v0[20];
      v0[20] = v1;

      goto LABEL_3;
    }

    v47 = 0;
    v12 = 0;
    v13 = *(*v0 + 520);
    v14 = *v0 + 520;
    v46 = v1 + 32;
    v40 = 8 * v9;
    v56 = 8 * v6;
    v57 = v5;
    v59 = v6;
    v41 = v9;
    v39 = v11;
    while (1)
    {
      v15 = v13;
      v16 = v14;
      result = v13(result);
      if (!*(result + 16))
      {
        break;
      }

      v17 = *(result + 32);

      v45 = v12 * v17;
      if ((v12 * v17) >> 64 != (v12 * v17) >> 63)
      {
        goto LABEL_79;
      }

      v44 = v12 * v48;
      if ((v12 * v48) >> 64 != (v12 * v48) >> 63)
      {
        goto LABEL_80;
      }

      result = (v5)(result);
      if (*(result + 16) < 2uLL)
      {
        goto LABEL_81;
      }

      v18 = *(result + 40);

      if (v18 < 0)
      {
        goto LABEL_82;
      }

      v13 = v15;
      v14 = v16;
      if (v18)
      {
        v19 = 0;
        v50 = v46;
        v49 = v47;
        v42 = v18;
        v43 = v12;
        while (1)
        {
          v51 = v19;
          result = v13(result);
          if (*(result + 16) < 2uLL)
          {
            break;
          }

          v20 = *(result + 40);

          v21 = v51 * v20;
          if ((v51 * v20) >> 64 != (v51 * v20) >> 63)
          {
            goto LABEL_74;
          }

          v22 = v51 * v9;
          if ((v51 * v9) >> 64 != (v51 * v9) >> 63)
          {
            goto LABEL_75;
          }

          result = (v5)(result);
          if (*(result + 16) < 3uLL)
          {
            goto LABEL_76;
          }

          v58 = *(result + 48);

          if (v58 < 0)
          {
            goto LABEL_77;
          }

          v13 = v15;
          v14 = v16;
          if (v58)
          {
            v23 = 0;
            v54 = v45 + v21;
            v24 = __OFADD__(v45, v21);
            v55 = v24;
            v52 = v44 + v22;
            v25 = __OFADD__(v44, v22);
            v53 = v25;
            v27 = v49;
            v26 = v50;
            while (1)
            {
              v60 = v23;
              result = v13(result);
              if (*(result + 16) < 3uLL)
              {
                break;
              }

              v28 = *(result + 48);

              v29 = v60 * v28;
              if ((v60 * v28) >> 64 != (v60 * v28) >> 63)
              {
                goto LABEL_65;
              }

              if ((v60 * v59) >> 64 != (v60 * v59) >> 63)
              {
                goto LABEL_66;
              }

              result = (v5)(result);
              if (*(result + 16) < 4uLL)
              {
                goto LABEL_67;
              }

              v30 = *(result + 56);

              if (v30 < 0)
              {
                goto LABEL_68;
              }

              v13 = v15;
              v14 = v16;
              if (v30)
              {
                if (v55)
                {
                  goto LABEL_69;
                }

                v31 = __OFADD__(v54, v29);
                v32 = v54 + v29;
                if (v31)
                {
                  goto LABEL_70;
                }

                if (v53)
                {
                  goto LABEL_71;
                }

                if (__OFADD__(v52, v60 * v59))
                {
                  goto LABEL_72;
                }

                v33 = 0;
                while (1)
                {
                  result = v13(result);
                  if (*(result + 16) < 4uLL)
                  {
                    break;
                  }

                  v34 = v1;
                  v35 = *(result + 56);

                  v36 = v33 * v35;
                  if ((v33 * v35) >> 64 != (v33 * v35) >> 63)
                  {
                    goto LABEL_60;
                  }

                  v31 = __OFADD__(v32, v36);
                  v37 = v32 + v36;
                  if (v31)
                  {
                    goto LABEL_61;
                  }

                  if (v27 < 0)
                  {
                    goto LABEL_62;
                  }

                  if ((v27 + v33) >= *(v34 + 16))
                  {
                    goto LABEL_63;
                  }

                  v1 = v34;
                  *(v26 + 8 * v33++) = v37;
                  v13 = v15;
                  v14 = v16;
                  if (v30 == v33)
                  {
                    goto LABEL_38;
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
                break;
              }

LABEL_38:
              v23 = v60 + 1;
              v27 += v59;
              v26 += v56;
              v5 = v57;
              if (v60 + 1 == v58)
              {
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            break;
          }

LABEL_24:
          v19 = v51 + 1;
          v9 = v41;
          v49 += v41;
          v50 += v40;
          v12 = v43;
          if (v51 + 1 == v42)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        break;
      }

LABEL_57:
      ++v12;
      v47 += v48;
      v46 += 8 * v48;
      if (v12 == v39)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_27231FE84(uint64_t a1)
{
  v2 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t (*sub_27231FE94(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_27231F920();
  return sub_27231FEDC;
}

uint64_t sub_27231FEDC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 160);
  *(v1 + 160) = v2;
}

uint64_t sub_27231FEEC()
{
  v1 = v0[168];
  if (v1 != 2)
  {
    return v1 & 1;
  }

  result = (*(*v0 + 544))();
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = *(result + 16);
  while (1)
  {
    LOBYTE(v1) = v6 != v5;
    if (v6 == v5)
    {
      goto LABEL_9;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    if (*(v3 + 8 * v5 + 32) != v4)
    {
      goto LABEL_9;
    }

    ++v5;
    result = (*(*v0 + 408))();
    v7 = __OFADD__(v4, result);
    v4 += result;
    if (v7)
    {
      __break(1u);
LABEL_9:

      v0[168] = v6 != v5;
      return v1 & 1;
    }
  }

  __break(1u);
  return result;
}

_BYTE *(*sub_27231FFE8(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = sub_27231FEEC() & 1;
  return sub_272320034;
}

unint64_t sub_272320044(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v4 + 568))(v10))
  {
    v13 = (*(*v4 + 544))();
    result = (*(*v4 + 384))();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v15 = result;
      if (!result)
      {
      }

      if (result <= *(v13 + 16))
      {
        v16 = 0;
        do
        {
          v17 = *(v13 + 8 * v16 + 32);
          sub_27237809C();
          (*(v8 + 40))(a1 + *(v8 + 72) * v16++, v12, a4);
        }

        while (v15 != v16);
      }
    }

    __break(1u);
  }

  else
  {
    v18 = sub_27237802C();
    v19 = (*(*v4 + 424))();

    return memcpy(v18, a3, v19);
  }

  return result;
}

unint64_t sub_2723202C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = (*(*v3 + 568))(v8);
  if (v9)
  {
    v10 = (*(*v3 + 544))();
    result = (*(*v3 + 384))();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    v12 = result;
    if (result)
    {
      if (result > *(v10 + 16))
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v13 = 0;
      v14 = (v6 + 8);
      while (1)
      {
        result = sub_272377BCC();
        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }

        v15 = *(v10 + 8 * v13++ + 32);
        memcpy((a2 + v15), &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        (*v14)(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
        if (v12 == v13)
        {
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    MEMORY[0x28223BE20](v9);
    *(&v16 - 2) = a2;
    *(&v16 - 1) = v3;
    sub_2721F065C(&qword_280882E50, qword_272385340);
    return sub_272377B1C();
  }
}

uint64_t sub_272320550(uint64_t a1)
{
  v3 = (*v1 + 384);
  v4 = *v3;
  result = (*v3)();
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;

  if (v6)
  {
    v7 = sub_272377B5C();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_272322B78(v7 + 32, a1);
  result = (v4)(v8);
  if (v6 < result)
  {
    goto LABEL_10;
  }

  *(v7 + 16) = result;

  v10 = (*(*v1 + 296))(v9);
  (*(*v1 + 600))(v7, v10, MEMORY[0x277D84C58], MEMORY[0x277D84C90]);
}

uint64_t sub_2723206C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 80) = 0;
  *(v7 + 88) = 1;
  *(v7 + 96) = 0;
  *(v7 + 104) = 1;
  *(v7 + 112) = 0;
  *(v7 + 120) = 1;
  *(v7 + 128) = 0;
  *(v7 + 136) = 1;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(v7 + 168) = 2;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  v11 = *(a5 + 16);

  v12 = sub_272274C18(v11);
  if (v8)
  {

    v13 = *(v7 + 16);

    v14 = *(v7 + 32);

    v15 = *(v7 + 48);

    v16 = *(v7 + 144);

    v17 = *(v7 + 152);

    v18 = *(v7 + 160);

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v12;

    *(v7 + 56) = v19;
    *(v7 + 64) = a6;
    *(v7 + 72) = a7;
  }

  return v7;
}

uint64_t sub_2723207D4()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
}

uint64_t sub_27232080C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

uint64_t sub_272320854()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
}

uint64_t sub_27232088C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t sub_2723208D4()
{
  swift_beginAccess();
  v1 = *(v0 + 192);
}

uint64_t sub_27232090C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 192);
  *(v1 + 192) = a1;
}

uint64_t sub_272320954(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v9 = v7;
  v76 = a7;
  v75 = a6;
  v74 = *v9;
  v12 = *(v74 + 608);
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v72 - v15;
  v9[23] = 0;
  v17 = v9 + 23;
  v9[22] = 0;
  v18 = v9 + 22;
  v9[24] = 0;
  v9[10] = 0;
  *(v9 + 88) = 1;
  v9[12] = 0;
  *(v9 + 104) = 1;
  v9[14] = 0;
  *(v9 + 120) = 1;
  v9[16] = 0;
  *(v9 + 136) = 1;
  v9[19] = 0;
  v9[20] = 0;
  v9[18] = 0;
  *(v9 + 168) = 2;
  v9[5] = v14;
  v9[6] = v19;
  v9[2] = v20;
  v9[3] = v21;
  v9[4] = v22;
  v23 = *(v22 + 16);

  v24 = sub_272274C18(v23);
  if (v8)
  {

    v25 = v9[2];

    v26 = v9[4];

    v27 = v9[6];

    v28 = v9[18];

    v29 = v9[19];

    v30 = v9[20];

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return v9;
  }

  v32 = v74;
  v33 = v16;
  v72 = a5;
  v9[7] = v24;
  *(v9 + 64) = v75;
  v9[9] = v76;
  v34 = a3[2];
  if (v34 <= 2)
  {
    v35 = v73;
    if (v34 == 1)
    {

      goto LABEL_19;
    }

    if (v34 == 2)
    {
      v36 = *(*(v32 + 616) + 8);
      v37 = v33;
      result = sub_27237839C();
      if (a3[2] >= 2uLL)
      {
        v38 = sub_272322A74(v37, a3[5], v12);
        result = (*(v35 + 8))(v37, v12);
        v77[0] = v38;
        if (a3[2])
        {
          v39 = a3[4];

          v40 = sub_272377BAC();
          v41 = sub_272322A74(v77, v39, v40);

          swift_beginAccess();
          v42 = *v18;
          *v18 = v41;

          return v9;
        }

        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_17:

    v77[0] = 0;
    v77[1] = 0xE000000000000000;
    sub_27237820C();

    strcpy(v77, "Invalid rank: ");
    HIBYTE(v77[1]) = -18;
    v77[4] = v34;
    v58 = sub_27237862C();
    MEMORY[0x2743C4AD0](v58);

    v59 = v77[0];
    v60 = v77[1];
    sub_2722032B4();
    swift_allocError();
    *v61 = v59;
    v61[1] = v60;
    swift_willThrow();

LABEL_19:

    return v9;
  }

  if (v34 == 3)
  {
    v62 = *(*(v32 + 616) + 8);
    v63 = v33;
    result = sub_27237839C();
    if (a3[2] >= 3uLL)
    {
      v64 = sub_272322A74(v63, a3[6], v12);
      result = (*(v73 + 8))(v63, v12);
      v77[0] = v64;
      if (a3[2] >= 2uLL)
      {
        v65 = a3[5];
        v66 = sub_272377BAC();
        v67 = sub_272322A74(v77, v65, v66);

        v77[0] = v67;
        if (a3[2])
        {
          v68 = a3[4];

          v69 = sub_272377BAC();
          v70 = sub_272322A74(v77, v68, v69);

          swift_beginAccess();
          v71 = *v17;
          *v17 = v70;

          return v9;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v43 = v73;
  if (v34 != 4)
  {
    goto LABEL_17;
  }

  v44 = *(*(v32 + 616) + 8);
  v45 = v33;
  result = sub_27237839C();
  if (a3[2] < 4uLL)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v76 = 0;
  v46 = sub_272322A74(v45, a3[7], v12);
  result = (*(v43 + 8))(v45, v12);
  v77[0] = v46;
  if (a3[2] < 3uLL)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v47 = v9 + 24;
  v48 = a3[6];
  v49 = sub_272377BAC();
  v50 = sub_272322A74(v77, v48, v49);

  v77[0] = v50;
  if (a3[2] < 2uLL)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v51 = a3[5];
  v52 = sub_272377BAC();
  v53 = sub_272322A74(v77, v51, v52);

  v77[0] = v53;
  if (a3[2])
  {
    v54 = a3[4];

    v55 = sub_272377BAC();
    v56 = sub_272322A74(v77, v54, v55);

    swift_beginAccess();
    v57 = *v47;
    *v47 = v56;

    return v9;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_272320FCC()
{
  v1 = *v0;
  (*(*v0 + 384))();
  v2 = *(v1 + 608);
  return sub_272377B6C();
}

void *sub_272321088(uint64_t a1)
{
  v2 = *(*v1 + 608);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v27 - v5;
  v32 = (*(v7 + 720))(v4);
  v8 = *(*v1 + 200);
  v33 = *v1 + 200;
  v34 = v8;
  result = v8();
  if (!result[2])
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = result[4];

  if (v10 < 0)
  {
    goto LABEL_26;
  }

  if (v10)
  {
    v11 = 0;
    v29 = v1;
    v30 = v31 + 40;
    v28 = v10;
    while (1)
    {
      result = (v34)(result);
      if (result[2] < 2uLL)
      {
        break;
      }

      v12 = result[5];

      if (v12 < 0)
      {
        goto LABEL_24;
      }

      if (v12)
      {
        v13 = 0;
        while (1)
        {
          result = (v34)(result);
          if (result[2] < 2uLL)
          {
            break;
          }

          v14 = result[5];

          v15 = v11 * v14;
          if ((v11 * v14) >> 64 != (v11 * v14) >> 63)
          {
            goto LABEL_21;
          }

          result = (v15 + v13);
          if (__OFADD__(v15, v13))
          {
            goto LABEL_22;
          }

          sub_272377BCC();
          result = (*(*v1 + 664))(v35);
          if (!*v16)
          {
            goto LABEL_27;
          }

          v17 = result;
          v18 = v16;
          v19 = v13 + 1;
          sub_272377BAC();
          sub_272377BAC();
          sub_272377B3C();
          sub_272322888(v11, *v18);
          v20 = *v18;
          v21 = v6;
          v22 = v20 + 8 * v11;
          sub_272377B3C();
          sub_272322888(v13, *(v22 + 32));
          v23 = *(v22 + 32);
          v6 = v21;
          isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
          v25 = v23 & 0xFFFFFFFFFFFFFF8;
          if ((isClassOrObjCExistentialType & 1) == 0)
          {
            v25 = v23;
          }

          (*(v31 + 40))(v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v13, v21, v2);
          result = v17(v35, 0);
          ++v13;
          v1 = v29;
          if (v12 == v19)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        break;
      }

LABEL_5:
      if (++v11 == v28)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_18:
  result = (*(*v1 + 648))(result);
  if (result)
  {
    v26 = result;

    return v26;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_272321404(uint64_t a1)
{
  v2 = *(*v1 + 608);
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v37 - v5;
  v42 = (*(v7 + 720))(v4);
  v8 = *(*v1 + 200);
  v9 = *v1 + 200;
  result = v8();
  if (!result[2])
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v11 = result[4];

  if (v11 < 0)
  {
    goto LABEL_43;
  }

  if (v11)
  {
    v45 = 0;
    v40 = v43 + 40;
    v41 = v1;
    v37 = v11;
    v39 = v8;
    while (1)
    {
      result = (v8)(result);
      if (result[2] < 2uLL)
      {
        break;
      }

      v12 = result[5];

      if (v12 < 0)
      {
        goto LABEL_41;
      }

      if (v12)
      {
        v46 = 0;
        v38 = v12;
        while (1)
        {
          result = (v8)(result);
          if (result[2] < 3uLL)
          {
            break;
          }

          v13 = result[6];

          if (v13 < 0)
          {
            goto LABEL_39;
          }

          if (v13)
          {
            v14 = 0;
            while (1)
            {
              result = (v8)(result);
              if (result[2] < 2uLL)
              {
                break;
              }

              v15 = result[5];

              v16 = v45 * v15;
              if ((v45 * v15) >> 64 != (v45 * v15) >> 63)
              {
                goto LABEL_31;
              }

              result = (v8)(result);
              if (result[2] < 3uLL)
              {
                goto LABEL_32;
              }

              v17 = result[6];

              v18 = v16 * v17;
              if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
              {
                goto LABEL_33;
              }

              result = (v8)(result);
              if (result[2] < 3uLL)
              {
                goto LABEL_34;
              }

              v19 = result[6];

              v20 = v46 * v19;
              if ((v46 * v19) >> 64 != (v46 * v19) >> 63)
              {
                goto LABEL_35;
              }

              v21 = __OFADD__(v18, v20);
              v22 = v18 + v20;
              if (v21)
              {
                goto LABEL_36;
              }

              result = (v22 + v14);
              if (__OFADD__(v22, v14))
              {
                goto LABEL_37;
              }

              v23 = v13;
              v24 = v9;
              sub_272377BCC();
              result = (*(*v1 + 688))(v47);
              if (!*v25)
              {
                goto LABEL_44;
              }

              v26 = result;
              v27 = v25;
              v44 = v14 + 1;
              sub_272377BAC();
              sub_272377BAC();
              v28 = v6;
              sub_272377BAC();
              sub_272377B3C();
              v29 = v45;
              sub_272322888(v45, *v27);
              v30 = *v27 + 8 * v29;
              sub_272377B3C();
              v31 = v46;
              sub_272322888(v46, *(v30 + 32));
              v32 = *(v30 + 32) + 8 * v31;
              sub_272377B3C();
              sub_272322888(v14, *(v32 + 32));
              v33 = *(v32 + 32);
              v6 = v28;
              v1 = v41;
              v8 = v39;
              isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
              v35 = v33 & 0xFFFFFFFFFFFFFF8;
              if ((isClassOrObjCExistentialType & 1) == 0)
              {
                v35 = v33;
              }

              (*(v43 + 40))(v35 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v14, v6, v2);
              result = v26(v47, 0);
              v14 = v44;
              v13 = v23;
              v9 = v24;
              if (v23 == v44)
              {
                goto LABEL_10;
              }
            }

            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            break;
          }

LABEL_10:
          if (++v46 == v38)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

LABEL_5:
      if (++v45 == v37)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_28:
  result = (*(*v1 + 672))(result);
  if (result)
  {
    v36 = result;

    return v36;
  }

LABEL_45:
  __break(1u);
  return result;
}

void *sub_2723218B4(uint64_t a1)
{
  v2 = *(*v1 + 608);
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v47 - v5;
  v54 = (*(v7 + 720))(v4);
  v8 = *(*v1 + 200);
  v9 = *v1 + 200;
  result = v8();
  if (!result[2])
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v11 = result[4];

  if (v11 < 0)
  {
    goto LABEL_64;
  }

  if (v11)
  {
    v58 = 0;
    v52 = v55 + 40;
    v53 = v2;
    v48 = v11;
    v51 = v9;
    while (1)
    {
      result = (v8)(result);
      if (result[2] < 2uLL)
      {
        break;
      }

      v12 = result[5];

      if (v12 < 0)
      {
        goto LABEL_62;
      }

      if (v12)
      {
        v59 = 0;
        v49 = v12;
        while (1)
        {
          result = (v8)(result);
          if (result[2] < 3uLL)
          {
            break;
          }

          v13 = result[6];

          if (v13 < 0)
          {
            goto LABEL_60;
          }

          if (v13)
          {
            v60 = 0;
            v50 = v13;
            while (1)
            {
              result = (v8)(result);
              if (result[2] < 4uLL)
              {
                break;
              }

              v14 = result[7];

              if (v14 < 0)
              {
                goto LABEL_58;
              }

              if (v14)
              {
                v15 = 0;
                v56 = v14;
                while (1)
                {
                  result = (v8)(result);
                  if (result[2] < 2uLL)
                  {
                    break;
                  }

                  v16 = result[5];

                  v17 = v58 * v16;
                  if ((v58 * v16) >> 64 != (v58 * v16) >> 63)
                  {
                    goto LABEL_43;
                  }

                  result = (v8)(result);
                  if (result[2] < 3uLL)
                  {
                    goto LABEL_44;
                  }

                  v18 = result[6];

                  v19 = v17 * v18;
                  if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
                  {
                    goto LABEL_45;
                  }

                  result = (v8)(result);
                  if (result[2] < 4uLL)
                  {
                    goto LABEL_46;
                  }

                  v20 = result[7];

                  v21 = v19 * v20;
                  if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
                  {
                    goto LABEL_47;
                  }

                  result = (v8)(result);
                  if (result[2] < 3uLL)
                  {
                    goto LABEL_48;
                  }

                  v22 = result[6];

                  v23 = v59 * v22;
                  if ((v59 * v22) >> 64 != (v59 * v22) >> 63)
                  {
                    goto LABEL_49;
                  }

                  result = (v8)(result);
                  if (result[2] < 4uLL)
                  {
                    goto LABEL_50;
                  }

                  v24 = result[7];

                  v25 = v23 * v24;
                  if ((v23 * v24) >> 64 != (v23 * v24) >> 63)
                  {
                    goto LABEL_51;
                  }

                  v26 = __OFADD__(v21, v25);
                  v27 = v21 + v25;
                  if (v26)
                  {
                    goto LABEL_52;
                  }

                  result = (v8)(result);
                  if (result[2] < 4uLL)
                  {
                    goto LABEL_53;
                  }

                  v28 = result[7];

                  v29 = v60 * v28;
                  if ((v60 * v28) >> 64 != (v60 * v28) >> 63)
                  {
                    goto LABEL_54;
                  }

                  v26 = __OFADD__(v27, v29);
                  v30 = v27 + v29;
                  if (v26)
                  {
                    goto LABEL_55;
                  }

                  result = (v30 + v15);
                  if (__OFADD__(v30, v15))
                  {
                    goto LABEL_56;
                  }

                  v31 = v8;
                  sub_272377BCC();
                  v32 = v1;
                  result = (*(*v1 + 712))(v61);
                  if (!*v33)
                  {
                    goto LABEL_65;
                  }

                  v34 = result;
                  v35 = v33;
                  v57 = v15 + 1;
                  sub_272377BAC();
                  sub_272377BAC();
                  sub_272377BAC();
                  sub_272377BAC();
                  sub_272377B3C();
                  v36 = v58;
                  sub_272322888(v58, *v35);
                  v37 = *v35 + 8 * v36;
                  sub_272377B3C();
                  v38 = v59;
                  sub_272322888(v59, *(v37 + 32));
                  v39 = *(v37 + 32) + 8 * v38;
                  sub_272377B3C();
                  v40 = v60;
                  sub_272322888(v60, *(v39 + 32));
                  v41 = *(v39 + 32) + 8 * v40;
                  v42 = v53;
                  sub_272377B3C();
                  sub_272322888(v15, *(v41 + 32));
                  v43 = *(v41 + 32);
                  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
                  v45 = v43 & 0xFFFFFFFFFFFFFF8;
                  if ((isClassOrObjCExistentialType & 1) == 0)
                  {
                    v45 = v43;
                  }

                  (*(v55 + 40))(v45 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v15, v6, v42);
                  result = v34(v61, 0);
                  v15 = v57;
                  v1 = v32;
                  v8 = v31;
                  if (v56 == v57)
                  {
                    goto LABEL_13;
                  }
                }

                __break(1u);
LABEL_43:
                __break(1u);
LABEL_44:
                __break(1u);
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
LABEL_48:
                __break(1u);
LABEL_49:
                __break(1u);
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
                break;
              }

LABEL_13:
              if (++v60 == v50)
              {
                goto LABEL_38;
              }
            }

            __break(1u);
LABEL_58:
            __break(1u);
            break;
          }

LABEL_38:
          if (++v59 == v49)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
        break;
      }

LABEL_39:
      if (++v58 == v48)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_40:
  result = (*(*v1 + 696))(result);
  if (result)
  {
    v46 = result;

    return v46;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_272321EA0()
{
  v1 = v0[22];

  v2 = v0[23];

  v3 = v0[24];
}

uint64_t sub_272321ED8()
{
  sub_272321FD8();

  return swift_deallocClassInstance();
}

uint64_t sub_272321F0C()
{
  v1 = (*v0 + 384);
  v2 = *v1;
  v3 = (*v1)();

  v4 = sub_272322FF4(v3, v0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2723228DC(v4);
  }

  v2();
  v5 = sub_272323118(v4 + 32);

  return v5;
}

void *sub_272321FD8()
{
  sub_27231EC9C();
  v1 = v0[22];

  v2 = v0[23];

  v3 = v0[24];

  return v0;
}

uint64_t sub_27232200C()
{
  sub_27231EC9C();
  v1 = v0[22];

  v2 = v0[23];

  v3 = v0[24];

  return swift_deallocClassInstance();
}

uint64_t sub_272322058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v15 = swift_allocObject();
  *(v15 + 80) = 0;
  *(v15 + 88) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 1;
  *(v15 + 112) = 0;
  *(v15 + 120) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 1;
  *(v15 + 152) = 0;
  *(v15 + 160) = 0;
  *(v15 + 144) = 0;
  *(v15 + 168) = 2;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  v16 = *(a5 + 16);

  v17 = sub_272274C18(v16);
  if (v8)
  {
    swift_bridgeObjectRelease_n();

    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v17;

    *(v15 + 56) = v18;
    *(v15 + 64) = a6;
    *(v15 + 72) = a7;
  }

  return v15;
}

uint64_t sub_27232225C()
{
  sub_27231EC9C();

  return swift_deallocClassInstance();
}

char *sub_2723222DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280882E58, "&");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_272322408(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280881A40, &unk_27237D620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272322470(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_280882F58, &qword_2723856C0);
  v38 = a2;
  result = sub_2723783DC();
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
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
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

void *sub_272322718()
{
  v1 = v0;
  sub_2721F065C(&qword_280882F58, &qword_2723856C0);
  v2 = *v0;
  v3 = sub_2723783CC();
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

uint64_t sub_272322888(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_2723228F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280882F58, &qword_2723856C0);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2723229F4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = (*(**(v2 + 24) + 424))();
  result = memcpy(v5, a1, v6);
  *a2 = v5;
  return result;
}

uint64_t sub_272322A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_272377B4C();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_272377BAC();
    return v8;
  }

  return result;
}

uint64_t sub_272322B78(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = sub_272376A6C();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v33);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = sub_2721F065C(&qword_280882E68, &qword_2723855C8);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = sub_2721F065C(&qword_280882E60, &qword_2723855C0);
  v31 = *(v14 - 8);
  v15 = *(v31 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = *(a2 + 16);
  sub_272376A7C();
  sub_272376A2C();
  sub_272376A8C();
  sub_272376A2C();
  sub_272376A0C();
  sub_272376A0C();
  v19 = sub_272376A5C();
  v20 = *(v3 + 8);
  v21 = v7;
  v22 = v33;
  v20(v21, v33);
  v20(v9, v22);
  if ((v19 & 1) == 0)
  {
    __break(1u);
  }

  src.data = sub_272376A1C();
  src.height = v23;
  src.width = v24;
  src.rowBytes = v25;
  dest.data = sub_272376A1C();
  dest.height = v26;
  dest.width = v27;
  dest.rowBytes = v28;
  vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
  (*(v32 + 8))(v13, v10);
  result = (*(v31 + 8))(v17, v14);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_272322EDC(uint64_t *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = (*(*v2 + 296))();
  v8 = (*(*v2 + 592))(v5, v6, v7, *(v4 + 608), *(v4 + 616));
  result = (*(*v2 + 384))(v8);
  *a2 = result;
  return result;
}

uint64_t sub_272322FF4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      v4 = sub_272377B5C();
      *(v4 + 16) = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = (*(*a2 + 296))();
    v6 = (*(*a2 + 592))(v4 + 32, v3, v5, MEMORY[0x277D84C58], MEMORY[0x277D84C90]);
    result = (*(*a2 + 384))(v6);
    if (result <= v3)
    {
      *(v4 + 16) = result;
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272323118(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = sub_272376A6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_2721F065C(&qword_280882E60, &qword_2723855C0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = sub_2721F065C(&qword_280882E68, &qword_2723855C8);
  v30 = *(v14 - 8);
  v15 = *(v30 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  if (!a1)
  {
LABEL_5:
    __break(1u);
  }

  sub_272376A8C();
  sub_272376A2C();
  sub_272376A0C();
  sub_272376A7C();
  sub_272376A3C();
  sub_272376A0C();
  sub_272376A0C();
  v18 = sub_272376A5C();
  v19 = *(v3 + 8);
  v19(v7, v2);
  v19(v9, v2);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  src.data = sub_272376A1C();
  src.height = v20;
  src.width = v21;
  src.rowBytes = v22;
  dest.data = sub_272376A1C();
  dest.height = v23;
  dest.width = v24;
  dest.rowBytes = v25;
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  v26 = sub_272376A4C();
  (*(v31 + 8))(v13, v10);
  (*(v30 + 8))(v17, v14);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t sub_272323490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2723234D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2723236B4(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = sub_272323CDC(a1, a4);
  v7 = *(v6 + 16);
  if (v7)
  {
    v22 = *(v6 + 16);
    v23 = MEMORY[0x277D84F90];
    v21 = v6;
    sub_2722005AC(0, v7, 0);
    result = v21;
    v9 = v22;
    v10 = 0;
    v11 = *(v21 + 16);
    v12 = v23;
    v13 = a2 + 32;
    v14 = *(a2 + 16);
    v15 = *(a3 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(result + 16))
      {
        goto LABEL_14;
      }

      if (v14 == v10)
      {
        goto LABEL_15;
      }

      if (v15 == v10)
      {
        goto LABEL_16;
      }

      v16 = *(v21 + 32 + 4 * v10);
      v17 = *(v13 + 4 * v10);
      v18 = *(a3 + 32 + 4 * v10);
      v20 = *(v23 + 16);
      v19 = *(v23 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2722005AC((v19 > 1), v20 + 1, 1);
        result = v21;
        v9 = v22;
      }

      ++v10;
      *(v23 + 16) = v20 + 1;
      *(v23 + 4 * v20 + 32) = (v16 * v17) + v18;
      if (v9 == v10)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_272323828@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a3)
    {
      v8 = sub_272377B5C();
      *(v8 + 16) = a3;
      bzero((v8 + 32), 4 * a3);
      v9 = sub_272377B5C();
      *(v9 + 16) = a3;
      bzero((v9 + 32), 4 * a3);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      v8 = MEMORY[0x277D84F90];
    }

    v10 = sub_27220392C(v9, a2);

    *a4 = v6;
    a4[1] = a2;
    a4[2] = a3;
    a4[3] = 0;
    a4[4] = v8;
    a4[5] = v10;
  }

  return result;
}

uint64_t sub_2723238F8(uint64_t a1)
{
  v5 = v2[3];
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = v2;
    v8 = v2[5];
    v2 += 5;
    v7 = v8;
    if (*(v2 - 4) < v6)
    {
      v6 = *(v2 - 4);
    }

    *(v2 - 2) = v6;
    if (*(v7 + 16))
    {
      v4 = a1;
      v3 = *(v7 + 32);

      sub_2722C2B50(0, 1);
      v2 = *v2;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  v2 = sub_272241E04(0, v2[2] + 1, 1, v2);
LABEL_6:
  v10 = v2[2];
  v9 = v2[3];
  if (v10 >= v9 >> 1)
  {
    v2 = sub_272241E04((v9 > 1), v10 + 1, 1, v2);
  }

  v2[2] = v10 + 1;
  v2[v10 + 4] = v4;
  v1[5] = v2;
  v11 = v1[4];

  sub_2722BFE3C(v12, v4);

  swift_bridgeObjectRelease_n();

  v14 = sub_2722C0018(v13, v3);

  result = swift_bridgeObjectRelease_n();
  v1[4] = v14;
  return result;
}

uint64_t sub_272323A58(uint64_t a1)
{
  sub_2723238F8(a1);
  v3 = sub_272323E6C(*(v1 + 24), *(v1 + 32));
  v4 = sub_2722C0018(a1, v3);

  return v4;
}

float sub_272323ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    if (v1 >= 8)
    {
      v3 = v1 & 0x7FFFFFFFFFFFFFF8;
      v16 = a1 + 48;
      v4 = 0.0;
      v17 = v1 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v4 = (((((((v4 + COERCE_FLOAT(*(v16 - 16))) + COERCE_FLOAT(HIDWORD(*(v16 - 16)))) + COERCE_FLOAT(*(v16 - 8))) + COERCE_FLOAT(HIDWORD(*(v16 - 16)))) + COERCE_FLOAT(*v16)) + COERCE_FLOAT(HIDWORD(*v16))) + COERCE_FLOAT(*(v16 + 8))) + COERCE_FLOAT(HIDWORD(*v16));
        v16 += 32;
        v17 -= 8;
      }

      while (v17);
      if (v1 == v3)
      {
LABEL_19:
        v21 = v4 / v1;
        v25 = MEMORY[0x277D84F90];
        sub_2722005AC(0, v1, 0);
        v5 = v25;
        v22 = *(v25 + 16);
        do
        {
          v23 = *v2;
          v26 = v5;
          v24 = *(v5 + 24);
          v6 = v22 + 1;
          if (v22 >= v24 >> 1)
          {
            sub_2722005AC((v24 > 1), v22 + 1, 1);
            v5 = v26;
          }

          *(v5 + 16) = v6;
          *(v5 + 4 * v22 + 32) = (v23 - v21) * (v23 - v21);
          ++v2;
          ++v22;
          --v1;
        }

        while (v1);
        goto LABEL_5;
      }
    }

    else
    {
      v3 = 0;
      v4 = 0.0;
    }

    v18 = v1 - v3;
    v19 = (a1 + 4 * v3 + 32);
    do
    {
      v20 = *v19++;
      v4 = v4 + v20;
      --v18;
    }

    while (v18);
    goto LABEL_19;
  }

  v5 = MEMORY[0x277D84F90];
  v6 = *(MEMORY[0x277D84F90] + 16);
  if (!v6)
  {
    v14 = 0.0;
    v8 = 0.0;
    goto LABEL_13;
  }

LABEL_5:
  if (v6 > 7)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFF8;
    v9 = v5 + 48;
    v8 = 0.0;
    v10 = v6 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v8 = (((((((v8 + COERCE_FLOAT(*(v9 - 16))) + COERCE_FLOAT(HIDWORD(*(v9 - 16)))) + COERCE_FLOAT(*(v9 - 8))) + COERCE_FLOAT(HIDWORD(*(v9 - 16)))) + COERCE_FLOAT(*v9)) + COERCE_FLOAT(HIDWORD(*v9))) + COERCE_FLOAT(*(v9 + 8))) + COERCE_FLOAT(HIDWORD(*v9));
      v9 += 32;
      v10 -= 8;
    }

    while (v10);
    if (v6 == v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
  }

  v11 = v6 - v7;
  v12 = (v5 + 4 * v7 + 32);
  do
  {
    v13 = *v12++;
    v8 = v8 + v13;
    --v11;
  }

  while (v11);
LABEL_12:
  v14 = v6;
LABEL_13:

  return v8 / v14;
}

uint64_t sub_272323CDC(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    sub_272323ABC(a1);
    return MEMORY[0x277D84F90];
  }

  v4 = (a1 + 32);
  if (v2 <= 7)
  {
    v5 = 0;
    v6 = 0.0;
LABEL_8:
    v10 = v2 - v5;
    v11 = (a1 + 4 * v5 + 32);
    do
    {
      v12 = *v11++;
      v6 = v6 + v12;
      --v10;
    }

    while (v10);
    goto LABEL_10;
  }

  v5 = v2 & 0x7FFFFFFFFFFFFFF8;
  v8 = a1 + 48;
  v6 = 0.0;
  v9 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v6 = (((((((v6 + COERCE_FLOAT(*(v8 - 16))) + COERCE_FLOAT(HIDWORD(*(v8 - 16)))) + COERCE_FLOAT(*(v8 - 8))) + COERCE_FLOAT(HIDWORD(*(v8 - 16)))) + COERCE_FLOAT(*v8)) + COERCE_FLOAT(HIDWORD(*v8))) + COERCE_FLOAT(*(v8 + 8))) + COERCE_FLOAT(HIDWORD(*v8));
    v8 += 32;
    v9 -= 8;
  }

  while (v9);
  if (v2 != v5)
  {
    goto LABEL_8;
  }

LABEL_10:
  v13 = v6 / v2;
  v14 = sub_272323ABC(a1);
  v19 = MEMORY[0x277D84F90];
  sub_2722005AC(0, v2, 0);
  result = v19;
  v15 = *(v19 + 16);
  v16 = sqrtf(v14 + a2);
  do
  {
    v17 = *v4;
    v20 = result;
    v18 = *(result + 24);
    if (v15 >= v18 >> 1)
    {
      sub_2722005AC((v18 > 1), v15 + 1, 1);
      result = v20;
    }

    *(result + 16) = v15 + 1;
    *(result + 4 * v15 + 32) = (v17 - v13) / v16;
    ++v4;
    ++v15;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t sub_272323E6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = a1;
    v11 = MEMORY[0x277D84F90];
    sub_2722005AC(0, v3, 0);
    result = v11;
    v7 = (a2 + 32);
    v8 = *(v11 + 16);
    do
    {
      v9 = *v7;
      v12 = result;
      v10 = *(result + 24);
      if (v8 >= v10 >> 1)
      {
        sub_2722005AC((v10 > 1), v8 + 1, 1);
        result = v12;
      }

      *(result + 16) = v8 + 1;
      *(result + 4 * v8 + 32) = v9 / v6;
      ++v7;
      ++v8;
      --v3;
    }

    while (v3);
  }

  return result;
}

__n128 sub_272323F44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_272323F58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_272323FA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_272323FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_272324038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27232409C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, uint64_t a13)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 24) = a11;
  *(a9 + 32) = a12;
  *(a9 + 57) = a6;
  *(a9 + 56) = a5;
  *(a9 + 58) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a13;
  return result;
}

uint64_t sub_2723240D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006F696475;
  v3 = 0x4164726F7779656BLL;
  v4 = a1;
  v5 = 0xEF747365424E7373;
  v6 = 0xD000000000000012;
  if (a1 == 5)
  {
    v6 = 0x6150646E6F636573;
  }

  else
  {
    v5 = 0x80000002723904B0;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000027238A3D0;
  if (a1 != 3)
  {
    v7 = 0x686374616D73696DLL;
    v8 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x6365746544706F74;
  v10 = 0xEC0000006E6F6974;
  if (a1 != 1)
  {
    v9 = 0x6F69746365746564;
    v10 = 0xEA0000000000736ELL;
  }

  if (!a1)
  {
    v9 = 0x4164726F7779656BLL;
    v10 = 0xEC0000006F696475;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC0000006E6F6974;
        if (v11 != 0x6365746544706F74)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xEA0000000000736ELL;
        if (v11 != 0x6F69746365746564)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF747365424E7373;
        if (v11 != 0x6150646E6F636573)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0x80000002723904B0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x800000027238A3D0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v2 = 0xE800000000000000;
    v3 = 0x686374616D73696DLL;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_27237865C();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_272324324(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x656D617246646E65;
    if (a1 != 6)
    {
      v10 = 0xD000000000000010;
      v9 = 0x8000000272390450;
    }

    v11 = 0x4165636E656C6973;
    v12 = 0xEC00000072657466;
    if (a1 != 4)
    {
      v11 = 0x6172467472617473;
      v12 = 0xEA0000000000656DLL;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x4265636E656C6973;
    v5 = 0xED000065726F6665;
    if (a1 != 2)
    {
      v4 = 0x7544686365657073;
      v5 = 0xEC000000676E6972;
    }

    v6 = 0x65726F6373;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x64726F7779656BLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x65726F6373)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x64726F7779656BLL)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_45;
    }

    if (a2 == 2)
    {
      v13 = 0xED000065726F6665;
      if (v7 != 0x4265636E656C6973)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = 0x7544686365657073;
    v15 = 1735289202;
LABEL_42:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v7 != v14)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0xEA0000000000656DLL;
      if (v7 != 0x6172467472617473)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = 0x4165636E656C6973;
    v15 = 1919251558;
    goto LABEL_42;
  }

  if (a2 == 6)
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x656D617246646E65)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0x8000000272390450;
    if (v7 != 0xD000000000000010)
    {
LABEL_47:
      v16 = sub_27237865C();
      goto LABEL_48;
    }
  }

LABEL_45:
  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_2723245E4()
{
  sub_27237790C();
}

uint64_t sub_27232473C()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2723248A0()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2723249F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_272329050();
  *a2 = result;
  return result;
}

void sub_272324A20(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64726F7779656BLL;
  v5 = 0xE800000000000000;
  v6 = 0x656D617246646E65;
  if (v2 != 6)
  {
    v6 = 0xD000000000000010;
    v5 = 0x8000000272390450;
  }

  v7 = 0xEC00000072657466;
  v8 = 0x4165636E656C6973;
  if (v2 != 4)
  {
    v8 = 0x6172467472617473;
    v7 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED000065726F6665;
  v10 = 0x4265636E656C6973;
  if (v2 != 2)
  {
    v10 = 0x7544686365657073;
    v9 = 0xEC000000676E6972;
  }

  if (*v1)
  {
    v4 = 0x65726F6373;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_272324B40()
{
  v1 = *v0;
  v2 = 0x64726F7779656BLL;
  v3 = 0x656D617246646E65;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x4165636E656C6973;
  if (v1 != 4)
  {
    v4 = 0x6172467472617473;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4265636E656C6973;
  if (v1 != 2)
  {
    v5 = 0x7544686365657073;
  }

  if (*v0)
  {
    v2 = 0x65726F6373;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_272324C5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272329050();
  *a1 = result;
  return result;
}

uint64_t sub_272324C90(uint64_t a1)
{
  v2 = sub_27232909C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272324CCC(uint64_t a1)
{
  v2 = sub_27232909C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAKeywordDetection.encode(to:)(void *a1)
{
  v3 = sub_2721F065C(&qword_280882F98, "~");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 4);
  v11 = v1[5];
  v21 = v1[6];
  v22 = v11;
  LODWORD(v11) = *(v1 + 56);
  v19 = *(v1 + 57);
  v20 = v11;
  v18 = *(v1 + 58);
  v12 = v1[9];
  v16 = v1[8];
  v17 = v12;
  v13 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27232909C();
  sub_2723787CC();
  v31 = 0;
  v14 = v23;
  sub_27237858C();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v30 = 1;
  sub_2723785BC();
  v29 = 2;
  sub_27237859C();
  v28 = 3;
  sub_27237859C();
  v27 = 4;
  sub_27237859C();
  v26 = 5;
  sub_2723785EC();
  v25 = 6;
  sub_2723785EC();
  if (!v17)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v24 = 7;
  sub_27237858C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t VAKeywordDetection.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v21 = v0[5];
  v22 = v0[6];
  v4 = *(v0 + 57);
  v6 = v0[8];
  v5 = v0[9];
  if (*(v0 + 56))
  {
    v7 = 0x3E6C69733CLL;
  }

  else
  {
    v7 = 0x3E6863656570733CLL;
  }

  *(v0 + 56);
  if (*(v0 + 57))
  {
    v8 = 0x3E6C69733CLL;
  }

  else
  {
    v8 = 0x3E6863656570733CLL;
  }

  if (*(v0 + 57))
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (*(v0 + 58))
  {
    sub_27237820C();

    v23 = v7;
    MEMORY[0x2743C4AD0](v1, v2);
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    MEMORY[0x2743C4AD0](v10, v11);
  }

  else
  {
    sub_27237820C();

    v23 = v7;
    MEMORY[0x2743C4AD0](2763306, 0xE300000000000000);
    MEMORY[0x2743C4AD0](v1, v2);
    if (v5)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    if (v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    MEMORY[0x2743C4AD0](v12, v13);

    MEMORY[0x2743C4AD0](2763306, 0xE300000000000000);
  }

  MEMORY[0x2743C4AD0](v8, v9);

  MEMORY[0x2743C4AD0](58, 0xE100000000000000);
  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D83A90];
  *(v14 + 16) = xmmword_27237AF80;
  v16 = MEMORY[0x277D83B08];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  *(v14 + 32) = v3;
  v17 = sub_27237786C();
  MEMORY[0x2743C4AD0](v17);

  MEMORY[0x2743C4AD0](2637357, 0xE300000000000000);
  v18 = sub_27237862C();
  MEMORY[0x2743C4AD0](v18);

  MEMORY[0x2743C4AD0](8236, 0xE200000000000000);
  v19 = sub_27237862C();
  MEMORY[0x2743C4AD0](v19);

  MEMORY[0x2743C4AD0](41, 0xE100000000000000);
  return v23;
}

void *VAKeywordResult.__allocating_init(detections:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void *VAKeywordResult.init(detections:)(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t static VAKeywordResult.buildFromScoresMap(scores:)(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      type metadata accessor for VAKeywordResult();
      result = swift_allocObject();
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = v9;
      return result;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = __clz(__rbit64(v5)) | (v8 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(*(a1 + 56) + 4 * v11);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_272205014(0, *(v9 + 16) + 1, 1, v9);
          v9 = result;
        }

        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_272205014((v16 > 1), v17 + 1, 1, v9);
          v9 = result;
        }

        v5 &= v5 - 1;
        *(v9 + 16) = v17 + 1;
        v18 = v9 + 80 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v13;
        *(v18 + 48) = v15;
        *(v18 + 56) = 0u;
        *(v18 + 72) = 0u;
        *(v18 + 88) = 0;
        *(v18 + 90) = 1;
        *(v18 + 91) = v19;
        *(v18 + 95) = v20;
        *(v18 + 96) = 0;
        *(v18 + 104) = 0;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

char *sub_27232546C()
{
  v2 = (*(*v0 + 104))();

  sub_272328558(&v2);

  return v2;
}

uint64_t sub_2723254F8()
{
  v1 = sub_27229D258(MEMORY[0x277D84F90]);
  v2 = (*(*v0 + 104))();
  v3 = v2;
  v24 = *(v2 + 16);
  if (!v24)
  {
LABEL_16:

    return v1;
  }

  v4 = 0;
  v5 = (v2 + 104);
  while (v4 < *(v3 + 16))
  {
    v7 = *(v5 - 9);
    v6 = *(v5 - 8);
    v8 = *(v5 - 14);
    v9 = *v5;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v1;
    v11 = sub_27220038C(v7, v6);
    v13 = v1[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_18;
    }

    v17 = v12;
    if (v1[3] < v16)
    {
      sub_272300664(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_27220038C(v7, v6);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v22 = v11;
    sub_272301090();
    v11 = v22;
    v1 = v25;
    if (v17)
    {
LABEL_3:
      *(v1[7] + 4 * v11) = v8;

      goto LABEL_4;
    }

LABEL_12:
    v1[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v1[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v1[7] + 4 * v11) = v8;

    v20 = v1[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    v1[2] = v21;
LABEL_4:
    ++v4;
    v5 += 10;
    if (v24 == v4)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

uint64_t sub_2723256FC()
{
  v1 = (*(*v0 + 184))();
  v2 = sub_27229D258(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  if (!v3)
  {
LABEL_16:

    return v2;
  }

  v4 = 0;
  v5 = (v1 + 104);
  while (v4 < *(v1 + 16))
  {
    v7 = *(v5 - 9);
    v6 = *(v5 - 8);
    v8 = *(v5 - 14);
    v9 = *v5;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_27220038C(v7, v6);
    v13 = v2[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_18;
    }

    v17 = v12;
    if (v2[3] < v16)
    {
      sub_272300664(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_27220038C(v7, v6);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v22 = v11;
    sub_272301090();
    v11 = v22;
    if (v17)
    {
LABEL_3:
      *(v2[7] + 4 * v11) = v8;

      goto LABEL_4;
    }

LABEL_12:
    v2[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v2[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v2[7] + 4 * v11) = v8;

    v20 = v2[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    v2[2] = v21;
LABEL_4:
    ++v4;
    v5 += 10;
    if (v3 == v4)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

double sub_2723258F4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *((*(*v1 + 104))() + 16);

  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = (*(*v1 + 184))(v4);
  if (!*(v5 + 16))
  {

LABEL_5:
    *&v10 = 0;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return *&v10;
  }

  v6 = *(v5 + 48);
  v7 = *(v5 + 80);
  v8 = *(v5 + 96);
  v15 = *(v5 + 64);
  v16 = v7;
  v17 = v8;
  v13 = *(v5 + 32);
  v14 = v6;
  sub_272329114(&v13, &v12);

  v9 = v16;
  a1[2] = v15;
  a1[3] = v9;
  a1[4] = v17;
  v10 = v14;
  *a1 = v13;
  a1[1] = v10;
  return *&v10;
}

uint64_t sub_2723259E0()
{
  v1 = v0;
  v2 = VARuntimeParameters.keywordsToThresholds.getter();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v42 = sub_2722702A8(*(v2 + 16), 0);
    v5 = sub_2722DD9D8(&v37, v42 + 4, v4, v3);
    v6 = sub_272270484();
    if (v5 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v42 = MEMORY[0x277D84F90];
LABEL_5:
  result = (*(*v1 + 104))(v6);
  v8 = *(result + 16);
  if (v8)
  {
    v31 = v1;
    v9 = 0;
    v32 = v8 - 1;
    v10 = MEMORY[0x277D84F90];
    v11 = 32;
    v33 = result;
    while (1)
    {
      v12 = *(result + v11 + 16);
      v13 = *(result + v11 + 32);
      v14 = *(result + v11 + 48);
      v41 = *(result + v11 + 64);
      v15 = *(result + v11);
      v39 = v13;
      v40 = v14;
      v37 = v15;
      v38 = v12;
      if (*(&v41 + 1))
      {
        v16 = *(&v41 + 1);
        v17 = v41;
      }

      else
      {
        v16 = *(&v37 + 1);
        v17 = v37;
      }

      v36[0] = v17;
      v36[1] = v16;
      MEMORY[0x28223BE20](result);
      v30[2] = v36;
      sub_272329114(&v37, &v34);

      if ((sub_2722160A8(sub_272204258, v30, v42) & 1) == 0)
      {
        sub_27226AC58(&v37);

        v34 = 0;
        v35 = 0xE000000000000000;
        sub_27237820C();

        v34 = 0xD000000000000011;
        v35 = 0x80000002723904D0;
        MEMORY[0x2743C4AD0](v17, v16);

        MEMORY[0x2743C4AD0](0x206E6920746F6E20, 0xE800000000000000);
        v24 = MEMORY[0x2743C4C60](v42, MEMORY[0x277D837D0]);
        v26 = v25;

        MEMORY[0x2743C4AD0](v24, v26);

        v27 = v34;
        v28 = v35;
        sub_2722032B4();
        swift_allocError();
        *v29 = v27;
        v29[1] = v28;
        return swift_willThrow();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_272205014(0, *(v10 + 2) + 1, 1, v10);
      }

      v19 = *(v10 + 2);
      v18 = *(v10 + 3);
      if (v19 >= v18 >> 1)
      {
        v10 = sub_272205014((v18 > 1), v19 + 1, 1, v10);
      }

      *(v10 + 2) = v19 + 1;
      v20 = &v10[80 * v19];
      *(v20 + 2) = v37;
      v21 = v38;
      v22 = v39;
      v23 = v41;
      *(v20 + 5) = v40;
      *(v20 + 6) = v23;
      *(v20 + 3) = v21;
      *(v20 + 4) = v22;
      if (v32 == v9)
      {
        break;
      }

      ++v9;
      result = v33;
      v11 += 80;
      if (v9 >= *(v33 + 16))
      {
        __break(1u);
        return result;
      }
    }

    v1 = v31;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  return (*(*v1 + 112))(v10);
}

uint64_t sub_272325DE4()
{
  v1 = (*(*v0 + 184))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v14 = v3[1];
      v15 = v3[2];
      v16 = v3[3];
      v17 = v3[4];
      v13 = *v3;
      v5 = VAKeywordDetection.description.getter();
      v7 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2721FFBF8(0, *(v4 + 2) + 1, 1, v4);
      }

      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      if (v9 >= v8 >> 1)
      {
        v4 = sub_2721FFBF8((v8 > 1), v9 + 1, 1, v4);
      }

      *(v4 + 2) = v9 + 1;
      v10 = &v4[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v7;
      v3 += 5;
      --v2;
    }

    while (v2);
  }

  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v11 = sub_2723777CC();

  return v11;
}

uint64_t sub_272325F6C()
{
  v1 = 0x7479426F69647561;
  if (*v0 != 1)
  {
    v1 = 0x656D695474736F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69746365746564;
  }
}

uint64_t sub_272325FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_272329350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_272325FF4(uint64_t a1)
{
  v2 = sub_27232914C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272326030(uint64_t a1)
{
  v2 = sub_27232914C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAKeywordResult.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t VAKeywordResult.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2723260D4(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882FA8, &qword_272385788);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27232914C();
  v11 = sub_2723787CC();
  v17 = (*(*v3 + 104))(v11);
  v16 = 0;
  sub_2721F065C(&qword_280882FB0, &unk_272385790);
  sub_272329580(&qword_280882FB8, &qword_280882FB0, &unk_272385790);
  sub_2723785DC();

  if (!v2)
  {
    v17 = (*(*v3 + 128))(v12);
    v16 = 1;
    sub_2721F065C(&qword_280882EF0, &qword_272385650);
    sub_2723291F4();
    sub_27237857C();

    (*(*v3 + 152))(v13);
    LOBYTE(v17) = 2;
    sub_2723785FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2723263F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid;
  swift_beginAccess();
  return sub_272329270(v1 + v3, a1);
}

uint64_t sub_272326450(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid;
  swift_beginAccess();
  sub_2723292E0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_272326510()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_chunk;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272326554(int a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_chunk;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272326604()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_count;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272326648(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_count;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_2723266F8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_intervalFromEndOfSpeech;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27232673C(double a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_intervalFromEndOfSpeech;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2723267EC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_startFrame;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272326830(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_startFrame;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2723268E0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_endFrame;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272326924(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_endFrame;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272326A4C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_mismatch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272326A90(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_mismatch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272326BB8()
{
  v1 = (v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassDuration);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_272326C04(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassDuration;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_272326D54()
{
  *v0;
  *v0;
  *v0;
  sub_27237790C();
}

uint64_t sub_272326E98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_272329478();
  *a2 = result;
  return result;
}

void sub_272326EC8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006F696475;
  v4 = 0x4164726F7779656BLL;
  v5 = 0xEF747365424E7373;
  v6 = 0x6150646E6F636573;
  if (v2 != 5)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000002723904B0;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000027238A3D0;
  if (v2 != 3)
  {
    v7 = 0x686374616D73696DLL;
    v8 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEC0000006E6F6974;
  v10 = 0x6365746544706F74;
  if (v2 != 1)
  {
    v10 = 0x6F69746365746564;
    v9 = 0xEA0000000000736ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_272326FD4()
{
  v1 = *v0;
  v2 = 0x4164726F7779656BLL;
  v3 = 0x6150646E6F636573;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x686374616D73696DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6365746544706F74;
  if (v1 != 1)
  {
    v5 = 0x6F69746365746564;
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

uint64_t sub_2723270DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272329478();
  *a1 = result;
  return result;
}

uint64_t sub_272327104(uint64_t a1)
{
  v2 = sub_2723294C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272327140(uint64_t a1)
{
  v2 = sub_2723294C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27232717C(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882FD0, &qword_2723857A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2723294C4();
  v11 = sub_2723787CC();
  *&v25[0] = (*(*v3 + 472))(v11);
  *(&v25[0] + 1) = v12;
  LOBYTE(v23[0]) = 3;
  sub_2721F065C(&qword_280881828, &qword_27237BF40);
  sub_272329518(&qword_2808824E8, &qword_280881828, &qword_27237BF40);
  sub_2723785DC();
  if (!v2)
  {

    *&v25[0] = (*(*v3 + 520))(v13);
    *(&v25[0] + 1) = v14;
    LOBYTE(v23[0]) = 5;
    sub_2723785DC();

    *&v25[0] = (*(*v3 + 544))(v16);
    BYTE8(v25[0]) = v17 & 1;
    LOBYTE(v23[0]) = 6;
    sub_2721F065C(&qword_280882508, &qword_272380998);
    sub_272329518(&qword_280882510, &qword_280882508, &qword_272380998);
    v18 = sub_2723785DC();
    v27 = (*(*v3 + 496))(v18);
    v26 = 4;
    sub_2721F065C(&qword_2808824F8, &qword_272380990);
    sub_272329518(&qword_280882500, &qword_2808824F8, &qword_272380990);
    v19 = sub_2723785DC();
    (*(*v3 + 208))(v25, v19);
    v24 = 1;
    sub_2721F065C(&qword_2808819E0, &qword_27237D890);
    sub_272329580(&qword_280882FE0, &qword_2808819E0, &qword_27237D890);
    sub_2723785DC();
    v23[2] = v25[2];
    v23[3] = v25[3];
    v23[4] = v25[4];
    v23[1] = v25[1];
    v23[0] = v25[0];
    v20 = sub_2721F40F0(v23, &qword_2808819E0, &qword_27237D890);
    v22 = (*(*v3 + 184))(v20);
    v21[7] = 2;
    sub_2721F065C(&qword_280882FB0, &unk_272385790);
    sub_272329580(&qword_280882FB8, &qword_280882FB0, &unk_272385790);
    sub_2723785DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_272327700()
{
  v1 = v0;
  v2 = sub_2721F065C(&qword_280881D10, &qword_2723857A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v78 - v4;
  v80 = sub_272376E5C();
  v6 = *(v80 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v80);
  v78 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v0 + 400);
  if (v10(v8) <= 0.0)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    *&v82[0] = 0;
    *(&v82[0] + 1) = 0xE000000000000000;
    sub_27237820C();
    v11 = MEMORY[0x2743C4AD0](91, 0xE100000000000000);
    v10(v11);
    sub_272377D2C();
    MEMORY[0x2743C4AD0](0xD000000000000019, 0x8000000272390550);
    v12 = v82[0];
    v13 = sub_2721FFBF8(0, 1, 1, MEMORY[0x277D84F90]);
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_2721FFBF8((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    *&v13[16 * v15 + 32] = v12;
  }

  v79 = v6;
  v16 = (*(*v0 + 184))();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v82[1] = v18[1];
      v82[2] = v18[2];
      v82[3] = v18[3];
      v82[4] = v18[4];
      v82[0] = *v18;
      v19 = VAKeywordDetection.description.getter();
      v21 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2721FFBF8(0, *(v13 + 2) + 1, 1, v13);
      }

      v23 = *(v13 + 2);
      v22 = *(v13 + 3);
      if (v23 >= v22 >> 1)
      {
        v13 = sub_2721FFBF8((v22 > 1), v23 + 1, 1, v13);
      }

      *(v13 + 2) = v23 + 1;
      v24 = &v13[16 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      v18 += 5;
      --v17;
    }

    while (v17);
  }

  *&v82[0] = 0x656D695474736F68;
  *(&v82[0] + 1) = 0xEA0000000000203ALL;
  v81 = (*(*v1 + 152))(v25);
  v26 = sub_27237862C();
  MEMORY[0x2743C4AD0](v26);

  v27 = v82[0];
  v28 = sub_2721FFBF8(0, 1, 1, MEMORY[0x277D84F90]);
  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_2721FFBF8((v29 > 1), v30 + 1, 1, v28);
  }

  v31 = v79;
  *(v28 + 2) = v30 + 1;
  *&v28[16 * v30 + 32] = v27;
  (*(*v1 + 328))();
  v32 = v80;
  if ((*(v31 + 48))(v5, 1, v80) == 1)
  {
    sub_2721F40F0(v5, &qword_280881D10, &qword_2723857A0);
  }

  else
  {
    (*(v31 + 32))(v78, v5, v32);
    sub_27222BB18();
    v33 = sub_27237862C();
    *&v82[0] = 3826793;
    *(&v82[0] + 1) = 0xE300000000000000;
    MEMORY[0x2743C4AD0](v33);

    v34 = v82[0];
    v36 = *(v28 + 2);
    v35 = *(v28 + 3);
    if (v36 >= v35 >> 1)
    {
      v28 = sub_2721FFBF8((v35 > 1), v36 + 1, 1, v28);
    }

    (*(v31 + 8))(v78, v32);
    *(v28 + 2) = v36 + 1;
    *&v28[16 * v36 + 32] = v34;
  }

  *&v82[0] = v13;
  v37 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v80 = v37;
  v38 = sub_2723777CC();
  v40 = v39;

  *&v82[0] = 91;
  *(&v82[0] + 1) = 0xE100000000000000;
  MEMORY[0x2743C4AD0](v38, v40);

  MEMORY[0x2743C4AD0](93, 0xE100000000000000);

  v41 = v82[0];
  v43 = *(v28 + 2);
  v42 = *(v28 + 3);
  if (v43 >= v42 >> 1)
  {
    v28 = sub_2721FFBF8((v42 > 1), v43 + 1, 1, v28);
  }

  *(v28 + 2) = v43 + 1;
  *&v28[16 * v43 + 32] = v41;
  *&v82[0] = 0;
  *(&v82[0] + 1) = 0xE000000000000000;
  sub_27237820C();

  *&v82[0] = 0xD000000000000012;
  *(&v82[0] + 1) = 0x80000002723904F0;
  v45 = (*(*v1 + 472))(v44);
  if (v46)
  {
    v47 = v46;
  }

  else
  {
    v45 = 0x3E656E6F6E3CLL;
    v47 = 0xE600000000000000;
  }

  MEMORY[0x2743C4AD0](v45, v47);

  v48 = v82[0];
  v50 = *(v28 + 2);
  v49 = *(v28 + 3);
  if (v50 >= v49 >> 1)
  {
    v28 = sub_2721FFBF8((v49 > 1), v50 + 1, 1, v28);
  }

  *(v28 + 2) = v50 + 1;
  *&v28[16 * v50 + 32] = v48;
  *&v82[0] = 0;
  *(&v82[0] + 1) = 0xE000000000000000;
  sub_27237820C();

  *&v82[0] = 0xD000000000000011;
  *(&v82[0] + 1) = 0x8000000272390510;
  v52 = (*(*v1 + 520))(v51);
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v52 = 0x3E656E6F6E3CLL;
    v54 = 0xE600000000000000;
  }

  MEMORY[0x2743C4AD0](v52, v54);

  v55 = v82[0];
  v57 = *(v28 + 2);
  v56 = *(v28 + 3);
  if (v57 >= v56 >> 1)
  {
    v28 = sub_2721FFBF8((v56 > 1), v57 + 1, 1, v28);
  }

  *(v28 + 2) = v57 + 1;
  *&v28[16 * v57 + 32] = v55;
  *&v82[0] = 0;
  *(&v82[0] + 1) = 0xE000000000000000;
  sub_27237820C();
  v58 = MEMORY[0x2743C4AD0](0xD000000000000014, 0x8000000272390530);
  (*(*v1 + 544))(v58);
  sub_272377D2C();
  v59 = v82[0];
  v61 = *(v28 + 2);
  v60 = *(v28 + 3);
  if (v61 >= v60 >> 1)
  {
    v28 = sub_2721FFBF8((v60 > 1), v61 + 1, 1, v28);
  }

  *(v28 + 2) = v61 + 1;
  *&v28[16 * v61 + 32] = v59;
  *&v82[0] = 0x686374616D73696DLL;
  *(&v82[0] + 1) = 0xEA0000000000203ALL;
  v62 = (*(*v1 + 496))();
  if (v62 == 2 || (v62 & 1) == 0)
  {
    v63 = 0xE500000000000000;
    v64 = 0x65736C6166;
  }

  else
  {
    v63 = 0xE400000000000000;
    v64 = 1702195828;
  }

  MEMORY[0x2743C4AD0](v64, v63);

  v65 = v82[0];
  v67 = *(v28 + 2);
  v66 = *(v28 + 3);
  if (v67 >= v66 >> 1)
  {
    v28 = sub_2721FFBF8((v66 > 1), v67 + 1, 1, v28);
  }

  *(v28 + 2) = v67 + 1;
  *&v28[16 * v67 + 32] = v65;
  strcpy(v82, "startFrame: ");
  BYTE13(v82[0]) = 0;
  HIWORD(v82[0]) = -5120;
  v81 = (*(*v1 + 424))();
  v68 = sub_27237862C();
  MEMORY[0x2743C4AD0](v68);

  v69 = v82[0];
  v71 = *(v28 + 2);
  v70 = *(v28 + 3);
  if (v71 >= v70 >> 1)
  {
    v28 = sub_2721FFBF8((v70 > 1), v71 + 1, 1, v28);
  }

  *(v28 + 2) = v71 + 1;
  *&v28[16 * v71 + 32] = v69;
  *&v82[0] = 0x656D617246646E65;
  *(&v82[0] + 1) = 0xEA0000000000203ALL;
  v81 = (*(*v1 + 448))();
  v72 = sub_27237862C();
  MEMORY[0x2743C4AD0](v72);

  v73 = v82[0];
  v75 = *(v28 + 2);
  v74 = *(v28 + 3);
  if (v75 >= v74 >> 1)
  {
    v28 = sub_2721FFBF8((v74 > 1), v75 + 1, 1, v28);
  }

  *(v28 + 2) = v75 + 1;
  *&v28[16 * v75 + 32] = v73;
  *&v82[0] = v28;
  v76 = sub_2723777CC();

  return v76;
}

uint64_t VAInstrumentedKeywordResult.__allocating_init(detections:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  VAInstrumentedKeywordResult.init(detections:)(a1);
  return v5;
}

char *VAInstrumentedKeywordResult.init(detections:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid;
  v4 = sub_272376E5C();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_chunk] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_count] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_intervalFromEndOfSpeech] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_startFrame] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_endFrame] = 0;
  v5 = &v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassResult];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_mismatch] = 2;
  v6 = &v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassNBest];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassDuration];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassKeywordMatched];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = a1;
  return v1;
}

uint64_t sub_27232837C()
{
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid, &qword_280881D10, &qword_2723857A0);
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassResult + 8);

  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassNBest + 8);

  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassKeywordMatched + 8);
}

uint64_t VAInstrumentedKeywordResult.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid, &qword_280881D10, &qword_2723857A0);
  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassResult + 8);

  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassNBest + 8);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassKeywordMatched + 8);

  return v0;
}

uint64_t VAInstrumentedKeywordResult.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid;

  sub_2721F40F0(v0 + v3, &qword_280881D10, &qword_2723857A0);
  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassResult + 8);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassNBest + 8);

  v6 = *(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassKeywordMatched + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_272328558(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_272328F1C(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_27237861C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 112;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 16) >= *(v12 + 4))
          {
            break;
          }

          v13 = v12 - 80;
          v24 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v27 = *(v12 + 3);
          v28 = v16;
          v25 = v14;
          v26 = v15;
          v17 = *(v12 - 1);
          *(v12 + 3) = *(v12 - 2);
          *(v12 + 4) = v17;
          v18 = *(v12 - 3);
          *(v12 + 1) = *(v12 - 4);
          *(v12 + 2) = v18;
          *v12 = *(v12 - 5);
          *v13 = v24;
          v19 = v28;
          v20 = v25;
          v21 = v26;
          *(v13 + 3) = v27;
          *(v13 + 4) = v19;
          *(v13 + 1) = v20;
          *(v13 + 2) = v21;
          v12 -= 80;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 80;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_272377B5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_2723286D8(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2723286D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_272244CC4(v7);
      v7 = result;
    }

    v80 = (v7 + 16);
    v81 = *(v7 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v7 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_272328CE4((*a3 + 80 * *v82), (*a3 + 80 * *v84), (*a3 + 80 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 80 * v6 + 16);
      v10 = 80 * v8;
      v11 = *a3 + 80 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 176);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 20;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 80 * v6 - 80;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x50uLL);
            v21[2] = v94;
            v21[3] = v96;
            v21[4] = v98;
            *v21 = v90;
            v21[1] = v92;
          }

          ++v20;
          v18 -= 80;
          v10 += 80;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272244480(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 16);
    v32 = *(v7 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_272244480((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v34;
    v35 = v7 + 32;
    v36 = (v7 + 32 + 16 * v33);
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 32);
          v39 = *(v7 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = (v7 + 16 * v34);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = (v35 + 16 * v37);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = (v7 + 16 * v34);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = (v35 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = (v35 + 16 * (v37 - 1));
        v76 = *v75;
        v77 = (v35 + 16 * v37);
        v78 = v77[1];
        sub_272328CE4((*a3 + 80 * *v75), (*a3 + 80 * *v77), (*a3 + 80 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v7 + 16);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove((v35 + 16 * v37), v77 + 2, 16 * (v79 - 1 - v37));
        *(v7 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v35 + 16 * v34;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = (v7 + 16 * v34);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = (v35 + 16 * v37);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 80 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 64) >= *(v27 + 16))
    {
LABEL_29:
      ++v6;
      v24 += 80;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = (v27 - 80);
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 32);
    *(v27 + 32) = *(v27 - 48);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 16);
    v30 = *(v27 - 64);
    *v27 = *(v27 - 80);
    *(v27 + 16) = v30;
    v28[3] = v97;
    v28[4] = v99;
    v28[1] = v93;
    v28[2] = v95;
    v27 -= 80;
    *v28 = v91;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_272328CE4(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[20 * v9] <= a4)
    {
      memmove(a4, __dst, 80 * v9);
    }

    v12 = &v4[20 * v9];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 20;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 20;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 20;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[20 * v11] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v12 = &v4[20 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_20:
    v5 -= 20;
    do
    {
      v15 = v5 + 20;
      if (*(v6 - 16) < *(v12 - 16))
      {
        v17 = v6 - 20;
        if (v15 != v6)
        {
          memmove(v5, v6 - 20, 0x50uLL);
        }

        if (v12 <= v4 || (v6 -= 20, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 20);
      if (v15 != v12)
      {
        memmove(v5, v12 - 20, 0x50uLL);
      }

      v5 -= 20;
      v12 -= 20;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[20 * v18])
  {
    memmove(v6, v4, 80 * v18);
  }

  return 1;
}

char *sub_272328F30(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_272329050()
{
  v0 = sub_27237840C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_27232909C()
{
  result = qword_280882FA0;
  if (!qword_280882FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FA0);
  }

  return result;
}

unint64_t sub_27232914C()
{
  result = qword_2808910F0[0];
  if (!qword_2808910F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808910F0);
  }

  return result;
}

unint64_t sub_2723291A0()
{
  result = qword_280882FC0;
  if (!qword_280882FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FC0);
  }

  return result;
}

unint64_t sub_2723291F4()
{
  result = qword_280882FC8;
  if (!qword_280882FC8)
  {
    sub_2721F214C(&qword_280882EF0, &qword_272385650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FC8);
  }

  return result;
}

uint64_t sub_272329270(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881D10, &qword_2723857A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2723292E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881D10, &qword_2723857A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_272329350(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69746365746564 && a2 == 0xEA0000000000736ELL || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7479426F69647561 && a2 == 0xEA00000000007365 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D695474736F68 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_27237865C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_272329478()
{
  v0 = sub_27237840C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2723294C4()
{
  result = qword_280882FD8;
  if (!qword_280882FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FD8);
  }

  return result;
}

uint64_t sub_272329518(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_272329580(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    sub_2723291A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2723295EC()
{
  result = qword_280882FE8;
  if (!qword_280882FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FE8);
  }

  return result;
}

unint64_t sub_272329644()
{
  result = qword_280882FF0;
  if (!qword_280882FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FF0);
  }

  return result;
}

unint64_t sub_27232969C()
{
  result = qword_280882FF8;
  if (!qword_280882FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FF8);
  }

  return result;
}

unint64_t sub_2723296F4()
{
  result = qword_280883000;
  if (!qword_280883000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883000);
  }

  return result;
}

unint64_t sub_27232974C()
{
  result = qword_280883008;
  if (!qword_280883008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883008);
  }

  return result;
}

unint64_t sub_2723297A4()
{
  result = qword_280883010;
  if (!qword_280883010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883010);
  }

  return result;
}

__n128 sub_2723297F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_272329814(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_27232985C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VASpeechBiasOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VASpeechBiasOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for VAInstrumentedKeywordResult()
{
  result = qword_280891900;
  if (!qword_280891900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272329B90()
{
  sub_272329C7C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_272329C7C()
{
  if (!qword_280883018)
  {
    sub_272376E5C();
    v0 = sub_27237801C();
    if (!v1)
    {
      atomic_store(v0, &qword_280883018);
    }
  }
}

unint64_t sub_272329CF8()
{
  result = qword_280891A10[0];
  if (!qword_280891A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280891A10);
  }

  return result;
}

unint64_t sub_272329D50()
{
  result = qword_280891B20;
  if (!qword_280891B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280891B20);
  }

  return result;
}

unint64_t sub_272329DA8()
{
  result = qword_280891B28[0];
  if (!qword_280891B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280891B28);
  }

  return result;
}

uint64_t sub_272329DFC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272329E40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272329E90()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272329ED4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272329F24()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272329F68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272329FB8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272329FFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27232A04C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27232A090(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27232A0E0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27232A124(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27232A174()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27232A1B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27232A208()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27232A24C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27232A29C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27232A2E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27232A330()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27232A374(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_27232A3C4()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x130))();
  return v2 / (*((*v1 & *v0) + 0xA0))();
}

double sub_27232A45C()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x118))();
  return v2 / (*((*v1 & *v0) + 0xA0))();
}

id VAStrideConfiguration.__allocating_init(audioSampleRate:samplesPerEncoding:samplesPerEncodingStride:samplesPerPredictionWindow:encodingsPerVerification:featureExtractionModelInputSize:featureExtractionNumFeaturesPerSlice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v15 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v16 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = a1;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = a2;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = a3;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = a4;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = a5;
  swift_beginAccess();
  *&v14[v16] = a6;
  swift_beginAccess();
  *&v14[v15] = a7;
  v19.receiver = v14;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id VAStrideConfiguration.init(audioSampleRate:samplesPerEncoding:samplesPerEncodingStride:samplesPerPredictionWindow:encodingsPerVerification:featureExtractionModelInputSize:featureExtractionNumFeaturesPerSlice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v10 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v11 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = a1;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = a2;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = a3;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = a4;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = a5;
  swift_beginAccess();
  *&v7[v11] = a6;
  swift_beginAccess();
  *&v7[v10] = a7;
  v13.receiver = v7;
  v13.super_class = type metadata accessor for VAStrideConfiguration();
  return objc_msgSendSuper2(&v13, sel_init);
}

double sub_27232A768()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x100))();
  return v2 / (*((*v1 & *v0) + 0xA0))();
}

double sub_27232A800()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  return v2 / (*((*v1 & *v0) + 0xA0))();
}

id static VAStrideConfiguration.forFlexibleA2A()()
{
  v0 = type metadata accessor for VAStrideConfiguration();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v2 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = 16000;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = 19200;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = 3840;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = 19200;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = 1;
  swift_beginAccess();
  *&v1[v3] = 176;
  swift_beginAccess();
  *&v1[v2] = 40;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

id static VAStrideConfiguration.forFixedA2T(modelConfig:)(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0xD0))();
  v4 = (*((*v2 & *a1) + 0xE8))();
  v5 = type metadata accessor for VAStrideConfiguration();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v7 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v8 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = 16000;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = 400;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = 160;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = v3;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = 1;
  swift_beginAccess();
  *&v6[v8] = v4;
  swift_beginAccess();
  *&v6[v7] = 40;
  v10.receiver = v6;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, sel_init);
}

id static VAStrideConfiguration.forTasrConfig(tasrConfig:)()
{
  v0 = type metadata accessor for VAStrideConfiguration();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v2 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = 16000;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = 400;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = 160;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = 32000;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = 1;
  swift_beginAccess();
  *&v1[v3] = 176;
  swift_beginAccess();
  *&v1[v2] = 80;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_27232ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VAStrideConfiguration();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v10 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v11 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = 16000;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = a1;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = 160;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = a2;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = a3;
  swift_beginAccess();
  *&v9[v11] = a4;
  swift_beginAccess();
  *&v9[v10] = 40;
  v13.receiver = v9;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

id VAStrideConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_27232AEC4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000024;
    v6 = 0xD00000000000001FLL;
    if (a1 == 8)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000024;
    if (a1 == 5)
    {
      v7 = 0xD00000000000001ELL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D61536F69647561;
    v2 = 0xD000000000000018;
    v3 = 0xD00000000000001ALL;
    if (a1 == 3)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_27232B028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27232BD60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27232B050(uint64_t a1)
{
  v2 = sub_27232B590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27232B08C(uint64_t a1)
{
  v2 = sub_27232B590();

  return MEMORY[0x2821FE720](a1, v2);
}

id VAStrideConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAStrideConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27232B0FC(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280883070, &qword_272385CE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27232B590();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(v11);
  v23[15] = 0;
  v13 = sub_2723785CC();
  if (!v2)
  {
    (*((*v12 & *v3) + 0xB8))(v13);
    v23[14] = 1;
    v14 = sub_2723785CC();
    (*((*v12 & *v3) + 0xD0))(v14);
    v23[13] = 2;
    v15 = sub_2723785CC();
    (*((*v12 & *v3) + 0xE8))(v15);
    v23[12] = 3;
    v16 = sub_2723785CC();
    (*((*v12 & *v3) + 0x100))(v16);
    v23[11] = 4;
    v17 = sub_2723785CC();
    (*((*v12 & *v3) + 0x118))(v17);
    v23[10] = 5;
    v18 = sub_2723785CC();
    (*((*v12 & *v3) + 0x130))(v18);
    v23[9] = 6;
    v19 = sub_2723785CC();
    (*((*v12 & *v3) + 0x148))(v19);
    v23[8] = 7;
    v20 = sub_2723785CC();
    (*((*v12 & *v3) + 0x160))(v20);
    v23[7] = 8;
    v21 = sub_2723785CC();
    (*((*v12 & *v3) + 0x178))(v21);
    v23[6] = 9;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_27232B590()
{
  result = qword_280891BB0[0];
  if (!qword_280891BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280891BB0);
  }

  return result;
}

void *VAStrideConfiguration.init(from:)(uint64_t *a1)
{
  v34 = sub_2721F065C(&qword_280883078, &qword_272385CE8);
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - v4;
  v31 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  v6 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v7 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  v8 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v9 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  v43 = v1;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  v10 = a1[3];
  v11 = a1[4];
  v36 = a1;
  v12 = sub_27220300C(a1, v10);
  sub_27232B590();
  v33 = v5;
  v13 = v35;
  sub_2723787AC();
  if (v13)
  {
    sub_2722039C8(v36);
    type metadata accessor for VAStrideConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v31;
    v35 = v7;
    v30 = v8;
    v29 = v9;
    v15 = v32;
    v42 = 0;
    v16 = sub_2723784EC();
    v18 = v43;
    *&v43[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = v16;
    v42 = 1;
    *&v18[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = sub_2723784EC();
    v42 = 2;
    *&v18[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = sub_2723784EC();
    v42 = 3;
    *&v18[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = sub_2723784EC();
    v42 = 4;
    *&v18[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = sub_2723784EC();
    v42 = 5;
    v19 = sub_2723784EC();
    swift_beginAccess();
    *&v18[v14] = v19;
    v41 = 6;
    v20 = sub_2723784EC();
    swift_beginAccess();
    *&v18[v6] = v20;
    v40 = 7;
    v21 = sub_2723784EC();
    v22 = v35;
    swift_beginAccess();
    *&v18[v22] = v21;
    v39 = 8;
    v23 = sub_2723784EC();
    v24 = v30;
    swift_beginAccess();
    *&v18[v24] = v23;
    v38 = 9;
    v25 = sub_2723784EC();
    v26 = v29;
    v27 = v43;
    swift_beginAccess();
    *&v27[v26] = v25;
    v28 = type metadata accessor for VAStrideConfiguration();
    v37.receiver = v27;
    v37.super_class = v28;
    v12 = objc_msgSendSuper2(&v37, sel_init);
    (*(v15 + 8))(v33, v34);
    sub_2722039C8(v36);
  }

  return v12;
}

uint64_t sub_27232BA94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 448))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_27232BC5C()
{
  result = qword_280891DC0[0];
  if (!qword_280891DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280891DC0);
  }

  return result;
}

unint64_t sub_27232BCB4()
{
  result = qword_280891ED0;
  if (!qword_280891ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280891ED0);
  }

  return result;
}

unint64_t sub_27232BD0C()
{
  result = qword_280891ED8[0];
  if (!qword_280891ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280891ED8);
  }

  return result;
}

uint64_t sub_27232BD60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D61536F69647561 && a2 == 0xEF65746152656C70;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002723906B0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002723906D0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002723906F0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000027238F360 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000272390710 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000272390730 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000272390760 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000272390790 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000002723907B0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void *sub_27232C0A4(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  result[3] = a2;
  result[4] = v5;
  result[2] = a1;
  return result;
}

uint64_t sub_27232C0F0(uint64_t a1)
{
  v3 = type metadata accessor for VASingleEnrollmentData();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_272204F54(a1, v7);
  v8 = (*(*v1 + 136))(v16);
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_27227B890(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_27227B890(v13 > 1, v14 + 1, 1, v11);
    *v10 = v11;
  }

  v11[2] = v14 + 1;
  sub_27227BA68(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14);
  return v8(v16, 0);
}

uint64_t sub_27232C284()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_27232C2D0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12VoiceActions16AVSVerifierModel_resampleDuration] = *(a1 + 32);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_27232C324(uint64_t a1, uint64_t a2)
{
  v114 = sub_27237728C();
  v5 = *(v114 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for VASingleEnrollmentData();
  v108 = *(v89 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v89);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = 0;
  v118 = 0xE000000000000000;
  v111 = 0xE000000000000000;
  v11 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  v12 = (*MEMORY[0x277D85000] & *v2) + 112;
  v104 = *(v2 + OBJC_IVAR____TtC12VoiceActions16AVSVerifierModel_resampleDuration);
  v101 = v2;
  v103 = v11;
  v102 = v12;
  v105 = (v11)(a1);
  v13 = *(a2 + 64);
  v92 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v91 = (v14 + 63) >> 6;
  v100 = (v5 + 16);
  v99 = (v5 + 8);
  v90 = a2;

  v17 = 0;
  v98 = 0;
  v18 = MEMORY[0x277D84F98];
  v19 = -99999.0;
  *&v20 = 134218242;
  v96 = v20;
  while (1)
  {
    if (!v16)
    {
      do
      {
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_51;
        }

        if (v21 >= v91)
        {

          return v18;
        }

        ++v17;
      }

      while (!*(v92 + 8 * v21));
      v17 = v21;
      v16 = *(v92 + 8 * v21);
    }

    v95 = v16;
    v94 = v17;
    v22 = __clz(__rbit64(v16)) | (v17 << 6);
    v23 = (*(v90 + 48) + 16 * v22);
    v24 = *v23;
    v25 = *(*(v90 + 56) + 8 * v22);
    v26 = *(*v25 + 120);
    v115 = v23[1];

    v93 = v25;
    v28 = v26(v27);
    v109 = *(v28 + 16);
    v110 = v28;
    if (v109)
    {
      break;
    }

LABEL_4:
    v16 = (v95 - 1) & v95;

    v17 = v94;
  }

  v29 = *(v89 + 20);
  v106 = v110 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
  v107 = v29;
  swift_beginAccess();
  v30 = 0;
  v97 = v24;
  while (v30 < *(v110 + 16))
  {
    sub_272204F54(v106 + *(v108 + 72) * v30, v10);
    v31 = *&v10[v107];

    sub_272331740(v10, type metadata accessor for VASingleEnrollmentData);
    v32 = v103(v31, v104);

    sub_272305464(v105, v32);
    v34 = -v33;
    if (v18[2] && (, sub_27220038C(v24, v115), v36 = v35, , (v36 & 1) != 0))
    {
      if (!v18[2])
      {
        goto LABEL_53;
      }

      v37 = v30;
      v38 = v115;
      v39 = sub_27220038C(v24, v115);
      v40 = v24;
      v41 = v38;
      v42 = v39;
      LOBYTE(v38) = v43;

      if ((v38 & 1) == 0)
      {
        goto LABEL_54;
      }

      v44 = v18[7];
      if (*(v44 + 4 * v42) < v34)
      {
        v45 = v34;
      }

      else
      {
        v45 = *(v44 + 4 * v42);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v18;
      v48 = sub_27220038C(v40, v41);
      v49 = v18[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_55;
      }

      v52 = v47;
      if (v18[3] >= v51)
      {
        v24 = v97;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_272301090();
        }
      }

      else
      {
        sub_272300664(v51, isUniquelyReferenced_nonNull_native);
        v24 = v97;
        v53 = sub_27220038C(v97, v115);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_57;
        }

        v48 = v53;
      }

      v81 = v116;
      v112 = v116;
      if (v52)
      {
        *(v116[7] + 4 * v48) = v45;
      }

      else
      {
        v116[(v48 >> 6) + 8] |= 1 << v48;
        v82 = (v81[6] + 16 * v48);
        v83 = v115;
        *v82 = v24;
        v82[1] = v83;
        *(v81[7] + 4 * v48) = v45;
        v84 = v81[2];
        v60 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v60)
        {
          goto LABEL_56;
        }

        v81[2] = v85;
      }

      v30 = v37;
      if (v19 < v34)
      {
        goto LABEL_34;
      }
    }

    else
    {

      v55 = swift_isUniquelyReferenced_nonNull_native();
      v116 = v18;
      v56 = sub_27220038C(v24, v115);
      v58 = v18[2];
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_50;
      }

      v62 = v57;
      if (v18[3] >= v61)
      {
        if ((v55 & 1) == 0)
        {
          v86 = v56;
          sub_272301090();
          v56 = v86;
        }
      }

      else
      {
        sub_272300664(v61, v55);
        v56 = sub_27220038C(v24, v115);
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_57;
        }
      }

      v64 = v116;
      v112 = v116;
      if ((v62 & 1) == 0)
      {
        v116[(v56 >> 6) + 8] |= 1 << v56;
        v77 = (v64[6] + 16 * v56);
        v78 = v115;
        *v77 = v24;
        v77[1] = v78;
        *(v64[7] + 4 * v56) = v34;
        v79 = v64[2];
        v60 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v60)
        {
          goto LABEL_52;
        }

        v64[2] = v80;

        if (v19 >= v34)
        {
          goto LABEL_35;
        }

LABEL_34:
        v65 = v115;
        v117 = v24;
        v118 = v115;

        v19 = v34;
        v111 = v65;
        v98 = v24;
        goto LABEL_35;
      }

      *(v116[7] + 4 * v56) = v34;
      if (v19 < v34)
      {
        goto LABEL_34;
      }
    }

LABEL_35:
    v66 = sub_2722C389C();
    (*v100)(v113, v66, v114);
    v67 = sub_27237725C();
    v68 = sub_272377E7C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v116 = v70;
      *v69 = v96;
      *(v69 + 4) = v19;
      *(v69 + 12) = 2080;
      v71 = v111;

      v72 = sub_2721FFD04(v98, v71, &v116);

      *(v69 + 14) = v72;
      v73 = v30;
      v75 = v113;
      v74 = v114;
      v24 = v97;
      _os_log_impl(&dword_2721E4000, v67, v68, "With remap, lowest score: %f for %s", v69, 0x16u);
      sub_2722039C8(v70);
      MEMORY[0x2743C69C0](v70, -1, -1);
      MEMORY[0x2743C69C0](v69, -1, -1);

      v76 = v74;
      v30 = v73;
      (*v99)(v75, v76);
    }

    else
    {

      (*v99)(v113, v114);
    }

    v18 = v112;
    if (v109 == ++v30)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
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
LABEL_57:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

id AVSVerifierModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AVSVerifierModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSVerifierModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_27232CD10@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 80) = v3;
  v4 = *(v1 + 128);
  *(a1 + 96) = *(v1 + 112);
  *(a1 + 112) = v4;
  v5 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v5;
  result = *(v1 + 48);
  v7 = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

__n128 sub_27232CD6C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v3;
  v4 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v4;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 48) = result;
  *(v1 + 64) = v7;
  return result;
}

id sub_27232CDC8()
{
  swift_beginAccess();
  v1 = *(v0 + 144);

  return v1;
}

void sub_27232CE0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_27232CE54()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
}

uint64_t sub_27232CE8C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t sub_27232CED4()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
}

uint64_t sub_27232CF0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  *(v1 + 168) = a1;
}

uint64_t sub_27232CF88(float a1)
{
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

uint64_t sub_27232CFFC(float a1)
{
  result = swift_beginAccess();
  *(v1 + 188) = a1;
  return result;
}

uint64_t sub_27232D0C0(float a1)
{
  result = swift_beginAccess();
  *(v1 + 192) = a1;
  return result;
}

uint64_t sub_27232D134(float a1)
{
  result = swift_beginAccess();
  *(v1 + 196) = a1;
  return result;
}

uint64_t sub_27232D1F8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 200) = a1;
  return result;
}

uint64_t sub_27232D26C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 208) = a1;
  return result;
}

uint64_t sub_27232D2E0(float a1)
{
  result = swift_beginAccess();
  *(v1 + 212) = a1;
  return result;
}

uint64_t sub_27232D370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  return result;
}

uint64_t sub_27232D3C4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 576);

  return v3(v4);
}

uint64_t sub_27232D420()
{
  swift_beginAccess();
  v1 = *(v0 + 216);
}

uint64_t sub_27232D458(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 216);
  *(v1 + 216) = a1;
}

uint64_t sub_27232D5C8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 224) = a1;
  return result;
}

uint64_t sub_27232D608@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 640))();
  *a2 = result;
  return result;
}

uint64_t sub_27232D6E0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 232) = a1;
  return result;
}

uint64_t sub_27232D720@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 664))();
  *a2 = result;
  return result;
}

uint64_t sub_27232D774(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 672);

  return v3(v4);
}

uint64_t sub_27232D7D0()
{
  swift_beginAccess();
  v1 = *(v0 + 240);
}

uint64_t sub_27232D808(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 240);
  *(v1 + 240) = a1;
}

uint64_t VAAVSVerifierModel.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v42 = sub_27237728C();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v42);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VASignpostInterval();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 4);
  v14 = *(a1 + 8);
  v56 = *(a1 + 16);
  v15 = *(a1 + 32);
  v16 = *(a1 + 88);
  v52 = *(a1 + 72);
  v53 = v16;
  v54 = *(a1 + 104);
  v55 = *(a1 + 120);
  v17 = *(a1 + 56);
  v50 = *(a1 + 40);
  v51 = v17;
  v18 = MEMORY[0x277D84F98];
  *(v2 + 160) = 0;
  *(v2 + 168) = v18;
  *(v2 + 176) = v18;
  *(v2 + 184) = xmmword_272385E90;
  *(v2 + 200) = 150;
  __asm { FMOV            V0.2S, #-15.0 }

  *(v2 + 208) = _D0;
  v24 = MEMORY[0x277D84F90];
  *(v2 + 216) = MEMORY[0x277D84F90];

  *(v2 + 240) = sub_27229D258(v24);
  type metadata accessor for VALog();
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, 0xD000000000000017, 0x80000002723907F0, v11);
  *(v2 + 32) = v56;
  v25 = v53;
  *(v2 + 88) = v52;
  *(v2 + 104) = v25;
  *(v2 + 120) = v54;
  v26 = v51;
  *(v2 + 56) = v50;
  *(v2 + 16) = v12;
  *(v2 + 20) = v13;
  v43 = v14;
  *(v2 + 24) = v14;
  *(v2 + 48) = v15;
  *(v2 + 136) = v55;
  *(v2 + 72) = v26;
  v27 = type metadata accessor for AVSVerifierModel();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR____TtC12VoiceActions16AVSVerifierModel_resampleDuration] = v15;
  v49.receiver = v28;
  v49.super_class = v27;
  *(v2 + 144) = objc_msgSendSuper2(&v49, sel_init);
  swift_beginAccess();
  sub_27224251C(*(v2 + 56), *(v2 + 64), *(v2 + 80), *(v2 + 128), &v44, *(v2 + 72));
  v29 = v44;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  type metadata accessor for AVSEndpointer();
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v48 = v33;
  v34 = v42;
  AVSEndpointer.__allocating_init(config:)(&v44);
  *(v2 + 152) = v35;
  v36 = sub_2722C389C();
  (*(v4 + 16))(v7, v36, v34);

  v37 = sub_27237725C();
  v38 = sub_272377E7C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    v40 = *(v2 + 72);

    *(v39 + 4) = v40;
    _os_log_impl(&dword_2721E4000, v37, v38, "AVS streaming endpointer has threshold %f", v39, 0xCu);
    MEMORY[0x2743C69C0](v39, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v7, v34);
  *(v2 + 224) = v12;
  *(v2 + 228) = v12 * 1.5;
  *(v2 + 232) = v43;
  VASignpostInterval.end(_:)(0);
  sub_272331740(v11, type metadata accessor for VASignpostInterval);
  return sub_2722591B0();
}

uint64_t sub_27232DCB4()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 160);

  v3 = *(v0 + 168);

  v4 = *(v0 + 176);

  v5 = *(v0 + 216);

  v6 = *(v0 + 240);
}

uint64_t VAAVSVerifierModel.deinit()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2722C389C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27237725C();
  v9 = sub_272377EAC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2721E4000, v8, v9, "deInit VAAVSVerifierModel", v10, 2u);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  v11 = MEMORY[0x277D84F90];
  if (v1[20])
  {
    v1[20] = MEMORY[0x277D84F90];

    v12 = v1[20];
  }

  v1[20] = 0;
  swift_endAccess();

  swift_beginAccess();
  v13 = v1[21];
  v14 = MEMORY[0x277D84F98];
  v1[21] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v15 = v1[22];
  v1[22] = v14;

  swift_beginAccess();
  v16 = v1[27];
  v1[27] = v11;

  swift_beginAccess();
  v17 = v1[30];
  v1[30] = v14;

  v18 = VAVerifierModel.deinit();

  v19 = *(v18 + 152);

  v20 = *(v18 + 160);

  v21 = *(v18 + 168);

  v22 = *(v18 + 176);

  v23 = *(v18 + 216);

  v24 = *(v18 + 240);

  return v18;
}

uint64_t VAAVSVerifierModel.__deallocating_deinit()
{
  VAAVSVerifierModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_27232DFB8()
{
  v1 = *((*(*v0 + 352))() + 16);

  return v1;
}

uint64_t sub_27232E00C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = a1[3];
  v6 = a1[4];
  type metadata accessor for AVSEndpointer();
  v10[0] = v2;
  v10[1] = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v7 = AVSEndpointer.__allocating_init(config:)(v10);
  v8 = *(*v1 + 312);

  return v8(v7);
}

void *sub_27232E0BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_26:
  v17 = a1 & 0xFFFFFFFFFFFFFF8;
  v2 = sub_2723783AC();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  do
  {
    for (i = v3; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2743C5370](i, a1);
        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (i >= *(v17 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(a1 + 8 * i + 32);

        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      v7 = *(*(v6 + 16) + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2723310B8(0, *(v4 + 2) + 1, 1, v4);
      }

      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      if (v9 >= v8 >> 1)
      {
        v4 = sub_2723310B8((v8 > 1), v9 + 1, 1, v4);
      }

      *(v4 + 2) = v9 + 1;
      v4[v9 + 32] = v7 > 0;
      if (v7 >= 1)
      {
        break;
      }

      if (v3 == v2)
      {
        return v16;
      }
    }

    v10 = *(v6 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_272241E04(0, v16[2] + 1, 1, v16);
    }

    v12 = v16[2];
    v11 = v16[3];
    if (v12 >= v11 >> 1)
    {
      v16 = sub_272241E04((v11 > 1), v12 + 1, 1, v16);
    }

    v16[2] = v12 + 1;
    v16[v12 + 4] = v10;
    v13 = *(v6 + 24);

    sub_272207944(v14);
  }

  while (v3 != v2);
  return v16;
}

void sub_27232E2FC(unint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v167 = a2;
  v7 = 0xD00000000000001ELL;
  v166 = sub_27237728C();
  v8 = *(v166 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v166);
  v12 = (&v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v136 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v136 - v17;
  v19 = *(*v2 + 352);
  v165 = *v2 + 352;
  v164 = v19;
  v20 = *((v19)(v16) + 16);

  if (!v20)
  {
    v63 = "load AVS verifier model";
    v7 = 0xD000000000000029;
    goto LABEL_21;
  }

  v161 = v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2743C5370](0, a1);
    goto LABEL_5;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(a1 + 32);
    swift_unknownObjectRetain();
LABEL_5:
    type metadata accessor for EncoderPredictionAVS();
    v22 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v22)
    {
      v157 = v15;
      sub_27232F294(a1);
      v23 = (*(*v5 + 712))();
      v25 = v24;
      v27 = v26;

      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = *(v27 + v28 + 31);

        if ((v29 & 1) != 0 && *(v23 + 16))
        {
          v31 = (*v5 + 304);
          v163 = *v31;
          v162 = v31;
          v32 = v163(v30);
          v33 = (*(*v32 + 440))(v25);
          v35 = v34;

          if (v33)
          {
            v36 = *(v35 + 16);
            if (v36)
            {
              v37 = *(v35 + 8 * v36 + 24);

              if ((v37 & 0x8000000000000000) == 0)
              {
                v39 = *(v25 + 16);
                if (v39 >= v37)
                {
                  if (v39 != v37)
                  {
                    sub_272241D34(v25, v25 + 32, 0, (2 * v37) | 1);
                    v41 = v40;

                    v25 = v41;
                  }

                  v42 = v163;
                  v43 = v163(v38);
                  v44 = (*(*v43 + 216))(v43);

                  v46 = v42(v45);
                  v47 = (*(*v46 + 240))(v46);

                  v48 = sub_2722436FC();
                  v49 = sub_272243704();
                  v50 = sub_272243714();
                  v51 = sub_27224371C(v25, v47, v48, v50, v44, v49);
                  if (!*(v51 + 2) || !*(v52 + 16))
                  {

                    goto LABEL_25;
                  }

                  v53 = sub_272243EC0(v51, v52, 80);
                  v159 = v54;

                  v55 = sub_2722C389C();
                  v56 = v8[2];
                  v151 = v55;
                  v152 = v8 + 2;
                  v150 = v56;
                  (v56)(v18);

                  v57 = sub_27237725C();
                  v58 = sub_272377E7C();
                  if (os_log_type_enabled(v57, v58))
                  {
                    v59 = swift_slowAlloc();
                    v160 = v57;
                    v60 = v59;
                    *v59 = 134217984;
                    *(v59 + 4) = v53[2];

                    v61 = v58;
                    v62 = v160;
                    _os_log_impl(&dword_2721E4000, v160, v61, "[n_segs] (clusterWindows+getMetaClusters): %ld", v60, 0xCu);
                    MEMORY[0x2743C69C0](v60, -1, -1);
                  }

                  else
                  {
                  }

                  v160 = v53;
                  v68 = v8[1];
                  v153 = v8 + 1;
                  v149 = v68;
                  v68(v18, v166);
                  isa = v159[2].isa;
                  if (isa)
                  {
                    v70 = v159[isa + 3].isa;

                    v72 = *v163(v71);
                    v73 = (*(v72 + 312))();

                    v74 = v70 + v73;
                    if (!__OFADD__(v70, v73))
                    {
                      v12 = v23;
                      v75 = *(v25 + 16);

                      if (v75 >= v74)
                      {
                        v78 = v74;
                      }

                      else
                      {
                        v78 = v75;
                      }

                      v79 = v160;
                      v80 = v160[2].isa;
                      if (v80)
                      {
                        v140 = v74;
                        v147 = v12;
                        LODWORD(v155) = 0;
                        v81 = 0;
                        v159 = v160 + 4;
                        v138 = (2 * v78) | 1;
                        v139 = v80 - 1;
                        v156 = MEMORY[0x277D84F90];
                        *&v77 = 134218754;
                        v142 = v77;
                        v158 = v80;
LABEL_35:
                        while (v81 < v79[2].isa)
                        {
                          v82 = v159[v81].isa;
                          v83 = v78 - v82;
                          if (__OFSUB__(v78, v82))
                          {
                            goto LABEL_81;
                          }

                          v84 = v163(v76);
                          v12 = (*(*v84 + 192))(v84);

                          if (v12 < v83)
                          {
                            v76 = (*(*v5 + 256))(v169, v76);
                            if (v83 < *(&v170 + 1))
                            {
                              v85 = v163(v76);
                              v86 = (*(*v85 + 288))(v85);

                              v87 = v82 - v86;
                              if (__OFSUB__(v82, v86))
                              {
                                goto LABEL_92;
                              }

                              v148 = v87 & ~(v87 >> 63);
                              if (v78 < v148)
                              {
                                goto LABEL_93;
                              }

                              v88 = v147[2];
                              if (v87 > v88 || v88 < v78)
                              {
                                goto LABEL_94;
                              }

                              if (v140 < 0)
                              {
                                goto LABEL_95;
                              }

                              if (v88 == v78 - v148)
                              {
                                v90 = v147;
                              }

                              else
                              {
                                sub_272202180(v147, (v147 + 4), v148, v138);
                                v90 = v128;
                              }

                              if (v155)
                              {
                              }

                              v91 = *(*v5 + 280);

                              v12 = v91(v92);
                              v93 = v164();
                              v94 = (*((*MEMORY[0x277D85000] & *v12) + 0x68))(v90, v93);
                              if (!v4)
                              {
                                v136 = (v81 + 1);
                                v145 = v94;

                                v137 = v90;

                                v95 = v145;
                                v96 = 0;
                                v97 = v145 + 64;
                                v98 = 1 << *(v145 + 32);
                                if (v98 < 64)
                                {
                                  v99 = ~(-1 << v98);
                                }

                                else
                                {
                                  v99 = -1;
                                }

                                v100 = v99 & *(v145 + 64);
                                v101 = (v98 + 63) >> 6;
                                v144 = v145 + 64;
                                v143 = v101;
                                while (v100)
                                {
                                  v102 = v96;
LABEL_63:
                                  v103 = __clz(__rbit64(v100)) | (v102 << 6);
                                  v104 = (*(v95 + 48) + 16 * v103);
                                  v106 = *v104;
                                  v105 = v104[1];
                                  v107 = *(*(v95 + 56) + 4 * v103);
                                  swift_bridgeObjectRetain_n();
                                  v108 = sub_272241A18();
                                  v109 = sub_272241A18();
                                  LODWORD(v154) = sub_2721F7EE4();
                                  v110 = sub_2721F7EE4();
                                  v111 = sub_27222CD4C();
                                  v112 = v154 & 1;
                                  v154 = v106;
                                  sub_27232409C(v106, v105, v148, v78, v112, v110 & 1, v111 & 1, 0, v169, v107, v108, v109, 0);
                                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                  v155 = v105;
                                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                                  {
                                    v156 = sub_272205014(0, *(v156 + 2) + 1, 1, v156);
                                  }

                                  v115 = *(v156 + 2);
                                  v114 = *(v156 + 3);
                                  if (v115 >= v114 >> 1)
                                  {
                                    v156 = sub_272205014((v114 > 1), v115 + 1, 1, v156);
                                  }

                                  v100 &= v100 - 1;
                                  v116 = v156;
                                  *(v156 + 2) = v115 + 1;
                                  v117 = &v116[80 * v115];
                                  *(v117 + 2) = v169[0];
                                  v118 = v169[1];
                                  v119 = v169[2];
                                  v120 = v170;
                                  *(v117 + 5) = v169[3];
                                  *(v117 + 6) = v120;
                                  *(v117 + 3) = v118;
                                  *(v117 + 4) = v119;
                                  v150(v157, v151, v166);
                                  v12 = v155;

                                  v121 = sub_27237725C();
                                  v122 = sub_272377E7C();

                                  v146 = v122;
                                  v123 = v122;
                                  v124 = v121;
                                  if (os_log_type_enabled(v121, v123))
                                  {
                                    v125 = v12;
                                    v12 = swift_slowAlloc();
                                    v141 = swift_slowAlloc();
                                    v168 = v141;
                                    *v12 = v142;
                                    *(v12 + 4) = v148;
                                    *(v12 + 6) = 2048;
                                    *(v12 + 14) = v78;
                                    *(v12 + 11) = 2080;
                                    v154 = sub_2721FFD04(v154, v125, &v168);

                                    v12[3] = v154;
                                    *(v12 + 16) = 2048;
                                    *(v12 + 34) = v107;
                                    _os_log_impl(&dword_2721E4000, v124, v146, "\t[scores][%ld][%ld]: %s: %f", v12, 0x2Au);
                                    v126 = v141;
                                    sub_2722039C8(v141);
                                    MEMORY[0x2743C69C0](v126, -1, -1);
                                    MEMORY[0x2743C69C0](v12, -1, -1);
                                  }

                                  else
                                  {
                                  }

                                  v149(v157, v166);
                                  v96 = v102;
                                  v95 = v145;
                                  v97 = v144;
                                  v101 = v143;
                                }

                                while (1)
                                {
                                  v102 = v96 + 1;
                                  if (__OFADD__(v96, 1))
                                  {
                                    goto LABEL_86;
                                  }

                                  if (v102 >= v101)
                                  {

                                    LODWORD(v155) = 1;
                                    v76 = v137;
                                    v154 = v137;
                                    v127 = v139 == v81;
                                    v79 = v160;
                                    v81 = v136;
                                    if (!v127)
                                    {
                                      goto LABEL_35;
                                    }

                                    v67 = v167;
                                    goto LABEL_75;
                                  }

                                  v100 = *(v97 + 8 * v102);
                                  ++v96;
                                  if (v100)
                                  {
                                    goto LABEL_63;
                                  }
                                }
                              }

                              goto LABEL_82;
                            }
                          }

                          v81 = (v81 + 1);
                          v79 = v160;
                          if (v158 == v81)
                          {

                            v67 = v167;
                            if (v155)
                            {
                            }

LABEL_75:
                            v66 = v156;
                            goto LABEL_76;
                          }
                        }

                        goto LABEL_80;
                      }

LABEL_25:

                      v66 = MEMORY[0x277D84F90];
                      v67 = v167;
LABEL_76:
                      type metadata accessor for VAKeywordResult();
                      v129 = VAKeywordResult.__allocating_init(detections:)(v66);
                      sub_2722E45C4(v129, v67);
                      return;
                    }

LABEL_91:
                    __break(1u);
LABEL_92:
                    __break(1u);
LABEL_93:
                    __break(1u);
LABEL_94:
                    __break(1u);
LABEL_95:
                    __break(1u);
                    return;
                  }

LABEL_90:
                  __break(1u);
                  goto LABEL_91;
                }

LABEL_89:
                __break(1u);
                goto LABEL_90;
              }

LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }
        }

        static VAVerifierModelOutput.none.getter(v167);
        return;
      }

      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v63 = "Invalid keyword, missing pron";
LABEL_21:
    v64 = v63 | 0x8000000000000000;
    sub_2722032B4();
    swift_allocError();
    *v65 = v7;
    v65[1] = v64;
    swift_willThrow();
    return;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:

  v130 = v161;
  v131 = v166;
  v150(v161, v151, v166);
  v132 = v130;
  v133 = sub_27237725C();
  v134 = sub_272377E8C();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    *v135 = 0;
    _os_log_impl(&dword_2721E4000, v133, v134, "Cannot generate prediction from AVS VerifierModel.", v135, 2u);
    MEMORY[0x2743C69C0](v135, -1, -1);
  }

  v149(v132, v131);
  static VAVerifierModelOutput.none.getter(v167);
}

uint64_t sub_27232F294(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_27237867C();
    type metadata accessor for EncoderPredictionAVS();
    if (swift_dynamicCastMetatype())
    {
      return v1;
    }

    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return v1;
    }

    v5 = 0;
    while (v5 < v4)
    {
      v6 = *(v2 + 32 + 8 * v5);
      swift_unknownObjectRetain();
      v7 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v7)
      {
        return v2 | 1;
      }

      ++v5;
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 == v4)
      {
        return v1;
      }
    }

    __break(1u);
  }

  type metadata accessor for EncoderPredictionAVS();

  v8 = sub_27237838C();

  return v8;
}

uint64_t VAAVSVerifierModel.makeRuntimeParameters()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_27237728C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v8 = VARuntimeParameters.init()(a1);
  result = (*(*v1 + 664))(v8);
  v11 = 0;
  v13 = result + 64;
  v12 = *(result + 64);
  v51 = result;
  v14 = 1 << *(result + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v47 = (v4 + 8);
  v48 = (v4 + 16);
  v18 = MEMORY[0x277D84F90];
  *&v10 = 136315394;
  v45 = v10;
  v49 = v17;
  v50 = result + 64;
  v46 = v3;
  while (v16)
  {
    v19 = v11;
LABEL_11:
    v20 = __clz(__rbit64(v16)) | (v19 << 6);
    v21 = (*(v51 + 48) + 16 * v20);
    v22 = v21[1];
    v23 = *(*(v51 + 56) + 4 * v20);
    v53 = *v21;
    v54 = v22;

    MEMORY[0x2743C4AD0](58, 0xE100000000000000);
    v25 = v53;
    v24 = v54;
    v26 = sub_272377D4C();
    v28 = v27;
    v53 = v25;
    v54 = v24;

    MEMORY[0x2743C4AD0](v26, v28);

    v30 = v53;
    v29 = v54;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_2721FFBF8(0, *(v18 + 2) + 1, 1, v18);
    }

    v32 = *(v18 + 2);
    v31 = *(v18 + 3);
    if (v32 >= v31 >> 1)
    {
      v18 = sub_2721FFBF8((v31 > 1), v32 + 1, 1, v18);
    }

    v16 &= v16 - 1;
    *(v18 + 2) = v32 + 1;
    v52 = v18;
    v33 = &v18[16 * v32];
    *(v33 + 4) = v30;
    *(v33 + 5) = v29;
    v34 = sub_2722C389C();
    (*v48)(v7, v34, v3);

    v35 = sub_27237725C();
    v36 = v7;
    v37 = sub_272377E7C();

    if (os_log_type_enabled(v35, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v39;
      *v38 = v45;
      v40 = sub_2721FFD04(v30, v29, &v53);

      *(v38 + 4) = v40;
      *(v38 + 12) = 2048;
      *(v38 + 14) = v23;
      _os_log_impl(&dword_2721E4000, v35, v37, "Command %s set to %f", v38, 0x16u);
      sub_2722039C8(v39);
      v41 = v39;
      v3 = v46;
      MEMORY[0x2743C69C0](v41, -1, -1);
      MEMORY[0x2743C69C0](v38, -1, -1);
    }

    else
    {
    }

    result = (*v47)(v36, v3);
    v11 = v19;
    v7 = v36;
    v17 = v49;
    v13 = v50;
    v18 = v52;
  }

  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v42 = v44;
      v43 = *v44;

      *v42 = v18;
      return result;
    }

    v16 = *(v13 + 8 * v19);
    ++v11;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}