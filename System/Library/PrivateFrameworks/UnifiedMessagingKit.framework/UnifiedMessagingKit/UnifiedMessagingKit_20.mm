uint64_t sub_27055F3D0(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a4;
  v39 = a3;
  v6 = sub_2705D6524();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_2_80(v7, v34);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return sub_2705D7494();
  }

  v49 = v4;
  v9 = swift_allocObject();
  v38 = v9;
  *(v9 + 16) = sub_2705D7494();
  v34 = v9 + 16;
  v36 = 0x80000002706171C0;
  v37 = a1;
  v10 = (a1 + 40);
  v35 = xmmword_2705DC030;
  v11 = v38;
  do
  {
    v42 = v8;
    v12 = *(v10 - 1);
    v13 = *v10;
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2705D7D04();

    v45 = 0xD000000000000022;
    v46 = v36;
    v14 = v39;
    v15 = v41;
    MEMORY[0x2743A3A90](v39, v41);
    OUTLINED_FUNCTION_12_39();
    OUTLINED_FUNCTION_4_66();
    MEMORY[0x2743A3A90](0x3F203D3D20, 0xE500000000000000);
    v16 = v46;
    v43 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520);
    inited = swift_initStackObject();
    *(inited + 16) = v35;
    *(inited + 32) = v12;
    *(inited + 40) = v13;
    *(inited + 48) = 3;
    v18 = swift_allocObject();
    v19 = v40;
    v18[2] = v40;
    v18[3] = v14;
    v18[4] = v15;
    v18[5] = v11;
    v18[6] = v37;
    v20 = MEMORY[0x28223BE20](v18);
    v33[2] = v19;
    v33[3] = v43;
    v33[4] = v16;
    v33[5] = inited;
    v33[6] = sub_2705600A0;
    v33[7] = v20;

    v21 = v49;
    sub_2705C9B9C(sub_270557A04, v33);
    v49 = v21;
    if (v21)
    {

      swift_setDeallocating();
      sub_2705CD7C4();

      return v16;
    }

    swift_setDeallocating();
    sub_2705CD7C4();

    v10 += 2;
    v8 = v42 - 1;
  }

  while (v42 != 1);
  if (qword_2807D7378 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v22 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v22);
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v45 = v40;
  v46 = v39;
  v47 = v41;
  v48 = &type metadata for AppKeyValueTable;

  v23 = AMSLogKey();
  if (v23)
  {
    v24 = v23;
    v25 = sub_2705D7564();
    v27 = v26;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_1_80();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_5_69(MetatypeMetadata);
    sub_2703B2934(v44, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v44[3] = MEMORY[0x277D837D0];
    v44[0] = v25;
    v44[1] = v27;
    sub_2705D64E4();
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_1_80();
    v29 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_5_69(v29);
  }

  sub_2703B2934(v44, &unk_2807D4890);
  v30 = v38;
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  sub_2705D6514();
  OUTLINED_FUNCTION_8_54();
  swift_beginAccess();
  v16 = *(v30 + 16);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7628);
  v45 = v16;

  sub_2705D64E4();
  sub_2703B2934(&v45, &unk_2807D4890);
  sub_2705D6504();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42B0);
  v45 = v37;

  sub_2705D64E4();
  sub_2703B2934(&v45, &unk_2807D4890);
  OUTLINED_FUNCTION_12_20();
  sub_2705D6534();
  v31 = sub_2705D7A64();
  sub_2705B6DB8(v31);

  return v16;
}

unint64_t sub_27055F9E4()
{
  result = qword_2807D7618;
  if (!qword_2807D7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7618);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppKeyValueTable.InternalKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27055FB14);
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27055FB4C(uint64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2705D6524();
  MEMORY[0x28223BE20](v11 - 8);
  sub_27055D598(a2, a3, a4, &v25);
  if (!v6)
  {
    if (*(&v25 + 1))
    {
      v27 = v25;
      v28 = v26[0];
      v29 = v26[1];
      sub_2703CAAEC(&v27, &v25, &qword_2807D6758);
      v12 = v25;
      sub_2703CAAEC(&v27, v22, &qword_2807D6758);

      sub_2703E43D4(&v23, v24);
      swift_beginAccess();
      sub_27055879C(v24, v12, *(&v12 + 1));
      swift_endAccess();
      sub_2703B2934(&v27, &qword_2807D6758);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    else
    {
      sub_2703B2934(&v25, qword_2807D7630);
      if (qword_2807D7378 != -1)
      {
        swift_once();
      }

      v30 = qword_28081C5F8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      sub_2705D6574();
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      *&v27 = a2;
      *(&v27 + 1) = a3;
      *&v28 = a4;
      *(&v28 + 1) = &type metadata for AppKeyValueTable;

      v13 = AMSLogKey();
      if (v13)
      {
        v14 = v13;
        v15 = sub_2705D7564();
        v17 = v16;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
        DynamicType = swift_getDynamicType();
        *(&v26[0] + 1) = swift_getMetatypeMetadata();
        *&v25 = DynamicType;
        sub_2705D64E4();
        sub_2703B2934(&v25, &unk_2807D4890);
        sub_2705D6504();
        *(&v26[0] + 1) = MEMORY[0x277D837D0];
        *&v25 = v15;
        *(&v25 + 1) = v17;
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
        v19 = swift_getDynamicType();
        *(&v26[0] + 1) = swift_getMetatypeMetadata();
        *&v25 = v19;
      }

      sub_2705D64E4();
      sub_2703B2934(&v25, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(&v27);
      sub_2705D6514();
      sub_2705D6504();
      *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42B0);
      *&v27 = a6;

      sub_2705D64E4();
      sub_2703B2934(&v27, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      v20 = sub_2705D7A74();
      sub_2705B6DB8(v20);
    }
  }

  return 1;
}

uint64_t sub_27055FFF0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 7)
  {
    return sub_27055782C(a1, a2);
  }

  return a1;
}

uint64_t sub_270560004(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 7)
  {
    return sub_27046DCA4(a1, a2);
  }

  return a1;
}

uint64_t sub_270560018()
{

  return swift_deallocObject();
}

uint64_t sub_270560050()
{

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_0_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_80()
{
  __swift_project_boxed_opaque_existential_1((v0 - 176), *(v0 - 152));

  return swift_getDynamicType();
}

void OUTLINED_FUNCTION_4_66()
{

  JUMPOUT(0x2743A3A90);
}

uint64_t OUTLINED_FUNCTION_5_69(uint64_t a1)
{
  *(v2 - 184) = a1;
  *(v2 - 208) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_8_54()
{

  return sub_2705D6504();
}

void OUTLINED_FUNCTION_12_39()
{

  JUMPOUT(0x2743A3A90);
}

uint64_t OUTLINED_FUNCTION_13_39()
{
  __swift_project_boxed_opaque_existential_1((v0 - 144), *(v0 - 120));

  return swift_getDynamicType();
}

uint64_t sub_2705601FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v5);
}

uint64_t sub_2705602E8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_270560350(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 252) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_20:
      v10 = *(a1 + v3);
      if (v10 >= 4)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 253;
}

void sub_270560478(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        JUMPOUT(0x270560630);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_270560670(uint64_t a1, uint64_t a2)
{
  sub_2705D7D04();
  MEMORY[0x2743A3A90](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x2743A3A90](a1, a2);
  MEMORY[0x2743A3A90](10272, 0xE200000000000000);
  MEMORY[0x2743A3A90](0x696669746E656469, 0xEA00000000007265);
  MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270617210);
  v4 = OUTLINED_FUNCTION_1_78();
  MEMORY[0x2743A3A90](v4);
  MEMORY[0x2743A3A90](0x202C4C41455220, 0xE700000000000000);
  MEMORY[0x2743A3A90](0x7463656A626FLL, 0xE600000000000000);
  MEMORY[0x2743A3A90](0x29424F4C4220, 0xE600000000000000);
  sub_2705C7664(0, 0xE000000000000000, MEMORY[0x277D84F90]);
}

id sub_27056087C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2705608B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = objc_opt_self();
  v4 = [objc_opt_self() currentProcess];
  v5 = [v3 ams:v4 configurationWithProcessInfo:0 bag:?];

  v6 = sub_2705D7534();
  [v5 set:v6 sourceApplicationBundleIdentifier:?];

  v7 = objc_allocWithZone(MEMORY[0x277CCACD8]);
  v8 = sub_270560AE4(0, 10000000, 0, 0);
  [v5 setURLCache_];

  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithConfiguration_delegate_delegateQueue_, v5, 0, 0);

  return v9;
}

id sub_270560A1C(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v6;
}

id sub_270560AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = sub_2705D7534();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithMemoryCapacity:a1 diskCapacity:a2 diskPath:v7];

  return v8;
}

uint64_t sub_270560BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7780);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_270560C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7780);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AsyncSerialQueue()
{
  result = qword_2807D7788;
  if (!qword_2807D7788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270560CAC()
{
  sub_270560D18();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_270560D18()
{
  if (!qword_2807D7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D77A0);
    v0 = sub_2705D7914();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D7798);
    }
  }
}

uint64_t sub_270560D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73E8);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77A8);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77B0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7780);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  v34 = v6;
  v35 = a2;
  (*(v6 + 16))(v9, a2, v4);
  v37 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77A0);
  sub_2705D7944();
  sub_2703CAAEC(v23, v21, &qword_2807D77B0);
  result = __swift_getEnumTagSinglePayload(v21, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v24 - 8) + 32))(v32, v21, v24);
    v26 = v31;
    v27 = v33;
    (*(v11 + 16))(v31, v17, v33);
    v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    (*(v11 + 32))(v29 + v28, v26, v27);
    v30 = v36;
    sub_2705619D8(0, 0, v36, &unk_27060E810, v29);

    (*(v34 + 8))(v35, v4);
    sub_2703B2934(v30, &qword_2807CEDD0);
    (*(v11 + 8))(v17, v27);
    return sub_2703B2934(v23, &qword_2807D77B0);
  }

  return result;
}

uint64_t sub_270561144(uint64_t a1, uint64_t a2)
{
  sub_2703B2934(a2, &qword_2807D77B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_2705611FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77B8);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2705612C8, 0, 0);
}

uint64_t sub_2705612C8()
{
  OUTLINED_FUNCTION_2_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77A8);
  sub_2705D7924();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_0_79(v1);
  v2 = *(v0 + 40);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_270561378()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_270561468, 0, 0);
}

uint64_t sub_270561468()
{
  OUTLINED_FUNCTION_2_2();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_2705615B4;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2705615B4()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;
  v4 = *(v1 + 72);
  v5 = *v0;
  *v3 = *v0;

  sub_2703B8280(v4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v5;
  OUTLINED_FUNCTION_0_79();
  v7 = *(v1 + 40);

  return MEMORY[0x2822003E8](v2 + 16, 0, 0, v7);
}

uint64_t sub_270561738()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77A8);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2705617FC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77A8) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_12_12(v7);
  *v8 = v9;
  v8[1] = sub_2705618F0;

  return sub_2705611FC(a1, v5, v6, v1 + v4);
}

uint64_t sub_2705618F0()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2705619D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2703CAAEC(a3, v24 - v10, &qword_2807CEDD0);
  v12 = sub_2705D78D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2703B2934(v11, &qword_2807CEDD0);
  }

  else
  {
    sub_2705D78C4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2705D7844();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2705D75F4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_270561C7C()
{

  return swift_deallocObject();
}

uint64_t sub_270561CB4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_37(v1);

  return v4(v3);
}

id sub_270561D80()
{
  sub_270555980();

  return sub_270561DF0();
}

id sub_270561DF0()
{
  v0 = sub_2705D7534();

  v1 = sub_2705D7534();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

uint64_t sub_270561F10()
{
  v0 = sub_2705D7EB4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_270561F5C(char a1)
{
  result = 0x69746375646F7250;
  switch(a1)
  {
    case 1:
      result = 0x7972726143;
      break;
    case 2:
      result = 0x65706F6C65766544;
      break;
    case 3:
      result = 0x75646F7270657250;
      break;
    case 4:
      result = 0x696D627573657250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270562050@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270561F10();
  *a1 = result;
  return result;
}

uint64_t sub_270562080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270561F5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2705620AC(char a1, char a2)
{
  v4 = sub_2705D6524();
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  if (qword_2807D7388 != -1)
  {
    OUTLINED_FUNCTION_11_43();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v6 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v6);
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77C0);
  v22[0] = &type metadata for Bootstrap;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = sub_2705D7564();
    v11 = v10;

    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    v12 = OUTLINED_FUNCTION_22_20();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v20[0] = v12;
    sub_2705D64E4();
    sub_2704B667C(v20);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v20[0] = v9;
    v20[1] = v11;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    v13 = OUTLINED_FUNCTION_22_20();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v20[0] = v13;
    sub_2705D64E4();
  }

  sub_2704B667C(v20);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_2705D64C4();
  v14 = sub_2705D7A54();
  sub_2705B6DB8(v14);

  sub_2705D6914();
  sub_2705D68D4();
  __swift_project_boxed_opaque_existential_1(v20, MetatypeMetadata);
  sub_2705D6CB4();
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  LOBYTE(v22[0]) = a1;
  sub_2705D6CA4();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  type metadata accessor for JSRuntime();
  swift_allocObject();
  v22[0] = sub_2705829D0(a2);
  sub_2705D6CA4();

  OUTLINED_FUNCTION_5_70(v17);
  v15 = [objc_opt_self() currentProcess];
  if (qword_2807D7348 != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  sub_27056252C(v15, qword_28081C558, v22);

  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_27056288C(v22);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_27056252C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v11[1] = a3;
  v5 = sub_2705D6DE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_2705D6DC4();
  sub_2705D6CA4();
  (*(v6 + 8))(v8, v5);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_2703CACA0(0, &unk_2807CF460);
  v18[0] = a1;
  sub_2705D6CA4();
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_2703CACA0(0, &qword_2807D7850);
  v17[0] = a2;
  sub_2705D6CA4();
  OUTLINED_FUNCTION_9_48(v18);
  OUTLINED_FUNCTION_15_39();
  OUTLINED_FUNCTION_5_70(v17);
  sub_2703CACA0(0, &qword_2807D7858);
  OUTLINED_FUNCTION_0_80();
  sub_2705D6C94();
  OUTLINED_FUNCTION_5_70(v16);
  sub_2703CACA0(0, &qword_2807D5008);
  OUTLINED_FUNCTION_0_80();
  sub_2705D6C84();
  OUTLINED_FUNCTION_5_70(v15);
  sub_2703CACA0(0, &qword_2807D77C8);
  v9 = [objc_allocWithZone(type metadata accessor for AppURLSession()) init];
  v13[0] = v9;
  sub_2705D6CA4();

  OUTLINED_FUNCTION_9_48(v14);
  OUTLINED_FUNCTION_15_39();
  OUTLINED_FUNCTION_5_70(v13);
  type metadata accessor for CoreMediaAPIService();
  OUTLINED_FUNCTION_0_80();
  sub_2705D6C84();
  OUTLINED_FUNCTION_9_48(v12);
  OUTLINED_FUNCTION_15_39();
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_27056288C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AppDatabase();
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7828);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7830);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7838);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77E0);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7840);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7848);
  sub_2705D6C84();
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_270564000(v8);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_270562B60()
{
  OUTLINED_FUNCTION_2_2();
  v0[52] = v1;
  v0[53] = v2;
  v3 = sub_2705D6D04();
  v0[54] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[55] = v4;
  v0[56] = swift_task_alloc();
  v5 = sub_2705D6524();
  OUTLINED_FUNCTION_23_0(v5);
  v0[57] = swift_task_alloc();
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_270562C38()
{
  if (qword_2807D7388 != -1)
  {
    OUTLINED_FUNCTION_11_43();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v1 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v1);
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77C0);
  v0[35] = v2;
  v0[32] = &type metadata for Bootstrap;
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    v5 = (v0 + 44);
    v6 = sub_2705D7564();
    v8 = v7;

    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v0 + 32, v2);
    DynamicType = swift_getDynamicType();
    v0[43] = swift_getMetatypeMetadata();
    v0[40] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C((v0 + 40));
    sub_2705D6504();
    v0[47] = MEMORY[0x277D837D0];
    v0[44] = v6;
    v0[45] = v8;
  }

  else
  {
    v5 = (v0 + 36);
    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v0 + 32, v2);
    v10 = swift_getDynamicType();
    v0[39] = swift_getMetatypeMetadata();
    v0[36] = v10;
  }

  sub_2705D64E4();
  sub_2704B667C(v5);
  v11 = v0[56];
  v12 = v0[54];
  v13 = v0[55];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  sub_2705D64C4();
  v14 = sub_2705D7A54();
  sub_2705B6DB8(v14);

  v0[58] = sub_2703CACA0(0, &qword_2807D77C8);
  v15 = objc_opt_self();
  v0[59] = v15;
  v16 = [v15 currentProcess];
  *v11 = 0xD00000000000001CLL;
  v11[1] = 0x8000000270615880;
  v11[2] = 0;
  v11[3] = 0;
  (*(v13 + 104))(v11, *MEMORY[0x277D22228], v12);
  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  v0[60] = v17;
  *v17 = v0;
  v17[1] = sub_270562FC4;
  v18 = v0[56];
  v19 = v0[53];

  return MEMORY[0x2821809B0](v16, v19, v18);
}

