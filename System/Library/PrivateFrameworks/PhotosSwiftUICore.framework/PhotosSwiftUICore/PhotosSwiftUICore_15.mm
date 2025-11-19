uint64_t sub_1C1111244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v46 = a8;
  v15 = sub_1C12637E0();
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v18) = *(a1 + 9);
  v44 = a2;
  v45 = a6;
  if (v18 == 1)
  {
    v40 = v17;
    v41 = v16;
    v58[0] = a2;
    v42 = a3;
    v43 = a7;
    v58[1] = a3;
    v58[2] = a4;
    v58[3] = a5;
    v58[4] = a6;
    v58[5] = a7;
    v20 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell();
    v21 = (a1 + *(v20 + 104));
    v22 = *v21;
    v23 = *(v21 + 1);
    LOBYTE(v58[0]) = v22;
    v58[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    v16 = sub_1C1265420();
    if (v57[0] == 1)
    {
      v24 = a1 + *(v20 + 120);
      v25 = *v24;
      if (*(v24 + 8) != 1)
      {

        sub_1C1266420();
        v26 = sub_1C1264410();
        sub_1C1262620();

        sub_1C12637D0();
        swift_getAtKeyPath();
        sub_1C1008DBC(v25, 0);
        v16 = (*(v40 + 8))(v19, v41);
      }

      a3 = v42;
      a7 = v43;
    }

    else
    {
      a3 = v42;
      a7 = v43;
    }
  }

  MEMORY[0x1EEE9AC00](v16);
  v27 = v44;
  *(&v39 - 8) = v44;
  *(&v39 - 7) = a3;
  v28 = v27;
  *(&v39 - 6) = a4;
  *(&v39 - 5) = a5;
  *(&v39 - 4) = v45;
  *(&v39 - 3) = a7;
  *(&v39 - 2) = a1;
  v29 = *(a5 + 8);
  type metadata accessor for PhotosInteractiveFavoriteBadge();
  sub_1C1263190();
  v30 = *(v29 + 8);
  type metadata accessor for PhotosFavoriteBadge();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1009330();
  sub_1C12655B0();
  memcpy(v57, v58, 0x70uLL);
  v31 = sub_1C12655C0();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264FA0();
  memcpy(__dst, v57, 0x70uLL);
  (*(*(v31 - 8) + 8))(__dst, v31);
  memcpy(v55, v56, sizeof(v55));
  if (*(a1 + 8) == 1)
  {
    v58[0] = *a1;
    (*(v30 + 8))(v28, v30);
  }

  v33 = sub_1C1263190();
  v50 = WitnessTable;
  v51 = MEMORY[0x1E697E5D8];
  v34 = swift_getWitnessTable();
  sub_1C1264F50();
  memcpy(v52, v55, 0x99uLL);
  (*(*(v33 - 8) + 8))(v52, v33);
  memcpy(v54, v57, sizeof(v54));
  v35 = sub_1C1263190();
  v48 = v34;
  v49 = MEMORY[0x1E697E5C0];
  v36 = swift_getWitnessTable();
  sub_1C0FDBA4C(v54, v35, v36);
  memcpy(v53, v54, sizeof(v53));
  v37 = *(*(v35 - 8) + 8);
  v37(v53, v35);
  memcpy(v47, v58, sizeof(v47));
  sub_1C0FDBA4C(v47, v35, v36);
  memcpy(v54, v47, sizeof(v54));
  return (v37)(v54, v35);
}

