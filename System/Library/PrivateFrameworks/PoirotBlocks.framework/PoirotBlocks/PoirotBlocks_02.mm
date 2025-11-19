uint64_t sub_21B1A03E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

unint64_t sub_21B1A03FC()
{
  result = qword_27CD6F098;
  if (!qword_27CD6F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F098);
  }

  return result;
}

uint64_t sub_21B1A0450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PoirotDefaultTaskParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1A04B4(uint64_t a1)
{
  v2 = type metadata accessor for PoirotDefaultTaskParameters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1A0510(void *a1)
{
  a1[1] = sub_21B1A05BC(&qword_27CD6F0A0, type metadata accessor for PoirotDefaultTaskParameters);
  a1[2] = sub_21B1A05BC(&qword_27CD6F0A8, type metadata accessor for PoirotDefaultTaskParameters);
  result = sub_21B1A05BC(&qword_27CD6F0B0, type metadata accessor for PoirotDefaultTaskParameters);
  a1[3] = result;
  return result;
}

uint64_t sub_21B1A05BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21B1A062C()
{
  sub_21B17DF1C(319, &qword_2811F9F58);
  if (v0 <= 0x3F)
  {
    sub_21B20C768();
    if (v1 <= 0x3F)
    {
      sub_21B17DF1C(319, &qword_2811F9F60);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21B1A0704()
{
  result = qword_27CD6F0B8;
  if (!qword_27CD6F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F0B8);
  }

  return result;
}

unint64_t sub_21B1A075C()
{
  result = qword_27CD6F0C0;
  if (!qword_27CD6F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F0C0);
  }

  return result;
}

unint64_t sub_21B1A07B4()
{
  result = qword_27CD6F0C8;
  if (!qword_27CD6F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F0C8);
  }

  return result;
}

uint64_t sub_21B1A0808(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021B20F520 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50676E6967676F6CLL && a2 == 0xEB00000000687461 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xEB0000000064496ELL || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021B20F540 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_21B20DB28();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21B1A0984(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v36 = MEMORY[0x277D84F90];
  sub_21B18FF8C(0, v2, 0);
  v3 = v36;
  v5 = -1 << *(v4 + 32);
  v31 = v4 + 64;
  v6 = sub_21B20D648();
  v7 = 0;
  v32 = *(v4 + 36);
  v29 = v4 + 72;
  v30 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v4 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v31 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v32 != *(v4 + 36))
    {
      goto LABEL_24;
    }

    v11 = v4;
    v12 = (*(v4 + 48) + 16 * v6);
    v13 = v12[1];
    v14 = *(*(v4 + 56) + 8 * v6);
    v33[0] = *v12;
    v33[1] = v13;
    v33[2] = v14;

    sub_21B1A2238(v33, &v34);
    if (v1)
    {
      goto LABEL_28;
    }

    v15 = v34;
    v16 = v35;
    v36 = v3;
    v18 = *(v3 + 16);
    v17 = *(v3 + 24);
    if (v18 >= v17 >> 1)
    {
      v28 = v35;
      sub_21B18FF8C((v17 > 1), v18 + 1, 1);
      v16 = v28;
      v3 = v36;
    }

    *(v3 + 16) = v18 + 1;
    v19 = v3 + 24 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_25;
    }

    v20 = *(v31 + 8 * v10);
    if ((v20 & (1 << v6)) == 0)
    {
      goto LABEL_26;
    }

    v4 = v11;
    if (v32 != *(v11 + 36))
    {
      goto LABEL_27;
    }

    v21 = v20 & (-2 << (v6 & 0x3F));
    if (v21)
    {
      v8 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v30;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v9 = v30;
      v24 = (v29 + 8 * v10);
      while (v23 < (v8 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          sub_21B17C2EC(v6, v32, 0);
          v8 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      sub_21B17C2EC(v6, v32, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    v1 = 0;
    if (v7 == v9)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_23:
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

uint64_t PoirotTask<>.init(dataSources:mainDatabaseConfig:tempDatabaseConfig:environmentFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v43 = a3;
  v39 = a1;
  v40 = a2;
  v7 = type metadata accessor for LoggingType();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v37 - v16;
  v18 = sub_21B20C678();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v38;
  v25 = a4(v21);
  v38 = v24;
  if (v24)
  {

    sub_21B186488(v43, &qword_27CD6ED28, &unk_21B212870);
    return sub_21B186488(v40, &qword_27CD6ED28, &unk_21B212870);
  }

  else
  {
    v27 = v25;
    v37[0] = v10;
    v37[1] = a5;
    (*(v19 + 16))(v23, v25 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v18);
    sub_21B18BFF8(v40, v17, &qword_27CD6ED28, &unk_21B212870);
    sub_21B18BFF8(v43, v15, &qword_27CD6ED28, &unk_21B212870);
    v28 = *v27;
    v29 = swift_conformsToProtocol2();
    if (v29)
    {

      v30 = v27;
    }

    else
    {
      v30 = 0;
    }

    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v31 = v37[0];
    swift_storeEnumTagMultiPayload();
    v32 = type metadata accessor for DefaultHostController();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = v38;
    v36 = sub_21B19A080(v23, v39, v17, v15, v30, v29, 0, 0, v41, v31);

    sub_21B186488(v43, &qword_27CD6ED28, &unk_21B212870);
    result = sub_21B186488(v40, &qword_27CD6ED28, &unk_21B212870);
    if (!v35)
    {
      result = swift_allocObject();
      *(result + 16) = v36;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t PoirotTask<>.init(recipeURL:dataSources:mainDatabaseConfig:tempDatabaseConfig:loggingType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a2;
  v37 = a5;
  v8 = type metadata accessor for LoggingType();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = sub_21B20C678();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v20 + 16);
  v42 = a1;
  v36 = v25;
  v24(v23, a1);
  v39 = a3;
  sub_21B18BFF8(a3, v18, &qword_27CD6ED28, &unk_21B212870);
  v38 = a4;
  sub_21B18BFF8(a4, v16, &qword_27CD6ED28, &unk_21B212870);
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for DefaultHostController();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = v35;
  v30 = sub_21B19A080(v23, v34, v18, v16, 0, 0, 0, 0, v40, v11);
  if (v29)
  {
    sub_21B1A27A8(v37, type metadata accessor for LoggingType);
    sub_21B186488(v38, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v39, &qword_27CD6ED28, &unk_21B212870);
    return (*(v20 + 8))(v42, v36);
  }

  else
  {
    v32 = v30;
    sub_21B1A27A8(v37, type metadata accessor for LoggingType);
    sub_21B186488(v38, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v39, &qword_27CD6ED28, &unk_21B212870);
    (*(v20 + 8))(v42, v36);
    result = swift_allocObject();
    *(result + 16) = v32;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t PoirotTask<>.init<A, B, C>(recipeURL:dataSources:mainDatabaseConfig:tempDatabaseConfig:timeWindowConfig:queryParametersConfig:userBlockFactory:loggingType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v69 = a8;
  v73 = a7;
  v59 = a5;
  v60 = a6;
  v77 = a4;
  v63 = a2;
  v58 = a13;
  v57 = a12;
  v16 = type metadata accessor for LoggingType();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21B20D5D8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v56 - v29;
  v31 = sub_21B20C678();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v36;
  v65 = v35;
  v37 = *(v36 + 16);
  v72 = a1;
  v37(v34, a1);
  v71 = a3;
  sub_21B18BFF8(a3, v30, &qword_27CD6ED28, &unk_21B212870);
  v61 = v28;
  sub_21B18BFF8(v77, v28, &qword_27CD6ED28, &unk_21B212870);
  v38 = v59;
  v39 = v57;
  if (!v59)
  {
    v39 = 0;
  }

  v57 = v39;
  v40 = v60;
  v41 = v58;
  if (!v60)
  {
    v41 = 0;
  }

  v58 = v41;
  (*(v20 + 16))(v23, v73, v19);
  v42 = *(a11 - 8);
  v43 = (*(v42 + 48))(v23, 1, a11);
  v67 = v20;
  v68 = v19;
  if (v43 == 1)
  {
    v44 = *(v20 + 8);
    swift_unknownObjectRetain();
    v45 = v40;
    swift_unknownObjectRetain();
    v44(v23, v19);
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
  }

  else
  {
    *(&v75 + 1) = a11;
    v76 = a14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
    (*(v42 + 32))(boxed_opaque_existential_1, v23, a11);
    swift_unknownObjectRetain();
    v45 = v40;
    swift_unknownObjectRetain();
  }

  v47 = v69;
  v48 = v62;
  sub_21B1A2740(v69, v62, type metadata accessor for LoggingType);
  v49 = *(v70 + 80);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = v66;
  v53 = sub_21B19A080(v34, v63, v30, v61, v38, v57, v45, v58, &v74, v48);
  if (v52)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_21B1A27A8(v47, type metadata accessor for LoggingType);
    (*(v67 + 8))(v73, v68);
    sub_21B186488(v77, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v71, &qword_27CD6ED28, &unk_21B212870);
    return (*(v64 + 8))(v72, v65);
  }

  else
  {
    v55 = v53;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_21B1A27A8(v47, type metadata accessor for LoggingType);
    (*(v67 + 8))(v73, v68);
    sub_21B186488(v77, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v71, &qword_27CD6ED28, &unk_21B212870);
    (*(v64 + 8))(v72, v65);
    result = swift_allocObject();
    *(result + 16) = v55;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t PoirotTask<>.init(recipeURL:dataSources:mainDatabaseConfig:tempDatabaseConfig:timeWindowConfig:namedQueryParameters:userBlockFactory:loggingType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a7;
  v39 = a8;
  v41 = a5;
  v42 = a6;
  v49 = a3;
  v40 = a2;
  v11 = type metadata accessor for LoggingType();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = sub_21B20C678();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v23 + 16);
  v47 = a1;
  v45 = v28;
  v27(v26, a1);
  sub_21B18BFF8(v49, v21, &qword_27CD6ED28, &unk_21B212870);
  v46 = a4;
  v29 = a4;
  v30 = v39;
  sub_21B18BFF8(v29, v19, &qword_27CD6ED28, &unk_21B212870);
  sub_21B18BFF8(v30, v48, &qword_27CD6EC70, &qword_21B211CB0);
  sub_21B1A2740(a9, v14, type metadata accessor for LoggingType);
  v31 = type metadata accessor for DefaultHostController();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = v44;
  v35 = sub_21B19A080(v26, v40, v21, v19, v41, v42, v43, &protocol witness table for NamedQueryParameters, v48, v14);
  if (v34)
  {
    sub_21B1A27A8(a9, type metadata accessor for LoggingType);
    sub_21B186488(v30, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v46, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v49, &qword_27CD6ED28, &unk_21B212870);
    return (*(v23 + 8))(v47, v45);
  }

  else
  {
    v37 = v35;
    sub_21B1A27A8(a9, type metadata accessor for LoggingType);
    sub_21B186488(v30, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v46, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v49, &qword_27CD6ED28, &unk_21B212870);
    (*(v23 + 8))(v47, v45);
    result = swift_allocObject();
    *(result + 16) = v37;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t PoirotTask<>.init(dataSources:mainDatabaseConfig:tempDatabaseConfig:timeWindowConfig:namedQueryParameters:userBlockFactory:loggingType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v62 = a7;
  v53 = a5;
  v54 = a6;
  v52 = a4;
  v65 = a3;
  v51 = a1;
  v9 = type metadata accessor for LoggingType();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v50 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v47[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v49 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v48 = &v47[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v47[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v47[-v24];
  v26 = sub_21B20C678();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v47[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v33 = &v47[-v32];
  type metadata accessor for PoirotTesting();
  sub_21B1DAA6C(v33);
  v60 = a2;
  sub_21B18BFF8(a2, v25, &qword_27CD6ED28, &unk_21B212870);
  sub_21B18BFF8(v65, v23, &qword_27CD6ED28, &unk_21B212870);
  sub_21B18BFF8(v62, v64, &qword_27CD6EC70, &qword_21B211CB0);
  sub_21B1A2740(v61, v14, type metadata accessor for LoggingType);
  v58 = v27;
  v59 = v26;
  v34 = *(v27 + 16);
  v56 = v33;
  v34(v31, v33, v26);
  v57 = v25;
  v35 = v25;
  v36 = v23;
  v37 = v48;
  sub_21B18BFF8(v35, v48, &qword_27CD6ED28, &unk_21B212870);
  v38 = v49;
  sub_21B18BFF8(v36, v49, &qword_27CD6ED28, &unk_21B212870);
  sub_21B18BFF8(v64, v63, &qword_27CD6EC70, &qword_21B211CB0);
  v39 = v50;
  sub_21B1A2740(v14, v50, type metadata accessor for LoggingType);
  v40 = type metadata accessor for DefaultHostController();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = v55;
  v44 = sub_21B19A080(v31, v51, v37, v38, v52, v53, v54, &protocol witness table for NamedQueryParameters, v63, v39);
  if (v43)
  {
    sub_21B1A27A8(v61, type metadata accessor for LoggingType);
    sub_21B186488(v62, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v65, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v60, &qword_27CD6ED28, &unk_21B212870);
    sub_21B1A27A8(v14, type metadata accessor for LoggingType);
    sub_21B186488(v64, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v36, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v57, &qword_27CD6ED28, &unk_21B212870);
    return (*(v58 + 8))(v56, v59);
  }

  else
  {
    v46 = v44;
    sub_21B1A27A8(v61, type metadata accessor for LoggingType);
    sub_21B186488(v62, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v65, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v60, &qword_27CD6ED28, &unk_21B212870);
    sub_21B1A27A8(v14, type metadata accessor for LoggingType);
    sub_21B186488(v64, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v36, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v57, &qword_27CD6ED28, &unk_21B212870);
    (*(v58 + 8))(v56, v59);
    result = swift_allocObject();
    *(result + 16) = v46;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t PoirotTask<>.supportedQueryParameters.getter()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig);
  if (!*v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1[1];
  v3 = *v1;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 8);
  swift_unknownObjectRetain();
  v6 = v5(ObjectType, v2);
  v7 = sub_21B1A0984(v6);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_21B1A2238@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC28, &qword_21B2117E8);
  v6 = *(*(v75 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v75);
  v74 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v73 = (&v59 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = (&v59 - v12);
  MEMORY[0x28223BE20](v11);
  v71 = &v59 - v13;
  v14 = type metadata accessor for DatasetColumnDescription();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];
  v20 = a1[2];
  v21 = *(v20 + 16);
  if (v21)
  {
    v61 = v19;
    v62 = a2;
    v63 = v3;
    v82 = MEMORY[0x277D84F90];
    v60 = v18;

    sub_21B18FDB0(0, v21, 0);
    v22 = v82;
    v23 = v20 + 64;
    v24 = -1 << *(v20 + 32);
    result = sub_21B20D648();
    v26 = result;
    v27 = 0;
    v28 = *(v20 + 36);
    v64 = v20 + 72;
    v65 = v21;
    v81 = v17;
    v66 = v28;
    v67 = v20 + 64;
    v68 = v20;
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v20 + 32))
    {
      if ((*(v23 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_24;
      }

      if (v28 != *(v20 + 36))
      {
        goto LABEL_25;
      }

      v77 = 1 << v26;
      v78 = v26 >> 6;
      v76 = v27;
      v30 = v75;
      v31 = *(v75 + 48);
      v32 = *(v20 + 56);
      v33 = (*(v20 + 48) + 16 * v26);
      v35 = *v33;
      v34 = v33[1];
      v36 = v32 + *(*(type metadata accessor for DatasetColumnType() - 8) + 72) * v26;
      v79 = type metadata accessor for DatasetColumnType;
      v37 = v71;
      sub_21B1A2740(v36, &v71[v31], type metadata accessor for DatasetColumnType);
      v38 = v72;
      *v72 = v35;
      *(v38 + 8) = v34;
      sub_21B188AC0(&v37[v31], v38 + *(v30 + 48), type metadata accessor for DatasetColumnType);
      v39 = v73;
      sub_21B18BFF8(v38, v73, &qword_27CD6EC28, &qword_21B2117E8);
      v41 = *v39;
      v40 = v39[1];
      v80 = v22;
      v42 = *(v30 + 48);
      v43 = v38;
      v44 = v74;
      sub_21B188A50(v43, v74);
      v45 = *(v44 + 8);

      v46 = *(v30 + 48);
      *v81 = v41;
      v47 = v81;
      v81[1] = v40;
      *(v47 + 16) = 0;
      v48 = v70;
      *(v47 + *(v70 + 28)) = 0;
      sub_21B188AC0(v44 + v46, v47 + *(v48 + 24), type metadata accessor for DatasetColumnType);
      v49 = v39 + v42;
      v22 = v80;
      sub_21B1A27A8(v49, v79);
      v82 = v22;
      v51 = *(v22 + 16);
      v50 = *(v22 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_21B18FDB0(v50 > 1, v51 + 1, 1);
        v22 = v82;
      }

      *(v22 + 16) = v51 + 1;
      result = sub_21B188AC0(v47, v22 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v51, type metadata accessor for DatasetColumnDescription);
      v20 = v68;
      v29 = 1 << *(v68 + 32);
      if (v26 >= v29)
      {
        goto LABEL_26;
      }

      v23 = v67;
      v52 = *(v67 + 8 * v78);
      if ((v52 & v77) == 0)
      {
        goto LABEL_27;
      }

      LODWORD(v28) = v66;
      if (v66 != *(v68 + 36))
      {
        goto LABEL_28;
      }

      v53 = v52 & (-2 << (v26 & 0x3F));
      if (v53)
      {
        v29 = __clz(__rbit64(v53)) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v54 = v78 << 6;
        v55 = v78 + 1;
        v56 = (v64 + 8 * v78);
        while (v55 < (v29 + 63) >> 6)
        {
          v58 = *v56++;
          v57 = v58;
          v54 += 64;
          ++v55;
          if (v58)
          {
            result = sub_21B17C2EC(v26, v66, 0);
            v29 = __clz(__rbit64(v57)) + v54;
            goto LABEL_4;
          }
        }

        result = sub_21B17C2EC(v26, v66, 0);
      }

LABEL_4:
      v27 = v76 + 1;
      v26 = v29;
      if (v76 + 1 == v65)
      {
        a2 = v62;
        v19 = v61;
        result = v60;
        goto LABEL_22;
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
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
LABEL_22:
    *a2 = v19;
    a2[1] = result;
    a2[2] = v22;
  }

  return result;
}

uint64_t sub_21B1A2740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B1A27A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21B1A2808()
{
  v1 = type metadata accessor for DatasetColumnType();
  v63 = *(v1 - 8);
  v2 = *(v63 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v62 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_queryParameters);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF40, &qword_21B2124F0);
    v5 = sub_21B20D7E8();
    v6 = v5;
    v7 = *(v4 + 64);
    v51 = v4 + 64;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v7;
    v50 = (v8 + 63) >> 6;
    v53 = v5 + 64;

    v12 = 0;
    v13 = 0;
    v54 = v6;
    v52 = v4;
    v14 = v62;
    if (v10)
    {
      while (1)
      {
        v55 = (v10 - 1) & v10;
        v56 = v12;
        v15 = __clz(__rbit64(v10)) | (v12 << 6);
LABEL_12:
        v19 = *(v4 + 56);
        v20 = (*(v4 + 48) + 16 * v15);
        v21 = v20[1];
        v60 = *v20;
        v61 = v15;
        v22 = *(v19 + 8 * v15);
        v59 = v21;

        v58 = v22;
        v24 = sub_21B1DFBE8(v23);
        v57 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F0E8, &unk_21B2130B0);
        result = sub_21B20D7E8();
        v25 = result;
        v26 = 0;
        v28 = v24 + 64;
        v27 = *(v24 + 64);
        v65 = result;
        v66 = v24;
        v29 = 1 << *(v24 + 32);
        v30 = v29 < 64 ? ~(-1 << v29) : -1;
        v31 = v30 & v27;
        v32 = (v29 + 63) >> 6;
        v64 = result + 64;
        if ((v30 & v27) != 0)
        {
          break;
        }

LABEL_17:
        v34 = v26;
        while (1)
        {
          v26 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
            goto LABEL_33;
          }

          if (v26 >= v32)
          {
            break;
          }

          v35 = *(v28 + 8 * v26);
          ++v34;
          if (v35)
          {
            v33 = __clz(__rbit64(v35));
            v31 = (v35 - 1) & v35;
            goto LABEL_22;
          }
        }

        v44 = v61;
        *(v53 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
        v6 = v54;
        v45 = (*(v54 + 48) + 16 * v44);
        v46 = v59;
        *v45 = v60;
        v45[1] = v46;
        *(*(v6 + 56) + 8 * v44) = v25;
        v47 = *(v6 + 16);
        v42 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v42)
        {
          goto LABEL_35;
        }

        *(v6 + 16) = v48;
        v4 = v52;
        v13 = v57;
        v12 = v56;
        v10 = v55;
        if (!v55)
        {
          goto LABEL_7;
        }
      }

      while (1)
      {
        v33 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
LABEL_22:
        v36 = v33 | (v26 << 6);
        v37 = *(v66 + 56);
        v38 = (*(v66 + 48) + 16 * v36);
        v39 = v38[1];
        v67 = *v38;
        sub_21B1A37FC(v37 + 40 * v36, v69);
        sub_21B17FB4C(v69, v68);
        __swift_project_boxed_opaque_existential_1(v68, v68[3]);
        swift_getDynamicType();

        __swift_destroy_boxed_opaque_existential_1(v68);
        sub_21B20CDD8();
        sub_21B1A3858(v69);
        v25 = v65;
        *(v64 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
        v40 = (v25[6] + 16 * v36);
        *v40 = v67;
        v40[1] = v39;
        result = sub_21B1A38AC(v14, v25[7] + *(v63 + 72) * v36, type metadata accessor for DatasetColumnType);
        v41 = v25[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          break;
        }

        v25[2] = v43;
        if (!v31)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v12;
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v17 >= v50)
        {

          return v6;
        }

        v18 = *(v51 + 8 * v17);
        ++v16;
        if (v18)
        {
          v55 = (v18 - 1) & v18;
          v56 = v17;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          goto LABEL_12;
        }
      }

LABEL_33:
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];

    return sub_21B197668(v49);
  }

  return result;
}

uint64_t sub_21B1A2CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_queryParameters);
  if (v4)
  {
    if (*(v4 + 16))
    {

      v8 = sub_21B1B9778(a1, a2);
      if (v9)
      {
        v10 = *(*(v4 + 56) + 8 * v8);

        *a3 = v10;
        return result;
      }
    }

    sub_21B1A37A8();
    swift_allocError();
    *v13 = a1;
    v13[1] = a2;
  }

  else
  {
    sub_21B1A37A8();
    swift_allocError();
    *v12 = 0;
    v12[1] = 0;
  }

  return swift_willThrow();
}

uint64_t sub_21B1A2D98()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_recipeURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21B1972F0(v0 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_loggingType);
  v3 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_queryParameters);

  v4 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_activityMonitor);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for AdHocHostEnvironment()
{
  result = qword_27CD6F0D0;
  if (!qword_27CD6F0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B1A2EB8()
{
  result = sub_21B20C678();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for LoggingType();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_21B1A2FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_recipeURL;
  v4 = sub_21B20C678();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21B1A3040()
{
  type metadata accessor for HostDiagnosingActivityMonitor();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_21B19767C(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_21B1A3090()
{
  v1 = (v0 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_nextStartTime);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_21B1A30DC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_nextStartTime;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21B1A31DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  (*(v7 + 32))(&v19 - v12);
  v14 = *(a2 + 48);
  v15 = *(a2 + 52);
  v16 = swift_allocObject();
  (*(v7 + 16))(v11, v13, a3);
  v17 = sub_21B1A3328(v11, v16, a3, a4);
  (*(v7 + 8))(v13, a3);
  return v17;
}

uint64_t sub_21B1A3328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B20C728();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LoggingType();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21B20C678();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v24;
  (*(v24 + 32))(v23, a1, a3);
  v25 = a2 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_nextStartTime;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(a2 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_queryParameters) = 0;
  v26 = (a2 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_activityMonitor);
  *v26 = 0;
  v26[1] = 0;
  (*(a4 + 32))(a3, a4);
  sub_21B20C588();

  (*(v16 + 32))(a2 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_recipeURL, v20, v15);
  TaskConfiguring.loggingType.getter(a3, a4, v14);
  sub_21B1A38AC(v14, a2 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_loggingType, type metadata accessor for LoggingType);
  v27 = *(a4 + 56);
  v27(&v45, a3, a4);
  v28 = 0;
  v29 = v48;
  if (v48 != 1)
  {
    v28 = v45;
    sub_21B1A03E8(v45, v46, v47, v48);
  }

  swift_beginAccess();
  *v25 = v28;
  *(v25 + 8) = v29 == 1;
  v27(&v45, a3, a4);
  if (v48 == 1 || (v30 = v46, v31 = v47, sub_21B1A03E8(v45, v46, v47, v48), (v31 & 1) != 0))
  {
    v32 = v41;
    sub_21B20C718();
    sub_21B20C708();
    v34 = v33;
    (*(v42 + 8))(v32, v43);
  }

  else
  {
    v34 = v30;
  }

  *(a2 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_cutoffTime) = v34;
  v27(&v45, a3, a4);
  if (v48 == 1)
  {
    LOBYTE(v35) = 0;
  }

  else
  {
    v36 = v47;
    sub_21B1A03E8(v45, v46, v47, v48);
    v35 = (v36 >> 8) & 1;
  }

  *(a2 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_ignoreMaximumLookbackTime) = v35;
  v27(&v45, a3, a4);
  v37 = v48;
  if (v48 == 1)
  {
    v37 = 0;
  }

  v38 = *(a2 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_queryParameters);
  *(a2 + OBJC_IVAR____TtC12PoirotBlocks20AdHocHostEnvironment_queryParameters) = v37;

  (*(v44 + 8))(v23, a3);
  return a2;
}

unint64_t sub_21B1A37A8()
{
  result = qword_27CD6F0E0;
  if (!qword_27CD6F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F0E0);
  }

  return result;
}

uint64_t sub_21B1A38AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BaseHostEnvironment.__allocating_init(recipeURL:loggingType:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL;
  v9 = sub_21B20C678();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  sub_21B19AB44(a2, v7 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType);
  return v7;
}

uint64_t BaseHostEnvironment.recipeURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL;
  v4 = sub_21B20C678();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BaseHostEnvironment.init(recipeURL:loggingType:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL;
  v6 = sub_21B20C678();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  sub_21B19AB44(a2, v2 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType);
  return v2;
}

uint64_t sub_21B1A3AC4()
{
  type metadata accessor for TelemetryReportingActivityMonitor();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_21B19767C(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t BaseHostEnvironment.deinit()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21B1972F0(v0 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType);
  return v0;
}

uint64_t BaseHostEnvironment.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21B1972F0(v0 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21B1A3C30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL;
  v4 = sub_21B20C678();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BaseHostEnvironment()
{
  result = qword_27CD6F0F0;
  if (!qword_27CD6F0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B1A3D34()
{
  result = sub_21B20C678();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for LoggingType();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B1A3EB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21B1A3EFC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void __swiftcall AggregationBlockConfig.init(name:outputDescription:ignoreSQLFailure:queryParamsDataset:)(PoirotBlocks::AggregationBlockConfig *__return_ptr retstr, Swift::String name, Swift::OpaquePointer outputDescription, Swift::Bool ignoreSQLFailure, Swift::String_optional queryParamsDataset)
{
  retstr->name = name;
  retstr->outputDescription = outputDescription;
  retstr->ignoreSQLFailure = ignoreSQLFailure;
  retstr->queryParamsDataset = queryParamsDataset;
}

unint64_t sub_21B1A3F68()
{
  v1 = 1701667182;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_21B1A3FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1A4BE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1A4008(uint64_t a1)
{
  v2 = sub_21B1A43E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1A4044(uint64_t a1)
{
  v2 = sub_21B1A43E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AggregationBlockConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F100, &unk_21B213160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A43E0();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v11 = sub_21B20D8C8();
  v13 = v12;
  v21 = a2;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
  v25 = 1;
  sub_21B1A4798(&qword_27CD6F110, &qword_27CD6F118);
  sub_21B20D918();
  v14 = v23;
  LOBYTE(v23) = 2;
  v24 = sub_21B20D878();
  LOBYTE(v23) = 3;
  v16 = sub_21B20D868();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v21;
  *v21 = v22;
  v19[1] = v13;
  v19[2] = v14;
  *(v19 + 24) = v24 & 1;
  v19[4] = v16;
  v19[5] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21B1A43E0()
{
  result = qword_27CD6F108;
  if (!qword_27CD6F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F108);
  }

  return result;
}

uint64_t AggregationBlockConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F120, &qword_21B213170);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v19 = *(v1 + 24);
  v11 = v1[5];
  v15[2] = v1[4];
  v16 = v10;
  v15[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A43E0();
  sub_21B20DD08();
  v23 = 0;
  v13 = v17;
  sub_21B20D9E8();
  if (!v13)
  {
    v18 = v16;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
    sub_21B1A4798(&qword_27CD6EBF8, &qword_27CD6EC00);
    sub_21B20DA48();
    v21 = 2;
    sub_21B20D9F8();
    v20 = 3;
    sub_21B20D998();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t _s12PoirotBlocks22AggregationBlockConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v10 = sub_21B20DB28(), result = 0, (v10 & 1) != 0))
  {
    v12 = sub_21B1A66B0(v2, v6);
    result = 0;
    if ((v12 & 1) != 0 && ((v3 ^ v7) & 1) == 0)
    {
      if (v4)
      {
        if (v8 && (v5 == v9 && v4 == v8 || (sub_21B20DB28() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v8)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_21B1A4798(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EBF0, &unk_21B2115E0);
    sub_21B1A4820(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B1A4820(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DatasetColumnDescription();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B1A4864(uint64_t a1)
{
  result = sub_21B1A488C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21B1A488C()
{
  result = qword_27CD6F128;
  if (!qword_27CD6F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F128);
  }

  return result;
}

unint64_t sub_21B1A48E0(void *a1)
{
  a1[1] = sub_21B1A4918();
  a1[2] = sub_21B1A496C();
  result = sub_21B1A49C0();
  a1[3] = result;
  return result;
}

unint64_t sub_21B1A4918()
{
  result = qword_27CD6F130;
  if (!qword_27CD6F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F130);
  }

  return result;
}

unint64_t sub_21B1A496C()
{
  result = qword_27CD6F138;
  if (!qword_27CD6F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F138);
  }

  return result;
}

unint64_t sub_21B1A49C0()
{
  result = qword_27CD6F140;
  if (!qword_27CD6F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F140);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21B1A4A28(uint64_t a1, int a2)
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

uint64_t sub_21B1A4A70(uint64_t result, int a2, int a3)
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

unint64_t sub_21B1A4AE0()
{
  result = qword_27CD6F148;
  if (!qword_27CD6F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F148);
  }

  return result;
}

unint64_t sub_21B1A4B38()
{
  result = qword_27CD6F150;
  if (!qword_27CD6F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F150);
  }

  return result;
}

unint64_t sub_21B1A4B90()
{
  result = qword_27CD6F158;
  if (!qword_27CD6F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F158);
  }

  return result;
}

uint64_t sub_21B1A4BE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021B20EBA0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021B20F630 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021B20EB60 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void __swiftcall ExtractionBlockConfig.init(name:outputDescription:queryParamsDataset:ignoreSQLFailure:)(PoirotBlocks::ExtractionBlockConfig *__return_ptr retstr, Swift::String name, Swift::OpaquePointer outputDescription, Swift::String_optional queryParamsDataset, Swift::Bool ignoreSQLFailure)
{
  retstr->name = name;
  retstr->outputDescription = outputDescription;
  retstr->queryParamsDataset = queryParamsDataset;
  retstr->ignoreSQLFailure = ignoreSQLFailure;
}

uint64_t ExtractionBlockConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F160, &unk_21B2133B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A5078();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v11 = sub_21B20D8C8();
  v13 = v12;
  v14 = v11;
  v28 = 1;
  v25 = sub_21B20D878();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
  v27 = 2;
  sub_21B1A4798(&qword_27CD6F110, &qword_27CD6F118);
  sub_21B20D918();
  v23 = v24;
  v26 = 3;
  v16 = sub_21B20D868();
  v18 = v17;
  v19 = *(v6 + 8);
  v22 = v16;
  v19(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v25 & 1;
  v20 = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v20;
  *(a2 + 40) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21B1A5078()
{
  result = qword_27CD6F168;
  if (!qword_27CD6F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F168);
  }

  return result;
}

unint64_t sub_21B1A50D0()
{
  v1 = 1701667182;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
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

uint64_t sub_21B1A5150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1A5888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1A5178(uint64_t a1)
{
  v2 = sub_21B1A5078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1A51B4(uint64_t a1)
{
  v2 = sub_21B1A5078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractionBlockConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F170, &qword_21B2133C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v19 = *(v1 + 16);
  v10 = v1[3];
  v15[2] = v1[4];
  v16 = v10;
  v15[1] = v1[5];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A5078();
  sub_21B20DD08();
  v23 = 0;
  v12 = v17;
  sub_21B20D9E8();
  if (!v12)
  {
    v14 = v16;
    v22 = 1;
    sub_21B20D9F8();
    v18 = v14;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
    sub_21B1A4798(&qword_27CD6EBF8, &qword_27CD6EC00);
    sub_21B20DA48();
    v20 = 3;
    sub_21B20D998();
  }

  return (*(v4 + 8))(v7, v3);
}

BOOL _s12PoirotBlocks21ExtractionBlockConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }

LABEL_7:
    if (sub_21B1A66B0(v4, v8))
    {
      if (v5)
      {
        return v9 && (v3 == v7 && v5 == v9 || (sub_21B20DB28() & 1) != 0);
      }

      if (!v9)
      {
        return 1;
      }
    }

    return 0;
  }

  v10 = sub_21B20DB28();
  result = 0;
  if ((v10 & 1) != 0 && ((v2 ^ v6) & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_21B1A55B0(uint64_t a1)
{
  result = sub_21B1A55D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21B1A55D8()
{
  result = qword_27CD6F178;
  if (!qword_27CD6F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F178);
  }

  return result;
}

unint64_t sub_21B1A562C(void *a1)
{
  a1[1] = sub_21B1A5664();
  a1[2] = sub_21B1A56B8();
  result = sub_21B1A570C();
  a1[3] = result;
  return result;
}

unint64_t sub_21B1A5664()
{
  result = qword_27CD6F180;
  if (!qword_27CD6F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F180);
  }

  return result;
}

unint64_t sub_21B1A56B8()
{
  result = qword_27CD6F188;
  if (!qword_27CD6F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F188);
  }

  return result;
}

unint64_t sub_21B1A570C()
{
  result = qword_27CD6F190;
  if (!qword_27CD6F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F190);
  }

  return result;
}

unint64_t sub_21B1A5784()
{
  result = qword_27CD6F198;
  if (!qword_27CD6F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F198);
  }

  return result;
}

unint64_t sub_21B1A57DC()
{
  result = qword_27CD6F1A0;
  if (!qword_27CD6F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F1A0);
  }

  return result;
}

unint64_t sub_21B1A5834()
{
  result = qword_27CD6F1A8;
  if (!qword_27CD6F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F1A8);
  }

  return result;
}

uint64_t sub_21B1A5888(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021B20F630 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021B20EBA0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021B20EB60 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

PoirotBlocks::JoinBlockConfig __swiftcall JoinBlockConfig.init(name:joinDatasetNames:onPivots:)(Swift::String name, Swift::OpaquePointer joinDatasetNames, Swift::OpaquePointer onPivots)
{
  *v3 = name;
  *(v3 + 16) = joinDatasetNames;
  *(v3 + 24) = onPivots;
  result.name = name;
  result.onPivots = onPivots;
  result.joinDatasetNames = joinDatasetNames;
  return result;
}

uint64_t sub_21B1A5A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B20D0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED18, &qword_21B219FB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v72 - v15;
  v17 = sub_21B20CA68();
  v93 = *(v17 - 8);
  v18 = *(v93 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v92 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v72 - v21;
  v23 = type metadata accessor for DataSourceModel();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v91 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v87 = &v72 - v29;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    return 0;
  }

  if (!v30 || a1 == a2)
  {
    return 1;
  }

  v77 = v27;
  v73 = v8;
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v81 = a2 + v31;
  v32 = 0;
  v83 = a1 + v31;
  v84 = 0x800000021B20E720;
  v94 = v93 + 16;
  v88 = (v93 + 8);
  v76 = (v5 + 48);
  v72 = (v5 + 32);
  v74 = (v5 + 8);
  v75 = v12;
  v82 = *(v28 + 72);
  v33 = v87;
  v79 = v16;
  v80 = v4;
  v78 = v13;
  v86 = v30;
  while (1)
  {
    v34 = v82 * v32;
    result = sub_21B1A7CAC(v83 + v82 * v32, v33, type metadata accessor for DataSourceModel);
    if (v32 == v86)
    {
      break;
    }

    v36 = v81 + v34;
    v37 = v91;
    sub_21B1A7CAC(v36, v91, type metadata accessor for DataSourceModel);
    v38 = *v33 == *v37 && v33[1] == v37[1];
    if (!v38 && (sub_21B20DB28() & 1) == 0 || (*(v87 + 16) != *(v91 + 16) || *(v87 + 24) != *(v91 + 24)) && (sub_21B20DB28() & 1) == 0)
    {
      goto LABEL_67;
    }

    v39 = *(v87 + 32);
    if (v39 <= 1)
    {
      if (*(v87 + 32))
      {
        v44 = 0x627550656D6F6962;
      }

      else
      {
        v44 = 0x727453656D6F6962;
      }

      v42 = 0xEE0072656873696CLL;
      if (*(v87 + 32))
      {
        v45 = 0xEE0072656873696CLL;
      }

      else
      {
        v45 = 0xEB000000006D6165;
      }

      v40 = v32;
      v41 = 0xEF656C6261546D6FLL;
      v43 = 0x7473754374736F68;
    }

    else
    {
      v40 = v32;
      v41 = 0xEF656C6261546D6FLL;
      v42 = 0xEE0072656873696CLL;
      v43 = 0x7473754374736F68;
      if (v39 == 2)
      {
        v44 = 0xD000000000000010;
        v45 = v84;
      }

      else
      {
        if (v39 == 3)
        {
          v44 = 0x7473754374736F68;
        }

        else
        {
          v44 = 0x6573616261746164;
        }

        if (v39 == 3)
        {
          v45 = 0xEF656C6261546D6FLL;
        }

        else
        {
          v45 = 0xED0000656C626154;
        }
      }
    }

    v46 = v40 + 1;
    v47 = *(v91 + 32);
    if (v47 != 3)
    {
      v43 = 0x6573616261746164;
      v41 = 0xED0000656C626154;
    }

    if (v47 == 2)
    {
      v43 = 0xD000000000000010;
      v41 = v84;
    }

    if (*(v91 + 32))
    {
      v48 = 0x627550656D6F6962;
    }

    else
    {
      v48 = 0x727453656D6F6962;
    }

    if (!*(v91 + 32))
    {
      v42 = 0xEB000000006D6165;
    }

    v49 = *(v91 + 32) <= 1u ? v48 : v43;
    v50 = *(v91 + 32) <= 1u ? v42 : v41;
    v85 = v46;
    if (v44 == v49 && v45 == v50)
    {
    }

    else
    {
      v51 = sub_21B20DB28();

      if ((v51 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    v52 = *(v87 + 40);
    v53 = *(v91 + 40);
    v54 = *(v52 + 16);
    if (v54 != *(v53 + 16))
    {
      goto LABEL_67;
    }

    if (v54 && v52 != v53)
    {
      v55 = 0;
      v56 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v89 = v53 + v56;
      v90 = v52 + v56;
      while (v55 < *(v52 + 16))
      {
        v57 = *(v93 + 72) * v55;
        v58 = *(v93 + 16);
        result = v58(v22, v90 + v57, v17);
        if (v55 >= *(v53 + 16))
        {
          goto LABEL_70;
        }

        v59 = v22;
        v60 = v92;
        v58(v92, v89 + v57, v17);
        sub_21B1A7D74(&qword_27CD6F218, MEMORY[0x277D3E638]);
        v61 = sub_21B20D2A8();
        v62 = *v88;
        v63 = v60;
        v22 = v59;
        (*v88)(v63, v17);
        result = (v62)(v59, v17);
        if ((v61 & 1) == 0)
        {
          goto LABEL_67;
        }

        if (v54 == ++v55)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
      break;
    }

LABEL_57:
    v64 = *(v77 + 32);
    v65 = *(v78 + 48);
    v33 = v87;
    v66 = v79;
    sub_21B18C904(v87 + v64, v79);
    sub_21B18C904(v91 + v64, v66 + v65);
    v67 = *v76;
    v68 = v80;
    if ((*v76)(v66, 1, v80) == 1)
    {
      if (v67(v66 + v65, 1, v68) != 1)
      {
        goto LABEL_66;
      }

      sub_21B186488(v66, &qword_27CD6EC78, &unk_21B215AD0);
      sub_21B1A7D14(v91, type metadata accessor for DataSourceModel);
      sub_21B1A7D14(v33, type metadata accessor for DataSourceModel);
    }

    else
    {
      v69 = v75;
      sub_21B18C904(v66, v75);
      if (v67(v66 + v65, 1, v68) == 1)
      {
        (*v74)(v69, v68);
LABEL_66:
        sub_21B186488(v66, &qword_27CD6ED18, &qword_21B219FB0);
LABEL_67:
        sub_21B1A7D14(v91, type metadata accessor for DataSourceModel);
        sub_21B1A7D14(v87, type metadata accessor for DataSourceModel);
        return 0;
      }

      v70 = v73;
      (*v72)(v73, v66 + v65, v68);
      sub_21B1A7D74(&qword_27CD6ED20, MEMORY[0x277D3E578]);
      LODWORD(v90) = sub_21B20D2A8();
      v71 = *v74;
      (*v74)(v70, v68);
      v71(v69, v68);
      sub_21B186488(v66, &qword_27CD6EC78, &unk_21B215AD0);
      sub_21B1A7D14(v91, type metadata accessor for DataSourceModel);
      sub_21B1A7D14(v33, type metadata accessor for DataSourceModel);
      if ((v90 & 1) == 0)
      {
        return 0;
      }
    }

    result = 1;
    v32 = v85;
    if (v85 == v86)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1A6390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v31 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = 0;
  v34 = a2 + 32;
  v35 = a1 + 32;
  v31 = v12;
  while (v13 != v12)
  {
    v14 = (v35 + 24 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = (v34 + 24 * v13);
    v19 = v18[1];
    v20 = v18[2];
    if (v15 != *v18 || v16 != v19)
    {
      v22 = v16;
      v23 = v18[1];
      v24 = sub_21B20DB28();
      v16 = v22;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }

    v36 = v19;
    v25 = *(v17 + 16);
    if (v25 != *(v20 + 16))
    {
      return 0;
    }

    if (v25 && v17 != v20)
    {
      v32 = v13;
      v33 = v16;
      v26 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v37 = v17 + v26;
      v27 = v20 + v26;

      v28 = 0;
      while (v28 < *(v17 + 16))
      {
        v29 = *(v38 + 72) * v28;
        result = sub_21B1A7CAC(v37 + v29, v11, type metadata accessor for DatasetColumnDescription);
        if (v28 >= *(v20 + 16))
        {
          goto LABEL_26;
        }

        sub_21B1A7CAC(v27 + v29, v8, type metadata accessor for DatasetColumnDescription);
        sub_21B1A7D74(&qword_27CD6F210, type metadata accessor for DatasetColumnDescription);
        v30 = sub_21B20D2A8();
        sub_21B1A7D14(v8, type metadata accessor for DatasetColumnDescription);
        result = sub_21B1A7D14(v11, type metadata accessor for DatasetColumnDescription);
        if ((v30 & 1) == 0)
        {

          return 0;
        }

        if (v25 == ++v28)
        {

          v12 = v31;
          v13 = v32;
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

LABEL_5:
    ++v13;
    result = 1;
    if (v13 == v12)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1A66B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_21B1A7CAC(v14, v11, type metadata accessor for DatasetColumnDescription);
        sub_21B1A7CAC(v15, v8, type metadata accessor for DatasetColumnDescription);
        sub_21B1A7D74(&qword_27CD6F210, type metadata accessor for DatasetColumnDescription);
        v17 = sub_21B20D2A8();
        sub_21B1A7D14(v8, type metadata accessor for DatasetColumnDescription);
        sub_21B1A7D14(v11, type metadata accessor for DatasetColumnDescription);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_21B1A68A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      if (*(*v3 + 16) != *(*i + 16))
      {
        break;
      }

      v7 = *(v3 - 1);
      v9 = *(i - 2);
      v8 = *(i - 1);
      v11[3] = *(v3 - 2);
      v11[4] = v7;
      v11[5] = v5;
      v11[0] = v9;
      v11[1] = v8;
      v11[2] = v6;
      if ((sub_21B1DB110(v11) & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21B1A695C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21B20DB28() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21B1A69EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B20CA68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_21B1A7D74(&qword_27CD6F218, MEMORY[0x277D3E638]);
    v22 = sub_21B20D2A8();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1A6C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_21B1B7508(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_21B1A6CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    v13 = *(v3 - 2);
    v14 = *(v3 - 1);
    v15 = *v3;
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        if (v15 != 3)
        {
          goto LABEL_35;
        }

        sub_21B1A7C90(*(i - 2), *(i - 1), 3u);
        sub_21B1A7C90(v13, v14, 3u);
        if (v10 != v13)
        {
          return 0;
        }
      }

      else if (v12 == 4)
      {
        if (v15 != 4)
        {
          goto LABEL_35;
        }

        v17 = *(v3 - 2);
        sub_21B1A7C90(*(i - 2), *(i - 1), 4u);
        sub_21B1A7C90(v13, v14, 4u);
        if (*&v10 != *&v13)
        {
          return 0;
        }
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_35;
        }

        sub_21B1A7C90(*(i - 2), *(i - 1), 5u);
        sub_21B1A7C90(v13, v14, 5u);
        if ((v13 ^ v10))
        {
          return 0;
        }
      }

      goto LABEL_6;
    }

    if (*i)
    {
      break;
    }

    if (*v3)
    {
LABEL_32:
      v20 = *(i - 2);
      goto LABEL_34;
    }

    sub_21B1A7C74(*(v3 - 2), *(v3 - 1), 0);
    sub_21B1A7C74(v10, v11, 0);
    sub_21B1A7C74(v13, v14, 0);
    sub_21B1A7C74(v10, v11, 0);
    v18 = sub_21B1B76AC(v10, v13);
    sub_21B1A7C90(v10, v11, 0);
    sub_21B1A7C90(v13, v14, 0);
    sub_21B1A7C90(v13, v14, 0);
    sub_21B1A7C90(v10, v11, 0);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v12 == 1)
  {
    if (v15 != 1)
    {
      goto LABEL_32;
    }

    sub_21B1A7C74(*(v3 - 2), *(v3 - 1), 1u);
    sub_21B1A7C74(v10, v11, 1u);
    sub_21B1A7C74(v13, v14, 1u);
    sub_21B1A7C74(v10, v11, 1u);
    v16 = sub_21B1A6CB8(v10, v13);
    sub_21B1A7C90(v10, v11, 1u);
    sub_21B1A7C90(v13, v14, 1u);
    sub_21B1A7C90(v13, v14, 1u);
    sub_21B1A7C90(v10, v11, 1u);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v15 == 2)
  {
    if (v10 == v13 && v11 == v14)
    {
      sub_21B1A7C74(*(i - 2), *(i - 1), 2u);
      sub_21B1A7C74(v10, v11, 2u);
      sub_21B1A7C90(v10, v11, 2u);
      sub_21B1A7C90(v10, v11, 2u);
    }

    else
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = sub_21B20DB28();
      sub_21B1A7C74(v13, v14, 2u);
      sub_21B1A7C74(v10, v11, 2u);
      sub_21B1A7C90(v10, v11, 2u);
      sub_21B1A7C90(v13, v14, 2u);
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_6;
  }

  v21 = *(i - 1);
LABEL_34:
  sub_21B1A7C74(*(i - 2), *(i - 1), *i);

LABEL_35:
  sub_21B1A7C74(v13, v14, v15);
  sub_21B1A7C90(v10, v11, v12);
  sub_21B1A7C90(v13, v14, v15);
  sub_21B1A7C90(v10, v11, v12);
  return 0;
}

uint64_t static JoinBlockConfig.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21B20DB28() & 1) == 0 || (sub_21B1A695C(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_21B1A695C(v3, v4);
}

uint64_t sub_21B1A7110()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x73746F7669506E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21B1A7168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1A7B54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1A7190(uint64_t a1)
{
  v2 = sub_21B1A7408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1A71CC(uint64_t a1)
{
  v2 = sub_21B1A7408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JoinBlockConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1B0, &qword_21B2135E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A7408();
  sub_21B20DD08();
  LOBYTE(v19) = 0;
  v12 = v17;
  sub_21B20D9E8();
  if (!v12)
  {
    v13 = v15;
    v19 = v16;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1C0, &unk_21B214CD0);
    sub_21B1A7734(&qword_27CD6F1C8);
    sub_21B20DA48();
    v19 = v13;
    v18 = 2;
    sub_21B20DA48();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21B1A7408()
{
  result = qword_27CD6F1B8;
  if (!qword_27CD6F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F1B8);
  }

  return result;
}

uint64_t JoinBlockConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1D0, &qword_21B2135E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A7408();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v19 = sub_21B20D8C8();
  v20 = v11;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1C0, &unk_21B214CD0);
  v21 = 1;
  sub_21B1A7734(&qword_27CD6F1D8);
  sub_21B20D918();
  v17 = v22;
  v21 = 2;
  sub_21B20D918();
  (*(v6 + 8))(v9, v5);
  v12 = v22;
  v13 = v18;
  v14 = v20;
  *v18 = v19;
  v13[1] = v14;
  v13[2] = v17;
  v13[3] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21B1A7734(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6F1C0, &unk_21B214CD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B1A77A0(void *a1)
{
  a1[1] = sub_21B1A77D8();
  a1[2] = sub_21B1A782C();
  result = sub_21B1A7880();
  a1[3] = result;
  return result;
}

unint64_t sub_21B1A77D8()
{
  result = qword_27CD6F1E0;
  if (!qword_27CD6F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F1E0);
  }

  return result;
}

unint64_t sub_21B1A782C()
{
  result = qword_27CD6F1E8;
  if (!qword_27CD6F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F1E8);
  }

  return result;
}

unint64_t sub_21B1A7880()
{
  result = qword_27CD6F1F0;
  if (!qword_27CD6F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F1F0);
  }

  return result;
}

uint64_t sub_21B1A7904(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21B20DB28() & 1) == 0 || (sub_21B1A695C(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_21B1A695C(v3, v4);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B1A79A4(uint64_t a1, int a2)
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

uint64_t sub_21B1A79EC(uint64_t result, int a2, int a3)
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

unint64_t sub_21B1A7A50()
{
  result = qword_27CD6F1F8;
  if (!qword_27CD6F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F1F8);
  }

  return result;
}

unint64_t sub_21B1A7AA8()
{
  result = qword_27CD6F200;
  if (!qword_27CD6F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F200);
  }

  return result;
}

unint64_t sub_21B1A7B00()
{
  result = qword_27CD6F208;
  if (!qword_27CD6F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F208);
  }

  return result;
}

uint64_t sub_21B1A7B54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021B20E980 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746F7669506E6FLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21B1A7C74(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_21B1A7C90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_21B1A7CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B1A7D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B1A7D74(unint64_t *a1, void (*a2)(uint64_t))
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

PoirotBlocks::MaterializedViewBlockConfig __swiftcall MaterializedViewBlockConfig.init(name:queryParamsDataset:)(Swift::String name, Swift::String_optional queryParamsDataset)
{
  v2->value = name;
  v2[1] = queryParamsDataset;
  result.queryParamsDataset = queryParamsDataset;
  result.name = name;
  return result;
}

uint64_t static MaterializedViewBlockConfig.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21B20DB28(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_21B20DB28() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_21B1A7E68()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_21B1A7EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_21B20DB28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021B20EB60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21B1A7F84(uint64_t a1)
{
  v2 = sub_21B1A8190();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1A7FC0(uint64_t a1)
{
  v2 = sub_21B1A8190();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MaterializedViewBlockConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F220, &qword_21B2137E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A8190();
  sub_21B20DD08();
  v16 = 0;
  v12 = v14[3];
  sub_21B20D9E8();
  if (!v12)
  {
    v15 = 1;
    sub_21B20D998();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21B1A8190()
{
  result = qword_27CD6F228;
  if (!qword_27CD6F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F228);
  }

  return result;
}

uint64_t MaterializedViewBlockConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F230, &qword_21B2137E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A8190();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_21B20D8C8();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_21B20D868();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21B1A83E4(void *a1)
{
  a1[1] = sub_21B1A841C();
  a1[2] = sub_21B1A8470();
  result = sub_21B1A84C4();
  a1[3] = result;
  return result;
}

unint64_t sub_21B1A841C()
{
  result = qword_27CD6F238;
  if (!qword_27CD6F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F238);
  }

  return result;
}

unint64_t sub_21B1A8470()
{
  result = qword_27CD6F240;
  if (!qword_27CD6F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F240);
  }

  return result;
}

unint64_t sub_21B1A84C4()
{
  result = qword_27CD6F248;
  if (!qword_27CD6F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F248);
  }

  return result;
}

uint64_t sub_21B1A8548(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21B20DB28(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_21B20DB28() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_21B1A860C()
{
  result = qword_27CD6F250;
  if (!qword_27CD6F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F250);
  }

  return result;
}

unint64_t sub_21B1A8664()
{
  result = qword_27CD6F258;
  if (!qword_27CD6F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F258);
  }

  return result;
}

unint64_t sub_21B1A86BC()
{
  result = qword_27CD6F260;
  if (!qword_27CD6F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F260);
  }

  return result;
}

PoirotBlocks::QueryParametersBlockConfig __swiftcall QueryParametersBlockConfig.init(name:outputDescription:)(PoirotBlocks::QueryParametersBlockConfig name, Swift::OpaquePointer_optional outputDescription)
{
  *v2 = name.name;
  v2[1]._countAndFlagsBits = outputDescription.value._rawValue;
  name.outputDescription = outputDescription;
  return name;
}

unint64_t sub_21B1A8720()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_21B1A8758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_21B20DB28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021B20EBA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21B1A883C(uint64_t a1)
{
  v2 = sub_21B1A8DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1A8878(uint64_t a1)
{
  v2 = sub_21B1A8DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t QueryParametersBlockConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F268, &unk_21B213A00);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A8DB4();
  sub_21B20DD08();
  v17 = 0;
  sub_21B20D9E8();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
    sub_21B1A4798(&qword_27CD6EBF8, &qword_27CD6EC00);
    sub_21B20D9D8();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t QueryParametersBlockConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F278, &qword_21B213A10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A8DB4();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_21B20D8C8();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
  v18 = 1;
  sub_21B1A4798(&qword_27CD6F110, &qword_27CD6F118);
  sub_21B20D8B8();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s12PoirotBlocks26QueryParametersBlockConfigV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_21B20DB28(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {

        v7 = sub_21B1A66B0(v2, v3);

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_21B1A8DB4()
{
  result = qword_27CD6F270;
  if (!qword_27CD6F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F270);
  }

  return result;
}

unint64_t sub_21B1A8E08(void *a1)
{
  a1[1] = sub_21B1A8E40();
  a1[2] = sub_21B1A8E94();
  result = sub_21B1A8EE8();
  a1[3] = result;
  return result;
}

unint64_t sub_21B1A8E40()
{
  result = qword_27CD6F280;
  if (!qword_27CD6F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F280);
  }

  return result;
}

unint64_t sub_21B1A8E94()
{
  result = qword_27CD6F288;
  if (!qword_27CD6F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F288);
  }

  return result;
}

unint64_t sub_21B1A8EE8()
{
  result = qword_27CD6F290;
  if (!qword_27CD6F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F290);
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

uint64_t sub_21B1A8F50(uint64_t a1, int a2)
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

uint64_t sub_21B1A8F98(uint64_t result, int a2, int a3)
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

unint64_t sub_21B1A8FFC()
{
  result = qword_27CD6F298;
  if (!qword_27CD6F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F298);
  }

  return result;
}

unint64_t sub_21B1A9054()
{
  result = qword_27CD6F2A0;
  if (!qword_27CD6F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F2A0);
  }

  return result;
}

unint64_t sub_21B1A90AC()
{
  result = qword_27CD6F2A8;
  if (!qword_27CD6F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F2A8);
  }

  return result;
}

uint64_t static SentinelBlockConfig.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B20DB28();
  }
}

uint64_t sub_21B1A9140()
{
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](0);
  return sub_21B20DCA8();
}

uint64_t sub_21B1A9184()
{
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](0);
  return sub_21B20DCA8();
}

uint64_t sub_21B1A91D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21B20DB28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B1A925C(uint64_t a1)
{
  v2 = sub_21B1A9410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1A9298(uint64_t a1)
{
  v2 = sub_21B1A9410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SentinelBlockConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F2B0, &qword_21B213C10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A9410();
  sub_21B20DD08();
  sub_21B20D9E8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21B1A9410()
{
  result = qword_27CD6F2B8;
  if (!qword_27CD6F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F2B8);
  }

  return result;
}

uint64_t SentinelBlockConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F2C0, &qword_21B213C18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A9410();
  sub_21B20DCD8();
  if (!v2)
  {
    v11 = sub_21B20D8C8();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21B1A95D8(void *a1)
{
  a1[1] = sub_21B1A9610();
  a1[2] = sub_21B1A9664();
  result = sub_21B1A96B8();
  a1[3] = result;
  return result;
}

unint64_t sub_21B1A9610()
{
  result = qword_27CD6F2C8;
  if (!qword_27CD6F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F2C8);
  }

  return result;
}

unint64_t sub_21B1A9664()
{
  result = qword_27CD6F2D0;
  if (!qword_27CD6F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F2D0);
  }

  return result;
}

unint64_t sub_21B1A96B8()
{
  result = qword_27CD6F2D8;
  if (!qword_27CD6F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F2D8);
  }

  return result;
}

uint64_t sub_21B1A9724(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F2B0, &qword_21B213C10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A9410();
  sub_21B20DD08();
  sub_21B20D9E8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t getEnumTagSinglePayload for SentinelBlockConfig.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SentinelBlockConfig.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21B1A9954()
{
  result = qword_27CD6F2E0;
  if (!qword_27CD6F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F2E0);
  }

  return result;
}

unint64_t sub_21B1A99AC()
{
  result = qword_27CD6F2E8;
  if (!qword_27CD6F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F2E8);
  }

  return result;
}

unint64_t sub_21B1A9A04()
{
  result = qword_27CD6F2F0;
  if (!qword_27CD6F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F2F0);
  }

  return result;
}

__n128 TemplateBlockConfig.init(name:templateBlock:macros:queryName:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 24);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = *(a3 + 1);
  *(a7 + 40) = v8;
  result = *(a3 + 2);
  *(a7 + 48) = result;
  *(a7 + 64) = a4;
  *(a7 + 72) = a5;
  *(a7 + 80) = a6;
  return result;
}

uint64_t TemplateBlockConfig.templateBlock.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
}

uint64_t sub_21B1A9AF0()
{
  v1 = 1701667182;
  v2 = 0x736F7263616DLL;
  if (*v0 != 2)
  {
    v2 = 0x6D614E7972657571;
  }

  if (*v0)
  {
    v1 = 0x6574616C706D6574;
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

uint64_t sub_21B1A9B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1AAF7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1A9B98(uint64_t a1)
{
  v2 = sub_21B1AA8FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1A9BD4(uint64_t a1)
{
  v2 = sub_21B1AA8FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemplateBlockConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F2F8, &qword_21B213E10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v27 = v1[2];
  v28 = v10;
  v11 = v1[4];
  v38 = *(v1 + 40);
  v13 = v1[6];
  v12 = v1[7];
  v29 = v11;
  v30 = v12;
  v14 = v1[9];
  v25 = v1[8];
  v26 = v13;
  v24 = v14;
  v15 = v1[10];
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_21B1AA8FC();
  sub_21B20DD08();
  LOBYTE(v32) = 0;
  v21 = v31;
  sub_21B20D9E8();
  if (!v21)
  {
    v22 = v25;
    v31 = v15;
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v35 = v38;
    v36 = v26;
    v37 = v30;
    v39 = 1;
    sub_21B1AA950();

    sub_21B20DA48();

    v32 = v22;
    v39 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F310, &qword_21B213E18);
    sub_21B1AA9A4();
    sub_21B20DA48();
    LOBYTE(v32) = 3;
    sub_21B20D9E8();
  }

  return (*(v4 + 8))(v7, v20);
}

uint64_t TemplateBlockConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F328, &qword_21B213E28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1AA8FC();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  v11 = sub_21B20D8C8();
  v29 = v12;
  LOBYTE(v30) = 1;
  sub_21B1AAA4C();
  sub_21B20D918();
  v25 = v36;
  v27 = v37;
  v26 = v38;
  v47 = v39;
  v24 = v40;
  v28 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F310, &qword_21B213E18);
  LOBYTE(v30) = 2;
  sub_21B1AAAA0();
  sub_21B20D918();
  v23 = v36;
  v48 = 3;
  v13 = sub_21B20D8C8();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v9, v5);
  *&v30 = v11;
  v17 = v29;
  *(&v30 + 1) = v29;
  *&v31 = v25;
  v18 = v27;
  v19 = v26;
  *(&v31 + 1) = v27;
  *&v32 = v26;
  BYTE8(v32) = v47;
  *&v33 = v24;
  *(&v33 + 1) = v28;
  *&v34 = v23;
  *(&v34 + 1) = v16;
  v35 = v15;
  *(a2 + 80) = v15;
  v20 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v20;
  *(a2 + 64) = v34;
  v21 = v31;
  *a2 = v30;
  *(a2 + 16) = v21;
  sub_21B1AABB4(&v30, &v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36 = v11;
  v37 = v17;
  v38 = v25;
  v39 = v18;
  v40 = v19;
  LOBYTE(v41) = v47;
  v42 = v24;
  v43 = v28;
  v44 = v23;
  v45 = v16;
  v46 = v15;
  return sub_21B189514(&v36);
}

uint64_t TemplateConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B17FB4C(a1, &v12);
  BlockConfig.init(from:)(&v12, v17);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_21B193A60(v17, &v12);
  if (v16)
  {
    sub_21B1894C0(&v12);
    v12 = 0;
    *&v13 = 0xE000000000000000;
    sub_21B20D6A8();
    MEMORY[0x21CEEBBB0](0xD000000000000023, 0x800000021B20F650);
    sub_21B20D768();
    v6 = v12;
    v7 = v13;
    sub_21B1AABEC();
    swift_allocError();
    *v8 = v6;
    v8[1] = v7;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21B1894C0(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = sub_21B1894C0(v17);
    v9 = v14;
    v10 = v15;
    v11 = v13;
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 24) = v9;
    *(a2 + 32) = v10;
  }

  return result;
}

uint64_t TemplateConfig.encode(to:)(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v9[0] = *v1;
  v9[1] = v3;
  v9[2] = v4;
  v10 = v5;
  v11 = v7;
  v12 = v6;
  v13 = 0;

  BlockConfig.encode(to:)(a1);
  return sub_21B1894C0(v9);
}

uint64_t static TemplateConfig.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v3 = *a2;
  v4 = *(a2 + 24);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = v2;
  v13 = *(a1 + 2);
  v6 = v3;
  v7 = *(a2 + 1);
  v8 = v4;
  v9 = *(a2 + 2);
  return _s12PoirotBlocks22AggregationBlockConfigV2eeoiySbAC_ACtFZ_0(&v10, &v6) & 1;
}

uint64_t sub_21B1AA570(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v9[0] = *v1;
  v9[1] = v3;
  v9[2] = v4;
  v10 = v5;
  v11 = v7;
  v12 = v6;
  v13 = 0;

  BlockConfig.encode(to:)(a1);
  return sub_21B1894C0(v9);
}

uint64_t sub_21B1AA5F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v3 = *a2;
  v4 = *(a2 + 24);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = v2;
  v13 = *(a1 + 2);
  v6 = v3;
  v7 = *(a2 + 1);
  v8 = v4;
  v9 = *(a2 + 2);
  return _s12PoirotBlocks22AggregationBlockConfigV2eeoiySbAC_ACtFZ_0(&v10, &v6) & 1;
}

double TemplateConfig.makeReplica(replacingMacros:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v18[0] = *v2;
  v18[1] = v6;
  v18[2] = v7;
  v19 = v8;
  v20 = *(v2 + 32);
  if (*(a1 + 16) && (v9 = sub_21B1B9778(v5, v6), (v10 & 1) != 0))
  {
    v11 = (*(a1 + 56) + 16 * v9);
    v13 = *v11;
    v12 = v11[1];

    v14 = sub_21B1B303C(a1, v7);
    v15 = sub_21B1AA734(v18, a1);
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = 0;
    *(a2 + 32) = v15;
    *(a2 + 40) = v17;
    *(a2 + 88) = 0;
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 88) = -1;
  }

  return result;
}

uint64_t sub_21B1AA734(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a2 + 16);
    v6 = *(a1 + 40);

    if (v5)
    {
      v7 = sub_21B1B9778(v2, v3);
      if (v8)
      {
        v9 = (*(a2 + 56) + 16 * v7);
        v2 = *v9;
        v10 = v9[1];
      }
    }
  }

  return v2;
}

uint64_t _s12PoirotBlocks19TemplateBlockConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v14 = *(a2 + 64);
  v13 = *(a2 + 72);
  v15 = *(a2 + 80);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    v20 = *(a1 + 48);
    v21 = *(a1 + 24);
    v18 = *(a2 + 48);
    v19 = *(a2 + 24);
    v16 = sub_21B20DB28();
    v12 = v18;
    v10 = v19;
    v5 = v20;
    v3 = v21;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = v2;
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  if ((_s12PoirotBlocks22AggregationBlockConfigV2eeoiySbAC_ACtFZ_0(&v26, &v22) & 1) == 0 || (sub_21B1A6C00(v7, v14) & 1) == 0)
  {
    return 0;
  }

  if (v6 == v13 && v8 == v15)
  {
    return 1;
  }

  return sub_21B20DB28();
}

unint64_t sub_21B1AA8FC()
{
  result = qword_27CD6F300;
  if (!qword_27CD6F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F300);
  }

  return result;
}

unint64_t sub_21B1AA950()
{
  result = qword_27CD6F308;
  if (!qword_27CD6F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F308);
  }

  return result;
}

unint64_t sub_21B1AA9A4()
{
  result = qword_27CD6F318;
  if (!qword_27CD6F318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6F310, &qword_21B213E18);
    sub_21B1AAB48(&qword_27CD6F320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F318);
  }

  return result;
}

unint64_t sub_21B1AAA4C()
{
  result = qword_27CD6F330;
  if (!qword_27CD6F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F330);
  }

  return result;
}

unint64_t sub_21B1AAAA0()
{
  result = qword_27CD6F338;
  if (!qword_27CD6F338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6F310, &qword_21B213E18);
    sub_21B1AAB48(&qword_27CD6F340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F338);
  }

  return result;
}