uint64_t sub_270562FC4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v2[48] = v1;
  v2[49] = v4;
  v2[50] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;
  *(v7 + 488) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2705630C8()
{
  v1 = v0[59];
  sub_2705D6914();
  sub_2705D68D4();
  OUTLINED_FUNCTION_9_48(v0 + 7);
  sub_2705D6CB4();
  OUTLINED_FUNCTION_5_70(v0 + 12);
  sub_2705D6654();
  OUTLINED_FUNCTION_1_81();
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  v2 = [v1 currentProcess];
  if (qword_2807D7348 != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  v3 = v0[49];
  sub_27056252C(v2, qword_28081C558, (v0 + 22));

  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v0[51] = v3;
  sub_2705D6CA4();
  OUTLINED_FUNCTION_9_48(v0 + 27);
  sub_2705D6CB4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 27));
  __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  sub_270563388(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_2705632FC()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270563388(void *a1)
{
  sub_270564000(a1);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77E0);
  v1 = objc_allocWithZone(type metadata accessor for JSLog());
  v3 = sub_27059B4CC();
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2705D6CB4();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_270563494(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for JSAMS();
  OUTLINED_FUNCTION_1_81();
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  type metadata accessor for JSBag();
  OUTLINED_FUNCTION_1_81();
  sub_2705D6C94();
  OUTLINED_FUNCTION_9_48(v2);
  sub_2705D6CB4();
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  sub_2705637AC(v4);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_2705635CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  objc_allocWithZone(type metadata accessor for JSBag());

  v14 = swift_task_alloc();
  *(v12 + 24) = v14;
  *v14 = v12;
  v14[1] = sub_27056368C;

  return sub_27058A034(a2, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_27056368C()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_7_55();
  v4 = v3;
  OUTLINED_FUNCTION_17_14();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_15();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_8_55();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_3_74();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

id sub_2705637AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = [objc_allocWithZone(MEMORY[0x277CD4660]) init];
  if (result)
  {
    v2 = result;
    sub_2703CACA0(0, &qword_2807D77D8);
    v4[0] = v2;
    sub_2705D6CA4();

    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2705D6CB4();
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_2705D7054();
    sub_2705D6C94();
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_2705D6CB4();
    __swift_destroy_boxed_opaque_existential_1(v3);
    __swift_destroy_boxed_opaque_existential_1(v4);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270563908@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_5_70(a1);
  type metadata accessor for MessagePageJSAMS();
  OUTLINED_FUNCTION_0_80();
  sub_2705D6C84();
  OUTLINED_FUNCTION_5_70(v7);
  type metadata accessor for JSBag();
  OUTLINED_FUNCTION_0_80();
  sub_2705D6C94();
  OUTLINED_FUNCTION_9_48(v6);
  OUTLINED_FUNCTION_15_39();
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_270563A78(v8, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_270563A24()
{
  v2 = OUTLINED_FUNCTION_17_30();
  v4 = objc_allocWithZone(v3(v2));

  result = v0(v5);
  *v1 = result;
  return result;
}

id sub_270563A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a3;
  v5 = sub_2705D4484();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = [objc_allocWithZone(MEMORY[0x277CD4660]) init];
  if (result)
  {
    v9 = result;
    sub_2703CACA0(0, &qword_2807D77D8);
    v14[0] = v9;
    sub_2705D6CA4();

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_2705D6CB4();
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_2705D7054();
    (*(v6 + 16))(&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
    v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v11 = swift_allocObject();
    (*(v6 + 32))(v11 + v10, &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    sub_2705D6C94();

    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_2705D6CB4();
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270563CD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppDatabase();
  sub_2705D68B4();
  result = sub_270559938(v4, 0);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_270563D4C@<X0>(void *a1@<X8>)
{
  sub_2705D68B4();
  v2 = objc_allocWithZone(type metadata accessor for JSApp());
  result = sub_270581F64(v4);
  *a1 = result;
  return result;
}

id sub_270563DF8@<X0>(void *a1@<X8>)
{
  sub_2703CACA0(0, &unk_2807CF460);
  sub_2705D68B4();
  sub_2705D68B4();
  v2 = objc_allocWithZone(type metadata accessor for JSClient());
  result = sub_27058AEE0(v5, v4);
  *a1 = result;
  return result;
}

uint64_t sub_270563ED8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  sub_2705D68B4();
  type metadata accessor for JSRuntime();
  sub_2705D68B4();
  v6 = objc_allocWithZone(a1(0));
  result = a2(v8);
  *a3 = result;
  return result;
}

uint64_t sub_270564000(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D6CB4();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77E8);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77F0);
  v7[0] = [objc_allocWithZone(type metadata accessor for JSDevice()) init];
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77F8);
  v6[0] = [objc_allocWithZone(type metadata accessor for JSLocalize()) init];
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7800);
  v5[0] = [objc_allocWithZone(type metadata accessor for JSLocation()) init];
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7808);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7810);
  v3[0] = [objc_allocWithZone(type metadata accessor for JSPrivacy()) init];
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7818);
  v2[0] = [objc_allocWithZone(type metadata accessor for JSUserNotifications()) init];
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7820);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2705D6CB4();
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

id sub_2705643FC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for JSAccountStore();
  v4.receiver = objc_allocWithZone(v2);
  v4.super_class = v2;
  result = objc_msgSendSuper2(&v4, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_2705644DC()
{
  v2 = OUTLINED_FUNCTION_17_30();
  v4 = objc_allocWithZone(v3(v2));

  result = v0(v5);
  *v1 = result;
  return result;
}

uint64_t sub_270564530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  v14 = swift_task_alloc();
  *(v12 + 24) = v14;
  *v14 = v12;
  v14[1] = sub_2705645C8;

  return sub_2705A7114(a2, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_2705645C8()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_7_55();
  v4 = v3;
  OUTLINED_FUNCTION_17_14();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_15();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_8_55();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_3_74();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_2705646E8()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_1_4();
  return v1();
}

uint64_t sub_270564718(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_27056368C;

  return sub_2705A77A8();
}

uint64_t sub_2705647B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[3] = a1;
  v13 = sub_2705D6DE4();
  v12[4] = v13;
  v12[5] = *(v13 - 8);
  v14 = swift_task_alloc();
  v12[6] = v14;
  v20 = swift_task_alloc();
  v12[7] = v20;
  *v20 = v12;
  v20[1] = sub_2705648D0;

  return MEMORY[0x28217F228](v14, v13, v13, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_2705648D0()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2705649CC()
{
  OUTLINED_FUNCTION_23_14();
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  sub_2703CACA0(0, &qword_2807D7858);
  *v3 = v0;
  v3[1] = sub_270564AD0;
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_270564AD0()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_270564BD4()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  **(v0 + 24) = *(v0 + 16);
  (*(v1 + 8))(v2, v3);

  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_270564C54()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270564CB0()
{
  OUTLINED_FUNCTION_23_14();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_270564D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = sub_2705D6DA4();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_270565450;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2703C9880;
  aBlock[3] = &block_descriptor_5;
  v9 = _Block_copy(aBlock);

  [v6 createSnapshotWithCompletion_];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_270564EFC(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7860);
    return sub_2705D7874();
  }

  else
  {
    if (!a2)
    {
      sub_2705654F0();
      swift_allocError();
      *v5 = 0;
      v5[1] = 0;
    }

    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7860);
    return sub_2705D7864();
  }
}

void sub_270564FB0(void *a1@<X8>)
{
  v2 = objc_opt_self();
  sub_2703CACA0(0, &unk_2807CF460);
  sub_2705D68B4();
  v3 = [v2 ams:v4 sharedAccountStoreForClient:?];

  *a1 = v3;
}

uint64_t sub_27056504C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2705D6DE4();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2705D68B4();
  type metadata accessor for CoreMediaAPIService();
  swift_allocObject();
  result = sub_270566B00(v4);
  *a1 = result;
  return result;
}

unint64_t sub_270565100()
{
  result = qword_2807D77D0;
  if (!qword_2807D77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D77D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JavaScriptEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270565220);
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_270565268()
{
  sub_2705D4484();
  OUTLINED_FUNCTION_11_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2705652E4()
{
  OUTLINED_FUNCTION_23_14();
  v2 = v1;
  v3 = sub_2705D4484();
  OUTLINED_FUNCTION_23_0(v3);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_270411828;

  return sub_270564718(v2);
}

uint64_t sub_2705653C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7860);
  OUTLINED_FUNCTION_11_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_270565450(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7860);
  OUTLINED_FUNCTION_23_0(v4);

  return sub_270564EFC(a1, a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2705654F0()
{
  result = qword_2807D7868;
  if (!qword_2807D7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7868);
  }

  return result;
}

uint64_t sub_270565544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270565594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2705655E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_270565600(void *result, int a2)
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

uint64_t OUTLINED_FUNCTION_11_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_39()
{

  return sub_2705D6CB4();
}

uint64_t OUTLINED_FUNCTION_22_20()
{
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return swift_getDynamicType();
}

id sub_27056576C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_2705657EC(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_2705D7534();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2705657EC(SEL *a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v7, *a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_2705D7564();

  return v5;
}

uint64_t sub_2705658DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705E10F0;
  *(inited + 32) = 0x6E69616D6F64;
  *(inited + 40) = 0xE600000000000000;
  v3 = [v1 domain];
  v4 = sub_2705D7564();
  v6 = v5;

  v7 = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 1701080931;
  *(inited + 88) = 0xE400000000000000;
  v8 = [v1 code];
  v9 = MEMORY[0x277D83B88];
  *(inited + 96) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0x6F666E4972657375;
  *(inited + 136) = 0xE800000000000000;
  v10 = [v1 userInfo];
  v11 = sub_2705D7464();

  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0);
  *(inited + 144) = v11;
  v12 = sub_2705D7494();
  v13 = sub_2705657EC(&selRef_ams_message);
  if (v14)
  {
    *(&v31 + 1) = v7;
    *&v30 = v13;
    *(&v30 + 1) = v14;
    sub_2703E43D4(&v30, v29);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_75();
    sub_2705664F8(v15, v16, 0xE700000000000000);
    v12 = v28;
  }

  else
  {
    v17 = sub_2703D7318(0x6567617373656DLL, 0xE700000000000000);
    if (v18)
    {
      v19 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      *&v29[0] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6750);
      sub_2705D7E04();

      sub_2703E43D4((*(v12 + 56) + 32 * v19), &v30);
      sub_2705D7E24();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    sub_2703B2934(&v30, &unk_2807D4890);
  }

  v20 = sub_2705657EC(&selRef_ams_title);
  if (v21)
  {
    *(&v31 + 1) = v7;
    *&v30 = v20;
    *(&v30 + 1) = v21;
    sub_2703E43D4(&v30, v29);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_75();
    sub_2705664F8(v22, v23, 0xE500000000000000);
    return v28;
  }

  else
  {
    v24 = sub_2703D7318(0x656C746974, 0xE500000000000000);
    if (v25)
    {
      v26 = v24;
      swift_isUniquelyReferenced_nonNull_native();
      *&v29[0] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6750);
      sub_2705D7E04();
      v12 = *&v29[0];

      sub_2703E43D4((*(v12 + 56) + 32 * v26), &v30);
      sub_2705D7E24();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    sub_2703B2934(&v30, &unk_2807D4890);
  }

  return v12;
}

id sub_270565CB4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    sub_2705D6F34();
    sub_270566624();
    v5 = swift_allocError();
    v52 = 0;
    v53 = 0;
    sub_2705D6F04();
  }

  v6 = a1;
  v7 = sub_2705D4354();

  v8 = [v7 userInfo];
  v9 = MEMORY[0x277D837D0];
  sub_2705D7464();

  if (!a1 || (v61[0] = a1, v10 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7880), (swift_dynamicCast() & 1) == 0))
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_15;
  }

  if (!*(&v59 + 1))
  {
LABEL_15:
    sub_2703B2934(&v58, &qword_2807D7878);
    goto LABEL_16;
  }

  sub_2703B291C(&v58, v61);
  __swift_project_boxed_opaque_existential_1(v61, v62);
  OUTLINED_FUNCTION_2_81();
  v11 = sub_2705D4204();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_2705D7564();
    *(&v59 + 1) = v9;
    *&v58 = v13;
    *(&v58 + 1) = v14;
    sub_2703E43D4(&v58, v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_81(isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v20, v21, v22, v52, v53, v54, v55, v56[0]);
  }

  __swift_project_boxed_opaque_existential_1(v61, v62);
  OUTLINED_FUNCTION_2_81();
  v23 = sub_2705D41F4();
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    sub_2705D7564();
    *(&v59 + 1) = v9;
    *&v58 = v25;
    *(&v58 + 1) = v26;
    sub_2703E43D4(&v58, v56);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_81(v27, v28, v29, v30, v31, v32, v33, v34, v52, v53, v54, v55, v56[0]);
  }

  __swift_project_boxed_opaque_existential_1(v61, v62);
  OUTLINED_FUNCTION_2_81();
  v35 = sub_2705D4214();
  if (v36)
  {
    v37 = v35;
    v38 = v36;
    sub_2705D7564();
    *(&v59 + 1) = v9;
    *&v58 = v37;
    *(&v58 + 1) = v38;
    sub_2703E43D4(&v58, v56);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_81(v39, v40, v41, v42, v43, v44, v45, v46, v52, v53, v54, v55, v56[0]);
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
LABEL_16:
  v47 = [v7 domain];
  if (!v47)
  {
    sub_2705D7564();
    v47 = sub_2705D7534();
  }

  v48 = [v7 code];
  v49 = sub_2705D7454();

  v57.receiver = v2;
  v57.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v57, sel_initWithDomain_code_userInfo_, v47, v48, v49);

  return v50;
}

id sub_2705660E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_2705D7534();

  if (a4)
  {
    v9 = sub_2705D7454();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

double sub_270566214@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_2703D7318(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6750);
    sub_2705D7E04();

    sub_2703E43D4((*(v9 + 56) + 32 * v7), a3);
    sub_2705D7E24();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_2705662FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2703D7318(a1, a2);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7890);
    sub_2705D7E04();

    sub_27055CA34(*(v9 + 56) + 8 * v8, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7528);
    result = sub_2705D7E24();
    *v3 = v9;
  }

  else
  {
    *a3 = 0;
  }

  *(a3 + 8) = (v7 & 1) == 0;
  return result;
}

uint64_t sub_270566404(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2703D7318(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7888);
  sub_2705D7E04();

  v7 = *(*(v9 + 56) + 16 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7450);
  sub_2705D7E24();
  *v3 = v9;
  return v7;
}

