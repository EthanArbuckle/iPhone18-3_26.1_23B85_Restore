uint64_t sub_25F4F066C()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F0728()
{
  *v0;
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4F07D0()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F0888@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F4F28A4();
  *a2 = result;
  return result;
}

void sub_25F4F08B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007765697665;
  v4 = 0xEC00000070756F72;
  v5 = 0x4777656976657270;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000025F5066A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7250656C676E6973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F4F0930(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4F2850();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4F09F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x617461646174656DLL;
  if (v2 != 1)
  {
    v4 = 0x6579616C70736964;
    v3 = 0xEE007865646E4964;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x617461646174656DLL;
  if (*a2 != 1)
  {
    v8 = 0x6579616C70736964;
    v7 = 0xEE007865646E4964;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F502A68();
  }

  return v11 & 1;
}

uint64_t sub_25F4F0B14()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F0BCC()
{
  *v0;
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4F0C70()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F0D24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F4F28F0();
  *a2 = result;
  return result;
}

void sub_25F4F0D54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xE800000000000000;
  v5 = 0x617461646174656DLL;
  if (v2 != 1)
  {
    v5 = 0x6579616C70736964;
    v4 = 0xEE007865646E4964;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F4F0DC8()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6579616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t PreviewStructure.propertyListValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D00, &qword_25F5052A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v30 - v6;
  v8 = sub_25F5020E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PreviewStructure(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[6] = v2;
  v17 = sub_25F4F1F18();
  sub_25F4F1F6C();
  sub_25F502238();
  sub_25F4EF04C(v2, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
  result = (*(*(v18 - 8) + 48))(v16, 2, v18);
  if (!result)
  {
    v30[2] = a1;
    v20 = *(v18 + 48);
    v21 = sub_25F5026B8();
    v30[3] = v30;
    v22 = *(v21 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 32))(v25, v16, v21);
    (*(v9 + 32))(v12, &v16[v20], v8);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D68, &qword_25F5052B8);
    v30[1] = v30;
    v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v26 - 8);
    v29 = v30 - v28;
    (*(v22 + 16))(v30 - v28, v25, v21);
    (*(v22 + 56))(v29, 0, 1, v21);
    v32 = &type metadata for PreviewStructure.Key;
    v33 = v17;
    LOBYTE(v31[0]) = 1;
    sub_25F4F1FC0(&qword_27FD90D70, MEMORY[0x28220A618]);
    sub_25F5021B8();
    sub_25F4D867C(v29, &qword_27FD90D68, &qword_25F5052B8);
    __swift_destroy_boxed_opaque_existential_0(v31);
    (*(v9 + 16))(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v32 = &type metadata for PreviewStructure.Key;
    v33 = v17;
    LOBYTE(v31[0]) = 2;
    sub_25F4F1FC0(&qword_27FD90D18, MEMORY[0x277D40CA0]);
    sub_25F5021B8();
    sub_25F4D867C(v7, &qword_27FD90D00, &qword_25F5052A0);
    (*(v9 + 8))(v12, v8);
    (*(v22 + 8))(v25, v21);
    return __swift_destroy_boxed_opaque_existential_0(v31);
  }

  return result;
}

uint64_t sub_25F4F1304(_BYTE *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewStructure(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F4EF04C(a3, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
  result = (*(*(v10 - 8) + 48))(v9, 2, v10);
  if (result)
  {
    v12 = 0;
    if (result != 1)
    {
      v12 = 2;
    }
  }

  else
  {
    v13 = *(v10 + 48);
    v14 = sub_25F5020E8();
    (*(*(v14 - 8) + 8))(&v9[v13], v14);
    v15 = sub_25F5026B8();
    result = (*(*(v15 - 8) + 8))(v9, v15);
    v12 = 1;
  }

  *a2 = v12;
  return result;
}

uint64_t PreviewStructure.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PreviewStructure(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &type metadata for PreviewStructure.Key;
  v9 = sub_25F4F1F18();
  v22 = v9;
  LOBYTE(v20[0]) = 0;
  sub_25F4F1F6C();
  sub_25F5021C8();
  if (v2)
  {
    v10 = sub_25F502258();
    (*(*(v10 - 8) + 8))(a1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    if (v23)
    {
      if (v23 == 1)
      {
        v21 = &type metadata for PreviewStructure.Key;
        v22 = v9;
        LOBYTE(v20[0]) = 1;
        sub_25F5026B8();
        sub_25F4F1FC0(&qword_27FD90D70, MEMORY[0x28220A618]);
        sub_25F5021C8();
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
        v13 = *(v12 + 48);
        __swift_destroy_boxed_opaque_existential_0(v20);
        v21 = &type metadata for PreviewStructure.Key;
        v22 = v9;
        LOBYTE(v20[0]) = 2;
        sub_25F5020E8();
        sub_25F4F1FC0(&qword_27FD90D18, MEMORY[0x277D40CA0]);
        sub_25F5021C8();
        v18 = sub_25F502258();
        (*(*(v18 - 8) + 8))(a1, v18);
        __swift_destroy_boxed_opaque_existential_0(v20);
        (*(*(v12 - 8) + 56))(v8, 0, 2, v12);
        return sub_25F4F2008(v8, a2);
      }

      else
      {
        v16 = sub_25F502258();
        (*(*(v16 - 8) + 8))(a1, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
        return (*(*(v17 - 8) + 56))(a2, 2, 2, v17);
      }
    }

    else
    {
      v14 = sub_25F502258();
      (*(*(v14 - 8) + 8))(a1, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
      return (*(*(v15 - 8) + 56))(a2, 1, 2, v15);
    }
  }
}

uint64_t _s17PreviewsOSSupport16PreviewStructureO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5020E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = type metadata accessor for PreviewStructure(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90E00, &qword_25F5059E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v40 - v19;
  v21 = &v40 + *(v18 + 56) - v19;
  sub_25F4EF04C(a1, &v40 - v19);
  sub_25F4EF04C(a2, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
  v23 = *(*(v22 - 8) + 48);
  v24 = v23(v20, 2, v22);
  if (!v24)
  {
    sub_25F4EF04C(v20, v15);
    v45 = *(v22 + 48);
    if (!v23(v21, 2, v22))
    {
      v28 = sub_25F5026B8();
      v43 = &v40;
      v44 = v28;
      v41 = *(v28 - 8);
      v29 = *(v41 + 64);
      MEMORY[0x28223BE20](v28);
      v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 32))(v31, v21);
      v33 = *(v5 + 32);
      v42 = v5;
      v34 = v45;
      v33(v11, &v45[v15], v4);
      v33(v9, &v34[v21], v4);
      v35 = v41;
      v45 = v31;
      v36 = MEMORY[0x25F8DEC00](v15, v31);
      v37 = *(v35 + 8);
      v37(v15, v44);
      if (v36)
      {
        v26 = sub_25F5020D8();
        v38 = *(v42 + 8);
        v38(v9, v4);
        v38(v11, v4);
        v37(v45, v44);
        sub_25F4F293C(v20);
        return v26 & 1;
      }

      v39 = *(v42 + 8);
      v39(v9, v4);
      v39(v11, v4);
      v37(v45, v44);
      sub_25F4F293C(v20);
      goto LABEL_10;
    }

    (*(v5 + 8))(&v45[v15], v4);
    v25 = sub_25F5026B8();
    (*(*(v25 - 8) + 8))(v15, v25);
    goto LABEL_9;
  }

  if (v24 != 1)
  {
    if (v23(v21, 2, v22) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_25F4D867C(v20, &qword_27FD90E00, &qword_25F5059E0);
LABEL_10:
    v26 = 0;
    return v26 & 1;
  }

  if (v23(v21, 2, v22) != 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  sub_25F4F293C(v20);
  v26 = 1;
  return v26 & 1;
}

unint64_t sub_25F4F1D5C()
{
  result = qword_27FD90D28;
  if (!qword_27FD90D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90D28);
  }

  return result;
}

unint64_t sub_25F4F1DB8()
{
  result = qword_27FD90D30;
  if (!qword_27FD90D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90D30);
  }

  return result;
}

unint64_t sub_25F4F1E0C()
{
  result = qword_27FD90D48;
  if (!qword_27FD90D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90D40, &qword_25F5052B0);
    sub_25F4F1FC0(&qword_27FD90D38, MEMORY[0x28220A608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90D48);
  }

  return result;
}

unint64_t sub_25F4F1EBC()
{
  result = qword_27FD90D50;
  if (!qword_27FD90D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90D50);
  }

  return result;
}

unint64_t sub_25F4F1F18()
{
  result = qword_27FD90D58;
  if (!qword_27FD90D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90D58);
  }

  return result;
}

unint64_t sub_25F4F1F6C()
{
  result = qword_27FD90D60;
  if (!qword_27FD90D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90D60);
  }

  return result;
}

uint64_t sub_25F4F1FC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F4F2008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewStructure(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4F2080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F501F08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D00, &qword_25F5052A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25F4F2190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F501F08();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D00, &qword_25F5052A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_25F4F2298()
{
  sub_25F501F08();
  if (v0 <= 0x3F)
  {
    sub_25F4F231C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F4F231C()
{
  if (!qword_27FD90D88)
  {
    sub_25F5020E8();
    v0 = sub_25F502958();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD90D88);
    }
  }
}

uint64_t sub_25F4F2388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F4F2414(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25F4F24A4()
{
  sub_25F4F24FC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_25F4F24FC()
{
  if (!qword_27FD90DA0)
  {
    sub_25F5026B8();
    sub_25F5020E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD90DA0);
    }
  }
}

unint64_t sub_25F4F25DC()
{
  result = qword_27FD90DA8;
  if (!qword_27FD90DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90DB0, "D7");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90DA8);
  }

  return result;
}

unint64_t sub_25F4F2644()
{
  result = qword_27FD90DB8;
  if (!qword_27FD90DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90DB8);
  }

  return result;
}

unint64_t sub_25F4F269C()
{
  result = qword_27FD90DC0;
  if (!qword_27FD90DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90DC0);
  }

  return result;
}

unint64_t sub_25F4F26F4()
{
  result = qword_27FD90DC8;
  if (!qword_27FD90DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90DC8);
  }

  return result;
}

unint64_t sub_25F4F274C()
{
  result = qword_27FD90DD0;
  if (!qword_27FD90DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90DD0);
  }

  return result;
}

unint64_t sub_25F4F27A4()
{
  result = qword_27FD90DD8;
  if (!qword_27FD90DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90DD8);
  }

  return result;
}

unint64_t sub_25F4F27FC()
{
  result = qword_27FD90DE0;
  if (!qword_27FD90DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90DE0);
  }

  return result;
}