uint64_t sub_21B1AAB48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EE18, &qword_21B213E20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B1AABEC()
{
  result = qword_27CD6F348;
  if (!qword_27CD6F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F348);
  }

  return result;
}

unint64_t sub_21B1AAC40(void *a1)
{
  a1[1] = sub_21B1AAC78();
  a1[2] = sub_21B1AACCC();
  result = sub_21B1AAD20();
  a1[3] = result;
  return result;
}

unint64_t sub_21B1AAC78()
{
  result = qword_27CD6F350;
  if (!qword_27CD6F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F350);
  }

  return result;
}

unint64_t sub_21B1AACCC()
{
  result = qword_27CD6F358;
  if (!qword_27CD6F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F358);
  }

  return result;
}

unint64_t sub_21B1AAD20()
{
  result = qword_27CD6F360;
  if (!qword_27CD6F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F360);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21B1AAD98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_21B1AADE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B1AAE78()
{
  result = qword_27CD6F368;
  if (!qword_27CD6F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F368);
  }

  return result;
}

unint64_t sub_21B1AAED0()
{
  result = qword_27CD6F370;
  if (!qword_27CD6F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F370);
  }

  return result;
}

unint64_t sub_21B1AAF28()
{
  result = qword_27CD6F378;
  if (!qword_27CD6F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F378);
  }

  return result;
}

