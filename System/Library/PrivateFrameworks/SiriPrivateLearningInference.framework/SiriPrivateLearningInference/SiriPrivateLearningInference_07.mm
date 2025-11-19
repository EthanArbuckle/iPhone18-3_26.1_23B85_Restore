uint64_t sub_222BBA148()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v1 = sub_222BB250C();

  if (v1)
  {
    v2 = [v1 identifier];

    v1 = sub_222C9449C();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v7[0] = v1;
  v7[1] = v4;
  type metadata accessor for ContactSuggestionCandidateNominator();
  v7[2] = 0;
  v7[3] = 0;
  v5 = swift_allocObject();
  sub_222BB9DB4(v7);
  return v5;
}

uint64_t sub_222BBA208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026010, &qword_222C9C058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222BBA274()
{
  v1 = 0x6C6143656E6F6870;
  v2 = 0x50746361746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x736567617373656DLL;
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

uint64_t sub_222BBA304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222BBC428(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222BBA32C(uint64_t a1)
{
  v2 = sub_222BBB8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BBA368(uint64_t a1)
{
  v2 = sub_222BBB8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BBA3A4(uint64_t a1)
{
  v2 = sub_222BBB9DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BBA3E0(uint64_t a1)
{
  v2 = sub_222BBB9DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BBA41C(uint64_t a1)
{
  v2 = sub_222BBB934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BBA458(uint64_t a1)
{
  v2 = sub_222BBB934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BBA494(uint64_t a1)
{
  v2 = sub_222BBBA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BBA4D0(uint64_t a1)
{
  v2 = sub_222BBBA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BBA50C(uint64_t a1)
{
  v2 = sub_222BBBB2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BBA548(uint64_t a1)
{
  v2 = sub_222BBBB2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroundTruthSource.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026068, &qword_222C9C090);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026070, &qword_222C9C098);
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026078, &qword_222C9C0A0);
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026080, &qword_222C9C0A8);
  v33 = *(v15 - 8);
  v16 = *(v33 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026088, &qword_222C9C0B0);
  v42 = *(v19 - 8);
  v43 = v19;
  v20 = *(v42 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - v21;
  v41 = *v2;
  v23 = *(v2 + 2);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BBB8E0();
  sub_222C9536C();
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v50 = 2;
      sub_222BBB9DC();
      v25 = v43;
      sub_222C950BC();
      v48 = v41;
      sub_222BBBA30();
      v26 = v37;
      sub_222C9512C();
      v27 = *(v36 + 8);
      v28 = v10;
    }

    else
    {
      v51 = 3;
      sub_222BBB934();
      v30 = v38;
      v25 = v43;
      sub_222C950BC();
      v49 = v41;
      sub_222BBB988();
      v26 = v40;
      sub_222C9512C();
      v27 = *(v39 + 8);
      v28 = v30;
    }

    v27(v28, v26);
  }

  else if (v23)
  {
    v47 = 1;
    sub_222BBBA84();
    v25 = v43;
    sub_222C950BC();
    v46 = v41;
    sub_222BBBAD8();
    v29 = v35;
    sub_222C9512C();
    (*(v34 + 8))(v14, v29);
  }

  else
  {
    v45 = 0;
    sub_222BBBB2C();
    v25 = v43;
    sub_222C950BC();
    v44 = v41;
    sub_222BBBB80();
    sub_222C9512C();
    (*(v33 + 8))(v18, v15);
  }

  return (*(v42 + 8))(v22, v25);
}

uint64_t GroundTruthSource.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 2) > 1u)
  {
    if (*(v0 + 2) == 2)
    {
      MEMORY[0x223DCA0B0](2);
      goto LABEL_16;
    }

    MEMORY[0x223DCA0B0](3);
    if (v1 > 4u)
    {
      switch(v1)
      {
        case 5u:
          v2 = 3;
          return MEMORY[0x223DCA0B0](v2);
        case 6u:
          v2 = 4;
          return MEMORY[0x223DCA0B0](v2);
        case 7u:
          v2 = 6;
          return MEMORY[0x223DCA0B0](v2);
      }
    }

    else
    {
      switch(v1)
      {
        case 2u:
          v2 = 0;
          return MEMORY[0x223DCA0B0](v2);
        case 3u:
          v2 = 1;
          return MEMORY[0x223DCA0B0](v2);
        case 4u:
          v2 = 2;
          return MEMORY[0x223DCA0B0](v2);
      }
    }

    MEMORY[0x223DCA0B0](5);
    MEMORY[0x223DCA0B0](v1 & 1);
    v2 = v1 >> 8;
    return MEMORY[0x223DCA0B0](v2);
  }

  if (*(v0 + 2))
  {
    MEMORY[0x223DCA0B0](1);
  }

  else
  {
    MEMORY[0x223DCA0B0](0);
  }

LABEL_16:
  sub_222C9452C();
}

uint64_t GroundTruthSource.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_222C952FC();
  GroundTruthSource.hash(into:)();
  return sub_222C9534C();
}

uint64_t GroundTruthSource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0260D8, &qword_222C9C0B8);
  v56 = *(v59 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0260E0, &qword_222C9C0C0);
  v55 = *(v51 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v51);
  v57 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0260E8, &qword_222C9C0C8);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0260F0, &qword_222C9C0D0);
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0260F8, &unk_222C9C0D8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_222BBB8E0();
  v23 = v61;
  sub_222C9535C();
  if (!v23)
  {
    v24 = v15;
    v49 = v12;
    v50 = 0;
    v25 = v11;
    v26 = v57;
    v27 = v58;
    v61 = v17;
    v29 = v59;
    v28 = v60;
    v30 = sub_222C9508C();
    v31 = (2 * *(v30 + 16)) | 1;
    v63 = v30;
    v64 = v30 + 32;
    v65 = 0;
    v66 = v31;
    v32 = sub_222B572D0();
    if (v32 == 4 || v65 != v66 >> 1)
    {
      v36 = sub_222C94DBC();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
      *v38 = &type metadata for GroundTruthSource;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
    }

    else
    {
      v67 = v32;
      if (v32 > 1u)
      {
        if (v32 == 2)
        {
          LOBYTE(v68) = 2;
          sub_222BBB9DC();
          v41 = v26;
          v42 = v50;
          sub_222C94FFC();
          v43 = v61;
          if (!v42)
          {
            sub_222BBBC28();
            v44 = v51;
            sub_222C9507C();
            (*(v55 + 8))(v41, v44);
            (*(v43 + 8))(v20, v16);
            swift_unknownObjectRelease();
            v35 = v68;
            v28 = v60;
            goto LABEL_19;
          }
        }

        else
        {
          LOBYTE(v68) = 3;
          sub_222BBB934();
          v47 = v50;
          sub_222C94FFC();
          v48 = v61;
          if (!v47)
          {
            sub_222BBBBD4();
            sub_222C9507C();
            (*(v56 + 8))(v27, v29);
            (*(v48 + 8))(v20, v16);
            swift_unknownObjectRelease();
            v35 = v68;
            goto LABEL_19;
          }
        }
      }

      else if (v32)
      {
        LOBYTE(v68) = 1;
        sub_222BBBA84();
        v45 = v50;
        sub_222C94FFC();
        if (!v45)
        {
          sub_222BBBC7C();
          v46 = v53;
          sub_222C9507C();
          (*(v54 + 8))(v25, v46);
          (*(v61 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v35 = v68;
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v68) = 0;
        sub_222BBBB2C();
        v33 = v50;
        sub_222C94FFC();
        if (!v33)
        {
          sub_222BBBCD0();
          v34 = v49;
          sub_222C9507C();
          (*(v52 + 8))(v24, v34);
          (*(v61 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v35 = v68;
LABEL_19:
          *v28 = v35;
          *(v28 + 2) = v67;
          return __swift_destroy_boxed_opaque_existential_0Tm(v62);
        }
      }
    }

    (*(v61 + 8))(v20, v16);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v62);
}

uint64_t sub_222BBB614()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_222C952FC();
  GroundTruthSource.hash(into:)();
  return sub_222C9534C();
}

uint64_t sub_222BBB66C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_222C952FC();
  GroundTruthSource.hash(into:)();
  return sub_222C9534C();
}

uint64_t _s28SiriPrivateLearningInference17GroundTruthSourceO2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }

      return sub_222BBDD4C(v4, v6);
    }

    if (v7 != 3)
    {
      return 0;
    }

    if (v4 > 4u)
    {
      switch(v4)
      {
        case 5u:
          return v6 == 5;
        case 6u:
          return v6 == 6;
        case 7u:
          return v6 == 7;
      }
    }

    else
    {
      switch(v4)
      {
        case 2u:
          return v6 == 2;
        case 3u:
          return v6 == 3;
        case 4u:
          return v6 == 4;
      }
    }

    return v6 - 2 >= 6 && ((v6 ^ v4) & 0xFFFFFF01) == 0;
  }

  if (!v5)
  {
    if (!v7)
    {

      return sub_222BBDEAC(v4, v6);
    }

    return 0;
  }

  if (v7 != 1)
  {
    return 0;
  }

  v9 = 0xD000000000000011;
  v10 = "previouslySurfaced";
  if (v4)
  {
    if (v4 == 1)
    {
      v11 = "abandonmentAndInAppFollowup";
    }

    else
    {
      v11 = "partialRepetition";
    }

    v12 = 0xD000000000000011;
  }

  else
  {
    v12 = 0xD00000000000001BLL;
    v11 = "previouslySurfaced";
  }

  if (v6)
  {
    v10 = "abandonmentAndInAppFollowup";
    if (v6 != 1)
    {
      v10 = "partialRepetition";
    }
  }

  else
  {
    v9 = 0xD00000000000001BLL;
  }

  if (v12 == v9 && (v11 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {

    return 1;
  }

  else
  {
    v13 = sub_222C951FC();

    return v13 & 1;
  }
}

unint64_t sub_222BBB8E0()
{
  result = qword_27D026090;
  if (!qword_27D026090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026090);
  }

  return result;
}

unint64_t sub_222BBB934()
{
  result = qword_27D026098;
  if (!qword_27D026098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026098);
  }

  return result;
}

unint64_t sub_222BBB988()
{
  result = qword_27D0260A0;
  if (!qword_27D0260A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260A0);
  }

  return result;
}

unint64_t sub_222BBB9DC()
{
  result = qword_27D0260A8;
  if (!qword_27D0260A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260A8);
  }

  return result;
}

unint64_t sub_222BBBA30()
{
  result = qword_27D0260B0;
  if (!qword_27D0260B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260B0);
  }

  return result;
}

unint64_t sub_222BBBA84()
{
  result = qword_27D0260B8;
  if (!qword_27D0260B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260B8);
  }

  return result;
}

unint64_t sub_222BBBAD8()
{
  result = qword_27D0260C0;
  if (!qword_27D0260C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260C0);
  }

  return result;
}

unint64_t sub_222BBBB2C()
{
  result = qword_27D0260C8;
  if (!qword_27D0260C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260C8);
  }

  return result;
}

unint64_t sub_222BBBB80()
{
  result = qword_27D0260D0;
  if (!qword_27D0260D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260D0);
  }

  return result;
}

unint64_t sub_222BBBBD4()
{
  result = qword_27D026100;
  if (!qword_27D026100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026100);
  }

  return result;
}

unint64_t sub_222BBBC28()
{
  result = qword_27D026108;
  if (!qword_27D026108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026108);
  }

  return result;
}

unint64_t sub_222BBBC7C()
{
  result = qword_27D026110;
  if (!qword_27D026110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026110);
  }

  return result;
}

unint64_t sub_222BBBCD0()
{
  result = qword_27D026118;
  if (!qword_27D026118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026118);
  }

  return result;
}

unint64_t sub_222BBBD28()
{
  result = qword_27D026120;
  if (!qword_27D026120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026120);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GroundTruthSource(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    if ((a2 + 33554179) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GroundTruthSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_222BBBF04()
{
  result = qword_27D026128;
  if (!qword_27D026128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026128);
  }

  return result;
}

unint64_t sub_222BBBF5C()
{
  result = qword_27D026130;
  if (!qword_27D026130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026130);
  }

  return result;
}

unint64_t sub_222BBBFB4()
{
  result = qword_27D026138;
  if (!qword_27D026138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026138);
  }

  return result;
}

unint64_t sub_222BBC00C()
{
  result = qword_27D026140;
  if (!qword_27D026140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026140);
  }

  return result;
}

unint64_t sub_222BBC064()
{
  result = qword_27D026148;
  if (!qword_27D026148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026148);
  }

  return result;
}

unint64_t sub_222BBC0BC()
{
  result = qword_27D026150;
  if (!qword_27D026150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026150);
  }

  return result;
}

unint64_t sub_222BBC114()
{
  result = qword_27D026158;
  if (!qword_27D026158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026158);
  }

  return result;
}

unint64_t sub_222BBC16C()
{
  result = qword_27D026160;
  if (!qword_27D026160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026160);
  }

  return result;
}

unint64_t sub_222BBC1C4()
{
  result = qword_27D026168;
  if (!qword_27D026168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026168);
  }

  return result;
}

unint64_t sub_222BBC21C()
{
  result = qword_27D026170;
  if (!qword_27D026170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026170);
  }

  return result;
}

unint64_t sub_222BBC274()
{
  result = qword_27D026178;
  if (!qword_27D026178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026178);
  }

  return result;
}

unint64_t sub_222BBC2CC()
{
  result = qword_27D026180;
  if (!qword_27D026180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026180);
  }

  return result;
}

unint64_t sub_222BBC324()
{
  result = qword_27D026188;
  if (!qword_27D026188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026188);
  }

  return result;
}

unint64_t sub_222BBC37C()
{
  result = qword_27D026190;
  if (!qword_27D026190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026190);
  }

  return result;
}

unint64_t sub_222BBC3D4()
{
  result = qword_27D026198;
  if (!qword_27D026198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026198);
  }

  return result;
}

uint64_t sub_222BBC428(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6143656E6F6870 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746361746E6F63 && a2 == 0xED000074706D6F72 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000222CAAEB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222BBC5A4(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_222C951FC() & 1) == 0)
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

