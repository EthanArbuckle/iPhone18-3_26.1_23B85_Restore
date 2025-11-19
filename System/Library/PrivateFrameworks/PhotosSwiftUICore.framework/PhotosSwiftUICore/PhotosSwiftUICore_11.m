uint64_t sub_1C10B7998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v62 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE8);
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE92FF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_1C1264700();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93000);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93008);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = *(a1 + 8);
  v25 = 1;
  if (v24)
  {
    v72 = *a1;
    v73 = v24;
    v74 = 1;
    v26 = qword_1EDE7AF08;

    if (v26 != -1)
    {
      swift_once();
    }

    *v82 = word_1EDE7AF16;
    v83 = 0;
    PhotosPrefetchableImage(_:symbolVariant:imageScale:)();
    sub_1C100DC0C();
    (*(v13 + 104))(v15, *MEMORY[0x1E6980EF0], v12);
    v27 = *MEMORY[0x1E6980E20];
    v28 = sub_1C1264590();
    (*(*(v28 - 8) + 104))(v11, v27, v28);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v28);
    sub_1C1264620();
    v29 = sub_1C1264640();
    sub_1C0F9E27C(v11, &qword_1EBE96550);
    (*(v13 + 8))(v15, v12);
    KeyPath = swift_getKeyPath();
    v31 = &v18[*(v16 + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    sub_1C0FE4040(v18, v23, &qword_1EBE93000);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v23, v25, 1, v16);
  v32 = *(a1 + 24);
  if (!v32)
  {
    v57 = v68;
    v54 = v69;
    v55 = v69;
    v56 = 1;
    goto LABEL_9;
  }

  v72 = *(a1 + 16);
  v73 = v32;
  sub_1C0FDB9AC();

  v33 = sub_1C12648F0();
  v35 = v34;
  v37 = v36;
  LOBYTE(v72) = *(a1 + 48);
  PhotosMaterialTitleCellSpecs.font.getter();
  v38 = sub_1C1264870();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1C0FDB8E8(v33, v35, v37 & 1);

  v45 = swift_getKeyPath();
  v46 = v42 & 1;
  v83 = v46;
  v81 = 0;
  v72 = v38;
  v73 = v40;
  v62 = v40;
  v74 = v46;
  *v75 = *v82;
  *&v75[3] = *&v82[3];
  v76 = v44;
  v77 = 0xBFF0000000000000;
  v78 = v45;
  v79 = 2;
  v80 = 0;
  v47 = *MEMORY[0x1E697E6D0];
  v48 = sub_1C1263130();
  v49 = v66;
  (*(*(v48 - 8) + 104))(v66, v47, v48);
  sub_1C10B9338(&qword_1EDE7BF90, MEMORY[0x1E697E730]);
  result = sub_1C1265DE0();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93018);
    sub_1C10B9380();
    sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0);
    v51 = v38;
    v52 = v63;
    sub_1C1264BC0();
    sub_1C0F9E27C(v49, &qword_1EBE92FE0);
    sub_1C0FDB8E8(v51, v62, v46);

    v53 = v68;
    v54 = v69;
    (*(v65 + 32))(v69, v52, v68);
    v55 = v54;
    v56 = 0;
    v57 = v53;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v55, v56, 1, v57);
    v58 = v67;
    sub_1C0FE5654(v23, v67, &qword_1EBE93008);
    v59 = v70;
    sub_1C0FE5654(v54, v70, &unk_1EBE92FF0);
    v60 = v71;
    sub_1C0FE5654(v58, v71, &qword_1EBE93008);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93010);
    sub_1C0FE5654(v59, v60 + *(v61 + 48), &unk_1EBE92FF0);
    sub_1C0F9E27C(v54, &unk_1EBE92FF0);
    sub_1C0F9E27C(v23, &qword_1EBE93008);
    sub_1C0F9E27C(v59, &unk_1EBE92FF0);
    return sub_1C0F9E27C(v58, &qword_1EBE93008);
  }

  __break(1u);
  return result;
}

BOOL sub_1C10B81B8()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

BOOL sub_1C10B81E8()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

unint64_t sub_1C10B8244()
{
  result = qword_1EDE7F220;
  if (!qword_1EDE7F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F220);
  }

  return result;
}

unint64_t sub_1C10B82E0()
{
  result = qword_1EDE78DF0;
  if (!qword_1EDE78DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78DF0);
  }

  return result;
}

void sub_1C10B8378()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C10B8F34(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C10B8808();
      if (v2 <= 0x3F)
      {
        sub_1C1007F88();
        if (v3 <= 0x3F)
        {
          sub_1C10B886C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C10B8484(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
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
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C10B85F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1C10B8808()
{
  if (!qword_1EDE76A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92300);
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76A60);
    }
  }
}

void sub_1C10B886C()
{
  if (!qword_1EDE76AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92F00);
    sub_1C10B88E4();
    v0 = sub_1C1265CF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76AF8);
    }
  }
}

unint64_t sub_1C10B88E4()
{
  result = qword_1EDE78DF8;
  if (!qword_1EDE78DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78DF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosMaterialTitleCellAffordanceLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_1C10B8A14()
{
  sub_1C10B8F34(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C10B8808();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1C10B886C();
        if (v3 <= 0x3F)
        {
          sub_1C10B8F34(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1C10B8F34(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
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

uint64_t sub_1C10B8B80(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
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

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (((((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 9) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((v9 + v18) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((((v9 + ((v7 + 49) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 209;
    v11 = (a2 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v10);
        if (!*(result + v10))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v10);
        if (!*(result + v10))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v10);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = (v15 - 1) << (8 * (((((v9 + ((v7 + 49) & ~v7)) & 0xF8) + 31) & 0xF8) - 47));
        if (v10 <= 3)
        {
          v17 = *result;
        }

        else
        {
          v16 = 0;
          v17 = *result;
        }

        result = v8 + (v17 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C10B8D10(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
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
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = (a3 - v9 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v12] = 0;
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
        *&a1[v12] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          v19 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 9) & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v9 + a2;
    bzero(a1, ((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 209);
    if (v12 <= 3)
    {
      v18 = (v17 >> 8) + 1;
    }

    else
    {
      v18 = 1;
    }

    if (v12 > 3)
    {
      *a1 = v17;
    }

    else
    {
      *a1 = v17;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v18;
        break;
      case 2:
        *&a1[v12] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v12] = v18;
        break;
      default:
        return;
    }
  }
}

void sub_1C10B8F34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C10B8F84()
{
  result = qword_1EDE7A470;
  if (!qword_1EDE7A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A470);
  }

  return result;
}

unint64_t sub_1C10B8FD8()
{
  result = qword_1EBE92F48;
  if (!qword_1EBE92F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC0);
    sub_1C10B9064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92F48);
  }

  return result;
}

unint64_t sub_1C10B9064()
{
  result = qword_1EBE92F50;
  if (!qword_1EBE92F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92F58);
    sub_1C10B9120();
    sub_1C10B9338(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92F50);
  }

  return result;
}

unint64_t sub_1C10B9120()
{
  result = qword_1EBE92F60;
  if (!qword_1EBE92F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92F68);
    sub_1C10239B0(&qword_1EBE92F70, &unk_1EBE92F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92F60);
  }

  return result;
}

uint64_t sub_1C10B9200(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10B9280()
{
  result = qword_1EDE77318;
  if (!qword_1EDE77318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FB0);
    sub_1C10239B0(&qword_1EDE76C40, &unk_1EBE92FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77318);
  }

  return result;
}

uint64_t sub_1C10B9338(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C10B9380()
{
  result = qword_1EDE77210;
  if (!qword_1EDE77210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93018);
    sub_1C10B9438();
    sub_1C10239B0(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77210);
  }

  return result;
}

unint64_t sub_1C10B9438()
{
  result = qword_1EDE773C8;
  if (!qword_1EDE773C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93020);
    sub_1C10239B0(&qword_1EDE7BB68, &unk_1EBE93030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773C8);
  }

  return result;
}

uint64_t sub_1C10B94F0()
{
  sub_1C10BA468();
  sub_1C12637F0();
  return v1;
}

uint64_t View.photosLegibilityBlur(enabled:height:radius:edge:)(char a1, uint64_t a2, char a3, uint64_t a4, char a5, int a6, uint64_t a7, uint64_t a8)
{
  v20 = a8;
  v15 = type metadata accessor for PhotosLegibilityBlurModifier();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_1EBE8FC98 != -1)
    {
      swift_once();
    }

    a2 = qword_1EBE930A0;
  }

  if (a5)
  {
    if (qword_1EDE78BD0 != -1)
    {
      swift_once();
    }

    a4 = qword_1EDE78BD8;
  }

  *v17 = a1 & 1;
  *(v17 + 1) = a2;
  *(v17 + 2) = a4;
  *(v17 + 6) = a6;
  v21 = a2;
  sub_1C100D418();
  sub_1C1262BE0();
  MEMORY[0x1C68EE920](v17, a7, v15, v20);
  return sub_1C10BA148(v17);
}

uint64_t type metadata accessor for PhotosLegibilityBlurModifier()
{
  result = qword_1EDE79E70;
  if (!qword_1EDE79E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C10B9770@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C10B974C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5 & 1;
  return result;
}

uint64_t sub_1C10B97A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v7 = *v2;
  if (v7 == 1)
  {
    type metadata accessor for PhotosLegibilityBlurModifier();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
    sub_1C1262BF0();
    v8 = v14;
    v9 = *(v3 + 2);
    v10 = *(v3 + 6);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930A8);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930B0);
  v13 = a2 + *(result + 36);
  *v13 = KeyPath;
  *(v13 + 8) = v8;
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 28) = v7 ^ 1;
  return result;
}

uint64_t sub_1C10B98CC()
{
  type metadata accessor for PhotosLegibilityBlurRenderer();
  swift_allocObject();
  result = sub_1C10B9ADC();
  qword_1EDE9B5D0 = result;
  return result;
}

id sub_1C10B9908(double a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, int a9, double a10, double a11)
{
  v20 = PXImageGetCGImage();
  if (v20)
  {
    v21 = v20;
    if ((sub_1C12665E0() & 1) != 0 || a7 <= 0.0 || (v45.origin.x = OUTLINED_FUNCTION_0_33(), CGRectIsEmpty(v45)))
    {
    }

    else
    {
      v24 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
      [v24 extent];
      OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_0_33();
      v43 = v26;
      v44 = v25;
      v41 = v28;
      v42 = v27;
      PXRectDenormalize();
      OUTLINED_FUNCTION_1_25();
      PXSizeGetAspectRatio();
      PXRectWithAspectRatioFittingRect();
      OUTLINED_FUNCTION_1_25();
      PXClamp();
      v30 = a1 * v29;
      v31 = OUTLINED_FUNCTION_4_28();
      if (a9 == 1)
      {
        MinY = CGRectGetMinY(*&v31);
      }

      else
      {
        MinY = CGRectGetMaxY(*&v31) - v30;
      }

      v40 = MinY;
      v46.origin.y = v43;
      v46.origin.x = v44;
      v46.size.height = v41;
      v46.size.width = v42;
      Width = CGRectGetWidth(v46);
      v47.origin.x = OUTLINED_FUNCTION_4_28();
      v37 = CGRectGetWidth(v47);
      v38 = sub_1C10B9C58(v24, 0.0, v40, Width, v30, v37 / (a5 * a7) * a11);
      if (v38)
      {
        v39 = v38;
        v22 = PXImageFromCGImage();

        return v22;
      }
    }
  }

  return 0;
}

uint64_t sub_1C10B9ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12B1E40;
  v3 = *MEMORY[0x1E695F7F0];
  *(inited + 32) = *MEMORY[0x1E695F7F0];
  v4 = MEMORY[0x1E69E6370];
  *(inited + 40) = 0;
  v5 = *MEMORY[0x1E695F870];
  *(inited + 64) = v4;
  *(inited + 72) = v5;
  v6 = *MEMORY[0x1E695F8A8];
  type metadata accessor for CIFormat(0);
  v7 = MEMORY[0x1E695F868];
  *(inited + 80) = v6;
  v8 = *v7;
  *(inited + 104) = v9;
  *(inited + 112) = v8;
  v10 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v11 = v3;
  v12 = v5;
  v13 = v8;
  v14 = [v10 init];
  *(inited + 144) = sub_1C10BA3DC();
  *(inited + 120) = v14;
  type metadata accessor for CIContextOption(0);
  sub_1C10BA420(&unk_1EDE76A50, type metadata accessor for CIContextOption);
  v15 = sub_1C1265CE0();
  v16 = objc_allocWithZone(MEMORY[0x1E695F620]);
  *(v1 + 16) = sub_1C10BA320(v15);
  return v1;
}

id sub_1C10B9C58(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v11 = [objc_opt_self() maskedVariableBlurFilter];
  v12 = [a1 imageByClampingToExtent];
  [v11 setInputImage_];

  *&v13 = a6;
  [v11 setRadius_];
  [a1 extent];
  OUTLINED_FUNCTION_2_27();
  PXRectFlippedVertically();
  OUTLINED_FUNCTION_5_1();
  if (qword_1EDE79DD0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDE79DD8;
  [qword_1EDE79DD8 extent];
  PXAffineTransformMakeFromRects();
  v15 = v27;
  v16 = v28;
  v17 = [v14 imageByClampingToExtent];
  v18 = [v17 imageByApplyingTransform:&v26 highQualityDownsample:0];

  [v11 setMask_];
  result = [v11 outputImage];
  if (result)
  {
    v20 = result;
    [a1 extent];
    v21 = [v20 imageByCroppingToRect_];

    v22 = *(v6 + 16);
    [a1 extent];
    OUTLINED_FUNCTION_5_1();
    v23 = *MEMORY[0x1E695F8A8];
    v24 = [a1 colorSpace];
    v25 = [v22 createCGImage:v21 fromRect:v23 format:v24 colorSpace:0 deferred:{v15, v16, a3, a2}];

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C10B9F00()
{
  v0 = objc_opt_self();
  v1 = sub_1C1265E70();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE7E630;
  v3 = [v0 px:v1 imageNamed:v2 bundle:?];

  if (v3)
  {
    v4 = PXImageGetCGImage();

    if (v4)
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];

      qword_1EDE79DD8 = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C10BA014()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

double sub_1C10BA04C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EBE930A0 = v2;
  return result;
}

double sub_1C10BA0CC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EDE78BD8 = v2;
  return result;
}

uint64_t sub_1C10BA148(uint64_t a1)
{
  v2 = type metadata accessor for PhotosLegibilityBlurModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C10BA1F0()
{
  type metadata accessor for CGRectEdge(319);
  if (v0 <= 0x3F)
  {
    sub_1C100D3BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosLegibilityBlurConfiguration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PhotosLegibilityBlurConfiguration(uint64_t result, int a2, int a3)
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

id sub_1C10BA320(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CIContextOption(0);
    sub_1C10BA420(&unk_1EDE76A50, type metadata accessor for CIContextOption);
    v2 = sub_1C1265CC0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithOptions_];

  return v3;
}

unint64_t sub_1C10BA3DC()
{
  result = qword_1EDE76988;
  if (!qword_1EDE76988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE76988);
  }

  return result;
}

uint64_t sub_1C10BA420(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C10BA468()
{
  result = qword_1EDE76F70;
  if (!qword_1EDE76F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F70);
  }

  return result;
}

unint64_t sub_1C10BA4CC()
{
  result = qword_1EDE77420;
  if (!qword_1EDE77420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE930B0);
    sub_1C0FDB6D4(&qword_1EDE76DE0, &qword_1EBE930A8);
    sub_1C0FDB6D4(&qword_1EDE76D50, &unk_1EBE930C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77420);
  }

  return result;
}

uint64_t PhotosMemoryCell.init(_:canToggleFavorite:content:titleAndSubtitleView:bottomTrailingAccessoryView:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, __int128 a7, __int128 a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v26 = 0;
  sub_1C1265410();
  v17 = *&__src[8];
  *a6 = __src[0];
  *(a6 + 8) = v17;
  *__src = a7;
  *&__src[16] = a8;
  *&__src[32] = a9;
  *&__src[48] = a10;
  *&__src[64] = a11;
  *&__src[72] = a12;
  v18 = type metadata accessor for PhotosMemoryCell();
  v19 = *(v18 + 120);
  *__src = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a6 + v19), __src, 0xD1uLL);
  *(a6 + 16) = a1;
  v20 = swift_unknownObjectRetain();
  v21 = a3(v20);
  v22 = a4(v21);
  a5(v22);
  result = swift_unknownObjectRelease();
  *(a6 + *(v18 + 116)) = a2;
  return result;
}

uint64_t PhotosMemoryCell.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  OUTLINED_FUNCTION_0();
  v112 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v110 = v5;
  v111 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE930D0);
  v116 = a1[2];
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_8_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12633A0();
  sub_1C1263190();
  v6 = sub_1C10BB310();
  OUTLINED_FUNCTION_5_3();
  WitnessTable = swift_getWitnessTable();
  v146 = v6;
  v147 = WitnessTable;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v108 = a1;
  v8 = a1[1];
  v114 = a1[3];
  v115 = v8;
  type metadata accessor for PhotosInteractiveFavoriteBadge();
  sub_1C1264360();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_16_13();
  type metadata accessor for PhotosFavoriteBadge();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_10_18();
  v144 = swift_getWitnessTable();
  v145 = MEMORY[0x1E697E5C0];
  v142 = swift_getWitnessTable();
  v143 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12633A0();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  *&v91 = swift_getWitnessTable();
  v9 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v106 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34();
  v89 = v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v13 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v103 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34();
  v100 = v16;
  *&v107 = v9;
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  v19 = sub_1C0FDB6D4(v18, &unk_1EBE92EC0);
  v92 = v17;
  v140 = v17;
  v141 = v19;
  v20 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v22 = sub_1C0FDB6D4(v21, &qword_1EBE91C40);
  v138 = v20;
  v139 = v22;
  v23 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v25 = sub_1C0FDB6D4(v24, &unk_1EBE92ED0);
  v136 = v23;
  v137 = v25;
  v26 = swift_getWitnessTable();
  v105 = v13;
  v90 = v26;
  v27 = type metadata accessor for PhotosDetailsPresentationSourceView();
  OUTLINED_FUNCTION_0();
  v93 = v28;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v86 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30);
  v32 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v96 = v33;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_34();
  v94 = v35;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v101 = v36;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_34();
  v95 = v38;
  v102 = v39;
  v97 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v104 = v40;
  MEMORY[0x1EEE9AC00](v41);
  v98 = &v86 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v99 = &v86 - v44;
  v117 = v115;
  v118 = v116;
  v46 = v108;
  v45 = v109;
  v47 = v108[4];
  v119 = v114;
  v120 = v47;
  v88 = v47;
  v48 = *(v108 + 10);
  v86 = *(v108 + 11);
  v87 = v48;
  v121 = v48;
  v122 = v86;
  v123 = v109;
  sub_1C1009330();
  v49 = v89;
  sub_1C12655B0();
  sub_1C10BD784(v46, v148);
  memcpy(v135, v149, sizeof(v135));
  sub_1C100D690(v148, v151);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDE82B08;
  v51 = qword_1EDE82B10;
  v91 = xmmword_1EDE82B18;
  v52 = qword_1EDE82B28;

  sub_1C100C7D0(v148);

  *&v151[0] = v50;
  *(&v151[0] + 1) = v51;
  v151[1] = v91;
  *&v151[2] = v52;
  memcpy(&v151[2] + 8, v135, 0xA8uLL);
  v53 = v100;
  v54 = v107;
  View.cellStyle(for:)(v151, v92, v100);
  memcpy(v150, v151, sizeof(v150));
  sub_1C100C7D0(v150);
  (*(v106 + 8))(v49, v54);
  v134 = 2;
  v133 = 0;
  sub_1C10BD784(v46, v151);
  v55 = v151[0];
  v107 = v151[1];
  v56 = *&v151[2];

  sub_1C100C7D0(v151);
  v130 = v55;
  v131 = v107;
  v132 = v56;
  OUTLINED_FUNCTION_28();
  v57 = v105;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(v58, v59, v60, v105, v61);

  (*(v103 + 8))(v53, v57);
  LOBYTE(v130) = 1;
  v62 = OUTLINED_FUNCTION_12_13();
  sub_1C1061D74();
  v63 = v94;
  sub_1C12649C0();
  (*(v93 + 8))(v31, v27);
  OUTLINED_FUNCTION_10_5();
  v66 = sub_1C0FDB6D4(v64, v65);
  v128 = v62;
  v129 = v66;
  v67 = swift_getWitnessTable();
  OUTLINED_FUNCTION_15_6();
  v68 = v95;
  sub_1C1264E50();
  (*(v96 + 8))(v63, v32);
  v70 = v111;
  v69 = v112;
  (*(v112 + 16))(v111, v45, v46);
  v71 = (*(v69 + 80) + 96) & ~*(v69 + 80);
  v72 = swift_allocObject();
  v73 = v116;
  *(v72 + 16) = v115;
  *(v72 + 32) = v73;
  v74 = v88;
  *(v72 + 48) = v114;
  *(v72 + 64) = v74;
  v75 = v86;
  *(v72 + 80) = v87;
  *(v72 + 88) = v75;
  (*(v69 + 32))(v72 + v71, v70, v46);
  v76 = sub_1C1025E04();
  v126 = v67;
  v127 = v76;
  v77 = v102;
  v78 = swift_getWitnessTable();
  v79 = v98;
  sub_1C1264F40();

  (*(v101 + 8))(v68, v77);
  v80 = sub_1C10136B0();
  v124 = v78;
  v125 = v80;
  v81 = v97;
  v82 = swift_getWitnessTable();
  v83 = v99;
  sub_1C0FDBA4C(v79, v81, v82);
  v84 = *(v104 + 8);
  v84(v79, v81);
  sub_1C0FDBA4C(v83, v81, v82);
  return (v84)(v83, v81);
}

unint64_t sub_1C10BB310()
{
  result = qword_1EDE7BF78;
  if (!qword_1EDE7BF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE930D0);
    sub_1C10BB39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF78);
  }

  return result;
}

