double sub_275708284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_275797560();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 8);
  v9 = *a1;
  sub_275797530();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v10 = sub_275797570();

  (*(v5 + 8))(v7, v4);
  sub_275797820();
  sub_275796A70();
  *&v15[56] = v19;
  *&v15[72] = v20;
  *&v15[88] = v21;
  *&v15[104] = v22;
  *&v15[8] = v16;
  *&v15[24] = v17;
  *&v15[40] = v18;
  v11 = *&v15[82];
  *(a2 + 82) = *&v15[66];
  *(a2 + 98) = v11;
  *(a2 + 114) = *&v15[98];
  v12 = *&v15[18];
  *(a2 + 18) = *&v15[2];
  *(a2 + 34) = v12;
  result = *&v15[34];
  v14 = *&v15[50];
  *(a2 + 50) = *&v15[34];
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  *(a2 + 128) = *&v15[112];
  *(a2 + 66) = v14;
  *(a2 + 136) = 0;
  *(a2 + 144) = v8;
  *(a2 + 152) = 0;
  *(a2 + 153) = 0;
  return result;
}

uint64_t sub_2757084C8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE698);
  sub_2757975B0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE6A8);
  sub_2756CFA44(&qword_2809FE6B0, &qword_2809FE690);
  sub_2757094DC();
  sub_275709530();
  return sub_2757977A0();
}

uint64_t sub_275708610@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v54 = a1;
  v55 = a2;
  v4 = sub_2757962F0();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v44 - v7;
  v8 = sub_275796380();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE6F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = sub_275796540();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v46 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v50 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = (&v44 - v20);
  v22 = *(v15 + 16);
  v22(&v44 - v20, v3, v14);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == *MEMORY[0x277D23358])
  {
    (*(v15 + 96))(v21, v14);
    v24 = swift_projectBox();
    (*(v11 + 16))(v13, v24, v10);
    sub_275796390();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v25 = v56;
    if (v23 != *MEMORY[0x277D23350])
    {
      *v55 = 0;
      (*(v48 + 104))();
      return (*(v15 + 8))(v21, v14);
    }

    (*(v15 + 96))(v21, v14);
    v26 = *v21;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE700);
    v44 = v26;
    v28 = swift_projectBox();
    v29 = *(v27 + 48);
    v30 = *(v27 + 64);
    v22(v50, v28, v14);
    (*(v52 + 16))(v51, v28 + v29, v53);
    v31 = v28 + v30;
    v32 = v46;
    v22(v46, v31, v14);
    v33 = v47;
    v34 = v54;
    sub_275708610(v54);
    if (v25)
    {
      v38 = *(v15 + 8);
      v38(v32, v14);
      (*(v52 + 8))(v51, v53);
      v38(v50, v14);
    }

    else
    {
      v36 = v45;
      sub_275708610(v34);
      v37 = (v48 + 8);
      v39 = v51;
      sub_275708BA8(v33, v36, v55);
      v40 = *v37;
      v41 = v36;
      v42 = v49;
      (*v37)(v41, v49);
      v40(v33, v42);
      v43 = *(v15 + 8);
      v43(v32, v14);
      (*(v52 + 8))(v39, v53);
      v43(v50, v14);
    }
  }
}

uint64_t sub_275708BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a3;
  v5 = sub_275796380();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2757962F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v44 = (&v43 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = (&v43 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE708);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v43 - v17;
  v19 = *(v16 + 56);
  v20 = *(v8 + 16);
  v45 = a1;
  v20(&v43 - v17, a1, v7);
  v47 = a2;
  v20(&v18[v19], a2, v7);
  v54 = v8;
  v21 = *(v8 + 88);
  v22 = v21(v18, v7);
  v53 = *MEMORY[0x277D231B8];
  if (v22 == v53 && (v23 = v22, v20(v14, v18, v7), v43 = *(v54 + 96), (v43)(v14, v7), v24 = *v14, v21(&v18[v19], v7) == v23))
  {
    (v43)(&v18[v19], v7);
    v25 = sub_2757092EC(v24, *&v18[v19]);
    v26 = v52;
    *v52 = v25;
    v27 = v54;
    (*(v54 + 104))(v26, v23, v7);
    return (*(v27 + 8))(v18, v7);
  }

  else
  {
    v43 = v18;
    v29 = v54;
    v30 = v44;
    v20(v44, v45, v7);
    v31 = v21;
    v32 = v21(v30, v7);
    v33 = MEMORY[0x277D231C0];
    if (v32 == v53)
    {
      (*(v29 + 96))(v30, v7);
      v34 = *v30;
      v35 = v49;
      v36 = v46;
    }

    else
    {
      v35 = v49;
      v36 = v46;
      if (v32 == *MEMORY[0x277D231C0])
      {
        (*(v29 + 96))(v30, v7);
        v34 = *v30;
      }

      else
      {
        (*(v29 + 8))(v30, v7);
        v34 = 0.0;
      }
    }

    v20(v36, v47, v7);
    v37 = v31(v36, v7);
    if (v37 == v53)
    {
      (*(v29 + 96))(v36, v7);
      v38 = *v36;
      v39 = v50;
      v40 = v43;
      v41 = v48;
    }

    else
    {
      v39 = v50;
      v40 = v43;
      v41 = v48;
      if (v37 == *v33)
      {
        (*(v29 + 96))(v36, v7);
        v38 = *v36;
      }

      else
      {
        (*(v29 + 8))(v36, v7);
        v38 = 0.0;
      }
    }

    (*(v35 + 16))(v41, v51, v39);
    v42 = (*(v35 + 88))(v41, v39);
    if (v42 == *MEMORY[0x277D23208])
    {
      v38 = v34 + v38;
    }

    else if (v42 == *MEMORY[0x277D23228])
    {
      v38 = v34 - v38;
    }

    else if (v42 == *MEMORY[0x277D23220])
    {
      v38 = v34 * v38;
    }

    else if (v42 == *MEMORY[0x277D23218])
    {
      v38 = v34 / v38;
    }

    else if (v42 == *MEMORY[0x277D23210])
    {
      v38 = fmod(v34, v38);
    }

    else
    {
      (*(v35 + 8))(v41, v39);
    }

    *v52 = v38;
    (*(v29 + 104))();
    return sub_2756C92B4(v40, &qword_2809FE708);
  }
}

double sub_275709184()
{
  v1 = v0;
  v2 = sub_2757962F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D231B8])
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  else if (v6 == *MEMORY[0x277D231C0])
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0.0;
  }
}

uint64_t sub_2757092EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_275796380();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3, v6);
  result = (*(v7 + 88))(v9, v6);
  if (result == *MEMORY[0x277D23208])
  {
    v11 = __OFADD__(a1, a2);
    a1 += a2;
    if (!v11)
    {
      return a1;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277D23228])
  {
    v11 = __OFSUB__(a1, a2);
    a1 -= a2;
    if (!v11)
    {
      return a1;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277D23220])
  {
    v12 = (a1 * a2) >> 64;
    a1 *= a2;
    if (v12 == a1 >> 63)
    {
      return a1;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277D23218])
  {
    if (a2)
    {
      if (a1 != 0x8000000000000000 || a2 != -1)
      {
        a1 /= a2;
        return a1;
      }

      goto LABEL_26;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (result != *MEMORY[0x277D23210])
  {
    (*(v7 + 8))(v9, v6);
    return a1;
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  if (a1 != 0x8000000000000000 || a2 != -1)
  {
    a1 %= a2;
    return a1;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2757094DC()
{
  result = qword_2809FE6B8;
  if (!qword_2809FE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE6B8);
  }

  return result;
}

unint64_t sub_275709530()
{
  result = qword_2809FE6C0;
  if (!qword_2809FE6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE6A8);
    sub_2757095BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE6C0);
  }

  return result;
}

unint64_t sub_2757095BC()
{
  result = qword_2809FE6C8;
  if (!qword_2809FE6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE6D0);
    sub_275709674();
    sub_2756CFA44(&qword_2809FE6E8, &qword_2809FE6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE6C8);
  }

  return result;
}

unint64_t sub_275709674()
{
  result = qword_2809FE6D8;
  if (!qword_2809FE6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE6E0);
    sub_2756ED114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE6D8);
  }

  return result;
}

uint64_t sub_275709700()
{
  sub_275709F00(&qword_2809FE710, type metadata accessor for PhotoGridView);
  sub_275709F00(&qword_2809FE718, type metadata accessor for PhotoGridView);
  return swift_getOpaqueTypeConformance2();
}

void sub_2757098A8()
{
  sub_275709A50(319, &qword_2809FD7D8, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2757099EC();
    if (v1 <= 0x3F)
    {
      sub_2757964D0();
      if (v2 <= 0x3F)
      {
        sub_275709A50(319, &qword_2809FE738, type metadata accessor for PhotoGridModel, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2756C97C8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2757099EC()
{
  if (!qword_2809FE730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE5C8);
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FE730);
    }
  }
}

void sub_275709A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_275709AB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_275709AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_275709B48()
{
  result = qword_2809FE740;
  if (!qword_2809FE740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE748);
    sub_275707944();
    sub_275707B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE740);
  }

  return result;
}

unint64_t sub_275709BE8()
{
  result = qword_280A05390[0];
  if (!qword_280A05390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A05390);
  }

  return result;
}

unint64_t sub_275709C40()
{
  result = qword_280A054A0;
  if (!qword_280A054A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A054A0);
  }

  return result;
}

unint64_t sub_275709C98()
{
  result = qword_280A054A8[0];
  if (!qword_280A054A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A054A8);
  }

  return result;
}

uint64_t sub_275709CEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564;
  if (v4 || (sub_275798980() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xEC0000006567616DLL || (sub_275798980() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D694C6F746F6870 && a2 == 0xEA00000000007469 || (sub_275798980() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D694C646C696863 && a2 == 0xEA00000000007469 || (sub_275798980() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694C656C706F6570 && a2 == 0xEB0000000074696DLL || (sub_275798980() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6769654864697267 && a2 == 0xEA00000000007468)
  {

    return 5;
  }

  else
  {
    v6 = sub_275798980();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_275709F00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_275709F48()
{
  result = qword_2809FE788;
  if (!qword_2809FE788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE690);
    sub_2757094DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE788);
  }

  return result;
}

unint64_t sub_275709FCC()
{
  result = qword_2809FE790;
  if (!qword_2809FE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE790);
  }

  return result;
}

uint64_t sub_27570A048(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_27570A068, 0, 0);
}

uint64_t sub_27570A068()
{
  v1 = *(*(v0 + 88) + 16);

  if (v1)
  {
    v2 = sub_2756F72B4(0x6D6954746E657665, 0xE900000000000065);
    if (v3)
    {
      sub_275627B04(*(*(v0 + 88) + 56) + 32 * v2, v0 + 16);
      v4 = MEMORY[0x277D839F8];
      if (swift_dynamicCast())
      {
        v5 = trunc(*(v0 + 48) / 3600000.0) * 3600000.0;
        *(v0 + 40) = v4;
        *(v0 + 16) = v5;
        sub_2756D5AA8((v0 + 16), (v0 + 48));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_27570A568((v0 + 48), 0x6D6954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
      }
    }
  }

  v7 = *(v0 + 80);

  sub_275797C30();
  v8 = sub_275797C40();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_27570A210(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2756DBB90;

  return sub_27570A048(a1, v4);
}

uint64_t sub_27570A2B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
  v33 = a2;
  result = sub_275798860();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2756D5AA8(v24, v34);
      }

      else
      {
        sub_275627B04(v24, v34);
      }

      sub_275798A40();
      sub_275797FF0();
      result = sub_275798A70();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2756D5AA8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_27570A568(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2756F72B4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_27570A78C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_27570A2B0(v16, a4 & 1);
    v11 = sub_2756F72B4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2757989D0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_2756D5AA8(a1, v22);
  }

  else
  {
    sub_27570A720(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_27570A6BC()
{
  result = qword_2809FE7B8;
  if (!qword_2809FE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE7B8);
  }

  return result;
}

_OWORD *sub_27570A720(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2756D5AA8(a4, (a5[7] + 32 * a1));
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

void *sub_27570A78C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
  v2 = *v0;
  v3 = sub_275798850();
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
        sub_275627B04(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2756D5AA8(v25, (*(v4 + 56) + v22));
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

uint64_t sub_27570A940()
{
  v1 = *v0;
  sub_2756E0DD0(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t sub_27570A9B4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_275796D20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE7C0);
  return sub_27570AA08(v1, a1 + *(v3 + 44));
}

uint64_t sub_27570AA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE800);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  sub_2756E0DD0(*a1, v10, v11);

  sub_275750A80(v9, v10, v11, v12, v13, v14, v15, v28);
  *v8 = sub_275796D20();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE808);
  sub_27570AC28(a1, &v8[*(v16 + 44)]);
  v17 = v28[0];
  v18 = v28[1];
  v20 = v30;
  v19 = v31;
  v21 = v32;
  v22 = v33;
  LOBYTE(v13) = v29;
  v23 = v27;
  sub_2756C9074(v8, v27, &qword_2809FE800);
  *a2 = v17;
  *(a2 + 8) = v18;
  LOBYTE(v13) = v13 & 1;
  *(a2 + 16) = v13;
  *(a2 + 24) = v20;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22 & 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE810);
  sub_2756C9074(v23, a2 + *(v24 + 48), &qword_2809FE800);
  sub_2756E0DD0(v17, v18, v13);

  sub_2756C92B4(v8, &qword_2809FE800);
  sub_2756C92B4(v23, &qword_2809FE800);
  sub_2756E15EC(v17, v18, v13);
}

uint64_t sub_27570AC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE818);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v45 - v12);
  v14 = *(a1 + 32);

  sub_2756D8C9C(v15);
  sub_2756D6F8C(v14, v6, v13);
  sub_275797820();
  result = sub_2757967D0();
  v18 = 0;
  v19 = *(v8 + 44);
  v49 = v13;
  v20 = (v13 + v19);
  v21 = v67;
  *v20 = v66;
  v20[1] = v21;
  v20[2] = v68;
  v22 = *(v14 + 16);
  v23 = v14 - 16;
  v24 = MEMORY[0x277D84F90];
LABEL_2:
  v25 = v23 + 48 * v18;
  while (1)
  {
    if (v22 == v18)
    {
      v36 = nullsub_1(v24, v17);
      sub_275797820();
      sub_275796A70();
      v37 = v49;
      sub_2756C9074(v49, v11, &qword_2809FE818);
      sub_2756C9074(v11, a2, &qword_2809FE818);
      v38 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE820) + 48);
      *v57 = v36;
      *&v57[8] = v50;
      *&v57[24] = v51;
      *&v57[40] = v52;
      *&v57[56] = v53;
      *&v57[88] = v55;
      *&v57[72] = v54;
      *&v57[104] = v56;
      v39 = *v57;
      v40 = *&v57[16];
      v41 = *&v57[48];
      *(v38 + 32) = *&v57[32];
      *(v38 + 48) = v41;
      *v38 = v39;
      *(v38 + 16) = v40;
      v42 = *&v57[64];
      v43 = *&v57[80];
      v44 = *&v57[96];
      *(v38 + 112) = *&v57[112];
      *(v38 + 80) = v43;
      *(v38 + 96) = v44;
      *(v38 + 64) = v42;
      sub_2756C9074(v57, &v58, &qword_2809FE828);
      sub_2756C92B4(v37, &qword_2809FE818);
      v58 = v36;
      v63 = v54;
      v64 = v55;
      v65 = v56;
      v59 = v50;
      v60 = v51;
      v61 = v52;
      v62 = v53;
      sub_2756C92B4(&v58, &qword_2809FE828);
      return sub_2756C92B4(v11, &qword_2809FE818);
    }

    if (v18 >= v22)
    {
      break;
    }

    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_14;
    }

    v27 = *(v25 + 72);
    ++v18;
    v25 += 48;
    if ((v27 & 1) == 0)
    {
      v47 = v23;
      v48 = a2;
      v28 = *v25;
      v29 = *(v25 + 8);
      v30 = *(v25 + 16);
      v31 = *(v25 + 32);
      v32 = *(v25 + 40);

      result = swift_isUniquelyReferenced_nonNull_native();
      v58 = v24;
      v46 = v11;
      if ((result & 1) == 0)
      {
        result = sub_2756D7D84(0, *(v24 + 16) + 1, 1);
        v24 = v58;
      }

      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        result = sub_2756D7D84((v33 > 1), v34 + 1, 1);
        v24 = v58;
      }

      *(v24 + 16) = v34 + 1;
      v35 = v24 + 48 * v34;
      *(v35 + 32) = v28;
      *(v35 + 40) = v29;
      *(v35 + 48) = v30;
      *(v35 + 56) = 0;
      *(v35 + 64) = v31;
      *(v35 + 72) = v32;
      v18 = v26;
      v11 = v46;
      v23 = v47;
      a2 = v48;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_27570B058@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

double sub_27570B088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A4FA0;
  v1 = sub_275797490();
  v2 = sub_275797490();
  sub_275700CD8(0xD000000000000011, 0x80000002757B8280, 0, v1, v2, v11, 100000000.0);
  v3 = v11[1];
  v0[2] = v11[0];
  v0[3] = v3;
  v0[4] = v11[2];
  v4 = sub_2757974C0();
  v5 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xE900000000000073, 0, v4, v5, v12, 100000000.0);
  v6 = v12[1];
  v0[5] = v12[0];
  v0[6] = v6;
  v0[7] = v12[2];
  v7 = sub_2756D5ABC();
  v8 = sub_2756D5ABC();
  sub_275700CD8(0x424720382E34, 0xE600000000000000, 1, v7, v8, v13, 4800000000.0);
  v9 = v13[1];
  v0[8] = v13[0];
  v0[9] = v9;
  result = *&v14;
  v0[10] = v14;
  qword_280A0D7F8 = v0;
  return result;
}

uint64_t *sub_27570B1E4()
{
  if (qword_280A055C0 != -1)
  {
    swift_once();
  }

  return &qword_280A0D7F8;
}

