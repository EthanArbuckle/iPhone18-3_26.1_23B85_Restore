unint64_t sub_21B18BD7C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_21B20D658();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_21B20DC88();

        sub_21B20D388();
        v15 = sub_21B20DCA8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_21B18BF40()
{
  result = qword_27CD6EC58;
  if (!qword_27CD6EC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EC50, &qword_21B211CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC58);
  }

  return result;
}

unint64_t sub_21B18BFA4()
{
  result = qword_27CD6EC60;
  if (!qword_27CD6EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC60);
  }

  return result;
}

uint64_t sub_21B18BFF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

PoirotBlocks::DataSourceType_optional __swiftcall DataSourceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21B20D828();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DataSourceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x727453656D6F6962;
  v3 = 0xD000000000000010;
  v4 = 0x7473754374736F68;
  if (v1 != 3)
  {
    v4 = 0x6573616261746164;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x627550656D6F6962;
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

uint64_t sub_21B18C23C()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B18C350()
{
  *v0;
  *v0;
  *v0;
  sub_21B20D388();
}

uint64_t sub_21B18C450()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

void sub_21B18C56C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006D6165;
  v4 = 0x727453656D6F6962;
  v5 = 0x800000021B20E720;
  v6 = 0xD000000000000010;
  v7 = 0xEF656C6261546D6FLL;
  v8 = 0x7473754374736F68;
  if (v2 != 3)
  {
    v8 = 0x6573616261746164;
    v7 = 0xED0000656C626154;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x627550656D6F6962;
    v3 = 0xEE0072656873696CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21B18C6F8()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 1701869940;
  v4 = 0x736E6D756C6F63;
  if (v1 != 3)
  {
    v4 = 0x74736566696E616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7470697263736564;
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

uint64_t sub_21B18C790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B18DF54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B18C7B8(uint64_t a1)
{
  v2 = sub_21B18CEF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B18C7F4(uint64_t a1)
{
  v2 = sub_21B18CEF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DataSourceModel.descriptionText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DataSourceModel.manifest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DataSourceModel() + 32);

  return sub_21B18C904(v3, a1);
}

uint64_t type metadata accessor for DataSourceModel()
{
  result = qword_27CD6ECE0;
  if (!qword_27CD6ECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B18C904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DataSourceModel.init(name:descriptionText:type:columns:manifest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a5;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v10;
  *(a8 + 40) = a6;
  v11 = a8 + *(type metadata accessor for DataSourceModel() + 32);

  return sub_21B18C9D0(a7, v11);
}

uint64_t sub_21B18C9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DataSourceModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC80, &qword_21B211CB8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  v11 = type metadata accessor for DataSourceModel();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B18CEF4();
  v16 = v33;
  sub_21B20DCD8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v11;
  v33 = v6;
  v18 = v31;
  v17 = v32;
  LOBYTE(v34) = 0;
  v20 = v14;
  *v14 = sub_21B20D8C8();
  v14[1] = v21;
  v29[1] = v21;
  LOBYTE(v34) = 1;
  v14[2] = sub_21B20D8C8();
  v14[3] = v22;
  v36 = 2;
  sub_21B18CF48();
  v29[0] = 0;
  sub_21B20D918();
  v23 = a1;
  *(v20 + 32) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC98, &unk_21B219FA0);
  v36 = 3;
  sub_21B18D478(&qword_27CD6ECA0, &qword_27CD6ECA8);
  sub_21B20D918();
  *(v20 + 40) = v34;
  v36 = 4;
  sub_21B17DCC8();
  sub_21B20D8B8();
  v24 = v10;
  v25 = v7;
  if (v35 >> 60 == 15)
  {
    v26 = 1;
    v27 = v33;
  }

  else
  {
    v27 = v33;
    sub_21B20D048();
    v26 = 0;
  }

  (*(v18 + 8))(v24, v25);
  v28 = sub_21B20D0C8();
  (*(*(v28 - 8) + 56))(v27, v26, 1, v28);
  sub_21B18C9D0(v27, v20 + *(v30 + 32));
  sub_21B18CF9C(v20, v17);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_21B18D000(v20);
}

unint64_t sub_21B18CEF4()
{
  result = qword_27CD6EC88;
  if (!qword_27CD6EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC88);
  }

  return result;
}

unint64_t sub_21B18CF48()
{
  result = qword_27CD6EC90;
  if (!qword_27CD6EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC90);
  }

  return result;
}

uint64_t sub_21B18CF9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSourceModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B18D000(uint64_t a1)
{
  v2 = type metadata accessor for DataSourceModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DataSourceModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ECB0, &qword_21B211CC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B18CEF4();
  sub_21B20DD08();
  v15 = *v3;
  v16 = v3[1];
  LOBYTE(v26) = 0;
  sub_21B20D9E8();
  if (!v2)
  {
    v17 = v3[2];
    v18 = v3[3];
    LOBYTE(v26) = 1;
    sub_21B20D9E8();
    LOBYTE(v26) = *(v3 + 32);
    v28 = 2;
    sub_21B18D424();
    sub_21B20DA48();
    v26 = v3[5];
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC98, &unk_21B219FA0);
    sub_21B18D478(&qword_27CD6ECC0, &qword_27CD6ECC8);
    sub_21B20DA48();
    v19 = type metadata accessor for DataSourceModel();
    sub_21B18C904(v3 + *(v19 + 32), v8);
    v20 = sub_21B20D0C8();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v8, 1, v20) == 1)
    {
      sub_21B186488(v8, &qword_27CD6EC78, &unk_21B215AD0);
      v22 = 0;
      v23 = 0xF000000000000000;
    }

    else
    {
      v22 = sub_21B20D0B8();
      v23 = v24;
      (*(v21 + 8))(v8, v20);
    }

    v26 = v22;
    v27 = v23;
    v28 = 4;
    sub_21B17DBE4();
    sub_21B20D9D8();
    sub_21B17DAE4(v26, v27);
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_21B18D424()
{
  result = qword_27CD6ECB8;
  if (!qword_27CD6ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ECB8);
  }

  return result;
}

uint64_t sub_21B18D478(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EC98, &unk_21B219FA0);
    sub_21B18E160(a2, MEMORY[0x277D3E638]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DataSourceModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21B18D57C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t DataSourceModel.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21B20D388();
}

uint64_t DataSourceModel.hashValue.getter()
{
  sub_21B20DC88();
  v1 = *v0;
  v2 = v0[1];
  sub_21B20D388();
  return sub_21B20DCA8();
}

uint64_t sub_21B18D5D4()
{
  sub_21B20DC88();
  v1 = *v0;
  v2 = v0[1];
  sub_21B20D388();
  return sub_21B20DCA8();
}

uint64_t sub_21B18D618()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21B20D388();
}

uint64_t sub_21B18D620()
{
  sub_21B20DC88();
  v1 = *v0;
  v2 = v0[1];
  sub_21B20D388();
  return sub_21B20DCA8();
}

uint64_t static DataSourceModel.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_21B20DB28();
  }
}

uint64_t sub_21B18D690(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_21B20DB28();
  }
}

uint64_t sub_21B18D6C0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 1;
  }

  else
  {
    return (sub_21B20DB28() ^ 1) & 1;
  }
}

uint64_t sub_21B18D70C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_21B20DB28() ^ 1) & 1;
  }
}

uint64_t sub_21B18D760(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 0;
  }

  else
  {
    return sub_21B20DB28();
  }
}

BOOL _s12PoirotBlocks15DataSourceModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B20D0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED18, &qword_21B219FB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_21B20DB28() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_21B20DB28() & 1) == 0 || (sub_21B1B3A24(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (sub_21B1A69EC(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for DataSourceModel() + 32);
  v18 = *(v13 + 48);
  sub_21B18C904(a1 + v17, v16);
  sub_21B18C904(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_21B186488(v16, &qword_27CD6EC78, &unk_21B215AD0);
      return 1;
    }

    goto LABEL_14;
  }

  sub_21B18C904(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_14:
    sub_21B186488(v16, &qword_27CD6ED18, &qword_21B219FB0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_21B18E160(&qword_27CD6ED20, MEMORY[0x277D3E578]);
  v21 = sub_21B20D2A8();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_21B186488(v16, &qword_27CD6EC78, &unk_21B215AD0);
  return (v21 & 1) != 0;
}

unint64_t sub_21B18DAFC()
{
  result = qword_27CD6ECD0;
  if (!qword_27CD6ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ECD0);
  }

  return result;
}

void sub_21B18DB94()
{
  sub_21B18DC98(319, &qword_27CD6ECF0, MEMORY[0x277D3E638], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21B18DC98(319, qword_2811F9C38, MEMORY[0x277D3E578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B18DC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for PoirotToolTaskParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PoirotToolTaskParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B18DE50()
{
  result = qword_27CD6ECF8;
  if (!qword_27CD6ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ECF8);
  }

  return result;
}

unint64_t sub_21B18DEA8()
{
  result = qword_27CD6ED00;
  if (!qword_27CD6ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED00);
  }

  return result;
}

unint64_t sub_21B18DF00()
{
  result = qword_27CD6ED08;
  if (!qword_27CD6ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED08);
  }

  return result;
}

uint64_t sub_21B18DF54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEF747865546E6F69 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_21B18E10C()
{
  result = qword_27CD6ED10;
  if (!qword_27CD6ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED10);
  }

  return result;
}

uint64_t sub_21B18E160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HostInfo.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HostInfo.versionString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t HostInfo.mainDatabaseConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HostInfo() + 28);

  return sub_21B18E2B8(v3, a1);
}

uint64_t type metadata accessor for HostInfo()
{
  result = qword_27CD6EDB8;
  if (!qword_27CD6EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B18E2B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HostInfo.tempDatabaseConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HostInfo() + 32);

  return sub_21B18E2B8(v3, a1);
}

uint64_t HostInfo.supportedQueryParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for HostInfo() + 40));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t HostInfo.schema.getter()
{
  v1 = type metadata accessor for DataSourceModel();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  v7 = *(v6 + 16);
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21B18FEB8(0, v7, 0);
    v8 = v21;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_21B19158C(v9, v5, type metadata accessor for DataSourceModel);
      v12 = *v5;
      v11 = v5[1];
      v13 = v5[5];

      sub_21B191D54(v5, type metadata accessor for DataSourceModel);
      v21 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21B18FEB8((v14 > 1), v15 + 1, 1);
        v8 = v21;
      }

      *(v8 + 16) = v15 + 1;
      v16 = (v8 + 24 * v15);
      v16[4] = v12;
      v16[5] = v11;
      v16[6] = v13;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else if (!*(MEMORY[0x277D84F90] + 16))
  {
    v17 = MEMORY[0x277D84F98];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED30, &qword_21B212058);
  v17 = sub_21B20D808();
LABEL_9:
  v21 = v17;

  sub_21B18F964(v18, 1, &v21);

  return v21;
}

uint64_t HostInfo.init(bundleID:versionString:dataSources:mainDatabaseConfig:tempDatabaseConfig:supportsTimeWindow:supportedQueryParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10)
{
  v14 = a10;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  v15 = type metadata accessor for HostInfo();
  sub_21B18FED8(a6, a9 + v15[7]);
  result = sub_21B18FED8(a7, a9 + v15[8]);
  if (a8)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  *(a9 + v15[9]) = v17;
  if (!*(a10 + 16))
  {

    v14 = 0;
  }

  *(a9 + v15[10]) = v14;
  return result;
}

uint64_t sub_21B18E6B8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x536E6F6973726576;
    if (v1 != 1)
    {
      v4 = 0x72756F5361746164;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x4449656C646E7562;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 == 5)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21B18E7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B191AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B18E7E0(uint64_t a1)
{
  v2 = sub_21B19137C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B18E81C(uint64_t a1)
{
  v2 = sub_21B19137C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HostInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED38, &qword_21B212060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B19137C();
  sub_21B20DD08();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_21B20D9E8();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v22) = 1;
    sub_21B20D9E8();
    v22 = v3[4];
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED48, &qword_21B212068);
    sub_21B19149C(&qword_27CD6ED50, &qword_27CD6ED58);
    sub_21B20DA48();
    v16 = type metadata accessor for HostInfo();
    v17 = v16[7];
    LOBYTE(v22) = 3;
    type metadata accessor for DatabaseConfig();
    sub_21B1915F4(&qword_27CD6ED60, type metadata accessor for DatabaseConfig);
    sub_21B20D9D8();
    v18 = v16[8];
    LOBYTE(v22) = 4;
    sub_21B20D9D8();
    v19 = *(v3 + v16[9]);
    LOBYTE(v22) = 5;
    sub_21B20D9A8();
    v22 = *(v3 + v16[10]);
    v21 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED68, &qword_21B212070);
    sub_21B1913D0(&qword_27CD6ED70, sub_21B191448);
    sub_21B20D9D8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HostInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED80, &qword_21B212078);
  v34 = *(v10 - 8);
  v35 = v10;
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for HostInfo();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v18 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_21B19137C();
  v20 = v36;
  sub_21B20DCD8();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v36 = v7;
  v22 = v34;
  v21 = v35;
  LOBYTE(v39) = 0;
  *v17 = sub_21B20D8C8();
  v17[1] = v24;
  LOBYTE(v39) = 1;
  v17[2] = sub_21B20D8C8();
  v17[3] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED48, &qword_21B212068);
  v38 = 2;
  sub_21B19149C(&qword_27CD6ED88, &qword_27CD6ED90);
  sub_21B20D918();
  v32 = 0;
  v17[4] = v39;
  type metadata accessor for DatabaseConfig();
  LOBYTE(v39) = 3;
  v31 = sub_21B1915F4(&qword_27CD6ED98, type metadata accessor for DatabaseConfig);
  v26 = v32;
  sub_21B20D8B8();
  if (v26)
  {
    (*(v22 + 8))(v13, v21);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v28 = v17[1];

    v29 = v17[3];

    v30 = v17[4];
  }

  else
  {
    sub_21B18FED8(v9, v17 + v14[7]);
    LOBYTE(v39) = 4;
    v27 = v36;
    sub_21B20D8B8();
    sub_21B18FED8(v27, v17 + v14[8]);
    LOBYTE(v39) = 5;
    *(v17 + v14[9]) = sub_21B20D878();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED68, &qword_21B212070);
    v38 = 6;
    sub_21B1913D0(&qword_27CD6EDA0, sub_21B191538);
    sub_21B20D8B8();
    (*(v22 + 8))(v13, v21);
    *(v17 + v14[10]) = v39;
    sub_21B19158C(v17, v33, type metadata accessor for HostInfo);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_21B191D54(v17, type metadata accessor for HostInfo);
  }
}

