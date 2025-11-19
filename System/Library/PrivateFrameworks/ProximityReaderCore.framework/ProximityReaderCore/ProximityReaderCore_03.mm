_WORD *storeEnumTagSinglePayload for InternalOptions(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_2611D6128()
{
  result = qword_27FE8EB10[0];
  if (!qword_27FE8EB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8EB10);
  }

  return result;
}

unint64_t sub_2611D6180()
{
  result = qword_27FE8EC20;
  if (!qword_27FE8EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8EC20);
  }

  return result;
}

unint64_t sub_2611D61D8()
{
  result = qword_27FE8EC28[0];
  if (!qword_27FE8EC28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8EC28);
  }

  return result;
}

uint64_t static LayoutBundleDetails.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE87820 = a1;
  return result;
}

uint64_t sub_2611D639C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE87820;
  return result;
}

uint64_t sub_2611D63E8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE87820 = v1;
  return result;
}

uint64_t LayoutBundleDetails.region.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region + 8);

  return v1;
}

uint64_t LayoutBundleDetails.url.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url + 8);

  return v1;
}

uint64_t LayoutBundleDetails.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version + 8);

  return v1;
}

id LayoutBundleDetails.__allocating_init(region:url:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id LayoutBundleDetails.init(region:url:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

Swift::Void __swiftcall LayoutBundleDetails.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region);
  v4 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region + 8);
  v5 = sub_26121CC50();
  v6 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url);
  v8 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url + 8);
  v9 = sub_26121CC50();
  v10 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version);
  v12 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version + 8);
  v13 = sub_26121CC50();
  v14 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
}

id LayoutBundleDetails.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  sub_261199284();
  v9 = sub_26121D060();
  if (v9)
  {
    v33 = 0;
    v34 = 0;
    v10 = v9;
    sub_26121CC70();

    v11 = v34;
    if (v34)
    {
      v12 = v33;
      v13 = sub_26121D060();
      if (v13)
      {
        v33 = 0;
        v34 = 0;
        v14 = v13;
        sub_26121CC70();

        v15 = v34;
        if (v34)
        {
          v16 = v33;
          v17 = sub_26121D060();
          if (v17)
          {
            v33 = 0;
            v34 = 0;
            v18 = v17;
            sub_26121CC70();

            v19 = v34;
            if (v34)
            {
              v20 = v33;
              v21 = &v2[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region];
              *v21 = v12;
              *(v21 + 1) = v11;
              v22 = &v2[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url];
              *v22 = v16;
              *(v22 + 1) = v15;
              v23 = &v2[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version];
              *v23 = v20;
              *(v23 + 1) = v19;
              v32.receiver = v2;
              v32.super_class = ObjectType;
              v24 = objc_msgSendSuper2(&v32, sel_init);

              return v24;
            }
          }
        }
      }
    }
  }

  v26 = sub_2611F033C();
  sub_2611B8B74(v26, v8);
  v27 = sub_26121CA60();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v8, 1, v27) == 1)
  {

    sub_2611D57E4(v8);
  }

  else
  {
    v29 = sub_26121CA40();
    v30 = sub_26121CFC0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261197000, v29, v30, "LayoutBundleDetails | Failed to decode object", v31, 2u);
      MEMORY[0x2666FCF20](v31, -1, -1);
    }

    (*(v28 + 8))(v8, v27);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id LayoutBundleDetails.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LayoutBundleDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611D6CB0(uint64_t a1)
{
  v2 = sub_2611D85C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D6CEC(uint64_t a1)
{
  v2 = sub_2611D85C8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2611D6D28(char a1)
{
  result = 0x776F6C6C41746F6ELL;
  switch(a1)
  {
    case 1:
      result = 2037609826;
      break;
    case 2:
      result = 0x6E776F6E6B6E75;
      break;
    case 3:
      result = 0x456B726F7774656ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x7272454244666173;
      break;
    case 12:
      result = 0x696E676953666173;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2611D6EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2611DB2FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2611D6F1C(uint64_t a1)
{
  v2 = sub_2611D81D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D6F58(uint64_t a1)
{
  v2 = sub_2611D81D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D6F94(uint64_t a1)
{
  v2 = sub_2611D8520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D6FD0(uint64_t a1)
{
  v2 = sub_2611D8520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D700C(uint64_t a1)
{
  v2 = sub_2611D861C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7048(uint64_t a1)
{
  v2 = sub_2611D861C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D7084(uint64_t a1)
{
  v2 = sub_2611D84CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D70C0(uint64_t a1)
{
  v2 = sub_2611D84CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D70FC(uint64_t a1)
{
  v2 = sub_2611D82D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7138(uint64_t a1)
{
  v2 = sub_2611D82D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D7174(uint64_t a1)
{
  v2 = sub_2611D837C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D71B0(uint64_t a1)
{
  v2 = sub_2611D837C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D71EC(uint64_t a1)
{
  v2 = sub_2611D8328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7228(uint64_t a1)
{
  v2 = sub_2611D8328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D7264(uint64_t a1)
{
  v2 = sub_2611D8280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D72A0(uint64_t a1)
{
  v2 = sub_2611D8280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D72DC(uint64_t a1)
{
  v2 = sub_2611D8424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7318(uint64_t a1)
{
  v2 = sub_2611D8424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D7354(uint64_t a1)
{
  v2 = sub_2611D8478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7390(uint64_t a1)
{
  v2 = sub_2611D8478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D73CC(uint64_t a1)
{
  v2 = sub_2611D83D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7408(uint64_t a1)
{
  v2 = sub_2611D83D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D7444(uint64_t a1)
{
  v2 = sub_2611D822C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7480(uint64_t a1)
{
  v2 = sub_2611D822C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D74BC(uint64_t a1)
{
  v2 = sub_2611D8574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D74F8(uint64_t a1)
{
  v2 = sub_2611D8574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoreErrorInternal.Code.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87840, &qword_261222930);
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  MEMORY[0x28223BE20](v3);
  v100 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87848, &qword_261222938);
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v6);
  v97 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87850, &qword_261222940);
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = *(v94 + 64);
  MEMORY[0x28223BE20](v9);
  v93 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87858, &qword_261222948);
  v91 = *(v12 - 8);
  v92 = v12;
  v13 = *(v91 + 64);
  MEMORY[0x28223BE20](v12);
  v90 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87860, &qword_261222950);
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v15);
  v87 = &v67 - v17;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87868, &qword_261222958);
  v85 = *(v86 - 8);
  v18 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v67 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87870, &qword_261222960);
  v82 = *(v83 - 8);
  v20 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v67 - v21;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87878, &qword_261222968);
  v79 = *(v80 - 8);
  v22 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v67 - v23;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87880, &qword_261222970);
  v76 = *(v77 - 8);
  v24 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v67 - v25;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87888, &qword_261222978);
  v73 = *(v74 - 8);
  v26 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v67 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87890, &qword_261222980);
  v96 = *(v28 - 8);
  v29 = *(v96 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v67 - v30;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87898, &qword_261222988);
  v70 = *(v71 - 8);
  v32 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v67 - v33;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878A0, &qword_261222990);
  v67 = *(v68 - 8);
  v34 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v36 = &v67 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878A8, &qword_261222998);
  v38 = *(v37 - 8);
  v104 = v37;
  v105 = v38;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v67 - v40;
  v42 = *v1;
  v43 = *(v1 + 8);
  v44 = a1;
  v46 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(v44, v46);
  sub_2611D81D8();
  v103 = v41;
  sub_26121D600();
  if (v43 <= 1)
  {
    if (!v43)
    {
      v109 = 2;
      sub_2611D8574();
      v48 = v103;
      v47 = v104;
      sub_26121D410();
      sub_26121D490();
      (*(v96 + 8))(v31, v28);
      return (*(v105 + 8))(v48, v47);
    }

    v119 = 11;
    sub_2611D8280();
    v49 = v97;
    v48 = v103;
    v47 = v104;
    sub_26121D410();
    v50 = v99;
    sub_26121D490();
    v51 = v98;
LABEL_7:
    (*(v51 + 8))(v49, v50);
    return (*(v105 + 8))(v48, v47);
  }

  if (v43 == 2)
  {
    v120 = 12;
    sub_2611D822C();
    v49 = v100;
    v48 = v103;
    v47 = v104;
    sub_26121D410();
    v50 = v102;
    sub_26121D490();
    v51 = v101;
    goto LABEL_7;
  }

  if (v42 > 4)
  {
    if (v42 > 6)
    {
      if (v42 == 7)
      {
        v116 = 8;
        sub_2611D837C();
        v59 = v87;
        v55 = v103;
        v54 = v104;
        sub_26121D410();
        v61 = v88;
        v60 = v89;
      }

      else if (v42 == 8)
      {
        v117 = 9;
        sub_2611D8328();
        v59 = v90;
        v55 = v103;
        v54 = v104;
        sub_26121D410();
        v61 = v91;
        v60 = v92;
      }

      else
      {
        v118 = 10;
        sub_2611D82D4();
        v59 = v93;
        v55 = v103;
        v54 = v104;
        sub_26121D410();
        v61 = v94;
        v60 = v95;
      }

      (*(v61 + 8))(v59, v60);
      return (*(v105 + 8))(v55, v54);
    }

    if (v42 == 5)
    {
      v114 = 6;
      sub_2611D8424();
      v62 = v81;
      v55 = v103;
      v54 = v104;
      sub_26121D410();
      v56 = *(v82 + 8);
      v57 = v62;
      v58 = &v122;
    }

    else
    {
      v115 = 7;
      sub_2611D83D0();
      v66 = v84;
      v55 = v103;
      v54 = v104;
      sub_26121D410();
      v56 = *(v85 + 8);
      v57 = v66;
      v58 = &v123;
    }
  }

  else if (v42 <= 1)
  {
    if (v42)
    {
      v108 = 1;
      sub_2611D85C8();
      v65 = v69;
      v55 = v103;
      v54 = v104;
      sub_26121D410();
      v56 = *(v70 + 8);
      v57 = v65;
      v58 = &v103;
    }

    else
    {
      v107 = 0;
      sub_2611D861C();
      v55 = v103;
      v54 = v104;
      sub_26121D410();
      v56 = *(v67 + 8);
      v57 = v36;
      v58 = &v100;
    }
  }

  else if (v42 == 2)
  {
    v110 = 3;
    sub_2611D8520();
    v63 = v72;
    v55 = v103;
    v54 = v104;
    sub_26121D410();
    v56 = *(v73 + 8);
    v57 = v63;
    v58 = &v106;
  }

  else if (v42 == 3)
  {
    v111 = 4;
    sub_2611D84CC();
    v53 = v75;
    v55 = v103;
    v54 = v104;
    sub_26121D410();
    v56 = *(v76 + 8);
    v57 = v53;
    v58 = &v112;
  }

  else
  {
    v113 = 5;
    sub_2611D8478();
    v64 = v78;
    v55 = v103;
    v54 = v104;
    sub_26121D410();
    v56 = *(v79 + 8);
    v57 = v64;
    v58 = &v121;
  }

  v56(v57, *(v58 - 32));
  return (*(v105 + 8))(v55, v54);
}

unint64_t sub_2611D81D8()
{
  result = qword_27FE8ECB0;
  if (!qword_27FE8ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ECB0);
  }

  return result;
}

unint64_t sub_2611D822C()
{
  result = qword_27FE8ECB8;
  if (!qword_27FE8ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ECB8);
  }

  return result;
}

unint64_t sub_2611D8280()
{
  result = qword_27FE8ECC0;
  if (!qword_27FE8ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ECC0);
  }

  return result;
}

unint64_t sub_2611D82D4()
{
  result = qword_27FE8ECC8;
  if (!qword_27FE8ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ECC8);
  }

  return result;
}

unint64_t sub_2611D8328()
{
  result = qword_27FE8ECD0;
  if (!qword_27FE8ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ECD0);
  }

  return result;
}

unint64_t sub_2611D837C()
{
  result = qword_27FE8ECD8;
  if (!qword_27FE8ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ECD8);
  }

  return result;
}

unint64_t sub_2611D83D0()
{
  result = qword_27FE8ECE0;
  if (!qword_27FE8ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ECE0);
  }

  return result;
}

unint64_t sub_2611D8424()
{
  result = qword_27FE8ECE8;
  if (!qword_27FE8ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ECE8);
  }

  return result;
}

unint64_t sub_2611D8478()
{
  result = qword_27FE8ECF0;
  if (!qword_27FE8ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ECF0);
  }

  return result;
}

unint64_t sub_2611D84CC()
{
  result = qword_27FE8ECF8;
  if (!qword_27FE8ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ECF8);
  }

  return result;
}

unint64_t sub_2611D8520()
{
  result = qword_27FE8ED00;
  if (!qword_27FE8ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ED00);
  }

  return result;
}

unint64_t sub_2611D8574()
{
  result = qword_27FE8ED08;
  if (!qword_27FE8ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ED08);
  }

  return result;
}

unint64_t sub_2611D85C8()
{
  result = qword_27FE8ED10;
  if (!qword_27FE8ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8ED10);
  }

  return result;
}

unint64_t sub_2611D861C()
{
  result = qword_27FE8ED18[0];
  if (!qword_27FE8ED18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8ED18);
  }

  return result;
}