uint64_t sub_21B1AAF7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xED00006B636F6C42 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736F7263616DLL && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E7972657571 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21B1AB0EC(uint64_t a1)
{
  v67 = a1;
  v62 = sub_21B20C7C8();
  v71 = *(v62 - 8);
  v2 = *(v71 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F3E0, &qword_21B2144B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v53 - v8;
  v60 = sub_21B20C418();
  v63 = *(v60 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B20C728();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v68 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F3E8, &qword_21B2144B8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F3F0, &qword_21B2144C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v53 - v20;
  v22 = sub_21B20C818();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21B20C788();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21B20C7F8();
  v65 = *(v32 - 8);
  v66 = v32;
  v33 = *(v65 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v64) = *v1;
  (*(v28 + 104))(v31, *MEMORY[0x277CC9810], v27);
  sub_21B20C798();
  (*(v28 + 8))(v31, v27);
  sub_21B20C808();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    __break(1u);
LABEL_11:
    sub_21B1ACD78(v27);
    goto LABEL_13;
  }

  (*(v23 + 32))(v26, v21, v22);
  sub_21B20C7E8();
  v36 = sub_21B20C778();
  (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
  sub_21B20C7D8();
  if ((v64 & 1) == 0)
  {
    v51 = v68;
    sub_21B20C7A8();
    sub_21B20C708();
    (*(v69 + 8))(v51, v70);
    return (*(v65 + 8))(v35, v66);
  }

  v37 = *MEMORY[0x277CC98F0];
  v38 = v71;
  v40 = v61;
  v39 = v62;
  v55 = *(v71 + 104);
  v55(v61, v37, v62);
  v27 = v58;
  sub_21B20C7B8();
  v41 = *(v38 + 8);
  v71 = v38 + 8;
  v54 = v41;
  v41(v40, v39);
  v42 = v63;
  v43 = v60;
  v56 = *(v63 + 48);
  if (v56(v27, 1, v60) == 1)
  {
    goto LABEL_11;
  }

  v44 = v59;
  v64 = *(v42 + 32);
  v64(v59, v27, v43);
  if ((sub_21B20C408() & 1) == 0)
  {
LABEL_7:
    v50 = v68;
    sub_21B20C3E8();
    sub_21B20C708();
    (*(v69 + 8))(v50, v70);
    (*(v42 + 8))(v44, v43);
    return (*(v65 + 8))(v35, v66);
  }

  v45 = v68;
  sub_21B20C3F8();
  v46 = v61;
  v47 = v37;
  v48 = v62;
  v55(v61, v47, v62);
  v49 = v57;
  sub_21B20C7B8();
  v54(v46, v48);
  (*(v69 + 8))(v45, v70);
  if (v56(v49, 1, v43) != 1)
  {
    v42 = v63;
    (*(v63 + 8))(v44, v43);
    v64(v44, v49, v43);
    goto LABEL_7;
  }

  sub_21B1ACD78(v49);
LABEL_13:
  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

PoirotBlocks::Interval_optional __swiftcall Interval.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21B20D828();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Interval.rawValue.getter()
{
  if (*v0)
  {
    result = 1801807223;
  }

  else
  {
    result = 7954788;
  }

  *v0;
  return result;
}

uint64_t sub_21B1AB994(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1801807223;
  }

  else
  {
    v4 = 7954788;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1801807223;
  }

  else
  {
    v6 = 7954788;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();
  }

  return v9 & 1;
}

uint64_t sub_21B1ABA2C()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1ABAA0()
{
  *v0;
  sub_21B20D388();
}

uint64_t sub_21B1ABB00()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1ABB70@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21B20D828();

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

void sub_21B1ABBD0(uint64_t *a1@<X8>)
{
  v2 = 7954788;
  if (*v1)
  {
    v2 = 1801807223;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t TimeWindowBlockConfig.outputDescription.getter()
{
  v19 = *(v0 + 33);
  v20 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE38, &qword_21B214180);
  v1 = type metadata accessor for DatasetColumnDescription();
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = 2 * v2;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21B211A80;
  v17 = v3;
  v6 = v5 + v3;
  v7 = *(v1 + 24);
  v8 = *MEMORY[0x277D3E1F8];
  v9 = sub_21B20CCE8();
  v10 = *(*(v9 - 8) + 104);
  v10(v6 + v7, v8, v9);
  *v6 = 0x73745F7472617473;
  *(v6 + 8) = 0xE800000000000000;
  *(v6 + 16) = 0;
  *(v6 + *(v1 + 28)) = 1;
  v18 = v2;
  v11 = v6 + v2;
  v10(v11 + *(v1 + 24), v8, v9);
  *v11 = 0x73745F646E65;
  *(v11 + 8) = 0xE600000000000000;
  *(v11 + 16) = 0;
  *(v11 + *(v1 + 28)) = 1;
  v12 = v6 + v4;
  v10(v12 + *(v1 + 24), v8, v9);
  *v12 = 0xD000000000000013;
  *(v12 + 8) = 0x800000021B20EE50;
  *(v12 + 16) = 0;
  *(v12 + *(v1 + 28)) = 1;
  v21 = v5;
  if (v20 & 1) != 0 && v19 != 2 && (v19)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21B211420;
    v14 = v13 + v17;
    v10(v13 + v17 + *(v1 + 24), *MEMORY[0x277D3E1D8], v9);
    *v14 = 0xD000000000000016;
    *(v14 + 8) = 0x800000021B20EE70;
    *(v14 + 16) = 0;
    *(v14 + *(v1 + 28)) = 1;
    v15 = v13 + v17 + v18;
    v10(v15 + *(v1 + 24), v8, v9);
    *v15 = 0xD000000000000014;
    *(v15 + 8) = 0x800000021B20EE90;
    *(v15 + 16) = 0;
    *(v15 + *(v1 + 28)) = 1;
    sub_21B1D2424(v13);
    return v21;
  }

  return v5;
}

unint64_t sub_21B1AC06C()
{
  v1 = 1701667182;
  *v0;
  if (*v0)
  {
    v1 = 0x6C61767265746E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_21B1AC0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1ACC04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1AC110(uint64_t a1)
{
  v2 = sub_21B1AC794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1AC14C(uint64_t a1)
{
  v2 = sub_21B1AC794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimeWindowBlockConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F380, &qword_21B214188);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v16 = *(v1 + 16);
  v15 = v1[3];
  v10 = *(v1 + 32);
  v14[0] = *(v1 + 33);
  v14[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1AC794();
  sub_21B20DD08();
  v22 = 0;
  v12 = v17;
  sub_21B20D9E8();
  if (!v12)
  {
    v21 = v16;
    v20 = 1;
    sub_21B1AC7E8();
    sub_21B20D9D8();
    v19 = 2;
    sub_21B20D9C8();
    v18 = 3;
    sub_21B20D9A8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t TimeWindowBlockConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F398, &qword_21B214190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1AC794();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_21B20D8C8();
  v13 = v12;
  v22 = v11;
  v25 = 1;
  sub_21B1AC83C();
  sub_21B20D8B8();
  v14 = v26;
  v24 = 2;
  v15 = sub_21B20D898();
  HIDWORD(v19) = v14;
  v21 = v16;
  v20 = v15;
  v23 = 3;
  v18 = sub_21B20D878();
  (*(v6 + 8))(v9, v5);
  *a2 = v22;
  *(a2 + 8) = v13;
  *(a2 + 16) = BYTE4(v19);
  *(a2 + 24) = v20;
  *(a2 + 32) = v21 & 1;
  *(a2 + 33) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s12PoirotBlocks21TimeWindowBlockConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_21B20DB28() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v6 == 2)
    {
      goto LABEL_6;
    }
  }

  else if (v6 != 2)
  {
    if (v2)
    {
      v10 = 1801807223;
    }

    else
    {
      v10 = 7954788;
    }

    if (v2)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    if (v6)
    {
      v12 = 1801807223;
    }

    else
    {
      v12 = 7954788;
    }

    if (v6)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    if (v10 == v12 && v11 == v13)
    {

      if (v4)
      {
LABEL_7:
        if (!v8)
        {
          return 0;
        }

LABEL_33:
        if (v5 == 2)
        {
          if (v9 != 2)
          {
            return 0;
          }
        }

        else if (v9 == 2 || ((v9 ^ v5) & 1) != 0)
        {
          return 0;
        }

        return 1;
      }

LABEL_29:
      if (v3 == v7)
      {
        v16 = v8;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }

      goto LABEL_33;
    }

    v15 = sub_21B20DB28();

    if ((v15 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

  return 0;
}

unint64_t sub_21B1AC794()
{
  result = qword_27CD6F388;
  if (!qword_27CD6F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F388);
  }

  return result;
}

unint64_t sub_21B1AC7E8()
{
  result = qword_27CD6F390;
  if (!qword_27CD6F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F390);
  }

  return result;
}

unint64_t sub_21B1AC83C()
{
  result = qword_27CD6F3A0;
  if (!qword_27CD6F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F3A0);
  }

  return result;
}

unint64_t sub_21B1AC894()
{
  result = qword_27CD6F3A8;
  if (!qword_27CD6F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F3A8);
  }

  return result;
}

unint64_t sub_21B1AC8E8(void *a1)
{
  a1[1] = sub_21B1AC920();
  a1[2] = sub_21B1AC974();
  result = sub_21B1AC9C8();
  a1[3] = result;
  return result;
}

unint64_t sub_21B1AC920()
{
  result = qword_27CD6F3B0;
  if (!qword_27CD6F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F3B0);
  }

  return result;
}

unint64_t sub_21B1AC974()
{
  result = qword_27CD6F3B8;
  if (!qword_27CD6F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F3B8);
  }

  return result;
}

unint64_t sub_21B1AC9C8()
{
  result = qword_27CD6F3C0;
  if (!qword_27CD6F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F3C0);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B1ACA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_21B1ACA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B1ACB00()
{
  result = qword_27CD6F3C8;
  if (!qword_27CD6F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F3C8);
  }

  return result;
}

unint64_t sub_21B1ACB58()
{
  result = qword_27CD6F3D0;
  if (!qword_27CD6F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F3D0);
  }

  return result;
}

