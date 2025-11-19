uint64_t sub_26EF87C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26EF87C90()
{
  sub_26EF9C610();
  v1 = MEMORY[0x277D84F90];
  v2 = sub_26EF9C0A0();
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  swift_unknownObjectWeakLoadStrong();
  v6 = *(v0 + 32);
  v9[0] = v1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v9[6] = v6;
  swift_unknownObjectWeakInit();
  v7 = v3;

  swift_unknownObjectRelease();
  sub_26EF87D8C();
  return sub_26EF8D684(v9);
}

uint64_t sub_26EF87D8C()
{
  sub_26EF8D6B4();
  v2 = swift_allocObject();
  sub_26EF8D708(v0, v2 + 16);
  return sub_26EF9C350();
}

uint64_t sub_26EF87E24()
{
  v1 = sub_26EF9C300();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_unknownObjectWeakLoadStrong();
  v5 = v0[6];
  v6 = v2;

  sub_26EF87F20(v1, MEMORY[0x277D84F90], v6, v3, v4, v5, v8);
  type metadata accessor for TrialDecoderImpl.KeyedContainer();
  swift_getWitnessTable();
  return sub_26EF9C690();
}

uint64_t sub_26EF87F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[6] = a6;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t sub_26EF87F70@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for TrialDecoderImpl.UnkeyedContainer;
  a1[4] = sub_26EF880C0();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 0;
  *(result + 32) = 257;
  *(result + 40) = 0;
  return result;
}

unint64_t sub_26EF87FDC@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for TrialDecoderImpl.SingleValueContainer;
  result = sub_26EF8806C();
  a1[4] = result;
  *a1 = MEMORY[0x277D84F90];
  return result;
}

unint64_t sub_26EF8806C()
{
  result = qword_2806CFE28;
  if (!qword_2806CFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CFE28);
  }

  return result;
}

unint64_t sub_26EF880C0()
{
  result = qword_2806CFE30;
  if (!qword_2806CFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CFE30);
  }

  return result;
}

BOOL sub_26EF88114(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_26EF9C8C0();
  v6 = sub_26EF9C130();

  v7 = v2[3];
  v8 = v2[4];
  v9 = sub_26EF9C130();
  v10 = [v3 levelForFactor:v6 withNamespaceName:v9];

  if (v10)
  {
  }

  return v10 != 0;
}

uint64_t sub_26EF881B4(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_26EF9C8C0();
  v6 = sub_26EF9C130();

  v7 = v2[3];
  v8 = v2[4];
  v9 = sub_26EF9C130();
  v10 = [v3 levelForFactor:v6 withNamespaceName:v9];

  if (v10)
  {
    v11 = [v10 BOOLeanValue];
  }

  else
  {
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000020, 0x800000026EFA1F40);
    v12 = *(v5 + 16);
    sub_26EF9C750();
    v11 = 0;
    sub_26EF8D8D8();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    swift_willThrow();
  }

  return v11 & 1;
}

uint64_t sub_26EF8830C(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_26EF9C8C0();
  v6 = sub_26EF9C130();

  v7 = v2[3];
  v8 = v2[4];
  v9 = sub_26EF9C130();
  v10 = [v3 levelForFactor:v6 withNamespaceName:v9];

  if (v10 && (v11 = [v10 stringValue], v10, v11))
  {
    v12 = sub_26EF9C160();

    return v12;
  }

  else
  {
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000020, 0x800000026EFA1F40);
    v14 = *(v5 + 16);
    sub_26EF9C750();
    sub_26EF8D8D8();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 0;
    return swift_willThrow();
  }
}

void sub_26EF884A4(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_26EF9C8C0();
  v6 = sub_26EF9C130();

  v7 = v2[3];
  v8 = v2[4];
  v9 = sub_26EF9C130();
  v10 = [v3 levelForFactor:v6 withNamespaceName:v9];

  if (v10)
  {
    [v10 doubleValue];
  }

  else
  {
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD00000000000001FLL, 0x800000026EFA1F20);
    v11 = *(v5 + 16);
    sub_26EF9C750();
    sub_26EF8D8D8();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0xE000000000000000;
    *(v12 + 16) = 0;
    swift_willThrow();
  }
}

void sub_26EF88608(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v49 = *(v5 - 8);
  v50 = v2;
  v6 = *(v49 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = sub_26EF9C030();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v50;
  sub_26EF884A4(a1, a2);
  if (!v17)
  {
    v48 = v9;
    v19 = v49;
    v50 = v13;
    if (fabs(v18) <= 3.40282347e38)
    {
      v46 = 0;
      v47 = v12;
      v24 = v16;
      sub_26EF9C020();
      v25 = v19;
      v26 = *(v19 + 16);
      v27 = v11;
      v28 = a1;
      v29 = v5;
      v30 = v26;
      v26(v11, v28, v5);
      v31 = sub_26EF9C010();
      v32 = sub_26EF9C370();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v45 = v24;
        v44 = v32;
        v34 = v33;
        v43 = swift_slowAlloc();
        v51 = v43;
        *v34 = 136315138;
        v35 = v48;
        v30(v48, v27, v29);
        v36 = *(v25 + 8);
        v36(v27, v29);
        v37 = *(*(a2 + 24) + 16);
        v38 = sub_26EF9C6A0();
        v40 = v39;
        v36(v35, v29);
        v41 = sub_26EF7E624(v38, v40, &v51);

        *(v34 + 4) = v41;
        _os_log_impl(&dword_26EF75000, v31, v44, "Decoded factor %s into Float so be aware of possible precision loss", v34, 0xCu);
        v42 = v43;
        sub_26EF79770(v43);
        MEMORY[0x2743859D0](v42, -1, -1);
        MEMORY[0x2743859D0](v34, -1, -1);

        (*(v50 + 8))(v45, v47);
      }

      else
      {
        (*(v25 + 8))(v27, v29);

        (*(v50 + 8))(v24, v47);
      }
    }

    else
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      v20 = *(*(a2 + 24) + 16);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000017, 0x800000026EFA1F00);
      sub_26EF9C340();
      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v21 = v51;
      v22 = v52;
      sub_26EF8D8D8();
      swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v22;
      *(v23 + 16) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_26EF88A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF88B94(a1, a2);
  v5 = v4;
  if (!v2 && (v4 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
  {
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
    v6 = *(a2 + 16);
    v7 = *(*(a2 + 24) + 16);
    sub_26EF9C750();
    MEMORY[0x2743848A0](0xD000000000000015, 0x800000026EFA1EE0);
    v8 = sub_26EF9C6A0();
    MEMORY[0x2743848A0](v8);

    MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
    sub_26EF8D8D8();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_26EF88B94(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_26EF9C8C0();
  v6 = sub_26EF9C130();

  v7 = v2[3];
  v8 = v2[4];
  v9 = sub_26EF9C130();
  v10 = [v3 levelForFactor:v6 withNamespaceName:v9];

  if (v10)
  {
    v11 = [v10 longValue];

    return v11;
  }

  else
  {
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD00000000000001ELL, 0x800000026EFA1DE0);
    v13 = *(v5 + 16);
    sub_26EF9C750();
    sub_26EF8D8D8();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_26EF88CF0(uint64_t a1, uint64_t a2)
{
  v5 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v5;
    if ((v5 + 127) >= 0xFE)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      v6 = *(a2 + 16);
      v7 = *(*(a2 + 24) + 16);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000016, 0x800000026EFA1EC0);
      v8 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v8);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0xE000000000000000;
      *(v9 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_26EF88E44(uint64_t a1, uint64_t a2)
{
  v5 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v5;
    if ((v5 + 0x7FFF) >= 0xFFFE)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      v6 = *(a2 + 16);
      v7 = *(*(a2 + 24) + 16);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000017, 0x800000026EFA1EA0);
      v8 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v8);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0xE000000000000000;
      *(v9 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_26EF88FA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v5;
    if ((v5 + 0x7FFFFFFF) >= 0xFFFFFFFE)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      v6 = *(a2 + 16);
      v7 = *(*(a2 + 24) + 16);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000017, 0x800000026EFA1E80);
      v8 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v8);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0xE000000000000000;
      *(v9 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_26EF89114(uint64_t a1, uint64_t a2)
{
  result = sub_26EF88B94(a1, a2);
  if (!v2)
  {
    if (result > 0)
    {
      __break(1u);
    }

    else
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      v5 = *(a2 + 16);
      v6 = *(*(a2 + 24) + 16);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000016, 0x800000026EFA1E60);
      v7 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v7);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      sub_26EF8D8D8();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0xE000000000000000;
      *(v8 + 16) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_26EF89264(uint64_t a1, uint64_t a2)
{
  v5 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v5;
    if (v5 >= 0xFF)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      v6 = *(a2 + 16);
      v7 = *(*(a2 + 24) + 16);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000017, 0x800000026EFA1E40);
      v8 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v8);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0xE000000000000000;
      *(v9 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

unint64_t sub_26EF893B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v5;
    if (v5 >= 0xFFFF)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      v6 = *(a2 + 16);
      v7 = *(*(a2 + 24) + 16);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000018, 0x800000026EFA1E20);
      v8 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v8);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0xE000000000000000;
      *(v9 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

unint64_t sub_26EF89508(uint64_t a1, uint64_t a2)
{
  v5 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v5;
    if (v5 >= 0xFFFFFFFF)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      v6 = *(a2 + 16);
      v7 = *(*(a2 + 24) + 16);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000018, 0x800000026EFA1E00);
      v8 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v8);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0xE000000000000000;
      *(v9 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_26EF8965C(uint64_t a1, uint64_t a2)
{
  result = sub_26EF88B94(a1, a2);
  if (!v2)
  {
    if (result < 0)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      v5 = *(a2 + 16);
      v6 = *(*(a2 + 24) + 16);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000018, 0x800000026EFA1DA0);
      v7 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v7);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      sub_26EF8D8D8();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0xE000000000000000;
      *(v8 + 16) = 0;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_26EF897A8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v110 = a2;
  v123 = *MEMORY[0x277D85DE8];
  v5 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v113 = &v101 - v7;
  v8 = sub_26EF784C0(&qword_2806CFE40, &qword_26EF9EB20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v101 - v10;
  v11 = sub_26EF9BE40();
  v108 = *(v11 - 8);
  v109 = v11;
  v12 = *(v108 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v105 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v106 = &v101 - v15;
  v16 = sub_26EF9C030();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v114 = a1;
  v111 = v22;
  v112 = v21;
  v23 = sub_26EF9C8C0();
  v25 = v24;
  v26 = *(v2 + 16);
  v27 = sub_26EF9C130();
  v28 = *(v3 + 24);
  v29 = *(v3 + 32);
  v30 = sub_26EF9C130();
  v31 = [v26 levelForFactor:v27 withNamespaceName:v30];

  if (!v31)
  {
    v121 = 0;
    v122 = 0xE000000000000000;
    sub_26EF9C5E0();

    v121 = 0xD00000000000002ALL;
    v122 = 0x800000026EFA1C70;
    MEMORY[0x2743848A0](v23, v25);

    v61 = v121;
    v62 = v122;
    sub_26EF8D8D8();
    v63 = swift_allocError();
    *v64 = v61;
    *(v64 + 8) = v62;
    *(v64 + 16) = 0;
    v117 = v63;
    swift_willThrow();
LABEL_45:
    v100 = *MEMORY[0x277D85DE8];
    return;
  }

  v32 = v31;
  v116 = v23;
  v33 = [v31 levelOneOfCase];
  sub_26EF9C020();

  v34 = sub_26EF9C010();
  v35 = sub_26EF9C370();

  v36 = os_log_type_enabled(v34, v35);
  v115 = v25;
  if (v36)
  {
    v104 = v32;
    v102 = v33 == 100;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v103 = v33;
    v39 = v38;
    v121 = v38;
    *v37 = 136315394;
    *(v37 + 4) = sub_26EF7E624(v116, v25, &v121);
    *(v37 + 12) = 1024;
    *(v37 + 14) = v102;
    v40 = v104;
    _os_log_impl(&dword_26EF75000, v34, v35, "Factor %s is interpreted as file(%{BOOL}d)", v37, 0x12u);
    sub_26EF79770(v39);
    v41 = v39;
    v33 = v103;
    MEMORY[0x2743859D0](v41, -1, -1);
    v42 = v37;
    v32 = v40;
    MEMORY[0x2743859D0](v42, -1, -1);
  }

  (*(v17 + 8))(v20, v16);
  v43 = &selRef_fileValue;
  if (v33 != 100)
  {
    v43 = &selRef_directoryValue;
  }

  v44 = [v32 *v43];
  if (!v44)
  {
    v121 = 0;
    v122 = 0xE000000000000000;
    sub_26EF9C5E0();

    v121 = 0xD00000000000001CLL;
    v122 = 0x800000026EFA1CA0;
    v65 = v32;
    MEMORY[0x2743848A0](v116, v115);

    v66 = v121;
    v67 = v122;
    sub_26EF8D8D8();
    v68 = swift_allocError();
    *v69 = v66;
    *(v69 + 8) = v67;
    *(v69 + 16) = 0;
    v117 = v68;
    swift_willThrow();

    goto LABEL_45;
  }

  v45 = v44;
  v46 = [v45 hasAsset];
  v48 = v115;
  v47 = v116;
  if ((v46 & 1) == 0 && ![v45 isOnDemand])
  {
    v121 = 0;
    v122 = 0xE000000000000000;
    sub_26EF9C5E0();
    v90 = v32;
    MEMORY[0x2743848A0](0xD00000000000001CLL, 0x800000026EFA1CA0);
    MEMORY[0x2743848A0](v47, v48);

    MEMORY[0x2743848A0](0xD000000000000047, 0x800000026EFA1CC0);
    v91 = v121;
    v92 = v122;
    sub_26EF8D8D8();
    v93 = swift_allocError();
    *v94 = v91;
    *(v94 + 8) = v92;
    *(v94 + 16) = 0;
    v117 = v93;
    swift_willThrow();

    goto LABEL_41;
  }

  v49 = v32;
  if (![v45 hasPath])
  {
    v70 = sub_26EF9C330();
    sub_26EF78FAC(v113, 1, 1, v70);
    v71 = v114;
    v72 = *(v114 - 8);
    (*(v72 + 16))(&v121, v3, v114);
    v73 = swift_allocObject();
    v73[2] = 0;
    v73[3] = 0;
    v74 = v111;
    v73[4] = v112;
    v73[5] = v74;
    (*(v72 + 32))(v73 + 6, &v121, v71);
    v73[13] = v47;
    v73[14] = v48;

    sub_26EF90E54();

    v121 = 0;
    v122 = 0xE000000000000000;
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD00000000000001CLL, 0x800000026EFA1CA0);
    MEMORY[0x2743848A0](v47, v48);

    MEMORY[0x2743848A0](0xD00000000000004CLL, 0x800000026EFA1D10);
    v75 = v121;
    v76 = v122;
    sub_26EF8D8D8();
    v77 = swift_allocError();
    *v78 = v75;
    *(v78 + 8) = v76;
    *(v78 + 16) = 0;
    v117 = v77;
    swift_willThrow();

LABEL_41:
LABEL_44:

    goto LABEL_45;
  }

  v118 = v33 != 100;
  v50 = [objc_opt_self() defaultManager];
  v51 = [v45 path];
  if (v51)
  {
    v52 = v51;
    v53 = [v50 fileExistsAtPath:v51 isDirectory:&v118];

    if (v53)
    {
      if (((v33 == 100) ^ v118))
      {
        v54 = [v45 path];
        if (v54)
        {
          v55 = v54;

          sub_26EF9C160();

          v57 = v108;
          v56 = v109;
          v58 = MEMORY[0x277CC91D0];
          if (v33 != 100)
          {
            v58 = MEMORY[0x277CC91C0];
          }

          v59 = v106;
          (*(v108 + 104))(v106, *v58, v109);
          (*(v57 + 16))(v105, v59, v56);
          v60 = sub_26EF9BE60();
          sub_26EF78FAC(v107, 1, 1, v60);
          sub_26EF9BE50();

          (*(v57 + 8))(v59, v56);
          goto LABEL_45;
        }
      }
    }

    v121 = 0;
    v122 = 0xE000000000000000;
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD00000000000001CLL, 0x800000026EFA1CA0);
    MEMORY[0x2743848A0](v47, v48);

    MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1D60);
    if (v53)
    {
      v79 = 1702195828;
    }

    else
    {
      v79 = 0x65736C6166;
    }

    if (v53)
    {
      v80 = 0xE400000000000000;
    }

    else
    {
      v80 = 0xE500000000000000;
    }

    MEMORY[0x2743848A0](v79, v80);

    MEMORY[0x2743848A0](0x6365726944736920, 0xEE00282079726F74);
    if (v118)
    {
      v81 = 1702195828;
    }

    else
    {
      v81 = 0x65736C6166;
    }

    if (v118)
    {
      v82 = 0xE400000000000000;
    }

    else
    {
      v82 = 0xE500000000000000;
    }

    MEMORY[0x2743848A0](v81, v82);

    MEMORY[0x2743848A0](540877088, 0xE400000000000000);
    if (v33 == 100)
    {
      v83 = 0x65736C6166;
    }

    else
    {
      v83 = 1702195828;
    }

    if (v33 == 100)
    {
      v84 = 0xE500000000000000;
    }

    else
    {
      v84 = 0xE400000000000000;
    }

    MEMORY[0x2743848A0](v83, v84);

    MEMORY[0x2743848A0](0x20687461702029, 0xE700000000000000);
    v85 = [v45 path];
    if (v85)
    {
      v86 = v85;
      v87 = sub_26EF9C160();
      v89 = v88;
    }

    else
    {
      v87 = 0;
      v89 = 0;
    }

    v119 = v87;
    v120 = v89;
    sub_26EF784C0(&qword_2806CFD40, &qword_26EF9EE00);
    v95 = sub_26EF9C1A0();
    MEMORY[0x2743848A0](v95);

    v96 = v121;
    v97 = v122;
    sub_26EF8D8D8();
    v98 = swift_allocError();
    *v99 = v96;
    *(v99 + 8) = v97;
    *(v99 + 16) = 0;
    v117 = v98;
    swift_willThrow();

    goto LABEL_44;
  }

  __break(1u);
}

uint64_t sub_26EF8A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_26EF9C030();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF8A3B4, 0, 0);
}

