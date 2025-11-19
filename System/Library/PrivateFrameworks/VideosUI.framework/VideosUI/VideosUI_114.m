void sub_1E3FA283C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 8);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1E3FA2920(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E3FA2A50(void *a1, int64_t a2, char a3)
{
  result = sub_1E3FA2920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E3FA2A84(uint64_t a1, void *a2)
{
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4E0);
  result = sub_1E4207714();
  v4 = result;
  v5 = 0;
  v27 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v26 = result + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v27 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1E328438C(*(v27 + 56) + 32 * v16, v29);

      sub_1E3FA217C(v28, v29);
      result = __swift_destroy_boxed_opaque_existential_1(v29);
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v20 = (v4[6] + 16 * v16);
      *v20 = v19;
      v20[1] = v18;
      v21 = (v4[7] + 32 * v16);
      v22 = v28[1];
      *v21 = v28[0];
      v21[1] = v22;
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v4[2] = v25;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {

        return v4;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3FA2C88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E3FA2CC4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E3FA2D34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return OUTLINED_FUNCTION_18();
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1E3FA2E6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E3FA30B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D4E8);
  OUTLINED_FUNCTION_26_27();
  sub_1E4206304();

  return sub_1E4205CB4();
}

uint64_t sub_1E3FA3130(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D4E8);
  sub_1E4205D34();
  return sub_1E4205CE4();
}

uint64_t sub_1E3FA31F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FA30B4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FA3220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = a2;
  v7[5] = a3;
  return sub_1E3FA3130(a1, v7);
}

void *sub_1E3FA3258(void *a1, uint64_t a2)
{

  result = (*(a2 + 32))(&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t sub_1E3FA32AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E3FA3254(*(a1 + 16));
  *a2 = result;
  return result;
}

void *sub_1E3FA32D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[1] = *(a4 + 16);
  v6 = a2;
  v7 = a3;
  return sub_1E3FA3258(a1, v5);
}

void sub_1E3FA3308()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v0;
  v37 = v1;
  v3 = v2;
  v38 = v4;
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_151();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_41_41();
  v29 = sub_1E42020F4();
  type metadata accessor for CGRect(255);
  v33 = v10;
  v11 = *(v3 + 16);
  v30 = *(v3 + 24);
  v31 = v11;
  type metadata accessor for MonitoredItemsPreferenceKey();
  OUTLINED_FUNCTION_4_230();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_52_3();
  v35 = sub_1E42021F4();
  v12 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v34 = &v29 - v20;
  sub_1E4203944();
  (*(v6 + 16))(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v3);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v31;
  *(v22 + 24) = v23;
  (*(v6 + 32))(v22 + v21, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  OUTLINED_FUNCTION_2_45();
  v24 = swift_getWitnessTable();
  sub_1E4203044();

  OUTLINED_FUNCTION_1_35();
  v25 = swift_getWitnessTable();
  v39 = v24;
  v40 = v25;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v26 = *(v14 + 16);
  v27 = v34;
  v26(v34, v18, v12);
  v28 = *(v14 + 8);
  v28(v18, v12);
  v26(v38, v27, v12);
  v28(v27, v12);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FA360C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v34 = v4;
  v35 = v5;
  OUTLINED_FUNCTION_13_168();
  swift_getWitnessTable();
  v29[1] = sub_1E42020F4();
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v36 = type metadata accessor for MonitoredItemsPreferenceKey();
  v31 = v6;
  v32 = v7;
  type metadata accessor for VisibleItemsPreferenceKey();
  OUTLINED_FUNCTION_3_232();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_118();
  sub_1E42024F4();
  sub_1E42013A4();
  OUTLINED_FUNCTION_2_230();
  WitnessTable = swift_getWitnessTable();
  v39[10] = MEMORY[0x1E6981580];
  v39[11] = WitnessTable;
  v33 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_41_41();
  sub_1E4201034();
  sub_1E4206374();
  v39[9] = *(v6 + 8);
  OUTLINED_FUNCTION_7_207();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_118();
  sub_1E4202454();
  OUTLINED_FUNCTION_52_3();
  v9 = sub_1E42013A4();
  OUTLINED_FUNCTION_4_230();
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_200();
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_216();
  v39[7] = v10;
  v39[8] = swift_getWitnessTable();
  v39[0] = v36;
  v39[1] = v9;
  v39[2] = v30;
  v39[3] = swift_getWitnessTable();
  sub_1E42024E4();
  v11 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v29 - v19;
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = v32;
  *(v21 + 24) = v22;
  v23 = *(v1 + 16);
  *(v21 + 32) = *v1;
  *(v21 + 48) = v23;
  *(v21 + 64) = *(v1 + 32);
  *(v21 + 80) = *(v1 + 48);
  OUTLINED_FUNCTION_37_1();
  (*(v24 + 16))(v39, v1, v3);
  OUTLINED_FUNCTION_2_45();
  v25 = swift_getWitnessTable();
  sub_1E4203DA4();
  sub_1E42032E4();

  OUTLINED_FUNCTION_12_153();
  v26 = swift_getWitnessTable();
  v37 = v25;
  v38 = v26;
  swift_getWitnessTable();
  v27 = *(v13 + 16);
  v27(v20, v17, v11);
  v28 = *(v13 + 8);
  v28(v17, v11);
  v27(v35, v20, v11);
  v28(v20, v11);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FA39C8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v2 + 16);
  OUTLINED_FUNCTION_26_27();
  v28 = v5;
  v29 = sub_1E4205C34();
  v9 = *(v3 + 24);
  v27[2] = v8;
  v27[3] = v9;
  v27[4] = v7;
  v27[5] = v1;
  v27[6] = &v29;
  v26[2] = v8;
  v26[3] = v9;
  v26[4] = sub_1E3FA4A14;
  v26[5] = v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D4E8);
  OUTLINED_FUNCTION_32_10();
  v10 = sub_1E4205D34();
  WitnessTable = swift_getWitnessTable();
  sub_1E3CA543C(sub_1E3FA4A24, v26, v10, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  v14 = *(v1 + 33);
  v15 = v29;
  if (v14)
  {
    v28 = v29;
    MEMORY[0x1EEE9AC00](v13);
    v24 = v8;
    v25 = v9;
    OUTLINED_FUNCTION_26_108();
    sub_1E4206374();

    OUTLINED_FUNCTION_15_6();
    swift_getWitnessTable();
    v16 = sub_1E4206214();
  }

  else
  {

    v16 = v15;
  }

  v28 = v16;
  MEMORY[0x1EEE9AC00](v17);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v24 = v9;
  v25 = v19;
  OUTLINED_FUNCTION_26_108();
  v20 = sub_1E4206374();
  v21 = swift_getWitnessTable();
  sub_1E3CA543C(sub_1E3FA4A48, &v23, v20, v8, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FA3C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a5;
  v59 = a1;
  v60 = a6;
  v58 = OUTLINED_FUNCTION_26_27();
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v56 - v8);
  v10 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E4202064();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  sub_1E4200E64();
  v62 = v25;
  v63 = v24;
  type metadata accessor for CGRect(0);
  sub_1E4200EB4();
  v27 = v64;
  v26 = v65;
  v28 = v66;
  v29 = v67;
  v30 = 1.0 - *(a4 + 24);
  v68.origin.x = OUTLINED_FUNCTION_10_155();
  MinX = CGRectGetMinX(v68);
  v69.origin.x = OUTLINED_FUNCTION_10_155();
  MaxX = CGRectGetMaxX(v69);
  v70.origin.x = OUTLINED_FUNCTION_10_155();
  MinY = CGRectGetMinY(v70);
  v57 = v27;
  v71.origin.x = OUTLINED_FUNCTION_10_155();
  MaxY = CGRectGetMaxY(v71);
  v35 = *(a4 + 16);
  if (v35 == sub_1E42026E4())
  {
    v36 = MaxX - v28 * v30;
    v37 = MinX + v28 * v30 <= 0.0;
    v38 = v63;
  }

  else
  {
    v36 = MaxY - v29 * v30;
    v37 = v29 * v30 + MinY <= 0.0;
    v38 = v62;
  }

  if (v37 || v36 >= v38)
  {
    return;
  }

  if ((*(a4 + 32) & 1) == 0)
  {
    if (v28 == 0.0 || v29 == 0.0)
    {
      return;
    }

LABEL_19:
    v74.origin.x = v57;
    v74.origin.y = v26;
    v74.size.width = v28;
    v74.size.height = v29;
    v53 = CGRectGetMinX(v74);
    v54 = v59;
    v55 = *(v58 + 48);
    *v9 = v53;
    (*(*(v60 - 8) + 16))(v9 + v55, v54);
    OUTLINED_FUNCTION_32_10();
    sub_1E4206374();
    sub_1E4206354();
    return;
  }

  sub_1E4202284();
  sub_1E4200E84();
  v56 = v40;
  v62 = v41;
  v63 = v42;
  (*(v19 + 8))(v23, v17);
  (*(v12 + 104))(v16, *MEMORY[0x1E697E668], v10);
  sub_1E4200E54();
  v44 = v64;
  v43 = v65;
  v46 = v66;
  v45 = v67;
  (*(v12 + 8))(v16, v10);
  v47 = sub_1E42026E4();
  v48 = v44;
  v49 = v43;
  v50 = v46;
  v51 = v45;
  if (v35 == v47)
  {
    CGRectGetHeight(*&v48);
    v72.origin.x = OUTLINED_FUNCTION_27_90();
    Height = CGRectGetHeight(v72);
  }

  else
  {
    CGRectGetWidth(*&v48);
    v73.origin.x = OUTLINED_FUNCTION_27_90();
    Height = CGRectGetWidth(v73);
  }

  if (v28 != 0.0 && v29 != 0.0 && v45 == Height)
  {
    goto LABEL_19;
  }
}

uint64_t sub_1E3FA4028(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D4E8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t sub_1E3FA40B4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1E69E77B0];
  v4 = *(*a2 + *MEMORY[0x1E69E77B0]);
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  (*(v6 + 16))(&v17 - v13, v12);
  v15 = *(v4 + 48);
  *v10 = *v14;
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(&v10[v15], &v14[v15]);
  swift_getAtKeyPath();
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_1E3FA42D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(type metadata accessor for TrackItemVisibilityModifier() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D4E8);
  OUTLINED_FUNCTION_52_3();
  v7 = OUTLINED_FUNCTION_26_27();
  sub_1E4207954();
  swift_allocObject();
  sub_1E42062E4();
  v9 = v8;
  v10 = *(v7 + 48);
  OUTLINED_FUNCTION_37_1();
  (*(v11 + 16))(v9, v2 + v6, v4);
  *(v9 + v10) = a1;
  sub_1E4206374();

  result = sub_1E4205CB4();
  *a2 = result;
  return result;
}

uint64_t sub_1E3FA4488@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *a1;
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_18_129(v5);
  *(v6 + 80) = v7;
  *(v6 + 88) = v4;
  OUTLINED_FUNCTION_26_108();
  v8 = type metadata accessor for ScrollViewItemsVisibilityModifier();
  OUTLINED_FUNCTION_37_1();
  v20 = *(v9 + 16);
  v20(&v28, v2 + 32, v8);
  OUTLINED_FUNCTION_41_41();
  type metadata accessor for VisibleItemsPreferenceKey();

  OUTLINED_FUNCTION_3_232();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_52_3();
  sub_1E42024F4();
  sub_1E42013A4();
  OUTLINED_FUNCTION_2_230();
  WitnessTable = swift_getWitnessTable();
  v26 = MEMORY[0x1E6981580];
  v27 = WitnessTable;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v22 = sub_1E4201024();
  *&v23 = v11;
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_18_129(v12);
  *(v14 + 80) = v15;
  (v20)(&v28, v2 + 32, v8, v13);
  OUTLINED_FUNCTION_32_10();
  sub_1E4201034();
  OUTLINED_FUNCTION_6_200();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_41_41();
  sub_1E4206374();
  v25 = *(v3 + 8);
  OUTLINED_FUNCTION_7_207();
  swift_getWitnessTable();
  sub_1E4203164();

  v22 = v31;
  v23 = v32;
  v24 = v33;
  OUTLINED_FUNCTION_52_3();
  sub_1E4202454();
  OUTLINED_FUNCTION_32_10();
  v16 = sub_1E42013A4();
  OUTLINED_FUNCTION_5_216();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_1();
  v18 = *(v17 + 16);
  v18(&v28, &v22, v16);

  v32 = v29;
  v31 = v28;
  v33 = v30;
  v18(a2, &v31, v16);
}

uint64_t sub_1E3FA47A8@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_108();
  type metadata accessor for ScrollViewItemsVisibilityModifier();
  sub_1E3FA39C8();
  v9[0] = sub_1E42036E4();
  OUTLINED_FUNCTION_26_108();
  type metadata accessor for VisibleItemsPreferenceKey();
  OUTLINED_FUNCTION_3_232();
  swift_getWitnessTable();
  sub_1E4202D54();

  v6[0] = v7;
  v6[1] = v8;
  OUTLINED_FUNCTION_41_41();
  sub_1E42024F4();
  v2 = sub_1E42013A4();
  OUTLINED_FUNCTION_2_230();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_1();
  v4 = *(v3 + 16);
  v4(v9, v6, v2);

  v7 = v9[0];
  v8 = v9[1];
  v4(a1, &v7, v2);
}

uint64_t objectdestroy_9Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E3FA4988()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_32_10();
  sub_1E4206374();

  OUTLINED_FUNCTION_15_6();
  swift_getWitnessTable();
  sub_1E4206384();
  v1();
}

void sub_1E3FA4A8C()
{
  v1 = v0;
  v2 = sub_1E3FA4DB4();
  v3 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol;
  OUTLINED_FUNCTION_15_0();
  if (*(v1 + v3))
  {
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if (*(v1 + v3))
  {
    v5 = "onDistributionChange";
  }

  else
  {
    v5 = "tributeFeaturedAccessibility";
  }

  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x70))(v4, v5 | 0x8000000000000000);

  v7 = sub_1E3FA4FA4();
  v8 = v7;
  if (*(v1 + v3))
  {
    v9 = "rectangle.split.rightthird";
  }

  else
  {
    v9 = "tributeEquallyAccessibility";
  }

  (*((*v6 & *v7) + 0x70))(0xD000000000000013, v9 | 0x8000000000000000);
}

uint64_t sub_1E3FA4BB4()
{
  v1 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

void sub_1E3FA4BEC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1 & 1;
  sub_1E3FA4A8C();
}

void (*sub_1E3FA4C3C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3FA4C90;
}

void sub_1E3FA4C90(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3FA4A8C();
  }
}

uint64_t sub_1E3FA4CC4()
{
  v1 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

uint64_t sub_1E3FA4CFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  OUTLINED_FUNCTION_21();
  result = (*(v4 + 216))();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution;
    swift_beginAccess();
    v6(*(v1 + v7));
    return sub_1E34AF594(v6);
  }

  return result;
}

id sub_1E3FA4DB4()
{
  v1 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton);
LABEL_8:
    v18 = v2;
    return v3;
  }

  v4 = v0;
  OUTLINED_FUNCTION_21();
  (*(v5 + 120))();
  type metadata accessor for MultiPlayerDistributionButton();
  v6 = sub_1E3F68CF8();
  OUTLINED_FUNCTION_0_306();
  OUTLINED_FUNCTION_1_267();
  v19[2] = v7;
  v19[3] = &block_descriptor_146;
  v8 = _Block_copy(v19);
  v9 = v6;
  [v9 setSelectActionHandler_];
  _Block_release(v8);

  v10 = objc_opt_self();
  v11 = v9;
  result = [v10 sharedInstance];
  if (result)
  {
    v13 = result;
    sub_1E3741090(0xD00000000000002CLL, 0x80000001E428B8D0, result);
    v15 = v14;

    if (v15)
    {
      v16 = sub_1E4205ED4();
    }

    else
    {
      v16 = 0;
    }

    [v11 setAccessibilityLabel_];

    v17 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1E3FA4FA4()
{
  v1 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___equalDistributionButton;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___equalDistributionButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___equalDistributionButton);
LABEL_8:
    v18 = v2;
    return v3;
  }

  v4 = v0;
  OUTLINED_FUNCTION_21();
  (*(v5 + 120))();
  type metadata accessor for MultiPlayerDistributionButton();
  v6 = sub_1E3F68CF8();
  OUTLINED_FUNCTION_0_306();
  OUTLINED_FUNCTION_1_267();
  v19[2] = v7;
  v19[3] = &block_descriptor_13_3;
  v8 = _Block_copy(v19);
  v9 = v6;
  [v9 setSelectActionHandler_];
  _Block_release(v8);

  v10 = objc_opt_self();
  v11 = v9;
  result = [v10 sharedInstance];
  if (result)
  {
    v13 = result;
    sub_1E3741090(0xD00000000000002BLL, 0x80000001E428B940, result);
    v15 = v14;

    if (v15)
    {
      v16 = sub_1E4205ED4();
    }

    else
    {
      v16 = 0;
    }

    [v11 setAccessibilityLabel_];

    v17 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FA5188()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_16_0();
  sub_1E34AF604(v0);
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E3FA51DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_onDistributionChange);
  OUTLINED_FUNCTION_3_0();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1E34AF594(v6);
}

id sub_1E3FA5284()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution) = 1;
  OUTLINED_FUNCTION_6_201(&OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton);
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_onDistributionChange);
  v2 = type metadata accessor for MultiPlayerDistributionPicker();
  *v1 = 0;
  v1[1] = 0;
  v8 = v2;
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v8);
  sub_1E3FA5538();

  return v6;
}

uint64_t sub_1E3FA5370(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution) = 1;
  OUTLINED_FUNCTION_6_201(&OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton);
  v2 = (v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_onDistributionChange);
  *v2 = 0;
  v2[1] = 0;
  sub_1E34AF594(0);
  type metadata accessor for MultiPlayerDistributionPicker();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1E3FA5484()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 144))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E429DCC0;
  if (v1 == 1)
  {
    *(v2 + 32) = sub_1E3FA4DB4();
    v3 = sub_1E3FA4FA4();
  }

  else
  {
    *(v2 + 32) = sub_1E3FA4FA4();
    v3 = sub_1E3FA4DB4();
  }

  *(v2 + 40) = v3;
  return v2;
}

void sub_1E3FA5538()
{
  v1 = v0;
  v2 = sub_1E3FA4DB4();
  [v1 addSubview_];

  v3 = sub_1E3FA4FA4();
  [v1 addSubview_];

  v4 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton;
  [*(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton) setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v6 = *(v1 + v4);
  v5();
  v7 = OUTLINED_FUNCTION_9_171();
  (*(v8 + 136))(v7);

  v9 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___equalDistributionButton;
  [*(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___equalDistributionButton) setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = *(v1 + v9);
  v5();
  v11 = OUTLINED_FUNCTION_9_171();
  (*(v12 + 136))(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E42A6DD0;
  v14 = [*(v1 + v4) widthAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v13 + 32) = v15;
  v16 = OUTLINED_FUNCTION_5_217([*(v1 + v4) heightAnchor]);

  *(v13 + 40) = v16;
  v17 = [*(v1 + v4) centerXAnchor];
  v18 = [v1 centerXAnchor];
  if ([v1 vuiIsRTL])
  {
    v19 = 40.0;
  }

  else
  {
    v19 = -40.0;
  }

  v20 = [v17 constraintEqualToAnchor:v18 constant:v19];

  *(v13 + 48) = v20;
  v21 = [*(v1 + v4) centerYAnchor];
  v22 = [v1 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v13 + 56) = v23;
  v24 = OUTLINED_FUNCTION_5_217([*(v1 + v9) widthAnchor]);

  *(v13 + 64) = v24;
  v25 = OUTLINED_FUNCTION_5_217([*(v1 + v9) heightAnchor]);

  *(v13 + 72) = v25;
  v26 = [*(v1 + v9) centerXAnchor];
  v27 = [v1 centerXAnchor];
  if ([v1 vuiIsRTL])
  {
    v28 = -40.0;
  }

  else
  {
    v28 = 40.0;
  }

  v29 = objc_opt_self();
  v30 = [v26 constraintEqualToAnchor:v27 constant:v28];

  *(v13 + 80) = v30;
  v31 = [*(v1 + v9) centerYAnchor];
  v32 = [v1 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v13 + 88) = v33;
  sub_1E3B51B98();
  v34 = sub_1E42062A4();

  [v29 activateConstraints_];
}

id sub_1E3FA59E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPlayerDistributionPicker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3FA5A78()
{
  result = qword_1ECF3D510;
  if (!qword_1ECF3D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D510);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MultiPlayerDistributionPicker.FeaturedDistributionSymbol(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3FA5BB0()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3FA5BFC(char a1)
{
  if (!a1)
  {
    return 0x6569766F6DLL;
  }

  if (a1 == 1)
  {
    return 0x776F68537674;
  }

  return 0x65646F73697065;
}

uint64_t sub_1E3FA5C58(unsigned __int8 a1, char a2)
{
  v2 = 0x6569766F6DLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x776F68537674;
    }

    else
    {
      v4 = 0x65646F73697065;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x6569766F6DLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x776F68537674;
    }

    else
    {
      v2 = 0x65646F73697065;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3FA5D64()
{
  sub_1E4206014();
}

uint64_t sub_1E3FA5DF0()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3FA5E88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3FA5BB0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FA5EB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FA5BFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E3FA5EE4()
{
  v1 = 0;
  v2 = 0;
  v0 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  sub_1E3C3DE00(v0);
  sub_1E3C3DE00(v0);
  sub_1E3C3DE00(v0);
  sub_1E3C2FCB8(&v1, &unk_1ECF71948);
}

void *sub_1E3FA5FC8()
{
  if (_MergedGlobals_258 != -1)
  {
    OUTLINED_FUNCTION_13_169();
  }

  return &unk_1ECF71948;
}

uint64_t sub_1E3FA6008()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    v3 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v1 = sub_1E3BBD964(3, v4, v3, v5);
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6090()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    v3 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v1 = sub_1E3BBD964(10, v4, v3, v5);
    *(v2 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6118()
{
  result = TVAppFeature.isEnabled.getter(10);
  v1 = 20.0;
  if (result)
  {
    v1 = 22.0;
  }

  qword_1ECF719A8 = *&v1;
  return result;
}

uint64_t *sub_1E3FA614C()
{
  if (qword_1EE28C928 != -1)
  {
    OUTLINED_FUNCTION_34_72();
  }

  return &qword_1ECF719A8;
}

uint64_t sub_1E3FA618C()
{
  result = TVAppFeature.isEnabled.getter(10);
  v1 = 20.0;
  if (result)
  {
    v1 = 22.0;
  }

  qword_1ECF719B0 = *&v1;
  return result;
}

uint64_t *sub_1E3FA61C0()
{
  if (qword_1EE29C350 != -1)
  {
    swift_once();
  }

  return &qword_1ECF719B0;
}

uint64_t sub_1E3FA621C()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6284()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 184) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA62EC()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 192) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6354()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 200) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA63E8(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 208) = a1;
}

uint64_t sub_1E3FA6450(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 216) = a1;
}

uint64_t sub_1E3FA648C()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 224) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6500()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    type metadata accessor for RolesSummaryViewLayout();
    v1 = sub_1E3A2349C();
    *(v0 + 232) = v1;
  }

  return v1;
}

id sub_1E3FA6574()
{
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = *(v0 + 240);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 240);
    *(v0 + 240) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E3FA65E4(uint64_t a1)
{
  v2 = *(v1 + 240);
  *(v1 + 240) = a1;
}

id sub_1E3FA65F0()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 248);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 248);
    *(v0 + 248) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E3FA6660(uint64_t a1)
{
  v2 = *(v1 + 248);
  *(v1 + 248) = a1;
}

id sub_1E3FA666C()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 256);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 256);
    *(v0 + 256) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E3FA66DC(uint64_t a1)
{
  v2 = *(v1 + 256);
  *(v1 + 256) = a1;
}

id sub_1E3FA66E8()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = *(v0 + 264);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 264);
    *(v0 + 264) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E3FA6758(uint64_t a1)
{
  v2 = *(v1 + 264);
  *(v1 + 264) = a1;
}

uint64_t sub_1E3FA6764()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 272) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6804(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v2 + 280) = a1;
  *(v2 + 288) = a2 & 1;
  return result;
}

uint64_t sub_1E3FA684C()
{
  if (*(v0 + 296))
  {
    v1 = *(v0 + 296);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 296) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA68EC(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 304) = a1;
}

uint64_t sub_1E3FA6954(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 312) = a1;
}