unint64_t sub_21B1ACBB0()
{
  result = qword_27CD6F3D8;
  if (!qword_27CD6F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F3D8);
  }

  return result;
}

uint64_t sub_21B1ACC04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021B20F680 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021B20F6A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21B1ACD78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F3E0, &qword_21B2144B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B1ACDE0()
{
  result = qword_27CD6F3F8;
  if (!qword_27CD6F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F3F8);
  }

  return result;
}

uint64_t AnyCodable.isEqual(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_21B17FB4C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F400, &qword_21B2144C8);
  if (swift_dynamicCast())
  {
    v5 = v10[0];
    v6 = v10[1];
    v7 = v11;
    v12[0] = v2;
    v12[1] = v3;
    v13 = v4;
    v8 = _s12PoirotBlocks10AnyCodableO2eeoiySbAC_ACtFZ_0(v12, v10);
    sub_21B1A7C90(v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_21B1ACEF4(uint64_t a1)
{
  *(a1 + 8) = sub_21B1ACF24();
  result = sub_21B1ACF78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21B1ACF24()
{
  result = qword_27CD6F408;
  if (!qword_27CD6F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F408);
  }

  return result;
}

unint64_t sub_21B1ACF78()
{
  result = qword_27CD6F410;
  if (!qword_27CD6F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F410);
  }

  return result;
}

uint64_t BlockConfig.name.getter()
{
  sub_21B193A60(v0, v5);
  if (v7 <= 4u)
  {
    if (v7 <= 1u)
    {
      v1 = *&v5[0];
    }

    else
    {
      if (v7 == 2 || v7 == 3)
      {
        v1 = *&v5[0];

LABEL_16:

        return v1;
      }

      v1 = *&v5[0];
    }

    goto LABEL_16;
  }

  if (v7 <= 6u)
  {
    if (v7 != 5)
    {
      v3[0] = v5[0];
      v3[1] = v5[1];
      v3[2] = v5[2];
      v3[3] = v5[3];
      v4 = v6;
      v1 = *&v5[0];

      sub_21B18C060(v3);
      return v1;
    }

    v1 = *&v5[0];
    goto LABEL_16;
  }

  if (v7 != 7 && v7 != 8)
  {
    v1 = *&v5[0];
    goto LABEL_16;
  }

  return *&v5[0];
}

uint64_t BlockConfig.type.getter@<X0>(char *a1@<X8>)
{
  sub_21B193A60(v1, v5);
  if (v6 <= 4u)
  {
    if (v6 <= 1u)
    {
      if (v6)
      {
        result = sub_21B1894C0(v5);
        v4 = 2;
      }

      else
      {
        result = sub_21B1894C0(v5);
        v4 = 1;
      }
    }

    else if (v6 == 2)
    {
      result = sub_21B1894C0(v5);
      v4 = 4;
    }

    else if (v6 == 3)
    {
      result = sub_21B1894C0(v5);
      v4 = 3;
    }

    else
    {
      result = sub_21B1894C0(v5);
      v4 = 5;
    }

LABEL_19:
    *a1 = v4;
    return result;
  }

  if (v6 > 6u)
  {
    if (v6 == 7)
    {
      result = sub_21B1894C0(v5);
      v4 = 7;
    }

    else if (v6 == 8)
    {
      result = sub_21B1894C0(v5);
      v4 = 8;
    }

    else
    {
      result = sub_21B1894C0(v5);
      v4 = 9;
    }

    goto LABEL_19;
  }

  if (v6 == 5)
  {
    result = sub_21B1894C0(v5);
    *a1 = 0;
  }

  else
  {
    *a1 = 6;
    return sub_21B1894C0(v5);
  }

  return result;
}

uint64_t BlockConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F2C0, &qword_21B213C18);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F418, &qword_21B2144F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v38 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_21B1ADA40();
  sub_21B20DCD8();
  if (!v2)
  {
    v15 = v7;
    v16 = v41;
    v17 = v42;
    LOBYTE(v44) = 0;
    sub_21B1ADA94();
    sub_21B20D918();
    v18 = v8;
    if (v50 > 4u)
    {
      if (v50 <= 6u)
      {
        v23 = v43;
        if (v50 == 5)
        {
          sub_21B17FB4C(v43, &v50);
          JoinBlockConfig.init(from:)(&v50, &v44);
          (*(v9 + 8))(v12, v8);
          LOBYTE(v32) = 0;
          v33 = 0;
          v24 = v44;
          v25 = v45;
          v27 = v46;
          v26 = v47;
          v30 = v46 & 0xFFFFFFFFFFFFFF00;
          v31 = v47 & 0xFFFFFFFFFFFFFF00;
          v34 = 4;
        }

        else
        {
          sub_21B17FB4C(v43, &v44);
          UserDefinedBlockConfig.init(from:)(&v44, &v50);
          (*(v9 + 8))(v12, v8);
          v24 = v50;
          v25 = v51;
          v27 = v52;
          v26 = v53;
          v30 = v52 & 0xFFFFFFFFFFFFFF00;
          v31 = v53 & 0xFFFFFFFFFFFFFF00;
          v29 = v54;
          v28 = v55;
          v32 = v54 >> 8;
          v33 = v54 & 0xFFFFFFFFFFFF0000;
          v59 = v56;
          v60 = v57;
          v61 = v58;
          v34 = 6;
        }

        goto LABEL_24;
      }

      if (v50 == 7)
      {
        v35 = v43;
        sub_21B17FB4C(v43, &v50);
        TimeWindowBlockConfig.init(from:)(&v50, &v44);
        (*(v9 + 8))(v12, v8);
        v33 = 0;
        v30 = 0;
        v24 = v44;
        v25 = v45;
        v27 = v46;
        v26 = v47;
        v29 = v48;
        LOBYTE(v32) = v49;
        v62 = v48;
        v31 = v47 & 0xFFFFFFFFFFFFFF00;
        v34 = 7;
        v19 = v35;
      }

      else
      {
        v40 = v12;
        if (v50 != 8)
        {
          v23 = v43;
          sub_21B17FB4C(v43, &v50);
          QueryParametersBlockConfig.init(from:)(&v50, &v44);
          (*(v9 + 8))(v40, v8);
          LOBYTE(v32) = 0;
          v33 = 0;
          v26 = 0;
          v31 = 0;
          v24 = v44;
          v25 = v45;
          v27 = v46;
          v30 = v46 & 0xFFFFFFFFFFFFFF00;
          v34 = 9;
LABEL_24:
          v19 = v23;
          goto LABEL_25;
        }

        v39 = v8;
        sub_21B17FB4C(v43, &v50);
        v38[1] = v54;
        __swift_project_boxed_opaque_existential_1(&v50, v53);
        sub_21B1A9410();
        sub_21B20DCD8();
        v24 = sub_21B20D8C8();
        v25 = v37;
        (*(v16 + 8))(v15, v4);
        (*(v9 + 8))(v40, v39);
        __swift_destroy_boxed_opaque_existential_1(&v50);
        LOBYTE(v32) = 0;
        v33 = 0;
        v26 = 0;
        v31 = 0;
        v30 = 0;
        v34 = 8;
        v19 = v43;
      }
    }

    else
    {
      v21 = v43;
      v22 = v18;
      if (v50 <= 1u)
      {
        v23 = v43;
        if (v50)
        {
          sub_21B17FB4C(v43, &v44);
          AggregationBlockConfig.init(from:)(&v44, &v50);
          (*(v9 + 8))(v12, v22);
          v34 = 0;
          v31 = 0;
          v24 = v50;
          v25 = v51;
          v27 = v52;
          v29 = v54;
          v28 = v55;
          v30 = v52 & 0xFFFFFFFFFFFFFF00;
          v32 = v54 >> 8;
          v26 = v53;
          v33 = v54 & 0xFFFFFFFFFFFF0000;
        }

        else
        {
          sub_21B17FB4C(v43, &v50);
          MaterializedViewBlockConfig.init(from:)(&v50, &v44);
          (*(v9 + 8))(v12, v22);
          LOBYTE(v32) = 0;
          v33 = 0;
          v24 = v44;
          v25 = v45;
          v27 = v46;
          v26 = v47;
          v30 = v46 & 0xFFFFFFFFFFFFFF00;
          v31 = v47 & 0xFFFFFFFFFFFFFF00;
          v34 = 5;
        }

        goto LABEL_24;
      }

      v23 = v43;
      if (v50 != 2)
      {
        if (v50 == 3)
        {
          sub_21B17FB4C(v43, &v44);
          TemplateBlockConfig.init(from:)(&v44, &v50);
          (*(v9 + 8))(v12, v22);
          v24 = v50;
          v25 = v51;
          v27 = v52;
          v26 = v53;
          v29 = v54;
          v28 = v55;
          v59 = v56;
          v60 = v57;
          v30 = v52 & 0xFFFFFFFFFFFFFF00;
          v31 = v53 & 0xFFFFFFFFFFFFFF00;
          v32 = v54 >> 8;
          v33 = v54 & 0xFFFFFFFFFFFF0000;
          v61 = v58;
          v34 = 3;
        }

        else
        {
          sub_21B17FB4C(v43, &v44);
          TemplateBlockConfig.init(from:)(&v44, &v50);
          (*(v9 + 8))(v12, v22);
          v24 = v50;
          v25 = v51;
          v27 = v52;
          v26 = v53;
          v29 = v54;
          v28 = v55;
          v59 = v56;
          v60 = v57;
          v30 = v52 & 0xFFFFFFFFFFFFFF00;
          v31 = v53 & 0xFFFFFFFFFFFFFF00;
          v32 = v54 >> 8;
          v33 = v54 & 0xFFFFFFFFFFFF0000;
          v61 = v58;
          v34 = 2;
        }

        goto LABEL_24;
      }

      sub_21B17FB4C(v43, &v44);
      ExtractionBlockConfig.init(from:)(&v44, &v50);
      (*(v9 + 8))(v12, v22);
      v30 = 0;
      v24 = v50;
      v25 = v51;
      v27 = v52;
      v26 = v53;
      v29 = v54;
      v31 = v53 & 0xFFFFFFFFFFFFFF00;
      v32 = v54 >> 8;
      v28 = v55;
      v33 = v54 & 0xFFFFFFFFFFFF0000;
      v34 = 1;
      v19 = v21;
    }

LABEL_25:
    *v17 = v24;
    *(v17 + 8) = v25;
    *(v17 + 16) = v30 | v27;
    *(v17 + 24) = v31 | v26;
    *(v17 + 32) = v33 | (v32 << 8) | v29;
    *(v17 + 40) = v28;
    v36 = v60;
    *(v17 + 48) = v59;
    *(v17 + 64) = v36;
    *(v17 + 80) = v61;
    *(v17 + 88) = v34;
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v19 = v43;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

unint64_t sub_21B1ADA40()
{
  result = qword_27CD6F420;
  if (!qword_27CD6F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F420);
  }

  return result;
}