uint64_t sub_26EF8A3B4()
{
  v27 = v0;
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = *(v0[2] + 48);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v25 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_26EF8A64C;
    v9 = v0[3];
    v8 = v0[4];

    return v25(v9, v8, ObjectType, v3);
  }

  else
  {
    v11 = v0[7];
    v12 = v0[4];
    sub_26EF9C020();

    v13 = sub_26EF9C010();
    v14 = sub_26EF9C390();

    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    if (v15)
    {
      v20 = v0[3];
      v19 = v0[4];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_26EF7E624(v20, v19, &v26);
      _os_log_impl(&dword_26EF75000, v13, v14, "Factor downloader is nil unable to request download for factor %s", v21, 0xCu);
      sub_26EF79770(v22);
      MEMORY[0x2743859D0](v22, -1, -1);
      MEMORY[0x2743859D0](v21, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    v23 = v0[7];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_26EF8A64C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26EF8A748, 0, 0);
}

uint64_t sub_26EF8A748()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

void sub_26EF8A7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = sub_26EF9BE60();
  v11 = *(*(v10 - 8) + 64);
  if (MEMORY[0x28223BE20](v10) == a1 && !*(*(v6 + 8) + 16))
  {
    sub_26EF897A8(a3, v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (!v5)
    {
      swift_dynamicCast();
    }
  }

  else
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1C50);
    v20[3] = a4;
    swift_getMetatypeMetadata();
    v13 = sub_26EF9C1C0();
    MEMORY[0x2743848A0](v13);

    MEMORY[0x2743848A0](0x656B20726F66203ELL, 0xEA00000000002079);
    v14 = *(a3 + 16);
    v15 = *(*(a3 + 24) + 16);
    sub_26EF9C750();
    MEMORY[0x2743848A0](0x50676E69646F6320, 0xEC00000020687461);
    v16 = *(v6 + 8);
    v17 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
    v18 = MEMORY[0x274384940](v16, v17);
    MEMORY[0x2743848A0](v18);

    sub_26EF8D8D8();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_26EF8A9C4()
{
  sub_26EF8D8D8();
  swift_allocError();
  *v0 = 0xD000000000000019;
  *(v0 + 8) = 0x800000026EFA1C30;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_26EF8AA2C()
{
  sub_26EF8D8D8();
  swift_allocError();
  *v0 = 0xD000000000000020;
  *(v0 + 8) = 0x800000026EFA1C00;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_26EF8AA94()
{
  sub_26EF8D8D8();
  swift_allocError();
  *v0 = 0xD000000000000016;
  *(v0 + 8) = 0x800000026EFA1BE0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_26EF8AAFC()
{
  sub_26EF8D8D8();
  swift_allocError();
  *v0 = 0xD00000000000001FLL;
  *(v0 + 8) = 0x800000026EFA1BC0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_26EF8AD60()
{
  result = sub_26EF9C7B0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8ADB0()
{
  result = sub_26EF9C7C0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8AE58()
{
  result = sub_26EF9C7F0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8AEA8()
{
  result = sub_26EF9C7D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8AFD0()
{
  result = sub_26EF9C800();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8B020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_26EF8B0E8()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA1B60);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  swift_willThrow();
  return 0;
}

uint64_t sub_26EF8B1CC()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000063, 0x800000026EFA1580);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B2AC()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000006ALL, 0x800000026EFA1510);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B38C()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000060, 0x800000026EFA14A0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B46C()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000058, 0x800000026EFA1B00);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  swift_willThrow();
  return 0;
}

uint64_t sub_26EF8B550()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ALL, 0x800000026EFA1AA0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B630()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ALL, 0x800000026EFA1A40);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B710()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000059, 0x800000026EFA19E0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B7F0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000057, 0x800000026EFA1980);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B8D0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000058, 0x800000026EFA1920);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B9B0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000059, 0x800000026EFA18C0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BA90()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000059, 0x800000026EFA1860);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BB70()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000059, 0x800000026EFA1800);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BC50()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000058, 0x800000026EFA17A0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BD30()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000059, 0x800000026EFA1740);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BE10()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ALL, 0x800000026EFA16E0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BEF0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ALL, 0x800000026EFA1680);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BFD0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ALL, 0x800000026EFA1620);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8C0B0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000023, 0x800000026EFA15F0);
  swift_getMetatypeMetadata();
  v1 = sub_26EF9C1C0();
  MEMORY[0x2743848A0](v1);

  MEMORY[0x2743848A0](0xD000000000000030, 0x800000026EFA0F20);
  v2 = *v0;
  v3 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v4 = MEMORY[0x274384940](v2, v3);
  MEMORY[0x2743848A0](v4);

  sub_26EF8D8D8();
  swift_allocError();
  *v5 = 0;
  *(v5 + 8) = 0xE000000000000000;
  *(v5 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8C1E4()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_26EF8C3E8()
{
  result = sub_26EF9C6D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8C438()
{
  result = sub_26EF9C6E0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8C4E0()
{
  result = sub_26EF9C710();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8C530()
{
  result = sub_26EF9C6F0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8C658()
{
  result = sub_26EF9C720();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8C6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_26EF8C748(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005CLL, 0x800000026EFA1440);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  swift_willThrow();
  return 0;
}

uint64_t sub_26EF8C828(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ELL, 0x800000026EFA13E0);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8C904(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ELL, 0x800000026EFA1380);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8C9E0(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA1320);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CABC(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005BLL, 0x800000026EFA12C0);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CB98(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005CLL, 0x800000026EFA1260);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CC74(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA1200);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CD50(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA11A0);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CE2C(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA1140);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CF08(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005CLL, 0x800000026EFA10E0);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CFE4(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA1080);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8D0C0(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ELL, 0x800000026EFA1020);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8D19C(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ELL, 0x800000026EFA0FC0);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8D278(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ELL, 0x800000026EFA0F60);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8D354(uint64_t a1, uint64_t a2)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000027, 0x800000026EFA0EF0);
  swift_getMetatypeMetadata();
  v3 = sub_26EF9C1C0();
  MEMORY[0x2743848A0](v3);

  MEMORY[0x2743848A0](0xD000000000000030, 0x800000026EFA0F20);
  v4 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v5 = MEMORY[0x274384940](a2, v4);
  MEMORY[0x2743848A0](v5);

  sub_26EF8D8D8();
  swift_allocError();
  *v6 = 0;
  *(v6 + 8) = 0xE000000000000000;
  *(v6 + 16) = 2;
  return swift_willThrow();
}

unint64_t sub_26EF8D6B4()
{
  result = qword_280E140D8[0];
  if (!qword_280E140D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E140D8);
  }

  return result;
}

uint64_t sub_26EF8D740()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_26EF8D788(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26EF8D794(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EF8D7D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26EF8D834(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EF8D874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26EF8D8D8()
{
  result = qword_280E140D0;
  if (!qword_280E140D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E140D0);
  }

  return result;
}

uint64_t sub_26EF8D92C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[13];
  v9 = v1[14];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26EF8DA04;

  return sub_26EF8A2F0(a1, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_26EF8DA04()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__n128 sub_26EF8DB04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26EF8DB18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EF8DB58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t TUSCache.__allocating_init(capacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TUSCache.init(capacity:)(a1);
  return v2;
}

uint64_t TUSCache.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v5 = *v2;
  sub_26EF76E94();
  v50 = v6;
  v52 = *(v7 + 80);
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  sub_26EF76E94();
  v14 = *(v13 + 88);
  sub_26EF9C4D0();
  sub_26EF76D10();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  sub_26EF76D10();
  v23 = v22;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v49 - v30;
  v32 = *(v16 + 16);
  v54 = a1;
  v51 = v33;
  v32(v21, a1);
  if (sub_26EF7EC68(v21, 1, v14) == 1)
  {
    v34 = *(v16 + 8);
    v35 = v51;
    v34(v21, v51);
    v36 = v3[2];
    v37 = *(v50 + 96);
    v38 = v52;
    type metadata accessor for WrappedKey();
    v39 = sub_26EF76D48();
    v40(v39);
    v41 = sub_26EF8E1C0(v12);
    [v36 removeObjectForKey_];

    (*(v8 + 8))(a1, v38);
    return (v34)(v54, v35);
  }

  else
  {
    (*(v23 + 32))(v31, v21, v14);
    type metadata accessor for WrappedValue();
    (*(v23 + 16))(v29, v31, v14);
    v43 = sub_26EF8E61C(v29);
    v49 = v3[2];
    v44 = *(v50 + 96);
    v45 = v52;
    type metadata accessor for WrappedKey();
    v46 = sub_26EF76D48();
    v47(v46);
    v48 = sub_26EF8E1C0(v12);
    [v49 setObject:v43 forKey:v48];

    (*(v8 + 8))(a1, v45);
    (*(v16 + 8))(v54, v51);
    return (*(v23 + 8))(v31, v14);
  }
}

uint64_t TUSCache.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_26EF76E94();
  v7 = v6;
  v9 = *(v8 + 80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = v2[2];
  sub_26EF76E94();
  v17 = *(v16 + 96);
  type metadata accessor for WrappedKey();
  (*(v10 + 16))(v14, a1, v9);
  v18 = sub_26EF8E1C0(v14);
  v19 = [v15 objectForKey_];

  if (v19)
  {
    v20 = *(v7 + 88);
    (*(*(v20 - 8) + 16))(a2, &v19[*(*v19 + 88)], v20);

    v21 = a2;
    v22 = 0;
    v23 = v20;
  }

  else
  {
    v23 = *(v7 + 88);
    v21 = a2;
    v22 = 1;
  }

  return sub_26EF78FAC(v21, v22, 1, v23);
}

id sub_26EF8E1F4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t sub_26EF8E2F0(void *a1)
{
  v1 = a1;
  v2 = sub_26EF8E324();

  return v2;
}

uint64_t sub_26EF8E324()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v3 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60);
  return sub_26EF9C100();
}

uint64_t sub_26EF8E394(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v1;
  sub_26EF8EF38(a1, v12);
  if (!v13)
  {
    sub_26EF8EED0(v12);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v5 = *((*v3 & *v11) + 0x60);
  v6 = *((*v1 & *v3) + 0x60);
  v7 = *(*(v4 + 88) + 8);
  v8 = *(v4 + 80);
  v9 = sub_26EF9C120();

  return v9 & 1;
}

uint64_t sub_26EF8E4B4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_26EF9C570();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_26EF8E394(v8);

  sub_26EF8EED0(v8);
  return v6 & 1;
}

id sub_26EF8E580()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26EF8E61C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_26EF8E658(a1);
}

uint64_t sub_26EF8E73C()
{
  v0 = sub_26EF8E6CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *TUSCache.init(capacity:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_26EF784C0(&qword_2806CFE48, qword_26EF9EC30);
  v5 = v4[10];
  v6 = v4[12];
  type metadata accessor for WrappedKey();
  v7 = v4[11];
  type metadata accessor for WrappedValue();
  v8 = sub_26EF8E888();
  v2[2] = v8;
  [v8 setCountLimit_];
  return v2;
}

id sub_26EF8E888()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_26EF8E8C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v9 = sub_26EF9C4D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - v13;
  v15 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v21 - v16;
  (*(v18 + 16))(&v21 - v16, a3, v8);
  (*(v10 + 16))(v14, a1, v9);
  v19 = *a2;
  return TUSCache.subscript.setter(v14, v17);
}

void (*TUSCache.subscript.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = sub_26EF86BB0(0x48uLL);
  *a1 = v5;
  *v5 = v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = sub_26EF9C4D0();
  v5[1] = v8;
  v9 = *(v8 - 8);
  v5[2] = v9;
  v10 = *(v9 + 64);
  v5[3] = sub_26EF86BB0(v10);
  v11 = sub_26EF86BB0(v10);
  v5[4] = v11;
  v5[5] = *(v6 + 80);
  sub_26EF76D10();
  v13 = v12;
  v5[6] = v12;
  v15 = *(v14 + 64);
  v5[7] = sub_26EF86BB0(v15);
  v5[8] = sub_26EF86BB0(v15);
  (*(v13 + 16))();
  TUSCache.subscript.getter(a2, v11);
  return sub_26EF8EBC4;
}

void sub_26EF8EBC4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    v11 = *v2;
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    TUSCache.subscript.setter(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    v12 = *v2;
    TUSCache.subscript.setter(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t TUSCache.__deallocating_deinit()
{
  TUSCache.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26EF8ED1C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26EF8EDB0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26EF8EED0(uint64_t a1)
{
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EF8EF38(uint64_t a1, uint64_t a2)
{
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF8EFCC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26EF9C410();
  sub_26EF90D8C(v3, a2);
  sub_26EF90BEC(v3, a2);
  return sub_26EF9C400();
}

uint64_t sub_26EF8F024@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_26EF90E48();
  v5 = *(v4 + 96);
  swift_beginAccess();
  sub_26EF90E48();
  v7 = *(v6 + 80);
  v8 = sub_26EF9C4D0();
  sub_26EF76EA0(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t sub_26EF8F0C0(uint64_t a1)
{
  v3 = *v1;
  sub_26EF90E48();
  v5 = *(v4 + 96);
  swift_beginAccess();
  sub_26EF90E48();
  v7 = *(v6 + 80);
  v8 = sub_26EF9C4D0();
  sub_26EF76EA0(v8);
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_26EF8F180(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_26EF8F1A4()
{
  v1 = *(*v0 + 80);
  v2 = sub_26EF9C4D0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_26EF9C030();
  v7 = sub_26EF76CFC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_26EF810E0();
  v14 = v13 - v12;
  sub_26EF9C020();
  v15 = sub_26EF9C010();
  v16 = sub_26EF9C370();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v1;
    v30 = v19;
    *v18 = 136315138;
    swift_getMetatypeMetadata();
    v20 = sub_26EF9C1C0();
    v22 = sub_26EF7E624(v20, v21, &v30);
    v27 = v6;
    v23 = v5;
    v24 = v1;
    v25 = v22;

    *(v18 + 4) = v25;
    v1 = v24;
    v5 = v23;
    _os_log_impl(&dword_26EF75000, v15, v16, "Purging TUSLazyPurgeable of type %s due to memory pressure", v18, 0xCu);
    sub_26EF79770(v19);
    MEMORY[0x2743859D0](v19, -1, -1);
    MEMORY[0x2743859D0](v18, -1, -1);

    (*(v28 + 8))(v14, v27);
  }

  else
  {

    (*(v9 + 8))(v14, v6);
  }

  sub_26EF78FAC(v5, 1, 1, v1);
  sub_26EF8F0C0(v5);
  if (sub_26EF8F164())
  {
    swift_getObjectType();
    sub_26EF9C440();
    swift_unknownObjectRelease();
  }

  return sub_26EF8F180(0);
}

uint64_t sub_26EF8F418()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_26EF9C040();
  v4 = sub_26EF76CFC(v3);
  v63 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_26EF810E0();
  v61 = v9 - v8;
  sub_26EF76AD4();
  v62 = sub_26EF9C070();
  v10 = sub_26EF76CFC(v62);
  v60 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_26EF810E0();
  v59 = v15 - v14;
  sub_26EF76AD4();
  v16 = sub_26EF9C410();
  v17 = sub_26EF76CFC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_26EF810E0();
  v58 = v23 - v22;
  v24 = *(v2 + 80);
  v25 = sub_26EF9C4D0();
  v26 = sub_26EF76CFC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v26);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v56 - v34;
  sub_26EF8F024(&v56 - v34);
  LODWORD(v2) = sub_26EF7EC68(v35, 1, v24);
  (*(v28 + 8))(v35, v25);
  if (v2 == 1)
  {
    sub_26EF90DF4();
    v37 = v1 + *(v36 + 104);
    v38 = *(v37 + 1);
    (*v37)();
    sub_26EF78FAC(v33, 0, 1, v24);
    sub_26EF8F0C0(v33);
  }

  if (!sub_26EF8F164())
  {
    v57 = v3;
    v56 = sub_26EF797BC(0, &unk_280E13E90, 0x277D85CA0);
    sub_26EF784C0(&unk_2806CFED8, &qword_26EF9EDC0);
    v39 = *(v19 + 72);
    v40 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_26EF9ECF0;
    v42 = v41 + v40;
    sub_26EF9C3E0();
    sub_26EF9C3F0();
    if (qword_280E13ED0 != -1)
    {
      swift_once();
    }

    v43 = sub_26EF90BEC(v16, qword_280E13EE0);
    v44 = *(v19 + 16);
    v44(v42 + 2 * v39, v43, v16);
    if (qword_280E13EA8 != -1)
    {
      swift_once();
    }

    v45 = sub_26EF90BEC(v16, qword_280E13EB8);
    v44(v42 + 3 * v39, v45, v16);
    aBlock[0] = v41;
    sub_26EF90C44(&qword_280E13EA0, MEMORY[0x277D85298]);
    sub_26EF784C0(&qword_2806CFEE8, &qword_26EF9EDC8);
    sub_26EF90C8C(&qword_280E13F10, &qword_2806CFEE8, &qword_26EF9EDC8);
    v46 = v58;
    sub_26EF9C580();
    sub_26EF90DF4();
    v48 = *(v1 + *(v47 + 112));
    sub_26EF9C420();
    (*(v19 + 8))(v46, v16);
    swift_getObjectType();
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = v24;
    *(v50 + 24) = v49;
    aBlock[4] = sub_26EF90C24;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26EF8FB9C;
    aBlock[3] = &unk_287F04738;
    v51 = _Block_copy(aBlock);

    v52 = v59;
    sub_26EF9C050();
    v53 = v61;
    sub_26EF8FBE0();
    sub_26EF9C430();
    _Block_release(v51);
    (*(v63 + 8))(v53, v57);
    (*(v60 + 8))(v52, v62);

    sub_26EF9C450();
    v54 = swift_unknownObjectRetain();
    sub_26EF8F180(v54);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_26EF8FA28()
{
  v0 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_26EF9C330();
    sub_26EF78FAC(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_26EF90E54();
  }

  return result;
}

uint64_t sub_26EF8FB44()
{
  sub_26EF76E54();
  v1 = *(v0 + 16);
  sub_26EF8F1A4();
  sub_26EF90E3C();

  return v2();
}

uint64_t sub_26EF8FB9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26EF8FBE0()
{
  sub_26EF9C040();
  sub_26EF90C44(qword_280E13F38, MEMORY[0x277D85198]);
  sub_26EF784C0(&unk_2806CFEF0, &unk_26EF9EDD0);
  sub_26EF90C8C(&unk_280E13F28, &unk_2806CFEF0, &unk_26EF9EDD0);
  return sub_26EF9C580();
}

uint64_t TUSLazyPurgeable.__allocating_init(initialize:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  TUSLazyPurgeable.init(initialize:)(a1, a2);
  return v7;
}

char *TUSLazyPurgeable.init(initialize:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v50 = a2;
  v4 = *v2;
  v5 = sub_26EF9C3B0();
  v6 = sub_26EF76CFC(v5);
  v54 = v7;
  v55 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_26EF810E0();
  v53 = v11 - v10;
  sub_26EF76AD4();
  v52 = sub_26EF9C490();
  v12 = sub_26EF76EA0(v52);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_26EF810E0();
  v51 = v16 - v15;
  sub_26EF76AD4();
  v17 = sub_26EF9C070();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  sub_26EF810E0();
  v19 = sub_26EF9BEF0();
  v20 = sub_26EF76CFC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_26EF810E0();
  v27 = v26 - v25;
  v28 = *(v4 + 80);
  v29 = sub_26EF9C4D0();
  v30 = sub_26EF76CFC(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v36 = &v49 - v35;
  swift_defaultActor_initialize();
  sub_26EF90DF4();
  v38 = *(v37 + 96);
  sub_26EF78FAC(&v3[v38], 1, 1, v28);
  sub_26EF90DF4();
  *&v3[*(v39 + 120)] = 0;
  sub_26EF78FAC(v36, 1, 1, v28);
  swift_beginAccess();
  (*(v32 + 40))(&v3[v38], v36, v29);
  swift_endAccess();
  sub_26EF90DF4();
  v41 = &v3[*(v40 + 104)];
  v42 = v50;
  *v41 = v49;
  *(v41 + 1) = v42;
  sub_26EF797BC(0, &qword_280E14380, 0x277D85C90);
  v56 = 0;
  v57 = 0xE000000000000000;

  sub_26EF9C5E0();

  v56 = 0xD000000000000023;
  v57 = 0x800000026EFA1FF0;
  sub_26EF9BEE0();
  v43 = sub_26EF9BED0();
  v45 = v44;
  (*(v22 + 8))(v27, v19);
  MEMORY[0x2743848A0](v43, v45);

  sub_26EF9C060();
  v56 = MEMORY[0x277D84F90];
  sub_26EF90C44(&qword_280E14388, MEMORY[0x277D852D8]);
  sub_26EF784C0(&unk_2806CFE60, qword_26EF9ED00);
  sub_26EF90C8C(&qword_280E14398, &unk_2806CFE60, qword_26EF9ED00);
  sub_26EF9C580();
  (*(v54 + 104))(v53, *MEMORY[0x277D85268], v55);
  v46 = sub_26EF9C4A0();

  sub_26EF90DF4();
  *&v3[*(v47 + 112)] = v46;
  return v3;
}

uint64_t *TUSLazyPurgeable.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 120);
  if (*(v0 + v4))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_26EF9C440();
    swift_unknownObjectRelease();
    v2 = *v0;
  }

  v5 = *(v2 + 96);
  v6 = *(v3 + 80);
  v7 = sub_26EF9C4D0();
  sub_26EF76EA0(v7);
  (*(v8 + 8))(v1 + v5);
  sub_26EF90DF4();
  v10 = *(v1 + *(v9 + 104) + 8);

  sub_26EF90DF4();

  v12 = *(v1 + v4);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t TUSLazyPurgeable.__deallocating_deinit()
{
  TUSLazyPurgeable.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26EF902CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x2822009F8](sub_26EF90318, v3, 0);
}

uint64_t sub_26EF90318()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_26EF8F418();
  v3 = *(*v1 + 96);
  swift_beginAccess();
  result = sub_26EF7EC68(v1 + v3, 1, *(v2 + 80));
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    (*(v0 + 48))(v1 + v3);
    swift_endAccess();
    sub_26EF90E3C();

    return v7();
  }

  return result;
}

uint64_t sub_26EF903F4()
{
  sub_26EF76E54();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *(*v0 + 80);
  v5 = *(*(sub_26EF9C4D0() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF9049C, v0, 0);
}

uint64_t sub_26EF9049C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_26EF8F418();
  sub_26EF8F024(v1);
  result = sub_26EF7EC68(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = (v0[3] + *v0[3]);
    v5 = *(v0[3] + 4);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_26EF905CC;
    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[2];

    return v10(v9, v7);
  }

  return result;
}

uint64_t sub_26EF905CC()
{
  sub_26EF76E54();
  v3 = *(*v1 + 64);
  v2 = *v1;
  sub_26EF76B18();
  *v4 = v2;
  v2[9] = v0;

  if (v0)
  {
    v5 = v2[5];

    return MEMORY[0x2822009F8](sub_26EF9072C, v5, 0);
  }

  else
  {
    (*(*(v2[6] - 8) + 8))(v2[7]);

    sub_26EF90E3C();

    return v6();
  }
}

uint64_t sub_26EF9072C()
{
  sub_26EF76E54();
  (*(*(v0[6] - 8) + 8))(v0[7]);

  sub_26EF90E3C();
  v2 = v0[9];

  return v1();
}

uint64_t sub_26EF907E0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_26EF9C4D0();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of TUSLazyPurgeable.run<A>(_:)()
{
  sub_26EF90E20();
  v1 = *(v0 + 200);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_26EF76B28(v3);
  *v4 = v5;
  v6 = sub_26EF90E00(v4);

  return v7(v6);
}

{
  sub_26EF90E20();
  v1 = *(v0 + 208);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_26EF76B28(v3);
  *v4 = v5;
  v6 = sub_26EF90E00(v4);

  return v7(v6);
}

uint64_t sub_26EF90B08()
{
  sub_26EF76E54();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_26EF76B18();
  *v3 = v2;

  sub_26EF90E3C();

  return v4();
}

uint64_t sub_26EF90BEC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26EF90C24()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_26EF8FA28();
}

uint64_t sub_26EF90C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26EF90C44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EF90C8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_26EF7948C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26EF90CE0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_26EF76B28(v6);
  *v7 = v8;
  v7[1] = sub_26EF90B08;

  return sub_26EF8FB24(a1, v3, v4, v5);
}

uint64_t *sub_26EF90D8C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_26EF90E3C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_26EF90E54()
{
  sub_26EF76E7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  sub_26EF97520(v8);
  v10 = *(v9 + 64);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  sub_26EF96DE4(v5, v25 - v12);
  v14 = sub_26EF9C330();
  v15 = sub_26EF7EC68(v13, 1, v14);

  if (v15 == 1)
  {
    sub_26EF97330(v13, &unk_2806CFF00, &qword_26EF9EE10);
  }

  else
  {
    sub_26EF9C320();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26EF9C310();
    v20 = v19;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v21 = sub_26EF9C1D0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      *(v22 + 24) = v1;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v23 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v25[1] = 7;
      v25[2] = v23;
      v25[3] = v21;
      swift_task_create();

      sub_26EF97330(v5, &unk_2806CFF00, &qword_26EF9EE10);

      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_26EF97330(v5, &unk_2806CFF00, &qword_26EF9EE10);
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v1;
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  swift_task_create();
LABEL_14:
  sub_26EF85944();
}

uint64_t sub_26EF91110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28[-1] - v13;
  v29[0] = a4;
  v29[1] = a5;
  sub_26EF96DE4(a3, &v28[-1] - v13);
  v15 = sub_26EF9C330();
  v16 = sub_26EF7EC68(v14, 1, v15);

  if (v16 == 1)
  {
    sub_26EF97330(v14, &unk_2806CFF00, &qword_26EF9EE10);
  }

  else
  {
    sub_26EF9C320();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_26EF9C310();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_26EF9C1D0();
      v23 = *(v22 + 16);
      sub_26EF95E64(v22 + 32, v29, a6, v28);

      v24 = v28[0];
      sub_26EF97330(a3, &unk_2806CFF00, &qword_26EF9EE10);

      return v24;
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

  sub_26EF97330(a3, &unk_2806CFF00, &qword_26EF9EE10);
  v25 = swift_allocObject();
  v25[2] = a6;
  v25[3] = a4;
  v25[4] = a5;
  if (v21 | v19)
  {
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = v19;
    v28[4] = v21;
  }

  return swift_task_create();
}

uint64_t sub_26EF91390()
{
  v0 = sub_26EF9C3B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EF9C490();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_26EF9C070();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_26EF797BC(0, &qword_280E14380, 0x277D85C90);
  sub_26EF9C060();
  v10[1] = MEMORY[0x277D84F90];
  sub_26EF97274();
  sub_26EF784C0(&unk_2806CFE60, qword_26EF9ED00);
  sub_26EF972CC();
  sub_26EF9C580();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v0);
  result = sub_26EF9C4A0();
  qword_280E13FC8 = result;
  return result;
}

uint64_t sub_26EF915D8()
{
  sub_26EF9C890();
  MEMORY[0x274384EF0](0);
  return sub_26EF9C8B0();
}

uint64_t sub_26EF91628()
{
  sub_26EF9C890();
  MEMORY[0x274384EF0](0);
  return sub_26EF9C8B0();
}

void *TUSTrialAssets.rolloutIdentifiers.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

void *TUSTrialAssets.experimentIdentifiers.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  v3 = v2;
  return v2;
}