uint64_t sub_1C1111818(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRetain();
  v2 = sub_1C1265190();
  PhotosInteractiveFavoriteBadge.init(_:tint:)(v1, v2, v32);
  v3 = type metadata accessor for PhotosInteractiveFavoriteBadge();
  swift_unknownObjectRetain();
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
  v9 = sub_1C1265190();
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

uint64_t sub_1C1111C08()
{
  type metadata accessor for PhotosPersonHomeCell.PersonHomeCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  return sub_1C1265430();
}

_BYTE *storeEnumTagSinglePayload for LemonadePeopleShelfSpecs(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosPersonHomeCellAspectRatio(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1111E1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1111E60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C1111EA0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1C1111F0C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    v1 = MEMORY[0x1E69E6370];
    sub_1C1007F24();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1C1112740(319, &qword_1EDE76CA0, v1, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1C11126EC(319, &qword_1EDE77568, MEMORY[0x1E697F6A0]);
          if (v5 <= 0x3F)
          {
            sub_1C11126EC(319, &qword_1EDE77570, MEMORY[0x1E697E7E0]);
            if (v6 <= 0x3F)
            {
              sub_1C1112740(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1C1112740(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
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

uint64_t sub_1C11120EC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v28 = *(a3 + 24);
  v5 = *(v28 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(sub_1C1263A80() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = sub_1C1263150();
  v12 = *(v10 - 8);
  result = v10 - 8;
  v13 = v12;
  v14 = *(v12 + 64);
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_35:
    if ((v6 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((((((((a1 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16, v6, v28);
    }

    else
    {
      v26 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }

  else
  {
    v17 = *(v8 + 80) & 0xF8 | 7;
    v18 = *(v13 + 80) & 0xF8 | 7;
    v19 = ((v15 + ((v9 + v18 + ((v17 + ((*(v5 + 64) + ((v16 + 64) & ~v16) + 9) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + 1) & ~v18) + 224) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v19 <= 3)
    {
      v20 = ((a2 - v7 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    switch(v22)
    {
      case 1:
        v23 = a1[v19];
        if (!a1[v19])
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      case 2:
        v23 = *&a1[v19];
        if (!*&a1[v19])
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v23 = *&a1[v19];
        if (!v23)
        {
          goto LABEL_35;
        }

LABEL_28:
        v24 = v19 > 3;
        if (v19 <= 3)
        {
          v25 = (v23 - 1) << (8 * v19);
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }

        result = v7 + (v27 | v25) + 1;
        break;
      default:
        goto LABEL_35;
    }
  }

  return result;
}

void sub_1C11123C4(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v23 = *(a4 + 24);
  v6 = *(v23 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1C1263A80() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_1C1263150() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v12 + ((v10 + v15 + ((v14 + ((*(v6 + 64) + ((v13 + 64) & ~v13) + 9) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 1) & ~v15) + 224) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 3:
LABEL_50:
        __break(1u);
        break;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (a2)
        {
LABEL_37:
          if ((v7 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((((((a1 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v7, v23);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v22 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v22 = (a2 - 1);
            }

            *a1 = v22;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v8 + a2;
    bzero(a1, v16);
    if (v16 <= 3)
    {
      v21 = (v20 >> 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    if (v16 > 3)
    {
      *a1 = v20;
    }

    else
    {
      *a1 = v20;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v21;
        break;
      case 2:
        *(a1 + v16) = v21;
        break;
      case 3:
        goto LABEL_50;
      case 4:
        *(a1 + v16) = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1C11126EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1112740(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C11127FC()
{
  type metadata accessor for PhotosPersonHomeCell.PersonHomeCell();

  return sub_1C1111C08();
}

unint64_t sub_1C1112958()
{
  result = qword_1EDE76C10;
  if (!qword_1EDE76C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D8);
    sub_1C0FDB6D4(&qword_1EDE76C18, &qword_1EBE941E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76C10);
  }

  return result;
}

unint64_t sub_1C1112A1C()
{
  result = qword_1EBE941F8;
  if (!qword_1EBE941F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D0);
    sub_1C0FDB6D4(&qword_1EBE94200, &qword_1EBE94208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE941F8);
  }

  return result;
}

unint64_t sub_1C1112AD4()
{
  result = qword_1EBE94210;
  if (!qword_1EBE94210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8);
    sub_1C10B8FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94210);
  }

  return result;
}

unint64_t sub_1C1112B9C()
{
  result = qword_1EDE77218;
  if (!qword_1EDE77218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94248);
    sub_1C1112C54();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77218);
  }

  return result;
}

unint64_t sub_1C1112C54()
{
  result = qword_1EDE773D0;
  if (!qword_1EDE773D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773D0);
  }

  return result;
}

unint64_t sub_1C1112CD8()
{
  result = qword_1EDE771B0;
  if (!qword_1EDE771B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94250);
    sub_1C100DA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771B0);
  }

  return result;
}

uint64_t sub_1C1112D68()
{
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 16))(v2, v1, v0);
  OUTLINED_FUNCTION_13_20();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_7_25();
}

uint64_t sub_1C1112E18()
{
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 16))(v2, v1, v0);
  OUTLINED_FUNCTION_13_20();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_7_25();
}

uint64_t View.onStaticCondition<A>(_:transform:)@<X0>(int a1@<W0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a7;
  v48 = a6;
  v41 = a3;
  v42 = a2;
  v43 = a1;
  v46 = a8;
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  sub_1C1263C30();
  OUTLINED_FUNCTION_1();
  v45 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_8();
  if (v43)
  {
    v42(v44);
    v27 = OUTLINED_FUNCTION_11_21();
    v28 = v47;
    sub_1C0FDBA4C(v27, v29, v47);
    v30 = *(v20 + 8);
    v31 = OUTLINED_FUNCTION_11_21();
    v30(v31);
    sub_1C0FDBA4C(v24, a5, v28);
    OUTLINED_FUNCTION_11_21();
    sub_1C1112D68();
    v32 = OUTLINED_FUNCTION_11_21();
    v30(v32);
    (v30)(v24, a5);
  }

  else
  {
    v33 = v48;
    sub_1C0FDBA4C(v44, a4, v48);
    sub_1C0FDBA4C(v18, a4, v33);
    sub_1C1112E18();
    v34 = *(v11 + 8);
    v34(v15, a4);
    v34(v18, a4);
  }

  v49 = v47;
  v50 = v48;
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  v35 = OUTLINED_FUNCTION_13_20();
  sub_1C0FDBA4C(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_13_20();
  return v39(v38);
}

uint64_t View.onPhotosSolariumDisabled<A>(_:)(uint64_t a1)
{
  v2 = sub_1C1265930();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_37();
  View.ifPhotosSolariumEnabled<A, B>(then:else:)();
  OUTLINED_FUNCTION_0_47();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_30(WitnessTable);
  v11 = *(v4 + 8);
  v11(v8, v2);
  v12 = OUTLINED_FUNCTION_12_15();
  sub_1C0FDBA4C(v12, v13, a1);
  v14 = OUTLINED_FUNCTION_12_15();
  return (v11)(v14);
}

uint64_t View.trackingKeyboardHeight(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5[0] = a1;
  v5[1] = a2;
  *&v5[2] = a4;
  return MEMORY[0x1C68EE920](v5, a3, &type metadata for PhotosKeyboardHeightTrackingModifier);
}

uint64_t View.onPhotosSolariumEnabled<A>(_:)(uint64_t a1)
{
  v2 = sub_1C1265930();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_37();
  View.ifPhotosSolariumEnabled<A, B>(then:else:)();
  OUTLINED_FUNCTION_0_47();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_30(WitnessTable);
  v11 = *(v4 + 8);
  v11(v8, v2);
  v12 = OUTLINED_FUNCTION_12_15();
  sub_1C0FDBA4C(v12, v13, a1);
  v14 = OUTLINED_FUNCTION_12_15();
  return (v11)(v14);
}

uint64_t sub_1C1113698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_37();
  v14();
  OUTLINED_FUNCTION_23_7();
  sub_1C0FDBA4C(v15, v16, v17);
  v18 = *(v8 + 8);
  v18(v12, a5);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FDBA4C(v19, v20, v21);
  return (v18)(v5, a5);
}

uint64_t sub_1C11137D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v17(v16);
  sub_1C0FDBA4C(v13, a5, a8);
  v18 = *(v10 + 8);
  v18(v13, a5);
  sub_1C0FDBA4C(v15, a5, a8);
  return (v18)(v15, a5);
}

uint64_t sub_1C1113928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v17(v16);
  sub_1C0FDBA4C(v13, a6, a9);
  v18 = *(v10 + 8);
  v18(v13, a6);
  sub_1C0FDBA4C(v15, a6, a9);
  return (v18)(v15, a6);
}

uint64_t View.ifPhotosVisionOS<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_30();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_37();
  sub_1C1113CB4(v12);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FDBA4C(v13, v14, v15);
  v16 = *(v6 + 8);
  v16(v10, a3);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FDBA4C(v17, v18, v19);
  return (v16)(v3, a3);
}

uint64_t sub_1C1113BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FDBA4C(v11, v12, v13);
  sub_1C0FDBA4C(v10, a2, a4);
  return (*(v7 + 8))(v10, a2);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06PhotosA6UICore14HiddenModifier33_0A99AC76FC730140E513C4542021C234LLVGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1C1263190();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1C1113D70()
{
  result = qword_1EBE94270;
  if (!qword_1EBE94270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94270);
  }

  return result;
}

uint64_t sub_1C1113DC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C1113E04(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for HiddenModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HiddenModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1113FE4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94278);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94280);
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1C111408C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94288);
  sub_1C1266530();

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94290);
  (*(*(v14 - 8) + 16))(a4, a1, v14);
  v15 = (a4 + *(v12 + 56));
  *v15 = sub_1C111445C;
  v15[1] = v13;

  v16 = [v10 defaultCenter];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94298);
  sub_1C1266530();

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a5;
  v19 = (a4 + *(v17 + 56));
  *v19 = sub_1C11144A8;
  v19[1] = v18;
}

uint64_t sub_1C1114284(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C12619C0();
  if (result)
  {
    v8 = result;
    *&v10.origin.x = sub_1C1265EA0();
    v10.origin.y = v9;
    sub_1C12668E0();
    sub_1C104018C(v11, v8, &v12);

    sub_1C0FD1A08(v11);
    if (v13)
    {
      type metadata accessor for CGRect(0);
      result = swift_dynamicCast();
      if (result)
      {
        v11[0] = a3;
        v11[1] = a4;
        *&v11[2] = a1;

        *&v12 = CGRectGetHeight(v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94188);
        sub_1C12655F0();
      }
    }

    else
    {
      return sub_1C0FA4B78(&v12);
    }
  }

  return result;
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

unint64_t sub_1C11144B4()
{
  result = qword_1EDE7BF20;
  if (!qword_1EDE7BF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94280);
    sub_1C0FDB6D4(&qword_1EDE7BB50, &qword_1EBE94278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF20);
  }

  return result;
}

uint64_t static OneUpChromeAction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2 >> 4)
  {
    case 1u:
      if ((v3 & 0xF0) != 0x10)
      {
        goto LABEL_48;
      }

      goto LABEL_29;
    case 2u:
      if (v2 == 32)
      {
        if (v3 == 32)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 33)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 3u:
      if (v2 == 48)
      {
        if (v3 == 48)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 49)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 4u:
      if (v2 == 64)
      {
        if (v3 == 64)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 65)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 5u:
      if (v2 == 80)
      {
        if (v3 == 80)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 81)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 6u:
      if (v2 == 96)
      {
        if (v3 == 96)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 97)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 7u:
      if (v2 == 112)
      {
        if (v3 == 112)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 113)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 8u:
      if (v2 == 128)
      {
        if (v3 == 128)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 129)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 9u:
      if (v2 == 144)
      {
        if (v3 == 144)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 145)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 0xAu:
      if (v2 == 160)
      {
        if (v3 == 160)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 161)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 0xBu:
      if (v2 == 176)
      {
        if (v3 == 176)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 177)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 0xCu:
      if (v2 == 192)
      {
        if (v3 == 192)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 193)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 0xDu:
      if (v2 == 208)
      {
        if (v3 == 208)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 209)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 0xEu:
      if (v2 == 224)
      {
        if (v3 != 224)
        {
          goto LABEL_48;
        }

LABEL_46:
        v4 = 1;
        return v4 & 1;
      }

      if (v3 == 225)
      {
        goto LABEL_46;
      }

LABEL_48:
      v4 = 0;
      return v4 & 1;
    default:
      if (v3 >= 0x10)
      {
        goto LABEL_48;
      }

LABEL_29:
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
  }
}

uint64_t OneUpChromeAction.hash(into:)()
{
  v1 = *v0;
  switch(v1 >> 4)
  {
    case 1u:
      v2 = 2;
      goto LABEL_20;
    case 2u:
      if (v1 == 32)
      {
        v3 = 1;
      }

      else
      {
        v3 = 3;
      }

      goto LABEL_44;
    case 3u:
      if (v1 == 48)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_44;
    case 4u:
      if (v1 == 64)
      {
        v3 = 6;
      }

      else
      {
        v3 = 7;
      }

      goto LABEL_44;
    case 5u:
      if (v1 == 80)
      {
        v3 = 8;
      }

      else
      {
        v3 = 9;
      }

      goto LABEL_44;
    case 6u:
      if (v1 == 96)
      {
        v3 = 10;
      }

      else
      {
        v3 = 11;
      }

      goto LABEL_44;
    case 7u:
      if (v1 == 112)
      {
        v3 = 12;
      }

      else
      {
        v3 = 13;
      }

      goto LABEL_44;
    case 8u:
      if (v1 == 128)
      {
        v3 = 14;
      }

      else
      {
        v3 = 15;
      }

      goto LABEL_44;
    case 9u:
      if (v1 == 144)
      {
        v3 = 16;
      }

      else
      {
        v3 = 17;
      }

      goto LABEL_44;
    case 0xAu:
      if (v1 == 160)
      {
        v3 = 18;
      }

      else
      {
        v3 = 19;
      }

      goto LABEL_44;
    case 0xBu:
      if (v1 == 176)
      {
        v3 = 20;
      }

      else
      {
        v3 = 21;
      }

      goto LABEL_44;
    case 0xCu:
      if (v1 == 192)
      {
        v3 = 22;
      }

      else
      {
        v3 = 23;
      }

      goto LABEL_44;
    case 0xDu:
      if (v1 == 208)
      {
        v3 = 24;
      }

      else
      {
        v3 = 25;
      }

      goto LABEL_44;
    case 0xEu:
      if (v1 == 224)
      {
        v3 = 26;
      }

      else
      {
        v3 = 27;
      }

LABEL_44:
      result = MEMORY[0x1C68F07E0](v3);
      break;
    default:
      v2 = 0;
LABEL_20:
      MEMORY[0x1C68F07E0](v2);
      result = sub_1C1266EB0();
      break;
  }

  return result;
}

uint64_t OneUpChromeAction.hashValue.getter()
{
  sub_1C1266E90();
  OneUpChromeAction.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C111496C()
{
  sub_1C1266E90();
  OneUpChromeAction.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t OneUpNullChromeActionsDelegate.__deallocating_deinit()
{
  sub_1C10F4C7C(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t OneUpChromeAction.description.getter()
{
  v1 = *v0;
  switch(v1 >> 4)
  {
    case 1u:
      sub_1C1266940();

      OUTLINED_FUNCTION_1_37();
      v19[0] = v13 + 25;
      v19[1] = v12;
      goto LABEL_20;
    case 2u:
      if (v1 == 32)
      {
        return 0x6572616853;
      }

      else
      {
        return 0x207373696D736944;
      }

    case 3u:
      if (v1 == 48)
      {
        return 0x4620656C67676F54;
      }

      else
      {
        return 0x4420656C67676F54;
      }

    case 4u:
      if (v1 == 64)
      {
        return 0x6873617254;
      }

      else
      {
        return 1953064005;
      }

    case 5u:
      OUTLINED_FUNCTION_0_48();
      v5 = v16 | 6;
      v6 = v1 == 80;
      goto LABEL_34;
    case 6u:
      OUTLINED_FUNCTION_0_48();
      v9 = v17 + 21;
      v10 = v1 == 96;
      goto LABEL_30;
    case 7u:
      OUTLINED_FUNCTION_0_48();
      v5 = v11 + 23;
      v6 = v1 == 112;
      goto LABEL_34;
    case 8u:
      if (v1 == 128)
      {
        return 0x65726F74736552;
      }

      else
      {
        return 0x6552207473727542;
      }

    case 9u:
      OUTLINED_FUNCTION_1_37();
      OUTLINED_FUNCTION_2_41();
      v10 = v1 == 144;
      goto LABEL_30;
    case 0xAu:
      OUTLINED_FUNCTION_0_48();
      v5 = v18 | 4;
      v6 = v1 == 160;
      goto LABEL_34;
    case 0xBu:
      OUTLINED_FUNCTION_0_48();
      v5 = v4 | 4;
      v6 = v1 == 176;
LABEL_34:
      if (v6)
      {
        return v5;
      }

      else
      {
        return v3;
      }

    case 0xCu:
      OUTLINED_FUNCTION_0_48();
      v9 = v8 | 6;
      v10 = v1 == 192;
      goto LABEL_30;
    case 0xDu:
      OUTLINED_FUNCTION_1_37();
      OUTLINED_FUNCTION_2_41();
      v10 = v1 == 208;
LABEL_30:
      if (v10)
      {
        result = v7;
      }

      else
      {
        result = v9;
      }

      break;
    case 0xEu:
      if (v1 == 224)
      {
        result = 0xD000000000000011;
      }

      else
      {
        result = 0xD00000000000001FLL;
      }

      break;
    default:
      sub_1C1266940();

      strcpy(v19, "Like (set to ");
      HIWORD(v19[1]) = -4864;
LABEL_20:
      if (v1)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (v1)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      MEMORY[0x1C68EF850](v14, v15);

      MEMORY[0x1C68EF850](41, 0xE100000000000000);
      result = v19[0];
      break;
  }

  return result;
}

unint64_t sub_1C1114DF0()
{
  result = qword_1EDE7D7A0;
  if (!qword_1EDE7D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D7A0);
  }

  return result;
}

unint64_t sub_1C1114E44(uint64_t a1)
{
  result = sub_1C1114E6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C1114E6C()
{
  result = qword_1EDE778F8;
  if (!qword_1EDE778F8)
  {
    type metadata accessor for OneUpNullChromeActionsDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE778F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneUpChromeAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x72)
  {
    if (a2 + 142 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 142) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 143;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 4) & 0xFFFFFF8F | (16 * ((*a1 >> 1) & 7))) ^ 0x7F;
  if (v5 >= 0x71)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 142 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 142) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x72)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x71)
  {
    v6 = ((a2 - 114) >> 8) + 1;
    *result = a2 - 114;
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
          *result = 2 * (((-a2 >> 4) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C11150D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x1F)
  {
    return v1 >> 4;
  }

  else
  {
    return (v1 | 0xFFFFFFFE) + 2 * (v1 >> 4);
  }
}

_BYTE *sub_1C11150FC(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    LOBYTE(v2) = *result & 1 | (16 * a2);
  }

  else
  {
    v2 = (a2 & 1 | (16 * (a2 >> 1))) + 16;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OneUpChromeActionsDelegateError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 6)
  {
    if (a2 + 250 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 250) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 251;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((2 * *a1) & 4 | (*a1 >> 2) & 3) ^ 7;
  if (v5 >= 5)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeActionsDelegateError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 250 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 250) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 5)
  {
    v6 = ((a2 - 6) >> 8) + 1;
    *result = a2 - 6;
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
          *result = 2 * ((((-a2 & 4) != 0) - 2 * a2) & 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C11152AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (((v1 >> 2) & 2) != 0)
  {
    return (v1 & 1 | (2 * (v1 >> 4))) + 2;
  }

  else
  {
    return (v1 >> 2) & 3;
  }
}

_BYTE *sub_1C11152E4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    LOBYTE(v2) = *result & 0xF1 | (4 * a2);
  }

  else
  {
    v2 = (a2 & 1 | (16 * (a2 >> 1))) - 8;
  }

  *result = v2;
  return result;
}

uint64_t PhotosAsyncImagePhase.image.getter()
{
  if ((*v0 >> 62) > 1)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t PhotosAsyncImagePhase.info.getter@<X0>(void *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = 0;
    result = 0;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t PhotosAsyncImagePhase.error.getter()
{
  v1 = *v0;
  if (*v0 >> 62 != 1)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

uint64_t PhotosAsyncImage.init(provider:configuration:targetPixelSize:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v21 = type metadata accessor for PhotosAsyncImage();
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  sub_1C1115638();
  v23 = v21[17];
  sub_1C1115700();
  *(a9 + v23) = sub_1C1266740();
  v24 = (a9 + v21[14]);
  *v24 = a10;
  v24[1] = a11;
  OUTLINED_FUNCTION_15_1();
  (*(v25 + 32))(a9, a1, a6);
  v26 = v21[13];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_1();
  result = (*(v27 + 32))(a9 + v26, a2);
  v29 = (a9 + v21[15]);
  *v29 = a3;
  v29[1] = a4;
  return result;
}

uint64_t sub_1C1115638()
{
  OUTLINED_FUNCTION_26_2();
  type metadata accessor for PhotosAsyncImage.LoadingState();
  return sub_1C12628D0();
}

uint64_t sub_1C1115694()
{
  type metadata accessor for PhotosAsyncImage.LoadingState();
  sub_1C1262900();
  return sub_1C12628E0();
}

unint64_t sub_1C1115700()
{
  result = qword_1EDE7B5B0;
  if (!qword_1EDE7B5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE7B5B0);
  }

  return result;
}

uint64_t sub_1C1115744@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, AssociatedTypeWitness);
  v5 = type metadata accessor for PhotosAsyncImage.LoadingState();
  v6 = v5[13];
  v7 = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(a2 + v6, 1, 1, v7);
  result = __swift_storeEnumTagSinglePayload(a2 + v5[14], 1, 1, a1);
  v9 = a2 + v5[15];
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = (a2 + v5[16]);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0x8000000000000000;
  *(a2 + v5[17]) = 0;
  v11 = a2 + v5[18];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  return result;
}

uint64_t PhotosAsyncImage.init<A, B>(provider:configuration:targetPixelSize:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v49 = a8;
  v50 = a3;
  v52 = a5;
  v53 = a6;
  v51 = a4;
  v48 = a2;
  v54 = a1;
  v55 = a9;
  v45 = a14;
  v46 = a15;
  OUTLINED_FUNCTION_36_0();
  v43 = a13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = AssociatedTypeWitness;
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  v44 = &v43 - v24;
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  v31 = v30 - v29;
  (*(v27 + 16))(v30 - v29, a1, a7);
  (*(v22 + 16))(v25, a2, AssociatedTypeWitness);
  v32 = swift_allocObject();
  v33 = v49;
  v34 = v50;
  v32[2] = a7;
  v32[3] = v33;
  v32[4] = a12;
  v32[5] = a13;
  v36 = v45;
  v35 = v46;
  v32[6] = v45;
  v32[7] = v35;
  v37 = v51;
  v38 = v52;
  v32[8] = v34;
  v32[9] = v37;
  v39 = v53;
  v32[10] = v38;
  v32[11] = v39;
  sub_1C1263C30();
  v40 = sub_1C1263C30();
  v58 = v36;
  v59 = v35;
  WitnessTable = swift_getWitnessTable();
  v57 = v35;
  v41 = swift_getWitnessTable();
  PhotosAsyncImage.init(provider:configuration:targetPixelSize:content:)(v31, v44, sub_1C111620C, v32, v40, a7, v41, v43, v55, a10, a11);
  (*(v22 + 8))(v48, v47);
  return (*(v27 + 8))(v54, a7);
}

uint64_t sub_1C1115B14@<X0>(unint64_t *a1@<X0>, void (*a2)(unint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X6>, void (*a7)(void)@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, void *a11)
{
  v11 = a7;
  v57 = a5;
  v58 = a4;
  v59 = a3;
  v60 = a2;
  v67 = a8;
  v14 = *(a7 - 1);
  v69 = a11;
  v66 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = sub_1C1263C30();
  v62 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v61 = &v55 - v21;
  v22 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - v27;
  v68 = v29;
  v30 = sub_1C1263C30();
  v64 = *(v30 - 8);
  v65 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v63 = &v55 - v31;
  v32 = *a1;
  v33 = *a1 >> 62;
  if (!v33)
  {

    goto LABEL_6;
  }

  if (v33 != 1)
  {
LABEL_10:
    v58(0);
    v44 = v11;
    v45 = v11;
    v37 = v69;
    sub_1C0FDBA4C(v16, v44, v69);
    v46 = *(v14 + 8);
    v46(v16, v45);
    sub_1C0FDBA4C(v19, v45, v37);
    v47 = v66;
    v70 = v66;
    v71 = v37;
    swift_getWitnessTable();
    v40 = v63;
    sub_1C1112E18();
    v46(v16, v45);
    v46(v19, v45);
    v34 = v47;
    goto LABEL_13;
  }

  if (!a1[1])
  {
    v60 = a6;
    v41 = v11;
    v75 = v32 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1C111AD64(v32);
    v42 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913F8);
    if (swift_dynamicCast())
    {
      v43 = v68;
      v37 = v69;
      if ((v74 & 1) == 0)
      {

        v11 = v41;
        goto LABEL_10;
      }
    }

    else
    {
      v43 = v68;
      v37 = v69;
    }

    v69 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
    v58(1);
    v48 = v41;
    sub_1C0FDBA4C(v16, v41, v37);
    v49 = *(v14 + 8);
    v49(v16, v41);
    sub_1C0FDBA4C(v19, v41, v37);
    v50 = v61;
    v51 = v66;
    sub_1C1112E18();
    v72 = v51;
    v73 = v37;
    swift_getWitnessTable();
    v40 = v63;
    sub_1C1112D68();

    (*(v62 + 8))(v50, v43);
    v49(v16, v48);
    v49(v19, v48);
    v34 = v51;
    goto LABEL_13;
  }

LABEL_6:
  v60(v32);
  v56 = v28;
  v34 = v66;
  sub_1C0FDBA4C(v25, a6, v66);
  v35 = *(v22 + 8);
  v35(v25, a6);
  sub_1C0FDBA4C(v28, a6, v34);
  v36 = v61;
  v60 = v11;
  v37 = v69;
  sub_1C1112D68();
  v80 = v34;
  v81 = v37;
  v38 = a6;
  v39 = v68;
  swift_getWitnessTable();
  v40 = v63;
  sub_1C1112D68();

  (*(v62 + 8))(v36, v39);
  v35(v25, v38);
  v35(v56, v38);
LABEL_13:
  v78 = v34;
  v79 = v37;
  WitnessTable = swift_getWitnessTable();
  v77 = v37;
  v52 = v65;
  v53 = swift_getWitnessTable();
  sub_1C0FDBA4C(v40, v52, v53);
  return (*(v64 + 8))(v40, v52);
}

uint64_t PhotosAsyncImage.init<A, B>(provider:configuration:targetSize:displayScale:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v39 = a6;
  v40 = a8;
  v37 = a4;
  v38 = a5;
  v35 = a9;
  v36 = a3;
  v33 = a12;
  v34 = a10;
  OUTLINED_FUNCTION_36_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v27 = v26 - v25;
  sub_1C12665D0();
  sub_1C12665C0();
  v29 = v28;
  v31 = v30;
  (*(v23 + 16))(v27, a1, a7);
  (*(v18 + 16))(v21, a2, AssociatedTypeWitness);
  PhotosAsyncImage.init<A, B>(provider:configuration:targetPixelSize:content:placeholder:)(v27, v21, v36, v37, v38, v39, a7, v40, v35, v29, v31, v34, a11, v33, a13);
  (*(v18 + 8))(a2, AssociatedTypeWitness);
  return (*(v23 + 8))(a1, a7);
}

void sub_1C1116480(uint64_t a1, int a2, void *a3, double a4, double a5)
{
  v192 = a1;
  v182 = a2;
  v8 = a3[3];
  v174 = sub_1C1266790();
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v172 = &v151 - v9;
  v10 = a3[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v171 = sub_1C1266790();
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v151 - v12;
  v190 = AssociatedTypeWitness;
  v175 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v189 = &v151 - v14;
  v176 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v165 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v152 = &v151 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v188 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v155 = &v151 - v22;
  v23 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v157 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v179 = &v151 - v24;
  *&v25 = a3[4];
  *&v26 = a3[2];
  *(&v26 + 1) = v8;
  *(&v25 + 1) = v10;
  v160 = v25;
  v195[1] = v25;
  v159 = v26;
  v195[0] = v26;
  v27 = type metadata accessor for PhotosAsyncImage.LoadingState();
  v194 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v153 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v187 = &v151 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v156 = &v151 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v151 - v34;
  v36 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v164 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v181 = &v151 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v151 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v151 - v45;
  v168 = v10;
  v177 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = *(AssociatedConformanceWitness + 16);
  v49 = v192;
  v154 = AssociatedConformanceWitness;
  v184 = v48(v21);
  v185 = v50;
  v51 = *(v188 + 16);
  v162 = v188 + 16;
  v161 = v51;
  v51(v46, v49, v21);
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v21);
  v186 = a3;
  v52 = v21;
  sub_1C1115694();
  v53 = *(v36 + 16);
  v53(v43, &v35[*(v27 + 52)], v23);
  v54 = *(v194 + 8);
  v55 = v35;
  v56 = TupleTypeMetadata2;
  v191 = v27;
  v57 = v27;
  v58 = v179;
  v158 = v54;
  v194 += 8;
  (v54)(v55, v57);
  v59 = *(v56 + 48);
  v53(v58, v46, v23);
  v53((v58 + v59), v43, v23);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v52);
  v183 = v36;
  v167 = v52;
  v166 = v23;
  if (EnumTagSinglePayload != 1)
  {
    v68 = v43;
    v53(v181, v58, v23);
    if (__swift_getEnumTagSinglePayload(v58 + v59, 1, v52) != 1)
    {
      v70 = v188;
      v71 = v155;
      (*(v188 + 32))(v155, v58 + v59, v52);
      v72 = v181;
      LODWORD(TupleTypeMetadata2) = sub_1C1265DE0();
      v73 = *(v70 + 8);
      v73(v71, v52);
      v74 = v58;
      v75 = *(v183 + 8);
      v75(v68, v23);
      v75(v46, v23);
      v73(v72, v52);
      v75(v74, v23);
      v64 = v193;
      v66 = v185;
      v65 = v186;
      v63 = v182;
      v67 = v158;
      if ((TupleTypeMetadata2 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v69 = *(v183 + 8);
    v69(v43, v23);
    v69(v46, v23);
    (*(v188 + 8))(v181, v52);
    v63 = v182;
LABEL_6:
    (*(v157 + 8))(v58, v56);
    v64 = v193;
    v66 = v185;
    v65 = v186;
    goto LABEL_13;
  }

  v61 = *(v36 + 8);
  v61(v43, v23);
  v61(v46, v23);
  v62 = __swift_getEnumTagSinglePayload(v58 + v59, 1, v52);
  v63 = v182;
  if (v62 != 1)
  {
    goto LABEL_6;
  }

  v61(v58, v23);
  v64 = v193;
  v66 = v185;
  v65 = v186;
  v67 = v158;
LABEL_8:
  v76 = v156;
  sub_1C1115694();
  v77 = &v76[v191[15]];
  v78 = *v77;
  v79 = *(v77 + 1);
  v80 = v77[16];
  v67(v76);
  if (v80)
  {
    goto LABEL_13;
  }

  if (v78 != a4 || v79 != a5)
  {
    goto LABEL_13;
  }

  v113 = v187;
  sub_1C1115694();
  v114 = v191;
  v115 = sub_1C1117928(v191);
  (v67)(v113, v114);
  if (v115)
  {
    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v116 = sub_1C1262720();
    __swift_project_value_buffer(v116, qword_1EDE9B6D8);

    v117 = sub_1C12626F0();
    v118 = sub_1C1266400();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v195[0] = v120;
      *v119 = 136315394;
      v121 = sub_1C0FA0E80(v184, v66, v195);

      *(v119 + 4) = v121;
      *(v119 + 12) = 2080;
      v122 = sub_1C12665A0();
      v124 = sub_1C0FA0E80(v122, v123, v195);

      *(v119 + 14) = v124;
      v125 = "PhotosAsyncImage declining load for configuration %s targetPixelSize %s: Has Active Request";
LABEL_28:
      _os_log_impl(&dword_1C0F96000, v117, v118, v125, v119, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v120, -1, -1);
      MEMORY[0x1C68F1630](v119, -1, -1);
LABEL_30:

      return;
    }

    goto LABEL_29;
  }

  sub_1C1115694();
  v126 = sub_1C1117980(v114);
  (v67)(v113, v114);
  if (v126)
  {
    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v127 = sub_1C1262720();
    __swift_project_value_buffer(v127, qword_1EDE9B6D8);

    v117 = sub_1C12626F0();
    v118 = sub_1C1266400();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v195[0] = v120;
      *v119 = 136315394;
      v128 = sub_1C0FA0E80(v184, v66, v195);

      *(v119 + 4) = v128;
      *(v119 + 12) = 2080;
      v129 = sub_1C12665A0();
      v131 = sub_1C0FA0E80(v129, v130, v195);

      *(v119 + 14) = v131;
      v125 = "PhotosAsyncImage declining load for configuration %s targetPixelSize %s: Has Existing Full Quality Image";
      goto LABEL_28;
    }

LABEL_29:

    goto LABEL_30;
  }

  v132 = v153;
  sub_1C1115694();
  v133 = &v132[*(v114 + 64)];
  v135 = *v133;
  v134 = v133[1];
  sub_1C111AD64(*v133);
  (v158)(v132, v114);
  if (!(v135 >> 62))
  {
    sub_1C111ADFC(v135);
    goto LABEL_36;
  }

  if (v135 >> 62 == 1)
  {

    sub_1C111ADFC(v135);
    if (v134)
    {

LABEL_36:
      v136 = v178;
      v137 = v152;
      if (qword_1EDE81FC8 != -1)
      {
        swift_once();
      }

      v138 = sub_1C1262720();
      __swift_project_value_buffer(v138, qword_1EDE9B6D8);
      (*(v136 + 16))(v137, v64, v65);

      v139 = sub_1C12626F0();
      v140 = sub_1C12663F0();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = v137;
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *&v195[0] = v143;
        *v142 = 136315650;
        *(v142 + 4) = sub_1C0FA0E80(v184, v66, v195);
        *(v142 + 12) = 2080;
        v144 = sub_1C12665A0();
        v146 = sub_1C0FA0E80(v144, v145, v195);

        *(v142 + 14) = v146;
        *(v142 + 22) = 2080;
        (*(v176 + 16))(v151, v141, v177);
        v147 = sub_1C1265ED0();
        v149 = v148;
        (*(v178 + 8))(v141, v186);
        v150 = sub_1C0FA0E80(v147, v149, v195);
        v66 = v185;

        *(v142 + 24) = v150;
        _os_log_impl(&dword_1C0F96000, v139, v140, "PhotosAsyncImage reloading for configuration %s targetPixelSize %s from provider: %s.", v142, 0x20u);
        swift_arrayDestroy();
        v65 = v186;
        MEMORY[0x1C68F1630](v143, -1, -1);
        MEMORY[0x1C68F1630](v142, -1, -1);
      }

      else
      {

        (*(v136 + 8))(v137, v65);
      }
    }
  }

LABEL_13:
  sub_1C11179B4(v65);
  if ((v63 & 1) == 0)
  {
    v82 = v191;
    sub_1C1262900();
    v83 = v187;
    sub_1C12628E0();
    v84 = &v83[*(v82 + 72)];
    *v84 = 0;
    *(v84 + 1) = 0;
    v84[16] = 1;
    sub_1C12628F0();
  }

  v85 = sub_1C1266400();
  v86 = *(v64 + *(v65 + 17));
  if (os_log_type_enabled(v86, v85))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&v195[0] = v88;
    *v87 = 136315394;
    *(v87 + 4) = sub_1C0FA0E80(v184, v66, v195);
    *(v87 + 12) = 2080;
    v89 = sub_1C12665A0();
    v91 = sub_1C0FA0E80(v89, v90, v195);

    *(v87 + 14) = v91;
    v66 = v185;
    _os_log_impl(&dword_1C0F96000, v86, v85, "PhotosAsyncImage loadConfiguration %s targetPixelSize %s", v87, 0x16u);
    swift_arrayDestroy();
    v92 = v88;
    v65 = v186;
    MEMORY[0x1C68F1630](v92, -1, -1);
    MEMORY[0x1C68F1630](v87, -1, -1);
  }

  v93 = v178;
  v94 = v165;
  (*(v178 + 16))(v165, v64, v65);
  v95 = (*(v93 + 80) + 49) & ~*(v93 + 80);
  v96 = (v163 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  v98 = v160;
  *(v97 + 16) = v159;
  *(v97 + 32) = v98;
  *(v97 + 48) = v63 & 1;
  (*(v93 + 32))(v97 + v95, v94, v65);
  v99 = (v97 + v96);
  *v99 = v184;
  v99[1] = v66;
  v100 = v189;
  v101 = v192;
  v102 = v177;
  (*(v168 + 40))(v192, sub_1C111BFE8, v97, v177, a4, a5);

  v103 = v175;
  v104 = v169;
  v105 = v100;
  v106 = v190;
  (*(v175 + 16))(v169, v105, v190);
  __swift_storeEnumTagSinglePayload(v104, 0, 1, v106);
  v107 = v191;
  sub_1C1262900();
  v108 = v187;
  sub_1C12628E0();
  (*(v170 + 40))(v108, v104, v171);
  sub_1C12628F0();
  v109 = v172;
  (*(v176 + 16))(v172, v64, v102);
  __swift_storeEnumTagSinglePayload(v109, 0, 1, v102);
  sub_1C12628E0();
  (*(v173 + 40))(&v108[v107[14]], v109, v174);
  sub_1C12628F0();
  v110 = v164;
  v111 = v167;
  v161(v164, v101, v167);
  __swift_storeEnumTagSinglePayload(v110, 0, 1, v111);
  sub_1C12628E0();
  (*(v183 + 40))(&v108[v107[13]], v110, v166);
  sub_1C12628F0();
  sub_1C12628E0();
  v112 = &v108[v107[15]];
  *v112 = a4;
  *(v112 + 1) = a5;
  v112[16] = 0;
  sub_1C12628F0();
  sub_1C12628E0();
  v108[v107[17]] = 0;
  sub_1C12628F0();
  (*(v103 + 8))(v189, v190);
}

uint64_t sub_1C1117928(uint64_t a1)
{
  if (*(v1 + *(a1 + 68)))
  {
    return 0;
  }

  v2 = *(v1 + *(a1 + 64));
  if (v2 >> 62 == 1)
  {
    v3 = (v2 & 0x3FFFFFFFFFFFFFFFLL);

    return 0;
  }

  return 1;
}

uint64_t sub_1C1117980(uint64_t a1)
{
  v2 = v1 + *(a1 + 64);
  if (*v2 >> 62 || (v3 = *(v2 + 8), v3 == 2))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C11179B4(void *a1)
{
  v2 = a1[5];
  v3 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1C1266790();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v8;
  v44 = AssociatedTypeWitness;
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v37 - v10;
  v11 = sub_1C1266790();
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  *&v14 = a1[4];
  *&v15 = a1[2];
  *(&v15 + 1) = v3;
  v41 = v2;
  *(&v14 + 1) = v2;
  v50 = v15;
  v51 = v14;
  v16 = type metadata accessor for PhotosAsyncImage.LoadingState();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v46 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1115694();
  v27 = v45;
  (*(v45 + 16))(v13, &v24[*(v16 + 56)], v11);
  v28 = *(v17 + 8);
  v28(v24, v16);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    return (*(v27 + 8))(v13, v11);
  }

  (*(v47 + 32))(v46, v13, v3);
  sub_1C1115694();
  v30 = v42;
  (*(v48 + 16))(v42, v21, v49);
  v28(v21, v16);
  v31 = v44;
  if (__swift_getEnumTagSinglePayload(v30, 1, v44) == 1)
  {
    (*(v47 + 8))(v46, v3);
    return (*(v48 + 8))(v30, v49);
  }

  else
  {
    v32 = v40;
    (*(v40 + 32))(v43, v30, v31);
    sub_1C1262900();
    v33 = v38;
    sub_1C12628E0();
    v33[*(v16 + 68)] = 1;
    sub_1C12628F0();
    v34 = v39;
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v31);
    sub_1C12628E0();
    (*(v48 + 40))(v33, v34, v49);
    sub_1C12628F0();
    v35 = v43;
    v36 = v46;
    (*(v41 + 48))(v43, v3);
    (*(v32 + 8))(v35, v31);
    return (*(v47 + 8))(v36, v3);
  }
}

uint64_t sub_1C1117F3C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v100 = a4;
  v101 = a5;
  v107 = a3;
  v14 = *a1;
  v103 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v102 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v16;
  v110 = v17;
  v111 = v18;
  v112 = a9;
  v19 = type metadata accessor for PhotosAsyncImage();
  v106 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v96 - v20;
  v105 = a9;
  v109 = a6;
  v110 = a7;
  v111 = a8;
  v112 = a9;
  v21 = type metadata accessor for PhotosAsyncImage.LoadingState();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  if (*(a1 + 72))
  {
    v109 = v14;
    v31 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913F8);
    if (swift_dynamicCast() & 1) != 0 && v108 != 1 || (v109 = v14, v82 = v14, (swift_dynamicCast()))
    {
      v83 = 0;
LABEL_28:
      v87 = v14;
      sub_1C1262900();
      sub_1C12628E0();
      v88 = &v27[*(v21 + 64)];
      sub_1C111ADFC(*v88);
      *v88 = v14 | 0x4000000000000000;
      v88[1] = v83;
      v88[2] = 0;
      sub_1C12628F0();
    }

    sub_1C1115694();
    v84 = &v24[*(v21 + 64)];
    v85 = *v84;
    v86 = v84[1];
    sub_1C111AD64(*v84);
    (*(v22 + 8))(v24, v21);
    v83 = v85;
    if (v85 >> 62)
    {
      if (v85 >> 62 != 1)
      {
        v83 = 0;
        goto LABEL_27;
      }

      v83 = v86;
    }

    sub_1C111ADFC(v85);
LABEL_27:

    goto LABEL_28;
  }

  v98 = v14;
  v33 = *(a1 + 8);
  v32 = *(a1 + 16);
  v34 = *(a1 + 24);
  v35 = *(a1 + 32);
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v99 = *(a1 + 56);
  v97 = *(a1 + 64);
  v38 = v107;
  v39 = v19;
  if ((a2 & 1) != 0 && (sub_1C1115694(), v40 = &v30[*(v21 + 72)], v41 = *v40, v42 = *(v40 + 1), v43 = v40[16], v44 = (*(v22 + 8))(v30, v21), (v43 & 1) == 0) && MEMORY[0x1C68F0CB0](v44, v41, v42, v33, v32))
  {
    v45 = sub_1C1266400();
    v46 = *(v38 + *(v19 + 68));
    result = os_log_type_enabled(v46, v45);
    if (result)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v109 = v49;
      *v48 = 136315650;
      *(v48 + 4) = sub_1C0FA0E80(v100, v101, &v109);
      *(v48 + 12) = 2080;
      v50 = sub_1C12665A0();
      v52 = sub_1C0FA0E80(v50, v51, &v109);

      *(v48 + 14) = v52;
      *(v48 + 22) = 2080;
      v53 = sub_1C12665A0();
      v55 = sub_1C0FA0E80(v53, v54, &v109);

      *(v48 + 24) = v55;
      _os_log_impl(&dword_1C0F96000, v46, v45, "PhotosAsyncImage is increase size ignore image with smaller size %s receivedSize %s imageSize %s", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v49, -1, -1);
      return MEMORY[0x1C68F1630](v48, -1, -1);
    }
  }

  else
  {
    v56 = *(v19 + 64);
    v57 = sub_1C1262900();
    sub_1C12628E0();
    v58 = &v27[*(v21 + 72)];
    *v58 = v33;
    *(v58 + 1) = v32;
    v58[16] = 0;
    v101 = v57;
    sub_1C12628F0();
    sub_1C1266560();
    v114.origin.x = v59;
    v114.origin.y = v60;
    v114.size.width = v61;
    v114.size.height = v62;
    v113.origin.x = v34;
    v113.origin.y = v35;
    v113.size.width = v36;
    v113.size.height = v37;
    v63 = CGRectEqualToRect(v113, v114);
    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v64 = sub_1C1262720();
    v100 = __swift_project_value_buffer(v64, qword_1EDE9B6D8);
    v65 = v99;
    v66 = v106;
    if (!v63)
    {
      v67 = sub_1C12626F0();
      v68 = sub_1C1266410();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v96 = v56;
        v70 = v69;
        v71 = swift_slowAlloc();
        v109 = v71;
        *v70 = 136315138;
        v66 = v106;
        *(v70 + 4) = sub_1C0FA0E80(0xD00000000000008ALL, 0x80000001C126C200, &v109);
        _os_log_impl(&dword_1C0F96000, v67, v68, "%s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        v72 = v71;
        v38 = v107;
        MEMORY[0x1C68F1630](v72, -1, -1);
        MEMORY[0x1C68F1630](v70, -1, -1);
      }
    }

    if (v65 == 2 && ((*(v105 + 56))(a7) & 1) == 0)
    {
      v73 = v104;
      (*(v66 + 16))(v104, v38, v39);
      v74 = sub_1C12626F0();
      LODWORD(v106) = sub_1C12663F0();
      if (os_log_type_enabled(v74, v106))
      {
        v75 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v109 = v105;
        *v75 = 136315138;
        (*(v103 + 16))(v102, v73, a7);
        v76 = sub_1C1265ED0();
        v78 = v77;
        (*(v66 + 8))(v73, v39);
        v79 = sub_1C0FA0E80(v76, v78, &v109);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_1C0F96000, v74, v106, "PhotosAsyncImage provider %s did not indicate whether the image is degraded. This may lead to unnecessary image reloading.", v75, 0xCu);
        v80 = v105;
        __swift_destroy_boxed_opaque_existential_0Tm(v105);
        MEMORY[0x1C68F1630](v80, -1, -1);
        v81 = v75;
        v65 = v99;
        MEMORY[0x1C68F1630](v81, -1, -1);
      }

      else
      {

        (*(v66 + 8))(v73, v39);
      }
    }

    v89 = v98;
    if ([v89 CGImage])
    {
      [v89 scale];
      UIImageOrientation.photosImageOrientation.getter([v89 imageOrientation]);
      v90 = v89;
      sub_1C10E4748(v90);
      v91 = v97;
      if (v92)
      {
        v93 = sub_1C1265370();
      }

      else
      {
        v93 = sub_1C12652E0();
      }

      v94 = v93;
    }

    else
    {
      v94 = sub_1C12652D0();
      v91 = v97;
    }

    if (!v91)
    {
      v91 = sub_1C1265CE0();
    }

    sub_1C12628E0();
    v95 = &v27[*(v21 + 64)];
    sub_1C111ADFC(*v95);
    *v95 = v94;
    v95[1] = v65;
    v95[2] = v91;
    return sub_1C12628F0();
  }

  return result;
}

void sub_1C1118954(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v89 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v82 - v10;
  v12 = *(v11 + 40);
  v93 = *(v11 + 16);
  v90 = *(v11 + 24);
  v94 = v90;
  v95 = v12;
  v13 = type metadata accessor for PhotosAsyncImage.LoadingState();
  v91 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82 - v22;
  v24 = *(a1 + 52);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 16);
  v27 = swift_checkMetadataState();
  v86 = v24;
  v28 = a1;
  v85 = v26(v27, AssociatedConformanceWitness);
  v30 = v29;
  v31 = v4;
  sub_1C1115694();
  v32 = v13;
  if (v23[*(v13 + 72) + 16])
  {
    *&v90 = *(v91 + 8);
    v33 = (v90)(v23, v13);
    v34.n128_u64[0] = 0;
    v35.n128_u64[0] = 0;
  }

  else
  {
    *&v90 = *(v91 + 8);
    (v90)(v23, v13);
    v33 = sub_1C12665D0();
    v34.n128_u64[0] = v36;
    v35.n128_u64[0] = v37;
  }

  v38 = MEMORY[0x1C68F0CB0](v33, a2, a3, v34, v35);
  v39 = v92;
  if (v38)
  {
    v40 = v87;
    sub_1C1115694();
    v41 = sub_1C1117928(v13);
    v42 = v4;
    v43 = v90;
    (v90)(v40, v13);
    v44 = v88;
    if ((v41 & 1) == 0 || ((v45 = v83, sub_1C1115694(), (v45[*(v13 + 60) + 16] & 1) == 0) ? (v43(v45, v13), v46 = sub_1C12665D0(), v47.n128_u64[0] = v64, v48.n128_u64[0] = v65) : (v46 = (v43)(v45, v13), v47.n128_u64[0] = 0, v48.n128_u64[0] = 0), MEMORY[0x1C68F0CB0](v46, a2, a3, v47, v48)))
    {

      sub_1C1116480(v31 + v86, 1, v28, a2, a3);
      return;
    }

    v66 = v31;
    v67 = v13;
    v68 = v30;
    v69 = sub_1C1266400();
    v70 = *(v42 + *(v28 + 68));
    v71 = v89;
    (*(v89 + 16))(v44, v66, v28);
    if (!os_log_type_enabled(v70, v69))
    {

      (*(v71 + 8))(v44, v28);
      return;
    }

    v52 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v93 = v72;
    *v52 = 136315650;
    v73 = sub_1C0FA0E80(v85, v68, &v93);

    *(v52 + 4) = v73;
    *(v52 + 12) = 2080;
    v74 = v82;
    sub_1C1115694();
    if ((v74[*(v67 + 60) + 16] & 1) == 0)
    {
      (v90)(v74, v67);
      v75 = sub_1C12665A0();
      v77 = v76;
      (*(v89 + 8))(v44, v28);
      v78 = sub_1C0FA0E80(v75, v77, &v93);

      *(v52 + 14) = v78;
      *(v52 + 22) = 2080;
      v79 = sub_1C12665A0();
      v81 = sub_1C0FA0E80(v79, v80, &v93);

      *(v52 + 24) = v81;
      _os_log_impl(&dword_1C0F96000, v70, v69, "PhotosAsyncImage target size change ignored for %s because already requested size %s + 10%% larger than newtargetPixelSize %s", v52, 0x20u);
      swift_arrayDestroy();
      v63 = v72;
      goto LABEL_11;
    }
  }

  else
  {
    v49 = sub_1C1266400();
    v50 = *(v4 + *(v28 + 68));
    v51 = v89;
    (*(v89 + 16))(v39, v4, v28);
    if (!os_log_type_enabled(v50, v49))
    {

      (*(v51 + 8))(v39, v28);
      return;
    }

    v52 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v93 = v91;
    *v52 = 136315650;
    v53 = sub_1C0FA0E80(v85, v30, &v93);

    *(v52 + 4) = v53;
    *(v52 + 12) = 2080;
    v54 = v84;
    sub_1C1115694();
    if ((v54[*(v32 + 72) + 16] & 1) == 0)
    {
      (v90)(v54, v32);
      v55 = sub_1C12665A0();
      v57 = v56;
      (*(v51 + 8))(v39, v28);
      v58 = sub_1C0FA0E80(v55, v57, &v93);

      *(v52 + 14) = v58;
      *(v52 + 22) = 2080;
      v59 = sub_1C12665A0();
      v61 = sub_1C0FA0E80(v59, v60, &v93);

      *(v52 + 24) = v61;
      _os_log_impl(&dword_1C0F96000, v50, v49, "PhotosAsyncImage target size change ignored for %s because receivedSize %s + 10 %% already larger than %s", v52, 0x20u);
      v62 = v91;
      swift_arrayDestroy();
      v63 = v62;
LABEL_11:
      MEMORY[0x1C68F1630](v63, -1, -1);
      MEMORY[0x1C68F1630](v52, -1, -1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t PhotosAsyncImage.body.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v213 = a2;
  v217 = a1;
  v224 = *(a1 + 2);
  v2 = *(a1 + 5);
  v226 = *(a1 + 4);
  v3 = type metadata accessor for PhotosAsyncImage.Inner();
  v4 = sub_1C1263190();
  type metadata accessor for CGSize(255);
  v6 = v5;
  OUTLINED_FUNCTION_3_34();
  v195 = v3;
  WitnessTable = swift_getWitnessTable();
  __dst[9] = WitnessTable;
  __dst[10] = MEMORY[0x1E69805D0];
  OUTLINED_FUNCTION_4_0();
  v7 = swift_getWitnessTable();
  v8 = sub_1C111A1EC();
  OUTLINED_FUNCTION_4_38();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v205 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34();
  v219 = v12;
  v13 = v227;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v198 = v6;
  v199 = v4;
  __dst[0] = v4;
  __dst[1] = v6;
  v193 = v7;
  __dst[2] = v7;
  __dst[3] = v8;
  v197 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v209 = OpaqueTypeMetadata2;
  __dst[0] = OpaqueTypeMetadata2;
  __dst[1] = AssociatedTypeWitness;
  v196 = AssociatedTypeWitness;
  v202 = OpaqueTypeConformance2;
  __dst[2] = OpaqueTypeConformance2;
  __dst[3] = v16;
  v200 = v16;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v201 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34();
  v218 = v19;
  v203 = v20;
  v21 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v208 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34();
  v207 = v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A70);
  v211 = v21;
  v212 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v210 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v204 = &v177[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v206 = &v177[-v29];
  swift_getAssociatedTypeWitness();
  v191 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v189 = v30;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_34();
  v190 = v32;
  __dst[0] = v224;
  __dst[1] = v13;
  v33 = v217;
  __dst[2] = v226;
  __dst[3] = v2;
  v223 = v2;
  v221 = type metadata accessor for PhotosAsyncImage.LoadingState();
  OUTLINED_FUNCTION_0();
  v225 = v34;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_34();
  v220 = v36;
  v37 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13();
  v214 = (v42 - v41);
  OUTLINED_FUNCTION_1();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  v192 = &v177[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v47);
  v216 = &v177[-v48];
  MEMORY[0x1EEE9AC00](v49);
  v215 = &v177[-v50];
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v177[-v52];
  v222 = v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v177[-v56];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  OUTLINED_FUNCTION_15(v58);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v177[-v60];
  v62 = swift_getWitnessTable();
  View.photosTrace.getter(v33, v62);
  v63 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v61, 1, v63) == 1)
  {
    sub_1C111ACFC(v61);
  }

  else
  {
    v185 = v63;
    v186 = v39;
    v187 = v37;
    v64 = v44;
    v65 = *(v44 + 16);
    OUTLINED_FUNCTION_9_24();
    v65();
    OUTLINED_FUNCTION_9_24();
    v65();
    OUTLINED_FUNCTION_9_24();
    v65();
    OUTLINED_FUNCTION_9_24();
    v65();
    v66 = v214;
    sub_1C1262640();
    v67 = sub_1C1262670();
    v68 = sub_1C1266520();
    v184 = v67;
    v69 = sub_1C1266730();
    v188 = v64;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v178 = v68;
      v71 = v70;
      v179 = swift_slowAlloc();
      __src[0] = v179;
      *v71 = 136446978;
      View.photosChangedProperties.getter(v33, v62);
      v73 = v72;
      v180 = *(v64 + 8);
      v180(v57, v33);
      v182 = v64 + 8;
      v74 = OUTLINED_FUNCTION_20_17();
      v76 = sub_1C0FA0E80(v74, v73, v75);

      v183 = v71;
      *(v71 + 4) = v76;
      *(v71 + 12) = 2080;
      v77 = v220;
      sub_1C1115694();
      v189[2](v190, v77, v191);
      v78 = v53;
      v79 = *(v225 + 8);
      v181 = v225 + 8;
      v189 = v79;
      v80 = v221;
      (v79)(v77, v221);
      sub_1C1265ED0();
      v82 = v81;
      v83 = v78;
      v84 = v180;
      v180(v83, v33);
      v85 = OUTLINED_FUNCTION_20_17();
      v87 = sub_1C0FA0E80(v85, v82, v86);

      v88 = v183;
      *(v183 + 14) = v87;
      *(v88 + 11) = 2082;
      v89 = v215;
      sub_1C1115694();
      v90 = v80;
      v91 = v77 + *(v80 + 60);
      v92 = *v91;
      v93 = *(v91 + 8);
      LOBYTE(v82) = *(v91 + 16);
      v94 = OUTLINED_FUNCTION_18_21();
      v95(v94);
      __dst[0] = v92;
      __dst[1] = v93;
      LOBYTE(__dst[2]) = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D0);
      sub_1C1265ED0();
      v97 = v96;
      v84(v89, v33);
      v98 = OUTLINED_FUNCTION_20_17();
      v100 = sub_1C0FA0E80(v98, v97, v99);

      v101 = v183;
      v183[3] = v100;
      *(v101 + 16) = 2082;
      v102 = v216;
      sub_1C1115694();
      v103 = v77 + *(v90 + 72);
      v104 = *v103;
      v105 = *(v103 + 8);
      LOBYTE(v84) = *(v103 + 16);
      v106 = OUTLINED_FUNCTION_18_21();
      v107(v106);
      __dst[0] = v104;
      __dst[1] = v105;
      LOBYTE(__dst[2]) = v84;
      sub_1C1265ED0();
      v109 = v108;
      v180(v102, v33);
      v110 = OUTLINED_FUNCTION_20_17();
      v112 = sub_1C0FA0E80(v110, v109, v111);

      v113 = v183;
      *(v183 + 34) = v112;
      v114 = v214;
      v115 = sub_1C1262630();
      v116 = v184;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v184, v178, v115, "PhotosAsyncImage", "PhotosAsyncImage %{public}s requestID:%s  targetPixelSize:%{public}s receivedSize:%{public}s", v113, 0x2Au);
      v117 = v179;
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v117, -1, -1);
      MEMORY[0x1C68F1630](v113, -1, -1);

      (*(v186 + 8))(v114, v187);
    }

    else
    {

      (*(v186 + 8))(v66, v187);
      v118 = *(v64 + 8);
      v118(v216, v33);
      v118(v215, v33);
      v118(v53, v33);
      v118(v57, v33);
    }

    OUTLINED_FUNCTION_15_1();
    (*(v119 + 8))(v61);
    v44 = v188;
  }

  v120 = v220;
  v121 = v228;
  sub_1C1115694();
  v122 = v221;
  v123 = (v120 + *(v221 + 64));
  v124 = *v123;
  v125 = v123[1];
  v126 = v123[2];
  sub_1C111AD64(*v123);
  v127 = *(v225 + 8);
  v225 += 8;
  v191 = v127;
  v127(v120, v122);
  v128 = (v121 + v33[15]);
  v129 = *v128;
  v130 = v128[1];
  __dst[0] = v124;
  __dst[1] = v125;
  __dst[2] = v126;
  __dst[3] = v129;
  __dst[4] = v130;
  v215 = *(v44 + 16);
  v216 = (v44 + 16);
  v131 = v192;
  (v215)(v192, v121, v33);
  v132 = (*(v44 + 80) + 48) & ~*(v44 + 80);
  v190 = *(v44 + 80);
  v133 = swift_allocObject();
  v134 = v224;
  v136 = v226;
  v135 = v227;
  v133[2] = v224;
  v133[3] = v135;
  v137 = v223;
  v133[4] = v136;
  v133[5] = v137;
  v214 = *(v44 + 32);
  OUTLINED_FUNCTION_9_24();
  v138();

  swift_checkMetadataState();
  sub_1C1264FF0();

  sub_1C111ADFC(__dst[0]);

  memcpy(v235, __src, sizeof(v235));
  v233 = *(v228 + v33[14]);
  (v215)(v131);
  v139 = swift_allocObject();
  v140 = v134;
  v141 = v226;
  v142 = v227;
  v139[2] = v134;
  v139[3] = v142;
  v143 = v223;
  v139[4] = v141;
  v139[5] = v143;
  OUTLINED_FUNCTION_9_24();
  v214();
  v144 = swift_checkMetadataState();
  swift_checkMetadataState();
  sub_1C1265000();

  memcpy(__dst, v235, 0x48uLL);
  OUTLINED_FUNCTION_15_1();
  (*(v145 + 8))(__dst, v144);
  v199 = v33[13];
  v146 = v131;
  v147 = v131;
  v148 = v228;
  v149 = v33;
  (v215)(v147, v228, v33);
  v150 = swift_allocObject();
  v150[2] = v140;
  v150[3] = v142;
  v151 = v226;
  v152 = v223;
  v150[4] = v226;
  v150[5] = v152;
  (v214)(v150 + v132, v146, v149);
  v222 = swift_checkMetadataState();
  v153 = v200;
  v154 = v148;
  v155 = v219;
  v156 = v209;
  v157 = v202;
  sub_1C1265000();

  (*(v205 + 8))(v155, v156);
  v158 = v140;
  v159 = v227;
  sub_1C111A33C(v154, v158, v227, v151, v152);
  __src[0] = v156;
  __src[1] = v222;
  __src[2] = v157;
  __src[3] = v153;
  v160 = swift_getOpaqueTypeConformance2();
  v161 = v207;
  v162 = v203;
  v163 = v218;
  sub_1C1264A60();

  (*(v201 + 8))(v163, v162);
  v164 = v220;
  sub_1C1115694();
  v165 = v221;
  sub_1C111A4D8(v221, v235);
  v191(v164, v165);
  v233 = *v235;
  v234 = v235[16];
  __src[0] = v224;
  __src[1] = v159;
  __src[2] = v151;
  __src[3] = v152;
  v166 = type metadata accessor for PhotosAsyncImage.LoadingMedia();
  v231 = v160;
  v232 = MEMORY[0x1E69805D0];
  v167 = v211;
  v168 = swift_getWitnessTable();
  v169 = swift_getWitnessTable();
  v170 = v204;
  View.displaying<A>(media:)(&v233, v167, v166, v168, v169);
  (*(v208 + 8))(v161, v167);
  v171 = sub_1C111AFBC();
  v229 = v168;
  v230 = v171;
  v172 = v212;
  v173 = swift_getWitnessTable();
  v174 = v206;
  sub_1C0FDBA4C(v170, v172, v173);
  v175 = *(v210 + 8);
  v175(v170, v172);
  sub_1C0FDBA4C(v174, v172, v173);
  return (v175)(v174, v172);
}

unint64_t sub_1C111A1EC()
{
  result = qword_1EDE7B618;
  if (!qword_1EDE7B618)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B618);
  }

  return result;
}

void sub_1C111A29C(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = type metadata accessor for PhotosAsyncImage();
  sub_1C1118954(v4, v2, v3);
}

uint64_t (*sub_1C111A33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for PhotosAsyncImage();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return sub_1C111BF24;
}

uint64_t sub_1C111A4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  result = sub_1C111AAC4(v5);
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  return result;
}

uint64_t sub_1C111A5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v5;
  v45 = *(v6 + 32);
  v7 = sub_1C1263900();
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v36 - v10;
  v42 = sub_1C1262650();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v50 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = *v2;
  v16 = v2[1];
  v18 = v2[2];
  v17 = v2[3];
  v19 = v2[4];
  v58 = *v2;
  v59 = v16;
  v60 = v18;
  v61 = v17;
  v51 = v17;
  v62 = v19;
  WitnessTable = swift_getWitnessTable();
  View.photosTrace.getter(a1, WitnessTable);
  v21 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    sub_1C111ACFC(v14);
  }

  else
  {
    sub_1C111AD64(v15);

    sub_1C1262640();
    v22 = sub_1C1262670();
    v39 = sub_1C1266520();
    sub_1C111ADFC(v15);

    v40 = v22;
    if (sub_1C1266730())
    {
      v23 = swift_slowAlloc();
      v37 = v23;
      v38 = swift_slowAlloc();
      v56 = v19;
      v57 = v38;
      *v23 = 136446210;
      v52 = v15;
      v53 = v16;
      v54 = v18;
      v55 = v51;
      v24 = View.photosChangedProperties.getter(a1, WitnessTable);
      v26 = sub_1C0FA0E80(v24, v25, &v57);

      v27 = v37;
      *(v37 + 1) = v26;
      v28 = sub_1C1262630();
      v29 = v40;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v40, v39, v28, "PhotosAsyncImage.Inner", "PhotosAsyncImage.Inner %{public}s", v27, 0xCu);
      v30 = v38;
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1C68F1630](v30, -1, -1);
      MEMORY[0x1C68F1630](v27, -1, -1);
    }

    else
    {
    }

    (*(v41 + 8))(v50, v42);
    (*(*(v21 - 8) + 8))(v14, v21);
  }

  v58 = v15;
  v59 = v16;
  v60 = v18;
  sub_1C111AD64(v15);
  v51(&v58);
  sub_1C111ADFC(v58);
  v31 = v43;
  sub_1C1263910();
  v32 = swift_getWitnessTable();
  v33 = v44;
  sub_1C0FDBA4C(v31, v7, v32);
  v34 = *(v48 + 8);
  v34(v31, v7);
  sub_1C0FDBA4C(v33, v7, v32);
  return (v34)(v33, v7);
}