unint64_t sub_25F4F2850()
{
  result = qword_27FD90DE8;
  if (!qword_27FD90DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90DE8);
  }

  return result;
}

uint64_t sub_25F4F28A4()
{
  v0 = sub_25F502A18();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4F28F0()
{
  v0 = sub_25F502A18();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4F293C(uint64_t a1)
{
  v2 = type metadata accessor for PreviewStructure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F4F29B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_25F502718();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_25F4F3E34();
  swift_getObjectType();
  sub_25F4E9838(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_25F4F2D0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_25F502718();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_25F4F3E34();
  ObjectType = swift_getObjectType();
  a4(a1, a2, a3, ObjectType);

  return swift_unknownObjectRelease();
}

void sub_25F4F2F78(__int128 *a1)
{
  sub_25F4EAD84();
  v27 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = *(a1 + 9);
  v23 = *(a1 + 8);
  v24 = swift_allocObject();
  v9 = a1[3];
  v24[3] = a1[2];
  v24[4] = v9;
  v24[5] = a1[4];
  v10 = a1[1];
  v24[1] = *a1;
  v24[2] = v10;
  v11 = swift_allocObject();
  v12 = a1[3];
  v11[3] = a1[2];
  v11[4] = v12;
  v11[5] = a1[4];
  v13 = a1[1];
  v11[1] = *a1;
  v11[2] = v13;
  v14 = swift_allocObject();
  v15 = a1[3];
  v14[3] = a1[2];
  v14[4] = v15;
  v14[5] = a1[4];
  v16 = a1[1];
  v14[1] = *a1;
  v14[2] = v16;
  sub_25F4EAEC8(&v27, aBlock);
  sub_25F4DFA0C(v2);
  sub_25F4DFA0C(v5);
  sub_25F4DFA0C(v6);
  sub_25F4DFA0C(v23);
  sub_25F4EAEC8(&v27, aBlock);
  sub_25F4DFA0C(v2);
  sub_25F4DFA0C(v5);
  sub_25F4DFA0C(v6);
  sub_25F4DFA0C(v23);
  sub_25F4EAEC8(&v27, aBlock);
  sub_25F4DFA0C(v2);
  sub_25F4DFA0C(v5);
  sub_25F4DFA0C(v6);
  sub_25F4DFA0C(v23);
  v17 = sub_25F4E8B54(sub_25F4F59F4, v24, sub_25F4EAE40, v11, sub_25F4EAEC0, v14);
  v18 = *(v25 + 32);
  v19 = swift_allocObject();
  *(v19 + 16) = v25;
  *(v19 + 24) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F4F5A3C;
  *(v20 + 24) = v19;
  aBlock[4] = sub_25F4D8F90;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F4D6D54;
  aBlock[3] = &block_descriptor_3;
  v21 = _Block_copy(aBlock);

  v22 = v17;

  [v18 configureConnection_];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    [v18 activate];
  }
}

uint64_t sub_25F4F32C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_25F4F6138;
  v7[3] = &block_descriptor_44;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_25F4F3394(void *a1)
{
  v2 = v1;
  v4 = sub_25F502718();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4F560C();
  sub_25F502398();
  sub_25F5026D8();
  sub_25F4DF418(v39, v36);
  v9 = a1;
  v10 = sub_25F5026F8();
  v11 = sub_25F502918();

  if (os_log_type_enabled(v10, v11))
  {
    v32 = v11;
    v33 = v5;
    v34 = v4;
    v35 = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543618;
    v15 = v37;
    v14 = v38;
    v16 = __swift_project_boxed_opaque_existential_1(v36, v37);
    v31[1] = v31;
    v17 = *(v15 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v16);
    v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20);
    v21 = *(*(v14 + 8) + 8);
    if (sub_25F502A38())
    {
      (*(v17 + 8))(v20, v15);
    }

    else
    {
      swift_allocError();
      (*(v17 + 32))(v22, v20, v15);
    }

    v23 = _swift_stdlib_bridgeErrorToNSError();
    __swift_destroy_boxed_opaque_existential_0(v36);
    *(v12 + 4) = v23;
    *v13 = v23;
    *(v12 + 12) = 2114;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v25;
    v13[1] = v25;
    _os_log_impl(&dword_25F4D4000, v10, v32, "%{public}@: %{public}@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90AF0, &qword_25F503F60);
    swift_arrayDestroy();
    MEMORY[0x25F8DF6E0](v13, -1, -1);
    MEMORY[0x25F8DF6E0](v12, -1, -1);

    (*(v33 + 8))(v8, v34);
    v2 = v35;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  v26 = [v2 replyHandler];
  if (v26)
  {
    v27 = v26;
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v28 = sub_25F5023E8();
    v29 = sub_25F501DE8();
    (v27)[2](v27, 0, v29);

    _Block_release(v27);
  }

  return __swift_destroy_boxed_opaque_existential_0(v39);
}

void sub_25F4F377C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24) > 6u)
  {
    *(a2 + 24);
  }

  v6 = sub_25F502778();

  v7 = UVShellConnectionInterface(v6);

  [a1 setInterface_];
  v8 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterfaceTarget_];
  v15 = sub_25F4F5A6C;
  v16 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_25F4F6138;
  v14 = &block_descriptor_38;
  v9 = _Block_copy(&v11);

  [a1 setInvalidationHandler_];
  _Block_release(v9);
  v15 = sub_25F4F5A74;
  v16 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_25F4F6138;
  v14 = &block_descriptor_41;
  v10 = _Block_copy(&v11);

  [a1 setActivationHandler_];
  _Block_release(v10);
}

uint64_t sub_25F4F3A24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_25F502338();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = a2;
  sub_25F502328();
  sub_25F4D8FF0(&unk_27FD90EC0, &qword_27FD903C0, &qword_25F504A40);
  sub_25F502308();
  return (*(v5 + 8))(v8, v4);
}

void sub_25F4F3B90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_25F4F3BF8(void *a1, uint64_t a2)
{
  v4 = sub_25F5025E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  sub_25F4D8FF0(qword_27FD90B80, &qword_27FD90330, &qword_25F503890);
  sub_25F5022E8();
  (*(v5 + 8))(v8, v4);
  v9 = a2 + *(*a2 + 136);
  return ClientRole.handleActivation(_:)(a1);
}

unint64_t sub_25F4F3DAC()
{
  sub_25F5029B8();

  v3 = *(v0 + 24);
  v1 = ShellService.description.getter();
  MEMORY[0x25F8DED60](v1);

  return 0xD000000000000015;
}

uint64_t sub_25F4F3E34()
{
  if ([*(v0 + 32) remoteTarget])
  {
    sub_25F502968();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90B00, qword_25F505AB0);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_25F4D867C(v5, &unk_27FD901C0, &qword_25F5037A8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90EA8, &unk_25F505AA0);
  sub_25F4D8FF0(&unk_27FD90EB0, &qword_27FD90EA8, &unk_25F505AA0);
  swift_allocError();
  *v2 = v0;
  swift_willThrow();
}

id sub_25F4F3F80(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_25F5025E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC17PreviewsOSSupport24ServiceHubPreviewService_invalidationHandle;
  v10 = sub_25F502448();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v1[v9] = sub_25F502438();
  *&v1[OBJC_IVAR____TtC17PreviewsOSSupport24ServiceHubPreviewService_connection] = a1;
  v18.receiver = v1;
  v18.super_class = ObjectType;

  v13 = objc_msgSendSuper2(&v18, sel_init);
  v17[5] = v13;
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD903C0, &qword_25F504A40);
  v17[4] = sub_25F4D8FF0(&qword_27FD903C8, &qword_27FD903C0, &qword_25F504A40);
  v17[0] = a1;

  v14 = v13;
  sub_25F5025F8();
  sub_25F4F5874(&qword_27FD90E48, v15, type metadata accessor for ServiceHubPreviewService);
  sub_25F5022A8();

  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return v14;
}

uint64_t sub_25F4F41F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[29] = a4;
  return MEMORY[0x2822009F8](sub_25F4F421C, 0, 0);
}

uint64_t sub_25F4F421C()
{
  v1 = *(*(v0 + 232) + OBJC_IVAR____TtC17PreviewsOSSupport24ServiceHubPreviewService_connection);
  *(v0 + 256) = v1;
  *(v0 + 16) = sub_25F4F3DAC();
  *(v0 + 24) = v2;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  sub_25F4F2F78((v0 + 16));

  *(v0 + 224) = v1;
  v3 = *(MEMORY[0x277D40CB8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD903C0, &qword_25F504A40);
  v6 = sub_25F4D8FF0(&qword_27FD90E60, &qword_27FD903C0, &qword_25F504A40);
  *v4 = v0;
  v4[1] = sub_25F4F4360;

  return MEMORY[0x2821A1860](v5, v6);
}

uint64_t sub_25F4F4360()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_25F4F45D4;
  }

  else
  {
    v3 = sub_25F4F4474;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F4F4474()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v0[12] = sub_25F4F3DAC();
  v0[13] = v4;
  v0[14] = sub_25F4F57B8;
  v0[15] = v2;
  v0[16] = sub_25F4F57BC;
  v0[17] = v2;
  v0[18] = sub_25F4F57EC;
  v0[19] = v2;
  v5 = swift_allocObject();
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v5[1] = *(v0 + 6);
  v5[2] = v6;
  v8 = *(v0 + 9);
  v5[3] = v7;
  v5[4] = v8;
  swift_retain_n();
  sub_25F4E4F4C((v0 + 12), (v0 + 20), &qword_27FD90E68, &unk_25F505A90);
  v3(sub_25F4F586C, v5);

  sub_25F4D867C((v0 + 12), &qword_27FD90E68, &unk_25F505A90);
  v9 = v0[1];

  return v9();
}

uint64_t sub_25F4F45EC(uint64_t a1, _OWORD *a2)
{
  v3 = sub_25F501FA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F501F28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4F4830();
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  v14 = a2[3];
  v16[2] = a2[2];
  v16[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90E68, &unk_25F505A90);
  sub_25F4D8FF0(&qword_27FD90E70, &qword_27FD90E68, &unk_25F505A90);
  sub_25F4F5874(&qword_27FD90E78, 255, MEMORY[0x277D40890]);
  sub_25F502078();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_25F4F4830()
{
  v2 = sub_25F502258();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = [v0 messageType];
  if (!v4)
  {
    sub_25F4F58BC();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }

  v5 = v4;
  sub_25F502788();

  v6 = [v0 payload];
  if (!v6 || (v17 = v6, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90990, &qword_25F5045C8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90998, &qword_25F5045D0), (swift_dynamicCast() & 1) == 0))
  {

    v10 = [v0 payload];
    if (v10)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      ObjectType = 0;
    }

    sub_25F4E4BC4();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = ObjectType;
    *(v13 + 32) = 0;
    return swift_willThrow();
  }

  v7 = [v0 replyHandler];
  if (!v7)
  {

    sub_25F4F58BC();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_25F4F5910();
  sub_25F4F5964();
  sub_25F502508();
  if (v1)
  {
  }

  else
  {
    sub_25F5021E8();
    sub_25F501F18();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_25F4E4C50;
    *(v16 + 24) = v9;
    return sub_25F501F48();
  }
}