uint64_t sub_1E3FA6990()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 320);
  }

  else
  {
    type metadata accessor for ProductGradientLayout();
    v1 = sub_1E3886290(0);
    *(v0 + 320) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6A44(char a1)
{
  v2 = v1;
  *(v2 + 98) = 3;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 1;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  swift_beginAccess();
  *(v2 + 98) = a1;
  TVAppFeature.isEnabled.getter(10);
  type metadata accessor for ButtonLayout();
  *(v2 + 208) = sub_1E3BBB724();
  *(v2 + 216) = sub_1E3BBB724();
  v4 = sub_1E3C2F9A0();

  OUTLINED_FUNCTION_15_9();
  (*(v5 + 336))(0x4059000000000000, 0);
  type metadata accessor for BannerUberBackgroundViewLayout();
  OUTLINED_FUNCTION_9_2();
  v7 = *(v6 + 2488);
  v8 = v7();
  v9 = sub_1E3DF1318(0, v8);
  swift_beginAccess();
  *(v4 + 304) = v9;

  sub_1E3FA87E0();
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    (*(v10 + 2248))();
    OUTLINED_FUNCTION_111();
    (*(v11 + 2600))();
  }

  sub_1E3E5FD88();
  OUTLINED_FUNCTION_111();
  v13 = *(v12 + 2008);
  v15 = v14;
  v13();
  OUTLINED_FUNCTION_2_1();
  v17 = (*(v16 + 2048))();

  v18 = *(*v17 + 872);
  v58 = v15;
  v18(v15);

  (v13)(v19);
  sub_1E3952C58();
  v59[0] = v20;
  v59[1] = v21;
  v59[2] = v22;
  v59[3] = v23;
  v60 = 0;
  OUTLINED_FUNCTION_8();
  (*(v24 + 184))(v59);

  OUTLINED_FUNCTION_9_2();
  v26 = (*(v25 + 1936))();
  sub_1E3C37CBC(v26, 43);

  OUTLINED_FUNCTION_9_2();
  v28 = (*(v27 + 1960))();
  sub_1E3C37CBC(v28, 23);

  OUTLINED_FUNCTION_9_2();
  v30 = (*(v29 + 1984))();
  sub_1E3C37CBC(v30, 15);

  v32 = (v13)(v31);
  sub_1E3C37CBC(v32, 60);

  OUTLINED_FUNCTION_9_2();
  v34 = (*(v33 + 2032))();
  sub_1E3C37CBC(v34, 61);

  OUTLINED_FUNCTION_9_2();
  v36 = (*(v35 + 2224))();
  sub_1E3C37CBC(v36, 9);

  OUTLINED_FUNCTION_9_2();
  v38 = (*(v37 + 2056))();
  sub_1E3C37CBC(v38, 12);

  OUTLINED_FUNCTION_9_2();
  v40 = (*(v39 + 2080))();
  sub_1E3C37CBC(v40, 13);

  OUTLINED_FUNCTION_9_2();
  v42 = (*(v41 + 2104))();
  sub_1E3C37CBC(v42, 27);

  OUTLINED_FUNCTION_9_2();
  v44 = (*(v43 + 2176))();
  sub_1E3C37CBC(v44, 3);

  OUTLINED_FUNCTION_9_2();
  v46 = (*(v45 + 2200))();
  sub_1E3C37CBC(v46, 34);

  OUTLINED_FUNCTION_9_2();
  v48 = (*(v47 + 2152))();
  sub_1E3C37CBC(v48, 11);

  OUTLINED_FUNCTION_9_2();
  v50 = (*(v49 + 2320))();
  sub_1E3C37CBC(v50, 93);

  OUTLINED_FUNCTION_9_2();
  v52 = (*(v51 + 2248))();
  sub_1E3C37EC8(v52, &unk_1F5D902E0);

  OUTLINED_FUNCTION_9_2();
  v54 = (*(v53 + 2440))();
  sub_1E3C37CBC(v54, 39);

  v56 = (v7)(v55);
  sub_1E3C37CBC(v56, 35);

  return v4;
}

uint64_t sub_1E3FA71EC()
{
  *(v0 + 98) = 3;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 1;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  v1 = TVAppFeature.isEnabled.getter(10);
  type metadata accessor for ButtonLayout();
  if (v1)
  {
    j__OUTLINED_FUNCTION_18();
    v2 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    *(v0 + 208) = sub_1E3BBD964(1, v3, v2, v4);
    j__OUTLINED_FUNCTION_18();
    v5 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v8 = sub_1E3BBD964(2, v6, v5, v7);
  }

  else
  {
    *(v0 + 208) = sub_1E3BBB724();
    v8 = sub_1E3BBB724();
  }

  *(v0 + 216) = v8;

  return sub_1E3C2F9A0();
}

void sub_1E3FA72E0(void *a1, char a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_8();
  v12 = (*(v11 + 2512))();
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_111();
    v15 = (*(v14 + 432))();
    (*(*v13 + 152))(a1, v15, v16 & 1, a3, a4, a5);
  }

  type metadata accessor for LayoutGrid();
  v17 = sub_1E3A2579C(a3);
  if ((sub_1E3A24FDC(v17) & 1) == 0)
  {
    [objc_opt_self() vui:a3 paddingForWindowWidth:?];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    if (sub_1E373F630())
    {
      v33 = 352.0;
    }

    else
    {
      v33 = 305.0;
    }

    OUTLINED_FUNCTION_14_0();
    *(v5 + 280) = v33;
    *(v5 + 288) = 0;
    if (sub_1E373F630())
    {
      v34 = sub_1E3952BE0(v26, v28, v30, v32);
      v35 = a3 - (v34 + v34);
      v36 = *(*v5 + 2440);
      v36();
      OUTLINED_FUNCTION_15_9();
      v38 = COERCE_DOUBLE((*(v37 + 432))());
      v40 = v39;

      if (v40)
      {
        v24 = v35;
        if (v33 >= v35)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v24 = v35 / v38;
        if (v33 >= v35 / v38)
        {
          goto LABEL_18;
        }
      }

      (v36)(v41);
    }

    else
    {
      OUTLINED_FUNCTION_111();
      (*(v42 + 2440))();
    }

    OUTLINED_FUNCTION_30();
    (*(v43 + 432))();

    v24 = v33;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_111();
  (*(v18 + 2440))();
  OUTLINED_FUNCTION_30();
  *&v20 = COERCE_DOUBLE((*(v19 + 432))());
  v22 = v21;

  v23 = *&v20;
  if (v22)
  {
    v23 = 1.0;
  }

  v24 = a3 / v23;
LABEL_18:
  OUTLINED_FUNCTION_111();
  v44 += 305;
  v45 = *v44;
  (*v44)();
  OUTLINED_FUNCTION_8();
  (*(v46 + 208))();

  v48 = (v45)(v47);
  (*(*v48 + 312))(ceil(v24), 0);

  sub_1E3A2579C(a3);
  if ((TVAppFeature.isEnabled.getter(10) & 1) != 0 && ((type metadata accessor for CanonicalBannerInfoView(), v49 = OUTLINED_FUNCTION_38(), (sub_1E39A6A94(v49, a3) & 1) == 0) || [a1 isAXLargeEnabled]))
  {
    v50 = 4;
    v51 = 4;
  }

  else
  {
    v50 = 1;
    v51 = 1;
  }

  OUTLINED_FUNCTION_111();
  v53 = (*(v52 + 2368))();
  v54 = [v53 textLayout];

  [v54 setAlignment_];
  OUTLINED_FUNCTION_9_2();
  (*(v55 + 1960))();
  OUTLINED_FUNCTION_2_1();
  (*(v56 + 1984))(v51);

  OUTLINED_FUNCTION_9_2();
  (*(v57 + 1984))();
  OUTLINED_FUNCTION_2_1();
  (*(v58 + 1984))(v51);

  if (TVAppFeature.isEnabled.getter(10))
  {
    if (a2)
    {
      type metadata accessor for ViewLayout();
      sub_1E3C8BE74();
      v59 = OUTLINED_FUNCTION_63_33();
      v60 = sub_1E3DEFC38(v59);
    }

    else
    {
      v60 = *sub_1E3E5FD88();
    }

    v61 = v60;
    sub_1E3FA7984(v61);
  }

  v62 = a1;
  sub_1E3C2AE10();
  v64 = v63;
  OUTLINED_FUNCTION_9_2();
  (*(v65 + 1640))();
}

void sub_1E3FA7984(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v2 += 293;
  v3 = *v2;
  v4 = (*v2)();
  v5 = [v4 textLayout];

  [v5 setColor_];
  v6 = v3();
  [v6 setBadgeTintColor_];

  v7 = v3();
  v8 = [v7 immersiveTextLayout];

  [v8 setColor_];
  v9 = v3();
  v10 = [v9 highMotionTextLayout];

  [v10 setColor_];
}

void sub_1E3FA7AD8(uint64_t a1, void *a2, unsigned int a3)
{
  sub_1E3C35CF4(a1, a2);
  if (TVAppFeature.isEnabled.getter(10))
  {
    OUTLINED_FUNCTION_111();
    (*(v6 + 2560))();
    sub_1E3886EEC(a1, a2, a3);

    v7 = sub_1E3A24FDC(a1);
    OUTLINED_FUNCTION_9_2();
    v9 = (*(v8 + 2344))();
    [v9 updateLayoutForPhoneSizeClass_];

    OUTLINED_FUNCTION_9_2();
    v11 = (*(v10 + 2368))();
    [v11 updateLayoutForPhoneSizeClass_];
  }
}

uint64_t sub_1E3FA7C44(uint64_t a1)
{
  result = TVAppFeature.isEnabled.getter(10);
  if (result)
  {
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    OUTLINED_FUNCTION_111();
    (*(v3 + 312))(0x4049000000000000, 0);
    OUTLINED_FUNCTION_9_2();
    (*(v4 + 2048))();
    OUTLINED_FUNCTION_2_1();
    (*(v5 + 1696))(16);
  }

  OUTLINED_FUNCTION_111();
  (*(v6 + 2048))();
  OUTLINED_FUNCTION_30();
  (*(v7 + 1720))(12);
}

uint64_t sub_1E3FA7D9C(__n128 a1, __n128 a2)
{
  nullsub_1(a1, a2);
  result = TVAppFeature.isEnabled.getter(10);
  if (result)
  {
    result = sub_1E385050C();
    if (result)
    {
      type metadata accessor for TextBadgeLayout();
      result = swift_dynamicCastClass();
      if (result)
      {
        v4 = result;
        swift_beginAccess();
        v2[39] = v4;
        swift_retain_n();

        OUTLINED_FUNCTION_3_11();
        v6 = (*(v5 + 1872))();
        if (v6)
        {
          OUTLINED_FUNCTION_30();
          (*(v7 + 2024))(3, 0);
        }

        if ((*(*v2 + 2536))(v6))
        {
          sub_1E3952C58();
          *v45 = v8;
          *&v45[8] = v9;
          *&v45[16] = v10;
          *&v45[24] = v11;
          v45[32] = 0;
          sub_1E3952C58();
          v63 = v12;
          v64 = v13;
          v65 = v14;
          v66 = v15;
          v67 = 0;
          sub_1E3952C58();
          v58 = v16;
          v59 = v17;
          v60 = v18;
          v61 = v19;
          v62 = 0;
          sub_1E3952C58();
          v53 = v20;
          v54 = v21;
          v55 = v22;
          v56 = v23;
          v57 = 0;
          type metadata accessor for UIEdgeInsets();
          v25 = v24;
          sub_1E3C2FC98();
          OUTLINED_FUNCTION_51_47();
          v26 = sub_1E3C3DE00(v25);
          OUTLINED_FUNCTION_107(v26, v27, v28, v29, v30, v31, v32, v33, *v45, *&v45[8], *&v45[16], *&v45[24], *&v45[32], *&v45[40], *&v45[48], *&v45[56], *&v45[64], *&v45[72], *&v45[80], *&v45[88], *&v45[96], *&v45[104], *&v45[112], *&v45[120], *&v45[128], *&v45[136], *&v45[144], *&v45[152], *&v45[160], *&v45[168], *&v45[176], *&v45[184], *&v45[192], *&v45[200], *&v45[208], *&v45[216], *&v45[224], *&v45[232], v46, v47, v48, v49, v50, v51, v52);
          sub_1E3C2FCB8(v45, __src);
          memcpy(v45, __src, 0xE9uLL);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_14();
          v42 = OUTLINED_FUNCTION_30_3(v34, v35, v36, v37, v38, v39, v40, v41, *v45);
          v43(v42, 0);
        }

        v44 = *sub_1E3810A0C();

        sub_1E3C37EC8(v4, v44);
      }
    }
  }

  return result;
}

uint64_t sub_1E3FA8038(double a1)
{
  v2 = objc_opt_self();
  if ([v2 isTV])
  {
    return TVAppFeature.isEnabled.getter(10);
  }

  result = [v2 isVision];
  if ((result & 1) == 0)
  {
    result = [v2 isMac];
    if ((result & 1) == 0)
    {
      type metadata accessor for LayoutGrid();
      v4 = sub_1E3A2579C(a1);
      return sub_1E3A24FDC(v4);
    }
  }

  return result;
}

uint64_t sub_1E3FA8108()
{
}

id *sub_1E3FA81F8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3FA82F0()
{
  v0 = sub_1E3FA81F8();

  return MEMORY[0x1EEE6BDC0](v0, 328, 7);
}