uint64_t HostInfo.id.getter()
{
  MEMORY[0x21CEEBBB0](*v0, v0[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v0[2], v0[3]);
  return 3826793;
}

uint64_t sub_21B18F2A4@<X0>(void *a1@<X8>)
{
  MEMORY[0x21CEEBBB0](*v1, v1[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  result = MEMORY[0x21CEEBBB0](v1[2], v1[3]);
  *a1 = 3826793;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t HostInfo.hash(into:)()
{
  MEMORY[0x21CEEBBB0](*v0, v0[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v0[2], v0[3]);
  sub_21B20D388();
}

uint64_t HostInfo.hashValue.getter()
{
  sub_21B20DC88();
  MEMORY[0x21CEEBBB0](*v0, v0[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v0[2], v0[3]);
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B18F44C()
{
  sub_21B20DC88();
  MEMORY[0x21CEEBBB0](*v0, v0[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v0[2], v0[3]);
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B18F4E0()
{
  MEMORY[0x21CEEBBB0](*v0, v0[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v0[2], v0[3]);
  sub_21B20D388();
}

uint64_t sub_21B18F578()
{
  sub_21B20DC88();
  MEMORY[0x21CEEBBB0](*v0, v0[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v0[2], v0[3]);
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t static HostInfo.< infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = *a1, (sub_21B20DB28() & 1) != 0))
  {
    if (a1[2] == a2[2] && a1[3] == a2[3])
    {
      return 0;
    }
  }

  return sub_21B20DB28();
}

uint64_t sub_21B18F6BC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = *a1, (sub_21B20DB28() & 1) != 0))
  {
    if (a1[2] == a2[2] && a1[3] == a2[3])
    {
      return 0;
    }
  }

  return sub_21B20DB28();
}

BOOL sub_21B18F770(void *a1, uint64_t *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (v5 = *a2, v6 = a2[1], (sub_21B20DB28())) && (a2[2] == a1[2] ? (v7 = a2[3] == a1[3]) : (v7 = 0), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_21B20DB28();
  }

  return (v8 & 1) == 0;
}

BOOL sub_21B18F810(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = *a1, (sub_21B20DB28())) && (a1[2] == a2[2] ? (v6 = a1[3] == a2[3]) : (v6 = 0), v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_21B20DB28();
  }

  return (v7 & 1) == 0;
}

uint64_t sub_21B18F8B0(void *a1, uint64_t *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (v5 = *a2, v6 = a2[1], (sub_21B20DB28() & 1) != 0))
  {
    if (a2[2] == a1[2] && a2[3] == a1[3])
    {
      return 0;
    }
  }

  return sub_21B20DB28();
}

void sub_21B18F964(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_21B1B9778(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21B201CCC(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_21B1B9778(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_21B20DBF8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_21B203F28();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_21B20D6A8();
    MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
    sub_21B20D768();
    MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
    sub_21B20D7C8();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v27 = *a3;

      v28 = sub_21B1B9778(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_21B201CCC(v32, 1);
        v33 = *a3;
        v28 = sub_21B1B9778(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v8;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_21B18FCF8(void *a1, int64_t a2, char a3)
{
  result = sub_21B190BC4(a1, a2, a3, *v3, &qword_27CD6EC38, &unk_21B211B80, &qword_27CD6EC40, &qword_21B212500);
  *v3 = result;
  return result;
}

char *sub_21B18FD38(char *a1, int64_t a2, char a3)
{
  result = sub_21B19059C(a1, a2, a3, *v3, &qword_27CD6EB90, &qword_21B2115B0);
  *v3 = result;
  return result;
}

void *sub_21B18FD70(void *a1, int64_t a2, char a3)
{
  result = sub_21B19030C(a1, a2, a3, *v3, &qword_27CD6EE40, &qword_21B212330, &qword_27CD6EE48, &qword_21B212338);
  *v3 = result;
  return result;
}

size_t sub_21B18FDB0(size_t a1, int64_t a2, char a3)
{
  result = sub_21B1906BC(a1, a2, a3, *v3, &qword_27CD6EE38, &qword_21B214180, type metadata accessor for DatasetColumnDescription);
  *v3 = result;
  return result;
}

size_t sub_21B18FDF4(size_t a1, int64_t a2, char a3)
{
  result = sub_21B1906BC(a1, a2, a3, *v3, &qword_27CD6EE08, &qword_21B212308, MEMORY[0x277CE1950]);
  *v3 = result;
  return result;
}

size_t sub_21B18FE38(size_t a1, int64_t a2, char a3)
{
  result = sub_21B1909DC(a1, a2, a3, *v3, &qword_27CD6EE28, &qword_21B212320, &qword_27CD6EE30, &qword_21B212328);
  *v3 = result;
  return result;
}

void *sub_21B18FE78(void *a1, int64_t a2, char a3)
{
  result = sub_21B19030C(a1, a2, a3, *v3, &qword_27CD6EE80, &qword_21B212370, &qword_27CD6EE88, &qword_21B212378);
  *v3 = result;
  return result;
}

void *sub_21B18FEB8(void *a1, int64_t a2, char a3)
{
  result = sub_21B190454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21B18FED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_21B18FF48(size_t a1, int64_t a2, char a3)
{
  result = sub_21B1906BC(a1, a2, a3, *v3, &qword_27CD6EEB0, &qword_21B2123A0, type metadata accessor for DataSource);
  *v3 = result;
  return result;
}

char *sub_21B18FF8C(char *a1, int64_t a2, char a3)
{
  result = sub_21B19059C(a1, a2, a3, *v3, &qword_27CD6EEA8, &qword_21B212398);
  *v3 = result;
  return result;
}

size_t sub_21B18FFC4(size_t a1, int64_t a2, char a3)
{
  result = sub_21B1906BC(a1, a2, a3, *v3, &qword_27CD6EE00, &qword_21B212300, MEMORY[0x277D3E638]);
  *v3 = result;
  return result;
}

char *sub_21B190008(char *a1, int64_t a2, char a3)
{
  result = sub_21B190200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21B190028(size_t a1, int64_t a2, char a3)
{
  result = sub_21B1906BC(a1, a2, a3, *v3, &qword_27CD6EEA0, &qword_21B212390, type metadata accessor for DatasetColumnType);
  *v3 = result;
  return result;
}

void *sub_21B19006C(void *a1, int64_t a2, char a3)
{
  result = sub_21B190898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21B19008C(size_t a1, int64_t a2, char a3)
{
  result = sub_21B1909DC(a1, a2, a3, *v3, &qword_27CD6EE70, &qword_21B212360, &qword_27CD6EE78, &qword_21B212368);
  *v3 = result;
  return result;
}

void *sub_21B1900CC(void *a1, int64_t a2, char a3)
{
  result = sub_21B190BC4(a1, a2, a3, *v3, &qword_27CD6EE50, &qword_21B212340, &qword_27CD6EE58, &qword_21B212348);
  *v3 = result;
  return result;
}

void *sub_21B19010C(void *a1, int64_t a2, char a3)
{
  result = sub_21B190D14(a1, a2, a3, *v3, &qword_27CD6EE60, &qword_21B212350, &qword_27CD6EE68, &qword_21B212358);
  *v3 = result;
  return result;
}

void *sub_21B19014C(void *a1, int64_t a2, char a3)
{
  result = sub_21B190D14(a1, a2, a3, *v3, &qword_27CD6EE10, &qword_21B212310, &qword_27CD6EE18, &qword_21B213E20);
  *v3 = result;
  return result;
}

char *sub_21B190200(char *result, int64_t a2, char a3, char *a4)
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

void *sub_21B19030C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B190454(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEC0, &qword_21B2123B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEC8, &qword_21B2123B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B19059C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t sub_21B1906BC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_21B190898(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE90, &qword_21B212380);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE98, &qword_21B212388);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21B1909DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_21B190BC4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B190D14(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t _s12PoirotBlocks8HostInfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for DatabaseConfig();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEB8, &qword_21B2123A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21B20DB28() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21B20DB28() & 1) == 0 || (sub_21B1A5A00(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v45 = v13;
  v46 = v8;
  v47 = type metadata accessor for HostInfo();
  v23 = *(v47 + 28);
  v24 = *(v16 + 48);
  sub_21B18E2B8(a1 + v23, v22);
  sub_21B18E2B8(a2 + v23, &v22[v24]);
  v25 = *(v5 + 48);
  if (v25(v22, 1, v4) == 1)
  {
    if (v25(&v22[v24], 1, v4) == 1)
    {
      v44 = v25;
      sub_21B186488(v22, &qword_27CD6ED28, &unk_21B212870);
      goto LABEL_15;
    }

LABEL_13:
    v26 = v22;
LABEL_21:
    sub_21B186488(v26, &qword_27CD6EEB8, &qword_21B2123A8);
    return 0;
  }

  sub_21B18E2B8(v22, v15);
  if (v25(&v22[v24], 1, v4) == 1)
  {
    sub_21B191D54(v15, type metadata accessor for DatabaseConfig);
    goto LABEL_13;
  }

  v44 = v25;
  v27 = v46;
  sub_21B191DB4(&v22[v24], v46);
  v28 = static DatabaseConfig.== infix(_:_:)(v15, v27);
  sub_21B191D54(v27, type metadata accessor for DatabaseConfig);
  sub_21B191D54(v15, type metadata accessor for DatabaseConfig);
  sub_21B186488(v22, &qword_27CD6ED28, &unk_21B212870);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v29 = v47;
  v30 = *(v47 + 32);
  v31 = *(v16 + 48);
  sub_21B18E2B8(a1 + v30, v20);
  sub_21B18E2B8(a2 + v30, &v20[v31]);
  v32 = v44;
  if (v44(v20, 1, v4) == 1)
  {
    if (v32(&v20[v31], 1, v4) == 1)
    {
      sub_21B186488(v20, &qword_27CD6ED28, &unk_21B212870);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v33 = v45;
  sub_21B18E2B8(v20, v45);
  if (v32(&v20[v31], 1, v4) == 1)
  {
    sub_21B191D54(v33, type metadata accessor for DatabaseConfig);
LABEL_20:
    v26 = v20;
    goto LABEL_21;
  }

  v35 = v46;
  sub_21B191DB4(&v20[v31], v46);
  v36 = static DatabaseConfig.== infix(_:_:)(v33, v35);
  sub_21B191D54(v35, type metadata accessor for DatabaseConfig);
  sub_21B191D54(v33, type metadata accessor for DatabaseConfig);
  sub_21B186488(v20, &qword_27CD6ED28, &unk_21B212870);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v37 = *(v29 + 36);
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38 == 2)
  {
    if (v39 == 2)
    {
      goto LABEL_30;
    }

    return 0;
  }

  result = 0;
  if (v39 != 2 && ((v39 ^ v38) & 1) == 0)
  {
LABEL_30:
    v40 = *(v29 + 40);
    v41 = *(a1 + v40);
    v42 = *(a2 + v40);
    if (v41)
    {
      if (v42)
      {

        v43 = sub_21B1A6390(v41, v42);

        if (v43)
        {
          return 1;
        }
      }
    }

    else if (!v42)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_21B19137C()
{
  result = qword_27CD6ED40;
  if (!qword_27CD6ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED40);
  }

  return result;
}

uint64_t sub_21B1913D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6ED68, &qword_21B212070);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B191448()
{
  result = qword_27CD6ED78;
  if (!qword_27CD6ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED78);
  }

  return result;
}

uint64_t sub_21B19149C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6ED48, &qword_21B212068);
    sub_21B1915F4(a2, type metadata accessor for DataSourceModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B191538()
{
  result = qword_27CD6EDA8;
  if (!qword_27CD6EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EDA8);
  }

  return result;
}

uint64_t sub_21B19158C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B1915F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21B191664()
{
  sub_21B191788(319, &qword_27CD6EDC8, type metadata accessor for DataSourceModel, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21B191788(319, &qword_27CD6EDD0, type metadata accessor for DatabaseConfig, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21B1917EC();
      if (v2 <= 0x3F)
      {
        sub_21B19183C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21B191788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21B1917EC()
{
  if (!qword_27CD6EDD8)
  {
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD6EDD8);
    }
  }
}

void sub_21B19183C()
{
  if (!qword_27CD6EDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6ED68, &qword_21B212070);
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD6EDE0);
    }
  }
}

uint64_t getEnumTagSinglePayload for HostInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HostInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B1919F4()
{
  result = qword_27CD6EDE8;
  if (!qword_27CD6EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EDE8);
  }

  return result;
}

unint64_t sub_21B191A4C()
{
  result = qword_27CD6EDF0;
  if (!qword_27CD6EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EDF0);
  }

  return result;
}

unint64_t sub_21B191AA4()
{
  result = qword_27CD6EDF8;
  if (!qword_27CD6EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EDF8);
  }

  return result;
}

uint64_t sub_21B191AF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536E6F6973726576 && a2 == 0xED0000676E697274 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEB00000000736563 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021B20EFA0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021B20EFC0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021B20EFE0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021B20F000 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_21B191D54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B191DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id BiomeUDFContext.biomeDatabase.getter()
{
  v1 = *(v0 + qword_27CD6EED0);
  if (v1)
  {

    return v1;
  }

  else
  {
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

id sub_21B191EA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + qword_27CD6EED0);
  if (v3)
  {
    *a2 = v3;

    return v3;
  }

  else
  {
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

void sub_21B191F28(void *a1)
{
  [a1 db];
  v3 = sub_21B20CEB8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_21B20CE38();
  sub_21B20C878();
  v6 = *(v1 + qword_27CD6EED0);
  *(v1 + qword_27CD6EED0) = a1;
}

uint64_t sub_21B192050()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  *(swift_allocObject() + qword_27CD6EED0) = 0;
  return sub_21B20C8A8();
}

uint64_t static BiomeUDFContext.makeUDFContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_21B20D0C8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_21B1922E0(MEMORY[0x277D84F90], MEMORY[0x277D84F90], v3);
  sub_21B192958(v3);
  return v5;
}

uint64_t BiomeUDFContext.deinit()
{
  v0 = sub_21B20C8C8();

  return v0;
}

uint64_t BiomeUDFContext.__deallocating_deinit()
{
  v0 = sub_21B20C8C8();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21B1922E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v59 = a2;
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = sub_21B20D0C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v19 = type metadata accessor for BiomeUDFContext();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  *(swift_allocObject() + qword_27CD6EED0) = 0;
  v22 = sub_21B20C8A8();
  if (v3)
  {
    return v22;
  }

  v58 = v16;
  v62 = v8;
  sub_21B18C904(v63, v10);
  v24 = v12 + 48;
  v61 = *(v12 + 48);
  v25 = v61(v10, 1, v11);
  v63 = v11;
  if (v25 == 1)
  {
    sub_21B192958(v10);
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    sub_21B20C898();
    (*(v12 + 8))(v18, v11);
  }

  v26 = v60;
  v27 = *(v60 + 16);
  if (!v27)
  {
    v39 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v28 = v60 + 32;
  v54 = *(v60 + 16);
  v55 = (v12 + 32);
  v56 = (v12 + 8);
  v57 = v22;
  v60 = v12 + 56;
  v53 = v26 + 32;
  do
  {
    sub_21B192A60(v28, v64);
    v30 = v65;
    v31 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v32 = (*(v31 + 32))(v30, v31);
    if (v32)
    {
      (*(v33 + 8))(*v32);
      v35 = v65;
      v34 = v66;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      if (!(*(v34 + 32))(v35, v34))
      {

        v29 = v62;
        (*v60)(v62, 1, 1, v63);
LABEL_9:
        sub_21B192958(v29);
        goto LABEL_10;
      }

      v29 = v62;
      sub_21B20C918();

      v36 = v63;
      if (v61(v29, 1, v63) == 1)
      {

        goto LABEL_9;
      }

      v37 = v24;
      v38 = v58;
      (*v55)(v58, v29, v36);
      sub_21B20C898();

      (*v56)(v38, v36);
      v24 = v37;
    }

LABEL_10:
    sub_21B192ABC(v64);
    v28 += 40;
    --v27;
  }

  while (v27);
  v40 = v53;
  v41 = v54;
  v42 = v53;
  v22 = v57;
  do
  {
    sub_21B192A60(v42, v64);
    v43 = v65;
    v44 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    if ((*(v44 + 32))(v43, v44))
    {
      sub_21B20C978();
    }

    sub_21B192ABC(v64);
    v42 += 40;
    --v41;
  }

  while (v41);
  v67 = MEMORY[0x277D84F90];
  v45 = v54;
  sub_21B20D738();
  do
  {
    sub_21B192A60(v40, v64);
    v46 = v65;
    v47 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    sub_21B1BD85C(v46, v47);
    sub_21B192ABC(v64);
    sub_21B20D718();
    v48 = *(v67 + 16);
    sub_21B20D748();
    sub_21B20D758();
    sub_21B20D728();
    v40 += 40;
    --v45;
  }

  while (v45);
  v39 = v67;
LABEL_24:
  v64[0] = v39;

  sub_21B1D22C0(v49);
  v50 = objc_allocWithZone(MEMORY[0x277CF1A88]);
  sub_21B192B10();
  v51 = sub_21B20D438();

  v52 = [v50 initWithVirtualTables:v51 privileges:0 isColumnAccessLoggingEnabled:0 enableAuthorizer:0 error:0];

  sub_21B191F28(v52);
  sub_21B20C858();
  return v22;
}

uint64_t sub_21B192958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for BiomeUDFContext()
{
  result = qword_27CD6EED8;
  if (!qword_27CD6EED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B192B10()
{
  result = qword_27CD6EEE8;
  if (!qword_27CD6EEE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD6EEE8);
  }

  return result;
}

uint64_t sub_21B192B6C(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v34 = a3;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = *v7;
  if (*(*v7 + 64))
  {
    v9 = v8[9];
    v10 = *(*v7 + 64);
  }

  else
  {
    v12 = v8[15];
    v11 = v8[16];
    ObjectType = swift_getObjectType();
    v14 = (*(v11 + 24))(ObjectType, v11);
    v9 = v15;
    v16 = v8[8];
    v8[8] = v14;
    v8[9] = v15;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v32 = swift_getObjectType();
  v43 = 0;
  swift_unknownObjectRetain();
  v17 = BlockConfig.name.getter();
  v19 = v18;
  BlockConfig.type.getter(&v38);
  v20 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = &v31;
  v21 = *v20;
  v22 = *(*v20 + 160);
  v23 = *(*v20 + 168);
  v24 = *(*v20 + 192);
  *&v37 = v17;
  *(&v37 + 1) = v19;
  *(&v38 + 1) = a2;
  v39 = 0uLL;
  *&v40 = v22;
  v41 = *(v21 + 176);
  *(&v40 + 1) = v23;
  v42 = v24;
  MEMORY[0x28223BE20](v24);
  v29[2] = a1;
  v29[3] = v4;
  v29[4] = a2;
  v30 = v34 & 1;
  v25 = *(v9 + 16);

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEF8, &unk_21B2126D0);
  v27 = v44[4];
  v25(v44, &v43, &v37, sub_21B193B24, v29, v26, v32, v9);
  v35[2] = v39;
  v35[3] = v40;
  v35[4] = v41;
  v36 = v42;
  v35[0] = v37;
  v35[1] = v38;
  sub_21B193B48(v35);
  if (v27)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v44[0];
}

uint64_t sub_21B192DFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v11 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
  sub_21B193A60(a2, v92);
  if (v96 > 4u)
  {
    if (v96 <= 6u)
    {
      if (v96 != 5)
      {
        v83 = *&v92[32];
        v84 = v93;
        *&v85 = v94;
        *v82 = *v92;
        *&v82[16] = *&v92[16];
        if (a4)
        {
          result = sub_21B18C060(v82);
          *a5 = MEMORY[0x277D84F90];
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_21B2110C0;
        sub_21B17FB4C(a1, v90);
        sub_21B18C0B4(v82, &v87);
        v72 = type metadata accessor for UserDefinedBlock();
        swift_allocObject();

        v73 = sub_21B18A8D0(v90, a3, &v87);
        if (!v5)
        {
          *(v15 + 56) = v72;
          *(v15 + 64) = &off_282CA0120;
          *(v15 + 32) = v73;

          result = sub_21B18C060(v82);
          *a5 = v15;
          return result;
        }

        sub_21B18C060(v82);
        goto LABEL_25;
      }

      v79 = *v92;
      v26 = *&v92[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_21B2110C0;
      sub_21B17FB4C(a1, v82);
      v87 = v79;
      v88 = v26;
      v27 = type metadata accessor for MaterializedViewBlock();
      swift_allocObject();

      v28 = sub_21B1868D4(v82, a3, &v87);
      if (!v5)
      {
        *(v15 + 56) = v27;
        *(v15 + 64) = &off_282CA0120;
        *(v15 + 32) = v28;

        *a5 = v15;
        return result;
      }
    }

    else
    {
      v97 = a5;
      if (v96 != 7)
      {
        v13 = a3;
        if (v96 != 8)
        {
          v79 = *v92;
          v41 = *&v92[16];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_21B2110C0;
          sub_21B17FB4C(a1, v82);
          v87 = v79;
          *&v88 = v41;
          ParametersBlock = type metadata accessor for QueryParametersBlock();
          swift_allocObject();

          v39 = sub_21B187848(v82, v13, &v87);
          if (!v5)
          {
            v40 = &off_282CA0330;
            goto LABEL_34;
          }

          goto LABEL_24;
        }

        v14 = *v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_21B2110C0;
        sub_21B17FB4C(a1, v82);
        v16 = type metadata accessor for SentinelBlock();
        v17 = swift_allocObject();
        *(v17 + 16) = 0;
        *(v17 + 24) = v14;
        *(v17 + 40) = a3;
        v18 = __swift_project_boxed_opaque_existential_1(v82, *&v82[24]);
        v19 = *(*v18 + 136);
        v20 = *(*v18 + 144);
        *(v17 + 48) = v19;
        *(v17 + 56) = v20;

        sub_21B188EB8(v19);
        __swift_destroy_boxed_opaque_existential_1(v82);
        *(v15 + 56) = v16;
        *(v15 + 64) = &off_282CA0440;
        *(v15 + 32) = v17;
LABEL_35:

        *v97 = v15;
        return result;
      }

      v78 = a3;
      *&v79 = v11;
      v30 = *v92;
      v31 = v92[16];
      v32 = *&v92[24];
      v33 = v92[32];
      LODWORD(v77) = v92[33];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_21B2110C0;
      sub_21B17FB4C(a1, v82);
      v87 = v30;
      LOBYTE(v88) = v31;
      *(&v88 + 1) = v32;
      LOBYTE(v89) = v33;
      BYTE1(v89) = v77;
      v24 = type metadata accessor for TimeWindowBlock();
      swift_allocObject();

      v25 = sub_21B189914(v82, v78, &v87);
      if (!v5)
      {
LABEL_13:
        *(v15 + 56) = v24;
        *(v15 + 64) = &off_282CA0120;
        *(v15 + 32) = v25;
        goto LABEL_35;
      }
    }

LABEL_24:

LABEL_25:
    *(v15 + 16) = 0;
  }

  if (v96 <= 1u)
  {
    v78 = a3;
    *&v79 = v11;
    if (v96)
    {
      v42 = *v92;
      v43 = v92[16];
      v77 = *&v92[24];
      v44 = *&v92[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_21B2110C0;
      sub_21B17FB4C(a1, v82);
      *(&v88 + 1) = &type metadata for ExtractionBlockConfig;
      v89 = sub_21B193B9C();
      v45 = swift_allocObject();
      *&v87 = v45;
      *(v45 + 16) = v42;
      *(v45 + 32) = v43;
      *(v45 + 40) = v77;
      *(v45 + 56) = v44;
      v46 = type metadata accessor for ExtractionBlock();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      v49 = swift_allocObject();
      v50 = OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_statement;
      v51 = sub_21B20CF28();
      (*(*(v51 - 8) + 56))(v49 + v50, 1, 1, v51);
      *(v49 + OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_initialized) = 0;
      sub_21B17FB4C(v82, v90);
      sub_21B17FB4C(&v87, v80);
      v52 = *__swift_project_boxed_opaque_existential_1(v90, v91);
      v53 = sub_21B20D368();
      v55 = v54;
      swift_beginAccess();

      v56 = sub_21B1BA38C(v53, v55);
      swift_endAccess();
      if (v56)
      {

        *(v49 + 56) = v56;
        *(v49 + 88) = *(__swift_project_boxed_opaque_existential_1(v80, v81) + 16);
        *&v77 = __swift_project_boxed_opaque_existential_1(v80, v81)[3];
        *(v49 + 64) = v77;
        v57 = __swift_project_boxed_opaque_existential_1(v80, v81);
        v58 = v57[5];
        *(v49 + 72) = v57[4];
        *(v49 + 80) = v58;
        v59 = *(*__swift_project_boxed_opaque_existential_1(v90, v91) + 152);
        v60 = v81;
        v61 = __swift_project_boxed_opaque_existential_1(v80, v81);
        v75 = &v75;
        v62 = *(*(v60 - 8) + 64);
        MEMORY[0x28223BE20](v61);
        v97 = a5;
        v64 = (&v75 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v65 + 16))(v64);
        v66 = *v64;
        v67 = v64[1];
        v68 = v64[3];
        v69 = v64[5];
        *(v49 + 16) = 0;
        *(v49 + 24) = v59;
        *(v49 + 32) = v66;
        v70 = v78;
        *(v49 + 40) = v67;
        *(v49 + 48) = v70;

        __swift_destroy_boxed_opaque_existential_1(&v87);
        __swift_destroy_boxed_opaque_existential_1(v82);
        __swift_destroy_boxed_opaque_existential_1(v80);
        __swift_destroy_boxed_opaque_existential_1(v90);
        v71 = v76;
        *(v76 + 56) = v46;
        *(v71 + 64) = &off_282CA0120;
        *(v71 + 32) = v49;

        *v97 = v71;
        return result;
      }

      sub_21B17FC58();
      swift_allocError();
      *v74 = v53;
      *(v74 + 8) = v55;
      *(v74 + 16) = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(&v87);
      __swift_destroy_boxed_opaque_existential_1(v82);
      __swift_destroy_boxed_opaque_existential_1(v80);
      __swift_destroy_boxed_opaque_existential_1(v90);
      type metadata accessor for QueryBlock();
      swift_deallocPartialClassInstance();

      *(v76 + 16) = 0;
    }

    v97 = a5;
    v21 = *v92;
    v22 = v92[24];
    v23 = *&v92[32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21B2110C0;
    v77 = *&v92[8];
    sub_21B17FB4C(a1, &v87);
    *v82 = v21;
    *&v82[8] = v77;
    v82[24] = v22;
    v83 = v23;
    v24 = type metadata accessor for AggregationBlock();
    swift_allocObject();

    v25 = sub_21B17E460(&v87, 0, v78, v82);
    if (v5)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  if (v96 != 2)
  {
    if (v96 == 3)
    {
      v83 = *&v92[32];
      v84 = v93;
      v85 = v94;
      v86 = v95;
      *v82 = *v92;
      *&v82[16] = *&v92[16];
      sub_21B17FB4C(a1, &v87);
      type metadata accessor for TemplateBlock();
      swift_allocObject();
      result = sub_21B188F8C(&v87, a3, v82);
      if (!v5)
      {
        goto LABEL_18;
      }

      return result;
    }

    v97 = a5;
    v34 = *v92;
    v35 = a3;
    v36 = *&v92[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21B2110C0;
    *v82 = v34;
    *&v82[8] = *&v92[8];
    *&v82[24] = v36;
    ParametersBlock = type metadata accessor for JoinBlock();
    swift_allocObject();
    v38 = swift_retain_n();
    v39 = sub_21B1810C4(v38, v35, v82);
    if (!v5)
    {
      v40 = &off_282CA0120;
LABEL_34:
      *(v15 + 56) = ParametersBlock;
      *(v15 + 64) = v40;
      *(v15 + 32) = v39;
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v83 = *&v92[32];
  v84 = v93;
  v85 = v94;
  v86 = v95;
  *v82 = *v92;
  *&v82[16] = *&v92[16];
  sub_21B17FB4C(a1, &v87);
  type metadata accessor for TemplateBlockLegacy();
  swift_allocObject();
  result = sub_21B1895E4(&v87, a3, v82);
  if (!v5)
  {
LABEL_18:
    v29 = *(result + 176);

    *a5 = v29;
  }

  return result;
}

uint64_t sub_21B1938A8(void *a1, int a2, uint64_t a3)
{
  v21 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = a3 + 32;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v5++;
    sub_21B193A60(v6, &v20);
    v9 = sub_21B192B6C(a1, v5, v21 & 1);
    if (v3)
    {
      sub_21B193ABC(&v19);

      return v7;
    }

    v10 = v9;
    result = sub_21B193ABC(&v19);
    v11 = *(v10 + 16);
    v12 = v7[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v13 <= v7[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = v12;
      }

      result = sub_21B1D2CC8(result, v14, 1, v7);
      v7 = result;
      if (*(v10 + 16))
      {
LABEL_15:
        if ((v7[3] >> 1) - v7[2] < v11)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE88, &qword_21B212378);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = v7[2];
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_25;
          }

          v7[2] = v17;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += 96;
    if (v4 == v5)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21B193ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEF0, &unk_21B2123F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B193B9C()
{
  result = qword_27CD6EF00;
  if (!qword_27CD6EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EF00);
  }

  return result;
}

uint64_t sub_21B193BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B17FB4C(a5, v12);
  v13[0] = a1;
  v13[1] = a3;
  v13[2] = a4;
  v9 = *(a2 + 16);
  v14 = *a2;
  v15 = v9;
  v16 = *(a2 + 32);
  sub_21B17FB4C(v12, v17);
  sub_21B193CC0(a2, &v11);

  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v17[6] = 0;
  v17[7] = 0;
  v17[5] = MEMORY[0x277D84F90];
  sub_21B193D1C();
  return sub_21B193F9C(v13);
}

void sub_21B193D1C()
{
  v2 = v0;
  sub_21B193FCC();
  if (!v1)
  {
    v3 = v0[14];
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = *v0;
      v5 = *(*v0 + 16);
      if (v3 < v5)
      {
        v22 = v4 + 32;
        v23 = *v0;
        while (1)
        {
          v6 = MEMORY[0x21CEEC5F0]();
          v7 = v2[13];
          if (v3 >= *(v7 + 2))
          {
            break;
          }

          v8 = v6;
          v27 = *&v7[8 * v3 + 32];

          v9 = sub_21B1940B0(&v27);
          v10 = v27;
          if (v9)
          {
            v11 = v2[15];
            v12 = __OFADD__(v11, 1);
            v13 = v11 + 1;
            if (v12)
            {
              goto LABEL_27;
            }

            v2[15] = v13;
            v14 = v3 + 1;
            if (v14 >= *(v4 + 16))
            {
            }

            else
            {

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_21B1D2E10(0, *(v7 + 2) + 1, 1, v7);
              }

              v16 = *(v7 + 2);
              v15 = *(v7 + 3);
              if (v16 >= v15 >> 1)
              {
                v7 = sub_21B1D2E10((v15 > 1), v16 + 1, 1, v7);
              }

              *(v7 + 2) = v16 + 1;
              *&v7[8 * v16 + 32] = v10;
              v2[13] = v7;
              v2[14] = v14;
              v4 = v23;
              if (v14 >= *(v23 + 16))
              {
                goto LABEL_30;
              }

              sub_21B17FB4C(v22 + 40 * v14, v24);
              v18 = v25;
              v17 = v26;
              __swift_project_boxed_opaque_existential_1(v24, v25);
              (*(*(v17 + 16) + 24))(v18);

              __swift_destroy_boxed_opaque_existential_1(v24);
            }
          }

          else
          {

            if (!*(v7 + 2))
            {
              goto LABEL_28;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v19 = *(v7 + 2);
              if (!v19)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v7 = sub_21B194898(v7);
              v19 = *(v7 + 2);
              if (!v19)
              {
                goto LABEL_29;
              }
            }

            v20 = v19 - 1;
            v21 = *&v7[8 * v20 + 32];
            *(v7 + 2) = v20;

            v2[13] = v7;
            v2[14] = v3 - 1;
          }

          objc_autoreleasePoolPop(v8);
          v3 = v2[14];
          if (v3 < 0 || v3 >= v5)
          {
            return;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }
    }
  }
}

void sub_21B193FCC()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v0[14] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF08, &qword_21B212400);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_21B2110C0;
    *(v2 + 32) = MEMORY[0x277D84F90];
    v3 = v0[13];

    v0[13] = v2;
    if (*(v1 + 16))
    {
      sub_21B17FB4C(v1 + 32, v6);
      v5 = v7;
      v4 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(*(v4 + 16) + 24))(v5);
      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21B1940B0(uint64_t result)
{
  v3 = v1[14];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v1 + 16))
  {
    v4 = result;
    sub_21B17FB4C(*v1 + 40 * v3 + 32, v48 + 1);
    v6 = v49;
    v5 = v50;
    __swift_project_boxed_opaque_existential_1((v48 + 1), v49);
    if ((*(*(v5 + 16) + 8))(v6))
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      type metadata accessor for LogEntryCollector();
      v8 = swift_allocObject();
      v9 = MEMORY[0x277D84F98];
      *(v8 + 16) = MEMORY[0x277D84F90];
      *(v8 + 24) = v9;
      v34 = v4;
      v10 = v1[1];
      v32 = v1[2];
      ObjectType = swift_getObjectType();
      v47 = 2;
      sub_21B17FB4C(v48 + 1, &v35);
      v11 = v1[4];
      v30 = v1[3];
      v12 = v1[6];
      v29 = v1[5];
      v28 = v12;
      v13 = v1[7];
      v31 = v2;
      v14 = *(&v36 + 1);
      v15 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      v16 = *(v15 + 8);
      v17 = *(v16 + 8);

      swift_unknownObjectRetain();

      v18 = v17(v14, v16);
      v20 = v19;
      v21 = *(&v36 + 1);
      v22 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      (*(*(v22 + 8) + 16))(&v42, v21);
      v23 = *(&v36 + 1);
      v24 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      v7 = (*(*(v24 + 8) + 24))(v23);
      v25 = __swift_destroy_boxed_opaque_existential_1(&v35);
      v33 = &v27;
      *&v41 = v18;
      *(&v41 + 1) = v20;
      *(&v42 + 1) = v7;
      v43 = 0uLL;
      *&v44 = v30;
      *(&v44 + 1) = v11;
      *&v45 = v29;
      *(&v45 + 1) = v28;
      v46 = v13;
      MEMORY[0x28223BE20](v25);
      v26 = v31;
      (*(v32 + 16))(v48, &v47, &v41, sub_21B1948AC);
      if (v26)
      {
        v37 = v43;
        v38 = v44;
        v39 = v45;
        v40 = v46;
        v35 = v41;
        v36 = v42;
        sub_21B193B48(&v35);
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1((v48 + 1));
        return v7 & 1;
      }

      v37 = v43;
      v38 = v44;
      v39 = v45;
      v40 = v46;
      v35 = v41;
      v36 = v42;
      sub_21B193B48(&v35);
      swift_unknownObjectRelease();

      LOBYTE(v7) = v48[0];
    }

    __swift_destroy_boxed_opaque_existential_1((v48 + 1));
    return v7 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B194498@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = sub_21B19470C(0x7845657069636572, 0xEF6E6F6974756365, sub_21B1948CC);
  if (!v4)
  {
    *a4 = v9 & 1;
  }

  return sub_21B194544(a1, a2, a3);
}

uint64_t sub_21B194544(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 120);
  v8 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(*(v7 + 8) + 16))(v18, v8);
  v10 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v11 = (*(*(v9 + 8) + 8))(v10);
  v13 = v12;
  sub_21B17FB4C(a1 + 64, v19);
  v14 = v20;
  v15 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v17 = v6;
  v18[1] = v11;
  v18[2] = v13;
  (*(v15 + 8))(a3, &off_282CA47E8, &off_282CA47F8, &v17, v14, v15);

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_21B194680@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  result = (*(*(v9 + 16) + 16))(a2, a3, &off_282CA47F8, v8);
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t sub_21B19470C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v5 = v3;
  a3(&v18);
  if (v4)
  {
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v4;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_21B1948EC;
    *(v9 + 24) = v8;
    swift_beginAccess();
    v10 = *(v5 + 16);

    v11 = v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_21B1D292C(0, v10[2] + 1, 1, v10);
      *(v5 + 16) = v10;
    }

    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      v10 = sub_21B1D292C((v13 > 1), v14 + 1, 1, v10);
    }

    v10[2] = v14 + 1;
    v15 = &v10[2 * v14];
    v15[4] = sub_21B19490C;
    v15[5] = v9;
    *(v5 + 16) = v10;
    swift_endAccess();

    swift_willThrow();
  }

  else
  {
    v16 = v18;
  }

  return v16 & 1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_21B19494C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_21B194994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B194A04(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t BlocksController.deinit()
{
  v1 = v0;
  v2 = *(v0 + 40);

  sub_21B20CE48();

  v3 = *(v1 + 24);
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  sub_21B186488(v1 + 48, &qword_27CD6EC70, &qword_21B211CB0);
  v5 = *(v1 + 88);

  return v1;
}

uint64_t BlocksController.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 40);

  sub_21B20CE48();

  v3 = *(v1 + 24);
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  sub_21B186488(v1 + 48, &qword_27CD6EC70, &qword_21B211CB0);
  v5 = *(v1 + 88);

  return MEMORY[0x2821FE8D8](v1, 96, 7);
}

uint64_t BlocksController.__allocating_init(_:userBlockFactory:activityMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultManager];
  sub_21B18BFF8(a2, v17, &qword_27CD6EC70, &qword_21B211CB0);
  type metadata accessor for BlocksController();
  v9 = swift_allocObject();
  v10 = sub_21B20CEB8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_21B20CE38();
  if (v4)
  {

    swift_unknownObjectRelease();
    sub_21B186488(a2, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v17, &qword_27CD6EC70, &qword_21B211CB0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v13;
    sub_21B186488(a2, &qword_27CD6EC70, &qword_21B211CB0);
    *(v9 + 16) = v8;
    *(v9 + 24) = a3;
    *(v9 + 32) = a4;
    *(v9 + 40) = v14;
    v15 = v17[1];
    *(v9 + 48) = v17[0];
    *(v9 + 64) = v15;
    *(v9 + 80) = v18;
    *(v9 + 88) = 0;
  }

  return v9;
}

{
  v8 = [objc_opt_self() defaultManager];
  sub_21B18BFF8(a2, v13, &qword_27CD6EC70, &qword_21B211CB0);
  type metadata accessor for BlocksController();
  v9 = swift_allocObject();
  v10 = sub_21B20C868();
  sub_21B186488(a2, &qword_27CD6EC70, &qword_21B211CB0);
  *(v9 + 16) = v8;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = v10;
  v11 = v13[1];
  *(v9 + 48) = v13[0];
  *(v9 + 64) = v11;
  *(v9 + 80) = v14;
  *(v9 + 88) = a1;
  return v9;
}

uint64_t sub_21B194E24()
{
  if (*(v0 + 88))
  {
    v2 = *(v0 + 88);

    sub_21B20C848();
    if (v1)
    {
    }

    else
    {
      swift_getObjectType();
      sub_21B20D128();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B194F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoggingType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20C678();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  sub_21B1950C4(a2, v7);
  v13 = type metadata accessor for BaseHostEnvironment();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v12, v8);
  sub_21B197B98(v7, v16 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType, type metadata accessor for LoggingType);
  sub_21B195940(v16, &protocol witness table for BaseHostEnvironment, 0, 0);
}

uint64_t sub_21B1950C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoggingType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B195128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a5;
  v73 = a4;
  v76 = a3;
  v8 = type metadata accessor for LoggingType();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_21B20C548();
  v71 = *(v72 - 1);
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21B20C678();
  v90 = *(v75 - 8);
  v15 = *(v90 + 64);
  v16 = MEMORY[0x28223BE20](v75);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  sub_21B18BFF8(v5 + 48, v89, &qword_27CD6EC70, &qword_21B211CB0);
  v22 = *(v5 + 24);
  v21 = *(v5 + 32);
  sub_21B18BFF8(v76, v88, &qword_27CD6EF10, &qword_21B212468);
  v76 = a2;
  v23 = v77;
  sub_21B1983AC(a2, v89, &v81);
  if (v23)
  {
    sub_21B186488(v88, &qword_27CD6EF10, &qword_21B212468);
    sub_21B186488(v89, &qword_27CD6EC70, &qword_21B211CB0);
  }

  else
  {
    v63 = v21;
    v64 = v5;
    v59 = v11;
    v70 = v22;
    v69 = 0;
    v60 = v81;
    v68 = v82;
    v62 = v83;
    v61 = v84;
    v67 = v85;
    v66 = v86;
    v65 = v87;
    v24 = a1;
    ObjectType = swift_getObjectType();
    (*(v76 + 8))();
    v81 = 0x73656972657551;
    v82 = 0xE700000000000000;
    v26 = v71;
    v27 = v72;
    (*(v71 + 104))(v14, *MEMORY[0x277CC91D8], v72);
    sub_21B17FBB0();
    v77 = v20;
    sub_21B20C668();
    (*(v26 + 8))(v14, v27);
    v28 = v90 + 8;
    v72 = *(v90 + 8);
    (v72)(v18, v75);
    sub_21B18BFF8(v89, &v81, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B18BFF8(v88, &v78, &qword_27CD6EF10, &qword_21B212468);
    v90 = v28;
    if (v79)
    {
      v29 = v24;
      sub_21B17C284(&v78, v80);
      v30 = v74;
      v31 = v76;
      v32 = v70;
      v33 = v64;
      v34 = v63;
    }

    else
    {
      v31 = v76;
      v35 = v59;
      v29 = v24;
      (*(v76 + 16))(ObjectType, v76);
      LoggingType.makeLogHandler()(v80);
      sub_21B1972F0(v35);
      v30 = v74;
      v32 = v70;
      v33 = v64;
      v34 = v63;
      if (v79)
      {
        sub_21B186488(&v78, &qword_27CD6EF10, &qword_21B212468);
      }
    }

    v76 = type metadata accessor for RecipeProcessor();
    v5 = swift_allocObject();
    v36 = *(v33 + 16);
    v37 = *(v33 + 40);
    *(v5 + 144) = v30;
    *(v5 + 152) = v37;
    *(v5 + 120) = v29;
    *(v5 + 128) = v31;
    v38 = v73;
    *(v5 + 136) = v73;
    *(v5 + 56) = v36;
    *(v5 + 64) = v32;
    *(v5 + 72) = v34;
    sub_21B17FB4C(v80, v5 + 16);
    v39 = v68;
    *(v5 + 160) = v60;
    *(v5 + 168) = v39;
    v40 = v61;
    *(v5 + 176) = v62;
    *(v5 + 184) = v40;
    v41 = v66;
    *(v5 + 192) = v67;
    *(v5 + 200) = v41;
    *(v5 + 208) = v65;
    sub_21B18BFF8(&v81, v5 + 80, &qword_27CD6EC70, &qword_21B211CB0);
    v42 = v36;

    swift_unknownObjectRetain();
    sub_21B188EB8(v38);

    swift_unknownObjectRetain();

    v43 = sub_21B197980(MEMORY[0x277D84F90]);
    v44 = MEMORY[0x28223BE20](v43);
    v45 = v77;
    *(&v58 - 2) = v42;
    *(&v58 - 1) = v45;
    v46 = v69;
    v47 = sub_21B194A04(v44, sub_21B1980DC, (&v58 - 4), v41);
    if (v46)
    {

      __swift_destroy_boxed_opaque_existential_1(v80);
      sub_21B186488(&v81, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(v88, &qword_27CD6EF10, &qword_21B212468);
      sub_21B186488(v89, &qword_27CD6EC70, &qword_21B211CB0);
      (v72)(v45, v75);
      __swift_destroy_boxed_opaque_existential_1((v5 + 16));

      v48 = *(v5 + 64);
      swift_unknownObjectRelease();
      sub_21B186488(v5 + 80, &qword_27CD6EC70, &qword_21B211CB0);
      v49 = *(v5 + 120);
      swift_unknownObjectRelease();
      v50 = *(v5 + 144);
      sub_21B188EC8(*(v5 + 136));
      v51 = *(v5 + 152);

      v52 = *(v5 + 168);
      v53 = *(v5 + 192);
      v54 = *(v5 + 200);
      v55 = *(v5 + 208);

      swift_deallocPartialClassInstance();
    }

    else
    {
      v57 = v47;

      __swift_destroy_boxed_opaque_existential_1(v80);
      sub_21B186488(&v81, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(v88, &qword_27CD6EF10, &qword_21B212468);
      sub_21B186488(v89, &qword_27CD6EC70, &qword_21B211CB0);
      (v72)(v45, v75);
      *(v5 + 216) = v57;
    }
  }

  return v5;
}

uint64_t sub_21B195940(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v138 = a4;
  v136 = a3;
  v148 = sub_21B20C548();
  v143 = *(v148 - 8);
  v8 = *(v143 + 64);
  MEMORY[0x28223BE20](v148);
  v147 = (&v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = sub_21B20C678();
  v144 = *(v149 - 8);
  v10 = v144[8];
  v11 = MEMORY[0x28223BE20](v149);
  v139 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v142 = &v111 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v130 = &v111 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v131 = &v111 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v135 = &v111 - v20;
  MEMORY[0x28223BE20](v19);
  v137 = &v111 - v21;
  v22 = type metadata accessor for LoggingType();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v28 = a2 + 16;
  v27 = *(a2 + 16);
  v145 = ObjectType;
  v134 = v27;
  v27(ObjectType, a2);
  sub_21B2054D4(v165);
  sub_21B1972F0(v25);
  type metadata accessor for LogEntryCollector();
  v29 = swift_allocObject();
  *(v29 + 16) = MEMORY[0x277D84F90];
  v168 = (v29 + 16);
  v141 = v29;
  *(v29 + 24) = MEMORY[0x277D84F98];
  sub_21B17FB4C(v165, &v163);
  sub_21B18BFF8(v4 + 48, v162, &qword_27CD6EC70, &qword_21B211CB0);
  v30 = *(v4 + 24);
  v31 = *(v5 + 32);
  v32 = v5;
  sub_21B18BFF8(&v163, v161, &qword_27CD6EF10, &qword_21B212468);
  v33 = a2;
  v34 = v150;
  sub_21B1983AC(a2, v162, &v154);
  v35 = MEMORY[0x277CC91D8];
  v150 = v34;
  v140 = v33;
  v146 = a1;
  if (v34)
  {
    sub_21B186488(v161, &qword_27CD6EF10, &qword_21B212468);
    sub_21B186488(v162, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(&v163, &qword_27CD6EF10, &qword_21B212468);
    v36 = v150;
  }

  else
  {
    v124 = v31;
    v125 = v32;
    v122 = v156;
    v123 = v154;
    v120 = v28;
    v121 = v157;
    v132 = v30;
    v133 = v158;
    v127 = v159;
    v128 = v155;
    v126 = v160;
    v37 = v33;
    v38 = v33 + 8;
    v39 = *(v33 + 8);
    v40 = v135;
    v41 = v145;
    v112 = v39;
    v113 = v38;
    v39(v145, v37);
    v154 = 0x73656972657551;
    v155 = 0xE700000000000000;
    v42 = *v35;
    v43 = v143;
    v44 = *(v143 + 104);
    v45 = v147;
    v46 = v148;
    v118 = v42;
    v119 = v143 + 104;
    v117 = v44;
    v44(v147);
    v116 = sub_21B17FBB0();
    sub_21B20C668();
    v114 = *(v43 + 8);
    v115 = v43 + 8;
    v114(v45, v46);
    v47 = v144[1];
    v135 = (v144 + 1);
    v129 = v47;
    v47(v40, v149);
    sub_21B18BFF8(v162, &v154, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B18BFF8(v161, &v151, &qword_27CD6EF10, &qword_21B212468);
    if (v152)
    {
      sub_21B17C284(&v151, v153);
      v48 = v146;
      v49 = v125;
    }

    else
    {
      v50 = v146;
      v134(v41, v37);
      LoggingType.makeLogHandler()(v153);
      sub_21B1972F0(v25);
      v48 = v50;
      v49 = v125;
      if (v152)
      {
        sub_21B186488(&v151, &qword_27CD6EF10, &qword_21B212468);
      }
    }

    v134 = type metadata accessor for RecipeProcessor();
    v51 = swift_allocObject();
    v52 = *(v49 + 16);
    v53 = *(v49 + 40);
    *(v51 + 120) = v48;
    *(v51 + 128) = v37;
    *(v51 + 136) = v136;
    *(v51 + 144) = v138;
    *(v51 + 152) = v53;
    v54 = v132;
    *(v51 + 56) = v52;
    *(v51 + 64) = v54;
    *(v51 + 72) = v124;
    sub_21B17FB4C(v153, v51 + 16);
    v55 = v122;
    v56 = v127;
    v57 = v128;
    *(v51 + 160) = v123;
    *(v51 + 168) = v57;
    v58 = v121;
    *(v51 + 176) = v55;
    *(v51 + 184) = v58;
    *(v51 + 192) = v133;
    *(v51 + 200) = v56;
    *(v51 + 208) = v126;
    sub_21B18BFF8(&v154, v51 + 80, &qword_27CD6EC70, &qword_21B211CB0);
    v59 = v52;

    swift_unknownObjectRetain();
    sub_21B188EB8(v136);

    swift_unknownObjectRetain();

    v60 = sub_21B197980(MEMORY[0x277D84F90]);
    v61 = MEMORY[0x28223BE20](v60);
    *(&v111 - 2) = v59;
    v62 = v137;
    *(&v111 - 1) = v137;
    v63 = v150;
    v64 = sub_21B194A04(v61, sub_21B1980DC, (&v111 - 4), v56);
    v36 = v63;
    if (!v63)
    {
      v73 = v64;

      __swift_destroy_boxed_opaque_existential_1(v153);
      sub_21B186488(&v154, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(v161, &qword_27CD6EF10, &qword_21B212468);
      sub_21B186488(v162, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(&v163, &qword_27CD6EF10, &qword_21B212468);
      v74 = v149;
      v129(v62, v149);
      *(v51 + 216) = v73;
      sub_21B198E10();
      v75 = v148;

      v101 = v147;
      v102 = v166;
      v144 = v167;
      v150 = __swift_project_boxed_opaque_existential_1(v165, v166);
      v112(v145, v140);
      v103 = sub_21B20C338();
      v104 = *(v103 + 48);
      v105 = *(v103 + 52);
      swift_allocObject();
      v168 = sub_21B20C328();
      v163 = 0x6A2E657069636572;
      v164 = 0xEB000000006E6F73;
      v117(v101, v118, v75);
      v106 = v130;
      sub_21B20C658();
      v114(v101, v75);
      v107 = sub_21B20C688();
      v109 = v108;
      v148 = v102;
      v110 = v129;
      v129(v106, v74);
      sub_21B198044();
      sub_21B20C308();
      v110(v131, v74);
      sub_21B17DAF8(v107, v109);

      (*(v144[2] + 8))(v141, &off_282CA47E8, &off_282CA47F8, &v154, v148);
      sub_21B198098(v154, v155);

      return __swift_destroy_boxed_opaque_existential_1(v165);
    }

    __swift_destroy_boxed_opaque_existential_1(v153);
    sub_21B186488(&v154, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v161, &qword_27CD6EF10, &qword_21B212468);
    sub_21B186488(v162, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(&v163, &qword_27CD6EF10, &qword_21B212468);
    v129(v62, v149);
    __swift_destroy_boxed_opaque_existential_1((v51 + 16));

    v65 = *(v51 + 64);
    swift_unknownObjectRelease();
    sub_21B186488(v51 + 80, &qword_27CD6EC70, &qword_21B211CB0);
    v66 = *(v51 + 120);
    swift_unknownObjectRelease();
    v67 = *(v51 + 144);
    sub_21B188EC8(*(v51 + 136));
    v68 = *(v51 + 152);

    v69 = *(v51 + 168);
    v70 = *(v51 + 192);
    v71 = *(v51 + 200);
    v72 = *(v51 + 208);

    swift_deallocPartialClassInstance();
  }

  v76 = v147;
  v77 = swift_allocObject();
  v77[2] = 0xD000000000000010;
  v77[3] = 0x800000021B20F260;
  v77[4] = v36;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_21B1948EC;
  *(v78 + 24) = v77;
  v79 = v168;
  swift_beginAccess();
  v80 = *v79;
  v81 = v36;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v79 = v80;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v80 = sub_21B1D292C(0, v80[2] + 1, 1, v80);
    *v168 = v80;
  }

  v84 = v80[2];
  v83 = v80[3];
  v85 = v76;
  if (v84 >= v83 >> 1)
  {
    v80 = sub_21B1D292C((v83 > 1), v84 + 1, 1, v80);
  }

  v80[2] = v84 + 1;
  v86 = &v80[2 * v84];
  v86[4] = sub_21B19490C;
  v86[5] = v78;
  *v168 = v80;
  swift_endAccess();

  v87 = v36;
  swift_willThrow();
  v88 = v166;
  v138 = v167;
  v147 = __swift_project_boxed_opaque_existential_1(v165, v166);
  (*(v140 + 8))(v145);
  v89 = sub_21B20C338();
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  v168 = sub_21B20C328();
  v163 = 0x6A2E657069636572;
  v164 = 0xEB000000006E6F73;
  v92 = v143;
  v93 = v148;
  (*(v143 + 104))(v85, *MEMORY[0x277CC91D8], v148);
  sub_21B17FBB0();
  v94 = v139;
  sub_21B20C658();
  (*(v92 + 8))(v85, v93);
  v95 = sub_21B20C688();
  v97 = v96;
  v148 = v88;
  v150 = v87;
  v98 = v144[1];
  v99 = v149;
  v98(v94, v149);
  sub_21B198044();
  sub_21B20C308();
  v98(v142, v99);
  sub_21B17DAF8(v95, v97);

  (*(v138[2] + 8))(v141, &off_282CA47E8, &off_282CA47F8, &v154, v148);
  sub_21B198098(v154, v155);

  return __swift_destroy_boxed_opaque_existential_1(v165);
}

uint64_t sub_21B19686C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoggingType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_21B20C678();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  sub_21B17FB4C(a2, v20);
  type metadata accessor for DebugLogHandler();
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  sub_21B17FB4C(v20, v13 + 32);
  __swift_destroy_boxed_opaque_existential_1(v20);
  *(v13 + 24) = MEMORY[0x277D84FA0];
  *v7 = v13;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for BaseHostEnvironment();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v12, v8);
  sub_21B197B98(v7, v17 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType, type metadata accessor for LoggingType);
  sub_21B195940(v17, &protocol witness table for BaseHostEnvironment, 0, 0);
}

uint64_t sub_21B196A94(uint64_t a1)
{
  v57 = sub_21B20C548();
  v56 = *(v57 - 1);
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LoggingType();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B20C678();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v59 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v16 = *(v10 + 16);
  v16(&v47 - v14, a1, v9);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for BaseHostEnvironment();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v15, v9);
  sub_21B197B98(v8, v20 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType, type metadata accessor for LoggingType);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  swift_storeEnumTagMultiPayload();
  sub_21B2054D4(v71);
  sub_21B1972F0(v8);
  v21 = v60;
  sub_21B1983AC(&protocol witness table for BaseHostEnvironment, v72, &v64);
  if (v21)
  {

    sub_21B186488(v71, &qword_27CD6EF10, &qword_21B212468);
    return sub_21B186488(v72, &qword_27CD6EC70, &qword_21B211CB0);
  }

  else
  {
    v60 = 0;
    v50 = v64;
    v55 = v65;
    v49 = v66;
    v48 = v67;
    v53 = v68;
    v52 = v69;
    v51 = v70;
    v16(v15, v20 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v9);
    v64 = 0x73656972657551;
    v65 = 0xE700000000000000;
    v23 = v56;
    v24 = v57;
    (*(v56 + 104))(v4, *MEMORY[0x277CC91D8], v57);
    sub_21B17FBB0();
    sub_21B20C668();
    (*(v23 + 8))(v4, v24);
    v57 = *(v10 + 8);
    (v57)(v15, v9);
    sub_21B18BFF8(v72, &v64, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B18BFF8(v71, &v61, &qword_27CD6EF10, &qword_21B212468);
    v56 = v9;
    v54 = v10 + 8;
    if (v62)
    {
      sub_21B17C284(&v61, v63);
      v25 = v58;
    }

    else
    {
      sub_21B1950C4(v20 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType, v8);
      LoggingType.makeLogHandler()(v63);
      sub_21B1972F0(v8);
      v25 = v58;
      if (v62)
      {
        sub_21B186488(&v61, &qword_27CD6EF10, &qword_21B212468);
      }
    }

    v58 = type metadata accessor for RecipeProcessor();
    v26 = swift_allocObject();
    v27 = *(v25 + 16);
    *(v26 + 152) = *(v25 + 40);
    *(v26 + 120) = v20;
    *(v26 + 128) = &protocol witness table for BaseHostEnvironment;
    *(v26 + 136) = 0;
    *(v26 + 64) = 0;
    *(v26 + 72) = 0;
    *(v26 + 56) = v27;
    *(v26 + 144) = 0;
    sub_21B17FB4C(v63, v26 + 16);
    v28 = v55;
    *(v26 + 160) = v50;
    *(v26 + 168) = v28;
    v29 = v48;
    *(v26 + 176) = v49;
    *(v26 + 184) = v29;
    v30 = v52;
    *(v26 + 192) = v53;
    *(v26 + 200) = v30;
    *(v26 + 208) = v51;
    sub_21B18BFF8(&v64, v26 + 80, &qword_27CD6EC70, &qword_21B211CB0);

    v31 = v27;

    v32 = sub_21B197980(MEMORY[0x277D84F90]);
    v33 = MEMORY[0x28223BE20](v32);
    *(&v47 - 2) = v31;
    v34 = v59;
    *(&v47 - 1) = v59;
    v35 = v60;
    v36 = sub_21B194A04(v33, sub_21B197A84, (&v47 - 4), v30);
    v60 = v35;
    if (v35)
    {

      __swift_destroy_boxed_opaque_existential_1(v63);
      sub_21B186488(&v64, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(v71, &qword_27CD6EF10, &qword_21B212468);
      sub_21B186488(v72, &qword_27CD6EC70, &qword_21B211CB0);
      (v57)(v34, v56);
      __swift_destroy_boxed_opaque_existential_1((v26 + 16));

      v37 = *(v26 + 64);
      swift_unknownObjectRelease();
      sub_21B186488(v26 + 80, &qword_27CD6EC70, &qword_21B211CB0);
      v38 = *(v26 + 120);
      swift_unknownObjectRelease();
      v39 = *(v26 + 144);
      sub_21B188EC8(*(v26 + 136));
      v40 = *(v26 + 152);

      v41 = *(v26 + 168);
      v42 = *(v26 + 192);
      v43 = *(v26 + 200);
      v44 = *(v26 + 208);

      return swift_deallocPartialClassInstance();
    }

    else
    {
      v45 = v36;

      __swift_destroy_boxed_opaque_existential_1(v63);
      sub_21B186488(&v64, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(v71, &qword_27CD6EF10, &qword_21B212468);
      sub_21B186488(v72, &qword_27CD6EC70, &qword_21B211CB0);
      (v57)(v34, v56);
      *(v26 + 216) = v45;
      v46 = v60;
      sub_21B199320(&v74);
      if (v46)
      {
      }

      else
      {
      }
    }
  }
}

uint64_t sub_21B1972F0(uint64_t a1)
{
  v2 = type metadata accessor for LoggingType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B19734C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF48, &qword_21B2124F8);
    v3 = sub_21B20D808();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B18BFF8(v4, &v13, &qword_27CD6EC40, &qword_21B212500);
      v5 = v13;
      v6 = v14;
      result = sub_21B1B9778(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21B17C284(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_21B197480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF28, &qword_21B2124D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF30, &qword_21B2124E0);
    v8 = sub_21B20D808();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21B18BFF8(v10, v6, &qword_27CD6EF28, &qword_21B2124D8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21B1B9778(*v6, v13);
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
      v19 = type metadata accessor for DatasetColumnDescription();
      result = sub_21B197B98(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for DatasetColumnDescription);
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

unint64_t sub_21B19767C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF60, &qword_21B212518);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF68, &qword_21B212520);
    v8 = sub_21B20D808();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21B18BFF8(v10, v6, &qword_27CD6EF60, &qword_21B212518);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21B1B9778(*v6, v13);
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
      v19 = sub_21B20D198();
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

unint64_t sub_21B197868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF20, &qword_21B2124D0);
    v3 = sub_21B20D808();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21B1B9778(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
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

unint64_t sub_21B197980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF78, &unk_21B212530);
    v3 = sub_21B20D808();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21B1B9778(v5, v6);
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

void sub_21B197A84(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_21B1CB1B4(a1, a2);
}

uint64_t sub_21B197B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21B197C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF70, &qword_21B212528);
    v3 = sub_21B20D808();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_21B1B9778(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_21B197D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF50, &qword_21B212508);
    v3 = sub_21B20D808();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21B1B9778(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_21B197E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF58, &qword_21B212510);
    v3 = sub_21B20D808();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21B1B9778(v5, v6);
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

unint64_t sub_21B197F48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21B20D808();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21B1B9778(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_21B198044()
{
  result = qword_27CD6EF80;
  if (!qword_27CD6EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EF80);
  }

  return result;
}

uint64_t sub_21B198098(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21B1980F4()
{
  v0 = sub_21B20C828();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B20CA48();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277D3E5C8])
  {
    return 2;
  }

  if (v5 == *MEMORY[0x277D3E5B8])
  {
    return 4;
  }

  if (v5 == *MEMORY[0x277D3E5D8] || v5 == *MEMORY[0x277D3E5E0] || v5 == *MEMORY[0x277D3E5F0] || v5 == *MEMORY[0x277D3E5F8])
  {
    return 0;
  }

  if (v5 == *MEMORY[0x277D3E5D0] || v5 == *MEMORY[0x277D3E5E8] || v5 == *MEMORY[0x277D3E608])
  {
    return 1;
  }

  if (v5 == *MEMORY[0x277D3E5C0])
  {
    return 0;
  }

  if (v5 == *MEMORY[0x277D3E600])
  {
    return 4;
  }

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks11RecipeErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_21B1982F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B198340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_21B198384(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

void sub_21B1983AC(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = sub_21B20C678();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  sub_21B206120(ObjectType, a1, v10);
  if (v3)
  {
    v16 = v3;
    v12 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if (swift_dynamicCast())
    {
      sub_21B1998C0(v14[0], v14[1], v15);
    }

    else
    {
      sub_21B17FC58();
      swift_allocError();
      *v13 = v3;
      *(v13 + 8) = 0;
      *(v13 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_21B1998FC(a2, v14);
    sub_21B198510(v10, v14, a3);
  }
}

uint64_t sub_21B198510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_21B20D7B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B20C688();
  if (v3)
  {
    sub_21B199804(a2);
    v29 = sub_21B20C678();
    return (*(*(v29 - 8) + 8))(a1, v29);
  }

  else
  {
    v14 = v12;
    v46 = v13;
    v38 = a3;
    v15 = sub_21B20C338();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_21B20C328();
    if (qword_27CD6E940 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v7, qword_27CD7E028);
    (*(v8 + 16))(v11, v18, v7);
    sub_21B1998FC(a2, v43);
    v19 = v44;
    if (v44)
    {
      v20 = v45;
      v21 = __swift_project_boxed_opaque_existential_1(v43, v44);
      *(&v40 + 1) = v19;
      v41 = *(v20 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
      (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v21, v19);
      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {
      sub_21B199804(v43);
      v39 = 0u;
      v40 = 0u;
      v41 = 0;
    }

    v23 = type metadata accessor for CodingContext();
    v24 = swift_allocObject();
    v25 = v40;
    *(v24 + 16) = v39;
    *(v24 + 32) = v25;
    v26 = v41;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    *(v24 + 48) = v26;
    *(&v40 + 1) = v23;
    *&v39 = v24;
    v27 = sub_21B20C318();
    sub_21B1DF6EC(&v39, v11);
    v27(v43, 0);
    sub_21B19996C();
    v28 = v46;
    sub_21B20C308();

    sub_21B17DAF8(v14, v28);
    sub_21B199804(a2);
    v30 = sub_21B20C678();
    result = (*(*(v30 - 8) + 8))(a1, v30);
    v32 = *(&v39 + 1);
    v33 = v41;
    v34 = v40;
    v35 = v42;
    v36 = v38;
    *v38 = v39;
    v36[1] = v32;
    *(v36 + 1) = v34;
    v36[4] = v33;
    *(v36 + 5) = v35;
  }

  return result;
}

uint64_t sub_21B19887C()
{
  v33 = sub_21B20CF28();
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - v6;
  swift_beginAccess();
  v39 = v0;
  v7 = *(v0 + 216);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v32 = (v1 + 8);
  v34 = 0x800000021B20F360;
  v35 = 0x800000021B20F340;
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  v37 = v5;
  v38 = v7;
  while (v11)
  {
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v14 << 6);
    v18 = *(*(v7 + 56) + 8 * v17);
    if (*(v18 + 48))
    {
      v19 = *(v39 + 152);
      v40 = *(*(v7 + 48) + 16 * v17 + 8);
      v41 = 0;
      v42 = 0xE000000000000000;

      sub_21B20D6A8();

      v41 = 0xD00000000000001ALL;
      v42 = v34;
      MEMORY[0x21CEEBBB0](*(v18 + 16), *(v18 + 24));
      v20 = v36;
      sub_21B20CE98();

      sub_21B20CF08();
      v7 = v38;
      (*v32)(v20, v33);
      *(v18 + 48) = 0;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v21 = v39;
      __swift_destroy_boxed_opaque_existential_1((v39 + 16));

      v22 = *(v21 + 64);
      swift_unknownObjectRelease();
      sub_21B199804(v21 + 80);
      v23 = *(v21 + 120);
      swift_unknownObjectRelease();
      v24 = *(v21 + 144);
      sub_21B188EC8(*(v21 + 136));
      v25 = *(v21 + 152);

      v26 = *(v21 + 168);
      v27 = *(v21 + 192);
      v28 = *(v21 + 200);
      v29 = *(v21 + 208);

      v30 = *(v21 + 216);

      return v21;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B198C5C()
{
  sub_21B19887C();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t sub_21B198CB4()
{
  v2 = v1;
  v3 = v0;
  swift_beginAccess();
  v4 = *(v0 + 216);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = *(v0 + 216);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(v4 + 48) + 16 * v13 + 8);
      v15 = *(*(v4 + 56) + 8 * v13);
      v16 = *(v3 + 152);

      sub_21B1E7338(v16);
      if (v2)
      {
        break;
      }

      v7 &= v7 - 1;

      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_12;
      }

      v7 = *(v4 + 64 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B198E10()
{
  v1 = v0;
  if (v0[8])
  {
    v2 = v0[9];
    v3 = v0[8];
  }

  else
  {
    v4 = v0[15];
    v5 = v1[16];
    v6 = v1[15];
    ObjectType = swift_getObjectType();
    v8 = (*(v5 + 24))(ObjectType, v5);
    v2 = v9;
    v10 = v1[8];
    v1[8] = v8;
    v1[9] = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v11 = swift_getObjectType();
  v19 = 0;
  v12 = v1[21];
  v13 = v1[24];
  v16[0] = v1[20];
  v16[1] = v12;
  v17 = *(v1 + 11);
  v18 = v13;
  v14 = *(v2 + 32);

  swift_unknownObjectRetain();

  v14(&v19, v16, sub_21B1997A8, v1, MEMORY[0x277D84F78] + 8, v11, v2);
  swift_unknownObjectRelease();
}

uint64_t sub_21B198F58(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 64))
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
  }

  else
  {
    v6 = *(a1 + 120);
    v7 = *(a1 + 128);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24))(ObjectType, v7);
    v4 = v10;
    v11 = *(a1 + 64);
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v12 = swift_getObjectType();
  v42 = 1;
  v13 = *(a1 + 168);
  v14 = *(a1 + 192);
  v36[0] = *(a1 + 160);
  v36[1] = v13;
  v37 = *(a1 + 176);
  v38 = v14;
  v15 = *(v4 + 32);

  swift_unknownObjectRetain();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEF8, &unk_21B2126D0);
  v15(v34, &v42, v36, sub_21B1997C4, a1, v16, v12, v4);
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v18 = *&v34[0];
    v19 = *(a1 + 176);
    v39 = *(a1 + 160);
    v40 = v19;
    v41 = *(a1 + 192);
    if (*(a1 + 64))
    {
      v20 = *(a1 + 72);
      v21 = *(a1 + 64);
    }

    else
    {
      v22 = *(a1 + 120);
      v23 = *(a1 + 128);
      v24 = swift_getObjectType();
      v21 = (*(v23 + 24))(v24, v23);
      v20 = v25;
      v26 = *(a1 + 64);
      *(a1 + 64) = v21;
      *(a1 + 72) = v25;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v29 = __swift_project_boxed_opaque_existential_1((a1 + 16), v27);
    *(&v37 + 1) = v27;
    v38 = *(v28 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v29, v27);
    v31 = swift_getObjectType();
    v42 = 3;
    v34[0] = v39;
    v34[1] = v40;
    v35 = v41;
    MEMORY[0x28223BE20](v31);
    v33[2] = v18;
    v33[3] = &v39;
    v33[4] = v21;
    v33[5] = v20;
    v33[6] = v36;
    v32 = *(v20 + 32);
    swift_unknownObjectRetain();
    v32(&v42, v34, sub_21B1997E0, v33, MEMORY[0x277D84F78] + 8, v31, v20);
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1(v36);
  }
}

uint64_t sub_21B19927C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 208);
  v8[3] = type metadata accessor for RecipeProcessor();
  v8[4] = &off_282CA09B8;
  v8[0] = a1;

  v6 = sub_21B1938A8(v8, 0, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    result = sub_21B198CB4();
    *a2 = v6;
  }

  return result;
}

unint64_t sub_21B199320@<X0>(unint64_t *a1@<X8>)
{
  v4 = sub_21B20CF28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 208);
  v42 = type metadata accessor for RecipeProcessor();
  v43 = &off_282CA09B8;
  v41[0] = v1;

  v10 = sub_21B1938A8(v41, 1, v9);
  result = __swift_destroy_boxed_opaque_existential_1(v41);
  if (!v2)
  {
    sub_21B198CB4();
    v35 = v4;
    v36 = v8;
    v33 = a1;
    swift_beginAccess();
    v37 = v1;
    v12 = *(v1 + 216);
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    v34 = (v5 + 8);
    v39 = v12;
    result = swift_bridgeObjectRetain_n();
    v18 = 0;
    v38 = v10;
    if (v16)
    {
      while (1)
      {
        v19 = v18;
LABEL_11:
        v20 = __clz(__rbit64(v16)) | (v19 << 6);
        v21 = *(*(v39 + 48) + 16 * v20 + 8);
        v22 = *(*(v39 + 56) + 8 * v20);
        v23 = *(v37 + 152);

        sub_21B1E7C08();
        v40 = v21;
        v24 = *(v22 + 32);
        v25 = *(v22 + 40);
        v26 = v36;
        sub_21B20CEA8();
        (*v34)(v26, v35);
        sub_21B1E7338(v23);
        v16 &= v16 - 1;

        v18 = v19;
        v10 = v38;
        if (!v16)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      if (v19 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_11;
      }
    }

    result = sub_21B197C00(MEMORY[0x277D84F90]);
    v44 = result;
    v27 = *(v10 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = v10 + 32;
      while (v28 < *(v10 + 16))
      {
        sub_21B17FB4C(v29, v41);
        v30 = v42;
        v31 = v43;
        __swift_project_boxed_opaque_existential_1(v41, v42);
        (*(v31[3] + 1))(&v44, v30);
        ++v28;
        result = __swift_destroy_boxed_opaque_existential_1(v41);
        v29 += 40;
        if (v27 == v28)
        {
          v32 = v44;
          goto LABEL_19;
        }
      }

      goto LABEL_21;
    }

    v32 = result;
LABEL_19:

    *v33 = v32;
  }

  return result;
}

uint64_t sub_21B199804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC70, &qword_21B211CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B19986C()
{
  result = qword_27CD6EF88;
  if (!qword_27CD6EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EF88);
  }

  return result;
}

void sub_21B1998C0(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      goto LABEL_8;
    }

    if (a3 != 3)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  if (a3 == 1)
  {
LABEL_8:
  }
}

uint64_t sub_21B1998FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC70, &qword_21B211CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B19996C()
{
  result = qword_27CD6EF90;
  if (!qword_27CD6EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EF90);
  }

  return result;
}

uint64_t SyntaxError.QueryType.description.getter()
{
  if (*v0)
  {
    result = 0x7551206B636F6C42;
  }

  else
  {
    result = 0x6575512077656956;
  }

  *v0;
  return result;
}

uint64_t SyntaxError.QueryType.hashValue.getter()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](v1);
  return sub_21B20DCA8();
}

uint64_t sub_21B199AAC()
{
  if (*v0)
  {
    result = 0x7551206B636F6C42;
  }

  else
  {
    result = 0x6575512077656956;
  }

  *v0;
  return result;
}

id SyntaxError.underlayingError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SyntaxError.queryName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SyntaxError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*(v0 + 24))
  {
    v4 = 0x7551206B636F6C42;
  }

  else
  {
    v4 = 0x6575512077656956;
  }

  if (*(v0 + 24))
  {
    v5 = 0xEB00000000797265;
  }

  else
  {
    v5 = 0xEA00000000007972;
  }

  MEMORY[0x21CEEBBB0](v4, v5);

  MEMORY[0x21CEEBBB0](8736, 0xE200000000000000);
  MEMORY[0x21CEEBBB0](v2, v3);
  MEMORY[0x21CEEBBB0](2112034, 0xE300000000000000);
  swift_getErrorValue();
  sub_21B20DB08();
  return 0;
}

unint64_t sub_21B199C50()
{
  result = qword_27CD6EF98;
  if (!qword_27CD6EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EF98);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21B199CBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21B199D04(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Interval(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Interval(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t DefaultHostController.timeWindowConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_timeWindowConfig);
  v2 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_timeWindowConfig + 8);
  return swift_unknownObjectRetain();
}

uint64_t DefaultHostController.queryParametersConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig);
  v2 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig + 8);
  return swift_unknownObjectRetain();
}

uint64_t DefaultHostController.recipeURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_recipeURL;
  v4 = sub_21B20C678();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *sub_21B19A080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v10;
  v15 = *v12;
  v16 = OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_recipeURL;
  v17 = sub_21B20C678();
  v18 = *(v17 - 8);
  v32 = a1;
  (*(v18 + 16))(&v12[v16], a1, v17);
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  sub_21B19B018(&qword_27CD6EFC0, type metadata accessor for DefaultHostController);
  v20 = static HostControlling.entitledForDataSources()();
  if (v11)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_21B1972F0(a10);
    sub_21B186488(a9, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(a4, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(a3, &qword_27CD6ED28, &unk_21B212870);
    v21 = *(v18 + 8);
    v21(v32, v17);
    v21(&v12[v16], v17);
    type metadata accessor for DefaultHostController();
    v22 = *(*v12 + 48);
    v23 = *(*v12 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_21B1D23E8(v20);
    (*(v18 + 8))(v32, v17);
    *(v12 + 2) = v19;
    sub_21B18FED8(a3, &v12[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_mainDatabaseConfig]);
    sub_21B18FED8(a4, &v12[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_tempDatabaseConfig]);
    v24 = &v12[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_timeWindowConfig];
    *v24 = a5;
    *(v24 + 1) = a6;
    v25 = &v12[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig];
    *v25 = a7;
    *(v25 + 1) = a8;
    v26 = &v12[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_userBlockFactory];
    *(v26 + 4) = *(a9 + 32);
    v27 = *(a9 + 16);
    *v26 = *a9;
    *(v26 + 1) = v27;
    sub_21B19AB44(a10, &v12[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_loggingType]);
  }

  return v12;
}

uint64_t sub_21B19A384()
{
  v1 = type metadata accessor for LoggingType();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B20C678();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_recipeURL, v5);
  v10 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_timeWindowConfig);
  v11 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_timeWindowConfig + 8);
  v13 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig);
  v12 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig + 8);
  sub_21B1950C4(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_loggingType, v4);
  v14 = type metadata accessor for DefaultHostEnvironment();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
  *v18 = v10;
  v18[1] = v11;
  v19 = (v17 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig);
  *v19 = v13;
  v19[1] = v12;
  (*(v6 + 32))(v17 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v9, v5);
  sub_21B19AB44(v4, v17 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v17;
}

uint64_t sub_21B19A578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B18BFF8(v3 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_userBlockFactory, &v11, &qword_27CD6EC70, &qword_21B211CB0);
  if (v12)
  {
    sub_21B18C110(&v11, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(*(v8 + 8) + 8))(a1, a2, a3, v7);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_21B186488(&v11, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B19ABA8();
    swift_allocError();
    *v10 = xmmword_21B212860;
    return swift_willThrow();
  }
}

uint64_t sub_21B19A6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = a1;
  v8 = *a4;
  v7 = a4[1];
  v10 = a4[2];
  v9 = a4[3];
  v11 = a4[4];
  sub_21B18BFF8(v4 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_userBlockFactory, &v18, &qword_27CD6EC70, &qword_21B211CB0);
  if (v20)
  {
    sub_21B18C110(&v18, v22);
    v17 = a3;
    v12 = a2;
    v13 = v23;
    v14 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    *&v18 = v8;
    *(&v18 + 1) = v7;
    v19 = v10;
    v20 = v9;
    v21 = v11;
    (*(v14 + 16))(v25, v12, v17, &v18, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_21B186488(&v18, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B19ABA8();
    swift_allocError();
    *v16 = xmmword_21B212860;
    return swift_willThrow();
  }
}

uint64_t DefaultHostController.deinit()
{
  v1 = *(v0 + 16);

  sub_21B186488(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_mainDatabaseConfig, &qword_27CD6ED28, &unk_21B212870);
  sub_21B186488(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_tempDatabaseConfig, &qword_27CD6ED28, &unk_21B212870);
  v2 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_timeWindowConfig);
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig);
  swift_unknownObjectRelease();
  sub_21B186488(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_userBlockFactory, &qword_27CD6EC70, &qword_21B211CB0);
  v4 = OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_recipeURL;
  v5 = sub_21B20C678();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_21B1972F0(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_loggingType);
  return v0;
}

uint64_t DefaultHostController.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  sub_21B186488(&v0[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_mainDatabaseConfig], &qword_27CD6ED28, &unk_21B212870);
  sub_21B186488(&v0[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_tempDatabaseConfig], &qword_27CD6ED28, &unk_21B212870);
  v2 = *&v0[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_timeWindowConfig];
  swift_unknownObjectRelease();
  v3 = *&v0[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig];
  swift_unknownObjectRelease();
  sub_21B186488(&v0[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_userBlockFactory], &qword_27CD6EC70, &qword_21B211CB0);
  v4 = OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_recipeURL;
  v5 = sub_21B20C678();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  sub_21B1972F0(&v0[OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_loggingType]);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_21B19AB44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoggingType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B19ABA8()
{
  result = qword_27CD6EFA0;
  if (!qword_27CD6EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EFA0);
  }

  return result;
}

uint64_t type metadata accessor for DefaultHostController()
{
  result = qword_27CD6EFB0;
  if (!qword_27CD6EFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B19ACA4()
{
  sub_21B19AEC8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_21B20C678();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for LoggingType();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21B19AEC8()
{
  if (!qword_27CD6EDD0)
  {
    type metadata accessor for DatabaseConfig();
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD6EDD0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks16DefaultHostErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B19AF38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B19AF8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21B19AFE8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B19B018(unint64_t *a1, void (*a2)(uint64_t))
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

PoirotBlocks::BlockActivityType_optional __swiftcall BlockActivityType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 0x20100030303uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21B19B094()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](v1 + 3);
  return sub_21B20DCA8();
}

uint64_t sub_21B19B10C()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](v1 + 3);
  return sub_21B20DCA8();
}

PoirotBlocks::EngineActivityType_optional __swiftcall EngineActivityType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 0x30201040004uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21B19B1C8()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](qword_21B212B88[v1]);
  return sub_21B20DCA8();
}

uint64_t sub_21B19B250()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](qword_21B212B88[v1]);
  return sub_21B20DCA8();
}

