unint64_t sub_275A86838(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_275A868D0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_275A86944(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_275A868D0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_275A86470(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_275A86944(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_275AE5A34();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_275A86A68()
{
  v0 = [objc_opt_self() currentThread];
  v1 = [v0 threadDictionary];

  *&v7[0] = 0x79654B676F6C73;
  *(&v7[0] + 1) = 0xE700000000000000;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_275AE59A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_275A87758(v7);
    return 0;
  }
}

uint64_t sub_275A86BA8()
{
  v0 = [objc_opt_self() currentThread];
  v1 = [v0 threadDictionary];

  strcpy(&v5, "threadNameKey");
  HIWORD(v5) = -4864;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_275AE59A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_275A87758(v7);
  }

  return 0;
}

char *sub_275A86CEC(uint64_t a1, unint64_t a2)
{

  v5 = sub_275A85E70(0x7FFFFFFFFFFFFFFFuLL, 1, a1, a2, v4);
  v72 = 0;
  v73 = 0xE000000000000000;
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 56);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(v7 - 3);
      v10 = *(v7 - 2);
      v12 = *(v7 - 1);
      v11 = *v7;
      v13 = v72;
      v14 = v73;

      v15 = sub_275AE5754();
      v16 = sub_275AE5974();
      if (__OFADD__(v15, v16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if ((v15 + v16) >= 901)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_275A86364(0, *(v8 + 2) + 1, 1, v8);
        }

        v17 = v8;
        v18 = *(v8 + 2);
        v19 = v17;
        v20 = *(v17 + 3);
        v15 = v18 + 1;
        if (v18 >= v20 >> 1)
        {
          v19 = sub_275A86364((v20 > 1), v18 + 1, 1, v19);
        }

        *(v19 + 2) = v15;
        v21 = &v19[16 * v18];
        v8 = v19;
        *(v21 + 4) = v13;
        *(v21 + 5) = v14;
        v72 = 0;
        v73 = 0xE000000000000000;
      }

      if (sub_275A864EC(42, 0xE100000000000000, v9, v10))
      {
        MEMORY[0x277C86E00](10, 0xE100000000000000);
      }

      v70 = 0;
      v71 = 0xE000000000000000;
      v22 = sub_275AE5754();
      v23 = sub_275AE5974();
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_43;
      }

      MEMORY[0x277C86DA0](v25);
      v69[2] = v12;
      v69[3] = v11;
      sub_275A7A85C();
      sub_275AE5774();
      v69[0] = 10;
      v69[1] = 0xE100000000000000;
      sub_275AE5774();

      MEMORY[0x277C86E00](v70, v71);

      v7 += 4;
      --v6;
    }

    while (v6);

    v14 = v72;
    v15 = v73;
  }

  else
  {

    v14 = 0;
    v8 = MEMORY[0x277D84F90];
    v15 = 0xE000000000000000;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v26 = v8;
    v27 = *(v8 + 2);
    v68 = v26;
    v28 = *(v26 + 3);
    if (v27 >= v28 >> 1)
    {
      v68 = sub_275A86364((v28 > 1), v27 + 1, 1, v68);
    }

    *(v68 + 2) = v27 + 1;
    v29 = &v68[16 * v27];
    v8 = v68;
    *(v29 + 4) = v14;
    *(v29 + 5) = v15;
    v30 = sub_275A8665C(0x98967FuLL);
    v31 = *(v68 + 2);
    v32 = 10;
    if (v31 < 0xA)
    {
      v32 = *(v68 + 2);
    }

    v66 = *(v68 + 2);
    v67 = v30;
    if (!v31)
    {
      break;
    }

    v65 = v32;
    v15 = 0;
    v33 = (v68 + 40);
    v14 = MEMORY[0x277D84F90];
    while (v15 < *(v8 + 2))
    {
      v34 = *(v33 - 1);
      v35 = *v33;
      if (v15 == 9)
      {

        sub_275AE5A14();

        strcpy(v69, "SUMMARY LOG (");
        HIWORD(v69[1]) = -4864;
        v49 = sub_275AE5A94();
        MEMORY[0x277C86E00](v49);

        MEMORY[0x277C86E00](47, 0xE100000000000000);
        v70 = v65;
        v50 = sub_275AE5A94();
        MEMORY[0x277C86E00](v50);

        MEMORY[0x277C86E00](0x20726F662029, 0xE600000000000000);
        v51 = sub_275A86BA8();
        MEMORY[0x277C86E00](v51);

        MEMORY[0x277C86E00](58, 0xE100000000000000);

        MEMORY[0x277C86E00](0x2A2A2A2A2A2A2A0ALL, 0xEB000000000A2A2ALL);

        MEMORY[0x277C86E00](v34, v35);

        v52 = *(v8 + 2);

        sub_275AE5A14();
        if (v52 < 0xB)
        {
          v54 = sub_275AE5A94();
          v56 = v55;

          MEMORY[0x277C86E00](47, 0xE100000000000000);
          v57 = sub_275AE5A94();
          MEMORY[0x277C86E00](v57);

          MEMORY[0x277C86E00](0x3A444955202D2029, 0xE900000000000020);
          v58 = sub_275AE5A94();
          MEMORY[0x277C86E00](v58);

          MEMORY[0x277C86E00](0xA2A2A2A20, 0xE500000000000000);
          v70 = 0xD000000000000011;
          v71 = 0x8000000275AF0C10;
          MEMORY[0x277C86E00](v54, v56);
        }

        else
        {

          v70 = 0xD00000000000002ALL;
          v71 = 0x8000000275AF0C30;
          v53 = sub_275AE5A94();
          MEMORY[0x277C86E00](v53);

          MEMORY[0x277C86E00](10, 0xE100000000000000);
        }

        MEMORY[0x277C86E00](v70, v71);

        v59 = v69[0];
        v60 = v69[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_275A86364(0, *(v14 + 2) + 1, 1, v14);
        }

        v62 = *(v14 + 2);
        v61 = *(v14 + 3);
        if (v62 >= v61 >> 1)
        {
          v14 = sub_275A86364((v61 > 1), v62 + 1, 1, v14);
        }

        *(v14 + 2) = v62 + 1;
        v63 = &v14[16 * v62];
        *(v63 + 4) = v59;
        *(v63 + 5) = v60;
        return v14;
      }

      ++v15;

      sub_275AE5A14();

      strcpy(v69, "SUMMARY LOG (");
      HIWORD(v69[1]) = -4864;
      v36 = sub_275AE5A94();
      MEMORY[0x277C86E00](v36);

      MEMORY[0x277C86E00](47, 0xE100000000000000);
      v37 = sub_275AE5A94();
      MEMORY[0x277C86E00](v37);

      MEMORY[0x277C86E00](0x20726F662029, 0xE600000000000000);
      v38 = sub_275A86BA8();
      MEMORY[0x277C86E00](v38);

      MEMORY[0x277C86E00](58, 0xE100000000000000);

      MEMORY[0x277C86E00](0x2A2A2A2A2A2A2A0ALL, 0xEB000000000A2A2ALL);

      MEMORY[0x277C86E00](v34, v35);

      MEMORY[0x277C86E00](0xD000000000000011, 0x8000000275AF0C10);

      v39 = v69[1];
      sub_275AE5A14();
      v40 = sub_275AE5A94();
      v42 = v41;

      MEMORY[0x277C86E00](47, 0xE100000000000000);
      v43 = sub_275AE5A94();
      MEMORY[0x277C86E00](v43);

      MEMORY[0x277C86E00](0x3A444955202D2029, 0xE900000000000020);
      v70 = v67;
      v44 = sub_275AE5A94();
      MEMORY[0x277C86E00](v44);

      MEMORY[0x277C86E00](0xA2A2A2A20, 0xE500000000000000);

      MEMORY[0x277C86E00](v40, v42);

      v45 = v69[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_275A86364(0, *(v14 + 2) + 1, 1, v14);
      }

      v47 = *(v14 + 2);
      v46 = *(v14 + 3);
      if (v47 >= v46 >> 1)
      {
        v14 = sub_275A86364((v46 > 1), v47 + 1, 1, v14);
      }

      *(v14 + 2) = v47 + 1;
      v48 = &v14[16 * v47];
      *(v48 + 4) = v45;
      *(v48 + 5) = v39;
      v33 += 2;
      v8 = v68;
      if (v66 == v15)
      {
        goto LABEL_32;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v8 = sub_275A86364(0, *(v8 + 2) + 1, 1, v8);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_32:

  return v14;
}

uint64_t sub_275A87758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C18, "։");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static Stopwatch.start()()
{
  type metadata accessor for Stopwatch();
  swift_allocObject();
  sub_275A87818();
}

void sub_275A87818()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v1 timeIntervalSince1970];
  v3 = v2;

  v4 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    *(v0 + 16) = v4;
    return;
  }

LABEL_7:
  __break(1u);
}

void Stopwatch.elapsed()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v1 timeIntervalSince1970];
  v3 = v2;

  v4 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v4, *(v0 + 16)))
  {
LABEL_9:
    __break(1u);
  }
}

Swift::String __swiftcall SubscriptionClientRequest.OneOf_Type.toString()()
{
  v1 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  sub_275A87AB0(v0, &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_275AE56E4();
  v6 = v5;
  sub_275A87B14(40, 0xE100000000000000, v4, v5);
  if ((v7 & 1) == 0)
  {
    v8 = sub_275AE5824();
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v4 = MEMORY[0x277C86D90](v8, v10, v12, v14);
    v6 = v15;
  }

  v16 = v4;
  v17 = v6;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_275A87AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_275A87B14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_275AE5804() != a1 || v9 != a2)
  {
    v10 = sub_275AE5AC4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_275AE5764();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t SubscriptionClientRequest.requestType.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  sub_275A880D4(v0, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_275A88144(v4);
    v15[0] = 0x284E574F4E4B4E55;
    v15[1] = 0xE800000000000000;
    type metadata accessor for SubscriptionClientRequest(0);
    sub_275A881AC();
    v13 = sub_275AE5464();
    MEMORY[0x277C86E00](v13);

    MEMORY[0x277C86E00](41, 0xE100000000000000);
    return v15[0];
  }

  else
  {
    sub_275A88204(v4, v12);
    sub_275A87AB0(v12, v10);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0x726566664F77656ELL;
        break;
      case 2u:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0x7365727574616566;
        break;
      case 3u:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0x6574617453746567;
        break;
      case 4u:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 1635017060;
        break;
      case 5u:
      case 7u:
      case 0xDu:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0xD000000000000013;
        break;
      case 6u:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0x6341696C43746573;
        break;
      case 8u:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0x7974697669746361;
        break;
      case 9u:
      case 0xCu:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0x7974697669746361;
        break;
      case 0xAu:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0x656D6F6942746567;
        break;
      case 0xBu:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0xD000000000000016;
        break;
      case 0xEu:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0xD000000000000010;
        break;
      case 0xFu:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0xD000000000000015;
        break;
      case 0x10u:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 0xD000000000000011;
        break;
      default:
        sub_275A88268(v12);
        sub_275A88268(v10);
        result = 1735289200;
        break;
    }
  }

  return result;
}

uint64_t sub_275A880D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A88144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275A881AC()
{
  result = qword_281411C70[0];
  if (!qword_281411C70[0])
  {
    type metadata accessor for SubscriptionClientRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281411C70);
  }

  return result;
}

uint64_t sub_275A88204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A88268(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DaemonDelayedOfferXpcCallContext.isFailsafe.setter(char a1)
{
  result = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*FetchOffersContext.action.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for FetchOffersContext(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_275A883DC;
}

double FetchOffersContext.mlServerScore.getter()
{
  v1 = v0 + *(type metadata accessor for FetchOffersContext(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t FetchOffersContext.mlServerScore.setter(double a1)
{
  result = type metadata accessor for FetchOffersContext(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*FetchOffersContext.mlServerScore.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for FetchOffersContext(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_275A57784;
}

Swift::Void __swiftcall FetchOffersContext.clearMlServerScore()()
{
  v1 = v0 + *(type metadata accessor for FetchOffersContext(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t FetchOffersContext.litmusInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  OffersContext = type metadata accessor for FetchOffersContext(0);
  sub_275A5F510(v1 + *(OffersContext + 28), v6, &qword_280A24650, &qword_275AEAC50);
  v8 = type metadata accessor for LitmusInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A88D48(v6, a1, type metadata accessor for LitmusInfo);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 256;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24650, &qword_275AEAC50);
  }

  return result;
}

uint64_t FetchOffersContext.litmusInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchOffersContext(0) + 28);
  sub_275A5FE04(v1 + v3, &qword_280A24650, &qword_275AEAC50);
  sub_275A88D48(a1, v1 + v3, type metadata accessor for LitmusInfo);
  v4 = type metadata accessor for LitmusInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchOffersContext.litmusInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for LitmusInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FetchOffersContext(0) + 28);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24650, &qword_275AEAC50);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 256;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24650, &qword_275AEAC50);
    }
  }

  else
  {
    sub_275A88D48(v8, v14, type metadata accessor for LitmusInfo);
  }

  return sub_275A88A0C;
}

uint64_t FetchOffersContext.maxDelayInSecs.setter(uint64_t a1)
{
  result = type metadata accessor for FetchOffersContext(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*FetchOffersContext.maxDelayInSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for FetchOffersContext(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall FetchOffersContext.clearMaxDelayInSecs()()
{
  v1 = v0 + *(type metadata accessor for FetchOffersContext(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t FetchOffersContext.quotaServerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  OffersContext = type metadata accessor for FetchOffersContext(0);
  sub_275A5F510(v1 + *(OffersContext + 36), v6, &qword_280A24658, &unk_275AE7960);
  v8 = type metadata accessor for QuotaServerState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A88D48(v6, a1, type metadata accessor for QuotaServerState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24658, &unk_275AE7960);
  }

  return result;
}

uint64_t sub_275A88D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FetchOffersContext.quotaServerState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchOffersContext(0) + 36);
  sub_275A5FE04(v1 + v3, &qword_280A24658, &unk_275AE7960);
  sub_275A88D48(a1, v1 + v3, type metadata accessor for QuotaServerState);
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchOffersContext.quotaServerState.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FetchOffersContext(0) + 36);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24658, &unk_275AE7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
    }
  }

  else
  {
    sub_275A88D48(v8, v14, type metadata accessor for QuotaServerState);
  }

  return sub_275A890A4;
}

uint64_t sub_275A890CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275A89134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL FetchOffersContext.hasQuotaServerState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  OffersContext = type metadata accessor for FetchOffersContext(0);
  sub_275A5F510(v0 + *(OffersContext + 36), v4, &qword_280A24658, &unk_275AE7960);
  v6 = type metadata accessor for QuotaServerState(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_275A5FE04(v4, &qword_280A24658, &unk_275AE7960);
  return v7;
}