unint64_t sub_1C10BB39C()
{
  result = qword_1EDE816B0;
  if (!qword_1EDE816B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE816B0);
  }

  return result;
}

uint64_t sub_1C10BB3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v103 = a8;
  v104 = a4;
  v109 = a6;
  v110 = a3;
  v106 = a5;
  v92 = a1;
  v101 = a9;
  v105 = a12;
  v108 = a11;
  v111 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE930D0);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getWitnessTable();
  sub_1C12633A0();
  v14 = sub_1C1263190();
  v142 = sub_1C10BB310();
  WitnessTable = swift_getWitnessTable();
  v83 = v14;
  v82 = swift_getWitnessTable();
  v15 = sub_1C12655C0();
  v95 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v76[-v16];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8);
  v96 = v15;
  v17 = sub_1C1263190();
  v99 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v76[-v18];
  v19 = a7;
  type metadata accessor for PhotosInteractiveFavoriteBadge();
  sub_1C1264360();
  sub_1C1263190();
  sub_1C1263190();
  v20 = *(a7 + 8);
  v107 = a7;
  v78 = v20;
  type metadata accessor for PhotosFavoriteBadge();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263190();
  v21 = sub_1C1263190();
  v140 = swift_getWitnessTable();
  v141 = MEMORY[0x1E697E5C0];
  v138 = swift_getWitnessTable();
  v139 = MEMORY[0x1E697E5D8];
  v22 = swift_getWitnessTable();
  v89 = v21;
  v84 = v22;
  v23 = sub_1C12633A0();
  v97 = v17;
  v87 = v23;
  v94 = sub_1C1263190();
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v76[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v76[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v90 = &v76[-v28];
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = sub_1C1266790();
  v79 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v31 = &v76[-v30];
  v32 = v110;
  v88 = *(v110 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v85 = &v76[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v76[-v36];
  v128 = v29;
  v129 = v32;
  v38 = v104;
  v39 = v106;
  v130 = v104;
  v131 = v106;
  v132 = v109;
  v133 = v19;
  v40 = v111;
  v134 = v103;
  v135 = v111;
  v41 = v105;
  v136 = v108;
  v137 = v105;
  v42 = type metadata accessor for PhotosMemoryCell();
  v43 = v92;
  v44 = v92 + *(v42 + 104);
  v102 = v37;
  sub_1C0FDBA4C(v44, v32, v40);
  v77 = v39 != MEMORY[0x1E6981E70];
  v128 = *(v43 + 16);
  (*(v78 + 72))(v29);
  LODWORD(v40) = __swift_getEnumTagSinglePayload(v31, 1, AssociatedTypeWitness);
  (*(v79 + 8))(v31, v100);
  v100 = v29;
  v112 = v29;
  v113 = v32;
  v114 = v38;
  v115 = v39;
  v116 = v109;
  v117 = v107;
  v45 = v103;
  v118 = v103;
  v119 = v111;
  v120 = v108;
  v121 = v41;
  v122 = v40 != 1;
  v46 = v43;
  v47 = v81;
  v48 = v46;
  v123 = v46;
  v124 = v77;
  sub_1C1009330();
  sub_1C12655B0();
  if (v40 == 1)
  {
    if (qword_1EDE7B868 != -1)
    {
      swift_once();
    }

    v49 = qword_1EDE7B870;
  }

  else
  {
    v49 = sub_1C1265190();
  }

  v128 = v49;
  v50 = v96;
  v51 = swift_getWitnessTable();
  v52 = v98;
  sub_1C1264BE0();

  (*(v95 + 8))(v47, v50);
  v53 = sub_1C1265950();
  v96 = v76;
  MEMORY[0x1EEE9AC00](v53);
  v54 = v110;
  *&v76[-96] = v100;
  *&v76[-88] = v54;
  v55 = v106;
  *&v76[-80] = v104;
  *&v76[-72] = v55;
  v56 = v107;
  *&v76[-64] = v109;
  *&v76[-56] = v56;
  v57 = v111;
  *&v76[-48] = v45;
  *&v76[-40] = v57;
  v58 = v105;
  *&v76[-32] = v108;
  *&v76[-24] = v58;
  *&v76[-16] = v48;
  v59 = sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
  v127[4] = v51;
  v127[5] = v59;
  v60 = v97;
  v61 = swift_getWitnessTable();
  v62 = v86;
  sub_1C1264F60();
  (*(v99 + 8))(v52, v60);
  v63 = swift_getWitnessTable();
  v127[2] = v61;
  v127[3] = v63;
  v64 = v94;
  v65 = swift_getWitnessTable();
  v66 = v90;
  sub_1C0FDBA4C(v62, v64, v65);
  v67 = v91;
  v109 = *(v91 + 8);
  v109(v62, v64);
  v68 = v88;
  v69 = v85;
  v70 = v110;
  (*(v88 + 16))(v85, v102, v110);
  v128 = v69;
  v71 = v93;
  (*(v67 + 16))(v93, v66, v64);
  v129 = v71;
  v72 = v70;
  v127[0] = v70;
  v127[1] = v64;
  v125 = v111;
  v126 = v65;
  sub_1C119EE80(&v128, 2, v127);
  v73 = v109;
  v109(v66, v64);
  v74 = *(v68 + 8);
  v74(v102, v72);
  v73(v71, v64);
  return (v74)(v69, v72);
}

uint64_t sub_1C10BBEF0@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  v35 = a8;
  v33 = a5;
  v31 = a4;
  v36 = a3;
  v34 = a2;
  v37 = a9;
  v32 = a12;
  v30 = a11;
  v29 = a10;
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE930D0);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  v28[2] = swift_getWitnessTable();
  v28[3] = sub_1C12633A0();
  v15 = sub_1C1263190();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v28 - v20;
  v22 = 0.0;
  if (a1)
  {
    v22 = 1.0;
  }

  v50 = 0x3FDCCCCCCCCCCCCDLL;
  v51 = v22;
  sub_1C1265990();
  v38 = v31;
  v39 = v33;
  v40 = a6;
  v41 = a7;
  v42 = v35;
  v43 = v29;
  v44 = v30;
  v45 = v32;
  v46 = v34;
  v47 = v36;
  v23 = sub_1C10BB310();
  sub_1C1264F60();
  WitnessTable = swift_getWitnessTable();
  v48 = v23;
  v49 = WitnessTable;
  v25 = swift_getWitnessTable();
  sub_1C0FDBA4C(v18, v15, v25);
  v26 = *(v16 + 8);
  v26(v18, v15);
  sub_1C0FDBA4C(v21, v15, v25);
  return (v26)(v21, v15);
}

uint64_t sub_1C10BC28C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v32 = a8;
  v33 = a9;
  v29 = a1;
  v30 = a7;
  v31 = a2;
  v28 = a12;
  v27 = a11;
  v26 = a10;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v16 = sub_1C12654C0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  sub_1C12638D0();
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v30;
  v39 = v32;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v44 = v31;
  sub_1C12654B0();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v19, v16, WitnessTable);
  v24 = *(v17 + 8);
  v24(v19, v16);
  sub_1C0FDBA4C(v22, v16, WitnessTable);
  return (v24)(v22, v16);
}

uint64_t sub_1C10BC508@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v63 = a7;
  v60 = a4;
  v59 = a3;
  v57 = a2;
  v64 = a9;
  v56 = a11;
  v55 = a10;
  swift_getTupleTypeMetadata2();
  v17 = sub_1C1265B00();
  v54 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v50 - v18;
  v52 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v50 - v22;
  v23 = sub_1C1266790();
  v65 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v62 = &v50 - v27;
  v58 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v61 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v50 - v31;
  v73 = v59;
  v74 = v60;
  v75 = a5;
  v76 = a6;
  v77 = v63;
  v78 = a8;
  v79 = v55;
  v80 = v56;
  v81 = a12;
  v82 = a13;
  v33 = type metadata accessor for PhotosMemoryCell();
  v34 = a1 + *(v33 + 108);
  v60 = v32;
  v59 = a5;
  v63 = a12;
  sub_1C0FDBA4C(v34, a5, a12);
  if (v57)
  {
    v35 = v50;
    sub_1C0FDBA4C(a1 + *(v33 + 112), a6, a13);
    v66 = 0x4028000000000000;
    v67 = 0;
    v73 = &v66;
    v36 = v52;
    v37 = v51;
    (*(v52 + 16))(v51, v35, a6);
    v74 = v37;
    v71 = MEMORY[0x1E6981840];
    v72 = a6;
    v69 = MEMORY[0x1E6981838];
    v70 = a13;
    v38 = v53;
    sub_1C119EE80(&v73, 2, &v71);
    v39 = *(v36 + 8);
    v39(v35, a6);
    v39(v37, a6);
    (*(v54 + 32))(v25, v38, v17);
    v40 = v25;
    v41 = 0;
  }

  else
  {
    v40 = v25;
    v41 = 1;
  }

  __swift_storeEnumTagSinglePayload(v40, v41, 1, v17);
  swift_getWitnessTable();
  v42 = v62;
  sub_1C1170030(v25, v62);
  v43 = *(v65 + 8);
  v43(v25, v23);
  v44 = v58;
  v45 = v61;
  v46 = v60;
  v47 = v59;
  (*(v58 + 16))(v61, v60, v59);
  v73 = v45;
  (*(v65 + 16))(v25, v42, v23);
  v74 = v25;
  v71 = v47;
  v72 = v23;
  v69 = v63;
  WitnessTable = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  sub_1C119EE80(&v73, 2, &v71);
  v43(v42, v23);
  v48 = *(v44 + 8);
  v48(v46, v47);
  v43(v25, v23);
  return (v48)(v45, v47);
}

uint64_t sub_1C10BCB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v49 = a6;
  v50 = a8;
  v48 = a5;
  v46 = a4;
  v44 = a3;
  v35 = a1;
  v41 = a9;
  v47 = a12;
  v45 = a11;
  v43 = a10;
  type metadata accessor for PhotosInteractiveFavoriteBadge();
  sub_1C1264360();
  sub_1C1263190();
  sub_1C1263190();
  v34 = *(*(a7 + 8) + 8);
  type metadata accessor for PhotosFavoriteBadge();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v14 = sub_1C12655C0();
  v36 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = sub_1C1263190();
  v39 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = sub_1C1263190();
  v40 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v37 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v38 = &v33 - v23;
  v51 = a2;
  v52 = v44;
  v53 = v46;
  v54 = v48;
  v55 = v49;
  v56 = a7;
  v42 = a7;
  v57 = v50;
  v58 = v43;
  v59 = v45;
  v60 = v47;
  v24 = v35;
  v61 = v35;
  sub_1C1009330();
  sub_1C12655B0();
  v76 = *(v24 + 16);
  if (((*(v34 + 8))(a2) & 1) == 0)
  {
    v66 = a2;
    v67 = v44;
    v68 = v46;
    v69 = v48;
    v70 = v49;
    v71 = v42;
    v72 = v50;
    v73 = v43;
    v74 = v45;
    v75 = v47;
    type metadata accessor for PhotosMemoryCell();
    sub_1C106C83C();
  }

  WitnessTable = swift_getWitnessTable();
  sub_1C1264F50();
  (*(v36 + 8))(v16, v14);
  v66 = a2;
  v67 = v44;
  v68 = v46;
  v69 = v48;
  v70 = v49;
  v71 = v42;
  v72 = v50;
  v73 = v43;
  v74 = v45;
  v75 = v47;
  v26 = type metadata accessor for PhotosMemoryCell();
  sub_1C10BD784(v26, &v66);
  sub_1C100C7D0(&v66);
  v64 = WitnessTable;
  v65 = MEMORY[0x1E697E5C0];
  v27 = swift_getWitnessTable();
  v28 = v37;
  sub_1C1264FA0();
  (*(v39 + 8))(v19, v17);
  v62 = v27;
  v63 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v30 = v38;
  sub_1C0FDBA4C(v28, v20, v29);
  v31 = *(v40 + 8);
  v31(v28, v20);
  sub_1C0FDBA4C(v30, v20, v29);
  return (v31)(v30, v20);
}

uint64_t sub_1C10BD0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v62 = a5;
  v63 = a8;
  v60 = a3;
  v61 = a4;
  v65 = a9;
  v66 = a1;
  v59 = a11;
  v56 = a10;
  v14 = sub_1C1265E50();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a7;
  v50 = a6;
  v17 = type metadata accessor for PhotosInteractiveFavoriteBadge();
  sub_1C1264360();
  v18 = sub_1C1263190();
  v57 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v48 - v19;
  v55 = sub_1C1263190();
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v64 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v48 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v48 - v24;
  v25 = *(v66 + 16);
  swift_unknownObjectRetain();
  v26 = sub_1C110DB44();
  PhotosInteractiveFavoriteBadge.init(_:tint:)(v25, v26, v89);
  *&v79 = v25;
  v27 = *(*(a7 + 8) + 8);
  v28 = *(v27 + 8);
  swift_unknownObjectRetain();
  v28(a2, v27);
  sub_1C1265DF0();
  v29 = static String.photosSwiftUICoreLocalized(_:)(v16);
  v31 = v30;
  (*(v52 + 8))(v16, v53);
  *&v79 = v29;
  *(&v79 + 1) = v31;
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDB9AC();
  v33 = v51;
  sub_1C1264C80();

  v87[0] = v89[0];
  v87[1] = v89[1];
  v88[0] = v90[0];
  *(v88 + 9) = *(v90 + 9);
  (*(*(v17 - 8) + 8))(v87, v17);
  *&v79 = a2;
  *(&v79 + 1) = v60;
  v80 = v61;
  v81 = v62;
  v82 = v50;
  v83 = v49;
  v85 = v56;
  v84 = v63;
  v86 = v59;
  type metadata accessor for PhotosMemoryCell();
  v34 = sub_1C10BEA98(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8]);
  v77 = WitnessTable;
  v78 = v34;
  v35 = swift_getWitnessTable();
  v36 = v54;
  sub_1C1264F50();
  (*(v57 + 8))(v33, v18);
  v75 = v35;
  v76 = MEMORY[0x1E697E5C0];
  v37 = v55;
  v63 = swift_getWitnessTable();
  v38 = v36;
  sub_1C0FDBA4C(v36, v37, v63);
  v39 = v58;
  v66 = *(v58 + 8);
  (v66)(v38, v37);
  *&v73 = v25;
  v40 = sub_1C110DB44();
  PhotosFavoriteBadge.init(_:tint:)(v40, &v79);
  v71 = v79;
  type metadata accessor for PhotosFavoriteBadge();
  v41 = swift_getWitnessTable();
  sub_1C1264F50();

  swift_unknownObjectRelease();
  v71 = v73;
  v72 = v74;
  v42 = sub_1C1263190();
  v70[2] = v41;
  v70[3] = MEMORY[0x1E697E5C0];
  v43 = swift_getWitnessTable();
  sub_1C0FDBA4C(&v71, v42, v43);

  swift_unknownObjectRelease();
  v44 = v64;
  v45 = v67;
  (*(v39 + 16))(v64, v67, v37);
  v73 = v79;
  v74 = v80;
  *&v71 = v44;
  *(&v71 + 1) = &v73;
  swift_unknownObjectRetain();

  v70[0] = v37;
  v70[1] = v42;
  v68 = v63;
  v69 = v43;
  sub_1C119EE80(&v71, 2, v70);

  swift_unknownObjectRelease();
  v46 = v66;
  (v66)(v45, v37);

  swift_unknownObjectRelease();
  return v46(v44, v37);
}