uint64_t ActivityMonitoring.measureActivity<A>(_:for:_:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = a2[3];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v16 = *a1;
  v15 = v9;
  return (*(a7 + 8))(&v16, v11, v12, v13, &v15, v7, v8, v10, a3, a4, a6, a5, a7);
}

{
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v15 = *a1;
  return (*(a7 + 24))(&v15, v12, v11, v13, a3, a4, a6, a5, a7);
}

unint64_t sub_21B19B3EC()
{
  result = qword_27CD6EFC8;
  if (!qword_27CD6EFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EFC8);
  }

  return result;
}

unint64_t sub_21B19B444()
{
  result = qword_27CD6EFD0;
  if (!qword_27CD6EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EFD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Query.UsageState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Query.UsageState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of ActivityMonitoring.measureActivity<A>(_:for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 16))();
}

{
  return (*(a7 + 32))();
}

uint64_t sub_21B19B6D4(uint64_t a1)
{
  result = sub_21B19B75C(&qword_27CD6EFD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19B718(uint64_t a1)
{
  result = sub_21B19B75C(&qword_27CD6EFE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19B75C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21B20D4D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B19B7A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F010, &qword_21B212C60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-v8];
  v10 = sub_21B20D198();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = a1[1];
  swift_beginAccess();
  v17 = *(v3 + 16);
  if (*(v17 + 16))
  {
    v18 = *(v3 + 16);

    v19 = sub_21B1B9778(v15, v16);
    if (v20)
    {
      (*(v11 + 16))(v14, *(v17 + 56) + *(v11 + 72) * v19, v10);

      return (*(v11 + 32))(a2, v14, v10);
    }
  }

  sub_21B20D188();
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_21B1DF514(v9, v15, v16);
  return swift_endAccess();
}

uint64_t sub_21B19BA88(unsigned __int8 *a1, __int128 *a2, void (*a3)(uint64_t))
{
  v5 = v3;
  v9 = type metadata accessor for MeasurmentState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a2[1];
  v26 = *a2;
  v27 = v14;
  v28 = *(a2 + 4);
  v29 = v13;
  v15 = sub_21B19BEC8(a2, &v29, v12);
  a3(v15);
  if (v4)
  {
    swift_willThrow();
    v16 = v4;
    v17 = sub_21B19D280(v4);
    if (!v13)
    {
      v19 = v17;
      v20 = v18;
      v21 = v28;
      if (v28)
      {
        v22 = v27;
        sub_21B20C6E8();
        (*(*v5 + 200))(*(&v22 + 1), v21, v22, v19, v20);
      }

      sub_21B19C21C(v12, v5, &v26, v19, v20);
    }
  }

  else if (!v13)
  {
    v23 = v28;
    if (v28)
    {
      v24 = v27;
      sub_21B20C6E8();
      (*(*v5 + 200))(*(&v24 + 1), v23, v24, 0, 0);
    }

    sub_21B19C21C(v12, v5, &v26, 0, 0);
  }

  return sub_21B19DB5C(v12);
}

uint64_t sub_21B19BC84(unsigned __int8 *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = v3;
  v9 = type metadata accessor for MeasurmentState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a2 + 48);
  v33 = *(a2 + 32);
  v34 = v14;
  v35 = *(a2 + 64);
  v36 = *(a2 + 80);
  v15 = *(a2 + 16);
  v31 = *a2;
  v32 = v15;
  v37 = v13;
  v16 = sub_21B19C6D4(a2, &v37, v12);
  a3(v16);
  if (v4)
  {
    swift_willThrow();
    v17 = v4;
    v18 = sub_21B19D280(v4);
    if (v13 == 2)
    {
      v20 = v18;
      v21 = v19;
      v22 = *(&v33 + 1);
      if (*(&v33 + 1))
      {
        v23 = v33;
        v24 = v35;
        sub_21B20C6E8();
        v37 = v32;
        (*(*v5 + 216))(v23, v22, v24, &v37, *(&v32 + 1), v20, v21, -v25);
      }

      sub_21B19CCB0(v12, v5, &v31, v20, v21);
    }
  }

  else if (v13 == 2)
  {
    v26 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v27 = v33;
      v28 = v35;
      sub_21B20C6E8();
      v37 = v32;
      (*(*v5 + 216))(v27, v26, v28, &v37, *(&v32 + 1), 0, 0, -v29);
    }

    sub_21B19CCB0(v12, v5, &v31, 0, 0);
  }

  return sub_21B19DB5C(v12);
}