uint64_t sub_1C111AAC4(uint64_t a1)
{
  v2 = type metadata accessor for PhotosAsyncImage.LoadingState();
  if (*(a1 + *(v2 + 64)) >> 62)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + *(v2 + 72));
  }

  (*(*(v2 - 8) + 8))(a1);
  return v3;
}

BOOL sub_1C111AB74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && *&a1 == *&a4 && *&a2 == *&a5;
  }

  return (a6 & 1) != 0;
}

uint64_t PhotosAsyncImageError.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C111AC80()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EDE9B6D8);
  __swift_project_value_buffer(v0, qword_1EDE9B6D8);
  return sub_1C12626E0();
}

uint64_t sub_1C111ACFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C111AD64(unint64_t result)
{
  if (result >> 62 == 1)
  {
    v1 = (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  else if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_1C111ADFC(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  else if (!(result >> 62))
  {
  }

  return result;
}

void sub_1C111AE7C()
{
  OUTLINED_FUNCTION_26_2();
  v0 = type metadata accessor for PhotosAsyncImage();
  OUTLINED_FUNCTION_15(v0);
  v1 = OUTLINED_FUNCTION_7_26();

  sub_1C111A29C(v1, v2);
}

void sub_1C111AF10()
{
  OUTLINED_FUNCTION_26_2();
  v0 = type metadata accessor for PhotosAsyncImage();
  OUTLINED_FUNCTION_15(v0);
  v1 = OUTLINED_FUNCTION_7_26();

  sub_1C111A2F0(v1, v2);
}

unint64_t sub_1C111AFBC()
{
  result = qword_1EDE7B9F0;
  if (!qword_1EDE7B9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B9F0);
  }

  return result;
}

unint64_t sub_1C111B03C()
{
  result = qword_1EBE942A8[0];
  if (!qword_1EBE942A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE942A8);
  }

  return result;
}

unint64_t sub_1C111B090()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    type metadata accessor for CGSize(319);
    if (v4 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    AssociatedTypeWitness = sub_1C1007F88();
    if (v5 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      type metadata accessor for PhotosAsyncImage.LoadingState();
      v0 = sub_1C1262900();
      if (v6 <= 0x3F)
      {
        v0 = sub_1C1115700();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

unint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A15AsyncImagePhaseO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1C111B218(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C111B26C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1C111B2D4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
    result[2] = 0;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosAsyncImageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C111B440()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C111B47C(uint64_t result, int a2, int a3)
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

  *(result + 17) = v3;
  return result;
}

void sub_1C111B4A8()
{
  swift_getAssociatedTypeWitness();
  sub_1C1266790();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1C1266790();
    if (v1 <= 0x3F)
    {
      sub_1C1266790();
      if (v2 <= 0x3F)
      {
        sub_1C111BC90();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C111B5CC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v5 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 > v14)
  {
    v14 = v17;
  }

  if (v14 <= 0xFE)
  {
    v14 = 254;
  }

  if (v8)
  {
    v18 = *(v7 + 64);
  }

  else
  {
    v18 = *(v7 + 64) + 1;
  }

  if (v12)
  {
    v19 = *(*(v10 - 8) + 64);
  }

  else
  {
    v19 = *(*(v10 - 8) + 64) + 1;
  }

  result = *(v11 + 80);
  v21 = *(v15 + 80);
  v22 = *(*(v5 - 8) + 64);
  if (!v16)
  {
    ++v22;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v18 + result;
  if (v14 < a2)
  {
    v24 = ((v22 + ((v19 + v21 + (v23 & ~result)) & ~v21) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v24 <= 3)
    {
      v25 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    switch(v27)
    {
      case 1:
        v28 = a1[v24];
        if (!a1[v24])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 2:
        v28 = *&a1[v24];
        if (!*&a1[v24])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 3:
        __break(1u);
        return result;
      case 4:
        v28 = *&a1[v24];
        if (!v28)
        {
          goto LABEL_45;
        }

LABEL_41:
        v29 = (v28 - 1) << (8 * v24);
        if (v24 <= 3)
        {
          v30 = *a1;
        }

        else
        {
          v29 = 0;
          v30 = *a1;
        }

        v33 = v14 + (v30 | v29);
        break;
      default:
        goto LABEL_45;
    }

    return (v33 + 1);
  }

LABEL_45:
  if (v9 == v14)
  {
    if (v8 >= 2)
    {
      v31 = a1;
      v12 = v8;
      v10 = AssociatedTypeWitness;
      goto LABEL_54;
    }

    return 0;
  }

  v31 = &a1[v23] & ~result;
  if (v13 == v14)
  {
    if (v12 < 2)
    {
      return 0;
    }
  }

  else
  {
    v31 = (v31 + v19 + v21) & ~v21;
    if (v17 != v14)
    {
      v34 = *(((v22 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      if (v34 >= 2)
      {
        v33 = (v34 + 2147483646) & 0x7FFFFFFF;
        return (v33 + 1);
      }

      return 0;
    }

    if (v16 < 2)
    {
      return 0;
    }

    v12 = v16;
    v10 = v5;
  }

LABEL_54:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, v12, v10);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C111B904(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_getAssociatedTypeWitness();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 > v16)
  {
    v16 = v19;
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  v21 = *(*(v11 - 8) + 64);
  if (!v14)
  {
    ++v21;
  }

  v22 = *(v13 + 80);
  v23 = v20 + v22;
  v24 = *(v17 + 80);
  v25 = *(*(v7 - 8) + 64);
  if (!v18)
  {
    ++v25;
  }

  v26 = ((v25 + ((v21 + v24 + ((v20 + v22) & ~v22)) & ~v24) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v16 < a3)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v16 >= a2)
  {
    v31 = ~v22;
    switch(v12)
    {
      case 1:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_49;
        }

        return;
      case 2:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_49;
        }

        return;
      case 3:
LABEL_64:
        __break(1u);
        return;
      case 4:
        *(a1 + v26) = 0;
        goto LABEL_48;
      default:
LABEL_48:
        if (!a2)
        {
          return;
        }

LABEL_49:
        if (v10 == v16)
        {
          v32 = a2 + 1;
          v33 = a1;
          v14 = v9;
          v11 = AssociatedTypeWitness;
        }

        else
        {
          v33 = (a1 + v23) & v31;
          if (v15 == v16)
          {
            v32 = a2 + 1;
          }

          else
          {
            v33 = (v33 + v21 + v24) & ~v24;
            if (v19 != v16)
            {
              *(((v25 + v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 48) = a2 + 1;
              return;
            }

            v32 = a2 + 1;
            v14 = v18;
            v11 = v7;
          }
        }

        __swift_storeEnumTagSinglePayload(v33, v32, v14, v11);
        break;
    }
  }

  else
  {
    v29 = ~v16 + a2;
    bzero(a1, ((v25 + ((v21 + v24 + ((v20 + v22) & ~v22)) & ~v24) + 63) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v26 <= 3)
    {
      v30 = (v29 >> 8) + 1;
    }

    else
    {
      v30 = 1;
    }

    if (v26 > 3)
    {
      *a1 = v29;
    }

    else
    {
      *a1 = v29;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v26) = v30;
        break;
      case 2:
        *(a1 + v26) = v30;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *(a1 + v26) = v30;
        break;
      default:
        return;
    }
  }
}

void sub_1C111BC90()
{
  if (!qword_1EDE76990)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76990);
    }
  }
}

uint64_t sub_1C111BCE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C111BD24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroy_5Tm()
{
  v2 = *(v1 + 24);
  type metadata accessor for PhotosAsyncImage();
  OUTLINED_FUNCTION_17_10();
  v4 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 8))(v4, v2);
  v6 = v0[15];
  OUTLINED_FUNCTION_11_22();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_2();
  (*(v7 + 8))(v4 + v6);

  v8 = v4 + v0[18];
  type metadata accessor for PhotosAsyncImage.LoadingState();
  OUTLINED_FUNCTION_36_0();
  sub_1C1265AC0();
  OUTLINED_FUNCTION_4_2();
  (*(v9 + 8))(v8);
  OUTLINED_FUNCTION_36_0();
  sub_1C1265AD0();

  return swift_deallocObject();
}

uint64_t sub_1C111BF3C(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = type metadata accessor for PhotosAsyncImage();
  OUTLINED_FUNCTION_15(v6);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a1(v8, v2, v3, v4, v5);
}

uint64_t sub_1C111BFE8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(type metadata accessor for PhotosAsyncImage() - 8);
  v8 = (*(v7 + 80) + 49) & ~*(v7 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1C1117F3C(a1, *(v1 + 48), v1 + v8, *v9, *(v9 + 8), v3, v4, v5, v6);
}

uint64_t PhotosSocialGroupCell.init(_:isPlaceholderContent:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  __src[0] = a4;
  __src[1] = a5;
  __src[2] = a6;
  __src[3] = a7;
  __src[4] = a9;
  __src[5] = a10;
  v14 = type metadata accessor for PhotosSocialGroupCell();
  v15 = *(v14 + 76);
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(a8 + v15, __src, 0xD1uLL);
  *a8 = a1;
  v16 = swift_unknownObjectRetain();
  a3(v16);
  result = swift_unknownObjectRelease();
  *(a8 + *(v14 + 72)) = a2;
  return result;
}

uint64_t sub_1C111C1AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 76);
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

BOOL sub_1C111C3C8(uint64_t a1)
{
  v1 = sub_1C111C410(a1);
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 == 0;
}

uint64_t sub_1C111C410(uint64_t a1)
{
  result = (*(*(*(a1 + 40) + 8) + 16))(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

void *sub_1C111C470@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C111C1AC(a1, v4);
  result = memcpy(a2, v4, 0xD0uLL);
  *a2 = 0x4036000000000000;
  return result;
}

uint64_t PhotosSocialGroupCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v45 = *(a1 + 24);
  *&v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE944B0);
  swift_getTupleTypeMetadata3();
  v2 = sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v3 = OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_0_0();
  v67 = v3;
  v68 = sub_1C0FDB6D4(v4, &unk_1EBE92EC0);
  v5 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v65 = WitnessTable;
  v66 = sub_1C0FDB6D4(v7, &qword_1EBE91C40);
  v44 = v5;
  v8 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v63 = v8;
  v64 = sub_1C0FDB6D4(v9, &unk_1EBE92ED0);
  v39[0] = v2;
  swift_getWitnessTable();
  v10 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v41 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - v13;
  OUTLINED_FUNCTION_1_1();
  v39[1] = swift_getWitnessTable();
  v15 = type metadata accessor for PhotosDetailsPresentationSourceView();
  OUTLINED_FUNCTION_0();
  v42 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v39 - v18;
  v20 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v43 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v40 = v39 - v26;
  v27 = v46;
  v28 = v48;
  sub_1C111C470(v46, &v69);
  v29 = v27;
  v30 = *(v27 + 16);
  v49 = v30;
  v50 = v45;
  v31 = *(v29 + 32);
  v46 = *(v29 + 48);
  v51 = v31;
  v52 = v46;
  v53 = v28;
  v54 = &v69;
  sub_1C10A7F5C();
  sub_1C1265590();
  v62 = 2;
  v61 = 2;
  v72[0] = v69;
  v72[1] = v70;
  v73 = v71;
  v58 = v69;
  v59 = v70;
  v60 = v71;
  sub_1C11128F4(v72, &v57);
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v62, 0, 0, v10, v19);

  (*(v41 + 8))(v14, v10);
  v32 = *v48;
  v60 = v46;
  *(&v59 + 1) = v30;
  *&v58 = v32;
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_4_3();
  v33 = swift_getWitnessTable();
  View.selectionStyle(for:)(&v58, v15, v33);
  sub_1C100C7D0(&v69);
  (*(v42 + 8))(v19, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(&v58);
  v34 = sub_1C100D614();
  v55 = v33;
  v56 = v34;
  v35 = swift_getWitnessTable();
  v36 = v40;
  sub_1C0FDBA4C(v24, v20, v35);
  v37 = *(v43 + 8);
  v37(v24, v20);
  sub_1C0FDBA4C(v36, v20, v35);
  return (v37)(v36, v20);
}

uint64_t sub_1C111CA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a7;
  *&v40 = a8;
  v37 = a1;
  v38 = a6;
  v35 = a3;
  v36 = a5;
  v45 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE944B0);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v11 = sub_1C12655C0();
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  v14 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  v41 = v14;
  v15 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v43 = v15;
  v16 = sub_1C1263190();
  v44 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v46 = v35;
  v47 = a4;
  v48 = v36;
  v49 = v38;
  v50 = v39;
  v51 = v40;
  v52 = v37;
  v53 = a2;
  sub_1C1009330();
  sub_1C12655B0();
  memcpy(v61, (a2 + 40), sizeof(v61));
  sub_1C100D690(a2, v62);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDE82B08;
  v23 = qword_1EDE82B10;
  v40 = xmmword_1EDE82B18;
  v24 = qword_1EDE82B28;

  *&v60[0] = v22;
  *(&v60[0] + 1) = v23;
  v60[1] = v40;
  *&v60[2] = v24;
  memcpy(&v60[2] + 8, v61, 0xA8uLL);
  WitnessTable = swift_getWitnessTable();
  View.cellStyle(for:)(v60, WitnessTable, v18);
  memcpy(v62, v60, 0xD0uLL);
  sub_1C100C7D0(v62);
  (*(v42 + 8))(v13, v11);
  v26 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v58 = WitnessTable;
  v59 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v56 = v27;
  v57 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v54 = v29;
  v55 = v30;
  v31 = swift_getWitnessTable();
  sub_1C0FDBA4C(v18, v16, v31);
  v32 = *(v44 + 8);
  v32(v18, v16);
  sub_1C0FDBA4C(v21, v16, v31);
  return (v32)(v21, v16);
}

uint64_t sub_1C111CF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a2;
  v48 = a1;
  v58 = a9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0);
  MEMORY[0x1EEE9AC00](v49);
  v16 = &v47 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v47 - v22;
  v55 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v47 - v26;
  v50 = a3;
  v51 = a5;
  v71[0] = a3;
  v71[1] = a4;
  v71[2] = a5;
  v28 = v48;
  v52 = a6;
  v71[3] = a6;
  v29 = a7;
  v71[4] = a7;
  v71[5] = a8;
  v30 = type metadata accessor for PhotosSocialGroupCell();
  v31 = v28 + *(v30 + 68);
  v54 = v27;
  v32 = a8;
  sub_1C0FDBA4C(v31, a4, a8);
  if (qword_1EBE8FCA8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v49, qword_1EBE93F58);
  sub_1C0FDB800(v33, v16, &qword_1EBE91CC0);
  if (*(v28 + *(v30 + 72)))
  {
    v34 = 0.0;
  }

  else
  {
    v34 = 1.0;
  }

  sub_1C0FDB71C(v16, v20, &qword_1EBE91CC0);
  v35 = v60;
  *&v20[*(v59 + 36)] = v34;
  sub_1C0FDB71C(v20, v35, &qword_1EBE91CC8);
  v36 = sub_1C1263AA0();
  v65[0] = 1;
  sub_1C111D4D4(v28, v50, a4, v51, v52, v29, a8, v71);
  memcpy(v68, v71, sizeof(v68));
  memcpy(v69, v71, sizeof(v69));
  sub_1C0FDB800(v68, v70, &qword_1EBE94568);
  sub_1C0FD1A5C(v69, &qword_1EBE94568);
  memcpy(&v67[7], v68, 0x178uLL);
  v37 = v65[0];
  v38 = sub_1C1264470();
  LOBYTE(v71[0]) = 0;
  v70[0] = v36;
  v70[1] = 0;
  LOBYTE(v70[2]) = v37;
  memcpy(&v70[2] + 1, v67, 0x17FuLL);
  LOBYTE(v70[50]) = v38;
  v39 = v54;
  v40 = *(v53 + 56);
  *&v70[51] = *(v53 + 40);
  *&v70[53] = v40;
  LOBYTE(v70[55]) = 0;
  v42 = v55;
  v41 = v56;
  (*(v55 + 16))(v56, v54, a4);
  v66[0] = v41;
  v43 = v60;
  v44 = v57;
  sub_1C0FDB800(v60, v57, &qword_1EBE91CC8);
  v66[1] = v44;
  memcpy(v65, v70, 0x1B9uLL);
  v66[2] = v65;
  sub_1C0FDB800(v70, v71, qword_1EBE944B0);
  v64[0] = a4;
  v64[1] = v59;
  v64[2] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE944B0);
  v61 = v32;
  v62 = sub_1C1112AD4();
  v63 = sub_1C111E1E8();
  sub_1C119EE80(v66, 3, v64);
  sub_1C0FD1A5C(v70, qword_1EBE944B0);
  sub_1C0FD1A5C(v43, &qword_1EBE91CC8);
  v45 = *(v42 + 8);
  v45(v39, a4);
  memcpy(v71, v65, 0x1B9uLL);
  sub_1C0FD1A5C(v71, qword_1EBE944B0);
  sub_1C0FD1A5C(v44, &qword_1EBE91CC8);
  return (v45)(v41, a4);
}