uint64_t sub_1E3FA8320()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  v81[0] = 21;
  LOBYTE(v101) = 25;
  LOBYTE(v96) = 15;
  LOBYTE(v91) = 22;
  sub_1E3C2FC98();
  v89 = v90;
  v1 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v82) = v88;
  OUTLINED_FUNCTION_29_70(v1, v2, v3, v4, v5, v6, v7, v8, *v81);
  OUTLINED_FUNCTION_60_35();
  OUTLINED_FUNCTION_14();
  v10 = *(v9 + 1600);
  v19 = OUTLINED_FUNCTION_30_3(v11, v12, v13, v14, v15, v16, v17, v18, *v81);
  v10(v19, 48);
  v81[0] = 0;
  LOBYTE(v101) = 5;
  LOBYTE(v96) = 7;
  sub_1E3C2FC98();
  LOBYTE(v90) = 22;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v88) = v89;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  __src[239] = v82;
  sub_1E3C2FCB8(v81, __src);
  v20 = OUTLINED_FUNCTION_60_35();
  v28 = OUTLINED_FUNCTION_30_3(v20, v21, v22, v23, v24, v25, v26, v27, *v81);
  v10(v28, 54);
  sub_1E3C8BE74();
  v29 = OUTLINED_FUNCTION_63_33();
  sub_1E3DEFBE8(v29);
  OUTLINED_FUNCTION_36();
  (*(v30 + 1984))(1);
  OUTLINED_FUNCTION_36();
  v31 = OUTLINED_FUNCTION_8_5();
  v32(v31);
  OUTLINED_FUNCTION_36();
  v33 = OUTLINED_FUNCTION_10_7();
  v34(v33);
  OUTLINED_FUNCTION_36();
  v35 = OUTLINED_FUNCTION_10_7();
  v36(v35);
  sub_1E3952C58();
  *v81 = v37;
  *&v81[8] = v38;
  *&v81[16] = v39;
  *&v81[24] = v40;
  v81[32] = 0;
  sub_1E3952C88();
  v101 = v41;
  v102 = v42;
  v103 = v43;
  v104 = v44;
  v105 = 0;
  sub_1E3952C58();
  v96 = v45;
  v97 = v46;
  v98 = v47;
  v99 = v48;
  v100 = 0;
  sub_1E3952C58();
  v91 = v49;
  v92 = v50;
  v93 = v51;
  v94 = v52;
  v95 = 0;
  type metadata accessor for UIEdgeInsets();
  v54 = v53;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_51_47();
  v55 = sub_1E3C3DE00(v54);
  OUTLINED_FUNCTION_107(v55, v56, v57, v58, v59, v60, v61, v62, *v81, *&v81[8], *&v81[16], *&v81[24], *&v81[32], *&v81[40], *&v81[48], *&v81[56], *&v81[64], *&v81[72], *&v81[80], *&v81[88], *&v81[96], *&v81[104], *&v81[112], *&v81[120], *&v81[128], *&v81[136], *&v81[144], *&v81[152], *&v81[160], *&v81[168], *&v81[176], *&v81[184], *&v81[192], *&v81[200], *&v81[208], *&v81[216], *&v81[224], *&v81[232], v82, v83, v84, v85, v86, v87, v88);
  OUTLINED_FUNCTION_29_70(v63, v64, v65, v66, v67, v68, v69, v70, *v81);
  memcpy(v81, __src, 0xE9uLL);
  v71 = OUTLINED_FUNCTION_18();
  v79 = OUTLINED_FUNCTION_30_3(v71, v72, v73, v74, v75, v76, v77, v78, *v81);
  v10(v79, 0);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for CanonicalBannerLayout.ContentType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CanonicalBannerLayout.ColumnWidth(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_6_105(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CanonicalBannerLayout.ColumnWidth(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1E3FA879C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_6_105(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3FA87B0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1E3FA87E0()
{
  v8 = v0;
  if (_MergedGlobals_258 != -1)
  {
    OUTLINED_FUNCTION_13_169();
  }

  memcpy(__dst, &unk_1ECF71948, 0x59uLL);
  v9 = MEMORY[0x1E69E7DE0];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 1600))(__dst, 81, v11 & 1, v9);
  OUTLINED_FUNCTION_9_2();
  v13 = *(v12 + 1936);
  v13();
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1808))(1);

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    v13();
    OUTLINED_FUNCTION_50_51();
    LOBYTE(v710) = 0;
    *&__src[0] = 0x404E000000000000;
    BYTE8(__src[0]) = 0;
    *&v688[0] = 0x4056800000000000;
    BYTE8(v688[0]) = 0;
    *&v724 = 0;
    BYTE8(v724) = 0;
    *&v719 = 0x404E000000000000;
    BYTE8(v719) = 0;
    v15 = OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00(v15);
    v707 = v715;
    v708 = BYTE8(v715);
    v16 = OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_49_57(v16, v17);
    v18 = OUTLINED_FUNCTION_25_96();
    memcpy(v18, v19, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v20 = OUTLINED_FUNCTION_43_4();
    v21(v20, 8);

    OUTLINED_FUNCTION_9_2();
    v2 = *(v22 + 1960);
    v2();
    LOBYTE(v709) = 27;
    LOBYTE(__src[0]) = 2;
    LOBYTE(v688[0]) = 2;
    LOBYTE(v724) = 27;
    LOBYTE(v719) = 2;
    v23 = OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00(v23);
    OUTLINED_FUNCTION_42_65();
    v24 = OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_49_57(v24, v25);
    OUTLINED_FUNCTION_10_156();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v26 = OUTLINED_FUNCTION_16_141();
    v27(v26);

    (v2)(v28);
    OUTLINED_FUNCTION_2_1();
    (*(v29 + 1792))(10);

    (v2)(v30);
    OUTLINED_FUNCTION_2_1();
    (*(v31 + 2176))(4, 0);

    (v2)(v32);
    OUTLINED_FUNCTION_2_1();
    v33 = OUTLINED_FUNCTION_52_50();
    v34(v33);

    v36 = (v2)(v35);
    v37 = sub_1E3E5FD88();
    v38 = *v37;
    v3 = (*v36 + 680);
    v39 = *v3;
    v40 = *v37;
    v39(v38);

    (v2)(v41);
    OUTLINED_FUNCTION_2_1();
    v42 = OUTLINED_FUNCTION_8_5();
    v43(v42);

    (v2)(v44);
    OUTLINED_FUNCTION_2_1();
    v45 = OUTLINED_FUNCTION_8_5();
    v46(v45);

    OUTLINED_FUNCTION_9_2();
    v1 = (v47 + 1984);
    v48 = *(v47 + 1984);
    v48();
    LOBYTE(v709) = 27;
    LOBYTE(__src[0]) = 17;
    LOBYTE(v688[0]) = 2;
    LOBYTE(v724) = 27;
    LOBYTE(v719) = 2;
    v49 = OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00(v49);
    OUTLINED_FUNCTION_42_65();
    v50 = OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_49_57(v50, v51);
    OUTLINED_FUNCTION_10_156();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v52 = OUTLINED_FUNCTION_16_141();
    v53(v52);

    (v48)(v54);
    OUTLINED_FUNCTION_2_1();
    (*(v55 + 1792))(10);

    (v48)(v56);
    OUTLINED_FUNCTION_2_1();
    (*(v57 + 2176))(4, 0);

    (v48)(v58);
    v642 = v1;
    OUTLINED_FUNCTION_2_1();
    v59 = OUTLINED_FUNCTION_52_50();
    v60(v59);

    (v48)(v61);
    v709 = *v37;
    *&__src[0] = v709;
    v62 = v709;
    *&v688[0] = *sub_1E3E5FDEC();
    *&v724 = 0;
    v63 = sub_1E3755B54();
    v64 = *&v688[0];
    v65 = OUTLINED_FUNCTION_48_51();
    sub_1E3C3DE00(v65);
    *&v715 = v719;
    sub_1E3C3DE00(v63);
    *&v704 = v707;
    v66 = OUTLINED_FUNCTION_1_268();
    sub_1E3C2FCB8(v66, v67);
    OUTLINED_FUNCTION_28_83();
    OUTLINED_FUNCTION_14();
    v68 = OUTLINED_FUNCTION_43_4();
    v69(v68, 21);

    v48();
    OUTLINED_FUNCTION_2_1();
    v70 = OUTLINED_FUNCTION_8_5();
    v71(v70);

    (v48)(v72);
    OUTLINED_FUNCTION_2_1();
    v73 = OUTLINED_FUNCTION_8_5();
    v74(v73);
  }

  v75 = TVAppFeature.isEnabled.getter(10);
  OUTLINED_FUNCTION_111();
  v76 += 251;
  v77 = *v76;
  v78 = v76;
  (*v76)();
  OUTLINED_FUNCTION_15_9();
  (*(v79 + 2048))();

  if (v75)
  {
    v709 = 0;
    *&__src[0] = *sub_1E3E5FD88();
    v80 = *&__src[0];
    *&v688[0] = *sub_1E3E5FDEC();
    sub_1E3755B54();
    v81 = *&v688[0];
    OUTLINED_FUNCTION_71_31();
    *&v719 = v724;
    v82 = OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00(v82);
    v707 = v715;
    v83 = OUTLINED_FUNCTION_57_35();
    sub_1E3C3DE00(v83);
    *&v701 = v704;
    v84 = OUTLINED_FUNCTION_2_231();
    OUTLINED_FUNCTION_29_94(v84, v85);
    v642 = v78;
    OUTLINED_FUNCTION_28_83();
    OUTLINED_FUNCTION_14();
    v86 = OUTLINED_FUNCTION_43_4();
    v87(v86, 21);

    v88 = v78;
    v77();
    OUTLINED_FUNCTION_15_9();
    (*(v89 + 2048))();
    OUTLINED_FUNCTION_38();

    OUTLINED_FUNCTION_37_74(27);
    LOBYTE(v688[0]) = 2;
    OUTLINED_FUNCTION_71_31();
    LOBYTE(v719) = v724;
    v90 = OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00(v90);
    OUTLINED_FUNCTION_42_65();
    v91 = OUTLINED_FUNCTION_57_35();
    sub_1E3C3DE00(v91);
    LOBYTE(v701) = v704;
    v92 = OUTLINED_FUNCTION_2_231();
    OUTLINED_FUNCTION_29_94(v92, v93);
    OUTLINED_FUNCTION_10_156();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v94 = OUTLINED_FUNCTION_16_141();
    v95(v94);

    (v77)(v96);
    OUTLINED_FUNCTION_15_9();
    (*(v97 + 2048))();
    OUTLINED_FUNCTION_38();

    LOBYTE(v709) = 11;
    OUTLINED_FUNCTION_53_48();
  }

  else
  {
    v98 = *sub_1E3E5FDEC();
    OUTLINED_FUNCTION_8();
    v88 = *(v99 + 680);
    v100 = v98;
    (v88)(v98);

    (v77)(v101);
    OUTLINED_FUNCTION_15_9();
    (*(v102 + 2048))();
    OUTLINED_FUNCTION_38();

    OUTLINED_FUNCTION_37_74(27);
    LOBYTE(v688[0]) = 15;
    OUTLINED_FUNCTION_71_31();
    LOBYTE(v719) = v724;
    v103 = OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00(v103);
    OUTLINED_FUNCTION_42_65();
    v104 = OUTLINED_FUNCTION_57_35();
    sub_1E3C3DE00(v104);
    LOBYTE(v701) = v704;
    v105 = OUTLINED_FUNCTION_2_231();
    OUTLINED_FUNCTION_29_94(v105, v106);
    OUTLINED_FUNCTION_10_156();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v107 = OUTLINED_FUNCTION_16_141();
    v108(v107);

    (v77)(v109);
    OUTLINED_FUNCTION_15_9();
    (*(v110 + 2048))();
    OUTLINED_FUNCTION_38();

    LOBYTE(v709) = 11;
    LOBYTE(__src[0]) = 11;
    LOBYTE(v688[0]) = 10;
  }

  OUTLINED_FUNCTION_71_31();
  LOBYTE(v719) = v724;
  v111 = OUTLINED_FUNCTION_40_67();
  sub_1E3C3DE00(v111);
  OUTLINED_FUNCTION_42_65();
  v112 = OUTLINED_FUNCTION_57_35();
  sub_1E3C3DE00(v112);
  LOBYTE(v701) = v704;
  v113 = OUTLINED_FUNCTION_2_231();
  OUTLINED_FUNCTION_29_94(v113, v114);
  OUTLINED_FUNCTION_10_156();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v115 = OUTLINED_FUNCTION_43_4();
  v116(v115, 54);

  OUTLINED_FUNCTION_111();
  v117 += 254;
  v118 = *v117;
  (*v117)();
  OUTLINED_FUNCTION_30();
  (*(v119 + 2048))();
  OUTLINED_FUNCTION_30_6();
  v120 = sub_1E3E5FDEC();
  v121 = *v120;
  v122 = *(*v88 + 85);
  v123 = *v120;
  v122(v121);

  (v118)(v124);
  OUTLINED_FUNCTION_2_1();
  (*(v125 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  (*(v126 + 1696))(19);

  (v118)(v127);
  OUTLINED_FUNCTION_2_1();
  (*(v128 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  (*(v129 + 1792))(10);

  (v118)(v130);
  OUTLINED_FUNCTION_2_1();
  (*(v131 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  (*(v132 + 1984))(5);

  (v118)(v133);
  OUTLINED_FUNCTION_2_1();
  (*(v134 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  v135 = OUTLINED_FUNCTION_10_7();
  v136(v135);

  (v118)(v137);
  OUTLINED_FUNCTION_2_1();
  (*(v138 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  v139 = OUTLINED_FUNCTION_10_7();
  v140(v139);

  (v118)(v141);
  OUTLINED_FUNCTION_2_1();
  (*(v142 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  v143 = OUTLINED_FUNCTION_10_7();
  v144(v143);

  TVAppFeature.isEnabled.getter(10);
  v118();
  OUTLINED_FUNCTION_15_9();
  (*(v145 + 2048))();

  sub_1E3952C78();
  v661 = v146;
  v662 = v147;
  v663 = v148;
  v664 = v149;
  LOBYTE(v665) = 0;
  OUTLINED_FUNCTION_8();
  (*(v150 + 160))();

  (v118)(v151);
  OUTLINED_FUNCTION_2_1();
  (*(v152 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  (*(v153 + 1720))(12);

  (v118)(v154);
  OUTLINED_FUNCTION_15_9();
  (*(v155 + 2096))();

  if (qword_1EE28C928 != -1)
  {
    OUTLINED_FUNCTION_34_72();
  }

  v156 = qword_1ECF719A8;
  OUTLINED_FUNCTION_8();
  (*(v157 + 208))(v156, 0);

  (v118)(v158);
  OUTLINED_FUNCTION_2_1();
  v160 = (*(v159 + 2096))();

  (*(*v160 + 312))(v156, 0);

  (v118)(v161);
  OUTLINED_FUNCTION_2_1();
  (*(v162 + 2096))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  (*(v163 + 440))(0x3FF0000000000000, 0);

  (v118)(v164);
  OUTLINED_FUNCTION_2_1();
  (*(v165 + 2096))();
  OUTLINED_FUNCTION_30_6();
  v166.n128_u64[0] = 0.5;
  v656 = j__OUTLINED_FUNCTION_7_78(v166);
  v657 = v167;
  v658 = v168;
  v659 = v169;
  LOBYTE(v660) = 0;
  (*(*v156 + 1856))(&v656);

  (v118)(v170);
  OUTLINED_FUNCTION_2_1();
  (*(v171 + 2096))();
  OUTLINED_FUNCTION_30_6();
  v172 = *sub_1E3E60CFC();
  v173 = *(*v156 + 1832);
  v174 = v172;
  v173(v172);

  (v118)(v175);
  OUTLINED_FUNCTION_2_1();
  (*(v176 + 2096))();
  OUTLINED_FUNCTION_30_6();
  sub_1E39537A8();
  v651 = v177;
  v652 = v178;
  v653 = v179;
  v654 = v180;
  LOBYTE(v655) = 0;
  (*(*v156 + 560))(&v651);

  OUTLINED_FUNCTION_9_2();
  v182 = *(v181 + 2056);
  v182();
  OUTLINED_FUNCTION_2_1();
  (*(v183 + 1696))(15);

  (v182)(v184);
  OUTLINED_FUNCTION_2_1();
  (*(v185 + 1792))(10);

  (v182)(v186);
  OUTLINED_FUNCTION_2_1();
  (*(v187 + 2176))(4, 0);

  (v182)(v188);
  OUTLINED_FUNCTION_2_1();
  v189 = OUTLINED_FUNCTION_52_50();
  v190(v189);

  v192 = (v182)(v191);
  v193 = *v120;
  v194 = *(*v192 + 680);
  v195 = v193;
  v194(v193);

  (v182)(v196);
  OUTLINED_FUNCTION_2_1();
  v197 = OUTLINED_FUNCTION_8_5();
  v198(v197);

  (v182)(v199);
  OUTLINED_FUNCTION_2_1();
  v200 = OUTLINED_FUNCTION_8_5();
  v201(v200);

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    v202 += 278;
    v203 = *v202;
    (*v202)();
    OUTLINED_FUNCTION_30();
    (*(v204 + 1696))(17);

    OUTLINED_FUNCTION_9_2();
    switch((*(v205 + 1912))())
    {
      case 2u:

        goto LABEL_15;
      case 3u:
        goto LABEL_13;
      default:
        OUTLINED_FUNCTION_68_32();
        v206 = sub_1E42079A4();

        if (v206)
        {
LABEL_15:
          v207 = 0;
        }

        else
        {
LABEL_13:
          v207 = 3;
        }

        v203();
        OUTLINED_FUNCTION_30();
        (*(v208 + 1984))(4);

        v210 = (v203)(v209);
        v211 = *sub_1E3E5FD88();
        v212 = *(*v210 + 680);
        v213 = v211;
        v212(v211);

        (v203)(v214);
        OUTLINED_FUNCTION_50_51();
        LOBYTE(v710) = 1;
        *&__src[0] = v207;
        OUTLINED_FUNCTION_54_48();
        *&v724 = 2;
        BYTE8(v724) = 0;
        v215 = MEMORY[0x1E69E6810];
        v216 = OUTLINED_FUNCTION_48_51();
        sub_1E3C3DE00(v216);
        OUTLINED_FUNCTION_26_109();
        sub_1E3C3DE00(v215);
        *&v704 = v707;
        BYTE8(v704) = v708;
        v217 = OUTLINED_FUNCTION_2_231();
        OUTLINED_FUNCTION_69_29(v217, v218);
        v219 = OUTLINED_FUNCTION_25_96();
        memcpy(v219, v220, 0x59uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v221 = OUTLINED_FUNCTION_43_4();
        v222(v221, 62);

        OUTLINED_FUNCTION_9_2();
        v224 = *(v223 + 2152);
        v224();
        OUTLINED_FUNCTION_2_1();
        (*(v225 + 1696))(21);

        v227 = (v224)(v226);
        sub_1E3755B54();
        OUTLINED_FUNCTION_2_7();
        v228 = sub_1E4206F24();
        v4 = 0x3FE6666666666666;
        v229 = [v228 colorWithAlphaComponent_];

        v230 = sub_1E4206F24();
        v231 = [v230 colorWithAlphaComponent_];

        v232 = sub_1E3E5F2F8(v229, v231);
        (*(*v227 + 680))(v232);

        (v224)(v233);
        OUTLINED_FUNCTION_2_1();
        (*(v234 + 1984))(1);

        (v224)(v235);
        OUTLINED_FUNCTION_2_1();
        v236 = OUTLINED_FUNCTION_10_7();
        v237(v236);

        break;
    }
  }

  v238 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v239 = sub_1E3755B54();
  OUTLINED_FUNCTION_2_7();
  v240 = sub_1E4206F24();
  v241 = [v240 colorWithAlphaComponent_];

  [v238 setShadowColor_];
  [v238 setShadowOffset_];
  [v238 setShadowBlurRadius_];
  OUTLINED_FUNCTION_9_2();
  v243 = *(v242 + 2440);
  v243();
  OUTLINED_FUNCTION_2_1();
  (*(v244 + 1808))(1);

  (v243)(v245);
  OUTLINED_FUNCTION_2_1();
  (*(v246 + 440))(0x3FFC71C71C71C71CLL, 0);

  (v243)(v247);
  OUTLINED_FUNCTION_2_1();
  (*(v248 + 2000))(0);

  TVAppFeature.isEnabled.getter(10);
  sub_1E39537A8();
  OUTLINED_FUNCTION_3();
  v243();
  v709 = v4;
  v710 = v5;
  v711 = v6;
  v712 = v7;
  LOBYTE(v713) = 0;
  v249 = *(MEMORY[0x1E69DDCE0] + 16);
  __src[0] = *MEMORY[0x1E69DDCE0];
  __src[1] = v249;
  LOBYTE(__src[2]) = 0;
  type metadata accessor for UIEdgeInsets();
  v251 = v250;
  v252 = sub_1E3C3DE00(v250);
  v260 = OUTLINED_FUNCTION_47_54(v252, v253, v254, v255, v256, v257, v258, v259, v615, v618, v620, v623, v627, v629, v632, v635, v638, v642, v646, v647, v648, v649, v650, v651, v652, v653, v654, v655, v656, v657, v658, v659, v660, v661, v662, v663, v664, v665, v666, v667, v668, v669, v670, v671, v672, *(&v672 + 1), v673, *(&v673 + 1), v674, v675, v676, *(&v676 + 1), v677, *(&v677 + 1), v678, v679, v680, v681, v682, v683, v684, v685, v686);
  sub_1E3C3DE00(v260);
  v261 = OUTLINED_FUNCTION_7_208();
  sub_1E3C3DE00(v261);
  OUTLINED_FUNCTION_12_154();
  sub_1E3C3DE00(v251);
  OUTLINED_FUNCTION_30_80();
  OUTLINED_FUNCTION_6_202();
  OUTLINED_FUNCTION_62_34();
  sub_1E3C2FCB8(v262, v263);
  v264 = OUTLINED_FUNCTION_25_96();
  memcpy(v264, v265, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v266 = OUTLINED_FUNCTION_43_4();
  v267(v266, 17);

  v268 = TVAppFeature.isEnabled.getter(10);
  if (v268)
  {
    v243();
    v269 = [objc_opt_self() whiteColor];
    v270 = [v269 colorWithAlphaComponent_];

    OUTLINED_FUNCTION_36();
    (*(v271 + 1832))(v270);

    v273 = (v243)(v272);
    __dst[0] = sub_1E3952CA4();
    __dst[1] = v274;
    __dst[2] = v275;
    __dst[3] = v276;
    LOBYTE(__dst[4]) = 0;
    (*(*v273 + 1856))(__dst);
  }

  (v243)(v268);
  OUTLINED_FUNCTION_30();
  v278 = *(v277 + 608);
  v279 = v238;
  v278(v238);

  (v243)(v280);
  OUTLINED_FUNCTION_2_1();
  (*(v281 + 632))(1);

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    v282 += 260;
    v283 = *v282;
    (*v282)();
    OUTLINED_FUNCTION_30();
    (*(v284 + 1696))(21);

    (v283)(v285);
    OUTLINED_FUNCTION_2_1();
    (*(v286 + 1792))(10);

    (v283)(v287);
    OUTLINED_FUNCTION_2_1();
    (*(v288 + 1984))(1);

    v290 = (v283)(v289);
    v291 = *sub_1E3E5FD88();
    v292 = *(*v290 + 680);
    v293 = v291;
    v292(v291);

    (v283)(v294);
    OUTLINED_FUNCTION_2_1();
    v295 = OUTLINED_FUNCTION_10_7();
    v296(v295);
  }

  OUTLINED_FUNCTION_111();
  v297 += 263;
  v298 = *v297;
  (*v297)();
  OUTLINED_FUNCTION_30();
  (*(v299 + 1696))(17);

  (v298)(v300);
  OUTLINED_FUNCTION_2_1();
  (*(v301 + 1792))(10);

  (v298)(v302);
  OUTLINED_FUNCTION_2_1();
  (*(v303 + 1984))(5);

  v305 = (v298)(v304);
  v306 = *sub_1E3E5FD88();
  v307 = *(*v305 + 680);
  v308 = v306;
  v307(v306);

  (v298)(v309);
  OUTLINED_FUNCTION_2_1();
  v310 = OUTLINED_FUNCTION_10_7();
  v311(v310);

  if (TVAppFeature.isEnabled.getter(10))
  {
    v298();
    sub_1E3952C58();
    v646 = v312;
    v647 = v313;
    v648 = v314;
    v649 = v315;
    LOBYTE(v650) = 0;
    OUTLINED_FUNCTION_8();
    (*(v316 + 160))(&v646);
  }

  result = TVAppFeature.isEnabled.getter(10);
  if (result)
  {
    OUTLINED_FUNCTION_111();
    (*(v318 + 2248))();
    OUTLINED_FUNCTION_39_62();
    LOBYTE(v713) = 1;
    __src[0] = xmmword_1E42E1CD0;
    memset(&__src[1], 0, 17);
    v688[0] = xmmword_1E42E1CE0;
    memset(&v688[1], 0, 17);
    v724 = xmmword_1E42E1CF0;
    v725 = 0;
    v726 = 0;
    v727 = 0;
    v719 = xmmword_1E42E1CE0;
    v721 = 0;
    v720 = 0;
    v722 = 0;
    v715 = xmmword_1E42E1D00;
    v717 = 0;
    v716 = 0;
    v718 = 0;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v319, v320);
    v321 = OUTLINED_FUNCTION_25_96();
    memcpy(v321, v322, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v323 = OUTLINED_FUNCTION_8_181();
    v324(v323);

    OUTLINED_FUNCTION_9_2();
    (*(v325 + 2008))();
    OUTLINED_FUNCTION_2_1();
    v327 = (*(v326 + 2048))();

    (*(*v327 + 1720))(12);

    OUTLINED_FUNCTION_9_2();
    v621 = v328 + 1960;
    v624 = *(v328 + 1960);
    v624();
    OUTLINED_FUNCTION_50_51();
    LOBYTE(v710) = 1;
    *&__src[0] = 0x4075400000000000;
    BYTE8(__src[0]) = 0;
    *&v688[0] = 0x4076800000000000;
    BYTE8(v688[0]) = 0;
    *&v724 = 0x4082C00000000000;
    BYTE8(v724) = 0;
    *&v719 = 0x4071800000000000;
    BYTE8(v719) = 0;
    *&v715 = 0x407C200000000000;
    BYTE8(v715) = 0;
    v329 = MEMORY[0x1E69E7DE0];
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v330, v331);
    v332 = OUTLINED_FUNCTION_25_96();
    memcpy(v332, v333, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_65_35();
    v334();

    OUTLINED_FUNCTION_9_2();
    v636 = v335 + 1984;
    v639 = *(v335 + 1984);
    v639();
    OUTLINED_FUNCTION_50_51();
    LOBYTE(v710) = 1;
    *&__src[0] = 0x4075400000000000;
    OUTLINED_FUNCTION_54_48();
    *&v724 = 0x4082C00000000000;
    BYTE8(v724) = 0;
    *&v719 = 0x4071800000000000;
    BYTE8(v719) = 0;
    *&v715 = 0x407C200000000000;
    BYTE8(v715) = 0;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v336, v337);
    v338 = OUTLINED_FUNCTION_25_96();
    memcpy(v338, v339, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_65_35();
    v340();

    OUTLINED_FUNCTION_9_2();
    v630 = v341 + 2056;
    v633 = *(v341 + 2056);
    v633();
    OUTLINED_FUNCTION_50_51();
    LOBYTE(v710) = 1;
    *&__src[0] = 0x4075400000000000;
    OUTLINED_FUNCTION_54_48();
    *&v724 = 0x4082C00000000000;
    BYTE8(v724) = 0;
    *&v719 = 0x4071800000000000;
    BYTE8(v719) = 0;
    *&v715 = 0x407C200000000000;
    BYTE8(v715) = 0;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v342, v343);
    v344 = OUTLINED_FUNCTION_25_96();
    memcpy(v344, v345, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_65_35();
    v346();

    OUTLINED_FUNCTION_9_2();
    v348 = *(v347 + 1936);
    v348();
    v709 = 0x406D600000000000;
    LOBYTE(v710) = 0;
    *&__src[0] = 0x407A400000000000;
    BYTE8(__src[0]) = 0;
    *&v688[0] = 0x406FE00000000000;
    BYTE8(v688[0]) = 0;
    OUTLINED_FUNCTION_70_29(0x4077800000000000);
    OUTLINED_FUNCTION_26_109();
    sub_1E3C3DE00(v329);
    *&v704 = v707;
    BYTE8(v704) = v708;
    v349 = OUTLINED_FUNCTION_17_136();
    sub_1E3C2FCB8(v349, v350);
    v351 = OUTLINED_FUNCTION_25_96();
    memcpy(v351, v352, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_65_35();
    v353();

    (v348)(v354);
    v709 = 0x404E000000000000;
    LOBYTE(v710) = 0;
    *&__src[0] = 0x405F800000000000;
    BYTE8(__src[0]) = 0;
    *&v688[0] = 0x4049000000000000;
    BYTE8(v688[0]) = 0;
    OUTLINED_FUNCTION_70_29(0x4057400000000000);
    OUTLINED_FUNCTION_26_109();
    sub_1E3C3DE00(v329);
    *&v704 = v707;
    BYTE8(v704) = v708;
    v355 = OUTLINED_FUNCTION_17_136();
    sub_1E3C2FCB8(v355, v356);
    v357 = OUTLINED_FUNCTION_25_96();
    memcpy(v357, v358, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v359 = OUTLINED_FUNCTION_43_4();
    v360(v359, 8);

    (v348)(v361);
    OUTLINED_FUNCTION_39_62();
    LOBYTE(v713) = 1;
    sub_1E3952C88();
    OUTLINED_FUNCTION_9_172(v362, v363, v364, v365);
    sub_1E3952C88();
    OUTLINED_FUNCTION_33_79();
    sub_1E3952C88();
    OUTLINED_FUNCTION_32_82(v366, v367, v368, v369);
    sub_1E3952C88();
    OUTLINED_FUNCTION_14_164(v370, v371, v372, v373);
    sub_1E3952C88();
    OUTLINED_FUNCTION_56_37(v374, v375, v376, v377);
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v378, v379);
    v380 = OUTLINED_FUNCTION_25_96();
    memcpy(v380, v381, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v382 = OUTLINED_FUNCTION_8_181();
    v383(v382);

    (v624)(v384);
    OUTLINED_FUNCTION_2_1();
    v385 = OUTLINED_FUNCTION_8_5();
    v386(v385);

    (v624)(v387);
    LOBYTE(v709) = 27;
    LOBYTE(__src[0]) = 2;
    LOBYTE(v688[0]) = 1;
    LOBYTE(v724) = 3;
    LOBYTE(v719) = 1;
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_42_65();
    v388 = OUTLINED_FUNCTION_1_268();
    sub_1E3C2FCB8(v388, v389);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v390 = OUTLINED_FUNCTION_16_141();
    v391(v390);

    v393 = (v624)(v392);
    v643 = sub_1E3E5FD88();
    v394 = *v643;
    v395 = *(*v393 + 680);
    v396 = *v643;
    v395(v394);

    (v624)(v397);
    OUTLINED_FUNCTION_39_62();
    LOBYTE(v713) = 1;
    sub_1E3952C88();
    OUTLINED_FUNCTION_9_172(v398, v399, v400, v401);
    sub_1E3952C88();
    OUTLINED_FUNCTION_33_79();
    sub_1E3952C88();
    OUTLINED_FUNCTION_32_82(v402, v403, v404, v405);
    sub_1E3952C88();
    OUTLINED_FUNCTION_14_164(v406, v407, v408, v409);
    v410 = OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00(v410);
    OUTLINED_FUNCTION_55_47();
    v411 = OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_49_57(v411, v412);
    v413 = OUTLINED_FUNCTION_25_96();
    memcpy(v413, v414, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v415 = OUTLINED_FUNCTION_8_181();
    v416(v415);

    (v624)(v417);
    LOBYTE(v709) = 0;
    LOBYTE(__src[0]) = 10;
    LOBYTE(v688[0]) = 10;
    LOBYTE(v724) = 7;
    LOBYTE(v719) = 10;
    LOBYTE(v715) = 7;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v418, v419);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v420 = OUTLINED_FUNCTION_43_4();
    v421(v420, 54);

    (v639)(v422);
    OUTLINED_FUNCTION_2_1();
    v423 = OUTLINED_FUNCTION_8_5();
    v424(v423);

    (v639)(v425);
    OUTLINED_FUNCTION_37_74(27);
    LOBYTE(v688[0]) = 2;
    LOBYTE(v724) = 7;
    LOBYTE(v719) = 1;
    LOBYTE(v715) = 2;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v426, v427);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v428 = OUTLINED_FUNCTION_16_141();
    v429(v428);

    (v639)(v430);
    OUTLINED_FUNCTION_50_51();
    *&__src[0] = *v643;
    v431 = *&__src[0];
    v625 = sub_1E3E5FDEC();
    *&v688[0] = *v625;
    *&v724 = *&v688[0];
    *&v719 = *v643;
    v432 = v719;
    *&v715 = *&v688[0];
    v433 = *&v688[0];
    v434 = v432;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v435, v436);
    v437 = __dst[0];
    v438 = __dst[1];
    v439 = __dst[2];
    v440 = __dst[3];
    v441 = __dst[4];
    v442 = __dst[5];
    v709 = __dst[0];
    v710 = __dst[1];
    v711 = __dst[2];
    v712 = __dst[3];
    v713 = __dst[4];
    v714 = __dst[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v443 = OUTLINED_FUNCTION_43_4();
    v444(v443, 21);

    v639();
    OUTLINED_FUNCTION_39_62();
    LOBYTE(v713) = 1;
    sub_1E3952C88();
    OUTLINED_FUNCTION_9_172(v445, v446, v447, v448);
    sub_1E3952C88();
    OUTLINED_FUNCTION_33_79();
    sub_1E3952C88();
    OUTLINED_FUNCTION_32_82(v449, v450, v451, v452);
    v453 = OUTLINED_FUNCTION_48_51();
    sub_1E3C3DE00(v453);
    v454 = OUTLINED_FUNCTION_7_208();
    sub_1E3C3DE00(v454);
    OUTLINED_FUNCTION_12_154();
    v455 = OUTLINED_FUNCTION_2_231();
    OUTLINED_FUNCTION_69_29(v455, v456);
    v457 = OUTLINED_FUNCTION_25_96();
    memcpy(v457, v458, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v459 = OUTLINED_FUNCTION_8_181();
    v460(v459);

    (v639)(v461);
    LOBYTE(v709) = 0;
    OUTLINED_FUNCTION_53_48();
    LOBYTE(v724) = 7;
    LOBYTE(v719) = 7;
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_42_65();
    v462 = OUTLINED_FUNCTION_1_268();
    sub_1E3C2FCB8(v462, v463);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v464 = OUTLINED_FUNCTION_43_4();
    v465(v464, 54);

    (v633)(v466);
    sub_1E3952C88();
    OUTLINED_FUNCTION_15_152(v467, v468, v469, v470);
    sub_1E3952C88();
    OUTLINED_FUNCTION_9_172(v471, v472, v473, v474);
    v475 = sub_1E3C2FC98();
    v483 = OUTLINED_FUNCTION_47_54(v475, v476, v477, v478, v479, v480, v481, v482, v616, 0x6569766F6DLL, v621, v625, v239, v630, v633, v636, v639, v643, v646, v647, v648, v649, v650, v651, v652, v653, v654, v655, v656, v657, v658, v659, v660, v661, v662, v663, v664, v665, v666, v667, v668, v669, v670, v671, v672, *(&v672 + 1), v673, *(&v673 + 1), v674, v675, v676, *(&v676 + 1), v677, *(&v677 + 1), v678, v679, v680, v681, v682, v683, v684, v685, v686);
    sub_1E3C3DE00(v483);
    v484 = OUTLINED_FUNCTION_7_208();
    sub_1E3C3DE00(v484);
    OUTLINED_FUNCTION_12_154();
    sub_1E3C3DE00(v251);
    OUTLINED_FUNCTION_30_80();
    v485 = OUTLINED_FUNCTION_23_93();
    sub_1E3C2FCB8(v485, v486);
    v487 = OUTLINED_FUNCTION_25_96();
    memcpy(v487, v488, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v489 = OUTLINED_FUNCTION_8_181();
    v490(v489);

    OUTLINED_FUNCTION_9_2();
    v492 = v491 + 2080;
    v493 = *(v491 + 2080);
    v493();
    sub_1E3952C88();
    OUTLINED_FUNCTION_15_152(v494, v495, v496, v497);
    sub_1E3952C88();
    OUTLINED_FUNCTION_9_172(v498, v499, v500, v501);
    sub_1E3952C88();
    OUTLINED_FUNCTION_33_79();
    sub_1E3952C88();
    OUTLINED_FUNCTION_32_82(v502, v503, v504, v505);
    OUTLINED_FUNCTION_48_51();
    sub_1E3C2FC98();
    v506 = OUTLINED_FUNCTION_7_208();
    sub_1E3C3DE00(v506);
    OUTLINED_FUNCTION_12_154();
    v507 = OUTLINED_FUNCTION_17_136();
    sub_1E3C2FCB8(v507, v508);
    v509 = OUTLINED_FUNCTION_25_96();
    memcpy(v509, v510, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v511 = OUTLINED_FUNCTION_8_181();
    v512(v511);

    v637 = v492;
    (v493)(v513);
    v640 = v493;
    OUTLINED_FUNCTION_37_74(14);
    LOBYTE(v688[0]) = 21;
    LOBYTE(v724) = 15;
    LOBYTE(v719) = 15;
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_42_65();
    v514 = OUTLINED_FUNCTION_6_202();
    sub_1E3C2FCB8(v514, v515);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v516 = OUTLINED_FUNCTION_16_141();
    v517(v516);

    (v493)(v518);
    v709 = *v644;
    *&__src[0] = *v626;
    v519 = *&__src[0];
    v520 = v709;
    v521 = v519;
    sub_1E3C3DE00(v239);
    *&v724 = *&v688[0];
    sub_1E3C3DE00(v239);
    *&v715 = v719;
    sub_1E3C3DE00(v239);
    *&v704 = v707;
    sub_1E3C3DE00(v239);
    *&v700 = v701;
    OUTLINED_FUNCTION_6_202();
    OUTLINED_FUNCTION_62_34();
    sub_1E3C2FCB8(v522, v523);
    v524 = __dst[0];
    v525 = __dst[1];
    v526 = __dst[2];
    v527 = __dst[3];
    v528 = __dst[4];
    v529 = __dst[5];
    v709 = __dst[0];
    v710 = __dst[1];
    v711 = __dst[2];
    v712 = __dst[3];
    v713 = __dst[4];
    v714 = __dst[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v530 = OUTLINED_FUNCTION_43_4();
    v531(v530, 21);

    v640();
    LOBYTE(v709) = 0;
    OUTLINED_FUNCTION_53_48();
    LOBYTE(v724) = 10;
    sub_1E3C3DE00(&qword_1F5D54AF8);
    LOBYTE(v715) = v719;
    sub_1E3C3DE00(&qword_1F5D54AF8);
    LOBYTE(v704) = v707;
    v532 = OUTLINED_FUNCTION_2_231();
    sub_1E3C2FCB8(v532, v533);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v534 = OUTLINED_FUNCTION_43_4();
    v535(v534, 54);

    OUTLINED_FUNCTION_9_2();
    v641 = *(v536 + 2344);
    v645 = v536 + 2344;
    v537 = v641();
    sub_1E3952C88();
    [v537 setMargin_];

    OUTLINED_FUNCTION_9_2();
    v539 = (*(v538 + 2368))();
    sub_1E3952C88();
    [v539 setMargin_];

    type metadata accessor for ViewLayout();
    sub_1E3C8BE74();
    v540 = OUTLINED_FUNCTION_63_33();
    v541 = sub_1E3DEFC38(v540);
    sub_1E3FA7984(v541);

    OUTLINED_FUNCTION_9_2();
    v543 = 0;
    switch((*(v542 + 1912))())
    {
      case 1u:
        v619 = 0x776F68537674;
        goto LABEL_26;
      case 2u:

        v543 = 1;
        break;
      case 3u:
        break;
      default:
LABEL_26:
        OUTLINED_FUNCTION_68_32();
        v543 = sub_1E42079A4();

        break;
    }

    OUTLINED_FUNCTION_111();
    v544 += 278;
    v545 = *v544;
    (*v544)();
    v697 = 0;
    v698 = 1;
    v695 = 0x4075400000000000;
    v696 = 0;
    v693 = 0x4076800000000000;
    v694 = 0;
    v546 = (v543 & 1) == 0;
    v547 = 0x4085280000000000;
    if (v543)
    {
      v547 = 0x408AE00000000000;
    }

    v691 = v547;
    v692 = 0;
    v689 = 0x4071800000000000;
    v690 = 0;
    v548 = 0x4079000000000000;
    if (v543)
    {
      v548 = 0x4082580000000000;
    }

    __dst[0] = v548;
    LOBYTE(__dst[1]) = 0;
    v549 = MEMORY[0x1E69E7DE0];
    if (v546)
    {
      v550 = 2;
    }

    else
    {
      v550 = 0;
    }

    if (v546)
    {
      v551 = 2;
    }

    else
    {
      v551 = 4;
    }

    sub_1E3C2FCB8(&v697, __src);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v552 + 1600))(__dst, 4, v553 & 1, v549);

    v555 = (v545)(v554);
    v556 = v641();
    [v556 margin];
    OUTLINED_FUNCTION_3();

    *&v724 = v4;
    *(&v724 + 1) = v5;
    v725 = v6;
    v726 = v7;
    v727 = 0;
    (*(*v555 + 160))(&v724);

    (v545)(v557);
    v686 = 0;
    v687 = 1;
    v684 = v550;
    LOBYTE(v685) = 0;
    v682 = v550;
    LOBYTE(v683) = 0;
    v680 = 4;
    LOBYTE(v681) = 0;
    __dst[0] = v551;
    LOBYTE(__dst[1]) = 0;
    v709 = 2;
    LOBYTE(v710) = 0;
    v558 = MEMORY[0x1E69E6810];
    sub_1E3C2FCB8(&v686, v688);
    memcpy(__dst, v688, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v559 + 1600))(__dst, 62, v560 & 1, v558);

    (v545)(v561);
    LOBYTE(v709) = 17;
    LOBYTE(v719) = 14;
    LOBYTE(v715) = 22;
    LOBYTE(v707) = 15;
    LOBYTE(v704) = 15;
    sub_1E3C2FC98();
    LOBYTE(v700) = v701;
    v562 = OUTLINED_FUNCTION_23_93();
    sub_1E3C2FCB8(v562, v563);
    OUTLINED_FUNCTION_10_156();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v564 = OUTLINED_FUNCTION_16_141();
    v565(v564);

    (v545)(v566);
    sub_1E3C8BE74();
    v567 = OUTLINED_FUNCTION_63_33();
    sub_1E3DEFBE8(v567);

    (v545)(v568);
    OUTLINED_FUNCTION_2_1();
    (*(v569 + 2392))(1);

    OUTLINED_FUNCTION_9_2();
    (*(v570 + 2440))();
    sub_1E3952C58();
    OUTLINED_FUNCTION_15_152(v571, v572, v573, v574);
    sub_1E3952C58();
    OUTLINED_FUNCTION_14_164(v575, v576, v577, v578);
    OUTLINED_FUNCTION_40_67();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_55_47();
    v579 = OUTLINED_FUNCTION_57_35();
    sub_1E3C3DE00(v579);
    v701 = v704;
    v702 = v705;
    v703 = v706;
    sub_1E3C3DE00(v251);
    OUTLINED_FUNCTION_51_47();
    v580 = sub_1E3C3DE00(v251);
    OUTLINED_FUNCTION_107(v580, v581, v582, v583, v584, v585, v586, v587, v617, v619, v622, v626, v628, v631, v634, v637, v641, v645, v646, v647, v648, v649, v650, v651, v652, v653, v654, v655, v656, v657, v658, v659, v660, v661, v662, v663, v664, v665, v666, v667, v668, v669, v670, v671, v672);
    v588 = OUTLINED_FUNCTION_23_93();
    sub_1E3C2FCB8(v588, v589);
    v590 = OUTLINED_FUNCTION_25_96();
    memcpy(v590, v591, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v592 = OUTLINED_FUNCTION_8_181();
    v593(v592);

    OUTLINED_FUNCTION_9_2();
    (*(v594 + 2320))();
    sub_1E3952C88();
    OUTLINED_FUNCTION_15_152(v595, v596, v597, v598);
    sub_1E3952C88();
    OUTLINED_FUNCTION_14_164(v599, v600, v601, v602);
    sub_1E3952C88();
    OUTLINED_FUNCTION_56_37(v603, v604, v605, v606);
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_12_154();
    sub_1E3C3DE00(v251);
    OUTLINED_FUNCTION_30_80();
    sub_1E3C3DE00(v251);
    v672 = v676;
    v673 = v677;
    LOBYTE(v674) = v678;
    v607 = OUTLINED_FUNCTION_23_93();
    sub_1E3C2FCB8(v607, v608);
    v609 = OUTLINED_FUNCTION_25_96();
    memcpy(v609, v610, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v611 = OUTLINED_FUNCTION_8_181();
    v612(v611);

    type metadata accessor for TextLayout();
    *(v8 + 176) = sub_1E3FA8320();

    OUTLINED_FUNCTION_9_2();
    [(*(v613 + 2152))() copyWithZone_];
    OUTLINED_FUNCTION_30_6();
    sub_1E4207264();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_25_96();
    if (swift_dynamicCast())
    {
      v614 = v709;
    }

    else
    {
      v614 = sub_1E383BCC0();
    }

    *(v8 + 184) = v614;
  }

  return result;
}

void OUTLINED_FUNCTION_32_82(double a1, double a2, double a3, double a4)
{
  *(v4 - 160) = a1;
  *(v4 - 152) = a2;
  *(v4 - 144) = a3;
  *(v4 - 136) = a4;
  *(v4 - 128) = 0;
}

void OUTLINED_FUNCTION_56_37(double a1, double a2, double a3, double a4)
{
  *&STACK[0x480] = a1;
  *&STACK[0x488] = a2;
  *&STACK[0x490] = a3;
  *&STACK[0x498] = a4;
  LOBYTE(STACK[0x4A0]) = 0;
}

void OUTLINED_FUNCTION_69_29(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_70_29@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;
  *(v1 - 152) = 0;

  return sub_1E3C2FC98();
}

uint64_t sub_1E3FAC790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  if (!a2)
  {

    v12 = sub_1E3C27528();

    if (v12)
    {
      type metadata accessor for TextLayout();
      v5 = swift_dynamicCastClass();
      if (!v5)
      {
      }
    }

    else
    {
      v5 = 0;
    }
  }

  result = sub_1E3FAC85C(v8);
  *a4 = a1;
  *(a4 + 8) = v5;
  *(a4 + 16) = a3;
  *(a4 + 24) = result;
  *(a4 + 26) = BYTE2(result);
  *(a4 + 32) = v11;
  *(a4 + 40) = v10 & 1;
  return result;
}

uint64_t sub_1E3FAC85C(uint64_t a1)
{
  if (!a1)
  {
    return 460551;
  }

  v2 = *(*a1 + 1560);

  LOBYTE(v2) = v2(v3);

  v4 = *(*a1 + 456);

  v6 = v4(v5);

  v7 = *(*a1 + 1976);

  v9 = v7(v8);

  v10 = *(*a1 + 1808);

  v10(v11);

  return v2 | (v6 << 8) | (v9 << 16);
}

void sub_1E3FAC9E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for InternalTextView();
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D518);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v15 = *v2;
  v14 = v2[1];
  v16 = *(v2 + 16);
  v17 = v5[10];
  *&v7[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  OUTLINED_FUNCTION_8_182();
  v18 = v5[11];
  *&v7[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  OUTLINED_FUNCTION_8_182();
  v19 = v5[12];
  *&v7[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428);
  OUTLINED_FUNCTION_8_182();
  v20 = &v7[v5[13]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  *v7 = v15;

  v21 = v14;
  if (!v14)
  {
    v21 = sub_1E3C27528();
    if (v21)
    {
      type metadata accessor for TextLayout();
      OUTLINED_FUNCTION_20_2();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {

        v21 = 0;
      }
    }
  }

  *(v7 + 1) = v21;
  v7[16] = v16;
  *(v7 + 24) = *(v2 + 3);
  v7[40] = *(v2 + 40);
  sub_1E3FAE630(v7, v10);
  sub_1E3FAE630(v10, v13);
  sub_1E3FAE694(v13, a1);

  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for InternalTextView()
{
  result = qword_1EE2A2F60;
  if (!qword_1EE2A2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3FACC60(int a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  if (a1 != 7)
  {
    if (a4 == 7)
    {
      return 0;
    }

    sub_1E37F99D4();
    if ((sub_1E4205E84() & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (BYTE1(a1) == 7)
    {
      if (BYTE1(a4) != 7)
      {
        return 0;
      }
    }

    else
    {
      if (BYTE1(a4) == 7)
      {
        return 0;
      }

      sub_1E3793D00();
      if ((sub_1E4205E84() & 1) == 0)
      {
        return 0;
      }
    }

    if (BYTE2(a1) == 7)
    {
      if (BYTE2(a4) != 7)
      {
        return 0;
      }
    }

    else
    {
      if (BYTE2(a4) == 7)
      {
        return 0;
      }

      sub_1E376C3B8();
      if ((sub_1E4205E84() & 1) == 0)
      {
        return 0;
      }
    }

    if (a3)
    {
      if ((a6 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a6 & 1) != 0 || *&a2 != *&a5)
    {
      return 0;
    }

    return 1;
  }

  if (a4 == 7)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1E3FACE10(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewModel();
  if ((static ViewModel.== infix(_:_:)(*a1, *a2) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a1 + 24) | (*(a1 + 26) << 16);
  v9 = *(a2 + 24) | (*(a2 + 26) << 16);

  return sub_1E3FACC60(v8, v4, v5, v9, v6, v7);
}

void sub_1E3FACEC0(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v69 = v4;
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v68 = v6 - v5;
  v67 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v65 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v62 = v10 - v9;
  v61 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v60 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v59 = v14 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_0_10();
  v64 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v53 - v17;
  v18 = *v1;
  swift_beginAccess();
  v19 = v18[36];
  v20 = *(*v18 + 320);

  v22 = (v20)(v21);
  if (v23)
  {

    type metadata accessor for Accessibility();
    v20();
    sub_1E40A7DC8();
    v57 = v24;
    v58 = v25;
  }

  else
  {
    v58 = 0;
    v57 = v22;
  }

  v56 = sub_1E3CB6974(*(v1 + 8));
  sub_1E4201C14();
  v26 = OUTLINED_FUNCTION_6_203();
  v28 = v27;
  v30 = v29;
  MEMORY[0x1EEE9AC00](v26);
  v53 = v2;
  v35 = sub_1E3FAE49C(v32, v33, v31 & 1, v34, sub_1E3FAEBE8, (&v55 - 4), v19);
  v54 = v35;
  v37 = v36;
  v55 = v36;
  v39 = v38;
  v41 = v40;
  sub_1E37434B8(v26, v28, v30 & 1);

  v72 = v35;
  v73 = v37;
  LOBYTE(v35) = v39 & 1;
  v74 = v39 & 1;
  v75 = v41;
  v42 = type metadata accessor for InternalTextView();
  v43 = v59;
  sub_1E3746E10(v59);
  v44 = v62;
  sub_1E374709C(v62);
  v45 = *(v2 + 16);
  v46 = v68;
  sub_1E39305C4(v68);
  v47 = sub_1E38D5E2C(*(v2 + *(v42 + 44)), *(v2 + *(v42 + 44) + 8));
  v48 = MEMORY[0x1E6981138];
  v49 = v63;
  v50 = v45;
  v51 = MEMORY[0x1E6981148];
  sub_1E37B6028(v56, v43, v44, v50, v46, v47 & 1, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v63);
  (*(v69 + 8))(v46, v70);
  (*(v65 + 8))(v44, v67);
  (*(v60 + 8))(v43, v61);
  sub_1E37434B8(v54, v55, v35);

  v72 = v51;
  v73 = v48;
  OUTLINED_FUNCTION_2_232();
  swift_getOpaqueTypeConformance2();
  v52 = v66;
  sub_1E3E03180();

  (*(v64 + 8))(v49, v52);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FAD410(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1E41FE1B4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_5();
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v231 = *a1;
  v233 = v12;
  v16 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 40);
  switch(*(a2 + 48))
  {
    case 0:
      v236 = *a2;
      v237 = v15;
      v20 = v15;
      v21 = sub_1E32822E0();

      sub_1E4202C44();
      OUTLINED_FUNCTION_1_269();
      v22 = sub_1E4202BF4();
      goto LABEL_13;
    case 1:
      v236 = *a2;
      v237 = v15;
      v20 = v15;
      v21 = sub_1E32822E0();

      sub_1E4202C44();
      OUTLINED_FUNCTION_1_269();
      v22 = sub_1E4202C14();
LABEL_13:
      v80 = v22;
      v81 = v23;
      v82 = v24;
      OUTLINED_FUNCTION_7_209();
      OUTLINED_FUNCTION_3_233();
      sub_1E4202BD4();
      OUTLINED_FUNCTION_1_269();
      sub_1E37434B8(v80, v81, v82 & 1);

      *a5 = v21;
      *(a5 + 8) = v20;
      *(a5 + 16) = a4 & 1;
      *(a5 + 24) = v19;
      goto LABEL_53;
    case 2:
      v225 = *(a2 + 16);
      v227 = *(a2 + 24);
      v221 = *(a2 + 32);
      v61 = *a3;
      LOBYTE(v234) = 2;
      v62 = *(*v61 + 776);
      v63 = v15;

      v62(&v236, &v234, &unk_1F5D5DD98, &off_1F5D5CA38);
      if (v238)
      {
        if (OUTLINED_FUNCTION_13_170())
        {
          if (v234)
          {
            v64 = sub_1E32870AC();
            v218 = *((*MEMORY[0x1E69E7D40] & **v64) + 0x58);
            v65 = *v64;
            v66 = v63;
            v67 = v218(v16, v63);
            v69 = v68;
            sub_1E3FAECBC(v16, v66, v225, v227, v221, v19, 2);

            v16 = v67;
            v63 = v69;
          }
        }
      }

      else
      {
        sub_1E329505C(&v236);
      }

      v236 = v16;
      v237 = v63;
      sub_1E32822E0();
      sub_1E4202C44();
      OUTLINED_FUNCTION_1_269();
      v92 = OUTLINED_FUNCTION_14_165();
      v94 = v93;
      v96 = v95;
      OUTLINED_FUNCTION_7_209();
      *a5 = v92;
      *(a5 + 8) = v94;
      *(a5 + 16) = v96 & 1;
      *(a5 + 24) = v16;
      goto LABEL_53;
    case 3:
      v219 = a5;
      v70 = *(*v16 + 392);
      v213 = *(a2 + 8);
      v226 = *(a2 + 16);
      v228 = *(a2 + 24);
      v222 = *(a2 + 32);
      OUTLINED_FUNCTION_11_172();
      sub_1E3FAEC14(v71, v72, v73, v74, v75, v76, v77);

      v211 = v70;
      if (v70(v78))
      {
        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        v79 = swift_dynamicCastClass();
        if (!v79)
        {
        }
      }

      else
      {
        v79 = 0;
      }

      v97 = OUTLINED_FUNCTION_1_36();
      v98 = (*(*v16 + 1000))(0, v97);
      v216 = v19;
      if (v99 == 255)
      {
        goto LABEL_23;
      }

      if (v99)
      {
        sub_1E379098C(v98, v99);
LABEL_23:
        v103 = 0;
      }

      else
      {
        v100 = v98;
        v208 = v98;
        if ([v98 type] == 1)
        {
          v101 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v102 = [v100 name];
          sub_1E4205F14();

          v103 = sub_1E3D525D8();
        }

        else
        {
          v177 = [v100 name];
          v206 = sub_1E4205F14();
          v179 = v178;

          if (a4)
          {
            v180 = objc_opt_self();
            v181 = *(*a4 + 2408);

            v183 = v181(v182);
            v184 = [v180 vui:v183 fontFromTextLayout:?];

            if (v184)
            {
              if (v79)
              {
                v185 = *(*v79 + 2016);

                v187 = v185(v186);
                LOBYTE(v185) = v188;

                if (v185)
                {
                  v187 = -1;
                }
              }

              else
              {
                v187 = -1;
              }

              v101 = [objc_opt_self() configurationWithFont:v184 scale:v187];

              sub_1E3280A90(0, &qword_1EE23AE00);
              if (v101)
              {
                v189 = v101;
              }
            }

            else
            {

              sub_1E3280A90(0, &qword_1EE23AE00);
              v101 = 0;
            }
          }

          else
          {
            sub_1E3280A90(0, &qword_1EE23AE00);
            v101 = 0;
          }

          v103 = sub_1E37E96E8(v206, v179, v101);
        }

        if (v79 && (v190 = (*(*v79 + 672))()) != 0 && (v190, v103))
        {
          v191 = [v103 vuiTemplateImage];
          sub_1E379098C(v208, 0);

          v103 = v191;
        }

        else
        {
          sub_1E379098C(v208, 0);
        }
      }

      if (v103)
      {
        v105 = v211(v104);
        OUTLINED_FUNCTION_11_172();
        sub_1E3FAECBC(v106, v107, v108, v109, v110, v111, v112);
        if (v105)
        {
          type metadata accessor for ImageLayout();
          OUTLINED_FUNCTION_20_2();
          v113 = swift_dynamicCastClass();
          if (!v113)
          {
          }
        }

        else
        {
          v113 = 0;
        }

        sub_1E4201C14();
        v129 = OUTLINED_FUNCTION_6_203();
        v203 = v130;
        v205 = v129;
        v198 = v131;
        v197 = v103;
        sub_1E381AC64();
        v132 = sub_1E4202C54();
        v134 = v133;
        v136 = v135;
        v212 = v113;
        if (!v113 || !(*(*v113 + 672))())
        {
          v137 = [objc_opt_self() clearColor];
        }

        sub_1E4203644();
        v138 = sub_1E4202B94();
        v140 = v139;
        v142 = v141;

        sub_1E37434B8(v132, v134, v136 & 1);

        v144 = (*(*v16 + 904))(v143);
        if (v145)
        {
          v146 = v144;
        }

        else
        {
          v146 = 0;
        }

        if (v145)
        {
          v147 = v145;
        }

        else
        {
          v147 = 0xE000000000000000;
        }

        v236 = v146;
        v237 = v147;
        sub_1E32822E0();
        v148 = sub_1E4202BC4();
        v201 = v149;
        v202 = v150;
        sub_1E37434B8(v138, v140, v142 & 1);

        LOBYTE(v234) = 2;
        (*(*v16 + 776))(&v236, &v234, &unk_1F5D5D408, &off_1F5D5C818);
        v196 = v16;
        v200 = v148;
        if (v238)
        {
          v151 = OUTLINED_FUNCTION_13_170();
          if (v151)
          {
            v153 = v234;
            v152 = v235;
            if (v212 && (v154 = (*(*v212 + 1896))(v151), v154 != 2) && sub_1E3B65750(v154 & 1, 1) && [objc_opt_self() isSearchEnabled])
            {
              v236 = v153;
              v237 = v152;
              sub_1E4202C44();
              OUTLINED_FUNCTION_1_269();
              v155 = OUTLINED_FUNCTION_14_165();
              v194 = v156;
              v192 = v157;
              OUTLINED_FUNCTION_7_209();
              sub_1E37434B8(v148, v201, v202 & 1);

              v158 = v198;
              v200 = v155;
              v201 = v194;
              v202 = v192;
            }

            else
            {
              v236 = v153;
              v237 = v152;
              v159 = sub_1E4202C44();
              v161 = v160;
              v163 = v162;
              v164 = sub_1E4202BD4();
              v193 = v165;
              v195 = v164;
              v158 = v166;
              sub_1E37434B8(v159, v161, v163 & 1);

              sub_1E37434B8(v205, v203, v198 & 1);

              v203 = v193;
              v205 = v195;
            }
          }

          else
          {
            v158 = v198;
          }
        }

        else
        {
          sub_1E329505C(&v236);
          v158 = v198;
        }

        v209 = sub_1E4202BD4();
        v199 = v167;
        v169 = v168;
        sub_1E37434B8(v200, v201, v202 & 1);

        sub_1E37434B8(v205, v203, v158 & 1);

        OUTLINED_FUNCTION_3_233();
        v170 = sub_1E4202BD4();
        v172 = v171;
        v174 = v173;
        v176 = v175;
        sub_1E3FAECBC(v196, v213, v226, v228, v222, v216, 3);
        sub_1E37434B8(v209, v199, v169 & 1);

        *v219 = v170;
        *(v219 + 8) = v172;
        *(v219 + 16) = v174 & 1;
        *(v219 + 24) = v176;
LABEL_53:
        OUTLINED_FUNCTION_25_2();
      }

      else
      {
        OUTLINED_FUNCTION_11_172();
        sub_1E3FAECBC(v114, v115, v116, v117, v118, v119, v120);
        OUTLINED_FUNCTION_11_172();
        sub_1E3FAECBC(v121, v122, v123, v124, v125, v126, v127);
        a5 = v219;
        v11 = v231;
        v12 = v233;
LABEL_29:
        *a5 = v11;
        *(a5 + 8) = v12;
        *(a5 + 16) = v13;
        *(a5 + 24) = v14;
        sub_1E37E6F1C(v11, v12, v13);
        OUTLINED_FUNCTION_25_2();
      }

      return;
    case 4:
      v217 = a5;
      v236 = *a2;
      v237 = v15;
      v234 = 32;
      v235 = 0xE100000000000000;
      v223._countAndFlagsBits = v17;
      v223._object = v18;
      sub_1E32822E0();
      v25 = sub_1E42071F4();
      v214 = v19;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35760);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v29 = *MEMORY[0x1E69DB650];
      *(inited + 32) = *MEMORY[0x1E69DB650];
      v30 = v29;
      v31 = sub_1E3E60700();
      v32 = *v31;
      *(inited + 40) = *v31;
      type metadata accessor for Key(0);
      sub_1E3280A90(0, &qword_1EE23AE20);
      sub_1E3FAEDAC(&qword_1EE23B100);
      v33 = v32;
      v34 = sub_1E4205CB4();
      v236 = 32;
      v237 = 0xE100000000000000;
      MEMORY[0x1E69109E0](v25, v27);

      MEMORY[0x1E69109E0](41154, 0xA200000000000000);

      v35 = sub_1E3C28388(v34);

      v36 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v37 = sub_1E3C2A044(32, 0xE100000000000000, v35);
      v38._countAndFlagsBits = v25;
      v38._object = v27;
      NSMutableAttributedString.setAsLink(textToFind:linkURL:)(v38, v223);

      v39 = v37;
      sub_1E41FE1D4();
      v40 = sub_1E4202C34();
      v42 = v41;
      v44 = v43;
      if (v214)
      {

        sub_1E42037C4();
        v45 = sub_1E4202C54();
        v47 = v46;
        v224 = v39;
        v49 = v48;
        v50 = *v31;
        sub_1E4203644();
        v220 = sub_1E4202B94();
        v215 = v51;
        v204 = v52;

        sub_1E37434B8(v45, v47, v49 & 1);

        OUTLINED_FUNCTION_3_233();
        v207 = sub_1E4202BD4();
        v54 = v53;
        v56 = v55;
        v57 = sub_1E4202BD4();
        v229 = v58;
        v230 = v57;
        v210 = v59;
        v232 = v60;

        sub_1E37434B8(v40, v42, v44 & 1);

        sub_1E37434B8(v220, v215, v204 & 1);

        sub_1E37434B8(v207, v54, v56 & 1);

        *v217 = v230;
        *(v217 + 8) = v229;
        *(v217 + 16) = v210 & 1;
        *(v217 + 24) = v232;
      }

      else
      {
        OUTLINED_FUNCTION_3_233();
        v83 = sub_1E4202BD4();
        v85 = v84;
        v86 = v40;
        v88 = v87;
        v89 = v44;
        v91 = v90;

        sub_1E37434B8(v86, v42, v89 & 1);

        *v217 = v83;
        *(v217 + 8) = v85;
        *(v217 + 16) = v88 & 1;
        *(v217 + 24) = v91;
      }

      goto LABEL_53;
    default:
      goto LABEL_29;
  }
}

uint64_t sub_1E3FAE49C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v11 = *(a7 + 16);
  sub_1E37E6F1C(a1, a2, a3 & 1);

  v12 = (a7 + 80);
  if (v11)
  {
    while (1)
    {
      v21 = v11;
      v35 = v8;
      v22 = v10;
      v23 = v9;
      v13 = *(v12 - 6);
      v14 = *(v12 - 5);
      v16 = *(v12 - 4);
      v15 = *(v12 - 3);
      v17 = *(v12 - 2);
      v18 = *(v12 - 1);
      v10 = *v12;
      v29[0] = v13;
      v29[1] = v14;
      v29[2] = v16;
      v29[3] = v15;
      v29[4] = v17;
      v29[5] = v18;
      v30 = v10;
      sub_1E3FAEC14(v13, v14, v16, v15, v17, v18, v10);
      a5(&v25, &v31, v29);
      if (v24)
      {
        break;
      }

      sub_1E3FAECBC(v13, v14, v16, v15, v17, v18, v10);
      sub_1E37434B8(v22, v23, v35 & 1);

      v10 = v25;
      v9 = v26;
      v8 = v27;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v12 += 56;
      v11 = v21 - 1;
      if (v21 == 1)
      {
        return v10;
      }
    }

    sub_1E3FAECBC(v13, v14, v16, v15, v17, v18, v10);
    sub_1E37434B8(v22, v23, v35 & 1);
  }

  return v10;
}

uint64_t sub_1E3FAE630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FAE694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D518);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3FAE708()
{
  result = qword_1ECF3D520;
  if (!qword_1ECF3D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D520);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextLayoutState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalTextLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && a1[17])
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 7)
      {
        v4 = 7;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 8;
      if (v3 < 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalTextLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

unint64_t sub_1E3FAE900()
{
  result = qword_1EE289DB8;
  if (!qword_1EE289DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289DB8);
  }

  return result;
}

void sub_1E3FAE98C()
{
  type metadata accessor for TextViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3FAEB6C(319, qword_1EE287258, type metadata accessor for TextLayout, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E3FAEB6C(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1E3FAEB6C(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1E3FAEB6C(319, &qword_1EE289EA0, MEMORY[0x1E697F610], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1E3FAED5C(319, &qword_1EE289E70, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
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

void sub_1E3FAEB6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3FAEC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 1:
    case 2:
      goto LABEL_3;
    case 3:

      break;
    case 4:

LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3FAECBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 1:
    case 2:

      goto LABEL_4;
    case 3:

      break;
    case 4:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1E3FAED5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E3FAEDAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1E3FAEDEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E3A79350();
  result = 0.0;
  if (!v8)
  {
    sub_1E3FAEE48(a5);
    result = *&a1;
    if (a2)
    {
      return 10.0;
    }
  }

  return result;
}

uint64_t sub_1E3FAEE48(uint64_t a1)
{
  v29 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4201044();
  sub_1E3960028();
  v7 = sub_1E42066D4();
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = v7;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1E3A79F84(0, v7 & ~(v7 >> 63), 0);
    v8 = v32;
    result = sub_1E42066B4();
    if (v9 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = (v3 + 16);
    do
    {
      v11 = sub_1E4206764();
      v12 = v29;
      (*v28)(v6);
      v11(v31, 0);
      sub_1E4201504();
      v31[0] = v13 & 1;
      v30 = v14 & 1;
      sub_1E4200EF4();
      v16 = v15;
      v18 = v17;
      (*(v3 + 8))(v6, v12);
      v32 = v8;
      v19 = a1;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E3A79F84((v20 > 1), v21 + 1, 1);
        v8 = v32;
      }

      *(v8 + 16) = v21 + 1;
      v22 = v8 + 16 * v21;
      *(v22 + 32) = v16;
      *(v22 + 40) = v18;
      sub_1E4206734();
      --v9;
      a1 = v19;
    }

    while (v9);
  }

  v23 = *(v8 + 16);
  if (v23)
  {
    v24 = (v8 + 32);
    v25 = 0uLL;
    do
    {
      v26 = *v24++;
      v25 = vbslq_s8(vcgeq_f64(v26, v25), v26, v25);
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_1E3FAF0B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  sub_1E4201044();
  sub_1E3960028();
  OUTLINED_FUNCTION_39_0();
  sub_1E42066B4();
  OUTLINED_FUNCTION_39_0();
  sub_1E4206724();
  if (sub_1E4206714() != 3)
  {
    goto LABEL_11;
  }

  sub_1E4201054();
  sub_1E4201054();
  sub_1E4201054();
  sub_1E3FAF604();
  v20 = sub_1E4205CB4();
  LOBYTE(v33) = 0;
  LOBYTE(v35) = 0;
  sub_1E4200EF4();
  sub_1E4203F64();
  swift_isUniquelyReferenced_nonNull_native();
  v33 = v20;
  OUTLINED_FUNCTION_3_234();
  v21 = v33;
  OUTLINED_FUNCTION_0_307();
  sub_1E4200EF4();
  OUTLINED_FUNCTION_0_307();
  sub_1E4200EF4();
  sub_1E4203F74();
  swift_isUniquelyReferenced_nonNull_native();
  v33 = v21;
  OUTLINED_FUNCTION_3_234();
  v22 = v33;
  sub_1E4203F84();
  swift_isUniquelyReferenced_nonNull_native();
  v33 = v22;
  OUTLINED_FUNCTION_3_234();
  v23 = v33;
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  CGRectGetMidX(v36);
  sub_1E4203F64();
  sub_1E3FAF658(v23);
  if (v24)
  {
    __break(1u);
    goto LABEL_8;
  }

  v37.origin.x = a1;
  v32 = a2;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetMinY(v37);
  OUTLINED_FUNCTION_0_307();
  sub_1E4200EF4();
  sub_1E4203F74();
  sub_1E4203F64();
  sub_1E3FAF658(v23);
  if (v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_233();
  CGRectGetHeight(v38);
  OUTLINED_FUNCTION_1_270();
  sub_1E4200F04();
  OUTLINED_FUNCTION_2_233();
  CGRectGetMinX(v39);
  OUTLINED_FUNCTION_2_233();
  CGRectGetMinY(v40);
  OUTLINED_FUNCTION_0_307();
  sub_1E4200EF4();
  sub_1E4203F74();
  sub_1E4203F74();
  sub_1E3FAF658(v23);
  if ((v26 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_232();
    OUTLINED_FUNCTION_2_233();
    CGRectGetHeight(v41);
    OUTLINED_FUNCTION_1_270();
    sub_1E4200F04();
    OUTLINED_FUNCTION_2_233();
    CGRectGetMaxX(v42);
    OUTLINED_FUNCTION_2_233();
    CGRectGetMinY(v43);
    OUTLINED_FUNCTION_0_307();
    sub_1E4200EF4();
    sub_1E4203F84();
    sub_1E4203F84();
    sub_1E3FAF658(v23);
    if ((v27 & 1) == 0)
    {
      v44.origin.x = OUTLINED_FUNCTION_4_232();
      v44.origin.y = v32;
      v44.size.width = a3;
      v44.size.height = a4;
      CGRectGetHeight(v44);
      OUTLINED_FUNCTION_1_270();
      sub_1E4200F04();
      v28 = *(v10 + 8);
      v28(v13, v8);
      v28(v16, v8);
      v28(v19, v8);
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD000000000000043, 0x80000001E428BCE0);
  OUTLINED_FUNCTION_39_0();
  sub_1E42066B4();
  OUTLINED_FUNCTION_39_0();
  sub_1E4206724();
  v35 = sub_1E4206714();
  v30 = sub_1E4207944();
  MEMORY[0x1E69109E0](v30);

  MEMORY[0x1E69109E0](0xD000000000000027, 0x80000001E428BD30);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

unint64_t sub_1E3FAF604()
{
  result = qword_1ECF3D528;
  if (!qword_1ECF3D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D528);
  }

  return result;
}

uint64_t sub_1E3FAF658(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_1E3FAF738();
  if (v3)
  {
    return *(*(a1 + 56) + 8 * v2);
  }

  else
  {
    return 0;
  }
}

void (*sub_1E3FAF6C4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

unint64_t sub_1E3FAF738()
{
  sub_1E4207B44();
  sub_1E4203F44();
  v0 = sub_1E4207BA4();

  return sub_1E3FAF7AC(v0);
}

unint64_t sub_1E3FAF7AC(uint64_t a1)
{
  v2 = ~(-1 << *(v1 + 32));
    ;
  }

  return i;
}

unint64_t sub_1E3FAF850(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E3FAF738();
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D538);
  result = sub_1E4207644();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1E3FAF738();
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a1;
  }

  else
  {

    return sub_1E3FAF9E4(v11, v15, a2, a3, a1);
  }

  return result;
}

unint64_t sub_1E3FAF980()
{
  result = qword_1ECF3D530;
  if (!qword_1ECF3D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D530);
  }

  return result;
}

unint64_t sub_1E3FAF9E4(unint64_t result, void *a2, double a3, double a4, double a5)
{
  a2[(result >> 6) + 8] |= 1 << result;
  v5 = (a2[6] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  *(a2[7] + 8 * result) = a5;
  v6 = a2[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a2[2] = v8;
  }

  return result;
}

uint64_t sub_1E3FAFA64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_1E3FAFB1C()
{
  v1 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_numberLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3FAFB64()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3FAFBE0()
{
  v1 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_titleLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3FAFC28()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3FAFCA4(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3FAFD24()
{
  v1 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_subtitleLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3FAFD6C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3FAFDE8()
{
  v1 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_cellImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3FAFE24(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_cellImageView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;
  v6 = [v1 vuiContentView];
  v7 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_cellImageView;
  swift_beginAccess();
  [v6 vui:*&v1[v7] addSubview:v4 oldView:?];
}

uint64_t sub_1E3FAFEE0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

id sub_1E3FAFF5C()
{
  v1 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView];
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [v0 vuiContentView];
    [v5 vui:v4 addSubview:0 oldView:?];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3FB000C()
{
  OUTLINED_FUNCTION_9_23();
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_numberLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_cellImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView) = 0;
  v6 = type metadata accessor for OrdinalListCell();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v6);
  [v4 setAutoresizingMask_];
  return v4;
}

void sub_1E3FB010C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_numberLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_cellImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView) = 0;
  OUTLINED_FUNCTION_6_102();
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3FB01C8(char a1, double a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))();
  if (v7)
  {
    v8 = v7;
    v9 = [v2 vuiTraitCollection];
    v10 = [v9 isAXEnabled];

    v11 = *(*v8 + 176);

    v11(v110, v12);
    v14 = *v110;
    v13 = *&v110[1];
    v15 = *&v110[2];

    v16 = MEMORY[0x1E69DDCE0];
    if (v111)
    {
      v14 = *MEMORY[0x1E69DDCE0];
      v13 = *(MEMORY[0x1E69DDCE0] + 8);
      v15 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    OUTLINED_FUNCTION_7_1();
    v109 = a2;
    if (v10)
    {
      v18 = (*(v17 + 152))();
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      if (v18)
      {
        v22 = v18;
        [v18 vui:a2 sizeThatFits:0.0];
        v20 = v23;
        v21 = v24;
      }

      v116.origin.x = 0.0;
      v116.origin.y = v14;
      v116.size.width = v20;
      v116.size.height = v21;
      v25 = v14 + CGRectGetMaxY(v116);
      OUTLINED_FUNCTION_7_1();
      v27 = (*(v26 + 224))();
      v28 = 0.0;
      if (v27)
      {
        v29 = v27;
        [v27 vui:a2 sizeThatFits:0.0];
        v19 = v30;
        v28 = v31;
      }

      v117.origin.x = 0.0;
      v117.origin.y = v25;
      v117.size.width = v19;
      v117.size.height = v28;
      MaxY = v14 + CGRectGetMaxY(v117);
      OUTLINED_FUNCTION_7_1();
      v34 = *(v33 + 176);
      v35 = (v33 + 176);
      v36 = v34();
      if (v36)
      {

        if (v34())
        {
          OUTLINED_FUNCTION_7_210();
          v38 = (*(v37 + 1752))();
          v39 = OUTLINED_FUNCTION_12_155(v38);
          v41 = v40;
        }

        else
        {
          v39 = 0.0;
          v41 = 0.0;
        }

        v119.origin.x = 0.0;
        v119.origin.y = MaxY;
        v119.size.width = v39;
        v119.size.height = v41;
        MaxY = CGRectGetMaxY(v119);
      }

      OUTLINED_FUNCTION_7_1();
      v89 = *(v88 + 200);
      v90 = (v88 + 200);
      v91 = v89();
      if (v91)
      {

        if (v89())
        {
          OUTLINED_FUNCTION_7_210();
          v93 = (*(v92 + 1776))();
          v94 = OUTLINED_FUNCTION_12_155(v93);
          v96 = v95;
        }

        else
        {
          v94 = 0.0;
          v96 = 0.0;
        }

        v120.origin.x = 0.0;
        v120.origin.y = MaxY;
        v120.size.width = v94;
        v120.size.height = v96;
        CGRectGetMaxY(v120);
      }
    }

    else
    {
      v42 = (*(v17 + 224))();
      if (v42)
      {
        v43 = v42;
        [v42 vui:a2 sizeThatFits:0.0];
        v45 = v44;
        v47 = v46;
      }

      else
      {
        v45 = 0.0;
        v47 = 0.0;
      }

      v105 = a1;
      v48 = sub_1E3952BD8(v14, v13, v15);
      v118.origin.x = 0.0;
      v118.origin.y = v14;
      v118.size.width = v45;
      v108 = v47;
      v118.size.height = v47;
      MaxX = CGRectGetMaxX(v118);
      v49 = *(*v8 + 1728);
      v49();
      OUTLINED_FUNCTION_30();
      (*(v50 + 152))(v112);
      v52 = *v112;
      v51 = *&v112[1];
      v54 = *&v112[2];
      v53 = *&v112[3];

      if (v113)
      {
        v52 = *v16;
        v51 = v16[1];
        v54 = v16[2];
        v53 = v16[3];
      }

      (v49)(v55);
      OUTLINED_FUNCTION_30();
      (*(v56 + 200))();

      OUTLINED_FUNCTION_7_1();
      v58 = (*(v57 + 152))();
      v59 = 0.0;
      if (v58)
      {
        v10 = v58;
        v60 = (v49)();
        v59 = OUTLINED_FUNCTION_12_155(v60);
      }

      v61 = v108 + v48;
      sub_1E3952BE0(v52, v51, v54, v53);
      OUTLINED_FUNCTION_7_1();
      v63 = *(v62 + 176);
      v64 = 0.0;
      v65 = 0.0;
      if (v63())
      {
        OUTLINED_FUNCTION_7_210();
        v67 = (*(v66 + 1752))();
        v64 = OUTLINED_FUNCTION_25_97(v67);
        v65 = v68;
      }

      v107 = MaxX + v51;
      v69 = v53 + v59;
      OUTLINED_FUNCTION_7_1();
      v71 = *(v70 + 200);
      v72 = v71();
      v73 = 0.0;
      if (v72)
      {
        OUTLINED_FUNCTION_7_210();
        v75 = (*(v74 + 1776))();
        OUTLINED_FUNCTION_25_97(v75);
        v73 = v76;
      }

      v77 = v107 + v69;
      v78 = (v63)(v72);
      if (v78 && (v78, (v79 = v71()) != 0))
      {

        v80 = v71();
        if (v80)
        {
          v81 = v80;
          v82 = v63();
          (*(*v8 + 1776))();
          OUTLINED_FUNCTION_30();
          (*(v83 + 152))(v114);

          v84 = v114[0];
          if (v115)
          {
            v84 = 0.0;
          }

          [v81 topMarginToLabel:v82 withBaselineMargin:v84];
          v86 = v85;
        }

        else
        {
          v86 = 0.0;
        }

        a1 = v105;
        v121.size.height = v65;
        v121.origin.y = (v61 - (v65 + v73 + v86)) * 0.5;
        v121.origin.x = v77;
        v121.size.width = v64;
        CGRectGetMaxY(v121);
      }

      else
      {
        v87 = v63();
        if (v87)
        {

          OUTLINED_FUNCTION_15_153();
          a1 = v105;
        }

        else
        {
          v97 = v71();
          a1 = v105;
          if (v97)
          {
          }

          else
          {
            OUTLINED_FUNCTION_15_153();
          }
        }
      }
    }

    v98 = sub_1E3FAFF5C();
    (*((*v6 & *v98) + 0x70))();

    if ((a1 & 1) == 0)
    {
      [v3 vuiIsRTL];
      OUTLINED_FUNCTION_7_1();
      if ((*(v99 + 152))())
      {
        OUTLINED_FUNCTION_11_173();
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        OUTLINED_FUNCTION_30_2();
      }

      OUTLINED_FUNCTION_7_1();
      if ((*(v100 + 176))())
      {
        OUTLINED_FUNCTION_11_173();
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        OUTLINED_FUNCTION_30_2();
      }

      OUTLINED_FUNCTION_7_1();
      if ((*(v101 + 200))())
      {
        OUTLINED_FUNCTION_11_173();
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        OUTLINED_FUNCTION_30_2();
      }

      OUTLINED_FUNCTION_7_1();
      if ((*(v102 + 224))())
      {
        OUTLINED_FUNCTION_11_173();
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        OUTLINED_FUNCTION_30_2();
      }

      v103 = *&v3[OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView];
      OUTLINED_FUNCTION_11_173();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_30_2();
    }

    return v109;
  }

  return a2;
}

uint64_t sub_1E3FB0CFC(__int16 *a1, void *a2, unsigned __int8 *a3)
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = *(*a1 + 392);
    v11 = a2;
    if (v10())
    {
      type metadata accessor for OrdinalCellLayout();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = (*(*a1 + 488))();
        if (v14)
        {
          v15 = v14;
          if (*(v14 + 16))
          {
            v68 = a3;
            sub_1E3FB146C();
            OUTLINED_FUNCTION_12_5();
            v17 = *(v16 + 136);

            v17(v13);
            type metadata accessor for UIFactory();
            v18 = sub_1E373E010(17, v15);
            OUTLINED_FUNCTION_12_5();
            v20 = (*(v19 + 152))();
            sub_1E3280A90(0, &qword_1EE23AD40);
            OUTLINED_FUNCTION_19_140();
            sub_1E393D92C(v18, v20, v21, 0);

            sub_1E373C624(v69);
            v22 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_12_5();
            v23 = OUTLINED_FUNCTION_21_63();
            v24(v23);
            sub_1E373E010(23, v15);
            OUTLINED_FUNCTION_12_5();
            v26 = (*(v25 + 176))();
            OUTLINED_FUNCTION_10_157(v26);

            sub_1E373C624(v69);
            v27 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_12_5();
            v28 = OUTLINED_FUNCTION_21_63();
            v29(v28);
            sub_1E373E010(15, v15);
            OUTLINED_FUNCTION_12_5();
            v31 = (*(v30 + 200))();
            OUTLINED_FUNCTION_10_157(v31);

            sub_1E373C624(v69);
            OUTLINED_FUNCTION_12_5();
            v32 = OUTLINED_FUNCTION_21_63();
            v33(v32);
            v34 = sub_1E373E010(39, v15);

            OUTLINED_FUNCTION_12_5();
            v36 = *(v35 + 224);
            v37 = v36();
            sub_1E3280A90(0, &qword_1EE23AE80);
            OUTLINED_FUNCTION_19_140();
            sub_1E393D92C(v34, v37, v38, 0);

            sub_1E373C624(v69);
            OUTLINED_FUNCTION_12_5();
            v39 = OUTLINED_FUNCTION_21_63();
            v41 = v40(v39);
            v42 = (v36)(v41);
            if (v42)
            {
              v43 = v42;
              [v42 setVuiUserInteractionEnabled_];
            }

            (*(*v13 + 1800))();
            OUTLINED_FUNCTION_30();
            (*(v44 + 552))(v69);
            v45 = *v69;
            v46 = *&v69[1];
            v47 = *&v69[2];
            v48 = *&v69[3];

            v50 = 0.0;
            v51 = v68;
            if ((v70 & 1) == 0)
            {
              v50 = sub_1E3952BE8(v45, v46, v47, v48);
            }

            v52 = (v36)(v49);
            v53 = [v52 vuiLayer];

            [v53 setCornerRadius_];
            LODWORD(v53) = *v51 != 2;
            v54 = v51[41];
            v55 = sub_1E3FAFF5C();
            [v55 setHidden_];

            return a2;
          }
        }

        v56 = v11;
        return a2;
      }
    }

    OUTLINED_FUNCTION_6_102();
  }

  else
  {
    v58 = sub_1E324FBDC();
    (*(v7 + 16))(v9, v58, v6);

    v59 = v9;
    v60 = sub_1E41FFC94();
    v61 = sub_1E4206814();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v69[0] = v63;
      *v62 = 136315138;
      sub_1E384EE08(a1[49]);
      v66 = sub_1E3270FC8(v64, v65, v69);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_1E323F000, v60, v61, "OrdinalListCell: Failed to get correct cell for [%s]", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1E69143B0](v63, -1, -1);
      MEMORY[0x1E69143B0](v62, -1, -1);
    }

    (*(v7 + 8))(v59, v6);
    OUTLINED_FUNCTION_6_102();
  }

  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void sub_1E3FB146C()
{
  v2 = v0;
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  if (v3 && (v4 = sub_1E3FB1A00(v3), v5))
  {
    v6 = v4;
    v1 = v5;
    v7 = sub_1E3740F88(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = OUTLINED_FUNCTION_8_183(v8);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = v6;
    *(v10 + 5) = v1;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_12_5();
  v12 = (*(v11 + 176))();
  if (v12)
  {
    sub_1E3FB1A00(v12);
    if (v13)
    {
      OUTLINED_FUNCTION_94_2();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = OUTLINED_FUNCTION_17_137();
      }

      v15 = *(v7 + 2);
      v14 = *(v7 + 3);
      if (v15 >= v14 >> 1)
      {
        v7 = OUTLINED_FUNCTION_8_183(v14);
      }

      *(v7 + 2) = v15 + 1;
      v16 = &v7[16 * v15];
      *(v16 + 4) = v2;
      *(v16 + 5) = v1;
    }
  }

  OUTLINED_FUNCTION_12_5();
  v18 = (*(v17 + 200))();
  if (v18)
  {
    sub_1E3FB1A00(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_94_2();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = OUTLINED_FUNCTION_17_137();
      }

      v21 = *(v7 + 2);
      v20 = *(v7 + 3);
      if (v21 >= v20 >> 1)
      {
        v7 = OUTLINED_FUNCTION_8_183(v20);
      }

      *(v7 + 2) = v21 + 1;
      v22 = &v7[16 * v21];
      *(v22 + 4) = v2;
      *(v22 + 5) = v1;
    }
  }

  if (*(v7 + 2))
  {
    v24 = v7;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
    sub_1E3924274();
    sub_1E4205DF4();
    OUTLINED_FUNCTION_94_2();

    [v2 vui:1 isAccessibilityElement:?];
    sub_1E3DEEDB8(&v24, v23, v2);
    [v2 setAccessibilityTraits_];
    sub_1E399AA9C(MEMORY[0x1E69E7CC0], v2);
  }

  else
  {
  }
}

id sub_1E3FB16FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrdinalListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E3FB17BC(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_9_23();
  v11 = v10;
  v12 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x80))();
  if (v12)
  {
    v13 = v12;
    [v5 vui:v8 sizeThatFits:1.79769313e308];
    v15 = v14;
    v17 = v16;
    sub_1E41A300C(__src);
    sub_1E41A2FE8(v15, v17);
    v18 = *(*v13 + 176);

    v18(v23, v19);

    v20 = v23[0];
    if (v24)
    {
      v20 = 0.0;
    }

    __src[6] = v7 - v20;
    __src[7] = v6;
    __src[8] = 0.0;
    __src[9] = a5;
    return memcpy(v11, __src, 0x50uLL);
  }

  else
  {
    OUTLINED_FUNCTION_6_102();
    result = sub_1E42076B4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3FB1A00(void *a1)
{
  v2 = [a1 vuiText];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t type metadata accessor for ImageViewWithOverlay()
{
  result = qword_1EE29D8F0;
  if (!qword_1EE29D8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3FB1C2C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = type metadata accessor for ImageViewWithOverlay();
  v18 = v17[9];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  swift_storeEnumTagMultiPayload();
  v19 = a9 + v17[13];
  type metadata accessor for CGRect(0);
  sub_1E42038E4();
  *v19 = v27;
  *(v19 + 1) = v28;
  *(v19 + 4) = v29;
  *a9 = a1;
  memcpy(a9 + 1, a2, 0x5BuLL);
  a9[13] = a4;
  a9[14] = a3;
  if (a3 && (sub_1E3741534(), (sub_1E4205E84() & 1) != 0))
  {
    result = sub_1E4203DA4();
  }

  else
  {
    result = sub_1E4203D94();
  }

  a9[15] = result;
  a9[16] = v21;
  v22 = (a9 + v17[10]);
  *v22 = a10;
  v22[1] = a11;
  *(a9 + v17[11]) = a5 & 1;
  v23 = a9 + v17[12];
  *v23 = a6;
  *(v23 + 1) = a7;
  v23[16] = a8 & 1;
  return result;
}

uint64_t sub_1E3FB1DA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v115 = type metadata accessor for ImageViewWithOverlay();
  OUTLINED_FUNCTION_0_10();
  v107 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v108 = v6;
  v109 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D570);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v98 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D578);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v98 - v11;
  v114 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v112 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v98 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37758);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v98 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D580);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v98 - v29;
  v32 = v2[15];
  v31 = v2[16];
  v33 = v2[14];
  *a1 = v32;
  a1[1] = v31;
  v119 = a1;
  if (v33)
  {
    v99 = v20;
    v100 = v15;
    v102 = v27;
    v103 = v32;
    v104 = v31;
    v105 = v9;
    v106 = v30;
    v34 = *v2;
    v35 = *(**v2 + 392);
    v111 = v33;

    v37 = v35(v36);
    v38 = 0.0;
    v110 = v21;
    if (v37)
    {
      type metadata accessor for ImageLayout();
      v39 = swift_dynamicCastClass();
      if (v39)
      {
        v40 = v39;
        v41 = *(*v39 + 552);

        v41(&v125, v42);

        v101 = v40;
        if ((v126 & 1) == 0)
        {
          v43 = OUTLINED_FUNCTION_24_0();
          v38 = sub_1E3952BE8(v43, v44, v45, v46);
        }

        goto LABEL_9;
      }
    }

    v101 = 0;
LABEL_9:
    v55 = v115;
    v56 = v114;
    memcpy(__dst, v2 + 1, 0x5BuLL);
    v115 = __dst[1];
    LODWORD(v114) = LOBYTE(__dst[2]);
    v57 = v2[13];
    v58 = v109;
    sub_1E3FB2954(v2, v109);
    v59 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v60 = swift_allocObject();
    sub_1E3FB29B8(v58, v60 + v59);
    v61 = OUTLINED_FUNCTION_18();
    v62 = v99;
    sub_1E37E8BE8(v34, __dst, v57, v61 & 1, sub_1E3FB2A1C, v60, v99);

    v63 = v100;
    sub_1E4201C84();
    OUTLINED_FUNCTION_19_0();
    v64 = v102;
    sub_1E4203364();
    OUTLINED_FUNCTION_15_5();
    v65(v63, v56);
    OUTLINED_FUNCTION_15_5();
    v66(v62, v16);
    v67 = v105;
    sub_1E4201394();
    sub_1E325F6F0(v64, &qword_1ECF37758);
    sub_1E3AC5824();
    v68 = v2 + v55[13];
    v69 = *(v68 + 4);
    v70 = *(v68 + 1);
    v122 = *v68;
    v123 = v70;
    v124 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8);
    sub_1E42038F4();
    LODWORD(v62) = *(v2 + v55[11]);
    v71 = v2 + v55[12];
    v72 = *v71;
    v73 = *(v71 + 1);
    LOBYTE(v71) = v71[16];
    *&v122 = v72;
    *(&v122 + 1) = v73;
    LOBYTE(v123) = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
    sub_1E4203AB4();
    v74 = v120;
    v75 = v121;
    v76 = v67 + *(v118 + 36);
    v77 = OUTLINED_FUNCTION_24_0();
    sub_1E3CCD0F0(v78, v79, v80, v81, v62, v74, v75, v82, v77, v83, v84, v85);

    KeyPath = swift_getKeyPath();
    v87 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B00) + 36));
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0);
    sub_1E3FB2B1C(v87 + *(v88 + 28));
    *v87 = KeyPath;
    v89 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D598) + 36));
    v90 = *(sub_1E4201534() + 20);
    v91 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v92 + 104))(v89 + v90, v91);
    *v89 = v38;
    v89[1] = v38;
    *(v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
    v93 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D588) + 36));
    v94 = v104;
    *v93 = v103;
    v93[1] = v94;
    sub_1E379D7E4(v67, v117, &qword_1ECF3D570);
    swift_storeEnumTagMultiPayload();
    sub_1E3FB27F8();
    sub_1E3FB28B0();
    v54 = v106;
    sub_1E4201F44();

    sub_1E325F6F0(v67, &qword_1ECF3D570);
    goto LABEL_10;
  }

  v111 = *v2;
  memcpy(__dst, v2 + 1, 0x5BuLL);
  v47 = v2[13];
  v48 = (v2 + *(v115 + 40));
  v49 = *v48;
  v50 = v48[1];
  v51 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v111, __dst, v47, v51 & 1, v49, v50, v20);
  sub_1E4201C84();
  OUTLINED_FUNCTION_19_0();
  sub_1E4203364();
  OUTLINED_FUNCTION_15_5();
  v52(v15, v114);
  OUTLINED_FUNCTION_15_5();
  v53(v20, v16);
  sub_1E4201394();
  sub_1E325F6F0(v24, &qword_1ECF37758);
  sub_1E379D7E4(v27, v117, &qword_1ECF37758);
  swift_storeEnumTagMultiPayload();
  sub_1E3FB27F8();
  sub_1E3FB28B0();
  sub_1E4201F44();
  sub_1E325F6F0(v27, &qword_1ECF37758);
  v54 = v30;
LABEL_10:
  v95 = v119;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D590);
  return sub_1E32DE3C0(v54, v95 + *(v96 + 44));
}

unint64_t sub_1E3FB27F8()
{
  result = qword_1EE2896F8;
  if (!qword_1EE2896F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D570);
    sub_1E3FB28B0();
    sub_1E32752B0(&qword_1EE289328, &qword_1ECF3D588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896F8);
  }

  return result;
}

unint64_t sub_1E3FB28B0()
{
  result = qword_1EE289C30;
  if (!qword_1EE289C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37758);
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C30);
  }

  return result;
}

uint64_t sub_1E3FB2954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageViewWithOverlay();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FB29B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageViewWithOverlay();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FB2A1C(uint64_t a1, double a2, double a3)
{
  v7 = (type metadata accessor for ImageViewWithOverlay() - 8);
  v8 = v3 + ((*(*v7 + 80) + 16) & ~*(*v7 + 80));
  v9.n128_u64[0] = 0;
  v10.n128_u64[0] = 0;
  nullsub_1(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8);
  result = sub_1E4203904();
  v12 = (v8 + v7[12]);
  if (*v12)
  {
    return (*v12)(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1E3FB2B1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImageViewWithOverlay();
  sub_1E379EBAC(a1);
  type metadata accessor for ImageViewModel();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    type metadata accessor for LayoutGrid();
    v10 = sub_1E3A256EC();
    result = (*(*v9 + 1032))(v10);
    if ((v11 & 1) == 0)
    {
      v12 = result;
      (*(v4 + 8))(a1, v2);
      v13 = MEMORY[0x1E697DBB8];
      if (v12 != 1)
      {
        v13 = MEMORY[0x1E697DBA8];
      }

      (*(v4 + 104))(v7, *v13, v2);
      return (*(v4 + 32))(a1, v7, v2);
    }
  }

  return result;
}

void sub_1E3FB2CF8()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3FB2EE8(319, qword_1EE286130, type metadata accessor for ImageLayout, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E3FB2EE8(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E3FB2EE8(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1E381ECE4();
          if (v4 <= 0x3F)
          {
            sub_1E3FB2F4C(319, &qword_1EE288418, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
            if (v5 <= 0x3F)
            {
              sub_1E3FB2EE8(319, &qword_1EE288650, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
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

void sub_1E3FB2EE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3FB2F4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E3FB2F9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D5A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E4298AD0;
  v10.origin.x = OUTLINED_FUNCTION_2_0();
  MinX = CGRectGetMinX(v10);
  v11.origin.x = OUTLINED_FUNCTION_2_0();
  MinY = CGRectGetMinY(v11);
  *(v0 + 32) = MinX;
  *(v0 + 40) = MinY;
  v12.origin.x = OUTLINED_FUNCTION_2_0();
  v3 = CGRectGetMinX(v12);
  v13.origin.x = OUTLINED_FUNCTION_2_0();
  MaxY = CGRectGetMaxY(v13);
  *(v0 + 48) = v3;
  *(v0 + 56) = MaxY;
  v14.origin.x = OUTLINED_FUNCTION_2_0();
  MaxX = CGRectGetMaxX(v14);
  v15.origin.x = OUTLINED_FUNCTION_2_0();
  v6 = CGRectGetMinY(v15);
  *(v0 + 64) = MaxX;
  *(v0 + 72) = v6;
  v16.origin.x = OUTLINED_FUNCTION_2_0();
  v7 = CGRectGetMaxX(v16);
  v17.origin.x = OUTLINED_FUNCTION_2_0();
  v8 = CGRectGetMaxY(v17);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

uint64_t sub_1E3FB3074(double a1, double a2)
{
  v4 = sub_1E3FB2F9C();
  v5 = *(v4 + 16);
  if (v5)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E3887DC4(0, v5, 0);
    v6 = v13;
    v7 = *(v13 + 16);
    v8 = (v4 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v13 + 24);
      if (v7 >= v11 >> 1)
      {
        sub_1E3887DC4((v11 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      *(v13 + 8 * v7 + 32) = sqrt((v9 - a1) * (v9 - a1) + (v10 - a2) * (v10 - a2));
      v8 += 2;
      ++v7;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1E3FB31DC(v6);
}

uint64_t sub_1E3FB31DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1E3FB3220()
{
  type metadata accessor for ProgressLayout();
  swift_allocObject();
  v0 = sub_1E3FB3550();

  v1 = *sub_1E3E5FE74();
  v2 = *(*v0 + 680);
  v3 = v1;
  v4 = v2(v1);
  v4.n128_u64[0] = 5.0;
  v13[0] = j__OUTLINED_FUNCTION_7_78(v4);
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v14 = 0;
  (*(*v0 + 560))(v13);
  OUTLINED_FUNCTION_9_2();
  (*(v8 + 1728))(1);
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 312))(0x4000000000000000, 0);
  sub_1E3755B54();
  sub_1E4206F24();
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 752))();

  OUTLINED_FUNCTION_9_2();
  (*(v11 + 1752))(0);
  return v0;
}

uint64_t sub_1E3FB34D4(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_1E3FB3550()
{
  *(v0 + 98) = 514;
  *(v0 + 100) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3FB356C()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 113, 7);
}

uint64_t sub_1E3FB35C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3FB3634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3FB35C0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FB3688()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3FB3738()
{
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  OUTLINED_FUNCTION_53_49();
  sub_1E4200634();
  swift_endAccess();
  v1 = sub_1E3C2F9A0();

  sub_1E3FB3854();
  v2 = sub_1E37BD068();
  sub_1E3C37CBC(v2, 23);

  v3 = sub_1E374EA2C();
  sub_1E3C37CBC(v3, 15);

  v4 = sub_1E374EA94();
  sub_1E3C37CBC(v4, 17);

  v5 = sub_1E38A86A4();
  sub_1E3C37CBC(v5, 39);

  v6 = sub_1E3B910AC();
  sub_1E3C37CBC(v6, 31);

  v7 = sub_1E38A8794();
  sub_1E3C37CBC(v7, 40);

  return v1;
}

uint64_t sub_1E3FB3854()
{
  v1 = v0;
  if (sub_1E3FB35C0())
  {
    sub_1E37BD068();
    BYTE8(v726) = 0;
    OUTLINED_FUNCTION_51_48();
    v2 = MEMORY[0x1E69E6810];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_1_226();
    sub_1E3C3DE00(v2);
    OUTLINED_FUNCTION_102();
    sub_1E3C3DE00(v2);
    OUTLINED_FUNCTION_101_0();
    v3 = sub_1E3C3DE00(v2);
    *&v758 = v762;
    BYTE8(v758) = BYTE8(v762);
    v11 = OUTLINED_FUNCTION_0_308(v3, v4, v5, v6, v7, v8, v9, v10, 2);
    sub_1E3C2FCB8(v11, v12);
    v21 = OUTLINED_FUNCTION_21_109(v13, v14, v15, v16, v17, v18, v19, v20, v726);
    memcpy(v21, v22, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v31 = OUTLINED_FUNCTION_30_3(v23, v24, v25, v26, v27, v28, v29, v30, v726);
    v32(v31, 62);

    OUTLINED_FUNCTION_0_36();
    v34 = *(v33 + 2080);

    v35 = OUTLINED_FUNCTION_15_8();
    v34(v35);

    OUTLINED_FUNCTION_0_36();
    v37 = *(v36 + 2104);

    v38 = OUTLINED_FUNCTION_15_8();
    v37(v38);

    v39 = *(v0 + 104);

    v40 = *sub_1E3E5FD88();
    v41 = *(*v39 + 680);
    v42 = v40;
    v41(v40);

    LOBYTE(v726) = 19;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_30_81();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_29_95();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_28_84();
    v43 = sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v758) = v762;
    v51 = OUTLINED_FUNCTION_0_308(v43, v44, v45, v46, v47, v48, v49, v50, v726);
    sub_1E3C2FCB8(v51, v52);
    OUTLINED_FUNCTION_14_166();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v61 = OUTLINED_FUNCTION_30_3(v53, v54, v55, v56, v57, v58, v59, v60, v726);
    v62(v61, 48);

    LOBYTE(v726) = 10;
    LOBYTE(v774) = 10;
    LOBYTE(v771) = 11;

    sub_1E3C3DE00(&qword_1F5D54AF8);
    LOBYTE(v769) = v770;
    sub_1E3C3DE00(&qword_1F5D54AF8);
    LOBYTE(v767) = v768;
    sub_1E3C3DE00(&qword_1F5D54AF8);
    LOBYTE(v762) = v766;
    v63 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v63, v64);
    OUTLINED_FUNCTION_14_166();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v73 = OUTLINED_FUNCTION_30_3(v65, v66, v67, v68, v69, v70, v71, v72, v726);
    v74(v73, 54);

    sub_1E3952C94();
    OUTLINED_FUNCTION_18_8();
    type metadata accessor for UIEdgeInsets();
    v76 = v75;
    sub_1E3C3DE00(v75);
    OUTLINED_FUNCTION_36_66();
    sub_1E3C2FC98();
    v77 = OUTLINED_FUNCTION_9_173();
    sub_1E3C3DE00(v77);
    v78 = OUTLINED_FUNCTION_8_184();
    v79 = sub_1E3C3DE00(v78);
    OUTLINED_FUNCTION_4_190(v79, v80, v81, v82, v83, v84, v85, v86, v726, *(&v726 + 1), v727, *(&v727 + 1), v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *(&v754 + 1), v755, *(&v755 + 1), v756, v757, v758, *(&v758 + 1), v759, *(&v759 + 1), v760, v761, v762, *(&v762 + 1), v763, *(&v763 + 1), v764, v765, v766);
    sub_1E3C3DE00(v76);
    v754 = v758;
    v755 = v759;
    LOBYTE(v756) = v760;
    sub_1E3C2FCB8(&v771, &v777);
    v95 = OUTLINED_FUNCTION_21_109(v87, v88, v89, v90, v91, v92, v93, v94, v726);
    memcpy(v95, v96, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v105 = OUTLINED_FUNCTION_15_154(v97, v98, v99, v100, v101, v102, v103, v104, v726);
    v106(v105);

    OUTLINED_FUNCTION_0_36();
    v108 = *(v107 + 1720);

    v108(10);

    sub_1E374EA2C();
    BYTE8(v726) = 0;
    OUTLINED_FUNCTION_51_48();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_1_226();
    sub_1E3C3DE00(v2);
    OUTLINED_FUNCTION_102();
    sub_1E3C3DE00(v2);
    OUTLINED_FUNCTION_101_0();
    v109 = sub_1E3C3DE00(v2);
    *&v758 = v762;
    BYTE8(v758) = BYTE8(v762);
    v117 = OUTLINED_FUNCTION_0_308(v109, v110, v111, v112, v113, v114, v115, v116, 2);
    sub_1E3C2FCB8(v117, v118);
    v127 = OUTLINED_FUNCTION_21_109(v119, v120, v121, v122, v123, v124, v125, v126, v726);
    memcpy(v127, v128, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v137 = OUTLINED_FUNCTION_30_3(v129, v130, v131, v132, v133, v134, v135, v136, v726);
    v138(v137, 62);

    OUTLINED_FUNCTION_3_1();
    v140 = *(v139 + 2080);

    v141 = OUTLINED_FUNCTION_15_8();
    v140(v141);

    OUTLINED_FUNCTION_3_1();
    v143 = *(v142 + 2104);

    v144 = OUTLINED_FUNCTION_15_8();
    v143(v144);

    OUTLINED_FUNCTION_3_1();
    v146 = *(v145 + 680);

    v146(0);

    OUTLINED_FUNCTION_3_1();
    v148 = *(v147 + 704);

    v148(1);

    LOBYTE(v726) = 19;
    LOBYTE(v774) = 22;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_30_81();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_29_95();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_28_84();
    v149 = sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v758) = v762;
    v157 = OUTLINED_FUNCTION_0_308(v149, v150, v151, v152, v153, v154, v155, v156, v726);
    sub_1E3C2FCB8(v157, v158);
    OUTLINED_FUNCTION_35_74();
    OUTLINED_FUNCTION_14();
    v167 = OUTLINED_FUNCTION_30_3(v159, v160, v161, v162, v163, v164, v165, v166, v726);
    v168(v167, 48);

    OUTLINED_FUNCTION_3_1();
    v170 = *(v169 + 1720);

    v170(10);

    OUTLINED_FUNCTION_3_1();
    v172 = *(v171 + 728);

    v172(2);

    sub_1E374EA94();
    OUTLINED_FUNCTION_2_1();
    v173 = OUTLINED_FUNCTION_15_8();
    v174(v173);

    OUTLINED_FUNCTION_2_186();
    v176 = *(v175 + 680);

    v176(0);

    OUTLINED_FUNCTION_2_186();
    v178 = *(v177 + 704);

    v178(1);

    OUTLINED_FUNCTION_2_186();
    v180 = *(v179 + 728);

    v180(2);

    LOBYTE(v726) = 21;

    sub_1E3C2FC98();
    LOBYTE(v771) = v774;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v769) = v770;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v767) = v768;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v762) = v766;
    v181 = sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v754) = v758;
    v189 = OUTLINED_FUNCTION_34_73(v181, v182, v183, v184, v185, v186, v187, v188, v726);
    sub_1E3C2FCB8(v189, v190);
    OUTLINED_FUNCTION_35_74();
    OUTLINED_FUNCTION_14();
    v199 = OUTLINED_FUNCTION_30_3(v191, v192, v193, v194, v195, v196, v197, v198, v726);
    v200(v199, 48);

    LOBYTE(v728) = 0;
    v774 = 0uLL;
    v775 = xmmword_1E42A1380;
    v776 = 0;
    v771 = 0uLL;
    v772 = xmmword_1E42E2450;
    v773 = 0;

    sub_1E3C3DE00(v76);
    v201 = OUTLINED_FUNCTION_9_173();
    sub_1E3C3DE00(v201);
    v202 = OUTLINED_FUNCTION_8_184();
    v203 = sub_1E3C3DE00(v202);
    OUTLINED_FUNCTION_4_190(v203, v204, v205, v206, v207, v208, v209, v210, 0, 0, 0x4020000000000000, 0x4028000000000000, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *(&v754 + 1), v759, *(&v759 + 1), v756, v757, v758, *(&v758 + 1), v759, *(&v759 + 1), v760, v761, v762, *(&v762 + 1), v763, *(&v763 + 1), v764, v765, v766);
    v211 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v211, v212);
    v221 = OUTLINED_FUNCTION_21_109(v213, v214, v215, v216, v217, v218, v219, v220, v726);
    memcpy(v221, v222, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v231 = OUTLINED_FUNCTION_15_154(v223, v224, v225, v226, v227, v228, v229, v230, v726);
    v232(v231);

    OUTLINED_FUNCTION_2_186();
    v234 = *(v233 + 1720);

    v234(8);

    sub_1E38A86A4();
    OUTLINED_FUNCTION_51_48();
    *&v771 = 0x4066C00000000000;
    BYTE8(v771) = 0;
    v235 = MEMORY[0x1E69E7DE0];
    sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_20_119();
    sub_1E3C3DE00(v235);
    OUTLINED_FUNCTION_19_141();
    sub_1E3C3DE00(v235);
    v236 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v236, v237);
    v246 = OUTLINED_FUNCTION_21_109(v238, v239, v240, v241, v242, v243, v244, v245, 0x4058800000000000);
    memcpy(v246, v247, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v256 = OUTLINED_FUNCTION_30_3(v248, v249, v250, v251, v252, v253, v254, v255, v726);
    v257(v256, 6);

    BYTE8(v726) = 0;
    OUTLINED_FUNCTION_51_48();
    *&v771 = 0x4066C00000000000;
    BYTE8(v771) = 0;

    sub_1E3C3DE00(v235);
    OUTLINED_FUNCTION_20_119();
    sub_1E3C3DE00(v235);
    OUTLINED_FUNCTION_19_141();
    sub_1E3C3DE00(v235);
    *&v762 = v766;
    BYTE8(v762) = BYTE8(v766);
    v258 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v258, v259);
    v268 = OUTLINED_FUNCTION_21_109(v260, v261, v262, v263, v264, v265, v266, v267, 0x4058800000000000);
    memcpy(v268, v269, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v278 = OUTLINED_FUNCTION_30_3(v270, v271, v272, v273, v274, v275, v276, v277, v726);
    v279(v278, 2);

    OUTLINED_FUNCTION_29_44();
    v280.n128_u64[0] = 5.0;
    j__OUTLINED_FUNCTION_7_78(v280);
    OUTLINED_FUNCTION_18_8();
    v281.n128_u64[0] = 12.0;
    v282 = j__OUTLINED_FUNCTION_7_78(v281);
    OUTLINED_FUNCTION_18_130(v282, v283, v284, v285);
    OUTLINED_FUNCTION_25_98();
    OUTLINED_FUNCTION_24_102();
    v286 = OUTLINED_FUNCTION_23_94();
    v294 = OUTLINED_FUNCTION_0_308(v286, v287, v288, v289, v290, v291, v292, v293, v726);
    sub_1E3C2FCB8(v294, v295);
    v304 = OUTLINED_FUNCTION_21_109(v296, v297, v298, v299, v300, v301, v302, v303, v726);
    memcpy(v304, v305, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v314 = OUTLINED_FUNCTION_30_3(v306, v307, v308, v309, v310, v311, v312, v313, v726);
    v315(v314, 17);

    OUTLINED_FUNCTION_29_44();
    sub_1E3952CA4();
    OUTLINED_FUNCTION_18_8();
    v316 = sub_1E3952CA4();
    OUTLINED_FUNCTION_18_130(v316, v317, v318, v319);
    OUTLINED_FUNCTION_25_98();
    OUTLINED_FUNCTION_24_102();
    v320 = OUTLINED_FUNCTION_23_94();
    v758 = v762;
    v759 = v763;
    LOBYTE(v760) = v764;
    v328 = OUTLINED_FUNCTION_0_308(v320, v321, v322, v323, v324, v325, v326, v327, v726);
    sub_1E3C2FCB8(v328, v329);
    v338 = OUTLINED_FUNCTION_21_109(v330, v331, v332, v333, v334, v335, v336, v337, v726);
    memcpy(v338, v339, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v348 = OUTLINED_FUNCTION_15_154(v340, v341, v342, v343, v344, v345, v346, v347, v726);
    v349(v348);

    v350 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    [v350 setShadowOffset_];
    [v350 setShadowBlurRadius_];
    v351 = [objc_opt_self() blackColor];
    v352 = [v351 colorWithAlphaComponent_];

    [v350 setShadowColor_];
    v353 = *(v1 + 128);
    v354 = *(*v353 + 608);

    v355 = v350;
    v354(v350);

    if (sub_1E39DFFC8())
    {
      OUTLINED_FUNCTION_29_44();
      sub_1E39537A8();
      *&v777 = v356;
      *(&v777 + 1) = v357;
      *&v778 = v358;
      *(&v778 + 1) = v359;
      LOBYTE(v779) = 0;
      (*(*v353 + 560))(&v777);
    }

    sub_1E3FB6340();
    sub_1E38A8794();
    BYTE8(v726) = 0;
    *&v774 = 2;
    BYTE8(v774) = 0;
    type metadata accessor for SymbolScale(0);
    v361 = v360;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_1_226();
    sub_1E3C3DE00(v361);
    OUTLINED_FUNCTION_102();
    sub_1E3C3DE00(v361);
    OUTLINED_FUNCTION_101_0();
    v362 = sub_1E3C3DE00(v361);
    *&v758 = v762;
    BYTE8(v758) = BYTE8(v762);
    v370 = OUTLINED_FUNCTION_0_308(v362, v363, v364, v365, v366, v367, v368, v369, 1);
    sub_1E3C2FCB8(v370, v371);
    v380 = OUTLINED_FUNCTION_21_109(v372, v373, v374, v375, v376, v377, v378, v379, v726);
    memcpy(v380, v381, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v390 = OUTLINED_FUNCTION_30_3(v382, v383, v384, v385, v386, v387, v388, v389, v726);
    v391(v390, 91);

    v392 = *(v1 + 144);
    LOBYTE(v726) = 21;
    LOBYTE(v774) = 22;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_30_81();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_29_95();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_28_84();
    v393 = sub_1E3C3DE00(&qword_1F5D549D8);
    v401 = OUTLINED_FUNCTION_0_308(v393, v394, v395, v396, v397, v398, v399, v400, v726);
    sub_1E3C2FCB8(v401, v402);
    OUTLINED_FUNCTION_14_166();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v411 = OUTLINED_FUNCTION_30_3(v403, v404, v405, v406, v407, v408, v409, v410, v726);
    v412(v411, 96);

    OUTLINED_FUNCTION_56_38();
    sub_1E3952CA4();
    OUTLINED_FUNCTION_18_8();
    v413 = sub_1E3952CA4();
    OUTLINED_FUNCTION_18_130(v413, v414, v415, v416);
    OUTLINED_FUNCTION_25_98();
    OUTLINED_FUNCTION_24_102();
    v417 = OUTLINED_FUNCTION_23_94();
    v758 = v762;
    v759 = v763;
    LOBYTE(v760) = v764;
    v425 = OUTLINED_FUNCTION_0_308(v417, v418, v419, v420, v421, v422, v423, v424, v726);
    sub_1E3C2FCB8(v425, v426);
    v435 = OUTLINED_FUNCTION_21_109(v427, v428, v429, v430, v431, v432, v433, v434, v726);
    memcpy(v435, v436, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v445 = OUTLINED_FUNCTION_15_154(v437, v438, v439, v440, v441, v442, v443, v444, v726);
    v446(v445);

    OUTLINED_FUNCTION_56_38();
    sub_1E3E603B8();
    OUTLINED_FUNCTION_81_12();
    v447 = *(*v392 + 680);
    v448 = &qword_1F5D549D8;
    v447(&qword_1F5D549D8);

    LOBYTE(v726) = 2;
    LOBYTE(v774) = 7;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_30_81();
    sub_1E3C3DE00(&unk_1F5D999E0);
    OUTLINED_FUNCTION_29_95();
    sub_1E3C3DE00(&unk_1F5D999E0);
    OUTLINED_FUNCTION_28_84();
    v449 = sub_1E3C3DE00(&unk_1F5D999E0);
    LOBYTE(v758) = v762;
    v457 = OUTLINED_FUNCTION_0_308(v449, v450, v451, v452, v453, v454, v455, v456, v726);
    sub_1E3C2FCB8(v457, v458);
    OUTLINED_FUNCTION_14_166();
    v459 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_3(v459, v460, v461, v462, v463, v464, v465, v466, v726);
    sub_1E3C2FDFC();
    sub_1E3C2DE50();
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.2];
    sub_1E3C2E258();
    sub_1E39DFFC8();
    sub_1E39537A8();
    OUTLINED_FUNCTION_18_8();
    sub_1E3C2FC98();
    v467 = OUTLINED_FUNCTION_36_66();
    sub_1E3C3DE00(v467);
    v468 = OUTLINED_FUNCTION_9_173();
    sub_1E3C3DE00(v468);
    v469 = OUTLINED_FUNCTION_8_184();
    v470 = sub_1E3C3DE00(v469);
    OUTLINED_FUNCTION_4_190(v470, v471, v472, v473, v474, v475, v476, v477, v726, *(&v726 + 1), v727, *(&v727 + 1), v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *(&v754 + 1), v755, *(&v755 + 1), v756, v757, v758, *(&v762 + 1), v763, *(&v763 + 1), v760, v761, v762, *(&v762 + 1), v763, *(&v763 + 1), v764, v765, v766);
    v478 = sub_1E3C3DE00(v76);
    LOBYTE(v756) = v760;
    v486 = OUTLINED_FUNCTION_34_73(v478, v479, v480, v481, v482, v483, v484, v485, v726);
    sub_1E3C2FCB8(v486, v487);
    v496 = OUTLINED_FUNCTION_21_109(v488, v489, v490, v491, v492, v493, v494, v495, v726);
    memcpy(v496, v497, 0xE9uLL);
    v498 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_3(v498, v499, v500, v501, v502, v503, v504, v505, v726);
    sub_1E3C2FDFC();
    sub_1E3C2EA08();
    __asm { FMOV            V0.2D, #12.0 }

    v726 = _Q0;
    LOBYTE(v728) = 0;
    __asm { FMOV            V0.2D, #14.0 }

    v774 = _Q0;
    v775 = xmmword_1E42E2470;
    v776 = 0;
    v771 = xmmword_1E42CA3A0;
    v772 = xmmword_1E42CA3A0;
    v773 = 0;
    sub_1E3C3DE00(v76);
    v512 = OUTLINED_FUNCTION_9_173();
    sub_1E3C3DE00(v512);
    v513 = OUTLINED_FUNCTION_8_184();
    v514 = sub_1E3C3DE00(v513);
    OUTLINED_FUNCTION_4_190(v514, v515, v516, v517, v518, v519, v520, v521, v726, *(&v726 + 1), 0x4028000000000000, 0x4048000000000000, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v758, *(&v758 + 1), v759, *(&v759 + 1), v756, v757, v758, *(&v758 + 1), v759, *(&v759 + 1), v760, v761, v762, *(&v762 + 1), v763, *(&v763 + 1), v764, v765, v766);
    v522 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v522, v523);
    v532 = OUTLINED_FUNCTION_21_109(v524, v525, v526, v527, v528, v529, v530, v531, v726);
    memcpy(v532, v533, 0xE9uLL);
    v534 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_3(v534, v535, v536, v537, v538, v539, v540, v541, v726);
    sub_1E3C2FDFC();
    BYTE8(v726) = 0;
    *&v774 = 0x4061C00000000000;
    BYTE8(v774) = 0;
    *&v771 = 0x406CC00000000000;
    BYTE8(v771) = 0;
    v542 = MEMORY[0x1E69E7DE0];
    sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_20_119();
    sub_1E3C3DE00(v542);
    OUTLINED_FUNCTION_19_141();
    sub_1E3C3DE00(v542);
    *&v762 = v766;
    BYTE8(v762) = BYTE8(v766);
    v543 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v543, v544);
    v553 = OUTLINED_FUNCTION_21_109(v545, v546, v547, v548, v549, v550, v551, v552, 0x405E800000000000);
    memcpy(v553, v554, 0x59uLL);
    v555 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_3(v555, v556, v557, v558, v559, v560, v561, v562, v726);
    sub_1E3C2FDFC();
    OUTLINED_FUNCTION_36_0();
    sub_1E3C2D150();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2CE80();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2D200();
  }

  else
  {
    sub_1E37BD068();
    BYTE8(v726) = 0;
    *&v774 = 1;
    BYTE8(v774) = 0;
    v563 = MEMORY[0x1E69E6810];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_1_226();
    sub_1E3C3DE00(v563);
    OUTLINED_FUNCTION_102();
    sub_1E3C3DE00(v563);
    OUTLINED_FUNCTION_101_0();
    v564 = sub_1E3C3DE00(v563);
    *&v758 = v762;
    BYTE8(v758) = BYTE8(v762);
    v572 = OUTLINED_FUNCTION_0_308(v564, v565, v566, v567, v568, v569, v570, v571, 2);
    sub_1E3C2FCB8(v572, v573);
    v582 = OUTLINED_FUNCTION_21_109(v574, v575, v576, v577, v578, v579, v580, v581, v726);
    memcpy(v582, v583, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v592 = OUTLINED_FUNCTION_30_3(v584, v585, v586, v587, v588, v589, v590, v591, v726);
    v593(v592, 62);

    OUTLINED_FUNCTION_0_36();
    v595 = *(v594 + 2080);

    v596 = OUTLINED_FUNCTION_10_7();
    v595(v596);

    OUTLINED_FUNCTION_0_36();
    v598 = (v597 + 2104);
    v599 = *(v597 + 2104);

    v600 = OUTLINED_FUNCTION_10_7();
    v599(v600);

    v601 = *(v0 + 104);

    sub_1E3E5FD88();
    OUTLINED_FUNCTION_81_12();
    v602 = *(*v601 + 680);
    v603 = v598;
    v602(v598);

    OUTLINED_FUNCTION_0_36();
    v605 = *(v604 + 1696);

    v605(19);

    OUTLINED_FUNCTION_0_36();
    v607 = *(v606 + 1792);

    v607(10);

    v777 = 0u;
    v778 = 0u;
    LOBYTE(v779) = 1;
    OUTLINED_FUNCTION_8();
    v609 = *(v608 + 160);

    v609(&v777);

    OUTLINED_FUNCTION_0_36();
    v611 = *(v610 + 1720);

    v611(12);

    sub_1E374EA2C();
    BYTE8(v726) = 0;
    *&v774 = 1;
    BYTE8(v774) = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_1_226();
    sub_1E3C3DE00(v563);
    OUTLINED_FUNCTION_102();
    sub_1E3C3DE00(v563);
    OUTLINED_FUNCTION_101_0();
    v612 = sub_1E3C3DE00(v563);
    *&v758 = v762;
    BYTE8(v758) = BYTE8(v762);
    v620 = OUTLINED_FUNCTION_0_308(v612, v613, v614, v615, v616, v617, v618, v619, 2);
    sub_1E3C2FCB8(v620, v621);
    v630 = OUTLINED_FUNCTION_21_109(v622, v623, v624, v625, v626, v627, v628, v629, v726);
    memcpy(v630, v631, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v640 = OUTLINED_FUNCTION_30_3(v632, v633, v634, v635, v636, v637, v638, v639, v726);
    v641(v640, 62);

    OUTLINED_FUNCTION_3_1();
    v643 = *(v642 + 2080);

    v644 = OUTLINED_FUNCTION_10_7();
    v643(v644);

    OUTLINED_FUNCTION_3_1();
    v646 = *(v645 + 2104);

    v647 = OUTLINED_FUNCTION_10_7();
    v646(v647);

    OUTLINED_FUNCTION_3_1();
    v649 = *(v648 + 680);

    v649(0);

    OUTLINED_FUNCTION_3_1();
    v651 = *(v650 + 704);

    v651(1);

    OUTLINED_FUNCTION_3_1();
    v653 = *(v652 + 1696);

    v653(19);

    OUTLINED_FUNCTION_3_1();
    v655 = *(v654 + 1720);

    v655(12);

    OUTLINED_FUNCTION_3_1();
    v657 = *(v656 + 728);

    v657(2);

    sub_1E374EA94();
    OUTLINED_FUNCTION_2_1();
    v658 = OUTLINED_FUNCTION_15_8();
    v659(v658);

    OUTLINED_FUNCTION_2_186();
    v661 = *(v660 + 680);

    v661(0);

    OUTLINED_FUNCTION_2_186();
    v663 = *(v662 + 704);

    v663(1);

    OUTLINED_FUNCTION_2_186();
    v665 = *(v664 + 728);

    v665(2);

    OUTLINED_FUNCTION_2_186();
    v667 = *(v666 + 1696);

    v667(21);

    v777 = 0uLL;
    v778 = xmmword_1E4298720;
    LOBYTE(v779) = 0;
    OUTLINED_FUNCTION_8();
    v669 = *(v668 + 160);

    v669(&v777);

    OUTLINED_FUNCTION_2_186();
    v671 = *(v670 + 1720);

    v671(8);

    sub_1E38A86A4();
    OUTLINED_FUNCTION_2_1();
    (*(v672 + 312))(0x4054000000000000, 0);

    v673 = *(v1 + 128);
    OUTLINED_FUNCTION_8();
    v675 = *(v674 + 208);

    v675(0x4054000000000000, 0);

    OUTLINED_FUNCTION_29_44();
    v676.n128_u64[0] = 5.0;
    *&v777 = j__OUTLINED_FUNCTION_7_78(v676);
    *(&v777 + 1) = v677;
    *&v778 = v678;
    *(&v778 + 1) = v679;
    LOBYTE(v779) = 0;
    (*(*v673 + 560))(&v777);

    OUTLINED_FUNCTION_29_44();
    sub_1E3952CA4();
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_8();
    (*(v680 + 160))(&v726);

    v774 = 0u;
    v775 = 0u;
    v776 = 1;
    OUTLINED_FUNCTION_8();
    v682 = *(v681 + 1856);

    v682(&v774);

    OUTLINED_FUNCTION_36();
    v684 = *(v683 + 1832);

    v684(0);

    v685 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    [v685 setShadowOffset_];
    [v685 setShadowBlurRadius_];
    v686 = [objc_opt_self() blackColor];
    v687 = [v686 colorWithAlphaComponent_];

    [v685 setShadowColor_];
    v688 = *(**(v1 + 128) + 608);

    v689 = v685;
    v688(v685);

    sub_1E3FB5F30();
    sub_1E38A8794();
    OUTLINED_FUNCTION_2_1();
    v690 = OUTLINED_FUNCTION_15_8();
    v691(v690);

    v692 = *(v1 + 144);
    OUTLINED_FUNCTION_36();
    v694 = *(v693 + 2072);

    v694(21);

    OUTLINED_FUNCTION_56_38();
    *&v777 = sub_1E3952CA4();
    *(&v777 + 1) = v695;
    *&v778 = v696;
    *(&v778 + 1) = v697;
    LOBYTE(v779) = 0;
    OUTLINED_FUNCTION_8();
    (*(v698 + 160))(&v777);

    OUTLINED_FUNCTION_56_38();
    v699 = *sub_1E3E60364();
    v700 = *(*v692 + 680);
    v701 = v699;
    v700(v699);

    __asm { FMOV            V1.2D, #10.0 }

    v774 = _Q1;
    v775 = xmmword_1E42E2480;
    v776 = 0;
    sub_1E3C2CC78();
    OUTLINED_FUNCTION_36_0();
    sub_1E3C2D0A0();
    sub_1E3C2D150();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2CE80();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2D200();
    v703 = *sub_1E3E60638();
    *&v726 = v703;
    v704 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v705 = v703;
    *&v771 = [v704 initWithWhite:1.0 alpha:0.2];
    v706 = sub_1E3755B54();
    sub_1E3C2FC98();
    v769 = v770;
    sub_1E3C3DE00(v706);
    v767 = v768;
    sub_1E3C3DE00(v706);
    *&v762 = v766;
    sub_1E3C3DE00(v706);
    *&v754 = v758;
    sub_1E3C2FCB8(&v726, &v777);
    v707 = v777;
    v708 = v778;
    v709 = v779;
    v710 = v780;
    v726 = v777;
    v727 = v778;
    v728 = v779;
    v729 = v780;
    v711 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_3(v711, v712, v713, v714, v715, v716, v717, v718, v726);
    sub_1E3C2FDFC();

    if ((sub_1E39DFFC8() & 1) == 0)
    {
      v719 = [objc_opt_self() secondarySystemBackgroundColor];
      sub_1E3C2DE50();
      sub_1E3C2E014(11);
    }

    sub_1E39537A8();
    *&v777 = v720;
    *(&v777 + 1) = v721;
    *&v778 = v722;
    *(&v778 + 1) = v723;
    LOBYTE(v779) = 0;
    sub_1E3C2D7EC();
  }

  sub_1E38A86A4();
  sub_1E418A4F4();
  OUTLINED_FUNCTION_8();
  (*(v724 + 440))();
}

uint64_t sub_1E3FB5A04(uint64_t a1, void *a2)
{
  sub_1E3C35CF4(a1, a2);

  return sub_1E3FB3854();
}

__objc2_class **sub_1E3FB5A2C(__objc2_class **result)
{
  if (*result == _TtC8VideosUI22PlaybackSongViewLayout)
  {

    sub_1E3C35F80();
    sub_1E3FB35C0();
    sub_1E3FB3688();
  }

  return result;
}

void sub_1E3FB5AF0()
{
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3FB5B5C()
{

  v1 = OBJC_IVAR____TtC8VideosUI22PlaybackSongViewLayout__type;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D5B0);
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E3FB5BF4()
{
  v0 = sub_1E3C36C6C();

  v1 = OBJC_IVAR____TtC8VideosUI22PlaybackSongViewLayout__type;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D5B0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E3FB5C8C()
{
  v0 = sub_1E3FB5BF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3FB5CE4()
{
  result = qword_1ECF3D5B8;
  if (!qword_1ECF3D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D5B8);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackSongViewLayout()
{
  result = qword_1EE29A4A0;
  if (!qword_1EE29A4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FB5D8C()
{
  sub_1E3C59724(319, &qword_1EE28A008, &type metadata for PlaybackSongViewLayout.PlaybackSongViewType, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PlaybackSongViewLayout.PlaybackSongViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3FB5F30()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29[-1] - v6;
  sub_1E3B910AC();
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 2072))(27);

  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 2024);

  v11 = OUTLINED_FUNCTION_36_0();
  v10(v11);

  v12 = *(v0 + 136);
  v13 = sub_1E42028E4();
  OUTLINED_FUNCTION_31_41(v13);

  OUTLINED_FUNCTION_36_0();
  v14 = sub_1E42029B4();
  sub_1E3FB67A8(v7);
  OUTLINED_FUNCTION_36();
  (*(v15 + 2120))(v14);

  OUTLINED_FUNCTION_55_48();
  sub_1E4201DE4();
  v16 = sub_1E4201DF4();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v16);
  OUTLINED_FUNCTION_36();
  (*(v17 + 2192))(v1);

  OUTLINED_FUNCTION_55_48();
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_81_12();
  v18 = *(*v12 + 680);
  v19 = v1;
  v18(v1);

  v33[0] = 0x4024000000000000;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = 0x4024000000000000;
  v34 = 0;
  OUTLINED_FUNCTION_8();
  v21 = *(v20 + 160);

  v21(v33);

  v29[0] = 0x403C000000000000;
  LOBYTE(v29[1]) = 0;
  v30 = 0x4044000000000000;
  v31 = 0;

  v22 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_40_68();
  OUTLINED_FUNCTION_39_63();
  OUTLINED_FUNCTION_38_67();
  OUTLINED_FUNCTION_26_110();
  memcpy(v29, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v23 + 1600))(v29, 6, v24 & 1, v22);

  v29[0] = 0x403C000000000000;
  LOBYTE(v29[1]) = 0;
  v30 = 0x4044000000000000;
  v31 = 0;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_40_68();
  OUTLINED_FUNCTION_39_63();
  OUTLINED_FUNCTION_38_67();
  OUTLINED_FUNCTION_26_110();
  memcpy(v29, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v25 + 1600))(v29, 2, v26 & 1, v22);
}

uint64_t sub_1E3FB6340()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - v5;
  v7 = sub_1E3B910AC();
  v8 = sub_1E42028E4();
  OUTLINED_FUNCTION_31_41(v8);
  OUTLINED_FUNCTION_36_0();
  v9 = sub_1E42029B4();
  sub_1E3FB67A8(v6);
  OUTLINED_FUNCTION_36();
  (*(v10 + 2120))(v9);

  OUTLINED_FUNCTION_55_48();
  sub_1E4201DE4();
  v11 = sub_1E4201DF4();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v11);
  OUTLINED_FUNCTION_36();
  (*(v12 + 2192))(v0);

  OUTLINED_FUNCTION_55_48();
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_81_12();
  v13 = *(*v7 + 680);
  v14 = v0;
  v13(v0);

  v26[0] = 0x4028000000000000;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = 0x4028000000000000;
  LOBYTE(v26[4]) = 0;
  v50 = 0x402C000000000000;
  v51 = 0;
  v52 = 0;
  v53 = 0x402C000000000000;
  v54 = 0;
  v45 = 0x4035000000000000;
  v46 = 0;
  v47 = 0;
  v48 = 0x4035000000000000;
  v49 = 0;
  type metadata accessor for UIEdgeInsets();
  v16 = v15;

  sub_1E3C2FC98();
  v39 = v42;
  v40 = v43;
  v41 = v44;
  sub_1E3C3DE00(v16);
  v33 = v36;
  v34 = v37;
  v35 = v38;
  sub_1E3C3DE00(v16);
  v27 = v30;
  v28 = v31;
  v29 = v32;
  sub_1E3C2FCB8(v26, v55);
  memcpy(v26, v55, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v17 + 1600))(v26, 0, v18 & 1, v16);

  v26[0] = 0x403C000000000000;
  LOBYTE(v26[1]) = 0;
  v50 = 0x4044000000000000;
  LOBYTE(v51) = 0;

  v19 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_43_64();
  OUTLINED_FUNCTION_42_66();
  OUTLINED_FUNCTION_41_64();
  OUTLINED_FUNCTION_27_91();
  memcpy(v26, v55, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v20 + 1600))(v26, 6, v21 & 1, v19);

  v26[0] = 0x403C000000000000;
  LOBYTE(v26[1]) = 0;
  v50 = 0x4044000000000000;
  LOBYTE(v51) = 0;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_43_64();
  OUTLINED_FUNCTION_42_66();
  OUTLINED_FUNCTION_41_64();
  OUTLINED_FUNCTION_27_91();
  memcpy(v26, v55, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v22 + 1600))(v26, 2, v23 & 1, v19);
}

uint64_t sub_1E3FB67A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_53_49()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_56_38()
{
}

void *sub_1E3FB687C()
{
  *(v0 + 136) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E39537A8();
  v144 = v2;
  v145 = v3;
  v146 = v4;
  v147 = v5;
  LOBYTE(v148) = 0;
  sub_1E3C2D7EC();
  __asm { FMOV            V1.2D, #10.0 }

  v142 = _Q1;
  LOBYTE(v143) = 0;
  sub_1E3C2CC78();

  if (TVAppFeature.isEnabled.getter(10))
  {
    v11 = *sub_1E3E5FB0C();
    sub_1E3C2DE50();
    v12 = sub_1E3E5FB88();
  }

  else
  {
    v12 = sub_1E3E5FACC();
    v13 = *v12;
    sub_1E3C2DE50();
  }

  v14 = *v12;
  sub_1E3C2E258();
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    sub_1E3C2D938();
    v15 = sub_1E3C2D8FC();
    if (v15)
    {
      v16 = v15;
      [v15 setShadowOffset_];
    }

    v17 = sub_1E3C2D8FC();
    [v17 setShadowBlurRadius_];

    v18 = sub_1E3C2D8FC();
    if (v18)
    {
      v19 = v18;
      v20 = [objc_opt_self() blackColor];
      v21 = [v20 colorWithAlphaComponent_];

      [v19 setShadowColor_];
    }
  }

  sub_1E374E9C4();
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 1712))(1);

  OUTLINED_FUNCTION_0_36();
  v24 = (v23 + 1808);
  v25 = *(v23 + 1808);

  v25(3);

  OUTLINED_FUNCTION_12_13();
  v26.n128_u64[0] = 0.5;
  v151[0] = j__OUTLINED_FUNCTION_7_78(v26);
  v151[1] = v27;
  v151[2] = v28;
  v151[3] = v29;
  v152 = 0;
  (*(*v1 + 1856))(v151);

  OUTLINED_FUNCTION_12_13();
  sub_1E3E6097C();
  OUTLINED_FUNCTION_7_16();
  v30 = *(*v1 + 1832);
  v31 = v24;
  v30(v24);

  OUTLINED_FUNCTION_0_36();
  v33 = *(v32 + 2216);

  v33(1);

  v34 = objc_opt_self();
  if ([v34 isVision])
  {
    v34 = v1[13];
    v35 = *(*v34 + 2000);

    v35(2);

    OUTLINED_FUNCTION_0_36();
    v37 = *(v36 + 312);

    v37(0x4055800000000000, 0);

    OUTLINED_FUNCTION_12_13();
    v38 = sub_1E418A4F4();
    v39 = OUTLINED_FUNCTION_105_0(v38);
    (*(*v34 + 440))(v39, 0);

    OUTLINED_FUNCTION_12_13();
    v40.n128_u64[0] = 8.0;
  }

  else if ([v34 isTV])
  {
    v34 = v1[13];
    v41 = *(*v34 + 312);

    v41(0x405E000000000000, 0);

    OUTLINED_FUNCTION_0_36();
    v43 = *(v42 + 2000);

    v43(0);

    OUTLINED_FUNCTION_12_13();
    v44 = sub_1E418A524();
    v45 = OUTLINED_FUNCTION_105_0(v44);
    (*(*v34 + 440))(v45, 0);

    OUTLINED_FUNCTION_12_13();
    v40.n128_u64[0] = 16.0;
  }

  else
  {
    v46 = [v34 isMac];
    OUTLINED_FUNCTION_0_36();
    v48 = *(v47 + 312);

    if (v46)
    {
      v48(0x4050800000000000, 0);

      OUTLINED_FUNCTION_0_36();
      v50 = *(v49 + 2000);

      v50(2);

      OUTLINED_FUNCTION_12_13();
      v51 = sub_1E418A4F4();
      v52 = OUTLINED_FUNCTION_105_0(v51);
      (*(*v34 + 440))(v52, 0);

      OUTLINED_FUNCTION_12_13();
      sub_1E39537A8();
      goto LABEL_17;
    }

    v48(0x404F000000000000, 0);

    OUTLINED_FUNCTION_0_36();
    v58 = *(v57 + 2000);

    v58(2);

    OUTLINED_FUNCTION_12_13();
    v59 = sub_1E418A4F4();
    v60 = OUTLINED_FUNCTION_105_0(v59);
    (*(*v34 + 440))(v60, 0);

    OUTLINED_FUNCTION_12_13();
    v40.n128_u64[0] = 14.0;
  }

  v53 = j__OUTLINED_FUNCTION_7_78(v40);
LABEL_17:
  *v149 = v53;
  v149[1] = v54;
  v149[2] = v55;
  v149[3] = v56;
  v150 = 0;
  (*(*v34 + 560))(v149);

  sub_1E37BD0DC();
  OUTLINED_FUNCTION_2_1();
  (*(v61 + 1712))(1);

  OUTLINED_FUNCTION_36();
  v63 = (v62 + 2072);
  v64 = *(v62 + 2072);

  v64(15);

  v65 = v1[14];

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v66 = *(*v65 + 680);
  v67 = v63;
  v66(v63);

  OUTLINED_FUNCTION_36();
  v69 = (v68 + 2168);
  v70 = *(v68 + 2168);

  v70(10);

  v71 = sub_1E374EA94();
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v72 = *(*v71 + 680);
  v73 = v69;
  v72(v69);

  OUTLINED_FUNCTION_2_186();
  v75 = *(v74 + 2008);

  v75(1);

  OUTLINED_FUNCTION_2_186();
  v77 = *(v76 + 1792);

  v77(10);

  TVAppFeature.isEnabled.getter(10);
  OUTLINED_FUNCTION_36();
  if (v79)
  {
    v80 = 14;
  }

  else
  {
    v80 = 19;
  }

  (*(v78 + 1696))(v80);

  OUTLINED_FUNCTION_2_186();
  v82 = *(v81 + 2128);

  v82(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_2_186();
  v84 = *(v83 + 2056);

  v85 = OUTLINED_FUNCTION_8_5();
  v84(v85);

  OUTLINED_FUNCTION_2_186();
  v87 = *(v86 + 2080);

  v88 = OUTLINED_FUNCTION_8_5();
  v87(v88);

  OUTLINED_FUNCTION_2_186();
  v90 = (v89 + 2104);
  v91 = *(v89 + 2104);

  v91(0, 0);

  sub_1E3952C88();
  OUTLINED_FUNCTION_5_218(v92, v93, v94, v95);
  (*(v96 + 160))(v151);

  sub_1E374EAFC();
  OUTLINED_FUNCTION_2_1();
  (*(v97 + 2008))(1);

  v98 = v1[16];

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v99 = *(*v98 + 680);
  v100 = v90;
  v99(v90);

  sub_1E3952C88();
  OUTLINED_FUNCTION_5_218(v101, v102, v103, v104);
  (*(v105 + 160))(v151);

  OUTLINED_FUNCTION_36();
  v107 = *(v106 + 1696);

  v107(21);

  OUTLINED_FUNCTION_36();
  v109 = *(v108 + 2056);

  v110 = OUTLINED_FUNCTION_8_5();
  v109(v110);

  OUTLINED_FUNCTION_36();
  v112 = *(v111 + 2080);

  v113 = OUTLINED_FUNCTION_8_5();
  v112(v113);

  OUTLINED_FUNCTION_36();
  v115 = (v114 + 2104);
  v116 = *(v114 + 2104);

  v117 = OUTLINED_FUNCTION_8_5();
  v116(v117);

  v118 = sub_1E374EB64();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v119 = *(*v118 + 680);
  v120 = v115;
  v119(v115);

  OUTLINED_FUNCTION_36();
  v122 = *(v121 + 2056);

  v123 = OUTLINED_FUNCTION_8_5();
  v122(v123);

  OUTLINED_FUNCTION_36();
  v125 = *(v124 + 1696);

  v125(21);

  sub_1E3952C88();
  OUTLINED_FUNCTION_5_218(v126, v127, v128, v129);
  (*(v130 + 160))(v151);

  OUTLINED_FUNCTION_36();
  v132 = *(v131 + 2128);

  v132(0x3FE6666666666666, 0);

  sub_1E374EA94();
  OUTLINED_FUNCTION_2_1();
  (*(v133 + 1720))(10);

  sub_1E374EAFC();
  OUTLINED_FUNCTION_2_1();
  (*(v134 + 1720))(10);

  sub_1E374EB64();
  OUTLINED_FUNCTION_2_1();
  (*(v135 + 1720))(10);

  sub_1E3C2EAE8();
  sub_1E3C2D200();
  sub_1E3C2CDD0();
  sub_1E3C2CE80();
  sub_1E3C2D4E8(4);
  sub_1E3C2D5A8(1);

  sub_1E3C37CBC(v136, 23);

  sub_1E3C37CBC(v137, 15);

  sub_1E3C37CBC(v138, 17);

  v139 = sub_1E374E9C4();
  sub_1E3C37CBC(v139, 39);

  v140 = sub_1E37BD0DC();
  sub_1E3C37CBC(v140, 31);

  return v1;
}

void sub_1E3FB79BC()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_13_20());
  OUTLINED_FUNCTION_59_1();
  sub_1E3282410();
}

uint64_t VUIJetPackController.getJetPack()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3FB7A0C()
{
  OUTLINED_FUNCTION_27_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1E3FB7ABC;

  return sub_1E3284440();
}

uint64_t sub_1E3FB7ABC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3FB7B9C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3FB7CB0()
{
  v1 = v0[27];
  v16 = v0[26];
  v17 = v0[28];
  v2 = v0[24];
  v12 = v0[23];
  v13 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[18];
  v14 = v0[17];
  v15 = v0[19];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  sub_1E4204384();
  (*(v8 + 8))(v7, v9);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v13, v12);
  (*(v1 + 8))(v17, v16);
  (*(v6 + 8))(v15, v14);

  OUTLINED_FUNCTION_15_12();

  return v10();
}

uint64_t sub_1E3FB7E10()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[19];
  v8 = v0[17];
  v7 = v0[18];
  v11 = v0[26];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v11);
  (*(v7 + 8))(v6, v8);

  OUTLINED_FUNCTION_54();

  return v9();
}

uint64_t sub_1E3FB7F3C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3FB8034()
{
  OUTLINED_FUNCTION_134();
  v1 = (v0[5] + v0[20]);
  sub_1E4206B94();
  v2 = VUISignpostLogObject();
  sub_1E41FFBA4();

  sub_1E4206BA4();
  v3 = VUISignpostLogObject();
  sub_1E41FFBA4();

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[23] = v4;
  *v4 = v5;
  v4[1] = sub_1E3FB817C;

  return sub_1E329708C();
}

uint64_t sub_1E3FB817C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3FB8274()
{
  v1 = v0[24];
  sub_1E4206B94();
  v2 = VUISignpostLogObject();
  sub_1E41FFBA4();

  sub_1E4206BA4();
  v3 = VUISignpostLogObject();
  OUTLINED_FUNCTION_38_68();
  sub_1E41FFBA4();

  sub_1E4204464();
  v4 = sub_1E42042F4();
  if (v1)
  {
    v6 = v0[15];
    v40 = v0[16];
    v8 = v0[13];
    v7 = v0[14];
    v10 = v0[10];
    v9 = v0[11];
    (*(v0[8] + 8))(v0[9], v0[7]);
    sub_1E4206B94();
    v11 = VUISignpostLogObject();
    OUTLINED_FUNCTION_38_68();
    sub_1E41FFBA4();

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v40, v7);
  }

  else
  {
    v12 = v4;
    v13 = v5;
    (*(v0[8] + 8))(v0[9], v0[7]);
    if (v13 >> 60 != 15)
    {
      v0[2] = v12;
      v0[3] = v13;
      sub_1E4205F54();
      sub_1E3A0D380();
      sub_1E4205F34();
      if (v14)
      {
        v15 = v0[19];
        v38 = v0[18];
        v39 = v0[17];
        v16 = v0[15];
        v36 = v0[14];
        v37 = v0[16];
        v17 = v0[11];
        v34 = v0[13];
        v35 = v0[10];
        v18 = v0[4];
        (*(v17 + 16))(v0[12]);
        v19 = objc_allocWithZone(type metadata accessor for VUIJetPackControllerResponse(0));
        v20 = sub_1E3FB8E34();
        sub_1E38DCE1C(v12, v13);
        *v18 = v20;
        sub_1E4206B94();
        v21 = VUISignpostLogObject();
        OUTLINED_FUNCTION_59_1();
        OUTLINED_FUNCTION_38_68();
        sub_1E41FFBA4();

        (*(v17 + 8))(v34, v35);
        (*(v16 + 8))(v37, v36);
        sub_1E4206B94();
        v22 = VUISignpostLogObject();
        OUTLINED_FUNCTION_59_1();
        sub_1E41FFBA4();

        (*(v38 + 8))(v15, v39);

        OUTLINED_FUNCTION_15_12();
        goto LABEL_9;
      }

      sub_1E38DCE1C(v12, v13);
    }

    v24 = v0[15];
    v41 = v0[16];
    v26 = v0[13];
    v25 = v0[14];
    v28 = v0[10];
    v27 = v0[11];
    sub_1E4204C84();
    sub_1E3283038(&unk_1ECF3D690, MEMORY[0x1E69AB618]);
    swift_allocError();
    sub_1E4204C74();
    swift_willThrow();
    sub_1E4206B94();
    v29 = VUISignpostLogObject();
    OUTLINED_FUNCTION_38_68();
    sub_1E41FFBA4();

    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v41, v25);
  }

  sub_1E4206B94();
  v30 = VUISignpostLogObject();
  sub_1E41FFBA4();

  v31 = OUTLINED_FUNCTION_5_219();
  v32(v31);

  OUTLINED_FUNCTION_54();
LABEL_9:

  return v23();
}

uint64_t sub_1E3FB87C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_80();
  sub_1E4206B94();
  v10 = VUISignpostLogObject();
  OUTLINED_FUNCTION_23_95();

  v11 = OUTLINED_FUNCTION_5_219();
  v12(v11);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_159_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1E3FB8894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_80();
  (*(v10[15] + 8))(v10[16], v10[14]);
  sub_1E4206B94();
  v11 = VUISignpostLogObject();
  OUTLINED_FUNCTION_23_95();

  v12 = OUTLINED_FUNCTION_5_219();
  v13(v12);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_159_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1E3FB8980()
{
  OUTLINED_FUNCTION_134();
  (*(v0[7] + 8))(v0[8], v0[6]);
  OUTLINED_FUNCTION_45_66();

  OUTLINED_FUNCTION_54();

  return v1();
}

id sub_1E3FB8A28()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_13_20());
  OUTLINED_FUNCTION_59_1();
  return sub_1E3FB8E34();
}

uint64_t sub_1E3FB8A64()
{
  OUTLINED_FUNCTION_134();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_1E4206B94();
  v4 = VUISignpostLogObject();
  OUTLINED_FUNCTION_39_64();
  sub_1E41FFBA4();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_54();

  return v5();
}

objc_class *sub_1E3FB8B30()
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_12_1());
  v3 = OBJC_IVAR____TtC8VideosUI13VUIJetPackURL_url;
  v4 = sub_1E41FE414();
  (*(*(v4 - 8) + 16))(&v2[v3], v0, v4);
  v8.receiver = v2;
  v8.super_class = v1;
  objc_msgSendSuper2(&v8, sel_init);
  v5 = OUTLINED_FUNCTION_41_65();
  v6(v5);
  return v1;
}