uint64_t StoreErrorInternal.Code.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878B0, &qword_2612229A0);
  v134 = *(v122 - 8);
  v3 = *(v134 + 64);
  MEMORY[0x28223BE20](v122);
  v130 = &v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878B8, &qword_2612229A8);
  v120 = *(v5 - 8);
  v121 = v5;
  v6 = *(v120 + 64);
  MEMORY[0x28223BE20](v5);
  v129 = &v94 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878C0, &qword_2612229B0);
  v118 = *(v8 - 8);
  v119 = v8;
  v9 = *(v118 + 64);
  MEMORY[0x28223BE20](v8);
  v128 = &v94 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878C8, &qword_2612229B8);
  v116 = *(v117 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v127 = &v94 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878D0, &qword_2612229C0);
  v114 = *(v115 - 8);
  v13 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v126 = &v94 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878D8, &qword_2612229C8);
  v112 = *(v113 - 8);
  v15 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v125 = &v94 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878E0, &qword_2612229D0);
  v110 = *(v111 - 8);
  v17 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v133 = &v94 - v18;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878E8, &qword_2612229D8);
  v108 = *(v109 - 8);
  v19 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v132 = &v94 - v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878F0, &qword_2612229E0);
  v106 = *(v107 - 8);
  v21 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v131 = &v94 - v22;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878F8, &qword_2612229E8);
  v104 = *(v105 - 8);
  v23 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v124 = &v94 - v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87900, &qword_2612229F0);
  v102 = *(v103 - 8);
  v25 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v123 = &v94 - v26;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87908, &qword_2612229F8);
  v100 = *(v101 - 8);
  v27 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v29 = &v94 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87910, &qword_261222A00);
  v99 = *(v30 - 8);
  v31 = *(v99 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v94 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87918, &qword_261222A08);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v94 - v37;
  v39 = a1[3];
  v40 = a1[4];
  v136 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_2611D81D8();
  v41 = v137;
  sub_26121D5F0();
  v137 = v41;
  if (v41)
  {
LABEL_33:
    v88 = v136;
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  v96 = v33;
  v95 = v30;
  v97 = v29;
  v43 = v131;
  v42 = v132;
  v45 = v133;
  v44 = v134;
  v98 = v35;
  v46 = v135;
  v47 = sub_26121D400();
  if (*(v47 + 16) != 1 || (v48 = *(v47 + 32), v48 == 13))
  {
    v53 = sub_26121D220();
    v54 = swift_allocError();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470) + 48);
    *v56 = &type metadata for StoreErrorInternal.Code;
    sub_26121D360();
    sub_26121D210();
    (*(*(v53 - 8) + 104))(v56, *MEMORY[0x277D84160], v53);
    v137 = v54;
    swift_willThrow();
    (*(v98 + 8))(v38, v34);
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v94 = v47;
  switch(v48)
  {
    case 1:
      v139 = 1;
      sub_2611D85C8();
      v80 = v97;
      v81 = v137;
      sub_26121D350();
      v137 = v81;
      if (v81)
      {
        goto LABEL_31;
      }

      (*(v100 + 8))(v80, v101);
      (*(v98 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v52 = 3;
      v51 = 1;
      goto LABEL_36;
    case 2:
      v140 = 2;
      sub_2611D8574();
      v71 = v123;
      v72 = v137;
      sub_26121D350();
      v137 = v72;
      if (v72)
      {
        goto LABEL_31;
      }

      v73 = v103;
      v74 = sub_26121D3E0();
      v75 = v98;
      v137 = 0;
      v93 = v74;
      (*(v102 + 8))(v71, v73);
      (*(v75 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v51 = v93;
      v52 = 0;
      goto LABEL_36;
    case 3:
      v141 = 3;
      sub_2611D8520();
      v76 = v124;
      v77 = v137;
      sub_26121D350();
      v137 = v77;
      if (v77)
      {
        goto LABEL_31;
      }

      (*(v104 + 8))(v76, v105);
      (*(v98 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v52 = 3;
      v51 = 2;
      goto LABEL_36;
    case 4:
      v142 = 4;
      sub_2611D84CC();
      v63 = v137;
      sub_26121D350();
      v137 = v63;
      if (v63)
      {
        goto LABEL_31;
      }

      (*(v106 + 8))(v43, v107);
      (*(v98 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v51 = 3;
      v52 = 3;
      goto LABEL_36;
    case 5:
      v143 = 5;
      sub_2611D8478();
      v82 = v137;
      sub_26121D350();
      v137 = v82;
      if (v82)
      {
        goto LABEL_31;
      }

      (*(v108 + 8))(v42, v109);
      (*(v98 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v52 = 3;
      v51 = 4;
      goto LABEL_36;
    case 6:
      v144 = 6;
      sub_2611D8424();
      v83 = v137;
      sub_26121D350();
      v137 = v83;
      if (v83)
      {
        goto LABEL_31;
      }

      (*(v110 + 8))(v45, v111);
      (*(v98 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v52 = 3;
      v51 = 5;
      goto LABEL_36;
    case 7:
      v145 = 7;
      sub_2611D83D0();
      v78 = v125;
      v79 = v137;
      sub_26121D350();
      v137 = v79;
      if (v79)
      {
        goto LABEL_31;
      }

      (*(v112 + 8))(v78, v113);
      (*(v98 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v52 = 3;
      v51 = 6;
      goto LABEL_36;
    case 8:
      v146 = 8;
      sub_2611D837C();
      v86 = v126;
      v87 = v137;
      sub_26121D350();
      v137 = v87;
      if (v87)
      {
        goto LABEL_31;
      }

      (*(v114 + 8))(v86, v115);
      (*(v98 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v52 = 3;
      v51 = 7;
      goto LABEL_36;
    case 9:
      v147 = 9;
      sub_2611D8328();
      v69 = v127;
      v70 = v137;
      sub_26121D350();
      v137 = v70;
      if (v70)
      {
        goto LABEL_31;
      }

      (*(v116 + 8))(v69, v117);
      (*(v98 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v52 = 3;
      v51 = 8;
      goto LABEL_36;
    case 10:
      v148 = 10;
      sub_2611D82D4();
      v84 = v128;
      v85 = v137;
      sub_26121D350();
      v137 = v85;
      if (v85)
      {
        goto LABEL_31;
      }

      (*(v118 + 8))(v84, v119);
      (*(v98 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v52 = 3;
      v51 = 9;
      goto LABEL_36;
    case 11:
      v149 = 11;
      sub_2611D8280();
      v58 = v129;
      v59 = v137;
      sub_26121D350();
      v137 = v59;
      if (v59)
      {
        goto LABEL_31;
      }

      v60 = v121;
      v61 = sub_26121D3E0();
      v62 = v98;
      v137 = 0;
      v90 = v61;
      (*(v120 + 8))(v58, v60);
      (*(v62 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v51 = v90;
      v52 = 1;
      goto LABEL_36;
    case 12:
      v150 = 12;
      sub_2611D822C();
      v64 = v130;
      v65 = v137;
      sub_26121D350();
      v137 = v65;
      if (v65)
      {
        goto LABEL_31;
      }

      v66 = v122;
      v67 = sub_26121D3E0();
      v68 = v98;
      v137 = 0;
      v91 = *(v44 + 8);
      v92 = v67;
      v91(v64, v66);
      (*(v68 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v51 = v92;
      v52 = 2;
      goto LABEL_36;
    default:
      v138 = 0;
      sub_2611D861C();
      v49 = v96;
      v50 = v137;
      sub_26121D350();
      v137 = v50;
      if (v50)
      {
LABEL_31:
        (*(v98 + 8))(v38, v34);
        goto LABEL_32;
      }

      (*(v99 + 8))(v49, v95);
      (*(v98 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v51 = 0;
      v52 = 3;
LABEL_36:
      v88 = v136;
      *v46 = v51;
      *(v46 + 8) = v52;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v88);
}

void StoreErrorInternal.code.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code);
  *(a1 + 8) = v2;
}

uint64_t sub_2611D99A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code);
  if (*(v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code + 8) <= 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code + 8))
    {
      v2 = 0x7272454244666173;
    }

    else
    {
      v2 = 0x286E776F6E6B6E75;
    }

    v8 = v2;
    goto LABEL_8;
  }

  if (*(v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code + 8) == 2)
  {
    sub_26121D1E0();

    v8 = 0xD000000000000010;
LABEL_8:
    v3 = sub_26121D4C0();
    MEMORY[0x2666FBF20](v3);

    MEMORY[0x2666FBF20](41, 0xE100000000000000);
    return v8;
  }

  if (v1 > 4)
  {
    if (v1 <= 6)
    {
      v5 = 0xD000000000000017;
      v6 = 0xD000000000000012;
      v7 = v1 == 5;
    }

    else
    {
      if (v1 == 7)
      {
        return 0xD000000000000010;
      }

      v5 = 0xD000000000000013;
      v6 = 0xD000000000000015;
      v7 = v1 == 8;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else if (v1 <= 1)
  {
    if (v1)
    {
      return 2037609826;
    }

    else
    {
      return 0x776F6C6C41746F6ELL;
    }
  }

  else if (v1 == 2)
  {
    return 0x456B726F7774656ELL;
  }

  else if (v1 == 3)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000017;
  }
}

id StoreErrorInternal.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = &v3[OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code];
  *v5 = *a1;
  v5[8] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id StoreErrorInternal.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &v1[OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code];
  *v3 = *a1;
  v3[8] = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StoreErrorInternal();
  return objc_msgSendSuper2(&v5, sel_init);
}

id StoreErrorInternal.init(_bridgedNSError:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 domain];
  v5 = sub_26121CC80();
  v7 = v6;

  sub_2611DA47C(&qword_27FE87928);
  if (v5 == sub_26121C390() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_26121D4D0();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v11 = [a1 userInfo];
  v12 = sub_26121CBA0();

  if (*(v12 + 16) && (v13 = sub_2611B3970(0xD00000000000002BLL, 0x800000026122DBF0), (v14 & 1) != 0))
  {
    sub_2611AC930(*(v12 + 56) + 32 * v13, &v28);

    if (swift_dynamicCast())
    {
      v15 = sub_26121C4B0();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      sub_26121C4A0();
      sub_2611DA3A0();
      sub_26121C490();

      v19 = v28;
      v20 = v29;
      v21 = [a1 code];
      sub_26119DA0C(v26, v27);
      if (v20 > 1)
      {
        v22 = v20 == 2 ? 12 : qword_2612237B0[v19];
      }

      else
      {
        v22 = v20 ? 11 : 2;
      }

      if (v21 == v22)
      {
        v23 = &v2[OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code];
        *v23 = v19;
        v23[8] = v20;
        v25.receiver = v2;
        v25.super_class = type metadata accessor for StoreErrorInternal();
        v24 = objc_msgSendSuper2(&v25, sel_init);

        return v24;
      }
    }
  }

  else
  {
  }

LABEL_13:

  type metadata accessor for StoreErrorInternal();
  swift_deallocPartialClassInstance();
  return 0;
}

id StoreErrorInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoreErrorInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreErrorInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611DA0B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 96))(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2611DA0F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_2611DA148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

uint64_t StoreErrorInternal.errorCode.getter()
{
  if (*(v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code + 8) > 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code + 8) == 2)
    {
      return 12;
    }

    else
    {
      return qword_2612237B0[*(v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code)];
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code + 8))
  {
    return 11;
  }

  else
  {
    return 2;
  }
}

uint64_t StoreErrorInternal.errorUserInfo.getter()
{
  v1 = MEMORY[0x277D84F98];
  v14 = MEMORY[0x277D84F98];
  v2 = sub_26121C4E0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_26121C4D0();
  v5 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code + 8);
  *&v12 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code);
  sub_2611DA3F4();
  v6 = sub_26121C4C0();
  v8 = v7;

  v13 = MEMORY[0x277CC9318];
  *&v12 = v6;
  *(&v12 + 1) = v8;
  sub_2611B69DC(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2611B63A0(v11, 0xD00000000000002BLL, 0x800000026122DBF0, isUniquelyReferenced_nonNull_native);
  return v1;
}

uint64_t sub_2611DA328()
{
  v1 = *v0 + OBJC_IVAR____TtC19ProximityReaderCore18StoreErrorInternal_code;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      return 12;
    }

    else
    {
      return qword_2612237B0[*v1];
    }
  }

  else if (*(v1 + 8))
  {
    return 11;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_2611DA3A0()
{
  result = qword_27FE87930;
  if (!qword_27FE87930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87930);
  }

  return result;
}

unint64_t sub_2611DA3F4()
{
  result = qword_27FE87938;
  if (!qword_27FE87938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87938);
  }

  return result;
}

uint64_t sub_2611DA47C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StoreErrorInternal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StoreErrorInternal.Code(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreErrorInternal.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2611DA59C(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_2611DA5B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StoreErrorInternal.Code.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreErrorInternal.Code.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2611DA800()
{
  result = qword_27FE8F0A0[0];
  if (!qword_27FE8F0A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8F0A0);
  }

  return result;
}

unint64_t sub_2611DA858()
{
  result = qword_27FE8F2B0[0];
  if (!qword_27FE8F2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8F2B0);
  }

  return result;
}

unint64_t sub_2611DA8B0()
{
  result = qword_27FE8FCC0[0];
  if (!qword_27FE8FCC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8FCC0);
  }

  return result;
}

unint64_t sub_2611DA908()
{
  result = qword_27FE900D0[0];
  if (!qword_27FE900D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE900D0);
  }

  return result;
}

unint64_t sub_2611DA960()
{
  result = qword_27FE901E0;
  if (!qword_27FE901E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE901E0);
  }

  return result;
}

unint64_t sub_2611DA9B8()
{
  result = qword_27FE901E8[0];
  if (!qword_27FE901E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE901E8);
  }

  return result;
}

unint64_t sub_2611DAA10()
{
  result = qword_27FE90270;
  if (!qword_27FE90270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90270);
  }

  return result;
}

unint64_t sub_2611DAA68()
{
  result = qword_27FE90278;
  if (!qword_27FE90278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90278);
  }

  return result;
}

unint64_t sub_2611DAAC0()
{
  result = qword_27FE90300;
  if (!qword_27FE90300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90300);
  }

  return result;
}

unint64_t sub_2611DAB18()
{
  result = qword_27FE90308[0];
  if (!qword_27FE90308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE90308);
  }

  return result;
}

unint64_t sub_2611DAB70()
{
  result = qword_27FE90390;
  if (!qword_27FE90390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90390);
  }

  return result;
}

unint64_t sub_2611DABC8()
{
  result = qword_27FE90398[0];
  if (!qword_27FE90398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE90398);
  }

  return result;
}

unint64_t sub_2611DAC20()
{
  result = qword_27FE90420;
  if (!qword_27FE90420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90420);
  }

  return result;
}

unint64_t sub_2611DAC78()
{
  result = qword_27FE90428[0];
  if (!qword_27FE90428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE90428);
  }

  return result;
}

unint64_t sub_2611DACD0()
{
  result = qword_27FE904B0;
  if (!qword_27FE904B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE904B0);
  }

  return result;
}

unint64_t sub_2611DAD28()
{
  result = qword_27FE904B8[0];
  if (!qword_27FE904B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE904B8);
  }

  return result;
}

unint64_t sub_2611DAD80()
{
  result = qword_27FE90540;
  if (!qword_27FE90540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90540);
  }

  return result;
}

unint64_t sub_2611DADD8()
{
  result = qword_27FE90548[0];
  if (!qword_27FE90548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE90548);
  }

  return result;
}

unint64_t sub_2611DAE30()
{
  result = qword_27FE905D0;
  if (!qword_27FE905D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE905D0);
  }

  return result;
}

unint64_t sub_2611DAE88()
{
  result = qword_27FE905D8[0];
  if (!qword_27FE905D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE905D8);
  }

  return result;
}

unint64_t sub_2611DAEE0()
{
  result = qword_27FE90660;
  if (!qword_27FE90660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90660);
  }

  return result;
}

unint64_t sub_2611DAF38()
{
  result = qword_27FE90668[0];
  if (!qword_27FE90668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE90668);
  }

  return result;
}

unint64_t sub_2611DAF90()
{
  result = qword_27FE906F0;
  if (!qword_27FE906F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE906F0);
  }

  return result;
}

unint64_t sub_2611DAFE8()
{
  result = qword_27FE906F8[0];
  if (!qword_27FE906F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE906F8);
  }

  return result;
}

unint64_t sub_2611DB040()
{
  result = qword_27FE90780;
  if (!qword_27FE90780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90780);
  }

  return result;
}

unint64_t sub_2611DB098()
{
  result = qword_27FE90788[0];
  if (!qword_27FE90788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE90788);
  }

  return result;
}

unint64_t sub_2611DB0F0()
{
  result = qword_27FE90810;
  if (!qword_27FE90810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90810);
  }

  return result;
}

unint64_t sub_2611DB148()
{
  result = qword_27FE90818[0];
  if (!qword_27FE90818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE90818);
  }

  return result;
}

unint64_t sub_2611DB1A0()
{
  result = qword_27FE908A0;
  if (!qword_27FE908A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE908A0);
  }

  return result;
}

unint64_t sub_2611DB1F8()
{
  result = qword_27FE908A8[0];
  if (!qword_27FE908A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE908A8);
  }

  return result;
}

unint64_t sub_2611DB250()
{
  result = qword_27FE90930;
  if (!qword_27FE90930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90930);
  }

  return result;
}

unint64_t sub_2611DB2A8()
{
  result = qword_27FE90938[0];
  if (!qword_27FE90938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE90938);
  }

  return result;
}

uint64_t sub_2611DB2FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C6C41746F6ELL && a2 == 0xEA00000000006465;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037609826 && a2 == 0xE400000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272 || (sub_26121D4D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026122D7E0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026122DBD0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026122DBB0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026122DB90 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026122DB70 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026122DB50 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026122DB30 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7272454244666173 && a2 == 0xEA0000000000726FLL || (sub_26121D4D0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x696E676953666173 && a2 == 0xEF726F727245676ELL)
  {

    return 12;
  }

  else
  {
    v6 = sub_26121D4D0();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t static StoreAndForwardBatchHeaderInternal.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE87950 = a1;
  return result;
}

uint64_t sub_2611DB89C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE87950;
  return result;
}

uint64_t sub_2611DB8E8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE87950 = v1;
  return result;
}

uint64_t sub_2611DB998()
{
  sub_26121D1E0();
  MEMORY[0x2666FBF20](540689481, 0xE400000000000000);
  countAndFlagsBits = UUID.toString()()._countAndFlagsBits;
  MEMORY[0x2666FBF20](countAndFlagsBits);

  MEMORY[0x2666FBF20](0x203A746E756F430ALL, 0xE800000000000000);
  v10 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_count);
  v2 = sub_26121D4C0();
  MEMORY[0x2666FBF20](v2);

  MEMORY[0x2666FBF20](0x7574616E6769530ALL, 0xEC000000203A6572);
  v3 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_signature);
  v4 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_signature + 8);
  v5 = sub_26121C670();
  MEMORY[0x2666FBF20](v5);

  MEMORY[0x2666FBF20](0xD00000000000001CLL, 0x800000026122DC90);
  v11 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_intermediateCertificates);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
  sub_2611BDF14();
  v6 = sub_26121CBF0();
  v8 = v7;

  MEMORY[0x2666FBF20](v6, v8);

  MEMORY[0x2666FBF20](0xD000000000000013, 0x800000026122DCB0);
  MEMORY[0x2666FBF20](*(v0 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_leafCertificate), *(v0 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_leafCertificate + 8));
  return 0;
}

uint64_t StoreAndForwardBatchHeaderInternal.batchID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_batchID;
  v4 = sub_26121C7B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoreAndForwardBatchHeaderInternal.signature.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_signature);
  sub_26119D904(v1, *(v0 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_signature + 8));
  return v1;
}

uint64_t StoreAndForwardBatchHeaderInternal.leafCertificate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_leafCertificate);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_leafCertificate + 8);

  return v1;
}

id StoreAndForwardBatchHeaderInternal.__allocating_init(batchID:count:signature:intermediateCertificates:leafCertificate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(v7);
  v14 = OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_batchID;
  v15 = sub_26121C7B0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a1, v15);
  *&v13[OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_count] = a2;
  v17 = &v13[OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_signature];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v13[OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_intermediateCertificates] = a5;
  v18 = &v13[OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_leafCertificate];
  *v18 = a6;
  *(v18 + 1) = a7;
  v23.receiver = v13;
  v23.super_class = v7;
  v19 = objc_msgSendSuper2(&v23, sel_init);
  (*(v16 + 8))(a1, v15);
  return v19;
}

id StoreAndForwardBatchHeaderInternal.init(batchID:count:signature:intermediateCertificates:leafCertificate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_batchID;
  v15 = sub_26121C7B0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v7[v14], a1, v15);
  *&v7[OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_count] = a2;
  v17 = &v7[OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_signature];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v7[OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_intermediateCertificates] = a5;
  v18 = &v7[OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_leafCertificate];
  *v18 = a6;
  *(v18 + 1) = a7;
  v22.receiver = v7;
  v22.super_class = type metadata accessor for StoreAndForwardBatchHeaderInternal();
  v19 = objc_msgSendSuper2(&v22, sel_init);
  (*(v16 + 8))(a1, v15);
  return v19;
}

