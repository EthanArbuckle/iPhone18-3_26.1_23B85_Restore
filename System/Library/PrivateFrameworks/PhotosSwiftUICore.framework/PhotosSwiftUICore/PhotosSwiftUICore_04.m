uint64_t sub_1C0FFB840@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1C0FFB7BC();
  if (result)
  {
    v4 = result;
    v5 = v3;
    OUTLINED_FUNCTION_2_10();
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C0FFC950;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1C0FFB8AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    OUTLINED_FUNCTION_2_10();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C0FFC94C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1);
  return sub_1C0FFB934(v4, v3);
}

uint64_t sub_1C0FFB934(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1C0FFC804();
  return sub_1C1263800();
}

uint64_t sub_1C0FFB9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C1264680();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[2] = a1;
  v23[3] = a2;
  sub_1C0FDB9AC();

  v10 = sub_1C12648F0();
  v12 = v11;
  v14 = v13;
  sub_1C1264510();
  (*(v7 + 104))(v9, *MEMORY[0x1E6980EA8], v6);
  sub_1C12646C0();

  (*(v7 + 8))(v9, v6);
  v15 = sub_1C1264870();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1C0FDB8E8(v10, v12, v14 & 1);

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  return result;
}

uint64_t PhotosNotificationCellTextViewConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x4000000000000000;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 3;
  *(a1 + 32) = 0;
  if (qword_1EBE8FC18 != -1)
  {
    swift_once();
  }

  *(a1 + 40) = qword_1EBE90BC0;
}

uint64_t PhotosNotificationCellTextViewConfiguration.titleMaxLineLimit.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t PhotosNotificationCellTextViewConfiguration.descriptionMaxLineLimit.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t PhotosNotificationCellTextViewConfiguration.descriptionTextColor.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t View.photosNotificationCellSubtitleAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1C68EE920](v4, a3, &type metadata for PhotosNotificationCellSubtitleActionModifier);
}

uint64_t sub_1C0FFBD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AA0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v13 = sub_1C0FFC3FC;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AA8);
  (*(*(v14 - 8) + 16))(v10, a1, v14);
  v15 = &v10[*(v8 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v15[2] = v12;
  sub_1C0FFC488(v10, a4, &qword_1EBE90AA0);
  return sub_1C0FCF1B4(a2);
}

uint64_t sub_1C0FFBEDC(uint64_t a1)
{
  v2 = sub_1C1263450();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1C1263600();
}

void sub_1C0FFBFE8()
{
  sub_1C1261AD0();
  if (v0 <= 0x3F)
  {
    sub_1C0FFC0A4();
    if (v1 <= 0x3F)
    {
      sub_1C0FFC0F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C0FFC0A4()
{
  if (!qword_1EDE76AF0)
  {
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76AF0);
    }
  }
}

void sub_1C0FFC0F4()
{
  if (!qword_1EBE90A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90A70);
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE90A68);
    }
  }
}

uint64_t sub_1C0FFC158(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FFC198(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1C0FFC1F4()
{
  result = qword_1EBE90A78;
  if (!qword_1EBE90A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90A48);
    sub_1C0FDB6D4(&qword_1EBE90A80, &qword_1EBE90A88);
    sub_1C0FDB6D4(&qword_1EBE90A90, &qword_1EBE90A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90A78);
  }

  return result;
}

unint64_t sub_1C0FFC2D8()
{
  result = qword_1EBE90A98;
  if (!qword_1EBE90A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90A98);
  }

  return result;
}

uint64_t sub_1C0FFC32C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FFC380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C0FFC424(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_16(a1, a2, a3);
  OUTLINED_FUNCTION_0_10();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return v3;
}

uint64_t sub_1C0FFC474(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1C0FCF004(result);
  }

  else
  {
  }
}

uint64_t sub_1C0FFC488(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_16(a1, a2, a3);
  OUTLINED_FUNCTION_0_10();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return v3;
}

unint64_t sub_1C0FFC4D0()
{
  result = qword_1EBE90B18;
  if (!qword_1EBE90B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90AF0);
    sub_1C0FFC588();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B18);
  }

  return result;
}

unint64_t sub_1C0FFC588()
{
  result = qword_1EBE90B20;
  if (!qword_1EBE90B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90AE8);
    sub_1C0FFC640();
    sub_1C0FDB6D4(&qword_1EDE7B918, &qword_1EBE90B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B20);
  }

  return result;
}

unint64_t sub_1C0FFC640()
{
  result = qword_1EBE90B28;
  if (!qword_1EBE90B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93110);
    sub_1C0FFC6F8();
    sub_1C0FDB6D4(&unk_1EDE7B920, &qword_1EBE93130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B28);
  }

  return result;
}

unint64_t sub_1C0FFC6F8()
{
  result = qword_1EDE7BE80;
  if (!qword_1EDE7BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DB0);
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE80);
  }

  return result;
}

uint64_t sub_1C0FFC7B0(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_4_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C0FFC804()
{
  result = qword_1EBE90B30;
  if (!qword_1EBE90B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B30);
  }

  return result;
}

unint64_t sub_1C0FFC868()
{
  result = qword_1EBE90B38;
  if (!qword_1EBE90B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90AA0);
    sub_1C0FDB6D4(&qword_1EBE90B40, &qword_1EBE90AA8);
    sub_1C0FDB6D4(&qword_1EBE90B48, &qword_1EBE90B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B38);
  }

  return result;
}

uint64_t sub_1C0FFC954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v30 = a5;
  v8 = sub_1C1263420();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B60);
  MEMORY[0x1EEE9AC00](v28);
  v15 = &v28 - v14;
  sub_1C12633F0();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3 & 1;
  *(v16 + 32) = a4;
  v17 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B68) + 36)];
  (*(v10 + 16))(v17, v13, v8);
  v18 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier();
  v19 = v18[6];
  v36[0] = swift_getKeyPath();
  sub_1C0FFCFE4(v36);
  memcpy(&v17[v19], v36, 0xD1uLL);
  v20 = &v17[v18[7]];
  v31 = 0;
  v32 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B58);
  sub_1C1265410();
  (*(v10 + 8))(v13, v8);
  v21 = v34;
  v22 = v35;
  *v20 = v33;
  v20[8] = v21;
  *(v20 + 2) = v22;
  v23 = &v17[v18[5]];
  *v23 = sub_1C0FFCFC8;
  v23[1] = v16;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B70);
  (*(*(v24 - 8) + 16))(v15, v29, v24);
  KeyPath = swift_getKeyPath();
  v26 = &v15[*(v28 + 36)];
  *v26 = KeyPath;
  v26[8] = 1;
  sub_1C0FFCFEC();
  sub_1C1265080();
  return sub_1C0FFD1B4(v15);
}

uint64_t sub_1C0FFCC2C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[21];
  if (v3 <= 4.0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = v3 + -4.0;
  }

  if (v3 <= 4.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 4.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B78);
  result = sub_1C1265420();
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

uint64_t View.photosFocusableItem()(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v17[3] = 0;
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B58);
  sub_1C1265410();
  MEMORY[0x1C68EE920](&v19, a1, &type metadata for PhotosFocusableItem, a2);

  v13 = sub_1C0FFCEA0();
  v17[1] = a2;
  v17[2] = v13;
  OUTLINED_FUNCTION_4_0();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v10, v4, WitnessTable);
  v15 = *(v6 + 8);
  v15(v10, v4);
  sub_1C0FDBA4C(v12, v4, WitnessTable);
  return (v15)(v12, v4);
}

unint64_t sub_1C0FFCEA0()
{
  result = qword_1EDE825E8[0];
  if (!qword_1EDE825E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE825E8);
  }

  return result;
}

uint64_t sub_1C0FFCEF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FFCF48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1C0FFCFEC()
{
  result = qword_1EDE77258;
  if (!qword_1EDE77258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B60);
    sub_1C0FFD0A4();
    sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77258);
  }

  return result;
}

unint64_t sub_1C0FFD0A4()
{
  result = qword_1EDE77430;
  if (!qword_1EDE77430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B68);
    sub_1C0FDB6D4(&qword_1EDE7BB38, &qword_1EBE90B70);
    sub_1C0FFD15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77430);
  }

  return result;
}

unint64_t sub_1C0FFD15C()
{
  result = qword_1EDE78EC8;
  if (!qword_1EDE78EC8)
  {
    type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78EC8);
  }

  return result;
}

uint64_t sub_1C0FFD1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosMockAssetView.init(hue:saturation:brightness:aspectRatio:label:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, uint64_t a8@<D2>)
{
  if (a2)
  {
    sub_1C0FFD350(0.0, 1.0);
    v15 = v14;
  }

  else
  {
    v15 = a1;
  }

  sub_1C0FE0644();
  result = PXSyntheticAsset.init(aspectRatio:label:tint:)(a8, 0, a3, a4, [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:v15 saturation:a6 brightness:a7 alpha:1.0]);
  *a5 = result;
  *(a5 + 8) = *&a8;
  return result;
}

uint64_t PhotosMockAssetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = v4;
  sub_1C11FFCDC(v4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0);
  v7 = a1 + *(result + 36);
  *v7 = v3;
  *(v7 + 8) = 256;
  return result;
}

void sub_1C0FFD350(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1C0FFD470(0x20000000000001uLL);
  }
}

uint64_t sub_1C0FFD3E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FFD424(uint64_t result, int a2, int a3)
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

unint64_t sub_1C0FFD470(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C68F1650](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C68F1650](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0FFD4FC(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  *a2.i64 = a1;
  a3.i64[0] = 0x3F947AE147AE147BLL;
  OUTLINED_FUNCTION_0_11(a2, a3);
  return sub_1C1265110();
}

uint64_t sub_1C0FFD538@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  *a3.i64 = a1;
  a4.i64[0] = 0x3F947AE147AE147BLL;
  OUTLINED_FUNCTION_0_11(a3, a4);
  result = sub_1C1265110();
  *a2 = result;
  return result;
}

void ColorScheme.px_resolvedThumbnailPlaceholderColor.getter()
{
  if (qword_1EDE82ED0 != -1)
  {
    swift_once();
  }

  if (!*(off_1EDE82ED8 + 2))
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1C0FFE0D8(v0);
  if ((v1 & 1) == 0)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t ColorScheme.px_thumbnailPlaceholderColor.getter()
{
  v1 = v0;
  v2 = sub_1C12650F0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v1, v8, v12);
  if ((*(v10 + 88))(v14, v8) != *MEMORY[0x1E697DBA8])
  {
    (*(v10 + 8))(v14, v8);
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E69814D8], v2);
  return sub_1C1265240();
}

uint64_t sub_1C0FFD910()
{
  v64 = sub_1C12637E0();
  v0 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C12650F0();
  v2 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C12629F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v71 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v72 = v51 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v51 - v10;
  v12 = sub_1C12629E0();
  v13 = v12;
  v62 = *(v12 + 16);
  if (v62)
  {
    v14 = 0;
    v61 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v70 = v5 + 16;
    v60 = v5 + 88;
    v59 = *MEMORY[0x1E697DBA8];
    v69 = (v5 + 8);
    v57 = *MEMORY[0x1E69814D8];
    v58 = (v2 + 104);
    v56 = v0 + 16;
    v55 = v0 + 8;
    v15 = MEMORY[0x1E69E7CC8];
    v51[2] = 0x406E400000000000;
    v51[1] = 0x406E200000000000;
    v54 = v4;
    v53 = v12;
    v52 = v5;
    while (v14 < *(v13 + 16))
    {
      v67 = *(v5 + 72);
      v16 = *(v5 + 16);
      v16(v11, v61 + v67 * v14, v4);
      v16(v72, v11, v4);
      v17 = v71;
      v68 = v16;
      v16(v71, v11, v4);
      v18 = (*(v5 + 88))(v17, v4);
      if (v18 != v59)
      {
        (*v69)(v71, v4, 79.0, 73.0, 73.0);
      }

      (*v58)(v65, v57, v66);
      sub_1C1265240();
      if (qword_1EDE7C9D0 != -1)
      {
        swift_once();
      }

      v19 = off_1EDE7C9D8;
      if (!*(off_1EDE7C9D8 + 2))
      {
        goto LABEL_23;
      }

      v20 = sub_1C0FFE0D8(v11);
      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }

      v22 = v11;
      v23 = v19[7] + *(v0 + 72) * v20;
      v25 = v63;
      v24 = v64;
      (*(v0 + 16))(v63, v23, v64);
      sub_1C1265200();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = v0;
      (*(v0 + 8))(v25, v24);
      swift_isUniquelyReferenced_nonNull_native();
      v73 = v15;
      v35 = sub_1C0FFE0D8(v72);
      if (__OFADD__(*(v15 + 16), (v36 & 1) == 0))
      {
        goto LABEL_25;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B80);
      if (sub_1C1266B30())
      {
        v39 = sub_1C0FFE0D8(v72);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_27;
        }

        v37 = v39;
      }

      v15 = v73;
      if (v38)
      {
        v41 = (*(v73 + 56) + 16 * v37);
        *v41 = v27;
        v41[1] = v29;
        v41[2] = v31;
        v41[3] = v33;
        v42 = *v69;
        v4 = v54;
        (*v69)(v72, v54);
        v11 = v22;
        v42(v22, v4);
      }

      else
      {
        *(v73 + 8 * (v37 >> 6) + 64) |= 1 << v37;
        v43 = v72;
        v44 = v54;
        v68(*(v15 + 48) + v37 * v67, v72, v54);
        v45 = (*(v15 + 56) + 16 * v37);
        v4 = v44;
        *v45 = v27;
        v45[1] = v29;
        v45[2] = v31;
        v45[3] = v33;
        v46 = *v69;
        (*v69)(v43, v4);
        v11 = v22;
        (v46)(v22, v4);
        v47 = *(v15 + 16);
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_26;
        }

        *(v15 + 16) = v49;
      }

      ++v14;
      v0 = v34;
      v5 = v52;
      v13 = v53;
      if (v62 == v14)
      {

        goto LABEL_21;
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
    result = sub_1C1266DA0();
    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC8];
LABEL_21:
    off_1EDE82ED8 = v15;
  }

  return result;
}

unint64_t sub_1C0FFE000(unsigned __int8 a1)
{
  v2 = a1;
  sub_1C1266E90();
  sub_1C1266EB0();
  if (v2 != 4)
  {
    MEMORY[0x1C68F07E0](a1);
  }

  v3 = sub_1C1266EE0();

  return sub_1C0FFE310(a1, v3);
}

unint64_t sub_1C0FFE094(uint64_t a1)
{
  v2 = sub_1C12668B0();

  return sub_1C0FFE394(a1, v2);
}

unint64_t sub_1C0FFE0D8(uint64_t a1)
{
  sub_1C12629F0();
  sub_1C0FFEB08(&qword_1EDE7C040);
  v2 = sub_1C1265D20();

  return sub_1C0FFE458(a1, v2);
}

uint64_t sub_1C0FFE15C(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_12();
  sub_1C1265EF0();
  sub_1C0FD0300();
  v2 = sub_1C1266EE0();

  return sub_1C0FFE600(a1, v2);
}

unint64_t sub_1C0FFE1CC(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_0_12();
  MEMORY[0x1C68F07E0](a1);
  v2 = sub_1C1266EE0();

  return sub_1C0FFE8D4(a1, v2);
}

uint64_t sub_1C0FFE288(void (*a1)(_BYTE *, double, double), uint64_t (*a2)(uint64_t, __n128, __n128), double a3, double a4)
{
  OUTLINED_FUNCTION_0_12();
  a1(v12, a3, a4);
  v7 = sub_1C1266EE0();
  v8.n128_f64[0] = a3;
  v9.n128_f64[0] = a4;

  return a2(v7, v8, v9);
}