uint64_t (*sub_27570B27C())()
{
  if (qword_280A055C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_27570B304()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A4FD0;
  v1 = sub_275797490();
  v2 = sub_275797490();
  sub_275700CD8(0xD000000000000011, 0x80000002757B8280, 0, v1, v2, v17, 100000000.0);
  v3 = v17[1];
  v0[2] = v17[0];
  v0[3] = v3;
  v0[4] = v17[2];
  v4 = sub_2757974C0();
  v5 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xE900000000000073, 0, v4, v5, v18, 100000000.0);
  v6 = v18[1];
  v0[5] = v18[0];
  v0[6] = v6;
  v0[7] = v18[2];
  v7 = sub_275797400();
  v8 = sub_275797400();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003273, 0, v7, v8, v19, 100000000.0);
  v9 = v19[1];
  v0[8] = v19[0];
  v0[9] = v9;
  v0[10] = v19[2];
  v10 = sub_275797400();
  v11 = sub_275797420();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003373, 0, v10, v11, v20, 100000000.0);
  v12 = v20[1];
  v0[11] = v20[0];
  v0[12] = v12;
  v0[13] = v20[2];
  v13 = sub_2756D5ABC();
  v14 = sub_2756D5ABC();
  sub_275700CD8(0x424720382E34, 0xE600000000000000, 1, v13, v14, v21, 4800000000.0);
  v15 = v21[1];
  v0[14] = v21[0];
  v0[15] = v15;
  result = *&v22;
  v0[16] = v22;
  qword_280A0D800 = v0;
  return result;
}

uint64_t *sub_27570B4F0()
{
  if (qword_280A055C8 != -1)
  {
    swift_once();
  }

  return &qword_280A0D800;
}

uint64_t (*sub_27570B588())()
{
  if (qword_280A055C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_27570B610()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A4FB0;
  v1 = sub_275797490();
  v2 = sub_275797490();
  sub_275700CD8(0xD000000000000011, 0x80000002757B8280, 0, v1, v2, v20, 4900000000.0);
  v3 = v20[1];
  v0[2] = v20[0];
  v0[3] = v3;
  v0[4] = v20[2];
  v4 = sub_2757974C0();
  v5 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xE900000000000073, 0, v4, v5, v21, 100000000.0);
  v6 = v21[1];
  v0[5] = v21[0];
  v0[6] = v6;
  v0[7] = v21[2];
  v7 = sub_275797400();
  v8 = sub_275797400();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003273, 0, v7, v8, v22, 100000000.0);
  v9 = v22[1];
  v0[8] = v22[0];
  v0[9] = v9;
  v0[10] = v22[2];
  v10 = sub_275797460();
  v11 = sub_275797460();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003373, 0, v10, v11, v23, 100000000.0);
  v12 = v23[1];
  v0[11] = v23[0];
  v0[12] = v12;
  v0[13] = v23[2];
  v13 = sub_275797450();
  v14 = sub_275797450();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003473, 0, v13, v14, v24, 100000000.0);
  v15 = v24[1];
  v0[14] = v24[0];
  v0[15] = v15;
  v0[16] = v24[2];
  v16 = sub_2756D5ABC();
  v17 = sub_2756D5ABC();
  sub_275700CD8(1112219696, 0xE400000000000000, 1, v16, v17, v25, 0.0);
  v18 = v25[1];
  v0[17] = v25[0];
  v0[18] = v18;
  result = *&v26;
  v0[19] = v26;
  qword_280A0D808 = v0;
  return result;
}

uint64_t *sub_27570B830()
{
  if (qword_280A055D0 != -1)
  {
    swift_once();
  }

  return &qword_280A0D808;
}

uint64_t (*sub_27570B8C8())()
{
  if (qword_280A055D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_27570B950()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A7CC0;
  v1 = sub_275797490();
  v2 = sub_275797490();
  sub_275700CD8(0xD000000000000011, 0x80000002757B8280, 0, v1, v2, v26, 4900000000.0);
  v3 = v26[1];
  v0[2] = v26[0];
  v0[3] = v3;
  v0[4] = v26[2];
  v4 = sub_2757974C0();
  v5 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xE900000000000073, 0, v4, v5, v27, 100000000.0);
  v6 = v27[1];
  v0[5] = v27[0];
  v0[6] = v6;
  v0[7] = v27[2];
  v7 = sub_275797400();
  v8 = sub_275797400();
  sub_275700CD8(0xD00000000000001CLL, 0x80000002757B8AC0, 0, v7, v8, v28, 100000000.0);
  v9 = v28[1];
  v0[8] = v28[0];
  v0[9] = v9;
  v0[10] = v28[2];
  v10 = sub_275797460();
  v11 = sub_275797460();
  sub_275700CD8(0xD000000000000023, 0x80000002757B8AE0, 0, v10, v11, v29, 100000000.0);
  v12 = v29[1];
  v0[11] = v29[0];
  v0[12] = v12;
  v0[13] = v29[2];
  v13 = sub_275797450();
  v14 = sub_275797450();
  sub_275700CD8(0xD00000000000001FLL, 0x80000002757B8B10, 0, v13, v14, v30, 100000000.0);
  v15 = v30[1];
  v0[14] = v30[0];
  v0[15] = v15;
  v0[16] = v30[2];
  v16 = sub_275797440();
  v17 = sub_275797440();
  sub_275700CD8(0xD000000000000033, 0x80000002757B8B30, 0, v16, v17, v31, 100000000.0);
  v18 = v31[1];
  v0[17] = v31[0];
  v0[18] = v18;
  v0[19] = v31[2];
  v19 = sub_275797470();
  v20 = sub_275797470();
  sub_275700CD8(0xD000000000000018, 0x80000002757B8B70, 0, v19, v20, v32, 100000000.0);
  v21 = v32[1];
  v0[20] = v32[0];
  v0[21] = v21;
  v0[22] = v32[2];
  v22 = sub_2756D5ABC();
  v23 = sub_2756D5ABC();
  sub_275700CD8(1112219696, 0xE400000000000000, 1, v22, v23, v33, 0.0);
  v24 = v33[1];
  v0[23] = v33[0];
  v0[24] = v24;
  result = *&v34;
  v0[25] = v34;
  qword_280A0D810 = v0;
  return result;
}

uint64_t *sub_27570BC20()
{
  if (qword_280A055D8 != -1)
  {
    swift_once();
  }

  return &qword_280A0D810;
}

uint64_t (*sub_27570BCB8())()
{
  if (qword_280A055D8[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_27570BD40@<X0>(void *a1@<X8>)
{
  sub_275796CE0();
  v40 = sub_2757970B0();
  v60 = v1;
  v61 = v2;
  v70 = v3 & 1;
  v69 = 1;
  sub_275797820();
  sub_2757967D0();
  v59 = v70;
  *(v67 + 7) = *&v67[7];
  *(&v67[2] + 7) = *&v67[9];
  *(&v67[4] + 7) = *&v67[11];
  sub_275796CE0();
  v39 = sub_2757970B0();
  v57 = v4;
  v58 = v5;
  v7 = v6;
  if (qword_280A055D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v56 = qword_280A0D808;

  v8 = nullsub_1(0x140000000, 0x140000000);
  v54 = v9;
  v55 = v8;
  v73 = v7 & 1;
  v72 = 0;
  sub_275797820();
  sub_2757967D0();
  v53 = v7 & 1;
  *&v66[7] = *&v67[13];
  *&v66[23] = *&v67[15];
  *&v66[39] = *&v67[17];
  sub_275796CE0();
  v10 = sub_2757970B0();
  v50 = v11;
  v51 = v10;
  v13 = v12;
  v52 = v14;
  if (qword_280A055C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v49 = qword_280A0D800;

  v15 = nullsub_1(0x140000000, 0x140000000);
  v47 = v16;
  v48 = v15;
  v77 = v13 & 1;
  v75 = 0;
  sub_275797820();
  sub_2757967D0();
  *&v65[7] = *&v67[19];
  *&v65[23] = *&v67[21];
  *&v65[39] = *&v67[23];
  sub_275796CE0();
  v17 = sub_2757970B0();
  v44 = v18;
  v45 = v17;
  v20 = v19;
  v46 = v21;
  if (qword_280A055D8[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v43 = qword_280A0D810;

  v22 = nullsub_1(0x140000000, 0x140000000);
  v41 = v23;
  v42 = v22;
  v80 = v20 & 1;
  v78 = 0;
  sub_275797820();
  sub_2757967D0();
  *&v64[7] = *&v67[25];
  *&v64[23] = *&v67[27];
  *&v64[39] = *&v67[29];
  sub_275796CE0();
  v24 = sub_2757970B0();
  v35 = v25;
  v36 = v24;
  v27 = v26;
  v37 = v28;
  if (qword_280A055C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = qword_280A0D7F8;

  v30 = nullsub_1(0x780000000, 0xC80000000);
  v33 = v31;
  v34 = v30;
  v83 = v27 & 1;
  v81 = 0;
  sub_275797820();
  sub_2757967D0();
  *&v63[39] = v68;
  *(&v85 + 1) = *v71;
  DWORD1(v85) = *&v71[3];
  *&v87[56] = *(&v67[5] + 7);
  DWORD1(v90) = *&v74[3];
  *(&v90 + 1) = *v74;
  *&v92[56] = *&v66[47];
  *&v92[41] = *&v66[32];
  *&v92[25] = *&v66[16];
  *&v92[9] = *v66;
  DWORD1(v95) = *&v76[3];
  *(&v95 + 1) = *v76;
  *&v97[56] = *&v65[47];
  *&v97[41] = *&v65[32];
  *&v97[25] = *&v65[16];
  *&v97[9] = *v65;
  DWORD1(v100) = *&v79[3];
  *(&v100 + 1) = *v79;
  *&v102[56] = *&v64[47];
  DWORD1(v105) = *&v82[3];
  *(&v105 + 1) = *v82;
  *&v107[56] = *(&v68 + 1);
  *&v63[7] = *&v67[31];
  *&v63[23] = *&v67[33];
  *&v84 = v40;
  *(&v84 + 1) = v60;
  LOBYTE(v85) = v70;
  *&v102[41] = *&v64[32];
  *&v102[25] = *&v64[16];
  *&v102[9] = *v64;
  *&v107[41] = *&v63[32];
  *&v107[25] = *&v63[16];
  *&v107[9] = *v63;
  *(&v85 + 1) = v61;
  v86 = MEMORY[0x277D84F90];
  *v87 = 0;
  v87[8] = 1;
  *&v87[9] = *v67;
  *&v87[25] = *&v67[2];
  *&v87[41] = *&v67[4];
  v88 = xmmword_2757A7CD0;
  __src[2] = MEMORY[0x277D84F90];
  __src[3] = *v87;
  __src[0] = v84;
  __src[1] = v85;
  __src[6] = *&v87[48];
  __src[7] = xmmword_2757A7CD0;
  __src[4] = *&v87[16];
  __src[5] = *&v87[32];
  *&v89 = v39;
  *(&v89 + 1) = v57;
  LOBYTE(v90) = v53;
  *(&v90 + 1) = v58;
  *&v91 = v56;
  *(&v91 + 1) = v55;
  *v92 = v54;
  v92[8] = 0;
  v93 = xmmword_2757A7CE0;
  __src[10] = v91;
  __src[11] = *v92;
  __src[8] = v89;
  __src[9] = v90;
  __src[14] = *&v92[48];
  __src[15] = xmmword_2757A7CE0;
  __src[12] = *&v92[16];
  __src[13] = *&v92[32];
  *&v94 = v51;
  *(&v94 + 1) = v50;
  LOBYTE(v95) = v13 & 1;
  *(&v95 + 1) = v52;
  *&v96 = v49;
  *(&v96 + 1) = v48;
  *v97 = v47;
  v97[8] = 0;
  *&v98 = 0xD000000000000017;
  *(&v98 + 1) = 0x80000002757B8A80;
  __src[18] = v96;
  __src[19] = *v97;
  __src[16] = v94;
  __src[17] = v95;
  __src[22] = *&v97[48];
  __src[23] = v98;
  __src[20] = *&v97[16];
  __src[21] = *&v97[32];
  *&v99 = v45;
  *(&v99 + 1) = v44;
  LOBYTE(v100) = v20 & 1;
  *(&v100 + 1) = v46;
  *&v101 = v43;
  *(&v101 + 1) = v42;
  *v102 = v41;
  v102[8] = 0;
  *&v103 = 0xD00000000000001CLL;
  *(&v103 + 1) = 0x80000002757B8AA0;
  __src[26] = v101;
  __src[27] = *v102;
  __src[24] = v99;
  __src[25] = v100;
  __src[30] = *&v102[48];
  __src[31] = v103;
  __src[28] = *&v102[16];
  __src[29] = *&v102[32];
  *&v104 = v36;
  *(&v104 + 1) = v35;
  LOBYTE(v105) = v27 & 1;
  *(&v105 + 1) = v37;
  *&v106 = v29;
  *(&v106 + 1) = v34;
  *v107 = v33;
  v107[8] = 0;
  v108 = xmmword_2757A7CF0;
  __src[34] = v106;
  __src[35] = *v107;
  __src[32] = v104;
  __src[33] = v105;
  __src[38] = *&v107[48];
  __src[39] = xmmword_2757A7CF0;
  __src[36] = *&v107[16];
  __src[37] = *&v107[32];
  memcpy(a1, __src, 0x280uLL);
  v117 = *v63;
  v109[0] = v36;
  v109[1] = v35;
  v110 = v27 & 1;
  *v111 = *v82;
  *&v111[3] = *&v82[3];
  v112 = v37;
  v113 = v29;
  v114 = v34;
  v115 = v33;
  v116 = 0;
  v118 = *&v63[16];
  *v119 = *&v63[32];
  *&v119[15] = *&v63[47];
  v120 = xmmword_2757A7CF0;
  sub_2756C9074(&v84, v159, &qword_2809FE7C8);
  sub_2756C9074(&v89, v159, &qword_2809FE7C8);
  sub_2756C9074(&v94, v159, &qword_2809FE7C8);
  sub_2756C9074(&v99, v159, &qword_2809FE7C8);
  sub_2756C9074(&v104, v159, &qword_2809FE7C8);
  sub_2756C92B4(v109, &qword_2809FE7C8);
  v129 = *v64;
  v121[0] = v45;
  v121[1] = v44;
  v122 = v20 & 1;
  *v123 = *v79;
  *&v123[3] = *&v79[3];
  v124 = v46;
  v125 = v43;
  v126 = v42;
  v127 = v41;
  v128 = 0;
  v130 = *&v64[16];
  *v131 = *&v64[32];
  *&v131[15] = *&v64[47];
  v132 = 0xD00000000000001CLL;
  v133 = 0x80000002757B8AA0;
  sub_2756C92B4(v121, &qword_2809FE7C8);
  v142 = *v65;
  v134[0] = v51;
  v134[1] = v50;
  v135 = v13 & 1;
  *v136 = *v76;
  *&v136[3] = *&v76[3];
  v137 = v52;
  v138 = v49;
  v139 = v48;
  v140 = v47;
  v141 = 0;
  v143 = *&v65[16];
  *v144 = *&v65[32];
  *&v144[15] = *&v65[47];
  v145 = 0xD000000000000017;
  v146 = 0x80000002757B8A80;
  sub_2756C92B4(v134, &qword_2809FE7C8);
  v155 = *v66;
  v147[0] = v39;
  v147[1] = v57;
  v148 = v53;
  *v149 = *v74;
  *&v149[3] = *&v74[3];
  v150 = v58;
  v151 = v56;
  v152 = v55;
  v153 = v54;
  v154 = 0;
  v156 = *&v66[16];
  *v157 = *&v66[32];
  *&v157[15] = *&v66[47];
  v158 = xmmword_2757A7CE0;
  sub_2756C92B4(v147, &qword_2809FE7C8);
  v159[0] = v40;
  v159[1] = v60;
  v160 = v59;
  *v161 = *v71;
  *&v161[3] = *&v71[3];
  v162 = v61;
  v163 = MEMORY[0x277D84F90];
  v164 = 0;
  v165 = 0;
  v166 = 1;
  v167 = *v67;
  v168 = *&v67[2];
  *v169 = *&v67[4];
  *&v169[15] = *(&v67[5] + 7);
  v170 = xmmword_2757A7CD0;
  return sub_2756C92B4(v159, &qword_2809FE7C8);
}

unint64_t sub_27570C8FC()
{
  result = qword_2809FE7D0;
  if (!qword_2809FE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE7D0);
  }

  return result;
}

uint64_t sub_27570C970(uint64_t a1)
{
  v2 = sub_27570CAE8();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_27570C9BC(uint64_t a1)
{
  v2 = sub_27570CAE8();

  return MEMORY[0x28212D8E0](a1, v2);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_27570CA30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_27570CA78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27570CAE8()
{
  result = qword_2809FE7F8;
  if (!qword_2809FE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE7F8);
  }

  return result;
}

uint64_t sub_27570CB3C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_27570CBB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275796060();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_27570CC20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  sub_275796060();
  sub_27570F5CC(&qword_2809FE830, MEMORY[0x277D7EC08]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2757972A0();
}

uint64_t sub_27570CD9C(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_2757978A0();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2757978C0();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_275796060();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_2756CB330();
  v12 = sub_275798340();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v10 + 32))(v14 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_27570F550;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2756C4584;
  aBlock[3] = &block_descriptor_3;
  v15 = _Block_copy(aBlock);

  sub_2757978B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27570F5CC(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
  sub_2757985B0();
  MEMORY[0x277C80470](0, v8, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_27570D154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE840);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_275796060();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_metricsFieldsContext;
  swift_beginAccess();
  sub_275703F04(v6, a1 + v9, &qword_2809FE840);
  return swift_endAccess();
}

uint64_t sub_27570D298(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_27570E3C0)(a1);
}

uint64_t sub_27570D344(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x707954746E657665;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6569466172747865;
    v4 = 0xEB0000000073646CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6449746E657665;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x707954746E657665;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6569466172747865;
    v8 = 0xEB0000000073646CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6449746E657665;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_275798980();
  }

  return v11 & 1;
}

uint64_t sub_27570D460()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_27570D510()
{
  sub_275797FF0();
}

uint64_t sub_27570D5AC()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_27570D658@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27570F418();
  *a1 = result;
  return result;
}

void sub_27570D688(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x707954746E657665;
  if (v2 != 1)
  {
    v5 = 0x6569466172747865;
    v4 = 0xEB0000000073646CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6449746E657665;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_27570D6F4()
{
  v1 = 0x707954746E657665;
  if (*v0 != 1)
  {
    v1 = 0x6569466172747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449746E657665;
  }
}

uint64_t sub_27570D75C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27570F418();
  *a1 = result;
  return result;
}

uint64_t sub_27570D784(uint64_t a1)
{
  v2 = sub_27570F06C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27570D7C0(uint64_t a1)
{
  v2 = sub_27570F06C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27570D7FC(void *a1)
{
  v2 = swift_allocObject();
  sub_27570D84C(a1);
  return v2;
}

char *sub_27570D84C(void *a1)
{
  v2 = v1;
  v45 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v29 - v5;
  v40 = sub_275796530();
  v37 = *(v40 - 8);
  v6 = MEMORY[0x28223BE20](v40);
  v36 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v29 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE838);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = &v29 - v9;
  v11 = OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_extraFields;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v13 = *(v12 - 8);
  v33 = *(v13 + 56);
  v34 = v11;
  v32 = v13 + 56;
  v33(&v2[v11], 1, 1, v12);
  v14 = OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_metricsFieldsContext;
  v15 = sub_275796060();
  (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
  v16 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_27570F06C();
  v17 = v42;
  sub_275798A80();
  if (v17)
  {
    sub_2756C92B4(&v2[OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_extraFields], &qword_2809FDEE8);
    sub_2756C92B4(&v2[OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_metricsFieldsContext], &qword_2809FE840);
    swift_deallocPartialClassInstance();
    v21 = v2;
  }

  else
  {
    v42 = v12;
    v18 = v38;
    v44 = 0;
    sub_27570F5CC(&qword_2809FD770, MEMORY[0x277D23340]);
    v19 = v39;
    v20 = v10;
    sub_275798910();
    v21 = v2;
    v30 = *(v37 + 32);
    v31 = OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_eventId;
    v39 = (v37 + 32);
    v30(&v2[OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_eventId], v19, v40);
    v44 = 1;
    v22 = v36;
    sub_275798910();
    v23 = v18;
    v30(&v21[OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_eventType], v22, v40);
    v44 = 2;
    sub_2756CFA44(&qword_2809FDF20, &qword_2809FDF18);
    v25 = v35;
    v26 = v41;
    v27 = v42;
    sub_275798910();
    (*(v23 + 8))(v20, v26);
    v33(v25, 0, 1, v27);
    v28 = v34;
    swift_beginAccess();
    sub_275703F04(v25, &v21[v28], &qword_2809FDEE8);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_0(v43);
  return v21;
}

uint64_t sub_27570DE08()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_eventId;
  v2 = sub_275796530();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_eventType, v2);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_extraFields, &qword_2809FDEE8);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_metricsFieldsContext, &qword_2809FE840);
  return v0;
}

uint64_t sub_27570DED8()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_eventId;
  v2 = sub_275796530();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_eventType, v2);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_extraFields, &qword_2809FDEE8);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_metricsFieldsContext, &qword_2809FE840);

  return swift_deallocClassInstance();
}

uint64_t sub_27570DFE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DBB90;

  return (sub_27570E3C0)(a1);
}