uint64_t sub_1C10BD784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 120);
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
    sub_1C10AFFB4(v17);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosMemoryCell<>.init(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PhotosAssetView();
  v11 = type metadata accessor for PhotosMemoryCellTextOverlayView();
  v12 = sub_1C10BEA98(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView);
  OUTLINED_FUNCTION_9_18();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_unknownObjectRetain();
  *&v19 = a4;
  *(&v19 + 1) = v12;
  *&v18 = a2;
  *(&v18 + 1) = a3;
  *&v17 = v11;
  *(&v17 + 1) = MEMORY[0x1E6981E70];
  *&v16 = a1;
  *(&v16 + 1) = v10;
  PhotosMemoryCell.init(_:canToggleFavorite:content:titleAndSubtitleView:bottomTrailingAccessoryView:)(v14, 1, sub_1C10BDDA0, sub_1C10BDF3C, sub_1C10BDF6C, a5, v16, v17, v18, v19, WitnessTable, MEMORY[0x1E6981E60]);
  return swift_unknownObjectRelease();
}

double sub_1C10BDC48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v12[1] = a1;
  (*(*(a3 + 8) + 72))(v12, a2);
  v5 = v12[0];
  v6 = sub_1C1200D04();
  [v6 setNetworkAccessAllowed_];
  *(a4 + 152) = swift_getKeyPath();
  *(a4 + 160) = 0;
  v7 = type metadata accessor for PhotosAssetView();
  v8 = v7[12];
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v9 = a4 + v7[13];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a4 + v7[14];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *a4 = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 68) = 256;
  *(a4 + 52) = 0;
  *(a4 + 60) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 1;
  *(a4 + 88) = v5;
  *(a4 + 96) = 0;
  *(a4 + 104) = v6;
  result = 0.0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 2;
  return result;
}

uint64_t sub_1C10BDDB8(uint64_t a1)
{
  v2 = type metadata accessor for PhotosMemoryCellTextOverlayView();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v13 = a1;
  swift_unknownObjectRetain();
  PhotosMemoryCellTextOverlayView.init(collection:titleLookProducer:)(&v13, 0, 0, v5);
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v5, v2, WitnessTable);
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_1C0FDBA4C(v8, v2, WitnessTable);
  return (v10)(v8, v2);
}

uint64_t PhotosMemoryCell<>.init(_:canToggleFavorite:content:)@<X0>(char a1@<W1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __int128 a8)
{
  v13 = type metadata accessor for PhotosMemoryCellTextOverlayView();
  OUTLINED_FUNCTION_9_18();
  WitnessTable = swift_getWitnessTable();
  v15 = swift_unknownObjectRetain();
  *&v19 = a5;
  *(&v19 + 1) = a6;
  *&v18 = v13;
  *(&v18 + 1) = MEMORY[0x1E6981E70];
  *&v17 = a3;
  *(&v17 + 1) = a4;
  PhotosMemoryCell.init(_:canToggleFavorite:content:titleAndSubtitleView:bottomTrailingAccessoryView:)(v15, a1, a2, sub_1C10BE23C, sub_1C10BEB5C, a7, v17, v18, v19, a8, WitnessTable, MEMORY[0x1E6981E60]);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C10BE0B8(uint64_t a1)
{
  v2 = type metadata accessor for PhotosMemoryCellTextOverlayView();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v13 = a1;
  swift_unknownObjectRetain();
  PhotosMemoryCellTextOverlayView.init(collection:titleLookProducer:)(&v13, 0, 0, v5);
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v5, v2, WitnessTable);
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_1C0FDBA4C(v8, v2, WitnessTable);
  return (v10)(v8, v2);
}

void sub_1C10BE2AC()
{
  sub_1C10BE984(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            sub_1C10BE984(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
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

uint64_t sub_1C10BE3EC(uint64_t result, unsigned int a2, void *a3)
{
  v6 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = a3[4];
  v10 = a3[5];
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  if (v8 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v7 + 84);
  }

  v14 = *(v10 - 8);
  v15 = *(v14 + 84);
  if (v13 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v13;
  }

  v17 = *(v7 + 80);
  v18 = *(*(v6 - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(v14 + 80);
  if (v16 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(*(v9 - 8) + 64) + v20;
  if (v21 >= a2)
  {
LABEL_32:
    v30 = ((result + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v16 & 0x80000000) != 0)
    {
      v32 = (v30 + v17 + 8) & ~v17;
      if (v8 != v21)
      {
        v32 = (v32 + v18 + v19) & ~v19;
        if (v12 == v21)
        {
          v8 = v12;
          v6 = v9;
        }

        else
        {
          v32 = (v22 + v32) & ~v20;
          v8 = v15;
          v6 = v10;
        }
      }

      return __swift_getEnumTagSinglePayload(v32, v8, v6);
    }

    else
    {
      v31 = *v30;
      if (*v30 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }
  }

  else
  {
    v23 = ((((v22 + ((v18 + v19 + ((v17 + 24) & ~v17)) & ~v19)) & ~v20) + *(*(v10 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 217;
    v24 = (a2 - v21 + 255) >> 8;
    if (v23 <= 3)
    {
      v25 = v24 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      LODWORD(v26) = 4;
    }

    else
    {
      LODWORD(v26) = 2;
    }

    if (v25 < 0x100)
    {
      LODWORD(v26) = 1;
    }

    if (v25 >= 2)
    {
      v26 = v26;
    }

    else
    {
      v26 = 0;
    }

    switch(v26)
    {
      case 1:
        v27 = *(result + v23);
        if (!*(result + v23))
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      case 2:
        v27 = *(result + v23);
        if (!*(result + v23))
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v27 = *(result + v23);
        if (!v27)
        {
          goto LABEL_32;
        }

LABEL_28:
        v28 = (v27 - 1) << (8 * (((((v22 + ((v18 + v19 + ((v17 + 24) & ~v17)) & ~v19)) & ~v20) + *(*(v10 - 8) + 64)) & 0xF8) - 39));
        if (v23 <= 3)
        {
          v29 = *result;
        }

        else
        {
          v28 = 0;
          v29 = *result;
        }

        result = v21 + (v29 | v28) + 1;
        break;
      default:
        goto LABEL_32;
    }
  }

  return result;
}

void sub_1C10BE680(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = a4[4];
  v11 = a4[5];
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v9 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  v15 = *(v11 - 8);
  v16 = *(v15 + 84);
  if (v14 <= v16)
  {
    v17 = *(v15 + 84);
  }

  else
  {
    v17 = v14;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v8 + 80);
  v20 = *(*(v7 - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  v23 = *(*(v10 - 8) + 64) + v22;
  v24 = (v23 + ((v20 + v21 + ((v19 + 24) & ~v19)) & ~v21)) & ~v22;
  v25 = *(*(v11 - 8) + 64);
  v26 = ((v24 + v25) & 0xFFFFFFFFFFFFFFF8) + 217;
  if (v18 >= a3)
  {
    v30 = 0;
  }

  else
  {
    v27 = (a3 - v18 + 255) >> 8;
    if (v26 <= 3)
    {
      v28 = v27 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  if (v18 >= a2)
  {
    v33 = ~v22;
    switch(v30)
    {
      case 1:
        a1[v26] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 2:
        *&a1[v26] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 3:
LABEL_54:
        __break(1u);
        break;
      case 4:
        *&a1[v26] = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (a2)
        {
LABEL_37:
          v34 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v17 & 0x80000000) != 0)
          {
            v36 = (v34 + v19 + 8) & ~v19;
            if (v9 != v18)
            {
              v36 = (v36 + v20 + v21) & ~v21;
              if (v13 == v18)
              {
                v9 = v13;
                v7 = v10;
              }

              else
              {
                v36 = (v23 + v36) & v33;
                v9 = v16;
                v7 = v11;
              }
            }

            __swift_storeEnumTagSinglePayload(v36, a2, v9, v7);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v35 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v35 = (a2 - 1);
            }

            *v34 = v35;
          }
        }

        break;
    }
  }

  else
  {
    v31 = ~v18 + a2;
    bzero(a1, ((v24 + v25) & 0xFFFFFFFFFFFFFFF8) + 217);
    if (v26 <= 3)
    {
      v32 = (v31 >> 8) + 1;
    }

    else
    {
      v32 = 1;
    }

    if (v26 > 3)
    {
      *a1 = v31;
    }

    else
    {
      *a1 = v31;
    }

    switch(v30)
    {
      case 1:
        a1[v26] = v32;
        break;
      case 2:
        *&a1[v26] = v32;
        break;
      case 3:
        goto LABEL_54;
      case 4:
        *&a1[v26] = v32;
        break;
      default:
        return;
    }
  }
}

void sub_1C10BE984(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C10BEA98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PhotosFeaturedCollectionCell.init(_:keyAssets:maxItems:aspectRatio:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(a5, __src, 0xD1uLL);
  sub_1C1265410();
  *(a5 + 256) = v15;
  *(a5 + 264) = v16;
  sub_1C1265410();
  *(a5 + 272) = v15;
  *(a5 + 280) = v16;
  *(a5 + 288) = xmmword_1C12B2170;
  *(a5 + 304) = 0x4020000000000000;
  *(a5 + 216) = a1;
  *(a5 + 224) = a2;
  *(a5 + 232) = a3;
  *(a5 + 248) = a4;

  v13 = sub_1C10BEC78(v12, a4);

  *(a5 + 240) = v13;
  *(a5 + 312) = a6;
  return result;
}

unint64_t sub_1C10BEC78(unint64_t result, uint64_t a2)
{
  v3 = result;
  v7 = MEMORY[0x1E69E7CC0];
  if (!result)
  {
    v4 = 0;
    if (a2 < 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
LABEL_6:
      if (!a2)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v5 = 0;
      while (!v3 || v5 >= v4)
      {
LABEL_13:
        v6 = swift_unknownObjectRetain();
        MEMORY[0x1C68EF9D0](v6);
        if (*(v7 + 16) >= *(v7 + 24) >> 1)
        {
          sub_1C12660F0();
        }

        ++v5;
        sub_1C1266160();
        swift_unknownObjectRelease();
        if (a2 == v5)
        {
          return v7;
        }
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F02D0](v5, v3);
        goto LABEL_13;
      }

      if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_20:
      result = sub_1C1266BB0();
      v4 = result;
      if (a2 < 0)
      {
        goto LABEL_21;
      }
    }

    swift_unknownObjectRetain();
    goto LABEL_13;
  }

  if (result >> 62)
  {
    goto LABEL_20;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C10BEDD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE931E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - v3;
  v5 = type metadata accessor for PhotosAssetView();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    v8 = sub_1C1200D04();
    [v8 setNetworkAccessAllowed_];
    *(v7 + 19) = swift_getKeyPath();
    v7[160] = 0;
    v9 = v5[12];
    *&v7[v9] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
    swift_storeEnumTagMultiPayload();
    v10 = &v7[v5[13]];
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    v11 = &v7[v5[14]];
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    *v7 = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    v7[48] = 1;
    v7[8] = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 34) = 256;
    *(v7 + 52) = 0;
    *(v7 + 60) = 0;
    *(v7 + 9) = 0;
    v7[80] = 1;
    *(v7 + 11) = a1;
    *(v7 + 12) = 0;
    *(v7 + 13) = v8;
    *(v7 + 7) = 0u;
    *(v7 + 8) = 0u;
    v7[144] = 2;
    sub_1C10C1254(v7, v4, type metadata accessor for PhotosAssetView);
    swift_storeEnumTagMultiPayload();
    sub_1C0FF746C();
    sub_1C1263C20();
    return sub_1C10C12B4(v7, type metadata accessor for PhotosAssetView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1C0FF746C();
    return sub_1C1263C20();
  }
}

uint64_t PhotosFeaturedCollectionCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v32 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v30 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1C12641D0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930E0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930E8);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  memcpy(v35, v2, 0x140uLL);
  *v14 = sub_1C1263AA0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930F0);
  sub_1C10BF48C(v35, &v14[*(v20 + 44)]);
  sub_1C12641B0();
  v21 = sub_1C0FDB6D4(&qword_1EBE930F8, &qword_1EBE930E0);
  sub_1C1264D50();
  (*(v7 + 8))(v10, v29);
  sub_1C0FD1A5C(v14, &qword_1EBE930E0);
  v22 = v28;
  sub_1C1262FF0();
  v33 = v11;
  v34 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v31;
  v24 = v27;
  sub_1C1264B20();
  (*(v30 + 8))(v22, v32);
  (*(v16 + 8))(v19, v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93100);
  *(v23 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1C10BF48C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93110);
  MEMORY[0x1EEE9AC00](v49);
  v4 = &v47 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93118);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v47 - v9;
  v10 = sub_1C1265960();
  v53 = v11;
  v54 = v10;
  sub_1C10BF924(a1, v58);
  memcpy(v59, v58, sizeof(v59));
  memcpy(v60, v58, sizeof(v60));
  sub_1C0FDB800(v59, v57, &unk_1EBE93120);
  sub_1C0FD1A5C(v60, &unk_1EBE93120);
  memcpy(v61, v59, sizeof(v61));
  if (a1[28])
  {
    v12 = a1[27];
    v13 = a1[28];
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v58[0] = v12;
  v58[1] = v13;
  sub_1C0FDB9AC();

  v14 = sub_1C12648F0();
  v16 = v15;
  v18 = v17;
  sub_1C1264510();
  v19 = sub_1C1264870();
  v21 = v20;
  v23 = v22;
  v48 = v24;

  sub_1C0FDB8E8(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v26 = &v4[*(v49 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130) + 28);
  v28 = *MEMORY[0x1E6980FA8];
  v29 = sub_1C1264830();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  *v4 = v19;
  *(v4 + 1) = v21;
  v4[16] = v23 & 1;
  *(v4 + 3) = v48;
  *(v4 + 4) = KeyPath;
  *(v4 + 5) = 2;
  v4[48] = 0;
  LOBYTE(KeyPath) = sub_1C1264470();
  sub_1C12628A0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v50;
  sub_1C0FDB71C(v4, v50, &qword_1EBE93110);
  v39 = v52;
  v40 = v38 + *(v51 + 36);
  *v40 = KeyPath;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  sub_1C0FDB71C(v38, v39, &qword_1EBE93118);
  v41 = v55;
  sub_1C0FDB800(v39, v55, &qword_1EBE93118);
  v43 = v53;
  v42 = v54;
  v57[0] = v54;
  v57[1] = v53;
  memcpy(&v57[2], v61, 0xA0uLL);
  v44 = v56;
  memcpy(v56, v57, 0xB0uLL);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93138);
  sub_1C0FDB800(v41, v44 + *(v45 + 48), &qword_1EBE93118);
  sub_1C0FDB800(v57, v58, &qword_1EBE93140);
  sub_1C0FD1A5C(v39, &qword_1EBE93118);
  sub_1C0FD1A5C(v41, &qword_1EBE93118);
  v58[0] = v42;
  v58[1] = v43;
  memcpy(&v58[2], v61, 0xA0uLL);
  return sub_1C0FD1A5C(v58, &qword_1EBE93140);
}

uint64_t sub_1C10BF924@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C12659A0();
  v6 = v5;
  v7 = swift_allocObject();
  memcpy((v7 + 16), a1, 0x140uLL);
  v8 = a1[39];
  sub_1C10C0E7C(a1, __src);
  v9 = sub_1C1263AA0();
  v11[0] = 1;
  sub_1C10C0A80(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  sub_1C0FDB800(__dst, v17, &qword_1EBE93148);
  sub_1C0FD1A5C(v16, &qword_1EBE93148);
  memcpy(&v14[7], __dst, 0x58uLL);
  v12[118] = 0;
  v17[0] = v9;
  v17[1] = 0;
  LOBYTE(v17[2]) = 1;
  memcpy(&v17[2] + 1, v14, 0x5FuLL);
  memcpy(&v12[6], v17, 0x70uLL);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = sub_1C10C0E74;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 41) = 1;
  memcpy((a2 + 42), v12, 0x76uLL);
  __src[0] = v9;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v14, 0x5FuLL);

  sub_1C0FDB800(v17, v11, &unk_1EBE93150);
  sub_1C0FD1A5C(__src, &unk_1EBE93150);
}

void sub_1C10BFB08(uint64_t a1, void *a2)
{
  v4 = sub_1C1262D60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(a2[30] + 16);
  if (v7)
  {
    v11[40] = 0;
    v11[41] = v7 - 1;
    swift_getKeyPath();
    (*(v5 + 16))(&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v8 = (*(v5 + 80) + 336) & ~*(v5 + 80);
    v9 = swift_allocObject();
    memcpy((v9 + 16), a2, 0x140uLL);
    (*(v5 + 32))(v9 + v8, &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    sub_1C10C0E7C(a2, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93160);
    sub_1C10C0F38();
    sub_1C10C0FC4();
    sub_1C1265680();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C10BFCF8@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a3;
  v9 = sub_1C1262D60();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v100 = v11;
  v102 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v12);
  v90 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931A0);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v83 - v14;
  v15 = sub_1C12637E0();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931A8);
  MEMORY[0x1EEE9AC00](v17);
  *&v103 = &v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B0);
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v83 - v20;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93198);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v83 - v21;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93188);
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v83 - v22;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93160);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v83 - v23;
  v24 = *a1;
  memcpy(v115, a2, 0x140uLL);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v86 = v10;
  v87 = v9;
  v25 = *(a2[30] + 16);
  if (v25 <= v24)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v84 = v19;
  v85 = a4;
  v26 = v12;
  v105 = a2;
  v27 = swift_unknownObjectRetain();
  v28 = v103;
  sub_1C10BEDD8(v27);
  swift_unknownObjectRelease();
  *v115 = *(v105 + 16);
  v4 = v105[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  v5 = v24 / (v25 - 1);
  memcpy(v115, v105, 0x140uLL);
  sub_1C10BF054();
  sub_1C12659A0();
  v29 = v105;
  sub_1C1262C80();
  v30 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931C0) + 36));
  v31 = *&v115[43];
  *v30 = *&v115[41];
  v30[1] = v31;
  v30[2] = *&v115[45];
  *(v28 + *(v17 + 36)) = (v25 - v24);
  memcpy(v116, v29, 0xD1uLL);
  memcpy(v117, v29, sizeof(v117));
  memcpy(v118, v29, 0xD1uLL);
  if (sub_1C100D688(v118) == 1)
  {
    nullsub_1(v118);
    memcpy(v115, v117, 0xD1uLL);
    v32 = nullsub_1(v115);
    memcpy(v114, v32, sizeof(v114));
    sub_1C0FDB800(v116, v113, &qword_1EBE92A28);
  }

  else
  {
    nullsub_1(v118);
    memcpy(v115, v117, 0xD1uLL);
    nullsub_1(v115);
    sub_1C0FDB800(v116, v113, &qword_1EBE92A28);
    sub_1C1266420();
    v33 = sub_1C1264410();
    sub_1C1262620();

    v34 = v93;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v116, &qword_1EBE92A28);
    (*(v94 + 8))(v34, v95);
  }

  v12 = v26;
  memcpy(v108, v114, sizeof(v108));
  memcpy(v113, &v114[40], 0xA8uLL);
  sub_1C100D690(v108, v115);
  if (qword_1EDE82B00 != -1)
  {
    goto LABEL_13;
  }