unint64_t sub_21B1ADA94()
{
  result = qword_27CD6F428;
  if (!qword_27CD6F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F428);
  }

  return result;
}

uint64_t BlockConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F2B0, &qword_21B213C10);
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F430, &qword_21B2144F8);
  v56 = *(v58 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v9 = &v53 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1ADA40();
  v57 = v9;
  sub_21B20DD08();
  sub_21B193A60(v1, &v71);
  if (v77 > 4u)
  {
    if (v77 <= 6u)
    {
      if (v77 == 5)
      {
        v19 = v71;
        v20 = v72;
        LOBYTE(v65) = 0;
        LOBYTE(v59) = 0;
        sub_21B1AEA74();
        v21 = v57;
        v22 = v55;
        sub_21B20DA48();
        if (!v22)
        {
          v65 = v19;
          v66 = v20;
          MaterializedViewBlockConfig.encode(to:)(a1);

          v11 = v58;
LABEL_45:
          v26 = v56;
          goto LABEL_46;
        }

        v23 = a1[3];
        v24 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v23);
        sub_21B1AF828(0, 0, v23, v24);
        v11 = v58;
LABEL_40:
        v26 = v56;
        return (*(v26 + 8))(v21, v11);
      }

      v67 = v73;
      v68 = v74;
      *&v69 = v75;
      v65 = v71;
      v66 = v72;
      LOBYTE(v59) = 6;
      v78 = 0;
      sub_21B1AEA74();
      v21 = v57;
      v11 = v58;
      v47 = v55;
      sub_21B20DA48();
      if (!v47)
      {
        UserDefinedBlockConfig.encode(to:)(a1);
        v26 = v56;
        sub_21B18C060(&v65);
LABEL_46:
        v50 = a1[3];
        v51 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v50);
        sub_21B1AF828(0, 0, v50, v51);
        return (*(v26 + 8))(v21, v11);
      }

      sub_21B18C060(&v65);
    }

    else
    {
      if (v77 == 7)
      {
        v27 = v71;
        v28 = v72;
        v29 = *(&v72 + 1);
        v30 = v73;
        LODWORD(v54) = BYTE1(v73);
        LOBYTE(v65) = 7;
        LOBYTE(v59) = 0;
        sub_21B1AEA74();
        v31 = v55;
        sub_21B20DA48();
        if (v31)
        {
          goto LABEL_35;
        }

        v65 = v27;
        LOBYTE(v66) = v28;
        *(&v66 + 1) = v29;
        LOBYTE(v67) = v30;
        BYTE1(v67) = v54;
        TimeWindowBlockConfig.encode(to:)(a1);
        goto LABEL_43;
      }

      if (v77 == 8)
      {
        LOBYTE(v65) = 8;
        LOBYTE(v59) = 0;
        sub_21B1AEA74();
        v12 = v55;
        sub_21B20DA48();
        if (v12)
        {
          goto LABEL_35;
        }

        v13 = a1[3];
        v55 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v13);
        sub_21B1A9410();
        sub_21B20DD08();
        sub_21B20D9E8();
        (*(v54 + 8))(v6, v3);
LABEL_43:

        v11 = v58;
        goto LABEL_44;
      }

      v37 = v71;
      v38 = v72;
      LOBYTE(v65) = 9;
      LOBYTE(v59) = 0;
      sub_21B1AEA74();
      v21 = v57;
      v11 = v58;
      v39 = v55;
      sub_21B20DA48();
      if (!v39)
      {
        v65 = v37;
        *&v66 = v38;
        QueryParametersBlockConfig.encode(to:)(a1);

        goto LABEL_45;
      }
    }

    v48 = a1[3];
    v49 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v48);
    sub_21B1AF828(0, 0, v48, v49);
    goto LABEL_40;
  }

  if (v77 > 1u)
  {
    if (v77 == 2)
    {
      v67 = v73;
      v68 = v74;
      v69 = v75;
      v70 = v76;
      v65 = v71;
      v66 = v72;
      LOBYTE(v59) = 4;
      v78 = 0;
      sub_21B1AEA74();
      v11 = v58;
      goto LABEL_20;
    }

    v11 = v58;
    if (v77 == 3)
    {
      v67 = v73;
      v68 = v74;
      v69 = v75;
      v70 = v76;
      v65 = v71;
      v66 = v72;
      LOBYTE(v59) = 3;
      v78 = 0;
      sub_21B1AEA74();
LABEL_20:
      v21 = v57;
      v25 = v55;
      sub_21B20DA48();
      v26 = v56;
      if (!v25)
      {
        v61 = v67;
        v62 = v68;
        v63 = v69;
        v64 = v70;
        v59 = v65;
        v60 = v66;
        TemplateBlockConfig.encode(to:)(a1);
      }

      sub_21B189514(&v65);
      goto LABEL_46;
    }

    v32 = v71;
    v33 = v72;
    LOBYTE(v65) = 5;
    LOBYTE(v59) = 0;
    sub_21B1AEA74();
    v34 = v55;
    sub_21B20DA48();
    if (!v34)
    {
      v65 = v32;
      v66 = v33;
      JoinBlockConfig.encode(to:)(a1);

LABEL_44:
      v26 = v56;
      v21 = v57;
      goto LABEL_46;
    }

    v35 = a1[3];
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v35);
    sub_21B1AF828(0, 0, v35, v36);
    goto LABEL_36;
  }

  if (v77)
  {
    v40 = *(&v71 + 1);
    v54 = v71;
    v41 = v72;
    v42 = *(&v72 + 1);
    v43 = v73;
    LOBYTE(v65) = 2;
    LOBYTE(v59) = 0;
    sub_21B1AEA74();
    v44 = v55;
    sub_21B20DA48();
    if (!v44)
    {
      *&v65 = v54;
      *(&v65 + 1) = v40;
      LOBYTE(v66) = v41;
      *(&v66 + 1) = v42;
      v67 = v43;
      ExtractionBlockConfig.encode(to:)(a1);
      goto LABEL_42;
    }
  }

  else
  {
    v14 = *(&v71 + 1);
    v54 = v71;
    v15 = v72;
    v16 = BYTE8(v72);
    v17 = v73;
    LOBYTE(v65) = 1;
    LOBYTE(v59) = 0;
    sub_21B1AEA74();
    v18 = v55;
    sub_21B20DA48();
    if (!v18)
    {
      *&v65 = v54;
      *(&v65 + 1) = v14;
      *&v66 = v15;
      BYTE8(v66) = v16;
      v67 = v17;
      AggregationBlockConfig.encode(to:)(a1);
LABEL_42:

      goto LABEL_43;
    }
  }