uint64_t sub_27570E12C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  sub_275796060();
  sub_27570F5CC(&qword_2809FE830, MEMORY[0x277D7EC08]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2757972A0();
}

char *sub_27570E284@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_27570D84C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static OpaqueMetricsFieldsContext.== infix(_:_:)()
{
  sub_275796060();
  sub_27570F5CC(&qword_2809FE848, MEMORY[0x277D7EC08]);
  v0 = sub_275798950();
  v2 = v1;
  if (v0 == sub_275798950() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_275798980();
  }

  return v5 & 1;
}

uint64_t sub_27570E3C0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_275796280();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = sub_275796530();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = sub_2757963E0();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE840);
  v2[27] = swift_task_alloc();
  v7 = sub_275796060();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27570E634, 0, 0);
}

void sub_27570E634()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[14];
  v5 = OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_metricsFieldsContext;
  swift_beginAccess();
  sub_27570F464(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2756C92B4(v0[27], &qword_2809FE840);
LABEL_5:
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];
    v13 = sub_275700E70();
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_275796270();
    v15 = sub_2757982F0();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[15];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_275623000, v14, v15, "No metricsFieldsContext available for JetAction", v20, 2u);
      MEMORY[0x277C81E50](v20, -1, -1);
    }

    (*(v18 + 8))(v17, v19);

    v21 = v0[1];

    v21();
    return;
  }

  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[14];
  (*(v0[29] + 32))(v0[30], v0[27], v0[28]);
  v9 = OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_extraFields;
  swift_beginAccess();
  if ((*(v6 + 48))(v8 + v9, 1, v7))
  {
    (*(v0[29] + 8))(v0[30], v0[28]);
    swift_endAccess();
    goto LABEL_5;
  }

  (*(v0[25] + 16))(v0[26], v8 + v9, v0[24]);
  swift_endAccess();
  sub_27570F4D4();
  sub_275796390();
  v22 = v0[22];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v23 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
  v24 = sub_275798850();
  v25 = 0;
  v0[31] = v24;
  v57 = v24;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v23 + 64);
  v29 = (v26 + 63) >> 6;
  v56 = v22;
  v55 = v24 + 64;
  if (v28)
  {
    while (1)
    {
      v30 = __clz(__rbit64(v28));
      v58 = (v28 - 1) & v28;
LABEL_19:
      v33 = v30 | (v25 << 6);
      v34 = v0[23];
      v35 = v0[21];
      v36 = (*(v23 + 48) + 16 * v33);
      v37 = v36[1];
      v59 = *v36;
      (*(v56 + 16))(v34, *(v23 + 56) + *(v56 + 72) * v33, v35);

      sub_275768FA8(v0 + 2);
      (*(v56 + 8))(v34, v35);
      *(v55 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v38 = (v57[6] + 16 * v33);
      *v38 = v59;
      v38[1] = v37;
      sub_2756D5AA8(v0 + 1, (v57[7] + 32 * v33));
      v39 = v57[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        break;
      }

      v57[2] = v41;
      v28 = v58;
      if (!v58)
      {
        goto LABEL_14;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_14:
    v31 = v25;
    while (1)
    {
      v25 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v25 >= v29)
      {
        break;
      }

      v32 = *(v23 + 64 + 8 * v25);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v58 = (v32 - 1) & v32;
        goto LABEL_19;
      }
    }

    v42 = sub_275796520();
    v0[32] = v43;
    v44 = v42;
    v45 = v43;
    (*(v0[19] + 16))(v0[20], v0[14] + OBJC_IVAR____TtC13iCloudQuotaUI9JetAction_eventType, v0[18]);
    v46 = sub_275796520();
    v0[33] = v47;
    v48 = v47;
    v49 = v46;
    (*(v0[19] + 8))(v0[20], v0[18]);
    v50 = [objc_opt_self() ams_sharedAccountStore];
    v51 = [v50 aa_primaryAppleAccount];
    v0[34] = v51;

    if (!v51)
    {
      goto LABEL_28;
    }

    v52 = swift_task_alloc();
    v0[35] = v52;
    v53 = sub_275797AE0();
    *v52 = v0;
    v52[1] = sub_27570ED38;
    v54 = v0[30];

    sub_27577A41C(v44, v45, v49, v48, v57, v54, v51, v53);
  }
}

uint64_t sub_27570ED38()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {

    v4 = sub_27570EFA8;
  }

  else
  {

    v4 = sub_27570EEE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27570EEE4()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_27570EFA8()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_27570F06C()
{
  result = qword_280A05778;
  if (!qword_280A05778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A05778);
  }

  return result;
}

uint64_t type metadata accessor for JetAction()
{
  result = qword_280A05910;
  if (!qword_280A05910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27570F1A4()
{
  sub_275796530();
  if (v0 <= 0x3F)
  {
    sub_2756E740C();
    if (v1 <= 0x3F)
    {
      sub_27570F2A8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_27570F2A8()
{
  if (!qword_2809FE860)
  {
    sub_275796060();
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FE860);
    }
  }
}

unint64_t sub_27570F314()
{
  result = qword_280A05AA0[0];
  if (!qword_280A05AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A05AA0);
  }

  return result;
}

unint64_t sub_27570F36C()
{
  result = qword_280A05BB0;
  if (!qword_280A05BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A05BB0);
  }

  return result;
}

unint64_t sub_27570F3C4()
{
  result = qword_280A05BB8[0];
  if (!qword_280A05BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A05BB8);
  }

  return result;
}

uint64_t sub_27570F418()
{
  v0 = sub_2757988A0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27570F464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27570F4D4()
{
  result = qword_2809FDF70;
  if (!qword_2809FDF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDF70);
  }

  return result;
}

uint64_t sub_27570F550()
{
  v1 = *(sub_275796060() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_27570D154(v2, v3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27570F5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27570F618()
{
  type metadata accessor for Destination();
  sub_27570F6B0();

  return sub_2757968F0();
}

uint64_t type metadata accessor for Destination()
{
  result = qword_280A05E60;
  if (!qword_280A05E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27570F6B0()
{
  result = qword_2809FE880;
  if (!qword_2809FE880)
  {
    type metadata accessor for Destination();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE880);
  }

  return result;
}

uint64_t sub_27570F708()
{
  type metadata accessor for Destination();
  sub_27570F6B0();

  return sub_275796900();
}

void sub_27570F768(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*sub_27570F7A8(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_27570F7F4;
}

void sub_27570F7F4(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_27570F834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v14[1] = a1;
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE888);
  v15 = *(v14[0] - 8);
  MEMORY[0x28223BE20](v14[0]);
  v4 = v14 - v3;
  v5 = *(v1 + 8);
  type metadata accessor for Destination();
  sub_27570F6B0();
  sub_275796900();
  swift_getKeyPath();
  sub_275796910();

  sub_27570FDC0(v2, v16);
  v6 = swift_allocObject();
  sub_27570FDF8(v16, v6 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE890);
  v8 = sub_27570FE38();
  v9 = MEMORY[0x277CE1428];
  sub_2757973B0();

  LOBYTE(v17) = (*(*v5 + 96))(v10) & 1;
  sub_27570FDC0(v2, v16);
  v11 = swift_allocObject();
  sub_27570FDF8(v16, v11 + 16);
  v16[0] = v9;
  v16[1] = v7;
  v16[2] = MEMORY[0x277CE1410];
  v16[3] = v8;
  swift_getOpaqueTypeConformance2();
  v12 = v14[0];
  sub_2757973A0();

  return (*(v15 + 8))(v4, v12);
}

uint64_t sub_27570FB10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result & 1;
  return result;
}

__n128 sub_27570FBA8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE8A8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  *&v17 = *(*(a1 + 8) + 16);
  v8 = v17;
  v16[1] = sub_275797480();
  sub_27570FF90();
  sub_2757972F0();

  v9 = sub_2757969E0();
  v10 = sub_275796FA0();
  v11 = &v7[*(v5 + 44)];
  *v11 = v9;
  v11[8] = v10;
  swift_beginAccess();
  sub_275797820();
  sub_275796A70();
  sub_27562B93C(v7, a2);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE890) + 36);
  v13 = v22;
  *(v12 + 64) = v21;
  *(v12 + 80) = v13;
  *(v12 + 96) = v23;
  v14 = v18;
  *v12 = v17;
  *(v12 + 16) = v14;
  result = v20;
  *(v12 + 32) = v19;
  *(v12 + 48) = result;
  return result;
}

unint64_t sub_27570FE38()
{
  result = qword_2809FE898;
  if (!qword_2809FE898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE890);
    sub_27570FEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE898);
  }

  return result;
}

unint64_t sub_27570FEC4()
{
  result = qword_2809FE8A0;
  if (!qword_2809FE8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE8A8);
    sub_27570FF90();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE8A0);
  }

  return result;
}

unint64_t sub_27570FF90()
{
  result = qword_2809FE8B0;
  if (!qword_2809FE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE8B0);
  }

  return result;
}

void sub_27570FFF0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_275796280();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v13 = sub_275700E70();
    v41 = *(v7 + 16);
    v42 = v13;
    v41(v12);
    sub_27570FDC0(a3, v44);
    v14 = sub_275796270();
    v15 = sub_275798310();
    v16 = os_log_type_enabled(v14, v15);
    v43 = v10;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v17 + 4) = Strong;
      *v18 = Strong;
      sub_275711404(v44);
      _os_log_impl(&dword_275623000, v14, v15, "Dismissing view controller from: %@", v17, 0xCu);
      sub_2756C5AE8(v18);
      v20 = v18;
      v10 = v43;
      MEMORY[0x277C81E50](v20, -1, -1);
      MEMORY[0x277C81E50](v17, -1, -1);
    }

    else
    {

      sub_275711404(v44);
    }

    v21 = *(v7 + 8);
    v21(v12, v6);
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 childViewControllers];

      sub_275711434();
      v25 = sub_2757980E0();

      v40[2] = v7;
      v40[3] = a3;
      v40[0] = v21;
      v40[1] = v7 + 16;
      if (v25 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_275798640())
      {
        v27 = 0;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x277C80840](v27, v25);
          }

          else
          {
            if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v28 = *(v25 + 8 * v27 + 32);
          }

          v29 = v28;
          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE8C0);
          if (swift_dynamicCastClass())
          {

            goto LABEL_24;
          }

          ++v27;
          if (v30 == i)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

LABEL_23:

      v29 = 0;
LABEL_24:
      v10 = v43;
      v21 = v40[0];
    }

    else
    {
      v29 = 0;
    }

    (v41)(v10, v42, v6);
    v31 = v29;
    v32 = sub_275796270();
    v33 = sub_275798310();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v29;
      v36 = v31;
      _os_log_impl(&dword_275623000, v32, v33, "Dismissing view controller: %@", v34, 0xCu);
      sub_2756C5AE8(v35);
      v37 = v35;
      v10 = v43;
      MEMORY[0x277C81E50](v37, -1, -1);
      MEMORY[0x277C81E50](v34, -1, -1);
    }

    v21(v10, v6);
    if (v29)
    {
      v38 = [v31 viewIfLoaded];
      [v38 removeFromSuperview];

      v39 = swift_unknownObjectWeakLoadStrong();
      [v39 removeChildViewController_];
    }
  }
}

uint64_t objectdestroyTm_4()
{

  MEMORY[0x277C81EF0](v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2757104C8(void *a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for Destination();
  sub_27570F6B0();
  *a2 = sub_2757968F0();
  a2[1] = v3;
  swift_unknownObjectWeakInit();
}

uint64_t sub_275710548()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_2757105BC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

void (*sub_27571062C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_275796610();
  return sub_2756C368C;
}

uint64_t sub_2757106D0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  sub_2757965F0();
  return swift_endAccess();
}

uint64_t sub_275710744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_27571087C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE98);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI11Destination__showingSheet;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C3A34;
}

uint64_t sub_2757109EC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2757965E0();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_275710A50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC13iCloudQuotaUI11Destination__showingSheet;
  v9[15] = 0;
  sub_2757965E0();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_275710B4C()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI11Destination__showingSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_275710BC0()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI11Destination__showingSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_275710C70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Destination();
  result = sub_2757965C0();
  *a1 = result;
  return result;
}

uint64_t sub_275710D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2757113B0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_275710D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2757113B0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_275710DF4()
{
  sub_2757113B0();
  sub_275796F40();
  __break(1u);
}

void sub_275710E20(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_2757113A0;
  }

  v8 = a3;
  v9 = a1;
  _sSo16UIViewControllerC13iCloudQuotaUIE20presentPreferredSize04viewB08animated10completionyAB_SbyycSgtF_0(v8);
  sub_2756D4A30(v7);
}

uint64_t static UIViewController.ICQUIUpsellPrefferredPresentationSize.setter(double a1, double a2)
{
  result = swift_beginAccess();
  qword_2809FE870 = *&a1;
  unk_2809FE878 = *&a2;
  return result;
}

uint64_t sub_275710FC4(double a1, double a2)
{
  result = swift_beginAccess();
  qword_2809FE870 = *&a1;
  unk_2809FE878 = *&a2;
  return result;
}

id _sSo16UIViewControllerC13iCloudQuotaUIE20presentPreferredSize04viewB08animated10completionyAB_SbyycSgtF_0(void *a1)
{
  v2 = v1;
  type metadata accessor for Destination();
  v4 = swift_allocObject();
  v5 = a1;
  sub_2757965E0();
  *(v4 + 16) = v5;
  sub_27570F6B0();

  v13[0] = sub_2757968F0();
  v13[1] = v6;
  swift_unknownObjectWeakInit();
  sub_27570FDC0(v13, v12);
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE8C0));
  v8 = sub_275796D70();
  [v2 addChildAndPinToEdgesWithChildViewController_];
  result = [v8 view];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor_];

    swift_getKeyPath();
    swift_getKeyPath();
    v12[0] = 1;
    sub_275796630();

    return sub_275711404(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_275711250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_275711298(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2757112F0()
{
  sub_2756E3AC4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2757113B0()
{
  result = qword_2809FE8B8;
  if (!qword_2809FE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE8B8);
  }

  return result;
}

unint64_t sub_275711434()
{
  result = qword_2809FE8C8;
  if (!qword_2809FE8C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809FE8C8);
  }

  return result;
}

id sub_275711480(uint64_t a1)
{
  v2 = objc_opt_self();
  result = [v2 valueWithNewObjectInContext_];
  if (result)
  {
    v4 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE8D0);
    v5 = [v2 valueWithObject:sub_2757989B0() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v5)
    {
      sub_2757983C0();
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_27571156C()
{
  result = qword_2809FE8D8;
  if (!qword_2809FE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE8D8);
  }

  return result;
}

Swift::Void __swiftcall ICQUIReviewLargeFilesFlowController.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35.receiver = v1;
  v35.super_class = ICQUIReviewLargeFilesFlowController;
  objc_msgSendSuper2(&v35, sel_viewDidLoad);
  v34[21] = &unk_2884AFDD0;
  v6 = swift_dynamicCastObjCProtocolConditional();
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2757981B0();
    v32 = v1;

    v9 = sub_2757981A0();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v13 = sub_2757981A0();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v11;
    v14[4] = v12;

    sub_275797760();
    v15 = v34[0];
    v16 = v34[1];
    v17 = v34[2];

    sub_2756C5BFC();
    sub_2756F2C3C();
    sub_2756CBC94();
    sub_2756CC6AC();
    sub_2756CC6AC();
    v18 = v15;
    v19 = v32;
    v20 = [v7 cloudRecommendationsDelegate];
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
    sub_275711D04(v34, &v33);
    v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FE940));
    v22 = sub_275796D70();
    [v19 addChildAndPinToEdgesWithChildViewController_];
    v23 = [v19 presentationController];
    v24 = [v23 delegate];

    if (v24)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = [v19 presentationController];
      if (!v29)
      {
        sub_275711D60(v34);

        return;
      }

      v30 = v29;
      [v29 setDelegate_];
    }

    sub_275711D60(v34);
  }

  else
  {
    v25 = sub_275700E70();
    (*(v3 + 16))(v5, v25, v2);
    v26 = sub_275796270();
    v27 = sub_2757982F0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_275623000, v26, v27, "RecommendationFlowController protocol not setup correctly!", v28, 2u);
      MEMORY[0x277C81E50](v28, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_275711BA0(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong storageRecovered];

    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

uint64_t objectdestroy_2Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_275711C78(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v3 setStorageRecovered_];
  }
}