uint64_t type metadata accessor for StoreAndForwardBatchHeaderInternal()
{
  result = qword_27FE909C0;
  if (!qword_27FE909C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2611DBF80(void *a1)
{
  v2 = v1;
  v4 = sub_26121C780();
  v5 = sub_26121CC50();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_count);
  v7 = sub_26121CC50();
  [a1 encodeInteger:v6 forKey:v7];

  v8 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_signature);
  v9 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_signature + 8);
  v10 = sub_26121C660();
  v11 = sub_26121CC50();
  [a1 encodeObject:v10 forKey:v11];

  v12 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_intermediateCertificates);
  v13 = sub_26121CEB0();
  v14 = sub_26121CC50();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_leafCertificate);
  v16 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_leafCertificate + 8);
  v17 = sub_26121CC50();
  v18 = sub_26121CC50();
  [a1 encodeObject:v17 forKey:v18];
}

id StoreAndForwardBatchHeaderInternal.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_26121C7B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2611AC98C(0, &qword_27FE87A10, 0x277CCAD78);
  v9 = sub_26121D060();
  if (v9)
  {
    v10 = v9;
    sub_2611AC98C(0, &qword_27FE87280, 0x277CBEA90);
    v11 = sub_26121D060();
    if (v11)
    {
      v12 = v11;
      sub_2611AC98C(0, &qword_27FE870A0, 0x277CCACA8);
      v13 = sub_26121D090();
      if (v13)
      {
        v14 = v13;
        v15 = sub_26121D060();
        if (v15)
        {
          v16 = v15;
          sub_26121C790();
          (*(v5 + 32))(v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_batchID, v8, v4);
          v17 = sub_26121CC50();
          v18 = [a1 decodeIntegerForKey_];

          *(v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_count) = v18;
          v19 = v12;
          v20 = sub_26121C690();
          v22 = v21;

          v23 = (v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_signature);
          *v23 = v20;
          v23[1] = v22;
          v24 = sub_2611DC548(v14);

          *(v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_intermediateCertificates) = v24;
          v25 = sub_26121CC80();
          v27 = v26;

          v28 = (v2 + OBJC_IVAR____TtC19ProximityReaderCore34StoreAndForwardBatchHeaderInternal_leafCertificate);
          *v28 = v25;
          v28[1] = v27;
          v29 = type metadata accessor for StoreAndForwardBatchHeaderInternal();
          v34.receiver = v2;
          v34.super_class = v29;
          v30 = objc_msgSendSuper2(&v34, sel_init);

          return v30;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  type metadata accessor for StoreAndForwardBatchHeaderInternal();
  v32 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v33 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2611DC548(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26121D2E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_2611B7D88(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2666FC380](0, a1);
    result = sub_26121CC60();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_26121CC60();
LABEL_12:
  __break(1u);
  return result;
}

id StoreAndForwardBatchHeaderInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoreAndForwardBatchHeaderInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreAndForwardBatchHeaderInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611DC894()
{
  result = sub_26121C7B0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PINAnalyticsData.cancelationTrigger.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t PINAnalyticsData.cancelationTrigger.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void PINAnalyticsData.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 1;
}

uint64_t PINAnalyticsData.encode()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15[-v3];
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v15[8] = *v0;
  v16 = *(v0 + 8);
  v17 = v5;
  v18 = v6;
  sub_2611DCC74();
  result = Encodable.toJson()(&type metadata for PINAnalyticsData);
  if (v8 >> 60 == 15)
  {
    v9 = sub_2611F02B4();
    sub_2611B8B74(v9, v4);
    v10 = sub_26121CA60();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v4, 1, v10) == 1)
    {
      sub_2611D57E4(v4);
    }

    else
    {
      v12 = sub_26121CA40();
      v13 = sub_26121CFC0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261197000, v12, v13, "failed to encode PINAnalyticsData", v14, 2u);
        MEMORY[0x2666FCF20](v14, -1, -1);
      }

      (*(v11 + 8))(v4, v10);
    }

    return 0;
  }

  return result;
}

unint64_t sub_2611DCC74()
{
  result = qword_27FE87968;
  if (!qword_27FE87968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87968);
  }

  return result;
}

unint64_t sub_2611DCCC8()
{
  *v0;
  *v0;
  if (*v0 <= 1u)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_2611DCD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2611DD5C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2611DCD5C(uint64_t a1)
{
  v2 = sub_2611DD248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611DCD98(uint64_t a1)
{
  v2 = sub_2611DD248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PINAnalyticsData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87970, &qword_261223868);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v17 = *(v1 + 2);
  v18 = v10;
  v16 = *(v1 + 3);
  v21 = v1[32];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611DD248();
  sub_26121D600();
  LOBYTE(v19) = 0;
  sub_26121D470();
  if (!v2)
  {
    v12 = v16;
    v13 = v21;
    v19 = v18;
    v22 = 1;
    sub_2611DD29C();
    sub_26121D4A0();
    LOBYTE(v19) = 2;
    sub_26121D490();
    v19 = v12;
    v20 = v13;
    v22 = 3;
    sub_2611DD2F0();
    sub_26121D450();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PINAnalyticsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87988, &qword_261223870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611DD248();
  sub_26121D5F0();
  if (!v2)
  {
    LOBYTE(v19) = 0;
    v11 = sub_26121D3C0();
    v21 = 1;
    sub_2611DD344();
    sub_26121D3F0();
    v12 = v19;
    LOBYTE(v19) = 2;
    v18 = sub_26121D3E0();
    v21 = 3;
    sub_2611DD398();
    sub_26121D3A0();
    (*(v6 + 8))(v9, v5);
    v14 = v20;
    *a2 = v11 & 1;
    v15 = v18;
    v16 = v19;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2611DD248()
{
  result = qword_27FE909D0[0];
  if (!qword_27FE909D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE909D0);
  }

  return result;
}

unint64_t sub_2611DD29C()
{
  result = qword_27FE87978;
  if (!qword_27FE87978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87978);
  }

  return result;
}

unint64_t sub_2611DD2F0()
{
  result = qword_27FE87980;
  if (!qword_27FE87980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87980);
  }

  return result;
}

unint64_t sub_2611DD344()
{
  result = qword_27FE87990;
  if (!qword_27FE87990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87990);
  }

  return result;
}

unint64_t sub_2611DD398()
{
  result = qword_27FE87998;
  if (!qword_27FE87998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87998);
  }

  return result;
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

uint64_t sub_2611DD400(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2611DD454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2611DD4C0()
{
  result = qword_27FE90BE0[0];
  if (!qword_27FE90BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE90BE0);
  }

  return result;
}

unint64_t sub_2611DD518()
{
  result = qword_27FE90CF0;
  if (!qword_27FE90CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90CF0);
  }

  return result;
}

unint64_t sub_2611DD570()
{
  result = qword_27FE90CF8[0];
  if (!qword_27FE90CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE90CF8);
  }

  return result;
}

uint64_t sub_2611DD5C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000026122DDA0 == a2;
  if (v3 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026122DDC0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026122DDE0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026122DE00 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_26121D4D0();

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

unint64_t TransactionTypeInternal.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2611DD748@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t TransactionTypeInternal.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x6573616863727570;
  }

  if (a1 == 1)
  {
    return 0x646E75666572;
  }

  result = sub_26121D510();
  __break(1u);
  return result;
}

unint64_t sub_2611DD7D4()
{
  result = qword_27FE879A0;
  if (!qword_27FE879A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE879A0);
  }

  return result;
}

uint64_t sub_2611DD828()
{
  if (!*v0)
  {
    return 0x6573616863727570;
  }

  if (*v0 == 1)
  {
    return 0x646E75666572;
  }

  v2 = *v0;
  result = sub_26121D510();
  __break(1u);
  return result;
}

uint64_t static StoreAndForwardStatusInternal.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE879B0 = a1;
  return result;
}

uint64_t sub_2611DDA18@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE879B0;
  return result;
}

uint64_t sub_2611DDA64(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE879B0 = v1;
  return result;
}

uint64_t StoreAndForwardStatusInternal.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_expiration;
  v4 = sub_26121C760();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoreAndForwardStatusInternal.description.getter()
{
  sub_26121D1E0();

  v4 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_readCount);
  v1 = sub_26121D4C0();
  MEMORY[0x2666FBF20](v1);

  MEMORY[0x2666FBF20](0x617269707845202CLL, 0xEE00203A6E6F6974);
  sub_26121C760();
  sub_2611DE690(&qword_27FE87740);
  v2 = sub_26121D4C0();
  MEMORY[0x2666FBF20](v2);

  return 0x203A746E756F43;
}

id StoreAndForwardStatusInternal.__allocating_init(readCount:expiration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_readCount] = a1;
  v6 = OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_expiration;
  v7 = sub_26121C760();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a2, v7);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

id StoreAndForwardStatusInternal.init(readCount:expiration:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_readCount] = a1;
  v6 = OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_expiration;
  v7 = sub_26121C760();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a2, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

Swift::Void __swiftcall StoreAndForwardStatusInternal.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_readCount);
  v4 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = sub_26121C700();
  v6 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id StoreAndForwardStatusInternal.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - v10;
  v12 = sub_26121C760();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  sub_2611DE4E4();
  v20 = sub_26121D060();
  if (v20 && (v21 = v20, (*(v13 + 56))(v11, 1, 1, v12), sub_2611DE690(&qword_27FE879D0), sub_26121D330(), v21, (*(v13 + 48))(v11, 1, v12) != 1))
  {
    v31 = *(v13 + 32);
    v31(v17, v11, v12);
    v31(v19, v17, v12);
    v32 = sub_26121CC50();
    v33 = [a1 decodeIntegerForKey_];

    *&v2[OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_readCount] = v33;
    v31(&v2[OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_expiration], v19, v12);
    v37.receiver = v2;
    v37.super_class = ObjectType;
    v34 = objc_msgSendSuper2(&v37, sel_init);

    return v34;
  }

  else
  {
    v22 = sub_2611F02B4();
    sub_2611B8B74(v22, v7);
    v23 = sub_26121CA60();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v7, 1, v23) == 1)
    {

      sub_2611D57E4(v7);
    }

    else
    {
      v25 = sub_26121CA40();
      v26 = sub_26121CFC0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261197000, v25, v26, "StoreAndForwardStatusInternal | Failed to decode object", v27, 2u);
        MEMORY[0x2666FCF20](v27, -1, -1);
      }

      (*(v24 + 8))(v7, v23);
    }

    v28 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v29 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_2611DE4E4()
{
  result = qword_27FE879F0;
  if (!qword_27FE879F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE879F0);
  }

  return result;
}

id StoreAndForwardStatusInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoreAndForwardStatusInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611DE690(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26121C760();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for StoreAndForwardStatusInternal()
{
  result = qword_27FE90F80;
  if (!qword_27FE90F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2611DE728()
{
  result = sub_26121C760();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static SessionResult.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE879E0 = a1;
  return result;
}

uint64_t sub_2611DE978@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE879E0;
  return result;
}

uint64_t sub_2611DE9C4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE879E0 = v1;
  return result;
}

uint64_t sub_2611DEA20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionResult.countryCode.getter()
{
  result = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_countryCode);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_countryCode + 8);
  return result;
}

id SessionResult.__allocating_init(deprecationDate:countryCode:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  sub_2611DEA20(a1, &v7[OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_osDeprecationDate]);
  v8 = &v7[OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_countryCode];
  *v8 = a2;
  v8[8] = a3 & 1;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_2611DEBE0(a1);
  return v9;
}

id SessionResult.init(deprecationDate:countryCode:)(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  sub_2611DEA20(a1, &v3[OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_osDeprecationDate]);
  v8 = &v3[OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_countryCode];
  *v8 = a2;
  v8[8] = a3 & 1;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_2611DEBE0(a1);
  return v9;
}

uint64_t sub_2611DEBE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall SessionResult.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  sub_2611DEA20(v2 + OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_osDeprecationDate, &v15 - v6);
  v8 = sub_26121C760();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v10 = sub_26121C700();
    (*(v9 + 8))(v7, v8);
  }

  v11 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_countryCode + 8))
  {
    v12 = 0;
  }

  else
  {
    v13 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_countryCode);
    v12 = sub_26121CFA0();
  }

  v14 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v14];
  swift_unknownObjectRelease();
}

id SessionResult.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2611DEFFC(a1);

  return v4;
}

id SessionResult.init(coder:)(void *a1)
{
  v2 = sub_2611DEFFC(a1);

  return v2;
}

id SessionResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SessionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2611DEFFC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  sub_2611DE4E4();
  v12 = sub_26121D060();
  if (v12)
  {
    v13 = v12;
    v14 = sub_26121C760();
    v15 = *(v14 - 8);
    v16 = *(v15 + 56);
    v16(v9, 1, 1, v14);
    sub_2611DF44C();
    sub_26121D330();

    if ((*(v15 + 48))(v9, 1, v14) == 1)
    {
      v17 = v11;
      v18 = 1;
    }

    else
    {
      (*(v15 + 32))(v11, v9, v14);
      v17 = v11;
      v18 = 0;
    }

    v16(v17, v18, 1, v14);
  }

  else
  {
    v19 = sub_26121C760();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  }

  sub_2611DF3DC(v11, &v2[OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_osDeprecationDate]);
  v20 = sub_26121CC50();
  v21 = [a1 decodeIntegerForKey_];

  v22 = &v2[OBJC_IVAR____TtC19ProximityReaderCore13SessionResult_countryCode];
  *v22 = v21;
  v22[8] = 0;
  v24.receiver = v2;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t type metadata accessor for SessionResult()
{
  result = qword_27FE90F90;
  if (!qword_27FE90F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2611DF300()
{
  sub_2611CC304();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2611DF3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2611DF44C()
{
  result = qword_27FE879D0;
  if (!qword_27FE879D0)
  {
    sub_26121C760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE879D0);
  }

  return result;
}

uint64_t ReadResult.transactionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_transactionId;
  v4 = sub_26121C7B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadResult.cardReaderBlob.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardReaderBlob);
  sub_26119D904(v1, *(v0 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardReaderBlob + 8));
  return v1;
}

uint64_t ReadResult.generalCardData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_generalCardData);
  sub_26119D904(v1, *(v0 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_generalCardData + 8));
  return v1;
}

uint64_t ReadResult.payAppType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_payAppType);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_payAppType + 8);

  return v1;
}

uint64_t ReadResult.cardEffectiveState.getter()
{
  result = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardEffectiveState);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardEffectiveState + 8);
  return result;
}

uint64_t ReadResult.cardExpirationState.getter()
{
  result = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardExpirationState);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardExpirationState + 8);
  return result;
}

id ReadResult.__allocating_init(dataType:transactionId:cardReaderBlob:generalCardData:payAppType:vasEntries:readOutcome:pinBypassed:isPINFallback:cardEffectiveState:cardExpirationState:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v17 = v16;
  v24 = objc_allocWithZone(v17);
  *&v24[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_dataType] = a1;
  v25 = OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_transactionId;
  v26 = sub_26121C7B0();
  v27 = *(v26 - 8);
  v28 = &v24[v25];
  v29 = a2;
  (*(v27 + 16))(v28, a2, v26);
  if (a4 >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v30 = a3;
  }

  v31 = 0xC000000000000000;
  if (a4 >> 60 == 15)
  {
    v32 = 0xC000000000000000;
  }

  else
  {
    v32 = a4;
  }

  v33 = &v24[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardReaderBlob];
  *v33 = v30;
  v33[1] = v32;
  if (a6 >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v34 = a5;
  }

  if (a6 >> 60 != 15)
  {
    v31 = a6;
  }

  v35 = &v24[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_generalCardData];
  *v35 = v34;
  v35[1] = v31;
  v36 = &v24[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_payAppType];
  *v36 = a7;
  v36[1] = a8;
  v37 = MEMORY[0x277D84F90];
  if (a9)
  {
    v37 = a9;
  }

  *&v24[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_vasEntries] = v37;
  *&v24[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_readOutcome] = a10;
  v24[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_pinBypassed] = a11;
  v24[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_isPINFallback] = a12;
  v38 = &v24[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardEffectiveState];
  *v38 = a13;
  v38[8] = a14 & 1;
  v39 = &v24[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardExpirationState];
  *v39 = a15;
  v39[8] = a16 & 1;
  v45.receiver = v24;
  v45.super_class = v44;
  v40 = objc_msgSendSuper2(&v45, sel_init, a10);
  (*(v27 + 8))(v29, v26);
  return v40;
}

id ReadResult.init(dataType:transactionId:cardReaderBlob:generalCardData:payAppType:vasEntries:readOutcome:pinBypassed:isPINFallback:cardEffectiveState:cardExpirationState:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  ObjectType = swift_getObjectType();
  *&v16[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_dataType] = a1;
  v23 = OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_transactionId;
  v24 = sub_26121C7B0();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v16[v23], a2, v24);
  if (a4 >> 60 == 15)
  {
    v26 = 0;
  }

  else
  {
    v26 = a3;
  }

  v27 = 0xC000000000000000;
  if (a4 >> 60 == 15)
  {
    v28 = 0xC000000000000000;
  }

  else
  {
    v28 = a4;
  }

  v29 = &v16[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardReaderBlob];
  *v29 = v26;
  v29[1] = v28;
  if (a6 >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v30 = a5;
  }

  if (a6 >> 60 != 15)
  {
    v27 = a6;
  }

  v31 = &v16[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_generalCardData];
  *v31 = v30;
  v31[1] = v27;
  v32 = &v16[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_payAppType];
  *v32 = a7;
  v32[1] = a8;
  v33 = MEMORY[0x277D84F90];
  if (a9)
  {
    v33 = a9;
  }

  *&v16[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_vasEntries] = v33;
  *&v16[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_readOutcome] = a10;
  v16[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_pinBypassed] = a11;
  v16[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_isPINFallback] = a12;
  v34 = &v16[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardEffectiveState];
  *v34 = a13;
  v34[8] = a14 & 1;
  v35 = &v16[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardExpirationState];
  *v35 = a15;
  v35[8] = a16 & 1;
  v41.receiver = v16;
  v41.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v41, sel_init, a10);
  (*(v25 + 8))(a2, v24);
  return v36;
}