uint64_t sub_21B19BEC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21B20D168();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = sub_21B20D198();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  if (!*a2)
  {
    v37 = v17;
    v38 = v16;
    v39 = v7;
    v21 = a1[3];
    v22 = a1[4];
    v24 = a1[1];
    v23 = a1[2];
    v40[0] = *a1;
    v40[1] = v24;
    v40[2] = v23;
    v40[3] = v21;
    v40[4] = v22;
    sub_21B19B7A0(v40, v19);

    sub_21B20D158();
    v25 = sub_21B20D178();
    v36 = sub_21B20D5B8();
    if (sub_21B20D5C8())
    {
      v26 = v23;
      v27 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40[0] = v35;
      *v27 = 136315394;
      *(v27 + 4) = sub_21B19D4B0(0x6E6F6973726576, 0xE700000000000000, v40);
      *(v27 + 12) = 2048;
      *(v27 + 14) = v26;

      v28 = sub_21B20D148();
      _os_signpost_emit_with_name_impl(&dword_21B179000, v25, v36, v28, "endToEnd", "%s=%lu", v27, 0x16u);
      v29 = v35;
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x21CEECC50](v29, -1, -1);
      MEMORY[0x21CEECC50](v27, -1, -1);
    }

    else
    {
    }

    v30 = v39;
    (*(v39 + 16))(v11, v13, v6);
    v31 = sub_21B20D1D8();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v20 = sub_21B20D1C8();
    (*(v30 + 8))(v13, v6);
    (*(v37 + 8))(v19, v38);
  }

  sub_21B20C718();
  result = type metadata accessor for MeasurmentState();
  *(a3 + *(result + 20)) = v20;
  return result;
}