unint64_t sub_1C0FFE310(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 4)
      {
        if (a1 == 4)
        {
          return result;
        }
      }

      else if (v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C0FFE394(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C0FF4B88(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1C68F0200](v8, a1);
    sub_1C0FD1A08(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C0FFE458(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1C12629F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1C0FFEB08(&qword_1EDE7C038);
    v9 = sub_1C1265DE0();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C0FFE600(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = v2;
  v8 = ~v4;
  v9 = *a1;
  v10 = a1[1];
  v16 = v10;
  v17 = *a1;
  while (1)
  {
    sub_1C0FF8B74(*(v6 + 48) + 48 * v5, v25);
    v11 = v25[0] == v9 && v25[1] == v10;
    if (!v11 && (sub_1C1266D50() & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_1C0FA139C(v26, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90068);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_1C0F9DDE4(v23, v22);
    sub_1C0FA139C((a1 + 2), v20);
    if (swift_dynamicCast())
    {
      sub_1C0F9DDE4(v18, v21);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      v9 = v17;
      v10 = v16;
      sub_1C0FD0164();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      if (v13)
      {
        sub_1C0FD0978(v25);
        return v5;
      }
    }

    else
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      sub_1C0FFEAA0(v18);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

LABEL_13:
    sub_1C0FD0978(v25);
    v5 = (v5 + 1) & v8;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_1C1266940();

  v22[0] = 0xD00000000000001CLL;
  v22[1] = 0x80000001C1269300;
  sub_1C0FA139C(v26, v23);
  v15 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v15);

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

unint64_t sub_1C0FFE8D4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1C0FFE934(uint64_t a1)
{
  v2 = ~(-1 << *(v1 + 32));
    ;
  }

  return i;
}

unint64_t sub_1C0FFE9D8(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1C0FFEA50(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C68F0810](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1C68F0810](*&v3);
}

uint64_t sub_1C0FFEAA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0FFEB08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C12629F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PhotosClipStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t ScrollViewGeometryChangeHandler.init(evaluationBlock:changeBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1C0FFEBF0()
{
  type metadata accessor for PhotosScrollViewModel();
  swift_getWitnessTable();

  return sub_1C1265770();
}

uint64_t sub_1C0FFEC90()
{
  type metadata accessor for PhotosScrollViewModel();
  sub_1C1265790();
  sub_1C1265750();
  return v1;
}

__n128 PhotosItemsRow.init(data:numberOfPrefixedItems:id:cols:rows:contentMarginEdges:clipStyle:itemAlignment:scrollViewModel:scrollViewAccessibilityIdentifier:draggingDelegate:geometryChangeHandler:useSpecialLayout129639946:itemTransition:shouldUseCustomLazyLayout:zIndexProvider:itemView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 *a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v48 = *a4;
  v29 = *(a4 + 2);
  v30 = *a7;
  v31 = *(*a11 + 88);
  v32 = *(*a3 + *MEMORY[0x1E69E77B0]);
  __src[0] = a23;
  *&__src[1] = v32;
  __src[3] = a24;
  __src[4] = a25;
  __src[5] = v31;
  __src[6] = a26;
  v33 = type metadata accessor for PhotosItemsRow();
  v34 = a9 + v33[32];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  v35 = a9 + v33[33];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v36 = a9 + v33[34];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  v37 = v33[35];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + v37), __src, 0xD1uLL);
  v38 = a9 + v33[36];
  *v38 = swift_getKeyPath();
  *(v38 + 8) = 0;
  v39 = *(a23 - 8);
  (*(v39 + 16))(a9, a1, a23);
  *(a9 + v33[19]) = a2;
  *(a9 + v33[20]) = a3;
  v40 = a9 + v33[21];
  *v40 = v48;
  *(v40 + 16) = v29;
  *(a9 + v33[22]) = a5;
  *(a9 + v33[23]) = a6;
  *(a9 + v33[37]) = v30;
  v41 = (a9 + v33[38]);
  *v41 = a8;
  v41[1] = a10;
  sub_1C0FFEBF0();
  (*(v39 + 8))(a1, a23);
  v42 = (a9 + v33[25]);
  *v42 = a12;
  v42[1] = a13;
  sub_1C0F9DDE4(a14, a9 + v33[26]);
  v43 = (a9 + v33[27]);
  result = *a15;
  v45 = *(a15 + 16);
  *v43 = *a15;
  v43[1] = v45;
  *(a9 + v33[28]) = a16;
  *(a9 + v33[29]) = a17;
  *(a9 + v33[39]) = a18;
  v46 = (a9 + v33[30]);
  *v46 = a19;
  v46[1] = a20;
  v47 = (a9 + v33[31]);
  *v47 = a21;
  v47[1] = a22;
  return result;
}

double sub_1C0FFF024(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 128);
  v9 = *v7;
  v8 = *(v7 + 8);
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (*(v7 + 32) == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C1001C04(v9, v8, v11, v10, 0);
  (*(v4 + 8))(v6, v3);
  return v14;
}

void sub_1C0FFF1AC()
{
  OUTLINED_FUNCTION_35();
  *v0 = EnvironmentValues.photosLayoutMargins.getter();
  *(v0 + 8) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
}

double sub_1C0FFF204(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 132));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v10 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C0FA03F4(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

double sub_1C0FFF3A8(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 136));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v10 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C0FA03F4(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_1C0FFF54C(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 144);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C0FFF6A0()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosIsUsingTwoColumnShelf.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FFF6F4(uint64_t a1)
{
  v26 = *(a1 + 16);
  v25 = *(v26 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - v6;
  v7 = sub_1C1265810();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1C1265820();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FFF204(a1);
  sub_1C1265940();
  *v10 = xmmword_1C12A3450;
  (*(v8 + 104))(v10, *MEMORY[0x1E697D748], v7);
  sub_1C1265830();
  v14 = *(v1 + *(a1 + 88));
  v15 = v24;
  sub_1C0FFF978(v24, v5, a1);
  v16 = *(v25 + 8);
  v17 = v15;
  v18 = v26;
  v16(v17, v26);
  v19 = v18;
  v20 = sub_1C12662E0();
  v16(v5, v19);
  if (v20 >= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = v20;
  }

  return sub_1C12478D4(v13, v21);
}

uint64_t sub_1C0FFF978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a1;
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v39 - v7;
  v9 = *(v5 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = *(v3 + *(a3 + 76));
  v16 = sub_1C12662E0();
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v47 = v17;
  v44 = v9;
  (*(v9 + 16))(v12, v3, v5);
  v41 = v15;
  sub_1C1266360();
  v42 = *(swift_getAssociatedConformanceWitness() + 8);
  v43 = v8;
  v49 = sub_1C12661C0();
  sub_1C12661A0();
  swift_dynamicCast();
  sub_1C0FFEC90();
  v18 = sub_1C111EB24();

  if ((v18 & 1) == 0)
  {
    result = sub_1C12662E0();
    if (result >= v47)
    {
      v49 = v47;
      v50 = result;
      sub_1C1266390();
      v49 = sub_1C12661C0();
      swift_dynamicCast();
      v38 = v46;
      return (*(v44 + 32))(v38, v14, v5);
    }

    goto LABEL_29;
  }

  v20 = (v3 + *(a3 + 84));
  v21 = v20[1];
  v22 = v20[2];
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = v41;
  v25 = v41 * v23;
  if ((v41 * v23) >> 64 != (v41 * v23) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = *v20;
  v27 = __OFSUB__(v26, v25);
  v28 = v26 - v25;
  if (v27)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = round(v28 / v21);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v40 = v14;
  v30 = v29;
  result = sub_1C0FFFE20(a3);
  v31 = *(v3 + *(a3 + 88));
  v32 = v31 * v30;
  if ((v31 * v30) >> 64 != (v31 * v30) >> 63)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (result)
  {
    v33 = v23;
  }

  else
  {
    v33 = 0;
  }

  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    goto LABEL_36;
  }

  result = sub_1C12662E0();
  v35 = result - v24;
  if (__OFSUB__(result, v24))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v35 >= v34)
  {
    v35 = v34;
  }

  v27 = __OFADD__(v24, v35);
  v36 = v24 + v35;
  if (v27)
  {
    goto LABEL_38;
  }

  result = sub_1C12662E0();
  if (result >= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = result;
  }

  if (v37 >= v47)
  {
    v49 = v47;
    v50 = v37;
    sub_1C1266390();
    v49 = sub_1C12661C0();
    swift_dynamicCast();
    v38 = v46;
    v14 = v40;
    return (*(v44 + 32))(v38, v14, v5);
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1C0FFFDD4(uint64_t result)
{
  if (*(v1 + *(result + 76)) == 1)
  {
    return 1;
  }

  v2 = (v1 + *(result + 84));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    if (v4 != 0x8000000000000000 || v3 != -1)
    {
      return v4 / v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1C0FFFE20(int *a1)
{
  result = 0;
  if (*(v1 + a1[28]) == 1)
  {
    sub_1C0FFEC90();
    v3 = sub_1C111EB24();

    if ((v3 & 1) != 0 && *(v1 + a1[19]) == 1 && sub_1C12662E0() >= 2 && *(v1 + a1[22]) > 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t PhotosItemsRow.body.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v244 = a2;
  v3 = sub_1C12643C0();
  v4 = OUTLINED_FUNCTION_15(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v242 = v5;
  OUTLINED_FUNCTION_49();
  v252 = sub_1C12643E0();
  OUTLINED_FUNCTION_0();
  v243 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v241 = v8;
  OUTLINED_FUNCTION_49();
  sub_1C1263E10();
  OUTLINED_FUNCTION_0();
  v239 = v10;
  v240 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v238 = v11;
  OUTLINED_FUNCTION_49();
  sub_1C1264160();
  OUTLINED_FUNCTION_0();
  v236 = v13;
  v237 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v235 = v14;
  OUTLINED_FUNCTION_49();
  sub_1C1264200();
  OUTLINED_FUNCTION_0();
  v233 = v16;
  v234 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v232 = v17;
  v249 = *(a1 - 1);
  v230 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v228 = a1;
  v229 = &v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 2);
  v20 = *(a1 + 3);
  v22 = *(a1 + 5);
  v255 = *(a1 + 4);
  v251 = v22;
  v24 = *(a1 + 6);
  v23 = *(a1 + 7);
  v250 = *(a1 + 8);
  v258[0] = v21;
  v258[1] = v20;
  v25 = v20;
  v258[2] = v255;
  v258[3] = v22;
  v258[4] = v24;
  v258[5] = v23;
  v26 = v23;
  v258[6] = v250;
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  v27 = sub_1C1263190();
  OUTLINED_FUNCTION_4_11();
  WitnessTable = swift_getWitnessTable();
  v245 = sub_1C1001354();
  v257[50] = WitnessTable;
  v257[51] = v245;
  v246 = MEMORY[0x1E697E858];
  v29 = swift_getWitnessTable();
  v253 = v21;
  v258[0] = v21;
  v258[1] = v25;
  v247 = v25;
  v248 = v24;
  v30 = v255;
  v258[2] = v255;
  v258[3] = v27;
  v258[4] = v24;
  v258[5] = v26;
  v254 = v26;
  v258[6] = v29;
  v225 = type metadata accessor for PhotosDraggableForEach();
  OUTLINED_FUNCTION_52();
  v31 = sub_1C1263190();
  v257[48] = v29;
  v257[49] = v245;
  v32 = swift_getWitnessTable();
  v258[0] = v21;
  v258[1] = v25;
  v258[2] = v30;
  v258[3] = v31;
  v258[4] = v24;
  v258[5] = v26;
  v258[6] = v32;
  type metadata accessor for PhotosDraggableForEach();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_9();
  v33 = swift_getWitnessTable();
  v257[46] = v25;
  v257[47] = v33;
  OUTLINED_FUNCTION_19_0();
  v245 = v34;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v35 = sub_1C12628C0();
  v227 = MEMORY[0x1E697DA78];
  v36 = swift_getWitnessTable();
  v258[0] = v35;
  v258[1] = v36;
  OUTLINED_FUNCTION_17_7();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v226 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B88);
  sub_1C12652C0();
  OUTLINED_FUNCTION_15_10();
  sub_1C0FDB6D4(v37, &qword_1EBE90B88);
  v38 = sub_1C1262E70();
  OUTLINED_FUNCTION_13_7();
  v40 = sub_1C0FDB6D4(v39, &qword_1EBE90B88);
  v257[45] = v25;
  OUTLINED_FUNCTION_2_11();
  v41 = swift_getWitnessTable();
  v257[43] = v40;
  v257[44] = v41;
  OUTLINED_FUNCTION_12_0();
  v42 = swift_getWitnessTable();
  v258[0] = v38;
  v258[1] = v42;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_37();
  v43 = sub_1C1265AB0();
  OUTLINED_FUNCTION_11_9();
  v44 = swift_getWitnessTable();
  v258[0] = v43;
  v258[1] = v44;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_6_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12628C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_42_3();
  v45 = sub_1C1263C30();
  v46 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v48 = sub_1C0FDB6D4(v47, &qword_1EBE91C40);
  v257[41] = v46;
  v257[42] = v48;
  v257[39] = swift_getWitnessTable();
  v257[40] = v46;
  v225 = v45;
  v224 = swift_getWitnessTable();
  v49 = type metadata accessor for PhotosTestableScrollView();
  OUTLINED_FUNCTION_26_1();
  v50 = swift_getWitnessTable();
  v258[0] = v49;
  v258[1] = MEMORY[0x1E69E6370];
  v258[2] = v50;
  v258[3] = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v218 = v49;
  v51 = sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v227 = v52;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_34();
  v222 = v54;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B90);
  OUTLINED_FUNCTION_52();
  v221 = v51;
  sub_1C1263190();
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker();
  sub_1C1263190();
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(255);
  OUTLINED_FUNCTION_11_0();
  v219 = sub_1C1263190();
  v55 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v226 = v56;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_34();
  v220 = v58;
  v258[0] = v49;
  v258[1] = MEMORY[0x1E69E6370];
  v213 = v50;
  v258[2] = v50;
  v258[3] = MEMORY[0x1E69E6388];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v257[37] = OpaqueTypeConformance2;
  v257[38] = v50;
  v59 = swift_getWitnessTable();
  v245 = v59;
  OUTLINED_FUNCTION_24();
  v61 = sub_1C0FDB6D4(v60, &qword_1EBE90B90);
  v257[35] = v59;
  v257[36] = v61;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_9();
  v62 = swift_getWitnessTable();
  v257[33] = v59;
  v257[34] = v62;
  v63 = swift_getWitnessTable();
  OUTLINED_FUNCTION_23_2();
  v66 = sub_1C100873C(v64, v65);
  v257[31] = v63;
  v257[32] = v66;
  v257[29] = swift_getWitnessTable();
  v257[30] = v61;
  v67 = swift_getWitnessTable();
  v258[0] = v55;
  v258[1] = v67;
  OUTLINED_FUNCTION_21_1();
  v68 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v216 = v69;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_34();
  v212 = v71;
  v246 = v55;
  v258[0] = v55;
  v207 = v67;
  v258[1] = v67;
  v72 = OUTLINED_FUNCTION_36_1();
  v258[0] = v68;
  v258[1] = v72;
  OUTLINED_FUNCTION_20_8();
  v73 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v215 = v74;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_34();
  v210 = v76;
  v219 = v68;
  v258[0] = v68;
  v203 = v72;
  v258[1] = v72;
  v77 = OUTLINED_FUNCTION_36_1();
  v258[0] = v73;
  v258[1] = v77;
  OUTLINED_FUNCTION_18_6();
  v78 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v209 = v79;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_34();
  v204 = v81;
  v217 = v73;
  v258[0] = v73;
  v200 = v77;
  v258[1] = v77;
  v82 = OUTLINED_FUNCTION_36_1();
  v258[0] = v78;
  v83 = v252;
  v258[1] = v252;
  v84 = MEMORY[0x1E697CC08];
  v258[2] = v82;
  v258[3] = MEMORY[0x1E697CC08];
  OUTLINED_FUNCTION_16_8();
  v85 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v202 = v86;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_34();
  v197 = v88;
  v211 = v78;
  v258[0] = v78;
  v258[1] = v83;
  v193 = v82;
  v258[2] = v82;
  v258[3] = v84;
  v89 = OUTLINED_FUNCTION_36_1();
  v206 = v85;
  v258[0] = v85;
  v195 = v89;
  v258[1] = v89;
  v90 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v198 = v91;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_34();
  v192 = v93;
  v94 = type metadata accessor for PhotosScrollPositionModifier();
  v201 = v90;
  v194 = v94;
  v208 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v205 = v95;
  v97 = MEMORY[0x1EEE9AC00](v96);
  v196 = &v184 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v97);
  v199 = &v184 - v99;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v102 = v101;
  v104 = *(v103 + 64);
  v106 = MEMORY[0x1EEE9AC00](v105);
  v184 = &v184 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x1EEE9AC00](v106);
  v109 = &v184 - v108;
  v110 = v228;
  v111 = v231;
  sub_1C0FFF978(&v184 - v108, &v184 + *(v107 + 48) - v108, v228);
  v112 = (v111 + v110[21]);
  v113 = *v112;
  v187 = v112[1];
  v188 = v113;
  v186 = v112[2];
  v190 = sub_1C1264420();
  v114 = (v111 + v110[25]);
  v116 = *v114;
  v115 = v114[1];
  v189 = v116;
  v185 = v115;
  v117 = v249;
  v118 = v229;
  (*(v249 + 16))(v229, v111, v110);
  v119 = *(v102 + 16);
  v191 = v109;
  v119(&v184 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0), v109, TupleTypeMetadata2);
  v120 = (*(v117 + 80) + 72) & ~*(v117 + 80);
  v121 = (v230 + v120 + *(v102 + 80)) & ~*(v102 + 80);
  v122 = (v104 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v123 = swift_allocObject();
  v124 = v247;
  *(v123 + 2) = v253;
  *(v123 + 3) = v124;
  v125 = v251;
  *(v123 + 4) = v255;
  *(v123 + 5) = v125;
  v126 = v254;
  *(v123 + 6) = v248;
  *(v123 + 7) = v126;
  *(v123 + 8) = v250;
  (*(v249 + 32))(&v123[v120], v118, v110);
  v230 = v102;
  v127 = *(v102 + 32);
  v249 = TupleTypeMetadata2;
  v127(&v123[v121], v184, TupleTypeMetadata2);
  v128 = &v123[v122];
  v129 = v187;
  *v128 = v188;
  *(v128 + 1) = v129;
  v130 = v185;
  *(v128 + 2) = v186;

  PhotosTestableScrollView.init(_:accessibilityIdentifier:content:)(v190, v189, v130, sub_1C1001CF0, v123, v257);
  v131 = *(v111 + v110[27]) != 0;
  v256[2] = v253;
  v256[3] = v247;
  v256[4] = v255;
  v256[5] = v251;
  v256[6] = v248;
  v132 = v254;
  v256[7] = v254;
  v256[8] = v250;
  v256[9] = v111;
  v133 = v218;
  View.onStaticCondition<A>(_:transform:)(v131, sub_1C1005DEC, v256, v218, OpaqueTypeMetadata2, v213, OpaqueTypeConformance2, v222);
  memcpy(v258, v257, 0xE8uLL);
  v134 = v133;
  v135 = v133;
  v136 = v220;
  (*(*(v134 - 8) + 8))(v258, v135);
  sub_1C0FFFDD4(v110);
  OUTLINED_FUNCTION_28();
  v137 = v221;
  View.photosInlinePlaybackScrollViewTracker<A>(itemIDType:colsPerPage:trackItemVisibility:onScrollPhaseDidChange:)(v138, v139, v140, v141, v142, v138, v245, v143, v132);
  v144 = OUTLINED_FUNCTION_47_0();
  v145(v144, v137);
  v146 = v232;
  if (*(v111 + v110[39]) == 1)
  {
    sub_1C12641E0();
  }

  else
  {
    sub_1C12641F0();
  }

  v147 = v246;
  sub_1C1264CB0();
  (*(v233 + 8))(v146, v234);
  (*(v226 + 8))(v136, v147);
  v148 = v235;
  sub_1C1264140();
  v149 = v219;
  sub_1C1005F50();
  v150 = v210;
  sub_1C1264C50();
  (*(v236 + 8))(v148, v237);
  v151 = OUTLINED_FUNCTION_47_0();
  v152(v151, v149);
  v153 = *(v111 + v110[23]);
  v154 = sub_1C0FFF024(v110);
  v156 = v155;
  v158 = v157;
  v160 = v159;
  v161 = v238;
  sub_1C1263E00();
  v162 = v153;
  v163 = v217;
  MEMORY[0x1C68EE490](v162, v161, v217, v200, v154, v156, v158, v160);
  (*(v239 + 8))(v161, v240);
  (*(v215 + 8))(v150, v163);
  sub_1C12643B0();
  v164 = v241;
  sub_1C12643D0();
  v165 = v197;
  v166 = v211;
  v167 = v252;
  sub_1C1264D90();
  (*(v243 + 8))(v164, v167);
  v168 = OUTLINED_FUNCTION_47_0();
  v169(v168, v166);
  sub_1C0FFEC90();
  sub_1C111EB24();

  v170 = v206;
  v171 = v195;
  sub_1C1264B70();
  (*(v202 + 8))(v165, v170);
  v172 = sub_1C0FFEC90();
  v257[0] = v170;
  v257[1] = v171;
  v173 = swift_getOpaqueTypeConformance2();
  v174 = v196;
  v175 = v201;
  View.photosScrollPosition<A>(scrollViewModel:)(v172, v201, v173);

  v176 = OUTLINED_FUNCTION_47_0();
  v177(v176, v175);
  (*(v230 + 8))(v191, v249);
  OUTLINED_FUNCTION_14_7();
  v178 = swift_getWitnessTable();
  v256[10] = v173;
  v256[11] = v178;
  OUTLINED_FUNCTION_4_0();
  v179 = v208;
  v180 = swift_getWitnessTable();
  v181 = v199;
  sub_1C0FDBA4C(v174, v179, v180);
  v182 = *(v205 + 8);
  v182(v174, v179);
  sub_1C0FDBA4C(v181, v179, v180);
  return (v182)(v181, v179);
}

unint64_t sub_1C1001354()
{
  result = qword_1EDE7F678;
  if (!qword_1EDE7F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F678);
  }

  return result;
}

uint64_t sub_1C10013A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v81 = a4;
  v82 = a5;
  v79 = a2;
  v80 = a3;
  v78 = a1;
  v83 = a8;
  v75 = a13;
  v74 = a10;
  v15 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a6;
  v110 = a7;
  v111 = a9;
  v112 = a10;
  v113 = a11;
  v114 = a12;
  v115 = a13;
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  v17 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v68 = sub_1C1001354();
  v107 = WitnessTable;
  v108 = v68;
  v76 = MEMORY[0x1E697E858];
  v19 = swift_getWitnessTable();
  v72 = a7;
  v73 = a6;
  v109 = a6;
  v110 = a7;
  v111 = a9;
  v112 = v17;
  v70 = a9;
  v71 = a11;
  v113 = a11;
  v114 = a12;
  v69 = a12;
  v115 = v19;
  v66 = type metadata accessor for PhotosDraggableForEach();
  v20 = sub_1C1263190();
  v105 = v19;
  v106 = v68;
  v21 = swift_getWitnessTable();
  v109 = a6;
  v110 = a7;
  v111 = a9;
  v112 = v20;
  v113 = a11;
  v114 = a12;
  v115 = v21;
  type metadata accessor for PhotosDraggableForEach();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263C30();
  v22 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v103 = v22;
  v104 = v23;
  v68 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  v24 = sub_1C12628C0();
  v67 = MEMORY[0x1E697DA78];
  v25 = swift_getWitnessTable();
  v109 = v24;
  v110 = v25;
  swift_getOpaqueTypeMetadata2();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B88);
  sub_1C12652C0();
  sub_1C0FDB6D4(&qword_1EDE76F38, &qword_1EBE90B88);
  v26 = sub_1C1262E70();
  v27 = sub_1C0FDB6D4(&qword_1EDE76F30, &qword_1EBE90B88);
  v102 = v22;
  v28 = swift_getWitnessTable();
  v100 = v27;
  v101 = v28;
  v29 = swift_getWitnessTable();
  v109 = v26;
  v110 = v29;
  swift_getOpaqueTypeMetadata2();
  v30 = sub_1C1265AB0();
  v31 = swift_getWitnessTable();
  v109 = v30;
  v110 = v31;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263C30();
  swift_getTupleTypeMetadata2();
  v61 = sub_1C1265B00();
  v60 = swift_getWitnessTable();
  v32 = sub_1C12628C0();
  v64 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v59 = &v56 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  v63 = sub_1C1263190();
  v34 = sub_1C1263C30();
  v35 = *(v34 - 8);
  v65 = v34;
  v66 = v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v58 = &v56 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v62 = &v56 - v38;
  v39 = v72;
  v40 = v73;
  v109 = v73;
  v110 = v72;
  v42 = v70;
  v41 = v71;
  v44 = v74;
  v43 = v75;
  v111 = v70;
  v112 = v74;
  v45 = v69;
  v113 = v71;
  v114 = v69;
  v115 = v75;
  v57 = type metadata accessor for PhotosItemsRow();
  v46 = v78;
  v56 = sub_1C0FFF3A8(v57);
  v84 = v40;
  v85 = v39;
  v86 = v42;
  v87 = v44;
  v88 = v41;
  v89 = v45;
  v90 = v43;
  v91 = v46;
  v92 = v79;
  v93 = v80;
  v94 = v81;
  v95 = v82;
  sub_1C12638E0();
  sub_1C1129E3C();
  v47 = v59;
  sub_1C12628B0();
  LOBYTE(v109) = *(v46 + *(v57 + 148));
  v48 = swift_getWitnessTable();
  v49 = v58;
  sub_1C1005084(&v109, v32, v48, v58);
  (*(v64 + 8))(v47, v32);
  v50 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v98 = v48;
  v99 = v50;
  v96 = swift_getWitnessTable();
  v97 = v48;
  v51 = v65;
  v52 = swift_getWitnessTable();
  v53 = v62;
  sub_1C0FDBA4C(v49, v51, v52);
  v54 = *(v66 + 8);
  v54(v49, v51);
  sub_1C0FDBA4C(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_1C1001C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C1001C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a27)
  {

    sub_1C1001C84(a17, a18, a19, a20);
  }
}

uint64_t sub_1C1001C84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    if (a4 >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1C1001CF0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  OUTLINED_FUNCTION_39_2();
  v9 = type metadata accessor for PhotosItemsRow();
  OUTLINED_FUNCTION_40_1(v9);
  v11 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v12 = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_40_1(v12);
  OUTLINED_FUNCTION_53();
  return sub_1C10013A8(v1 + v11, v1 + v14, *v13, v13[1], v13[2], v7, v8, a1, v2, v3, v4, v5, v6);
}

uint64_t sub_1C1001E24@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v156 = a5;
  v155 = a4;
  v154 = a3;
  v153 = a2;
  v169 = a1;
  v165 = a9;
  v167 = a13;
  v177 = a10;
  v147 = a6;
  v182 = a8;
  v181 = a11;
  v178 = a12;
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  v16 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v173 = sub_1C1001354();
  v190[9] = WitnessTable;
  v190[10] = v173;
  v172 = MEMORY[0x1E697E858];
  v171 = swift_getWitnessTable();
  v191 = *&a6;
  v192 = a7;
  v193 = a8;
  v194 = v16;
  v195 = a11;
  v196 = a12;
  v197 = v171;
  v18 = type metadata accessor for PhotosDraggableForEach();
  v19 = sub_1C12652C0();
  v174 = swift_getWitnessTable();
  v190[8] = v174;
  v20 = swift_getWitnessTable();
  *&v21 = COERCE_DOUBLE(sub_1C1265AB0());
  v142 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v141 = v128 - v22;
  *&v23 = COERCE_DOUBLE(swift_getWitnessTable());
  v164 = v21;
  v191 = *&v21;
  v192 = *&v23;
  v176 = *&v23;
  v170 = MEMORY[0x1E697D1A0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v145 = *(OpaqueTypeMetadata2 - 8);
  v25 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v144 = v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v143 = v128 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B88);
  sub_1C0FDB6D4(&qword_1EDE76F38, &qword_1EBE90B88);
  *&v28 = COERCE_DOUBLE(sub_1C1262E70());
  v133 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v130 = v128 - v29;
  v190[6] = sub_1C0FDB6D4(&qword_1EDE76F30, &qword_1EBE90B88);
  v190[7] = v20;
  v140 = v20;
  *&v30 = COERCE_DOUBLE(swift_getWitnessTable());
  v179 = v28;
  v191 = *&v28;
  v192 = *&v30;
  v175 = *&v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v134 = *(v31 - 8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v132 = v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v131 = v128 - v34;
  v157 = v35;
  v163 = OpaqueTypeMetadata2;
  v162 = sub_1C1263C30();
  v161 = *(v162 - 8);
  v36 = MEMORY[0x1EEE9AC00](v162);
  v160 = v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v158 = v128 - v39;
  v168 = v19;
  v159 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v180 = v128 - v40;
  v139 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v139);
  v166 = v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a7;
  v43 = sub_1C1263190();
  v190[4] = v171;
  v190[5] = v173;
  v44 = swift_getWitnessTable();
  v45 = v147;
  v191 = *&v147;
  v192 = a7;
  v46 = v182;
  v193 = v182;
  v194 = v43;
  v47 = v178;
  v195 = v181;
  v196 = v178;
  v197 = v44;
  type metadata accessor for PhotosDraggableForEach();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v48 = v46;
  swift_getWitnessTable();
  sub_1C12655A0();
  v152 = v18;
  sub_1C1263C30();
  v49 = swift_getWitnessTable();
  v190[2] = v174;
  v190[3] = v49;
  swift_getWitnessTable();
  *&v50 = COERCE_DOUBLE(sub_1C12628C0());
  v138 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v136 = v128 - v51;
  *&v52 = COERCE_DOUBLE(swift_getWitnessTable());
  v191 = *&v50;
  v192 = *&v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v148 = *(v53 - 8);
  v54 = MEMORY[0x1EEE9AC00](v53);
  v137 = v128 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v135 = v128 - v56;
  v173 = sub_1C1266790();
  v170 = *(v173 - 8);
  v57 = MEMORY[0x1EEE9AC00](v173);
  v172 = v128 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v171 = v128 - v59;
  v191 = *&v45;
  v192 = v42;
  v60 = *&v42;
  v193 = v48;
  v194 = v177;
  v195 = v181;
  v196 = v47;
  v61 = v167;
  v197 = v167;
  v62 = type metadata accessor for PhotosItemsRow();
  v146 = v62;
  v63 = *(*&v169 + *(v62 + 76));
  v151 = v50;
  v150 = v52;
  if (v63 < 1)
  {
    v76 = v172;
    __swift_storeEnumTagSinglePayload(v172, 1, 1, v53);
    v191 = *&v50;
    v192 = *&v52;
    swift_getOpaqueTypeConformance2();
  }

  else
  {
    v149 = v60;
    v128[1] = v128;
    MEMORY[0x1EEE9AC00](v62);
    v64 = *&v52;
    v129 = v53;
    v65 = v149;
    v128[-8] = v45;
    v128[-7] = v65;
    v66 = v177;
    v128[-6] = v182;
    v128[-5] = v66;
    v67 = v178;
    v128[-4] = v181;
    v128[-3] = v67;
    v126 = v61;
    v127 = v68;
    sub_1C12638E0();
    sub_1C1129E3C();
    v69 = v136;
    v70 = v129;
    sub_1C12628B0();
    v60 = v149;
    OUTLINED_FUNCTION_15_6();
    v71 = v137;
    sub_1C1264CD0();
    (*(v138 + 8))(v69, v50);
    v191 = *&v50;
    v192 = v64;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v73 = v135;
    sub_1C0FDBA4C(v71, v70, OpaqueTypeConformance2);
    v74 = v148;
    v75 = v148[1];
    v75(v71, v70);
    sub_1C0FDBA4C(v73, v70, OpaqueTypeConformance2);
    v75(v73, v70);
    v76 = v172;
    (v74[4])(v172, v71, v70);
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v70);
  }

  sub_1C1170030(v76, v171);
  v77 = *(v170 + 8);
  v149 = v170 + 8;
  v148 = v77;
  v78 = (v77)(v76, v173);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v45;
  v128[-12] = v45;
  v128[-11] = v60;
  v80 = v60;
  v81 = v177;
  v128[-10] = v182;
  v128[-9] = v81;
  v82 = v181;
  v83 = v178;
  v128[-8] = v181;
  v128[-7] = v83;
  v84 = v61;
  v85 = v153;
  v128[-6] = v61;
  v128[-5] = v85;
  v86 = v169;
  v87 = v154;
  *&v128[-4] = v169;
  v128[-3] = v87;
  v126 = v155;
  v127 = v156;
  sub_1C12652B0();
  v88 = v146;
  v89 = v179;
  v90 = v80;
  v91 = v79;
  if (*(*&v86 + *(v146 + 156)) == 1 && (sub_1C0FFF54C(v146) & 1) == 0)
  {
    v102 = *(*&v86 + *(v88 + 88));
    v103 = sub_1C0FFF3A8(v88);
    v104 = sub_1C0FFF204(v88);
    v191 = v103;
    v192 = v104;
    v193 = v102;
    v105 = v182;
    v106 = sub_1C1004B00(&v191, v91, v90, v182, v81, v82, v83, v84);
    MEMORY[0x1EEE9AC00](v106);
    v128[-8] = v91;
    v128[-7] = v90;
    v128[-6] = v105;
    v128[-5] = v81;
    v128[-4] = v82;
    v128[-3] = v83;
    v126 = v84;
    v127 = v180;
    v107 = v130;
    v108(sub_1C1008784);

    v109 = v175;
    OUTLINED_FUNCTION_15_6();
    v110 = v132;
    sub_1C1264CD0();
    (*(v133 + 8))(v107, v89);
    v191 = *&v89;
    v192 = v109;
    v111 = swift_getOpaqueTypeConformance2();
    v112 = v131;
    v113 = v157;
    sub_1C0FDBA4C(v110, v157, v111);
    v114 = *(v134 + 8);
    v114(v110, v113);
    sub_1C0FDBA4C(v112, v113, v111);
    v94 = v164;
    v191 = *&v164;
    v192 = v176;
    swift_getOpaqueTypeConformance2();
    v101 = v158;
    sub_1C1112D68();
    v114(v110, v113);
    v114(v112, v113);
  }

  else
  {
    v174 = sub_1C0FFF6F4(v88);
    v156 = sub_1C12638C0();
    v169 = sub_1C0FFF3A8(v88);
    v191 = MEMORY[0x1E69E7CC0];
    sub_1C100873C(&qword_1EDE7BBA8, MEMORY[0x1E697FCB0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BA8);
    sub_1C0FDB6D4(&qword_1EDE7B718, &qword_1EBE90BA8);
    v92 = sub_1C1266870();
    MEMORY[0x1EEE9AC00](v92);
    v128[-8] = v79;
    v128[-7] = v90;
    v128[-6] = v182;
    v128[-5] = v81;
    v128[-4] = v82;
    v128[-3] = v83;
    v127 = v180;
    v126 = v140;
    v93 = v141;
    sub_1C1265AA0();
    v94 = v164;
    v95 = v176;
    OUTLINED_FUNCTION_15_6();
    v96 = v144;
    sub_1C1264CD0();
    (*(v142 + 8))(v93, v94);
    v191 = *&v94;
    v192 = v95;
    v97 = swift_getOpaqueTypeConformance2();
    v98 = v143;
    v99 = v163;
    sub_1C0FDBA4C(v96, v163, v97);
    v100 = *(v145 + 8);
    v100(v96, v99);
    sub_1C0FDBA4C(v98, v99, v97);
    v191 = *&v179;
    v192 = v175;
    swift_getOpaqueTypeConformance2();
    v101 = v158;
    sub_1C1112E18();
    v100(v96, v99);
    v100(v98, v99);
  }

  v115 = v172;
  v116 = v171;
  v117 = v173;
  (*(v170 + 16))(v172, v171, v173);
  v191 = *&v115;
  v118 = v161;
  v119 = v160;
  v120 = v162;
  (*(v161 + 16))(v160, v101, v162);
  v192 = *&v119;
  v190[0] = v117;
  v190[1] = v120;
  v188 = v151;
  v189 = v150;
  v187 = swift_getOpaqueTypeConformance2();
  v188 = swift_getWitnessTable();
  v185 = v179;
  v186 = v175;
  v121 = swift_getOpaqueTypeConformance2();
  v185 = v94;
  v186 = v176;
  v122 = swift_getOpaqueTypeConformance2();
  v183 = v121;
  v184 = v122;
  v189 = swift_getWitnessTable();
  sub_1C119EE80(&v191, 2, v190);
  v123 = *(v118 + 8);
  v123(v101, v120);
  v124 = v148;
  (v148)(v116, v117);
  v123(v119, v120);
  v124(v115, v117);
  return (*(v159 + 8))(v180, v168);
}

uint64_t sub_1C1003458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a5;
  v30 = a8;
  v31 = a1;
  v32 = a9;
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v38 = sub_1C1001354();
  v14 = swift_getWitnessTable();
  v28 = a7;
  type metadata accessor for PhotosDraggableForEach();
  v35 = v14;
  v36 = v38;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = sub_1C1263190();
  v43 = a6;
  v44 = a7;
  v45 = swift_getWitnessTable();
  type metadata accessor for PhotosDraggableForEach();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  v15 = sub_1C1263C30();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = v29;
  v43 = a6;
  v44 = v28;
  v45 = v30;
  v22 = type metadata accessor for PhotosItemsRow();
  sub_1C1003828(v22, v19);
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v33 = v23;
  v34 = v24;
  v25 = swift_getWitnessTable();
  sub_1C0FDBA4C(v19, v15, v25);
  v26 = *(v16 + 8);
  v26(v19, v15);
  sub_1C0FDBA4C(v21, v15, v25);
  return (v26)(v21, v15);
}

uint64_t sub_1C1003828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v93 = *(a1 + 48);
  v86 = *(a1 + 64);
  v87 = v5;
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  v8 = sub_1C1263190();
  sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v99 = sub_1C1001354();
  v96 = swift_getWitnessTable();
  v97 = v99;
  swift_getWitnessTable();
  type metadata accessor for PhotosDraggableForEach();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  *&v100 = v3;
  *(&v100 + 1) = v4;
  v88 = v6;
  v89 = v4;
  v101 = v6;
  v102 = v8;
  v79 = v8;
  v103 = v93;
  v104 = v7;
  v90 = v7;
  v78 = v96;
  v105 = v96;
  v9 = type metadata accessor for PhotosDraggableForEach();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  v73 = sub_1C1265B00();
  v72 = swift_getWitnessTable();
  v10 = sub_1C12655A0();
  v77 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v75 = &v70 - v15;
  v71 = *(a1 - 8);
  v16 = *(v71 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v3;
  v19 = *(v3 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v81 = &v70 - v24;
  v76 = *(v9 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v74 = &v70 - v28;
  v80 = v29;
  v85 = sub_1C1263C30();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v70 - v30;
  v31 = v82;
  if (sub_1C0FFFE20(a1))
  {
    sub_1C0FFF204(a1);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v88;
    v34 = v89;
    *(&v70 - 8) = v91;
    *(&v70 - 7) = v34;
    v64 = v33;
    v65 = v87;
    v66 = v93;
    v67 = v90;
    v68 = v86;
    v69 = v31;
    sub_1C10A7F5C();
    sub_1C1265590();
    v35 = v80;
    v36 = swift_getWitnessTable();
    v37 = v75;
    sub_1C0FDBA4C(v13, v35, v36);
    v38 = *(v77 + 8);
    v38(v13, v35);
    sub_1C0FDBA4C(v37, v35, v36);
    swift_getWitnessTable();
    v39 = v83;
    sub_1C1112E18();
    v38(v13, v35);
    v38(v37, v35);
  }

  else
  {
    sub_1C0FFF978(v81, v22, a1);
    v40 = v91;
    (*(v19 + 8))(v22, v91);
    v77 = *(v31 + *(a1 + 80));
    sub_1C0FDB0A8(v31 + *(a1 + 104), &v100);
    v41 = *(a1 + 120);
    v72 = *(v31 + *(a1 + 116));
    v42 = *(v31 + v41 + 8);
    v75 = *(v31 + v41);
    v73 = v42;
    v43 = v71;
    (*(v71 + 16))(&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v31, a1);
    v44 = (*(v43 + 80) + 72) & ~*(v43 + 80);
    v45 = swift_allocObject();
    v47 = v88;
    v46 = v89;
    *(v45 + 2) = v40;
    *(v45 + 3) = v46;
    v48 = v86;
    v49 = v87;
    *(v45 + 4) = v47;
    *(v45 + 5) = v49;
    v50 = v93;
    v51 = v90;
    *(v45 + 6) = v93;
    *(v45 + 7) = v51;
    *(v45 + 8) = v48;
    (*(v43 + 32))(&v45[v44], v18, a1);
    v52 = v72;

    v53 = v77;

    v54 = v75;
    v55 = v73;
    sub_1C0FCF1B4(v75);
    v68 = v51;
    v69 = v78;
    v67 = v50;
    v66 = v79;
    sub_1C1039330(v53, 0, &v100, v52, v54, v55, sub_1C10087E4, v27, v45, v40);
    v56 = swift_getWitnessTable();
    v57 = v74;
    sub_1C0FDBA4C(v27, v9, v56);
    v58 = *(v76 + 8);
    v58(v27, v9);
    sub_1C0FDBA4C(v57, v9, v56);
    swift_getWitnessTable();
    v39 = v83;
    sub_1C1112D68();
    v58(v27, v9);
    v58(v57, v9);
  }

  v59 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v94 = v59;
  v95 = v60;
  v61 = v85;
  v62 = swift_getWitnessTable();
  sub_1C0FDBA4C(v39, v61, v62);
  return (*(v84 + 8))(v39, v61);
}

uint64_t sub_1C100423C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v71 = a4;
  v72 = a5;
  v69 = a1;
  v70 = a3;
  v64 = a2;
  v73 = a9;
  *&v77 = a6;
  *(&v77 + 1) = a7;
  v78 = a8;
  v79 = a10;
  v62 = a10;
  v80 = a11;
  v81 = a12;
  v82 = a13;
  v63 = a13;
  v16 = type metadata accessor for PhotosItemsRow();
  v67 = *(v16 - 1);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v51 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v74 = &v51 - v18;
  *&v77 = a6;
  *(&v77 + 1) = a7;
  v55 = a7;
  v78 = a8;
  v79 = a10;
  v52 = a8;
  v80 = a11;
  v81 = a12;
  v54 = a12;
  v82 = a13;
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  v19 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1C1001354();
  v75 = WitnessTable;
  v76 = v21;
  v60 = v19;
  v59 = swift_getWitnessTable();
  *&v77 = a6;
  *(&v77 + 1) = a7;
  v22 = a6;
  v78 = a8;
  v79 = v19;
  v80 = a11;
  v81 = a12;
  v82 = v59;
  v53 = type metadata accessor for PhotosDraggableForEach();
  v66 = *(v53 - 8);
  v23 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v61 = &v51 - v25;
  v26 = TupleTypeMetadata2;
  (*(v57 + 16))(v74, v69, TupleTypeMetadata2);
  v69 = *(v26 + 48);
  v27 = v64;
  TupleTypeMetadata2 = *(v64 + v16[20]);
  sub_1C0FDB0A8(v64 + v16[26], &v77);
  v28 = v16[30];
  v51 = *(v27 + v16[29]);
  v29 = v27;
  v30 = *(v27 + v28 + 8);
  v57 = *(v27 + v28);
  v31 = v67;
  v32 = v65;
  (*(v67 + 16))(v65, v29, v16);
  v33 = (*(v31 + 80) + 72) & ~*(v31 + 80);
  v34 = (v68 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v55;
  *(v35 + 2) = v22;
  *(v35 + 3) = v36;
  v37 = v62;
  *(v35 + 4) = v52;
  *(v35 + 5) = v37;
  *(v35 + 6) = a11;
  v38 = v63;
  *(v35 + 7) = v54;
  *(v35 + 8) = v38;
  (*(v31 + 32))(&v35[v33], v32, v16);
  v39 = &v35[v34];
  v40 = v71;
  *v39 = v70;
  *(v39 + 1) = v40;
  *(v39 + 2) = v72;
  v41 = v51;

  v42 = TupleTypeMetadata2;

  v43 = v57;
  sub_1C0FCF1B4(v57);
  v44 = v74;
  v45 = v56;
  sub_1C1039330(v42, 0, &v77, v41, v43, v30, sub_1C1008CD0, v56, v35, v22);
  (*(*(v22 - 8) + 8))(v44, v22);
  v46 = v53;
  v47 = swift_getWitnessTable();
  v48 = v61;
  sub_1C0FDBA4C(v45, v46, v47);
  v49 = *(v66 + 8);
  v49(v45, v46);
  sub_1C0FDBA4C(v48, v46, v47);
  return (v49)(v48, v46);
}

uint64_t sub_1C10047F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a3;
  v46 = a4;
  v47 = a2;
  v42 = a1;
  v44 = a6;
  v37 = a10;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v14;
  v49 = v15;
  v16 = v14;
  v40 = v14;
  v41 = v17;
  v50 = v17;
  v51 = v18;
  v19 = v17;
  v20 = v18;
  v38 = v18;
  v39 = a8;
  v52 = a8;
  v53 = a9;
  v54 = v21;
  v22 = type metadata accessor for PhotosItemsRow.ItemContainerView();
  v43 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  v48 = v16;
  v49 = a5;
  v50 = v19;
  v51 = v20;
  v52 = a8;
  v53 = a9;
  v54 = v37;
  v25 = type metadata accessor for PhotosItemsRow();
  v26 = (v47 + *(v25 + 124));
  v27 = *v26;
  v28 = v26[1];
  (*(v11 + 16))(v13, v42, a5);
  sub_1C1004A6C(v27, v28, v13, a5, v24);

  LOBYTE(v20) = sub_1C1264420();
  v29 = v47;
  v30 = sub_1C0FFF3A8(v25);
  v31 = (v29 + *(v25 + 152));
  v32 = *v31;
  v33 = v31[1];
  WitnessTable = swift_getWitnessTable();
  View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v20, v45, v46, v32, v33, v22, WitnessTable, v30);
  return (*(v43 + 8))(v24, v22);
}

uint64_t sub_1C1004A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for PhotosItemsRow.ItemContainerView();
  return (*(*(a4 - 8) + 32))(&a5[*(v8 + 76)], a3, a4);
}

uint64_t (*sub_1C1004B00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  v18[8] = a8;
  v18[9] = v15;
  v18[10] = v16;
  v18[11] = v17;
  return sub_1C1008AFC;
}

uint64_t sub_1C1004BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  sub_1C1263190();
  swift_getWitnessTable();
  sub_1C1001354();
  swift_getWitnessTable();
  type metadata accessor for PhotosDraggableForEach();
  v6 = sub_1C12652C0();
  v7 = sub_1C1008B38();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  return sub_1C1004D30(a1, a2, &type metadata for PhotosLazyHGrid, v6, v7, WitnessTable, a3);
}

