uint64_t sub_27572200C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_275798640();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2757205EC(v3, 0);
  sub_2757220A0((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2757220A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_275798640();
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
      result = sub_275798640();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2756CFA44(&qword_2809FEE88, &qword_2809FEC00);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEC00);
            v9 = sub_275722244(v13, i, a3);
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
        type metadata accessor for ICQFPItem();
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

uint64_t (*sub_275722244(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277C80840](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2757222C4;
  }

  __break(1u);
  return result;
}

unint64_t sub_2757222EC()
{
  result = qword_2809FEDA8;
  if (!qword_2809FEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEDA8);
  }

  return result;
}

uint64_t sub_27572235C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2757223A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27572242C()
{
  result = qword_2809FEE10;
  if (!qword_2809FEE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FECA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEC38);
    sub_275796E80();
    sub_2756CFA44(&qword_2809FEC98, &qword_2809FEC38);
    sub_275722FE0(&qword_2809FECA0, MEMORY[0x277CDE2A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEE10);
  }

  return result;
}

unint64_t sub_275722578()
{
  result = qword_2809FEE18;
  if (!qword_2809FEE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEE20);
    sub_2756CFA44(&qword_2809FECD8, &qword_2809FECD0);
    sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEE18);
  }

  return result;
}

unint64_t sub_275722658()
{
  result = qword_2809FEE28;
  if (!qword_2809FEE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FED88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FED60);
    sub_275720C88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEE28);
  }

  return result;
}

unint64_t sub_275722720()
{
  result = qword_2809FEE30;
  if (!qword_2809FEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEE30);
  }

  return result;
}

unint64_t sub_275722774()
{
  result = qword_2809FEE38;
  if (!qword_2809FEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEE38);
  }

  return result;
}

uint64_t sub_275722818(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      type metadata accessor for ICQFPItem();
      result = sub_275798620();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_275798630();
      swift_dynamicCast();
      sub_275722FE0(&qword_2809FED70, type metadata accessor for ICQFPItem);
      v7 = sub_275797ED0();
      v8 = -1 << *(a4 + 32);
      v5 = v7 & ~v8;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v9 = ~v8;
        sub_275722FE0(&unk_2809FEE40, type metadata accessor for ICQFPItem);
        while ((sub_275797F00() & 1) == 0)
        {
          v5 = (v5 + 1) & v9;
          if (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_19;
      }

LABEL_13:

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
        }

        __break(1u);
LABEL_19:
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x277C80780](result, a2, v6);
  type metadata accessor for ICQFPItem();
  swift_dynamicCast();
  return v10;
}

uint64_t sub_275722A78(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  sub_275798600();
  type metadata accessor for ICQFPItem();
  sub_275722FE0(&qword_2809FED70, type metadata accessor for ICQFPItem);
  result = sub_275798250();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!sub_275798670())
    {
      goto LABEL_29;
    }

    type metadata accessor for ICQFPItem();
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_275722CB8()
{
  type metadata accessor for ICQFPItem();
  sub_275722FE0(&unk_2809FEE40, type metadata accessor for ICQFPItem);
  return sub_275797F00() & 1;
}

uint64_t sub_275722D70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_55Tm(void (*a1)(void))
{
  MEMORY[0x277C81EF0](v1 + 24);
  MEMORY[0x277C81EF0](v1 + 32);

  a1(*(v1 + 184));

  return MEMORY[0x2821FE8E8](v1, 192, 7);
}

void sub_275722E3C()
{
  v1 = *(v0 + 184);
  if (v1 >> 62)
  {
    v2 = sub_275798640();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  v9 = MEMORY[0x277D84F90];
  sub_2757987A0();
  if ((v2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for ICQFPItem();
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      do
      {
        v4 = v3 + 1;
        v5 = MEMORY[0x277C80840]();
        sub_2756C3B9C(v5);
        sub_275798780();
        sub_2757987B0();
        sub_2757987C0();
        sub_275798790();
        v3 = v4;
      }

      while (v2 != v4);
    }

    else
    {
      v6 = (v1 + 32);
      do
      {
        v7 = *v6++;
        sub_2756C3B9C(v7);
        sub_275798780();
        sub_2757987B0();
        sub_2757987C0();
        sub_275798790();
        --v2;
      }

      while (v2);
    }

LABEL_11:

    v9 = sub_27572200C(v8);
    sub_275720D60(&v9);

    sub_275718B98(v9);
    return;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_275722FE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_275723028()
{
  result = qword_2809FEEC0;
  if (!qword_2809FEEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEEB8);
    sub_2757230B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEEC0);
  }

  return result;
}

unint64_t sub_2757230B4()
{
  result = qword_2809FEEC8;
  if (!qword_2809FEEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809FEED0);
    sub_2756DDBC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEEC8);
  }

  return result;
}

uint64_t sub_2757231BC@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1();
  sub_2756DC79C();
  result = sub_2757970D0();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2757232C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{
  MEMORY[0x277C81EF0](v0 + 24);
  MEMORY[0x277C81EF0](v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_275723430()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for SpecifierView()
{
  result = qword_280A06890;
  if (!qword_280A06890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2757234F4()
{
  v1 = (v0 + *(type metadata accessor for SpecifierView() + 28));
  v2 = *v1;
  sub_275723554(*v1, v1[1]);
  return v2;
}

uint64_t sub_275723554(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_275723598@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_275796C80();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEF50);
  return sub_2757235EC(v1, a1 + *(v3 + 44));
}

uint64_t sub_2757235EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEFB0);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v92 = &v92 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEFB8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v101 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = &v92 - v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE598);
  v8 = *(v108 - 1);
  MEMORY[0x28223BE20](v108);
  v107 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v92 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v92 - v17;
  v19 = sub_275795CB0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEFC0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v109 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v92 - v26;
  v97 = type metadata accessor for SpecifierView();
  v28 = *(v97 + 24);
  v98 = a1;
  sub_2756C9074(a1 + v28, v18, &qword_2809FD700);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_2756C92B4(v18, &qword_2809FD700);
    v29 = 1;
    v30 = v108;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    (*(v20 + 16))(v16, v22, v19);
    (*(v20 + 56))(v16, 0, 1, v19);
    sub_2756C9074(v16, v13, &qword_2809FD700);
    v31 = swift_allocObject();
    v31[2] = sub_275724184;
    v31[3] = 0;
    v31[4] = sub_2757034C0;
    v31[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5B8);
    sub_2757039FC();
    v32 = v107;
    sub_275796680();
    sub_2756C92B4(v16, &qword_2809FD700);
    (*(v20 + 8))(v22, v19);
    v33 = v108;
    (*(v8 + 32))(v27, v32, v108);
    v29 = 0;
    v30 = v33;
  }

  v34 = *(v8 + 56);
  v108 = v27;
  v34(v27, v29, 1, v30);
  v107 = sub_275796D30();
  LOBYTE(v111) = 1;
  v35 = v98;
  v36 = v98[1];
  v117 = *v98;
  v118 = v36;
  sub_2756DC79C();

  v104 = sub_2757970D0();
  v105 = v38;
  v106 = v39;
  v40 = v35[3];
  if (v40)
  {
    v117 = v35[2];
    v118 = v40;
    LODWORD(v103) = v37;

    v41 = sub_2757970D0();
    v43 = v42;
    v45 = v44;
    sub_275796FF0();
    v46 = sub_2757970A0();
    v48 = v47;
    v50 = v49;

    sub_2756E15EC(v41, v43, v45 & 1);

    sub_275797500();
    v51 = sub_275797070();
    v53 = v52;
    v55 = v54;
    v57 = v56;

    sub_2756E15EC(v46, v48, v50 & 1);
    v58 = v57;

    v59 = v55 & 1;
    sub_2756E0DD0(v51, v53, v55 & 1);

    LOBYTE(v37) = v103;
  }

  else
  {
    v51 = 0;
    v53 = 0;
    v59 = 0;
    v58 = 0;
  }

  v60 = v37 & 1;
  v61 = v104;
  v62 = v105;
  sub_2756E0DD0(v104, v105, v37 & 1);

  sub_2756E171C(v51, v53, v59, v58);
  sub_2756E1760(v51, v53, v59, v58);
  LOBYTE(v117) = v60;
  v103 = v51;
  v94 = v59;
  sub_2756E1760(v51, v53, v59, v58);
  v93 = v60;
  sub_2756E15EC(v61, v62, v60);

  v63 = v111;
  v64 = (v35 + *(v97 + 28));
  v65 = v64[1];
  v96 = v53;
  v95 = v58;
  if (v65)
  {
    v67 = v64[2];
    v66 = v64[3];
    v68 = MEMORY[0x28223BE20](*v64);
    *(&v92 - 4) = v68;
    *(&v92 - 3) = v65;
    *(&v92 - 2) = v67;
    *(&v92 - 1) = v66;
    sub_275723554(v68, v65);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEFD0);
    sub_275724C64();
    v69 = v92;
    sub_275797610();

    v70 = v99;
    v71 = v110;
    v72 = v100;
    (*(v99 + 32))(v110, v69, v100);
    v73 = 0;
  }

  else
  {
    v73 = 1;
    v71 = v110;
    v72 = v100;
    v70 = v99;
  }

  (*(v70 + 56))(v71, v73, 1, v72);
  v74 = v109;
  sub_2756C9074(v108, v109, &qword_2809FEFC0);
  v75 = v101;
  sub_2756C9074(v71, v101, &qword_2809FEFB8);
  v76 = v102;
  sub_2756C9074(v74, v102, &qword_2809FEFC0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEFC8);
  v78 = v76 + v77[12];
  v111 = v107;
  LOBYTE(v112) = v63;
  *(&v112 + 1) = v131[0];
  DWORD1(v112) = *(v131 + 3);
  v79 = v104;
  *(&v112 + 1) = v104;
  v80 = v105;
  *&v113 = v105;
  LODWORD(v100) = v63;
  v81 = v93;
  BYTE8(v113) = v93;
  HIDWORD(v113) = *(v130 + 3);
  *(&v113 + 9) = v130[0];
  v82 = v106;
  *&v114 = v106;
  *(&v114 + 1) = v103;
  v83 = v96;
  v84 = v94;
  *&v115 = v96;
  *(&v115 + 1) = v94;
  v85 = v95;
  v116 = v95;
  v86 = v113;
  v87 = v114;
  v88 = v115;
  *(v78 + 80) = v95;
  *(v78 + 48) = v87;
  *(v78 + 64) = v88;
  v89 = v111;
  *(v78 + 16) = v112;
  *(v78 + 32) = v86;
  *v78 = v89;
  v90 = v76 + v77[16];
  *v90 = 0;
  *(v90 + 8) = 1;
  sub_2756C9074(v75, v76 + v77[20], &qword_2809FEFB8);
  sub_2756C9074(&v111, &v117, &qword_2809FEAC0);
  sub_2756C92B4(v110, &qword_2809FEFB8);
  sub_2756C92B4(v108, &qword_2809FEFC0);
  sub_2756C92B4(v75, &qword_2809FEFB8);
  v117 = v107;
  v118 = 0;
  v119 = v100;
  *v120 = v131[0];
  *&v120[3] = *(v131 + 3);
  v121 = v79;
  v122 = v80;
  v123 = v81;
  *v124 = v130[0];
  *&v124[3] = *(v130 + 3);
  v125 = v82;
  v126 = v103;
  v127 = v83;
  v128 = v84;
  v129 = v85;
  sub_2756C92B4(&v117, &qword_2809FEAC0);
  return sub_2756C92B4(v109, &qword_2809FEFC0);
}

uint64_t sub_275724184@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2757242A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v15 = type metadata accessor for SpecifierView();
  result = sub_275724320(a5, a9 + *(v15 + 24));
  v17 = (a9 + *(v15 + 28));
  *v17 = a6;
  v17[1] = a7;
  v17[2] = a8;
  v17[3] = a10;
  return result;
}

uint64_t sub_275724320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275724390()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_275795CB0();
  __swift_allocate_value_buffer(v3, qword_280A066F8);
  v4 = __swift_project_value_buffer(v3, qword_280A066F8);
  sub_275795CA0();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_2757244C0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEF58);
  v1 = MEMORY[0x28223BE20](v33);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v30 = &v26 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v29 = type metadata accessor for SpecifierView();
  v10 = *(v29 + 24);
  if (qword_280A066F0 != -1)
  {
    swift_once();
  }

  v26 = 0x80000002757B9010;
  v27 = 0x80000002757B8FF0;
  v11 = sub_275795CB0();
  v28 = __swift_project_value_buffer(v11, qword_280A066F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v9[v10], v28, v11);
  v14 = *(v12 + 56);
  v14(&v9[v10], 0, 1, v11);
  *v9 = 0xD000000000000013;
  *(v9 + 1) = 0x80000002757B8FF0;
  *(v9 + 2) = 0xD000000000000016;
  *(v9 + 3) = 0x80000002757B9010;
  v15 = v28;
  v16 = v29;
  v17 = &v9[*(v29 + 28)];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *&v9[*(v33 + 36)] = xmmword_2757A8F10;
  v18 = *(v16 + 24);
  v13(&v7[v18], v15, v11);
  v14(&v7[v18], 0, 1, v11);
  *v7 = 0xD000000000000013;
  v19 = v26;
  *(v7 + 1) = v27;
  *(v7 + 2) = 0xD000000000000016;
  *(v7 + 3) = v19;
  v20 = &v7[*(v16 + 28)];
  *v20 = xmmword_2757A8F20;
  *(v20 + 2) = nullsub_1;
  *(v20 + 3) = 0;
  *&v7[*(v33 + 36)] = xmmword_2757A8F30;
  v21 = v30;
  sub_2756C9074(v9, v30, &qword_2809FEF58);
  v22 = v31;
  sub_2756C9074(v7, v31, &qword_2809FEF58);
  v23 = v32;
  sub_2756C9074(v21, v32, &qword_2809FEF58);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEF60);
  sub_2756C9074(v22, v23 + *(v24 + 48), &qword_2809FEF58);
  sub_2756C92B4(v7, &qword_2809FEF58);
  sub_2756C92B4(v9, &qword_2809FEF58);
  sub_2756C92B4(v22, &qword_2809FEF58);
  return sub_2756C92B4(v21, &qword_2809FEF58);
}

unint64_t sub_275724858()
{
  result = qword_2809FEF68;
  if (!qword_2809FEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEF68);
  }

  return result;
}

uint64_t sub_2757248CC(uint64_t a1)
{
  v2 = sub_275724B14();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_275724918(uint64_t a1)
{
  v2 = sub_275724B14();

  return MEMORY[0x28212D8E0](a1, v2);
}

void sub_27572498C()
{
  sub_275724AA8(319, &qword_2809FEF70);
  if (v0 <= 0x3F)
  {
    sub_275724A50();
    if (v1 <= 0x3F)
    {
      sub_275724AA8(319, &qword_2809FEF80);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275724A50()
{
  if (!qword_2809FEF78)
  {
    sub_275795CB0();
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FEF78);
    }
  }
}

void sub_275724AA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_275798550();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_275724B14()
{
  result = qword_2809FEFA8;
  if (!qword_2809FEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEFA8);
  }

  return result;
}

__n128 sub_275724B68@<Q0>(uint64_t a1@<X8>)
{
  v11 = *(v1 + 16);
  sub_2756DC79C();

  v3 = sub_2757970D0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_275797820();
  sub_275796A70();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 96) = v15;
  *(a1 + 112) = v16;
  *(a1 + 128) = v17;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  result = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  return result;
}

unint64_t sub_275724C64()
{
  result = qword_2809FEFD8;
  if (!qword_2809FEFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEFD8);
  }

  return result;
}

uint64_t sub_275724CE8(uint64_t a1, uint64_t a2)
{
  nullsub_1(a1, a2);
  *(swift_allocObject() + 16) = a1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEFE0);
  sub_2756CFA44(&qword_2809FDB90, &qword_2809FDB88);
  sub_2756CFA44(&qword_2809FEFE8, &qword_2809FEFE0);
  sub_2756D8AAC();
  return sub_2757977B0();
}