uint64_t sub_222BBC634(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v38 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  v11 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v13 = &v38 - v12;
  v47 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v14 = *(*(v47 - 1) + 64);
  v15 = MEMORY[0x28223BE20](v47);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v20 = &v38 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_20;
  }

  if (!v21 || a1 == a2)
  {
    v36 = 1;
    return v36 & 1;
  }

  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v38 = (v5 + 32);
  v39 = (v5 + 8);
  v41 = *(v18 + 72);
  v42 = (v5 + 48);
  v46 = v4;
  while (1)
  {
    sub_222BC3370(v23, v20, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    sub_222BC3370(v24, v17, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    if ((sub_222C9362C() & 1) == 0)
    {
LABEL_16:
      sub_222BC33D8(v17, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      sub_222BC33D8(v20, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      goto LABEL_20;
    }

    v25 = v47[5];
    v26 = *(v44 + 48);
    sub_222B5551C(&v20[v25], v13);
    sub_222B5551C(&v17[v25], &v13[v26]);
    v27 = *v42;
    if ((*v42)(v13, 1, v4) != 1)
    {
      break;
    }

    if (v27(&v13[v26], 1, v4) != 1)
    {
      sub_222BC33D8(v17, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      sub_222BC33D8(v20, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      goto LABEL_19;
    }

    sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
LABEL_11:
    v32 = v47;
    if (v20[v47[6]] != v17[v47[6]])
    {
      goto LABEL_16;
    }

    v33 = v20[v47[7]];
    sub_222BC33D8(v20, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v34 = v17[v32[7]];
    sub_222BC33D8(v17, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v35 = v33 ^ v34;
    v4 = v46;
    if ((v35 & 1) == 0)
    {
      v24 += v41;
      v23 += v41;
      if (--v21)
      {
        continue;
      }
    }

    v36 = v35 ^ 1;
    return v36 & 1;
  }

  sub_222B5551C(v13, v45);
  if (v27(&v13[v26], 1, v4) != 1)
  {
    v28 = v43;
    (*v38)(v43, &v13[v26], v4);
    sub_222BC3438(&qword_280FE02A0, MEMORY[0x277CC95F0]);
    v29 = sub_222C9447C();
    v30 = v46;
    v40 = v29;
    v31 = *v39;
    (*v39)(v28, v46);
    v31(v45, v30);
    sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
    if ((v40 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  sub_222BC33D8(v17, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  sub_222BC33D8(v20, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  (*v39)(v45, v4);
LABEL_19:
  sub_222B4FCD4(v13, &qword_27D025290, &unk_222C97C30);
LABEL_20:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_222BBCBC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_222C951FC() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7 || (v5 != v8 || v6 != v7) && (sub_222C951FC() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_222BBCCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinContactGroundTruth();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v43 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    v52 = "quickHangupAndInAppFollowup";
    v53 = "successfulOneShot";
    v54 = "partialRepetition";
    v50 = "abandonmentAndInAppFollowup";
    v51 = "dismissalAndInAppFollowup";
    v48 = "erInteracted";
    v49 = "previouslySurfaced";
    v46 = "disambiguationNotChosen";
    v47 = "disambiguationChosen";
    v44 = "confirmationChosen";
    v45 = "disambiguationAbandoned";
    v43 = "confirmationNotChosen";
    do
    {
      sub_222BC3370(v14, v11, type metadata accessor for ThinContactGroundTruth);
      sub_222BC3370(v15, v8, type metadata accessor for ThinContactGroundTruth);
      if ((sub_222C9362C() & 1) == 0 || ((v18 = *(v4 + 20), v19 = *&v11[v18], v20 = *&v11[v18 + 8], v21 = &v8[v18], v19 == *v21) ? (v22 = v20 == *(v21 + 1)) : (v22 = 0), !v22 && (sub_222C951FC() & 1) == 0))
      {
LABEL_99:
        sub_222BC33D8(v8, type metadata accessor for ThinContactGroundTruth);
        sub_222BC33D8(v11, type metadata accessor for ThinContactGroundTruth);
        return 0;
      }

      v23 = *(v4 + 24);
      v24 = *&v11[v23];
      v25 = v11[v23 + 2];
      v26 = &v8[v23];
      v27 = *&v8[v23];
      v28 = v26[2];
      if (v25 > 1)
      {
        if (v25 != 2)
        {
          if (v28 != 3)
          {
            goto LABEL_99;
          }

          if (v24 > 4u)
          {
            switch(v24)
            {
              case 5u:
                v36 = v27 == 5;
                break;
              case 6u:
                v36 = v27 == 6;
                break;
              case 7u:
                v36 = v27 == 7;
                break;
              default:
                goto LABEL_90;
            }
          }

          else
          {
            switch(v24)
            {
              case 2u:
                v36 = v27 == 2;
                break;
              case 3u:
                v36 = v27 == 3;
                break;
              case 4u:
                v36 = v27 == 4;
                break;
              default:
LABEL_90:
                if (v27 - 2 < 6)
                {
                  goto LABEL_99;
                }

                v41 = v27 ^ v24;
                if (v41)
                {
                  goto LABEL_99;
                }

                v17 = v41 < 0x100;
                goto LABEL_6;
            }
          }

          v17 = v36;
LABEL_6:
          sub_222BC33D8(v8, type metadata accessor for ThinContactGroundTruth);
          sub_222BC33D8(v11, type metadata accessor for ThinContactGroundTruth);
          if ((v17 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_7;
        }

        if (v28 != 2)
        {
          goto LABEL_99;
        }

        if (v24 > 2u)
        {
          if (v24 == 3)
          {
            v29 = 0xD000000000000012;
            v31 = v45;
          }

          else
          {
            v29 = 0xD000000000000015;
            if (v24 == 4)
            {
              v31 = v44;
            }

            else
            {
              v31 = v43;
            }
          }
        }

        else if (v24)
        {
          v29 = 0xD000000000000017;
          if (v24 == 1)
          {
            v31 = v47;
          }

          else
          {
            v31 = v46;
          }
        }

        else
        {
          v29 = 0xD000000000000014;
          v31 = v48;
        }

        if (v27 > 2u)
        {
          if (v27 == 3)
          {
            v32 = 0xD000000000000012;
            v34 = v45;
            v35 = v31 | 0x8000000000000000;
          }

          else
          {
            v32 = 0xD000000000000015;
            if (v27 == 4)
            {
              v34 = v44;
            }

            else
            {
              v34 = v43;
            }

            v35 = v31 | 0x8000000000000000;
          }
        }

        else if (v27)
        {
          v32 = 0xD000000000000017;
          if (v27 == 1)
          {
            v34 = v47;
          }

          else
          {
            v34 = v46;
          }

          v35 = v31 | 0x8000000000000000;
        }

        else
        {
          v32 = 0xD000000000000014;
          v34 = v48;
          v35 = v31 | 0x8000000000000000;
        }
      }

      else if (v25)
      {
        if (v28 != 1)
        {
          goto LABEL_99;
        }

        v32 = 0xD00000000000001BLL;
        if (v24)
        {
          v29 = 0xD000000000000011;
          if (v24 == 1)
          {
            v33 = v50;
            v27 = v27;
            if (!v27)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v33 = v54;
            v27 = v27;
            if (!v27)
            {
LABEL_49:
              v34 = v49;
              v35 = v33 | 0x8000000000000000;
              goto LABEL_68;
            }
          }
        }

        else
        {
          v29 = 0xD00000000000001BLL;
          v33 = v49;
          v27 = v27;
          if (!v27)
          {
            goto LABEL_49;
          }
        }

        v22 = v27 == 1;
        v34 = v54;
        if (v22)
        {
          v34 = v50;
        }

        v32 = 0xD000000000000011;
        v35 = v33 | 0x8000000000000000;
      }

      else
      {
        if (v28)
        {
          goto LABEL_99;
        }

        if (v24 > 1u)
        {
          if (v24 == 2)
          {
            v29 = 0xD000000000000021;
            v30 = v51;
          }

          else
          {
            v29 = 0xD000000000000011;
            v30 = v54;
          }
        }

        else if (v24)
        {
          v29 = 0xD000000000000019;
          v30 = v52;
        }

        else
        {
          v29 = 0xD00000000000001BLL;
          v30 = v53;
        }

        v35 = v30 | 0x8000000000000000;
        v37 = 0xD00000000000001BLL;
        v38 = 0xD000000000000021;
        if (v27 != 2)
        {
          v38 = 0xD000000000000011;
        }

        v39 = v51;
        if (v27 != 2)
        {
          v39 = v54;
        }

        if (v27)
        {
          v37 = 0xD000000000000019;
        }

        v40 = v53;
        if (v27)
        {
          v40 = v52;
        }

        if (v27 <= 1u)
        {
          v32 = v37;
        }

        else
        {
          v32 = v38;
        }

        if (v27 <= 1u)
        {
          v34 = v40;
        }

        else
        {
          v34 = v39;
        }
      }

LABEL_68:
      if (v29 != v32 || v35 != (v34 | 0x8000000000000000))
      {
        v17 = sub_222C951FC();

        goto LABEL_6;
      }

      sub_222BC33D8(v8, type metadata accessor for ThinContactGroundTruth);
      sub_222BC33D8(v11, type metadata accessor for ThinContactGroundTruth);
LABEL_7:
      v15 += v16;
      v14 += v16;
      --v12;
    }

    while (v12);
  }

  return 1;
}

uint64_t sub_222BBD2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 57);
    v4 = (a2 + 57);
    do
    {
      if (*(v3 - 25) != *(v4 - 25) || *(v3 - 17) != *(v4 - 17) || *(v3 - 9) != *(v4 - 9))
      {
        return 0;
      }

      v7 = *(v3 - 1);
      v8 = *(v4 - 1);
      if (v7 > 5)
      {
        switch(v7)
        {
          case 6u:
            if (v8 != 6)
            {
              return 0;
            }

            goto LABEL_36;
          case 7u:
            if (v8 != 7)
            {
              return 0;
            }

            goto LABEL_36;
          case 8u:
            if (v8 != 8)
            {
              return 0;
            }

            goto LABEL_36;
        }
      }

      else
      {
        switch(v7)
        {
          case 3u:
            if (v8 != 3)
            {
              return 0;
            }

            goto LABEL_36;
          case 4u:
            if (v8 != 4)
            {
              return 0;
            }

            goto LABEL_36;
          case 5u:
            if (v8 != 5)
            {
              return 0;
            }

            goto LABEL_36;
        }
      }

      result = 0;
      if ((v8 - 9) > 0xFFFFFFF9 || v7 != v8)
      {
        return result;
      }

LABEL_36:
      v10 = *v3 | (*(v3 + 2) << 16);
      v11 = *v4 | (*(v4 + 2) << 16);
      if (BYTE2(v10) == 255)
      {
        if (BYTE2(v11) != 255)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (BYTE2(v11) == 255)
      {
        return 0;
      }

      if (BYTE2(v10) <= 1u)
      {
        if (!BYTE2(v10))
        {
          if (BYTE2(v11))
          {
            return 0;
          }

          *(v3 + 2);
          if (*v3 > 1u)
          {
            if (*v3 == 2)
            {
              v12 = 0xD000000000000021;
              v13 = "dismissalAndInAppFollowup";
            }

            else
            {
              v12 = 0xD000000000000011;
              v13 = "partialRepetition";
            }
          }

          else if (*v3)
          {
            v12 = 0xD000000000000019;
            v13 = "quickHangupAndInAppFollowup";
          }

          else
          {
            v12 = 0xD00000000000001BLL;
            v13 = "successfulOneShot";
          }

          *(v4 + 2);
          if (*v4 <= 1u)
          {
            if (*v4)
            {
              v15 = 0xD000000000000019;
              v17 = "quickHangupAndInAppFollowup";
            }

            else
            {
              v15 = 0xD00000000000001BLL;
              v17 = "successfulOneShot";
            }

            goto LABEL_102;
          }

          if (*v4 == 2)
          {
            v15 = 0xD000000000000021;
            v17 = "dismissalAndInAppFollowup";
            goto LABEL_102;
          }

          v15 = 0xD000000000000011;
LABEL_86:
          v17 = "partialRepetition";
          goto LABEL_102;
        }

        if (BYTE2(v11) != 1)
        {
          return 0;
        }

        v15 = 0xD00000000000001BLL;
        *(v3 + 2);
        if (*v3)
        {
          v12 = 0xD000000000000011;
          if (*v3 == 1)
          {
            v13 = "abandonmentAndInAppFollowup";
            *(v4 + 2);
            v16 = *v4;
            if (*v4)
            {
              goto LABEL_54;
            }

LABEL_74:
            v17 = "previouslySurfaced";
            goto LABEL_102;
          }

          v13 = "partialRepetition";
          *(v4 + 2);
          v16 = *v4;
          if (!*v4)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v12 = 0xD00000000000001BLL;
          v13 = "previouslySurfaced";
          *(v4 + 2);
          v16 = *v4;
          if (!*v4)
          {
            goto LABEL_74;
          }
        }

LABEL_54:
        v15 = 0xD000000000000011;
        if (v16 == 1)
        {
          v17 = "abandonmentAndInAppFollowup";
          goto LABEL_102;
        }

        goto LABEL_86;
      }

      if (BYTE2(v10) == 2)
      {
        if (BYTE2(v11) != 2)
        {
          return 0;
        }

        *(v3 + 2);
        v14 = *v3;
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v12 = 0xD000000000000012;
            v13 = "disambiguationAbandoned";
          }

          else
          {
            v12 = 0xD000000000000015;
            if (v14 == 4)
            {
              v13 = "confirmationChosen";
            }

            else
            {
              v13 = "confirmationNotChosen";
            }
          }
        }

        else if (*v3)
        {
          v12 = 0xD000000000000017;
          if (v14 == 1)
          {
            v13 = "disambiguationChosen";
          }

          else
          {
            v13 = "disambiguationNotChosen";
          }
        }

        else
        {
          v12 = 0xD000000000000014;
          v13 = "erInteracted";
        }

        *(v4 + 2);
        v20 = *v4;
        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v15 = 0xD000000000000012;
            v17 = "disambiguationAbandoned";
          }

          else
          {
            v15 = 0xD000000000000015;
            if (v20 == 4)
            {
              v17 = "confirmationChosen";
            }

            else
            {
              v17 = "confirmationNotChosen";
            }
          }
        }

        else if (*v4)
        {
          v15 = 0xD000000000000017;
          if (v20 == 1)
          {
            v17 = "disambiguationChosen";
          }

          else
          {
            v17 = "disambiguationNotChosen";
          }
        }

        else
        {
          v15 = 0xD000000000000014;
          v17 = "erInteracted";
        }

LABEL_102:
        if (v12 == v15 && (v13 | 0x8000000000000000) == (v17 | 0x8000000000000000))
        {
        }

        else
        {
          v21 = sub_222C951FC();

          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_6;
      }

      if (BYTE2(v11) != 3)
      {
        return 0;
      }

      *(v4 + 2);
      v18 = *v4;
      *(v3 + 2);
      v19 = *v3;
      if (v19 > 4)
      {
        switch(v19)
        {
          case 5u:
            if (v18 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          case 6u:
            if (v18 != 6)
            {
              return 0;
            }

            goto LABEL_6;
          case 7u:
            if (v18 != 7)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      else
      {
        switch(v19)
        {
          case 2u:
            if (v18 != 2)
            {
              return 0;
            }

            goto LABEL_6;
          case 3u:
            if (v18 != 3)
            {
              return 0;
            }

            goto LABEL_6;
          case 4u:
            if (v18 != 4)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      if ((v18 - 2) < 6)
      {
        return 0;
      }

      *(v4 + 2);
      *(v3 + 2);
      if (((*v4 ^ *v3) & 0xFF01) != 0)
      {
        return 0;
      }

LABEL_6:
      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_222BBD800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinMediaGroundTruth();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_222BC3370(v14, v11, type metadata accessor for ThinMediaGroundTruth);
      sub_222BC3370(v15, v8, type metadata accessor for ThinMediaGroundTruth);
      if ((sub_222C9362C() & 1) == 0)
      {
        break;
      }

      v17 = v4[5];
      v18 = *&v11[v17];
      v19 = *&v11[v17 + 8];
      v20 = &v8[v17];
      v21 = v18 == *v20 && v19 == *(v20 + 1);
      if (!v21 && (sub_222C951FC() & 1) == 0)
      {
        break;
      }

      v22 = v4[6];
      v23 = v11[v22];
      v24 = v11[v22];
      v25 = v8[v22];
      if (v23 < 0)
      {
        if ((v25 & 0x80) == 0 || ((v25 ^ v24) & 0x7F) != 0)
        {
          break;
        }
      }

      else if (v24 != v25)
      {
        break;
      }

      v26 = v4[7];
      v27 = v11[v26];
      v28 = v8[v26];
      if (v27 == 3)
      {
        if (v28 != 3)
        {
          break;
        }

        sub_222BC33D8(v8, type metadata accessor for ThinMediaGroundTruth);
        sub_222BC33D8(v11, type metadata accessor for ThinMediaGroundTruth);
      }

      else
      {
        if (v28 == 3)
        {
          break;
        }

        sub_222BC33D8(v8, type metadata accessor for ThinMediaGroundTruth);
        sub_222BC33D8(v11, type metadata accessor for ThinMediaGroundTruth);
        if (v27 != v28)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_222BC33D8(v8, type metadata accessor for ThinMediaGroundTruth);
    sub_222BC33D8(v11, type metadata accessor for ThinMediaGroundTruth);
  }

  return 0;
}

uint64_t sub_222BBDAA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 57);
    v4 = (a2 + 57);
    do
    {
      if (*(v3 - 25) != *(v4 - 25) || *(v3 - 17) != *(v4 - 17) || *(v3 - 9) != *(v4 - 9))
      {
        return 0;
      }

      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v7 > 5)
      {
        switch(v7)
        {
          case 6u:
            if (v9 != 6)
            {
              return 0;
            }

            goto LABEL_36;
          case 7u:
            if (v9 != 7)
            {
              return 0;
            }

            goto LABEL_36;
          case 8u:
            if (v9 != 8)
            {
              return 0;
            }

            goto LABEL_36;
        }
      }

      else
      {
        switch(v7)
        {
          case 3u:
            if (v9 != 3)
            {
              return 0;
            }

            goto LABEL_36;
          case 4u:
            if (v9 != 4)
            {
              return 0;
            }

            goto LABEL_36;
          case 5u:
            if (v9 != 5)
            {
              return 0;
            }

            goto LABEL_36;
        }
      }

      result = 0;
      if ((v9 - 9) > 0xFFFFFFF9 || v7 != v9)
      {
        return result;
      }

LABEL_36:
      if (v8 > 0xF7)
      {
        if (v10 <= 0xF7)
        {
          return 0;
        }
      }

      else
      {
        if (v10 > 0xF7)
        {
          return 0;
        }

        result = 0;
        if ((v8 & 0x80) != 0)
        {
          if ((v10 & 0x80) == 0 || ((v10 ^ v8) & 0x7F) != 0)
          {
            return result;
          }
        }

        else if ((v10 & 0x80) != 0 || v8 != v10)
        {
          return result;
        }
      }

      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_222BBDC04(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 16);
    v23[0] = *v5;
    v23[1] = v8;
    v24 = *(v5 + 32);
    v25 = *(v5 + 48);
    v19 = v23[0];
    v20 = v8;
    v21 = v24;
    v22 = v25;
    v9 = *v6;
    v10 = v6[1];
    v11 = v6[2];
    v27 = *(v6 + 24);
    v26[1] = v10;
    v26[2] = v11;
    v26[0] = v9;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v27;
    sub_222B554C0(v23, v14);
    sub_222B554C0(v26, v14);
    v12 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v19, &v15);
    v28[0] = v15;
    v28[1] = v16;
    v28[2] = v17;
    v29 = v18;
    sub_222B55A80(v28);
    v30[0] = v19;
    v30[1] = v20;
    v30[2] = v21;
    v31 = v22;
    sub_222B55A80(v30);
    if (!v12)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 56);
    v5 += 56;
  }

  return 1;
}

uint64_t sub_222BBDD4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = "erInteracted";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = "confirmationChosen";
  }

  else
  {
    v5 = "confirmationNotChosen";
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (a1 == 3)
  {
    v7 = "disambiguationAbandoned";
  }

  else
  {
    v7 = v5;
  }

  v8 = 0xD000000000000017;
  if (v4 == 1)
  {
    v9 = "disambiguationChosen";
  }

  else
  {
    v9 = "disambiguationNotChosen";
  }

  if (!v4)
  {
    v8 = 0xD000000000000014;
    v9 = "erInteracted";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v6;
    v10 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000012;
      v3 = "disambiguationAbandoned";
    }

    else if (a2 == 4)
    {
      v3 = "confirmationChosen";
    }

    else
    {
      v3 = "confirmationNotChosen";
    }
  }

  else if (a2)
  {
    v2 = 0xD000000000000017;
    if (a2 == 1)
    {
      v3 = "disambiguationChosen";
    }

    else
    {
      v3 = "disambiguationNotChosen";
    }
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_222C951FC();
  }

  return v11 & 1;
}

uint64_t sub_222BBDEAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "dismissalAndInAppFollowup";
      v3 = 0xD000000000000021;
    }

    else
    {
      v4 = "partialRepetition";
      v3 = 0xD000000000000011;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000019;
    }

    else
    {
      v3 = 0xD00000000000001BLL;
    }

    if (v2)
    {
      v4 = "quickHangupAndInAppFollowup";
    }

    else
    {
      v4 = "successfulOneShot";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000021;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v6 = "dismissalAndInAppFollowup";
    }

    else
    {
      v6 = "partialRepetition";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }

    if (a2)
    {
      v6 = "quickHangupAndInAppFollowup";
    }

    else
    {
      v6 = "successfulOneShot";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_222C951FC();
  }

  return v7 & 1;
}

uint64_t sub_222BBDFE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000021;
  v3 = "edia.PlayMediaIntent";
  v4 = a1;
  v5 = 0xD000000000000024;
  if (a1 == 4)
  {
    v6 = "GroundTruthExistsToConsider";
  }

  else
  {
    v5 = 0xD000000000000021;
    v6 = "aturisationTriggered";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "enerationTriggered";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000021;
  }

  else
  {
    v9 = 0xD000000000000022;
  }

  if (v4 == 1)
  {
    v10 = "PIMSPluginRunTriggered";
  }

  else
  {
    v10 = "aluationTriggered";
  }

  if (!v4)
  {
    v9 = 0xD000000000000016;
    v10 = "edia.PlayMediaIntent";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "enerationTriggered";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000024;
      v3 = "GroundTruthExistsToConsider";
    }

    else
    {
      v3 = "aturisationTriggered";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "PIMSPluginRunTriggered";
    }

    else
    {
      v2 = 0xD000000000000022;
      v3 = "aluationTriggered";
    }
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_222C951FC();
  }

  return v12 & 1;
}

uint64_t sub_222BBE148(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00736567617373;
  v3 = 0x654D6E69616D6F64;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x68506E69616D6F64;
    }

    else
    {
      v5 = 0x654D6E69616D6F64;
    }

    if (v4)
    {
      v6 = 0xEF6C6C6143656E6FLL;
    }

    else
    {
      v6 = 0xEE00736567617373;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x656D7269666E6F63;
    v6 = 0xE900000000000064;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6574616E696D6F6ELL;
    }

    else
    {
      v5 = 0x6974636572726F63;
    }

    if (v4 == 3)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xEA00000000006E6FLL;
    }
  }

  v7 = 0x656D7269666E6F63;
  v8 = 0xE900000000000064;
  v9 = 0x6574616E696D6F6ELL;
  v10 = 0xE900000000000064;
  if (a2 != 3)
  {
    v9 = 0x6974636572726F63;
    v10 = 0xEA00000000006E6FLL;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x68506E69616D6F64;
    v2 = 0xEF6C6C6143656E6FLL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_222C951FC();
  }

  return v13 & 1;
}

uint64_t sub_222BBE304(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 3u)
  {
    v9 = 0x8000000222CA9630;
    v10 = 0xD000000000000014;
    if (a1 == 6)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x8000000222CA9650;
    }

    if (a1 == 4)
    {
      v11 = 0x6369755169726973;
    }

    else
    {
      v11 = 0xD000000000000012;
    }

    if (a1 == 4)
    {
      v12 = 0xEF65676E6168436BLL;
    }

    else
    {
      v12 = 0x8000000222CA9610;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v3 <= 5)
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
    v4 = 0x756C636E6F636E69;
    v5 = 0xEC00000065766973;
    if (a1 != 2)
    {
      v4 = 0x7561506B63697571;
      v5 = 0xEA00000000006573;
    }

    v6 = 0x73736563637573;
    if (!a1)
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v3 <= 1)
    {
      v8 = 0xE700000000000000;
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
        v13 = 0x8000000222CA9630;
        if (v7 != 0xD000000000000011)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = 0x8000000222CA9650;
        if (v7 != 0xD000000000000014)
        {
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEF65676E6168436BLL;
      if (v7 != 0x6369755169726973)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = 0x8000000222CA9610;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_49;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEC00000065766973;
        if (v7 != 0x756C636E6F636E69)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v2 = 0x7561506B63697571;
      v13 = 0xEA00000000006573;
    }

    else
    {
      v13 = 0xE700000000000000;
      if (a2)
      {
        if (v7 != 0x73736563637573)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }
    }

    if (v7 != v2)
    {
LABEL_49:
      v14 = sub_222C951FC();
      goto LABEL_50;
    }
  }

LABEL_46:
  if (v8 != v13)
  {
    goto LABEL_49;
  }

  v14 = 1;
LABEL_50:

  return v14 & 1;
}