_OWORD *sub_2705664F8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_2703D7318(a2, a3);
  OUTLINED_FUNCTION_0_6();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6750);
  if ((OUTLINED_FUNCTION_4_67() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_2703D7318(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    v15 = (v14[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_1(v15);

    return sub_2703E43D4(a1, v15);
  }

  else
  {
    sub_270566908(v10, a2, a3, a1, v14);
  }
}

unint64_t sub_270566624()
{
  result = qword_2807D7870;
  if (!qword_2807D7870)
  {
    sub_2705D6F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7870);
  }

  return result;
}

uint64_t sub_2705666A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2703D7318(a2, a3);
  OUTLINED_FUNCTION_0_6();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7890);
  if ((OUTLINED_FUNCTION_4_67() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_2703D7318(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    v15 = v14[7] + 8 * v10;

    return sub_2705669E0(a1, v15);
  }

  else
  {
    sub_270566974(v10, a2, a3, a1, v14);
  }
}

void sub_2705667C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2703D7318(a3, a4);
  OUTLINED_FUNCTION_0_6();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7888);
  if ((sub_2705D7E04() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2703D7318(a3, a4);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    v17 = v16[7] + 16 * v12;
    v18 = *v17;
    *v17 = a1;
    *(v17 + 8) = a2;
  }

  else
  {
    sub_2703BCDB0(v12, a3, a4, a1, a2, v16);
  }
}

_OWORD *sub_270566908(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2703E43D4(a4, (a5[7] + 32 * a1));
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

uint64_t sub_270566974(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_27055CA34(a4, a5[7] + 8 * a1);
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

uint64_t sub_2705669E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *OUTLINED_FUNCTION_0_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return sub_2705664F8(&a13, v13, v14);
}

uint64_t OUTLINED_FUNCTION_4_67()
{

  return sub_2705D7E04();
}

uint64_t sub_270566AC0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_270566B00(a1);
  return v2;
}

uint64_t sub_270566B00(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C0);
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  *(&v14 - v6) = 3;
  v8 = *MEMORY[0x277D85188];
  sub_2705D6154();
  OUTLINED_FUNCTION_14();
  (*(v9 + 104))(v7, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73D0);
  swift_allocObject();
  *(v2 + 16) = sub_27055457C(v7);
  v11 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore19CoreMediaAPIService_bag;
  sub_2705D6DE4();
  OUTLINED_FUNCTION_14();
  (*(v12 + 32))(v2 + v11, a1);
  return v2;
}

uint64_t sub_270566C5C()
{
  OUTLINED_FUNCTION_2_2();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = type metadata accessor for CoreMediaAPIRequest(0);
  v1[22] = v4;
  OUTLINED_FUNCTION_23_0(v4);
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_270566CE8()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v0 + 184);
    v4 = *v1;
    v5 = *(v1 + 32);
    *(v0 + 88) = *(v1 + 16);
    *(v0 + 72) = v4;
    *(v0 + 80) = v2;
    *(v0 + 56) = *(v1 + 16);
    *(v0 + 136) = v5;
    OUTLINED_FUNCTION_4_68();
    sub_270569AE8(v7, v3 + v6, v8);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = *(v0 + 88);
    *(v3 + 32) = v5;
    sub_2703C2E9C(v1, v0 + 16, &qword_2807D78B0);
    sub_270435FF0(v0 + 72, v0 + 104);
    sub_270435FF0(v0 + 56, v0 + 120);
    sub_2703C2E9C(v0 + 136, v0 + 144, &qword_2807D78B8);
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    *v9 = v0;
    v9[1] = sub_270566EA0;

    return sub_270567108();
  }

  else
  {
    sub_270568F54();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_1_4();

    return v12();
  }
}

uint64_t sub_270566EA0()
{
  OUTLINED_FUNCTION_10_48();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v1;
  v9 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v10 = v9;
  *v10 = *v1;
  *(v9 + 200) = v0;

  v11 = *(v8 + 184);
  if (!v0)
  {
    *(v9 + 224) = v3;
    *(v9 + 208) = v5;
    *(v9 + 216) = v7;
  }

  sub_270568FA8(v11);
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_270566FF0()
{
  OUTLINED_FUNCTION_2_2();
  sub_270569004(v0 + 72);
  sub_270569004(v0 + 56);
  sub_2703C2EFC(v0 + 136, &qword_2807D78B8);

  v1 = *(v0 + 8);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 224);

  return v1(v2, v3, v4);
}

uint64_t sub_270567084()
{
  OUTLINED_FUNCTION_2_2();
  sub_270569004(v0 + 72);
  sub_270569004(v0 + 56);
  sub_2703C2EFC(v0 + 136, &qword_2807D78B8);

  OUTLINED_FUNCTION_1_4();

  return v1();
}

uint64_t sub_270567108()
{
  OUTLINED_FUNCTION_2_2();
  v1[19] = v2;
  v1[20] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D78C0);
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = sub_2705D4484();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v5 = type metadata accessor for CoreMediaAPIRequest.RequestType(0);
  v1[28] = v5;
  OUTLINED_FUNCTION_23_0(v5);
  v1[29] = swift_task_alloc();
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_270567260()
{
  v1 = v0[29];
  v2 = v0[19];
  type metadata accessor for CoreMediaAPIRequest(0);
  OUTLINED_FUNCTION_4_68();
  sub_270569AE8(v2 + v3, v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[29];
  if (!EnumCaseMultiPayload)
  {
    (*(v0[25] + 32))(v0[27], v6, v0[24]);
    v9 = swift_task_alloc();
    v0[30] = v9;
    *v9 = v0;
    v9[1] = sub_270567618;
    v8 = v0[27];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[25] + 32))(v0[26], v6, v0[24]);
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v7[1] = sub_270567870;
    v8 = v0[26];
LABEL_5:
    v10 = v0[19];

    return sub_270567EBC(v10, v8);
  }

  v12 = *v6;
  if (*v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = v0[22];
    v25 = v0[23];
    v24 = v0[21];
    v14 = v0[19];
    v15 = *v14;
    v16 = v14[1];
    v18 = v14[2];
    v17 = v14[3];

    v19 = sub_2705D6DA4();
    v20 = objc_allocWithZone(MEMORY[0x277CEE570]);
    v21 = sub_270569940(v12, v15, v16, v18, v17, v19);
    v0[36] = v21;
    [v21 setAccount_];
    v22 = [v21 perform];
    v0[37] = v22;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_270567AC8;
    swift_continuation_init();
    v0[17] = v24;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 14);
    sub_2703CACA0(0, &qword_2807D78C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08);
    sub_2705D7854();
    (*(v13 + 32))(boxed_opaque_existential_1Tm, v25, v24);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2705686B0;
    v0[13] = &block_descriptor_6;
    [v22 resultWithCompletion_];
    (*(v13 + 8))(boxed_opaque_existential_1Tm, v24);
    EnumCaseMultiPayload = (v0 + 2);
  }

  return MEMORY[0x282200938](EnumCaseMultiPayload);
}

uint64_t sub_270567618()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  OUTLINED_FUNCTION_70();
  v5 = v4;
  OUTLINED_FUNCTION_17_14();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v8 = v7;
  *(v5 + 248) = v0;

  if (!v0)
  {
    *(v5 + 256) = v3;
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_27056772C()
{
  OUTLINED_FUNCTION_10_48();
  v1 = v0[32];
  (*(v0[25] + 8))(v0[27], v0[24]);
  v2 = v0[31];
  v3 = v0[32];
  v4 = v1;
  v5 = sub_270569A70(v3);
  if (v5 && (v6 = sub_2705687B0(v5), , v6))
  {
    sub_2705A4A54(v6);
    OUTLINED_FUNCTION_8_56();

    if (v2)
    {
      OUTLINED_FUNCTION_12_40();

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_11_44();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_14_39();

  OUTLINED_FUNCTION_1_82();
  OUTLINED_FUNCTION_11_44();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_270567870()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  OUTLINED_FUNCTION_70();
  v5 = v4;
  OUTLINED_FUNCTION_17_14();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v8 = v7;
  *(v5 + 272) = v0;

  if (!v0)
  {
    *(v5 + 280) = v3;
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_270567984()
{
  OUTLINED_FUNCTION_10_48();
  v1 = v0[35];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v2 = v0[34];
  v3 = v0[35];
  v4 = v1;
  v5 = sub_270569A70(v3);
  if (v5 && (v6 = sub_2705687B0(v5), , v6))
  {
    sub_2705A4A54(v6);
    OUTLINED_FUNCTION_8_56();

    if (v2)
    {
      OUTLINED_FUNCTION_12_40();

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_11_44();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_14_39();

  OUTLINED_FUNCTION_1_82();
  OUTLINED_FUNCTION_11_44();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_270567AC8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_270567BC8()
{
  OUTLINED_FUNCTION_10_48();
  v1 = *(v0 + 296);

  v2 = *(v0 + 144);
  v3 = sub_270569A70(v2);
  if (v3)
  {
    v4 = sub_2705687B0(v3);

    if (v4)
    {
      sub_2705A4A54(v4);
      OUTLINED_FUNCTION_8_56();
    }
  }

  OUTLINED_FUNCTION_14_39();

  OUTLINED_FUNCTION_1_82();
  OUTLINED_FUNCTION_11_44();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_270567D04()
{
  OUTLINED_FUNCTION_23_14();
  (*(v0[25] + 8))(v0[27], v0[24]);
  OUTLINED_FUNCTION_13_40();

  OUTLINED_FUNCTION_1_4();

  return v1();
}

uint64_t sub_270567D94()
{
  OUTLINED_FUNCTION_23_14();
  (*(v0[25] + 8))(v0[26], v0[24]);
  OUTLINED_FUNCTION_13_40();

  OUTLINED_FUNCTION_1_4();

  return v1();
}

uint64_t sub_270567E24()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  swift_willThrow();

  OUTLINED_FUNCTION_13_40();

  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_270567EBC(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D78D0);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_2705D4484();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_2705D3FE4();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v7 = *(type metadata accessor for CoreMediaAPIRequest(0) - 8);
  v3[31] = v7;
  v3[32] = *(v7 + 64);
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2705680A4, 0, 0);
}

uint64_t sub_2705680A4()
{
  v1 = v0;
  v22 = v0 + 2;
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v20 = v0[29];
  v21 = v0[28];
  v5 = v0[26];
  v18 = v0[27];
  v19 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v6 = v0[21];
  v23 = v0 + 18;
  v24 = v0[22];
  v7 = v0[19];
  v17 = v0[20];
  v0[34] = *(v6 + 16);
  v8 = *v7;
  v0[35] = *v7;
  v9 = v7[1];
  v0[36] = v9;
  sub_270569AE8(v7, v2, type metadata accessor for CoreMediaAPIRequest);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_270569C5C(v2, v11 + v10);

  v12 = sub_270568C0C(v8, v9, sub_270569CC0);
  v1[37] = v12;

  (*(v5 + 16))(v18, v17, v19);
  sub_2705D3FD4();
  v13 = sub_2705D3FC4();
  (*(v20 + 8))(v3, v21);
  v14 = [v12 dataTaskPromiseWithRequest_];
  v1[38] = v14;

  v1[2] = v1;
  v1[7] = v23;
  v1[3] = sub_2705683E0;
  swift_continuation_init();
  v1[17] = v24;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1 + 14);
  sub_2703CACA0(0, &qword_2807D78D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08);
  sub_2705D7854();
  (*(v26 + 32))(boxed_opaque_existential_1Tm, v25, v24);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_270568C84;
  v1[13] = &block_descriptor_10;
  [v14 resultWithCompletion_];
  (*(v26 + 8))(boxed_opaque_existential_1Tm, v24);

  return MEMORY[0x282200938](v22);
}

uint64_t sub_2705683E0()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2705684E0()
{
  OUTLINED_FUNCTION_10_48();
  v1 = *(v0 + 144);

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CEE568]) initWithResult_];
  }

  v3 = *(v0 + 296);
  sub_270569184(*(v0 + 280), *(v0 + 288));

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_2705685E0()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  swift_willThrow();

  sub_270569184(v4, v2);

  OUTLINED_FUNCTION_1_4();

  return v5();
}

uint64_t sub_270568764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t))
{
  v8 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  return a5(&v8, v6);
}

unint64_t sub_2705687B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0138);
    v2 = sub_2705D7E94();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_2703BD1EC(*(a1 + 48) + 40 * v10, __src);
    sub_2703D7F04(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_2703BD1EC(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_2703D7F04(&__dst[40], v20);
    sub_2703C2EFC(__dst, &qword_2807D78E0);
    v21 = v18;
    sub_2703E43D4(v20, v22);
    v11 = v21;
    sub_2703E43D4(v22, v23);
    sub_2703E43D4(v23, &v21);
    result = sub_2703D7318(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v14);
      result = sub_2703E43D4(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_2703E43D4(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_2703C2EFC(__dst, &qword_2807D78E0);

  return 0;
}

void sub_270568A68(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];

  v7 = sub_2705D6DA4();
  v8 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v9 = sub_270569A08(v5, v6, v7);
  v10 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v9 bag:sub_2705D6DA4()];

  swift_unknownObjectRelease();
  [v10 setAccount_];
  v11 = [objc_allocWithZone(MEMORY[0x277CEE560]) init];
  [v10 setResponseDecoder_];

  v12 = [objc_allocWithZone(type metadata accessor for AppURLSession()) init];
  v13 = objc_allocWithZone(MEMORY[0x277CEE550]);
  v14 = v12;
  v15 = [v13 initWithTokenService_];
  [v14 setProtocolHandler_];

  v16 = v10;
  [v14 setRequestEncoder_];

  *a3 = v14;
}

id sub_270568C0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  os_unfair_lock_lock((v3 + 16));
  v7 = sub_270569058((v3 + 24), a1, a2, a3);
  os_unfair_lock_unlock((v3 + 16));
  return v7;
}