uint64_t sub_1C111D4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1C12659A0();
  v20 = v17;
  v21 = v16;
  sub_1C111D6F8(a4, a5, a6, a7, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v27, __src, sizeof(v27));
  sub_1C0FDB800(__dst, v24, &qword_1EBE94588);
  sub_1C0FD1A5C(v27, &qword_1EBE94588);
  memcpy(v28, __dst, sizeof(v28));
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  __src[5] = a7;
  if (*(a1 + *(type metadata accessor for PhotosSocialGroupCell() + 72)) == 1)
  {
    if (qword_1EDE7B868 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDE7B870;
  }

  else
  {
    v18 = sub_1C1265190();
  }

  v23[368] = 1;
  v24[0] = v21;
  v24[1] = v20;
  memcpy(&v24[2], v28, 0x150uLL);
  v24[44] = v18;
  memcpy(&v23[7], v24, 0x168uLL);
  *a8 = 0;
  *(a8 + 8) = 1;
  memcpy((a8 + 9), v23, 0x16FuLL);
  __src[0] = v21;
  __src[1] = v20;
  memcpy(&__src[2], v28, 0x150uLL);
  __src[44] = v18;
  sub_1C0FDB800(v24, v22, &qword_1EBE94590);
  return sub_1C0FD1A5C(__src, &qword_1EBE94590);
}