uint64_t sub_21B19C21C(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5)
{
  v43 = a5;
  v42 = a4;
  v7 = sub_21B20D1A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21B20D168();
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v45);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21B20D198();
  v16 = *(v44 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v44);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for MeasurmentState();
  if (*(a1 + *(result + 20)))
  {

    sub_21B19B7A0(a3, v19);
    v21 = sub_21B20D178();
    sub_21B20D1B8();
    v41 = sub_21B20D5A8();
    if (sub_21B20D5C8())
    {

      sub_21B20D1E8();

      if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D85B00])
      {
        v22 = 0;
        v23 = 0;
        v40 = "[Error] Interval already ended";
      }

      else
      {
        (*(v8 + 8))(v11, v7);
        v40 = "%s=%s,%s=%ld";
        v23 = 2;
        v22 = 4;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = v23;
      *(v24 + 1) = v22;
      *(v24 + 2) = 2080;
      v26 = sub_21B19D4B0(0x44656D6F6374756FLL, 0xED00006E69616D6FLL, &v46);
      v27 = v42;
      *(v24 + 4) = v26;
      v28 = 0xE600000000000000;
      v29 = 0x656E69676E65;
      *(v24 + 12) = 2080;
      v30 = 0xE300000000000000;
      v31 = 7106931;
      v32 = 0xEB0000000072657ALL;
      v33 = 0x6974616D65686373;
      if (v27 != 4)
      {
        v33 = 1919251317;
        v32 = 0xE400000000000000;
      }

      if (v27 != 3)
      {
        v31 = v33;
        v30 = v32;
      }

      v34 = 0xE700000000000000;
      v35 = 0x6E776F6E6B6E75;
      if (v27 != 1)
      {
        v35 = 0x6574696C7173;
        v34 = 0xE600000000000000;
      }

      if (v27)
      {
        v29 = v35;
        v28 = v34;
      }

      if (v27 <= 2)
      {
        v36 = v29;
      }

      else
      {
        v36 = v31;
      }

      if (v27 <= 2)
      {
        v37 = v28;
      }

      else
      {
        v37 = v30;
      }

      v38 = sub_21B19D4B0(v36, v37, &v46);

      *(v24 + 14) = v38;
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_21B19D4B0(0x43656D6F6374756FLL, 0xEB0000000065646FLL, &v46);
      *(v24 + 32) = 2048;
      *(v24 + 34) = v43;
      v39 = sub_21B20D148();
      _os_signpost_emit_with_name_impl(&dword_21B179000, v21, v41, v39, "endToEnd", v40, v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CEECC50](v25, -1, -1);
      MEMORY[0x21CEECC50](v24, -1, -1);
    }

    (*(v12 + 8))(v15, v45);
    return (*(v16 + 8))(v19, v44);
  }

  return result;
}