void sub_270568C98(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v15 = a3;
    OUTLINED_FUNCTION_3_76();
    sub_270568764(v9, v10, a4, a5, v11);
  }

  else if (a2)
  {
    v12 = a2;
    OUTLINED_FUNCTION_2_82();
    sub_270568764(v9, v13, a4, a5, v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_270568D64()
{

  v1 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore19CoreMediaAPIService_bag;
  sub_2705D6DE4();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_270568DC4()
{

  v1 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore19CoreMediaAPIService_bag;
  sub_2705D6DE4();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CoreMediaAPIService()
{
  result = qword_2807D7898;
  if (!qword_2807D7898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270568EB4()
{
  result = sub_2705D6DE4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_270568F54()
{
  result = qword_2807D78A8;
  if (!qword_2807D78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D78A8);
  }

  return result;
}

uint64_t sub_270568FA8(uint64_t a1)
{
  v2 = type metadata accessor for CoreMediaAPIRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_270569058(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  v15[1] = a3;
  v15[0] = a2;
  result = sub_2705573D4(a2, a3, *a1);
  if (!result)
  {
    a4(&v16, v15);
    v13 = v16;

    v11 = v13;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    sub_2705667C0(v11, 1, a2, a3);

    v12 = v14;
    goto LABEL_5;
  }

  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v11 = result;

    swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_2705667C0(v11, v10, a2, a3);

    v12 = v16;
LABEL_5:
    *a1 = v12;
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_270569184(uint64_t a1, uint64_t a2)
{
  v5 = sub_2705D6154();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  sub_2703C2E9C(v2 + *(*v2 + 112), &v14 - v10, &qword_2807D73C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C8);
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result != 1)
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_270569334(a1, a2, v8);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_270569334(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v33 = sub_2705D6164();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2705D6194();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2705D61B4();
  v28 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = sub_2705D6174();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2703CACA0(0, &qword_2807CEC80);
  (*(v15 + 104))(v17, *MEMORY[0x277D851D0], v14);
  v18 = sub_2705D7B44();
  (*(v15 + 8))(v17, v14);
  sub_2705D61A4();
  MEMORY[0x2743A25F0](v11, v29);
  v29 = *(v8 + 8);
  v29(v11, v7);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v30;
  v22 = v31;
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v22;
  aBlock[4] = sub_270569DC4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2703C9520;
  aBlock[3] = &block_descriptor_20;
  v23 = _Block_copy(aBlock);

  sub_2705D6184();
  v37 = MEMORY[0x277D84F90];
  sub_270569DE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF4C0);
  sub_2703CAA2C();
  v25 = v32;
  v24 = v33;
  sub_2705D7C94();
  MEMORY[0x2743A3ED0](v13, v6, v25, v23);
  _Block_release(v23);

  (*(v36 + 8))(v25, v24);
  (*(v34 + 8))(v6, v35);
  v29(v13, v28);
}

os_unfair_lock_s *sub_2705697B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    os_unfair_lock_lock(result + 4);
    sub_270569838(&v6[6], a2, a3);
    os_unfair_lock_unlock(v6 + 4);
  }

  return result;
}

void sub_270569838(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v7 = sub_2703D7318(a2, a3);
    if (v8)
    {
      v9 = *(v3 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = v11 - 1;
      if (v11 == 1)
      {
        v13 = v10;
        v15 = sub_270566404(a2, a3);
      }

      else if (__OFSUB__(v11, 1))
      {
        __break(1u);
      }

      else
      {
        v14 = v10;
        swift_isUniquelyReferenced_nonNull_native();
        v16 = *a1;
        sub_2705667C0(v14, v12, a2, a3);

        *a1 = v16;
      }
    }
  }
}

id sub_270569940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_2705D7534();

  v10 = sub_2705D7534();

  v11 = [v6 initWithType:a1 clientIdentifier:v9 clientVersion:v10 bag:a6];

  swift_unknownObjectRelease();
  return v11;
}

id sub_270569A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2705D7534();

  v6 = [v3 initWithClientIdentifier:v5 bag:a3];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_270569A70(void *a1)
{
  v2 = [a1 responseDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2705D7464();

  return v3;
}

uint64_t sub_270569AE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_270569B48()
{
  v1 = (type metadata accessor for CoreMediaAPIRequest(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  type metadata accessor for CoreMediaAPIRequest.RequestType(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_2705D4484();
    OUTLINED_FUNCTION_14();
    (*(v4 + 8))(v0 + v2 + v3);
  }

  return swift_deallocObject();
}

uint64_t sub_270569C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMediaAPIRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_270569CC0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CoreMediaAPIRequest(0);
  OUTLINED_FUNCTION_23_0(v5);
  v7 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  sub_270568A68(a1, v7, a2);
}

uint64_t sub_270569D40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_270569D84()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_270569DE8()
{
  result = qword_2807CF4B8;
  if (!qword_2807CF4B8)
  {
    sub_2705D6164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF4B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoreMediaAPIService.FetchError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270569F0CLL);
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270569F48()
{
  result = qword_2807D78F8;
  if (!qword_2807D78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D78F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_56()
{
}

uint64_t OUTLINED_FUNCTION_12_40()
{
}

uint64_t OUTLINED_FUNCTION_13_40()
{
}

uint64_t OUTLINED_FUNCTION_14_39()
{
}

uint64_t sub_27056A0A0(char a1)
{
  result = 0x79616C6544736ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 11:
      OUTLINED_FUNCTION_3_77();
      result = v6 + 3;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6954646E65747865;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      OUTLINED_FUNCTION_3_77();
      result = v9 - 2;
      break;
    case 7:
      result = 0x636E79537473616CLL;
      break;
    case 8:
      result = 0x65747441636E7973;
      break;
    case 9:
      OUTLINED_FUNCTION_3_77();
      result = v5 + 2;
      break;
    case 10:
      result = 0x764F656372756F73;
      break;
    case 12:
      result = 0x727265764F6C7275;
      break;
    case 13:
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      OUTLINED_FUNCTION_3_77();
      result = v4 + 15;
      break;
    case 15:
      OUTLINED_FUNCTION_3_77();
      result = v7 + 14;
      break;
    case 17:
      OUTLINED_FUNCTION_3_77();
      result = v8 + 20;
      break;
    default:
      OUTLINED_FUNCTION_3_77();
      result = v3 | 4;
      break;
  }

  return result;
}

uint64_t sub_27056A32C(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_0_82();
  v2 = OUTLINED_FUNCTION_2_83();

  CFPreferencesAppSynchronize(v2);

  keyExistsAndHasValidFormat = 0;
  sub_27056A0A0(a1);
  v3 = sub_2705D7534();

  v4 = OUTLINED_FUNCTION_2_83();

  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, v4, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return 2;
  }
}

CFIndex sub_27056A42C(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_0_82();
  v2 = OUTLINED_FUNCTION_2_83();

  CFPreferencesAppSynchronize(v2);

  keyExistsAndHasValidFormat = 0;
  sub_27056A0A0(a1);
  v3 = sub_2705D7534();

  v4 = OUTLINED_FUNCTION_2_83();

  AppIntegerValue = CFPreferencesGetAppIntegerValue(v3, v4, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppIntegerValue;
  }

  else
  {
    return 0;
  }
}

CFPropertyListRef sub_27056A524(char a1)
{
  OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_0_82();
  v2 = OUTLINED_FUNCTION_2_83();

  CFPreferencesAppSynchronize(v2);

  sub_27056A0A0(a1);
  v3 = sub_2705D7534();

  v4 = OUTLINED_FUNCTION_2_83();

  v5 = CFPreferencesCopyAppValue(v3, v4);

  return v5;
}

id sub_27056A5D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_27056A62C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_2_83()
{

  return sub_2705D7534();
}

uint64_t sub_27056A6D0(uint64_t a1)
{
  sub_27047D5E0();
  v2 = sub_2705D7494();
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v33 = a1;

  v8 = 0;
  v31 = v7;
  v32 = a1 + 64;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
      v11 = *(*(v33 + 48) + v10);
      v12 = *(*(v33 + 56) + v10);
      v13 = sub_2705D7564();
      v15 = v14;
      v16 = v12;
      v34 = v11;
      v17 = v16;

      swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_2703D7318(v13, v15);
      if (__OFADD__(v2[2], (v19 & 1) == 0))
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_2807D7900);
      if (sub_2705D7E04())
      {
        v22 = sub_2703D7318(v13, v15);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_22;
        }

        v20 = v22;
      }

      v6 &= v6 - 1;
      if (v21)
      {

        v24 = v2[7];
        v25 = *(v24 + 8 * v20);
        *(v24 + 8 * v20) = v17;
      }

      else
      {
        v2[(v20 >> 6) + 8] |= 1 << v20;
        v26 = (v2[6] + 16 * v20);
        *v26 = v13;
        v26[1] = v15;
        *(v2[7] + 8 * v20) = v17;

        v27 = v2[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_21;
        }

        v2[2] = v29;
      }

      v8 = v9;
      v7 = v31;
      v3 = v32;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_2705D82D4();
  __break(1u);
  return result;
}

uint64_t sub_27056A964(void (*a1)(uint64_t, uint64_t), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v110 = a1;
  v111 = a2;
  v14 = sub_2705D7C14();
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_51(&v85 - v15);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v96 = sub_2705D7C14();
  OUTLINED_FUNCTION_1_14();
  v123 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_51(&v85 - v19);
  OUTLINED_FUNCTION_1_14();
  i = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_11();
  v95 = v22;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v23);
  v94 = &v85 - v24;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v26);
  OUTLINED_FUNCTION_1_14();
  v105 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_11();
  v124 = v29;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v31);
  OUTLINED_FUNCTION_1_14();
  v104 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_11();
  v120 = v34;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_58();
  v119 = v36;
  v126 = a4;
  v37 = a5;
  v117 = swift_getTupleTypeMetadata2();
  v116 = sub_2705D7C14();
  OUTLINED_FUNCTION_1_14();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_11();
  v115 = v41;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_58();
  v114 = v43;
  v125 = TupleTypeMetadata2;
  sub_2705D7804();
  v102 = a6;
  v103 = a7;
  v98 = a9;
  v127 = sub_2705D7494();
  if ((a3 & 0xC000000000000001) != 0)
  {
    v44 = sub_2705D7E34();
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v118 = v44 | 0x8000000000000000;
  }

  else
  {
    v48 = -1 << *(a3 + 32);
    v46 = ~v48;
    v45 = a3 + 64;
    v49 = -v48;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v47 = v50 & *(a3 + 64);
    v118 = a3;
  }

  v122 = (v104 + 32);
  v121 = (v105 + 32);
  v85 = v46;
  v86 = (v46 + 64) >> 6;
  v100 = v104 + 16;
  v99 = v105 + 16;
  v112 = (v39 + 32);
  v92 = (i + 32);
  v91 = (i + 16);
  v90 = v103 - 8;
  v89 = (i + 8);
  v108 = (v104 + 8);
  v109 = v105 + 8;
  v88 = v102 - 8;
  v87 = (v123 + 8);

  v52 = 0;
  v53 = v101;
  v54 = v106;
  for (i = v45; ; v45 = i)
  {
    v55 = v119;
    if ((v118 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_2705D7E44())
    {
      sub_2705D8114();
      swift_unknownObjectRelease();
      v54 = v106;
      sub_2705D8114();
      swift_unknownObjectRelease();
      v57 = v52;
      v123 = v47;
      goto LABEL_17;
    }

    v64 = 1;
    v58 = v52;
    v123 = v47;
    v54 = v106;
LABEL_20:
    v61 = v117;
    v63 = v115;
LABEL_21:
    __swift_storeEnumTagSinglePayload(v63, v64, 1, v61);
    v65 = v114;
    (*v112)();
    if (__swift_getEnumTagSinglePayload(v65, 1, v61) == 1)
    {
      sub_2703B5C38();
      return v127;
    }

    v66 = *(v61 + 48);
    v67 = v120;
    (*v122)(v120, v65, v126);
    v68 = v65 + v66;
    v69 = v124;
    (*v121)(v124, v68, v37);
    v110(v67, v69);
    if (__swift_getEnumTagSinglePayload(v53, 1, v125) == 1)
    {
      v70 = OUTLINED_FUNCTION_4_69();
      v71(v70);
      (*v108)(v67, v126);
      result = (*v87)(v53, v96);
    }

    else
    {
      v72 = v93;
      v73 = v125;
      (*v92)(v93, v53, v125);
      v74 = *v91;
      v75 = v94;
      (*v91)(v94, v72, v73);
      v107 = *(v73 + 48);
      v76 = v95;
      v74(v95, v72, v73);
      v77 = *(v73 + 48);
      v78 = v103;
      v79 = *(v103 - 8);
      v80 = v97;
      (*(v79 + 32))(v97, &v76[v77], v103);
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v78);
      v81 = v102;
      sub_2705D74B4();
      sub_2705D74C4();
      (*v89)(v72, v125);
      v82 = OUTLINED_FUNCTION_4_69();
      v83(v82);
      (*v108)(v120, v126);
      v53 = v101;
      (*(*(v81 - 8) + 8))(v76, v81);
      v84 = v78;
      v54 = v106;
      result = (*(v79 + 8))(&v75[v107], v84);
    }

    v52 = v58;
    v47 = v123;
  }

  v56 = v47;
  v57 = v52;
  if (v47)
  {
LABEL_14:
    v123 = (v56 - 1) & v56;
    OUTLINED_FUNCTION_6_66();
    v59(v55);
    OUTLINED_FUNCTION_6_66();
    v60(v54);
LABEL_17:
    v61 = v117;
    v62 = *(v117 + 48);
    v63 = v115;
    (*v122)();
    (*v121)(v63 + v62, v54, v37);
    v64 = 0;
    v58 = v57;
    goto LABEL_21;
  }

  v58 = v52;
  while (1)
  {
    v57 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v57 >= v86)
    {
      v123 = 0;
      v64 = 1;
      goto LABEL_20;
    }

    v56 = *(v45 + 8 * v57);
    ++v58;
    if (v56)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27056B340()
{
  sub_2705D83B4();
  sub_2703B66B4(v2, *v0);
  return sub_2705D8414();
}

uint64_t sub_27056B380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a3;
  v80[3] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v80);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a4);
  if (*(a2 + 16))
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    LODWORD(v10) = *(a2 + 48);
    v11 = OUTLINED_FUNCTION_64();
    sub_27056B884(v11, v12, v10);

    v13 = sub_2705799B0(1, a2);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if (v18)
    {
      sub_2705D82A4();
      swift_unknownObjectRetain_n();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
        swift_unknownObjectRelease();
        v21 = MEMORY[0x277D84F90];
      }

      v22 = *(v21 + 16);

      if (__OFSUB__(v19 >> 1, v17))
      {
        goto LABEL_50;
      }

      if (v22 != (v19 >> 1) - v17)
      {
        goto LABEL_51;
      }

      v23 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v72 = v23;
      if (v23)
      {
        goto LABEL_12;
      }

      v72 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    while (1)
    {
      sub_27057E0E8(v13, v15, v17, v19);
      v72 = v20;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      if (!v10)
      {
        break;
      }

      if (v10 == 1)
      {
        sub_2703D7F04(v80, &v78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3500);
        OUTLINED_FUNCTION_0_83(v24, v25, v26, v27, v28, v29, v30, v31, v67, v68, v69, v72, v76);
        if (swift_dynamicCast())
        {
          if ((v8 & 0x8000000000000000) == 0 && v8 < *(v76 + 16))
          {
            sub_2703D7F04(v76 + 32 * v8 + 32, &v78);

            v32 = v79;
            v33 = __swift_project_boxed_opaque_existential_1(&v78, v79);
            v10 = sub_27056B380(v33, v73, v70, v32);

LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(&v78);
            goto LABEL_44;
          }
        }

LABEL_40:

        goto LABEL_43;
      }

      sub_2703D7F04(v80, &v78);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3500);
      OUTLINED_FUNCTION_0_83(v47, v48, v49, v50, v51, v52, v53, v54, v67, v68, v69, v72, v76);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_40;
      }

      v67 = v9;
      v68 = v8;
      v9 = 0;
      v17 = v76;
      v8 = *(v76 + 16);
      v19 = v76 + 32;
      v10 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v8 == v9)
        {

          sub_27056B898(v68, v67, 2);
          goto LABEL_44;
        }

        if (v9 >= *(v17 + 16))
        {
          break;
        }

        sub_2703D7F04(v19, &v78);
        v55 = v79;
        v56 = __swift_project_boxed_opaque_existential_1(&v78, v79);
        v57 = sub_27056B380(v56, v75, v69, v55);
        __swift_destroy_boxed_opaque_existential_1(&v78);
        v58 = *(v57 + 16);
        v59 = *(v10 + 16);
        v15 = v59 + v58;
        if (__OFADD__(v59, v58))
        {
          goto LABEL_46;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v15 > *(v10 + 24) >> 1)
        {
          sub_270572630();
          v10 = v60;
        }

        if (*(v57 + 16))
        {
          if ((*(v10 + 24) >> 1) - *(v10 + 16) < v58)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v58)
          {
            v61 = *(v10 + 16);
            v62 = __OFADD__(v61, v58);
            v63 = v61 + v58;
            if (v62)
            {
              goto LABEL_49;
            }

            *(v10 + 16) = v63;
          }
        }

        else
        {

          if (v58)
          {
            goto LABEL_47;
          }
        }

        v19 += 32;
        ++v9;
      }

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
      swift_unknownObjectRelease();
    }

    sub_2703D7F04(v80, &v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
    OUTLINED_FUNCTION_0_83(v34, v35, v36, v37, v38, v39, v40, v41, v67, v68, v69, v72, v76);
    if (swift_dynamicCast())
    {
      v42 = OUTLINED_FUNCTION_64();
      sub_270557A00(v42);

      if (v77)
      {
        sub_2703E43D4(&v76, &v78);
        v43 = v79;
        v44 = __swift_project_boxed_opaque_existential_1(&v78, v79);
        v10 = sub_27056B380(v44, v74, v71, v43);

        v45 = OUTLINED_FUNCTION_64();
        sub_27056B898(v45, v46, 0);
        goto LABEL_21;
      }

      sub_27056B8AC(&v76);
    }

    else
    {
    }

    v64 = OUTLINED_FUNCTION_64();
    sub_27056B898(v64, v65, 0);
LABEL_43:
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4488);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2705DC030;
    sub_2703D7F04(v80, v10 + 32);
  }