uint64_t sub_222BBE5AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000003ELL;
  v3 = "BMNowPlayingEvent";
  if (a1 > 4u)
  {
    v4 = "ingEventNotPresent";
    v11 = 0xD000000000000047;
    v12 = "iaIntentEventNotPresent";
    v13 = 0xD000000000000049;
    if (a1 != 8)
    {
      v13 = 0xD000000000000033;
      v12 = "iaTaskRequestIdNotPresent";
    }

    if (a1 != 7)
    {
      v11 = v13;
      v4 = v12;
    }

    v8 = "actionsNotPresent";
    v14 = 0xD000000000000042;
    if (a1 == 5)
    {
      v14 = 0xD00000000000003ELL;
    }

    else
    {
      v8 = "UnderstandingUnredactionFailed";
    }

    v9 = a1 <= 6u;
    if (a1 <= 6u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = "diaItemSearchResultsNotPresent";
    v5 = 0xD000000000000036;
    v6 = "imaryTaskUSONotPresent";
    v7 = 0xD00000000000003CLL;
    if (a1 != 3)
    {
      v7 = 0xD000000000000041;
      v6 = "UnderstandingGraphNotPresent";
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "PlaybackContextTier1NotPresent";
    if (!a1)
    {
      v8 = "BMNowPlayingEvent";
    }

    v9 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v10 = 0xD00000000000003ELL;
    }

    else
    {
      v10 = v5;
    }
  }

  if (v9)
  {
    v15 = v8;
  }

  else
  {
    v15 = v4;
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v3 = "actionsNotPresent";
      }

      else
      {
        v3 = "UnderstandingUnredactionFailed";
        v2 = 0xD000000000000042;
      }
    }

    else if (a2 == 7)
    {
      v3 = "ingEventNotPresent";
      v2 = 0xD000000000000047;
    }

    else if (a2 == 8)
    {
      v3 = "iaIntentEventNotPresent";
      v2 = 0xD000000000000049;
    }

    else
    {
      v3 = "iaTaskRequestIdNotPresent";
      v2 = 0xD000000000000033;
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "PlaybackContextTier1NotPresent";
    }
  }

  else if (a2 == 2)
  {
    v3 = "diaItemSearchResultsNotPresent";
    v2 = 0xD000000000000036;
  }

  else if (a2 == 3)
  {
    v3 = "imaryTaskUSONotPresent";
    v2 = 0xD00000000000003CLL;
  }

  else
  {
    v3 = "UnderstandingGraphNotPresent";
    v2 = 0xD000000000000041;
  }

  if (v10 == v2 && (v15 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_222C951FC();
  }

  return v16 & 1;
}

uint64_t sub_222BBE80C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000636973;
  v3 = 0x754D6E69616D6F64;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x8000000222CA93E0;
    if (a1 == 6)
    {
      v12 = 0xD000000000000013;
    }

    else
    {
      v12 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v11 = 0x8000000222CA9400;
    }

    v13 = 0xE700000000000000;
    v14 = 0x7972617262696CLL;
    if (a1 != 4)
    {
      v14 = 0xD000000000000011;
      v13 = 0x8000000222CA93C0;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x6574616E696D6F6ELL;
    v6 = 0xE900000000000064;
    if (a1 != 2)
    {
      v5 = 0x6974636572726F63;
      v6 = 0xEA00000000006E6FLL;
    }

    v7 = 0x656D7269666E6F63;
    v8 = 0xE900000000000064;
    if (!a1)
    {
      v7 = 0x754D6E69616D6F64;
      v8 = 0xEB00000000636973;
    }

    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x8000000222CA93E0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x8000000222CA9400;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v9 != 0x7972617262696CLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0x8000000222CA93C0;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x6574616E696D6F6ELL;
LABEL_35:
        v2 = 0xE900000000000064;
        if (v9 != v15)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v3 = 0x6974636572726F63;
      v2 = 0xEA00000000006E6FLL;
    }

    else if (a2)
    {
      v15 = 0x656D7269666E6F63;
      goto LABEL_35;
    }

    if (v9 != v3)
    {
LABEL_47:
      v16 = sub_222C951FC();
      goto LABEL_48;
    }
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_222BBEA9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "nerationTriggered";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "INSendMessageIntent";
    }

    else
    {
      v5 = "INPlayMediaIntent";
    }

    v4 = 0xD000000000000011;
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3)
    {
      v5 = "INStartCallIntent";
    }

    else
    {
      v5 = "nerationTriggered";
    }
  }

  v6 = "INSendMessageIntent";
  if (a2 != 2)
  {
    v6 = "INPlayMediaIntent";
  }

  v7 = 0xD000000000000013;
  if (a2)
  {
    v2 = "INStartCallIntent";
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_222C951FC();
  }

  return v10 & 1;
}

uint64_t sub_222BBEBA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = "actions";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "pimsPhantomTurnRemovalEnabled";
    if (a1 != 6)
    {
      v11 = "adaptivePICSGeneration";
    }

    v12 = "pimsInAppFollowup";
    v13 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v13 = 0xD00000000000001DLL;
      v12 = "pimsWakeWordTrimmingEnabled";
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = 0xD000000000000016;
    }

    if (v4 <= 5)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD00000000000001DLL;
    v6 = "pimsShadowLogging";
    v7 = 0xD000000000000017;
    if (a1 != 2)
    {
      v7 = 0xD000000000000011;
      v6 = "pimsSuggestionSurfacing";
    }

    v8 = "partialRepetitionsInPhoneCall";
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v8 = "actions";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = "adaptivePICSGeneration";
      }

      else
      {
        v14 = "picsRuntimeInSiriVocab";
      }

      v3 = (v14 - 32);
      v2 = 0xD000000000000016;
    }

    else if (a2 == 4)
    {
      v3 = "pimsInAppFollowup";
      v2 = 0xD00000000000001BLL;
    }

    else
    {
      v3 = "pimsWakeWordTrimmingEnabled";
      v2 = 0xD00000000000001DLL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "pimsShadowLogging";
      v2 = 0xD000000000000017;
    }

    else
    {
      v3 = "pimsSuggestionSurfacing";
    }
  }

  else if (a2)
  {
    v3 = "partialRepetitionsInPhoneCall";
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_222C951FC();
  }

  return v15 & 1;
}

uint64_t sub_222BBED9C()
{
  sub_222C9452C();
}

uint64_t sub_222BBEEE4()
{
  sub_222C9452C();
}

uint64_t sub_222BBF024()
{
  sub_222C9452C();
}

uint64_t sub_222BBF170()
{
  sub_222C9452C();
}

uint64_t sub_222BBF27C()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BBF360()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BBF448()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BBF5A4()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BBF704()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t PlusMediaSuggestion.tags.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion() + 44));
}

uint64_t type metadata accessor for PlusMediaSuggestion()
{
  result = qword_280FDF360;
  if (!qword_280FDF360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlusMediaSuggestion.isCorrection.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion() + 44));
  if (*(v1 + 16) && (v2 = *(v1 + 40), sub_222C952FC(), sub_222C9452C(), v3 = sub_222C9534C(), v4 = -1 << *(v1 + 32), v5 = v3 & ~v4, ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (*(*(v1 + 48) + v5) != 3)
    {
      v7 = sub_222C951FC();

      if ((v7 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v7 & 1;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t PlusMediaSuggestion.surfacedBefore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion() + 44));
  if (*(v1 + 16) && (v2 = *(v1 + 40), sub_222C952FC(), sub_222C9452C(), v3 = sub_222C9534C(), v4 = -1 << *(v1 + 32), v5 = v3 & ~v4, ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = *(*(v1 + 48) + v5);
      if (v7 > 3 && *(*(v1 + 48) + v5) > 5u && v7 != 6)
      {
        break;
      }

      v8 = sub_222C951FC();

      if ((v8 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v8 & 1;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t PlusMediaSuggestion.isNominated.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion() + 44));
  if (*(v1 + 16) && (v2 = *(v1 + 40), sub_222C952FC(), sub_222C9452C(), v3 = sub_222C9534C(), v4 = -1 << *(v1 + 32), v5 = v3 & ~v4, ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (*(*(v1 + 48) + v5) > 3u || *(*(v1 + 48) + v5) <= 1u || *(*(v1 + 48) + v5) == 3)
    {
      v7 = sub_222C951FC();

      if ((v7 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v7 & 1;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t PlusMediaSuggestion.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_222BBFF8C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PlusMediaSuggestion() + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 24);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_222B554C0(&v9, v8);
}

uint64_t PlusMediaSuggestion.contributingGroundTruth.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion() + 28));
}

uint64_t PlusMediaSuggestion.scoreHistory.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion() + 36));
}

uint64_t PlusMediaSuggestion.init(id:leftHandKey:rightHandValue:fromThinGroundTruth:timestamp:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v14 = sub_222C9367C();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3[1];
  v27 = *a3;
  v28 = v19;
  v29 = a3[2];
  v30 = *(a3 + 24);
  v20 = v15[2];
  v20(v18, a1, v14);
  v20(a6, v18, v14);
  v21 = type metadata accessor for PlusMediaSuggestion();
  *&a6[v21[5]] = a2;
  v22 = &a6[v21[6]];
  v23 = v28;
  *v22 = v27;
  *(v22 + 1) = v23;
  *(v22 + 2) = v29;
  *(v22 + 24) = v30;

  *&a6[v21[7]] = sub_222C16F98(20, a4);
  *&a6[v21[10]] = a7;
  *&a6[v21[11]] = a5;
  *&a6[v21[8]] = 0;
  v24 = sub_222C17258(0x14uLL, MEMORY[0x277D84F90]);

  v25 = v15[1];
  v25(a1, v14);
  result = (v25)(v18, v14);
  *&a6[v21[9]] = v24;
  return result;
}

uint64_t PlusMediaSuggestion.init(id:leftHandKey:rightHandValue:fromGroundTruth:timestamp:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v85 = a5;
  v86 = a1;
  v12 = type metadata accessor for MediaFeedbackGroundTruth();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v81 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = v78 - v16;
  v99 = type metadata accessor for MediaGroundTruth();
  v17 = *(*(v99 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v99);
  v20 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v98 = v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v78 - v24;
  v100 = type metadata accessor for ThinMediaGroundTruth();
  v26 = *(v100 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v100);
  v30 = v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v97 = v78 - v31;
  v89 = sub_222C9367C();
  v32 = *(*(v89 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v89);
  v83 = v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v82 = v78 - v36;
  v37 = a3[1];
  v107 = *a3;
  v38 = a3[2];
  v108 = v37;
  v109 = v38;
  v110 = *(a3 + 24);
  v39 = *(a4 + 16);
  v84 = v35;
  if (!v39)
  {

    v65 = MEMORY[0x277D84F90];
    v64 = v86;
    goto LABEL_20;
  }

  v79 = a2;
  v80 = a6;
  v78[1] = a4;
  v40 = a4 + 32;
  v41 = v81;
  v88 = v81 + 49;
  v90 = v20 + 49;
  v87 = (v35 + 8);
  v95 = (v26 + 56);
  v92 = v26;
  v94 = (v26 + 48);
  v101 = MEMORY[0x277D84F90];
  v96 = v25;
  v91 = v20;
  do
  {
    v42 = v41;
    v43 = v12;
    sub_222B43E3C(v40, &v106);
    sub_222B43E3C(&v106, v103);
    v45 = v104;
    v44 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v44 + 24))(v45, v44);
    v46 = v104;
    v47 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    v48 = (*(v47 + 40))(v46, v47);
    v49 = v100;
    v50 = &v30[*(v100 + 20)];
    *v50 = v48;
    v50[1] = v51;
    sub_222B43E3C(v103, v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
    v52 = v98;
    v53 = v99;
    if (swift_dynamicCast())
    {
      v54 = v91;
      sub_222BC2714(v52, v91, type metadata accessor for MediaGroundTruth);
      v30[*(v49 + 24)] = *(v54 + *(v53 + 20));
      v55 = v90[*(v53 + 32)];
      sub_222BC33D8(v54, type metadata accessor for MediaGroundTruth);
      v12 = v43;
      v41 = v42;
LABEL_9:
      v57 = v96;
      v30[*(v49 + 28)] = v55;
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      sub_222BC3370(v30, v57, type metadata accessor for ThinMediaGroundTruth);
      (*v95)(v57, 0, 1, v49);
      __swift_destroy_boxed_opaque_existential_0Tm(v103);
      sub_222BC33D8(v30, type metadata accessor for ThinMediaGroundTruth);
      goto LABEL_11;
    }

    v56 = v93;
    v12 = v43;
    if (swift_dynamicCast())
    {
      v41 = v42;
      sub_222BC2714(v56, v42, type metadata accessor for MediaFeedbackGroundTruth);
      v49 = v100;
      v30[*(v100 + 24)] = *(v42 + *(v12 + 20)) | 0x80;
      v55 = v88[*(v12 + 28)];
      sub_222BC33D8(v42, type metadata accessor for MediaFeedbackGroundTruth);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    (*v87)(v30, v89);

    v57 = v96;
    v49 = v100;
    (*v95)(v96, 1, 1, v100);
    v41 = v42;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0Tm(&v106);
    if ((*v94)(v57, 1, v49) == 1)
    {
      sub_222B4FCD4(v57, &qword_27D025890, &unk_222C9C7B0);
    }

    else
    {
      sub_222BC2714(v57, v97, type metadata accessor for ThinMediaGroundTruth);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v58 = v101;
      }

      else
      {
        v58 = sub_222B4A864(0, v101[2] + 1, 1, v101);
      }

      v60 = v58[2];
      v59 = v58[3];
      v61 = v92;
      if (v60 >= v59 >> 1)
      {
        v63 = sub_222B4A864(v59 > 1, v60 + 1, 1, v58);
        v61 = v92;
        v58 = v63;
      }

      v58[2] = v60 + 1;
      v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v101 = v58;
      sub_222BC2714(v97, v58 + v62 + *(v61 + 72) * v60, type metadata accessor for ThinMediaGroundTruth);
    }

    v40 += 40;
    --v39;
  }

  while (v39);

  a6 = v80;
  v64 = v86;
  a2 = v79;
  v65 = v101;
LABEL_20:
  v66 = v84;
  v67 = *(v84 + 16);
  v68 = v82;
  v69 = v89;
  v67(v82, v64, v89);
  v70 = v83;
  v67(v83, v68, v69);
  v67(a6, v70, v69);
  v71 = type metadata accessor for PlusMediaSuggestion();
  *&a6[v71[5]] = a2;
  v72 = &a6[v71[6]];
  v73 = v108;
  v74 = v109;
  *v72 = v107;
  *(v72 + 1) = v73;
  *(v72 + 2) = v74;
  *(v72 + 24) = v110;

  *&a6[v71[7]] = sub_222C16F98(20, v65);
  *&a6[v71[10]] = a7;
  *&a6[v71[11]] = v85;
  *&a6[v71[8]] = 0;
  v75 = sub_222C17258(0x14uLL, MEMORY[0x277D84F90]);

  v76 = *(v66 + 8);
  v76(v64, v69);
  v76(v70, v69);
  result = (v76)(v68, v69);
  *&a6[v71[9]] = v75;
  return result;
}

BOOL PlusMediaSuggestion.hasSameMapping(as:)(uint64_t a1)
{
  v3 = type metadata accessor for PlusMediaSuggestion();
  if (_s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(*(v1 + *(v3 + 20)), *(a1 + *(v3 + 20))))
  {
    v4 = (v1 + *(v3 + 24));
    v5 = v4[1];
    v23[0] = *v4;
    v23[1] = v5;
    v7 = *v4;
    v6 = v4[1];
    v23[2] = v4[2];
    v24 = *(v4 + 24);
    v8 = v4[2];
    v20 = v6;
    v21 = v8;
    v22 = *(v4 + 24);
    v19 = v7;
    v9 = (a1 + *(v3 + 24));
    v10 = v9[2];
    v11 = *v9;
    v12 = *v9;
    v26 = v9[1];
    v27 = v10;
    v25 = v11;
    v28 = *(v9 + 24);
    v15 = v12;
    v16 = v26;
    v17 = v9[2];
    v18 = *(v9 + 24);
    sub_222B554C0(v23, v31);
    sub_222B554C0(&v25, v31);
    v13 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v19, &v15);
    v29[0] = v15;
    v29[1] = v16;
    v29[2] = v17;
    v30 = v18;
    sub_222B55A80(v29);
    v31[0] = v19;
    v31[1] = v20;
    v31[2] = v21;
    v32 = v22;
    sub_222B55A80(v31);
  }

  else
  {
    return 0;
  }

  return v13;
}

uint64_t PlusMediaSuggestion.hasSameContent(as:)(uint64_t a1)
{
  v3 = type metadata accessor for PlusMediaSuggestion();
  if ((_s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(*(v1 + v3[5]), *(a1 + v3[5])) & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = (v1 + v3[6]);
  v5 = v4[1];
  v25[0] = *v4;
  v25[1] = v5;
  v7 = *v4;
  v6 = v4[1];
  v25[2] = v4[2];
  v26 = *(v4 + 24);
  v8 = v4[2];
  v22 = v6;
  v23 = v8;
  v24 = *(v4 + 24);
  v21 = v7;
  v9 = (a1 + v3[6]);
  v10 = v9[2];
  v11 = *v9;
  v12 = *v9;
  v28 = v9[1];
  v29 = v10;
  v27 = v11;
  v30 = *(v9 + 24);
  v17 = v12;
  v18 = v28;
  v19 = v9[2];
  v20 = *(v9 + 24);
  sub_222B554C0(v25, v16);
  sub_222B554C0(&v27, v16);
  v13 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v21, &v17);
  v31[0] = v17;
  v31[1] = v18;
  v31[2] = v19;
  v32 = v20;
  sub_222B55A80(v31);
  v33[0] = v21;
  v33[1] = v22;
  v33[2] = v23;
  v34 = v24;
  sub_222B55A80(v33);
  if (v13)
  {
    v14 = sub_222BBD800(*(v1 + v3[7]), *(a1 + v3[7]));
  }

  else
  {
LABEL_4:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_222BC0E88()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D617473656D6974;
  if (v1 != 6)
  {
    v3 = 1936154996;
  }

  v4 = 0x65726F6373;
  if (v1 != 4)
  {
    v4 = 0x73694865726F6373;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E61487468676972;
  if (v1 != 2)
  {
    v5 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0x646E61487466656CLL;
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

uint64_t sub_222BC0F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222BC30C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222BC0FC4(uint64_t a1)
{
  v2 = sub_222BC292C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BC1000(uint64_t a1)
{
  v2 = sub_222BC292C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlusMediaSuggestion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261A0, &qword_222C9C7C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BC292C();
  sub_222C9536C();
  LOBYTE(v28[0]) = 0;
  sub_222C9367C();
  sub_222BC3438(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for PlusMediaSuggestion();
    v31 = *(v3 + v11[5]);
    v30 = 1;
    sub_222C9386C();
    sub_222BC3438(&qword_27D025150, MEMORY[0x277D5E9D8]);
    sub_222C9512C();
    v12 = (v3 + v11[6]);
    v13 = v12[1];
    v28[0] = *v12;
    v28[1] = v13;
    v15 = *v12;
    v14 = v12[1];
    v28[2] = v12[2];
    v29 = *(v12 + 24);
    v24 = v15;
    v25 = v14;
    v26 = v12[2];
    v27 = *(v12 + 24);
    v23 = 2;
    sub_222B554C0(v28, v21);
    sub_222B55A2C();
    sub_222C9512C();
    v21[0] = v24;
    v21[1] = v25;
    v21[2] = v26;
    v22 = v27;
    sub_222B55A80(v21);
    v20 = *(v3 + v11[7]);
    HIBYTE(v19) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261B0, &qword_222C9C7C8);
    sub_222BC2AD4(&qword_27D0261B8, &qword_27D0259D0);
    sub_222C9512C();
    v16 = *(v3 + v11[8]);
    LOBYTE(v20) = 4;
    sub_222C9510C();
    v20 = *(v3 + v11[9]);
    HIBYTE(v19) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261C0, &unk_222C9C7D0);
    sub_222BC2980(&qword_27D0261C8, &qword_27D0261D0);
    sub_222C9512C();
    v17 = *(v3 + v11[10]);
    LOBYTE(v20) = 6;
    sub_222C9510C();
    v20 = *(v3 + v11[11]);
    HIBYTE(v19) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261E0, &qword_222C9C7E0);
    sub_222BC2A08(&qword_27D0261E8, sub_222BC2A80);
    sub_222C9512C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PlusMediaSuggestion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_222C9367C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261F8, &qword_222C9C7E8);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for PlusMediaSuggestion();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BC292C();
  v33 = v10;
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = v29;
  v17 = v14;
  LOBYTE(v35) = 0;
  sub_222BC3438(&qword_27D025178, MEMORY[0x277CC95F0]);
  v18 = v30;
  sub_222C9507C();
  v19 = *(v16 + 32);
  v30 = v4;
  v19(v14, v18);
  sub_222C9386C();
  LOBYTE(v34) = 1;
  sub_222BC3438(&qword_27D025180, MEMORY[0x277D5E9D8]);
  sub_222C9507C();
  v27 = 0;
  v20 = v11;
  *(v17 + *(v11 + 20)) = v35;
  v40 = 2;
  sub_222B55B4C();
  sub_222C9507C();
  v21 = v17 + *(v11 + 24);
  v22 = v36;
  *v21 = v35;
  *(v21 + 16) = v22;
  *(v21 + 32) = v37;
  *(v21 + 48) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261B0, &qword_222C9C7C8);
  v39 = 3;
  sub_222BC2AD4(&qword_27D026200, &qword_27D026208);
  sub_222C9507C();
  v23 = v31;
  *(v17 + v20[7]) = v34;
  LOBYTE(v34) = 4;
  sub_222C9505C();
  *(v17 + v20[8]) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261C0, &unk_222C9C7D0);
  v39 = 5;
  sub_222BC2980(&qword_27D026210, &qword_27D026218);
  sub_222C9507C();
  *(v17 + v20[9]) = v34;
  LOBYTE(v34) = 6;
  sub_222C9505C();
  *(v17 + v20[10]) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261E0, &qword_222C9C7E0);
  v39 = 7;
  sub_222BC2A08(&qword_27D026220, sub_222BC2BC0);
  sub_222C9507C();
  (*(v23 + 8))(v33, v32);
  *(v17 + v20[11]) = v34;
  sub_222BC3370(v17, v28, type metadata accessor for PlusMediaSuggestion);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222BC33D8(v17, type metadata accessor for PlusMediaSuggestion);
}

uint64_t MediaReference.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_222C9452C();
}

uint64_t MediaReference.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t sub_222BC1CFC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t sub_222BC1D48()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_222C9452C();
}