LABEL_7:
  v35 = qword_1EDE82B08;
  v36 = qword_1EDE82B10;
  v37 = xmmword_1EDE82B18;
  v38 = qword_1EDE82B28;

  sub_1C100C7D0(v108);

  v109[0] = v35;
  v109[1] = v36;
  v110 = v37;
  v111 = v38;
  memcpy(v112, v113, sizeof(v112));
  v39 = v89;
  v40 = &v89[*(v88 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE92EC0);
  sub_1C12633B0();
  *v40 = swift_getKeyPath();
  v41 = v103;
  sub_1C0FDB800(v103, v39, &qword_1EBE931A8);
  v42 = *(v12 + 20);
  v43 = *MEMORY[0x1E697F468];
  v44 = sub_1C12639D0();
  v45 = v90;
  (*(*(v44 - 8) + 104))(v90 + v42, v43, v44);
  *v45 = v35;
  v45[1] = v35;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931C8);
  v47 = v104;
  v48 = v104 + *(v46 + 36);
  v49 = MEMORY[0x1E697EAF0];
  sub_1C10C1254(v45, v48, MEMORY[0x1E697EAF0]);
  *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40) + 36)) = 256;
  sub_1C0FDB800(v39, v47, &qword_1EBE931A0);
  v50 = sub_1C12659A0();
  v52 = v51;
  v53 = v47 + *(v84 + 36);
  sub_1C10C1254(v45, v53, v49);

  sub_1C100C7D0(v109);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91748) + 36));
  *v54 = v36;
  v54[1] = v37;
  v54[2] = 0;
  v54[3] = 0;
  v55 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE931D0) + 36));
  *v55 = *(&v37 + 1);
  v55[1] = v38;
  sub_1C0FD1A5C(v39, &qword_1EBE931A0);
  sub_1C0FD1A5C(v41, &qword_1EBE931A8);
  v56 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE92ED0) + 36));
  *v56 = v50;
  v56[1] = v52;
  sub_1C10C12B4(v45, v49);
  memcpy(v113, v117, 0xD1uLL);
  if (sub_1C100D688(v113) == 1)
  {
    nullsub_1(v113);
    memcpy(v115, v117, 0xD1uLL);
    v57 = nullsub_1(v115);
    memcpy(v107, v57, sizeof(v107));
    sub_1C0FDB800(v116, v106, &qword_1EBE92A28);
  }

  else
  {
    nullsub_1(v113);
    memcpy(v115, v117, 0xD1uLL);
    nullsub_1(v115);
    sub_1C0FDB800(v116, v106, &qword_1EBE92A28);
    sub_1C1266420();
    v58 = sub_1C1264410();
    sub_1C1262620();

    v59 = v93;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v116, &qword_1EBE92A28);
    (*(v94 + 8))(v59, v95);
  }

  v60 = v85;
  v61 = v86;
  v62 = v87;
  memcpy(v106, v107, sizeof(v106));
  v63 = v106[0];
  v103 = v106[1];
  v64 = *&v106[2];

  sub_1C100C7D0(v106);
  v65 = v104;
  v66 = v91;
  sub_1C0FDB800(v104, v91, &qword_1EBE931B0);
  v67 = v92;
  *(v66 + *(v92 + 36)) = 2;
  *(v66 + v67[10]) = 2;
  v68 = v66 + v67[11];
  *v68 = v63;
  *(v68 + 16) = v103;
  *(v68 + 32) = v64;
  *(v66 + v67[12]) = 0;
  *(v66 + v67[13]) = 0;
  v69 = v66 + v67[14];
  *v69 = swift_getKeyPath();
  *(v69 + 32) = 0;
  v70 = v66 + v67[15];
  *v70 = swift_getKeyPath();
  *(v70 + 8) = 0u;
  *(v70 + 24) = 0u;
  *(v70 + 33) = 0u;
  v71 = v66 + v67[16];
  *v71 = swift_getKeyPath();
  *(v71 + 8) = 0;
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();
  sub_1C12628D0();
  sub_1C0FD1A5C(v65, &qword_1EBE931B0);
  v72 = v5 * v4;
  v73 = v105;
  v74 = (1.0 - v5) * v105[36];
  v75 = v99;
  sub_1C0FDB71C(v66, v99, &qword_1EBE93198);
  v76 = (v75 + *(v96 + 36));
  *v76 = v72;
  v76[1] = v74;
  v77 = v102;
  (*(v61 + 16))(v102, v101, v62);
  v78 = (*(v61 + 80) + 336) & ~*(v61 + 80);
  v79 = swift_allocObject();
  memcpy((v79 + 16), v73, 0x140uLL);
  (*(v61 + 32))(v79 + v78, v77, v62);
  v80 = v98;
  sub_1C0FDB71C(v75, v98, &qword_1EBE93188);
  v81 = (v80 + *(v97 + 36));
  *v81 = sub_1C10C11F0;
  v81[1] = v79;
  v81[2] = 0;
  v81[3] = 0;
  sub_1C0FDB71C(v80, v60, &qword_1EBE93160);
  return sub_1C10C0E7C(v73, v115);
}

uint64_t sub_1C10C09EC()
{
  sub_1C1262D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265430();
  sub_1C1262D40();
  return sub_1C1265430();
}

double sub_1C10C0A80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDE833C0 != -1)
  {
    swift_once();
  }

  v15 = xmmword_1C12A4AC0;
  v16 = 262912;
  v17 = 0;
  v18 = 65280;

  sub_1C12192C4(&v15);

  v4 = sub_1C12652F0();
  v5 = sub_1C1265190();
  KeyPath = swift_getKeyPath();
  v7 = sub_1C1264470();
  sub_1C12628A0();
  LOBYTE(v15) = 0;
  v8 = *(a1 + 288);
  v9 = -0.0 / (*(*(a1 + 240) + 16) - 1) + 1.0;
  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
  *(a2 + 64) = 0;
  result = -(v8 * v9);
  *(a2 + 72) = 0;
  *(a2 + 80) = result;
  return result;
}

uint64_t sub_1C10C0BD4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 240);
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

uint64_t sub_1C10C0C14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 240) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C10C0CB8()
{
  result = qword_1EBE93108;
  if (!qword_1EBE93108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE930E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE930E0);
    sub_1C0FDB6D4(&qword_1EBE930F8, &qword_1EBE930E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&unk_1EDE7BB80, &qword_1EBE90C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93108);
  }

  return result;
}

double sub_1C10C0E24@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 57) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_1C10C0EB4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1C1262D60() - 8);
  v6 = v2 + ((*(v5 + 80) + 336) & ~*(v5 + 80));

  return sub_1C10BFCF8(a1, (v2 + 16), v6, a2);
}

unint64_t sub_1C10C0F38()
{
  result = qword_1EBE93168;
  if (!qword_1EBE93168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91428);
    sub_1C100F024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93168);
  }

  return result;
}

unint64_t sub_1C10C0FC4()
{
  result = qword_1EBE93178;
  if (!qword_1EBE93178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93160);
    sub_1C10C1050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93178);
  }

  return result;
}

unint64_t sub_1C10C1050()
{
  result = qword_1EBE93180;
  if (!qword_1EBE93180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93188);
    sub_1C0FDB6D4(&qword_1EBE93190, &qword_1EBE93198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93180);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_1C1262D60();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 336) & ~*(v2 + 80);
  OUTLINED_FUNCTION_2_28(*(v0 + 16), *(v0 + 24));

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C10C11F0()
{
  sub_1C1262D60();

  return sub_1C10C09EC();
}

uint64_t sub_1C10C1254(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C10C12B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t PhotosReadableWidthView.init(readableWidthEnabled:maxWidth:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  if ((a1 & 1) == 0)
  {
    a2 = 0;
  }

  v7 = 104.0;
  if ((a1 & 1 & a3) == 0)
  {
    v7 = 0.0;
  }

  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1 | ((a1 & 1) == 0);
  *(a5 + 24) = v7;
  type metadata accessor for PhotosReadableWidthView();
  return a4();
}

uint64_t PhotosReadableWidthView.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1C1263190();
  OUTLINED_FUNCTION_2_29();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  v4 = sub_1C12654C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  sub_1C1012734();
  sub_1C12654B0();
  OUTLINED_FUNCTION_1_11();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_1C0FDBA4C(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_1C10C1588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = sub_1C1263190();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v17 = *(a1 + 24);
  type metadata accessor for PhotosReadableWidthView();
  sub_1C10A0734();
  sub_1C1264EA0();
  v27[3] = a2;
  v27[4] = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  v14 = v17;
  v25 = v17;
  v26 = 0;
  v27[0] = &v25;
  (*(v6 + 16))(v8, v11, v5);
  v23 = v14;
  v24 = 0;
  v27[1] = v8;
  v27[2] = &v23;
  v22[0] = MEMORY[0x1E6981840];
  v22[1] = v5;
  v22[2] = MEMORY[0x1E6981840];
  v19 = MEMORY[0x1E6981838];
  v20 = WitnessTable;
  v21 = MEMORY[0x1E6981838];
  sub_1C119EE80(v27, 3, v22);
  v13(v11, v5);
  return (v13)(v8, v5);
}

void sub_1C10C1850()
{
  sub_1C10C1CC4();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C10C18F0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFE)
  {
    v8 = 254;
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

  v10 = ((v7 + 32) & ~v7) + *(*(v4 - 8) + 64);
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
      if (v6 > 0xFE)
      {
        return __swift_getEnumTagSinglePayload(((a1 & 0xFFFFFFFFFFFFFFF8) + v7 + 32) & ~v7, v6, v4);
      }

      v16 = *a1;
      v17 = v16 >= 2;
      v18 = (v16 + 2147483646) & 0x7FFFFFFF;
      if (v17)
      {
        return (v18 + 1);
      }

      else
      {
        return 0;
      }
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

void sub_1C10C1A7C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 32) & ~v10) + *(*(v6 - 8) + 64);
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
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0xFE)
          {
            v21 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 32) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else
          {
            *a1 = a2 + 1;
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
          *(a1 + 2) = BYTE2(v20);
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
        *(a1 + v11) = v17;
        break;
      case 2:
        *(a1 + v11) = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1C10C1CC4()
{
  if (!qword_1EDE7B4C0)
  {
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE7B4C0);
    }
  }
}

uint64_t PhotosCellShape.init(inset:cornerRadius:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2 & 1;
  return result;
}

uint64_t View.photosContentShape(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1263420();
  OUTLINED_FUNCTION_3();
  (*(v14 + 16))(v13, a1);
  v15 = v10[6];
  v26[0] = swift_getKeyPath();
  sub_1C0FFCFE4(v26);
  memcpy(&v13[v15], v26, 0xD1uLL);
  v16 = &v13[v10[7]];
  v21[1] = 0;
  v22 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B58);
  sub_1C1265410();
  v17 = v24;
  v18 = v25;
  *v16 = v23;
  v16[8] = v17;
  *(v16 + 2) = v18;
  v19 = &v13[v10[5]];
  *v19 = a2;
  *(v19 + 1) = a3;

  MEMORY[0x1C68EE920](v13, a4, v10, a5);
  return sub_1C10C1FA8(v13);
}

uint64_t type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier()
{
  result = qword_1EDE78E88;
  if (!qword_1EDE78E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C10C1F40(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_1C100D690(__dst, &v3);
  return EnvironmentValues.photosCellSpecs.setter(__srca);
}

uint64_t sub_1C10C1FA8(uint64_t a1)
{
  v2 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosCellShape.fittingAspectRatio.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

double PhotosCellShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_1C12639D0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v16 = *(v5 + 16);
  v17 = *(v5 + 24);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v25 = CGRectInset(v24, v15, v15);
  if ((v17 & 1) == 0)
  {
    v25.origin.x = MEMORY[0x1C68F0CD0](v16, a4, a5, *&v25.size.height);
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E697F468], v11, v25.origin, *&v25.origin.y, v25.size, *&v25.size.height);
  sub_1C1264770();
  result = *&v21;
  v19 = v22;
  *a1 = v21;
  *(a1 + 16) = v19;
  *(a1 + 32) = v23;
  return result;
}

uint64_t PhotosCellShape.layoutDirectionBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6980210];
  sub_1C1263F90();
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

double PhotosCellShape.animatableData.getter()
{
  sub_1C10C22F4();
  sub_1C10C2348();
  sub_1C1262810();
  return v1;
}

unint64_t sub_1C10C22F4()
{
  result = qword_1EBE93278;
  if (!qword_1EBE93278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93278);
  }

  return result;
}

unint64_t sub_1C10C2348()
{
  result = qword_1EBE93280;
  if (!qword_1EBE93280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93280);
  }

  return result;
}

uint64_t PhotosCellShape.animatableData.setter()
{
  sub_1C10C22F4();
  sub_1C10C2348();
  return sub_1C1262820();
}

void (*PhotosCellShape.animatableData.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v3[1] = *(v1 + 8);
  v3[3] = sub_1C10C22F4();
  v3[4] = sub_1C10C2348();
  sub_1C1262810();
  return sub_1C10C24CC;
}

void sub_1C10C24CC(void **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  sub_1C1262820();

  free(v1);
}

double sub_1C10C2524@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  PhotosCellShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1C10C25CC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PhotosCellShape.animatableData.modify(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C10C262C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10C3468();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C10C2690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10C3468();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C10C26F4(uint64_t a1)
{
  v2 = sub_1C10C3468();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t static PhotosCellPreviewShapeAspectRatioPreferenceKey.defaultValue.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  qword_1EBE93268 = a1;
  byte_1EBE93270 = a2 & 1;
  return result;
}

uint64_t sub_1C10C283C@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v3 = byte_1EBE93270;
  *a1 = qword_1EBE93268;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1C10C2890(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = swift_beginAccess();
  qword_1EBE93268 = v1;
  byte_1EBE93270 = v2;
  return result;
}

void *sub_1C10C28E8(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 8) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t static PhotosCellPreviewShapeAspectRatioPreferenceKey.reduce(value:nextValue:)(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 8) == 1)
  {
    result = a2();
  }

  else
  {
    v4 = 0;
    result = *a1;
  }

  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C10C299C()
{
  result = qword_1EDE7E948[0];
  if (!qword_1EDE7E948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7E948);
  }

  return result;
}

unint64_t sub_1C10C29F4()
{
  result = qword_1EDE7E940;
  if (!qword_1EDE7E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7E940);
  }

  return result;
}

uint64_t sub_1C10C2A90@<X0>(uint64_t a1@<X8>)
{
  result = static PhotosCellPreviewShapeAspectRatioPreferenceKey.defaultValue.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C10C2AC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C10C2AE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCellPreviewShapeAspectRatioPreferenceKey(_BYTE *result, int a2, int a3)
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

void sub_1C10C2BF8()
{
  sub_1C1263420();
  if (v0 <= 0x3F)
  {
    sub_1C1007F88();
    if (v1 <= 0x3F)
    {
      sub_1C107032C();
      if (v2 <= 0x3F)
      {
        sub_1C10C2CAC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C10C2CAC()
{
  if (!qword_1EDE76C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B58);
    v0 = sub_1C1265450();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76C90);
    }
  }
}

uint64_t sub_1C10C2D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a1;
  v5 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier();
  v42 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v6;
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C12637E0();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93298);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = v5[6];
  v13 = *(v3 + v5[5]);
  memcpy(v53, (v3 + v12), 0xD1uLL);
  memcpy(v54, (v3 + v12), 0xD1uLL);
  if (sub_1C100D688(v54) == 1)
  {
    nullsub_1(v54);
    memcpy(v50, v53, 0xD1uLL);
    v14 = nullsub_1(v50);
    memcpy(v52, v14, sizeof(v52));
    memcpy(v51, v53, 0xD1uLL);
    v15 = nullsub_1(v51);
    sub_1C100D690(v15, &v46);
  }

  else
  {
    nullsub_1(v54);
    memcpy(v50, v53, 0xD1uLL);
    v39 = *nullsub_1(v50);
    memcpy(v51, v53, 0xD1uLL);
    nullsub_1(v51);

    sub_1C1266420();
    v38 = v7;
    v16 = a2;
    v17 = sub_1C1264410();
    sub_1C1262620();

    a2 = v16;
    v18 = v40;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C10AFFB4(v53);
    (*(v41 + 8))(v18, v38);
  }

  memcpy(v50, v52, 0xD0uLL);
  v19 = v3 + v5[7];
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v51[0] = v20;
  LOBYTE(v51[1]) = v21;
  v51[2] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B78);
  sub_1C1265420();
  v13(&v46, v50, v46, v47);
  memcpy(v51, v50, 0xD0uLL);
  sub_1C100C7D0(v51);
  v23 = v46;
  v24 = v47;
  v25 = v48;
  v26 = v49;
  v27 = &v11[*(v9 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932A0) + 40);
  v29 = sub_1C1263420();
  (*(*(v29 - 8) + 16))(&v27[v28], v3, v29);
  *v27 = v23;
  *(v27 + 1) = v24;
  *(v27 + 2) = v25;
  v27[24] = v26;
  v27[25] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932A8);
  (*(*(v30 - 8) + 16))(v11, v45, v30);
  v31 = v3;
  v32 = v44;
  sub_1C10C32C0(v31, v44);
  v33 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v34 = swift_allocObject();
  sub_1C10C3324(v32, v34 + v33);
  sub_1C10C33F8(v11, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932B0);
  v36 = (a2 + *(result + 36));
  *v36 = sub_1C10C3388;
  v36[1] = v34;
  return result;
}