void sub_26EF916F4()
{
  sub_26EF76E7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_26EF76D10();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  sub_26EF810E0();
  (*(v11 + 16))(v16 - v15, v7, v17);
  sub_26EF784C0(&qword_2806CFF38, &qword_26EF9F0B0);
  if (swift_dynamicCast())
  {
    sub_26EF97388(v21, v23);
    v18 = v24;
    v19 = v25;
    sub_26EF973A0(v23, v24);
    (*(v19 + 8))(v18, v19);
    (*(v11 + 8))(v7, v1);
    sub_26EF973F0(v23, v21);
    swift_dynamicCast();
    sub_26EF79770(v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_26EF97330(v21, &qword_2806CFF40, qword_26EF9F0B8);
    (*(v11 + 32))(v9, v7, v1);
  }

  v20 = type metadata accessor for TUSTrialAssets();
  *(v9 + *(v20 + 28)) = v5;
  *(v9 + *(v20 + 32)) = v3;
  sub_26EF85944();
}

void TUSTrialAssets.description.getter()
{
  sub_26EF76E7C();
  v2 = v1;
  v38 = *(v1 + 16);
  sub_26EF76D10();
  v37 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  sub_26EF810E0();
  v9 = v8 - v7;
  v11 = v0;
  v12 = *(v0 + *(v10 + 28));
  if (v12)
  {
    v13 = v12;
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000021, 0x800000026EFA20E0);
    v14 = [v13 rolloutId];
    v15 = sub_26EF9C160();
    v17 = v16;

    MEMORY[0x2743848A0](v15, v17);

    MEMORY[0x2743848A0](0x6D796F6C70656420, 0xEF203A6449746E65);
    [v13 deploymentId];
    v18 = sub_26EF9C6A0();
    MEMORY[0x2743848A0](v18);

    MEMORY[0x2743848A0](0x50726F7463616620, 0xEF203A64496B6361);
    v19 = [v13 factorPackId];
    v20 = sub_26EF9C160();
    v22 = v21;

    MEMORY[0x2743848A0](v20, v22);

    MEMORY[0x2743848A0](41, 0xE100000000000000);
  }

  v23 = *(v11 + *(v2 + 32));
  if (v23)
  {
    v24 = v23;
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000027, 0x800000026EFA20B0);
    v25 = [v24 experimentId];
    v26 = sub_26EF9C160();
    v28 = v27;

    MEMORY[0x2743848A0](v26, v28);

    MEMORY[0x2743848A0](0x656D746165727420, 0xEE00203A6449746ELL);
    v29 = [v24 treatmentId];
    v30 = sub_26EF9C160();
    v32 = v31;

    MEMORY[0x2743848A0](v30, v32);

    MEMORY[0x2743848A0](0x6D796F6C70656420, 0xEF203A6449746E65);
    [v24 deploymentId];
    v33 = sub_26EF9C6A0();
    MEMORY[0x2743848A0](v33);

    MEMORY[0x2743848A0](41, 0xE100000000000000);
  }

  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0x3A73726F74636166, 0xE900000000000020);
  (*(v37 + 16))(v9, v11, v38);
  v34 = sub_26EF9C1A0();
  MEMORY[0x2743848A0](v34);

  MEMORY[0x2743848A0](0xD000000000000015, 0x800000026EFA2070);
  sub_26EF784C0(&qword_2806CFD40, &qword_26EF9EE00);
  v35 = sub_26EF9C1A0();
  MEMORY[0x2743848A0](v35);

  MEMORY[0x2743848A0](0xD000000000000018, 0x800000026EFA2090);
  v36 = sub_26EF9C1A0();
  MEMORY[0x2743848A0](v36);

  sub_26EF85944();
}