uint64_t sub_21B19C6D4@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_21B20D168();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = sub_21B20D198();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v59 = *(a1 + 10);
  v20 = a1[2];
  v21 = a1[4];
  v57 = a1[3];
  v58 = v21;
  v22 = a1[1];
  v54 = *a1;
  v55 = v22;
  v56 = v20;
  if (*a2 == 2)
  {
    v49 = v16;
    v50 = v15;
    v52[0] = v57;
    v48 = v58;
    v52[1] = v58;
    v53 = v59;

    sub_21B19B7A0(v52, v18);

    sub_21B19DAA4(&v54, v52);
    sub_21B19DAA4(&v54, v52);
    sub_21B20D158();
    v23 = sub_21B20D178();
    v24 = sub_21B20D5B8();
    if (sub_21B20D5C8())
    {
      v25 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v52[0] = v47;
      *v25 = 136316418;
      *(v25 + 4) = sub_21B19D4B0(0x6E6F6973726576, 0xE700000000000000, v52);
      *(v25 + 12) = 2048;
      *(v25 + 14) = v48;
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_21B19D4B0(0x7079546B636F6C62, 0xE900000000000065, v52);
      *(v25 + 32) = 2080;
      if (v55 > 4u)
      {
        v33 = 0x646E6957656D6974;
        v34 = 0x6C656E69746E6573;
        v35 = 0xEA00000000007372;
        if (v55 == 8)
        {
          v35 = 0xE800000000000000;
        }

        else
        {
          v34 = 0x6574656D61726170;
        }

        if (v55 == 7)
        {
          v35 = 0xEA0000000000776FLL;
        }

        else
        {
          v33 = v34;
        }

        v36 = 0xE400000000000000;
        v37 = 1852403562;
        if (v55 != 5)
        {
          v37 = 0x6966654472657375;
          v36 = 0xEB0000000064656ELL;
        }

        if (v55 <= 6u)
        {
          v31 = v37;
        }

        else
        {
          v31 = v33;
        }

        if (v55 <= 6u)
        {
          v32 = v36;
        }

        else
        {
          v32 = v35;
        }
      }

      else
      {
        v26 = 0xEB000000006E6F69;
        v27 = 0x7461676572676761;
        v28 = 0x6974636172747865;
        v29 = 0xEA00000000006E6FLL;
        v30 = 0xEA00000000003256;
        if (v55 != 3)
        {
          v30 = 0xE800000000000000;
        }

        if (v55 != 2)
        {
          v28 = 0x6574616C706D6574;
          v29 = v30;
        }

        if (!v55)
        {
          v27 = 0xD000000000000010;
          v26 = 0x800000021B20E790;
        }

        if (v55 <= 1u)
        {
          v31 = v27;
        }

        else
        {
          v31 = v28;
        }

        if (v55 <= 1u)
        {
          v32 = v26;
        }

        else
        {
          v32 = v29;
        }
      }

      v38 = sub_21B19D4B0(v31, v32, v52);

      *(v25 + 34) = v38;
      *(v25 + 42) = 2080;
      *(v25 + 44) = sub_21B19D4B0(0x7165536B636F6C62, 0xEF644965636E6575, v52);
      *(v25 + 52) = 2048;
      sub_21B193B48(&v54);
      *(v25 + 54) = *(&v55 + 1);
      sub_21B193B48(&v54);
      v39 = sub_21B20D148();
      _os_signpost_emit_with_name_impl(&dword_21B179000, v23, v24, v39, "block", "%s=%lu,%s=%s,%s=%lu", v25, 0x3Eu);
      v40 = v47;
      swift_arrayDestroy();
      MEMORY[0x21CEECC50](v40, -1, -1);
      MEMORY[0x21CEECC50](v25, -1, -1);
    }

    else
    {
      sub_21B193B48(&v54);
      sub_21B193B48(&v54);
    }

    (*(v6 + 16))(v10, v12, v5);
    v41 = sub_21B20D1D8();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v19 = sub_21B20D1C8();
    (*(v6 + 8))(v12, v5);
    (*(v49 + 8))(v18, v50);
  }

  v44 = v51;
  sub_21B20C718();
  result = type metadata accessor for MeasurmentState();
  *(v44 + *(result + 20)) = v19;
  return result;
}