Swift::Void __swiftcall ReadResult.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = ResponseDataType.rawValue.getter(*(v1 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_dataType));
  v5 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeInteger:v4 forKey:v5];

  v6 = sub_26121C780();
  v7 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardReaderBlob);
  v9 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardReaderBlob + 8);
  v10 = sub_26121C660();
  v11 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  v12 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_generalCardData);
  v13 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_generalCardData + 8);
  v14 = sub_26121C660();
  v15 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_payAppType);
  v17 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_payAppType + 8);
  v18 = sub_26121CC50();
  v19 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  type metadata accessor for VASResultArrayWrapper();
  v20 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_vasEntries);

  v22 = VASResultArrayWrapper.__allocating_init(vasEntries:)(v21);
  v23 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];

  v24 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_readOutcome);
  v25 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeInteger:v24 forKey:v25];

  v26 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_pinBypassed);
  v27 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeBool:v26 forKey:v27];

  v28 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_isPINFallback);
  v29 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeBool:v28 forKey:v29];

  if ((*(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardEffectiveState + 8) & 1) == 0)
  {
    v30 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardEffectiveState);
    v31 = sub_26121CC50();
    [(objc_class *)with.super.isa encodeInteger:v30 forKey:v31];
  }

  if ((*(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardExpirationState + 8) & 1) == 0)
  {
    v32 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardExpirationState);
    v33 = sub_26121CC50();
    [(objc_class *)with.super.isa encodeInteger:v32 forKey:v33];
  }
}

id ReadResult.init(coder:)(id a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_26121C7B0();
  v86 = *(v2 - 1);
  v87 = v2;
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v2);
  v85 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v79 - v10;
  v88 = sub_2611F02B4();
  sub_2611B8B74(v88, v11);
  v12 = sub_26121CA60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    sub_2611D57E4(v11);
  }

  else
  {
    v15 = a1;
    v16 = sub_26121CA40();
    v17 = sub_26121CFB0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_261197000, v16, v17, "ReadResultInternal init", v18, 2u);
      MEMORY[0x2666FCF20](v18, -1, -1);
    }

    (*(v13 + 8))(v11, v12);
    a1 = v15;
  }

  v19 = sub_26121CC50();
  v20 = [a1 decodeIntegerForKey_];

  v21 = ResponseDataType.init(rawValue:)(v20);
  if ((v22 & 1) == 0)
  {
    v23 = v21;
    sub_2611AC98C(0, &qword_27FE87A10, 0x277CCAD78);
    v24 = sub_26121D060();
    if (v24)
    {
      v25 = v24;
      sub_2611AC98C(0, &qword_27FE87280, 0x277CBEA90);
      v26 = a1;
      v27 = sub_26121D060();
      if (v27)
      {
        v84 = v27;
        v28 = sub_26121D060();
        if (v28)
        {
          v83 = v28;
          sub_2611AC98C(0, &qword_27FE870A0, 0x277CCACA8);
          v29 = sub_26121D060();
          if (v29)
          {
            v82 = v29;
            type metadata accessor for VASResultArrayWrapper();
            v30 = sub_26121D060();
            if (v30)
            {
              v80 = v30;
              v31 = sub_26121CC50();
              v81 = v26;
              v32 = [v26 decodeIntegerForKey_];

              if (v32 < 3)
              {
                v33 = sub_26121CC50();
                v34 = v81;
                v35 = [v81 decodeBoolForKey_];

                v36 = sub_26121CC50();
                v37 = [v34 decodeBoolForKey_];

                v79 = v25;
                v38 = v90;
                *(v90 + OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_dataType) = v23;
                v39 = v85;
                sub_26121C790();
                (*(v86 + 32))(&v38[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_transactionId], v39, v87);
                v40 = v84;
                v88 = v40;
                v41 = sub_26121C690();
                v43 = v42;

                v44 = &v38[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardReaderBlob];
                *v44 = v41;
                v44[1] = v43;
                v45 = v83;
                v87 = v45;
                v46 = sub_26121C690();
                v48 = v47;

                v49 = &v38[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_generalCardData];
                *v49 = v46;
                v49[1] = v48;
                v50 = v82;
                v51 = sub_26121CC80();
                v52 = &v38[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_payAppType];
                *v52 = v51;
                v52[1] = v53;
                v54 = v80;
                *&v38[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_vasEntries] = *&v80[OBJC_IVAR____TtC19ProximityReaderCore21VASResultArrayWrapper_vasEntries];
                *&v38[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_readOutcome] = v32;
                v38[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_pinBypassed] = v35;
                v38[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_isPINFallback] = v37;

                v55 = sub_26121CC50();
                v56 = [v34 decodeIntegerForKey_];

                v57 = sub_26121CC50();
                v58 = [v34 containsValueForKey_];

                if (v56 <= 3)
                {
                  v59 = v56;
                }

                else
                {
                  v59 = 0;
                }

                if (!v58)
                {
                  v59 = 0;
                }

                v60 = &v38[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardEffectiveState];
                *v60 = v59;
                v60[8] = v56 > 3 || (v58 & 1) == 0;
                v61 = sub_26121CC50();
                v62 = [v34 decodeIntegerForKey_];

                v63 = sub_26121CC50();
                v64 = [v34 containsValueForKey_];

                if (v62 <= 3)
                {
                  v65 = v62;
                }

                else
                {
                  v65 = 0;
                }

                if (!v64)
                {
                  v65 = 0;
                }

                v66 = &v38[OBJC_IVAR____TtC19ProximityReaderCore10ReadResult_cardExpirationState];
                *v66 = v65;
                v66[8] = v62 > 3 || (v64 & 1) == 0;
                v91.receiver = v38;
                v91.super_class = ObjectType;
                v67 = objc_msgSendSuper2(&v91, sel_init);

                return v67;
              }

              v70 = v83;
              v71 = v84;
              a1 = v81;
              v69 = v82;
              v25 = v80;
            }

            else
            {
              v71 = v25;
              v69 = v83;
              v70 = v84;
              v25 = v82;
            }
          }

          else
          {
            v70 = v25;
            v25 = v83;
            v69 = v84;
          }
        }

        else
        {
          v69 = v25;
          v25 = v84;
        }
      }
    }
  }

  sub_2611B8B74(v88, v9);
  if (v14(v9, 1, v12) == 1)
  {

    sub_2611D57E4(v9);
  }

  else
  {
    v72 = sub_26121CA40();
    v73 = sub_26121CFC0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = a1;
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_261197000, v72, v73, "ReadResultInternal | Failed to decode object", v75, 2u);
      v76 = v75;
      a1 = v74;
      MEMORY[0x2666FCF20](v76, -1, -1);
    }

    (*(v13 + 8))(v9, v12);
  }

  v77 = *((*MEMORY[0x277D85000] & *v90) + 0x30);
  v78 = *((*MEMORY[0x277D85000] & *v90) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t ReadOutcomeInternal.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id ReadResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611E0A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2611E1384();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_2611E0A58(uint64_t a1)
{
  v2 = sub_2611E1384();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_2611E0A94(uint64_t a1)
{
  v2 = sub_2611E1384();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_2611E0AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2611E1384();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t CardEffectiveStateInternal.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x64696C61766E69;
    }

    if (a1 == 3)
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x657669746361;
    }

    if (a1 == 1)
    {
      return 0x6576697463616E69;
    }
  }

  result = sub_26121D510();
  __break(1u);
  return result;
}

uint64_t sub_2611E0C1C()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x657669746361;
    }

    if (v1 == 1)
    {
      return 0x6576697463616E69;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x64696C61766E69;
  }

  if (v1 != 3)
  {
LABEL_11:
    v3 = *v0;
    result = sub_26121D510();
    __break(1u);
    return result;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t CardExpirationStateInternal.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x64696C61766E69;
    }

    if (a1 == 3)
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x7269707845746F6ELL;
    }

    if (a1 == 1)
    {
      return 0x64657269707865;
    }
  }

  result = sub_26121D510();
  __break(1u);
  return result;
}

uint64_t sub_2611E0DAC()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x7269707845746F6ELL;
    }

    if (v1 == 1)
    {
      return 0x64657269707865;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x64696C61766E69;
  }

  if (v1 != 3)
  {
LABEL_11:
    v3 = *v0;
    result = sub_26121D510();
    __break(1u);
    return result;
  }

  return 0x6E776F6E6B6E75;
}

unint64_t sub_2611E0E80()
{
  result = qword_27FE87A18;
  if (!qword_27FE87A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87A18);
  }

  return result;
}

unint64_t sub_2611E0ED8()
{
  result = qword_27FE87A20;
  if (!qword_27FE87A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87A20);
  }

  return result;
}

unint64_t sub_2611E0F30()
{
  result = qword_27FE87A28;
  if (!qword_27FE87A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87A28);
  }

  return result;
}

unint64_t sub_2611E0F88()
{
  result = qword_27FE87A30;
  if (!qword_27FE87A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87A30);
  }

  return result;
}

unint64_t sub_2611E0FE0()
{
  result = qword_27FE87A40;
  if (!qword_27FE87A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87A40);
  }

  return result;
}

unint64_t sub_2611E1038()
{
  result = qword_27FE87A48;
  if (!qword_27FE87A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87A48);
  }

  return result;
}

unint64_t sub_2611E10C0()
{
  result = qword_27FE87A60;
  if (!qword_27FE87A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87A60);
  }

  return result;
}

uint64_t sub_2611E1144(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for ReadResult()
{
  result = qword_27FE917A0;
  if (!qword_27FE917A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2611E11EC()
{
  result = sub_26121C7B0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2611E1384()
{
  result = qword_27FE87A80;
  if (!qword_27FE87A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87A80);
  }

  return result;
}

uint64_t PINData.pinCipherBlobBase64.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinCipherBlobBase64);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinCipherBlobBase64 + 8);

  return v1;
}

uint64_t PINData.pinKeyBlobBase64.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKeyBlobBase64);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKeyBlobBase64 + 8);

  return v1;
}

uint64_t PINData.pinKekId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKekId);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKekId + 8);

  return v1;
}

uint64_t PINData.seAttestationBase64.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_seAttestationBase64);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_seAttestationBase64 + 8);

  return v1;
}

uint64_t PINData.casdCertificateHex.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_casdCertificateHex);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_casdCertificateHex + 8);

  return v1;
}

id PINData.__allocating_init(isPINBypass:pinKekId:pinCipherBlob:pinKeyBlob:seAttestation:casdCertificate:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11)
{
  v12 = v11;
  v19 = objc_allocWithZone(v12);
  v19[OBJC_IVAR____TtC19ProximityReaderCore7PINData_isPINBypass] = a1;
  v20 = sub_26121C670();
  v21 = &v19[OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinCipherBlobBase64];
  *v21 = v20;
  v21[1] = v22;
  v23 = sub_26121C670();
  v24 = &v19[OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKeyBlobBase64];
  *v24 = v23;
  v24[1] = v25;
  v26 = &v19[OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKekId];
  *v26 = a2;
  v26[1] = a3;
  v27 = sub_26121C670();
  v28 = &v19[OBJC_IVAR____TtC19ProximityReaderCore7PINData_seAttestationBase64];
  *v28 = v27;
  v28[1] = v29;
  v30._countAndFlagsBits = sub_2611BEAD0();
  v31 = Data.upperHex(format:)(v30);

  *&v19[OBJC_IVAR____TtC19ProximityReaderCore7PINData_casdCertificateHex] = v31;
  v37.receiver = v19;
  v37.super_class = v34;
  v32 = objc_msgSendSuper2(&v37, sel_init);
  sub_26119DA0C(a10, a11);
  sub_26119DA0C(a8, a9);
  sub_26119DA0C(a6, a7);
  sub_26119DA0C(a4, a5);
  return v32;
}

id PINData.init(isPINBypass:pinKekId:pinCipherBlob:pinKeyBlob:seAttestation:casdCertificate:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11)
{
  v12 = v11;
  ObjectType = swift_getObjectType();
  v12[OBJC_IVAR____TtC19ProximityReaderCore7PINData_isPINBypass] = a1;
  v19 = sub_26121C670();
  v20 = &v12[OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinCipherBlobBase64];
  *v20 = v19;
  v20[1] = v21;
  v22 = sub_26121C670();
  v23 = &v12[OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKeyBlobBase64];
  *v23 = v22;
  v23[1] = v24;
  v25 = &v12[OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKekId];
  *v25 = a2;
  v25[1] = a3;
  v26 = sub_26121C670();
  v27 = &v12[OBJC_IVAR____TtC19ProximityReaderCore7PINData_seAttestationBase64];
  *v27 = v26;
  v27[1] = v28;
  v29._countAndFlagsBits = sub_2611BEAD0();
  v30 = Data.upperHex(format:)(v29);

  *&v12[OBJC_IVAR____TtC19ProximityReaderCore7PINData_casdCertificateHex] = v30;
  v36.receiver = v12;
  v36.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v36, sel_init);
  sub_26119DA0C(a10, a11);
  sub_26119DA0C(a8, a9);
  sub_26119DA0C(a6, a7);
  sub_26119DA0C(a4, a5);
  return v31;
}

Swift::Void __swiftcall PINData.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_isPINBypass);
  v4 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinCipherBlobBase64);
  v6 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinCipherBlobBase64 + 8);
  v7 = sub_26121CC50();
  v8 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKeyBlobBase64);
  v10 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKeyBlobBase64 + 8);
  v11 = sub_26121CC50();
  v12 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKekId);
  v14 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKekId + 8);
  v15 = sub_26121CC50();
  v16 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_seAttestationBase64);
  v18 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_seAttestationBase64 + 8);
  v19 = sub_26121CC50();
  v20 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

  v21 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_casdCertificateHex);
  v22 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore7PINData_casdCertificateHex + 8);
  v23 = sub_26121CC50();
  v24 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
}

id PINData.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47 - v7;
  v9 = sub_26121CC50();
  v10 = [a1 decodeBoolForKey_];

  sub_261199284();
  v11 = sub_26121D060();
  if (v11)
  {
    v12 = v11;
    v48 = ObjectType;
    v13 = sub_26121D060();
    if (v13)
    {
      v14 = v13;
      v15 = sub_26121D060();
      if (v15)
      {
        v16 = v15;
        v17 = sub_26121D060();
        if (v17)
        {
          v47 = v17;
          v18 = sub_26121D060();
          if (v18)
          {
            v19 = v18;
            v2[OBJC_IVAR____TtC19ProximityReaderCore7PINData_isPINBypass] = v10;
            v20 = sub_26121CC80();
            v21 = &v2[OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKekId];
            *v21 = v20;
            v21[1] = v22;
            v23 = sub_26121CC80();
            v24 = &v2[OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinCipherBlobBase64];
            *v24 = v23;
            v24[1] = v25;
            v26 = sub_26121CC80();
            v27 = &v2[OBJC_IVAR____TtC19ProximityReaderCore7PINData_pinKeyBlobBase64];
            *v27 = v26;
            v27[1] = v28;
            v29 = v47;
            v30 = sub_26121CC80();
            v31 = &v2[OBJC_IVAR____TtC19ProximityReaderCore7PINData_seAttestationBase64];
            *v31 = v30;
            v31[1] = v32;
            v33 = sub_26121CC80();
            v35 = v34;

            v36 = &v2[OBJC_IVAR____TtC19ProximityReaderCore7PINData_casdCertificateHex];
            *v36 = v33;
            v36[1] = v35;
            v49.receiver = v2;
            v49.super_class = v48;
            v37 = objc_msgSendSuper2(&v49, sel_init);

            return v37;
          }

          v40 = v14;
          v39 = v16;
          v12 = v47;
        }

        else
        {
          v40 = v12;
          v39 = v14;
          v12 = v16;
        }
      }

      else
      {
        v39 = v12;
        v12 = v14;
      }
    }
  }

  v41 = sub_2611F02B4();
  sub_2611B8B74(v41, v8);
  v42 = sub_26121CA60();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v8, 1, v42) == 1)
  {

    sub_2611D57E4(v8);
  }

  else
  {
    v44 = sub_26121CA40();
    v45 = sub_26121CFC0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_261197000, v44, v45, "PINData | Failed to decode object", v46, 2u);
      MEMORY[0x2666FCF20](v46, -1, -1);
    }

    (*(v43 + 8))(v8, v42);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id PINData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PINData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t VASProtocol.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611E2150()
{
  result = qword_27FE87AC0;
  if (!qword_27FE87AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87AC0);
  }

  return result;
}

uint64_t VASReadEntry.mobileToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_mobileToken);
  sub_26119EA60(v1, *(v0 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_mobileToken + 8));
  return v1;
}