uint64_t sub_25F4F4B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_25F4E4F4C(a3, v24 - v10, &unk_27FD90E50, &qword_25F504560);
  v12 = sub_25F502818();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F4D867C(v11, &unk_27FD90E50, &qword_25F504560);
  }

  else
  {
    sub_25F502808();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25F5027F8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25F5027A8() + 32;

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

      sub_25F4D867C(a3, &unk_27FD90E50, &qword_25F504560);

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

  sub_25F4D867C(a3, &unk_27FD90E50, &qword_25F504560);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

unint64_t sub_25F4F5178()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_25F4F51B0(uint64_t a1)
{
  v2 = sub_25F4F6058();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F4F51EC(uint64_t a1)
{
  v2 = sub_25F4F6058();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F4F5244(uint64_t a1)
{
  v2 = sub_25F4F560C();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F4F5280(uint64_t a1)
{
  v2 = sub_25F4F560C();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F4F52BC()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_25F4E4F4C(v0, v6, &unk_27FD901C0, &qword_25F5037A8);
  v1 = v6[3];
  sub_25F4D867C(v6, &unk_27FD901C0, &qword_25F5037A8);
  if (v1)
  {
    v2 = 0x64696C61766E69;
  }

  else
  {
    v2 = 0x676E697373696DLL;
  }

  MEMORY[0x25F8DED60](v2, 0xE700000000000000);

  MEMORY[0x25F8DED60](32, 0xE100000000000000);
  if (*(v0 + 32))
  {
    v3 = 0x796C706572;
  }

  else
  {
    v3 = 0x6567617373656DLL;
  }

  if (*(v0 + 32))
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  MEMORY[0x25F8DED60](v3, v4);

  MEMORY[0x25F8DED60](0x64616F6C79617020, 0xE800000000000000);
  return v7;
}

uint64_t sub_25F4F53E0()
{
  sub_25F4E4F4C(v0, &v3, &unk_27FD901C0, &qword_25F5037A8);
  if (v4)
  {
    sub_25F4F60AC(&v3, v2);
    sub_25F5029B8();
    MEMORY[0x25F8DED60](0xD000000000000028, 0x800000025F507890);
    sub_25F5029D8();
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  return 0;
}

uint64_t sub_25F4F54C0(uint64_t a1)
{
  v2 = sub_25F4F60BC();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F4F54FC(uint64_t a1)
{
  v2 = sub_25F4F60BC();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F4F5538(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_25F4F5598(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_25F4F560C()
{
  result = qword_27FD90E38;
  if (!qword_27FD90E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90E38);
  }

  return result;
}

uint64_t sub_25F4F5660()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F4F56A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F4F56F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F4E4960;

  return sub_25F4F41F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25F4F581C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25F4F5874(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_25F4F58BC()
{
  result = qword_27FD90E80;
  if (!qword_27FD90E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90E80);
  }

  return result;
}

unint64_t sub_25F4F5910()
{
  result = qword_27FD90E90;
  if (!qword_27FD90E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90E90);
  }

  return result;
}

unint64_t sub_25F4F5964()
{
  result = qword_27FD90E98;
  if (!qword_27FD90E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90E98);
  }

  return result;
}

uint64_t sub_25F4F59B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F4F59FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_25F4F5A7C()
{
  v1 = sub_25F502258();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25F501EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = 2;
  (*(v7 + 104))(v10, *MEMORY[0x277D40F58], v6);
  _s17PreviewsOSSupport15ShellConnectionCA2A10ClientRoleVRszrlE16createByEndpoint_3for13clientContextACyAEGSo09BSServicedI0C_AA0C7ServiceO0A12FoundationOS12PropertyListVtKFZfA1__0();
  v11 = sub_25F4D82A4(&v16, v10, v5);
  if (v0)
  {
    (*(v2 + 8))(v5, v1);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v13 = v11;
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v14 = objc_allocWithZone(type metadata accessor for ServiceHubPreviewService());
    return sub_25F4F3F80(v13);
  }
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_25F4F5CCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F4F5D28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_25F4F5D98()
{
  result = qword_27FD90ED0;
  if (!qword_27FD90ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90ED0);
  }

  return result;
}

unint64_t sub_25F4F5DF0()
{
  result = qword_27FD90ED8;
  if (!qword_27FD90ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90ED8);
  }

  return result;
}

unint64_t sub_25F4F5E48()
{
  result = qword_27FD90EE0;
  if (!qword_27FD90EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90EE0);
  }

  return result;
}

unint64_t sub_25F4F5EA4()
{
  result = qword_27FD90EE8;
  if (!qword_27FD90EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90EE8);
  }

  return result;
}

unint64_t sub_25F4F5EFC()
{
  result = qword_27FD90EF0;
  if (!qword_27FD90EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90EF0);
  }

  return result;
}

unint64_t sub_25F4F5F54()
{
  result = qword_27FD90EF8;
  if (!qword_27FD90EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90EF8);
  }

  return result;
}

unint64_t sub_25F4F5FAC()
{
  result = qword_27FD90F00;
  if (!qword_27FD90F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90F00);
  }

  return result;
}

unint64_t sub_25F4F6004()
{
  result = qword_27FD90F08;
  if (!qword_27FD90F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90F08);
  }

  return result;
}

unint64_t sub_25F4F6058()
{
  result = qword_27FD90F10;
  if (!qword_27FD90F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90F10);
  }

  return result;
}

_OWORD *sub_25F4F60AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25F4F60BC()
{
  result = qword_27FD90F18;
  if (!qword_27FD90F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90F18);
  }

  return result;
}

uint64_t sub_25F4F613C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ission";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000017;
    }

    if (v3 == 2)
    {
      v4 = "createPreviewSceneAgent";
    }

    else
    {
      v4 = "connectHostToAgentPipe";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "createPreviewNonUIAgent";
    }

    else
    {
      v4 = "ission";
    }

    v5 = 0xD000000000000017;
  }

  v6 = "createPreviewSceneAgent";
  v7 = 0xD000000000000016;
  if (a2 != 2)
  {
    v7 = 0xD000000000000017;
    v6 = "connectHostToAgentPipe";
  }

  if (a2)
  {
    v2 = "createPreviewNonUIAgent";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25F502A68();
  }

  return v10 & 1;
}

uint64_t sub_25F4F6244(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656369767265;
  v3 = 0x5377656976657270;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4 == 2)
    {
      v6 = 0x800000025F506560;
    }

    else
    {
      v6 = 0x800000025F5066E0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x4C525579706F63;
    }

    else
    {
      v5 = 0x5377656976657270;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEE00656369767265;
    }
  }

  if (a2 > 1u)
  {
    v2 = 0x800000025F506560;
    v3 = 0xD000000000000016;
    v8 = 0xD000000000000010;
    v7 = 0x800000025F5066E0;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xE700000000000000;
    v8 = 0x4C525579706F63;
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v3;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25F502A68();
  }

  return v12 & 1;
}

uint64_t sub_25F4F639C()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F6478()
{
  *v0;
  *v0;
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4F6540()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F6618@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F4F7F54();
  *a2 = result;
  return result;
}

void sub_25F4F6648(unint64_t *a1@<X8>)
{
  v2 = 0xEE00656369767265;
  v3 = 0x5377656976657270;
  v4 = 0x800000025F506560;
  v5 = 0xD000000000000016;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000025F5066E0;
  }

  if (*v1)
  {
    v3 = 0x4C525579706F63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25F4F66E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4F7F00();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4F67A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6567617373656DLL;
  if (v2 != 1)
  {
    v3 = 0x74736575716572;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x696D697263736964;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEC000000746E616ELL;
  }

  v6 = 0x6567617373656DLL;
  if (*a2 != 1)
  {
    v6 = 0x74736575716572;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xEC000000746E616ELL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F502A68();
  }

  return v9 & 1;
}

uint64_t sub_25F4F68AC()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F6958()
{
  *v0;
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4F69F0()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F6A98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F4F7FA0();
  *a2 = result;
  return result;
}