Swift::Void __swiftcall FetchOffersContext.clearQuotaServerState()()
{
  v1 = *(type metadata accessor for FetchOffersContext(0) + 36);
  sub_275A5FE04(v0 + v1, &qword_280A24658, &unk_275AE7960);
  v2 = type metadata accessor for QuotaServerState(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_275A89360(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A8EA24();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t FetchOffersContext.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  OffersContext = type metadata accessor for FetchOffersContext(0);
  v3 = a1 + OffersContext[5];
  *v3 = 0;
  *(v3 + 8) = 256;
  v4 = a1 + OffersContext[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OffersContext[7];
  v6 = type metadata accessor for LitmusInfo(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = a1 + OffersContext[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OffersContext[9];
  v9 = type metadata accessor for QuotaServerState(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t static FetchOffersContext.Action.allCases.setter(void *a1)
{
  swift_beginAccess();
  static FetchOffersContext.Action.allCases = a1;
}

uint64_t sub_275A895AC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static FetchOffersContext.Action.allCases;
}

uint64_t sub_275A89614(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[8];
  if (v2[9])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_275A89694(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v5 = a2 & 1;
  result = a3(0);
  v7 = v3 + *(result + 20);
  *v7 = a1;
  *(v7 + 8) = v5;
  *(v7 + 9) = 0;
  return result;
}

uint64_t (*RefreshDetailsContext.action.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for RefreshDetailsContext(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_275A8EA78;
}

uint64_t sub_275A897A0(uint64_t (*a1)(void))
{
  result = a1(0);
  v3 = v1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 256;
  return result;
}

uint64_t RefreshDetailsContext.wasSubscriptionDaemonCalled.setter(char a1)
{
  result = type metadata accessor for RefreshDetailsContext(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*RefreshDetailsContext.wasSubscriptionDaemonCalled.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RefreshDetailsContext(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A6072C;
}

uint64_t RefreshDetailsContext.quotaServerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  sub_275A5F510(v1 + *(refreshed + 28), v6, &qword_280A24658, &unk_275AE7960);
  v8 = type metadata accessor for QuotaServerState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A88D48(v6, a1, type metadata accessor for QuotaServerState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24658, &unk_275AE7960);
  }

  return result;
}

uint64_t RefreshDetailsContext.quotaServerState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RefreshDetailsContext(0) + 28);
  sub_275A5FE04(v1 + v3, &qword_280A24658, &unk_275AE7960);
  sub_275A88D48(a1, v1 + v3, type metadata accessor for QuotaServerState);
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RefreshDetailsContext.quotaServerState.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for RefreshDetailsContext(0) + 28);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24658, &unk_275AE7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
    }
  }

  else
  {
    sub_275A88D48(v8, v14, type metadata accessor for QuotaServerState);
  }

  return sub_275A8EA7C;
}

BOOL sub_275A89D94(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_275A5F510(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_275A5FE04(v12, a1, a2);
  return v15;
}

uint64_t sub_275A89ECC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_275A5FE04(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_275A89F90(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t RefreshDetailsContext.expectedCallbackTsSecs.setter(uint64_t a1)
{
  result = type metadata accessor for RefreshDetailsContext(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*RefreshDetailsContext.expectedCallbackTsSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for RefreshDetailsContext(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall RefreshDetailsContext.clearExpectedCallbackTsSecs()()
{
  v1 = v0 + *(type metadata accessor for RefreshDetailsContext(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t RefreshDetailsContext.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v3 = a1 + refreshed[5];
  *v3 = 0;
  *(v3 + 8) = 256;
  *(a1 + refreshed[6]) = 2;
  v4 = refreshed[7];
  v5 = type metadata accessor for QuotaServerState(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = a1 + refreshed[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t DaemonDelayedOfferXpcCallContext.refreshDetailsContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  sub_275A5F510(v1 + *(v7 + 20), v6, &qword_280A24C30, &qword_275AE9508);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v9 = *(*(refreshed - 1) + 48);
  if (v9(v6, 1, refreshed) != 1)
  {
    return sub_275A88D48(v6, a1, type metadata accessor for RefreshDetailsContext);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = a1 + refreshed[5];
  *v10 = 0;
  *(v10 + 8) = 256;
  *(a1 + refreshed[6]) = 2;
  v11 = refreshed[7];
  v12 = type metadata accessor for QuotaServerState(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + refreshed[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v9)(v6, 1, refreshed);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24C30, &qword_275AE9508);
  }

  return result;
}

uint64_t DaemonDelayedOfferXpcCallContext.refreshDetailsContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DaemonDelayedOfferXpcCallContext(0) + 20);
  sub_275A5FE04(v1 + v3, &qword_280A24C30, &qword_275AE9508);
  sub_275A88D48(a1, v1 + v3, type metadata accessor for RefreshDetailsContext);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v5 = *(*(refreshed - 8) + 56);

  return v5(v1 + v3, 0, 1, refreshed);
}

void (*DaemonDelayedOfferXpcCallContext.refreshDetailsContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v5[2] = refreshed;
  v10 = *(refreshed - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for DaemonDelayedOfferXpcCallContext(0) + 20);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24C30, &qword_275AE9508);
  v16 = *(v11 + 48);
  if (v16(v8, 1, refreshed) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v14 + refreshed[5];
    *v17 = 0;
    *(v17 + 8) = 256;
    *(v14 + refreshed[6]) = 2;
    v18 = refreshed[7];
    v19 = type metadata accessor for QuotaServerState(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    v20 = v14 + refreshed[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v16(v8, 1, refreshed) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24C30, &qword_275AE9508);
    }
  }

  else
  {
    sub_275A88D48(v8, v14, type metadata accessor for RefreshDetailsContext);
  }

  return sub_275A8A6AC;
}

void sub_275A8A6D4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_275A890CC(v11, v10, a5);
    sub_275A5FE04(v14 + v9, a3, a4);
    sub_275A88D48(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_275A89134(v11, a5);
  }

  else
  {
    sub_275A5FE04(v14 + v9, a3, a4);
    sub_275A88D48(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL DaemonDelayedOfferXpcCallContext.hasRefreshDetailsContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  sub_275A5F510(v0 + *(v5 + 20), v4, &qword_280A24C30, &qword_275AE9508);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v7 = (*(*(refreshed - 8) + 48))(v4, 1, refreshed) != 1;
  sub_275A5FE04(v4, &qword_280A24C30, &qword_275AE9508);
  return v7;
}

Swift::Void __swiftcall DaemonDelayedOfferXpcCallContext.clearRefreshDetailsContext()()
{
  v1 = *(type metadata accessor for DaemonDelayedOfferXpcCallContext(0) + 20);
  sub_275A5FE04(v0 + v1, &qword_280A24C30, &qword_275AE9508);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v3 = *(*(refreshed - 8) + 56);

  v3(v0 + v1, 1, 1, refreshed);
}

uint64_t (*DaemonDelayedOfferXpcCallContext.isFailsafe.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for DaemonDelayedOfferXpcCallContext(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t DaemonDelayedOfferXpcCallContext.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  v3 = *(v2 + 20);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  result = (*(*(refreshed - 8) + 56))(a1 + v3, 1, 1, refreshed);
  *(a1 + *(v2 + 24)) = 2;
  return result;
}

uint64_t sub_275A8AB34()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static FetchOffersContext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FetchOffersContext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE9490;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mlServerScore";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "litmusInfo";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "maxDelayInSecs";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "quotaServerState";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t FetchOffersContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_275AE5344();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_275A8C014(a1, v5, a2, a3, type metadata accessor for FetchOffersContext, sub_275A8EA24);
        }

        else if (result == 2)
        {
          v11 = *(type metadata accessor for FetchOffersContext(0) + 24);
          sub_275AE53D4();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_275A8AF80();
            break;
          case 4:
            v12 = *(type metadata accessor for FetchOffersContext(0) + 32);
            sub_275AE53B4();
            break;
          case 5:
            sub_275A8B034();
            break;
        }
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t sub_275A8AF80()
{
  v0 = *(type metadata accessor for FetchOffersContext(0) + 28);
  type metadata accessor for LitmusInfo(0);
  sub_275A8E104(&qword_280A245F0, type metadata accessor for LitmusInfo);
  return sub_275AE5404();
}

uint64_t sub_275A8B034()
{
  v0 = *(type metadata accessor for FetchOffersContext(0) + 36);
  type metadata accessor for QuotaServerState(0);
  sub_275A8E104(&qword_280A24608, type metadata accessor for QuotaServerState);
  return sub_275AE5404();
}

uint64_t FetchOffersContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A8C248(v3, a1, a2, a3, type metadata accessor for FetchOffersContext, sub_275A8EA24);
  if (!v4)
  {
    sub_275A8B1E4(v3);
    sub_275A8B25C(v3, a1, a2, a3);
    sub_275A8C514(v3, a1, a2, a3, type metadata accessor for FetchOffersContext);
    sub_275A8B46C(v3, a1, a2, a3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A8B1E4(uint64_t a1)
{
  result = type metadata accessor for FetchOffersContext(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A8B25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for LitmusInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OffersContext = type metadata accessor for FetchOffersContext(0);
  sub_275A5F510(a1 + *(OffersContext + 28), v8, &qword_280A24650, &qword_275AEAC50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24650, &qword_275AEAC50);
  }

  sub_275A88D48(v8, v13, type metadata accessor for LitmusInfo);
  sub_275A8E104(&qword_280A245F0, type metadata accessor for LitmusInfo);
  sub_275AE5534();
  return sub_275A89134(v13, type metadata accessor for LitmusInfo);
}

uint64_t sub_275A8B46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OffersContext = type metadata accessor for FetchOffersContext(0);
  sub_275A5F510(a1 + *(OffersContext + 36), v8, &qword_280A24658, &unk_275AE7960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
  }

  sub_275A88D48(v8, v13, type metadata accessor for QuotaServerState);
  sub_275A8E104(&qword_280A24608, type metadata accessor for QuotaServerState);
  sub_275AE5534();
  return sub_275A89134(v13, type metadata accessor for QuotaServerState);
}

uint64_t sub_275A8B6C8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 256;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[7];
  v8 = type metadata accessor for LitmusInfo(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  v10 = a1[9];
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = type metadata accessor for QuotaServerState(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v10, 1, 1, v12);
}

uint64_t sub_275A8B808(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A8E104(&qword_280A24CE0, type metadata accessor for FetchOffersContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A8B8A8()
{
  sub_275A8E104(&qword_280A24C80, type metadata accessor for FetchOffersContext);

  return sub_275AE5464();
}

uint64_t sub_275A8B914()
{
  sub_275A8E104(&qword_280A24C80, type metadata accessor for FetchOffersContext);

  return sub_275AE5474();
}

uint64_t sub_275A8B994()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static FetchOffersContext.Action._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FetchOffersContext.Action._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DO_NOT_CALL_ML_DAEMON";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "CALL_ML_DAEMON";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275A8BC38()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static RefreshDetailsContext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static RefreshDetailsContext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7230;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wasSubscriptionDaemonCalled";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "quotaServerState";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expectedCallbackTsSecs";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t RefreshDetailsContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_275AE5344();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_275A8C09C();
        }

        else if (result == 4)
        {
          v12 = *(type metadata accessor for RefreshDetailsContext(0) + 32);
          sub_275AE53B4();
        }
      }

      else if (result == 1)
      {
        sub_275A8C014(a1, v5, a2, a3, type metadata accessor for RefreshDetailsContext, sub_275A56C9C);
      }

      else if (result == 2)
      {
        v11 = *(type metadata accessor for RefreshDetailsContext(0) + 24);
        sub_275AE5364();
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t sub_275A8C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v7 = *(a5(0) + 20);
  a6();
  return sub_275AE5374();
}

uint64_t sub_275A8C09C()
{
  v0 = *(type metadata accessor for RefreshDetailsContext(0) + 28);
  type metadata accessor for QuotaServerState(0);
  sub_275A8E104(&qword_280A24608, type metadata accessor for QuotaServerState);
  return sub_275AE5404();
}

uint64_t RefreshDetailsContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A8C248(v3, a1, a2, a3, type metadata accessor for RefreshDetailsContext, sub_275A56C9C);
  if (!v4)
  {
    sub_275A8CE84(v3, a1, a2, a3, type metadata accessor for RefreshDetailsContext);
    sub_275A8C304(v3, a1, a2, a3);
    sub_275A8C514(v3, a1, a2, a3, type metadata accessor for RefreshDetailsContext);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A8C248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t))
{
  result = a5(0);
  v10 = (a1 + *(result + 20));
  if ((*(v10 + 9) & 1) == 0)
  {
    v11 = *v10;
    v12 = v10[1] & 1;
    a6(result, v9);
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275A8C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  sub_275A5F510(a1 + *(refreshed + 28), v8, &qword_280A24658, &unk_275AE7960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
  }

  sub_275A88D48(v8, v13, type metadata accessor for QuotaServerState);
  sub_275A8E104(&qword_280A24608, type metadata accessor for QuotaServerState);
  sub_275AE5534();
  return sub_275A89134(v13, type metadata accessor for QuotaServerState);
}

uint64_t sub_275A8C514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A8C5DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 256;
  *(a2 + v4) = 2;
  v6 = a1[7];
  v7 = type metadata accessor for QuotaServerState(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a2 + a1[8];
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_275A8C6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A8E104(&qword_280A24CD8, type metadata accessor for RefreshDetailsContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A8C76C()
{
  sub_275A8E104(&qword_280A24C98, type metadata accessor for RefreshDetailsContext);

  return sub_275AE5464();
}

uint64_t sub_275A8C7D8()
{
  sub_275A8E104(&qword_280A24C98, type metadata accessor for RefreshDetailsContext);

  return sub_275AE5474();
}

uint64_t sub_275A8C880()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static DaemonDelayedOfferXpcCallContext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DaemonDelayedOfferXpcCallContext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "refreshDetailsContext";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isFailsafe";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t DaemonDelayedOfferXpcCallContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_275A8CB3C();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for DaemonDelayedOfferXpcCallContext(0) + 24);
      sub_275AE5364();
    }
  }

  return result;
}

uint64_t sub_275A8CB3C()
{
  v0 = *(type metadata accessor for DaemonDelayedOfferXpcCallContext(0) + 20);
  type metadata accessor for RefreshDetailsContext(0);
  sub_275A8E104(&qword_280A24C98, type metadata accessor for RefreshDetailsContext);
  return sub_275AE5404();
}

uint64_t DaemonDelayedOfferXpcCallContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A8CC74(v3, a1, a2, a3);
  if (!v4)
  {
    sub_275A8CE84(v3, a1, a2, a3, type metadata accessor for DaemonDelayedOfferXpcCallContext);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A8CC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v10 = *(refreshed - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](refreshed);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  sub_275A5F510(a1 + *(v14 + 20), v8, &qword_280A24C30, &qword_275AE9508);
  if ((*(v10 + 48))(v8, 1, refreshed) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24C30, &qword_275AE9508);
  }

  sub_275A88D48(v8, v13, type metadata accessor for RefreshDetailsContext);
  sub_275A8E104(&qword_280A24C98, type metadata accessor for RefreshDetailsContext);
  sub_275AE5534();
  return sub_275A89134(v13, type metadata accessor for RefreshDetailsContext);
}

uint64_t sub_275A8CE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275A8CF4C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_275AE5B54();
  a1(0);
  sub_275A8E104(a2, a3);
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A8CFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = *(a1 + 20);
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  result = (*(*(refreshed - 8) + 56))(a2 + v4, 1, 1, refreshed);
  *(a2 + *(a1 + 24)) = 2;
  return result;
}

uint64_t sub_275A8D0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A8E104(&qword_280A24CD0, type metadata accessor for DaemonDelayedOfferXpcCallContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A8D140()
{
  sub_275A8E104(qword_281410460, type metadata accessor for DaemonDelayedOfferXpcCallContext);

  return sub_275AE5464();
}

uint64_t sub_275A8D1AC()
{
  sub_275A8E104(qword_281410460, type metadata accessor for DaemonDelayedOfferXpcCallContext);

  return sub_275AE5474();
}

uint64_t _s31iCloudSubscriptionOptimizerCore32DaemonDelayedOfferXpcCallContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v5 = *(refreshed - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](refreshed);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF0, &qword_275AE9AA8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v29 = type metadata accessor for DaemonDelayedOfferXpcCallContext(0);
  v30 = a1;
  v17 = *(v29 + 20);
  v18 = *(v13 + 56);
  sub_275A5F510(a1 + v17, v16, &qword_280A24C30, &qword_275AE9508);
  sub_275A5F510(a2 + v17, &v16[v18], &qword_280A24C30, &qword_275AE9508);
  v19 = *(v5 + 48);
  if (v19(v16, 1, refreshed) == 1)
  {
    if (v19(&v16[v18], 1, refreshed) == 1)
    {
      sub_275A5FE04(v16, &qword_280A24C30, &qword_275AE9508);
      goto LABEL_8;
    }
  }

  else
  {
    sub_275A5F510(v16, v11, &qword_280A24C30, &qword_275AE9508);
    if (v19(&v16[v18], 1, refreshed) != 1)
    {
      v21 = v28;
      sub_275A88D48(&v16[v18], v28, type metadata accessor for RefreshDetailsContext);
      v22 = _s31iCloudSubscriptionOptimizerCore21RefreshDetailsContextV2eeoiySbAC_ACtFZ_0(v11, v21);
      sub_275A89134(v21, type metadata accessor for RefreshDetailsContext);
      sub_275A89134(v11, type metadata accessor for RefreshDetailsContext);
      sub_275A5FE04(v16, &qword_280A24C30, &qword_275AE9508);
      if ((v22 & 1) == 0)
      {
LABEL_13:
        v20 = 0;
        return v20 & 1;
      }

LABEL_8:
      v23 = *(v29 + 24);
      v24 = *(v30 + v23);
      v25 = *(a2 + v23);
      if (v24 == 2)
      {
        if (v25 == 2)
        {
LABEL_14:
          sub_275AE52A4();
          sub_275A8E104(&qword_280A24638, MEMORY[0x277D216C8]);
          v20 = sub_275AE5664();
          return v20 & 1;
        }
      }

      else if (v25 != 2 && ((v24 ^ v25) & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    sub_275A89134(v11, type metadata accessor for RefreshDetailsContext);
  }

  sub_275A5FE04(v16, &qword_280A24CF0, &qword_275AE9AA8);
  v20 = 0;
  return v20 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore21RefreshDetailsContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F0, qword_275AE7E10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  refreshed = type metadata accessor for RefreshDetailsContext(0);
  v18 = refreshed[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 9);
  v21 = a2 + v18;
  v22 = *(a2 + v18 + 9);
  if (v20)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v22)
    {
      goto LABEL_23;
    }

    v26 = *v19;
    v27 = *v21;
    if (*(v21 + 8))
    {
      if (v27 <= 2)
      {
        if (v27)
        {
          if (v27 == 1)
          {
            if (v26 != 1)
            {
              goto LABEL_23;
            }
          }

          else if (v26 != 2)
          {
            goto LABEL_23;
          }
        }

        else if (v26)
        {
          goto LABEL_23;
        }
      }

      else if (v27 > 4)
      {
        if (v27 == 5)
        {
          if (v26 != 5)
          {
            goto LABEL_23;
          }
        }

        else if (v26 != 6)
        {
          goto LABEL_23;
        }
      }

      else if (v27 == 3)
      {
        if (v26 != 3)
        {
          goto LABEL_23;
        }
      }

      else if (v26 != 4)
      {
        goto LABEL_23;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_23;
    }
  }

  v23 = refreshed[6];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      goto LABEL_23;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    goto LABEL_23;
  }

  v42 = refreshed;
  v28 = refreshed[7];
  v29 = *(v13 + 48);
  sub_275A5F510(a1 + v28, v16, &qword_280A24658, &unk_275AE7960);
  v30 = a2 + v28;
  v31 = v29;
  sub_275A5F510(v30, &v16[v29], &qword_280A24658, &unk_275AE7960);
  v32 = *(v5 + 48);
  if (v32(v16, 1, v4) == 1)
  {
    if (v32(&v16[v31], 1, v4) == 1)
    {
      sub_275A5FE04(v16, &qword_280A24658, &unk_275AE7960);
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  sub_275A5F510(v16, v12, &qword_280A24658, &unk_275AE7960);
  if (v32(&v16[v31], 1, v4) == 1)
  {
    sub_275A89134(v12, type metadata accessor for QuotaServerState);
LABEL_22:
    sub_275A5FE04(v16, &qword_280A246F0, qword_275AE7E10);
    goto LABEL_23;
  }

  sub_275A88D48(&v16[v31], v8, type metadata accessor for QuotaServerState);
  v35 = static QuotaServerState.== infix(_:_:)(v12, v8);
  sub_275A89134(v8, type metadata accessor for QuotaServerState);
  sub_275A89134(v12, type metadata accessor for QuotaServerState);
  sub_275A5FE04(v16, &qword_280A24658, &unk_275AE7960);
  if (v35)
  {
LABEL_33:
    v36 = v42[8];
    v37 = (a1 + v36);
    v38 = *(a1 + v36 + 8);
    v39 = (a2 + v36);
    v40 = *(a2 + v36 + 8);
    if (v38)
    {
      if (!v40)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (*v37 != *v39)
      {
        LOBYTE(v40) = 1;
      }

      if (v40)
      {
        goto LABEL_23;
      }
    }

    sub_275AE52A4();
    sub_275A8E104(&qword_280A24638, MEMORY[0x277D216C8]);
    v33 = sub_275AE5664();
    return v33 & 1;
  }

LABEL_23:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore18FetchOffersContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotaServerState(0);
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F0, qword_275AE7E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v71 = &v65 - v13;
  v14 = type metadata accessor for LitmusInfo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F8, &qword_275AEEB30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v65 - v25;
  OffersContext = type metadata accessor for FetchOffersContext(0);
  v28 = OffersContext[5];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 9);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 9);
  if (v30)
  {
    if ((v32 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v32)
    {
      goto LABEL_24;
    }

    v38 = *v29;
    v39 = *v31;
    if (v31[1])
    {
      if (v39)
      {
        if (v39 == 1)
        {
          if (v38 != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v38 != 2)
        {
          goto LABEL_24;
        }
      }

      else if (v38)
      {
        goto LABEL_24;
      }
    }

    else if (v38 != v39)
    {
      goto LABEL_24;
    }
  }

  v33 = OffersContext[6];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      goto LABEL_24;
    }
  }

  v65 = v7;
  v67 = OffersContext;
  v68 = a2;
  v40 = OffersContext[7];
  v41 = *(v23 + 48);
  v66 = a1;
  sub_275A5F510(a1 + v40, v26, &qword_280A24650, &qword_275AEAC50);
  v42 = v68 + v40;
  v43 = v68;
  sub_275A5F510(v42, &v26[v41], &qword_280A24650, &qword_275AEAC50);
  v44 = *(v15 + 48);
  if (v44(v26, 1, v14) != 1)
  {
    sub_275A5F510(v26, v22, &qword_280A24650, &qword_275AEAC50);
    if (v44(&v26[v41], 1, v14) != 1)
    {
      sub_275A88D48(&v26[v41], v18, type metadata accessor for LitmusInfo);
      v50 = static LitmusInfo.== infix(_:_:)(v22, v18);
      sub_275A89134(v18, type metadata accessor for LitmusInfo);
      sub_275A89134(v22, type metadata accessor for LitmusInfo);
      sub_275A5FE04(v26, &qword_280A24650, &qword_275AEAC50);
      if ((v50 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    sub_275A89134(v22, type metadata accessor for LitmusInfo);
LABEL_22:
    v45 = &qword_280A246F8;
    v46 = &qword_275AEEB30;
    v47 = v26;
LABEL_23:
    sub_275A5FE04(v47, v45, v46);
    goto LABEL_24;
  }

  if (v44(&v26[v41], 1, v14) != 1)
  {
    goto LABEL_22;
  }

  sub_275A5FE04(v26, &qword_280A24650, &qword_275AEAC50);
LABEL_27:
  v51 = v67[8];
  v52 = (v66 + v51);
  v53 = *(v66 + v51 + 8);
  v54 = (v43 + v51);
  v55 = *(v43 + v51 + 8);
  if (v53)
  {
    v56 = v72;
    if (!v55)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    v56 = v72;
    if (v55)
    {
      goto LABEL_24;
    }
  }

  v57 = v67[9];
  v58 = *(v11 + 48);
  v59 = v71;
  sub_275A5F510(v66 + v57, v71, &qword_280A24658, &unk_275AE7960);
  sub_275A5F510(v68 + v57, v59 + v58, &qword_280A24658, &unk_275AE7960);
  v60 = v70;
  v61 = *(v69 + 48);
  if (v61(v59, 1, v70) == 1)
  {
    if (v61(v59 + v58, 1, v60) == 1)
    {
      sub_275A5FE04(v59, &qword_280A24658, &unk_275AE7960);
LABEL_44:
      sub_275AE52A4();
      sub_275A8E104(&qword_280A24638, MEMORY[0x277D216C8]);
      v48 = sub_275AE5664();
      return v48 & 1;
    }

    goto LABEL_42;
  }

  sub_275A5F510(v59, v56, &qword_280A24658, &unk_275AE7960);
  if (v61(v59 + v58, 1, v60) == 1)
  {
    sub_275A89134(v56, type metadata accessor for QuotaServerState);
LABEL_42:
    v45 = &qword_280A246F0;
    v46 = qword_275AE7E10;
    v47 = v59;
    goto LABEL_23;
  }

  v62 = v59 + v58;
  v63 = v65;
  sub_275A88D48(v62, v65, type metadata accessor for QuotaServerState);
  v64 = static QuotaServerState.== infix(_:_:)(v56, v63);
  sub_275A89134(v63, type metadata accessor for QuotaServerState);
  sub_275A89134(v56, type metadata accessor for QuotaServerState);
  sub_275A5FE04(v59, &qword_280A24658, &unk_275AE7960);
  if (v64)
  {
    goto LABEL_44;
  }

LABEL_24:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_275A8E104(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_275A8E150()
{
  result = qword_280A24C50;
  if (!qword_280A24C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24C50);
  }

  return result;
}

unint64_t sub_275A8E1A8()
{
  result = qword_280A24C58;
  if (!qword_280A24C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24C58);
  }

  return result;
}

unint64_t sub_275A8E200()
{
  result = qword_280A24C60;
  if (!qword_280A24C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24C60);
  }

  return result;
}

unint64_t sub_275A8E258()
{
  result = qword_280A24C68;
  if (!qword_280A24C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A24C70, &qword_275AE95F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24C68);
  }

  return result;
}

void sub_275A8E644()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_280A24CC0);
    if (v1 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF68);
      if (v2 <= 0x3F)
      {
        sub_275A8E790(319, &qword_281412450, type metadata accessor for LitmusInfo);
        if (v3 <= 0x3F)
        {
          sub_275A56BFC(319, &qword_28140FF48);
          if (v4 <= 0x3F)
          {
            sub_275A8E790(319, &qword_281412150, type metadata accessor for QuotaServerState);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_275A8E790(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_275AE5944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_275A8E81C()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_280A24CC8);
    if (v1 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_280A24A58);
      if (v2 <= 0x3F)
      {
        sub_275A8E790(319, &qword_281412150, type metadata accessor for QuotaServerState);
        if (v3 <= 0x3F)
        {
          sub_275A56BFC(319, &qword_28140FF48);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_275A8E95C()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275A8E790(319, qword_281411038, type metadata accessor for RefreshDetailsContext);
    if (v1 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_280A24A58);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_275A8EA24()
{
  result = qword_280A24CE8;
  if (!qword_280A24CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24CE8);
  }

  return result;
}

uint64_t SystemActivityHistory_RegisterAction.intervalMillis.setter(uint64_t a1)
{
  result = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SystemActivityHistory_RegisterAction.intervalMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SystemActivityHistory_RegisterAction(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall SystemActivityHistory_RegisterAction.clearIntervalMillis()()
{
  v1 = v0 + *(type metadata accessor for SystemActivityHistory_RegisterAction(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*SystemActivityHistory_RegisterAction.humanReadableInterval.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_RegisterAction(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

uint64_t SystemActivityHistory_RegisterAction.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_275A8ED74(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t SystemActivityHistory_RunAction.expectedRunTsMillis.setter(uint64_t a1)
{
  result = type metadata accessor for SystemActivityHistory_RunAction(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SystemActivityHistory_RunAction.expectedRunTsMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SystemActivityHistory_RunAction(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall SystemActivityHistory_RunAction.clearExpectedRunTsMillis()()
{
  v1 = v0 + *(type metadata accessor for SystemActivityHistory_RunAction(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_275A8EEE8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_275A8EF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*SystemActivityHistory_RunAction.humanReadableTime.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_RunAction(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

uint64_t sub_275A8F0A0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*SystemActivityHistory_RunAction.deviationFromExpectedTime.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_RunAction(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

int *SystemActivityHistory_RunAction.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for SystemActivityHistory_RunAction(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t SystemActivityHistory_Action.tsMillis.getter()
{
  v1 = (v0 + *(type metadata accessor for SystemActivityHistory_Action(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SystemActivityHistory_Action.tsMillis.setter(uint64_t a1)
{
  result = type metadata accessor for SystemActivityHistory_Action(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SystemActivityHistory_Action.tsMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SystemActivityHistory_Action(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A57784;
}

Swift::Void __swiftcall SystemActivityHistory_Action.clearTsMillis()()
{
  v1 = v0 + *(type metadata accessor for SystemActivityHistory_Action(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_275A8F418(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_275A8F48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*SystemActivityHistory_Action.humanReadableTime.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_Action(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

uint64_t sub_275A8F5D0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t SystemActivityHistory_Action.msg.getter()
{
  v1 = (v0 + *(type metadata accessor for SystemActivityHistory_Action(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SystemActivityHistory_Action.msg.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SystemActivityHistory_Action(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*SystemActivityHistory_Action.msg.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_Action(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

Swift::Void __swiftcall SystemActivityHistory_Action.clearMsg()()
{
  v1 = (v0 + *(type metadata accessor for SystemActivityHistory_Action(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_275A8F7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SystemActivityHistory_Action.registerAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_275A5F510(v2, &v12 - v6, &qword_280A24CF8, &qword_275AE9AC0);
  v8 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24CF8, &qword_275AE9AC0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_275A8FEB8(v7, a1, type metadata accessor for SystemActivityHistory_RegisterAction);
    }

    sub_275A8FCC4(v7, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v10 = a1 + *(result + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a1 + *(result + 24));
  *v11 = 0;
  v11[1] = 0;
  return result;
}

void (*SystemActivityHistory_Action.registerAction.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_275A5F510(v1, v8, &qword_280A24CF8, &qword_275AE9AC0);
  v13 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24CF8, &qword_275AE9AC0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_275A8FEB8(v8, v12, type metadata accessor for SystemActivityHistory_RegisterAction);
      return sub_275A8FC80;
    }

    sub_275A8FCC4(v8, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v15 = v12 + *(v9 + 20);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (v12 + *(v9 + 24));
  *v16 = 0;
  v16[1] = 0;
  return sub_275A8FC80;
}

uint64_t sub_275A8FCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *SystemActivityHistory_Action.runAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_275A5F510(v2, &v13 - v6, &qword_280A24CF8, &qword_275AE9AC0);
  v8 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24CF8, &qword_275AE9AC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_275A8FEB8(v7, a1, type metadata accessor for SystemActivityHistory_RunAction);
    }

    sub_275A8FCC4(v7, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for SystemActivityHistory_RunAction(0);
  v10 = a1 + result[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a1 + result[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + result[7]);
  *v12 = 0;
  v12[1] = 0;
  return result;
}

uint64_t sub_275A8FEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*SystemActivityHistory_Action.runAction.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for SystemActivityHistory_RunAction(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_275A5F510(v2, v9, &qword_280A24CF8, &qword_275AE9AC0);
  v14 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_275A5FE04(v9, &qword_280A24CF8, &qword_275AE9AC0);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v16 = v13 + v10[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = (v13 + v10[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v13 + v10[7]);
    *v18 = 0;
    v18[1] = 0;
    return sub_275A90184;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_275A8FCC4(v9, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A8FEB8(v9, v13, type metadata accessor for SystemActivityHistory_RunAction);
  return sub_275A90184;
}

uint64_t sub_275A901C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SystemActivityHistory_Action.unregisterAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_275A5F510(v2, &v10 - v6, &qword_280A24CF8, &qword_275AE9AC0);
  v8 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24CF8, &qword_275AE9AC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_275A8FEB8(v7, a1, type metadata accessor for SystemActivityHistory_UnregisterAction);
    }

    sub_275A8FCC4(v7, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  }

  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t sub_275A903CC(uint64_t a1, uint64_t (*a2)(void))
{
  sub_275A5FE04(v2, &qword_280A24CF8, &qword_275AE9AC0);
  sub_275A8FEB8(a1, v2, a2);
  v5 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*SystemActivityHistory_Action.unregisterAction.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for SystemActivityHistory_UnregisterAction(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_275A5F510(v1, v8, &qword_280A24CF8, &qword_275AE9AC0);
  v12 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24CF8, &qword_275AE9AC0);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275A9068C;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_275A8FCC4(v8, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A8FEB8(v8, v11, type metadata accessor for SystemActivityHistory_UnregisterAction);
  return sub_275A9068C;
}

void sub_275A906D0(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_275A901C8((*a1)[3], v10, a5);
    sub_275A5FE04(v13, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A8FEB8(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_275A8FCC4(v11, a6);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A8FEB8(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t static SystemActivityHistory_UnregisterAction.== infix(_:_:)()
{
  sub_275AE52A4();
  sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t SystemActivityHistory_Action.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for SystemActivityHistory_Action(0);
  v4 = a1 + v3[5];
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v6 = a1 + v3[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + v3[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v3[8]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t (*SystemActivityHistory_Activity.activityID.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SystemActivityHistory_Activity(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A53DEC;
}

uint64_t SystemActivityHistory_Activity.actions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_275A90B78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_275A90C14(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SystemActivityHistory_Activity.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for SystemActivityHistory_Activity(0);
  v3 = a1 + *(v2 + 20);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t SystemActivityHistory_File.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for SystemActivityHistory_File(0) + 20);
  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t sub_275A90E2C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_RegisterAction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_RegisterAction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intervalMillis";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "humanReadableInterval";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t SystemActivityHistory_RegisterAction.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for SystemActivityHistory_RegisterAction(0) + 20);
      sub_275AE53B4();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for SystemActivityHistory_RegisterAction(0) + 24);
      sub_275AE53E4();
    }
  }

  return result;
}

uint64_t SystemActivityHistory_RegisterAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A91824(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_RegisterAction);
  if (!v4)
  {
    sub_275A918A0(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_RegisterAction);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A911DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_275A9126C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D98, type metadata accessor for SystemActivityHistory_RegisterAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A9130C()
{
  sub_275A97E94(&qword_2814103B0, type metadata accessor for SystemActivityHistory_RegisterAction);

  return sub_275AE5464();
}

uint64_t sub_275A91378()
{
  sub_275A97E94(&qword_2814103B0, type metadata accessor for SystemActivityHistory_RegisterAction);

  return sub_275AE5474();
}

uint64_t sub_275A91420()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_RunAction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_RunAction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "expectedRunTsMillis";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "humanReadableTime";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "deviationFromExpectedTime";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t SystemActivityHistory_RunAction.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for SystemActivityHistory_RunAction(0) + 28);
LABEL_3:
        v0 = 0;
        sub_275AE53E4();
        break;
      case 2:
        v1 = *(type metadata accessor for SystemActivityHistory_RunAction(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for SystemActivityHistory_RunAction(0) + 20);
        sub_275AE53B4();
        break;
    }
  }
}

uint64_t SystemActivityHistory_RunAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A91824(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_RunAction);
  if (!v4)
  {
    sub_275A918A0(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_RunAction);
    sub_275A9378C(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_RunAction);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A91824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A918A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A9196C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_275A91A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D90, type metadata accessor for SystemActivityHistory_RunAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A91AA8()
{
  sub_275A97E94(&qword_281410508, type metadata accessor for SystemActivityHistory_RunAction);

  return sub_275AE5464();
}

uint64_t sub_275A91B14()
{
  sub_275A97E94(&qword_281410508, type metadata accessor for SystemActivityHistory_RunAction);

  return sub_275AE5474();
}

uint64_t sub_275A91BBC()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_UnregisterAction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_UnregisterAction._protobuf_nameMap);
  return sub_275AE5564();
}

uint64_t SystemActivityHistory_UnregisterAction.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_275AE5344();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_275A91D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D88, type metadata accessor for SystemActivityHistory_UnregisterAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A91DE0()
{
  sub_275A97E94(&qword_280A24D48, type metadata accessor for SystemActivityHistory_UnregisterAction);

  return sub_275AE5464();
}

uint64_t sub_275A91E4C()
{
  sub_275A97E94(&qword_280A24D48, type metadata accessor for SystemActivityHistory_UnregisterAction);

  return sub_275AE5474();
}

uint64_t sub_275A91EC8()
{
  sub_275AE52A4();
  sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275A91F78()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_Action._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_Action._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE9AB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tsMillis";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "humanReadableTime";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "msg";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "registerAction";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 101;
  *v16 = "runAction";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 102;
  *v18 = "unregisterAction";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t SystemActivityHistory_Action.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    if (result > 99)
    {
      switch(result)
      {
        case 'd':
          sub_275A923D4(v5, a1, a2, a3);
          break;
        case 'e':
          sub_275A92984(v5, a1, a2, a3);
          break;
        case 'f':
          sub_275A92F40(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v9 = *(type metadata accessor for SystemActivityHistory_Action(0) + 24);
          sub_275AE53B4();
          break;
        case 2:
          v13 = *(type metadata accessor for SystemActivityHistory_Action(0) + 28);
LABEL_16:
          v4 = 0;
          sub_275AE53E4();
          break;
        case 3:
          v12 = *(type metadata accessor for SystemActivityHistory_Action(0) + 32);
          goto LABEL_16;
      }
    }
  }
}

uint64_t sub_275A923D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DC0, &qword_275AEA480);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_275A5F510(a1, v14, &qword_280A24CF8, &qword_275AE9AC0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24CF8, &qword_275AE9AC0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A8FEB8(v14, v22, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    sub_275A8FEB8(v22, v20, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_275A8FCC4(v20, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v33 = v48;
    }

    else
    {
      sub_275A5FE04(v28, &qword_280A24DC0, &qword_275AEA480);
      v35 = v43;
      sub_275A8FEB8(v20, v43, type metadata accessor for SystemActivityHistory_RegisterAction);
      sub_275A8FEB8(v35, v28, type metadata accessor for SystemActivityHistory_RegisterAction);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_275A97E94(&qword_2814103B0, type metadata accessor for SystemActivityHistory_RegisterAction);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A24DC0, &qword_275AEA480);
  }

  sub_275A5F510(v28, v36, &qword_280A24DC0, &qword_275AEA480);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A24DC0, &qword_275AEA480);
    return sub_275A5FE04(v36, &qword_280A24DC0, &qword_275AEA480);
  }

  else
  {
    v39 = v44;
    sub_275A8FEB8(v36, v44, type metadata accessor for SystemActivityHistory_RegisterAction);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A24DC0, &qword_275AEA480);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A8FEB8(v39, v40, type metadata accessor for SystemActivityHistory_RegisterAction);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275A92984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for SystemActivityHistory_RunAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DC8, &qword_275AEA488);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_275A5F510(a1, v14, &qword_280A24CF8, &qword_275AE9AC0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24CF8, &qword_275AE9AC0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A8FEB8(v14, v22, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    sub_275A8FEB8(v22, v20, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_275A5FE04(v28, &qword_280A24DC8, &qword_275AEA488);
      v35 = v44;
      sub_275A8FEB8(v20, v44, type metadata accessor for SystemActivityHistory_RunAction);
      sub_275A8FEB8(v35, v28, type metadata accessor for SystemActivityHistory_RunAction);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A8FCC4(v20, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275A97E94(&qword_281410508, type metadata accessor for SystemActivityHistory_RunAction);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A24DC8, &qword_275AEA488);
  }

  sub_275A5F510(v28, v36, &qword_280A24DC8, &qword_275AEA488);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A24DC8, &qword_275AEA488);
    return sub_275A5FE04(v36, &qword_280A24DC8, &qword_275AEA488);
  }

  else
  {
    v39 = v43;
    sub_275A8FEB8(v36, v43, type metadata accessor for SystemActivityHistory_RunAction);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A24DC8, &qword_275AEA488);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A8FEB8(v39, v40, type metadata accessor for SystemActivityHistory_RunAction);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275A92F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for SystemActivityHistory_UnregisterAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DD0, &unk_275AEA490);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_275A5F510(a1, v14, &qword_280A24CF8, &qword_275AE9AC0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24CF8, &qword_275AE9AC0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A8FEB8(v14, v22, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    sub_275A8FEB8(v22, v20, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_275A5FE04(v28, &qword_280A24DD0, &unk_275AEA490);
      v35 = v44;
      sub_275A8FEB8(v20, v44, type metadata accessor for SystemActivityHistory_UnregisterAction);
      sub_275A8FEB8(v35, v28, type metadata accessor for SystemActivityHistory_UnregisterAction);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A8FCC4(v20, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275A97E94(&qword_280A24D48, type metadata accessor for SystemActivityHistory_UnregisterAction);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A24DD0, &unk_275AEA490);
  }

  sub_275A5F510(v28, v36, &qword_280A24DD0, &unk_275AEA490);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A24DD0, &unk_275AEA490);
    return sub_275A5FE04(v36, &qword_280A24DD0, &unk_275AEA490);
  }

  else
  {
    v39 = v43;
    sub_275A8FEB8(v36, v43, type metadata accessor for SystemActivityHistory_UnregisterAction);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A24DD0, &unk_275AEA490);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A8FEB8(v39, v40, type metadata accessor for SystemActivityHistory_UnregisterAction);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t SystemActivityHistory_Action.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  result = sub_275A93714(v3);
  if (!v4)
  {
    sub_275A9378C(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_Action);
    sub_275A93810(v3);
    sub_275A5F510(v3, v11, &qword_280A24CF8, &qword_275AE9AC0);
    v13 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_275A93ABC(v3, a1, a2, a3);
        }

        else
        {
          sub_275A93CF4(v3, a1, a2, a3);
        }
      }

      else
      {
        sub_275A93888(v3, a1, a2, a3);
      }

      sub_275A8FCC4(v11, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    }

    v15 = v3 + *(type metadata accessor for SystemActivityHistory_Action(0) + 20);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A93714(uint64_t a1)
{
  result = type metadata accessor for SystemActivityHistory_Action(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A9378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A93810(uint64_t a1)
{
  result = type metadata accessor for SystemActivityHistory_Action(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A93888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24CF8, &qword_275AE9AC0);
  v13 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24CF8, &qword_275AE9AC0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_275A8FEB8(v8, v12, type metadata accessor for SystemActivityHistory_RegisterAction);
    sub_275A97E94(&qword_2814103B0, type metadata accessor for SystemActivityHistory_RegisterAction);
    sub_275AE5534();
    return sub_275A8FCC4(v12, type metadata accessor for SystemActivityHistory_RegisterAction);
  }

  result = sub_275A8FCC4(v8, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275A93ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for SystemActivityHistory_RunAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24CF8, &qword_275AE9AC0);
  v13 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24CF8, &qword_275AE9AC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_275A8FEB8(v8, v12, type metadata accessor for SystemActivityHistory_RunAction);
    sub_275A97E94(&qword_281410508, type metadata accessor for SystemActivityHistory_RunAction);
    sub_275AE5534();
    return sub_275A8FCC4(v12, type metadata accessor for SystemActivityHistory_RunAction);
  }

  result = sub_275A8FCC4(v8, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275A93CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for SystemActivityHistory_UnregisterAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24CF8, &qword_275AE9AC0);
  v13 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24CF8, &qword_275AE9AC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_275A8FEB8(v8, v12, type metadata accessor for SystemActivityHistory_UnregisterAction);
    sub_275A97E94(&qword_280A24D48, type metadata accessor for SystemActivityHistory_UnregisterAction);
    sub_275AE5534();
    return sub_275A8FCC4(v12, type metadata accessor for SystemActivityHistory_UnregisterAction);
  }

  result = sub_275A8FCC4(v8, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275A93F78@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + a1[5];
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + a1[8]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t (*sub_275A94034(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_275A94088(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D80, type metadata accessor for SystemActivityHistory_Action);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A94128()
{
  sub_275A97E94(&qword_2814106E0, type metadata accessor for SystemActivityHistory_Action);

  return sub_275AE5464();
}

uint64_t sub_275A94194()
{
  sub_275A97E94(&qword_2814106E0, type metadata accessor for SystemActivityHistory_Action);

  return sub_275AE5474();
}

uint64_t sub_275A9423C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_Activity._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_Activity._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activityId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actions";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t SystemActivityHistory_Activity.decodeMessage<A>(decoder:)()
{
  result = sub_275AE5344();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for SystemActivityHistory_Activity(0) + 24);
        sub_275AE53E4();
      }

      else if (result == 2)
      {
        type metadata accessor for SystemActivityHistory_Action(0);
        sub_275A97E94(&qword_2814106E0, type metadata accessor for SystemActivityHistory_Action);
        sub_275AE53F4();
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t SystemActivityHistory_Activity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_275A918A0(v3, a1, a2, a3, type metadata accessor for SystemActivityHistory_Activity);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for SystemActivityHistory_Action(0);
      sub_275A97E94(&qword_2814106E0, type metadata accessor for SystemActivityHistory_Action);
      sub_275AE5524();
    }

    v8 = v5 + *(type metadata accessor for SystemActivityHistory_Activity(0) + 20);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A946BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_275A94750(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D78, type metadata accessor for SystemActivityHistory_Activity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A947F0()
{
  sub_275A97E94(&qword_281411F48, type metadata accessor for SystemActivityHistory_Activity);

  return sub_275AE5464();
}

uint64_t sub_275A9485C()
{
  sub_275A97E94(&qword_281411F48, type metadata accessor for SystemActivityHistory_Activity);

  return sub_275AE5474();
}

uint64_t sub_275A94904()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SystemActivityHistory_File._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SystemActivityHistory_File._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "activities";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_275AE5544();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_275AE5554();
}

uint64_t SystemActivityHistory_File.decodeMessage<A>(decoder:)()
{
  result = sub_275AE5344();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for SystemActivityHistory_Activity(0);
        sub_275A97E94(&qword_281411F48, type metadata accessor for SystemActivityHistory_Activity);
        sub_275AE53F4();
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t SystemActivityHistory_File.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for SystemActivityHistory_Activity(0), sub_275A97E94(&qword_281411F48, type metadata accessor for SystemActivityHistory_Activity), result = sub_275AE5524(), !v1))
  {
    v3 = v0 + *(type metadata accessor for SystemActivityHistory_File(0) + 20);
    return sub_275AE5284();
  }

  return result;
}

uint64_t static SystemActivityHistory_File.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_275A95248(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for SystemActivityHistory_File(0) + 20);
  sub_275AE52A4();
  sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275A94D70(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_275AE5B54();
  a1(0);
  sub_275A97E94(a2, a3);
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A94E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_275A94E88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_275A94F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A97E94(&qword_280A24D70, type metadata accessor for SystemActivityHistory_File);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A94FCC()
{
  sub_275A97E94(&qword_281410900, type metadata accessor for SystemActivityHistory_File);

  return sub_275AE5464();
}

uint64_t sub_275A95038()
{
  sub_275A97E94(&qword_281410900, type metadata accessor for SystemActivityHistory_File);

  return sub_275AE5474();
}

uint64_t sub_275A950B4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_275A95248(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_275AE52A4();
  sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275A9515C(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_275AE5AC4() & 1) == 0)
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

uint64_t sub_275A951EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_275A95248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_UnregisterAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for SystemActivityHistory_RunAction(0);
  v8 = *(*(v171 - 1) + 64);
  MEMORY[0x28223BE20](v171);
  v177 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v175 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DB0, &qword_275AEA470);
  v13 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v173 = &v151 - v14;
  v181 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v15 = *(v181 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v181);
  v169 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v174 = &v151 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v168 = &v151 - v22;
  MEMORY[0x28223BE20](v21);
  v179 = &v151 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v182 = &v151 - v26;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DB8, &qword_275AEA478);
  v27 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v29 = &v151 - v28;
  v30 = type metadata accessor for SystemActivityHistory_Action(0);
  v183 = *(v30 - 1);
  v31 = *(v183 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v151 - v35;
  v37 = type metadata accessor for SystemActivityHistory_Activity(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = (&v151 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x28223BE20](v39);
  v45 = &v151 - v44;
  v46 = *(a1 + 16);
  if (v46 != *(a2 + 16))
  {
    goto LABEL_112;
  }

  if (!v46 || a1 == a2)
  {
    v144 = 1;
    return v144 & 1;
  }

  v167 = v42;
  v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v48 = a1 + v47;
  v157 = a2 + v47;
  v49 = 0;
  v165 = (v15 + 48);
  v50 = *(v43 + 72);
  v152 = v7;
  v153 = v10;
  v170 = v41;
  v176 = &v151 - v44;
  v166 = v46;
  v155 = v48;
  v154 = v50;
  while (1)
  {
    v51 = v50 * v49;
    v52 = v49;
    v53 = v45;
    result = sub_275A901C8(v48 + v50 * v49, v45, type metadata accessor for SystemActivityHistory_Activity);
    v158 = v52;
    if (v52 == v166)
    {
      goto LABEL_116;
    }

    result = sub_275A901C8(v157 + v51, v41, type metadata accessor for SystemActivityHistory_Activity);
    v55 = *(v167 + 24);
    v56 = &v53[v55];
    v57 = *&v53[v55 + 8];
    v58 = (v41 + v55);
    v59 = v58[1];
    if (v57)
    {
      v60 = v165;
      if (!v59 || ((result = *v56, *v56 == *v58) ? (v61 = v57 == v59) : (v61 = 0), !v61 && (result = sub_275AE5AC4(), (result & 1) == 0)))
      {
LABEL_111:
        sub_275A8FCC4(v170, type metadata accessor for SystemActivityHistory_Activity);
        sub_275A8FCC4(v176, type metadata accessor for SystemActivityHistory_Activity);
LABEL_112:
        v144 = 0;
        return v144 & 1;
      }
    }

    else
    {
      v60 = v165;
      if (v59)
      {
        goto LABEL_111;
      }
    }

    v62 = *v176;
    v63 = *(*v176 + 16);
    v178 = *v170;
    if (v63 != *(v178 + 16))
    {
      goto LABEL_111;
    }

    if (v63 && v62 != v178)
    {
      break;
    }

LABEL_95:
    v142 = *(v167 + 20);
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
    v143 = v176;
    v41 = v170;
    v144 = sub_275AE5664();
    sub_275A8FCC4(v41, type metadata accessor for SystemActivityHistory_Activity);
    sub_275A8FCC4(v143, type metadata accessor for SystemActivityHistory_Activity);
    if (v144)
    {
      v49 = v158 + 1;
      v45 = v176;
      v48 = v155;
      v50 = v154;
      if (v158 + 1 != v166)
      {
        continue;
      }
    }

    return v144 & 1;
  }

  v64 = 0;
  v65 = (*(v183 + 80) + 32) & ~*(v183 + 80);
  v164 = v62 + v65;
  v163 = v178 + v65;
  v156 = v29;
  v162 = v36;
  v160 = v62;
  v159 = v63;
  v161 = v34;
  while (v64 < *(v62 + 16))
  {
    v66 = *(v183 + 72) * v64;
    result = sub_275A901C8(v164 + v66, v36, type metadata accessor for SystemActivityHistory_Action);
    if (v64 >= *(v178 + 16))
    {
      goto LABEL_115;
    }

    sub_275A901C8(v163 + v66, v34, type metadata accessor for SystemActivityHistory_Action);
    v67 = v30[6];
    v68 = &v36[v67];
    v69 = v36[v67 + 8];
    v70 = &v34[v67];
    v71 = v34[v67 + 8];
    if (v69)
    {
      if (!v71)
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (*v68 != *v70)
      {
        LOBYTE(v71) = 1;
      }

      if (v71)
      {
        goto LABEL_110;
      }
    }

    v72 = v30[7];
    v73 = &v36[v72];
    v74 = *&v36[v72 + 8];
    v75 = &v34[v72];
    v76 = *(v75 + 1);
    if (v74)
    {
      if (!v76)
      {
        goto LABEL_110;
      }

      v77 = *v73 == *v75 && v74 == v76;
      if (!v77 && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v76)
    {
      goto LABEL_110;
    }

    v78 = v30[8];
    v79 = &v36[v78];
    v80 = *&v36[v78 + 8];
    v81 = &v34[v78];
    v82 = *(v81 + 1);
    if (v80)
    {
      if (!v82 || (*v79 != *v81 || v80 != v82) && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v82)
    {
      goto LABEL_110;
    }

    v83 = v34;
    v84 = v30;
    v85 = *(v180 + 48);
    sub_275A5F510(v36, v29, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A5F510(v83, &v29[v85], &qword_280A24CF8, &qword_275AE9AC0);
    v86 = *v60;
    v87 = v181;
    if ((*v60)(v29, 1, v181) != 1)
    {
      v89 = v182;
      sub_275A5F510(v29, v182, &qword_280A24CF8, &qword_275AE9AC0);
      if (v86(&v29[v85], 1, v87) == 1)
      {
        sub_275A8FCC4(v89, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
        v34 = v161;
        v36 = v162;
LABEL_101:
        v149 = &qword_280A24DB8;
        v150 = &qword_275AEA478;
        goto LABEL_109;
      }

      v90 = v179;
      sub_275A8FEB8(&v29[v85], v179, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v91 = v173;
      v92 = *(v172 + 48);
      sub_275A901C8(v89, v173, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v93 = v91;
      sub_275A901C8(v90, v91 + v92, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v30 = v84;
        if (EnumCaseMultiPayload == 1)
        {
          v95 = v91;
          v96 = v174;
          sub_275A901C8(v95, v174, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
          v97 = swift_getEnumCaseMultiPayload();
          v98 = v182;
          v29 = v156;
          v34 = v161;
          if (v97 != 1)
          {
            sub_275A8FCC4(v96, type metadata accessor for SystemActivityHistory_RunAction);
            goto LABEL_107;
          }

          v99 = v93 + v92;
          v100 = v177;
          sub_275A8FEB8(v99, v177, type metadata accessor for SystemActivityHistory_RunAction);
          v101 = v171[5];
          v102 = (v96 + v101);
          v103 = *(v96 + v101 + 8);
          v104 = (v100 + v101);
          v105 = *(v100 + v101 + 8);
          v36 = v162;
          if (v103)
          {
            v106 = v174;
            if (!v105)
            {
              goto LABEL_99;
            }
          }

          else
          {
            if (*v102 != *v104)
            {
              LOBYTE(v105) = 1;
            }

            v106 = v174;
            if (v105)
            {
LABEL_99:
              v145 = type metadata accessor for SystemActivityHistory_RunAction;
              v108 = v106;
              v146 = v93;
              v147 = type metadata accessor for SystemActivityHistory_RunAction;
              v148 = v177;
              goto LABEL_103;
            }
          }

          v122 = v171[6];
          v123 = (v106 + v122);
          v124 = *(v106 + v122 + 8);
          v125 = (v177 + v122);
          v126 = v125[1];
          if (v124)
          {
            if (!v126 || (*v123 != *v125 || v124 != v126) && (sub_275AE5AC4() & 1) == 0)
            {
              goto LABEL_99;
            }
          }

          else if (v126)
          {
            goto LABEL_99;
          }

          v132 = v171[7];
          v133 = (v106 + v132);
          v134 = *(v106 + v132 + 8);
          v135 = (v177 + v132);
          v136 = v135[1];
          if (v134)
          {
            if (!v136 || (*v133 != *v135 || v134 != v136) && (sub_275AE5AC4() & 1) == 0)
            {
              goto LABEL_99;
            }
          }

          else if (v136)
          {
            goto LABEL_99;
          }

          sub_275AE52A4();
          sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
          v140 = sub_275AE5664();
          v106 = v174;
          if ((v140 & 1) == 0)
          {
            goto LABEL_99;
          }

          v137 = type metadata accessor for SystemActivityHistory_RunAction;
          v91 = v93;
          v138 = type metadata accessor for SystemActivityHistory_RunAction;
          v139 = v177;
          goto LABEL_91;
        }

        v116 = v169;
        sub_275A901C8(v91, v169, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
        v117 = swift_getEnumCaseMultiPayload();
        v29 = v156;
        v34 = v161;
        if (v117 != 2)
        {
          sub_275A8FCC4(v116, type metadata accessor for SystemActivityHistory_UnregisterAction);
          v98 = v182;
          goto LABEL_107;
        }

        v118 = v152;
        sub_275A8FEB8(v91 + v92, v152, type metadata accessor for SystemActivityHistory_UnregisterAction);
        sub_275AE52A4();
        sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
        v119 = sub_275AE5664();
        v120 = v118;
        v121 = v179;
        sub_275A8FCC4(v120, type metadata accessor for SystemActivityHistory_UnregisterAction);
        sub_275A8FCC4(v116, type metadata accessor for SystemActivityHistory_UnregisterAction);
        v36 = v162;
        if ((v119 & 1) == 0)
        {
          sub_275A8FCC4(v91, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
          v98 = v182;
          goto LABEL_108;
        }
      }

      else
      {
        v107 = v91;
        v108 = v168;
        sub_275A901C8(v107, v168, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_275A8FCC4(v108, type metadata accessor for SystemActivityHistory_RegisterAction);
          v98 = v182;
          v29 = v156;
          v34 = v161;
LABEL_107:
          v36 = v162;
          sub_275A5FE04(v93, &qword_280A24DB0, &qword_275AEA470);
          goto LABEL_108;
        }

        v30 = v84;
        v109 = v93 + v92;
        v110 = v175;
        sub_275A8FEB8(v109, v175, type metadata accessor for SystemActivityHistory_RegisterAction);
        v111 = *(v153 + 20);
        v112 = (v108 + v111);
        v113 = *(v108 + v111 + 8);
        v114 = (v110 + v111);
        v115 = *(v110 + v111 + 8);
        v98 = v182;
        v29 = v156;
        v34 = v161;
        if (v113)
        {
          v36 = v162;
          if (!v115)
          {
            goto LABEL_102;
          }
        }

        else
        {
          if (*v112 != *v114)
          {
            LOBYTE(v115) = 1;
          }

          v36 = v162;
          if (v115)
          {
LABEL_102:
            v145 = type metadata accessor for SystemActivityHistory_RegisterAction;
            v146 = v93;
            v147 = type metadata accessor for SystemActivityHistory_RegisterAction;
            v148 = v175;
LABEL_103:
            sub_275A8FCC4(v148, v145);
            sub_275A8FCC4(v108, v147);
            sub_275A8FCC4(v146, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
LABEL_108:
            sub_275A8FCC4(v179, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
            sub_275A8FCC4(v98, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
            v149 = &qword_280A24CF8;
            v150 = &qword_275AE9AC0;
LABEL_109:
            sub_275A5FE04(v29, v149, v150);
LABEL_110:
            sub_275A8FCC4(v34, type metadata accessor for SystemActivityHistory_Action);
            sub_275A8FCC4(v36, type metadata accessor for SystemActivityHistory_Action);
            goto LABEL_111;
          }
        }

        v127 = *(v153 + 24);
        v128 = (v108 + v127);
        v129 = *(v108 + v127 + 8);
        v130 = (v175 + v127);
        v131 = v130[1];
        if (v129)
        {
          if (!v131 || (*v128 != *v130 || v129 != v131) && (sub_275AE5AC4() & 1) == 0)
          {
            goto LABEL_102;
          }
        }

        else if (v131)
        {
          goto LABEL_102;
        }

        sub_275AE52A4();
        sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
        if ((sub_275AE5664() & 1) == 0)
        {
          goto LABEL_102;
        }

        v137 = type metadata accessor for SystemActivityHistory_RegisterAction;
        v106 = v108;
        v91 = v93;
        v138 = type metadata accessor for SystemActivityHistory_RegisterAction;
        v139 = v175;
LABEL_91:
        sub_275A8FCC4(v139, v137);
        sub_275A8FCC4(v106, v138);
        v121 = v179;
      }

      sub_275A8FCC4(v91, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      sub_275A8FCC4(v121, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      sub_275A8FCC4(v182, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v60 = v165;
      goto LABEL_93;
    }

    v88 = v86(&v29[v85], 1, v87);
    v34 = v161;
    v36 = v162;
    if (v88 != 1)
    {
      goto LABEL_101;
    }

LABEL_93:
    sub_275A5FE04(v29, &qword_280A24CF8, &qword_275AE9AC0);
    v141 = v30[5];
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
    LOBYTE(v141) = sub_275AE5664();
    sub_275A8FCC4(v34, type metadata accessor for SystemActivityHistory_Action);
    result = sub_275A8FCC4(v36, type metadata accessor for SystemActivityHistory_Action);
    v62 = v160;
    if ((v141 & 1) == 0)
    {
      goto LABEL_111;
    }

    if (v159 == ++v64)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  return result;
}

uint64_t sub_275A96350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DB8, &qword_275AEA478);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  v64 = type metadata accessor for SystemActivityHistory_Action(0);
  v16 = *(*(v64 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v64);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v58 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_42:
    v57 = 0;
    return v57 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v57 = 1;
    return v57 & 1;
  }

  v62 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v61 = (v5 + 48);
  v27 = *(v20 + 72);
  v59 = v8;
  v60 = v27;
  v28 = v64;
  while (1)
  {
    result = sub_275A901C8(v25, v22, type metadata accessor for SystemActivityHistory_Action);
    if (!v23)
    {
      break;
    }

    v67 = v23;
    sub_275A901C8(v26, v19, type metadata accessor for SystemActivityHistory_Action);
    v30 = v28[6];
    v31 = &v22[v30];
    v32 = v22[v30 + 8];
    v33 = &v19[v30];
    v34 = v19[v30 + 8];
    if (v32)
    {
      if (!v34)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (*v31 != *v33)
      {
        LOBYTE(v34) = 1;
      }

      if (v34)
      {
        goto LABEL_41;
      }
    }

    v35 = v28[7];
    v36 = &v22[v35];
    v37 = *&v22[v35 + 8];
    v38 = &v19[v35];
    v39 = *(v38 + 1);
    if (v37)
    {
      if (!v39)
      {
        goto LABEL_41;
      }

      v40 = *v36 == *v38 && v37 == v39;
      if (!v40 && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v39)
    {
      goto LABEL_41;
    }

    v41 = v28[8];
    v42 = &v22[v41];
    v43 = *&v22[v41 + 8];
    v44 = &v19[v41];
    v45 = *(v44 + 1);
    if (v43)
    {
      if (!v45)
      {
        goto LABEL_41;
      }

      v46 = *v42 == *v44 && v43 == v45;
      if (!v46 && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v45)
    {
      goto LABEL_41;
    }

    v65 = v26;
    v66 = v25;
    v47 = *(v12 + 48);
    sub_275A5F510(v22, v15, &qword_280A24CF8, &qword_275AE9AC0);
    sub_275A5F510(v19, &v15[v47], &qword_280A24CF8, &qword_275AE9AC0);
    v48 = v62;
    v49 = *v61;
    if ((*v61)(v15, 1, v62) == 1)
    {
      if (v49(&v15[v47], 1, v48) != 1)
      {
        goto LABEL_40;
      }

      sub_275A5FE04(v15, &qword_280A24CF8, &qword_275AE9AC0);
      v51 = v65;
      v50 = v66;
    }

    else
    {
      v52 = v12;
      v53 = v63;
      sub_275A5F510(v15, v63, &qword_280A24CF8, &qword_275AE9AC0);
      if (v49(&v15[v47], 1, v48) == 1)
      {
        sub_275A8FCC4(v53, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
LABEL_40:
        sub_275A5FE04(v15, &qword_280A24DB8, &qword_275AEA478);
LABEL_41:
        sub_275A8FCC4(v19, type metadata accessor for SystemActivityHistory_Action);
        sub_275A8FCC4(v22, type metadata accessor for SystemActivityHistory_Action);
        goto LABEL_42;
      }

      v54 = v59;
      sub_275A8FEB8(&v15[v47], v59, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      v55 = _s31iCloudSubscriptionOptimizerCore28SystemActivityHistory_ActionV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v53, v54);
      sub_275A8FCC4(v54, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      sub_275A8FCC4(v53, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
      sub_275A5FE04(v15, &qword_280A24CF8, &qword_275AE9AC0);
      v12 = v52;
      v28 = v64;
      v51 = v65;
      v50 = v66;
      if ((v55 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v56 = v28[5];
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
    v57 = sub_275AE5664();
    sub_275A8FCC4(v19, type metadata accessor for SystemActivityHistory_Action);
    sub_275A8FCC4(v22, type metadata accessor for SystemActivityHistory_Action);
    if (v57)
    {
      v23 = v67 - 1;
      v26 = v51 + v60;
      v25 = v50 + v60;
      if (v67 != 1)
      {
        continue;
      }
    }

    return v57 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_275A96938(uint64_t a1, uint64_t a2)
{
  v69 = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  v4 = *(v69 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v69);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA0, &qword_275AEA460);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v60 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA8, &qword_275AEA468);
  v10 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v12 = &v60 - v11;
  v63 = type metadata accessor for ActivityStatusResponse.Activity(0);
  v13 = *(*(v63 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v63);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = &v60 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    goto LABEL_55;
  }

  if (!v20 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v68 = a2 + v21;
  v61 = *(v17 + 72);
  v62 = v4 + 48;
  v23 = v63;
  v24 = (v4 + 48);
  while (1)
  {
    v64 = v22;
    sub_275A901C8(v22, v19, type metadata accessor for ActivityStatusResponse.Activity);
    sub_275A901C8(v68, v16, type metadata accessor for ActivityStatusResponse.Activity);
    v25 = v23[5];
    v26 = &v19[v25];
    v27 = *&v19[v25 + 8];
    v28 = &v16[v25];
    v29 = *(v28 + 1);
    if (v27)
    {
      if (!v29)
      {
        goto LABEL_54;
      }

      v30 = *v26 == *v28 && v27 == v29;
      if (!v30 && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v29)
    {
      goto LABEL_54;
    }

    v31 = v23[6];
    v32 = &v19[v31];
    v33 = v19[v31 + 9];
    v34 = &v16[v31];
    v35 = v16[v31 + 9];
    if (v33)
    {
      if ((v35 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v35)
      {
        goto LABEL_54;
      }

      v36 = *v32;
      v37 = *v34;
      if (v34[8])
      {
        if (v37)
        {
          if (v37 == 1)
          {
            if (v36 != 1)
            {
              goto LABEL_54;
            }
          }

          else if (v36 != 2)
          {
            goto LABEL_54;
          }
        }

        else if (v36)
        {
          goto LABEL_54;
        }
      }

      else if (v36 != v37)
      {
        goto LABEL_54;
      }
    }

    v38 = v23[7];
    v39 = *(v65 + 48);
    sub_275A5F510(&v19[v38], v12, &qword_280A24DA0, &qword_275AEA460);
    sub_275A5F510(&v16[v38], &v12[v39], &qword_280A24DA0, &qword_275AEA460);
    v40 = *v24;
    if ((*v24)(v12, 1, v69) == 1)
    {
      if (v40(&v12[v39], 1, v69) != 1)
      {
        goto LABEL_52;
      }

      sub_275A5FE04(v12, &qword_280A24DA0, &qword_275AEA460);
      goto LABEL_46;
    }

    sub_275A5F510(v12, v67, &qword_280A24DA0, &qword_275AEA460);
    if (v40(&v12[v39], 1, v69) == 1)
    {
      break;
    }

    v41 = &v12[v39];
    v42 = v66;
    sub_275A8FEB8(v41, v66, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    v43 = *(v69 + 20);
    v44 = (v67 + v43);
    v45 = *(v67 + v43 + 8);
    v46 = (v42 + v43);
    v47 = *(v42 + v43 + 8);
    if (v45)
    {
      if (!v47)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*v44 != *v46)
      {
        LOBYTE(v47) = 1;
      }

      if (v47)
      {
LABEL_50:
        sub_275A8FCC4(v66, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
        sub_275A8FCC4(v67, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
        v57 = &qword_280A24DA0;
        v58 = &qword_275AEA460;
        goto LABEL_53;
      }
    }

    v48 = *(v69 + 24);
    v49 = (v67 + v48);
    v50 = *(v67 + v48 + 8);
    v51 = (v66 + v48);
    v52 = v51[1];
    if (v50)
    {
      if (!v52 || (*v49 != *v51 || v50 != v52) && (sub_275AE5AC4() & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (v52)
    {
      goto LABEL_50;
    }

    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
    v53 = v66;
    v54 = v67;
    v55 = sub_275AE5664();
    v23 = v63;
    sub_275A8FCC4(v53, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A8FCC4(v54, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A5FE04(v12, &qword_280A24DA0, &qword_275AEA460);
    if ((v55 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_46:
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
    v56 = sub_275AE5664();
    sub_275A8FCC4(v16, type metadata accessor for ActivityStatusResponse.Activity);
    sub_275A8FCC4(v19, type metadata accessor for ActivityStatusResponse.Activity);
    if (v56)
    {
      v68 += v61;
      v22 = v64 + v61;
      if (--v20)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  sub_275A8FCC4(v67, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
LABEL_52:
  v57 = &qword_280A24DA8;
  v58 = &qword_275AEA468;
LABEL_53:
  sub_275A5FE04(v12, v57, v58);
LABEL_54:
  sub_275A8FCC4(v16, type metadata accessor for ActivityStatusResponse.Activity);
  sub_275A8FCC4(v19, type metadata accessor for ActivityStatusResponse.Activity);
LABEL_55:
  v56 = 0;
  return v56 & 1;
}

uint64_t sub_275A9701C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDetails(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v31 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_275A901C8(v14, v11, type metadata accessor for FeatureDetails);
        sub_275A901C8(v15, v8, type metadata accessor for FeatureDetails);
        v17 = *(v4 + 20);
        v18 = &v11[v17];
        v19 = *&v11[v17 + 8];
        v20 = &v8[v17];
        v21 = *(v20 + 1);
        if (v19)
        {
          if (!v21 || (*v18 == *v20 ? (v22 = v19 == v21) : (v22 = 0), !v22 && (sub_275AE5AC4() & 1) == 0))
          {
LABEL_27:
            sub_275A8FCC4(v8, type metadata accessor for FeatureDetails);
            sub_275A8FCC4(v11, type metadata accessor for FeatureDetails);
            goto LABEL_28;
          }
        }

        else if (v21)
        {
          goto LABEL_27;
        }

        v23 = *(v4 + 24);
        v24 = &v11[v23];
        v25 = *&v11[v23 + 8];
        v26 = &v8[v23];
        v27 = *(v26 + 1);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_27;
          }

          v28 = *v24 == *v26 && v25 == v27;
          if (!v28 && (sub_275AE5AC4() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v27)
        {
          goto LABEL_27;
        }

        sub_275AE52A4();
        sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
        v29 = sub_275AE5664();
        sub_275A8FCC4(v8, type metadata accessor for FeatureDetails);
        sub_275A8FCC4(v11, type metadata accessor for FeatureDetails);
        if (v29)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v29 & 1;
      }
    }

    v29 = 1;
  }

  else
  {
LABEL_28:
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore31SystemActivityHistory_RunActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_RunAction(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v4;
      v17 = sub_275AE5AC4();
      v4 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
    return sub_275AE5664() & 1;
  }

  if (!v22)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore28SystemActivityHistory_ActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DB8, &qword_275AEA478);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for SystemActivityHistory_Action(0);
  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_27;
    }
  }

  v23 = v17[7];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_27;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v28 = v17;
      v29 = sub_275AE5AC4();
      v17 = v28;
      if ((v29 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_27;
  }

  v30 = v17[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_27;
    }

    v42 = v17;
    if ((*v31 != *v33 || v32 != v34) && (sub_275AE5AC4() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v42 = v17;
    if (v34)
    {
      goto LABEL_27;
    }
  }

  v35 = *(v13 + 48);
  sub_275A5F510(a1, v16, &qword_280A24CF8, &qword_275AE9AC0);
  sub_275A5F510(a2, &v16[v35], &qword_280A24CF8, &qword_275AE9AC0);
  v36 = *(v5 + 48);
  if (v36(v16, 1, v4) == 1)
  {
    if (v36(&v16[v35], 1, v4) == 1)
    {
      sub_275A5FE04(v16, &qword_280A24CF8, &qword_275AE9AC0);
LABEL_30:
      v40 = v42[5];
      sub_275AE52A4();
      sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
      v37 = sub_275AE5664();
      return v37 & 1;
    }

    goto LABEL_26;
  }

  sub_275A5F510(v16, v12, &qword_280A24CF8, &qword_275AE9AC0);
  if (v36(&v16[v35], 1, v4) == 1)
  {
    sub_275A8FCC4(v12, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
LABEL_26:
    sub_275A5FE04(v16, &qword_280A24DB8, &qword_275AEA478);
    goto LABEL_27;
  }

  sub_275A8FEB8(&v16[v35], v8, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  v39 = _s31iCloudSubscriptionOptimizerCore28SystemActivityHistory_ActionV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v8);
  sub_275A8FCC4(v8, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  sub_275A8FCC4(v12, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  sub_275A5FE04(v16, &qword_280A24CF8, &qword_275AE9AC0);
  if (v39)
  {
    goto LABEL_30;
  }

LABEL_27:
  v37 = 0;
  return v37 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore36SystemActivityHistory_RegisterActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
    return sub_275AE5664() & 1;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore28SystemActivityHistory_ActionV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for SystemActivityHistory_UnregisterAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SystemActivityHistory_RunAction(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SystemActivityHistory_RegisterAction(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SystemActivityHistory_Action.OneOf_Type(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DB0, &qword_275AEA470);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v39 - v27;
  v29 = *(v26 + 56);
  sub_275A901C8(a1, &v39 - v27, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  sub_275A901C8(v40, &v28[v29], type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_275A901C8(v28, v23, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    if (swift_getEnumCaseMultiPayload())
    {
      v34 = type metadata accessor for SystemActivityHistory_RegisterAction;
      v35 = v23;
      goto LABEL_11;
    }

    sub_275A8FEB8(&v28[v29], v13, type metadata accessor for SystemActivityHistory_RegisterAction);
    v31 = _s31iCloudSubscriptionOptimizerCore36SystemActivityHistory_RegisterActionV2eeoiySbAC_ACtFZ_0(v23, v13);
    v37 = type metadata accessor for SystemActivityHistory_RegisterAction;
    sub_275A8FCC4(v13, type metadata accessor for SystemActivityHistory_RegisterAction);
    v32 = v23;
LABEL_13:
    v33 = v37;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_275A901C8(v28, v18, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v34 = type metadata accessor for SystemActivityHistory_UnregisterAction;
      v35 = v18;
      goto LABEL_11;
    }

    v36 = v39;
    sub_275A8FEB8(&v28[v29], v39, type metadata accessor for SystemActivityHistory_UnregisterAction);
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
    v31 = sub_275AE5664();
    v37 = type metadata accessor for SystemActivityHistory_UnregisterAction;
    sub_275A8FCC4(v36, type metadata accessor for SystemActivityHistory_UnregisterAction);
    v32 = v18;
    goto LABEL_13;
  }

  sub_275A901C8(v28, v21, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_275A8FEB8(&v28[v29], v9, type metadata accessor for SystemActivityHistory_RunAction);
    v31 = _s31iCloudSubscriptionOptimizerCore31SystemActivityHistory_RunActionV2eeoiySbAC_ACtFZ_0(v21, v9);
    sub_275A8FCC4(v9, type metadata accessor for SystemActivityHistory_RunAction);
    v32 = v21;
    v33 = type metadata accessor for SystemActivityHistory_RunAction;
LABEL_14:
    sub_275A8FCC4(v32, v33);
    sub_275A8FCC4(v28, type metadata accessor for SystemActivityHistory_Action.OneOf_Type);
    return v31 & 1;
  }

  v34 = type metadata accessor for SystemActivityHistory_RunAction;
  v35 = v21;
LABEL_11:
  sub_275A8FCC4(v35, v34);
  sub_275A5FE04(v28, &qword_280A24DB0, &qword_275AEA470);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_275A97E94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for SystemActivityHistory_Activity(0);
  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_275A96350(*a1, *a2))
  {
    v11 = *(v4 + 20);
    sub_275AE52A4();
    sub_275A97E94(&qword_280A24638, MEMORY[0x277D216C8]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

void sub_275A986B8()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_28140FF48);
    if (v1 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF88);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_275A98924()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_28140FF48);
    if (v1 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF88);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_275A98A08()
{
  result = sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_275A98A9C()
{
  sub_275A98D7C(319, qword_281410760, type metadata accessor for SystemActivityHistory_Action.OneOf_Type, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_275AE52A4();
    if (v1 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF48);
      if (v2 <= 0x3F)
      {
        sub_275A56BFC(319, &qword_28140FF88);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_275A98BF0()
{
  result = type metadata accessor for SystemActivityHistory_RegisterAction(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SystemActivityHistory_RunAction(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SystemActivityHistory_UnregisterAction(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_275A98CA0()
{
  sub_275A98D7C(319, &qword_28140FF78, type metadata accessor for SystemActivityHistory_Action, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_275AE52A4();
    if (v1 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF88);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275A98D7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_44Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_275AE52A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_45Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_275AE52A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_275A98F58()
{
  sub_275A98D7C(319, &qword_28140FF80, type metadata accessor for SystemActivityHistory_Activity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_275AE52A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_275A9902C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v2, qword_281410130);
  v5 = __swift_project_value_buffer(v0, qword_281410130);
  v9[1] = &type metadata for Threads;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DE0, &qword_275AEA4B8);
  *v4 = sub_275AE56E4();
  v4[1] = v6;
  v7 = *(v0 + 20);

  sub_275AE5594();
  return sub_275A7B5F0(v4, v5);
}

uint64_t static Threads.runInMain(task:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v23 = a3;
  v6 = sub_275AE55C4();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_275AE55F4();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A99524();
  v24 = sub_275AE58C4();
  type metadata accessor for Stopwatch();
  swift_allocObject();
  sub_275A87818();
  v15 = v14;
  if (qword_281410128 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, qword_281410130);
  aBlock = 0;
  v30 = 0xE000000000000000;
  sub_275AE5A14();

  aBlock = 0xD000000000000011;
  v30 = 0x8000000275AF0FF0;
  MEMORY[0x277C86E00](a1, a2);
  MEMORY[0x277C86E00](0xD000000000000014, 0x8000000275AF1010);
  MEMORY[0x277C86E00](1852399981, 0xE400000000000000);
  MEMORY[0x277C86E00](2109021, 0xE300000000000000);
  v17 = _s31iCloudSubscriptionOptimizerCore7ThreadsV17currentThreadInfoSSyFZ_0();
  MEMORY[0x277C86E00](v17);

  sub_275A7B8C0(1u, aBlock, v30);

  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = 1852399981;
  v18[5] = 0xE400000000000000;
  v18[6] = v15;
  v19 = v25;
  v18[7] = v23;
  v18[8] = v19;
  v33 = sub_275A9A0C8;
  v34 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_275A99DB0;
  v32 = &block_descriptor_0;
  v20 = _Block_copy(&aBlock);

  sub_275AE55E4();
  v28 = MEMORY[0x277D84F90];
  sub_275A9A0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DD8, &unk_275AEA4A0);
  sub_275A9A13C();
  sub_275AE59B4();
  v21 = v24;
  MEMORY[0x277C86F50](0, v13, v9, v20);
  _Block_release(v20);

  (*(v27 + 8))(v9, v6);
  (*(v10 + 8))(v13, v26);
}

unint64_t sub_275A99524()
{
  result = qword_28140FF60;
  if (!qword_28140FF60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28140FF60);
  }

  return result;
}

uint64_t static Threads.runInBackground(task:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v6 = sub_275AE55C4();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275AE55F4();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_275AE55D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A99524();
  (*(v15 + 104))(v18, *MEMORY[0x277D851A8], v14);
  v30 = sub_275AE58E4();
  (*(v15 + 8))(v18, v14);
  type metadata accessor for Stopwatch();
  swift_allocObject();
  sub_275A87818();
  v20 = v19;
  if (qword_281410128 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, qword_281410130);
  aBlock = 0;
  v38 = 0xE000000000000000;
  sub_275AE5A14();

  aBlock = 0xD000000000000011;
  v38 = 0x8000000275AF0FF0;
  MEMORY[0x277C86E00](a1, a2);
  MEMORY[0x277C86E00](0xD000000000000014, 0x8000000275AF1010);
  MEMORY[0x277C86E00](0x756F72676B636162, 0xEA0000000000646ELL);
  MEMORY[0x277C86E00](2109021, 0xE300000000000000);
  v22 = _s31iCloudSubscriptionOptimizerCore7ThreadsV17currentThreadInfoSSyFZ_0();
  MEMORY[0x277C86E00](v22);

  sub_275A7B8C0(1u, aBlock, v38);

  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = 0x756F72676B636162;
  v23[5] = 0xEA0000000000646ELL;
  v24 = v31;
  v25 = v32;
  v23[6] = v20;
  v23[7] = v24;
  v23[8] = v25;
  v41 = sub_275A9A218;
  v42 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_275A99DB0;
  v40 = &block_descriptor_7;
  v26 = _Block_copy(&aBlock);

  sub_275AE55E4();
  v36 = MEMORY[0x277D84F90];
  sub_275A9A0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DD8, &unk_275AEA4A0);
  sub_275A9A13C();
  sub_275AE59B4();
  v27 = v30;
  MEMORY[0x277C86F50](0, v13, v9, v26);
  _Block_release(v26);

  (*(v35 + 8))(v9, v6);
  (*(v33 + 8))(v13, v34);
}

uint64_t sub_275A99A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (qword_281410128 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, qword_281410130);
  sub_275AE5A14();

  strcpy(v16, "Running task [");
  HIBYTE(v16[1]) = -18;
  MEMORY[0x277C86E00](a1, a2);
  MEMORY[0x277C86E00](0x726874206E69205DLL, 0xED00005B20646165);
  MEMORY[0x277C86E00](a3, a4);
  MEMORY[0x277C86E00](2109021, 0xE300000000000000);
  MEMORY[0x277C86E00](0x3D64657370616C65, 0xE90000000000005BLL);
  Stopwatch.elapsed()();
  sub_275AE5A44();
  MEMORY[0x277C86E00](8285, 0xE200000000000000);
  v11 = _s31iCloudSubscriptionOptimizerCore7ThreadsV17currentThreadInfoSSyFZ_0();
  MEMORY[0x277C86E00](v11);

  MEMORY[0x277C86E00](0, 0xE000000000000000);

  sub_275A7B8C0(1u, v16[0], v16[1]);

  a6(v12);
  sub_275AE5A14();

  MEMORY[0x277C86E00](a1, a2);
  MEMORY[0x277C86E00](0x726874206E69205DLL, 0xED00005B20646165);
  MEMORY[0x277C86E00](a3, a4);
  MEMORY[0x277C86E00](2109021, 0xE300000000000000);
  MEMORY[0x277C86E00](0x3D64657370616C65, 0xE90000000000005BLL);
  Stopwatch.elapsed()();
  sub_275AE5A44();
  MEMORY[0x277C86E00](8285, 0xE200000000000000);
  v13 = _s31iCloudSubscriptionOptimizerCore7ThreadsV17currentThreadInfoSSyFZ_0();
  MEMORY[0x277C86E00](v13);

  MEMORY[0x277C86E00](0, 0xE000000000000000);

  sub_275A7B8C0(1u, 0xD000000000000017, 0x8000000275AF1030);
}

uint64_t sub_275A99DB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_275A99DF4(void *a1)
{
  v2 = sub_275AE5674();
  v3 = [a1 valueForKeyPath_];

  if (v3)
  {
    sub_275AE59A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v6[0] = v8;
  v6[1] = v9;
  if (!*(&v9 + 1))
  {
    return 0;
  }

  sub_275A78C1C(v6, &v5);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t _s31iCloudSubscriptionOptimizerCore7ThreadsV17currentThreadInfoSSyFZ_0()
{
  v0 = [objc_opt_self() currentThread];
  sub_275A99DF4(v0);
  if (v1)
  {
    v2 = 0xEC00000044495F44;
    v3 = 0x41455248545F4F4ELL;
  }

  else
  {
    v3 = sub_275AE5A94();
    v2 = v4;
  }

  MEMORY[0x277C86E00](v3, v2);

  MEMORY[0x277C86E00](32, 0xE100000000000000);
  MEMORY[0x277C86E00](3826793, 0xE300000000000000);

  v5 = [v0 isMainThread];
  v6 = v5 == 0;
  if (v5)
  {
    v7 = 1852399981;
  }

  else
  {
    v7 = 0x756F72676B636162;
  }

  if (v6)
  {
    v8 = 0xEA0000000000646ELL;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x277C86E00](v7, v8);

  MEMORY[0x277C86E00](0x3A65707974, 0xE500000000000000);

  MEMORY[0x277C86E00](93, 0xE100000000000000);

  return 0x54746E6572727563;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275A9A0E4()
{
  result = qword_28140FF90;
  if (!qword_28140FF90)
  {
    sub_275AE55C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140FF90);
  }

  return result;
}

unint64_t sub_275A9A13C()
{
  result = qword_28140FF70;
  if (!qword_28140FF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A24DD8, &unk_275AEA4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140FF70);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t TimeDelta.init(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = __OFADD__(result, v6);
  v8 = result + v6;
  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

id sub_275A9A320()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  result = [v0 setZeroFormattingBehavior_];
  qword_28140FFC0 = v0;
  return result;
}

uint64_t TimeDelta.prettyDescription.getter(uint64_t a1)
{
  if ((a1 + 59999) < 0x1D4BF)
  {
    goto LABEL_6;
  }

  if (qword_28140FFB8 != -1)
  {
    swift_once();
  }

  v2 = [qword_28140FFC0 stringFromTimeInterval_];
  if (v2)
  {
    v3 = v2;
    v4 = sub_275AE5684();

    return v4;
  }

  else
  {
LABEL_6:
    sub_275AE5864();
    MEMORY[0x277C86E00](115, 0xE100000000000000);
    return 0;
  }
}

uint64_t TimeDelta.debugDescription.getter(uint64_t a1)
{
  v1 = TimeDelta.prettyDescription.getter(a1);
  MEMORY[0x277C86E00](v1);

  MEMORY[0x277C86E00](41, 0xE100000000000000);
  return 0x28748688E2;
}

Swift::Void __swiftcall TimeDelta.sleep()()
{
  v1 = v0;
  v2 = 1000 * v0;
  if ((v1 * 1000) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v2))
  {
    usleep(v2);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_275A9A570()
{
  result = qword_280A24DE8;
  if (!qword_280A24DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24DE8);
  }

  return result;
}

uint64_t sub_275A9A614()
{
  v1 = TimeDelta.prettyDescription.getter(*v0);
  MEMORY[0x277C86E00](v1);

  MEMORY[0x277C86E00](41, 0xE100000000000000);
  return 0x28748688E2;
}

void static Timestamp.now()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = v2 * 1000.0;
  if (COERCE__INT64(fabs(v2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t static Timestamp.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t Timestamp.toDate()(uint64_t result)
{
  if (qword_28140FFA0 != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (__OFSUB__(result, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {

    return sub_275AE5174();
  }

  return result;
}

uint64_t sub_275A9A7E0()
{
  v0 = sub_275AE51F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275AE5174();
  sub_275AE51C4();
  v6 = v5;
  result = (*(v1 + 8))(v4, v0);
  v8 = v6 * 1000.0;
  if (COERCE__INT64(fabs(v6 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    qword_28140FF98 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_275A9A914()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_275AE5674();
  [v0 setDateFormat_];

  qword_28140FFB0 = v0;
}

uint64_t static Timestamp.fromCFAbsoluteTime(_:)(double a1)
{
  v2 = a1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    v1 = v2;
    if (qword_28140FFA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  swift_once();
LABEL_5:
  result = v1 + qword_28140FF98;
  if (__OFADD__(v1, qword_28140FF98))
  {
    __break(1u);
  }

  return result;
}

uint64_t static Timestamp.fromDate(_:)()
{
  sub_275AE5184();
  v2 = v1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    v0 = v2;
    if (qword_28140FFA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  swift_once();
LABEL_5:
  result = v0 + qword_28140FF98;
  if (__OFADD__(v0, qword_28140FF98))
  {
    __break(1u);
  }

  return result;
}

uint64_t static Timestamp.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Double __swiftcall Timestamp.toCFAbsoluteTime()()
{
  if (qword_28140FFA0 != -1)
  {
    v1 = v0;
    swift_once();
    v0 = v1;
  }

  if (!__OFSUB__(v0, qword_28140FF98))
  {
    return (v0 - qword_28140FF98) / 1000.0;
  }

  __break(1u);
  return result;
}

NSNumber __swiftcall Timestamp.toNSNumber()()
{
  if (qword_28140FFA0 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  if (__OFSUB__(v0, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {
    v2.n128_f64[0] = (v0 - qword_28140FF98) / 1000.0;
  }

  return MEMORY[0x28211EAC0](v2);
}

uint64_t Timestamp.hourOfDay(withTimezone:)(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v30 = a1;
  v32 = sub_275AE5224();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DF0, &qword_275AEA5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_275AE5274();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v28 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v31 = sub_275AE5244();
  v17 = *(v31 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v31);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_275AE51F4();
  v21 = *(v29 - 8);
  v22 = *(v21 + 64);
  result = MEMORY[0x28223BE20](v29);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140FFA0 != -1)
  {
    result = swift_once();
  }

  if (__OFSUB__(v33, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {
    sub_275AE5174();
    sub_275AE5204();
    sub_275A9B0C4(v30, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_275A9B134(v9);
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      (*(v11 + 16))(v28, v16, v10);
      sub_275AE5214();
      (*(v11 + 8))(v16, v10);
    }

    v26 = v32;
    (*(v2 + 104))(v5, *MEMORY[0x277CC9980], v32);
    v27 = sub_275AE5234();
    (*(v2 + 8))(v5, v26);
    (*(v17 + 8))(v20, v31);
    (*(v21 + 8))(v25, v29);
    return v27;
  }

  return result;
}

uint64_t sub_275A9B0C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DF0, &qword_275AEA5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A9B134(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DF0, &qword_275AEA5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Timestamp.dayOfWeek(withTimezone:)(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v32 = a1;
  v34 = sub_275AE5224();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DF0, &qword_275AEA5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_275AE5274();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v30 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v33 = sub_275AE5244();
  v17 = *(v33 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v33);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_275AE51F4();
  v21 = *(v31 - 8);
  v22 = *(v21 + 64);
  result = MEMORY[0x28223BE20](v31);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140FFA0 != -1)
  {
    result = swift_once();
  }

  if (__OFSUB__(v35, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {
    sub_275AE5174();
    sub_275AE5204();
    sub_275A9B0C4(v32, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_275A9B134(v9);
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      (*(v11 + 16))(v30, v16, v10);
      sub_275AE5214();
      (*(v11 + 8))(v16, v10);
    }

    v26 = v34;
    (*(v2 + 104))(v5, *MEMORY[0x277CC99B8], v34);
    v27 = sub_275AE5234();
    (*(v2 + 8))(v5, v26);
    _s31iCloudSubscriptionOptimizerCore9TimestampV18dayOfWeekFormatterySSSiFZ_0(v27);
    v29 = v28;
    (*(v17 + 8))(v20, v33);
    (*(v21 + 8))(v25, v31);
    return v29;
  }

  return result;
}

uint64_t Timestamp.subtract(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFADD__(result, v7);
  v9 = result + v7;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = a7 - v17;
  if (__OFSUB__(a7, v17))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t Timestamp.add(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFADD__(result, v7);
  v9 = result + v7;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = a7 + v17;
  if (__OFADD__(a7, v17))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t Timestamp.debugDescription.getter()
{
  sub_275AE5A14();

  v0 = sub_275AE5A94();
  MEMORY[0x277C86E00](v0);

  MEMORY[0x277C86E00](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

Swift::String __swiftcall Timestamp.toHumanReadable()()
{
  v1 = v0;
  v2 = sub_275AE51F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DF0, &qword_275AEA5C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  if (qword_28140FFA8 != -1)
  {
    swift_once();
  }

  v11 = qword_28140FFB0;
  sub_275AE5254();
  v12 = sub_275AE5274();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_275AE5264();
    (*(v13 + 8))(v10, v12);
  }

  [v11 setTimeZone_];

  if (qword_28140FFA0 != -1)
  {
    v15 = swift_once();
  }

  if (__OFSUB__(v1, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {
    sub_275AE5174();
    v17 = sub_275AE51A4();
    (*(v3 + 8))(v6, v2);
    v18 = [v11 stringFromDate_];

    v19 = sub_275AE5684();
    v21 = v20;

    v15 = v19;
    v16 = v21;
  }

  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t Timestamp.toDateIntervalSince(days:weeks:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE51F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  v16 = 86400000 * a1;
  if ((a1 * 86400000) >> 64 != (86400000 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = 604800000 * a2;
  if ((a2 * 604800000) >> 64 != (604800000 * a2) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  a1 = a3 - v19;
  if (!__OFSUB__(a3, v19))
  {
    if (qword_28140FFA0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  result = swift_once();
LABEL_6:
  v20 = qword_28140FF98;
  if (__OFSUB__(a1, qword_28140FF98))
  {
    __break(1u);
  }

  else
  {
    sub_275AE5174();
    result = (*(v7 + 16))(v12, v15, v6);
    if (!__OFSUB__(a3, v20))
    {
      sub_275AE5174();
      sub_275AE5074();
      return (*(v7 + 8))(v15, v6);
    }
  }

  __break(1u);
  return result;
}

void _s31iCloudSubscriptionOptimizerCore9TimestampV18dayOfWeekFormatterySSSiFZ_0(unint64_t a1)
{
  if (a1 - 8 >= 0xFFFFFFFFFFFFFFF9)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v3 = sub_275AE5674();
    [v2 setDateFormat_];

    v4 = [v2 weekdaySymbols];
    if (v4)
    {
      v5 = v4;
      v6 = sub_275AE5834();

      if (*(v6 + 16) >= a1)
      {
        v7 = (v6 + 16 + 16 * a1);
        v8 = *v7;
        v9 = v7[1];

        sub_275AE5704();

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_275A9BE38()
{
  result = qword_280A24DF8;
  if (!qword_280A24DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24DF8);
  }

  return result;
}

Swift::Int64 __swiftcall TimeUnit.toMillis(_:)(Swift::Int64 a1)
{
  v3 = qword_275AEA750[v1];
  result = a1 * v3;
  if ((a1 * v3) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

Swift::Int64 __swiftcall TimeUnit.from(millis:secs:mins:hours:days:weeks:)(Swift::Int64 millis, Swift::Int64 secs, Swift::Int64 mins, Swift::Int64 hours, Swift::Int64 days, Swift::Int64 weeks)
{
  if ((secs * 1000) >> 64 != (1000 * secs) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = qword_275AEA750[v6];
  v8 = 1000 * secs / v7;
  v9 = __OFADD__(millis / v7, v8);
  v10 = millis / v7 + v8;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((mins * 60000) >> 64 != (60000 * mins) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = 60000 * mins / v7;
  v9 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((hours * 3600000) >> 64 != (3600000 * hours) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = 3600000 * hours / v7;
  v9 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((days * 86400000) >> 64 != (86400000 * days) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = 86400000 * days / v7;
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((weeks * 604800000) >> 64 != (604800000 * weeks) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = 604800000 * weeks / v7;
  millis = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_21:
    __break(1u);
  }

  return millis;
}

uint64_t static TimeUnit.convert(from:in:to:)(uint64_t result, char a2, char a3)
{
  v3 = qword_275AEA750[a2];
  if ((result * v3) >> 64 == (result * v3) >> 63)
  {
    return result * v3 / qword_275AEA750[a3];
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toSecs(_:)(Swift::Int64 result)
{
  v2 = qword_275AEA750[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 1000;
  }

  __break(1u);
  return result;
}

uint64_t TimeUnit.hashValue.getter(unsigned __int8 a1)
{
  sub_275AE5B54();
  MEMORY[0x277C871E0](a1);
  return sub_275AE5B74();
}

uint64_t sub_275A9C0BC()
{
  v1 = *v0;
  sub_275AE5B54();
  MEMORY[0x277C871E0](v1);
  return sub_275AE5B74();
}

uint64_t sub_275A9C130()
{
  v1 = *v0;
  sub_275AE5B54();
  MEMORY[0x277C871E0](v1);
  return sub_275AE5B74();
}

Swift::Int64 __swiftcall TimeUnit.toMinutes(_:)(Swift::Int64 result)
{
  v2 = qword_275AEA750[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 60000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toHours(_:)(Swift::Int64 result)
{
  v2 = qword_275AEA750[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 3600000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toDays(_:)(Swift::Int64 result)
{
  v2 = qword_275AEA750[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 86400000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toWeeks(_:)(Swift::Int64 result)
{
  v2 = qword_275AEA750[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 604800000;
  }

  __break(1u);
  return result;
}

unint64_t sub_275A9C298()
{
  result = qword_280A24E00;
  if (!qword_280A24E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24E00);
  }

  return result;
}

unint64_t sub_275A9C2F0()
{
  result = qword_280A24E08;
  if (!qword_280A24E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A24E10, &qword_275AEA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24E08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeUnit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_275A9C4A4(void *a1)
{
  v35[5] = *MEMORY[0x277D85DE8];
  *&v32 = a1;
  sub_275A9CFE0();
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E30, &qword_275AEA7A0);
  if (swift_dynamicCast())
  {
    sub_275A9D9A4(v33, v35);
    __swift_project_boxed_opaque_existential_0(v35, v35[3]);
    sub_275AE50F4();
    v33[0] = v32;
    __swift_destroy_boxed_opaque_existential_0(v35);
    goto LABEL_40;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_275A9D03C(v33);
  v3 = sub_275AE58F4();
  v4 = sub_275AE5904();
  v5 = sub_275AE58F4();
  v6 = sub_275AE5904();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = sub_275AE58F4();
  v8 = sub_275AE5904();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v33[0] = sub_275A9D89C(v4 - v3);
  *(&v33[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v33[0]);
  v12 = sub_275A9D0A4(sub_275A9D93C);
  v13 = v10;
  v14 = *&v33[0];
  v15 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v33[0] + 16);
      v16 = *(*&v33[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v33[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v33[0]), v33[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v33[0]) - LODWORD(v33[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v33[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v33[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          sub_275AE5134();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v35, 0, 15);
  if (v10 == sub_275AE5904())
  {
    goto LABEL_39;
  }

  v21 = sub_275AE5914();
  v22 = sub_275AE58F4();
  v23 = sub_275AE5904();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v35 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      sub_275AE5144();
      if (v25 == sub_275AE5904())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == sub_275AE5904())
    {
      break;
    }

LABEL_32:
    v21 = sub_275AE5914();
    v26 = sub_275AE58F4();
    v27 = sub_275AE5904();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  sub_275AE5144();
LABEL_39:

LABEL_40:
  v29 = v33[0];
  sub_275A9CC80(*&v33[0], *(&v33[0] + 1));

  sub_275A785F8(v29, *(&v29 + 1));
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t sub_275A9C8A0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v2, qword_280A24E18);
  v5 = __swift_project_value_buffer(v0, qword_280A24E18);
  v9[1] = &type metadata for XpcProtoCodec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E40, &qword_275AEA7B0);
  *v4 = sub_275AE56E4();
  v4[1] = v6;
  v7 = *(v0 + 20);

  sub_275AE5594();
  return sub_275A7B5F0(v4, v5);
}

uint64_t static XpcProtoCodec.encode<A>(_:with:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_275AE5454();
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x277CBEA90]);
  sub_275A9CC80(v5, v7);
  v9 = sub_275AE5154();
  v10 = [v8 initWithData_];

  sub_275A785F8(v5, v7);
  v11 = sub_275AE5674();
  [a2 encodeObject:v10 forKey:v11];

  return sub_275A785F8(v5, v7);
}

uint64_t sub_275A9CC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A9CC80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static XpcProtoCodec.decode<A>(coder:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275AE5304();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_275A9CFE0();
  v10 = sub_275AE5924();
  if (v10)
  {
    v11 = v10;
    sub_275A9C4A4(v11);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_275AE52F4();
    sub_275AE5444();

    v13 = 0;
  }

  else
  {
    if (qword_280A243F0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_280A24E18);
    sub_275A9CC1C(v12, v7);
    sub_275A7B8C0(3u, 0xD000000000000030, 0x8000000275AF10C0);
    sub_275A7819C(v7);
    v13 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v13, 1, a1);
}

unint64_t sub_275A9CFE0()
{
  result = qword_28140FF58;
  if (!qword_28140FF58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28140FF58);
  }

  return result;
}

uint64_t sub_275A9D03C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E38, &qword_275AEA7A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_275A9D0A4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_275A785F8(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_275A785F8(v6, v5);
    *v3 = xmmword_275AEA780;
    sub_275A785F8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_275AE50A4() && __OFSUB__(v6, sub_275AE50D4()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_275AE50E4();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_275AE5084();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_275A9D538(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_275A785F8(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_275AEA780;
    sub_275A785F8(0, 0xC000000000000000);
    sub_275AE5114();
    result = sub_275A9D538(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_275A9D43C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_275A9D634(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_275A9D6EC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_275A9D768(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_275A9D4D0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_275A9D538(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_275AE50A4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_275AE50D4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_275AE50C4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

id sub_275A9D5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_275A9D9DC(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
  }

  return result;
}

uint64_t sub_275A9D634(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_275A9D6EC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_275AE50E4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_275AE5094();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_275AE5124();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_275A9D768(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_275AE50E4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_275AE5094();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_275A9D7EC(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E48, &qword_275AEA7B8);
  v10 = sub_275A9DAD8();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_275A9D43C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_275A9D89C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_275AE50E4();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_275AE50B4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_275AE5124();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_275A9D93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_275A9D4D0(sub_275A9D9BC, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_275A9D9A4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_275A9D9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AE58F4();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != sub_275AE5904())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = sub_275AE5914();
        v12 = sub_275AE58F4();
        result = sub_275AE5904();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = sub_275AE5904();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_275A9DAD8()
{
  result = qword_280A24E50;
  if (!qword_280A24E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A24E48, &qword_275AEA7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24E50);
  }

  return result;
}

uint64_t XpcProtoSubscriptionClient.request(_:withReply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionClientResponse(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  type metadata accessor for XpcSubscriptionClientConnection();
  swift_allocObject();

  v10 = XpcSubscriptionClientConnection.init(forServiceName:onError:)(0xD000000000000031, 0x8000000275AEF080, sub_275A9E230, v9)[3];
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275A9E238;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [v10 request:a1 withReply:v11];

  _Block_release(v11);

  return swift_unknownObjectRelease();
}

uint64_t sub_275A9DE80(uint64_t a1, void (*a2)(id))
{
  v4 = type metadata accessor for SubscriptionClientResponse(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v16 = a1;
  sub_275A9E8A0(&qword_281411B18, type metadata accessor for SubscriptionClientResponse);
  sub_275AE5484();
  sub_275A9E784(v10, v8, type metadata accessor for SubscriptionClientResponse);
  v11 = type metadata accessor for XpcSubscriptionClientResponse();
  v12 = objc_allocWithZone(v11);
  sub_275A9E784(v8, v12 + OBJC_IVAR___ISOXpcSubscriptionClientResponse_proto, type metadata accessor for SubscriptionClientResponse);
  v17.receiver = v12;
  v17.super_class = v11;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  sub_275A9E7EC(v8, type metadata accessor for SubscriptionClientResponse);
  a2(v13);

  return sub_275A9E7EC(v10, type metadata accessor for SubscriptionClientResponse);
}

uint64_t sub_275A9E034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2;
  sub_275A9E8A0(&qword_280A24E58, type metadata accessor for ErrorResponse);
  sub_275AE5484();
  sub_275A9E8E8(a1);
  sub_275A9E950(v7, a1);
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

uint64_t sub_275A9E198(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25810, &unk_275AE93E0);
  sub_275AE5A44();
  v2 = (a1 + *(type metadata accessor for ErrorResponse(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0xE000000000000000;
  return result;
}

void sub_275A9E238(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s31iCloudSubscriptionOptimizerCore08XpcProtoB6ClientC7request_9withReplyyAA0bG7RequestV_yAA0bG8ResponseVctF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionClientResponse(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for SubscriptionClientRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A9E784(a1, v12, type metadata accessor for SubscriptionClientRequest);
  v13 = type metadata accessor for XpcSubscriptionClientRequest();
  v14 = objc_allocWithZone(v13);
  sub_275A9E784(v12, v14 + OBJC_IVAR___ISOXpcSubscriptionClientRequest_proto, type metadata accessor for SubscriptionClientRequest);
  v24.receiver = v14;
  v24.super_class = v13;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  sub_275A9E7EC(v12, type metadata accessor for SubscriptionClientRequest);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_275A9E84C;
  *(v16 + 24) = v15;
  type metadata accessor for XpcSubscriptionClientConnection();
  swift_allocObject();
  swift_retain_n();

  v17 = XpcSubscriptionClientConnection.init(forServiceName:onError:)(0xD000000000000031, 0x8000000275AEF080, sub_275A9E9D4, v16)[3];
  aBlock[4] = sub_275A9E84C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275A9E238;
  aBlock[3] = &block_descriptor_12;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v19 = v22;
  [v17 request:v22 withReply:v18];

  _Block_release(v18);

  return swift_unknownObjectRelease();
}

uint64_t sub_275A9E784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275A9E7EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275A9E84C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 + OBJC_IVAR___ISOXpcSubscriptionClientResponse_proto);
}

uint64_t sub_275A9E8A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275A9E8E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275A9E950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double NewOfferRequest.mlServerScore.getter()
{
  v1 = v0 + *(type metadata accessor for NewOfferRequest(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t NewOfferRequest.litmusInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for NewOfferRequest(0);
  sub_275A5F510(v1 + *(v7 + 24), v6, &qword_280A24650, &qword_275AEAC50);
  v8 = type metadata accessor for LitmusInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A9ED50(v6, a1, type metadata accessor for LitmusInfo);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 256;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24650, &qword_275AEAC50);
  }

  return result;
}