uint64_t sub_1C10C3230()
{
  type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B78);
  return sub_1C1265430();
}

uint64_t sub_1C10C32C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10C3324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10C3388()
{
  type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier();

  return sub_1C10C3230();
}

uint64_t sub_1C10C33F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10C3468()
{
  result = qword_1EBE932B8;
  if (!qword_1EBE932B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE932B8);
  }

  return result;
}

unint64_t sub_1C10C34BC()
{
  result = qword_1EDE77248;
  if (!qword_1EDE77248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE932B0);
    sub_1C10C3574();
    sub_1C0FDB6D4(&qword_1EDE7BA08, &qword_1EBE932C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77248);
  }

  return result;
}

unint64_t sub_1C10C3574()
{
  result = qword_1EDE77410;
  if (!qword_1EDE77410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93298);
    sub_1C0FDB6D4(&qword_1EDE76DD0, &qword_1EBE932A8);
    sub_1C0FDB6D4(&unk_1EDE7BA40, &qword_1EBE932A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77410);
  }

  return result;
}

unint64_t sub_1C10C3678()
{
  result = qword_1EDE81300[0];
  if (!qword_1EDE81300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE81300);
  }

  return result;
}

uint64_t EnvironmentValues.photosCellSpecs.getter()
{
  sub_1C10C373C();

  return sub_1C12637F0();
}

unint64_t sub_1C10C373C()
{
  result = qword_1EDE82A10;
  if (!qword_1EDE82A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82A10);
  }

  return result;
}

uint64_t EnvironmentValues.photosCellSpecs.setter(void *__src)
{
  memcpy(v2, __src, sizeof(v2));
  sub_1C10C373C();
  return sub_1C1263800();
}

void sub_1C10C37D8()
{
  v1 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  v8 = *(v0 + 24) >> 62;
  if (!v8)
  {

    goto LABEL_8;
  }

  if (v8 == 1)
  {
    (*(v3 + 104))(v7, *MEMORY[0x1E697DBB8], v1);

    sub_1C12629D0();
    v9 = OUTLINED_FUNCTION_16_14();
    v10(v9);

LABEL_8:
    OUTLINED_FUNCTION_22_0();
    return;
  }

  OUTLINED_FUNCTION_22_0();

  sub_1C1265170();
}

unint64_t sub_1C10C39B0()
{
  result = qword_1EDE822B8;
  if (!qword_1EDE822B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE822B8);
  }

  return result;
}

void PhotosCellSpecs.backgroundFillColor(for:isTargeted:)(uint64_t a1, char a2)
{
  v4 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = *(v2 + 152);
  if (*(v2 + 160) & 1) != 0 || (a2)
  {
    if (!(v10 >> 62))
    {

      goto LABEL_10;
    }

    if (v10 >> 62 == 1)
    {
      (*(v6 + 104))(v9 - v8, *MEMORY[0x1E697DBB8], v4);
      v11 = OUTLINED_FUNCTION_2_30();
      sub_1C1012620(v11, v12, v13, v14);

      sub_1C12629D0();
      v15 = OUTLINED_FUNCTION_15_18();
      v16(v15);

      v17 = OUTLINED_FUNCTION_2_30();
      sub_1C1001C84(v17, v18, v19, v20);
LABEL_10:
      OUTLINED_FUNCTION_22_0();
      return;
    }
  }

  OUTLINED_FUNCTION_22_0();

  sub_1C1265170();
}

__n128 PhotosCellSpecs.withoutBorders.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_18_16(a1, a2, a3, a4, a5, a6, a7, a8, v13, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], v16[19], v16[20], v16[21], v16[22], v16[23], v16[24], v16[25], v17[0]);
  OUTLINED_FUNCTION_11_15();
  sub_1C100D690(v17, v16);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDE82B08;
  v10 = qword_1EDE82B10;
  v14 = xmmword_1EDE82B18;
  v11 = qword_1EDE82B28;

  *v8 = v9;
  *(v8 + 8) = v10;
  result = v14;
  *(v8 + 16) = v14;
  *(v8 + 32) = v11;
  return result;
}

uint64_t View.cellStyle(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 16);
  v10 = v6;

  View.photosBorders(_:)(v8, a2, a3);
}

__n128 PhotosCellSpecs.init(borders:padding:thumbnailPadding:height:interItemSpacing:dividerPadding:cornerRadiusForGroup:shadowForGroup:backgroundColor:shouldFillBackground:shouldUseAXLayout:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, double a14@<D7>, __int128 a15, uint64_t a16, uint64_t a17)
{
  v17 = *(a1 + 8);
  v18 = *(a1 + 32);
  v19 = *a2;
  v20 = a2[3];
  *a6 = *a1;
  *(a6 + 8) = v17;
  *(a6 + 16) = *(a1 + 16);
  *(a6 + 32) = v18;
  *(a6 + 40) = a7;
  *(a6 + 48) = a8;
  *(a6 + 56) = a9;
  *(a6 + 64) = a10;
  *(a6 + 72) = a11;
  *(a6 + 80) = a12;
  *(a6 + 88) = a13;
  *(a6 + 96) = a14;
  *(a6 + 104) = a15;
  *(a6 + 120) = a16;
  *(a6 + 168) = a17;
  *(a6 + 176) = v19;
  *(a6 + 184) = *(a2 + 1);
  *(a6 + 200) = v20;
  result = *a3;
  v22 = *(a3 + 16);
  *(a6 + 128) = *a3;
  *(a6 + 144) = v22;
  *(a6 + 160) = a4;
  *(a6 + 161) = a5;
  return result;
}

uint64_t PhotosCellSpecs.borders.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
}

__n128 PhotosCellSpecs.borders.setter(__n128 *a1)
{
  v2 = a1->n128_u64[0];
  v3 = a1->n128_u64[1];
  v6 = a1[1];
  v4 = a1[2].n128_u64[0];

  v1->n128_u64[0] = v2;
  v1->n128_u64[1] = v3;
  result = v6;
  v1[1] = v6;
  v1[2].n128_u64[0] = v4;
  return result;
}

void PhotosCellSpecs.padding.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

void PhotosCellSpecs.thumbnailPadding.setter(double a1, double a2, double a3, double a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = a3;
  v4[12] = a4;
}

uint64_t PhotosCellSpecs.backgroundColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C1012620(v2, v3, v4, v5);
}

__n128 PhotosCellSpecs.backgroundColor.setter(uint64_t a1)
{
  sub_1C1001C84(*(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v4;
  return result;
}

uint64_t PhotosCellSpecs.shadowForGroup.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = *(v1 + 176);
  return OUTLINED_FUNCTION_5_21(a1, v2, *(v1 + 184));
}

__n128 PhotosCellSpecs.shadowForGroup.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_13_15(a1);

  *(v2 + 176) = v1;
  result = v5;
  *(v2 + 184) = v5;
  *(v2 + 200) = v3;
  return result;
}

void static PhotosCellSpecs.BackgroundColor.== infix(_:_:)(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = *(a1 + 24) >> 62;
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 >> 62 == 1)
      {
        v4 = OUTLINED_FUNCTION_3_27();
        sub_1C1012620(v4, v5, v6, v7);
        v8 = OUTLINED_FUNCTION_0_34();
        sub_1C1012620(v8, v9, v10, v11);
        if (sub_1C1265100() & 1) != 0 && (sub_1C1265100() & 1) != 0 && (sub_1C1265100())
        {
          goto LABEL_10;
        }

LABEL_19:
        v38 = OUTLINED_FUNCTION_0_34();
        sub_1C1001C84(v38, v39, v40, v41);
        v42 = OUTLINED_FUNCTION_3_27();
        sub_1C1001C84(v42, v43, v44, v45);
        goto LABEL_20;
      }
    }

    else if (v2 >> 62 == 2 && (a2[1] | *a2 | a2[2]) == 0 && v2 == 0x8000000000000000)
    {
      v46 = OUTLINED_FUNCTION_0_34();
      sub_1C1001C84(v46, v47, v48, v49);
      sub_1C1001C84(0, 0, 0, 0x8000000000000000);
      goto LABEL_20;
    }

LABEL_18:
    v30 = OUTLINED_FUNCTION_3_27();
    sub_1C1012620(v30, v31, v32, v33);
    v34 = OUTLINED_FUNCTION_0_34();
    sub_1C1012620(v34, v35, v36, v37);
    goto LABEL_19;
  }

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  v12 = OUTLINED_FUNCTION_3_27();
  sub_1C1012620(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_0_34();
  sub_1C1012620(v16, v17, v18, v19);
LABEL_10:
  sub_1C1265100();
  v20 = OUTLINED_FUNCTION_0_34();
  sub_1C1001C84(v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_3_27();
  sub_1C1001C84(v24, v25, v26, v27);
LABEL_20:
  OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosCellSpecs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v72[5] = v11;
  v72[6] = v10;
  v72[7] = v9;
  v72[8] = v8;
  v72[9] = v7;
  v72[10] = v6;
  v72[11] = v5;
  v72[12] = v4;
  v72[23] = v2;
  v72[24] = v3;
  v69 = *(a1 + 112);
  v70 = *(a1 + 104);
  v68 = *(a1 + 120);
  v12 = *(a1 + 128);
  v13 = *(a1 + 136);
  v14 = *(a1 + 144);
  v64 = *(a1 + 152);
  v63 = *(a1 + 160);
  v61 = *(a1 + 161);
  v59 = *(a1 + 168);
  v55 = *(a1 + 184);
  v56 = *(a1 + 192);
  v57 = *(a1 + 200);
  v66 = *(a2 + 112);
  v67 = *(a2 + 104);
  v65 = *(a2 + 120);
  v15 = *(a2 + 128);
  v16 = *(a2 + 136);
  v17 = *(a2 + 144);
  v18 = *(a2 + 152);
  v62 = *(a2 + 160);
  v60 = *(a2 + 161);
  v58 = *(a2 + 168);
  v52 = *(a2 + 184);
  v53 = *(a2 + 192);
  v54 = *(a2 + 200);
  v19 = *(a2 + 32);
  v21 = *(a2 + 16);
  v20 = *(a2 + 24);
  v22 = *(a1 + 32);
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);

  v25 = sub_1C1265100();

  result = 0;
  if (v25)
  {
    v27 = v24 == v21 && v23 == v20;
    if (v27 && v22 == v19)
    {
      if (sub_1C1262890())
      {
        v29 = sub_1C1262890();
        result = 0;
        if (v29)
        {
          v30 = v70 == v67 && v69 == v66;
          if (v30 && v68 == v65)
          {
            v72[0] = v12;
            v72[1] = v13;
            v72[2] = v14;
            v72[3] = v64;
            v71[0] = v15;
            v71[1] = v16;
            v71[2] = v17;
            v71[3] = v18;
            v32 = OUTLINED_FUNCTION_17_16();
            sub_1C1012620(v32, v33, v34, v35);
            v36 = OUTLINED_FUNCTION_14_15();
            sub_1C1012620(v36, v37, v38, v39);
            static PhotosCellSpecs.BackgroundColor.== infix(_:_:)(v72, v71);
            v41 = v40;
            v42 = OUTLINED_FUNCTION_14_15();
            sub_1C1001C84(v42, v43, v44, v45);
            v46 = OUTLINED_FUNCTION_17_16();
            sub_1C1001C84(v46, v47, v48, v49);
            result = 0;
            if ((v41 & 1) != 0 && v63 == v62 && v61 == v60 && v59 == v58)
            {

              v50 = sub_1C1265100();

              v51 = v50 & (v55 == v52);
              if (v56 != v53)
              {
                v51 = 0;
              }

              if (v57 == v54)
              {
                return v51;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C10C4520()
{
  if (qword_1EDE82B50 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE82B58;
  v1 = qword_1EDE82B60;
  v2 = unk_1EDE82B68;
  v3 = qword_1EDE82B70;
  v4 = qword_1EDE82B78;

  if (v4 != -1)
  {
    swift_once();
  }

  qword_1EDE82A20 = 0x402E000000000000;
  *algn_1EDE82A28 = v0;
  qword_1EDE82A30 = v1;
  unk_1EDE82A38 = v2;
  qword_1EDE82A40 = v3;
  __asm { FMOV            V1.2D, #12.0 }

  unk_1EDE82A48 = _Q1;
  unk_1EDE82A58 = _Q1;
  __asm { FMOV            V1.2D, #10.0 }

  unk_1EDE82A68 = _Q1;
  unk_1EDE82A78 = _Q1;
  qword_1EDE82A88 = 0x4052000000000000;
  unk_1EDE82A90 = 0;
  qword_1EDE82AC8 = 0;
  unk_1EDE82AD0 = qword_1EDE82B80;
  unk_1EDE82AD8 = *&qword_1EDE82B88;
  qword_1EDE82AE8 = qword_1EDE82B98;
  qword_1EDE82A98 = 0;
  unk_1EDE82AA0 = 0;
  qword_1EDE82AA8 = 0;
  unk_1EDE82AB0 = 0;
  qword_1EDE82AB8 = 0x8000000000000000;
  word_1EDE82AC0 = 1;
}

uint64_t sub_1C10C4648@<X0>(void *a1@<X8>)
{
  if (qword_1EDE82A18 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EDE82A20, sizeof(__dst));
  memcpy(a1, &qword_1EDE82A20, 0xD0uLL);
  return sub_1C100D690(__dst, &v3);
}

uint64_t sub_1C10C46DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C10C56F8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.photosCellSpecs.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x420uLL);
  *a1 = v3;
  v3[130] = v1;
  v3[131] = sub_1C10C373C();
  sub_1C12637F0();
  return sub_1C10C47BC;
}

void sub_1C10C47BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_19_10((v2 + 416));
    OUTLINED_FUNCTION_19_10((v2 + 624));
    sub_1C100D690(v2 + 416, v2 + 832);
    sub_1C1263800();
    OUTLINED_FUNCTION_19_10((v2 + 208));
    sub_1C100C7D0(v2 + 208);
  }

  else
  {
    OUTLINED_FUNCTION_19_10((v2 + 208));
    sub_1C1263800();
  }

  free(v2);
}

uint64_t PhotosCellUIContext.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

double (*PhotosCellSpecs.cornerRadius.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1C10C4940;
}

double sub_1C10C4940(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t PhotosCellSpecs.shadow.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2].n128_f64[0];
  *a1 = v1->n128_u64[1];
  return OUTLINED_FUNCTION_5_21(a1, v2, v1[1]);
}

double sub_1C10C49C0@<D0>(uint64_t a1@<X8>)
{
  PhotosCellSpecs.shadow.getter(&v3);
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = result;
  return result;
}

double sub_1C10C4A0C(uint64_t *a1)
{
  v1 = a1[3];
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = v1;

  *&result = PhotosCellSpecs.shadow.setter(&v3).n128_u64[0];
  return result;
}

__n128 PhotosCellSpecs.shadow.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_13_15(a1);

  v2->n128_u64[1] = v1;
  result = v5;
  v2[1] = v5;
  v2[2].n128_u64[0] = v3;
  return result;
}

void (*PhotosCellSpecs.shadow.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *(v3 + 4) = v1;
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  *v3 = *(v1 + 8);
  *(v3 + 8) = v5;
  *(v3 + 3) = v4;

  return sub_1C10C4B20;
}

void sub_1C10C4B20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = **a1;
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {

    v3[1] = v4;
    v3[2] = v6;
    v3[3] = v5;
    v3[4] = v7;
  }

  else
  {

    v3[1] = v4;
    v3[2] = v6;
    v3[3] = v5;
    v3[4] = v7;
  }

  free(v2);
}

uint64_t PhotosCellSpecs.with(cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  memcpy(__dst, v2, 0xD0uLL);
  OUTLINED_FUNCTION_11_15();
  *a1 = a2;
  return sub_1C100D690(__dst, v6);
}

__n128 PhotosCellSpecs.withoutShadow.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_18_16(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17], v15[18], v15[19], v15[20], v15[21], v15[22], v15[23], v15[24], v15[25], v16[0]);
  OUTLINED_FUNCTION_11_15();
  sub_1C100D690(v16, v15);
  if (qword_1EDE82B78 != -1)
  {
    OUTLINED_FUNCTION_1_26();
  }

  v9 = qword_1EDE82B80;
  v13 = *&qword_1EDE82B88;
  v10 = qword_1EDE82B98;

  v8->n128_u64[1] = v9;
  result = v13;
  v8[1] = v13;
  v8[2].n128_u64[0] = v10;
  return result;
}

double PhotosCellSpecs.includingShadow(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, sizeof(__dst));
  if (a1)
  {
    v7 = *(&__dst[11] + 1);
    v6 = *&__dst[11];
    v9 = *(&__dst[12] + 1);
    v8 = *&__dst[12];
    v19 = __dst[8];
    v20 = __dst[9];
    v10 = *(&__dst[0] + 1);
    v11 = *&__dst[0];
    v13 = *(&__dst[1] + 1);
    v12 = *&__dst[1];
    v14 = *&__dst[2];
    sub_1C100D690(__dst, v21);
  }

  else
  {
    v11 = *&__dst[0];
    v19 = __dst[8];
    v20 = __dst[9];
    v7 = *(&__dst[11] + 1);
    v6 = *&__dst[11];
    v9 = *(&__dst[12] + 1);
    v8 = *&__dst[12];
    sub_1C100D690(__dst, v21);
    if (qword_1EDE82B78 != -1)
    {
      OUTLINED_FUNCTION_1_26();
    }

    v10 = qword_1EDE82B80;
    v12 = qword_1EDE82B88;
    v13 = qword_1EDE82B90;
    v14 = qword_1EDE82B98;
  }

  result = *(&__dst[10] + 1);
  v16 = BYTE1(__dst[10]);
  v17 = __dst[10];
  v18 = *(&__dst[7] + 1);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = *(&__dst[2] + 8);
  *(a2 + 56) = *(&__dst[3] + 8);
  *(a2 + 72) = *(&__dst[4] + 8);
  *(a2 + 88) = *(&__dst[5] + 8);
  *(a2 + 104) = *(&__dst[6] + 8);
  *(a2 + 120) = v18;
  *(a2 + 128) = v19;
  *(a2 + 144) = v20;
  *(a2 + 160) = v17;
  *(a2 + 161) = v16;
  *(a2 + 168) = result;
  *(a2 + 176) = v6;
  *(a2 + 184) = v7;
  *(a2 + 192) = v8;
  *(a2 + 200) = v9;
  return result;
}

uint64_t PhotosCellSpecs.clipShape.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(sub_1C1263320() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1C12639D0();
  result = (*(*(v6 - 8) + 104))(&a1[v4], v5, v6);
  *a1 = v3;
  *(a1 + 1) = v3;
  return result;
}

__n128 static PhotosCellSpecs.defaultSpecs(forPicker:)@<Q0>(uint64_t a1@<X8>)
{
  sub_1C12650F0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v5 = *(v3 + 104);
  v6 = OUTLINED_FUNCTION_8_22();
  v5(v6);
  OUTLINED_FUNCTION_7_21();
  v7 = sub_1C1265240();
  v8 = OUTLINED_FUNCTION_8_22();
  v5(v8);
  OUTLINED_FUNCTION_7_21();
  v9 = sub_1C1265240();
  v10 = OUTLINED_FUNCTION_8_22();
  v5(v10);
  OUTLINED_FUNCTION_7_21();
  v11 = sub_1C1265240();
  if (qword_1EDE82B50 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDE82B58;
  v13 = qword_1EDE82B60;
  v14 = unk_1EDE82B68;
  v15 = qword_1EDE82B70;
  v16 = qword_1EDE7B858;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDE7B860;
  v18 = qword_1EDE82B78;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_1_26();
  }

  v19 = qword_1EDE82B80;
  v28 = *&qword_1EDE82B88;
  v20 = qword_1EDE82B98;

  *a1 = 0x402E000000000000;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  __asm { FMOV            V0.2D, #12.0 }

  *(a1 + 40) = _Q0;
  *(a1 + 56) = _Q0;
  __asm { FMOV            V0.2D, #10.0 }

  *(a1 + 72) = _Q0;
  *(a1 + 88) = _Q0;
  *(a1 + 104) = 0x4052000000000000;
  *(a1 + 112) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = v19;
  result = v28;
  *(a1 + 184) = v28;
  *(a1 + 200) = v20;
  *(a1 + 120) = 0;
  *(a1 + 128) = v17;
  *(a1 + 136) = v11;
  *(a1 + 144) = v7;
  *(a1 + 152) = v9 | 0x4000000000000000;
  *(a1 + 160) = 1;
  return result;
}

uint64_t (*EnvironmentValues.photosIsDragTarget.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C10C39B0();
  sub_1C12637F0();
  OUTLINED_FUNCTION_9_19();
  return sub_1C10C51C8;
}

uint64_t sub_1C10C51F4(void (*a1)(void))
{
  a1();
  sub_1C12637F0();
  return v2;
}

uint64_t (*EnvironmentValues.photosIsDragPreview.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C10C537C();
  sub_1C12637F0();
  OUTLINED_FUNCTION_9_19();
  return sub_1C10C5304;
}

uint64_t (*EnvironmentValues.photosIsFocusableItem.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C10C3678();
  sub_1C12637F0();
  OUTLINED_FUNCTION_9_19();
  return sub_1C10C5370;
}

unint64_t sub_1C10C537C()
{
  result = qword_1EDE81DB0[0];
  if (!qword_1EDE81DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE81DB0);
  }

  return result;
}

unint64_t sub_1C10C53D4()
{
  result = qword_1EBE932C8;
  if (!qword_1EBE932C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE932C8);
  }

  return result;
}

uint64_t sub_1C10C5430(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFFFFFFD && *(a1 + 32))
    {
      v2 = *a1 + 268435453;
    }

    else
    {
      v3 = *(a1 + 24);
      if (((((v3 >> 36) >> 26) & 0xF0000003 | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) & 0x3FFFFFF | (v3 >> 36) & 0x3000000 | ((v3 & 7) << 21) & 0x3FFFFFF))) ^ 0xFFFFFFF) >= 0xFFFFFFD)
      {
        v2 = -1;
      }

      else
      {
        v2 = (((v3 >> 36) >> 26) & 0xF0000003 | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) & 0x3FFFFFF | (v3 >> 36) & 0x3000000 | ((v3 & 7) << 21) & 0x3FFFFFF))) ^ 0xFFFFFFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C10C54C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 268435454;
    *(result + 8) = 0;
    if (a3 >= 0xFFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x3FFFFFF) - (a2 << 26);
      v4 = vdupq_n_s64(v3);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1C12B2960), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_1C12B2970), vdupq_n_s64(0xF000000000000000)));
      *(result + 24) = ((v3 >> 21) | (v3 << 36)) & 0xF000000000000007;
    }
  }

  return result;
}