void sub_1E3FB8C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6C8);
  OUTLINED_FUNCTION_17_2(v26);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = objc_opt_self();
  v31 = objc_opt_self();
  v32 = [v31 currentProcess];
  [v30 ams:v32 configurationWithProcessInfo:v25 bag:?];

  swift_unknownObjectRetain();
  sub_1E4204C54();
  sub_1E4204C64();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = [v31 currentProcess];
  OUTLINED_FUNCTION_5_12();
  v38 = sub_1E4204444();

  sub_1E325F6F0(v29, &qword_1ECF3D6C8);
  if (v23)
  {
    [v38 setUrlKnownToBeTrusted_];
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t VUIJetPackControllerResponse.source.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI28VUIJetPackControllerResponse_source);

  return v1;
}

id sub_1E3FB8E34()
{
  OUTLINED_FUNCTION_13_20();
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8VideosUI28VUIJetPackControllerResponse_url;
  v6 = sub_1E41FE414();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v1[v5], v3, v6);
  v8 = &v1[OBJC_IVAR____TtC8VideosUI28VUIJetPackControllerResponse_source];
  *v8 = v2;
  *(v8 + 1) = v0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v7 + 8))(v3, v6);
  return v9;
}

id VUIJetPackURL.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E3FB904C()
{
  sub_1E3283038(&qword_1ECF3D660, type metadata accessor for AMSBagKey);
  sub_1E3283038(&qword_1ECF3D668, type metadata accessor for AMSBagKey);

  return sub_1E4207764();
}