uint64_t VASReadEntry.customerVASData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_customerVASData);
  sub_26119EA60(v1, *(v0 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_customerVASData + 8));
  return v1;
}

uint64_t VASReadEntry.merchantIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_merchantIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_merchantIdentifier + 8);

  return v1;
}

id VASReadEntry.__allocating_init(customerVASData:mobileToken:merchantIdentifier:resultCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_customerVASData];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v15[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_mobileToken];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &v15[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_merchantIdentifier];
  *v18 = a5;
  *(v18 + 1) = a6;
  *&v15[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_resultCode] = a7;
  v20.receiver = v15;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

id VASReadEntry.init(customerVASData:mobileToken:merchantIdentifier:resultCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_customerVASData];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v7[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_mobileToken];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &v7[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_merchantIdentifier];
  *v18 = a5;
  *(v18 + 1) = a6;
  *&v7[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_resultCode] = a7;
  v20.receiver = v7;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

Swift::Void __swiftcall VASReadEntry.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_customerVASData + 8);
  if (v3 >> 60 != 15)
  {
    v4 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_customerVASData);
    v5 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    sub_26119EA60(v4, v3);
    sub_26119D904(v4, v3);
    v6 = sub_26121C660();
    v7 = [v5 initWithData_];

    sub_26119EF48(v4, v3);
    v8 = v7;
    v9 = sub_26121CC50();
    [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

    sub_26119EF48(v4, v3);
  }

  v10 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_mobileToken + 8);
  if (v10 >> 60 != 15)
  {
    v11 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_mobileToken);
    v12 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    sub_26119EA60(v11, v10);
    sub_26119D904(v11, v10);
    v13 = sub_26121C660();
    v14 = [v12 initWithData_];

    sub_26119EF48(v11, v10);
    v15 = v14;
    v16 = sub_26121CC50();
    [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

    sub_26119EF48(v11, v10);
  }

  v17 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_merchantIdentifier);
  v18 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_merchantIdentifier + 8);
  v19 = sub_26121CC50();
  v20 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

  v21 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_resultCode);
  v22 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeInteger:v21 forKey:v22];
}

id VASReadEntry.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - v7;
  sub_2611AC98C(0, &qword_27FE870A0, 0x277CCACA8);
  v9 = sub_26121D060();
  if (v9)
  {
    v10 = v9;
    v11 = sub_26121CC80();
    v13 = v12;

    sub_2611AC98C(0, &qword_27FE87280, 0x277CBEA90);
    v14 = sub_26121D060();
    if (v14)
    {
      v15 = v14;
      v16 = sub_26121C690();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xF000000000000000;
    }

    v22 = &v2[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_customerVASData];
    *v22 = v16;
    v22[1] = v18;
    v23 = sub_26121D060();
    if (v23)
    {
      v24 = v23;
      v25 = sub_26121C690();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xF000000000000000;
    }

    v28 = &v2[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_mobileToken];
    *v28 = v25;
    v28[1] = v27;
    v29 = &v2[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_merchantIdentifier];
    *v29 = v11;
    v29[1] = v13;
    v30 = sub_26121CC50();
    v31 = [a1 decodeIntegerForKey_];

    *&v2[OBJC_IVAR____TtC19ProximityReaderCore12VASReadEntry_resultCode] = v31;
    v37.receiver = v2;
    v37.super_class = ObjectType;
    v32 = objc_msgSendSuper2(&v37, sel_init);
  }

  else
  {
    v19 = sub_2611F02B4();
    sub_2611B8B74(v19, v8);
    v20 = sub_26121CA60();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v8, 1, v20) == 1)
    {

      sub_2611AC114(v8, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v33 = sub_26121CA40();
      v34 = sub_26121CFC0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_261197000, v33, v34, "VASReadEntry | Failed to decode merchantIdentifier", v35, 2u);
        MEMORY[0x2666FCF20](v35, -1, -1);
      }

      (*(v21 + 8))(v8, v20);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v32;
}

id VASReadEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VASReadEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id VASResultArrayWrapper.__allocating_init(vasEntries:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC19ProximityReaderCore21VASResultArrayWrapper_vasEntries] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id VASResultArrayWrapper.init(vasEntries:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC19ProximityReaderCore21VASResultArrayWrapper_vasEntries] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VASResultArrayWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_2611E2CA8(void *a1)
{
  sub_2611E2D8C(*(v1 + OBJC_IVAR____TtC19ProximityReaderCore21VASResultArrayWrapper_vasEntries));
  v3 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v4 = sub_26121CEB0();

  v5 = [v3 initWithArray_];

  v6 = sub_26121CC50();
  [a1 encodeObject:v5 forKey:v6];
}

char *sub_2611E2D8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26121D2E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2611E3644(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x2666FC380](i, a1);
        type metadata accessor for VASReadEntry();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2611E3644((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2611B69DC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for VASReadEntry();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2611E3644((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2611B69DC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id VASResultArrayWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B00, &qword_2612221F8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2612221E0;
  *(v8 + 32) = sub_2611AC98C(0, &qword_27FE87B08, 0x277CBEB70);
  *(v8 + 40) = type metadata accessor for VASReadEntry();
  sub_26121D070();

  if (v26)
  {
    if (swift_dynamicCast())
    {
      v9 = v24;
      v10 = [v24 array];
      v11 = sub_26121CEC0();

      v12 = sub_2611E3394(v11);

      if (v12)
      {
        *&v2[OBJC_IVAR____TtC19ProximityReaderCore21VASResultArrayWrapper_vasEntries] = v12;
        v13 = type metadata accessor for VASResultArrayWrapper();
        v23.receiver = v2;
        v23.super_class = v13;
        v14 = objc_msgSendSuper2(&v23, sel_init);

        return v14;
      }
    }
  }

  else
  {
    sub_2611AC114(v25, &qword_27FE87B10, &qword_26121F890);
  }

  v16 = sub_2611F02B4();
  sub_2611B8B74(v16, v7);
  v17 = sub_26121CA60();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {

    sub_2611AC114(v7, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v19 = sub_26121CA40();
    v20 = sub_26121CFC0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261197000, v19, v20, "VASResultArrayWrapper | Failed to decode object", v21, 2u);
      MEMORY[0x2666FCF20](v21, -1, -1);
    }

    (*(v18 + 8))(v7, v17);
  }

  type metadata accessor for VASResultArrayWrapper();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2611E3394(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_26121D270();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2611AC930(i, v6);
    type metadata accessor for VASReadEntry();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_26121D240();
    v4 = *(v7 + 16);
    sub_26121D280();
    sub_26121D290();
    sub_26121D250();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

id VASResultArrayWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VASResultArrayWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2611E3644(char *a1, int64_t a2, char a3)
{
  result = sub_2611E3664(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2611E3664(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B18, &qword_261224138);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2611E3798@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2611E399C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ReadFeedbackInternal.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x614365766F6D6572;
      }

      if (a1 == 3)
      {
        return 0x706D6F4364616572;
      }

      return 0x7274655264616572;
    }

    if (!a1)
    {
      return 0x726F467964616572;
    }

    if (a1 == 1)
    {
      return 0x6574654464726163;
    }

LABEL_22:
    result = sub_26121D510();
    __break(1u);
    return result;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0xD000000000000011;
      case 8:
        return 0xD000000000000011;
      case 9:
        return 0xD000000000000016;
    }

    goto LABEL_22;
  }

  if (a1 == 5)
  {
    return 0x636E614364616572;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_2611E399C(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611E39B0()
{
  result = qword_27FE87B20;
  if (!qword_27FE87B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87B20);
  }

  return result;
}

uint64_t sub_2611E3A28()
{
  v1 = 0x796C68746E6F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x796C72616579;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C6B656577;
  }
}

uint64_t sub_2611E3A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2611E7B90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2611E3AA4(uint64_t a1)
{
  v2 = sub_2611E3FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E3AE0(uint64_t a1)
{
  v2 = sub_2611E3FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611E3B1C(uint64_t a1)
{
  v2 = sub_2611E4098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E3B58(uint64_t a1)
{
  v2 = sub_2611E4098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611E3B94(uint64_t a1)
{
  v2 = sub_2611E40EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E3BD0(uint64_t a1)
{
  v2 = sub_2611E40EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611E3C0C(uint64_t a1)
{
  v2 = sub_2611E4044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E3C48(uint64_t a1)
{
  v2 = sub_2611E4044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaymentCycleInternal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B28, &qword_261224230);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B30, &qword_261224238);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B38, &qword_261224240);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B40, &qword_261224248);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611E3FF0();
  sub_26121D600();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_2611E4098();
      v12 = v26;
      sub_26121D410();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_2611E4044();
      v12 = v29;
      sub_26121D410();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_2611E40EC();
    sub_26121D410();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_2611E3FF0()
{
  result = qword_27FE91B30;
  if (!qword_27FE91B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B30);
  }

  return result;
}

unint64_t sub_2611E4044()
{
  result = qword_27FE91B38;
  if (!qword_27FE91B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B38);
  }

  return result;
}

unint64_t sub_2611E4098()
{
  result = qword_27FE91B40;
  if (!qword_27FE91B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B40);
  }

  return result;
}

unint64_t sub_2611E40EC()
{
  result = qword_27FE91B48;
  if (!qword_27FE91B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B48);
  }

  return result;
}

uint64_t PaymentCycleInternal.hashValue.getter()
{
  v1 = *v0;
  sub_26121D5B0();
  MEMORY[0x2666FC740](v1);
  return sub_26121D5D0();
}

uint64_t PaymentCycleInternal.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B48, &qword_261224250);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B50, &qword_261224258);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B58, &qword_261224260);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B60, &unk_261224268);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611E3FF0();
  v18 = v49;
  sub_26121D5F0();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_26121D400();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_2611E4098();
          v33 = v40;
          sub_26121D350();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_2611E4044();
          v37 = v40;
          sub_26121D350();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_2611E40EC();
        v35 = v40;
        sub_26121D350();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  v26 = sub_26121D220();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470) + 48);
  *v28 = &type metadata for PaymentCycleInternal;
  sub_26121D360();
  sub_26121D210();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_2611E47A4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6772616863727573;
    if (v1 != 1)
    {
      v5 = 0x6D6C6C6174736E69;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000016;
    if (v1 == 3)
    {
      v3 = 0x68737265626D656DLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2611E48A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2611E7CA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2611E48D4(uint64_t a1)
{
  v2 = sub_2611E57B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E4910(uint64_t a1)
{
  v2 = sub_2611E57B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611E494C()
{
  v1 = 0x746E756F6D61;
  if (*v0 != 1)
  {
    v1 = 0x73746E656D796170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_2611E4998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2611E7F08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2611E49C0(uint64_t a1)
{
  v2 = sub_2611E59FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E49FC(uint64_t a1)
{
  v2 = sub_2611E59FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611E4A38(uint64_t a1)
{
  v2 = sub_2611E5954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E4A74(uint64_t a1)
{
  v2 = sub_2611E5954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611E4AB0(uint64_t a1)
{
  v2 = sub_2611E58B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E4AEC(uint64_t a1)
{
  v2 = sub_2611E58B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611E4B28(uint64_t a1)
{
  v2 = sub_2611E585C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E4B64(uint64_t a1)
{
  v2 = sub_2611E585C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611E4BA0(uint64_t a1)
{
  v2 = sub_2611E5808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E4BDC(uint64_t a1)
{
  v2 = sub_2611E5808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611E4C18(uint64_t a1)
{
  v2 = sub_2611E5A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E4C54(uint64_t a1)
{
  v2 = sub_2611E5A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611E4C90(uint64_t a1)
{
  v2 = sub_2611E5AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E4CCC(uint64_t a1)
{
  v2 = sub_2611E5AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransactionAmountDescriptionInternal.encode(to:)(void *a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B68, &qword_261224278);
  v61 = *(v62 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v55 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B70, &qword_261224280);
  v58 = *(v59 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B78, &qword_261224288);
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v7);
  v69 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B80, &qword_261224290);
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v66 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B88, &qword_261224298);
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v13);
  v70 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B90, &qword_2612242A0);
  v64 = *(v16 - 8);
  v65 = v16;
  v17 = *(v64 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B98, &qword_2612242A8);
  v63 = *(v20 - 8);
  v21 = *(v63 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87BA0, &qword_2612242B0);
  v78 = *(v80 - 8);
  v24 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v25 = *v1;
  v27 = v1[2];
  v26 = v1[3];
  v76 = v1[1];
  v77 = v27;
  v75 = v26;
  v28 = *(v1 + 32);
  v30 = a1[3];
  v29 = a1[4];
  v31 = a1;
  v33 = &v55 - v32;
  __swift_project_boxed_opaque_existential_1(v31, v30);
  sub_2611E57B4();
  sub_26121D600();
  if (v28 > 2)
  {
    if (v28 == 3)
    {
      LOBYTE(v82) = 3;
      sub_2611E5954();
      v47 = v66;
      v40 = v80;
      sub_26121D410();
      LOBYTE(v82) = v25;
      sub_2611E59A8();
      v48 = v68;
      sub_26121D4A0();
      (*(v67 + 8))(v47, v48);
    }

    else
    {
      v40 = v80;
      if (v28 == 4)
      {
        v42 = v76;
        v41 = v77;
        v43 = v33;
        v44 = HIDWORD(v76);
        v75 = HIWORD(v76);
        LOBYTE(v82) = 4;
        v73 = v76 >> 16;
        v74 = v77 >> 16;
        sub_2611E58B0();
        v45 = v69;
        v56 = v43;
        sub_26121D410();
        v82 = v25;
        LOWORD(v83) = WORD2(v25);
        WORD1(v83) = HIWORD(v25);
        WORD2(v83) = v42;
        HIWORD(v83) = v73;
        LOWORD(v84) = v44;
        WORD1(v84) = v75;
        WORD2(v84) = v41;
        HIWORD(v84) = v74;
        type metadata accessor for Decimal();
        sub_2611E68F8(&qword_27FE87BA8);
        v46 = v72;
        sub_26121D4A0();
        (*(v71 + 8))(v45, v46);
        return (*(v78 + 8))(v56, v80);
      }

      if (v77 | v76 | v25 | v75)
      {
        LOBYTE(v82) = 6;
        sub_2611E5808();
        v53 = v60;
        sub_26121D410();
        (*(v61 + 8))(v53, v62);
      }

      else
      {
        LOBYTE(v82) = 5;
        sub_2611E585C();
        v54 = v57;
        sub_26121D410();
        (*(v58 + 8))(v54, v59);
      }
    }

    return (*(v78 + 8))(v33, v40);
  }

  if (!v28)
  {
    LOBYTE(v82) = 0;
    sub_2611E5AA4();
    v40 = v80;
    sub_26121D410();
    sub_26121D480();
    (*(v63 + 8))(v23, v20);
    return (*(v78 + 8))(v33, v40);
  }

  if (v28 == 1)
  {
    v56 = v33;
    v34 = v76;
    v35 = v77;
    v36 = v76 >> 16;
    v75 = HIWORD(v76);
    LOBYTE(v82) = 1;
    v73 = HIDWORD(v76);
    v74 = v77 >> 16;
    sub_2611E5A50();
    v37 = v80;
    sub_26121D410();
    v82 = v25;
    LOWORD(v83) = WORD2(v25);
    WORD1(v83) = HIWORD(v25);
    WORD2(v83) = v34;
    HIWORD(v83) = v36;
    LOWORD(v84) = v73;
    WORD1(v84) = v75;
    WORD2(v84) = v35;
    HIWORD(v84) = v74;
    type metadata accessor for Decimal();
    sub_2611E68F8(&qword_27FE87BA8);
    v38 = v65;
    sub_26121D4A0();
    (*(v64 + 8))(v19, v38);
    return (*(v78 + 8))(v56, v37);
  }

  else
  {
    LOBYTE(v82) = 2;
    sub_2611E59FC();
    v49 = v70;
    v50 = v80;
    sub_26121D410();
    LOBYTE(v82) = v25;
    v81 = 0;
    sub_2611E59A8();
    v51 = v74;
    v52 = v79;
    sub_26121D4A0();
    if (!v52)
    {
      v82 = HIDWORD(v25);
      v83 = v76;
      v84 = v77;
      v81 = 1;
      type metadata accessor for Decimal();
      sub_2611E68F8(&qword_27FE87BA8);
      sub_26121D4A0();
      LOBYTE(v82) = 2;
      sub_26121D490();
    }

    (*(v73 + 8))(v49, v51);
    return (*(v78 + 8))(v33, v50);
  }
}

unint64_t sub_2611E57B4()
{
  result = qword_27FE91B50;
  if (!qword_27FE91B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B50);
  }

  return result;
}

unint64_t sub_2611E5808()
{
  result = qword_27FE91B58;
  if (!qword_27FE91B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B58);
  }

  return result;
}

unint64_t sub_2611E585C()
{
  result = qword_27FE91B60;
  if (!qword_27FE91B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B60);
  }

  return result;
}

unint64_t sub_2611E58B0()
{
  result = qword_27FE91B68;
  if (!qword_27FE91B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B68);
  }

  return result;
}

void type metadata accessor for Decimal()
{
  if (!qword_27FE87C10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FE87C10);
    }
  }
}

unint64_t sub_2611E5954()
{
  result = qword_27FE91B70;
  if (!qword_27FE91B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B70);
  }

  return result;
}

unint64_t sub_2611E59A8()
{
  result = qword_27FE87BB0;
  if (!qword_27FE87BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87BB0);
  }

  return result;
}

unint64_t sub_2611E59FC()
{
  result = qword_27FE91B78;
  if (!qword_27FE91B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B78);
  }

  return result;
}

unint64_t sub_2611E5A50()
{
  result = qword_27FE91B80;
  if (!qword_27FE91B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE91B80);
  }

  return result;
}

unint64_t sub_2611E5AA4()
{
  result = qword_27FE91B88[0];
  if (!qword_27FE91B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE91B88);
  }

  return result;
}

uint64_t TransactionAmountDescriptionInternal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87BB8, &qword_2612242B8);
  v100 = *(v90 - 8);
  v3 = *(v100 + 64);
  MEMORY[0x28223BE20](v90);
  v99 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87BC0, &qword_2612242C0);
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v5);
  v95 = &v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87BC8, &qword_2612242C8);
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = *(v91 + 64);
  MEMORY[0x28223BE20](v8);
  v96 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87BD0, &qword_2612242D0);
  v12 = *(v11 - 8);
  v86 = v11;
  v87 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v94 = &v78 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87BD8, &qword_2612242D8);
  v93 = *(v83 - 8);
  v15 = *(v93 + 64);
  MEMORY[0x28223BE20](v83);
  v98 = &v78 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87BE0, &qword_2612242E0);
  v84 = *(v85 - 8);
  v17 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v19 = &v78 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87BE8, &qword_2612242E8);
  v82 = *(v20 - 8);
  v21 = *(v82 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v78 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87BF0, &qword_2612242F0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v78 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2611E57B4();
  v31 = v102;
  sub_26121D5F0();
  if (v31)
  {
    goto LABEL_31;
  }

  v79 = v20;
  v32 = v98;
  v33 = v99;
  v80 = 0;
  v34 = v100;
  v81 = v25;
  v102 = v24;
  v35 = sub_26121D400();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 7))
  {
    v42 = sub_26121D220();
    swift_allocError();
    v44 = v43;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470) + 48);
    *v44 = &type metadata for TransactionAmountDescriptionInternal;
    v46 = v102;
    sub_26121D360();
    sub_26121D210();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
    swift_willThrow();
    (*(v81 + 8))(v28, v46);
    goto LABEL_30;
  }

  if (*(v35 + 32) <= 2u)
  {
    if (!*(v35 + 32))
    {
      LOBYTE(v106[0]) = 0;
      sub_2611E5AA4();
      v39 = v102;
      v53 = v80;
      sub_26121D350();
      v41 = v81;
      if (v53)
      {
        goto LABEL_19;
      }

      v65 = v79;
      sub_26121D3D0();
      v67 = v66;
      (*(v82 + 8))(v23, v65);
      (*(v41 + 8))(v28, v39);
      swift_unknownObjectRelease();
      v64 = v101;
      v75 = 0;
      v77 = 0;
      v32 = 0;
      v76 = 0;
      v74 = v67;
      v37 = v97;
LABEL_36:
      *v37 = v74;
      *(v37 + 8) = v75;
      *(v37 + 16) = v77;
      *(v37 + 24) = v32;
      *(v37 + 32) = v76;
      return __swift_destroy_boxed_opaque_existential_1(v64);
    }

    v47 = v81;
    v48 = v102;
    v49 = v80;
    if (v36 != 1)
    {
      v54 = v81;
      LOBYTE(v106[0]) = 2;
      sub_2611E59FC();
      v55 = v32;
      sub_26121D350();
      if (v49)
      {
        (*(v54 + 8))(v28, v48);
        goto LABEL_30;
      }

      LOBYTE(v106[0]) = 0;
      sub_2611E693C();
      v56 = v83;
      sub_26121D3F0();
      v57 = v105;
      type metadata accessor for Decimal();
      v104 = 1;
      sub_2611E68F8(&qword_27FE87BF8);
      sub_26121D3F0();
      v99 = LODWORD(v106[0]);
      v100 = v57;
      v77 = *(&v106[1] + 4);
      v75 = *(v106 + 4);
      v103 = 2;
      v32 = sub_26121D3E0();
      (*(v93 + 8))(v55, v56);
      (*(v81 + 8))(v28, v102);
      swift_unknownObjectRelease();
      v74 = v100 | (v99 << 32);
      v76 = 2;
      goto LABEL_34;
    }

    LOBYTE(v106[0]) = 1;
    sub_2611E5A50();
    sub_26121D350();
    if (!v49)
    {
      type metadata accessor for Decimal();
      sub_2611E68F8(&qword_27FE87BF8);
      v50 = v85;
      sub_26121D3F0();
      (*(v84 + 8))(v19, v50);
      (*(v47 + 8))(v28, v48);
      swift_unknownObjectRelease();
      v74 = v106[0];
      v75 = v106[1];
      v76 = 1;
      v77 = LODWORD(v106[2]);
LABEL_34:
      v64 = v101;
      v37 = v97;
      goto LABEL_36;
    }

    (*(v47 + 8))(v28, v48);
LABEL_30:
    swift_unknownObjectRelease();
LABEL_31:
    v64 = v101;
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v37 = v97;
  if (*(v35 + 32) <= 4u)
  {
    if (v36 == 3)
    {
      LOBYTE(v106[0]) = 3;
      sub_2611E5954();
      v38 = v94;
      v39 = v102;
      v40 = v80;
      sub_26121D350();
      if (v40)
      {
        v41 = v81;
LABEL_19:
        (*(v41 + 8))(v28, v39);
        goto LABEL_30;
      }

      sub_2611E693C();
      v68 = v86;
      sub_26121D3F0();
      (*(v87 + 8))(v38, v68);
      (*(v81 + 8))(v28, v102);
      swift_unknownObjectRelease();
      v75 = 0;
      v77 = 0;
      v32 = 0;
      v74 = LOBYTE(v106[0]);
      v76 = 3;
    }

    else
    {
      LOBYTE(v106[0]) = 4;
      sub_2611E58B0();
      v58 = v96;
      v59 = v102;
      v60 = v80;
      sub_26121D350();
      if (v60)
      {
        (*(v81 + 8))(v28, v59);
        goto LABEL_30;
      }

      type metadata accessor for Decimal();
      v32 = v69;
      sub_2611E68F8(&qword_27FE87BF8);
      v70 = v92;
      sub_26121D3F0();
      v71 = v58;
      v72 = v81;
      (*(v91 + 8))(v71, v70);
      (*(v72 + 8))(v28, v59);
      swift_unknownObjectRelease();
      v74 = v106[0];
      v75 = v106[1];
      v76 = 4;
      v77 = LODWORD(v106[2]);
    }

    goto LABEL_35;
  }

  if (v36 == 5)
  {
    LOBYTE(v106[0]) = 5;
    sub_2611E585C();
    v51 = v95;
    v39 = v102;
    v52 = v80;
    sub_26121D350();
    v41 = v81;
    if (v52)
    {
      goto LABEL_19;
    }

    (*(v88 + 8))(v51, v89);
    (*(v41 + 8))(v28, v39);
    swift_unknownObjectRelease();
    v74 = 0;
    v75 = 0;
    v77 = 0;
    v32 = 0;
    v76 = 5;
LABEL_35:
    v64 = v101;
    goto LABEL_36;
  }

  LOBYTE(v106[0]) = 6;
  sub_2611E5808();
  v61 = v102;
  v62 = v80;
  sub_26121D350();
  v63 = v81;
  if (!v62)
  {
    (*(v34 + 8))(v33, v90);
    (*(v63 + 8))(v28, v61);
    swift_unknownObjectRelease();
    v75 = 0;
    v77 = 0;
    v32 = 0;
    v76 = 5;
    v74 = 1;
    v64 = v101;
    goto LABEL_36;
  }

  (*(v81 + 8))(v28, v61);
  swift_unknownObjectRelease();
  v64 = v101;
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_2611E68F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Decimal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2611E693C()
{
  result = qword_27FE87C00;
  if (!qword_27FE87C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87C00);
  }

  return result;
}