uint64_t sub_21B19CCB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v50 = a5;
  v49 = a4;
  v7 = sub_21B20D1A8();
  v48 = *(v7 - 8);
  v8 = *(v48 + 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_21B20D168();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_21B20D198();
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = type metadata accessor for MeasurmentState();
  if (*(a1 + *(result + 20)))
  {
    v46 = v16;
    v47 = v11;
    v21 = *(a3 + 64);
    v53[0] = *(a3 + 48);
    v53[1] = v21;
    v54 = *(a3 + 80);
    v22 = *(a3 + 56);

    sub_21B193CC0(v53, v52);
    sub_21B19B7A0((a3 + 48), v19);

    v23 = sub_21B20D178();
    sub_21B20D1B8();
    v24 = sub_21B20D5A8();
    if (sub_21B20D5C8())
    {
      v45 = v24;

      sub_21B20D1E8();

      v25 = v48;
      if ((*(v48 + 11))(v10, v7) == *MEMORY[0x277D85B00])
      {
        v26 = 0;
        v27 = 0;
        v48 = "[Error] Interval already ended";
      }

      else
      {
        (*(v25 + 1))(v10, v7);
        v48 = "%s=%s,%s=%ld";
        v27 = 2;
        v26 = 4;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52[0] = v29;
      *v28 = v27;
      *(v28 + 1) = v26;
      *(v28 + 2) = 2080;
      v30 = sub_21B19D4B0(0x44656D6F6374756FLL, 0xED00006E69616D6FLL, v52);
      v31 = v49;
      *(v28 + 4) = v30;
      v32 = 0xE600000000000000;
      v33 = 0x656E69676E65;
      *(v28 + 12) = 2080;
      v34 = 0xE300000000000000;
      v35 = 7106931;
      v36 = 0xEB0000000072657ALL;
      v37 = 0x6974616D65686373;
      if (v31 != 4)
      {
        v37 = 1919251317;
        v36 = 0xE400000000000000;
      }

      if (v31 != 3)
      {
        v35 = v37;
        v34 = v36;
      }

      v38 = 0xE700000000000000;
      v39 = 0x6E776F6E6B6E75;
      if (v31 != 1)
      {
        v39 = 0x6574696C7173;
        v38 = 0xE600000000000000;
      }

      if (v31)
      {
        v33 = v39;
        v32 = v38;
      }

      if (v31 <= 2)
      {
        v40 = v33;
      }

      else
      {
        v40 = v35;
      }

      if (v31 <= 2)
      {
        v41 = v32;
      }

      else
      {
        v41 = v34;
      }

      v42 = sub_21B19D4B0(v40, v41, v52);

      *(v28 + 14) = v42;
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_21B19D4B0(0x43656D6F6374756FLL, 0xEB0000000065646FLL, v52);
      *(v28 + 32) = 2048;
      *(v28 + 34) = v50;
      v43 = sub_21B20D148();
      _os_signpost_emit_with_name_impl(&dword_21B179000, v23, v45, v43, "block", v48, v28, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CEECC50](v29, -1, -1);
      MEMORY[0x21CEECC50](v28, -1, -1);

      (*(v12 + 8))(v15, v47);
    }

    else
    {

      (*(v12 + 8))(v15, v47);
    }

    return (*(v51 + 8))(v19, v46);
  }

  return result;
}

uint64_t sub_21B19D1D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21B19D280(void *a1)
{
  v18 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EFF0, &qword_21B212C40);
  if (swift_dynamicCast())
  {
    sub_21B17C284(&v15, v19);
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v5 = (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v5;
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_21B186488(&v15, &qword_27CD6EFF8, &qword_21B212C48);
    v18 = a1;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F000, &qword_21B212C50);
    if (swift_dynamicCast())
    {
      sub_21B17C284(&v15, v19);
      v8 = v20;
      v9 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v9 + 16))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return 5;
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      sub_21B186488(&v15, &qword_27CD6F008, &qword_21B212C58);
      v19[0] = a1;
      v10 = a1;
      v11 = sub_21B20DAF8();
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = swift_allocError();
        *v13 = a1;
      }

      v14 = sub_21B20C4F8();

      [v14 code];
      return 1;
    }
  }
}