uint64_t sub_1C1004D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1263A00();
  MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3);
  MEMORY[0x1C68ED350](v15, a3, a5);
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return sub_1C1262E80();
}

uint64_t sub_1C1004ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  v13 = sub_1C1263190();
  OUTLINED_FUNCTION_4_11();
  v22[1] = swift_getWitnessTable();
  v22[2] = sub_1C1001354();
  OUTLINED_FUNCTION_4_0();
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = v13;
  v22[7] = a6;
  v22[8] = a7;
  v22[9] = swift_getWitnessTable();
  type metadata accessor for PhotosDraggableForEach();
  v14 = sub_1C12652C0();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v22 - v18;
  OUTLINED_FUNCTION_3_2();
  v22[0] = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_11();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(a1, v14, WitnessTable);
  sub_1C0FDBA4C(v19, v14, WitnessTable);
  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_1C1005084@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v48 = a4;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v12 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  v15 = sub_1C1263190();
  v42 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  v21 = sub_1C1263C30();
  v46 = *(v21 - 8);
  v47 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v45 = &v41 - v22;
  if (*v43)
  {
    sub_1C0FDBA4C(v44, a2, a3);
    sub_1C0FDBA4C(v11, a2, a3);
    v23 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
    v55 = a3;
    v56 = v23;
    swift_getWitnessTable();
    v24 = v45;
    sub_1C1112E18();
    v25 = *(v6 + 8);
    v25(v9, a2);
    v25(v11, a2);
  }

  else
  {
    v26 = *(v12 + 20);
    v27 = *MEMORY[0x1E697F468];
    v28 = sub_1C12639D0();
    (*(*(v28 - 8) + 104))(&v14[v26], v27, v28);
    __asm { FMOV            V0.2D, #10.0 }

    *v14 = _Q0;
    sub_1C100873C(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
    sub_1C1009334();
    sub_1C1265050();
    sub_1C100867C(v14);
    v34 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
    v49 = a3;
    v50 = v34;
    WitnessTable = swift_getWitnessTable();
    sub_1C0FDBA4C(v18, v15, WitnessTable);
    v36 = *(v42 + 8);
    v36(v18, v15);
    sub_1C0FDBA4C(v20, v15, WitnessTable);
    v24 = v45;
    sub_1C1112D68();
    v36(v18, v15);
    v36(v20, v15);
  }

  v37 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v53 = a3;
  v54 = v37;
  v51 = swift_getWitnessTable();
  v52 = a3;
  v38 = v47;
  v39 = swift_getWitnessTable();
  sub_1C0FDBA4C(v24, v38, v39);
  return (*(v46 + 8))(v24, v38);
}

uint64_t sub_1C1005618@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v65 = a8;
  v66 = a5;
  v67 = a7;
  v58 = a6;
  v59 = a2;
  v63 = a3;
  v61 = a9;
  v64 = a10;
  v88[0] = a3;
  v88[1] = a4;
  v62 = a4;
  v88[2] = a5;
  v88[3] = a6;
  v88[4] = a7;
  v88[5] = a8;
  v88[6] = a10;
  v13 = type metadata accessor for PhotosItemsRow();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  memcpy(v88, a1, sizeof(v88));
  v57 = *(v14 + 16);
  v57(v16, a2, v13);
  v17 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v60 = v18;
  v18[2] = v63;
  v18[3] = a4;
  v19 = v67;
  v20 = v58;
  v18[4] = v66;
  v18[5] = v20;
  v21 = v64;
  v22 = v65;
  v18[6] = v19;
  v18[7] = v22;
  v18[8] = v21;
  v23 = *(v14 + 32);
  v55 = v13;
  v56 = v23;
  v23(v18 + v17, v16, v13);
  v57(v16, v59, v13);
  v24 = swift_allocObject();
  v59 = v24;
  v25 = v62;
  v26 = v63;
  v24[2] = v63;
  v24[3] = v25;
  v27 = v67;
  v24[4] = v66;
  v24[5] = v20;
  v29 = v64;
  v28 = v65;
  v24[6] = v27;
  v24[7] = v28;
  v24[8] = v29;
  v56(v24 + v17, v16, v55);
  v81 = v26;
  v82 = v25;
  v30 = v66;
  v83 = v66;
  v84 = v20;
  v85 = v27;
  v86 = v28;
  v87 = v29;
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  v31 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v33 = sub_1C1001354();
  v79 = WitnessTable;
  v80 = v33;
  v64 = MEMORY[0x1E697E858];
  v34 = swift_getWitnessTable();
  v81 = v26;
  v35 = v26;
  v36 = v62;
  v82 = v62;
  v83 = v30;
  v37 = v30;
  v38 = v67;
  v84 = v31;
  v85 = v67;
  v86 = v28;
  v87 = v34;
  v58 = type metadata accessor for PhotosDraggableForEach();
  v39 = sub_1C1263190();
  v77 = v34;
  v78 = v33;
  v40 = swift_getWitnessTable();
  v81 = v35;
  v82 = v36;
  v83 = v37;
  v84 = v39;
  v85 = v38;
  v86 = v28;
  v87 = v40;
  type metadata accessor for PhotosDraggableForEach();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263C30();
  v41 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v75 = v41;
  v76 = v42;
  v67 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  v43 = sub_1C12628C0();
  v66 = MEMORY[0x1E697DA78];
  v44 = swift_getWitnessTable();
  v81 = v43;
  v82 = v44;
  swift_getOpaqueTypeMetadata2();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B88);
  sub_1C12652C0();
  sub_1C0FDB6D4(&qword_1EDE76F38, &qword_1EBE90B88);
  v45 = sub_1C1262E70();
  v46 = sub_1C0FDB6D4(&qword_1EDE76F30, &qword_1EBE90B88);
  v74 = v41;
  v47 = swift_getWitnessTable();
  v72 = v46;
  v73 = v47;
  v48 = swift_getWitnessTable();
  v81 = v45;
  v82 = v48;
  swift_getOpaqueTypeMetadata2();
  v49 = sub_1C1265AB0();
  v50 = swift_getWitnessTable();
  v81 = v49;
  v82 = v50;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263C30();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12628C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  sub_1C1263C30();
  v51 = swift_getWitnessTable();
  v52 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v70 = v51;
  v71 = v52;
  v68 = swift_getWitnessTable();
  v69 = v51;
  swift_getWitnessTable();
  type metadata accessor for PhotosTestableScrollView();
  swift_getWitnessTable();
  sub_1C1264DE0();
}