uint64_t sub_1C111D6F8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, void *a5@<X8>)
{
  v31 = a1;
  v32 = a2;
  v33[0] = a3;
  v33[1] = a4;
  v5 = type metadata accessor for PhotosSocialGroupCell();
  *&v30 = sub_1C111C410(v5);
  *(&v30 + 1) = v6;
  sub_1C0FDB9AC();
  v20 = sub_1C12648F0();
  v21 = v7;
  v23 = v8;
  v10 = v9;
  sub_1C12659B0();
  sub_1C1263390();
  v41 = v10 & 1;
  v11 = sub_1C11D2C40();
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v42 = 0;
  v13 = 1.0;
  if (sub_1C111C3C8(v5))
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  v30 = xmmword_1C12B8620;
  LOBYTE(v31) = 0;
  v25[0] = 394248;
  LODWORD(v25[1]) = 17367552;
  PhotosPrefetchableImage(_:font:)(&v30, v25, v38);
  sub_1C100DC0C();
  v15 = v38[0];
  v16 = v38[1];
  v17 = v38[2];
  sub_1C12659B0();
  sub_1C1263390();
  if (!sub_1C111C3C8(v5))
  {
    v13 = 0.0;
  }

  v25[0] = v20;
  v25[1] = v23;
  LOBYTE(v25[2]) = v10 & 1;
  *(&v25[2] + 1) = *v40;
  HIDWORD(v25[2]) = *&v40[3];
  v25[3] = v21;
  memcpy(&v25[4], __src, 0x70uLL);
  v25[18] = KeyPath;
  v25[19] = v11;
  v25[20] = v19;
  v25[21] = 2;
  LOBYTE(v25[22]) = 0;
  *(&v25[22] + 1) = v43[0];
  HIDWORD(v25[22]) = *(v43 + 3);
  *&v25[23] = v14;
  memcpy(__dst, v25, 0xC0uLL);
  v26[0] = v15;
  v26[1] = v16;
  v26[2] = v17;
  memcpy(&v26[3], v37, 0x70uLL);
  *&v26[17] = v13;
  memcpy(&__dst[192], v26, 0x90uLL);
  memcpy(a5, __dst, 0x150uLL);
  v27[0] = v15;
  v27[1] = v16;
  v27[2] = v17;
  memcpy(v28, v37, sizeof(v28));
  v29 = v13;
  sub_1C0FDB800(v25, &v30, &qword_1EBE94598);
  sub_1C0FDB800(v26, &v30, &qword_1EBE94268);
  sub_1C0FD1A5C(v27, &qword_1EBE94268);
  *&v30 = v20;
  *(&v30 + 1) = v23;
  LOBYTE(v31) = v10 & 1;
  *(&v31 + 1) = *v40;
  HIDWORD(v31) = *&v40[3];
  v32 = v21;
  memcpy(v33, __src, 0x70uLL);
  v33[14] = KeyPath;
  v33[15] = v11;
  v33[16] = v19;
  v33[17] = 2;
  v34 = 0;
  *v35 = v43[0];
  *&v35[3] = *(v43 + 3);
  v36 = v14;
  return sub_1C0FD1A5C(&v30, &qword_1EBE94598);
}