LABEL_44:
  __swift_destroy_boxed_opaque_existential_1(v80);
  return v10;
}

uint64_t sub_27056B884(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_27056B898(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_27056B8AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_27056B91C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27056B9E8);
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27056BA28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_SD25UnifiedMessagingKitJSCoreSSRszs8SendableR_rlE16KeyPathComponent33_63BF0C609BFBA2E39A2C1A736038BCDALLOySSq__G(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

id sub_27056BB14@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  v13 = sub_2705D6524();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_2705D4434();
  LOBYTE(a5) = (*(a5 + 24))(v14);

  if (a5)
  {
    v15 = sub_2705D4484();
    OUTLINED_FUNCTION_4_4();
    (*(v16 + 16))(a6, a1, v15);

    return __swift_storeEnumTagSinglePayload(a6, 0, 1, v15);
  }

  else
  {
    v52 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v59 = a4;
    __swift_allocate_boxed_opaque_existential_1Tm(v58);
    OUTLINED_FUNCTION_4_4();
    v49 = v6;
    v48 = *(v18 + 16);
    v48();
    v19 = AMSLogKey();
    v20 = MEMORY[0x277D837D0];
    v51 = a6;
    if (v19)
    {
      v21 = v19;
      v22 = sub_2705D7564();
      v24 = v23;

      sub_2705D6514();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_15_22();
      MetatypeMetadata = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_2_84(MetatypeMetadata);
      sub_2704B667C(&v55);
      sub_2705D6504();
      v57 = v20;
      v55 = v22;
      v56 = v24;
    }

    else
    {
      sub_2705D6514();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v26 = OUTLINED_FUNCTION_22_20();
      v57 = swift_getMetatypeMetadata();
      v55 = v26;
    }

    sub_2705D64E4();
    sub_2704B667C(&v55);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_2705D6514();
    sub_2705D6504();
    v27 = sub_2705D4484();
    v59 = v27;
    __swift_allocate_boxed_opaque_existential_1Tm(v58);
    OUTLINED_FUNCTION_4_4();
    v29 = *(v28 + 16);
    v50 = v27;
    v29();
    sub_2705D64E4();
    sub_2704B667C(v58);
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    sub_2705D6534();
    if (qword_2807D7368 != -1)
    {
      swift_once();
    }

    v30 = sub_2705D7A64();
    sub_2705B6DB8(v30);

    v31 = [objc_opt_self() defaultManager];
    v32 = sub_2705D43C4();
    if (a3)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_27056C5C0();
      v33 = sub_2705D7454();
    }

    else
    {
      v33 = 0;
    }

    v34 = MEMORY[0x277D837D0];
    v58[0] = 0;
    v35 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:v52 & 1 attributes:v33 error:v58];

    v53 = v58[0];
    if (v35)
    {
      (v29)(v51, a1, v50);
      __swift_storeEnumTagSinglePayload(v51, 0, 1, v50);

      return v53;
    }

    else
    {
      v36 = v58[0];
      v37 = sub_2705D4364();

      swift_willThrow();
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      v59 = a4;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v58);
      (v48)(boxed_opaque_existential_1Tm, v49, a4);
      v39 = AMSLogKey();
      if (v39)
      {
        v40 = v39;
        v41 = sub_2705D7564();
        v43 = v42;

        sub_2705D6514();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_15_22();
        v44 = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_2_84(v44);
        sub_2704B667C(&v55);
        sub_2705D6504();
        v57 = v34;
        v55 = v41;
        v56 = v43;
      }

      else
      {
        sub_2705D6514();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        v45 = OUTLINED_FUNCTION_22_20();
        v57 = swift_getMetatypeMetadata();
        v55 = v45;
      }

      sub_2705D64E4();
      sub_2704B667C(&v55);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v58);
      sub_2705D6514();
      sub_2705D6504();
      swift_getErrorValue();
      v59 = v54;
      __swift_allocate_boxed_opaque_existential_1Tm(v58);
      OUTLINED_FUNCTION_4_4();
      (*(v46 + 16))();
      sub_2705D64E4();
      sub_2704B667C(v58);
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      sub_2705D6534();
      v47 = sub_2705D7A74();
      sub_2705B6DB8(v47);

      return __swift_storeEnumTagSinglePayload(v51, 1, 1, v50);
    }
  }
}

uint64_t sub_27056C388()
{
  v1 = sub_2705D7534();
  v2 = [v0 contentsAtPath_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2705D44C4();

  return v3;
}

id sub_27056C428(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v11[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2705D43C4();
  if (a3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_27056C5C0();
    a3 = sub_2705D7454();
  }

  v11[0] = 0;
  v8 = [v4 createDirectoryAtURL:v7 withIntermediateDirectories:a2 & 1 attributes:a3 error:v11];

  if (v8)
  {
    return v11[0];
  }

  v10 = v11[0];
  sub_2705D4364();

  return swift_willThrow();
}

id sub_27056C564()
{
  v1 = sub_2705D7534();
  v2 = [v0 fileExistsAtPath_];

  return v2;
}

unint64_t sub_27056C5C0()
{
  result = qword_2807D7440;
  if (!qword_2807D7440)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7440);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_84(uint64_t a1)
{
  *(v2 - 136) = a1;
  *(v2 - 160) = v1;

  return sub_2705D64E4();
}

void sub_27056C638()
{
  OUTLINED_FUNCTION_54();
  sub_27056C678();
  *v0 = v1;
  v0[1] = v2;
}

void sub_27056C684()
{
  OUTLINED_FUNCTION_54();
  sub_27056C678();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t type metadata accessor for FilterConfig()
{
  result = qword_2807D7A68;
  if (!qword_2807D7A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27056C768(uint64_t a1)
{
  OUTLINED_FUNCTION_18_24(a1);
  sub_27056C678();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_14_40();
}

void sub_27056C7C0()
{
  OUTLINED_FUNCTION_25_24();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  swift_getKeyPath();
  sub_2705D7214();

  OUTLINED_FUNCTION_26_22();
}

void sub_27056C850()
{
  OUTLINED_FUNCTION_54();
  sub_27056C8D4();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_27056C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_13_1();
  return a5(v6);
}

void sub_27056C8E0()
{
  OUTLINED_FUNCTION_25_24();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_70();
  sub_27056F198(v0);
  OUTLINED_FUNCTION_24_27();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_84();
  sub_27056F198(v1);
  sub_2705D7324();

  OUTLINED_FUNCTION_26_22();
}

void sub_27056C9A4()
{
  OUTLINED_FUNCTION_54();
  sub_27056C8D4();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_27056CA18()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v0);
  sub_2705D45E4();
}

uint64_t sub_27056CAD8()
{
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v0);
  sub_2705D7334();
}

uint64_t sub_27056CB88(uint64_t a1)
{
  OUTLINED_FUNCTION_18_24(a1);
  sub_27056C8D4();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_14_40();
}

uint64_t sub_27056CBE0(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_13_1();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_13_1();
    return (a3)(v6);
  }
}

void sub_27056CC64()
{
  OUTLINED_FUNCTION_54();
  sub_27056CC58();
  *v0 = v1;
  v0[1] = v2;
}

unint64_t sub_27056CCB8()
{
  result = qword_2807D7A18;
  if (!qword_2807D7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7A18);
  }

  return result;
}

uint64_t sub_27056CD50(uint64_t a1)
{
  OUTLINED_FUNCTION_18_24(a1);
  sub_27056CC58();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_14_40();
}

uint64_t sub_27056CE80()
{
  OUTLINED_FUNCTION_54();
  result = sub_27056CDA8();
  *v0 = result;
  return result;
}

uint64_t sub_27056CED0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v0);
  OUTLINED_FUNCTION_9_49();
}

uint64_t sub_27056CF6C()
{
  swift_getKeyPath();
  sub_27056F198(&qword_2807D73E0);
  sub_2705D7334();
}

uint64_t sub_27056D030(void *a1)
{
  a1[1] = v1;
  *a1 = sub_27056CDA8();
  return OUTLINED_FUNCTION_14_40();
}

uint64_t sub_27056D098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_27056D58C(a1, &v6 - v3);
  return sub_27056D278(v4);
}

uint64_t sub_27056D278(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v2);
  OUTLINED_FUNCTION_9_49();

  return sub_27056D418(a1);
}

uint64_t sub_27056D31C()
{
  swift_getKeyPath();
  sub_27056F198(&qword_2807D73E0);
  sub_27056DE80();
  sub_2705D7334();
}

uint64_t sub_27056D418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_27056D480(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  a1[2] = __swift_coroFrameAllocStub(v3);
  sub_27056D12C();
  return sub_27056D51C;
}

void sub_27056D51C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_27056D58C(v3, v2);
    sub_27056D278(v2);
    sub_27056D418(v3);
  }

  else
  {
    sub_27056D278(v3);
  }

  free(v3);

  free(v2);
}

uint64_t sub_27056D58C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_27056D5FC()
{
  OUTLINED_FUNCTION_25_24();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  swift_getKeyPath();
  sub_27056F558();
  sub_2705D7214();

  v1 = OUTLINED_FUNCTION_13_1();
  sub_27046DCA4(v1, v2);
  OUTLINED_FUNCTION_26_22();
}

uint64_t sub_27056D68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_13_1();
  sub_27055782C(v6, v7);
  v8 = OUTLINED_FUNCTION_13_1();
  return a5(v8);
}

void sub_27056D6DC()
{
  OUTLINED_FUNCTION_25_24();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_70();
  sub_27056F198(v0);
  OUTLINED_FUNCTION_24_27();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_84();
  sub_27056F198(v1);
  sub_27056CCB8();
  sub_2705D7324();

  OUTLINED_FUNCTION_26_22();
}

void sub_27056D7A4()
{
  OUTLINED_FUNCTION_54();
  sub_27056D6D0();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_27056D818(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v4);
  sub_2705D45E4();
  sub_27046DCA4(a1, a2);
}

uint64_t sub_27056D8DC()
{
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v0);
  sub_27056F558();
  sub_2705D7334();
}

uint64_t sub_27056D990(uint64_t a1)
{
  OUTLINED_FUNCTION_18_24(a1);
  sub_27056D6D0();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_14_40();
}

uint64_t sub_27056D9E8(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_30_6();
    sub_27055782C(v4, v5);
    v6 = OUTLINED_FUNCTION_30_6();
    a3(v6);
    v7 = OUTLINED_FUNCTION_30_6();

    return sub_27046DCA4(v7, v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_30_6();
    return (a3)(v10);
  }
}

uint64_t sub_27056DA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = OUTLINED_FUNCTION_16_29();
  sub_27056DAC4(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_27056DAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v16[1] = *v5;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v11 = type metadata accessor for FilterConfig();
  v6[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73D8);
  OUTLINED_FUNCTION_0_84();
  v13 = sub_27056F198(v12);
  v17 = v11;
  v18 = v11;
  v19 = v13;
  v20 = v13;
  OUTLINED_FUNCTION_3_78();
  v6[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1Tm(v6 + 3);
  OUTLINED_FUNCTION_13_41();
  sub_2705D72E4();
  *(v6 + 16) = 1;
  sub_2705D4624();
  sub_27056C7C0();
  sub_27056C7C0();
  sub_27056DD98(a5);

  sub_27056D5FC();
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  swift_getKeyPath();
  v17 = 0;
  sub_2705D7214();

  v14 = sub_2705D4594();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_27056DE80();
  sub_2705D7214();

  sub_27056D418(v10);
  *(v6 + 16) = 0;
  sub_27056DEE8();
  sub_27056D5FC();
  return v6;
}

uint64_t sub_27056DD98(char a1)
{
  sub_2705D4044();
  swift_allocObject();
  sub_2705D4034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7A88);
  v2 = sub_27056F498(&unk_2807D7AB0);
  OUTLINED_FUNCTION_17_31(v2, v3, v4, v5, v6, v7, v8, v9, v12, a1);
  v10 = sub_2705D4024();

  return v10;
}

void sub_27056DE80()
{
  OUTLINED_FUNCTION_25_24();
  if (!OUTLINED_FUNCTION_10_7(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3E10);
    OUTLINED_FUNCTION_5_71();
    OUTLINED_FUNCTION_12_41();
    atomic_store(swift_getWitnessTable(), v0);
  }

  OUTLINED_FUNCTION_26_22();
}

uint64_t sub_27056DEE8()
{
  sub_2705D4044();
  swift_allocObject();
  sub_2705D4034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7A78);
  sub_27056F430();
  v0 = sub_2705D4024();

  return v0;
}

uint64_t sub_27056DFDC()
{
  v0 = OUTLINED_FUNCTION_16_29();
  sub_27056E010();
  return v0;
}

uint64_t sub_27056E010()
{
  OUTLINED_FUNCTION_22_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = v11 - v3;
  v5 = type metadata accessor for FilterConfig();
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73D8);
  OUTLINED_FUNCTION_0_84();
  v7 = sub_27056F198(v6);
  v11[0] = v5;
  v11[1] = v5;
  v11[2] = v7;
  v11[3] = v7;
  OUTLINED_FUNCTION_3_78();
  *(v0 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 24));
  OUTLINED_FUNCTION_13_41();
  sub_2705D72E4();
  *(v0 + 16) = 1;
  sub_2705D4624();

  sub_27056C7C0();

  sub_27056C7C0();
  sub_27056DD98(*(v1 + 32));
  sub_27056D5FC();
  v8 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  swift_getKeyPath();
  v11[0] = v8;
  sub_2705D7214();

  v9 = type metadata accessor for FilterConfigLookalike(0);
  sub_27056D58C(v1 + *(v9 + 32), v4);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_27056DE80();
  sub_2705D7214();

  sub_27056D418(v4);
  *(v0 + 16) = 0;
  sub_27056DEE8();
  sub_27056D5FC();
  sub_27056E2D4(v1);
  return v0;
}

uint64_t sub_27056E2D4(uint64_t a1)
{
  v2 = type metadata accessor for FilterConfigLookalike(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27056E330@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  sub_27056C678();
  v20 = v5;
  v7 = v6;
  sub_27056C8D4();
  v9 = v8;
  v11 = v10;
  v12 = sub_27056E53C();
  v13 = sub_27056CDA8();
  sub_27056D12C();
  v14 = sub_27056E650();
  v15 = type metadata accessor for FilterConfigLookalike(0);
  v16 = *(v15 + 32);
  v17 = sub_2705D4594();
  __swift_storeEnumTagSinglePayload(a1 + v16, 1, 1, v17);
  *a1 = v20;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v12;
  a1[5] = v13;
  sub_27056E710(v4, a1 + v16);
  *(a1 + *(v15 + 36)) = v14;
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v15);
}

uint64_t sub_27056E45C()
{
  OUTLINED_FUNCTION_22_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  sub_27056CED0();
  v4 = type metadata accessor for FilterConfigLookalike(0);
  sub_27056D58C(v0 + *(v4 + 32), v3);
  sub_27056D278(v3);
  v5 = sub_27056DEE8();
  return sub_27056D7F8(v5, v6);
}

uint64_t sub_27056E568()
{
  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7A88);
  sub_27056F498(&unk_2807D7A90);
  sub_2705D3FF4();

  return v1;
}

uint64_t sub_27056E67C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1();
  v5 = v4;
  v6 = a2();
  sub_27046DCA4(v3, v5);
  if (v6)
  {
    return v6;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_27056E710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27056E780()
{
  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7A78);
  sub_27056F430();
  sub_2705D3FF4();

  return v1;
}