void _sSo35ICQUIReviewLargeFilesFlowControllerC13iCloudQuotaUIE012presentationE10DidDismissyySo014UIPresentationE0CF_0()
{
  v1 = v0;
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - v7;
  v28[1] = &unk_2884AFDD0;
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (v9)
  {
    v10 = v9;
    v11 = v1;
    v12 = [v11 storageRecovered];
    v13 = [v12 integerValue];

    v14 = sub_275700E70();
    v15 = *(v3 + 16);
    if (v13 < 1)
    {
      v15(v6, v14, v2);
      v21 = sub_275796270();
      v22 = sub_275798310();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_275623000, v21, v22, "Review large files flow cancelled.", v23, 2u);
        MEMORY[0x277C81E50](v23, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      v24 = [v10 cloudRecommendationsDelegate];
      if (v24)
      {
        [v24 userDidCancelAction];
LABEL_12:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v15(v8, v14, v2);
      v11 = v11;
      v16 = sub_275796270();
      v17 = sub_275798310();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        v19 = [v11 storageRecovered];
        v20 = [v19 integerValue];

        *(v18 + 4) = v20;
        _os_log_impl(&dword_275623000, v16, v17, "Review large files flow completed. User recovered: %ld bytes.", v18, 0xCu);
        MEMORY[0x277C81E50](v18, -1, -1);
      }

      else
      {

        v16 = v11;
      }

      (*(v3 + 8))(v8, v2);
      v25 = [v10 cloudRecommendationsDelegate];
      if (v25)
      {
        v26 = v25;
        v27 = [v11 storageRecovered];
        [v26 userDidCompleteAction_];

        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_27571216C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275797BC0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_275797BE0();
  MEMORY[0x28223BE20](v3 - 8);

  sub_275797BD0();
  v4 = MEMORY[0x277D84F90];
  sub_2756D5834(MEMORY[0x277D84F90]);
  sub_275797BB0();
  sub_2756D5834(v4);
  sub_2756D5834(v4);
  sub_275797BF0();
  v5 = sub_275797C00();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

uint64_t sub_275712330@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275797BC0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_275797BE0();
  MEMORY[0x28223BE20](v3 - 8);

  sub_275797BD0();
  v4 = MEMORY[0x277D84F90];
  sub_2756D5834(MEMORY[0x277D84F90]);
  sub_275797BB0();
  sub_2756D5834(v4);
  sub_2756D5834(v4);
  sub_275797BF0();
  v5 = sub_275797C00();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

unint64_t sub_2757124A4()
{
  result = qword_2809FE9B0;
  if (!qword_2809FE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE9B0);
  }

  return result;
}

uint64_t sub_2757124F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_275712540(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_275712590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275712604()
{
  sub_275795ED0();
  sub_275713FFC(&qword_2809FE9B8, MEMORY[0x277D7F228]);

  return sub_275796900();
}

uint64_t sub_275712690()
{
  sub_275795ED0();
  sub_275713FFC(&qword_2809FE9B8, MEMORY[0x277D7F228]);

  return sub_2757968F0();
}

uint64_t sub_27571270C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE9C0);
  sub_275712BE8();
  return sub_2757977F0();
}

uint64_t sub_27571277C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE9D8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA38);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE9F8);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  v16 = sub_275795E70();
  if (v16)
  {
    v25 = v9;
    v17 = v16;
    v18 = [v16 apps];

    sub_2756C557C(0, &qword_2809FEA40);
    v19 = sub_2757980E0();

    v26 = v19;
    v24[1] = swift_getKeyPath();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA48);
    v24[0] = v10;
    v24[2] = a3;
    v24[3] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE9E8);
    sub_2756CFA44(&qword_2809FEA50, &qword_2809FEA48);
    sub_275701540(&qword_2809FEA58, &qword_2809FEA40);
    sub_2756CFA44(&qword_2809FE9E0, &qword_2809FE9E8);
    v21 = v25;
    sub_2757977A0();
    (*(v7 + 16))(v12, v21, v6);
    swift_storeEnumTagMultiPayload();
    sub_275712CA0();
    sub_2756CFA44(&qword_2809FE9F0, &qword_2809FE9F8);
    sub_275796D80();
    return (*(v7 + 8))(v21, v6);
  }

  else
  {
    *v15 = sub_275796C80();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA60);
    sub_27571356C(&v15[*(v23 + 44)]);
    sub_2756C9074(v15, v12, &qword_2809FE9F8);
    swift_storeEnumTagMultiPayload();
    sub_275712CA0();
    sub_2756CFA44(&qword_2809FE9F0, &qword_2809FE9F8);
    sub_275796D80();
    return sub_2756C92B4(v15, &qword_2809FE9F8);
  }
}

unint64_t sub_275712BE8()
{
  result = qword_2809FE9C8;
  if (!qword_2809FE9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE9C0);
    sub_275712CA0();
    sub_2756CFA44(&qword_2809FE9F0, &qword_2809FE9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE9C8);
  }

  return result;
}

unint64_t sub_275712CA0()
{
  result = qword_2809FE9D0;
  if (!qword_2809FE9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE9D8);
    sub_2756CFA44(&qword_2809FE9E0, &qword_2809FE9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE9D0);
  }

  return result;
}

uint64_t sub_275712D50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_2757131EC(a1, &v74);
  v3 = __swift_project_boxed_opaque_existential_1(&v74, v78);
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_275797720();
  __swift_destroy_boxed_opaque_existential_0(&v74);
  v63 = sub_275796D30();
  LOBYTE(v68) = 1;
  v6 = [a1 label];
  v7 = sub_275797F50();
  v9 = v8;

  v74 = v7;
  v75 = v9;
  sub_2756DC79C();
  v10 = sub_2757970D0();
  v60 = v11;
  v61 = v10;
  v13 = v12;
  v62 = v14;
  v15 = [a1 detailLabel];
  v16 = sub_275797F50();
  v18 = v17;

  if (v16 || v18 != 0xE000000000000000)
  {
    v23 = sub_275798980();

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if ((v23 & 1) == 0)
    {
      v24 = [a1 detailLabel];
      v25 = sub_275797F50();
      v27 = v26;

      v74 = v25;
      v75 = v27;
      v28 = sub_2757970D0();
      v30 = v29;
      v32 = v31;
      sub_275796FF0();
      v33 = sub_2757970A0();
      v35 = v34;
      HIDWORD(v58) = v13;
      v37 = v36;

      sub_2756E15EC(v28, v30, v32 & 1);

      sub_275797500();
      v38 = v33;
      v39 = v35;
      v19 = sub_275797070();
      v20 = v40;
      v42 = v41;
      v22 = v43;

      v44 = v37 & 1;
      LOBYTE(v13) = BYTE4(v58);
      sub_2756E15EC(v38, v39, v44);

      v21 = v42 & 1;
      sub_2756E0DD0(v19, v20, v42 & 1);
    }
  }

  else
  {

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  v45 = v13 & 1;
  v46 = v60;
  v47 = v61;
  sub_2756E0DD0(v61, v60, v45);
  v48 = v62;

  sub_2756E171C(v19, v20, v21, v22);
  sub_2756E1760(v19, v20, v21, v22);
  LOBYTE(v74) = v45;
  sub_2756E1760(v19, v20, v21, v22);
  sub_2756E15EC(v47, v46, v45);

  v49 = v67[0];
  *(&v69 + 1) = v67[0];
  DWORD1(v69) = *(v67 + 3);
  v50 = v66[0];
  *(&v70 + 9) = v66[0];
  HIDWORD(v70) = *(v66 + 3);
  v65[88] = 1;
  v51 = v59;
  *(v59 + 104) = 1;
  v52 = v68;
  v53 = v63;
  v68 = v63;
  LOBYTE(v69) = v52;
  *(&v69 + 1) = v47;
  *&v70 = v46;
  BYTE8(v70) = v45;
  *&v71 = v48;
  *(&v71 + 1) = v19;
  *&v72 = v20;
  *(&v72 + 1) = v21;
  *v51 = v64;
  v54 = v70;
  v55 = v71;
  *(v51 + 72) = v72;
  *(v51 + 56) = v55;
  *(v51 + 40) = v54;
  v56 = v68;
  *(v51 + 24) = v69;
  *(v51 + 8) = v56;
  *(v51 + 88) = v22;
  *(v51 + 96) = 0;
  v73 = v22;
  v74 = v53;
  v75 = 0;
  v76 = v52;
  *&v77[3] = *(v67 + 3);
  *v77 = v49;
  v78 = v47;
  v79 = v46;
  v80 = v45;
  *&v81[3] = *(v66 + 3);
  *v81 = v50;
  v82 = v48;
  v83 = v19;
  v84 = v20;
  v85 = v21;
  v86 = v22;

  sub_2756C9074(&v68, v65, &qword_2809FEAC0);
  sub_2756C92B4(&v74, &qword_2809FEAC0);
}

uint64_t sub_2757131EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = sub_275797560();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 fetchLocally] && (type metadata accessor for ICQUISwiftHelperFunctions(), v14 = objc_msgSend(a1, sel_bundleIds), sub_2757980E0(), v14, v15 = sub_2756C3118(), , v15))
  {
    (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
    v16 = sub_275797570();
    (*(v11 + 8))(v13, v10);
    *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA70);
    *(a2 + 32) = sub_2756ED114();

    *a2 = v16;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  else
  {
    type metadata accessor for ICQUISwiftHelperFunctions();
    v18 = [a1 iconURL];
    sub_275761980(v18, v9);

    *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEAC8);
    *(a2 + 32) = sub_2756CFA44(&qword_2809FEAD0, &qword_2809FEAC8);
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_2756C9074(v9, v7, &qword_2809FD700);
    v19 = swift_allocObject();
    v19[2] = sub_275713990;
    v19[3] = 0;
    v19[4] = nullsub_1;
    v19[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEAD8);
    sub_2757146CC();
    sub_275796680();
    return sub_2756C92B4(v9, &qword_2809FD700);
  }

  return result;
}

uint64_t sub_27571356C@<X0>(void *a1@<X8>)
{
  v27 = a1;
  v1 = sub_275796EB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA68);
  MEMORY[0x28223BE20](v26);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_2757967B0();
  sub_275796EA0();
  sub_2756CFA44(&qword_2809FDCD8, &qword_2809FDCA0);
  sub_275713FFC(&qword_2809FEA78, MEMORY[0x277CDE330]);
  sub_275797180();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v17 = &v10[*(v26 + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE280) + 28);
  v19 = *MEMORY[0x277CDF438];
  v20 = sub_275796720();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  sub_27571428C();
  sub_275797300();
  sub_2756C92B4(v10, &qword_2809FEA68);
  sub_2756C9074(v16, v14, &qword_2809FEA70);
  v21 = v27;
  *v27 = 0;
  *(v21 + 8) = 1;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA88);
  sub_2756C9074(v14, v22 + *(v23 + 48), &qword_2809FEA70);
  v24 = v22 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_2756C92B4(v16, &qword_2809FEA70);
  return sub_2756C92B4(v14, &qword_2809FEA70);
}

uint64_t sub_275713990@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275797560();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_275797570();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_275713AAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE9C0);
  sub_275712BE8();
  return sub_2757977F0();
}

uint64_t View.storageAppsModel(_:)()
{
  swift_getKeyPath();

  sub_2757971B0();
}

uint64_t sub_275713BA8()
{
  sub_275713CD0();
  sub_275796C40();
  return v1;
}

uint64_t sub_275713BE4@<X0>(void *a1@<X8>)
{
  sub_275713CD0();
  result = sub_275796C40();
  *a1 = v3;
  return result;
}

uint64_t sub_275713C34()
{
  sub_275713CD0();

  return sub_275796C50();
}

unint64_t sub_275713CD0()
{
  result = qword_280A060F8[0];
  if (!qword_280A060F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A060F8);
  }

  return result;
}

uint64_t sub_275713D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_275713F48();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t (*sub_275713D88(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_275713CD0();
  sub_275796C40();
  return sub_275713DE8;
}

uint64_t sub_275713DE8(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_275796C50();
  }

  sub_275796C50();
}

unint64_t sub_275713EA8()
{
  result = qword_2809FEA00;
  if (!qword_2809FEA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEA08);
    sub_275712BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEA00);
  }

  return result;
}

unint64_t sub_275713F48()
{
  result = qword_2809FEA20;
  if (!qword_2809FEA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEA28);
    sub_275713FFC(&qword_2809FEA30, MEMORY[0x277D7F228]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEA20);
  }

  return result;
}

uint64_t sub_275713FFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275714044(id *a1)
{
  [*a1 action];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA90);
  sub_2756C557C(0, &qword_2809FE560);
  sub_2757145D8();
  sub_275701540(&qword_2809FEAB0, &qword_2809FE560);
  return sub_2757968D0();
}

uint64_t sub_275714130(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(void))
{
  if (sub_275796960())
  {
    a2(&v7);
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA70);
    sub_2756ED114();
    sub_275796D80();
  }

  else
  {
    a4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA70);
    sub_2756ED114();
    sub_275796D80();
  }

  return v7;
}

unint64_t sub_27571428C()
{
  result = qword_2809FEA80;
  if (!qword_2809FEA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDCA0);
    sub_275796EB0();
    sub_2756CFA44(&qword_2809FDCD8, &qword_2809FDCA0);
    sub_275713FFC(&qword_2809FEA78, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    sub_2756CFA44(&qword_2809FE278, &qword_2809FE280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEA80);
  }

  return result;
}

__n128 sub_275714404@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = sub_275796C80();
  sub_275712D50(v3, v11);
  v17 = *&v11[64];
  v18[0] = *&v11[80];
  *(v18 + 9) = *&v11[89];
  v13 = *v11;
  v14 = *&v11[16];
  v15 = *&v11[32];
  v16 = *&v11[48];
  v19[0] = *v11;
  v19[1] = *&v11[16];
  v19[2] = *&v11[32];
  v19[3] = *&v11[48];
  v19[4] = *&v11[64];
  v20[0] = *&v11[80];
  *(v20 + 9) = *&v11[89];
  sub_2756C9074(&v13, v12, &qword_2809FEAB8);
  sub_2756C92B4(v19, &qword_2809FEAB8);
  *&v10[55] = v16;
  *&v10[71] = v17;
  *&v10[87] = v18[0];
  *&v10[96] = *(v18 + 9);
  *&v10[7] = v13;
  *&v10[23] = v14;
  *&v10[39] = v15;
  sub_275797820();
  sub_275796A70();
  *&v11[55] = v12[3];
  *&v11[71] = v12[4];
  *&v11[87] = v12[5];
  *&v11[103] = v12[6];
  *&v11[7] = v12[0];
  *&v11[23] = v12[1];
  *&v11[39] = v12[2];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v10[48];
  *(a1 + 81) = *&v10[64];
  *(a1 + 97) = *&v10[80];
  *(a1 + 113) = *&v10[96];
  *(a1 + 17) = *v10;
  *(a1 + 33) = *&v10[16];
  *(a1 + 49) = *&v10[32];
  v5 = *v11;
  v6 = *&v11[64];
  *(a1 + 177) = *&v11[48];
  v7 = *&v11[16];
  *(a1 + 161) = *&v11[32];
  *(a1 + 145) = v7;
  *(a1 + 129) = v5;
  result = *&v11[80];
  v9 = *&v11[96];
  *(a1 + 240) = *&v11[111];
  *(a1 + 225) = v9;
  *(a1 + 209) = result;
  *(a1 + 193) = v6;
  return result;
}

unint64_t sub_2757145D8()
{
  result = qword_2809FEA98;
  if (!qword_2809FEA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEA90);
    sub_2756CFA44(&qword_2809FEAA0, &qword_2809FEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEA98);
  }

  return result;
}

uint64_t sub_275714690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_275714130(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 18) = v7 & 1;
  return result;
}

unint64_t sub_2757146CC()
{
  result = qword_2809FEAE0;
  if (!qword_2809FEAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEAD8);
    sub_2756ED114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEAE0);
  }

  return result;
}

uint64_t sub_275714760()
{
  sub_275714FC4(&qword_2809FE4A8, MEMORY[0x277D7F250]);

  return sub_2757968F0();
}

uint64_t sub_2757147F8()
{
  sub_275795F60();
  sub_275714FC4(&qword_2809FE4A8, MEMORY[0x277D7F250]);

  return sub_275796900();
}

uint64_t sub_275714884()
{
  v0 = sub_275795F30();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 manageStoragePage];

    v3 = [v2 title];
    sub_275797F50();
  }

  sub_2756DC79C();
  v5 = sub_2757970D0();
  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEAE8);
  sub_275714E58();
  return sub_2757977E0();
}

uint64_t sub_2757149DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEBD0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE9F8);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  v15 = sub_275795F30();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 manageStoragePage];
    v24[1] = v12;
    v18 = v17;

    v19 = [v18 specifiers];
    sub_2756C557C(0, &qword_2809FEB50);
    v20 = sub_2757980E0();

    v24[3] = v20;
    v24[0] = swift_getKeyPath();
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEBD8);
    type metadata accessor for ManageStorageSpecifierView();
    sub_2756CFA44(&qword_2809FEBE0, &qword_2809FEBD8);
    sub_275701540(&qword_2809FEBE8, &qword_2809FEB50);
    sub_275714FC4(&qword_2809FEB08, type metadata accessor for ManageStorageSpecifierView);
    sub_2757977A0();
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_275714F10();
    sub_2756CFA44(&qword_2809FE9F0, &qword_2809FE9F8);
    sub_275796D80();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    *v14 = sub_275796C80();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA60);
    sub_275715058(&v14[*(v23 + 44)]);
    sub_2756C9074(v14, v11, &qword_2809FE9F8);
    swift_storeEnumTagMultiPayload();
    sub_275714F10();
    sub_2756CFA44(&qword_2809FE9F0, &qword_2809FE9F8);
    sub_275796D80();
    return sub_2756C92B4(v14, &qword_2809FE9F8);
  }
}

unint64_t sub_275714E58()
{
  result = qword_2809FEAF0;
  if (!qword_2809FEAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEAE8);
    sub_275714F10();
    sub_2756CFA44(&qword_2809FE9F0, &qword_2809FE9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEAF0);
  }

  return result;
}

unint64_t sub_275714F10()
{
  result = qword_2809FEAF8;
  if (!qword_2809FEAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEB00);
    sub_275714FC4(&qword_2809FEB08, type metadata accessor for ManageStorageSpecifierView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEAF8);
  }

  return result;
}