uint64_t sub_1C1005E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = type metadata accessor for PhotosItemsRow();
  v7 = *(a2 + *(result + 108));
  if (v7)
  {

    v8 = v7(a1);

    v9 = v8 & 1;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1C1005EC0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  result = type metadata accessor for PhotosItemsRow();
  v7 = (a3 + *(result + 108));
  if (*v7)
  {
    v8 = v7[2];

    v8(v4, v5);
  }

  return result;
}

uint64_t sub_1C1005F50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v1 = sub_1C1264440();
  *(inited + 32) = v1;
  v2 = sub_1C1264420();
  *(inited + 33) = v2;
  v3 = sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v1)
  {
    v3 = sub_1C1264430();
  }

  sub_1C1264430();
  if (sub_1C1264430() != v2)
  {
    return sub_1C1264430();
  }

  return v3;
}

uint64_t sub_1C1006024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v51 = a1;
  v52 = a2;
  v46 = a6;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v13;
  v54 = v14;
  v47 = v13;
  v48 = v15;
  v55 = v15;
  v56 = v16;
  v17 = v15;
  v18 = v16;
  v49 = v16;
  v50 = v19;
  v57 = v19;
  v58 = v20;
  v21 = v19;
  v59 = a7;
  v22 = type metadata accessor for PhotosItemsRow.ItemContainerView();
  v23 = *(v22 - 8);
  v44 = v22;
  v45 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v44 - v24;
  v53 = a3;
  v54 = a4;
  v55 = v17;
  v56 = v18;
  v57 = v21;
  v58 = a5;
  v59 = a7;
  v26 = type metadata accessor for PhotosItemsRow();
  v27 = (v52 + v26[31]);
  v28 = *v27;
  v29 = v27[1];
  (*(v10 + 16))(v12, v51, a4);
  v30 = v52;
  sub_1C1004A6C(v28, v29, v12, a4, v25);

  result = sub_1C1264420();
  v32 = (v30 + v26[21]);
  v33 = v32[1];
  v34 = v32[2];
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
  }

  else
  {
    v36 = result;
    v37 = *v32;
    v38 = sub_1C0FFF3A8(v26);
    v39 = (v30 + v26[38]);
    v40 = *v39;
    v41 = v39[1];
    v42 = v44;
    WitnessTable = swift_getWitnessTable();
    View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v36, v37, v35, v40, v41, v42, WitnessTable, v38);
    return (*(v45 + 8))(v25, v42);
  }

  return result;
}

uint64_t sub_1C10062AC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v61 = a8;
  v71 = a3;
  v72 = a5;
  v63 = a1;
  v66 = a9;
  v69 = a2;
  v70 = a4;
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  v14 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1C1001354();
  v92[4] = WitnessTable;
  v92[5] = v16;
  v73 = MEMORY[0x1E697E858];
  v17 = swift_getWitnessTable();
  v93 = a2;
  v94 = a3;
  v95 = a4;
  v96 = v14;
  v18 = a6;
  v97 = a6;
  v98 = a7;
  v99 = v17;
  type metadata accessor for PhotosDraggableForEach();
  swift_getTupleTypeMetadata2();
  v60 = sub_1C1265B00();
  v59 = swift_getWitnessTable();
  v19 = sub_1C12654C0();
  v20 = *(v19 - 8);
  v64 = v19;
  v65 = v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v58 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v52 - v23;
  v24 = sub_1C1263190();
  v92[2] = v17;
  v92[3] = v16;
  v25 = swift_getWitnessTable();
  v27 = v69;
  v26 = v70;
  v28 = v71;
  v93 = v69;
  v94 = v71;
  v95 = v70;
  v96 = v24;
  v29 = v18;
  v97 = v18;
  v98 = a7;
  v99 = v25;
  type metadata accessor for PhotosDraggableForEach();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v57 = swift_getWitnessTable();
  v68 = sub_1C12654C0();
  v55 = *(v68 - 8);
  v30 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v73 = &v52 - v32;
  v93 = v27;
  v94 = v28;
  v33 = v28;
  v34 = v72;
  v95 = v26;
  v96 = v72;
  v97 = v18;
  v98 = a7;
  v35 = v61;
  v99 = v61;
  v53 = type metadata accessor for PhotosItemsRow();
  v36 = v63;
  v56 = sub_1C0FFF3A8(v53);
  v82 = v27;
  v83 = v33;
  v84 = v26;
  v85 = v34;
  v86 = v29;
  v87 = a7;
  v88 = v35;
  v89 = v36;
  v37 = v35;
  sub_1C1012734();
  v38 = v67;
  sub_1C12654B0();
  v39 = v68;
  v54 = swift_getWitnessTable();
  sub_1C0FDBA4C(v38, v39, v54);
  v40 = v55;
  v56 = *(v55 + 8);
  v57 = v55 + 8;
  (*&v56)(v38, v39);
  sub_1C0FFF3A8(v53);
  v74 = v69;
  v75 = v71;
  v76 = v70;
  v77 = v72;
  v78 = v29;
  v79 = a7;
  v80 = v37;
  v81 = v36;
  sub_1C1012734();
  v41 = v58;
  sub_1C12654B0();
  v42 = v64;
  v43 = swift_getWitnessTable();
  v44 = v62;
  sub_1C0FDBA4C(v41, v42, v43);
  v45 = v65;
  v46 = *(v65 + 8);
  v46(v41, v42);
  v47 = *(v40 + 16);
  v48 = v67;
  v49 = v68;
  v47(v67, v73, v68);
  v93 = v48;
  (*(v45 + 16))(v41, v44, v42);
  v94 = v41;
  v92[0] = v49;
  v92[1] = v42;
  v90 = v54;
  v91 = v43;
  sub_1C119EE80(&v93, 2, v92);
  v46(v44, v42);
  v50 = v56;
  (*&v56)(v73, v49);
  v46(v41, v42);
  return (*&v50)(v48, v49);
}

uint64_t sub_1C1006864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v70 = a9;
  v71 = a4;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v83 = a4;
  v84 = a5;
  v65 = a5;
  v85 = a6;
  v86 = a7;
  v87 = a8;
  v66 = a8;
  v17 = type metadata accessor for PhotosItemsRow();
  v68 = *(v17 - 1);
  v69 = *(v68 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v67 = &v55 - v19;
  v63 = *(a2 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v62 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v55 - v22;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v83 = a4;
  v84 = a5;
  v85 = a6;
  v86 = a7;
  v23 = a6;
  v57 = a6;
  v24 = a7;
  v58 = a7;
  v87 = a8;
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  sub_1C1263190();
  v25 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1C1001354();
  v80 = WitnessTable;
  v81 = v27;
  v78 = swift_getWitnessTable();
  v79 = v27;
  v61 = v25;
  v59 = swift_getWitnessTable();
  v28 = a2;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v83 = v71;
  v84 = v25;
  v85 = v23;
  v86 = v24;
  v87 = v59;
  v29 = type metadata accessor for PhotosDraggableForEach();
  v64 = *(v29 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v60 = &v55 - v33;
  v34 = v62;
  sub_1C0FFF978(v72, v62, v17);
  v35 = *(v63 + 8);
  v55 = a2;
  v35(v34, a2);
  v63 = *(a1 + v17[20]);
  sub_1C0FDB0A8(a1 + v17[26], &v82);
  v36 = *(a1 + v17[29]);
  v37 = (a1 + v17[30]);
  v39 = *v37;
  v38 = v37[1];
  v62 = v39;
  v56 = v38;
  v40 = v68;
  v41 = v67;
  (*(v68 + 16))(v67, a1, v17);
  v42 = (*(v40 + 80) + 72) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 2) = v28;
  *(v43 + 3) = a3;
  v44 = v65;
  *(v43 + 4) = v71;
  *(v43 + 5) = v44;
  v45 = v58;
  *(v43 + 6) = v57;
  *(v43 + 7) = v45;
  *(v43 + 8) = v66;
  (*(v40 + 32))(&v43[v42], v41, v17);
  v46 = v36;

  v47 = v63;

  v48 = v62;
  v49 = v56;
  sub_1C0FCF1B4(v62);
  sub_1C1039330(v47, 0, &v82, v46, v48, v49, sub_1C1008A0C, v32, v43, v55);
  v50 = swift_getWitnessTable();
  v51 = v60;
  sub_1C0FDBA4C(v32, v29, v50);
  v52 = v64;
  v53 = *(v64 + 8);
  v53(v32, v29);
  (*(v52 + 16))(v32, v51, v29);
  v76 = 0;
  v77 = 1;
  *&v82 = v32;
  *(&v82 + 1) = &v76;
  v75[0] = v29;
  v75[1] = MEMORY[0x1E6981840];
  v73 = v50;
  v74 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v82, 2, v75);
  v53(v51, v29);
  return (v53)(v32, v29);
}

uint64_t sub_1C1006E5C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t a5)
{
  v56 = a4;
  v63 = *(a3 - 8);
  v64 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v61 = v8;
  v62 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v9;
  v69 = v10;
  v11 = v9;
  v58 = v9;
  v59 = v12;
  v70 = v12;
  v71 = v13;
  v14 = v12;
  v15 = v13;
  v60 = v13;
  v72 = v8;
  v73 = v16;
  v17 = v8;
  v18 = v16;
  v74 = a5;
  v19 = type metadata accessor for PhotosItemsRow.ItemContainerView();
  v57 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v55 = sub_1C1263190();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v65 = &v54 - v22;
  v68 = v11;
  v69 = a3;
  v70 = v14;
  v71 = v15;
  v72 = v17;
  v73 = v18;
  v74 = a5;
  v23 = type metadata accessor for PhotosItemsRow();
  v24 = a2;
  v25 = (a2 + v23[31]);
  v26 = *v25;
  v27 = v25[1];
  v28 = v62;
  (*(v63 + 16))(v62, v64, a3);
  v64 = v21;
  sub_1C1004A6C(v26, v27, v28, a3, v21);

  result = sub_1C1264420();
  v30 = (v24 + v23[21]);
  v31 = v30[1];
  v32 = v30[2];
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    __break(1u);
  }

  else
  {
    v34 = result;
    v35 = *v30;
    v36 = sub_1C0FFF3A8(v23);
    v37 = (v24 + v23[38]);
    v38 = *v37;
    v39 = v37[1];
    WitnessTable = swift_getWitnessTable();
    v41 = v38;
    v42 = v64;
    View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v34, v35, v33, v41, v39, v19, WitnessTable, v36);
    (*(v57 + 8))(v42, v19);
    result = sub_1C1264440();
    v43 = *(v24 + v23[22]);
    if (!__OFSUB__(v43, 1))
    {
      v44 = result;
      v45 = sub_1C0FFF204(v23);
      v46 = sub_1C12659B0();
      v48 = v47;
      v49 = sub_1C1001354();
      v66 = WitnessTable;
      v67 = v49;
      v50 = v55;
      v51 = swift_getWitnessTable();
      v52 = v46;
      v53 = v65;
      View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v44, v43, v43 - 1, v52, v48, v50, v51, v45);
      return (*(v54 + 8))(v53, v50);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1007238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v58 = a3;
  v72 = a9;
  *&v81 = a2;
  *(&v81 + 1) = a3;
  v82 = a4;
  v83 = a5;
  v67 = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v68 = a8;
  v16 = type metadata accessor for PhotosItemsRow();
  v70 = *(v16 - 1);
  v71 = *(v70 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v69 = &v54 - v18;
  v65 = *(a2 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v73 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - v21;
  *&v81 = a2;
  v23 = a2;
  v24 = v58;
  *(&v81 + 1) = v58;
  v82 = a4;
  v61 = a4;
  v83 = a5;
  v84 = a6;
  v25 = a6;
  v60 = a6;
  v85 = a7;
  v86 = a8;
  v59 = a7;
  type metadata accessor for PhotosItemsRow.ItemContainerView();
  v26 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1C1001354();
  v79 = WitnessTable;
  v80 = v28;
  v64 = v26;
  v62 = swift_getWitnessTable();
  *&v81 = v23;
  *(&v81 + 1) = v24;
  v82 = a4;
  v83 = v26;
  v84 = v25;
  v85 = a7;
  v86 = v62;
  v29 = type metadata accessor for PhotosDraggableForEach();
  v66 = *(v29 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v63 = &v54 - v33;
  sub_1C0FFF978(v22, v73, v16);
  v34 = *(v65 + 8);
  v55 = v23;
  v34(v22, v23);
  v65 = *(a1 + v16[20]);
  sub_1C0FDB0A8(a1 + v16[26], &v81);
  v35 = *(a1 + v16[29]);
  v36 = (a1 + v16[30]);
  v38 = *v36;
  v37 = v36[1];
  v57 = v38;
  v56 = v37;
  v39 = v69;
  v40 = v70;
  (*(v70 + 16))(v69, a1, v16);
  v41 = (*(v40 + 80) + 72) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 2) = v23;
  *(v42 + 3) = v24;
  v43 = v67;
  *(v42 + 4) = v61;
  *(v42 + 5) = v43;
  v44 = v59;
  *(v42 + 6) = v60;
  *(v42 + 7) = v44;
  *(v42 + 8) = v68;
  (*(v40 + 32))(&v42[v41], v39, v16);
  v45 = v35;

  v46 = v65;

  v47 = v57;
  v48 = v56;
  sub_1C0FCF1B4(v57);
  sub_1C1039330(v46, 0, &v81, v45, v47, v48, sub_1C1008844, v32, v42, v55);
  v49 = swift_getWitnessTable();
  v50 = v63;
  sub_1C0FDBA4C(v32, v29, v49);
  v51 = v66;
  v52 = *(v66 + 8);
  v52(v32, v29);
  (*(v51 + 16))(v32, v50, v29);
  v77 = 0;
  v78 = 1;
  *&v81 = v32;
  *(&v81 + 1) = &v77;
  v76[0] = v29;
  v76[1] = MEMORY[0x1E6981840];
  v74 = v49;
  v75 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v81, 2, v76);
  v52(v50, v29);
  return (v52)(v32, v29);
}

uint64_t sub_1C10077E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v39[0] = a6;
  v42 = a7;
  v43 = a2;
  v40 = a1;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v14;
  v45 = v15;
  v39[1] = v14;
  v39[2] = v16;
  v46 = v16;
  v47 = v17;
  v18 = v17;
  v39[3] = v17;
  v39[4] = v19;
  v48 = v19;
  v49 = v20;
  v21 = v19;
  v50 = a8;
  v22 = type metadata accessor for PhotosItemsRow.ItemContainerView();
  v41 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v39 - v23;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = v18;
  v48 = v21;
  v49 = v39[0];
  v50 = a8;
  v25 = type metadata accessor for PhotosItemsRow();
  v26 = (v43 + v25[31]);
  v27 = *v26;
  v28 = v26[1];
  (*(v11 + 16))(v13, v40, a4);
  sub_1C1004A6C(v27, v28, v13, a4, v24);

  LOBYTE(v13) = sub_1C1264420();
  v29 = v43;
  v30 = (v43 + v25[21]);
  v31 = *v30;
  v32 = v30[1];
  v33 = sub_1C0FFF3A8(v25);
  v34 = (v29 + v25[38]);
  v35 = *v34;
  v36 = v34[1];
  WitnessTable = swift_getWitnessTable();
  View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v13, v31, v32, v35, v36, v22, WitnessTable, v33);
  return (*(v41 + 8))(v24, v22);
}