void sub_25F4F6AC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x6567617373656DLL;
  if (v2 != 1)
  {
    v4 = 0x74736575716572;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_25F4F6B30()
{
  v1 = 0x6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x74736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t DaemonToShell.TwoWayMessage.propertyListValue.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90F20, &qword_25F505FA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v43 - v4;
  v53 = sub_25F502038();
  v51 = *(v53 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90F28, &qword_25F505FA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v43 - v9;
  v49 = sub_25F5020C8();
  v47 = *(v49 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90F30, &qword_25F505FB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - v14;
  v16 = sub_25F501EF8();
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v16);
  v44 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90F38, &qword_25F505FB8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v43 - v21;
  v23 = sub_25F501F28();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DaemonToShell.TwoWayMessage();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1;
  v32 = sub_25F4F7528();
  sub_25F4F757C();
  sub_25F502238();
  sub_25F4F75D0(v1, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v35 = v46;
      v34 = v47;
      v36 = v49;
      (*(v47 + 32))(v46, v31, v49);
      v37 = v48;
      (*(v34 + 16))(v48, v35, v36);
      (*(v34 + 56))(v37, 0, 1, v36);
      v57 = &type metadata for DaemonToShell.TwoWayMessage.Key;
      v58 = v32;
      LOBYTE(v56[0]) = 2;
      sub_25F4F7634(&qword_27FD90F58, MEMORY[0x277D40C18]);
      sub_25F5021B8();
      v38 = &qword_27FD90F28;
      v39 = &qword_25F505FA8;
    }

    else
    {
      v35 = v50;
      v34 = v51;
      v36 = v53;
      (*(v51 + 32))(v50, v31, v53);
      v37 = v52;
      (*(v34 + 16))(v52, v35, v36);
      (*(v34 + 56))(v37, 0, 1, v36);
      v57 = &type metadata for DaemonToShell.TwoWayMessage.Key;
      v58 = v32;
      LOBYTE(v56[0]) = 2;
      sub_25F4F7634(&qword_27FD90F50, MEMORY[0x277D409C8]);
      sub_25F5021B8();
      v38 = &qword_27FD90F20;
      v39 = &qword_25F505FA0;
    }

    sub_25F4D867C(v37, v38, v39);
    (*(v34 + 8))(v35, v36);
  }

  else if (EnumCaseMultiPayload)
  {
    v41 = v44;
    v40 = v45;
    (*(v45 + 32))(v44, v31, v16);
    (*(v40 + 16))(v15, v41, v16);
    (*(v40 + 56))(v15, 0, 1, v16);
    v57 = &type metadata for DaemonToShell.TwoWayMessage.Key;
    v58 = v32;
    LOBYTE(v56[0]) = 2;
    sub_25F4F7634(&qword_27FD90F60, MEMORY[0x277D40800]);
    sub_25F5021B8();
    sub_25F4D867C(v15, &qword_27FD90F30, &qword_25F505FB0);
    (*(v40 + 8))(v41, v16);
  }

  else
  {
    (*(v24 + 32))(v27, v31, v23);
    (*(v24 + 16))(v22, v27, v23);
    (*(v24 + 56))(v22, 0, 1, v23);
    v57 = &type metadata for DaemonToShell.TwoWayMessage.Key;
    v58 = v32;
    LOBYTE(v56[0]) = 1;
    sub_25F4F7634(&qword_27FD90E78, MEMORY[0x277D40890]);
    sub_25F5021B8();
    sub_25F4D867C(v22, &qword_27FD90F38, &qword_25F505FB8);
    (*(v24 + 8))(v27, v23);
  }

  return __swift_destroy_boxed_opaque_existential_0(v56);
}

uint64_t type metadata accessor for DaemonToShell.TwoWayMessage()
{
  result = qword_27FD90F78;
  if (!qword_27FD90F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F4F73EC(_BYTE *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for DaemonToShell.TwoWayMessage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F4F75D0(a3, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = sub_25F5020C8();
      v12 = 2;
    }

    else
    {
      v11 = sub_25F502038();
      v12 = 3;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v11 = sub_25F501EF8();
    v12 = 1;
  }

  else
  {
    v11 = sub_25F501F28();
    v12 = 0;
  }

  result = (*(*(v11 - 8) + 8))(v9);
  *a2 = v12;
  return result;
}

unint64_t sub_25F4F7528()
{
  result = qword_27FD90F40;
  if (!qword_27FD90F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90F40);
  }

  return result;
}

unint64_t sub_25F4F757C()
{
  result = qword_27FD90F48;
  if (!qword_27FD90F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90F48);
  }

  return result;
}

uint64_t sub_25F4F75D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonToShell.TwoWayMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4F7634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DaemonToShell.TwoWayMessage.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for DaemonToShell.TwoWayMessage();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v24 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v27 = &type metadata for DaemonToShell.TwoWayMessage.Key;
  v17 = sub_25F4F7528();
  v28 = v17;
  LOBYTE(v26[0]) = 0;
  sub_25F4F757C();
  sub_25F5021C8();
  if (v2)
  {
    v18 = sub_25F502258();
    (*(*(v18 - 8) + 8))(a1, v18);
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v24[0] = v14;
    v24[1] = v4;
    v20 = v25;
    __swift_destroy_boxed_opaque_existential_0(v26);
    if (v29 > 1u)
    {
      v27 = &type metadata for DaemonToShell.TwoWayMessage.Key;
      v28 = v17;
      LOBYTE(v26[0]) = 2;
      if (v29 == 2)
      {
        sub_25F5020C8();
        sub_25F4F7634(&qword_27FD90F58, MEMORY[0x277D40C18]);
        sub_25F5021C8();
        v22 = sub_25F502258();
        (*(*(v22 - 8) + 8))(a1, v22);
        __swift_destroy_boxed_opaque_existential_0(v26);
        swift_storeEnumTagMultiPayload();
        v16 = v11;
      }

      else
      {
        sub_25F502038();
        sub_25F4F7634(&qword_27FD90F50, MEMORY[0x277D409C8]);
        sub_25F5021C8();
        v23 = sub_25F502258();
        (*(*(v23 - 8) + 8))(a1, v23);
        __swift_destroy_boxed_opaque_existential_0(v26);
        swift_storeEnumTagMultiPayload();
        v16 = v8;
      }
    }

    else
    {
      v27 = &type metadata for DaemonToShell.TwoWayMessage.Key;
      v28 = v17;
      LOBYTE(v26[0]) = 1;
      sub_25F501F28();
      sub_25F4F7634(&qword_27FD90E78, MEMORY[0x277D40890]);
      sub_25F5021C8();
      v21 = sub_25F502258();
      (*(*(v21 - 8) + 8))(a1, v21);
      __swift_destroy_boxed_opaque_existential_0(v26);
      swift_storeEnumTagMultiPayload();
    }

    return sub_25F4F7B40(v16, v20);
  }
}

uint64_t sub_25F4F7B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonToShell.TwoWayMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F4F7BA4(uint64_t a1)
{
  result = sub_25F4F7BCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F4F7BCC()
{
  result = qword_27FD90F68;
  if (!qword_27FD90F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90F68);
  }

  return result;
}

unint64_t sub_25F4F7C20(uint64_t a1)
{
  result = sub_25F4F7C48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F4F7C48()
{
  result = qword_27FD90F70;
  if (!qword_27FD90F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90F70);
  }

  return result;
}

void sub_25F4F7CC8()
{
  sub_25F4F7DD4(319, &qword_27FD90F88, MEMORY[0x277D40890]);
  if (v0 <= 0x3F)
  {
    sub_25F4F7DD4(319, &qword_27FD90F90, MEMORY[0x277D40800]);
    if (v1 <= 0x3F)
    {
      sub_25F4F7DD4(319, &qword_27FD90F98, MEMORY[0x277D40C18]);
      if (v2 <= 0x3F)
      {
        sub_25F4F7DD4(319, &qword_27FD90FA0, MEMORY[0x277D409C8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_25F4F7DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25F4F7E54()
{
  result = qword_27FD90FA8;
  if (!qword_27FD90FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90FA8);
  }

  return result;
}

unint64_t sub_25F4F7EAC()
{
  result = qword_27FD90FB0;
  if (!qword_27FD90FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90FB0);
  }

  return result;
}

unint64_t sub_25F4F7F00()
{
  result = qword_27FD90FB8;
  if (!qword_27FD90FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90FB8);
  }

  return result;
}

uint64_t sub_25F4F7F54()
{
  v0 = sub_25F502A18();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4F7FA0()
{
  v0 = sub_25F502A18();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4F7FEC()
{
  type metadata accessor for TransactionManager();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90FD8, &unk_25F506390);
  result = sub_25F5026C8();
  *(v0 + 16) = result;
  qword_27FD90FC0 = v0;
  return result;
}

uint64_t static TransactionManager.shared.getter()
{
  if (qword_27FD90168 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25F4F80B8()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x25F8DED60](40, 0xE100000000000000);
  v2 = sub_25F502A28();
  MEMORY[0x25F8DED60](v2);

  MEMORY[0x25F8DED60](41, 0xE100000000000000);
  return v4;
}

uint64_t TransactionManager.currentState.getter()
{
  v1 = sub_25F5025E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = *(v0 + 16);

  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90FC8, &qword_25F5062A0);
  sub_25F502258();
  sub_25F4F82FC();
  sub_25F502518();
  (*(v2 + 8))(v5, v1);
}

uint64_t sub_25F4F82B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  _s17PreviewsOSSupport15ShellConnectionCA2A10ClientRoleVRszrlE16createByEndpoint_3for13clientContextACyAEGSo09BSServicedI0C_AA0C7ServiceO0A12FoundationOS12PropertyListVtKFZfA1__0();
  return sub_25F4F840C(v3, a2);
}

unint64_t sub_25F4F82FC()
{
  result = qword_27FD90FD0;
  if (!qword_27FD90FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90FC8, &qword_25F5062A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90FD0);
  }

  return result;
}

uint64_t sub_25F4F8360(void *a1, void *a2, void *a3)
{
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[5];
  *a1 = *a3;
  a1[1] = v4;
  v10 = v5;

  MEMORY[0x25F8DED60](40, 0xE100000000000000);
  v8 = sub_25F502A28();
  MEMORY[0x25F8DED60](v8);

  result = MEMORY[0x25F8DED60](41, 0xE100000000000000);
  *a2 = v10;
  a2[1] = v6;
  return result;
}

uint64_t sub_25F4F840C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v32 = sub_25F502258();
  v3 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v29 = (v4 + 8);
  v33 = a1;

  for (i = 0; v9; result = )
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(v33 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(v33 + 56) + 32 * v15);
    v20 = *v19;
    v21 = v19[1];
    v23 = v19[2];
    v22 = v19[3];
    MEMORY[0x28223BE20](result);
    *(&v28 - 6) = v24;
    *(&v28 - 5) = v18;
    *(&v28 - 4) = v25;
    *(&v28 - 3) = v21;
    *(&v28 - 2) = v23;
    *(&v28 - 1) = v26;

    swift_unknownObjectRetain();
    v27 = v31;
    sub_25F502238();
    sub_25F5021D8();
    (*v29)(v27, v32);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F4F8660(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = )
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = (*(a1 + 56) + 32 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[3];
    v18 = v12[2];
    v19 = *v11;
    v20 = v11[1];
    swift_bridgeObjectRetain_n();

    swift_unknownObjectRetain();
    MEMORY[0x25F8DED60](8250, 0xE200000000000000);

    MEMORY[0x25F8DED60](40, 0xE100000000000000);
    v16 = sub_25F502A28();
    MEMORY[0x25F8DED60](v16);

    MEMORY[0x25F8DED60](41, 0xE100000000000000);
    MEMORY[0x25F8DED60](v13, v14);

    MEMORY[0x25F8DED60](10, 0xE100000000000000);
    MEMORY[0x25F8DED60](v19, v20);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t TransactionManager.debugDescription.getter()
{
  v1 = sub_25F5025E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = *(v0 + 16);

  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90FC8, &qword_25F5062A0);
  sub_25F4F82FC();
  sub_25F502518();
  (*(v2 + 8))(v5, v1);

  return v7[2];
}

uint64_t sub_25F4F89A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_25F4F8660(*a1);
  *a2 = 0xD000000000000014;
  a2[1] = 0x800000025F5079F0;
  return result;
}