unint64_t sub_1E3FB9108()
{
  result = qword_1ECF69AE0[0];
  if (!qword_1ECF69AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF69AE0);
  }

  return result;
}

uint64_t sub_1E3FB915C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3FB9254()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 40);
  sub_1E4204CC4();

  OUTLINED_FUNCTION_54();

  return v2();
}

_BYTE *storeEnumTagSinglePayload for ValidatedJetPackAssetLocationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1E3FB9424()
{
  result = qword_1ECF69DF0[0];
  if (!qword_1ECF69DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF69DF0);
  }

  return result;
}

uint64_t objectdestroy_35Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void (*sub_1E3FB94F0(void *a1))(char **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  *(v3 + 10) = v1;
  type metadata accessor for UIEdgeInsets();
  *(v3 + 11) = v4;
  sub_1E3C2C6A0();
  v5 = v3[72];
  v6 = *(v3 + 56);
  *v3 = *(v3 + 40);
  *(v3 + 1) = v6;
  v3[32] = v5;
  return sub_1E3CCE81C;
}

double sub_1E3FB957C()
{
  v0 = [objc_opt_self() isPhone];
  result = 44.0;
  if (!v0)
  {
    return 25.0;
  }

  return result;
}

uint64_t sub_1E3FB95F8(char a1)
{
  type metadata accessor for MediaControlButtonLayout();
  v1[13] = sub_1E3DBE1E0();
  v1[14] = sub_1E3DBE1E0();
  type metadata accessor for ImageLayout();
  v1[15] = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  v1[17] = sub_1E383BCC0();
  type metadata accessor for MediaShowcasingMetadataLayout();
  v1[16] = sub_1E3CCEAA8(a1);
  v3 = sub_1E3C2F9A0();

  sub_1E3FB97D0();
  sub_1E3FB9958();
  sub_1E3FB9C1C();
  sub_1E3FB9E84();

  sub_1E3C37CBC(v4, 224);

  sub_1E3C37CBC(v5, 17);

  sub_1E3C37CBC(v6, 40);

  return v3;
}