double sub_275724E38@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v26 = a1[4];
  v29 = sub_275796C80();
  v39 = 0;
  KeyPath = swift_getKeyPath();

  sub_275797820();
  sub_2757967D0();
  *&v46 = v2;
  *(&v46 + 1) = v3;
  sub_2756DC79C();

  v4 = sub_2757970D0();
  v6 = v5;
  v8 = v7;
  sub_275796FF0();
  v9 = sub_2757970A0();
  v11 = v10;
  v13 = v12;

  sub_2756E15EC(v4, v6, v8 & 1);

  sub_275797500();
  v14 = sub_275797070();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_2756E15EC(v9, v11, v13 & 1);

  *&v40 = KeyPath;
  *(&v40 + 1) = v26;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  LOBYTE(v33[0]) = v18 & 1;
  v36 = v31;
  v37 = v32;
  v34 = v40;
  v35 = v30;
  sub_2756C9074(&v40, &v46, &qword_2809FF050);
  sub_2756E0DD0(v14, v16, v18 & 1);

  sub_2756E15EC(v14, v16, v18 & 1);

  *&v46 = KeyPath;
  *(&v46 + 1) = v26;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  sub_2756C92B4(&v46, &qword_2809FF050);
  *(&v45 + 1) = v33[0];
  DWORD1(v45) = *(v33 + 3);
  v40 = v34;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  *&v44 = v14;
  *(&v44 + 1) = v16;
  LOBYTE(v45) = v18 & 1;
  *(&v45 + 1) = v20;
  v48 = v31;
  v49 = v32;
  v46 = v34;
  v47 = v30;
  v50 = v14;
  v51 = v16;
  v52 = v18 & 1;
  *&v53[3] = *(v33 + 3);
  *v53 = v33[0];
  v54 = v20;
  sub_2756C9074(&v40, &v30, &qword_2809FF048);
  sub_2756C92B4(&v46, &qword_2809FF048);
  *&v38[39] = v42;
  *&v38[55] = v43;
  *&v38[71] = v44;
  *&v38[87] = v45;
  *&v38[7] = v40;
  *&v38[23] = v41;
  v21 = *&v38[32];
  *(a2 + 65) = *&v38[48];
  v22 = *&v38[80];
  *(a2 + 81) = *&v38[64];
  *(a2 + 97) = v22;
  result = *v38;
  v24 = *&v38[16];
  *(a2 + 17) = *v38;
  *(a2 + 33) = v24;
  v25 = v39;
  *a2 = v29;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v25;
  *(a2 + 112) = *&v38[95];
  *(a2 + 49) = v21;
  return result;
}

uint64_t sub_275725158(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  nullsub_1(a1, a2);
  *(swift_allocObject() + 16) = v3;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEFE0);
  sub_2756CFA44(&qword_2809FDB90, &qword_2809FDB88);
  sub_2756CFA44(&qword_2809FEFE8, &qword_2809FEFE0);
  sub_2756D8AAC();
  return sub_2757977B0();
}

double sub_2757252A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A4FC0;
  v1 = sub_275797490();
  v2 = sub_275797490();
  sub_275700CD8(0xD000000000000011, 0x80000002757B8280, 0, v1, v2, v8, 100000000.0);
  v3 = v8[1];
  v0[2] = v8[0];
  v0[3] = v3;
  v0[4] = v8[2];
  v4 = sub_2757974C0();
  v5 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xE900000000000073, 0, v4, v5, v9, 100000000.0);
  v6 = v9[1];
  v0[5] = v9[0];
  v0[6] = v6;
  result = *&v10;
  v0[7] = v10;
  qword_280A0D818 = v0;
  return result;
}

uint64_t *sub_2757253B8()
{
  if (qword_280A068A0 != -1)
  {
    swift_once();
  }

  return &qword_280A0D818;
}

uint64_t (*sub_275725450())()
{
  if (qword_280A068A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_2757254D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A90F0;
  v1 = sub_275797490();
  v2 = sub_275797490();
  sub_275700CD8(0xD000000000000011, 0x80000002757B8280, 0, v1, v2, v14, 100000000.0);
  v3 = v14[1];
  v0[2] = v14[0];
  v0[3] = v3;
  v0[4] = v14[2];
  v4 = sub_2757974C0();
  v5 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xE900000000000073, 0, v4, v5, v15, 100000000.0);
  v6 = v15[1];
  v0[5] = v15[0];
  v0[6] = v6;
  v0[7] = v15[2];
  v7 = sub_275797400();
  v8 = sub_275797400();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003273, 0, v7, v8, v16, 100000000.0);
  v9 = v16[1];
  v0[8] = v16[0];
  v0[9] = v9;
  v0[10] = v16[2];
  v10 = sub_275797400();
  v11 = sub_275797420();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003373, 0, v10, v11, v17, 100000000.0);
  v12 = v17[1];
  v0[11] = v17[0];
  v0[12] = v12;
  result = *&v18;
  v0[13] = v18;
  qword_280A0D820 = v0;
  return result;
}

uint64_t *sub_275725678()
{
  if (qword_280A068A8 != -1)
  {
    swift_once();
  }

  return &qword_280A0D820;
}

uint64_t (*sub_275725710())()
{
  if (qword_280A068A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_275725798()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A4FD0;
  v1 = sub_275797490();
  v2 = sub_275797490();
  sub_275700CD8(0xD000000000000011, 0x80000002757B8280, 0, v1, v2, v17, 4900000000.0);
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
  v10 = sub_275797460();
  v11 = sub_275797460();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003373, 0, v10, v11, v20, 100000000.0);
  v12 = v20[1];
  v0[11] = v20[0];
  v0[12] = v12;
  v0[13] = v20[2];
  v13 = sub_275797450();
  v14 = sub_275797450();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003473, 0, v13, v14, v21, 100000000.0);
  v15 = v21[1];
  v0[14] = v21[0];
  v0[15] = v15;
  result = *&v22;
  v0[16] = v22;
  qword_280A0D828 = v0;
  return result;
}

uint64_t *sub_275725978()
{
  if (qword_280A068B0 != -1)
  {
    swift_once();
  }

  return &qword_280A0D828;
}

uint64_t (*sub_275725A10())()
{
  if (qword_280A068B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_275725A98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A9100;
  v1 = sub_275797490();
  v2 = sub_275797490();
  sub_275700CD8(0xD000000000000011, 0x80000002757B8280, 0, v1, v2, v23, 4900000000.0);
  v3 = v23[1];
  v0[2] = v23[0];
  v0[3] = v3;
  v0[4] = v23[2];
  v4 = sub_2757974C0();
  v5 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xE900000000000073, 0, v4, v5, v24, 100000000.0);
  v6 = v24[1];
  v0[5] = v24[0];
  v0[6] = v6;
  v0[7] = v24[2];
  v7 = sub_275797400();
  v8 = sub_275797400();
  sub_275700CD8(0xD00000000000001CLL, 0x80000002757B8AC0, 0, v7, v8, v25, 100000000.0);
  v9 = v25[1];
  v0[8] = v25[0];
  v0[9] = v9;
  v0[10] = v25[2];
  v10 = sub_275797460();
  v11 = sub_275797460();
  sub_275700CD8(0xD000000000000023, 0x80000002757B8AE0, 0, v10, v11, v26, 100000000.0);
  v12 = v26[1];
  v0[11] = v26[0];
  v0[12] = v12;
  v0[13] = v26[2];
  v13 = sub_275797450();
  v14 = sub_275797450();
  sub_275700CD8(0xD00000000000001FLL, 0x80000002757B8B10, 0, v13, v14, v27, 100000000.0);
  v15 = v27[1];
  v0[14] = v27[0];
  v0[15] = v15;
  v0[16] = v27[2];
  v16 = sub_275797440();
  v17 = sub_275797440();
  sub_275700CD8(0xD000000000000033, 0x80000002757B8B30, 0, v16, v17, v28, 100000000.0);
  v18 = v28[1];
  v0[17] = v28[0];
  v0[18] = v18;
  v0[19] = v28[2];
  v19 = sub_275797470();
  v20 = sub_275797470();
  sub_275700CD8(0xD000000000000018, 0x80000002757B8B70, 0, v19, v20, v29, 100000000.0);
  v21 = v29[1];
  v0[20] = v29[0];
  v0[21] = v21;
  result = *&v30;
  v0[22] = v30;
  qword_280A0D830 = v0;
  return result;
}

uint64_t *sub_275725D28()
{
  if (qword_280A068B8 != -1)
  {
    swift_once();
  }

  return &qword_280A0D830;
}

uint64_t (*sub_275725DC0())()
{
  if (qword_280A068B8[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_275725E48@<X0>(void *a1@<X8>)
{
  if (qword_280A068B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_280A0D828;

  sub_275797820();
  sub_2757967D0();
  v25 = v32;
  v27 = v34;
  v29 = v37;
  v30 = v36;
  v26 = v33;
  LOBYTE(v111[0]) = v33;
  v28 = v35;
  LOBYTE(v101[0]) = v35;
  if (qword_280A068A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v24 = qword_280A0D820;

  sub_275797820();
  sub_2757967D0();
  v18 = v38;
  v20 = v40;
  v22 = v43;
  v23 = v42;
  v1 = v39;
  LOBYTE(v111[0]) = v39;
  v21 = v41;
  LOBYTE(v101[0]) = v41;
  if (qword_280A068B8[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = qword_280A0D830;

  sub_275797820();
  sub_2757967D0();
  v2 = v45;
  v12 = v44;
  v13 = v46;
  v3 = v47;
  v14 = v49;
  v15 = v48;
  LOBYTE(v111[0]) = v45;
  LOBYTE(v101[0]) = v47;
  if (qword_280A068A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280A0D818;

  sub_275797820();
  sub_2757967D0();
  v5 = v50;
  v9 = v52;
  v10 = v55;
  v11 = v54;
  LOBYTE(v111[0]) = v51;
  v7 = v51;
  v8 = v53;
  LOBYTE(v101[0]) = v53;
  *&v64 = v19;
  *(&v64 + 1) = v32;
  LOBYTE(v65) = v33;
  DWORD1(v65) = *&v57[3];
  *(&v65 + 1) = *v57;
  *(&v65 + 1) = v34;
  LOBYTE(v66) = v35;
  DWORD1(v66) = *&v56[3];
  *(&v66 + 1) = *v56;
  *(&v66 + 1) = v36;
  *v67 = v37;
  *&v67[8] = xmmword_2757A7CE0;
  *&__src[4] = 0xEC00000065676172;
  __src[2] = v66;
  __src[3] = *v67;
  __src[0] = v64;
  __src[1] = v65;
  *&v68 = v24;
  *(&v68 + 1) = v38;
  LOBYTE(v69) = v39;
  DWORD1(v69) = *&v59[3];
  *(&v69 + 1) = *v59;
  *(&v69 + 1) = v40;
  LOBYTE(v70) = v41;
  DWORD1(v70) = *&v58[3];
  *(&v70 + 1) = *v58;
  *(&v70 + 1) = v42;
  *&v71 = v43;
  DWORD1(v74) = *&v61[3];
  *(&v74 + 1) = *v61;
  DWORD1(v75) = *&v60[3];
  *(&v75 + 1) = *v60;
  DWORD1(v79) = *&v63[3];
  *(&v79 + 1) = *v63;
  DWORD1(v80) = *&v62[3];
  *(&v80 + 1) = *v62;
  *&v78 = v4;
  *(&v78 + 1) = v50;
  LOBYTE(v79) = v51;
  *(&v79 + 1) = v52;
  LOBYTE(v80) = v53;
  *(&v80 + 1) = v54;
  *v81 = v55;
  *&v81[8] = xmmword_2757A7CF0;
  *(&__src[16] + 8) = *v81;
  *&__src[13] = 0x80000002757B8AA0;
  *(&__src[17] + 1) = 0xEF656761726F7453;
  *(&v71 + 1) = 0xD000000000000017;
  v72 = 0x80000002757B8A80;
  *(&__src[4] + 8) = v68;
  *(&__src[8] + 1) = 0x80000002757B8A80;
  *(&__src[7] + 8) = v71;
  *(&__src[6] + 8) = v70;
  *(&__src[5] + 8) = v69;
  *&v73 = v16;
  *(&v73 + 1) = v44;
  LOBYTE(v74) = v45;
  *(&v74 + 1) = v46;
  LOBYTE(v75) = v47;
  *(&v75 + 1) = v48;
  *&v76 = v49;
  *(&__src[13] + 8) = v78;
  *(&__src[15] + 8) = v80;
  *(&__src[14] + 8) = v79;
  *(&v76 + 1) = 0xD00000000000001CLL;
  v77 = 0x80000002757B8AA0;
  __src[11] = v75;
  __src[12] = v76;
  __src[9] = v73;
  __src[10] = v74;
  memcpy(a1, __src, 0x120uLL);
  v82[0] = v4;
  v82[1] = v5;
  v83 = v7;
  *v84 = *v63;
  *&v84[3] = *&v63[3];
  v85 = v9;
  v86 = v8;
  *v87 = *v62;
  *&v87[3] = *&v62[3];
  v88 = v11;
  v89 = v10;
  v90 = xmmword_2757A7CF0;
  sub_2756C9074(&v64, v111, &qword_2809FEFF0);
  sub_2756C9074(&v68, v111, &qword_2809FEFF0);
  sub_2756C9074(&v73, v111, &qword_2809FEFF0);
  sub_2756C9074(&v78, v111, &qword_2809FEFF0);
  sub_2756C92B4(v82, &qword_2809FEFF0);
  v91[0] = v16;
  v91[1] = v12;
  v92 = v2;
  *v93 = *v61;
  *&v93[3] = *&v61[3];
  v94 = v13;
  v95 = v3;
  *v96 = *v60;
  *&v96[3] = *&v60[3];
  v97 = v15;
  v98 = v14;
  v99 = 0xD00000000000001CLL;
  v100 = 0x80000002757B8AA0;
  sub_2756C92B4(v91, &qword_2809FEFF0);
  v101[0] = v24;
  v101[1] = v18;
  v102 = v1;
  *v103 = *v59;
  *&v103[3] = *&v59[3];
  v104 = v20;
  v105 = v21;
  *v106 = *v58;
  *&v106[3] = *&v58[3];
  v107 = v23;
  v108 = v22;
  v109 = 0xD000000000000017;
  v110 = 0x80000002757B8A80;
  sub_2756C92B4(v101, &qword_2809FEFF0);
  v111[0] = v19;
  v111[1] = v25;
  v112 = v26;
  *v113 = *v57;
  *&v113[3] = *&v57[3];
  v114 = v27;
  v115 = v28;
  *v116 = *v56;
  *&v116[3] = *&v56[3];
  v117 = v30;
  v118 = v29;
  v119 = xmmword_2757A7CE0;
  return sub_2756C92B4(v111, &qword_2809FEFF0);
}

unint64_t sub_2757265C4()
{
  result = qword_2809FEFF8;
  if (!qword_2809FEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEFF8);
  }

  return result;
}

uint64_t sub_275726638(uint64_t a1)
{
  v2 = sub_275726858();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_275726684(uint64_t a1)
{
  v2 = sub_275726858();

  return MEMORY[0x28212D8E0](a1, v2);
}

unint64_t sub_2757266F0()
{
  result = qword_2809FF000;
  if (!qword_2809FF000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF008);
    sub_2756CFA44(&qword_2809FF010, &qword_2809FF018);
    sub_2757267A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF000);
  }

  return result;
}

unint64_t sub_2757267A8()
{
  result = qword_2809FF020;
  if (!qword_2809FF020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF028);
    sub_2756CFA44(&qword_2809FEFE8, &qword_2809FEFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF020);
  }

  return result;
}

unint64_t sub_275726858()
{
  result = qword_2809FF040;
  if (!qword_2809FF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF040);
  }

  return result;
}

Swift::Void __swiftcall UIViewController.addChildAndPinToEdges(childViewController:)(UIViewController *childViewController)
{
  v3 = [(UIViewController *)childViewController view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [(UIViewController *)childViewController view];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  [v6 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2757A92D0;
  v10 = [(UIViewController *)childViewController view];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = [(UIView *)v10 topAnchor];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [(NSLayoutYAxisAnchor *)v12 constraintEqualToAnchor:v15];
  *(v9 + 32) = v16;
  v17 = [(UIViewController *)childViewController view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [(UIView *)v17 leadingAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [(NSLayoutXAxisAnchor *)v19 constraintEqualToAnchor:v22];
  *(v9 + 40) = v23;
  v24 = [(UIViewController *)childViewController view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [(UIView *)v24 trailingAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [(NSLayoutXAxisAnchor *)v26 constraintEqualToAnchor:v29];
  *(v9 + 48) = v30;
  v31 = [(UIViewController *)childViewController view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [(UIView *)v31 bottomAnchor];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 bottomAnchor];

  v38 = [(NSLayoutYAxisAnchor *)v33 constraintEqualToAnchor:v37];
  *(v9 + 56) = v38;
  sub_2756C557C(0, &qword_2809FF058);
  v39 = sub_2757980D0();

  [v36 activateConstraints_];

  [v1 addChildViewController_];

  [(UIViewController *)childViewController didMoveToParentViewController:v1];
}

void sub_275726CB4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIViewController.addChildAndPinToEdges(childViewController:)(v4);
}

void __swiftcall UIViewController.topMostViewController()(UIViewController *__return_ptr retstr)
{
  v2 = [v1 presentedViewController];
  if (v2)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v2 = [v12 topViewController];
      if (v2)
      {
LABEL_2:
        v3 = v2;
        [v2 topMostViewController];

        return;
      }
    }

    else
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v2 = [v20 selectedViewController];
        if (v2)
        {
          goto LABEL_2;
        }
      }
    }

LABEL_26:

    v21 = v22;
    return;
  }

  v5 = v4;
  v6 = [v4 viewControllerForColumn_];
  v7 = [v5 viewControllerForColumn_];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = [v5 traitCollection];
    v11 = [v10 horizontalSizeClass];

    if (v11 == 1)
    {
      [v9 topMostViewController];

      return;
    }
  }

  if (v6)
  {
    [v6 topMostViewController];

    return;
  }

  v13 = [v5 viewControllers];
  sub_2756C557C(0, &qword_2809FE8C8);
  v14 = sub_2757980E0();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  v15 = sub_275798640();
  if (!v15)
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_15:
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_30;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v18 = MEMORY[0x277C80840](v17, v14);
    goto LABEL_20;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v17 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v14 + 8 * v17 + 32);
LABEL_20:
    v19 = v18;

    [v19 topMostViewController];

    return;
  }

  __break(1u);
}

id sub_275727050(void *a1)
{
  v1 = a1;
  UIViewController.topMostViewController()(v2);
  v4 = v3;

  return v4;
}

uint64_t sub_275727094@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_urlString;
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27572710C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2757271B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_275727228@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEB80);
  sub_2757277B4();
  v7[0] = v3;
  v7[1] = v5;
  v7[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v7);

  sub_2757972A0();

  __swift_project_boxed_opaque_existential_1(v7, OpaqueTypeMetadata2);
  a2[3] = sub_275796990();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2757971C0();

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_275727410(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v2 = sub_2757978A0();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2757978C0();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_2756CB330();
  v12 = sub_275798340();
  sub_2756C9074(v18, v11, &qword_2809FEB80);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v19;
  sub_275717DCC(v11, v14 + v13);
  aBlock[4] = sub_27572955C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2756C4584;
  aBlock[3] = &block_descriptor_5;
  v15 = _Block_copy(aBlock);

  sub_2757978B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275729618(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
  sub_2757985B0();
  MEMORY[0x277C80470](0, v7, v4, v15);
  _Block_release(v15);

  (*(v22 + 8))(v4, v2);
  return (*(v20 + 8))(v7, v21);
}

unint64_t sub_2757277B4()
{
  result = qword_2809FF060;
  if (!qword_2809FF060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEB80);
    sub_275729618(&qword_2809FF068, MEMORY[0x277CDD848]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF060);
  }

  return result;
}

id sub_275727868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_275795CB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_resolvedURL;
  swift_beginAccess();
  sub_2756C9074(a1 + v9, v4, &qword_2809FD700);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_2756C92B4(v4, &qword_2809FD700);
  }

  (*(v6 + 32))(v8, v4, v5);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;
    v12 = sub_275795C70();
    [v11 openURL:v12 configuration:0 completionHandler:0];

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_275727A80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_275728994)(a1);
}