uint64_t sub_222BC1D50()
{
  v1 = *v0;
  v2 = v0[1];
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t _s28SiriPrivateLearningInference19PlusMediaSuggestionV11leftHandKey0A8Ontology017UsoEntity_common_F4ItemCvg_0()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion() + 20));
}

uint64_t PlusMediaSuggestion.init(query:entity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_222C935EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  v19 = a2[1];
  v30 = *a2;
  v31 = v19;
  v32 = a2[2];
  v33 = *(a2 + 24);
  sub_222C9366C();
  sub_222C935DC();
  sub_222C935BC();
  v21 = v20;
  (*(v7 + 8))(v10, v6);
  v22 = v12[2];
  v22(v16, v18, v11);
  v22(a3, v16, v11);
  v23 = type metadata accessor for PlusMediaSuggestion();
  *&a3[v23[5]] = a1;
  v24 = &a3[v23[6]];
  v25 = v31;
  *v24 = v30;
  *(v24 + 1) = v25;
  *(v24 + 2) = v32;
  *(v24 + 24) = v33;

  v26 = MEMORY[0x277D84F90];
  *&a3[v23[7]] = sub_222C16F98(20, MEMORY[0x277D84F90]);
  *&a3[v23[10]] = v21;
  *&a3[v23[11]] = MEMORY[0x277D84FA0];
  *&a3[v23[8]] = 0;
  v27 = sub_222C17258(0x14uLL, v26);

  v28 = v12[1];
  v28(v16, v11);
  result = (v28)(v18, v11);
  *&a3[v23[9]] = v27;
  return result;
}

uint64_t PlusMediaSuggestion.updateScore(with:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  v20 = *(a1 + 12);
  v21 = type metadata accessor for PlusMediaSuggestion();
  v22 = *(v3 + v21[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EC0, &qword_222C96C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  *(inited + 32) = v18;
  *(inited + 40) = v17;
  *(inited + 48) = v19;
  *(inited + 56) = v20;
  *&v44 = v22;

  sub_222B494D8(inited);
  v40 = v44;
  (*(v7 + 56))(v16, 1, 1, v6);
  v41 = v16;
  sub_222B5551C(v16, v14);
  v24 = *(v7 + 48);
  if (v24(v14, 1, v6) == 1)
  {
    v25 = *(v7 + 16);
    v25(v42, v3, v6);
    v39 = v6;
    if (v24(v14, 1, v6) != 1)
    {
      sub_222B4FCD4(v14, &unk_27D026290, &qword_222C96B40);
    }

    v26 = v42;
    v6 = v39;
  }

  else
  {
    v26 = v42;
    (*(v7 + 32))(v42, v14, v6);
    v25 = *(v7 + 16);
  }

  v27 = *(v3 + v21[5]);
  v28 = (v3 + v21[6]);
  v47 = *(v28 + 24);
  v29 = v28[2];
  v45 = v28[1];
  v46 = v29;
  v30 = v21[11];
  v31 = *(v3 + v21[10]);
  v44 = *v28;
  v32 = *(v3 + v21[7]);
  v33 = *(v3 + v30);
  v25(a2, v26, v6);
  *&a2[v21[5]] = v27;
  v34 = &a2[v21[6]];
  v35 = v45;
  *v34 = v44;
  *(v34 + 1) = v35;
  *(v34 + 2) = v46;
  *(v34 + 24) = v47;
  swift_retain_n();
  sub_222B554C0(&v44, v43);

  *&a2[v21[7]] = sub_222C16F98(20, v32);
  *&a2[v21[10]] = v31;
  *&a2[v21[11]] = v33;
  *&a2[v21[8]] = v17;
  v36 = sub_222C17258(0x14uLL, v40);

  (*(v7 + 8))(v26, v6);
  result = sub_222B4FCD4(v41, &unk_27D026290, &qword_222C96B40);
  *&a2[v21[9]] = v36;
  return result;
}

uint64_t PlusMediaSuggestion.isLibrary.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion() + 44));
  if (*(v1 + 16) && (v2 = *(v1 + 40), sub_222C952FC(), sub_222C9452C(), v3 = sub_222C9534C(), v4 = -1 << *(v1 + 32), v5 = v3 & ~v4, ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = *(*(v1 + 48) + v5);
      if (v7 > 3 && *(*(v1 + 48) + v5) <= 5u && v7 != 5)
      {
        break;
      }

      v9 = sub_222C951FC();

      if ((v9 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v9 & 1;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_222BC269C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOWORD(v3) = *(v3 + 48);
  v10 = v3;
  *a2 = v8[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 48) = v3;
  return sub_222B554C0(v8, v7);
}

uint64_t sub_222BC2714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s28SiriPrivateLearningInference19PlusMediaSuggestionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = type metadata accessor for PlusMediaSuggestion();
  if ((_s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = (a1 + v4[6]);
  v6 = v5[1];
  v26[0] = *v5;
  v26[1] = v6;
  v8 = *v5;
  v7 = v5[1];
  v26[2] = v5[2];
  v27 = *(v5 + 24);
  v9 = v5[2];
  v23 = v7;
  v24 = v9;
  v25 = *(v5 + 24);
  v22 = v8;
  v10 = (a2 + v4[6]);
  v11 = v10[2];
  v12 = *v10;
  v13 = *v10;
  v29 = v10[1];
  v30 = v11;
  v28 = v12;
  v31 = *(v10 + 24);
  v18 = v13;
  v19 = v29;
  v20 = v10[2];
  v21 = *(v10 + 24);
  sub_222B554C0(v26, v17);
  sub_222B554C0(&v28, v17);
  v14 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v22, &v18);
  v32[0] = v18;
  v32[1] = v19;
  v32[2] = v20;
  v33 = v21;
  sub_222B55A80(v32);
  v34[0] = v22;
  v34[1] = v23;
  v34[2] = v24;
  v35 = v25;
  sub_222B55A80(v34);
  if (!v14)
  {
    goto LABEL_9;
  }

  if ((sub_222BBD800(*(a1 + v4[7]), *(a2 + v4[7])) & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && (sub_222BBDAA0(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10]))
  {
    v15 = sub_222C17D8C(*(a1 + v4[11]), *(a2 + v4[11]));
  }

  else
  {
LABEL_9:
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_222BC292C()
{
  result = qword_27D0261A8;
  if (!qword_27D0261A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0261A8);
  }

  return result;
}

uint64_t sub_222BC2980(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261C0, &unk_222C9C7D0);
    sub_222BC2B70(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222BC2A08(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261E0, &qword_222C9C7E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222BC2A80()
{
  result = qword_27D0261F0;
  if (!qword_27D0261F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0261F0);
  }

  return result;
}

uint64_t sub_222BC2AD4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261B0, &qword_222C9C7C8);
    sub_222BC3438(a2, type metadata accessor for ThinMediaGroundTruth);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222BC2B70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261D8, &qword_222CA1E50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222BC2BC0()
{
  result = qword_27D026228;
  if (!qword_27D026228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026228);
  }

  return result;
}

unint64_t sub_222BC2C14(uint64_t a1)
{
  result = sub_222B72AF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222BC2C40()
{
  result = qword_27D026230;
  if (!qword_27D026230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026230);
  }

  return result;
}

unint64_t sub_222BC2C98()
{
  result = qword_27D026238;
  if (!qword_27D026238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026238);
  }

  return result;
}

uint64_t sub_222BC2D3C(uint64_t a1)
{
  result = sub_222BC3438(&qword_27D026240, type metadata accessor for PlusMediaSuggestion);
  *(a1 + 8) = result;
  return result;
}

void sub_222BC2DBC()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C9386C();
    if (v1 <= 0x3F)
    {
      sub_222BC2E98();
      if (v2 <= 0x3F)
      {
        sub_222BC2EF0();
        if (v3 <= 0x3F)
        {
          sub_222BC2F54();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_222BC2E98()
{
  if (!qword_27D026248)
  {
    type metadata accessor for ThinMediaGroundTruth();
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D026248);
    }
  }
}

void sub_222BC2EF0()
{
  if (!qword_27D026250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261D8, &qword_222CA1E50);
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D026250);
    }
  }
}

void sub_222BC2F54()
{
  if (!qword_27D026258)
  {
    sub_222B654C0();
    v0 = sub_222C9497C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D026258);
    }
  }
}

unint64_t sub_222BC2FC4()
{
  result = qword_27D026260;
  if (!qword_27D026260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026260);
  }

  return result;
}

unint64_t sub_222BC301C()
{
  result = qword_27D026268;
  if (!qword_27D026268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026268);
  }

  return result;
}

unint64_t sub_222BC3074()
{
  result = qword_27D026270;
  if (!qword_27D026270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026270);
  }

  return result;
}

uint64_t sub_222BC30C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E61487466656CLL && a2 == 0xEB0000000079654BLL || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E61487468676972 && a2 == 0xEE0065756C615664 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000222CAAED0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73694865726F6373 && a2 == 0xEC00000079726F74 || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_222C951FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_222BC3370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BC33D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222BC3438(unint64_t *a1, void (*a2)(uint64_t))
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

void *InferenceDataCompliance.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[3] = sub_222B63558(MEMORY[0x277D84F90]);
  v0[4] = 50;
  v0[2] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  return v0;
}

void *InferenceDataCompliance.init()()
{
  v0[3] = sub_222B63558(MEMORY[0x277D84F90]);
  v0[4] = 50;
  v0[2] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  return v0;
}

uint64_t sub_222BC3534()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C9BAE0;
  *(v0 + 32) = *MEMORY[0x277CBD018];
  qword_27D026280 = v0;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_222BC359C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 48))(v1, v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v44 = MEMORY[0x277D84F90];
    sub_222B4C418(0, v4, 0);
    v5 = v44;
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v44 = v5;
      v9 = *(v5 + 16);
      v10 = *(v5 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_222B4C418((v10 > 1), v9 + 1, 1);
        v5 = v44;
      }

      *(v5 + 16) = v9 + 1;
      v11 = v5 + 16 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v12 = sub_222B72040(v5);

  if (qword_280FDFE78 != -1)
  {
LABEL_32:
    swift_once();
  }

  v13 = sub_222C9431C();
  __swift_project_value_buffer(v13, qword_280FE2340);

  v14 = sub_222C942FC();
  v15 = sub_222C94A3C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v12;
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *(v16 + 16);

    _os_log_impl(&dword_222B39000, v14, v15, "Evaluating %ld PICS contact references for non existent contact ids.", v17, 0xCu);
    v18 = v17;
    v12 = v16;
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }

  else
  {
  }

  v19 = 0;
  v20 = v12 + 56;
  v21 = 1 << *(v12 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v12 + 56);
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v25 = v19;
LABEL_20:
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v27 = (*(v12 + 48) + ((v25 << 10) | (16 * v26)));
    v28 = *v27;
    v29 = v27[1];

    if (sub_222BC591C(v28, v29))
    {

      v19 = v25;
    }

    else
    {

      v30 = sub_222C942FC();
      v31 = sub_222C94A3C();

      v42 = v12;
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        log = v30;
        v33 = swift_slowAlloc();
        v44 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_222B437C0(v28, v29, &v44);
        _os_log_impl(&dword_222B39000, log, v31, "PICS referenced contactId %s has been deleted. Deleting all PICS referencing this contact.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x223DCA8C0](v33, -1, -1);
        MEMORY[0x223DCA8C0](v32, -1, -1);
      }

      else
      {
      }

      v34 = a1[3];
      v35 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v34);
      v36 = (*(v35 + 72))(v28, v29, v34, v35);

      v37 = sub_222C942FC();
      v38 = sub_222C94A3C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = v36;
        _os_log_impl(&dword_222B39000, v37, v38, "%ld PICS deleted due to expired contact references", v39, 0xCu);
        MEMORY[0x223DCA8C0](v39, -1, -1);
      }

      v19 = v25;
      v12 = v42;
    }
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v25 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v25);
    ++v19;
    if (v23)
    {
      goto LABEL_20;
    }
  }
}

uint64_t sub_222BC3A64(void *a1)
{
  KeyPath = swift_getKeyPath();
  sub_222BC3B0C(a1, KeyPath);

  v3 = swift_getKeyPath();
  sub_222BC3D88(a1, v3);

  v4 = swift_getKeyPath();
  sub_222BC4004(a1, v4);

  return sub_222BC4684(a1);
}

uint64_t sub_222BC3B0C(void *a1, uint64_t a2)
{
  v21[0] = sub_222C9367C();
  v4 = *(v21[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21[0]);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F90];
  v8 = type metadata accessor for PhoneCallGroundTruth();
  v9 = 0;
  do
  {
    v10 = MEMORY[0x223DCA1C0]();
    v12 = a1[3];
    v11 = a1[4];
    v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
    v14 = sub_222BC6360(&qword_280FDF100, type metadata accessor for PhoneCallGroundTruth);
    v15 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:limit:offset:)(v8, 50, v9, v12, v8, v11, v14);
    if (__OFADD__(v9, 50))
    {
      __break(1u);
      goto LABEL_10;
    }

    v16 = *(v15 + 16);
    sub_222BC4280(v15, v21[1], a2, &v22, type metadata accessor for PhoneCallGroundTruth, type metadata accessor for PhoneCallGroundTruth);

    objc_autoreleasePoolPop(v10);
    v9 += 50;
  }

  while (v16);
  v17 = v22;
  v18 = *(v22 + 16);
  v10 = v21[0];
  if (!v18)
  {
  }

  v19 = 0;
  v13 = 0;
  v11 = (v4 + 8);
  while (v19 < *(v17 + 16))
  {
    (*(v4 + 16))(v7, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v10);
    sub_222BC5DA8(v7, a1);
    ++v19;
    (*v11)(v7, v10);
    if (v18 == v19)
    {
    }
  }

LABEL_10:
  __break(1u);

  result = (*v11)(v7, v10);
  __break(1u);
  return result;
}