uint64_t sub_26EF91D90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_26EF90E48();
  v5 = *(v4 + 104);
  sub_26EF975CC();
  sub_26EF90E48();
  v7 = *(v6 + 80);
  v8 = sub_26EF9761C();
  sub_26EF76EA0(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t sub_26EF91E1C(uint64_t a1)
{
  v3 = *v1;
  sub_26EF90E48();
  v5 = *(v4 + 104);
  sub_26EF97604();
  sub_26EF90E48();
  v7 = *(v6 + 80);
  v8 = sub_26EF9761C();
  sub_26EF76EA0(v8);
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_26EF91EB4()
{
  sub_26EF9748C();
  v2 = *(v1 + 112);
  sub_26EF975CC();
  v3 = *(v0 + v2);
}

uint64_t sub_26EF91EF8(uint64_t a1)
{
  sub_26EF9748C();
  v4 = *(v3 + 112);
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
}

uint64_t sub_26EF91F58@<X0>(uint64_t a1@<X8>)
{
  sub_26EF9748C();
  v4 = *(v3 + 120);
  sub_26EF975CC();
  v5 = sub_26EF9BEC0();
  sub_26EF76EA0(v5);
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t sub_26EF91FD4(uint64_t a1)
{
  sub_26EF9748C();
  v4 = *(v3 + 120);
  sub_26EF97604();
  v5 = sub_26EF9BEC0();
  sub_26EF76EA0(v5);
  (*(v6 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_26EF9205C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v183 = a1;
  v174 = *v2;
  v4 = v174[10];
  v168 = sub_26EF9C4D0();
  sub_26EF76CFC(v168);
  v167 = v5;
  v7 = *(v6 + 64);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v8);
  v173 = &v156 - v9;
  sub_26EF76AD4();
  v10 = sub_26EF9C030();
  v11 = sub_26EF76CFC(v10);
  v181 = v12;
  v182 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_26EF80088();
  sub_26EF974D4();
  MEMORY[0x28223BE20](v15);
  sub_26EF8007C();
  v171 = v16;
  sub_26EF80050();
  MEMORY[0x28223BE20](v17);
  sub_26EF8007C();
  v175 = v18;
  sub_26EF80050();
  MEMORY[0x28223BE20](v19);
  sub_26EF8007C();
  sub_26EF974D4();
  MEMORY[0x28223BE20](v20);
  v164 = &v156 - v21;
  sub_26EF76D10();
  v178 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  sub_26EF80088();
  v176 = v26 - v27;
  sub_26EF80050();
  MEMORY[0x28223BE20](v28);
  sub_26EF8007C();
  sub_26EF974D4();
  MEMORY[0x28223BE20](v29);
  sub_26EF8007C();
  v172 = v30;
  sub_26EF80050();
  MEMORY[0x28223BE20](v31);
  v177 = &v156 - v32;
  sub_26EF76AD4();
  v33 = sub_26EF9BEC0();
  v34 = sub_26EF76CFC(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_26EF80088();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v156 - v43;
  v179 = v4;
  type metadata accessor for TUSTrialAssets();
  v45 = sub_26EF975E8();
  v46 = sub_26EF76CFC(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_26EF80088();
  sub_26EF974D4();
  MEMORY[0x28223BE20](v51);
  v53 = &v156 - v52;
  sub_26EF91D90(&v156 - v52);
  v180 = v1;
  LODWORD(v4) = sub_26EF7EC68(v53, 1, v1);
  v54 = *(v48 + 8);
  v165 = v45;
  v54(v53, v45);
  if (v4 == 1)
  {
    sub_26EF9BEB0();
    sub_26EF91F58(v41);
    sub_26EF9BEA0();
    v56 = v55;
    v58 = v36 + 8;
    v57 = *(v36 + 8);
    v57(v41, v33);
    if (v56 < 86400.0)
    {
      v59 = sub_26EF97570();
      (v57)(v59);
LABEL_19:
      sub_26EF97498();
      return sub_26EF78FAC(v127, v128, v129, v180);
    }

    v61 = v3;
    v163 = v57;
    (*(v36 + 16))(v41, v44, v33);
    sub_26EF91FD4(v41);
    v62 = *(v3 + (*v3)[18]);
    [v62 refresh];
    v63 = (v3 + (*v3)[17]);
    v64 = *v63;
    v65 = v63[1];
    v184[0] = v62;
    v184[1] = v64;
    v161 = v64;
    v184[2] = v65;
    v184[4] = &off_287F048A0;
    swift_unknownObjectWeakInit();
    v66 = v174[11];
    v174 = v62;
    v67 = v65;

    v68 = v177;
    v69 = v179;
    sub_26EF87C90();
    v162 = v44;
    sub_26EF92FDC(v184);
    v70 = v61 + (*v61)[22];
    v71 = *(v70 + 8);
    if ((*v70)(v68))
    {
      v72 = *(v178 + 16);
      sub_26EF97680();
      v73();
      v74 = sub_26EF9C130();
      v75 = v174;
      v76 = [v174 rolloutIdentifiersWithNamespaceName_];

      v77 = sub_26EF9C130();
      v78 = [v75 experimentIdentifiersWithNamespaceName_];

      v79 = v170;
      sub_26EF916F4();
      sub_26EF78FAC(v79, 0, 1, v180);
      sub_26EF91E1C(v79);
      v80 = v164;
      sub_26EF9C020();

      v81 = sub_26EF9C010();
      v82 = sub_26EF9C370();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = sub_26EF800C0();
        v84 = sub_26EF76D7C();
        v85 = v178;
        v158 = v58;
        v86 = v84;
        v184[0] = v84;
        *v83 = 136315138;
        sub_26EF91D90(v79);
        v87 = sub_26EF9C1C0();
        v89 = sub_26EF7E624(v87, v88, v184);

        *(v83 + 4) = v89;
        _os_log_impl(&dword_26EF75000, v81, v82, "We successfully decoded struct %s", v83, 0xCu);
        sub_26EF79770(v86);
        sub_26EF974F0();
        sub_26EF76AF4();

        (*(v181 + 8))(v80, v182);
        (*(v85 + 8))(v177, v179);
        sub_26EF97660();
        v90();
LABEL_24:
        v60 = v183;
        return sub_26EF91D90(v60);
      }

      (*(v181 + 8))(v80, v182);
      (*(v178 + 8))(v177, v69);
    }

    else
    {
      v158 = v58;
      sub_26EF9C020();
      v91 = v178;
      v92 = *(v178 + 16);
      sub_26EF97680();
      v92();
      v93 = sub_26EF9C010();
      LODWORD(v164) = sub_26EF9C390();
      v94 = os_log_type_enabled(v93, v164);
      v159 = v33;
      if (v94)
      {
        v95 = sub_26EF800C0();
        v157 = sub_26EF76D7C();
        v184[0] = v157;
        *v95 = 136315138;
        v96 = sub_26EF97514();
        (v92)(v96);
        v97 = sub_26EF9C1C0();
        v99 = v98;
        v156 = *(v91 + 8);
        v100 = sub_26EF9764C();
        v101(v100);
        v102 = sub_26EF7E624(v97, v99, v184);

        *(v95 + 4) = v102;
        v68 = v177;
        _os_log_impl(&dword_26EF75000, v93, v164, "Validation for factors %s returned false, attempting to fall back to default factors loader", v95, 0xCu);
        sub_26EF79770(v157);
        sub_26EF76AF4();
        sub_26EF76AF4();

        v103 = v156;
      }

      else
      {

        v103 = *(v91 + 8);
        v104 = sub_26EF9764C();
        v103(v104);
      }

      (*(v181 + 8))(v166, v182);
      sub_26EF96224();
      v105 = swift_allocError();
      swift_willThrow();
      (v103)(v68, v69);
      v106 = v175;
      v160 = v67;
      sub_26EF9C020();

      v107 = v105;
      v108 = sub_26EF9C010();
      v109 = sub_26EF9C390();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = sub_26EF9757C();
        v111 = swift_slowAlloc();
        v112 = sub_26EF76D7C();
        v184[0] = v112;
        *v110 = 136315394;
        v113 = v161;
        v114 = v160;
        *(v110 + 4) = sub_26EF7E624(v161, v160, v184);
        *(v110 + 12) = 2112;
        v115 = v105;
        v116 = _swift_stdlib_bridgeErrorToNSError();
        *(v110 + 14) = v116;
        *v111 = v116;
        _os_log_impl(&dword_26EF75000, v108, v109, "Unable to instantiate assets for %s due to: %@", v110, 0x16u);
        sub_26EF97330(v111, &qword_2806CFF10, &qword_26EF9EE08);
        sub_26EF76AF4();
        sub_26EF79770(v112);
        v69 = v179;
        sub_26EF76AF4();
        sub_26EF76AF4();

        v177 = *(v181 + 8);
        (v177)(v175, v182);
        v117 = v174;
      }

      else
      {

        v177 = *(v181 + 8);
        (v177)(v106, v182);
        v113 = v161;
        v117 = v174;
        v114 = v160;
      }

      v118 = v61 + (*v61)[23];
      v119 = *(v118 + 8);
      v120 = v173;
      (*v118)(v117, v113, v114);
      if (sub_26EF7EC68(v120, 1, v69) == 1)
      {
        (*(v167 + 8))(v120, v168);
        v121 = v169;
        sub_26EF9C020();

        v122 = sub_26EF9C010();
        v123 = sub_26EF9C370();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = sub_26EF800C0();
          v125 = sub_26EF76D7C();
          v184[0] = v125;
          *v124 = 136315138;
          *(v124 + 4) = sub_26EF7E624(v113, v160, v184);
          _os_log_impl(&dword_26EF75000, v122, v123, "Unable to instantiate default assets for %s", v124, 0xCu);
          sub_26EF79770(v125);
          sub_26EF76AF4();
          sub_26EF76AF4();
        }

        (v177)(v121, v182);
        sub_26EF76AE0();
        sub_26EF97660();
        v126();
        goto LABEL_19;
      }

      v131 = v178;
      v132 = *(v178 + 32);
      v133 = sub_26EF97514();
      v134(v133);
      v135 = *(v131 + 16);
      sub_26EF97680();
      v136();
      v137 = sub_26EF9C130();
      v138 = [v117 rolloutIdentifiersWithNamespaceName_];

      v139 = sub_26EF9C130();
      v140 = [v117 experimentIdentifiersWithNamespaceName_];

      v141 = v113;
      v142 = v170;
      sub_26EF916F4();
      sub_26EF78FAC(v142, 0, 1, v180);
      sub_26EF91E1C(v142);
      v143 = v171;
      sub_26EF9C020();

      v144 = sub_26EF9C010();
      v145 = sub_26EF9C370();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = sub_26EF9757C();
        v184[0] = sub_26EF801A8();
        *v146 = 136315394;
        *(v146 + 4) = sub_26EF7E624(v141, v114, v184);
        *(v146 + 12) = 2080;
        sub_26EF91D90(v142);
        v147 = sub_26EF9C1C0();
        v149 = sub_26EF7E624(v147, v148, v184);

        *(v146 + 14) = v149;
        _os_log_impl(&dword_26EF75000, v144, v145, "Instantiated default assets for %s using: %s", v146, 0x16u);
        swift_arrayDestroy();
        sub_26EF974F0();
        sub_26EF76AF4();

        (v177)(v171, v182);
        v150 = sub_26EF976B4();
        v151(v150);
        sub_26EF76AE0();
        sub_26EF97660();
        v152();
        goto LABEL_24;
      }

      (v177)(v143, v182);
      v153 = sub_26EF976B4();
      v154(v153);
      sub_26EF76AE0();
    }

    sub_26EF97660();
    v155();
    goto LABEL_24;
  }

  v60 = v183;
  return sub_26EF91D90(v60);
}

uint64_t TUSTrialNamespaceManager.__allocating_init(namespaceName:trialProjectID:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_26EF976A0();
  v12 = *(v10 + 48);
  v13 = *(v10 + 52);
  v14 = swift_allocObject();
  sub_26EF97570();
  sub_26EF9768C();
  TUSTrialNamespaceManager.init(namespaceName:trialProjectID:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(v15, v16, v17, v18, v19, v20, v21, a8, a9, a10, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, vars0, vars8);
  return v14;
}

void TUSTrialNamespaceManager.init(namespaceName:trialProjectID:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_26EF76E7C();
  v116 = v23;
  v115 = v24;
  v107 = v25;
  v27 = v26;
  v113 = v28;
  v114 = a22;
  v108 = a21;
  v109 = v29;
  v30 = *v22;
  v31 = *v22;
  v111 = v32;
  v112 = v31;
  v33 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  sub_26EF97520(v33);
  v35 = *(v34 + 64);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v36);
  v106 = &v105 - v37;
  sub_26EF76AD4();
  v38 = sub_26EF9BEC0();
  v39 = sub_26EF76CFC(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  sub_26EF810E0();
  v46 = v45 - v44;
  v110 = *(v30 + 80);
  v47 = type metadata accessor for TUSTrialAssets();
  v48 = sub_26EF9C4D0();
  sub_26EF76CFC(v48);
  v50 = v49;
  v52 = *(v51 + 64);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v53);
  v55 = &v105 - v54;
  swift_defaultActor_initialize();
  sub_26EF9748C();
  v57 = *(v56 + 104);
  sub_26EF97498();
  sub_26EF78FAC(v58, v59, v60, v47);
  sub_26EF9748C();
  *&v22[*(v61 + 128)] = 0x40F5180000000000;
  sub_26EF97498();
  sub_26EF78FAC(v62, v63, v64, v47);
  sub_26EF97604();
  v65 = *(v50 + 40);
  v105 = v48;
  v65(&v22[v57], v55, v48);
  swift_endAccess();
  sub_26EF9748C();
  *&v22[*(v66 + 112)] = MEMORY[0x277D84F98];
  sub_26EF9BE90();
  sub_26EF9748C();
  (*(v41 + 32))(&v22[*(v67 + 120)], v46, v38);
  if (qword_280E13FC0 != -1)
  {
    sub_26EF974B4();
  }

  v68 = qword_280E13FC8;
  sub_26EF9748C();
  *&v22[*(v69 + 168)] = v68;
  sub_26EF9748C();
  v71 = &v22[*(v70 + 136)];
  v72 = v113;
  *v71 = v113;
  *(v71 + 1) = v27;
  v73 = objc_opt_self();
  v74 = v68;

  v75 = [v73 client];
  sub_26EF9748C();
  *&v22[*(v76 + 144)] = v77;
  sub_26EF9748C();
  v22[*(v78 + 152)] = v107 & 1;
  sub_26EF9748C();
  *&v22[*(v79 + 160)] = v111;
  sub_26EF9748C();
  v81 = &v22[*(v80 + 176)];
  v82 = v116;
  *v81 = v109;
  *(v81 + 1) = v82;
  sub_26EF9748C();
  v84 = &v22[*(v83 + 184)];
  v85 = v114;
  *v84 = v86;
  *(v84 + 1) = v85;
  v88 = v87;

  [v75 refresh];
  sub_26EF9748C();
  v90 = *&v22[*(v89 + 144)];
  sub_26EF97570();
  v91 = sub_26EF9C130();
  v92 = swift_allocObject();
  swift_weakInit();
  v93 = swift_allocObject();
  *(v93 + 16) = v110;
  *(v93 + 24) = *(v112 + 88);
  *(v93 + 32) = v92;
  *(v93 + 40) = v72;
  *(v93 + 48) = v27;
  v94 = v115;
  *(v93 + 56) = v115 & 1;
  v117[4] = sub_26EF96278;
  v117[5] = v93;
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 1107296256;
  v117[2] = sub_26EF937F0;
  v117[3] = &unk_287F047D8;
  v95 = _Block_copy(v117);

  [v90 addUpdateHandlerForNamespaceName:v91 usingBlock:v95];
  _Block_release(v95);
  swift_unknownObjectRelease();

  if (v94)
  {
    sub_26EF9C330();
    v96 = v106;
    sub_26EF97498();
    sub_26EF78FAC(v97, v98, v99, v100);
    sub_26EF976C8();
    v101 = swift_allocObject();
    sub_26EF976D4(v101);
    v102 = sub_26EF97548();
    sub_26EF91110(v102, v103, v96, v104, v95, v105);
  }

  else
  {
  }

  sub_26EF85944();
}

uint64_t sub_26EF93630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a4;
  v7 = *(*a4 + 80);
  type metadata accessor for TUSTrialAssets();
  v8 = sub_26EF9C4D0();
  *(v5 + 24) = v8;
  v9 = *(v8 - 8);
  *(v5 + 32) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF93718, a4, 0);
}