unint64_t sub_1C1007AA0()
{
  result = qword_1EBE90B98;
  if (!qword_1EBE90B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosClipStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

void sub_1C1007C00()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C1266F10();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PhotosScrollViewModel();
      sub_1C1265790();
      if (v2 <= 0x3F)
      {
        sub_1C1007FD0(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_getExtendedExistentialTypeMetadata();
          sub_1C1007FD0(319, qword_1EDE77830, &type metadata for ScrollViewGeometryChangeHandler, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C1007FD0(319, &qword_1EDE77500, MEMORY[0x1E697E0C8], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1C1007F24();
              if (v6 <= 0x3F)
              {
                sub_1C1007F88();
                if (v7 <= 0x3F)
                {
                  sub_1C1007FD0(319, &qword_1EDE775A0, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1C1007FD0(319, &qword_1EDE775B0, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1C1007FD0(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
                      {
                        sub_1C1007FD0(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_1C1007F24()
{
  if (!qword_1EDE768F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90BA0);
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE768F0);
    }
  }
}

unint64_t sub_1C1007F88()
{
  result = qword_1EDE76900;
  if (!qword_1EDE76900)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDE76900);
  }

  return result;
}

void sub_1C1007FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C1008028()
{
  result = sub_1C1007F88();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C10080B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1C1008230(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C10084D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  OUTLINED_FUNCTION_39_2();
  v5 = type metadata accessor for PhotosItemsRow();
  OUTLINED_FUNCTION_15(v5);
  return sub_1C1005E20(a1, v2 + ((*(v6 + 80) + 72) & ~*(v6 + 80)), a2);
}

uint64_t sub_1C10085A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_39_2();
  v5 = type metadata accessor for PhotosItemsRow();
  OUTLINED_FUNCTION_15(v5);
  return sub_1C1005EC0(a1, a2, v2 + ((*(v6 + 80) + 72) & ~*(v6 + 80)));
}

uint64_t sub_1C100867C(uint64_t a1)
{
  v2 = sub_1C1263320();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C100873C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_41Tm()
{
  v36 = *(v0 + 16);
  v3 = type metadata accessor for PhotosItemsRow();
  OUTLINED_FUNCTION_30_0();
  v12 = OUTLINED_FUNCTION_31_3(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  (*(v13 + 8))(v1, v12);

  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_4_2();
  (*(v14 + 8))(v1 + v2);
  OUTLINED_FUNCTION_48_1(v3[25]);

  __swift_destroy_boxed_opaque_existential_0Tm(v1 + v3[26]);
  if (*(v1 + v3[27]))
  {
  }

  if (*(v1 + v3[30]))
  {
  }

  OUTLINED_FUNCTION_48_1(v3[31]);

  OUTLINED_FUNCTION_43_0(v1 + v3[32]);
  OUTLINED_FUNCTION_27_1(v3[33]);
  OUTLINED_FUNCTION_27_1(v3[34]);
  OUTLINED_FUNCTION_1_10(v1 + v3[35]);
  OUTLINED_FUNCTION_27_1(v3[36]);
  return swift_deallocObject();
}

uint64_t sub_1C1008A24(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v10 = *(v2 + 8);
  v11 = type metadata accessor for PhotosItemsRow();
  OUTLINED_FUNCTION_15(v11);
  return a2(a1, &v2[(*(v12 + 80) + 72) & ~*(v12 + 80)], v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C1008B38()
{
  result = qword_1EBE90BB0;
  if (!qword_1EBE90BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90BB0);
  }

  return result;
}

uint64_t sub_1C1008B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = (MEMORY[0x1EEE9AC00])();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  v12();
  sub_1C0FDBA4C(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_1C0FDBA4C(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t sub_1C1008CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v10 = type metadata accessor for PhotosItemsRow();
  OUTLINED_FUNCTION_40_1(v10);
  OUTLINED_FUNCTION_53();
  return sub_1C10047F4(a1, v2 + v12, *v11, v11[1], v5, a2, v6, v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return type metadata accessor for PhotosScrollViewModel();
}

uint64_t OUTLINED_FUNCTION_54_0(uint64_t a1, double a2)
{
  *(v2 - 104) = a2;
  *(v2 - 96) = a1;

  return type metadata accessor for PhotosDraggableForEach();
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t Color.platformColor.getter()
{
  sub_1C1008F18();

  return sub_1C1266680();
}

unint64_t sub_1C1008F18()
{
  result = qword_1EDE76940;
  if (!qword_1EDE76940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE76940);
  }

  return result;
}

uint64_t sub_1C1008F5C()
{
  v0 = PXBackgroundColor();
  result = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  qword_1EDE7B860 = result;
  return result;
}

uint64_t sub_1C10091F0(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  *a3 = result;
  return result;
}

uint64_t sub_1C100925C()
{
  if (qword_1EDE7B848 != -1)
  {
    swift_once();
  }

  qword_1EDE7B870 = qword_1EDE7B850;
}

uint64_t sub_1C10092E4(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C100933C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_1();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1C1009388()
{
  result = qword_1EDE76F60;
  if (!qword_1EDE76F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F60);
  }

  return result;
}

uint64_t sub_1C10093DC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosItemCellUsesSpaceLimitedLayout.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*EnvironmentValues.photosItemCellUsesSpaceLimitedLayout.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1009388();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C10094BC;
}

uint64_t sub_1C10094E8(void (*a1)(void))
{
  a1();
  sub_1C12637F0();
  return v2;
}

unint64_t sub_1C1009530()
{
  result = qword_1EDE76FA0;
  if (!qword_1EDE76FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FA0);
  }

  return result;
}

uint64_t sub_1C1009584@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosItemCellShowCount.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*EnvironmentValues.photosItemCellShowCount.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1009530();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C10096AC;
}

uint64_t PhotosUtilityItemCell.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhotosUtilityItemCell();
  v7 = a3 + v6[11];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a3 + v6[12];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a3 + v6[13];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = v6[14];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a3 + v10), __src, 0xD1uLL);
  v11 = v6[15];
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  sub_1C1009908();
  sub_1C1009908();
  sub_1C1009908();
  *(a3 + v6[19]) = 0x403D000000000000;
  v12 = v6[20];
  if (qword_1EDE7B890 != -1)
  {
    swift_once();
  }

  *(a3 + v12) = qword_1EDE7B898;
  v13 = v6[21];
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BD8);
  swift_storeEnumTagMultiPayload();
  (*(*(a2 - 8) + 32))(a3, a1, a2);
}

uint64_t sub_1C1009950@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 44);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    *a2 = v11;
  }

  else
  {

    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v11, 0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_1C1009AAC(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C1009C00(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C1009D54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 56);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1009F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FDB800(v2 + *(a1 + 60), &v15 - v10, &qword_1EBE904D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C100A198(uint64_t a1)
{
  sub_1C1263130();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1C1263580();
}

uint64_t sub_1C100A254(uint64_t a1)
{
  v2 = sub_1C1263130();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1C1009F70(a1, &v12 - v7);
  (*(v3 + 104))(v6, *MEMORY[0x1E697E6C8], v2);
  sub_1C100DC14(&qword_1EDE7BF98, MEMORY[0x1E697E730]);
  v9 = sub_1C1265D90();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  return v9 & 1;
}

uint64_t sub_1C100A3D4(uint64_t a1)
{
  result = (*(*(a1 + 24) + 16))(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C100A410(uint64_t a1)
{
  result = (*(*(a1 + 24) + 48))(*(a1 + 16));
  if (!v3)
  {
    return sub_1C100A3D4(a1);
  }

  return result;
}

uint64_t sub_1C100A454(uint64_t a1)
{
  (*(*(a1 + 24) + 24))(*(a1 + 16));
  if (v1)
  {
    return 0;
  }

  sub_1C100DC5C();
  return sub_1C12667D0();
}

double sub_1C100A4BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
  sub_1C1262BF0();
  return v1;
}

double sub_1C100A508()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
  sub_1C1262BF0();
  return v1;
}

double sub_1C100A554()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
  sub_1C1262BF0();
  return v1;
}

uint64_t sub_1C100A5A0(uint64_t a1)
{
  sub_1C1009950(a1, &v5);
  if (v5)
  {
    sub_1C1009950(a1, &v4);
    if (v4 == 2)
    {
      sub_1C100A508();
    }

    else
    {
      sub_1C1009950(a1, &v3);
      sub_1C100A554();
    }
  }

  else
  {
    sub_1C100A4BC();
  }

  return sub_1C100A254(a1);
}

uint64_t sub_1C100A6B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C38);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C0FDB800(a1, &v5 - v3, &qword_1EBE90C38);
  return sub_1C1263750();
}

uint64_t PhotosUtilityItemCell.body.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C0FDB6D4(&qword_1EDE76B20, &qword_1EBE90BE0);
  *a2 = sub_1C12659A0();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BE8);
  v7 = a1[2];
  v8 = a1[4];
  sub_1C100AA6C(v2, v7, a1[3], a2 + *(v6 + 44));
  sub_1C0FDB6D4(&qword_1EDE76B90, &qword_1EBE90BF0);
  sub_1C100AE3C();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BF8) + 36)) = 0;
  sub_1C100C6EC();
  sub_1C0FDB6D4(&unk_1EDE76D60, &qword_1EBE90C00);
  v9 = sub_1C1264470();
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C10) + 36);
  *v10 = 1;
  v10[8] = v9;
  sub_1C1009D54(a1, v20);
  sub_1C100C7D0(v20);
  v11 = v20[0];
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C18) + 36);
  v13 = *(sub_1C1263320() + 20);
  v14 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  (*(v15 + 104))(&v12[v13], v14);
  *v12 = v11;
  *(v12 + 1) = v11;
  sub_1C100C824();
  sub_1C100DC14(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40) + 36)] = 256;
  v19[3] = v7;
  v19[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v2, v7);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C28) + 36);
  sub_1C0FDB0A8(v19, v17);
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((v17 + 40), __src, 0xD1uLL);
  *(v17 + 256) = swift_getKeyPath();
  *(v17 + 264) = 0;
  *(v17 + 272) = swift_getKeyPath();
  *(v17 + 280) = 0;
  *(v17 + 288) = swift_getKeyPath();
  *(v17 + 296) = 0;
  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

uint64_t sub_1C100AA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C40);
  v7 = MEMORY[0x1EEE9AC00](v28);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C48);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C50);
  sub_1C0FDB6D4(&qword_1EDE76B28, &qword_1EBE90C50);
  *v16 = sub_1C10A7F5C();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C58);
  sub_1C100AE90(a2, a3, &v16[*(v17 + 44)]);
  sub_1C1265150();
  v18 = sub_1C12651E0();

  v19 = *(a1 + *(type metadata accessor for PhotosUtilityItemCell() + 80));
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDE82B08;
  v21 = qword_1EDE82B10;
  v22 = qword_1EDE82B28;
  *v10 = v18;
  *(v10 + 4) = 514;
  *(v10 + 2) = v20;
  *(v10 + 3) = v21;
  *(v10 + 2) = xmmword_1EDE82B18;
  *(v10 + 6) = v22;
  *(v10 + 7) = 0;
  *(v10 + 8) = v19;
  *(v10 + 9) = swift_getKeyPath();
  v10[104] = 0;
  *(v10 + 14) = swift_getKeyPath();
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 145) = 0u;
  *(v10 + 21) = swift_getKeyPath();
  v10[176] = 0;
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();

  sub_1C12628D0();
  sub_1C0FDB800(v16, v14, &qword_1EBE90C48);
  v23 = v29;
  sub_1C0FDB800(v10, v29, &qword_1EBE90C40);
  v24 = v30;
  sub_1C0FDB800(v14, v30, &qword_1EBE90C48);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C60);
  sub_1C0FDB800(v23, v24 + *(v25 + 48), &qword_1EBE90C40);
  sub_1C0FD1A5C(v10, &qword_1EBE90C40);
  sub_1C0FD1A5C(v16, &qword_1EBE90C48);
  sub_1C0FD1A5C(v23, &qword_1EBE90C40);
  return sub_1C0FD1A5C(v14, &qword_1EBE90C48);
}

unint64_t sub_1C100AE3C()
{
  result = qword_1EDE7B780;
  if (!qword_1EDE7B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B780);
  }

  return result;
}

uint64_t sub_1C100AE90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C68);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C70);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C78);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - v17;
  *v18 = sub_1C12638E0();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C80);
  sub_1C100B1E0(a1, a2, &v18[*(v19 + 44)]);
  v20 = type metadata accessor for PhotosUtilityItemCell();
  v21 = 1;
  if (sub_1C100A254(v20))
  {
    *v6 = sub_1C12638E0();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C90);
    sub_1C100C320(&v6[*(v22 + 44)]);
    v23 = sub_1C1264470();
    v24 = &v6[*(v34 + 36)];
    *v24 = v23;
    *(v24 + 8) = xmmword_1C12A7250;
    __asm { FMOV            V0.2D, #12.0 }

    *(v24 + 24) = _Q0;
    v24[40] = 0;
    sub_1C0FDB71C(v6, v12, &qword_1EBE90C68);
    v21 = 0;
  }

  __swift_storeEnumTagSinglePayload(v12, v21, 1, v34);
  sub_1C0FDB800(v18, v16, &qword_1EBE90C78);
  sub_1C0FDB800(v12, v10, &qword_1EBE90C70);
  v30 = v33;
  sub_1C0FDB800(v16, v33, &qword_1EBE90C78);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C88);
  sub_1C0FDB800(v10, v30 + *(v31 + 48), &qword_1EBE90C70);
  sub_1C0FD1A5C(v12, &qword_1EBE90C70);
  sub_1C0FD1A5C(v18, &qword_1EBE90C78);
  sub_1C0FD1A5C(v10, &qword_1EBE90C70);
  return sub_1C0FD1A5C(v16, &qword_1EBE90C78);
}

uint64_t sub_1C100B1E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v48 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CC8);
  v8 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v48 - v12;
  v13 = sub_1C12659A0();
  v56 = v14;
  v57 = v13;
  sub_1C100B6D0(a1, a2, v59);
  memcpy(v60, v59, sizeof(v60));
  memcpy(v61, v59, sizeof(v61));
  sub_1C0FDB800(v60, v58, &qword_1EBE90CD0);
  sub_1C0FD1A5C(v61, &qword_1EBE90CD0);
  memcpy(__dst, v60, sizeof(__dst));
  v15 = type metadata accessor for PhotosUtilityItemCell();
  v16 = sub_1C100A254(v15);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  KeyPath = 0;
  v22 = 0;
  if ((v16 & 1) == 0)
  {
    if (sub_1C1009AAC(v15))
    {
      sub_1C100A410(v15);
    }

    else
    {
      sub_1C100A3D4(v15);
    }

    sub_1C1264530();
    v17 = sub_1C1264870();
    v18 = v23;
    v25 = v24;
    v20 = v26;

    KeyPath = swift_getKeyPath();
    v19 = v25 & 1;
    sub_1C0FDB850(v17, v18, v25 & 1);

    v22 = 2;
  }

  v49 = v22;
  v50 = v20;
  v27 = v53;
  sub_1C100B98C(v15, v53);
  v28 = KeyPath;
  v29 = v18;
  v30 = sub_1C1264460();
  sub_1C1009950(v15, v59);
  sub_1C12628A0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v51;
  sub_1C0FDB71C(v27, v51, &qword_1EBE90CC0);
  v40 = v39 + *(v52 + 36);
  *v40 = v30;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  v41 = v39;
  v42 = v54;
  sub_1C0FDB71C(v41, v54, &qword_1EBE90CC8);
  v43 = v55;
  sub_1C0FDB800(v42, v55, &qword_1EBE90CC8);
  v58[0] = v57;
  v58[1] = v56;
  memcpy(&v58[2], __dst, 0x80uLL);
  memcpy(a3, v58, 0x90uLL);
  *(a3 + 144) = v17;
  *(a3 + 152) = v29;
  v45 = v49;
  v44 = v50;
  *(a3 + 160) = v19;
  *(a3 + 168) = v44;
  *(a3 + 176) = v28;
  *(a3 + 184) = v45;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CD8);
  sub_1C0FDB800(v43, a3 + *(v46 + 80), &qword_1EBE90CC8);
  sub_1C0FDB800(v58, v59, &qword_1EBE90CE0);
  sub_1C100D6EC(v17, v29, v19, v44);
  sub_1C100D73C(v17, v29, v19, v44);
  sub_1C0FD1A5C(v42, &qword_1EBE90CC8);
  sub_1C0FD1A5C(v43, &qword_1EBE90CC8);
  sub_1C100D73C(v17, v29, v19, v44);
  v59[0] = v57;
  v59[1] = v56;
  memcpy(&v59[2], __dst, 0x80uLL);
  return sub_1C0FD1A5C(v59, &qword_1EBE90CE0);
}

uint64_t sub_1C100B6D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = sub_1C1265170();
  v6 = type metadata accessor for PhotosUtilityItemCell();
  sub_1C100A5A0(v6);
  sub_1C100A5A0(v6);
  sub_1C12659A0();
  sub_1C1262C80();
  v7 = v28;
  v8 = v29;
  v9 = v30;
  v10 = v31;
  v19 = v33;
  v20 = v32;
  v27 = v29;
  v26 = v31;
  v25 = 0;
  v11 = sub_1C12659A0();
  v21 = v12;
  v22 = v11;
  sub_1C100B83C(a1, a2, v24);
  v13 = v24[0];
  v14 = v24[1];
  v15 = v24[2];
  v16 = v24[3];
  v17 = v24[4];
  sub_1C100DCB0(v24[0]);
  result = sub_1C100DD20(v13);
  *a3 = v23;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v20;
  *(a3 + 48) = v19;
  *(a3 + 56) = 0x3FF0000000000000;
  *(a3 + 64) = 0;
  *(a3 + 72) = v13;
  *(a3 + 80) = v14;
  *(a3 + 88) = v15;
  *(a3 + 96) = v16;
  *(a3 + 104) = v17;
  *(a3 + 112) = v22;
  *(a3 + 120) = v21;
  return result;
}

uint64_t sub_1C100B83C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = (*(a2 + 32))(a1, a2);
  if (v5)
  {
    v15[0] = result;
    v15[1] = v5;
    v16 = 1;
    if (qword_1EDE7B058 != -1)
    {
      swift_once();
    }

    v11 = qword_1EDE7B060;
    v12 = dword_1EDE7B068;
    v13 = BYTE2(dword_1EDE7B068);
    v14 = 1;
    PhotosPrefetchableImage(_:font:)(v15, &v11, &v17);
    sub_1C100DC0C();
    v10 = v17;
    v6 = v18;
    if (qword_1EDE76CF0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDE76CF8;
    KeyPath = swift_getKeyPath();

    v9 = v10;
  }

  else
  {
    v6 = 0;
    KeyPath = 0;
    v7 = 0;
    v9 = 0uLL;
  }

  *a3 = v9;
  *(a3 + 16) = v6;
  *(a3 + 24) = KeyPath;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_1C100B98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CE8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CF0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61[-v9];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CF8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34();
  v77 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D00);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v78 = v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D08);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v73 = v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61[-v19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D10);
  OUTLINED_FUNCTION_0();
  v69 = v22;
  v70 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61[-v24];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61[-v27];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34();
  v74 = v30;
  (*(*(a1 + 24) + 40))(&v86, *(a1 + 16));
  if (v86 - 2 < 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_1C100D78C();
    return sub_1C1263C20();
  }

  v65 = v13;
  v66 = v7;
  v64 = v10;
  v67 = a2;
  if (v86)
  {
    v80 = xmmword_1C12A7260;
    LOBYTE(v81) = 0;
    v85 = 0;
    v55 = v64;
    if (qword_1EDE7B058 != -1)
    {
      swift_once();
    }

    v83 = qword_1EDE7B060;
    v84 = dword_1EDE7B068;
    PhotosPrefetchableImage(_:imageScale:font:)();
    sub_1C100DC0C();
    if (qword_1EDE76CF0 != -1)
    {
      OUTLINED_FUNCTION_2_12();
    }

    v56 = qword_1EDE76CF8;
    KeyPath = swift_getKeyPath();
    v58 = &v6[*(v79 + 36)];
    *v58 = KeyPath;
    v58[1] = v56;
    sub_1C0FDB800(v6, v77, &qword_1EBE90CE8);
    swift_storeEnumTagMultiPayload();
    sub_1C100D818();
    sub_1C100D9E4();

    v59 = v78;
    sub_1C1263C20();
    sub_1C0FDB800(v59, v55, &qword_1EBE90D00);
    swift_storeEnumTagMultiPayload();
    sub_1C100D78C();
    sub_1C1263C20();
    sub_1C0FD1A5C(v59, &qword_1EBE90D00);
    return sub_1C0FD1A5C(v6, &qword_1EBE90CE8);
  }

  else
  {
    if ((sub_1C1009C00(a1) & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      sub_1C100D8A4();
      OUTLINED_FUNCTION_9_10();
      goto LABEL_15;
    }

    sub_1C100A454(a1);
    sub_1C1264530();
    v32 = sub_1C1264870();
    v34 = v33;
    v36 = v35;

    if (qword_1EDE76CF0 != -1)
    {
      OUTLINED_FUNCTION_2_12();
    }

    *&v80 = qword_1EDE76CF8;

    v37 = sub_1C1264850();
    v38 = v32;
    v39 = v37;
    v41 = v40;
    v43 = v42;
    v44 = v34;
    v46 = v45;
    sub_1C0FDB8E8(v38, v44, v36 & 1);

    v47 = v39;

    *&v80 = v39;
    *(&v80 + 1) = v41;
    v63 = v41;
    v62 = v43 & 1;
    LOBYTE(v81) = v43 & 1;
    v82 = v46;
    v48 = *MEMORY[0x1E697E6D0];
    v49 = sub_1C1263130();
    OUTLINED_FUNCTION_3();
    (*(v50 + 104))(v20, v48, v49);
    sub_1C100DC14(&qword_1EDE7BF90, MEMORY[0x1E697E730]);
    result = sub_1C1265DE0();
    if (result)
    {
      v51 = sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
      v52 = MEMORY[0x1E6981138];
      v53 = v68;
      sub_1C1264BC0();
      sub_1C0FD1A5C(v20, &qword_1EBE92FE0);
      sub_1C0FDB8E8(v47, v63, v62);

      *&v80 = MEMORY[0x1E6981148];
      *(&v80 + 1) = v53;
      v81 = v52;
      v82 = v51;
      swift_getOpaqueTypeConformance2();
      v54 = v70;
      sub_1C1264DF0();
      (*(v69 + 8))(v25, v54);
      sub_1C0FDB800(v28, v73, &qword_1EBE90D18);
      swift_storeEnumTagMultiPayload();
      sub_1C100D8A4();
      OUTLINED_FUNCTION_9_10();
      sub_1C0FD1A5C(v28, &qword_1EBE90D18);
LABEL_15:
      sub_1C0FDB800(v25, v77, &qword_1EBE90D20);
      swift_storeEnumTagMultiPayload();
      sub_1C100D818();
      sub_1C100D9E4();
      v60 = v78;
      sub_1C1263C20();
      sub_1C0FDB800(v60, v64, &qword_1EBE90D00);
      swift_storeEnumTagMultiPayload();
      sub_1C100D78C();
      sub_1C1263C20();
      sub_1C0FD1A5C(v60, &qword_1EBE90D00);
      return sub_1C0FD1A5C(v25, &qword_1EBE90D20);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C100C320@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C98);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v12 - v6);
  *v7 = sub_1C12659A0();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CA0);
  sub_1C100C494(v7 + *(v9 + 44));
  sub_1C0FDB800(v7, v5, &qword_1EBE90C98);
  sub_1C0FDB800(v5, a1, &qword_1EBE90C98);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CA8) + 48);
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_1C0FD1A5C(v7, &qword_1EBE90C98);
  return sub_1C0FD1A5C(v5, &qword_1EBE90C98);
}