void sub_1E3FB9728()
{
  type metadata accessor for MediaControlButtonLayout();
  v0[13] = sub_1E3DBE1E0();
  v0[14] = sub_1E3DBE1E0();
  type metadata accessor for ImageLayout();
  v0[15] = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  v0[17] = sub_1E383BCC0();
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3FB97D0()
{
  LOBYTE(v85) = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C3DE00(v0);
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  v1 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v1, v2, v3, v4, v5, v6, v7, v8, 0x4020000000000000, 0x4030000000000000, 0x4020000000000000, 0x4030000000000000, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181);
  OUTLINED_FUNCTION_4_233();
  OUTLINED_FUNCTION_14_167(v9, v10, v11, v12, v13, v14, v15, v16, v79);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v18 = *(v17 + 1600);
  v27 = OUTLINED_FUNCTION_30_3(v19, v20, v21, v22, v23, v24, v25, v26, v80);
  v18(v27, 1);
  LOBYTE(v86) = 0;
  OUTLINED_FUNCTION_16_142(xmmword_1E42E2A50, xmmword_1E42E2A60);
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  v28 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v28, v29, v30, v31, v32, v33, v34, v35, 0x4040000000000000, 0x4047000000000000, 0x4042000000000000, 0x4047000000000000, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182);
  OUTLINED_FUNCTION_4_233();
  OUTLINED_FUNCTION_14_167(v36, v37, v38, v39, v40, v41, v42, v43, v81);
  v44 = OUTLINED_FUNCTION_18();
  v52 = OUTLINED_FUNCTION_6_153(v44, v45, v46, v47, v48, v49, v50, v51, v82);
  (v18)(v52);
  LOBYTE(v87) = 0;
  OUTLINED_FUNCTION_16_142(xmmword_1E42E2A90, xmmword_1E42E2AA0);
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  v53 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v53, v54, v55, v56, v57, v58, v59, v60, 0x4049C00000000000, 0x4041000000000000, 0x4041800000000000, 0x4041000000000000, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183);
  OUTLINED_FUNCTION_4_233();
  OUTLINED_FUNCTION_14_167(v61, v62, v63, v64, v65, v66, v67, v68, v83);
  v69 = OUTLINED_FUNCTION_18();
  v77 = OUTLINED_FUNCTION_30_3(v69, v70, v71, v72, v73, v74, v75, v76, v84);
  return (v18)(v77, 121);
}