uint64_t sub_27056E8B8(__int128 *a1)
{
  OUTLINED_FUNCTION_34_12();
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);
  sub_2703B291C(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t (*sub_27056E908(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_2703B4E54(v1 + 24, v3);
  return sub_27056E984;
}

uint64_t sub_27056E988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7A40);
  sub_2705D73B4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_27060EE60;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  swift_getKeyPath();
  sub_2705D7414();
  swift_allocObject();
  sub_2705D7424();
  sub_27056F198(&unk_2807D7A48);
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  return v0;
}

uint64_t sub_27056EC40(__int128 *a1)
{
  v2 = OUTLINED_FUNCTION_16_29();
  sub_27056EC74(a1);
  return v2;
}

uint64_t sub_27056EC74(__int128 *a1)
{
  type metadata accessor for FilterConfig();
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73D8);
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v3);
  OUTLINED_FUNCTION_3_78();
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1Tm((v1 + 24));
  OUTLINED_FUNCTION_13_41();
  sub_2705D72E4();
  *(v1 + 16) = 1;
  sub_2705D4624();
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_34_12();
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);
  sub_2703B291C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_27056ED78()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore12FilterConfig___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_27056EDD8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore12FilterConfig___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_27056EE74()
{
  sub_2705D83B4();
  type metadata accessor for FilterConfig();
  OUTLINED_FUNCTION_0_84();
  v1 = sub_27056F198(v0);
  OUTLINED_FUNCTION_17_31(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_2705D7314();
  return sub_2705D8414();
}

uint64_t (*sub_27056F014(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_2703B4E54(v1 + 24, v3);
  return sub_27056F600;
}

void sub_27056F090(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_2703B4E54(*a1, v2 + 40);
    OUTLINED_FUNCTION_34_12();
    __swift_destroy_boxed_opaque_existential_1(v3 + 24);
    sub_2703B291C((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_34_12();
    __swift_destroy_boxed_opaque_existential_1(v3 + 24);
    sub_2703B291C(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

unint64_t sub_27056F198(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_27056F258()
{
  sub_2705D83B4();
  swift_getWitnessTable();
  sub_2705D7314();
  return sub_2705D8414();
}

void sub_27056F2C0(void *a1@<X8>)
{
  sub_27056C678();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27056F2EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212CAA0](v4, v5, a3, WitnessTable);
}

uint64_t sub_27056F360()
{
  result = sub_2705D4634();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_27056F430()
{
  OUTLINED_FUNCTION_25_24();
  if (!OUTLINED_FUNCTION_10_7(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D7A78);
    OUTLINED_FUNCTION_5_71();
    OUTLINED_FUNCTION_12_41();
    atomic_store(swift_getWitnessTable(), v0);
  }

  OUTLINED_FUNCTION_26_22();
}

unint64_t sub_27056F498(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D7A88);
    v4();
    OUTLINED_FUNCTION_12_41();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27056F504()
{
  result = qword_2807D7A98;
  if (!qword_2807D7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7A98);
  }

  return result;
}

unint64_t sub_27056F558()
{
  result = qword_2807D7AA0;
  if (!qword_2807D7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7AA0);
  }

  return result;
}

unint64_t sub_27056F5AC()
{
  result = qword_2807D7AB8;
  if (!qword_2807D7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7AB8);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_5_71()
{

  return sub_27056F198(v0);
}

uint64_t OUTLINED_FUNCTION_9_49()
{

  return sub_2705D45E4();
}

uint64_t OUTLINED_FUNCTION_15_40()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_16_29()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_27()
{

  return sub_2705D45F4();
}

uint64_t sub_27056F7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = type metadata accessor for FilterConfigLookalike(0);
  v18 = *(v17 + 32);
  sub_2705D4594();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  result = sub_27056E710(a7, a9 + v18);
  *(a9 + *(v17 + 36)) = a8;
  return result;
}

uint64_t sub_27056F8BC(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_27056F914()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_27056F944(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_27056F9A4(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_27056FA20@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FilterConfigLookalike(0) + 32);

  return sub_27056D58C(v3, a1);
}

uint64_t sub_27056FA64()
{
  v2 = OUTLINED_FUNCTION_4_41();
  v3 = v1 + *(type metadata accessor for FilterConfigLookalike(v2) + 32);

  return sub_27056E710(v0, v3);
}

uint64_t sub_27056FAA4()
{
  v0 = OUTLINED_FUNCTION_4_41();
  type metadata accessor for FilterConfigLookalike(v0);
  return OUTLINED_FUNCTION_12_26();
}

uint64_t sub_27056FAE4()
{
  type metadata accessor for FilterConfigLookalike(0);
}

uint64_t sub_27056FB18()
{
  v2 = OUTLINED_FUNCTION_4_41();
  v3 = *(type metadata accessor for FilterConfigLookalike(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t sub_27056FB54()
{
  v0 = OUTLINED_FUNCTION_4_41();
  type metadata accessor for FilterConfigLookalike(v0);
  return OUTLINED_FUNCTION_12_26();
}

uint64_t sub_27056FB94@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = type metadata accessor for FilterConfigLookalike(0);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for FilterActivityHistoryStats(0);
  sub_27056D58C(v1 + v5, a1 + *(v6 + 20));
  v7 = *(v1 + *(v4 + 36));
  *a1 = v3;
  *(a1 + *(v6 + 24)) = v7;
}

uint64_t sub_27056FC38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  v2 = OUTLINED_FUNCTION_23_0(v1);
  MEMORY[0x28223BE20](v2);
  v64 = &v61 - v3;
  v4 = sub_2705D4594();
  OUTLINED_FUNCTION_1_14();
  v65 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v70 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v61 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705F38E0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v11 = MEMORY[0x277D837D0];
  v12 = v0[1];
  *(inited + 48) = *v0;
  *(inited + 56) = v12;
  *(inited + 72) = v11;
  *(inited + 80) = 0x707954746E657665;
  *(inited + 88) = 0xE900000000000065;
  v13 = v0[3];
  *(inited + 96) = v0[2];
  *(inited + 104) = v13;
  *(inited + 120) = v11;
  *(inited + 128) = 0x6F6974617265706FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = v0[4];
  v15 = *(v14 + 16);
  v66 = inited;
  v67 = v0;
  if (v15)
  {
    v69 = v4;
    *&v74 = MEMORY[0x277D84F90];

    sub_2704ADD94(0, v15, 0);
    v16 = v74;
    v17 = (v14 + 72);
    do
    {
      v18 = *(v17 - 4);
      v19 = *(v17 - 24);
      v21 = *(v17 - 2);
      v20 = *(v17 - 1);
      v76 = *(v17 - 5);
      v77 = v18;
      v78 = v19;
      v79 = v21;
      v80 = v20;
      v81 = *v17;
      v22 = v81;

      sub_27056B884(v21, v20, v22);
      v23 = sub_270579A48();

      sub_27056B898(v21, v20, v22);
      *&v74 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        v26 = OUTLINED_FUNCTION_46_7(v24);
        sub_2704ADD94(v26, v25 + 1, 1);
        v16 = v74;
      }

      v17 += 48;
      *(v16 + 16) = v25 + 1;
      *(v16 + 8 * v25 + 32) = v23;
      --v15;
    }

    while (v15);
    v4 = v69;
    inited = v66;
    v0 = v67;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0);
  *(inited + 144) = v16;
  OUTLINED_FUNCTION_47_3();
  *(inited + 168) = v27;
  *(inited + 176) = v28;
  *(inited + 184) = 0xEA0000000000746ELL;
  *(inited + 192) = v0[5];
  OUTLINED_FUNCTION_46_9();
  *(inited + 216) = v29;
  *(inited + 224) = v30;
  *(inited + 232) = v31;
  v32 = type metadata accessor for FilterConfigLookalike(0);
  v33 = v32;
  v34 = *(v0 + *(v32 + 36));
  v35 = *(v34 + 16);
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    v62 = v32;
    *&v74 = MEMORY[0x277D84F90];
    sub_27057177C(0, v35, 0);
    v36 = v74;
    v37 = *(v65 + 16);
    v38 = v34 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v68 = *(v65 + 72);
    v69 = v37;
    v39 = (v65 + 8);
    do
    {
      v40 = v70;
      v69(v70, v38, v4);
      sub_2705D4554();
      v42 = v41;
      v43 = v4;
      (*v39)(v40, v4);
      *&v74 = v36;
      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_27057177C((v44 > 1), v45 + 1, 1);
        v36 = v74;
      }

      *(v36 + 16) = v45 + 1;
      *(v36 + 8 * v45 + 32) = v42;
      v38 += v68;
      --v35;
      v4 = v43;
    }

    while (v35);
    inited = v66;
    v0 = v67;
    v33 = v62;
  }

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7AC0);
  *(inited + 240) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
  v46 = sub_2705D7494();
  v47 = v0 + *(v33 + 32);
  v48 = v64;
  sub_27056D58C(v47, v64);
  if (__swift_getEnumTagSinglePayload(v48, 1, v4) == 1)
  {
    sub_2703C2EFC(v48, &qword_2807D3E10);
  }

  else
  {
    v49 = v65;
    v50 = v63;
    (*(v65 + 32))(v63, v48, v4);
    sub_2705D4554();
    v75 = MEMORY[0x277D839F8];
    *&v74 = v51;
    sub_2703E43D4(&v74, &v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v46;
    __swift_mutable_project_boxed_opaque_existential_1(&v72, v73);
    OUTLINED_FUNCTION_1_14();
    MEMORY[0x28223BE20](v53);
    OUTLINED_FUNCTION_4_0();
    (*(v56 + 16))(v55 - v54);
    v57 = OUTLINED_FUNCTION_25_25();
    sub_2705732E0(v57, v58, v59, isUniquelyReferenced_nonNull_native, &v71);
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v46 = v71;
    (*(v49 + 8))(v50, v4);
  }

  return v46;
}

uint64_t sub_270570228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D6524();
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v6 = type metadata accessor for FilterConfigLookalike(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v12 = *(v11 + 32);
  v13 = sub_2705D4594();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  sub_2703D5404(0x7265746C6966, 0xE600000000000000, a1, &v102);
  if (!v104)
  {

    sub_2703C2EFC(&v102, &unk_2807D4890);
LABEL_24:
    if (qword_2807D7370 != -1)
    {
LABEL_51:
      OUTLINED_FUNCTION_6_68();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v41 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v41);
    OUTLINED_FUNCTION_29_8();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7AC8);
    *&v102 = v6;
    v42 = AMSLogKey();
    if (v42)
    {
      v43 = v42;
      v44 = sub_2705D7564();
      v45 = v10;
      v47 = v46;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1(&v102, v104);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v105 = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(&v105, &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v105 = v44;
      v106 = v47;
      v10 = v45;
      sub_2705D64E4();
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_8_57();
      v49 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_27_18(v49);
    }

    sub_2703C2EFC(&v105, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v102);
    sub_2705D64C4();
    v50 = sub_2705D7A64();
    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  if ((OUTLINED_FUNCTION_50_8() & 1) == 0)
  {

    goto LABEL_24;
  }

  v17 = v105;
  sub_270557A00(0x707954746E657665);
  v100 = a2;
  v97 = v12;
  if (!v104)
  {

    sub_2703C2EFC(&v102, &qword_2807D3D80);
LABEL_31:
    if (qword_2807D7370 != -1)
    {
      OUTLINED_FUNCTION_6_68();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    OUTLINED_FUNCTION_4_41();
    v51 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v51);
    OUTLINED_FUNCTION_29_8();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7AC8);
    *&v102 = v6;
    v52 = AMSLogKey();
    if (v52)
    {
      v53 = v52;
      v54 = v6;
      v55 = sub_2705D7564();
      v56 = v10;
      v58 = v57;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_8_57();
      v59 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_27_18(v59);
      v60 = OUTLINED_FUNCTION_45_9();
      sub_2703C2EFC(v60, v61);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v105 = v55;
      v106 = v58;
      v10 = v56;
      v6 = v54;
      sub_2705D64E4();
      v62 = OUTLINED_FUNCTION_45_9();
      sub_2703C2EFC(v62, v63);
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_8_57();
      v64 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_27_18(v64);
      sub_2703C2EFC(&v105, &unk_2807D4890);
    }

    v12 = v97;
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v102);
    sub_2705D64C4();
    v50 = sub_2705D7A64();
LABEL_37:
    sub_2705B6DB8(v50);
    goto LABEL_38;
  }

  v99 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
  v10 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {

    v10 = v99;
    goto LABEL_31;
  }

  v96 = v6;
  v18 = v105;
  v6 = v106;
  sub_2703D5404(25705, 0xE200000000000000, a1, &v102);

  if (!v104)
  {

    sub_2703C2EFC(&v102, &unk_2807D4890);
LABEL_41:
    if (qword_2807D7370 != -1)
    {
      OUTLINED_FUNCTION_6_68();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    OUTLINED_FUNCTION_4_41();
    v69 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v69);
    OUTLINED_FUNCTION_29_8();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7AC8);
    *&v102 = v96;
    v70 = AMSLogKey();
    if (v70)
    {
      v71 = v70;
      v72 = sub_2705D7564();
      v74 = v73;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_8_57();
      v75 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_27_18(v75);
      v76 = OUTLINED_FUNCTION_45_9();
      sub_2703C2EFC(v76, v77);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = v10;
      v105 = v72;
      v106 = v74;
      sub_2705D64E4();
      v78 = OUTLINED_FUNCTION_45_9();
      sub_2703C2EFC(v78, v79);
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_8_57();
      v85 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_27_18(v85);
      sub_2703C2EFC(&v105, &unk_2807D4890);
    }

    v10 = v99;
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v102);
    sub_2705D64C4();
    v86 = sub_2705D7A64();
    sub_2705B6DB8(v86);
    v6 = v96;
    goto LABEL_38;
  }

  if ((OUTLINED_FUNCTION_50_8() & 1) == 0)
  {

    goto LABEL_41;
  }

  v91 = v18;
  v93 = v6;
  v90 = v105;
  v92 = v106;
  v95 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v94 = (v19 + 63) >> 6;
  v98 = v17;

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  while (v21)
  {
LABEL_16:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v22 << 6);
    v27 = (v98[6] + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    sub_2703D7F04(v98[7] + 32 * v26, &v103);
    *&v102 = v28;
    *(&v102 + 1) = v29;
    sub_2703D7F04(&v103, v101);
    swift_bridgeObjectRetain_n();
    sub_270579D6C(v28, v29, v101, &v105);
    v10 = v105;
    v30 = v106;
    v31 = v107;
    v32 = MetatypeMetadata;
    v33 = v109;
    v6 = v110;
    sub_2703C2EFC(&v102, &qword_2807D7AD0);
    if (v30)
    {
      v87 = v10;
      v88 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_27057271C(0, *(v23 + 2) + 1, 1, v23);
      }

      v34 = v31;
      v6 = v10;
      v10 = *(v23 + 2);
      v35 = *(v23 + 3);
      v36 = v10 + 1;
      if (v10 >= v35 >> 1)
      {
        v38 = OUTLINED_FUNCTION_46_7(v35);
        v89 = v39;
        v40 = sub_27057271C(v38, v39, 1, v23);
        v36 = v89;
        v34 = v31;
        v23 = v40;
      }

      *(v23 + 2) = v36;
      v37 = &v23[48 * v10];
      *(v37 + 4) = v87;
      *(v37 + 5) = v30;
      v37[48] = v34;
      *(v37 + 7) = v32;
      *(v37 + 8) = v33;
      v37[72] = v88;
    }
  }

  v12 = v97;
  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v24 >= v94)
    {
      break;
    }

    v21 = *(v95 + 8 * v24);
    ++v22;
    if (v21)
    {
      v22 = v24;
      goto LABEL_16;
    }
  }

  v80 = *(v23 + 2);
  v81 = v98[2];

  if (v80 == v81)
  {
    *v99 = v90;
    v99[1] = v92;
    v99[2] = v91;
    v99[3] = v93;
    v99[4] = v23;
    v99[5] = 0;
    sub_2703C2EFC(v99 + v97, &qword_2807D3E10);
    OUTLINED_FUNCTION_3_14();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v13);
    *(v99 + *(v96 + 36)) = MEMORY[0x277D84F90];
    sub_2705734B0(v99, v100);
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v96);
    return sub_27056E2D4(v99);
  }

  v6 = v96;
  v10 = v99;