uint64_t sub_275727B2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0x80000002757B9090;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0x80000002757B9090;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_275727BD0()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_275727C50()
{
  sub_275797FF0();
}

uint64_t sub_275727CBC()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_275727D38@<X0>(char *a1@<X8>)
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

void sub_275727D98(unint64_t *a1@<X8>)
{
  v2 = 0x80000002757B9090;
  v3 = 7107189;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_275727DD4()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_275727E0C@<X0>(char *a1@<X8>)
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

uint64_t sub_275727E7C(uint64_t a1)
{
  v2 = sub_2757290DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275727EB8(uint64_t a1)
{
  v2 = sub_2757290DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275727EF4(void *a1)
{
  v2 = swift_allocObject();
  sub_275727F44(a1);
  return v2;
}

char *sub_275727F44(void *a1)
{
  v3 = v1;
  v36 = *v1;
  v37 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD850);
  MEMORY[0x28223BE20](v5 - 8);
  v30 = &v27 - v6;
  v31 = sub_275796530();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF070);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_shouldDismissSheet;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
  v13 = *(*(v12 - 8) + 56);
  v28 = v11;
  v13(&v3[v11], 1, 1, v12);
  v14 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_dismissAction;
  v15 = sub_2757967F0();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_resolvedURL;
  v17 = sub_275795CB0();
  (*(*(v17 - 8) + 56))(&v3[v16], 1, 1, v17);
  v18 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2757290DC();
  v35 = v10;
  v19 = v37;
  sub_275798A80();
  if (v19)
  {
    sub_2756C92B4(&v3[OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_shouldDismissSheet], &qword_2809FD850);
    sub_2756C92B4(&v3[OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_dismissAction], &qword_2809FEB80);
    sub_2756C92B4(&v3[OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_resolvedURL], &qword_2809FD700);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v29;
    v20 = v30;
    v38 = 0;
    sub_275729618(&qword_2809FD770, MEMORY[0x277D23340]);
    v22 = v33;
    v23 = v31;
    sub_275798910();
    (*(v21 + 32))(&v3[OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_urlString], v34, v23);
    v38 = 1;
    sub_2756CFA44(&qword_2809FD870, &qword_2809FD868);
    v25 = v35;
    sub_2757988E0();
    (*(v32 + 8))(v25, v22);
    v26 = v28;
    swift_beginAccess();
    sub_275703F04(v20, &v3[v26], &qword_2809FD850);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_0(v39);
  return v3;
}

uint64_t sub_275728458()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_urlString;
  v2 = sub_275796530();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_shouldDismissSheet, &qword_2809FD850);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_dismissAction, &qword_2809FEB80);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_resolvedURL, &qword_2809FD700);
  return v0;
}

uint64_t sub_275728518()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_urlString;
  v2 = sub_275796530();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_shouldDismissSheet, &qword_2809FD850);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_dismissAction, &qword_2809FEB80);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_resolvedURL, &qword_2809FD700);

  return swift_deallocClassInstance();
}

uint64_t sub_275728614(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DBB90;

  return (sub_275728994)(a1);
}

uint64_t sub_2757286C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEB80);
  sub_2757277B4();
  v7[0] = v3;
  v7[1] = v5;
  v7[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v7);

  sub_2757972A0();

  __swift_project_boxed_opaque_existential_1(v7, OpaqueTypeMetadata2);
  a2[3] = sub_275796990();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2757971C0();

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

char *sub_27572893C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_275727F44(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_275728994(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_2757967F0();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = sub_275795CB0();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275728B5C, 0, 0);
}

uint64_t sub_275728B5C()
{
  sub_275796520();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_275795CA0();

  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 96);
    (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
    v9 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_shouldDismissSheet;
    swift_beginAccess();
    if (*(v6 + 48))(v8 + v9, 1, v7) || ((*(*(v0 + 136) + 16))(*(v0 + 144), v8 + v9, *(v0 + 128)), sub_275796390(), (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128)), (*(v0 + 200)))
    {
      v10 = *(v0 + 176);
      v11 = *(v0 + 168);
      v12 = *(v0 + 152);
      v13 = *(v0 + 104);
      v14 = *(v0 + 112);
      v15 = *(v0 + 96);
      (*(v10 + 16))(v12, *(v0 + 184), v11);
      (*(v10 + 56))(v12, 0, 1, v11);
      v16 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_resolvedURL;
      swift_beginAccess();
      sub_275703F04(v12, v15 + v16, &qword_2809FD700);
      swift_endAccess();
      v17 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_dismissAction;
      swift_beginAccess();
      if ((*(v14 + 48))(v15 + v17, 1, v13))
      {
        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        swift_endAccess();
        goto LABEL_3;
      }

      (*(*(v0 + 112) + 16))(*(v0 + 120), v15 + v17, *(v0 + 104));
      swift_endAccess();
      sub_2757981B0();
      *(v0 + 192) = sub_2757981A0();
      v18 = sub_275798160();
      v20 = v19;
      v21 = sub_275728F98;
      v22 = v18;
      v23 = v20;
    }

    else
    {
      v21 = [objc_opt_self() defaultWorkspace];
      if (v21)
      {
        v24 = v21;
        v26 = *(v0 + 176);
        v25 = *(v0 + 184);
        v27 = *(v0 + 168);
        v28 = sub_275795C70();
        [v24 openURL:v28 configuration:0 completionHandler:0];

        (*(v26 + 8))(v25, v27);
        goto LABEL_3;
      }

      __break(1u);
    }

    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  sub_2756C92B4(*(v0 + 160), &qword_2809FD700);
LABEL_3:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_275728F98()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  sub_2757967E0();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_27572902C, 0, 0);
}

uint64_t sub_27572902C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_2757290DC()
{
  result = qword_280A06A70;
  if (!qword_280A06A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A06A70);
  }

  return result;
}

uint64_t type metadata accessor for OpenDeepLinkAction()
{
  result = qword_280A06C00;
  if (!qword_280A06C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275729214()
{
  sub_275796530();
  if (v0 <= 0x3F)
  {
    sub_27572938C();
    if (v1 <= 0x3F)
    {
      sub_2757293F0(319, &qword_2809FF088, MEMORY[0x277CDD848]);
      if (v2 <= 0x3F)
      {
        sub_2757293F0(319, &qword_2809FEF78, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_27572938C()
{
  if (!qword_2809FD8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD868);
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FD8A0);
    }
  }
}

void sub_2757293F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_275798550();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_275729458()
{
  result = qword_280A06D90[0];
  if (!qword_280A06D90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A06D90);
  }

  return result;
}

unint64_t sub_2757294B0()
{
  result = qword_280A06EA0;
  if (!qword_280A06EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A06EA0);
  }

  return result;
}

unint64_t sub_275729508()
{
  result = qword_280A06EA8[0];
  if (!qword_280A06EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A06EA8);
  }

  return result;
}

uint64_t sub_27572955C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = OBJC_IVAR____TtC13iCloudQuotaUI18OpenDeepLinkAction_dismissAction;
  swift_beginAccess();
  sub_275729660(v0 + v2, v3 + v4);
  return swift_endAccess();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275729618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275729660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t static UIViewController.makeLiftUIViewController(forController:withURL:account:presenter:data:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(sub_275795F10());
  v11 = a3;
  v12 = sub_275795EF0();
  v13 = (*((*MEMORY[0x277D85000] & *a1) + 0xA0))(a2, v12, a4, a5);

  return v13;
}

id sub_27572978C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v11 = sub_275795CB0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275795C90();
  if (a7)
  {
    a7 = sub_275797EB0();
  }

  v15 = objc_allocWithZone(sub_275795F10());
  v16 = a5;
  v17 = a3;
  v18 = a6;
  v19 = sub_275795EF0();
  v20 = (*((*MEMORY[0x277D85000] & *v17) + 0xA0))(v14, v19, v18, a7);

  (*(v12 + 8))(v14, v11);

  return v20;
}

uint64_t static UIViewController.makeLiftUIViewController(forController:withContent:account:presenter:data:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(sub_275795F10());
  v13 = a4;
  v14 = sub_275795EF0();
  v15 = (*((*MEMORY[0x277D85000] & *a1) + 0xA8))(a2, a3, v14, a5, a6);

  return v15;
}

id sub_275729A20(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = sub_275795CC0();
  v18 = v17;

  if (v15)
  {
    v19 = sub_275797EB0();
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_allocWithZone(sub_275795F10());
  v21 = v13;
  v22 = sub_275795EF0();
  v23 = (*((*MEMORY[0x277D85000] & *v11) + 0xA8))(v16, v18, v22, v14, v19);

  sub_2756E782C(v16, v18);

  return v23;
}

void sub_275729BCC(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_275729C28(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ICQLiftUIController_presenter;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_275729CC0;
}

void sub_275729CC0(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void *sub_275729D3C()
{
  v1 = OBJC_IVAR___ICQLiftUIController_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_275729D88(uint64_t a1)
{
  v3 = OBJC_IVAR___ICQLiftUIController_dataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_275729EA8(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t sub_275729F00(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v75 = a1;
  v9 = sub_275795D60();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_275795CB0();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_275796570();
  v65 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDC30);
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v66 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0B0);
  v73 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v69 = &v54 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0B8);
  MEMORY[0x28223BE20](v68);
  v72 = &v54 - v17;
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *v4) + 0x78);
  v67 = a3;
  v19(a3);
  v20 = *((*v18 & *v4) + 0x90);
  v57 = a2;
  v20(a2);
  v21 = v75;
  v74 = a3;
  if (a4)
  {
    v55 = v13;
    v56 = v15;
    v22 = 1 << *(a4 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(a4 + 64);
    v25 = (v22 + 63) >> 6;
    v76 = a4;

    v26 = 0;
    while (v24)
    {
      v27 = v26;
      result = v76;
LABEL_11:
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = v29 | (v27 << 6);
      v31 = (*(result + 48) + 16 * v30);
      v32 = *v31;
      v33 = v31[1];
      sub_275627B04(*(result + 56) + 32 * v30, v79);
      v77 = v32;
      v78 = v33;
      v34 = *((*MEMORY[0x277D85000] & *v5) + 0xB0);

      v34(v32, v33, v79);
      sub_2756C92B4(&v77, &qword_2809FF0D0);
    }

    result = v76;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {

        v15 = v56;
        v13 = v55;
        v21 = v75;
        goto LABEL_14;
      }

      v24 = *(a4 + 64 + 8 * v27);
      ++v26;
      if (v24)
      {
        v26 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    (*(v58 + 16))(v60, v21, v59);

    v35 = v61;
    sub_275795D50();
    sub_275795D40();
    (*(v63 + 8))(v35, v64);
    v36 = v62;
    sub_275796550();
    v38 = sub_27572A6DC(&qword_2809FF0C0, v37, type metadata accessor for LiftUIController);
    v39 = sub_27572A6DC(&qword_2809FDC58, 255, MEMORY[0x277D23388]);
    v40 = v66;
    v41 = v5;
    v42 = v71;
    MEMORY[0x277C7F260](v41, v38, v71, v39);
    (*(v65 + 8))(v36, v42);
    v43 = sub_27572A6DC(&qword_2809FDC28, 255, MEMORY[0x277D7F240]);
    v77 = v42;
    v78 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = v69;
    MEMORY[0x277C7F230](v57, v43, v13, OpaqueTypeConformance2);
    (*(v70 + 8))(v40, v13);
    v46 = sub_275732AE8();
    v77 = v13;
    v78 = OpaqueTypeConformance2;
    v47 = swift_getOpaqueTypeConformance2();
    v48 = v72;
    MEMORY[0x277C7F240](v46, v15, v47);

    (*(v73 + 8))(v45, v15);
    KeyPath = swift_getKeyPath();
    v50 = &v48[*(v68 + 36)];
    v51 = v74;
    *v50 = KeyPath;
    v50[1] = v51;
    v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0C8));
    v53 = v67;
    return sub_275796D70();
  }

  return result;
}

uint64_t sub_27572A6DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t View.icqPresenter(_:)(void *a1)
{
  swift_getKeyPath();
  v2 = a1;
  sub_2757971B0();
}

uint64_t sub_27572A928(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v59 = a1;
  v60 = a2;
  v10 = sub_275795D60();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_275796570();
  v62 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v61 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDC30);
  v67 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v63 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0B0);
  v70 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v66 = &v51 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0B8);
  MEMORY[0x28223BE20](v65);
  v69 = &v51 - v17;
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *v5) + 0x78);
  v64 = a4;
  v19(a4);
  v20 = *((*v18 & *v5) + 0x90);
  v55 = a3;
  v20(a3);
  if (a5)
  {
    v52 = v13;
    v53 = v15;
    v54 = a4;
    v21 = 1 << *(a5 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a5 + 64);
    v24 = (v21 + 63) >> 6;
    v71 = a5;

    v25 = 0;
    while (v23)
    {
      v26 = v25;
      result = v71;
LABEL_11:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = v28 | (v26 << 6);
      v30 = (*(result + 48) + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      sub_275627B04(*(result + 56) + 32 * v29, v74);
      v72 = v31;
      v73 = v32;
      v33 = *((*MEMORY[0x277D85000] & *v6) + 0xB0);

      v33(v31, v32, v74);
      sub_2756C92B4(&v72, &qword_2809FF0D0);
    }

    result = v71;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        a4 = v54;
        v15 = v53;
        v13 = v52;
        goto LABEL_14;
      }

      v23 = *(a5 + 64 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_2756DA75C(v59, v60);

    v34 = v56;
    sub_275795D50();
    sub_275795D40();
    (*(v57 + 8))(v34, v58);
    sub_2757964A0();
    swift_allocObject();
    sub_275796490();
    v35 = v61;
    sub_275796560();
    v37 = sub_27572A6DC(&qword_2809FF0C0, v36, type metadata accessor for LiftUIController);
    v38 = sub_27572A6DC(&qword_2809FDC58, 255, MEMORY[0x277D23388]);
    v39 = v63;
    v40 = v68;
    MEMORY[0x277C7F260](v6, v37, v68, v38);
    (*(v62 + 8))(v35, v40);
    v41 = sub_27572A6DC(&qword_2809FDC28, 255, MEMORY[0x277D7F240]);
    v72 = v40;
    v73 = v38;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = v66;
    MEMORY[0x277C7F230](v55, v41, v13, OpaqueTypeConformance2);
    (*(v67 + 8))(v39, v13);
    v44 = sub_275732AE8();
    v72 = v13;
    v73 = OpaqueTypeConformance2;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = v69;
    MEMORY[0x277C7F240](v44, v15, v45);

    (*(v70 + 8))(v43, v15);
    KeyPath = swift_getKeyPath();
    v48 = &v46[*(v65 + 36)];
    *v48 = KeyPath;
    v48[1] = a4;
    v49 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0C8));
    v50 = v64;
    return sub_275796D70();
  }

  return result;
}