uint64_t TransactionManager.takeTransaction(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = sub_25F5025E8();
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F502718();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F5026D8();

  v14 = sub_25F5026F8();
  v15 = sub_25F502908();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_25F4DE2EC(a1, a2, &v26);
    _os_log_impl(&dword_25F4D4000, v14, v15, "Taking transaction for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25F8DF6E0](v17, -1, -1);
    MEMORY[0x25F8DF6E0](v16, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v18 = v24;
  v26 = *(v24 + 16);

  v19 = sub_25F5025F8();
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90FC8, &qword_25F5062A0);
  sub_25F4F82FC();
  sub_25F502528();
  (*(v22 + 8))(v8, v23);

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v18;

  return sub_25F502318();
}

uint64_t sub_25F4F8D90(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25F502718();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v49[-v13];
  v15 = *a1;
  v16 = (*a1)[2];
  v57 = v8;
  if (v16 && (result = sub_25F5018F8(a2, a3), (v18 & 1) != 0))
  {
    v53 = v7;
    v19 = v15[7] + 32 * result;
    v20 = *(v19 + 24);
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    else
    {
      v52 = v3;
      v22 = a2;
      v23 = *v19;
      v24 = *(v19 + 8);
      v25 = *(v19 + 16);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();

      v26 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *a1;
      sub_25F4FE3B4(v23, v24, v25, v21, v22, a3, isUniquelyReferenced_nonNull_native);

      *a1 = v59;
      sub_25F5026D8();
      v28 = sub_25F5026F8();
      v29 = sub_25F502908();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v61 = v56;
        *v30 = 136315138;
        v59 = v23;
        v60 = v24;
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        MEMORY[0x25F8DED60](40, 0xE100000000000000);
        v58 = v21;
        v31 = sub_25F502A28();
        MEMORY[0x25F8DED60](v31);

        MEMORY[0x25F8DED60](41, 0xE100000000000000);
        swift_unknownObjectRelease();

        v32 = sub_25F4DE2EC(v59, v60, &v61);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_25F4D4000, v28, v29, "Transaction now %s", v30, 0xCu);
        v33 = v56;
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x25F8DF6E0](v33, -1, -1);
        MEMORY[0x25F8DF6E0](v30, -1, -1);
      }

      (*(v57 + 8))(v12, v53);
      swift_unknownObjectRelease();
    }
  }

  else
  {

    v54 = a2;
    v34 = sub_25F4F9CE8(a2, a3);
    v55 = v35;
    v56 = v34;
    v37 = v36;
    v39 = v38;
    sub_25F5026D8();

    swift_unknownObjectRetain();
    v40 = sub_25F5026F8();
    v41 = sub_25F502908();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v52 = v3;
      v43 = v42;
      v51 = swift_slowAlloc();
      v61 = v51;
      *v43 = 136315138;
      v59 = v56;
      v60 = v37;
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v50 = v41;
      MEMORY[0x25F8DED60](40, 0xE100000000000000);
      v58 = v55;
      v44 = sub_25F502A28();
      v53 = v7;
      MEMORY[0x25F8DED60](v44);

      MEMORY[0x25F8DED60](41, 0xE100000000000000);
      swift_unknownObjectRelease();

      v45 = sub_25F4DE2EC(v59, v60, &v61);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_25F4D4000, v40, v50, "Transaction now %s", v43, 0xCu);
      v46 = v51;
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x25F8DF6E0](v46, -1, -1);
      MEMORY[0x25F8DF6E0](v43, -1, -1);

      (*(v57 + 8))(v14, v53);
    }

    else
    {

      (*(v57 + 8))(v14, v7);
    }

    swift_unknownObjectRetain();
    v47 = *a1;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v59 = *a1;
    sub_25F4FE3B4(v56, v37, v39, v55, v54, a3, v48);
    swift_unknownObjectRelease();

    *a1 = v59;
  }

  return result;
}

uint64_t sub_25F4F9304(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v29 = a1;
  v5 = sub_25F5025E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F502718();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F5026D8();

  v15 = sub_25F5026F8();
  v16 = sub_25F502908();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = v6;
    v20 = a3;
    v21 = v19;
    v30 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25F4DE2EC(v29, a2, &v30);
    _os_log_impl(&dword_25F4D4000, v15, v16, "Cancelling transaction for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v22 = v21;
    a3 = v20;
    v6 = v27;
    MEMORY[0x25F8DF6E0](v22, -1, -1);
    v23 = v18;
    v5 = v28;
    MEMORY[0x25F8DF6E0](v23, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v30 = *(a3 + 16);

  v24 = sub_25F5025F8();
  MEMORY[0x28223BE20](v24);
  *(&v26 - 2) = v29;
  *(&v26 - 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90FC8, &qword_25F5062A0);
  sub_25F4F82FC();
  sub_25F502528();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_25F4F9628()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F4F9674(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F502718();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (*(*a1 + 16))
  {
    result = sub_25F5018F8(a2, a3);
    if (v13)
    {
      v14 = (*(v12 + 56) + 32 * result);
      v15 = v14[3];
      v16 = v15 - 1;
      if (__OFSUB__(v15, 1))
      {
        __break(1u);
      }

      else
      {
        v43 = a3;
        v45 = a2;
        v18 = *v14;
        v17 = v14[1];
        v19 = v14[2];

        swift_unknownObjectRetain();
        sub_25F5026D8();
        v20 = sub_25F5026F8();
        v41 = sub_25F502908();
        v21 = os_log_type_enabled(v20, v41);
        v46 = v19;
        v44 = v17;
        v42 = v18;
        if (v21)
        {
          v22 = swift_slowAlloc();
          v39 = v7;
          v23 = v22;
          v40 = swift_slowAlloc();
          v50 = v40;
          *v23 = 136315138;
          v48 = v18;
          v49 = v17;
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain();
          v38 = v20;
          MEMORY[0x25F8DED60](40, 0xE100000000000000);
          v47 = v16;
          v24 = sub_25F502A28();
          MEMORY[0x25F8DED60](v24);

          MEMORY[0x25F8DED60](41, 0xE100000000000000);
          swift_unknownObjectRelease();

          v25 = sub_25F4DE2EC(v48, v49, &v50);

          *(v23 + 4) = v25;
          v26 = v38;
          _os_log_impl(&dword_25F4D4000, v38, v41, "Transaction now %s", v23, 0xCu);
          v27 = v40;
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x25F8DF6E0](v27, -1, -1);
          MEMORY[0x25F8DF6E0](v23, -1, -1);

          (*(v39 + 8))(v11, v6);
        }

        else
        {

          (*(v7 + 8))(v11, v6);
        }

        v28 = v45;
        if (v16 < 1)
        {
          v35 = sub_25F4FC89C(v45, v43);
          sub_25F4F9CA4(v35, v36);
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = v16;
          v30 = v44;

          v31 = v46;
          swift_unknownObjectRetain();
          v32 = v43;

          v33 = *a1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = *a1;
          sub_25F4FE3B4(v42, v30, v31, v29, v28, v32, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();

          *a1 = v48;
        }
      }
    }
  }

  return result;
}

uint64_t TransactionManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TransactionManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F4F9A3C()
{
  v1 = sub_25F5025E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = *(*v0 + 16);

  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90FC8, &qword_25F5062A0);
  sub_25F4F82FC();
  sub_25F502518();
  (*(v2 + 8))(v5, v1);

  return v7[2];
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F4F9BF0(uint64_t a1, int a2)
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

uint64_t sub_25F4F9C38(uint64_t result, int a2, int a3)
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

uint64_t sub_25F4F9CA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25F4F9CE8(uint64_t a1, uint64_t a2)
{

  sub_25F5029B8();

  MEMORY[0x25F8DED60](a1, a2);

  sub_25F5027A8();

  v4 = os_transaction_create();

  if (v4)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F4F9DB8(void *a1, void *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v6 = *(v2 + 16);
  v7 = v3;
  v8 = *(v2 + 40);
  v9 = v4;
  return sub_25F4F8360(a1, a2, &v6);
}

void sub_25F4F9DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_25F4FE27C(a1, a2, a3 & 0xFFFFFFFFFFLL, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
  }

  else
  {
    v10 = *v3;
    v11 = sub_25F501880(a3 & 0xFFFFFFFFFFLL);
    if (v12)
    {
      v13 = v11;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v18 = *v4;
      if (!v15)
      {
        sub_25F4FEAD8();
        v16 = v18;
      }

      sub_25F4FD9EC(v13, v16);
      *v4 = v16;
    }
  }
}

uint64_t sub_25F4F9ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910E8, &qword_25F5064A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_25F502168();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_25F4D867C(a1, &qword_27FD910E8, &qword_25F5064A8);
    sub_25F4FC9F8(a2, a3, v10);

    return sub_25F4D867C(v10, &qword_27FD910E8, &qword_25F5064A8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_25F4FE6BC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_25F4FA0A8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v6 + 8;
  v19[2] = v6 + 16;
  v21 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v6 + 16))(v9, *(v21 + 48) + *(v6 + 72) * (v18 | (v17 << 6)), v5);
    v20(v9);
    result = (*(v6 + 8))(v9, v5);
    if (v3)
    {
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

char *sub_25F4FA27C()
{
  v0 = objc_allocWithZone(type metadata accessor for CrashReportListener());
  result = sub_25F4FA314(&unk_287185A30);
  qword_27FD90FE0 = result;
  return result;
}

id static CrashReportListener.default.getter()
{
  if (qword_27FD90170 != -1)
  {
    swift_once();
  }

  v1 = qword_27FD90FE0;

  return v1;
}

char *sub_25F4FA314(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC17PreviewsOSSupport19CrashReportListener_state;
  v5 = MEMORY[0x277D84F90];
  v17 = 0;
  v18 = sub_25F50097C(MEMORY[0x277D84F90]);
  v19 = sub_25F500B58(v5);
  v20 = sub_25F500C6C(v5);
  *&v1[v4] = sub_25F5026C8();
  *&v1[OBJC_IVAR____TtC17PreviewsOSSupport19CrashReportListener_types] = a1;
  v6 = type metadata accessor for CrashReportListener.ObserverProxy();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCC17PreviewsOSSupport19CrashReportListener13ObserverProxy_diagnosticsLogHandler];
  *v8 = nullsub_1;
  *(v8 + 1) = 0;
  v16.receiver = v7;
  v16.super_class = v6;
  *&v1[OBJC_IVAR____TtC17PreviewsOSSupport19CrashReportListener_observerProxy] = objc_msgSendSuper2(&v16, sel_init);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v15, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC17PreviewsOSSupport19CrashReportListener_observerProxy];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v10 + OBJC_IVAR____TtCC17PreviewsOSSupport19CrashReportListener13ObserverProxy_diagnosticsLogHandler);
  v13 = *(v10 + OBJC_IVAR____TtCC17PreviewsOSSupport19CrashReportListener13ObserverProxy_diagnosticsLogHandler + 8);
  *v12 = sub_25F500DC8;
  v12[1] = v11;

  return v9;
}