uint64_t sub_21B19D4B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21B19D57C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21B19DB00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21B19D57C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21B19D688(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21B20D6F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21B19D688(uint64_t a1, unint64_t a2)
{
  v4 = sub_21B19D6D4(a1, a2);
  sub_21B19D804(&unk_282C9F988);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21B19D6D4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21B19D8F0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21B20D6F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21B20D3A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21B19D8F0(v10, 0);
        result = sub_21B20D698();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21B19D804(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21B19D964(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21B19D8F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EFE8, &unk_21B212C30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21B19D964(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EFE8, &unk_21B212C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t type metadata accessor for MeasurmentState()
{
  result = qword_27CD6F018;
  if (!qword_27CD6F018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B19DB00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21B19DB5C(uint64_t a1)
{
  v2 = type metadata accessor for MeasurmentState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21B19DBE0()
{
  sub_21B20C728();
  if (v0 <= 0x3F)
  {
    sub_21B19DC64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B19DC64()
{
  if (!qword_27CD6F028)
  {
    sub_21B20D1D8();
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD6F028);
    }
  }
}

uint64_t sub_21B19DCC4()
{
  v1 = v0;
  v2 = sub_21B20CF48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D3E400] || v7 == *MEMORY[0x277D3E3E0] || v7 == *MEMORY[0x277D3E3D0] || v7 == *MEMORY[0x277D3E3E8] || v7 == *MEMORY[0x277D3E410] || v7 == *MEMORY[0x277D3E3C8] || v7 == *MEMORY[0x277D3E408] || v7 == *MEMORY[0x277D3E3D8] || v7 != *MEMORY[0x277D3E3F8] && v7 != *MEMORY[0x277D3E3F0] && v7 != *MEMORY[0x277D3E428] && v7 != *MEMORY[0x277D3E418] && v7 != *MEMORY[0x277D3E438] && v7 != *MEMORY[0x277D3E440] && v7 != *MEMORY[0x277D3E420] && v7 != *MEMORY[0x277D3E430])
  {
    (*(v3 + 8))(v6, v2);
  }

  return 4;
}

uint64_t SchematizerError.outcomeCode.getter()
{
  v1 = v0;
  v2 = sub_21B20CF48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D3E400])
  {
    v8 = 2;
  }

  else if (v7 == *MEMORY[0x277D3E3E0])
  {
    v8 = 3;
  }

  else if (v7 == *MEMORY[0x277D3E3D0])
  {
    v8 = 4;
  }

  else if (v7 == *MEMORY[0x277D3E3E8])
  {
    v8 = 5;
  }

  else if (v7 == *MEMORY[0x277D3E410])
  {
    v8 = 9;
  }

  else if (v7 == *MEMORY[0x277D3E3C8])
  {
    v8 = 14;
  }

  else if (v7 == *MEMORY[0x277D3E408])
  {
    v8 = 15;
  }

  else if (v7 == *MEMORY[0x277D3E3D8])
  {
    v8 = 16;
  }

  else
  {
    if (v7 == *MEMORY[0x277D3E3F8])
    {
      return 1;
    }

    if (v7 == *MEMORY[0x277D3E3F0])
    {
      return 6;
    }

    if (v7 == *MEMORY[0x277D3E428])
    {
      return 7;
    }

    if (v7 == *MEMORY[0x277D3E418])
    {
      return 8;
    }

    if (v7 == *MEMORY[0x277D3E438])
    {
      return 10;
    }

    if (v7 == *MEMORY[0x277D3E440])
    {
      return 11;
    }

    if (v7 == *MEMORY[0x277D3E420])
    {
      return 12;
    }

    if (v7 == *MEMORY[0x277D3E430])
    {
      return 13;
    }

    v8 = 0;
  }

  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_21B19E264(uint64_t a1)
{
  result = sub_21B19E2F0(&qword_27CD6F030);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19E2AC(uint64_t a1)
{
  result = sub_21B19E2F0(&qword_27CD6F038);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19E2F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21B20CF48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B19E334()
{
  v1 = sub_21B20CE28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v27 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v25 - v7);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = *(v2 + 16);
  v28 = v0;
  v11(&v25 - v9, v0, v1);
  v12 = *(v2 + 88);
  v13 = v12(v10, v1);
  v14 = *MEMORY[0x277D3E250];
  v26 = *(v2 + 8);
  v26(v10, v1);
  if (v13 != v14)
  {
    v20 = v27;
    v11(v27, v28, v1);
    v21 = v12(v20, v1);
    v22 = v20;
    if (v21 == v14)
    {
      (*(v2 + 96))(v20, v1);
      v23 = *v20;
      v24 = *(v22 + 2);

      return 3;
    }

    if (v21 == *MEMORY[0x277D3E268])
    {
LABEL_40:
      v26(v20, v1);
      return 3;
    }

    if (v21 == *MEMORY[0x277D3E2B0])
    {
      v26(v20, v1);
    }

    else
    {
      if (v21 == *MEMORY[0x277D3E270] || v21 == *MEMORY[0x277D3E240] || v21 == *MEMORY[0x277D3E2A8] || v21 == *MEMORY[0x277D3E2D0] || v21 == *MEMORY[0x277D3E298] || v21 == *MEMORY[0x277D3E290])
      {
        goto LABEL_40;
      }

      if (v21 == *MEMORY[0x277D3E248])
      {
        return 3;
      }

      if (v21 == *MEMORY[0x277D3E260])
      {
        return 3;
      }

      if (v21 == *MEMORY[0x277D3E2C0])
      {
        return 3;
      }

      if (v21 == *MEMORY[0x277D3E2E0])
      {
        return 3;
      }

      if (v21 == *MEMORY[0x277D3E278])
      {
        return 3;
      }

      if (v21 != *MEMORY[0x277D3E2D8])
      {
        if (v21 == *MEMORY[0x277D3E258])
        {
          return 3;
        }

        if (v21 == *MEMORY[0x277D3E2A0])
        {
          return 3;
        }

        if (v21 == *MEMORY[0x277D3E288])
        {
          return 3;
        }

        if (v21 == *MEMORY[0x277D3E2B8])
        {
          return 3;
        }

        if (v21 == *MEMORY[0x277D3E280])
        {
          return 3;
        }

        if (v21 == *MEMORY[0x277D3E2C8])
        {
          return 3;
        }

        v26(v20, v1);
        return 3;
      }
    }

    return 3;
  }

  v11(v8, v28, v1);
  v15 = v12(v8, v1);
  v16 = v8;
  if (v15 == v13)
  {
    (*(v2 + 96))(v8, v1);
    v17 = *v8;
    v18 = *(v16 + 2);

    return 2;
  }

  if (v15 == *MEMORY[0x277D3E268])
  {
    goto LABEL_38;
  }

  if (v15 == *MEMORY[0x277D3E2B0])
  {
    v26(v8, v1);
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E270] || v15 == *MEMORY[0x277D3E240] || v15 == *MEMORY[0x277D3E2A8] || v15 == *MEMORY[0x277D3E2D0] || v15 == *MEMORY[0x277D3E298] || v15 == *MEMORY[0x277D3E290])
  {
LABEL_38:
    v26(v8, v1);
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E248])
  {
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E260])
  {
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E2C0])
  {
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E2E0])
  {
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E278])
  {
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E2D8])
  {
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E258])
  {
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E2A0])
  {
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E288])
  {
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E2B8])
  {
    return 2;
  }

  if (v15 == *MEMORY[0x277D3E280])
  {
    return 2;
  }

  if (v15 != *MEMORY[0x277D3E2C8])
  {
    v26(v8, v1);
  }

  return 2;
}

uint64_t SQLiteError.outcomeCode.getter()
{
  v1 = v0;
  v2 = sub_21B20CE28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D3E250])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = *(v6 + 2);
  }

  else if (v7 == *MEMORY[0x277D3E268])
  {
    (*(v3 + 8))(v6, v2);
    return 7;
  }

  else if (v7 == *MEMORY[0x277D3E2B0])
  {
    (*(v3 + 8))(v6, v2);
    return 6;
  }

  else if (v7 == *MEMORY[0x277D3E270])
  {
    (*(v3 + 8))(v6, v2);
    return 15;
  }

  else if (v7 == *MEMORY[0x277D3E240])
  {
    (*(v3 + 8))(v6, v2);
    return 16;
  }

  else if (v7 == *MEMORY[0x277D3E2A8])
  {
    (*(v3 + 8))(v6, v2);
    return 17;
  }

  else if (v7 == *MEMORY[0x277D3E2D0])
  {
    (*(v3 + 8))(v6, v2);
    return 18;
  }

  else if (v7 == *MEMORY[0x277D3E298])
  {
    (*(v3 + 8))(v6, v2);
    return 19;
  }

  else if (v7 == *MEMORY[0x277D3E290])
  {
    (*(v3 + 8))(v6, v2);
    return 20;
  }

  else if (v7 == *MEMORY[0x277D3E248])
  {
    return 1;
  }

  else if (v7 == *MEMORY[0x277D3E260])
  {
    return 2;
  }

  else if (v7 == *MEMORY[0x277D3E2C0])
  {
    return 3;
  }

  else if (v7 == *MEMORY[0x277D3E2E0])
  {
    return 4;
  }

  else if (v7 == *MEMORY[0x277D3E278])
  {
    return 5;
  }

  else if (v7 == *MEMORY[0x277D3E2D8])
  {
    return 6;
  }

  else if (v7 == *MEMORY[0x277D3E258])
  {
    return 9;
  }

  else if (v7 == *MEMORY[0x277D3E2A0])
  {
    return 10;
  }

  else if (v7 == *MEMORY[0x277D3E288])
  {
    return 11;
  }

  else if (v7 == *MEMORY[0x277D3E2B8])
  {
    return 12;
  }

  else if (v7 == *MEMORY[0x277D3E280])
  {
    return 13;
  }

  else if (v7 == *MEMORY[0x277D3E2C8])
  {
    return 14;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v8;
}

uint64_t sub_21B19F050(uint64_t a1)
{
  result = sub_21B19F0DC(&qword_27CD6F040);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19F098(uint64_t a1)
{
  result = sub_21B19F0DC(&qword_27CD6F048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19F0DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21B20CE28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21B19F120(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_21B20D2C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F050, &qword_21B212D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B212D20;
  *(inited + 32) = 0x6E6F6973726576;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_21B20D5F8();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_21B20D4F8();
  strcpy((inited + 80), "outcomeDomain");
  *(inited + 94) = -4864;
  v7 = qword_21B212DD0[a4];
  *(inited + 96) = sub_21B20D5F8();
  *(inited + 104) = 0x43656D6F6374756FLL;
  *(inited + 112) = 0xEB0000000065646FLL;
  *(inited + 120) = sub_21B20D518();
  sub_21B197868(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F058, &unk_21B212D70);
  swift_arrayDestroy();
  sub_21B19F524();
  v8 = sub_21B20D258();

  AnalyticsSendEvent();
}

void sub_21B19F2D4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  v7 = *a4;
  v8 = sub_21B20D2C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F050, &qword_21B212D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B212D30;
  *(inited + 32) = 0x6E6F6973726576;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_21B20D5F8();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_21B20D4F8();
  *(inited + 80) = 0x7079546B636F6C62;
  *(inited + 88) = 0xE900000000000065;
  v10 = qword_21B212D80[v7];
  *(inited + 96) = sub_21B20D5F8();
  *(inited + 104) = 0x7165536B636F6C62;
  *(inited + 112) = 0xEF644965636E6575;
  *(inited + 120) = sub_21B20D5F8();
  strcpy((inited + 128), "outcomeDomain");
  *(inited + 142) = -4864;
  v11 = qword_21B212DD0[a6];
  *(inited + 144) = sub_21B20D5F8();
  *(inited + 152) = 0x43656D6F6374756FLL;
  *(inited + 160) = 0xEB0000000065646FLL;
  *(inited + 168) = sub_21B20D518();
  sub_21B197868(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F058, &unk_21B212D70);
  swift_arrayDestroy();
  sub_21B19F524();
  v12 = sub_21B20D258();

  AnalyticsSendEvent();
}

unint64_t sub_21B19F524()
{
  result = qword_27CD6F060;
  if (!qword_27CD6F060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD6F060);
  }

  return result;
}

uint64_t PoirotDefaultTaskParameters.recipeFolderPath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PoirotDefaultTaskParameters.loggingPath.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PoirotDefaultTaskParameters.executionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PoirotDefaultTaskParameters() + 24);
  v4 = sub_21B20C768();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PoirotDefaultTaskParameters()
{
  result = qword_2811F9EC8;
  if (!qword_2811F9EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PoirotDefaultTaskParameters.runtimeParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PoirotDefaultTaskParameters() + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21B19F6E8(v4, v5, v6, v7);
}

uint64_t sub_21B19F6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t PoirotDefaultTaskParameters.init(recipeFolderPath:loggingPath:executionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = type metadata accessor for PoirotDefaultTaskParameters();
  v9 = &a6[*(v8 + 28)];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 1;
  v10 = *(v8 + 24);
  v11 = sub_21B20C768();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a6[v10], a5, v11);
}

__n128 PoirotDefaultTaskParameters.init(recipeFolderPath:loggingPath:runtimeParameters:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for PoirotDefaultTaskParameters();
  v9 = a6 + *(v8 + 24);
  _s12PoirotBlocks0A18ToolTaskParametersV16recipeFolderPath07loggingH011executionId07runtimeE011userDefinedACSS_SSSg10Foundation4UUIDVAA07RuntimeE0VSgSDySSAA10AnyCodableOGSgtcfcfA1__0();
  v10 = (a6 + *(v8 + 28));
  result = *a5;
  v12 = *(a5 + 16);
  *v10 = *a5;
  v10[1] = v12;
  return result;
}

unint64_t sub_21B19F7F8()
{
  v1 = 0x50676E6967676F6CLL;
  v2 = 0x6F69747563657865;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21B19F890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1A0808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B19F8B8(uint64_t a1)
{
  v2 = sub_21B1A0340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B19F8F4(uint64_t a1)
{
  v2 = sub_21B1A0340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PoirotDefaultTaskParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F068, &qword_21B212E00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A0340();
  sub_21B20DD08();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  sub_21B20D9E8();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v23) = 1;
    sub_21B20D998();
    v16 = type metadata accessor for PoirotDefaultTaskParameters();
    v17 = *(v16 + 24);
    LOBYTE(v23) = 2;
    sub_21B20C768();
    sub_21B1A05BC(&qword_27CD6F078, MEMORY[0x277CC95F0]);
    sub_21B20DA48();
    v18 = (v3 + *(v16 + 28));
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    v23 = *v18;
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v22[15] = 3;
    sub_21B19F6E8(v23, v19, v20, v21);
    sub_21B1A0394();
    sub_21B20D9D8();
    sub_21B1A03E8(v23, v24, v25, v26);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PoirotDefaultTaskParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_21B20C768();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F088, &qword_21B212E08);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  v11 = type metadata accessor for PoirotDefaultTaskParameters();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A0340();
  v28 = v10;
  v16 = v29;
  sub_21B20DCD8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v26;
  LOBYTE(v30) = 0;
  *v14 = sub_21B20D8C8();
  v14[1] = v18;
  v29 = v18;
  LOBYTE(v30) = 1;
  v14[2] = sub_21B20D868();
  v14[3] = v19;
  LOBYTE(v30) = 2;
  sub_21B1A05BC(&qword_27CD6F090, MEMORY[0x277CC95F0]);
  v23[1] = 0;
  sub_21B20D918();
  (*(v25 + 32))(v14 + *(v11 + 24), v6, v3);
  v32 = 3;
  sub_21B1A03FC();
  sub_21B20D8B8();
  (*(v17 + 8))(v28, v27);
  v20 = (v14 + *(v11 + 28));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  sub_21B1A0450(v14, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21B1A04B4(v14);
}

uint64_t sub_21B19FFBC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21B19FFEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21B1A001C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_21B20C768();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21B1A0090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_21B19F6E8(v4, v5, v6, v7);
}

BOOL _s12PoirotBlocks0A21DefaultTaskParametersV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21B20DB28() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_21B20DB28() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = type metadata accessor for PoirotDefaultTaskParameters();
  v9 = *(v8 + 24);
  if ((sub_21B20C748() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v8 + 28);
  v11 = a1 + v10;
  v13 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v14 = *(a1 + v10 + 16);
  v15 = *(v11 + 3);
  v16 = (a2 + v10);
  v18 = *v16;
  v17 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  if (v15 != 1)
  {
    v27[0] = v13;
    v27[1] = v12;
    v27[2] = v14;
    v27[3] = v15;
    if (v20 != 1)
    {
      v24[0] = v18;
      v24[1] = v17;
      v25 = v19 & 0xFF01;
      v26 = v20;
      sub_21B19F6E8(v13, v12, v14, v15);
      sub_21B19F6E8(v18, v17, v19, v20);
      sub_21B19F6E8(v13, v12, v14, v15);
      v23 = _s12PoirotBlocks17RuntimeParametersV2eeoiySbAC_ACtFZ_0(v27, v24);

      sub_21B1A03E8(v13, v12, v14, v15);
      return (v23 & 1) != 0;
    }

    sub_21B19F6E8(v13, v12, v14, v15);
    sub_21B19F6E8(v18, v17, v19, 1);
    sub_21B19F6E8(v13, v12, v14, v15);

    goto LABEL_22;
  }

  sub_21B19F6E8(v13, v12, v14, 1);
  if (v20 != 1)
  {
    sub_21B19F6E8(v18, v17, v19, v20);
LABEL_22:
    sub_21B1A03E8(v13, v12, v14, v15);
    sub_21B1A03E8(v18, v17, v19, v20);
    return 0;
  }

  v21 = 1;
  sub_21B19F6E8(v18, v17, v19, 1);
  sub_21B1A03E8(v13, v12, v14, 1);
  return v21;
}

unint64_t sub_21B1A0340()
{
  result = qword_27CD6F070;
  if (!qword_27CD6F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F070);
  }

  return result;
}

unint64_t sub_21B1A0394()
{
  result = qword_27CD6F080;
  if (!qword_27CD6F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F080);
  }

  return result;
}