uint64_t sub_27572B14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_2757963E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275627B04(a3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0E0);
  if (swift_dynamicCast())
  {
    sub_27562F5A8(v16, v19);
    v15 = a2;
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    a2 = v15;
    sub_2757963F0();
    (*(v10 + 16))(v8, v12, v9);
    (*(v10 + 56))(v8, 0, 1, v9);

    sub_275796510();
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_2756C92B4(v16, &qword_2809FF0E8);
  }

  v19[0] = a1;
  v19[1] = a2;
  return sub_2757965A0();
}

uint64_t sub_27572B450()
{
  v1 = type metadata accessor for LoadingView(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v2);
  sub_27572BC6C(&v4[*(v1 + 24)]);
  v8[15] = 0;
  sub_2757975A0();
  v6 = v9;
  *v4 = v8[16];
  *(v4 + 1) = v6;
  swift_unknownObjectWeakInit();

  sub_27572A6DC(&qword_2809FF0F0, 255, type metadata accessor for LoadingView);
  return sub_275797720();
}

uint64_t sub_27572B590@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_2757975A0();
  *a3 = v9;
  *(a3 + 8) = v10;
  swift_unknownObjectWeakInit();

  v6 = *(type metadata accessor for LoadingView(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF128);
  return (*(*(v7 - 8) + 32))(a3 + v6, a2, v7);
}

void sub_27572B654()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v1)
  {
    v2 = v1;
    [v1 didLoadWithSuccess:1 error:0];
  }
}

void sub_27572B6E0()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v1)
  {
    v2 = v1;
    v3 = sub_275795C40();
    [v2 didLoadWithSuccess:0 error:v3];
  }
}

id LiftUIController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiftUIController.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___ICQLiftUIController_dataSource] = 0;
  v1 = OBJC_IVAR___ICQLiftUIController_store;
  sub_275796500();
  swift_allocObject();
  *&v0[v1] = sub_2757964F0();
  v2 = OBJC_IVAR___ICQLiftUIController_localStore;
  sub_2757964A0();
  swift_allocObject();
  *&v0[v2] = sub_275796490();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LiftUIController();
  return objc_msgSendSuper2(&v4, sel_init);
}

id LiftUIController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiftUIController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27572BAB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return v1;
}

void (*sub_27572BB64(uint64_t *a1))(uint64_t *a1)
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
  v5 = *v1;
  *(v3 + 50) = *v1;
  v6 = *(v1 + 1);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return sub_2756D0150;
}

uint64_t sub_27572BC10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  return v1;
}

uint64_t sub_27572BC6C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0F8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF100);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_275798510();
  v19 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF108);
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v18 - v12;
  v23 = 1;
  sub_2757965D0();
  sub_275798500();
  (*(v8 + 56))(v6, 1, 1, v7);
  v14 = [objc_opt_self() mainRunLoop];
  v22 = v14;
  v15 = sub_2757984F0();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_2756C557C(0, &qword_2809FF110);
  sub_2756CFA44(&qword_2809FF118, &qword_2809FF108);
  sub_275733298(&qword_2809FF120, &qword_2809FF110);
  v16 = v20;
  sub_275796650();
  sub_2756C92B4(v3, &qword_2809FF0F8);

  sub_2756C92B4(v6, &qword_2809FF100);
  (*(v8 + 8))(v10, v19);
  return (*(v11 + 8))(v13, v16);
}

uint64_t sub_27572C008@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoadingView(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF128);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27572C090(uint64_t a1)
{
  v3 = *(type metadata accessor for LoadingView(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF128);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_27572C160@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_275797820();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF130);
  return sub_27572C1AC(v1, a1 + *(v4 + 44));
}

uint64_t sub_27572C1AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a1;
  v84 = a2;
  v3 = type metadata accessor for LoadingView(0);
  v4 = *(v3 - 8);
  v82 = v3 - 8;
  v71 = v4;
  MEMORY[0x28223BE20](v3 - 8);
  v68 = v5;
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF220);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v73 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF228) - 8;
  MEMORY[0x28223BE20](v78);
  v19 = &v65 - v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF230) - 8;
  v20 = MEMORY[0x28223BE20](v81);
  v83 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v77 = &v65 - v23;
  MEMORY[0x28223BE20](v22);
  v79 = &v65 - v24;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCA0);
  v76 = *(v80 - 8);
  v25 = MEMORY[0x28223BE20](v80);
  v75 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v74 = &v65 - v27;
  sub_2757967B0();
  *v19 = sub_275796D30();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v70 = v19;
  v67 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF238) + 44)];
  *v17 = sub_275796C80();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v28 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF240) + 44)];
  v29 = v6;
  v66 = v6;
  sub_27573567C(a1, v6);
  v30 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v31 = swift_allocObject();
  sub_2757356E0(v29, v31 + v30);
  v32 = v12;
  sub_275797610();
  v33 = *(v8 + 16);
  v34 = v72;
  v33(v72, v32, v7);
  v33(v28, v34, v7);
  v35 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF248) + 48)];
  *v35 = 0;
  v35[8] = 1;
  v36 = *(v8 + 8);
  v36(v32, v7);
  v36(v34, v7);
  v37 = v73;
  sub_2756C9074(v17, v73, &qword_2809FF220);
  v38 = v67;
  sub_2756C9074(v37, v67, &qword_2809FF220);
  v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF250) + 48);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_2756C92B4(v17, &qword_2809FF220);
  sub_2756C92B4(v37, &qword_2809FF220);
  v40 = *(v82 + 32);
  v41 = v69;
  v42 = v66;
  sub_27573567C(v69, v66);
  v43 = swift_allocObject();
  sub_2757356E0(v42, v43 + v30);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF258);
  v45 = *(v44 + 52);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF128);
  v47 = v70;
  (*(*(v46 - 8) + 16))(&v70[v45], v41 + v40, v46);
  v48 = (v47 + *(v44 + 56));
  *v48 = sub_2757358C4;
  v48[1] = v43;
  v49 = sub_275796FA0();
  v50 = v47 + *(v78 + 44);
  *v50 = v49;
  *(v50 + 8) = 0u;
  *(v50 + 24) = 0u;
  *(v50 + 40) = 1;
  v51 = *(v41 + 8);
  v86 = *v41;
  v87 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  if (v85)
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.0;
  }

  v53 = v77;
  sub_2756D8BC4(v47, v77, &qword_2809FF228);
  *(v53 + *(v81 + 44)) = v52;
  v54 = v79;
  sub_2756D8BC4(v53, v79, &qword_2809FF230);
  v55 = v75;
  v56 = v76;
  v57 = *(v76 + 16);
  v58 = v74;
  v59 = v80;
  v57(v75, v74, v80);
  v60 = v83;
  sub_2756C9074(v54, v83, &qword_2809FF230);
  v61 = v84;
  v57(v84, v55, v59);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF260);
  sub_2756C9074(v60, &v61[*(v62 + 48)], &qword_2809FF230);
  sub_2756C92B4(v54, &qword_2809FF230);
  v63 = *(v56 + 8);
  v63(v58, v59);
  sub_2756C92B4(v60, &qword_2809FF230);
  return (v63)(v55, v59);
}

uint64_t sub_27572C9D4@<X0>(uint64_t a1@<X8>)
{
  sub_275796CE0();
  type metadata accessor for LiftUIController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_2757970B0();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_27572CAB0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF100);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_275798510();
  v22 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF108);
  v13 = *(v12 - 8);
  v23 = v12;
  v24 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v21 - v14;
  v25 = 0;
  sub_2757975A0();
  v16 = v27;
  v21[1] = a1;
  *a1 = v26;
  *(a1 + 8) = v16;
  swift_unknownObjectWeakInit();
  v21[0] = *(type metadata accessor for LoadingView(0) + 24);
  LOBYTE(v26) = 1;
  sub_2757965D0();
  sub_275798500();
  (*(v9 + 56))(v7, 1, 1, v8);
  v17 = [objc_opt_self() mainRunLoop];
  v26 = v17;
  v18 = sub_2757984F0();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_2756C557C(0, &qword_2809FF110);
  sub_2756CFA44(&qword_2809FF118, &qword_2809FF108);
  sub_275733298(&qword_2809FF120, &qword_2809FF110);
  v19 = v23;
  sub_275796650();
  sub_2756C92B4(v4, &qword_2809FF0F8);

  sub_2756C92B4(v7, &qword_2809FF100);
  (*(v9 + 8))(v11, v22);
  return (*(v24 + 8))(v15, v19);
}

uint64_t sub_27572CF9C()
{
  sub_2757332DC();
  sub_275796C40();
  return v1;
}

uint64_t sub_27572D014(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_275733330)(a1);
}

void sub_27572D0C0(char a1, uint64_t a2, void *a3)
{
  v6 = sub_275796280();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275700E70();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_275796270();
  v12 = sub_275798310();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_275623000, v11, v12, "ICQ On Disappear Action, finished: %{BOOL}d", v13, 8u);
    MEMORY[0x277C81E50](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  if (a1)
  {
    swift_beginAccess();
    v14 = *(a2 + 16);
    if (!v14)
    {
      return;
    }

    v15 = v14;
    if (a3)
    {
      sub_27572D334(a3);
      a3 = sub_275797EA0();
    }

    [v15 didFinishWithUserInfo_];
  }

  else
  {
    swift_beginAccess();
    v16 = *(a2 + 16);
    if (!v16)
    {
      return;
    }

    v15 = v16;
    if (a3)
    {
      sub_27572D334(a3);
      a3 = sub_275797EA0();
    }

    [v15 didCancelWithUserInfo_];
  }
}

uint64_t sub_27572D334(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF218);
    v2 = sub_275798870();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_275627B04(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2756D5AA8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2756D5AA8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2756D5AA8(v31, v32);
    result = sub_2757986A0();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2756D5AA8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_27572D5FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF218);
    v2 = sub_275798870();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2756D5AA8(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2756D5AA8(v29, v30);
    result = sub_2757986A0();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_2756D5AA8(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_27572D8C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F666E4972657375;
  }

  else
  {
    v3 = 0x73696E6946646964;
  }

  if (v2)
  {
    v4 = 0xE900000000000068;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6F666E4972657375;
  }

  else
  {
    v5 = 0x73696E6946646964;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000068;
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

uint64_t sub_27572D970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6574656D61726170;
    }

    else
    {
      v3 = 1701869940;
    }

    if (v2)
    {
      v4 = 0xEA00000000007372;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x656C706D6F436E6FLL;
    v4 = 0xEA00000000006574;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x726F7272456E6FLL;
    }

    else
    {
      v3 = 0x6C65636E61436E6FLL;
    }

    if (v2 == 3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6574656D61726170;
    }

    else
    {
      v6 = 1701869940;
    }

    if (a2)
    {
      v5 = 0xEA00000000007372;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEA00000000006574;
    if (v3 != 0x656C706D6F436E6FLL)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x726F7272456E6FLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6C65636E61436E6FLL)
    {
LABEL_34:
      v7 = sub_275798980();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_27572DB1C()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_27572DBA4()
{
  sub_275797FF0();
}

uint64_t sub_27572DC18()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_27572DC9C@<X0>(char *a1@<X8>)
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

void sub_27572DCFC(uint64_t *a1@<X8>)
{
  v2 = 0x73696E6946646964;
  if (*v1)
  {
    v2 = 0x6F666E4972657375;
  }

  v3 = 0xE900000000000068;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27572DD40()
{
  if (*v0)
  {
    return 0x6F666E4972657375;
  }

  else
  {
    return 0x73696E6946646964;
  }
}

uint64_t sub_27572DD80@<X0>(char *a1@<X8>)
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

uint64_t sub_27572DDE4(uint64_t a1)
{
  v2 = sub_275733C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27572DE20(uint64_t a1)
{
  v2 = sub_275733C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_27572DE88(void *a1)
{
  v3 = v1;
  v22 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD850);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF138);
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = &v18 - v12;
  v3[2] = 0;
  v14 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_275733C04();
  sub_275798A80();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v7;
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
    v25 = 0;
    sub_2756CFA44(&qword_2809FD870, &qword_2809FD868);
    v15 = v21;
    sub_2757988E0();
    sub_2756D8BC4(v10, v3 + OBJC_IVAR____TtC13iCloudQuotaUI20ICQOnDisappearAction_didFinish, &qword_2809FD850);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
    v24 = 1;
    sub_2756CFA44(&qword_2809FDF20, &qword_2809FDF18);
    v17 = v19;
    sub_2757988E0();
    (*(v20 + 8))(v13, v15);
    sub_2756D8BC4(v17, v3 + OBJC_IVAR____TtC13iCloudQuotaUI20ICQOnDisappearAction_userInfo, &qword_2809FDEE8);
  }

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v3;
}

uint64_t sub_27572E260()
{
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI20ICQOnDisappearAction_didFinish, &qword_2809FD850);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI20ICQOnDisappearAction_userInfo, &qword_2809FDEE8);
  return v0;
}

uint64_t sub_27572E2C0()
{
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI20ICQOnDisappearAction_didFinish, &qword_2809FD850);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI20ICQOnDisappearAction_userInfo, &qword_2809FDEE8);

  return swift_deallocClassInstance();
}

uint64_t sub_27572E35C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_275733330)(a1);
}

uint64_t sub_27572E530@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDEF0);
  sub_2756E40D0();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2757972A0();
}

uint64_t sub_27572E658(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_275733C58)(a1);
}

uint64_t sub_27572E728@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27572E780(uint64_t a1)
{
  v2 = sub_275734188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27572E7BC(uint64_t a1)
{
  v2 = sub_275734188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27572E824(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t *sub_27572E87C(void *a1)
{
  v14 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  MEMORY[0x28223BE20](v4 - 8);
  v13 = &v12 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF140);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v1[2] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275734188();
  sub_275798A80();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
    sub_2756CFA44(&qword_2809FDF20, &qword_2809FDF18);
    v10 = v13;
    sub_2757988E0();
    (*(v7 + 8))(v9, v6);
    sub_2756D8BC4(v10, v1 + OBJC_IVAR____TtC13iCloudQuotaUI12FinishAction_userInfo, &qword_2809FDEE8);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_27572EB5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_275733C58)(a1);
}

uint64_t sub_27572ECCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void *sub_27572ED34()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_27572EDDC(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
  v5 = v3;
}

uint64_t sub_27572EE34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_2757341F8)(a1);
}