uint64_t sub_1C100C494@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CB0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PhotosUtilityItemCell();
  v10 = sub_1C100A3D4(v9);
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v18 = xmmword_1C12A7270;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  sub_1C1265090();
  v14 = *(v3 + 16);
  v14(v6, v8, v2);
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CB8);
  v14((a1 + *(v15 + 48)), v6, v2);
  sub_1C0FDB850(v10, v12, 0);
  v16 = *(v3 + 8);

  v16(v8, v2);
  v16(v6, v2);
  sub_1C0FDB8E8(v10, v12, 0);
}

unint64_t sub_1C100C6EC()
{
  result = qword_1EDE772E8;
  if (!qword_1EDE772E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90BF8);
    sub_1C0FDB6D4(&qword_1EDE76B90, &qword_1EBE90BF0);
    sub_1C0FDB6D4(&unk_1EDE7BB80, &qword_1EBE90C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772E8);
  }

  return result;
}

unint64_t sub_1C100C824()
{
  result = qword_1EDE77180;
  if (!qword_1EDE77180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C10);
    sub_1C100C6EC();
    sub_1C0FDB6D4(&qword_1EDE76D90, &qword_1EBE90C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77180);
  }

  return result;
}

uint64_t sub_1C100C8E0()
{
  OUTLINED_FUNCTION_35();
  v0 = EnvironmentValues.photosSelectionIgnored.getter();
  return OUTLINED_FUNCTION_12(v0);
}

void sub_1C100C978()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C100D318(319, &qword_1EDE77640);
    if (v1 <= 0x3F)
    {
      sub_1C100D318(319, &qword_1EDE77540);
      if (v2 <= 0x3F)
      {
        sub_1C100D318(319, &qword_1EDE77600);
        if (v3 <= 0x3F)
        {
          sub_1C100D364();
          if (v4 <= 0x3F)
          {
            sub_1C100D3BC();
            if (v5 <= 0x3F)
            {
              sub_1C100D46C();
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

uint64_t sub_1C100CAC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v35 = *(a3 + 16);
  v4 = *(v35 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1C1263130() - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
  v7 = *(v33 - 8);
  v8 = *(v7 + 84);
  v36 = v5;
  v34 = v8;
  if (v5 > v8)
  {
    v8 = v5;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1C12657D0() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v6 + 64);
  }

  v12 = *(v4 + 64);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (((*(v10 + 80) + 16) & ~*(v10 + 80)) + *(v10 + 64) <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = ((*(v10 + 80) + 16) & ~*(v10 + 80)) + *(v10 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 80) & 0xF8 | 7;
  v17 = v11 + v13 + 1;
  v18 = v14 + v13;
  v19 = v14 + 7;
  v20 = a1;
  if (a2 <= v9)
  {
    goto LABEL_33;
  }

  v21 = v15 + ((((((v19 + ((v18 + ((v18 + ((v17 + ((v16 + ((v12 + 55) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16)) & ~v13)) & ~v13)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + *(v10 + 80) + 8) & (*(v10 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 1;
  v22 = 8 * (v15 + ((((((v19 + ((v18 + ((v18 + ((v17 + ((v16 + ((v12 + 55) & 0xF8) - 47) & ~v16)) & ~v13)) & ~v13)) & ~v13)) & 0xF8) + 15) & 0xF8) + *(v10 + 80) + 8) & (*(v10 + 80) & 0xF8 ^ 0xF8)) + 1);
  if (v21 > 3)
  {
    goto LABEL_15;
  }

  v25 = ((a2 - v9 + ~(-1 << v22)) >> v22) + 1;
  if (HIWORD(v25))
  {
    v23 = *(a1 + v21);
    if (v23)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v25 <= 0xFF)
    {
      if (v25 < 2)
      {
        goto LABEL_33;
      }

LABEL_15:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_33;
      }

LABEL_23:
      v26 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v26 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v27 = v21;
        }

        else
        {
          v27 = 4;
        }

        switch(v27)
        {
          case 2:
            v28 = *a1;
            break;
          case 3:
            v28 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v28 = *a1;
            break;
          default:
            v28 = *a1;
            break;
        }
      }

      else
      {
        v28 = 0;
      }

      return v9 + (v28 | v26) + 1;
    }

    v23 = *(a1 + v21);
    if (*(a1 + v21))
    {
      goto LABEL_23;
    }
  }

LABEL_33:
  v29 = v36;
  if (v36 == v9)
  {
    v30 = v35;
LABEL_37:

    return __swift_getEnumTagSinglePayload(v20, v29, v30);
  }

  v31 = ~v13;
  v20 = (v17 + ((((a1 + v12 + 55) & 0xFFFFFFFFFFFFFFF8) + v16 + 209) & ~v16)) & v31;
  v29 = v34;
  if (v34 == v9)
  {
    v30 = v33;
    goto LABEL_37;
  }

  v32 = *((((v19 + ((v18 + ((v18 + v20) & v31)) & v31)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v32 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  return (v32 + 1);
}

void sub_1C100CEAC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v40 = *(a4 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1C1263130() - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
  v7 = *(v39 - 8);
  v8 = *(v7 + 84);
  v41 = v5;
  if (v5 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = v5;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1C12657D0() - 8);
  v12 = *(v11 + 80);
  v13 = ((v12 + 16) & ~v12) + *(v11 + 64);
  if (*(v6 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v6 + 64);
  }

  v15 = *(v4 + 64);
  v16 = *(v6 + 80) & 0xF8 | 7;
  v17 = *(v7 + 80);
  v18 = *(v7 + 64);
  v19 = v14 + v17 + 1;
  v20 = v18 + v17;
  v21 = (v18 + v17 + ((v18 + v17 + ((v19 + ((v16 + ((v15 + 55) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16)) & ~v17)) & ~v17)) & ~v17;
  v22 = v18 + 7;
  v23 = (((((v22 + v21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & (v12 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v24 = v13 + v23 + 1;
  v25 = 8 * v24;
  if (a3 <= v10)
  {
    v28 = 0;
    v26 = a1;
    v27 = a2;
  }

  else
  {
    v26 = a1;
    v27 = a2;
    if (v24 <= 3)
    {
      v32 = ((a3 - v10 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v32))
      {
        v28 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v28 = v33;
        }

        else
        {
          v28 = 0;
        }
      }
    }

    else
    {
      v28 = 1;
    }
  }

  if (v10 >= v27)
  {
    v31 = ~v17;
    switch(v28)
    {
      case 1:
        v26[v24] = 0;
        if (v27)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *&v26[v24] = 0;
        if (v27)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_56:
        __break(1u);
        return;
      case 4:
        *&v26[v24] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!v27)
        {
          return;
        }

LABEL_35:
        v35 = v41;
        if (v41 == v10)
        {
          v36 = v26;
          v37 = v40;
        }

        else
        {
          v36 = (v19 + (((&v26[v15 + 55] & 0xFFFFFFFFFFFFFFF8) + v16 + 209) & ~v16)) & v31;
          if (v8 != v10)
          {
            if ((v27 & 0x80000000) != 0)
            {
              v38 = v27 & 0x7FFFFFFF;
            }

            else
            {
              v38 = (v27 - 1);
            }

            *((((v22 + ((v20 + ((v20 + v36) & v31)) & v31)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = v38;
            return;
          }

          v35 = v8;
          v37 = v39;
        }

        __swift_storeEnumTagSinglePayload(v36, v27, v35, v37);
        break;
    }
  }

  else
  {
    v29 = ~v10 + v27;
    if (v24 < 4)
    {
      v30 = (v29 >> v25) + 1;
      if (v24)
      {
        v34 = v29 & ~(-1 << v25);
        bzero(v26, v24);
        if (v24 == 3)
        {
          *v26 = v34;
          v26[2] = BYTE2(v34);
        }

        else if (v24 == 2)
        {
          *v26 = v34;
        }

        else
        {
          *v26 = v29;
        }
      }
    }

    else
    {
      bzero(v26, v24);
      *v26 = v29;
      v30 = 1;
    }

    switch(v28)
    {
      case 1:
        v26[v24] = v30;
        break;
      case 2:
        *&v26[v24] = v30;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&v26[v24] = v30;
        break;
      default:
        return;
    }
  }
}

void sub_1C100D318(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C1262A70();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C100D364()
{
  if (!qword_1EDE77578)
  {
    sub_1C1263130();
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77578);
    }
  }
}

void sub_1C100D3BC()
{
  if (!qword_1EDE7BFE8)
  {
    sub_1C100D418();
    v0 = sub_1C1262C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE7BFE8);
    }
  }
}

unint64_t sub_1C100D418()
{
  result = qword_1EDE82F00;
  if (!qword_1EDE82F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82F00);
  }

  return result;
}

void sub_1C100D46C()
{
  if (!qword_1EDE77548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C38);
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77548);
    }
  }
}

unint64_t sub_1C100D4D0()
{
  result = qword_1EDE77048;
  if (!qword_1EDE77048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C28);
    sub_1C100D55C();
    sub_1C100D614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77048);
  }

  return result;
}

unint64_t sub_1C100D55C()
{
  result = qword_1EDE770C0;
  if (!qword_1EDE770C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C18);
    sub_1C100C824();
    sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770C0);
  }

  return result;
}

unint64_t sub_1C100D614()
{
  result = qword_1EDE82360[0];
  if (!qword_1EDE82360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE82360);
  }

  return result;
}

uint64_t sub_1C100D6EC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C0FDB850(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C100D73C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C0FDB8E8(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1C100D78C()
{
  result = qword_1EDE76E28;
  if (!qword_1EDE76E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D00);
    sub_1C100D818();
    sub_1C100D9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E28);
  }

  return result;
}

unint64_t sub_1C100D818()
{
  result = qword_1EDE76EB8;
  if (!qword_1EDE76EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D20);
    sub_1C100D8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EB8);
  }

  return result;
}

unint64_t sub_1C100D8A4()
{
  result = qword_1EDE77368;
  if (!qword_1EDE77368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    swift_getOpaqueTypeConformance2();
    sub_1C100DC14(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77368);
  }

  return result;
}

unint64_t sub_1C100D9E4()
{
  result = qword_1EDE770E8;
  if (!qword_1EDE770E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90CE8);
    sub_1C100DA9C();
    sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770E8);
  }

  return result;
}

unint64_t sub_1C100DA9C()
{
  result = qword_1EDE771B8;
  if (!qword_1EDE771B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D28);
    sub_1C100DB54();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771B8);
  }

  return result;
}

unint64_t sub_1C100DB54()
{
  result = qword_1EDE77328;
  if (!qword_1EDE77328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D30);
    sub_1C0FDB6D4(&qword_1EDE76D28, &qword_1EBE933A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77328);
  }

  return result;
}

uint64_t sub_1C100DC14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C100DC5C()
{
  result = qword_1EDE7B750;
  if (!qword_1EDE7B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B750);
  }

  return result;
}

uint64_t sub_1C100DCB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C100DD20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static PhotosMajorMinorGrid.minorItemWidth(boundsHeight:minorGroupSize:itemAspectRatio:spacing:)(uint64_t result)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C100DDE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!result)
  {
LABEL_14:
    sub_1C1263D30();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = *(sub_1C1263E90() + 20);
    v17 = *MEMORY[0x1E697F468];
    v18 = sub_1C12639D0();
    result = (*(*(v18 - 8) + 104))(&a3[v16], v17, v18);
    *a3 = v9;
    *(a3 + 1) = v11;
    *(a3 + 2) = v13;
    *(a3 + 3) = v15;
    return result;
  }

  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result == 0x8000000000000001 && v5 == -1)
  {
    goto LABEL_19;
  }

  if (__OFSUB__(v5, 1))
  {
    goto LABEL_17;
  }

  if (__OFSUB__(a2, 2))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a2 != 0x8000000000000002 || v5 != -1)
  {
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C100DF74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 60);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C100E190(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C100E2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C101268C(v2 + *(a1 + 68), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C100E4D0(uint64_t a1)
{
  v2 = sub_1C12629F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C100DF74(a1, v17);
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  sub_1C1012620(v18, v19, v20, v21);
  sub_1C100C7D0(v17);
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  sub_1C100E2E4(a1, v5);
  sub_1C100E190(a1);
  sub_1C10C37D8();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  sub_1C1001C84(v13, v14, v15, v16);
  return v11;
}

uint64_t sub_1C100E648@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, uint64_t a12, uint64_t a13)
{
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a12;
  __src[3] = a13;
  v22 = type metadata accessor for PhotosMajorMinorGrid();
  v23 = v22[15];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a7 + v23), __src, 0xD1uLL);
  v24 = a7 + v22[16];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = v22[17];
  *(a7 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  v26 = swift_storeEnumTagMultiPayload();
  *a7 = a1 & 1;
  *(a7 + 8) = a9;
  *(a7 + 16) = a2;
  *(a7 + 24) = a8;
  *(a7 + 32) = a10;
  *(a7 + 40) = a11;
  v27 = a3(v26);
  return a4(v27);
}

uint64_t PhotosMajorMinorGrid.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v77 = a1[5];
  type metadata accessor for PhotosMajorMinorGrid.PhotosMajorMinorGridLayout();
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_11_0();
  v8 = sub_1C1262B60();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984E0);
  OUTLINED_FUNCTION_11_0();
  v79 = v5;
  sub_1C1263190();
  sub_1C100EF98();
  *(&v87 + 1) = MEMORY[0x1E69E6540];
  sub_1C12656A0();
  OUTLINED_FUNCTION_11_0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v80 = v6;
  *&v85 = v6;
  *(&v85 + 1) = v9;
  v78 = v7;
  v86 = v7;
  *&v87 = OUTLINED_FUNCTION_4_12();
  sub_1C1263E20();
  sub_1C12652C0();
  OUTLINED_FUNCTION_8_10();
  v10 = sub_1C1262E70();
  OUTLINED_FUNCTION_7_10();
  v84 = OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_2_11();
  v82 = v8;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();
  v73 = swift_getWitnessTable();
  v11 = sub_1C1263900();
  OUTLINED_FUNCTION_1();
  v76 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  v74 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v62 - v16;
  OUTLINED_FUNCTION_1();
  v72 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_3();
  v71 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v62 - v21;
  v68 = sub_1C1262650();
  OUTLINED_FUNCTION_1();
  v67 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v62 - v31;
  v33 = swift_getWitnessTable();
  View.photosTrace.getter(a1, v33);
  v34 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v32, 1, v34) == 1)
  {
    sub_1C0FD1A5C(v32, &qword_1EBE919B0);
  }

  else
  {
    (*(v26 + 16))(v29, v3, a1);
    sub_1C1262640();
    v35 = sub_1C1262670();
    v65 = sub_1C1266520();
    v66 = v35;
    if (sub_1C1266730())
    {
      v36 = swift_slowAlloc();
      v63 = v36;
      v64 = swift_slowAlloc();
      *&v85 = v64;
      *v36 = 136446210;
      v37 = View.photosChangedProperties.getter(a1, v33);
      v39 = v38;
      (*(v26 + 8))(v29, a1);
      v40 = sub_1C0FA0E80(v37, v39, &v85);

      v41 = v63;
      *(v63 + 1) = v40;
      v42 = v69;
      v43 = sub_1C1262630();
      v44 = v66;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v66, v65, v43, "PhotosMajorMinorGrid", "PhotosMajorMinorGrid %{public}s", v41, 0xCu);
      v45 = v64;
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x1C68F1630](v45, -1, -1);
      MEMORY[0x1C68F1630](v41, -1, -1);

      (*(v67 + 8))(v42, v68);
    }

    else
    {

      (*(v67 + 8))(v69, v68);
      (*(v26 + 8))(v29, a1);
    }

    (*(*(v34 - 8) + 8))(v32, v34);
  }

  v46 = *(v3 + 8);
  v47 = *(v3 + 16);
  v48 = *(v3 + 40);
  LOBYTE(v85) = *v3 & 1;
  *(&v85 + 1) = v46;
  v86 = v47;
  v87 = *(v3 + 24);
  v88 = v48;
  v50 = v79;
  v49 = v80;
  v52 = v77;
  v51 = v78;
  v53 = sub_1C100F078(&v85, v80, v79, v78, v77);
  MEMORY[0x1EEE9AC00](v53);
  *(&v62 - 6) = v49;
  *(&v62 - 5) = v50;
  *(&v62 - 4) = v51;
  *(&v62 - 3) = v52;
  *(&v62 - 2) = v3;
  v54 = v70;
  v55(sub_1C100F73C);

  v56 = v72;
  (*(v72 + 16))(v71, v54, v10);
  v57 = v74;
  sub_1C1263910();
  (*(v56 + 8))(v54, v10);
  OUTLINED_FUNCTION_3_15();
  v58 = swift_getWitnessTable();
  v59 = v75;
  sub_1C0FDBA4C(v57, v11, v58);
  v60 = *(v76 + 8);
  v60(v57, v11);
  sub_1C0FDBA4C(v59, v11, v58);
  return (v60)(v59, v11);
}

unint64_t sub_1C100EF98()
{
  result = qword_1EDE76A78;
  if (!qword_1EDE76A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40);
    sub_1C100F024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76A78);
  }

  return result;
}

unint64_t sub_1C100F024()
{
  result = qword_1EDE76B10;
  if (!qword_1EDE76B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76B10);
  }

  return result;
}

uint64_t (*sub_1C100F078(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = a1[1];
  *(v10 + 48) = *a1;
  *(v10 + 64) = v11;
  *(v10 + 80) = a1[2];
  return sub_1C10126FC;
}

uint64_t sub_1C100F0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhotosMajorMinorGrid.PhotosMajorMinorGridLayout();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984E0);
  sub_1C1263190();
  sub_1C100EF98();
  sub_1C12656A0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1263E20();
  v7 = sub_1C12652C0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  return sub_1C121710C(a1, a2, v6, v7, WitnessTable, v9, a3);
}

uint64_t sub_1C100F2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v48 = a6;
  v50 = a2;
  v51 = a3;
  v44 = a3;
  v52 = a4;
  v53 = a5;
  v9 = type metadata accessor for PhotosMajorMinorGrid();
  v45 = *(v9 - 8);
  v46 = *(v45 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v40 - v11;
  v13 = a2;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D38);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984E0);
  v18 = sub_1C1263190();
  v19 = sub_1C100EF98();
  v50 = v17;
  v51 = MEMORY[0x1E69E6530];
  v52 = v18;
  v53 = v19;
  v54 = MEMORY[0x1E69E6540];
  sub_1C12656A0();
  swift_getTupleTypeMetadata2();
  v20 = sub_1C1265B00();
  v42 = v20;
  WitnessTable = swift_getWitnessTable();
  v50 = v13;
  v51 = v20;
  v21 = a4;
  v52 = a4;
  v53 = WitnessTable;
  v40[1] = sub_1C1263E20();
  v22 = sub_1C12652C0();
  v43 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v40 - v26;
  v28 = v16;
  v29 = v13;
  (*(v14 + 16))(v28, a1 + *(v9 + 52), v13);
  v30 = v45;
  v31 = a1;
  v32 = v9;
  (*(v45 + 16))(v12, v31, v9);
  v33 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v34 = swift_allocObject();
  v35 = v44;
  *(v34 + 2) = v29;
  *(v34 + 3) = v35;
  v36 = v47;
  *(v34 + 4) = v21;
  *(v34 + 5) = v36;
  (*(v30 + 32))(&v34[v33], v12, v32);
  sub_1C12652A0();
  v49 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  sub_1C0FDBA4C(v25, v22, v37);
  v38 = *(v43 + 8);
  v38(v25, v22);
  sub_1C0FDBA4C(v27, v22, v37);
  return (v38)(v27, v22);
}