int8x16_t *sub_1C10C5588(int8x16_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v3 = result[1].i64[0] & 0xFFFFFFFFFFFFFF8;
    v2 = result[1].i64[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result = vandq_s8(*result, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    result[1].i64[0] = v3;
  }

  else
  {
    result->i64[1] = 0;
    result[1].i64[0] = 0;
    result->i64[0] = 8 * (a2 - 2);
    v2 = 0x8000000000000000;
  }

  result[1].i64[1] = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCellUIContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C10C56F8()
{
  result = qword_1EDE7E938;
  if (!qword_1EDE7E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7E938);
  }

  return result;
}

void *OUTLINED_FUNCTION_11_15()
{

  return memcpy(v0, v1, 0xD0uLL);
}

__n128 PhotosSelectionStatusView.init(title:titleSystemImage:subtitle:subtitleSystemImage:asset:action:centerAlignment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11, char a12)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D0);
  sub_1C1265410();
  *(a9 + 96) = v22;
  *(a9 + 112) = v23;
  *(a9 + 120) = v24;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = a10;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  return result;
}

uint64_t PhotosSelectionStatusView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932E0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932E8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932F0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v39 - v13;
  v44 = sub_1C12632E0();
  OUTLINED_FUNCTION_0();
  v42 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932F8);
  OUTLINED_FUNCTION_0();
  v41 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93300);
  OUTLINED_FUNCTION_0();
  v43 = v23;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v39 - v25;
  v27 = memcpy(__dst, v2, 0x80uLL);
  v28 = __dst[9];
  if (__dst[9])
  {
    v40 = __dst[10];
    MEMORY[0x1EEE9AC00](v27);
    sub_1C0FCF1B4(v28);
    v39 = sub_1C10C68E0();

    sub_1C1265480();
    sub_1C12632D0();
    v29 = OUTLINED_FUNCTION_3_28(&unk_1EBE93310, &qword_1EBE932F8);
    v30 = sub_1C10C6888();
    v31 = v44;
    sub_1C12649F0();
    (*(v42 + 8))(v17, v31);
    (*(v41 + 8))(v22, v18);
    v32 = v43;
    v33 = v47;
    (*(v43 + 16))(v48, v26, v47);
    swift_storeEnumTagMultiPayload();
    v54[0] = v18;
    v54[1] = v31;
    v54[2] = v29;
    v54[3] = v30;
    OUTLINED_FUNCTION_1_27();
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    sub_1C0FCF004(v28);
    return (*(v32 + 8))(v26, v33);
  }

  else
  {
    *v5 = sub_1C12638E0();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93308);
    sub_1C10C603C(__dst, &v5[*(v35 + 44)]);
    sub_1C12659A0();
    sub_1C1263390();
    sub_1C0FDB71C(v5, v8, &qword_1EBE932D8);
    memcpy(&v8[*(v40 + 36)], v54, 0x70uLL);
    sub_1C0FDB71C(v8, v11, &qword_1EBE932E0);
    v36 = v48;
    *&v11[*(v49 + 36)] = 257;
    sub_1C0FDB800(v11, v36, &qword_1EBE932E8);
    swift_storeEnumTagMultiPayload();
    v37 = OUTLINED_FUNCTION_3_28(&unk_1EBE93310, &qword_1EBE932F8);
    v38 = sub_1C10C6888();
    v50 = v18;
    v51 = v44;
    v52 = v37;
    v53 = v38;
    OUTLINED_FUNCTION_1_27();
    swift_getOpaqueTypeConformance2();
    sub_1C10C68E0();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v11, &qword_1EBE932E8);
  }
}

uint64_t sub_1C10C5E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &__src[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932E0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &__src[-v9];
  *v6 = sub_1C12638E0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93308);
  sub_1C10C603C(a1, &v6[*(v11 + 44)]);
  sub_1C12659A0();
  sub_1C1263390();
  sub_1C0FDB71C(v6, v10, &qword_1EBE932D8);
  memcpy(&v10[*(v8 + 44)], __src, 0x70uLL);
  sub_1C0FDB71C(v10, a2, &qword_1EBE932E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932E8);
  *(a2 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1C10C603C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93368);
  MEMORY[0x1EEE9AC00](v7);
  v69 = v65 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93370);
  MEMORY[0x1EEE9AC00](v68);
  v71 = v65 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93378);
  MEMORY[0x1EEE9AC00](v70);
  v74 = v65 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93380);
  MEMORY[0x1EEE9AC00](v73);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = v65 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93388);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93390);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v75 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v65 - v24;
  v26 = *(a1 + 64);
  if (v26)
  {
    v67 = v7;
    v27 = *(a1 + 112);
    v76[0] = *(a1 + 96);
    v76[1] = v27;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE933B0);
    sub_1C1265420();
    if (v78 == 1)
    {
      swift_unknownObjectRelease();
      v28 = 1;
    }

    else
    {
      v65[1] = *(&v77 + 1);
      swift_unknownObjectRetain();
      v65[0] = sub_1C1200D04();
      [v65[0] setNetworkAccessAllowed_];
      *(v20 + 19) = swift_getKeyPath();
      v20[160] = 0;
      v30 = type metadata accessor for PhotosAssetView();
      v66 = v17;
      v31 = v12;
      v32 = a2;
      v33 = a1;
      v34 = v30[12];
      *&v20[v34] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
      swift_storeEnumTagMultiPayload();
      v35 = &v20[v30[13]];
      *v35 = swift_getKeyPath();
      v35[8] = 0;
      a1 = v33;
      a2 = v32;
      v12 = v31;
      v17 = v66;
      v36 = &v20[v30[14]];
      *v36 = swift_getKeyPath();
      v36[8] = 0;
      *v20 = 0;
      *(v20 + 4) = 0;
      *(v20 + 5) = 0;
      v20[48] = 1;
      v20[8] = 0;
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 34) = 256;
      *(v20 + 52) = 0;
      *(v20 + 60) = 0;
      *(v20 + 9) = 0;
      v20[80] = 1;
      *(v20 + 11) = v26;
      *(v20 + 12) = 0;
      *(v20 + 13) = v65[0];
      *(v20 + 7) = 0u;
      *(v20 + 8) = 0u;
      v20[144] = 2;
      sub_1C12659A0();
      sub_1C1262C80();
      swift_unknownObjectRelease();
      v37 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933C0) + 36)];
      v38 = v78;
      *v37 = v77;
      *(v37 + 1) = v38;
      *(v37 + 2) = v79;
      *&v20[*(v18 + 36)] = 256;
      sub_1C10C747C(v20, v25);
      v28 = 0;
    }

    __swift_storeEnumTagSinglePayload(v25, v28, 1, v18);
    v29 = sub_1C1263AB0();
    v7 = v67;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v65 - v24, 1, 1, v18);
    v29 = sub_1C1263AA0();
  }

  *v6 = v29;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93398);
  sub_1C10C6A48(a1, &v6[*(v39 + 44)]);
  v40 = v69;
  v41 = &v69[*(v7 + 36)];
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
  v43 = *MEMORY[0x1E69816C8];
  v44 = sub_1C1265340();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = swift_getKeyPath();
  sub_1C0FDB71C(v6, v40, &qword_1EBE93360);
  KeyPath = swift_getKeyPath();
  v46 = v71;
  sub_1C0FDB71C(v40, v71, &qword_1EBE93368);
  v47 = v46 + *(v68 + 36);
  *v47 = KeyPath;
  *(v47 + 8) = 1;
  *(v47 + 16) = 0;
  LOBYTE(KeyPath) = sub_1C12644C0();
  sub_1C12628A0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v46;
  v57 = v74;
  sub_1C0FDB71C(v56, v74, &qword_1EBE93370);
  v58 = v57 + *(v70 + 36);
  *v58 = KeyPath;
  *(v58 + 8) = v49;
  *(v58 + 16) = v51;
  *(v58 + 24) = v53;
  *(v58 + 32) = v55;
  *(v58 + 40) = 0;
  v59 = swift_allocObject();
  memcpy((v59 + 16), a1, 0x80uLL);
  v60 = v72;
  sub_1C0FDB71C(v57, v72, &qword_1EBE93378);
  v61 = (v60 + *(v73 + 36));
  *v61 = sub_1C0FA84D0;
  v61[1] = 0;
  v61[2] = sub_1C10C7364;
  v61[3] = v59;
  sub_1C0FDB71C(v60, v17, &qword_1EBE93380);
  v62 = v75;
  sub_1C10C736C(v25, v75);
  sub_1C0FDB800(v17, v12, &qword_1EBE93380);
  sub_1C10C736C(v62, a2);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A8);
  sub_1C0FDB800(v12, a2 + *(v63 + 48), &qword_1EBE93380);
  sub_1C10C73DC(a1, v76);
  sub_1C0FD1A5C(v17, &qword_1EBE93380);
  sub_1C10C7414(v25);
  sub_1C0FD1A5C(v12, &qword_1EBE93380);
  return sub_1C10C7414(v62);
}

unint64_t sub_1C10C6888()
{
  result = qword_1EDE7BCF0;
  if (!qword_1EDE7BCF0)
  {
    sub_1C12632E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BCF0);
  }

  return result;
}

unint64_t sub_1C10C68E0()
{
  result = qword_1EBE93320;
  if (!qword_1EBE93320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE932E8);
    sub_1C10C696C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93320);
  }

  return result;
}

unint64_t sub_1C10C696C()
{
  result = qword_1EBE93328;
  if (!qword_1EBE93328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE932E0);
    sub_1C0FDB6D4(&qword_1EBE93330, &qword_1EBE932D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93328);
  }

  return result;
}

uint64_t sub_1C10C6A48@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933C8);
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];

  v12 = sub_1C1264510();
  KeyPath = swift_getKeyPath();
  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = KeyPath;
  v40 = v12;
  sub_1C1264620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933D0);
  sub_1C10C74EC();
  v29 = v7;
  sub_1C1264990();

  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v17 = a1[7];
  v30 = v16;
  v31 = v14;

  v18 = sub_1C12646A0();
  v19 = swift_getKeyPath();
  v20 = *(v3 + 16);
  v21 = v34;
  v22 = v7;
  v23 = v32;
  v20(v34, v22, v32);
  v24 = v33;
  v20(v33, v21, v23);
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933F8) + 48)];
  v26 = v30;
  *v25 = v31;
  *(v25 + 1) = v15;
  *(v25 + 2) = v26;
  *(v25 + 3) = v17;
  *(v25 + 4) = v19;
  *(v25 + 5) = v18;
  v27 = *(v3 + 8);

  v27(v29, v23);

  return (v27)(v34, v23);
}

uint64_t sub_1C10C6D54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1C10C6D94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C10C6E04()
{
  result = qword_1EBE93338;
  if (!qword_1EBE93338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE932F8);
    sub_1C12632E0();
    sub_1C0FDB6D4(&unk_1EBE93310, &qword_1EBE932F8);
    sub_1C10C6888();
    swift_getOpaqueTypeConformance2();
    sub_1C10C68E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93338);
  }

  return result;
}

void sub_1C10C6F4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (a2)
  {
    if (a3)
    {

      sub_1C1263980();
      sub_1C1263970();
      sub_1C12652F0();
      sub_1C1263950();

      sub_1C1263970();
      sub_1C1263960();
      sub_1C1263970();
      sub_1C12639B0();
      if (qword_1EDE7E628 != -1)
      {
        swift_once();
      }

      v9 = qword_1EDE7E630;
      v10 = sub_1C12648D0();
      v12 = v11;
      v14 = v13 & 1;
      sub_1C0FDB850(v10, v11, v13 & 1);

      sub_1C1263C20();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720);
      sub_1C1089CAC();
      sub_1C1263C20();
      sub_1C0FDB8E8(v10, v12, v14);

      v15 = v25;
      v16 = v27;
      v17 = v28;
      if (v29)
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      *&v26 = a1;
      *(&v26 + 1) = a2;
      sub_1C0FDB9AC();

      v19 = sub_1C12648F0();
      v21 = v20;
      v23 = v22 & 1;
      sub_1C0FDB850(v19, v20, v22 & 1);

      sub_1C1263C20();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720);
      sub_1C1089CAC();
      sub_1C1263C20();
      sub_1C0FDB8E8(v19, v21, v23);

      v15 = v26;
      v16 = v27;
      v17 = v28;
      if (v29)
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    if (!a3)
    {
      v15 = 0uLL;
      v24 = -256;
      v16 = 0uLL;
      goto LABEL_16;
    }

    sub_1C12652F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720);
    sub_1C1089CAC();
    sub_1C1263C20();
    v15 = v25;
    v16 = v27;
    v17 = v28;
    if (v29)
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }
  }

  v24 = v18 | v17;
LABEL_16:
  *a4 = v15;
  *(a4 + 16) = v16;
  *(a4 + 32) = v24;
}

uint64_t sub_1C10C736C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10C7414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C10C747C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93388);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10C74EC()
{
  result = qword_1EBE933D8;
  if (!qword_1EBE933D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE933D0);
    sub_1C10C75A4();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE933D8);
  }

  return result;
}

unint64_t sub_1C10C75A4()
{
  result = qword_1EBE933E0;
  if (!qword_1EBE933E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE933E0);
  }

  return result;
}

unint64_t sub_1C10C75F8()
{
  result = qword_1EBE93400;
  if (!qword_1EBE93400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93408);
    sub_1C10C767C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93400);
  }

  return result;
}

unint64_t sub_1C10C767C()
{
  result = qword_1EBE93410;
  if (!qword_1EBE93410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93418);
    sub_1C1089CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93410);
  }

  return result;
}

uint64_t type metadata accessor for PhotosSearchiOSKeyboardBackdropView()
{
  result = qword_1EBE93420;
  if (!qword_1EBE93420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C10C77A8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_1C12631E0();
  result = sub_1C1264470();
  *a1 = a2;
  *(a1 + 8) = 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = result;
  return result;
}

id sub_1C10C77FC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCB90]) initWithFrame:sub_1C10C7854() style:{0.0, 0.0, 0.0, 0.0}];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C10C7854()
{
  v1 = v0;
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1C12629F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C101268C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v14 = (*(v10 + 88))(v12, v9);
  if (v14 != *MEMORY[0x1E697DBB8])
  {
    if (v14 == *MEMORY[0x1E697DBA8])
    {
      return 2030;
    }

    (*(v10 + 8))(v12, v9);
  }

  return 3901;
}