uint64_t sub_27572EEE4()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_27572EF54()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_27572EFB0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27572F01C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27572F074(uint64_t a1)
{
  v2 = sub_275734728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27572F0B0(uint64_t a1)
{
  v2 = sub_275734728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_27572F118(void *a1)
{
  v14 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  MEMORY[0x28223BE20](v4 - 8);
  v13 = &v12 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF148);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v1[2] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275734728();
  sub_275798A80();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
    sub_2756CFA44(&qword_2809FDF20, &qword_2809FDF18);
    v10 = v13;
    sub_2757988E0();
    (*(v7 + 8))(v9, v6);
    sub_2756D8BC4(v10, v1 + OBJC_IVAR____TtC13iCloudQuotaUI12CancelAction_userInfo, &qword_2809FDEE8);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_27572F3F8(void *a1)
{
  sub_2756C92B4(v1 + *a1, &qword_2809FDEE8);

  return swift_deallocClassInstance();
}

uint64_t sub_27572F47C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DBB90;

  return (sub_2757341F8)(a1);
}

void sub_27572F624(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_27572F670(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_27572F700;
}

void sub_27572F700(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_27572F77C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27572F894(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakAssign();
  v4 = *(a2 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_onCompleteActions);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      do
      {
        sub_2756CC2E0(v6, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF210);
        result = swift_dynamicCast();
        if (result)
        {
          swift_beginAccess();
          swift_unknownObjectWeakAssign();
        }

        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_27572F9C0(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = sub_275796280();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v5 = sub_2757963E0();
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27572FB60, 0, 0);
}

uint64_t sub_27572FB60()
{
  v89 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[42] = Strong;
  if (!Strong)
  {
    v7 = v0[32];
    v8 = v0[29];
    v9 = v0[30];
    v10 = sub_275700E70();
    (*(v9 + 16))(v7, v10, v8);
    v11 = sub_275796270();
    v12 = sub_2757982F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_275623000, v11, v12, "ICQLiftUI: Action delegate missing", v13, 2u);
      MEMORY[0x277C81E50](v13, -1, -1);
    }

    v14 = v0[32];
    v15 = v0[29];
    v16 = v0[30];
    v17 = v0[28];

    (*(v16 + 8))(v14, v15);
    if (*(v17 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_onErrorActions))
    {
      sub_275798120();
    }

    goto LABEL_53;
  }

  v2 = Strong;
  v3 = v0[41];
  sub_2756C9074(v0[28] + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_parameters, v3, &qword_2809FDEE8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2756C92B4(v0[41], &qword_2809FDEE8);
  }

  else
  {
    sub_27570F4D4();
    sub_275796390();
    (*(v5 + 8))(v0[41], v4);
    v22 = v0[25];
    if (v22)
    {
      v82 = v2;
      v23 = v0[39];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF158);
      v24 = sub_275798850();
      v6 = v24;
      v25 = 0;
      v26 = 1 << *(v22 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      v28 = v27 & *(v22 + 64);
      v29 = (v26 + 63) >> 6;
      v85 = v24;
      v84 = v24 + 64;
      if (v28)
      {
        while (1)
        {
          v30 = __clz(__rbit64(v28));
          v87 = (v28 - 1) & v28;
LABEL_23:
          v33 = v30 | (v25 << 6);
          v34 = (*(v22 + 48) + 16 * v33);
          v35 = *v34;
          v36 = v34[1];
          (*(v23 + 16))(v0[40], *(v22 + 56) + *(v23 + 72) * v33, v0[38]);

          sub_275747824(MEMORY[0x277D837D0], (v0 + 23));
          v24 = (*(v23 + 8))(v0[40], v0[38]);
          *(v84 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
          v37 = (v85[6] + 16 * v33);
          *v37 = v35;
          v37[1] = v36;
          v6 = v85;
          v38 = (v85[7] + 16 * v33);
          v39 = v0[24];
          *v38 = v0[23];
          v38[1] = v39;
          v40 = v85[2];
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            break;
          }

          v85[2] = v42;
          v28 = v87;
          if (!v87)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        v31 = v25;
        while (1)
        {
          v25 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v25 >= v29)
          {

            v2 = v82;
            goto LABEL_5;
          }

          v32 = *(v22 + 64 + 8 * v25);
          ++v31;
          if (v32)
          {
            v30 = __clz(__rbit64(v32));
            v87 = (v32 - 1) & v32;
            goto LABEL_23;
          }
        }

        __break(1u);
      }

      __break(1u);
      return MEMORY[0x282200938](v24);
    }
  }

  v6 = 0;
LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  sub_275796390();
  v19 = v0[21];
  v18 = v0[22];
  v0[43] = v19;
  v0[44] = v18;
  if (v6)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v6;
    sub_275732680(v19, v18, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v21 = v6;
  }

  else
  {
    v21 = 0;
  }

  v0[45] = v21;
  v43 = sub_275797F10();
  v44 = _ICQActionForString();

  v46 = v0[29];
  v45 = v0[30];
  if (v44 == 1)
  {
    v56 = v0[36];

    v57 = sub_275700E70();
    (*(v45 + 16))(v56, v57, v46);
    v58 = sub_275796270();
    v59 = sub_275798310();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_275623000, v58, v59, "ICQLiftUI: ICQActionDismiss", v60, 2u);
      MEMORY[0x277C81E50](v60, -1, -1);
    }

    v61 = v0[36];
    v63 = v0[29];
    v62 = v0[30];

    (*(v62 + 8))(v61, v63);
    if (v21)
    {
      sub_27572D5FC(v21);
      v55 = sub_275797EA0();
    }

    else
    {
      v55 = 0;
    }

    v79 = v0[28];
    [v2 didFinishWithUserInfo_];
    goto LABEL_50;
  }

  if (v44 != 101)
  {
    v64 = v0[35];
    v65 = sub_275700E70();
    v0[46] = v65;
    v66 = *(v45 + 16);
    v0[47] = v66;
    v0[48] = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v66(v64, v65, v46);

    v67 = sub_275796270();
    v68 = sub_275798310();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v0[35];
    v72 = v0[29];
    v71 = v0[30];
    if (v69)
    {
      v83 = v2;
      v73 = swift_slowAlloc();
      v86 = v70;
      v74 = swift_slowAlloc();
      v88 = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_27562792C(v19, v18, &v88);
      _os_log_impl(&dword_275623000, v67, v68, "ICQLiftUI: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x277C81E50](v74, -1, -1);
      v75 = v73;
      v2 = v83;
      MEMORY[0x277C81E50](v75, -1, -1);

      v76 = *(v71 + 8);
      v76(v86, v72);
    }

    else
    {

      v76 = *(v71 + 8);
      v76(v70, v72);
    }

    v0[49] = v76;
    v77 = sub_275797F10();
    v0[50] = v77;
    if (v21)
    {
      v21 = sub_275797EA0();
    }

    v0[51] = v21;
    v0[2] = v0;
    v0[7] = v0 + 53;
    v0[3] = sub_275730668;
    v78 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF150);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_275730D78;
    v0[13] = &block_descriptor_6;
    v0[14] = v78;
    [v2 performICQActionWithName:v77 parameters:v21 completion:v0 + 10];
    v24 = (v0 + 2);

    return MEMORY[0x282200938](v24);
  }

  v47 = v0[37];

  v48 = sub_275700E70();
  (*(v45 + 16))(v47, v48, v46);
  v49 = sub_275796270();
  v50 = sub_275798310();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_275623000, v49, v50, "ICQLiftUI: ICQActionCancel", v51, 2u);
    MEMORY[0x277C81E50](v51, -1, -1);
  }

  v52 = v0[37];
  v54 = v0[29];
  v53 = v0[30];

  (*(v53 + 8))(v52, v54);
  if (v21)
  {
    sub_27572D5FC(v21);
    v55 = sub_275797EA0();
  }

  else
  {
    v55 = 0;
  }

  v79 = v0[28];
  [v2 didCancelWithUserInfo_];
LABEL_50:

  if (*(v79 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_onCompleteActions))
  {
    sub_275798120();
  }

LABEL_53:

  v80 = v0[1];

  return v80();
}

uint64_t sub_275730668()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_275730B0C;
  }

  else
  {
    v2 = sub_275730778;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_275730778()
{
  v38 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 424);

  v3 = *(v0 + 376);
  v4 = *(v0 + 368);
  v5 = *(v0 + 232);
  if (v2 == 1)
  {
    v3(*(v0 + 272), v4, v5);

    v6 = sub_275796270();
    v7 = sub_275798310();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 392);
    v10 = *(v0 + 352);
    if (v8)
    {
      v11 = *(v0 + 344);
      v35 = *(v0 + 272);
      v12 = *(v0 + 232);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37 = v14;
      *v13 = 136315138;
      v15 = sub_27562792C(v11, v10, &v37);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_275623000, v6, v7, "Successfully performed icqAction: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x277C81E50](v14, -1, -1);
      MEMORY[0x277C81E50](v13, -1, -1);

      v16 = v35;
    }

    else
    {
      v28 = *(v0 + 272);
      v12 = *(v0 + 232);

      v16 = v28;
    }

    v9(v16, v12);
    v29 = *(v0 + 224);
    v30 = OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_onCompleteActions;
  }

  else
  {
    v3(*(v0 + 264), v4, v5);

    v17 = sub_275796270();
    v18 = sub_275798310();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 392);
    v21 = *(v0 + 352);
    if (v19)
    {
      v22 = *(v0 + 344);
      v36 = *(v0 + 264);
      v23 = *(v0 + 232);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315138;
      v26 = sub_27562792C(v22, v21, &v37);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_275623000, v17, v18, "User cancelled icqAction: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x277C81E50](v25, -1, -1);
      MEMORY[0x277C81E50](v24, -1, -1);

      v27 = v36;
    }

    else
    {
      v31 = *(v0 + 264);
      v23 = *(v0 + 232);

      v27 = v31;
    }

    v20(v27, v23);
    v29 = *(v0 + 224);
    v30 = OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_onCancelActions;
  }

  v32 = *(v0 + 336);
  if (*(v29 + v30))
  {
    sub_275798120();
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_275730B0C()
{
  v25 = v0;
  v1 = v0[51];
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[46];
  v5 = v0[31];
  v6 = v0[29];
  swift_willThrow();

  v3(v5, v4, v6);

  v7 = sub_275796270();
  v8 = sub_275798310();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[49];
  v11 = v0[44];
  if (v9)
  {
    v12 = v0[43];
    v23 = v0[31];
    v13 = v0[29];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    v16 = sub_27562792C(v12, v11, &v24);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_275623000, v7, v8, "Failed to perform icqAction: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x277C81E50](v15, -1, -1);
    MEMORY[0x277C81E50](v14, -1, -1);

    v17 = v23;
  }

  else
  {
    v18 = v0[31];
    v13 = v0[29];

    v17 = v18;
  }

  v10(v17, v13);
  v19 = v0[52];
  v20 = v0[42];
  if (*(v0[28] + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_onErrorActions))
  {
    sub_275798120();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_275730D78(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00130);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_275730E50()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_275730F30()
{
  sub_275797FF0();
}

uint64_t sub_275730FFC()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2757310D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27573560C();
  *a1 = result;
  return result;
}

void sub_275731108(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x656C706D6F436E6FLL;
  v6 = 0xE700000000000000;
  v7 = 0x726F7272456E6FLL;
  if (v2 != 3)
  {
    v7 = 0x6C65636E61436E6FLL;
    v6 = 0xE800000000000000;
  }

  if (v2 == 2)
  {
    v6 = 0xEA00000000006574;
  }

  else
  {
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6574656D61726170;
    v3 = 0xEA00000000007372;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_2757311A4()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x656C706D6F436E6FLL;
  v4 = 0x726F7272456E6FLL;
  if (v1 != 3)
  {
    v4 = 0x6C65636E61436E6FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574656D61726170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_27573123C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27573560C();
  *a1 = result;
  return result;
}

uint64_t sub_275731264(uint64_t a1)
{
  v2 = sub_2757347B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2757312A0(uint64_t a1)
{
  v2 = sub_2757347B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_275731308(void *a1)
{
  v4 = *v1;
  v82 = v1;
  v79 = v4;
  v80 = v2;
  v77 = sub_2757964C0();
  v73 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v75 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v76 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF160);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v78 = v1 + 2;
  swift_unknownObjectWeakInit();
  v15 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2757347B0();
  v16 = v80;
  sub_275798A80();
  if (!v16)
  {
    v80 = v12;
    LOBYTE(v83[0]) = 0;
    sub_2756CFA44(&qword_2809FD908, &qword_2809FD900);
    v17 = v76;
    sub_275798910();
    v20 = v82;
    (*(v75 + 32))(v82 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_name, v17, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
    LOBYTE(v83[0]) = 1;
    sub_2756CFA44(&qword_2809FDF20, &qword_2809FDF18);
    sub_2757988E0();
    sub_2756D8BC4(v8, v20 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_parameters, &qword_2809FDEE8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF168);
    LOBYTE(v83[0]) = 2;
    v22 = sub_275734804();
    sub_2757988E0();
    v66 = 0;
    v68 = v9;
    v69 = v22;
    v70 = 0;
    v67 = v21;
    if (v85)
    {
      v23 = *(v85 + 16);
      v24 = v77;
      v25 = v74;
      if (v23)
      {
        v64 = v14;
        v65 = v11;
        v84 = MEMORY[0x277D84F90];
        v26 = v85;
        sub_275732980(0, v23, 0);
        v27 = v84;
        v76 = *(v73 + 16);
        v28 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v63 = v26;
        v29 = v26 + v28;
        v30 = *(v73 + 72);
        v71 = v73 + 16;
        v72 = v30;
        v31 = (v73 + 8);
        do
        {
          (v76)(v25, v29, v24);
          sub_2757964B0();
          (*v31)(v25, v24);
          v84 = v27;
          v33 = *(v27 + 16);
          v32 = *(v27 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_275732980((v32 > 1), v33 + 1, 1);
            v27 = v84;
          }

          *(v27 + 16) = v33 + 1;
          sub_27562F5A8(v83, v27 + 40 * v33 + 32);
          v29 += v72;
          --v23;
          v24 = v77;
        }

        while (v23);

        v11 = v65;
        v14 = v64;
      }

      else
      {

        v27 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v27 = 0;
      v24 = v77;
      v25 = v74;
    }

    *(v20 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_onCompleteActions) = v27;
    LOBYTE(v83[0]) = 3;
    v34 = v70;
    sub_2757988E0();
    v70 = v34;
    v35 = v75;
    if (v34)
    {
      (*(v80 + 8))(v14, v11);
      v36 = 0;
      v37 = v68;
      goto LABEL_33;
    }

    if (v85)
    {
      v38 = *(v85 + 16);
      if (v38)
      {
        v64 = v14;
        v65 = v11;
        v84 = MEMORY[0x277D84F90];
        v39 = v85;
        sub_275732980(0, v38, 0);
        v40 = v84;
        v76 = *(v73 + 16);
        v41 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v63 = v39;
        v42 = v39 + v41;
        v43 = *(v73 + 72);
        v71 = v73 + 16;
        v72 = v43;
        v44 = (v73 + 8);
        do
        {
          (v76)(v25, v42, v24);
          sub_2757964B0();
          (*v44)(v25, v24);
          v84 = v40;
          v46 = *(v40 + 16);
          v45 = *(v40 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_275732980((v45 > 1), v46 + 1, 1);
            v40 = v84;
          }

          *(v40 + 16) = v46 + 1;
          sub_27562F5A8(v83, v40 + 40 * v46 + 32);
          v42 += v72;
          --v38;
          v24 = v77;
        }

        while (v38);

        v11 = v65;
        v14 = v64;
      }

      else
      {

        v40 = MEMORY[0x277D84F90];
      }

      v35 = v75;
    }

    else
    {
      v40 = 0;
    }

    *(v20 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_onErrorActions) = v40;
    LOBYTE(v83[0]) = 4;
    v47 = v70;
    sub_2757988E0();
    v37 = v68;
    if (v47)
    {
      (*(v80 + 8))(v14, v11);
      v36 = 1;
LABEL_33:
      v48 = v66;
      MEMORY[0x277C81EF0](v78);
      (*(v35 + 8))(v20 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_name, v37);
      if (!v48)
      {
        sub_2756C92B4(v20 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_parameters, &qword_2809FDEE8);
      }

      if (v36)
      {
      }

      goto LABEL_4;
    }

    v49 = v85;
    v50 = v80;
    if (v85)
    {
      v51 = *(v85 + 16);
      if (v51)
      {
        v70 = 0;
        v64 = v14;
        v65 = v11;
        v84 = MEMORY[0x277D84F90];
        sub_275732980(0, v51, 0);
        v52 = v84;
        v53 = v73 + 16;
        v54 = *(v73 + 16);
        v55 = v49 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
        v78 = *(v73 + 72);
        v79 = v54;
        v56 = (v73 + 8);
        do
        {
          v57 = v74;
          v58 = v77;
          v59 = v53;
          v79(v74, v55, v77);
          sub_2757964B0();
          (*v56)(v57, v58);
          v84 = v52;
          v61 = *(v52 + 16);
          v60 = *(v52 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_275732980((v60 > 1), v61 + 1, 1);
            v52 = v84;
          }

          *(v52 + 16) = v61 + 1;
          sub_27562F5A8(v83, v52 + 40 * v61 + 32);
          v55 += v78;
          --v51;
          v53 = v59;
        }

        while (v51);
        (*(v80 + 8))(v64, v65);

        v18 = v81;
        v20 = v82;
        goto LABEL_44;
      }

      (*(v50 + 8))(v14, v11);
      v52 = MEMORY[0x277D84F90];
    }

    else
    {
      (*(v80 + 8))(v14, v11);
      v52 = 0;
    }

    v18 = v81;
LABEL_44:
    *(v20 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_onCancelActions) = v52;
    goto LABEL_5;
  }

  v20 = v82;
  MEMORY[0x277C81EF0](v78);
LABEL_4:
  swift_deallocPartialClassInstance();
  v18 = v81;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v20;
}

uint64_t sub_275731DE8()
{
  MEMORY[0x277C81EF0](v0 + 16);
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_name;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_parameters, &qword_2809FDEE8);

  return v0;
}

uint64_t sub_275731EAC()
{
  MEMORY[0x277C81EF0](v0 + 16);
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_name;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI15LiftUIICQAction_parameters, &qword_2809FDEE8);

  return swift_deallocClassInstance();
}

uint64_t sub_275731FAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2756DC7F0;

  return sub_27572F9C0(a1, a2);
}

uint64_t sub_275732080@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDEF0);
  sub_2756E40D0();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2757972A0();
}

uint64_t sub_275732268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2756E40D0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*sub_2757322CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_2757332DC();
  sub_275796C40();
  return sub_27573232C;
}

void sub_27573232C(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_275796C50();
    v5 = *a1;
  }

  else
  {
    sub_275796C50();
  }
}

uint64_t sub_2757323C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF158);
  v37 = a2;
  result = sub_275798860();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_275798A40();
      sub_275797FF0();
      result = sub_275798A70();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_275732680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2756F72B4(a3, a4);
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
      sub_2757323C0(v18, a5 & 1);
      v13 = sub_2756F72B4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_2757989D0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_275732808();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_275732808()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF158);
  v2 = *v0;
  v3 = sub_275798850();
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