unint64_t TransactionAmountDescriptionInternal.description.getter()
{
  v1 = *(v0 + 32);
  if (v1 <= 2)
  {
    if (!*(v0 + 32))
    {
      v3 = *v0;
      v9[0] = 0;
      v9[1] = 0xE000000000000000;
      sub_26121D1E0();
      MEMORY[0x2666FBF20](0xD000000000000011, 0x800000026122E390);
      sub_26121CF90();
      goto LABEL_10;
    }

    if (v1 != 1)
    {
      v9[0] = 0;
      v9[1] = 0xE000000000000000;
      sub_26121D1E0();
      MEMORY[0x2666FBF20](0xD000000000000013, 0x800000026122E350);
      sub_26121D2D0();
      MEMORY[0x2666FBF20](0x6E756F6D6120202CLL, 0xEB00000000203A74);
      v6 = sub_26121D0A0();
      MEMORY[0x2666FBF20](v6);

      MEMORY[0x2666FBF20](0x6E656D796170202CLL, 0xEC000000203A7374);
      v7 = sub_26121D4C0();
      MEMORY[0x2666FBF20](v7);

      v4 = 10537;
      v5 = 0xE200000000000000;
      goto LABEL_13;
    }

    sub_26121D1E0();

    v9[0] = 0xD000000000000010;
    v9[1] = 0x800000026122E370;
LABEL_8:
    v2 = sub_26121D0A0();
    MEMORY[0x2666FBF20](v2);

LABEL_10:
    v4 = 41;
    v5 = 0xE100000000000000;
LABEL_13:
    MEMORY[0x2666FBF20](v4, v5);
    return v9[0];
  }

  if (v1 == 3)
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_26121D1E0();
    MEMORY[0x2666FBF20](0xD000000000000012, 0x800000026122E330);
    sub_26121D2D0();
    return v9[0];
  }

  if (v1 == 4)
  {
    sub_26121D1E0();

    strcpy(v9, "preAuthAmount(");
    HIBYTE(v9[1]) = -18;
    goto LABEL_8;
  }

  if (v0[2] | v0[1] | *v0 | v0[3])
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_2611E6D14()
{
  result = qword_27FE87C08;
  if (!qword_27FE87C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87C08);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TransactionAmountDescriptionInternal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for TransactionAmountDescriptionInternal(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for TransactionAmountDescriptionInternal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2611E6E3C(uint64_t a1)
{
  if (*(a1 + 32) <= 4u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_2611E6E54(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2611E6E94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2611E6EB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TransactionAmountDescriptionInternal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TransactionAmountDescriptionInternal.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2611E70EC()
{
  result = qword_27FE92310[0];
  if (!qword_27FE92310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE92310);
  }

  return result;
}

unint64_t sub_2611E7144()
{
  result = qword_27FE92720[0];
  if (!qword_27FE92720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE92720);
  }

  return result;
}

unint64_t sub_2611E719C()
{
  result = qword_27FE92930[0];
  if (!qword_27FE92930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE92930);
  }

  return result;
}

unint64_t sub_2611E71F4()
{
  result = qword_27FE92B40[0];
  if (!qword_27FE92B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE92B40);
  }

  return result;
}

unint64_t sub_2611E724C()
{
  result = qword_27FE92D50[0];
  if (!qword_27FE92D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE92D50);
  }

  return result;
}

unint64_t sub_2611E72A4()
{
  result = qword_27FE92F60[0];
  if (!qword_27FE92F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE92F60);
  }

  return result;
}

unint64_t sub_2611E72FC()
{
  result = qword_27FE93170[0];
  if (!qword_27FE93170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93170);
  }

  return result;
}

unint64_t sub_2611E7354()
{
  result = qword_27FE93280;
  if (!qword_27FE93280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE93280);
  }

  return result;
}

unint64_t sub_2611E73AC()
{
  result = qword_27FE93288[0];
  if (!qword_27FE93288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93288);
  }

  return result;
}

unint64_t sub_2611E7404()
{
  result = qword_27FE93310;
  if (!qword_27FE93310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE93310);
  }

  return result;
}

unint64_t sub_2611E745C()
{
  result = qword_27FE93318[0];
  if (!qword_27FE93318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93318);
  }

  return result;
}

unint64_t sub_2611E74B4()
{
  result = qword_27FE933A0;
  if (!qword_27FE933A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE933A0);
  }

  return result;
}

unint64_t sub_2611E750C()
{
  result = qword_27FE933A8[0];
  if (!qword_27FE933A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE933A8);
  }

  return result;
}

unint64_t sub_2611E7564()
{
  result = qword_27FE93430;
  if (!qword_27FE93430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE93430);
  }

  return result;
}

unint64_t sub_2611E75BC()
{
  result = qword_27FE93438[0];
  if (!qword_27FE93438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93438);
  }

  return result;
}

unint64_t sub_2611E7614()
{
  result = qword_27FE934C0;
  if (!qword_27FE934C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE934C0);
  }

  return result;
}

unint64_t sub_2611E766C()
{
  result = qword_27FE934C8[0];
  if (!qword_27FE934C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE934C8);
  }

  return result;
}

unint64_t sub_2611E76C4()
{
  result = qword_27FE93550;
  if (!qword_27FE93550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE93550);
  }

  return result;
}

unint64_t sub_2611E771C()
{
  result = qword_27FE93558[0];
  if (!qword_27FE93558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93558);
  }

  return result;
}

unint64_t sub_2611E7774()
{
  result = qword_27FE935E0;
  if (!qword_27FE935E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE935E0);
  }

  return result;
}

unint64_t sub_2611E77CC()
{
  result = qword_27FE935E8[0];
  if (!qword_27FE935E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE935E8);
  }

  return result;
}

unint64_t sub_2611E7824()
{
  result = qword_27FE93670;
  if (!qword_27FE93670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE93670);
  }

  return result;
}

unint64_t sub_2611E787C()
{
  result = qword_27FE93678;
  if (!qword_27FE93678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE93678);
  }

  return result;
}

unint64_t sub_2611E78D4()
{
  result = qword_27FE93700;
  if (!qword_27FE93700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE93700);
  }

  return result;
}

unint64_t sub_2611E792C()
{
  result = qword_27FE93708[0];
  if (!qword_27FE93708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93708);
  }

  return result;
}

unint64_t sub_2611E7984()
{
  result = qword_27FE93790;
  if (!qword_27FE93790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE93790);
  }

  return result;
}

unint64_t sub_2611E79DC()
{
  result = qword_27FE93798[0];
  if (!qword_27FE93798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93798);
  }

  return result;
}

unint64_t sub_2611E7A34()
{
  result = qword_27FE93820;
  if (!qword_27FE93820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE93820);
  }

  return result;
}

unint64_t sub_2611E7A8C()
{
  result = qword_27FE93828[0];
  if (!qword_27FE93828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93828);
  }

  return result;
}

unint64_t sub_2611E7AE4()
{
  result = qword_27FE938B0;
  if (!qword_27FE938B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE938B0);
  }

  return result;
}

unint64_t sub_2611E7B3C()
{
  result = qword_27FE938B8[0];
  if (!qword_27FE938B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE938B8);
  }

  return result;
}

uint64_t sub_2611E7B90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C6B656577 && a2 == 0xE600000000000000;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C68746E6F6DLL && a2 == 0xE700000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C72616579 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26121D4D0();

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

uint64_t sub_2611E7CA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000026122B570 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6772616863727573 && a2 == 0xEF746E756F6D4165 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6C6C6174736E69 && a2 == 0xEB00000000746E65 || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x68737265626D656DLL && a2 == 0xEA00000000007069 || (sub_26121D4D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026122E3B0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026122E310 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026122E2F0 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_26121D4D0();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2611E7F08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E656D796170 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26121D4D0();

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

uint64_t DiscoveryAnalyticsData.EventType.toAnalyticsEventType.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      v1 = sub_26119A30C();
      goto LABEL_7;
    }

LABEL_6:
    v1 = sub_26119A2B4();
    goto LABEL_7;
  }

  if (!*v0)
  {
    goto LABEL_6;
  }

  v1 = sub_26119A2DC();
LABEL_7:
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

ProximityReaderCore::DiscoveryAnalyticsData::EventType_optional __swiftcall DiscoveryAnalyticsData.EventType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DiscoveryAnalyticsData.locale.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t DiscoveryAnalyticsData.contentId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t DiscoveryAnalyticsData.contentSessionId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t DiscoveryAnalyticsData.contentVersion.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t DiscoveryAnalyticsData.contentRegion.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t DiscoveryAnalyticsData.contentScrollQuantile.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t DiscoveryAnalyticsData.errorType.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t DiscoveryAnalyticsData.encode()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v17 - v3;
  v5 = v0[5];
  v17[4] = v0[4];
  v17[5] = v5;
  v6 = v0[7];
  v17[6] = v0[6];
  v17[7] = v6;
  v7 = v0[1];
  v17[0] = *v0;
  v17[1] = v7;
  v8 = v0[3];
  v17[2] = v0[2];
  v17[3] = v8;
  sub_2611E86FC();
  result = Encodable.toJson()(&type metadata for DiscoveryAnalyticsData);
  if (v10 >> 60 == 15)
  {
    v11 = sub_2611F05F0();
    sub_2611B8B74(v11, v4);
    v12 = sub_26121CA60();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v4, 1, v12) == 1)
    {
      sub_2611AC114(v4, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v14 = sub_26121CA40();
      v15 = sub_26121CFD0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261197000, v14, v15, "DiscoveryAnalyticsData - failed to encode object", v16, 2u);
        MEMORY[0x2666FCF20](v16, -1, -1);
      }

      (*(v13 + 8))(v4, v12);
    }

    return 0;
  }

  return result;
}