LABEL_38:

  sub_2703C2EFC(v10 + v12, &qword_2807D3E10);
  OUTLINED_FUNCTION_3_14();
  return __swift_storeEnumTagSinglePayload(v65, v66, v67, v6);
}

uint64_t sub_270570E08@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FilterActivityHistoryStats(0) + 20);

  return sub_27056D58C(v3, a1);
}

uint64_t sub_270570E4C()
{
  v2 = OUTLINED_FUNCTION_4_41();
  v3 = v1 + *(type metadata accessor for FilterActivityHistoryStats(v2) + 20);

  return sub_27056E710(v0, v3);
}

uint64_t sub_270570E8C()
{
  v0 = OUTLINED_FUNCTION_4_41();
  type metadata accessor for FilterActivityHistoryStats(v0);
  return OUTLINED_FUNCTION_12_26();
}

uint64_t sub_270570ECC()
{
  type metadata accessor for FilterActivityHistoryStats(0);
}

uint64_t sub_270570F00()
{
  v2 = OUTLINED_FUNCTION_4_41();
  v3 = *(type metadata accessor for FilterActivityHistoryStats(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t sub_270570F3C()
{
  v0 = OUTLINED_FUNCTION_4_41();
  type metadata accessor for FilterActivityHistoryStats(v0);
  return OUTLINED_FUNCTION_12_26();
}

uint64_t sub_270570F7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  v2 = OUTLINED_FUNCTION_23_0(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - v3;
  v5 = sub_2705D4594();
  OUTLINED_FUNCTION_1_14();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705E6EB0;
  OUTLINED_FUNCTION_47_3();
  v15[4] = v16;
  v15[5] = 0xEA0000000000746ELL;
  v15[6] = *v0;
  OUTLINED_FUNCTION_46_9();
  v17[9] = v18;
  v17[10] = v19;
  v17[11] = v20;
  v48 = type metadata accessor for FilterActivityHistoryStats(0);
  v21 = *(v0 + *(v48 + 24));
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v43 = inited;
    v44 = v0;
    v45 = v4;
    v46 = v13;
    *&v54 = MEMORY[0x277D84F90];
    sub_27057177C(0, v22, 0);
    v23 = v54;
    v47 = v7;
    v25 = *(v7 + 16);
    v24 = v7 + 16;
    v50 = v25;
    v26 = v21 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v49 = *(v24 + 56);
    do
    {
      v50(v11, v26, v5);
      sub_2705D4554();
      v28 = v27;
      (*(v24 - 8))(v11, v5);
      *&v54 = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        v31 = OUTLINED_FUNCTION_46_7(v29);
        sub_27057177C(v31, v30 + 1, 1);
        v23 = v54;
      }

      *(v23 + 16) = v30 + 1;
      *(v23 + 8 * v30 + 32) = v28;
      v26 += v49;
      --v22;
    }

    while (v22);
    v7 = v47;
    v13 = v46;
    v4 = v45;
    v0 = v44;
    inited = v43;
  }

  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7AC0);
  *(inited + 96) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
  v32 = sub_2705D7494();
  sub_27056D58C(v0 + *(v48 + 20), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2703C2EFC(v4, &qword_2807D3E10);
  }

  else
  {
    (*(v7 + 32))(v13, v4, v5);
    sub_2705D4554();
    v55 = MEMORY[0x277D839F8];
    *&v54 = v33;
    sub_2703E43D4(&v54, &v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v32;
    __swift_mutable_project_boxed_opaque_existential_1(&v52, v53);
    OUTLINED_FUNCTION_1_14();
    MEMORY[0x28223BE20](v35);
    OUTLINED_FUNCTION_4_0();
    (*(v38 + 16))(v37 - v36);
    v39 = OUTLINED_FUNCTION_25_25();
    sub_2705732E0(v39, v40, v41, isUniquelyReferenced_nonNull_native, &v51);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v32 = v51;
    (*(v7 + 8))(v13, v5);
  }

  return v32;
}

uint64_t sub_270571440(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = sub_2705D4594();
  OUTLINED_FUNCTION_1_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v14 = v13 - v12;
  v15 = type metadata accessor for FilterConfigLookalike(0);
  v16 = *(v15 + 36);
  v43 = v15;
  v44 = v16;
  v17 = *(v2 + v16);
  v41 = *(v10 + 16);
  v42 = a1;
  v41(v14, a1, v8);

  v18 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_56();
    sub_270572888(0, v28 + 1, 1, v17, v29, v30, v31, v32);
    v18 = v33;
  }

  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  if (v20 >= v19 >> 1)
  {
    OUTLINED_FUNCTION_46_7(v19);
    OUTLINED_FUNCTION_7_56();
    sub_270572888(v34, v20 + 1, 1, v18, v35, v36, v37, v38);
    v18 = v39;
  }

  *(v18 + 16) = v20 + 1;
  (*(v10 + 32))(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, v14, v8);
  v45 = v18;
  if (v20 < 0xA)
  {
  }

  else
  {
    result = sub_27057E284(0, v20 - 9, v20 + 1, v18);
    if (v22)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    if (result < 0)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    sub_270572E20(0, result);

    v18 = v45;
  }

  *(v2 + v44) = v18;
  v23 = *(v2 + 40);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 40) = v25;
  v26 = *(v43 + 32);
  sub_27056D58C(v2 + v26, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  result = sub_2703C2EFC(v7, &qword_2807D3E10);
  if (EnumTagSinglePayload == 1)
  {
    sub_2703C2EFC(v2 + v26, &qword_2807D3E10);
    v41(v2 + v26, v42, v8);
    return __swift_storeEnumTagSinglePayload(v2 + v26, 0, 1, v8);
  }

  return result;
}