LABEL_35:

  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_21B1AF828(0, 0, v45, v46);
  v11 = v58;
LABEL_36:
  v26 = v56;
  v21 = v57;
  return (*(v26 + 8))(v21, v11);
}

uint64_t sub_21B1AE3C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x666E6F4372657375;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEA00000000006769;
  }

  if (*a2)
  {
    v6 = 0x666E6F4372657375;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006769;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();
  }

  return v9 & 1;
}

uint64_t sub_21B1AE464()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1AE4E4()
{
  *v0;
  sub_21B20D388();
}

uint64_t sub_21B1AE550()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1AE5CC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21B20D828();

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

void sub_21B1AE62C(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x666E6F4372657375;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006769;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21B1AE668()
{
  if (*v0)
  {
    result = 0x666E6F4372657375;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_21B1AE6A0@<X0>(char *a1@<X8>)
{
  v2 = sub_21B20D828();

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

uint64_t sub_21B1AE704(uint64_t a1)
{
  v2 = sub_21B1ADA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1AE740(uint64_t a1)
{
  v2 = sub_21B1ADA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockConfig.dependencies.getter()
{
  sub_21B193A60(v0, &v9);
  if (v14 <= 4u)
  {
    if (v14 > 1u)
    {
      if (v14 != 2 && v14 != 3)
      {
        v1 = v10;
LABEL_16:

LABEL_17:

        return v1;
      }

      goto LABEL_7;
    }

    if (v14)
    {
      v2 = *(&v11 + 1);
      if (*(&v11 + 1))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v2 = *(&v11 + 1);
      if (*(&v11 + 1))
      {
LABEL_10:
        v3 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE20, &qword_21B212318);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_21B2110C0;
        *(v1 + 32) = v3;
        *(v1 + 40) = v2;
        goto LABEL_16;
      }
    }

    v1 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  if (v14 - 7 < 3)
  {
LABEL_7:
    sub_21B1894C0(&v9);
    return MEMORY[0x277D84F90];
  }

  if (v14 == 5)
  {
    v4 = *(&v10 + 1);
    if (*(&v10 + 1))
    {
      v5 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE20, &qword_21B212318);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_21B2110C0;
      *(v1 + 32) = v5;
      *(v1 + 40) = v4;
    }

    else
    {

      v1 = MEMORY[0x277D84F90];
    }

    goto LABEL_17;
  }

  v7[2] = v11;
  v7[3] = v12;
  v8 = v13;
  v7[0] = v9;
  v7[1] = v10;
  if (v10)
  {
    v1 = v10;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  sub_21B18C060(v7);
  return v1;
}

uint64_t BlockConfig.outputDescription.getter()
{
  sub_21B193A60(v0, &v8);
  if (v13 <= 4u)
  {
    if (v13 > 1u)
    {
LABEL_12:
      sub_21B1894C0(&v8);
      return 0;
    }

    if (v13)
    {
      v1 = *(&v9 + 1);
    }

    else
    {
      v1 = v9;
    }

    goto LABEL_16;
  }

  if (v13 <= 6u)
  {
    if (v13 != 5)
    {
      v5 = v10;
      v6 = v11;
      v7 = v12;
      v3 = v8;
      v4 = v9;
      v1 = *(&v9 + 1);

      sub_21B18C060(&v3);
      return v1;
    }

    goto LABEL_12;
  }

  if (v13 == 7)
  {
    v3 = v8;
    LOBYTE(v4) = v9;
    *(&v4 + 1) = *(&v9 + 1);
    LOWORD(v5) = v10;
    v1 = TimeWindowBlockConfig.outputDescription.getter();

    return v1;
  }

  if (v13 == 8)
  {
    goto LABEL_12;
  }

  v1 = v9;
  if (v9)
  {
LABEL_16:

    return v1;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_21B1AEA74()
{
  result = qword_27CD6F438;
  if (!qword_27CD6F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F438);
  }

  return result;
}

uint64_t _s12PoirotBlocks11BlockConfigO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_21B193A60(a1, v39);
  sub_21B193A60(a2, &v41);
  if (v40 <= 4u)
  {
    if (v40 > 1u)
    {
      if (v40 == 2)
      {
        sub_21B193A60(v39, &v33);
        v29 = v35;
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v27 = v33;
        v28 = v34;
        if (v47 != 2)
        {
          goto LABEL_6;
        }

LABEL_28:
        v23 = v43;
        v24 = v44;
        v25 = v45;
        v21 = v41;
        v22 = v42;
        v19[2] = v35;
        v19[3] = v36;
        v19[4] = v37;
        v19[0] = v33;
        v19[1] = v34;
        v17[2] = v43;
        v17[3] = v44;
        v17[4] = v45;
        v26 = v46;
        v20 = v38;
        v18 = v46;
        v17[0] = v41;
        v17[1] = v42;
        v9 = _s12PoirotBlocks19TemplateBlockConfigV2eeoiySbAC_ACtFZ_0(v19, v17);
        sub_21B189514(&v21);
        sub_21B189514(&v27);
        goto LABEL_50;
      }

      if (v40 == 3)
      {
        sub_21B193A60(v39, &v33);
        v29 = v35;
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v27 = v33;
        v28 = v34;
        if (v47 != 3)
        {
LABEL_6:
          sub_21B189514(&v27);
LABEL_57:
          sub_21B1AF3FC(v39);
LABEL_58:
          v9 = 0;
          return v9 & 1;
        }

        goto LABEL_28;
      }

      sub_21B193A60(v39, &v33);
      v10 = v34;
      if (v47 == 4)
      {
        v11 = v42;
        if (v33 == v41 || (sub_21B20DB28()) && (sub_21B1A695C(v10, v11))
        {
          v12 = sub_21B1A695C(*(&v10 + 1), *(&v11 + 1));

          if (v12)
          {
            goto LABEL_68;
          }

LABEL_65:
          sub_21B1894C0(v39);
          goto LABEL_58;
        }

LABEL_64:

        goto LABEL_65;
      }

      goto LABEL_55;
    }

    if (v40)
    {
      sub_21B193A60(v39, &v33);
      if (v47 == 1)
      {
        v27 = v33;
        LOBYTE(v28) = v34;
        *(&v28 + 1) = *(&v34 + 1);
        v29 = v35;
        v21 = v41;
        LOBYTE(v22) = v42;
        *(&v22 + 1) = *(&v42 + 1);
        v23 = v43;
        v4 = _s12PoirotBlocks21ExtractionBlockConfigV2eeoiySbAC_ACtFZ_0(&v27, &v21);
        goto LABEL_46;
      }
    }

    else
    {
      sub_21B193A60(v39, &v33);
      if (!v47)
      {
        v27 = v33;
        *&v28 = v34;
        BYTE8(v28) = BYTE8(v34);
        v29 = v35;
        v21 = v41;
        *&v22 = v42;
        BYTE8(v22) = BYTE8(v42);
        v23 = v43;
        v4 = _s12PoirotBlocks22AggregationBlockConfigV2eeoiySbAC_ACtFZ_0(&v27, &v21);
LABEL_46:
        v9 = v4;

        goto LABEL_47;
      }
    }

LABEL_55:

    goto LABEL_56;
  }

  if (v40 > 6u)
  {
    if (v40 == 7)
    {
      sub_21B193A60(v39, &v33);
      if (v47 != 7)
      {
        goto LABEL_56;
      }

      v27 = v33;
      LOBYTE(v28) = v34;
      *(&v28 + 1) = *(&v34 + 1);
      LOWORD(v29) = v35;
      v21 = v41;
      LOBYTE(v22) = v42;
      *(&v22 + 1) = *(&v42 + 1);
      LOWORD(v23) = v43;
      v9 = _s12PoirotBlocks21TimeWindowBlockConfigV2eeoiySbAC_ACtFZ_0(&v27, &v21);
LABEL_47:

      goto LABEL_50;
    }

    if (v40 == 8)
    {
      sub_21B193A60(v39, &v33);
      if (v47 != 8)
      {
LABEL_56:

        goto LABEL_57;
      }

      if (v33 != v41)
      {
        v3 = sub_21B20DB28();

        if ((v3 & 1) == 0)
        {
          goto LABEL_65;
        }

LABEL_68:
        sub_21B1894C0(v39);
        v9 = 1;
        return v9 & 1;
      }

      goto LABEL_26;
    }

    sub_21B193A60(v39, &v33);
    v13 = v34;
    if (v47 != 9)
    {
      goto LABEL_55;
    }

    v7 = v42;
    if (v33 == v41 || (sub_21B20DB28() & 1) != 0)
    {
      if (v13)
      {
        if (v7)
        {

          v14 = sub_21B1A66B0(v13, v7);

          swift_bridgeObjectRelease_n();
          if (v14)
          {
            goto LABEL_68;
          }

          goto LABEL_65;
        }

        goto LABEL_63;
      }

LABEL_62:
      if (!v7)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_67;
      }
    }

LABEL_63:

    goto LABEL_64;
  }

  if (v40 == 5)
  {
    sub_21B193A60(v39, &v33);
    v5 = *(&v34 + 1);
    if (v47 != 5)
    {
      goto LABEL_55;
    }

    v6 = v34;
    v7 = *(&v42 + 1);
    v8 = v42;
    if (v33 != v41 && (sub_21B20DB28() & 1) == 0)
    {
      goto LABEL_63;
    }

    if (!v5)
    {
      goto LABEL_62;
    }

    if (v7)
    {
      if (v6 != v8 || v5 != v7)
      {
        v16 = sub_21B20DB28();

        if (v16)
        {
          goto LABEL_68;
        }

        goto LABEL_65;
      }

LABEL_26:

LABEL_67:

      goto LABEL_68;
    }

    goto LABEL_63;
  }

  sub_21B193A60(v39, &v33);
  if (v47 != 6)
  {
    sub_21B18C060(&v33);
    goto LABEL_57;
  }

  v29 = v43;
  v30 = v44;
  *&v31 = v45;
  v27 = v41;
  v28 = v42;
  v9 = _s12PoirotBlocks22UserDefinedBlockConfigV2eeoiySbAC_ACtFZ_0(&v33, &v27);
  sub_21B18C060(&v27);
  sub_21B18C060(&v33);
LABEL_50:
  sub_21B1894C0(v39);
  return v9 & 1;
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks24UserBlockImplConfiguring_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21B1AF214(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 89))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xA)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B1AF250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B1AF2A4(uint64_t result, unsigned int a2)
{
  if (a2 > 9)
  {
    v2 = a2 - 10;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 10;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

unint64_t sub_21B1AF2F8()
{
  result = qword_27CD6F440;
  if (!qword_27CD6F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F440);
  }

  return result;
}

unint64_t sub_21B1AF350()
{
  result = qword_27CD6F448;
  if (!qword_27CD6F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F448);
  }

  return result;
}

unint64_t sub_21B1AF3A8()
{
  result = qword_27CD6F450;
  if (!qword_27CD6F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F450);
  }

  return result;
}

uint64_t sub_21B1AF3FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F458, &qword_21B214900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1AF464()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F468, &qword_21B214930);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_21B20D7B8();
  __swift_allocate_value_buffer(v4, qword_27CD7E028);
  v5 = __swift_project_value_buffer(v4, qword_27CD7E028);
  sub_21B20D7A8();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1AF59C()
{
  sub_21B1AF600(v0 + 16);
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_21B1AF600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F460, &qword_21B214CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_21B1AF668@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_21B1AF750(a1, a2, MEMORY[0x277D84DA0]);
  if (v4)
  {
    sub_21B1AF6E0(v4 + 16, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21B1AF6E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F460, &qword_21B214CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1AF750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (qword_27CD6E940 != -1)
  {
    swift_once();
  }

  v4 = sub_21B20D7B8();
  v5 = __swift_project_value_buffer(v4, qword_27CD7E028);
  if (*(v3 + 16) && (v6 = sub_21B1B987C(v5), (v7 & 1) != 0))
  {
    sub_21B19DB00(*(v3 + 56) + 32 * v6, v10);

    type metadata accessor for CodingContext();
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_21B1AF828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21B1AF750(a3, a4, MEMORY[0x277D84DC0]);
  if (result)
  {
    v7 = *(result + 64);
    *(result + 56) = a1;
    *(result + 64) = a2;
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

unint64_t sub_21B1AF9AC()
{
  v1 = 0x6556657069636572;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x747069726373;
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

uint64_t sub_21B1AFA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1B0510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1AFA60(uint64_t a1)
{
  v2 = sub_21B1AFEE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1AFA9C(uint64_t a1)
{
  v2 = sub_21B1AFEE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeModel.queryCollections.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t RecipeModel.script.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void __swiftcall RecipeModel.init(recipeIdentifier:recipeVersion:queryCollections:script:)(PoirotBlocks::RecipeModel *__return_ptr retstr, Swift::String recipeIdentifier, Swift::UInt recipeVersion, Swift::OpaquePointer queryCollections, Swift::OpaquePointer script)
{
  retstr->metadata.name = recipeIdentifier;
  retstr->metadata.version = recipeVersion;
  retstr->metadata.endToEndTelemetryEventName.value._countAndFlagsBits = 0;
  retstr->metadata.endToEndTelemetryEventName.value._object = 0;
  retstr->queryCollections = queryCollections;
  retstr->script = script;
}

uint64_t RecipeModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F470, &qword_21B214938);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1AFEE8();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_21B17FB4C(a1, v23);
  RecipeMetadata.init(from:)(v23, v24);
  v21 = v24[0];
  v22 = v24[1];
  v12 = v24[3];
  v20 = v24[2];
  v25 = v24[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1C0, &unk_21B214CD0);
  LOBYTE(v23[0]) = 2;
  sub_21B1A7734(&qword_27CD6F1D8);
  sub_21B20D8B8();
  v19 = v12;
  if (v24[0])
  {
    v13 = v24[0];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F480, &qword_21B214940);
  LOBYTE(v23[0]) = 3;
  sub_21B1B022C(&qword_27CD6F488, sub_21B1AFF3C);
  sub_21B20D918();
  (*(v6 + 8))(v9, v5);
  v14 = v24[0];
  v15 = v20;
  v16 = v13;
  v17 = v22;
  *a2 = v21;
  a2[1] = v17;
  v18 = v19;
  a2[2] = v15;
  a2[3] = v18;
  a2[4] = v25;
  a2[5] = v16;
  a2[6] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21B1AFEE8()
{
  result = qword_27CD6F478;
  if (!qword_27CD6F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F478);
  }

  return result;
}

unint64_t sub_21B1AFF3C()
{
  result = qword_27CD6F490;
  if (!qword_27CD6F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F490);
  }

  return result;
}

uint64_t RecipeModel.encode(to:)(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F498, &qword_21B214948);
  v22 = *(v24 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v18 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v19 = v1[5];
  v20 = v8;
  v18 = v1[6];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1AFEE8();

  v23 = v5;
  sub_21B20DD08();
  v25 = v6;
  v26 = v7;
  v12 = v21;
  v27 = v20;
  v28 = v9;
  v29 = v10;
  RecipeMetadata.encode(to:)(a1);

  if (v12)
  {
    return (*(v22 + 8))(v23, v24);
  }

  v14 = v18;
  v15 = v22;
  v25 = v19;
  v30 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1C0, &unk_21B214CD0);
  sub_21B1A7734(&qword_27CD6F1C8);
  v16 = v24;
  v17 = v23;
  sub_21B20DA48();
  v25 = v14;
  v30 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F480, &qword_21B214940);
  sub_21B1B022C(&qword_27CD6F4A0, sub_21B1B02A4);
  sub_21B20DA48();
  return (*(v15 + 8))(v17, v16);
}

uint64_t sub_21B1B022C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6F480, &qword_21B214940);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B1B02A4()
{
  result = qword_27CD6F4A8;
  if (!qword_27CD6F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F4A8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21B1B0344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21B1B038C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21B1B040C()
{
  result = qword_27CD6F4B0;
  if (!qword_27CD6F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F4B0);
  }

  return result;
}

unint64_t sub_21B1B0464()
{
  result = qword_27CD6F4B8;
  if (!qword_27CD6F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F4B8);
  }

  return result;
}

unint64_t sub_21B1B04BC()
{
  result = qword_27CD6F4C0[0];
  if (!qword_27CD6F4C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD6F4C0);
  }

  return result;
}

uint64_t sub_21B1B0510(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021B20E800 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556657069636572 && a2 == 0xED00006E6F697372 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021B20F770 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747069726373 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_21B20DB28();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21B1B068C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B1B0748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_21B1B07A0(a1, a2, a3);
  return v9;
}

uint64_t sub_21B1B07A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(a1 + 8);
  *(v3 + 16) = *a1;
  *(v3 + 24) = v6;
  *(v3 + 32) = *(a1 + 16);
  *(v3 + 48) = a2;
  v7 = v5[14];
  v8 = v5[11];
  v9 = v5[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v3 + v7, a3, AssociatedTypeWitness);
  return v3;
}

uint64_t sub_21B1B0884()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for LoggingType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[14];
  v8 = v2[11];
  v9 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  TaskConfiguring.loggingType.getter(AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  sub_21B2054D4(v29);
  sub_21B1B12B8(v6, type metadata accessor for LoggingType);
  type metadata accessor for LogEntryCollector();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  *(v12 + 24) = MEMORY[0x277D84F98];
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21B1B11F0;
  *(v13 + 24) = v1;
  swift_beginAccess();
  v14 = *(v12 + 16);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 16) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_21B1D292C(0, v14[2] + 1, 1, v14);
    *(v12 + 16) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_21B1D292C((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = sub_21B19490C;
  v18[5] = v13;
  *(v12 + 16) = v14;
  swift_endAccess();

  v19 = v30;
  v20 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v26 = 1;
  v27 = 6;
  strcpy(v28, "get-host-info");
  v28[7] = -4864;
  v21 = *(v20 + 8);
  v22 = *(v21 + 8);

  v22(v23, &off_282CA47E8, &off_282CA47F8, &v26, v19, v21);

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_21B1B0B94(uint64_t *a1)
{
  v2 = *a1;
  v50 = sub_21B20C368();
  v46 = *(v50 - 8);
  v47 = v50 - 8;
  v48 = v46;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v44 = type metadata accessor for HostInfo();
  v11 = *(*(v44 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v44);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v45 = &v42 - v15;
  v16 = a1[3];
  v42 = a1[2];
  v17 = a1[6];
  v18 = *(v17 + 16);
  v19 = *(v2 + 88);
  v20 = v19[7];
  v21 = *(v2 + 80);

  swift_unknownObjectRetain();
  v22 = v20(v21, v19);
  swift_unknownObjectRelease();
  v23 = sub_21B1EE974(v22);

  v24 = *(v17 + 16);
  v25 = v19[5];
  swift_unknownObjectRetain();
  v25(v21, v19);
  swift_unknownObjectRelease();
  v26 = *(v17 + 16);
  v27 = v19[6];
  swift_unknownObjectRetain();
  v28 = v43;
  v27(v21, v19);
  swift_unknownObjectRelease();
  *v14 = v42;
  v14[1] = v16;
  v14[2] = 1329876820;
  v14[3] = 0xE400000000000000;
  v14[4] = v23;
  v29 = v44;
  sub_21B18FED8(v10, v14 + *(v44 + 28));
  sub_21B18FED8(v28, v14 + v29[8]);
  *(v14 + v29[9]) = 2;
  *(v14 + v29[10]) = 0;
  v30 = v45;
  sub_21B1B120C(v14, v45);
  v31 = sub_21B20C3A8();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v34 = *(v46 + 72);
  v35 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_21B211420;
  sub_21B20C348();
  sub_21B20C358();
  v52 = v36;
  sub_21B1B1270(&qword_27CD6EBD8, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_21B2110C0;
  sub_21B1B1270(&qword_27CD6F548, type metadata accessor for HostInfo);
  v38 = v51;
  v39 = sub_21B20C388();
  if (v38)
  {

    sub_21B1B12B8(v30, type metadata accessor for HostInfo);
    *(v37 + 16) = 0;
  }

  else
  {
    strcpy((v37 + 32), "get-host-info");
    *(v37 + 46) = -4864;
    *(v37 + 48) = 0;
    *(v37 + 56) = v39;
    *(v37 + 64) = v40;

    sub_21B1B12B8(v30, type metadata accessor for HostInfo);
  }

  return v37;
}

char *sub_21B1B10B4()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = *(*v0 + 112);
  v6 = *(v1 + 88);
  v7 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v5], AssociatedTypeWitness);
  return v0;
}

uint64_t sub_21B1B1180()
{
  sub_21B1B10B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21B1B120C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1B1270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B1B12B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Command.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21B20D828();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21B1B13C4()
{
  sub_21B20DC88();
  sub_21B20D388();
  return sub_21B20DCA8();
}

uint64_t sub_21B1B1448()
{
  sub_21B20DC88();
  sub_21B20D388();
  return sub_21B20DCA8();
}

uint64_t sub_21B1B14A4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21B20D828();

  *a2 = v5 != 0;
  return result;
}

uint64_t CommandURI.host.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CommandURI.query.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CommandURI.uriString.getter()
{
  v1 = sub_21B20C678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v9[0] = *v0;
  v9[1] = v6;
  v10 = *(v0 + 16);
  CommandURI.url.getter(v5);
  v7 = sub_21B20C568();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t CommandURI.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_21B20C488();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v14 = v2[1];
  v16 = v2[2];
  v15 = v2[3];

  sub_21B20C478();
  sub_21B20C468();
  MEMORY[0x21CEEAC50](v13, v14);
  MEMORY[0x21CEEAC60](0x736F682D7465672FLL, 0xEE006F666E692D74);
  sub_21B20C458();
  sub_21B20C428();
  v17 = sub_21B20C678();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_21B1B18DC(v7);
    result = sub_21B20D7C8();
    __break(1u);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return (*(v18 + 32))(a1, v7, v17);
  }

  return result;
}

uint64_t sub_21B1B18DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CommandURI.init(host:command:query:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t CommandURI.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21B20C3D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_21B20C678();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B20C648();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_21B1B18DC(v10);
    goto LABEL_15;
  }

  (*(v12 + 32))(v15, v10, v11);
  v17 = sub_21B20C638();
  if (!v18)
  {
    goto LABEL_14;
  }

  if (v17 == 0x746F72696F70 && v18 == 0xE600000000000000)
  {
  }

  else
  {
    v20 = sub_21B20DB28();

    if ((v20 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v21 = sub_21B20C5F8();
  if (!v22)
  {
LABEL_14:
    result = (*(v12 + 8))(v15, v11);
    goto LABEL_15;
  }

  v23 = v22;
  v30 = v21;
  v31 = sub_21B20C608();
  v32 = v24;
  sub_21B20C3B8();
  sub_21B17FBB0();
  sub_21B20D618();
  (*(v3 + 8))(v6, v2);

  v25 = sub_21B20D828();

  if (!v25)
  {
    v26 = sub_21B20C628();
    v28 = v27;
    result = (*(v12 + 8))(v15, v11);
    *a1 = v30;
    a1[1] = v23;
    a1[2] = v26;
    a1[3] = v28;
    return result;
  }

  (*(v12 + 8))(v15, v11);

LABEL_15:
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

unint64_t sub_21B1B1CC8()
{
  result = qword_27CD6F558;
  if (!qword_27CD6F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F558);
  }

  return result;
}

uint64_t UserDefinedBlockConfig.init(name:inputDatasets:outputDescription:implConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 64) = 0;
  *(a6 + 48) = 0u;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = 0u;
  return sub_21B1B1D9C(a5, a6 + 32);
}

uint64_t sub_21B1B1D9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC48, &qword_21B214CC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UserDefinedBlockConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F560, &qword_21B214CC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1B23D4();
  sub_21B20DCD8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21B186488(v31, &qword_27CD6EC48, &qword_21B214CC0);
  }

  else
  {
    LOBYTE(v27) = 0;
    v33 = sub_21B20D8C8();
    v30[0] = v33;
    v30[1] = v12;
    v23 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1C0, &unk_21B214CD0);
    LOBYTE(v25) = 1;
    sub_21B1A7734(&qword_27CD6F1D8);
    sub_21B20D8B8();
    v22[1] = v27;
    v30[2] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
    LOBYTE(v25) = 2;
    sub_21B1A4798(&qword_27CD6F110, &qword_27CD6F118);
    sub_21B20D8B8();
    v30[3] = v27;
    v13 = sub_21B20D968();
    v14 = *(v13 + 16);
    v15 = (v13 + 32);
    v16 = a2;
    do
    {
      if (!v14)
      {

        (*(v6 + 8))(v9, v5);
        goto LABEL_10;
      }

      v17 = *v15++;
      --v14;
    }

    while (v17 != 3);

    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    sub_21B1AF668(v18, v19, &v25);
    if (v26)
    {
      sub_21B17C284(&v25, &v27);
      LOBYTE(v24[0]) = 3;
      sub_21B20D858();
      v21 = v28;
      v20 = v29;
      __swift_project_boxed_opaque_existential_1(&v27, v28);
      (*(v20 + 8))(v24, v33, v23, &v25, v21, v20);
      __swift_destroy_boxed_opaque_existential_1(&v25);
      (*(v6 + 8))(v9, v5);
      sub_21B1B1D9C(v24, v31);
      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {
      sub_21B186488(&v25, &qword_27CD6F460, &qword_21B214CE0);
      LOBYTE(v25) = 3;
      v28 = &type metadata for AnyCodable;
      v29 = sub_21B1B28A0();
      sub_21B1ACF24();
      sub_21B20D918();
      (*(v6 + 8))(v9, v5);
      sub_21B1B1D9C(&v27, v31);
    }

    v16 = a2;
LABEL_10:
    sub_21B18C0B4(v30, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21B18C060(v30);
  }
}

unint64_t sub_21B1B23D4()
{
  result = qword_27CD6F568;
  if (!qword_27CD6F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F568);
  }

  return result;
}

uint64_t UserDefinedBlockConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F578, &qword_21B214CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1B23D4();
  sub_21B20DD08();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19[0]) = 0;
  sub_21B20D9E8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v19[0] = v3[2];
  LOBYTE(v17) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1C0, &unk_21B214CD0);
  sub_21B1A7734(&qword_27CD6F1C8);
  sub_21B20D9D8();
  v14 = v3[3];
  if (v14 && *(v14 + 16))
  {
    v19[0] = v3[3];
    LOBYTE(v17) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
    sub_21B1A4798(&qword_27CD6EBF8, &qword_27CD6EC00);
    sub_21B20DA48();
  }

  sub_21B1B2944((v3 + 4), &v17);
  if (v18)
  {
    sub_21B17C284(&v17, v19);
    v15 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    LOBYTE(v17) = 3;
    v16 = *(v15 + 16);
    sub_21B20DA48();
    (*(v6 + 8))(v9, v5);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return sub_21B186488(&v17, &qword_27CD6EC48, &qword_21B214CC0);
  }
}