uint64_t sub_1C100F74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v84 = a5;
  v85 = a6;
  v82 = a3;
  v86 = a2;
  v79 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984E0);
  v13 = a4;
  v83 = a4;
  v14 = sub_1C1263190();
  v15 = sub_1C100EF98();
  v74 = v12;
  v91 = v12;
  v92 = MEMORY[0x1E69E6530];
  v71 = v14;
  v93 = v14;
  v94 = v15;
  v70 = v15;
  v95 = MEMORY[0x1E69E6540];
  v78 = sub_1C12656A0();
  v75 = *(v78 - 8);
  v16 = MEMORY[0x1EEE9AC00](v78);
  v77 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v65 - v18;
  v91 = a3;
  v92 = v13;
  v93 = a5;
  v94 = a6;
  v19 = type metadata accessor for PhotosMajorMinorGrid();
  v20 = *(v19 - 8);
  v81 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v65 - v21;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D38);
  v72 = *(v73 - 8);
  v23 = MEMORY[0x1EEE9AC00](v73);
  v69 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v65 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D78);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v65 - v27;
  v29 = sub_1C12639E0();
  (*(*(v29 - 8) + 16))(v28, a1, v29);
  sub_1C11E37E0();
  v31 = v30;
  sub_1C0FD1A5C(v28, &qword_1EBE90D78);
  sub_1C101257C(&qword_1EDE76F40, MEMORY[0x1E697F4E0]);
  sub_1C12662D0();
  sub_1C1266310();
  v32 = sub_1C1266300();
  v91 = v31;
  KeyPath = swift_getKeyPath();
  v65 = *(v20 + 16);
  v65(v22, v86, v19);
  v33 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v34 = (v81 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v83;
  *(v35 + 2) = v82;
  *(v35 + 3) = v36;
  v37 = v85;
  *(v35 + 4) = v84;
  *(v35 + 5) = v37;
  v38 = *(v20 + 32);
  v66 = v33;
  v67 = v22;
  v81 = v19;
  v68 = v20 + 32;
  v38(&v35[v33], v22, v19);
  v39 = v38;
  *&v35[v34] = v32;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1C1012120;
  *(v40 + 24) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE90D88);
  sub_1C0FDB6D4(&qword_1EDE76AC8, &qword_1EBE90D80);
  sub_1C101257C(&qword_1EDE76B58, MEMORY[0x1E6981A38]);
  sub_1C1012218();
  v41 = v32;
  result = sub_1C1265680();
  if (__OFSUB__(v32, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v43 = v86;
  v44 = *(v86 + 16);
  if (!v44)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v32 == 0x8000000000000001 && v44 + 1 == 0)
  {
    goto LABEL_16;
  }

  if (v32 == 1)
  {
    goto LABEL_10;
  }

  v46 = (v32 - 1) % v44;
  if (!v46)
  {
    v44 = 0;
    goto LABEL_11;
  }

  v47 = __OFSUB__(v44, v46);
  v44 -= v46;
  if (!v47)
  {
LABEL_10:
    if ((v44 & 0x8000000000000000) == 0)
    {
LABEL_11:
      v91 = 0;
      v92 = v44;
      swift_getKeyPath();
      v48 = v67;
      v49 = v81;
      v65(v67, v43, v81);
      v50 = swift_allocObject();
      v51 = v83;
      *(v50 + 2) = v82;
      *(v50 + 3) = v51;
      v52 = v85;
      *(v50 + 4) = v84;
      *(v50 + 5) = v52;
      v39(&v50[v66], v48, v49);
      *&v50[v34] = v41;
      v53 = sub_1C0FDB6D4(qword_1EDE7AE20, &qword_1EBE984E0);
      v90[3] = v52;
      v90[4] = v53;
      WitnessTable = swift_getWitnessTable();
      v54 = v77;
      sub_1C1265680();
      v90[2] = WitnessTable;
      v55 = v78;
      v56 = swift_getWitnessTable();
      v57 = v76;
      sub_1C0FDBA4C(v54, v55, v56);
      v58 = v75;
      v59 = *(v75 + 8);
      v59(v54, v55);
      v60 = v72;
      v61 = v69;
      v62 = v73;
      (*(v72 + 16))(v69, v87, v73);
      v91 = v61;
      (*(v58 + 16))(v54, v57, v55);
      v92 = v54;
      v90[0] = v62;
      v90[1] = v55;
      v88 = sub_1C10124F8();
      v89 = v56;
      sub_1C119EE80(&v91, 2, v90);
      v59(v57, v55);
      v63 = *(v60 + 8);
      v63(v87, v62);
      v59(v54, v55);
      return (v63)(v61, v62);
    }

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C1010000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for PhotosMajorMinorGrid();
  v8 = sub_1C100E4D0(v7);
  v9 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE90D88) + 36));
  type metadata accessor for PhotosMajorMinorGrid.Configuration();
  sub_1C100DDE8(a1, a3, v9);
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984E0) + 36)] = v8;
  v10 = sub_1C1265730();
  return (*(*(v10 - 8) + 16))(a4, a2, v10);
}

uint64_t sub_1C1010134(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97250);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1C10101A0@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a8;
  v44 = a3;
  v41 = sub_1C1263E90();
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984E0);
  v15 = sub_1C1263190();
  v42 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v39 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v37 - v18;
  v19 = *a1;
  v20 = a4;
  *&v51 = a4;
  *(&v51 + 1) = a5;
  v21 = a5;
  v22 = a6;
  *&v52 = a6;
  *(&v52 + 1) = a7;
  v23 = a7;
  v24 = type metadata accessor for PhotosMajorMinorGrid();
  v37 = *(v24 + 56);
  result = sub_1C100E4D0(v24);
  v26 = a2[1];
  v51 = *a2;
  v52 = v26;
  v53 = a2[2];
  v27 = __OFADD__(v44, v19);
  v28 = v44 + v19;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v29 = result;
    v30 = v44;
    v47 = v20;
    v48 = v21;
    v49 = v22;
    v50 = v23;
    type metadata accessor for PhotosMajorMinorGrid.Configuration();
    v31 = v38;
    sub_1C100DDE8(v28, v30, v38);
    sub_1C101257C(&qword_1EDE7BAB8, MEMORY[0x1E697FF20]);
    v32 = v39;
    View.photosShapeOverlay<A>(color:shape:)(v29, v31, v21, v41, v23);

    sub_1C10125C4(v31);
    v33 = sub_1C0FDB6D4(qword_1EDE7AE20, &qword_1EBE984E0);
    v45 = v23;
    v46 = v33;
    WitnessTable = swift_getWitnessTable();
    v35 = v40;
    sub_1C0FDBA4C(v32, v15, WitnessTable);
    v36 = *(v42 + 8);
    v36(v32, v15);
    sub_1C0FDBA4C(v35, v15, WitnessTable);
    return (v36)(v35, v15);
  }

  return result;
}

uint64_t sub_1C10104C0(uint64_t result, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    v6 = *&result;
    sub_1C1262F40();
    sub_1C101257C(&qword_1EDE7BFC8, MEMORY[0x1E697E3C0]);
    v7 = sub_1C1266340();
    return sub_1C1010590(a3, a4 & 1, v7, &v8, v6);
  }

  return result;
}

uint64_t sub_1C1010590@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>)
{
  v6 = *(v5 + 16);
  v7 = a3 + v6;
  if (__OFADD__(a3, v6))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = __OFSUB__(v7, 2);
  v9 = v7 - 2;
  if (v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v9 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_23;
  }

  v11 = *(v5 + 8);
  v12 = v6;
  v13 = (v9 / v6);
  if (*v5)
  {
    if ((a2 & 1) != 0 || (v14 = *&result, *&result == INFINITY))
    {
      v15 = (a5 - v11 * (v12 + -1.0)) / v12;
      v14 = (v11 + v15) * v13 + a5;
      v16 = a5;
      v17 = a5;
    }

    else
    {
      v15 = (a5 - v11 * (v12 + -1.0)) / v12;
      v17 = *&result - (v11 + v15) * v13;
      v16 = a5;
    }

    v18 = v15;
  }

  else
  {
    v19 = *(v5 + 24);
    if ((a2 & 1) != 0 || (v17 = *&result, *&result == INFINITY))
    {
      v16 = (a5 - v11 * v13 + (-1.0 / v12 + 1.0) * (v11 * (v19 * v13))) / (v13 / v12 + 1.0);
      v17 = v16 / v19;
      v18 = (v16 / v19 - v11 * (v12 + -1.0)) / v12;
      v15 = v19 * v18;
      a5 = v16 + (v11 + v19 * v18) * v13;
    }

    else
    {
      v18 = (*&result - v11 * (v12 + -1.0)) / v12;
      v15 = v19 * v18;
      v16 = a5 - (v11 + v19 * v18) * v13;
    }

    v14 = v17;
  }

  *a4 = v16;
  a4[1] = v17;
  a4[2] = v15;
  a4[3] = v18;
  a4[4] = a5;
  a4[5] = v14;
  return result;
}