uint64_t sub_222BC3D88(void *a1, uint64_t a2)
{
  v21[0] = sub_222C9367C();
  v4 = *(v21[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21[0]);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F90];
  v8 = type metadata accessor for MessagesGroundTruth();
  v9 = 0;
  do
  {
    v10 = MEMORY[0x223DCA1C0]();
    v12 = a1[3];
    v11 = a1[4];
    v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
    v14 = sub_222BC6360(&qword_280FDF4B8, type metadata accessor for MessagesGroundTruth);
    v15 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:limit:offset:)(v8, 50, v9, v12, v8, v11, v14);
    if (__OFADD__(v9, 50))
    {
      __break(1u);
      goto LABEL_10;
    }

    v16 = *(v15 + 16);
    sub_222BC4280(v15, v21[1], a2, &v22, type metadata accessor for MessagesGroundTruth, type metadata accessor for MessagesGroundTruth);

    objc_autoreleasePoolPop(v10);
    v9 += 50;
  }

  while (v16);
  v17 = v22;
  v18 = *(v22 + 16);
  v10 = v21[0];
  if (!v18)
  {
  }

  v19 = 0;
  v13 = 0;
  v11 = (v4 + 8);
  while (v19 < *(v17 + 16))
  {
    (*(v4 + 16))(v7, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v10);
    sub_222BC5DA8(v7, a1);
    ++v19;
    (*v11)(v7, v10);
    if (v18 == v19)
    {
    }
  }

LABEL_10:
  __break(1u);

  result = (*v11)(v7, v10);
  __break(1u);
  return result;
}

uint64_t sub_222BC4004(void *a1, uint64_t a2)
{
  v21[0] = sub_222C9367C();
  v4 = *(v21[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21[0]);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F90];
  v8 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  v9 = 0;
  do
  {
    v10 = MEMORY[0x223DCA1C0]();
    v12 = a1[3];
    v11 = a1[4];
    v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
    v14 = sub_222BC6360(&qword_280FDC688, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
    v15 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:limit:offset:)(v8, 50, v9, v12, v8, v11, v14);
    if (__OFADD__(v9, 50))
    {
      __break(1u);
      goto LABEL_10;
    }

    v16 = *(v15 + 16);
    sub_222BC4280(v15, v21[1], a2, &v22, type metadata accessor for ContactSuggestionOutcomeGroundTruth, type metadata accessor for ContactSuggestionOutcomeGroundTruth);

    objc_autoreleasePoolPop(v10);
    v9 += 50;
  }

  while (v16);
  v17 = v22;
  v18 = *(v22 + 16);
  v10 = v21[0];
  if (!v18)
  {
  }

  v19 = 0;
  v13 = 0;
  v11 = (v4 + 8);
  while (v19 < *(v17 + 16))
  {
    (*(v4 + 16))(v7, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v10);
    sub_222BC5DA8(v7, a1);
    ++v19;
    (*v11)(v7, v10);
    if (v18 == v19)
    {
    }
  }

LABEL_10:
  __break(1u);

  result = (*v11)(v7, v10);
  __break(1u);
  return result;
}

uint64_t sub_222BC4280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v36 = a4;
  v47 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = sub_222C9367C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v46 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v40 = &v36 - v18;
  v19 = a5(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v23 = &v36 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    v37 = (v14 + 16);
    v38 = v14;
    v44 = (v14 + 56);
    v45 = v26;
    v42 = (v14 + 32);
    v43 = (v14 + 48);
    v48 = MEMORY[0x277D84F90];
    v39 = a6;
    v41 = v12;
    do
    {
      sub_222BC6298(v25, v23, a6);
      swift_getAtKeyPath();
      v27 = sub_222BC591C(v49, v50);

      if (v27)
      {
        v28 = 1;
        v29 = v41;
      }

      else
      {
        v29 = v41;
        (*v37)(v41, v23, v13);
        v28 = 0;
      }

      (*v44)(v29, v28, 1, v13);
      sub_222BC6300(v23, a6);
      if ((*v43)(v29, 1, v13) == 1)
      {
        sub_222B86DA0(v29);
      }

      else
      {
        v30 = *v42;
        v31 = v40;
        (*v42)(v40, v29, v13);
        v30(v46, v31, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_222B4A2C8(0, *(v48 + 2) + 1, 1, v48);
        }

        v33 = *(v48 + 2);
        v32 = *(v48 + 3);
        if (v33 >= v32 >> 1)
        {
          v48 = sub_222B4A2C8(v32 > 1, v33 + 1, 1, v48);
        }

        v34 = v48;
        *(v48 + 2) = v33 + 1;
        v30(&v34[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v33], v46, v13);
        a6 = v39;
      }

      v25 += v45;
      --v24;
    }

    while (v24);
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  return sub_222B49A30(v48);
}

uint64_t sub_222BC4684(void *a1)
{
  v2 = v1;
  v22 = sub_222C9367C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x277D84F90];
  v8 = type metadata accessor for ContactPromptGroundTruth();
  v9 = 0;
  do
  {
    v10 = MEMORY[0x223DCA1C0]();
    v11 = a1[3];
    v12 = a1[4];
    v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
    v14 = sub_222BC6360(&qword_280FDE6C0, type metadata accessor for ContactPromptGroundTruth);
    v15 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:limit:offset:)(v8, 50, v9, v11, v8, v12, v14);
    if (__OFADD__(v9, 50))
    {
      __break(1u);
      goto LABEL_10;
    }

    v16 = *(v15 + 16);
    sub_222BC48D4(v15, v2, &v23, a1);

    objc_autoreleasePoolPop(v10);
    v9 += 50;
  }

  while (v16);
  v17 = v23;
  v18 = v23[2];
  v10 = v22;
  if (!v18)
  {
  }

  v19 = 0;
  v2 = 0;
  v13 = (v4 + 8);
  while (v19 < v17[2])
  {
    (*(v4 + 16))(v7, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v10);
    sub_222BC5DA8(v7, a1);
    ++v19;
    (*v13)(v7, v10);
    if (v18 == v19)
    {
    }
  }

LABEL_10:
  __break(1u);

  result = (*v13)(v7, v10);
  __break(1u);
  return result;
}

uint64_t sub_222BC48D4(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  v118 = a4;
  v123 = a3;
  v142 = a2;
  v136 = sub_222C9367C();
  v124 = *(v136 - 8);
  v5 = *(v124 + 64);
  v6 = MEMORY[0x28223BE20](v136);
  v132 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v121 = &v116 - v8;
  v140 = type metadata accessor for ContactPromptGroundTruth();
  v9 = *(*(v140 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v140);
  v12 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v120 = &v116 - v15;
  result = MEMORY[0x28223BE20](v14);
  v21 = &v116 - v18;
  v129 = *(a1 + 16);
  if (v129)
  {
    v22 = 0;
    v128 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = 0x8000000222CAA190;
    v126 = (v124 + 16);
    v116 = 0x8000000222CA85F0;
    v125 = (v124 + 32);
    v127 = *(v17 + 72);
    *&v20 = 136315138;
    v122 = v20;
    v135 = v12;
    v117 = v19;
    v130 = &v116 - v18;
    v143 = 0x8000000222CAA190;
    do
    {
      v137 = v22;
      sub_222BC6298(v128 + v127 * v22, v21, type metadata accessor for ContactPromptGroundTruth);
      v24 = *&v21[v140[7]];
      v25 = *(v24 + 16);
      v138 = v24;
      if (v25)
      {
        v144[0] = MEMORY[0x277D84F90];

        sub_222B4CAD0(0, v25, 0);
        v26 = v144[0];
        v27 = (v24 + 56);
        do
        {
          v29 = *(v27 - 3);
          v28 = *(v27 - 2);
          v31 = *(v27 - 1);
          v30 = *v27;
          v32 = v29 == 0xD000000000000013 && v23 == v28;
          if (v32 || (v33 = *(v27 - 3), v34 = *(v27 - 2), (sub_222C951FC() & 1) != 0))
          {
          }

          else
          {

            if ((sub_222BC591C(v29, v28) & 1) == 0)
            {

              v29 = 0xD000000000000013;
              v28 = v23;
            }
          }

          v144[0] = v26;
          v36 = *(v26 + 16);
          v35 = *(v26 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_222B4CAD0((v35 > 1), v36 + 1, 1);
            v26 = v144[0];
          }

          v27 += 4;
          *(v26 + 16) = v36 + 1;
          v37 = (v26 + 32 * v36);
          v37[4] = v29;
          v37[5] = v28;
          v37[6] = v31;
          v37[7] = v30;
          --v25;
          v23 = v143;
        }

        while (v25);
        v12 = v135;
        v21 = v130;
      }

      else
      {

        v26 = MEMORY[0x277D84F90];
      }

      v38 = &v21[v140[8]];
      v40 = *v38;
      v39 = v38[1];
      v41 = v38[2];
      v42 = v38[3];
      v139 = v26;
      if (v39)
      {
        v43 = v40 == 0xD000000000000013 && v39 == v23;
        v141 = v39;
        if (v43 || (sub_222C951FC() & 1) != 0)
        {
        }

        else
        {

          v44 = sub_222BC591C(v40, v39);
          v26 = v139;
          if ((v44 & 1) == 0)
          {

            sub_222B450E8(v40, v39);
            v40 = 0xD000000000000013;
            v141 = v23;
          }
        }
      }

      else
      {
        v141 = 0;
      }

      v45 = *(v26 + 16);
      result = v138;
      if (v45 != *(v138 + 16))
      {

        v52 = *(v26 + 16);
        if (v52)
        {
          goto LABEL_68;
        }

        goto LABEL_88;
      }

      v133 = v40;
      v134 = v41;
      v131 = v42;
      if (v45)
      {
        v46 = v26 == v138;
      }

      else
      {
        v46 = 1;
      }

      if (!v46)
      {
        v53 = (v138 + 56);
        v54 = (v26 + 56);
        while (1)
        {
          if (!v45)
          {
            __break(1u);
            return result;
          }

          result = *(v54 - 3);
          v56 = *(v54 - 1);
          v55 = *v54;
          v58 = *(v53 - 1);
          v57 = *v53;
          if (result != *(v53 - 3) || *(v54 - 2) != *(v53 - 2))
          {
            result = sub_222C951FC();
            if ((result & 1) == 0)
            {
              break;
            }
          }

          if (v55)
          {
            if (!v57)
            {
              break;
            }

            if (v56 != v58 || v55 != v57)
            {
              result = sub_222C951FC();
              if ((result & 1) == 0)
              {
                break;
              }
            }
          }

          else if (v57)
          {
            break;
          }

          v53 += 4;
          v54 += 4;
          if (!--v45)
          {
            goto LABEL_37;
          }
        }

        v41 = v134;
        v12 = v135;
        v21 = v130;
        v42 = v131;
        v26 = v139;
        v40 = v133;
        v52 = *(v139 + 16);
        if (v52)
        {
          goto LABEL_68;
        }

        goto LABEL_88;
      }

LABEL_37:

      v47 = v38[1];
      v138 = *v38;
      v49 = v38[2];
      v48 = v38[3];
      v12 = v135;
      if (v141)
      {
        v21 = v130;
        v42 = v131;
        v41 = v134;
        if (!v47)
        {
          v60 = v133;
          v61 = v141;
          sub_222B98D00(v133, v141);
          sub_222B98D00(v138, 0);
          sub_222B98D00(v60, v61);

LABEL_67:
          sub_222B450E8(v60, v61);
          sub_222B450E8(v138, v47);
          v26 = v139;
          v40 = v60;
          v12 = v135;
          v52 = *(v139 + 16);
          if (v52)
          {
            goto LABEL_68;
          }

          goto LABEL_88;
        }

        if ((v133 != v138 || v141 != v47) && (sub_222C951FC() & 1) == 0)
        {
LABEL_84:
          v95 = v133;
          sub_222B98D00(v133, v141);
LABEL_86:
          v96 = v138;
          sub_222B98D00(v138, v47);
          sub_222B98D00(v95, v141);
          sub_222B450E8(v96, v47);
          v40 = v95;
          v12 = v135;
LABEL_87:
          v97 = v141;

          v41 = v134;
          sub_222B450E8(v40, v97);
          v26 = v139;
          v52 = *(v139 + 16);
          if (v52)
          {
LABEL_68:
            v62 = (v26 + 40);
            v63 = v141;
            while (1)
            {
              v64 = *(v62 - 1) == 0xD000000000000013 && v23 == *v62;
              if (!v64 && (sub_222C951FC() & 1) == 0)
              {
                break;
              }

              v62 += 4;
              if (!--v52)
              {
                goto LABEL_89;
              }
            }

            (*v126)(v121, v21, v136);
            v65 = v140[12];
            v66 = *&v21[v65 + 8];
            v131 = v42;
            v133 = v40;
            v134 = v41;
            if (v66)
            {
              v138 = *&v21[v65];
              v67 = v66;
            }

            else
            {
              v138 = 0xD000000000000023;
              v67 = v116;
            }

            v68 = v140;
            v69 = v21[v140[5]];
            v70 = *&v21[v140[6]];
            v71 = v21[v140[9]];
            v72 = *&v21[v140[10]];
            v119 = v21[v140[11]];
            v73 = v120;
            v74 = (v120 + v65);
            (*v125)(v120, v121, v136);
            v75 = v139;
            *v74 = v138;
            v74[1] = v67;
            *(v73 + v68[5]) = v69;
            *(v73 + v68[6]) = v70;
            *(v73 + v68[7]) = v75;
            v76 = (v73 + v68[8]);
            v77 = v141;
            *v76 = v133;
            v76[1] = v77;
            v78 = v131;
            v76[2] = v134;
            v76[3] = v78;
            *(v73 + v68[9]) = v71;
            *(v73 + v68[10]) = v72;
            *(v73 + v68[11]) = v119;
            v79 = qword_280FDFE78;

            if (v79 != -1)
            {
              swift_once();
            }

            v80 = sub_222C9431C();
            __swift_project_value_buffer(v80, qword_280FE2340);
            v21 = v130;
            v81 = v117;
            sub_222BC6298(v130, v117, type metadata accessor for ContactPromptGroundTruth);
            v82 = sub_222C942FC();
            v83 = sub_222C94A3C();
            v84 = os_log_type_enabled(v82, v83);
            v12 = v135;
            if (v84)
            {
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v144[0] = v86;
              *v85 = v122;
              v87 = sub_222C9360C();
              v89 = v88;
              sub_222BC6300(v81, type metadata accessor for ContactPromptGroundTruth);
              v90 = sub_222B437C0(v87, v89, v144);

              *(v85 + 4) = v90;
              _os_log_impl(&dword_222B39000, v82, v83, "Redacting contact prompt ground truth with id=%s", v85, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v86);
              MEMORY[0x223DCA8C0](v86, -1, -1);
              MEMORY[0x223DCA8C0](v85, -1, -1);
            }

            else
            {

              sub_222BC6300(v81, type metadata accessor for ContactPromptGroundTruth);
            }

            v91 = v118[3];
            v92 = v118[4];
            __swift_project_boxed_opaque_existential_1(v118, v91);
            v144[3] = v140;
            v144[4] = sub_222BC6360(&qword_280FDE6C0, type metadata accessor for ContactPromptGroundTruth);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v144);
            v94 = v120;
            sub_222BC6298(v120, boxed_opaque_existential_1, type metadata accessor for ContactPromptGroundTruth);
            InferredGroundTruthStore.updateTypedGroundTruth(groundTruth:)(v144, v91, v92);
            sub_222BC6300(v94, type metadata accessor for ContactPromptGroundTruth);
            sub_222BC6300(v21, type metadata accessor for ContactPromptGroundTruth);
            result = __swift_destroy_boxed_opaque_existential_0Tm(v144);
            v23 = v143;
            goto LABEL_5;
          }

LABEL_88:
          v63 = v141;
LABEL_89:
          sub_222B450E8(v40, v63);

          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v98 = sub_222C9431C();
          __swift_project_value_buffer(v98, qword_280FE2340);
          sub_222BC6298(v21, v12, type metadata accessor for ContactPromptGroundTruth);
          v99 = sub_222C942FC();
          v100 = sub_222C94A3C();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v144[0] = v102;
            *v101 = v122;
            v103 = sub_222C9360C();
            v105 = v104;
            sub_222BC6300(v12, type metadata accessor for ContactPromptGroundTruth);
            v106 = sub_222B437C0(v103, v105, v144);

            *(v101 + 4) = v106;
            _os_log_impl(&dword_222B39000, v99, v100, "Marking contact prompt ground truth id=%s for deletion due to all contacts being redacted", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v102);
            MEMORY[0x223DCA8C0](v102, -1, -1);
            MEMORY[0x223DCA8C0](v101, -1, -1);
          }

          else
          {

            sub_222BC6300(v12, type metadata accessor for ContactPromptGroundTruth);
          }

          (*v126)(v132, v21, v136);
          v107 = v123;
          v108 = *v123;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v107 = v108;
          v23 = v143;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v108 = sub_222B4A2C8(0, v108[2] + 1, 1, v108);
            *v123 = v108;
          }

          v111 = v108[2];
          v110 = v108[3];
          if (v111 >= v110 >> 1)
          {
            v108 = sub_222B4A2C8(v110 > 1, v111 + 1, 1, v108);
            *v123 = v108;
          }

          v108[2] = v111 + 1;
          (*(v124 + 32))(v108 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v111, v132, v136);
          goto LABEL_4;
        }

        if (v42)
        {
          if (!v48)
          {
            goto LABEL_84;
          }

          if (v41 == v49 && v42 == v48)
          {
            v40 = v133;
            v50 = v141;
            sub_222B98D00(v133, v141);
            v51 = v138;
            sub_222B98D00(v138, v47);
            v141 = v50;
            sub_222B98D00(v40, v50);
            sub_222B450E8(v51, v47);
          }

          else
          {
            v119 = sub_222C951FC();
            v112 = v133;
            v113 = v141;
            sub_222B98D00(v133, v141);
            sub_222B98D00(v138, v47);
            v141 = v113;
            sub_222B98D00(v112, v113);
            v40 = v112;
            v12 = v135;
            sub_222B450E8(v138, v47);
            if ((v119 & 1) == 0)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
          v95 = v133;
          sub_222B98D00(v133, v141);
          if (v48)
          {
            goto LABEL_86;
          }

          v114 = v138;
          sub_222B98D00(v138, v47);
          sub_222B98D00(v95, v141);
          sub_222B450E8(v114, v47);
          v40 = v95;
          v12 = v135;
        }

        v115 = v141;

        sub_222B450E8(v40, v115);
        sub_222B450E8(v40, v115);
      }

      else
      {
        v21 = v130;
        v42 = v131;
        v41 = v134;
        if (v47)
        {
          v60 = v133;
          sub_222B98D00(v133, 0);
          sub_222B98D00(v138, v47);
          v61 = v141;
          goto LABEL_67;
        }

        sub_222B98D00(v138, 0);

        sub_222B450E8(v133, 0);
      }

LABEL_4:
      result = sub_222BC6300(v21, type metadata accessor for ContactPromptGroundTruth);
LABEL_5:
      v22 = v137 + 1;
    }

    while (v137 + 1 != v129);
  }

  return result;
}