void sub_25F4FA470()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25F500DD0();
  }
}

Swift::Void __swiftcall CrashReportListener.startListeningIfNeeded()()
{
  v1 = v0;
  v2 = sub_25F5025E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = *(v0 + OBJC_IVAR____TtC17PreviewsOSSupport19CrashReportListener_state);

  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91008, &qword_25F5063A0);
  sub_25F4D8FF0(&qword_27FD91010, &qword_27FD91008, &qword_25F5063A0);
  sub_25F502528();
  (*(v3 + 8))(v6, v2);

  if (v17 == 1)
  {
    if (qword_27FD90178 != -1)
    {
      swift_once();
    }

    v7 = sub_25F502718();
    __swift_project_value_buffer(v7, qword_27FD90FE8);
    v8 = sub_25F5026F8();
    v9 = sub_25F502928();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25F4D4000, v8, v9, "Request to start monitoring", v10, 2u);
      MEMORY[0x25F8DF6E0](v10, -1, -1);
    }

    v11 = [objc_opt_self() sharedClient];
    v12 = *(v1 + OBJC_IVAR____TtC17PreviewsOSSupport19CrashReportListener_observerProxy);
    v13 = *(v1 + OBJC_IVAR____TtC17PreviewsOSSupport19CrashReportListener_types);
    v14 = v12;
    v15 = sub_25F5027E8();
    [v11 addObserver:v14 forTypes:v15];
  }
}

_BYTE *sub_25F4FA7AC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result)
  {
    *a2 = 0;
  }

  else
  {
    *result = 1;
    *a2 = 1;
  }

  return result;
}

uint64_t sub_25F4FA7CC@<X0>(uint64_t a1@<X8>)
{

  sub_25F502128();
  v2 = sub_25F502168();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_25F4FA9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a3)
  {
    if (*(a4 + 16))
    {
      v8 = sub_25F5018F8(a1, a2);
      if (v9)
      {
        v10 = v8;
        v11 = *(a4 + 56);
        v12 = sub_25F502168();
        v29 = *(v12 - 8);
        (*(v29 + 16))(a6, v11 + *(v29 + 72) * v10, v12);
LABEL_10:
        v23 = *(v29 + 56);
        v24 = a6;
        v25 = 0;
        v26 = v12;
        goto LABEL_13;
      }
    }
  }

  else if (*(a5 + 16))
  {
    v14 = sub_25F5019F8(a1);
    if (v15)
    {
      if (*(a4 + 16))
      {
        v16 = (*(a5 + 56) + 16 * v14);
        v17 = *v16;
        v18 = v16[1];

        v19 = sub_25F5018F8(v17, v18);
        if (v20)
        {
          v21 = v19;
          v22 = *(a4 + 56);
          v12 = sub_25F502168();
          v29 = *(v12 - 8);
          (*(v29 + 16))(a6, v22 + *(v29 + 72) * v21, v12);

          goto LABEL_10;
        }
      }
    }
  }

  v27 = sub_25F502168();
  v23 = *(*(v27 - 8) + 56);
  v26 = v27;
  v24 = a6;
  v25 = 1;
LABEL_13:

  return v23(v24, v25, 1, v26);
}

uint64_t sub_25F4FABC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_25F4FF34C(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F4FADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910E8, &qword_25F5064A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v45 - v7;
  v8 = sub_25F501E88();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v45 - v12;
  v13 = sub_25F502168();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = a2;
  v22 = sub_25F502148();
  v52 = a1;
  v24 = *(a1 + 8);
  if (*(v24 + 16))
  {
    v47 = v8;
    v46 = sub_25F5018F8(v22, v23);
    v26 = v25;

    v27 = v21;
    if (v26)
    {
      (*(v14 + 16))(v18, *(v24 + 56) + *(v14 + 72) * v46, v13);
      (*(v14 + 32))(v20, v18, v13);
      v28 = v48;
      sub_25F502158();
      v29 = v49;
      sub_25F502158();
      LODWORD(v46) = sub_25F501E68();
      v30 = *(v50 + 8);
      v31 = v29;
      v32 = v47;
      v30(v31, v47);
      v30(v28, v32);
      if ((v46 & 1) == 0)
      {
        (*(v14 + 8))(v20, v13);
        result = MEMORY[0x277D84FA0];
        goto LABEL_7;
      }

      v33 = sub_25F502138();
      sub_25F4FC964(v33);

      (*(v14 + 8))(v20, v13);
    }
  }

  else
  {

    v27 = v21;
  }

  v34 = sub_25F502148();
  v36 = v35;
  v37 = v51;
  (*(v14 + 16))(v51, v27, v13);
  (*(v14 + 56))(v37, 0, 1, v13);
  sub_25F4F9ED0(v37, v34, v36);
  LODWORD(v34) = sub_25F502138();
  v38 = sub_25F502148();
  v40 = v39;
  v41 = v52;
  v42 = *(v52 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v41 + 16);
  sub_25F4FE55C(v38, v40, v34, isUniquelyReferenced_nonNull_native);
  *(v41 + 16) = v54;
  result = sub_25F50143C(v27, v41);
LABEL_7:
  *v53 = result;
  return result;
}

uint64_t sub_25F4FB1E8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91120, &qword_25F5064D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  sub_25F502568();
  v7 = sub_25F502168();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  swift_storeEnumTagMultiPayload();
  sub_25F5025D8();

  return sub_25F4D867C(v6, &qword_27FD91120, &qword_25F5064D0);
}

id CrashReportListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CrashReportListener.nextCrashReport(for:timeout:)(uint64_t a1, uint64_t a2, int a3, double a4)
{
  LODWORD(v6) = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_25F5025E8();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F501E88();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  CrashReportListener.startListeningIfNeeded()();
  if (qword_27FD90178 != -1)
  {
    swift_once();
  }

  v16 = sub_25F502718();
  __swift_project_value_buffer(v16, qword_27FD90FE8);
  v17 = v6 & 1;
  sub_25F4FC514(a1, a2, v6 & 1);
  v18 = sub_25F5026F8();
  v19 = sub_25F502908();
  sub_25F4FC524(a1, a2, v6 & 1);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    LODWORD(v42) = v6;
    v6 = v20;
    v21 = a2;
    v22 = swift_slowAlloc();
    v48 = v22;
    *v6 = 136315138;
    v45 = a1;
    v46 = v21;
    v47 = v17;
    sub_25F4FC708();
    v23 = sub_25F502A28();
    v25 = sub_25F4DE2EC(v23, v24, &v48);

    *(v6 + 4) = v25;
    _os_log_impl(&dword_25F4D4000, v18, v19, "Requested next crash for: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v26 = v22;
    a2 = v21;
    MEMORY[0x25F8DF6E0](v26, -1, -1);
    v27 = v6;
    LOBYTE(v6) = v42;
    MEMORY[0x25F8DF6E0](v27, -1, -1);
  }

  sub_25F501E78();
  v48 = *(v4 + OBJC_IVAR____TtC17PreviewsOSSupport19CrashReportListener_state);

  v28 = v39;
  v29 = sub_25F5025F8();
  v37[1] = v37;
  MEMORY[0x28223BE20](v29);
  v37[-8] = v4;
  v37[-7] = a1;
  v37[-6] = a2;
  v30 = v6 & 1;
  LOBYTE(v37[-5]) = v6 & 1;
  v42 = v15;
  v37[-4] = v15;
  *&v37[-3] = a4;
  v37[-2] = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91008, &qword_25F5063A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91028, &qword_25F5063A8);
  ObjectType = v4;
  sub_25F4D8FF0(&qword_27FD91010, &qword_27FD91008, &qword_25F5063A0);
  sub_25F502528();
  (*(v40 + 8))(v28, v41);

  v31 = v45;
  v32 = v46;
  if (v46)
  {
    v33 = swift_allocObject();
    v34 = ObjectType;
    *(v33 + 16) = ObjectType;
    *(v33 + 24) = a1;
    *(v33 + 32) = a2;
    *(v33 + 40) = v30;
    *(v33 + 48) = v32;
    sub_25F4FC514(a1, a2, v30);
    v35 = v34;

    sub_25F502588();
  }

  (*(v43 + 8))(v42, v44);
  return v31;
}

uint64_t sub_25F4FB8BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v63 = a7;
  v54 = a6;
  v62 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = &v52 - v15;
  v16 = sub_25F501E88();
  v52 = *(v16 - 8);
  v53 = v16;
  v17 = *(v52 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910E8, &qword_25F5064A8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v52 - v22;
  v24 = sub_25F502168();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v30 = a1[1];
  v31 = a1[2];
  v33 = a1[3];
  v32 = a1 + 3;
  v59 = a5;
  v60 = a3;
  v61 = a4;
  sub_25F4FA9A4(a3, a4, a5 & 1, v30, v31, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_25F4D867C(v23, &qword_27FD910E8, &qword_25F5064A8);
  }

  else
  {
    (*(v25 + 32))(v28, v23, v24);
    sub_25F502158();
    sub_25F501E58();
    v35 = v34;
    (*(v52 + 8))(v19, v53);
    if (v35 < 1.0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910F0, &qword_25F5064B0);
      v36 = sub_25F5025C8();
      result = (*(v25 + 8))(v28, v24);
      v38 = v63;
      *v63 = v36;
      v38[1] = 0;
      return result;
    }

    (*(v25 + 8))(v28, v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910F0, &qword_25F5064B0);
  v62 = sub_25F502598();
  v40 = v39;
  v42 = v60;
  v41 = v61;
  v65 = v60;
  v66 = v61;
  v43 = v59;
  v67 = v59 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910F8, &qword_25F5064B8);
  sub_25F4D8FF0(&qword_27FD91100, &qword_27FD910F8, &qword_25F5064B8);
  v44 = v64;
  sub_25F502178();
  v64 = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91108, &qword_25F5064C0);
  v45 = v56;
  sub_25F502578();
  v46 = v55;
  sub_25F4FF34C(v55, v45);
  (*(v57 + 8))(v46, v58);
  v47 = v68;
  sub_25F4FC514(v42, v41, v43 & 1);
  v48 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v32;
  sub_25F4FE83C(v47, v42, v41, v43 & 1, isUniquelyReferenced_nonNull_native);
  sub_25F4FC524(v42, v41, v43 & 1);
  *v32 = v65;
  sub_25F5025A8();
  v50 = sub_25F5025B8();

  v51 = v63;
  *v63 = v50;
  v51[1] = v40;
  return result;
}