unint64_t sub_21B1B272C()
{
  v1 = 1701667182;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x666E6F4372657375;
  }

  if (*v0)
  {
    v1 = 0x7461447475706E69;
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

uint64_t sub_21B1B27B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1B2EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1B27DC(uint64_t a1)
{
  v2 = sub_21B1B23D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1B2818(uint64_t a1)
{
  v2 = sub_21B1B23D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserDefinedBlockConfig.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_21B1B28A0()
{
  result = qword_27CD6F570;
  if (!qword_27CD6F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F570);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x21CEECC50);
  }

  return result;
}

uint64_t sub_21B1B2944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC48, &qword_21B214CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s12PoirotBlocks22UserDefinedBlockConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || (sub_21B1A695C(v4, v5) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v5)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_17:
    v12 = 0;
    return v12 & 1;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *(a2 + 24);

  v9 = sub_21B1A66B0(v6, v7);

  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  sub_21B1B2944(a1 + 32, &v17);
  if (!v18)
  {
    sub_21B186488(&v17, &qword_27CD6EC48, &qword_21B214CC0);
    goto LABEL_16;
  }

  sub_21B17C284(&v17, v19);
  sub_21B1B2944(a2 + 32, &v15);
  if (!v16)
  {
    sub_21B186488(&v15, &qword_27CD6EC48, &qword_21B214CC0);
    __swift_destroy_boxed_opaque_existential_1(v19);
LABEL_16:
    sub_21B1B2944(a1 + 32, v19);
    v13 = v20;
    sub_21B186488(v19, &qword_27CD6EC48, &qword_21B214CC0);
    if (!v13)
    {
      sub_21B1B2944(a2 + 32, v19);
      v12 = v20 == 0;
      sub_21B186488(v19, &qword_27CD6EC48, &qword_21B214CC0);
      return v12 & 1;
    }

    goto LABEL_17;
  }

  sub_21B17C284(&v15, &v17);
  v10 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v12 = (*(v11 + 24))(&v17, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v17);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v12 & 1;
}