uint64_t sub_26EF93718()
{
  sub_26EF9752C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_26EF943B0();
  v3 = *(v0 + 40);
  if (v1 == 1)
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    sub_26EF9205C(*(v0 + 40));
    v7 = *(v5 + 8);
    v8 = sub_26EF97514();
    v9(v8);

    return MEMORY[0x2822009F8](sub_26EF97464, 0, 0);
  }

  else
  {
    v10 = *(v0 + 40);

    sub_26EF90E3C();

    return v11();
  }
}

uint64_t sub_26EF937F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_26EF93850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_26EF97468, a4, 0);
}

uint64_t TUSTrialNamespaceManager.__allocating_init(namespaceName:trialClient:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_26EF976A0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_26EF9768C();
  TUSTrialNamespaceManager.init(namespaceName:trialClient:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(v14, v15, v16, v17, v18, v19, v20, a8, a9, a10, v22, a8, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  return v13;
}

void TUSTrialNamespaceManager.init(namespaceName:trialClient:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_26EF76E7C();
  v116 = v24;
  v110 = v25;
  v111 = v26;
  v115 = v27;
  v106 = v28;
  v30 = v29;
  v113 = v31;
  v114 = a22;
  v107 = a21;
  v108 = v32;
  v112 = *v23;
  v33 = v112;
  v34 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  sub_26EF97520(v34);
  v36 = *(v35 + 64);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v37);
  v105 = &v104 - v38;
  sub_26EF76AD4();
  v39 = sub_26EF9BEC0();
  v40 = sub_26EF76CFC(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_26EF810E0();
  v47 = v46 - v45;
  v109 = *(v33 + 80);
  type metadata accessor for TUSTrialAssets();
  v48 = sub_26EF975E8();
  sub_26EF76CFC(v48);
  v50 = v49;
  v52 = *(v51 + 64);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v53);
  v55 = &v104 - v54;
  swift_defaultActor_initialize();
  sub_26EF9748C();
  v57 = *(v56 + 104);
  sub_26EF97498();
  sub_26EF78FAC(v58, v59, v60, v22);
  sub_26EF9748C();
  *&v23[*(v61 + 128)] = 0x40F5180000000000;
  sub_26EF97498();
  sub_26EF78FAC(v62, v63, v64, v22);
  sub_26EF97604();
  v65 = *(v50 + 40);
  v104 = v48;
  v65(&v23[v57], v55, v48);
  swift_endAccess();
  sub_26EF9748C();
  *&v23[*(v66 + 112)] = MEMORY[0x277D84F98];
  sub_26EF9BE90();
  sub_26EF9748C();
  (*(v42 + 32))(&v23[*(v67 + 120)], v47, v39);
  if (qword_280E13FC0 != -1)
  {
    sub_26EF974B4();
  }

  sub_26EF9748C();
  *&v23[*(v68 + 168)] = v69;
  sub_26EF9748C();
  v71 = &v23[*(v70 + 136)];
  v72 = v113;
  *v71 = v113;
  *(v71 + 1) = v30;
  sub_26EF9748C();
  v75 = v110;
  v74 = v111;
  *&v23[*(v73 + 144)] = v110;
  sub_26EF9748C();
  v23[*(v76 + 152)] = v106 & 1;
  sub_26EF9748C();
  *&v23[*(v77 + 160)] = v74;
  sub_26EF9748C();
  v79 = &v23[*(v78 + 176)];
  v80 = v116;
  *v79 = v108;
  *(v79 + 1) = v80;
  sub_26EF9748C();
  v82 = &v23[*(v81 + 184)];
  v83 = v114;
  *v82 = v84;
  *(v82 + 1) = v83;
  v86 = v85;

  v87 = v75;
  v88 = v74;

  [v87 refresh];
  v89 = sub_26EF9C130();
  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  *(v91 + 16) = v109;
  *(v91 + 24) = *(v112 + 88);
  *(v91 + 32) = v90;
  *(v91 + 40) = v72;
  *(v91 + 48) = v30;
  v92 = v115;
  *(v91 + 56) = v115 & 1;
  v117[4] = sub_26EF96380;
  v117[5] = v91;
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 1107296256;
  v117[2] = sub_26EF937F0;
  v117[3] = &unk_287F04850;
  v93 = _Block_copy(v117);

  v94 = [v87 addUpdateHandlerForNamespaceName:v89 usingBlock:v93];
  _Block_release(v93);
  swift_unknownObjectRelease();

  if (v92)
  {
    sub_26EF9C330();
    v95 = v105;
    sub_26EF97498();
    sub_26EF78FAC(v96, v97, v98, v99);
    sub_26EF976C8();
    v100 = swift_allocObject();
    sub_26EF976D4(v100);
    v101 = sub_26EF97548();
    sub_26EF91110(v101, v102, v95, v103, v93, v104);
  }

  else
  {
  }

  sub_26EF85944();
}

void sub_26EF93E40()
{
  sub_26EF76E7C();
  v1 = v0;
  v3 = v2;
  v37 = v4;
  v6 = v5;
  v7 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  sub_26EF97520(v7);
  v9 = *(v8 + 64);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_26EF9C030();
  v12 = sub_26EF76CFC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_26EF810E0();
  v19 = v18 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v36 = v11;
    sub_26EF9C020();

    swift_unknownObjectRetain();
    v22 = sub_26EF9C010();
    v23 = sub_26EF9C370();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v22, v23))
    {
      v35 = v1;
      v24 = sub_26EF9757C();
      v38[0] = sub_26EF801A8();
      *v24 = 136315394;
      *(v24 + 4) = sub_26EF7E624(v37, v3, v38);
      *(v24 + 12) = 2080;
      v25 = [v6 description];
      v26 = sub_26EF9C160();
      v28 = v27;

      v29 = sub_26EF7E624(v26, v28, v38);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_26EF75000, v22, v23, "TrialNamespaceManager for Trial namespace %s received new configuration for %s", v24, 0x16u);
      swift_arrayDestroy();
      sub_26EF76AF4();
      v1 = v35;
      sub_26EF76AF4();
    }

    (*(v14 + 8))(v19, v36);
    sub_26EF9C330();
    sub_26EF97498();
    sub_26EF78FAC(v30, v31, v32, v33);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v21;
    *(v34 + 40) = v1 & 1;
    sub_26EF90E54();
  }

  sub_26EF85944();
}

uint64_t sub_26EF94120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a4;
  v7 = *(*a4 + 80);
  type metadata accessor for TUSTrialAssets();
  v8 = sub_26EF9C4D0();
  *(v5 + 24) = v8;
  v9 = *(v8 - 8);
  *(v5 + 32) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF94208, a4, 0);
}

uint64_t sub_26EF94208()
{
  sub_26EF9752C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_26EF943B0();
  v3 = *(v0 + 40);
  if (v1 == 1)
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    sub_26EF9205C(*(v0 + 40));
    v7 = *(v5 + 8);
    v8 = sub_26EF97514();
    v9(v8);

    return MEMORY[0x2822009F8](sub_26EF942E0, 0, 0);
  }

  else
  {
    v10 = *(v0 + 40);

    sub_26EF90E3C();

    return v11();
  }
}

uint64_t sub_26EF942E0()
{
  sub_26EF76E54();
  v1 = *(v0 + 40);

  sub_26EF90E3C();

  return v2();
}

uint64_t sub_26EF94338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_26EF94358, a4, 0);
}

uint64_t sub_26EF94358()
{
  sub_26EF76E54();
  v1 = *(v0 + 24);
  sub_26EF9205C(*(v0 + 16));
  sub_26EF90E3C();

  return v2();
}