uint64_t sub_25F4FBEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = sub_25F5025E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(a2 + OBJC_IVAR____TtC17PreviewsOSSupport19CrashReportListener_state);

  sub_25F5025F8();
  v18 = a3;
  v19 = a4;
  v20 = a5 & 1;
  v21 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91008, &qword_25F5063A0);
  sub_25F4D8FF0(&qword_27FD91010, &qword_27FD91008, &qword_25F5063A0);
  sub_25F502528();
  (*(v12 + 8))(v15, v11);
}

uint64_t sub_25F4FC070(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v25 = a3;
  v24 = *a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B8, &qword_25F506490);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(a1 + 24);
  if (*(v18 + 16))
  {
    result = sub_25F501970(a2, v25, a4 & 1);
    if (v19)
    {
      v27 = *(*(v18 + 56) + 8 * result);

      sub_25F502578();
      sub_25F500194(v12, v17);
      (*(v9 + 8))(v12, v8);
      sub_25F4D867C(v17, &qword_27FD910B8, &qword_25F506490);
      v20 = v27;
      v21 = v25;
      sub_25F4FC514(a2, v25, a4 & 1);
      v22 = *(a1 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(a1 + 24);
      sub_25F4FE83C(v20, a2, v21, a4 & 1, isUniquelyReferenced_nonNull_native);
      result = sub_25F4FC524(a2, v21, a4 & 1);
      *(a1 + 24) = v26;
    }
  }

  return result;
}

uint64_t sub_25F4FC3C4()
{
  v0 = sub_25F502718();
  __swift_allocate_value_buffer(v0, qword_27FD90FE8);
  __swift_project_value_buffer(v0, qword_27FD90FE8);
  sub_25F502948();
  return sub_25F502708();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.osaListener.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD90178 != -1)
  {
    swift_once();
  }

  v2 = sub_25F502718();
  v3 = __swift_project_value_buffer(v2, qword_27FD90FE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25F4FC514(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_25F4FC524(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_25F4FC534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  return sub_25F4FB8BC(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), a2);
}

uint64_t sub_25F4FC564()
{
  sub_25F4FC524(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F4FC5C4()
{
  v0 = sub_25F502278();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F502268();
  sub_25F50079C();
  v5 = swift_allocError();
  (*(v1 + 32))(v6, v4, v0);
  return v5;
}

uint64_t sub_25F4FC6B8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_25F4FC6E8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_25F4FC708()
{
  result = qword_27FD91030;
  if (!qword_27FD91030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD91030);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F4FC7D0(uint64_t a1, int a2)
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

uint64_t sub_25F4FC818(uint64_t result, int a2, int a3)
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

uint64_t sub_25F4FC89C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_25F5018F8(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v18 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25F4FEC54();
    v10 = v18;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 32 * v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  sub_25F4FDBA0(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_25F4FC964(unsigned int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_25F5019F8(a1);
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
    sub_25F4FEF64();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_25F4FDF1C(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_25F4FC9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25F5018F8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F4FF0CC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_25F502168();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_25F4FE090(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_25F502168();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_25F4FCB68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD91150, &unk_25F506500);
  v40 = a2;
  result = sub_25F5029F8();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 8 * v22;
      v24 = *v23;
      v25 = *(v23 + 4);
      v26 = *(v5 + 56) + 16 * v22;
      v27 = *v26;
      v41 = *(v26 + 8);
      if ((v40 & 1) == 0)
      {
        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_25F502B08();
      sub_25F502B28();
      MEMORY[0x25F8DF0B0](v25);
      result = sub_25F502B38();
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
      v17 = *(v8 + 48) + 8 * v16;
      *v17 = v24;
      *(v17 + 4) = v25;
      v18 = (*(v8 + 56) + 16 * v16);
      *v18 = v27;
      v18[1] = v41;
      ++*(v8 + 16);
      v5 = v39;
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

uint64_t sub_25F4FCE24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91148, &qword_25F5064F8);
  v39 = a2;
  result = sub_25F5029F8();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 32 * v22);
      v26 = v25[1];
      v41 = *v25;
      v42 = *v23;
      v27 = v25[2];
      v40 = v25[3];
      if ((v39 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      v28 = *(v8 + 40);
      sub_25F502B08();
      sub_25F5027B8();
      result = sub_25F502B38();
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
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v41;
      v18[1] = v26;
      v18[2] = v27;
      v18[3] = v40;
      ++*(v8 + 16);
      v5 = v38;
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

uint64_t sub_25F4FD0F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910C0, &qword_25F506498);
  v41 = a2;
  result = sub_25F5029F8();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
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
      v42 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 24 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(*(v5 + 56) + 8 * v22);
      if ((v41 & 1) == 0)
      {
        sub_25F4FC514(v24, v25, v26);
      }

      v43 = v26;
      v28 = v24;
      v29 = v27;
      v30 = *(v8 + 40);
      sub_25F50043C();
      result = sub_25F502748();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v17 = v43;
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v17 = v43;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 24 * v16;
      *v18 = v28;
      *(v18 + 8) = v25;
      *(v18 + 16) = v17;
      *(*(v8 + 56) + 8 * v16) = v29;
      ++*(v8 + 16);
      v5 = v40;
      v13 = v42;
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
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25F4FD3E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91128, &qword_25F5064D8);
  v35 = a2;
  result = sub_25F5029F8();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v35 & 1) == 0)
      {
      }

      result = MEMORY[0x25F8DF090](*(v8 + 40), v22, 4);
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
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
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

    if ((v35 & 1) == 0)
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

uint64_t sub_25F4FD66C(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_25F502168();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD91130, &unk_25F5064E0);
  v46 = a2;
  result = sub_25F5029F8();
  v12 = result;
  if (*(v9 + 16))
  {
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_25F502B08();
      sub_25F5027B8();
      result = sub_25F502B38();
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
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
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

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
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

uint64_t sub_25F4FD9EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F502978() + 1) & ~v5;
    do
    {
      v9 = 8 * v6;
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 8 * v6);
      v12 = *v11;
      v13 = *(v11 + 4);
      sub_25F502B08();
      sub_25F502B28();
      MEMORY[0x25F8DF0B0](v13);
      result = sub_25F502B38();
      v14 = result & v7;
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
        v16 = (v15 + 8 * v3);
        v17 = (v15 + v9);
        if (8 * v3 != v9 || v16 >= v17 + 1)
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

uint64_t sub_25F4FDBA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F502978() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_25F502B08();

      sub_25F5027B8();
      v14 = sub_25F502B38();

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

uint64_t sub_25F4FDD50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F502978() + 1) & ~v5;
    sub_25F50043C();
    do
    {
      v9 = 24 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 24 * v6;
      v25 = *v11;
      v26 = *(v11 + 16);
      result = sub_25F502748();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 24 * v3;
          v17 = (v15 + v9);
          if (24 * v3 < v9 || v16 >= v17 + 24 || v3 != v6)
          {
            v18 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 8 * v3);
          v21 = (v19 + 8 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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

uint64_t sub_25F4FDF1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F502978() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x25F8DF090](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F4FE090(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F502978() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25F502B08();

      sub_25F5027B8();
      v13 = sub_25F502B38();

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
      v19 = *(*(sub_25F502168() - 8) + 72);
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

void sub_25F4FE27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25F501880(a3 & 0xFFFFFFFFFFLL);
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
      sub_25F4FEAD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25F4FCB68(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25F501880(a3 & 0xFFFFFFFFFFLL);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_25F502A88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 16 * v11;
    v24 = *v23;
    *v23 = a1;
    *(v23 + 8) = a2;
  }

  else
  {

    sub_25F4FE9D4(v11, a3 & 0xFFFFFFFFFFLL, a1, a2, v22);
  }
}

uint64_t sub_25F4FE3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_25F5018F8(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_25F4FCE24(v22, a7 & 1);
      v26 = *v8;
      v17 = sub_25F5018F8(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_25F502A88();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_25F4FEC54();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * v17);
    v31 = v29[1];
    v30 = v29[2];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
    swift_unknownObjectRelease();
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v33 = (v28[6] + 16 * v17);
  *v33 = a5;
  v33[1] = a6;
  v34 = (v28[7] + 32 * v17);
  *v34 = a1;
  v34[1] = a2;
  v34[2] = a3;
  v34[3] = a4;
  v35 = v28[2];
  v21 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v36;
}

unint64_t sub_25F4FE55C(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_25F5019F8(a3);
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
      sub_25F4FD3E4(v16, a4 & 1);
      v20 = *v5;
      result = sub_25F5019F8(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_25F502A88();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_25F4FEF64();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 4 * result) = a3;
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
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_25F4FE6BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25F5018F8(a2, a3);
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
      sub_25F4FF0CC();
      goto LABEL_7;
    }

    sub_25F4FD66C(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_25F5018F8(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25F502A88();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_25F502168();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_25F4FEA28(v12, a2, a3, a1, v18);
}

uint64_t sub_25F4FE83C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25F501970(a2, a3, a4 & 1);
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
      sub_25F4FD0F8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_25F501970(a2, a3, a4 & 1);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_25F502A88();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25F4FEDE8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v13);
    *(v25 + 8 * v13) = a1;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = v24[6] + 24 * v13;
  *v28 = a2;
  *(v28 + 8) = a3;
  *(v28 + 16) = a4 & 1;
  *(v24[7] + 8 * v13) = a1;
  v29 = v24[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;

  return sub_25F4FC514(a2, a3, a4 & 1);
}

unint64_t sub_25F4FE9D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 8 * result;
  *v5 = a2;
  *(v5 + 4) = BYTE4(a2);
  v6 = (a5[7] + 16 * result);
  *v6 = a3;
  v6[1] = a4;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

uint64_t sub_25F4FEA28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_25F502168();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

id sub_25F4FEAD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD91150, &unk_25F506500);
  v2 = *v0;
  v3 = sub_25F5029E8();
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
        v18 = 8 * v17;
        v19 = *(v2 + 48) + 8 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 4);
        v17 *= 16;
        v21 = *(v2 + 56) + v17;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = *(v4 + 48) + v18;
        *v24 = v20;
        *(v24 + 4) = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;
        result = v23;
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

void *sub_25F4FEC54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91148, &qword_25F5064F8);
  v2 = *v0;
  v3 = sub_25F5029E8();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v26 = v22[2];
        v25 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v26;
        v28[3] = v25;

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

void *sub_25F4FEDE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910C0, &qword_25F506498);
  v2 = *v0;
  v3 = sub_25F5029E8();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_25F4FC514(v19, v20, v21);
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

void *sub_25F4FEF64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91128, &qword_25F5064D8);
  v2 = *v0;
  v3 = sub_25F5029E8();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

char *sub_25F4FF0CC()
{
  v1 = v0;
  v36 = sub_25F502168();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD91130, &unk_25F5064E0);
  v4 = *v0;
  v5 = sub_25F5029E8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_25F4FF34C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25F4D8FF0(&qword_27FD910D0, &qword_27FD910B0, "d*");
  v34 = a2;
  v13 = sub_25F502748();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_25F4D8FF0(&qword_27FD910D8, &qword_27FD910B0, "d*");
      v21 = sub_25F502768();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_25F4FF990(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_25F4FF630(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910E0, &qword_25F5064A0);
  result = sub_25F502998();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25F4D8FF0(&qword_27FD910D0, &qword_27FD910B0, "d*");
      result = sub_25F502748();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25F4FF990(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25F4FF630(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25F4FFC34();
      goto LABEL_12;
    }

    sub_25F4FFE74(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25F4D8FF0(&qword_27FD910D0, &qword_27FD910B0, "d*");
  v15 = sub_25F502748();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25F4D8FF0(&qword_27FD910D8, &qword_27FD910B0, "d*");
      v23 = sub_25F502768();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25F502A78();
  __break(1u);
  return result;
}

void *sub_25F4FFC34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910E0, &qword_25F5064A0);
  v7 = *v0;
  v8 = sub_25F502988();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

uint64_t sub_25F4FFE74(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910E0, &qword_25F5064A0);
  v10 = sub_25F502998();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25F4D8FF0(&qword_27FD910D0, &qword_27FD910B0, "d*");
      result = sub_25F502748();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25F500194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_25F4D8FF0(&qword_27FD910D0, &qword_27FD910B0, "d*");
  v34 = a1;
  v12 = sub_25F502748();
  v32 = v10 + 56;
  v33 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v29 = v2;
    v30 = v6;
    v31 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v20 = v19 * v14;
      v16(v9, *(v33 + 48) + v19 * v14, v5);
      sub_25F4D8FF0(&qword_27FD910D8, &qword_27FD910B0, "d*");
      v21 = sub_25F502768();
      (*(v17 - 8))(v9, v5);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 1;
        v6 = v30;
        a2 = v31;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25F4FFC34();
      v26 = v35;
    }

    v6 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20, v5);
    sub_25F500490(v14);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