char *sub_27057177C(char *a1, int64_t a2, char a3)
{
  result = sub_27057187C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_27057179C(size_t a1, int64_t a2, char a3)
{
  result = sub_270571A64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2705717BC(char *a1, int64_t a2, char a3)
{
  result = sub_270571C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2705717DC(char *a1, int64_t a2, char a3)
{
  result = sub_270571D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2705717FC(char *a1, int64_t a2, char a3)
{
  result = sub_270571E54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27057181C(void *a1, int64_t a2, char a3)
{
  result = sub_270571F68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27057183C(char *a1, int64_t a2, char a3)
{
  result = sub_27057209C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27057185C(void *a1, int64_t a2, char a3)
{
  result = sub_2705721A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27057187C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_27057197C()
{
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_40_8();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_10();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  else
  {
    v5 = v2;
  }

  v8 = v0[2];
  if (v5 <= v8)
  {
    v9 = v0[2];
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    v10 = OUTLINED_FUNCTION_86_2();
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_19_26();
    v10[2] = v8;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v10 != v0 || &v0[v8 + 4] <= v10 + 4)
    {
      v13 = OUTLINED_FUNCTION_45_5();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_37_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16);
    OUTLINED_FUNCTION_45_5();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_15_1();
}

size_t sub_270571A64(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B70);
  v10 = *(type metadata accessor for FilterConfigLookalike(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FilterConfigLookalike(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2705722DC(a4 + v16, v8, v13 + v16, type metadata accessor for FilterConfigLookalike);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_270571C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_270571D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_270571E54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_270571F68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[11 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27057209C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2705721A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B40);
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
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2705722DC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_14(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_37_12();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_37_12();

    MEMORY[0x2821FE820](v9);
  }
}

unint64_t sub_2705723AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= result && result + 8 * a2 > a3)
  {
    if (a3 != result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B38);

      return MEMORY[0x2821FE820](a3);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B38);

    return MEMORY[0x2821FE828](a3);
  }

  return result;
}

void sub_27057247C()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_28_18();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520);
    v7 = OUTLINED_FUNCTION_30_17();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_42();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[24 * v3] <= v9)
    {
      memmove(v9, v10, 24 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27057255C()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
    v7 = OUTLINED_FUNCTION_86_2();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_45(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270572630()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4488);
    v7 = OUTLINED_FUNCTION_86_2();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_45(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[32 * v2 + 32] <= v7 + 32)
    {
      v10 = OUTLINED_FUNCTION_15_18();
      memmove(v10, v11, v12);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    OUTLINED_FUNCTION_22_22();
    swift_arrayInitWithCopy();
  }
}

char *sub_27057271C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_270572888(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_13_22();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_30_10();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_270572D30(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_2705722DC(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270572984()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_28_18();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B60);
    v7 = OUTLINED_FUNCTION_30_17();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_42();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[3 * v3 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_15_18();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B68);
    OUTLINED_FUNCTION_22_22();
    swift_arrayInitWithCopy();
  }
}

void sub_270572A9C()
{
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_40_8();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_10();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  else
  {
    v5 = v2;
  }

  v8 = v0[2];
  if (v5 <= v8)
  {
    v9 = v0[2];
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    v10 = OUTLINED_FUNCTION_86_2();
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_19_26();
    v10[2] = v8;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v10 != v0 || &v0[v8 + 4] <= v10 + 4)
    {
      v13 = OUTLINED_FUNCTION_45_5();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_37_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16);
    OUTLINED_FUNCTION_45_5();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_15_1();
}

void sub_270572B84()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B50);
    v7 = OUTLINED_FUNCTION_86_2();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_45(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270572C54()
{
  OUTLINED_FUNCTION_31_9();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13_22(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_26();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B30);
      v7 = OUTLINED_FUNCTION_86_2();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_19_26();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        sub_2705723AC(v0 + 32, v2, (v7 + 4));
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B38);
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_10();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_22();
    goto LABEL_6;
  }

  __break(1u);
}

size_t sub_270572D30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = a5(0);
  OUTLINED_FUNCTION_1_1(v8);
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_29_8();
  v13 = v12 & ~v11;
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v10)
  {
    if (result - v13 != 0x8000000000000000 || v10 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v10);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_270572E20(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2705CDA48(v4 - v6, 1);
  v8 = *v2;
  v9 = *(sub_2705D4594() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_2705722DC(v10 + v11 * a2, v13 - a2, v12, MEMORY[0x277CC9578]);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_270572F64()
{
  OUTLINED_FUNCTION_54_7();
  v2 = v1;
  v19[3] = MEMORY[0x277D837D0];
  v19[0] = v3;
  v19[1] = v4;
  sub_2703D7318(v5, v6);
  OUTLINED_FUNCTION_0_6();
  if (v7)
  {
    __break(1u);
LABEL_10:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8);
  if (OUTLINED_FUNCTION_16_30())
  {
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_20_24();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  v9 = *v2;
  if (v0)
  {
    OUTLINED_FUNCTION_13_42();
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
    OUTLINED_FUNCTION_3_79();
    MEMORY[0x28223BE20](v10);
    v12 = OUTLINED_FUNCTION_0_85(v11, v19[0]);
    v13(v12);
    v14 = OUTLINED_FUNCTION_17_32();
    sub_270573C88(v14, v15, v16, v17, v18, v9);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_52_5();
  }

  OUTLINED_FUNCTION_15_1();
}

void sub_2705730A0()
{
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_18_25();
  v16 = v2;
  OUTLINED_FUNCTION_49_6(v2, v3, v4);
  OUTLINED_FUNCTION_0_6();
  if (v5)
  {
    __break(1u);
LABEL_10:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8);
  if (OUTLINED_FUNCTION_16_30())
  {
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_20_24();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = *v0;
  if (v1)
  {
    OUTLINED_FUNCTION_13_42();
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
    OUTLINED_FUNCTION_3_79();
    MEMORY[0x28223BE20](v8);
    v10 = OUTLINED_FUNCTION_0_85(v9, v16);
    v11(v10);
    v12 = OUTLINED_FUNCTION_17_32();
    sub_270573C04(v12, v13, v14, v15, v7);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    OUTLINED_FUNCTION_52_5();
  }

  OUTLINED_FUNCTION_15_1();
}

void sub_2705731C0()
{
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_18_25();
  LOBYTE(v16) = v2;
  OUTLINED_FUNCTION_49_6(v2, v3, v4);
  OUTLINED_FUNCTION_0_6();
  if (v5)
  {
    __break(1u);
LABEL_10:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8);
  if (OUTLINED_FUNCTION_16_30())
  {
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_20_24();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = *v0;
  if (v1)
  {
    OUTLINED_FUNCTION_13_42();
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
    OUTLINED_FUNCTION_3_79();
    MEMORY[0x28223BE20](v8);
    v10 = OUTLINED_FUNCTION_0_85(v9, v16);
    v11(v10);
    v12 = OUTLINED_FUNCTION_17_32();
    sub_270573B80(v12, v13, v14, v15, v7);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    OUTLINED_FUNCTION_52_5();
  }

  OUTLINED_FUNCTION_15_1();
}

_OWORD *sub_2705732E0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v23[0] = a3;
  v8 = MEMORY[0x277D839F8];
  v24 = MEMORY[0x277D839F8];
  v9 = *a5;
  v10 = sub_2703D7318(a1, a2);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8);
  if ((sub_2705D7E04() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2703D7318(a1, a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_10:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *a5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return sub_2703E43D4(v23, v17);
  }

  else
  {
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v23, v8);
    MEMORY[0x28223BE20](v19);
    v21 = (v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    sub_270573D0C(v12, a1, a2, v16, *v21);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }
}

uint64_t sub_2705734B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterConfigLookalike(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270573528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_87(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  v8 = a1 + *(a3 + 32);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2705735C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_270573650()
{
  sub_27057373C();
  if (v0 <= 0x3F)
  {
    sub_27057378C(319, &qword_2807D3E30, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_27057378C(319, &qword_2807D7AF0, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27057373C()
{
  if (!qword_2807D7AE8)
  {
    v0 = sub_2705D7834();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D7AE8);
    }
  }
}

void sub_27057378C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2705D4594();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_270573800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_87(*(a1 + *(a3 + 24)));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2705738C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_27057397C()
{
  sub_27057378C(319, &qword_2807D3E30, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_27057378C(319, &qword_2807D7AF0, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_270573A48()
{
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_18_25();
  v3 = v2;
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0);
  v15[0] = v3;
  OUTLINED_FUNCTION_26_23();
  OUTLINED_FUNCTION_0_6();
  if (v4)
  {
    __break(1u);
LABEL_10:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8);
  if (OUTLINED_FUNCTION_16_30())
  {
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_20_24();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v6 = *v0;
  if (v1)
  {
    OUTLINED_FUNCTION_13_42();
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
    OUTLINED_FUNCTION_3_79();
    MEMORY[0x28223BE20](v7);
    v9 = OUTLINED_FUNCTION_0_85(v8, v15[0]);
    v10(v9);
    v11 = OUTLINED_FUNCTION_17_32();
    sub_270573D90(v11, v12, v13, v14, v6);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_52_5();
  }

  OUTLINED_FUNCTION_15_1();
}

_OWORD *sub_270573B80(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2703E43D4(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_270573C04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2703E43D4(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_270573C88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_2703E43D4(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_270573D0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11[0] = a5;
  v12 = MEMORY[0x277D839F8];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2703E43D4(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_270573D90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_2703E43D4(&v15, (a5[7] + 32 * a1));
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

uint64_t OUTLINED_FUNCTION_6_68()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_57()
{
  __swift_project_boxed_opaque_existential_1((v0 - 184), *(v0 - 160));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_11_45(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 32);
  return result;
}

_OWORD *OUTLINED_FUNCTION_13_42()
{
  v3 = (*(v0 + 56) + 32 * v1);
  __swift_destroy_boxed_opaque_existential_1(v3);

  return sub_2703E43D4((v2 - 96), v3);
}

uint64_t OUTLINED_FUNCTION_16_30()
{

  return sub_2705D7E04();
}

unint64_t OUTLINED_FUNCTION_26_23()
{

  return sub_2703D7318(v1, v0);
}

uint64_t OUTLINED_FUNCTION_27_18(uint64_t a1)
{
  *(v2 - 112) = a1;
  *(v2 - 136) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_30_17()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_49_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 72) = v3;

  return sub_2703D7318(a2, a3);
}

uint64_t OUTLINED_FUNCTION_50_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 96, v0);
}

uint64_t OUTLINED_FUNCTION_52_5()
{
}

uint64_t sub_270574134()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C40);
  swift_allocObject();
  result = sub_2705C3B14();
  qword_28081C568 = result;
  return result;
}

uint64_t *sub_270574180()
{
  if (qword_2807D7358 != -1)
  {
    OUTLINED_FUNCTION_18_26();
  }

  return &qword_28081C568;
}

uint64_t sub_2705741C0()
{
  if (qword_2807D7358 != -1)
  {
    OUTLINED_FUNCTION_18_26();
  }
}

uint64_t sub_27057420C()
{
  OUTLINED_FUNCTION_32_15();
  v0 = swift_allocObject();
  sub_27057425C();
  return v0;
}

void sub_27057425C()
{
  OUTLINED_FUNCTION_10_1();
  v53 = v1;
  v59 = v0;
  v51 = v3;
  v4 = sub_2705D7354();
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26();
  v52 = v6;
  sub_2705D7364();
  OUTLINED_FUNCTION_0();
  v55 = v8;
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v54 = v9;
  v10 = sub_2705D73C4();
  v11 = OUTLINED_FUNCTION_23_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  OUTLINED_FUNCTION_23_0(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v16 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_57();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v50 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v57 = &v50 - v25;
  MEMORY[0x28223BE20](v24);
  v58 = &v50 - v26;
  v27 = [objc_opt_self() defaultManager];
  v28 = [v27 URLsForDirectory:14 inDomains:1];

  v29 = sub_2705D77C4();
  sub_2705748D4(v29, v15);

  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {

    sub_2703C2EFC(v15, &unk_2807D4280);
    sub_27057497C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v18 + 32))(v58, v15, v16);
    sub_2705D4404();
    sub_2705D4404();

    v30 = *(v18 + 8);
    v30(v2, v16);
    v31 = v57;
    sub_2705D4404();
    v51 = v30;
    v30(v23, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B98);
    v32 = swift_allocObject();
    v50 = xmmword_2705DC030;
    *(v32 + 16) = xmmword_2705DC030;
    v33 = type metadata accessor for FilterConfig();
    OUTLINED_FUNCTION_1_85();
    v36 = sub_270578A70(v34, 255, v35);
    *(v32 + 32) = v33;
    *(v32 + 40) = v36;
    sub_2705D73D4();
    sub_2705D7434();
    OUTLINED_FUNCTION_27_19();
    swift_allocObject();
    sub_2705D7444();
    (*(v18 + 16))(v23, v31, v16);

    sub_2705D7344();
    v37 = v54;
    sub_2705D7374();
    sub_2705D72C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BA0);
    v38 = v55;
    v39 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v50;
    v41 = v56;
    (*(v38 + 16))(v40 + v39, v37, v56);

    v42 = v53;
    v43 = sub_2705D72B4();
    if (!v42)
    {
      v59[4] = v43;
      sub_2705D7294();
      OUTLINED_FUNCTION_27_19();
      swift_allocObject();

      sub_2705D72A4();
      OUTLINED_FUNCTION_21_3();
      sub_2705D7394();
      OUTLINED_FUNCTION_27_19();
      swift_allocObject();
      OUTLINED_FUNCTION_94();
      v45 = sub_2705D7384();

      (*(v38 + 8))(v37, v41);
      v46 = v51;
      v51(v57, v16);
      v46(v58, v16);
      OUTLINED_FUNCTION_14_41();
      v49 = sub_270578A70(v47, 255, v48);
      v59[2] = v45;
      v59[3] = v49;
      goto LABEL_6;
    }

    (*(v38 + 8))(v37, v41);
    v44 = v51;
    v51(v57, v16);
    v44(v58, v16);
  }

  type metadata accessor for FilterConfigStorage();
  swift_deallocPartialClassInstance();
LABEL_6:
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2705748D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2705D4484();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

unint64_t sub_27057497C()
{
  result = qword_2807D7B90;
  if (!qword_2807D7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7B90);
  }

  return result;
}

uint64_t sub_2705749F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for FilterConfigLookalike(0);
  v6 = v5;
  if (v4)
  {
    sub_2705734B0(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_270574A98()
{
  OUTLINED_FUNCTION_10_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (sub_27057676C(v8, v6))
  {

    sub_27056C9F8();
    type metadata accessor for FilterConfig();
    v10 = sub_27056DD98(v1);
    sub_27056CD0C(v10, v11);
  }

  else
  {
    type metadata accessor for FilterConfig();
    OUTLINED_FUNCTION_27_19();
    swift_allocObject();

    sub_27056DAC4(v9, v7, v5, v3, v1);
    type metadata accessor for FilterConfigStorage();
    OUTLINED_FUNCTION_0_86();
    sub_270578A70(v12, v13, v14);
    OUTLINED_FUNCTION_94();
    sub_2705D7224();
    OUTLINED_FUNCTION_1_85();
    sub_270578A70(v15, 255, v16);
    sub_2705D7284();
  }

  type metadata accessor for FilterConfigStorage();
  OUTLINED_FUNCTION_0_86();
  sub_270578A70(v17, v18, v19);
  OUTLINED_FUNCTION_94();
  sub_2705D7224();
  sub_2705D7254();

  OUTLINED_FUNCTION_11_3();
}

void sub_270574C48()
{
  OUTLINED_FUNCTION_10_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BB8);
  OUTLINED_FUNCTION_23_0(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_3();
  v4 = type metadata accessor for FilterConfigLookalike(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26();
  v44 = v6;
  v7 = sub_2705D6524();
  v8 = OUTLINED_FUNCTION_23_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  if (qword_2807D7370 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v9 = OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_1_1(v9);
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v45 = type metadata accessor for FilterConfigStorage();
    v51 = v45;
    v50[0] = v0;
    v46 = v0;

    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      v43 = sub_2705D7564();
      v42 = v12;

      OUTLINED_FUNCTION_35_15();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_3_38();
      MetatypeMetadata = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_2_32(MetatypeMetadata);
      OUTLINED_FUNCTION_46_10(&v47);
      OUTLINED_FUNCTION_7_24();
      v49 = MEMORY[0x277D837D0];
      v47 = v43;
      v48 = v42;
      sub_2705D64E4();
      OUTLINED_FUNCTION_46_10(&v47);
    }

    else
    {
      OUTLINED_FUNCTION_34_17();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v14 = OUTLINED_FUNCTION_19_11(v50);
      v49 = swift_getMetatypeMetadata();
      v47 = v14;
      sub_2705D64E4();
      sub_2703C2EFC(&v47, &unk_2807D4890);
    }

    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_2705D64C4();
    v15 = sub_2705D7A94();
    sub_2705B6DB8(v15);

    sub_270557A00(0x456465776F6C6C61);
    if (!v51)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v16 = 0;
    v0 = v47;
    v17 = *(v47 + 16);
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v17 == v16)
      {

        sub_2705752B0(v18);
        goto LABEL_23;
      }

      if (v16 >= *(v0 + 16))
      {
        break;
      }

      v20 = sub_27046C7B8(v19);
      sub_270570228(v20, v1);

      if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
      {
        sub_2703C2EFC(v1, &qword_2807D7BB8);
        ++v16;
      }

      else
      {
        sub_2705788D8(v1, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = OUTLINED_FUNCTION_21_8();
          sub_27057285C(v27, v28, v29, v18);
          v18 = v30;
        }

        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v31 = OUTLINED_FUNCTION_46_7(v21);
          v52 = v32;
          sub_27057285C(v31, v32, 1, v18);
          v23 = v52;
          v18 = v33;
        }

        ++v16;
        *(v18 + 16) = v23;
        OUTLINED_FUNCTION_16_31();
        sub_2705788D8(v26, v18 + v24 + *(v25 + 72) * v22);
      }
    }

    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_2_86();
    swift_once();
  }

  sub_2703C2EFC(v50, &qword_2807D3D80);
LABEL_18:
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v51 = v45;
  v50[0] = v46;

  v34 = AMSLogKey();
  if (v34)
  {
    v35 = v34;
    v36 = sub_2705D7564();
    v38 = v37;

    OUTLINED_FUNCTION_35_15();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_3_38();
    v39 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_2_32(v39);
    OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_7_24();
    v49 = MEMORY[0x277D837D0];
    v47 = v36;
    v48 = v38;
    sub_2705D64E4();
    OUTLINED_FUNCTION_26_24();
  }

  else
  {
    OUTLINED_FUNCTION_34_17();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_3_38();
    v40 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_2_32(v40);
    sub_2703C2EFC(&v47, &unk_2807D4890);
  }

  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_2705D64C4();
  v41 = sub_2705D7A94();
  sub_2705B6DB8(v41);
LABEL_23:

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2705752B0(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 16);
  while (v3 != v2)
  {
    v4 = type metadata accessor for FilterConfigLookalike(0);
    OUTLINED_FUNCTION_1_1(v4);

    sub_270574A98();
    if (v1)
    {
    }

    ++v2;
  }

  return result;
}

void sub_2705753D4()
{
  OUTLINED_FUNCTION_10_1();
  v74 = v1;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = sub_2705D6524();
  v10 = OUTLINED_FUNCTION_23_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v70 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BB8);
  v13 = OUTLINED_FUNCTION_23_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_57();
  MEMORY[0x28223BE20](v14);
  v75 = OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_0();
  v67 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26();
  v71 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC0);
  OUTLINED_FUNCTION_23_0(v18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC8);
  OUTLINED_FUNCTION_0();
  v72 = v21;
  v73 = v20;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  v68 = v8;
  v69 = v6;
  v76 = v8;
  v77 = v6;
  type metadata accessor for FilterConfig();
  sub_2705D45D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BD0);
  OUTLINED_FUNCTION_8_9();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_1_85();
  sub_270578A70(v29, 255, v30);
  sub_2705D72D4();
  v31 = type metadata accessor for FilterConfigStorage();
  OUTLINED_FUNCTION_0_86();
  sub_270578A70(v32, v33, v34);
  v35 = v4;
  sub_2705D7224();
  v36 = v74;
  v37 = sub_2705D7264();
  if (v36)
  {
    (*(v72 + 8))(v24, v73);
  }

  else
  {
    v38 = v37;
    v63 = v31;
    v64 = v35;
    v66 = 0;
    v65 = v24;

    v39 = sub_2703CAFD0(v38);
    v40 = 0;
    v74 = MEMORY[0x277D84F90];
    while (v39 != v40)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A4130](v40, v38);
      }

      else
      {
        if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }
      }

      if (__OFADD__(v40, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_27056E330(v3);
      sub_27057898C(v3, v2);

      if (__swift_getEnumTagSinglePayload(v2, 1, v75) == 1)
      {
        sub_2703C2EFC(v2, &qword_2807D7BB8);
        ++v40;
      }

      else
      {
        sub_2705788D8(v2, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = OUTLINED_FUNCTION_21_8();
          sub_27057285C(v45, v46, v47, v48);
          v74 = v49;
        }

        v42 = *(v74 + 16);
        v41 = *(v74 + 24);
        v43 = v67;
        if (v42 >= v41 >> 1)
        {
          v50 = OUTLINED_FUNCTION_46_7(v41);
          sub_27057285C(v50, v42 + 1, 1, v74);
          v43 = v67;
          v74 = v51;
        }

        v44 = v74;
        *(v74 + 16) = v42 + 1;
        sub_2705788D8(v71, v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42);
        ++v40;
      }
    }

    if (qword_2807D7370 == -1)
    {
      goto LABEL_18;
    }

LABEL_25:
    OUTLINED_FUNCTION_2_86();
    swift_once();
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v52 = OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_1_1(v52);
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v81 = v63;
    v80[0] = v64;

    v53 = AMSLogKey();
    if (v53)
    {
      v54 = v53;
      v55 = sub_2705D7564();
      v57 = v56;

      OUTLINED_FUNCTION_35_15();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v80, v81);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v78[0] = DynamicType;
      sub_2705D64E4();
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v78[0] = v55;
      v78[1] = v57;
      sub_2705D64E4();
      OUTLINED_FUNCTION_26_24();
    }

    else
    {
      OUTLINED_FUNCTION_34_17();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v59 = OUTLINED_FUNCTION_19_11(v80);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v78[0] = v59;
      sub_2705D64E4();
      sub_2703C2EFC(v78, &unk_2807D4890);
    }

    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v80);
    sub_2705D6514();
    sub_2705D6504();
    v60 = *(v74 + 16);
    v81 = MEMORY[0x277D83B88];
    v80[0] = v60;
    sub_2705D64E4();
    sub_2703C2EFC(v80, &unk_2807D4890);
    sub_2705D6504();
    v81 = MEMORY[0x277D837D0];
    v80[0] = v68;
    v80[1] = v69;

    sub_2705D64E4();
    sub_2703C2EFC(v80, &unk_2807D4890);
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    sub_2705D6534();
    v61 = sub_2705D7A94();
    sub_2705B6DB8(v61);

    (*(v72 + 8))(v65, v73);
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_270575B70()
{
  OUTLINED_FUNCTION_10_1();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_2705D6524();
  v8 = OUTLINED_FUNCTION_23_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BB8);
  OUTLINED_FUNCTION_23_0(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_3();
  v11 = type metadata accessor for FilterConfigLookalike(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_44_7())
  {
    sub_27056E330(v1);
    if (__swift_getEnumTagSinglePayload(v1, 1, v11) == 1)
    {

      sub_2703C2EFC(v1, &qword_2807D7BB8);
    }

    else
    {
      sub_2705788D8(v1, v0);
      if (qword_2807D7370 != -1)
      {
        OUTLINED_FUNCTION_2_86();
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v13 = OUTLINED_FUNCTION_37_13();
      OUTLINED_FUNCTION_1_1(v13);
      v14 = OUTLINED_FUNCTION_29_15();
      v29 = OUTLINED_FUNCTION_45_10(v14, xmmword_2705E6EB0);
      OUTLINED_FUNCTION_35_16(v29);
      v15 = AMSLogKey();
      if (v15)
      {
        v16 = v15;
        sub_2705D7564();

        OUTLINED_FUNCTION_35_15();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_19_11(v32);
        MetatypeMetadata = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_28_19(MetatypeMetadata);
        v18 = OUTLINED_FUNCTION_38_11();
        sub_2703C2EFC(v18, v19);
        OUTLINED_FUNCTION_7_24();
        OUTLINED_FUNCTION_43_8(MEMORY[0x277D837D0]);
        v20 = OUTLINED_FUNCTION_38_11();
        sub_2703C2EFC(v20, v21);
      }

      else
      {
        OUTLINED_FUNCTION_34_17();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_19_11(v32);
        v22 = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_28_19(v22);
        sub_2703C2EFC(&v31, &unk_2807D4890);
      }

      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v32);
      sub_2705D6514();
      sub_2705D6504();
      v32[3] = MEMORY[0x277D837D0];
      v32[0] = v6;
      v32[1] = v4;

      sub_2705D64E4();
      sub_2703C2EFC(v32, &unk_2807D4890);
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      sub_2705D6534();
      v23 = sub_2705D7A94();
      sub_2705B6DB8(v23);

      sub_270571440(v30);
      sub_27056E45C();
      OUTLINED_FUNCTION_0_86();
      sub_270578A70(v24, v25, v26);
      OUTLINED_FUNCTION_25_26();
      OUTLINED_FUNCTION_21_3();
      type metadata accessor for FilterConfig();
      OUTLINED_FUNCTION_1_85();
      sub_270578A70(v27, 255, v28);
      sub_2705D7284();

      OUTLINED_FUNCTION_25_26();
      sub_2705D7254();
      sub_27056E2D4(v0);
    }
  }

  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_11_3();
}