uint64_t sub_275714FC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ManageStorageSpecifierView()
{
  result = qword_280A06330;
  if (!qword_280A06330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275715058@<X0>(void *a1@<X8>)
{
  v27 = a1;
  v1 = sub_275796EB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA68);
  MEMORY[0x28223BE20](v26);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_2757967B0();
  sub_275796EA0();
  sub_2756CFA44(&qword_2809FDCD8, &qword_2809FDCA0);
  sub_275714FC4(&qword_2809FEA78, MEMORY[0x277CDE330]);
  sub_275797180();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v17 = &v10[*(v26 + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE280) + 28);
  v19 = *MEMORY[0x277CDF438];
  v20 = sub_275796720();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  sub_27571428C();
  sub_275797300();
  sub_2756C92B4(v10, &qword_2809FEA68);
  sub_2756C9074(v16, v14, &qword_2809FEA70);
  v21 = v27;
  *v27 = 0;
  *(v21 + 8) = 1;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA88);
  sub_2756C9074(v14, v22 + *(v23 + 48), &qword_2809FEA70);
  v24 = v22 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_2756C92B4(v16, &qword_2809FEA70);
  return sub_2756C92B4(v14, &qword_2809FEA70);
}

uint64_t sub_27571547C()
{
  sub_275795F60();
  sub_275714FC4(&qword_2809FE4A8, MEMORY[0x277D7F250]);

  return sub_2757968F0();
}

uint64_t sub_2757154F8()
{
  v0 = sub_275795F30();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 manageStoragePage];

    v3 = [v2 title];
    sub_275797F50();
  }

  sub_2756DC79C();
  v5 = sub_2757970D0();
  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEAE8);
  sub_275714E58();
  return sub_2757977E0();
}

uint64_t sub_275715680()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB10);
  sub_2757975A0();
  return v1;
}

uint64_t sub_275715700@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_275796C30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB18);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  sub_2756C9074(v2, &v16 - v9, &qword_2809FEB18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_275717DCC(v10, a1);
  }

  v12 = sub_275798300();
  v13 = sub_275796F80();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_27562792C(0xD000000000000017, 0x80000002757B8D10, &v17);
    _os_log_impl(&dword_275623000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x277C81E50](v15, -1, -1);
    MEMORY[0x277C81E50](v14, -1, -1);
  }

  sub_275796C20();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_275715954@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB18);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2757159D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2756C9074(a1, &v6 - v3, &qword_2809FEB80);
  return sub_275779258(v4);
}

uint64_t sub_275715A80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB20);
  v19 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v18 - v4;
  v6 = type metadata accessor for ManageStorageSpecifierView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275716268(v2, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_2757162CC(v9, v11 + v10);
  *v5 = sub_275796D30();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB28);
  sub_2757163A0(v2, v11, &v5[*(v12 + 44)]);
  sub_275716268(v2, v9);
  v13 = swift_allocObject();
  sub_2757162CC(v9, v13 + v10);
  v14 = &v5[*(v3 + 36)];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = sub_275716AD4;
  *(v14 + 3) = v13;
  v15 = *(v2 + 64);
  v16 = *(v2 + 48);
  v28 = *(v2 + 56);
  v29 = v15;
  v26 = *(v2 + 40);
  v27 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  v18[3] = v25;
  v22 = v2;
  v23 = sub_275716330;
  v24 = v11;
  v21 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE4F0);
  sub_275717380();
  sub_2756DC79C();
  sub_2756CFA44(&qword_2809FE500, &qword_2809FE4F0);
  sub_275797350();

  return sub_2756C92B4(v5, &qword_2809FEB20);
}

void sub_275715DD4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  v7 = sub_275796280();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - v12;
  v14 = [a1 icqLink];
  v15 = [v14 action];

  v16 = sub_275700E70();
  v17 = *(v8 + 16);
  if (v15 == 6)
  {
    v17(v13, v16, v7);
    v18 = a1;
    v19 = sub_275796270();
    v20 = sub_275798310();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = [v18 icqLink];
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_275623000, v19, v20, "Manage Storage action open url, dismissing sheet and openning %@", v21, 0xCu);
      sub_2756C92B4(v22, &qword_2809FEDA0);
      MEMORY[0x277C81E50](v22, -1, -1);
      MEMORY[0x277C81E50](v21, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    type metadata accessor for ManageStorageSpecifierView();
    sub_275715700(v6);
    v24 = sub_2757967F0();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v6, 1, v24) == 1)
    {
      sub_2756C92B4(v6, &qword_2809FEB80);
    }

    else
    {
      sub_2757967E0();
      (*(v25 + 8))(v6, v24);
    }

    v32 = [v18 icqLink];
    v35 = *(a2 + 24);
    v34[1] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEBC0);
    sub_2757975C0();
  }

  else
  {
    v17(v11, v16, v7);
    v26 = a1;
    v27 = sub_275796270();
    v28 = sub_275798310();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      v30 = [v26 icqLink];
      v31 = [v30 &selRef_addAlertFromLink_offer_];

      *(v29 + 4) = v31;
      _os_log_impl(&dword_275623000, v27, v28, "Action type %ld not handled by Manage Storage directly, attempting generic perform action.", v29, 0xCu);
      MEMORY[0x277C81E50](v29, -1, -1);
    }

    else
    {

      v27 = v26;
    }

    (*(v8 + 8))(v11, v7);
    v33 = [v26 icqLink];
    [v33 performAction];
  }
}

uint64_t sub_275716268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageSpecifierView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2757162CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageSpecifierView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_275716330(void *a1)
{
  v3 = *(type metadata accessor for ManageStorageSpecifierView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_275715DD4(a1, v4);
}

uint64_t sub_2757163A0@<X0>(id *a1@<X0>, void (*a2)(void *a1)@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v77 = a1;
  v5 = type metadata accessor for ManageStorageSpecifierView();
  v72 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = v6;
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE78);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v88 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v71 - v12;
  v13 = *a1;
  v14 = [*a1 title];
  v15 = sub_275797F50();
  v17 = v16;

  v90 = v15;
  v91 = v17;
  v18 = sub_2756DC79C();
  v19 = sub_2757970D0();
  v86 = v20;
  v87 = v19;
  v82 = v21;
  v89 = v22;
  v23 = [v13 subtitle];
  v24 = sub_275797F50();
  v26 = v25;

  v90 = v24;
  v91 = v26;
  v71 = v18;
  v27 = sub_2757970D0();
  v29 = v28;
  LOBYTE(v26) = v30;
  sub_275796FF0();
  v31 = sub_2757970A0();
  v33 = v32;
  LOBYTE(v17) = v34;

  v35 = v27;
  v36 = v77;
  sub_2756E15EC(v35, v29, v26 & 1);

  sub_275797500();
  v37 = sub_275797070();
  v79 = v38;
  v80 = v37;
  v78 = v39;
  v81 = v40;

  sub_2756E15EC(v31, v33, v17 & 1);

  v41 = *(v36 + 16);
  if (v41)
  {
    v42 = v41;
    v43 = [v42 title];
    v44 = sub_275797F50();
    v46 = v45;

    v90 = v44;
    v91 = v46;
    v47 = v36;
    v48 = v74;
    sub_275716268(v47, v74);
    v49 = (*(v72 + 80) + 24) & ~*(v72 + 80);
    v50 = (v73 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v42;
    sub_2757162CC(v48, v51 + v49);
    v52 = (v51 + v50);
    v53 = v76;
    *v52 = sub_275716330;
    v52[1] = v53;

    v54 = v75;
    sub_275797650();
    v56 = v83;
    v55 = v84;
    v57 = v54;
    v58 = v85;
    (*(v84 + 32))(v83, v57, v85);
    v59 = 0;
    v60 = v58;
    v61 = v55;
  }

  else
  {
    v59 = 1;
    v56 = v83;
    v61 = v84;
    v60 = v85;
  }

  (*(v61 + 56))(v56, v59, 1, v60);
  v62 = v82 & 1;
  LOBYTE(v90) = v82 & 1;
  v63 = v88;
  sub_2756C9074(v56, v88, &qword_2809FDE78);
  v65 = v86;
  v64 = v87;
  *a3 = v87;
  *(a3 + 8) = v65;
  *(a3 + 16) = v62;
  v67 = v79;
  v66 = v80;
  *(a3 + 24) = v89;
  *(a3 + 32) = v66;
  *(a3 + 40) = v67;
  v68 = v78 & 1;
  *(a3 + 48) = v78 & 1;
  *(a3 + 56) = v81;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEBC8);
  sub_2756C9074(v63, a3 + *(v69 + 64), &qword_2809FDE78);
  sub_2756E0DD0(v64, v65, v62);

  sub_2756E0DD0(v66, v67, v68);

  sub_2756C92B4(v56, &qword_2809FDE78);
  sub_2756C92B4(v63, &qword_2809FDE78);
  sub_2756E15EC(v66, v67, v68);

  sub_2756E15EC(v64, v65, v90);
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for ManageStorageSpecifierView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2757967F0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_275716AD4()
{
  type metadata accessor for ManageStorageSpecifierView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEBC0);
  sub_2757975B0();
  [v0 performAction];
}

uint64_t sub_275716B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v43 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  v42 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v44 = &v36 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE518);
  v37 = *(v40 - 8);
  v14 = v37;
  v15 = MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v47 = *(a1 + 88);
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE528);
  sub_2756CFA44(&qword_2809FE530, &qword_2809FE520);
  sub_275701540(&qword_2809FE538, &qword_2809FE540);
  v20 = sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  v45 = v10;
  v46 = v20;
  v21 = v10;
  swift_getOpaqueTypeConformance2();
  v22 = v18;
  v36 = v18;
  sub_2757977A0();
  sub_275796CE0();
  sub_2757966C0();
  v23 = sub_2757966E0();
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
  v24 = v44;
  sub_275797630();
  v25 = *(v14 + 16);
  v27 = v39;
  v26 = v40;
  v25(v39, v22, v40);
  v28 = v41;
  v29 = v42;
  v30 = *(v42 + 16);
  v30(v41, v24, v21);
  v31 = v43;
  v25(v43, v27, v26);
  v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE548) + 48)];
  v30(v32, v28, v21);
  v33 = *(v29 + 8);
  v33(v44, v21);
  v34 = *(v37 + 8);
  v34(v36, v26);
  v33(v28, v21);
  return (v34)(v27, v26);
}

uint64_t sub_275717078@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE550);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  v14 = *a1;
  v15 = [v14 title];
  v16 = sub_275797F50();
  v18 = v17;

  v24[2] = v16;
  v24[3] = v18;
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v14;
  sub_2756DC79C();

  v20 = v14;
  sub_275797650();
  if ([v20 isDefault])
  {
    sub_275796A00();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_275796A10();
  (*(*(v22 - 8) + 56))(v9, v21, 1, v22);
  sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  sub_275797240();
  sub_2756C92B4(v9, &qword_2809FE550);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_275717310@<X0>(uint64_t a1@<X8>)
{
  sub_2756DC79C();

  result = sub_2757970D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_275717380()
{
  result = qword_2809FEB30;
  if (!qword_2809FEB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEB20);
    sub_2756CFA44(&qword_2809FEB38, &qword_2809FEB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEB30);
  }

  return result;
}

uint64_t View.storageSummaryModel(_:)()
{
  swift_getKeyPath();

  sub_2757971B0();
}

uint64_t sub_2757174C4()
{
  sub_2757175EC();
  sub_275796C40();
  return v1;
}

uint64_t sub_275717500@<X0>(void *a1@<X8>)
{
  sub_2757175EC();
  result = sub_275796C40();
  *a1 = v3;
  return result;
}

uint64_t sub_275717550()
{
  sub_2757175EC();

  return sub_275796C50();
}

unint64_t sub_2757175EC()
{
  result = qword_280A06220[0];
  if (!qword_280A06220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A06220);
  }

  return result;
}

uint64_t sub_275717640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_275717B58();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t (*sub_2757176A4(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_2757175EC();
  sub_275796C40();
  return sub_275717704;
}

uint64_t sub_275717704(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_275796C50();
  }

  sub_275796C50();
}

void sub_275717808()
{
  sub_2756C557C(319, &qword_2809FEB50);
  if (v0 <= 0x3F)
  {
    sub_2756C557C(319, &qword_2809FEB58);
    if (v1 <= 0x3F)
    {
      sub_2757179E4(319, &qword_2809FEB60, &qword_2809FE560, 0x277D7F320, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_275717A4C(319, &qword_2809FEB68, &qword_2809FEB10, &unk_2757A87D8, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2756D3FDC();
          if (v4 <= 0x3F)
          {
            sub_2757179E4(319, &qword_2809FEB70, &qword_2809FE540, 0x277D7F348, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_275717A4C(319, &qword_2809FEB78, &qword_2809FEB80, &unk_2757A8960, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2757179E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2756C557C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_275717A4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_275717AB0()
{
  result = qword_2809FEB88;
  if (!qword_2809FEB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEB90);
    sub_275714E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEB88);
  }

  return result;
}

unint64_t sub_275717B58()
{
  result = qword_2809FEBA8;
  if (!qword_2809FEBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEBB0);
    sub_275714FC4(&qword_2809FEBB8, MEMORY[0x277D7F250]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEBA8);
  }

  return result;
}

void sub_275717C14()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x277D7F320]) initFromConfirmationAction_];
  v1();
}

uint64_t sub_275717C88()
{
  v1 = *(type metadata accessor for ManageStorageSpecifierView() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = [v2 confirmation];
  if (!v4)
  {
    return v3(v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  sub_2757975C0();
}

uint64_t sub_275717DCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_275717E3C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_275795F40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB10);
  sub_2757975A0();
  *(a2 + 24) = v26;
  sub_2757975A0();
  *(a2 + 40) = v26;
  *(a2 + 48) = *(&v26 + 1);
  v5 = *(type metadata accessor for ManageStorageSpecifierView() + 48);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB18);
  swift_storeEnumTagMultiPayload();
  *a2 = v3;
  v6 = [v3 actions];
  sub_2756C557C(0, &qword_2809FE560);
  v7 = sub_2757980E0();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:

    *(a2 + 16) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0xE000000000000000;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0xE000000000000000;
    goto LABEL_16;
  }

  if (!sub_275798640())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x277C80840](0, v7);
LABEL_6:
    v9 = v8;

    *(a2 + 16) = v9;
    v10 = [v9 confirmation];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 title];

      v13 = sub_275797F50();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    *(a2 + 56) = v13;
    *(a2 + 64) = v15;
    v16 = [v9 confirmation];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 subtitle];

      v19 = sub_275797F50();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    *(a2 + 72) = v19;
    *(a2 + 80) = v21;
    v22 = [v9 confirmation];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 actions];

      sub_2756C557C(0, &qword_2809FE540);
      v25 = sub_2757980E0();

LABEL_17:
      *(a2 + 88) = v25;
      *(a2 + 8) = v4;
      return;
    }

LABEL_16:
    v25 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_27571812C(char a1)
{
  if (a1)
  {
    return 0x2E6E6F7276656863;
  }

  else
  {
    return 0x6B72616D78;
  }
}

uint64_t sub_27571816C()
{
  v0 = sub_2757988A0();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2757181C0(char a1)
{
  if (a1)
  {
    return 0x75736F6C63736964;
  }

  else
  {
    return 0x6B72616D78;
  }
}

uint64_t sub_2757181F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x75736F6C63736964;
  }

  else
  {
    v3 = 0x6B72616D78;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA00000000006572;
  }

  if (*a2)
  {
    v5 = 0x75736F6C63736964;
  }

  else
  {
    v5 = 0x6B72616D78;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006572;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_275798980();
  }

  return v8 & 1;
}

unint64_t sub_2757182A4()
{
  result = qword_2809FEBF0;
  if (!qword_2809FEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEBF0);
  }

  return result;
}

uint64_t sub_2757182F8()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_27571837C()
{
  sub_275797FF0();
}

uint64_t sub_2757183EC()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_27571846C@<X0>(char *a1@<X8>)
{
  v2 = sub_2757988A0();

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

void sub_2757184CC(uint64_t *a1@<X8>)
{
  v2 = 0x6B72616D78;
  if (*v1)
  {
    v2 = 0x75736F6C63736964;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006572;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for ICQUISFSymbols(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICQUISFSymbols(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_275718688()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_2757186C8(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_275718714;
}

uint64_t sub_275718714()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_275718768()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC08);
  sub_2757975B0();
  return v1;
}

void sub_2757187B8()
{
  v1 = v0;
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[7];
  v37 = v10;
  v38 = v9;
  v39 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC10);
  MEMORY[0x277C7F850](&v35);
  v13 = v35;
  v14 = sub_275700E70();
  v15 = *(v3 + 16);
  if (v13 < 1)
  {
    v15(v6, v14, v2);
    v22 = sub_275796270();
    v23 = sub_275798310();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_275623000, v22, v23, "Review large files flow cancelled.", v24, 2u);
      MEMORY[0x277C81E50](v24, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong userDidCancelAction];
LABEL_11:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v33 = v11;
    v15(v8, v14, v2);
    sub_275711D04(v1, &v37);
    v16 = sub_275796270();
    v17 = sub_275798310();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = v9;
      v19 = v18;
      *v18 = 134217984;
      v35 = v40;
      v36 = v41;
      MEMORY[0x277C7F850](&v34, v12);
      v20 = v34;
      sub_275711D60(&v37);
      *(v19 + 1) = v20;
      _os_log_impl(&dword_275623000, v16, v17, "Review large files flow completed. User recovered: %ld bytes.", v19, 0xCu);
      v21 = v19;
      v9 = v32;
      MEMORY[0x277C81E50](v21, -1, -1);
    }

    else
    {
      sub_275711D60(&v37);
    }

    (*(v3 + 8))(v8, v2);
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      v37 = v10;
      v38 = v9;
      v39 = v33;
      MEMORY[0x277C7F850](&v35, v12);
      v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      [v27 userDidCompleteAction_];

      goto LABEL_11;
    }
  }

  v29 = *(v1 + 96);
  LOBYTE(v37) = *(v1 + 88);
  v38 = v29;
  LOBYTE(v35) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975C0();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    [v30 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_275718B98(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC08);
  sub_2757975C0();
  sub_2757975B0();
  if (!(a1 >> 62))
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v1)
    {
      return;
    }

    goto LABEL_3;
  }

  v2 = sub_275798640();

  if (!v2)
  {
LABEL_3:
    sub_2757187B8();
  }
}

void (*sub_275718C68(void *a1))(uint64_t a1, char a2)
{
  a1[3] = v1;
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC08);
  sub_2757975B0();
  return sub_275718CD0;
}

void sub_275718CD0(uint64_t a1, char a2)
{
  if (a2)
  {

    sub_275718B98(v2);
  }

  else
  {
    sub_275718B98(*(a1 + 16));
  }
}

uint64_t sub_275718D28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC08);
  sub_2757975D0();
  return v1;
}