void sub_1C111DABC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C107032C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C111DB68(uint64_t result, unsigned int a2, uint64_t a3)
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

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((v7 + 8) & ~v7) + *(*(v4 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 217;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * (((((v7 + 8) & ~v7) + *(*(v4 - 8) + 64)) & 0xF8) - 39));
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C111DCC4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((((v10 + 8) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 217;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
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
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C111DEBC()
{

  v1 = OBJC_IVAR____TtCV17PhotosSwiftUICore30PhotosSocialGroupCell_Previews9MockModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1C111DF24()
{
  sub_1C111DEBC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for PhotosSocialGroupCell_Previews.MockModel()
{
  result = qword_1EBE94540;
  if (!qword_1EBE94540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C111DFD0()
{
  result = sub_1C1261F70();
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

uint64_t sub_1C111E098()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1C111E114(uint64_t a1)
{
  result = sub_1C111E1A0(&qword_1EBE94560, type metadata accessor for PhotosSocialGroupCell_Previews.MockModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C111E1A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C111E1E8()
{
  result = qword_1EBE94570;
  if (!qword_1EBE94570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE944B0);
    sub_1C0FDB6D4(&qword_1EBE94578, &qword_1EBE94580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94570);
  }

  return result;
}

uint64_t View.photosScrollPosition<A>(scrollViewModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PhotosScrollPositionModifier();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;

  sub_1C111FCF0();
  MEMORY[0x1C68EE920](v10, a2, v5, a3);
  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C111E418(char *a1)
{
  OUTLINED_FUNCTION_2_15();
  v36[1] = v3;
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_1();
  v39 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v36[0] = v36 - v8;
  v9 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v37 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v41 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v36 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v36 - v23;
  v43 = v1;
  sub_1C111EF44(v36 - v23);
  v38 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v42 = v16;
  v26 = *(v16 + 16);
  v26(v14, v24, v9);
  v44 = a1;
  v26(&v14[v25], a1, v9);
  OUTLINED_FUNCTION_61(v14);
  v40 = v26;
  if (!v28)
  {
    v26(v21, v14, v9);
    OUTLINED_FUNCTION_61(&v14[v25]);
    if (!v28)
    {
      v33 = v39;
      v26 = v36[0];
      (*(v39 + 32))(v36[0], &v14[v25], v5);
      LODWORD(v38) = sub_1C1265DE0();
      v34 = *(v33 + 8);
      v34(v26, v5);
      v35 = OUTLINED_FUNCTION_5_27();
      (v26)(v35);
      v34(v21, v5);
      (v26)(v14, v9);
      if (v38)
      {
        return (v26)(v44, v9);
      }

LABEL_10:
      v30 = v41;
      v31 = v44;
      v40(v41, v44, v9);
      sub_1C111F090(v30);
      return (v26)(v31, v9);
    }

    v29 = OUTLINED_FUNCTION_5_27();
    (v26)(v29);
    (*(v39 + 8))(v21, v5);
LABEL_9:
    (*(v37 + 8))(v14, v38);
    goto LABEL_10;
  }

  v27 = OUTLINED_FUNCTION_5_27();
  (v26)(v27);
  OUTLINED_FUNCTION_61(&v14[v25]);
  if (!v28)
  {
    goto LABEL_9;
  }

  (v26)(v14, v9);
  return (v26)(v44, v9);
}

void (*sub_1C111E834(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_10_2();
  v4 = sub_1C1266790();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  sub_1C111EF44(v7);
  return sub_1C111E918;
}

void sub_1C111E918(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1C111E418(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1C111E418(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1C111EA1C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C111F3E0();
  if (v6)
  {
    if (a3)
    {
      return;
    }
  }

  else if (a3 & 1) == 0 && (sub_1C1265B60())
  {
    return;
  }

  sub_1C111F4C0(a1, a2, a3 & 1);
}

void (*sub_1C111EAA4(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  *a1 = sub_1C111EA00();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return sub_1C111EAF4;
}

void sub_1C111EB28(char a1)
{
  v1 = a1 & 1;
  if ((sub_1C111F674() & 1) != (a1 & 1))
  {

    sub_1C111ECC4(v1);
  }
}

void (*sub_1C111EB78(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C111F674() & 1;
  return sub_1C111EBC4;
}

uint64_t PhotosScrollViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosScrollViewModel.init()();
  return v0;
}

uint64_t PhotosScrollViewModel.init()()
{
  OUTLINED_FUNCTION_2_15();
  __swift_storeEnumTagSinglePayload(v0 + *(v1 + 96), 1, 1, *(v2 + 80));
  OUTLINED_FUNCTION_10_2();
  v4 = v0 + *(v3 + 104);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  OUTLINED_FUNCTION_10_2();
  *(v0 + *(v5 + 112)) = 0;
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  return v0;
}

void sub_1C111ECC4(char a1)
{
  v2 = *v1;
  v3 = a1 & 1;
  v4 = sub_1C0FA8038();
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_6_26();
    *(v5 - 16) = *(v2 + 80);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_10_22();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v1 + *(v7 + 112)) = v3;
  }
}

uint64_t sub_1C111EE04@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1C111EEA0(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1C111EF44@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  swift_getKeyPath();
  sub_1C111F6F4();

  return sub_1C111EE04(a1);
}

uint64_t sub_1C111EFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  sub_1C1266790();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a5(v9);
}

uint64_t sub_1C111F090(char *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_1C1266790();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  sub_1C111EE04(v17 - v9);
  v11 = *(v3 + 88);
  v17[1] = *(v11 + 8);
  swift_getWitnessTable();
  LOBYTE(v3) = sub_1C0FA8038();
  v12 = *(v7 + 8);
  v13 = v12(v10, v5);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_6_26();
    *(v14 - 16) = v4;
    *(v14 - 8) = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    OUTLINED_FUNCTION_10_22();
  }

  else
  {
    (*(v7 + 16))(v10, a1, v5);
    sub_1C111EEA0(v10);
  }

  return v12(a1, v5);
}

uint64_t sub_1C111F298(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a2);
  return sub_1C111EEA0(v5);
}

void sub_1C111F3AC()
{
  OUTLINED_FUNCTION_10_2();
  v2 = v0 + *(v1 + 104);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5 & 1;
}

uint64_t sub_1C111F3E0()
{
  OUTLINED_FUNCTION_10_2();
  swift_getKeyPath();
  sub_1C111F6F4();

  return sub_1C111F37C();
}

uint64_t sub_1C111F454@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void sub_1C111F4C0(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_10_2();
  v8 = v7;
  sub_1C111F37C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945A0);
  sub_1C1120218();
  v9 = sub_1C0FA8038();
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_6_26();
    *(v10 - 16) = *(v8 + 80);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_10_22();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    v13 = v3 + *(v12 + 104);
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = a3 & 1;
  }
}

uint64_t sub_1C111F674()
{
  OUTLINED_FUNCTION_10_2();
  swift_getKeyPath();
  sub_1C111F6F4();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 112));
}

uint64_t sub_1C111F6F4()
{
  OUTLINED_FUNCTION_2_42();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C111F78C()
{
  OUTLINED_FUNCTION_2_42();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosScrollViewModel.deinit()
{
  OUTLINED_FUNCTION_2_15();
  v2 = *(v1 + 96);
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 120);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t PhotosScrollViewModel.__deallocating_deinit()
{
  PhotosScrollViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C111F968()
{
  result = sub_1C1266790();
  if (v1 <= 0x3F)
  {
    result = sub_1C1261F70();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C111FC08()
{
  type metadata accessor for PhotosScrollViewModel();
  result = sub_1C1265790();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C111FCF0()
{
  type metadata accessor for PhotosScrollViewModel();
  swift_getWitnessTable();

  return sub_1C1265770();
}

uint64_t sub_1C111FD90()
{
  type metadata accessor for PhotosScrollViewModel();
  sub_1C1265790();
  sub_1C1265750();
  return v1;
}

uint64_t sub_1C111FDD0()
{
  type metadata accessor for PhotosScrollViewModel();
  v0 = sub_1C1265790();

  return MEMORY[0x1EEDE4B98](v0);
}

uint64_t sub_1C111FE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v43 = a3;
  v4 = *(a2 + 16);
  sub_1C1266790();
  v5 = sub_1C1265640();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = v4;
  v9 = *(a2 + 24);
  type metadata accessor for PhotosScrollViewModel();
  v10 = sub_1C1265790();
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  swift_getWitnessTable();
  v14 = sub_1C1263DE0();
  v34 = v14;
  WitnessTable = swift_getWitnessTable();
  v46 = v14;
  v47 = v8;
  v16 = v8;
  v32 = v8;
  v33 = v9;
  v48 = WitnessTable;
  v49 = v9;
  v37 = WitnessTable;
  v38 = MEMORY[0x1E697CF40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  sub_1C111FDD0();
  v44 = v16;
  v45 = v9;
  swift_getKeyPath();
  v23 = v35;
  sub_1C1265780();

  (*(v36 + 8))(v13, v23);
  sub_1C111FD90();
  sub_1C111EA00();

  v24 = swift_checkMetadataState();
  v25 = v7;
  v27 = v32;
  v26 = v33;
  v28 = v37;
  sub_1C1264B80();
  (*(v40 + 8))(v25, v41);
  v46 = v24;
  v47 = v27;
  v48 = v28;
  v49 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v30 = *(v39 + 8);
  v30(v19, OpaqueTypeMetadata2);
  sub_1C0FDBA4C(v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v30)(v22, OpaqueTypeMetadata2);
}

unint64_t sub_1C1120218()
{
  result = qword_1EBE945A8;
  if (!qword_1EBE945A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945A0);
    sub_1C112029C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE945A8);
  }

  return result;
}

unint64_t sub_1C112029C()
{
  result = qword_1EBE945B0;
  if (!qword_1EBE945B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE945B0);
  }

  return result;
}

__n128 sub_1C11202F0()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + *(**(v0 + 16) + 104));
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

uint64_t PhotosPrefetchable.RootView.init(content:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PhotosPrefetchable.RootView() + 36);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945B8);
  v5 = swift_storeEnumTagMultiPayload();
  return a1(v5);
}

uint64_t sub_1C11203D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945B8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C1121150(v2 + *(a1 + 36), &v14 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v6 + 32))(a2, v11, v5);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t PhotosPrefetchable.RootView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_1();
  v49 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  sub_1C1262650();
  OUTLINED_FUNCTION_1();
  v46 = v11;
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v41 - v22;
  WitnessTable = swift_getWitnessTable();
  View.photosTrace.getter(a1, WitnessTable);
  v25 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v23, 1, v25) == 1)
  {
    v26 = sub_1C111ACFC(v23);
    v27 = v2;
  }

  else
  {
    v28 = *(v16 + 16);
    v45 = v2;
    v28(v20, v2, a1);
    sub_1C1262640();
    v29 = sub_1C1262670();
    v43 = sub_1C1266520();
    v44 = v29;
    if (sub_1C1266730())
    {
      v30 = swift_slowAlloc();
      v41 = v30;
      v42 = swift_slowAlloc();
      v50 = v42;
      *v30 = 136446210;
      v31 = View.photosChangedProperties.getter(a1, WitnessTable);
      v33 = v32;
      (*(v16 + 8))(v20, a1);
      v34 = sub_1C0FA0E80(v31, v33, &v50);

      v35 = v41;
      *(v41 + 1) = v34;
      v36 = sub_1C1262630();
      v37 = v44;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v44, v43, v36, "PhotosPrefetchable.RootView", "PhotosPrefetchable.RootView %{public}s", v35, 0xCu);
      v38 = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x1C68F1630](v38, -1, -1);
      MEMORY[0x1C68F1630](v35, -1, -1);

      (*(v46 + 8))(v14, v47);
    }

    else
    {

      (*(v46 + 8))(v14, v47);
      (*(v16 + 8))(v20, a1);
    }

    v26 = (*(*(v25 - 8) + 8))(v23, v25);
    v27 = v45;
  }

  if (qword_1EDE833C0 != -1)
  {
    v26 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v26);
  v39 = *(a1 + 24);
  *(&v41 - 4) = v4;
  *(&v41 - 3) = v39;
  *(&v41 - 2) = v27;

  sub_1C1219460();

  sub_1C0FDBA4C(v27, v4, v39);
  sub_1C0FDBA4C(v9, v4, v39);
  return (*(v49 + 8))(v9, v4);
}

void sub_1C1120AF0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C11210F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C1120B78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1C12637E0() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_27;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v7 < 0xFE)
      {
        v21 = *(((a1 + v12) & ~v11) + v9);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_1C1120DB4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(sub_1C12637E0() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = v11 + 1;
  v16 = (v14 & ~v13) + v11 + 1;
  v17 = 8 * v16;
  if (a3 <= v12)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v12 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 < 0xFE)
          {
            v24 = (&a1[v14] & ~v13);
            if (a2 > 0xFE)
            {
              if (v15 <= 3)
              {
                v25 = ~(-1 << (8 * v15));
              }

              else
              {
                v25 = -1;
              }

              if (v15)
              {
                v26 = v25 & (a2 - 255);
                if (v15 <= 3)
                {
                  v27 = v15;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v15);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }

            else
            {
              v24[v11] = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v12 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

void sub_1C11210F8()
{
  if (!qword_1EDE82FB0)
  {
    sub_1C12637E0();
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE82FB0);
    }
  }
}

uint64_t sub_1C1121150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PhotosContainerWidthBlurLegibilityGradient.init(spec:width:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2_43();
  sub_1C11216D0(v6, v7);
  result = type metadata accessor for PhotosContainerWidthBlurLegibilityGradient(0);
  v9 = a3 + *(result + 20);
  *v9 = a1;
  *(v9 + 8) = a2 & 1;
  return result;
}

uint64_t PhotosContainerWidthBlurLegibilityGradient.body.getter()
{
  v1 = type metadata accessor for PhotosContainerWidthBlurLegibilityGradient(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v5 = OUTLINED_FUNCTION_15(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  type metadata accessor for PhotosBlurLegibilityGradient(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_2_43();
  sub_1C1121678(v0, v8);
  PhotosBlurLegibilityGradient.init(spec:)(v8, v12);
  sub_1C1264420();
  sub_1C1121678(v0, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  sub_1C11216D0(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_1C12659A0();
  sub_1C11217A4();
  sub_1C1264DC0();

  return sub_1C11217FC(v12, type metadata accessor for PhotosBlurLegibilityGradient);
}

uint64_t PhotosBlurLegibilityGradient.init(spec:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotosBlurLegibilityGradient(0);
  v5 = *(v4 + 24);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_43();
  sub_1C1121678(a1, a2);
  v6 = objc_opt_self();
  v7 = [v6 mainDisplay];
  v8 = v7;
  v9 = v7 == 0;
  if (v7)
  {
    [v7 frame];
    OUTLINED_FUNCTION_16_18();
  }

  v10 = [v6 mainDisplay];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (v8)
    {
      v21.origin.x = OUTLINED_FUNCTION_8_0();
      v22.origin.x = v13;
      v22.origin.y = v15;
      v22.size.width = v17;
      v22.size.height = v19;
      v9 = CGRectEqualToRect(v21, v22);
    }

    else
    {
      v9 = 0;
    }
  }

  result = sub_1C11217FC(a1, type metadata accessor for PhotosBlurLegibilityGradientSpec);
  *(a2 + *(v4 + 20)) = !v9;
  return result;
}

uint64_t sub_1C1121678(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_25();
  v4(v3);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return a2;
}

uint64_t sub_1C11216D0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_25();
  v4(v3);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return a2;
}

uint64_t sub_1C1121728()
{
  v0 = type metadata accessor for PhotosContainerWidthBlurLegibilityGradient(0);
  OUTLINED_FUNCTION_15(v0);

  return sub_1C112162C();
}

unint64_t sub_1C11217A4()
{
  result = qword_1EDE7A098;
  if (!qword_1EDE7A098)
  {
    type metadata accessor for PhotosBlurLegibilityGradient(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A098);
  }

  return result;
}

uint64_t sub_1C11217FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t PhotosBlurLegibilityGradient.body.getter@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C8);
  OUTLINED_FUNCTION_0_49(v2, &v112);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v102 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945D0);
  OUTLINED_FUNCTION_0_49(v6, &v114);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v102 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945D8);
  OUTLINED_FUNCTION_0_49(v10, &v113);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v102 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945E0);
  v15 = OUTLINED_FUNCTION_0_49(v14, &v120);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v102 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945E8);
  OUTLINED_FUNCTION_0_49(v22, &v119);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945F0);
  OUTLINED_FUNCTION_0_49(v25, &v116);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945F8);
  OUTLINED_FUNCTION_0_49(v28, &v117);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94600);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v102 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94608);
  v36 = OUTLINED_FUNCTION_15(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_30();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_11_1(v102 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94610);
  OUTLINED_FUNCTION_0_49(v42, &v115);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94618);
  v46 = OUTLINED_FUNCTION_0_49(v45, &v118);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_30();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50);
  if (*v1 == 1)
  {
    v102[3] = v102 - v51;
    sub_1C112234C(v1);
    v52 = sub_1C12631E0();
    v53 = sub_1C1264470();
    v54 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94628) + 36)];
    *v54 = v52;
    v54[8] = v53;
    v55 = sub_1C12659A0();
    v57 = v56;
    sub_1C112241C();
    v58 = sub_1C11226C0();

    if (*(v1 + 40))
    {
      sub_1C1265B80();
    }

    else
    {
      sub_1C1265B70();
    }

    OUTLINED_FUNCTION_16_18();
    v62 = v31;
    if (*(v1 + 40))
    {
      sub_1C1265B70();
    }

    else
    {
      sub_1C1265B80();
    }

    v63 = &v34[*(v31 + 36)];
    MEMORY[0x1C68EF140](v58);
    OUTLINED_FUNCTION_8_0();
    sub_1C1262F60();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94008);
    sub_1C1122804(&v63[*(v64 + 36)]);
    v65 = *&v111[16];
    *v63 = *v111;
    *(v63 + 1) = v65;
    *(v63 + 4) = *&v111[32];
    v66 = &v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94640) + 36)];
    *v66 = v55;
    v66[1] = v57;
    if (*(v1 + *(type metadata accessor for PhotosBlurLegibilityGradient(0) + 20)) == 1)
    {
      v67 = sub_1C1265990();
      v69 = v68;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94620);
      v71 = v102[0];
      v72 = (v102[0] + *(v70 + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1C12A3440;
      *(v73 + 32) = sub_1C1265170();
      *(v73 + 40) = sub_1C1265160();
      sub_1C1265B70();
      OUTLINED_FUNCTION_16_18();
      sub_1C1265B80();
      MEMORY[0x1C68EF140](v73);
      OUTLINED_FUNCTION_8_0();
      sub_1C1262F60();
      sub_1C12659A0();
      sub_1C1262C80();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94658);
      v102[2] = v62;
      v75 = *(v74 + 36);
      v76 = *MEMORY[0x1E6981DC0];
      sub_1C1265A90();
      OUTLINED_FUNCTION_3();
      (*(v77 + 104))(&v72[v75], v76);
      memcpy(v72, __src, 0x58uLL);
      *(v72 + 11) = 0;
      *(v72 + 12) = 0;
      v78 = &v72[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94648) + 36)];
      *v78 = v67;
      v78[1] = v69;
      sub_1C0FE5654(v34, v71, &qword_1EBE94600);
      sub_1C0FE5654(v71, v105, &qword_1EBE945F8);
      swift_storeEnumTagMultiPayload();
      sub_1C1122CE0();
      sub_1C1122E24();
      sub_1C1263C20();
      sub_1C0FD1A5C(v71, &qword_1EBE945F8);
    }

    else
    {
      sub_1C0FE5654(v34, v105, &qword_1EBE94600);
      swift_storeEnumTagMultiPayload();
      sub_1C1122CE0();
      sub_1C1122E24();
      sub_1C1263C20();
    }

    sub_1C0FD1A5C(v34, &qword_1EBE94600);
    v92 = v104;
    sub_1C0FE4040(v39, v104, &qword_1EBE94608);
    if (*(v1 + 40))
    {
      v93 = *(v1 + 16) ^ 0x8000000000000000;
    }

    else
    {
      v93 = 0;
    }

    if (*(v1 + 40))
    {
      v94 = 0;
    }

    else
    {
      v94 = *(v1 + 16) ^ 0x8000000000000000;
    }

    v95 = sub_1C1264470();
    v96 = v103;
    sub_1C0FE4040(v92, v103, &qword_1EBE94608);
    OUTLINED_FUNCTION_17_21();
    v98 = v96 + v97;
    *v98 = v95;
    *(v98 + 8) = v93;
    *(v98 + 16) = 0;
    *(v98 + 24) = v94;
    *(v98 + 32) = 0;
    *(v98 + 40) = 0;
    sub_1C0FE4040(v96, v49, &qword_1EBE94610);
    *(v49 + *(v106 + 36)) = 0;
    OUTLINED_FUNCTION_14_17();
    sub_1C0FE4040(v99, v100, v101);
    sub_1C0FE5654(v49, v107, &qword_1EBE94618);
    swift_storeEnumTagMultiPayload();
    sub_1C1122B3C();
    sub_1C1123020();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v49, &qword_1EBE94618);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1C12A3440;
    sub_1C112241C();
    v60 = sub_1C12651E0();

    *(v59 + 32) = v60;
    sub_1C112241C();
    v61 = sub_1C12651E0();

    *(v59 + 40) = v61;
    MEMORY[0x1C68EF140](v59);
    if (*(v1 + 40))
    {
      sub_1C1265B80();
    }

    else
    {
      sub_1C1265B70();
    }

    OUTLINED_FUNCTION_16_18();
    if (*(v1 + 40))
    {
      sub_1C1265B70();
    }

    else
    {
      sub_1C1265B80();
    }

    sub_1C1262F60();
    v79 = *v111;
    OUTLINED_FUNCTION_17_21();
    sub_1C1122804(&v5[v80]);
    *v5 = v79;
    v81 = *&v111[8];
    *(v5 + 24) = *&v111[24];
    *(v5 + 8) = v81;
    *(v5 + 20) = 256;
    v82 = sub_1C12631E0();
    v83 = sub_1C1264470();
    sub_1C0FE4040(v5, v9, &qword_1EBE945C8);
    OUTLINED_FUNCTION_17_21();
    v85 = &v9[v84];
    *v85 = v82;
    v85[8] = v83;
    sub_1C0FE4040(v9, v13, &qword_1EBE945D0);
    OUTLINED_FUNCTION_17_21();
    v13[v86] = 0;
    LOBYTE(v82) = sub_1C1264470();
    sub_1C0FE4040(v13, v18, &qword_1EBE945D8);
    v87 = v18 + *(v108 + 36);
    *v87 = v82;
    *(v87 + 8) = 0;
    *(v87 + 16) = 0;
    *(v87 + 24) = xmmword_1C12B8BB0;
    *(v87 + 40) = 0;
    sub_1C0FE4040(v18, v21, &qword_1EBE945E0);
    OUTLINED_FUNCTION_14_17();
    sub_1C0FE5654(v88, v89, v90);
    swift_storeEnumTagMultiPayload();
    sub_1C1122B3C();
    sub_1C1123020();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v21, &qword_1EBE945E0);
  }
}