uint64_t sub_1E3FB9958()
{
  v68 = xmmword_1E42E2AB0;
  v69 = xmmword_1E42A76A0;
  v70 = 0;
  v65 = xmmword_1E42E2AC0;
  v66 = xmmword_1E42A76A0;
  v67 = 0;
  sub_1E3952C88();
  v60 = v0;
  v61 = v1;
  v62 = v2;
  v63 = v3;
  v64 = 0;
  v56 = xmmword_1E42E2AD0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v52 = xmmword_1E42E2AE0;
  type metadata accessor for UIEdgeInsets();
  v5 = v4;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v13 = OUTLINED_FUNCTION_5_220(v4, v6, v7, v8, v9, v10, v11, v12, v45, v48, 0);
  sub_1E3C2FCB8(v13, v14);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v16 = *(v15 + 1600);
  v18 = v16(__dst, 0, v17 & 1, v5);
  LOBYTE(v68) = 17;
  LOBYTE(v65) = 15;
  LOBYTE(v60) = 15;
  LOBYTE(v56) = 2;
  LOBYTE(v52) = 7;
  v26 = OUTLINED_FUNCTION_5_220(v18, v19, v20, v21, v22, v23, v24, v25, v46, v49, 27);
  sub_1E3C2FCB8(v26, v27);
  v28 = OUTLINED_FUNCTION_13_171();
  v16(__dst, 48, v28 & 1, &qword_1F5D549D8);
  LOBYTE(__dst[0]) = 10;
  LOBYTE(v68) = 10;
  LOBYTE(v65) = 10;
  LOBYTE(v60) = 10;
  LOBYTE(v56) = 10;
  v29 = sub_1E3C3DE00(&qword_1F5D54AF8);
  HIBYTE(v50) = v52;
  v37 = OUTLINED_FUNCTION_5_220(v29, v30, v31, v32, v33, v34, v35, v36, v47, v50, __dst[0]);
  sub_1E3C2FCB8(v37, v38);
  v39 = OUTLINED_FUNCTION_13_171();
  v16(__dst, 54, v39 & 1, &qword_1F5D54AF8);
  v40 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v41 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v42 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  return (*(v43 + 2176))(4, 0);
}