uint64_t sub_275718D7C()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC10);
  MEMORY[0x277C7F850](&v4, v2);
  return v4;
}

void (*sub_275718E30(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[5];
  v6 = v1[6];
  v4[8] = v5;
  v4[9] = v6;
  v7 = v1[7];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC10);
  MEMORY[0x277C7F850]();
  return sub_275718EE4;
}

void sub_275718EE4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 72);
  *(*a1 + 24) = *(*a1 + 64);
  v4 = v1[10];
  v1[4] = v3;
  v1[5] = v4;
  v1[7] = v2;
  sub_275797740();

  free(v1);
}

uint64_t sub_275718F54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC10);
  sub_275797750();
  return v1;
}

uint64_t sub_275718FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC20);
  sub_2757975B0();
  return v1;
}

void (*sub_2757190A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[8];
  v6 = v1[9];
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  v7 = v1[10];
  v4[12] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC20);
  sub_2757975B0();
  return sub_275719154;
}

void sub_275719154(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[8] = v2[6];
  v4 = v2[7];
  v5 = v2[12];
  v2[4] = v3;
  v2[5] = v5;
  v2[9] = v4;
  if (a2)
  {

    sub_2757975C0();
  }

  else
  {
    sub_2757975C0();
  }

  free(v2);
}

uint64_t sub_275719210()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC20);
  sub_2757975D0();
  return v1;
}

uint64_t sub_27571926C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return v1;
}

uint64_t (*sub_275719320(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 88);
  *(v3 + 50) = v5;
  v6 = *(v1 + 96);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return sub_2756D014C;
}

uint64_t sub_2757193CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  return v1;
}

uint64_t sub_275719428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return v1;
}

uint64_t (*sub_2757194DC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 104);
  *(v3 + 50) = v5;
  v6 = *(v1 + 112);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return sub_2756D542C;
}

uint64_t sub_275719588()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  return v1;
}

uint64_t sub_2757195E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return v1;
}

uint64_t (*sub_275719698(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 120);
  *(v3 + 50) = v5;
  v6 = *(v1 + 128);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return sub_2756D542C;
}

uint64_t sub_275719744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  return v1;
}

uint64_t sub_2757197B4(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_2757975A0();
  return v3;
}

uint64_t sub_275719800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC30);
  sub_2757975A0();
  return v1;
}

uint64_t sub_275719848@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v34 = sub_275796E80();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC38);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v25 - v3;
  v37 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC40);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC48);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC50);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC58);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC60);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC68);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC70);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC78);
  v8 = sub_275796940();
  v9 = sub_2756CFA44(&qword_2809FEC80, &qword_2809FEC78);
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = MEMORY[0x277CDD980];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_2756CFA44(&qword_2809FEC88, &qword_2809FEC70);
  v38 = v5;
  v39 = v6;
  v40 = OpaqueTypeConformance2;
  v41 = v11;
  v12 = swift_getOpaqueTypeConformance2();
  v38 = v4;
  v39 = v12;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = sub_2756DC79C();
  v38 = v26;
  v39 = MEMORY[0x277D837D0];
  v40 = v13;
  v41 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v38 = v27;
  v39 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v38 = v28;
  v39 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v29;
  sub_2757968E0();
  v18 = v30;
  sub_275796E70();
  sub_2756CFA44(&qword_2809FEC98, &qword_2809FEC38);
  sub_275722FE0(&qword_2809FECA0, MEMORY[0x277CDE2A0]);
  v19 = v36;
  v20 = v31;
  v21 = v34;
  sub_275797150();
  (*(v35 + 8))(v18, v21);
  (*(v33 + 8))(v17, v20);
  sub_275711D04(v32, &v38);
  v22 = swift_allocObject();
  sub_27572067C(&v38, v22 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECA8);
  v24 = (v19 + *(result + 36));
  *v24 = sub_2757206B4;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  return result;
}

uint64_t sub_275719D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_275796DB0();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_275796DC0();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_275796C60();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275796940();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC78);
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC68);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v15 = &v50 - v14;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC60);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v17 = &v50 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC58);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v52 = &v50 - v18;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC50);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v75 = &v50 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC48);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v50 - v20;
  v77 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECB0);
  sub_2756CFA44(&qword_2809FECB8, &qword_2809FECB0);
  sub_275797050();
  sub_275796930();
  v21 = sub_2756CFA44(&qword_2809FEC80, &qword_2809FEC78);
  v22 = MEMORY[0x277CDD980];
  sub_2757973D0();
  (*(v53 + 8))(v10, v8);
  (*(v51 + 8))(v13, v11);
  v76 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC70);
  v80 = v11;
  v81 = v8;
  v82 = v21;
  v83 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_2756CFA44(&qword_2809FEC88, &qword_2809FEC70);
  v26 = v54;
  sub_275797380();
  v27 = v15;
  v28 = v26;
  (*(v55 + 8))(v27, v26);
  v29 = v62;
  v30 = v61;
  v31 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x277CDDDB0], v63);
  v80 = v28;
  v81 = v23;
  v82 = OpaqueTypeConformance2;
  v83 = v25;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v52;
  v34 = v56;
  sub_275797320();
  (*(v29 + 8))(v30, v31);
  (*(v57 + 8))(v17, v34);
  v80 = sub_2756ED3E0();
  v81 = v35;
  *&v78 = v34;
  *(&v78 + 1) = v32;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_2756DC79C();
  v38 = MEMORY[0x277D837D0];
  v39 = v58;
  sub_275797230();

  (*(v59 + 8))(v33, v39);
  v40 = *(a1 + 80);
  v78 = *(a1 + 64);
  v79 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC20);
  sub_2757975D0();
  v41 = v69;
  sub_275796DA0();
  v42 = v68;
  sub_275796D90();
  (*(v70 + 8))(v41, v71);
  v80 = v39;
  v81 = v38;
  v82 = v36;
  v83 = v37;
  v49 = swift_getOpaqueTypeConformance2();
  v43 = v64;
  v44 = v60;
  v45 = v75;
  sub_275797190();

  (*(v72 + 8))(v42, v73);
  (*(v65 + 8))(v45, v43);
  v80 = v43;
  v81 = v49;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v66;
  MEMORY[0x277C7F3F0](1, v66, v46);
  return (*(v67 + 8))(v44, v47);
}

uint64_t sub_27571A84C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECB0);
  sub_2756CFA44(&qword_2809FECB8, &qword_2809FECB0);
  return sub_275797050();
}

uint64_t sub_27571A8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEEE8);
  MEMORY[0x28223BE20](v3);
  v46 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEEF0);
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEEF8);
  v44 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v43 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEF00);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEF08);
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = sub_275796E10();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEF10);
  v48 = *(v17 - 8);
  v49 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  sub_275796DD0();
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECD0);
  sub_2756CFA44(&qword_2809FECD8, &qword_2809FECD0);
  v45 = v19;
  sub_275796780();
  sub_275796DE0();
  v57 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE20);
  sub_275722578();
  v53 = v15;
  sub_275796780();
  v20 = *(a1 + 112);
  LOBYTE(v60) = *(a1 + 104);
  v61 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  if (v59 == 1)
  {
    v21 = sub_275796E00();
    MEMORY[0x28223BE20](v21);
    *(&v43 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEF20);
    sub_2756CFA44(&qword_2809FEF28, &qword_2809FEF20);
    v22 = v43;
    sub_275796A60();
    v23 = sub_2756CFA44(&qword_2809FEF18, &qword_2809FEEF8);
    v24 = v52;
    MEMORY[0x277C7EF40](v22, v52, v23);
    v25 = v51;
    v26 = v47;
    (*(v51 + 16))(v47, v7, v5);
    (*(v25 + 56))(v26, 0, 1, v5);
    v60 = v24;
    v61 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x277C7EF50](v26, v5, OpaqueTypeConformance2);
    sub_2756C92B4(v26, &qword_2809FEF00);
    (*(v25 + 8))(v7, v5);
    (*(v44 + 8))(v22, v24);
  }

  else
  {
    v28 = v47;
    (*(v51 + 56))(v47, 1, 1, v5);
    v29 = sub_2756CFA44(&qword_2809FEF18, &qword_2809FEEF8);
    v60 = v52;
    v61 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    MEMORY[0x277C7EF50](v28, v5, v30);
    sub_2756C92B4(v28, &qword_2809FEF00);
  }

  v31 = *(v3 + 48);
  v32 = *(v3 + 64);
  v34 = v48;
  v33 = v49;
  v35 = v46;
  v36 = v45;
  (*(v48 + 16))(v46, v45, v49);
  v38 = v53;
  v37 = v54;
  v39 = v55;
  (*(v54 + 16))(&v35[v31], v53, v55);
  v40 = &v35[v32];
  v41 = v56;
  sub_2756C9074(v56, v40, &qword_2809FEF00);
  sub_275796D60();
  sub_2756C92B4(v41, &qword_2809FEF00);
  (*(v37 + 8))(v38, v39);
  return (*(v34 + 8))(v36, v33);
}

uint64_t sub_27571B0D4(uint64_t a1)
{
  v2 = sub_2757966E0();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2757966B0();
  sub_275711D04(a1, v8);
  v5 = swift_allocObject();
  sub_27572067C(v8, v5 + 16);
  return MEMORY[0x277C7F740](v4, sub_2757233E8, v5);
}

uint64_t sub_27571B1A8()
{
  v1 = sub_2757966E0();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2757966B0();
  sub_275711D04(v0, v7);
  v4 = swift_allocObject();
  sub_27572067C(v7, v4 + 16);
  return MEMORY[0x277C7F740](v3, sub_2757206C4, v4);
}

uint64_t sub_27571B278@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC8);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = sub_2757966E0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECD0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = *(v1 + 112);
  v22[0] = *(v1 + 104);
  v23 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  if (v24 == 1)
  {
    sub_2757966D0();
    sub_275711D04(v1, v22);
    v16 = swift_allocObject();
    sub_27572067C(v22, v16 + 16);
    MEMORY[0x277C7F740](v10, sub_2757233E0, v16);
    (*(v12 + 16))(v7, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_2756CFA44(&qword_2809FECD8, &qword_2809FECD0);
    sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
    sub_275796D80();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    sub_275711D04(v1, v22);
    v18 = swift_allocObject();
    sub_27572067C(v22, v18 + 16);
    sub_275797610();
    v19 = v21;
    (*(v2 + 16))(v7, v4, v21);
    swift_storeEnumTagMultiPayload();
    sub_2756CFA44(&qword_2809FECD8, &qword_2809FECD0);
    sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
    sub_275796D80();
    return (*(v2 + 8))(v4, v19);
  }
}

uint64_t sub_27571B708@<X0>(uint64_t a1@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEF30);
  v48 = *(v46 - 8);
  v2 = MEMORY[0x28223BE20](v46);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v47 = &v42 - v4;
  v59 = sub_27571C02C();
  v60 = v5;
  sub_2756DC79C();
  v6 = sub_2757970D0();
  v8 = v7;
  v10 = v9;
  v11 = sub_275797090();
  v13 = v12;
  v15 = v14;
  sub_2756E15EC(v6, v8, v10 & 1);

  sub_275797010();
  v44 = sub_2757970A0();
  v43 = v16;
  LOBYTE(v6) = v17;
  v19 = v18;

  sub_2756E15EC(v11, v13, v15 & 1);

  LOBYTE(v11) = sub_275796F90();
  sub_2757966F0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v6 & 1;
  LOBYTE(v59) = v6 & 1;
  LOBYTE(v53) = 0;
  v29 = v47;
  sub_27571BC30(v47);
  v30 = *(v48 + 16);
  v31 = v45;
  v32 = v29;
  v33 = v46;
  v30(v45, v32, v46);
  *a1 = 0;
  *(a1 + 8) = 1;
  v34 = v44;
  *&v53 = v44;
  v35 = v43;
  *(&v53 + 1) = v43;
  LOBYTE(v54) = v28;
  *(&v54 + 1) = *v52;
  DWORD1(v54) = *&v52[3];
  *(&v54 + 1) = v19;
  LOWORD(v55) = 1;
  *(&v55 + 2) = v50;
  WORD3(v55) = v51;
  BYTE8(v55) = v11;
  HIDWORD(v55) = *&v49[3];
  *(&v55 + 9) = *v49;
  *&v56 = v21;
  *(&v56 + 1) = v23;
  *&v57 = v25;
  *(&v57 + 1) = v27;
  v58 = 0;
  *(a1 + 96) = 0;
  v36 = v54;
  *(a1 + 16) = v53;
  *(a1 + 32) = v36;
  v37 = v57;
  v38 = v56;
  *(a1 + 48) = v55;
  *(a1 + 64) = v38;
  *(a1 + 80) = v37;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEF38);
  v30((a1 + *(v39 + 80)), v31, v33);
  sub_2757232C4(&v53, &v59);
  v40 = *(v48 + 8);
  v40(v47, v33);
  v40(v31, v33);
  v59 = v34;
  v60 = v35;
  v61 = v28;
  *v62 = *v52;
  *&v62[3] = *&v52[3];
  v63 = v19;
  v64 = 1;
  v65 = v50;
  v66 = v51;
  v67 = v11;
  *&v68[3] = *&v49[3];
  *v68 = *v49;
  v69 = v21;
  v70 = v23;
  v71 = v25;
  v72 = v27;
  v73 = 0;
  return sub_2756C92B4(&v59, &unk_2809FEF40);
}

uint64_t sub_27571BB2C@<X0>(uint64_t a1@<X8>)
{
  sub_27571C02C();
  sub_2756DC79C();
  v2 = sub_2757970D0();
  v4 = v3;
  v6 = v5;
  v7 = sub_275797090();
  v9 = v8;
  v11 = v10;
  sub_2756E15EC(v2, v4, v6 & 1);

  sub_275797010();
  v12 = sub_2757970A0();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_2756E15EC(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_27571BC30@<X0>(uint64_t a1@<X8>)
{
  v7[1] = a1;
  v7[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECE8);
  MEMORY[0x28223BE20](v7[0]);
  v3 = v7 - v2;
  sub_27571CD90(v7 - v2);
  v11 = sub_27571CFB8();
  v12 = v4;
  v5 = *(v1 + 128);
  v9 = *(v1 + 120);
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  sub_275720758();
  sub_2756DC79C();
  sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  sub_275797280();

  return sub_2756C92B4(v3, &qword_2809FECE8);
}

uint64_t sub_27571BDFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  result = sub_2757975B0();
  if (v1 == 1)
  {
    sub_27571BE98();
    return sub_2757975C0();
  }

  return result;
}

void sub_27571BE98()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 thresholdsForLargeFiles];
  sub_2756C557C(0, &qword_2809FED18);
  sub_275797EB0();

  v4 = sub_275797EA0();

  sub_275711D04(v1, v8);
  v5 = swift_allocObject();
  sub_27572067C(v8, v5 + 16);
  aBlock[4] = sub_27572083C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27571F2D4;
  aBlock[3] = &block_descriptor_4;
  v6 = _Block_copy(aBlock);

  [v2 fetchiCloudDriveItemsUsingThresholds:v4 shouldCheckTrash:1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_27571C02C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975B0();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v0 = sub_275798640();
  }

  else
  {
    v0 = *(v10 + 16);
  }

  sub_2756C557C(0, &qword_2809FDDB8);
  v1 = sub_275756884();
  if (v0)
  {
    sub_275795BF0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED30);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2757A4FC0;
    sub_2757975B0();
    if ((v10 & 0xC000000000000001) != 0)
    {
      v3 = sub_275798640();
    }

    else
    {
      v3 = *(v10 + 16);
    }

    v5 = MEMORY[0x277D83C10];
    *(v2 + 56) = MEMORY[0x277D83B88];
    *(v2 + 64) = v5;
    *(v2 + 32) = v3;
    v6 = sub_27571C280();
    v8 = v7;
    *(v2 + 96) = MEMORY[0x277D837D0];
    *(v2 + 104) = sub_2756E3D78();
    *(v2 + 72) = v6;
    *(v2 + 80) = v8;
    v4 = sub_275797F70();
  }

  else
  {
    v4 = sub_275795BF0();
  }

  return v4;
}

uint64_t sub_27571C280()
{
  type metadata accessor for FormatterUtils();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975B0();
  v0 = sub_27571C350(v5);

  v1 = sub_275783498(v0);
  v3 = v2;

  MEMORY[0x277C80130](v1, v3);

  MEMORY[0x277C80130](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_27571C350(uint64_t a1)
{
  v22 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_275798640();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v27 = MEMORY[0x277D84F90];
    sub_2757987A0();
    result = sub_2757985F0();
    v24 = result;
    v25 = v4;
    v26 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v27 = MEMORY[0x277D84F90];
  sub_2757987A0();
  result = sub_2757985C0();
  v5 = *(a1 + 36);
  v24 = result;
  v25 = v5;
  v26 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v24;
    v9 = v25;
    v11 = v26;
    v12 = sub_275722818(v24, v25, v26, a1);
    (*(*v12 + 104))(v12);

    sub_275798780();
    sub_2757987B0();
    sub_2757987C0();
    result = sub_275798790();
    if (v22)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_275798610())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE58);
      v7 = sub_275798240();
      sub_275798690();
      result = v7(v23, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_275722D70(v24, v25, v26);
        return v27;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_32;
      }

      v14 = v10 >> 6;
      v15 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v15 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v16 = v15 & (-2 << (v10 & 0x3F));
      if (v16)
      {
        v13 = __clz(__rbit64(v16)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v14 << 6;
        v18 = v14 + 1;
        v19 = (a1 + 64 + 8 * v14);
        while (v18 < (v13 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_275722D70(v10, v9, 0);
            v13 = __clz(__rbit64(v20)) + v17;
            goto LABEL_27;
          }
        }

        result = sub_275722D70(v10, v9, 0);
      }

LABEL_27:
      v24 = v13;
      v25 = v9;
      v26 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
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
  return result;
}

uint64_t sub_27571C67C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975B0();

  sub_2757975C0();

  sub_2757975B0();
  sub_275797840();
  sub_275796870();
}

uint64_t sub_27571C7D4()
{
  sub_275797840();
  sub_275796870();
}

uint64_t sub_27571C84C@<X0>(uint64_t a1@<X8>)
{
  sub_275796CE0();
  sub_2756C557C(0, &qword_2809FDDB8);
  sub_275756884();
  v2 = sub_2757970B0();
  v4 = v3;
  v6 = v5;
  v7 = sub_275797090();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_2756E15EC(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_27571C960()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_2757966A0();
  v4 = sub_2757966E0();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_275711D04(v0, v9);
  v5 = swift_allocObject();
  sub_27572067C(v9, v5 + 16);
  v8 = v0;
  return sub_275797600();
}

uint64_t sub_27571CAA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975B0();
  v0 = sub_27572091C(v2);

  sub_27571F394(v0);
  sub_275797830();
  sub_275796870();
}