uint64_t sub_1C1010700(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (**a9)(char *, char *, uint64_t), uint64_t a10, char *a11)
{
  v113 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D50);
  MEMORY[0x1EEE9AC00](v16);
  v108 = (&v94 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D58);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v112 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v94 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D60);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v106 = (&v94 - v24);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D68);
  MEMORY[0x1EEE9AC00](v110);
  v100 = &v94 - v25;
  v115 = sub_1C1262E10();
  v104 = *(v115 - 8);
  v26 = MEMORY[0x1EEE9AC00](v115);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v107 = &v94 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v102 = &v94 - v31;
  v99 = sub_1C1262650();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C1262F40();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v103 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v101 = &v94 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v94 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v94 - v43;
  WitnessTable = swift_getWitnessTable();
  v111 = a11;
  Layout.photosTrace.getter(a11, WitnessTable);
  v46 = sub_1C1262680();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v46);
  v109 = v35;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C0FD1A5C(v44, &qword_1EBE919B0);
  }

  else
  {
    v97 = v46;
    (*(v35 + 16))(v41, v113, v34);
    sub_1C1262640();
    v48 = sub_1C1262670();
    v96 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v95 = swift_slowAlloc();
      *v95 = 134217984;
      sub_1C101257C(&qword_1EDE7BFC8, MEMORY[0x1E697E3C0]);
      v94 = v33;
      sub_1C12662D0();
      sub_1C1266310();
      v49 = sub_1C1266300();
      (*(v35 + 8))(v41, v34);
      v50 = v95;
      *(v95 + 4) = v49;
      v33 = v94;
      v51 = sub_1C1262630();
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v48, v96, v51, "PhotosMajorMinorGridLayout", "PhotosMajorMinorGridLayout subviews:%ld", v50, 0xCu);
      MEMORY[0x1C68F1630](v50, -1, -1);
    }

    else
    {
      (*(v35 + 8))(v41, v34);
    }

    (*(v98 + 8))(v33, v99);
    (*(*(v97 - 8) + 8))(v44);
  }

  v119.origin.x = a1;
  v119.origin.y = a2;
  v119.size.width = a3;
  v119.size.height = a4;
  Width = CGRectGetWidth(v119);
  v120.origin.x = a1;
  v120.origin.y = a2;
  v120.size.width = a3;
  v120.size.height = a4;
  Height = CGRectGetHeight(v120);
  v54 = sub_1C101257C(&qword_1EDE7BFC8, MEMORY[0x1E697E3C0]);
  v55 = v113;
  v56 = sub_1C1266340();
  sub_1C1010590(Height, 0, v56, v118, Width);
  result = sub_1C1266340();
  v58 = v100;
  if (result >= 1)
  {
    v121.origin.x = a1;
    v121.origin.y = a2;
    v121.size.width = a3;
    v121.size.height = a4;
    MinX = CGRectGetMinX(v121);
    v122.origin.x = a1;
    v122.origin.y = a2;
    v122.size.width = a3;
    v122.size.height = a4;
    MinY = CGRectGetMinY(v122);
    v61 = v118[0];
    v62 = v118[1];
    v99 = v54;
    sub_1C1262F50();
    sub_1C1265B40();
    LOBYTE(v117[0]) = 0;
    v116 = 0;
    sub_1C1262E00();
    v63 = v109;
    v111 = *(v109 + 16);
    v64 = v103;
    (v111)(v103, v55, v34);
    v65 = v101;
    sub_1C1266380();
    v66 = v106;
    v67 = v65;
    v68 = v63;
    (v111)(v106, v67, v34);
    (*(v63 + 32))(v64, v66, v34);
    sub_1C101257C(&qword_1EDE774E0, MEMORY[0x1E697E3C0]);
    sub_1C1265F60();
    v103 = *(v110 + 36);
    *&v103[v58] = 0;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D70);
    v110 = 0;
    v111 = *(v69 + 36);
    v106 = (v104 + 16);
    v113 = (v104 + 32);
    v70 = (v104 + 8);
    v71 = v99;
    v105 = v28;
    v104 += 8;
    while (1)
    {
      sub_1C1266310();
      if (*&v111[v58] == v117[0])
      {
        v72 = 1;
        v73 = v112;
      }

      else
      {
        v74 = v22;
        v75 = sub_1C12663A0();
        v76 = v34;
        v77 = v107;
        v78 = v115;
        (*v106)(v107);
        v75(v117, 0);
        v79 = v76;
        v80 = v71;
        sub_1C1266320();
        v81 = *(v16 + 48);
        v82 = v110;
        v83 = v108;
        *v108 = v110;
        result = (*v113)(v83 + v81, v77, v78);
        v84 = __OFADD__(v82, 1);
        v85 = v82 + 1;
        if (v84)
        {
          goto LABEL_26;
        }

        v110 = v85;
        *&v103[v58] = v85;
        v86 = v83;
        v73 = v112;
        sub_1C1012024(v86, v112, &qword_1EBE90D50);
        v72 = 0;
        v22 = v74;
        v28 = v105;
        v34 = v79;
        v68 = v109;
        v71 = v80;
        v70 = v104;
      }

      __swift_storeEnumTagSinglePayload(v73, v72, 1, v16);
      sub_1C1012024(v73, v22, &qword_1EBE90D58);
      if (__swift_getEnumTagSinglePayload(v22, 1, v16) == 1)
      {
        sub_1C0FD1A5C(v58, &qword_1EBE90D68);
        (*(v68 + 8))(v101, v34);
        return (*v70)(v102, v115);
      }

      v87 = *v22;
      result = (*v113)(v28, v22 + *(v16 + 48), v115);
      v88 = *(v114 + 16);
      if (!v88)
      {
        break;
      }

      if (v87 == 0x8000000000000000 && v88 == -1)
      {
        goto LABEL_27;
      }

      v90 = MinX;
      v91 = MinY;
      v92 = v61;
      v93 = v62;
      if (*v114)
      {
        CGRectGetMinX(*&v90);
        v123.origin.x = MinX;
        v123.origin.y = MinY;
        v123.size.width = v61;
        v123.size.height = v62;
        CGRectGetMaxY(v123);
      }

      else
      {
        CGRectGetMaxX(*&v90);
        v124.origin.x = MinX;
        v124.origin.y = MinY;
        v124.size.width = v61;
        v124.size.height = v62;
        CGRectGetMinY(v124);
      }

      sub_1C1265B40();
      LOBYTE(v117[0]) = 0;
      v116 = 0;
      sub_1C1262E00();
      (*v70)(v28, v115);
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void (*sub_1C1011544(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

void sub_1C10115B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1C1011654()
{
  type metadata accessor for PhotosMajorMinorGrid.Configuration();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1C100D318(319, &qword_1EDE77600);
        if (v3 <= 0x3F)
        {
          sub_1C100D318(319, &qword_1EDE77540);
          if (v4 <= 0x3F)
          {
            sub_1C1011E54();
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

uint64_t sub_1C1011784(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v27 = *(a3 + 16);
  v4 = *(v27 - 8);
  v5 = *(v4 + 84);
  v26 = *(a3 + 24);
  v6 = *(v26 - 8);
  v25 = *(v6 + 84);
  if (v5 <= v25)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1C12629F0() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v4 + 80);
  v12 = *(v4 + 64);
  v13 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = v10 + ((v14 + ((*(v6 + 64) + ((v12 + v13 + ((v11 + 48) & ~v11)) & ~v13) + 223) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v14) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v8 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v19 < 2)
    {
LABEL_29:
      if (v7 > 0xFE)
      {
        v22 = &a1[v11 + 48] & ~v11;
        if (v5 == v8)
        {
          v23 = v5;
          v24 = v27;
        }

        else
        {
          v22 = (v22 + v12 + v13) & ~v13;
          v23 = v25;
          v24 = v26;
        }

        return __swift_getEnumTagSinglePayload(v22, v23, v24);
      }

      else
      {
        v21 = *a1;
        if (v21 >= 2)
        {
          return v21 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_29;
  }

LABEL_21:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    switch(v15)
    {
      case 2:
        LODWORD(v15) = *a1;
        break;
      case 3:
        LODWORD(v15) = *a1 | (a1[2] << 16);
        break;
      case 4:
        LODWORD(v15) = *a1;
        break;
      default:
        LODWORD(v15) = *a1;
        break;
    }
  }

  return v8 + (v15 | v20) + 1;
}

void sub_1C1011A84(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v29 = *(a4 + 24);
  v30 = *(a4 + 16);
  v6 = *(v30 - 8);
  v7 = *(v29 - 8);
  v31 = *(v6 + 84);
  v28 = *(v7 + 84);
  if (v31 <= v28)
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1C12629F0() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = v11 + ((v15 + ((*(v7 + 64) + ((v13 + v14 + ((v12 + 48) & ~v12)) & ~v14) + 223) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v15) + 1;
  v17 = 8 * (v11 + ((v15 + ((*(v7 + 64) + ((v13 + v14 + ((v12 + 48) & ~v12)) & ~v14) - 33) & 0xF8) + 9) & ~v15) + 1);
  if (a3 <= v9)
  {
    v19 = 0;
    v18 = a2;
  }

  else
  {
    v18 = a2;
    if (v16 <= 3)
    {
      v22 = ((a3 - v9 + ~(-1 << v17)) >> v17) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  if (v9 >= v18)
  {
    switch(v19)
    {
      case 1:
        a1[v16] = 0;
        if (v18)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (v18)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_53:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (v18)
        {
LABEL_33:
          if (v8 > 0xFE)
          {
            v25 = &a1[v12 + 48] & ~v12;
            v26 = v31;
            if (v31 == v9)
            {
              v27 = v30;
            }

            else
            {
              v25 = (v25 + v13 + v14) & ~v14;
              v26 = v28;
              v27 = v29;
            }

            __swift_storeEnumTagSinglePayload(v25, v18, v26, v27);
          }

          else if (v18 > 0xFE)
          {
            *(a1 + 5) = 0;
            *(a1 + 24) = 0u;
            *(a1 + 8) = 0u;
            *a1 = (v18 - 255);
          }

          else
          {
            *a1 = v18 + 1;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v9 + v18;
    if (v16 < 4)
    {
      v21 = (v20 >> v17) + 1;
      if (v16)
      {
        v24 = v20 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v16 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v16] = v21;
        break;
      case 2:
        *&a1[v16] = v21;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v16] = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1C1011E54()
{
  if (!qword_1EDE77590)
  {
    sub_1C12629F0();
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77590);
    }
  }
}

uint64_t sub_1C1011EAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1011EE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1011F24(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[48])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1011F60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C1011FB4()
{
  result = qword_1EBE90D48;
  if (!qword_1EBE90D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90D48);
  }

  return result;
}

uint64_t sub_1C1012024(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C1012084()
{
  v7 = *(OUTLINED_FUNCTION_14_11() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1C100F74C(v0, v8, v3, v4, v5, v6, v2);
}

uint64_t sub_1C1012120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PhotosMajorMinorGrid() - 8);
  v8 = *(v3 + ((*(v7 + 64) + ((*(v7 + 80) + 48) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1010000(a1, a2, v8, a3);
}

unint64_t sub_1C1012218()
{
  result = qword_1EDE772B8;
  if (!qword_1EDE772B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90D88);
    sub_1C0FDB6D4(qword_1EDE7AE20, &qword_1EBE984E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772B8);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_11_10();
  (*(v3 + 8))(v2 + v4, v1);
  v5 = OUTLINED_FUNCTION_15_11();
  (*(v6 + 8))(v2 + v7, v5);
  OUTLINED_FUNCTION_0_13();
  sub_1C1008DBC(*(v2 + *(v0 + 72)), *(v2 + *(v0 + 72) + 8));
  v8 = *(v0 + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C1012430()
{
  v7 = *(OUTLINED_FUNCTION_14_11() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C10101A0(v0, (v1 + v8), v9, v3, v4, v5, v6, v2);
}

unint64_t sub_1C10124F8()
{
  result = qword_1EDE76B60;
  if (!qword_1EDE76B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D38);
    sub_1C1012218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76B60);
  }

  return result;
}

uint64_t sub_1C101257C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C10125C4(uint64_t a1)
{
  v2 = sub_1C1263E90();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1012620(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    if (a4 >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1C101268C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1012738@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosIsFocusableItem.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10127CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1012880()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t PhotosHeartView.init(model:showHearts:canToggleFavorite:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = sub_1C1012790() & 1;
  *(a4 + 24) = v8;
  result = swift_getKeyPath();
  *(a4 + 32) = result;
  *(a4 + 40) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  return result;
}

uint64_t PhotosHeartView.body.getter(void *a1)
{
  v3 = v1[1];
  v16 = *v1;
  v17[0] = v3;
  *(v17 + 9) = *(v1 + 25);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  type metadata accessor for PhotosInteractiveFavoriteBadge();
  sub_1C1263190();
  type metadata accessor for PhotosFavoriteBadge();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_4();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12638E0();
  sub_1C12654B0();
  memcpy(__dst, __src, 0xA0uLL);
  v7 = swift_allocObject();
  v8 = v17[0];
  *(v7 + 40) = v16;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 56) = v8;
  *(v7 + 65) = *(v17 + 9);
  (*(*(a1 - 1) + 16))(v20, &v16, a1);
  v9 = sub_1C12654C0();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  sub_1C1264F40();

  memcpy(v18, __dst, sizeof(v18));
  (*(*(v9 - 8) + 8))(v18, v9);
  memcpy(v14, v20, sizeof(v14));
  v10 = sub_1C1263190();
  sub_1C10136B0();
  OUTLINED_FUNCTION_4_0();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v14, v10, WitnessTable);
  memcpy(__src, v14, sizeof(__src));
  v12 = *(*(v10 - 8) + 8);
  v12(__src, v10);
  memcpy(v14, __dst, sizeof(v14));
  sub_1C0FDBA4C(v14, v10, WitnessTable);
  memcpy(v20, v14, 0xB0uLL);
  return (v12)(v20, v10);
}

uint64_t sub_1C1012D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (*(a1 + 9))
  {
    v7 = *(a1 + 16);
    __src[0] = *a1;
    __src[1] = v7;
    *(&__src[1] + 9) = *(a1 + 25);
    type metadata accessor for PhotosHeartView();
    a1 = sub_1C10127CC();
    if (a1)
    {
      v8 = *(v6 + 16);
      __src[0] = *v6;
      __src[1] = v8;
      *(&__src[1] + 9) = *(v6 + 25);
      a1 = sub_1C1012880();
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for PhotosInteractiveFavoriteBadge();
  sub_1C1263190();
  v9 = *(a4 + 8);
  type metadata accessor for PhotosFavoriteBadge();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1009330();
  sub_1C12655B0();
  memcpy(v27, v28, sizeof(v27));
  if (*(v6 + 8))
  {
    *&__src[0] = *v6;
    (*(v9 + 8))(a2, v9);
  }

  v10 = sub_1C12655C0();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264F50();
  memcpy(v22, v27, sizeof(v22));
  (*(*(v10 - 8) + 8))(v22, v10);
  memcpy(v26, v29, sizeof(v26));
  v12 = sub_1C1263190();
  v21[2] = WitnessTable;
  v21[3] = MEMORY[0x1E697E5C0];
  v13 = swift_getWitnessTable();
  sub_1C0FDBA4C(v26, v12, v13);
  memcpy(v23, v26, sizeof(v23));
  v14 = *(v12 - 8);
  v15 = *(v14 + 8);
  v15(v23, v12);
  v19 = 0;
  v20 = 1;
  v21[0] = &v19;
  memcpy(v24, __src, sizeof(v24));
  memcpy(v18, __src, sizeof(v18));
  v21[1] = v18;
  (*(v14 + 16))(v26, v24, v12);
  v17[0] = MEMORY[0x1E6981840];
  v17[1] = v12;
  sub_1C119EE80(v21, 2, v17);
  memcpy(v25, __src, sizeof(v25));
  v15(v25, v12);
  memcpy(v26, v18, sizeof(v26));
  return (v15)(v26, v12);
}

uint64_t sub_1C10131DC(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRetain_n();
  v2 = sub_1C110DB44();
  PhotosInteractiveFavoriteBadge.init(_:tint:)(v1, v2, v32);
  v3 = type metadata accessor for PhotosInteractiveFavoriteBadge();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264F50();
  v29[0] = v32[0];
  v29[1] = v32[1];
  v30[0] = v33[0];
  *(v30 + 9) = *(v33 + 9);
  (*(*(v3 - 8) + 8))(v29, v3);
  memcpy(__dst, __src, 0x48uLL);
  v5 = sub_1C1263190();
  v26 = WitnessTable;
  v27 = MEMORY[0x1E697E5C0];
  v6 = swift_getWitnessTable();
  sub_1C0FDBA4C(__dst, v5, v6);
  memcpy(v31, __dst, sizeof(v31));
  v7 = *(v5 - 8);
  v8 = *(v7 + 8);
  v8(v31, v5);
  *&__dst[0] = v1;
  v9 = sub_1C110DB44();
  PhotosFavoriteBadge.init(_:tint:)(v9, v21);
  v20 = v21[0];
  type metadata accessor for PhotosFavoriteBadge();
  v10 = swift_getWitnessTable();
  sub_1C1264F50();

  swift_unknownObjectRelease();
  __dst[0] = v21[1];
  *&__dst[1] = v22;
  v11 = sub_1C1263190();
  v17[2] = v10;
  v17[3] = MEMORY[0x1E697E5C0];
  v12 = swift_getWitnessTable();
  sub_1C0FDBA4C(__dst, v11, v12);

  swift_unknownObjectRelease();
  memcpy(v18, v35, sizeof(v18));
  memcpy(v16, v35, sizeof(v16));
  v15[0] = v23;
  v15[1] = v24;
  v15[2] = v25;
  v17[0] = v16;
  v17[1] = v15;
  (*(v7 + 16))(__dst, v18, v5);
  swift_unknownObjectRetain();

  v14[0] = v5;
  v14[1] = v11;
  sub_1C119EE80(v17, 2, v14);

  swift_unknownObjectRelease();
  memcpy(v19, v35, sizeof(v19));
  v8(v19, v5);

  swift_unknownObjectRelease();
  memcpy(__dst, v16, 0x48uLL);
  return (v8)(__dst, v5);
}

uint64_t sub_1C10135DC(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v8[3] = *a2;
  *v9 = v3;
  *&v9[9] = *(a2 + 25);
  v4 = type metadata accessor for PhotosHeartView();
  (*(*(v4 - 8) + 16))(v8, a2, v4);
  sub_1C1012824();
  v5 = *&v9[16];
  v6 = v9[24];
  swift_unknownObjectRelease();

  return sub_1C1008DBC(v5, v6);
}

unint64_t sub_1C10136B0()
{
  result = qword_1EDE7BBB0;
  if (!qword_1EDE7BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBB0);
  }

  return result;
}

uint64_t sub_1C1013754()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C101379C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C10137DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.lumaLevelTracking(_:threshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  *&v7[3] = a6;
  return MEMORY[0x1C68EE920](v7, a4, &type metadata for LumaTrackingViewModifier, a5);
}

uint64_t sub_1C101388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E88);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E90);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  if (a3)
  {

    v18 = sub_1C12659A0();
    v26[1] = a5;
    v19 = v18;
    v21 = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E98);
    v26[0] = v12;
    (*(*(v22 - 8) + 16))(v17, a1, v22);
    v23 = &v17[*(v15 + 36)];
    *v23 = a2;
    *(v23 + 1) = a3;
    *(v23 + 2) = a4;
    *(v23 + 3) = a6;
    *(v23 + 4) = v19;
    *(v23 + 5) = v21;
    sub_1C10142CC(v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_1C10141E8();
    sub_1C0FDB6D4(&qword_1EBE90EA8, &qword_1EBE90E98);
    sub_1C1263C20();
    return sub_1C101433C(v17);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E98);
    (*(*(v25 - 8) + 16))(v14, a1, v25);
    swift_storeEnumTagMultiPayload();
    sub_1C10141E8();
    sub_1C0FDB6D4(&qword_1EBE90EA8, &qword_1EBE90E98);
    return sub_1C1263C20();
  }
}

id sub_1C1013B64(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for LumaTrackingView.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV17PhotosSwiftUICoreP33_15D26146810CCE79A79DD9943E3354D316LumaTrackingView11Coordinator_representable];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_1C1013BF8(double a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C4560]) initWithThreshold_];
  [v1 setLumaTrackingEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90EC0);
  sub_1C1264210();
  [v1 setDelegate_];

  return v1;
}

void sub_1C1013C98(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90EC0);
  sub_1C1264210();
  [a1 setDelegate_];
}

id sub_1C1013E28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LumaTrackingView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1013EC8()
{
  result = qword_1EBE90E78;
  if (!qword_1EBE90E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90E78);
  }

  return result;
}

uint64_t sub_1C1013F1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1013F5C(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySo11PXLumaLevelVGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1C1014008@<X0>(void *a1@<X8>)
{
  result = sub_1C1013B64(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1C1014084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10143A4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C10140E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10143A4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C101414C()
{
  sub_1C10143A4();
  sub_1C1263BD0();
  __break(1u);
}

unint64_t sub_1C1014178()
{
  result = qword_1EBE90E80;
  if (!qword_1EBE90E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90E80);
  }

  return result;
}

unint64_t sub_1C10141E8()
{
  result = qword_1EBE90EA0;
  if (!qword_1EBE90EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90E90);
    sub_1C0FDB6D4(&qword_1EBE90EA8, &qword_1EBE90E98);
    sub_1C0FDB6D4(&qword_1EBE90EB0, &qword_1EBE90EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90EA0);
  }

  return result;
}

uint64_t sub_1C10142CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C101433C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C10143A4()
{
  result = qword_1EBE90EC8;
  if (!qword_1EBE90EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90EC8);
  }

  return result;
}

unint64_t sub_1C10143F8()
{
  result = qword_1EBE90ED8;
  if (!qword_1EBE90ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90EE0);
    sub_1C10141E8();
    sub_1C0FDB6D4(&qword_1EBE90EA8, &qword_1EBE90E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90ED8);
  }

  return result;
}

uint64_t PhotosSearchRecentSuggestionItem.title.setter()
{
  OUTLINED_FUNCTION_18_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PhotosSearchRecentSuggestionItem.subtitle.setter()
{
  OUTLINED_FUNCTION_18_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1C10146E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  result = PhotosSearchRecentSuggestionItem.content.getter(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C1014728(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = type metadata accessor for PhotosSearchRecentSuggestionItem();

  return PhotosSearchRecentSuggestionItem.content.setter(v1, v2, v3);
}

uint64_t _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvg_0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvs_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 60));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*PhotosSearchRecentSuggestionItem.content.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  *a1 = _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvg_0(a2);
  a1[1] = v4;
  return sub_1C101484C;
}

uint64_t sub_1C101484C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {

    v3 = OUTLINED_FUNCTION_2();
    _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvs_0(v3, v4, v2);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2();
    return _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvs_0(v6, v7, v2);
  }
}

uint64_t sub_1C10148C0(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  swift_getFunctionTypeMetadata0();
  OUTLINED_FUNCTION_3();
  (*(v2 + 32))(&v5, v4);
  return v5;
}

void PhotosSearchRecentSuggestionItem.init(title:subtitle:resultItem:shouldDisplay:isClearable:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_23();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  *v31 = v33;
  *(v31 + 1) = v34;
  *(v31 + 2) = v35;
  *(v31 + 3) = v36;
  v37 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  (*(*(a23 - 8) + 32))(&v32[v37[12]], v30, a23);
  v32[v37[13]] = v28;
  v32[v37[14]] = v26;
  v38 = &v32[v37[15]];
  *v38 = sub_1C10148C0(v24, a21);
  v38[1] = v39;
  OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosSearchRecentSuggestionItem<>.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C1266D50() & 1) == 0)
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
    if (!v7 && (sub_1C1266D50() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_0();
  v8 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  if ((sub_1C1265DE0() & 1) == 0 || *(a1 + *(v8 + 52)) != *(a2 + *(v8 + 52)) || *(a1 + *(v8 + 56)) != *(a2 + *(v8 + 56)))
  {
    return 0;
  }

  swift_getFunctionTypeMetadata0();
  return 1;
}

uint64_t PhotosSearchRecentSuggestionItem<>.hash(into:)()
{
  OUTLINED_FUNCTION_18_0();
  sub_1C1265EF0();
  if (*(v0 + 24))
  {
    sub_1C1266EB0();
    sub_1C1265EF0();
  }

  else
  {
    sub_1C1266EB0();
  }

  sub_1C1265D30();
  sub_1C1266EB0();
  sub_1C1266EB0();
  swift_getFunctionTypeMetadata0();

  return type metadata accessor for EquatableHashableIgnored();
}

uint64_t PhotosSearchRecentSuggestionItem<>.hashValue.getter()
{
  OUTLINED_FUNCTION_18_0();
  sub_1C1266E90();
  PhotosSearchRecentSuggestionItem<>.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C1014C94()
{
  sub_1C1266E90();
  PhotosSearchRecentSuggestionItem<>.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C1014CE8(uint64_t a1)
{
  v3 = sub_1C1263130();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C1263EB0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v63 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v50[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v61 = &v50[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v50[-v21];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v50[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v50[-v26];
  v64 = a1;
  v65 = v1;
  sub_1C1015530(a1, &v50[-v26]);
  v28 = *MEMORY[0x1E697FF38];
  v62 = v6;
  v29 = *(v6 + 104);
  v58 = v28;
  v57 = v29;
  v29(v25);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
  v59 = v8;
  v30 = *(v8 + 48);
  sub_1C0FE5654(v27, v12, &qword_1EBE902F0);
  sub_1C0FE5654(v25, &v12[v30], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {
    sub_1C0F9E27C(v25, &qword_1EBE902F0);
    sub_1C0F9E27C(v27, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v5) == 1)
    {
      sub_1C0F9E27C(v12, &qword_1EBE902F0);
      v31 = 56;
      v33 = v64;
      v32 = v65;
      v34 = v63;
      v36 = v60;
      v35 = v61;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_1C0FE5654(v12, v22, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v5) == 1)
  {
    sub_1C0F9E27C(v25, &qword_1EBE902F0);
    sub_1C0F9E27C(v27, &qword_1EBE902F0);
    (*(v62 + 8))(v22, v5);
LABEL_6:
    sub_1C0F9E27C(v12, &qword_1EBE902E8);
    v33 = v64;
    v32 = v65;
    v34 = v63;
    v36 = v60;
    goto LABEL_7;
  }

  v40 = v62;
  v41 = v55;
  (*(v62 + 32))(v55, &v12[v30], v5);
  sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  v51 = sub_1C1265DE0();
  v42 = *(v40 + 8);
  v42(v41, v5);
  sub_1C0F9E27C(v25, &qword_1EBE902F0);
  sub_1C0F9E27C(v27, &qword_1EBE902F0);
  v42(v22, v5);
  sub_1C0F9E27C(v12, &qword_1EBE902F0);
  v33 = v64;
  v32 = v65;
  v34 = v63;
  v36 = v60;
  if (v51)
  {
    v31 = 56;
    goto LABEL_8;
  }

LABEL_7:
  v31 = 64;
LABEL_8:
  v35 = v61;
LABEL_9:
  v37 = *(v32 + v31);
  sub_1C1015714(v33, v35);
  v57(v36, v58, v5);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v5);
  v38 = *(v59 + 48);
  sub_1C0FE5654(v35, v34, &qword_1EBE902F0);
  sub_1C0FE5654(v36, v34 + v38, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v5) != 1)
  {
    v39 = v56;
    sub_1C0FE5654(v34, v56, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(v34 + v38, 1, v5) != 1)
    {
      v65 = v37;
      v43 = v62;
      v44 = v55;
      (*(v62 + 32))(v55, v34 + v38, v5);
      sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
      LODWORD(v64) = sub_1C1265DE0();
      v45 = *(v43 + 8);
      v45(v44, v5);
      sub_1C0F9E27C(v36, &qword_1EBE902F0);
      sub_1C0F9E27C(v35, &qword_1EBE902F0);
      v45(v56, v5);
      v37 = v65;
      sub_1C0F9E27C(v34, &qword_1EBE902F0);
      if ((v64 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    sub_1C0F9E27C(v36, &qword_1EBE902F0);
    sub_1C0F9E27C(v35, &qword_1EBE902F0);
    (*(v62 + 8))(v39, v5);
LABEL_14:
    sub_1C0F9E27C(v34, &qword_1EBE902E8);
    goto LABEL_20;
  }

  sub_1C0F9E27C(v36, &qword_1EBE902F0);
  sub_1C0F9E27C(v35, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v34 + v38, 1, v5) != 1)
  {
    goto LABEL_14;
  }

  sub_1C0F9E27C(v34, &qword_1EBE902F0);
LABEL_18:
  v46 = v52;
  sub_1C10158F8(v33, v52);
  v47 = sub_1C1263120();
  (*(v53 + 8))(v46, v54);
  if (v47)
  {
    v48 = 1;
    goto LABEL_21;
  }

LABEL_20:
  v48 = 0;
LABEL_21:
  result = v37 - v48;
  if (__OFSUB__(v37, v48))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1015530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FE5654(v2 + *(a1 + 84), &v14 - v10, &qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FE4040(v11, a2, &qword_1EBE902F0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C1015714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FE5654(v2 + *(a1 + 92), &v14 - v10, &qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FE4040(v11, a2, &qword_1EBE902F0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C10158F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 88), &v15 - v10, &qword_1EBE904D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1015AFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  return v1;
}

uint64_t PhotosSearchRecentSuggestionsView.init(suggestions:selectionHandler:clearRecentSearchesHandler:expandRecentSearchesHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 56) = xmmword_1C12A7E90;
  *(a8 + 72) = sub_1C1012790() & 1;
  *(a8 + 80) = v15;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  v17 = v16[21];
  *(a8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  swift_storeEnumTagMultiPayload();
  v18 = v16[22];
  *(a8 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  v19 = v16[23];
  *(a8 + v19) = swift_getKeyPath();
  result = swift_storeEnumTagMultiPayload();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

void PhotosSearchRecentSuggestionsView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v61 = v0;
  v2 = v1;
  v65 = v3;
  OUTLINED_FUNCTION_0();
  v63 = v4;
  v64 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90EE8);
  v8 = *(v2 + 32);
  v66 = *(v2 + 16);
  v9 = v2;
  v59 = v2;
  v60 = v8;
  v10 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  v11 = sub_1C1266800();
  v12 = sub_1C12654A0();
  v13 = sub_1C12632E0();
  OUTLINED_FUNCTION_8_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_11();
  v17 = sub_1C1023734(v15, v16);
  v72 = v12;
  v73 = v13;
  v74 = WitnessTable;
  v75 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_14();
  v19 = swift_getWitnessTable();
  v20 = *(v9 + 40);
  v77 = v20;
  v52 = v20;
  OUTLINED_FUNCTION_16_9();
  v21 = swift_getWitnessTable();
  v72 = v11;
  v73 = v10;
  v74 = OpaqueTypeMetadata2;
  v75 = v19;
  v76 = v21;
  sub_1C12656A0();
  v72 = v12;
  v73 = v13;
  v74 = WitnessTable;
  v75 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C1265AF0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  v22 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v58 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v53 = &v52 - v25;
  OUTLINED_FUNCTION_1_1();
  v55 = swift_getWitnessTable();
  v72 = v22;
  v73 = MEMORY[0x1E69E6370];
  v74 = v55;
  v75 = MEMORY[0x1E69E6388];
  v56 = MEMORY[0x1E6981448];
  v26 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v57 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v54 = &v52 - v33;
  sub_1C1263AB0();
  v34 = v60;
  *&v35 = v60;
  *(&v35 + 1) = v20;
  v68 = v35;
  v67 = v66;
  v36 = v59;
  v38 = v61;
  v69 = *(v59 + 48);
  v37 = v69;
  v70 = v61;
  sub_1C1265590();
  v39 = v36;
  LOBYTE(v72) = sub_1C1015AFC() & 1;
  v41 = v62;
  v40 = v63;
  (*(v63 + 16))(v62, v38, v39);
  v42 = (*(v40 + 80) + 56) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v66;
  v44 = v52;
  *(v43 + 32) = v34;
  *(v43 + 40) = v44;
  *(v43 + 48) = v37;
  (*(v40 + 32))(v43 + v42, v41, v39);
  v45 = MEMORY[0x1E69E6370];
  v46 = v55;
  v47 = MEMORY[0x1E69E6388];
  v48 = v53;
  sub_1C1265010();

  (*(v58 + 8))(v48, v22);
  v72 = v22;
  v73 = v45;
  v74 = v46;
  v75 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v54;
  sub_1C0FDBA4C(v31, v26, v49);
  v51 = *(v57 + 8);
  v51(v31, v26);
  sub_1C0FDBA4C(v50, v26, v49);
  v51(v50, v26);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1016264@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v72 = a6;
  v59 = a5;
  v68 = a3;
  v79 = a1;
  v76 = a7;
  v10 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C1265810();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1C1265820();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a2;
  v67 = a4;
  v15 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  v16 = sub_1C1266800();
  v17 = sub_1C12654A0();
  v18 = sub_1C12632E0();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1C1023734(&qword_1EDE7BCF0, MEMORY[0x1E697C248]);
  OpaqueTypeConformance2 = v17;
  v89 = v18;
  v90 = WitnessTable;
  v91 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = swift_getWitnessTable();
  v93 = a5;
  v23 = swift_getWitnessTable();
  OpaqueTypeConformance2 = v16;
  v89 = v15;
  v90 = OpaqueTypeMetadata2;
  v91 = v22;
  v92 = v23;
  v62 = sub_1C12656A0();
  OpaqueTypeConformance2 = v17;
  v89 = v18;
  v90 = WitnessTable;
  v91 = v20;
  v87[2] = swift_getOpaqueTypeConformance2();
  v61 = swift_getWitnessTable();
  v58 = sub_1C1265AF0();
  v69 = *(v58 - 8);
  v24 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v65 = &v54 - v26;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91250);
  MEMORY[0x1EEE9AC00](v77);
  v28 = &v54 - v27;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90EE8);
  v78 = *(v64 - 8);
  v29 = MEMORY[0x1EEE9AC00](v64);
  v60 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v55 = &v54 - v31;
  *v28 = sub_1C12638E0();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91258);
  v33 = v66;
  v34 = v68;
  v35 = v67;
  v36 = v59;
  v37 = v72;
  sub_1C1016AF8(v79, v66, v68, v67, v59, v72, &v28[*(v32 + 44)]);
  v57 = sub_1C10239B0(&qword_1EBE91260, &qword_1EBE91250);
  v56 = sub_1C102306C();
  sub_1C1264A00();
  sub_1C0F9E27C(v28, &qword_1EBE91250);
  v38 = v71;
  *v71 = xmmword_1C12A3450;
  (*(v73 + 104))(v38, *MEMORY[0x1E697D748], v74);
  v39 = v70;
  sub_1C1265830();
  OpaqueTypeConformance2 = v33;
  v89 = v34;
  v90 = v35;
  v91 = v36;
  v92 = v37;
  v40 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  v41 = v79;
  v42 = sub_1C1014CE8(v40);
  sub_1C12478D4(v39, v42);
  v80 = v33;
  v81 = v34;
  v82 = v35;
  v83 = v36;
  v84 = v37;
  v85 = v41;
  sub_1C1209EC8();
  sub_1C1209E48();
  v43 = v63;
  sub_1C1265AE0();
  v44 = v58;
  v45 = swift_getWitnessTable();
  v46 = v65;
  sub_1C0FDBA4C(v43, v44, v45);
  v47 = v69;
  v48 = *(v69 + 8);
  v48(v43, v44);
  v49 = v60;
  v50 = v55;
  v51 = v64;
  (*(v78 + 16))(v60, v55, v64);
  v87[0] = v49;
  (*(v47 + 16))(v43, v46, v44);
  v87[1] = v43;
  v86[0] = v51;
  v86[1] = v44;
  OpaqueTypeConformance2 = v77;
  v89 = &type metadata for PhotosToolbarLabelButtonStyle;
  v90 = v57;
  v91 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = v45;
  sub_1C119EE80(v87, 2, v86);
  v48(v46, v44);
  v52 = *(v78 + 8);
  v52(v50, v51);
  v48(v43, v44);
  return (v52)(v49, v51);
}