uint64_t sub_1C112234C(uint64_t result)
{
  v1 = *(result + 40);
  if (qword_1EDE7D858 != -1)
  {
    result = swift_once();
  }

  if (!*(off_1EDE7D860 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1C0F99DC0(v1);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1C1264B00();
}

uint64_t sub_1C112241C()
{
  v1 = sub_1C12629F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosBlurLegibilityGradientSpec.Tint(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1121678(v0, v11);
  sub_1C11216D0(&v11[*(v9 + 48)], v7);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) != 1)
  {
    v15 = *v7;
    v16 = *(v12 + 48);
    v17 = sub_1C1265A90();
    (*(*(v17 - 8) + 8))(&v7[v16], v17);
    return v15;
  }

  sub_1C112327C(v4);
  v13 = (*(v2 + 88))(v4, v1);
  if (v13 == *MEMORY[0x1E697DBB8])
  {
    return sub_1C1265190();
  }

  if (v13 == *MEMORY[0x1E697DBA8])
  {
    return sub_1C1265160();
  }

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t sub_1C11226C0()
{
  v2 = MEMORY[0x1E69E7CC0];
  sub_1C1266A50();
  v0 = 0;
  do
  {
    ++v0;
    sub_1C12651E0();
    sub_1C1266A10();
    sub_1C1266A60();
    sub_1C1266A70();
    sub_1C1266A30();
  }

  while (v0 != 64);
  return v2;
}

uint64_t sub_1C1122804@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_1C12629F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1265A90();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosBlurLegibilityGradientSpec.Tint(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1121678(v1, v16);
  sub_1C11216D0(&v16[*(v14 + 48)], v12);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v17) != 1)
  {

    v9 = &v12[*(v17 + 48)];
    return (*(v7 + 32))(v22, v9, v6);
  }

  sub_1C112327C(v5);
  v18 = (*(v3 + 88))(v5, v2);
  if (v18 == *MEMORY[0x1E697DBB8])
  {
    v19 = MEMORY[0x1E6981E00];
LABEL_7:
    (*(v7 + 104))(v9, *v19, v6);
    return (*(v7 + 32))(v22, v9, v6);
  }

  if (v18 == *MEMORY[0x1E697DBA8])
  {
    v19 = MEMORY[0x1E6981DE8];
    goto LABEL_7;
  }

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

unint64_t sub_1C1122B3C()
{
  result = qword_1EDE77260;
  if (!qword_1EDE77260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94618);
    sub_1C1122BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77260);
  }

  return result;
}

unint64_t sub_1C1122BC8()
{
  result = qword_1EDE77448;
  if (!qword_1EDE77448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94610);
    sub_1C1122C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77448);
  }

  return result;
}

unint64_t sub_1C1122C54()
{
  result = qword_1EDE76E60;
  if (!qword_1EDE76E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94608);
    sub_1C1122CE0();
    sub_1C1122E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E60);
  }

  return result;
}

unint64_t sub_1C1122CE0()
{
  result = qword_1EDE77008;
  if (!qword_1EDE77008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945F8);
    sub_1C1122D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77008);
  }

  return result;
}

unint64_t sub_1C1122D6C()
{
  result = qword_1EDE77038;
  if (!qword_1EDE77038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94620);
    sub_1C1122E24();
    sub_1C0FDB6D4(&qword_1EDE76FC0, &qword_1EBE94648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77038);
  }

  return result;
}

unint64_t sub_1C1122E24()
{
  result = qword_1EDE770B0;
  if (!qword_1EDE770B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94600);
    sub_1C1122EDC();
    sub_1C0FDB6D4(&qword_1EDE76FC8, &qword_1EBE94640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770B0);
  }

  return result;
}

unint64_t sub_1C1122EDC()
{
  result = qword_1EDE7BD70;
  if (!qword_1EDE7BD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94628);
    sub_1C1122F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD70);
  }

  return result;
}

unint64_t sub_1C1122F68()
{
  result = qword_1EDE7BDF8;
  if (!qword_1EDE7BDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94630);
    sub_1C0FDC6A0();
    sub_1C0FDB6D4(&qword_1EDE7BD00, &qword_1EBE94638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDF8);
  }

  return result;
}

unint64_t sub_1C1123020()
{
  result = qword_1EDE77090;
  if (!qword_1EDE77090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945E0);
    sub_1C11230AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77090);
  }

  return result;
}

unint64_t sub_1C11230AC()
{
  result = qword_1EDE77148;
  if (!qword_1EDE77148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945D8);
    sub_1C1123138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77148);
  }

  return result;
}

unint64_t sub_1C1123138()
{
  result = qword_1EDE7BDC8;
  if (!qword_1EDE7BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945D0);
    sub_1C11231C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDC8);
  }

  return result;
}

unint64_t sub_1C11231C4()
{
  result = qword_1EDE7BED8;
  if (!qword_1EDE7BED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945C8);
    sub_1C0FDB6D4(&qword_1EDE7C050, &qword_1EBE94650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BED8);
  }

  return result;
}

uint64_t sub_1C112327C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PhotosBlurLegibilityGradient(0);
  sub_1C0FE5654(v1 + *(v10 + 24), v9, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t static PhotosBlurLegibilityGradientSpec.Tint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1265A90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for PhotosBlurLegibilityGradientSpec.Tint(0);
  v13 = OUTLINED_FUNCTION_15(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94660);
  OUTLINED_FUNCTION_15(v17);
  OUTLINED_FUNCTION_19();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  v22 = (&v33 + *(v19 + 56) - v20);
  sub_1C1121678(a1, &v33 - v20);
  sub_1C1121678(a2, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0);
  OUTLINED_FUNCTION_18_22(v21);
  if (!v26)
  {
    OUTLINED_FUNCTION_4_39();
    sub_1C1121678(v21, v16);
    v25 = *(v23 + 48);
    OUTLINED_FUNCTION_18_22(v22);
    if (!v26)
    {
      v28 = *(v5 + 32);
      v33 = *v22;
      v34 = v11;
      v28(v11);
      (v28)(v8, v22 + v25, v4);
      v29 = sub_1C1265100();
      if (v29)
      {
        v30 = v34;
        v24 = sub_1C1265A80();

        v31 = *(v5 + 8);
        v31(v8, v4);
        v31(v30, v4);
        OUTLINED_FUNCTION_3_35();
        return v24 & 1;
      }

      v32 = *(v5 + 8);
      v32(v8, v4);
      v32(v34, v4);
      OUTLINED_FUNCTION_3_35();
      goto LABEL_10;
    }

    (*(v5 + 8))(v16 + v25, v4);

LABEL_9:
    sub_1C0FD1A5C(v21, &qword_1EBE94660);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  OUTLINED_FUNCTION_18_22(v22);
  if (!v26)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_3_35();
  v24 = 1;
  return v24 & 1;
}

uint64_t PhotosBlurLegibilityGradientSpec.init(enableBlur:blurCurve:blurRadius:blurDistanceToBaseline:tintCurve:tintOpacity:edge:tint:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v10 = *a3;
  *a5 = a1;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = a2;
  *(a5 + 32) = a8;
  *(a5 + 40) = v10;
  type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  OUTLINED_FUNCTION_4_39();
  return sub_1C11216D0(a4, a5 + v11);
}

uint64_t PhotosBlurLegibilityGradientSpec.Edge.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t static PhotosBlurLegibilityGradientSpec.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || *(a1 + 3) != *(a2 + 3) || a1[4] != a2[4] || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v5 = *(type metadata accessor for PhotosBlurLegibilityGradientSpec(0) + 40);

  return static PhotosBlurLegibilityGradientSpec.Tint.== infix(_:_:)(a1 + v5, a2 + v5);
}

void *sub_1C1123960()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94678);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  *(inited + 32) = 0;
  if (qword_1EDE7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_1C0F99EAC(0, qword_1EDE7D6F8);
  if (!result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v2 = result;
  if ([result CGImage])
  {
    [v2 scale];
    UIImageOrientation.photosImageOrientation.getter([v2 imageOrientation]);
    v3 = v2;
    sub_1C10E4748(v3);
    if (v4)
    {
      v5 = sub_1C1265370();
    }

    else
    {
      v5 = sub_1C12652E0();
    }

    v6 = v5;
  }

  else
  {
    v6 = sub_1C12652D0();
  }

  *(inited + 40) = v6;
  *(inited + 48) = 1;
  result = sub_1C0F99EAC(1, qword_1EDE7D6F8);
  if (!result)
  {
    goto LABEL_19;
  }

  v7 = result;
  if ([result CGImage])
  {
    [v7 scale];
    UIImageOrientation.photosImageOrientation.getter([v7 imageOrientation]);
    v8 = v7;
    sub_1C10E4748(v8);
    if (v9)
    {
      v10 = sub_1C1265370();
    }

    else
    {
      v10 = sub_1C12652E0();
    }

    v11 = v10;
  }

  else
  {
    v11 = sub_1C12652D0();
  }

  *(inited + 56) = v11;
  sub_1C0F9CE38();
  result = sub_1C1265CE0();
  off_1EDE7D860 = result;
  return result;
}

void sub_1C1123C14()
{
  type metadata accessor for PhotosBlurLegibilityGradientSpec(319);
  if (v0 <= 0x3F)
  {
    sub_1C10C1CC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1123CC0()
{
  type metadata accessor for PhotosBlurLegibilityGradientSpec(319);
  if (v0 <= 0x3F)
  {
    sub_1C1011E54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1123D74()
{
  type metadata accessor for PXValueAnimationCurve(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PhotosBlurLegibilityGradientSpec.Tint(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C1123E50()
{
  sub_1C1123EA8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1C1123EA8()
{
  if (!qword_1EDE76CE8)
  {
    sub_1C1265A90();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDE76CE8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosBlurLegibilityGradientSpec.Edge(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1123FE0()
{
  result = qword_1EDE76E88;
  if (!qword_1EDE76E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94668);
    sub_1C1122B3C();
    sub_1C1123020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E88);
  }

  return result;
}

uint64_t sub_1C112406C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C11240C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1C1124124(uint64_t a1)
{
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1C68F07E0](a1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1124164()
{
  OUTLINED_FUNCTION_27_9();
  sub_1C11242C8();
  return sub_1C1266EE0();
}

uint64_t sub_1C11241A4(char a1)
{
  OUTLINED_FUNCTION_27_9();
  sub_1C11243F0(v3, a1 & 1);
  return sub_1C1266EE0();
}

uint64_t sub_1C11241E8()
{
  sub_1C1266E90();
  sub_1C1266EB0();
  return sub_1C1266EE0();
}

uint64_t sub_1C1124230(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_31_9();
  }

  sub_1C1265EF0();
}

uint64_t sub_1C11242C8()
{
  sub_1C1265EF0();
}

uint64_t sub_1C11243F0(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x3FE8000000000000;
  }

  else
  {
    v2 = 0x3FF0000000000000;
  }

  return MEMORY[0x1C68F0810](v2);
}

uint64_t sub_1C112444C(uint64_t a1, char a2)
{
  sub_1C1266E90();
  if (!a2)
  {
    OUTLINED_FUNCTION_31_9();
  }

  sub_1C1265EF0();

  return sub_1C1266EE0();
}

uint64_t sub_1C11244D0(uint64_t a1, uint64_t a2)
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](a2);
  return sub_1C1266EE0();
}

uint64_t sub_1C1124514()
{
  sub_1C1266E90();
  sub_1C11242C8();
  return sub_1C1266EE0();
}

uint64_t sub_1C1124558(uint64_t a1, char a2)
{
  sub_1C1266E90();
  sub_1C11243F0(v4, a2 & 1);
  return sub_1C1266EE0();
}

uint64_t sub_1C112459C(uint64_t a1, char a2)
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](a2 & 1);
  return sub_1C1266EE0();
}

uint64_t sub_1C11245E0()
{
  sub_1C1266E90();
  sub_1C1266EB0();
  return sub_1C1266EE0();
}

uint64_t sub_1C1124624(uint64_t a1, unsigned __int8 a2)
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](a2);
  return sub_1C1266EE0();
}

uint64_t PhotosPrefetchableImage(_:font:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  v14 = *(a2 + 9);
  v15 = *(a2 + 8);
  sub_1C1109A94();
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  *&v16 = v4;
  *(&v16 + 1) = v5;
  v17 = v6;
  OUTLINED_FUNCTION_43_6();
  v18 = v7;
  v19 = v15 | (v14 << 8) | (v8 << 16) | (v9 << 24);

  sub_1C12192C4(&v16);

  if (v6)
  {
    v10 = sub_1C1265320();
  }

  else
  {
    v10 = sub_1C12652F0();
  }

  v11 = v10;
  *&v16 = v7;
  BYTE8(v16) = v15;
  BYTE9(v16) = v14;
  BYTE10(v16) = v8;
  BYTE11(v16) = v9;
  v12 = PhotosPrefetchable.Font.font.getter();
  result = swift_getKeyPath();
  *a3 = v11;
  a3[1] = result;
  a3[2] = v12;
  return result;
}

void PhotosPrefetchableImage(_:imageScale:font:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v49 = v7;
  v44 = sub_1C1265340();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30();
  v47 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v39 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_5();
  v16 = *v6;
  v17 = v6[1];
  v18 = *(v6 + 16);
  v19 = *v4;
  v20 = *v4;
  v21 = *v2;
  v22 = *(v2 + 8);
  v23 = *(v2 + 10);
  v24 = *(v2 + 11);
  v42 = *(v2 + 9);
  v43 = v22;
  v40 = v24;
  v41 = v23;
  v25 = v22 | (v42 << 8) | (v23 << 16) | (v24 << 24);
  sub_1C1109A94();
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  *&v50 = v16;
  *(&v50 + 1) = v17;
  v51 = v18;
  v52 = v20;
  v53 = 4;
  v45 = v21;
  v54 = v21;
  v55 = v25;

  sub_1C12192C4(&v50);

  if (v18)
  {
    v26 = sub_1C1265320();
  }

  else
  {
    v26 = sub_1C12652F0();
  }

  v27 = v26;
  v28 = v47;
  v29 = v44;
  (*(v9 + 104))(v47, **(&unk_1E813BC90 + v19), v44);
  v30 = *(v9 + 32);
  v31 = v48;
  v30(v48, v28, v29);
  KeyPath = swift_getKeyPath();
  v33 = (v0 + *(v46 + 36));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0);
  v30(v33 + *(v34 + 28), v31, v29);
  *v33 = KeyPath;
  *v0 = v27;
  *&v50 = v45;
  BYTE8(v50) = v43;
  BYTE9(v50) = v42;
  BYTE10(v50) = v41;
  BYTE11(v50) = v40;
  v35 = PhotosPrefetchable.Font.font.getter();
  v36 = swift_getKeyPath();
  v37 = v49;
  sub_1C112877C(v0, v49);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D28) + 36));
  *v38 = v36;
  v38[1] = v35;
  OUTLINED_FUNCTION_22_0();
}