uint64_t sub_222BC591C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v37[6] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_222B8C9DC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + v7);

      goto LABEL_18;
    }
  }

  v10 = *(v3 + 16);
  v11 = sub_222C9448C();
  if (qword_27D0246E8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FA8, qword_222C9BAF0);
  v12 = sub_222C9470C();
  v37[0] = 0;
  v13 = [v10 unifiedContactWithIdentifier:v11 keysToFetch:v12 error:v37];

  if (v13)
  {
    v14 = v37[0];

    swift_beginAccess();
    v15 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    v9 = 1;
    sub_222BAB050(1, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 24) = v35;
    swift_endAccess();
  }

  else
  {
    v17 = v37[0];
    v18 = sub_222C9342C();

    swift_willThrow();
    v37[0] = v18;
    v19 = v18;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
    type metadata accessor for CNError(0);
    if (swift_dynamicCast())
    {
      v37[0] = v34;
      sub_222BC6360(&qword_27D0249A8, type metadata accessor for CNError);
      sub_222C933EC();
      if (v34 == 200)
      {
        swift_beginAccess();
        v20 = *(v3 + 24);
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v3 + 24);
        *(v3 + 24) = 0x8000000000000000;
        sub_222BAB050(0, a1, a2, v21);
        *(v3 + 24) = v36;
        swift_endAccess();

        v9 = 0;
        goto LABEL_18;
      }
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v22 = sub_222C9431C();
    __swift_project_value_buffer(v22, qword_280FE2340);
    v23 = v18;

    v24 = sub_222C942FC();
    v25 = sub_222C94A4C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_222B437C0(a1, a2, v37);
      *(v26 + 12) = 2080;
      v28 = v18;
      v29 = sub_222C944EC();
      v31 = sub_222B437C0(v29, v30, v37);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_222B39000, v24, v25, "Error checking for existence of contactId=%s. error=%s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v27, -1, -1);
      MEMORY[0x223DCA8C0](v26, -1, -1);
    }

    swift_willThrow();
  }

LABEL_18:
  v32 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void sub_222BC5DA8(uint64_t a1, void *a2)
{
  v47 = a2;
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v12 = sub_222C9431C();
  v13 = __swift_project_value_buffer(v12, qword_280FE2340);
  v43 = v5[2];
  v44 = v5 + 2;
  v43(v11, a1, v4);
  v45 = v13;
  v14 = sub_222C942FC();
  v15 = sub_222C94A3C();
  v16 = os_log_type_enabled(v14, v15);
  v46 = v5;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v40 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = v2;
    v20 = v19;
    v48 = v19;
    *v18 = 136315138;
    v21 = sub_222C9360C();
    v41 = v9;
    v22 = v4;
    v24 = v23;
    v25 = v5[1];
    v25(v11, v22);
    v26 = sub_222B437C0(v21, v24, &v48);
    v4 = v22;
    v9 = v41;

    *(v18 + 4) = v26;
    _os_log_impl(&dword_222B39000, v14, v15, "Deleting ground truth with id=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x223DCA8C0](v20, -1, -1);
    v27 = v18;
    a1 = v40;
    MEMORY[0x223DCA8C0](v27, -1, -1);
  }

  else
  {

    v25 = v5[1];
    v25(v11, v4);
  }

  v28 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  if ((sub_222C940BC() & 1) == 0)
  {
    v29 = v25;
    v43(v9, a1, v4);
    v30 = sub_222C942FC();
    v31 = sub_222C94A4C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v4;
      v34 = swift_slowAlloc();
      v48 = v34;
      *v32 = 136315138;
      v35 = sub_222C9360C();
      v36 = v9;
      v38 = v37;
      v29(v36, v33);
      v39 = sub_222B437C0(v35, v38, &v48);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_222B39000, v30, v31, "Failed to delete ground truth id=%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x223DCA8C0](v34, -1, -1);
      MEMORY[0x223DCA8C0](v32, -1, -1);
    }

    else
    {

      v29(v9, v4);
    }
  }
}

uint64_t InferenceDataCompliance.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t InferenceDataCompliance.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_222BC6298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BC6300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222BC6360(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222BC63A8()
{
  type metadata accessor for QuickSongStopGroundTruthGenerator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262C0, qword_222C9CBE8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D0262A8 = 91;
  unk_27D0262B0 = 0xE100000000000000;
  return result;
}

uint64_t sub_222BC644C(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025888, &unk_222C993A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v53 - v5;
  v59 = type metadata accessor for MediaFeedbackGroundTruth();
  v54 = *(v59 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - v10;
  v12 = type metadata accessor for MediaPlayClassification();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v53 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  result = MEMORY[0x28223BE20](v18);
  v24 = &v53 - v22;
  v25 = *(a2 + 16);
  v61 = v23;
  if (v25)
  {
    v26 = a2 + 32;
    v27 = (v23 + 56);
    v28 = (v23 + 48);
    v29 = MEMORY[0x277D84F90];
    v53 = &v53 - v22;
    do
    {
      sub_222B43E3C(v26, v63);
      sub_222B405A0(v63, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v30 = swift_dynamicCast();
      (*v27)(v11, v30 ^ 1u, 1, v12);
      if ((*v28)(v11, 1, v12) == 1)
      {
        result = sub_222B4FCD4(v11, &qword_27D0257D8, &unk_222C990C0);
      }

      else
      {
        sub_222BC7E0C(v11, v24, type metadata accessor for MediaPlayClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_222B4A278(0, v29[2] + 1, 1, v29);
        }

        v32 = v29[2];
        v31 = v29[3];
        if (v32 >= v31 >> 1)
        {
          v29 = sub_222B4A278(v31 > 1, v32 + 1, 1, v29);
        }

        v29[2] = v32 + 1;
        v33 = v29 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v32;
        v24 = v53;
        result = sub_222BC7E0C(v53, v33, type metadata accessor for MediaPlayClassification);
      }

      v26 += 40;
      --v25;
    }

    while (v25);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v34 = v29[2];
  if (v34)
  {
    v35 = 0;
    v36 = MEMORY[0x277D84F90];
    v37 = v61;
    while (v35 < v29[2])
    {
      v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v39 = *(v37 + 72);
      sub_222B77C5C(v29 + v38 + v39 * v35, v20, type metadata accessor for MediaPlayClassification);
      v40 = sub_222BCB8C4();
      if (v40 == 2 || (v40 & 1) != 0)
      {
        result = sub_222B77D34(v20, type metadata accessor for MediaPlayClassification);
      }

      else
      {
        sub_222BC7E0C(v20, v56, type metadata accessor for MediaPlayClassification);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v63[0] = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C53C(0, *(v36 + 16) + 1, 1);
          v36 = *&v63[0];
        }

        v43 = *(v36 + 16);
        v42 = *(v36 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_222B4C53C(v42 > 1, v43 + 1, 1);
          v36 = *&v63[0];
        }

        *(v36 + 16) = v43 + 1;
        result = sub_222BC7E0C(v56, v36 + v38 + v43 * v39, type metadata accessor for MediaPlayClassification);
        v37 = v61;
      }

      if (v34 == ++v35)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
    v37 = v61;
LABEL_25:

    v44 = *(v36 + 16);
    if (v44)
    {
      v45 = v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v46 = *(v37 + 72);
      v47 = v55;
      v48 = (v54 + 48);
      v49 = MEMORY[0x277D84F90];
      do
      {
        v50 = v57;
        sub_222B77C5C(v45, v57, type metadata accessor for MediaPlayClassification);
        sub_222BC6B3C(v60, v50, v47);
        sub_222B77D34(v50, type metadata accessor for MediaPlayClassification);
        if ((*v48)(v47, 1, v59) == 1)
        {
          sub_222B4FCD4(v47, &qword_27D025888, &unk_222C993A0);
        }

        else
        {
          sub_222BC7E0C(v47, v58, type metadata accessor for MediaFeedbackGroundTruth);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_222B4AB1C(0, v49[2] + 1, 1, v49);
          }

          v52 = v49[2];
          v51 = v49[3];
          if (v52 >= v51 >> 1)
          {
            v49 = sub_222B4AB1C(v51 > 1, v52 + 1, 1, v49);
          }

          v49[2] = v52 + 1;
          sub_222BC7E0C(v58, v49 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52, type metadata accessor for MediaFeedbackGroundTruth);
          v47 = v55;
        }

        v45 += v46;
        --v44;
      }

      while (v44);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v49;
  }

  return result;
}

uint64_t sub_222BC6B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v107 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v123 = &v107 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v107 - v16;
  v18 = sub_222C9367C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for FeaturisedTurn(0);
  v124 = *(v126 - 8);
  v23 = *(v124 + 64);
  MEMORY[0x28223BE20](v126);
  v120 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v122 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v121 = (&v107 - v29);
  v125 = a2;
  v30 = sub_222BCB8C4();
  if (v30 == 2 || (v30 & 1) != 0)
  {
    if (qword_280FDFE78 != -1)
    {
LABEL_87:
      swift_once();
    }

    v49 = sub_222C9431C();
    __swift_project_value_buffer(v49, qword_280FE2340);
    v50 = sub_222C942FC();
    v51 = sub_222C94A4C();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_39;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v134 = v53;
    *v52 = 136315138;
    if (qword_27D0246F0 != -1)
    {
      swift_once();
    }

    *(v52 + 4) = sub_222B437C0(qword_27D0262A8, unk_27D0262B0, &v134);
    v54 = "%s buildGroundTruth was passed non-quickStop MediaPlayClassification. This should never occur";
    goto LABEL_38;
  }

  if (*(v125 + 8) != 1)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v55 = sub_222C9431C();
    __swift_project_value_buffer(v55, qword_280FE2340);
    v50 = sub_222C942FC();
    v51 = sub_222C94A3C();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_39;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v134 = v53;
    *v52 = 136315138;
    if (qword_27D0246F0 != -1)
    {
      swift_once();
    }

    *(v52 + 4) = sub_222B437C0(qword_27D0262A8, unk_27D0262B0, &v134);
    v54 = "%s Quick Song Stop was not a Siri initiated play, skipping ground truth generation";
LABEL_38:
    _os_log_impl(&dword_222B39000, v50, v51, v54, v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x223DCA8C0](v53, -1, -1);
    MEMORY[0x223DCA8C0](v52, -1, -1);
LABEL_39:

    v57 = type metadata accessor for MediaFeedbackGroundTruth();
    v58 = *(*(v57 - 8) + 56);

    return v58(a3, 1, 1, v57);
  }

  v31 = sub_222BED3E4(a1);
  if (!v31)
  {
    if (qword_280FDFE78 != -1)
    {
LABEL_89:
      swift_once();
    }

    v56 = sub_222C9431C();
    __swift_project_value_buffer(v56, qword_280FE2340);
    v50 = sub_222C942FC();
    v51 = sub_222C94A4C();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_39;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v134 = v53;
    *v52 = 136315138;
    if (qword_27D0246F0 != -1)
    {
      swift_once();
    }

    *(v52 + 4) = sub_222B437C0(qword_27D0262A8, unk_27D0262B0, &v134);
    v54 = "%s Could not extract USO query from session, skipping ground truth generation";
    goto LABEL_38;
  }

  v107 = v13;
  v108 = v10;
  v112 = v22;
  v127 = v19;
  v113 = v17;
  v114 = v31;
  v115 = a3;
  v32 = *(v125 + 24);
  v128 = *(v125 + 16);
  v117 = (v124 + 56);
  v116 = (v124 + 48);
  v119 = a1;

  v118 = 0;
  while (1)
  {
    v42 = *(v119 + 16);
    v43 = v118;
    if (v118 == v42)
    {
      v44 = 1;
      v45 = v126;
      a3 = v122;
      v46 = v121;
    }

    else
    {
      v45 = v126;
      a3 = v122;
      v46 = v121;
      if (v118 >= v42)
      {
        __break(1u);
        goto LABEL_89;
      }

      sub_222B77C5C(v119 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v118, v121, type metadata accessor for FeaturisedTurn);
      v44 = 0;
      ++v43;
    }

    (*v117)(v46, v44, 1, v45);
    sub_222B5EC84(v46, a3);
    if ((*v116)(a3, 1, v45) == 1)
    {
      break;
    }

    v118 = v43;
    v47 = a3;
    a3 = v120;
    sub_222BC7E0C(v47, v120, type metadata accessor for FeaturisedTurn);
    v48 = *(a3 + *(v45 + 28));

    sub_222B77D34(a3, type metadata accessor for FeaturisedTurn);

    if (v48)
    {
      v33 = v48;
      v34 = (v48 + 64);
      v35 = -1;
      while (1)
      {
        ++v35;
        v36 = *(v33 + 16);
        if (v35 == v36)
        {
          break;
        }

        if (v35 >= v36)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        a3 = *(v34 - 4);
        v37 = *(v34 - 3);
        v39 = *(v34 - 2);
        v38 = *(v34 - 1);
        v40 = *v34;
        if (a3 == v128 && v37 == v32)
        {
          a3 = v128;
LABEL_43:

          v60 = v119;

          v131[0] = a3;
          v131[1] = v37;
          v131[2] = v39;
          v132 = v38;
          v133 = v40;
          extractMediaReference(event:)(v131, &v134);

          if (!v135)
          {
            goto LABEL_76;
          }

          v118 = v135;
          v109 = v134;
          v110 = v136;
          v111 = v137;
          v116 = v138;
          v117 = v139;
          LODWORD(v120) = v140;
          v122 = type metadata accessor for MediaPlayClassification();
          v132 = v122;
          v133 = &protocol witness table for MediaPlayClassification;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v131);
          sub_222B77C5C(v125, boxed_opaque_existential_1, type metadata accessor for MediaPlayClassification);
          sub_222B43E3C(v131, v129);
          v62 = *(v60 + 16);

          v128 = v62;
          if (v62)
          {
            v63 = 0;
            v125 = v119 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
            v124 = *(v124 + 72);
LABEL_46:
            v64 = __swift_project_boxed_opaque_existential_1(v129, v130);
            v65 = *(*(v64 + *(v122 + 9)) + 16);

            v66 = 0;
            do
            {
              if (v65 == v66)
              {

                if (++v63 != v128)
                {
                  goto LABEL_46;
                }

                goto LABEL_51;
              }

              a3 = v66 + 1;
              v67 = (*(v127 + 80) + 32) & ~*(v127 + 80);
              v68 = *(v127 + 72);
              sub_222BC7DC4(&qword_280FE02A0, MEMORY[0x277CC95F0]);
              v69 = sub_222C9447C();
              v66 = a3;
            }

            while ((v69 & 1) == 0);

            v121 = (v127 + 48);
LABEL_52:
            if (v63 >= v128)
            {
              goto LABEL_86;
            }

            v73 = *(v125 + v124 * v63 + *(v126 + 24));
            a3 = v123;
            sub_222B421FC(v73, v123);
            v74 = *v121;
            v75 = (*v121)(a3, 1, v18);
            sub_222B4FCD4(a3, &unk_27D026290, &qword_222C96B40);
            if (v75 == 1)
            {
              v76 = __OFADD__(v63++, 1);
              if (!v76)
              {
                while (v63 != v128)
                {
                  if (v63 >= v128)
                  {
                    goto LABEL_85;
                  }

                  v77 = __swift_project_boxed_opaque_existential_1(v129, v130);
                  v74 = *(v77 + *(v122 + 9));
                  v73 = *(v74 + 2);

                  v78 = v74 + v67;
                  v79 = v73 + 1;
                  while (--v79)
                  {
                    a3 = &v78[v68];
                    v73 = v18;
                    v80 = sub_222C9447C();
                    v78 = a3;
                    if (v80)
                    {

                      goto LABEL_52;
                    }
                  }

                  v76 = __OFADD__(v63++, 1);
                  if (v76)
                  {
                    goto LABEL_63;
                  }
                }

                goto LABEL_51;
              }

LABEL_63:
              __break(1u);
            }

            v81 = v107;
            sub_222B421FC(v73, v107);
            v82 = v108;
            sub_222B5551C(v81, v108);
            if (v74(v82, 1, v18) != 1)
            {
              v70 = v127;
              v72 = v113;
              (*(v127 + 32))(v113, v82, v18);
              sub_222B4FCD4(v81, &unk_27D026290, &qword_222C96B40);
              v71 = *(v70 + 56);
              v71(v72, 0, 1, v18);
              goto LABEL_66;
            }

            result = __swift_destroy_boxed_opaque_existential_0Tm(v129);
            __break(1u);
            return result;
          }

LABEL_51:
          v70 = v127;
          v71 = *(v127 + 56);
          v72 = v113;
          v71(v113, 1, 1, v18);
LABEL_66:

          v83 = v115;
          v84 = v120;
          __swift_destroy_boxed_opaque_existential_0Tm(v129);
          __swift_destroy_boxed_opaque_existential_0Tm(v131);
          if ((*(v70 + 48))(v72, 1, v18) != 1)
          {
            v93 = *(v70 + 32);
            v94 = v112;
            v93(v112, v72, v18);
            sub_222C9366C();
            v95 = type metadata accessor for MediaFeedbackGroundTruth();
            v96 = v95[8];
            v93((v83 + v96), v94, v18);
            v71(v83 + v96, 0, 1, v18);
            *(v83 + v95[5]) = 0;
            *(v83 + v95[6]) = v114;
            v97 = v83 + v95[7];
            v98 = v118;
            *v97 = v109;
            *(v97 + 8) = v98;
            v99 = v111;
            *(v97 + 16) = v110;
            *(v97 + 24) = v99;
            v100 = v117;
            *(v97 + 32) = v116;
            *(v97 + 40) = v100;
            *(v97 + 48) = v84;
            return (*(*(v95 - 1) + 56))(v83, 0, 1, v95);
          }

          sub_222B4FE14(v109, v118, v110, v111);
          sub_222B4FCD4(v72, &unk_27D026290, &qword_222C96B40);
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v85 = sub_222C9431C();
          __swift_project_value_buffer(v85, qword_280FE2340);
          v86 = sub_222C942FC();
          v87 = sub_222C94A4C();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v131[0] = v89;
            *v88 = 136315138;
            if (qword_27D0246F0 != -1)
            {
              swift_once();
            }

            *(v88 + 4) = sub_222B437C0(qword_27D0262A8, unk_27D0262B0, v131);
            _os_log_impl(&dword_222B39000, v86, v87, "%s Could not extract original request ID from session, skipping ground truth generation", v88, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v89);
            MEMORY[0x223DCA8C0](v89, -1, -1);
            MEMORY[0x223DCA8C0](v88, -1, -1);
          }

          v90 = type metadata accessor for MediaFeedbackGroundTruth();
          v91 = *(*(v90 - 8) + 56);
          v92 = v83;
          return v91(v92, 1, 1, v90);
        }

        v34 += 5;
        if (sub_222C951FC())
        {
          goto LABEL_43;
        }
      }
    }
  }

LABEL_76:
  v101 = v115;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v102 = sub_222C9431C();
  __swift_project_value_buffer(v102, qword_280FE2340);
  v103 = sub_222C942FC();
  v104 = sub_222C94A4C();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v134 = v106;
    *v105 = 136315138;
    if (qword_27D0246F0 != -1)
    {
      swift_once();
    }

    *(v105 + 4) = sub_222B437C0(qword_27D0262A8, unk_27D0262B0, &v134);
    _os_log_impl(&dword_222B39000, v103, v104, "%s Could not extract referenced entity from session, skipping ground truth generation", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    MEMORY[0x223DCA8C0](v106, -1, -1);
    MEMORY[0x223DCA8C0](v105, -1, -1);
  }

  v90 = type metadata accessor for MediaFeedbackGroundTruth();
  v91 = *(*(v90 - 8) + 56);
  v92 = v101;
  return v91(v92, 1, 1, v90);
}