id sub_1C10C7B04(void *a1)
{
  v2 = sub_1C10C7854();

  return [a1 transitionToStyle_];
}

uint64_t sub_1C10C7B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10C7CC8(&qword_1EBE93438);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C10C7BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10C7CC8(&qword_1EBE93438);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C10C7C50()
{
  sub_1C10C7CC8(&qword_1EBE93438);
  sub_1C1263BD0();
  __break(1u);
}

uint64_t sub_1C10C7CC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosSearchiOSKeyboardBackdropView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10C7D0C()
{
  result = qword_1EBE93440;
  if (!qword_1EBE93440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93448);
    sub_1C10C7D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93440);
  }

  return result;
}

unint64_t sub_1C10C7D98()
{
  result = qword_1EBE93450;
  if (!qword_1EBE93450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93458);
    sub_1C0FDC6A0();
    sub_1C10C7E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93450);
  }

  return result;
}

unint64_t sub_1C10C7E24()
{
  result = qword_1EBE93460;
  if (!qword_1EBE93460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93460);
  }

  return result;
}

uint64_t EnvironmentValues.photosSearchStyle.getter()
{
  sub_1C10C7EDC();

  return sub_1C12637F0();
}

unint64_t sub_1C10C7EDC()
{
  result = qword_1EBE93470;
  if (!qword_1EBE93470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93470);
  }

  return result;
}

uint64_t PhotosSearchStyle.id.getter()
{
  v1 = *(v0 + 40);
  if (v1 < 0)
  {
    sub_1C1266940();

    v10[0] = 0x65536D6F74746F42;
    v10[1] = 0xEF72614268637261;
    if (v1)
    {
      v4 = 1920298050;
    }

    else
    {
      v4 = 0;
    }

    if (v1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  else
  {
    sub_1C1266940();

    strcpy(v10, "TopSearchBar");
    BYTE5(v10[1]) = 0;
    HIWORD(v10[1]) = -5120;
    if (v1)
    {
      v2 = 1920298050;
    }

    else
    {
      v2 = 0;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE000000000000000;
    }

    MEMORY[0x1C68EF850](v2, v3);

    if ((v1 & 0x100) != 0)
    {
      v4 = 0x6E656E696D6F7250;
    }

    else
    {
      v4 = 0;
    }

    if ((v1 & 0x100) != 0)
    {
      v5 = 0xE900000000000074;
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  MEMORY[0x1C68EF850](v4, v5);

  MEMORY[0x1C68EF850](0x656C797453, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690);
  v6 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v6);

  v7 = sub_1C1266260();
  MEMORY[0x1C68EF850](v7);

  v8 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v8);

  return v10[0];
}

double PhotosSearchStyle.searchBarFocusRingCornerRadius.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  result = *v0;
  if (v1)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *v0;
  }

  if ((v2 & 1) == 0)
  {
    v4 = *(v0 + 16);
  }

  if (v1)
  {
    result = 0.0;
  }

  if ((v2 & 1) == 0)
  {
    result = *(v0 + 16);
  }

  if (*(v0 + 40) < 0)
  {
    return v4;
  }

  return result;
}

uint64_t static PhotosSearchStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v7 < 0)
  {
    if (v13 < 0)
    {
      if (v3)
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if ((v8 & 1) != 0 || v2 != v9)
      {
        goto LABEL_34;
      }

      if (v5)
      {
        if ((v11 & (v6 == v12)) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_34;
        }

        if (v4 != v10 || v6 != v12)
        {
          goto LABEL_34;
        }
      }

      LOBYTE(v14) = v13 ^ v7 ^ 1;
      return v14 & 1;
    }

LABEL_34:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  if (v13 < 0)
  {
    goto LABEL_34;
  }

  if (v3)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((v8 & 1) != 0 || v2 != v9)
  {
    goto LABEL_34;
  }

  if (v5)
  {
    LOBYTE(v14) = 0;
    if ((v11 & 1) == 0 || v6 != v12)
    {
      return v14 & 1;
    }

    goto LABEL_22;
  }

  if (v11)
  {
    goto LABEL_34;
  }

  LOBYTE(v14) = 0;
  if (v4 == v10 && v6 == v12)
  {
LABEL_22:
    if (((v7 ^ v13) & 1) == 0)
    {
      v14 = ((v13 & 0x100) == 0) ^ ((v7 & 0x100) >> 8);
    }
  }

  return v14 & 1;
}

uint64_t PhotosSearchStyle.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = v0[4];
  if ((v0[5] & 0x80000000) == 0)
  {
    MEMORY[0x1C68F07E0](0);
    if (v2)
    {
      sub_1C1266EB0();
      if ((v4 & 1) == 0)
      {
LABEL_4:
        sub_1C1266EB0();
        if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        MEMORY[0x1C68F0810](v6);
        goto LABEL_19;
      }
    }

    else
    {
      sub_1C1266EB0();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x1C68F0810](v8);
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    sub_1C1266EB0();
LABEL_19:
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1C68F0810](v9);
    sub_1C1266EB0();
    return sub_1C1266EB0();
  }

  MEMORY[0x1C68F07E0](1);
  if (v2)
  {
    sub_1C1266EB0();
    if ((v4 & 1) == 0)
    {
LABEL_10:
      sub_1C1266EB0();
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1C68F0810](v7);
      goto LABEL_28;
    }
  }

  else
  {
    sub_1C1266EB0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v1;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1C68F0810](v10);
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_1C1266EB0();
LABEL_28:
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1C68F0810](v11);
  return sub_1C1266EB0();
}

uint64_t PhotosSearchStyle.hashValue.getter()
{
  sub_1C1266E90();
  PhotosSearchStyle.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C10C849C()
{
  sub_1C1266E90();
  PhotosSearchStyle.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C10C84F4@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosSearchStyle.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t View.photosSearchStyle(_:)()
{
  swift_getKeyPath();
  sub_1C1264A30();
}

void (*EnvironmentValues.photosSearchStyle.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v3;
  v3[12] = v1;
  v3[13] = sub_1C10C7EDC();
  sub_1C12637F0();
  return sub_1C10C862C;
}

void sub_1C10C862C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 16);
  v1[3] = *v1;
  v1[4] = v4;
  *(v1 + 10) = v2;
  *(v1 + 44) = v3;
  sub_1C1263800();

  free(v1);
}

double sub_1C10C8694@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0x4030000000000000;
  *&result = 1;
  *(a1 + 24) = xmmword_1C12B32E0;
  *(a1 + 40) = -32767;
  return result;
}

uint64_t sub_1C10C86B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C10C8ACC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t PhotosSearchTokenStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t PhotosSearchTokenStyle.attributes()()
{
  v1 = type metadata accessor for PhotosSearchTokenStyleAttributeValue();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  sub_1C1261E10();
  v3[*(v1 + 20)] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  if (qword_1EDE76A00 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDE9B5C0;
  *(inited + 32) = qword_1EDE9B5C0;
  *(inited + 64) = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 40));
  sub_1C10C89B0(v3, boxed_opaque_existential_1);
  v8 = *MEMORY[0x1E69DE720];
  *(inited + 72) = *MEMORY[0x1E69DE720];
  v9 = v6;
  v10 = v8;
  v11 = sub_1C1261DF0();
  *(inited + 104) = MEMORY[0x1E69E6158];
  *(inited + 80) = v11;
  *(inited + 88) = v12;
  type metadata accessor for Key(0);
  sub_1C10C8A14();
  v13 = sub_1C1265CE0();
  sub_1C10C8A6C(v3);
  return v13;
}

uint64_t type metadata accessor for PhotosSearchTokenStyleAttributeValue()
{
  result = qword_1EDE79228;
  if (!qword_1EDE79228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C10C8978()
{
  result = sub_1C1265E70();
  qword_1EDE9B5C0 = result;
  return result;
}

uint64_t sub_1C10C89B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchTokenStyleAttributeValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10C8A14()
{
  result = qword_1EDE769F8;
  if (!qword_1EDE769F8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE769F8);
  }

  return result;
}

uint64_t sub_1C10C8A6C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosSearchTokenStyleAttributeValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C10C8ACC()
{
  result = qword_1EBE93480;
  if (!qword_1EBE93480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93480);
  }

  return result;
}

unint64_t sub_1C10C8B24()
{
  result = qword_1EBE93488;
  if (!qword_1EBE93488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93488);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PhotosSearchStyle(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosSearchStyle(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosSearchStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10C8C7C(uint64_t result, __int16 a2)
{
  v2 = *(result + 24) & 1;
  v3 = *(result + 40) & 0x101 | (a2 << 15);
  *(result + 8) &= 1uLL;
  *(result + 24) = v2;
  *(result + 40) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosSearchTokenStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C10C8D94()
{
  result = qword_1EBE93498[0];
  if (!qword_1EBE93498[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93490);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE93498);
  }

  return result;
}

uint64_t sub_1C10C8E20()
{
  result = sub_1C1261E20();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PhotosDetailsNavigationRepresentedItemTransform.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C10C8EF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C0FA139C(a1, v7);
  sub_1C10C8FCC();
  if (swift_dynamicCast())
  {
    v4 = [v6 asset];
    a2[3] = swift_getObjectType();

    *a2 = v4;
  }

  else
  {
    sub_1C0FA139C(a1, a2);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

unint64_t sub_1C10C8FCC()
{
  result = qword_1EDE7B678;
  if (!qword_1EDE7B678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE7B678);
  }

  return result;
}

uint64_t PhotosPickerObservableUnifiedItem.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosPickerObservableUnifiedItem.init(_:)(a1);
  return v2;
}

uint64_t PhotosPickerObservableUnifiedItem.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_5();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 112));
  return v1;
}

uint64_t sub_1C10C90D4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v5 = v4;
  v6 = *(v2 + 80);
  OUTLINED_FUNCTION_14_5();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-v10];
  sub_1C10344AC(&v15[-v10]);
  v12 = *(v8 + 8);
  v12(v11, v6);
  v18 = v6;
  v19 = *(v5 + 88);
  OUTLINED_FUNCTION_20();
  v20 = *(v13 + 104);
  swift_getKeyPath();
  v16 = v1;
  v17 = a1;
  sub_1C10C9DC8();

  return v12(a1, v6);
}

uint64_t sub_1C10C9278(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C10C90D4(v3);
}

uint64_t sub_1C10C9338@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C10C9D2C();

  return sub_1C10344AC(a1);
}

uint64_t sub_1C10C93BC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C1034540(v3);
}

void (*sub_1C10C9488(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  swift_getKeyPath();
  sub_1C10C9D2C();

  OUTLINED_FUNCTION_10_2();
  v3[4] = v1;
  swift_getKeyPath();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosPickerObservableUnifiedItem();
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[6] = sub_1C10345DC();
  return sub_1C10C95F8;
}

void sub_1C10C95F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1C10C964C();

  free(v1);
}

uint64_t sub_1C10C964C()
{
  swift_getKeyPath();
  type metadata accessor for PhotosPickerObservableUnifiedItem();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t sub_1C10C9768()
{
  OUTLINED_FUNCTION_2_16();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_14_5();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  sub_1C10C9338(&v8 - v5);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1C10C9844()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C10C9914()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C10C99E4()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v8);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4 & 1;
}

uint64_t sub_1C10C9AB4()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v8);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4;
}

uint64_t sub_1C10C9B8C()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C10C9C5C()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v8);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4 & 1;
}

uint64_t sub_1C10C9D2C()
{
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C10C9DC8()
{
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosPickerObservableUnifiedItem.deinit()
{
  OUTLINED_FUNCTION_5();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 112));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosPickerObservableUnifiedItem.__deallocating_deinit()
{
  PhotosPickerObservableUnifiedItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C10CA0B0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C10C9488(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C10CA10C(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C10CA364@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v48 = a1;
  v54 = a4;
  v50 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v52 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v44 = type metadata accessor for OneUpChromeMaskedLibraryScrubber.LibraryScrubberMask();
  v45 = OUTLINED_FUNCTION_2_31();
  OUTLINED_FUNCTION_3_5();
  v46 = sub_1C1262B80();
  v13 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v49 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v51 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v42 = &v41 - v21;
  v22 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v53 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v43 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v47 = &v41 - v28;
  v48(v27);
  sub_1C10A0734();
  sub_1C1264E90();
  (*(v50 + 8))(v7, a2);
  v62 = a3;
  v63 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1C1264E70();
  (*(v52 + 8))(v12, v8);
  v61 = 3;
  OUTLINED_FUNCTION_1_29();
  v30 = swift_getWitnessTable();
  v59 = WitnessTable;
  v60 = v30;
  v31 = swift_getWitnessTable();
  v32 = v42;
  sub_1C1170174(&v61, 0, 0, v13, v31);
  (*(v49 + 8))(v17, v13);
  v33 = sub_1C10CAB10();
  v57 = v31;
  v58 = v33;
  v34 = swift_getWitnessTable();
  v35 = v43;
  sub_1C0FF8DA8(v18, v34);
  (*(v51 + 8))(v32, v18);
  v36 = sub_1C109739C();
  v55 = v34;
  v56 = v36;
  v37 = swift_getWitnessTable();
  v38 = v47;
  sub_1C0FDBA4C(v35, v22, v37);
  v39 = *(v53 + 8);
  v39(v35, v22);
  sub_1C0FDBA4C(v38, v22, v37);
  return (v39)(v38, v22);
}

double sub_1C10CA868@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92840);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C12B36E0;
  sub_1C1265170();
  *(v2 + 32) = sub_1C12657E0();
  *(v2 + 40) = v3;
  sub_1C1265190();
  *(v2 + 48) = sub_1C12657E0();
  *(v2 + 56) = v4;
  sub_1C1265190();
  *(v2 + 64) = sub_1C12657E0();
  *(v2 + 72) = v5;
  sub_1C1265170();
  *(v2 + 80) = sub_1C12657E0();
  *(v2 + 88) = v6;
  sub_1C1265BA0();
  sub_1C1265BB0();
  sub_1C12657F0();
  sub_1C1262F60();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_1C10CA9D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10CAA18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1C10CAA58(uint64_t result, int a2, int a3)
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

unint64_t sub_1C10CAB10()
{
  result = qword_1EDE7C9C0;
  if (!qword_1EDE7C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C9C0);
  }

  return result;
}

unint64_t sub_1C10CABA8()
{
  result = qword_1EDE7BFC0;
  if (!qword_1EDE7BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BFC0);
  }

  return result;
}

uint64_t sub_1C10CABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v20[1] = a2;
  v6 = sub_1C1261F10();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_30();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v20 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = *(v8 + 16);
  v17(v20 - v18, v4, v6);
  v17(v13, v4, v6);
  v17(v3, a1, v6);
  sub_1C10CB46C();
  sub_1C1266830();
  sub_1C1266820();
  return (*(v8 + 8))(v16, v6);
}

uint64_t OneUpTopBarButtonSizeVariant.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t static OneUpTopBarLayoutUtilities.allPhotosButtonSizeVariant(allowedTopBarButtons:horizontalSizeClass:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v33 - v8;
  v10 = sub_1C1263EB0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_30();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  v17 = *a1;
  sub_1C10B1CE8(a2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_1C10CB224(v9);
LABEL_5:
    v21 = 2;
LABEL_6:
    *a3 = v21;
    return result;
  }

  (*(v12 + 32))(v16, v9, v10);
  if ((v17 & 4) == 0)
  {
    v19 = OUTLINED_FUNCTION_0_36();
    result = v20(v19);
    goto LABEL_5;
  }

  (*(v12 + 16))(v3, v16, v10);
  v22 = (*(v12 + 88))(v3, v10);
  if (v22 == *MEMORY[0x1E697FF38])
  {
    if ((v17 & 0xE0) != 0)
    {
      v23 = OUTLINED_FUNCTION_0_36();
      result = v24(v23);
LABEL_10:
      v21 = 1;
      goto LABEL_6;
    }

    v27 = v17 & 0xFFFFFFFFFFFFFF1BLL;
    v28 = OUTLINED_FUNCTION_0_36();
    result = v29(v28);
    if ((v17 & 0xFFFFFFFFFFFFFF1BLL) != 0)
    {
      v30 = 0;
      do
      {
        v31 = __OFADD__(v30, v27 & 1);
        v30 += v27 & 1;
        if (v31)
        {
          __break(1u);
          goto LABEL_21;
        }

        v32 = v27 >= 2;
        v27 >>= 1;
      }

      while (v32);
      if (v30 > 2)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x1E697FF40])
  {
    v25 = OUTLINED_FUNCTION_0_36();
    result = v26(v25);
LABEL_13:
    v21 = 0;
    goto LABEL_6;
  }

LABEL_21:
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_1C1266940();
  MEMORY[0x1C68EF850](0xD000000000000023, 0x80000001C126B710);
  sub_1C1266B10();
  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t sub_1C10CB148@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1C10CB170(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_1C10CB224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C10CB290()
{
  result = qword_1EBE93520;
  if (!qword_1EBE93520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93520);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpTopBarButtonSizeVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OneUpTopBarLayoutUtilities(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C10CB46C()
{
  result = qword_1EDE82F08;
  if (!qword_1EDE82F08)
  {
    sub_1C1261F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82F08);
  }

  return result;
}

uint64_t sub_1C10CB510(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C1102390(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1C1094E90(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93558);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C1102390((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1C0F9DDE4(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1C10CB648(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C1266BB0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v11 = MEMORY[0x1E69E7CC0];
  result = sub_1C11023D0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v11;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = OUTLINED_FUNCTION_20_15();
        MEMORY[0x1C68F02D0](v6);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93568);
      swift_dynamicCast();
      v7 = v10;
      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C11023D0((v8 > 1), v9 + 1, 1);
        v7 = v10;
      }

      ++v5;
      *(v11 + 16) = v9 + 1;
      *(v11 + 16 * v9 + 32) = v7;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1C10CB7AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1C10CB814(uint64_t a1)
{
  v2 = v1;
  result = sub_1C10CB924();
  v5 = result;
  if (a1)
  {
    if (result)
    {

      if (v5 == a1)
      {
        return result;
      }
    }

    sub_1C10CD6A4(v2);
  }

  else
  {
    if (!result)
    {
      return result;
    }
  }

  result = sub_1C10CB924();
  if (result)
  {
    sub_1C10CD68C(v2);
  }

  return result;
}

uint64_t sub_1C10CB8B8()
{
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  sub_1C10CB814(Strong);
}

uint64_t sub_1C10CB924()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v3 = sub_1C10CFC90(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return swift_weakLoadStrong();
}

uint64_t sub_1C10CB9E4(uint64_t a1)
{
  Strong = swift_weakLoadStrong();

  if (Strong == a1)
  {

    return sub_1C10CB8B8();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_2_7();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_19_11();
  }
}

double sub_1C10CBAF4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v5 = sub_1C10CFC90(v3, v4);
  OUTLINED_FUNCTION_0_1(v5, v6, v7, v8, v9, v10, v11, v12, v18, v1);
  sub_1C1261F30();

  v13 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 16);
  v14 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 24);
  result = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 32);
  v16 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 40);
  v17 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 48);
  *a1 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration);
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = result;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  return result;
}