unint64_t sub_25F50043C()
{
  result = qword_27FD910C8;
  if (!qword_27FD910C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD910C8);
  }

  return result;
}

uint64_t sub_25F500490(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910B0, "d*");
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_25F502978();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_25F4D8FF0(&qword_27FD910D0, &qword_27FD910B0, "d*");
        v27 = sub_25F502748();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_25F50079C()
{
  result = qword_27FD91110;
  if (!qword_27FD91110)
  {
    sub_25F502278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD91110);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

unint64_t sub_25F500858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD91150, &unk_25F506500);
  v3 = sub_25F502A08();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  result = sub_25F501880(v4 | (v5 << 32));
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v20 = v6;
    return v3;
  }

  v10 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = v3[6] + 8 * result;
    *v11 = v4;
    *(v11 + 4) = v5;
    v12 = (v3[7] + 16 * result);
    *v12 = v6;
    v12[1] = v7;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v10 + 3;
    v4 = *(v10 - 4);
    v5 = *(v10 - 12);
    v17 = *(v10 - 1);
    v7 = *v10;
    v18 = v6;
    result = sub_25F501880(v4 | (v5 << 32));
    v10 = v16;
    v6 = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F50097C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91140, &qword_25F5064F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD91130, &unk_25F5064E0);
    v8 = sub_25F502A08();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25F501608(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_25F5018F8(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_25F502168();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void *sub_25F500B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91128, &qword_25F5064D8);
  v3 = sub_25F502A08();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_25F5019F8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_25F5019F8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F500C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910C0, &qword_25F506498);
    v3 = sub_25F502A08();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_25F4FC514(v5, v6, v7);

      result = sub_25F501970(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_25F500D90()
{
  MEMORY[0x25F8DF780](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F500DD0()
{
  v1 = sub_25F5025E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD910E8, &qword_25F5064A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - v7;
  v9 = sub_25F502168();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  sub_25F4FA7CC(v8);
  v17 = v9;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_25F4D867C(v8, &qword_27FD910E8, &qword_25F5064A8);
  }

  v38 = v0;
  v40 = v1;
  v41 = v10;
  (*(v10 + 32))(v16, v8, v9);
  if (qword_27FD90178 != -1)
  {
    swift_once();
  }

  v19 = sub_25F502718();
  __swift_project_value_buffer(v19, qword_27FD90FE8);
  v20 = sub_25F5026F8();
  v21 = sub_25F502928();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67240192;
    swift_beginAccess();
    *(v22 + 4) = sub_25F502138();
    _os_log_impl(&dword_25F4D4000, v20, v21, "Did receive log for pid: %{public}d", v22, 8u);
    MEMORY[0x25F8DF6E0](v22, -1, -1);
  }

  v39 = v2;

  sub_25F5024A8();
  sub_25F502498();
  swift_beginAccess();
  sub_25F502138();
  v23 = sub_25F502488();

  if (v23)
  {
    v24 = sub_25F5026F8();
    v25 = sub_25F502928();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67240192;
      *(v26 + 4) = sub_25F502138();
      _os_log_impl(&dword_25F4D4000, v24, v25, "Symbolicating missing JIT symbols for pid: %{public}d", v26, 8u);
      MEMORY[0x25F8DF6E0](v26, -1, -1);
    }

    sub_25F5022F8();
    swift_beginAccess();
    (*(v41 + 40))(v16, v14, v17);
    sub_25F502498();
    sub_25F502138();
    sub_25F502478();
  }

  v27 = v41;
  v28 = *(v41 + 16);
  v37 = v17;
  v28(v14, v16, v17);
  v29 = v38;
  v43 = *(v38 + OBJC_IVAR____TtC17PreviewsOSSupport19CrashReportListener_state);

  v30 = v42;
  v31 = sub_25F5025F8();
  v36 = &v36;
  MEMORY[0x28223BE20](v31);
  *(&v36 - 2) = v14;
  *(&v36 - 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91008, &qword_25F5063A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91118, &qword_25F5064C8);
  sub_25F4D8FF0(&qword_27FD91010, &qword_27FD91008, &qword_25F5063A0);
  sub_25F502528();
  (*(v39 + 8))(v30, v40);

  v33 = v44;
  MEMORY[0x28223BE20](v32);
  *(&v36 - 2) = v14;
  sub_25F4FA0A8(sub_25F501420, (&v36 - 4), v33);

  v34 = *(v27 + 8);
  v35 = v37;
  v34(v14, v37);
  return (v34)(v16, v35);
}

uint64_t sub_25F50143C(uint64_t a1, uint64_t a2)
{
  v22 = MEMORY[0x277D84FA0];
  v21 = sub_25F502138();
  v3 = sub_25F502148();
  v5 = v4;
  v6 = *(a2 + 24);
  sub_25F4FC514(v21, 0, 0);
  v7 = sub_25F501970(v21, 0, 0);
  LOBYTE(v6) = v8;
  sub_25F4FC524(v21, 0, 0);
  if (v6)
  {
    v9 = *(a2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a2 + 24);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F4FEDE8();
    }

    sub_25F4FC524(*(*(v11 + 48) + 24 * v7), *(*(v11 + 48) + 24 * v7 + 8), *(*(v11 + 48) + 24 * v7 + 16));
    v12 = *(*(v11 + 56) + 8 * v7);
    sub_25F4FDD50(v7, v11);
    *(a2 + 24) = v11;
    sub_25F4FABC8(v12);
  }

  v13 = *(a2 + 24);
  sub_25F4FC514(v3, v5, 1);
  v14 = sub_25F501970(v3, v5, 1);
  LOBYTE(v13) = v15;
  sub_25F4FC524(v3, v5, 1);
  if (v13)
  {
    v16 = *(a2 + 24);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a2 + 24);
    if ((v17 & 1) == 0)
    {
      sub_25F4FEDE8();
    }

    sub_25F4FC524(*(*(v18 + 48) + 24 * v14), *(*(v18 + 48) + 24 * v14 + 8), *(*(v18 + 48) + 24 * v14 + 16));
    v19 = *(*(v18 + 56) + 8 * v14);
    sub_25F4FDD50(v14, v18);
    *(a2 + 24) = v18;
    sub_25F4FABC8(v19);
  }

  swift_arrayDestroy();
  return v22;
}

uint64_t sub_25F501608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD91140, &qword_25F5064F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static URL.rootRelativeFileURL(relativePath:isDirectory:)()
{
  v0 = sub_25F501E48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v6 = [v5 environment];

  v7 = sub_25F502738();
  if (*(v7 + 16) && (v8 = sub_25F5018F8(0x4F4F525F444C5944, 0xEE00485441505F54), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    v11 = *v10;
    v12 = v10[1];

    sub_25F501E08();

    sub_25F501E38();
    return (*(v1 + 8))(v4, v0);
  }

  else
  {

    return sub_25F501E08();
  }
}

unint64_t sub_25F501880(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25F502B08();
  sub_25F502B28();
  MEMORY[0x25F8DF0B0](BYTE4(a1));
  v4 = sub_25F502B38();

  return sub_25F501A40(a1 & 0xFFFFFFFFFFLL, v4);
}

unint64_t sub_25F5018F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25F502B08();
  sub_25F5027B8();
  v6 = sub_25F502B38();

  return sub_25F501AC0(a1, a2, v6);
}

unint64_t sub_25F501970(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a3 & 1;
  v7 = *(v3 + 40);
  sub_25F50043C();
  v8 = sub_25F502748();
  return sub_25F501B78(a1, a2, v6, v8);
}

unint64_t sub_25F5019F8(unsigned int a1)
{
  v3 = MEMORY[0x25F8DF090](*(v1 + 40), a1, 4);

  return sub_25F501CB4(a1, v3);
}

unint64_t sub_25F501A40(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      v8 = *v7;
      v9 = *(v7 + 4);
      if (v8 == a1 && BYTE4(a1) == v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25F501AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25F502A68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25F501B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_25F501C60();
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v10 = *v8;
      v11 = *(v8 + 16);
      if (sub_25F502768())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_25F501C60()
{
  result = qword_27FD91160;
  if (!qword_27FD91160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD91160);
  }

  return result;
}

unint64_t sub_25F501CB4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}