uint64_t sub_222BC7DC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222BC7E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BC7EBC(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BC7F2C(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PhoneCallEventFeature.CallAnswered.__allocating_init(value:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PhoneCallEventFeature.CallAnswered.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222BC809C(char *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for PhoneCallEventFeature.CallAnswered(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BC80E8(char *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for PhoneCallEventFeature.CallAnswered(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PhoneCallEventFeature.CallEndTimestamp.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t PhoneCallEventFeature.AudioCallRoute.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t _s28SiriPrivateLearningInference21PhoneCallEventFeatureV05AudioF5RouteC5valueAEs5Int32V_tcfC_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t _s28SiriPrivateLearningInference21PhoneCallEventFeatureV05AudioF5RouteC5valueAESgs5Int32VSg_tcfC_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BC8514(int *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BC857C(int *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BC86C4(void *a1)
{
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  if ([a1 error] != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = [a1 eventBody];
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = v13;
  [a1 timestamp];
  sub_222C9351C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_222C9CD00;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026368, &unk_222C9CDE8);
  v16 = sub_222C944EC();
  v40 = v14;
  v18 = v17;
  v19 = type metadata accessor for CommonFeature.EventType(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  ObjectType = v16;
  v42 = v18;
  v22 = sub_222C93EEC();
  *(v15 + 56) = v19;
  v39 = MEMORY[0x277D5FBA0];
  *(v15 + 64) = sub_222BC8B58(&qword_27D026370, 255, type metadata accessor for CommonFeature.EventType);
  *(v15 + 32) = v22;
  v23 = v3[2];
  v23(v10, v12, v2);
  v24 = type metadata accessor for CommonFeature.OrderingTimestamp(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v23(v7, v10, v2);
  v27 = sub_222C93EEC();
  v38 = v3[1];
  v38(v10, v2);
  *(v15 + 96) = v24;
  *(v15 + 104) = sub_222BC8B58(&qword_27D026378, 255, type metadata accessor for CommonFeature.OrderingTimestamp);
  *(v15 + 72) = v27;
  v23(v10, v12, v2);
  sub_222C935BC();
  v29 = v28;
  started = type metadata accessor for CommonFeature.StartTimestamp(0);
  v31 = *(started + 48);
  v32 = *(started + 52);
  swift_allocObject();
  ObjectType = v29;
  v33 = sub_222C93EEC();
  v34 = v10;
  v35 = v38;
  v38(v34, v2);
  *(v15 + 136) = started;
  *(v15 + 144) = sub_222BC8B58(&unk_27D026380, 255, type metadata accessor for CommonFeature.StartTimestamp);
  *(v15 + 112) = v33;
  swift_unknownObjectRelease();
  v35(v12, v2);
  return v15;
}

uint64_t sub_222BC8B58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_222BC8BA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026390, qword_222C9CDF8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D03BB20 = 91;
  *algn_27D03BB28 = 0xE100000000000000;
  return result;
}

uint64_t sub_222BC8C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for EntityPromptClassification();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B858A8(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_222BC93E4(v14, v19);
    if (*(a1 + *(v4 + 28)))
    {
      v20 = v19[80];
      sub_222BC9448(v19, type metadata accessor for EntityPromptClassification);
      if ((v20 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_222BC9448(v19, type metadata accessor for EntityPromptClassification);
    }

LABEL_13:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v31 = sub_222C9431C();
    __swift_project_value_buffer(v31, qword_280FE2340);
    sub_222B85800(a1, v8);
    v32 = sub_222C942FC();
    v33 = sub_222C94A3C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = v35;
      *v34 = 136315394;
      if (qword_27D0246F8 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_222B437C0(qword_27D03BB20, *algn_27D03BB28, &v42);
      *(v34 + 12) = 2080;
      v36 = sub_222C9360C();
      v38 = v37;
      sub_222BC9448(v8, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      v39 = sub_222B437C0(v36, v38, &v42);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_222B39000, v32, v33, "%s Suggestion (%s) marked as not redundant ", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v35, -1, -1);
      MEMORY[0x223DCA8C0](v34, -1, -1);
    }

    else
    {

      sub_222BC9448(v8, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    }

    return 1;
  }

  sub_222BC937C(v14);
  if ((*(a1 + *(v4 + 28)) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v21 = sub_222C9431C();
  __swift_project_value_buffer(v21, qword_280FE2340);
  sub_222B85800(a1, v10);
  v22 = sub_222C942FC();
  v23 = sub_222C94A3C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42 = v25;
    *v24 = 136315394;
    if (qword_27D0246F8 != -1)
    {
      swift_once();
    }

    *(v24 + 4) = sub_222B437C0(qword_27D03BB20, *algn_27D03BB28, &v42);
    *(v24 + 12) = 2080;
    v26 = sub_222C9360C();
    v28 = v27;
    sub_222BC9448(v10, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v29 = sub_222B437C0(v26, v28, &v42);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_222B39000, v22, v23, "%s Suggestion (%s) marked as redundant", v24, 0x16u);
    v30 = 2;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v25, -1, -1);
    MEMORY[0x223DCA8C0](v24, -1, -1);
  }

  else
  {

    sub_222BC9448(v10, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    return 2;
  }

  return v30;
}

void *sub_222BC91F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D59CC8]) init];
  if (v5)
  {
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v8 = sub_222C9361C();
    v9 = [v7 initWithNSUUID_];

    [v6 setSuggestionId_];
    [v6 setContactSuggestionOutcome_];
    [v6 setContactSuggestionRedundancyState_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v11 = sub_222C942FC();
    v12 = sub_222C94A4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222B39000, v11, v12, "Failed to create SELF template for PLUSSchemaPLUSContactSuggestionOutcomeReported", v13, 2u);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_222BC937C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BC93E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityPromptClassification();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BC9448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222BC94A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    do
    {
      sub_222B85800(v15, v12);
      v17 = type metadata accessor for EntityPromptClassification();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
      v18 = sub_222BC8C30(v12, v7);
      sub_222BC937C(v7);
      v19 = sub_222BC91F0(v12, a2, v18);
      v20 = sub_222BC9448(v12, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      if (v19)
      {
        MEMORY[0x223DC94A0](v20);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        sub_222C947AC();
        v13 = v24;
      }

      v15 += v16;
      --v14;
    }

    while (v14);
  }

  return v13;
}

uint64_t TypedGroundTruth.data.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_222C9323C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_222C9322C();
  v6 = *(a2 + 16);
  v7 = sub_222C9321C();

  return v7;
}

uint64_t static TypedGroundTruth.fromData(data:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_222C931DC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_222C931CC();
  v9 = *(a2 + 8);
  sub_222C931BC();

  v10 = *(*(a1 - 8) + 56);

  return v10(a3, 0, 1, a1);
}

uint64_t InferredGroundTruthStore.readTypedGroundTruth<A>(_:limit:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 32))(a5, a7);
  type metadata accessor for AnyGroundTruth();
  sub_222BCB578(&qword_280FDFE70, type metadata accessor for AnyGroundTruth);
  sub_222C940AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026398, &qword_222C9CE40);
  sub_222BCAF64();
  v7 = sub_222C9466C();

  return v7;
}

uint64_t AnyGroundTruth.init(payload:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnyGroundTruth();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 48))(v8, v9);
  if (v11 >> 60 == 15)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v12 = *(v23 + 56);

    return v12(a2, 1, 1, v4);
  }

  else
  {
    v14 = &v7[*(v4 + 20)];
    *v14 = v10;
    v14[1] = v11;
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v17 = (*(v16 + 40))(v15, v16);
    v18 = &v7[*(v4 + 24)];
    *v18 = v17;
    v18[1] = v19;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    (*(v21 + 24))(v20, v21);
    sub_222BCB030(v7, a2);
    (*(v23 + 56))(a2, 0, 1, v4);
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }
}

uint64_t AnyGroundTruth.unwrapped<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = (*(a2 + 32))(a1, a2);
  v10 = v9;
  v11 = type metadata accessor for AnyGroundTruth();
  v12 = (v4 + *(v11 + 24));
  if (v8 == *v12 && v10 == v12[1])
  {

    return (*(a2 + 56))(*(v4 + *(v11 + 20)), *(v4 + *(v11 + 20) + 8), a1, a2);
  }

  v14 = sub_222C951FC();

  if (v14)
  {
    return (*(a2 + 56))(*(v4 + *(v11 + 20)), *(v4 + *(v11 + 20) + 8), a1, a2);
  }

  v15 = *(*(a1 - 8) + 56);

  return v15(a3, 1, 1, a1);
}

uint64_t AnyGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnyGroundTruth.payload.getter()
{
  v1 = v0 + *(type metadata accessor for AnyGroundTruth() + 20);
  v2 = *v1;
  sub_222B80358(*v1, *(v1 + 8));
  return v2;
}

uint64_t AnyGroundTruth.type.getter()
{
  v1 = (v0 + *(type metadata accessor for AnyGroundTruth() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_222BC9EE8()
{
  v1 = 0x64616F6C796170;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_222BC9F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222BCB468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222BC9F58(uint64_t a1)
{
  v2 = sub_222BCB0F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BC9F94(uint64_t a1)
{
  v2 = sub_222BCB0F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnyGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0263A8, &qword_222C9CE50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BCB0F0();
  sub_222C9536C();
  LOBYTE(v19) = 0;
  sub_222C9367C();
  sub_222BCB578(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for AnyGroundTruth();
    v12 = (v3 + *(v11 + 20));
    v13 = v12[1];
    v19 = *v12;
    v20 = v13;
    v18[15] = 1;
    sub_222B80358(v19, v13);
    sub_222B9BDF0();
    sub_222C9512C();
    sub_222B803C0(v19, v20);
    v14 = (v3 + *(v11 + 24));
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v19) = 2;
    sub_222C950EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AnyGroundTruth.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_222C9367C();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0263B8, &qword_222C9CE58);
  v29 = *(v32 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v32);
  v9 = &v25 - v8;
  v10 = type metadata accessor for AnyGroundTruth();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BCB0F0();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = v29;
  v15 = v30;
  v26 = v10;
  v27 = v13;
  LOBYTE(v33) = 0;
  sub_222BCB578(&qword_27D025178, MEMORY[0x277CC95F0]);
  v18 = v31;
  v17 = v32;
  sub_222C9507C();
  (*(v15 + 32))(v27, v18, v4);
  v34 = 1;
  sub_222B9B4B8();
  sub_222C9507C();
  *&v27[*(v26 + 20)] = v33;
  LOBYTE(v33) = 2;
  v19 = sub_222C9503C();
  v21 = v20;
  (*(v16 + 8))(v9, v17);
  v22 = v27;
  v23 = &v27[*(v26 + 24)];
  *v23 = v19;
  v23[1] = v21;
  sub_222BCB144(v22, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222BCB094(v22);
}

uint64_t sub_222BCA5AC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_222BCA5E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_222B80358(v4, v5);
}

void sub_222BCA664(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), const char *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0263A0, &qword_222C9CE48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25[-1] - v12;
  v14 = type metadata accessor for AnyGroundTruth();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v25[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B43E3C(a1, v25);
  AnyGroundTruth.init(payload:)(v25, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_222BCAFC8(v13);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);
    v20 = sub_222C942FC();
    v21 = sub_222C94A4C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_222B39000, v20, v21, a5, v22, 2u);
      MEMORY[0x223DCA8C0](v22, -1, -1);
    }
  }

  else
  {
    sub_222BCB030(v13, v18);
    v23 = sub_222BCB578(&qword_280FDFE70, type metadata accessor for AnyGroundTruth);
    a4(v18, v14, v23, a2, a3);
    sub_222BCB094(v18);
  }
}

Swift::Void __swiftcall InferredGroundTruthStore.writeTypedGroundTruth(groundTruths:)(Swift::OpaquePointer groundTruths)
{
  v5 = sub_222BCA94C(v3, v1, v2);
  v6 = *(groundTruths._rawValue + 2);
  if (v6)
  {
    v7 = v5;
    v8 = groundTruths._rawValue + 32;
    do
    {
      v7(v8);
      v8 += 40;
      --v6;
    }

    while (v6);
  }
}

void (*sub_222BCA94C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_222BCB5C0;
}

uint64_t sub_222BCAAB4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = sub_222C9323C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_222C9322C();
  sub_222BCB578(a3, a4);
  v9 = sub_222C9321C();

  return v9;
}

uint64_t sub_222BCABAC@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X4>, void (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  v8 = sub_222C931DC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_222C931CC();
  sub_222BCB578(a2, a3);
  sub_222C931BC();

  v11 = *(*(a1 - 8) + 56);

  return v11(a4, 0, 1, a1);
}

uint64_t type metadata accessor for AnyGroundTruth()
{
  result = qword_280FDFE50;
  if (!qword_280FDFE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222BCAF64()
{
  result = qword_280FDB7F0;
  if (!qword_280FDB7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026398, &qword_222C9CE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDB7F0);
  }

  return result;
}

uint64_t sub_222BCAFC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0263A0, &qword_222C9CE48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BCB030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroundTruth();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BCB094(uint64_t a1)
{
  v2 = type metadata accessor for AnyGroundTruth();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222BCB0F0()
{
  result = qword_27D0263B0;
  if (!qword_27D0263B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0263B0);
  }

  return result;
}

uint64_t sub_222BCB144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BCB2CC()
{
  result = sub_222C9367C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_222BCB364()
{
  result = qword_27D0263C0;
  if (!qword_27D0263C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0263C0);
  }

  return result;
}

unint64_t sub_222BCB3BC()
{
  result = qword_27D0263C8;
  if (!qword_27D0263C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0263C8);
  }

  return result;
}

unint64_t sub_222BCB414()
{
  result = qword_27D0263D0;
  if (!qword_27D0263D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0263D0);
  }

  return result;
}

uint64_t sub_222BCB468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222BCB578(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_222BCB5C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  InferredGroundTruthStore.writeTypedGroundTruth(groundTruth:)(a1, v2, v3);
}

uint64_t static EntityUtteranceComparison.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return (*(a1 + 32) ^ *(a2 + 32) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MediaPlayClassification.init(totalPlayLength:siriStarted:playMediaEventId:nowPlayingEventId:playMediaTurn:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = a8;
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  v10 = type metadata accessor for MediaPlayClassification();
  v11 = v10[8];
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  v14 = v13;
  v15 = *(v13 + 16);
  v15(a7 + v11, a6, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v16 = *(v13 + 72);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_222C97C40;
  v15(v18 + v17, a7 + v11, v12);
  *(a7 + v10[9]) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_222C96900;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  *(v19 + 56) = a5;
  v20 = *(v14 + 8);

  result = v20(a6, v12);
  *(a7 + v10[10]) = v19;
  return result;
}

uint64_t type metadata accessor for MediaPlayClassification()
{
  result = qword_27D026428;
  if (!qword_27D026428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222BCB8C4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v2 = sub_222C9431C();
    __swift_project_value_buffer(v2, qword_280FE2340);
    v3 = sub_222C942FC();
    v4 = sub_222C94A4C();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_9;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (qword_27D024700 != -1)
    {
      swift_once();
    }

    *(v5 + 4) = sub_222B437C0(qword_27D026418, unk_27D026420, &v11);
    v7 = "%s Encountered totalPlayLength of 0.0";
LABEL_8:
    _os_log_impl(&dword_222B39000, v3, v4, v7, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x223DCA8C0](v6, -1, -1);
    MEMORY[0x223DCA8C0](v5, -1, -1);
LABEL_9:

    return 2;
  }

  if (*v0 >= 0.0 && v1 < 30.0)
  {
    return 0;
  }

  if (v1 < 30.0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v3 = sub_222C942FC();
    v4 = sub_222C94A4C();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_9;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (qword_27D024700 != -1)
    {
      swift_once();
    }

    *(v5 + 4) = sub_222B437C0(qword_27D026418, unk_27D026420, &v11);
    v7 = "%s Encountered unhandled totalPlayLength";
    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_222BCBB48()
{
  type metadata accessor for MediaPlayClassification();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026438, qword_222C9D188);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D026418 = 91;
  unk_27D026420 = 0xE100000000000000;
  return result;
}

uint64_t MediaPlayClassification.referencedTurns.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaPlayClassification() + 36));
}

uint64_t MediaPlayClassification.referencedEvents.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaPlayClassification() + 40));
}

void sub_222BCBC74()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222BCBD34();
    if (v1 <= 0x3F)
    {
      sub_222B85C4C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222BCBD34()
{
  if (!qword_280FDB808)
  {
    sub_222C9367C();
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB808);
    }
  }
}

uint64_t static InferenceLogUtils.loggerTag<A>(_:)()
{
  swift_getMetatypeMetadata();
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_222BCBDFC()
{
  v0 = sub_222C9431C();
  __swift_allocate_value_buffer(v0, qword_280FE2340);
  __swift_project_value_buffer(v0, qword_280FE2340);
  return sub_222C9430C();
}

uint64_t sub_222BCBE78()
{
  sub_222C93B7C();
  result = sub_222C93B6C();
  qword_280FDF1F8 = result;
  return result;
}

uint64_t coreAnalyticsLogger.getter()
{
  if (qword_280FDF1F0 != -1)
  {
    swift_once();
  }
}

uint64_t makeNowPlayingFeatureExtractor()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NowPlayingFeatureExtractor();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_222C9417C();
  a1[3] = v2;
  result = sub_222BCCCA8(&qword_27D026440, type metadata accessor for NowPlayingFeatureExtractor);
  a1[4] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_222BCBFA4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C9417C();
}