uint64_t sub_1E3FB9C1C()
{
  OUTLINED_FUNCTION_15_156(0x4065400000000000uLL);
  OUTLINED_FUNCTION_12_156();
  OUTLINED_FUNCTION_11_174(v0, v1, v2, v3, v4, v5, v6, v7, 0);
  memcpy(v59, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v9 = *(v8 + 1600);
  v18 = OUTLINED_FUNCTION_30_3(v10, v11, v12, v13, v14, v15, v16, v17, *v59);
  v9(v18, 4);
  *v59 = 0;
  v59[8] = 1;
  OUTLINED_FUNCTION_15_156(0x4044000000000000uLL);
  OUTLINED_FUNCTION_12_156();
  OUTLINED_FUNCTION_11_174(v19, v20, v21, v22, v23, v24, v25, v26, *v59);
  memcpy(v59, __src, 0x59uLL);
  v27 = OUTLINED_FUNCTION_18();
  v35 = OUTLINED_FUNCTION_30_3(v27, v28, v29, v30, v31, v32, v33, v34, *v59);
  v9(v35, 8);
  v36 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v37 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v38 + 1808))(1);
  OUTLINED_FUNCTION_36();
  (*(v39 + 512))(1);
  *v59 = 0;
  *&v59[8] = 0;
  *&v59[16] = xmmword_1E42CA370;
  v59[32] = 0;
  v68 = 0;
  v67 = 0;
  v69 = xmmword_1E42E2AF0;
  v70 = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C3DE00(v40);
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  v41 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v41, v42, v43, v44, v45, v46, v47, v48, *v59, *&v59[8], *&v59[16], *&v59[24], *&v59[32], *&v59[40], *&v59[48], *&v59[56], *&v59[64], *&v59[72], *&v59[80], *&v59[88], *&v59[96], *&v59[104], *&v59[112], *&v59[120], *&v59[128], *&v59[136], *&v59[144], *&v59[152], *&v59[160], *&v59[168], *&v59[176], *&v59[184], *&v59[192], *&v59[200], *&v59[208], *&v59[216], *&v59[224], *&v59[232], v60, v61, v62, v63, v64, v65, v66);
  OUTLINED_FUNCTION_7_211(v59, __src);
  memcpy(v59, __src, 0xE9uLL);
  v49 = OUTLINED_FUNCTION_18();
  v57 = OUTLINED_FUNCTION_6_153(v49, v50, v51, v52, v53, v54, v55, v56, *v59);
  return (v9)(v57);
}

uint64_t sub_1E3FB9E84()
{
  v39[32] = 1;
  v51 = xmmword_1E42AE100;
  v53 = 0;
  v52 = 0;
  v54 = 0;
  v47 = xmmword_1E42B8850;
  v49 = 0;
  v48 = 0;
  v50 = 0;
  type metadata accessor for UIEdgeInsets();
  v1 = v0;
  sub_1E3C3DE00(v0);
  OUTLINED_FUNCTION_10_8();
  v2 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0, 0, 0, *&v39[32], *&v39[40], *&v39[48], *&v39[56], *&v39[64], *&v39[72], *&v39[80], *&v39[88], *&v39[96], *&v39[104], *&v39[112], *&v39[120], *&v39[128], *&v39[136], *&v39[144], *&v39[152], *&v39[160], *&v39[168], *&v39[176], *&v39[184], *&v39[192], *&v39[200], *&v39[208], *&v39[216], *&v39[224], *&v39[232], v40, v41, v42, v43, v44, v45, v46);
  OUTLINED_FUNCTION_7_211(v39, __src);
  memcpy(v39, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v18 = OUTLINED_FUNCTION_6_153(v10, v11, v12, v13, v14, v15, v16, v17, *v39);
  v19(v18);
  memset(v39, 0, 32);
  v39[32] = 1;
  v51 = 0uLL;
  v52 = 0;
  v53 = 0x4034000000000000;
  v54 = 0;
  v47 = 0uLL;
  v48 = 0;
  v49 = 0x403E000000000000;
  v50 = 0;
  sub_1E3C3DE00(v1);
  OUTLINED_FUNCTION_10_8();
  v20 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v20, v21, v22, v23, v24, v25, v26, v27, *v39, *&v39[8], *&v39[16], *&v39[24], *&v39[32], *&v39[40], *&v39[48], *&v39[56], *&v39[64], *&v39[72], *&v39[80], *&v39[88], *&v39[96], *&v39[104], *&v39[112], *&v39[120], *&v39[128], *&v39[136], *&v39[144], *&v39[152], *&v39[160], *&v39[168], *&v39[176], *&v39[184], *&v39[192], *&v39[200], *&v39[208], *&v39[216], *&v39[224], *&v39[232], v40, v41, v42, v43, v44, v45, v46);
  OUTLINED_FUNCTION_7_211(v39, __src);
  memcpy(v39, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v36 = OUTLINED_FUNCTION_6_153(v28, v29, v30, v31, v32, v33, v34, v35, *v39);
  return v37(v36);
}

uint64_t sub_1E3FBA064()
{
  type metadata accessor for AutoDownloadsManager();
  result = swift_initStaticObject();
  qword_1ECF719B8 = result;
  return result;
}

uint64_t *sub_1E3FBA090()
{
  if (qword_1ECF69F80 != -1)
  {
    swift_once();
  }

  return &qword_1ECF719B8;
}

uint64_t sub_1E3FBA0E0()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_309(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_86_0();
  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3FBA180()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v5, v6, "AutoDownloadsManager:: startAutoDownloads");
    OUTLINED_FUNCTION_6_0();
  }

  v7 = OUTLINED_FUNCTION_17_10();
  v8(v7);
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_56_1(v9);

  return sub_1E3FBA5AC();
}

uint64_t sub_1E3FBA288()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  v4[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E3FBA53C, 0, 0);
  }

  else
  {
    v4[8] = v3;
    v8 = swift_task_alloc();
    v4[9] = v8;
    *v8 = v6;
    OUTLINED_FUNCTION_56_1(v8);

    return sub_1E3FBAC8C();
  }
}

uint64_t sub_1E3FBA3F4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v2 + 8);
  v5 = *(v1 + 56) == 0;

  return v4(v5);
}