uint64_t sub_27571CB68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975B0();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v0 = sub_275798640();
  }

  else
  {
    v0 = *(v7 + 16);
  }

  sub_2756C557C(0, &qword_2809FDDB8);
  v1 = sub_275756884();
  if (v0 < 2)
  {
    v4 = sub_275795BF0();
  }

  else
  {
    sub_275795BF0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED30);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2757A8B60;
    sub_2757975B0();
    if ((v7 & 0xC000000000000001) != 0)
    {
      v3 = sub_275798640();
    }

    else
    {
      v3 = *(v7 + 16);
    }

    v5 = MEMORY[0x277D83C10];
    *(v2 + 56) = MEMORY[0x277D83B88];
    *(v2 + 64) = v5;
    *(v2 + 32) = v3;
    v4 = sub_275797F70();
  }

  return v4;
}

uint64_t sub_27571CD90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-1] - v5;
  sub_275711D04(v1, v16);
  v7 = swift_allocObject();
  sub_27572067C(v16, v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED48);
  sub_275720A10();
  sub_275797610();
  v8 = *(v1 + 144);
  v16[0] = *(v1 + 136);
  v16[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975B0();
  if ((v15 & 0xC000000000000001) != 0)
  {
    v9 = sub_275798640();
  }

  else
  {
    v9 = *(v15 + 16);
  }

  v10 = v9 == 0;
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v4 + 32))(a1, v6, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECE8);
  v14 = (a1 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_275720ACC;
  v14[2] = v12;
  return result;
}

uint64_t sub_27571CFB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975B0();
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_275798640();
  }

  sub_2756C557C(0, &qword_2809FDDB8);
  v0 = sub_275756884();
  v1 = sub_275795BF0();

  return v1;
}

uint64_t sub_27571D0EC(uint64_t a1)
{
  v3 = sub_275796280();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *(v1 + 144);
    v21 = *(v1 + 136);
    v7 = v21;
    v22 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
    sub_2757975B0();

    v18 = v7;
    v19 = v8;
    v17 = MEMORY[0x277D84FA0];
    sub_2757975C0();
    v21 = v7;
    v22 = v8;

    sub_2757975B0();
    sub_2756EB350(&v20, a1);

    v18 = v7;
    v19 = v8;
    v16[1] = v17;
    sub_2757975C0();
  }

  else
  {
    v7 = *(v1 + 136);
    v8 = *(v1 + 144);
  }

  v21 = v7;
  v22 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975B0();
  if ((v18 & 0xC000000000000001) != 0)
  {
    v9 = sub_275798640();
  }

  else
  {
    v9 = *(v18 + 16);
  }

  if (v9)
  {
    v10 = *(v1 + 128);
    LOBYTE(v21) = *(v1 + 120);
    v22 = v10;
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
    return sub_2757975C0();
  }

  else
  {
    v12 = sub_275700E70();
    (*(v4 + 16))(v6, v12, v3);
    v13 = sub_275796270();
    v14 = sub_2757982F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_275623000, v13, v14, "Attempting to show delete confirmation without selecting any files!", v15, 2u);
      MEMORY[0x277C81E50](v15, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_27571D3D4()
{
  sub_275797550();
  sub_275796CE0();
  sub_2756C557C(0, &qword_2809FDDB8);
  sub_275756884();
  v0 = sub_2757970B0();
  v2 = v1;
  v4 = v3;
  sub_275797270();
  sub_2756E15EC(v0, v2, v4 & 1);
}

void *sub_27571D4FC()
{
  v1 = *(v0 + 80);
  v10 = *(v0 + 64);
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC20);
  sub_2757975B0();

  if ((v9 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v2 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v3 = *(v0 + 32);
  *&v10 = *(v0 + 24);
  *(&v10 + 1) = v3;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC08);
    v4 = sub_2757975B0();
    MEMORY[0x28223BE20](v4);
    v7[2] = v0;
    return sub_27571D61C(sub_275720AE4, v7, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC08);
    sub_2757975B0();
    return v8;
  }
}

void *sub_27571D61C(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_275798640();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x277C80840](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_275798780();
          sub_2757987B0();
          v5 = v14;
          sub_2757987C0();
          v3 = &v18;
          sub_275798790();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

uint64_t sub_27571D7D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE98);
  v3 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v72 = &v67 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEEA0);
  MEMORY[0x28223BE20](v75);
  v80 = &v67 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED60);
  v6 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v67 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED88);
  MEMORY[0x28223BE20](v85);
  v86 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEEA8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v82 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEEB0);
  v79 = *(v81 - 8);
  v14 = MEMORY[0x28223BE20](v81);
  v77 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  v18 = *(a1 + 32);
  v89 = *(a1 + 24);
  v90 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC08);
  sub_2757975B0();
  v78 = v13;
  if (v104 >> 62)
  {
    v19 = sub_275798640();
  }

  else
  {
    v19 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_2756DCB10();
  v20 = sub_2756DCB18(v19 == 0);
  v22 = v21;
  v23 = sub_275796FA0();
  v102 = 1;
  sub_275797820();
  sub_275796A70();
  *&v103[55] = v107;
  *&v103[71] = v108;
  *&v103[87] = v109;
  *&v103[103] = v110;
  *&v103[7] = v104;
  *&v103[23] = v105;
  *&v103[39] = v106;
  LOBYTE(v89) = v20 & 1;
  v90 = v22;
  LOBYTE(v91) = v23;
  v92 = 0u;
  v93 = 0u;
  v94 = 1;
  v99 = *&v103[64];
  v100 = *&v103[80];
  *v101 = *&v103[96];
  *&v101[15] = *(&v110 + 1);
  v95 = *v103;
  v96 = *&v103[16];
  v97 = *&v103[32];
  v98 = *&v103[48];
  sub_2757967C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEEB8);
  sub_275723028();
  v76 = v17;
  sub_275797250();
  v24 = *(a1 + 112);
  LOBYTE(v89) = *(a1 + 104);
  v90 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  v26 = v87;
  v27 = (v6 + 8);
  v87 = sub_27571D4FC();
  swift_getKeyPath();
  sub_275711D04(a1, &v89);
  v28 = swift_allocObject();
  sub_27572067C(&v89, v28 + 16);
  if (v26 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC00);
    sub_2756CFA44(&qword_2809FED68, &qword_2809FEC00);
    sub_275722FE0(&qword_2809FED70, type metadata accessor for ICQFPItem);
    sub_275720C34();
    v29 = v73;
    sub_2757977A0();
    sub_2757967C0();
    sub_275720C88();
    v30 = v86;
    v31 = v74;
    sub_2757972C0();
    (*v27)(v29, v31);
    v32 = sub_275796D10();
    v33 = v85;
    v34 = (v30 + *(v85 + 36));
    *v34 = v32;
    v34[1] = sub_27571ED24;
    v34[2] = 0;
    sub_2756C9074(v30, v80, &qword_2809FED88);
    swift_storeEnumTagMultiPayload();
    v35 = sub_275722658();
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FECC0);
    v37 = sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
    v89 = v33;
    v90 = v36;
    v91 = MEMORY[0x277CE0BD8];
    *&v92 = v35;
    *(&v92 + 1) = v37;
    *&v93 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v38 = v78;
    sub_275796D80();
    sub_2756C92B4(v30, &qword_2809FED88);
  }

  else
  {
    v70 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC00);
    v71 = v3;
    sub_2756CFA44(&qword_2809FED68, &qword_2809FEC00);
    sub_275722FE0(&qword_2809FED70, type metadata accessor for ICQFPItem);
    sub_275720C34();
    v39 = v73;
    sub_2757977A0();
    sub_2757967C0();
    sub_275720C88();
    v40 = v86;
    v41 = v74;
    sub_2757972C0();
    (*v27)(v39, v41);
    v42 = sub_275796D10();
    v43 = &v40[*(v85 + 36)];
    *v43 = v42;
    v43[1] = sub_27571ED24;
    v43[2] = 0;
    sub_275796CE0();
    v73 = v45;
    v74 = v44;
    v69 = v46;
    v47 = *(a1 + 128);
    LOBYTE(v87) = *(a1 + 120);
    v88 = v47;
    v48 = sub_2757975D0();
    v70 = &v67;
    v68 = v91;
    v49 = MEMORY[0x28223BE20](v48);
    MEMORY[0x28223BE20](v49);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
    v50 = sub_275722658();
    v66 = sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
    v51 = v85;
    v52 = v72;
    v53 = v86;
    sub_275797340();

    sub_2756C92B4(v53, &qword_2809FED88);
    v54 = v71;
    v55 = v83;
    (*(v71 + 16))(v80, v52, v83);
    swift_storeEnumTagMultiPayload();
    v89 = v51;
    v90 = v67;
    v91 = MEMORY[0x277CE0BD8];
    *&v92 = v50;
    *(&v92 + 1) = v66;
    *&v93 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v38 = v78;
    sub_275796D80();
    (*(v54 + 8))(v52, v55);
  }

  v56 = v79;
  v57 = *(v79 + 16);
  v58 = v76;
  v59 = v77;
  v60 = v81;
  v57(v77, v76, v81);
  v61 = v82;
  sub_2756C9074(v38, v82, &qword_2809FEEA8);
  v62 = v84;
  v57(v84, v59, v60);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEEE0);
  sub_2756C9074(v61, &v62[*(v63 + 48)], &qword_2809FEEA8);
  sub_2756C92B4(v38, &qword_2809FEEA8);
  v64 = *(v56 + 8);
  v64(v58, v60);
  sub_2756C92B4(v61, &qword_2809FEEA8);
  return (v64)(v59, v60);
}

uint64_t sub_27571E468@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v12 = sub_27571D4FC();
  swift_getKeyPath();
  sub_275711D04(v1, v11);
  v7 = swift_allocObject();
  sub_27572067C(v11, v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC00);
  sub_2756CFA44(&qword_2809FED68, &qword_2809FEC00);
  sub_275722FE0(&qword_2809FED70, type metadata accessor for ICQFPItem);
  sub_275720C34();
  sub_2757977A0();
  sub_2757967C0();
  sub_275720C88();
  sub_2757972C0();
  (*(v4 + 8))(v6, v3);
  v8 = sub_275796D10();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED88);
  v10 = (a1 + *(result + 36));
  *v10 = v8;
  v10[1] = sub_27571ED24;
  v10[2] = 0;
  return result;
}

uint64_t sub_27571E6C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  sub_2757966A0();
  v5 = sub_2757966E0();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_275711D04(a1, v10);
  v6 = swift_allocObject();
  sub_27572067C(v10, v6 + 16);
  v9 = a1;
  return sub_275797600();
}

uint64_t sub_27571E800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975B0();
  v0 = sub_27572091C(v4);

  sub_27571F394(v0);
  sub_275797830();
  sub_275796870();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC20);
  sub_2757975B0();

  v2 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v2 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v3 = sub_275797840();
    MEMORY[0x28223BE20](v3);
    sub_275796870();
  }

  return result;
}

__n128 sub_27571E964@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 112);
  LOBYTE(v17) = *(a2 + 104);
  v18 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  v7 = v16[0];
  v8 = *(a2 + 144);
  v16[0] = *(a2 + 136);
  v16[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975D0();
  v9 = v17;
  v10 = v18;
  v11 = v19;
  sub_275711D04(a2, &v17);
  v12 = swift_allocObject();
  sub_27572067C(&v17, v12 + 16);
  *(v12 + 184) = v5;
  sub_275711D04(a2, v16);
  v13 = swift_allocObject();
  sub_27572067C(v16, v13 + 16);
  *(v13 + 184) = v5;
  swift_retain_n();
  sub_2756EA974(v7, v9, v10, v11, sub_2757227C8, v12, sub_2757227F0, v20, v13);
  v14 = v20[3];
  *(a3 + 32) = v20[2];
  *(a3 + 48) = v14;
  *(a3 + 64) = v20[4];
  result = v20[1];
  *a3 = v20[0];
  *(a3 + 16) = result;
  return result;
}

void sub_27571EAF4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v1 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED90);
    v6 = sub_2757975B0();
    v7 = v15;
    if (!v15)
    {
      type metadata accessor for QuickLookProvider();
      v8 = (*(*a1 + 104))();
      v6 = sub_27578A520(v8);
      v7 = v6;
    }

    v9 = (*(*a1 + 104))(v6);
    v10 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v7) + 0x68))(v9);
    v11 = *((*v10 & *v7) + 0x80);

    v11(sub_275720D0C, a1);
    v12 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
    [v12 setDelegate_];
    [v12 setDataSource_];
    [v4 presentViewController:v12 animated:1 completion:0];

    v13 = v7;
    v14 = v5;
    sub_2757975C0();
  }
}

uint64_t sub_27571ED4C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2757978A0();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2757978C0();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275796280();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v37 = v6;
    v15 = a2;
    v16 = sub_275700E70();
    (*(v11 + 16))(v14, v16, v10);
    v17 = a2;
    v18 = sub_275796270();
    v19 = sub_2757982F0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = a3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v36 = v9;
      v34 = v22;
      v43[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_2757989F0();
      v25 = a1;
      v26 = sub_27562792C(v23, v24, v43);

      *(v21 + 4) = v26;
      a1 = v25;
      _os_log_impl(&dword_275623000, v18, v19, "%s", v21, 0xCu);
      v27 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      v9 = v36;
      MEMORY[0x277C81E50](v27, -1, -1);
      v28 = v21;
      a3 = v35;
      MEMORY[0x277C81E50](v28, -1, -1);
    }

    else
    {
    }

    result = (*(v11 + 8))(v14, v10);
    v6 = v37;
  }

  if (a1)
  {
    sub_2756C557C(0, &qword_2809FEE60);

    v29 = sub_275798340();
    sub_275711D04(a3, v43);
    v30 = swift_allocObject();
    sub_27572067C(v43, v30 + 16);
    *(v30 + 184) = a1;
    aBlock[4] = sub_275722E3C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2756C4584;
    aBlock[3] = &block_descriptor_67;
    v31 = _Block_copy(aBlock);

    sub_2757978B0();
    v43[0] = MEMORY[0x277D84F90];
    sub_275722FE0(&qword_2809FD6A8, MEMORY[0x277D85198]);
    v32 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
    sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
    v33 = v39;
    sub_2757985B0();
    MEMORY[0x277C80470](0, v32, v33, v31);
    _Block_release(v31);

    (*(v41 + 8))(v33, v6);
    return (*(v38 + 8))(v32, v40);
  }

  return result;
}

uint64_t sub_27571F2D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_2756C557C(0, &qword_2809FD6A0);
    v5 = sub_2757980E0();
  }

  v8 = a2;
  v9 = a4;
  v7(a2, v5, a4);
}

void sub_27571F394(unint64_t a1)
{
  v31 = sub_275796280();
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_29:
    v5 = sub_275798640();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v38 = MEMORY[0x277D84F90];
    sub_2757987A0();
    if (v5 < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x277C80840](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      ++v6;
      (*(*v7 + 104))();

      sub_275798780();
      sub_2757987B0();
      sub_2757987C0();
      sub_275798790();
    }

    while (v5 != v6);
  }

  v8 = objc_opt_self();
  sub_2756C557C(0, &qword_2809FD6A0);
  v9 = sub_2757980D0();

  [v8 deleteiCloudDriveItems_];

  if (!v4)
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }

    goto LABEL_14;
  }

  v11 = sub_275798640();
  if (v11)
  {
LABEL_14:
    if (v11 >= 1)
    {
      v12 = 0;
      v33 = a1 & 0xC000000000000001;
      v27 = (v2 + 8);
      v28 = (v2 + 16);
      *&v10 = 138412290;
      v26 = v10;
      v32 = v11;
      while (1)
      {
        if (v33)
        {
          v2 = MEMORY[0x277C80840](v12, a1);
        }

        else
        {
          v2 = *(a1 + 8 * v12 + 32);
        }

        v13 = *(*v2 + 104);
        v14 = v13();
        v4 = [v14 documentSize];

        if (v4)
        {
          v15 = [v4 integerValue];
          v17 = v29[5];
          v16 = v29[6];
          v18 = v29[7];
          v38 = v17;
          v39 = v16;
          v40 = v18;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC10);
          MEMORY[0x277C7F850](&v41);
          if (__OFADD__(v41, v15))
          {
            __break(1u);
            goto LABEL_29;
          }

          v35 = v17;
          v36 = v16;
          v37 = v18;
          v34 = &v15[v41];
          sub_275797740();

          v11 = v32;
        }

        else
        {
          v19 = sub_275700E70();
          (*v28)(v30, v19, v31);

          v20 = sub_275796270();
          v21 = sub_2757982E0();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = v26;
            v24 = v13();
            *(v22 + 4) = v24;
            *v23 = v24;
            _os_log_impl(&dword_275623000, v20, v21, "Unable to get document size for item %@", v22, 0xCu);
            sub_2756C92B4(v23, &qword_2809FEDA0);
            MEMORY[0x277C81E50](v23, -1, -1);
            v25 = v22;
            v11 = v32;
            MEMORY[0x277C81E50](v25, -1, -1);
          }

          else
          {
          }

          (*v27)(v30, v31);
        }

        if (v11 == ++v12)
        {
          return;
        }
      }
    }

    goto LABEL_31;
  }
}

uint64_t sub_27571F850(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  *(&v21 + 1) = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC08);
  sub_2757975B0();
  v4 = v24;
  *&v21 = MEMORY[0x277D84F90];
  if (v24 >> 62)
  {
LABEL_16:
    v19 = sub_275798640();
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_3:
      v18 = v3;
      v5 = 0;
      v20 = v4 & 0xC000000000000001;
      v3 = v19;
      while (1)
      {
        if (v20)
        {
          v7 = MEMORY[0x277C80840](v5, v4);
          v6 = v7;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v9 = v21;
            v3 = v18;
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(v4 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        v24 = v6;
        MEMORY[0x28223BE20](v7);
        v17[2] = &v24;
        if (sub_275721ED0(sub_275722D48, v17, a2))
        {
        }

        else
        {
          sub_275798780();
          sub_2757987B0();
          v3 = v19;
          sub_2757987C0();
          sub_275798790();
        }

        ++v5;
        if (v8 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:

  sub_275718B98(v9);
  v11 = *(v3 + 144);
  *&v21 = *(v3 + 136);
  v10 = v21;
  *(&v21 + 1) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED20);
  sub_2757975B0();

  v24 = v10;
  v25 = v11;
  v23 = MEMORY[0x277D84FA0];
  sub_2757975C0();

  v12 = sub_27571D4FC();
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v13)
    {
      return result;
    }

    goto LABEL_20;
  }

  v16 = sub_275798640();

  if (!v16)
  {
LABEL_20:
    v15 = *(v3 + 80);
    v21 = *(v3 + 64);
    v22 = v15;
    v24 = 0;
    v25 = 0xE000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC20);
    return sub_2757975C0();
  }

  return result;
}