uint64_t sub_26EF943B0()
{
  v1 = *v0;
  v2 = sub_26EF9BEC0();
  v3 = sub_26EF97520(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_26EF810E0();
  v8 = v7 - v6;
  v9 = *(v1 + 80);
  type metadata accessor for TUSTrialAssets();
  v10 = sub_26EF975E8();
  sub_26EF97520(v10);
  v12 = *(v11 + 64);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_26EF97498();
  sub_26EF78FAC(v16, v17, v18, v1);
  sub_26EF91E1C(v15);
  sub_26EF9BE90();
  sub_26EF91FD4(v8);
  return sub_26EF91EF8(MEMORY[0x277D84F98]);
}

uint64_t TUSTrialNamespaceManager.deinit()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = sub_26EF9761C();
  sub_26EF76EA0(v3);
  (*(v4 + 8))(v0 + v1);
  sub_26EF9748C();
  v6 = *(v0 + *(v5 + 112));

  sub_26EF9748C();
  v8 = *(v7 + 120);
  v9 = sub_26EF9BEC0();
  sub_26EF76EA0(v9);
  (*(v10 + 8))(v0 + v8);
  sub_26EF9748C();
  v12 = *(v0 + *(v11 + 136) + 8);

  sub_26EF9748C();

  sub_26EF9748C();
  sub_26EF9748C();

  sub_26EF9748C();
  v17 = *(v0 + *(v16 + 176) + 8);

  sub_26EF9748C();
  v19 = *(v0 + *(v18 + 184) + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TUSTrialNamespaceManager.__deallocating_deinit()
{
  TUSTrialNamespaceManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26EF94660()
{
  sub_26EF76E54();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  sub_26EF9748C();
  v1[8] = v4;
  v5 = sub_26EF9C030();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  sub_26EF97520(v8);
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF9479C, v0, 0);
}

uint64_t sub_26EF9479C()
{
  v115 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_26EF91EB4();
  sub_26EF97680();
  v7 = sub_26EF7B030(v4, v5, v6);

  if (v7)
  {
    v8 = v0[11];
    v10 = v0[6];
    v9 = v0[7];

    sub_26EF9C020();

    v11 = sub_26EF9C010();
    v12 = sub_26EF9C380();

    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[9];
    if (v13)
    {
      v17 = v0[7];
      v110 = v0[6];
      v18 = v0[5];
      v19 = sub_26EF9757C();
      v114 = sub_26EF801A8();
      *v19 = 136315394;
      v20 = sub_26EF7E624(*(v17 + *(*v17 + 136)), *(v17 + *(*v17 + 136) + 8), &v114);
      sub_26EF97538(v20);
      *(v19 + 14) = sub_26EF7E624(v18, v110, &v114);
      _os_log_impl(&dword_26EF75000, v11, v12, "Skipping download %s for factor %s since task has already kicked off for this", v19, 0x16u);
      sub_26EF975B0();
      sub_26EF76AF4();
      sub_26EF974F0();
    }

    v21 = *(v15 + 8);
    v22 = sub_26EF97514();
    v23(v22);
  }

  else
  {
    v31 = v0[6];
    v32 = v0[7];
    v33 = v0[5];
    v34 = *(v32 + *(*v32 + 144));
    v35 = sub_26EF9C130();
    v36 = (v32 + *(*v32 + 136));
    v38 = *v36;
    v37 = v36[1];
    v39 = sub_26EF9C130();
    v40 = [v34 levelForFactor:v35 withNamespaceName:v39];

    if (v40)
    {
      v41 = [v40 levelOneOfCase];
      v42 = &selRef_fileValue;
      if (v41 != 100)
      {
        v42 = &selRef_directoryValue;
      }

      v43 = [v40 *v42];
      if (v43)
      {
        v44 = v43;
        if ([v43 isOnDemand])
        {
          v45 = v0[15];
          v46 = v0[7];
          v47 = v0[8];
          v49 = v0[5];
          v48 = v0[6];
          sub_26EF9C330();
          sub_26EF97498();
          sub_26EF78FAC(v50, v51, v52, v53);
          v54 = *(v47 + 80);
          v55 = *(v47 + 88);
          type metadata accessor for TUSTrialNamespaceManager();
          WitnessTable = swift_getWitnessTable();
          v57 = swift_allocObject();
          v57[2] = v46;
          v57[3] = WitnessTable;
          v57[4] = v46;
          v57[5] = v49;
          v57[6] = v48;
          swift_retain_n();

          sub_26EF97548();
          sub_26EF90E54();
          v58 = *(*v46 + 112);
          sub_26EF97604();
          v59 = *(v46 + v58);
          swift_isUniquelyReferenced_nonNull_native();
          v114 = *(v46 + v58);
          v60 = sub_26EF97570();
          sub_26EF96C60(v60, v61, v48);
          *(v46 + v58) = v114;
          swift_endAccess();
        }

        else
        {
          v92 = v0[14];
          v94 = v0[6];
          v93 = v0[7];
          sub_26EF9C020();

          v95 = sub_26EF9C010();
          v96 = sub_26EF9C390();

          v97 = os_log_type_enabled(v95, v96);
          v98 = v0[14];
          v100 = v0[9];
          v99 = v0[10];
          if (v97)
          {
            v106 = v0[5];
            v108 = v0[6];
            v113 = v0[9];
            v101 = sub_26EF9757C();
            v102 = sub_26EF801A8();
            v114 = v102;
            *v101 = 136315394;
            *(v101 + 4) = sub_26EF97594(v102, v103, v104, v105);
            *(v101 + 12) = 2080;
            *(v101 + 14) = sub_26EF7E624(v106, v108, &v114);
            _os_log_impl(&dword_26EF75000, v95, v96, "Namespace %s factor %s is not on demand so we can't explicitly download it", v101, 0x16u);
            sub_26EF975B0();
            sub_26EF76AF4();
            sub_26EF76AF4();

            (*(v99 + 8))(v98, v113);
          }

          else
          {

            (*(v99 + 8))(v98, v100);
          }
        }
      }

      else
      {
        v77 = v0[13];
        v79 = v0[6];
        v78 = v0[7];
        sub_26EF9C020();

        v80 = sub_26EF9C010();
        v81 = sub_26EF9C390();

        v82 = os_log_type_enabled(v80, v81);
        v83 = v0[13];
        v84 = v0[9];
        v85 = v0[10];
        if (v82)
        {
          v107 = v0[6];
          v112 = v0[13];
          v86 = v0[5];
          v87 = sub_26EF9757C();
          v88 = sub_26EF801A8();
          v114 = v88;
          *v87 = 136315394;
          *(v87 + 4) = sub_26EF97594(v88, v89, v90, v91);
          *(v87 + 12) = 2080;
          *(v87 + 14) = sub_26EF7E624(v86, v107, &v114);
          _os_log_impl(&dword_26EF75000, v80, v81, "Namespace %s factor %s could not get file / directory from level", v87, 0x16u);
          sub_26EF975B0();
          sub_26EF76AF4();
          sub_26EF76AF4();

          (*(v85 + 8))(v112);
        }

        else
        {

          (*(v85 + 8))(v83);
        }
      }
    }

    else
    {
      v62 = v0[12];
      v64 = v0[6];
      v63 = v0[7];
      sub_26EF9C020();

      v65 = sub_26EF9C010();
      v66 = sub_26EF9C390();

      v67 = os_log_type_enabled(v65, v66);
      v68 = v0[12];
      v70 = v0[9];
      v69 = v0[10];
      if (v67)
      {
        v71 = v0[5];
        v109 = v0[6];
        v111 = v0[12];
        v72 = sub_26EF9757C();
        v73 = sub_26EF801A8();
        v114 = v73;
        *v72 = 136315394;
        *(v72 + 4) = sub_26EF97594(v73, v74, v75, v76);
        *(v72 + 12) = 2080;
        *(v72 + 14) = sub_26EF7E624(v71, v109, &v114);
        _os_log_impl(&dword_26EF75000, v65, v66, "Namespace %s factor %s does not have level", v72, 0x16u);
        swift_arrayDestroy();
        sub_26EF76AF4();
        sub_26EF76AF4();

        (*(v69 + 8))(v111, v70);
      }

      else
      {

        (*(v69 + 8))(v68, v70);
      }
    }
  }

  v25 = v0[14];
  v24 = v0[15];
  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[11];

  sub_26EF90E3C();

  return v29();
}

uint64_t sub_26EF94ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  v8 = sub_26EF9C030();
  v6[27] = v8;
  v9 = *(v8 - 8);
  v6[28] = v9;
  v10 = *(v9 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF94FB8, a4, 0);
}

uint64_t sub_26EF94FB8()
{
  v36 = v0;
  v1 = v0[24];
  if (*(v1 + *(*v1 + 152)))
  {
    v2 = v0[30];
    v3 = v0[26];
    sub_26EF9C020();

    v4 = sub_26EF9C010();
    v5 = sub_26EF9C370();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[30];
    v8 = v0[27];
    v9 = v0[28];
    if (v6)
    {
      v11 = v0[25];
      v10 = v0[26];
      v12 = sub_26EF800C0();
      v13 = sub_26EF76D7C();
      v35 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_26EF7E624(v11, v10, &v35);
      _os_log_impl(&dword_26EF75000, v4, v5, "Skipping factor %s download since manager is in spectator mode", v12, 0xCu);
      sub_26EF79770(v13);
      sub_26EF76AF4();
      sub_26EF76AF4();
    }

    v14 = *(v9 + 8);
    v15 = sub_26EF97514();
    v16(v15);
    v18 = v0[30];
    v17 = v0[31];
    v19 = v0[29];

    sub_26EF90E3C();

    return v20();
  }

  else
  {
    v22 = v0[25];
    v23 = v0[26];
    v34 = *(v1 + *(*v1 + 144));
    sub_26EF784C0(&qword_2806CFD20, &unk_26EF9DE40);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26EF9E430;
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;

    v25 = sub_26EF9C2D0();
    v0[32] = v25;

    v26 = (v1 + *(*v1 + 136));
    v0[33] = *v26;
    v0[34] = v26[1];
    v27 = sub_26EF9C130();
    v0[35] = v27;
    v33 = *(v1 + *(*v1 + 168));
    v28 = *(v1 + *(*v1 + 160));
    sub_26EF976C8();
    v29 = swift_allocObject();
    v29[2] = v1;
    v29[3] = v22;
    v29[4] = v23;
    v0[22] = sub_26EF96EFC;
    v0[23] = v29;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_26EF95B7C;
    v0[21] = &unk_287F04AF0;
    v30 = _Block_copy(v0 + 18);
    v0[36] = v30;
    v31 = v0[23];

    v0[2] = v0;
    v0[7] = v0 + 38;
    v0[3] = sub_26EF953EC;
    v32 = swift_continuation_init();
    v0[17] = sub_26EF784C0(&qword_2806CFF30, &unk_26EF9F060);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26EF95BD0;
    v0[13] = &unk_287F04B18;
    v0[14] = v32;
    [v34 downloadLevelsForFactors:v25 withNamespace:v27 queue:v33 options:v28 progress:v30 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_26EF953EC()
{
  sub_26EF76E54();
  sub_26EF97558();
  v1 = *v0;
  v3 = v2[6];
  v2[37] = v3;
  v4 = v2[24];
  if (v3)
  {
    v5 = sub_26EF956FC;
  }

  else
  {
    v5 = sub_26EF95504;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26EF95504()
{
  v35 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 304);
  _Block_release(*(v0 + 288));

  sub_26EF9C020();

  v7 = sub_26EF9C010();
  v8 = sub_26EF9C370();

  if (os_log_type_enabled(v7, v8))
  {
    v31 = v6;
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = *(v0 + 224);
    v32 = *(v0 + 216);
    v33 = *(v0 + 248);
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v14 = swift_slowAlloc();
    v34 = sub_26EF801A8();
    *v14 = 136315650;
    v15 = sub_26EF97570();
    v18 = sub_26EF7E624(v15, v16, v17);
    sub_26EF97538(v18);
    *(v14 + 14) = sub_26EF7E624(v13, v12, &v34);
    *(v14 + 22) = 1024;
    *(v14 + 24) = v31;
    _os_log_impl(&dword_26EF75000, v7, v8, "Namespace %s factor %s download success %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    sub_26EF76AF4();
    sub_26EF974F0();

    (*(v11 + 8))(v33, v32);
  }

  else
  {
    v19 = *(v0 + 248);
    v20 = *(v0 + 216);
    v21 = *(v0 + 224);

    v22 = *(v21 + 8);
    v23 = sub_26EF97514();
    v24(v23);
  }

  v25 = *(v0 + 192);
  sub_26EF943B0();
  v27 = *(v0 + 240);
  v26 = *(v0 + 248);
  v28 = *(v0 + 232);

  sub_26EF90E3C();

  return v29();
}

uint64_t sub_26EF956FC()
{
  v34 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[24];
  swift_willThrow();
  _Block_release(v2);

  sub_26EF9C020();

  v8 = v1;
  v9 = sub_26EF9C010();
  v10 = sub_26EF9C390();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[37];
  if (v11)
  {
    v13 = v0[33];
    v14 = v0[34];
    v31 = v0[27];
    v32 = v0[29];
    v29 = v0[26];
    v30 = v0[28];
    v15 = v0[25];
    v16 = sub_26EF76D7C();
    v17 = swift_slowAlloc();
    v33[0] = sub_26EF801A8();
    *v16 = 136315650;
    v18 = sub_26EF7E624(v13, v14, v33);
    sub_26EF97538(v18);
    *(v16 + 14) = sub_26EF7E624(v15, v29, v33);
    *(v16 + 22) = 2112;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v20;
    *v17 = v20;
    _os_log_impl(&dword_26EF75000, v9, v10, "Namespace %s factor %s download error: %@", v16, 0x20u);
    sub_26EF97330(v17, &qword_2806CFF10, &qword_26EF9EE08);
    sub_26EF76AF4();
    swift_arrayDestroy();
    sub_26EF76AF4();
    sub_26EF974F0();

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[30];
  v24 = v0[31];
  v26 = v0[29];

  sub_26EF90E3C();

  return v27();
}

uint64_t sub_26EF95968(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_26EF9C030();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF9C020();

  v13 = sub_26EF9C010();
  v14 = sub_26EF9C370();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v19 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_26EF7E624(*(a2 + *(*a2 + 136)), *(a2 + *(*a2 + 136) + 8), &v20);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_26EF7E624(a3, a4, &v20);
    *(v16 + 22) = 2048;
    *(v16 + 24) = v19;
    _os_log_impl(&dword_26EF75000, v13, v14, "Download %s for factor %s download %ld%%", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743859D0](v17, -1, -1);
    MEMORY[0x2743859D0](v16, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26EF95B7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_26EF95BD0(uint64_t a1, char a2, void *a3)
{
  v5 = sub_26EF96F34((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_26EF95C54(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_26EF95CC0(v9, a2);
  }
}

uint64_t sub_26EF95C54(uint64_t a1, uint64_t a2)
{
  sub_26EF784C0(&qword_2806CFD88, &qword_26EF9E3C8);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_26EF95CE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26EF95D84;

  return sub_26EF94660();
}

uint64_t sub_26EF95D84()
{
  sub_26EF76E54();
  sub_26EF97558();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_26EF76B18();
  *v4 = v3;

  sub_26EF90E3C();

  return v5();
}

uint64_t sub_26EF95E64@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF95F50(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26EF9745C;

  return v7(a1);
}

uint64_t sub_26EF96048(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26EF96140;

  return v7(a1);
}

uint64_t sub_26EF96140()
{
  sub_26EF76E54();
  sub_26EF97558();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_26EF76B18();
  *v4 = v3;

  sub_26EF90E3C();

  return v5();
}

unint64_t sub_26EF96224()
{
  result = qword_2806CFF18;
  if (!qword_2806CFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CFF18);
  }

  return result;
}

uint64_t sub_26EF96298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26EF962B0()
{
  sub_26EF9752C();
  sub_26EF974A4();
  v1 = swift_task_alloc();
  v2 = sub_26EF76B28(v1);
  *v2 = v3;
  v4 = sub_26EF97474(v2);

  return sub_26EF93850(v4, v5, v6, v0);
}

uint64_t sub_26EF96340()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

void sub_26EF963A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_26EF93E40();
}

uint64_t sub_26EF963DC()
{
  sub_26EF9752C();
  sub_26EF974A4();
  v1 = swift_task_alloc();
  v2 = sub_26EF76B28(v1);
  *v2 = v3;
  v4 = sub_26EF97474(v2);

  return sub_26EF94338(v4, v5, v6, v0);
}

void sub_26EF96488(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_26EF96890(319, &qword_280E13E70, &qword_280E13E78, 0x277D737D8);
    if (v3 <= 0x3F)
    {
      sub_26EF96890(319, &qword_280E13E60, &qword_280E13E68, 0x277D736D0);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26EF96558(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return sub_26EF7EC68(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26EF966A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v17 = a2;
            }
          }

          else
          {

            sub_26EF78FAC(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_26EF96890(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_26EF797BC(255, a3, a4);
    v5 = sub_26EF9C4D0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26EF968E8(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for TUSTrialAssets();
  result = sub_26EF9C4D0();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_26EF9BEC0();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TUSTrialNameSpaceError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_26EF96B60()
{
  result = qword_2806CFF20;
  if (!qword_2806CFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CFF20);
  }

  return result;
}

uint64_t sub_26EF96BB4()
{
  sub_26EF97564();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_26EF76B28(v6);
  *v7 = v8;
  v9 = sub_26EF97474(v7);

  return sub_26EF94ED8(v9, v10, v11, v3, v4, v5);
}

uint64_t sub_26EF96C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26EF78F34(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_26EF784C0(&qword_2806CFF28, &qword_26EF9F038);
  if ((sub_26EF9C620() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_26EF78F34(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_26EF9C840();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_26EF96D9C(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_26EF96D9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_26EF96DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF96E54()
{
  sub_26EF9752C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_26EF76B28(v3);
  *v4 = v5;
  v4[1] = sub_26EF97460;
  v6 = sub_26EF76DB0();

  return v7(v6, v2, v1);
}

void *sub_26EF96F34(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26EF96F78()
{
  sub_26EF97564();
  sub_26EF9766C();
  v2 = swift_task_alloc();
  v3 = sub_26EF76B28(v2);
  *v3 = v4;
  v5 = sub_26EF97474(v3);

  return sub_26EF94120(v5, v6, v7, v1, v0);
}

uint64_t sub_26EF97014()
{
  sub_26EF97564();
  sub_26EF974A4();
  v3 = swift_task_alloc();
  v4 = sub_26EF76B28(v3);
  *v4 = v5;
  v4[1] = sub_26EF97460;
  v6 = sub_26EF76DB0();

  return v7(v6, v2, v0, v1);
}

uint64_t sub_26EF970C4()
{
  sub_26EF97564();
  sub_26EF974A4();
  v3 = swift_task_alloc();
  v4 = sub_26EF76B28(v3);
  *v4 = v5;
  v4[1] = sub_26EF95D84;
  v6 = sub_26EF76DB0();

  return v7(v6, v2, v0, v1);
}

uint64_t sub_26EF97174(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t sub_26EF971D8()
{
  sub_26EF97564();
  sub_26EF9766C();
  v2 = swift_task_alloc();
  v3 = sub_26EF76B28(v2);
  *v3 = v4;
  v5 = sub_26EF97474(v3);

  return sub_26EF93630(v5, v6, v7, v1, v0);
}

unint64_t sub_26EF97274()
{
  result = qword_280E14388;
  if (!qword_280E14388)
  {
    sub_26EF9C490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E14388);
  }

  return result;
}

unint64_t sub_26EF972CC()
{
  result = qword_280E14398;
  if (!qword_280E14398)
  {
    sub_26EF7948C(&unk_2806CFE60, qword_26EF9ED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E14398);
  }

  return result;
}

uint64_t sub_26EF97330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_26EF784C0(a2, a3);
  sub_26EF76EA0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26EF97388(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26EF973A0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26EF973F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_26EF974A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_26EF974B4()
{

  return swift_once();
}

void sub_26EF974F0()
{

  JUMPOUT(0x2743859D0);
}

uint64_t sub_26EF97538(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_26EF9757C()
{

  return swift_slowAlloc();
}

uint64_t sub_26EF97594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_26EF7E624(v5, v4, va);
}

uint64_t sub_26EF975B0()
{

  return swift_arrayDestroy();
}

uint64_t sub_26EF975CC()
{

  return swift_beginAccess();
}

uint64_t sub_26EF975E8()
{

  return sub_26EF9C4D0();
}

uint64_t sub_26EF97604()
{

  return swift_beginAccess();
}

uint64_t sub_26EF9761C()
{
  type metadata accessor for TUSTrialAssets();

  return sub_26EF9C4D0();
}

void sub_26EF9766C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
}

uint64_t sub_26EF976D4(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

id sub_26EF976F4()
{
  v0 = sub_26EF9C130();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

void __swiftcall WordPieceTokenizer.init(path:)(TextUnderstandingShared::WordPieceTokenizer_optional *__return_ptr retstr, Swift::String path)
{
  object = path._object;
  countAndFlagsBits = path._countAndFlagsBits;
  v5 = sub_26EF9C030();
  v6 = sub_26EF76D64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_26EF97E00();
  sub_26EF797BC(0, &unk_280E13E80, off_279DBB258);

  v11 = sub_26EF97B38();
  if (v11)
  {
    v12 = v11;

    v13 = [objc_allocWithZone(WordPieceTokenizerObjc) initWithVocab_];
  }

  else
  {
    sub_26EF9C020();

    v14 = sub_26EF9C010();
    v15 = sub_26EF9C390();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      v18 = sub_26EF7E624(countAndFlagsBits, object, &v19);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_26EF75000, v14, v15, "Could not create burst trie dictionary for path %s", v16, 0xCu);
      sub_26EF79770(v17);
      MEMORY[0x2743859D0](v17, -1, -1);
      MEMORY[0x2743859D0](v16, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))();
    v13 = 0;
  }

  retstr->value.tokenizer.super.isa = v13;
}

id sub_26EF97B38()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26EF9C130();

  v2 = [v0 initWithPath_];

  return v2;
}

void __swiftcall WordPieceTokenizer.encode(text:)(TextUnderstandingShared::TokenizerOutput *__return_ptr retstr, Swift::String text)
{
  v4 = *v2;
  v15 = sub_26EF9C1B0();
  v16 = v5;
  v14 = sub_26EF76DBC();
  v13 = MEMORY[0x277D837D0];
  v6 = sub_26EF9C530();
  v8 = v7;

  v9 = sub_26EF9C130();
  v10 = [v4 tokenize:v9 withLength:{512, v13, v14, v14, v14, 32, 0xE100000000000000, 10, 0xE100000000000000, v15, v16}];

  [v4 padId];
  v17.super.isa = v10;
  v17._tokenIds = v6;
  v17._tokenRanges = v8;
  TokenizerOutput.init(tokenizerOutputObjc:padId:processedInput:)(retstr, v17, v12, v11);
}

uint64_t sub_26EF97CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_26EF9C130();

  v7 = sub_26EF9C130();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_26EF9C160();

  return v9;
}

uint64_t sub_26EF97D74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EF97DB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26EF987A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26EF987CC(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if ([*(result + 240) containsIndex:*(result + 184)])
    {
      v2 = [*(v1 + 248) lastObject];
      v3 = sub_26EF98BE0(v1);
      v30.location = [v2 range];
      v31.location = v3;
      v31.length = 0;
      v4 = NSUnionRange(v30, v31);
      v5 = [_TXHtmlParserHyperlink alloc];
      v6 = [v2 url];
      v7 = [(_TXHtmlParserHyperlink *)v5 initWithURL:v6 range:v4.location, v4.length];
      v8 = [(_TXHtmlParserHyperlink *)v7 range];
      if (HIDWORD(v8))
      {
        v10 = 0;
      }

      else
      {
        v10 = HIDWORD(v9) == 0;
      }

      if (v10)
      {
        CFArrayAppendValue(*(v1 + 264), (v8 | (v9 << 32)));
        v11 = *(v1 + 256);
        v12 = [(_TXHtmlParserHyperlink *)v7 url];
        [v11 addObject:v12];
      }

      [*(v1 + 248) removeLastObject];
      [*(v1 + 240) removeIndex:*(v1 + 184)];
    }

    result = [*(v1 + 192) containsIndex:*(v1 + 184)];
    if (result)
    {
      v13 = [*(v1 + 208) lastObject];
      v14 = [v13 unsignedIntegerValue];

      v15 = *(v1 + 112);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = [*(v1 + 216) lastObject];
      v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = v15 - v14;
        v20 = *v25;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v24 + 1) + 8 * i);
            [v22 addIndexesInRange:{v14, v19}];
            [*(v1 + 200) removeObject:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v18);
      }

      [*(v1 + 192) removeIndex:*(v1 + 184)];
      [*(v1 + 208) removeLastObject];
      result = [*(v1 + 216) removeLastObject];
    }

    --*(v1 + 184);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26EF98A34(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 128) length])
    {
      v2 = objc_autoreleasePoolPush();
      v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:*(a1 + 128) encoding:4];
      if (v3)
      {
        if ((*(a1 + 145) & 1) == 0)
        {
          v6 = v3;
          v4 = _PASCollapseWhitespaceAndStrip();

          v3 = v4;
        }

        v7 = v3;
        if ([(__CFString *)v3 length])
        {
          *(a1 + 120) = 0;
        }
      }

      else
      {
        v7 = &stru_287F04D80;
      }

      objc_autoreleasePoolPop(v2);
    }

    else
    {
      v7 = &stru_287F04D80;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
      [*(a1 + 24) addObject:v7];
      v5 = *(a1 + 112) + [(__CFString *)v7 length];
      *(a1 + 120) = 1;
      *(a1 + 112) = v5 + 1;
    }

    [*(a1 + 128) setLength:0];
  }
}

_TXHtmlParserHyperlink *sub_26EF98B4C(uint64_t a1, CFIndex a2)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), a2);
  v6 = [[_TXHtmlParserHyperlink alloc] initWithURL:v4 range:ValueAtIndex, HIDWORD(ValueAtIndex)];

  return v6;
}

uint64_t sub_26EF98BE0(uint64_t a1)
{
  v2 = *(a1 + 112);
  if ([*(a1 + 128) length])
  {
    v3 = [MEMORY[0x277CCACA8] _pas_stringWithDataNoCopy:*(a1 + 128) encoding:4 nullTerminated:0];
    if (v3)
    {
      v4 = v3;
      if (![v3 length] || (*(a1 + 145) & 1) != 0)
      {
        v6 = v4;
      }

      else
      {
        v5 = [v4 characterAtIndex:{objc_msgSend(v4, "length") - 1}];
        v6 = _PASCollapseWhitespaceAndStrip();

        v2 += [v6 length];
        if ([v6 length] && objc_msgSend(v6, "characterAtIndex:", objc_msgSend(v6, "length") - 1) != v5)
        {
          ++v2;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v2;
}

unint64_t sub_26EF98CC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = a4 - 1;
    while (1)
    {
      v10 = *(*(v6[5] + 8) + 24);
      v11 = *(a2 + v8);
      if (v10 > 3)
      {
        if (v10 > 5)
        {
          if (v10 == 6)
          {
            result = (v11 & 0x80000000) != 0 ? __maskrune(*(a2 + v8), 0x4000uLL) : *(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x4000u;
            v10 = v11 == 62 ? 7 : 0;
            if (result)
            {
              v10 = 6;
            }
          }
        }

        else
        {
          v15 = (v11 & 0xFFFFFFDF) == 0x4D ? 5 : 0;
          v16 = (v11 & 0xFFFFFFDF) == 0x4C ? 6 : 0;
          v10 = v10 == 4 ? v15 : v16;
        }
      }

      else
      {
        if ((v11 & 0xFFFFFFDF) == 0x48)
        {
          v12 = 3;
        }

        else
        {
          v12 = 0;
        }

        v13 = 4 * ((v11 & 0xFFFFFFDF) == 84);
        if (v10 == 2)
        {
          v13 = v12;
        }

        v14 = v11 == 60;
        if (v10)
        {
          v14 = 2 * (v11 == 47);
        }

        v10 = v10 <= 1 ? v14 : v13;
      }

      *(*(v6[5] + 8) + 24) = v10;
      v17 = *(v6[5] + 8);
      v18 = *(v17 + 24);
      if (v18 == 7)
      {
        break;
      }

      if (v8 == v9 || (v8 - v7) > 0x7CF)
      {
        goto LABEL_35;
      }

      ++v8;
LABEL_42:
      if (v8 == a4)
      {
        return result;
      }
    }

    *(v17 + 24) = 0;
LABEL_35:
    *(v6[4] + 176) = v6[7] + v7;
    *(v6[4] + 8) = a2 + v7;
    *(v6[4] + 16) = ++v8 - v7;
    v19 = v6[4];
    v20 = *(v19 + 16);
    if (v20 >> 31)
    {
      __assert_rtn("[_TXHtmlParser _consumeHtmlDataEnumerator:]_block_invoke", "_TXHtmlParser.m", 343, "_chunkLength <= INT_MAX");
    }

    result = htmlParseChunk(*(v19 + 136), *(v19 + 8), v20, v18 == 7);
    if (v18 == 7)
    {
      result = sub_26EF98ECC(v6[4]);
      *(*(v6[6] + 8) + 24) = v8;
    }

    v7 = v8;
    goto LABEL_42;
  }

  return result;
}

void *sub_26EF98ECC(void *user_data)
{
  if (user_data)
  {
    v1 = user_data;
    if (user_data[17])
    {
      MEMORY[0x274385270]();
    }

    PushParserCtxt = htmlCreatePushParserCtxt(&stru_282040928, v1, 0, 0, 0, XML_CHAR_ENCODING_UTF8);
    v1[17] = PushParserCtxt;

    return htmlCtxtUseOptions(PushParserCtxt, 2164993);
  }

  return user_data;
}

void sub_26EF98F3C(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (v5 && a3 && a2 && (v5[18] & 1) == 0)
  {
    v6 = v5;
    [v5[16] appendBytes:a2 length:a3];
    v5 = v6;
  }
}

void sub_26EF98FA8(void *a1, uint64_t a2)
{
  v6 = a1;
  if (!strcmp(a2, "title") || !strcmp(a2, "script") || !strcmp(a2, "style"))
  {
    v4 = v6;
    if (v6)
    {
      v6[144] = 0;
    }
  }

  else if (*a2 == 98 && *(a2 + 1) == 114 && !*(a2 + 2))
  {
    v4 = v6;
    if (v6)
    {
      v6[120] = 0;
      sub_26EF98A34(v6);
      v4 = v6;
    }
  }

  else
  {
    v3 = htmlTagLookup(a2);
    v4 = v6;
    if (v3)
    {
      if (!v3->isinline)
      {
        v5 = strcmp(a2, "pre");
        sub_26EF98A34(v6);
        v4 = v6;
        if (v6)
        {
          if (!v5 && v6[145] == 1)
          {
            v6[145] = 0;
          }
        }
      }
    }
  }

  sub_26EF987CC(v4);
}

void sub_26EF990CC(void *a1, uint64_t a2, uint64_t a3)
{
  v110 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    ++v5[23];
  }

  if (!strcmp(a2, "title") || !strcmp(a2, "script") || !strcmp(a2, "style"))
  {
    if (v6)
    {
      *(v6 + 144) = 1;
    }
  }

  else if (*a2 != 98 || *(a2 + 1) != 114 || *(a2 + 2))
  {
    v7 = htmlTagLookup(a2);
    if (v7)
    {
      if (!v7->isinline)
      {
        v8 = strcmp(a2, "pre");
        if (v6 && !v8)
        {
          *(v6 + 145) = 1;
        }

        sub_26EF98A34(v6);
        if (!strcmp(a2, "table"))
        {
          if (!v6)
          {
            goto LABEL_155;
          }

          v24 = *(v6 + 160);
        }

        else
        {
          if (strcmp(a2, "blockquote"))
          {
            if (!strcmp(a2, "div"))
            {
              if (a3)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v9 = strcmp(a2, "pre");
              if (a3 && !v9)
              {
LABEL_19:
                v10 = *a3;
                while (1)
                {
                  if (!strcmp(v10, "class"))
                  {
                    v12 = *(a3 + 8);
                    if (v12)
                    {
                      if (!strcmp(a2, "div") && (strstr(v12, "gmail_quote") || strstr(v12, "yahoo_quoted") || !strcmp(v12, "domino-section")))
                      {
                        goto LABEL_100;
                      }

                      v93 = 0u;
                      v94 = 0u;
                      v91 = 0u;
                      v92 = 0u;
                      v13 = [&unk_287F060E8 countByEnumeratingWithState:&v91 objects:buffer count:16];
                      if (v13)
                      {
                        break;
                      }
                    }
                  }

LABEL_21:
                  v11 = *(a3 + 16);
                  a3 += 16;
                  v10 = v11;
                  if (!v11)
                  {
                    goto LABEL_155;
                  }
                }

                v14 = v13;
                v15 = *v92;
LABEL_30:
                v16 = 0;
                while (1)
                {
                  if (*v92 != v15)
                  {
                    objc_enumerationMutation(&unk_287F060E8);
                  }

                  if (strstr(v12, [*(*(&v91 + 1) + 8 * v16) UTF8String]))
                  {
                    break;
                  }

                  if (v14 == ++v16)
                  {
                    v14 = [&unk_287F060E8 countByEnumeratingWithState:&v91 objects:buffer count:16];
                    if (v14)
                    {
                      goto LABEL_30;
                    }

                    goto LABEL_21;
                  }
                }

                if (!v6)
                {
                  goto LABEL_155;
                }

                v24 = *(v6 + 168);
                goto LABEL_105;
              }
            }

            if (*a2 == 104 && *(a2 + 1) == 114 && a3 && !*(a2 + 2))
            {
              v52 = *a3;
              v51 = (a3 + 16);
              v50 = v52;
              while (1)
              {
                if (*v50 == 105 && v50[1] == 100 && !v50[2])
                {
                  v53 = *(v51 - 1);
                  if (v53)
                  {
                    if (!strcmp(v53, "stopSpelling"))
                    {
                      break;
                    }
                  }
                }

                v54 = *v51;
                v51 += 2;
                v50 = v54;
                if (!v54)
                {
                  goto LABEL_155;
                }
              }

              if (v6 && *(v6 + 224) == 0x7FFFFFFFFFFFFFFFLL)
              {
                *(v6 + 224) = *(v6 + 112);
              }
            }

            goto LABEL_155;
          }

LABEL_100:
          if (!v6)
          {
            goto LABEL_155;
          }

          v24 = *(v6 + 152);
        }

LABEL_105:
        sub_26EF99A1C(v6, v24);
        goto LABEL_155;
      }
    }
  }

  if (*a2 != 97 || !a3 || *(a2 + 1))
  {
    goto LABEL_155;
  }

  while (1)
  {
    v17 = objc_autoreleasePoolPush();
    if (!strcmp(*a3, "href"))
    {
      break;
    }

    objc_autoreleasePoolPop(v17);
    v18 = *(a3 + 16);
    a3 += 16;
    if (!v18)
    {
      goto LABEL_155;
    }
  }

  v19 = *(a3 + 8);
  if (!v19)
  {
    goto LABEL_154;
  }

  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v19 encoding:4];
  if (!v20)
  {
    goto LABEL_153;
  }

  v21 = 0x277CBE000uLL;
  v22 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v20];
  if (v22)
  {
    v23 = v22;
    goto LABEL_142;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = v20;
  v27 = objc_opt_self();

  if (!v27)
  {
    goto LABEL_102;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  *buffer = 0u;
  v96 = 0u;
  Length = CFStringGetLength(v26);
  theString = v26;
  v106 = 0;
  v107 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v26);
  CStringPtr = 0;
  v104 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v26, 0x600u);
  }

  v108 = 0;
  v109 = 0;
  v105 = CStringPtr;
  if (Length <= 0)
  {
LABEL_102:

    goto LABEL_141;
  }

  v86 = v26;
  v87 = v25;
  v88 = v20;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 64;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v33 >= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = v33;
    }

    v39 = v107;
    if (v107 <= v33)
    {
      goto LABEL_85;
    }

    if (v104)
    {
      v40 = &v104[v106];
LABEL_62:
      v41 = v40[v33];
      goto LABEL_65;
    }

    if (!v105)
    {
      if (v109 <= v33 || v32 > v33)
      {
        v46 = v38 + v31;
        v47 = v34 - v38;
        v48 = v33 - v38;
        v89 = v35;
        v49 = v48 + 64;
        if (v48 + 64 >= v107)
        {
          v49 = v107;
        }

        v108 = v48;
        v109 = v49;
        if (v107 >= v47)
        {
          v39 = v47;
        }

        v111.location = v48 + v106;
        v111.length = v39 + v46;
        CFStringGetCharacters(theString, v111, buffer);
        v35 = v89;
        v32 = v108;
      }

      v40 = &buffer[-v32];
      goto LABEL_62;
    }

    v41 = v105[v106 + v33];
LABEL_65:
    if (v41 == 35)
    {
      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v37 = v33;
      }
    }

    else if (v41 == 63)
    {
      if (v37 == 0x7FFFFFFFFFFFFFFFLL && v36 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = v33;
      }
    }

    else if (v41 == 47 && v36 == 0x7FFFFFFFFFFFFFFFLL && v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
      if (v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = 0x7FFFFFFFFFFFFFFFLL;
        v35 = v33;
      }

      else
      {
        if (v33 == v35 + 1)
        {
          v35 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v36 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

LABEL_85:
    ++v33;
    --v31;
    ++v34;
  }

  while (Length != v33);
  v90 = v35;
  v26 = v86;

  if (v37 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v85 = [(__CFString *)v86 length]- (v37 + 1);
    v55 = [(__CFString *)v86 substringWithRange:v37 + 1];
    v56 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
    v57 = [v55 stringByAddingPercentEncodingWithAllowedCharacters:v56];

    if (v57)
    {
      v58 = [(__CFString *)v86 stringByReplacingCharactersInRange:v37 + 1 withString:v85, v57];

      v26 = v58;
    }
  }

  if (v36 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = [(__CFString *)v26 length];
    if (v37 >= v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = v37;
    }

    v61 = v60 - (v36 + 1);
    v62 = [(__CFString *)v26 substringWithRange:v36 + 1, v61];
    v63 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v64 = [v62 stringByAddingPercentEncodingWithAllowedCharacters:v63];

    if (v64)
    {
      v65 = [(__CFString *)v26 stringByReplacingCharactersInRange:v36 + 1 withString:v61, v64];

      v26 = v65;
    }
  }

  if (v90 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v87;
    v20 = v88;
    v21 = 0x277CBE000;
  }

  else
  {
    if (v37 >= v36)
    {
      v66 = v36;
    }

    else
    {
      v66 = v37;
    }

    v67 = [(__CFString *)v26 length];
    if (v66 >= v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = v66;
    }

    v69 = v68 - (v90 + 1);
    v70 = [(__CFString *)v26 substringWithRange:v90 + 1, v69];
    v71 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v72 = [v70 stringByAddingPercentEncodingWithAllowedCharacters:v71];

    if (v72)
    {
      v73 = [(__CFString *)v26 stringByReplacingCharactersInRange:v90 + 1 withString:v69, v72];

      v26 = v73;
    }

    v25 = v87;
    v20 = v88;
    v21 = 0x277CBE000uLL;
  }

LABEL_141:
  v74 = [(__CFString *)v26 stringByReplacingOccurrencesOfString:@" " withString:@"%20" options:2 range:0, [(__CFString *)v26 length]];

  v23 = [objc_alloc(*(v21 + 3008)) initWithString:v74];
  objc_autoreleasePoolPop(v25);
  if (v23)
  {
LABEL_142:
    v75 = [v23 host];
    if ([v75 compare:@"apple.com" options:3] && objc_msgSend(v75, "rangeOfString:options:", @".apple.com", 15) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v76 = v75;
      if ([v76 compare:@"icloud.com" options:3])
      {
        v77 = [v76 rangeOfString:@".icloud.com" options:15];

        if (v77 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!v6)
          {
LABEL_152:

            goto LABEL_153;
          }

LABEL_151:
          v78 = *(v6 + 240);
          v79 = *(v6 + 184);
          v80 = v23;
          [v78 addIndex:v79];
          v81 = sub_26EF98BE0(v6);
          v82 = *(v6 + 248);
          v83 = [[_TXHtmlParserHyperlink alloc] initWithURL:v80 range:v81, 0];

          [v82 addObject:v83];
          goto LABEL_152;
        }

LABEL_150:
        [*(v6 + 232) addObject:v23];
        goto LABEL_151;
      }
    }

    goto LABEL_150;
  }

LABEL_153:

LABEL_154:
  objc_autoreleasePoolPop(v17);
LABEL_155:

  v84 = *MEMORY[0x277D85DE8];
}

void sub_26EF99A1C(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([*(a1 + 200) containsObject:?] & 1) == 0)
  {
    if (([*(a1 + 192) containsIndex:*(a1 + 184)] & 1) == 0)
    {
      [*(a1 + 192) addIndex:*(a1 + 184)];
      v3 = *(a1 + 208);
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 112)];
      [v3 addObject:v4];

      v5 = *(a1 + 216);
      v6 = objc_opt_new();
      [v5 addObject:v6];
    }

    [*(a1 + 200) addObject:v8];
    v7 = [*(a1 + 216) lastObject];
    [v7 addObject:v8];
  }
}

void sub_26EF9A59C()
{
  v0 = objc_autoreleasePoolPush();
  v3 = -257;
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v3 length:2];
  v2 = qword_2806D0D10;
  qword_2806D0D10 = v1;

  objc_autoreleasePoolPop(v0);
}

id sub_26EF9A658()
{
  if (qword_280E14440 != -1)
  {
    dispatch_once(&qword_280E14440, &unk_287F04C60);
  }

  v1 = qword_280E14448;

  return v1;
}

void sub_26EF9A6AC()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:"" length:1];
  v2 = qword_280E14448;
  qword_280E14448 = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_26EF9A808(uint64_t a1, uint64_t a2, NSRange range1, _BYTE *a4)
{
  length = range1.length;
  location = range1.location;
  v15 = *(a1 + 48);
  v14.location = location;
  v14.length = length;
  v9 = NSIntersectionRange(v14, v15);
  if (v9.length)
  {
    if (v9.length == *(a1 + 64))
    {
      [*(a1 + 32) addObject:*(a1 + 40)];
      *a4 = 1;
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277CBEA90]);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_26EF9A910;
      v12[3] = &unk_279DBB808;
      v13 = *(a1 + 40);
      v11 = [v10 initWithBytesNoCopy:a2 length:v9.length deallocator:v12];
      [*(a1 + 32) addObject:v11];
    }
  }
}