void *sub_275732980(void *a1, int64_t a2, char a3)
{
  result = sub_2757329A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2757329A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF208);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_275732AE8()
{
  v0 = [objc_allocWithZone(sub_275796480()) init];
  type metadata accessor for FinishAction(0);
  sub_27572A6DC(&qword_2809FF1F8, 255, type metadata accessor for FinishAction);
  sub_275796460();
  type metadata accessor for CancelAction(0);
  sub_27572A6DC(&qword_2809FF1F0, 255, type metadata accessor for CancelAction);
  sub_275796460();
  type metadata accessor for LiftUIICQAction(0);
  sub_27572A6DC(&qword_2809FF1E8, 255, type metadata accessor for LiftUIICQAction);
  sub_275796460();
  type metadata accessor for ToggleRecommendedBackupAction(0);
  sub_27572A6DC(&qword_2809FF268, 255, type metadata accessor for ToggleRecommendedBackupAction);
  sub_275796460();
  type metadata accessor for DeleteSelectedBackupsAction();
  sub_27572A6DC(&qword_2809FDF40, 255, type metadata accessor for DeleteSelectedBackupsAction);
  sub_275796460();
  type metadata accessor for ICQOnDisappearAction(0);
  sub_27572A6DC(&qword_2809FF200, 255, type metadata accessor for ICQOnDisappearAction);
  sub_275796460();
  type metadata accessor for AppMessageTextView();
  sub_27572A6DC(&qword_2809FF270, 255, type metadata accessor for AppMessageTextView);
  sub_275796450();
  type metadata accessor for ScaledAsyncImageView();
  sub_27572A6DC(&qword_2809FD798, 255, type metadata accessor for ScaledAsyncImageView);
  sub_275796450();
  type metadata accessor for AccountImage();
  sub_27572A6DC(&qword_2809FD930, 255, type metadata accessor for AccountImage);
  sub_275796450();
  type metadata accessor for PhotoGridView();
  sub_27572A6DC(&qword_2809FE710, 255, type metadata accessor for PhotoGridView);
  sub_275796450();
  type metadata accessor for JetImpressionable();
  sub_27572A6DC(&qword_2809FF278, 255, type metadata accessor for JetImpressionable);
  sub_275796470();
  type metadata accessor for PageMetricsModifier();
  sub_27572A6DC(&qword_2809FF280, 255, type metadata accessor for PageMetricsModifier);
  sub_275796470();
  type metadata accessor for JetAction();
  sub_27572A6DC(&qword_2809FE868, 255, type metadata accessor for JetAction);
  sub_275796460();
  type metadata accessor for IconWithBundleIdentifier(0);
  sub_27572A6DC(&qword_2809FE3A8, 255, type metadata accessor for IconWithBundleIdentifier);
  sub_275796450();
  type metadata accessor for IconWithTypeIdentifier(0);
  sub_27572A6DC(&qword_2809FE3C8, 255, type metadata accessor for IconWithTypeIdentifier);
  sub_275796450();
  sub_275796130();
  sub_27572A6DC(&qword_2809FF288, 255, MEMORY[0x277CFB248]);
  sub_275796450();
  sub_275796140();
  sub_27572A6DC(&qword_2809FF290, 255, MEMORY[0x277CFB268]);
  sub_275796460();
  sub_275796120();
  sub_27572A6DC(&qword_2809FF298, 255, MEMORY[0x277CFB228]);
  sub_275796460();
  return v0;
}

uint64_t sub_275733298(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2756C557C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2757332DC()
{
  result = qword_280A06F38;
  if (!qword_280A06F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A06F38);
  }

  return result;
}

uint64_t sub_275733330(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_2757978A0();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_2757978C0();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_2757963E0();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD850);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275733518, 0, 0);
}

uint64_t sub_275733518()
{
  v1 = v0[26];
  sub_2756C9074(v0[15] + OBJC_IVAR____TtC13iCloudQuotaUI20ICQOnDisappearAction_didFinish, v1, &qword_2809FD850);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_2756C92B4(v0[26], &qword_2809FD850);
    v4 = 0;
  }

  else
  {
    sub_275796390();
    (*(v3 + 8))(v0[26], v2);
    v4 = *(v0 + 216);
  }

  v5 = v0[25];
  sub_2756C9074(v0[15] + OBJC_IVAR____TtC13iCloudQuotaUI20ICQOnDisappearAction_userInfo, v5, &qword_2809FDEE8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2756C92B4(v0[25], &qword_2809FDEE8);
    v8 = 0;
LABEL_19:
    v29 = v0[21];
    v30 = v0[18];
    v40 = v0[20];
    v42 = v0[19];
    v31 = v0[16];
    v39 = v0[17];
    v32 = v0[15];
    sub_2756C557C(0, &qword_2809FEE60);
    v37 = sub_275798340();
    v33 = swift_allocObject();
    *(v33 + 16) = v4;
    *(v33 + 24) = v32;
    *(v33 + 32) = v8;
    v0[6] = sub_275735658;
    v0[7] = v33;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2756F1D58;
    v0[5] = &block_descriptor_95;
    v34 = _Block_copy(v0 + 2);

    sub_2757978B0();
    v0[13] = MEMORY[0x277D84F90];
    sub_27572A6DC(&qword_2809FD6A8, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
    sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
    sub_2757985B0();
    MEMORY[0x277C80470](0, v29, v30, v34);
    _Block_release(v34);

    (*(v39 + 8))(v30, v31);
    (*(v40 + 8))(v29, v42);

    v35 = v0[1];

    return v35();
  }

  else
  {
    sub_27570F4D4();
    sub_275796390();
    v36 = v4;
    v9 = v0[23];
    (*(v7 + 8))(v0[25], v6);
    v10 = v0[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
    result = sub_275798850();
    v8 = result;
    v12 = 0;
    v13 = *(v10 + 64);
    v44 = result;
    v14 = 1 << *(v10 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v43 = v9;
    v41 = (v9 + 8);
    v38 = result + 64;
    if ((v15 & v13) != 0)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_15:
        v21 = v18 | (v12 << 6);
        v22 = (*(v10 + 48) + 16 * v21);
        v23 = *v22;
        v24 = v22[1];
        (*(v43 + 16))(v0[24], *(v10 + 56) + *(v43 + 72) * v21, v0[22]);

        sub_2757493CC(v0 + 8);
        (*v41)(v0[24], v0[22]);
        *(v38 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v25 = (v44[6] + 16 * v21);
        *v25 = v23;
        v25[1] = v24;
        v8 = v44;
        result = sub_2756D5AA8(v0 + 4, (v44[7] + 32 * v21));
        v26 = v44[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          break;
        }

        v44[2] = v28;
        if (!v16)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v4 = v36;
          goto LABEL_19;
        }

        v20 = *(v10 + 64 + 8 * v12);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v16 = (v20 - 1) & v20;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_275733C04()
{
  result = qword_280A06F40;
  if (!qword_280A06F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A06F40);
  }

  return result;
}

uint64_t sub_275733C58(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_2757963E0();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275733D50, 0, 0);
}

uint64_t sub_275733D50()
{
  v1 = v0[15];
  sub_2756C9074(v0[11] + OBJC_IVAR____TtC13iCloudQuotaUI12FinishAction_userInfo, v1, &qword_2809FDEE8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_2756C92B4(v0[15], &qword_2809FDEE8);
    v4 = 0;
LABEL_16:
    v26 = v0[11];
    swift_beginAccess();
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = v27;
      if (v4)
      {
        sub_27572D334(v4);

        v29 = sub_275797EA0();
      }

      else
      {
        v29 = 0;
      }

      [v27 didFinishWithUserInfo_];
    }

    else
    {
    }

    v30 = v0[1];

    return v30();
  }

  else
  {
    sub_27570F4D4();
    sub_275796390();
    v5 = v0[13];
    (*(v3 + 8))(v0[15], v2);
    v6 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
    result = sub_275798850();
    v4 = result;
    v8 = 0;
    v10 = v6 + 64;
    v9 = *(v6 + 64);
    v34 = result;
    v35 = v6;
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v14 = (v11 + 63) >> 6;
    v33 = v5;
    v32 = (v5 + 8);
    v31 = result + 64;
    if ((v12 & v9) != 0)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v18 = v15 | (v8 << 6);
        v19 = (*(v35 + 48) + 16 * v18);
        v20 = *v19;
        v21 = v19[1];
        (*(v33 + 16))(v0[14], *(v35 + 56) + *(v33 + 72) * v18, v0[12]);

        sub_2757493CC(v0 + 2);
        (*v32)(v0[14], v0[12]);
        *(v31 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v4 = v34;
        v22 = (v34[6] + 16 * v18);
        *v22 = v20;
        v22[1] = v21;
        result = sub_2756D5AA8(v0 + 1, (v34[7] + 32 * v18));
        v23 = v34[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          break;
        }

        v34[2] = v25;
        if (!v13)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v14)
        {

          goto LABEL_16;
        }

        v17 = *(v10 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_275734188()
{
  result = qword_280A06F48;
  if (!qword_280A06F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A06F48);
  }

  return result;
}

uint64_t sub_2757341F8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_2757963E0();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2757342F0, 0, 0);
}

uint64_t sub_2757342F0()
{
  v1 = v0[15];
  sub_2756C9074(v0[11] + OBJC_IVAR____TtC13iCloudQuotaUI12CancelAction_userInfo, v1, &qword_2809FDEE8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_2756C92B4(v0[15], &qword_2809FDEE8);
    v4 = 0;
LABEL_16:
    v26 = v0[11];
    swift_beginAccess();
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = v27;
      if (v4)
      {
        sub_27572D334(v4);

        v29 = sub_275797EA0();
      }

      else
      {
        v29 = 0;
      }

      [v27 didCancelWithUserInfo_];
    }

    else
    {
    }

    v30 = v0[1];

    return v30();
  }

  else
  {
    sub_27570F4D4();
    sub_275796390();
    v5 = v0[13];
    (*(v3 + 8))(v0[15], v2);
    v6 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
    result = sub_275798850();
    v4 = result;
    v8 = 0;
    v10 = v6 + 64;
    v9 = *(v6 + 64);
    v34 = result;
    v35 = v6;
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v14 = (v11 + 63) >> 6;
    v33 = v5;
    v32 = (v5 + 8);
    v31 = result + 64;
    if ((v12 & v9) != 0)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v18 = v15 | (v8 << 6);
        v19 = (*(v35 + 48) + 16 * v18);
        v20 = *v19;
        v21 = v19[1];
        (*(v33 + 16))(v0[14], *(v35 + 56) + *(v33 + 72) * v18, v0[12]);

        sub_2757493CC(v0 + 2);
        (*v32)(v0[14], v0[12]);
        *(v31 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v4 = v34;
        v22 = (v34[6] + 16 * v18);
        *v22 = v20;
        v22[1] = v21;
        result = sub_2756D5AA8(v0 + 1, (v34[7] + 32 * v18));
        v23 = v34[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          break;
        }

        v34[2] = v25;
        if (!v13)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v14)
        {

          goto LABEL_16;
        }

        v17 = *(v10 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_275734728()
{
  result = qword_280A06F50;
  if (!qword_280A06F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A06F50);
  }

  return result;
}

unint64_t sub_2757347B0()
{
  result = qword_280A06F58[0];
  if (!qword_280A06F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A06F58);
  }

  return result;
}

unint64_t sub_275734804()
{
  result = qword_2809FF170;
  if (!qword_2809FF170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF168);
    sub_27572A6DC(&qword_2809FF178, 255, MEMORY[0x277D232F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF170);
  }

  return result;
}

void sub_275734CFC()
{
  sub_2756D3FDC();
  if (v0 <= 0x3F)
  {
    sub_275734D8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275734D8C()
{
  if (!qword_2809FF1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF108);
    sub_2756C557C(255, &qword_2809FF110);
    sub_2756CFA44(&qword_2809FF118, &qword_2809FF108);
    sub_275733298(&qword_2809FF120, &qword_2809FF110);
    v0 = sub_2757965B0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FF1C0);
    }
  }
}

void sub_275734EC8()
{
  sub_2756CF688(319, &qword_2809FD8A0, &qword_2809FD868);
  if (v0 <= 0x3F)
  {
    sub_2756CF688(319, &qword_2809FDF38, &qword_2809FDF18);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_275734FE0()
{
  sub_2756CF688(319, &qword_2809FDF38, &qword_2809FDF18);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27573509C()
{
  sub_2756FFE70();
  if (v0 <= 0x3F)
  {
    sub_2756CF688(319, &qword_2809FDF38, &qword_2809FDF18);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_2757351F0()
{
  result = qword_280A07830[0];
  if (!qword_280A07830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A07830);
  }

  return result;
}

unint64_t sub_275735248()
{
  result = qword_280A07AC0[0];
  if (!qword_280A07AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A07AC0);
  }

  return result;
}

unint64_t sub_2757352A0()
{
  result = qword_280A07D50[0];
  if (!qword_280A07D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A07D50);
  }

  return result;
}

unint64_t sub_2757352F8()
{
  result = qword_280A07FE0[0];
  if (!qword_280A07FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A07FE0);
  }

  return result;
}

unint64_t sub_275735350()
{
  result = qword_280A080F0;
  if (!qword_280A080F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A080F0);
  }

  return result;
}

unint64_t sub_2757353A8()
{
  result = qword_280A080F8[0];
  if (!qword_280A080F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A080F8);
  }

  return result;
}

unint64_t sub_275735400()
{
  result = qword_280A08180;
  if (!qword_280A08180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A08180);
  }

  return result;
}

unint64_t sub_275735458()
{
  result = qword_280A08188[0];
  if (!qword_280A08188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A08188);
  }

  return result;
}

unint64_t sub_2757354B0()
{
  result = qword_280A08210;
  if (!qword_280A08210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A08210);
  }

  return result;
}

unint64_t sub_275735508()
{
  result = qword_280A08218[0];
  if (!qword_280A08218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A08218);
  }

  return result;
}

unint64_t sub_275735560()
{
  result = qword_280A082A0;
  if (!qword_280A082A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A082A0);
  }

  return result;
}

unint64_t sub_2757355B8()
{
  result = qword_280A082A8[0];
  if (!qword_280A082A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A082A8);
  }

  return result;
}

uint64_t sub_27573560C()
{
  v0 = sub_2757988A0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27573567C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoadingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2757356E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoadingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_275735744()
{
  type metadata accessor for LoadingView(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong didCancel];
}

uint64_t objectdestroy_98Tm()
{
  v1 = (type metadata accessor for LoadingView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  MEMORY[0x277C81EF0](v0 + v3 + 16);
  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF128);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2757358C4()
{
  type metadata accessor for LoadingView(0);
  sub_275797830();
  sub_275796870();
}

uint64_t sub_275735A58(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ELL;
  }

  return 0x676E69636E7953;
}

uint64_t sub_275735ABC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x676E69636E7953;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x80000002757B9470;
  if (v3 == 1)
  {
    v6 = 0xD00000000000001ELL;
  }

  else
  {
    v6 = 0x676E69636E7953;
  }

  if (v3 == 1)
  {
    v4 = 0x80000002757B9470;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0x80000002757B9450;
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000001ELL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000018;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0x80000002757B9450;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_275798980();
  }

  return v11 & 1;
}