void PhotosPrefetchableImage(_:font:symbolVariant:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v32 = v7;
  v33 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v30 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_39_4();
  v10 = *v4;
  v11 = *(v4 + 8);
  v12 = *(v4 + 9);
  v13 = *(v4 + 10);
  v14 = *(v4 + 11);
  v28 = __PAIR64__(v11, v12);
  v15 = v11 | (v12 << 8) | (v13 << 16) | (v14 << 24);
  LODWORD(v29) = v2[1];
  HIDWORD(v29) = *v2;
  OUTLINED_FUNCTION_7_20();
  sub_1C1109A94();
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  OUTLINED_FUNCTION_29_7();
  v37 = v10;
  LODWORD(v38) = v15;

  sub_1C12192C4(&v36);

  OUTLINED_FUNCTION_7_20();
  if (v6)
  {
    v16 = sub_1C1265320();
  }

  else
  {
    v16 = sub_1C12652F0();
  }

  v17 = v16;
  *&v36 = v10;
  BYTE8(v36) = BYTE4(v28);
  BYTE9(v36) = v28;
  BYTE10(v36) = v13;
  BYTE11(v36) = v14;
  v18 = PhotosPrefetchable.Font.font.getter();
  KeyPath = swift_getKeyPath();
  BYTE6(v35) = BYTE4(v29);
  HIBYTE(v35) = v29;
  sub_1C11253E0(KeyPath, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v35, v17, KeyPath, v18, v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91D80);
  sub_1C1062140();
  sub_1C1264B20();
  (*(v31 + 8))(v0, v34);

  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosPrefetchableImage(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_42_0();
  sub_1C1109A94();
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  *&v5 = v1;
  *(&v5 + 1) = v2;
  v6 = v3;
  OUTLINED_FUNCTION_43_6();
  v7 = 0;
  v8 = 65280;

  sub_1C12192C4(&v5);

  OUTLINED_FUNCTION_42_0();
  if (v3)
  {

    return sub_1C1265320();
  }

  else
  {

    return sub_1C12652F0();
  }
}

void PhotosPrefetchableImage(_:symbolVariant:imageScale:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v53 = v7;
  v54 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v52 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v51 = v11 - v10;
  v12 = sub_1C1265340();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v48 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v46 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_7();
  v21 = *v6;
  v22 = v6[1];
  v23 = *(v6 + 16);
  v24 = *v4;
  v25 = v4[1];
  v26 = *v2;
  v27 = *v2;
  v47 = __PAIR64__(v24, v25);
  v28 = v24 | (v25 << 8);
  sub_1C1109A94();
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  *&v55 = v21;
  *(&v55 + 1) = v22;
  LOBYTE(v56) = v23;
  BYTE1(v56) = v27;
  WORD1(v56) = v28;
  OUTLINED_FUNCTION_19_13();
  sub_1C12192C4(&v55);

  if (v23)
  {
    v29 = sub_1C1265320();
  }

  else
  {
    v29 = sub_1C12652F0();
  }

  v30 = v29;
  v31 = v48;
  (*(v14 + 104))(v48, **(&unk_1E813BC90 + v26), v12);
  v32 = *(v14 + 32);
  v33 = v49;
  v32(v49, v31, v12);
  KeyPath = swift_getKeyPath();
  v35 = (v0 + *(v50 + 36));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0);
  v37 = (v32)(v35 + *(v36 + 28), v33, v12);
  *v35 = KeyPath;
  *v0 = v30;
  LOBYTE(v55) = BYTE4(v47);
  BYTE1(v55) = v47;
  v38 = v51;
  sub_1C11253E0(v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, *(&v55 + 1), v56);
  sub_1C100DB54();
  sub_1C1264B20();
  (*(v52 + 8))(v38, v54);
  sub_1C0FD1A5C(v0, &qword_1EBE90D30);
  OUTLINED_FUNCTION_22_0();
}

void PhotosPrefetchableImage(_:imageScale:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v28 = v4;
  v5 = sub_1C1265340();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = *v3;
  v16 = v3[1];
  v17 = *(v3 + 16);
  v18 = *v1;
  v19 = *v1;
  sub_1C1109A94();
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  *&v29 = v15;
  *(&v29 + 1) = v16;
  v30 = v17;
  v31 = v19;
  v32 = 4;
  OUTLINED_FUNCTION_19_13();
  sub_1C12192C4(&v29);

  if (v17)
  {
    v20 = sub_1C1265320();
  }

  else
  {
    v20 = sub_1C12652F0();
  }

  v21 = v20;
  (*(v7 + 104))(v11, **(&unk_1E813BC90 + v18), v5);
  v22 = *(v7 + 32);
  v22(v14, v11, v5);
  KeyPath = swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30);
  v25 = v28;
  v26 = (v28 + *(v24 + 36));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0);
  v22(v26 + *(v27 + 28), v14, v5);
  *v26 = KeyPath;
  *v25 = v21;
  OUTLINED_FUNCTION_22_0();
}

void sub_1C11253E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94748);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = v20[1];
  switch(*v20)
  {
    case 1:
      sub_1C1263030();
      goto LABEL_7;
    case 2:
      sub_1C1263040();
      goto LABEL_7;
    case 3:
      __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
      sub_1C1263000();
      if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
      {
        sub_1C0FD1A5C(v27, &qword_1EBE94748);
      }

      goto LABEL_8;
    default:
      sub_1C1263020();
LABEL_7:
      v39 = *(v30 + 32);
      v39(v27, v34, v28);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
      v40 = OUTLINED_FUNCTION_46();
      (v39)(v40);
LABEL_8:
      sub_1C1126C48(v37, v38, v24);
      (*(v30 + 8))(v37, v28);
      OUTLINED_FUNCTION_22_0();
      return;
  }
}

void PhotosPrefetchableImage(_:imageScale:font:symbolVariant:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v69 = v9;
  v70 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v68 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v67 = v13 - v12;
  v66 = sub_1C1265340();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v63 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v57 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v21);
  v60 = (&v57 - v22);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D28);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_7();
  v24 = *v8;
  v25 = v8[1];
  v26 = *(v8 + 16);
  v57 = *v6;
  v27 = v57;
  v28 = *v4;
  v29 = *(v4 + 8);
  v30 = *(v4 + 10);
  v31 = *(v4 + 11);
  v32 = *v2;
  LODWORD(v59) = *(v4 + 9);
  HIDWORD(v59) = v29;
  v58 = __PAIR64__(v30, v31);
  v33 = v29 | (v59 << 8) | (v30 << 16) | (v31 << 24);
  LODWORD(v61) = v2[1];
  HIDWORD(v61) = v32;
  v34 = v32 | (v61 << 8);
  sub_1C1109A94();
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  *&v71 = v24;
  *(&v71 + 1) = v25;
  v72 = v26;
  v73 = v27;
  v74 = v34;
  v75 = v28;
  v76 = v33;

  sub_1C12192C4(&v71);

  if (v26)
  {
    v35 = sub_1C1265320();
  }

  else
  {
    v35 = sub_1C12652F0();
  }

  v36 = v35;
  v37 = v63;
  v38 = v66;
  (*(v15 + 104))(v63, **(&unk_1E813BC90 + v57), v66);
  v39 = *(v15 + 32);
  v40 = v64;
  v39(v64, v37, v38);
  KeyPath = swift_getKeyPath();
  v42 = v60;
  v43 = (v60 + *(v62 + 36));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0);
  v39(v43 + *(v44 + 28), v40, v38);
  *v43 = KeyPath;
  *v42 = v36;
  *&v71 = v28;
  BYTE8(v71) = BYTE4(v59);
  BYTE9(v71) = v59;
  BYTE10(v71) = BYTE4(v58);
  BYTE11(v71) = v58;
  v45 = PhotosPrefetchable.Font.font.getter();
  v46 = swift_getKeyPath();
  v47 = sub_1C112877C(v42, v0);
  v48 = (v0 + *(v65 + 36));
  *v48 = v46;
  v48[1] = v45;
  LOBYTE(v71) = BYTE4(v61);
  BYTE1(v71) = v61;
  v49 = v67;
  sub_1C11253E0(v47, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  sub_1C100DA9C();
  OUTLINED_FUNCTION_42_0();
  sub_1C1264B20();
  (*(v68 + 8))(v49, v70);
  sub_1C0FD1A5C(v0, &qword_1EBE90D28);
  OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosPrefetchable.Image.Kind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_1C1266D50();
        OUTLINED_FUNCTION_46();
        OUTLINED_FUNCTION_7_27();
        OUTLINED_FUNCTION_7_27();
        sub_1C100DC0C();
        OUTLINED_FUNCTION_46();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_7_27();
      OUTLINED_FUNCTION_7_27();
      sub_1C100DC0C();
      OUTLINED_FUNCTION_5_5();
      sub_1C100DC0C();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_7_27();
    sub_1C100DC0C();
    OUTLINED_FUNCTION_46();
    sub_1C100DC0C();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v8 = 1;
    OUTLINED_FUNCTION_5_28();
    sub_1C1109A94();
    OUTLINED_FUNCTION_5_28();
    sub_1C1109A94();
    OUTLINED_FUNCTION_5_28();
    sub_1C100DC0C();
    OUTLINED_FUNCTION_5_28();
    sub_1C100DC0C();
    return v8;
  }

  OUTLINED_FUNCTION_5_5();
  v7 = sub_1C1266D50();
  OUTLINED_FUNCTION_46();
  sub_1C1109A94();
  OUTLINED_FUNCTION_5_28();
  sub_1C1109A94();
  OUTLINED_FUNCTION_5_28();
  sub_1C100DC0C();
  OUTLINED_FUNCTION_46();
LABEL_16:
  sub_1C100DC0C();
  return v7 & 1;
}

uint64_t sub_1C1125B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6D6574737973 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C126C460 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C1266D50();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C1125C3C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x614E6D6574737973;
  }
}

uint64_t sub_1C1125C88(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C1266D50();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C1125CF8()
{
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1C68F07E0](0);
  return sub_1C1266EE0();
}

uint64_t sub_1C1125D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1125B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1125D9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1125C34();
  *a1 = result;
  return result;
}

uint64_t sub_1C1125DC4(uint64_t a1)
{
  v2 = sub_1C11287EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1125E00(uint64_t a1)
{
  v2 = sub_1C11287EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1125E40(uint64_t a1)
{
  v2 = sub_1C1128840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1125E7C(uint64_t a1)
{
  v2 = sub_1C1128840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1125EB8(uint64_t a1)
{
  v2 = sub_1C1128894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1125EF4(uint64_t a1)
{
  v2 = sub_1C1128894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PhotosPrefetchable.Image.Kind.encode(to:)()
{
  OUTLINED_FUNCTION_28_9();
  v30 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94690);
  OUTLINED_FUNCTION_0();
  v26 = v6;
  v27 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v23 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94698);
  OUTLINED_FUNCTION_0();
  v23 = v10;
  v24 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946A0);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15_4();
  v18 = *v0;
  v28 = v0[1];
  v29 = v18;
  v19 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C11287EC();
  sub_1C1266F00();
  if (v19)
  {
    OUTLINED_FUNCTION_38_7();
    sub_1C1128840();
    v20 = v25;
    OUTLINED_FUNCTION_16_19();
    sub_1C1266C70();
    v21 = v27;
    sub_1C1266C90();
    (*(v26 + 8))(v20, v21);
  }

  else
  {
    sub_1C1128894();
    OUTLINED_FUNCTION_16_19();
    sub_1C1266C70();
    v22 = v24;
    sub_1C1266C90();
    (*(v23 + 8))(v13, v22);
  }

  (*(v16 + 8))(v2, v14);
  OUTLINED_FUNCTION_30_8();
}

uint64_t PhotosPrefetchable.Image.Kind.hash(into:)()
{
  MEMORY[0x1C68F07E0](*(v0 + 16));
  OUTLINED_FUNCTION_42_0();

  return sub_1C1265EF0();
}

uint64_t PhotosPrefetchable.Image.Kind.hashValue.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1C68F07E0](v1);
  sub_1C1265EF0();
  return sub_1C1266EE0();
}

void PhotosPrefetchable.Image.Kind.init(from:)()
{
  OUTLINED_FUNCTION_28_9();
  v54 = v2;
  v55 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946A8);
  OUTLINED_FUNCTION_0();
  v51 = v5;
  v52 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946B0);
  OUTLINED_FUNCTION_0();
  v50 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946B8);
  OUTLINED_FUNCTION_0();
  v53 = v12;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v48 - v14;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C11287EC();
  v16 = v55;
  sub_1C1266EF0();
  if (v16)
  {
    goto LABEL_9;
  }

  v48[2] = v8;
  v49 = v1;
  v55 = v4;
  v17 = v54;
  v18 = sub_1C1266C60();
  v22 = sub_1C11288E8(v18, 0);
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v34 = sub_1C12669D0();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946C0);
    *v36 = &type metadata for PhotosPrefetchable.Image.Kind;
    sub_1C1266C10();
    sub_1C12669C0();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v37 = OUTLINED_FUNCTION_22_12();
    v38(v37, v11);
    v4 = v55;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
LABEL_10:
    OUTLINED_FUNCTION_30_8();
    return;
  }

  v48[1] = 0;
  if (v20 < (v21 >> 1))
  {
    v23 = *(v19 + v20);
    v24 = sub_1C1129C3C(v20 + 1, v21 >> 1, v22, v19, v20, v21);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      v29 = v11;
      v30 = v23;
      if (v23)
      {
        LODWORD(v50) = v23;
        OUTLINED_FUNCTION_38_7();
        sub_1C1128840();
        OUTLINED_FUNCTION_45_6();
        v31 = v17;
        v49 = v24;
        v32 = sub_1C1266C30();
        v33 = v53;
        v40 = v32;
        v42 = v41;
        swift_unknownObjectRelease();
        v43 = OUTLINED_FUNCTION_40_5();
        v44(v43);
        v30 = v50;
      }

      else
      {
        sub_1C1128894();
        OUTLINED_FUNCTION_45_6();
        v31 = v17;
        v39 = sub_1C1266C30();
        v42 = v45;
        v52 = v39;
        swift_unknownObjectRelease();
        v46 = OUTLINED_FUNCTION_44_5();
        v47(v46);
        v40 = v52;
        v33 = v53;
      }

      (*(v33 + 8))(v15, v29);
      *v31 = v40;
      *(v31 + 8) = v42;
      *(v31 + 16) = v30;
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C1126764()
{
  sub_1C1266E90();
  PhotosPrefetchable.Image.Kind.hash(into:)();
  return sub_1C1266EE0();
}

unint64_t PhotosPrefetchable.Image.SymbolVariants.Shape.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void *sub_1C1126ABC@<X0>(void *result@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  if (*result != -1)
  {
    result = swift_once();
  }

  v7 = *a3;
  *a4 = *a2;
  a4[1] = v7;
  return result;
}

void PhotosPrefetchable.Image.SymbolVariants.circle.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 1);
  *a1 = 0;
  a1[1] = v2;
}

uint64_t PhotosPrefetchable.Image.SymbolVariants.debugDescription.getter()
{
  v1 = v0[1];
  if (*v0 != 3)
  {
    v2 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v2);

    MEMORY[0x1C68EF850](46, 0xE100000000000000);
  }

  if (v1)
  {
    v3 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v3);
  }

  return 0;
}

uint64_t sub_1C1126C48@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  result = (*(v9 + 16))(a3, a1, v7);
  if ((byte_1EBE9468C & ~a2) == 0)
  {
    sub_1C1262FE0();
    v12 = OUTLINED_FUNCTION_5_5();
    v13(v12);
    v14 = OUTLINED_FUNCTION_26_9();
    result = v15(v14);
  }

  if ((byte_1EBE9468D & ~v6) == 0)
  {
    sub_1C1263010();
    v16 = OUTLINED_FUNCTION_5_5();
    v17(v16);
    v18 = OUTLINED_FUNCTION_26_9();
    result = v19(v18);
  }

  if ((byte_1EBE9468E & ~v6) == 0)
  {
    sub_1C1262FD0();
    v20 = OUTLINED_FUNCTION_5_5();
    v21(v20);
    v22 = OUTLINED_FUNCTION_26_9();
    return v23(v22);
  }

  return result;
}

uint64_t sub_1C1126DE8(int a1)
{
  v1 = a1;
  if ((byte_1EBE9468C & ~a1) == 0)
  {
    MEMORY[0x1C68EF850](0x6C6C69662ELL, 0xE500000000000000);
  }

  if ((byte_1EBE9468D & ~v1) == 0)
  {
    MEMORY[0x1C68EF850](0x6873616C732ELL, 0xE600000000000000);
  }

  if ((byte_1EBE9468E & ~v1) == 0)
  {
    MEMORY[0x1C68EF850](0x6F72676B6361622ELL, 0xEB00000000646E75);
  }

  return 0;
}

uint64_t sub_1C1126EA0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C1126F9C@<X0>(_BYTE *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_2_1();
  *a1 = result;
  return result;
}

uint64_t sub_1C1126FD0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1127000(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C1127014@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C10CB1A0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C1127044@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C10CB1C8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C112707C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C10CB170(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1C11270B0@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C11270E4(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1C11270E4(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_1C112710C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}