unint64_t sub_2611E86FC()
{
  result = qword_27FE87C18;
  if (!qword_27FE87C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87C18);
  }

  return result;
}

Swift::Void __swiftcall DiscoveryAnalyticsData.logEntry()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v114 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v116 = &v110 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v112 = &v110 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v118 = &v110 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v110 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v113 = &v110 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v110 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v117 = &v110 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v110 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v110 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v110 - v26;
  v28 = v0[5];
  v127 = v0[4];
  v128 = v28;
  v29 = v0[7];
  v129 = v0[6];
  v130 = v29;
  v30 = v0[1];
  v123 = *v0;
  v124 = v30;
  v31 = v0[3];
  v125 = v0[2];
  v126 = v31;
  v115 = sub_2611F05F0();
  sub_2611B8B74(v115, v27);
  v32 = sub_26121CA60();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v27, 1, v32);
  v119 = v33 + 48;
  v120 = v13;
  v121 = v34;
  if (v35 == 1)
  {
    sub_2611AC114(v27, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v36 = sub_26121CA40();
    v37 = sub_26121CFD0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_261197000, v36, v37, "*-*-*-* proxreader - DiscoveryAnalyticsData", v38, 2u);
      MEMORY[0x2666FCF20](v38, -1, -1);
    }

    (*(v33 + 8))(v27, v32);
    v13 = v120;
    v34 = v121;
  }

  v39 = v115;
  sub_2611B8B74(v115, v25);
  if (v34(v25, 1, v32) == 1)
  {
    sub_2611AC114(v25, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    sub_2611EA314(&v123, v122);
    v40 = sub_26121CA40();
    v41 = sub_26121CFD0();
    sub_2611EA34C(&v123);
    if (os_log_type_enabled(v40, v41))
    {
      v110 = v33;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v122[0] = v43;
      *v42 = 136315138;
      v44 = 0xEF64656C6C6F7263;
      v45 = 0x53746E65746E6F63;
      v46 = 0xD000000000000010;
      v47 = 0x800000026122B430;
      if (v123 != 2)
      {
        v46 = 0x726F727265;
        v47 = 0xE500000000000000;
      }

      if (!v123)
      {
        v45 = 0xD000000000000010;
        v44 = 0x800000026122B410;
      }

      if (v123 <= 1u)
      {
        v48 = v45;
      }

      else
      {
        v48 = v46;
      }

      if (v123 <= 1u)
      {
        v49 = v44;
      }

      else
      {
        v49 = v47;
      }

      v50 = sub_2611AA228(v48, v49, v122);

      *(v42 + 4) = v50;
      _os_log_impl(&dword_261197000, v40, v41, "            eventType = %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x2666FCF20](v43, -1, -1);
      MEMORY[0x2666FCF20](v42, -1, -1);

      v33 = v110;
      v13 = v120;
    }

    else
    {
    }

    (*(v33 + 8))(v25, v32);
    v39 = v115;
    v34 = v121;
  }

  v51 = v117;
  sub_2611B8B74(v39, v22);
  v52 = v34(v22, 1, v32);
  v53 = v116;
  if (v52 == 1)
  {
    sub_2611AC114(v22, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    sub_2611EA314(&v123, v122);
    v54 = sub_26121CA40();
    v55 = sub_26121CFD0();
    sub_2611EA34C(&v123);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v33;
      v58 = swift_slowAlloc();
      v122[0] = v58;
      *v56 = 136315138;
      *(v56 + 4) = sub_2611AA228(*(&v123 + 1), v124, v122);
      _os_log_impl(&dword_261197000, v54, v55, "               locale = %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      v59 = v58;
      v33 = v57;
      v53 = v116;
      MEMORY[0x2666FCF20](v59, -1, -1);
      MEMORY[0x2666FCF20](v56, -1, -1);
    }

    (*(v33 + 8))(v22, v32);
    v13 = v120;
    v34 = v121;
    v51 = v117;
  }

  sub_2611B8B74(v39, v51);
  v60 = v34(v51, 1, v32);
  v61 = v118;
  if (v60 == 1)
  {
    sub_2611AC114(v51, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    sub_2611EA314(&v123, v122);
    v62 = sub_26121CA40();
    v63 = sub_26121CFD0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 67109120;
      *(v64 + 4) = BYTE1(v123);
      sub_2611EA34C(&v123);
      _os_log_impl(&dword_261197000, v62, v63, "        appIdPresence = %{BOOL}d", v64, 8u);
      v65 = v64;
      v61 = v118;
      MEMORY[0x2666FCF20](v65, -1, -1);
    }

    else
    {
      sub_2611EA34C(&v123);
    }

    v13 = v120;

    (*(v33 + 8))(v117, v32);
    v34 = v121;
  }

  v66 = v111;
  sub_2611B8B74(v39, v111);
  if (v34(v66, 1, v32) == 1)
  {
    sub_2611AC114(v66, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    sub_2611EA314(&v123, v122);
    v67 = sub_26121CA40();
    v68 = sub_26121CFD0();
    sub_2611EA34C(&v123);
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v122[0] = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_2611AA228(*(&v124 + 1), v125, v122);
      _os_log_impl(&dword_261197000, v67, v68, "            contentId = %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x2666FCF20](v70, -1, -1);
      v71 = v69;
      v61 = v118;
      MEMORY[0x2666FCF20](v71, -1, -1);
    }

    v13 = v120;
    (*(v33 + 8))(v66, v32);
    v34 = v121;
    v53 = v116;
  }

  v72 = v113;
  sub_2611B8B74(v39, v113);
  if (v34(v72, 1, v32) == 1)
  {
    sub_2611AC114(v72, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    sub_2611EA314(&v123, v122);
    v73 = sub_26121CA40();
    v74 = sub_26121CFD0();
    sub_2611EA34C(&v123);
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v122[0] = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_2611AA228(*(&v125 + 1), v126, v122);
      _os_log_impl(&dword_261197000, v73, v74, "     contentSessionId = %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x2666FCF20](v76, -1, -1);
      v77 = v75;
      v61 = v118;
      MEMORY[0x2666FCF20](v77, -1, -1);
    }

    v13 = v120;
    (*(v33 + 8))(v113, v32);
    v34 = v121;
  }

  sub_2611B8B74(v39, v13);
  if (v34(v13, 1, v32) == 1)
  {
    sub_2611AC114(v13, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    sub_2611EA314(&v123, v122);
    v78 = sub_26121CA40();
    v79 = sub_26121CFD0();
    sub_2611EA34C(&v123);
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v122[0] = v81;
      *v80 = 136315138;
      *(v80 + 4) = sub_2611AA228(*(&v126 + 1), v127, v122);
      _os_log_impl(&dword_261197000, v78, v79, "       contentVersion = %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x2666FCF20](v81, -1, -1);
      v82 = v80;
      v61 = v118;
      MEMORY[0x2666FCF20](v82, -1, -1);
    }

    (*(v33 + 8))(v120, v32);
    v34 = v121;
  }

  sub_2611B8B74(v39, v61);
  if (v34(v61, 1, v32) == 1)
  {
    sub_2611AC114(v61, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    sub_2611EA314(&v123, v122);
    v83 = sub_26121CA40();
    v84 = sub_26121CFD0();
    sub_2611EA34C(&v123);
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v122[0] = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_2611AA228(*(&v127 + 1), v128, v122);
      _os_log_impl(&dword_261197000, v83, v84, "        contentRegion = %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x2666FCF20](v86, -1, -1);
      v87 = v85;
      v61 = v118;
      MEMORY[0x2666FCF20](v87, -1, -1);
    }

    (*(v33 + 8))(v61, v32);
    v34 = v121;
  }

  v88 = BYTE8(v128);
  v89 = v112;
  if (BYTE8(v128) != 2)
  {
    sub_2611B8B74(v39, v112);
    if (v34(v89, 1, v32) == 1)
    {
      sub_2611AC114(v89, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v90 = sub_26121CA40();
      v91 = sub_26121CFD0();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 67109120;
        *(v92 + 4) = v88 & 1;
        _os_log_impl(&dword_261197000, v90, v91, "    contentScrollable = %{BOOL}d", v92, 8u);
        MEMORY[0x2666FCF20](v92, -1, -1);
      }

      (*(v33 + 8))(v112, v32);
      v34 = v121;
    }
  }

  v93 = *(&v129 + 1);
  if (!*(&v129 + 1))
  {
LABEL_62:
    v95 = *(&v130 + 1);
    if (!*(&v130 + 1))
    {
      return;
    }

    goto LABEL_67;
  }

  v94 = v129;
  sub_2611B8B74(v39, v53);
  if (v34(v53, 1, v32) == 1)
  {
    sub_2611AC114(v53, &qword_27FE87700, &unk_2612203D0);
    goto LABEL_62;
  }

  v96 = v33;

  v97 = sub_26121CA40();
  v98 = sub_26121CFD0();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v122[0] = v100;
    *v99 = 136315138;
    *(v99 + 4) = sub_2611AA228(v94, v93, v122);
    _os_log_impl(&dword_261197000, v97, v98, "contentScrollQuantile = %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    v101 = v100;
    v53 = v116;
    MEMORY[0x2666FCF20](v101, -1, -1);
    MEMORY[0x2666FCF20](v99, -1, -1);
  }

  v33 = v96;
  (*(v96 + 8))(v53, v32);
  v39 = v115;
  v34 = v121;
  v95 = *(&v130 + 1);
  if (*(&v130 + 1))
  {
LABEL_67:
    v102 = v130;
    v103 = v114;
    sub_2611B8B74(v39, v114);
    if (v34(v103, 1, v32) == 1)
    {
      sub_2611AC114(v114, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {

      v104 = sub_26121CA40();
      v105 = sub_26121CFD0();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = v33;
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v122[0] = v108;
        *v107 = 136315138;
        *(v107 + 4) = sub_2611AA228(v102, v95, v122);
        _os_log_impl(&dword_261197000, v104, v105, "         errorType = %s", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v108);
        MEMORY[0x2666FCF20](v108, -1, -1);
        v109 = v107;
        v33 = v106;
        MEMORY[0x2666FCF20](v109, -1, -1);
      }

      (*(v33 + 8))(v114, v32);
    }
  }
}

unint64_t sub_2611E9744(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    if (a1 != 8)
    {
      v5 = 0x707954726F727265;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0x56746E65746E6F63;
    if (a1 != 5)
    {
      v6 = 0x52746E65746E6F63;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x707954746E657665;
    v2 = 0x656C61636F6CLL;
    v3 = 0x49746E65746E6F63;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6572506449707061;
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

uint64_t sub_2611E98B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2611EA814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2611E98EC(uint64_t a1)
{
  v2 = sub_2611EA37C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611E9928(uint64_t a1)
{
  v2 = sub_2611EA37C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryAnalyticsData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87C20, &qword_261225090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = *v1;
  v33 = v1[1];
  v9 = *(v1 + 1);
  v31 = *(v1 + 2);
  v32 = v9;
  v10 = *(v1 + 3);
  v29 = *(v1 + 4);
  v30 = v10;
  v11 = *(v1 + 5);
  v12 = *(v1 + 6);
  v13 = *(v1 + 7);
  v25 = *(v1 + 8);
  v26 = v12;
  v14 = *(v1 + 10);
  v22 = *(v1 + 9);
  v23 = v14;
  v24 = v13;
  v21 = v1[88];
  v15 = *(v1 + 13);
  v20[1] = *(v1 + 12);
  v20[2] = v15;
  v16 = *(v1 + 15);
  v27 = *(v1 + 14);
  v28 = v11;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611EA37C();
  sub_26121D600();
  v45 = v8;
  v44 = 0;
  sub_2611EA3D0();
  v18 = v34;
  sub_26121D4A0();
  if (v18)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v34 = v16;
  v43 = 1;
  sub_26121D470();
  v42 = 2;
  sub_26121D460();
  v41 = 3;
  sub_26121D460();
  v40 = 4;
  sub_26121D460();
  v39 = 5;
  sub_26121D460();
  v38 = 6;
  sub_26121D460();
  v37 = 7;
  sub_26121D430();
  v36 = 8;
  sub_26121D420();
  v35 = 9;
  sub_26121D420();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DiscoveryAnalyticsData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87C30, &qword_261225098);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  v8 = &v34 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611EA37C();
  sub_26121D5F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  LOBYTE(v51) = 0;
  sub_2611EA424();
  sub_26121D3F0();
  v11 = v59[0];
  v59[0] = 1;
  v49 = sub_26121D3C0();
  v75 = v11;
  v59[0] = 2;
  v12 = sub_26121D3B0();
  v48 = v13;
  v59[0] = 3;
  v14 = sub_26121D3B0();
  v47 = v15;
  v42 = v14;
  v59[0] = 4;
  v46 = 0;
  v41 = sub_26121D3B0();
  v45 = v16;
  v59[0] = 5;
  v40 = sub_26121D3B0();
  v44 = v17;
  v59[0] = 6;
  v39 = sub_26121D3B0();
  v43 = v18;
  v59[0] = 7;
  v37 = sub_26121D380();
  v59[0] = 8;
  v36 = sub_26121D370();
  v38 = v19;
  v76 = 9;
  v46 = sub_26121D370();
  v21 = v20;
  v49 &= 1u;
  v22 = v49;
  (*(v10 + 8))(v8, v50);
  LOBYTE(v51) = v75;
  BYTE1(v51) = v22;
  v35 = v12;
  v23 = v47;
  *(&v51 + 1) = v12;
  *&v52 = v48;
  *(&v52 + 1) = v42;
  *&v53 = v47;
  v25 = v44;
  v24 = v45;
  *(&v53 + 1) = v41;
  *&v54 = v45;
  *(&v54 + 1) = v40;
  *&v55 = v44;
  *(&v55 + 1) = v39;
  *&v56 = v43;
  BYTE8(v56) = v37;
  *&v57 = v36;
  *(&v57 + 1) = v38;
  v26 = v46;
  *&v58 = v46;
  *(&v58 + 1) = v21;
  v27 = v51;
  v28 = v52;
  v29 = v54;
  a2[2] = v53;
  a2[3] = v29;
  *a2 = v27;
  a2[1] = v28;
  v30 = v55;
  v31 = v56;
  v32 = v58;
  a2[6] = v57;
  a2[7] = v32;
  a2[4] = v30;
  a2[5] = v31;
  sub_2611EA314(&v51, v59);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v59[0] = v75;
  v59[1] = v49;
  v60 = v35;
  v61 = v48;
  v62 = v42;
  v63 = v23;
  v64 = v41;
  v65 = v24;
  v66 = v40;
  v67 = v25;
  v68 = v39;
  v69 = v43;
  v70 = v37;
  v71 = v36;
  v72 = v38;
  v73 = v26;
  v74 = v21;
  return sub_2611EA34C(v59);
}

unint64_t DiscoveryAnalyticsData.EventType.description.getter()
{
  v1 = 0x53746E65746E6F63;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
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

unint64_t sub_2611EA288()
{
  v1 = 0x53746E65746E6F63;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
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

unint64_t sub_2611EA37C()
{
  result = qword_27FE93940[0];
  if (!qword_27FE93940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93940);
  }

  return result;
}

unint64_t sub_2611EA3D0()
{
  result = qword_27FE87C28;
  if (!qword_27FE87C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87C28);
  }

  return result;
}

unint64_t sub_2611EA424()
{
  result = qword_27FE87C38;
  if (!qword_27FE87C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87C38);
  }

  return result;
}

unint64_t sub_2611EA47C()
{
  result = qword_27FE87C40;
  if (!qword_27FE87C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87C40);
  }

  return result;
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

uint64_t sub_2611EA4F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2611EA53C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DiscoveryAnalyticsData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiscoveryAnalyticsData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2611EA710()
{
  result = qword_27FE93E50[0];
  if (!qword_27FE93E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93E50);
  }

  return result;
}

unint64_t sub_2611EA768()
{
  result = qword_27FE93F60;
  if (!qword_27FE93F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE93F60);
  }

  return result;
}

unint64_t sub_2611EA7C0()
{
  result = qword_27FE93F68[0];
  if (!qword_27FE93F68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE93F68);
  }

  return result;
}

uint64_t sub_2611EA814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572506449707061 && a2 == 0xED000065636E6573 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000064 || (sub_26121D4D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026122E3D0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x56746E65746E6F63 && a2 == 0xEE006E6F69737265 || (sub_26121D4D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED00006E6F696765 || (sub_26121D4D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026122B2D0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026122B2F0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x707954726F727265 && a2 == 0xE900000000000065)
  {

    return 9;
  }

  else
  {
    v6 = sub_26121D4D0();

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

unint64_t sub_2611EAB60()
{
  result = qword_27FE87C48;
  if (!qword_27FE87C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87C48);
  }

  return result;
}

uint64_t AlertDialogBuilder.__allocating_init(timeout:flags:title:defaultButtonLabel:defaultAction:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  *(v12 + 32) = a7;
  *(v12 + 40) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87C50, &qword_2612253E0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_2612221E0;
  v14 = *MEMORY[0x277CBF188];
  if (*MEMORY[0x277CBF188])
  {
    v15 = result;
    *(result + 32) = v14;
    v16 = v14;
    v17 = sub_2611EAFCC(a7);
    v18 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v17);
    v20 = v19;
    v21._countAndFlagsBits = sub_2611AE074();
    v23 = v22;
    v24._countAndFlagsBits = v18;
    v24._object = v20;
    v21._object = v23;
    v25 = String.localized(table:comment:)(v24, v21);

    v26 = MEMORY[0x277D837D0];
    *(v15 + 64) = MEMORY[0x277D837D0];
    *(v15 + 40) = v25;
    if (*MEMORY[0x277CBF1E8])
    {
      v27 = *MEMORY[0x277CBF1E8];

      *(v15 + 72) = v27;
      v29 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v28);
      v31 = v30;
      v32._countAndFlagsBits = sub_2611AE074();
      v34 = v33;
      v35._countAndFlagsBits = v29;
      v35._object = v31;
      v32._object = v34;
      v36 = String.localized(table:comment:)(v35, v32);

      *(v15 + 104) = v26;
      *(v15 + 80) = v36;
      v37 = sub_2611ED9E4(v15);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87C58, &unk_2612253E8);
      swift_arrayDestroy();
      sub_2611CE920(a7);
      *(v12 + 48) = v37;
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AlertDialogBuilder.init(timeout:flags:title:defaultButtonLabel:defaultAction:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87C50, &qword_2612253E0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_2612221E0;
  v11 = *MEMORY[0x277CBF188];
  if (*MEMORY[0x277CBF188])
  {
    v12 = result;
    *(result + 32) = v11;
    v13 = v11;
    v14 = sub_2611EAFCC(a7);
    v15 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v14);
    v17 = v16;
    v18._countAndFlagsBits = sub_2611AE074();
    v20 = v19;
    v21._countAndFlagsBits = v15;
    v21._object = v17;
    v18._object = v20;
    v22 = String.localized(table:comment:)(v21, v18);

    v23 = MEMORY[0x277D837D0];
    *(v12 + 64) = MEMORY[0x277D837D0];
    *(v12 + 40) = v22;
    if (*MEMORY[0x277CBF1E8])
    {
      v24 = *MEMORY[0x277CBF1E8];

      *(v12 + 72) = v24;
      v26 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v25);
      v28 = v27;
      v29._countAndFlagsBits = sub_2611AE074();
      v31 = v30;
      v32._countAndFlagsBits = v26;
      v32._object = v28;
      v29._object = v31;
      v33 = String.localized(table:comment:)(v32, v29);

      *(v12 + 104) = v23;
      *(v12 + 80) = v33;
      v34 = sub_2611ED9E4(v12);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87C58, &unk_2612253E8);
      swift_arrayDestroy();
      sub_2611CE920(a7);
      *(v8 + 48) = v34;
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2611EAFCC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void AlertDialogBuilder.addMessage(_:)()
{
  if (*MEMORY[0x277CBF198])
  {
    v0 = *MEMORY[0x277CBF198];
    v1 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v0);
    v3 = v2;
    v4._countAndFlagsBits = sub_2611AE074();
    v6 = v5;
    v7._countAndFlagsBits = v1;
    v7._object = v3;
    v4._object = v6;
    v8 = String.localized(table:comment:)(v7, v4);

    v10 = MEMORY[0x277D837D0];
    v9 = v8;
    swift_beginAccess();
    sub_2611EB0CC(&v9, v0);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_2611EB0CC(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_2611B69DC(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_2611ED6BC(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_2611AC114(a1, &qword_27FE87B10, &qword_26121F890);
    sub_2611ED16C(a2, v7);

    sub_2611AC114(v7, &qword_27FE87B10, &qword_26121F890);
  }
}

void AlertDialogBuilder.addAlternateButton(label:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*MEMORY[0x277CBF1C0])
  {
    v5 = v4;
    v8 = *MEMORY[0x277CBF1C0];
    v9 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v8);
    v11 = v10;
    v12._countAndFlagsBits = sub_2611AE074();
    v14 = v13;
    v15._countAndFlagsBits = v9;
    v15._object = v11;
    v12._object = v14;
    v16 = String.localized(table:comment:)(v15, v12);

    v20 = MEMORY[0x277D837D0];
    v19 = v16;
    swift_beginAccess();
    sub_2611EB0CC(&v19, v8);
    swift_endAccess();
    v17 = *(v4 + 56);
    v18 = *(v5 + 64);
    *(v5 + 56) = a3;
    *(v5 + 64) = a4;
    sub_2611EAFCC(a3);
    sub_2611CE920(v17);
  }

  else
  {
    __break(1u);
  }
}

void AlertDialogBuilder.addOtherButton(label:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*MEMORY[0x277CBF218])
  {
    v5 = v4;
    v8 = *MEMORY[0x277CBF218];
    v9 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v8);
    v11 = v10;
    v12._countAndFlagsBits = sub_2611AE074();
    v14 = v13;
    v15._countAndFlagsBits = v9;
    v15._object = v11;
    v12._object = v14;
    v16 = String.localized(table:comment:)(v15, v12);

    v20 = MEMORY[0x277D837D0];
    v19 = v16;
    swift_beginAccess();
    sub_2611EB0CC(&v19, v8);
    swift_endAccess();
    v17 = *(v4 + 72);
    v18 = *(v5 + 80);
    *(v5 + 72) = a3;
    *(v5 + 80) = a4;
    sub_2611EAFCC(a3);
    sub_2611CE920(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2611EB3E4(uint64_t result, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    v4 = sub_26121C5F0();
    v6[3] = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
    swift_beginAccess();
    sub_2611EB0CC(v6, v2);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AlertDialogBuilder.dismissOnLock()()
{
  v0 = *MEMORY[0x277D67320];
  if (*MEMORY[0x277D67320])
  {
    v2 = MEMORY[0x277D839B0];
    v1[0] = 1;
    swift_beginAccess();
    sub_2611EB0CC(v1, v0);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t AlertDialogBuilder.onCancel(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  sub_2611CE920(v5);
}

uint64_t AlertDialogBuilder.build()()
{
  v1 = v0[2];
  v15 = v0[3];
  swift_beginAccess();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[12];
  type metadata accessor for AlertDialog();
  v11 = swift_allocObject();
  *(v11 + 96) = v10;
  *(v11 + 104) = 0;
  *(v11 + 16) = v1;
  *(v11 + 24) = v15;
  *(v11 + 32) = v4;
  *&v12 = v2;
  *(&v12 + 1) = v3;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  *(v11 + 56) = v13;
  *(v11 + 40) = v12;
  *(v11 + 72) = v7;
  *(v11 + 80) = v8;
  *(v11 + 88) = v9;

  sub_2611EAFCC(v2);
  sub_2611EAFCC(v5);
  sub_2611EAFCC(v7);
  sub_2611EAFCC(v9);
  return v11;
}

uint64_t AlertDialog.__allocating_init(timeout:flags:content:defaultAction:alternateAction:otherAction:cancelAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  result = swift_allocObject();
  *(result + 96) = a11;
  *(result + 104) = 0;
  *(result + 16) = a9;
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = a5;
  *(result + 64) = a6;
  *(result + 72) = a7;
  *(result + 80) = a8;
  *(result + 88) = a10;
  return result;
}

uint64_t *AlertDialogBuilder.deinit()
{
  v1 = v0[5];
  sub_2611CE920(v0[4]);
  v2 = v0[6];

  v3 = v0[8];
  sub_2611CE920(v0[7]);
  v4 = v0[10];
  sub_2611CE920(v0[9]);
  v5 = v0[12];
  sub_2611CE920(v0[11]);
  return v0;
}

uint64_t AlertDialogBuilder.__deallocating_deinit()
{
  v1 = v0[5];
  sub_2611CE920(v0[4]);
  v2 = v0[6];

  v3 = v0[8];
  sub_2611CE920(v0[7]);
  v4 = v0[10];
  sub_2611CE920(v0[9]);
  v5 = v0[12];
  sub_2611CE920(v0[11]);

  return swift_deallocClassInstance();
}

uint64_t AlertDialog.init(timeout:flags:content:defaultAction:alternateAction:otherAction:cancelAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 96) = a11;
  *(v11 + 104) = 0;
  *(v11 + 16) = a9;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5;
  *(v11 + 64) = a6;
  *(v11 + 72) = a7;
  *(v11 + 80) = a8;
  *(v11 + 88) = a10;
  return v11;
}

Swift::Void __swiftcall AlertDialog.show()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_26121CF50();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  v7 = sub_2611EC844(0, 0, v4, &unk_261225400, v6);
  v8 = *(v0 + 104);
  *(v0 + 104) = v7;
}

uint64_t sub_2611EB8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611EB98C, 0, 0);
}

uint64_t sub_2611EB98C()
{
  v1 = v0[5];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  v4 = *MEMORY[0x277CBED08];
  v5 = v1[2];
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  type metadata accessor for CFString(0);
  sub_2611CF480(&qword_27FE876B0);
  v8 = sub_26121CB80();
  v9 = CFUserNotificationCreate(v4, v5, v6, (v2 + 16), v8);
  v0[8] = v9;

  if (!v9)
  {
    goto LABEL_4;
  }

  if (*v3)
  {

LABEL_4:
    v10 = v0[6];
    v11 = sub_2611F04C0();
    sub_2611ABE1C(v11, v10, &qword_27FE87700, &unk_2612203D0);
    v12 = sub_26121CA60();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      sub_2611AC114(v0[6], &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v14 = v0[6];
      v15 = sub_26121CA40();
      v16 = sub_26121CFC0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        swift_beginAccess();
        *(v17 + 4) = *v3;
        _os_log_impl(&dword_261197000, v15, v16, "Failed to present alert. Error: %d", v17, 8u);
        MEMORY[0x2666FCF20](v17, -1, -1);
      }

      (*(v13 + 8))(v0[6], v12);
    }

    v18 = v0[5];
    v19 = *(v18 + 104);
    *(v18 + 104) = 0;

    v20 = v0[6];

    v21 = v0[1];

    return v21();
  }

  v23 = v0[5];
  v24 = swift_task_alloc();
  v0[9] = v24;
  v24[2] = v2;
  v24[3] = v9;
  v24[4] = v23;
  v25 = swift_task_alloc();
  v0[10] = v25;
  *(v25 + 16) = v9;
  v26 = *(MEMORY[0x277D85A10] + 4);
  v27 = swift_task_alloc();
  v0[11] = v27;
  *v27 = v0;
  v27[1] = sub_2611EBD08;

  return MEMORY[0x282200830]();
}

uint64_t sub_2611EBD08()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2611EBE84, 0, 0);
  }
}

uint64_t sub_2611EBE84()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(v0 + 48);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2611EBF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2611EBFD0, 0, 0);
}

uint64_t sub_2611EBFD0()
{
  v19 = *MEMORY[0x277D85DE8];
  *(v0 + 64) = 0;
  v1 = *(v0 + 72);
  v2 = CFUserNotificationReceiveResponse(*(v0 + 80), *(*(v0 + 88) + 16), (v0 + 64));
  swift_beginAccess();
  *(v1 + 16) = v2;
  if (v2)
  {
    v3 = *(v0 + 96);
    v4 = sub_2611F04C0();
    sub_2611ABE1C(v4, v3, &qword_27FE87700, &unk_2612203D0);
    v5 = sub_26121CA60();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v3, 1, v5) == 1)
    {
      sub_2611AC114(*(v0 + 96), &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v8 = *(v0 + 72);

      v9 = sub_26121CA40();
      v10 = sub_26121CFC0();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 72);
      if (v11)
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        swift_beginAccess();
        *(v13 + 4) = *(v12 + 16);

        _os_log_impl(&dword_261197000, v9, v10, "Failed to receive response from alert. Error: %d", v13, 8u);
        MEMORY[0x2666FCF20](v13, -1, -1);
      }

      else
      {
        v14 = *(v0 + 72);
      }

      (*(v6 + 8))(*(v0 + 96), v5);
    }
  }

  else
  {
    v7 = *(v0 + 88);
    sub_2611EC230(*(v0 + 64));
  }

  v15 = *(v0 + 96);

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_2611EC230(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v51 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  result = sub_26121CF80();
  if (result)
  {
    return result;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v17 = v1[9];
      if (v17)
      {
        v28 = v1[10];
        goto LABEL_18;
      }

      v42 = sub_2611F04C0();
      sub_2611ABE1C(v42, v13, &qword_27FE87700, &unk_2612203D0);
      v43 = sub_26121CA60();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v13, 1, v43) == 1)
      {
        v25 = v13;
        return sub_2611AC114(v25, &qword_27FE87700, &unk_2612203D0);
      }

      v48 = sub_26121CA40();
      v49 = sub_26121CFB0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_261197000, v48, v49, "No other button handler", v50, 2u);
        MEMORY[0x2666FCF20](v50, -1, -1);
      }

      return (*(v44 + 8))(v13, v43);
    }

    if (a1 == 3)
    {
      v19 = sub_2611F04C0();
      sub_2611ABE1C(v19, v10, &qword_27FE87700, &unk_2612203D0);
      v20 = sub_26121CA60();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v10, 1, v20) == 1)
      {
        result = sub_2611AC114(v10, &qword_27FE87700, &unk_2612203D0);
      }

      else
      {
        v33 = v1;
        v34 = sub_26121CA40();
        v35 = sub_26121CFB0();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_261197000, v34, v35, "The alert was cancelled", v36, 2u);
          MEMORY[0x2666FCF20](v36, -1, -1);
        }

        result = (*(v21 + 8))(v10, v20);
        v1 = v33;
      }

      v37 = v1[11];
      if (v37)
      {
        v38 = v1[12];
        return v37(result);
      }

      return result;
    }
  }

  else
  {
    if (!a1)
    {
      v26 = v1[5];
      if (v26)
      {
        v27 = v1[6];
        return v26();
      }

      return result;
    }

    if (a1 == 1)
    {
      v17 = v1[7];
      if (v17)
      {
        v18 = v1[8];
LABEL_18:

        v17(v29);

        return sub_2611CE920(v17);
      }

      v39 = sub_2611F04C0();
      sub_2611ABE1C(v39, v15, &qword_27FE87700, &unk_2612203D0);
      v40 = sub_26121CA60();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v15, 1, v40) == 1)
      {
        v25 = v15;
        return sub_2611AC114(v25, &qword_27FE87700, &unk_2612203D0);
      }

      v45 = sub_26121CA40();
      v46 = sub_26121CFB0();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_261197000, v45, v46, "No alternate button handler", v47, 2u);
        MEMORY[0x2666FCF20](v47, -1, -1);
      }

      return (*(v41 + 8))(v15, v40);
    }
  }

  v22 = sub_2611F04C0();
  sub_2611ABE1C(v22, v7, &qword_27FE87700, &unk_2612203D0);
  v23 = sub_26121CA60();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {
    v25 = v7;
    return sub_2611AC114(v25, &qword_27FE87700, &unk_2612203D0);
  }

  v30 = sub_26121CA40();
  v31 = sub_26121CFC0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_261197000, v30, v31, "Unexpected response received from alert", v32, 2u);
    MEMORY[0x2666FCF20](v32, -1, -1);
  }

  return (*(v24 + 8))(v7, v23);
}