uint64_t sub_275735B9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x80000002757B94E0;
    v10 = 0xD000000000000014;
    if (a1 != 6)
    {
      v10 = 0x6C636E4973707061;
      v9 = 0xEC00000064656475;
    }

    v11 = 0x466567617373656DLL;
    v12 = 0xEF6E4F707041726FLL;
    if (a1 != 4)
    {
      v11 = 0xD000000000000010;
      v12 = 0x80000002757B94C0;
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
    v3 = 0xE200000000000000;
    v4 = 25705;
    v5 = 0xE500000000000000;
    v6 = 0x6449707061;
    if (a1 != 2)
    {
      v6 = 0x4965727574616566;
      v5 = 0xE900000000000064;
    }

    if (a1)
    {
      v4 = 1701869940;
      v3 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
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

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x80000002757B94E0;
        if (v7 != 0xD000000000000014)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = 0xEC00000064656475;
        if (v7 != 0x6C636E4973707061)
        {
LABEL_46:
          v14 = sub_275798980();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEF6E4F707041726FLL;
      if (v7 != 0x466567617373656DLL)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0x80000002757B94C0;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x6449707061)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xE900000000000064;
      if (v7 != 0x4965727574616566)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE400000000000000;
    if (v7 != 1701869940)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v7 != 25705)
    {
      goto LABEL_46;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

uint64_t sub_275735E3C()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_275735EE4()
{
  sub_275797FF0();
}

uint64_t sub_275735F78()
{
  sub_275797FF0();
}

uint64_t sub_2757360B4()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_275736158()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2757362A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27573D3F8();
  *a1 = result;
  return result;
}

void sub_2757362D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69636E7953;
  if (v2 == 1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = 0x80000002757B9470;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (v5)
  {
    v3 = 0x80000002757B9450;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_275736358(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 != 0);
  if (!a1)
  {
    v4 = a4 & (a3 == 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

uint64_t sub_2757363A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_275798980();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_275736420(uint64_t a1)
{
  v2 = sub_27574002C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27573645C(uint64_t a1)
{
  v2 = sub_27574002C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275736498()
{
  v1 = 0x746E756F43707061;
  if (*v0 != 1)
  {
    v1 = 2037277037;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_2757364EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27573D5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275736514(uint64_t a1)
{
  v2 = sub_27573FF84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275736550(uint64_t a1)
{
  v2 = sub_27573FF84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27573658C(uint64_t a1)
{
  v2 = sub_275740080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2757365C8(uint64_t a1)
{
  v2 = sub_275740080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275736604@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_275736634(uint64_t a1)
{
  v2 = sub_27573FFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275736670(uint64_t a1)
{
  v2 = sub_27573FFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2757366AC(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = 2 * (a2 != 0);
  }

  else
  {
    MEMORY[0x277C80B70](1);
  }

  return MEMORY[0x277C80B70](v3);
}

uint64_t sub_2757366F4(uint64_t a1, char a2)
{
  sub_275798A40();
  if (a2)
  {
    a1 = 2 * (a1 != 0);
  }

  else
  {
    MEMORY[0x277C80B70](1);
  }

  MEMORY[0x277C80B70](a1);
  return sub_275798A70();
}

uint64_t sub_275736760(void *a1)
{
  result = sub_27573D704(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_275736784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2757367C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_275798A40();
  if (v2 == 1)
  {
    v1 = 2 * (v1 != 0);
  }

  else
  {
    MEMORY[0x277C80B70](1);
  }

  MEMORY[0x277C80B70](v1);
  return sub_275798A70();
}

uint64_t sub_275736830()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = 2 * (v1 != 0);
  }

  else
  {
    MEMORY[0x277C80B70](1);
  }

  return MEMORY[0x277C80B70](v1);
}

uint64_t sub_275736884()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_275798A40();
  if (v2 == 1)
  {
    v1 = 2 * (v1 != 0);
  }

  else
  {
    MEMORY[0x277C80B70](1);
  }

  MEMORY[0x277C80B70](v1);
  return sub_275798A70();
}

uint64_t sub_2757368F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27573D704(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

char *sub_275736960(char *a1)
{
  result = sub_27573DCFC(a1);
  if (v1)
  {
    return (v3 & 1);
  }

  return result;
}

uint64_t sub_27573699C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (a2)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
    v5 = sub_27573C4B4(a1, 0);
    if (v8)
    {
      goto LABEL_7;
    }

    v11 = *(a3 + 16);
    if (a1 >= 1)
    {
      if (!v11)
      {
        return 0;
      }

      v5 = sub_27573C4B4(1, 1);
      if (v12)
      {
        goto LABEL_7;
      }

      v11 = *(a3 + 16);
    }

    if (v11)
    {
LABEL_3:
      v5 = sub_27573C4B4(0, 1);
      if ((v6 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v9 = *(*(a3 + 56) + 16 * v5);

      return v9;
    }
  }

  return 0;
}

uint64_t sub_275736A3C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_27573C4B4(0, 1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 16 * v2);

  return v4;
}

uint64_t sub_275736AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = sub_27573699C(a1, 0, a2);
  v10 = v9;
  v15 = v8;
  v16 = v9;

  sub_275795F90();
  v14[2] = v8;
  v14[3] = v10;
  sub_27573E460();
  sub_2756CFA44(&qword_2809FF2B0, &qword_2809FF2A0);
  v11 = sub_275797EF0();

  if (v11)
  {
    MEMORY[0x28223BE20](v12);
    sub_27573E508();
    sub_27573E55C();
    sub_2757982C0();
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

uint64_t sub_275736CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2A0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  v29 = sub_27573699C(v11, 0, a2);
  v30 = v12;
  sub_275795F90();
  sub_275795F90();
  v25 = v11;
  if (v11)
  {
    v21 = v8;
    v22 = v5;
    v20 = a1;
    v24 = a1 + 32;
    v23 = sub_27573E460();
    sub_2756CFA44(&qword_2809FF2B0, &qword_2809FF2A0);
    v13 = 0;
    while (1)
    {
      v14 = *(v24 + 8 * v13);
      v26 = v29;
      v27 = v30;
      v15 = v14;
      v16 = sub_275797EF0();
      if ((v16 & 1) == 0)
      {
        break;
      }

      ++v13;
      MEMORY[0x28223BE20](v16);
      sub_27573E508();
      sub_27573E55C();
      sub_2757982C0();

      if (v25 == v13)
      {
        v13 = v25;
        goto LABEL_8;
      }
    }

LABEL_8:
    v8 = v21;
    v5 = v22;
  }

  else
  {
    v13 = 0;
  }

  v26 = v29;
  v27 = v30;
  v28 = v13;
  sub_27573E460();
  sub_2756CFA44(&qword_2809FF2B0, &qword_2809FF2A0);
  v17 = sub_275797EF0();
  if (v17)
  {
    MEMORY[0x28223BE20](v17);
    sub_27573E508();
    sub_27573E55C();
    sub_2757982C0();
  }

  v18 = *(v5 + 8);
  v18(v8, v4);
  v18(v10, v4);
  return v29;
}

uint64_t sub_2757370C0()
{
  if (*(v0 + 8))
  {
  }

  else
  {
    sub_275796500();
    sub_27573EA4C(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

uint64_t sub_27573714C()
{
  sub_275796500();
  sub_27573EA4C(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return sub_275796AA0();
}

uint64_t sub_2757371C0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = sub_275796500();
  v4 = sub_27573EA4C(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return MEMORY[0x282131550](v1, v2, v3, v4);
}

uint64_t sub_275737254(void *a1, char a2)
{
  v4 = sub_275796C30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a1;
  }

  else
  {

    v9 = sub_275798300();
    v10 = sub_275796F80();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEF0);
      v13 = sub_275798AC0();
      v15 = sub_27562792C(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_275623000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x277C81E50](v12, -1, -1);
      MEMORY[0x277C81E50](v11, -1, -1);
    }

    sub_275796C20();
    swift_getAtKeyPath();
    sub_27573E818(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v18;
  }

  return a1;
}

uint64_t sub_2757374AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
  sub_2757975B0();
  return v1;
}

void (*sub_275737578(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v4 + 57) = v6;
  v7 = *(v1 + 56);
  *(v4 + 80) = v5;
  *(v4 + 88) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  sub_27573E690(v5, v6);

  *(v4 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
  sub_2757975B0();
  return sub_275737634;
}

void sub_275737634(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  *(v3 + 24) = v4;
  v6 = *(v3 + 48);
  *(v3 + 64) = v6;
  v7 = *(v3 + 56);
  v8 = *(v3 + 57);
  *(v3 + 32) = v8;
  *(v3 + 40) = v5;
  *(v3 + 72) = v7;
  if (a2)
  {
    sub_27573E690(v6, v7);
    sub_2757975C0();
    sub_27573E6A4(v4, v8);

    sub_27573E6A4(*(v3 + 48), *(v3 + 56));
  }

  else
  {
    sub_2757975C0();
    sub_27573E6A4(v4, v8);
  }

  free(v3);
}

uint64_t sub_27573771C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
  sub_2757975D0();
  return v1;
}

uint64_t sub_275737784()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_2757377B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppMessageTextView() + 36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_275737A14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27573F498();
  *a1 = result;
  return result;
}

void sub_275737A44(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000002757B94E0;
  v6 = 0xD000000000000014;
  if (v2 != 6)
  {
    v6 = 0x6C636E4973707061;
    v5 = 0xEC00000064656475;
  }

  v7 = 0xEF6E4F707041726FLL;
  v8 = 0x466567617373656DLL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000002757B94C0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6449707061;
  if (v2 != 2)
  {
    v10 = 0x4965727574616566;
    v9 = 0xE900000000000064;
  }

  if (*v1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
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

unint64_t sub_275737B50()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000014;
  if (v1 != 6)
  {
    v3 = 0x6C636E4973707061;
  }

  v4 = 0x466567617373656DLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6449707061;
  if (v1 != 2)
  {
    v5 = 0x4965727574616566;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_275737C58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27573F498();
  *a1 = result;
  return result;
}

uint64_t sub_275737C8C(uint64_t a1)
{
  v2 = sub_27573E704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275737CC8(uint64_t a1)
{
  v2 = sub_27573E704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275737D04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2D8);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v53 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x28223BE20](v15);
  v57 = &v48 - v16;
  v17 = sub_275795D60();
  v55 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E0);
  v58 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v73 = type metadata accessor for AppMessageTextView();
  MEMORY[0x28223BE20](v73);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v24 = MEMORY[0x277D84F90];
  sub_275796500();
  sub_27573EA4C(&qword_2809FD6B8, MEMORY[0x277D23330]);
  v65 = sub_275796AA0();
  *(v24 + 1) = v65;
  *(v24 + 2) = v25;
  KeyPath = swift_getKeyPath();
  *(v24 + 3) = KeyPath;
  v24[32] = 0;
  v68 = 0;
  v69 = 2;
  sub_2757975A0();
  v26 = v71;
  v27 = v72;
  v62 = v70;
  v63 = v72;
  *(v24 + 5) = v70;
  v61 = v26;
  v24[48] = v26;
  *(v24 + 7) = v27;
  v28 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_27573E704();
  v29 = v66;
  sub_275798A80();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_0(v67);

    sub_27573E6A4(v62, v61);
  }

  else
  {
    v30 = v19;
    v66 = v17;
    v31 = v57;
    LOBYTE(v70) = 0;
    v32 = sub_2757988D0();
    v48 = v22;
    if (!v33)
    {
      sub_275795D50();
      v35 = sub_275795D40();
      v37 = v36;
      (*(v55 + 8))(v30, v66);
      v33 = v37;
      v32 = v35;
    }

    *(v24 + 8) = v32;
    *(v24 + 9) = v33;
    LOBYTE(v70) = 1;
    sub_2756CFA44(&qword_2809FD908, &qword_2809FD900);
    v38 = v60;
    v39 = v20;
    sub_275798910();
    v40 = v73;
    (*(v59 + 32))(&v24[*(v73 + 36)], v31, v38);
    LOBYTE(v70) = 2;
    v41 = v56;
    sub_2757988E0();
    sub_2756D8BC4(v41, &v24[v40[10]], &qword_2809FD8F0);
    LOBYTE(v70) = 3;
    v42 = v54;
    sub_2757988E0();
    sub_2756D8BC4(v42, &v24[v40[11]], &qword_2809FD8F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
    LOBYTE(v70) = 4;
    sub_2756CFA44(&qword_2809FF2F0, &qword_2809FF2E8);
    v43 = v53;
    sub_2757988E0();
    sub_2756D8BC4(v43, &v24[v40[12]], &qword_2809FF2D0);
    LOBYTE(v70) = 5;
    v44 = v52;
    sub_2757988E0();
    sub_2756D8BC4(v44, &v24[v40[13]], &qword_2809FF2D0);
    LOBYTE(v70) = 6;
    v45 = v51;
    sub_2757988E0();
    sub_2756D8BC4(v45, &v24[v40[14]], &qword_2809FF2D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
    LOBYTE(v70) = 7;
    sub_2756CFA44(&qword_2809FD878, &qword_2809FD858);
    v46 = v50;
    v47 = v48;
    sub_2757988E0();
    (*(v58 + 8))(v47, v39);
    sub_2756D8BC4(v46, &v24[v40[15]], &qword_2809FF2D8);
    sub_27573E758(v24, v49);
    __swift_destroy_boxed_opaque_existential_0(v67);
    return sub_27573E7BC(v24);
  }
}

uint64_t sub_275738878@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for AppMessageTextView();
  v55 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = v3;
  v57 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_275795BD0();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_275795B60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275795B70();
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275795B90();
  MEMORY[0x28223BE20](v12 - 8);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v14 - 8);
  v46 = &v43 - v15;
  v45 = sub_275797F90();
  v16 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2F8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v50 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v43 - v22;
  v51 = v1;
  sub_275738F1C();
  if (v24)
  {
    sub_275797F80();
    sub_275797F60();
    v44 = v10;

    (*(v16 + 8))(v18, v45);
    v10 = v44;
  }

  v25 = sub_275795CB0();
  (*(*(v25 - 8) + 56))(v46, 1, 1, v25);
  (*(v48 + 104))(v49, *MEMORY[0x277CC8BB0], v10);
  (*(v7 + 104))(v9, *MEMORY[0x277CC8B98], v6);
  sub_275795B80();
  sub_275795BB0();
  v27 = v52;
  v26 = v53;
  v28 = v54;
  v29 = v50;
  (*(v52 + 56))(v23, 0, 1, v53);
  sub_2756C9074(v23, v29, &qword_2809FF2F8);
  v30 = *(v27 + 48);
  if (v30(v29, 1, v26) == 1)
  {
    sub_275795BC0();
    if (v30(v29, 1, v26) != 1)
    {
      sub_2756C92B4(v29, &qword_2809FF2F8);
    }
  }

  else
  {
    (*(v27 + 32))(v28, v29, v26);
  }

  v31 = sub_2757970C0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_2756C92B4(v23, &qword_2809FF2F8);
  v38 = v57;
  sub_27573E758(v51, v57);
  v39 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v40 = swift_allocObject();
  result = sub_27573E824(v38, v40 + v39);
  v42 = v58;
  *v58 = v31;
  v42[1] = v33;
  *(v42 + 16) = v35 & 1;
  v42[3] = v37;
  v42[4] = sub_27573E888;
  v42[5] = v40;
  v42[6] = 0;
  v42[7] = 0;
  return result;
}

uint64_t sub_275738F1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2D0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v75 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v75 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v75 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0D8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v76 = &v75 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v75 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v75 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v78 = &v75 - v28;
  MEMORY[0x28223BE20](v27);
  v75 = &v75 - v29;
  v30 = *(v0 + 48);
  v31 = *(v0 + 56);
  v81 = *(v0 + 40);
  v82 = v30;
  v83 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
  sub_2757975B0();
  v32 = v79;
  if (!v80)
  {
    v37 = type metadata accessor for AppMessageTextView();
    sub_2756C9074(v0 + *(v37 + 48), v13, &qword_2809FF2D0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v13, 1, v38) == 1)
    {
      sub_2756C92B4(v13, &qword_2809FF2D0);
      v40 = 1;
    }

    else
    {
      if (!*(v0 + 8))
      {
        goto LABEL_50;
      }

      sub_275796390();

      (*(v39 + 8))(v13, v38);
      v40 = 0;
    }

    v58 = sub_2757963E0();
    (*(*(v58 - 8) + 56))(v26, v40, 1, v58);
    v59 = v78;
    sub_2756C9074(v26, v78, &qword_2809FF0D8);
    v60 = sub_27573E014(v59);
    if (v60)
    {
      v32 = sub_275736AA8(v32, v60);
    }

    else
    {
      v32 = 0;
    }

    v61 = v26;
    goto LABEL_48;
  }

  if (v80 != 1)
  {
    if (v79 > 1)
    {
      if (v79 != 2)
      {
        v49 = type metadata accessor for AppMessageTextView();
        sub_2756C9074(v0 + *(v49 + 56), v4, &qword_2809FF2D0);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
        v51 = *(v50 - 8);
        if ((*(v51 + 48))(v4, 1, v50) == 1)
        {
          sub_2756C92B4(v4, &qword_2809FF2D0);
          v52 = 1;
          v53 = v77;
        }

        else
        {
          v53 = v77;
          if (!*(v0 + 8))
          {
            goto LABEL_50;
          }

          sub_275796390();

          (*(v51 + 8))(v4, v50);
          v52 = 0;
        }

        v68 = sub_2757963E0();
        (*(*(v68 - 8) + 56))(v53, v52, 1, v68);
        v69 = v78;
        sub_2756C9074(v53, v78, &qword_2809FF0D8);
        v70 = sub_27573E014(v69);
        if (v70)
        {
          v71 = v70;
          if (*(v70 + 16) && (v72 = sub_27573C4B4(0, 1), (v73 & 1) != 0))
          {
            v32 = *(*(v71 + 56) + 16 * v72);
          }

          else
          {

            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }

        v61 = v53;
        goto LABEL_48;
      }

      v46 = type metadata accessor for AppMessageTextView();
      sub_2756C9074(v0 + *(v46 + 52), v7, &qword_2809FF2D0);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v7, 1, v47) == 1)
      {
        sub_2756C92B4(v7, &qword_2809FF2D0);
        v44 = 1;
        v45 = v76;
        goto LABEL_34;
      }

      v45 = v76;
      if (!*(v0 + 8))
      {
        goto LABEL_50;
      }

      sub_275796390();

      (*(v48 + 8))(v7, v47);
    }

    else
    {
      if (!v79)
      {
        return v32;
      }

      v41 = type metadata accessor for AppMessageTextView();
      sub_2756C9074(v0 + *(v41 + 48), v15, &qword_2809FF2D0);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v15, 1, v42) == 1)
      {
        sub_2756C92B4(v15, &qword_2809FF2D0);
        v44 = 1;
        v45 = v75;
LABEL_34:
        v62 = sub_2757963E0();
        (*(*(v62 - 8) + 56))(v45, v44, 1, v62);
        v63 = v78;
        sub_2756C9074(v45, v78, &qword_2809FF0D8);
        v64 = sub_27573E014(v63);
        if (v64)
        {
          v65 = v64;
          if (*(v64 + 16) && (v66 = sub_27573C4B4(0, 1), (v67 & 1) != 0))
          {
            v32 = *(*(v65 + 56) + 16 * v66);
          }

          else
          {

            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }

        v61 = v45;
LABEL_48:
        sub_2756C92B4(v61, &qword_2809FF0D8);
        return v32;
      }

      v45 = v75;
      if (!*(v0 + 8))
      {
        goto LABEL_50;
      }

      sub_275796390();

      (*(v43 + 8))(v15, v42);
    }

    v44 = 0;
    goto LABEL_34;
  }

  v33 = type metadata accessor for AppMessageTextView();
  sub_2756C9074(v0 + *(v33 + 48), v10, &qword_2809FF2D0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v10, 1, v34) == 1)
  {
    sub_2756C92B4(v10, &qword_2809FF2D0);
    v36 = 1;
    goto LABEL_20;
  }

  if (*(v0 + 8))
  {

    sub_275796390();

    (*(v35 + 8))(v10, v34);
    v36 = 0;
LABEL_20:
    v54 = sub_2757963E0();
    (*(*(v54 - 8) + 56))(v23, v36, 1, v54);
    v55 = v78;
    sub_2756C9074(v23, v78, &qword_2809FF0D8);
    v56 = sub_27573E014(v55);
    if (v56)
    {
      v57 = sub_275736CDC(v32, v56);

      sub_27573E6A4(v32, 1);
      sub_2756C92B4(v23, &qword_2809FF0D8);
      return v57;
    }

    else
    {
      sub_2756C92B4(v23, &qword_2809FF0D8);
      sub_27573E6A4(v32, 1);
      return 0;
    }
  }

LABEL_50:
  sub_275796500();
  sub_27573EA4C(&qword_2809FD6B8, MEMORY[0x277D23330]);
  result = sub_275796A90();
  __break(1u);
  return result;
}

void sub_275739B68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  if (!*(v0 + 8))
  {
    sub_275796500();
    sub_27573EA4C(&qword_2809FD6B8, MEMORY[0x277D23330]);
    sub_275796A90();
    __break(1u);
    return;
  }

  v5 = type metadata accessor for AppMessageTextView();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  sub_275796390();

  v8 = v19;
  v7 = v20;
  if (v19 == 7368801 && v20 == 0xE300000000000000 || (sub_275798980() & 1) != 0)
  {

    sub_275739F58();
    return;
  }

  if (v8 == 0x65727574616566 && v7 == 0xE700000000000000)
  {
  }

  else
  {
    v9 = sub_275798980();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  sub_2756C9074(v1 + *(v5 + 44), v4, &qword_2809FD8F0);
  v10 = *(v6 - 8);
  if ((*(v10 + 48))(v4, 1, v6) == 1)
  {
    sub_2756C92B4(v4, &qword_2809FD8F0);
  }

  else
  {

    sub_275796390();

    (*(v10 + 8))(v4, v6);
  }

  v11 = sub_2757988A0();

  if (v11 <= 2 && (v12 = sub_275737254(*(v1 + 24), *(v1 + 32))) != 0 && (v13 = v12, v14 = [v12 account], v13, v14))
  {
    if (v11)
    {
      if (v11 == 1)
      {
        sub_27573A620(v14);
      }

      else
      {
        sub_27573A974(v14);
      }
    }

    else
    {
      sub_27573F4E4();
    }
  }

  else
  {
    v15 = *(v1 + 48);
    v16 = *(v1 + 56);
    v19 = *(v1 + 40);
    LOBYTE(v20) = v15;
    v21 = v16;
    v17 = 2;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
    sub_2757975C0();
  }
}

void sub_275739F58()
{
  v1 = v0;
  v2 = type metadata accessor for AppMessageTextView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  sub_2756C9074(v1 + *(v3 + 48), &v50 - v7, &qword_2809FD8F0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    if (!*(v1 + 8))
    {
      goto LABEL_32;
    }

    sub_275796390();

    (*(v10 + 8))(v8, v9);
    v11 = v54;
    v12 = *(v1 + 24);
    v13 = *(v1 + 32);
    v14 = sub_275737254(v12, v13);
    if (!v14 || (v51 = v12, v15 = v14, v16 = [v14 account], v15, v17 = sub_275797F10(), v18 = objc_msgSend(v16, sel_isEnabledForDataclass_, v17), v16, v17, (v18 & 1) == 0))
    {

      goto LABEL_10;
    }

    v52 = v11;
    v19 = sub_275797F10();
    v20 = sub_275797F50();
    v22 = v21;

    if (v20 == sub_275797F50() && v22 == v23)
    {

LABEL_14:

      v27 = objc_opt_self();
      sub_27573E758(v1, &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v29 = swift_allocObject();
      sub_27573E824(&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
      v57 = sub_27573F7BC;
      v58 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_27573B384;
      v56 = &block_descriptor_7;
      v30 = _Block_copy(&aBlock);

      [v27 getInfoWithCompletion_];
      _Block_release(v30);
      return;
    }

    v26 = sub_275798980();

    if (v26)
    {
      goto LABEL_14;
    }

    v31 = sub_275797F10();
    v32 = *MEMORY[0x277CB8920];
    v33 = sub_275797F50();
    v35 = v34;

    if (v33 == sub_275797F50() && v35 == v36)
    {
    }

    else
    {
      v37 = sub_275798980();

      if ((v37 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v38 = sub_275737254(v51, v13);
    if (v38)
    {
      v39 = v38;
      v40 = [v38 account];

      if (v40)
      {
        if ([v40 isEnabledForDataclass_])
        {
          v41 = [objc_allocWithZone(MEMORY[0x277D28A40]) initWithAccount:v40 delegate:0 eventQueue:0];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 backupState];

            if (v43)
            {

              v44 = [v43 state];

              if (v44 == 6)
              {
                v45 = *(v1 + 40);
                v46 = *(v1 + 56);
                v47 = *(v1 + 48);
                aBlock = v45;
                LOBYTE(v54) = v47;
                v55 = v46;
                v59 = 3;
                v60 = 2;
                sub_27573E690(v45, v47);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
                sub_2757975C0();

                sub_27573E6A4(v45, v47);

                return;
              }

              goto LABEL_28;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_32:
          sub_275796500();
          sub_27573EA4C(&qword_2809FD6B8, MEMORY[0x277D23330]);
          sub_275796A90();
          __break(1u);
          return;
        }
      }
    }

LABEL_27:

LABEL_28:
    v48 = *(v1 + 48);
    v49 = *(v1 + 56);
    aBlock = *(v1 + 40);
    LOBYTE(v54) = v48;
    v55 = v49;
    v59 = 1;
    v60 = 2;
    goto LABEL_11;
  }

  sub_2756C92B4(v8, &qword_2809FD8F0);
LABEL_10:
  v24 = *(v1 + 48);
  v25 = *(v1 + 56);
  aBlock = *(v1 + 40);
  LOBYTE(v54) = v24;
  v55 = v25;
  v59 = 2;
  v60 = 2;
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
  sub_2757975C0();
}

void sub_27573A620(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppMessageTextView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_275796280();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_275700E70();
  (*(v8 + 16))(v10, v11, v7);
  v12 = a1;
  v13 = sub_275796270();
  v14 = sub_2757982E0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v2;
    v18 = v17;
    *v16 = 138412290;
    *(v16 + 4) = v12;
    *v17 = v12;
    v19 = v12;
    _os_log_impl(&dword_275623000, v13, v14, "HME fetch for account: %@", v16, 0xCu);
    sub_2756C92B4(v18, &qword_2809FEDA0);
    v20 = v18;
    v2 = v29;
    MEMORY[0x277C81E50](v20, -1, -1);
    v21 = v16;
    v5 = v28;
    MEMORY[0x277C81E50](v21, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v22 = [objc_allocWithZone(MEMORY[0x277CF02A0]) init];
  v23 = [v12 aa_altDSID];
  if (v23)
  {
    v24 = v23;
    sub_27573E758(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v26 = swift_allocObject();
    sub_27573E824(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    aBlock[4] = sub_27573F944;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_27573BA2C;
    aBlock[3] = &block_descriptor_52;
    v27 = _Block_copy(aBlock);

    [v22 listAllPrivateEmailsForAltDSID:v24 completion:v27];
    _Block_release(v27);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_27573A974(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_2757963E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AppMessageTextView();
  sub_2756C9074(v2 + *(v10 + 60), v9, &qword_2809FF2D8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_2756C92B4(v9, &qword_2809FF2D8);
    v13 = MEMORY[0x277D84F90];
    v14 = *(MEMORY[0x277D84F90] + 16);
    if (v14)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (*(v2 + 8))
  {
    sub_2756CF9C8();

    sub_275796390();

    (*(v12 + 8))(v9, v11);
    v13 = v37;
    v14 = *(v37 + 16);
    if (v14)
    {
LABEL_6:
      v29 = v13;
      v30 = v2;
      v16 = *(v4 + 16);
      v15 = v4 + 16;
      v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v34 = *(v15 + 56);
      v18 = MEMORY[0x277D84F90];
      v32 = v16;
      v33 = v3;
      v16(v6, v17, v3);
      while (1)
      {
        sub_2757487CC();
        v19 = sub_275797F10();

        (*(v15 - 8))(v6, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_27573C38C(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_27573C38C((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        v18[v21 + 4] = v19;
        v3 = v33;
        v17 += v34;
        if (!--v14)
        {
          break;
        }

        v32(v6, v17, v33);
      }

      v2 = v30;
      goto LABEL_17;
    }

LABEL_16:

    v18 = MEMORY[0x277D84F90];
LABEL_17:
    sub_27573FE74(v18);

    v22 = objc_opt_self();
    type metadata accessor for Dataclass(0);
    sub_27573EA4C(&qword_2809FF380, type metadata accessor for Dataclass);
    v23 = sub_275798220();

    v24 = [v22 enabledAppsForAccount:v31 deprioritizedApps:v23];

    v25 = sub_2757980E0();
    v26 = *(v2 + 48);
    v27 = *(v2 + 56);
    v37 = *(v2 + 40);
    v38 = v26;
    v39 = v27;
    v35 = v25;
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
    return sub_2757975C0();
  }

  sub_275796500();
  sub_27573EA4C(&qword_2809FD6B8, MEMORY[0x277D23330]);
  result = sub_275796A90();
  __break(1u);
  return result;
}

uint64_t sub_27573AE74(void *a1, uint64_t a2)
{
  v4 = sub_2757978A0();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2757978C0();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppMessageTextView();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_275796280();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_275700E70();
  (*(v12 + 16))(v14, v15, v11);
  v16 = a1;
  v17 = sub_275796270();
  v18 = sub_275798310();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = a2;
    v20 = v19;
    *v19 = 134218240;
    *(v19 + 4) = [v16 photoCount];
    *(v20 + 12) = 2048;
    *(v20 + 14) = [v16 videoCount];

    _os_log_impl(&dword_275623000, v17, v18, "fetched unsynced photos count: %llu videos count: %llu", v20, 0x16u);
    v21 = v20;
    a2 = v31;
    MEMORY[0x277C81E50](v21, -1, -1);
  }

  else
  {

    v17 = v16;
  }

  (*(v12 + 8))(v14, v11);
  sub_2756C557C(0, &qword_2809FEE60);
  v22 = sub_275798340();
  sub_27573E758(a2, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v16;
  sub_27573E824(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  aBlock[4] = sub_27573F844;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2756C4584;
  aBlock[3] = &block_descriptor_46;
  v25 = _Block_copy(aBlock);
  v26 = v16;

  sub_2757978B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27573EA4C(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
  v27 = v35;
  v28 = v37;
  sub_2757985B0();
  MEMORY[0x277C80470](0, v8, v27, v25);
  _Block_release(v25);

  (*(v36 + 8))(v27, v28);
  return (*(v33 + 8))(v8, v34);
}

void sub_27573B384(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_27573B408(unint64_t a1, void *a2, uint64_t a3)
{
  v44 = a3;
  v5 = sub_2757978A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2757978C0();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppMessageTextView();
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = v11;
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275796280();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_275700E70();
  (*(v13 + 16))(v15, v16, v12);

  v17 = a2;
  v18 = sub_275796270();
  v19 = sub_275798310();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = v38;
    *v20 = 136315394;
    v39 = v6;
    v40 = v5;
    if (a1)
    {
      if (a1 >> 62)
      {
        v21 = sub_275798640();
      }

      else
      {
        v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v21 = 0;
    }

    aBlock = v21;
    LOBYTE(v51) = a1 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3A0);
    v22 = sub_275797FA0();
    v24 = sub_27562792C(v22, v23, &v49);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    aBlock = a2;
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3A8);
    v26 = sub_275797FA0();
    v28 = sub_27562792C(v26, v27, &v49);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_275623000, v18, v19, "fetched HME count: %s and error: %s", v20, 0x16u);
    v29 = v38;
    swift_arrayDestroy();
    MEMORY[0x277C81E50](v29, -1, -1);
    MEMORY[0x277C81E50](v20, -1, -1);

    (*(v13 + 8))(v15, v12);
    v6 = v39;
    v5 = v40;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  sub_2756C557C(0, &qword_2809FEE60);
  v30 = sub_275798340();
  v31 = v43;
  sub_27573E758(v44, v43);
  v32 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  sub_27573E824(v31, v33 + v32);
  v54 = sub_27573F9C4;
  v55 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_2756C4584;
  v53 = &block_descriptor_58;
  v34 = _Block_copy(&aBlock);

  v35 = v45;
  sub_2757978B0();
  aBlock = MEMORY[0x277D84F90];
  sub_27573EA4C(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
  v36 = v48;
  sub_2757985B0();
  MEMORY[0x277C80470](0, v35, v36, v34);
  _Block_release(v34);

  (*(v6 + 8))(v36, v5);
  return (*(v46 + 8))(v35, v47);
}

uint64_t sub_27573BA2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2756C557C(0, &qword_2809FF398);
    v4 = sub_2757980E0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_27573BAD0(void *a1, uint64_t a2)
{
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275700E70();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_275796270();
  v11 = sub_275798310();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = [v9 serviceStatus];

    _os_log_impl(&dword_275623000, v10, v11, "App Message PR status: %lu", v12, 0xCu);
    MEMORY[0x277C81E50](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  (*(v5 + 8))(v7, v4);
  v13 = [v9 serviceStatus];
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v20 = *(a2 + 40);
  v21 = v14;
  v22 = v15;
  if (v13 == 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
  return sub_2757975C0();
}

void sub_27573BCEC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_27573BD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_27573EA4C(&qword_2809FF270, type metadata accessor for AppMessageTextView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27573BDFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_27573EA4C(&qword_2809FF310, type metadata accessor for AppMessageTextView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27573BE78(uint64_t a1)
{
  v2 = sub_27573EA4C(&qword_2809FF310, type metadata accessor for AppMessageTextView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27573BEF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_27573EA4C(&qword_2809FF390, type metadata accessor for AppMessageTextView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27573BF94(uint64_t a1, id *a2)
{
  result = sub_275797F30();
  *a2 = 0;
  return result;
}

uint64_t sub_27573C00C(uint64_t a1, id *a2)
{
  v3 = sub_275797F40();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_27573C08C@<X0>(uint64_t *a1@<X8>)
{
  sub_275797F50();
  v2 = sub_275797F10();

  *a1 = v2;
  return result;
}

uint64_t sub_27573C0D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_275797F10();

  *a1 = v2;
  return result;
}

uint64_t sub_27573C118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275797F50();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27573C144()
{
  v0 = sub_275797F50();
  v1 = MEMORY[0x277C80190](v0);

  return v1;
}

uint64_t sub_27573C180()
{
  sub_275797F50();
  sub_275797FF0();
}

uint64_t sub_27573C1D4()
{
  sub_275797F50();
  sub_275798A40();
  sub_275797FF0();
  v0 = sub_275798A70();

  return v0;
}

uint64_t sub_27573C248()
{
  v0 = sub_275797F50();
  v2 = v1;
  if (v0 == sub_275797F50() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_275798980();
  }

  return v5 & 1;
}

uint64_t sub_27573C2D0(uint64_t a1)
{
  v2 = sub_27573EA4C(&qword_2809FF380, type metadata accessor for Dataclass);
  v3 = sub_27573EA4C(&qword_2809FF388, type metadata accessor for Dataclass);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void *sub_27573C38C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3B0);
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
    type metadata accessor for Dataclass(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_27573C4B4(uint64_t a1, char a2)
{
  sub_275798A40();
  if (a2)
  {
    v4 = 2 * (a1 != 0);
  }

  else
  {
    MEMORY[0x277C80B70](1);
    v4 = a1;
  }

  MEMORY[0x277C80B70](v4);
  v5 = sub_275798A70();

  return sub_27573C548(a1, a2 & 1, v5);
}

unint64_t sub_27573C548(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      if (*(v8 + 8) == 1)
      {
        if (v9)
        {
          if ((a2 & (a1 != 0)) != 0)
          {
            return result;
          }
        }

        else if ((a2 & (a1 == 0)) != 0)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && v9 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_27573C5F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3C0);
  v39 = a2;
  result = sub_275798860();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = (v23 + v22);
      v28 = v27[1];
      v40 = *v27;
      if ((v39 & 1) == 0)
      {
      }

      sub_275798A40();
      if (v26)
      {
        v29 = 2 * (v25 != 0);
      }

      else
      {
        MEMORY[0x277C80B70](1);
        v29 = v25;
      }

      MEMORY[0x277C80B70](v29);
      result = sub_275798A70();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v25;
      *(v17 + 8) = v26;
      v18 = (*(v7 + 56) + v16);
      *v18 = v40;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v38;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}