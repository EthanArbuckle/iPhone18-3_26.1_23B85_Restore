void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_270256460()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2702564BC()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_27025653C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27025655C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2702565B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2702565D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_270256674(uint64_t a1, id *a2)
{
  result = sub_2702B400C();
  *a2 = 0;
  return result;
}

uint64_t sub_2702566EC(uint64_t a1, id *a2)
{
  v3 = sub_2702B401C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_27025676C@<X0>(uint64_t *a1@<X8>)
{
  sub_2702B402C();
  v2 = sub_2702B3FFC();

  *a1 = v2;
  return result;
}

uint64_t sub_2702567B0()
{
  v0 = sub_2702B402C();
  v1 = MEMORY[0x27439BD20](v0);

  return v1;
}

uint64_t sub_2702567EC()
{
  sub_2702B402C();
  sub_2702B40BC();
}

uint64_t sub_270256840()
{
  sub_2702B402C();
  sub_2702B487C();
  sub_2702B40BC();
  v0 = sub_2702B48AC();

  return v0;
}

uint64_t sub_2702568B8()
{
  v0 = sub_2702B402C();
  v2 = v1;
  if (v0 == sub_2702B402C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2702B476C();
  }

  return v5 & 1;
}

uint64_t sub_270256944@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2702B402C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270256970(uint64_t a1)
{
  v2 = sub_270256B78(&qword_2807C8368, type metadata accessor for VNImageOption);
  v3 = sub_270256B78(&qword_2807C8370, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_270256A2C(uint64_t a1)
{
  v2 = sub_270256B78(&qword_2807C8388, type metadata accessor for IOSurfacePropertyKey);
  v3 = sub_270256B78(&qword_2807C8390, type metadata accessor for IOSurfacePropertyKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_270256B78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_270256BC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2702B3FFC();

  *a1 = v2;
  return result;
}

uint64_t sub_270256C08(uint64_t a1)
{
  v2 = sub_270256B78(&qword_2807C8378, type metadata accessor for CIContextOption);
  v3 = sub_270256B78(&qword_2807C8380, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_270256F24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_270257038(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x705F6E6565726373 && a2 == 0xEA0000000000736FLL || (sub_2702B476C() & 1) != 0)
  {
    v5 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6C5F6E6565726373 && a2 == 0xEC0000006C656261 || (sub_2702B476C() & 1) != 0)
  {
    v5 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x725F6E6565726373 && a2 == 0xEB000000006E6E63 || (sub_2702B476C() & 1) != 0)
  {
    v5 = 32;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x5F676E6964646170 && a2 == 0xEC0000006B73616DLL || (sub_2702B476C() & 1) != 0)
  {
    v5 = 40;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_270257228()
{

  return swift_deallocClassInstance();
}

uint64_t sub_270257644()
{
  v1 = *v0;
  sub_2702B487C();
  MEMORY[0x27439C490](v1);
  return sub_2702B48AC();
}

uint64_t sub_2702576B8()
{
  v1 = *v0;
  sub_2702B487C();
  MEMORY[0x27439C490](v1);
  return sub_2702B48AC();
}

uint64_t *sub_2702576FC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_270257728()
{
  sub_2702B487C();
  MEMORY[0x27439C490](0);
  return sub_2702B48AC();
}

uint64_t sub_270257794()
{
  sub_2702B487C();
  MEMORY[0x27439C490](0);
  return sub_2702B48AC();
}

void sub_2702577E4(id a1, void *a2, id a3, void *a4)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v9 = *(v4 + 40);
  if (v9 != 2)
  {
    if (v9 != 1)
    {
      goto LABEL_13;
    }

    v4 = *(v4 + 16);
    if (!v4)
    {
      goto LABEL_13;
    }

    type metadata accessor for TwinEmbeddingTransformerPortraitInput();
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = a1;
    v10[5] = a4;
    v11 = objc_allocWithZone(MEMORY[0x277CBFF68]);
    v12 = a2;
    v13 = a3;
    v14 = a1;
    v15 = a4;

    v16 = [v11 init];
    v17 = *(v4 + 16);
    v37[0] = 0;
    v18 = [v17 predictionFromFeatures:v10 options:v16 error:v37];
    a3 = v37[0];
    if (!v18)
    {
LABEL_14:
      v36 = a3;
      sub_2702B3C0C();

      swift_willThrow();

      return;
    }

    a4 = v18;
    v19 = v37[0];

    v20 = sub_2702B3FFC();
    a1 = [a4 featureValueForName_];

    if (!a1)
    {
      __break(1u);
      goto LABEL_16;
    }

    v21 = [a1 multiArrayValue];

    if (v21)
    {
LABEL_12:

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
  }

  v22 = *(v4 + 24);
  if (!v22)
  {
LABEL_13:
    sub_2702599C4();
    swift_allocError();
    swift_willThrow();
    return;
  }

  type metadata accessor for TwinEmbeddingTransformerSquareInput();
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a1;
  v23[5] = a4;
  v24 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v25 = a2;
  v26 = a3;
  v27 = a1;
  v28 = a4;

  v16 = [v24 init];
  v29 = *(v22 + 16);
  v37[0] = 0;
  v30 = [v29 predictionFromFeatures:v23 options:v16 error:v37];
  a3 = v37[0];
  if (!v30)
  {
    goto LABEL_14;
  }

  v31 = v30;
  v32 = v37[0];

  v33 = sub_2702B3FFC();
  v34 = [v31 featureValueForName_];

  if (v34)
  {
    v35 = [v34 multiArrayValue];

    if (v35)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_270257B20(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + 40) || (v2 = *(v1 + 32)) == 0)
  {
    sub_2702599C4();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v4 = objc_opt_self();
  v21[0] = 0;
  v5 = a1;

  v6 = [v4 featureValueWithCGImage:v5 pixelsWide:224 pixelsHigh:224 pixelFormatType:32 options:0 error:v21];
  if (!v6)
  {
    v19 = v21[0];

    sub_2702B3C0C();
    swift_willThrow();

    return;
  }

  v7 = v6;
  v8 = v21[0];

  v9 = [v7 imageBufferValue];
  if (v9)
  {
    type metadata accessor for BiEncoderCNNInput();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;

    v11 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
    v12 = *(v2 + 16);
    v21[0] = 0;
    v13 = [v12 predictionFromFeatures:v10 options:v11 error:v21];
    if (!v13)
    {
      v20 = v21[0];
      sub_2702B3C0C();

      swift_willThrow();

      return;
    }

    v14 = v13;
    v15 = v21[0];

    v16 = sub_2702B3FFC();
    v17 = [v14 featureValueForName_];

    if (v17)
    {
      v18 = [v17 multiArrayValue];

      if (v18)
      {

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_270257DD4()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ScreenSimilarityModelType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScreenSimilarityModelType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_270257FB4()
{
  result = qword_2807C83A0;
  if (!qword_2807C83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C83A0);
  }

  return result;
}

id sub_270258008(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_270259880();
  v4 = sub_2702B41AC();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_2702B3C0C();

    swift_willThrow();
  }

  return v5;
}

void sub_2702580F4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v48 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C8);
  (MEMORY[0x28223BE20])();
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83B8);
  v15 = *(v14 - 8);
  v16 = (MEMORY[0x28223BE20])();
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v44 = &v43 - v20;
  MEMORY[0x28223BE20](v19);
  v45 = &v43 - v21;
  v50.origin.x = a1;
  v50.origin.y = a2;
  v50.size.width = a3;
  v50.size.height = a4;
  MinX = CGRectGetMinX(v50);
  v51.origin.x = a1;
  v51.origin.y = a2;
  v51.size.width = a3;
  v51.size.height = a4;
  MinY = CGRectGetMinY(v51);
  v52.origin.x = a1;
  v52.origin.y = a2;
  v52.size.width = a3;
  v52.size.height = a4;
  Width = CGRectGetWidth(v52);
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  Height = CGRectGetHeight(v53);
  v26 = (MinX + MinX + Width) * 0.5 * a5;
  if (v26 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = (MinY + MinY + Height) * 0.5 * v48;
  if (COERCE__INT64(fabs((MinX + MinX + Width) * 0.5 * a5)) > 0x7FEFFFFFFFFFFFFFLL || (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v43 = v11;
  v28 = v26;
  v29 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83D0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2702B6460;
  v46 = v15;
  *(v30 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83D8);
  *(v30 + 64) = sub_270259914(&qword_2807C83E0, &qword_2807C83D8);
  *(v30 + 32) = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83E8);
  *(v30 + 96) = v31;
  v32 = sub_270259914(&qword_2807C83F0, &qword_2807C83E8);
  *(v30 + 72) = v29;
  *(v30 + 80) = v29;
  *(v30 + 136) = v31;
  *(v30 + 144) = v32;
  *(v30 + 104) = v32;
  *(v30 + 112) = v28;
  *(v30 + 120) = v28;
  v33 = v44;
  v34 = sub_270259914(&qword_2807C83F8, &qword_2807C83B8);
  v35 = v45;
  v48 = *&v34;
  sub_2702B3E4C();

  v47 = *(v46 + 16);
  v47(v33, v35, v14);
  sub_270259914(&qword_2807C8400, &qword_2807C83B8);
  sub_2702B413C();
  v36 = *(v43 + 36);
  sub_270259914(&qword_2807C8408, &qword_2807C83B8);
  sub_2702B429C();
  if (*&v13[v36] != v49[0])
  {
    v37 = (v46 + 8);
    v38 = MEMORY[0x277D84F90];
    do
    {
      v39 = sub_2702B42BC();
      (v47)(v18);
      v39(v49, 0);
      sub_2702B42AC();
      sub_2702B3E3C();
      (*v37)(v18, v14);
      v40 = v49[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_270290CE8(0, *(v38 + 2) + 1, 1, v38);
      }

      v42 = *(v38 + 2);
      v41 = *(v38 + 3);
      if (v42 >= v41 >> 1)
      {
        v38 = sub_270290CE8((v41 > 1), v42 + 1, 1, v38);
      }

      *(v38 + 2) = v42 + 1;
      *&v38[4 * v42 + 32] = v40;
      sub_2702B429C();
    }

    while (*&v13[v36] != v49[0]);
  }

  sub_27025995C(v13);
  (*(v46 + 8))(v45, v14);
}

uint64_t sub_270258708(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v104 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83B8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v91 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v100 = v13;
  sub_2702B3DCC();
  v14 = sub_2702B3DAC();
  if (*(v14 + 16) < 3uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  MinX = *(v14 + 48);

  v15 = sub_2702B3DAC();
  if (*(v15 + 16) < 4uLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = *(v15 + 56);

  v103 = a4;
  v94 = v10;
  v93 = v11;
  if (a1 >> 62)
  {
LABEL_30:
    v96 = a1 & 0xFFFFFFFFFFFFFF8;
    v105 = sub_2702B45FC();
    goto LABEL_5;
  }

  v96 = a1 & 0xFFFFFFFFFFFFFF8;
  v105 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v16 = 0;
  v98 = *&MinX;
  v97 = v6;
  v99 = a1 & 0xC000000000000001;
  v92 = a1;
  v95 = a1 + 32;
  v6 = 0;
  v107 = xmmword_2702B6470;
  v102 = a3;
  do
  {
    if (v16 >= v105)
    {
      sub_270259880();
      v38 = 0;
      v39 = v16;
      v40 = v103;
      do
      {
        v41 = v38 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8);
        v42 = swift_allocObject();
        *(v42 + 16) = v107;
        *(v42 + 32) = sub_2702B427C();
        *(v42 + 40) = sub_2702B427C();
        *(v42 + 48) = sub_2702B427C();
        v43 = sub_2702B43AC();
        v44 = sub_2702B41AC();

        [v40 setObject:v43 forKeyedSubscript:v44];

        v38 = v41;
      }

      while (v41 != 14);
      v45 = swift_allocObject();
      *(v45 + 16) = v107;
      *(v45 + 32) = sub_2702B427C();
      v16 = v39;
      *(v45 + 40) = sub_2702B427C();
      *(v45 + 48) = sub_2702B427C();
      v46 = sub_2702B43AC();
      v47 = sub_2702B41AC();

      v48 = v104;
      [v104 setObject:v46 forKeyedSubscript:v47];

      v49 = swift_allocObject();
      *(v49 + 16) = v107;
      *(v49 + 32) = sub_2702B427C();
      *(v49 + 40) = sub_2702B427C();
      *(v49 + 48) = sub_2702B427C();
      v50 = sub_2702B43AC();
      v51 = sub_2702B41AC();

      [v48 setObject:v50 forKeyedSubscript:v51];

      v52 = swift_allocObject();
      *(v52 + 16) = v107;
      *(v52 + 32) = sub_2702B427C();
      *(v52 + 40) = sub_2702B427C();
      *(v52 + 48) = sub_2702B427C();
      v53 = sub_2702B43AC();
      v54 = sub_2702B41AC();

      [v48 setObject:v53 forKeyedSubscript:v54];

      v55 = swift_allocObject();
      *(v55 + 16) = v107;
      *(v55 + 32) = sub_2702B427C();
      *(v55 + 40) = sub_2702B427C();
      *(v55 + 48) = sub_2702B427C();
      v56 = sub_2702B43AC();
      v57 = sub_2702B41AC();

      [v48 setObject:v56 forKeyedSubscript:v57];

      v58 = 0;
      a3 = v102;
      do
      {
        v59 = v58 + 1;
        a1 = swift_allocObject();
        *(a1 + 16) = v107;
        *(a1 + 32) = sub_2702B427C();
        *(a1 + 40) = sub_2702B427C();
        *(a1 + 48) = sub_2702B427C();
        v60 = sub_2702B43AC();
        v61 = sub_2702B41AC();

        [a3 setObject:v60 forKeyedSubscript:v61];

        v58 = v59;
      }

      while (v59 != 128);
    }

    else
    {
      if (v99)
      {
        v17 = MEMORY[0x27439C0F0](v16, v92);
      }

      else
      {
        if (v16 >= *(v96 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v17 = *(v95 + 8 * v16);
      }

      v18 = v17;
      v19 = &v17[OBJC_IVAR___UIObjectCompat_normalizedSquaredRect];
      swift_beginAccess();
      v20 = *(v19 + 32);
      v101 = v18;
      v21 = a3;
      if (v20)
      {
        v22 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v23 = *&v18[v22];
        v24 = &v23[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
        swift_beginAccess();
        v26 = *v24;
        v25 = v24[1];
        v27 = &v23[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        x = v27->origin.x;
        y = v27->origin.y;
        width = v27->size.width;
        height = v27->size.height;
        v32 = v23;
        v108.origin.x = x;
        v108.origin.y = y;
        v108.size.width = width;
        v108.size.height = height;
        v33 = CGRectGetMinX(v108) / v26;
        v34 = CGRectGetMinY(*v27) / v25;
        v35 = CGRectGetWidth(*v27) / v26;
        v36 = CGRectGetHeight(*v27);

        v37 = v36 / v25;
      }

      else
      {
        v35 = v19[2];
        v37 = v19[3];
        v33 = *v19;
        v34 = v19[1];
      }

      sub_2702580F4(v33, v34, v35, v37, v97, v98);
      MaxX = v62;
      v63 = *(*&v62 + 16);
      if (v63)
      {
        v64 = v21;
        v65 = 0;
        do
        {
          v66 = v65 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8);
          v67 = swift_allocObject();
          *(v67 + 16) = v107;
          *(v67 + 32) = sub_2702B427C();
          *(v67 + 40) = sub_2702B427C();
          *(v67 + 48) = sub_2702B427C();
          v68 = sub_2702B423C();
          sub_270259880();
          v69 = sub_2702B41AC();

          [v64 setObject:v68 forKeyedSubscript:v69];

          v65 = v66;
        }

        while (v63 != v66);
      }

      v109.origin.x = v33;
      v109.origin.y = v34;
      v109.size.width = v35;
      v109.size.height = v37;
      MinX = CGRectGetMinX(v109);
      v110.origin.x = v33;
      v110.origin.y = v34;
      v110.size.width = v35;
      v110.size.height = v37;
      CGRectGetMinY(v110);
      v111.origin.x = v33;
      v111.origin.y = v34;
      v111.size.width = v35;
      v111.size.height = v37;
      MaxX = CGRectGetMaxX(v111);
      v112.origin.x = v33;
      v112.origin.y = v34;
      v112.size.width = v35;
      v112.size.height = v37;
      CGRectGetMaxY(v112);
      *&v70 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8));
      v71 = swift_allocObject();
      *(v71 + 16) = v107;
      *(v71 + 32) = sub_2702B427C();
      *(v71 + 40) = sub_2702B427C();
      *(v71 + 48) = sub_2702B427C();
      v72 = sub_2702B3D2C();
      sub_270259880();
      v73 = sub_2702B41AC();

      v74 = v104;
      [v104 setObject:v72 forKeyedSubscript:v73];

      v75 = swift_allocObject();
      *(v75 + 16) = v107;
      *(v75 + 32) = sub_2702B427C();
      *(v75 + 40) = sub_2702B427C();
      *(v75 + 48) = sub_2702B427C();
      v76 = sub_2702B3D2C();
      v77 = sub_2702B41AC();

      [v74 setObject:v76 forKeyedSubscript:v77];

      v78 = swift_allocObject();
      *(v78 + 16) = v107;
      *(v78 + 32) = sub_2702B427C();
      *(v78 + 40) = sub_2702B427C();
      *(v78 + 48) = sub_2702B427C();
      v79 = sub_2702B3D2C();
      v80 = sub_2702B41AC();

      [v74 setObject:v79 forKeyedSubscript:v80];

      MaxX = *&v70;
      v81 = swift_allocObject();
      *(v81 + 16) = v107;
      *(v81 + 32) = sub_2702B427C();
      *(v81 + 40) = sub_2702B427C();
      *(v81 + 48) = sub_2702B427C();
      v82 = sub_2702B3D2C();
      v83 = sub_2702B41AC();

      [v74 setObject:v82 forKeyedSubscript:v83];

      v84 = v101;
      swift_beginAccess();
      v85 = 0;
      v86 = v103;
      do
      {
        v87 = v85 + 1;
        a1 = swift_allocObject();
        *(a1 + 16) = v107;
        *(a1 + 32) = sub_2702B427C();
        *(a1 + 40) = sub_2702B427C();
        *(a1 + 48) = sub_2702B427C();
        v88 = sub_2702B43AC();
        v89 = sub_2702B41AC();

        [v86 &off_279DFF7F8];

        v85 = v87;
      }

      while (v87 != 14);

      a3 = v102;
    }

    ++v16;
  }

  while (v16 != 64);
  return (*(v93 + 8))(v100, v94);
}

void sub_270259334(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2702B6480;
  sub_270259880();
  *(v3 + 32) = sub_2702B43BC();
  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v5 = sub_270258008(v3, 65568);
  if (!v1)
  {
    v6 = __OFADD__(a1, 1);
    v7 = a1 + 1;
    if (v6)
    {
      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0)
    {
      if (!v7)
      {
        do
        {
LABEL_9:
          v13 = v7 + 1;
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_2702B6480;
          *(v14 + 32) = sub_2702B427C();
          *(v14 + 40) = sub_2702B427C();
          v15 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          LODWORD(v16) = -8388608;
          v17 = [v15 initWithFloat_];
          v18 = sub_2702B41AC();

          [v5 setObject:v17 forKeyedSubscript:v18];

          v7 = v13;
        }

        while (v13 != 65);
        return;
      }

      v8 = 0;
      do
      {
        v9 = v8 + 1;
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_2702B6480;
        *(v10 + 32) = sub_2702B427C();
        *(v10 + 40) = sub_2702B427C();
        v11 = sub_2702B43AC();
        v12 = sub_2702B41AC();

        [v5 setObject:v11 forKeyedSubscript:v12];

        v8 = v9;
      }

      while (v7 != v9);
      if (v7 <= 65)
      {
        if (v7 == 65)
        {
          return;
        }

        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }
}

void *sub_27025958C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2702B6470;
  sub_270259880();
  *(v6 + 32) = sub_2702B43BC();
  *(v6 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v6 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  objc_allocWithZone(MEMORY[0x277CBFF48]);
  v7 = sub_270258008(v6, 65568);
  if (!v2)
  {
    v3 = v7;
    v15 = a1;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2702B6470;
    *(v8 + 32) = sub_2702B43BC();
    *(v8 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(v8 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    objc_allocWithZone(MEMORY[0x277CBFF48]);
    v9 = sub_270258008(v8, 65568);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2702B6470;
    *(v10 + 32) = sub_2702B43BC();
    *(v10 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(v10 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v11 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v12 = sub_270258008(v10, 65568);
    sub_270258708(v15, a2, v3, v12, v9);
    if (v15 >> 62)
    {
      v13 = sub_2702B45FC();
    }

    else
    {
      v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_270259334(v13);
  }

  return v3;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_270259880()
{
  result = qword_2807C83B0;
  if (!qword_2807C83B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807C83B0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_270259914(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27025995C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2702599C4()
{
  result = qword_2807C8410;
  if (!qword_2807C8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSimilarityError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ScreenSimilarityError(_WORD *result, int a2, int a3)
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

unint64_t sub_270259B04()
{
  result = qword_2807C8418;
  if (!qword_2807C8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8418);
  }

  return result;
}

id ClickabilityDetection.__allocating_init(clickable:clickType:confidence:)(char a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = a1;
  *&v7[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = a2;
  *&v7[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ClickabilityDetection.init(clickable:clickType:confidence:)(char a1, uint64_t a2, double a3)
{
  v3[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = a1;
  *&v3[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = a2;
  *&v3[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for ClickabilityDetection();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_270259D30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8438);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27025A708();
  sub_2702B48DC();
  v8[15] = 0;
  sub_2702B46DC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2702B46EC();
  v8[13] = 2;
  sub_2702B470C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_270259EE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E656469666E6F63;
  v4 = 0xEA00000000006563;
  if (v2 != 1)
  {
    v3 = 0x7079546B63696C63;
    v4 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C62616B63696C63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x6E656469666E6F63;
  v8 = 0xEA00000000006563;
  if (*a2 != 1)
  {
    v7 = 0x7079546B63696C63;
    v8 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C62616B63696C63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2702B476C();
  }

  return v11 & 1;
}

uint64_t sub_270259FEC()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_27025A094()
{
  sub_2702B40BC();
}

uint64_t sub_27025A128()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_27025A1CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27025A910();
  *a1 = result;
  return result;
}

void sub_27025A1FC(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0xEA00000000006563;
  v5 = 0x6E656469666E6F63;
  if (v3 != 1)
  {
    v5 = 0x7079546B63696C63;
    v4 = 0xE900000000000065;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C62616B63696C63;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_27025A260()
{
  v1 = 0x6E656469666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x7079546B63696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616B63696C63;
  }
}

uint64_t sub_27025A2C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27025A910();
  *a1 = result;
  return result;
}

uint64_t sub_27025A300(uint64_t a1)
{
  v2 = sub_27025A708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27025A33C(uint64_t a1)
{
  v2 = sub_27025A708();

  return MEMORY[0x2821FE720](a1, v2);
}

id ClickabilityDetection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClickabilityDetection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClickabilityDetection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_27025A440@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_27025A490(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_27025A490(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8460);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v15 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27025A708();
  sub_2702B48CC();
  if (!v1)
  {
    LOBYTE(v18) = 0;
    v8 = sub_2702B468C();
    v17 = 2;
    sub_27025A9A8();
    sub_2702B46AC();
    v9 = v18;
    LOBYTE(v18) = 1;
    sub_2702B469C();
    v12 = v11;
    v13 = type metadata accessor for ClickabilityDetection();
    v14 = objc_allocWithZone(v13);
    v14[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = v8 & 1;
    *&v14[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = v9;
    *&v14[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = v12;
    v16.receiver = v14;
    v16.super_class = v13;
    v7 = objc_msgSendSuper2(&v16, sel_init);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_27025A708()
{
  result = qword_2807C8440;
  if (!qword_2807C8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8440);
  }

  return result;
}

unint64_t sub_27025A80C()
{
  result = qword_2807C8448;
  if (!qword_2807C8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8448);
  }

  return result;
}

unint64_t sub_27025A864()
{
  result = qword_2807C8450;
  if (!qword_2807C8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8450);
  }

  return result;
}

unint64_t sub_27025A8BC()
{
  result = qword_2807C8458;
  if (!qword_2807C8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8458);
  }

  return result;
}

uint64_t sub_27025A910()
{
  v0 = sub_2702B465C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_27025A9A8()
{
  result = qword_2807C8468;
  if (!qword_2807C8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8468);
  }

  return result;
}

uint64_t sub_27025B244(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2702B3D8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 32) = a1;
  v9 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v10 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v11 = objc_allocWithZone(type metadata accessor for UIUDetector());
  v12 = UIUDetector.init(platform:elementConfidenceThresholds:clickabilityConfidenceThresholds:elementConfig:clickabilityConfig:)(a1, 0, 0, v9, v10);
  if (v2)
  {
    type metadata accessor for TwinTransformerEmbeddingGenerator();
    swift_deallocPartialClassInstance();
    return v3;
  }

  *(v3 + 24) = v12;
  sub_2702B3D7C();
  (*(v6 + 32))(v3 + OBJC_IVAR____TtC15UIUnderstanding33TwinTransformerEmbeddingGenerator_log, v8, v5);
  v13 = *(v3 + 32);
  switch(v13)
  {
    case 0:
      if (qword_2807C8270 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v14 = qword_2807C8A70;
      v16 = sub_27028E1E8(1);
      v17 = 1051595899;
      goto LABEL_17;
    case 1:
      if (qword_2807C8270 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v14 = qword_2807C8A70;
      v15 = 1;
LABEL_16:
      v16 = sub_27028E7E8(v15);
      v17 = 1055957975;
LABEL_17:
      v19 = v17;

      *(v3 + 16) = v16;
      *(v3 + 40) = v19;
      return v3;
    case 2:
      if (qword_2807C8270 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v14 = qword_2807C8A70;
      v15 = 0;
      goto LABEL_16;
  }

  v20[1] = *(v3 + 32);
  result = sub_2702B47BC();
  __break(1u);
  return result;
}

uint64_t sub_27025B5F8(CGImage *a1, uint64_t a2)
{
  v4 = v3;
  v92 = a1;
  v6 = type metadata accessor for UIUDetectorResult();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10._rawValue = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (v80 - v12);
  MEMORY[0x28223BE20](v11);
  v89 = (v80 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8488);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v90 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v85 = (v80 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v80 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v80 - v23;
  sub_27025C40C(a2, v80 - v23);
  sub_27025C40C(v24, v22);
  v86 = v7;
  v26 = *(v7 + 48);
  v25 = (v7 + 48);
  v91 = v6;
  v88 = v26;
  LODWORD(a2) = v26(v22, 1, v6);
  sub_27025C47C(v22);
  v84 = v2;
  if (a2 == 1)
  {
    v87 = v24;
    v27 = *(v2 + 24);
    v28 = *&v27[OBJC_IVAR___UIUDetectorCompat_modelPlatform] - 1;
    v29 = v92;
    if (v28 > 1 || (Width = CGImageGetWidth(v92), Width == CGImageGetHeight(v29)) || (v31 = _s15UIUnderstanding11UIUDetectorC17createSquareImageySo10CGImageRefaSgAFFZ_0(v29)) == 0)
    {
      v31 = v29;
    }

    v32 = v89;
    v33 = v31;
    sub_2702AAC40(v31, v89, 0.2);
    if (v3)
    {

      return sub_27025C47C(v87);
    }

    v80[0] = v33;
    v80[1] = v25;
    v82 = 0;
    rawValue = v10._rawValue;
    v81 = v13;
    v10._rawValue = v32->_rawValue;
    if (v28 > 1)
    {
    }

    else
    {
      if (v10._rawValue >> 62)
      {
        v24 = sub_2702B45FC();
      }

      else
      {
        v24 = *((v10._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v24)
      {
        v35 = 0;
        v4 = v10._rawValue & 0xC000000000000001;
        v13 = (v10._rawValue & 0xFFFFFFFFFFFFFF8);
        v36 = v27;
        while (1)
        {
          if (v4)
          {
            v37 = MEMORY[0x27439C0F0](v35, v10._rawValue);
          }

          else
          {
            if (v35 >= *((v10._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v37 = *(v10._rawValue + v35 + 4);
          }

          v27 = v37;
          v38 = (v35 + 1);
          if (__OFADD__(v35, 1))
          {
            break;
          }

          v39 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v40 = *&v27[v39];
          v41 = sub_2702995E0(v92);
          v43 = v42;
          v45 = v44;
          v47 = v46;

          v48 = &v27[OBJC_IVAR___UIObjectCompat_normalizedSquaredRect];
          swift_beginAccess();
          *v48 = v41;
          *(v48 + 1) = v43;
          *(v48 + 2) = v45;
          *(v48 + 3) = v47;
          v48[32] = 0;

          ++v35;
          v27 = v36;
          if (v38 == v24)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

LABEL_21:
    UIUDetector.addIconRecognitionResults(to:in:)(v10, v92);
    sub_2702B0BA0(v10._rawValue);
    sub_270277584(v10._rawValue);
    sub_270278EB0(v10._rawValue);
    sub_270279714(v10._rawValue);
    sub_270279D7C();

    v24 = v87;
    sub_27025C47C(v87);
    v49 = v91;
    v50 = *(v91 + 20);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
    v52 = v85;
    v53 = v89;
    (*(*(v51 - 8) + 16))(v85 + v50, v89 + v50, v51);
    sub_27025C4E4(v53);
    *v52 = v10._rawValue;
    (*(v86 + 56))(v52, 0, 1, v49);
    sub_27025C540(v52, v24);
    v13 = v81;
    v4 = v82;
    v10._rawValue = rawValue;
  }

  v54 = v90;
  sub_27025C40C(v24, v90);
  if (v88(v54, 1, v91) == 1)
  {
    sub_27025C47C(v24);
    sub_27025C47C(v54);
    return 0;
  }

  sub_27025C5B0(v54, v13);
  v35 = *v13;
  v27 = (*v13 >> 62);
  if (v27)
  {
LABEL_61:
    if (sub_2702B45FC() < 1)
    {
      goto LABEL_62;
    }

    goto LABEL_26;
  }

  if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_62:
    sub_27025C47C(v24);
    sub_27025C4E4(v13);
    return 0;
  }

LABEL_26:
  v55 = *(v91 + 20);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  sub_27025C614();
  if (sub_2702B3E1C() < 1)
  {
    goto LABEL_62;
  }

  v87 = v24;
  if (v27)
  {
    if (v35 < 0)
    {
      v57 = v35;
    }

    else
    {
      v57 = v35 & 0xFFFFFFFFFFFFFF8;
    }

    v58 = sub_2702B45FC();
    sub_27025C678(v13, v10._rawValue);
    if (v58 >= 65)
    {
      result = sub_2702B45FC();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      v59 = sub_2702B45FC();
LABEL_36:
      if (v59 < 64)
      {
        __break(1u);
        goto LABEL_66;
      }

      if ((v35 & 0xC000000000000001) != 0)
      {
        type metadata accessor for UIObject();

        v60 = 0;
        do
        {
          v61 = v60 + 1;
          sub_2702B44DC();
          v60 = v61;
        }

        while (v61 != 64);
        rawValue = v10._rawValue;
        if (!v27)
        {
          goto LABEL_41;
        }
      }

      else
      {

        rawValue = v10._rawValue;
        if (!v27)
        {
LABEL_41:
          v57 = 0;
          v35 &= 0xFFFFFFFFFFFFFF8uLL;
          v62 = (v35 + 32);
          v10._rawValue = 129;
          goto LABEL_46;
        }
      }

      v35 = sub_2702B460C();
      v57 = v64;
      v10._rawValue = v65;
      if ((v65 & 1) == 0)
      {
LABEL_45:
        sub_27025C328(v35, v62, v57, v10._rawValue);
        v67 = v66;
        v10._rawValue = rawValue;
        v63 = v87;
        goto LABEL_52;
      }

LABEL_46:
      v92 = v62;
      v58 = v13;
      sub_2702B47AC();
      swift_unknownObjectRetain_n();
      v68 = swift_dynamicCastClass();
      if (!v68)
      {
        swift_unknownObjectRelease();
        v68 = MEMORY[0x277D84F90];
      }

      v69 = *(v68 + 16);

      if (!__OFSUB__(v10._rawValue >> 1, v57))
      {
        if (v69 == (v10._rawValue >> 1) - v57)
        {
          v67 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v13 = v58;
          v10._rawValue = rawValue;
          v63 = v87;
          if (v67)
          {
LABEL_53:
            sub_27025C4E4(v10._rawValue);
            (*(*(v56 - 8) + 16))(v10._rawValue + *(v91 + 20), v13 + v55, v56);
            *v10._rawValue = v67;
            goto LABEL_54;
          }

          v67 = MEMORY[0x277D84F90];
LABEL_52:
          swift_unknownObjectRelease();
          goto LABEL_53;
        }

        goto LABEL_67;
      }

LABEL_66:
      __break(1u);
LABEL_67:
      swift_unknownObjectRelease();
      v13 = v58;
      v62 = v92;
      goto LABEL_45;
    }
  }

  else
  {
    v57 = v35 & 0xFFFFFFFFFFFFFF8;
    v58 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_27025C678(v13, v10._rawValue);
    if (v58 > 0x40)
    {
      v59 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_36;
    }
  }

  v63 = v87;
LABEL_54:
  if (*(*(v84 + 16) + 40) - 1 > 1)
  {
    sub_2702599C4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v70 = sub_27025958C(*v10._rawValue, v10._rawValue + *(v91 + 20));
    if (!v4)
    {
      v74 = v70;
      v75 = v71;
      v76 = v72;
      v77 = v73;
      sub_2702577E4(v70, v71, v72, v73);
      v79 = v78;

      sub_27025C47C(v87);
      sub_27025C4E4(v10._rawValue);
      sub_27025C4E4(v13);
      return v79;
    }
  }

  sub_27025C47C(v63);
  sub_27025C4E4(v10._rawValue);
  return sub_27025C4E4(v13);
}

uint64_t sub_27025BED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2702B3C9C();
  v5 = CGDataProviderCreateWithCFData(v4);

  if (v5)
  {
    v6 = CGImageCreateWithPNGDataProvider(v5, 0, 0, kCGRenderingIntentDefault);
    if (v6)
    {
      v7 = v6;
      v8 = sub_27025B5F8(v6, a3);

      return v8;
    }

    v13 = sub_2702B3D6C();
    v14 = sub_2702B431C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_270253000, v13, v14, "-W- Couldn't create CGImage in Screen Similarity detector", v15, 2u);
      MEMORY[0x27439CE00](v15, -1, -1);
    }
  }

  else
  {
    v10 = sub_2702B3D6C();
    v11 = sub_2702B431C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_270253000, v10, v11, "-W- Couldn't convert image data to CGImage in Screen Similarity detector", v12, 2u);
      MEMORY[0x27439CE00](v12, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_27025C05C()
{

  v1 = OBJC_IVAR____TtC15UIUnderstanding33TwinTransformerEmbeddingGenerator_log;
  v2 = sub_2702B3D8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TwinTransformerEmbeddingGenerator()
{
  result = qword_2807C8470;
  if (!qword_2807C8470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27025C15C()
{
  result = sub_2702B3D8C();
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

uint64_t sub_27025C224@<X0>(CGImage *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  result = sub_27025B5F8(a1, a2);
  if (!v4)
  {
    if (result)
    {
      v8 = *(v6 + 40);
      *a3 = result;
      *(a3 + 8) = v8;
    }

    else
    {
      sub_27025C2D4();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_27025C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  result = sub_27025BED0(a1, a2, a3);
  if (!v5)
  {
    if (result)
    {
      v9 = *(v7 + 40);
    }

    else
    {
      v9 = 0;
    }

    *a4 = result;
    *(a4 + 8) = v9;
  }

  return result;
}

unint64_t sub_27025C2D4()
{
  result = qword_2807C8480;
  if (!qword_2807C8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8480);
  }

  return result;
}

void sub_27025C328(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for UIObject();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_27025C40C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27025C47C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27025C4E4(uint64_t a1)
{
  v2 = type metadata accessor for UIUDetectorResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27025C540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27025C5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIUDetectorResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27025C614()
{
  result = qword_2807C8490;
  if (!qword_2807C8490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C83C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8490);
  }

  return result;
}

uint64_t sub_27025C678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIUDetectorResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27025C6F4()
{
  result = qword_2807C8498;
  if (!qword_2807C8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8498);
  }

  return result;
}

void sub_27025C750(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

id sub_27025C7A8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_27025C7EC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t CenterNetPrediction.__allocating_init(heat:bbox:classIndex:detectionType:)(uint64_t a1, uint64_t a2, char *a3, float a4)
{
  result = swift_allocObject();
  v9 = *a3;
  *(result + 16) = a4;
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = v9;
  return result;
}

uint64_t CenterNetPrediction.init(heat:bbox:classIndex:detectionType:)(uint64_t a1, uint64_t a2, char *a3, float a4)
{
  v5 = *a3;
  *(v4 + 16) = a4;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = v5;
  return v4;
}

uint64_t static CenterNetPrediction.fromCenterNetPredictions<A>(pred:thresholds:imageSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float64x2_t a6, __n128 a7)
{
  v97 = a4;
  v110 = a7;
  v104 = a6;
  v103 = sub_2702B43FC();
  v11 = *(v103 - 8);
  v12 = MEMORY[0x28223BE20](v103);
  v107 = &v81 - v13;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v108 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84A0))
  {
    v96 = 0;
  }

  else
  {
    if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84A8))
    {
      v17 = 2;
    }

    else
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84B0))
      {
LABEL_67:
        v80 = 0;
        v79 = 42;
        result = sub_2702B45AC();
        __break(1u);
        return result;
      }

      v17 = 3;
    }

    v96 = v17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v19 = sub_2702B3DAC();
  if (!*(v19 + 16))
  {
    goto LABEL_61;
  }

  v20 = *(v19 + 32);

  v21 = v20 - 4;
  if (__OFSUB__(v20, 4))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v22 = sub_2702B3DAC();
  if (*(v22 + 16) < 2uLL)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v23 = *(v22 + 40);

  v24 = sub_2702B3DAC();
  if (*(v24 + 16) < 3uLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v25 = *(v24 + 48);

  v27 = MEMORY[0x277D84F90];
  v113 = MEMORY[0x277D84F90];
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v23)
  {
    if ((v25 & 0x8000000000000000) == 0)
    {
      v95 = v18;
      v28 = 0;
      v29 = v14;
      v30 = (v14 + 48);
      v102 = (v29 + 32);
      v93 = v21 + 1;
      v31 = __OFADD__(v21, 1);
      v94 = v31;
      v85 = v25;
      v32 = v23;
      v91 = v21 + 2;
      v33 = __OFADD__(v21, 2);
      v92 = v33;
      v84 = v21 + 3;
      v34 = __OFADD__(v21, 3);
      v90 = v34;
      v100 = (v29 + 8);
      v101 = (v11 + 8);
      v35.f64[0] = v104.f64[0];
      *&v35.f64[1] = v110.n128_u64[0];
      v104 = v35;
      *&v99.f64[0] = MEMORY[0x277D84F90];
      v105 = xmmword_2702B6460;
      __asm { FMOV            V0.2D, #1.0 }

      v83 = _Q0;
      v82 = v23;
      v89 = a5;
      v88 = a2;
      v87 = v21;
      v106 = v25;
      v109 = a1;
      v86 = v30;
      while (!v25)
      {
LABEL_25:
        if (++v28 == v82)
        {
          return *&v99.f64[0];
        }
      }

      if (v21 < 0)
      {
        goto LABEL_60;
      }

      v41 = 0;
      v42 = v28;
      v110.n128_u64[0] = v28;
      while (1)
      {
        MEMORY[0x28223BE20](v26);
        *(&v81 - 4) = a1;
        *(&v81 - 3) = v43;
        v79 = v41;
        v44 = sub_27025D380(sub_27025D608, (&v81 - 6), 0, v21);
        v27 = *(v44 + 16);
        if (v27 == 0.0)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v45 = 0;
        v46 = 0;
        v47 = v107;
        do
        {
          if (v45 >= *&v27)
          {
            __break(1u);
            goto LABEL_54;
          }

          if (*(v44 + 32 + 4 * v45) < *(v44 + 32 + 4 * v46))
          {
            v45 = v46;
          }

          ++v46;
        }

        while (*&v27 != v46);
        if (v45 >= *&v27)
        {
          goto LABEL_56;
        }

        v48 = *(v44 + 4 * v45 + 32);

        v112 = v45;
        sub_2702B416C();
        if ((*v30)(v47, 1, a3) == 1)
        {
          break;
        }

        v49 = v108;
        (*v102)(v108, v47, a3);
        if (*(a2 + 16) && (v50 = sub_27025E7F4(v49, a3, v97), v49 = v108, (v51 & 1) != 0))
        {
          if (*(*(a2 + 56) + 4 * v50) > v48)
          {
            goto LABEL_52;
          }
        }

        else if (v48 < 0.3)
        {
LABEL_52:
          v26 = (*v100)(v49, a3);
          goto LABEL_30;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84B8);
        v52 = swift_allocObject();
        *(v52 + 16) = v105;
        v53 = v110.n128_u64[0];
        *(v52 + 32) = v21;
        *(v52 + 40) = v53;
        *(v52 + 48) = v41;
        sub_27025C614();
        sub_2702B3E3C();

        v54 = *&v112;
        v55 = swift_allocObject();
        *(v55 + 16) = v105;
        if (v94)
        {
          goto LABEL_57;
        }

        *(v55 + 32) = v93;
        *(v55 + 40) = v53;
        *(v55 + 48) = v41;
        sub_2702B3E3C();

        v56 = *&v112;
        v57 = swift_allocObject();
        *(v57 + 16) = v105;
        if (v92)
        {
          goto LABEL_58;
        }

        *(v57 + 32) = v91;
        *(v57 + 40) = v53;
        *(v57 + 48) = v41;
        sub_2702B3E3C();

        v58 = *&v112;
        v59 = swift_allocObject();
        *(v59 + 16) = v105;
        if (v90)
        {
          goto LABEL_59;
        }

        v60 = (v41 + v56) / v85;
        v61 = v42 + v54;
        v62 = v58;
        *(v59 + 32) = v84;
        *(v59 + 40) = v53;
        *(v59 + 48) = v41;
        v63 = v61 / v32;
        sub_2702B3E3C();

        v64 = *&v112;
        v65 = v60 - *&v112 * 0.5;
        v66 = type metadata accessor for BoundingBox();
        v67 = objc_allocWithZone(v66);
        v68 = &v67[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        *v68 = v65;
        v68[1] = v63 - v62 * 0.5;
        v68[2] = v64;
        v68[3] = v62;
        *&v67[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize] = v83;
        v111.receiver = v67;
        v111.super_class = v66;
        v69 = objc_msgSendSuper2(&v111, sel_init);
        type metadata accessor for CenterNetPrediction();
        v70 = swift_allocObject();
        *(v70 + 16) = v48;
        *(v70 + 24) = v69;
        *(v70 + 32) = v45;
        *(v70 + 40) = v96;
        v71 = &v69[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v72 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
        v73 = v71[1];
        v99 = vmulq_f64(*v71, v104);
        v98 = vmulq_f64(v73, v104);
        swift_beginAccess();
        v74 = vmulq_f64(*&v69[v72], v104);
        v75 = v98;
        *v71 = v99;
        v71[1] = v75;
        *&v69[v72] = v74;
        v76 = v69;

        MEMORY[0x27439BDA0](v77);
        if (*((*&v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2702B41CC();
        }

        sub_2702B41EC();

        v26 = (*v100)(v108, a3);
        v99.f64[0] = v113;
        a2 = v88;
        a1 = v109;
        v21 = v87;
        v25 = v106;
        v30 = v86;
LABEL_31:
        ++v41;
        v28 = v110.n128_u64[0];
        if (v41 == v25)
        {
          goto LABEL_25;
        }
      }

      v26 = (*v101)(v47, v103);
LABEL_30:
      a1 = v109;
      v25 = v106;
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_54:
  v99.f64[0] = v27;
  return *&v99.f64[0];
}

uint64_t sub_27025D2BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84B8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2702B6460;
  *(v7 + 32) = v6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  sub_27025C614();
  sub_2702B3E3C();
}

uint64_t sub_27025D380(void (*a1)(int *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_27029C3E0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v19;
      v20 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_27029C3E0((v13 > 1), v14 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 4 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t Array<A>.argmax()(uint64_t a1)
{
  v5 = a1;
  v1 = sub_2702B41FC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x27439BD50](&v4, v1, WitnessTable);
  sub_2702B45EC();
  swift_getWitnessTable();
  sub_2702B415C();

  return v5;
}

id sub_27025D648()
{
  v1 = sub_27027B034(*(v0 + 32));
  if (v2)
  {
    v3 = -1;
  }

  else
  {
    v3 = v1;
  }

  v4 = *(v0 + 16);
  swift_beginAccess();
  v5 = *(v0 + 24);
  v6 = objc_allocWithZone(type metadata accessor for UIObject());
  v7 = type metadata accessor for UIDetection();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v8[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature] = 0;
  *&v8[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label] = v3;
  *&v8[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence] = v4;
  swift_beginAccess();
  *v9 = 0;
  *(v9 + 1) = 0;
  v24.receiver = v8;
  v24.super_class = v7;
  v10 = v5;
  v11 = objc_msgSendSuper2(&v24, sel_init);
  v12 = type metadata accessor for ClickabilityDetection();
  v13 = objc_allocWithZone(v12);
  v13[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = 0;
  *&v13[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = -1;
  *&v13[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = 0;
  v23.receiver = v13;
  v23.super_class = v12;
  v14 = objc_msgSendSuper2(&v23, sel_init);
  v15 = type metadata accessor for FocusDetection();
  v16 = objc_allocWithZone(v15);
  v16[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = 0;
  *&v16[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = 0;
  v22.receiver = v16;
  v22.super_class = v15;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  v18 = v14;
  v19 = sub_2702B41AC();
  v20 = [v6 initWithDetection:v11 clickable:v18 focused:v17 icon:0 boundingBox:v10 children:v19];

  return v20;
}

id sub_27025D864@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = sub_2702A8F14(*(v1 + 32));
  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = v5;
  }

  v8 = sub_270260708(&unk_2880365E0, &qword_2807C8568);
  if (*(v8 + 16) && (v9 = sub_27025E62C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + v9);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for ClickabilityDetection();
  v13 = objc_allocWithZone(v12);
  v13[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = v11;
  *&v13[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = v7;
  *&v13[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = v4;
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  swift_beginAccess();
  v15 = *(v2 + 24);
  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1;

  return v15;
}

uint64_t CenterNetPrediction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Float __swiftcall CGRect.iou(other:)(__C::CGRect other)
{
  v5 = v1;
  y = other.origin.y;
  x = other.origin.x;
  v25.origin.x = v1;
  v20 = v2;
  width = other.size.width;
  v25.origin.y = v2;
  v22 = v3;
  height = other.size.height;
  v25.size.width = v3;
  r1 = v4;
  v25.size.height = v4;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v26 = CGRectUnion(v25, v31);
  v8 = v26.origin.x;
  v9 = v26.origin.y;
  v10 = v26.size.width;
  v11 = v26.size.height;
  v12 = CGRectGetHeight(v26);
  v27.origin.x = v8;
  v27.origin.y = v9;
  v27.size.width = v10;
  v27.size.height = v11;
  v13 = v12 * CGRectGetWidth(v27);
  result = 0.0;
  if (v13 != 0.0)
  {
    v28.origin.x = v5;
    v28.origin.y = v20;
    v32.size.width = width;
    v28.size.width = v22;
    v32.size.height = height;
    v28.size.height = r1;
    v32.origin.x = x;
    v32.origin.y = y;
    v29 = CGRectIntersection(v28, v32);
    v15 = v29.origin.x;
    v16 = v29.origin.y;
    v17 = v29.size.width;
    v18 = v29.size.height;
    v19 = CGRectGetHeight(v29);
    v30.origin.x = v15;
    v30.origin.y = v16;
    v30.size.width = v17;
    v30.size.height = v18;
    return v19 * CGRectGetWidth(v30) / v13;
  }

  return result;
}

uint64_t sub_27025DB08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v25 = a4;
  v26 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v25 - v10;
  v12 = *(a3 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *a1;
  (*(v19 + 16))(v11, a2, TupleTypeMetadata2);
  v20 = *v11;
  (*(v12 + 32))(v17, &v11[*(TupleTypeMetadata2 + 48)], a3);
  sub_2702B420C();
  v21 = sub_2702B3FCC();
  v22 = *(v12 + 8);
  v22(v15, a3);
  result = (v22)(v17, a3);
  if (v21)
  {
    v24 = v20;
  }

  else
  {
    v24 = v18;
  }

  *v26 = v24;
  return result;
}

uint64_t BinaryFloatingPoint.clip(toRange:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2702B47DC();
  sub_2702B3FDC();
  sub_2702B47EC();
  return (*(v3 + 8))(v5, a2);
}

uint64_t BinaryFloatingPoint.lerp(from:toRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[0] = a2;
  v16[1] = a4;
  v5 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  sub_2702B45DC();
  sub_2702B3FDC();
  sub_2702B45DC();
  sub_2702B3F9C();
  v14 = *(v5 + 8);
  v14(v8, a3);
  v14(v11, a3);
  sub_2702B45DC();
  sub_2702B428C();
  v14(v8, a3);
  sub_2702B45CC();
  v14(v11, a3);
  return (v14)(v13, a3);
}

uint64_t BinaryFloatingPoint.clerp(from:toRange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BinaryFloatingPoint.lerp(from:toRange:)(v6, v9, v10, v8);
  BinaryFloatingPoint.clip(toRange:)(a2, a3);
  return (*(v5 + 8))(v8, a3);
}

uint64_t BinaryFloatingPoint.ema<A>(toRange:amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a2;
  v37 = a5;
  v38 = a6;
  v34 = a1;
  v35 = a7;
  v32 = *(*(*(a6 + 16) + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  v18 = *(a3 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v31 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v30 - v22;
  MEMORY[0x28223BE20](v21);
  v36 = &v30 - v24;
  swift_getAssociatedConformanceWitness();
  sub_2702B47CC();
  sub_2702B475C();
  v25 = v33;
  sub_2702B45DC();
  (*(v11 + 8))(v14, a4);
  sub_2702B3F6C();
  sub_2702B428C();
  v26 = *(v18 + 8);
  v26(v23, a3);
  (*(v11 + 16))(v17, v25, a4);
  v27 = v31;
  sub_2702B3F6C();
  sub_2702B428C();
  v26(v27, a3);
  v28 = v36;
  sub_2702B45CC();
  v26(v23, a3);
  return (v26)(v28, a3);
}

unint64_t sub_27025E504(unsigned __int8 a1)
{
  sub_2702B487C();
  MEMORY[0x27439C490](a1);
  v2 = sub_2702B48AC();
  return sub_27025E894(a1, v2);
}

unint64_t sub_27025E56C(uint64_t a1, uint64_t a2)
{
  sub_2702B487C();
  sub_2702B40BC();
  v4 = sub_2702B48AC();

  return sub_27025E904(a1, a2, v4);
}

unint64_t sub_27025E5E4(uint64_t a1)
{
  v2 = sub_2702B445C();

  return sub_27025E9BC(a1, v2);
}

unint64_t sub_27025E62C(uint64_t a1)
{
  sub_2702B487C();
  MEMORY[0x27439C490](a1);
  v2 = sub_2702B48AC();
  return sub_27025EA84(a1, v2);
}

unint64_t sub_27025E694(double a1)
{
  v2 = sub_2702B486C();

  return sub_27025EAF0(v2, a1);
}

unint64_t sub_27025E6E0(uint64_t a1)
{
  sub_2702B402C();
  sub_2702B487C();
  sub_2702B40BC();
  v2 = sub_2702B48AC();

  return sub_27025EB58(a1, v2);
}

unint64_t sub_27025E770(uint64_t a1)
{
  sub_2702B3CEC();
  sub_270260E3C(&qword_2807C84E0);
  v2 = sub_2702B3FAC();

  return sub_27025EC5C(a1, v2);
}

unint64_t sub_27025E7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2702B3FAC();

  return sub_27025EE08(a1, v6, a2, a3);
}

unint64_t sub_27025E894(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_27025E904(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2702B476C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_27025E9BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_270260EF8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x27439C070](v9, a1);
      sub_270260F54(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_27025EA84(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_27025EAF0(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_27025EB58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2702B402C();
      v8 = v7;
      if (v6 == sub_2702B402C() && v8 == v9)
      {
        break;
      }

      v11 = sub_2702B476C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_27025EC5C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2702B3CEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_270260E3C(&qword_2807C84E8);
      v15 = sub_2702B3FEC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_27025EE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_2702B3FEC();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_27025EF90(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2702A88A0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_27025F00C(v6);
  return sub_2702B455C();
}

uint64_t sub_27025F00C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2702B473C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for CenterNetPrediction();
        v6 = sub_2702B41DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_27025F178(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_27025F10C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27025F10C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(*v9 + 16) >= *(v7 + 16))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_27025F178(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_2702A6924(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_27025F6E8((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2702A6924(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_2702A6898(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 16);
      v13 = *(*(*a3 + 8 * v11) + 16);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 16);
        v17 = v15 >= v16;
        ++v14;
        v15 = v16;
        if ((((v13 < v12) ^ v17) & 1) == 0)
        {
          v9 = v14 - 1;
          if (v13 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v13 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_270290DEC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_270290DEC((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_27025F6E8((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2702A6924(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_2702A6898(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(*v29 + 16) >= *(v27 + 16))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_27025F6E8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v4 + 16) < *(*v6 + 16))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(*v17 + 16) < *(v21 + 16))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_27025F8EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8520);
  v3 = sub_2702B463C();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_27025E504(v4);
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
    *(v3[6] + v9) = v4;
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
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_27025E504(v4);
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

unint64_t sub_27025FA00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8528);
    v3 = sub_2702B463C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_27025E504(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_27025FB08(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_2702B463C();
    for (i = (a1 + 40); ; i += 4)
    {
      v6 = *(i - 1);
      v7 = *i;
      result = sub_27025E62C(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v6;
      *(v4[7] + 4 * result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {
        return v4;
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

unint64_t sub_27025FBE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84D0);
    v3 = sub_2702B463C();
    v4 = a1 + 32;

    while (1)
    {
      sub_270260E80(v4, &v11, &qword_2807C84D8);
      v5 = v11;
      result = sub_27025E6E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_270260EE8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_27025FD34()
{
  sub_2702B487C();
  MEMORY[0x27439C490](0);
  v0 = sub_2702B48AC();

  return sub_27025FD08(v0);
}

unint64_t sub_27025FD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8540);
    v3 = sub_2702B463C();
    for (i = (a1 + 32); ; ++i)
    {
      v5 = *i;
      result = sub_27025FD34();
      if (v7)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + 4 * result) = v5;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v10;
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

unint64_t sub_27025FE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8560);
    v3 = sub_2702B463C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27025E56C(v5, v6);
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

void *sub_27025FF6C(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84C0);
  v3 = sub_2702B463C();
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = sub_27025E694(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_27025E694(v4);
    v10 = v14;
    result = *&v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_27026007C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8558);
    v3 = sub_2702B463C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_27025E56C(v5, v6);
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

unint64_t sub_270260180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8550);
    v3 = sub_2702B463C();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_27025E62C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_270260260(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8548);
  v3 = sub_2702B463C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_27025E62C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_27025E62C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_270260368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8510);
    v3 = sub_2702B463C();
    v4 = a1 + 32;

    while (1)
    {
      sub_270260E80(v4, &v11, &qword_2807C8518);
      v5 = v11;
      result = sub_27025E6E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_270260EE8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_270260490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8500);
    v3 = sub_2702B463C();
    v4 = a1 + 32;

    while (1)
    {
      sub_270260E80(v4, v13, &qword_2807C8508);
      result = sub_27025E5E4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_270260EE8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_2702605CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84F0);
    v3 = sub_2702B463C();
    v4 = a1 + 32;

    while (1)
    {
      sub_270260E80(v4, &v11, &qword_2807C84F8);
      v5 = v11;
      result = sub_27025E6E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_270260EE8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_270260708(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_2702B463C();
    for (i = (a1 + 40); ; i += 16)
    {
      v6 = *(i - 1);
      v7 = *i;
      result = sub_27025E62C(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v6;
      *(v4[7] + result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {
        return v4;
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

uint64_t _s15UIUnderstanding19CenterNetPredictionC24nonMaximalSuppressionIOU5boxes9thresholdSayACGAG_SftFZ_0(unint64_t a1, float a2)
{
  v2 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
  }

LABEL_3:

  v46[0] = sub_2702A0344(v3);
  sub_27025EF90(v46);
  v48 = v46[0];
  if ((v46[0] & 0x8000000000000000) != 0 || (v46[0] & 0x4000000000000000) != 0)
  {
    if (sub_2702B45FC() < 1)
    {
      goto LABEL_40;
    }

    while (1)
    {
LABEL_6:
      v4 = sub_2702A33D4(0);

      MEMORY[0x27439BDA0](v5);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2702B41CC();
      }

      sub_2702B41EC();
      v6 = v48;
      v39 = v49;
      v47 = v2;
      v7 = v48 >> 62 ? sub_2702B45FC() : *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      swift_beginAccess();
      if (v7)
      {
        break;
      }

      v37 = v2;
LABEL_28:

      v48 = v37;
      if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
      {
        if (sub_2702B45FC() <= 0)
        {
LABEL_34:

          return v39;
        }
      }

      else if (*(v37 + 16) <= 0)
      {
        goto LABEL_34;
      }
    }

    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x27439C0F0](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          if (sub_2702B45FC() < 1)
          {
          }

          goto LABEL_3;
        }
      }

      swift_beginAccess();
      v11 = *(v9 + 24);
      v2 = *(v4 + 24);
      v12 = &v11[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      v17 = &v2[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v18 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v20 = v17[3];
      v22 = v11;
      v23 = v2;
      v44 = v14;
      v45 = v13;
      v50.origin.x = v13;
      v50.origin.y = v14;
      v42 = v16;
      v43 = v15;
      v50.size.width = v15;
      v50.size.height = v16;
      v56.origin.x = v18;
      v56.origin.y = v19;
      v56.size.width = v21;
      r2 = v20;
      v56.size.height = v20;
      v51 = CGRectUnion(v50, v56);
      x = v51.origin.x;
      y = v51.origin.y;
      width = v51.size.width;
      height = v51.size.height;
      v28 = CGRectGetHeight(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v29 = v28 * CGRectGetWidth(v52);
      if (v29 == 0.0)
      {

        if (a2 >= 0.0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v53.origin.y = v44;
        v53.origin.x = v45;
        v53.size.height = v42;
        v53.size.width = v43;
        v57.origin.x = v18;
        v57.origin.y = v19;
        v57.size.width = v21;
        v57.size.height = r2;
        v54 = CGRectIntersection(v53, v57);
        v30 = v54.origin.x;
        v31 = v54.origin.y;
        v32 = v54.size.width;
        v33 = v54.size.height;
        v34 = CGRectGetHeight(v54);
        v55.origin.x = v30;
        v55.origin.y = v31;
        v55.size.width = v32;
        v55.size.height = v33;
        v35 = CGRectGetWidth(v55);

        v36 = v34 * v35 / v29;
        if (v36 <= a2)
        {
          goto LABEL_12;
        }
      }

      if (*(v9 + 32) == *(v4 + 32))
      {

        goto LABEL_13;
      }

LABEL_12:
      sub_2702B454C();
      sub_2702B457C();
      sub_2702B458C();
      sub_2702B455C();
LABEL_13:
      ++v8;
      if (v10 == v7)
      {
        v37 = v47;
        v2 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }
  }

  if (*(v46[0] + 16) >= 1)
  {
    goto LABEL_6;
  }

LABEL_40:

  return MEMORY[0x277D84F90];
}

id sub_270260C3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_270260D94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_270260DDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270260E3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2702B3CEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_270260E80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_270260EE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_270261670()
{
  v1 = (v0 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_270261744(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2702617A4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

id UIDetection.__allocating_init(label:confidence:text:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature] = 0;
  *&v9[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label] = a1;
  *&v9[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence] = a4;
  swift_beginAccess();
  *v10 = a2;
  *(v10 + 1) = a3;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id UIDetection.init(label:confidence:text:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = &v4[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v4[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature] = 0;
  *&v4[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label] = a1;
  *&v4[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence] = a4;
  swift_beginAccess();
  *v7 = a2;
  *(v7 + 1) = a3;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for UIDetection();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_270261AC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8590);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270262548();
  sub_2702B48DC();
  v11 = *(v3 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label);
  v12 = 0;
  sub_27026259C();
  sub_2702B471C();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v11) = 1;
  sub_2702B46EC();
  v10 = v3 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
  swift_beginAccess();
  if (!*(v10 + 8))
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = 2;

  sub_2702B46CC();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_270261CF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E656469666E6F63;
  v4 = 0xEA00000000006563;
  if (v2 != 1)
  {
    v3 = 1954047348;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6E656469666E6F63;
  v8 = 0xEA00000000006563;
  if (*a2 != 1)
  {
    v7 = 1954047348;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2702B476C();
  }

  return v11 & 1;
}

uint64_t sub_270261DF0()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_270261E8C()
{
  sub_2702B40BC();
}

uint64_t sub_270261F14()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_270261FAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270262290();
  *a1 = result;
  return result;
}

void sub_270261FDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEA00000000006563;
  v5 = 0x6E656469666E6F63;
  if (v2 != 1)
  {
    v5 = 1954047348;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_270262034()
{
  v1 = 0x6E656469666E6F63;
  if (*v0 != 1)
  {
    v1 = 1954047348;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_270262088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270262290();
  *a1 = result;
  return result;
}

uint64_t sub_2702620B0(uint64_t a1)
{
  v2 = sub_270262548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2702620EC(uint64_t a1)
{
  v2 = sub_270262548();

  return MEMORY[0x2821FE720](a1, v2);
}

id UIDetection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIDetection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIDetection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_270262240@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2702622DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_270262290()
{
  v0 = sub_2702B465C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_2702622DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C85C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270262548();
  sub_2702B48CC();
  if (!v1)
  {
    v22 = 0;
    sub_2702628D0();
    sub_2702B46AC();
    v8 = v21;
    LOBYTE(v21) = 1;
    sub_2702B469C();
    v10 = v9;
    LOBYTE(v21) = 2;
    v12 = sub_2702B466C();
    v19 = v13;
    v18 = type metadata accessor for UIDetection();
    v14 = objc_allocWithZone(v18);
    v15 = &v14[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
    *v15 = 0;
    v15[1] = 0;
    *&v14[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature] = 0;
    *&v14[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label] = v8;
    *&v14[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence] = v10;
    swift_beginAccess();
    v16 = v18;
    v17 = v19;
    *v15 = v12;
    v15[1] = v17;
    v20.receiver = v14;
    v20.super_class = v16;
    v7 = objc_msgSendSuper2(&v20, sel_init);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_270262548()
{
  result = qword_2807C8598;
  if (!qword_2807C8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8598);
  }

  return result;
}

unint64_t sub_27026259C()
{
  result = qword_2807C85A0;
  if (!qword_2807C85A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C85A0);
  }

  return result;
}

uint64_t sub_2702625F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

unint64_t sub_2702627CC()
{
  result = qword_2807C85A8;
  if (!qword_2807C85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C85A8);
  }

  return result;
}

unint64_t sub_270262824()
{
  result = qword_2807C85B0;
  if (!qword_2807C85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C85B0);
  }

  return result;
}

unint64_t sub_27026287C()
{
  result = qword_2807C85B8;
  if (!qword_2807C85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C85B8);
  }

  return result;
}

unint64_t sub_2702628D0()
{
  result = qword_2807C85C8;
  if (!qword_2807C85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C85C8);
  }

  return result;
}

uint64_t sub_270262924()
{
  v0 = sub_2702B3D8C();
  __swift_allocate_value_buffer(v0, qword_2807CD3E8);
  __swift_project_value_buffer(v0, qword_2807CD3E8);
  return sub_2702B3D7C();
}

uint64_t sub_2702629AC()
{
  v0 = sub_2702B3CEC();
  __swift_allocate_value_buffer(v0, qword_2807CD400);
  __swift_project_value_buffer(v0, qword_2807CD400);
  return sub_2702B3CDC();
}

uint64_t sub_2702629F8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_2702B3D8C();
  v39 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2702B3C1C();
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C85D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v37 - v13);
  v38 = objc_opt_self();
  v15 = [v38 defaultManager];
  v16 = sub_2702B3FFC();
  v17 = [v15 containerURLForSecurityApplicationGroupIdentifier_];

  v18 = v4;
  if (v17)
  {
    sub_2702B3C5C();

    v19 = sub_2702B3C8C();
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  }

  else
  {
    v19 = sub_2702B3C8C();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  sub_270264118(v12, v14);
  sub_270264188(v14, v9);
  sub_2702B3C8C();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  v23 = v40;
  v22 = v41;
  if (v21 == 1)
  {
    sub_2702643E4(v9, &qword_2807C85D0);
    if (qword_2807C8210 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v1, qword_2807CD3E8);
    v25 = v39;
    v39[2](v3, v24, v1);
    v26 = sub_2702B3D6C();
    v27 = sub_2702B431C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_270253000, v26, v27, "couldnt get app container", v28, 2u);
      MEMORY[0x27439CE00](v28, -1, -1);
    }

    (v25[1])(v3, v1);
    v29 = [v38 defaultManager];
    v30 = [v29 temporaryDirectory];

    sub_2702B3C5C();
    v31 = v14;
  }

  else
  {
    v39 = v14;
    (*(v20 + 32))(v42, v9, v19);
    v43 = 0xD000000000000013;
    v44 = 0x80000002702BA3D0;
    v32 = *(v22 + 104);
    LODWORD(v38) = *MEMORY[0x277CC91D8];
    v32(v23);
    sub_270264230();
    sub_2702B3C7C();
    v33 = *(v22 + 8);
    v33(v23, v18);
    if (qword_2807C8218 != -1)
    {
      swift_once();
    }

    v34 = sub_2702B3CEC();
    __swift_project_value_buffer(v34, qword_2807CD400);
    v43 = sub_2702B3CAC();
    v44 = v35;
    (v32)(v23, v38, v18);
    sub_2702B3C7C();
    v33(v23, v18);

    v31 = v39;
  }

  return sub_2702643E4(v31, &qword_2807C85D0);
}

uint64_t sub_270263010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a2;
  v51 = a3;
  v55[3] = *MEMORY[0x277D85DE8];
  v47 = sub_2702B3D8C();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2702B3C1C();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2702B3C8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIDeduplicator();
  sub_2702629F8(v10);
  v54 = 0;
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  sub_2702B3C6C();
  v13 = sub_2702B3FFC();

  v14 = [v12 fileExistsAtPath:v13 isDirectory:&v54];

  if (!v14 || (v54 & 1) == 0)
  {
    v15 = [v11 defaultManager];
    v16 = sub_2702B3C3C();
    v55[0] = 0;
    v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v55];

    if (v17)
    {
      v18 = v55[0];
    }

    else
    {
      v44 = v7;
      v19 = v55[0];
      v20 = sub_2702B3C0C();

      swift_willThrow();
      if (qword_2807C8210 != -1)
      {
        swift_once();
      }

      v21 = v47;
      v22 = __swift_project_value_buffer(v47, qword_2807CD3E8);
      v24 = v45;
      v23 = v46;
      (*(v45 + 16))(v46, v22, v21);
      v25 = v20;
      v26 = sub_2702B3D6C();
      v27 = sub_2702B431C();

      v43 = v27;
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v55[0] = v42;
        *v28 = 136315394;
        swift_beginAccess();
        sub_27026439C(&qword_2807C85F8, MEMORY[0x277CC9260]);
        v40 = v26;
        v7 = v44;
        v29 = sub_2702B474C();
        v31 = v24;
        v32 = sub_27026FD60(v29, v30, v55);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2112;
        v33 = v20;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 14) = v34;
        v35 = v41;
        *v41 = v34;
        v36 = v40;
        _os_log_impl(&dword_270253000, v40, v43, "Failed to create directory %s with error: %@", v28, 0x16u);
        sub_2702643E4(v35, &qword_2807C8600);
        MEMORY[0x27439CE00](v35, -1, -1);
        v37 = v42;
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x27439CE00](v37, -1, -1);
        MEMORY[0x27439CE00](v28, -1, -1);

        (*(v31 + 8))(v46, v47);
      }

      else
      {

        (*(v24 + 8))(v23, v21);
        v7 = v44;
      }
    }
  }

  v52 = v48;
  v53 = v49;
  swift_beginAccess();
  v38 = v50;
  (*(v4 + 104))(v6, *MEMORY[0x277CC91D8], v50);
  sub_270264230();
  sub_2702B3C7C();
  swift_endAccess();
  (*(v4 + 8))(v6, v38);
  (*(v8 + 16))(v51, v10, v7);
  return (*(v8 + 8))(v10, v7);
}

uint64_t _s15UIUnderstanding14UIDeduplicatorC24debugSaveImageToLocation06targetE08filenameySo10CGImageRefa_SStFZ_0(CGImage *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2702B3D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2702B3C8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIDeduplicator();
  sub_270263010(a2, a3, v13);
  v14 = sub_2702B3C3C();
  sub_2702B3D4C();
  sub_2702B3D3C();
  (*(v7 + 8))(v9, v6);
  v15 = sub_2702B3FFC();

  v16 = CGImageDestinationCreateWithURL(v14, v15, 1uLL, 0);

  if (v16)
  {
    CGImageDestinationAddImage(v16, a1, 0);
    CGImageDestinationFinalize(v16);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t _s15UIUnderstanding14UIDeduplicatorC26debugSaveCGRectsToLocation11targetRects8filenameySaySo6CGRectVG_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = sub_2702B3D8C();
  v56 = *(v58 - 8);
  v6 = MEMORY[0x28223BE20](v58);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  v10 = sub_2702B407C();
  v53 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = sub_2702B3C8C();
  v57 = *(v59 - 8);
  v14 = MEMORY[0x28223BE20](v59);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  type metadata accessor for UIDeduplicator();
  sub_270263010(a2, a3, v19);
  sub_2702B3BEC();
  swift_allocObject();
  v20 = sub_2702B3BDC();
  v60[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C85E0);
  sub_2702642E8();
  v54 = v20;
  v21 = sub_2702B3BCC();
  v23 = v22;
  v24 = v21;
  sub_2702B406C();
  v52 = v24;
  v25 = sub_2702B403C();
  if (v26)
  {
    v60[0] = v25;
    v60[1] = v26;
    sub_2702B406C();
    sub_270264230();
    sub_2702B442C();
    v27 = v57;
    sub_270264444(v52, v23);

    (*(v53 + 1))(v13, v10);
    (*(v27 + 8))(v19, v59);
  }

  else
  {
    v55 = v23;
    v28 = v57;
    if (qword_2807C8210 != -1)
    {
      swift_once();
    }

    v29 = v58;
    v30 = __swift_project_value_buffer(v58, qword_2807CD3E8);
    v31 = v56;
    v32 = v9;
    (*(v56 + 16))(v9, v30, v29);
    v33 = v17;
    (*(v28 + 16))(v17, v19, v59);
    v34 = sub_2702B3D6C();
    v35 = sub_2702B431C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v51 = v32;
      v37 = v36;
      v38 = swift_slowAlloc();
      v60[0] = v38;
      *v37 = 136315138;
      sub_27026439C(&qword_2807C85F8, MEMORY[0x277CC9260]);
      v39 = v59;
      v40 = sub_2702B474C();
      v41 = v39;
      v53 = v19;
      v43 = v42;
      v44 = *(v28 + 8);
      v45 = v33;
      v46 = v41;
      v44(v45, v41);
      v47 = sub_27026FD60(v40, v43, v60);

      *(v37 + 4) = v47;
      _os_log_impl(&dword_270253000, v34, v35, "Failed to write CGRects %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x27439CE00](v38, -1, -1);
      MEMORY[0x27439CE00](v37, -1, -1);
      sub_270264444(v52, v55);

      (*(v31 + 8))(v51, v58);
      return (v44)(v53, v46);
    }

    else
    {
      sub_270264444(v52, v55);

      v49 = *(v28 + 8);
      v50 = v59;
      v49(v17, v59);
      (*(v31 + 8))(v32, v58);
      return (v49)(v19, v50);
    }
  }
}

uint64_t sub_270264118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C85D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270264188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C85D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_270264230()
{
  result = qword_2807C85D8;
  if (!qword_2807C85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C85D8);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_2702642E8()
{
  result = qword_2807C85E8;
  if (!qword_2807C85E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C85E0);
    sub_27026439C(&qword_2807C85F0, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C85E8);
  }

  return result;
}

uint64_t sub_27026439C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2702643E4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_270264444(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_270264498()
{
  v0 = sub_2702B3C9C();
  v1 = CGDataProviderCreateWithCFData(v0);

  if (v1)
  {
    v2 = CGImageCreateWithPNGDataProvider(v1, 0, 0, kCGRenderingIntentDefault);
    if (v2)
    {
      v3 = v2;
      sub_270257B20(v2);
      v5 = v4;

      return v5;
    }

    v10 = sub_2702B3D6C();
    v11 = sub_2702B431C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_270253000, v10, v11, "-W- Couldn't create CGImage in Screen Similarity detector", v12, 2u);
      MEMORY[0x27439CE00](v12, -1, -1);
    }
  }

  else
  {
    v7 = sub_2702B3D6C();
    v8 = sub_2702B431C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_270253000, v7, v8, "-W- Couldn't convert image data to CGImage in Screen Similarity detector", v9, 2u);
      MEMORY[0x27439CE00](v9, -1, -1);
    }
  }

  return 0;
}

void sub_270264620(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for UIUDetectorResult();
  if ((*(*(v7 - 8) + 48))(a2, 1, v7) != 1)
  {
    v8 = sub_2702B3D6C();
    v9 = sub_2702B431C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_270253000, v8, v9, "Ignoring non-nil uiuDetectorResult passed to BiCNNEmbedding generator.", v10, 2u);
      MEMORY[0x27439CE00](v10, -1, -1);
    }
  }

  sub_270257B20(a1);
  if (!v3)
  {
    *a3 = v11;
    *(a3 + 8) = 1049179980;
  }
}

uint64_t sub_270264748@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UIUDetectorResult();
  if ((*(*(v5 - 8) + 48))(a1, 1, v5) != 1)
  {
    v6 = sub_2702B3D6C();
    v7 = sub_2702B431C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_270253000, v6, v7, "Ignoring non-nil uiuDetectorResult passed to BiCNNEmbedding generator.", v8, 2u);
      MEMORY[0x27439CE00](v8, -1, -1);
    }
  }

  result = sub_270264498();
  if (!v2)
  {
    if (result)
    {
      v10 = 1049179980;
    }

    else
    {
      v10 = 0;
    }

    *a2 = result;
    *(a2 + 8) = v10;
  }

  return result;
}

uint64_t sub_270264880()
{

  v1 = OBJC_IVAR____TtC15UIUnderstanding23BiCNNEmbeddingGenerator_log;
  v2 = sub_2702B3D8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BiCNNEmbeddingGenerator()
{
  result = qword_2807C8608;
  if (!qword_2807C8608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270264978()
{
  result = sub_2702B3D8C();
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

uint64_t ScreenShot.imageID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ScreenShotCompat_imageID);

  return v1;
}

id ScreenShot.__allocating_init(id:image:detectorResult:groupingInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___ScreenShotCompat_imageID];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR___ScreenShotCompat_image] = a3;
  sub_27025C678(a4, &v11[OBJC_IVAR___ScreenShotCompat_detections]);
  *&v11[OBJC_IVAR___ScreenShotCompat_groupingInfo] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_27025C4E4(a4);
  return v13;
}

id ScreenShot.init(id:image:detectorResult:groupingInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = &v5[OBJC_IVAR___ScreenShotCompat_imageID];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v5[OBJC_IVAR___ScreenShotCompat_image] = a3;
  sub_27025C678(a4, &v5[OBJC_IVAR___ScreenShotCompat_detections]);
  *&v5[OBJC_IVAR___ScreenShotCompat_groupingInfo] = a5;
  v11.receiver = v5;
  v11.super_class = type metadata accessor for ScreenShot();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_27025C4E4(a4);
  return v9;
}

id ScreenShot.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenShot.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenShot();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ScreenGroup.screenGroupID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ScreenGroup.externalID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

id sub_270264E18(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  v9 = type metadata accessor for UIUDetectorResult();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v22 - v13);
  if (a4)
  {
    v23 = a1;
    v25 = v4;
    v15 = a2;
  }

  else
  {
    type metadata accessor for UIFingerprinter();
    swift_allocObject();
    UIFingerprinter.init(platform:)(1);
    if (v4)
    {

      return a3;
    }

    v23 = a1;
    v25 = 0;
    v15 = a2;
  }

  swift_retain_n();
  sub_270266A1C(a3, v14);
  v16 = sub_27027061C(*v14, a3);

  sub_27025C678(v14, v12);
  v17 = type metadata accessor for ScreenShot();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR___ScreenShotCompat_imageID];
  *v19 = v23;
  *(v19 + 1) = v15;
  *&v18[OBJC_IVAR___ScreenShotCompat_image] = a3;
  sub_27025C678(v12, &v18[OBJC_IVAR___ScreenShotCompat_detections]);
  *&v18[OBJC_IVAR___ScreenShotCompat_groupingInfo] = v16;
  v24.receiver = v18;
  v24.super_class = v17;
  v20 = a3;
  a3 = objc_msgSendSuper2(&v24, sel_init);

  sub_27025C4E4(v12);
  sub_27025C4E4(v14);
  return a3;
}

uint64_t type metadata accessor for ScreenShot()
{
  result = qword_2807C8630;
  if (!qword_2807C8630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270265074()
{
  result = type metadata accessor for UIUDetectorResult();
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27026516C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2702651B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

UIUnderstanding::ScreenEmbedding __swiftcall ScreenEmbedding.init(_:threshold:)(MLMultiArray _, Swift::Float threshold)
{
  *v2 = _;
  *(v2 + 8) = threshold;
  result.array = _;
  result.threshold = threshold;
  return result;
}

Swift::Bool __swiftcall ScreenEmbedding.compare(with:threshold:)(UIUnderstanding::ScreenEmbedding with, Swift::Float_optional *threshold)
{
  v3 = *with.array.super.isa;
  v4 = *(with.array.super.isa + 2);
  v5 = *(v2 + 2);
  if ((threshold & 0x100000000) != 0)
  {
    v6 = *(v2 + 2);
  }

  else
  {
    v6 = *&threshold;
  }

  v11 = *v2;
  v12 = v5;
  v9 = v3;
  v10 = v4;
  v7 = &v9;
  return ScreenEmbedding.euclideanDistance(with:)(*(&v4 - 2)) < v6;
}

uint64_t ScreenEmbedding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v26 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8640);
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270265E9C();
  v12 = v29;
  sub_2702B48CC();
  if (v12)
  {
    goto LABEL_5;
  }

  v24 = v6;
  v25 = v8;
  v29 = a1;
  v13 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8650);
  v31 = 1;
  sub_270265F44(&qword_2807C8658, &qword_2807C8650);
  sub_2702B46AC();
  v14 = v9;
  v15 = v28;
  if (v33)
  {
    sub_270265EF0();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    (*(v15 + 8))(v11, v9);
    a1 = v29;
LABEL_5:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v17 = v32;
  v30 = 0;
  sub_270265F44(&qword_2807C8668, &qword_2807C83C0);
  v18 = v25;
  sub_2702B46AC();
  sub_27026608C(0, &qword_2807C8670);
  v20 = v18;
  v21 = v26;
  (*(v26 + 16))(v24, v20, v3);
  sub_27025C614();
  v22 = sub_2702B42DC();
  (*(v21 + 8))(v25, v3);
  (*(v15 + 8))(v11, v14);
  *v13 = v22;
  *(v13 + 8) = v17;
  v23 = v29;
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t ScreenEmbedding.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8678);
  v14 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  v10 = *v1;
  sub_2702B3DDC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270265E9C();
  sub_2702B48DC();
  v16 = 0;
  sub_270265FA4();
  v11 = v13[1];
  sub_2702B471C();
  if (!v11)
  {
    v15 = 1;
    sub_2702B46FC();
  }

  (*(v14 + 8))(v5, v3);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_270265BEC()
{
  if (*v0)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x7479427961727261;
  }
}

uint64_t sub_270265C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7479427961727261 && a2 == 0xEA00000000007365;
  if (v6 || (sub_2702B476C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2702B476C();

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

uint64_t sub_270265D28(uint64_t a1)
{
  v2 = sub_270265E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270265D64(uint64_t a1)
{
  v2 = sub_270265E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Float __swiftcall ScreenEmbedding.euclideanDistance(with:)(UIUnderstanding::ScreenEmbedding with)
{
  v2 = *with.array.super.isa;
  v3 = *v1;
  v4 = [*with.array.super.isa count];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = v4;
    if (v4)
    {
      v7 = 0;
      v8 = 0.0;
      do
      {
        v9 = v7 + 1;
        v10 = [v2 objectAtIndexedSubscript_];
        [v10 floatValue];
        v12 = v11;

        v13 = [v3 objectAtIndexedSubscript_];
        [v13 floatValue];
        v15 = v14;

        v8 = v8 + ((v12 - v15) * (v12 - v15));
        v7 = v9;
      }

      while (v6 != v9);
    }

    else
    {
      v8 = 0.0;
    }

    return sqrtf(v8);
  }

  return result;
}

unint64_t sub_270265E9C()
{
  result = qword_2807C8648;
  if (!qword_2807C8648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8648);
  }

  return result;
}

unint64_t sub_270265EF0()
{
  result = qword_2807C8660;
  if (!qword_2807C8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8660);
  }

  return result;
}

uint64_t sub_270265F44(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_270265FA4()
{
  result = qword_2807C8680;
  if (!qword_2807C8680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C83C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8680);
  }

  return result;
}

uint64_t static ScreenEmbedding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_27026608C(0, &qword_2807C8688);
  return sub_2702B43CC() & (v2 == v3);
}

uint64_t sub_27026608C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t ScreenEmbedding.hashValue.getter()
{
  sub_2702B487C();
  sub_2702B43DC();
  sub_2702B489C();
  return sub_2702B48AC();
}

uint64_t sub_270266214()
{
  sub_2702B487C();
  sub_2702B43DC();
  sub_2702B489C();
  return sub_2702B48AC();
}

unint64_t sub_270266280()
{
  result = qword_2807C8690;
  if (!qword_2807C8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8690);
  }

  return result;
}

uint64_t sub_2702662D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_27026608C(0, &qword_2807C8688);
  return sub_2702B43CC() & (v2 == v3);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_270266354(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_27026639C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconDetection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IconDetection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_270266564()
{
  result = qword_2807C8698;
  if (!qword_2807C8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8698);
  }

  return result;
}

unint64_t sub_2702665BC()
{
  result = qword_2807C86A0;
  if (!qword_2807C86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C86A0);
  }

  return result;
}

unint64_t sub_270266614()
{
  result = qword_2807C86A8;
  if (!qword_2807C86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C86A8);
  }

  return result;
}

unint64_t sub_27026666C()
{
  result = qword_2807C86B0;
  if (!qword_2807C86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C86B0);
  }

  return result;
}

uint64_t UIFingerprinter.__allocating_init(shape:)(uint64_t a1)
{
  type metadata accessor for UIFingerprinter();
  v2 = swift_allocObject();
  UIFingerprinter.init(platform:)(a1 != 2);
  return v2;
}

uint64_t sub_270266740()
{
  v0 = sub_2702B3D8C();
  __swift_allocate_value_buffer(v0, qword_2807CD428);
  __swift_project_value_buffer(v0, qword_2807CD428);
  return sub_2702B3D7C();
}

uint64_t UIFingerprinter.__allocating_init(platform:)(uint64_t a1)
{
  v2 = swift_allocObject();
  UIFingerprinter.init(platform:)(a1);
  return v2;
}

uint64_t UIFingerprinter.init(platform:)(uint64_t a1)
{
  v3 = v1;
  *(v3 + 24) = a1;
  v5 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v7 = objc_allocWithZone(type metadata accessor for UIUDetector());
  v8 = UIUDetector.init(platform:elementConfidenceThresholds:clickabilityConfidenceThresholds:elementConfig:clickabilityConfig:)(a1, 0, 0, v5, v6);
  if (v2)
  {
    type metadata accessor for UIFingerprinter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v8;
    v9 = *(v3 + 24);
    type metadata accessor for TwinTransformerEmbeddingGenerator();
    swift_allocObject();
    *(v3 + 32) = sub_27025B244(v9);
    v11 = *(v3 + 16);
    v12 = 0.47;
    if (!*(v3 + 24))
    {
      v12 = 0.34;
    }

    *(v3 + 40) = v12;
    v13 = OBJC_IVAR___UIUDetectorCompat_iconDetector;
    if (!*&v11[OBJC_IVAR___UIUDetectorCompat_iconDetector])
    {
      v14 = qword_2807C8270;
      v15 = v11;
      if (v14 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v16 = qword_2807C8A70;
      v17 = sub_27028DEC8(0);

      *&v11[v13] = v17;
    }
  }

  return v3;
}

void sub_270266A1C(CGImage *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIUDetectorResult();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIUDetector.getUIDetectionsInScreen(_:addOCR:addIconRecognition:addClickability:addFocusElements:nmsThreshold:useAccurateOCR:)(a1, 1, 1, 0, 0, 1, v6, 0.2);
  v7 = *v6;
  v8 = *v6 >> 62;
  v18 = v6;
  v19 = a2;
  if (!v8)
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_27025C5B0(v18, v19);
    return;
  }

  v9 = sub_2702B45FC();
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x27439C0F0](i, v7);
      }

      else
      {
        v15 = *(v7 + 8 * i + 32);
      }

      v16 = v15;
      v17 = OBJC_IVAR___UIObjectCompat_iconDetection;
      swift_beginAccess();
      if (*&v16[v17])
      {
        v11 = IconLabel.toString()();
        v12 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v13 = *&v16[v12];

        v14 = &v13[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
        swift_beginAccess();
        *v14 = v11;
      }

      else
      {
      }
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_270266DB0(void *a1, char *a2, uint64_t a3)
{
  v5 = &a2[OBJC_IVAR___UIObjectCompat_groupingInfo];
  v6 = *&a2[OBJC_IVAR___UIObjectCompat_groupingInfo + 24];
  if (v6 >> 62)
  {
    v7 = sub_2702B45FC();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  v38 = v5;
  if (v7)
  {
    v42 = MEMORY[0x277D84F90];

    result = sub_2702B456C();
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v10 = 0;
    v39 = v6 & 0xC000000000000001;
    v40 = v6;
    v11 = v7;
    do
    {
      if (v39)
      {
        v12 = MEMORY[0x27439C0F0](v10, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v10 + 32);
      }

      v13 = v12;
      ++v10;
      v14 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v15 = *&v13[v14];
      v16 = type metadata accessor for UIFingerprintingDetectionInfo();
      v17 = objc_allocWithZone(v16);
      v18 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detectionsInScreen;
      *&v17[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detectionsInScreen] = v8;
      *&v17[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_parentDetection] = 0;
      v19 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children;
      *&v17[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children] = v8;
      *&v17[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection] = v13;
      *&v17[v18] = a3;
      *&v17[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_screenshot] = a1;
      swift_beginAccess();
      *&v17[v19] = v8;
      v43.receiver = v17;
      v43.super_class = v16;

      v20 = a1;
      v21 = v15;
      v22 = v13;
      objc_msgSendSuper2(&v43, sel_init);

      sub_2702B454C();
      sub_2702B457C();
      sub_2702B458C();
      sub_2702B455C();
      v6 = v40;
    }

    while (v11 != v10);

    v23 = v42;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v24 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v25 = *&a2[v24];
  v26 = type metadata accessor for UIFingerprintingDetectionInfo();
  v27 = objc_allocWithZone(v26);
  v28 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detectionsInScreen;
  *&v27[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detectionsInScreen] = v8;
  *&v27[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_parentDetection] = 0;
  v29 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children;
  *&v27[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children] = v8;
  *&v27[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection] = a2;
  *&v27[v28] = a3;
  *&v27[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_screenshot] = a1;
  swift_beginAccess();
  *&v27[v29] = v23;
  v41.receiver = v27;
  v41.super_class = v26;
  v30 = v25;
  v31 = a2;

  v32 = a1;
  v33 = objc_msgSendSuper2(&v41, sel_init);

  if (*v38)
  {
    v34 = *v38;
    v35 = sub_270266DB0(v32, v34, a3);

    v36 = *&v33[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_parentDetection];
    *&v33[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_parentDetection] = v35;
  }

  return v33;
}

BOOL sub_27026711C(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(*a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v6 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
  v9 = *(a3 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v10 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = &v7[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v7;
  v18 = v11;
  v42.origin.x = v13;
  v42.origin.y = v14;
  v42.size.width = v15;
  v42.size.height = v16;
  MidX = CGRectGetMidX(v42);
  v20 = &v18[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v21 = CGRectGetMidX(*v20);

  v22 = MidX - v21;
  v23 = fabsf(v22);
  v24 = *(v4 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v25 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = *(a3 + v8);
  v28 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v29 = *(v27 + v28);
  v30 = &v26[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  v35 = v26;
  v36 = v29;
  v43.origin.x = v31;
  v43.origin.y = v32;
  v43.size.width = v33;
  v43.size.height = v34;
  v37 = CGRectGetMidX(v43);
  v38 = &v36[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v39 = CGRectGetMidX(*v38);

  v40 = v37 - v39;
  return v23 < fabsf(v40);
}

uint64_t sub_270267350(uint64_t a1, uint64_t a2, CGImage *a3, unint64_t a4, CGImage *a5, unint64_t a6)
{
  v12 = type metadata accessor for UIUDetectorResult();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (&v50 - v14);
  if (a4)
  {
    v16 = a4;
    if (a6)
    {
LABEL_3:

      v17 = a6;
      goto LABEL_6;
    }
  }

  else
  {
    sub_270266A1C(a3, &v50 - v14);
    v16 = *v15;

    sub_27025C4E4(v15);
    if (a6)
    {
      goto LABEL_3;
    }
  }

  sub_270266A1C(a5, v15);
  v17 = *v15;

  sub_27025C4E4(v15);
LABEL_6:

  v18 = sub_27027061C(v16, a3);

  v19 = sub_27027061C(v17, a5);

  if (!(v18 >> 62))
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_25:
    sub_27026BFC8(v18);

    sub_27026BFC8(v19);

    return v21;
  }

  result = sub_2702B45FC();
  v21 = result;
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_8:
  if (v21 >= 1)
  {
    v51 = v19;
    v22 = a1;
    v23 = a2;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      v25 = 0;
      v26 = 1.79769313e308;
      do
      {
        v27 = MEMORY[0x27439C0F0](v25, v18);
        v28 = *(v27 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
        v29 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v30 = *(v28 + v29) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
        swift_beginAccess();
        v31 = *v30;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        v34 = *(v30 + 24);
        v54.origin.x = *v30;
        v54.origin.y = v32;
        v54.size.width = v33;
        v54.size.height = v34;
        v52.x = v22;
        v52.y = v23;
        if (CGRectContainsPoint(v54, v52) && (v55.origin.x = v31, v55.origin.y = v32, v55.size.width = v33, v55.size.height = v34, Width = CGRectGetWidth(v55), v56.origin.x = v31, v56.origin.y = v32, v56.size.width = v33, v56.size.height = v34, v36 = Width * CGRectGetHeight(v56), v36 < v26))
        {

          v26 = v36;
          v24 = v27;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v25;
      }

      while (v21 != v25);
    }

    else
    {
      v24 = 0;
      v37 = (v18 + 32);
      v38 = 1.79769313e308;
      do
      {
        v39 = *v37;
        v40 = *(*v37 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
        v41 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v42 = *(v40 + v41) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
        swift_beginAccess();
        v43 = *v42;
        v44 = *(v42 + 8);
        v45 = *(v42 + 16);
        v46 = *(v42 + 24);
        v47 = v39;
        v57.origin.x = v43;
        v57.origin.y = v44;
        v57.size.width = v45;
        v57.size.height = v46;
        v53.x = v22;
        v53.y = v23;
        if (CGRectContainsPoint(v57, v53) && (v58.origin.x = v43, v58.origin.y = v44, v58.size.width = v45, v58.size.height = v46, v48 = CGRectGetWidth(v58), v59.origin.x = v43, v59.origin.y = v44, v59.size.width = v45, v59.size.height = v46, v49 = v48 * CGRectGetHeight(v59), v49 < v38))
        {

          v38 = v49;
          v24 = v47;
        }

        else
        {
        }

        ++v37;
        --v21;
      }

      while (v21);
    }

    if (v24)
    {
      v19 = v51;
      v21 = sub_27026B760(v24, v51);
    }

    else
    {
      v21 = 0;
      v19 = v51;
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t UIFingerprinter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2702677D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2702A7CDC(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_2702B473C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 89;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 - 17);
          if (*(v12 - 49) >= v13)
          {
            break;
          }

          v14 = v12 - 25;
          v16 = *(v12 - 57);
          v15 = *(v12 - 41);
          *(v12 - 32) = *v12;
          v12 -= 32;
          v17 = v12[7];
          v18 = *(v12 + 23);
          v19 = v12[31];
          *v14 = v16;
          *(v14 + 1) = v15;
          *(v12 - 25) = v17;
          *(v12 - 17) = v13;
          *(v12 - 9) = v18;
          *(v12 - 1) = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_2702B41DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v21[0] = v7 + 32;
    v21[1] = v6;
    sub_270267934(v21, v22, v23, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_270267934(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v98 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_2702A6924(v9);
      v9 = result;
    }

    v90 = (v9 + 16);
    v91 = *(v9 + 16);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = (v9 + 16 * v91);
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_2702682CC((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v5);
        if (v6)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_117;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_118;
        }

        *v92 = v93;
        v92[1] = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_119;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v97 = a4;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *(*a3 + 32 * v8 + 8);
      v12 = 32 * v10;
      v13 = *a3 + 32 * v10;
      v14 = *(v13 + 8);
      v15 = v10 + 2;
      v16 = (v13 + 72);
      while (v7 != v15)
      {
        v17 = *(v16 - 4) >= *v16;
        ++v15;
        v16 += 4;
        if ((((v14 < v11) ^ v17) & 1) == 0)
        {
          v8 = v15 - 1;
          if (v14 >= v11)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (v14 >= v11)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_122;
      }

      if (v10 < v8)
      {
        v18 = 32 * v8 - 32;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v24 = (v23 + v12);
            v25 = (v23 + v18);
            v26 = *(v23 + v12);
            v27 = *(v23 + v12 + 8);
            v28 = *(v23 + v12 + 16);
            v29 = *(v23 + v12 + 24);
            v30 = *(v23 + v12 + 25);
            if (v12 != v18 || (result = (v25 + 2), v24 >= v25 + 2))
            {
              v21 = v25[1];
              *v24 = *v25;
              v24[1] = v21;
            }

            v22 = v23 + v18;
            *v22 = v26;
            *(v22 + 8) = v27;
            *(v22 + 16) = v28;
            *(v22 + 24) = v29;
            *(v22 + 25) = v30;
          }

          ++v20;
          v18 -= 32;
          v12 += 32;
        }

        while (v20 < v19);
        v7 = a3[1];
      }
    }

LABEL_23:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_121;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_123;
        }

        if (v10 + a4 < v7)
        {
          v7 = v10 + a4;
        }

        if (v7 < v10)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_270290DEC(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 16);
    v44 = *(v9 + 24);
    v45 = v5 + 1;
    if (v5 >= v44 >> 1)
    {
      result = sub_270290DEC((v44 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v45;
    v46 = v9 + 32;
    v47 = (v9 + 32 + 16 * v5);
    *v47 = v10;
    v47[1] = v8;
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v48 = *(v9 + 32);
          v49 = *(v9 + 40);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_60:
          if (v51)
          {
            goto LABEL_107;
          }

          v64 = (v9 + 16 * v45);
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_109;
          }

          v70 = (v46 + 16 * v5);
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_114;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v5 = v45 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v45 < 2)
        {
          goto LABEL_115;
        }

        v74 = (v9 + 16 * v45);
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_75:
        if (v69)
        {
          goto LABEL_111;
        }

        v77 = (v46 + 16 * v5);
        v79 = *v77;
        v78 = v77[1];
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v45)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v85 = (v46 + 16 * (v5 - 1));
        v86 = *v85;
        v87 = (v46 + 16 * v5);
        v88 = v87[1];
        sub_2702682CC((*a3 + 32 * *v85), (*a3 + 32 * *v87), (*a3 + 32 * v88), v99);
        if (v6)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_102;
        }

        if (v5 > *(v9 + 16))
        {
          goto LABEL_103;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *(v9 + 16);
        if (v5 >= v89)
        {
          goto LABEL_104;
        }

        v45 = v89 - 1;
        result = memmove((v46 + 16 * v5), v87 + 2, 16 * (v89 - 1 - v5));
        *(v9 + 16) = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v52 = v46 + 16 * v45;
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_105;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_106;
      }

      v59 = (v9 + 16 * v45);
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_108;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_110;
      }

      if (v63 >= v55)
      {
        v81 = (v46 + 16 * v5);
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_116;
        }

        if (v50 < v84)
        {
          v5 = v45 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v97;
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v8 + 25;
  v33 = v10 - v8;
LABEL_33:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 - 17);
    if (*(v35 - 49) >= v36)
    {
LABEL_32:
      ++v8;
      v32 += 32;
      --v33;
      if (v8 != v7)
      {
        goto LABEL_33;
      }

      v8 = v7;
      goto LABEL_40;
    }

    if (!v31)
    {
      break;
    }

    v37 = (v35 - 25);
    v39 = *(v35 - 57);
    v38 = *(v35 - 41);
    *(v35 - 32) = *v35;
    v35 -= 32;
    v40 = *(v35 + 7);
    v41 = *(v35 + 23);
    v42 = *(v35 + 31);
    *v37 = v39;
    v37[1] = v38;
    *(v35 - 25) = v40;
    *(v35 - 17) = v36;
    *(v35 - 9) = v41;
    *(v35 - 1) = v42;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_270267F0C(id *__src, id *a2, id *a3, uint64_t __dst, void *a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = (v7 - 1);
      v31 = &v16[v29];
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_27026711C(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = (v6 + 1);
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_27026711C(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if (!v25)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if (v18 - v20 >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_2702682CC(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 8);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 4 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v20 = v5 + 4;
      if (*(v6 - 3) < *(v15 - 3))
      {
        v23 = v6 - 4;
        if (v20 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v23;
          *(v5 + 1) = v24;
        }

        if (v15 <= v4 || (v6 -= 4, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v15 - 4;
      if (v20 != v15)
      {
        v22 = *(v15 - 1);
        *v5 = *v21;
        *(v5 + 1) = v22;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v25 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= (v4 + v25))
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

double sub_2702684C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v4 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v5 = *(v3 + v4) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
  swift_beginAccess();
  v6 = 0.0;
  if (*(v5 + 8))
  {
    v7 = *(a2 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
    v8 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    v9 = *(v7 + v8) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
    swift_beginAccess();
    if (*(v9 + 8))
    {
      sub_270264230();

      v10 = sub_2702B440C();
      v12 = v11;
      v13 = sub_2702B440C();
      sub_270287278(v10, v12, v13, v14);
      v6 = v15;
    }
  }

  return v6;
}

char *sub_270268700(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2702B45FC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C86B8);
    sub_270259914(&qword_2807C86C0, &qword_2807C86B8);
    v22 = sub_2702B3FBC();

    return v22;
  }

  v23 = MEMORY[0x277D84F90];
  result = sub_27029C440(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = MEMORY[0x27439C0F0](v4, a1);
        v6 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v7 = (*(v5 + v6) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
        swift_beginAccess();
        v8 = v7[1];
        if (v8)
        {
          v9 = *v7;
        }

        else
        {
          v9 = 0;
          v8 = 0xE000000000000000;
        }

        swift_unknownObjectRelease();
        v11 = *(v23 + 16);
        v10 = *(v23 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_27029C440((v10 > 1), v11 + 1, 1);
        }

        ++v4;
        *(v23 + 16) = v11 + 1;
        v12 = v23 + 16 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = v8;
      }

      while (v2 != v4);
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = *v13;
        v15 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v16 = (*(v14 + v15) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
        swift_beginAccess();
        if (v16[1])
        {
          v17 = *v16;
          v18 = v16[1];
        }

        else
        {
          v17 = 0;
          v18 = 0xE000000000000000;
        }

        v20 = *(v23 + 16);
        v19 = *(v23 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_27029C440((v19 > 1), v20 + 1, 1);
        }

        *(v23 + 16) = v20 + 1;
        v21 = v23 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        ++v13;
        --v2;
      }

      while (v2);
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

BOOL sub_2702689B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_27026E08C(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_27026E08C(a2);
  v75 = v12;
  v76 = v11;
  v14 = v13;
  v73 = v3 >> 62;
  if (v3 >> 62)
  {
    v15 = sub_2702B45FC();
  }

  else
  {
    v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 < 1)
  {
    goto LABEL_10;
  }

  if (v10 >> 62)
  {
    if (sub_2702B45FC() < 1)
    {
      goto LABEL_10;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_10;
  }

  sub_270268700(v3);
  sub_270268700(v10);
  sub_270264230();
  v16 = v14;
  v17 = sub_2702B440C();
  v19 = v18;
  v20 = sub_2702B440C();
  v21 = v17;
  v14 = v16;
  sub_270287278(v21, v19, v20, v22);
  v24 = v23;

  if (v24 > 0.8)
  {

    return 1;
  }

LABEL_10:
  v74 = v3;
  if (v5 && v76)
  {
    v26 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    v27 = *&v5[v26] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
    swift_beginAccess();
    v28 = *(v27 + 8);
    v29 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    v30 = *&v76[v29] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
    swift_beginAccess();
    if (v28 && *(v30 + 8) != 0)
    {
      sub_270264230();
      v72 = v5;
      v68 = v76;

      v32 = sub_2702B440C();
      v34 = v33;
      v35 = sub_2702B440C();
      sub_270287278(v32, v34, v35, v36);
      v38 = v37;

      if (v38 > 0.8)
      {

LABEL_34:
        return 1;
      }
    }
  }

  if (v9 && v14)
  {
    v39 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    v40 = *&v9[v39] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
    swift_beginAccess();
    v41 = *(v40 + 8);
    v42 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    v43 = *&v14[v42] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
    swift_beginAccess();
    if (v41 && *(v43 + 8) != 0)
    {
      sub_270264230();
      v71 = v9;
      v69 = v14;

      v45 = sub_2702B440C();
      v47 = v46;
      v48 = sub_2702B440C();
      sub_270287278(v45, v47, v48, v49);
      v51 = v50;

      if (v51 > 0.8)
      {

        return 1;
      }
    }
  }

  if (v7 && v75)
  {
    v52 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    v53 = *&v7[v52] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
    swift_beginAccess();
    v54 = *(v53 + 8);
    v55 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    v56 = *&v75[v55] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
    swift_beginAccess();
    if (v54 && *(v56 + 8) != 0)
    {
      sub_270264230();
      v70 = v7;
      v67 = v75;

      v58 = sub_2702B440C();
      v60 = v59;
      v61 = sub_2702B440C();
      sub_270287278(v58, v60, v61, v62);
      v64 = v63;

      if (v64 > 0.8)
      {

        goto LABEL_34;
      }
    }
  }

  if (v73)
  {
    v65 = v10;
    if (sub_2702B45FC())
    {
      goto LABEL_38;
    }
  }

  else
  {
    v65 = v10;
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_38:

      return 0;
    }
  }

  if (v65 >> 62)
  {
    v66 = sub_2702B45FC();
  }

  else
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return !v66;
}

void sub_2702693E0(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v7 = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v160 = a5;
    v10 = MEMORY[0x277D84F90];
LABEL_90:
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    v189 = v7;
    v176 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_92;
  }

  v187 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
  v181 = a5;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v186 = v7;
  while (1)
  {
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v173 = v10;
      v11 = *a3;
      v12 = *(*a3 + 8 * (v9 + 1));
      v190 = *(*a3 + 8 * v9);
      v13 = v190;
      v191 = v12;
      v14 = v12;
      v15 = v13;
      LODWORD(v189) = sub_27026711C(&v191, &v190, v181);
      if (v6)
      {

        return;
      }

      v176 = 0;

      v16 = v9 + 2;
      v171 = v9;
      __dst = (8 * v9);
      v17 = (v11 + 8 * v9 + 16);
      v183 = v8;
      while (v8 != v16)
      {
        v19 = *(v17 - 1);
        v18 = *v17;
        v20 = *(*v17 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
        v21 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v22 = *(v20 + v21);
        v23 = *(v7 + v187);
        v24 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v25 = v7;
        v26 = *(v23 + v24);
        v27 = &v22[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[2];
        v31 = v27[3];
        v32 = v18;
        v33 = v19;
        v34 = v22;
        v35 = v26;
        v7 = v25;
        v36 = v35;
        v193.origin.x = v28;
        v193.origin.y = v29;
        v193.size.width = v30;
        v193.size.height = v31;
        MidX = CGRectGetMidX(v193);
        v38 = &v36[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v39 = CGRectGetMidX(*v38);

        v40 = MidX - v39;
        v41 = fabsf(v40);
        v42 = *&v33[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
        v43 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v44 = *(v42 + v43);
        v45 = *&v25[v187];
        v46 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v47 = *(v45 + v46);
        v48 = &v44[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v49 = *v48;
        v50 = v48[1];
        v51 = v48[2];
        v52 = v48[3];
        v53 = v44;
        v54 = v47;
        v194.origin.x = v49;
        v194.origin.y = v50;
        v194.size.width = v51;
        v194.size.height = v52;
        v55 = CGRectGetMidX(v194);
        v56 = &v54[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v195 = *v56;
        v8 = v183;
        v57 = CGRectGetMidX(v195);

        v58 = v55 - v57;
        ++v16;
        ++v17;
        if (((v189 ^ (v41 >= fabsf(v58))) & 1) == 0)
        {
          v8 = v16 - 1;
          break;
        }
      }

      v9 = v171;
      v10 = v173;
      v59 = __dst;
      if (v189)
      {
        if (v8 < v171)
        {
          goto LABEL_123;
        }

        v6 = 0;
        if (v171 < v8)
        {
          v60 = 8 * v8 - 8;
          v61 = v8;
          v62 = v171;
          do
          {
            if (v62 != --v61)
            {
              v63 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v64 = *&v59[v63];
              *&v59[v63] = *(v63 + v60);
              *(v63 + v60) = v64;
            }

            ++v62;
            v60 -= 8;
            v59 += 8;
          }

          while (v62 < v61);
        }
      }

      else
      {
        v6 = 0;
      }
    }

    v65 = a3[1];
    if (v8 < v65)
    {
      if (__OFSUB__(v8, v9))
      {
        goto LABEL_120;
      }

      if (v8 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_121;
        }

        if (v9 + a4 >= v65)
        {
          v66 = a3[1];
        }

        else
        {
          v66 = v9 + a4;
        }

        if (v66 < v9)
        {
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          v10 = sub_2702A6924(v10);
LABEL_92:
          v192 = v10;
          v161 = *(v10 + 2);
          if (v161 >= 2)
          {
            do
            {
              v162 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v163 = *&v10[16 * v161];
              v164 = v10;
              v165 = *&v10[16 * v161 + 16];
              v166 = *&v10[16 * v161 + 24];
              v10 = (v162 + 8 * v163);
              v7 = v162 + 8 * v165;
              v167 = (v162 + 8 * v166);
              v168 = v189;
              sub_270267F0C(v10, v7, v167, __dst, v168);
              if (v176)
              {

                return;
              }

              if (v166 < v163)
              {
                goto LABEL_117;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v164 = sub_2702A6924(v164);
              }

              if (v161 - 2 >= *(v164 + 2))
              {
                goto LABEL_118;
              }

              v169 = &v164[16 * v161];
              *v169 = v163;
              *(v169 + 1) = v166;
              v192 = v164;
              sub_2702A6898(v161 - 1);
              v10 = v192;
              v161 = *(v192 + 2);
            }

            while (v161 > 1);
          }

          return;
        }

        if (v8 != v66)
        {
          break;
        }
      }
    }

    v67 = v8;
    if (v8 < v9)
    {
      goto LABEL_119;
    }

LABEL_30:
    v177 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_270290DEC(0, *(v10 + 2) + 1, 1, v10);
    }

    v69 = *(v10 + 2);
    v68 = *(v10 + 3);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v10 = sub_270290DEC((v68 > 1), v69 + 1, 1, v10);
    }

    *(v10 + 2) = v70;
    v71 = &v10[16 * v69];
    *(v71 + 4) = v9;
    *(v71 + 5) = v177;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v69)
    {
      while (1)
      {
        v72 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v73 = *(v10 + 4);
          v74 = *(v10 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_49:
          if (v76)
          {
            goto LABEL_108;
          }

          v89 = &v10[16 * v70];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_111;
          }

          v95 = &v10[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_115;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v70 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v99 = &v10[16 * v70];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_63:
        if (v94)
        {
          goto LABEL_110;
        }

        v102 = &v10[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_113;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_70:
        v110 = v72 - 1;
        if (v72 - 1 >= v70)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        v111 = *a3;
        if (!*a3)
        {
          goto LABEL_126;
        }

        v112 = v10;
        v113 = *&v10[16 * v110 + 32];
        v189 = v72;
        v114 = *&v10[16 * v72 + 32];
        v7 = *&v10[16 * v72 + 40];
        v10 = (v111 + 8 * v113);
        v115 = (v111 + 8 * v114);
        v116 = (v111 + 8 * v7);
        v117 = v181;
        sub_270267F0C(v10, v115, v116, __dst, v117);
        if (v6)
        {

          return;
        }

        if (v7 < v113)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_2702A6924(v112);
        }

        if (v110 >= *(v112 + 2))
        {
          goto LABEL_105;
        }

        v118 = &v112[16 * v110];
        *(v118 + 4) = v113;
        *(v118 + 5) = v7;
        v192 = v112;
        sub_2702A6898(v189);
        v10 = v192;
        v70 = *(v192 + 2);
        v7 = v186;
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v10[16 * v70 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_106;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_107;
      }

      v84 = &v10[16 * v70];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_109;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_112;
      }

      if (v88 >= v80)
      {
        v106 = &v10[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_116;
        }

        if (v75 < v109)
        {
          v72 = v70 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v177;
    if (v177 >= v8)
    {
      goto LABEL_90;
    }
  }

  v172 = v9;
  v174 = v10;
  v176 = v6;
  v178 = v66;
  v185 = *a3;
  v119 = *a3 + 8 * v8 - 8;
  v120 = (v9 - v8);
LABEL_81:
  v184 = v8;
  v121 = *(v185 + 8 * v8);
  v179 = v120;
  v180 = v119;
  while (1)
  {
    __dst = v120;
    v122 = *v119;
    v123 = *&v121[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
    v124 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v125 = *(v123 + v124);
    v7 = v186;
    v126 = *&v186[v187];
    v127 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v128 = *(v126 + v127);
    v129 = &v125[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v130 = *v129;
    v131 = v129[1];
    v132 = v129[2];
    v133 = v129[3];
    v189 = v121;
    v134 = v122;
    v135 = v125;
    v136 = v128;
    v196.origin.x = v130;
    v196.origin.y = v131;
    v196.size.width = v132;
    v196.size.height = v133;
    v137 = CGRectGetMidX(v196);
    v138 = &v136[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v139 = CGRectGetMidX(*v138);

    v140 = v137 - v139;
    v141 = fabsf(v140);
    v142 = *&v134[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
    v143 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v144 = *(v142 + v143);
    v145 = *&v186[v187];
    v146 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v147 = *(v145 + v146);
    v148 = &v144[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v149 = *v148;
    v150 = v148[1];
    v151 = v148[2];
    v152 = v148[3];
    v153 = v144;
    v154 = v147;
    v197.origin.x = v149;
    v197.origin.y = v150;
    v197.size.width = v151;
    v197.size.height = v152;
    v155 = CGRectGetMidX(v197);
    v156 = &v154[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v157 = CGRectGetMidX(*v156);

    v158 = v155 - v157;
    if (v141 >= fabsf(v158))
    {
LABEL_80:
      v8 = v184 + 1;
      v119 = v180 + 8;
      v120 = v179 - 1;
      v67 = v178;
      if (v184 + 1 != v178)
      {
        goto LABEL_81;
      }

      v6 = v176;
      v9 = v172;
      v10 = v174;
      v7 = v186;
      if (v178 < v172)
      {
        goto LABEL_119;
      }

      goto LABEL_30;
    }

    if (!v185)
    {
      break;
    }

    v159 = *v119;
    v121 = *(v119 + 8);
    *v119 = v121;
    *(v119 + 8) = v159;
    v119 -= 8;
    v120 = __dst + 1;
    if (__dst == -1)
    {
      goto LABEL_80;
    }
  }

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
}