double sub_27571FB50@<D0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  *a5 = 0x3FC3333333333333;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC00);
  sub_2757975A0();
  *(a5 + 24) = v11;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  sub_2757975A0();
  *(a5 + 64) = v11;
  *(a5 + 80) = v12;
  sub_2757975A0();
  *(a5 + 88) = v11;
  *(a5 + 96) = *(&v11 + 1);
  sub_2757975A0();
  *(a5 + 104) = v11;
  *(a5 + 112) = *(&v11 + 1);
  sub_2757975A0();
  *(a5 + 120) = v11;
  *(a5 + 128) = *(&v11 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE008);
  sub_2757975A0();
  *(a5 + 136) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC30);
  sub_2757975A0();
  result = *&v11;
  *(a5 + 152) = v11;
  return result;
}

uint64_t sub_27571FD40@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v34 = sub_275796E80();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC38);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v25 - v3;
  v37 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC40);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC48);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC50);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC58);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC60);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC68);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC70);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC78);
  v8 = sub_275796940();
  v9 = sub_2756CFA44(&qword_2809FEC80, &qword_2809FEC78);
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = MEMORY[0x277CDD980];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_2756CFA44(&qword_2809FEC88, &qword_2809FEC70);
  v38 = v5;
  v39 = v6;
  v40 = OpaqueTypeConformance2;
  v41 = v11;
  v12 = swift_getOpaqueTypeConformance2();
  v38 = v4;
  v39 = v12;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = sub_2756DC79C();
  v38 = v26;
  v39 = MEMORY[0x277D837D0];
  v40 = v13;
  v41 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v38 = v27;
  v39 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v38 = v28;
  v39 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v29;
  sub_2757968E0();
  v18 = v30;
  sub_275796E70();
  sub_2756CFA44(&qword_2809FEC98, &qword_2809FEC38);
  sub_275722FE0(&qword_2809FECA0, MEMORY[0x277CDE2A0]);
  v19 = v36;
  v20 = v31;
  v21 = v34;
  sub_275797150();
  (*(v35 + 8))(v18, v21);
  (*(v33 + 8))(v17, v20);
  sub_275711D04(v32, &v38);
  v22 = swift_allocObject();
  sub_27572067C(&v38, v22 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECA8);
  v24 = (v19 + *(result + 36));
  *v24 = sub_2757233E4;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  return result;
}

double sub_27572028C@<D0>(uint64_t a1@<X8>)
{
  *&v3 = 0;
  sub_275797770();
  *a1 = 0x3FC3333333333333;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC00);
  sub_2757975A0();
  *(a1 + 24) = __PAIR128__(*(&v3 + 1), 0);
  *(a1 + 40) = v5;
  *(a1 + 56) = v6;
  sub_2757975A0();
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  sub_2757975A0();
  *(a1 + 88) = 0;
  *(a1 + 96) = *(&v3 + 1);
  sub_2757975A0();
  *(a1 + 104) = 0;
  *(a1 + 112) = *(&v3 + 1);
  sub_2757975A0();
  *(a1 + 120) = 0;
  *(a1 + 128) = *(&v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE008);
  sub_2757975A0();
  *(a1 + 136) = __PAIR128__(*(&v3 + 1), 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC30);
  sub_2757975A0();
  result = 0.0;
  *(a1 + 152) = v3;
  return result;
}

uint64_t sub_275720450(uint64_t a1)
{
  v2 = sub_275722774();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_27572049C(uint64_t a1)
{
  v2 = sub_275722774();

  return MEMORY[0x28212D8E0](a1, v2);
}

char *sub_2757204E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE90);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2757205EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_275720758()
{
  result = qword_2809FECF0;
  if (!qword_2809FECF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FECE8);
    sub_2756CFA44(&qword_2809FECF8, &qword_2809FED00);
    sub_2756CFA44(&qword_2809FED08, &qword_2809FED10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FECF0);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2757208C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275796BC0();
  *a1 = result & 1;
  return result;
}

void *sub_27572091C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_275798640();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2757205EC(v2, 0);

    v1 = sub_275722A78(&v5, v3 + 4, v2, v1);
    sub_275722D68();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

unint64_t sub_275720A10()
{
  result = qword_2809FED50;
  if (!qword_2809FED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FED48);
    sub_275722FE0(&qword_2809FDD90, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FED50);
  }

  return result;
}

uint64_t sub_275720AE4(uint64_t a1)
{
  v1 = (*(**a1 + 104))();
  v2 = [v1 displayName];

  sub_275797F50();
  sub_275797FB0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC20);
  sub_2757975B0();
  sub_275797FB0();

  sub_2756DC79C();
  LOBYTE(v1) = sub_275798590();

  return v1 & 1;
}

unint64_t sub_275720C34()
{
  result = qword_2809FED78;
  if (!qword_2809FED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FED78);
  }

  return result;
}

unint64_t sub_275720C88()
{
  result = qword_2809FED80;
  if (!qword_2809FED80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FED60);
    sub_275720C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FED80);
  }

  return result;
}

uint64_t sub_275720D0C(void *a1)
{
  v4 = *(*v1 + 112);
  v2 = a1;

  return v4(v2);
}

uint64_t sub_275720D60(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_275722CA4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_275720DDC(v6);
  return sub_275798790();
}

void sub_275720DDC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_275798940();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ICQFPItem();
        v6 = sub_275798110();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2757210A8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_275720EE0(0, v2, 1, a1);
  }
}

void sub_275720EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = a1 - a3;
LABEL_5:
    v24 = a3;
    v7 = *(v4 + 8 * a3);
    v22 = v6;
    v23 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = *(*v7 + 104);

      v11 = v9(v10);
      v12 = [v11 documentSize];

      if (v12)
      {
        [v12 doubleValue];
        v14 = v13;
      }

      else
      {
        v14 = 0.0;
      }

      v15 = (*(*v8 + 104))();
      v16 = [v15 documentSize];

      if (v16)
      {
        [v16 doubleValue];
        v18 = v17;

        if (v18 >= v14)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if (v14 <= 0.0)
        {
          goto LABEL_4;
        }
      }

      if (!v4)
      {
        break;
      }

      v19 = *v5;
      v7 = v5[1];
      *v5 = v7;
      v5[1] = v19;
      --v5;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v24 + 1;
        v5 = v23 + 1;
        v6 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_2757210A8(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = *(a3 + 8);
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v11 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v111 = v5;
      v112 = *(v9 + 2);
      if (v112 >= 2)
      {
        while (*v11)
        {
          v5 = v112 - 1;
          v113 = *&v9[16 * v112];
          v114 = *&v9[16 * v112 + 24];
          sub_2757219B0((*v11 + 8 * v113), (*v11 + 8 * *&v9[16 * v112 + 16]), (*v11 + 8 * v114), v6);
          if (v111)
          {
            goto LABEL_116;
          }

          if (v114 < v113)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_275721EBC(v9);
          }

          if (v112 - 2 >= *(v9 + 2))
          {
            goto LABEL_133;
          }

          v115 = &v9[16 * v112];
          *v115 = v113;
          *(v115 + 1) = v114;
          sub_275721E30(v112 - 1);
          v112 = *(v9 + 2);
          if (v112 <= 1)
          {
            goto LABEL_116;
          }
        }

        goto LABEL_143;
      }

LABEL_116:

      return;
    }

LABEL_139:
    v9 = sub_275721EBC(v9);
    goto LABEL_108;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8;
  v11 = (v8 + 1);
  v122 = v9;
  if (v8 + 1 < v7)
  {
    v123 = v7;
    v12 = *v6;
    v13 = *(*v6 + 8 * v11);
    v14 = *(*v6 + 8 * v8);
    v15 = *(*v13 + 104);

    v17 = v15(v16);
    v18 = [v17 documentSize];

    if (v18)
    {
      [v18 doubleValue];
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = (*(*v14 + 104))();
    v22 = [v21 documentSize];

    if (v22)
    {
      [v22 doubleValue];
      v24 = v23;

      v25 = v24 < v20;
    }

    else
    {

      v25 = v20 > 0.0;
    }

    v9 = v122;
    v10 = v8;
    v11 = (v8 + 2);
    if (v8 + 2 < v123)
    {
      v26 = v12 + 8 * v8 + 16;
      do
      {
        v27 = v11;
        v28 = *(v26 - 8);
        v29 = *(**v26 + 104);

        v31 = v29(v30);
        v32 = [v31 documentSize];

        if (v32)
        {
          [v32 doubleValue];
          v34 = v33;
        }

        else
        {
          v34 = 0.0;
        }

        v35 = (*(*v28 + 104))();
        v36 = [v35 documentSize];

        if (v36)
        {
          [v36 doubleValue];
          v38 = v37;

          v9 = v122;
          if (((v25 ^ (v38 >= v34)) & 1) == 0)
          {
LABEL_20:
            v11 = v27;
            goto LABEL_22;
          }
        }

        else
        {

          v9 = v122;
          if (v25 == v34 <= 0.0)
          {
            goto LABEL_20;
          }
        }

        v11 = v27 + 1;
        v26 += 8;
      }

      while (v123 != v27 + 1);
      v11 = v123;
LABEL_22:
      v6 = a3;
      v10 = v8;
    }

    if (v25)
    {
      if (v11 < v10)
      {
        goto LABEL_136;
      }

      if (v10 < v11)
      {
        v39 = 8 * v11 - 8;
        v40 = 8 * v10;
        v41 = v11;
        v42 = v10;
        do
        {
          if (v42 != --v41)
          {
            v44 = *v6;
            if (!*v6)
            {
              goto LABEL_142;
            }

            v43 = *(v44 + v40);
            *(v44 + v40) = *(v44 + v39);
            *(v44 + v39) = v43;
          }

          ++v42;
          v39 -= 8;
          v40 += 8;
        }

        while (v42 < v41);
      }
    }
  }

  v45 = *(v6 + 1);
  if (v11 >= v45)
  {
    goto LABEL_55;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_135;
  }

  if (&v11[-v10] >= a4)
  {
    goto LABEL_55;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  if (v10 + a4 < v45)
  {
    v45 = (v10 + a4);
  }

  if (v45 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v11 == v45)
  {
    goto LABEL_55;
  }

  v121 = v45;
  v116 = v5;
  v46 = *v6;
  v47 = *v6 + 8 * v11 - 8;
  v119 = v10;
  v48 = v10 - v11;
LABEL_42:
  v124 = v11;
  v49 = *(v46 + 8 * v11);
  v50 = v48;
  v51 = v47;
  while (1)
  {
    v52 = *v51;
    v53 = *(*v49 + 104);

    v55 = v53(v54);
    v56 = [v55 documentSize];

    if (v56)
    {
      [v56 doubleValue];
      v58 = v57;
    }

    else
    {
      v58 = 0.0;
    }

    v59 = (*(*v52 + 104))();
    v60 = [v59 documentSize];

    if (v60)
    {
      [v60 doubleValue];
      v62 = v61;

      if (v62 >= v58)
      {
        goto LABEL_41;
      }
    }

    else
    {

      if (v58 <= 0.0)
      {
        goto LABEL_41;
      }
    }

    if (!v46)
    {
      break;
    }

    v63 = *v51;
    v49 = v51[1];
    *v51 = v49;
    v51[1] = v63;
    --v51;
    if (__CFADD__(v50++, 1))
    {
LABEL_41:
      v11 = v124 + 1;
      v47 += 8;
      --v48;
      if (v124 + 1 != v121)
      {
        goto LABEL_42;
      }

      v11 = v121;
      v9 = v122;
      v5 = v116;
      v6 = a3;
      v10 = v119;
LABEL_55:
      if (v11 < v10)
      {
        goto LABEL_134;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2757204E8(0, *(v9 + 2) + 1, 1, v9);
      }

      v66 = *(v9 + 2);
      v65 = *(v9 + 3);
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v9 = sub_2757204E8((v65 > 1), v66 + 1, 1, v9);
      }

      *(v9 + 2) = v67;
      v68 = &v9[16 * v66];
      *(v68 + 4) = v10;
      *(v68 + 5) = v11;
      v8 = v11;
      v11 = *a1;
      if (!*a1)
      {
        goto LABEL_144;
      }

      if (v66)
      {
        while (1)
        {
          v69 = v67 - 1;
          if (v67 >= 4)
          {
            break;
          }

          if (v67 == 3)
          {
            v70 = *(v9 + 4);
            v71 = *(v9 + 5);
            v80 = __OFSUB__(v71, v70);
            v72 = v71 - v70;
            v73 = v80;
LABEL_75:
            if (v73)
            {
              goto LABEL_123;
            }

            v86 = &v9[16 * v67];
            v88 = *v86;
            v87 = *(v86 + 1);
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_126;
            }

            v92 = &v9[16 * v69 + 32];
            v94 = *v92;
            v93 = *(v92 + 1);
            v80 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v80)
            {
              goto LABEL_129;
            }

            if (__OFADD__(v90, v95))
            {
              goto LABEL_130;
            }

            if (v90 + v95 >= v72)
            {
              if (v72 < v95)
              {
                v69 = v67 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          v96 = &v9[16 * v67];
          v98 = *v96;
          v97 = *(v96 + 1);
          v80 = __OFSUB__(v97, v98);
          v90 = v97 - v98;
          v91 = v80;
LABEL_89:
          if (v91)
          {
            goto LABEL_125;
          }

          v99 = &v9[16 * v69];
          v101 = *(v99 + 4);
          v100 = *(v99 + 5);
          v80 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v80)
          {
            goto LABEL_128;
          }

          if (v102 < v90)
          {
            goto LABEL_3;
          }

LABEL_96:
          v107 = v69 - 1;
          if (v69 - 1 >= v67)
          {
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          if (!*v6)
          {
            goto LABEL_141;
          }

          v108 = *&v9[16 * v107 + 32];
          v109 = *&v9[16 * v69 + 40];
          sub_2757219B0((*v6 + 8 * v108), (*v6 + 8 * *&v9[16 * v69 + 32]), (*v6 + 8 * v109), v11);
          if (v5)
          {
            goto LABEL_116;
          }

          if (v109 < v108)
          {
            goto LABEL_119;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_275721EBC(v9);
          }

          if (v107 >= *(v9 + 2))
          {
            goto LABEL_120;
          }

          v110 = &v9[16 * v107];
          *(v110 + 4) = v108;
          *(v110 + 5) = v109;
          sub_275721E30(v69);
          v67 = *(v9 + 2);
          if (v67 <= 1)
          {
            goto LABEL_3;
          }
        }

        v74 = &v9[16 * v67 + 32];
        v75 = *(v74 - 64);
        v76 = *(v74 - 56);
        v80 = __OFSUB__(v76, v75);
        v77 = v76 - v75;
        if (v80)
        {
          goto LABEL_121;
        }

        v79 = *(v74 - 48);
        v78 = *(v74 - 40);
        v80 = __OFSUB__(v78, v79);
        v72 = v78 - v79;
        v73 = v80;
        if (v80)
        {
          goto LABEL_122;
        }

        v81 = &v9[16 * v67];
        v83 = *v81;
        v82 = *(v81 + 1);
        v80 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v80)
        {
          goto LABEL_124;
        }

        v80 = __OFADD__(v72, v84);
        v85 = v72 + v84;
        if (v80)
        {
          goto LABEL_127;
        }

        if (v85 >= v77)
        {
          v103 = &v9[16 * v69 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v80 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v80)
          {
            goto LABEL_131;
          }

          if (v72 < v106)
          {
            v69 = v67 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

LABEL_3:
      v7 = *(v6 + 1);
      if (v8 >= v7)
      {
        goto LABEL_106;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_2757219B0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v31 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v31 > v6)
    {
LABEL_30:
      v48 = v31;
      v32 = v31 - 8;
      v5 -= 8;
      v33 = v14;
      v50 = v32;
      do
      {
        v34 = v4;
        v35 = *(v33 - 1);
        v33 -= 8;
        v36 = *v32;
        v37 = *(*v35 + 104);

        v39 = v37(v38);
        v40 = [v39 documentSize];

        if (v40)
        {
          [v40 doubleValue];
          v42 = v41;
        }

        else
        {
          v42 = 0.0;
        }

        v43 = (*(*v36 + 104))();
        v44 = [v43 documentSize];

        if (v44)
        {
          [v44 doubleValue];
          v46 = v45;

          v4 = v34;
          if (v46 < v42)
          {
            goto LABEL_41;
          }
        }

        else
        {

          v4 = v34;
          if (v42 > 0.0)
          {
LABEL_41:
            if (v5 + 8 != v48)
            {
              *v5 = *v50;
            }

            if (v14 <= v4 || (v31 = v50, v50 <= v6))
            {
              v31 = v50;
              goto LABEL_47;
            }

            goto LABEL_30;
          }
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v33;
        }

        v5 -= 8;
        v14 = v33;
        v32 = v50;
      }

      while (v33 > v4);
      v14 = v33;
      v31 = v48;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      v49 = v14;
      do
      {
        v16 = v15;
        v17 = v4;
        v18 = *v4;
        v19 = *(**v15 + 104);

        v21 = v19(v20);
        v22 = [v21 documentSize];

        if (v22)
        {
          [v22 doubleValue];
          v24 = v23;
        }

        else
        {
          v24 = 0.0;
        }

        v25 = (*(*v18 + 104))();
        v26 = [v25 documentSize];

        if (v26)
        {
          [v26 doubleValue];
          v28 = v27;

          v4 = v17;
          if (v28 >= v24)
          {
            goto LABEL_20;
          }
        }

        else
        {

          v4 = v17;
          if (v24 <= 0.0)
          {
LABEL_20:
            v29 = v4;
            v30 = v6 == v4;
            v4 += 8;
            v14 = v49;
            if (v30)
            {
              goto LABEL_22;
            }

LABEL_21:
            *v6 = *v29;
            goto LABEL_22;
          }
        }

        v29 = v15;
        v15 += 8;
        v14 = v49;
        if (v6 != v16)
        {
          goto LABEL_21;
        }

LABEL_22:
        v6 += 8;
      }

      while (v4 < v14 && v15 < v5);
    }

    v31 = v6;
  }

LABEL_47:
  if (v31 != v4 || v31 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v31, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_275721E30(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_275721EBC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_275721ED0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x277C80840](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_275798640();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}