uint64_t type metadata accessor for NowPlayingFeatureExtractor()
{
  result = qword_27D026458;
  if (!qword_27D026458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_222BCC064(void *a1)
{
  v2 = sub_222BCCB38(a1);
  v4 = v3;
  v5 = type metadata accessor for CommonFeature.UniqueIdentifier(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v105 = v2;
  *(&v105 + 1) = v4;
  v8 = sub_222C93EEC();
  v108[8] = v5;
  v108[9] = sub_222BCCCA8(&qword_27D026468, type metadata accessor for CommonFeature.UniqueIdentifier);
  v108[5] = v8;
  v9 = [a1 bundleID];
  v10 = sub_222C9449C();
  v12 = v11;

  v13 = type metadata accessor for CommonFeature.BundleID(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v105 = v10;
  *(&v105 + 1) = v12;
  v16 = sub_222C93EEC();
  v108[13] = v13;
  v108[14] = sub_222BCCCA8(&qword_27D026470, type metadata accessor for CommonFeature.BundleID);
  v108[10] = v16;
  v17 = [a1 playbackState];
  if (v17 >= 6)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = type metadata accessor for NowPlayingFeatures.PlaybackState(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  LOBYTE(v105) = v18;
  v22 = sub_222C93EEC();
  v108[18] = v19;
  v108[19] = sub_222BCCCA8(&qword_27D026478, type metadata accessor for NowPlayingFeatures.PlaybackState);
  v108[15] = v22;
  v23 = [a1 title];
  v24 = sub_222C9449C();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    v24 = 0;
    v26 = 0;
  }

  v28 = type metadata accessor for NowPlayingFeatures.Title(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&v105 = v24;
  *(&v105 + 1) = v26;
  v31 = sub_222C93EDC();
  v32 = v31;
  if (v31)
  {
    v31 = sub_222BCCCA8(&qword_27D0264B0, type metadata accessor for NowPlayingFeatures.Title);
  }

  else
  {
    v28 = 0;
    v108[21] = 0;
    v108[22] = 0;
  }

  v108[20] = v32;
  v108[23] = v28;
  v108[24] = v31;
  v33 = [a1 artist];
  v34 = sub_222C9449C();
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

    v34 = 0;
    v36 = 0;
  }

  v38 = type metadata accessor for NowPlayingFeatures.Artist(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *&v105 = v34;
  *(&v105 + 1) = v36;
  v41 = sub_222C93EDC();
  v42 = v41;
  if (v41)
  {
    v41 = sub_222BCCCA8(&qword_27D0264A8, type metadata accessor for NowPlayingFeatures.Artist);
  }

  else
  {
    v38 = 0;
    v108[26] = 0;
    v108[27] = 0;
  }

  v108[25] = v42;
  v108[28] = v38;
  v108[29] = v41;
  v43 = [a1 album];
  v44 = sub_222C9449C();
  v46 = v45;

  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {

    v44 = 0;
    v46 = 0;
  }

  v48 = type metadata accessor for NowPlayingFeatures.Album(0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  *&v105 = v44;
  *(&v105 + 1) = v46;
  v51 = sub_222C93EDC();
  v52 = v51;
  if (v51)
  {
    v51 = sub_222BCCCA8(&qword_27D0264A0, type metadata accessor for NowPlayingFeatures.Album);
  }

  else
  {
    v48 = 0;
    v108[31] = 0;
    v108[32] = 0;
  }

  v108[30] = v52;
  v108[33] = v48;
  v108[34] = v51;
  v53 = [a1 genre];
  v54 = sub_222C9449C();
  v56 = v55;

  v57 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v57 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v57)
  {

    v54 = 0;
    v56 = 0;
  }

  v58 = type metadata accessor for NowPlayingFeatures.Genre(0);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  *&v105 = v54;
  *(&v105 + 1) = v56;
  v61 = sub_222C93EDC();
  v62 = v61;
  if (v61)
  {
    v61 = sub_222BCCCA8(&qword_27D026498, type metadata accessor for NowPlayingFeatures.Genre);
  }

  else
  {
    v58 = 0;
    v108[36] = 0;
    v108[37] = 0;
  }

  v108[35] = v62;
  v108[38] = v58;
  v108[39] = v61;
  v63 = [a1 mediaType];
  v64 = sub_222C9449C();
  v66 = v65;

  sub_222BCC908(v64, v66, &v105);
  v67 = v105;
  v68 = type metadata accessor for NowPlayingFeatures.MediaType(0);
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v102 = v67;
  v71 = sub_222C93EEC();
  v108[43] = v68;
  v108[44] = sub_222BCCCA8(&qword_27D026480, type metadata accessor for NowPlayingFeatures.MediaType);
  v108[40] = v71;
  v72 = [a1 duration];
  v73 = type metadata accessor for NowPlayingFeatures.Duration(0);
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  *&v105 = v72;
  v76 = sub_222C93EEC();
  v108[48] = v73;
  v108[49] = sub_222BCCCA8(&qword_27D026488, type metadata accessor for NowPlayingFeatures.Duration);
  v108[45] = v76;
  v77 = [a1 iTunesStoreIdentifier];
  v78 = sub_222C9449C();
  v80 = v79;

  v81 = HIBYTE(v80) & 0xF;
  if ((v80 & 0x2000000000000000) == 0)
  {
    v81 = v78 & 0xFFFFFFFFFFFFLL;
  }

  if (!v81)
  {

    v78 = 0;
    v80 = 0;
  }

  v82 = type metadata accessor for NowPlayingFeatures.ITunesStoreIdentifier(0);
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  swift_allocObject();
  *&v105 = v78;
  *(&v105 + 1) = v80;
  v85 = sub_222C93EDC();
  v86 = v85;
  if (v85)
  {
    v85 = sub_222BCCCA8(&qword_27D026490, type metadata accessor for NowPlayingFeatures.ITunesStoreIdentifier);
  }

  else
  {
    v82 = 0;
    v108[52] = 0;
    v108[51] = 0;
  }

  v108[50] = v86;
  v108[53] = v82;
  v108[54] = v85;
  v87 = 4;
  v88 = MEMORY[0x277D84F90];
  do
  {
    sub_222B43F34(&v108[v87 + 1], &v105);
    v100[0] = v105;
    v100[1] = v106;
    v101 = v107;
    if (*(&v106 + 1))
    {
      sub_222B405A0(v100, &v102);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108[0] = v88;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = sub_222B4A108(0, v88[2] + 1, 1, v88);
        v108[0] = v88;
      }

      v91 = v88[2];
      v90 = v88[3];
      if (v91 >= v90 >> 1)
      {
        v88 = sub_222B4A108((v90 > 1), v91 + 1, 1, v88);
        v108[0] = v88;
      }

      v92 = v103;
      v93 = v104;
      v94 = __swift_mutable_project_boxed_opaque_existential_1(&v102, v103);
      v95 = *(*(v92 - 8) + 64);
      MEMORY[0x28223BE20](v94);
      v97 = v100 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v98 + 16))(v97);
      sub_222B4F8F0(v91, v97, v108, v92, v93);
      __swift_destroy_boxed_opaque_existential_0Tm(&v102);
    }

    else
    {
      sub_222B43FA4(v100);
    }

    v87 += 5;
  }

  while (v87 != 54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024860, &unk_222C962F0);
  swift_arrayDestroy();
  return v88;
}

uint64_t sub_222BCC908@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v6 = a1;
  result = *MEMORY[0x277D27B08];
  if (!*MEMORY[0x277D27B08])
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (sub_222C9449C() == v6 && v8 == a2)
  {
    v11 = 1;
    goto LABEL_13;
  }

  v10 = sub_222C951FC();

  if (v10)
  {
    v11 = 1;
    goto LABEL_14;
  }

  result = *MEMORY[0x277D27B10];
  if (!*MEMORY[0x277D27B10])
  {
    goto LABEL_37;
  }

  if (sub_222C9449C() == v6 && v12 == a2)
  {
    v11 = 2;
    goto LABEL_13;
  }

  v14 = sub_222C951FC();

  if (v14)
  {
    v11 = 2;
    goto LABEL_14;
  }

  result = *MEMORY[0x277D27AF0];
  if (!*MEMORY[0x277D27AF0])
  {
    goto LABEL_38;
  }

  if (sub_222C9449C() == v6 && v15 == a2)
  {
    v11 = 3;
    goto LABEL_13;
  }

  v16 = sub_222C951FC();

  if (v16)
  {
    v11 = 3;
    goto LABEL_14;
  }

  result = *MEMORY[0x277D27B00];
  if (*MEMORY[0x277D27B00])
  {
    if (sub_222C9449C() != v6 || v17 != a2)
    {
      v18 = sub_222C951FC();

      v11 = a2;
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      v11 = 4;
LABEL_14:

      v6 = 0;
LABEL_15:
      *a3 = v6;
      a3[1] = v11;
      return result;
    }

    v11 = 4;
LABEL_13:

    goto LABEL_14;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_222BCCB00()
{
  sub_222C9418C();

  return swift_deallocClassInstance();
}

uint64_t sub_222BCCB38(void *a1)
{
  v2 = [a1 uniqueID];
  v3 = sub_222C9449C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = [a1 uniqueID];
    v8 = sub_222C9449C();
  }

  else
  {
    sub_222C94D1C();
    MEMORY[0x223DC9330](0x6979616C50776F4ELL, 0xEB000000003A676ELL);
    v9 = [a1 title];
    v10 = sub_222C9449C();
    v12 = v11;

    MEMORY[0x223DC9330](v10, v12);

    MEMORY[0x223DC9330](58, 0xE100000000000000);
    [a1 absoluteTimestamp];
    sub_222C948DC();
    return 0;
  }

  return v8;
}

uint64_t sub_222BCCCA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MediaFeedbackGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MediaFeedbackGroundTruth.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaFeedbackGroundTruth();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for MediaFeedbackGroundTruth()
{
  result = qword_280FDE508;
  if (!qword_280FDE508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaFeedbackGroundTruth.usoQuery.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaFeedbackGroundTruth() + 24));
}

uint64_t MediaFeedbackGroundTruth.mediaReference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaFeedbackGroundTruth() + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 24);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_222B554C0(&v9, v8);
}

uint64_t sub_222BCCE8C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x79726575516F7375;
  v4 = 0x666552616964656DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656372756F73;
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

uint64_t sub_222BCCF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222BCF294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222BCCF50(uint64_t a1)
{
  v2 = sub_222BCEA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BCCF8C(uint64_t a1)
{
  v2 = sub_222BCEA00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaFeedbackGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264B8, &unk_222C9D230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BCEA00();
  sub_222C9536C();
  LOBYTE(v26[0]) = 0;
  sub_222C9367C();
  sub_222BCF578(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for MediaFeedbackGroundTruth();
    LOBYTE(v26[0]) = *(v3 + v11[5]);
    LOBYTE(v22) = 1;
    sub_222B52A64();
    sub_222C9512C();
    v29 = *(v3 + v11[6]);
    v28 = 2;
    sub_222C9386C();
    sub_222BCF578(&qword_27D025150, MEMORY[0x277D5E9D8]);
    sub_222C9512C();
    v12 = (v3 + v11[7]);
    v13 = v12[1];
    v26[0] = *v12;
    v26[1] = v13;
    v15 = *v12;
    v14 = v12[1];
    v26[2] = v12[2];
    v27 = *(v12 + 24);
    v22 = v15;
    v23 = v14;
    v24 = v12[2];
    v25 = *(v12 + 24);
    v21 = 3;
    sub_222B554C0(v26, v19);
    sub_222B55A2C();
    sub_222C9512C();
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v20 = v25;
    sub_222B55A80(v19);
    v16 = v11[8];
    v18[15] = 4;
    sub_222C950DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MediaFeedbackGroundTruth.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_222C9367C();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264C8, &qword_222C9D240);
  v28 = *(v31 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v25 - v11;
  v13 = type metadata accessor for MediaFeedbackGroundTruth();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BCEA00();
  v30 = v12;
  v18 = v32;
  sub_222C9535C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v32 = v6;
  v19 = v16;
  v20 = v27;
  LOBYTE(v33) = 0;
  sub_222BCF578(&qword_27D025178, MEMORY[0x277CC95F0]);
  sub_222C9507C();
  (*(v20 + 32))(v19, v29, v7);
  v38 = 1;
  sub_222B551D4();
  sub_222C9507C();
  *(v19 + v13[5]) = v33;
  sub_222C9386C();
  v38 = 2;
  sub_222BCF578(&qword_27D025180, MEMORY[0x277D5E9D8]);
  sub_222C9507C();
  v21 = v28;
  *(v19 + v13[6]) = v33;
  v38 = 3;
  sub_222B55B4C();
  sub_222C9507C();
  v22 = v19 + v13[7];
  v23 = v34;
  *v22 = v33;
  *(v22 + 16) = v23;
  *(v22 + 32) = v35;
  *(v22 + 48) = v36;
  v37 = 4;
  sub_222C9502C();
  (*(v21 + 8))(v30, v31);
  sub_222B55BA0(v32, v19 + v13[8]);
  sub_222BCEA54(v19, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222BCEAB8(v19);
}

uint64_t sub_222BCD8D4()
{
  v1 = 0x6673736563637573;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F74536B63697571;
  }
}

uint64_t sub_222BCD944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222BCF448(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222BCD96C(uint64_t a1)
{
  v2 = sub_222BCEB14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BCD9A8(uint64_t a1)
{
  v2 = sub_222BCEB14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BCD9E4(uint64_t a1)
{
  v2 = sub_222BCEB68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BCDA20(uint64_t a1)
{
  v2 = sub_222BCEB68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BCDA5C(uint64_t a1)
{
  v2 = sub_222BCEC10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BCDA98(uint64_t a1)
{
  v2 = sub_222BCEC10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BCDAD4(uint64_t a1)
{
  v2 = sub_222BCEBBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BCDB10(uint64_t a1)
{
  v2 = sub_222BCEBBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaFeedbackGroundTruthSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264D0, &qword_222C9D248);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264D8, &qword_222C9D250);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264E0, &qword_222C9D258);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264E8, &qword_222C9D260);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BCEB14();
  sub_222C9536C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_222BCEBBC();
      v12 = v26;
      sub_222C950BC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_222BCEB68();
      v12 = v29;
      sub_222C950BC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_222BCEC10();
    sub_222C950BC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t MediaFeedbackGroundTruthSource.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t MediaFeedbackGroundTruthSource.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026510, &qword_222C9D268);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026518, &qword_222C9D270);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026520, &qword_222C9D278);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026528, &unk_222C9D280);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_222BCEB14();
  v20 = v43;
  sub_222C9535C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_222C9508C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_222B572CC();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_222C94DBC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
      *v30 = &type metadata for MediaFeedbackGroundTruthSource;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_222BCEBBC();
          sub_222C94FFC();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_222BCEB68();
          v33 = v22;
          sub_222C94FFC();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_222BCEC10();
        sub_222C94FFC();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

uint64_t MediaFeedbackGroundTruth.with(source:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_222C9367C();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for MediaFeedbackGroundTruth();
  v7 = *(v2 + v6[6]);
  v8 = (v2 + v6[7]);
  v9 = v8[2];
  v15 = v8[1];
  v16 = v9;
  v17 = *(v8 + 24);
  v14 = *v8;
  sub_222B5551C(v2 + v6[8], a2 + v6[8]);
  *(a2 + v6[5]) = v4;
  *(a2 + v6[6]) = v7;
  v10 = a2 + v6[7];
  v11 = v15;
  *v10 = v14;
  *(v10 + 16) = v11;
  *(v10 + 32) = v16;
  *(v10 + 48) = v17;

  return sub_222B554C0(&v14, v13);
}

BOOL _s28SiriPrivateLearningInference24MediaFeedbackGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for MediaFeedbackGroundTruth();
  if (*(a1 + *(v17 + 20)) != *(a2 + *(v17 + 20)))
  {
    return 0;
  }

  v18 = v17;
  if ((_s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(*(a1 + *(v17 + 24)), *(a2 + *(v17 + 24))) & 1) == 0)
  {
    return 0;
  }

  v36 = v5;
  v19 = (a1 + *(v18 + 28));
  v20 = v19[1];
  v47[0] = *v19;
  v47[1] = v20;
  v22 = *v19;
  v21 = v19[1];
  v47[2] = v19[2];
  v48 = *(v19 + 24);
  v23 = v19[2];
  v44 = v21;
  v45 = v23;
  v46 = *(v19 + 24);
  v43 = v22;
  v24 = (a2 + *(v18 + 28));
  v25 = v24[2];
  v26 = *v24;
  v27 = *v24;
  v50 = v24[1];
  v51 = v25;
  v49 = v26;
  v52 = *(v24 + 24);
  v39 = v27;
  v40 = v50;
  v41 = v24[2];
  v42 = *(v24 + 24);
  sub_222B554C0(v47, v38);
  sub_222B554C0(&v49, v38);
  v37 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v43, &v39);
  v53[0] = v39;
  v53[1] = v40;
  v53[2] = v41;
  v54 = v42;
  sub_222B55A80(v53);
  v55[0] = v43;
  v55[1] = v44;
  v55[2] = v45;
  v56 = v46;
  sub_222B55A80(v55);
  if (!v37)
  {
    return 0;
  }

  v28 = *(v18 + 32);
  v29 = *(v13 + 48);
  sub_222B5551C(a1 + v28, v16);
  sub_222B5551C(a2 + v28, &v16[v29]);
  v30 = v36;
  v31 = *(v36 + 48);
  if (v31(v16, 1, v4) == 1)
  {
    if (v31(&v16[v29], 1, v4) == 1)
    {
      sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
      return 1;
    }

    goto LABEL_10;
  }

  sub_222B5551C(v16, v12);
  if (v31(&v16[v29], 1, v4) == 1)
  {
    (*(v30 + 8))(v12, v4);
LABEL_10:
    sub_222B4FCD4(v16, &qword_27D025290, &unk_222C97C30);
    return 0;
  }

  (*(v30 + 32))(v8, &v16[v29], v4);
  sub_222BCF578(&qword_280FE02A0, MEMORY[0x277CC95F0]);
  v33 = sub_222C9447C();
  v34 = *(v30 + 8);
  v34(v8, v4);
  v34(v12, v4);
  sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
  return (v33 & 1) != 0;
}

unint64_t sub_222BCEA00()
{
  result = qword_27D0264C0;
  if (!qword_27D0264C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0264C0);
  }

  return result;
}

uint64_t sub_222BCEA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaFeedbackGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BCEAB8(uint64_t a1)
{
  v2 = type metadata accessor for MediaFeedbackGroundTruth();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222BCEB14()
{
  result = qword_27D0264F0;
  if (!qword_27D0264F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0264F0);
  }

  return result;
}

unint64_t sub_222BCEB68()
{
  result = qword_27D0264F8;
  if (!qword_27D0264F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0264F8);
  }

  return result;
}

unint64_t sub_222BCEBBC()
{
  result = qword_27D026500;
  if (!qword_27D026500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026500);
  }

  return result;
}

unint64_t sub_222BCEC10()
{
  result = qword_27D026508;
  if (!qword_27D026508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026508);
  }

  return result;
}

uint64_t sub_222BCEC64(uint64_t a1)
{
  *(a1 + 8) = sub_222BCF578(&qword_27D0263F8, type metadata accessor for MediaFeedbackGroundTruth);
  result = sub_222BCF578(&qword_27D026400, type metadata accessor for MediaFeedbackGroundTruth);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_222BCECEC()
{
  result = qword_27D026530;
  if (!qword_27D026530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026530);
  }

  return result;
}

void sub_222BCED68()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C9386C();
    if (v1 <= 0x3F)
    {
      sub_222B56160();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_222BCEE78()
{
  result = qword_27D026538;
  if (!qword_27D026538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026538);
  }

  return result;
}

unint64_t sub_222BCEED0()
{
  result = qword_27D026540;
  if (!qword_27D026540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026540);
  }

  return result;
}

unint64_t sub_222BCEF28()
{
  result = qword_27D026548;
  if (!qword_27D026548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026548);
  }

  return result;
}

unint64_t sub_222BCEF80()
{
  result = qword_27D026550;
  if (!qword_27D026550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026550);
  }

  return result;
}

unint64_t sub_222BCEFD8()
{
  result = qword_27D026558;
  if (!qword_27D026558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026558);
  }

  return result;
}

unint64_t sub_222BCF030()
{
  result = qword_27D026560;
  if (!qword_27D026560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026560);
  }

  return result;
}

unint64_t sub_222BCF088()
{
  result = qword_27D026568;
  if (!qword_27D026568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026568);
  }

  return result;
}

unint64_t sub_222BCF0E0()
{
  result = qword_27D026570;
  if (!qword_27D026570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026570);
  }

  return result;
}

unint64_t sub_222BCF138()
{
  result = qword_27D026578;
  if (!qword_27D026578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026578);
  }

  return result;
}