uint64_t sub_2611EC844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2611ABE1C(a3, v27 - v11, &qword_27FE87798, &qword_261222430);
  v13 = sub_26121CF50();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2611AC114(v12, &qword_27FE87798, &qword_261222430);
  }

  else
  {
    sub_26121CF40();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26121CF10();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26121CD20() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2611AC114(a3, &qword_27FE87798, &qword_261222430);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2611AC114(a3, &qword_27FE87798, &qword_261222430);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

Swift::Void __swiftcall AlertDialog.cancel()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  if (v0[13])
  {
    v5 = v0[13];

    v6 = sub_2611F04C0();
    sub_2611ABE1C(v6, v4, &qword_27FE87700, &unk_2612203D0);
    v7 = sub_26121CA60();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_2611AC114(v4, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v9 = v0;
      v10 = sub_26121CA40();
      v11 = sub_26121CFB0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_261197000, v10, v11, "Canceling alert", v12, 2u);
        MEMORY[0x2666FCF20](v12, -1, -1);
      }

      (*(v8 + 8))(v4, v7);
      v0 = v9;
    }

    v13 = sub_26121CF60();
    v14 = v0[11];
    if (v14)
    {
      v15 = v0[12];
      v14(v13);
    }
  }
}

void *AlertDialog.deinit()
{
  v1 = v0[4];

  v2 = v0[6];
  sub_2611CE920(v0[5]);
  v3 = v0[8];
  sub_2611CE920(v0[7]);
  v4 = v0[10];
  sub_2611CE920(v0[9]);
  v5 = v0[12];
  sub_2611CE920(v0[11]);
  v6 = v0[13];

  return v0;
}

uint64_t AlertDialog.__deallocating_deinit()
{
  v1 = v0[4];

  v2 = v0[6];
  sub_2611CE920(v0[5]);
  v3 = v0[8];
  sub_2611CE920(v0[7]);
  v4 = v0[10];
  sub_2611CE920(v0[9]);
  v5 = v0[12];
  sub_2611CE920(v0[11]);
  v6 = v0[13];

  return swift_deallocClassInstance();
}