void sub_26EF9A9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26EF9AA08(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if (CFStringCompare(v5, *(a1 + 40), 0) == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = LXEntryGetTokenID();
    *a3 = 1;
  }

  CFRelease(v5);
}

void sub_26EF9B6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Block_object_dispose((v31 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26EF9B72C(uint64_t a1, UTF32Char theChar, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  if (theChar - 0x10000 < 0x100000)
  {
LABEL_2:
    v12 = 4;
    goto LABEL_9;
  }

  if ((theChar - 2048) >> 11 >= 0x1F)
  {
    if (theChar - 128 >= 0x780)
    {
      if (theChar >= 0x80)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          v33[0] = 67109120;
          v33[1] = theChar;
          _os_log_fault_impl(&dword_26EF75000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "WordPieceTokenizer: Invalid UTF32 character %u", v33, 8u);
        }

        goto LABEL_2;
      }

      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 3;
  }

LABEL_9:
  if (*(a1 + 80) != *(*(*(a1 + 40) + 8) + 24))
  {
    v13 = v11 + v10;
    IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(*(a1 + 88), theChar);
    if (theChar == 176 || IsLongCharacterMember)
    {
      *(*(*(a1 + 48) + 8) + 24) += v12;
      *(*(*(a1 + 56) + 8) + 24) += a5;
    }

    else
    {
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 24);
        v17 = *(a1 + 80);
        v18 = v16;
        if (v17 > v16)
        {
          v19 = *(*(*(a1 + 48) + 8) + 24);
          v20 = (*(a1 + 96) + 16 * v16);
          *v20 = *(*(*(a1 + 64) + 8) + 24);
          v20[1] = v19;
          v15 = *(*(a1 + 40) + 8);
          v16 = *(v15 + 24);
          v17 = *(a1 + 80);
          v18 = v16;
        }

        if (v17 <= v18)
        {
          v23 = 0;
        }

        else
        {
          v21 = *(*(*(a1 + 56) + 8) + 24);
          v22 = (*(a1 + 104) + 16 * v18);
          *v22 = *(*(*(a1 + 72) + 8) + 24);
          v22[1] = v21;
          v15 = *(*(a1 + 40) + 8);
          v16 = *(v15 + 24);
          v23 = 1;
        }

        *(v15 + 24) = v16 + v23;
      }

      if (!CFCharacterSetIsLongCharacterMember(*(a1 + 112), theChar))
      {
        v24 = *(*(a1 + 40) + 8);
        v25 = *(v24 + 24);
        v26 = *(a1 + 80);
        v27 = v25;
        if (v26 > v25)
        {
          v28 = (*(a1 + 96) + 16 * v25);
          *v28 = v13;
          v28[1] = v12;
          v24 = *(*(a1 + 40) + 8);
          v25 = *(v24 + 24);
          v26 = *(a1 + 80);
          v27 = v25;
        }

        if (v26 <= v27)
        {
          v30 = 0;
        }

        else
        {
          v29 = (*(a1 + 104) + 16 * v27);
          *v29 = a4;
          v29[1] = a5;
          v24 = *(*(a1 + 40) + 8);
          v25 = *(v24 + 24);
          v30 = 1;
        }

        *(v24 + 24) = v25 + v30;
      }

      *(*(*(a1 + 64) + 8) + 24) = v12 + v13;
      *(*(*(a1 + 72) + 8) + 24) = a4 + a5;
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    v31 = *(*(a1 + 32) + 8);
    *(v31 + 32) = v13;
    *(v31 + 40) = v12;
  }

  v32 = *MEMORY[0x277D85DE8];
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}