double sub_1C10CBBB8@<D0>(uint64_t a1@<X8>)
{
  sub_1C10CBAF4(&v7);
  v2 = v8;
  v3 = v9;
  result = v10;
  v5 = v11;
  v6 = v12;
  *a1 = v7;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_1C10CBC1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *a1;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  return sub_1C10CBC7C(&v7);
}

double sub_1C10CBC7C(__int128 *a1)
{
  v2 = a1[1];
  v9 = *a1;
  v10 = v2;
  v11 = a1[2];
  v12 = *(a1 + 6);
  v3 = v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration;
  v4 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 16);
  v13[0] = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration);
  v13[1] = v4;
  v13[2] = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 32);
  v14 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 48);
  if (sub_1C10CEB14(v13, &v9))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v6 - 16) = v1;
    *(v6 - 8) = &v9;
    OUTLINED_FUNCTION_19_11();
  }

  else
  {
    v8 = v10;
    *v3 = v9;
    *(v3 + 16) = v8;
    result = *&v11;
    *(v3 + 32) = v11;
    *(v3 + 48) = v12;
  }

  return result;
}

uint64_t sub_1C10CBD64(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93548);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-1] - v3;
  if (sub_1C10CC9A8() <= a1 || (sub_1C10CE294(v14), a1 = v14[3], sub_1C0FFC7B0(v14, &qword_1EBE8FE30), a1))
  {
    sub_1C10CD948(v4);
    sub_1C12622D0();
    v5 = OUTLINED_FUNCTION_21_6();
    v6(v5);
    return a1;
  }

  else
  {
    sub_1C10CD948(v4);
    sub_1C12622D0();
    v8 = OUTLINED_FUNCTION_21_6();
    v9(v8);
    v14[0] = MEMORY[0x1E69E7CC0];
    result = sub_1C0FF7688(0);
    v10 = result;
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        return v14[0];
      }

      if (i >= MEMORY[0x10])
      {
        break;
      }

      v12 = *(8 * i + 0x20);

      if (__OFADD__(i, 1))
      {
        __break(1u);
        break;
      }

      if (*(v12 + 121))
      {
        sub_1C1266A10();
        sub_1C1266A60();
        sub_1C1266A70();
        result = sub_1C1266A30();
      }

      else
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C10CBF54(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 32))
    {
      return result;
    }
  }

  else if ((*(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 32) & 1) == 0)
  {
    result = CGRectEqualToRect(*result, *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame));
    if (result)
    {
      return result;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
  if (v2)
  {

    v2(v1);

    return sub_1C0FCF004(v2);
  }

  return result;
}

uint64_t sub_1C10CC00C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame;
  v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 16);
  v6[0] = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame);
  v6[1] = v3;
  v7 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 32);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return sub_1C10CBF54(v6);
}

uint64_t sub_1C10CC05C(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_visibilityPercentage);
  if (v7 != a1)
  {
    if (v7 <= 0.0)
    {
      v8 = sub_1C1261DE0();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
      result = sub_1C10CC4F4(v6);
    }

    v9 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
    if (v9)
    {

      v9(v1);
      return sub_1C0FCF004(v9);
    }
  }

  return result;
}

uint64_t sub_1C10CC158(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_visibilityPercentage);
  *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_visibilityPercentage) = a1;
  return sub_1C10CC05C(v2);
}

uint64_t sub_1C10CC1C8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v6 = a2();
  sub_1C10CB510(v6);

  sub_1C10CB510(a1);
  v7 = sub_1C1262430();

  if (v7)
  {
  }

  else
  {
    result = a3(a1);
    v9 = *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
    if (v9)
    {

      v9(v3);

      return sub_1C0FCF004(v9);
    }
  }

  return result;
}

uint64_t sub_1C10CC2D4(uint64_t a1)
{
  sub_1C10CE294(&v21);
  if (*(&v22 + 1))
  {
    v3 = swift_allocObject();
    v4 = v22;
    *(v3 + 16) = v21;
    *(v3 + 32) = v4;
    *(v3 + 48) = v23;
    v5 = MEMORY[0x1E69E69C8];
    v6 = MEMORY[0x1E69E69B8];
  }

  else
  {
    sub_1C0FFC7B0(&v21, &qword_1EBE8FE30);
    v3 = 0;
    v6 = 0;
    v5 = 0;
    *(&v21 + 1) = 0;
    *&v22 = 0;
  }

  *&v21 = v3;
  *(&v22 + 1) = v6;
  v23 = v5;
  sub_1C0FDB800(a1, &v18, &qword_1EBE8FE30);
  if (*(&v19 + 1))
  {
    v7 = swift_allocObject();
    v8 = v19;
    *(v7 + 16) = v18;
    *(v7 + 32) = v8;
    *(v7 + 48) = v20;
    v9 = MEMORY[0x1E69E69C8];
    v10 = MEMORY[0x1E69E69B8];
  }

  else
  {
    sub_1C0FFC7B0(&v18, &qword_1EBE8FE30);
    v7 = 0;
    v10 = 0;
    v9 = 0;
    *(&v18 + 1) = 0;
    *&v19 = 0;
  }

  *&v18 = v7;
  *(&v19 + 1) = v10;
  v20 = v9;
  v11 = sub_1C1262420();
  OUTLINED_FUNCTION_16_3();
  sub_1C0FFC7B0(v12, v13);
  OUTLINED_FUNCTION_16_3();
  sub_1C0FFC7B0(v14, v15);
  if ((v11 & 1) == 0)
  {
    sub_1C0FDB800(a1, &v21, &qword_1EBE8FE30);
    sub_1C10CD460(&v21);
    v16 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
    if (v16)
    {

      v16(v1);
      sub_1C0FCF004(v16);
    }
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE8FE30);
}

uint64_t sub_1C10CC4F4(uint64_t a1)
{
  v3 = sub_1C1261DE0();
  OUTLINED_FUNCTION_0();
  v31 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v32 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v29[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29[-v18];
  v33 = v1;
  sub_1C10CDF38(&v29[-v18]);
  v20 = *(v8 + 56);
  sub_1C0FDB800(v19, v11, &qword_1EBE91E68);
  sub_1C0FDB800(a1, &v11[v20], &qword_1EBE91E68);
  OUTLINED_FUNCTION_23_6(v11);
  if (v21)
  {
    sub_1C0FFC7B0(v19, &qword_1EBE91E68);
    OUTLINED_FUNCTION_23_6(&v11[v20]);
    if (v21)
    {
      sub_1C0FFC7B0(v11, &qword_1EBE91E68);
      return sub_1C0FFC7B0(a1, &qword_1EBE91E68);
    }
  }

  else
  {
    sub_1C0FDB800(v11, v17, &qword_1EBE91E68);
    OUTLINED_FUNCTION_23_6(&v11[v20]);
    if (!v21)
    {
      v26 = v31;
      (*(v31 + 32))(v7, &v11[v20], v3);
      sub_1C10CFC90(&qword_1EDE82F38, MEMORY[0x1E6969530]);
      v30 = sub_1C1265DE0();
      v27 = *(v26 + 8);
      v27(v7, v3);
      sub_1C0FFC7B0(v19, &qword_1EBE91E68);
      v27(v17, v3);
      sub_1C0FFC7B0(v11, &qword_1EBE91E68);
      v22 = v33;
      if (v30)
      {
        return sub_1C0FFC7B0(a1, &qword_1EBE91E68);
      }

      goto LABEL_10;
    }

    sub_1C0FFC7B0(v19, &qword_1EBE91E68);
    (*(v31 + 8))(v17, v3);
  }

  sub_1C0FFC7B0(v11, &qword_1EBE91EB8);
  v22 = v33;
LABEL_10:
  v23 = v32;
  sub_1C0FDB800(a1, v32, &qword_1EBE91E68);
  sub_1C10CE098(v23);
  v24 = *(v22 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
  if (v24)
  {

    v24(v22);
    v25 = OUTLINED_FUNCTION_20_15();
    sub_1C0FCF004(v25);
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68);
}

uint64_t sub_1C10CC908(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  result = a2();
  if (result != a1)
  {
    result = a3(a1);
    v7 = *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
    if (v7)
    {

      v7(v3);

      return sub_1C0FCF004(v7);
    }
  }

  return result;
}

uint64_t sub_1C10CC9E4(uint64_t a1)
{
  result = sub_1C10CCA58();
  if (result == 2)
  {
    if (a1 == 2)
    {
      return result;
    }
  }

  else if (a1 != 2 && ((result ^ a1) & 1) == 0)
  {
    return result;
  }

  return sub_1C10CCAE8(a1);
}

uint64_t sub_1C10CCA58()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v3 = sub_1C10CFC90(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___containerTracksItemVisibility);
}

uint64_t sub_1C10CCAE8(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___containerTracksItemVisibility);
  if (v3 != 2)
  {
    if (result != 2 && ((v3 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    OUTLINED_FUNCTION_19_11();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___containerTracksItemVisibility) = result;
  return result;
}

uint64_t sub_1C10CCBB4(uint64_t a1, char a2)
{

  if (a2)
  {
    sub_1C10CC19C(v3);
  }

  else
  {
    sub_1C10CC170(v3);
  }

  return sub_1C10CC9E4(1);
}

uint64_t sub_1C10CCBFC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v15[3] = v3;
  v15[4] = *(v4 + 8);
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 16))();
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v14[3] = v6;
  v14[4] = *(v7 + 8);
  __swift_allocate_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_15_1();
  (*(v8 + 16))();
  LOBYTE(a2) = sub_1C1262420();
  OUTLINED_FUNCTION_16_3();
  sub_1C0FFC7B0(v9, v10);
  OUTLINED_FUNCTION_16_3();
  sub_1C0FFC7B0(v11, v12);
  return a2 & 1;
}

uint64_t sub_1C10CCD1C(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v7 = MEMORY[0x1EEE9AC00](v6);
    (*(v9 + 16))(&v10[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v7);
    sub_1C12668E0();
    sub_1C10CE450(a1, v10);

    return sub_1C0FD1A08(v10);
  }

  return result;
}

uint64_t sub_1C10CCE50(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93548);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93550);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v35 = *a3;
  v34 = *(a3 + 2);
  v14 = *(a3 + 24);
  v15 = *(a3 + 4);
  v32 = *(a3 + 40);
  v33 = v14;
  v16 = *(a3 + 6);
  sub_1C1261E10();
  swift_weakInit();
  v17 = v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 1;
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_visibilityPercentage) = 0;
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___colsPerPage) = 0;
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___containerTracksItemVisibility) = 2;
  v18 = (v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
  type metadata accessor for PhotosInlinePlaybackContainerModel();
  *v18 = 0;
  v18[1] = 0;
  sub_1C12622E0();
  OUTLINED_FUNCTION_15_19();
  v19();
  type metadata accessor for PhotosInlinePlayerModel();
  sub_1C12622E0();
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__weakPlayerModels, v12, v7);
  v20 = (v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__scrollSpeedometerObservation);
  *v20 = 0;
  v20[1] = 0;
  v21 = sub_1C1262FB0();
  OUTLINED_FUNCTION_22_9(v21);
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___scrollSpeed) = 0;
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___scrollPhase) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___partiallyVisibleIDs) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___fullyVisibleIDs) = v22;
  v23 = sub_1C1261DE0();
  OUTLINED_FUNCTION_22_9(v23);
  v24 = v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverID;
  *(v25 + 32) = 0;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverTimer) = 0;
  sub_1C1261F60();
  v26 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_coordinateSpaceName;
  v27 = sub_1C1263D00();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v3 + v26, a1, v27);
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_scrollViewTracker) = a2;
  v29 = v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration;
  *v29 = v35;
  *(v29 + 16) = v34;
  v30 = v32;
  *(v29 + 24) = v33;
  *(v29 + 32) = v15;
  *(v29 + 40) = v30;
  *(v29 + 48) = v16;

  sub_1C10CD5A0();

  (*(v28 + 8))(a1, v27);
  return v3;
}

uint64_t sub_1C10CD26C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C10CE76C();

  v2 = OUTLINED_FUNCTION_20_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_4_2();
  return (*(v3 + 8))(a1);
}

uint64_t sub_1C10CD32C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    v3 = result;
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_2_7();
    *(v5 - 16) = v2;
    *(v5 - 8) = v3;
    sub_1C10CE76C();
  }

  return result;
}

uint64_t sub_1C10CD3F4()
{
  swift_getKeyPath();
  sub_1C10CE76C();
}

uint64_t sub_1C10CD460(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID;
  swift_beginAccess();
  sub_1C0FDB800(v1 + v3, v10, &qword_1EBE8FE30);
  v4 = sub_1C10CEB74(v10, a1);
  OUTLINED_FUNCTION_14_6();
  sub_1C0FFC7B0(v5, v6);
  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_7();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    OUTLINED_FUNCTION_19_11();
  }

  else
  {
    sub_1C0FDB800(a1, v10, &qword_1EBE8FE30);
    swift_beginAccess();
    sub_1C10CFBD4(v10, v1 + v3, &qword_1EBE8FE30);
    swift_endAccess();
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE8FE30);
}

uint64_t sub_1C10CD5A0()
{
  swift_allocObject();
  swift_weakInit();

  sub_1C11C0644(sub_1C10CFB88);

  swift_allocObject();
  swift_weakInit();

  sub_1C12663E0();

  return sub_1C10CDC84();
}

uint64_t sub_1C10CD6BC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  sub_1C10CFC90(v4, v5);
  OUTLINED_FUNCTION_15_19();
  sub_1C1261F30();

  OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_15_19();
  sub_1C1261F50();

  OUTLINED_FUNCTION_7_22();
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93550);
  a2(a1, v6);
  swift_endAccess();
  OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_18_17();
}

uint64_t sub_1C10CD808(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  sub_1C10CFC90(v4, v5);
  OUTLINED_FUNCTION_15_19();
  sub_1C1261F30();

  OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_15_19();
  sub_1C1261F50();

  OUTLINED_FUNCTION_7_22();
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93548);
  a2(a1, v6);
  swift_endAccess();
  OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_18_17();
}

uint64_t sub_1C10CD96C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v10 = sub_1C10CFC90(v8, v9);
  OUTLINED_FUNCTION_18_11(v10, v11, v12, v13, v14, v15, v16, v17, v21, v3);
  sub_1C1261F30();

  v18 = *a1;
  OUTLINED_FUNCTION_7_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_3();
  return (*(v19 + 16))(a3, v6 + v18);
}

uint64_t sub_1C10CDA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t sub_1C10CDB10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  OUTLINED_FUNCTION_7_22();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  OUTLINED_FUNCTION_3();
  (*(v8 + 24))(a1 + v7, a2);
  return swift_endAccess();
}

uint64_t sub_1C10CDBAC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v3 = sub_1C10CFC90(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C10CDC84()
{
  swift_getKeyPath();
  sub_1C10CE76C();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C10CDD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__scrollSpeedometerObservation);
  *v3 = a2;
  v3[1] = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C10CDD64(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v6 = sub_1C10CFC90(v4, v5);
  OUTLINED_FUNCTION_18_11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v2);
  sub_1C1261F30();

  return *(v2 + *a2);
}

uint64_t sub_1C10CDE40()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v3 = sub_1C10CFC90(v1, v2);
  OUTLINED_FUNCTION_18_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();
}

uint64_t sub_1C10CDEF8(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + *a3) = a2;
}

uint64_t sub_1C10CDF38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v6 = sub_1C10CFC90(v4, v5);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___lastScrollDate;
  OUTLINED_FUNCTION_7_4();
  return sub_1C0FDB800(v2 + v14, a1, &qword_1EBE91E68);
}

uint64_t sub_1C10CDFEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C0FDB800(a1, &v6 - v3, &qword_1EBE91E68);
  return sub_1C10CE098(v4);
}

uint64_t sub_1C10CE098(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___lastScrollDate;
  swift_beginAccess();
  OUTLINED_FUNCTION_14_6();
  sub_1C0FDB800(v7, v8, v9);
  v10 = sub_1C10CE814(v5, a1);
  OUTLINED_FUNCTION_16_3();
  sub_1C0FFC7B0(v11, v12);
  if (v10)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_2_7();
    *(v14 - 16) = v1;
    *(v14 - 8) = a1;
    OUTLINED_FUNCTION_19_11();
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    sub_1C0FDB800(v15, v16, v17);
    swift_beginAccess();
    sub_1C10CFBD4(v5, v1 + v6, &qword_1EBE91E68);
    swift_endAccess();
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68);
}

uint64_t sub_1C10CE218(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___lastScrollDate;
  swift_beginAccess();
  sub_1C10CFC40(a2, a1 + v4, &qword_1EBE91E68);
  return swift_endAccess();
}

uint64_t sub_1C10CE294@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v6 = sub_1C10CFC90(v4, v5);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID;
  OUTLINED_FUNCTION_7_4();
  return sub_1C0FDB800(v2 + v14, a1, &qword_1EBE8FE30);
}

uint64_t sub_1C10CE394(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID;
  swift_beginAccess();
  sub_1C10CFC40(a2, a1 + v4, &qword_1EBE8FE30);
  return swift_endAccess();
}

uint64_t sub_1C10CE410()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_scrollViewTracker) + 32) regime];

  return sub_1C10CC4C8(v1);
}

void sub_1C10CE450(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverTimer);
  if (v3)
  {
    sub_1C0FE7B20();
    v6 = v3;
    v7 = a1;
    LOBYTE(a1) = sub_1C12666B0();

    if (a1)
    {
      v8 = sub_1C10CDE2C();
      MEMORY[0x1EEE9AC00](v8);
      v9 = sub_1C108D334();

      if (v9)
      {
        sub_1C0FF4B88(a2, v10);
        sub_1C10CC2D4(v10);
      }
    }
  }
}