unint64_t sub_21B1B2BA8(void *a1)
{
  a1[1] = sub_21B1B2BE0();
  a1[2] = sub_21B1B2C34();
  result = sub_21B1B2C88();
  a1[3] = result;
  return result;
}

unint64_t sub_21B1B2BE0()
{
  result = qword_27CD6F580;
  if (!qword_27CD6F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F580);
  }

  return result;
}

unint64_t sub_21B1B2C34()
{
  result = qword_27CD6F588;
  if (!qword_27CD6F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F588);
  }

  return result;
}

unint64_t sub_21B1B2C88()
{
  result = qword_27CD6F590;
  if (!qword_27CD6F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F590);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21B1B2D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_21B1B2D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B1B2DBC()
{
  result = qword_27CD6F598;
  if (!qword_27CD6F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F598);
  }

  return result;
}

unint64_t sub_21B1B2E14()
{
  result = qword_27CD6F5A0;
  if (!qword_27CD6F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F5A0);
  }

  return result;
}

unint64_t sub_21B1B2E6C()
{
  result = qword_27CD6F5A8;
  if (!qword_27CD6F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F5A8);
  }

  return result;
}

uint64_t sub_21B1B2EC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447475706E69 && a2 == 0xED00007374657361 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021B20EBA0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E6F4372657375 && a2 == 0xEA00000000006769)
  {

    return 3;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21B1B303C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = *(a2 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v30 = &v28 - v13;
    v31 = MEMORY[0x277D84F90];
    sub_21B18FDB0(0, v14, 0);
    v15 = v31;
    v29 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = a2 + v29;
    v17 = *(v5 + 72);
    do
    {
      sub_21B188B7C(v16, v12, type metadata accessor for DatasetColumnDescription);
      sub_21B188B7C(v12, v9, type metadata accessor for DatasetColumnDescription);
      v18 = *v9;
      v19 = v9[1];
      if (*(a1 + 16) && (v20 = sub_21B1B9778(*v9, v9[1]), (v21 & 1) != 0))
      {
        v22 = (*(a1 + 56) + 16 * v20);
        v18 = *v22;
        v23 = v22[1];

        sub_21B17FDE8(v12);

        v19 = v23;
      }

      else
      {
        sub_21B17FDE8(v12);
      }

      *v9 = v18;
      v9[1] = v19;
      v24 = v30;
      sub_21B188AC0(v9, v30, type metadata accessor for DatasetColumnDescription);
      v31 = v15;
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21B18FDB0(v25 > 1, v26 + 1, 1);
        v24 = v30;
        v15 = v31;
      }

      *(v15 + 16) = v26 + 1;
      sub_21B188AC0(v24, v15 + v29 + v26 * v17, type metadata accessor for DatasetColumnDescription);
      v16 += v17;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t DatasetColumnDescription.matches(_:)(void *a1)
{
  v2 = *a1 == *v1 && a1[1] == v1[1];
  if (v2 || (v3 = 0, (sub_21B20DB28() & 1) != 0))
  {
    v4 = *(type metadata accessor for DatasetColumnDescription() + 24);
    sub_21B20CCE8();
    sub_21B1B4FF8(&qword_27CD6EC08, MEMORY[0x277D3E200]);
    sub_21B20D3F8();
    sub_21B20D3F8();
    if (v8 == v6 && v9 == v7)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_21B20DB28();
    }
  }

  return v3 & 1;
}

uint64_t DatasetColumnDescription.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  v5 = type metadata accessor for DatasetColumnDescription();
  sub_21B188B7C(a1 + *(v5 + 24), a2 + *(v5 + 24), type metadata accessor for DatasetColumnType);
  v6 = *(a1 + *(v5 + 28));

  result = sub_21B17FDE8(a1);
  *(a2 + *(v5 + 28)) = v6;
  return result;
}

uint64_t DatasetColumnDescription.init(name:nullable:type:pivot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for DatasetColumnDescription();
  *(a6 + *(v9 + 28)) = a5;
  return sub_21B188AC0(a4, a6 + *(v9 + 24), type metadata accessor for DatasetColumnType);
}

uint64_t sub_21B1B34C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7461676572676761;
  v4 = a1;
  if (a1 > 4u)
  {
    v12 = 0x646E6957656D6974;
    v13 = 0x6C656E69746E6573;
    v14 = 0xEA00000000007372;
    if (a1 == 8)
    {
      v14 = 0xE800000000000000;
    }

    else
    {
      v13 = 0x6574656D61726170;
    }

    if (a1 == 7)
    {
      v14 = 0xEA0000000000776FLL;
    }

    else
    {
      v12 = v13;
    }

    v15 = 0xE400000000000000;
    v16 = 1852403562;
    if (a1 != 5)
    {
      v16 = 0x6966654472657375;
      v15 = 0xEB0000000064656ELL;
    }

    if (a1 <= 6u)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }

    if (v4 <= 6)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }
  }

  else
  {
    v5 = 0x6974636172747865;
    v6 = 0xEA00000000006E6FLL;
    v7 = 0xEA00000000003256;
    if (a1 != 3)
    {
      v7 = 0xE800000000000000;
    }

    if (a1 != 2)
    {
      v5 = 0x6574616C706D6574;
      v6 = v7;
    }

    v8 = 0xD000000000000010;
    v9 = 0x800000021B20E790;
    if (a1)
    {
      v8 = 0x7461676572676761;
      v9 = 0xEB000000006E6F69;
    }

    if (a1 <= 1u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v4 <= 1)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v10 != 1852403562)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v2 = 0xEB0000000064656ELL;
        if (v10 != 0x6966654472657375)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_53;
    }

    if (a2 == 7)
    {
      v2 = 0xEA0000000000776FLL;
      if (v10 != 0x646E6957656D6974)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    if (a2 == 8)
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x6C656E69746E6573)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    v3 = 0x6574656D61726170;
    v2 = 0xEA00000000007372;
    goto LABEL_52;
  }

  if (a2 <= 1u)
  {
    if (!a2)
    {
      v2 = 0x800000021B20E790;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

LABEL_52:
    if (v10 != v3)
    {
LABEL_56:
      v19 = sub_21B20DB28();
      goto LABEL_57;
    }

    goto LABEL_53;
  }

  if (a2 == 2)
  {
    v17 = 0x6974636172747865;
    v18 = 28271;
  }

  else
  {
    if (a2 != 3)
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x6574616C706D6574)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    v17 = 0x6574616C706D6574;
    v18 = 12886;
  }

  v2 = v18 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  if (v10 != v17)
  {
    goto LABEL_56;
  }

LABEL_53:
  if (v11 != v2)
  {
    goto LABEL_56;
  }

  v19 = 1;
LABEL_57:

  return v19 & 1;
}

uint64_t sub_21B1B37E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1852797802;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7972616E6962;
    }

    else
    {
      v4 = 0x726F727265;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7762787;
    }

    else
    {
      v4 = 1852797802;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x7972616E6962;
  if (a2 != 2)
  {
    v8 = 0x726F727265;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 7762787;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21B20DB28();
  }

  return v11 & 1;
}

uint64_t sub_21B1B3900(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746F766970;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C62616C6C756ELL;
    }

    else
    {
      v4 = 1701667182;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x746F766970;
  if (a2 != 2)
  {
    v8 = 1701869940;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x656C62616C6C756ELL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21B20DB28();
  }

  return v11 & 1;
}

uint64_t sub_21B1B3A24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x627550656D6F6962;
    }

    else
    {
      v3 = 0x727453656D6F6962;
    }

    if (v2)
    {
      v4 = 0xEE0072656873696CLL;
    }

    else
    {
      v4 = 0xEB000000006D6165;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000021B20E720;
  }

  else if (a1 == 3)
  {
    v3 = 0x7473754374736F68;
    v4 = 0xEF656C6261546D6FLL;
  }

  else
  {
    v3 = 0x6573616261746164;
    v4 = 0xED0000656C626154;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x627550656D6F6962;
    }

    else
    {
      v9 = 0x727453656D6F6962;
    }

    if (a2)
    {
      v8 = 0xEE0072656873696CLL;
    }

    else
    {
      v8 = 0xEB000000006D6165;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x7473754374736F68;
    v6 = 0xEF656C6261546D6FLL;
    if (a2 != 3)
    {
      v5 = 0x6573616261746164;
      v6 = 0xED0000656C626154;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x800000021B20E720;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_21B20DB28();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}